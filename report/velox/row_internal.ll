inline.NumInlined: 692
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute12RowTableImpl19AppendSelectionFromERKS1_jPKt:_ZN5arrow6StatusD2Ev.exit
._crit_edge.loopexit264.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit264.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit264.unr-lcssa ] ; 2 uses
  %.0100134.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.ej, %._crit_edge.loopexit264.unr-lcssa ]
  %lcmp.mod267 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod267)
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.epil.init
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !152
  %i.bk = zext i16 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.bk ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !96
  %i.bo = load i64, ptr %i.bl, align 8, !tbaa !96
  %i.bp = sub nsw i64 %i.bn, %i.bo
  %i.bq = add nsw i64 %i.bp, %.0100134.epil.init  ; 2 uses
  %i.br = add nsw i64 %i.bq, %i.v
  %i.bs = load i64, ptr %i.s, align 8, !tbaa !113
  %i.bt = getelementptr [8 x i8], ptr %i.r, i64 %i.bs
  %i.bu = getelementptr [8 x i8], ptr %i.bt, i64 %indvars.iv.epil.init
  %i.bv = getelementptr i8, ptr %i.bu, i64 8
  store i64 %i.br, ptr %i.bv, align 8, !tbaa !96
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit264.unr-lcssa, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.0100.lcssa = phi i64 [ 0, %bb.b ], [ %i.bc, %.lr.ph.split.us.epil.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ej, %._crit_edge.loopexit264.unr-lcssa ], [ %i.bq, %.lr.ph.split.epil.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !70, !noalias !154, !nonnull !35, !noundef !35
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.bz = load ptr, ptr %i.by, align 8, !noalias !154
  %i.ca = load i64, ptr %i.s, align 8, !tbaa !113, !noalias !154
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !96, !noalias !154
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 3 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !102, !noalias !154 ; 2 uses
  %i.cf = add nsw i64 %i.cc, %.0100.lcssa         ; 2 uses
  %.not.i122 = icmp slt i64 %i.ce, %i.cf
  br i1 %.not.i122, label %bb.c, label %_ZN5arrow6StatusD2Ev.exit126

bb.c:                                             ; preds = %._crit_edge
  %i.cg = shl nsw i64 %i.ce, 1
  %.sroa.speculated.i = tail call i64 @llvm.smax.i64(i64 %i.cg, i64 1)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %.011.i = phi i64 [ %.sroa.speculated.i, %bb.c ], [ %i.ci, %bb.d ] ; 5 uses
  %i.ch = icmp slt i64 %.011.i, %i.cf
  %i.ci = shl nuw nsw i64 %.011.i, 1
  br i1 %i.ch, label %bb.d, label %_ZN5arrow6StatusD2Ev.exit.i, !llvm.loop !144

_ZN5arrow6StatusD2Ev.exit.i:                      ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22, !noalias !154
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !70, !noalias !154 ; 2 uses
  %i.cl = add nuw nsw i64 %.011.i, 64
  %i.cm = load ptr, ptr %i.ck, align 8, !tbaa !76, !noalias !154
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !noalias !154
  call void %i.co(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(80) %i.ck, i64 noundef %i.cl, i1 noundef zeroext false), !noalias !154, !inline_history !157
  %i.cp = load ptr, ptr %5, align 8, !tbaa !66, !noalias !158 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22, !noalias !154
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %_ZN5arrow6StatusD2Ev.exit15.i, label %.sink.split

_ZN5arrow6StatusD2Ev.exit15.i:                    ; preds = %_ZN5arrow6StatusD2Ev.exit.i
  %i.cr = load ptr, ptr %i.cj, align 8, !tbaa !70, !noalias !154 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 9
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !79, !range !34, !noalias !154, !noundef !35
  %i.cu = trunc nuw i8 %i.ct to i1
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 8
  %i.cw = load i8, ptr %i.cv, align 8, !range !34, !noalias !154
  %i.cx = trunc nuw i8 %i.cw to i1
  %i.cy = select i1 %i.cu, i1 %i.cx, i1 false, !prof !69
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !154
  %i.db = select i1 %i.cy, ptr %i.da, ptr null, !prof !69
  %i.dc = load i64, ptr %i.cd, align 8, !tbaa !102, !noalias !154 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 64
  %i.df = sub nsw i64 %.011.i, %i.dc
  call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 0, i64 %i.df, i1 false), !noalias !154
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !70, !noalias !154
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !70, !noalias !154
  %i.dj = load i8, ptr %i.d, align 8, !tbaa !111, !range !34, !noalias !154, !noundef !35
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = load ptr, ptr %i.cj, align 8, !noalias !154
  %.sink1.in.v.i.i = select i1 %i.dk, i64 144, i64 136
  %.sink1.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink1.in.v.i.i
  %.sink.i.i = select i1 %i.dk, ptr null, ptr %i.dl
  %.sink1.i.i = load ptr, ptr %.sink1.in.i.i, align 8, !tbaa !70, !noalias !154
  store ptr %.sink1.i.i, ptr %i.bw, align 8, !tbaa !70, !noalias !154
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sink.i.i, ptr %i.dm, align 8, !tbaa !70, !noalias !154
  store i64 %.011.i, ptr %i.cd, align 8, !tbaa !102, !noalias !154
  br label %_ZN5arrow6StatusD2Ev.exit126

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %.0100134 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.ej, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !152
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !96
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !96
  %i.du = sub nsw i64 %i.ds, %i.dt
  %i.dv = add nsw i64 %i.du, %.0100134            ; 2 uses
  %i.dw = add nsw i64 %i.dv, %i.v
  %i.dx = load i64, ptr %i.s, align 8, !tbaa !113
  %i.dy = getelementptr [8 x i8], ptr %i.r, i64 %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store i64 %i.dw, ptr %i.ea, align 8, !tbaa !96
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !152
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !96
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !96
  %i.ei = sub nsw i64 %i.eg, %i.eh
  %i.ej = add nsw i64 %i.ei, %i.dv                ; 4 uses
  %i.ek = add nsw i64 %i.ej, %i.v
  %i.el = load i64, ptr %i.s, align 8, !tbaa !113
  %i.em = getelementptr [8 x i8], ptr %i.r, i64 %i.el
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %indvars.iv.next
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store i64 %i.ek, ptr %i.eo, align 8, !tbaa !96
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit264.unr-lcssa, label %.lr.ph.split, !llvm.loop !151

