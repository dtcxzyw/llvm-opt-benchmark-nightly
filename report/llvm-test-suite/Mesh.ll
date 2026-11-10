Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/Mesh?download=true
inline.NumInlined: 767
inline.NumDeleted: 289
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN4Mesh4initEv:bb.a
  %.not.i.i34 = icmp eq ptr %i.ax, %i.ay
  br i1 %.not.i.i34, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit36, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35:      ; preds = %bb.h
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit36

_ZNSt6vectorIiSaIiEE6resizeEm.exit36:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i35, %bb.h
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !68
  %i.bb = load ptr, ptr %6, align 8, !tbaa !65    ; 2 uses
  %.not.i.i37 = icmp eq ptr %i.ba, %i.bb
  br i1 %.not.i.i37, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit39, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i38

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i38:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit36
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit39

_ZNSt6vectorIiSaIiEE6resizeEm.exit39:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i38, %_ZNSt6vectorIiSaIiEE6resizeEm.exit36
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !68
  %i.be = load ptr, ptr %7, align 8, !tbaa !65    ; 2 uses
  %.not.i.i40 = icmp eq ptr %i.bd, %i.be
  br i1 %.not.i.i40, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit42, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i41

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i41:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit39
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit42

_ZNSt6vectorIiSaIiEE6resizeEm.exit42:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i41, %_ZNSt6vectorIiSaIiEE6resizeEm.exit39
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68
  %i.bh = load ptr, ptr %8, align 8, !tbaa !65    ; 2 uses
  %.not.i.i43 = icmp eq ptr %i.bg, %i.bh
  br i1 %.not.i.i43, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit45, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit42
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit45

_ZNSt6vectorIiSaIiEE6resizeEm.exit45:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i44, %_ZNSt6vectorIiSaIiEE6resizeEm.exit42
  %i.bi = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !68
  %i.bk = load ptr, ptr %9, align 8, !tbaa !65    ; 2 uses
  %.not.i.i46 = icmp eq ptr %i.bj, %i.bk
  br i1 %.not.i.i46, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit48, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i47

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i47:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit45
  store ptr %i.bk, ptr %i.bi, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit48

_ZNSt6vectorIiSaIiEE6resizeEm.exit48:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i47, %_ZNSt6vectorIiSaIiEE6resizeEm.exit45
  %i.bl = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !68
  %i.bn = load ptr, ptr %10, align 8, !tbaa !65   ; 2 uses
  %.not.i.i49 = icmp eq ptr %i.bm, %i.bn
  br i1 %.not.i.i49, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit51, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i50

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i50:      ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit48
  store ptr %i.bn, ptr %i.bl, align 8, !tbaa !68
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit51

