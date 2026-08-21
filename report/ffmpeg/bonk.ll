inline.NumInlined: 26
inline.NumDeleted: 13
begin_hunk_0_@bonk_decode:bb.a
  %sext = shl i64 %i.r, 32
  %i.am = ashr exact i64 %sext, 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.al, ptr nonnull align 1 %i.ag, i64 %i.am, i1 false)
  %.pre = load i32, ptr %i.t, align 4, !tbaa !56
  %.pre303 = load i32, ptr %i.n, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.an = phi i32 [ %.pre303, %bb.h ], [ %.pre304, %bb.g ]
  %i.ao = phi i32 [ %.pre, %bb.h ], [ %i.ae, %bb.g ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !44 ; 2 uses
  %i.ar = sext i32 %i.ao to i64
  %i.as = getelementptr inbounds i8, ptr %i.aq, i64 %i.ar
  %i.at = add nsw i32 %i.an, %i.s                 ; 5 uses
  store i32 %i.at, ptr %i.n, align 8, !tbaa !54
  %i.au = sext i32 %i.at to i64
  %i.av = load i64, ptr %i.l, align 8, !tbaa !43
  %i.aw = icmp sgt i64 %i.av, %i.au
  br i1 %i.aw, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ax = load ptr, ptr %i.af, align 8, !tbaa !57
  %.not193 = icmp eq ptr %i.ax, null
  br i1 %.not193, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %2, align 4, !tbaa !55
  br label %.thread223

bb.l:                                             ; preds = %bb.j, %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 4 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.bc = mul nsw i32 %i.bb, %i.az
  %i.bd = sext i32 %i.bc to i64
  %i.be = load i64, ptr %i.g, align 8, !tbaa !34
  %i.bf = tail call i64 @llvm.umin.i64(i64 %i.be, i64 %i.bd)
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 7 uses
  store i32 %i.bg, ptr %i.bh, align 8, !tbaa !58
  %i.bi = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #7
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %.loopexit234, label %bb.m

bb.m:                                             ; preds = %bb.l
  %or.cond.i = icmp ugt i32 %i.at, 268435455
  %i.bk = shl nuw nsw i32 %i.at, 3
  %i.bl = select i1 %or.cond.i, i32 -8, i32 %i.bk ; 2 uses
  %or.cond.i.i = icmp ult i32 %i.bl, 2147483135   ; 2 uses
  %i.bm = icmp ne ptr %i.aq, null
  %or.cond3.i.i = and i1 %i.bm, %or.cond.i.i      ; 2 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr %i.as, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.bl, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.b, align 8, !tbaa !63
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %.013.i.i, ptr %i.bn, align 4, !tbaa !64
  %i.bo = add nuw nsw i32 %.013.i.i, 8            ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i32 %i.bo, ptr %i.bp, align 8, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store i32 0, ptr %i.bq, align 8, !tbaa !66
  br i1 %or.cond3.i.i, label %bb.n, label %.loopexit234

bb.n:                                             ; preds = %bb.m
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !67
  %i.bt = tail call i32 @llvm.umin.i32(i32 %i.bo, i32 %i.bs)
  store i32 %i.bt, ptr %i.bq, align 8, !tbaa !66
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 16468 ; 9 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 8, !tbaa !40
  %i.bx = tail call fastcc i32 @intlist_read(ptr noundef nonnull %i.b, ptr noundef nonnull %i.bu, i32 noundef %i.bw, i32 noundef 0)
  %i.by = icmp slt i32 %i.bx, 0
  br i1 %i.by, label %.loopexit234, label %.preheader235

.preheader235:                                    ; preds = %bb.n
  %i.bz = load i32, ptr %i.bv, align 8, !tbaa !40 ; 4 uses
  %i.ca = icmp sgt i32 %i.bz, 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader235
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 24688 ; 3 uses
  %i.cc = zext nneg i32 %i.bz to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.bz, 12
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.cd = shl nuw nsw i64 %i.cc, 2
  %i.ce = getelementptr i8, ptr %i.b, i64 %i.cd
  %scevgep = getelementptr i8, ptr %i.ce, i64 16468
  %i.cf = getelementptr i8, ptr %i.b, i64 %i.cc
  %scevgep351 = getelementptr i8, ptr %i.cf, i64 24688
  %bound0 = icmp ult ptr %i.bu, %scevgep351
  %bound1 = icmp ult ptr %i.cb, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.cc, 2147483640              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 %index ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 4
  %wide.load = load <4 x i8>, ptr %i.cg, align 1, !tbaa !32, !alias.scope !68
  %wide.load352 = load <4 x i8>, ptr %i.ch, align 1, !tbaa !32, !alias.scope !68
  %i.ci = zext <4 x i8> %wide.load to <4 x i32>
  %i.cj = zext <4 x i8> %wide.load352 to <4 x i32>
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 2 uses
  %wide.load353 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !55, !alias.scope !71, !noalias !68
  %wide.load354 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !55, !alias.scope !71, !noalias !68
  %i.cm = mul nsw <4 x i32> %wide.load353, %i.ci
  %i.cn = mul nsw <4 x i32> %wide.load354, %i.cj
  store <4 x i32> %i.cm, ptr %i.ck, align 4, !tbaa !55, !alias.scope !71, !noalias !68
  store <4 x i32> %i.cn, ptr %i.cl, align 4, !tbaa !55, !alias.scope !71, !noalias !68
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !73

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.cc
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.preheader235
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !38
  %.not194 = icmp eq i32 %i.cq, 0
  br i1 %.not194, label %bb.o, label %bb.p

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cb, i64 %indvars.iv
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !32
  %i.ct = zext i8 %i.cs to i32
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !55
  %i.cw = mul nsw i32 %i.cv, %i.ct
  store i32 %i.cw, ptr %i.cu, align 4, !tbaa !55
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cx = icmp samesign ult i64 %indvars.iv.next, %i.cc
  br i1 %i.cx, label %scalar.ph, label %._crit_edge, !llvm.loop !74

bb.o:                                             ; preds = %._crit_edge
  %i.cy = load i32, ptr %i.bq, align 8, !tbaa !66 ; 3 uses
  %i.cz = load i32, ptr %i.bp, align 8, !tbaa !65
  %i.da = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.db = lshr i32 %i.cy, 3
  %i.dc = zext nneg i32 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %i.da, i64 %i.dc
  %i.de = load i32, ptr %i.dd, align 1, !tbaa !32
  %i.df = and i32 %i.cy, 7
  %i.dg = lshr i32 %i.de, %i.df
  %i.dh = add i32 %i.cy, 16
  %i.di = tail call i32 @llvm.umin.i32(i32 %i.cz, i32 %i.dh)
  store i32 %i.di, ptr %i.bq, align 8, !tbaa !66
  %i.dj = shl i32 %i.dg, 4
  %i.dk = and i32 %i.dj, 1048560
  br label %bb.p

bb.p:                                             ; preds = %._crit_edge, %bb.o
  %i.dl = phi i32 [ %i.dk, %bb.o ], [ 1, %._crit_edge ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 356 ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !33 ; 2 uses
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph253, label %._crit_edge254

.lr.ph253:                                        ; preds = %bb.p
  %i.dp = getelementptr inbounds nuw i8, ptr %i.b, i64 84
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 24664
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 24680 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph253, %._crit_edge250
  %i.ds = phi i32 [ %i.bz, %.lr.ph253 ], [ %i.fb, %._crit_edge250 ] ; 4 uses
  %indvars.iv281 = phi i64 [ 0, %.lr.ph253 ], [ %indvars.iv.next282, %._crit_edge250 ] ; 4 uses
  %i.dt = shl nuw nsw i64 %indvars.iv281, 13
  %i.du = getelementptr i8, ptr %i.b, i64 %i.dt
  %scevgep356 = getelementptr i8, ptr %i.du, i64 84 ; 2 uses
  %i.dv = load i32, ptr %i.ay, align 8, !tbaa !42 ; 4 uses
  %i.dw = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.dx = mul i32 %i.dw, %i.dv                    ; 4 uses
  %i.dy = getelementptr inbounds nuw [8192 x i8], ptr %i.dp, i64 %indvars.iv281 ; 10 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv281 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !46
  %i.eb = icmp sgt i32 %i.ds, 1
  br i1 %i.eb, label %.lr.ph30.preheader.i, label %predictor_init_state.exit

.lr.ph30.preheader.i:                             ; preds = %bb.q
  %i.ec = add nsw i32 %i.ds, -2
  %i.ed = add nsw i32 %i.ds, -1
  %i.ee = zext nneg i32 %i.ed to i64
  %i.ef = zext nneg i32 %i.ec to i64
  %i.eg = zext nneg i32 %i.ds to i64              ; 2 uses
  %invariant.op.i = add nsw i64 %i.eg, -1
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i, %.lr.ph30.preheader.i
  %indvars.iv43.i = phi i64 [ %i.ef, %.lr.ph30.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv41.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.ee, %.lr.ph30.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %4 = icmp slt i64 %indvars.iv43.i, %invariant.op.i
  br i1 %4, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph30.i
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv43.i
  %6 = load i32, ptr %5, align 4, !tbaa !55
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph30.i
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next42.i, %i.eg
  br i1 %exitcond50.not.i, label %predictor_init_state.exit, label %.lr.ph30.i, !llvm.loop !75

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next35.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next33.i, %.lr.ph.i ] ; 2 uses
  %.02225.i = phi i32 [ %6, %.lr.ph.preheader.i ], [ %i.eo, %.lr.ph.i ] ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv34.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !55 ; 2 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %indvars.iv32.i ; 2 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !55 ; 2 uses
  %i.el = mul i32 %i.ek, %i.ei                    ; 2 uses
  %i.em = ashr i32 %i.el, 10
  %.lobit.i.i = lshr i32 %i.el, 31
  %i.en = add i32 %.lobit.i.i, %.02225.i
  %i.eo = add i32 %i.en, %i.em
  %i.ep = mul i32 %i.ei, %.02225.i                ; 2 uses
  %i.eq = ashr i32 %i.ep, 10
  %.lobit.i23.i = lshr i32 %i.ep, 31
  %i.er = add i32 %.lobit.i23.i, %i.ek
  %i.es = add i32 %i.er, %i.eq
  store i32 %i.es, ptr %i.ej, align 4, !tbaa !55
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next35.i, %indvars.iv41.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !76

predictor_init_state.exit:                        ; preds = %._crit_edge.i, %bb.q
  %i.et = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.eu = tail call fastcc i32 @intlist_read(ptr noundef nonnull %i.b, ptr noundef %i.et, i32 noundef %i.dv, i32 noundef 1)
  %i.ev = icmp sgt i32 %i.eu, -1
  br i1 %i.ev, label %.preheader233, label %.loopexit234

.preheader233:                                    ; preds = %predictor_init_state.exit
  %i.ew = icmp sgt i32 %i.dv, 0
  br i1 %i.ew, label %.preheader232.lr.ph, label %._crit_edge246

.preheader232.lr.ph:                              ; preds = %.preheader233
  %i.ex = load ptr, ptr %i.dr, align 8, !tbaa !45
  %wide.trip.count = zext nneg i32 %i.dv to i64
  br label %.preheader232

.preheader232:                                    ; preds = %.preheader232.lr.ph, %predictor_calc_error.exit
  %indvars.iv275 = phi i64 [ 0, %.preheader232.lr.ph ], [ %indvars.iv.next276, %predictor_calc_error.exit ] ; 2 uses
  %.0179244 = phi ptr [ %i.ea, %.preheader232.lr.ph ], [ %i.hg, %predictor_calc_error.exit ] ; 2 uses
  %i.ey = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %.lr.ph242, label %._crit_edge243

._crit_edge246:                                   ; preds = %predictor_calc_error.exit, %.preheader233
  %i.fa = load ptr, ptr %i.dz, align 8, !tbaa !46 ; 3 uses
  %i.fb = load i32, ptr %i.bv, align 8, !tbaa !40 ; 4 uses
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph249.preheader, label %._crit_edge250

.lr.ph249.preheader:                              ; preds = %._crit_edge246
  %i.fd = zext nneg i32 %i.fb to i64              ; 5 uses
  %min.iters.check365 = icmp ult i32 %i.fb, 16
  br i1 %min.iters.check365, label %.lr.ph249.preheader391, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph249.preheader
  %i.fe = add nsw i64 %i.fd, -1                   ; 2 uses
  %i.ff = add i32 %i.dx, -1                       ; 2 uses
  %i.fg = trunc nsw i64 %i.fe to i32
  %i.fh = sub i32 %i.ff, %i.fg
  %i.fi = icmp sgt i32 %i.fh, %i.ff
  %i.fj = icmp ugt i64 %i.fe, 4294967295
  %i.fk = or i1 %i.fi, %i.fj
  br i1 %i.fk, label %.lr.ph249.preheader391, label %vector.memcheck355

vector.memcheck355:                               ; preds = %vector.scevcheck
  %i.fl = shl nuw nsw i64 %i.fd, 2                ; 2 uses
  %scevgep357 = getelementptr i8, ptr %scevgep356, i64 %i.fl
  %scevgep358 = getelementptr i8, ptr %i.fa, i64 4 ; 2 uses
  %i.fm = add i32 %i.dx, -1
  %i.fn = sext i32 %i.fm to i64
  %i.fo = shl nsw i64 %i.fn, 2                    ; 2 uses
  %i.fp = sub nsw i64 %i.fo, %i.fl
  %scevgep359 = getelementptr i8, ptr %scevgep358, i64 %i.fp
  %scevgep360 = getelementptr i8, ptr %scevgep358, i64 %i.fo
  %bound0361 = icmp ult ptr %scevgep356, %scevgep360
  %bound1362 = icmp ult ptr %scevgep359, %scevgep357
  %found.conflict363 = and i1 %bound0361, %bound1362
  br i1 %found.conflict363, label %.lr.ph249.preheader391, label %vector.ph366

vector.ph366:                                     ; preds = %vector.memcheck355
  %n.vec367 = and i64 %i.fd, 2147483640           ; 3 uses
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next373, %vector.body368 ] ; 3 uses
  %i.fq = trunc nuw nsw i64 %index369 to i32
  %i.fr = xor i32 %i.fq, -1
  %i.fs = add i32 %i.dx, %i.fr
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.fa, i64 %i.ft ; 2 uses
  %i.fv = getelementptr inbounds i8, ptr %i.fu, i64 -12
  %i.fw = getelementptr inbounds i8, ptr %i.fu, i64 -28
  %wide.load370 = load <4 x i32>, ptr %i.fv, align 4, !tbaa !55, !alias.scope !77
  %wide.load371 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !55, !alias.scope !77
  %reverse = shufflevector <4 x i32> %wide.load370, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse372 = shufflevector <4 x i32> %wide.load371, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %index369 ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 16
  store <4 x i32> %reverse, ptr %i.fx, align 4, !tbaa !55, !alias.scope !80, !noalias !77
  store <4 x i32> %reverse372, ptr %i.fy, align 4, !tbaa !55, !alias.scope !80, !noalias !77
  %index.next373 = add nuw i64 %index369, 8       ; 2 uses
  %i.fz = icmp eq i64 %index.next373, %n.vec367
  br i1 %i.fz, label %middle.block374, label %vector.body368, !llvm.loop !82

middle.block374:                                  ; preds = %vector.body368
  %cmp.n375 = icmp eq i64 %n.vec367, %i.fd
  br i1 %cmp.n375, label %._crit_edge250, label %.lr.ph249.preheader391

.lr.ph249.preheader391:                           ; preds = %vector.memcheck355, %vector.scevcheck, %.lr.ph249.preheader, %middle.block374
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck355 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph249.preheader ], [ %n.vec367, %middle.block374 ]
  br label %.lr.ph249

