Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/ir_ra?download=true
inline.NumInlined: 87
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ir_coalesce:bb.a
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bw = getelementptr i8, ptr %0, i64 232
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 4 uses
  br label %bb.j

.loopexit443:                                     ; preds = %ir_add_phi_move.exit, %ir_phi_input_number.exit
  %.1319.lcssa = phi i1 [ %.0318495, %ir_phi_input_number.exit ], [ %.8, %ir_add_phi_move.exit ] ; 2 uses
  %.not357.wide = icmp eq i64 %i.bz, 0
  br i1 %.not357.wide, label %._crit_edge498, label %bb.j, !llvm.loop !146

bb.j:                                             ; preds = %.lr.ph497, %.loopexit443
  %indvars.iv548 = phi i64 [ %i.br, %.lr.ph497 ], [ %i.bz, %.loopexit443 ]
  %.0318495 = phi i1 [ false, %.lr.ph497 ], [ %.1319.lcssa, %.loopexit443 ] ; 2 uses
  %i.bz = add nsw i64 %indvars.iv548, -1          ; 3 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.bz
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !140 ; 2 uses
  %i.cc = load ptr, ptr %i.k, align 8, !tbaa !34  ; 2 uses
  %i.cd = zext i32 %i.cb to i64                   ; 3 uses
  %i.ce = getelementptr inbounds nuw [52 x i8], ptr %i.cc, i64 %i.cd
  %i.cf = load ptr, ptr %i.bs, align 8, !tbaa !75 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !88
  %i.ci = zext i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.ci
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !40
  %i.cl = zext i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [52 x i8], ptr %i.cc, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !74 ; 2 uses
  %.not520 = icmp eq i32 %i.co, 0
  br i1 %.not520, label %ir_phi_input_number.exit, label %.lr.ph486.preheader

.lr.ph486.preheader:                              ; preds = %bb.j
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cm, i64 20
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !76
  %i.cr = zext i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %i.cr
  br label %.lr.ph486

.lr.ph486:                                        ; preds = %.lr.ph486.preheader, %bb.l
  %.0.i484 = phi ptr [ %i.cx, %bb.l ], [ %i.cs, %.lr.ph486.preheader ] ; 2 uses
  %.09.i483 = phi i32 [ %i.cy, %bb.l ], [ 0, %.lr.ph486.preheader ] ; 2 uses
  %i.ct = load i32, ptr %.0.i484, align 4, !tbaa !40
  %i.cu = icmp eq i32 %i.ct, %i.cb
  br i1 %i.cu, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph486
  %i.cv = add i32 %.09.i483, 2
  %i.cw = sext i32 %i.cv to i64
  br label %ir_phi_input_number.exit

bb.l:                                             ; preds = %.lr.ph486
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.i484, i64 4
  %i.cy = add nuw i32 %.09.i483, 1                ; 2 uses
  %exitcond547.not = icmp eq i32 %i.cy, %i.co
  br i1 %exitcond547.not, label %ir_phi_input_number.exit, label %.lr.ph486, !llvm.loop !89

ir_phi_input_number.exit:                         ; preds = %bb.l, %bb.j, %bb.k
  %.010.i = phi i64 [ %i.cw, %bb.k ], [ 0, %bb.j ], [ 0, %bb.l ]
  %i.cz = load ptr, ptr %i.bt, align 8, !tbaa !41
  %i.da = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.db = load i32, ptr %i.da, align 4, !tbaa !36
  %i.dc = sext i32 %i.db to i64
  %i.dd = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.dc ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !42 ; 2 uses
  %.not376487 = icmp eq i32 %i.df, 0
  br i1 %.not376487, label %.loopexit443, label %.lr.ph491.preheader

.lr.ph491.preheader:                              ; preds = %ir_phi_input_number.exit
  %i.dg = load ptr, ptr %i.bu, align 8, !tbaa !66
  %i.dh = load i32, ptr %i.dd, align 4, !tbaa !67
  %i.di = sext i32 %i.dh to i64
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %i.di
  br label %.lr.ph491

.lr.ph491:                                        ; preds = %.lr.ph491.preheader, %ir_add_phi_move.exit
  %.1319490 = phi i1 [ %.8, %ir_add_phi_move.exit ], [ %.0318495, %.lr.ph491.preheader ] ; 6 uses
  %.1325489 = phi ptr [ %i.hc, %ir_add_phi_move.exit ], [ %i.dj, %.lr.ph491.preheader ] ; 2 uses
  %.1332488 = phi i32 [ %i.hd, %ir_add_phi_move.exit ], [ %i.df, %.lr.ph491.preheader ]
  %i.dk = load i32, ptr %.1325489, align 4, !tbaa !40 ; 5 uses
  %i.dl = load ptr, ptr %0, align 8, !tbaa !35    ; 2 uses
  %i.dm = sext i32 %i.dk to i64                   ; 3 uses
  %i.dn = getelementptr inbounds [16 x i8], ptr %i.dl, i64 %i.dm ; 2 uses
  %i.do = load i8, ptr %i.dn, align 8, !tbaa !38
  %i.dp = icmp eq i8 %i.do, 63
  br i1 %i.dp, label %bb.m, label %ir_add_phi_move.exit

bb.m:                                             ; preds = %.lr.ph491
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.dn, i64 %.010.i
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !40 ; 7 uses
  %i.ds = icmp sgt i32 %i.dr, 0
  br i1 %i.ds, label %bb.n, label %bb.ak

bb.n:                                             ; preds = %bb.m
  %i.dt = load ptr, ptr %i.bv, align 8, !tbaa !49 ; 3 uses
  %i.du = zext nneg i32 %i.dr to i64              ; 3 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.dt, i64 %i.du ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !40 ; 5 uses
  %.not377 = icmp eq i32 %i.dw, 0
  br i1 %.not377, label %.thread435, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dm ; 2 uses
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !40 ; 4 uses
  %i.dz = icmp eq i32 %i.dw, %i.dy
  br i1 %i.dz, label %ir_add_phi_move.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %.val392 = load ptr, ptr %i.bw, align 8, !tbaa !52 ; 2 uses
  %i.ea = zext i32 %i.dw to i64
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %.val392, i64 %i.ea
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !79 ; 2 uses
  %i.ed = zext i32 %i.dy to i64
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %.val392, i64 %i.ed
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !79 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ec, i64 16 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16 ; 3 uses
  br label %.outer733

.outer733:                                        ; preds = %bb.t, %bb.p
  %.012.i.i.ph = phi ptr [ %i.et, %bb.t ], [ %i.eg, %bb.p ] ; 3 uses
  %.0.i.i.ph = phi ptr [ %.0.i.i, %bb.t ], [ %i.eh, %bb.p ]
  %i.ei = getelementptr inbounds nuw i8, ptr %.012.i.i.ph, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !119
  br label %bb.q

