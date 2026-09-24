Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lvgl/original/lv_draw_sw_mask?download=true
inline.NumInlined: 59
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@lv_draw_sw_mask_radius_init:bb.a
  br label %bb.j

.thread106:                                       ; preds = %.preheader71.3.thread, %.thread102, %bb.f, %bb.g
  %.1.3109 = phi ptr [ %.1.2, %bb.g ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 720), %.preheader71.3.thread ], [ %spec.select68.3, %.thread102 ], [ getelementptr inbounds nuw (i8, ptr @lv_global, i64 768), %bb.f ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.3109, i64 36 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !20
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.bf, align 4, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.3109, i64 32
  %i.bj = icmp samesign ult i32 %spec.select, 16
  %i.bk = lshr i32 %spec.store.select, 4
  %i.bl = tail call i32 @llvm.umin.i32(i32 %i.bk, i32 1000)
  %spec.select69 = select i1 %i.bj, i32 1, i32 %i.bl
  store i32 %spec.select69, ptr %i.bi, align 8, !tbaa !18
  br label %bb.j

bb.j:                                             ; preds = %.thread106, %bb.i
  %.2 = phi ptr [ %.1.3109, %.thread106 ], [ %i.bd, %bb.i ] ; 7 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %.2, ptr %i.bm, align 8, !tbaa !14
  %i.bn = getelementptr inbounds nuw i8, ptr %.2, i64 40
  store i32 %spec.store.select, ptr %i.bn, align 8, !tbaa !73
  %i.bo = load ptr, ptr %.2, align 8, !tbaa !21   ; 2 uses
  %.not.i = icmp eq ptr %i.bo, null
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @lv_free(ptr noundef nonnull %i.bo) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bp = mul nuw nsw i32 %spec.store.select, 6
  %i.bq = add nuw nsw i32 %i.bp, 6
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = tail call ptr @lv_malloc(i64 noundef %i.br) #9 ; 6 uses
  store ptr %i.bs, ptr %.2, align 8, !tbaa !21
  %.not195.i = icmp eq ptr %i.bs, null
  br i1 %.not195.i, label %.preheader.i, label %bb.m

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  br label %.preheader.i

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %.2, i64 8 ; 14 uses
  store ptr %i.bs, ptr %i.bt, align 8, !tbaa !19
  %i.bu = shl nuw nsw i32 %spec.store.select, 1   ; 2 uses
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bv
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %.2, i64 24 ; 3 uses
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !37
  %i.bz = shl nuw nsw i32 %spec.store.select, 2   ; 3 uses
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cd = getelementptr inbounds nuw i8, ptr %.2, i64 16 ; 3 uses
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !38
  %i.ce = icmp eq i32 %spec.select, 1
  br i1 %i.ce, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i8 -76, ptr %i.bs, align 1, !tbaa !29
  %i.cf = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  store i16 0, ptr %i.cf, align 2, !tbaa !39
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  store i16 1, ptr %i.cg, align 2, !tbaa !39
  %i.ch = load ptr, ptr %i.cd, align 8, !tbaa !38
  store i16 0, ptr %i.ch, align 2, !tbaa !39
  br label %circ_calc_aa4.exit

bb.o:                                             ; preds = %bb.m
  %i.ci = add nuw i32 %i.bu, 2                    ; 2 uses
  %i.cj = shl nsw i32 %i.ci, 1
  %i.ck = sext i32 %i.cj to i64
  %i.cl = shl nsw i64 %i.ck, 2
  %i.cm = tail call ptr @lv_malloc_zeroed(i64 noundef %i.cl) #9 ; 19 uses
  %.not196.i = icmp eq ptr %i.cm, null
  br i1 %.not196.i, label %.preheader223.i, label %bb.p

.preheader223.i:                                  ; preds = %bb.o, %.preheader223.i
  br label %.preheader223.i

bb.p:                                             ; preds = %bb.o
  %i.cn = sext i32 %i.ci to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn ; 15 uses
  %i.cp = sub nsw i32 1, %i.bz
  br label %.preheader224.i

.preheader224.i:                                  ; preds = %bb.ai, %bb.p
  %.0178241.i = phi i32 [ 0, %bb.p ], [ %i.gz, %bb.ai ] ; 11 uses
  %.0183240.i = phi i32 [ 0, %bb.p ], [ %i.ha, %bb.ai ] ; 7 uses
  %.0213239.i = phi i32 [ %i.cp, %bb.p ], [ %.3216.3.i, %bb.ai ] ; 3 uses
  %.sroa.0.0238.i = phi i32 [ %i.bz, %bb.p ], [ %.sroa.0.3.3.i, %bb.ai ] ; 3 uses
  %.sroa.10.0237.i = phi i32 [ 0, %bb.p ], [ %i.cq, %bb.ai ] ; 7 uses
  %i.cq = add i32 %.sroa.10.0237.i, 4
  %i.cr = or disjoint i32 %.sroa.10.0237.i, 3     ; 3 uses
  %i.cs = icmp slt i32 %.0213239.i, 1
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.preheader224.i
  %i.ct = shl nsw i32 %.sroa.10.0237.i, 1
  %i.cu = add nsw i32 %.0213239.i, 3
  %i.cv = add i32 %i.cu, %i.ct
  br label %circ_next.exit.i

bb.r:                                             ; preds = %.preheader224.i
  %i.cw = sub nsw i32 %.sroa.10.0237.i, %.sroa.0.0238.i
  %i.cx = shl nsw i32 %i.cw, 1
  %i.cy = add nuw i32 %.0213239.i, 5
  %i.cz = add i32 %i.cy, %i.cx
  %i.da = add nsw i32 %.sroa.0.0238.i, -1
  br label %circ_next.exit.i

circ_next.exit.i:                                 ; preds = %bb.r, %bb.q
  %.sroa.0.3.i = phi i32 [ %.sroa.0.0238.i, %bb.q ], [ %i.da, %bb.r ] ; 6 uses
  %.3216.i = phi i32 [ %i.cv, %bb.q ], [ %i.cz, %bb.r ] ; 3 uses
  %.not222.not.i = icmp slt i32 %.sroa.10.0237.i, %.sroa.0.3.i
  br i1 %.not222.not.i, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %circ_next.exit.i
  %i.db = or disjoint i32 %.sroa.10.0237.i, 1     ; 3 uses
  %i.dc = ashr i32 %.sroa.0.3.i, 2                ; 9 uses
  %i.dd = and i32 %.sroa.0.3.i, 3                 ; 3 uses
  %i.de = icmp slt i32 %.3216.i, 1
  br i1 %i.de, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.df = sub nsw i32 %i.db, %.sroa.0.3.i
  %i.dg = shl nsw i32 %i.df, 1
  %i.dh = add nuw i32 %.3216.i, 5
  %i.di = add i32 %i.dh, %i.dg
  %i.dj = add nsw i32 %.sroa.0.3.i, -1
  br label %circ_next.exit.1.i

bb.u:                                             ; preds = %bb.s
  %i.dk = shl nsw i32 %i.db, 1
  %i.dl = add nuw nsw i32 %i.dk, 3
  %i.dm = add i32 %i.dl, %.3216.i
  br label %circ_next.exit.1.i

circ_next.exit.1.i:                               ; preds = %bb.u, %bb.t
  %.sroa.0.3.1.i = phi i32 [ %.sroa.0.3.i, %bb.u ], [ %i.dj, %bb.t ] ; 6 uses
  %.3216.1.i = phi i32 [ %i.dm, %bb.u ], [ %i.di, %bb.t ] ; 3 uses
  %.not222.not.1.i = icmp slt i32 %i.db, %.sroa.0.3.1.i
  br i1 %.not222.not.1.i, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %circ_next.exit.1.i
  %i.dn = or disjoint i32 %.sroa.10.0237.i, 2     ; 3 uses
  %i.do = ashr i32 %.sroa.0.3.1.i, 2
  %i.dp = and i32 %.sroa.0.3.1.i, 3               ; 3 uses
  %i.dq = icmp slt i32 %.3216.1.i, 1
  br i1 %i.dq, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dr = sub nsw i32 %i.dn, %.sroa.0.3.1.i
  %i.ds = shl nsw i32 %i.dr, 1
  %i.dt = add nuw i32 %.3216.1.i, 5
  %i.du = add i32 %i.dt, %i.ds
  %i.dv = add nsw i32 %.sroa.0.3.1.i, -1
  br label %circ_next.exit.2.i

bb.x:                                             ; preds = %bb.v
  %i.dw = shl nsw i32 %i.dn, 1
  %i.dx = or disjoint i32 %i.dw, 3
  %i.dy = add i32 %i.dx, %.3216.1.i
  br label %circ_next.exit.2.i

circ_next.exit.2.i:                               ; preds = %bb.x, %bb.w
  %.sroa.0.3.2.i = phi i32 [ %.sroa.0.3.1.i, %bb.x ], [ %i.dv, %bb.w ] ; 6 uses
  %.3216.2.i = phi i32 [ %i.dy, %bb.x ], [ %i.du, %bb.w ] ; 3 uses
  %.not222.not.2.i = icmp slt i32 %i.dn, %.sroa.0.3.2.i
  br i1 %.not222.not.2.i, label %bb.y, label %.thread.i

bb.y:                                             ; preds = %circ_next.exit.2.i
  %i.dz = ashr i32 %.sroa.0.3.2.i, 2
  %i.ea = and i32 %.sroa.0.3.2.i, 3               ; 4 uses
  %i.eb = icmp slt i32 %.3216.2.i, 1
  br i1 %i.eb, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ec = sub nsw i32 %i.cr, %.sroa.0.3.2.i
  %i.ed = shl nsw i32 %i.ec, 1
  %i.ee = add nuw i32 %.3216.2.i, 5
  %i.ef = add i32 %i.ee, %i.ed
  %i.eg = add nsw i32 %.sroa.0.3.2.i, -1
  br label %circ_next.exit.3.i

bb.aa:                                            ; preds = %bb.y
  %i.eh = shl nsw i32 %i.cr, 1
  %i.ei = add i32 %i.eh, 3
  %i.ej = add i32 %i.ei, %.3216.2.i
  br label %circ_next.exit.3.i

circ_next.exit.3.i:                               ; preds = %bb.aa, %bb.z
  %.sroa.0.3.3.i = phi i32 [ %.sroa.0.3.2.i, %bb.aa ], [ %i.eg, %bb.z ] ; 4 uses
  %.3216.3.i = phi i32 [ %i.ej, %bb.aa ], [ %i.ef, %bb.z ]
  %.not222.not.3.i = icmp slt i32 %i.cr, %.sroa.0.3.3.i
  br i1 %.not222.not.3.i, label %bb.ab, label %.thread.i

bb.ab:                                            ; preds = %circ_next.exit.3.i
  %4 = ashr i32 %.sroa.0.3.3.i, 2
  %5 = and i32 %.sroa.0.3.3.i, 3                  ; 4 uses
  %i.ek = icmp eq i32 %i.dc, %4
  br i1 %i.ek, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.el = zext nneg i32 %.0178241.i to i64        ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.el
  store i32 %i.dc, ptr %i.em, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.el
  store i32 %.0183240.i, ptr %i.en, align 4, !tbaa !35
  %i.eo = add nuw nsw i32 %i.dp, %i.dd
  %i.ep = add nuw nsw i32 %i.eo, %i.ea
  %i.eq = add nuw nsw i32 %i.ep, %5
  %i.er = trunc nuw nsw i32 %i.eq to i8
  br label %bb.ai

bb.ad:                                            ; preds = %bb.ab
  %.not198.i = icmp eq i32 %i.dc, %i.do
  br i1 %.not198.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.es = zext nneg i32 %.0178241.i to i64        ; 4 uses
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.es
  store i32 %i.dc, ptr %i.et, align 4, !tbaa !35
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.es
  store i32 %.0183240.i, ptr %i.eu, align 4, !tbaa !35
  %i.ev = trunc nuw nsw i32 %i.dd to i8
  %i.ew = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.es
  store i8 %i.ev, ptr %i.ex, align 1, !tbaa !29
  %i.ey = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.es ; 2 uses
  %i.fa = load i8, ptr %i.ez, align 1, !tbaa !29
  %i.fb = shl i8 %i.fa, 4
  store i8 %i.fb, ptr %i.ez, align 1, !tbaa !29
  %i.fc = add nuw nsw i32 %.0178241.i, 1
  %i.fd = add nsw i32 %i.dc, -1
  %i.fe = zext nneg i32 %i.fc to i64              ; 3 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fe
  store i32 %i.fd, ptr %i.ff, align 4, !tbaa !35
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fe
  store i32 %.0183240.i, ptr %i.fg, align 4, !tbaa !35
  %i.fh = or disjoint i32 %i.dp, 4
  %i.fi = add nuw nsw i32 %i.fh, %i.ea
  %i.fj = add nuw nsw i32 %i.fi, %5
  %i.fk = trunc nuw nsw i32 %i.fj to i8
  br label %bb.ai

bb.af:                                            ; preds = %bb.ad
  %.not199.i = icmp eq i32 %i.dc, %i.dz
  %i.fl = zext nneg i32 %.0178241.i to i64        ; 6 uses
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fl
  store i32 %i.dc, ptr %i.fm, align 4, !tbaa !35
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fl
  store i32 %.0183240.i, ptr %i.fn, align 4, !tbaa !35
  %i.fo = add nuw nsw i32 %i.dp, %i.dd            ; 2 uses
  br i1 %.not199.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fp = trunc nuw nsw i32 %i.fo to i8
  %i.fq = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 %i.fl
  store i8 %i.fp, ptr %i.fr, align 1, !tbaa !29
  %i.fs = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 %i.fl ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !29
  %i.fv = shl i8 %i.fu, 4
  store i8 %i.fv, ptr %i.ft, align 1, !tbaa !29
  %i.fw = add nuw nsw i32 %.0178241.i, 1
  %i.fx = add nsw i32 %i.dc, -1
  %i.fy = zext nneg i32 %i.fw to i64              ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.fy
  store i32 %i.fx, ptr %i.fz, align 4, !tbaa !35
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.fy
  store i32 %.0183240.i, ptr %i.ga, align 4, !tbaa !35
  %i.gb = or disjoint i32 %i.ea, 8
  %i.gc = add nuw nsw i32 %i.gb, %5
  %i.gd = trunc nuw nsw i32 %i.gc to i8
  br label %bb.ai

bb.ah:                                            ; preds = %bb.af
  %i.ge = add nuw nsw i32 %i.ea, %i.fo
  %i.gf = trunc nuw nsw i32 %i.ge to i8
  %i.gg = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gg, i64 %i.fl
  store i8 %i.gf, ptr %i.gh, align 1, !tbaa !29
  %i.gi = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.fl ; 2 uses
  %i.gk = load i8, ptr %i.gj, align 1, !tbaa !29
  %i.gl = shl i8 %i.gk, 4
  store i8 %i.gl, ptr %i.gj, align 1, !tbaa !29
  %i.gm = add nuw nsw i32 %.0178241.i, 1
  %i.gn = add nsw i32 %i.dc, -1
  %i.go = zext nneg i32 %i.gm to i64              ; 3 uses
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.go
  store i32 %i.gn, ptr %i.gp, align 4, !tbaa !35
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.go
  store i32 %.0183240.i, ptr %i.gq, align 4, !tbaa !35
  %i.gr = trunc nuw nsw i32 %5 to i8
  %i.gs = or disjoint i8 %i.gr, 12
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae, %bb.ac
  %.sink307.i = phi i64 [ %i.fe, %bb.ae ], [ %i.go, %bb.ah ], [ %i.fy, %bb.ag ], [ %i.el, %bb.ac ] ; 2 uses
  %.sink304.i = phi i8 [ %i.fk, %bb.ae ], [ %i.gs, %bb.ah ], [ %i.gd, %bb.ag ], [ %i.er, %bb.ac ]
  %.sink.i = phi i32 [ 2, %bb.ae ], [ 2, %bb.ah ], [ 2, %bb.ag ], [ 1, %bb.ac ]
  %i.gt = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 %.sink307.i
  store i8 %.sink304.i, ptr %i.gu, align 1, !tbaa !29
  %i.gv = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sink307.i ; 2 uses
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !29
  %i.gy = shl i8 %i.gx, 4
  store i8 %i.gy, ptr %i.gw, align 1, !tbaa !29
  %i.gz = add nuw nsw i32 %.sink.i, %.0178241.i
  %i.ha = add i32 %.0183240.i, 1
  br label %.preheader224.i

.thread.i:                                        ; preds = %circ_next.exit.3.i, %circ_next.exit.2.i, %circ_next.exit.1.i, %circ_next.exit.i
  %i.hb = mul nuw nsw i32 %spec.store.select, 723 ; 2 uses
  %i.hc = lshr i32 %i.hb, 10                      ; 4 uses
  %i.hd = add nsw i32 %.0178241.i, -1
  %i.he = sext i32 %i.hd to i64                   ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.he
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !35
  %.not200.i = icmp eq i32 %i.hg, %i.hc
  br i1 %.not200.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %.thread.i
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.co, i64 %i.he
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !35
  %.not201.i = icmp eq i32 %i.hi, %i.hc
  br i1 %.not201.i, label %bb.ao, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.thread.i
  %i.hj = and i32 %i.hb, 1023                     ; 4 uses
  %i.hk = icmp samesign ult i32 %i.hj, 513
  br i1 %i.hk, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.hl = mul nuw nsw i32 %i.hj, %i.hj
  %i.hm = lshr i32 %i.hl, 15
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.hn = sub nuw nsw i32 1024, %i.hj             ; 2 uses
  %i.ho = mul nuw nsw i32 %i.hn, %i.hn
  %i.hp = lshr i32 %i.ho, 15
  %i.hq = sub nuw nsw i32 15, %i.hp
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0177.i = phi i32 [ %i.hm, %bb.al ], [ %i.hq, %bb.am ]
  %i.hr = zext nneg i32 %.0178241.i to i64        ; 4 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.hr
  store i32 %i.hc, ptr %i.hs, align 4, !tbaa !35
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.hr
  store i32 %i.hc, ptr %i.ht, align 4, !tbaa !35
  %i.hu = trunc nuw nsw i32 %.0177.i to i8
  %i.hv = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hr
  store i8 %i.hu, ptr %i.hw, align 1, !tbaa !29
  %i.hx = load ptr, ptr %i.bt, align 8, !tbaa !19
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 %i.hr ; 2 uses
  %i.hz = load i8, ptr %i.hy, align 1, !tbaa !29
  %i.ia = shl i8 %i.hz, 4
  store i8 %i.ia, ptr %i.hy, align 1, !tbaa !29
  %i.ib = add nuw nsw i32 %.0178241.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.aj
  %.2.i = phi i32 [ %i.ib, %bb.an ], [ %.0178241.i, %bb.aj ] ; 4 uses
  %i.ic = icmp sgt i32 %.2.i, 1
  br i1 %i.ic, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.ao
  %i.id = add nsw i32 %.2.i, -2                   ; 2 uses
  %i.ie = zext nneg i32 %.2.i to i64              ; 5 uses
  %i.if = zext i32 %i.id to i64                   ; 6 uses
  %i.ig = and i64 %i.if, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ig, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph.i.prol, label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol:                                    ; preds = %.lr.ph.preheader.i
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.if
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !35
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.ie
  store i32 %i.ii, ptr %i.ij, align 4, !tbaa !35
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %i.if
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !35
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.ie
  store i32 %i.il, ptr %i.im, align 4, !tbaa !35
  %i.in = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.if
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !29
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 %i.ie
  store i8 %i.ip, ptr %i.iq, align 1, !tbaa !29
  %indvars.iv.next262.i.prol = add nsw i64 %i.if, -1
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.ie, 1 ; 2 uses
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.preheader.i
  %indvars.iv.next.i.lcssa.unr = phi i64 [ poison, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %indvars.iv261.i.unr = phi i64 [ %i.if, %.lr.ph.preheader.i ], [ %indvars.iv.next262.i.prol, %.lr.ph.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %i.ie, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.prol, %.lr.ph.i.prol ]
  %i.ir = icmp eq i32 %i.id, 0
  br i1 %i.ir, label %._crit_edge.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %indvars.iv261.i = phi i64 [ %indvars.iv.next262.i.1, %.lr.ph.i ], [ %indvars.iv261.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i ], [ %indvars.iv.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv261.i
  %i.it = load i32, ptr %i.is, align 4, !tbaa !35
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i
  store i32 %i.it, ptr %i.iu, align 4, !tbaa !35
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv261.i
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !35
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i
  store i32 %i.iw, ptr %i.ix, align 4, !tbaa !35
  %i.iy = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 %indvars.iv261.i
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !29
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iy, i64 %indvars.iv.i
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !29
  %indvars.iv.next262.i = add nsw i64 %indvars.iv261.i, -1 ; 4 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next262.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !35
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next.i
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !35
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.next262.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !35
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.next.i
  store i32 %i.jg, ptr %i.jh, align 4, !tbaa !35
  %i.ji = load ptr, ptr %i.bt, align 8, !tbaa !19 ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next262.i
  %i.jk = load i8, ptr %i.jj, align 1, !tbaa !29
  %i.jl = getelementptr inbounds nuw i8, ptr %i.ji, i64 %indvars.iv.next.i
  store i8 %i.jk, ptr %i.jl, align 1, !tbaa !29
  %indvars.iv.next262.i.1 = add nsw i64 %indvars.iv261.i, -2
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %.not308.i.1 = icmp eq i64 %indvars.iv.next262.i, 0
  br i1 %.not308.i.1, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !68

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i, %.lr.ph.i.prol.loopexit
  %indvars.iv.next.i.lcssa = phi i64 [ %indvars.iv.next.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %indvars.iv.next.i.1, %.lr.ph.i ]
  %i.jm = trunc nuw nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %bb.ao
  %.3.lcssa.i = phi i32 [ %.2.i, %bb.ao ], [ %i.jm, %._crit_edge.loopexit.i ] ; 3 uses
  %i.jn = load ptr, ptr %i.by, align 8, !tbaa !37 ; 2 uses
  store i16 0, ptr %i.jn, align 2, !tbaa !39
  %i.jo = icmp sgt i32 %.3.lcssa.i, 0
  br i1 %i.jo, label %.lr.ph251.i, label %._crit_edge252.i

.lr.ph251.i:                                      ; preds = %._crit_edge.i
  %i.jp = load ptr, ptr %i.cd, align 8, !tbaa !38
  %i.jq = zext nneg i32 %.3.lcssa.i to i64
  br label %bb.ap

bb.ap:                                            ; preds = %.critedge.i, %.lr.ph251.i
  %indvars.iv269.i = phi i64 [ 0, %.lr.ph251.i ], [ %indvars.iv.next270.i, %.critedge.i ] ; 4 uses
  %.2181248.i = phi i32 [ 0, %.lr.ph251.i ], [ %i.kj, %.critedge.i ] ; 2 uses
  %i.jr = trunc i32 %.2181248.i to i16
  %i.js = getelementptr inbounds nuw [2 x i8], ptr %i.jn, i64 %indvars.iv269.i
  store i16 %i.jr, ptr %i.js, align 2, !tbaa !39
  %i.jt = sext i32 %.2181248.i to i64             ; 2 uses
  %i.ju = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.jt
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !35 ; 2 uses
  %i.jw = trunc i32 %i.jv to i16
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr %i.jp, i64 %indvars.iv269.i ; 2 uses
  store i16 %i.jw, ptr %i.jx, align 2, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ar, %bb.ap
  %i.jy = phi i32 [ %i.jv, %bb.ap ], [ %i.kg, %bb.ar ]
  %indvars.iv266.i = phi i64 [ %i.jt, %bb.ap ], [ %indvars.iv.next267.i, %bb.ar ] ; 4 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %i.co, i64 %indvars.iv266.i
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !35
  %i.kb = zext i32 %i.ka to i64
  %i.kc = icmp eq i64 %indvars.iv269.i, %i.kb
  br i1 %i.kc, label %bb.ar, label %.critedge.i

bb.ar:                                            ; preds = %bb.aq
  %i.kd = and i32 %i.jy, 65535
  %i.ke = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %indvars.iv266.i
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !35
  %i.kg = tail call i32 @llvm.smin.i32(i32 %i.kf, i32 %i.kd) ; 2 uses
  %i.kh = trunc i32 %i.kg to i16
  store i16 %i.kh, ptr %i.jx, align 2, !tbaa !39
  %indvars.iv.next267.i = add nsw i64 %indvars.iv266.i, 1 ; 2 uses
  %i.ki = icmp slt i64 %indvars.iv.next267.i, %i.jq
  br i1 %i.ki, label %bb.aq, label %._crit_edge252.i, !llvm.loop !69

.critedge.i:                                      ; preds = %bb.aq
  %i.kj = trunc nsw i64 %indvars.iv266.i to i32   ; 2 uses
  %indvars.iv.next270.i = add nuw nsw i64 %indvars.iv269.i, 1
  %i.kk = icmp sgt i32 %.3.lcssa.i, %i.kj
end_hunk_0