._crit_edge243:                                   ; preds = %predictor_calc_error.exit221, %.preheader232
  %.1.lcssa = phi ptr [ %.0179244, %.preheader232 ], [ %i.ik, %predictor_calc_error.exit221 ] ; 2 uses
  %i.ga = load i32, ptr %i.bv, align 8, !tbaa !40 ; 3 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv275
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !55
  %i.gd = mul i32 %i.gc, %i.dl
  %i.ge = add nsw i32 %i.ga, -1
  %i.gf = sext i32 %i.ge to i64                   ; 2 uses
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.gf
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !55
  %i.gi = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.gf
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !55
  %i.gk = mul i32 %i.gj, %i.gh                    ; 2 uses
  %i.gl = ashr i32 %i.gk, 10
  %.lobit.i.neg38.i = ashr i32 %i.gk, 31
  %.neg31.i = add i32 %.lobit.i.neg38.i, %i.gd
  %i.gm = sub i32 %.neg31.i, %i.gl                ; 2 uses
  %i.gn = icmp sgt i32 %i.ga, 1
  br i1 %i.gn, label %.lr.ph.preheader.i203, label %predictor_calc_error.exit

.lr.ph.preheader.i203:                            ; preds = %._crit_edge243
  %i.go = add nsw i32 %i.ga, -2                   ; 2 uses
  %i.gp = zext nneg i32 %i.go to i64              ; 2 uses
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.gp
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.gp
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.preheader.i203
  %.037.i = phi i32 [ %i.hc, %.lr.ph.i204 ], [ %i.go, %.lr.ph.preheader.i203 ] ; 2 uses
  %.02636.i = phi i32 [ %i.gw, %.lr.ph.i204 ], [ %i.gm, %.lr.ph.preheader.i203 ]
  %.02735.i = phi ptr [ %i.he, %.lr.ph.i204 ], [ %i.gq, %.lr.ph.preheader.i203 ] ; 3 uses
  %.02834.i = phi ptr [ %i.hd, %.lr.ph.i204 ], [ %i.gr, %.lr.ph.preheader.i203 ] ; 2 uses
  %i.gs = load i32, ptr %.02834.i, align 4, !tbaa !55 ; 2 uses
  %i.gt = load i32, ptr %.02735.i, align 4, !tbaa !55 ; 2 uses
  %i.gu = mul i32 %i.gt, %i.gs                    ; 2 uses
  %i.gv = ashr i32 %i.gu, 10
  %.lobit.i29.neg39.i = ashr i32 %i.gu, 31
  %.neg33.i = add i32 %.lobit.i29.neg39.i, %.02636.i
  %i.gw = sub i32 %.neg33.i, %i.gv                ; 3 uses
  %i.gx = mul i32 %i.gw, %i.gs                    ; 2 uses
  %i.gy = ashr i32 %i.gx, 10
  %.lobit.i30.i = lshr i32 %i.gx, 31
  %i.gz = add i32 %.lobit.i30.i, %i.gt
  %i.ha = add i32 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %.02735.i, i64 4
  store i32 %i.ha, ptr %i.hb, align 4, !tbaa !55
  %i.hc = add nsw i32 %.037.i, -1
  %i.hd = getelementptr inbounds i8, ptr %.02834.i, i64 -4
  %i.he = getelementptr inbounds i8, ptr %.02735.i, i64 -4
  %.not.i205 = icmp eq i32 %.037.i, 0
  br i1 %.not.i205, label %predictor_calc_error.exit, label %.lr.ph.i204, !llvm.loop !83

