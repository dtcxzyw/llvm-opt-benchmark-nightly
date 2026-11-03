Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/packing_x86?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %i.aq, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.c
  %i.ar = phi i32 [ %i.r, %bb.c ], [ %i.es, %.lr.ph ] ; 6 uses
  %.078.lcssa = phi ptr [ %i.ap, %bb.c ], [ %i.ep, %.lr.ph ] ; 9 uses
  %.076.lcssa = phi i32 [ 0, %bb.c ], [ %i.eq, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.am, %bb.c ], [ %i.eo, %.lr.ph ] ; 9 uses
  %.072.lcssa = phi ptr [ %i.aj, %bb.c ], [ %i.en, %.lr.ph ] ; 9 uses
  %.070.lcssa = phi ptr [ %i.ag, %bb.c ], [ %i.em, %.lr.ph ] ; 9 uses
  %.069.lcssa = phi ptr [ %i.y, %bb.c ], [ %i.el, %.lr.ph ] ; 12 uses
  %i.as = icmp slt i32 %.076.lcssa, %i.ar
  br i1 %i.as, label %.lr.ph98.preheader, label %._crit_edge

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.at = xor i32 %.076.lcssa, -1
  %i.au = add i32 %i.ar, %i.at                    ; 2 uses
  %i.av = zext i32 %i.au to i64                   ; 3 uses
  %i.aw = add nuw nsw i64 %i.av, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.au, 31
  br i1 %min.iters.check, label %.lr.ph98.preheader221, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph98.preheader
  %i.ax = shl nuw nsw i64 %i.av, 2
  %i.ay = add nuw nsw i64 %i.ax, 4                ; 4 uses
  %i.az = getelementptr i8, ptr %.070.lcssa, i64 %i.ay ; 4 uses
  %i.ba = getelementptr i8, ptr %.072.lcssa, i64 %i.ay ; 4 uses
  %i.bb = getelementptr i8, ptr %.074.lcssa, i64 %i.ay ; 4 uses
  %i.bc = getelementptr i8, ptr %.078.lcssa, i64 %i.ay ; 4 uses
  %i.bd = shl nuw nsw i64 %i.av, 4
  %i.be = getelementptr i8, ptr %.069.lcssa, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 16     ; 4 uses
  %bound0 = icmp ult ptr %.070.lcssa, %i.ba
  %bound1 = icmp ult ptr %.072.lcssa, %i.az
  %found.conflict = and i1 %bound0, %bound1
  %bound0174 = icmp ult ptr %.070.lcssa, %i.bb
  %bound1175 = icmp ult ptr %.074.lcssa, %i.az
  %found.conflict176 = and i1 %bound0174, %bound1175
  %conflict.rdx = or i1 %found.conflict, %found.conflict176
  %bound0177 = icmp ult ptr %.070.lcssa, %i.bc
  %bound1178 = icmp ult ptr %.078.lcssa, %i.az
  %found.conflict179 = and i1 %bound0177, %bound1178
  %conflict.rdx180 = or i1 %conflict.rdx, %found.conflict179
  %bound0181 = icmp ult ptr %.070.lcssa, %i.bf
  %bound1182 = icmp ult ptr %.069.lcssa, %i.az
  %found.conflict183 = and i1 %bound0181, %bound1182
  %conflict.rdx184 = or i1 %conflict.rdx180, %found.conflict183
  %bound0185 = icmp ult ptr %.072.lcssa, %i.bb
  %bound1186 = icmp ult ptr %.074.lcssa, %i.ba
  %found.conflict187 = and i1 %bound0185, %bound1186
  %conflict.rdx188 = or i1 %conflict.rdx184, %found.conflict187
  %bound0189 = icmp ult ptr %.072.lcssa, %i.bc
  %bound1190 = icmp ult ptr %.078.lcssa, %i.ba
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx188, %found.conflict191
  %bound0193 = icmp ult ptr %.072.lcssa, %i.bf
  %bound1194 = icmp ult ptr %.069.lcssa, %i.ba
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %.074.lcssa, %i.bc
  %bound1198 = icmp ult ptr %.078.lcssa, %i.bb
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %.074.lcssa, %i.bf
  %bound1202 = icmp ult ptr %.069.lcssa, %i.bb
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %.078.lcssa, %i.bf
  %bound1206 = icmp ult ptr %.069.lcssa, %i.bc
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  br i1 %conflict.rdx208, label %.lr.ph98.preheader221, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 8589934588              ; 5 uses
  %i.bg = shl nuw nsw i64 %n.vec, 4
  %i.bh = getelementptr i8, ptr %.069.lcssa, i64 %i.bg
  %i.bi = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.bj = getelementptr i8, ptr %.070.lcssa, i64 %i.bi
  %i.bk = getelementptr i8, ptr %.072.lcssa, i64 %i.bi
  %i.bl = getelementptr i8, ptr %.074.lcssa, i64 %i.bi
  %i.bm = trunc i64 %n.vec to i32
  %i.bn = add i32 %.076.lcssa, %i.bm
  %i.bo = getelementptr i8, ptr %.078.lcssa, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.bp ; 4 uses
  %i.bq = getelementptr i8, ptr %.069.lcssa, i64 %i.bp ; 4 uses
  %next.gep209 = getelementptr i8, ptr %i.bq, i64 16
  %i.br = getelementptr i8, ptr %.069.lcssa, i64 %i.bp ; 4 uses
  %next.gep210 = getelementptr i8, ptr %i.br, i64 32
  %i.bs = getelementptr i8, ptr %.069.lcssa, i64 %i.bp ; 4 uses
  %next.gep211 = getelementptr i8, ptr %i.bs, i64 48
  %i.bt = shl i64 %index, 2                       ; 4 uses
  %next.gep212 = getelementptr i8, ptr %.070.lcssa, i64 %i.bt
  %next.gep213 = getelementptr i8, ptr %.072.lcssa, i64 %i.bt
  %next.gep214 = getelementptr i8, ptr %.074.lcssa, i64 %i.bt
  %next.gep215 = getelementptr i8, ptr %.078.lcssa, i64 %i.bt
  %i.bu = load float, ptr %next.gep, align 4, !tbaa !51, !alias.scope !88
  %i.bv = load float, ptr %next.gep209, align 4, !tbaa !51, !alias.scope !88
  %i.bw = load float, ptr %next.gep210, align 4, !tbaa !51, !alias.scope !88
  %i.bx = load float, ptr %next.gep211, align 4, !tbaa !51, !alias.scope !88
  %i.by = insertelement <4 x float> poison, float %i.bu, i64 0
  %i.bz = insertelement <4 x float> %i.by, float %i.bv, i64 1
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 2
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 3
  store <4 x float> %i.cb, ptr %next.gep212, align 4, !tbaa !51, !alias.scope !89, !noalias !90
  %i.cc = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.cd = getelementptr i8, ptr %i.bq, i64 20
  %i.ce = getelementptr i8, ptr %i.br, i64 36
  %i.cf = getelementptr i8, ptr %i.bs, i64 52
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !51, !alias.scope !88
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !51, !alias.scope !88
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !51, !alias.scope !88
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !51, !alias.scope !88
  %i.ck = insertelement <4 x float> poison, float %i.cg, i64 0
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 1
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 2
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 3
  store <4 x float> %i.cn, ptr %next.gep213, align 4, !tbaa !51, !alias.scope !91, !noalias !92
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.cp = getelementptr i8, ptr %i.bq, i64 24
  %i.cq = getelementptr i8, ptr %i.br, i64 40
  %i.cr = getelementptr i8, ptr %i.bs, i64 56
  %i.cs = load float, ptr %i.co, align 4, !tbaa !51, !alias.scope !88
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !51, !alias.scope !88
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !51, !alias.scope !88
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !51, !alias.scope !88
  %i.cw = insertelement <4 x float> poison, float %i.cs, i64 0
  %i.cx = insertelement <4 x float> %i.cw, float %i.ct, i64 1
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 2
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 3
  store <4 x float> %i.cz, ptr %next.gep214, align 4, !tbaa !51, !alias.scope !93, !noalias !94
  %i.da = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.db = getelementptr i8, ptr %i.bq, i64 28
  %i.dc = getelementptr i8, ptr %i.br, i64 44
  %i.dd = getelementptr i8, ptr %i.bs, i64 60
  %i.de = load float, ptr %i.da, align 4, !tbaa !51, !alias.scope !88
  %i.df = load float, ptr %i.db, align 4, !tbaa !51, !alias.scope !88
  %i.dg = load float, ptr %i.dc, align 4, !tbaa !51, !alias.scope !88
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !51, !alias.scope !88
  %i.di = insertelement <4 x float> poison, float %i.de, i64 0
  %i.dj = insertelement <4 x float> %i.di, float %i.df, i64 1
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 2
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 3
  store <4 x float> %i.dl, ptr %next.gep215, align 4, !tbaa !51, !alias.scope !95, !noalias !88
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dm = icmp eq i64 %index.next, %n.vec
  br i1 %i.dm, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph98.preheader221

