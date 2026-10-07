Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cfhd?download=true
inline.NumInlined: 15
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@cfhd_decode:bb.a
vec.epilog.middle.block2994:                      ; preds = %vec.epilog.vector.body2989
  br i1 %cmp.n2995, label %._crit_edge.us, label %vec.epilog.scalar.ph2984.preheader

vec.epilog.scalar.ph2984.preheader:               ; preds = %iter.check2983, %vector.memcheck, %vec.epilog.iter.check2985, %vec.epilog.middle.block2994
  %indvars.iv.ph = phi i64 [ 0, %iter.check2983 ], [ 0, %vector.memcheck ], [ %n.vec2973, %vec.epilog.iter.check2985 ], [ %n.vec2988, %vec.epilog.middle.block2994 ] ; 3 uses
  %.sroa.02086.42369.us.ph = phi ptr [ %.sroa.02086.32373.us, %iter.check2983 ], [ %.sroa.02086.32373.us, %vector.memcheck ], [ %i.mv, %vec.epilog.iter.check2985 ], [ %i.nd, %vec.epilog.middle.block2994 ] ; 2 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph2984.prol.loopexit, label %vec.epilog.scalar.ph2984.prol

vec.epilog.scalar.ph2984.prol:                    ; preds = %vec.epilog.scalar.ph2984.preheader, %vec.epilog.scalar.ph2984.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph2984.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph2984.preheader ] ; 2 uses
  %.sroa.02086.42369.us.prol = phi ptr [ %i.ni, %vec.epilog.scalar.ph2984.prol ], [ %.sroa.02086.42369.us.ph, %vec.epilog.scalar.ph2984.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph2984.prol ], [ 0, %vec.epilog.scalar.ph2984.preheader ]
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.02086.42369.us.prol, i64 2 ; 3 uses
  %i.nj = load i16, ptr %.sroa.02086.42369.us.prol, align 1, !tbaa !51
  %i.nk = tail call i16 @llvm.bswap.i16(i16 %i.nj)
  %i.nl = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %indvars.iv.prol
  store i16 %i.nk, ptr %i.nl, align 2, !tbaa !66
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph2984.prol.loopexit, label %vec.epilog.scalar.ph2984.prol, !llvm.loop !79

vec.epilog.scalar.ph2984.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2984.prol, %vec.epilog.scalar.ph2984.preheader
  %.lcssa3278.unr = phi ptr [ poison, %vec.epilog.scalar.ph2984.preheader ], [ %i.ni, %vec.epilog.scalar.ph2984.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph2984.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph2984.prol ]
  %.sroa.02086.42369.us.unr = phi ptr [ %.sroa.02086.42369.us.ph, %vec.epilog.scalar.ph2984.preheader ], [ %i.ni, %vec.epilog.scalar.ph2984.prol ]
  %i.nm = sub nsw i64 %indvars.iv.ph, %i.mn
  %i.nn = icmp ugt i64 %i.nm, -4
  br i1 %i.nn, label %._crit_edge.us, label %vec.epilog.scalar.ph2984

vec.epilog.scalar.ph2984:                         ; preds = %vec.epilog.scalar.ph2984.prol.loopexit, %vec.epilog.scalar.ph2984
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph2984 ], [ %indvars.iv.unr, %vec.epilog.scalar.ph2984.prol.loopexit ] ; 5 uses
  %.sroa.02086.42369.us = phi ptr [ %i.oc, %vec.epilog.scalar.ph2984 ], [ %.sroa.02086.42369.us.unr, %vec.epilog.scalar.ph2984.prol.loopexit ] ; 5 uses
  %i.no = getelementptr inbounds nuw i8, ptr %.sroa.02086.42369.us, i64 2
  %i.np = load i16, ptr %.sroa.02086.42369.us, align 1, !tbaa !51
  %i.nq = tail call i16 @llvm.bswap.i16(i16 %i.np)
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %indvars.iv
  store i16 %i.nq, ptr %i.nr, align 2, !tbaa !66
  %i.ns = getelementptr inbounds nuw i8, ptr %.sroa.02086.42369.us, i64 4
  %i.nt = load i16, ptr %i.no, align 1, !tbaa !51
  %i.nu = tail call i16 @llvm.bswap.i16(i16 %i.nt)
  %i.nv = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %indvars.iv
  %i.nw = getelementptr inbounds nuw i8, ptr %i.nv, i64 2
  store i16 %i.nu, ptr %i.nw, align 2, !tbaa !66
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.02086.42369.us, i64 6
  %i.ny = load i16, ptr %i.ns, align 1, !tbaa !51
  %i.nz = tail call i16 @llvm.bswap.i16(i16 %i.ny)
  %i.oa = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %indvars.iv
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 4
  store i16 %i.nz, ptr %i.ob, align 2, !tbaa !66
  %i.oc = getelementptr inbounds nuw i8, ptr %.sroa.02086.42369.us, i64 8 ; 2 uses
  %i.od = load i16, ptr %i.nx, align 1, !tbaa !51
  %i.oe = tail call i16 @llvm.bswap.i16(i16 %i.od)
  %i.of = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %indvars.iv
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 6
  store i16 %i.oe, ptr %i.og, align 2, !tbaa !66
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond2545.not.3 = icmp eq i64 %indvars.iv.next.3, %i.mn
  br i1 %exitcond2545.not.3, label %._crit_edge.us, label %vec.epilog.scalar.ph2984, !llvm.loop !80

._crit_edge.us:                                   ; preds = %vec.epilog.scalar.ph2984.prol.loopexit, %vec.epilog.scalar.ph2984, %vec.epilog.middle.block2994, %middle.block2980
  %.lcssa2806 = phi ptr [ %i.nd, %vec.epilog.middle.block2994 ], [ %i.mv, %middle.block2980 ], [ %.lcssa3278.unr, %vec.epilog.scalar.ph2984.prol.loopexit ], [ %i.oc, %vec.epilog.scalar.ph2984 ] ; 3 uses
  %i.oh = getelementptr inbounds nuw [2 x i8], ptr %.018652374.us, i64 %i.mn ; 4 uses
  %i.oi = add nuw nsw i32 %.018472375.us, 1       ; 2 uses
  %exitcond2546.not = icmp eq i32 %i.oi, %i.lv
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond2546.not, label %._crit_edge2376, label %iter.check2983, !llvm.loop !81

._crit_edge2376:                                  ; preds = %._crit_edge.us
  %i.oj = ptrtoint ptr %.lcssa2806 to i64         ; 3 uses
  %i.ok = sub i64 %i.oj, %i.bb
  %i.ol = trunc i64 %i.ok to i32
  %i.om = and i32 %i.ol, 3                        ; 2 uses
  %.neg.i2033 = sub i64 %i.bb, %i.oj
  %i.on = trunc i64 %.neg.i2033 to i32            ; 2 uses
  %i.oo = sub i64 %i.ah, %i.oj
  %i.op = trunc i64 %i.oo to i32
  %i.oq = icmp slt i32 %i.om, %i.on
  %..i2036 = tail call i32 @llvm.smin.i32(i32 %i.om, i32 %i.op)
  %.0.i2037 = select i1 %i.oq, i32 %i.on, i32 %..i2036
  %i.or = sext i32 %.0.i2037 to i64
  %i.os = getelementptr inbounds i8, ptr %.lcssa2806, i64 %i.or
  %i.ot = and i32 %i.lv, 1
  %.not2011 = icmp eq i32 %i.ot, 0
  br i1 %.not2011, label %bb.em, label %bb.el

bb.el:                                            ; preds = %._crit_edge2376
  %i.ou = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.mh
  %i.ov = add nsw i32 %i.lv, -1
  %i.ow = mul nuw nsw i32 %i.ov, %i.lx
  %i.ox = zext nneg i32 %i.ow to i64
  %i.oy = getelementptr inbounds nuw [2 x i8], ptr %i.oh, i64 %i.ox
  %i.oz = shl nuw i32 %i.lx, 1
  %i.pa = zext i32 %i.oz to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.ou, ptr nonnull align 2 %i.oy, i64 %i.pa, i1 false)
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %._crit_edge2376
  %i.pb = load i32, ptr %i.k, align 8, !tbaa !154
  %i.pc = sext i32 %i.pb to i64
  %i.pd = getelementptr inbounds [1024 x i8], ptr %i.ak, i64 %i.pc
  %i.pe = getelementptr inbounds nuw i8, ptr %i.pd, i64 280
  store i8 1, ptr %i.pe, align 8, !tbaa !69
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.64, i32 noundef %i.mg) #11
  %.pre2621 = load i32, ptr %i.v, align 8, !tbaa !163
  %i.pf = icmp eq i32 %.pre2621, 255
  br i1 %i.pf, label %bb.en, label %.thread2708

bb.en:                                            ; preds = %bb.em
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.67, i32 noundef 772) #11
  tail call void @abort() #12
  unreachable

.thread2708.sink.split:                           ; preds = %bb.ea, %bb.dz
  %i.pg = load i32, ptr %i.k, align 8, !tbaa !154
  %i.ph = sext i32 %i.pg to i64
  %i.pi = getelementptr inbounds [1024 x i8], ptr %i.ak, i64 %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 40
  %i.pk = sext i32 %i.lc to i64
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pj, i64 %i.pk
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !63
  br label %.thread2708

.thread2708:                                      ; preds = %.thread2708.sink.split, %bb.em
  %.218672714 = phi ptr [ %i.oh, %bb.em ], [ %i.pm, %.thread2708.sink.split ] ; 2 uses
  %.sroa.02086.62712 = phi ptr [ %i.os, %bb.em ], [ %.sroa.02086.22131, %.thread2708.sink.split ] ; 9 uses
  %trunc2248 = trunc nuw i32 %.0.i2030 to i16
  switch i16 %trunc2248, label %.thread2168 [
    i16 82, label %bb.eo
    i16 55, label %bb.eo
  ]

bb.eo:                                            ; preds = %.thread2708, %.thread2708
  %i.pn = load i32, ptr %i.av, align 8, !tbaa !39
  %.not2013 = icmp eq i32 %i.pn, 0
  br i1 %.not2013, label %.thread2181, label %bb.ep

bb.ep:                                            ; preds = %bb.eo
  %i.po = load i32, ptr %i.aw, align 4, !tbaa !40
  %.not2014 = icmp eq i32 %i.po, 0
  br i1 %.not2014, label %.thread2181, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  %i.pp = load i32, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr [1024 x i8], ptr %i.b, i64 %i.pq
  %i.ps = getelementptr i8, ptr %i.pr, i64 42384
  %i.pt = load i32, ptr %i.u, align 4, !tbaa !162 ; 2 uses
  %i.pu = sext i32 %i.pt to i64
  %i.pv = getelementptr inbounds [128 x i8], ptr %i.ps, i64 %i.pu
  %i.pw = load i32, ptr %i.t, align 8, !tbaa !161
  %i.px = sext i32 %i.pw to i64
  %i.py = getelementptr inbounds [32 x i8], ptr %i.pv, i64 %i.px ; 5 uses
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 20
  %i.qa = load i32, ptr %i.pz, align 4, !tbaa !170 ; 5 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.qc = load i32, ptr %i.qb, align 4, !tbaa !168 ; 5 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.py, i64 8
  %i.qe = load i32, ptr %i.qd, align 8, !tbaa !65 ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.py, i64 16
  %i.qg = load i32, ptr %i.qf, align 8, !tbaa !64 ; 2 uses
  %i.qh = load i64, ptr %i.py, align 8, !tbaa !169 ; 2 uses
  %i.qi = trunc i64 %i.qh to i32
  %i.qj = mul nsw i32 %i.qg, %i.qe
  %.not2015 = icmp eq i32 %.21844, 0
  br i1 %.not2015, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.61) #11
  br label %.thread2181

bb.es:                                            ; preds = %bb.eq
  %i.qk = icmp sgt i32 %i.qa, %i.qg
  %i.ql = icmp sgt i32 %i.qc, %i.qe
  %or.cond2024 = select i1 %i.qk, i1 true, i1 %i.ql
  br i1 %or.cond2024, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.qm = sext i32 %i.qj to i64
  %i.qn = sext i32 %i.qa to i64
  %sext2016 = shl i64 %i.qh, 32
  %i.qo = ashr exact i64 %sext2016, 32
  %i.qp = mul nsw i64 %i.qo, %i.qn
  %i.qq = icmp ugt i64 %i.qp, %i.qm
  br i1 %i.qq, label %bb.eu, label %bb.ev

bb.eu:                                            ; preds = %bb.et, %bb.es
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.68) #11
  br label %.thread2181

bb.ev:                                            ; preds = %bb.et
  %i.qr = mul nsw i32 %i.qa, %i.qi                ; 5 uses
  %i.qs = load i32, ptr %i.n, align 8, !tbaa !157
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.69, i32 noundef %i.pp, i32 noundef %i.pt, i32 noundef %i.qs, i32 noundef %i.qr) #11
  %i.qt = ptrtoint ptr %.sroa.02086.62712 to i64  ; 2 uses
  %i.qu = sub i64 %i.ah, %i.qt
  %i.qv = trunc i64 %i.qu to i32                  ; 3 uses
  %or.cond.i2040 = icmp ugt i32 %i.qv, 268435455
  %i.qw = shl nuw nsw i32 %i.qv, 3
  %i.qx = select i1 %or.cond.i2040, i32 -8, i32 %i.qw ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.qx, 2147483134   ; 3 uses
  %.0.i.i = select i1 %or.cond.i.i, i32 -1094995529, i32 0 ; 2 uses
  %i.qy = add nuw nsw i32 %i.qx, 8
  %i.qz = select i1 %or.cond.i.i, i32 8, i32 %i.qy ; 6 uses
  br i1 %or.cond.i.i, label %.thread2181, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ra = load i32, ptr %i.al, align 4, !tbaa !167
  %i.rb = icmp eq i32 %i.ra, 5                    ; 2 uses
  %i.rc = load i32, ptr %i.n, align 8, !tbaa !157 ; 2 uses
  %i.rd = icmp eq i32 %i.rc, 0
  br i1 %i.rd, label %bb.ex, label %.preheader2277

bb.ex:                                            ; preds = %bb.ew
  %i.re = load i32, ptr %i.r, align 8, !tbaa !35
  %i.rf = icmp eq i32 %i.re, 2
  br i1 %i.rf, label %bb.ey, label %.preheader2276.preheader

bb.ey:                                            ; preds = %bb.ex
  %i.rg = load i32, ptr %i.v, align 8, !tbaa !163
  %i.rh = icmp eq i32 %i.rg, 7
  br i1 %i.rh, label %bb.ez, label %.preheader2276.preheader

.preheader2276.preheader:                         ; preds = %bb.ex, %bb.ey
  br label %.preheader2276

bb.ez:                                            ; preds = %bb.ey
  store i32 1, ptr %i.n, align 8, !tbaa !157
  br label %.preheader2277

.preheader2277:                                   ; preds = %bb.ew, %bb.ez
  %i.ri = phi i32 [ %i.rc, %bb.ew ], [ 1, %bb.ez ] ; 2 uses
  %or.cond.i2042 = icmp eq i32 %i.ri, 1
  %i.rj = zext nneg i32 %i.ri to i64
  %i.rk = getelementptr inbounds nuw [1024 x i8], ptr %i.bd, i64 %i.rj
  br label %.loopexit2272

.preheader2276:                                   ; preds = %.preheader2276.backedge, %.preheader2276.preheader
  %.31868 = phi ptr [ %.218672714, %.preheader2276.preheader ], [ %.31868.be, %.preheader2276.backedge ] ; 12 uses
  %.01830 = phi i32 [ 0, %.preheader2276.preheader ], [ %i.tu, %.preheader2276.backedge ] ; 2 uses
  %.01819 = phi i32 [ 0, %.preheader2276.preheader ], [ %i.tt, %.preheader2276.backedge ] ; 4 uses
  %i.rl = lshr i32 %.01819, 3
  %i.rm = zext nneg i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %.sroa.02086.62712, i64 %i.rm
  %i.ro = load i32, ptr %i.rn, align 1, !tbaa !51
  %i.rp = tail call i32 @llvm.bswap.i32(i32 %i.ro)
  %i.rq = and i32 %.01819, 7
  %i.rr = shl i32 %i.rp, %i.rq
  %i.rs = lshr i32 %i.rr, 23
  %i.rt = zext nneg i32 %i.rs to i64              ; 2 uses
  %i.ru = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.rt ; 2 uses
  %i.rv = load i16, ptr %i.ru, align 2, !tbaa !181
  %i.rw = sext i16 %i.rv to i32                   ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 2
  %i.ry = load i8, ptr %i.rx, align 2, !tbaa !182 ; 2 uses
  %i.rz = sext i8 %i.ry to i32                    ; 3 uses
  %i.sa = icmp slt i8 %i.ry, 0
  br i1 %i.sa, label %bb.fa, label %bb.fc

