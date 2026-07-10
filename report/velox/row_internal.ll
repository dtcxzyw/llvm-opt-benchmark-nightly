inline.NumInlined: 692
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute12RowTableImpl19AppendSelectionFromERKS1_jPKt:_ZN5arrow6StatusD2Ev.exit
._crit_edge.loopexit265.unr-lcssa:                ; preds = %.lr.ph.split
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.split.epil.preheader

.lr.ph.split.epil.preheader:                      ; preds = %._crit_edge.loopexit265.unr-lcssa, %.lr.ph.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit265.unr-lcssa ] ; 2 uses
  %.0100134.epil.init = phi i64 [ 0, %.lr.ph.split.preheader ], [ %i.ej, %._crit_edge.loopexit265.unr-lcssa ]
  %lcmp.mod268 = trunc i32 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
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

._crit_edge:                                      ; preds = %.lr.ph.split.epil.preheader, %._crit_edge.loopexit265.unr-lcssa, %.lr.ph.split.us.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.b
  %.0100.lcssa = phi i64 [ 0, %bb.b ], [ %i.bc, %.lr.ph.split.us.epil.preheader ], [ %i.aq, %._crit_edge.loopexit.unr-lcssa ], [ %i.ej, %._crit_edge.loopexit265.unr-lcssa ], [ %i.bq, %.lr.ph.split.epil.preheader ]
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
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit265.unr-lcssa, label %.lr.ph.split, !llvm.loop !151

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
  %.0104141 = phi ptr [ %i.fg, %.lr.ph143 ], [ %i.gi, %_ZN5arrow8bit_util7CeilDivEll.exit.thread ] ; 4 uses
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
  %smax218 = add nuw nsw i64 %i.fv, 1             ; 2 uses
  %min.iters.check = icmp slt i64 %i.fq, 185
  br i1 %min.iters.check, label %.lr.ph139.split.preheader262, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph139.split.preheader
  %i.fw = call i64 @llvm.smax.i64(i64 %i.ft, i64 0)
  %i.fx = and i64 %i.fw, 4294967295
  %i.fy = icmp eq i64 %i.fx, 4294967295
  %i.fz = icmp sgt i64 %i.fq, 34359738368
  %i.ga = or i1 %i.fy, %i.fz
  br i1 %i.ga, label %.lr.ph139.split.preheader262, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gb = add i64 %i.fp, %i.et
  %i.gc = sub i64 %i.gb, %.0104141217
  %diff.check = icmp ugt i64 %i.gc, -32
  br i1 %diff.check, label %.lr.ph139.split.preheader262, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %smax218, 9223372036854775804  ; 4 uses
  %7 = trunc i64 %n.vec to i32
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 16
  %wide.load = load <2 x i64>, ptr %i.gd, align 8, !tbaa !96
  %wide.load219 = load <2 x i64>, ptr %i.ge, align 8, !tbaa !96
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %.0104141, i64 %index ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <2 x i64> %wide.load, ptr %i.gf, align 8, !tbaa !96
  store <2 x i64> %wide.load219, ptr %i.gg, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gh = icmp eq i64 %index.next, %n.vec
  br i1 %i.gh, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %smax218, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split.preheader262

.lr.ph139.split.preheader262:                     ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph139.split.preheader, %middle.block
  %.ph263 = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph139.split.preheader ], [ %n.vec, %middle.block ]
  %.0108137.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph139.split.preheader ], [ %7, %middle.block ]
  br label %.lr.ph139.split

_ZN5arrow8bit_util7CeilDivEll.exit.thread:        ; preds = %.lr.ph139.split, %middle.block, %bb.h
  %i.gi = getelementptr inbounds i8, ptr %.0104141, i64 %i.fq
  %indvars.iv.next185.a = add nuw nsw i64 %indvars.iv184.a, 1 ; 2 uses
  %exitcond188.not = icmp eq i64 %indvars.iv.next185.a, %i.a
  br i1 %exitcond188.not, label %.critedge.thread, label %bb.e, !llvm.loop !162

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader262, %.lr.ph139.split
  %i.gj = phi i64 [ %9, %.lr.ph139.split ], [ %.ph263, %.lr.ph139.split.preheader262 ] ; 2 uses
  %.0108137 = phi i32 [ %8, %.lr.ph139.split ], [ %.0108137.ph, %.lr.ph139.split.preheader262 ]
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.gj
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !96
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0104141, i64 %i.gj
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !96
  %8 = add i32 %.0108137, 1                       ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %.not129 = icmp slt i64 %i.ft, %9
  br i1 %.not129, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split, !llvm.loop !163

