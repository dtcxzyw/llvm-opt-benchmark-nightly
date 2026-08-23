Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/bonk?download=true
inline.NumInlined: 26
inline.NumDeleted: 13
begin_hunk_0_@bonk_decode:bb.a
  %i.aj = add nsw i32 %.pre304, %i.ae
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ai, i64 %i.ak
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
  %i.dp = getelementptr i8, ptr %i.b, i64 84
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 24664
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 24680 ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph253, %._crit_edge250
  %i.ds = phi i32 [ %i.bz, %.lr.ph253 ], [ %i.ez, %._crit_edge250 ] ; 4 uses
  %indvars.iv281 = phi i64 [ 0, %.lr.ph253 ], [ %indvars.iv.next282, %._crit_edge250 ] ; 3 uses
  %i.dt = load i32, ptr %i.ay, align 8, !tbaa !42 ; 4 uses
  %i.du = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.dv = mul i32 %i.du, %i.dt                    ; 4 uses
  %i.dw = getelementptr [8192 x i8], ptr %i.dp, i64 %indvars.iv281 ; 12 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv281 ; 2 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !46
  %i.dz = icmp sgt i32 %i.ds, 1
  br i1 %i.dz, label %.lr.ph30.preheader.i, label %predictor_init_state.exit

.lr.ph30.preheader.i:                             ; preds = %bb.q
  %i.ea = add nsw i32 %i.ds, -2
  %i.eb = add nsw i32 %i.ds, -1
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = zext nneg i32 %i.ea to i64
  %i.ee = zext nneg i32 %i.ds to i64              ; 2 uses
  %invariant.op.i = add nsw i64 %i.ee, -1
  br label %.lr.ph30.i

.lr.ph30.i:                                       ; preds = %._crit_edge.i, %.lr.ph30.preheader.i
  %indvars.iv43.i = phi i64 [ %i.ed, %.lr.ph30.preheader.i ], [ %indvars.iv.next44.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv41.i = phi i64 [ 1, %.lr.ph30.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge.i ] ; 2 uses
  %indvars.iv.i = phi i64 [ %i.ec, %.lr.ph30.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %4 = icmp slt i64 %indvars.iv43.i, %invariant.op.i
  br i1 %4, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph30.i
  %5 = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv43.i
  %6 = load i32, ptr %5, align 4, !tbaa !55
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph30.i
  %indvars.iv.next44.i = add nsw i64 %indvars.iv43.i, -1
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond50.not.i = icmp eq i64 %indvars.iv.next42.i, %i.ee
  br i1 %exitcond50.not.i, label %predictor_init_state.exit, label %.lr.ph30.i, !llvm.loop !75

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv34.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next35.i, %.lr.ph.i ] ; 2 uses
  %indvars.iv32.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next33.i, %.lr.ph.i ] ; 2 uses
  %.02225.i = phi i32 [ %6, %.lr.ph.preheader.i ], [ %i.em, %.lr.ph.i ] ; 2 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv34.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !55 ; 2 uses
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %indvars.iv32.i ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !55 ; 2 uses
  %i.ej = mul i32 %i.ei, %i.eg                    ; 2 uses
  %i.ek = ashr i32 %i.ej, 10
  %.lobit.i.i = lshr i32 %i.ej, 31
  %i.el = add i32 %.lobit.i.i, %.02225.i
  %i.em = add i32 %i.el, %i.ek
  %i.en = mul i32 %i.eg, %.02225.i                ; 2 uses
  %i.eo = ashr i32 %i.en, 10
  %.lobit.i23.i = lshr i32 %i.en, 31
  %i.ep = add i32 %.lobit.i23.i, %i.ei
  %i.eq = add i32 %i.ep, %i.eo
  store i32 %i.eq, ptr %i.eh, align 4, !tbaa !55
  %indvars.iv.next35.i = add nuw nsw i64 %indvars.iv34.i, 1 ; 2 uses
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next35.i, %indvars.iv41.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !76