_ZNSt6vectorIiSaIiEE6resizeEm.exit51:             ; preds = %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i50, %_ZNSt6vectorIiSaIiEE6resizeEm.exit48
  invoke void @_ZN4Mesh10writeStatsEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
          to label %bb.i unwind label %bb.n

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit51
  %i.bo = load i32, ptr %i.j, align 4, !tbaa !67
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 4
  %i.br = call noalias noundef ptr @malloc(i64 noundef %i.bq) #21 ; 12 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !75
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 4
  %i.bx = call noalias noundef ptr @malloc(i64 noundef %i.bw) #21
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !149
  %i.bz = load i32, ptr %i.s, align 4, !tbaa !69
  %i.ca = sext i32 %i.bz to i64
  %i.cb = shl nsw i64 %i.ca, 4
  %i.cc = call noalias noundef ptr @malloc(i64 noundef %i.cb) #21
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !150
  %i.ce = load i32, ptr %i.j, align 4, !tbaa !67
  %i.cf = sext i32 %i.ce to i64
  %i.cg = shl nsw i64 %i.cf, 4
  %i.ch = call noalias noundef ptr @malloc(i64 noundef %i.cg) #21
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 288
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !151
  %i.cj = load i32, ptr %i.j, align 4, !tbaa !67
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 4
  %i.cm = call noalias noundef ptr @malloc(i64 noundef %i.cl) #21
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 264
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !152
  %i.co = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.cp = sext i32 %i.co to i64
  %i.cq = shl nsw i64 %i.cp, 4
  %i.cr = call noalias noundef ptr @malloc(i64 noundef %i.cq) #21
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 272
  store ptr %i.cr, ptr %i.cs, align 8, !tbaa !153
  %i.ct = load i32, ptr %i.s, align 4, !tbaa !69
  %i.cu = sext i32 %i.ct to i64
  %i.cv = shl nsw i64 %i.cu, 4
  %i.cw = call noalias noundef ptr @malloc(i64 noundef %i.cv) #21
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !154
  %i.cy = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.cz = sext i32 %i.cy to i64
  %i.da = shl nsw i64 %i.cz, 3
  %i.db = call noalias noundef ptr @malloc(i64 noundef %i.da) #21
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !155
  %i.dd = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.de = sext i32 %i.dd to i64
  %i.df = shl nsw i64 %i.de, 3
  %i.dg = call noalias noundef ptr @malloc(i64 noundef %i.df) #21
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  store ptr %i.dg, ptr %i.dh, align 8, !tbaa !156
  %i.di = load i32, ptr %i.s, align 4, !tbaa !69
  %i.dj = sext i32 %i.di to i64
  %i.dk = shl nsw i64 %i.dj, 3
  %i.dl = call noalias noundef ptr @malloc(i64 noundef %i.dk) #21
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  store ptr %i.dl, ptr %i.dm, align 8, !tbaa !157
  %i.dn = load i32, ptr %i.s, align 4, !tbaa !69
  %i.do = sext i32 %i.dn to i64
  %i.dp = shl nsw i64 %i.do, 3
  %i.dq = call noalias noundef ptr @malloc(i64 noundef %i.dp) #21
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  store ptr %i.dq, ptr %i.dr, align 8, !tbaa !158
  %i.ds = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.dt = sext i32 %i.ds to i64
  %i.du = shl nsw i64 %i.dt, 3
  %i.dv = call noalias noundef ptr @malloc(i64 noundef %i.du) #21
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 328
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !159
  %i.dx = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.dy = sext i32 %i.dx to i64
  %i.dz = shl nsw i64 %i.dy, 3
  %i.ea = call noalias noundef ptr @malloc(i64 noundef %i.dz) #21
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 336
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !160
  %i.ec = load i32, ptr %i.s, align 4, !tbaa !69
  %i.ed = sext i32 %i.ec to i64
  %i.ee = shl nsw i64 %i.ed, 3
  %i.ef = call noalias noundef ptr @malloc(i64 noundef %i.ee) #21
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 344
  store ptr %i.ef, ptr %i.eg, align 8, !tbaa !161
  %i.eh = load i32, ptr %i.s, align 4, !tbaa !69
  %i.ei = sext i32 %i.eh to i64
  %i.ej = shl nsw i64 %i.ei, 3
  %i.ek = call noalias noundef ptr @malloc(i64 noundef %i.ej) #21
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 352
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !162
  %i.em = load i32, ptr %i.s, align 4, !tbaa !69
  %i.en = sext i32 %i.em to i64
  %i.eo = shl nsw i64 %i.en, 3
  %i.ep = call noalias noundef ptr @malloc(i64 noundef %i.eo) #21
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 360
  store ptr %i.ep, ptr %i.eq, align 8, !tbaa !163
  %i.er = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.es = sext i32 %i.er to i64
  %i.et = shl nsw i64 %i.es, 4
  %i.eu = call noalias noundef ptr @malloc(i64 noundef %i.et) #21
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 368
  store ptr %i.eu, ptr %i.ev, align 8, !tbaa !164
  %i.ew = load i32, ptr %i.bt, align 8, !tbaa !76
  %i.ex = sext i32 %i.ew to i64
  %i.ey = shl nsw i64 %i.ex, 3
  %i.ez = call noalias noundef ptr @malloc(i64 noundef %i.ey) #21
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 376
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !77
  %i.fb = load i32, ptr %i.s, align 4, !tbaa !69
  %i.fc = sext i32 %i.fb to i64
  %i.fd = shl nsw i64 %i.fc, 3
  %i.fe = call noalias noundef ptr @malloc(i64 noundef %i.fd) #21
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 392
  store ptr %i.fe, ptr %i.ff, align 8, !tbaa !165
  %i.fg = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.fh = sext i32 %i.fg to i64
  %i.fi = shl nsw i64 %i.fh, 3
  %i.fj = call noalias noundef ptr @malloc(i64 noundef %i.fi) #21
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 384 ; 2 uses
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !166
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.fm = load i32, ptr %i.fl, align 8, !tbaa !78 ; 2 uses
  %i.fn = icmp sgt i32 %i.fm, 0
  br i1 %i.fn, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %bb.i
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !65
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !65
  %i.fs = load ptr, ptr %1, align 8               ; 11 uses
  %wide.trip.count115 = zext nneg i32 %i.fm to i64
  %scevgep = getelementptr i8, ptr %i.fs, i64 8
  %scevgep170 = getelementptr i8, ptr %i.br, i64 8
  %scevgep171 = getelementptr i8, ptr %i.fs, i64 -8
  %scevgep172 = getelementptr i8, ptr %i.br, i64 -8
  br label %bb.j