bb.i:                                             ; preds = %bb.a
  %i.gn = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !70
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.gq = load ptr, ptr %i.gp, align 8            ; 2 uses
  %i.gr = ptrtoaddr ptr %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !105 ; 4 uses
  %i.gu = zext i32 %i.gt to i64                   ; 4 uses
  %.not167 = icmp eq i32 %3, 0
  br i1 %.not167, label %.critedge.thread, label %.lr.ph154

.lr.ph154:                                        ; preds = %bb.i
  %.not119 = icmp eq ptr %4, null
  %i.gv = add nsw i64 %i.gu, -1
  %i.gw = sdiv i64 %i.gv, 8                       ; 2 uses
  %i.gx = icmp eq i32 %i.gt, 0
  br i1 %i.gx, label %.critedge.thread, label %.lr.ph154.split.split.preheader

.lr.ph154.split.split.preheader:                  ; preds = %.lr.ph154
  %i.gy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !70 ; 3 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 9
  %i.hb = load i8, ptr %i.ha, align 1, !tbaa !79, !range !34, !noundef !35
  %i.hc = trunc nuw i8 %i.hb to i1
  %i.hd = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.he = load i8, ptr %i.hd, align 8, !range !34
  %i.hf = trunc nuw i8 %i.he to i1
  %i.hg = select i1 %i.hc, i1 %i.hf, i1 false, !prof !69
  %i.hh = getelementptr inbounds nuw i8, ptr %i.gz, i64 16
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = select i1 %i.hg, ptr %i.hi, ptr null, !prof !69 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !113
  %i.hm = mul i64 %i.hl, %i.gu                    ; 2 uses
  %i.hn = getelementptr inbounds i8, ptr %i.hj, i64 %i.hm
  %i.ho = ptrtoaddr ptr %i.hj to i64
  %i.hp = add nsw i64 %i.gw, 1                    ; 2 uses
  %smax222 = tail call i64 @llvm.smax.i64(i64 %i.hp, i64 1)
  %i.hq = add i64 %i.hm, %i.ho
  %smax225 = tail call i64 @llvm.smax.i64(i64 %i.hp, i64 1) ; 2 uses
  %min.iters.check227 = icmp ult i32 %i.gt, 121
  %i.hr = sub nsw i64 0, %smax222
  %i.hs = and i64 %i.hr, 4294967295
  %i.ht = icmp eq i64 %i.hs, 0
  %n.vec230 = and i64 %smax225, 9223372036854775804 ; 4 uses
  %10 = trunc i64 %n.vec230 to i32
  %cmp.n237 = icmp eq i64 %smax225, %n.vec230
  br label %.lr.ph154.split.split

.lr.ph154.split.split:                            ; preds = %.lr.ph154.split.split.preheader, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ 0, %.lr.ph154.split.split.preheader ] ; 4 uses
  %.0109151 = phi ptr [ %i.il, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ %i.hn, %.lr.ph154.split.split.preheader ] ; 3 uses
  %i.hu = mul i64 %indvars.iv189, %i.gu
  %i.hv = add i64 %i.hq, %i.hu
  br i1 %.not119, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph154.split.split
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv189
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !152
  br label %.lr.ph148

bb.k:                                             ; preds = %.lr.ph154.split.split
  %i.hy = trunc i64 %indvars.iv189 to i16
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.k, %bb.j
  %i.hz = phi i16 [ %i.hx, %bb.j ], [ %i.hy, %bb.k ]
  %i.ia = zext i16 %i.hz to i32
  %i.ib = mul i32 %i.gt, %i.ia
  %i.ic = zext i32 %i.ib to i64                   ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.gq, i64 %i.ic ; 2 uses
  %brmerge = select i1 %min.iters.check227, i1 true, i1 %i.ht
  br i1 %brmerge, label %scalar.ph226.preheader, label %vector.memcheck223

vector.memcheck223:                               ; preds = %.lr.ph148
  %i.ie = add nuw i64 %i.gr, %i.ic
  %i.if = sub i64 %i.ie, %i.hv
  %diff.check224 = icmp ugt i64 %i.if, -32
  br i1 %diff.check224, label %scalar.ph226.preheader, label %vector.body231

