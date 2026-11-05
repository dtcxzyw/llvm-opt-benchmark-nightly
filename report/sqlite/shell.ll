Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 76
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 120
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@re_subcompile_string:bb.a
  br label %re_append.exit

re_append.exit:                                   ; preds = %bb.j, %bb.l, %bb.n, %._crit_edge.i.i
  %i.ce = load i32, ptr %i.e, align 8, !tbaa !154
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.e, align 8, !tbaa !154
  br label %re_append.exit176

rePeek.exit163.thread:                            ; preds = %bb.g, %rePeek.exit163
  %i.cg = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i164 = icmp ugt i32 %i.cg, %i.m
  br i1 %.not.i.i164, label %.._crit_edge_crit_edge.i.i166, label %bb.p

bb.p:                                             ; preds = %rePeek.exit163.thread
  %i.ch = shl i32 %i.cg, 1                        ; 3 uses
  %i.ci = load i32, ptr %i.h, align 8, !tbaa !147
  %i.cj = icmp ugt i32 %i.ch, %i.ci
  br i1 %i.cj, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.r:                                             ; preds = %bb.p
  %i.ck = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.cl = zext i32 %i.ch to i64                   ; 2 uses
  %i.cm = tail call ptr @sqlite3_realloc64(ptr noundef %i.ck, i64 noundef %i.cl) #45 ; 2 uses
  %i.cn = icmp eq ptr %i.cm, null
  br i1 %i.cn, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.t:                                             ; preds = %bb.r
  store ptr %i.cm, ptr %i.i, align 8, !tbaa !148
  %i.co = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.cp = shl nuw nsw i64 %i.cl, 2
  %i.cq = tail call ptr @sqlite3_realloc64(ptr noundef %i.co, i64 noundef %i.cp) #45 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.v:                                             ; preds = %bb.t
  store ptr %i.cq, ptr %i.j, align 8, !tbaa !149
  store i32 %i.ch, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i165 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.cs = icmp sgt i32 %.pre.i.i165, %i.m
  br i1 %i.cs, label %.lr.ph.i.i171, label %.._crit_edge_crit_edge.i.i166

.._crit_edge_crit_edge.i.i166:                    ; preds = %bb.v, %rePeek.exit163.thread
  %i.ct = phi i32 [ %.pre.i.i165, %bb.v ], [ %i.m, %rePeek.exit163.thread ]
  %.pre33.i.i167 = sext i32 %i.m to i64
  br label %._crit_edge.i.i168

.lr.ph.i.i171:                                    ; preds = %bb.v
  %i.cu = sext i32 %.pre.i.i165 to i64            ; 6 uses
  %i.cv = sext i32 %i.m to i64                    ; 4 uses
  %i.cw = sub nsw i64 %i.cu, %i.cv
  %xtraiter742 = and i64 %i.cw, 1
  %lcmp.mod743.not = icmp eq i64 %xtraiter742, 0
  br i1 %lcmp.mod743.not, label %.prol.loopexit741, label %.prol.loopexit741.unr-lcssa

.prol.loopexit741.unr-lcssa:                      ; preds = %.lr.ph.i.i171
  %i.cx = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i173.prol = add nsw i64 %i.cu, -1 ; 3 uses
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv.next.i.i173.prol
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !52
  %i.da = getelementptr inbounds i8, ptr %i.cx, i64 %i.cu
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !52
  %i.db = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.db, i64 %indvars.iv.next.i.i173.prol
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !53
  %i.de = getelementptr inbounds [4 x i8], ptr %i.db, i64 %i.cu
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !53
  br label %.prol.loopexit741

.prol.loopexit741:                                ; preds = %.prol.loopexit741.unr-lcssa, %.lr.ph.i.i171
  %indvars.iv.i.i172.unr = phi i64 [ %i.cu, %.lr.ph.i.i171 ], [ %indvars.iv.next.i.i173.prol, %.prol.loopexit741.unr-lcssa ]
  %i.df = add nsw i64 %i.cu, -1
  %i.dg = icmp eq i64 %i.df, %i.cv
  br i1 %i.dg, label %._crit_edge.loopexit.i.i174, label %.lr.ph.i.i171.new

.lr.ph.i.i171.new:                                ; preds = %.prol.loopexit741, %.lr.ph.i.i171.new
  %indvars.iv.i.i172 = phi i64 [ %indvars.iv.next.i.i173.1, %.lr.ph.i.i171.new ], [ %indvars.iv.i.i172.unr, %.prol.loopexit741 ] ; 4 uses
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i173 = add nsw i64 %indvars.iv.i.i172, -1 ; 4 uses
  %i.di = getelementptr inbounds i8, ptr %i.dh, i64 %indvars.iv.next.i.i173
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !52
  %i.dk = getelementptr inbounds i8, ptr %i.dh, i64 %indvars.iv.i.i172
  store i8 %i.dj, ptr %i.dk, align 1, !tbaa !52
  %i.dl = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv.next.i.i173
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !53
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dl, i64 %indvars.iv.i.i172
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !53
  %i.dp = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i173.1 = add nsw i64 %indvars.iv.i.i172, -2 ; 4 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 %indvars.iv.next.i.i173.1
  %i.dr = load i8, ptr %i.dq, align 1, !tbaa !52
  %i.ds = getelementptr inbounds i8, ptr %i.dp, i64 %indvars.iv.next.i.i173
  store i8 %i.dr, ptr %i.ds, align 1, !tbaa !52
  %i.dt = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv.next.i.i173.1
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !53
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %indvars.iv.next.i.i173
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !53
  %i.dx = icmp sgt i64 %indvars.iv.next.i.i173.1, %i.cv
  br i1 %i.dx, label %.lr.ph.i.i171.new, label %._crit_edge.loopexit.i.i174, !llvm.loop !13

._crit_edge.loopexit.i.i174:                      ; preds = %.lr.ph.i.i171.new, %.prol.loopexit741
  %.pre32.i.i175 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i.i168

._crit_edge.i.i168:                               ; preds = %._crit_edge.loopexit.i.i174, %.._crit_edge_crit_edge.i.i166
  %.pre-phi.i.i169 = phi i64 [ %.pre33.i.i167, %.._crit_edge_crit_edge.i.i166 ], [ %i.cv, %._crit_edge.loopexit.i.i174 ] ; 2 uses
  %i.dy = phi i32 [ %i.ct, %.._crit_edge_crit_edge.i.i166 ], [ %.pre32.i.i175, %._crit_edge.loopexit.i.i174 ]
  %i.dz = add i32 %i.dy, 1
  store i32 %i.dz, ptr %i.d, align 8, !tbaa !152
  %i.ea = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.eb = getelementptr inbounds i8, ptr %i.ea, i64 %.pre-phi.i.i169
  store i8 2, ptr %i.eb, align 1, !tbaa !52
  %i.ec = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.ec, i64 %.pre-phi.i.i169
  store i32 0, ptr %i.ed, align 4, !tbaa !53
  br label %re_append.exit176

bb.w:                                             ; preds = %bb.b
  %i.ee = icmp slt i32 %.0139437, 0
  br i1 %i.ee, label %rePeek.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ef = add i32 %.0139.neg439, 1
  %i.eg = add i32 %i.ef, %i.m
  %i.eh = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i = icmp ugt i32 %i.eh, %i.m
  br i1 %.not.i, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ei = shl i32 %i.eh, 1                        ; 3 uses
  %i.ej = load i32, ptr %i.h, align 8, !tbaa !147
  %i.ek = icmp ugt i32 %i.ei, %i.ej
  br i1 %i.ek, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit

bb.aa:                                            ; preds = %bb.y
  %i.el = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.em = zext i32 %i.ei to i64                   ; 2 uses
  %i.en = tail call ptr @sqlite3_realloc64(ptr noundef %i.el, i64 noundef %i.em) #45 ; 2 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit

