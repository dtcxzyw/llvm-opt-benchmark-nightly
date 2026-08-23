Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/conflicts?download=true
inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@print_reductions:bb.a
  br i1 %.not201.epil, label %.loopexit210, label %bb.n

bb.n:                                             ; preds = %.epil.preheader
  %i.bn = sext i16 %i.bm to i32                   ; 2 uses
  %i.bo = and i32 %i.bn, 31
  %i.bp = shl nuw i32 1, %i.bo
  %i.bq = ashr i32 %i.bn, 5
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.br ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %i.bu = or i32 %i.bt, %i.bp
  store i32 %i.bu, ptr %i.bs, align 4, !tbaa !4
  br label %.loopexit210

.loopexit210:                                     ; preds = %.loopexit210.loopexit.unr-lcssa, %bb.n, %.epil.preheader, %bb.h, %.loopexit211
  %i.bv = load ptr, ptr @lookaheads, align 8, !tbaa !27
  %i.bw = getelementptr inbounds [2 x i8], ptr %i.bv, i64 %i.i ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !29 ; 6 uses
  %i.by = sext i16 %i.bx to i32                   ; 3 uses
  %i.bz = getelementptr i8, ptr %i.bw, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !29 ; 5 uses
  %i.cb = sext i16 %i.ca to i32
  %i.cc = sub nsw i32 %i.cb, %i.by                ; 2 uses
  %i.cd = icmp ne i32 %i.cc, 1
  %or.cond = select i1 %i.cd, i1 true, i1 %.3137
  br i1 %or.cond, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.loopexit210
  %i.ce = load ptr, ptr @LAruleno, align 8, !tbaa !27
  %i.cf = sext i16 %i.bx to i64
  %i.cg = getelementptr inbounds [2 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !29 ; 2 uses
  %i.ci = sext i16 %i.ch to i32                   ; 2 uses
  %i.cj = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 3 uses
  %i.ck = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 7 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 5 uses
  %i.cm = sext i32 %i.cj to i64
  %.idx = shl nsw i64 %i.cm, 2                    ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 %.idx
  %i.co = icmp sgt i32 %i.cj, 0
  br i1 %i.co, label %.lr.ph226.preheader, label %.preheader209

.lr.ph226.preheader:                              ; preds = %bb.o
  %i.cp = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 5 uses
  %i.cq = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.cr = mul i32 %i.cj, %i.by
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.cs ; 4 uses
  %i.cu = add i64 %.idx, %i.cl
  %i.cv = add i64 %i.cl, 4
  %i.cw = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 %i.cv)
  %i.cx = xor i64 %i.cl, -1
  %i.cy = add i64 %i.cw, %i.cx                    ; 2 uses
  %i.cz = lshr i64 %i.cy, 2
  %i.da = add nuw nsw i64 %i.cz, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.cy, 76
  br i1 %min.iters.check, label %.lr.ph226.preheader397, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph226.preheader
  %i.db = ptrtoaddr ptr %i.cq to i64
  %i.dc = ptrtoaddr ptr %i.cp to i64
  %i.dd = shl nsw i64 %i.cs, 2
  %i.de = add i64 %i.dd, %i.db
  %i.df = sub i64 %i.de, %i.cl
  %diff.check = icmp ugt i64 %i.df, -32
  %i.dg = sub i64 %i.dc, %i.cl
  %diff.check345 = icmp ugt i64 %i.dg, -32
  %conflict.rdx = or i1 %diff.check, %diff.check345
  br i1 %conflict.rdx, label %.lr.ph226.preheader397, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2                       ; 3 uses
  %i.di = getelementptr i8, ptr %i.ck, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.cp, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.ct, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ck, i64 %i.dl ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep347, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep347, align 4, !tbaa !4
  %wide.load348 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr i8, ptr %next.gep346, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep346, align 4, !tbaa !4
  %wide.load350 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !4
  %i.do = and <4 x i32> %wide.load349, %wide.load
  %i.dp = and <4 x i32> %wide.load350, %wide.load348
  %i.dq = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %i.do, ptr %next.gep, align 4, !tbaa !4
  store <4 x i32> %i.dp, ptr %i.dq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader209, label %.lr.ph226.preheader397

.lr.ph226.preheader397:                           ; preds = %vector.memcheck, %.lr.ph226.preheader, %middle.block
  %.0155224.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph226.preheader ], [ %i.di, %middle.block ]
  %.0161223.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph226.preheader ], [ %i.dj, %middle.block ]
  %.0164222.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph226.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph226