bb.q:                                             ; preds = %.outer733, %bb.s
  %.0.i.i = phi ptr [ %i.er, %bb.s ], [ %.0.i.i.ph, %.outer733 ] ; 4 uses
  %i.ek = load i32, ptr %.0.i.i, align 8, !tbaa !118 ; 2 uses
  %i.el = icmp slt i32 %i.ek, %i.ej
  br i1 %i.el, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.em = load i32, ptr %.012.i.i.ph, align 8, !tbaa !118 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 4
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !119
  %i.ep = icmp slt i32 %i.em, %i.eo
  br i1 %i.ep, label %ir_vregs_overlap.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !117 ; 2 uses
  %.not19.i.i = icmp eq ptr %i.er, null
  br i1 %.not19.i.i, label %ir_vregs_overlap.exit.thread, label %bb.q

bb.t:                                             ; preds = %bb.q
  %i.es = getelementptr inbounds nuw i8, ptr %.012.i.i.ph, i64 8
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !117 ; 2 uses
  %.not.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i.i, label %ir_vregs_overlap.exit.thread, label %.outer733

ir_vregs_overlap.exit:                            ; preds = %bb.r
  %..i.i = tail call i32 @llvm.smax.i32(i32 %i.em, i32 %i.ek)
  %.not378 = icmp eq i32 %..i.i, 0
  br i1 %.not378, label %ir_vregs_overlap.exit.thread, label %bb.u

ir_vregs_overlap.exit.thread:                     ; preds = %bb.s, %bb.t, %ir_vregs_overlap.exit
  tail call fastcc void @ir_vregs_coalesce(ptr noundef nonnull %0, i32 noundef %i.dw, i32 noundef %i.dy, i32 noundef %i.dr, i32 noundef %i.dk)
  br label %ir_add_phi_move.exit

bb.u:                                             ; preds = %ir_vregs_overlap.exit
  %i.eu = load ptr, ptr %i.bx, align 8, !tbaa !12 ; 2 uses
  %.not379 = icmp eq ptr %i.eu, null
  br i1 %.not379, label %.thread431, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.eu, i64 %i.du
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !40
  %i.ex = and i32 %i.ew, 134217728
  %.not380 = icmp eq i32 %i.ex, 0
  br i1 %.not380, label %.thread431, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = getelementptr inbounds nuw [16 x i8], ptr %i.dl, i64 %i.du ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !38
  %i.fb = icmp eq i32 %i.fa, %i.dk
  br i1 %i.fb, label %bb.x, label %.thread431

bb.x:                                             ; preds = %bb.w
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !38
  %.not381 = icmp eq i32 %i.fd, %i.dk
  br i1 %.not381, label %.thread431, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !97
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 3
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !94
  %i.fi = and i8 %i.fh, 4
  %.not382 = icmp eq i8 %i.fi, 0
  br i1 %.not382, label %.thread431, label %.preheader442

.preheader442:                                    ; preds = %bb.y
  %i.fj = shl nsw i32 %i.dr, 2                    ; 3 uses
  %i.fk = or disjoint i32 %i.fj, 1                ; 3 uses
  br label %bb.z

bb.z:                                             ; preds = %.preheader442, %bb.aa
  %.0316 = phi ptr [ %i.fp, %bb.aa ], [ %i.eh, %.preheader442 ] ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.0316, i64 4
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !119
  %i.fn = icmp eq i32 %i.fm, %i.fk
  br i1 %i.fn, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fo = getelementptr inbounds nuw i8, ptr %.0316, i64 8
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !117 ; 2 uses
  %.not383 = icmp eq ptr %i.fp, null
  br i1 %.not383, label %.thread431, label %bb.z, !llvm.loop !147

bb.ab:                                            ; preds = %bb.z
  %i.fq = getelementptr inbounds nuw i8, ptr %.0316, i64 4 ; 2 uses
  store i32 %i.fj, ptr %i.fq, align 4, !tbaa !119
  %i.fr = getelementptr inbounds nuw i8, ptr %.0316, i64 8
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !117
  %.not385 = icmp eq ptr %i.fs, null              ; 2 uses
  br i1 %.not385, label %bb.ac, label %.preheader730

bb.ac:                                            ; preds = %bb.ab
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %i.fj, ptr %i.ft, align 4, !tbaa !109
  br label %.preheader730

.preheader730:                                    ; preds = %bb.ac, %bb.ab
  br label %.outer731

.outer731:                                        ; preds = %.preheader730, %bb.ag
  %.012.i.i394.ph = phi ptr [ %i.eg, %.preheader730 ], [ %i.gf, %bb.ag ] ; 3 uses
  %.0.i.i395.ph = phi ptr [ %i.eh, %.preheader730 ], [ %.0.i.i395, %bb.ag ]
  %i.fu = getelementptr inbounds nuw i8, ptr %.012.i.i394.ph, i64 4
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !119
  br label %bb.ad

bb.ad:                                            ; preds = %.outer731, %bb.af
  %.0.i.i395 = phi ptr [ %i.gd, %bb.af ], [ %.0.i.i395.ph, %.outer731 ] ; 4 uses
  %i.fw = load i32, ptr %.0.i.i395, align 8, !tbaa !118 ; 2 uses
  %i.fx = icmp slt i32 %i.fw, %i.fv
  br i1 %i.fx, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.fy = load i32, ptr %.012.i.i394.ph, align 8, !tbaa !118 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0.i.i395, i64 4
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !119
  %i.gb = icmp slt i32 %i.fy, %i.ga
  br i1 %i.gb, label %ir_vregs_overlap.exit402, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gc = getelementptr inbounds nuw i8, ptr %.0.i.i395, i64 8
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !117 ; 2 uses
  %.not19.i.i400 = icmp eq ptr %i.gd, null
  br i1 %.not19.i.i400, label %ir_vregs_overlap.exit402.thread, label %bb.ad

bb.ag:                                            ; preds = %bb.ad
  %i.ge = getelementptr inbounds nuw i8, ptr %.012.i.i394.ph, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !117 ; 2 uses
  %.not.i.i396 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i396, label %ir_vregs_overlap.exit402.thread, label %.outer731

ir_vregs_overlap.exit402:                         ; preds = %bb.ae
  %..i.i401 = tail call i32 @llvm.smax.i32(i32 %i.fy, i32 %i.fw)
  %.not386 = icmp eq i32 %..i.i401, 0
  br i1 %.not386, label %ir_vregs_overlap.exit402.thread, label %bb.ah

bb.ah:                                            ; preds = %ir_vregs_overlap.exit402
  store i32 %i.fk, ptr %i.fq, align 4, !tbaa !119
  br i1 %.not385, label %bb.ai, label %.thread431

bb.ai:                                            ; preds = %bb.ah
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ef, i64 12
  store i32 %i.fk, ptr %i.gg, align 4, !tbaa !109
  br label %.thread431

ir_vregs_overlap.exit402.thread:                  ; preds = %bb.af, %bb.ag, %ir_vregs_overlap.exit402
  tail call fastcc void @ir_swap_operands(ptr noundef %0, i32 noundef %i.dr, ptr noundef nonnull %i.ey)
  tail call fastcc void @ir_vregs_coalesce(ptr noundef %0, i32 noundef %i.dw, i32 noundef %i.dy, i32 noundef %i.dr, i32 noundef %i.dk)
  br label %ir_add_phi_move.exit