bb.ac:                                            ; preds = %bb.aa
  store ptr %i.en, ptr %i.i, align 8, !tbaa !148
  %i.ep = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.eq = shl nuw nsw i64 %i.em, 2
  %i.er = tail call ptr @sqlite3_realloc64(ptr noundef %i.ep, i64 noundef %i.eq) #45 ; 2 uses
  %i.es = icmp eq ptr %i.er, null
  br i1 %i.es, label %bb.ad, label %re_resize.exit.i

bb.ad:                                            ; preds = %bb.ac
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit

re_resize.exit.i:                                 ; preds = %bb.ac
  store ptr %i.er, ptr %i.j, align 8, !tbaa !149
  store i32 %i.ei, ptr %i.g, align 4, !tbaa !151
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !152
  br label %bb.ae

bb.ae:                                            ; preds = %re_resize.exit.i, %bb.x
  %i.et = phi i32 [ %.pre.i, %re_resize.exit.i ], [ %i.m, %bb.x ] ; 3 uses
  %i.eu = icmp sgt i32 %i.et, %.0139437
  br i1 %i.eu, label %.lr.ph.i, label %.._crit_edge_crit_edge.i

.._crit_edge_crit_edge.i:                         ; preds = %bb.ae
  %.pre33.i = zext nneg i32 %.0139437 to i64
  br label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.ae
  %i.ev = zext nneg i32 %i.et to i64
  %i.ew = zext nneg i32 %.0139437 to i64          ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ev, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.af ] ; 3 uses
  %i.ex = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 4 uses
  %i.ey = getelementptr inbounds i8, ptr %i.ex, i64 %indvars.iv.next.i
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !52
  %i.fa = getelementptr inbounds i8, ptr %i.ex, i64 %indvars.iv.i
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !52
  %i.fb = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.next.i
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !53
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.fb, i64 %indvars.iv.i
  store i32 %i.fd, ptr %i.fe, align 4, !tbaa !53
  %i.ff = icmp samesign ugt i64 %indvars.iv.next.i, %i.ew
  br i1 %i.ff, label %bb.af, label %._crit_edge.loopexit.i, !llvm.loop !13

._crit_edge.loopexit.i:                           ; preds = %bb.af
  %.pre32.i = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre33.i, %.._crit_edge_crit_edge.i ], [ %i.ew, %._crit_edge.loopexit.i ] ; 2 uses
  %i.fg = phi i32 [ %i.et, %.._crit_edge_crit_edge.i ], [ %.pre32.i, %._crit_edge.loopexit.i ]
  %i.fh = add i32 %i.fg, 1
  store i32 %i.fh, ptr %i.d, align 8, !tbaa !152
  %i.fi = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %.pre-phi.i
  store i8 5, ptr %i.fj, align 1, !tbaa !52
  %i.fk = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.fk, i64 %.pre-phi.i
  store i32 %i.eg, ptr %i.fl, align 4, !tbaa !53
  br label %re_insert.exit

re_insert.exit:                                   ; preds = %bb.z, %bb.ab, %bb.ad, %._crit_edge.i
  %i.fm = load i32, ptr %i.d, align 8, !tbaa !152 ; 6 uses
  %i.fn = add nuw i32 %.0139437, 1
  %i.fo = sub i32 %i.fn, %i.fm
  %i.fp = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i177 = icmp ugt i32 %i.fp, %i.fm
  br i1 %.not.i.i177, label %.._crit_edge_crit_edge.i.i179, label %bb.ag

bb.ag:                                            ; preds = %re_insert.exit
  %i.fq = shl i32 %i.fp, 1                        ; 3 uses
  %i.fr = load i32, ptr %i.h, align 8, !tbaa !147
  %i.fs = icmp ugt i32 %i.fq, %i.fr
  br i1 %i.fs, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.ai:                                            ; preds = %bb.ag
  %i.ft = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.fu = zext i32 %i.fq to i64                   ; 2 uses
  %i.fv = tail call ptr @sqlite3_realloc64(ptr noundef %i.ft, i64 noundef %i.fu) #45 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.ak:                                            ; preds = %bb.ai
  store ptr %i.fv, ptr %i.i, align 8, !tbaa !148
  %i.fx = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.fy = shl nuw nsw i64 %i.fu, 2
  %i.fz = tail call ptr @sqlite3_realloc64(ptr noundef %i.fx, i64 noundef %i.fy) #45 ; 2 uses
  %i.ga = icmp eq ptr %i.fz, null
  br i1 %i.ga, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.am:                                            ; preds = %bb.ak
  store ptr %i.fz, ptr %i.j, align 8, !tbaa !149
  store i32 %i.fq, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i178 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.gb = icmp sgt i32 %.pre.i.i178, %i.fm
  br i1 %i.gb, label %.lr.ph.i.i184, label %.._crit_edge_crit_edge.i.i179

.._crit_edge_crit_edge.i.i179:                    ; preds = %bb.am, %re_insert.exit
  %i.gc = phi i32 [ %.pre.i.i178, %bb.am ], [ %i.fm, %re_insert.exit ]
  %.pre33.i.i180 = sext i32 %i.fm to i64
  br label %._crit_edge.i.i181

.lr.ph.i.i184:                                    ; preds = %bb.am
  %i.gd = sext i32 %.pre.i.i178 to i64            ; 6 uses
  %i.ge = sext i32 %i.fm to i64                   ; 4 uses
  %i.gf = sub nsw i64 %i.gd, %i.ge
  %xtraiter738 = and i64 %i.gf, 1
  %lcmp.mod739.not = icmp eq i64 %xtraiter738, 0
  br i1 %lcmp.mod739.not, label %.prol.loopexit737, label %.prol.loopexit737.unr-lcssa

.prol.loopexit737.unr-lcssa:                      ; preds = %.lr.ph.i.i184
  %i.gg = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i186.prol = add nsw i64 %i.gd, -1 ; 3 uses
  %i.gh = getelementptr inbounds i8, ptr %i.gg, i64 %indvars.iv.next.i.i186.prol
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !52
  %i.gj = getelementptr inbounds i8, ptr %i.gg, i64 %i.gd
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !52
  %i.gk = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %indvars.iv.next.i.i186.prol
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !53
  %i.gn = getelementptr inbounds [4 x i8], ptr %i.gk, i64 %i.gd
  store i32 %i.gm, ptr %i.gn, align 4, !tbaa !53
  br label %.prol.loopexit737

.prol.loopexit737:                                ; preds = %.prol.loopexit737.unr-lcssa, %.lr.ph.i.i184
  %indvars.iv.i.i185.unr = phi i64 [ %i.gd, %.lr.ph.i.i184 ], [ %indvars.iv.next.i.i186.prol, %.prol.loopexit737.unr-lcssa ]
  %i.go = add nsw i64 %i.gd, -1
  %i.gp = icmp eq i64 %i.go, %i.ge
  br i1 %i.gp, label %._crit_edge.loopexit.i.i187, label %.lr.ph.i.i184.new

.lr.ph.i.i184.new:                                ; preds = %.prol.loopexit737, %.lr.ph.i.i184.new
  %indvars.iv.i.i185 = phi i64 [ %indvars.iv.next.i.i186.1, %.lr.ph.i.i184.new ], [ %indvars.iv.i.i185.unr, %.prol.loopexit737 ] ; 4 uses
  %i.gq = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i186 = add nsw i64 %indvars.iv.i.i185, -1 ; 4 uses
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 %indvars.iv.next.i.i186
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !52
  %i.gt = getelementptr inbounds i8, ptr %i.gq, i64 %indvars.iv.i.i185
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !52
  %i.gu = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.gv = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %indvars.iv.next.i.i186
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !53
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.gu, i64 %indvars.iv.i.i185
  store i32 %i.gw, ptr %i.gx, align 4, !tbaa !53
  %i.gy = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i186.1 = add nsw i64 %indvars.iv.i.i185, -2 ; 4 uses
  %i.gz = getelementptr inbounds i8, ptr %i.gy, i64 %indvars.iv.next.i.i186.1
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !52
  %i.hb = getelementptr inbounds i8, ptr %i.gy, i64 %indvars.iv.next.i.i186
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !52
  %i.hc = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %indvars.iv.next.i.i186.1
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !53
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.hc, i64 %indvars.iv.next.i.i186
  store i32 %i.he, ptr %i.hf, align 4, !tbaa !53
  %i.hg = icmp sgt i64 %indvars.iv.next.i.i186.1, %i.ge
  br i1 %i.hg, label %.lr.ph.i.i184.new, label %._crit_edge.loopexit.i.i187, !llvm.loop !13

