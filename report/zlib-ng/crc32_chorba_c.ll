Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/crc32_chorba_c?download=true
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@llvm.memcpy.p0.p0.i64
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden i32 @crc32_chorba_32768_nondestructive(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4096 x i64], align 16            ; 10 uses
  %i.b = alloca [9 x i64], align 16               ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32768) %i.a, i8 0, i64 32768, i1 false)
  %i.c = zext i32 %0 to i64
  store i64 %i.c, ptr %i.a, align 16, !tbaa !9
  %i.d = icmp ugt i64 %2, 2464
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0191198 = phi i64 [ %i.bq, %.lr.ph ], [ 0, %bb.a ] ; 5 uses
  %i.e = lshr exact i64 %.0191198, 3              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %.0191198
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0191198 ; 17 uses
  %i.h = or disjoint i64 %i.e, 2                  ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.h
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.h
  %i.k = or disjoint i64 %i.e, 4                  ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.k
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.k
  %i.n = or disjoint i64 %i.e, 6                  ; 2 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.n
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 1160 ; 2 uses
  %i.r = load <2 x i64>, ptr %i.f, align 8, !tbaa !9
  %i.s = load <2 x i64>, ptr %i.g, align 16, !tbaa !9
  %i.t = xor <2 x i64> %i.s, %i.r                 ; 4 uses
  %i.u = load <2 x i64>, ptr %i.q, align 8, !tbaa !9
  %i.v = xor <2 x i64> %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 1176 ; 2 uses
  %i.x = load <2 x i64>, ptr %i.i, align 8, !tbaa !9
  %i.y = load <2 x i64>, ptr %i.j, align 16, !tbaa !9
  %i.z = xor <2 x i64> %i.y, %i.x                 ; 4 uses
  store <2 x i64> %i.v, ptr %i.q, align 8, !tbaa !9
  %i.aa = load <2 x i64>, ptr %i.w, align 8, !tbaa !9
  %i.ab = xor <2 x i64> %i.aa, %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 1192 ; 2 uses
  %i.ad = load <2 x i64>, ptr %i.l, align 8, !tbaa !9
  %i.ae = load <2 x i64>, ptr %i.m, align 16, !tbaa !9
  %i.af = xor <2 x i64> %i.ae, %i.ad              ; 4 uses
  store <2 x i64> %i.ab, ptr %i.w, align 8, !tbaa !9
  %i.ag = load <2 x i64>, ptr %i.ac, align 8, !tbaa !9
  %i.ah = xor <2 x i64> %i.ag, %i.af
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 1208 ; 2 uses
  %i.aj = load <2 x i64>, ptr %i.o, align 8, !tbaa !9
  %i.ak = load <2 x i64>, ptr %i.p, align 16, !tbaa !9
  %i.al = xor <2 x i64> %i.ak, %i.aj              ; 4 uses
  store <2 x i64> %i.ah, ptr %i.ac, align 8, !tbaa !9
  %i.am = load <2 x i64>, ptr %i.ai, align 8, !tbaa !9
  %i.an = xor <2 x i64> %i.am, %i.al
  store <2 x i64> %i.an, ptr %i.ai, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 1464 ; 2 uses
  %i.ap = load <2 x i64>, ptr %i.ao, align 8, !tbaa !9
  %i.aq = xor <2 x i64> %i.ap, %i.t
  store <2 x i64> %i.aq, ptr %i.ao, align 8, !tbaa !9
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 1480 ; 2 uses
  %i.as = load <2 x i64>, ptr %i.ar, align 8, !tbaa !9
  %i.at = xor <2 x i64> %i.as, %i.z
  store <2 x i64> %i.at, ptr %i.ar, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 1496 ; 2 uses
  %i.av = load <2 x i64>, ptr %i.au, align 8, !tbaa !9
  %i.aw = xor <2 x i64> %i.av, %i.af
  store <2 x i64> %i.aw, ptr %i.au, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 1512 ; 2 uses
  %i.ay = load <2 x i64>, ptr %i.ax, align 8, !tbaa !9
  %i.az = xor <2 x i64> %i.ay, %i.al
  store <2 x i64> %i.az, ptr %i.ax, align 8, !tbaa !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.g, i64 1688 ; 2 uses
  %i.bb = load <2 x i64>, ptr %i.ba, align 8, !tbaa !9
  %i.bc = xor <2 x i64> %i.bb, %i.t
  store <2 x i64> %i.bc, ptr %i.ba, align 8, !tbaa !9
  %i.bd = getelementptr inbounds nuw i8, ptr %i.g, i64 1704 ; 2 uses
  %i.be = load <2 x i64>, ptr %i.bd, align 8, !tbaa !9
  %i.bf = xor <2 x i64> %i.be, %i.z
  store <2 x i64> %i.bf, ptr %i.bd, align 8, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %i.g, i64 1720 ; 2 uses
  %i.bh = load <2 x i64>, ptr %i.bg, align 8, !tbaa !9
  %i.bi = xor <2 x i64> %i.bh, %i.af
  store <2 x i64> %i.bi, ptr %i.bg, align 8, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 1736 ; 2 uses
  %i.bk = load <2 x i64>, ptr %i.bj, align 8, !tbaa !9
  %i.bl = xor <2 x i64> %i.bk, %i.al
  store <2 x i64> %i.bl, ptr %i.bj, align 8, !tbaa !9
  %i.bm = getelementptr inbounds nuw i8, ptr %i.g, i64 2400
  store <2 x i64> %i.t, ptr %i.bm, align 16, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %i.g, i64 2416
  store <2 x i64> %i.z, ptr %i.bn, align 16, !tbaa !9
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 2432
  store <2 x i64> %i.af, ptr %i.bo, align 16, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 2448
  store <2 x i64> %i.al, ptr %i.bp, align 16, !tbaa !9
  %i.bq = add nuw i64 %.0191198, 64               ; 2 uses
  %i.br = add nuw i64 %.0191198, 2528
  %i.bs = icmp ult i64 %i.br, %2
  br i1 %i.bs, label %.lr.ph, label %._crit_edge, !llvm.loop !19

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0191.lcssa = phi i64 [ 0, %bb.a ], [ %i.bq, %.lr.ph ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, i8 0, i64 72, i1 false)
  %i.bt = add i64 %.0191.lcssa, 72
  %i.bu = icmp ult i64 %i.bt, %2
  br i1 %i.bu, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %._crit_edge, %.lr.ph206
  %.1204 = phi i64 [ %i.fb, %.lr.ph206 ], [ %.0191.lcssa, %._crit_edge ] ; 4 uses
  %.0192203 = phi i64 [ %i.fa, %.lr.ph206 ], [ 0, %._crit_edge ]
  %.0193202 = phi i64 [ %i.ep, %.lr.ph206 ], [ 0, %._crit_edge ]
  %.0194201 = phi i64 [ %i.et, %.lr.ph206 ], [ 0, %._crit_edge ]
  %.0195200 = phi i64 [ %i.eu, %.lr.ph206 ], [ 0, %._crit_edge ]
  %.0196199 = phi i64 [ %i.ej, %.lr.ph206 ], [ 0, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 %.1204 ; 4 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 %.1204 ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !9
  %i.cd = xor i64 %i.bw, %.0192203
  %i.ce = xor i64 %i.cd, %i.by                    ; 8 uses
  %i.cf = xor i64 %i.ca, %.0193202
  %i.cg = xor i64 %i.cf, %i.cc                    ; 8 uses
  %i.ch = shl i64 %i.ce, 17
  %i.ci = shl i64 %i.ce, 55
  %i.cj = lshr i64 %i.ce, 47
  %i.ck = lshr i64 %i.ce, 9
  %i.cl = shl i64 %i.ce, 19
  %i.cm = lshr i64 %i.ce, 45
  %i.cn = shl i64 %i.ce, 44
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = lshr i64 %i.ce, 20
  %i.cq = shl i64 %i.cg, 17
  %i.cr = shl i64 %i.cg, 55
  %i.cs = lshr i64 %i.cg, 47
  %i.ct = lshr i64 %i.cg, 9
  %i.cu = shl i64 %i.cg, 19
  %i.cv = lshr i64 %i.cg, 45
  %i.cw = shl i64 %i.cg, 44
  %i.cx = or disjoint i64 %i.cv, %i.cw
  %i.cy = lshr i64 %i.cg, 20
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !9
  %i.db = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !9
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !9
  %i.df = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !9
  %i.dh = xor i64 %i.da, %.0194201
  %i.di = xor i64 %i.dh, %i.ci
  %i.dj = xor i64 %i.di, %i.ch
  %i.dk = xor i64 %i.dj, %i.dc                    ; 8 uses
  %i.dl = xor i64 %i.ck, %.0195200
  %i.dm = xor i64 %i.dl, %i.cj
  %i.dn = xor i64 %i.dm, %i.cl
  %i.do = xor i64 %i.dn, %i.de
  %i.dp = xor i64 %i.do, %i.cr
  %i.dq = xor i64 %i.dp, %i.cq
  %i.dr = xor i64 %i.dq, %i.dg                    ; 8 uses
  %i.ds = shl i64 %i.dk, 17
  %i.dt = shl i64 %i.dk, 55
  %i.du = lshr i64 %i.dk, 47
  %i.dv = lshr i64 %i.dk, 9
  %i.dw = shl i64 %i.dk, 19
  %i.dx = lshr i64 %i.dk, 45
  %i.dy = shl i64 %i.dk, 44
  %i.dz = or disjoint i64 %i.dx, %i.dy
  %i.ea = lshr i64 %i.dk, 20
  %i.eb = shl i64 %i.dr, 17
  %i.ec = shl i64 %i.dr, 55
  %i.ed = lshr i64 %i.dr, 47
  %i.ee = lshr i64 %i.dr, 9
  %i.ef = shl i64 %i.dr, 19
  %i.eg = lshr i64 %i.dr, 45
  %i.eh = shl i64 %i.dr, 44
  %i.ei = or disjoint i64 %i.eg, %i.eh
  %i.ej = lshr i64 %i.dr, 20                      ; 2 uses
  %i.ek = xor i64 %i.cx, %i.cp
  %i.el = xor i64 %i.ek, %i.dv
  %i.em = xor i64 %i.el, %i.du
  %i.en = xor i64 %i.em, %i.dw
  %i.eo = xor i64 %i.en, %i.ec
  %i.ep = xor i64 %i.eo, %i.eb                    ; 2 uses
  %i.eq = xor i64 %i.dz, %i.cy
  %i.er = xor i64 %i.eq, %i.ee
  %i.es = xor i64 %i.er, %i.ed
  %i.et = xor i64 %i.es, %i.ef                    ; 2 uses
  %i.eu = xor i64 %i.ei, %i.ea                    ; 2 uses
  %i.ev = xor i64 %i.co, %.0196199
  %i.ew = xor i64 %i.ev, %i.ct
  %i.ex = xor i64 %i.ew, %i.cs
  %i.ey = xor i64 %i.ex, %i.cu
  %i.ez = xor i64 %i.ey, %i.dt
  %i.fa = xor i64 %i.ez, %i.ds                    ; 2 uses
  %i.fb = add nuw nsw i64 %.1204, 32              ; 2 uses
  %i.fc = add nuw i64 %.1204, 104
  %i.fd = icmp ult i64 %i.fc, %2
  br i1 %i.fd, label %.lr.ph206, label %._crit_edge207, !llvm.loop !20

._crit_edge207:                                   ; preds = %.lr.ph206, %._crit_edge
  %.0196.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.ej, %.lr.ph206 ]
  %.0195.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.eu, %.lr.ph206 ]
  %.0194.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.et, %.lr.ph206 ]
  %.0193.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.ep, %.lr.ph206 ]
  %.0192.lcssa = phi i64 [ 0, %._crit_edge ], [ %i.fa, %.lr.ph206 ]
  %.1.lcssa = phi i64 [ %.0191.lcssa, %._crit_edge ], [ %i.fb, %.lr.ph206 ] ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 %.1.lcssa
  %i.ff = sub i64 %2, %.1.lcssa                   ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr align 8 %i.fe, i64 %i.ff, i1 false)
  %i.fg = load i64, ptr %i.b, align 16, !tbaa !9
  %i.fh = xor i64 %i.fg, %.0192.lcssa
  store i64 %i.fh, ptr %i.b, align 16, !tbaa !9
  %i.fi = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !9
  %i.fk = xor i64 %i.fj, %.0193.lcssa
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !9
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.fm = load i64, ptr %i.fl, align 16, !tbaa !9
  %i.fn = xor i64 %i.fm, %.0194.lcssa
  store i64 %i.fn, ptr %i.fl, align 16, !tbaa !9
  %i.fo = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !9
  %i.fq = xor i64 %i.fp, %.0195.lcssa
  store i64 %i.fq, ptr %i.fo, align 8, !tbaa !9
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 16, !tbaa !9
  %i.ft = xor i64 %i.fs, %.0196.lcssa
  store i64 %i.ft, ptr %i.fr, align 16, !tbaa !9
  %invariant.gep = getelementptr i8, ptr %i.a, i64 %.1.lcssa ; 3 uses
  %.not = icmp eq i64 %2, %.1.lcssa
  br i1 %.not, label %._crit_edge218, label %.lr.ph217.preheader