_ZN5arrow6StatusD2Ev.exit126:                     ; preds = %_ZN5arrow6StatusD2Ev.exit15.i, %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !70
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = ptrtoaddr ptr %i.es to i64
  br i1 %.not165, label %.critedge.thread, label %.lr.ph143

.lr.ph143:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit126
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !70 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !79, !range !34, !noundef !35
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fa = load i8, ptr %i.ez, align 8, !range !34
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false, !prof !69
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = select i1 %i.fc, ptr %i.fe, ptr null, !prof !69
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.v
  %.not = icmp eq ptr %4, null
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %_ZN5arrow8bit_util7CeilDivEll.exit.thread
  %indvars.iv184.a = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next185.a, %_ZN5arrow8bit_util7CeilDivEll.exit.thread ] ; 3 uses
  %.0104141 = phi ptr [ %i.fg, %.lr.ph143 ], [ %i.gj, %_ZN5arrow8bit_util7CeilDivEll.exit.thread ] ; 4 uses
  %.0104141217 = ptrtoaddr ptr %.0104141 to i64
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv184.a
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !152
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.fj = trunc i64 %indvars.iv184.a to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fk = phi i16 [ %i.fi, %bb.f ], [ %i.fj, %bb.g ]
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !96 ; 2 uses
  %i.fp = load i64, ptr %i.fm, align 8, !tbaa !96 ; 4 uses
  %i.fq = sub nsw i64 %i.fo, %i.fp                ; 5 uses
  %i.fr = getelementptr inbounds i8, ptr %i.es, i64 %i.fp ; 2 uses
  %i.fs = add nsw i64 %i.fq, -1
  %i.ft = sdiv i64 %i.fs, 8                       ; 3 uses
  %i.fu = icmp eq i64 %i.fo, %i.fp
  %.fr = freeze i1 %i.fu
  %.not129135 = icmp slt i64 %i.fq, -6
  %or.cond131136 = select i1 %.fr, i1 true, i1 %.not129135
  br i1 %or.cond131136, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split.preheader

