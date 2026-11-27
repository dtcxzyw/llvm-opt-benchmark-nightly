Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/graphviz/original/flat?download=true
inline.NumInlined: 11
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@flat_node:bb.a
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !15
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %.val32.i = load ptr, ptr %i.ba, align 8, !tbaa !13
  call fastcc void @setbounds(ptr %.val32.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  %i.bb = and i64 %indvars.iv.next5.i82, 4294967295
  %.not.i = icmp eq i64 %indvars.iv.i81, %i.bb
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.al, i64 %indvars.iv.next5.i82
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !15
  %i.be = getelementptr i8, ptr %i.bd, i64 16
  %.val31.i = load ptr, ptr %i.be, align 8, !tbaa !13
  call fastcc void @setbounds(ptr %.val31.i, ptr noundef %i.a, i32 noundef %spec.select14.i.i, i32 noundef %spec.select.i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.bf = load i32, ptr %i.ap, align 4, !tbaa !64 ; 3 uses
  %i.bg = load i32, ptr %i.a, align 16, !tbaa !64 ; 3 uses
  %i.bh = sub nsw i32 %i.bf, %i.bg
  %i.bi = icmp slt i32 %i.bh, 2
  br i1 %i.bi, label %.flat_limits.exit_crit_edge84, label %bb.c, !llvm.loop !97

.flat_limits.exit_crit_edge84:                    ; preds = %bb.e
  br label %flat_limits.exit, !llvm.loop !97

flat_limits.exit:                                 ; preds = %bb.c, %.flat_limits.exit_crit_edge84, %bb.b
  %i.bj = phi i32 [ %i.bf, %.flat_limits.exit_crit_edge84 ], [ %i.am, %bb.b ], [ %i.bf, %bb.c ] ; 2 uses
  %i.bk = phi i32 [ %i.bg, %.flat_limits.exit_crit_edge84 ], [ -1, %bb.b ], [ %i.bg, %bb.c ] ; 2 uses
  %.not29.i = icmp sgt i32 %i.bk, %i.bj
  %i.bl = add nsw i32 %i.bk, %i.bj
  %i.bm = load i32, ptr %i.an, align 8
  %i.bn = load i32, ptr %i.ao, align 4
  %i.bo = add nsw i32 %i.bn, %i.bm
  %.0.in.in.i = select i1 %.not29.i, i32 %i.bo, i32 %i.bl
  %.0.in.i = add nsw i32 %.0.in.in.i, 1
  %.0.i = sdiv i32 %.0.in.i, 2                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.bp = add nsw i32 %i.x, -1                    ; 2 uses
  %i.bq = sext i32 %i.bp to i64                   ; 4 uses
  %i.br = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.bq ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !52
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %flat_limits.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !13
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 40
  %i.by = load double, ptr %i.bx, align 8, !tbaa !99
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !100
  %i.cb = fsub double %i.by, %i.ca
  br label %bb.h

bb.g:                                             ; preds = %flat_limits.exit
  %i.cc = sext i32 %i.x to i64
  %i.cd = getelementptr inbounds [88 x i8], ptr %.val.val, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !52
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !13
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 40
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !99
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !101
  %i.cn = fadd double %i.ck, %i.cm
  %i.co = getelementptr inbounds nuw i8, ptr %.val, i64 356
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !102
  %i.cq = sitofp i32 %i.cp to double
  %i.cr = fadd double %i.cn, %i.cq
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.0 = phi double [ %i.cb, %bb.f ], [ %i.cr, %bb.g ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !67 ; 2 uses
  %i.cu = load i32, ptr %i.br, align 8, !tbaa !66 ; 3 uses
  %i.cv = add nsw i32 %i.cu, 2                    ; 2 uses
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %mul.ov.i.i = icmp slt i32 %i.cu, -2
  br i1 %mul.ov.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cx = load ptr, ptr @stderr, align 8, !tbaa !63
  %i.cy = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cx, ptr noundef nonnull @.str, i64 noundef range(i64 -2147483646, 2147483648) %i.cw, i64 noundef 8) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.cz = add nsw i32 %i.cu, 1
  %i.da = sext i32 %i.cz to i64
  %i.db = shl nuw nsw i64 %i.da, 3                ; 2 uses
  %i.dc = shl nuw nsw i64 %i.cw, 3                ; 3 uses
  %i.dd = icmp eq i32 %i.cv, 0
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @free(ptr noundef %i.ct) #12
  br label %gv_recalloc.exit.i

bb.l:                                             ; preds = %bb.j
  %i.de = tail call ptr @realloc(ptr noundef %i.ct, i64 noundef range(i64 0, 188978560937) %i.dc) #15 ; 3 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !63
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dg, ptr noundef nonnull @.str.1, i64 noundef range(i64 0, 188978560937) %i.dc) #13 ; 0 uses
  tail call fastcc void @graphviz_exit() #14
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.db
  %i.dj = sub nuw nsw i64 %i.dc, %i.db
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.di, i8 0, i64 %i.dj, i1 false)
  br label %gv_recalloc.exit.i

