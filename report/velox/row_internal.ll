Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/row_internal?download=true
inline.NumInlined: 692
inline.NumDeleted: 297
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN5arrow7compute12RowTableImpl19AppendSelectionFromERKS1_jPKt:_ZN5arrow6StatusD2Ev.exit
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.da = load ptr, ptr %i.cz, align 8, !noalias !175
  %i.db = select i1 %i.cy, ptr %i.da, ptr null, !prof !56
  %i.dc = load i64, ptr %i.cd, align 8, !tbaa !73, !noalias !175 ; 2 uses
  %i.dd = getelementptr i8, ptr %i.db, i64 %i.dc
  %i.de = getelementptr i8, ptr %i.dd, i64 64
  %i.df = sub nsw i64 %.011.i, %i.dc
  call void @llvm.memset.p0.i64(ptr align 1 %i.de, i8 0, i64 %i.df, i1 false), !noalias !175
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !57, !noalias !175
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %i.dh, ptr %i.di, align 8, !tbaa !57, !noalias !175
  %i.dj = load i8, ptr %i.d, align 8, !tbaa !76, !range !32, !noalias !175, !noundef !33
  %i.dk = trunc nuw i8 %i.dj to i1                ; 2 uses
  %i.dl = load ptr, ptr %i.cj, align 8, !noalias !175
  %.sink1.in.v.i.i = select i1 %i.dk, i64 144, i64 136
  %.sink1.in.i.i = getelementptr inbounds nuw i8, ptr %1, i64 %.sink1.in.v.i.i
  %.sink.i.i = select i1 %i.dk, ptr null, ptr %i.dl
  %.sink1.i.i = load ptr, ptr %.sink1.in.i.i, align 8, !tbaa !57, !noalias !175
  store ptr %.sink1.i.i, ptr %i.bw, align 8, !tbaa !57, !noalias !175
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 168
  store ptr %.sink.i.i, ptr %i.dm, align 8, !tbaa !57, !noalias !175
  store i64 %.011.i, ptr %i.cd, align 8, !tbaa !73, !noalias !175
  br label %_ZN5arrow6StatusD2Ev.exit126

.lr.ph.split:                                     ; preds = %.lr.ph.split, %.lr.ph.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %indvars.iv.next.1, %.lr.ph.split ] ; 4 uses
  %.0109133 = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %i.ej, %.lr.ph.split ]
  %niter = phi i64 [ 0, %.lr.ph.split.preheader.new ], [ %niter.next.1, %.lr.ph.split ]
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !174
  %i.dp = zext i16 %i.do to i64
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.dp ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !72
  %i.dt = load i64, ptr %i.dq, align 8, !tbaa !72
  %i.du = sub nsw i64 %i.ds, %i.dt
  %i.dv = add nsw i64 %i.du, %.0109133            ; 2 uses
  %i.dw = add nsw i64 %i.dv, %i.v
  %i.dx = load i64, ptr %i.s, align 8, !tbaa !78
  %i.dy = getelementptr [8 x i8], ptr %i.r, i64 %i.dx
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %indvars.iv
  %i.ea = getelementptr i8, ptr %i.dz, i64 8
  store i64 %i.dw, ptr %i.ea, align 8, !tbaa !72
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.eb = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv.next
  %i.ec = load i16, ptr %i.eb, align 2, !tbaa !174
  %i.ed = zext i16 %i.ec to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.ed ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !72
  %i.eh = load i64, ptr %i.ee, align 8, !tbaa !72
  %i.ei = sub nsw i64 %i.eg, %i.eh
  %i.ej = add nsw i64 %i.ei, %i.dv                ; 4 uses
  %i.ek = add nsw i64 %i.ej, %i.v
  %i.el = load i64, ptr %i.s, align 8, !tbaa !78
  %i.em = getelementptr [8 x i8], ptr %i.r, i64 %i.el
  %i.en = getelementptr [8 x i8], ptr %i.em, i64 %indvars.iv.next
  %i.eo = getelementptr i8, ptr %i.en, i64 8
  store i64 %i.ek, ptr %i.eo, align 8, !tbaa !72
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit269.unr-lcssa, label %.lr.ph.split, !llvm.loop !156

_ZN5arrow6StatusD2Ev.exit126:                     ; preds = %_ZN5arrow6StatusD2Ev.exit15.i, %._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8            ; 2 uses
  %i.et = ptrtoaddr ptr %i.es to i64
  br i1 %.not165, label %.critedge.thread, label %.lr.ph143

