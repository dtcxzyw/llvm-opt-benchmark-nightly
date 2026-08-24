Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/Glucose?download=true
inline.NumInlined: 1329
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN5Gluco6Solver9propagateEv:bb.a

.lr.ph.i139:                                      ; preds = %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 560 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 592
  br label %bb.g

._crit_edge.i136:                                 ; preds = %bb.k, %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit
  %i.bd = load ptr, ptr %i.ax, align 8, !tbaa !99
  %.not.i.i137 = icmp eq ptr %i.bd, null
  br i1 %.not.i.i137, label %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155, label %.preheader.i.i138

.preheader.i.i138:                                ; preds = %._crit_edge.i136
  store i32 0, ptr %i.ay, align 8, !tbaa !100
  br label %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155

bb.g:                                             ; preds = %bb.k, %.lr.ph.i139
  %i.be = phi i32 [ %i.az, %.lr.ph.i139 ], [ %i.cp, %bb.k ]
  %indvars.iv.i140 = phi i64 [ 0, %.lr.ph.i139 ], [ %indvars.iv.next.i146, %bb.k ] ; 2 uses
  %i.bf = load ptr, ptr %i.ax, align 8, !tbaa !99
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i140 ; 2 uses
  %.sroa.0.0.copyload.i141 = load i32, ptr %i.bg, align 4, !tbaa !50
  %i.bh = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.bi = sext i32 %.sroa.0.0.copyload.i141 to i64 ; 2 uses
  %i.bj = getelementptr inbounds i8, ptr %i.bh, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !119
  %.not.i142 = icmp eq i8 %i.bk, 0
  br i1 %.not.i142, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bl = load ptr, ptr %i.aw, align 8, !tbaa !108
  %i.bm = getelementptr inbounds [16 x i8], ptr %i.bl, i64 %i.bi ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 3 uses
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !113 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %.lr.ph.i.i147, label %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143