predictor_init_state.exit:                        ; preds = %._crit_edge.i, %bb.q
  %i.er = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.es = tail call fastcc i32 @intlist_read(ptr noundef nonnull %i.b, ptr noundef %i.er, i32 noundef %i.dt, i32 noundef 1)
  %i.et = icmp sgt i32 %i.es, -1
  br i1 %i.et, label %.preheader233, label %.loopexit234

.preheader233:                                    ; preds = %predictor_init_state.exit
  %i.eu = icmp sgt i32 %i.dt, 0
  br i1 %i.eu, label %.preheader232.lr.ph, label %._crit_edge246

.preheader232.lr.ph:                              ; preds = %.preheader233
  %i.ev = load ptr, ptr %i.dr, align 8, !tbaa !45
  %wide.trip.count = zext nneg i32 %i.dt to i64
  br label %.preheader232

.preheader232:                                    ; preds = %.preheader232.lr.ph, %predictor_calc_error.exit
  %indvars.iv275 = phi i64 [ 0, %.preheader232.lr.ph ], [ %indvars.iv.next276, %predictor_calc_error.exit ] ; 2 uses
  %.0179244 = phi ptr [ %i.dy, %.preheader232.lr.ph ], [ %i.he, %predictor_calc_error.exit ] ; 2 uses
  %i.ew = load i32, ptr %i.ba, align 4, !tbaa !41
  %i.ex = icmp sgt i32 %i.ew, 1
  br i1 %i.ex, label %.lr.ph242, label %._crit_edge243

._crit_edge246:                                   ; preds = %predictor_calc_error.exit, %.preheader233
  %i.ey = load ptr, ptr %i.dx, align 8, !tbaa !46 ; 3 uses
  %i.ez = load i32, ptr %i.bv, align 8, !tbaa !40 ; 4 uses
  %i.fa = icmp sgt i32 %i.ez, 0
  br i1 %i.fa, label %.lr.ph249.preheader, label %._crit_edge250

.lr.ph249.preheader:                              ; preds = %._crit_edge246
  %i.fb = zext nneg i32 %i.ez to i64              ; 5 uses
  %min.iters.check364 = icmp ult i32 %i.ez, 16
  br i1 %min.iters.check364, label %.lr.ph249.preheader390, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph249.preheader
  %i.fc = add nsw i64 %i.fb, -1                   ; 2 uses
  %i.fd = add i32 %i.dv, -1                       ; 2 uses
  %i.fe = trunc nsw i64 %i.fc to i32
  %i.ff = sub i32 %i.fd, %i.fe
  %i.fg = icmp sgt i32 %i.ff, %i.fd
  %i.fh = icmp ugt i64 %i.fc, 4294967295
  %i.fi = or i1 %i.fg, %i.fh
  br i1 %i.fi, label %.lr.ph249.preheader390, label %vector.memcheck355

vector.memcheck355:                               ; preds = %vector.scevcheck
  %i.fj = shl nuw nsw i64 %i.fb, 2                ; 2 uses
  %scevgep356 = getelementptr i8, ptr %i.dw, i64 %i.fj
  %scevgep357 = getelementptr i8, ptr %i.ey, i64 4 ; 2 uses
  %i.fk = add i32 %i.dv, -1
  %i.fl = sext i32 %i.fk to i64
  %i.fm = shl nsw i64 %i.fl, 2                    ; 2 uses
  %i.fn = sub nsw i64 %i.fm, %i.fj
  %scevgep358 = getelementptr i8, ptr %scevgep357, i64 %i.fn
  %scevgep359 = getelementptr i8, ptr %scevgep357, i64 %i.fm
  %bound0360 = icmp ult ptr %i.dw, %scevgep359
  %bound1361 = icmp ult ptr %scevgep358, %scevgep356
  %found.conflict362 = and i1 %bound0360, %bound1361
  br i1 %found.conflict362, label %.lr.ph249.preheader390, label %vector.ph365

vector.ph365:                                     ; preds = %vector.memcheck355
  %n.vec366 = and i64 %i.fb, 2147483640           ; 3 uses
  br label %vector.body367