vector.body231:                                   ; preds = %vector.memcheck223, %vector.body231
  %index232 = phi i64 [ %index.next235, %vector.body231 ], [ 0, %vector.memcheck223 ] ; 3 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %index232 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %wide.load233 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !96
  %wide.load234 = load <2 x i64>, ptr %i.ih, align 8, !tbaa !96
  %i.ii = getelementptr inbounds nuw [8 x i8], ptr %.0109151, i64 %index232 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <2 x i64> %wide.load233, ptr %i.ii, align 8, !tbaa !96
  store <2 x i64> %wide.load234, ptr %i.ij, align 8, !tbaa !96
  %index.next235 = add nuw i64 %index232, 4       ; 2 uses
  %i.ik = icmp eq i64 %index.next235, %n.vec230
  br i1 %i.ik, label %middle.block236, label %vector.body231, !llvm.loop !164

middle.block236:                                  ; preds = %vector.body231
  br i1 %cmp.n237, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph226.preheader

scalar.ph226.preheader:                           ; preds = %.lr.ph148, %vector.memcheck223, %middle.block236
  %.ph = phi i64 [ 0, %vector.memcheck223 ], [ %n.vec230, %middle.block236 ], [ 0, %.lr.ph148 ]
  %.0107146.ph = phi i32 [ 0, %vector.memcheck223 ], [ %10, %middle.block236 ], [ 0, %.lr.ph148 ]
  br label %scalar.ph226

._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split: ; preds = %scalar.ph226, %middle.block236
  %i.il = getelementptr inbounds nuw i8, ptr %.0109151, i64 %i.gu
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %exitcond193.not = icmp eq i64 %indvars.iv.next190, %i.a
  br i1 %exitcond193.not, label %.critedge.thread, label %.lr.ph154.split.split, !llvm.loop !165