.lr.ph143:                                        ; preds = %_ZN5arrow6StatusD2Ev.exit126
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !57 ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 9
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !71, !range !32, !noundef !33
  %i.ey = trunc nuw i8 %i.ex to i1
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.fa = load i8, ptr %i.ez, align 8, !range !32
  %i.fb = trunc nuw i8 %i.fa to i1
  %i.fc = select i1 %i.ey, i1 %i.fb, i1 false, !prof !56
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = select i1 %i.fc, ptr %i.fe, ptr null, !prof !56
  %i.fg = getelementptr inbounds i8, ptr %i.ff, i64 %i.v
  %.not = icmp eq ptr %4, null
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph143, %_ZN5arrow8bit_util7CeilDivEll.exit.thread
  %indvars.iv187 = phi i64 [ 0, %.lr.ph143 ], [ %indvars.iv.next188, %_ZN5arrow8bit_util7CeilDivEll.exit.thread ] ; 3 uses
  %.0105140 = phi ptr [ %i.fg, %.lr.ph143 ], [ %i.gj, %_ZN5arrow8bit_util7CeilDivEll.exit.thread ] ; 4 uses
  %.0105140228 = ptrtoaddr ptr %.0105140 to i64
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fh = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv187
  %i.fi = load i16, ptr %i.fh, align 2, !tbaa !174
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.fj = trunc i64 %indvars.iv187 to i16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.fk = phi i16 [ %i.fi, %bb.f ], [ %i.fj, %bb.g ]
  %i.fl = zext i16 %i.fk to i64
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 8
  %i.fo = load i64, ptr %i.fn, align 8, !tbaa !72 ; 2 uses
  %i.fp = load i64, ptr %i.fm, align 8, !tbaa !72 ; 4 uses
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
  br i1 %min.iters.check, label %.lr.ph139.split.preheader267, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph139.split.preheader
  %i.fx = call i64 @llvm.smax.i64(i64 %i.ft, i64 0)
  %i.fy = and i64 %i.fx, 4294967295
  %i.fz = icmp eq i64 %i.fy, 4294967295
  %i.ga = icmp sgt i64 %i.fq, 34359738368
  %i.gb = or i1 %i.fz, %i.ga
  br i1 %i.gb, label %.lr.ph139.split.preheader267, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.gc = add i64 %i.fp, %i.et
  %i.gd = sub i64 %i.gc, %.0105140228
  %diff.check = icmp ugt i64 %i.gd, -32
  br i1 %diff.check, label %.lr.ph139.split.preheader267, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fw, 9223372036854775804     ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load = load <2 x i64>, ptr %i.ge, align 8, !tbaa !72
  %wide.load229 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !72
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %.0105140, i64 %index ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 16
  store <2 x i64> %wide.load, ptr %i.gg, align 8, !tbaa !72
  store <2 x i64> %wide.load229, ptr %i.gh, align 8, !tbaa !72
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gi = icmp eq i64 %index.next, %n.vec
  br i1 %i.gi, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fw, %n.vec
  br i1 %cmp.n, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split.preheader267

.lr.ph139.split.preheader267:                     ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph139.split.preheader, %middle.block
  %indvars.iv184.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph139.split.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph139.split

_ZN5arrow8bit_util7CeilDivEll.exit.thread:        ; preds = %.lr.ph139.split, %middle.block, %bb.h
  %i.gj = getelementptr inbounds i8, ptr %.0105140, i64 %i.fq
  %indvars.iv.next188 = add nuw nsw i64 %indvars.iv187, 1 ; 2 uses
  %exitcond192.not = icmp eq i64 %indvars.iv.next188, %i.a
  br i1 %exitcond192.not, label %.critedge.thread, label %bb.e, !llvm.loop !162

.lr.ph139.split:                                  ; preds = %.lr.ph139.split.preheader267, %.lr.ph139.split
  %indvars.iv184 = phi i64 [ %indvars.iv.next185, %.lr.ph139.split ], [ %indvars.iv184.ph, %.lr.ph139.split.preheader267 ] ; 3 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %indvars.iv184
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !72
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %.0105140, i64 %indvars.iv184
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !72
  %indvars.iv.next185 = add i64 %indvars.iv184, 1 ; 2 uses
  %i.gn = and i64 %indvars.iv.next185, 4294967295
  %.not129 = icmp slt i64 %i.ft, %i.gn
  br i1 %.not129, label %_ZN5arrow8bit_util7CeilDivEll.exit.thread, label %.lr.ph139.split, !llvm.loop !163

