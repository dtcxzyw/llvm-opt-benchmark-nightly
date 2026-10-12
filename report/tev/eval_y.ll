Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/eval_y?download=true
inline.NumInlined: 169
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 73
loop-unroll.NumUnrolled: 95
begin_hunk_0_@Do_Offset:bb.a
  call void @ffpmsg(ptr noundef nonnull %i.c) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #24
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !33
  %.not233 = icmp eq i32 %i.aj, 0
  br i1 %.not233, label %bb.h, label %bb.i

bb.h:                                             ; preds = %fits_parser_yyerror.exit
  store i32 431, ptr %i.ag, align 8, !tbaa !33
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %fits_parser_yyerror.exit
  %i.ak = load i32, ptr %i.s, align 4, !tbaa !22
  %.off.i = add i32 %i.ak, -261
  %switch.i = icmp ult i32 %.off.i, 2
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !10 ; 4 uses
  %.not14.i = icmp eq ptr %i.am, null             ; 2 uses
  br i1 %switch.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  br i1 %.not14.i, label %.critedge.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !48 ; 2 uses
  %.not15.i = icmp eq ptr %i.an, null
  br i1 %.not15.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @free(ptr noundef nonnull %i.an) #24
  %.pre.i = load ptr, ptr %i.al, align 8, !tbaa !10
  br label %.sink.split.i

bb.m:                                             ; preds = %bb.i
  br i1 %.not14.i, label %.critedge.sink.split, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.m, %bb.l, %bb.k
  %.sink.i = phi ptr [ %i.am, %bb.k ], [ %.pre.i, %bb.l ], [ %i.am, %bb.m ]
  call void @free(ptr noundef %.sink.i) #24
  store ptr null, ptr %i.al, align 8, !tbaa !10
  br label %.critedge.sink.split

bb.n:                                             ; preds = %._crit_edge317, %bb.e
  %i.ao = phi i64 [ %.pre, %._crit_edge317 ], [ %i.ad, %bb.e ] ; 3 uses
  %i.ap = icmp slt i64 %i.r, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.aq = sub nsw i64 %i.ao, %i.r
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !46 ; 2 uses
  %spec.select = tail call i64 @llvm.smin.i64(i64 %i.aq, i64 %i.as) ; 4 uses
  %i.at = sub nsw i64 %i.as, %spec.select         ; 2 uses
  %i.au = icmp slt i64 %i.r, 1
  %i.av = icmp sgt i64 %spec.select, 0
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph295, label %.loopexit268

.lr.ph295:                                        ; preds = %bb.o
  %.not231284 = icmp eq i64 %.0, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 6 uses
  %xtraiter374 = and i64 %.0, 3                   ; 2 uses
  %lcmp.mod375.not = icmp eq i64 %xtraiter374, 0
  %i.ba = icmp ult i64 %.0, 4
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph295, %.loopexit
  %.0187293 = phi i64 [ 0, %.lr.ph295 ], [ %.2, %.loopexit ] ; 10 uses
  %.1199292 = phi i64 [ %spec.select, %.lr.ph295 ], [ %i.db, %.loopexit ] ; 2 uses
  %.0205291 = phi i64 [ %i.r, %.lr.ph295 ], [ %i.da, %.loopexit ] ; 2 uses
  %i.bb = load i32, ptr %i.s, align 4, !tbaa !22
  %i.bc = icmp eq i32 %i.bb, 262
  br i1 %i.bc, label %bb.q, label %.preheader267