.lr.ph139.split.preheader:                        ; preds = %bb.h
  %i.fv = call i64 @llvm.smax.i64(i64 %i.ft, i64 0)
  %i.fw = add nuw nsw i64 %i.fv, 1                ; 2 uses
  %min.iters.check = icmp slt i64 %i.fq, 137
  br i1 %min.iters.check, label %.lr.ph139.split.preheader261, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph139.split.preheader
  %i.fx = call i64 @llvm.smax.i64(i64 %i.ft, i64 0)
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = icmp eq i64 %i.fy, 4294967295
  %i.ga = icmp sgt i64 %i.fq, 34359738368
  %i.gb = or i1 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph139.split.preheader261, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gc = add i64 %i.fp, %i.et
  %i.gd = sub i64 %i.gc, %.0104141217
  %diff.check = icmp ugt i64 %i.gd, -32
  br i1 %diff.check, label %.lr.ph139.split.preheader261, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load = load <2 x i64>, ptr %i.ge, align 8, !tbaa !96
  %wide.load218 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0104141, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <2 x i64> %wide.load, ptr %i.gg, align 8, !tbaa !96
  store <2 x i64> %wide.load218, ptr %i.gh, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split.preheader261

.lr.ph139.split.preheader261:                     ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph139.split.preheader, %middle.block
  %.ph262 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph139.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph139.split

_ZN5arrow8bit_util7CeilDivEll.exit.thread:        ; preds = %.lr.ph139.split, %middle.block, %bb.h
  %i.gj = getelementptr inbounds i8, ptr %.0104141, i64 %i.fq
  %indvars.iv.next185.a = add nuw nsw i64 %indvars.iv184.a, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185.a, %i.a
  br i1 %exitcond188.not, label %.critedge.thread, label %bb.e, !llvm.loop !162

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader261, %.lr.ph139.split
  %i.gk = phi i64 [ %indvars.iv.next185, %.lr.ph139.split ], [ %.ph262, %.lr.ph139.split.preheader261 ] ; 3 uses
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gk
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !96
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %.0104141, i64 %i.gk
  store i64 %i.gm, ptr %i.gn, align 8, !tbaa !96
  %indvars.iv.next185 = add i64 %i.gk, 1          ; 2 uses
  %7 = and i64 %indvars.iv.next185, 4294967295
  %.not129 = icmp slt i64 %i.ft, %7
  br i1 %.not129, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split, !llvm.loop !163

bb.i:                                             ; preds = %bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !70
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !105 ; 4 uses
  %i.gv = zext i32 %i.gu to i64                   ; 4 uses
  %.not167 = icmp eq i32 %3, 0
  br i1 %.not167, label %.critedge.thread, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.i
  %.not119 = icmp eq ptr %4, null
  %i.gw = add nsw i64 %i.gv, -1
  %i.gx = sdiv i64 %i.gw, 8                       ; 3 uses
  %i.gy = icmp eq i32 %i.gu, 0
  br i1 %i.gy, label %.critedge.thread, label %.lr.ph154.split.split.preheader

.lr.ph154.split.split.preheader:                  ; preds = %.lr.ph154
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !70 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 9
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !79, !range !34, !noundef !35
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hf = load i8, ptr %i.he, align 8, !range !34
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = select i1 %i.hd, i1 %i.hg, i1 false, !prof !69
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = select i1 %i.hh, ptr %i.hj, ptr null, !prof !69 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !113
  %i.hn = mul i64 %i.hm, %i.gv                    ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %i.hn
  %i.hp = ptrtoaddr ptr %i.hk to i64
  %i.hq = tail call i64 @llvm.smax.i64(i64 %i.gx, i64 0)
  %i.hr = add i64 %i.hn, %i.hp
  %i.hs = tail call i64 @llvm.smax.i64(i64 %i.gx, i64 0)
  %i.ht = add nuw nsw i64 %i.hs, 1                ; 2 uses
  %min.iters.check225 = icmp ult i32 %i.gu, 89
  %i.hu = and i64 %i.hq, 4294967295
  %i.hv = icmp eq i64 %i.hu, 4294967295
  %or.cond = select i1 %min.iters.check225, i1 true, i1 %i.hv
  %n.vec228 = and i64 %i.ht, 9223372036854775804  ; 3 uses
  %cmp.n235 = icmp eq i64 %i.ht, %n.vec228
  br label %.lr.ph154.split.split

