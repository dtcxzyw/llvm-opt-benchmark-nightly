Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ncnn/original/flatten_x86?download=true
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined:bb.a
  br i1 %i.cs, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.lr.ph102.split
  %i.ct = phi i32 [ %i.bt, %.lr.ph102.split ], [ %i.gu, %.lr.ph ] ; 6 uses
  %.078.lcssa = phi ptr [ %i.cr, %.lr.ph102.split ], [ %i.gr, %.lr.ph ] ; 9 uses
  %.076.lcssa = phi i32 [ 0, %.lr.ph102.split ], [ %i.gs, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.co, %.lr.ph102.split ], [ %i.gq, %.lr.ph ] ; 9 uses
  %.072.lcssa = phi ptr [ %i.cl, %.lr.ph102.split ], [ %i.gp, %.lr.ph ] ; 9 uses
  %.070.lcssa = phi ptr [ %i.cg, %.lr.ph102.split ], [ %i.go, %.lr.ph ] ; 9 uses
  %.069.lcssa = phi ptr [ %i.ca, %.lr.ph102.split ], [ %i.gn, %.lr.ph ] ; 12 uses
  %i.cu = icmp slt i32 %.076.lcssa, %i.ct
  br i1 %i.cu, label %.lr.ph98.preheader, label %._crit_edge

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.cv = xor i32 %.076.lcssa, -1
  %i.cw = add i32 %i.ct, %i.cv                    ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cw, 31
  br i1 %min.iters.check, label %.lr.ph98.preheader233, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph98.preheader
  %i.cz = shl nuw nsw i64 %i.cx, 2
  %i.da = add nuw nsw i64 %i.cz, 4                ; 4 uses
  %i.db = getelementptr i8, ptr %.070.lcssa, i64 %i.da ; 4 uses
  %i.dc = getelementptr i8, ptr %.072.lcssa, i64 %i.da ; 4 uses
  %i.dd = getelementptr i8, ptr %.074.lcssa, i64 %i.da ; 4 uses
  %i.de = getelementptr i8, ptr %.078.lcssa, i64 %i.da ; 4 uses
  %i.df = shl nuw nsw i64 %i.cx, 4
  %i.dg = getelementptr i8, ptr %.069.lcssa, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16     ; 4 uses
  %bound0 = icmp ult ptr %.070.lcssa, %i.dc
  %bound1 = icmp ult ptr %.072.lcssa, %i.db
  %found.conflict = and i1 %bound0, %bound1
  %bound0186 = icmp ult ptr %.070.lcssa, %i.dd
  %bound1187 = icmp ult ptr %.074.lcssa, %i.db
  %found.conflict188 = and i1 %bound0186, %bound1187
  %conflict.rdx = or i1 %found.conflict, %found.conflict188
  %bound0189 = icmp ult ptr %.070.lcssa, %i.de
  %bound1190 = icmp ult ptr %.078.lcssa, %i.db
  %found.conflict191 = and i1 %bound0189, %bound1190
  %conflict.rdx192 = or i1 %conflict.rdx, %found.conflict191
  %bound0193 = icmp ult ptr %.070.lcssa, %i.dh
  %bound1194 = icmp ult ptr %.069.lcssa, %i.db
  %found.conflict195 = and i1 %bound0193, %bound1194
  %conflict.rdx196 = or i1 %conflict.rdx192, %found.conflict195
  %bound0197 = icmp ult ptr %.072.lcssa, %i.dd
  %bound1198 = icmp ult ptr %.074.lcssa, %i.dc
  %found.conflict199 = and i1 %bound0197, %bound1198
  %conflict.rdx200 = or i1 %conflict.rdx196, %found.conflict199
  %bound0201 = icmp ult ptr %.072.lcssa, %i.de
  %bound1202 = icmp ult ptr %.078.lcssa, %i.dc
  %found.conflict203 = and i1 %bound0201, %bound1202
  %conflict.rdx204 = or i1 %conflict.rdx200, %found.conflict203
  %bound0205 = icmp ult ptr %.072.lcssa, %i.dh
  %bound1206 = icmp ult ptr %.069.lcssa, %i.dc
  %found.conflict207 = and i1 %bound0205, %bound1206
  %conflict.rdx208 = or i1 %conflict.rdx204, %found.conflict207
  %bound0209 = icmp ult ptr %.074.lcssa, %i.de
  %bound1210 = icmp ult ptr %.078.lcssa, %i.dd
  %found.conflict211 = and i1 %bound0209, %bound1210
  %conflict.rdx212 = or i1 %conflict.rdx208, %found.conflict211
  %bound0213 = icmp ult ptr %.074.lcssa, %i.dh
  %bound1214 = icmp ult ptr %.069.lcssa, %i.dd
  %found.conflict215 = and i1 %bound0213, %bound1214
  %conflict.rdx216 = or i1 %conflict.rdx212, %found.conflict215
  %bound0217 = icmp ult ptr %.078.lcssa, %i.dh
  %bound1218 = icmp ult ptr %.069.lcssa, %i.de
  %found.conflict219 = and i1 %bound0217, %bound1218
  %conflict.rdx220 = or i1 %conflict.rdx216, %found.conflict219
  br i1 %conflict.rdx220, label %.lr.ph98.preheader233, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cy, 8589934588              ; 5 uses
  %i.di = shl nuw nsw i64 %n.vec, 4
  %i.dj = getelementptr i8, ptr %.069.lcssa, i64 %i.di
  %i.dk = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.dl = getelementptr i8, ptr %.070.lcssa, i64 %i.dk
  %i.dm = getelementptr i8, ptr %.072.lcssa, i64 %i.dk
  %i.dn = getelementptr i8, ptr %.074.lcssa, i64 %i.dk
  %i.do = trunc i64 %n.vec to i32
  %i.dp = add i32 %.076.lcssa, %i.do
  %i.dq = getelementptr i8, ptr %.078.lcssa, i64 %i.dk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dr = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.dr ; 4 uses
  %i.ds = getelementptr i8, ptr %.069.lcssa, i64 %i.dr ; 4 uses
  %next.gep221 = getelementptr i8, ptr %i.ds, i64 16
  %i.dt = getelementptr i8, ptr %.069.lcssa, i64 %i.dr ; 4 uses
  %next.gep222 = getelementptr i8, ptr %i.dt, i64 32
  %i.du = getelementptr i8, ptr %.069.lcssa, i64 %i.dr ; 4 uses
  %next.gep223 = getelementptr i8, ptr %i.du, i64 48
  %i.dv = shl i64 %index, 2                       ; 4 uses
  %next.gep224 = getelementptr i8, ptr %.070.lcssa, i64 %i.dv
  %next.gep225 = getelementptr i8, ptr %.072.lcssa, i64 %i.dv
  %next.gep226 = getelementptr i8, ptr %.074.lcssa, i64 %i.dv
  %next.gep227 = getelementptr i8, ptr %.078.lcssa, i64 %i.dv
  %i.dw = load float, ptr %next.gep, align 4, !tbaa !38, !alias.scope !75
  %i.dx = load float, ptr %next.gep221, align 4, !tbaa !38, !alias.scope !75
  %i.dy = load float, ptr %next.gep222, align 4, !tbaa !38, !alias.scope !75
  %i.dz = load float, ptr %next.gep223, align 4, !tbaa !38, !alias.scope !75
  %i.ea = insertelement <4 x float> poison, float %i.dw, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 1
  %i.ec = insertelement <4 x float> %i.eb, float %i.dy, i64 2
  %i.ed = insertelement <4 x float> %i.ec, float %i.dz, i64 3
  store <4 x float> %i.ed, ptr %next.gep224, align 4, !tbaa !38, !alias.scope !76, !noalias !77
  %i.ee = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ef = getelementptr i8, ptr %i.ds, i64 20
  %i.eg = getelementptr i8, ptr %i.dt, i64 36
  %i.eh = getelementptr i8, ptr %i.du, i64 52
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !38, !alias.scope !75
  %i.ej = load float, ptr %i.ef, align 4, !tbaa !38, !alias.scope !75
  %i.ek = load float, ptr %i.eg, align 4, !tbaa !38, !alias.scope !75
  %i.el = load float, ptr %i.eh, align 4, !tbaa !38, !alias.scope !75
  %i.em = insertelement <4 x float> poison, float %i.ei, i64 0
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 1
  %i.eo = insertelement <4 x float> %i.en, float %i.ek, i64 2
  %i.ep = insertelement <4 x float> %i.eo, float %i.el, i64 3
  store <4 x float> %i.ep, ptr %next.gep225, align 4, !tbaa !38, !alias.scope !78, !noalias !79
  %i.eq = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.er = getelementptr i8, ptr %i.ds, i64 24
  %i.es = getelementptr i8, ptr %i.dt, i64 40
  %i.et = getelementptr i8, ptr %i.du, i64 56
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !38, !alias.scope !75
  %i.ev = load float, ptr %i.er, align 4, !tbaa !38, !alias.scope !75
  %i.ew = load float, ptr %i.es, align 4, !tbaa !38, !alias.scope !75
  %i.ex = load float, ptr %i.et, align 4, !tbaa !38, !alias.scope !75
  %i.ey = insertelement <4 x float> poison, float %i.eu, i64 0
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 1
  %i.fa = insertelement <4 x float> %i.ez, float %i.ew, i64 2
  %i.fb = insertelement <4 x float> %i.fa, float %i.ex, i64 3
  store <4 x float> %i.fb, ptr %next.gep226, align 4, !tbaa !38, !alias.scope !80, !noalias !81
  %i.fc = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.fd = getelementptr i8, ptr %i.ds, i64 28
  %i.fe = getelementptr i8, ptr %i.dt, i64 44
  %i.ff = getelementptr i8, ptr %i.du, i64 60
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !38, !alias.scope !75
  %i.fh = load float, ptr %i.fd, align 4, !tbaa !38, !alias.scope !75
  %i.fi = load float, ptr %i.fe, align 4, !tbaa !38, !alias.scope !75
  %i.fj = load float, ptr %i.ff, align 4, !tbaa !38, !alias.scope !75
  %i.fk = insertelement <4 x float> poison, float %i.fg, i64 0
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 1
  %i.fm = insertelement <4 x float> %i.fl, float %i.fi, i64 2
  %i.fn = insertelement <4 x float> %i.fm, float %i.fj, i64 3
  store <4 x float> %i.fn, ptr %next.gep227, align 4, !tbaa !38, !alias.scope !82, !noalias !75
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fo = icmp eq i64 %index.next, %n.vec
  br i1 %i.fo, label %middle.block, label %vector.body, !llvm.loop !71

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cy, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph98.preheader233