.preheader209:                                    ; preds = %.lr.ph226, %middle.block, %bb.o
  %i.ds = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = sext i16 %i.ch to i64                   ; 2 uses
  br i1 %i.dt, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %.lr.ph226.preheader397, %.lr.ph226
  %.0155224 = phi ptr [ %i.ea, %.lr.ph226 ], [ %.0155224.ph, %.lr.ph226.preheader397 ] ; 2 uses
  %.0161223 = phi ptr [ %i.dx, %.lr.ph226 ], [ %.0161223.ph, %.lr.ph226.preheader397 ] ; 2 uses
  %.0164222 = phi ptr [ %i.dv, %.lr.ph226 ], [ %.0164222.ph, %.lr.ph226.preheader397 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0164222, i64 4
  %i.dw = load i32, ptr %.0164222, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.0161223, i64 4
  %i.dy = load i32, ptr %.0161223, align 4, !tbaa !4
  %i.dz = and i32 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %.0155224, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.0155224, align 4, !tbaa !4
  %i.eb = icmp ult ptr %i.ea, %i.cn
  br i1 %i.eb, label %.lr.ph226, label %.preheader209, !llvm.loop !84

.lr.ph230:                                        ; preds = %.preheader209, %bb.q
  %i.ec = phi i32 [ %i.eq, %bb.q ], [ %i.ds, %.preheader209 ]
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.q ], [ 0, %.preheader209 ] ; 2 uses
  %.0150229 = phi i32 [ %spec.select203, %bb.q ], [ 1, %.preheader209 ] ; 2 uses
  %.1156228 = phi ptr [ %spec.select202, %bb.q ], [ %i.ck, %.preheader209 ] ; 2 uses
  %i.ed = load i32, ptr %.1156228, align 4, !tbaa !4
  %i.ee = and i32 %i.ed, %.0150229
  %.not193 = icmp eq i32 %i.ee, 0
  br i1 %.not193, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph230
  %i.ef = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.eg = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %indvars.iv290
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !8
  %i.ej = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ek = getelementptr inbounds [2 x i8], ptr %i.ej, i64 %i.du
  %i.el = load i16, ptr %i.ek, align 2, !tbaa !29
  %i.em = sext i16 %i.el to i64
  %i.en = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !8
  %i.ep = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ef, ptr noundef nonnull @.str.11, ptr noundef %i.ei, i32 noundef %i.ci, ptr noundef %i.eo) #14 ; 0 uses
  %.pre = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph230
  %i.eq = phi i32 [ %.pre, %bb.p ], [ %i.ec, %.lr.ph230 ] ; 2 uses
  %i.er = shl i32 %.0150229, 1                    ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %spec.select202.idx = select i1 %i.es, i64 4, i64 0
  %spec.select202 = getelementptr inbounds nuw i8, ptr %.1156228, i64 %spec.select202.idx
  %spec.select203 = tail call i32 @llvm.umax.i32(i32 %i.er, i32 1)
  %indvars.iv.next291 = add nuw nsw i64 %indvars.iv290, 1 ; 2 uses
  %i.et = sext i32 %i.eq to i64
  %i.eu = icmp slt i64 %indvars.iv.next291, %i.et
  br i1 %i.eu, label %.lr.ph230, label %._crit_edge231, !llvm.loop !85

._crit_edge231:                                   ; preds = %bb.q, %.preheader209
  %i.ev = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ew = load ptr, ptr @tags, align 8, !tbaa !46
  %i.ex = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ey = getelementptr inbounds [2 x i8], ptr %i.ex, i64 %i.du
  %i.ez = load i16, ptr %i.ey, align 2, !tbaa !29
  %i.fa = sext i16 %i.ez to i64
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.fa
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !8
  %i.fd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ev, ptr noundef nonnull @.str.12, i32 noundef %i.ci, ptr noundef %i.fc) #14 ; 0 uses
  br label %bb.al

bb.r:                                             ; preds = %.loopexit210
  %i.fe = icmp sgt i32 %i.cc, 0
  br i1 %i.fe, label %bb.s, label %bb.al

bb.s:                                             ; preds = %bb.r
  %i.ff = load ptr, ptr @lookaheadset, align 8, !tbaa !11 ; 13 uses
  %i.fg = ptrtoaddr ptr %i.ff to i64              ; 11 uses
  %i.fh = load i32, ptr @tokensetsize, align 4, !tbaa !4 ; 3 uses
  %i.fi = sext i32 %i.fh to i64
  %.idx280 = shl nsw i64 %i.fi, 2                 ; 4 uses
  %i.fj = getelementptr inbounds i8, ptr %i.ff, i64 %.idx280 ; 2 uses
  %i.fk = icmp sge i16 %i.bx, %i.ca
  %or.cond278.not = or i1 %i.fk, %.3137
  br i1 %or.cond278.not, label %.loopexit208, label %.lr.ph253