.lr.ph154.split.split:                            ; preds = %.lr.ph154.split.split.preheader, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ 0, %.lr.ph154.split.split.preheader ] ; 4 uses
  %.0109151 = phi ptr [ %i.in, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ %i.ho, %.lr.ph154.split.split.preheader ] ; 3 uses
  %i.hw = mul i64 %indvars.iv189, %i.gv
  %i.hx = add i64 %i.hr, %i.hw
  br i1 %.not119, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph154.split.split
  %i.hy = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv189
  %i.hz = load i16, ptr %i.hy, align 2, !tbaa !152
  br label %.lr.ph148

bb.k:                                             ; preds = %.lr.ph154.split.split
  %i.ia = trunc i64 %indvars.iv189 to i16
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.k, %bb.j
  %i.ib = phi i16 [ %i.hz, %bb.j ], [ %i.ia, %bb.k ]
  %i.ic = zext i16 %i.ib to i32
  %i.id = mul i32 %i.gu, %i.ic
  %i.ie = zext i32 %i.id to i64                   ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ie ; 2 uses
  br i1 %or.cond, label %scalar.ph224.preheader, label %vector.memcheck222

vector.memcheck222:                               ; preds = %.lr.ph148
  %i.ig = add nuw i64 %i.gs, %i.ie
  %i.ih = sub i64 %i.ig, %i.hx
  %diff.check223 = icmp ugt i64 %i.ih, -32
  br i1 %diff.check223, label %scalar.ph224.preheader, label %vector.body229