bb.fa:                                            ; preds = %.preheader2276
  %i.sb = add i32 %.01819, 9
  %i.sc = tail call i32 @llvm.umin.i32(i32 %i.qz, i32 %i.sb) ; 4 uses
  %i.sd = lshr i32 %i.sc, 3
  %i.se = zext nneg i32 %i.sd to i64
  %i.sf = getelementptr inbounds nuw i8, ptr %.sroa.02086.62712, i64 %i.se
  %i.sg = load i32, ptr %i.sf, align 1, !tbaa !51
  %i.sh = tail call i32 @llvm.bswap.i32(i32 %i.sg)
  %i.si = and i32 %i.sc, 7
  %i.sj = shl i32 %i.sh, %i.si
  %i.sk = add nsw i32 %i.rz, 32
  %i.sl = lshr i32 %i.sj, %i.sk
  %i.sm = add i32 %i.sl, %i.rw
  %i.sn = zext i32 %i.sm to i64                   ; 2 uses
  %i.so = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.sn ; 2 uses
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !181
  %i.sq = sext i16 %i.sp to i32                   ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 2
  %i.ss = load i8, ptr %i.sr, align 2, !tbaa !182 ; 2 uses
  %i.st = sext i8 %i.ss to i32                    ; 2 uses
  %i.su = icmp slt i8 %i.ss, 0
  br i1 %i.su, label %bb.fb, label %bb.fc

bb.fb:                                            ; preds = %bb.fa
  %i.sv = sub i32 %i.sc, %i.rz
  %i.sw = tail call i32 @llvm.umin.i32(i32 %i.qz, i32 %i.sv) ; 3 uses
  %i.sx = lshr i32 %i.sw, 3
  %i.sy = zext nneg i32 %i.sx to i64
  %i.sz = getelementptr inbounds nuw i8, ptr %.sroa.02086.62712, i64 %i.sy
  %i.ta = load i32, ptr %i.sz, align 1, !tbaa !51
  %i.tb = tail call i32 @llvm.bswap.i32(i32 %i.ta)
  %i.tc = and i32 %i.sw, 7
  %i.td = shl i32 %i.tb, %i.tc
  %i.te = add nsw i32 %i.st, 32
  %i.tf = lshr i32 %i.td, %i.te
  %i.tg = add i32 %i.tf, %i.sq
  %i.th = zext i32 %i.tg to i64                   ; 2 uses
  %i.ti = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %i.th ; 2 uses
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !181
  %i.tk = sext i16 %i.tj to i32
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 2
  %i.tm = load i8, ptr %i.tl, align 2, !tbaa !182
  %i.tn = sext i8 %i.tm to i32
  br label %bb.fc

bb.fc:                                            ; preds = %bb.fa, %bb.fb, %.preheader2276
  %.pre-phi2625 = phi i64 [ %i.sn, %bb.fa ], [ %i.th, %bb.fb ], [ %i.rt, %.preheader2276 ]
  %.21821 = phi i32 [ %i.sc, %bb.fa ], [ %i.sw, %bb.fb ], [ %.01819, %.preheader2276 ]
  %.11814 = phi i32 [ %i.sq, %bb.fa ], [ %i.tk, %bb.fb ], [ %i.rw, %.preheader2276 ] ; 3 uses
  %.11809 = phi i32 [ %i.st, %bb.fa ], [ %i.tn, %bb.fb ], [ %i.rz, %.preheader2276 ]
  %i.to = getelementptr inbounds nuw [6 x i8], ptr %i.be, i64 %.pre-phi2625
  %i.tp = getelementptr inbounds nuw i8, ptr %i.to, i64 4
  %i.tq = load i16, ptr %i.tp, align 2, !tbaa !183 ; 8 uses
  %i.tr = zext i16 %i.tq to i32                   ; 3 uses
  %i.ts = add i32 %.11809, %.21821
  %i.tt = tail call i32 @llvm.umin.i32(i32 %i.qz, i32 %i.ts) ; 3 uses
  %.not2018 = icmp eq i16 %i.tq, 0
  br i1 %.not2018, label %.thread2158, label %bb.fd

bb.fd:                                            ; preds = %bb.fc
  %i.tu = add nuw nsw i32 %.01830, %i.tr          ; 3 uses
  %i.tv = icmp sgt i32 %i.tu, %i.qr
  br i1 %i.tv, label %.thread2158, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  br i1 %i.rb, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.tw = load i16, ptr %i.m, align 2, !tbaa !156
  %i.tx = zext i16 %i.tw to i32
  %i.ty = tail call i32 @llvm.abs.i32(i32 range(i32 -32768, 32768) %.11814, i1 true)
  %i.tz = zext nneg i32 %i.ty to i64
  %i.ua = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !49 ; 2 uses
  %.inv.i = icmp slt i32 %.11814, 1
  %i.uc = sub nsw i32 0, %i.ub
  %i.ud = select i1 %.inv.i, i32 %i.uc, i32 %i.ub
  %.0.i2041 = mul nsw i32 %i.ud, %i.tx
  br label %bb.fg

bb.fg:                                            ; preds = %bb.fe, %bb.ff
  %.01812 = phi i32 [ %.0.i2041, %bb.ff ], [ %.11814, %bb.fe ] ; 2 uses
  br i1 %i.le, label %iter.check2918, label %iter.check2952

iter.check2952:                                   ; preds = %bb.fg
  %i.ue = trunc i32 %.01812 to i16                ; 3 uses
  %i.uf = zext i16 %i.tq to i64                   ; 5 uses
  %min.iters.check2937 = icmp ult i16 %i.tq, 4
  br i1 %min.iters.check2937, label %vec.epilog.scalar.ph2953.preheader, label %vector.main.loop.iter.check2938

vector.main.loop.iter.check2938:                  ; preds = %iter.check2952
  %min.iters.check2939 = icmp ult i16 %i.tq, 16
  br i1 %min.iters.check2939, label %vec.epilog.ph2956, label %vector.ph2940

vector.ph2940:                                    ; preds = %vector.main.loop.iter.check2938
  %i.ug = and i64 %i.uf, 12
  %n.vec2941 = and i64 %i.uf, 65520               ; 5 uses
  %i.uh = trunc nuw nsw i64 %n.vec2941 to i32
  %i.ui = shl nuw nsw i64 %n.vec2941, 1
  %i.uj = getelementptr i8, ptr %.31868, i64 %i.ui ; 2 uses
  %broadcast.splatinsert2942 = insertelement <8 x i16> poison, i16 %i.ue, i64 0
  %broadcast.splat2943 = shufflevector <8 x i16> %broadcast.splatinsert2942, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body2944

vector.body2944:                                  ; preds = %vector.ph2940, %vector.body2944
  %index2945 = phi i64 [ 0, %vector.ph2940 ], [ %index.next2947, %vector.body2944 ] ; 2 uses
  %i.uk = shl i64 %index2945, 1
  %next.gep2946 = getelementptr i8, ptr %.31868, i64 %i.uk ; 2 uses
  %i.ul = getelementptr i8, ptr %next.gep2946, i64 16
  store <8 x i16> %broadcast.splat2943, ptr %next.gep2946, align 2, !tbaa !66
  store <8 x i16> %broadcast.splat2943, ptr %i.ul, align 2, !tbaa !66
  %index.next2947 = add nuw i64 %index2945, 16    ; 2 uses
  %i.um = icmp eq i64 %index.next2947, %n.vec2941
  br i1 %i.um, label %middle.block2948, label %vector.body2944, !llvm.loop !82

middle.block2948:                                 ; preds = %vector.body2944
  %cmp.n2949 = icmp eq i64 %n.vec2941, %i.uf
  br i1 %cmp.n2949, label %.preheader2276.backedge, label %vec.epilog.iter.check2954

.preheader2276.backedge:                          ; preds = %vec.epilog.scalar.ph2953, %vec.epilog.scalar.ph2919, %middle.block2948, %vec.epilog.middle.block2964, %middle.block2914, %vec.epilog.middle.block2933
  %.31868.be = phi ptr [ %i.uj, %middle.block2948 ], [ %i.vp, %vec.epilog.scalar.ph2919 ], [ %i.up, %vec.epilog.middle.block2964 ], [ %i.vi, %vec.epilog.middle.block2933 ], [ %i.uy, %middle.block2914 ], [ %i.vs, %vec.epilog.scalar.ph2953 ]
  br label %.preheader2276

vec.epilog.iter.check2954:                        ; preds = %middle.block2948
  %min.epilog.iters.check2955 = icmp eq i64 %i.ug, 0
  br i1 %min.epilog.iters.check2955, label %vec.epilog.scalar.ph2953.preheader, label %vec.epilog.ph2956, !prof !178

vec.epilog.ph2956:                                ; preds = %vector.main.loop.iter.check2938, %vec.epilog.iter.check2954
  %vec.epilog.resume.val2950 = phi i64 [ %n.vec2941, %vec.epilog.iter.check2954 ], [ 0, %vector.main.loop.iter.check2938 ]
  %n.vec2957 = and i64 %i.uf, 65532               ; 4 uses
  %i.un = trunc nuw nsw i64 %n.vec2957 to i32
  %i.uo = shl nuw nsw i64 %n.vec2957, 1
  %i.up = getelementptr i8, ptr %.31868, i64 %i.uo ; 2 uses
  %broadcast.splatinsert2958 = insertelement <4 x i16> poison, i16 %i.ue, i64 0
  %broadcast.splat2959 = shufflevector <4 x i16> %broadcast.splatinsert2958, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body2960

vec.epilog.vector.body2960:                       ; preds = %vec.epilog.vector.body2960, %vec.epilog.ph2956
  %index2961 = phi i64 [ %vec.epilog.resume.val2950, %vec.epilog.ph2956 ], [ %index.next2963, %vec.epilog.vector.body2960 ] ; 2 uses
  %i.uq = shl i64 %index2961, 1
  %next.gep2962 = getelementptr i8, ptr %.31868, i64 %i.uq
  store <4 x i16> %broadcast.splat2959, ptr %next.gep2962, align 2, !tbaa !66
  %index.next2963 = add nuw i64 %index2961, 4     ; 2 uses
end_hunk_0
begin_hunk_1_@cfhd_decode:bb.a
  %index2861 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2864, %vec.epilog.vector.body ] ; 2 uses
  %i.zs = shl i64 %index2861, 1
  %next.gep2862 = getelementptr i8, ptr %.81873, i64 %i.zs ; 2 uses
  %wide.load2863 = load <4 x i16>, ptr %next.gep2862, align 2, !tbaa !66
  %i.zt = or <4 x i16> %wide.load2863, %broadcast.splat2860
  %i.zu = mul <4 x i16> %i.zt, %broadcast.splat2858
  store <4 x i16> %i.zu, ptr %next.gep2862, align 2, !tbaa !66
  %index.next2864 = add nuw i64 %index2861, 4     ; 2 uses
  %i.zv = icmp eq i64 %index.next2864, %n.vec2856
  br i1 %i.zv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2865 = icmp eq i64 %n.vec2856, %i.zd
  br i1 %cmp.n2865, label %.loopexit2272.backedge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.017982383.ph = phi i32 [ 0, %iter.check ], [ %i.zf, %vec.epilog.iter.check ], [ %i.zp, %vec.epilog.middle.block ]
  %.918742382.ph = phi ptr [ %.81873, %iter.check ], [ %i.zh, %vec.epilog.iter.check ], [ %i.zr, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %.017982383 = phi i32 [ %i.aaa, %vec.epilog.scalar.ph ], [ %.017982383.ph, %vec.epilog.scalar.ph.preheader ]
  %.918742382 = phi ptr [ %i.zy, %vec.epilog.scalar.ph ], [ %.918742382.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.zw = load i16, ptr %.918742382, align 2, !tbaa !66
  %i.zx = or i16 %i.zw, %i.zc
  %i.zy = getelementptr inbounds nuw i8, ptr %.918742382, i64 2 ; 2 uses
  %i.zz = mul i16 %i.zx, %i.zb
  store i16 %i.zz, ptr %.918742382, align 2, !tbaa !66
  %i.aaa = add nuw nsw i32 %.017982383, 1         ; 2 uses
  %exitcond2549.not = icmp eq i32 %i.aaa, %i.ya
  br i1 %exitcond2549.not, label %.loopexit2272.backedge, label %vec.epilog.scalar.ph, !llvm.loop !92

vec.epilog.scalar.ph2884:                         ; preds = %vec.epilog.scalar.ph2884.preheader, %vec.epilog.scalar.ph2884
  %.017972381 = phi i32 [ %i.aac, %vec.epilog.scalar.ph2884 ], [ %.017972381.ph, %vec.epilog.scalar.ph2884.preheader ]
  %.1018752380 = phi ptr [ %i.aab, %vec.epilog.scalar.ph2884 ], [ %.1018752380.ph, %vec.epilog.scalar.ph2884.preheader ] ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %.1018752380, i64 2 ; 2 uses
  store i16 %i.yn, ptr %.1018752380, align 2, !tbaa !66
  %i.aac = add nuw nsw i32 %.017972381, 1         ; 2 uses
  %exitcond2547.not = icmp eq i32 %i.aac, %i.ya
  br i1 %exitcond2547.not, label %.loopexit2272.backedge, label %vec.epilog.scalar.ph2884, !llvm.loop !93

.thread2158:                                      ; preds = %bb.fd, %bb.fc, %bb.fk, %bb.fj
  %.131878 = phi ptr [ %.81873, %bb.fk ], [ %.81873, %bb.fj ], [ %.31868, %bb.fc ], [ %.31868, %bb.fd ]
  %.41834 = phi i32 [ %i.yd, %bb.fk ], [ %.21832, %bb.fj ], [ %i.tu, %bb.fd ], [ %.01830, %bb.fc ] ; 5 uses
  %.6 = phi i32 [ %i.yc, %bb.fk ], [ %i.yc, %bb.fj ], [ %i.tt, %bb.fc ], [ %i.tt, %bb.fd ]
  %i.aad = icmp sgt i32 %.41834, %i.qr
  br i1 %i.aad, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %.thread2158
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.70) #11
  br label %.thread2181

bb.fq:                                            ; preds = %.thread2158
  %i.aae = load i32, ptr %i.w, align 8, !tbaa !171
  %.not2020 = icmp eq i32 %i.aae, 0
  br i1 %.not2020, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.aaf = sext i32 %.41834 to i64
  %i.aag = sub nsw i64 0, %i.aaf
  %i.aah = getelementptr inbounds [2 x i8], ptr %.131878, i64 %i.aag
  tail call fastcc void @peak_table(ptr noundef %i.aah, ptr noundef nonnull %i.w, i32 noundef %.41834)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.aai = load i32, ptr %i.o, align 4, !tbaa !158
  %.not2021 = icmp eq i32 %i.aai, 0
  br i1 %.not2021, label %difference_coding.exit, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.aaj = load i32, ptr %i.k, align 8, !tbaa !154
  %i.aak = sext i32 %i.aaj to i64
  %i.aal = getelementptr [1024 x i8], ptr %i.b, i64 %i.aak
  %i.aam = getelementptr i8, ptr %i.aal, i64 42168
  %i.aan = load i32, ptr %i.v, align 8, !tbaa !163
  %i.aao = sext i32 %i.aan to i64
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %i.aao
  %i.aaq = load ptr, ptr %i.aap, align 8, !tbaa !63
  %i.aar = icmp sgt i32 %i.qa, 0
  br i1 %i.aar, label %.preheader.lr.ph.i, label %difference_coding.exit

.preheader.lr.ph.i:                               ; preds = %bb.ft
  %i.aas = icmp sgt i32 %i.qc, 1
  %i.aat = sext i32 %i.qc to i64
  br i1 %i.aas, label %.preheader.preheader.i, label %difference_coding.exit

.preheader.preheader.i:                           ; preds = %.preheader.lr.ph.i
  %wide.trip.count.i = zext nneg i32 %i.qc to i64
  %i.aau = add nsw i64 %wide.trip.count.i, -1     ; 2 uses
  %xtraiter3323 = and i64 %i.aau, 3               ; 3 uses
  %i.aav = add nsw i32 %i.qc, -2
  %i.aaw = icmp ult i32 %i.aav, 3
  %unroll_iter = and i64 %i.aau, -4
  %lcmp.mod3324.not = icmp eq i64 %xtraiter3323, 0
  %lcmp.mod3325 = icmp ne i64 %xtraiter3323, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.preheader.i
  %.01116.i = phi i32 [ %i.abb, %._crit_edge.i ], [ 0, %.preheader.preheader.i ]
  %.01215.i = phi ptr [ %i.aba, %._crit_edge.i ], [ %i.aaq, %.preheader.preheader.i ] ; 7 uses
  %load_initial = load i16, ptr %.01215.i, align 2 ; 2 uses
  br i1 %i.aaw, label %.epil.preheader, label %.preheader.i.new

._crit_edge.i.unr-lcssa:                          ; preds = %.preheader.i.new
  br i1 %lcmp.mod3324.not, label %._crit_edge.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.unr-lcssa, %.preheader.i
  %store_forwarded.epil.init = phi i16 [ %load_initial, %.preheader.i ], [ %i.abq, %._crit_edge.i.unr-lcssa ]
  %indvars.iv.i.epil.init = phi i64 [ 1, %.preheader.i ], [ %indvars.iv.next.i.3, %._crit_edge.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod3325)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %.epil.preheader
  %store_forwarded.epil = phi i16 [ %store_forwarded.epil.init, %.epil.preheader ], [ %i.aaz, %bb.fu ]
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.fu ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fu ]
  %i.aax = getelementptr [2 x i8], ptr %.01215.i, i64 %indvars.iv.i.epil ; 2 uses
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !66
  %i.aaz = add i16 %i.aay, %store_forwarded.epil  ; 2 uses
  store i16 %i.aaz, ptr %i.aax, align 2, !tbaa !66
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter3323
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %bb.fu, !llvm.loop !94