.thread431:                                       ; preds = %bb.aa, %bb.u, %bb.v, %bb.w, %bb.y, %bb.x, %bb.ai, %bb.ah
  %i.gh = load i32, ptr %i.dv, align 4, !tbaa !40
  %i.gi = load i32, ptr %i.dx, align 4, !tbaa !40
  %.not.i = icmp eq i32 %i.gh, %i.gi
  br i1 %.not.i, label %ir_add_phi_move.exit, label %bb.aj

bb.aj:                                            ; preds = %.thread431
  %i.gj = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.gk = getelementptr inbounds nuw [52 x i8], ptr %i.gj, i64 %i.cd ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !73
  %i.gm = and i32 %i.gl, -97
  %i.gn = or disjoint i32 %i.gm, 32
  store i32 %i.gn, ptr %i.gk, align 4, !tbaa !73
  %i.go = load i32, ptr %i.by, align 4, !tbaa !50
  %i.gp = or i32 %i.go, 33554432
  store i32 %i.gp, ptr %i.by, align 4, !tbaa !50
  br label %ir_add_phi_move.exit

bb.ak:                                            ; preds = %bb.m
  %i.gq = icmp slt i32 %i.dr, 0
  br i1 %i.gq, label %bb.al, label %..thread435_crit_edge

..thread435_crit_edge:                            ; preds = %bb.ak
  %.pre = load ptr, ptr %i.bv, align 8, !tbaa !49 ; 2 uses
  %.pre570 = load i32, ptr %.pre, align 4, !tbaa !40
  br label %.thread435

.thread435:                                       ; preds = %..thread435_crit_edge, %bb.n
  %i.gr = phi i32 [ %.pre570, %..thread435_crit_edge ], [ 0, %bb.n ]
  %i.gs = phi ptr [ %.pre, %..thread435_crit_edge ], [ %i.dt, %bb.n ]
  %i.gt = getelementptr inbounds [4 x i8], ptr %i.gs, i64 %i.dm
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !40
  %.not.i403 = icmp eq i32 %i.gr, %i.gu
  br i1 %.not.i403, label %ir_add_phi_move.exit, label %bb.al

bb.al:                                            ; preds = %.thread435, %bb.ak
  %i.gv = load ptr, ptr %i.k, align 8, !tbaa !34
  %i.gw = getelementptr inbounds nuw [52 x i8], ptr %i.gv, i64 %i.cd ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !73
  %i.gy = and i32 %i.gx, -97
  %i.gz = or disjoint i32 %i.gy, 32
  store i32 %i.gz, ptr %i.gw, align 4, !tbaa !73
  %i.ha = load i32, ptr %i.by, align 4, !tbaa !50
  %i.hb = or i32 %i.ha, 33554432
  store i32 %i.hb, ptr %i.by, align 4, !tbaa !50
  br label %ir_add_phi_move.exit

ir_add_phi_move.exit:                             ; preds = %bb.al, %.thread435, %bb.aj, %.thread431, %ir_vregs_overlap.exit402.thread, %ir_vregs_overlap.exit.thread, %bb.o, %.lr.ph491
  %.8 = phi i1 [ %.1319490, %.lr.ph491 ], [ %.1319490, %bb.aj ], [ true, %ir_vregs_overlap.exit402.thread ], [ %.1319490, %bb.o ], [ true, %ir_vregs_overlap.exit.thread ], [ %.1319490, %.thread431 ], [ %.1319490, %.thread435 ], [ %.1319490, %bb.al ] ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.1325489, i64 4
  %i.hd = add i32 %.1332488, -1                   ; 2 uses
  %.not376 = icmp eq i32 %i.hd, 0
  br i1 %.not376, label %.loopexit443, label %.lr.ph491, !llvm.loop !148

._crit_edge498:                                   ; preds = %.loopexit443, %._crit_edge
  %.0318.lcssa = phi i1 [ false, %._crit_edge ], [ %.1319.lcssa, %.loopexit443 ] ; 3 uses
  tail call void @_efree(ptr noundef %i.e) #19
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 5 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !48 ; 2 uses
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph29.i, label %ir_hint_propagation.exit

.lr.ph29.i:                                       ; preds = %._crit_edge498
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !52 ; 2 uses
  %i.hj = getelementptr i8, ptr %0, i64 168
  %i.hk = zext nneg i32 %i.hf to i64
  br label %bb.am

bb.am:                                            ; preds = %.loopexit.i, %.lr.ph29.i
  %indvars.iv.i = phi i64 [ %i.hk, %.lr.ph29.i ], [ %indvars.iv.next.i, %.loopexit.i ] ; 3 uses
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hi, i64 %indvars.iv.i
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !79 ; 3 uses
  %.not.i405 = icmp eq ptr %i.hm, null
  br i1 %.not.i405, label %.loopexit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 2
  %i.ho = load i16, ptr %i.hn, align 2, !tbaa !108
  %i.hp = and i16 %i.ho, 12
  %i.hq = icmp eq i16 %i.hp, 12
  br i1 %i.hq, label %bb.ao, label %.loopexit.i

bb.ao:                                            ; preds = %bb.an
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hm, i64 40
  %.01924.i = load ptr, ptr %i.hr, align 8, !tbaa !149 ; 2 uses
  %.not2225.i = icmp eq ptr %.01924.i, null
  br i1 %.not2225.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ao, %ir_add_hint.exit.i
  %.01927.i = phi ptr [ %.019.i, %ir_add_hint.exit.i ], [ %.01924.i, %bb.ao ] ; 5 uses
  %.026.i = phi ptr [ %.1.i, %ir_add_hint.exit.i ], [ null, %bb.ao ] ; 5 uses
  %i.hs = load i16, ptr %.01927.i, align 8, !tbaa !91
  %i.ht = icmp eq i16 %i.hs, 0
  br i1 %i.ht, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph.i
  %i.hu = getelementptr inbounds nuw i8, ptr %.01927.i, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !95
  %i.hw = icmp sgt i32 %i.hv, 0
  %spec.select.i = select i1 %i.hw, ptr %.01927.i, ptr %.026.i
  br label %ir_add_hint.exit.i

bb.aq:                                            ; preds = %.lr.ph.i
  %i.hx = getelementptr inbounds nuw i8, ptr %.01927.i, i64 2
  %i.hy = load i8, ptr %i.hx, align 2, !tbaa !93  ; 2 uses
  %i.hz = icmp ne i8 %i.hy, -1
  %i.ia = icmp ne ptr %.026.i, null
  %or.cond.i = select i1 %i.hz, i1 %i.ia, i1 false
  br i1 %or.cond.i, label %bb.ar, label %ir_add_hint.exit.i

bb.ar:                                            ; preds = %bb.aq
  %i.ib = getelementptr inbounds nuw i8, ptr %.026.i, i64 4
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !95
  %i.id = getelementptr inbounds nuw i8, ptr %.026.i, i64 8
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !96
  %.val.i = load ptr, ptr %i.hj, align 8, !tbaa !49
end_hunk_0
begin_hunk_1_@ir_coalesce:bb.a
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !12 ; 2 uses
  %.not358 = icmp eq ptr %i.jc, null
  br i1 %.not358, label %.loopexit, label %.preheader441