.lr.ph253:                                        ; preds = %bb.s
  %i.fl = load ptr, ptr @LA, align 8, !tbaa !11   ; 2 uses
  %i.fm = ptrtoaddr ptr %i.fl to i64
  %i.fn = load ptr, ptr @shiftset, align 8, !tbaa !11 ; 10 uses
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = icmp sgt i32 %i.fh, 0                   ; 2 uses
  %i.fq = load ptr, ptr @LAruleno, align 8
  %i.fr = sext i16 %i.bx to i64
  %wide.trip.count297 = sext i16 %i.ca to i64
  %i.fs = add i64 %.idx280, %i.fg
  %i.ft = add i64 %i.fg, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.fs, i64 %i.ft)
  %i.fu = xor i64 %i.fg, -1
  %i.fv = add i64 %umax, %i.fu
  %i.fw = and i64 %i.fv, -4
  %i.fx = add i64 %i.fw, 4                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.fn, i64 %i.fx
  %scevgep354 = getelementptr i8, ptr %i.ff, i64 %i.fx
  %i.fy = add i64 %.idx280, %i.fg
  %i.fz = add i64 %i.fg, 4
  %i.ga = tail call i64 @llvm.umax.i64(i64 %i.fy, i64 %i.fz)
  %i.gb = xor i64 %i.fg, -1
  %i.gc = add i64 %i.ga, %i.gb                    ; 2 uses
  %i.gd = lshr i64 %i.gc, 2
  %i.ge = add nuw nsw i64 %i.gd, 1                ; 2 uses
  %min.iters.check377 = icmp ult i64 %i.gc, 28
  %invariant.op = sub i64 %i.fm, %i.fg
  %i.gf = sub i64 %i.fo, %i.fg
  %diff.check374 = icmp ugt i64 %i.gf, -32
  %n.vec379 = and i64 %i.ge, 9223372036854775800  ; 3 uses
  %i.gg = shl i64 %n.vec379, 2                    ; 3 uses
  %i.gh = getelementptr i8, ptr %i.ff, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fn, i64 %i.gg
  %cmp.n391 = icmp eq i64 %i.ge, %n.vec379
  %i.gj = add i64 %.idx280, %i.fg
  %i.gk = add i64 %i.fg, 4
  %i.gl = tail call i64 @llvm.umax.i64(i64 %i.gj, i64 %i.gk)
  %i.gm = xor i64 %i.fg, -1
  %i.gn = add i64 %i.gl, %i.gm                    ; 2 uses
  %i.go = lshr i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check356 = icmp ult i64 %i.gn, 28
  %bound0 = icmp ult ptr %i.fn, %scevgep354
  %bound1 = icmp ult ptr %i.ff, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %n.vec358 = and i64 %i.gp, 9223372036854775800  ; 3 uses
  %i.gq = shl i64 %n.vec358, 2                    ; 2 uses
  %i.gr = getelementptr i8, ptr %i.ff, i64 %i.gq
  %i.gs = getelementptr i8, ptr %i.fn, i64 %i.gq
  %cmp.n369 = icmp eq i64 %i.gp, %n.vec358
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph253, %._crit_edge248
  %indvars.iv294 = phi i64 [ %i.fr, %.lr.ph253 ], [ %indvars.iv.next295, %._crit_edge248 ] ; 5 uses
  %.0142252 = phi i32 [ 0, %.lr.ph253 ], [ %.1143, %._crit_edge248 ] ; 2 uses
  %.0144251 = phi i32 [ undef, %.lr.ph253 ], [ %.1145, %._crit_edge248 ]
  %.0147250 = phi i32 [ -1, %.lr.ph253 ], [ %.1148, %._crit_edge248 ]
  %i.gt = shl i64 %indvars.iv294, 2
  br i1 %i.fp, label %.lr.ph236.preheader, label %.preheader

.lr.ph236.preheader:                              ; preds = %bb.t
  %i.gu = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.gv = sext i32 %i.gu to i64                   ; 2 uses
  %i.gw = mul nsw i64 %indvars.iv294, %i.gv
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.fl, i64 %i.gw ; 4 uses
  br i1 %min.iters.check377, label %.lr.ph236.preheader396, label %vector.memcheck372

vector.memcheck372:                               ; preds = %.lr.ph236.preheader
  %i.gy = mul i64 %i.gt, %i.gv
  %.reass = add i64 %i.gy, %invariant.op
  %diff.check373 = icmp ugt i64 %.reass, -32
  %conflict.rdx375 = or i1 %diff.check373, %diff.check374
  br i1 %conflict.rdx375, label %.lr.ph236.preheader396, label %vector.ph378

vector.ph378:                                     ; preds = %vector.memcheck372
  %i.gz = getelementptr i8, ptr %i.gx, i64 %i.gg
  br label %vector.body380

