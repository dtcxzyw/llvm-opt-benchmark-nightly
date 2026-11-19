Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/vp8l_dec?download=true
inline.NumInlined: 132
inline.NumDeleted: 56
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 15
begin_hunk_0_@ProcessRows:bb.a
bb.j:                                             ; preds = %._crit_edge.i
  %i.ap = sext i32 %i.ai to i64
  %i.aq = shl nsw i64 %i.ap, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ad, ptr align 4 %i.i, i64 %i.aq, i1 false)
  br label %ApplyInverseTransforms.exit

ApplyInverseTransforms.exit:                      ; preds = %.peel.next.i, %.lr.ph.i, %._crit_edge.i, %bb.j
  %i.ar = load i32, ptr %i.e, align 4, !tbaa !82  ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 132 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !96
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %1, i32 %i.at) ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 128 ; 2 uses
  %i.av = load i32, ptr %i.au, align 8, !tbaa !187 ; 4 uses
  %.024.i = tail call i32 @llvm.smax.i32(i32 %i.ar, i32 %i.av) ; 3 uses
  %.not.i71 = icmp slt i32 %.024.i, %spec.select.i
  br i1 %.not.i71, label %bb.k, label %SetCropWindow.exit.thread

bb.k:                                             ; preds = %ApplyInverseTransforms.exit
  %i.aw = icmp slt i32 %i.ar, %i.av
  %i.ax = sub nsw i32 %i.av, %i.ar
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = sext i32 %i.af to i64                   ; 6 uses
  %i.ba = mul nsw i64 %i.ay, %i.az
  %.0.idx = select i1 %i.aw, i64 %i.ba, i64 0
  %.0 = getelementptr inbounds i8, ptr %i.ad, i64 %.0.idx
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 120
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !73 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %.0, i64 %i.be ; 8 uses
  %i.bg = sub nsw i32 %.024.i, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !188
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ab, i64 124
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !72
  %i.bk = sub nsw i32 %i.bj, %i.bc                ; 6 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !93
  %i.bm = sub nsw i32 %spec.select.i, %.024.i     ; 15 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !94
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !56 ; 10 uses
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !71 ; 3 uses
  %i.br = icmp ugt i32 %i.bq, 10
  br i1 %i.br, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !190
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 3 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !88
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.by = load i32, ptr %i.bx, align 8, !tbaa !191
  %i.bz = sext i32 %i.by to i64                   ; 4 uses
  %i.ca = mul nsw i64 %i.bz, %i.bw
  %i.cb = getelementptr inbounds i8, ptr %i.bt, i64 %i.ca ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !92
  %.not69 = icmp eq i32 %i.cd, 0
  %i.ce = icmp sgt i32 %i.bm, 0                   ; 2 uses
  br i1 %.not69, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %i.ce, label %.lr.ph.i73, label %EmitRescaledRowsRGBA.exit

.lr.ph.i73:                                       ; preds = %bb.m
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  br label %bb.n

bb.n:                                             ; preds = %Export.exit.i, %.lr.ph.i73
  %.031.i = phi i32 [ 0, %.lr.ph.i73 ], [ %i.cr, %Export.exit.i ] ; 3 uses
  %.02830.i = phi i32 [ 0, %.lr.ph.i73 ], [ %i.di, %Export.exit.i ] ; 2 uses
  %i.cg = sext i32 %.031.i to i64
  %i.ch = mul nsw i64 %i.cg, %i.az
  %i.ci = getelementptr inbounds i8, ptr %i.bf, i64 %i.ch ; 2 uses
  %i.cj = sub nsw i32 %i.bm, %.031.i              ; 2 uses
  %i.ck = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.cl = tail call i32 @WebPRescaleNeededLines(ptr noundef %i.ck, i32 noundef %i.cj) #7
  %i.cm = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !193
  tail call void @WebPMultARGBRows(ptr noundef %i.ci, i32 noundef %i.af, i32 noundef %i.co, i32 noundef %i.cl, i32 noundef 0) #7
  %i.cp = load ptr, ptr %i.cf, align 8, !tbaa !95
  %i.cq = tail call i32 @WebPRescalerImport(ptr noundef %i.cp, i32 noundef %i.cj, ptr noundef %i.ci, i32 noundef %i.af) #7
  %i.cr = add nsw i32 %i.cq, %.031.i              ; 2 uses
  %i.cs = load ptr, ptr %i.cf, align 8, !tbaa !95 ; 6 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !194 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 52
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !195 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cy = getelementptr i8, ptr %i.cs, i64 56     ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cs, i64 64     ; 2 uses
  %.val.i16.i.i = load i32, ptr %i.cy, align 8, !tbaa !196
  %.val2.i17.i.i = load i32, ptr %i.cz, align 8, !tbaa !197
  %.not3.i18.i.i = icmp slt i32 %.val2.i17.i.i, %.val.i16.i.i
  br i1 %.not3.i18.i.i, label %WebPRescalerHasPendingOutput.exit.i.preheader.i, label %Export.exit.i

