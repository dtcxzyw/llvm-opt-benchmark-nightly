inline.NumInlined: 10
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 9
begin_hunk_0_@print_reductions:bb.a
  %i.a = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @shiftset, align 8, !tbaa !11
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 0, ptr %i.d, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.e = load i32, ptr @tokensetsize, align 4, !tbaa !4
  %i.f = sext i32 %i.e to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %bb.b, label %._crit_edge, !llvm.loop !80

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.h = load ptr, ptr @shift_table, align 8, !tbaa !20
  %i.i = sext i32 %0 to i64                       ; 3 uses
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !22   ; 5 uses
  %.not = icmp eq ptr %i.k, null                  ; 2 uses
  br i1 %.not, label %.loopexit211, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 10
  %i.m = load i16, ptr %i.l, align 2, !tbaa !24   ; 2 uses
  %i.n = icmp sgt i16 %i.m, 0
  br i1 %i.n, label %.lr.ph216, label %.loopexit211

.lr.ph216:                                        ; preds = %bb.c
  %wide.trip.count = zext nneg i16 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.p = load ptr, ptr @accessing_symbol, align 8
  %i.q = load ptr, ptr @shiftset, align 8
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph216, %bb.g
  %indvars.iv282 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next283, %bb.g ] ; 2 uses
  %.0134214 = phi i32 [ 0, %.lr.ph216 ], [ %.2136, %bb.g ] ; 3 uses
  %i.r = getelementptr inbounds nuw [2 x i8], ptr %i.o, i64 %indvars.iv282
  %i.s = load i16, ptr %i.r, align 2, !tbaa !29   ; 2 uses
  %.not190 = icmp eq i16 %i.s, 0
  br i1 %.not190, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = sext i16 %i.s to i64
  %i.u = getelementptr inbounds [2 x i8], ptr %i.p, i64 %i.t
  %i.v = load i16, ptr %i.u, align 2, !tbaa !29
  %i.w = sext i16 %i.v to i32                     ; 4 uses
  %i.x = load i32, ptr @ntokens, align 4, !tbaa !4
  %.not191 = icmp sgt i32 %i.x, %i.w
  br i1 %.not191, label %bb.f, label %.loopexit211.loopexit

bb.f:                                             ; preds = %bb.e
  %i.y = load i32, ptr @error_token_number, align 4, !tbaa !4
  %i.z = icmp eq i32 %i.y, %i.w
  %spec.select = select i1 %i.z, i32 1, i32 %.0134214
  %i.aa = and i32 %i.w, 31
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = ashr i32 %i.w, 5
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %i.ag = or i32 %i.af, %i.ab
  store i32 %i.ag, ptr %i.ae, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f
  %.2136 = phi i32 [ %spec.select, %bb.f ], [ %.0134214, %bb.d ] ; 2 uses
  %indvars.iv.next283 = add nuw nsw i64 %indvars.iv282, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next283, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit211.loopexit, label %bb.d, !llvm.loop !81

.loopexit211.loopexit:                            ; preds = %bb.g, %bb.e
  %.3137.ph = phi i32 [ %.2136, %bb.g ], [ %.0134214, %bb.e ]
  %i.ah = icmp ne i32 %.3137.ph, 0
  br label %.loopexit211

.loopexit211:                                     ; preds = %.loopexit211.loopexit, %bb.c, %._crit_edge
  %.3137 = phi i1 [ false, %._crit_edge ], [ false, %bb.c ], [ %i.ah, %.loopexit211.loopexit ] ; 2 uses
  %i.ai = load ptr, ptr @err_table, align 8, !tbaa !13
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52 ; 3 uses
  %.not192 = icmp eq ptr %i.ak, null
  br i1 %.not192, label %.loopexit210, label %bb.h

bb.h:                                             ; preds = %.loopexit211
  %i.al = load i16, ptr %i.ak, align 2, !tbaa !50 ; 4 uses
  %i.am = icmp sgt i16 %i.al, 0
  br i1 %i.am, label %.lr.ph221, label %.loopexit210