.preheader267:                                    ; preds = %bb.p
  br i1 %.not231284, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader267
  br i1 %lcmp.mod375.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.1286.prol = phi i64 [ %i.bf, %.lr.ph.prol ], [ %.0187293, %.lr.ph.preheader ] ; 2 uses
  %.2194285.prol = phi i64 [ %i.bd, %.lr.ph.prol ], [ %.0, %.lr.ph.preheader ]
  %prol.iter376 = phi i64 [ %prol.iter376.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.bd = add nsw i64 %.2194285.prol, -1          ; 2 uses
  %i.be = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.bf = add nsw i64 %.1286.prol, 1              ; 3 uses
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %.1286.prol
  store i8 1, ptr %i.bg, align 1, !tbaa !10
  %prol.iter376.next = add i64 %prol.iter376, 1   ; 2 uses
  %prol.iter376.cmp.not = icmp eq i64 %prol.iter376.next, %xtraiter374
  br i1 %prol.iter376.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !203

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa359.unr = phi i64 [ poison, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %.1286.unr = phi i64 [ %.0187293, %.lr.ph.preheader ], [ %i.bf, %.lr.ph.prol ]
  %.2194285.unr = phi i64 [ %.0, %.lr.ph.preheader ], [ %i.bd, %.lr.ph.prol ]
  br i1 %i.ba, label %.loopexit, label %.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.bh = load i64, ptr %i.ay, align 8, !tbaa !23 ; 6 uses
  %i.bi = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %.0187293
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !48
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bh
  store i8 0, ptr %i.bl, align 1, !tbaa !10
  %.not232288 = icmp eq i64 %i.bh, 0
  br i1 %.not232288, label %._crit_edge, label %.lr.ph290.preheader

.lr.ph290.preheader:                              ; preds = %bb.q
  %xtraiter377 = and i64 %i.bh, 3                 ; 2 uses
  %lcmp.mod378.not = icmp eq i64 %xtraiter377, 0
  br i1 %lcmp.mod378.not, label %.lr.ph290.prol.loopexit, label %.lr.ph290.prol

.lr.ph290.prol:                                   ; preds = %.lr.ph290.preheader, %.lr.ph290.prol
  %.1193289.prol = phi i64 [ %i.bm, %.lr.ph290.prol ], [ %i.bh, %.lr.ph290.preheader ]
  %prol.iter379 = phi i64 [ %prol.iter379.next, %.lr.ph290.prol ], [ 0, %.lr.ph290.preheader ]
  %i.bm = add nsw i64 %.1193289.prol, -1          ; 3 uses
  %i.bn = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %.0187293
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm
  store i8 48, ptr %i.bq, align 1, !tbaa !10
  %prol.iter379.next = add i64 %prol.iter379, 1   ; 2 uses
  %prol.iter379.cmp.not = icmp eq i64 %prol.iter379.next, %xtraiter377
  br i1 %prol.iter379.cmp.not, label %.lr.ph290.prol.loopexit, label %.lr.ph290.prol, !llvm.loop !204

.lr.ph290.prol.loopexit:                          ; preds = %.lr.ph290.prol, %.lr.ph290.preheader
  %.1193289.unr = phi i64 [ %i.bh, %.lr.ph290.preheader ], [ %i.bm, %.lr.ph290.prol ]
  %i.br = icmp ult i64 %i.bh, 4
  br i1 %i.br, label %._crit_edge, label %.lr.ph290

.lr.ph290:                                        ; preds = %.lr.ph290.prol.loopexit, %.lr.ph290
  %.1193289 = phi i64 [ %i.ch, %.lr.ph290 ], [ %.1193289.unr, %.lr.ph290.prol.loopexit ] ; 4 uses
  %i.bs = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %.0187293
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !48
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.1193289
  %i.bw = getelementptr i8, ptr %i.bv, i64 -1
  store i8 48, ptr %i.bw, align 1, !tbaa !10
  %i.bx = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bx, i64 %.0187293
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !48
  %i.ca = getelementptr i8, ptr %i.bz, i64 %.1193289
  %i.cb = getelementptr i8, ptr %i.ca, i64 -2
  store i8 48, ptr %i.cb, align 1, !tbaa !10
  %i.cc = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.cc, i64 %.0187293
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !48
  %i.cf = getelementptr i8, ptr %i.ce, i64 %.1193289
  %i.cg = getelementptr i8, ptr %i.cf, i64 -3
  store i8 48, ptr %i.cg, align 1, !tbaa !10
  %i.ch = add nsw i64 %.1193289, -4               ; 3 uses
  %i.ci = load ptr, ptr %i.az, align 8, !tbaa !10
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.ci, i64 %.0187293
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !48
  %i.cl = getelementptr inbounds i8, ptr %i.ck, i64 %i.ch
  store i8 48, ptr %i.cl, align 1, !tbaa !10
  %.not232.3 = icmp eq i64 %i.ch, 0
  br i1 %.not232.3, label %._crit_edge, label %.lr.ph290, !llvm.loop !205

._crit_edge:                                      ; preds = %.lr.ph290.prol.loopexit, %.lr.ph290, %bb.q
  %i.cm = add nsw i64 %.0187293, 1
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.1286 = phi i64 [ %i.cx, %.lr.ph ], [ %.1286.unr, %.lr.ph.prol.loopexit ] ; 5 uses
  %.2194285 = phi i64 [ %i.cv, %.lr.ph ], [ %.2194285.unr, %.lr.ph.prol.loopexit ]
  %i.cn = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.co = getelementptr inbounds i8, ptr %i.cn, i64 %.1286
  store i8 1, ptr %i.co, align 1, !tbaa !10
  %i.cp = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.1286
  %i.cr = getelementptr i8, ptr %i.cq, i64 1
  store i8 1, ptr %i.cr, align 1, !tbaa !10
  %i.cs = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.ct = getelementptr i8, ptr %i.cs, i64 %.1286
  %i.cu = getelementptr i8, ptr %i.ct, i64 2
  store i8 1, ptr %i.cu, align 1, !tbaa !10
  %i.cv = add nsw i64 %.2194285, -4               ; 2 uses
  %i.cw = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.cx = add nsw i64 %.1286, 4                   ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 %.1286
  %i.cz = getelementptr i8, ptr %i.cy, i64 3
  store i8 1, ptr %i.cz, align 1, !tbaa !10
  %.not231.3 = icmp eq i64 %i.cv, 0
  br i1 %.not231.3, label %.loopexit, label %.lr.ph, !llvm.loop !206

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %.preheader267, %._crit_edge
  %.2 = phi i64 [ %i.cm, %._crit_edge ], [ %.0187293, %.preheader267 ], [ %.lcssa359.unr, %.lr.ph.prol.loopexit ], [ %i.cx, %.lr.ph ] ; 2 uses
  %i.da = add nsw i64 %.0205291, 1                ; 2 uses
  %i.db = add nsw i64 %.1199292, -1               ; 2 uses
  %i.dc = icmp slt i64 %.0205291, 0
  %i.dd = icmp sgt i64 %.1199292, 1
  %i.de = select i1 %i.dc, i1 %i.dd, i1 false
  br i1 %i.de, label %bb.p, label %.loopexit268, !llvm.loop !207

bb.r:                                             ; preds = %bb.n
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !46 ; 6 uses
  %i.dh = add nsw i64 %i.dg, %i.r                 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !217
  %i.dk = add i64 %i.dj, %i.ao                    ; 3 uses
  %i.dl = icmp sgt i64 %i.dh, %i.dk
  br i1 %i.dl, label %bb.s, label %.thread255

bb.s:                                             ; preds = %bb.r
  %i.dm = sub nsw i64 %i.dh, %i.dk                ; 2 uses
  %i.dn = icmp sgt i64 %i.dm, %i.dg
  %. = select i1 %i.dn, i64 %i.r, i64 %i.dk       ; 7 uses
  %.234 = tail call i64 @llvm.smin.i64(i64 %i.dm, i64 %i.dg) ; 7 uses
  %i.do = sub nsw i64 %i.dg, %.234                ; 5 uses
  %i.dp = mul nsw i64 %i.do, %.0                  ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 3 uses
  %i.dr = add nsw i64 %.234, %.
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !218 ; 2 uses
  %i.dt = icmp sgt i64 %i.dr, %i.ds
  %i.du = icmp sgt i64 %.234, 0
  %i.dv = and i1 %i.du, %i.dt
  br i1 %i.dv, label %.lr.ph281, label %.loopexit268

.lr.ph281:                                        ; preds = %bb.s
  %.not273 = icmp eq i64 %.0, 0
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 5 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 12 uses
  br i1 %.not273, label %.lr.ph281.split.us, label %.lr.ph281.split.preheader

.lr.ph281.split.preheader:                        ; preds = %.lr.ph281
  %i.dz = mul nsw i64 %i.dg, %.0
  %xtraiter = and i64 %.0, 3                      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %i.ea = icmp ult i64 %.0, 4
  br label %.lr.ph281.split

.lr.ph281.split.us:                               ; preds = %.lr.ph281
  %i.eb = icmp eq i32 %i.t, 262
  br i1 %i.eb, label %.lr.ph281.split.us.split, label %.lr.ph281.split.us.split.us

.lr.ph281.split.us.split.us:                      ; preds = %.lr.ph281.split.us
  %i.ec = add nsw i64 %.234, -1
  %i.ed = add nsw i64 %i.dh, -1                   ; 2 uses
  %smin = tail call i64 @llvm.smin.i64(i64 %i.ds, i64 %i.ed)
  %i.ee = sub i64 %i.ed, %smin
  %i.ef = tail call i64 @llvm.usub.sat.i64(i64 %i.ec, i64 %i.ee)
  br label %.loopexit268

.lr.ph281.split.us.split:                         ; preds = %.lr.ph281.split.us, %.loopexit269.us
  %.0188280.us = phi i64 [ %.2190.us, %.loopexit269.us ], [ 0, %.lr.ph281.split.us ] ; 2 uses
  %.3201279.us = phi i64 [ %i.fo, %.loopexit269.us ], [ %.234, %.lr.ph281.split.us ] ; 2 uses
  %i.eg = load i32, ptr %i.s, align 4, !tbaa !22
  %i.eh = icmp eq i32 %i.eg, 262
  br i1 %i.eh, label %bb.t, label %.loopexit269.us

bb.t:                                             ; preds = %.lr.ph281.split.us.split
  %i.ei = load i64, ptr %i.dx, align 8, !tbaa !23 ; 6 uses
  %i.ej = add nsw i64 %.0188280.us, -1            ; 9 uses
  %i.ek = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.el = getelementptr inbounds [8 x i8], ptr %i.ek, i64 %i.ej
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !48
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ei
  store i8 0, ptr %i.en, align 1, !tbaa !10
  %.not223276.us = icmp eq i64 %i.ei, 0
  br i1 %.not223276.us, label %.loopexit269.us, label %.lr.ph278.us.preheader

.lr.ph278.us.preheader:                           ; preds = %bb.t
  %xtraiter371 = and i64 %i.ei, 3                 ; 2 uses
  %lcmp.mod372.not = icmp eq i64 %xtraiter371, 0
  br i1 %lcmp.mod372.not, label %.lr.ph278.us.prol.loopexit, label %.lr.ph278.us.prol

.lr.ph278.us.prol:                                ; preds = %.lr.ph278.us.preheader, %.lr.ph278.us.prol
  %.4196277.us.prol = phi i64 [ %i.eo, %.lr.ph278.us.prol ], [ %i.ei, %.lr.ph278.us.preheader ]
  %prol.iter373 = phi i64 [ %prol.iter373.next, %.lr.ph278.us.prol ], [ 0, %.lr.ph278.us.preheader ]
  %i.eo = add nsw i64 %.4196277.us.prol, -1       ; 3 uses
  %i.ep = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.ej
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !48
  %i.es = getelementptr inbounds i8, ptr %i.er, i64 %i.eo
  store i8 48, ptr %i.es, align 1, !tbaa !10
  %prol.iter373.next = add i64 %prol.iter373, 1   ; 2 uses
  %prol.iter373.cmp.not = icmp eq i64 %prol.iter373.next, %xtraiter371
  br i1 %prol.iter373.cmp.not, label %.lr.ph278.us.prol.loopexit, label %.lr.ph278.us.prol, !llvm.loop !208

.lr.ph278.us.prol.loopexit:                       ; preds = %.lr.ph278.us.prol, %.lr.ph278.us.preheader
  %.4196277.us.unr = phi i64 [ %i.ei, %.lr.ph278.us.preheader ], [ %i.eo, %.lr.ph278.us.prol ]
  %i.et = icmp ult i64 %i.ei, 4
  br i1 %i.et, label %.loopexit269.us, label %.lr.ph278.us

.lr.ph278.us:                                     ; preds = %.lr.ph278.us.prol.loopexit, %.lr.ph278.us
  %.4196277.us = phi i64 [ %i.fj, %.lr.ph278.us ], [ %.4196277.us.unr, %.lr.ph278.us.prol.loopexit ] ; 4 uses
  %i.eu = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.ej
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !48
  %i.ex = getelementptr i8, ptr %i.ew, i64 %.4196277.us
  %i.ey = getelementptr i8, ptr %i.ex, i64 -1
  store i8 48, ptr %i.ey, align 1, !tbaa !10
  %i.ez = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ej
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !48
  %i.fc = getelementptr i8, ptr %i.fb, i64 %.4196277.us
  %i.fd = getelementptr i8, ptr %i.fc, i64 -2
  store i8 48, ptr %i.fd, align 1, !tbaa !10
  %i.fe = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.ej
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !48
  %i.fh = getelementptr i8, ptr %i.fg, i64 %.4196277.us
  %i.fi = getelementptr i8, ptr %i.fh, i64 -3
  store i8 48, ptr %i.fi, align 1, !tbaa !10
  %i.fj = add nsw i64 %.4196277.us, -4            ; 3 uses
  %i.fk = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.ej
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !48
  %i.fn = getelementptr inbounds i8, ptr %i.fm, i64 %i.fj
  store i8 48, ptr %i.fn, align 1, !tbaa !10
  %.not223.us.3 = icmp eq i64 %i.fj, 0
  br i1 %.not223.us.3, label %.loopexit269.us, label %.lr.ph278.us, !llvm.loop !209

.loopexit269.us:                                  ; preds = %.lr.ph278.us.prol.loopexit, %.lr.ph278.us, %.lr.ph281.split.us.split, %bb.t
  %.2190.us = phi i64 [ %i.ej, %bb.t ], [ %.0188280.us, %.lr.ph281.split.us.split ], [ %i.ej, %.lr.ph278.us ], [ %i.ej, %.lr.ph278.us.prol.loopexit ]
  %i.fo = add nsw i64 %.3201279.us, -1            ; 3 uses
  %i.fp = add nsw i64 %i.fo, %.
  %i.fq = load i64, ptr %i.dq, align 8, !tbaa !218
  %i.fr = icmp sgt i64 %i.fp, %i.fq
  %i.fs = icmp sgt i64 %.3201279.us, 1
  %i.ft = and i1 %i.fs, %i.fr
  br i1 %i.ft, label %.lr.ph281.split.us.split, label %.loopexit268, !llvm.loop !210

.lr.ph281.split:                                  ; preds = %.lr.ph281.split.preheader, %.loopexit269
  %.0188280 = phi i64 [ %.2190, %.loopexit269 ], [ %i.dz, %.lr.ph281.split.preheader ] ; 3 uses
  %.3201279 = phi i64 [ %i.ht, %.loopexit269 ], [ %.234, %.lr.ph281.split.preheader ] ; 2 uses
  %i.fu = load i32, ptr %i.s, align 4, !tbaa !22
  %i.fv = icmp eq i32 %i.fu, 262
  br i1 %i.fv, label %bb.u, label %.preheader270.preheader

.preheader270.preheader:                          ; preds = %.lr.ph281.split
  br i1 %lcmp.mod.not, label %.preheader270.prol.loopexit, label %.preheader270.prol

.preheader270.prol:                               ; preds = %.preheader270.preheader, %.preheader270.prol
  %.1189275.prol = phi i64 [ %i.fy, %.preheader270.prol ], [ %.0188280, %.preheader270.preheader ]
  %.5197274.prol = phi i64 [ %i.fw, %.preheader270.prol ], [ %.0, %.preheader270.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader270.prol ], [ 0, %.preheader270.preheader ]
  %i.fw = add nsw i64 %.5197274.prol, -1          ; 2 uses
  %i.fx = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.fy = add nsw i64 %.1189275.prol, -1          ; 4 uses
  %i.fz = getelementptr inbounds i8, ptr %i.fx, i64 %i.fy
  store i8 1, ptr %i.fz, align 1, !tbaa !10
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader270.prol.loopexit, label %.preheader270.prol, !llvm.loop !211

.preheader270.prol.loopexit:                      ; preds = %.preheader270.prol, %.preheader270.preheader
  %.lcssa366.unr = phi i64 [ poison, %.preheader270.preheader ], [ %i.fy, %.preheader270.prol ]
  %.1189275.unr = phi i64 [ %.0188280, %.preheader270.preheader ], [ %i.fy, %.preheader270.prol ]
  %.5197274.unr = phi i64 [ %.0, %.preheader270.preheader ], [ %i.fw, %.preheader270.prol ]
  br i1 %i.ea, label %.loopexit269, label %.preheader270

bb.u:                                             ; preds = %.lr.ph281.split
  %i.ga = load i64, ptr %i.dx, align 8, !tbaa !23 ; 6 uses
  %i.gb = add nsw i64 %.0188280, -1               ; 9 uses
  %i.gc = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.gc, i64 %i.gb
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !48
  %i.gf = getelementptr inbounds i8, ptr %i.ge, i64 %i.ga
  store i8 0, ptr %i.gf, align 1, !tbaa !10
  %.not223276 = icmp eq i64 %i.ga, 0
  br i1 %.not223276, label %.loopexit269, label %.lr.ph278.preheader

.lr.ph278.preheader:                              ; preds = %bb.u
  %xtraiter368 = and i64 %i.ga, 3                 ; 2 uses
  %lcmp.mod369.not = icmp eq i64 %xtraiter368, 0
  br i1 %lcmp.mod369.not, label %.lr.ph278.prol.loopexit, label %.lr.ph278.prol

.lr.ph278.prol:                                   ; preds = %.lr.ph278.preheader, %.lr.ph278.prol
  %.4196277.prol = phi i64 [ %i.gg, %.lr.ph278.prol ], [ %i.ga, %.lr.ph278.preheader ]
  %prol.iter370 = phi i64 [ %prol.iter370.next, %.lr.ph278.prol ], [ 0, %.lr.ph278.preheader ]
  %i.gg = add nsw i64 %.4196277.prol, -1          ; 3 uses
  %i.gh = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %i.gb
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !48
  %i.gk = getelementptr inbounds i8, ptr %i.gj, i64 %i.gg
  store i8 48, ptr %i.gk, align 1, !tbaa !10
  %prol.iter370.next = add i64 %prol.iter370, 1   ; 2 uses
  %prol.iter370.cmp.not = icmp eq i64 %prol.iter370.next, %xtraiter368
  br i1 %prol.iter370.cmp.not, label %.lr.ph278.prol.loopexit, label %.lr.ph278.prol, !llvm.loop !212

.lr.ph278.prol.loopexit:                          ; preds = %.lr.ph278.prol, %.lr.ph278.preheader
  %.4196277.unr = phi i64 [ %i.ga, %.lr.ph278.preheader ], [ %i.gg, %.lr.ph278.prol ]
  %i.gl = icmp ult i64 %i.ga, 4
  br i1 %i.gl, label %.loopexit269, label %.lr.ph278

.lr.ph278:                                        ; preds = %.lr.ph278.prol.loopexit, %.lr.ph278
  %.4196277 = phi i64 [ %i.hb, %.lr.ph278 ], [ %.4196277.unr, %.lr.ph278.prol.loopexit ] ; 4 uses
  %i.gm = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %i.gb
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !48
  %i.gp = getelementptr i8, ptr %i.go, i64 %.4196277
  %i.gq = getelementptr i8, ptr %i.gp, i64 -1
  store i8 48, ptr %i.gq, align 1, !tbaa !10
  %i.gr = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gr, i64 %i.gb
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !48
  %i.gu = getelementptr i8, ptr %i.gt, i64 %.4196277
  %i.gv = getelementptr i8, ptr %i.gu, i64 -2
  store i8 48, ptr %i.gv, align 1, !tbaa !10
  %i.gw = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gb
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !48
  %i.gz = getelementptr i8, ptr %i.gy, i64 %.4196277
  %i.ha = getelementptr i8, ptr %i.gz, i64 -3
  store i8 48, ptr %i.ha, align 1, !tbaa !10
  %i.hb = add nsw i64 %.4196277, -4               ; 3 uses
  %i.hc = load ptr, ptr %i.dy, align 8, !tbaa !10
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.gb
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !48
  %i.hf = getelementptr inbounds i8, ptr %i.he, i64 %i.hb
  store i8 48, ptr %i.hf, align 1, !tbaa !10
  %.not223.3 = icmp eq i64 %i.hb, 0
  br i1 %.not223.3, label %.loopexit269, label %.lr.ph278, !llvm.loop !209

.preheader270:                                    ; preds = %.preheader270.prol.loopexit, %.preheader270
  %.1189275 = phi i64 [ %i.hr, %.preheader270 ], [ %.1189275.unr, %.preheader270.prol.loopexit ] ; 4 uses
  %.5197274 = phi i64 [ %i.hp, %.preheader270 ], [ %.5197274.unr, %.preheader270.prol.loopexit ]
  %i.hg = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.hh = getelementptr i8, ptr %i.hg, i64 %.1189275
  %i.hi = getelementptr i8, ptr %i.hh, i64 -1
  store i8 1, ptr %i.hi, align 1, !tbaa !10
  %i.hj = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.hk = getelementptr i8, ptr %i.hj, i64 %.1189275
  %i.hl = getelementptr i8, ptr %i.hk, i64 -2
  store i8 1, ptr %i.hl, align 1, !tbaa !10
  %i.hm = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.hn = getelementptr i8, ptr %i.hm, i64 %.1189275
  %i.ho = getelementptr i8, ptr %i.hn, i64 -3
  store i8 1, ptr %i.ho, align 1, !tbaa !10
  %i.hp = add nsw i64 %.5197274, -4               ; 2 uses
  %i.hq = load ptr, ptr %i.dw, align 8, !tbaa !37
  %i.hr = add nsw i64 %.1189275, -4               ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.hq, i64 %i.hr
  store i8 1, ptr %i.hs, align 1, !tbaa !10
  %.not.3 = icmp eq i64 %i.hp, 0
  br i1 %.not.3, label %.loopexit269, label %.preheader270, !llvm.loop !213

end_hunk_0