WebPRescalerHasPendingOutput.exit.i.preheader.i:  ; preds = %bb.n
  %i.da = sext i32 %.02830.i to i64
  %i.db = mul nsw i64 %i.da, %i.bz
  %i.dc = getelementptr inbounds i8, ptr %i.cb, i64 %i.db
  br label %WebPRescalerHasPendingOutput.exit.i.i

WebPRescalerHasPendingOutput.exit.i.i:            ; preds = %bb.o, %WebPRescalerHasPendingOutput.exit.i.preheader.i
  %.020.i.i = phi i32 [ %i.dh, %bb.o ], [ 0, %WebPRescalerHasPendingOutput.exit.i.preheader.i ] ; 2 uses
  %.01419.i.i = phi ptr [ %i.dg, %bb.o ], [ %i.dc, %WebPRescalerHasPendingOutput.exit.i.preheader.i ] ; 2 uses
  %i.dd = load i32, ptr %i.cx, align 8, !tbaa !198
  %i.de = icmp sgt i32 %i.dd, 0
  br i1 %i.de, label %Export.exit.i, label %bb.o

bb.o:                                             ; preds = %WebPRescalerHasPendingOutput.exit.i.i
  tail call void @WebPRescalerExportRow(ptr noundef nonnull %i.cs) #7
  %i.df = load ptr, ptr @WebPMultARGBRow, align 8, !tbaa !32
  tail call void %i.df(ptr noundef %i.cu, i32 noundef %i.cw, i32 noundef 1) #7, !inline_history !176
  tail call void @VP8LConvertFromBGRA(ptr noundef %i.cu, i32 noundef %i.cw, i32 noundef %i.bq, ptr noundef %.01419.i.i) #7
  %i.dg = getelementptr inbounds i8, ptr %.01419.i.i, i64 %i.bz
  %i.dh = add nuw nsw i32 %.020.i.i, 1            ; 2 uses
  %.val.i.i.i = load i32, ptr %i.cy, align 8, !tbaa !196
  %.val2.i.i.i = load i32, ptr %i.cz, align 8, !tbaa !197
  %.not3.i.i.i = icmp slt i32 %.val2.i.i.i, %.val.i.i.i
  br i1 %.not3.i.i.i, label %WebPRescalerHasPendingOutput.exit.i.i, label %Export.exit.i, !llvm.loop !177

Export.exit.i:                                    ; preds = %bb.o, %WebPRescalerHasPendingOutput.exit.i.i, %bb.n
  %.0.lcssa.i.i = phi i32 [ 0, %bb.n ], [ %i.dh, %bb.o ], [ %.020.i.i, %WebPRescalerHasPendingOutput.exit.i.i ]
  %i.di = add nsw i32 %.0.lcssa.i.i, %.02830.i    ; 2 uses
  %i.dj = icmp slt i32 %i.cr, %i.bm
  br i1 %i.dj, label %bb.n, label %EmitRescaledRowsRGBA.exit, !llvm.loop !178

bb.p:                                             ; preds = %bb.l
  br i1 %i.ce, label %.lr.ph.i75, label %EmitRescaledRowsRGBA.exit