.lr.ph98.preheader233:                            ; preds = %vector.memcheck, %.lr.ph98.preheader, %middle.block
  %.197.ph = phi ptr [ %.069.lcssa, %vector.memcheck ], [ %.069.lcssa, %.lr.ph98.preheader ], [ %i.dj, %middle.block ] ; 6 uses
  %.17196.ph = phi ptr [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %.lr.ph98.preheader ], [ %i.dl, %middle.block ] ; 3 uses
  %.17395.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph98.preheader ], [ %i.dm, %middle.block ] ; 3 uses
  %.17594.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph98.preheader ], [ %i.dn, %middle.block ] ; 3 uses
  %.17793.ph = phi i32 [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph98.preheader ], [ %i.dp, %middle.block ] ; 4 uses
  %.17992.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph98.preheader ], [ %i.dq, %middle.block ] ; 3 uses
  %i.fp = sub i32 %i.ct, %.17793.ph
  %.neg = add i32 %.17793.ph, 1
  %xtraiter = and i32 %i.fp, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph98.prol.loopexit, label %.lr.ph98.prol

.lr.ph98.prol:                                    ; preds = %.lr.ph98.preheader233
  %i.fq = load float, ptr %.197.ph, align 4, !tbaa !38
  %i.fr = getelementptr inbounds nuw i8, ptr %.17196.ph, i64 4
  store float %i.fq, ptr %.17196.ph, align 4, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %.197.ph, i64 4
  %i.ft = load float, ptr %i.fs, align 4, !tbaa !38
  %i.fu = getelementptr inbounds nuw i8, ptr %.17395.ph, i64 4
  store float %i.ft, ptr %.17395.ph, align 4, !tbaa !38
  %i.fv = getelementptr inbounds nuw i8, ptr %.197.ph, i64 8
  %i.fw = load float, ptr %i.fv, align 4, !tbaa !38
  %i.fx = getelementptr inbounds nuw i8, ptr %.17594.ph, i64 4
  store float %i.fw, ptr %.17594.ph, align 4, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %.197.ph, i64 12
  %i.fz = load float, ptr %i.fy, align 4, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %.17992.ph, i64 4
  store float %i.fz, ptr %.17992.ph, align 4, !tbaa !38
  %i.gb = getelementptr inbounds nuw i8, ptr %.197.ph, i64 16
  %i.gc = add nuw nsw i32 %.17793.ph, 1
  br label %.lr.ph98.prol.loopexit