._crit_edge.loopexit.i.i187:                      ; preds = %.lr.ph.i.i184.new, %.prol.loopexit737
  %.pre32.i.i188 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i.i181

._crit_edge.i.i181:                               ; preds = %._crit_edge.loopexit.i.i187, %.._crit_edge_crit_edge.i.i179
  %.pre-phi.i.i182 = phi i64 [ %.pre33.i.i180, %.._crit_edge_crit_edge.i.i179 ], [ %i.ge, %._crit_edge.loopexit.i.i187 ] ; 2 uses
  %i.hh = phi i32 [ %i.gc, %.._crit_edge_crit_edge.i.i179 ], [ %.pre32.i.i188, %._crit_edge.loopexit.i.i187 ]
  %i.hi = add i32 %i.hh, 1
  store i32 %i.hi, ptr %i.d, align 8, !tbaa !152
  %i.hj = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 %.pre-phi.i.i182
  store i8 4, ptr %i.hk, align 1, !tbaa !52
  %i.hl = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.hl, i64 %.pre-phi.i.i182
  store i32 %i.fo, ptr %i.hm, align 4, !tbaa !53
  br label %re_append.exit176

bb.an:                                            ; preds = %bb.b
  %i.hn = icmp slt i32 %.0139437, 0
  br i1 %i.hn, label %rePeek.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ho = sub i32 %.0139437, %i.m
  %i.hp = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i190 = icmp ugt i32 %i.hp, %i.m
  br i1 %.not.i.i190, label %.._crit_edge_crit_edge.i.i192, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.hq = shl i32 %i.hp, 1                        ; 3 uses
  %i.hr = load i32, ptr %i.h, align 8, !tbaa !147
  %i.hs = icmp ugt i32 %i.hq, %i.hr
  br i1 %i.hs, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.ar:                                            ; preds = %bb.ap
  %i.ht = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.hu = zext i32 %i.hq to i64                   ; 2 uses
  %i.hv = tail call ptr @sqlite3_realloc64(ptr noundef %i.ht, i64 noundef %i.hu) #45 ; 2 uses
  %i.hw = icmp eq ptr %i.hv, null
  br i1 %i.hw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.at:                                            ; preds = %bb.ar
  store ptr %i.hv, ptr %i.i, align 8, !tbaa !148
  %i.hx = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.hy = shl nuw nsw i64 %i.hu, 2
  %i.hz = tail call ptr @sqlite3_realloc64(ptr noundef %i.hx, i64 noundef %i.hy) #45 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.av:                                            ; preds = %bb.at
  store ptr %i.hz, ptr %i.j, align 8, !tbaa !149
  store i32 %i.hq, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i191 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.ib = icmp sgt i32 %.pre.i.i191, %i.m
  br i1 %i.ib, label %.lr.ph.i.i197, label %.._crit_edge_crit_edge.i.i192

.._crit_edge_crit_edge.i.i192:                    ; preds = %bb.av, %bb.ao
  %i.ic = phi i32 [ %.pre.i.i191, %bb.av ], [ %i.m, %bb.ao ]
  %.pre33.i.i193 = sext i32 %i.m to i64
  br label %._crit_edge.i.i194

.lr.ph.i.i197:                                    ; preds = %bb.av
  %i.id = sext i32 %.pre.i.i191 to i64            ; 6 uses
  %i.ie = sext i32 %i.m to i64                    ; 4 uses
  %i.if = sub nsw i64 %i.id, %i.ie
  %xtraiter734 = and i64 %i.if, 1
  %lcmp.mod735.not = icmp eq i64 %xtraiter734, 0
  br i1 %lcmp.mod735.not, label %.prol.loopexit733, label %.prol.loopexit733.unr-lcssa

.prol.loopexit733.unr-lcssa:                      ; preds = %.lr.ph.i.i197
  %i.ig = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i199.prol = add nsw i64 %i.id, -1 ; 3 uses
  %i.ih = getelementptr inbounds i8, ptr %i.ig, i64 %indvars.iv.next.i.i199.prol
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !52
  %i.ij = getelementptr inbounds i8, ptr %i.ig, i64 %i.id
  store i8 %i.ii, ptr %i.ij, align 1, !tbaa !52
  %i.ik = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.il = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %indvars.iv.next.i.i199.prol
  %i.im = load i32, ptr %i.il, align 4, !tbaa !53
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ik, i64 %i.id
  store i32 %i.im, ptr %i.in, align 4, !tbaa !53
  br label %.prol.loopexit733

.prol.loopexit733:                                ; preds = %.prol.loopexit733.unr-lcssa, %.lr.ph.i.i197
  %indvars.iv.i.i198.unr = phi i64 [ %i.id, %.lr.ph.i.i197 ], [ %indvars.iv.next.i.i199.prol, %.prol.loopexit733.unr-lcssa ]
  %i.io = add nsw i64 %i.id, -1
  %i.ip = icmp eq i64 %i.io, %i.ie
  br i1 %i.ip, label %._crit_edge.loopexit.i.i200, label %.lr.ph.i.i197.new

.lr.ph.i.i197.new:                                ; preds = %.prol.loopexit733, %.lr.ph.i.i197.new
  %indvars.iv.i.i198 = phi i64 [ %indvars.iv.next.i.i199.1, %.lr.ph.i.i197.new ], [ %indvars.iv.i.i198.unr, %.prol.loopexit733 ] ; 4 uses
  %i.iq = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i199 = add nsw i64 %indvars.iv.i.i198, -1 ; 4 uses
  %i.ir = getelementptr inbounds i8, ptr %i.iq, i64 %indvars.iv.next.i.i199
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !52
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 %indvars.iv.i.i198
  store i8 %i.is, ptr %i.it, align 1, !tbaa !52
  %i.iu = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.iv = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv.next.i.i199
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !53
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iu, i64 %indvars.iv.i.i198
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !53
  %i.iy = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i199.1 = add nsw i64 %indvars.iv.i.i198, -2 ; 4 uses
  %i.iz = getelementptr inbounds i8, ptr %i.iy, i64 %indvars.iv.next.i.i199.1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !52
  %i.jb = getelementptr inbounds i8, ptr %i.iy, i64 %indvars.iv.next.i.i199
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !52
  %i.jc = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.jd = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i.i199.1
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !53
  %i.jf = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %indvars.iv.next.i.i199
  store i32 %i.je, ptr %i.jf, align 4, !tbaa !53
  %i.jg = icmp sgt i64 %indvars.iv.next.i.i199.1, %i.ie
  br i1 %i.jg, label %.lr.ph.i.i197.new, label %._crit_edge.loopexit.i.i200, !llvm.loop !13

._crit_edge.loopexit.i.i200:                      ; preds = %.lr.ph.i.i197.new, %.prol.loopexit733
  %.pre32.i.i201 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i.i194