bb.i:                                             ; preds = %bb.a
  %i.go = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !57
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  %i.gr = load ptr, ptr %i.gq, align 8            ; 2 uses
  %i.gs = ptrtoaddr ptr %i.gr to i64
  %i.gt = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !75 ; 4 uses
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
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !57 ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 9
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !71, !range !32, !noundef !33
  %i.hd = trunc nuw i8 %i.hc to i1
  %i.he = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hf = load i8, ptr %i.he, align 8, !range !32
  %i.hg = trunc nuw i8 %i.hf to i1
  %i.hh = select i1 %i.hd, i1 %i.hg, i1 false, !prof !56
  %i.hi = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %i.hk = select i1 %i.hh, ptr %i.hj, ptr null, !prof !56 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.hm = load i64, ptr %i.hl, align 8, !tbaa !78
  %i.hn = mul i64 %i.hm, %i.gv                    ; 2 uses
  %i.ho = getelementptr inbounds i8, ptr %i.hk, i64 %i.hn
  %i.hp = ptrtoaddr ptr %i.hk to i64
  %7 = tail call i64 @llvm.smax.i64(i64 %i.gx, i64 0)
  %i.hq = add i64 %i.hn, %i.hp
  %i.hr = tail call i64 @llvm.smax.i64(i64 %i.gx, i64 0)
  %i.hs = add nuw nsw i64 %i.hr, 1                ; 2 uses
  %min.iters.check235 = icmp ult i32 %i.gu, 89
  %8 = and i64 %7, 4294967295
  %9 = icmp eq i64 %8, 4294967295
  %or.cond = select i1 %min.iters.check235, i1 true, i1 %9
  %n.vec237 = and i64 %i.hs, 9223372036854775804  ; 3 uses
  %cmp.n244 = icmp eq i64 %i.hs, %n.vec237
  br label %.lr.ph154.split.split

.lr.ph154.split.split:                            ; preds = %.lr.ph154.split.split.preheader, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split
  %indvars.iv197 = phi i64 [ %indvars.iv.next198, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ 0, %.lr.ph154.split.split.preheader ] ; 4 uses
  %.0102150 = phi ptr [ %i.ik, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split ], [ %i.ho, %.lr.ph154.split.split.preheader ] ; 3 uses
  %i.ht = mul i64 %indvars.iv197, %i.gv
  %i.hu = add i64 %i.hq, %i.ht
  br i1 %.not119, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph154.split.split
  %i.hv = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv197
  %i.hw = load i16, ptr %i.hv, align 2, !tbaa !174
  br label %.lr.ph148

bb.k:                                             ; preds = %.lr.ph154.split.split
  %i.hx = trunc i64 %indvars.iv197 to i16
  br label %.lr.ph148

.lr.ph148:                                        ; preds = %bb.k, %bb.j
  %i.hy = phi i16 [ %i.hw, %bb.j ], [ %i.hx, %bb.k ]
  %i.hz = zext i16 %i.hy to i32
  %i.ia = mul i32 %i.gu, %i.hz
  %i.ib = zext i32 %i.ia to i64                   ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.ib ; 2 uses
  br i1 %or.cond, label %scalar.ph234.preheader, label %vector.memcheck232

vector.memcheck232:                               ; preds = %.lr.ph148
  %i.id = add nuw i64 %i.gs, %i.ib
  %i.ie = sub i64 %i.id, %i.hu
  %diff.check233 = icmp ugt i64 %i.ie, -32
  br i1 %diff.check233, label %scalar.ph234.preheader, label %vector.body238

vector.body238:                                   ; preds = %vector.memcheck232, %vector.body238
  %index239 = phi i64 [ %index.next242, %vector.body238 ], [ 0, %vector.memcheck232 ] ; 3 uses
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %index239 ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %wide.load240 = load <2 x i64>, ptr %i.if, align 8, !tbaa !72
  %wide.load241 = load <2 x i64>, ptr %i.ig, align 8, !tbaa !72
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.0102150, i64 %index239 ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 16
  store <2 x i64> %wide.load240, ptr %i.ih, align 8, !tbaa !72
  store <2 x i64> %wide.load241, ptr %i.ii, align 8, !tbaa !72
  %index.next242 = add nuw i64 %index239, 4       ; 2 uses
  %i.ij = icmp eq i64 %index.next242, %n.vec237
  br i1 %i.ij, label %middle.block243, label %vector.body238, !llvm.loop !164

middle.block243:                                  ; preds = %vector.body238
  br i1 %cmp.n244, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph234.preheader

scalar.ph234.preheader:                           ; preds = %vector.memcheck232, %.lr.ph148, %middle.block243
  %indvars.iv193.ph = phi i64 [ 0, %vector.memcheck232 ], [ 0, %.lr.ph148 ], [ %n.vec237, %middle.block243 ]
  br label %scalar.ph234