._crit_edge106:                                   ; preds = %._crit_edge, %bb.i
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  store i32 0, ptr %i.ft, align 8, !tbaa !79
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !80
  %i.fw = icmp sgt i32 %i.fv, 0
  br i1 %i.fw, label %.lr.ph109, label %._crit_edge110

.lr.ph109:                                        ; preds = %._crit_edge106
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.fy = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.pre = load ptr, ptr %i.bs, align 8, !tbaa !75
  %.pre120 = load ptr, ptr %i.cd, align 8, !tbaa !150
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph105, %._crit_edge
  %indvars.iv112 = phi i64 [ 0, %.lr.ph105 ], [ %indvars.iv.next113, %._crit_edge ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.fp, i64 %indvars.iv112
  %i.gd = load i32, ptr %i.gc, align 4, !tbaa !14 ; 2 uses
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %indvars.iv112
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !14 ; 2 uses
  %i.gg = icmp slt i32 %i.gd, %i.gf
  br i1 %i.gg, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %i.gh = sext i32 %i.gd to i64                   ; 6 uses
  %wide.trip.count = sext i32 %i.gf to i64        ; 5 uses
  %i.gi = sub nsw i64 %wide.trip.count, %i.gh     ; 3 uses
  %min.iters.check = icmp ult i64 %i.gi, 8
  br i1 %min.iters.check, label %.lr.ph.preheader177, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.gj = shl nsw i64 %i.gh, 4                    ; 4 uses
  %i.gk = getelementptr i8, ptr %i.br, i64 %i.gj
  %i.gl = shl nsw i64 %wide.trip.count, 4         ; 4 uses
  %i.gm = getelementptr i8, ptr %scevgep172, i64 %i.gl
  %i.gn = getelementptr i8, ptr %i.fs, i64 %i.gj
  %i.go = getelementptr i8, ptr %scevgep171, i64 %i.gl
  %i.gp = getelementptr i8, ptr %scevgep170, i64 %i.gj
  %i.gq = getelementptr i8, ptr %i.br, i64 %i.gl
  %i.gr = getelementptr i8, ptr %scevgep, i64 %i.gj
  %i.gs = getelementptr i8, ptr %i.fs, i64 %i.gl
  %bound0 = icmp ult ptr %i.gk, %i.go
  %bound1 = icmp ult ptr %i.gn, %i.gm
  %found.conflict = and i1 %bound0, %bound1
  %bound0170 = icmp ult ptr %i.gp, %i.gs
  %bound1171 = icmp ult ptr %i.gr, %i.gq
  %found.conflict172 = and i1 %bound0170, %bound1171
  %conflict.rdx = or i1 %found.conflict, %found.conflict172
  br i1 %conflict.rdx, label %.lr.ph.preheader177, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.gi, -2                      ; 3 uses
  %i.gt = add nsw i64 %n.vec, %i.gh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.gu = add i64 %index, %i.gh                   ; 3 uses
  %i.gv = add i64 %i.gu, 1                        ; 2 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.gu
  %i.gx = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %i.gv
  %i.gy = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.gu
  %i.gz = getelementptr inbounds [16 x i8], ptr %i.br, i64 %i.gv
  %wide.load = load <2 x double>, ptr %i.gw, align 8
  %wide.load173 = load <2 x double>, ptr %i.gx, align 8
  store <2 x double> %wide.load, ptr %i.gy, align 8
  store <2 x double> %wide.load173, ptr %i.gz, align 8
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ha = icmp eq i64 %index.next, %n.vec
  br i1 %i.ha, label %middle.block, label %vector.body, !llvm.loop !136

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gi, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader177

.lr.ph.preheader177:                              ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.gh, %vector.memcheck ], [ %i.gh, %.lr.ph.preheader ], [ %i.gt, %middle.block ] ; 4 uses
  %i.hb = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.hb, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader177, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader177 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader177 ]
  %i.hc = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv.prol
  %i.hd = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv.prol
  %i.he = load <2 x double>, ptr %i.hc, align 8, !tbaa !85
  store <2 x double> %i.he, ptr %i.hd, align 8, !tbaa !85
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !137

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader177
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader177 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %i.hf = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.hg = icmp ugt i64 %i.hf, -4
  br i1 %i.hg, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.j
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge106, label %bb.j, !llvm.loop !138

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 6 uses
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv
  %i.hi = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv
  %i.hj = load <2 x double>, ptr %i.hh, align 8, !tbaa !85
  store <2 x double> %i.hj, ptr %i.hi, align 8, !tbaa !85
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.hk = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv.next
  %i.hl = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv.next
  %i.hm = load <2 x double>, ptr %i.hk, align 8, !tbaa !85
  store <2 x double> %i.hm, ptr %i.hl, align 8, !tbaa !85
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.hn = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv.next.1
  %i.ho = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv.next.1
  %i.hp = load <2 x double>, ptr %i.hn, align 8, !tbaa !85
  store <2 x double> %i.hp, ptr %i.ho, align 8, !tbaa !85
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.hq = getelementptr inbounds nuw [16 x i8], ptr %i.fs, i64 %indvars.iv.next.2
  %i.hr = getelementptr inbounds [16 x i8], ptr %i.br, i64 %indvars.iv.next.2
  %i.hs = load <2 x double>, ptr %i.hq, align 8, !tbaa !85
  store <2 x double> %i.hs, ptr %i.hr, align 8, !tbaa !85
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph, !llvm.loop !139