.preheader441:                                    ; preds = %ir_hint_propagation.exit
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.je = load i32, ptr %i.jd, align 8, !tbaa !32
  %i.jf = icmp sgt i32 %i.je, 1
  br i1 %i.jf, label %.lr.ph506, label %.loopexit

.lr.ph506:                                        ; preds = %.preheader441
  %i.jg = getelementptr i8, ptr %0, i64 232       ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 88
  br label %bb.aw

bb.aw:                                            ; preds = %.lr.ph506, %ir_try_swap_operands.exit
  %indvars.iv550 = phi i64 [ 1, %.lr.ph506 ], [ %indvars.iv.next551, %ir_try_swap_operands.exit ] ; 12 uses
  %.pn = phi ptr [ %i.jc, %.lr.ph506 ], [ %.0313505, %ir_try_swap_operands.exit ]
  %.9502 = phi i1 [ %.0318.lcssa, %.lr.ph506 ], [ %.10, %ir_try_swap_operands.exit ] ; 22 uses
  %.0313505 = getelementptr inbounds nuw i8, ptr %.pn, i64 4 ; 2 uses
  %i.jk = load i32, ptr %.0313505, align 4, !tbaa !40 ; 2 uses
  %i.jl = and i32 %i.jk, 201326592
  %.not366 = icmp eq i32 %i.jl, 0
  br i1 %.not366, label %ir_try_swap_operands.exit, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.jm = load ptr, ptr %0, align 8, !tbaa !35
  %i.jn = getelementptr inbounds nuw [16 x i8], ptr %i.jm, i64 %indvars.iv550 ; 4 uses
  %i.jo = and i32 %i.jk, 134217728
  %.not367 = icmp eq i32 %i.jo, 0
  br i1 %.not367, label %bb.cd, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jp = load ptr, ptr %i.jg, align 8, !tbaa !52 ; 9 uses
  %i.jq = load ptr, ptr %i.jh, align 8, !tbaa !49 ; 4 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %indvars.iv550 ; 2 uses
  %i.js = load i32, ptr %i.jr, align 4, !tbaa !40 ; 4 uses
  %i.jt = zext i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.jt
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !79 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !97 ; 2 uses
  %.not373 = icmp eq ptr %i.jx, null
  br i1 %.not373, label %ir_try_swap_operands.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 3
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !94
  %i.ka = and i8 %i.jz, 4
  %.not374 = icmp eq i8 %i.ka, 0
  br i1 %.not374, label %ir_try_swap_operands.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jn, i64 8 ; 2 uses
  %i.kc = load i32, ptr %i.kb, align 8, !tbaa !38 ; 3 uses
  %i.kd = icmp sgt i32 %i.kc, 0
  br i1 %i.kd, label %bb.bb, label %ir_try_swap_operands.exit

bb.bb:                                            ; preds = %bb.ba
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jn, i64 4
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !38 ; 3 uses
  %i.kg = icmp slt i32 %i.kf, 1
  %.not375 = icmp eq i32 %i.kf, %i.kc
  %or.cond = or i1 %i.kg, %.not375
  br i1 %or.cond, label %ir_try_swap_operands.exit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.kh = zext nneg i32 %i.kf to i64
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.kh
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !40 ; 4 uses
  %.not.i408 = icmp eq i32 %i.kj, 0
  %.not67.i = icmp eq i32 %i.kj, %i.js
  %or.cond672 = or i1 %.not.i408, %.not67.i
  br i1 %or.cond672, label %bb.bl, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.kk = zext i32 %i.kj to i64
  %i.kl = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.kk
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !79
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 16
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jv, i64 16
  br label %.outer706

.outer706:                                        ; preds = %bb.bh, %bb.bd
  %.012.i.i.i.ph = phi ptr [ %i.la, %bb.bh ], [ %i.kn, %bb.bd ] ; 3 uses
  %.0.i.i.i.ph = phi ptr [ %.0.i.i.i, %bb.bh ], [ %i.ko, %bb.bd ]
  %i.kp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.ph, i64 4
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !119
  br label %bb.be

bb.be:                                            ; preds = %.outer706, %bb.bg
  %.0.i.i.i = phi ptr [ %i.ky, %bb.bg ], [ %.0.i.i.i.ph, %.outer706 ] ; 4 uses
  %i.kr = load i32, ptr %.0.i.i.i, align 8, !tbaa !118 ; 2 uses
  %i.ks = icmp slt i32 %i.kr, %i.kq
  br i1 %i.ks, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.kt = load i32, ptr %.012.i.i.i.ph, align 8, !tbaa !118 ; 2 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 4
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !119
  %i.kw = icmp slt i32 %i.kt, %i.kv
  br i1 %i.kw, label %ir_vregs_overlap.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.kx = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !117 ; 2 uses
  %.not19.i.i.i = icmp eq ptr %i.ky, null
  br i1 %.not19.i.i.i, label %ir_vregs_overlap.exit.thread.i, label %bb.be

bb.bh:                                            ; preds = %bb.be
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.ph, i64 8
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !117 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i, label %ir_vregs_overlap.exit.thread.i, label %.outer706

ir_vregs_overlap.exit.i:                          ; preds = %bb.bf
  %..i.i.i = tail call i32 @llvm.smax.i32(i32 %i.kt, i32 %i.kr)
  %.not68.i = icmp eq i32 %..i.i.i, 0
  br i1 %.not68.i, label %ir_vregs_overlap.exit.thread.i, label %bb.bl

ir_vregs_overlap.exit.thread.i:                   ; preds = %bb.bg, %bb.bh, %ir_vregs_overlap.exit.i
  %i.lb = sext i32 %i.kj to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !79
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  %.0221.i.i = load ptr, ptr %i.le, align 8, !tbaa !149 ; 2 uses
  %.not2.i.i = icmp eq ptr %.0221.i.i, null
  br i1 %.not2.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i409

.lr.ph.i.i409:                                    ; preds = %ir_vregs_overlap.exit.thread.i, %bb.bi
  %.0224.i.i = phi ptr [ %.022.i.i, %bb.bi ], [ %.0221.i.i, %ir_vregs_overlap.exit.thread.i ] ; 3 uses
  %.0213.i.i = phi i8 [ %spec.select.i.i, %bb.bi ], [ -1, %ir_vregs_overlap.exit.thread.i ] ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %.0224.i.i, i64 8
  %i.lg = load i32, ptr %i.lf, align 8, !tbaa !96
  %i.lh = sdiv i32 %i.lg, 4
  %i.li = zext i32 %i.lh to i64
  %i.lj = icmp eq i64 %indvars.iv550, %i.li
  br i1 %i.lj, label %._crit_edge.i.i, label %bb.bi

bb.bi:                                            ; preds = %.lr.ph.i.i409
  %i.lk = getelementptr inbounds nuw i8, ptr %.0224.i.i, i64 2
  %i.ll = load i8, ptr %i.lk, align 2, !tbaa !93  ; 2 uses
  %.not25.i.i = icmp eq i8 %i.ll, -1
  %spec.select.i.i = select i1 %.not25.i.i, i8 %.0213.i.i, i8 %i.ll ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %.0224.i.i, i64 16
  %.022.i.i = load ptr, ptr %i.lm, align 8, !tbaa !149 ; 2 uses
  %.not.i.i410 = icmp eq ptr %.022.i.i, null
  br i1 %.not.i.i410, label %._crit_edge.i.i, label %.lr.ph.i.i409, !llvm.loop !153