._crit_edge.i:                                    ; preds = %bb.fu, %._crit_edge.i.unr-lcssa
  %i.aba = getelementptr inbounds nuw [2 x i8], ptr %.01215.i, i64 %i.aat
  %i.abb = add nuw nsw i32 %.01116.i, 1           ; 2 uses
  %exitcond19.not.i = icmp eq i32 %i.abb, %i.qa
  br i1 %exitcond19.not.i, label %difference_coding.exit, label %.preheader.i, !llvm.loop !95

.preheader.i.new:                                 ; preds = %.preheader.i, %.preheader.i.new
  %store_forwarded = phi i16 [ %i.abq, %.preheader.i.new ], [ %load_initial, %.preheader.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.preheader.i.new ], [ 1, %.preheader.i ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader.i.new ], [ 0, %.preheader.i ]
  %i.abc = getelementptr [2 x i8], ptr %.01215.i, i64 %indvars.iv.i ; 2 uses
  %i.abd = load i16, ptr %i.abc, align 2, !tbaa !66
  %i.abe = add i16 %i.abd, %store_forwarded       ; 2 uses
  store i16 %i.abe, ptr %i.abc, align 2, !tbaa !66
  %i.abf = getelementptr [2 x i8], ptr %.01215.i, i64 %indvars.iv.i
  %i.abg = getelementptr i8, ptr %i.abf, i64 2    ; 2 uses
  %i.abh = load i16, ptr %i.abg, align 2, !tbaa !66
  %i.abi = add i16 %i.abh, %i.abe                 ; 2 uses
  store i16 %i.abi, ptr %i.abg, align 2, !tbaa !66
  %i.abj = getelementptr [2 x i8], ptr %.01215.i, i64 %indvars.iv.i
  %i.abk = getelementptr i8, ptr %i.abj, i64 4    ; 2 uses
  %i.abl = load i16, ptr %i.abk, align 2, !tbaa !66
  %i.abm = add i16 %i.abl, %i.abi                 ; 2 uses
  store i16 %i.abm, ptr %i.abk, align 2, !tbaa !66
  %i.abn = getelementptr [2 x i8], ptr %.01215.i, i64 %indvars.iv.i
  %i.abo = getelementptr i8, ptr %i.abn, i64 6    ; 2 uses
  %i.abp = load i16, ptr %i.abo, align 2, !tbaa !66
  %i.abq = add i16 %i.abp, %i.abm                 ; 3 uses
  store i16 %i.abq, ptr %i.abo, align 2, !tbaa !66
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.unr-lcssa, label %.preheader.i.new, !llvm.loop !96

difference_coding.exit:                           ; preds = %._crit_edge.i, %.preheader.lr.ph.i, %bb.ft, %bb.fs
  %i.abr = add nsw i32 %.6, 7
  %i.abs = ashr i32 %i.abr, 3
  %i.abt = add nsw i32 %i.abs, 3
  %i.abu = and i32 %i.abt, -4                     ; 2 uses
  %i.abv = icmp sgt i32 %i.abu, %i.qv
  br i1 %i.abv, label %bb.fv, label %bb.fw

bb.fv:                                            ; preds = %difference_coding.exit
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.71) #11
  br label %.thread2181

bb.fw:                                            ; preds = %difference_coding.exit
  %.neg.i = sub i64 %i.bb, %i.qt
  %i.abw = trunc i64 %.neg.i to i32
  %.0.i2039 = tail call i32 @llvm.smax.i32(i32 %i.abu, i32 %i.abw)
  %i.abx = sext i32 %.0.i2039 to i64
  %i.aby = getelementptr inbounds i8, ptr %.sroa.02086.62712, i64 %i.abx ; 2 uses
  %i.abz = sub nsw i32 %.41834, %i.qr
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.72, i32 noundef %.41834, i32 noundef %i.abz) #11
  %i.aca = load i32, ptr %i.k, align 8, !tbaa !154
  %i.acb = sext i32 %i.aca to i64
  %i.acc = getelementptr [1024 x i8], ptr %i.b, i64 %i.acb
  %i.acd = load i32, ptr %i.u, align 4, !tbaa !162
  %i.ace = sext i32 %i.acd to i64
  %i.acf = getelementptr [128 x i8], ptr %i.acc, i64 %i.ace
  %i.acg = load i32, ptr %i.t, align 8, !tbaa !161
  %i.ach = sext i32 %i.acg to i64
  %i.aci = getelementptr [32 x i8], ptr %i.acf, i64 %i.ach
  %i.acj = getelementptr i8, ptr %i.aci, i64 42408
  store i8 1, ptr %i.acj, align 8, !tbaa !69
  %.pr2167 = load i32, ptr %i.v, align 8, !tbaa !163
  %.not2022 = icmp eq i32 %.pr2167, 255
  br i1 %.not2022, label %.thread2168, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  store i32 0, ptr %i.n, align 8, !tbaa !157
  br label %.thread2168

.thread2168:                                      ; preds = %.thread2142, %bb.fx, %bb.fw, %.thread2708
  %.sroa.02086.8 = phi ptr [ %.sroa.02086.62712, %.thread2708 ], [ %i.aby, %bb.fw ], [ %i.aby, %bb.fx ], [ %.sroa.02086.22131, %.thread2142 ] ; 2 uses
  %.7 = phi i32 [ %.21837, %.thread2708 ], [ %.0.i.i, %bb.fw ], [ %.0.i.i, %bb.fx ], [ %.21837, %.thread2142 ] ; 2 uses
  %i.ack = ptrtoint ptr %.sroa.02086.8 to i64
  %i.acl = sub i64 %i.ah, %i.ack                  ; 2 uses
  %i.acm = trunc i64 %i.acl to i32
  %i.acn = icmp sgt i32 %i.acm, 3
  br i1 %i.acn, label %bb.d, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.thread2168
  %i.aco = icmp eq i32 %.21844, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bytestream2_init.exit
  %.01842.lcssa = phi i1 [ true, %bytestream2_init.exit ], [ %i.aco, %._crit_edge.loopexit ]
  %.01835.lcssa = phi i32 [ 0, %bytestream2_init.exit ], [ %.7, %._crit_edge.loopexit ] ; 5 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 9 uses
  %i.acq = load i32, ptr %i.acp, align 8, !tbaa !56
  %i.acr = tail call i32 @av_pix_fmt_count_planes(i32 noundef %i.acq) #11
  store i32 %i.acr, ptr %i.y, align 8, !tbaa !43
  %i.acs = load i32, ptr %i.acp, align 8, !tbaa !56
  %i.act = icmp eq i32 %i.acs, 145
  br i1 %i.act, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %._crit_edge
  %i.acu = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  store i32 1, ptr %i.acu, align 4, !tbaa !42
  store i32 4, ptr %i.y, align 8, !tbaa !43
  br label %bb.fz

bb.fz:                                            ; preds = %bb.fy, %._crit_edge
  tail call void @ff_thread_finish_setup(ptr noundef nonnull %0) #11
  %i.acv = getelementptr inbounds nuw i8, ptr %i.b, i64 42056
  %i.acw = load i32, ptr %i.acv, align 8, !tbaa !39
  %.not = icmp eq i32 %i.acw, 0
  br i1 %.not, label %bb.gg, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  %i.acx = getelementptr inbounds nuw i8, ptr %i.b, i64 42060
  %i.acy = load i32, ptr %i.acx, align 4, !tbaa !40
  %.not1960 = icmp eq i32 %i.acy, 0
  br i1 %.not1960, label %bb.gg, label %bb.gb

bb.gb:                                            ; preds = %bb.ga
  %i.acz = getelementptr inbounds nuw i8, ptr %i.b, i64 42064
  %i.ada = load i32, ptr %i.acz, align 8, !tbaa !38
  %i.adb = icmp eq i32 %i.ada, -1
  br i1 %i.adb, label %bb.gg, label %bb.gc

bb.gc:                                            ; preds = %bb.gb
  %i.adc = getelementptr inbounds nuw i8, ptr %i.b, i64 42068
  %i.add = load i32, ptr %i.adc, align 4, !tbaa !41
  %i.ade = icmp eq i32 %i.add, -2147483648
  br i1 %i.ade, label %bb.gg, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.adf = load i32, ptr %i.d, align 4, !tbaa !45
  %.not1961 = icmp eq i32 %i.adf, 0
  br i1 %.not1961, label %bb.ge, label %bb.gg

bb.ge:                                            ; preds = %bb.gd
  %i.adg = load i32, ptr %i.e, align 8, !tbaa !46
  %.not1962 = icmp eq i32 %i.adg, 0
  br i1 %.not1962, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  %i.adh = load i32, ptr %i.f, align 8, !tbaa !47
  %.not1963 = icmp eq i32 %i.adh, -1
  br i1 %.not1963, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge, %bb.gd, %bb.gc, %bb.gb, %bb.ga, %bb.fz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.73) #11
  br label %.thread2181

bb.gh:                                            ; preds = %bb.gf
  br i1 %.01842.lcssa, label %bb.gs, label %.preheader2268

.preheader2268:                                   ; preds = %bb.gh
  %i.adi = load i32, ptr %i.y, align 8, !tbaa !43 ; 5 uses
  %i.adj = icmp sgt i32 %i.adi, 0                 ; 4 uses
  %.pre2622 = load i32, ptr %i.r, align 8, !tbaa !35 ; 3 uses
  br i1 %i.adj, label %.preheader2267.lr.ph, label %._crit_edge2397

.preheader2267.lr.ph:                             ; preds = %.preheader2268
  %.not3336.not = icmp eq i32 %.pre2622, 0        ; 2 uses
  %i.adk = icmp eq i32 %.pre2622, 2
  %wide.trip.count2580 = zext nneg i32 %i.adi to i64 ; 2 uses
  br i1 %i.adk, label %.preheader2267.us, label %.preheader2267

.preheader2267.us:                                ; preds = %.preheader2267.lr.ph, %.split.us.us
  %indvars.iv2577 = phi i64 [ %indvars.iv.next2578, %.split.us.us ], [ 0, %.preheader2267.lr.ph ] ; 2 uses
  %i.adl = getelementptr inbounds nuw [1024 x i8], ptr %i.b, i64 %indvars.iv2577 ; 13 uses
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 42408
  %i.adn = load i8, ptr %i.adm, align 8, !tbaa !69
  %.not1965.us.us = icmp eq i8 %i.adn, 0
  br i1 %.not1965.us.us, label %.thread2181, label %bb.gi

bb.gi:                                            ; preds = %.preheader2267.us
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adl, i64 42440
  %i.adp = load i8, ptr %i.ado, align 8, !tbaa !69
  %.not1965.us.us.1 = icmp eq i8 %i.adp, 0
  br i1 %.not1965.us.us.1, label %.thread2181, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adl, i64 42472
  %i.adr = load i8, ptr %i.adq, align 8, !tbaa !69
  %.not1965.us.us.2 = icmp eq i8 %i.adr, 0
  br i1 %.not1965.us.us.2, label %.thread2181, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adl, i64 42504
  %i.adt = load i8, ptr %i.ads, align 8, !tbaa !69
  %.not1965.us.us.3 = icmp eq i8 %i.adt, 0
  br i1 %.not1965.us.us.3, label %.thread2181, label %.thread2187.us.us

.thread2187.us.us:                                ; preds = %bb.gk
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adl, i64 42568
  %i.adv = load i8, ptr %i.adu, align 8, !tbaa !69
  %.not1965.us.us.13331 = icmp eq i8 %i.adv, 0
  br i1 %.not1965.us.us.13331, label %.thread2181, label %bb.gl

bb.gl:                                            ; preds = %.thread2187.us.us
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adl, i64 42600
  %i.adx = load i8, ptr %i.adw, align 8, !tbaa !69
  %.not1965.us.us.1.1 = icmp eq i8 %i.adx, 0
  br i1 %.not1965.us.us.1.1, label %.thread2181, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.ady = getelementptr inbounds nuw i8, ptr %i.adl, i64 42632
  %i.adz = load i8, ptr %i.ady, align 8, !tbaa !69
  %.not1965.us.us.2.1 = icmp eq i8 %i.adz, 0
  br i1 %.not1965.us.us.2.1, label %.thread2181, label %.thread2187.us.us.2

.thread2187.us.us.2:                              ; preds = %bb.gm
  br i1 %.not3336.not, label %.split.us.us, label %bb.gn

bb.gn:                                            ; preds = %.thread2187.us.us.2
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adl, i64 42824
  %i.aeb = load i8, ptr %i.aea, align 8, !tbaa !69
  %.not1965.us.us.33335 = icmp eq i8 %i.aeb, 0
  br i1 %.not1965.us.us.33335, label %.thread2181, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aec = getelementptr inbounds nuw i8, ptr %i.adl, i64 42856
  %i.aed = load i8, ptr %i.aec, align 8, !tbaa !69
  %.not1965.us.us.1.3 = icmp eq i8 %i.aed, 0
  br i1 %.not1965.us.us.1.3, label %.thread2181, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  %i.aee = getelementptr inbounds nuw i8, ptr %i.adl, i64 42888
  %i.aef = load i8, ptr %i.aee, align 8, !tbaa !69
  %.not1965.us.us.2.3 = icmp eq i8 %i.aef, 0
  br i1 %.not1965.us.us.2.3, label %.thread2181, label %.thread2187.us.us.3

.thread2187.us.us.3:                              ; preds = %bb.gp
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.adl, i64 42952
  %i.aeh = load i8, ptr %i.aeg, align 8, !tbaa !69
  %.not1965.us.us.4 = icmp eq i8 %i.aeh, 0
  br i1 %.not1965.us.us.4, label %.thread2181, label %bb.gq

bb.gq:                                            ; preds = %.thread2187.us.us.3
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adl, i64 42984
  %i.aej = load i8, ptr %i.aei, align 8, !tbaa !69
  %.not1965.us.us.1.4 = icmp eq i8 %i.aej, 0
  br i1 %.not1965.us.us.1.4, label %.thread2181, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.aek = getelementptr inbounds nuw i8, ptr %i.adl, i64 43016
  %i.ael = load i8, ptr %i.aek, align 8, !tbaa !69
  %.not1965.us.us.2.4 = icmp eq i8 %i.ael, 0
  br i1 %.not1965.us.us.2.4, label %.thread2181, label %.split.us.us

.split.us.us:                                     ; preds = %bb.gr, %.thread2187.us.us.2
  %indvars.iv.next2578 = add nuw nsw i64 %indvars.iv2577, 1 ; 2 uses
  %exitcond2581.not = icmp eq i64 %indvars.iv.next2578, %wide.trip.count2580
  br i1 %exitcond2581.not, label %._crit_edge2397, label %.preheader2267.us, !llvm.loop !97

bb.gs:                                            ; preds = %bb.gh
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.61) #11
  br label %.thread2181

.preheader2267:                                   ; preds = %.preheader2267.lr.ph, %.split
  %indvars.iv2563 = phi i64 [ %indvars.iv.next2564, %.split ], [ 0, %.preheader2267.lr.ph ] ; 2 uses
  %i.aem = getelementptr inbounds nuw [1024 x i8], ptr %i.b, i64 %indvars.iv2563 ; 19 uses
  %i.aen = getelementptr inbounds nuw i8, ptr %i.aem, i64 42408
  %i.aeo = load i8, ptr %i.aen, align 8, !tbaa !69
  %.not1965 = icmp eq i8 %i.aeo, 0
  br i1 %.not1965, label %.thread2181, label %bb.gt

bb.gt:                                            ; preds = %.preheader2267
  %i.aep = getelementptr inbounds nuw i8, ptr %i.aem, i64 42440
  %i.aeq = load i8, ptr %i.aep, align 8, !tbaa !69
  %.not1965.1 = icmp eq i8 %i.aeq, 0
  br i1 %.not1965.1, label %.thread2181, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.aer = getelementptr inbounds nuw i8, ptr %i.aem, i64 42472
  %i.aes = load i8, ptr %i.aer, align 8, !tbaa !69
  %.not1965.2 = icmp eq i8 %i.aes, 0
  br i1 %.not1965.2, label %.thread2181, label %bb.gv