vector.body380:                                   ; preds = %vector.body380, %vector.ph378
  %index381 = phi i64 [ 0, %vector.ph378 ], [ %index.next389, %vector.body380 ] ; 2 uses
  %i.ha = shl i64 %index381, 2                    ; 3 uses
  %next.gep382 = getelementptr i8, ptr %i.ff, i64 %i.ha ; 2 uses
  %next.gep383 = getelementptr i8, ptr %i.fn, i64 %i.ha ; 2 uses
  %next.gep384 = getelementptr i8, ptr %i.gx, i64 %i.ha ; 2 uses
  %i.hb = getelementptr i8, ptr %next.gep384, i64 16
  %wide.load385 = load <4 x i32>, ptr %next.gep384, align 4, !tbaa !4
  %wide.load386 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !4
  %i.hc = getelementptr i8, ptr %next.gep383, i64 16
  %wide.load387 = load <4 x i32>, ptr %next.gep383, align 4, !tbaa !4
  %wide.load388 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !4
  %i.hd = xor <4 x i32> %wide.load387, splat (i32 -1)
  %i.he = xor <4 x i32> %wide.load388, splat (i32 -1)
  %i.hf = and <4 x i32> %wide.load385, %i.hd
  %i.hg = and <4 x i32> %wide.load386, %i.he
  %i.hh = getelementptr i8, ptr %next.gep382, i64 16
  store <4 x i32> %i.hf, ptr %next.gep382, align 4, !tbaa !4
  store <4 x i32> %i.hg, ptr %i.hh, align 4, !tbaa !4
  %index.next389 = add nuw i64 %index381, 8       ; 2 uses
  %i.hi = icmp eq i64 %index.next389, %n.vec379
  br i1 %i.hi, label %middle.block390, label %vector.body380, !llvm.loop !86

middle.block390:                                  ; preds = %vector.body380
  br i1 %cmp.n391, label %.preheader, label %.lr.ph236.preheader396

.lr.ph236.preheader396:                           ; preds = %vector.memcheck372, %.lr.ph236.preheader, %middle.block390
  %.3158234.ph = phi ptr [ %i.ff, %vector.memcheck372 ], [ %i.ff, %.lr.ph236.preheader ], [ %i.gh, %middle.block390 ]
  %.1162233.ph = phi ptr [ %i.fn, %vector.memcheck372 ], [ %i.fn, %.lr.ph236.preheader ], [ %i.gi, %middle.block390 ]
  %.1165232.ph = phi ptr [ %i.gx, %vector.memcheck372 ], [ %i.gx, %.lr.ph236.preheader ], [ %i.gz, %middle.block390 ]
  br label %.lr.ph236

.preheader:                                       ; preds = %.lr.ph236, %middle.block390, %bb.t
  %i.hj = load i32, ptr @ntokens, align 4, !tbaa !4 ; 5 uses
  %i.hk = icmp sgt i32 %i.hj, 0
  br i1 %i.hk, label %.lr.ph241.preheader, label %._crit_edge242

.lr.ph241.preheader:                              ; preds = %.preheader
  %xtraiter399 = and i32 %i.hj, 1
  %i.hl = icmp eq i32 %i.hj, 1
  br i1 %i.hl, label %.lr.ph241.epil.preheader, label %.lr.ph241.preheader.new

.lr.ph241.preheader.new:                          ; preds = %.lr.ph241.preheader
  %unroll_iter403 = and i32 %i.hj, 2147483646
  br label %.lr.ph241

.lr.ph236:                                        ; preds = %.lr.ph236.preheader396, %.lr.ph236
  %.3158234 = phi ptr [ %i.hs, %.lr.ph236 ], [ %.3158234.ph, %.lr.ph236.preheader396 ] ; 2 uses
  %.1162233 = phi ptr [ %i.ho, %.lr.ph236 ], [ %.1162233.ph, %.lr.ph236.preheader396 ] ; 2 uses
  %.1165232 = phi ptr [ %i.hm, %.lr.ph236 ], [ %.1165232.ph, %.lr.ph236.preheader396 ] ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.1165232, i64 4
  %i.hn = load i32, ptr %.1165232, align 4, !tbaa !4
  %i.ho = getelementptr inbounds nuw i8, ptr %.1162233, i64 4
  %i.hp = load i32, ptr %.1162233, align 4, !tbaa !4
  %i.hq = xor i32 %i.hp, -1
  %i.hr = and i32 %i.hn, %i.hq
  %i.hs = getelementptr inbounds nuw i8, ptr %.3158234, i64 4 ; 2 uses
  store i32 %i.hr, ptr %.3158234, align 4, !tbaa !4
  %i.ht = icmp ult ptr %i.hs, %i.fj
  br i1 %i.ht, label %.lr.ph236, label %.preheader, !llvm.loop !87