scalar.ph226:                                     ; preds = %scalar.ph226.preheader, %scalar.ph226
  %i.im = phi i64 [ %12, %scalar.ph226 ], [ %.ph, %scalar.ph226.preheader ] ; 2 uses
  %.0107146 = phi i32 [ %11, %scalar.ph226 ], [ %.0107146.ph, %scalar.ph226.preheader ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.id, i64 %i.im
  %i.io = load i64, ptr %i.in, align 8, !tbaa !96
  %i.ip = getelementptr inbounds nuw [8 x i8], ptr %.0109151, i64 %i.im
  store i64 %i.io, ptr %i.ip, align 8, !tbaa !96
  %11 = add i32 %.0107146, 1                      ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %.not130 = icmp slt i64 %i.gw, %12
  br i1 %.not130, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph226, !llvm.loop !166

.critedge.thread:                                 ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.thread, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, %.lr.ph154, %_ZN5arrow6StatusD2Ev.exit126, %bb.i
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !65 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.it = zext i32 %i.ir to i64                   ; 11 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !70
  %i.iw = getelementptr inbounds nuw i8, ptr %i.iv, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  %i.iy = ptrtoaddr ptr %i.ix to i64
  %i.iz = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !70
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8            ; 2 uses
  %i.jd = ptrtoaddr ptr %i.jc to i64
  %.not168 = icmp eq i32 %3, 0
  %.pre204 = load i64, ptr %i.is, align 8, !tbaa !113 ; 3 uses
  br i1 %.not168, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.critedge.thread
  %.not118 = icmp eq ptr %4, null
  %.not169 = icmp eq i32 %i.ir, 0
  br i1 %.not169, label %._crit_edge164, label %.lr.ph163.split.us.preheader

.lr.ph163.split.us.preheader:                     ; preds = %.lr.ph163
  %i.je = mul i64 %.pre204, %i.it                 ; 2 uses
  %i.jf = add i64 %i.je, %i.jd
  %min.iters.check243 = icmp ult i32 %i.ir, 4
  %min.iters.check244 = icmp ult i32 %i.ir, 32
  %n.mod.vf246 = and i64 %i.it, 28
  %n.vec247 = and i64 %i.it, 4294967264           ; 4 uses
  %cmp.n254 = icmp eq i64 %n.vec247, %i.it
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf246, 0
  %n.vec256 = and i64 %i.it, 4294967292           ; 3 uses
  %cmp.n260 = icmp eq i64 %n.vec256, %i.it
  %xtraiter275 = and i64 %i.it, 3                 ; 2 uses
  %lcmp.mod276.not = icmp eq i64 %xtraiter275, 0
  br label %.lr.ph163.split.us

.lr.ph163.split.us:                               ; preds = %.lr.ph163.split.us.preheader, %._crit_edge160.us
  %indvars.iv199 = phi i64 [ 0, %.lr.ph163.split.us.preheader ], [ %indvars.iv.next200, %._crit_edge160.us ] ; 4 uses
  %.0105161.us = phi i64 [ %i.je, %.lr.ph163.split.us.preheader ], [ %i.ks, %._crit_edge160.us ] ; 2 uses
  %i.jg = mul i64 %indvars.iv199, %i.it
  %i.jh = add i64 %i.jf, %i.jg
  %i.ji = trunc nuw i64 %indvars.iv199 to i32
  br i1 %.not118, label %iter.check, label %bb.l

bb.l:                                             ; preds = %.lr.ph163.split.us
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv199
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !152
  %i.jl = zext i16 %i.jk to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.l, %.lr.ph163.split.us
  %i.jm = phi i32 [ %i.jl, %bb.l ], [ %i.ji, %.lr.ph163.split.us ]
  %i.jn = mul i32 %i.jm, %i.ir
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ix, i64 %i.jo ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.0105161.us ; 7 uses
  br i1 %min.iters.check243, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck240

vector.memcheck240:                               ; preds = %iter.check
  %i.jr = add nuw i64 %i.iy, %i.jo
  %i.js = sub i64 %i.jr, %i.jh
  %diff.check241 = icmp ugt i64 %i.js, -32
  br i1 %diff.check241, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck240
  br i1 %min.iters.check244, label %vec.epilog.ph, label %vector.body248

vector.body248:                                   ; preds = %vector.main.loop.iter.check, %vector.body248
  %index249 = phi i64 [ %index.next252, %vector.body248 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 %index249 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load250 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !130
  %wide.load251 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !130
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index249 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <16 x i8> %wide.load250, ptr %i.jv, align 1, !tbaa !130
  store <16 x i8> %wide.load251, ptr %i.jw, align 1, !tbaa !130
  %index.next252 = add nuw i64 %index249, 32      ; 2 uses
  %i.jx = icmp eq i64 %index.next252, %n.vec247
  br i1 %i.jx, label %middle.block253, label %vector.body248, !llvm.loop !167

middle.block253:                                  ; preds = %vector.body248
  br i1 %cmp.n254, label %._crit_edge160.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block253
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !168

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec247, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index257 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next259, %vec.epilog.vector.body ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 %index257
  %wide.load258 = load <4 x i8>, ptr %i.jy, align 1, !tbaa !130
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index257
  store <4 x i8> %wide.load258, ptr %i.jz, align 1, !tbaa !130
  %index.next259 = add nuw i64 %index257, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next259, %n.vec256
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !169

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n260, label %._crit_edge160.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck240, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv194.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck240 ], [ %n.vec247, %vec.epilog.iter.check ], [ %n.vec256, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod276.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv194.prol = phi i64 [ %indvars.iv.next195.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv194.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv194.prol
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !130
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv194.prol
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !130
  %indvars.iv.next195.prol = add nuw nsw i64 %indvars.iv194.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter275
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !170

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv194.unr = phi i64 [ %indvars.iv194.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next195.prol, %vec.epilog.scalar.ph.prol ]
  %i.ke = sub nsw i64 %indvars.iv194.ph, %i.it
  %i.kf = icmp ugt i64 %i.ke, -4
  br i1 %i.kf, label %._crit_edge160.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv194 = phi i64 [ %indvars.iv.next195.3, %vec.epilog.scalar.ph ], [ %indvars.iv194.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv194
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !130
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv194
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !130
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next195
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !130
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next195
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !130
  %indvars.iv.next195.1 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next195.1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !130
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next195.1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !130
  %indvars.iv.next195.2 = add nuw nsw i64 %indvars.iv194, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next195.2
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !130
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next195.2
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !130
  %indvars.iv.next195.3 = add nuw nsw i64 %indvars.iv194, 4 ; 2 uses
  %exitcond198.not.3 = icmp eq i64 %indvars.iv.next195.3, %i.it
  br i1 %exitcond198.not.3, label %._crit_edge160.us, label %vec.epilog.scalar.ph, !llvm.loop !171

._crit_edge160.us:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block253
  %i.ks = add i64 %.0105161.us, %i.it
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next200, %i.a
  br i1 %exitcond203.not, label %._crit_edge164.loopexit170, label %.lr.ph163.split.us, !llvm.loop !172

._crit_edge164.loopexit170:                       ; preds = %._crit_edge160.us
  %.pre = load i64, ptr %i.is, align 8, !tbaa !113
  br label %._crit_edge164

._crit_edge164:                                   ; preds = %.lr.ph163, %._crit_edge164.loopexit170, %.critedge.thread
  %i.kt = phi i64 [ %.pre, %._crit_edge164.loopexit170 ], [ %.pre204, %.critedge.thread ], [ %.pre204, %.lr.ph163 ]
  %i.ku = add nsw i64 %i.kt, %i.a
  store i64 %i.ku, ptr %i.is, align 8, !tbaa !113
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