gv_recalloc.exit.i:                               ; preds = %bb.n, %bb.k
  %.0.i.i.i = phi ptr [ null, %bb.k ], [ %i.de, %bb.n ] ; 7 uses
  %i.dk = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 264
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !48
  %i.dn = getelementptr inbounds [88 x i8], ptr %i.dm, i64 %i.bq ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 24
  store ptr %.0.i.i.i, ptr %i.do, align 8, !tbaa !67
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  store ptr %.0.i.i.i, ptr %i.dp, align 8, !tbaa !52
  %i.dq = load i32, ptr %i.dn, align 8, !tbaa !66 ; 2 uses
  %i.dr = icmp sgt i32 %i.dq, %.0.i
  br i1 %i.dr, label %.lr.ph.preheader.i, label %gv_recalloc.exit.._crit_edge_crit_edge.i

gv_recalloc.exit.._crit_edge_crit_edge.i:         ; preds = %gv_recalloc.exit.i
  %.pre.i = sext i32 %.0.i to i64
  br label %make_vn_slot.exit

.lr.ph.preheader.i:                               ; preds = %gv_recalloc.exit.i
  %i.ds = sext i32 %i.dq to i64                   ; 5 uses
  %i.dt = sext i32 %.0.i to i64                   ; 5 uses
  %i.du = sub nsw i64 %i.ds, %i.dt
  %xtraiter = and i64 %i.du, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.dv = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %i.ds ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 -8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !15 ; 2 uses
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !13
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 364 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !36
  %i.ec = add nsw i32 %i.eb, 1
  store i32 %i.ec, ptr %i.ea, align 4, !tbaa !36
  %indvars.iv.next.i78.prol = add nsw i64 %i.ds, -1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.i77.unr = phi i64 [ %i.ds, %.lr.ph.preheader.i ], [ %indvars.iv.next.i78.prol, %.lr.ph.i.prol ]
  %i.ed = add nsw i64 %i.ds, -1
  %i.ee = icmp eq i64 %i.ed, %i.dt
  br i1 %i.ee, label %make_vn_slot.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv.i77 = phi i64 [ %indvars.iv.next.i78.1, %.lr.ph.i ], [ %indvars.iv.i77.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ef = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eg = getelementptr i8, ptr %i.ef, i64 -8
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !15 ; 2 uses
  store ptr %i.eh, ptr %i.ef, align 8, !tbaa !15
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 16
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !13
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 364 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !36
  %i.em = add nsw i32 %i.el, 1
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !36
  %i.en = getelementptr [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i77 ; 2 uses
  %i.eo = getelementptr i8, ptr %i.en, i64 -8
  %i.ep = getelementptr i8, ptr %i.en, i64 -16
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !15 ; 2 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !15
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !13
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 364 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !36
  %i.ev = add nsw i32 %i.eu, 1
  store i32 %i.ev, ptr %i.et, align 4, !tbaa !36
  %indvars.iv.next.i78.1 = add nsw i64 %indvars.iv.i77, -2 ; 2 uses
  %i.ew = icmp sgt i64 %indvars.iv.next.i78.1, %i.dt
  br i1 %i.ew, label %.lr.ph.i, label %make_vn_slot.exit, !llvm.loop !98

make_vn_slot.exit:                                ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %gv_recalloc.exit.._crit_edge_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %gv_recalloc.exit.._crit_edge_crit_edge.i ], [ %i.dt, %.lr.ph.i ], [ %i.dt, %.lr.ph.i.prol.loopexit ]
  %i.ex = tail call ptr @virtual_node(ptr noundef nonnull %i.n) #12 ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %.pre-phi.i ; 2 uses
  store ptr %i.ex, ptr %i.ey, align 8, !tbaa !15
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 16
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !13
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 360
  %1 = zext i32 %i.bp to i64
  %2 = zext i32 %.0.i to i64
  %3 = shl nuw i64 %2, 32
  %4 = or disjoint i64 %3, %1
  store i64 %4, ptr %i.fb, align 8
  %i.fc = load ptr, ptr %i.y, align 8, !tbaa !13  ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 264
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !48
  %i.ff = getelementptr inbounds [88 x i8], ptr %i.fe, i64 %i.bq ; 2 uses
  %i.fg = load i32, ptr %i.ff, align 8, !tbaa !66
  %i.fh = add nsw i32 %i.fg, 1                    ; 2 uses
  store i32 %i.fh, ptr %i.ff, align 8, !tbaa !66
  %i.fi = sext i32 %i.fh to i64
  %i.fj = getelementptr inbounds [8 x i8], ptr %.0.i.i.i, i64 %i.fi
  store ptr null, ptr %i.fj, align 8, !tbaa !15
  %i.fk = load ptr, ptr %i.ey, align 8, !tbaa !15 ; 3 uses
  %i.fl = load ptr, ptr %i.b, align 8, !tbaa !13
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 120
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !61 ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  %.sroa.02.0.copyload = load double, ptr %i.fo, align 8, !tbaa !65 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  %.sroa.6.0.copyload = load double, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !65 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fc, i64 132
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !68
  %i.fr = and i32 %i.fq, 1
  %.not76 = icmp eq i32 %i.fr, 0                  ; 2 uses
  %.sroa.6.0 = select i1 %.not76, double %.sroa.6.0.copyload, double %.sroa.02.0.copyload ; 2 uses
  %.sroa.02.0 = select i1 %.not76, double %.sroa.02.0.copyload, double %.sroa.6.0.copyload
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fk, i64 16 ; 3 uses
  %i.ft = load ptr, ptr %i.fs, align 8, !tbaa !13 ; 5 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 96
  store double %.sroa.6.0, ptr %i.fu, align 8, !tbaa !103
  %i.fv = fmul double %.sroa.6.0, 5.000000e-01    ; 5 uses
  %i.fw = fmul double %.sroa.02.0, 5.000000e-01   ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ft, i64 112
  store double %i.fw, ptr %i.fx, align 8, !tbaa !104
  %i.fy = getelementptr inbounds nuw i8, ptr %i.ft, i64 104
  store double %i.fw, ptr %i.fy, align 8, !tbaa !105
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ft, i64 136
  store ptr %i.fn, ptr %i.fz, align 8, !tbaa !54
  %i.ga = fadd double %.0, %i.fv
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  store double %i.ga, ptr %i.gb, align 8, !tbaa !99
  %i.gc = load i32, ptr %0, align 8
  %i.gd = and i32 %i.gc, 3
  %i.ge = icmp eq i32 %i.gd, 3
  %i.gf = select i1 %i.ge, ptr %0, ptr %i.j
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 56
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !35
  %i.gi = tail call ptr @virtual_edge(ptr noundef %i.fk, ptr noundef %i.gh, ptr noundef nonnull %0) #12
  %i.gj = load ptr, ptr %i.fs, align 8, !tbaa !13
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 104
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !105
  %i.gm = fneg double %i.gl
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !13 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  store double %i.gm, ptr %i.gp, align 8, !tbaa !106
  %i.gq = load i32, ptr %0, align 8
  %i.gr = and i32 %i.gq, 3
  %i.gs = icmp eq i32 %i.gr, 3
  %i.gt = select i1 %i.gs, ptr %0, ptr %i.j
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 56
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !35
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 16
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !13
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 112
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !104
  %i.ha = getelementptr inbounds nuw i8, ptr %i.go, i64 72
  store double %i.gz, ptr %i.ha, align 8, !tbaa !107
  %i.hb = getelementptr inbounds nuw i8, ptr %i.go, i64 152
  store i8 4, ptr %i.hb, align 8, !tbaa !108
  %i.hc = load i32, ptr %0, align 8
  %i.hd = and i32 %i.hc, 3
  %i.he = icmp eq i32 %i.hd, 2
  %i.hf = getelementptr inbounds i8, ptr %0, i64 -64 ; 2 uses
  %i.hg = select i1 %i.he, ptr %0, ptr %i.hf
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 56
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !35
  %i.hj = tail call ptr @virtual_edge(ptr noundef %i.fk, ptr noundef %i.hi, ptr noundef nonnull %0) #12
  %i.hk = load ptr, ptr %i.fs, align 8, !tbaa !13 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 112
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !104
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hj, i64 16
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !13 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 24
  store double %i.hm, ptr %i.hp, align 8, !tbaa !106
  %i.hq = load i32, ptr %0, align 8
  %i.hr = and i32 %i.hq, 3
  %i.hs = icmp eq i32 %i.hr, 2
  %i.ht = select i1 %i.hs, ptr %0, ptr %i.hf
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !35
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !13
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 104
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !105
  %i.ia = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  store double %i.hz, ptr %i.ia, align 8, !tbaa !107
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ho, i64 152
  store i8 4, ptr %i.ib, align 8, !tbaa !108
  %i.ic = load ptr, ptr %i.y, align 8, !tbaa !13
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 264
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !48
  %i.if = getelementptr inbounds [88 x i8], ptr %i.ie, i64 %i.bq ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !100
  %i.ii = fcmp olt double %i.ih, %i.fv
  br i1 %i.ii, label %bb.o, label %bb.p

bb.o:                                             ; preds = %make_vn_slot.exit
  store double %i.fv, ptr %i.ig, align 8, !tbaa !100
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %make_vn_slot.exit
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 40 ; 2 uses
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !101
  %i.il = fcmp olt double %i.ik, %i.fv
  br i1 %i.il, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store double %i.fv, ptr %i.ij, align 8, !tbaa !101
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.im = getelementptr inbounds nuw i8, ptr %i.hk, i64 152
  store ptr %0, ptr %i.im, align 8, !tbaa !109
  br label %bb.s

bb.s:                                             ; preds = %bb.a, %bb.r
  ret void
}