.lr.ph.i75:                                       ; preds = %bb.p, %.lr.ph.i75
  %.015.i = phi ptr [ %i.dm, %.lr.ph.i75 ], [ %i.cb, %bb.p ] ; 2 uses
  %.01114.i = phi i32 [ %i.dk, %.lr.ph.i75 ], [ %i.bm, %bb.p ] ; 2 uses
  %.01213.i = phi ptr [ %i.dl, %.lr.ph.i75 ], [ %i.bf, %bb.p ] ; 2 uses
  %i.dk = add nsw i32 %.01114.i, -1
  tail call void @VP8LConvertFromBGRA(ptr noundef %.01213.i, i32 noundef %i.bk, i32 noundef %i.bq, ptr noundef %.015.i) #7
  %i.dl = getelementptr inbounds i8, ptr %.01213.i, i64 %i.az
  %i.dm = getelementptr inbounds i8, ptr %.015.i, i64 %i.bz
  %i.dn = icmp samesign ugt i32 %.01114.i, 1
  br i1 %i.dn, label %.lr.ph.i75, label %EmitRescaledRowsRGBA.exit, !llvm.loop !179

EmitRescaledRowsRGBA.exit:                        ; preds = %Export.exit.i, %.lr.ph.i75, %bb.p, %bb.m
  %i.do = phi i32 [ %i.bm, %.lr.ph.i75 ], [ 0, %bb.m ], [ %i.bm, %bb.p ], [ %i.di, %Export.exit.i ]
  %i.dp = load i32, ptr %i.bu, align 4, !tbaa !88
  %i.dq = add nsw i32 %i.dp, %i.do
  store i32 %i.dq, ptr %i.bu, align 4, !tbaa !88
  br label %SetCropWindow.exit.thread

bb.q:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %i.ab, i64 136
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !92
  %.not68 = icmp eq i32 %i.ds, 0
  br i1 %.not68, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !88 ; 2 uses
  %i.dv = icmp sgt i32 %i.bm, 0
  br i1 %i.dv, label %.lr.ph.i77, label %EmitRescaledRowsYUVA.exit

.lr.ph.i77:                                       ; preds = %bb.r
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 4 uses
  br label %bb.s

bb.s:                                             ; preds = %ExportYUVA.exit.i, %.lr.ph.i77
  %.028.i = phi ptr [ %i.bf, %.lr.ph.i77 ], [ %i.ei, %ExportYUVA.exit.i ] ; 3 uses
  %.02327.i = phi i32 [ 0, %.lr.ph.i77 ], [ %i.ef, %ExportYUVA.exit.i ] ; 2 uses
  %.02426.i = phi i32 [ %i.du, %.lr.ph.i77 ], [ %i.gh, %ExportYUVA.exit.i ] ; 2 uses
  %i.dx = sub nsw i32 %i.bm, %.02327.i            ; 2 uses
  %i.dy = load ptr, ptr %i.dw, align 8, !tbaa !95
  %i.dz = tail call i32 @WebPRescaleNeededLines(ptr noundef %i.dy, i32 noundef %i.dx) #7 ; 2 uses
  %i.ea = load ptr, ptr %i.dw, align 8, !tbaa !95
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 44
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !193
  tail call void @WebPMultARGBRows(ptr noundef %.028.i, i32 noundef %i.af, i32 noundef %i.ec, i32 noundef %i.dz, i32 noundef 0) #7
  %i.ed = load ptr, ptr %i.dw, align 8, !tbaa !95
  %i.ee = tail call i32 @WebPRescalerImport(ptr noundef %i.ed, i32 noundef %i.dx, ptr noundef %.028.i, i32 noundef %i.af) #7
  %i.ef = add nsw i32 %i.ee, %.02327.i            ; 2 uses
  %i.eg = sext i32 %i.dz to i64
  %i.eh = mul nsw i64 %i.eg, %i.az
  %i.ei = getelementptr inbounds i8, ptr %.028.i, i64 %i.eh
  %i.ej = load ptr, ptr %i.dw, align 8, !tbaa !95 ; 6 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 72
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !194 ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.ej, i64 52
  %i.en = load i32, ptr %i.em, align 4, !tbaa !195 ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ep = getelementptr i8, ptr %i.ej, i64 56     ; 2 uses
  %i.eq = getelementptr i8, ptr %i.ej, i64 64     ; 2 uses
  %.val.i15.i.i = load i32, ptr %i.ep, align 8, !tbaa !196
  %.val2.i16.i.i = load i32, ptr %i.eq, align 8, !tbaa !197
  %.not3.i17.i.i = icmp slt i32 %.val2.i16.i.i, %.val.i15.i.i
  br i1 %.not3.i17.i.i, label %WebPRescalerHasPendingOutput.exit.lr.ph.i.i, label %ExportYUVA.exit.i