predictor_calc_error.exit:                        ; preds = %.lr.ph.i204, %._crit_edge243
  %.026.lcssa.i = phi i32 [ %i.gm, %._crit_edge243 ], [ %i.gw, %.lr.ph.i204 ]
  %i.hf = tail call i32 @llvm.smax.i32(i32 %.026.lcssa.i, i32 -1048576)
  %.0.i.i202 = tail call i32 @llvm.smin.i32(i32 %i.hf, i32 1048576) ; 2 uses
  store i32 %.0.i.i202, ptr %i.dy, align 4, !tbaa !55
  store i32 %.0.i.i202, ptr %.1.lcssa, align 4, !tbaa !55
  %i.hg = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge246, label %.preheader232, !llvm.loop !84

.lr.ph242:                                        ; preds = %.preheader232, %predictor_calc_error.exit221
  %.0177241 = phi i32 [ %i.il, %predictor_calc_error.exit221 ], [ 0, %.preheader232 ]
  %.1240 = phi ptr [ %i.ik, %predictor_calc_error.exit221 ], [ %.0179244, %.preheader232 ] ; 2 uses
  %i.hh = load i32, ptr %i.bv, align 8, !tbaa !40 ; 3 uses
  %i.hi = add nsw i32 %i.hh, -1
  %i.hj = sext i32 %i.hi to i64                   ; 2 uses
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hj
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !55
  %i.hm = getelementptr inbounds [4 x i8], ptr %i.dy, i64 %i.hj
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !55
  %i.ho = mul i32 %i.hn, %i.hl                    ; 2 uses
  %i.hp = ashr i32 %i.ho, 10
  %.lobit.i.neg38.i206 = ashr i32 %i.ho, 31
  %i.hq = sub nsw i32 %.lobit.i.neg38.i206, %i.hp ; 2 uses
  %i.hr = icmp sgt i32 %i.hh, 1
  br i1 %i.hr, label %.lr.ph.preheader.i211, label %predictor_calc_error.exit221

.lr.ph.preheader.i211:                            ; preds = %.lr.ph242
  %i.hs = add nsw i32 %i.hh, -2                   ; 2 uses
  %i.ht = zext nneg i32 %i.hs to i64              ; 2 uses
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.dy, i64 %i.ht
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.ht
  br label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.lr.ph.i212, %.lr.ph.preheader.i211
  %.037.i213 = phi i32 [ %i.ig, %.lr.ph.i212 ], [ %i.hs, %.lr.ph.preheader.i211 ] ; 2 uses
end_hunk_0