.lr.ph241:                                        ; preds = %.lr.ph241, %.lr.ph241.preheader.new
  %.0138240 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %spec.select204.1, %.lr.ph241 ]
  %.2152239 = phi i32 [ 1, %.lr.ph241.preheader.new ], [ %.3153.1, %.lr.ph241 ] ; 2 uses
  %.4159238 = phi ptr [ %i.ff, %.lr.ph241.preheader.new ], [ %.5160.1, %.lr.ph241 ] ; 2 uses
  %niter404 = phi i32 [ 0, %.lr.ph241.preheader.new ], [ %niter404.next.1, %.lr.ph241 ]
  %i.hu = load i32, ptr %.4159238, align 4, !tbaa !4
  %i.hv = and i32 %i.hu, %.2152239
  %.not194 = icmp ne i32 %i.hv, 0
  %i.hw = zext i1 %.not194 to i32
  %spec.select204 = add nuw nsw i32 %.0138240, %i.hw
  %i.hx = shl i32 %.2152239, 1                    ; 2 uses
  %i.hy = icmp eq i32 %i.hx, 0
  %.5160.idx = select i1 %i.hy, i64 4, i64 0
  %.5160 = getelementptr inbounds nuw i8, ptr %.4159238, i64 %.5160.idx ; 2 uses
  %.3153 = tail call i32 @llvm.umax.i32(i32 %i.hx, i32 1) ; 2 uses
  %i.hz = load i32, ptr %.5160, align 4, !tbaa !4
  %i.ia = and i32 %i.hz, %.3153
  %.not194.1 = icmp ne i32 %i.ia, 0
  %i.ib = zext i1 %.not194.1 to i32
  %spec.select204.1 = add nuw nsw i32 %spec.select204, %i.ib ; 3 uses
  %i.ic = shl i32 %.3153, 1                       ; 2 uses
  %i.id = icmp eq i32 %i.ic, 0
  %.5160.idx.1 = select i1 %i.id, i64 4, i64 0
  %.5160.1 = getelementptr inbounds nuw i8, ptr %.5160, i64 %.5160.idx.1 ; 2 uses
  %.3153.1 = tail call i32 @llvm.umax.i32(i32 %i.ic, i32 1) ; 2 uses
  %niter404.next.1 = add nuw nsw i32 %niter404, 2 ; 2 uses
  %niter404.ncmp.1 = icmp eq i32 %niter404.next.1, %unroll_iter403
  br i1 %niter404.ncmp.1, label %._crit_edge242.loopexit.unr-lcssa, label %.lr.ph241, !llvm.loop !88

._crit_edge242.loopexit.unr-lcssa:                ; preds = %.lr.ph241
  %lcmp.mod400.not = icmp eq i32 %xtraiter399, 0
  br i1 %lcmp.mod400.not, label %._crit_edge242, label %.lr.ph241.epil.preheader