._crit_edge.i.i194:                               ; preds = %._crit_edge.loopexit.i.i200, %.._crit_edge_crit_edge.i.i192
  %.pre-phi.i.i195 = phi i64 [ %.pre33.i.i193, %.._crit_edge_crit_edge.i.i192 ], [ %i.ie, %._crit_edge.loopexit.i.i200 ] ; 2 uses
  %i.jh = phi i32 [ %i.ic, %.._crit_edge_crit_edge.i.i192 ], [ %.pre32.i.i201, %._crit_edge.loopexit.i.i200 ]
  %i.ji = add i32 %i.jh, 1
  store i32 %i.ji, ptr %i.d, align 8, !tbaa !152
  %i.jj = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.jk = getelementptr inbounds i8, ptr %i.jj, i64 %.pre-phi.i.i195
  store i8 4, ptr %i.jk, align 1, !tbaa !52
  %i.jl = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.jl, i64 %.pre-phi.i.i195
  store i32 %i.ho, ptr %i.jm, align 4, !tbaa !53
  br label %re_append.exit176

bb.aw:                                            ; preds = %bb.b
  %i.jn = icmp slt i32 %.0139437, 0
  br i1 %i.jn, label %rePeek.exit.thread, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jo = add i32 %.0139.neg439, 1
  %i.jp = add i32 %i.jo, %i.m
  %i.jq = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i203 = icmp ugt i32 %i.jq, %i.m
  br i1 %.not.i203, label %bb.be, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jr = shl i32 %i.jq, 1                        ; 3 uses
  %i.js = load i32, ptr %i.h, align 8, !tbaa !147
  %i.jt = icmp ugt i32 %i.jr, %i.js
  br i1 %i.jt, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.ba:                                            ; preds = %bb.ay
  %i.ju = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.jv = zext i32 %i.jr to i64                   ; 2 uses
  %i.jw = tail call ptr @sqlite3_realloc64(ptr noundef %i.ju, i64 noundef %i.jv) #45 ; 2 uses
  %i.jx = icmp eq ptr %i.jw, null
  br i1 %i.jx, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bc:                                            ; preds = %bb.ba
  store ptr %i.jw, ptr %i.i, align 8, !tbaa !148
  %i.jy = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.jz = shl nuw nsw i64 %i.jv, 2
  %i.ka = tail call ptr @sqlite3_realloc64(ptr noundef %i.jy, i64 noundef %i.jz) #45 ; 2 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.bd, label %re_resize.exit.i204

bb.bd:                                            ; preds = %bb.bc
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

re_resize.exit.i204:                              ; preds = %bb.bc
  store ptr %i.ka, ptr %i.j, align 8, !tbaa !149
  store i32 %i.jr, ptr %i.g, align 4, !tbaa !151
  %.pre.i205 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %bb.be

bb.be:                                            ; preds = %re_resize.exit.i204, %bb.ax
  %i.kc = phi i32 [ %.pre.i205, %re_resize.exit.i204 ], [ %i.m, %bb.ax ] ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, %.0139437
  br i1 %i.kd, label %.lr.ph.i211, label %.._crit_edge_crit_edge.i206

.._crit_edge_crit_edge.i206:                      ; preds = %bb.be
  %.pre33.i207 = zext nneg i32 %.0139437 to i64
  br label %._crit_edge.i208

.lr.ph.i211:                                      ; preds = %bb.be
  %i.ke = zext nneg i32 %i.kc to i64
  %i.kf = zext nneg i32 %.0139437 to i64          ; 2 uses
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bf, %.lr.ph.i211
  %indvars.iv.i212 = phi i64 [ %i.ke, %.lr.ph.i211 ], [ %indvars.iv.next.i213, %bb.bf ] ; 3 uses
  %i.kg = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i213 = add nsw i64 %indvars.iv.i212, -1 ; 4 uses
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 %indvars.iv.next.i213
  %i.ki = load i8, ptr %i.kh, align 1, !tbaa !52
  %i.kj = getelementptr inbounds i8, ptr %i.kg, i64 %indvars.iv.i212
  store i8 %i.ki, ptr %i.kj, align 1, !tbaa !52
  %i.kk = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.kl = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %indvars.iv.next.i213
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !53
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %indvars.iv.i212
  store i32 %i.km, ptr %i.kn, align 4, !tbaa !53
  %i.ko = icmp samesign ugt i64 %indvars.iv.next.i213, %i.kf
  br i1 %i.ko, label %bb.bf, label %._crit_edge.loopexit.i214, !llvm.loop !13

._crit_edge.loopexit.i214:                        ; preds = %bb.bf
  %.pre32.i215 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i208

._crit_edge.i208:                                 ; preds = %._crit_edge.loopexit.i214, %.._crit_edge_crit_edge.i206
  %.pre-phi.i209 = phi i64 [ %.pre33.i207, %.._crit_edge_crit_edge.i206 ], [ %i.kf, %._crit_edge.loopexit.i214 ] ; 2 uses
  %i.kp = phi i32 [ %i.kc, %.._crit_edge_crit_edge.i206 ], [ %.pre32.i215, %._crit_edge.loopexit.i214 ]
  %i.kq = add i32 %i.kp, 1
  store i32 %i.kq, ptr %i.d, align 8, !tbaa !152
  %i.kr = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.ks = getelementptr inbounds nuw i8, ptr %i.kr, i64 %.pre-phi.i209
  store i8 4, ptr %i.ks, align 1, !tbaa !52
  %i.kt = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.kt, i64 %.pre-phi.i209
  store i32 %i.jp, ptr %i.ku, align 4, !tbaa !53
  br label %re_append.exit176

bb.bg:                                            ; preds = %bb.b
  %i.kv = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i217 = icmp ugt i32 %i.kv, %i.m
  br i1 %.not.i.i217, label %.._crit_edge_crit_edge.i.i219, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.kw = shl i32 %i.kv, 1                        ; 3 uses
  %i.kx = load i32, ptr %i.h, align 8, !tbaa !147
  %i.ky = icmp ugt i32 %i.kw, %i.kx
  br i1 %i.ky, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bj:                                            ; preds = %bb.bh
  %i.kz = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.la = zext i32 %i.kw to i64                   ; 2 uses
  %i.lb = tail call ptr @sqlite3_realloc64(ptr noundef %i.kz, i64 noundef %i.la) #45 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bl:                                            ; preds = %bb.bj
  store ptr %i.lb, ptr %i.i, align 8, !tbaa !148
  %i.ld = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.le = shl nuw nsw i64 %i.la, 2
  %i.lf = tail call ptr @sqlite3_realloc64(ptr noundef %i.ld, i64 noundef %i.le) #45 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bn:                                            ; preds = %bb.bl
  store ptr %i.lf, ptr %i.j, align 8, !tbaa !149
  store i32 %i.kw, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i218 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.lh = icmp sgt i32 %.pre.i.i218, %i.m
  br i1 %i.lh, label %.lr.ph.i.i224, label %.._crit_edge_crit_edge.i.i219

.._crit_edge_crit_edge.i.i219:                    ; preds = %bb.bn, %bb.bg
  %i.li = phi i32 [ %.pre.i.i218, %bb.bn ], [ %i.m, %bb.bg ]
  %.pre33.i.i220 = sext i32 %i.m to i64
  br label %._crit_edge.i.i221

.lr.ph.i.i224:                                    ; preds = %bb.bn
  %i.lj = sext i32 %.pre.i.i218 to i64            ; 6 uses
  %i.lk = sext i32 %i.m to i64                    ; 4 uses
  %i.ll = sub nsw i64 %i.lj, %i.lk
  %xtraiter730 = and i64 %i.ll, 1
  %lcmp.mod731.not = icmp eq i64 %xtraiter730, 0
  br i1 %lcmp.mod731.not, label %.prol.loopexit729, label %.prol.loopexit729.unr-lcssa