._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split: ; preds = %scalar.ph234, %middle.block243
  %i.ik = getelementptr inbounds nuw i8, ptr %.0102150, i64 %i.gv
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 1 ; 2 uses
  %exitcond202.not = icmp eq i64 %indvars.iv.next198, %i.a
  br i1 %exitcond202.not, label %.critedge.thread, label %.lr.ph154.split.split, !llvm.loop !165

scalar.ph234:                                     ; preds = %scalar.ph234.preheader, %scalar.ph234
  %indvars.iv193 = phi i64 [ %indvars.iv.next194, %scalar.ph234 ], [ %indvars.iv193.ph, %scalar.ph234.preheader ] ; 3 uses
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %i.ic, i64 %indvars.iv193
  %i.im = load i64, ptr %i.il, align 8, !tbaa !72
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %.0102150, i64 %indvars.iv193
  store i64 %i.im, ptr %i.in, align 8, !tbaa !72
  %indvars.iv.next194 = add i64 %indvars.iv193, 1 ; 2 uses
  %i.io = and i64 %indvars.iv.next194, 4294967295
  %.not130 = icmp slt i64 %i.gx, %i.io
  br i1 %.not130, label %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, label %scalar.ph234, !llvm.loop !166

.critedge.thread:                                 ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit.thread, %._ZN5arrow8bit_util7CeilDivEll.exit127.thread_crit_edge.split, %.lr.ph154, %_ZN5arrow6StatusD2Ev.exit126, %bb.i
  %i.ip = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !52 ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 3 uses
  %i.is = zext i32 %i.iq to i64                   ; 11 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !57
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8            ; 2 uses
  %i.ix = ptrtoaddr ptr %i.iw to i64
  %i.iy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !57
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 16
  %i.jb = load ptr, ptr %i.ja, align 8            ; 2 uses
  %i.jc = ptrtoaddr ptr %i.jb to i64
  %.not168 = icmp eq i32 %3, 0
  %.pre215 = load i64, ptr %i.ir, align 8, !tbaa !78 ; 3 uses
  br i1 %.not168, label %._crit_edge164, label %.lr.ph163

.lr.ph163:                                        ; preds = %.critedge.thread
  %.not118 = icmp eq ptr %4, null
  %.not169 = icmp eq i32 %i.iq, 0
  br i1 %.not169, label %._crit_edge164, label %.lr.ph163.split.us.preheader

.lr.ph163.split.us.preheader:                     ; preds = %.lr.ph163
  %i.jd = mul i64 %.pre215, %i.is                 ; 2 uses
  %i.je = add i64 %i.jd, %i.jc
  %min.iters.check249 = icmp ult i32 %i.iq, 4
  %min.iters.check250 = icmp ult i32 %i.iq, 32
  %i.jf = and i64 %i.is, 28
  %n.vec252 = and i64 %i.is, 4294967264           ; 4 uses
  %cmp.n259 = icmp eq i64 %n.vec252, %i.is
  %min.epilog.iters.check = icmp eq i64 %i.jf, 0
  %n.vec260 = and i64 %i.is, 4294967292           ; 3 uses
  %cmp.n264 = icmp eq i64 %n.vec260, %i.is
  %xtraiter279 = and i64 %i.is, 3                 ; 2 uses
  %lcmp.mod280.not = icmp eq i64 %xtraiter279, 0
  br label %.lr.ph163.split.us

.lr.ph163.split.us:                               ; preds = %.lr.ph163.split.us.preheader, %._crit_edge160.us
  %indvars.iv209 = phi i64 [ 0, %.lr.ph163.split.us.preheader ], [ %indvars.iv.next210, %._crit_edge160.us ] ; 4 uses
  %.099161.us = phi i64 [ %i.jd, %.lr.ph163.split.us.preheader ], [ %i.ks, %._crit_edge160.us ] ; 2 uses
  %i.jg = mul i64 %indvars.iv209, %i.is
  %i.jh = add i64 %i.je, %i.jg
  %i.ji = trunc nuw i64 %indvars.iv209 to i32
  br i1 %.not118, label %iter.check, label %bb.l

bb.l:                                             ; preds = %.lr.ph163.split.us
  %i.jj = getelementptr inbounds nuw [2 x i8], ptr %4, i64 %indvars.iv209
  %i.jk = load i16, ptr %i.jj, align 2, !tbaa !174
  %i.jl = zext i16 %i.jk to i32
  br label %iter.check