.lr.ph.i.i147:                                    ; preds = %bb.h, %bb.j
  %i.bq = phi i32 [ %i.cf, %bb.j ], [ %i.bo, %bb.h ]
  %indvars.iv.i.i148 = phi i64 [ %indvars.iv.next.i.i152, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.018.i.i149 = phi i32 [ %.1.i.i151, %bb.j ], [ 0, %bb.h ] ; 3 uses
  %i.br = load ptr, ptr %i.bm, align 8, !tbaa !110 ; 2 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %indvars.iv.i.i148 ; 2 uses
  %i.bt = load ptr, ptr %i.bc, align 8, !tbaa !140, !nonnull !68, !align !141
  %i.bu = load i32, ptr %i.bs, align 4, !tbaa !142
  %i.bv = load ptr, ptr %i.bt, align 8, !tbaa !82
  %i.bw = zext i32 %i.bu to i64
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = load i64, ptr %i.bx, align 4
  %i.bz = and i64 %i.by, 3
  %i.ca = icmp eq i64 %i.bz, 1
  br i1 %i.ca, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i147
  %i.cb = add nsw i32 %.018.i.i149, 1
  %i.cc = sext i32 %.018.i.i149 to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.br, i64 %i.cc
  %i.ce = load i64, ptr %i.bs, align 4
  store i64 %i.ce, ptr %i.cd, align 4
  %.pre.i.i150 = load i32, ptr %i.bn, align 8, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i147
  %i.cf = phi i32 [ %i.bq, %.lr.ph.i.i147 ], [ %.pre.i.i150, %bb.i ] ; 3 uses
  %.1.i.i151 = phi i32 [ %.018.i.i149, %.lr.ph.i.i147 ], [ %i.cb, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i152 = add nuw nsw i64 %indvars.iv.i.i148, 1 ; 3 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next.i.i152, %i.cg
  br i1 %i.ch, label %.lr.ph.i.i147, label %._crit_edge.i.i153, !llvm.loop !145

._crit_edge.i.i153:                               ; preds = %bb.j
  %i.ci = trunc nuw nsw i64 %indvars.iv.next.i.i152 to i32
  %i.cj = sub nsw i32 %i.ci, %.1.i.i151           ; 2 uses
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %.lr.ph.i.i.i154, label %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143

.lr.ph.i.i.i154:                                  ; preds = %._crit_edge.i.i153
  %i.cl = sub i32 %i.cf, %i.cj
  store i32 %i.cl, ptr %i.bn, align 8, !tbaa !113
  br label %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143

_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143: ; preds = %.lr.ph.i.i.i154, %._crit_edge.i.i153, %bb.h
  %.sroa.0.0.copyload.i.i144 = load i32, ptr %i.bg, align 4, !tbaa !50
  %i.cm = load ptr, ptr %i.bb, align 8, !tbaa !101
  %i.cn = sext i32 %.sroa.0.0.copyload.i.i144 to i64
  %i.co = getelementptr inbounds i8, ptr %i.cm, i64 %i.cn
  store i8 0, ptr %i.co, align 1, !tbaa !119
  %.pre.i145 = load i32, ptr %i.ay, align 8, !tbaa !100
  br label %bb.k

bb.k:                                             ; preds = %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143, %bb.g
  %i.cp = phi i32 [ %i.be, %bb.g ], [ %.pre.i145, %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE5cleanERKS1_.exit.i143 ] ; 2 uses
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i140, 1 ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i146, %i.cq
  br i1 %i.cr, label %bb.g, label %._crit_edge.i136, !llvm.loop !146

_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155: ; preds = %._crit_edge.i136, %.preheader.i.i138
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 744 ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 680 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 688 ; 7 uses
  %i.cv = load i32, ptr %i.cs, align 8, !tbaa !147 ; 2 uses
  %i.cw = load i32, ptr %i.cu, align 8, !tbaa !100
  %i.cx = icmp slt i32 %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph298, label %._crit_edge299

.lr.ph298:                                        ; preds = %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 728 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1152
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph298, %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit
  %i.df = phi i32 [ %i.cv, %.lr.ph298 ], [ %i.lc, %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit ] ; 2 uses
  %.0104297 = phi i32 [ -1, %.lr.ph298 ], [ %.1105.lcssa, %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit ] ; 2 uses
  %.0109296 = phi i32 [ 0, %.lr.ph298 ], [ %i.do, %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit ]
  %i.dg = add nsw i32 %i.df, 1
  store i32 %i.dg, ptr %i.cs, align 8, !tbaa !147
  %i.dh = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.di = sext i32 %i.df to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !50 ; 2 uses
  %i.dl = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.dm = sext i32 %i.dk to i64                   ; 2 uses
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = add nuw nsw i32 %.0109296, 1            ; 2 uses
  %i.dp = load ptr, ptr %i.aw, align 8, !tbaa !108
  %i.dq = getelementptr inbounds [16 x i8], ptr %i.dp, i64 %i.dm ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !113 ; 2 uses
  %.not.not270 = icmp sgt i32 %i.ds, 0
  br i1 %.not.not270, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.l, %bb.o
  %i.dt = phi i32 [ %i.eq, %bb.o ], [ %i.ds, %bb.l ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.du = load ptr, ptr %i.dq, align 8, !tbaa !110
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %indvars.iv ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %.sroa.062.0.copyload = load i32, ptr %i.dw, align 4, !tbaa !50 ; 3 uses
  %i.dx = ashr i32 %.sroa.062.0.copyload, 1
  %i.dy = load ptr, ptr %i.cy, align 8, !tbaa !106
  %i.dz = sext i32 %i.dx to i64                   ; 2 uses
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz ; 2 uses
  %i.eb = trunc i32 %.sroa.062.0.copyload to i8
  %i.ec = load i8, ptr %i.ea, align 1, !tbaa !129 ; 2 uses
  %i.ed = and i8 %i.eb, 1                         ; 2 uses
  %i.ee = xor i8 %i.ec, %i.ed
  %i.ef = icmp eq i8 %i.ee, 1
  br i1 %i.ef, label %.critedge135, label %bb.m

bb.m:                                             ; preds = %.lr.ph
  %i.eg = and i8 %i.ec, 2
  %.not239 = icmp eq i8 %i.eg, 0
  br i1 %.not239, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.eh = load i32, ptr %i.dv, align 4, !tbaa !142
  store i8 %i.ed, ptr %i.ea, align 1, !tbaa !119
  %i.ei = load i32, ptr %i.cz, align 8, !tbaa !98
  %.sroa.2.0.insert.ext.i.i = zext i32 %i.ei to i64
  %.sroa.2.0.insert.shift.i.i = shl nuw i64 %.sroa.2.0.insert.ext.i.i, 32
  %.sroa.0.0.insert.ext.i.i = zext i32 %i.eh to i64
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.2.0.insert.shift.i.i, %.sroa.0.0.insert.ext.i.i
  %i.ej = load ptr, ptr %i.da, align 8, !tbaa !104
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.dz
  store i64 %.sroa.0.0.insert.insert.i.i, ptr %i.ek, align 4
  %i.el = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.em = load i32, ptr %i.cu, align 8, !tbaa !100 ; 2 uses
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.cu, align 8, !tbaa !100
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.el, i64 %i.eo
  store i32 %.sroa.062.0.copyload, ptr %i.ep, align 4, !tbaa !50
  %.pre = load i32, ptr %i.dr, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.eq = phi i32 [ %i.dt, %bb.m ], [ %.pre, %bb.n ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.er = sext i32 %i.eq to i64
  %.not.not = icmp slt i64 %indvars.iv.next, %i.er
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !148

._crit_edge:                                      ; preds = %bb.o, %bb.l
  %i.es = load ptr, ptr %i.dn, align 8, !tbaa !110 ; 6 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 3 uses
  %i.eu = load i32, ptr %i.et, align 8, !tbaa !113 ; 2 uses
  %i.ev = sext i32 %i.eu to i64
  %.idx = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ew = getelementptr inbounds i8, ptr %i.es, i64 %.idx ; 4 uses
  %.not132284 = icmp eq i32 %i.eu, 0
  br i1 %.not132284, label %._crit_edge292, label %.lr.ph291

.lr.ph291:                                        ; preds = %._crit_edge
  %i.ex = xor i32 %i.dk, 1                        ; 4 uses
  %i.ey = ptrtoaddr ptr %i.es to i64
  %i.ez = add i64 %.idx, %i.ey
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph291, %.loopexit
  %.1105288 = phi i32 [ %.0104297, %.lr.ph291 ], [ %.4108, %.loopexit ] ; 5 uses
  %.0111287 = phi ptr [ %i.es, %.lr.ph291 ], [ %.4115, %.loopexit ] ; 6 uses
  %.0116285 = phi ptr [ %i.es, %.lr.ph291 ], [ %.4120, %.loopexit ] ; 9 uses
  %.0116285391 = ptrtoaddr ptr %.0116285 to i64
  %.0111287392 = ptrtoaddr ptr %.0111287 to i64   ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %.0111287, i64 4
  %.sroa.057.0.copyload = load i32, ptr %i.fa, align 4, !tbaa !50 ; 3 uses
  %i.fb = ashr i32 %.sroa.057.0.copyload, 1
  %i.fc = load ptr, ptr %i.cy, align 8, !tbaa !106 ; 4 uses
  %i.fd = sext i32 %i.fb to i64
  %i.fe = getelementptr inbounds i8, ptr %i.fc, i64 %i.fd
  %i.ff = trunc i32 %.sroa.057.0.copyload to i8
  %i.fg = load i8, ptr %i.fe, align 1, !tbaa !129
  %i.fh = and i8 %i.ff, 1
  %i.fi = icmp eq i8 %i.fg, %i.fh
  br i1 %i.fi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.fj = getelementptr inbounds nuw i8, ptr %.0111287, i64 8
  %i.fk = getelementptr inbounds nuw i8, ptr %.0116285, i64 8
  %i.fl = load i64, ptr %.0111287, align 4
  store i64 %i.fl, ptr %.0116285, align 4
  br label %.loopexit, !llvm.loop !149

bb.r:                                             ; preds = %bb.p
  %i.fm = load i32, ptr %.0111287, align 4, !tbaa !142 ; 4 uses
  %i.fn = load ptr, ptr %i.db, align 8, !tbaa !82
  %i.fo = zext i32 %i.fm to i64                   ; 6 uses
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fn, i64 %i.fo ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 12 ; 7 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !150 ; 2 uses
  %i.fs = icmp eq i32 %i.fr, %i.ex
  br i1 %i.fs, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !50 ; 2 uses
  store i32 %i.fu, ptr %i.fq, align 4, !tbaa !50
  store i32 %i.ex, ptr %i.ft, align 4, !tbaa !50
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.fv = phi i32 [ %i.fu, %bb.s ], [ %i.fr, %bb.r ] ; 10 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.0111287, i64 8 ; 9 uses
  %.not236 = icmp eq i32 %i.fv, %.sroa.057.0.copyload
  br i1 %.not236, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fx = ashr i32 %i.fv, 1
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fc, i64 %i.fy
  %i.ga = trunc i32 %i.fv to i8
  %i.gb = load i8, ptr %i.fz, align 1, !tbaa !129
  %i.gc = and i8 %i.ga, 1
  %i.gd = icmp eq i8 %i.gb, %i.gc
  br i1 %i.gd, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u
  %i.ge = getelementptr inbounds nuw i8, ptr %.0116285, i64 8
  %.sroa.7.0.insert.ext197 = zext i32 %i.fv to i64
  %.sroa.7.0.insert.shift198 = shl nuw i64 %.sroa.7.0.insert.ext197, 32
  %.sroa.0183.0.insert.insert187 = or disjoint i64 %.sroa.7.0.insert.shift198, %i.fo
  store i64 %.sroa.0183.0.insert.insert187, ptr %.0116285, align 4
  br label %.loopexit, !llvm.loop !149

.critedge:                                        ; preds = %bb.t, %bb.u
  %i.gf = load i32, ptr %i.dc, align 4, !tbaa !85
  %.not = icmp eq i32 %i.gf, 0
  %i.gg = load i64, ptr %i.fp, align 4
  %i.gh = lshr i64 %i.gg, 32                      ; 3 uses
  %i.gi = trunc nuw i64 %i.gh to i32
  %i.gj = icmp sgt i32 %i.gi, 2                   ; 2 uses
  br i1 %.not, label %.preheader, label %.preheader240

.preheader240:                                    ; preds = %.critedge
  br i1 %i.gj, label %.lr.ph274, label %.thread232

.preheader:                                       ; preds = %.critedge
  br i1 %i.gj, label %.lr.ph277, label %.thread232

.lr.ph274:                                        ; preds = %.preheader240, %bb.y
  %indvars.iv318 = phi i64 [ %indvars.iv.next319, %bb.y ], [ 2, %.preheader240 ] ; 5 uses
  %.0122272 = phi i32 [ %.1123, %bb.y ], [ -1, %.preheader240 ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv318
  %.sroa.015.0.copyload = load i32, ptr %i.gk, align 4, !tbaa !50 ; 4 uses
  %i.gl = ashr i32 %.sroa.015.0.copyload, 1       ; 2 uses
  %i.gm = sext i32 %i.gl to i64
  %i.gn = getelementptr inbounds i8, ptr %i.fc, i64 %i.gm
  %i.go = trunc i32 %.sroa.015.0.copyload to i8
  %i.gp = load i8, ptr %i.gn, align 1, !tbaa !129 ; 2 uses
  %i.gq = and i8 %i.go, 1                         ; 2 uses
  %i.gr = xor i8 %i.gq, %i.gp
  %.not237 = icmp eq i8 %i.gr, 1
  br i1 %.not237, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.lr.ph274
  %i.gs = load i32, ptr %i.cz, align 8, !tbaa !98
  %i.gt = load i32, ptr %i.dd, align 8, !tbaa !100
  %i.gu = icmp sgt i32 %i.gs, %i.gt
  %i.gv = icmp eq i8 %i.gp, %i.gq
  %or.cond = or i1 %i.gv, %i.gu
  br i1 %or.cond, label %.critedge4.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gw = trunc nuw nsw i64 %indvars.iv318 to i32
  %i.gx = load i32, ptr %i.de, align 8
  %i.gy = icmp sgt i32 %i.gl, %i.gx
  br i1 %i.gy, label %bb.y, label %.critedge4.thread

bb.y:                                             ; preds = %.lr.ph274, %bb.x
  %.1123 = phi i32 [ %i.gw, %bb.x ], [ %.0122272, %.lr.ph274 ] ; 3 uses
  %indvars.iv.next319 = add nuw nsw i64 %indvars.iv318, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next319, %i.gh
  br i1 %exitcond.not, label %.critedge4, label %.lr.ph274, !llvm.loop !151

.critedge4:                                       ; preds = %bb.y
  %.not133 = icmp eq i32 %.1123, -1
  br i1 %.not133, label %.thread232, label %.critedge4..critedge4.thread_crit_edge

.critedge4..critedge4.thread_crit_edge:           ; preds = %.critedge4
  %.phi.trans.insert = sext i32 %.1123 to i64     ; 2 uses
  %.phi.trans.insert326 = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %.phi.trans.insert
  %.pre327 = load i32, ptr %.phi.trans.insert326, align 4, !tbaa !50
  br label %.critedge4.thread

.critedge4.thread:                                ; preds = %bb.x, %bb.w, %.critedge4..critedge4.thread_crit_edge
  %.pre-phi = phi i64 [ %.phi.trans.insert, %.critedge4..critedge4.thread_crit_edge ], [ %indvars.iv318, %bb.w ], [ %indvars.iv318, %bb.x ]
  %i.gz = phi i32 [ %.pre327, %.critedge4..critedge4.thread_crit_edge ], [ %.sroa.015.0.copyload, %bb.w ], [ %.sroa.015.0.copyload, %bb.x ]
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.fq, i64 %.pre-phi
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  store i32 %i.gz, ptr %i.hb, align 4, !tbaa !50
  store i32 %i.ex, ptr %i.ha, align 4, !tbaa !50
  %.sroa.012.0.copyload = load i32, ptr %i.hb, align 4, !tbaa !50
  %i.hc = xor i32 %.sroa.012.0.copyload, 1
  %i.hd = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.he = sext i32 %i.hc to i64
  %i.hf = getelementptr inbounds [16 x i8], ptr %i.hd, i64 %i.he ; 5 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 8 ; 3 uses
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !113 ; 5 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hf, i64 12 ; 2 uses
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !152
  %i.hk = icmp eq i32 %i.hh, %i.hj
  br i1 %i.hk, label %bb.z, label %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i

._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i: ; preds = %.critedge4.thread
  %.pre.i161 = load ptr, ptr %i.hf, align 8, !tbaa !110
  br label %bb.ab

bb.z:                                             ; preds = %.critedge4.thread
  %i.hl = ashr i32 %i.hh, 1
  %i.hm = and i32 %i.hl, -2
  %i.hn = tail call i32 @llvm.smax.i32(i32 %i.hm, i32 0)
  %i.ho = add nuw nsw i32 %i.hn, 2                ; 2 uses
  %i.hp = sub nsw i32 2147483647, %i.hh
  %i.hq = icmp samesign ugt i32 %i.ho, %i.hp
  br i1 %i.hq, label %.loopexit241, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hr = load ptr, ptr %i.hf, align 8, !tbaa !110
  %i.hs = add nsw i32 %i.ho, %i.hh                ; 2 uses
  store i32 %i.hs, ptr %i.hi, align 4, !tbaa !152
  %i.ht = sext i32 %i.hs to i64
  %i.hu = shl nsw i64 %i.ht, 3
  %i.hv = tail call ptr @realloc(ptr noundef %i.hr, i64 noundef %i.hu) #34 ; 3 uses
  store ptr %i.hv, ptr %i.hf, align 8, !tbaa !110
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %.loopexit241, label %._crit_edge328

._crit_edge328:                                   ; preds = %bb.aa
  %.pre329 = load i32, ptr %i.hg, align 8, !tbaa !113
  br label %bb.ab

.loopexit241:                                     ; preds = %bb.z, %bb.aa
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

bb.ab:                                            ; preds = %._crit_edge328, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i
  %i.hx = phi i32 [ %i.hh, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %.pre329, %._crit_edge328 ] ; 2 uses
  %i.hy = phi ptr [ %.pre.i161, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %i.hv, %._crit_edge328 ]
  %i.hz = add nsw i32 %i.hx, 1
  store i32 %i.hz, ptr %i.hg, align 8, !tbaa !113
  %i.ia = sext i32 %i.hx to i64
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %i.ia
  %.sroa.7.0.insert.ext202 = zext i32 %i.fv to i64
  %.sroa.7.0.insert.shift203 = shl nuw i64 %.sroa.7.0.insert.ext202, 32
  %.sroa.0183.0.insert.insert191 = or disjoint i64 %.sroa.7.0.insert.shift203, %i.fo
  store i64 %.sroa.0183.0.insert.insert191, ptr %i.ib, align 4
  br label %.loopexit

bb.ac:                                            ; preds = %.lr.ph277
  %indvars.iv.next322 = add nuw nsw i64 %indvars.iv321, 1 ; 2 uses
  %exitcond325.not = icmp eq i64 %indvars.iv.next322, %i.gh
  br i1 %exitcond325.not, label %.thread232, label %.lr.ph277, !llvm.loop !153

.lr.ph277:                                        ; preds = %.preheader, %bb.ac
  %indvars.iv321 = phi i64 [ %indvars.iv.next322, %bb.ac ], [ 2, %.preheader ] ; 3 uses
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv321
  %.sroa.07.0.copyload = load i32, ptr %i.ic, align 4, !tbaa !50 ; 3 uses
  %i.id = ashr i32 %.sroa.07.0.copyload, 1
  %i.ie = sext i32 %i.id to i64
  %i.if = getelementptr inbounds i8, ptr %i.fc, i64 %i.ie
  %i.ig = trunc i32 %.sroa.07.0.copyload to i8
  %i.ih = load i8, ptr %i.if, align 1, !tbaa !129
  %i.ii = and i8 %i.ig, 1
  %i.ij = xor i8 %i.ii, %i.ih
  %.not238 = icmp eq i8 %i.ij, 1
  br i1 %.not238, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph277
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.fq, i64 %indvars.iv321
  %i.il = getelementptr inbounds nuw i8, ptr %i.fp, i64 16 ; 2 uses
  store i32 %.sroa.07.0.copyload, ptr %i.il, align 4, !tbaa !50
  store i32 %i.ex, ptr %i.ik, align 4, !tbaa !50
  %.sroa.06.0.copyload = load i32, ptr %i.il, align 4, !tbaa !50
  %i.im = xor i32 %.sroa.06.0.copyload, 1
  %i.in = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.io = sext i32 %i.im to i64
  %i.ip = getelementptr inbounds [16 x i8], ptr %i.in, i64 %i.io ; 5 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 8 ; 3 uses
  %i.ir = load i32, ptr %i.iq, align 8, !tbaa !113 ; 5 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ip, i64 12 ; 2 uses
  %i.it = load i32, ptr %i.is, align 4, !tbaa !152
  %i.iu = icmp eq i32 %i.ir, %i.it
  br i1 %i.iu, label %bb.ae, label %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i164

._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i164: ; preds = %bb.ad
  %.pre.i165 = load ptr, ptr %i.ip, align 8, !tbaa !110
  br label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.iv = ashr i32 %i.ir, 1
  %i.iw = and i32 %i.iv, -2
  %i.ix = tail call i32 @llvm.smax.i32(i32 %i.iw, i32 0)
  %i.iy = add nuw nsw i32 %i.ix, 2                ; 2 uses
  %i.iz = sub nsw i32 2147483647, %i.ir
  %i.ja = icmp samesign ugt i32 %i.iy, %i.iz
  br i1 %i.ja, label %.loopexit242, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.jb = load ptr, ptr %i.ip, align 8, !tbaa !110
  %i.jc = add nsw i32 %i.iy, %i.ir                ; 2 uses
  store i32 %i.jc, ptr %i.is, align 4, !tbaa !152
  %i.jd = sext i32 %i.jc to i64
  %i.je = shl nsw i64 %i.jd, 3
  %i.jf = tail call ptr @realloc(ptr noundef %i.jb, i64 noundef %i.je) #34 ; 3 uses
  store ptr %i.jf, ptr %i.ip, align 8, !tbaa !110
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %.loopexit242, label %._crit_edge330

._crit_edge330:                                   ; preds = %bb.af
  %.pre331 = load i32, ptr %i.iq, align 8, !tbaa !113
  br label %bb.ag

.loopexit242:                                     ; preds = %bb.ae, %bb.af
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

bb.ag:                                            ; preds = %._crit_edge330, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i164
  %i.jh = phi i32 [ %i.ir, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i164 ], [ %.pre331, %._crit_edge330 ] ; 2 uses
  %i.ji = phi ptr [ %.pre.i165, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i164 ], [ %i.jf, %._crit_edge330 ]
  %i.jj = add nsw i32 %i.jh, 1
  store i32 %i.jj, ptr %i.iq, align 8, !tbaa !113
  %i.jk = sext i32 %i.jh to i64
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.ji, i64 %i.jk
  %.sroa.7.0.insert.ext207 = zext i32 %i.fv to i64
  %.sroa.7.0.insert.shift208 = shl nuw i64 %.sroa.7.0.insert.ext207, 32
  %.sroa.0183.0.insert.insert195 = or disjoint i64 %.sroa.7.0.insert.shift208, %i.fo
  store i64 %.sroa.0183.0.insert.insert195, ptr %i.jl, align 4
  br label %.loopexit

.thread232:                                       ; preds = %bb.ac, %.preheader240, %.preheader, %.critedge4
  %i.jm = getelementptr inbounds nuw i8, ptr %.0116285, i64 8 ; 5 uses
  %.sroa.7.0.insert.ext = zext i32 %i.fv to i64
  %.sroa.7.0.insert.shift = shl nuw i64 %.sroa.7.0.insert.ext, 32
  %.sroa.0183.0.insert.insert = or disjoint i64 %.sroa.7.0.insert.shift, %i.fo
  store i64 %.sroa.0183.0.insert.insert, ptr %.0116285, align 4
  %i.jn = ashr i32 %i.fv, 1
  %i.jo = load ptr, ptr %i.cy, align 8, !tbaa !106
  %i.jp = sext i32 %i.jn to i64                   ; 2 uses
  %i.jq = getelementptr inbounds i8, ptr %i.jo, i64 %i.jp ; 2 uses
  %i.jr = trunc i32 %i.fv to i8
  %i.js = load i8, ptr %i.jq, align 1, !tbaa !129
  %i.jt = and i8 %i.jr, 1                         ; 2 uses
  %i.ju = xor i8 %i.js, %i.jt
  %i.jv = icmp eq i8 %i.ju, 1
  br i1 %i.jv, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %.thread232
  %i.jw = load i32, ptr %i.cu, align 8, !tbaa !100
  store i32 %i.jw, ptr %i.cs, align 8, !tbaa !147
  %i.jx = icmp ult ptr %i.fw, %i.ew
  br i1 %i.jx, label %.lr.ph281.preheader, label %.loopexit

.lr.ph281.preheader:                              ; preds = %bb.ah
  %1 = add i64 %.0111287392, 16
  %2 = tail call i64 @llvm.umax.i64(i64 %i.ez, i64 %1)
  %3 = add i64 %2, -9
  %i.jy = sub i64 %3, %.0111287392                ; 2 uses
  %i.jz = lshr i64 %i.jy, 3
  %i.ka = add nuw nsw i64 %i.jz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.jy, 24
  %i.kb = sub i64 %.0111287392, %.0116285391
  %diff.check = icmp ugt i64 %i.kb, -32
  %or.cond396 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond396, label %.lr.ph281.preheader397, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph281.preheader
  %n.vec = and i64 %i.ka, 4611686018427387900     ; 3 uses
  %i.kc = shl i64 %n.vec, 3                       ; 2 uses
  %i.kd = getelementptr i8, ptr %i.fw, i64 %i.kc  ; 2 uses
  %i.ke = getelementptr i8, ptr %i.jm, i64 %i.kc  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fw, i64 %i.kf ; 2 uses
  %next.gep393 = getelementptr i8, ptr %i.jm, i64 %i.kf ; 2 uses
  %i.kg = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep, align 4
  %wide.load394 = load <2 x i64>, ptr %i.kg, align 4
  %i.kh = getelementptr i8, ptr %next.gep393, i64 16
  store <2 x i64> %wide.load, ptr %next.gep393, align 4
  store <2 x i64> %wide.load394, ptr %i.kh, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ki = icmp eq i64 %index.next, %n.vec
  br i1 %i.ki, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ka, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph281.preheader397

.lr.ph281.preheader397:                           ; preds = %.lr.ph281.preheader, %middle.block
  %.1112279.ph = phi ptr [ %i.fw, %.lr.ph281.preheader ], [ %i.kd, %middle.block ]
  %.1117278.ph = phi ptr [ %i.jm, %.lr.ph281.preheader ], [ %i.ke, %middle.block ]
  br label %.lr.ph281

.lr.ph281:                                        ; preds = %.lr.ph281.preheader397, %.lr.ph281
  %.1112279 = phi ptr [ %i.kj, %.lr.ph281 ], [ %.1112279.ph, %.lr.ph281.preheader397 ] ; 2 uses
  %.1117278 = phi ptr [ %i.kk, %.lr.ph281 ], [ %.1117278.ph, %.lr.ph281.preheader397 ] ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.1112279, i64 8 ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.1117278, i64 8 ; 2 uses
  %i.kl = load i64, ptr %.1112279, align 4
  store i64 %i.kl, ptr %.1117278, align 4
  %i.km = icmp ult ptr %i.kj, %i.ew
  br i1 %i.km, label %.lr.ph281, label %.loopexit, !llvm.loop !155

bb.ai:                                            ; preds = %.thread232
  store i8 %i.jt, ptr %i.jq, align 1, !tbaa !119
  %i.kn = load i32, ptr %i.cz, align 8, !tbaa !98
  %.sroa.2.0.insert.ext.i.i167 = zext i32 %i.kn to i64
  %.sroa.2.0.insert.shift.i.i168 = shl nuw i64 %.sroa.2.0.insert.ext.i.i167, 32
  %.sroa.0.0.insert.insert.i.i170 = or disjoint i64 %.sroa.2.0.insert.shift.i.i168, %i.fo
  %i.ko = load ptr, ptr %i.da, align 8, !tbaa !104
  %i.kp = getelementptr inbounds [8 x i8], ptr %i.ko, i64 %i.jp
  store i64 %.sroa.0.0.insert.insert.i.i170, ptr %i.kp, align 4
  %i.kq = load ptr, ptr %i.ct, align 8, !tbaa !99
  %i.kr = load i32, ptr %i.cu, align 8, !tbaa !100 ; 2 uses
  %i.ks = add nsw i32 %i.kr, 1
  store i32 %i.ks, ptr %i.cu, align 8, !tbaa !100
  %i.kt = sext i32 %i.kr to i64
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.kt
  store i32 %i.fv, ptr %i.ku, align 4, !tbaa !50
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281, %middle.block, %bb.ah, %bb.v, %bb.ai, %bb.ab, %bb.ag, %bb.q
  %.4120 = phi ptr [ %i.fk, %bb.q ], [ %i.ge, %bb.v ], [ %.0116285, %bb.ag ], [ %i.jm, %bb.ai ], [ %.0116285, %bb.ab ], [ %i.jm, %bb.ah ], [ %i.ke, %middle.block ], [ %i.kk, %.lr.ph281 ] ; 2 uses
  %.4115 = phi ptr [ %i.fj, %bb.q ], [ %i.fw, %bb.v ], [ %i.fw, %bb.ag ], [ %i.fw, %bb.ai ], [ %i.fw, %bb.ab ], [ %i.fw, %bb.ah ], [ %i.kd, %middle.block ], [ %i.kj, %.lr.ph281 ] ; 2 uses
  %.4108 = phi i32 [ %.1105288, %bb.q ], [ %.1105288, %bb.v ], [ %.1105288, %bb.ag ], [ %.1105288, %bb.ai ], [ %.1105288, %bb.ab ], [ %i.fm, %bb.ah ], [ %i.fm, %middle.block ], [ %i.fm, %.lr.ph281 ] ; 2 uses
  %.not132 = icmp eq ptr %.4115, %i.ew
  br i1 %.not132, label %._crit_edge292, label %bb.p

._crit_edge292:                                   ; preds = %.loopexit, %._crit_edge
  %.0116.lcssa = phi ptr [ %i.es, %._crit_edge ], [ %.4120, %.loopexit ]
  %.0111.lcssa = phi ptr [ %i.es, %._crit_edge ], [ %i.ew, %.loopexit ]
  %.1105.lcssa = phi i32 [ %.0104297, %._crit_edge ], [ %.4108, %.loopexit ] ; 2 uses
  %i.kv = ptrtoint ptr %.0111.lcssa to i64
  %i.kw = ptrtoint ptr %.0116.lcssa to i64
  %i.kx = sub i64 %i.kv, %i.kw
  %i.ky = lshr exact i64 %i.kx, 3
  %i.kz = trunc i64 %i.ky to i32                  ; 2 uses
  %i.la = icmp sgt i32 %i.kz, 0
  br i1 %i.la, label %.lr.ph.i171, label %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit

.lr.ph.i171:                                      ; preds = %._crit_edge292
  %.promoted.i = load i32, ptr %i.et, align 8, !tbaa !113
  %i.lb = sub i32 %.promoted.i, %i.kz
  store i32 %i.lb, ptr %i.et, align 8, !tbaa !113
  br label %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit

_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit: ; preds = %._crit_edge292, %.lr.ph.i171
  %i.lc = load i32, ptr %i.cs, align 8, !tbaa !147 ; 2 uses
  %i.ld = load i32, ptr %i.cu, align 8, !tbaa !100
  %i.le = icmp slt i32 %i.lc, %i.ld
  br i1 %i.le, label %bb.l, label %._crit_edge299.loopexit, !llvm.loop !156

._crit_edge299.loopexit:                          ; preds = %_ZN5Gluco3vecINS_6Solver7WatcherEE6shrinkEi.exit
  %i.lf = zext nneg i32 %i.do to i64
  br label %._crit_edge299

._crit_edge299:                                   ; preds = %._crit_edge299.loopexit, %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155
  %.0109.lcssa = phi i64 [ 0, %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155 ], [ %i.lf, %._crit_edge299.loopexit ] ; 2 uses
  %.0104.lcssa = phi i32 [ -1, %_ZN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEE8cleanAllEv.exit155 ], [ %.1105.lcssa, %._crit_edge299.loopexit ]
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 2 uses
  %i.lh = load i64, ptr %i.lg, align 8, !tbaa !157
  %i.li = add nsw i64 %i.lh, %.0109.lcssa
  store i64 %i.li, ptr %i.lg, align 8, !tbaa !157
  %i.lj = getelementptr inbounds nuw i8, ptr %0, i64 752 ; 2 uses
  %i.lk = load i64, ptr %i.lj, align 8, !tbaa !158
  %i.ll = sub nsw i64 %i.lk, %.0109.lcssa
  store i64 %i.ll, ptr %i.lj, align 8, !tbaa !158
  br label %bb.aj

.critedge135:                                     ; preds = %.lr.ph
  %i.lm = load i32, ptr %i.dv, align 4, !tbaa !142
  br label %bb.aj

bb.aj:                                            ; preds = %.critedge135, %._crit_edge299
  %.4 = phi i32 [ %i.lm, %.critedge135 ], [ %.0104.lcssa, %._crit_edge299 ]
  ret i32 %.4
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5Gluco6Solver12attachClauseEj(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(1216) %0, i32 noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !82
  %i.c = zext i32 %1 to i64                       ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.c ; 4 uses
  %i.e = load i64, ptr %i.d, align 4
  %.mask = and i64 %i.e, -4294967296
  %i.f = icmp eq i64 %.mask, 8589934592
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 12 ; 3 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.g, align 4, !tbaa !50
  %i.h = xor i32 %.sroa.0.0.copyload.i, 1
  %i.i = sext i32 %i.h to i64                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %.sroa.0.0.copyload.i25 = load i32, ptr %i.j, align 4, !tbaa !50 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 544 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.m = getelementptr inbounds [16 x i8], ptr %i.l, i64 %i.i ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !113  ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !152
  %i.r = icmp eq i32 %i.o, %i.q
  br i1 %i.r, label %bb.c, label %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i

._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i: ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.m, align 8, !tbaa !110
  br label %_ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.s = ashr i32 %i.o, 1
  %i.t = and i32 %i.s, -2
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 0)
  %i.v = add nuw nsw i32 %i.u, 2                  ; 2 uses
  %i.w = sub nsw i32 2147483647, %i.o
  %i.x = icmp samesign ugt i32 %i.v, %i.w
  br i1 %i.x, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !110
  %i.z = add nsw i32 %i.v, %i.o                   ; 2 uses
  store i32 %i.z, ptr %i.p, align 4, !tbaa !152
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 3
  %i.ac = tail call ptr @realloc(ptr noundef %i.y, i64 noundef %i.ab) #34 ; 3 uses
  store ptr %i.ac, ptr %i.m, align 8, !tbaa !110
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.e, label %._ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge

._ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge: ; preds = %bb.d
  %.pre55 = load i32, ptr %i.n, align 8, !tbaa !113
  br label %_ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call fastcc void @_ZN5GlucoL19fatal_out_of_memoryEv()
  unreachable

_ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit: ; preds = %._ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i
  %i.ae = phi i32 [ %i.o, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %.pre55, %._ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge ] ; 2 uses
  %i.af = phi ptr [ %.pre.i, %._ZN5Gluco3vecINS_6Solver7WatcherEE8capacityEi.exit_crit_edge.i ], [ %i.ac, %._ZN5Gluco3vecINS_6Solver7WatcherEE4pushERKS2_.exit_crit_edge ]
  %i.ag = add nsw i32 %i.ae, 1
  store i32 %i.ag, ptr %i.n, align 8, !tbaa !113
  %i.ah = sext i32 %i.ae to i64
  %i.ai = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.ah
  %.sroa.452.0.insert.ext = zext i32 %.sroa.0.0.copyload.i25 to i64
  %.sroa.452.0.insert.shift = shl nuw i64 %.sroa.452.0.insert.ext, 32
  %.sroa.051.0.insert.insert = or disjoint i64 %.sroa.452.0.insert.shift, %i.c
  store i64 %.sroa.051.0.insert.insert, ptr %i.ai, align 4
  %.sroa.0.0.copyload.i26 = load i32, ptr %i.j, align 4, !tbaa !50
  %i.aj = xor i32 %.sroa.0.0.copyload.i26, 1
  %i.ak = load ptr, ptr %i.k, align 8, !tbaa !108
  %i.al = sext i32 %i.aj to i64
end_hunk_0
begin_hunk_1_@_ZN5Gluco4sortIj11reduceDB_ltEEvPT_iT0_:bb.a
.preheader:                                       ; preds = %.split, %._crit_edge.i39, %bb.h, %.split.us, %bb.g, %._crit_edge.i39.us
  %indvars.iv.next.lcssa148.sink = phi i64 [ %indvars.iv.next118, %.split.us ], [ %indvars.iv.next118, %._crit_edge.i39.us ], [ %indvars.iv.next118, %bb.g ], [ %indvars.iv.next, %bb.h ], [ %indvars.iv.next, %._crit_edge.i39 ], [ %indvars.iv.next, %.split ] ; 4 uses
  %i.da = phi i32 [ %i.bp, %.split.us ], [ %i.bp, %._crit_edge.i39.us ], [ %i.bp, %bb.g ], [ %i.ci, %bb.h ], [ %i.ci, %._crit_edge.i39 ], [ %i.ci, %.split ]
  %i.db = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next.lcssa148.sink ; 3 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.preheader
  %indvars.iv120 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next121, %.backedge.backedge ]
  %indvars.iv.next121 = add nsw i64 %indvars.iv120, -1 ; 5 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next121
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !50 ; 2 uses
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
  br label %.backedge, !llvm.loop !329

bb.k:                                             ; preds = %.thread.i44
  %i.dq = icmp samesign ult i32 %i.bm, %i.do
  br i1 %i.dq, label %_ZN11reduceDB_ltclEjj.exit46.thread, label %.split49

.split49:                                         ; preds = %bb.k
  %i.dr = load float, ptr %i.bn, align 4, !tbaa !177
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.ds, i64 %i.di
  %i.du = load float, ptr %i.dt, align 4, !tbaa !177
  %i.dv = fcmp olt float %i.dr, %i.du
  br i1 %i.dv, label %.backedge.backedge, label %_ZN11reduceDB_ltclEjj.exit46.thread

_ZN11reduceDB_ltclEjj.exit46.thread:              ; preds = %bb.k, %bb.j, %bb.i, %.split49
  %.not = icmp slt i64 %indvars.iv.next.lcssa148.sink, %indvars.iv.next121
  br i1 %.not, label %bb.l, label %tailrecurse

bb.l:                                             ; preds = %_ZN11reduceDB_ltclEjj.exit46.thread
  %i.dw = getelementptr inbounds [4 x i8], ptr %.tr91, i64 %indvars.iv.next121
  store i32 %i.dd, ptr %i.db, align 4, !tbaa !50
  store i32 %i.da, ptr %i.dw, align 4, !tbaa !50
  br label %bb.f, !llvm.loop !330

tailrecurse:                                      ; preds = %_ZN11reduceDB_ltclEjj.exit46.thread
  %i.dx = trunc nsw i64 %indvars.iv.next.lcssa148.sink to i32 ; 2 uses
  tail call void @_ZN5Gluco4sortIj11reduceDB_ltEEvPT_iT0_(ptr noundef nonnull %.tr91, i32 noundef %i.dx, ptr nonnull %2)
  %i.dy = sub nsw i32 %.tr5092, %i.dx             ; 3 uses
  %i.dz = icmp slt i32 %i.dy, 16
  br i1 %i.dz, label %tailrecurse._crit_edge, label %.lr.ph

_ZN5Gluco13selectionSortIj11reduceDB_ltEEvPT_iT0_.exit: ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_Glucose.cpp() #27 section ".text.startup" {
bb.a:
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15opt_incremental, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco10BoolOptionE, i64 16), ptr @_ZL15opt_incremental, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15opt_incremental, i64 40), align 8, !tbaa !299
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL5opt_K, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL5opt_K, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_K, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_K, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_K, i64 57), align 1, !tbaa !66
  store double 8.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_K, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL5opt_R, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL5opt_R, align 8, !tbaa !8
  store <2 x double> <double 1.000000e+00, double 5.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_R, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_R, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_R, i64 57), align 1, !tbaa !66
  store double 1.400000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZL5opt_R, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL18opt_size_lbd_queue, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL18opt_size_lbd_queue, align 8, !tbaa !8
  store i64 9223372032559808522, ptr getelementptr inbounds nuw (i8, ptr @_ZL18opt_size_lbd_queue, i64 40), align 8
  store i32 50, ptr getelementptr inbounds nuw (i8, ptr @_ZL18opt_size_lbd_queue, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL20opt_size_trail_queue, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL20opt_size_trail_queue, align 8, !tbaa !8
  store i64 9223372032559808522, ptr getelementptr inbounds nuw (i8, ptr @_ZL20opt_size_trail_queue, i64 40), align 8
  store i32 5000, ptr getelementptr inbounds nuw (i8, ptr @_ZL20opt_size_trail_queue, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL19opt_first_reduce_db, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL19opt_first_reduce_db, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_first_reduce_db, i64 40), align 8
  store i32 2000, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_first_reduce_db, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL17opt_inc_reduce_db, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL17opt_inc_reduce_db, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZL17opt_inc_reduce_db, i64 40), align 8
  store i32 300, ptr getelementptr inbounds nuw (i8, ptr @_ZL17opt_inc_reduce_db, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL22opt_spec_inc_reduce_db, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL22opt_spec_inc_reduce_db, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZL22opt_spec_inc_reduce_db, i64 40), align 8
  store i32 1000, ptr getelementptr inbounds nuw (i8, ptr @_ZL22opt_spec_inc_reduce_db, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL24opt_lb_lbd_frozen_clause, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL24opt_lb_lbd_frozen_clause, align 8, !tbaa !8
  store i64 9223372032559808512, ptr getelementptr inbounds nuw (i8, ptr @_ZL24opt_lb_lbd_frozen_clause, i64 40), align 8
  store i32 30, ptr getelementptr inbounds nuw (i8, ptr @_ZL24opt_lb_lbd_frozen_clause, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL28opt_lb_size_minimzing_clause, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL28opt_lb_size_minimzing_clause, align 8, !tbaa !8
  store i64 9223372032559808515, ptr getelementptr inbounds nuw (i8, ptr @_ZL28opt_lb_size_minimzing_clause, i64 40), align 8
  store i32 30, ptr getelementptr inbounds nuw (i8, ptr @_ZL28opt_lb_size_minimzing_clause, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL27opt_lb_lbd_minimzing_clause, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL27opt_lb_lbd_minimzing_clause, align 8, !tbaa !8
  store i64 9223372032559808515, ptr getelementptr inbounds nuw (i8, ptr @_ZL27opt_lb_lbd_minimzing_clause, i64 40), align 8
  store i32 6, ptr getelementptr inbounds nuw (i8, ptr @_ZL27opt_lb_lbd_minimzing_clause, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL13opt_var_decay, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL13opt_var_decay, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZL13opt_var_decay, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13opt_var_decay, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL13opt_var_decay, i64 57), align 1, !tbaa !66
  store double 8.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZL13opt_var_decay, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL16opt_clause_decay, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL16opt_clause_decay, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_clause_decay, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_clause_decay, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_clause_decay, i64 57), align 1, !tbaa !66
  store double f0x3FEFF7CED916872B, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_clause_decay, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL19opt_random_var_freq, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL19opt_random_var_freq, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double 1.000000e+00>, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_random_var_freq, i64 40), align 8, !tbaa !47
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_random_var_freq, i64 56), align 8, !tbaa !66
  store i8 1, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_random_var_freq, i64 57), align 1, !tbaa !66
  store double 0.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZL19opt_random_var_freq, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL15opt_random_seed, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL15opt_random_seed, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr getelementptr inbounds nuw (i8, ptr @_ZL15opt_random_seed, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15opt_random_seed, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL15opt_random_seed, i64 57), align 1, !tbaa !66
  store double f0x4195D9C3F4000000, ptr getelementptr inbounds nuw (i8, ptr @_ZL15opt_random_seed, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL14opt_ccmin_mode, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL14opt_ccmin_mode, align 8, !tbaa !8
  store i64 8589934592, ptr getelementptr inbounds nuw (i8, ptr @_ZL14opt_ccmin_mode, i64 40), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL14opt_ccmin_mode, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL16opt_phase_saving, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.124)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco9IntOptionE, i64 16), ptr @_ZL16opt_phase_saving, align 8, !tbaa !8
  store i64 8589934592, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_phase_saving, i64 40), align 8
  store i32 2, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_phase_saving, i64 48), align 8, !tbaa !314
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL16opt_rnd_init_act, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco10BoolOptionE, i64 16), ptr @_ZL16opt_rnd_init_act, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_rnd_init_act, i64 40), align 8, !tbaa !299
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @_ZL16opt_garbage_frac, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.119)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12DoubleOptionE, i64 16), ptr @_ZL16opt_garbage_frac, align 8, !tbaa !8
  store <2 x double> <double 0.000000e+00, double +inf>, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_garbage_frac, i64 40), align 8, !tbaa !47
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_garbage_frac, i64 56), align 8, !tbaa !66
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_garbage_frac, i64 57), align 1, !tbaa !66
  store double 2.000000e-01, ptr getelementptr inbounds nuw (i8, ptr @_ZL16opt_garbage_frac, i64 64), align 8, !tbaa !309
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @opt_certified_, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.108)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco10BoolOptionE, i64 16), ptr @opt_certified_, align 8, !tbaa !8
  store i8 0, ptr getelementptr inbounds nuw (i8, ptr @opt_certified_, i64 40), align 8, !tbaa !299
  tail call void @_ZN5Gluco6OptionC2EPKcS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(40) @opt_certified_file_, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.134)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5Gluco12StringOptionE, i64 16), ptr @opt_certified_file_, align 8, !tbaa !8
  store ptr @.str.62, ptr getelementptr inbounds nuw (i8, ptr @opt_certified_file_, i64 40), align 8, !tbaa !315
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #28