vector.body367:                                   ; preds = %vector.body367, %vector.ph365
  %index368 = phi i64 [ 0, %vector.ph365 ], [ %index.next372, %vector.body367 ] ; 3 uses
  %i.fo = trunc nuw nsw i64 %index368 to i32
  %i.fp = xor i32 %i.fo, -1
  %i.fq = add i32 %i.dv, %i.fp
  %i.fr = sext i32 %i.fq to i64
  %i.fs = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 -12
  %i.fu = getelementptr inbounds i8, ptr %i.fs, i64 -28
  %wide.load369 = load <4 x i32>, ptr %i.ft, align 4, !tbaa !55, !alias.scope !77
  %wide.load370 = load <4 x i32>, ptr %i.fu, align 4, !tbaa !55, !alias.scope !77
  %reverse = shufflevector <4 x i32> %wide.load369, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse371 = shufflevector <4 x i32> %wide.load370, <4 x i32> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %index368 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <4 x i32> %reverse, ptr %i.fv, align 4, !tbaa !55, !alias.scope !80, !noalias !77
  store <4 x i32> %reverse371, ptr %i.fw, align 4, !tbaa !55, !alias.scope !80, !noalias !77
  %index.next372 = add nuw i64 %index368, 8       ; 2 uses
  %i.fx = icmp eq i64 %index.next372, %n.vec366
  br i1 %i.fx, label %middle.block373, label %vector.body367, !llvm.loop !82

middle.block373:                                  ; preds = %vector.body367
  %cmp.n374 = icmp eq i64 %n.vec366, %i.fb
  br i1 %cmp.n374, label %._crit_edge250, label %.lr.ph249.preheader390

.lr.ph249.preheader390:                           ; preds = %vector.memcheck355, %vector.scevcheck, %.lr.ph249.preheader, %middle.block373
  %indvars.iv278.ph = phi i64 [ 0, %vector.memcheck355 ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph249.preheader ], [ %n.vec366, %middle.block373 ]
  br label %.lr.ph249

._crit_edge243:                                   ; preds = %predictor_calc_error.exit221, %.preheader232
  %.1.lcssa = phi ptr [ %.0179244, %.preheader232 ], [ %i.ii, %predictor_calc_error.exit221 ] ; 2 uses
  %i.fy = load i32, ptr %i.bv, align 8, !tbaa !40 ; 3 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.ev, i64 %indvars.iv275
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !55
  %i.gb = mul i32 %i.ga, %i.dl
  %i.gc = add nsw i32 %i.fy, -1
  %i.gd = sext i32 %i.gc to i64                   ; 2 uses
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.gd
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !55
  %i.gg = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.gd
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !55
  %i.gi = mul i32 %i.gh, %i.gf                    ; 2 uses
  %i.gj = ashr i32 %i.gi, 10
  %.lobit.i.neg38.i = ashr i32 %i.gi, 31
  %.neg31.i = add i32 %.lobit.i.neg38.i, %i.gb
  %i.gk = sub i32 %.neg31.i, %i.gj                ; 2 uses
  %i.gl = icmp sgt i32 %i.fy, 1
  br i1 %i.gl, label %.lr.ph.preheader.i203, label %predictor_calc_error.exit

.lr.ph.preheader.i203:                            ; preds = %._crit_edge243
  %i.gm = add nsw i32 %i.fy, -2                   ; 2 uses
  %i.gn = zext nneg i32 %i.gm to i64              ; 2 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.gn
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.gn
  br label %.lr.ph.i204