.lr.ph98.prol.loopexit:                           ; preds = %.lr.ph98.prol, %.lr.ph98.preheader233
  %.197.unr = phi ptr [ %.197.ph, %.lr.ph98.preheader233 ], [ %i.gb, %.lr.ph98.prol ]
  %.17196.unr = phi ptr [ %.17196.ph, %.lr.ph98.preheader233 ], [ %i.fr, %.lr.ph98.prol ]
  %.17395.unr = phi ptr [ %.17395.ph, %.lr.ph98.preheader233 ], [ %i.fu, %.lr.ph98.prol ]
  %.17594.unr = phi ptr [ %.17594.ph, %.lr.ph98.preheader233 ], [ %i.fx, %.lr.ph98.prol ]
  %.17793.unr = phi i32 [ %.17793.ph, %.lr.ph98.preheader233 ], [ %i.gc, %.lr.ph98.prol ]
  %.17992.unr = phi ptr [ %.17992.ph, %.lr.ph98.preheader233 ], [ %i.ga, %.lr.ph98.prol ]
  %i.gd = icmp eq i32 %i.ct, %.neg
  br i1 %i.gd, label %._crit_edge, label %.lr.ph98

.lr.ph:                                           ; preds = %.lr.ph102.split, %.lr.ph
  %.06985 = phi ptr [ %i.gn, %.lr.ph ], [ %i.ca, %.lr.ph102.split ] ; 3 uses
  %.07084 = phi ptr [ %i.go, %.lr.ph ], [ %i.cg, %.lr.ph102.split ] ; 2 uses
  %.07283 = phi ptr [ %i.gp, %.lr.ph ], [ %i.cl, %.lr.ph102.split ] ; 2 uses
  %.07482 = phi ptr [ %i.gq, %.lr.ph ], [ %i.co, %.lr.ph102.split ] ; 2 uses
  %.07681 = phi i32 [ %i.gs, %.lr.ph ], [ 0, %.lr.ph102.split ]
  %.07880 = phi ptr [ %i.gr, %.lr.ph ], [ %i.cr, %.lr.ph102.split ] ; 2 uses
  %6 = load <8 x float>, ptr %.06985, align 1, !tbaa !42 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %.06985, i64 32
  %7 = load <8 x float>, ptr %i.ge, align 1, !tbaa !42 ; 2 uses
  %i.gf = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gg = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gh = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gi = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gj = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gk = shufflevector <4 x float> %i.gg, <4 x float> %i.gf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gl = shufflevector <4 x float> %i.gh, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gm = shufflevector <4 x float> %i.gi, <4 x float> %i.gh, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.gj, ptr %.07084, align 1, !tbaa !42
  store <4 x float> %i.gk, ptr %.07283, align 1, !tbaa !42
  store <4 x float> %i.gl, ptr %.07482, align 1, !tbaa !42
  store <4 x float> %i.gm, ptr %.07880, align 1, !tbaa !42
  %i.gn = getelementptr inbounds nuw i8, ptr %.06985, i64 64 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.07084, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.07283, i64 16 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.07482, i64 16 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.07880, i64 16 ; 2 uses
  %i.gs = add nuw nsw i32 %.07681, 4              ; 3 uses
  %i.gt = or disjoint i32 %i.gs, 3
  %i.gu = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.gv = icmp slt i32 %i.gt, %i.gu
  br i1 %i.gv, label %.lr.ph, label %.preheader, !llvm.loop !72