._crit_edge.i.i:                                  ; preds = %bb.bi, %.lr.ph.i.i409, %ir_vregs_overlap.exit.thread.i
  %.021.lcssa.i.i = phi i8 [ -1, %ir_vregs_overlap.exit.thread.i ], [ %.0213.i.i, %.lr.ph.i.i409 ], [ %spec.select.i.i, %bb.bi ] ; 2 uses
  %i.ln = sext i32 %i.js to i64
  %i.lo = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ln
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !79
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lp, i64 40
  %.1237.i.i = load ptr, ptr %i.lq, align 8, !tbaa !149 ; 2 uses
  %.not268.i.i = icmp eq ptr %.1237.i.i, null
  br i1 %.not268.i.i, label %ir_try_swap_operands.exit, label %.lr.ph11.i.i

.lr.ph11.i.i:                                     ; preds = %._crit_edge.i.i, %bb.bk
  %.1239.i.i = phi ptr [ %.123.i.i, %bb.bk ], [ %.1237.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.lr = getelementptr inbounds nuw i8, ptr %.1239.i.i, i64 8
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !96
  %i.lt = sdiv i32 %i.ls, 4
  %i.lu = sext i32 %i.lt to i64
  %i.lv = icmp slt i64 %indvars.iv550, %i.lu
  br i1 %i.lv, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph11.i.i
  %i.lw = getelementptr inbounds nuw i8, ptr %.1239.i.i, i64 2
  %i.lx = load i8, ptr %i.lw, align 2, !tbaa !93  ; 2 uses
  %.not27.i.i = icmp eq i8 %i.lx, -1
  br i1 %.not27.i.i, label %bb.bk, label %ir_hint_conflict.exit.i

bb.bk:                                            ; preds = %bb.bj, %.lr.ph11.i.i
  %i.ly = getelementptr inbounds nuw i8, ptr %.1239.i.i, i64 16
  %.123.i.i = load ptr, ptr %i.ly, align 8, !tbaa !149 ; 2 uses
  %.not26.i.i = icmp eq ptr %.123.i.i, null
  br i1 %.not26.i.i, label %ir_try_swap_operands.exit, label %.lr.ph11.i.i, !llvm.loop !154

ir_hint_conflict.exit.i:                          ; preds = %bb.bj
  %i.lz = icmp eq i8 %i.lx, %.021.lcssa.i.i
  %i.ma = icmp eq i8 %.021.lcssa.i.i, -1
  %or.cond.i.not121.i = or i1 %i.ma, %i.lz
  br i1 %or.cond.i.not121.i, label %ir_try_swap_operands.exit, label %bb.bl

bb.bl:                                            ; preds = %ir_hint_conflict.exit.i, %ir_vregs_overlap.exit.i, %bb.bc
  %i.mb = zext nneg i32 %i.kc to i64              ; 2 uses
  %i.mc = getelementptr inbounds nuw [4 x i8], ptr %i.jq, i64 %i.mb
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !40 ; 3 uses
  %.not70.i = icmp eq i32 %i.md, 0
  %.not71.i = icmp eq i32 %i.md, %i.js
  %or.cond673 = or i1 %.not70.i, %.not71.i
  br i1 %or.cond673, label %ir_try_swap_operands.exit, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.me = shl nuw nsw i64 %indvars.iv550, 2       ; 2 uses
  %i.mf = zext i32 %i.md to i64
  %i.mg = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.mf
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !79 ; 4 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 16
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mh, i64 2
  %i.mk = load i16, ptr %i.mj, align 2, !tbaa !108
  %i.ml = and i16 %i.mk, 16
  %.not72.i = icmp eq i16 %i.ml, 0
  br i1 %.not72.i, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.mm = load ptr, ptr %i.ji, align 8, !tbaa !41
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.mm, i64 %i.mb
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 4
  %i.mp = load i32, ptr %i.mo, align 4, !tbaa !42
  %i.mq = icmp eq i32 %i.mp, 1
  br i1 %i.mq, label %ir_try_swap_operands.exit, label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %1 = trunc i64 %i.me to i32
  %2 = or disjoint i32 %1, 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.cc, %bb.bo
  %.061135.i = phi ptr [ %i.mi, %bb.bo ], [ %i.pb, %bb.cc ] ; 4 uses
  %i.mr = getelementptr inbounds nuw i8, ptr %.061135.i, i64 4
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !119 ; 3 uses
  %i.mt = icmp eq i32 %i.ms, %2
  br i1 %i.mt, label %bb.bq, label %bb.cc

bb.bq:                                            ; preds = %bb.bp
  %i.mu = getelementptr inbounds nuw i8, ptr %.061135.i, i64 4 ; 2 uses
  %i.mv = trunc nsw i64 %i.me to i32              ; 2 uses
  store i32 %i.mv, ptr %i.mu, align 4, !tbaa !119
  %i.mw = getelementptr inbounds nuw i8, ptr %.061135.i, i64 8
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !117
  %.not74.i = icmp eq ptr %i.mx, null             ; 2 uses
  br i1 %.not74.i, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.my = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 %i.mv, ptr %i.my, align 4, !tbaa !109
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.mz = load i32, ptr %i.kb, align 8, !tbaa !38
  %i.na = sext i32 %i.mz to i64
  %i.nb = getelementptr inbounds [4 x i8], ptr %i.jq, i64 %i.na
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !40 ; 2 uses
  %i.nd = load i32, ptr %i.jr, align 4, !tbaa !40 ; 2 uses
  %i.ne = zext i32 %i.nc to i64
  %i.nf = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.ne
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !79
  %i.nh = zext i32 %i.nd to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.jp, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !79
  %i.nk = getelementptr inbounds nuw i8, ptr %i.ng, i64 16
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.bw, %bb.bs
  %.012.i.i81.i.ph = phi ptr [ %i.nx, %bb.bw ], [ %i.nk, %bb.bs ] ; 3 uses
  %.0.i.i82.i.ph = phi ptr [ %.0.i.i82.i, %bb.bw ], [ %i.nl, %bb.bs ]
  %i.nm = getelementptr inbounds nuw i8, ptr %.012.i.i81.i.ph, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !119
  br label %bb.bt

bb.bt:                                            ; preds = %.outer, %bb.bv
  %.0.i.i82.i = phi ptr [ %i.nv, %bb.bv ], [ %.0.i.i82.i.ph, %.outer ] ; 4 uses
  %i.no = load i32, ptr %.0.i.i82.i, align 8, !tbaa !118 ; 2 uses
  %i.np = icmp slt i32 %i.no, %i.nn
  br i1 %i.np, label %bb.bu, label %bb.bw

bb.bu:                                            ; preds = %bb.bt
  %i.nq = load i32, ptr %.012.i.i81.i.ph, align 8, !tbaa !118 ; 2 uses
  %i.nr = getelementptr inbounds nuw i8, ptr %.0.i.i82.i, i64 4
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !119
  %i.nt = icmp slt i32 %i.nq, %i.ns
  br i1 %i.nt, label %ir_vregs_overlap.exit89.i, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.nu = getelementptr inbounds nuw i8, ptr %.0.i.i82.i, i64 8
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !117 ; 2 uses
  %.not19.i.i87.i = icmp eq ptr %i.nv, null
  br i1 %.not19.i.i87.i, label %ir_vregs_overlap.exit89.thread.i, label %bb.bt

bb.bw:                                            ; preds = %bb.bt
  %i.nw = getelementptr inbounds nuw i8, ptr %.012.i.i81.i.ph, i64 8
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !117 ; 2 uses
  %.not.i.i83.i = icmp eq ptr %i.nx, null
  br i1 %.not.i.i83.i, label %ir_vregs_overlap.exit89.thread.i, label %.outer

ir_vregs_overlap.exit89.i:                        ; preds = %bb.bu
  %..i.i88.i = tail call i32 @llvm.smax.i32(i32 %i.nq, i32 %i.no)
  %.not75.i = icmp eq i32 %..i.i88.i, 0
  br i1 %.not75.i, label %ir_vregs_overlap.exit89.thread.i, label %bb.ca

ir_vregs_overlap.exit89.thread.i:                 ; preds = %bb.bv, %bb.bw, %ir_vregs_overlap.exit89.i
  %i.ny = sext i32 %i.nc to i64
  %i.nz = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ny
  %i.oa = load ptr, ptr %i.nz, align 8, !tbaa !79
  %i.ob = getelementptr inbounds nuw i8, ptr %i.oa, i64 40
  %.0221.i90.i = load ptr, ptr %i.ob, align 8, !tbaa !149 ; 2 uses
  %.not2.i91.i = icmp eq ptr %.0221.i90.i, null
  br i1 %.not2.i91.i, label %._crit_edge.i99.i, label %.lr.ph.i92.i

.lr.ph.i92.i:                                     ; preds = %ir_vregs_overlap.exit89.thread.i, %bb.bx
  %.0224.i93.i = phi ptr [ %.022.i97.i, %bb.bx ], [ %.0221.i90.i, %ir_vregs_overlap.exit89.thread.i ] ; 3 uses
  %.0213.i94.i = phi i8 [ %spec.select.i96.i, %bb.bx ], [ -1, %ir_vregs_overlap.exit89.thread.i ] ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.0224.i93.i, i64 8
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !96
  %i.oe = sdiv i32 %i.od, 4
  %i.of = zext i32 %i.oe to i64
  %i.og = icmp eq i64 %indvars.iv550, %i.of
  br i1 %i.og, label %._crit_edge.i99.i, label %bb.bx

bb.bx:                                            ; preds = %.lr.ph.i92.i
  %i.oh = getelementptr inbounds nuw i8, ptr %.0224.i93.i, i64 2
  %i.oi = load i8, ptr %i.oh, align 2, !tbaa !93  ; 2 uses
  %.not25.i95.i = icmp eq i8 %i.oi, -1
  %spec.select.i96.i = select i1 %.not25.i95.i, i8 %.0213.i94.i, i8 %i.oi ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0224.i93.i, i64 16
  %.022.i97.i = load ptr, ptr %i.oj, align 8, !tbaa !149 ; 2 uses
  %.not.i98.i = icmp eq ptr %.022.i97.i, null
  br i1 %.not.i98.i, label %._crit_edge.i99.i, label %.lr.ph.i92.i, !llvm.loop !153

._crit_edge.i99.i:                                ; preds = %bb.bx, %.lr.ph.i92.i, %ir_vregs_overlap.exit89.thread.i
  %.021.lcssa.i100.i = phi i8 [ -1, %ir_vregs_overlap.exit89.thread.i ], [ %.0213.i94.i, %.lr.ph.i92.i ], [ %spec.select.i96.i, %bb.bx ] ; 2 uses
  %i.ok = sext i32 %i.nd to i64
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.jp, i64 %i.ok
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !79
  %i.on = getelementptr inbounds nuw i8, ptr %i.om, i64 40
  %.1237.i101.i = load ptr, ptr %i.on, align 8, !tbaa !149 ; 2 uses
  %.not268.i102.i = icmp eq ptr %.1237.i101.i, null
  br i1 %.not268.i102.i, label %ir_hint_conflict.exit111.thread.i, label %.lr.ph11.i103.i

.lr.ph11.i103.i:                                  ; preds = %._crit_edge.i99.i, %bb.bz
  %.1239.i104.i = phi ptr [ %.123.i105.i, %bb.bz ], [ %.1237.i101.i, %._crit_edge.i99.i ] ; 3 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.1239.i104.i, i64 8
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !96
  %i.oq = sdiv i32 %i.op, 4
  %i.or = sext i32 %i.oq to i64
  %i.os = icmp slt i64 %indvars.iv550, %i.or
  br i1 %i.os, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph11.i103.i
  %i.ot = getelementptr inbounds nuw i8, ptr %.1239.i104.i, i64 2
  %i.ou = load i8, ptr %i.ot, align 2, !tbaa !93  ; 2 uses
  %.not27.i110.i = icmp eq i8 %i.ou, -1
  br i1 %.not27.i110.i, label %bb.bz, label %ir_hint_conflict.exit111.i

bb.bz:                                            ; preds = %bb.by, %.lr.ph11.i103.i
  %i.ov = getelementptr inbounds nuw i8, ptr %.1239.i104.i, i64 16
  %.123.i105.i = load ptr, ptr %i.ov, align 8, !tbaa !149 ; 2 uses
  %.not26.i106.i = icmp eq ptr %.123.i105.i, null
  br i1 %.not26.i106.i, label %ir_hint_conflict.exit111.thread.i, label %.lr.ph11.i103.i, !llvm.loop !154

ir_hint_conflict.exit111.i:                       ; preds = %bb.by
  %i.ow = icmp eq i8 %i.ou, %.021.lcssa.i100.i
  %i.ox = icmp eq i8 %.021.lcssa.i100.i, -1
  %or.cond.i108.not125.i = or i1 %i.ox, %i.ow
  br i1 %or.cond.i108.not125.i, label %ir_hint_conflict.exit111.thread.i, label %bb.ca

ir_hint_conflict.exit111.thread.i:                ; preds = %bb.bz, %ir_hint_conflict.exit111.i, %._crit_edge.i99.i
  %i.oy = trunc nuw nsw i64 %indvars.iv550 to i32
  tail call fastcc void @ir_swap_operands(ptr noundef nonnull readonly %0, i32 noundef %i.oy, ptr noundef nonnull %i.jn)
  br label %ir_try_swap_operands.exit

bb.ca:                                            ; preds = %ir_hint_conflict.exit111.i, %ir_vregs_overlap.exit89.i
  store i32 %i.ms, ptr %i.mu, align 4, !tbaa !119
  br i1 %.not74.i, label %bb.cb, label %ir_try_swap_operands.exit

bb.cb:                                            ; preds = %bb.ca
  %i.oz = getelementptr inbounds nuw i8, ptr %i.mh, i64 12
  store i32 %i.ms, ptr %i.oz, align 4, !tbaa !109
  br label %ir_try_swap_operands.exit

bb.cc:                                            ; preds = %bb.bp
  %i.pa = getelementptr inbounds nuw i8, ptr %.061135.i, i64 8
  %i.pb = load ptr, ptr %i.pa, align 8, !tbaa !117 ; 2 uses
  %.not73.i = icmp eq ptr %i.pb, null
  br i1 %.not73.i, label %ir_try_swap_operands.exit, label %bb.bp, !llvm.loop !155

bb.cd:                                            ; preds = %bb.ax
  %i.pc = getelementptr inbounds nuw i8, ptr %i.jn, i64 4 ; 3 uses
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !38 ; 3 uses
  %i.pe = icmp sgt i32 %i.pd, 0
  br i1 %i.pe, label %bb.ce, label %ir_try_swap_operands.exit

bb.ce:                                            ; preds = %bb.cd
  %i.pf = load ptr, ptr %i.jh, align 8, !tbaa !49 ; 3 uses
  %i.pg = zext nneg i32 %i.pd to i64
  %i.ph = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %i.pg
  %i.pi = load i32, ptr %i.ph, align 4, !tbaa !40 ; 3 uses
  %.not368 = icmp eq i32 %i.pi, 0
  br i1 %.not368, label %ir_try_swap_operands.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.pj = getelementptr inbounds nuw [4 x i8], ptr %i.pf, i64 %indvars.iv550
  %i.pk = load i32, ptr %i.pj, align 4, !tbaa !40 ; 3 uses
  %.not369 = icmp eq i32 %i.pk, %i.pi
  br i1 %.not369, label %ir_try_swap_operands.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %.val393 = load ptr, ptr %i.jg, align 8, !tbaa !52 ; 2 uses
  %i.pl = zext i32 %i.pk to i64
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %.val393, i64 %i.pl
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !79 ; 2 uses
  %i.po = zext i32 %i.pi to i64
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %.val393, i64 %i.po
  %i.pq = load ptr, ptr %i.pp, align 8, !tbaa !79 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pn, i64 2
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !108
  %i.pt = getelementptr inbounds nuw i8, ptr %i.pq, i64 2
  %i.pu = load i16, ptr %i.pt, align 2, !tbaa !108
  %i.pv = or i16 %i.pu, %i.ps
  %i.pw = and i16 %i.pv, 32
  %.not.i412 = icmp eq i16 %i.pw, 0
  br i1 %.not.i412, label %bb.ch, label %ir_try_swap_operands.exit

bb.ch:                                            ; preds = %bb.cg
  %i.px = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.py = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  br label %.lr.ph.i.i414

.lr.ph.i.i414:                                    ; preds = %bb.cl, %bb.ch
  %.012.i.i415 = phi ptr [ %i.px, %bb.ch ], [ %.121.i.i, %bb.cl ]
  %.0.i.i416 = phi ptr [ %i.py, %bb.ch ], [ %i.ql, %bb.cl ] ; 3 uses
  %i.pz = load i32, ptr %.0.i.i416, align 8, !tbaa !118 ; 2 uses
  br label %bb.ci

bb.ci:                                            ; preds = %bb.cj, %.lr.ph.i.i414
  %.121.i.i = phi ptr [ %.012.i.i415, %.lr.ph.i.i414 ], [ %i.qe, %bb.cj ] ; 4 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 4
  %i.qb = load i32, ptr %i.qa, align 4, !tbaa !119 ; 2 uses
  %i.qc = icmp slt i32 %i.qb, %i.pz
  br i1 %i.qc, label %bb.cj, label %.critedge.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.qd = getelementptr inbounds nuw i8, ptr %.121.i.i, i64 8
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !117 ; 2 uses
  %.not.i.i417 = icmp eq ptr %i.qe, null
  br i1 %.not.i.i417, label %ir_try_swap_operands.exit, label %bb.ci, !llvm.loop !156

.critedge.i.i:                                    ; preds = %bb.ci
  %i.qf = load i32, ptr %.121.i.i, align 8, !tbaa !118
  %i.qg = icmp sgt i32 %i.qf, %i.pz
  br i1 %i.qg, label %ir_try_swap_operands.exit, label %bb.ck

bb.ck:                                            ; preds = %.critedge.i.i
  %i.qh = getelementptr inbounds nuw i8, ptr %.0.i.i416, i64 4
  %i.qi = load i32, ptr %i.qh, align 4, !tbaa !119
  %i.qj = icmp slt i32 %i.qb, %i.qi
  br i1 %i.qj, label %ir_try_swap_operands.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.qk = getelementptr inbounds nuw i8, ptr %.0.i.i416, i64 8
  %i.ql = load ptr, ptr %i.qk, align 8, !tbaa !117 ; 2 uses
  %.not15.i.i = icmp eq ptr %i.ql, null
  br i1 %.not15.i.i, label %ir_vregs_inside.exit, label %.lr.ph.i.i414, !llvm.loop !157

ir_vregs_inside.exit:                             ; preds = %bb.cl
  %i.qm = load ptr, ptr %i.jj, align 8, !tbaa !133
  %.not370 = icmp eq ptr %i.qm, null
  %.pre574 = trunc nuw nsw i64 %indvars.iv550 to i32 ; 2 uses
  br i1 %.not370, label %ir_vregs_inside.exit._crit_edge, label %bb.cm

bb.cm:                                            ; preds = %ir_vregs_inside.exit
  %i.qn = tail call i32 @ir_binding_find(ptr noundef nonnull %0, i32 noundef %.pre574) #19 ; 2 uses
  %i.qo = load i32, ptr %i.pc, align 4, !tbaa !38
  %i.qp = tail call i32 @ir_binding_find(ptr noundef nonnull %0, i32 noundef %i.qo) #19
  %.not371 = icmp eq i32 %i.qn, 0
  %.not372 = icmp eq i32 %i.qn, %i.qp
  %or.cond391 = select i1 %.not371, i1 true, i1 %.not372
  br i1 %or.cond391, label %._crit_edge563, label %ir_try_swap_operands.exit

._crit_edge563:                                   ; preds = %bb.cm
  %.pre564 = load ptr, ptr %i.jh, align 8, !tbaa !49 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre564, i64 %indvars.iv550
  %.pre565 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !40
  %.pre566 = load i32, ptr %i.pc, align 4, !tbaa !38
  br label %ir_vregs_inside.exit._crit_edge

ir_vregs_inside.exit._crit_edge:                  ; preds = %ir_vregs_inside.exit, %._crit_edge563
  %i.qq = phi i32 [ %.pre566, %._crit_edge563 ], [ %i.pd, %ir_vregs_inside.exit ] ; 2 uses
  %i.qr = phi i32 [ %.pre565, %._crit_edge563 ], [ %i.pk, %ir_vregs_inside.exit ]
  %i.qs = phi ptr [ %.pre564, %._crit_edge563 ], [ %i.pf, %ir_vregs_inside.exit ]
  %i.qt = sext i32 %i.qq to i64
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qs, i64 %i.qt
  %i.qv = load i32, ptr %i.qu, align 4, !tbaa !40
  tail call fastcc void @ir_vregs_coalesce(ptr noundef nonnull %0, i32 noundef %i.qr, i32 noundef %i.qv, i32 noundef %.pre574, i32 noundef %i.qq)
  br label %ir_try_swap_operands.exit

ir_try_swap_operands.exit:                        ; preds = %bb.bk, %bb.cc, %.critedge.i.i, %bb.ck, %bb.cj, %bb.cg, %bb.cb, %bb.ca, %ir_hint_conflict.exit111.thread.i, %bb.bn, %bb.bl, %ir_hint_conflict.exit.i, %._crit_edge.i.i, %bb.cm, %bb.aw, %bb.cd, %bb.ce, %bb.cf, %ir_vregs_inside.exit._crit_edge, %bb.ay, %bb.az, %bb.ba, %bb.bb
  %.10 = phi i1 [ %.9502, %bb.cd ], [ %.9502, %bb.aw ], [ %.9502, %bb.bb ], [ %.9502, %bb.ba ], [ %.9502, %bb.az ], [ %.9502, %bb.ay ], [ true, %ir_vregs_inside.exit._crit_edge ], [ %.9502, %bb.cm ], [ %.9502, %bb.cj ], [ %.9502, %bb.cf ], [ %.9502, %bb.ce ], [ %.9502, %._crit_edge.i.i ], [ %.9502, %bb.cc ], [ %.9502, %ir_hint_conflict.exit.i ], [ %.9502, %bb.bl ], [ %.9502, %.critedge.i.i ], [ %.9502, %bb.bn ], [ %.9502, %ir_hint_conflict.exit111.thread.i ], [ %.9502, %bb.ca ], [ %.9502, %bb.cb ], [ %.9502, %bb.cg ], [ %.9502, %bb.ck ], [ %.9502, %bb.bk ] ; 2 uses
  %indvars.iv.next551 = add nuw nsw i64 %indvars.iv550, 1 ; 2 uses
  %i.qw = load i32, ptr %i.jd, align 8, !tbaa !32
  %i.qx = sext i32 %i.qw to i64
  %i.qy = icmp slt i64 %indvars.iv.next551, %i.qx
  br i1 %i.qy, label %bb.aw, label %.loopexit, !llvm.loop !158

.loopexit:                                        ; preds = %ir_try_swap_operands.exit, %.preheader441, %ir_hint_propagation.exit
  %.11 = phi i1 [ %.0318.lcssa, %ir_hint_propagation.exit ], [ %.0318.lcssa, %.preheader441 ], [ %.10, %ir_try_swap_operands.exit ]
  br i1 %.11, label %bb.cn, label %bb.dd

bb.cn:                                            ; preds = %.loopexit
  %i.qz = load i32, ptr %i.he, align 8, !tbaa !48
  %i.ra = add nsw i32 %i.qz, 1
  %i.rb = sext i32 %i.ra to i64
  %i.rc = shl nsw i64 %i.rb, 2
  %i.rd = tail call noalias ptr @_emalloc(i64 noundef %i.rc) #18 ; 3 uses
  %i.re = load i32, ptr %i.he, align 8, !tbaa !48 ; 4 uses
  %.not359508 = icmp slt i32 %i.re, 1
  br i1 %.not359508, label %._crit_edge513, label %.lr.ph512

.lr.ph512:                                        ; preds = %bb.cn
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 232
  br label %bb.co

bb.co:                                            ; preds = %.lr.ph512, %bb.cs
  %.pre567571 = phi i32 [ %i.re, %.lr.ph512 ], [ %.pre567572, %bb.cs ] ; 2 uses
  %i.rg = phi i32 [ %i.re, %.lr.ph512 ], [ %i.rq, %bb.cs ]
  %indvars.iv552 = phi i64 [ 1, %.lr.ph512 ], [ %indvars.iv.next553, %bb.cs ] ; 5 uses
  %.0510 = phi i32 [ 1, %.lr.ph512 ], [ %.1, %bb.cs ] ; 6 uses
  %i.rh = load ptr, ptr %i.rf, align 8, !tbaa !52 ; 2 uses
  %i.ri = getelementptr inbounds nuw [8 x i8], ptr %i.rh, i64 %indvars.iv552
  %i.rj = load ptr, ptr %i.ri, align 8, !tbaa !79 ; 3 uses
  %.not364 = icmp eq ptr %i.rj, null
  br i1 %.not364, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.rk = getelementptr inbounds nuw [4 x i8], ptr %i.rd, i64 %indvars.iv552
  store i32 %.0510, ptr %i.rk, align 4, !tbaa !40
  %i.rl = zext i32 %.0510 to i64
  %.not365 = icmp eq i64 %indvars.iv552, %i.rl
  br i1 %.not365, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.rm = sext i32 %.0510 to i64
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.rh, i64 %i.rm
  store ptr %i.rj, ptr %i.rn, align 8, !tbaa !79
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rj, i64 4
  store i32 %.0510, ptr %i.ro, align 4, !tbaa !38
  %.pre567.pre = load i32, ptr %i.he, align 8, !tbaa !48
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %.pre567 = phi i32 [ %.pre567.pre, %bb.cq ], [ %.pre567571, %bb.cp ] ; 2 uses
  %i.rp = add nsw i32 %.0510, 1
  br label %bb.cs

bb.cs:                                            ; preds = %bb.co, %bb.cr
  %.pre567572 = phi i32 [ %.pre567, %bb.cr ], [ %.pre567571, %bb.co ]
  %i.rq = phi i32 [ %.pre567, %bb.cr ], [ %i.rg, %bb.co ] ; 3 uses
  %.1 = phi i32 [ %i.rp, %bb.cr ], [ %.0510, %bb.co ] ; 2 uses
  %indvars.iv.next553 = add nuw nsw i64 %indvars.iv552, 1
  %i.rr = sext i32 %i.rq to i64
  %.not359.not = icmp slt i64 %indvars.iv552, %i.rr
  br i1 %.not359.not, label %bb.co, label %._crit_edge513, !llvm.loop !159

._crit_edge513:                                   ; preds = %bb.cs, %bb.cn
  %.0.lcssa = phi i32 [ 1, %bb.cn ], [ %.1, %bb.cs ] ; 8 uses
  %.lcssa = phi i32 [ %i.re, %bb.cn ], [ %i.rq, %bb.cs ] ; 2 uses
  %i.rs = add nsw i32 %.0.lcssa, -1               ; 2 uses
  %.not360 = icmp eq i32 %i.rs, %.lcssa
  br i1 %.not360, label %bb.dc, label %bb.ct

bb.ct:                                            ; preds = %._crit_edge513
  %reass.sub = sub i32 %.lcssa, %.0.lcssa
  %i.rt = add i32 %reass.sub, 1
  %i.ru = add i32 %.0.lcssa, 35
  %i.rv = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.rw = sext i32 %.0.lcssa to i64               ; 4 uses
  %i.rx = sext i32 %i.rt to i64                   ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %.0.lcssa, i32 %i.ru)
end_hunk_1