declare void @checkLabelOrder(ptr noundef) local_unnamed_addr #2

declare void @rec_reset_vlists(ptr noundef) local_unnamed_addr #2

declare ptr @dot_root(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: cold inlinehint nofree noreturn nounwind uwtable
define internal fastcc void @graphviz_exit() unnamed_addr #4 {
bb.a:
  tail call void @exit(i32 noundef 1) #17
  unreachable
}

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

declare ptr @virtual_edge(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @setbounds(ptr nofree readonly captures(none) %.16.val, ptr nofree noundef nonnull writeonly captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.16.val, i64 216
  %i.b = load i8, ptr %i.a, align 8, !tbaa !53
  %i.c = icmp eq i8 %i.b, 1
  br i1 %i.c, label %bb.b, label %.thread21

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.16.val, i64 364
  %i.e = load i32, ptr %i.d, align 4, !tbaa !36   ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.16.val, i64 264
  %i.g = load i64, ptr %i.f, align 8, !tbaa !111
  %i.h = icmp eq i64 %i.g, 0
  %i.i = getelementptr inbounds nuw i8, ptr %.16.val, i64 272
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !112  ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  br i1 %i.h, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %.not628 = icmp eq ptr %i.k, null
  br i1 %.not628, label %.thread21, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr %i.k, align 8
  %i.m = and i32 %i.l, 3
  %i.n = icmp eq i32 %i.m, 2
  %i.o = select i1 %i.n, i64 56, i64 -8
  %i.p = getelementptr inbounds i8, ptr %i.k, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 3
  %i.v = icmp eq i32 %i.u, 2
end_hunk_0