.lr.ph98:                                         ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98
  %.197 = phi ptr [ %i.ht, %.lr.ph98 ], [ %.197.unr, %.lr.ph98.prol.loopexit ] ; 9 uses
  %.17196 = phi ptr [ %i.hj, %.lr.ph98 ], [ %.17196.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17395 = phi ptr [ %i.hm, %.lr.ph98 ], [ %.17395.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17594 = phi ptr [ %i.hp, %.lr.ph98 ], [ %.17594.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %.17793 = phi i32 [ %i.hu, %.lr.ph98 ], [ %.17793.unr, %.lr.ph98.prol.loopexit ]
  %.17992 = phi ptr [ %i.hs, %.lr.ph98 ], [ %.17992.unr, %.lr.ph98.prol.loopexit ] ; 3 uses
  %i.gw = load float, ptr %.197, align 4, !tbaa !38
  %i.gx = getelementptr inbounds nuw i8, ptr %.17196, i64 4
  store float %i.gw, ptr %.17196, align 4, !tbaa !38
  %i.gy = getelementptr inbounds nuw i8, ptr %.197, i64 4
  %i.gz = load float, ptr %i.gy, align 4, !tbaa !38
  %i.ha = getelementptr inbounds nuw i8, ptr %.17395, i64 4
  store float %i.gz, ptr %.17395, align 4, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %.197, i64 8
  %i.hc = load float, ptr %i.hb, align 4, !tbaa !38
  %i.hd = getelementptr inbounds nuw i8, ptr %.17594, i64 4
  store float %i.hc, ptr %.17594, align 4, !tbaa !38
  %i.he = getelementptr inbounds nuw i8, ptr %.197, i64 12
  %i.hf = load float, ptr %i.he, align 4, !tbaa !38
  %i.hg = getelementptr inbounds nuw i8, ptr %.17992, i64 4
  store float %i.hf, ptr %.17992, align 4, !tbaa !38
  %i.hh = getelementptr inbounds nuw i8, ptr %.197, i64 16
  %i.hi = load float, ptr %i.hh, align 4, !tbaa !38
  %i.hj = getelementptr inbounds nuw i8, ptr %.17196, i64 8
  store float %i.hi, ptr %i.gx, align 4, !tbaa !38
  %i.hk = getelementptr inbounds nuw i8, ptr %.197, i64 20
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !38
  %i.hm = getelementptr inbounds nuw i8, ptr %.17395, i64 8
  store float %i.hl, ptr %i.ha, align 4, !tbaa !38
  %i.hn = getelementptr inbounds nuw i8, ptr %.197, i64 24
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !38
  %i.hp = getelementptr inbounds nuw i8, ptr %.17594, i64 8
  store float %i.ho, ptr %i.hd, align 4, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %.197, i64 28
  %i.hr = load float, ptr %i.hq, align 4, !tbaa !38
  %i.hs = getelementptr inbounds nuw i8, ptr %.17992, i64 8
  store float %i.hr, ptr %i.hg, align 4, !tbaa !38
  %i.ht = getelementptr inbounds nuw i8, ptr %.197, i64 32
  %i.hu = add nuw nsw i32 %.17793, 2              ; 2 uses
  %exitcond116.not.1 = icmp eq i32 %i.hu, %i.ct
  br i1 %exitcond116.not.1, label %._crit_edge, label %.lr.ph98, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph98.prol.loopexit, %.lr.ph98, %middle.block, %.preheader
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %lftr.wideiv120 = trunc i64 %indvars.iv.next118 to i32
  %exitcond121.not = icmp eq i32 %i.q, %lftr.wideiv120
  br i1 %exitcond121.not, label %._crit_edge103, label %.lr.ph102.split, !llvm.loop !74

._crit_edge103:                                   ; preds = %._crit_edge.us, %._crit_edge, %.lr.ph102.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge103, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind
declare void @__kmpc_for_static_init_4(ptr, i32, i32, ptr, ptr, ptr, ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_for_static_fini(ptr, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @__kmpc_global_thread_num(ptr) local_unnamed_addr #6

; Function Attrs: nounwind
declare void @__kmpc_push_num_threads(ptr, i32, i32) local_unnamed_addr #6

; Function Attrs: nounwind
declare !callback !45 void @__kmpc_fork_call(ptr, i32, ptr, ...) local_unnamed_addr #6

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #5 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 3 uses
  %.not106 = icmp sgt i32 %i.k, %i.j
  br i1 %.not106, label %._crit_edge108, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.n = load i32, ptr %5, align 4, !tbaa !25     ; 7 uses
  %i.o = icmp sgt i32 %i.n, 3
  br i1 %i.o, label %.noexc.preheader, label %.noexc.lr.ph.split.us

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.p = sext i32 %i.k to i64
  %i.q = add nsw i32 %i.j, 1
  br label %.noexc

.noexc.lr.ph.split.us:                            ; preds = %.noexc.lr.ph
  %i.r = load ptr, ptr %3, align 8, !tbaa !20, !noalias !95
  %i.s = load i64, ptr %i.l, align 8, !tbaa !23, !noalias !95
  %i.t = load i64, ptr %i.m, align 8, !tbaa !16, !noalias !95
  %factor.op.mul = mul i64 %i.s, %i.t
  %i.u = load ptr, ptr %4, align 8, !tbaa !20     ; 4 uses
  %factor.op.mul109 = shl i32 %i.n, 2
  %i.v = icmp sgt i32 %i.n, 0
  br i1 %i.v, label %.noexc.us.preheader, label %._crit_edge108

.noexc.us.preheader:                              ; preds = %.noexc.lr.ph.split.us
  %i.w = sext i32 %i.k to i64
  %i.x = zext nneg i32 %i.n to i64                ; 3 uses
  %i.y = add nsw i32 %i.j, 1
  %exitcond.not = icmp eq i32 %i.n, 1
  %exitcond.not.1 = icmp eq i32 %i.n, 2
  br label %.noexc.us

.noexc.us:                                        ; preds = %.noexc.us.preheader, %._crit_edge.us
  %indvars.iv = phi i64 [ %i.w, %.noexc.us.preheader ], [ %indvars.iv.next, %._crit_edge.us ] ; 4 uses
  %i.z = shl nsw i64 %indvars.iv, 2               ; 3 uses
  %i.aa = or disjoint i64 %i.z, 3
  %i.ab = mul nsw i64 %i.aa, %i.x
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ab ; 3 uses
  %i.ad = or disjoint i64 %i.z, 2
  %i.ae = mul nsw i64 %i.ad, %i.x
  %i.af = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ae ; 3 uses
  %i.ag = or disjoint i64 %i.z, 1
  %i.ah = mul nsw i64 %i.ag, %i.x
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ah ; 3 uses
  %i.aj = trunc nsw i64 %indvars.iv to i32
  %.reass110 = mul i32 %factor.op.mul109, %i.aj
  %i.ak = sext i32 %.reass110 to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ak ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.am = getelementptr inbounds nuw i8, ptr %i.r, i64 %.reass ; 12 uses
  %i.an = load float, ptr %i.am, align 4, !tbaa !38
  store float %i.an, ptr %i.al, align 4, !tbaa !38
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !38
  store float %i.ap, ptr %i.ai, align 4, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !38
  store float %i.ar, ptr %i.af, align 4, !tbaa !38
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 12
  %i.at = load float, ptr %i.as, align 4, !tbaa !38
  store float %i.at, ptr %i.ac, align 4, !tbaa !38
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.c

bb.c:                                             ; preds = %.noexc.us
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.az = load float, ptr %i.au, align 4, !tbaa !38
  store float %i.az, ptr %i.ay, align 4, !tbaa !38
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 20
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !38
  store float %i.bb, ptr %i.ax, align 4, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.1:bb.a
  br i1 %i.cq, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.cr = phi i32 [ %i.bs, %.noexc ], [ %i.gs, %.lr.ph ] ; 6 uses
  %.078.lcssa = phi ptr [ %i.cp, %.noexc ], [ %i.gp, %.lr.ph ] ; 9 uses
  %.076.lcssa = phi i32 [ 0, %.noexc ], [ %i.gq, %.lr.ph ] ; 5 uses
  %.074.lcssa = phi ptr [ %i.cm, %.noexc ], [ %i.go, %.lr.ph ] ; 9 uses
  %.072.lcssa = phi ptr [ %i.cj, %.noexc ], [ %i.gn, %.lr.ph ] ; 9 uses
  %.070.lcssa = phi ptr [ %i.ce, %.noexc ], [ %i.gm, %.lr.ph ] ; 9 uses
  %.069.lcssa = phi ptr [ %i.by, %.noexc ], [ %i.gl, %.lr.ph ] ; 12 uses
  %i.cs = icmp slt i32 %.076.lcssa, %i.cr
  br i1 %i.cs, label %.lr.ph105.preheader, label %._crit_edge

.lr.ph105.preheader:                              ; preds = %.preheader
  %i.ct = xor i32 %.076.lcssa, -1
  %i.cu = add i32 %i.cr, %i.ct                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64                   ; 3 uses
  %i.cw = add nuw nsw i64 %i.cv, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cu, 31
  br i1 %min.iters.check, label %.lr.ph105.preheader238, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph105.preheader
  %i.cx = shl nuw nsw i64 %i.cv, 2
  %i.cy = add nuw nsw i64 %i.cx, 4                ; 4 uses
  %i.cz = getelementptr i8, ptr %.070.lcssa, i64 %i.cy ; 4 uses
  %i.da = getelementptr i8, ptr %.072.lcssa, i64 %i.cy ; 4 uses
  %i.db = getelementptr i8, ptr %.074.lcssa, i64 %i.cy ; 4 uses
  %i.dc = getelementptr i8, ptr %.078.lcssa, i64 %i.cy ; 4 uses
  %i.dd = shl nuw nsw i64 %i.cv, 4
  %i.de = getelementptr i8, ptr %.069.lcssa, i64 %i.dd
  %i.df = getelementptr i8, ptr %i.de, i64 16     ; 4 uses
  %bound0 = icmp ult ptr %.070.lcssa, %i.da
  %bound1 = icmp ult ptr %.072.lcssa, %i.cz
  %found.conflict = and i1 %bound0, %bound1
  %bound0191 = icmp ult ptr %.070.lcssa, %i.db
  %bound1192 = icmp ult ptr %.074.lcssa, %i.cz
  %found.conflict193 = and i1 %bound0191, %bound1192
  %conflict.rdx = or i1 %found.conflict, %found.conflict193
  %bound0194 = icmp ult ptr %.070.lcssa, %i.dc
  %bound1195 = icmp ult ptr %.078.lcssa, %i.cz
  %found.conflict196 = and i1 %bound0194, %bound1195
  %conflict.rdx197 = or i1 %conflict.rdx, %found.conflict196
  %bound0198 = icmp ult ptr %.070.lcssa, %i.df
  %bound1199 = icmp ult ptr %.069.lcssa, %i.cz
  %found.conflict200 = and i1 %bound0198, %bound1199
  %conflict.rdx201 = or i1 %conflict.rdx197, %found.conflict200
  %bound0202 = icmp ult ptr %.072.lcssa, %i.db
  %bound1203 = icmp ult ptr %.074.lcssa, %i.da
  %found.conflict204 = and i1 %bound0202, %bound1203
  %conflict.rdx205 = or i1 %conflict.rdx201, %found.conflict204
  %bound0206 = icmp ult ptr %.072.lcssa, %i.dc
  %bound1207 = icmp ult ptr %.078.lcssa, %i.da
  %found.conflict208 = and i1 %bound0206, %bound1207
  %conflict.rdx209 = or i1 %conflict.rdx205, %found.conflict208
  %bound0210 = icmp ult ptr %.072.lcssa, %i.df
  %bound1211 = icmp ult ptr %.069.lcssa, %i.da
  %found.conflict212 = and i1 %bound0210, %bound1211
  %conflict.rdx213 = or i1 %conflict.rdx209, %found.conflict212
  %bound0214 = icmp ult ptr %.074.lcssa, %i.dc
  %bound1215 = icmp ult ptr %.078.lcssa, %i.db
  %found.conflict216 = and i1 %bound0214, %bound1215
  %conflict.rdx217 = or i1 %conflict.rdx213, %found.conflict216
  %bound0218 = icmp ult ptr %.074.lcssa, %i.df
  %bound1219 = icmp ult ptr %.069.lcssa, %i.db
  %found.conflict220 = and i1 %bound0218, %bound1219
  %conflict.rdx221 = or i1 %conflict.rdx217, %found.conflict220
  %bound0222 = icmp ult ptr %.078.lcssa, %i.df
  %bound1223 = icmp ult ptr %.069.lcssa, %i.dc
  %found.conflict224 = and i1 %bound0222, %bound1223
  %conflict.rdx225 = or i1 %conflict.rdx221, %found.conflict224
  br i1 %conflict.rdx225, label %.lr.ph105.preheader238, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cw, 8589934588              ; 5 uses
  %i.dg = shl nuw nsw i64 %n.vec, 4
  %i.dh = getelementptr i8, ptr %.069.lcssa, i64 %i.dg
  %i.di = shl nuw nsw i64 %n.vec, 2               ; 4 uses
  %i.dj = getelementptr i8, ptr %.070.lcssa, i64 %i.di
  %i.dk = getelementptr i8, ptr %.072.lcssa, i64 %i.di
  %i.dl = getelementptr i8, ptr %.074.lcssa, i64 %i.di
  %i.dm = trunc i64 %n.vec to i32
  %i.dn = add i32 %.076.lcssa, %i.dm
  %i.do = getelementptr i8, ptr %.078.lcssa, i64 %i.di
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dp = shl i64 %index, 4                       ; 4 uses
  %next.gep = getelementptr i8, ptr %.069.lcssa, i64 %i.dp ; 4 uses
  %i.dq = getelementptr i8, ptr %.069.lcssa, i64 %i.dp ; 4 uses
  %next.gep226 = getelementptr i8, ptr %i.dq, i64 16
  %i.dr = getelementptr i8, ptr %.069.lcssa, i64 %i.dp ; 4 uses
  %next.gep227 = getelementptr i8, ptr %i.dr, i64 32
  %i.ds = getelementptr i8, ptr %.069.lcssa, i64 %i.dp ; 4 uses
  %next.gep228 = getelementptr i8, ptr %i.ds, i64 48
  %i.dt = shl i64 %index, 2                       ; 4 uses
  %next.gep229 = getelementptr i8, ptr %.070.lcssa, i64 %i.dt
  %next.gep230 = getelementptr i8, ptr %.072.lcssa, i64 %i.dt
  %next.gep231 = getelementptr i8, ptr %.074.lcssa, i64 %i.dt
  %next.gep232 = getelementptr i8, ptr %.078.lcssa, i64 %i.dt
  %i.du = load float, ptr %next.gep, align 4, !tbaa !38, !alias.scope !96
  %i.dv = load float, ptr %next.gep226, align 4, !tbaa !38, !alias.scope !96
  %i.dw = load float, ptr %next.gep227, align 4, !tbaa !38, !alias.scope !96
  %i.dx = load float, ptr %next.gep228, align 4, !tbaa !38, !alias.scope !96
  %i.dy = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 1
  %i.ea = insertelement <4 x float> %i.dz, float %i.dw, i64 2
  %i.eb = insertelement <4 x float> %i.ea, float %i.dx, i64 3
  store <4 x float> %i.eb, ptr %next.gep229, align 4, !tbaa !38, !alias.scope !97, !noalias !98
  %i.ec = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ed = getelementptr i8, ptr %i.dq, i64 20
  %i.ee = getelementptr i8, ptr %i.dr, i64 36
  %i.ef = getelementptr i8, ptr %i.ds, i64 52
  %i.eg = load float, ptr %i.ec, align 4, !tbaa !38, !alias.scope !96
  %i.eh = load float, ptr %i.ed, align 4, !tbaa !38, !alias.scope !96
  %i.ei = load float, ptr %i.ee, align 4, !tbaa !38, !alias.scope !96
  %i.ej = load float, ptr %i.ef, align 4, !tbaa !38, !alias.scope !96
  %i.ek = insertelement <4 x float> poison, float %i.eg, i64 0
  %i.el = insertelement <4 x float> %i.ek, float %i.eh, i64 1
  %i.em = insertelement <4 x float> %i.el, float %i.ei, i64 2
  %i.en = insertelement <4 x float> %i.em, float %i.ej, i64 3
  store <4 x float> %i.en, ptr %next.gep230, align 4, !tbaa !38, !alias.scope !99, !noalias !100
  %i.eo = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ep = getelementptr i8, ptr %i.dq, i64 24
  %i.eq = getelementptr i8, ptr %i.dr, i64 40
  %i.er = getelementptr i8, ptr %i.ds, i64 56
  %i.es = load float, ptr %i.eo, align 4, !tbaa !38, !alias.scope !96
  %i.et = load float, ptr %i.ep, align 4, !tbaa !38, !alias.scope !96
  %i.eu = load float, ptr %i.eq, align 4, !tbaa !38, !alias.scope !96
  %i.ev = load float, ptr %i.er, align 4, !tbaa !38, !alias.scope !96
  %i.ew = insertelement <4 x float> poison, float %i.es, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.et, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.eu, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.ev, i64 3
  store <4 x float> %i.ez, ptr %next.gep231, align 4, !tbaa !38, !alias.scope !101, !noalias !102
  %i.fa = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.fb = getelementptr i8, ptr %i.dq, i64 28
  %i.fc = getelementptr i8, ptr %i.dr, i64 44
  %i.fd = getelementptr i8, ptr %i.ds, i64 60
  %i.fe = load float, ptr %i.fa, align 4, !tbaa !38, !alias.scope !96
  %i.ff = load float, ptr %i.fb, align 4, !tbaa !38, !alias.scope !96
  %i.fg = load float, ptr %i.fc, align 4, !tbaa !38, !alias.scope !96
  %i.fh = load float, ptr %i.fd, align 4, !tbaa !38, !alias.scope !96
  %i.fi = insertelement <4 x float> poison, float %i.fe, i64 0
  %i.fj = insertelement <4 x float> %i.fi, float %i.ff, i64 1
  %i.fk = insertelement <4 x float> %i.fj, float %i.fg, i64 2
  %i.fl = insertelement <4 x float> %i.fk, float %i.fh, i64 3
  store <4 x float> %i.fl, ptr %next.gep232, align 4, !tbaa !38, !alias.scope !103, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fm = icmp eq i64 %index.next, %n.vec
  br i1 %i.fm, label %middle.block, label %vector.body, !llvm.loop !91

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cw, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph105.preheader238

.lr.ph105.preheader238:                           ; preds = %vector.memcheck, %.lr.ph105.preheader, %middle.block
  %.1104.ph = phi ptr [ %.069.lcssa, %vector.memcheck ], [ %.069.lcssa, %.lr.ph105.preheader ], [ %i.dh, %middle.block ] ; 6 uses
  %.171103.ph = phi ptr [ %.070.lcssa, %vector.memcheck ], [ %.070.lcssa, %.lr.ph105.preheader ], [ %i.dj, %middle.block ] ; 3 uses
  %.173102.ph = phi ptr [ %.072.lcssa, %vector.memcheck ], [ %.072.lcssa, %.lr.ph105.preheader ], [ %i.dk, %middle.block ] ; 3 uses
  %.175101.ph = phi ptr [ %.074.lcssa, %vector.memcheck ], [ %.074.lcssa, %.lr.ph105.preheader ], [ %i.dl, %middle.block ] ; 3 uses
  %.177100.ph = phi i32 [ %.076.lcssa, %vector.memcheck ], [ %.076.lcssa, %.lr.ph105.preheader ], [ %i.dn, %middle.block ] ; 4 uses
  %.17999.ph = phi ptr [ %.078.lcssa, %vector.memcheck ], [ %.078.lcssa, %.lr.ph105.preheader ], [ %i.do, %middle.block ] ; 3 uses
  %i.fn = sub i32 %i.cr, %.177100.ph
  %.neg = add i32 %.177100.ph, 1
  %xtraiter = and i32 %i.fn, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph105.prol.loopexit, label %.lr.ph105.prol

.lr.ph105.prol:                                   ; preds = %.lr.ph105.preheader238
  %i.fo = load float, ptr %.1104.ph, align 4, !tbaa !38
  %i.fp = getelementptr inbounds nuw i8, ptr %.171103.ph, i64 4
  store float %i.fo, ptr %.171103.ph, align 4, !tbaa !38
  %i.fq = getelementptr inbounds nuw i8, ptr %.1104.ph, i64 4
  %i.fr = load float, ptr %i.fq, align 4, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %.173102.ph, i64 4
  store float %i.fr, ptr %.173102.ph, align 4, !tbaa !38
  %i.ft = getelementptr inbounds nuw i8, ptr %.1104.ph, i64 8
  %i.fu = load float, ptr %i.ft, align 4, !tbaa !38
  %i.fv = getelementptr inbounds nuw i8, ptr %.175101.ph, i64 4
  store float %i.fu, ptr %.175101.ph, align 4, !tbaa !38
  %i.fw = getelementptr inbounds nuw i8, ptr %.1104.ph, i64 12
  %i.fx = load float, ptr %i.fw, align 4, !tbaa !38
  %i.fy = getelementptr inbounds nuw i8, ptr %.17999.ph, i64 4
  store float %i.fx, ptr %.17999.ph, align 4, !tbaa !38
  %i.fz = getelementptr inbounds nuw i8, ptr %.1104.ph, i64 16
  %i.ga = add nuw nsw i32 %.177100.ph, 1
  br label %.lr.ph105.prol.loopexit

.lr.ph105.prol.loopexit:                          ; preds = %.lr.ph105.prol, %.lr.ph105.preheader238
  %.1104.unr = phi ptr [ %.1104.ph, %.lr.ph105.preheader238 ], [ %i.fz, %.lr.ph105.prol ]
  %.171103.unr = phi ptr [ %.171103.ph, %.lr.ph105.preheader238 ], [ %i.fp, %.lr.ph105.prol ]
  %.173102.unr = phi ptr [ %.173102.ph, %.lr.ph105.preheader238 ], [ %i.fs, %.lr.ph105.prol ]
  %.175101.unr = phi ptr [ %.175101.ph, %.lr.ph105.preheader238 ], [ %i.fv, %.lr.ph105.prol ]
  %.177100.unr = phi i32 [ %.177100.ph, %.lr.ph105.preheader238 ], [ %i.ga, %.lr.ph105.prol ]
  %.17999.unr = phi ptr [ %.17999.ph, %.lr.ph105.preheader238 ], [ %i.fy, %.lr.ph105.prol ]
  %i.gb = icmp eq i32 %i.cr, %.neg
  br i1 %i.gb, label %._crit_edge, label %.lr.ph105

.lr.ph:                                           ; preds = %.noexc, %.lr.ph
  %.06992 = phi ptr [ %i.gl, %.lr.ph ], [ %i.by, %.noexc ] ; 3 uses
  %.07091 = phi ptr [ %i.gm, %.lr.ph ], [ %i.ce, %.noexc ] ; 2 uses
  %.07290 = phi ptr [ %i.gn, %.lr.ph ], [ %i.cj, %.noexc ] ; 2 uses
  %.07489 = phi ptr [ %i.go, %.lr.ph ], [ %i.cm, %.noexc ] ; 2 uses
  %.07688 = phi i32 [ %i.gq, %.lr.ph ], [ 0, %.noexc ]
  %.07887 = phi ptr [ %i.gp, %.lr.ph ], [ %i.cp, %.noexc ] ; 2 uses
  %6 = load <8 x float>, ptr %.06992, align 1, !tbaa !42 ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.06992, i64 32
  %7 = load <8 x float>, ptr %i.gc, align 1, !tbaa !42 ; 2 uses
  %i.gd = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ge = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.gf = shufflevector <8 x float> %6, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gg = shufflevector <8 x float> %7, <8 x float> poison, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.gh = shufflevector <4 x float> %i.gd, <4 x float> %i.ge, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gi = shufflevector <4 x float> %i.ge, <4 x float> %i.gd, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  %i.gj = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gk = shufflevector <4 x float> %i.gg, <4 x float> %i.gf, <4 x i32> <i32 6, i32 7, i32 2, i32 3>
  store <4 x float> %i.gh, ptr %.07091, align 1, !tbaa !42
  store <4 x float> %i.gi, ptr %.07290, align 1, !tbaa !42
  store <4 x float> %i.gj, ptr %.07489, align 1, !tbaa !42
  store <4 x float> %i.gk, ptr %.07887, align 1, !tbaa !42
  %i.gl = getelementptr inbounds nuw i8, ptr %.06992, i64 64 ; 2 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.07091, i64 16 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %.07290, i64 16 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %.07489, i64 16 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %.07887, i64 16 ; 2 uses
  %i.gq = add nuw nsw i32 %.07688, 4              ; 3 uses
  %i.gr = or disjoint i32 %i.gq, 3
  %i.gs = load i32, ptr %5, align 4, !tbaa !25    ; 2 uses
  %i.gt = icmp slt i32 %i.gr, %i.gs
  br i1 %i.gt, label %.lr.ph, label %.preheader, !llvm.loop !92

.lr.ph105:                                        ; preds = %.lr.ph105.prol.loopexit, %.lr.ph105
  %.1104 = phi ptr [ %i.hr, %.lr.ph105 ], [ %.1104.unr, %.lr.ph105.prol.loopexit ] ; 9 uses
  %.171103 = phi ptr [ %i.hh, %.lr.ph105 ], [ %.171103.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.173102 = phi ptr [ %i.hk, %.lr.ph105 ], [ %.173102.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.175101 = phi ptr [ %i.hn, %.lr.ph105 ], [ %.175101.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %.177100 = phi i32 [ %i.hs, %.lr.ph105 ], [ %.177100.unr, %.lr.ph105.prol.loopexit ]
  %.17999 = phi ptr [ %i.hq, %.lr.ph105 ], [ %.17999.unr, %.lr.ph105.prol.loopexit ] ; 3 uses
  %i.gu = load float, ptr %.1104, align 4, !tbaa !38
  %i.gv = getelementptr inbounds nuw i8, ptr %.171103, i64 4
  store float %i.gu, ptr %.171103, align 4, !tbaa !38
  %i.gw = getelementptr inbounds nuw i8, ptr %.1104, i64 4
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !38
  %i.gy = getelementptr inbounds nuw i8, ptr %.173102, i64 4
  store float %i.gx, ptr %.173102, align 4, !tbaa !38
  %i.gz = getelementptr inbounds nuw i8, ptr %.1104, i64 8
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !38
  %i.hb = getelementptr inbounds nuw i8, ptr %.175101, i64 4
  store float %i.ha, ptr %.175101, align 4, !tbaa !38
  %i.hc = getelementptr inbounds nuw i8, ptr %.1104, i64 12
  %i.hd = load float, ptr %i.hc, align 4, !tbaa !38
  %i.he = getelementptr inbounds nuw i8, ptr %.17999, i64 4
  store float %i.hd, ptr %.17999, align 4, !tbaa !38
  %i.hf = getelementptr inbounds nuw i8, ptr %.1104, i64 16
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !38
  %i.hh = getelementptr inbounds nuw i8, ptr %.171103, i64 8
  store float %i.hg, ptr %i.gv, align 4, !tbaa !38
  %i.hi = getelementptr inbounds nuw i8, ptr %.1104, i64 20
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !38
  %i.hk = getelementptr inbounds nuw i8, ptr %.173102, i64 8
  store float %i.hj, ptr %i.gy, align 4, !tbaa !38
  %i.hl = getelementptr inbounds nuw i8, ptr %.1104, i64 24
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !38
  %i.hn = getelementptr inbounds nuw i8, ptr %.175101, i64 8
  store float %i.hm, ptr %i.hb, align 4, !tbaa !38
  %i.ho = getelementptr inbounds nuw i8, ptr %.1104, i64 28
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !38
  %i.hq = getelementptr inbounds nuw i8, ptr %.17999, i64 8
  store float %i.hp, ptr %i.he, align 4, !tbaa !38
  %i.hr = getelementptr inbounds nuw i8, ptr %.1104, i64 32
  %i.hs = add nuw nsw i32 %.177100, 2             ; 2 uses
  %exitcond121.not.1 = icmp eq i32 %i.hs, %i.cr
  br i1 %exitcond121.not.1, label %._crit_edge, label %.lr.ph105, !llvm.loop !93

._crit_edge:                                      ; preds = %.lr.ph105.prol.loopexit, %.lr.ph105, %middle.block, %.preheader
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %lftr.wideiv125 = trunc i64 %indvars.iv.next123 to i32
  %exitcond126.not = icmp eq i32 %i.q, %lftr.wideiv125
  br i1 %exitcond126.not, label %._crit_edge108, label %.noexc, !llvm.loop !94

._crit_edge108:                                   ; preds = %._crit_edge.us, %._crit_edge, %.noexc.lr.ph.split.us, %bb.b
  call void @__kmpc_for_static_fini(ptr nonnull @1, i32 %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge108, %bb.a
  ret void
}

; Function Attrs: alwaysinline norecurse nounwind uwtable
define internal void @_ZNK4ncnn11Flatten_x867forwardERKNS_3MatERS1_RKNS_6OptionE.omp_outlined.2(ptr noalias nofree noundef readonly captures(none) %0, ptr noalias nofree readnone captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(4) %5) #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = load i32, ptr %2, align 4, !tbaa !25     ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = add nsw i32 %i.e, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 0, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 %i.g, ptr %i.b, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store i32 1, ptr %i.c, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !25
  %i.h = load i32, ptr %0, align 4, !tbaa !25     ; 2 uses
  call void @__kmpc_for_static_init_4(ptr nonnull @1, i32 %i.h, i32 34, ptr nonnull %i.d, ptr nonnull %i.a, ptr nonnull %i.b, ptr nonnull %i.c, i32 1, i32 1)
  %i.i = load i32, ptr %i.b, align 4, !tbaa !25
  %i.j = call i32 @llvm.smin.i32(i32 %i.i, i32 %i.g) ; 4 uses
  store i32 %i.j, ptr %i.b, align 4, !tbaa !25
  %i.k = load i32, ptr %i.a, align 4, !tbaa !25   ; 3 uses
  %.not34 = icmp sgt i32 %i.k, %i.j
  br i1 %.not34, label %._crit_edge36.split, label %.noexc.lr.ph

.noexc.lr.ph:                                     ; preds = %bb.b
  %i.l = load ptr, ptr %3, align 8, !tbaa !20, !noalias !112 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.n = load i64, ptr %i.m, align 8, !tbaa !23, !noalias !112 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !16, !noalias !112 ; 3 uses
  %factor.op.mul = mul i64 %i.n, %i.p
  %i.q = load ptr, ptr %4, align 8, !tbaa !20     ; 3 uses
  %i.r = load i32, ptr %5, align 4, !tbaa !25     ; 7 uses
  %i.s = icmp sgt i32 %i.r, 0
  br i1 %i.s, label %.noexc.preheader, label %._crit_edge36.split

.noexc.preheader:                                 ; preds = %.noexc.lr.ph
  %i.t = sext i32 %i.k to i64                     ; 5 uses
  %i.u = zext nneg i32 %i.r to i64                ; 5 uses
  %i.v = add nsw i32 %i.j, 1
  %i.w = mul i64 %i.p, %i.n                       ; 2 uses
  %i.x = sub i32 %i.j, %i.k
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nsw i64 %i.t, %i.y
  %i.aa = mul i64 %i.w, %i.z
  %i.ab = add nsw i32 %i.r, -1
  %i.ac = zext i32 %i.ab to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  %i.ae = getelementptr i8, ptr %i.l, i64 %i.aa
  %i.af = getelementptr i8, ptr %i.ae, i64 %i.ad
  %scevgep = getelementptr i8, ptr %i.af, i64 4
  %i.ag = mul i64 %i.p, %i.n
  %i.ah = mul i64 %i.ag, %i.t
  %scevgep45 = getelementptr i8, ptr %i.l, i64 %i.ah
  %i.ai = add nsw i64 %i.t, %i.y
  %i.aj = shl nsw i64 %i.ai, 2
  %i.ak = mul i64 %i.aj, %i.u
  %i.al = getelementptr i8, ptr %i.q, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 %i.ad
  %scevgep46 = getelementptr i8, ptr %i.am, i64 4
  %i.an = mul nsw i64 %i.t, %i.u
  %i.ao = shl i64 %i.an, 2
  %scevgep47 = getelementptr i8, ptr %i.q, i64 %i.ao
  %min.iters.check = icmp ult i32 %i.r, 8
  %bound0 = icmp ult ptr %scevgep47, %scevgep
  %bound1 = icmp ult ptr %scevgep45, %scevgep46
  %found.conflict = and i1 %bound0, %bound1
  %stride.check = icmp slt i64 %i.w, 0
  %i.ap = or i1 %found.conflict, %stride.check
  %n.vec = and i64 %i.u, 2147483640               ; 4 uses
  %i.aq = trunc nuw nsw i64 %n.vec to i32
  %i.ar = shl nuw nsw i64 %n.vec, 2               ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.u
  br label %.noexc

.noexc:                                           ; preds = %.noexc.preheader, %._crit_edge
  %indvars.iv = phi i64 [ %i.t, %.noexc.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 3 uses
  %.reass = mul i64 %factor.op.mul, %indvars.iv
  %i.as = getelementptr inbounds nuw i8, ptr %i.l, i64 %.reass ; 3 uses
  %i.at = mul nsw i64 %indvars.iv, %i.u
  %i.au = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.at ; 3 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.ap
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc
  %i.av = getelementptr i8, ptr %i.au, i64 %i.ar
  %i.aw = getelementptr i8, ptr %i.as, i64 %i.ar
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.au, i64 %i.ax ; 2 uses
  %next.gep48 = getelementptr i8, ptr %i.as, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep48, i64 16
  %wide.load = load <4 x float>, ptr %next.gep48, align 4, !tbaa !38, !alias.scope !113
  %wide.load49 = load <4 x float>, ptr %i.ay, align 4, !tbaa !38, !alias.scope !113
  %i.az = getelementptr i8, ptr %next.gep, i64 16
  store <4 x float> %wide.load, ptr %next.gep, align 4, !tbaa !38, !alias.scope !114, !noalias !113
  store <4 x float> %wide.load49, ptr %i.az, align 4, !tbaa !38, !alias.scope !114, !noalias !113
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !109

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.noexc, %middle.block
  %.033.ph = phi i32 [ %i.aq, %middle.block ], [ 0, %.noexc ] ; 4 uses
  %.02132.ph = phi ptr [ %i.av, %middle.block ], [ %i.au, %.noexc ] ; 2 uses
  %.02231.ph = phi ptr [ %i.aw, %middle.block ], [ %i.as, %.noexc ] ; 2 uses
  %i.bb = sub i32 %i.r, %.033.ph
  %xtraiter = and i32 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
end_hunk_1