bb.gv:                                            ; preds = %bb.gu
  %i.aet = getelementptr inbounds nuw i8, ptr %i.aem, i64 42504
  %i.aeu = load i8, ptr %i.aet, align 8, !tbaa !69
  %.not1965.3 = icmp eq i8 %i.aeu, 0
  br i1 %.not1965.3, label %.thread2181, label %.thread2187.loopexit

.thread2187.loopexit:                             ; preds = %bb.gv
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aem, i64 42568
  %i.aew = load i8, ptr %i.aev, align 8, !tbaa !69
  %.not1965.13326 = icmp eq i8 %i.aew, 0
  br i1 %.not1965.13326, label %.thread2181, label %bb.gw

bb.gw:                                            ; preds = %.thread2187.loopexit
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aem, i64 42600
  %i.aey = load i8, ptr %i.aex, align 8, !tbaa !69
  %.not1965.1.1 = icmp eq i8 %i.aey, 0
  br i1 %.not1965.1.1, label %.thread2181, label %bb.gx

bb.gx:                                            ; preds = %bb.gw
  %i.aez = getelementptr inbounds nuw i8, ptr %i.aem, i64 42632
  %i.afa = load i8, ptr %i.aez, align 8, !tbaa !69
  %.not1965.2.1 = icmp eq i8 %i.afa, 0
  br i1 %.not1965.2.1, label %.thread2181, label %.thread2187.loopexit.1

.thread2187.loopexit.1:                           ; preds = %bb.gx
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aem, i64 42696
  %i.afc = load i8, ptr %i.afb, align 8, !tbaa !69
  %.not1965.23328 = icmp eq i8 %i.afc, 0
  br i1 %.not1965.23328, label %.thread2181, label %bb.gy

bb.gy:                                            ; preds = %.thread2187.loopexit.1
  %i.afd = getelementptr inbounds nuw i8, ptr %i.aem, i64 42728
  %i.afe = load i8, ptr %i.afd, align 8, !tbaa !69
  %.not1965.1.2 = icmp eq i8 %i.afe, 0
  br i1 %.not1965.1.2, label %.thread2181, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.aff = getelementptr inbounds nuw i8, ptr %i.aem, i64 42760
  %i.afg = load i8, ptr %i.aff, align 8, !tbaa !69
  %.not1965.2.2 = icmp eq i8 %i.afg, 0
  br i1 %.not1965.2.2, label %.thread2181, label %.thread2187.loopexit.2

.thread2187.loopexit.2:                           ; preds = %bb.gz
  br i1 %.not3336.not, label %.split, label %bb.ha

bb.ha:                                            ; preds = %.thread2187.loopexit.2
  %i.afh = getelementptr inbounds nuw i8, ptr %i.aem, i64 42824
  %i.afi = load i8, ptr %i.afh, align 8, !tbaa !69
  %.not1965.33330 = icmp eq i8 %i.afi, 0
  br i1 %.not1965.33330, label %.thread2181, label %bb.hb

bb.hb:                                            ; preds = %bb.ha
  %i.afj = getelementptr inbounds nuw i8, ptr %i.aem, i64 42856
  %i.afk = load i8, ptr %i.afj, align 8, !tbaa !69
  %.not1965.1.3 = icmp eq i8 %i.afk, 0
  br i1 %.not1965.1.3, label %.thread2181, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.afl = getelementptr inbounds nuw i8, ptr %i.aem, i64 42888
  %i.afm = load i8, ptr %i.afl, align 8, !tbaa !69
  %.not1965.2.3 = icmp eq i8 %i.afm, 0
  br i1 %.not1965.2.3, label %.thread2181, label %.thread2187.loopexit.3

.thread2187.loopexit.3:                           ; preds = %bb.hc
  %i.afn = getelementptr inbounds nuw i8, ptr %i.aem, i64 42952
  %i.afo = load i8, ptr %i.afn, align 8, !tbaa !69
  %.not1965.4 = icmp eq i8 %i.afo, 0
  br i1 %.not1965.4, label %.thread2181, label %bb.hd

bb.hd:                                            ; preds = %.thread2187.loopexit.3
  %i.afp = getelementptr inbounds nuw i8, ptr %i.aem, i64 42984
  %i.afq = load i8, ptr %i.afp, align 8, !tbaa !69
  %.not1965.1.4 = icmp eq i8 %i.afq, 0
  br i1 %.not1965.1.4, label %.thread2181, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.afr = getelementptr inbounds nuw i8, ptr %i.aem, i64 43016
  %i.afs = load i8, ptr %i.afr, align 8, !tbaa !69
  %.not1965.2.4 = icmp eq i8 %i.afs, 0
  br i1 %.not1965.2.4, label %.thread2181, label %.thread2187.loopexit.4

.thread2187.loopexit.4:                           ; preds = %bb.he
  %i.aft = getelementptr inbounds nuw i8, ptr %i.aem, i64 43080
  %i.afu = load i8, ptr %i.aft, align 8, !tbaa !69
  %.not1965.5 = icmp eq i8 %i.afu, 0
  br i1 %.not1965.5, label %.thread2181, label %bb.hf

bb.hf:                                            ; preds = %.thread2187.loopexit.4
  %i.afv = getelementptr inbounds nuw i8, ptr %i.aem, i64 43112
  %i.afw = load i8, ptr %i.afv, align 8, !tbaa !69
  %.not1965.1.5 = icmp eq i8 %i.afw, 0
  br i1 %.not1965.1.5, label %.thread2181, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  %i.afx = getelementptr inbounds nuw i8, ptr %i.aem, i64 43144
  %i.afy = load i8, ptr %i.afx, align 8, !tbaa !69
  %.not1965.2.5 = icmp eq i8 %i.afy, 0
  br i1 %.not1965.2.5, label %.thread2181, label %.split

.split:                                           ; preds = %bb.hg, %.thread2187.loopexit.2
  %indvars.iv.next2564 = add nuw nsw i64 %indvars.iv2563, 1 ; 2 uses
  %exitcond2567.not = icmp eq i64 %indvars.iv.next2564, %wide.trip.count2580
  br i1 %exitcond2567.not, label %._crit_edge2397, label %.preheader2267, !llvm.loop !97

._crit_edge2397:                                  ; preds = %.split, %.split.us.us, %.preheader2268
  switch i32 %.pre2622, label %.loopexit2251 [
    i32 0, label %bb.hh
    i32 2, label %bb.ih
  ]

bb.hh:                                            ; preds = %._crit_edge2397
  %i.afz = load i32, ptr %i.q, align 4, !tbaa !160
  %.not1966 = icmp ne i32 %i.afz, 1
  %.not1975 = icmp eq i32 %.01835.lcssa, 0
  %i.aga = and i1 %.not1966, %i.adj
  %or.cond2789 = select i1 %i.aga, i1 %.not1975, i1 false
  br i1 %or.cond2789, label %.lr.ph2458, label %.loopexit2719

.lr.ph2458:                                       ; preds = %bb.hh
  %i.agb = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.agd = getelementptr inbounds nuw i8, ptr %i.b, i64 46264 ; 6 uses
  %i.age = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.agf = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.agg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.agh = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  %i.agi = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 3 uses
  br label %bb.hi

bb.hi:                                            ; preds = %.lr.ph2458, %.loopexit2254
  %indvars.iv2612 = phi i64 [ 0, %.lr.ph2458 ], [ %indvars.iv.next2613, %.loopexit2254 ] ; 8 uses
  %i.agj = getelementptr inbounds nuw [1024 x i8], ptr %i.agb, i64 %indvars.iv2612 ; 39 uses
  %i.agk = getelementptr inbounds nuw i8, ptr %i.agj, i64 276
  %i.agl = load i32, ptr %i.agk, align 4, !tbaa !170 ; 6 uses
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agj, i64 264
  %i.agn = load i32, ptr %i.agm, align 8, !tbaa !65 ; 3 uses
  %i.ago = getelementptr inbounds nuw i8, ptr %i.agj, i64 268
  %i.agp = load i32, ptr %i.ago, align 4, !tbaa !168 ; 9 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %i.agj, i64 288
  %i.agr = load i64, ptr %i.agq, align 8, !tbaa !169 ; 2 uses
  %i.ags = trunc i64 %i.agr to i32                ; 2 uses
  %i.agt = load i32, ptr %i.acp, align 8, !tbaa !56
  %i.agu = icmp eq i32 %i.agt, 145
  br i1 %i.agu, label %bb.hj, label %bb.hk

bb.hj:                                            ; preds = %bb.hi
  %i.agv = load i32, ptr %i.agc, align 4, !tbaa !49
  br label %bb.hl

bb.hk:                                            ; preds = %bb.hi
  %i.agw = icmp eq i64 %indvars.iv2612, 1
  %i.agx = icmp eq i64 %indvars.iv2612, 2
  %i.agy = trunc nuw nsw i64 %indvars.iv2612 to i32
  %i.agz = select i1 %i.agx, i32 1, i32 %i.agy
  %i.aha = select i1 %i.agw, i32 2, i32 %i.agz    ; 2 uses
  %i.ahb = zext nneg i32 %i.aha to i64
  %i.ahc = getelementptr inbounds nuw [4 x i8], ptr %i.agc, i64 %i.ahb
  %i.ahd = load i32, ptr %i.ahc, align 4, !tbaa !49
  %i.ahe = sdiv i32 %i.ahd, 2
  br label %bb.hl

bb.hl:                                            ; preds = %bb.hk, %bb.hj
  %.01792 = phi i32 [ 0, %bb.hj ], [ %i.aha, %bb.hk ] ; 3 uses
  %.01791.in = phi i32 [ %i.agv, %bb.hj ], [ %i.ahe, %bb.hk ]
  %.01791 = sext i32 %.01791.in to i64
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agj, i64 272
  %i.ahg = load i32, ptr %i.ahf, align 8, !tbaa !64
  %i.ahh = icmp sgt i32 %i.agl, %i.ahg
  br i1 %i.ahh, label %bb.ho, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  %i.ahi = icmp sle i32 %i.agp, %i.agn
  %i.ahj = icmp ne i32 %i.ags, 0
  %or.cond64 = select i1 %i.ahi, i1 %i.ahj, i1 false
  br i1 %or.cond64, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ahk = getelementptr inbounds nuw i8, ptr %i.agj, i64 300
  %i.ahl = load i32, ptr %i.ahk, align 4, !tbaa !168
  %i.ahm = getelementptr inbounds nuw i8, ptr %i.agj, i64 296
  %i.ahn = load i32, ptr %i.ahm, align 8, !tbaa !65
  %i.aho = icmp sgt i32 %i.ahl, %i.ahn
  %i.ahp = icmp slt i32 %i.agp, 3
  %or.cond66 = select i1 %i.aho, i1 true, i1 %i.ahp
  %i.ahq = icmp slt i32 %i.agl, 3
  %or.cond68 = select i1 %or.cond66, i1 true, i1 %i.ahq
  br i1 %or.cond68, label %bb.ho, label %bb.hp

bb.ho:                                            ; preds = %bb.hn, %bb.hm, %bb.hl
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2181

bb.hp:                                            ; preds = %bb.hn
  %i.ahr = trunc nuw nsw i64 %indvars.iv2612 to i32 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.75, i32 noundef %i.ahr, i32 noundef %i.agl, i32 noundef %i.agp, i32 noundef %i.ags) #11
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.agj, i64 40 ; 8 uses
  %i.aht = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %i.ahu = getelementptr inbounds nuw i8, ptr %i.agj, i64 56
  %i.ahv = load ptr, ptr %i.ahu, align 8, !tbaa !63
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.agj, i64 176 ; 2 uses
  %i.ahx = load ptr, ptr %i.ahw, align 8, !tbaa !63
  %i.ahy = load ptr, ptr %i.agd, align 8, !tbaa !184
  %i.ahz = sext i32 %i.agn to i64                 ; 5 uses
  %i.aia = zext nneg i32 %i.agp to i64
  %sext1976 = shl i64 %i.agr, 32
  %i.aib = ashr exact i64 %sext1976, 32           ; 3 uses
  tail call void %i.ahy(ptr noundef %i.ahx, i64 noundef %i.ahz, ptr noundef %i.aht, i64 noundef %i.aia, ptr noundef %i.ahv, i64 noundef %i.aib, i32 noundef %i.agp, i32 noundef %i.agl) #11
  %i.aic = getelementptr inbounds nuw i8, ptr %i.agj, i64 48
  %i.aid = load ptr, ptr %i.aic, align 8, !tbaa !63
  %i.aie = getelementptr inbounds nuw i8, ptr %i.agj, i64 64
  %i.aif = load ptr, ptr %i.aie, align 8, !tbaa !63
  %i.aig = getelementptr inbounds nuw i8, ptr %i.agj, i64 184 ; 2 uses
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !63
  %i.aii = load ptr, ptr %i.agd, align 8, !tbaa !184
  tail call void %i.aii(ptr noundef %i.aih, i64 noundef %i.ahz, ptr noundef %i.aid, i64 noundef %i.aib, ptr noundef %i.aif, i64 noundef %i.aib, i32 noundef %i.agp, i32 noundef %i.agl) #11
  %i.aij = load ptr, ptr %i.ahw, align 8, !tbaa !63
  %i.aik = load ptr, ptr %i.aig, align 8, !tbaa !63
  %i.ail = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %i.aim = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.ain = shl nuw nsw i32 %i.agl, 1              ; 2 uses
  tail call void %i.aim(ptr noundef %i.ail, i64 noundef %i.ahz, ptr noundef %i.aij, i64 noundef %i.ahz, ptr noundef %i.aik, i64 noundef %i.ahz, i32 noundef %i.agp, i32 noundef %i.ain) #11
  %i.aio = load i32, ptr %i.h, align 8, !tbaa !50
  %i.aip = icmp eq i32 %i.aio, 12
  br i1 %i.aip, label %.preheader2253.preheader, label %.loopexit2256

.preheader2253.preheader:                         ; preds = %bb.hp
  %i.aiq = shl nuw i32 %i.agp, 1
  %i.air = shl nuw nsw i32 %i.agn, 1
  %i.ais = zext nneg i32 %i.air to i64
  %i.ait = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %wide.trip.count2602 = zext i32 %i.aiq to i64   ; 6 uses
  %min.iters.check3191 = icmp ult i32 %i.agp, 8
  %i.aiu = and i64 %wide.trip.count2602, 12
  %n.vec3193 = and i64 %wide.trip.count2602, 4294967280 ; 4 uses
  %cmp.n3200 = icmp eq i64 %n.vec3193, %wide.trip.count2602
  %min.epilog.iters.check3205 = icmp eq i64 %i.aiu, 0
  %n.vec3207 = and i64 %wide.trip.count2602, 4294967292 ; 3 uses
  %cmp.n3213 = icmp eq i64 %n.vec3207, %wide.trip.count2602
  br label %vector.main.loop.iter.check3190

vector.main.loop.iter.check3190:                  ; preds = %._crit_edge2434, %.preheader2253.preheader
  %.017802436 = phi i32 [ %i.aje, %._crit_edge2434 ], [ 0, %.preheader2253.preheader ]
  %.017852435 = phi ptr [ %i.ajd, %._crit_edge2434 ], [ %i.ait, %.preheader2253.preheader ] ; 4 uses
  br i1 %min.iters.check3191, label %vec.epilog.ph3206, label %vector.body3194

vector.body3194:                                  ; preds = %vector.main.loop.iter.check3190, %vector.body3194
  %index3195 = phi i64 [ %index.next3198, %vector.body3194 ], [ 0, %vector.main.loop.iter.check3190 ] ; 2 uses
  %i.aiv = getelementptr inbounds nuw [2 x i8], ptr %.017852435, i64 %index3195 ; 3 uses
  %i.aiw = getelementptr inbounds nuw i8, ptr %i.aiv, i64 16 ; 2 uses
  %wide.load3196 = load <8 x i16>, ptr %i.aiv, align 2, !tbaa !66
  %wide.load3197 = load <8 x i16>, ptr %i.aiw, align 2, !tbaa !66
  %i.aix = shl <8 x i16> %wide.load3196, splat (i16 2)
  %i.aiy = shl <8 x i16> %wide.load3197, splat (i16 2)
  store <8 x i16> %i.aix, ptr %i.aiv, align 2, !tbaa !66
  store <8 x i16> %i.aiy, ptr %i.aiw, align 2, !tbaa !66
  %index.next3198 = add nuw i64 %index3195, 16    ; 2 uses
  %i.aiz = icmp eq i64 %index.next3198, %n.vec3193
  br i1 %i.aiz, label %middle.block3199, label %vector.body3194, !llvm.loop !98