.prol.loopexit729.unr-lcssa:                      ; preds = %.lr.ph.i.i224
  %i.lm = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i226.prol = add nsw i64 %i.lj, -1 ; 3 uses
  %i.ln = getelementptr inbounds i8, ptr %i.lm, i64 %indvars.iv.next.i.i226.prol
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !52
  %i.lp = getelementptr inbounds i8, ptr %i.lm, i64 %i.lj
  store i8 %i.lo, ptr %i.lp, align 1, !tbaa !52
  %i.lq = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.lr = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %indvars.iv.next.i.i226.prol
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !53
  %i.lt = getelementptr inbounds [4 x i8], ptr %i.lq, i64 %i.lj
  store i32 %i.ls, ptr %i.lt, align 4, !tbaa !53
  br label %.prol.loopexit729

.prol.loopexit729:                                ; preds = %.prol.loopexit729.unr-lcssa, %.lr.ph.i.i224
  %indvars.iv.i.i225.unr = phi i64 [ %i.lj, %.lr.ph.i.i224 ], [ %indvars.iv.next.i.i226.prol, %.prol.loopexit729.unr-lcssa ]
  %i.lu = add nsw i64 %i.lj, -1
  %i.lv = icmp eq i64 %i.lu, %i.lk
  br i1 %i.lv, label %._crit_edge.loopexit.i.i227, label %.lr.ph.i.i224.new

.lr.ph.i.i224.new:                                ; preds = %.prol.loopexit729, %.lr.ph.i.i224.new
  %indvars.iv.i.i225 = phi i64 [ %indvars.iv.next.i.i226.1, %.lr.ph.i.i224.new ], [ %indvars.iv.i.i225.unr, %.prol.loopexit729 ] ; 4 uses
  %i.lw = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i226 = add nsw i64 %indvars.iv.i.i225, -1 ; 4 uses
  %i.lx = getelementptr inbounds i8, ptr %i.lw, i64 %indvars.iv.next.i.i226
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !52
  %i.lz = getelementptr inbounds i8, ptr %i.lw, i64 %indvars.iv.i.i225
  store i8 %i.ly, ptr %i.lz, align 1, !tbaa !52
  %i.ma = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.mb = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %indvars.iv.next.i.i226
  %i.mc = load i32, ptr %i.mb, align 4, !tbaa !53
  %i.md = getelementptr inbounds [4 x i8], ptr %i.ma, i64 %indvars.iv.i.i225
  store i32 %i.mc, ptr %i.md, align 4, !tbaa !53
  %i.me = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i226.1 = add nsw i64 %indvars.iv.i.i225, -2 ; 4 uses
  %i.mf = getelementptr inbounds i8, ptr %i.me, i64 %indvars.iv.next.i.i226.1
  %i.mg = load i8, ptr %i.mf, align 1, !tbaa !52
  %i.mh = getelementptr inbounds i8, ptr %i.me, i64 %indvars.iv.next.i.i226
  store i8 %i.mg, ptr %i.mh, align 1, !tbaa !52
  %i.mi = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.mj = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %indvars.iv.next.i.i226.1
  %i.mk = load i32, ptr %i.mj, align 4, !tbaa !53
  %i.ml = getelementptr inbounds [4 x i8], ptr %i.mi, i64 %indvars.iv.next.i.i226
  store i32 %i.mk, ptr %i.ml, align 4, !tbaa !53
  %i.mm = icmp sgt i64 %indvars.iv.next.i.i226.1, %i.lk
  br i1 %i.mm, label %.lr.ph.i.i224.new, label %._crit_edge.loopexit.i.i227, !llvm.loop !13

._crit_edge.loopexit.i.i227:                      ; preds = %.lr.ph.i.i224.new, %.prol.loopexit729
  %.pre32.i.i228 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i.i221

._crit_edge.i.i221:                               ; preds = %._crit_edge.loopexit.i.i227, %.._crit_edge_crit_edge.i.i219
  %.pre-phi.i.i222 = phi i64 [ %.pre33.i.i220, %.._crit_edge_crit_edge.i.i219 ], [ %i.lk, %._crit_edge.loopexit.i.i227 ] ; 2 uses
  %i.mn = phi i32 [ %i.li, %.._crit_edge_crit_edge.i.i219 ], [ %.pre32.i.i228, %._crit_edge.loopexit.i.i227 ]
  %i.mo = add i32 %i.mn, 1
  store i32 %i.mo, ptr %i.d, align 8, !tbaa !152
  %i.mp = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.mq = getelementptr inbounds i8, ptr %i.mp, i64 %.pre-phi.i.i222
  store i8 1, ptr %i.mq, align 1, !tbaa !52
  %i.mr = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.ms = getelementptr inbounds [4 x i8], ptr %i.mr, i64 %.pre-phi.i.i222
  store i32 0, ptr %i.ms, align 4, !tbaa !53
  br label %re_append.exit176

bb.bo:                                            ; preds = %bb.b
  %i.mt = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i230 = icmp ugt i32 %i.mt, %i.m
  br i1 %.not.i.i230, label %.._crit_edge_crit_edge.i.i232, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.mu = shl i32 %i.mt, 1                        ; 3 uses
  %i.mv = load i32, ptr %i.h, align 8, !tbaa !147
  %i.mw = icmp ugt i32 %i.mu, %i.mv
  br i1 %i.mw, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.br:                                            ; preds = %bb.bp
  %i.mx = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.my = zext i32 %i.mu to i64                   ; 2 uses
  %i.mz = tail call ptr @sqlite3_realloc64(ptr noundef %i.mx, i64 noundef %i.my) #45 ; 2 uses
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bt:                                            ; preds = %bb.br
  store ptr %i.mz, ptr %i.i, align 8, !tbaa !148
  %i.nb = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.nc = shl nuw nsw i64 %i.my, 2
  %i.nd = tail call ptr @sqlite3_realloc64(ptr noundef %i.nb, i64 noundef %i.nc) #45 ; 2 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit176

bb.bv:                                            ; preds = %bb.bt
  store ptr %i.nd, ptr %i.j, align 8, !tbaa !149
  store i32 %i.mu, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i231 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.nf = icmp sgt i32 %.pre.i.i231, %i.m
  br i1 %i.nf, label %.lr.ph.i.i237, label %.._crit_edge_crit_edge.i.i232

.._crit_edge_crit_edge.i.i232:                    ; preds = %bb.bv, %bb.bo
  %i.ng = phi i32 [ %.pre.i.i231, %bb.bv ], [ %i.m, %bb.bo ]
  %.pre33.i.i233 = sext i32 %i.m to i64
  br label %._crit_edge.i.i234

.lr.ph.i.i237:                                    ; preds = %bb.bv
  %i.nh = sext i32 %.pre.i.i231 to i64            ; 6 uses
  %i.ni = sext i32 %i.m to i64                    ; 4 uses
  %i.nj = sub nsw i64 %i.nh, %i.ni
  %xtraiter726 = and i64 %i.nj, 1
  %lcmp.mod727.not = icmp eq i64 %xtraiter726, 0
  br i1 %lcmp.mod727.not, label %.prol.loopexit725, label %.prol.loopexit725.unr-lcssa
end_hunk_0
begin_hunk_1_@re_subcompile_string:bb.a
  store i32 %i.om, ptr %i.d, align 8, !tbaa !152
  %i.on = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.oo = getelementptr inbounds i8, ptr %i.on, i64 %.pre-phi.i.i235
  store i8 18, ptr %i.oo, align 1, !tbaa !52
  %i.op = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.oq = getelementptr inbounds [4 x i8], ptr %i.op, i64 %.pre-phi.i.i235
  store i32 0, ptr %i.oq, align 4, !tbaa !53
  br label %re_append.exit176

bb.bw:                                            ; preds = %bb.b
  %i.or = icmp slt i32 %.0139437, 0
  br i1 %i.or, label %rePeek.exit.thread, label %.preheader412

.preheader412:                                    ; preds = %bb.bw
  %i.os = load i32, ptr %i.f, align 4, !tbaa !155 ; 3 uses
  %.promoted = load i32, ptr %i.e, align 8, !tbaa !154 ; 3 uses
  %i.ot = icmp slt i32 %.promoted, %i.os
  br i1 %i.ot, label %rePeek.exit243.lr.ph, label %rePeek.exit.thread