WebPRescalerHasPendingOutput.exit.lr.ph.i.i:      ; preds = %bb.s
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 3
  %3 = sext i32 %.02426.i to i64
  br label %WebPRescalerHasPendingOutput.exit.i.i79

WebPRescalerHasPendingOutput.exit.i.i79:          ; preds = %ConvertToYUVA.exit.i.i, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %3, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i, %ConvertToYUVA.exit.i.i ] ; 4 uses
  %.019.i.i.a = phi i32 [ 0, %WebPRescalerHasPendingOutput.exit.lr.ph.i.i ], [ %i.gg, %ConvertToYUVA.exit.i.i ] ; 2 uses
  %i.es = load i32, ptr %i.eo, align 8, !tbaa !198
  %i.et = icmp sgt i32 %i.es, 0
  br i1 %i.et, label %ExportYUVA.exit.i, label %bb.t

bb.t:                                             ; preds = %WebPRescalerHasPendingOutput.exit.i.i79
  tail call void @WebPRescalerExportRow(ptr noundef nonnull %i.ej) #7
  %i.eu = load ptr, ptr @WebPMultARGBRow, align 8, !tbaa !32
  tail call void %i.eu(ptr noundef %i.el, i32 noundef %i.en, i32 noundef 1) #7, !inline_history !180
  %i.ev = load ptr, ptr %i.bo, align 8, !tbaa !56 ; 8 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %i.ex = load ptr, ptr @WebPConvertARGBToY, align 8, !tbaa !32
  %i.ey = load ptr, ptr %i.ew, align 8, !tbaa !200
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ev, i64 48
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !201
  %i.fb = sext i32 %i.fa to i64
  %i.fc = mul nsw i64 %indvars.iv.i.i, %i.fb
  %i.fd = getelementptr inbounds i8, ptr %i.ey, i64 %i.fc
  tail call void %i.ex(ptr noundef %i.el, ptr noundef %i.fd, i32 noundef %i.en) #7, !inline_history !181
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !202
  %4 = trunc nsw i64 %indvars.iv.i.i to i32       ; 2 uses
  %i.fg = ashr i32 %4, 1
  %i.fh = sext i32 %i.fg to i64                   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ev, i64 52
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !203
  %i.fk = sext i32 %i.fj to i64
  %i.fl = mul nsw i64 %i.fk, %i.fh
  %i.fm = getelementptr inbounds i8, ptr %i.ff, i64 %i.fl
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ev, i64 32
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !204
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !205
  %i.fr = sext i32 %i.fq to i64
  %i.fs = mul nsw i64 %i.fr, %i.fh
  %i.ft = getelementptr inbounds i8, ptr %i.fo, i64 %i.fs
  %i.fu = load ptr, ptr @WebPConvertARGBToUV, align 8, !tbaa !32
  %i.fv = and i32 %4, 1
  %i.fw = xor i32 %i.fv, 1
  tail call void %i.fu(ptr noundef %i.el, ptr noundef %i.fm, ptr noundef %i.ft, i32 noundef %i.en, i32 noundef %i.fw) #7, !inline_history !181
  %i.fx = getelementptr inbounds nuw i8, ptr %i.ev, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !206 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fy, null
  br i1 %.not.i.i.i, label %ConvertToYUVA.exit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fz = getelementptr inbounds nuw i8, ptr %i.ev, i64 60
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !207
  %i.gb = sext i32 %i.ga to i64
  %i.gc = mul nsw i64 %indvars.iv.i.i, %i.gb
  %i.gd = getelementptr inbounds i8, ptr %i.fy, i64 %i.gc
  %i.ge = load ptr, ptr @WebPExtractAlpha, align 8, !tbaa !32
  %i.gf = tail call i32 %i.ge(ptr noundef nonnull %i.er, i32 noundef 0, i32 noundef %i.en, i32 noundef 1, ptr noundef nonnull %i.gd, i32 noundef 0) #7, !inline_history !181 ; 0 uses
  br label %ConvertToYUVA.exit.i.i

