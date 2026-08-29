Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/Glucose2?download=true
inline.NumInlined: 2268
inline.NumDeleted: 351
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Gluco26Solver9propagateEv:bb.a
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv.i.i161 ; 2 uses
  %i.bq = load ptr, ptr %i.ba, align 8, !tbaa !162, !nonnull !75, !align !163
  %i.br = load i32, ptr %i.bp, align 4, !tbaa !164
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !89
  %i.bt = zext i32 %i.br to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 4
  %i.bw = and i64 %i.bv, 3
  %i.bx = icmp eq i64 %i.bw, 1
  br i1 %i.bx, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i160
  %i.by = add nsw i32 %.018.i.i162, 1
  %i.bz = sext i32 %.018.i.i162 to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.bz
  %i.cb = load i64, ptr %i.bp, align 4
  store i64 %i.cb, ptr %i.ca, align 4
  %.pre.i.i163 = load i32, ptr %i.bk, align 8, !tbaa !132
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i160
  %i.cc = phi i32 [ %i.bn, %.lr.ph.i.i160 ], [ %.pre.i.i163, %bb.i ] ; 3 uses
  %.1.i.i164 = phi i32 [ %.018.i.i162, %.lr.ph.i.i160 ], [ %i.by, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i165 = add nuw nsw i64 %indvars.iv.i.i161, 1 ; 2 uses
  %i.cd = sext i32 %i.cc to i64
  %i.ce = icmp slt i64 %indvars.iv.next.i.i165, %i.cd
  br i1 %i.ce, label %.lr.ph.i.i160, label %._crit_edge.loopexit.i.i166, !llvm.loop !167

._crit_edge.loopexit.i.i166:                      ; preds = %bb.j
  %i.cf = trunc nuw nsw i64 %indvars.iv.i.i161 to i32
  %.neg21.i.i167 = xor i32 %i.cf, -1
  %i.cg = add i32 %.1.i.i164, %.neg21.i.i167
  %.pre.i168 = load ptr, ptr %i.az, align 8, !tbaa !121
  br label %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i154

_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i154: ; preds = %._crit_edge.loopexit.i.i166, %bb.h
  %i.ch = phi ptr [ %i.be, %bb.h ], [ %.pre.i168, %._crit_edge.loopexit.i.i166 ]
  %.lcssa.i.i155 = phi i32 [ %i.bl, %bb.h ], [ %i.cc, %._crit_edge.loopexit.i.i166 ]
  %.neg.i.i156 = phi i32 [ 0, %bb.h ], [ %i.cg, %._crit_edge.loopexit.i.i166 ]
  %i.ci = add i32 %.neg.i.i156, %.lcssa.i.i155
  store i32 %i.ci, ptr %i.bk, align 8, !tbaa !132
  %.sroa.0.0.copyload.i.i157 = load i32, ptr %i.bd, align 4, !tbaa !57
  %i.cj = sext i32 %.sroa.0.0.copyload.i.i157 to i64
  %i.ck = getelementptr inbounds i8, ptr %i.ch, i64 %i.cj
  store i8 0, ptr %i.ck, align 1, !tbaa !109
  %.pre7.i158 = load i32, ptr %i.av, align 8, !tbaa !113
  br label %bb.k

bb.k:                                             ; preds = %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i154, %bb.g
  %i.cl = phi i32 [ %i.bb, %bb.g ], [ %.pre7.i158, %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i154 ] ; 2 uses
  %indvars.iv.next.i159 = add nuw nsw i64 %indvars.iv.i151, 1 ; 2 uses
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next.i159, %i.cm
  br i1 %i.cn, label %bb.g, label %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169, !llvm.loop !168

_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169: ; preds = %bb.k, %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit
  store i32 0, ptr %i.av, align 8, !tbaa !113
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 7 uses
  %i.cr = load i32, ptr %i.co, align 8, !tbaa !169 ; 2 uses
  %i.cs = load i32, ptr %i.cq, align 8, !tbaa !113
  %i.ct = icmp slt i32 %i.cr, %i.cs
  br i1 %i.ct, label %.lr.ph333, label %._crit_edge334

.lr.ph333:                                        ; preds = %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 1296 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 1152
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph333, %._crit_edge326
  %i.de = phi i32 [ %i.cr, %.lr.ph333 ], [ %i.lv, %._crit_edge326 ] ; 2 uses
  %.0111331 = phi i32 [ -1, %.lr.ph333 ], [ %.4115.lcssa, %._crit_edge326 ] ; 2 uses
  %.0119330 = phi i32 [ 0, %.lr.ph333 ], [ %i.dn, %._crit_edge326 ]
  %i.df = add nsw i32 %i.de, 1
  store i32 %i.df, ptr %i.co, align 8, !tbaa !169
  %i.dg = load ptr, ptr %i.cp, align 8, !tbaa !112
  %i.dh = sext i32 %i.de to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !57 ; 4 uses
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.dl = sext i32 %i.dj to i64                   ; 2 uses
  %i.dm = getelementptr inbounds [16 x i8], ptr %i.dk, i64 %i.dl ; 2 uses
  %i.dn = add nuw nsw i32 %.0119330, 1            ; 2 uses
  %i.do = load i32, ptr %i.cu, align 8, !tbaa !106
  %i.dp = icmp sgt i32 %i.do, 1
  br i1 %i.dp, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.dq = tail call noundef i32 @_ZN6Gluco26Solver13gatePropagateENS_3LitE(ptr noundef nonnull align 8 dereferenceable(1416) %0, i32 %i.dj) ; 3 uses
  %.not = icmp eq i32 %i.dq, -1
  br i1 %.not, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.dr = ashr i32 %i.dj, 1
  %i.ds = load ptr, ptr %i.cv, align 8, !tbaa !125
  %i.dt = sext i32 %i.dr to i64
  %i.du = getelementptr inbounds i8, ptr %i.ds, i64 %i.dt
  %.sroa.0.0.copyload.i171 = load i8, ptr %i.du, align 1, !tbaa !109
  %.not268 = icmp eq i8 %.sroa.0.0.copyload.i171, 0
  br i1 %.not268, label %.thread264, label %.thread

.thread:                                          ; preds = %bb.m, %bb.n, %bb.l
  %.3114 = phi i32 [ %i.dq, %bb.n ], [ %.0111331, %bb.l ], [ %.0111331, %bb.m ] ; 2 uses
  %i.dv = load ptr, ptr %i.au, align 8, !tbaa !127
  %i.dw = getelementptr inbounds [16 x i8], ptr %i.dv, i64 %i.dl ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !132 ; 2 uses
  %.not145.not304 = icmp sgt i32 %i.dy, 0
  br i1 %.not145.not304, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread, %bb.r
  %i.dz = phi i32 [ %i.fc, %bb.r ], [ %i.dy, %.thread ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.r ], [ 0, %.thread ] ; 2 uses
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !129
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %indvars.iv ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %.sroa.063.0.copyload = load i32, ptr %i.ec, align 4, !tbaa !57 ; 3 uses
  %i.ed = ashr i32 %.sroa.063.0.copyload, 1
  %i.ee = load ptr, ptr %i.cv, align 8, !tbaa !125
  %i.ef = sext i32 %i.ed to i64                   ; 3 uses
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 %i.ef ; 2 uses
  %i.eh = trunc i32 %.sroa.063.0.copyload to i8
  %i.ei = load i8, ptr %i.eg, align 1, !tbaa !151 ; 2 uses
  %i.ej = and i8 %i.eh, 1                         ; 2 uses
  %i.ek = xor i8 %i.ei, %i.ej
  %i.el = icmp eq i8 %i.ek, 1
  br i1 %i.el, label %bb.s, label %bb.o

bb.o:                                             ; preds = %.lr.ph
  %i.em = and i8 %i.ei, 2
  %.not269 = icmp eq i8 %i.em, 0
  br i1 %.not269, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.en = load i32, ptr %i.eb, align 4, !tbaa !164
  %i.eo = load i32, ptr %i.cu, align 8, !tbaa !106
  %.not.i173 = icmp eq i32 %i.eo, 0
  br i1 %.not.i173, label %._crit_edge.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ep = load i32, ptr %i.cw, align 8, !tbaa !107
  %i.eq = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.er = getelementptr inbounds [4 x i8], ptr %i.eq, i64 %i.ef
  %i.es = load i32, ptr %i.er, align 4, !tbaa !57
  %i.et = icmp eq i32 %i.ep, %i.es
  br i1 %i.et, label %._crit_edge.i, label %bb.r

._crit_edge.i:                                    ; preds = %bb.p, %bb.q
  store i8 %i.ej, ptr %i.eg, align 1, !tbaa !109
  %i.eu = load i32, ptr %i.cy, align 8, !tbaa !115
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.eu to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.en to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ev = load ptr, ptr %i.cz, align 8, !tbaa !123
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.ef
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ew, align 4
  %i.ex = load ptr, ptr %i.cp, align 8, !tbaa !112
  %i.ey = load i32, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.cq, align 8, !tbaa !113
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %i.fa
  store i32 %.sroa.063.0.copyload, ptr %i.fb, align 4, !tbaa !57
  %.pre = load i32, ptr %i.dx, align 8, !tbaa !132
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge.i, %bb.q, %bb.o
  %i.fc = phi i32 [ %.pre, %._crit_edge.i ], [ %i.dz, %bb.q ], [ %i.dz, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fd = sext i32 %i.fc to i64
  %.not145.not = icmp slt i64 %indvars.iv.next, %i.fd
  br i1 %.not145.not, label %.lr.ph, label %._crit_edge, !llvm.loop !170

bb.s:                                             ; preds = %.lr.ph
  %i.fe = load i32, ptr %i.eb, align 4, !tbaa !164
  br label %.thread264

._crit_edge:                                      ; preds = %bb.r, %.thread
  %i.ff = load ptr, ptr %i.dm, align 8, !tbaa !129 ; 6 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.dm, i64 8 ; 3 uses
  %i.fh = load i32, ptr %i.fg, align 8, !tbaa !132 ; 2 uses
  %i.fi = sext i32 %i.fh to i64
  %.idx = shl nsw i64 %i.fi, 3                    ; 2 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %.idx ; 4 uses
  %.not146318 = icmp eq i32 %i.fh, 0
  br i1 %.not146318, label %._crit_edge326, label %.lr.ph325

.lr.ph325:                                        ; preds = %._crit_edge
  %i.fk = xor i32 %i.dj, 1                        ; 4 uses
  %i.fl = ptrtoaddr ptr %i.ff to i64
  %1 = add i64 %.idx, %i.fl
  %i.fm = add i64 %1, -9
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph325, %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193
  %.4115322 = phi i32 [ %.3114, %.lr.ph325 ], [ %.7118, %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193 ] ; 6 uses
  %.0121321 = phi ptr [ %i.ff, %.lr.ph325 ], [ %.4125, %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193 ] ; 6 uses
  %.0126319 = phi ptr [ %i.ff, %.lr.ph325 ], [ %.4130, %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193 ] ; 9 uses
  %.0126319432 = ptrtoaddr ptr %.0126319 to i64
  %.0121321433 = ptrtoaddr ptr %.0121321 to i64   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0121321, i64 4
  %.sroa.058.0.copyload = load i32, ptr %i.fn, align 4, !tbaa !57 ; 3 uses
  %i.fo = ashr i32 %.sroa.058.0.copyload, 1
  %i.fp = load ptr, ptr %i.cv, align 8, !tbaa !125 ; 4 uses
  %i.fq = sext i32 %i.fo to i64
  %i.fr = getelementptr inbounds i8, ptr %i.fp, i64 %i.fq
  %i.fs = trunc i32 %.sroa.058.0.copyload to i8
  %i.ft = load i8, ptr %i.fr, align 1, !tbaa !151
  %i.fu = and i8 %i.fs, 1
  %i.fv = icmp eq i8 %i.ft, %i.fu
  br i1 %i.fv, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.fw = getelementptr inbounds nuw i8, ptr %.0121321, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %.0126319, i64 8
  %i.fy = load i64, ptr %.0121321, align 4
  store i64 %i.fy, ptr %.0126319, align 4
  br label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193, !llvm.loop !171

bb.v:                                             ; preds = %bb.t
  %i.fz = load i32, ptr %.0121321, align 4, !tbaa !164 ; 4 uses
  %i.ga = load ptr, ptr %i.da, align 8, !tbaa !89
  %i.gb = zext i32 %i.fz to i64                   ; 6 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.ga, i64 %i.gb ; 5 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 12 ; 7 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !172 ; 2 uses
  %i.gf = icmp eq i32 %i.ge, %i.fk
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !57 ; 2 uses
  store i32 %i.gh, ptr %i.gd, align 4, !tbaa !57
  store i32 %i.fk, ptr %i.gg, align 4, !tbaa !57
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.gi = phi i32 [ %i.gh, %bb.w ], [ %i.ge, %bb.v ] ; 10 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.0121321, i64 8 ; 10 uses
  %.not270 = icmp eq i32 %i.gi, %.sroa.058.0.copyload
  br i1 %.not270, label %.critedge, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gk = ashr i32 %i.gi, 1
  %i.gl = sext i32 %i.gk to i64
  %i.gm = getelementptr inbounds i8, ptr %i.fp, i64 %i.gl
  %i.gn = trunc i32 %i.gi to i8
  %i.go = load i8, ptr %i.gm, align 1, !tbaa !151
  %i.gp = and i8 %i.gn, 1
  %i.gq = icmp eq i8 %i.go, %i.gp
  br i1 %i.gq, label %bb.z, label %.critedge

bb.z:                                             ; preds = %bb.y
  %i.gr = getelementptr inbounds nuw i8, ptr %.0126319, i64 8
  %.sroa.7.0.insert.ext219 = zext i32 %i.gi to i64
  %.sroa.7.0.insert.shift220 = shl nuw i64 %.sroa.7.0.insert.ext219, 32
  %.sroa.0205.0.insert.insert209 = or disjoint i64 %.sroa.7.0.insert.shift220, %i.gb
  store i64 %.sroa.0205.0.insert.insert209, ptr %.0126319, align 4
  br label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193, !llvm.loop !171

.critedge:                                        ; preds = %bb.x, %bb.y
  %i.gs = load i32, ptr %i.db, align 4, !tbaa !92
  %.not147 = icmp eq i32 %i.gs, 0
  %i.gt = load i64, ptr %i.gc, align 4
  %i.gu = lshr i64 %i.gt, 32                      ; 3 uses
  %i.gv = trunc nuw i64 %i.gu to i32
  %i.gw = icmp sgt i32 %i.gv, 2                   ; 2 uses
  br i1 %.not147, label %.preheader, label %.preheader273

.preheader273:                                    ; preds = %.critedge
  br i1 %i.gw, label %.lr.ph308, label %.thread260

.preheader:                                       ; preds = %.critedge
  br i1 %i.gw, label %.lr.ph311, label %.thread260

.lr.ph308:                                        ; preds = %.preheader273, %bb.ac
  %indvars.iv354 = phi i64 [ %indvars.iv.next355, %bb.ac ], [ 2, %.preheader273 ] ; 5 uses
  %.0132306 = phi i32 [ %.1133, %bb.ac ], [ -1, %.preheader273 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv354
  %.sroa.016.0.copyload = load i32, ptr %i.gx, align 4, !tbaa !57 ; 4 uses
  %i.gy = ashr i32 %.sroa.016.0.copyload, 1       ; 2 uses
  %i.gz = sext i32 %i.gy to i64
  %i.ha = getelementptr inbounds i8, ptr %i.fp, i64 %i.gz
  %i.hb = trunc i32 %.sroa.016.0.copyload to i8
  %i.hc = load i8, ptr %i.ha, align 1, !tbaa !151 ; 2 uses
  %i.hd = and i8 %i.hb, 1                         ; 2 uses
  %i.he = xor i8 %i.hd, %i.hc
  %.not271 = icmp eq i8 %i.he, 1
  br i1 %.not271, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph308
  %i.hf = load i32, ptr %i.cy, align 8, !tbaa !115
  %i.hg = load i32, ptr %i.dc, align 8, !tbaa !113
  %i.hh = icmp sgt i32 %i.hf, %i.hg
  %i.hi = icmp eq i8 %i.hc, %i.hd
  %or.cond = or i1 %i.hi, %i.hh
  br i1 %or.cond, label %.critedge5.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hj = trunc nuw nsw i64 %indvars.iv354 to i32
  %i.hk = load i32, ptr %i.dd, align 8
  %i.hl = icmp sgt i32 %i.gy, %i.hk
  br i1 %i.hl, label %bb.ac, label %.critedge5.thread

bb.ac:                                            ; preds = %.lr.ph308, %bb.ab
  %.1133 = phi i32 [ %i.hj, %bb.ab ], [ %.0132306, %.lr.ph308 ] ; 3 uses
  %indvars.iv.next355 = add nuw nsw i64 %indvars.iv354, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next355, %i.gu
  br i1 %exitcond.not, label %.critedge5, label %.lr.ph308, !llvm.loop !173

.critedge5:                                       ; preds = %bb.ac
  %.not148 = icmp eq i32 %.1133, -1
  br i1 %.not148, label %.thread260, label %.critedge5..critedge5.thread_crit_edge

.critedge5..critedge5.thread_crit_edge:           ; preds = %.critedge5
  %.phi.trans.insert = sext i32 %.1133 to i64     ; 2 uses
  %.phi.trans.insert362 = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %.phi.trans.insert
  %.pre363 = load i32, ptr %.phi.trans.insert362, align 4, !tbaa !57
  br label %.critedge5.thread

.critedge5.thread:                                ; preds = %bb.ab, %bb.aa, %.critedge5..critedge5.thread_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %.critedge5..critedge5.thread_crit_edge ], [ %indvars.iv354, %bb.aa ], [ %indvars.iv354, %bb.ab ]
  %i.hm = phi i32 [ %.pre363, %.critedge5..critedge5.thread_crit_edge ], [ %.sroa.016.0.copyload, %bb.aa ], [ %.sroa.016.0.copyload, %bb.ab ]
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gd, i64 %.pre-phi
  %i.ho = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  store i32 %i.hm, ptr %i.ho, align 4, !tbaa !57
  store i32 %i.fk, ptr %i.hn, align 4, !tbaa !57
  %.sroa.013.0.copyload = load i32, ptr %i.ho, align 4, !tbaa !57
  %i.hp = xor i32 %.sroa.013.0.copyload, 1
  %i.hq = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.hr = sext i32 %i.hp to i64
  %i.hs = getelementptr inbounds [16 x i8], ptr %i.hq, i64 %i.hr ; 5 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 8 ; 3 uses
  %i.hu = load i32, ptr %i.ht, align 8, !tbaa !132 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hs, i64 12 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 4, !tbaa !174
  %i.hx = icmp eq i32 %i.hu, %i.hw
  br i1 %i.hx, label %bb.ad, label %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i

._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i: ; preds = %.critedge5.thread
  %.pre.i178 = load ptr, ptr %i.hs, align 8, !tbaa !129
  br label %bb.af

bb.ad:                                            ; preds = %.critedge5.thread
  %i.hy = ashr i32 %i.hu, 1
  %i.hz = and i32 %i.hy, -2
  %i.ia = tail call i32 @llvm.smax.i32(i32 %i.hz, i32 0)
  %i.ib = add nuw nsw i32 %i.ia, 2                ; 2 uses
  %i.ic = sub nsw i32 2147483647, %i.hu
  %i.id = icmp samesign ugt i32 %i.ib, %i.ic
  br i1 %i.id, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ie = load ptr, ptr %i.hs, align 8, !tbaa !129
  %i.if = add nsw i32 %i.ib, %i.hu                ; 2 uses
  store i32 %i.if, ptr %i.hv, align 4, !tbaa !174
  %i.ig = sext i32 %i.if to i64
  %i.ih = shl nsw i64 %i.ig, 3
  %i.ii = tail call ptr @realloc(ptr noundef %i.ie, i64 noundef %i.ih) #34 ; 3 uses
  store ptr %i.ii, ptr %i.hs, align 8, !tbaa !129
  %i.ij = icmp eq ptr %i.ii, null
  br i1 %i.ij, label %.loopexit, label %._crit_edge364

._crit_edge364:                                   ; preds = %bb.ae
  %.pre365 = load i32, ptr %i.ht, align 8, !tbaa !132
  br label %bb.af

.loopexit:                                        ; preds = %bb.ad, %bb.ae
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

bb.af:                                            ; preds = %._crit_edge364, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i
  %i.ik = phi i32 [ %i.hu, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %.pre365, %._crit_edge364 ] ; 2 uses
  %i.il = phi ptr [ %.pre.i178, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %i.ii, %._crit_edge364 ]
  %i.im = add nsw i32 %i.ik, 1
  store i32 %i.im, ptr %i.ht, align 8, !tbaa !132
  %i.in = sext i32 %i.ik to i64
  %i.io = getelementptr inbounds [8 x i8], ptr %i.il, i64 %i.in
  %.sroa.7.0.insert.ext224 = zext i32 %i.gi to i64
  %.sroa.7.0.insert.shift225 = shl nuw i64 %.sroa.7.0.insert.ext224, 32
  %.sroa.0205.0.insert.insert213 = or disjoint i64 %.sroa.7.0.insert.shift225, %i.gb
  store i64 %.sroa.0205.0.insert.insert213, ptr %i.io, align 4
  br label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193

bb.ag:                                            ; preds = %.lr.ph311
  %indvars.iv.next358 = add nuw nsw i64 %indvars.iv357, 1 ; 2 uses
  %exitcond361.not = icmp eq i64 %indvars.iv.next358, %i.gu
  br i1 %exitcond361.not, label %.thread260, label %.lr.ph311, !llvm.loop !175

.lr.ph311:                                        ; preds = %.preheader, %bb.ag
  %indvars.iv357 = phi i64 [ %indvars.iv.next358, %bb.ag ], [ 2, %.preheader ] ; 3 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv357
  %.sroa.08.0.copyload = load i32, ptr %i.ip, align 4, !tbaa !57 ; 3 uses
  %i.iq = ashr i32 %.sroa.08.0.copyload, 1
  %i.ir = sext i32 %i.iq to i64
  %i.is = getelementptr inbounds i8, ptr %i.fp, i64 %i.ir
  %i.it = trunc i32 %.sroa.08.0.copyload to i8
  %i.iu = load i8, ptr %i.is, align 1, !tbaa !151
  %i.iv = and i8 %i.it, 1
  %i.iw = xor i8 %i.iv, %i.iu
  %.not272 = icmp eq i8 %i.iw, 1
  br i1 %.not272, label %bb.ag, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph311
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.gd, i64 %indvars.iv357
  %i.iy = getelementptr inbounds nuw i8, ptr %i.gc, i64 16 ; 2 uses
  store i32 %.sroa.08.0.copyload, ptr %i.iy, align 4, !tbaa !57
  store i32 %i.fk, ptr %i.ix, align 4, !tbaa !57
  %.sroa.07.0.copyload = load i32, ptr %i.iy, align 4, !tbaa !57
  %i.iz = xor i32 %.sroa.07.0.copyload, 1
  %i.ja = load ptr, ptr %i.a, align 8, !tbaa !127
  %i.jb = sext i32 %i.iz to i64
  %i.jc = getelementptr inbounds [16 x i8], ptr %i.ja, i64 %i.jb ; 5 uses
  %i.jd = getelementptr inbounds nuw i8, ptr %i.jc, i64 8 ; 3 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !132 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.jc, i64 12 ; 2 uses
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !174
  %i.jh = icmp eq i32 %i.je, %i.jg
  br i1 %i.jh, label %bb.ai, label %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i181

._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i181: ; preds = %bb.ah
  %.pre.i182 = load ptr, ptr %i.jc, align 8, !tbaa !129
  br label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ji = ashr i32 %i.je, 1
  %i.jj = and i32 %i.ji, -2
  %i.jk = tail call i32 @llvm.smax.i32(i32 %i.jj, i32 0)
  %i.jl = add nuw nsw i32 %i.jk, 2                ; 2 uses
  %i.jm = sub nsw i32 2147483647, %i.je
  %i.jn = icmp samesign ugt i32 %i.jl, %i.jm
  br i1 %i.jn, label %.loopexit274, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.jo = load ptr, ptr %i.jc, align 8, !tbaa !129
  %i.jp = add nsw i32 %i.jl, %i.je                ; 2 uses
  store i32 %i.jp, ptr %i.jf, align 4, !tbaa !174
  %i.jq = sext i32 %i.jp to i64
  %i.jr = shl nsw i64 %i.jq, 3
  %i.js = tail call ptr @realloc(ptr noundef %i.jo, i64 noundef %i.jr) #34 ; 3 uses
  store ptr %i.js, ptr %i.jc, align 8, !tbaa !129
  %i.jt = icmp eq ptr %i.js, null
  br i1 %i.jt, label %.loopexit274, label %._crit_edge366

._crit_edge366:                                   ; preds = %bb.aj
  %.pre367 = load i32, ptr %i.jd, align 8, !tbaa !132
  br label %bb.ak

.loopexit274:                                     ; preds = %bb.ai, %bb.aj
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

bb.ak:                                            ; preds = %._crit_edge366, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i181
  %i.ju = phi i32 [ %i.je, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i181 ], [ %.pre367, %._crit_edge366 ] ; 2 uses
  %i.jv = phi ptr [ %.pre.i182, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i181 ], [ %i.js, %._crit_edge366 ]
  %i.jw = add nsw i32 %i.ju, 1
  store i32 %i.jw, ptr %i.jd, align 8, !tbaa !132
  %i.jx = sext i32 %i.ju to i64
  %i.jy = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %i.jx
  %.sroa.7.0.insert.ext229 = zext i32 %i.gi to i64
  %.sroa.7.0.insert.shift230 = shl nuw i64 %.sroa.7.0.insert.ext229, 32
  %.sroa.0205.0.insert.insert217 = or disjoint i64 %.sroa.7.0.insert.shift230, %i.gb
  store i64 %.sroa.0205.0.insert.insert217, ptr %i.jy, align 4
  br label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193

.thread260:                                       ; preds = %bb.ag, %.preheader273, %.preheader, %.critedge5
  %i.jz = getelementptr inbounds nuw i8, ptr %.0126319, i64 8 ; 6 uses
  %.sroa.7.0.insert.ext = zext i32 %i.gi to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0205.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %i.gb
  store i64 %.sroa.0205.0.insert.insert, ptr %.0126319, align 4
  %i.ka = ashr i32 %i.gi, 1
  %i.kb = load ptr, ptr %i.cv, align 8, !tbaa !125
  %i.kc = sext i32 %i.ka to i64                   ; 3 uses
  %i.kd = getelementptr inbounds i8, ptr %i.kb, i64 %i.kc ; 2 uses
  %i.ke = trunc i32 %i.gi to i8
  %i.kf = load i8, ptr %i.kd, align 1, !tbaa !151
  %i.kg = and i8 %i.ke, 1                         ; 2 uses
  %i.kh = xor i8 %i.kf, %i.kg
  %i.ki = icmp eq i8 %i.kh, 1
  br i1 %i.ki, label %bb.al, label %bb.am

bb.al:                                            ; preds = %.thread260
  %i.kj = load i32, ptr %i.cq, align 8, !tbaa !113
  store i32 %i.kj, ptr %i.co, align 8, !tbaa !169
  %i.kk = icmp ult ptr %i.gj, %i.fj
  br i1 %i.kk, label %.lr.ph315.preheader, label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193

.lr.ph315.preheader:                              ; preds = %bb.al
  %i.kl = sub i64 %i.fm, %.0121321433             ; 2 uses
  %i.km = lshr i64 %i.kl, 3
  %i.kn = add nuw nsw i64 %i.km, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.kl, 24
  %i.ko = sub i64 %.0121321433, %.0126319432
  %diff.check = icmp ugt i64 %i.ko, -32
  %or.cond437 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond437, label %.lr.ph315.preheader438, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph315.preheader
  %n.vec = and i64 %i.kn, 4611686018427387900     ; 3 uses
  %i.kp = shl i64 %n.vec, 3                       ; 2 uses
  %i.kq = getelementptr i8, ptr %i.gj, i64 %i.kp  ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jz, i64 %i.kp  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ks = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.gj, i64 %i.ks ; 2 uses
  %next.gep434 = getelementptr i8, ptr %i.jz, i64 %i.ks ; 2 uses
  %i.kt = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load435 = load <2 x i64>, ptr %i.kt, align 4
  %i.ku = getelementptr i8, ptr %next.gep434, i64 16
  store <2 x i64> %wide.load, ptr %next.gep434, align 4
  store <2 x i64> %wide.load435, ptr %i.ku, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kv = icmp eq i64 %index.next, %n.vec
  br i1 %i.kv, label %middle.block, label %vector.body, !llvm.loop !176

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kn, %n.vec
  br i1 %cmp.n, label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193, label %.lr.ph315.preheader438

.lr.ph315.preheader438:                           ; preds = %.lr.ph315.preheader, %middle.block
  %.1122313.ph = phi ptr [ %i.gj, %.lr.ph315.preheader ], [ %i.kq, %middle.block ]
  %.1127312.ph = phi ptr [ %i.jz, %.lr.ph315.preheader ], [ %i.kr, %middle.block ]
  br label %.lr.ph315

.lr.ph315:                                        ; preds = %.lr.ph315.preheader438, %.lr.ph315
  %.1122313 = phi ptr [ %i.kw, %.lr.ph315 ], [ %.1122313.ph, %.lr.ph315.preheader438 ] ; 2 uses
  %.1127312 = phi ptr [ %i.kx, %.lr.ph315 ], [ %.1127312.ph, %.lr.ph315.preheader438 ] ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %.1122313, i64 8 ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %.1127312, i64 8 ; 2 uses
  %i.ky = load i64, ptr %.1122313, align 4
  store i64 %i.ky, ptr %.1127312, align 4
  %i.kz = icmp ult ptr %i.kw, %i.fj
  br i1 %i.kz, label %.lr.ph315, label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193, !llvm.loop !177

bb.am:                                            ; preds = %.thread260
  %i.la = load i32, ptr %i.cu, align 8, !tbaa !106
  %.not.i184 = icmp eq i32 %i.la, 0
  br i1 %.not.i184, label %._crit_edge.i191, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.lb = load i32, ptr %i.cw, align 8, !tbaa !107
  %i.lc = load ptr, ptr %i.cx, align 8, !tbaa !100
  %i.ld = getelementptr inbounds [4 x i8], ptr %i.lc, i64 %i.kc
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !57
  %i.lf = icmp eq i32 %i.lb, %i.le
  br i1 %i.lf, label %._crit_edge.i191, label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193

._crit_edge.i191:                                 ; preds = %bb.am, %bb.an
  store i8 %i.kg, ptr %i.kd, align 1, !tbaa !109
  %i.lg = load i32, ptr %i.cy, align 8, !tbaa !115
  %.sroa.2.0.insert.ext.i.i187 = zext i32 %i.lg to i64
  %.sroa.2.0.insert.shift.i.i188 = shl nuw i64 %.sroa.2.0.insert.ext.i.i187, 32
  %.sroa.0.0.insert.insert.i.i190 = or disjoint i64 %.sroa.2.0.insert.shift.i.i188, %i.gb
  %i.lh = load ptr, ptr %i.cz, align 8, !tbaa !123
  %i.li = getelementptr inbounds [8 x i8], ptr %i.lh, i64 %i.kc
  store i64 %.sroa.0.0.insert.insert.i.i190, ptr %i.li, align 4
  %i.lj = load ptr, ptr %i.cp, align 8, !tbaa !112
  %i.lk = load i32, ptr %i.cq, align 8, !tbaa !113 ; 2 uses
  %i.ll = add nsw i32 %i.lk, 1
  store i32 %i.ll, ptr %i.cq, align 8, !tbaa !113
  %i.lm = sext i32 %i.lk to i64
  %i.ln = getelementptr inbounds [4 x i8], ptr %i.lj, i64 %i.lm
  store i32 %i.gi, ptr %i.ln, align 4, !tbaa !57
  br label %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193

_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193: ; preds = %.lr.ph315, %middle.block, %bb.al, %bb.z, %bb.af, %bb.ak, %bb.an, %._crit_edge.i191, %bb.u
  %.4130 = phi ptr [ %i.fx, %bb.u ], [ %i.gr, %bb.z ], [ %i.jz, %._crit_edge.i191 ], [ %.0126319, %bb.ak ], [ %.0126319, %bb.af ], [ %i.jz, %bb.an ], [ %i.jz, %bb.al ], [ %i.kr, %middle.block ], [ %i.kx, %.lr.ph315 ] ; 2 uses
  %.4125 = phi ptr [ %i.fw, %bb.u ], [ %i.gj, %bb.z ], [ %i.gj, %._crit_edge.i191 ], [ %i.gj, %bb.ak ], [ %i.gj, %bb.af ], [ %i.gj, %bb.an ], [ %i.gj, %bb.al ], [ %i.kq, %middle.block ], [ %i.kw, %.lr.ph315 ] ; 2 uses
  %.7118 = phi i32 [ %.4115322, %bb.u ], [ %.4115322, %bb.z ], [ %.4115322, %._crit_edge.i191 ], [ %.4115322, %bb.ak ], [ %.4115322, %bb.af ], [ %.4115322, %bb.an ], [ %i.fz, %bb.al ], [ %i.fz, %middle.block ], [ %i.fz, %.lr.ph315 ] ; 2 uses
  %.not146 = icmp eq ptr %.4125, %i.fj
  br i1 %.not146, label %._crit_edge326.loopexit, label %bb.t

._crit_edge326.loopexit:                          ; preds = %_ZN6Gluco26Solver16uncheckedEnqueueENS_3LitEj.exit193
  %.pre368 = load i32, ptr %i.fg, align 8, !tbaa !132
  br label %._crit_edge326

._crit_edge326:                                   ; preds = %._crit_edge326.loopexit, %._crit_edge
  %i.lo = phi i32 [ 0, %._crit_edge ], [ %.pre368, %._crit_edge326.loopexit ]
  %.0126.lcssa = phi ptr [ %i.ff, %._crit_edge ], [ %.4130, %._crit_edge326.loopexit ]
  %.0121.lcssa = phi ptr [ %i.ff, %._crit_edge ], [ %i.fj, %._crit_edge326.loopexit ]
  %.4115.lcssa = phi i32 [ %.3114, %._crit_edge ], [ %.7118, %._crit_edge326.loopexit ] ; 2 uses
  %i.lp = ptrtoint ptr %.0121.lcssa to i64
  %i.lq = ptrtoint ptr %.0126.lcssa to i64
  %i.lr = sub i64 %i.lp, %i.lq
  %i.ls = lshr exact i64 %i.lr, 3
  %i.lt = trunc i64 %i.ls to i32
  %i.lu = sub nsw i32 %i.lo, %i.lt
  store i32 %i.lu, ptr %i.fg, align 8, !tbaa !132
  %i.lv = load i32, ptr %i.co, align 8, !tbaa !169 ; 2 uses
  %i.lw = load i32, ptr %i.cq, align 8, !tbaa !113
  %i.lx = icmp slt i32 %i.lv, %i.lw
  br i1 %i.lx, label %bb.l, label %._crit_edge334.loopexit, !llvm.loop !178

._crit_edge334.loopexit:                          ; preds = %._crit_edge326
  %i.ly = zext nneg i32 %i.dn to i64
  br label %._crit_edge334

._crit_edge334:                                   ; preds = %._crit_edge334.loopexit, %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169
  %.0119.lcssa = phi i64 [ 0, %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169 ], [ %i.ly, %._crit_edge334.loopexit ] ; 2 uses
  %.0111.lcssa = phi i32 [ -1, %_ZN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit169 ], [ %.4115.lcssa, %._crit_edge334.loopexit ]
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !179
  %i.mb = add nsw i64 %i.ma, %.0119.lcssa
  store i64 %i.mb, ptr %i.lz, align 8, !tbaa !179
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.md = load i64, ptr %i.mc, align 8, !tbaa !180
  %i.me = sub nsw i64 %i.md, %.0119.lcssa
  store i64 %i.me, ptr %i.mc, align 8, !tbaa !180
  br label %.thread264

.thread264:                                       ; preds = %bb.n, %bb.s, %._crit_edge334
  %.7 = phi i32 [ %.0111.lcssa, %._crit_edge334 ], [ %i.fe, %bb.s ], [ %i.dq, %bb.n ]
  ret i32 %.7
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6Gluco26Solver12attachClauseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1416) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !89
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = load i64, ptr %i.d, align 4
  %.mask = and i64 %i.e, -4294967296
  %i.f = icmp eq i64 %.mask, 8589934592
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !57
  %i.h = xor i32 %.sroa.0.0.copyload.i, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.j, align 4, !tbaa !57 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  %i.m = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.i ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !132  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !174
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i

._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !129
  br label %_ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = ashr i32 %i.o, 1
  %i.t = and i32 %i.s, -2
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = add nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.w = sub nsw i32 2147483647, %i.o
  %i.x = icmp samesign ugt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.z = add nsw i32 %i.v, %i.o                   ; 2 uses
  store i32 %i.z, ptr %i.p, align 4, !tbaa !174
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call ptr @realloc(ptr noundef %i.y, i64 noundef %i.ab) #34 ; 3 uses
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !129
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %._ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge

._ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge: ; preds = %bb.d
  %.pre55 = load i32, ptr %i.n, align 8, !tbaa !132
  br label %_ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @_ZN6Gluco2L19fatal_out_of_memoryEv()
  unreachable

_ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit: ; preds = %._ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i
  %i.ae = phi i32 [ %i.o, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %.pre55, %._ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge ] ; 2 uses
  %i.af = phi ptr [ %.pre.i, %._ZN6Gluco23vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %i.ac, %._ZN6Gluco23vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.n, align 8, !tbaa !132
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %.sroa.452.0.insert.ext = zext i32 %.sroa.0.0.copyload.i25 to i64
  %.sroa.452.0.insert.shift = shl nuw i64 %.sroa.452.0.insert.ext, 32
end_hunk_0
begin_hunk_1_@_ZN6Gluco24sortIj11reduceDB_ltEEvPT_iT0_:bb.a
.preheader:                                       ; preds = %.split, %._crit_edge.i39, %bb.h, %.split.us, %bb.g, %._crit_edge.i39.us
  %indvars.iv.next.lcssa148.sink = phi i64 [ %indvars.iv.next118, %.split.us ], [ %indvars.iv.next118, %._crit_edge.i39.us ], [ %indvars.iv.next118, %bb.g ], [ %indvars.iv.next, %bb.h ], [ %indvars.iv.next, %._crit_edge.i39 ], [ %indvars.iv.next, %.split ] ; 4 uses
  %i.da = phi i32 [ %i.bp, %.split.us ], [ %i.bp, %._crit_edge.i39.us ], [ %i.bp, %bb.g ], [ %i.ci, %bb.h ], [ %i.ci, %._crit_edge.i39 ], [ %i.ci, %.split ]
  %i.db = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next.lcssa148.sink ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %indvars.iv120 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next121, %.backedge.backedge ]
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1 ; 5 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next121
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !57 ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.de ; 2 uses
  %i.dg = load i64, ptr %i.df, align 4            ; 3 uses
  %.mask.i40 = and i64 %i.dg, -4294967296
  %i.dh = icmp eq i64 %.mask.i40, 8589934592
  %or.cond16.i41 = select i1 %i.bi, i1 %i.dh, i1 false
  br i1 %or.cond16.i41, label %.backedge.backedge, label %._crit_edge.i42

._crit_edge.i42:                                  ; preds = %.backedge
  %i.di = lshr i64 %i.dg, 32                      ; 3 uses
  %i.dj = trunc nuw i64 %i.di to i32
  %i.dk = icmp sgt i32 %i.dj, 2
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %._crit_edge.i42
  br i1 %i.bj, label %_ZN11reduceDB_ltclEjj.exit46.thread, label %.thread.i44

bb.j:                                             ; preds = %._crit_edge.i42
  %i.dl = icmp eq i64 %i.di, 2
  %or.cond.i43 = and i1 %i.bj, %i.dl
  br i1 %or.cond.i43, label %_ZN11reduceDB_ltclEjj.exit46.thread, label %.thread.i44

.thread.i44:                                      ; preds = %bb.j, %bb.i
  %i.dm = trunc i64 %i.dg to i32
  %i.dn = lshr i32 %i.dm, 5
  %i.do = and i32 %i.dn, 67108863                 ; 2 uses
  %i.dp = icmp samesign ugt i32 %i.bm, %i.do
  br i1 %i.dp, label %.backedge.backedge, label %bb.k

.backedge.backedge:                               ; preds = %.thread.i44, %.backedge, %.split49
  br label %.backedge, !llvm.loop !377

bb.k:                                             ; preds = %.thread.i44
  %i.dq = icmp samesign ult i32 %i.bm, %i.do
  br i1 %i.dq, label %_ZN11reduceDB_ltclEjj.exit46.thread, label %.split49

.split49:                                         ; preds = %bb.k
  %i.dr = load float, ptr %i.bn, align 4, !tbaa !207
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.di
  %i.du = load float, ptr %i.dt, align 4, !tbaa !207
  %i.dv = fcmp olt float %i.dr, %i.du
  br i1 %i.dv, label %.backedge.backedge, label %_ZN11reduceDB_ltclEjj.exit46.thread

_ZN11reduceDB_ltclEjj.exit46.thread:              ; preds = %bb.k, %bb.j, %bb.i, %.split49
  %.not = icmp slt i64 %indvars.iv.next.lcssa148.sink, %indvars.iv.next121
  br i1 %.not, label %bb.l, label %tailrecurse

bb.l:                                             ; preds = %_ZN11reduceDB_ltclEjj.exit46.thread
  %i.dw = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next121
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !57
  store i32 %i.da, ptr %i.dw, align 4, !tbaa !57
  br label %bb.f, !llvm.loop !378

tailrecurse:                                      ; preds = %_ZN11reduceDB_ltclEjj.exit46.thread
  %i.dx = trunc nsw i64 %indvars.iv.next.lcssa148.sink to i32 ; 2 uses
  tail call void @_ZN6Gluco24sortIj11reduceDB_ltEEvPT_iT0_(ptr noundef nonnull %.tr91, i32 noundef %i.dx, ptr nonnull %2)
  %i.dy = sub nsw i32 %.tr5092, %i.dx             ; 3 uses
  %i.dz = icmp slt i32 %i.dy, 16
  br i1 %i.dz, label %tailrecurse._crit_edge, label %.lr.ph

_ZN6Gluco213selectionSortIj11reduceDB_ltEEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Glucose2.cpp() #27 section ".text.startup" {
bb.a:
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L15opt_incrementalE, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco210BoolOptionE, i64 16), ptr @_ZN6Gluco2L15opt_incrementalE, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L15opt_incrementalE, i64 40), align 8, !tbaa !346
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L5opt_KE, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L5opt_KE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_KE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_KE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_KE, i64 57), align 1, !tbaa !73
  store double 8.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_KE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L5opt_RE, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L5opt_RE, align 8, !tbaa !8
  store <2 x double> <double 1.000000e+00, double 5.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_RE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_RE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_RE, i64 57), align 1, !tbaa !73
  store double 1.400000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L5opt_RE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L18opt_size_lbd_queueE, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L18opt_size_lbd_queueE, align 8, !tbaa !8
  store i64 9223372032559808522, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L18opt_size_lbd_queueE, i64 40), align 8
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L18opt_size_lbd_queueE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L20opt_size_trail_queueE, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L20opt_size_trail_queueE, align 8, !tbaa !8
  store i64 9223372032559808522, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L20opt_size_trail_queueE, i64 40), align 8
  store i32 5000, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L20opt_size_trail_queueE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L19opt_first_reduce_dbE, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L19opt_first_reduce_dbE, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_first_reduce_dbE, i64 40), align 8
  store i32 2000, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_first_reduce_dbE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L17opt_inc_reduce_dbE, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L17opt_inc_reduce_dbE, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L17opt_inc_reduce_dbE, i64 40), align 8
  store i32 300, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L17opt_inc_reduce_dbE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L22opt_spec_inc_reduce_dbE, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L22opt_spec_inc_reduce_dbE, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L22opt_spec_inc_reduce_dbE, i64 40), align 8
  store i32 1000, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L22opt_spec_inc_reduce_dbE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L24opt_lb_lbd_frozen_clauseE, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L24opt_lb_lbd_frozen_clauseE, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L24opt_lb_lbd_frozen_clauseE, i64 40), align 8
  store i32 30, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L24opt_lb_lbd_frozen_clauseE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L28opt_lb_size_minimzing_clauseE, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L28opt_lb_size_minimzing_clauseE, align 8, !tbaa !8
  store i64 9223372032559808515, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L28opt_lb_size_minimzing_clauseE, i64 40), align 8
  store i32 30, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L28opt_lb_size_minimzing_clauseE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L27opt_lb_lbd_minimzing_clauseE, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L27opt_lb_lbd_minimzing_clauseE, align 8, !tbaa !8
  store i64 9223372032559808515, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L27opt_lb_lbd_minimzing_clauseE, i64 40), align 8
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L27opt_lb_lbd_minimzing_clauseE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L13opt_var_decayE, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L13opt_var_decayE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L13opt_var_decayE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L13opt_var_decayE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L13opt_var_decayE, i64 57), align 1, !tbaa !73
  store double 8.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L13opt_var_decayE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L16opt_clause_decayE, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L16opt_clause_decayE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_clause_decayE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_clause_decayE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_clause_decayE, i64 57), align 1, !tbaa !73
  store double f0x3FEFF7CED916872B, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_clause_decayE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L19opt_random_var_freqE, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L19opt_random_var_freqE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_random_var_freqE, i64 40), align 8, !tbaa !54
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_random_var_freqE, i64 56), align 8, !tbaa !73
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_random_var_freqE, i64 57), align 1, !tbaa !73
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L19opt_random_var_freqE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L15opt_random_seedE, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L15opt_random_seedE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L15opt_random_seedE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L15opt_random_seedE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L15opt_random_seedE, i64 57), align 1, !tbaa !73
  store double f0x4195D9C3F4000000, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L15opt_random_seedE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L14opt_ccmin_modeE, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L14opt_ccmin_modeE, align 8, !tbaa !8
  store i64 8589934592, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L14opt_ccmin_modeE, i64 40), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L14opt_ccmin_modeE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L16opt_phase_savingE, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco29IntOptionE, i64 16), ptr @_ZN6Gluco2L16opt_phase_savingE, align 8, !tbaa !8
  store i64 8589934592, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_phase_savingE, i64 40), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_phase_savingE, i64 48), align 8, !tbaa !361
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L16opt_rnd_init_actE, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco210BoolOptionE, i64 16), ptr @_ZN6Gluco2L16opt_rnd_init_actE, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_rnd_init_actE, i64 40), align 8, !tbaa !346
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco2L16opt_garbage_fracE, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212DoubleOptionE, i64 16), ptr @_ZN6Gluco2L16opt_garbage_fracE, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_garbage_fracE, i64 40), align 8, !tbaa !54
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_garbage_fracE, i64 56), align 8, !tbaa !73
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_garbage_fracE, i64 57), align 1, !tbaa !73
  store double 2.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco2L16opt_garbage_fracE, i64 64), align 8, !tbaa !356
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco214opt_certified_E, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco210BoolOptionE, i64 16), ptr @_ZN6Gluco214opt_certified_E, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco214opt_certified_E, i64 40), align 8, !tbaa !346
  tail call void @_ZN6Gluco26OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZN6Gluco219opt_certified_file_E, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN6Gluco212StringOptionE, i64 16), ptr @_ZN6Gluco219opt_certified_file_E, align 8, !tbaa !8
  store ptr @.str.62, ptr getelementptr inbounds nuw (i8, ptr @_ZN6Gluco219opt_certified_file_E, i64 40), align 8, !tbaa !362
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #13

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { cold inlinehint mustprogress nofree noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #23 = { mustprogress nocallback nofree nounwind willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #27 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" }
attributes #30 = { nounwind willreturn memory(none) }
attributes #31 = { nounwind willreturn memory(read) }
attributes #32 = { nounwind }
attributes #33 = { builtin nounwind }
attributes #34 = { nounwind allocsize(1) }
attributes #35 = { cold noreturn nounwind }
attributes #36 = { builtin nounwind allocsize(0) }
attributes #37 = { cold nounwind }
attributes #38 = { noreturn nounwind }
attributes #39 = { cold }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !5, i64 8}
!11 = !{!"_ZTSN6Gluco26SolverE", !5, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !13, i64 36, !14, i64 40, !15, i64 48, !16, i64 56, !17, i64 72, !5, i64 88, !19, i64 96, !17, i64 112, !5, i64 128, !5, i64 132, !5, i64 136, !21, i64 144, !21, i64 152, !21, i64 160, !21, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !5, i64 232, !5, i64 236, !13, i64 240, !13, i64 241, !21, i64 248, !22, i64 256, !13, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !5, i64 448, !13, i64 452, !21, i64 456, !23, i64 464, !21, i64 480, !25, i64 488, !25, i64 544, !32, i64 600, !32, i64 616, !19, i64 632, !28, i64 648, !28, i64 664, !17, i64 680, !16, i64 696, !16, i64 712, !33, i64 728, !5, i64 744, !5, i64 748, !15, i64 752, !17, i64 760, !35, i64 776, !21, i64 816, !13, i64 824, !32, i64 832, !17, i64 848, !38, i64 864, !5, i64 888, !40, i64 896, !40, i64 960, !41, i64 1024, !5, i64 1028, !28, i64 1032, !17, i64 1048, !17, i64 1064, !17, i64 1080, !5, i64 1096, !21, i64 1104, !21, i64 1112, !5, i64 1120, !15, i64 1128, !15, i64 1136, !13, i64 1144, !5, i64 1148, !5, i64 1152, !21, i64 1160, !21, i64 1168, !5, i64 1176, !5, i64 1180, !16, i64 1184, !16, i64 1200, !13, i64 1216, !42, i64 1224, !32, i64 1240, !17, i64 1256, !17, i64 1272, !5, i64 1288, !5, i64 1292, !5, i64 1296, !5, i64 1300, !44, i64 1304, !16, i64 1344, !16, i64 1360, !5, i64 1376, !16, i64 1384, !17, i64 1400}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSN6Gluco23vecIiEE", !14, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!"_ZTSN6Gluco23vecINS_3LitEEE", !18, i64 0, !5, i64 8, !5, i64 12}
!18 = !{!"p1 _ZTSN6Gluco23LitE", !12, i64 0}
!19 = !{!"_ZTSN6Gluco23vecINS_5lboolEEE", !20, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"p1 _ZTSN6Gluco25lboolE", !12, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!23 = !{!"_ZTSN6Gluco23vecIdEE", !24, i64 0, !5, i64 8, !5, i64 12}
!24 = !{!"p1 double", !12, i64 0}
!25 = !{!"_ZTSN6Gluco28OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEEE", !26, i64 0, !28, i64 16, !17, i64 32, !30, i64 48}
!26 = !{!"_ZTSN6Gluco23vecINS0_INS_6Solver7WatcherEEEEE", !27, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTSN6Gluco23vecINS_6Solver7WatcherEEE", !12, i64 0}
!28 = !{!"_ZTSN6Gluco23vecIcEE", !29, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 omnipotent char", !12, i64 0}
!30 = !{!"_ZTSN6Gluco26Solver14WatcherDeletedE", !31, i64 0}
!31 = !{!"p1 _ZTSN6Gluco215ClauseAllocatorE", !12, i64 0}
!32 = !{!"_ZTSN6Gluco23vecIjEE", !14, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"_ZTSN6Gluco23vecINS_6Solver7VarDataEEE", !34, i64 0, !5, i64 8, !5, i64 12}
!34 = !{!"p1 _ZTSN6Gluco26Solver7VarDataE", !12, i64 0}
!35 = !{!"_ZTSN6Gluco24HeapINS_6Solver10VarOrderLtEEE", !36, i64 0, !16, i64 8, !16, i64 24}
!36 = !{!"_ZTSN6Gluco26Solver10VarOrderLtE", !37, i64 0}
!37 = !{!"p1 _ZTSN6Gluco23vecIdEE", !12, i64 0}
!38 = !{!"_ZTSN6Gluco215ClauseAllocatorE", !39, i64 0, !13, i64 20}
!39 = !{!"_ZTSN6Gluco215RegionAllocatorIjEE", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!40 = !{!"_ZTSN6Gluco26bqueueIjEE", !32, i64 0, !5, i64 16, !5, i64 20, !15, i64 24, !5, i64 32, !5, i64 36, !13, i64 40, !21, i64 48, !21, i64 56}
!41 = !{!"float", !6, i64 0}
!42 = !{!"_ZTSN6Gluco23vecINS_6Solver8NodeDataEEE", !43, i64 0, !5, i64 8, !5, i64 12}
!43 = !{!"p1 _ZTSN6Gluco26Solver8NodeDataE", !12, i64 0}
!44 = !{!"_ZTSN6Gluco25Heap2INS_6Solver12JustOrderLt2ENS1_7JustKeyEEE", !45, i64 0, !47, i64 8, !16, i64 24}
!45 = !{!"_ZTSN6Gluco26Solver12JustOrderLt2E", !46, i64 0}
!46 = !{!"p1 _ZTSN6Gluco26SolverE", !12, i64 0}
!47 = !{!"_ZTSN6Gluco23vecINS_6Solver7JustKeyEEE", !48, i64 0, !5, i64 8, !5, i64 12}
!48 = !{!"p1 _ZTSN6Gluco26Solver7JustKeyE", !12, i64 0}
!49 = !{!11, !12, i64 24}
!50 = !{!11, !5, i64 32}
!51 = !{!11, !13, i64 36}
!52 = !{!11, !5, i64 132}
!53 = !{!11, !5, i64 136}
!54 = !{!21, !21, i64 0}
!55 = !{!11, !21, i64 144}
!56 = !{!11, !21, i64 152}
!57 = !{!5, !5, i64 0}
!58 = !{!11, !21, i64 160}
!59 = !{!11, !21, i64 168}
!60 = !{!11, !5, i64 176}
!61 = !{!11, !5, i64 180}
!62 = !{!11, !5, i64 184}
!63 = !{!11, !5, i64 188}
!64 = !{!11, !5, i64 192}
!65 = !{!11, !5, i64 196}
!66 = !{!11, !21, i64 200}
!67 = !{!11, !21, i64 208}
!68 = !{!11, !21, i64 216}
!69 = !{!11, !21, i64 224}
!70 = !{!11, !5, i64 232}
!71 = !{!11, !5, i64 236}
!72 = !{!11, !13, i64 240}
!73 = !{!13, !13, i64 0}
!74 = !{i8 0, i8 2}
!75 = !{}
!76 = !{!11, !13, i64 241}
!77 = !{!11, !21, i64 248}
!78 = !{!11, !22, i64 256}
!79 = !{!11, !13, i64 264}
!80 = !{!11, !15, i64 440}
!81 = !{!11, !13, i64 452}
!82 = !{!11, !21, i64 456}
!83 = !{!11, !21, i64 480}
!84 = !{!31, !31, i64 0}
!85 = !{!11, !5, i64 748}
!86 = !{!37, !37, i64 0}
!87 = !{!11, !13, i64 824}
!88 = !{!39, !5, i64 12}
!89 = !{!39, !14, i64 0}
!90 = !{!38, !13, i64 20}
!91 = !{!11, !13, i64 1144}
!92 = !{!11, !5, i64 1148}
!93 = !{!11, !5, i64 1152}
!94 = !{!46, !46, i64 0}
!95 = !{!11, !5, i64 1096}
!96 = !{!40, !5, i64 16}
!97 = !{!40, !5, i64 32}
!98 = !{!40, !5, i64 36}
!99 = !{!40, !5, i64 20}
!100 = !{!32, !14, i64 0}
!101 = !{!40, !21, i64 48}
!102 = !{!11, !41, i64 1024}
!103 = !{!11, !5, i64 888}
!104 = !{!29, !29, i64 0}
!105 = !{!11, !5, i64 1300}
!106 = !{!11, !5, i64 88}
!107 = !{!11, !5, i64 1296}
!108 = !{!11, !5, i64 1292}
!109 = !{!6, !6, i64 0}
!110 = !{!11, !5, i64 1288}
!111 = !{!11, !5, i64 1376}
!112 = !{!17, !18, i64 0}
!113 = !{!17, !5, i64 8}
!114 = !{!16, !14, i64 0}
!115 = !{!16, !5, i64 8}
!116 = !{!47, !48, i64 0}
!117 = !{!47, !5, i64 8}
!118 = !{!32, !5, i64 8}
!119 = !{!42, !43, i64 0}
!120 = !{!42, !5, i64 8}
!121 = !{!28, !29, i64 0}
!122 = !{!28, !5, i64 8}
!123 = !{!33, !34, i64 0}
!124 = !{!33, !5, i64 8}
!125 = !{!19, !20, i64 0}
!126 = !{!19, !5, i64 8}
!127 = !{!26, !27, i64 0}
!128 = !{!26, !5, i64 8}
!129 = !{!130, !131, i64 0}
!130 = !{!"_ZTSN6Gluco23vecINS_6Solver7WatcherEEE", !131, i64 0, !5, i64 8, !5, i64 12}
!131 = !{!"p1 _ZTSN6Gluco26Solver7WatcherE", !12, i64 0}
!132 = !{!130, !5, i64 8}
!133 = distinct !{!133, !134}
!134 = !{!"llvm.loop.mustprogress"}
!135 = !{!23, !24, i64 0}
!136 = !{!23, !5, i64 8}
!137 = !{!19, !5, i64 12}
!138 = !{!33, !5, i64 12}
!139 = !{!23, !5, i64 12}
!140 = !{!28, !5, i64 12}
!141 = !{!32, !5, i64 12}
!142 = !{!17, !5, i64 12}
!143 = !{!16, !5, i64 12}
!144 = !{!42, !5, i64 12}
!145 = distinct !{!145, !146}
!146 = !{!"llvm.loop.unroll.disable"}
!147 = distinct !{!147, !134}
!148 = !{!11, !15, i64 400}
!149 = distinct !{!149, !146}
!150 = distinct !{!150, !134}
!151 = !{!152, !6, i64 0}
!152 = !{!"_ZTSN6Gluco25lboolE", !6, i64 0}
!153 = distinct !{!153, !134}
!154 = distinct !{!154, !134}
end_hunk_1