rePeek.exit243.lr.ph:                             ; preds = %.preheader412
  %i.ou = load ptr, ptr %0, align 8, !tbaa !153   ; 3 uses
  %i.ov = sext i32 %.promoted to i64              ; 2 uses
  %i.ow = getelementptr inbounds i8, ptr %i.ou, i64 %i.ov
  %i.ox = load i8, ptr %i.ow, align 1, !tbaa !52  ; 3 uses
  %i.oy = zext i8 %i.ox to i32                    ; 2 uses
  %i.oz = add i8 %i.ox, -48
  %i.pa = icmp ult i8 %i.oz, 10
  br i1 %i.pa, label %.lr.ph663.preheader, label %rePeek.exit243._crit_edge

.lr.ph663.preheader:                              ; preds = %rePeek.exit243.lr.ph
  %i.pb = load i32, ptr %i.h, align 8, !tbaa !147
  br label %.lr.ph663

rePeek.exit243:                                   ; preds = %bb.bx
  %i.pc = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.next
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !52  ; 3 uses
  %i.pe = zext i8 %i.pd to i32                    ; 2 uses
  %i.pf = add i8 %i.pd, -48
  %i.pg = icmp ult i8 %i.pf, 10
  br i1 %i.pg, label %.lr.ph663, label %rePeek.exit243._crit_edge, !llvm.loop !1104

.lr.ph663:                                        ; preds = %.lr.ph663.preheader, %rePeek.exit243
  %i.ph = phi i32 [ %i.pe, %rePeek.exit243 ], [ %i.oy, %.lr.ph663.preheader ]
  %.0133428662 = phi i32 [ %i.pk, %rePeek.exit243 ], [ 0, %.lr.ph663.preheader ]
  %indvars.iv661 = phi i64 [ %indvars.iv.next, %rePeek.exit243 ], [ %i.ov, %.lr.ph663.preheader ]
  %i.pi = mul i32 %.0133428662, 10
  %i.pj = add i32 %i.pi, -48
  %i.pk = add i32 %i.pj, %i.ph                    ; 3 uses
  %i.pl = shl i32 %i.pk, 1
  %i.pm = icmp ugt i32 %i.pl, %i.pb
  br i1 %i.pm, label %rePeek.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph663
  %indvars.iv.next = add nsw i64 %indvars.iv661, 1 ; 3 uses
  %i.pn = trunc i64 %indvars.iv.next to i32       ; 3 uses
  store i32 %i.pn, ptr %i.e, align 8, !tbaa !154
  %exitcond.not = icmp eq i32 %i.os, %i.pn
  br i1 %exitcond.not, label %rePeek.exit.thread, label %rePeek.exit243, !llvm.loop !1104

rePeek.exit243._crit_edge:                        ; preds = %rePeek.exit243, %rePeek.exit243.lr.ph
  %.lcssa424.promoted.lcssa = phi i32 [ %.promoted, %rePeek.exit243.lr.ph ], [ %i.pn, %rePeek.exit243 ] ; 2 uses
  %.0133428.lcssa = phi i32 [ 0, %rePeek.exit243.lr.ph ], [ %i.pk, %rePeek.exit243 ] ; 7 uses
  %.lcssa653 = phi i8 [ %i.ox, %rePeek.exit243.lr.ph ], [ %i.pd, %rePeek.exit243 ]
  %.lcssa651 = phi i32 [ %i.oy, %rePeek.exit243.lr.ph ], [ %i.pe, %rePeek.exit243 ]
  %i.po = icmp eq i8 %.lcssa653, 44
  br i1 %i.po, label %.preheader410, label %.loopexit411

.preheader410:                                    ; preds = %rePeek.exit243._crit_edge
  %i.pp = sext i32 %.lcssa424.promoted.lcssa to i64
  %i.pq = sext i32 %i.os to i64                   ; 2 uses
  %indvars.iv.next480667 = add nsw i64 %i.pp, 1   ; 3 uses
  %i.pr = trunc nsw i64 %indvars.iv.next480667 to i32 ; 2 uses
  store i32 %i.pr, ptr %i.e, align 8, !tbaa !154
  %i.ps = icmp slt i64 %indvars.iv.next480667, %i.pq
  br i1 %i.ps, label %rePeek.exit244, label %rePeek.exit.thread

bb.by:                                            ; preds = %bb.bz
  %indvars.iv.next480 = add nsw i64 %indvars.iv.next480669, 1 ; 3 uses
  %i.pt = trunc nsw i64 %indvars.iv.next480 to i32 ; 2 uses
  store i32 %i.pt, ptr %i.e, align 8, !tbaa !154
  %i.pu = icmp slt i64 %indvars.iv.next480, %i.pq
  br i1 %i.pu, label %rePeek.exit244, label %rePeek.exit.thread, !llvm.loop !1105

rePeek.exit244:                                   ; preds = %.preheader410, %bb.by
  %i.pv = phi i32 [ %i.pt, %bb.by ], [ %i.pr, %.preheader410 ]
  %indvars.iv.next480669 = phi i64 [ %indvars.iv.next480, %bb.by ], [ %indvars.iv.next480667, %.preheader410 ] ; 2 uses
  %.0131668 = phi i32 [ %i.qd, %bb.by ], [ 0, %.preheader410 ] ; 2 uses
  %i.pw = getelementptr inbounds i8, ptr %i.ou, i64 %indvars.iv.next480669
  %i.px = load i8, ptr %i.pw, align 1, !tbaa !52  ; 2 uses
  %i.py = zext i8 %i.px to i32                    ; 2 uses
  %i.pz = add i8 %i.px, -48
  %i.qa = icmp ult i8 %i.pz, 10
  br i1 %i.qa, label %bb.bz, label %.loopexit411

bb.bz:                                            ; preds = %rePeek.exit244
  %i.qb = mul i32 %.0131668, 10
  %i.qc = add i32 %i.qb, -48
  %i.qd = add i32 %i.qc, %i.py                    ; 2 uses
  %i.qe = shl i32 %i.qd, 1
  %i.qf = load i32, ptr %i.h, align 8, !tbaa !147
  %i.qg = icmp ugt i32 %i.qe, %i.qf
  br i1 %i.qg, label %.rePeek.exit.thread.loopexit_crit_edge, label %bb.by, !llvm.loop !1105

.loopexit411:                                     ; preds = %rePeek.exit244, %rePeek.exit243._crit_edge
  %i.qh = phi i32 [ %.lcssa424.promoted.lcssa, %rePeek.exit243._crit_edge ], [ %i.pv, %rePeek.exit244 ]
  %.0136 = phi i32 [ %.lcssa651, %rePeek.exit243._crit_edge ], [ %i.py, %rePeek.exit244 ]
  %.1132 = phi i32 [ %.0133428.lcssa, %rePeek.exit243._crit_edge ], [ %.0131668, %rePeek.exit244 ] ; 5 uses
  %.not158 = icmp eq i32 %.0136, 125
  br i1 %.not158, label %bb.ca, label %rePeek.exit.thread

bb.ca:                                            ; preds = %.loopexit411
  %i.qi = icmp ult i32 %.1132, %.0133428.lcssa
  br i1 %i.qi, label %rePeek.exit.thread, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.qj = add nsw i32 %i.qh, 1
  store i32 %i.qj, ptr %i.e, align 8, !tbaa !154
  %i.qk = sub i32 %i.m, %.0139437                 ; 11 uses
  %i.ql = icmp ne i32 %.0133428.lcssa, 0          ; 2 uses
  br i1 %i.ql, label %.preheader, label %bb.cc