middle.block3199:                                 ; preds = %vector.body3194
  br i1 %cmp.n3200, label %._crit_edge2434, label %vec.epilog.iter.check3204

vec.epilog.iter.check3204:                        ; preds = %middle.block3199
  br i1 %min.epilog.iters.check3205, label %vec.epilog.scalar.ph3203.preheader, label %vec.epilog.ph3206, !prof !178

vec.epilog.ph3206:                                ; preds = %vector.main.loop.iter.check3190, %vec.epilog.iter.check3204
  %vec.epilog.resume.val3201 = phi i64 [ %n.vec3193, %vec.epilog.iter.check3204 ], [ 0, %vector.main.loop.iter.check3190 ]
  br label %vec.epilog.vector.body3208

vec.epilog.vector.body3208:                       ; preds = %vec.epilog.vector.body3208, %vec.epilog.ph3206
  %index3209 = phi i64 [ %vec.epilog.resume.val3201, %vec.epilog.ph3206 ], [ %index.next3211, %vec.epilog.vector.body3208 ] ; 2 uses
  %i.aja = getelementptr inbounds nuw [2 x i8], ptr %.017852435, i64 %index3209 ; 2 uses
  %wide.load3210 = load <4 x i16>, ptr %i.aja, align 2, !tbaa !66
  %i.ajb = shl <4 x i16> %wide.load3210, splat (i16 2)
  store <4 x i16> %i.ajb, ptr %i.aja, align 2, !tbaa !66
  %index.next3211 = add nuw i64 %index3209, 4     ; 2 uses
  %i.ajc = icmp eq i64 %index.next3211, %n.vec3207
  br i1 %i.ajc, label %vec.epilog.middle.block3212, label %vec.epilog.vector.body3208, !llvm.loop !99

vec.epilog.middle.block3212:                      ; preds = %vec.epilog.vector.body3208
  br i1 %cmp.n3213, label %._crit_edge2434, label %vec.epilog.scalar.ph3203.preheader

vec.epilog.scalar.ph3203.preheader:               ; preds = %vec.epilog.iter.check3204, %vec.epilog.middle.block3212
  %indvars.iv2599.ph = phi i64 [ %n.vec3193, %vec.epilog.iter.check3204 ], [ %n.vec3207, %vec.epilog.middle.block3212 ]
  br label %vec.epilog.scalar.ph3203

._crit_edge2434:                                  ; preds = %vec.epilog.scalar.ph3203, %vec.epilog.middle.block3212, %middle.block3199
  %i.ajd = getelementptr inbounds nuw [2 x i8], ptr %.017852435, i64 %i.ais
  %i.aje = add nuw nsw i32 %.017802436, 1         ; 2 uses
  %exitcond2604.not = icmp eq i32 %i.aje, %i.ain
  br i1 %exitcond2604.not, label %.loopexit2256, label %vector.main.loop.iter.check3190, !llvm.loop !100

vec.epilog.scalar.ph3203:                         ; preds = %vec.epilog.scalar.ph3203.preheader, %vec.epilog.scalar.ph3203
  %indvars.iv2599 = phi i64 [ %indvars.iv.next2600, %vec.epilog.scalar.ph3203 ], [ %indvars.iv2599.ph, %vec.epilog.scalar.ph3203.preheader ] ; 2 uses
  %i.ajf = getelementptr inbounds nuw [2 x i8], ptr %.017852435, i64 %indvars.iv2599 ; 2 uses
  %i.ajg = load i16, ptr %i.ajf, align 2, !tbaa !66
  %i.ajh = shl i16 %i.ajg, 2
  store i16 %i.ajh, ptr %i.ajf, align 2, !tbaa !66
  %indvars.iv.next2600 = add nuw nsw i64 %indvars.iv2599, 1 ; 2 uses
  %exitcond2603.not = icmp eq i64 %indvars.iv.next2600, %wide.trip.count2602
  br i1 %exitcond2603.not, label %._crit_edge2434, label %vec.epilog.scalar.ph3203, !llvm.loop !101

.loopexit2256:                                    ; preds = %._crit_edge2434, %bb.hp
  %i.aji = getelementptr inbounds nuw i8, ptr %i.agj, i64 416
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.agj, i64 436
  %i.ajk = load i32, ptr %i.ajj, align 4, !tbaa !170 ; 6 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %i.agj, i64 424
  %i.ajm = load i32, ptr %i.ajl, align 8, !tbaa !65 ; 3 uses
  %i.ajn = getelementptr inbounds nuw i8, ptr %i.agj, i64 428
  %i.ajo = load i32, ptr %i.ajn, align 4, !tbaa !168 ; 8 uses
  %i.ajp = load i64, ptr %i.aji, align 8, !tbaa !169 ; 2 uses
  %i.ajq = trunc i64 %i.ajp to i32                ; 2 uses
  %i.ajr = getelementptr inbounds nuw i8, ptr %i.agj, i64 432
  %i.ajs = load i32, ptr %i.ajr, align 8, !tbaa !64
  %i.ajt = icmp sgt i32 %i.ajk, %i.ajs
  br i1 %i.ajt, label %bb.hs, label %bb.hq
end_hunk_1
begin_hunk_2_@cfhd_decode:bb.a
  %i.aou = icmp slt i32 %i.aos, %i.aot
  br i1 %i.aou, label %bb.ie, label %.loopexit2254, !llvm.loop !108

bb.if:                                            ; preds = %bb.hx
  %i.aov = load i32, ptr %i.agi, align 4, !tbaa !189
  %i.aow = lshr i32 %i.aov, 3
  %.lobit = and i32 %i.aow, 1
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 48, ptr noundef nonnull @.str.78, i32 noundef %.lobit) #11
  %i.aox = load i32, ptr %i.agi, align 4, !tbaa !189
  %i.aoy = or i32 %i.aox, 8
  store i32 %i.aoy, ptr %i.agi, align 4, !tbaa !189
  %i.aoz = load ptr, ptr %i.ahs, align 8, !tbaa !63
  %i.apa = getelementptr inbounds nuw i8, ptr %i.agj, i64 96
  %i.apb = load ptr, ptr %i.apa, align 8, !tbaa !63
  %i.apc = getelementptr inbounds nuw i8, ptr %i.agj, i64 224 ; 2 uses
  %i.apd = load ptr, ptr %i.apc, align 8, !tbaa !63
  %i.ape = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.apf = sext i32 %i.alj to i64                 ; 3 uses
  %sext1979 = shl i64 %i.alm, 32
  %i.apg = ashr exact i64 %sext1979, 32           ; 3 uses
  tail call void %i.ape(ptr noundef %i.apd, i64 noundef %i.apf, ptr noundef %i.aoz, i64 noundef %i.apf, ptr noundef %i.apb, i64 noundef %i.apg, i32 noundef %i.all, i32 noundef %i.alh) #11
  %i.aph = getelementptr inbounds nuw i8, ptr %i.agj, i64 104
  %i.api = load ptr, ptr %i.aph, align 8, !tbaa !63
  %i.apj = getelementptr inbounds nuw i8, ptr %i.agj, i64 112
  %i.apk = load ptr, ptr %i.apj, align 8, !tbaa !63
  %i.apl = getelementptr inbounds nuw i8, ptr %i.agj, i64 232 ; 2 uses
  %i.apm = load ptr, ptr %i.apl, align 8, !tbaa !63
  %i.apn = load ptr, ptr %i.c, align 8, !tbaa !185
  tail call void %i.apn(ptr noundef %i.apm, i64 noundef %i.apf, ptr noundef %i.api, i64 noundef %i.apg, ptr noundef %i.apk, i64 noundef %i.apg, i32 noundef %i.all, i32 noundef %i.alh) #11
  %i.apo = sext i32 %.01792 to i64                ; 3 uses
  %i.app = getelementptr inbounds [1024 x i8], ptr %i.agb, i64 %i.apo
  %i.apq = getelementptr inbounds nuw i8, ptr %i.app, i64 4
  %i.apr = load i32, ptr %i.apq, align 4, !tbaa !71 ; 2 uses
  %i.aps = sdiv i32 %i.apr, 2                     ; 2 uses
  %i.apt = icmp sgt i32 %i.apr, 1
  br i1 %i.apt, label %.lr.ph2454, label %.loopexit2254

.lr.ph2454:                                       ; preds = %bb.if
  %i.apu = load ptr, ptr %i.apl, align 8, !tbaa !63 ; 4 uses
  %i.apv = load ptr, ptr %i.apc, align 8, !tbaa !63 ; 4 uses
  %i.apw = getelementptr inbounds [8 x i8], ptr %1, i64 %i.apo
  %i.apx = load ptr, ptr %i.apw, align 8, !tbaa !53 ; 7 uses
  %i.apy = getelementptr inbounds [4 x i8], ptr %i.agc, i64 %i.apo
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !49 ; 3 uses
  %i.aqa = sdiv i32 %i.apz, 2
  %i.aqb = sext i32 %i.aqa to i64                 ; 2 uses
  %wide.trip.count.i2049 = zext nneg i32 %i.ama to i64 ; 4 uses
  %i.aqc = shl i32 %i.alj, 1
  %i.aqd = zext i32 %i.aqc to i64                 ; 3 uses
  %i.aqe = sext i32 %i.apz to i64                 ; 2 uses
  %i.aqf = shl nsw i64 %i.aqe, 1
  %i.aqg = add nsw i32 %i.aps, -1
  %i.aqh = zext i32 %i.aqg to i64                 ; 2 uses
  %i.aqi = mul i64 %i.aqf, %i.aqh                 ; 2 uses
  %i.aqj = shl nuw nsw i64 %wide.trip.count.i2049, 1 ; 3 uses
  %i.aqk = getelementptr i8, ptr %i.apx, i64 %i.aqi
  %scevgep3110 = getelementptr i8, ptr %i.aqk, i64 %i.aqj ; 3 uses
  %i.aql = shl nsw i64 %i.aqb, 1                  ; 2 uses
  %scevgep3111 = getelementptr i8, ptr %i.apx, i64 %i.aql ; 3 uses
  %i.aqm = getelementptr i8, ptr %i.apx, i64 %i.aqi
  %i.aqn = getelementptr i8, ptr %i.aqm, i64 %i.aql
  %scevgep3112 = getelementptr i8, ptr %i.aqn, i64 %i.aqj ; 3 uses
  %i.aqo = shl nuw nsw i64 %i.aqd, 1
  %i.aqp = mul i64 %i.aqo, %i.aqh
  %i.aqq = add i64 %i.aqp, %i.aqj                 ; 2 uses
  %scevgep3113 = getelementptr i8, ptr %i.apv, i64 %i.aqq ; 2 uses
  %scevgep3114 = getelementptr i8, ptr %i.apu, i64 %i.aqq ; 2 uses
  %min.iters.check3141 = icmp ult i32 %i.all, 4
  %bound03115 = icmp ult ptr %i.apx, %scevgep3112
  %bound13116 = icmp ult ptr %scevgep3111, %scevgep3110
  %found.conflict3117 = and i1 %bound03115, %bound13116
  %bound03120 = icmp ult ptr %i.apx, %scevgep3113
  %bound13121 = icmp ult ptr %i.apv, %scevgep3110
  %found.conflict3122 = and i1 %bound03120, %bound13121
  %stride.check3123 = icmp slt i32 %i.apz, 0
  %i.aqr = or i1 %found.conflict3122, %stride.check3123
  %conflict.rdx3124 = or i1 %found.conflict3117, %i.aqr
  %bound03125 = icmp ult ptr %i.apx, %scevgep3114
  %bound13126 = icmp ult ptr %i.apu, %scevgep3110
  %found.conflict3127 = and i1 %bound03125, %bound13126
  %conflict.rdx3129 = or i1 %found.conflict3127, %conflict.rdx3124
  %bound03130 = icmp ult ptr %scevgep3111, %scevgep3113
  %bound13131 = icmp ult ptr %i.apv, %scevgep3112
  %found.conflict3132 = and i1 %bound03130, %bound13131
  %conflict.rdx3134 = or i1 %found.conflict3132, %conflict.rdx3129
  %bound03135 = icmp ult ptr %scevgep3111, %scevgep3114
  %bound13136 = icmp ult ptr %i.apu, %scevgep3112
  %found.conflict3137 = and i1 %bound03135, %bound13136
  %conflict.rdx3139 = or i1 %found.conflict3137, %conflict.rdx3134
  %n.vec3143 = and i64 %wide.trip.count.i2049, 2147483640 ; 3 uses
  %cmp.n3150 = icmp eq i64 %n.vec3143, %wide.trip.count.i2049
  br label %bb.ig

bb.ig:                                            ; preds = %.lr.ph2454, %interlaced_vertical_filter.exit
  %.017752452 = phi i32 [ 0, %.lr.ph2454 ], [ %i.asf, %interlaced_vertical_filter.exit ]
  %.317842451 = phi ptr [ %i.apx, %.lr.ph2454 ], [ %i.ase, %interlaced_vertical_filter.exit ] ; 4 uses
  %.117882450 = phi ptr [ %i.apu, %.lr.ph2454 ], [ %i.asd, %interlaced_vertical_filter.exit ] ; 3 uses
  %.117902449 = phi ptr [ %i.apv, %.lr.ph2454 ], [ %i.asc, %interlaced_vertical_filter.exit ] ; 3 uses
  %invariant.gep.i = getelementptr [2 x i8], ptr %.317842451, i64 %i.aqb ; 2 uses
  %brmerge = select i1 %min.iters.check3141, i1 true, i1 %conflict.rdx3139
  br i1 %brmerge, label %scalar.ph3140.preheader, label %vector.body3144

vector.body3144:                                  ; preds = %bb.ig, %vector.body3144
  %index3145 = phi i64 [ %index.next3148, %vector.body3144 ], [ 0, %bb.ig ] ; 5 uses
  %i.aqs = getelementptr inbounds nuw [2 x i8], ptr %.117902449, i64 %index3145
  %wide.load3146 = load <8 x i16>, ptr %i.aqs, align 2, !tbaa !66, !alias.scope !190
  %i.aqt = sext <8 x i16> %wide.load3146 to <8 x i32> ; 2 uses
  %i.aqu = getelementptr inbounds nuw [2 x i8], ptr %.117882450, i64 %index3145
  %wide.load3147 = load <8 x i16>, ptr %i.aqu, align 2, !tbaa !66, !alias.scope !191
  %i.aqv = sext <8 x i16> %wide.load3147 to <8 x i32> ; 2 uses
  %i.aqw = sub nsw <8 x i32> %i.aqt, %i.aqv       ; 2 uses
  %i.aqx = sdiv <8 x i32> %i.aqw, splat (i32 2)   ; 2 uses
  %i.aqy = add nsw <8 x i32> %i.aqv, %i.aqt       ; 2 uses
  %i.aqz = sdiv <8 x i32> %i.aqy, splat (i32 2)   ; 2 uses
  %i.ara = icmp ult <8 x i32> %i.aqx, splat (i32 1024)
  %i.arb = icmp slt <8 x i32> %i.aqw, splat (i32 -1)
  %i.arc = select <8 x i1> %i.arb, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.ard = select <8 x i1> %i.ara, <8 x i32> %i.aqx, <8 x i32> %i.arc
  %i.are = trunc nsw <8 x i32> %i.ard to <8 x i16>
  %i.arf = getelementptr inbounds nuw [2 x i8], ptr %.317842451, i64 %index3145
  store <8 x i16> %i.are, ptr %i.arf, align 2, !tbaa !66, !alias.scope !192, !noalias !193
  %i.arg = icmp ult <8 x i32> %i.aqz, splat (i32 1024)
  %i.arh = icmp slt <8 x i32> %i.aqy, splat (i32 -1)
  %i.ari = select <8 x i1> %i.arh, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.arj = select <8 x i1> %i.arg, <8 x i32> %i.aqz, <8 x i32> %i.ari
  %i.ark = trunc nsw <8 x i32> %i.arj to <8 x i16>
  %i.arl = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %index3145
  store <8 x i16> %i.ark, ptr %i.arl, align 2, !tbaa !66, !alias.scope !194, !noalias !195
  %index.next3148 = add nuw i64 %index3145, 8     ; 2 uses
  %i.arm = icmp eq i64 %index.next3148, %n.vec3143
  br i1 %i.arm, label %middle.block3149, label %vector.body3144, !llvm.loop !114

middle.block3149:                                 ; preds = %vector.body3144
  br i1 %cmp.n3150, label %interlaced_vertical_filter.exit, label %scalar.ph3140.preheader

scalar.ph3140.preheader:                          ; preds = %bb.ig, %middle.block3149
  %indvars.iv.i2050.ph = phi i64 [ %n.vec3143, %middle.block3149 ], [ 0, %bb.ig ]
  br label %scalar.ph3140