ConvertToYUVA.exit.i.i:                           ; preds = %bb.u, %bb.t
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1
  %i.gg = add nuw nsw i32 %.019.i.i.a, 1          ; 2 uses
  %.val.i.i.i80 = load i32, ptr %i.ep, align 8, !tbaa !196
  %.val2.i.i.i81 = load i32, ptr %i.eq, align 8, !tbaa !197
  %.not3.i.i.i82 = icmp slt i32 %.val2.i.i.i81, %.val.i.i.i80
  br i1 %.not3.i.i.i82, label %WebPRescalerHasPendingOutput.exit.i.i79, label %ExportYUVA.exit.i, !llvm.loop !182

ExportYUVA.exit.i:                                ; preds = %ConvertToYUVA.exit.i.i, %WebPRescalerHasPendingOutput.exit.i.i79, %bb.s
  %.0.lcssa.i.i78 = phi i32 [ 0, %bb.s ], [ %i.gg, %ConvertToYUVA.exit.i.i ], [ %.019.i.i.a, %WebPRescalerHasPendingOutput.exit.i.i79 ]
  %i.gh = add nsw i32 %.0.lcssa.i.i78, %.02426.i  ; 2 uses
  %i.gi = icmp slt i32 %i.ef, %i.bm
  br i1 %i.gi, label %bb.s, label %EmitRescaledRowsYUVA.exit, !llvm.loop !183

bb.v:                                             ; preds = %bb.q
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !75 ; 2 uses
  %i.gl = getelementptr i8, ptr %0, i64 156
  %.val70 = load i32, ptr %i.gl, align 4, !tbaa !88 ; 4 uses
  %i.gm = add nsw i32 %i.bm, %.val70              ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.go = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  %i.gp = load i32, ptr %i.go, align 8, !tbaa !10 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.bp, i64 52
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !10 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bp, i64 60
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !10 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !10 ; 2 uses
  %i.gw = load ptr, ptr %i.gn, align 8, !tbaa !10
  %i.gx = sext i32 %.val70 to i64                 ; 2 uses
  %i.gy = sext i32 %i.gp to i64                   ; 2 uses
  %i.gz = mul nsw i64 %i.gy, %i.gx
  %i.ha = getelementptr inbounds i8, ptr %i.gw, i64 %i.gz ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.hc = load ptr, ptr %i.hb, align 8, !tbaa !10
  %i.hd = ashr i32 %.val70, 1
  %i.he = sext i32 %i.hd to i64
  %i.hf = sext i32 %i.gr to i64                   ; 2 uses
  %i.hg = mul nsw i64 %i.hf, %i.he                ; 2 uses
  %i.hh = getelementptr inbounds i8, ptr %i.hc, i64 %i.hg ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !10
  %i.hk = getelementptr inbounds i8, ptr %i.hj, i64 %i.hg ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bf, i64 2 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.bf, i64 1 ; 2 uses
  %i.hn = and i32 %i.bm, -2                       ; 5 uses
  %.not.i83 = icmp eq ptr %i.gv, null
  br i1 %.not.i83, label %CheckNonOpaque.exit.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ho = sext i32 %i.gt to i64
  %i.hp = mul nsw i64 %i.ho, %i.gx
  %i.hq = getelementptr inbounds i8, ptr %i.gv, i64 %i.hp ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bf, i64 3 ; 4 uses
  tail call void @WebPInitAlphaProcessing() #7
  %i.hs = icmp sgt i32 %i.bm, 1
  br i1 %i.hs, label %.lr.ph.i.i, label %CheckNonOpaque.exit.i