.preheader:                                       ; preds = %bb.cb
  %.not464 = icmp eq i32 %.0133428.lcssa, 1
  br i1 %.not464, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.qm = zext nneg i32 %.0139437 to i64          ; 2 uses
  %i.qn = zext i32 %i.qk to i64                   ; 2 uses
  %i.qo = shl nuw nsw i64 %i.qn, 2
  br label %bb.cm

bb.cc:                                            ; preds = %bb.cb
  %i.qp = icmp eq i32 %.1132, 0
  br i1 %i.qp, label %rePeek.exit.thread, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.qq = add i32 %i.qk, 1
  %i.qr = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i245 = icmp ugt i32 %i.qr, %i.m
  br i1 %.not.i245, label %bb.ck, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.qs = shl i32 %i.qr, 1                        ; 3 uses
  %i.qt = load i32, ptr %i.h, align 8, !tbaa !147
  %i.qu = icmp ugt i32 %i.qs, %i.qt
  br i1 %i.qu, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit258

bb.cg:                                            ; preds = %bb.ce
  %i.qv = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.qw = zext i32 %i.qs to i64                   ; 2 uses
  %i.qx = tail call ptr @sqlite3_realloc64(ptr noundef %i.qv, i64 noundef %i.qw) #45 ; 2 uses
  %i.qy = icmp eq ptr %i.qx, null
  br i1 %i.qy, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit258

bb.ci:                                            ; preds = %bb.cg
  store ptr %i.qx, ptr %i.i, align 8, !tbaa !148
  %i.qz = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.ra = shl nuw nsw i64 %i.qw, 2
  %i.rb = tail call ptr @sqlite3_realloc64(ptr noundef %i.qz, i64 noundef %i.ra) #45 ; 2 uses
  %i.rc = icmp eq ptr %i.rb, null
  br i1 %i.rc, label %bb.cj, label %re_resize.exit.i246

bb.cj:                                            ; preds = %bb.ci
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_insert.exit258

re_resize.exit.i246:                              ; preds = %bb.ci
  store ptr %i.rb, ptr %i.j, align 8, !tbaa !149
  store i32 %i.qs, ptr %i.g, align 4, !tbaa !151
  %.pre.i247 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %bb.ck

bb.ck:                                            ; preds = %re_resize.exit.i246, %bb.cd
  %i.rd = phi i32 [ %.pre.i247, %re_resize.exit.i246 ], [ %i.m, %bb.cd ] ; 3 uses
  %i.re = icmp sgt i32 %i.rd, %.0139437
  br i1 %i.re, label %.lr.ph.i253, label %.._crit_edge_crit_edge.i248

.._crit_edge_crit_edge.i248:                      ; preds = %bb.ck
  %.pre33.i249 = zext nneg i32 %.0139437 to i64
  br label %._crit_edge.i250

.lr.ph.i253:                                      ; preds = %bb.ck
  %i.rf = zext nneg i32 %i.rd to i64
  %i.rg = zext nneg i32 %.0139437 to i64          ; 2 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cl, %.lr.ph.i253
  %indvars.iv.i254 = phi i64 [ %i.rf, %.lr.ph.i253 ], [ %indvars.iv.next.i255, %bb.cl ] ; 3 uses
  %i.rh = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i255 = add nsw i64 %indvars.iv.i254, -1 ; 4 uses
  %i.ri = getelementptr inbounds i8, ptr %i.rh, i64 %indvars.iv.next.i255
  %i.rj = load i8, ptr %i.ri, align 1, !tbaa !52
  %i.rk = getelementptr inbounds i8, ptr %i.rh, i64 %indvars.iv.i254
  store i8 %i.rj, ptr %i.rk, align 1, !tbaa !52
  %i.rl = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %indvars.iv.next.i255
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !53
  %i.ro = getelementptr inbounds [4 x i8], ptr %i.rl, i64 %indvars.iv.i254
  store i32 %i.rn, ptr %i.ro, align 4, !tbaa !53
  %i.rp = icmp sgt i64 %indvars.iv.next.i255, %i.rg
  br i1 %i.rp, label %bb.cl, label %._crit_edge.loopexit.i256, !llvm.loop !13

._crit_edge.loopexit.i256:                        ; preds = %bb.cl
  %.pre32.i257 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %._crit_edge.i250

._crit_edge.i250:                                 ; preds = %._crit_edge.loopexit.i256, %.._crit_edge_crit_edge.i248
  %.pre-phi.i251 = phi i64 [ %.pre33.i249, %.._crit_edge_crit_edge.i248 ], [ %i.rg, %._crit_edge.loopexit.i256 ] ; 2 uses
  %i.rq = phi i32 [ %i.rd, %.._crit_edge_crit_edge.i248 ], [ %.pre32.i257, %._crit_edge.loopexit.i256 ]
  %i.rr = add i32 %i.rq, 1
  store i32 %i.rr, ptr %i.d, align 8, !tbaa !152
  %i.rs = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.rt = getelementptr inbounds nuw i8, ptr %i.rs, i64 %.pre-phi.i251
  store i8 4, ptr %i.rt, align 1, !tbaa !52
  %i.ru = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.rv = getelementptr inbounds nuw [4 x i8], ptr %i.ru, i64 %.pre-phi.i251
  store i32 %i.qq, ptr %i.rv, align 4, !tbaa !53
  br label %re_insert.exit258

re_insert.exit258:                                ; preds = %bb.cf, %bb.ch, %bb.cj, %._crit_edge.i250
  %i.rw = add nuw nsw i32 %.0139437, 1
  %i.rx = add i32 %.1132, -1
  br label %.loopexit

bb.cm:                                            ; preds = %.lr.ph, %re_copy.exit
  %.0130433 = phi i32 [ 1, %.lr.ph ], [ %i.sz, %re_copy.exit ]
  %i.ry = load i32, ptr %i.d, align 8, !tbaa !152 ; 2 uses
  %i.rz = add i32 %i.ry, %i.qk
  %i.sa = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i259 = icmp ult i32 %i.rz, %i.sa
  br i1 %.not.i259, label %bb.ct, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.sb = shl i32 %i.sa, 1
  %i.sc = add i32 %i.sb, %i.qk                    ; 3 uses
  %i.sd = load i32, ptr %i.h, align 8, !tbaa !147
  %i.se = icmp ugt i32 %i.sc, %i.sd
  br i1 %i.se, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_copy.exit

bb.cp:                                            ; preds = %bb.cn
  %i.sf = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.sg = zext i32 %i.sc to i64                   ; 2 uses
  %i.sh = tail call ptr @sqlite3_realloc64(ptr noundef %i.sf, i64 noundef %i.sg) #45 ; 2 uses
  %i.si = icmp eq ptr %i.sh, null
  br i1 %i.si, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_copy.exit

bb.cr:                                            ; preds = %bb.cp
  store ptr %i.sh, ptr %i.i, align 8, !tbaa !148
  %i.sj = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.sk = shl nuw nsw i64 %i.sg, 2
  %i.sl = tail call ptr @sqlite3_realloc64(ptr noundef %i.sj, i64 noundef %i.sk) #45 ; 2 uses
  %i.sm = icmp eq ptr %i.sl, null
  br i1 %i.sm, label %bb.cs, label %re_resize.exit.i260

bb.cs:                                            ; preds = %bb.cr
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_copy.exit

re_resize.exit.i260:                              ; preds = %bb.cr
  store ptr %i.sl, ptr %i.j, align 8, !tbaa !149
  store i32 %i.sc, ptr %i.g, align 4, !tbaa !151
  %.pre.i261 = load i32, ptr %i.d, align 8, !tbaa !152
  br label %bb.ct