.lr.ph.i204:                                      ; preds = %.lr.ph.i204, %.lr.ph.preheader.i203
  %.037.i = phi i32 [ %i.ha, %.lr.ph.i204 ], [ %i.gm, %.lr.ph.preheader.i203 ] ; 2 uses
  %.02636.i = phi i32 [ %i.gu, %.lr.ph.i204 ], [ %i.gk, %.lr.ph.preheader.i203 ]
  %.02735.i = phi ptr [ %i.hc, %.lr.ph.i204 ], [ %i.go, %.lr.ph.preheader.i203 ] ; 3 uses
  %.02834.i = phi ptr [ %i.hb, %.lr.ph.i204 ], [ %i.gp, %.lr.ph.preheader.i203 ] ; 2 uses
  %i.gq = load i32, ptr %.02834.i, align 4, !tbaa !55 ; 2 uses
  %i.gr = load i32, ptr %.02735.i, align 4, !tbaa !55 ; 2 uses
  %i.gs = mul i32 %i.gr, %i.gq                    ; 2 uses
  %i.gt = ashr i32 %i.gs, 10
  %.lobit.i29.neg39.i = ashr i32 %i.gs, 31
  %.neg33.i = add i32 %.lobit.i29.neg39.i, %.02636.i
  %i.gu = sub i32 %.neg33.i, %i.gt                ; 3 uses
  %i.gv = mul i32 %i.gu, %i.gq                    ; 2 uses
  %i.gw = ashr i32 %i.gv, 10
  %.lobit.i30.i = lshr i32 %i.gv, 31
  %i.gx = add i32 %.lobit.i30.i, %i.gr
  %i.gy = add i32 %i.gx, %i.gw
  %i.gz = getelementptr inbounds nuw i8, ptr %.02735.i, i64 4
  store i32 %i.gy, ptr %i.gz, align 4, !tbaa !55
  %i.ha = add nsw i32 %.037.i, -1
  %i.hb = getelementptr inbounds i8, ptr %.02834.i, i64 -4
  %i.hc = getelementptr inbounds i8, ptr %.02735.i, i64 -4
  %.not.i205 = icmp eq i32 %.037.i, 0
  br i1 %.not.i205, label %predictor_calc_error.exit, label %.lr.ph.i204, !llvm.loop !83

predictor_calc_error.exit:                        ; preds = %.lr.ph.i204, %._crit_edge243
  %.026.lcssa.i = phi i32 [ %i.gk, %._crit_edge243 ], [ %i.gu, %.lr.ph.i204 ]
  %i.hd = tail call i32 @llvm.smax.i32(i32 %.026.lcssa.i, i32 -1048576)
  %.0.i.i202 = tail call i32 @llvm.smin.i32(i32 %i.hd, i32 1048576) ; 2 uses
  store i32 %.0.i.i202, ptr %i.dw, align 4, !tbaa !55
  store i32 %.0.i.i202, ptr %.1.lcssa, align 4, !tbaa !55
  %i.he = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge246, label %.preheader232, !llvm.loop !84

.lr.ph242:                                        ; preds = %.preheader232, %predictor_calc_error.exit221
  %.0177241 = phi i32 [ %i.ij, %predictor_calc_error.exit221 ], [ 0, %.preheader232 ]
  %.1240 = phi ptr [ %i.ii, %predictor_calc_error.exit221 ], [ %.0179244, %.preheader232 ] ; 2 uses
  %i.hf = load i32, ptr %i.bv, align 8, !tbaa !40 ; 3 uses
  %i.hg = add nsw i32 %i.hf, -1
  %i.hh = sext i32 %i.hg to i64                   ; 2 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.hh
  %i.hj = load i32, ptr %i.hi, align 4, !tbaa !55
  %i.hk = getelementptr inbounds [4 x i8], ptr %i.dw, i64 %i.hh
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !55
  %i.hm = mul i32 %i.hl, %i.hj                    ; 2 uses
  %i.hn = ashr i32 %i.hm, 10
  %.lobit.i.neg38.i206 = ashr i32 %i.hm, 31
  %i.ho = sub nsw i32 %.lobit.i.neg38.i206, %i.hn ; 2 uses
  %i.hp = icmp sgt i32 %i.hf, 1
  br i1 %i.hp, label %.lr.ph.preheader.i211, label %predictor_calc_error.exit221

.lr.ph.preheader.i211:                            ; preds = %.lr.ph242
  %i.hq = add nsw i32 %i.hf, -2                   ; 2 uses
  %i.hr = zext nneg i32 %i.hq to i64              ; 2 uses
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.dw, i64 %i.hr
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.hr
  br label %.lr.ph.i212

.lr.ph.i212:                                      ; preds = %.lr.ph.i212, %.lr.ph.preheader.i211
  %.037.i213 = phi i32 [ %i.ie, %.lr.ph.i212 ], [ %i.hq, %.lr.ph.preheader.i211 ] ; 2 uses
end_hunk_0