; Function Attrs: nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #29

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.or.v4i32(<4 x i32>) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { nofree nounwind }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!11 = !{!"_ZTSN5Gluco6SolverE", !5, i64 8, !12, i64 16, !12, i64 24, !5, i64 32, !13, i64 36, !14, i64 40, !15, i64 48, !16, i64 56, !17, i64 72, !5, i64 88, !19, i64 96, !17, i64 112, !5, i64 128, !5, i64 132, !5, i64 136, !21, i64 144, !21, i64 152, !21, i64 160, !21, i64 168, !5, i64 176, !5, i64 180, !5, i64 184, !5, i64 188, !5, i64 192, !5, i64 196, !21, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !5, i64 232, !5, i64 236, !13, i64 240, !13, i64 241, !21, i64 248, !22, i64 256, !13, i64 264, !15, i64 272, !15, i64 280, !15, i64 288, !15, i64 296, !15, i64 304, !15, i64 312, !15, i64 320, !15, i64 328, !15, i64 336, !15, i64 344, !15, i64 352, !15, i64 360, !15, i64 368, !15, i64 376, !15, i64 384, !15, i64 392, !15, i64 400, !15, i64 408, !15, i64 416, !15, i64 424, !15, i64 432, !15, i64 440, !5, i64 448, !13, i64 452, !21, i64 456, !23, i64 464, !21, i64 480, !25, i64 488, !25, i64 544, !32, i64 600, !32, i64 616, !19, i64 632, !28, i64 648, !28, i64 664, !17, i64 680, !16, i64 696, !16, i64 712, !33, i64 728, !5, i64 744, !5, i64 748, !15, i64 752, !17, i64 760, !35, i64 776, !21, i64 816, !13, i64 824, !32, i64 832, !17, i64 848, !38, i64 864, !5, i64 888, !40, i64 896, !40, i64 960, !41, i64 1024, !5, i64 1028, !28, i64 1032, !17, i64 1048, !17, i64 1064, !17, i64 1080, !5, i64 1096, !21, i64 1104, !21, i64 1112, !5, i64 1120, !15, i64 1128, !15, i64 1136, !13, i64 1144, !5, i64 1148, !5, i64 1152, !21, i64 1160, !21, i64 1168, !5, i64 1176, !5, i64 1180, !16, i64 1184, !16, i64 1200}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!"p1 int", !12, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!"_ZTSN5Gluco3vecIiEE", !14, i64 0, !5, i64 8, !5, i64 12}
!17 = !{!"_ZTSN5Gluco3vecINS_3LitEEE", !18, i64 0, !5, i64 8, !5, i64 12}
!18 = !{!"p1 _ZTSN5Gluco3LitE", !12, i64 0}
!19 = !{!"_ZTSN5Gluco3vecINS_5lboolEEE", !20, i64 0, !5, i64 8, !5, i64 12}
!20 = !{!"p1 _ZTSN5Gluco5lboolE", !12, i64 0}
!21 = !{!"double", !6, i64 0}
!22 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!23 = !{!"_ZTSN5Gluco3vecIdEE", !24, i64 0, !5, i64 8, !5, i64 12}
!24 = !{!"p1 double", !12, i64 0}
!25 = !{!"_ZTSN5Gluco8OccListsINS_3LitENS_3vecINS_6Solver7WatcherEEENS3_14WatcherDeletedEEE", !26, i64 0, !28, i64 16, !17, i64 32, !30, i64 48}
!26 = !{!"_ZTSN5Gluco3vecINS0_INS_6Solver7WatcherEEEEE", !27, i64 0, !5, i64 8, !5, i64 12}
!27 = !{!"p1 _ZTSN5Gluco3vecINS_6Solver7WatcherEEE", !12, i64 0}
!28 = !{!"_ZTSN5Gluco3vecIcEE", !29, i64 0, !5, i64 8, !5, i64 12}
!29 = !{!"p1 omnipotent char", !12, i64 0}
!30 = !{!"_ZTSN5Gluco6Solver14WatcherDeletedE", !31, i64 0}
!31 = !{!"p1 _ZTSN5Gluco15ClauseAllocatorE", !12, i64 0}
!32 = !{!"_ZTSN5Gluco3vecIjEE", !14, i64 0, !5, i64 8, !5, i64 12}
!33 = !{!"_ZTSN5Gluco3vecINS_6Solver7VarDataEEE", !34, i64 0, !5, i64 8, !5, i64 12}
!34 = !{!"p1 _ZTSN5Gluco6Solver7VarDataE", !12, i64 0}
!35 = !{!"_ZTSN5Gluco4HeapINS_6Solver10VarOrderLtEEE", !36, i64 0, !16, i64 8, !16, i64 24}
!36 = !{!"_ZTSN5Gluco6Solver10VarOrderLtE", !37, i64 0}
!37 = !{!"p1 _ZTSN5Gluco3vecIdEE", !12, i64 0}
!38 = !{!"_ZTSN5Gluco15ClauseAllocatorE", !39, i64 0, !13, i64 20}
!39 = !{!"_ZTSN5Gluco15RegionAllocatorIjEE", !14, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!40 = !{!"_ZTSN5Gluco6bqueueIjEE", !32, i64 0, !5, i64 16, !5, i64 20, !15, i64 24, !5, i64 32, !5, i64 36, !13, i64 40, !21, i64 48, !21, i64 56}
!41 = !{!"float", !6, i64 0}
!42 = !{!11, !12, i64 24}
!43 = !{!11, !5, i64 32}
!44 = !{!11, !13, i64 36}
!45 = !{!11, !5, i64 132}
!46 = !{!11, !5, i64 136}
!47 = !{!21, !21, i64 0}
!48 = !{!11, !21, i64 144}
!49 = !{!11, !21, i64 152}
!50 = !{!5, !5, i64 0}
!51 = !{!11, !21, i64 160}
!52 = !{!11, !21, i64 168}
!53 = !{!11, !5, i64 176}
!54 = !{!11, !5, i64 180}
!55 = !{!11, !5, i64 184}
!56 = !{!11, !5, i64 188}
!57 = !{!11, !5, i64 192}
!58 = !{!11, !5, i64 196}
!59 = !{!11, !21, i64 200}
!60 = !{!11, !21, i64 208}
!61 = !{!11, !21, i64 216}
!62 = !{!11, !21, i64 224}
!63 = !{!11, !5, i64 232}
!64 = !{!11, !5, i64 236}
!65 = !{!11, !13, i64 240}
!66 = !{!13, !13, i64 0}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!11, !13, i64 241}
!70 = !{!11, !21, i64 248}
!71 = !{!11, !22, i64 256}
!72 = !{!11, !13, i64 264}
!73 = !{!11, !15, i64 440}
!74 = !{!11, !13, i64 452}
!75 = !{!11, !21, i64 456}
!76 = !{!11, !21, i64 480}
!77 = !{!31, !31, i64 0}
!78 = !{!11, !5, i64 748}
!79 = !{!37, !37, i64 0}
!80 = !{!11, !13, i64 824}
!81 = !{!39, !5, i64 12}
!82 = !{!39, !14, i64 0}
!83 = !{!38, !13, i64 20}
!84 = !{!11, !13, i64 1144}
!85 = !{!11, !5, i64 1148}
!86 = !{!11, !5, i64 1152}
!87 = !{!11, !5, i64 1096}
!88 = !{!40, !5, i64 16}
!89 = !{!40, !5, i64 32}
!90 = !{!40, !5, i64 36}
!91 = !{!40, !5, i64 20}
!92 = !{!32, !14, i64 0}
!93 = !{!40, !21, i64 48}
!94 = !{!11, !41, i64 1024}
!95 = !{!11, !5, i64 888}
!96 = !{!29, !29, i64 0}
!97 = !{!16, !14, i64 0}
!98 = !{!16, !5, i64 8}
!99 = !{!17, !18, i64 0}
!100 = !{!17, !5, i64 8}
!101 = !{!28, !29, i64 0}
!102 = !{!28, !5, i64 8}
!103 = !{!32, !5, i64 8}
!104 = !{!33, !34, i64 0}
!105 = !{!33, !5, i64 8}
!106 = !{!19, !20, i64 0}
!107 = !{!19, !5, i64 8}
!108 = !{!26, !27, i64 0}
!109 = !{!26, !5, i64 8}
!110 = !{!111, !112, i64 0}
!111 = !{!"_ZTSN5Gluco3vecINS_6Solver7WatcherEEE", !112, i64 0, !5, i64 8, !5, i64 12}
!112 = !{!"p1 _ZTSN5Gluco6Solver7WatcherE", !12, i64 0}
!113 = !{!111, !5, i64 8}
!114 = distinct !{!114, !115}
!115 = !{!"llvm.loop.mustprogress"}
!116 = !{!23, !24, i64 0}
!117 = !{!23, !5, i64 8}
!118 = !{!19, !5, i64 12}
!119 = !{!6, !6, i64 0}
!120 = !{!33, !5, i64 12}
!121 = !{!23, !5, i64 12}
!122 = !{!28, !5, i64 12}
!123 = !{!32, !5, i64 12}
!124 = !{!17, !5, i64 12}
!125 = !{!11, !15, i64 400}
!126 = distinct !{!126, !127}
!127 = !{!"llvm.loop.unroll.disable"}
!128 = distinct !{!128, !115}
!129 = !{!130, !6, i64 0}
!130 = !{!"_ZTSN5Gluco5lboolE", !6, i64 0}
!131 = distinct !{!131, !115}
!132 = distinct !{!132, !115}
!133 = distinct !{!133, !115}
!134 = distinct !{!134, !115}
!135 = distinct !{!135, !115}
!136 = distinct !{!136, !115, !137, !138}
!137 = !{!"llvm.loop.isvectorized", i32 1}
!138 = !{!"llvm.loop.unroll.runtime.disable"}
!139 = distinct !{!139, !115, !138, !137}
!140 = !{!30, !31, i64 0}
!141 = !{i64 8}
!142 = !{!143, !5, i64 0}
!143 = !{!"_ZTSN5Gluco6Solver7WatcherE", !5, i64 0, !144, i64 4}
!144 = !{!"_ZTSN5Gluco3LitE", !5, i64 0}
!145 = distinct !{!145, !115}
!146 = distinct !{!146, !115}
!147 = !{!11, !5, i64 744}
!148 = distinct !{!148, !115}
!149 = distinct !{!149, !115}
!150 = !{!144, !5, i64 0}
!151 = distinct !{!151, !115}
!152 = !{!111, !5, i64 12}
!153 = distinct !{!153, !115}
!154 = distinct !{!154, !115, !137, !138}
end_hunk_1