scalar.ph3140:                                    ; preds = %scalar.ph3140.preheader, %scalar.ph3140
  %indvars.iv.i2050 = phi i64 [ %indvars.iv.next.i2052, %scalar.ph3140 ], [ %indvars.iv.i2050.ph, %scalar.ph3140.preheader ] ; 5 uses
  %i.arn = getelementptr inbounds nuw [2 x i8], ptr %.117902449, i64 %indvars.iv.i2050
  %i.aro = load i16, ptr %i.arn, align 2, !tbaa !66
  %i.arp = sext i16 %i.aro to i32                 ; 2 uses
  %i.arq = getelementptr inbounds nuw [2 x i8], ptr %.117882450, i64 %indvars.iv.i2050
  %i.arr = load i16, ptr %i.arq, align 2, !tbaa !66
  %i.ars = sext i16 %i.arr to i32                 ; 2 uses
  %i.art = sub nsw i32 %i.arp, %i.ars             ; 2 uses
  %i.aru = sdiv i32 %i.art, 2                     ; 2 uses
  %i.arv = add nsw i32 %i.ars, %i.arp             ; 2 uses
  %i.arw = sdiv i32 %i.arv, 2                     ; 2 uses
  %.not.i17.i = icmp ult i32 %i.aru, 1024
  %isnotneg.inv.i18.i = icmp slt i32 %i.art, -1
  %i.arx = select i1 %isnotneg.inv.i18.i, i32 0, i32 1023
  %.0.i19.i = select i1 %.not.i17.i, i32 %i.aru, i32 %i.arx
  %i.ary = trunc nsw i32 %.0.i19.i to i16
  %i.arz = getelementptr inbounds nuw [2 x i8], ptr %.317842451, i64 %indvars.iv.i2050
  store i16 %i.ary, ptr %i.arz, align 2, !tbaa !66
  %.not.i.i = icmp ult i32 %i.arw, 1024
  %isnotneg.inv.i.i = icmp slt i32 %i.arv, -1
  %i.asa = select i1 %isnotneg.inv.i.i, i32 0, i32 1023
  %.0.i.i2051 = select i1 %.not.i.i, i32 %i.arw, i32 %i.asa
  %i.asb = trunc nsw i32 %.0.i.i2051 to i16
  %gep.i = getelementptr [2 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i2050
  store i16 %i.asb, ptr %gep.i, align 2, !tbaa !66
  %indvars.iv.next.i2052 = add nuw nsw i64 %indvars.iv.i2050, 1 ; 2 uses
  %exitcond.not.i2053 = icmp eq i64 %indvars.iv.next.i2052, %wide.trip.count.i2049
  br i1 %exitcond.not.i2053, label %interlaced_vertical_filter.exit, label %scalar.ph3140, !llvm.loop !115

interlaced_vertical_filter.exit:                  ; preds = %scalar.ph3140, %middle.block3149
  %i.asc = getelementptr inbounds nuw [2 x i8], ptr %.117902449, i64 %i.aqd
  %i.asd = getelementptr inbounds nuw [2 x i8], ptr %.117882450, i64 %i.aqd
  %i.ase = getelementptr inbounds [2 x i8], ptr %.317842451, i64 %i.aqe
  %i.asf = add nuw nsw i32 %.017752452, 1         ; 2 uses
  %exitcond2611.not = icmp eq i32 %i.asf, %i.aps
  br i1 %exitcond2611.not, label %.loopexit2254, label %bb.ig, !llvm.loop !116

.loopexit2254:                                    ; preds = %process_alpha.exit, %interlaced_vertical_filter.exit, %bb.id, %bb.if
  %indvars.iv.next2613 = add nuw nsw i64 %indvars.iv2612, 1 ; 2 uses
  %i.asg = load i32, ptr %i.y, align 8, !tbaa !43 ; 2 uses
  %i.ash = sext i32 %i.asg to i64
  %i.asi = icmp slt i64 %indvars.iv.next2613, %i.ash
  br i1 %i.asi, label %bb.hi, label %.loopexit2719, !llvm.loop !117

bb.ih:                                            ; preds = %._crit_edge2397
  %i.asj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ask = load ptr, ptr %i.asj, align 8, !tbaa !196
  %i.asl = load i32, ptr %i.ask, align 8, !tbaa !203
  %.not1967 = icmp eq i32 %i.asl, 0
  br i1 %.not1967, label %bb.ii, label %bb.ik

bb.ii:                                            ; preds = %bb.ih
  %i.asm = getelementptr inbounds nuw i8, ptr %i.b, i64 42024
  %i.asn = load i32, ptr %i.asm, align 8, !tbaa !172
  %i.aso = icmp eq i32 %i.asn, 1
  br i1 %i.aso, label %bb.ik, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.asp = load i32, ptr %i.q, align 4, !tbaa !160
  %.not1968 = icmp ne i32 %i.asp, 1
  %.not1969 = icmp eq i32 %.01835.lcssa, 0
  %i.asq = and i1 %.not1968, %i.adj
  %or.cond2790 = select i1 %i.asq, i1 %.not1969, i1 false
  br i1 %or.cond2790, label %.lr.ph2431, label %.loopexit2719

bb.ik:                                            ; preds = %bb.ii, %bb.ih
  %.not1969.old = icmp eq i32 %.01835.lcssa, 0
  %or.cond20262427.old = select i1 %i.adj, i1 %.not1969.old, i1 false
  br i1 %or.cond20262427.old, label %.lr.ph2431, label %.loopexit2719

.lr.ph2431:                                       ; preds = %bb.ij, %bb.ik
  %i.asr = getelementptr inbounds nuw i8, ptr %i.b, i64 42128 ; 3 uses
  %i.ass = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 4 uses
  %i.ast = getelementptr inbounds nuw i8, ptr %i.b, i64 46264 ; 10 uses
  %i.asu = getelementptr inbounds nuw i8, ptr %i.b, i64 42052
  %i.asv = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.asw = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.asx = getelementptr inbounds nuw i8, ptr %i.b, i64 46272
  %i.asy = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  br label %bb.il

bb.il:                                            ; preds = %.lr.ph2431, %.loopexit2261
  %indvars.iv2596 = phi i64 [ 0, %.lr.ph2431 ], [ %indvars.iv.next2597, %.loopexit2261 ] ; 8 uses
  %i.asz = getelementptr inbounds nuw [1024 x i8], ptr %i.asr, i64 %indvars.iv2596 ; 51 uses
  %i.ata = getelementptr inbounds nuw i8, ptr %i.asz, i64 276
  %i.atb = load i32, ptr %i.ata, align 4, !tbaa !170 ; 6 uses
  %i.atc = getelementptr inbounds nuw i8, ptr %i.asz, i64 264
  %i.atd = load i32, ptr %i.atc, align 8, !tbaa !65 ; 3 uses
  %i.ate = getelementptr inbounds nuw i8, ptr %i.asz, i64 268
  %i.atf = load i32, ptr %i.ate, align 4, !tbaa !168 ; 9 uses
  %i.atg = getelementptr inbounds nuw i8, ptr %i.asz, i64 288
  %i.ath = load i64, ptr %i.atg, align 8, !tbaa !169 ; 2 uses
  %i.ati = trunc i64 %i.ath to i32                ; 2 uses
  %i.atj = load i32, ptr %i.acp, align 8, !tbaa !56
  %i.atk = icmp eq i32 %i.atj, 145
  br i1 %i.atk, label %bb.im, label %bb.in

bb.im:                                            ; preds = %bb.il
  %i.atl = load i32, ptr %i.ass, align 4, !tbaa !49
  br label %bb.io

bb.in:                                            ; preds = %bb.il
  %i.atm = icmp eq i64 %indvars.iv2596, 1
  %i.atn = icmp eq i64 %indvars.iv2596, 2
  %i.ato = select i1 %i.atn, i64 1, i64 %indvars.iv2596
  %i.atp = select i1 %i.atm, i64 2, i64 %i.ato    ; 2 uses
  %i.atq = getelementptr inbounds nuw [4 x i8], ptr %i.ass, i64 %i.atp
  %i.atr = load i32, ptr %i.atq, align 4, !tbaa !49
  %i.ats = sdiv i32 %i.atr, 2
  br label %bb.io

bb.io:                                            ; preds = %bb.in, %bb.im
  %.01773 = phi i64 [ 0, %bb.im ], [ %i.atp, %bb.in ] ; 6 uses
  %.01760.in = phi i32 [ %i.atl, %bb.im ], [ %i.ats, %bb.in ]
  %.01760 = sext i32 %.01760.in to i64
  %i.att = getelementptr inbounds nuw i8, ptr %i.asz, i64 272
  %i.atu = load i32, ptr %i.att, align 8, !tbaa !64
  %i.atv = icmp sgt i32 %i.atb, %i.atu
  br i1 %i.atv, label %bb.ir, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.atw = icmp sle i32 %i.atf, %i.atd
  %i.atx = icmp ne i32 %i.ati, 0
  %or.cond86 = select i1 %i.atw, i1 %i.atx, i1 false
  br i1 %or.cond86, label %bb.iq, label %bb.ir

bb.iq:                                            ; preds = %bb.ip
  %i.aty = getelementptr inbounds nuw i8, ptr %i.asz, i64 300
  %i.atz = load i32, ptr %i.aty, align 4, !tbaa !168
  %i.aua = getelementptr inbounds nuw i8, ptr %i.asz, i64 296
  %i.aub = load i32, ptr %i.aua, align 8, !tbaa !65
  %i.auc = icmp sgt i32 %i.atz, %i.aub
  %i.aud = icmp slt i32 %i.atf, 3
  %or.cond88 = select i1 %i.auc, i1 true, i1 %i.aud
  %i.aue = icmp slt i32 %i.atb, 3
  %or.cond90 = select i1 %or.cond88, i1 true, i1 %i.aue
  br i1 %or.cond90, label %bb.ir, label %bb.is

bb.ir:                                            ; preds = %bb.iq, %bb.ip, %bb.io
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.74) #11
  br label %.thread2181

bb.is:                                            ; preds = %bb.iq
  %i.auf = trunc nuw nsw i64 %indvars.iv2596 to i32 ; 3 uses
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 48, ptr noundef nonnull @.str.75, i32 noundef %i.auf, i32 noundef %i.atb, i32 noundef %i.atf, i32 noundef %i.ati) #11
  %i.aug = getelementptr inbounds nuw i8, ptr %i.asz, i64 40
  %i.auh = load ptr, ptr %i.aug, align 8, !tbaa !63
  %i.aui = getelementptr inbounds nuw i8, ptr %i.asz, i64 56
  %i.auj = load ptr, ptr %i.aui, align 8, !tbaa !63
  %i.auk = getelementptr inbounds nuw i8, ptr %i.asz, i64 176 ; 2 uses
  %i.aul = load ptr, ptr %i.auk, align 8, !tbaa !63
  %i.aum = load ptr, ptr %i.ast, align 8, !tbaa !184
  %i.aun = sext i32 %i.atd to i64                 ; 5 uses
  %i.auo = zext nneg i32 %i.atf to i64
  %sext = shl i64 %i.ath, 32
  %i.aup = ashr exact i64 %sext, 32               ; 3 uses
  tail call void %i.aum(ptr noundef %i.aul, i64 noundef %i.aun, ptr noundef %i.auh, i64 noundef %i.auo, ptr noundef %i.auj, i64 noundef %i.aup, i32 noundef %i.atf, i32 noundef %i.atb) #11
  %i.auq = getelementptr inbounds nuw i8, ptr %i.asz, i64 48
  %i.aur = load ptr, ptr %i.auq, align 8, !tbaa !63
  %i.aus = getelementptr inbounds nuw i8, ptr %i.asz, i64 64
  %i.aut = load ptr, ptr %i.aus, align 8, !tbaa !63
  %i.auu = getelementptr inbounds nuw i8, ptr %i.asz, i64 184 ; 2 uses
  %i.auv = load ptr, ptr %i.auu, align 8, !tbaa !63
  %i.auw = load ptr, ptr %i.ast, align 8, !tbaa !184
  tail call void %i.auw(ptr noundef %i.auv, i64 noundef %i.aun, ptr noundef %i.aur, i64 noundef %i.aup, ptr noundef %i.aut, i64 noundef %i.aup, i32 noundef %i.atf, i32 noundef %i.atb) #11
  %i.aux = load ptr, ptr %i.auk, align 8, !tbaa !63
  %i.auy = load ptr, ptr %i.auu, align 8, !tbaa !63
  %i.auz = getelementptr inbounds nuw i8, ptr %i.asz, i64 232 ; 10 uses
  %i.ava = load ptr, ptr %i.auz, align 8, !tbaa !63
  %i.avb = load ptr, ptr %i.c, align 8, !tbaa !185
  %i.avc = shl nuw nsw i32 %i.atb, 1              ; 2 uses
  tail call void %i.avb(ptr noundef %i.ava, i64 noundef %i.aun, ptr noundef %i.aux, i64 noundef %i.aun, ptr noundef %i.auy, i64 noundef %i.aun, i32 noundef %i.atf, i32 noundef %i.avc) #11
  %i.avd = load i32, ptr %i.h, align 8, !tbaa !50
  %i.ave = icmp eq i32 %i.avd, 12
  br i1 %i.ave, label %.preheader2260.preheader, label %.loopexit2263

.preheader2260.preheader:                         ; preds = %bb.is
  %i.avf = shl nuw i32 %i.atf, 1
  %i.avg = shl nuw nsw i32 %i.atd, 1
  %i.avh = zext nneg i32 %i.avg to i64
  %i.avi = load ptr, ptr %i.auz, align 8, !tbaa !63
  %wide.trip.count2585 = zext i32 %i.avf to i64   ; 6 uses
  %min.iters.check3085 = icmp ult i32 %i.atf, 8
  %i.avj = and i64 %wide.trip.count2585, 12
  %n.vec3087 = and i64 %wide.trip.count2585, 4294967280 ; 4 uses
  %cmp.n3094 = icmp eq i64 %n.vec3087, %wide.trip.count2585
  %min.epilog.iters.check3099 = icmp eq i64 %i.avj, 0
  %n.vec3101 = and i64 %wide.trip.count2585, 4294967292 ; 3 uses
  %cmp.n3107 = icmp eq i64 %n.vec3101, %wide.trip.count2585
  br label %vector.main.loop.iter.check3084

vector.main.loop.iter.check3084:                  ; preds = %._crit_edge2400, %.preheader2260.preheader
  %.017592402 = phi i32 [ %i.avt, %._crit_edge2400 ], [ 0, %.preheader2260.preheader ]
  %.017652401 = phi ptr [ %i.avs, %._crit_edge2400 ], [ %i.avi, %.preheader2260.preheader ] ; 4 uses
  br i1 %min.iters.check3085, label %vec.epilog.ph3100, label %vector.body3088

vector.body3088:                                  ; preds = %vector.main.loop.iter.check3084, %vector.body3088
  %index3089 = phi i64 [ %index.next3092, %vector.body3088 ], [ 0, %vector.main.loop.iter.check3084 ] ; 2 uses
  %i.avk = getelementptr inbounds nuw [2 x i8], ptr %.017652401, i64 %index3089 ; 3 uses
  %i.avl = getelementptr inbounds nuw i8, ptr %i.avk, i64 16 ; 2 uses
  %wide.load3090 = load <8 x i16>, ptr %i.avk, align 2, !tbaa !66
  %wide.load3091 = load <8 x i16>, ptr %i.avl, align 2, !tbaa !66
  %i.avm = shl <8 x i16> %wide.load3090, splat (i16 2)
  %i.avn = shl <8 x i16> %wide.load3091, splat (i16 2)
  store <8 x i16> %i.avm, ptr %i.avk, align 2, !tbaa !66
  store <8 x i16> %i.avn, ptr %i.avl, align 2, !tbaa !66
  %index.next3092 = add nuw i64 %index3089, 16    ; 2 uses
  %i.avo = icmp eq i64 %index.next3092, %n.vec3087
  br i1 %i.avo, label %middle.block3093, label %vector.body3088, !llvm.loop !118

middle.block3093:                                 ; preds = %vector.body3088
  br i1 %cmp.n3094, label %._crit_edge2400, label %vec.epilog.iter.check3098

vec.epilog.iter.check3098:                        ; preds = %middle.block3093
  br i1 %min.epilog.iters.check3099, label %vec.epilog.scalar.ph3097.preheader, label %vec.epilog.ph3100, !prof !178

vec.epilog.ph3100:                                ; preds = %vector.main.loop.iter.check3084, %vec.epilog.iter.check3098
  %vec.epilog.resume.val3095 = phi i64 [ %n.vec3087, %vec.epilog.iter.check3098 ], [ 0, %vector.main.loop.iter.check3084 ]
  br label %vec.epilog.vector.body3102