.lr.ph217.preheader:                              ; preds = %._crit_edge207
  %.neg = add i64 %.1.lcssa, 1
  %xtraiter = and i64 %i.ff, 1
  %i.fu = icmp eq i64 %2, %.neg
  br i1 %i.fu, label %.lr.ph217.epil.preheader, label %.lr.ph217.preheader.new

.lr.ph217.preheader.new:                          ; preds = %.lr.ph217.preheader
  %unroll_iter = and i64 %i.ff, -2
  br label %.lr.ph217

._crit_edge218.loopexit.unr-lcssa:                ; preds = %.lr.ph217
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge218, label %.lr.ph217.epil.preheader

.lr.ph217.epil.preheader:                         ; preds = %._crit_edge218.loopexit.unr-lcssa, %.lr.ph217.preheader
  %.0215.epil.init = phi i64 [ 0, %.lr.ph217.preheader ], [ %i.gx, %._crit_edge218.loopexit.unr-lcssa ] ; 2 uses
  %.0190214.epil.init = phi i32 [ 0, %.lr.ph217.preheader ], [ %i.gw, %._crit_edge218.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod249 = trunc i64 %i.ff to i1
  tail call void @llvm.assume(i1 %lcmp.mod249)
  %i.fv = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0215.epil.init
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !11
  %gep.epil = getelementptr i8, ptr %invariant.gep, i64 %.0215.epil.init
  %i.fx = load i8, ptr %gep.epil, align 1, !tbaa !11
  %.0190.tr.epil = trunc i32 %.0190214.epil.init to i8
  %i.fy = xor i8 %i.fw, %.0190.tr.epil
  %.narrow.epil = xor i8 %i.fy, %i.fx
  %i.fz = zext i8 %.narrow.epil to i64
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.fz
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !12
  %i.gc = lshr i32 %.0190214.epil.init, 8
  %i.gd = xor i32 %i.gb, %i.gc
  br label %._crit_edge218

._crit_edge218:                                   ; preds = %.lr.ph217.epil.preheader, %._crit_edge218.loopexit.unr-lcssa, %._crit_edge207
  %.0190.lcssa = phi i32 [ 0, %._crit_edge207 ], [ %i.gw, %._crit_edge218.loopexit.unr-lcssa ], [ %i.gd, %.lr.ph217.epil.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0190.lcssa

.lr.ph217:                                        ; preds = %.lr.ph217, %.lr.ph217.preheader.new
  %.0215 = phi i64 [ 0, %.lr.ph217.preheader.new ], [ %i.gx, %.lr.ph217 ] ; 4 uses
  %.0190214 = phi i32 [ 0, %.lr.ph217.preheader.new ], [ %i.gw, %.lr.ph217 ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph217.preheader.new ], [ %niter.next.1, %.lr.ph217 ]
  %i.ge = getelementptr inbounds nuw i8, ptr %i.b, i64 %.0215
  %i.gf = load i8, ptr %i.ge, align 2, !tbaa !11
  %gep = getelementptr i8, ptr %invariant.gep, i64 %.0215
  %i.gg = load i8, ptr %gep, align 1, !tbaa !11
  %.0190.tr = trunc i32 %.0190214 to i8
  %i.gh = xor i8 %i.gf, %.0190.tr
  %.narrow = xor i8 %i.gh, %i.gg
  %i.gi = zext i8 %.narrow to i64
  %i.gj = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.gi
  %i.gk = load i32, ptr %i.gj, align 4, !tbaa !12
  %i.gl = lshr i32 %.0190214, 8
  %i.gm = xor i32 %i.gk, %i.gl                    ; 2 uses
  %i.gn = or disjoint i64 %.0215, 1               ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gn
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !11
  %gep.1 = getelementptr i8, ptr %invariant.gep, i64 %i.gn
  %i.gq = load i8, ptr %gep.1, align 1, !tbaa !11
  %.0190.tr.1 = trunc i32 %i.gm to i8
  %i.gr = xor i8 %i.gp, %.0190.tr.1
  %.narrow.1 = xor i8 %i.gr, %i.gq
  %i.gs = zext i8 %.narrow.1 to i64
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr @crc_table, i64 %i.gs
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !12
  %i.gv = lshr i32 %i.gm, 8
  %i.gw = xor i32 %i.gu, %i.gv                    ; 3 uses
  %i.gx = add nuw nsw i64 %.0215, 2               ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge218.loopexit.unr-lcssa, label %.lr.ph217, !llvm.loop !21
}

; Function Attrs: nounwind uwtable
define hidden i32 @crc32_chorba_small_nondestructive(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.a, i8 0, i64 72, i1 false)
  %i.b = zext i32 %0 to i64                       ; 2 uses
  %i.c = icmp ugt i64 %2, 360
  br i1 %i.c, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.0800.lcssa = phi i64 [ 0, %bb.a ], [ %i.aaf, %.lr.ph ] ; 3 uses
  %.0798.lcssa = phi i64 [ 0, %bb.a ], [ %i.zn, %.lr.ph ] ; 2 uses
  %.0796.lcssa = phi i64 [ 0, %bb.a ], [ %i.zy, %.lr.ph ] ; 2 uses
  %.0794.lcssa = phi i64 [ 0, %bb.a ], [ %i.zx, %.lr.ph ] ; 2 uses
  %.0792.lcssa = phi i64 [ 0, %bb.a ], [ %i.zt, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi i64 [ %i.b, %bb.a ], [ %i.aae, %.lr.ph ] ; 2 uses
  %i.d = add i64 %.0800.lcssa, 72
  %i.e = icmp ult i64 %i.d, %2
  br i1 %i.e, label %.lr.ph820, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.0808 = phi i64 [ %i.aae, %.lr.ph ], [ %i.b, %bb.a ]
  %.0792807 = phi i64 [ %i.zt, %.lr.ph ], [ 0, %bb.a ]
  %.0794806 = phi i64 [ %i.zx, %.lr.ph ], [ 0, %bb.a ]
  %.0796805 = phi i64 [ %i.zy, %.lr.ph ], [ 0, %bb.a ]
  %.0798804 = phi i64 [ %i.zn, %.lr.ph ], [ 0, %bb.a ]
  %.0800803 = phi i64 [ %i.aaf, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 %.0800803  ; 40 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !9
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !9    ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.s = load i64, ptr %i.r, align 8, !tbaa !9    ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.u = load i64, ptr %i.t, align 8, !tbaa !9    ; 2 uses
  %i.v = xor i64 %i.g, %.0808                     ; 13 uses
  %i.w = xor i64 %i.i, %.0792807                  ; 13 uses
  %i.x = xor i64 %i.k, %.0794806                  ; 14 uses
  %i.y = xor i64 %i.m, %.0796805                  ; 14 uses
  %i.z = xor i64 %i.o, %.0798804                  ; 14 uses
  %i.aa = xor i64 %i.s, %i.v                      ; 13 uses
  %i.ab = xor i64 %i.u, %i.w                      ; 13 uses
  %i.ac = getelementptr i8, ptr %i.f, i64 64
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !9
  %i.ae = getelementptr i8, ptr %i.f, i64 72
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !9
  %i.ag = xor i64 %i.ad, %i.x                     ; 8 uses
  %i.ah = xor i64 %i.v, %i.af
  %i.ai = xor i64 %i.ah, %i.y                     ; 8 uses
  %i.aj = shl i64 %i.ag, 17
  %i.ak = shl i64 %i.ag, 55
  %i.al = lshr i64 %i.ag, 47
  %i.am = lshr i64 %i.ag, 9
  %i.an = shl i64 %i.ag, 19
  %i.ao = lshr i64 %i.ag, 45
  %i.ap = shl i64 %i.ag, 44
  %i.aq = or disjoint i64 %i.ao, %i.ap
  %i.ar = lshr i64 %i.ag, 20
  %i.as = shl i64 %i.ai, 17
  %i.at = shl i64 %i.ai, 55
  %i.au = lshr i64 %i.ai, 47
  %i.av = lshr i64 %i.ai, 9
  %i.aw = shl i64 %i.ai, 19
  %i.ax = lshr i64 %i.ai, 45
  %i.ay = shl i64 %i.ai, 44
  %i.az = or disjoint i64 %i.ax, %i.ay
  %i.ba = lshr i64 %i.ai, 20
  %i.bb = getelementptr i8, ptr %i.f, i64 80
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !9
  %i.bd = getelementptr i8, ptr %i.f, i64 88
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !9
  %i.bf = xor i64 %i.ak, %i.aj
  %i.bg = xor i64 %i.bf, %i.bc
  %i.bh = xor i64 %i.bg, %i.v
  %i.bi = xor i64 %i.bh, %i.z
  %i.bj = xor i64 %i.bi, %i.w                     ; 8 uses
  %i.bk = xor i64 %i.am, %i.al
  %i.bl = xor i64 %i.bk, %i.an
  %i.bm = xor i64 %i.bl, %i.be
  %i.bn = xor i64 %i.bm, %i.at
  %i.bo = xor i64 %i.bn, %i.as
end_hunk_0