.lr.ph.i.i:                                       ; preds = %bb.w, %bb.x
  %.in.i.i = phi i32 [ %i.hv, %bb.x ], [ %i.hn, %bb.w ] ; 2 uses
  %.067.i.i = phi ptr [ %i.hw, %bb.x ], [ %i.hr, %bb.w ] ; 2 uses
  %i.ht = load ptr, ptr @WebPHasAlpha8b, align 8, !tbaa !32
  %i.hu = tail call i32 %i.ht(ptr noundef %.067.i.i, i32 noundef %i.bk) #7, !inline_history !184
  %.not.i.i = icmp eq i32 %i.hu, 0
  br i1 %.not.i.i, label %bb.x, label %CheckNonOpaque.exit.i

bb.x:                                             ; preds = %.lr.ph.i.i
  %i.hv = add nsw i32 %.in.i.i, -1
  %i.hw = getelementptr inbounds i8, ptr %.067.i.i, i64 %i.az
  %i.hx = icmp sgt i32 %.in.i.i, 1
  br i1 %i.hx, label %.lr.ph.i.i, label %CheckNonOpaque.exit.i, !llvm.loop !185

CheckNonOpaque.exit.i:                            ; preds = %bb.x, %.lr.ph.i.i, %bb.w, %bb.v
  %.096.i = phi ptr [ null, %bb.v ], [ %i.hq, %bb.w ], [ %i.hq, %.lr.ph.i.i ], [ %i.hq, %bb.x ] ; 3 uses
  %.094.i = phi ptr [ null, %bb.v ], [ %i.hr, %bb.w ], [ %i.hr, %.lr.ph.i.i ], [ %i.hr, %bb.x ] ; 3 uses
  %.0.i84 = phi i32 [ 0, %bb.v ], [ 0, %bb.w ], [ 0, %bb.x ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %i.hy = load ptr, ptr @WebPImportYUVAFromRGBA, align 8, !tbaa !32
  tail call void %i.hy(ptr noundef nonnull %i.hl, ptr noundef nonnull %i.hm, ptr noundef %i.bf, ptr noundef %.094.i, i32 noundef 4, i32 noundef %i.af, i32 noundef %.0.i84, i32 noundef %i.bk, i32 noundef %i.hn, ptr noundef %i.gk, i32 noundef %i.gp, i32 noundef %i.gr, i32 noundef %i.gt, ptr noundef %i.ha, ptr noundef %i.hh, ptr noundef %i.hk, ptr noundef %.096.i) #7, !inline_history !186
  %i.hz = add nsw i32 %i.hn, %.val70
  %i.ia = load i32, ptr %i.as, align 4, !tbaa !96
  %i.ib = load i32, ptr %i.au, align 8, !tbaa !187
  %i.ic = sub nsw i32 %i.ia, %i.ib
  %i.id = icmp ne i32 %i.gm, %i.ic
  %.not103.i = icmp eq i32 %i.hn, %i.bm
  %or.cond.i = or i1 %.not103.i, %i.id
  br i1 %or.cond.i, label %EmitRescaledRowsYUVA.exit, label %bb.y

bb.y:                                             ; preds = %CheckNonOpaque.exit.i
  %i.ie = sext i32 %i.hn to i64                   ; 3 uses
  %i.if = mul nsw i64 %i.ie, %i.gy
  %i.ig = getelementptr inbounds i8, ptr %i.ha, i64 %i.if
  %i.ih = ashr i32 %i.bm, 1
  %i.ii = sext i32 %i.ih to i64
  %i.ij = mul nsw i64 %i.hf, %i.ii                ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %i.hh, i64 %i.ij
  %i.il = getelementptr inbounds i8, ptr %i.hk, i64 %i.ij
  %i.im = mul nsw i64 %i.ie, %i.az                ; 4 uses
  %i.in = getelementptr inbounds i8, ptr %i.hl, i64 %i.im
  %i.io = getelementptr inbounds i8, ptr %i.hm, i64 %i.im
  %i.ip = getelementptr inbounds i8, ptr %i.bf, i64 %i.im
  %.not104.i = icmp eq ptr %.096.i, null
  br i1 %.not104.i, label %CheckNonOpaque.exit110.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.iq = sext i32 %i.gt to i64
  %i.ir = mul nsw i64 %i.iq, %i.ie
  %i.is = getelementptr inbounds i8, ptr %.096.i, i64 %i.ir
  %i.it = getelementptr inbounds i8, ptr %.094.i, i64 %i.im ; 2 uses
  tail call void @WebPInitAlphaProcessing() #7
  %i.iu = load ptr, ptr @WebPHasAlpha8b, align 8, !tbaa !32
  %i.iv = tail call i32 %i.iu(ptr noundef %i.it, i32 noundef %i.bk) #7, !inline_history !184
  %.not.i108.i = icmp ne i32 %i.iv, 0
  %spec.select.i85 = zext i1 %.not.i108.i to i32
  br label %CheckNonOpaque.exit110.i

CheckNonOpaque.exit110.i:                         ; preds = %bb.z, %bb.y
  %.197.i = phi ptr [ null, %bb.y ], [ %i.is, %bb.z ]
  %.195.i = phi ptr [ %.094.i, %bb.y ], [ %i.it, %bb.z ]
  %.1.i = phi i32 [ %.0.i84, %bb.y ], [ %spec.select.i85, %bb.z ]
  %i.iw = load ptr, ptr @WebPImportYUVAFromRGBALastLine, align 8, !tbaa !32
  tail call void %i.iw(ptr noundef nonnull %i.in, ptr noundef nonnull %i.io, ptr noundef %i.ip, ptr noundef %.195.i, i32 noundef 4, i32 noundef %.1.i, i32 noundef %i.bk, ptr noundef %i.gk, ptr noundef %i.ig, ptr noundef %i.ik, ptr noundef %i.il, ptr noundef %.197.i) #7, !inline_history !186
  br label %EmitRescaledRowsYUVA.exit

EmitRescaledRowsYUVA.exit:                        ; preds = %ExportYUVA.exit.i, %CheckNonOpaque.exit110.i, %CheckNonOpaque.exit.i, %bb.r
  %i.ix = phi i32 [ %i.hz, %CheckNonOpaque.exit.i ], [ %i.du, %bb.r ], [ %i.gm, %CheckNonOpaque.exit110.i ], [ %i.gh, %ExportYUVA.exit.i ]
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 %i.ix, ptr %i.iy, align 4, !tbaa !88
  br label %SetCropWindow.exit.thread

SetCropWindow.exit.thread:                        ; preds = %ApplyInverseTransforms.exit, %EmitRescaledRowsYUVA.exit, %EmitRescaledRowsRGBA.exit, %bb.h
  store i32 %1, ptr %i.e, align 4, !tbaa !82
  br label %bb.aa

bb.aa:                                            ; preds = %bb.f, %bb.g, %bb.e, %SetCropWindow.exit.thread
  ret void
}

declare i32 @VP8LReadBits(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare i32 @VP8LBuildHuffmanTable(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @VP8LDoFillBitWindow(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare void @VP8LColorCacheClear(ptr noundef) local_unnamed_addr #3

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @VP8LColorIndexInverseTransformAlpha(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @VP8LColorCacheCopy(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @VP8LInverseTransform(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPRescalerInit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @WebPRescaleNeededLines(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPMultARGBRows(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @WebPRescalerImport(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @WebPRescalerExportRow(ptr noundef) local_unnamed_addr #3

declare void @VP8LConvertFromBGRA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x i32> @llvm.smax.v4i32(<4 x i32>, <4 x i32>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.smax.v4i32(<4 x i32>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !35}
end_hunk_0