._crit_edge110:                                   ; preds = %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit, %._crit_edge106
  invoke void @_ZN4Mesh13checkBadSidesEv(ptr noundef nonnull align 8 dereferenceable(616) %0)
          to label %bb.y unwind label %bb.n

bb.k:                                             ; preds = %.lr.ph109, %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit
  %i.ht = phi ptr [ %.pre120, %.lr.ph109 ], [ %i.id, %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit ]
  %i.hu = phi ptr [ %.pre, %.lr.ph109 ], [ %i.ic, %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit ]
  %indvars.iv117 = phi i64 [ 0, %.lr.ph109 ], [ %indvars.iv.next118, %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit ] ; 3 uses
  %i.hv = load ptr, ptr %i.fx, align 8, !tbaa !65
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv117
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !14 ; 3 uses
  %i.hy = load ptr, ptr %i.fy, align 8, !tbaa !65
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %i.hy, i64 %indvars.iv117
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !14 ; 4 uses
  %i.ib = load ptr, ptr %i.by, align 8, !tbaa !149
  call void @_ZN4Mesh8calcCtrsEPK7double2PS0_S3_ii(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef %i.hu, ptr noundef %i.ib, ptr noundef %i.ht, i32 noundef %i.hx, i32 noundef %i.ia)
  %i.ic = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 3 uses
  %i.id = load ptr, ptr %i.cd, align 8, !tbaa !150 ; 2 uses
  %i.ie = load ptr, ptr %i.dc, align 8, !tbaa !155 ; 4 uses
  %i.if = load ptr, ptr %i.dh, align 8, !tbaa !156
  %i.ig = load ptr, ptr %i.dm, align 8, !tbaa !157 ; 5 uses
  %i.ih = load ptr, ptr %i.dr, align 8, !tbaa !158 ; 2 uses
  %i.ii = load ptr, ptr %i.fz, align 8, !tbaa !87 ; 6 uses
  %i.ij = sext i32 %i.hx to i64                   ; 9 uses
  %i.ik = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.ij
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !14 ; 2 uses
  %i.im = load i32, ptr %i.ab, align 8, !tbaa !70
  %i.in = icmp slt i32 %i.ia, %i.im
  %i.io = sext i32 %i.ia to i64                   ; 5 uses
  %i.ip = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %i.io
  %.in.i = select i1 %i.in, ptr %i.ip, ptr %i.s
  %i.iq = load i32, ptr %.in.i, align 4, !tbaa !14 ; 2 uses
  %.not6.i.i.i.i = icmp eq i32 %i.il, %i.iq
  br i1 %.not6.i.i.i.i, label %_ZSt4fillIPddEvT_S1_RKT0_.exit57.i, label %.lr.ph.i.i.i54.preheader.i

.lr.ph.i.i.i54.preheader.i:                       ; preds = %bb.k
  %i.ir = sext i32 %i.iq to i64
  %i.is = sext i32 %i.il to i64                   ; 3 uses
  %i.it = getelementptr [8 x i8], ptr %i.ih, i64 %i.is
  %i.iu = sub nsw i64 %i.ir, %i.is
  %i.iv = shl nsw i64 %i.iu, 3                    ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.it, i8 0, i64 %i.iv, i1 false), !tbaa !85
  %i.iw = getelementptr [8 x i8], ptr %i.ig, i64 %i.is
  call void @llvm.memset.p0.i64(ptr align 8 %i.iw, i8 0, i64 %i.iv, i1 false), !tbaa !85
  br label %_ZSt4fillIPddEvT_S1_RKT0_.exit57.i