vec.epilog.vector.body3102:                       ; preds = %vec.epilog.vector.body3102, %vec.epilog.ph3100
  %index3103 = phi i64 [ %vec.epilog.resume.val3095, %vec.epilog.ph3100 ], [ %index.next3105, %vec.epilog.vector.body3102 ] ; 2 uses
  %i.avp = getelementptr inbounds nuw [2 x i8], ptr %.017652401, i64 %index3103 ; 2 uses
  %wide.load3104 = load <4 x i16>, ptr %i.avp, align 2, !tbaa !66
  %i.avq = shl <4 x i16> %wide.load3104, splat (i16 2)
  store <4 x i16> %i.avq, ptr %i.avp, align 2, !tbaa !66
  %index.next3105 = add nuw i64 %index3103, 4     ; 2 uses
  %i.avr = icmp eq i64 %index.next3105, %n.vec3101
  br i1 %i.avr, label %vec.epilog.middle.block3106, label %vec.epilog.vector.body3102, !llvm.loop !119

vec.epilog.middle.block3106:                      ; preds = %vec.epilog.vector.body3102
  br i1 %cmp.n3107, label %._crit_edge2400, label %vec.epilog.scalar.ph3097.preheader

vec.epilog.scalar.ph3097.preheader:               ; preds = %vec.epilog.iter.check3098, %vec.epilog.middle.block3106
  %indvars.iv2582.ph = phi i64 [ %n.vec3087, %vec.epilog.iter.check3098 ], [ %n.vec3101, %vec.epilog.middle.block3106 ]
  br label %vec.epilog.scalar.ph3097

._crit_edge2400:                                  ; preds = %vec.epilog.scalar.ph3097, %vec.epilog.middle.block3106, %middle.block3093
  %i.avs = getelementptr inbounds nuw [2 x i8], ptr %.017652401, i64 %i.avh
  %i.avt = add nuw nsw i32 %.017592402, 1         ; 2 uses
  %exitcond2587.not = icmp eq i32 %i.avt, %i.avc
  br i1 %exitcond2587.not, label %.loopexit2263, label %vector.main.loop.iter.check3084, !llvm.loop !120

vec.epilog.scalar.ph3097:                         ; preds = %vec.epilog.scalar.ph3097.preheader, %vec.epilog.scalar.ph3097
  %indvars.iv2582 = phi i64 [ %indvars.iv.next2583, %vec.epilog.scalar.ph3097 ], [ %indvars.iv2582.ph, %vec.epilog.scalar.ph3097.preheader ] ; 2 uses
  %i.avu = getelementptr inbounds nuw [2 x i8], ptr %.017652401, i64 %indvars.iv2582 ; 2 uses
  %i.avv = load i16, ptr %i.avu, align 2, !tbaa !66
  %i.avw = shl i16 %i.avv, 2
  store i16 %i.avw, ptr %i.avu, align 2, !tbaa !66
  %indvars.iv.next2583 = add nuw nsw i64 %indvars.iv2582, 1 ; 2 uses
  %exitcond2586.not = icmp eq i64 %indvars.iv.next2583, %wide.trip.count2585
  br i1 %exitcond2586.not, label %._crit_edge2400, label %vec.epilog.scalar.ph3097, !llvm.loop !121

.loopexit2263:                                    ; preds = %._crit_edge2400, %bb.is
  %i.avx = getelementptr inbounds nuw i8, ptr %i.asz, i64 416
  %i.avy = getelementptr inbounds nuw i8, ptr %i.asz, i64 436
  %i.avz = load i32, ptr %i.avy, align 4, !tbaa !170 ; 8 uses
  %i.awa = getelementptr inbounds nuw i8, ptr %i.asz, i64 424
  %i.awb = load i32, ptr %i.awa, align 8, !tbaa !65 ; 3 uses
  %i.awc = getelementptr inbounds nuw i8, ptr %i.asz, i64 428
  %i.awd = load i32, ptr %i.awc, align 4, !tbaa !168 ; 11 uses
  %i.awe = load i64, ptr %i.avx, align 8, !tbaa !169 ; 2 uses
  %i.awf = trunc i64 %i.awe to i32                ; 2 uses
  %i.awg = getelementptr inbounds nuw i8, ptr %i.asz, i64 432
  %i.awh = load i32, ptr %i.awg, align 8, !tbaa !64
  %i.awi = icmp sgt i32 %i.avz, %i.awh
  br i1 %i.awi, label %bb.iv, label %bb.it

end_hunk_2
begin_hunk_3_@cfhd_decode:bb.a
  %spec.select2029 = getelementptr inbounds nuw i8, ptr %i.biz, i64 %spec.select2029.idx
  %i.bjk = ashr i32 %i.big, 1
  %i.bjl = sext i32 %i.bjk to i64
  %.1.ph.idx = select i1 %i.bji, i64 %i.bjl, i64 0
  %.1.ph = getelementptr inbounds [2 x i8], ptr %spec.select2029, i64 %.1.ph.idx
  %i.bjm = load i32, ptr %i.bht, align 8, !tbaa !187
  %i.bjn = sdiv i32 %i.bjm, 2
  %i.bjo = icmp sgt i32 %i.biu, %i.bjn
  br i1 %i.bjo, label %.thread2181, label %bb.jx

bb.jx:                                            ; preds = %bb.ju, %bb.jw
  %.12228 = phi ptr [ %.1.ph, %bb.jw ], [ %i.biz, %bb.ju ]
  %i.bjp = getelementptr inbounds nuw [1024 x i8], ptr %i.bhq, i64 %.01745
  %i.bjq = getelementptr inbounds nuw i8, ptr %i.bjp, i64 4 ; 2 uses
  %i.bjr = load i32, ptr %i.bjq, align 4, !tbaa !71
  %i.bjs = icmp sgt i32 %i.bjr, 0
  br i1 %i.bjs, label %.lr.ph2464, label %.loopexit

.lr.ph2464:                                       ; preds = %bb.jx
  %i.bjt = sext i32 %i.bil to i64                 ; 2 uses
  br label %bb.jy

bb.jy:                                            ; preds = %.lr.ph2464, %bb.jy
  %.017442462 = phi i32 [ 0, %.lr.ph2464 ], [ %i.bjz, %bb.jy ]
  %.22461 = phi ptr [ %.12228, %.lr.ph2464 ], [ %i.bjy, %bb.jy ] ; 2 uses
  %.017492460 = phi ptr [ %i.bjd, %.lr.ph2464 ], [ %i.bjx, %bb.jy ] ; 2 uses
  %.017512459 = phi ptr [ %i.bjb, %.lr.ph2464 ], [ %i.bjw, %bb.jy ] ; 2 uses
  %i.bju = load ptr, ptr %i.bhu, align 8, !tbaa !188
  %i.bjv = load i32, ptr %i.h, align 8, !tbaa !50
  tail call void %i.bju(ptr noundef %.22461, ptr noundef %.017512459, ptr noundef %.017492460, i32 noundef %i.bin, i32 noundef %i.bjv) #11
  %i.bjw = getelementptr inbounds [2 x i8], ptr %.017512459, i64 %i.bjt
  %i.bjx = getelementptr inbounds [2 x i8], ptr %.017492460, i64 %i.bjt
  %i.bjy = getelementptr inbounds [2 x i8], ptr %.22461, i64 %.01747
  %i.bjz = add nuw nsw i32 %.017442462, 1         ; 2 uses
  %i.bka = load i32, ptr %i.bjq, align 4, !tbaa !71
  %i.bkb = icmp slt i32 %i.bjz, %i.bka
  br i1 %i.bkb, label %bb.jy, label %.loopexit.loopexit2483, !llvm.loop !142

bb.jz:                                            ; preds = %bb.jt
  %i.bkc = getelementptr inbounds nuw [1024 x i8], ptr %i.bhq, i64 %.01745
  %i.bkd = getelementptr inbounds nuw i8, ptr %i.bkc, i64 4
  %i.bke = load i32, ptr %i.bkd, align 4, !tbaa !71 ; 2 uses
  %i.bkf = sdiv i32 %i.bke, 2                     ; 2 uses
  %i.bkg = icmp sgt i32 %i.bke, 1
  br i1 %i.bkg, label %.lr.ph2470, label %.loopexit

.lr.ph2470:                                       ; preds = %bb.jz
  %i.bkh = getelementptr inbounds nuw i8, ptr %i.bih, i64 248
  %i.bki = load ptr, ptr %i.bkh, align 8, !tbaa !63 ; 4 uses
  %i.bkj = getelementptr inbounds nuw i8, ptr %i.bih, i64 240
  %i.bkk = load ptr, ptr %i.bkj, align 8, !tbaa !63 ; 4 uses
  %i.bkl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.01745
  %i.bkm = load ptr, ptr %i.bkl, align 8, !tbaa !53 ; 7 uses
  %i.bkn = sdiv i32 %i.big, 2
  %i.bko = sext i32 %i.bkn to i64                 ; 2 uses
  %wide.trip.count.i2071 = zext nneg i32 %i.biu to i64 ; 4 uses
  %i.bkp = shl i32 %i.bil, 1
  %i.bkq = zext i32 %i.bkp to i64                 ; 3 uses
  %i.bkr = sext i32 %i.big to i64                 ; 2 uses
  %i.bks = shl nsw i64 %i.bkr, 1
  %i.bkt = add nsw i32 %i.bkf, -1
  %i.bku = zext i32 %i.bkt to i64                 ; 2 uses
  %i.bkv = mul i64 %i.bks, %i.bku                 ; 2 uses
  %i.bkw = shl nuw nsw i64 %wide.trip.count.i2071, 1 ; 3 uses
  %i.bkx = getelementptr i8, ptr %i.bkm, i64 %i.bkv
  %scevgep3216 = getelementptr i8, ptr %i.bkx, i64 %i.bkw ; 3 uses
  %i.bky = shl nsw i64 %i.bko, 1                  ; 2 uses
  %scevgep3217 = getelementptr i8, ptr %i.bkm, i64 %i.bky ; 3 uses
  %i.bkz = getelementptr i8, ptr %i.bkm, i64 %i.bkv
  %i.bla = getelementptr i8, ptr %i.bkz, i64 %i.bky
  %scevgep3218 = getelementptr i8, ptr %i.bla, i64 %i.bkw ; 3 uses
  %i.blb = shl nuw nsw i64 %i.bkq, 1
  %i.blc = mul i64 %i.blb, %i.bku
  %i.bld = add i64 %i.blc, %i.bkw                 ; 2 uses
  %scevgep3219 = getelementptr i8, ptr %i.bkk, i64 %i.bld ; 2 uses
  %scevgep3220 = getelementptr i8, ptr %i.bki, i64 %i.bld ; 2 uses
  %min.iters.check3247 = icmp ult i32 %i.bin, 4
  %bound03221 = icmp ult ptr %i.bkm, %scevgep3218
  %bound13222 = icmp ult ptr %scevgep3217, %scevgep3216
  %found.conflict3223 = and i1 %bound03221, %bound13222
  %bound03226 = icmp ult ptr %i.bkm, %scevgep3219
  %bound13227 = icmp ult ptr %i.bkk, %scevgep3216
  %found.conflict3228 = and i1 %bound03226, %bound13227
  %stride.check3229 = icmp slt i32 %i.big, 0
  %i.ble = or i1 %found.conflict3228, %stride.check3229
  %conflict.rdx3230 = or i1 %found.conflict3223, %i.ble
  %bound03231 = icmp ult ptr %i.bkm, %scevgep3220
  %bound13232 = icmp ult ptr %i.bki, %scevgep3216
  %found.conflict3233 = and i1 %bound03231, %bound13232
  %conflict.rdx3235 = or i1 %found.conflict3233, %conflict.rdx3230
  %bound03236 = icmp ult ptr %scevgep3217, %scevgep3219
  %bound13237 = icmp ult ptr %i.bkk, %scevgep3218
  %found.conflict3238 = and i1 %bound03236, %bound13237
  %conflict.rdx3240 = or i1 %found.conflict3238, %conflict.rdx3235
  %bound03241 = icmp ult ptr %scevgep3217, %scevgep3220
  %bound13242 = icmp ult ptr %i.bki, %scevgep3218
  %found.conflict3243 = and i1 %bound03241, %bound13242
  %conflict.rdx3245 = or i1 %found.conflict3243, %conflict.rdx3240
  %n.vec3249 = and i64 %wide.trip.count.i2071, 2147483640 ; 3 uses
  %cmp.n3256 = icmp eq i64 %n.vec3249, %wide.trip.count.i2071
  br label %bb.ka

bb.ka:                                            ; preds = %.lr.ph2470, %interlaced_vertical_filter.exit2083
  %.02468 = phi i32 [ 0, %.lr.ph2470 ], [ %i.bms, %interlaced_vertical_filter.exit2083 ]
  %.32467 = phi ptr [ %i.bkm, %.lr.ph2470 ], [ %i.bmr, %interlaced_vertical_filter.exit2083 ] ; 4 uses
  %.117502466 = phi ptr [ %i.bki, %.lr.ph2470 ], [ %i.bmq, %interlaced_vertical_filter.exit2083 ] ; 3 uses
  %.117522465 = phi ptr [ %i.bkk, %.lr.ph2470 ], [ %i.bmp, %interlaced_vertical_filter.exit2083 ] ; 3 uses
  %invariant.gep.i2072 = getelementptr [2 x i8], ptr %.32467, i64 %i.bko ; 2 uses
  %brmerge3387 = select i1 %min.iters.check3247, i1 true, i1 %conflict.rdx3245
  br i1 %brmerge3387, label %scalar.ph3246.preheader, label %vector.body3250

vector.body3250:                                  ; preds = %bb.ka, %vector.body3250
  %index3251 = phi i64 [ %index.next3254, %vector.body3250 ], [ 0, %bb.ka ] ; 5 uses
  %i.blf = getelementptr inbounds nuw [2 x i8], ptr %.117522465, i64 %index3251
  %wide.load3252 = load <8 x i16>, ptr %i.blf, align 2, !tbaa !66, !alias.scope !212
  %i.blg = sext <8 x i16> %wide.load3252 to <8 x i32> ; 2 uses
  %i.blh = getelementptr inbounds nuw [2 x i8], ptr %.117502466, i64 %index3251
  %wide.load3253 = load <8 x i16>, ptr %i.blh, align 2, !tbaa !66, !alias.scope !213
  %i.bli = sext <8 x i16> %wide.load3253 to <8 x i32> ; 2 uses
  %i.blj = sub nsw <8 x i32> %i.blg, %i.bli       ; 2 uses
  %i.blk = sdiv <8 x i32> %i.blj, splat (i32 2)   ; 2 uses
  %i.bll = add nsw <8 x i32> %i.bli, %i.blg       ; 2 uses
  %i.blm = sdiv <8 x i32> %i.bll, splat (i32 2)   ; 2 uses
  %i.bln = icmp ult <8 x i32> %i.blk, splat (i32 1024)
  %i.blo = icmp slt <8 x i32> %i.blj, splat (i32 -1)
  %i.blp = select <8 x i1> %i.blo, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.blq = select <8 x i1> %i.bln, <8 x i32> %i.blk, <8 x i32> %i.blp
  %i.blr = trunc nsw <8 x i32> %i.blq to <8 x i16>
  %i.bls = getelementptr inbounds nuw [2 x i8], ptr %.32467, i64 %index3251
  store <8 x i16> %i.blr, ptr %i.bls, align 2, !tbaa !66, !alias.scope !214, !noalias !215
  %i.blt = icmp ult <8 x i32> %i.blm, splat (i32 1024)
  %i.blu = icmp slt <8 x i32> %i.bll, splat (i32 -1)
  %i.blv = select <8 x i1> %i.blu, <8 x i32> zeroinitializer, <8 x i32> splat (i32 1023)
  %i.blw = select <8 x i1> %i.blt, <8 x i32> %i.blm, <8 x i32> %i.blv
  %i.blx = trunc nsw <8 x i32> %i.blw to <8 x i16>
  %i.bly = getelementptr [2 x i8], ptr %invariant.gep.i2072, i64 %index3251
  store <8 x i16> %i.blx, ptr %i.bly, align 2, !tbaa !66, !alias.scope !216, !noalias !217
  %index.next3254 = add nuw i64 %index3251, 8     ; 2 uses
  %i.blz = icmp eq i64 %index.next3254, %n.vec3249
  br i1 %i.blz, label %middle.block3255, label %vector.body3250, !llvm.loop !148

middle.block3255:                                 ; preds = %vector.body3250
  br i1 %cmp.n3256, label %interlaced_vertical_filter.exit2083, label %scalar.ph3246.preheader

scalar.ph3246.preheader:                          ; preds = %bb.ka, %middle.block3255
  %indvars.iv.i2073.ph = phi i64 [ %n.vec3249, %middle.block3255 ], [ 0, %bb.ka ]
  br label %scalar.ph3246