bb.ct:                                            ; preds = %re_resize.exit.i260, %bb.cm
  %i.sn = phi i32 [ %.pre.i261, %re_resize.exit.i260 ], [ %i.ry, %bb.cm ]
  %i.so = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %i.sp = zext i32 %i.sn to i64
  %i.sq = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.sp
  %i.sr = getelementptr inbounds nuw i8, ptr %i.so, i64 %i.qm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.sq, ptr align 1 %i.sr, i64 %i.qn, i1 false)
  %i.ss = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.st = load i32, ptr %i.d, align 8, !tbaa !152
  %i.su = zext i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.su
  %i.sw = getelementptr inbounds nuw [4 x i8], ptr %i.ss, i64 %i.qm
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.sv, ptr align 4 %i.sw, i64 %i.qo, i1 false)
  %i.sx = load i32, ptr %i.d, align 8, !tbaa !152
  %i.sy = add i32 %i.sx, %i.qk
  store i32 %i.sy, ptr %i.d, align 8, !tbaa !152
  br label %re_copy.exit

re_copy.exit:                                     ; preds = %bb.co, %bb.cq, %bb.cs, %bb.ct
  %i.sz = add nuw i32 %.0130433, 1                ; 2 uses
  %exitcond484.not = icmp eq i32 %i.sz, %.0133428.lcssa
  br i1 %exitcond484.not, label %.loopexit, label %bb.cm, !llvm.loop !1106

.loopexit:                                        ; preds = %re_copy.exit, %.preheader, %re_insert.exit258
  %.1140 = phi i32 [ %i.rw, %re_insert.exit258 ], [ %.0139437, %.preheader ], [ %.0139437, %re_copy.exit ]
  %.2 = phi i32 [ %i.rx, %re_insert.exit258 ], [ %.1132, %.preheader ], [ %.1132, %re_copy.exit ] ; 3 uses
  %i.ta = icmp ult i32 %.0133428.lcssa, %.2
  br i1 %i.ta, label %.lr.ph435, label %._crit_edge

.lr.ph435:                                        ; preds = %.loopexit
  %i.tb = add i32 %i.qk, 1
  %i.tc = zext nneg i32 %.1140 to i64             ; 2 uses
  %i.td = zext i32 %i.qk to i64                   ; 2 uses
  %i.te = shl nuw nsw i64 %i.td, 2
  br label %bb.cu

bb.cu:                                            ; preds = %.lr.ph435, %re_copy.exit278
  %.1434 = phi i32 [ %.0133428.lcssa, %.lr.ph435 ], [ %i.wf, %re_copy.exit278 ]
  %i.tf = load i32, ptr %i.d, align 8, !tbaa !152 ; 5 uses
  %i.tg = load i32, ptr %i.g, align 4, !tbaa !151 ; 2 uses
  %.not.i.i262 = icmp ugt i32 %i.tg, %i.tf
  br i1 %.not.i.i262, label %.._crit_edge_crit_edge.i.i264, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.th = shl i32 %i.tg, 1                        ; 3 uses
  %i.ti = load i32, ptr %i.h, align 8, !tbaa !147
  %i.tj = icmp ugt i32 %i.th, %i.ti
  br i1 %i.tj, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  store ptr @.str.319, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit274

bb.cx:                                            ; preds = %bb.cv
  %i.tk = load ptr, ptr %i.i, align 8, !tbaa !148
  %i.tl = zext i32 %i.th to i64                   ; 2 uses
  %i.tm = tail call ptr @sqlite3_realloc64(ptr noundef %i.tk, i64 noundef %i.tl) #45 ; 2 uses
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit274

bb.cz:                                            ; preds = %bb.cx
  store ptr %i.tm, ptr %i.i, align 8, !tbaa !148
  %i.to = load ptr, ptr %i.j, align 8, !tbaa !149
  %i.tp = shl nuw nsw i64 %i.tl, 2
  %i.tq = tail call ptr @sqlite3_realloc64(ptr noundef %i.to, i64 noundef %i.tp) #45 ; 2 uses
  %i.tr = icmp eq ptr %i.tq, null
  br i1 %i.tr, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  store ptr @.str.56, ptr %i.k, align 8, !tbaa !150
  br label %re_append.exit274

bb.db:                                            ; preds = %bb.cz
  store ptr %i.tq, ptr %i.j, align 8, !tbaa !149
  store i32 %i.th, ptr %i.g, align 4, !tbaa !151
  %.pre.i.i263 = load i32, ptr %i.d, align 8, !tbaa !152 ; 3 uses
  %i.ts = icmp sgt i32 %.pre.i.i263, %i.tf
  br i1 %i.ts, label %.lr.ph.i.i269, label %.._crit_edge_crit_edge.i.i264

.._crit_edge_crit_edge.i.i264:                    ; preds = %bb.db, %bb.cu
  %i.tt = phi i32 [ %.pre.i.i263, %bb.db ], [ %i.tf, %bb.cu ]
  %.pre33.i.i265 = sext i32 %i.tf to i64
  br label %._crit_edge.i.i266

.lr.ph.i.i269:                                    ; preds = %bb.db
  %i.tu = sext i32 %.pre.i.i263 to i64            ; 6 uses
  %i.tv = sext i32 %i.tf to i64                   ; 4 uses
  %i.tw = sub nsw i64 %i.tu, %i.tv
  %xtraiter718 = and i64 %i.tw, 1
  %lcmp.mod719.not = icmp eq i64 %xtraiter718, 0
  br i1 %lcmp.mod719.not, label %.prol.loopexit717, label %.prol.loopexit717.unr-lcssa

.prol.loopexit717.unr-lcssa:                      ; preds = %.lr.ph.i.i269
  %i.tx = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i271.prol = add nsw i64 %i.tu, -1 ; 3 uses
  %i.ty = getelementptr inbounds i8, ptr %i.tx, i64 %indvars.iv.next.i.i271.prol
  %i.tz = load i8, ptr %i.ty, align 1, !tbaa !52
  %i.ua = getelementptr inbounds i8, ptr %i.tx, i64 %i.tu
  store i8 %i.tz, ptr %i.ua, align 1, !tbaa !52
  %i.ub = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.uc = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %indvars.iv.next.i.i271.prol
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !53
  %i.ue = getelementptr inbounds [4 x i8], ptr %i.ub, i64 %i.tu
  store i32 %i.ud, ptr %i.ue, align 4, !tbaa !53
  br label %.prol.loopexit717

.prol.loopexit717:                                ; preds = %.prol.loopexit717.unr-lcssa, %.lr.ph.i.i269
  %indvars.iv.i.i270.unr = phi i64 [ %i.tu, %.lr.ph.i.i269 ], [ %indvars.iv.next.i.i271.prol, %.prol.loopexit717.unr-lcssa ]
  %i.uf = add nsw i64 %i.tu, -1
  %i.ug = icmp eq i64 %i.uf, %i.tv
  br i1 %i.ug, label %._crit_edge.loopexit.i.i272, label %.lr.ph.i.i269.new

.lr.ph.i.i269.new:                                ; preds = %.prol.loopexit717, %.lr.ph.i.i269.new
  %indvars.iv.i.i270 = phi i64 [ %indvars.iv.next.i.i271.1, %.lr.ph.i.i269.new ], [ %indvars.iv.i.i270.unr, %.prol.loopexit717 ] ; 4 uses
  %i.uh = load ptr, ptr %i.i, align 8, !tbaa !148 ; 2 uses
  %indvars.iv.next.i.i271 = add nsw i64 %indvars.iv.i.i270, -1 ; 4 uses
  %i.ui = getelementptr inbounds i8, ptr %i.uh, i64 %indvars.iv.next.i.i271
  %i.uj = load i8, ptr %i.ui, align 1, !tbaa !52
  %i.uk = getelementptr inbounds i8, ptr %i.uh, i64 %indvars.iv.i.i270
  store i8 %i.uj, ptr %i.uk, align 1, !tbaa !52
  %i.ul = load ptr, ptr %i.j, align 8, !tbaa !149 ; 2 uses
  %i.um = getelementptr inbounds [4 x i8], ptr %i.ul, i64 %indvars.iv.next.i.i271
end_hunk_1