.lr.ph241.epil.preheader:                         ; preds = %._crit_edge242.loopexit.unr-lcssa, %.lr.ph241.preheader
  %.0138240.epil.init = phi i32 [ 0, %.lr.ph241.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.2152239.epil.init = phi i32 [ 1, %.lr.ph241.preheader ], [ %.3153.1, %._crit_edge242.loopexit.unr-lcssa ]
  %.4159238.epil.init = phi ptr [ %i.ff, %.lr.ph241.preheader ], [ %.5160.1, %._crit_edge242.loopexit.unr-lcssa ]
  %lcmp.mod402 = trunc i32 %i.hj to i1
  tail call void @llvm.assume(i1 %lcmp.mod402)
  %i.ie = load i32, ptr %.4159238.epil.init, align 4, !tbaa !4
  %i.if = and i32 %i.ie, %.2152239.epil.init
  %.not194.epil = icmp ne i32 %i.if, 0
  %i.ig = zext i1 %.not194.epil to i32
  %spec.select204.epil = add nuw nsw i32 %.0138240.epil.init, %i.ig
  br label %._crit_edge242

._crit_edge242:                                   ; preds = %.lr.ph241.epil.preheader, %._crit_edge242.loopexit.unr-lcssa, %.preheader
  %.0138.lcssa = phi i32 [ 0, %.preheader ], [ %spec.select204.1, %._crit_edge242.loopexit.unr-lcssa ], [ %spec.select204.epil, %.lr.ph241.epil.preheader ] ; 2 uses
  %i.ih = icmp sgt i32 %.0138.lcssa, %.0142252
  br i1 %i.ih, label %bb.u, label %bb.v

bb.u:                                             ; preds = %._crit_edge242
  %i.ii = getelementptr inbounds [2 x i8], ptr %i.fq, i64 %indvars.iv294
  %i.ij = load i16, ptr %i.ii, align 2, !tbaa !29
  %i.ik = sext i16 %i.ij to i32
  %i.il = trunc nsw i64 %indvars.iv294 to i32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %._crit_edge242
  %.1148 = phi i32 [ %i.il, %bb.u ], [ %.0147250, %._crit_edge242 ] ; 2 uses
  %.1145 = phi i32 [ %i.ik, %bb.u ], [ %.0144251, %._crit_edge242 ] ; 2 uses
  %.1143 = phi i32 [ %.0138.lcssa, %bb.u ], [ %.0142252, %._crit_edge242 ]
  br i1 %i.fp, label %.lr.ph247.preheader, label %._crit_edge248

.lr.ph247.preheader:                              ; preds = %bb.v
  %brmerge = select i1 %min.iters.check356, i1 true, i1 %found.conflict
  br i1 %brmerge, label %.lr.ph247.preheader395, label %vector.body359

vector.body359:                                   ; preds = %.lr.ph247.preheader, %vector.body359
  %index360 = phi i64 [ %index.next367, %vector.body359 ], [ 0, %.lr.ph247.preheader ] ; 2 uses
  %i.im = shl i64 %index360, 2                    ; 2 uses
  %next.gep361 = getelementptr i8, ptr %i.ff, i64 %i.im ; 2 uses
  %next.gep362 = getelementptr i8, ptr %i.fn, i64 %i.im ; 3 uses
  %i.in = getelementptr i8, ptr %next.gep361, i64 16
  %wide.load363 = load <4 x i32>, ptr %next.gep361, align 4, !tbaa !4, !alias.scope !89
  %wide.load364 = load <4 x i32>, ptr %i.in, align 4, !tbaa !4, !alias.scope !89
  %i.io = getelementptr i8, ptr %next.gep362, i64 16 ; 2 uses
  %wide.load365 = load <4 x i32>, ptr %next.gep362, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %wide.load366 = load <4 x i32>, ptr %i.io, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %i.ip = or <4 x i32> %wide.load365, %wide.load363
  %i.iq = or <4 x i32> %wide.load366, %wide.load364
  store <4 x i32> %i.ip, ptr %next.gep362, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  store <4 x i32> %i.iq, ptr %i.io, align 4, !tbaa !4, !alias.scope !92, !noalias !89
  %index.next367 = add nuw i64 %index360, 8       ; 2 uses
  %i.ir = icmp eq i64 %index.next367, %n.vec358
  br i1 %i.ir, label %middle.block368, label %vector.body359, !llvm.loop !94

middle.block368:                                  ; preds = %vector.body359
  br i1 %cmp.n369, label %._crit_edge248, label %.lr.ph247.preheader395

.lr.ph247.preheader395:                           ; preds = %.lr.ph247.preheader, %middle.block368
  %.6245.ph = phi ptr [ %i.gr, %middle.block368 ], [ %i.ff, %.lr.ph247.preheader ]
  %.2163244.ph = phi ptr [ %i.gs, %middle.block368 ], [ %i.fn, %.lr.ph247.preheader ]
  br label %.lr.ph247

.lr.ph247:                                        ; preds = %.lr.ph247.preheader395, %.lr.ph247
  %.6245 = phi ptr [ %i.is, %.lr.ph247 ], [ %.6245.ph, %.lr.ph247.preheader395 ] ; 2 uses
  %.2163244 = phi ptr [ %i.iu, %.lr.ph247 ], [ %.2163244.ph, %.lr.ph247.preheader395 ] ; 3 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.6245, i64 4 ; 2 uses
  %i.it = load i32, ptr %.6245, align 4, !tbaa !4
  %i.iu = getelementptr inbounds nuw i8, ptr %.2163244, i64 4
  %i.iv = load i32, ptr %.2163244, align 4, !tbaa !4
  %i.iw = or i32 %i.iv, %i.it
  store i32 %i.iw, ptr %.2163244, align 4, !tbaa !4
  %i.ix = icmp ult ptr %i.is, %i.fj
  br i1 %i.ix, label %.lr.ph247, label %._crit_edge248, !llvm.loop !95

._crit_edge248:                                   ; preds = %.lr.ph247, %middle.block368, %bb.v
  %indvars.iv.next295 = add nsw i64 %indvars.iv294, 1 ; 2 uses
  %exitcond298.not = icmp eq i64 %indvars.iv.next295, %wide.trip.count297
  br i1 %exitcond298.not, label %.loopexit208.loopexit, label %bb.t, !llvm.loop !96

.loopexit208.loopexit:                            ; preds = %._crit_edge248
  %.pre315 = load i32, ptr @tokensetsize, align 4, !tbaa !4
  br label %.loopexit208

.loopexit208:                                     ; preds = %.loopexit208.loopexit, %bb.s
  %i.iy = phi i32 [ %i.fh, %bb.s ], [ %.pre315, %.loopexit208.loopexit ]
  %.2149 = phi i32 [ -1, %bb.s ], [ %.1148, %.loopexit208.loopexit ] ; 2 uses
  %.2146 = phi i32 [ undef, %bb.s ], [ %.1145, %.loopexit208.loopexit ] ; 2 uses
  %i.iz = icmp sgt i32 %i.iy, 0
  br i1 %i.iz, label %.lr.ph258, label %._crit_edge259

.lr.ph258:                                        ; preds = %.loopexit208
  %i.ja = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %bb.w

bb.w:                                             ; preds = %.lr.ph258, %bb.w
  %indvars.iv299 = phi i64 [ 0, %.lr.ph258 ], [ %indvars.iv.next300, %bb.w ] ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.ja, i64 %indvars.iv299
  store i32 0, ptr %i.jb, align 4, !tbaa !4
  %indvars.iv.next300 = add nuw nsw i64 %indvars.iv299, 1 ; 2 uses
  %i.jc = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.jd = sext i32 %i.jc to i64
  %i.je = icmp slt i64 %indvars.iv.next300, %i.jd
  br i1 %i.je, label %bb.w, label %._crit_edge259, !llvm.loop !97

._crit_edge259:                                   ; preds = %bb.w, %.loopexit208
  br i1 %.not, label %._crit_edge259..loopexit_crit_edge, label %bb.x

._crit_edge259..loopexit_crit_edge:               ; preds = %._crit_edge259
  %.pre316 = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %.loopexitthread-pre-split

bb.x:                                             ; preds = %._crit_edge259
  %i.jf = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.jg = load i16, ptr %i.jf, align 2, !tbaa !24 ; 2 uses
  %i.jh = icmp sgt i16 %i.jg, 0
  %.pre317 = load ptr, ptr @shiftset, align 8     ; 4 uses
  br i1 %i.jh, label %.lr.ph262, label %.loopexitthread-pre-split

.lr.ph262:                                        ; preds = %bb.x
  %wide.trip.count305 = zext nneg i16 %i.jg to i64
  %i.ji = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.jj = load ptr, ptr @accessing_symbol, align 8
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph262, %bb.ab
  %indvars.iv302 = phi i64 [ 0, %.lr.ph262 ], [ %indvars.iv.next303, %bb.ab ] ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.ji, i64 %indvars.iv302
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !29 ; 2 uses
  %.not195 = icmp eq i16 %i.jl, 0
  br i1 %.not195, label %bb.ab, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.jm = sext i16 %i.jl to i64
  %i.jn = getelementptr inbounds [2 x i8], ptr %i.jj, i64 %i.jm
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !29
  %i.jp = sext i16 %i.jo to i32                   ; 3 uses
  %i.jq = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %.not196 = icmp sgt i32 %i.jq, %i.jp
  br i1 %.not196, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.jr = and i32 %i.jp, 31
  %i.js = shl nuw i32 1, %i.jr
  %i.jt = ashr i32 %i.jp, 5
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds [4 x i8], ptr %.pre317, i64 %i.ju ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !4
  %i.jx = or i32 %i.jw, %i.js
  store i32 %i.jx, ptr %i.jv, align 4, !tbaa !4
  br label %bb.ab

bb.ab:                                            ; preds = %bb.y, %bb.aa
  %indvars.iv.next303 = add nuw nsw i64 %indvars.iv302, 1 ; 2 uses
  %exitcond306.not = icmp eq i64 %indvars.iv.next303, %wide.trip.count305
  br i1 %exitcond306.not, label %.loopexitthread-pre-split, label %bb.y, !llvm.loop !98

.loopexitthread-pre-split:                        ; preds = %bb.ab, %bb.x, %._crit_edge259..loopexit_crit_edge
  %.ph = phi ptr [ %.pre316, %._crit_edge259..loopexit_crit_edge ], [ %.pre317, %bb.x ], [ %.pre317, %bb.ab ]
  %.pr = load i32, ptr @ntokens, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.z, %.loopexitthread-pre-split
  %i.jy = phi i32 [ %.pr, %.loopexitthread-pre-split ], [ %i.jq, %bb.z ]
  %i.jz = phi ptr [ %.ph, %.loopexitthread-pre-split ], [ %.pre317, %bb.z ]
  %i.ka = icmp sgt i32 %i.jy, 0
  br i1 %i.ka, label %.lr.ph275, label %._crit_edge276.split

.lr.ph275:                                        ; preds = %.loopexit
  %i.kb = icmp slt i16 %i.bx, %i.ca
  %i.kc = sext i32 %.2149 to i64                  ; 2 uses
  br i1 %i.kb, label %.lr.ph269.preheader, label %._crit_edge276.split

.lr.ph269.preheader:                              ; preds = %.lr.ph275
  %i.kd = load ptr, ptr @LA, align 8, !tbaa !11
  %i.ke = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.kf = mul nsw i32 %i.ke, %i.by
  %i.kg = sext i32 %i.kf to i64
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.kg
  %i.ki = sext i16 %i.bx to i64
  %wide.trip.count310 = sext i16 %i.ca to i64
  br label %.lr.ph269

.lr.ph269:                                        ; preds = %.lr.ph269.preheader, %._crit_edge270
  %indvars.iv312 = phi i64 [ 0, %.lr.ph269.preheader ], [ %indvars.iv.next313, %._crit_edge270 ] ; 3 uses
  %.4154273 = phi i32 [ 1, %.lr.ph269.preheader ], [ %spec.select206, %._crit_edge270 ] ; 3 uses
  %.2166272 = phi ptr [ %i.kh, %.lr.ph269.preheader ], [ %spec.select205, %._crit_edge270 ] ; 2 uses
  %i.kj = load i32, ptr %i.jz, align 4, !tbaa !4
  %i.kk = and i32 %i.kj, %.4154273
  %.not197 = icmp ne i32 %i.kk, 0
  %. = zext i1 %.not197 to i32
  br label %bb.ac

bb.ac:                                            ; preds = %.lr.ph269, %bb.ai
  %indvars.iv307 = phi i64 [ %i.ki, %.lr.ph269 ], [ %indvars.iv.next308, %bb.ai ] ; 3 uses
  %.0267 = phi i32 [ 0, %.lr.ph269 ], [ %.3, %bb.ai ] ; 3 uses
  %.3141266 = phi i32 [ %., %.lr.ph269 ], [ %.4, %bb.ai ] ; 2 uses
  %.7265 = phi ptr [ %.2166272, %.lr.ph269 ], [ %i.lw, %bb.ai ] ; 2 uses
  %i.kl = load i32, ptr %.7265, align 4, !tbaa !4
  %i.km = and i32 %i.kl, %.4154273
  %.not198 = icmp eq i32 %i.km, 0
  br i1 %.not198, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.kn = icmp eq i32 %.3141266, 0
  br i1 %i.kn, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ko = icmp eq i64 %indvars.iv307, %i.kc
  br i1 %i.ko, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.kp = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

bb.ag:                                            ; preds = %bb.ad
  %.not199 = icmp eq i32 %.0267, 0
  %.pre319 = load ptr, ptr @LAruleno, align 8, !tbaa !27 ; 2 uses
  br i1 %.not199, label %.sink.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kq = getelementptr inbounds [2 x i8], ptr %.pre319, i64 %i.kc
  %i.kr = load i16, ptr %i.kq, align 2, !tbaa !29 ; 2 uses
  %i.ks = sext i16 %i.kr to i32
  %i.kt = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.ku = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.kv = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %indvars.iv312
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !8
  %i.kx = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ky = sext i16 %i.kr to i64
  %i.kz = getelementptr inbounds [2 x i8], ptr %i.kx, i64 %i.ky
  %i.la = load i16, ptr %i.kz, align 2, !tbaa !29
  %i.lb = sext i16 %i.la to i64
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.ku, i64 %i.lb
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !8
  %i.le = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.kt, ptr noundef nonnull @.str.13, ptr noundef %i.kw, i32 noundef %i.ks, ptr noundef %i.ld) #14 ; 0 uses
  %.pre318 = load ptr, ptr @LAruleno, align 8, !tbaa !27
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ag, %bb.ah, %bb.af
  %.sink = phi ptr [ %i.kp, %bb.af ], [ %.pre318, %bb.ah ], [ %.pre319, %bb.ag ]
  %.str.13.sink = phi ptr [ @.str.13, %bb.af ], [ @.str.11, %bb.ah ], [ @.str.11, %bb.ag ]
  %.3.ph = phi i32 [ %.0267, %bb.af ], [ 0, %bb.ah ], [ 0, %bb.ag ]
  %i.lf = getelementptr inbounds [2 x i8], ptr %.sink, i64 %indvars.iv307
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !29 ; 2 uses
  %i.lh = sext i16 %i.lg to i32
  %i.li = load ptr, ptr @foutput, align 8, !tbaa !44
  %i.lj = load ptr, ptr @tags, align 8, !tbaa !46 ; 2 uses
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.lj, i64 %indvars.iv312
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !8
  %i.lm = load ptr, ptr @rlhs, align 8, !tbaa !27
  %i.ln = sext i16 %i.lg to i64
  %i.lo = getelementptr inbounds [2 x i8], ptr %i.lm, i64 %i.ln
  %i.lp = load i16, ptr %i.lo, align 2, !tbaa !29
  %i.lq = sext i16 %i.lp to i64
  %i.lr = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %i.lq
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !8
  %i.lt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.li, ptr noundef nonnull %.str.13.sink, ptr noundef %i.ll, i32 noundef %i.lh, ptr noundef %i.ls) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split, %bb.ae, %bb.ac
  %.4 = phi i32 [ %.3141266, %bb.ac ], [ 1, %bb.ae ], [ 1, %.sink.split ]
  %.3 = phi i32 [ %.0267, %bb.ac ], [ 1, %bb.ae ], [ %.3.ph, %.sink.split ]
  %i.lu = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.lv = sext i32 %i.lu to i64
  %i.lw = getelementptr inbounds [4 x i8], ptr %.7265, i64 %i.lv
  %indvars.iv.next308 = add nsw i64 %indvars.iv307, 1 ; 2 uses
  %exitcond311.not = icmp eq i64 %indvars.iv.next308, %wide.trip.count310
  br i1 %exitcond311.not, label %._crit_edge270, label %bb.ac, !llvm.loop !99

._crit_edge270:                                   ; preds = %bb.ai
  %i.lx = shl i32 %.4154273, 1                    ; 2 uses
  %i.ly = icmp eq i32 %i.lx, 0
  %spec.select205.idx = select i1 %i.ly, i64 4, i64 0
  %spec.select205 = getelementptr inbounds nuw i8, ptr %.2166272, i64 %spec.select205.idx
  %spec.select206 = tail call i32 @llvm.umax.i32(i32 %i.lx, i32 1)
  %indvars.iv.next313 = add nuw nsw i64 %indvars.iv312, 1 ; 2 uses
  %i.lz = load i32, ptr @ntokens, align 4, !tbaa !4
end_hunk_0