scalar.ph3246:                                    ; preds = %scalar.ph3246.preheader, %scalar.ph3246
  %indvars.iv.i2073 = phi i64 [ %indvars.iv.next.i2081, %scalar.ph3246 ], [ %indvars.iv.i2073.ph, %scalar.ph3246.preheader ] ; 5 uses
  %i.bma = getelementptr inbounds nuw [2 x i8], ptr %.117522465, i64 %indvars.iv.i2073
  %i.bmb = load i16, ptr %i.bma, align 2, !tbaa !66
  %i.bmc = sext i16 %i.bmb to i32                 ; 2 uses
  %i.bmd = getelementptr inbounds nuw [2 x i8], ptr %.117502466, i64 %indvars.iv.i2073
  %i.bme = load i16, ptr %i.bmd, align 2, !tbaa !66
  %i.bmf = sext i16 %i.bme to i32                 ; 2 uses
  %i.bmg = sub nsw i32 %i.bmc, %i.bmf             ; 2 uses
  %i.bmh = sdiv i32 %i.bmg, 2                     ; 2 uses
  %i.bmi = add nsw i32 %i.bmf, %i.bmc             ; 2 uses
  %i.bmj = sdiv i32 %i.bmi, 2                     ; 2 uses
  %.not.i17.i2074 = icmp ult i32 %i.bmh, 1024
  %isnotneg.inv.i18.i2075 = icmp slt i32 %i.bmg, -1
  %i.bmk = select i1 %isnotneg.inv.i18.i2075, i32 0, i32 1023
  %.0.i19.i2076 = select i1 %.not.i17.i2074, i32 %i.bmh, i32 %i.bmk
  %i.bml = trunc nsw i32 %.0.i19.i2076 to i16
  %i.bmm = getelementptr inbounds nuw [2 x i8], ptr %.32467, i64 %indvars.iv.i2073
  store i16 %i.bml, ptr %i.bmm, align 2, !tbaa !66
  %.not.i.i2077 = icmp ult i32 %i.bmj, 1024
  %isnotneg.inv.i.i2078 = icmp slt i32 %i.bmi, -1
  %i.bmn = select i1 %isnotneg.inv.i.i2078, i32 0, i32 1023
  %.0.i.i2079 = select i1 %.not.i.i2077, i32 %i.bmj, i32 %i.bmn
  %i.bmo = trunc nsw i32 %.0.i.i2079 to i16
  %gep.i2080 = getelementptr [2 x i8], ptr %invariant.gep.i2072, i64 %indvars.iv.i2073
  store i16 %i.bmo, ptr %gep.i2080, align 2, !tbaa !66
  %indvars.iv.next.i2081 = add nuw nsw i64 %indvars.iv.i2073, 1 ; 2 uses
  %exitcond.not.i2082 = icmp eq i64 %indvars.iv.next.i2081, %wide.trip.count.i2071
  br i1 %exitcond.not.i2082, label %interlaced_vertical_filter.exit2083, label %scalar.ph3246, !llvm.loop !149

interlaced_vertical_filter.exit2083:              ; preds = %scalar.ph3246, %middle.block3255
  %i.bmp = getelementptr inbounds nuw [2 x i8], ptr %.117522465, i64 %i.bkq
  %i.bmq = getelementptr inbounds nuw [2 x i8], ptr %.117502466, i64 %i.bkq
  %i.bmr = getelementptr inbounds [2 x i8], ptr %.32467, i64 %i.bkr
  %i.bms = add nuw nsw i32 %.02468, 1             ; 2 uses
  %exitcond2615.not = icmp eq i32 %i.bms, %i.bkf
  br i1 %exitcond2615.not, label %.loopexit, label %bb.ka, !llvm.loop !150

.loopexit.loopexit2483:                           ; preds = %bb.jy
  %.pre2623 = load i32, ptr %i.y, align 8, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %interlaced_vertical_filter.exit2083, %.loopexit.loopexit2483, %bb.jx, %bb.jz
  %i.bmt = phi i32 [ %.pre2623, %.loopexit.loopexit2483 ], [ %i.bhv, %bb.jz ], [ %i.bhv, %bb.jx ], [ %i.bhv, %interlaced_vertical_filter.exit2083 ] ; 2 uses
  %indvars.iv.next2617 = add nuw nsw i64 %indvars.iv2616, 1 ; 2 uses
  %i.bmu = sext i32 %i.bmt to i64
  %i.bmv = icmp slt i64 %indvars.iv.next2617, %i.bmu
  br i1 %i.bmv, label %bb.jm, label %.loopexit2251, !llvm.loop !151

.loopexit2251:                                    ; preds = %.loopexit, %._crit_edge2397, %bb.jl, %.loopexit2719
  %i.bmw = load i32, ptr %i.acp, align 8, !tbaa !56
  %i.bmx = icmp eq i32 %i.bmw, 145
  br i1 %i.bmx, label %bb.kb, label %.critedge

bb.kb:                                            ; preds = %.loopexit2251
  %i.bmy = load i32, ptr %i.h, align 8, !tbaa !50
  tail call fastcc void @process_bayer(ptr noundef %1, i32 noundef %i.bmy)
  br label %.critedge

.critedge:                                        ; preds = %.loopexit2251, %bb.kb
  %4 = icmp slt i32 %.01835.lcssa, 0
  br i1 %4, label %.thread2181, label %bb.kc

bb.kc:                                            ; preds = %.critedge
  store i32 1, ptr %2, align 4, !tbaa !49
  %i.bmz = load i32, ptr %i.ab, align 8, !tbaa !166
  br label %.thread2181

.thread2181:                                      ; preds = %.thread2149, %bb.eb, %bb.ep, %bb.ct, %bb.cs, %bb.eo, %bb.ev, %bb.dq, %bb.ds, %bb.do, %bb.ea, %.thread2147, %bb.dw, %.preheader2267, %bb.gt, %bb.gu, %bb.gv, %.thread2187.loopexit, %bb.gw, %bb.gx, %.thread2187.loopexit.1, %bb.gy, %bb.gz, %bb.ha, %bb.hb, %bb.hc, %.thread2187.loopexit.3, %bb.hd, %bb.he, %.thread2187.loopexit.4, %bb.hf, %bb.hg, %.preheader2267.us, %bb.gi, %bb.gj, %bb.gk, %.thread2187.us.us, %bb.gl, %bb.gm, %bb.gn, %bb.go, %bb.gp, %.thread2187.us.us.3, %bb.gq, %bb.gr, %bb.jf, %bb.jg, %bb.ib, %bb.ic, %bb.jv, %bb.jw, %bb.js, %bb.ei, %bb.ek, %bb.eg, %bb.ee, %bb.ck, %bb.cf, %bb.bw, %bb.bt, %bb.bq, %bb.bn, %bb.bk, %bb.az, %bb.ax, %bb.ar, %bb.ak, %bb.ah, %bb.ag, %bb.y, %bb.w, %bb.u, %bb.er, %bb.fv, %bb.fp, %bb.eu, %bb.ir, %bb.iv, %bb.iz, %bb.hs, %bb.hw, %bb.gs, %bb.ho, %bb.gg, %bb.dn, %.critedge, %bb.kc
  %.61829 = phi i32 [ -1163346256, %bb.u ], [ %.01835.lcssa, %.critedge ], [ %i.bmz, %bb.kc ], [ -22, %bb.ek ], [ -1094995529, %bb.ib ], [ -22, %bb.er ], [ -22, %bb.fv ], [ -22, %bb.fp ], [ %i.kg, %bb.dn ], [ -22, %bb.ir ], [ -22, %bb.iv ], [ -22, %bb.iz ], [ -22, %bb.eg ], [ -1094995529, %.preheader2267.us ], [ -22, %bb.hs ], [ -22, %bb.hw ], [ -22, %bb.js ], [ -1094995529, %.preheader2267 ], [ -22, %bb.gs ], [ -22, %bb.ho ], [ -1094995529, %bb.jf ], [ -22, %bb.ee ], [ -22, %bb.gg ], [ -22, %bb.ei ], [ -22, %bb.eu ], [ -1163346256, %bb.ck ], [ -22, %bb.cf ], [ -22, %bb.bw ], [ -22, %bb.bt ], [ -22, %bb.bq ], [ -22, %bb.bn ], [ -1094995529, %bb.bk ], [ -1163346256, %bb.az ], [ -22, %bb.ax ], [ -22, %bb.ar ], [ -22, %bb.ak ], [ -22, %bb.ah ], [ -22, %bb.ag ], [ -22, %bb.y ], [ -1163346256, %bb.w ], [ -1094995529, %bb.jv ], [ -1094995529, %bb.jw ], [ -1094995529, %bb.ic ], [ -1094995529, %bb.jg ], [ -1094995529, %bb.gr ], [ -1094995529, %bb.gq ], [ -1094995529, %.thread2187.us.us.3 ], [ -1094995529, %bb.gp ], [ -1094995529, %bb.go ], [ -1094995529, %bb.gn ], [ -1094995529, %bb.gm ], [ -1094995529, %bb.gl ], [ -1094995529, %.thread2187.us.us ], [ -1094995529, %bb.gk ], [ -1094995529, %bb.gj ], [ -1094995529, %bb.gi ], [ -1094995529, %bb.hg ], [ -1094995529, %bb.hf ], [ -1094995529, %.thread2187.loopexit.4 ], [ -1094995529, %bb.he ], [ -1094995529, %bb.hd ], [ -1094995529, %.thread2187.loopexit.3 ], [ -1094995529, %bb.hc ], [ -1094995529, %bb.hb ], [ -1094995529, %bb.ha ], [ -1094995529, %bb.gz ], [ -1094995529, %bb.gy ], [ -1094995529, %.thread2187.loopexit.1 ], [ -1094995529, %bb.gx ], [ -1094995529, %bb.gw ], [ -1094995529, %.thread2187.loopexit ], [ -1094995529, %bb.gv ], [ -1094995529, %bb.gu ], [ -1094995529, %bb.gt ], [ -1094995529, %bb.eb ], [ -1094995529, %.thread2149 ], [ -1094995529, %bb.eo ], [ -1094995529, %bb.ev ], [ -1094995529, %bb.cs ], [ -1094995529, %bb.ct ], [ -1094995529, %bb.ep ], [ %i.kk, %bb.do ], [ %i.ks, %bb.ds ], [ %i.la, %bb.dw ], [ -1163346256, %.thread2147 ], [ -1163346256, %bb.ea ], [ -1094995529, %bb.dq ]
  ret i32 %.61829
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @cfhd_close(ptr nofree noundef readonly captures(none) %0) #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28
  tail call fastcc void @free_buffers(ptr noundef %i.b)
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind uwtable
define internal fastcc void @free_buffers(ptr noundef %0) unnamed_addr #0 {
.preheader35:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 42144
  tail call void @av_freep(ptr noundef nonnull %i.a) #11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 42152
  tail call void @av_freep(ptr noundef nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 42160
  store i32 0, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 42168
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 42504
  store i8 0, ptr %i.e, align 8, !tbaa !69
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 42472
  store i8 0, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 42440
  store i8 0, ptr %i.g, align 8, !tbaa !69
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 42408
  store i8 0, ptr %i.h, align 8, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 42632
  store i8 0, ptr %i.i, align 8, !tbaa !69
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 42600
  store i8 0, ptr %i.j, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 42568
  store i8 0, ptr %i.k, align 8, !tbaa !69
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 42536
  store i8 0, ptr %i.l, align 8, !tbaa !69
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 42760
  store i8 0, ptr %i.m, align 8, !tbaa !69
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 42728
  store i8 0, ptr %i.n, align 8, !tbaa !69
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 42696
  store i8 0, ptr %i.o, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 42664
  store i8 0, ptr %i.p, align 8, !tbaa !69
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 42888
  store i8 0, ptr %i.q, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 42856
  store i8 0, ptr %i.r, align 8, !tbaa !69
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 42824
  store i8 0, ptr %i.s, align 8, !tbaa !69
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 42792
  store i8 0, ptr %i.t, align 8, !tbaa !69
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 43016
  store i8 0, ptr %i.u, align 8, !tbaa !69
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 42984
  store i8 0, ptr %i.v, align 8, !tbaa !69
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 42952
  store i8 0, ptr %i.w, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 42920
  store i8 0, ptr %i.x, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 43144
  store i8 0, ptr %i.y, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 43112
  store i8 0, ptr %i.z, align 8, !tbaa !69
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 43080
  store i8 0, ptr %i.aa, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 43048
  store i8 0, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 43168
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.d, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.ac) #11
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 43176
  tail call void @av_freep(ptr noundef nonnull %i.ad) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 43184
  store i32 0, ptr %i.ae, align 8, !tbaa !37
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 43192
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 43528
  store i8 0, ptr %i.ag, align 8, !tbaa !69
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 43496
  store i8 0, ptr %i.ah, align 8, !tbaa !69
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 43464
  store i8 0, ptr %i.ai, align 8, !tbaa !69
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 43432
  store i8 0, ptr %i.aj, align 8, !tbaa !69
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 43656
  store i8 0, ptr %i.ak, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 43624
  store i8 0, ptr %i.al, align 8, !tbaa !69
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 43592
  store i8 0, ptr %i.am, align 8, !tbaa !69
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 43560
  store i8 0, ptr %i.an, align 8, !tbaa !69
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 43784
  store i8 0, ptr %i.ao, align 8, !tbaa !69
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 43752
  store i8 0, ptr %i.ap, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 43720
  store i8 0, ptr %i.aq, align 8, !tbaa !69
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 43688
  store i8 0, ptr %i.ar, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 43912
  store i8 0, ptr %i.as, align 8, !tbaa !69
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 43880
  store i8 0, ptr %i.at, align 8, !tbaa !69
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 43848
  store i8 0, ptr %i.au, align 8, !tbaa !69
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 43816
  store i8 0, ptr %i.av, align 8, !tbaa !69
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44040
  store i8 0, ptr %i.aw, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 44008
  store i8 0, ptr %i.ax, align 8, !tbaa !69
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 43976
  store i8 0, ptr %i.ay, align 8, !tbaa !69
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 43944
  store i8 0, ptr %i.az, align 8, !tbaa !69
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 44168
  store i8 0, ptr %i.ba, align 8, !tbaa !69
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 44136
  store i8 0, ptr %i.bb, align 8, !tbaa !69
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 44104
  store i8 0, ptr %i.bc, align 8, !tbaa !69
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 44072
  store i8 0, ptr %i.bd, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 44192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.af, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.be) #11
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 44200
  tail call void @av_freep(ptr noundef nonnull %i.bf) #11
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 44208
  store i32 0, ptr %i.bg, align 8, !tbaa !37
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 44216
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 44552
  store i8 0, ptr %i.bi, align 8, !tbaa !69
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 44520
  store i8 0, ptr %i.bj, align 8, !tbaa !69
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 44488
  store i8 0, ptr %i.bk, align 8, !tbaa !69
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 44456
  store i8 0, ptr %i.bl, align 8, !tbaa !69
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 44680
  store i8 0, ptr %i.bm, align 8, !tbaa !69
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 44648
  store i8 0, ptr %i.bn, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 44616
  store i8 0, ptr %i.bo, align 8, !tbaa !69
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 44584
  store i8 0, ptr %i.bp, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 44808
  store i8 0, ptr %i.bq, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 44776
  store i8 0, ptr %i.br, align 8, !tbaa !69
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 44744
  store i8 0, ptr %i.bs, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 44712
  store i8 0, ptr %i.bt, align 8, !tbaa !69
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 44936
  store i8 0, ptr %i.bu, align 8, !tbaa !69
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 44904
  store i8 0, ptr %i.bv, align 8, !tbaa !69
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 44872
  store i8 0, ptr %i.bw, align 8, !tbaa !69
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 44840
  store i8 0, ptr %i.bx, align 8, !tbaa !69
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 45064
  store i8 0, ptr %i.by, align 8, !tbaa !69
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 45032
  store i8 0, ptr %i.bz, align 8, !tbaa !69
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 45000
  store i8 0, ptr %i.ca, align 8, !tbaa !69
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 44968
  store i8 0, ptr %i.cb, align 8, !tbaa !69
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 45192
  store i8 0, ptr %i.cc, align 8, !tbaa !69
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 45160
  store i8 0, ptr %i.cd, align 8, !tbaa !69
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 45128
  store i8 0, ptr %i.ce, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 45096
  store i8 0, ptr %i.cf, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 45216
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %i.bh, i8 0, i64 216, i1 false)
  tail call void @av_freep(ptr noundef nonnull %i.cg) #11
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 45224
  tail call void @av_freep(ptr noundef nonnull %i.ch) #11
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 45232
  store i32 0, ptr %i.ci, align 8, !tbaa !37
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 45240
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 45576
  store i8 0, ptr %i.ck, align 8, !tbaa !69
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 45544
  store i8 0, ptr %i.cl, align 8, !tbaa !69
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 45512
  store i8 0, ptr %i.cm, align 8, !tbaa !69
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 45480
end_hunk_3