_ZSt4fillIPddEvT_S1_RKT0_.exit57.i:               ; preds = %.lr.ph.i.i.i54.preheader.i, %bb.k
  %i.ix = icmp slt i32 %i.hx, %i.ia
  br i1 %i.ix, label %.lr.ph.i, label %_ZN4Mesh13calcSideFracsEPKdS1_Pdii.exit

.lr.ph.i:                                         ; preds = %_ZSt4fillIPddEvT_S1_RKT0_.exit57.i
  %i.iy = load ptr, ptr %i.ga, align 8, !tbaa !88
  %i.iz = load ptr, ptr %i.gb, align 8, !tbaa !89
  br label %bb.l

._crit_edge.i:                                    ; preds = %bb.l
  %.not.i = icmp eq i32 %spec.select.i, 0
  br i1 %.not.i, label %.lr.ph.i53, label %bb.m

bb.l:                                             ; preds = %bb.l, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ij, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.l ] ; 6 uses
  %.05161.i = phi i32 [ 0, %.lr.ph.i ], [ %spec.select.i, %bb.l ]
  %i.ja = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %indvars.iv.i
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !14
  %i.jc = getelementptr inbounds [4 x i8], ptr %i.iz, i64 %indvars.iv.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !14
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ii, i64 %indvars.iv.i
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !14
  %i.jg = sext i32 %i.jd to i64
  %i.jh = getelementptr inbounds [16 x i8], ptr %i.ic, i64 %i.jg
  %i.ji = sext i32 %i.jb to i64
  %i.jj = getelementptr inbounds [16 x i8], ptr %i.ic, i64 %i.ji
  %i.jk = load <2 x double>, ptr %i.jh, align 8, !tbaa !85, !noalias !167 ; 2 uses
  %i.jl = load <2 x double>, ptr %i.jj, align 8, !tbaa !85, !noalias !167 ; 3 uses
  %i.jm = fsub <2 x double> %i.jk, %i.jl          ; 2 uses
  %i.jn = sext i32 %i.jf to i64                   ; 3 uses
  %i.jo = getelementptr inbounds [16 x i8], ptr %i.id, i64 %i.jn
  %i.jp = load <2 x double>, ptr %i.jo, align 8, !tbaa !85, !noalias !168 ; 2 uses
  %i.jq = fsub <2 x double> %i.jp, %i.jl          ; 2 uses
  %i.jr = extractelement <2 x double> %i.jq, i64 0
  %i.js = fneg double %i.jr
  %i.jt = extractelement <2 x double> %i.jm, i64 1
  %i.ju = fmul double %i.jt, %i.js
  %i.jv = extractelement <2 x double> %i.jm, i64 0
  %i.jw = extractelement <2 x double> %i.jq, i64 1
  %i.jx = call noundef double @llvm.fmuladd.f64(double %i.jv, double %i.jw, double %i.ju)
  %i.jy = fmul double %i.jx, 5.000000e-01         ; 3 uses
  %i.jz = fmul double %i.jy, f0x3FD5555555555555
  %foldExtExtBinop = fadd <2 x double> %i.jk, %i.jl
  %foldExtExtBinop175 = fadd <2 x double> %foldExtExtBinop, %i.jp
  %i.ka = extractelement <2 x double> %foldExtExtBinop175, i64 0
  %i.kb = fmul double %i.ka, %i.jz                ; 3 uses
  %i.kc = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %indvars.iv.i
  store double %i.jy, ptr %i.kc, align 8, !tbaa !85
  %i.kd = getelementptr inbounds [8 x i8], ptr %i.if, i64 %indvars.iv.i
  store double %i.kb, ptr %i.kd, align 8, !tbaa !85
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.ig, i64 %i.jn ; 2 uses
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !85
  %i.kg = fadd double %i.kf, %i.jy
  store double %i.kg, ptr %i.ke, align 8, !tbaa !85
  %i.kh = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.jn ; 2 uses
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !85
  %i.kj = fadd double %i.ki, %i.kb
  store double %i.kj, ptr %i.kh, align 8, !tbaa !85
  %i.kk = fcmp ole double %i.kb, 0.000000e+00
  %i.kl = zext i1 %i.kk to i32
  %spec.select.i = add nuw nsw i32 %.05161.i, %i.kl ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.io
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.l, !llvm.loop !1
end_hunk_0