.lr.ph221:                                        ; preds = %bb.h
  %wide.trip.count288 = zext nneg i16 %i.al to i64 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 2 ; 3 uses
  %i.ao = load ptr, ptr @shiftset, align 8        ; 3 uses
  %xtraiter = and i64 %wide.trip.count288, 1
  %i.ap = icmp eq i16 %i.al, 1
  br i1 %i.ap, label %.epil.preheader, label %.lr.ph221.new

.lr.ph221.new:                                    ; preds = %.lr.ph221
  %unroll_iter = and i64 %wide.trip.count288, 32766
  br label %bb.i

bb.i:                                             ; preds = %bb.m, %.lr.ph221.new
  %indvars.iv285 = phi i64 [ 0, %.lr.ph221.new ], [ %indvars.iv.next286.1, %bb.m ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph221.new ], [ %niter.next.1, %bb.m ]
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285
  %i.ar = load i16, ptr %i.aq, align 2, !tbaa !29 ; 2 uses
  %.not201 = icmp eq i16 %i.ar, 0
  br i1 %.not201, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = sext i16 %i.ar to i32                   ; 2 uses
  %i.at = and i32 %i.as, 31
  %i.au = shl nuw i32 1, %i.at
  %i.av = ashr i32 %i.as, 5
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !4
  %i.az = or i32 %i.ay, %i.au
  store i32 %i.az, ptr %i.ax, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 2
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !29 ; 2 uses
  %.not201.1 = icmp eq i16 %i.bc, 0
  br i1 %.not201.1, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bd = sext i16 %i.bc to i32                   ; 2 uses
  %i.be = and i32 %i.bd, 31
  %i.bf = shl nuw i32 1, %i.be
  %i.bg = ashr i32 %i.bd, 5
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.ao, i64 %i.bh ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !4
  %i.bk = or i32 %i.bj, %i.bf
  store i32 %i.bk, ptr %i.bi, align 4, !tbaa !4
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %indvars.iv.next286.1 = add nuw nsw i64 %indvars.iv285, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit210.loopexit.unr-lcssa, label %bb.i, !llvm.loop !82

.loopexit210.loopexit.unr-lcssa:                  ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit210, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit210.loopexit.unr-lcssa, %.lr.ph221
  %indvars.iv285.epil.init = phi i64 [ 0, %.lr.ph221 ], [ %indvars.iv.next286.1, %.loopexit210.loopexit.unr-lcssa ]
  %lcmp.mod400 = trunc i16 %i.al to i1
  tail call void @llvm.assume(i1 %lcmp.mod400)
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %indvars.iv285.epil.init
  %i.bm = load i16, ptr %i.bl, align 2, !tbaa !29 ; 2 uses
  %.not201.epil = icmp eq i16 %i.bm, 0
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
  %i.cn = getelementptr inbounds i8, ptr %i.ck, i64 %.idx
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
  br i1 %min.iters.check, label %.lr.ph226.preheader399, label %vector.memcheck

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
  br i1 %conflict.rdx, label %.lr.ph226.preheader399, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.da, 9223372036854775800     ; 3 uses
  %i.dh = shl i64 %n.vec, 2                       ; 3 uses
  %i.di = getelementptr i8, ptr %i.ct, i64 %i.dh
  %i.dj = getelementptr i8, ptr %i.ck, i64 %i.dh
  %i.dk = getelementptr i8, ptr %i.cp, i64 %i.dh
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dl = shl i64 %index, 2                       ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ct, i64 %i.dl ; 2 uses
  %next.gep346 = getelementptr i8, ptr %i.ck, i64 %i.dl ; 2 uses
  %next.gep347 = getelementptr i8, ptr %i.cp, i64 %i.dl ; 2 uses
  %i.dm = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !4
  %wide.load348 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !4
  %i.dn = getelementptr i8, ptr %next.gep347, i64 16
  %wide.load349 = load <4 x i32>, ptr %next.gep347, align 4, !tbaa !4
  %wide.load350 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !4
  %i.do = and <4 x i32> %wide.load349, %wide.load
  %i.dp = and <4 x i32> %wide.load350, %wide.load348
  %i.dq = getelementptr i8, ptr %next.gep346, i64 16
  store <4 x i32> %i.do, ptr %next.gep346, align 4, !tbaa !4
  store <4 x i32> %i.dp, ptr %i.dq, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dr = icmp eq i64 %index.next, %n.vec
  br i1 %i.dr, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.da, %n.vec
  br i1 %cmp.n, label %.preheader209, label %.lr.ph226.preheader399