iter.check:                                       ; preds = %bb.l, %.lr.ph163.split.us
  %i.jm = phi i32 [ %i.jl, %bb.l ], [ %i.ji, %.lr.ph163.split.us ]
  %i.jn = mul i32 %i.jm, %i.iq
  %i.jo = zext i32 %i.jn to i64                   ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.iw, i64 %i.jo ; 7 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jb, i64 %.099161.us ; 7 uses
  br i1 %min.iters.check249, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck246

vector.memcheck246:                               ; preds = %iter.check
  %i.jr = add nuw i64 %i.ix, %i.jo
  %i.js = sub i64 %i.jr, %i.jh
  %diff.check247 = icmp ugt i64 %i.js, -32
  br i1 %diff.check247, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck246
  br i1 %min.iters.check250, label %vec.epilog.ph, label %vector.body253

vector.body253:                                   ; preds = %vector.main.loop.iter.check, %vector.body253
  %index254 = phi i64 [ %index.next257, %vector.body253 ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %i.jp, i64 %index254 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load255 = load <16 x i8>, ptr %i.jt, align 1, !tbaa !84
  %wide.load256 = load <16 x i8>, ptr %i.ju, align 1, !tbaa !84
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index254 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  store <16 x i8> %wide.load255, ptr %i.jv, align 1, !tbaa !84
  store <16 x i8> %wide.load256, ptr %i.jw, align 1, !tbaa !84
  %index.next257 = add nuw i64 %index254, 32      ; 2 uses
  %i.jx = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.jx, label %middle.block258, label %vector.body253, !llvm.loop !167

middle.block258:                                  ; preds = %vector.body253
  br i1 %cmp.n259, label %._crit_edge160.us, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block258
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !177

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec252, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index261 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next263, %vec.epilog.vector.body ] ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 %index261
  %wide.load262 = load <4 x i8>, ptr %i.jy, align 1, !tbaa !84
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jq, i64 %index261
  store <4 x i8> %wide.load262, ptr %i.jz, align 1, !tbaa !84
  %index.next263 = add nuw i64 %index261, 4       ; 2 uses
  %i.ka = icmp eq i64 %index.next263, %n.vec260
  br i1 %i.ka, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !168

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n264, label %._crit_edge160.us, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vector.memcheck246, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv203.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck246 ], [ %n.vec252, %vec.epilog.iter.check ], [ %n.vec260, %vec.epilog.middle.block ] ; 3 uses
  br i1 %lcmp.mod280.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv203.prol = phi i64 [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv203.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv203.prol
  %i.kc = load i8, ptr %i.kb, align 1, !tbaa !84
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv203.prol
  store i8 %i.kc, ptr %i.kd, align 1, !tbaa !84
  %indvars.iv.next204.prol = add nuw nsw i64 %indvars.iv203.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter279
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !169

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv203.unr = phi i64 [ %indvars.iv203.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next204.prol, %vec.epilog.scalar.ph.prol ]
  %i.ke = sub nsw i64 %indvars.iv203.ph, %i.is
  %i.kf = icmp ugt i64 %i.ke, -4
  br i1 %i.kf, label %._crit_edge160.us, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv203 = phi i64 [ %indvars.iv.next204.3, %vec.epilog.scalar.ph ], [ %indvars.iv203.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv203
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !84
  %i.ki = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv203
  store i8 %i.kh, ptr %i.ki, align 1, !tbaa !84
  %indvars.iv.next204 = add nuw nsw i64 %indvars.iv203, 1 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next204
  %i.kk = load i8, ptr %i.kj, align 1, !tbaa !84
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next204
  store i8 %i.kk, ptr %i.kl, align 1, !tbaa !84
  %indvars.iv.next204.1 = add nuw nsw i64 %indvars.iv203, 2 ; 2 uses
  %i.km = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next204.1
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !84
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next204.1
  store i8 %i.kn, ptr %i.ko, align 1, !tbaa !84
  %indvars.iv.next204.2 = add nuw nsw i64 %indvars.iv203, 3 ; 2 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jp, i64 %indvars.iv.next204.2
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !84
  %i.kr = getelementptr inbounds nuw i8, ptr %i.jq, i64 %indvars.iv.next204.2
  store i8 %i.kq, ptr %i.kr, align 1, !tbaa !84
  %indvars.iv.next204.3 = add nuw nsw i64 %indvars.iv203, 4 ; 2 uses
  %exitcond208.not.3 = icmp eq i64 %indvars.iv.next204.3, %i.is
  br i1 %exitcond208.not.3, label %._crit_edge160.us, label %vec.epilog.scalar.ph, !llvm.loop !170

._crit_edge160.us:                                ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block258
end_hunk_0