.lr.ph98.preheader221:                            ; preds = %vector.memcheck, %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.069.lcssa, %vector.memcheck ], [ %.069.lcssa, %.lr.ph98.preheader ], [ %i.bh, %middle.block ] ; 6 uses
  %.17196.ph = phi ptr [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %.lr.ph98.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.17395.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph98.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %.17594.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph98.preheader ], [ %i.bl, %middle.block ] ; 3 uses
  %.17793.ph = phi i32 [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph98.preheader ], [ %i.bn, %middle.block ] ; 4 uses
  %.17992.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.bo, %middle.block ] ; 3 uses
  %i.dn = sub i32 %i.ar, %.17793.ph
  %.neg = add i32 %.17793.ph, 1
  %xtraiter = and i32 %i.dn, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader221
  %i.do = load float, ptr %.197.ph, align 4, !tbaa !51
  %i.dp = getelementptr inbounds nuw i8, ptr %.17196.ph, i64 4
  store float %i.do, ptr %.17196.ph, align 4, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.197.ph, i64 4
  %i.dr = load float, ptr %i.dq, align 4, !tbaa !51
  %i.ds = getelementptr inbounds nuw i8, ptr %.17395.ph, i64 4
  store float %i.dr, ptr %.17395.ph, align 4, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %.197.ph, i64 8
  %i.du = load float, ptr %i.dt, align 4, !tbaa !51
  %i.dv = getelementptr inbounds nuw i8, ptr %.17594.ph, i64 4
  store float %i.du, ptr %.17594.ph, align 4, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.197.ph, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !51
  %i.dy = getelementptr inbounds nuw i8, ptr %.17992.ph, i64 4
  store float %i.dx, ptr %.17992.ph, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.197.ph, i64 16
  %i.ea = add nuw nsw i32 %.17793.ph, 1
  br label %.lr.ph98.prol.loopexit

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader221
  %.197.unr = phi ptr [ %.197.ph, %.lr.ph98.preheader221 ], [ %i.dz, %.lr.ph98.prol ]
  %.17196.unr = phi ptr [ %.17196.ph, %.lr.ph98.preheader221 ], [ %i.dp, %.lr.ph98.prol ]
  %.17395.unr = phi ptr [ %.17395.ph, %.lr.ph98.preheader221 ], [ %i.ds, %.lr.ph98.prol ]
  %.17594.unr = phi ptr [ %.17594.ph, %.lr.ph98.preheader221 ], [ %i.dv, %.lr.ph98.prol ]
  %.17793.unr = phi i32 [ %.17793.ph, %.lr.ph98.preheader221 ], [ %i.ea, %.lr.ph98.prol ]
  %.17992.unr = phi ptr [ %.17992.ph, %.lr.ph98.preheader221 ], [ %i.dy, %.lr.ph98.prol ]
  %i.eb = icmp eq i32 %i.ar, %.neg
  br i1 %i.eb, label %._crit_edge, label %.lr.ph98

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.06985 = phi ptr [ %i.el, %.lr.ph ], [ %i.y, %bb.c ] ; 5 uses
  %.07084 = phi ptr [ %i.em, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.07283 = phi ptr [ %i.en, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %.07482 = phi ptr [ %i.eo, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.07681 = phi i32 [ %i.eq, %.lr.ph ], [ 0, %bb.c ]
  %.07880 = phi ptr [ %i.ep, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %6 = load <4 x float>, ptr %.06985, align 16, !tbaa !55 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.06985, i64 16
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !55 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.06985, i64 32
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !55 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.06985, i64 48
  %11 = load <4 x float>, ptr %i.ec, align 16, !tbaa !55 ; 2 uses
  %i.ed = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ee = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eg = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %i.ed, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ei = shufflevector <4 x float> %i.ee, <4 x float> %i.ed, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.eg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.ef, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.eh, ptr %.07084, align 1, !tbaa !55
  store <4 x float> %i.ei, ptr %.07283, align 1, !tbaa !55
  store <4 x float> %i.ej, ptr %.07482, align 1, !tbaa !55
  store <4 x float> %i.ek, ptr %.07880, align 1, !tbaa !55
  %i.el = getelementptr inbounds nuw i8, ptr %.06985, i64 64 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.07084, i64 16 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.07283, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.07482, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.07880, i64 16 ; 2 uses
  %i.eq = add nuw nsw i32 %.07681, 4              ; 3 uses
  %i.er = or disjoint i32 %i.eq, 3
  %i.es = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.et = icmp slt i32 %i.er, %i.es
  br i1 %i.et, label %.lr.ph, label %.preheader, !llvm.loop !86

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi ptr [ %i.fr, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.17196 = phi ptr [ %i.fh, %.lr.ph98 ], [ %.17196.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17395 = phi ptr [ %i.fk, %.lr.ph98 ], [ %.17395.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17594 = phi ptr [ %i.fn, %.lr.ph98 ], [ %.17594.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17793 = phi i32 [ %i.fs, %.lr.ph98 ], [ %.17793.unr, %.lr.ph98.prol.loopexit ]
  %.17992 = phi ptr [ %i.fq, %.lr.ph98 ], [ %.17992.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %i.eu = load float, ptr %.197, align 4, !tbaa !51
  %i.ev = getelementptr inbounds nuw i8, ptr %.17196, i64 4
  store float %i.eu, ptr %.17196, align 4, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.197, i64 4
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !51
  %i.ey = getelementptr inbounds nuw i8, ptr %.17395, i64 4
  store float %i.ex, ptr %.17395, align 4, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !51
  %i.fb = getelementptr inbounds nuw i8, ptr %.17594, i64 4
  store float %i.fa, ptr %.17594, align 4, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %.197, i64 12
  %i.fd = load float, ptr %i.fc, align 4, !tbaa !51
  %i.fe = getelementptr inbounds nuw i8, ptr %.17992, i64 4
  store float %i.fd, ptr %.17992, align 4, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %.197, i64 16
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !51
  %i.fh = getelementptr inbounds nuw i8, ptr %.17196, i64 8
  store float %i.fg, ptr %i.ev, align 4, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.197, i64 20
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !51
  %i.fk = getelementptr inbounds nuw i8, ptr %.17395, i64 8
  store float %i.fj, ptr %i.ey, align 4, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %.197, i64 24
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !51
  %i.fn = getelementptr inbounds nuw i8, ptr %.17594, i64 8
  store float %i.fm, ptr %i.fb, align 4, !tbaa !51
  %i.fo = getelementptr inbounds nuw i8, ptr %.197, i64 28
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !51
  %i.fq = getelementptr inbounds nuw i8, ptr %.17992, i64 8
  store float %i.fp, ptr %i.fe, align 4, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %.197, i64 32
  %i.fs = add nuw nsw i32 %.17793, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.fs, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph98, !llvm.loop !87

._crit_edge:                                      ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond112.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond112.not, label %._crit_edge103, label %bb.c

._crit_edge103:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 24 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64                     ; 18 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16   ; 18 uses
  %i.r = mul i64 %i.q, %i.o                       ; 8 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64                     ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16   ; 4 uses
  %factor.op.mul = mul i64 %i.x, %i.v
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64                    ; 5 uses
  %i.ab = add nsw i32 %i.j, 1
  %i.ac = mul i64 %i.q, %i.o
  %i.ad = mul i64 %i.x, %i.v
  %i.ae = shl nsw i64 %i.aa, 3                    ; 15 uses
  %i.af = sub i32 %i.j, %i.k
  %i.ag = zext i32 %i.af to i64                   ; 2 uses
  %i.ah = shl nuw nsw i64 %i.ag, 3                ; 8 uses
  %i.ai = add nsw i64 %i.ae, %i.ah
  %i.aj = mul i64 %i.q, %i.ai
  %i.ak = mul i64 %i.aj, %i.o
  %i.al = add nsw i32 %i.y, -1
  %i.am = zext i32 %i.al to i64                   ; 2 uses
  %i.an = shl nuw nsw i64 %i.am, 2                ; 8 uses
  %i.ao = getelementptr i8, ptr %i.l, i64 %i.ak
  %i.ap = getelementptr i8, ptr %i.ao, i64 %i.an
  %scevgep = getelementptr i8, ptr %i.ap, i64 4
  %i.aq = mul i64 %i.q, %i.o
  %i.ar = mul i64 %i.aq, %i.aa
  %i.as = shl i64 %i.ar, 3
  %scevgep125 = getelementptr i8, ptr %i.l, i64 %i.as
  %i.at = add nsw i64 %i.ae, %i.ah
  %i.au = or disjoint i64 %i.at, 1
  %i.av = mul i64 %i.q, %i.au
  %i.aw = mul i64 %i.av, %i.o
  %i.ax = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 %i.an
  %scevgep126 = getelementptr i8, ptr %i.ay, i64 4
  %i.az = or disjoint i64 %i.ae, 1
  %i.ba = mul i64 %i.q, %i.az
  %i.bb = mul i64 %i.ba, %i.o
  %scevgep127 = getelementptr i8, ptr %i.l, i64 %i.bb
  %i.bc = add nsw i64 %i.ae, %i.ah
  %i.bd = or disjoint i64 %i.bc, 2
  %i.be = mul i64 %i.q, %i.bd
  %i.bf = mul i64 %i.be, %i.o
  %i.bg = getelementptr i8, ptr %i.l, i64 %i.bf
  %i.bh = getelementptr i8, ptr %i.bg, i64 %i.an
  %scevgep128 = getelementptr i8, ptr %i.bh, i64 4
  %i.bi = or disjoint i64 %i.ae, 2
  %i.bj = mul i64 %i.q, %i.bi
  %i.bk = mul i64 %i.bj, %i.o
  %scevgep129 = getelementptr i8, ptr %i.l, i64 %i.bk
  %i.bl = add nsw i64 %i.ae, %i.ah
  %i.bm = or disjoint i64 %i.bl, 3
  %i.bn = mul i64 %i.q, %i.bm
  %i.bo = mul i64 %i.bn, %i.o
  %i.bp = getelementptr i8, ptr %i.l, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.an
  %i.br = or disjoint i64 %i.ae, 3
  %i.bs = mul i64 %i.q, %i.br
  %i.bt = mul i64 %i.bs, %i.o
  %scevgep131 = getelementptr i8, ptr %i.l, i64 %i.bt
  %i.bu = add nsw i64 %i.ae, %i.ah
  %i.bv = or disjoint i64 %i.bu, 4
  %i.bw = mul i64 %i.q, %i.bv
  %i.bx = mul i64 %i.bw, %i.o
  %i.by = getelementptr i8, ptr %i.l, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 %i.an
  %i.ca = insertelement <2 x ptr> poison, ptr %i.bz, i64 0
  %i.cb = insertelement <2 x ptr> %i.ca, ptr %i.bq, i64 1
  %i.cc = getelementptr i8, <2 x ptr> %i.cb, i64 4
  %i.cd = or disjoint i64 %i.ae, 4
  %i.ce = mul i64 %i.q, %i.cd
  %i.cf = mul i64 %i.ce, %i.o
  %scevgep133 = getelementptr i8, ptr %i.l, i64 %i.cf
  %i.cg = add nsw i64 %i.ae, %i.ah
  %i.ch = or disjoint i64 %i.cg, 5
  %i.ci = mul i64 %i.q, %i.ch
  %i.cj = mul i64 %i.ci, %i.o
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.13:bb.a
  br i1 %i.ar, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.as = phi i32 [ %i.r, %.noexc ], [ %i.et, %.lr.ph ] ; 6 uses
  %.078.lcssa = phi ptr [ %i.aq, %.noexc ], [ %i.eq, %.lr.ph ] ; 9 uses
  %.076.lcssa = phi i32 [ 0, %.noexc ], [ %i.er, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.am, %.noexc ], [ %i.ep, %.lr.ph ] ; 9 uses
  %.072.lcssa = phi ptr [ %i.ai, %.noexc ], [ %i.eo, %.lr.ph ] ; 9 uses
  %.070.lcssa = phi ptr [ %i.ae, %.noexc ], [ %i.en, %.lr.ph ] ; 9 uses
  %.069.lcssa = phi ptr [ %i.x, %.noexc ], [ %i.em, %.lr.ph ] ; 12 uses
  %i.at = icmp slt i32 %.076.lcssa, %i.as
  br i1 %i.at, label %.lr.ph204.preheader, label %._crit_edge

.lr.ph204.preheader:                              ; preds = %.preheader
  %i.au = xor i32 %.076.lcssa, -1
  %i.av = add i32 %i.as, %i.au                    ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 3 uses
  %i.ax = add nuw nsw i64 %i.aw, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.av, 31
  br i1 %min.iters.check, label %.lr.ph204.preheader325, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph204.preheader
  %i.ay = shl nuw nsw i64 %i.aw, 2
  %i.az = add nuw nsw i64 %i.ay, 4                ; 4 uses
  %i.ba = getelementptr i8, ptr %.070.lcssa, i64 %i.az ; 4 uses
  %i.bb = getelementptr i8, ptr %.072.lcssa, i64 %i.az ; 4 uses
  %i.bc = getelementptr i8, ptr %.074.lcssa, i64 %i.az ; 4 uses
  %i.bd = getelementptr i8, ptr %.078.lcssa, i64 %i.az ; 4 uses
  %i.be = shl nuw nsw i64 %i.aw, 4
  %i.bf = getelementptr i8, ptr %.069.lcssa, i64 %i.be
  %i.bg = getelementptr i8, ptr %i.bf, i64 16     ; 4 uses
  %bound0 = icmp ult ptr %.070.lcssa, %i.bb
  %bound1 = icmp ult ptr %.072.lcssa, %i.ba
  %found.conflict = and i1 %bound0, %bound1
  %bound0278 = icmp ult ptr %.070.lcssa, %i.bc
  %bound1279 = icmp ult ptr %.074.lcssa, %i.ba
  %found.conflict280 = and i1 %bound0278, %bound1279
  %conflict.rdx = or i1 %found.conflict, %found.conflict280
  %bound0281 = icmp ult ptr %.070.lcssa, %i.bd
  %bound1282 = icmp ult ptr %.078.lcssa, %i.ba
  %found.conflict283 = and i1 %bound0281, %bound1282
  %conflict.rdx284 = or i1 %conflict.rdx, %found.conflict283
  %bound0285 = icmp ult ptr %.070.lcssa, %i.bg
  %bound1286 = icmp ult ptr %.069.lcssa, %i.ba
  %found.conflict287 = and i1 %bound0285, %bound1286
  %conflict.rdx288 = or i1 %conflict.rdx284, %found.conflict287
  %bound0289 = icmp ult ptr %.072.lcssa, %i.bc
  %bound1290 = icmp ult ptr %.074.lcssa, %i.bb
  %found.conflict291 = and i1 %bound0289, %bound1290
  %conflict.rdx292 = or i1 %conflict.rdx288, %found.conflict291
  %bound0293 = icmp ult ptr %.072.lcssa, %i.bd
  %bound1294 = icmp ult ptr %.078.lcssa, %i.bb
  %found.conflict295 = and i1 %bound0293, %bound1294
  %conflict.rdx296 = or i1 %conflict.rdx292, %found.conflict295
  %bound0297 = icmp ult ptr %.072.lcssa, %i.bg
  %bound1298 = icmp ult ptr %.069.lcssa, %i.bb
  %found.conflict299 = and i1 %bound0297, %bound1298
  %conflict.rdx300 = or i1 %conflict.rdx296, %found.conflict299
  %bound0301 = icmp ult ptr %.074.lcssa, %i.bd
  %bound1302 = icmp ult ptr %.078.lcssa, %i.bc
  %found.conflict303 = and i1 %bound0301, %bound1302
  %conflict.rdx304 = or i1 %conflict.rdx300, %found.conflict303
  %bound0305 = icmp ult ptr %.074.lcssa, %i.bg
  %bound1306 = icmp ult ptr %.069.lcssa, %i.bc
  %found.conflict307 = and i1 %bound0305, %bound1306
  %conflict.rdx308 = or i1 %conflict.rdx304, %found.conflict307
  %bound0309 = icmp ult ptr %.078.lcssa, %i.bg
  %bound1310 = icmp ult ptr %.069.lcssa, %i.bd
  %found.conflict311 = and i1 %bound0309, %bound1310
  %conflict.rdx312 = or i1 %conflict.rdx308, %found.conflict311
  br i1 %conflict.rdx312, label %.lr.ph204.preheader325, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 8589934588              ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec, 4
  %i.bi = getelementptr i8, ptr %.069.lcssa, i64 %i.bh
  %i.bj = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.bk = getelementptr i8, ptr %.070.lcssa, i64 %i.bj
  %i.bl = getelementptr i8, ptr %.072.lcssa, i64 %i.bj
  %i.bm = getelementptr i8, ptr %.074.lcssa, i64 %i.bj
  %i.bn = trunc i64 %n.vec to i32
  %i.bo = add i32 %.076.lcssa, %i.bn
  %i.bp = getelementptr i8, ptr %.078.lcssa, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %.069.lcssa, i64 %i.bq ; 4 uses
  %next.gep313 = getelementptr i8, ptr %i.br, i64 16
  %i.bs = getelementptr i8, ptr %.069.lcssa, i64 %i.bq ; 4 uses
  %next.gep314 = getelementptr i8, ptr %i.bs, i64 32
  %i.bt = getelementptr i8, ptr %.069.lcssa, i64 %i.bq ; 4 uses
  %next.gep315 = getelementptr i8, ptr %i.bt, i64 48
  %i.bu = shl i64 %index, 2                       ; 4 uses
  %next.gep316 = getelementptr i8, ptr %.070.lcssa, i64 %i.bu
  %next.gep317 = getelementptr i8, ptr %.072.lcssa, i64 %i.bu
  %next.gep318 = getelementptr i8, ptr %.074.lcssa, i64 %i.bu
  %next.gep319 = getelementptr i8, ptr %.078.lcssa, i64 %i.bu
  %i.bv = load float, ptr %next.gep, align 4, !tbaa !51, !alias.scope !190
  %i.bw = load float, ptr %next.gep313, align 4, !tbaa !51, !alias.scope !190
  %i.bx = load float, ptr %next.gep314, align 4, !tbaa !51, !alias.scope !190
  %i.by = load float, ptr %next.gep315, align 4, !tbaa !51, !alias.scope !190
  %i.bz = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.ca = insertelement <4 x float> %i.bz, float %i.bw, i64 1
  %i.cb = insertelement <4 x float> %i.ca, float %i.bx, i64 2
  %i.cc = insertelement <4 x float> %i.cb, float %i.by, i64 3
  store <4 x float> %i.cc, ptr %next.gep316, align 4, !tbaa !51, !alias.scope !191, !noalias !192
  %i.cd = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ce = getelementptr i8, ptr %i.br, i64 20
  %i.cf = getelementptr i8, ptr %i.bs, i64 36
  %i.cg = getelementptr i8, ptr %i.bt, i64 52
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !51, !alias.scope !190
  %i.ci = load float, ptr %i.ce, align 4, !tbaa !51, !alias.scope !190
  %i.cj = load float, ptr %i.cf, align 4, !tbaa !51, !alias.scope !190
  %i.ck = load float, ptr %i.cg, align 4, !tbaa !51, !alias.scope !190
  %i.cl = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cm = insertelement <4 x float> %i.cl, float %i.ci, i64 1
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = insertelement <4 x float> %i.cn, float %i.ck, i64 3
  store <4 x float> %i.co, ptr %next.gep317, align 4, !tbaa !51, !alias.scope !193, !noalias !194
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.cq = getelementptr i8, ptr %i.br, i64 24
  %i.cr = getelementptr i8, ptr %i.bs, i64 40
  %i.cs = getelementptr i8, ptr %i.bt, i64 56
  %i.ct = load float, ptr %i.cp, align 4, !tbaa !51, !alias.scope !190
  %i.cu = load float, ptr %i.cq, align 4, !tbaa !51, !alias.scope !190
  %i.cv = load float, ptr %i.cr, align 4, !tbaa !51, !alias.scope !190
  %i.cw = load float, ptr %i.cs, align 4, !tbaa !51, !alias.scope !190
  %i.cx = insertelement <4 x float> poison, float %i.ct, i64 0
  %i.cy = insertelement <4 x float> %i.cx, float %i.cu, i64 1
  %i.cz = insertelement <4 x float> %i.cy, float %i.cv, i64 2
  %i.da = insertelement <4 x float> %i.cz, float %i.cw, i64 3
  store <4 x float> %i.da, ptr %next.gep318, align 4, !tbaa !51, !alias.scope !195, !noalias !196
  %i.db = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.dc = getelementptr i8, ptr %i.br, i64 28
  %i.dd = getelementptr i8, ptr %i.bs, i64 44
  %i.de = getelementptr i8, ptr %i.bt, i64 60
  %i.df = load float, ptr %i.db, align 4, !tbaa !51, !alias.scope !190
  %i.dg = load float, ptr %i.dc, align 4, !tbaa !51, !alias.scope !190
  %i.dh = load float, ptr %i.dd, align 4, !tbaa !51, !alias.scope !190
  %i.di = load float, ptr %i.de, align 4, !tbaa !51, !alias.scope !190
  %i.dj = insertelement <4 x float> poison, float %i.df, i64 0
  %i.dk = insertelement <4 x float> %i.dj, float %i.dg, i64 1
  %i.dl = insertelement <4 x float> %i.dk, float %i.dh, i64 2
  %i.dm = insertelement <4 x float> %i.dl, float %i.di, i64 3
  store <4 x float> %i.dm, ptr %next.gep319, align 4, !tbaa !51, !alias.scope !197, !noalias !190
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dn = icmp eq i64 %index.next, %n.vec
  br i1 %i.dn, label %middle.block, label %vector.body, !llvm.loop !185

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph204.preheader325

.lr.ph204.preheader325:                           ; preds = %vector.memcheck, %.lr.ph204.preheader, %middle.block
  %.1203.ph = phi ptr [ %.069.lcssa, %vector.memcheck ], [ %.069.lcssa, %.lr.ph204.preheader ], [ %i.bi, %middle.block ] ; 6 uses
  %.171202.ph = phi ptr [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %.lr.ph204.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %.173201.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph204.preheader ], [ %i.bl, %middle.block ] ; 3 uses
  %.175200.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph204.preheader ], [ %i.bm, %middle.block ] ; 3 uses
  %.177199.ph = phi i32 [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph204.preheader ], [ %i.bo, %middle.block ] ; 4 uses
  %.179198.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph204.preheader ], [ %i.bp, %middle.block ] ; 3 uses
  %i.do = sub i32 %i.as, %.177199.ph
  %.neg = add i32 %.177199.ph, 1
  %xtraiter = and i32 %i.do, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph204.prol.loopexit, label %.lr.ph204.prol

.lr.ph204.prol:                                   ; preds = %.lr.ph204.preheader325
  %i.dp = load float, ptr %.1203.ph, align 4, !tbaa !51
  %i.dq = getelementptr inbounds nuw i8, ptr %.171202.ph, i64 4
  store float %i.dp, ptr %.171202.ph, align 4, !tbaa !51
  %i.dr = getelementptr inbounds nuw i8, ptr %.1203.ph, i64 4
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !51
  %i.dt = getelementptr inbounds nuw i8, ptr %.173201.ph, i64 4
  store float %i.ds, ptr %.173201.ph, align 4, !tbaa !51
  %i.du = getelementptr inbounds nuw i8, ptr %.1203.ph, i64 8
  %i.dv = load float, ptr %i.du, align 4, !tbaa !51
  %i.dw = getelementptr inbounds nuw i8, ptr %.175200.ph, i64 4
  store float %i.dv, ptr %.175200.ph, align 4, !tbaa !51
  %i.dx = getelementptr inbounds nuw i8, ptr %.1203.ph, i64 12
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !51
  %i.dz = getelementptr inbounds nuw i8, ptr %.179198.ph, i64 4
  store float %i.dy, ptr %.179198.ph, align 4, !tbaa !51
  %i.ea = getelementptr inbounds nuw i8, ptr %.1203.ph, i64 16
  %i.eb = add nuw nsw i32 %.177199.ph, 1
  br label %.lr.ph204.prol.loopexit

.lr.ph204.prol.loopexit:                          ; preds = %.lr.ph204.prol, %.lr.ph204.preheader325
  %.1203.unr = phi ptr [ %.1203.ph, %.lr.ph204.preheader325 ], [ %i.ea, %.lr.ph204.prol ]
  %.171202.unr = phi ptr [ %.171202.ph, %.lr.ph204.preheader325 ], [ %i.dq, %.lr.ph204.prol ]
  %.173201.unr = phi ptr [ %.173201.ph, %.lr.ph204.preheader325 ], [ %i.dt, %.lr.ph204.prol ]
  %.175200.unr = phi ptr [ %.175200.ph, %.lr.ph204.preheader325 ], [ %i.dw, %.lr.ph204.prol ]
  %.177199.unr = phi i32 [ %.177199.ph, %.lr.ph204.preheader325 ], [ %i.eb, %.lr.ph204.prol ]
  %.179198.unr = phi ptr [ %.179198.ph, %.lr.ph204.preheader325 ], [ %i.dz, %.lr.ph204.prol ]
  %i.ec = icmp eq i32 %i.as, %.neg
  br i1 %i.ec, label %._crit_edge, label %.lr.ph204

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.069191 = phi ptr [ %i.em, %.lr.ph ], [ %i.x, %.noexc ] ; 5 uses
  %.070190 = phi ptr [ %i.en, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.072189 = phi ptr [ %i.eo, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %.074188 = phi ptr [ %i.ep, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.076187 = phi i32 [ %i.er, %.lr.ph ], [ 0, %.noexc ]
  %.078186 = phi ptr [ %i.eq, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %6 = load <4 x float>, ptr %.069191, align 16, !tbaa !55 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.069191, i64 16
  %8 = load <4 x float>, ptr %7, align 16, !tbaa !55 ; 2 uses
  %9 = getelementptr inbounds nuw i8, ptr %.069191, i64 32
  %10 = load <4 x float>, ptr %9, align 16, !tbaa !55 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.069191, i64 48
  %11 = load <4 x float>, ptr %i.ed, align 16, !tbaa !55 ; 2 uses
  %i.ee = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ef = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.eg = shufflevector <4 x float> %6, <4 x float> %8, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.eh = shufflevector <4 x float> %10, <4 x float> %11, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ei = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ej = shufflevector <4 x float> %i.ef, <4 x float> %i.ee, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.ek = shufflevector <4 x float> %i.eg, <4 x float> %i.eh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.el = shufflevector <4 x float> %i.eh, <4 x float> %i.eg, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.ei, ptr %.070190, align 1, !tbaa !55
  store <4 x float> %i.ej, ptr %.072189, align 1, !tbaa !55
  store <4 x float> %i.ek, ptr %.074188, align 1, !tbaa !55
  store <4 x float> %i.el, ptr %.078186, align 1, !tbaa !55
  %i.em = getelementptr inbounds nuw i8, ptr %.069191, i64 64 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.070190, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.072189, i64 16 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.074188, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.078186, i64 16 ; 2 uses
  %i.er = add nuw nsw i32 %.076187, 4             ; 3 uses
  %i.es = or disjoint i32 %i.er, 3
  %i.et = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.eu = icmp slt i32 %i.es, %i.et
  br i1 %i.eu, label %.lr.ph, label %.preheader, !llvm.loop !186

.lr.ph204:                                        ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204
  %.1203 = phi ptr [ %i.fs, %.lr.ph204 ], [ %.1203.unr, %.lr.ph204.prol.loopexit ] ; 9 uses
  %.171202 = phi ptr [ %i.fi, %.lr.ph204 ], [ %.171202.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.173201 = phi ptr [ %i.fl, %.lr.ph204 ], [ %.173201.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.175200 = phi ptr [ %i.fo, %.lr.ph204 ], [ %.175200.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %.177199 = phi i32 [ %i.ft, %.lr.ph204 ], [ %.177199.unr, %.lr.ph204.prol.loopexit ]
  %.179198 = phi ptr [ %i.fr, %.lr.ph204 ], [ %.179198.unr, %.lr.ph204.prol.loopexit ] ; 3 uses
  %i.ev = load float, ptr %.1203, align 4, !tbaa !51
  %i.ew = getelementptr inbounds nuw i8, ptr %.171202, i64 4
  store float %i.ev, ptr %.171202, align 4, !tbaa !51
  %i.ex = getelementptr inbounds nuw i8, ptr %.1203, i64 4
  %i.ey = load float, ptr %i.ex, align 4, !tbaa !51
  %i.ez = getelementptr inbounds nuw i8, ptr %.173201, i64 4
  store float %i.ey, ptr %.173201, align 4, !tbaa !51
  %i.fa = getelementptr inbounds nuw i8, ptr %.1203, i64 8
  %i.fb = load float, ptr %i.fa, align 4, !tbaa !51
  %i.fc = getelementptr inbounds nuw i8, ptr %.175200, i64 4
  store float %i.fb, ptr %.175200, align 4, !tbaa !51
  %i.fd = getelementptr inbounds nuw i8, ptr %.1203, i64 12
  %i.fe = load float, ptr %i.fd, align 4, !tbaa !51
  %i.ff = getelementptr inbounds nuw i8, ptr %.179198, i64 4
  store float %i.fe, ptr %.179198, align 4, !tbaa !51
  %i.fg = getelementptr inbounds nuw i8, ptr %.1203, i64 16
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !51
  %i.fi = getelementptr inbounds nuw i8, ptr %.171202, i64 8
  store float %i.fh, ptr %i.ew, align 4, !tbaa !51
  %i.fj = getelementptr inbounds nuw i8, ptr %.1203, i64 20
  %i.fk = load float, ptr %i.fj, align 4, !tbaa !51
  %i.fl = getelementptr inbounds nuw i8, ptr %.173201, i64 8
  store float %i.fk, ptr %i.ez, align 4, !tbaa !51
  %i.fm = getelementptr inbounds nuw i8, ptr %.1203, i64 24
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !51
  %i.fo = getelementptr inbounds nuw i8, ptr %.175200, i64 8
  store float %i.fn, ptr %i.fc, align 4, !tbaa !51
  %i.fp = getelementptr inbounds nuw i8, ptr %.1203, i64 28
  %i.fq = load float, ptr %i.fp, align 4, !tbaa !51
  %i.fr = getelementptr inbounds nuw i8, ptr %.179198, i64 8
  store float %i.fq, ptr %i.ff, align 4, !tbaa !51
  %i.fs = getelementptr inbounds nuw i8, ptr %.1203, i64 32
  %i.ft = add nuw nsw i32 %.177199, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.ft, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph204, !llvm.loop !187

._crit_edge:                                      ; preds = %.lr.ph204.prol.loopexit, %.lr.ph204, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond216.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond216.not, label %._crit_edge207, label %.noexc

._crit_edge207:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge207, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.14(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 3 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !214 ; 24 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !214 ; 10 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !214 ; 10 uses
  %factor.op.mul = mul i64 %i.n, %i.p             ; 8 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !215 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !215 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !215 ; 4 uses
  %factor.op.mul293 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 5 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge278.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64                     ; 5 uses
  %i.y = add nsw i32 %i.j, 1
  %i.z = mul i64 %i.p, %i.n                       ; 2 uses
  %i.aa = mul i64 %i.u, %i.s
  %i.ab = shl nsw i64 %i.x, 3                     ; 15 uses
  %i.ac = sub i32 %i.j, %i.k
  %i.ad = zext i32 %i.ac to i64                   ; 2 uses
  %i.ae = shl nuw nsw i64 %i.ad, 3                ; 8 uses
  %i.af = add nsw i64 %i.ab, %i.ae
  %i.ag = mul i64 %i.z, %i.af
  %i.ah = add nsw i32 %i.v, -1
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = shl nuw nsw i64 %i.ai, 2                ; 8 uses
  %i.ak = getelementptr i8, ptr %i.l, i64 %i.ag
  %i.al = getelementptr i8, ptr %i.ak, i64 %i.aj
  %scevgep = getelementptr i8, ptr %i.al, i64 4
  %i.am = mul i64 %i.p, %i.n                      ; 2 uses
  %i.an = mul i64 %i.am, %i.x
  %i.ao = shl i64 %i.an, 3
  %scevgep345 = getelementptr i8, ptr %i.l, i64 %i.ao
  %i.ap = add nsw i64 %i.ab, %i.ae
  %i.aq = or disjoint i64 %i.ap, 1
  %i.ar = mul i64 %i.am, %i.aq
  %i.as = getelementptr i8, ptr %i.l, i64 %i.ar
  %i.at = getelementptr i8, ptr %i.as, i64 %i.aj
  %scevgep346 = getelementptr i8, ptr %i.at, i64 4
  %i.au = mul i64 %i.p, %i.n                      ; 2 uses
  %i.av = or disjoint i64 %i.ab, 1
  %i.aw = mul i64 %i.au, %i.av
  %scevgep347 = getelementptr i8, ptr %i.l, i64 %i.aw
  %i.ax = add nsw i64 %i.ab, %i.ae
  %i.ay = or disjoint i64 %i.ax, 2
  %i.az = mul i64 %i.au, %i.ay
  %i.ba = getelementptr i8, ptr %i.l, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 %i.aj
  %scevgep348 = getelementptr i8, ptr %i.bb, i64 4
  %i.bc = mul i64 %i.p, %i.n                      ; 2 uses
  %i.bd = or disjoint i64 %i.ab, 2
  %i.be = mul i64 %i.bc, %i.bd
  %scevgep349 = getelementptr i8, ptr %i.l, i64 %i.be
  %i.bf = add nsw i64 %i.ab, %i.ae
  %i.bg = or disjoint i64 %i.bf, 3
  %i.bh = mul i64 %i.bc, %i.bg
  %i.bi = getelementptr i8, ptr %i.l, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 %i.aj
  %i.bk = mul i64 %i.p, %i.n                      ; 2 uses
  %i.bl = or disjoint i64 %i.ab, 3
  %i.bm = mul i64 %i.bk, %i.bl
  %scevgep351 = getelementptr i8, ptr %i.l, i64 %i.bm
  %i.bn = add nsw i64 %i.ab, %i.ae
  %i.bo = or disjoint i64 %i.bn, 4
  %i.bp = mul i64 %i.bk, %i.bo
  %i.bq = getelementptr i8, ptr %i.l, i64 %i.bp
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.aj
  %i.bs = insertelement <2 x ptr> poison, ptr %i.br, i64 0
  %i.bt = insertelement <2 x ptr> %i.bs, ptr %i.bj, i64 1
  %i.bu = getelementptr i8, <2 x ptr> %i.bt, i64 4
  %i.bv = mul i64 %i.p, %i.n                      ; 2 uses
  %i.bw = or disjoint i64 %i.ab, 4
  %i.bx = mul i64 %i.bv, %i.bw
  %scevgep353 = getelementptr i8, ptr %i.l, i64 %i.bx
  %i.by = add nsw i64 %i.ab, %i.ae
  %i.bz = or disjoint i64 %i.by, 5
  %i.ca = mul i64 %i.bv, %i.bz
  %i.cb = getelementptr i8, ptr %i.l, i64 %i.ca
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.aj
  %i.cd = mul i64 %i.p, %i.n                      ; 2 uses
  %i.ce = or disjoint i64 %i.ab, 5
  %i.cf = mul i64 %i.cd, %i.ce
  %scevgep355 = getelementptr i8, ptr %i.l, i64 %i.cf
  %i.cg = add nsw i64 %i.ab, %i.ae
  %i.ch = or disjoint i64 %i.cg, 6
end_hunk_1
begin_hunk_2_@_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.24:bb.a
  %found.conflict181 = and i1 %bound0179, %bound1180
  %conflict.rdx182 = or i1 %conflict.rdx178, %found.conflict181
  %bound0183 = icmp ult ptr %.068.lcssa, %i.bf
  %bound1184 = icmp ult ptr %.059.lcssa, %i.ba
  %found.conflict185 = and i1 %bound0183, %bound1184
  %conflict.rdx186 = or i1 %conflict.rdx182, %found.conflict185
  %bound0187 = icmp ult ptr %.066.lcssa, %i.bc
  %bound1188 = icmp ult ptr %.064.lcssa, %i.bb
  %found.conflict189 = and i1 %bound0187, %bound1188
  %conflict.rdx190 = or i1 %conflict.rdx186, %found.conflict189
  %bound0191 = icmp ult ptr %.066.lcssa, %i.bf
  %bound1192 = icmp ult ptr %.059.lcssa, %i.bb
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx194 = or i1 %conflict.rdx190, %found.conflict193
  %bound0195 = icmp ult ptr %.064.lcssa, %i.bf
  %bound1196 = icmp ult ptr %.059.lcssa, %i.bc
  %found.conflict197 = and i1 %bound0195, %bound1196
  %conflict.rdx198 = or i1 %conflict.rdx194, %found.conflict197
  br i1 %conflict.rdx198, label %.lr.ph88.preheader215, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 8589934584              ; 5 uses
  %i.bg = shl nuw nsw i64 %n.vec, 3
  %i.bh = getelementptr i8, ptr %.059.lcssa, i64 %i.bg
  %i.bi = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.bj = getelementptr i8, ptr %.060.lcssa, i64 %i.bi
  %i.bk = trunc i64 %n.vec to i32
  %i.bl = add i32 %.062.lcssa, %i.bk
  %i.bm = getelementptr i8, ptr %.064.lcssa, i64 %i.bi
  %i.bn = getelementptr i8, ptr %.066.lcssa, i64 %i.bi
  %i.bo = getelementptr i8, ptr %.068.lcssa, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bp = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %i.bq = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep199 = getelementptr i8, ptr %i.bq, i64 8
  %i.br = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep200 = getelementptr i8, ptr %i.br, i64 16
  %i.bs = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep201 = getelementptr i8, ptr %i.bs, i64 24
  %i.bt = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep202 = getelementptr i8, ptr %i.bt, i64 32
  %i.bu = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep203 = getelementptr i8, ptr %i.bu, i64 40
  %i.bv = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep204 = getelementptr i8, ptr %i.bv, i64 48
  %i.bw = getelementptr i8, ptr %.059.lcssa, i64 %i.bp ; 4 uses
  %next.gep205 = getelementptr i8, ptr %i.bw, i64 56
  %i.bx = shl i64 %index, 1                       ; 4 uses
  %next.gep206 = getelementptr i8, ptr %.060.lcssa, i64 %i.bx
  %next.gep207 = getelementptr i8, ptr %.064.lcssa, i64 %i.bx
  %next.gep208 = getelementptr i8, ptr %.066.lcssa, i64 %i.bx
  %next.gep209 = getelementptr i8, ptr %.068.lcssa, i64 %i.bx
  %i.by = load i16, ptr %next.gep, align 2, !tbaa !60, !alias.scope !340
  %i.bz = load i16, ptr %next.gep199, align 2, !tbaa !60, !alias.scope !340
  %i.ca = load i16, ptr %next.gep200, align 2, !tbaa !60, !alias.scope !340
  %i.cb = load i16, ptr %next.gep201, align 2, !tbaa !60, !alias.scope !340
  %i.cc = load i16, ptr %next.gep202, align 2, !tbaa !60, !alias.scope !340
  %i.cd = load i16, ptr %next.gep203, align 2, !tbaa !60, !alias.scope !340
  %i.ce = load i16, ptr %next.gep204, align 2, !tbaa !60, !alias.scope !340
  %i.cf = load i16, ptr %next.gep205, align 2, !tbaa !60, !alias.scope !340
  %i.cg = insertelement <8 x i16> poison, i16 %i.by, i64 0
  %i.ch = insertelement <8 x i16> %i.cg, i16 %i.bz, i64 1
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 2
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 3
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 4
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 5
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 6
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 7
  store <8 x i16> %i.cn, ptr %next.gep206, align 2, !tbaa !60, !alias.scope !341, !noalias !342
  %i.co = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cp = getelementptr i8, ptr %i.bq, i64 10
  %i.cq = getelementptr i8, ptr %i.br, i64 18
  %i.cr = getelementptr i8, ptr %i.bs, i64 26
  %i.cs = getelementptr i8, ptr %i.bt, i64 34
  %i.ct = getelementptr i8, ptr %i.bu, i64 42
  %i.cu = getelementptr i8, ptr %i.bv, i64 50
  %i.cv = getelementptr i8, ptr %i.bw, i64 58
  %i.cw = load i16, ptr %i.co, align 2, !tbaa !60, !alias.scope !340
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !60, !alias.scope !340
  %i.cy = load i16, ptr %i.cq, align 2, !tbaa !60, !alias.scope !340
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !60, !alias.scope !340
  %i.da = load i16, ptr %i.cs, align 2, !tbaa !60, !alias.scope !340
  %i.db = load i16, ptr %i.ct, align 2, !tbaa !60, !alias.scope !340
  %i.dc = load i16, ptr %i.cu, align 2, !tbaa !60, !alias.scope !340
  %i.dd = load i16, ptr %i.cv, align 2, !tbaa !60, !alias.scope !340
  %i.de = insertelement <8 x i16> poison, i16 %i.cw, i64 0
  %i.df = insertelement <8 x i16> %i.de, i16 %i.cx, i64 1
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 2
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 3
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 4
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 5
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 6
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 7
  store <8 x i16> %i.dl, ptr %next.gep209, align 2, !tbaa !60, !alias.scope !343, !noalias !344
  %i.dm = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.dn = getelementptr i8, ptr %i.bq, i64 12
  %i.do = getelementptr i8, ptr %i.br, i64 20
  %i.dp = getelementptr i8, ptr %i.bs, i64 28
  %i.dq = getelementptr i8, ptr %i.bt, i64 36
  %i.dr = getelementptr i8, ptr %i.bu, i64 44
  %i.ds = getelementptr i8, ptr %i.bv, i64 52
  %i.dt = getelementptr i8, ptr %i.bw, i64 60
  %i.du = load i16, ptr %i.dm, align 2, !tbaa !60, !alias.scope !340
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !60, !alias.scope !340
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !60, !alias.scope !340
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !60, !alias.scope !340
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !60, !alias.scope !340
  %i.dz = load i16, ptr %i.dr, align 2, !tbaa !60, !alias.scope !340
  %i.ea = load i16, ptr %i.ds, align 2, !tbaa !60, !alias.scope !340
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !60, !alias.scope !340
  %i.ec = insertelement <8 x i16> poison, i16 %i.du, i64 0
  %i.ed = insertelement <8 x i16> %i.ec, i16 %i.dv, i64 1
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 2
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 3
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 4
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.dz, i64 5
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ea, i64 6
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 7
  store <8 x i16> %i.ej, ptr %next.gep208, align 2, !tbaa !60, !alias.scope !345, !noalias !346
  %i.ek = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.el = getelementptr i8, ptr %i.bq, i64 14
  %i.em = getelementptr i8, ptr %i.br, i64 22
  %i.en = getelementptr i8, ptr %i.bs, i64 30
  %i.eo = getelementptr i8, ptr %i.bt, i64 38
  %i.ep = getelementptr i8, ptr %i.bu, i64 46
  %i.eq = getelementptr i8, ptr %i.bv, i64 54
  %i.er = getelementptr i8, ptr %i.bw, i64 62
  %i.es = load i16, ptr %i.ek, align 2, !tbaa !60, !alias.scope !340
  %i.et = load i16, ptr %i.el, align 2, !tbaa !60, !alias.scope !340
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !60, !alias.scope !340
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !60, !alias.scope !340
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !60, !alias.scope !340
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !60, !alias.scope !340
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !60, !alias.scope !340
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !60, !alias.scope !340
  %i.fa = insertelement <8 x i16> poison, i16 %i.es, i64 0
  %i.fb = insertelement <8 x i16> %i.fa, i16 %i.et, i64 1
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 2
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 3
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 4
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 5
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 6
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 7
  store <8 x i16> %i.fh, ptr %next.gep207, align 2, !tbaa !60, !alias.scope !347, !noalias !340
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fi = icmp eq i64 %index.next, %n.vec
  br i1 %i.fi, label %middle.block, label %vector.body, !llvm.loop !337

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph88.preheader215

.lr.ph88.preheader215:                            ; preds = %vector.memcheck, %.lr.ph88.preheader, %middle.block
  %.187.ph = phi ptr [ %.059.lcssa, %vector.memcheck ], [ %.059.lcssa, %.lr.ph88.preheader ], [ %i.bh, %middle.block ] ; 6 uses
  %.16186.ph = phi ptr [ %.060.lcssa, %vector.memcheck ], [ %.060.lcssa, %.lr.ph88.preheader ], [ %i.bj, %middle.block ] ; 3 uses
  %.16385.ph = phi i32 [ %.062.lcssa, %vector.memcheck ], [ %.062.lcssa, %.lr.ph88.preheader ], [ %i.bl, %middle.block ] ; 4 uses
  %.16584.ph = phi ptr [ %.064.lcssa, %vector.memcheck ], [ %.064.lcssa, %.lr.ph88.preheader ], [ %i.bm, %middle.block ] ; 3 uses
  %.16783.ph = phi ptr [ %.066.lcssa, %vector.memcheck ], [ %.066.lcssa, %.lr.ph88.preheader ], [ %i.bn, %middle.block ] ; 3 uses
  %.16982.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph88.preheader ], [ %i.bo, %middle.block ] ; 3 uses
  %i.fj = sub i32 %i.ar, %.16385.ph
  %.neg = add i32 %.16385.ph, 1
  %xtraiter = and i32 %i.fj, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph88.prol.loopexit, label %.lr.ph88.prol

.lr.ph88.prol:                                    ; preds = %.lr.ph88.preheader215
  %i.fk = load i16, ptr %.187.ph, align 2, !tbaa !60
  %i.fl = getelementptr inbounds nuw i8, ptr %.16186.ph, i64 2
  store i16 %i.fk, ptr %.16186.ph, align 2, !tbaa !60
  %i.fm = getelementptr inbounds nuw i8, ptr %.187.ph, i64 2
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !60
  %i.fo = getelementptr inbounds nuw i8, ptr %.16982.ph, i64 2
  store i16 %i.fn, ptr %.16982.ph, align 2, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %.187.ph, i64 4
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !60
  %i.fr = getelementptr inbounds nuw i8, ptr %.16783.ph, i64 2
  store i16 %i.fq, ptr %.16783.ph, align 2, !tbaa !60
  %i.fs = getelementptr inbounds nuw i8, ptr %.187.ph, i64 6
  %i.ft = load i16, ptr %i.fs, align 2, !tbaa !60
  %i.fu = getelementptr inbounds nuw i8, ptr %.16584.ph, i64 2
  store i16 %i.ft, ptr %.16584.ph, align 2, !tbaa !60
  %i.fv = getelementptr inbounds nuw i8, ptr %.187.ph, i64 8
  %i.fw = add nuw nsw i32 %.16385.ph, 1
  br label %.lr.ph88.prol.loopexit

.lr.ph88.prol.loopexit:                           ; preds = %.lr.ph88.prol, %.lr.ph88.preheader215
  %.187.unr = phi ptr [ %.187.ph, %.lr.ph88.preheader215 ], [ %i.fv, %.lr.ph88.prol ]
  %.16186.unr = phi ptr [ %.16186.ph, %.lr.ph88.preheader215 ], [ %i.fl, %.lr.ph88.prol ]
  %.16385.unr = phi i32 [ %.16385.ph, %.lr.ph88.preheader215 ], [ %i.fw, %.lr.ph88.prol ]
  %.16584.unr = phi ptr [ %.16584.ph, %.lr.ph88.preheader215 ], [ %i.fu, %.lr.ph88.prol ]
  %.16783.unr = phi ptr [ %.16783.ph, %.lr.ph88.preheader215 ], [ %i.fr, %.lr.ph88.prol ]
  %.16982.unr = phi ptr [ %.16982.ph, %.lr.ph88.preheader215 ], [ %i.fo, %.lr.ph88.prol ]
  %i.fx = icmp eq i32 %i.ar, %.neg
  br i1 %i.fx, label %._crit_edge, label %.lr.ph88

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.05975 = phi ptr [ %i.gi, %.lr.ph ], [ %i.y, %bb.c ] ; 3 uses
  %.06074 = phi ptr [ %i.gj, %.lr.ph ], [ %i.ag, %bb.c ] ; 2 uses
  %.06273 = phi i32 [ %i.gn, %.lr.ph ], [ 0, %bb.c ]
  %.06472 = phi ptr [ %i.gm, %.lr.ph ], [ %i.ap, %bb.c ] ; 2 uses
  %.06671 = phi ptr [ %i.gl, %.lr.ph ], [ %i.am, %bb.c ] ; 2 uses
  %.06870 = phi ptr [ %i.gk, %.lr.ph ], [ %i.aj, %bb.c ] ; 2 uses
  %6 = load <8 x i16>, ptr %.05975, align 1, !tbaa !55 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.05975, i64 16
  %8 = load <8 x i16>, ptr %7, align 1, !tbaa !55 ; 2 uses
  %i.fy = shufflevector <8 x i16> %6, <8 x i16> %8, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.fz = bitcast <8 x i16> %i.fy to <2 x i64>
  %i.ga = shufflevector <8 x i16> %6, <8 x i16> %8, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.gb = bitcast <8 x i16> %i.ga to <2 x i64>
  %i.gc = extractelement <2 x i64> %i.fz, i64 0
  store i64 %i.gc, ptr %.06074, align 1, !tbaa !55
  %i.gd = bitcast <8 x i16> %i.fy to <2 x i64>
  %i.ge = extractelement <2 x i64> %i.gd, i64 1
  store i64 %i.ge, ptr %.06870, align 1, !tbaa !55
  %i.gf = extractelement <2 x i64> %i.gb, i64 0
  store i64 %i.gf, ptr %.06671, align 1, !tbaa !55
  %i.gg = bitcast <8 x i16> %i.ga to <2 x i64>
  %i.gh = extractelement <2 x i64> %i.gg, i64 1
  store i64 %i.gh, ptr %.06472, align 1, !tbaa !55
  %i.gi = getelementptr inbounds nuw i8, ptr %.05975, i64 32 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %.06074, i64 8 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.06870, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.06671, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.06472, i64 8 ; 2 uses
  %i.gn = add nuw nsw i32 %.06273, 4              ; 3 uses
  %i.go = or disjoint i32 %i.gn, 3
  %i.gp = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.gq = icmp slt i32 %i.go, %i.gp
  br i1 %i.gq, label %.lr.ph, label %.preheader, !llvm.loop !338

.lr.ph88:                                         ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88
  %.187 = phi ptr [ %i.ho, %.lr.ph88 ], [ %.187.unr, %.lr.ph88.prol.loopexit ] ; 9 uses
  %.16186 = phi ptr [ %i.he, %.lr.ph88 ], [ %.16186.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16385 = phi i32 [ %i.hp, %.lr.ph88 ], [ %.16385.unr, %.lr.ph88.prol.loopexit ]
  %.16584 = phi ptr [ %i.hn, %.lr.ph88 ], [ %.16584.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16783 = phi ptr [ %i.hk, %.lr.ph88 ], [ %.16783.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %.16982 = phi ptr [ %i.hh, %.lr.ph88 ], [ %.16982.unr, %.lr.ph88.prol.loopexit ] ; 3 uses
  %i.gr = load i16, ptr %.187, align 2, !tbaa !60
  %i.gs = getelementptr inbounds nuw i8, ptr %.16186, i64 2
  store i16 %i.gr, ptr %.16186, align 2, !tbaa !60
  %i.gt = getelementptr inbounds nuw i8, ptr %.187, i64 2
  %i.gu = load i16, ptr %i.gt, align 2, !tbaa !60
  %i.gv = getelementptr inbounds nuw i8, ptr %.16982, i64 2
  store i16 %i.gu, ptr %.16982, align 2, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %.187, i64 4
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !60
  %i.gy = getelementptr inbounds nuw i8, ptr %.16783, i64 2
  store i16 %i.gx, ptr %.16783, align 2, !tbaa !60
  %i.gz = getelementptr inbounds nuw i8, ptr %.187, i64 6
  %i.ha = load i16, ptr %i.gz, align 2, !tbaa !60
  %i.hb = getelementptr inbounds nuw i8, ptr %.16584, i64 2
  store i16 %i.ha, ptr %.16584, align 2, !tbaa !60
  %i.hc = getelementptr inbounds nuw i8, ptr %.187, i64 8
  %i.hd = load i16, ptr %i.hc, align 2, !tbaa !60
  %i.he = getelementptr inbounds nuw i8, ptr %.16186, i64 4
  store i16 %i.hd, ptr %i.gs, align 2, !tbaa !60
  %i.hf = getelementptr inbounds nuw i8, ptr %.187, i64 10
  %i.hg = load i16, ptr %i.hf, align 2, !tbaa !60
  %i.hh = getelementptr inbounds nuw i8, ptr %.16982, i64 4
  store i16 %i.hg, ptr %i.gv, align 2, !tbaa !60
  %i.hi = getelementptr inbounds nuw i8, ptr %.187, i64 12
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !60
  %i.hk = getelementptr inbounds nuw i8, ptr %.16783, i64 4
  store i16 %i.hj, ptr %i.gy, align 2, !tbaa !60
  %i.hl = getelementptr inbounds nuw i8, ptr %.187, i64 14
  %i.hm = load i16, ptr %i.hl, align 2, !tbaa !60
  %i.hn = getelementptr inbounds nuw i8, ptr %.16584, i64 4
  store i16 %i.hm, ptr %i.hb, align 2, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %.187, i64 16
  %i.hp = add nuw nsw i32 %.16385, 2              ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.hp, %i.ar
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph88, !llvm.loop !339

._crit_edge:                                      ; preds = %.lr.ph88.prol.loopexit, %.lr.ph88, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond102.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond102.not, label %._crit_edge93, label %bb.c

._crit_edge93:                                    ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge93, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.25(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not70 = icmp sgt i32 %i.k, %i.j
  br i1 %.not70, label %._crit_edge74.split, label %.lr.ph73

.lr.ph73:                                         ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36     ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 44
  %i.n = load i32, ptr %i.m, align 4, !tbaa !43
  %i.o = sext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !16
  %i.r = mul i64 %i.q, %i.o                       ; 8 uses
  %i.s = load ptr, ptr %4, align 8, !tbaa !36
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !43
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !16
  %factor.op.mul = mul i64 %i.x, %i.v
  %i.y = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.z = icmp sgt i32 %i.y, 0
  br i1 %i.z, label %.lr.ph.preheader, label %._crit_edge74.split

.lr.ph.preheader:                                 ; preds = %.lr.ph73
  %i.aa = sext i32 %i.k to i64
  %i.ab = add nsw i32 %i.j, 1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.aa, %.lr.ph.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.ac = shl nsw i64 %indvars.iv, 3              ; 8 uses
  %i.ad = mul i64 %i.r, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ad
  %i.af = or disjoint i64 %i.ac, 1
  %i.ag = mul i64 %i.r, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ag
  %i.ai = or disjoint i64 %i.ac, 2
  %i.aj = mul i64 %i.r, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.aj
  %i.al = or disjoint i64 %i.ac, 3
  %i.am = mul i64 %i.r, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.am
  %i.ao = or disjoint i64 %i.ac, 4
  %i.ap = mul i64 %i.r, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ap
  %i.ar = or disjoint i64 %i.ac, 5
  %i.as = mul i64 %i.r, %i.ar
  %i.at = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.as
  %i.au = or disjoint i64 %i.ac, 6
  %i.av = mul i64 %i.r, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.av
  %i.ax = or disjoint i64 %i.ac, 7
  %i.ay = mul i64 %i.r, %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.ay
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.ba = getelementptr inbounds nuw i8, ptr %i.s, i64 %.reass
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.069 = phi i32 [ 0, %.lr.ph ], [ %i.bz, %bb.c ]
  %.05068 = phi ptr [ %i.ba, %.lr.ph ], [ %i.by, %bb.c ] ; 9 uses
  %.05167 = phi ptr [ %i.az, %.lr.ph ], [ %i.bv, %bb.c ] ; 2 uses
  %.05266 = phi ptr [ %i.aw, %.lr.ph ], [ %i.bs, %bb.c ] ; 2 uses
  %.05365 = phi ptr [ %i.at, %.lr.ph ], [ %i.bp, %bb.c ] ; 2 uses
  %.05464 = phi ptr [ %i.aq, %.lr.ph ], [ %i.bm, %bb.c ] ; 2 uses
  %.05563 = phi ptr [ %i.an, %.lr.ph ], [ %i.bj, %bb.c ] ; 2 uses
  %.05662 = phi ptr [ %i.ak, %.lr.ph ], [ %i.bg, %bb.c ] ; 2 uses
  %.05761 = phi ptr [ %i.ah, %.lr.ph ], [ %i.bd, %bb.c ] ; 2 uses
  %.05860 = phi ptr [ %i.ae, %.lr.ph ], [ %i.bb, %bb.c ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.05860, i64 2
  %i.bc = load i16, ptr %.05860, align 2, !tbaa !60
  store i16 %i.bc, ptr %.05068, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %.05761, i64 2
  %i.be = load i16, ptr %.05761, align 2, !tbaa !60
  %i.bf = getelementptr inbounds nuw i8, ptr %.05068, i64 2
  store i16 %i.be, ptr %i.bf, align 2, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.05662, i64 2
  %i.bh = load i16, ptr %.05662, align 2, !tbaa !60
  %i.bi = getelementptr inbounds nuw i8, ptr %.05068, i64 4
  store i16 %i.bh, ptr %i.bi, align 2, !tbaa !60
  %i.bj = getelementptr inbounds nuw i8, ptr %.05563, i64 2
  %i.bk = load i16, ptr %.05563, align 2, !tbaa !60
  %i.bl = getelementptr inbounds nuw i8, ptr %.05068, i64 6
  store i16 %i.bk, ptr %i.bl, align 2, !tbaa !60
  %i.bm = getelementptr inbounds nuw i8, ptr %.05464, i64 2
  %i.bn = load i16, ptr %.05464, align 2, !tbaa !60
  %i.bo = getelementptr inbounds nuw i8, ptr %.05068, i64 8
  store i16 %i.bn, ptr %i.bo, align 2, !tbaa !60
  %i.bp = getelementptr inbounds nuw i8, ptr %.05365, i64 2
  %i.bq = load i16, ptr %.05365, align 2, !tbaa !60
  %i.br = getelementptr inbounds nuw i8, ptr %.05068, i64 10
end_hunk_2
begin_hunk_3_@_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.36:bb.a
  %found.conflict285 = and i1 %bound0283, %bound1284
  %conflict.rdx286 = or i1 %conflict.rdx282, %found.conflict285
  %bound0287 = icmp ult ptr %.068.lcssa, %i.bg
  %bound1288 = icmp ult ptr %.059.lcssa, %i.bb
  %found.conflict289 = and i1 %bound0287, %bound1288
  %conflict.rdx290 = or i1 %conflict.rdx286, %found.conflict289
  %bound0291 = icmp ult ptr %.066.lcssa, %i.bd
  %bound1292 = icmp ult ptr %.064.lcssa, %i.bc
  %found.conflict293 = and i1 %bound0291, %bound1292
  %conflict.rdx294 = or i1 %conflict.rdx290, %found.conflict293
  %bound0295 = icmp ult ptr %.066.lcssa, %i.bg
  %bound1296 = icmp ult ptr %.059.lcssa, %i.bc
  %found.conflict297 = and i1 %bound0295, %bound1296
  %conflict.rdx298 = or i1 %conflict.rdx294, %found.conflict297
  %bound0299 = icmp ult ptr %.064.lcssa, %i.bg
  %bound1300 = icmp ult ptr %.059.lcssa, %i.bd
  %found.conflict301 = and i1 %bound0299, %bound1300
  %conflict.rdx302 = or i1 %conflict.rdx298, %found.conflict301
  br i1 %conflict.rdx302, label %.lr.ph194.preheader319, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ax, 8589934584              ; 5 uses
  %i.bh = shl nuw nsw i64 %n.vec, 3
  %i.bi = getelementptr i8, ptr %.059.lcssa, i64 %i.bh
  %i.bj = shl nuw nsw i64 %n.vec, 1               ; 4 uses
  %i.bk = getelementptr i8, ptr %.060.lcssa, i64 %i.bj
  %i.bl = trunc i64 %n.vec to i32
  %i.bm = add i32 %.062.lcssa, %i.bl
  %i.bn = getelementptr i8, ptr %.064.lcssa, i64 %i.bj
  %i.bo = getelementptr i8, ptr %.066.lcssa, i64 %i.bj
  %i.bp = getelementptr i8, ptr %.068.lcssa, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bq = shl i64 %index, 3                       ; 8 uses
  %next.gep = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %i.br = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep303 = getelementptr i8, ptr %i.br, i64 8
  %i.bs = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep304 = getelementptr i8, ptr %i.bs, i64 16
  %i.bt = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep305 = getelementptr i8, ptr %i.bt, i64 24
  %i.bu = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep306 = getelementptr i8, ptr %i.bu, i64 32
  %i.bv = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep307 = getelementptr i8, ptr %i.bv, i64 40
  %i.bw = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep308 = getelementptr i8, ptr %i.bw, i64 48
  %i.bx = getelementptr i8, ptr %.059.lcssa, i64 %i.bq ; 4 uses
  %next.gep309 = getelementptr i8, ptr %i.bx, i64 56
  %i.by = shl i64 %index, 1                       ; 4 uses
  %next.gep310 = getelementptr i8, ptr %.060.lcssa, i64 %i.by
  %next.gep311 = getelementptr i8, ptr %.064.lcssa, i64 %i.by
  %next.gep312 = getelementptr i8, ptr %.066.lcssa, i64 %i.by
  %next.gep313 = getelementptr i8, ptr %.068.lcssa, i64 %i.by
  %i.bz = load i16, ptr %next.gep, align 2, !tbaa !60, !alias.scope !421
  %i.ca = load i16, ptr %next.gep303, align 2, !tbaa !60, !alias.scope !421
  %i.cb = load i16, ptr %next.gep304, align 2, !tbaa !60, !alias.scope !421
  %i.cc = load i16, ptr %next.gep305, align 2, !tbaa !60, !alias.scope !421
  %i.cd = load i16, ptr %next.gep306, align 2, !tbaa !60, !alias.scope !421
  %i.ce = load i16, ptr %next.gep307, align 2, !tbaa !60, !alias.scope !421
  %i.cf = load i16, ptr %next.gep308, align 2, !tbaa !60, !alias.scope !421
  %i.cg = load i16, ptr %next.gep309, align 2, !tbaa !60, !alias.scope !421
  %i.ch = insertelement <8 x i16> poison, i16 %i.bz, i64 0
  %i.ci = insertelement <8 x i16> %i.ch, i16 %i.ca, i64 1
  %i.cj = insertelement <8 x i16> %i.ci, i16 %i.cb, i64 2
  %i.ck = insertelement <8 x i16> %i.cj, i16 %i.cc, i64 3
  %i.cl = insertelement <8 x i16> %i.ck, i16 %i.cd, i64 4
  %i.cm = insertelement <8 x i16> %i.cl, i16 %i.ce, i64 5
  %i.cn = insertelement <8 x i16> %i.cm, i16 %i.cf, i64 6
  %i.co = insertelement <8 x i16> %i.cn, i16 %i.cg, i64 7
  store <8 x i16> %i.co, ptr %next.gep310, align 2, !tbaa !60, !alias.scope !422, !noalias !423
  %i.cp = getelementptr inbounds nuw i8, ptr %next.gep, i64 2
  %i.cq = getelementptr i8, ptr %i.br, i64 10
  %i.cr = getelementptr i8, ptr %i.bs, i64 18
  %i.cs = getelementptr i8, ptr %i.bt, i64 26
  %i.ct = getelementptr i8, ptr %i.bu, i64 34
  %i.cu = getelementptr i8, ptr %i.bv, i64 42
  %i.cv = getelementptr i8, ptr %i.bw, i64 50
  %i.cw = getelementptr i8, ptr %i.bx, i64 58
  %i.cx = load i16, ptr %i.cp, align 2, !tbaa !60, !alias.scope !421
  %i.cy = load i16, ptr %i.cq, align 2, !tbaa !60, !alias.scope !421
  %i.cz = load i16, ptr %i.cr, align 2, !tbaa !60, !alias.scope !421
  %i.da = load i16, ptr %i.cs, align 2, !tbaa !60, !alias.scope !421
  %i.db = load i16, ptr %i.ct, align 2, !tbaa !60, !alias.scope !421
  %i.dc = load i16, ptr %i.cu, align 2, !tbaa !60, !alias.scope !421
  %i.dd = load i16, ptr %i.cv, align 2, !tbaa !60, !alias.scope !421
  %i.de = load i16, ptr %i.cw, align 2, !tbaa !60, !alias.scope !421
  %i.df = insertelement <8 x i16> poison, i16 %i.cx, i64 0
  %i.dg = insertelement <8 x i16> %i.df, i16 %i.cy, i64 1
  %i.dh = insertelement <8 x i16> %i.dg, i16 %i.cz, i64 2
  %i.di = insertelement <8 x i16> %i.dh, i16 %i.da, i64 3
  %i.dj = insertelement <8 x i16> %i.di, i16 %i.db, i64 4
  %i.dk = insertelement <8 x i16> %i.dj, i16 %i.dc, i64 5
  %i.dl = insertelement <8 x i16> %i.dk, i16 %i.dd, i64 6
  %i.dm = insertelement <8 x i16> %i.dl, i16 %i.de, i64 7
  store <8 x i16> %i.dm, ptr %next.gep313, align 2, !tbaa !60, !alias.scope !424, !noalias !425
  %i.dn = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.do = getelementptr i8, ptr %i.br, i64 12
  %i.dp = getelementptr i8, ptr %i.bs, i64 20
  %i.dq = getelementptr i8, ptr %i.bt, i64 28
  %i.dr = getelementptr i8, ptr %i.bu, i64 36
  %i.ds = getelementptr i8, ptr %i.bv, i64 44
  %i.dt = getelementptr i8, ptr %i.bw, i64 52
  %i.du = getelementptr i8, ptr %i.bx, i64 60
  %i.dv = load i16, ptr %i.dn, align 2, !tbaa !60, !alias.scope !421
  %i.dw = load i16, ptr %i.do, align 2, !tbaa !60, !alias.scope !421
  %i.dx = load i16, ptr %i.dp, align 2, !tbaa !60, !alias.scope !421
  %i.dy = load i16, ptr %i.dq, align 2, !tbaa !60, !alias.scope !421
  %i.dz = load i16, ptr %i.dr, align 2, !tbaa !60, !alias.scope !421
  %i.ea = load i16, ptr %i.ds, align 2, !tbaa !60, !alias.scope !421
  %i.eb = load i16, ptr %i.dt, align 2, !tbaa !60, !alias.scope !421
  %i.ec = load i16, ptr %i.du, align 2, !tbaa !60, !alias.scope !421
  %i.ed = insertelement <8 x i16> poison, i16 %i.dv, i64 0
  %i.ee = insertelement <8 x i16> %i.ed, i16 %i.dw, i64 1
  %i.ef = insertelement <8 x i16> %i.ee, i16 %i.dx, i64 2
  %i.eg = insertelement <8 x i16> %i.ef, i16 %i.dy, i64 3
  %i.eh = insertelement <8 x i16> %i.eg, i16 %i.dz, i64 4
  %i.ei = insertelement <8 x i16> %i.eh, i16 %i.ea, i64 5
  %i.ej = insertelement <8 x i16> %i.ei, i16 %i.eb, i64 6
  %i.ek = insertelement <8 x i16> %i.ej, i16 %i.ec, i64 7
  store <8 x i16> %i.ek, ptr %next.gep312, align 2, !tbaa !60, !alias.scope !426, !noalias !427
  %i.el = getelementptr inbounds nuw i8, ptr %next.gep, i64 6
  %i.em = getelementptr i8, ptr %i.br, i64 14
  %i.en = getelementptr i8, ptr %i.bs, i64 22
  %i.eo = getelementptr i8, ptr %i.bt, i64 30
  %i.ep = getelementptr i8, ptr %i.bu, i64 38
  %i.eq = getelementptr i8, ptr %i.bv, i64 46
  %i.er = getelementptr i8, ptr %i.bw, i64 54
  %i.es = getelementptr i8, ptr %i.bx, i64 62
  %i.et = load i16, ptr %i.el, align 2, !tbaa !60, !alias.scope !421
  %i.eu = load i16, ptr %i.em, align 2, !tbaa !60, !alias.scope !421
  %i.ev = load i16, ptr %i.en, align 2, !tbaa !60, !alias.scope !421
  %i.ew = load i16, ptr %i.eo, align 2, !tbaa !60, !alias.scope !421
  %i.ex = load i16, ptr %i.ep, align 2, !tbaa !60, !alias.scope !421
  %i.ey = load i16, ptr %i.eq, align 2, !tbaa !60, !alias.scope !421
  %i.ez = load i16, ptr %i.er, align 2, !tbaa !60, !alias.scope !421
  %i.fa = load i16, ptr %i.es, align 2, !tbaa !60, !alias.scope !421
  %i.fb = insertelement <8 x i16> poison, i16 %i.et, i64 0
  %i.fc = insertelement <8 x i16> %i.fb, i16 %i.eu, i64 1
  %i.fd = insertelement <8 x i16> %i.fc, i16 %i.ev, i64 2
  %i.fe = insertelement <8 x i16> %i.fd, i16 %i.ew, i64 3
  %i.ff = insertelement <8 x i16> %i.fe, i16 %i.ex, i64 4
  %i.fg = insertelement <8 x i16> %i.ff, i16 %i.ey, i64 5
  %i.fh = insertelement <8 x i16> %i.fg, i16 %i.ez, i64 6
  %i.fi = insertelement <8 x i16> %i.fh, i16 %i.fa, i64 7
  store <8 x i16> %i.fi, ptr %next.gep311, align 2, !tbaa !60, !alias.scope !428, !noalias !421
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fj = icmp eq i64 %index.next, %n.vec
  br i1 %i.fj, label %middle.block, label %vector.body, !llvm.loop !416

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ax, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph194.preheader319

.lr.ph194.preheader319:                           ; preds = %vector.memcheck, %.lr.ph194.preheader, %middle.block
  %.1193.ph = phi ptr [ %.059.lcssa, %vector.memcheck ], [ %.059.lcssa, %.lr.ph194.preheader ], [ %i.bi, %middle.block ] ; 6 uses
  %.161192.ph = phi ptr [ %.060.lcssa, %vector.memcheck ], [ %.060.lcssa, %.lr.ph194.preheader ], [ %i.bk, %middle.block ] ; 3 uses
  %.163191.ph = phi i32 [ %.062.lcssa, %vector.memcheck ], [ %.062.lcssa, %.lr.ph194.preheader ], [ %i.bm, %middle.block ] ; 4 uses
  %.165190.ph = phi ptr [ %.064.lcssa, %vector.memcheck ], [ %.064.lcssa, %.lr.ph194.preheader ], [ %i.bn, %middle.block ] ; 3 uses
  %.167189.ph = phi ptr [ %.066.lcssa, %vector.memcheck ], [ %.066.lcssa, %.lr.ph194.preheader ], [ %i.bo, %middle.block ] ; 3 uses
  %.169188.ph = phi ptr [ %.068.lcssa, %vector.memcheck ], [ %.068.lcssa, %.lr.ph194.preheader ], [ %i.bp, %middle.block ] ; 3 uses
  %i.fk = sub i32 %i.as, %.163191.ph
  %.neg = add i32 %.163191.ph, 1
  %xtraiter = and i32 %i.fk, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph194.prol.loopexit, label %.lr.ph194.prol

.lr.ph194.prol:                                   ; preds = %.lr.ph194.preheader319
  %i.fl = load i16, ptr %.1193.ph, align 2, !tbaa !60
  %i.fm = getelementptr inbounds nuw i8, ptr %.161192.ph, i64 2
  store i16 %i.fl, ptr %.161192.ph, align 2, !tbaa !60
  %i.fn = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 2
  %i.fo = load i16, ptr %i.fn, align 2, !tbaa !60
  %i.fp = getelementptr inbounds nuw i8, ptr %.169188.ph, i64 2
  store i16 %i.fo, ptr %.169188.ph, align 2, !tbaa !60
  %i.fq = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 4
  %i.fr = load i16, ptr %i.fq, align 2, !tbaa !60
  %i.fs = getelementptr inbounds nuw i8, ptr %.167189.ph, i64 2
  store i16 %i.fr, ptr %.167189.ph, align 2, !tbaa !60
  %i.ft = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 6
  %i.fu = load i16, ptr %i.ft, align 2, !tbaa !60
  %i.fv = getelementptr inbounds nuw i8, ptr %.165190.ph, i64 2
  store i16 %i.fu, ptr %.165190.ph, align 2, !tbaa !60
  %i.fw = getelementptr inbounds nuw i8, ptr %.1193.ph, i64 8
  %i.fx = add nuw nsw i32 %.163191.ph, 1
  br label %.lr.ph194.prol.loopexit

.lr.ph194.prol.loopexit:                          ; preds = %.lr.ph194.prol, %.lr.ph194.preheader319
  %.1193.unr = phi ptr [ %.1193.ph, %.lr.ph194.preheader319 ], [ %i.fw, %.lr.ph194.prol ]
  %.161192.unr = phi ptr [ %.161192.ph, %.lr.ph194.preheader319 ], [ %i.fm, %.lr.ph194.prol ]
  %.163191.unr = phi i32 [ %.163191.ph, %.lr.ph194.preheader319 ], [ %i.fx, %.lr.ph194.prol ]
  %.165190.unr = phi ptr [ %.165190.ph, %.lr.ph194.preheader319 ], [ %i.fv, %.lr.ph194.prol ]
  %.167189.unr = phi ptr [ %.167189.ph, %.lr.ph194.preheader319 ], [ %i.fs, %.lr.ph194.prol ]
  %.169188.unr = phi ptr [ %.169188.ph, %.lr.ph194.preheader319 ], [ %i.fp, %.lr.ph194.prol ]
  %i.fy = icmp eq i32 %i.as, %.neg
  br i1 %i.fy, label %._crit_edge, label %.lr.ph194

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.059181 = phi ptr [ %i.gj, %.lr.ph ], [ %i.x, %.noexc ] ; 3 uses
  %.060180 = phi ptr [ %i.gk, %.lr.ph ], [ %i.ae, %.noexc ] ; 2 uses
  %.062179 = phi i32 [ %i.go, %.lr.ph ], [ 0, %.noexc ]
  %.064178 = phi ptr [ %i.gn, %.lr.ph ], [ %i.aq, %.noexc ] ; 2 uses
  %.066177 = phi ptr [ %i.gm, %.lr.ph ], [ %i.am, %.noexc ] ; 2 uses
  %.068176 = phi ptr [ %i.gl, %.lr.ph ], [ %i.ai, %.noexc ] ; 2 uses
  %6 = load <8 x i16>, ptr %.059181, align 1, !tbaa !55 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.059181, i64 16
  %8 = load <8 x i16>, ptr %7, align 1, !tbaa !55 ; 2 uses
  %i.fz = shufflevector <8 x i16> %6, <8 x i16> %8, <8 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13> ; 2 uses
  %i.ga = bitcast <8 x i16> %i.fz to <2 x i64>
  %i.gb = shufflevector <8 x i16> %6, <8 x i16> %8, <8 x i32> <i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15> ; 2 uses
  %i.gc = bitcast <8 x i16> %i.gb to <2 x i64>
  %i.gd = extractelement <2 x i64> %i.ga, i64 0
  store i64 %i.gd, ptr %.060180, align 1, !tbaa !55
  %i.ge = bitcast <8 x i16> %i.fz to <2 x i64>
  %i.gf = extractelement <2 x i64> %i.ge, i64 1
  store i64 %i.gf, ptr %.068176, align 1, !tbaa !55
  %i.gg = extractelement <2 x i64> %i.gc, i64 0
  store i64 %i.gg, ptr %.066177, align 1, !tbaa !55
  %i.gh = bitcast <8 x i16> %i.gb to <2 x i64>
  %i.gi = extractelement <2 x i64> %i.gh, i64 1
  store i64 %i.gi, ptr %.064178, align 1, !tbaa !55
  %i.gj = getelementptr inbounds nuw i8, ptr %.059181, i64 32 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.060180, i64 8 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.068176, i64 8 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.066177, i64 8 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.064178, i64 8 ; 2 uses
  %i.go = add nuw nsw i32 %.062179, 4             ; 3 uses
  %i.gp = or disjoint i32 %i.go, 3
  %i.gq = load i32, ptr %5, align 4, !tbaa !41    ; 2 uses
  %i.gr = icmp slt i32 %i.gp, %i.gq
  br i1 %i.gr, label %.lr.ph, label %.preheader, !llvm.loop !417

.lr.ph194:                                        ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194
  %.1193 = phi ptr [ %i.hp, %.lr.ph194 ], [ %.1193.unr, %.lr.ph194.prol.loopexit ] ; 9 uses
  %.161192 = phi ptr [ %i.hf, %.lr.ph194 ], [ %.161192.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.163191 = phi i32 [ %i.hq, %.lr.ph194 ], [ %.163191.unr, %.lr.ph194.prol.loopexit ]
  %.165190 = phi ptr [ %i.ho, %.lr.ph194 ], [ %.165190.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.167189 = phi ptr [ %i.hl, %.lr.ph194 ], [ %.167189.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %.169188 = phi ptr [ %i.hi, %.lr.ph194 ], [ %.169188.unr, %.lr.ph194.prol.loopexit ] ; 3 uses
  %i.gs = load i16, ptr %.1193, align 2, !tbaa !60
  %i.gt = getelementptr inbounds nuw i8, ptr %.161192, i64 2
  store i16 %i.gs, ptr %.161192, align 2, !tbaa !60
  %i.gu = getelementptr inbounds nuw i8, ptr %.1193, i64 2
  %i.gv = load i16, ptr %i.gu, align 2, !tbaa !60
  %i.gw = getelementptr inbounds nuw i8, ptr %.169188, i64 2
  store i16 %i.gv, ptr %.169188, align 2, !tbaa !60
  %i.gx = getelementptr inbounds nuw i8, ptr %.1193, i64 4
  %i.gy = load i16, ptr %i.gx, align 2, !tbaa !60
  %i.gz = getelementptr inbounds nuw i8, ptr %.167189, i64 2
  store i16 %i.gy, ptr %.167189, align 2, !tbaa !60
  %i.ha = getelementptr inbounds nuw i8, ptr %.1193, i64 6
  %i.hb = load i16, ptr %i.ha, align 2, !tbaa !60
  %i.hc = getelementptr inbounds nuw i8, ptr %.165190, i64 2
  store i16 %i.hb, ptr %.165190, align 2, !tbaa !60
  %i.hd = getelementptr inbounds nuw i8, ptr %.1193, i64 8
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !60
  %i.hf = getelementptr inbounds nuw i8, ptr %.161192, i64 4
  store i16 %i.he, ptr %i.gt, align 2, !tbaa !60
  %i.hg = getelementptr inbounds nuw i8, ptr %.1193, i64 10
  %i.hh = load i16, ptr %i.hg, align 2, !tbaa !60
  %i.hi = getelementptr inbounds nuw i8, ptr %.169188, i64 4
  store i16 %i.hh, ptr %i.gw, align 2, !tbaa !60
  %i.hj = getelementptr inbounds nuw i8, ptr %.1193, i64 12
  %i.hk = load i16, ptr %i.hj, align 2, !tbaa !60
  %i.hl = getelementptr inbounds nuw i8, ptr %.167189, i64 4
  store i16 %i.hk, ptr %i.gz, align 2, !tbaa !60
  %i.hm = getelementptr inbounds nuw i8, ptr %.1193, i64 14
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !60
  %i.ho = getelementptr inbounds nuw i8, ptr %.165190, i64 4
  store i16 %i.hn, ptr %i.hc, align 2, !tbaa !60
  %i.hp = getelementptr inbounds nuw i8, ptr %.1193, i64 16
  %i.hq = add nuw nsw i32 %.163191, 2             ; 2 uses
  %exitcond.not.1 = icmp eq i32 %i.hq, %i.as
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph194, !llvm.loop !418

._crit_edge:                                      ; preds = %.lr.ph194.prol.loopexit, %.lr.ph194, %middle.block, %.preheader
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond206.not = icmp eq i32 %i.q, %lftr.wideiv
  br i1 %exitcond206.not, label %._crit_edge197, label %.noexc

._crit_edge197:                                   ; preds = %._crit_edge, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge197, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Packing_x8619forward_bf16s_fp16sERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.37(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !41     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !41
  %i.h = load i32, ptr %0, align 4, !tbaa !41     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !41
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 3 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !41
  %i.k = load i32, ptr %i.a, align 4, !tbaa !41   ; 2 uses
  %.not276 = icmp sgt i32 %i.k, %i.j
  br i1 %.not276, label %._crit_edge278.split, label %.noexc72.lr.ph

.noexc72.lr.ph:                                   ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !36, !noalias !434 ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !39, !noalias !434
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !434
  %factor.op.mul = mul i64 %i.n, %i.p             ; 8 uses
  %i.q = load ptr, ptr %4, align 8, !tbaa !36, !noalias !435
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.s = load i64, ptr %i.r, align 8, !tbaa !39, !noalias !435
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !16, !noalias !435
  %factor.op.mul293 = mul i64 %i.s, %i.u
  %i.v = load i32, ptr %5, align 4, !tbaa !41     ; 2 uses
  %i.w = icmp sgt i32 %i.v, 0
  br i1 %i.w, label %.noexc72.preheader, label %._crit_edge278.split

.noexc72.preheader:                               ; preds = %.noexc72.lr.ph
  %i.x = sext i32 %i.k to i64
  %i.y = add nsw i32 %i.j, 1
  br label %.noexc72

.noexc72:                                         ; preds = %.noexc72.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.x, %.noexc72.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %i.z = shl nsw i64 %indvars.iv, 3               ; 8 uses
  %.reass = mul i64 %factor.op.mul, %i.z
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass
  %i.ab = or disjoint i64 %i.z, 1
  %.reass280 = mul i64 %factor.op.mul, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass280
  %i.ad = or disjoint i64 %i.z, 2
  %.reass282 = mul i64 %factor.op.mul, %i.ad
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass282
  %i.af = or disjoint i64 %i.z, 3
  %.reass284 = mul i64 %factor.op.mul, %i.af
  %i.ag = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass284
  %i.ah = or disjoint i64 %i.z, 4
  %.reass286 = mul i64 %factor.op.mul, %i.ah
  %i.ai = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass286
  %i.aj = or disjoint i64 %i.z, 5
  %.reass288 = mul i64 %factor.op.mul, %i.aj
  %i.ak = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass288
  %i.al = or disjoint i64 %i.z, 6
  %.reass290 = mul i64 %factor.op.mul, %i.al
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass290
  %i.an = or disjoint i64 %i.z, 7
  %.reass292 = mul i64 %factor.op.mul, %i.an
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass292
  %.reass294 = mul i64 %factor.op.mul293, %indvars.iv
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 %.reass294
  br label %bb.c

bb.c:                                             ; preds = %.noexc72, %bb.c
  %.0275 = phi i32 [ 0, %.noexc72 ], [ %i.bo, %bb.c ]
  %.050274 = phi ptr [ %i.ap, %.noexc72 ], [ %i.bn, %bb.c ] ; 9 uses
  %.051273 = phi ptr [ %i.ao, %.noexc72 ], [ %i.bk, %bb.c ] ; 2 uses
  %.052272 = phi ptr [ %i.am, %.noexc72 ], [ %i.bh, %bb.c ] ; 2 uses
  %.053271 = phi ptr [ %i.ak, %.noexc72 ], [ %i.be, %bb.c ] ; 2 uses
  %.054270 = phi ptr [ %i.ai, %.noexc72 ], [ %i.bb, %bb.c ] ; 2 uses
  %.055269 = phi ptr [ %i.ag, %.noexc72 ], [ %i.ay, %bb.c ] ; 2 uses
  %.056268 = phi ptr [ %i.ae, %.noexc72 ], [ %i.av, %bb.c ] ; 2 uses
  %.057267 = phi ptr [ %i.ac, %.noexc72 ], [ %i.as, %bb.c ] ; 2 uses
  %.058266 = phi ptr [ %i.aa, %.noexc72 ], [ %i.aq, %bb.c ] ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.058266, i64 2
  %i.ar = load i16, ptr %.058266, align 2, !tbaa !60
  store i16 %i.ar, ptr %.050274, align 2, !tbaa !60
  %i.as = getelementptr inbounds nuw i8, ptr %.057267, i64 2
  %i.at = load i16, ptr %.057267, align 2, !tbaa !60
  %i.au = getelementptr inbounds nuw i8, ptr %.050274, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %.056268, i64 2
  %i.aw = load i16, ptr %.056268, align 2, !tbaa !60
  %i.ax = getelementptr inbounds nuw i8, ptr %.050274, i64 4
  store i16 %i.aw, ptr %i.ax, align 2, !tbaa !60
  %i.ay = getelementptr inbounds nuw i8, ptr %.055269, i64 2
  %i.az = load i16, ptr %.055269, align 2, !tbaa !60
  %i.ba = getelementptr inbounds nuw i8, ptr %.050274, i64 6
  store i16 %i.az, ptr %i.ba, align 2, !tbaa !60
  %i.bb = getelementptr inbounds nuw i8, ptr %.054270, i64 2
  %i.bc = load i16, ptr %.054270, align 2, !tbaa !60
  %i.bd = getelementptr inbounds nuw i8, ptr %.050274, i64 8
  store i16 %i.bc, ptr %i.bd, align 2, !tbaa !60
  %i.be = getelementptr inbounds nuw i8, ptr %.053271, i64 2
  %i.bf = load i16, ptr %.053271, align 2, !tbaa !60
  %i.bg = getelementptr inbounds nuw i8, ptr %.050274, i64 10
  store i16 %i.bf, ptr %i.bg, align 2, !tbaa !60
  %i.bh = getelementptr inbounds nuw i8, ptr %.052272, i64 2
end_hunk_3