.lr.ph226.preheader399:                           ; preds = %vector.memcheck, %.lr.ph226.preheader, %middle.block
  %.0157224.ph = phi ptr [ %i.ct, %vector.memcheck ], [ %i.ct, %.lr.ph226.preheader ], [ %i.di, %middle.block ]
  %.0167223.ph = phi ptr [ %i.ck, %vector.memcheck ], [ %i.ck, %.lr.ph226.preheader ], [ %i.dj, %middle.block ]
  %.0175222.ph = phi ptr [ %i.cp, %vector.memcheck ], [ %i.cp, %.lr.ph226.preheader ], [ %i.dk, %middle.block ]
  br label %.lr.ph226

.preheader209:                                    ; preds = %.lr.ph226, %middle.block, %bb.o
  %i.ds = load i32, ptr @ntokens, align 4, !tbaa !4 ; 2 uses
  %i.dt = icmp sgt i32 %i.ds, 0
  %i.du = sext i16 %i.ch to i64                   ; 2 uses
  br i1 %i.dt, label %.lr.ph230, label %._crit_edge231

.lr.ph226:                                        ; preds = %.lr.ph226.preheader399, %.lr.ph226
  %.0157224 = phi ptr [ %i.dv, %.lr.ph226 ], [ %.0157224.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %.0167223 = phi ptr [ %i.ea, %.lr.ph226 ], [ %.0167223.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %.0175222 = phi ptr [ %i.dx, %.lr.ph226 ], [ %.0175222.ph, %.lr.ph226.preheader399 ] ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0157224, i64 4
  %i.dw = load i32, ptr %.0157224, align 4, !tbaa !4
  %i.dx = getelementptr inbounds nuw i8, ptr %.0175222, i64 4
  %i.dy = load i32, ptr %.0175222, align 4, !tbaa !4
  %i.dz = and i32 %i.dy, %i.dw
  %i.ea = getelementptr inbounds nuw i8, ptr %.0167223, i64 4 ; 2 uses
  store i32 %i.dz, ptr %.0167223, align 4, !tbaa !4
  %i.eb = icmp ult ptr %i.ea, %i.cn
  br i1 %i.eb, label %.lr.ph226, label %.preheader209, !llvm.loop !84

.lr.ph230:                                        ; preds = %.preheader209, %bb.q
  %i.ec = phi i32 [ %i.eq, %bb.q ], [ %i.ds, %.preheader209 ]
  %indvars.iv290 = phi i64 [ %indvars.iv.next291, %bb.q ], [ 0, %.preheader209 ] ; 2 uses
  %.0161228 = phi i32 [ %spec.select203, %bb.q ], [ 1, %.preheader209 ] ; 2 uses
  %.1168227 = phi ptr [ %spec.select202, %bb.q ], [ %i.ck, %.preheader209 ] ; 2 uses
  %i.ed = load i32, ptr %.1168227, align 4, !tbaa !4
  %i.ee = and i32 %i.ed, %.0161228
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
  %i.er = shl i32 %.0161228, 1                    ; 2 uses
  %i.es = icmp eq i32 %i.er, 0
  %spec.select202.idx = select i1 %i.es, i64 4, i64 0
  %spec.select202 = getelementptr inbounds nuw i8, ptr %.1168227, i64 %spec.select202.idx
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
  %i.fr = sext i16 %i.bx to i64                   ; 2 uses
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
  %min.iters.check378 = icmp ult i64 %i.gc, 28
  %invariant.op = sub i64 %i.fm, %i.fg
  %i.gf = sub i64 %i.fo, %i.fg
  %diff.check375 = icmp ugt i64 %i.gf, -32
  %n.vec381 = and i64 %i.ge, 9223372036854775800  ; 3 uses
  %i.gg = shl i64 %n.vec381, 2                    ; 3 uses
  %i.gh = getelementptr i8, ptr %i.ff, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.fn, i64 %i.gg
  %cmp.n393 = icmp eq i64 %i.ge, %n.vec381
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
  %n.vec359 = and i64 %i.gp, 9223372036854775800  ; 3 uses
end_hunk_0