vector.body229:                                   ; preds = %vector.memcheck222, %vector.body229
  %index230 = phi i64 [ %index.next233, %vector.body229 ], [ 0, %vector.memcheck222 ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %index230 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  %wide.load231 = load <2 x i64>, ptr %i.ii, align 8, !tbaa !96
  %wide.load232 = load <2 x i64>, ptr %i.ij, align 8, !tbaa !96
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %.0109151, i64 %index230 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 16
  store <2 x i64> %wide.load231, ptr %i.ik, align 8, !tbaa !96
  store <2 x i64> %wide.load232, ptr %i.il, align 8, !tbaa !96
  %index.next233 = add nuw i64 %index230, 4       ; 2 uses
  %i.im = icmp eq i64 %index.next233, %n.vec228
  br i1 %i.im, label %middle.block234, label %vector.body229, !llvm.loop !164

middle.block234:                                  ; preds = %vector.body229
  br i1 %cmp.n235, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph224.preheader

scalar.ph224.preheader:                           ; preds = %vector.memcheck222, %.lr.ph148, %middle.block234
  %.ph = phi i64 [ 0, %vector.memcheck222 ], [ 0, %.lr.ph148 ], [ %n.vec228, %middle.block234 ]
  br label %scalar.ph224

._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split: ; preds = %scalar.ph224, %middle.block234
  %i.in = getelementptr inbounds nuw i8, ptr %.0109151, i64 %i.gv
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %i.a
  br i1 %exitcond193.not, label %.critedge.thread, label %.lr.ph154.split.split, !llvm.loop !165

scalar.ph224:                                     ; preds = %scalar.ph224.preheader, %scalar.ph224
  %i.io = phi i64 [ %indvars.iv.next194, %scalar.ph224 ], [ %.ph, %scalar.ph224.preheader ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %i.if, i64 %i.io
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !96
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %.0109151, i64 %i.io
  store i64 %i.iq, ptr %i.ir, align 8, !tbaa !96
  %indvars.iv.next194 = add i64 %i.io, 1          ; 2 uses
  %8 = and i64 %indvars.iv.next194, 4294967295
  %.not130 = icmp slt i64 %i.gx, %8
  br i1 %.not130, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph224, !llvm.loop !166

.critedge.thread:                                 ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.thread, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, %.lr.ph154, %_ZN5arrow6StatusD2Ev.exit126, %bb.i
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.it = load i32, ptr %i.is, align 4, !tbaa !65 ; 5 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.iv = zext i32 %i.it to i64                   ; 11 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !70
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 16
  %i.iz = load ptr, ptr %i.iy, align 8            ; 2 uses
  %i.ja = ptrtoaddr ptr %i.iz to i64
  %i.jb = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !70
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 16
  %i.je = load ptr, ptr %i.jd, align 8            ; 2 uses
  %i.jf = ptrtoaddr ptr %i.je to i64
  %.not168 = icmp eq i32 %3, 0
  %.pre204 = load i64, ptr %i.iu, align 8, !tbaa !113 ; 3 uses
  br i1 %.not168, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.critedge.thread
  %.not118 = icmp eq ptr %4, null
  %.not169 = icmp eq i32 %i.it, 0
  br i1 %.not169, label %._crit_edge164, label %.lr.ph163.split.us.preheader

.lr.ph163.split.us.preheader:                     ; preds = %.lr.ph163
  %i.jg = mul i64 %.pre204, %i.iv                 ; 2 uses
  %i.jh = add i64 %i.jg, %i.jf
  %min.iters.check241 = icmp ult i32 %i.it, 4
  %min.iters.check242 = icmp ult i32 %i.it, 32
  %n.mod.vf244 = and i64 %i.iv, 28
  %n.vec245 = and i64 %i.iv, 4294967264           ; 4 uses
  %cmp.n252 = icmp eq i64 %n.vec245, %i.iv
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf244, 0
  %n.vec254 = and i64 %i.iv, 4294967292           ; 3 uses
  %cmp.n258 = icmp eq i64 %n.vec254, %i.iv
  %xtraiter274 = and i64 %i.iv, 3                 ; 2 uses
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br label %.lr.ph163.split.us

.lr.ph163.split.us:                               ; preds = %.lr.ph163.split.us.preheader, %._crit_edge160.us
  %indvars.iv199 = phi i64 [ 0, %.lr.ph163.split.us.preheader ], [ %indvars.iv.next200, %._crit_edge160.us ] ; 4 uses
  %.0105161.us = phi i64 [ %i.jg, %.lr.ph163.split.us.preheader ], [ %i.ku, %._crit_edge160.us ] ; 2 uses
  %i.ji = mul i64 %indvars.iv199, %i.iv
  %i.jj = add i64 %i.jh, %i.ji
  %i.jk = trunc nuw i64 %indvars.iv199 to i32
  br i1 %.not118, label %iter.check, label %bb.l

bb.l:                                             ; preds = %.lr.ph163.split.us
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv199
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !152
  %i.jn = zext i16 %i.jm to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.l, %.lr.ph163.split.us
  %i.jo = phi i32 [ %i.jn, %bb.l ], [ %i.jk, %.lr.ph163.split.us ]
  %i.jp = mul i32 %i.jo, %i.it
  %i.jq = zext i32 %i.jp to i64                   ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.iz, i64 %i.jq ; 7 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.je, i64 %.0105161.us ; 7 uses
  br i1 %min.iters.check241, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck238

vector.memcheck238:                               ; preds = %iter.check
  %i.jt = add nuw i64 %i.ja, %i.jq
  %i.ju = sub i64 %i.jt, %i.jj
  %diff.check239 = icmp ugt i64 %i.ju, -32
  br i1 %diff.check239, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck238
  br i1 %min.iters.check242, label %vec.epilog.ph, label %vector.body246

vector.body246:                                   ; preds = %vector.main.loop.iter.check, %vector.body246
  %index247 = phi i64 [ %index.next250, %vector.body246 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index247 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  %wide.load248 = load <16 x i8>, ptr %i.jv, align 1, !tbaa !130
  %wide.load249 = load <16 x i8>, ptr %i.jw, align 1, !tbaa !130
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 %index247 ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16
  store <16 x i8> %wide.load248, ptr %i.jx, align 1, !tbaa !130
  store <16 x i8> %wide.load249, ptr %i.jy, align 1, !tbaa !130
  %index.next250 = add nuw i64 %index247, 32      ; 2 uses
  %i.jz = icmp eq i64 %index.next250, %n.vec245
  br i1 %i.jz, label %middle.block251, label %vector.body246, !llvm.loop !167

middle.block251:                                  ; preds = %vector.body246
  br i1 %cmp.n252, label %._crit_edge160.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block251
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec245, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index255 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next257, %vec.epilog.vector.body ] ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jr, i64 %index255
  %wide.load256 = load <4 x i8>, ptr %i.ka, align 1, !tbaa !130
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 %index255
  store <4 x i8> %wide.load256, ptr %i.kb, align 1, !tbaa !130
  %index.next257 = add nuw i64 %index255, 4       ; 2 uses
  %i.kc = icmp eq i64 %index.next257, %n.vec254
  br i1 %i.kc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n258, label %._crit_edge160.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck238, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv194.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck238 ], [ %n.vec245, %vec.epilog.iter.check ], [ %n.vec254, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod275.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv194.prol = phi i64 [ %indvars.iv.next195.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv194.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv194.prol
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !130
  %i.kf = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv194.prol
  store i8 %i.ke, ptr %i.kf, align 1, !tbaa !130
  %indvars.iv.next195.prol = add nuw nsw i64 %indvars.iv194.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter274
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !170

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next195.prol, %vec.epilog.scalar.ph.prol ]
  %i.kg = sub nsw i64 %indvars.iv194.ph, %i.iv
  %i.kh = icmp ugt i64 %i.kg, -4
  br i1 %i.kh, label %._crit_edge160.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.3, %vec.epilog.scalar.ph ], [ %indvars.iv194.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv194
  %i.kj = load i8, ptr %i.ki, align 1, !tbaa !130
  %i.kk = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv194
  store i8 %i.kj, ptr %i.kk, align 1, !tbaa !130
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next195
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !130
  %i.kn = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv.next195
  store i8 %i.km, ptr %i.kn, align 1, !tbaa !130
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next195.1
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !130
  %i.kq = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv.next195.1
  store i8 %i.kp, ptr %i.kq, align 1, !tbaa !130
  %indvars.iv.next195.2 = add nuw nsw i64 %indvars.iv194, 3 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jr, i64 %indvars.iv.next195.2
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !130
  %i.kt = getelementptr inbounds nuw i8, ptr %i.js, i64 %indvars.iv.next195.2
  store i8 %i.ks, ptr %i.kt, align 1, !tbaa !130
  %indvars.iv.next195.3 = add nuw nsw i64 %indvars.iv194, 4 ; 2 uses
  %exitcond198.not.3 = icmp eq i64 %indvars.iv.next195.3, %i.iv
  br i1 %exitcond198.not.3, label %._crit_edge160.us, label %vec.epilog.scalar.ph, !llvm.loop !171

._crit_edge160.us:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block251
  %i.ku = add i64 %.0105161.us, %i.iv
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %i.a
  br i1 %exitcond203.not, label %._crit_edge164.loopexit170, label %.lr.ph163.split.us, !llvm.loop !172

._crit_edge164.loopexit170:                       ; preds = %._crit_edge160.us
  %.pre = load i64, ptr %i.iu, align 8, !tbaa !113
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %.lr.ph163, %._crit_edge164.loopexit170, %.critedge.thread
  %i.kv = phi i64 [ %.pre, %._crit_edge164.loopexit170 ], [ %.pre204, %.critedge.thread ], [ %.pre204, %.lr.ph163 ]
  %i.kw = add nsw i64 %i.kv, %i.a
  store i64 %i.kw, ptr %i.iu, align 8, !tbaa !113
  br label %.sink.split

.sink.split:                                      ; preds = %_ZN5arrow6StatusD2Ev.exit.i, %._crit_edge164
  %.sink = phi ptr [ null, %._crit_edge164 ], [ %i.cp, %_ZN5arrow6StatusD2Ev.exit.i ]
  store ptr %.sink, ptr %0, align 8, !tbaa !66
  br label %bb.m

bb.m:                                             ; preds = %.sink.split, %_ZN5arrow6StatusD2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute12RowTableImpl11AppendEmptyEjl(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.arrow::Status") align 8 captures(none) initializes((0, 8)) %0, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(209) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
_ZN5arrow6StatusD2Ev.exit:
  %4 = alloca %"class.arrow::Status", align 8     ; 4 uses
  %5 = alloca %"class.arrow::Status", align 8     ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.a = zext i32 %2 to i64                       ; 2 uses
  call void @_ZN5arrow7compute12RowTableImpl24ResizeFixedLengthBuffersEl(ptr dead_on_unwind nonnull writable sret(%"class.arrow::Status") align 8 %5, ptr noundef nonnull align 8 dereferenceable(209) %1, i64 noundef %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !173)
  %i.b = load ptr, ptr %5, align 8, !tbaa !66, !noalias !173 ; 2 uses
  store ptr %i.b, ptr %0, align 8, !tbaa !66, !alias.scope !173
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.a, label %bb.g

bb.a:                                             ; preds = %_ZN5arrow6StatusD2Ev.exit
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !111, !range !34, !noundef !35
  %i.f = trunc nuw i8 %i.e to i1
end_hunk_0
