Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/selfuncs?download=true
inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@estimate_multivariate_ndistinct:bb.a
  %.0192294400 = phi i32 [ %.2194, %.critedge256 ], [ 0, %.lr.ph297 ] ; 6 uses
  %.0187295399 = phi i32 [ %.4191, %.critedge256 ], [ 0, %.lr.ph297 ] ; 6 uses
  %indvars.iv349398 = phi i64 [ %indvars.iv.next350, %.critedge256 ], [ 0, %.lr.ph297 ] ; 2 uses
  %i.an = load ptr, ptr %i.ai, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv349398
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4
  %i.as = icmp eq i32 %i.ar, 6
  br i1 %i.as, label %bb.h, label %bb.j

.critedge254:                                     ; preds = %.critedge256, %.lr.ph297, %bb.g
  %.0192.lcssa = phi i32 [ 0, %bb.g ], [ 0, %.lr.ph297 ], [ %.2194, %.critedge256 ] ; 3 uses
  %.0187.lcssa = phi i32 [ 0, %bb.g ], [ 0, %.lr.ph297 ], [ %.4191, %.critedge256 ] ; 4 uses
  %i.at = add i32 %.0187.lcssa, %.0192.lcssa
  %i.au = icmp slt i32 %i.at, 2
  br i1 %i.au, label %bb.o, label %bb.l

bb.h:                                             ; preds = %.lr.ph401
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.aw = load i16, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp sgt i16 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %.critedge256

bb.i:                                             ; preds = %bb.h
  %i.ay = zext nneg i16 %i.aw to i32
  %i.az = load ptr, ptr %i.ak, align 8
  %i.ba = tail call zeroext i1 @bms_is_member(i32 noundef %i.ay, ptr noundef %i.az) #12
  %i.bb = zext i1 %i.ba to i32
  %spec.select = add i32 %.0192294400, %i.bb
  br label %.critedge256

bb.j:                                             ; preds = %.lr.ph401
  %i.bc = load ptr, ptr %i.aj, align 8            ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 4 ; 2 uses
  %.not251 = icmp eq ptr %i.bc, null
  br i1 %.not251, label %.critedge256, label %.lr.ph

.lr.ph:                                           ; preds = %bb.j
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.bf = load i32, ptr %i.bd, align 4
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph293, label %.critedge256

bb.k:                                             ; preds = %.lr.ph293
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bh = load i32, ptr %i.bd, align 4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = icmp slt i64 %indvars.iv.next, %i.bi
  br i1 %i.bj, label %.lr.ph293, label %.critedge256

.lr.ph293:                                        ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph ] ; 2 uses
  %i.bk = load ptr, ptr %i.be, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %indvars.iv
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = load ptr, ptr %i.ap, align 8
  %i.bo = tail call zeroext i1 @equal(ptr noundef %i.bn, ptr noundef %i.bm) #12
  br i1 %i.bo, label %.critedge256.loopexit.split.loop.exit, label %bb.k

.critedge256.loopexit.split.loop.exit:            ; preds = %.lr.ph293
  %i.bp = add i32 %.0187295399, 1
  br label %.critedge256

.critedge256:                                     ; preds = %bb.k, %.critedge256.loopexit.split.loop.exit, %bb.j, %.lr.ph, %bb.h, %bb.i
  %.2194 = phi i32 [ %spec.select, %bb.i ], [ %.0192294400, %bb.h ], [ %.0192294400, %.critedge256.loopexit.split.loop.exit ], [ %.0192294400, %.lr.ph ], [ %.0192294400, %bb.j ], [ %.0192294400, %bb.k ] ; 2 uses
  %.4191 = phi i32 [ %.0187295399, %bb.i ], [ %.0187295399, %bb.h ], [ %i.bp, %.critedge256.loopexit.split.loop.exit ], [ %.0187295399, %.lr.ph ], [ %.0187295399, %bb.j ], [ %.0187295399, %bb.k ] ; 2 uses
  %indvars.iv.next350 = add nuw nsw i64 %indvars.iv349398, 1 ; 2 uses
  %i.bq = load i32, ptr %i.ah, align 4
  %i.br = sext i32 %i.bq to i64
  %i.bs = icmp slt i64 %indvars.iv.next350, %i.br
  br i1 %i.bs, label %.lr.ph401, label %.critedge254

bb.l:                                             ; preds = %.critedge254
  %i.bt = icmp sgt i32 %.0187.lcssa, %.0208304
  br i1 %i.bt, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bu = icmp eq i32 %.0187.lcssa, %.0208304
  %i.bv = icmp sgt i32 %.0192.lcssa, %.0211303
  %or.cond = select i1 %i.bu, i1 %i.bv, i1 false
  br i1 %or.cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %.critedge254, %bb.f, %bb.e
  %.2213 = phi i32 [ %.0211303, %.critedge254 ], [ %.0211303, %bb.e ], [ %.0211303, %bb.f ], [ %.0192.lcssa, %bb.n ], [ %.0211303, %bb.m ]
  %.2210 = phi i32 [ %.0208304, %.critedge254 ], [ %.0208304, %bb.e ], [ %.0208304, %bb.f ], [ %.0187.lcssa, %bb.n ], [ %.0208304, %bb.m ]
  %.2207 = phi i32 [ %.0205305, %.critedge254 ], [ %.0205305, %bb.e ], [ %.0205305, %bb.f ], [ %i.bx, %bb.n ], [ %.0205305, %bb.m ] ; 3 uses
  %.2204 = phi ptr [ %.0202306, %.critedge254 ], [ %.0202306, %bb.e ], [ %.0202306, %bb.f ], [ %i.z, %bb.n ], [ %.0202306, %bb.m ] ; 3 uses
  %indvars.iv.next353 = add nuw nsw i64 %indvars.iv352, 1 ; 2 uses
  %i.by = load i32, ptr %i.t, align 4
  %i.bz = sext i32 %i.by to i64
  %.not231 = icmp slt i64 %indvars.iv.next353, %i.bz
  br i1 %.not231, label %bb.e, label %.critedge, !llvm.loop !41

bb.p:                                             ; preds = %.critedge
  %i.ca = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.cb = load i8, ptr %i.ca, align 8, !range !5, !noundef !6
  %i.cc = trunc nuw i8 %i.cb to i1
  %i.cd = tail call ptr @statext_ndistinct_load(i32 noundef %.2207, i1 noundef zeroext %i.cc) #12 ; 3 uses
  %.not232 = icmp eq ptr %i.cd, null
  br i1 %.not232, label %.critedge.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ce = getelementptr inbounds nuw i8, ptr %.2204, i64 40 ; 3 uses
  %i.cf = load ptr, ptr %i.ce, align 8            ; 2 uses
  %.not233 = icmp eq ptr %i.cf, null
  br i1 %.not233, label %bb.r, label %list_length.exit

list_length.exit:                                 ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = shl i32 %i.ch, 16
  %sext = add i32 %i.ci, 65536
  %i.cj = ashr exact i32 %sext, 16
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %list_length.exit
  %.0170 = phi i32 [ %i.cj, %list_length.exit ], [ 0, %bb.q ] ; 3 uses
  %i.ck = load ptr, ptr %2, align 8               ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4 ; 2 uses
  %.not234 = icmp eq ptr %i.ck, null
  br i1 %.not234, label %.critedge258, label %.lr.ph320

.lr.ph320:                                        ; preds = %bb.r
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %i.cn = getelementptr inbounds nuw i8, ptr %.2204, i64 32
  %i.co = trunc nsw i32 %.0170 to i16
  %i.cp = load i32, ptr %i.cl, align 4
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %.lr.ph405, label %.critedge258

.lr.ph405:                                        ; preds = %.lr.ph320, %.critedge260
  %.0171318404 = phi ptr [ %.6, %.critedge260 ], [ null, %.lr.ph320 ] ; 6 uses
  %indvars.iv360403 = phi i64 [ %indvars.iv.next361, %.critedge260 ], [ 0, %.lr.ph320 ] ; 2 uses
  %i.cr = load ptr, ptr %i.cm, align 8
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv360403
  %i.ct = load ptr, ptr %i.cs, align 8            ; 2 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 4
  %i.cw = icmp eq i32 %i.cv, 6
  br i1 %i.cw, label %bb.s, label %bb.u

.critedge258:                                     ; preds = %.critedge260, %.lr.ph320, %bb.r
  %.0171.lcssa = phi ptr [ null, %bb.r ], [ null, %.lr.ph320 ], [ %.6, %.critedge260 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 8
  %.not346 = icmp eq i32 %i.cy, 0
  br i1 %.not346, label %._crit_edge331, label %.lr.ph330

.lr.ph330:                                        ; preds = %.critedge258
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.da = trunc nsw i32 %.0170 to i16             ; 2 uses
  br label %bb.w

bb.s:                                             ; preds = %.lr.ph405
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.dc = load i16, ptr %i.db, align 8            ; 3 uses
  %i.dd = icmp sgt i16 %i.dc, 0
  br i1 %i.dd, label %bb.t, label %.critedge260

bb.t:                                             ; preds = %bb.s
  %i.de = zext nneg i16 %i.dc to i32
  %i.df = load ptr, ptr %i.cn, align 8
  %i.dg = tail call zeroext i1 @bms_is_member(i32 noundef %i.de, ptr noundef %i.df) #12
  br i1 %i.dg, label %.thread268, label %.critedge260

.thread268:                                       ; preds = %bb.t
  %i.dh = add i16 %i.dc, %i.co
  %i.di = sext i16 %i.dh to i32
  br label %.critedge260.sink.split

bb.u:                                             ; preds = %.lr.ph405
  %i.dj = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not243 = icmp eq ptr %i.dj, null
  br i1 %.not243, label %.critedge260, label %.lr.ph313

.lr.ph313:                                        ; preds = %bb.u
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dm = load i32, ptr %i.dk, align 4
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph317, label %.critedge260

.lr.ph317:                                        ; preds = %.lr.ph313, %bb.v
  %indvars.iv355 = phi i64 [ %indvars.iv.next356, %bb.v ], [ 0, %.lr.ph313 ] ; 3 uses
  %i.do = load ptr, ptr %i.dl, align 8
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv355
  %i.dq = load ptr, ptr %i.dp, align 8
  %i.dr = load ptr, ptr %i.ct, align 8
  %i.ds = tail call zeroext i1 @equal(ptr noundef %i.dr, ptr noundef %i.dq) #12
  br i1 %i.ds, label %.thread271, label %bb.v

.thread271:                                       ; preds = %.lr.ph317
  %indvars357 = trunc i64 %indvars.iv355 to i32
  %sext245 = xor i32 %indvars357, -1
  %i.dt = add i32 %.0170, %sext245
  %sext246 = shl i32 %i.dt, 16
  %i.du = ashr exact i32 %sext246, 16
  br label %.critedge260.sink.split

bb.v:                                             ; preds = %.lr.ph317
  %indvars.iv.next356 = add nuw nsw i64 %indvars.iv355, 1 ; 2 uses
  %i.dv = load i32, ptr %i.dk, align 4
  %i.dw = sext i32 %i.dv to i64
  %i.dx = icmp slt i64 %indvars.iv.next356, %i.dw
  br i1 %i.dx, label %.lr.ph317, label %.critedge260

.critedge260.sink.split:                          ; preds = %.thread268, %.thread271
  %.sink = phi i32 [ %i.du, %.thread271 ], [ %i.di, %.thread268 ]
  %i.dy = tail call ptr @bms_add_member(ptr noundef %.0171318404, i32 noundef %.sink) #12
  br label %.critedge260

.critedge260:                                     ; preds = %bb.v, %.critedge260.sink.split, %bb.u, %.lr.ph313, %bb.t, %bb.s
  %.6 = phi ptr [ %.0171318404, %bb.s ], [ %.0171318404, %.lr.ph313 ], [ %i.dy, %.critedge260.sink.split ], [ %.0171318404, %bb.t ], [ %.0171318404, %bb.u ], [ %.0171318404, %bb.v ] ; 2 uses
  %indvars.iv.next361 = add nuw nsw i64 %indvars.iv360403, 1 ; 2 uses
  %i.dz = load i32, ptr %i.cl, align 4
  %i.ea = sext i32 %i.dz to i64
  %i.eb = icmp slt i64 %indvars.iv.next361, %i.ea
  br i1 %i.eb, label %.lr.ph405, label %.critedge258

bb.w:                                             ; preds = %.lr.ph330, %select.unfold
  %.0185329 = phi i32 [ 0, %.lr.ph330 ], [ %i.et, %select.unfold ] ; 2 uses
  %i.ec = sext i32 %.0185329 to i64
  %i.ed = getelementptr inbounds [24 x i8], ptr %i.cz, i64 %i.ec ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 3 uses
  %i.ef = load i32, ptr %i.ee, align 8
  %i.eg = tail call i32 @bms_num_members(ptr noundef %.0171.lcssa) #12
  %.not236 = icmp eq i32 %i.ef, %i.eg
  br i1 %.not236, label %.preheader, label %select.unfold

.preheader:                                       ; preds = %bb.w
  %i.eh = load i32, ptr %i.ee, align 8
  %i.ei = icmp sgt i32 %i.eh, 0
  br i1 %i.ei, label %.lr.ph325, label %.thread279

.lr.ph325:                                        ; preds = %.preheader
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ed, i64 16
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next364 = add nuw nsw i64 %indvars.iv363, 1 ; 2 uses
  %i.ek = load i32, ptr %i.ee, align 8
  %i.el = sext i32 %i.ek to i64
  %i.em = icmp slt i64 %indvars.iv.next364, %i.el
  br i1 %i.em, label %bb.y, label %.thread279, !llvm.loop !42

bb.y:                                             ; preds = %.lr.ph325, %bb.x
  %indvars.iv363 = phi i64 [ 0, %.lr.ph325 ], [ %indvars.iv.next364, %bb.x ] ; 2 uses
  %i.en = load ptr, ptr %i.ej, align 8
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr %i.en, i64 %indvars.iv363
  %i.ep = load i16, ptr %i.eo, align 2
  %i.eq = add i16 %i.ep, %i.da
  %i.er = sext i16 %i.eq to i32
  %i.es = tail call zeroext i1 @bms_is_member(i32 noundef %i.er, ptr noundef %.0171.lcssa) #12
  br i1 %i.es, label %bb.x, label %select.unfold

select.unfold:                                    ; preds = %bb.y, %bb.w
  %i.et = add nuw i32 %.0185329, 1                ; 2 uses
  %i.eu = load i32, ptr %i.cx, align 8
  %i.ev = icmp ult i32 %i.et, %i.eu
  br i1 %i.ev, label %bb.w, label %._crit_edge331, !llvm.loop !43

._crit_edge331:                                   ; preds = %select.unfold, %.critedge258
  %i.ew = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #14 ; 0 uses
  %i.ex = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 4821, ptr noundef nonnull @__func__.estimate_multivariate_ndistinct) #12
  unreachable

.thread279:                                       ; preds = %.preheader, %bb.x
  %i.ey = load ptr, ptr %2, align 8               ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 4 ; 2 uses
  %.not239 = icmp eq ptr %i.ey, null
  br i1 %.not239, label %.critedge263, label %.lr.ph342

.lr.ph342:                                        ; preds = %.thread279
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.fb = load i32, ptr %i.ez, align 4
  %i.fc = icmp sgt i32 %i.fb, 0
  br i1 %i.fc, label %.lr.ph409, label %.critedge263

.lr.ph409:                                        ; preds = %.lr.ph342, %.critedge283
  %.0181338408 = phi ptr [ %.3184, %.critedge283 ], [ null, %.lr.ph342 ] ; 3 uses
  %indvars.iv369407 = phi i64 [ %indvars.iv.next370, %.critedge283 ], [ 0, %.lr.ph342 ] ; 2 uses
  %i.fd = load ptr, ptr %i.fa, align 8
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.fd, i64 %indvars.iv369407
  %i.ff = load ptr, ptr %i.fe, align 8            ; 3 uses
  %i.fg = load ptr, ptr %i.ff, align 8            ; 2 uses
  %i.fh = load i32, ptr %i.fg, align 4
  %i.fi = icmp eq i32 %i.fh, 6
  br i1 %i.fi, label %bb.z, label %bb.ab

.critedge263:                                     ; preds = %.critedge283, %.lr.ph342, %.thread279
  %.0181.lcssa = phi ptr [ null, %.thread279 ], [ null, %.lr.ph342 ], [ %.3184, %.critedge283 ]
  store ptr %.0181.lcssa, ptr %2, align 8
  %i.fj = load double, ptr %i.ed, align 8
  store double %i.fj, ptr %3, align 8
  br label %.critedge.thread

bb.z:                                             ; preds = %.lr.ph409
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fl = load i16, ptr %i.fk, align 8            ; 2 uses
  %i.fm = icmp sgt i16 %i.fl, 0
  br i1 %i.fm, label %bb.aa, label %.critedge283.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.fn = add i16 %i.fl, %i.da
  %i.fo = sext i16 %i.fn to i32
  %i.fp = tail call zeroext i1 @bms_is_member(i32 noundef %i.fo, ptr noundef %.0171.lcssa) #12
  br i1 %i.fp, label %.critedge283, label %.critedge283.sink.split

bb.ab:                                            ; preds = %.lr.ph409
  %i.fq = load ptr, ptr %i.ce, align 8            ; 3 uses
  %.not241 = icmp eq ptr %i.fq, null
  br i1 %.not241, label %.critedge283.sink.split, label %.lr.ph334

.lr.ph334:                                        ; preds = %bb.ab
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %i.ft = load i32, ptr %i.fr, align 4
  %i.fu = icmp sgt i32 %i.ft, 0
  br i1 %i.fu, label %.lr.ph337, label %.critedge283.sink.split

bb.ac:                                            ; preds = %.lr.ph337
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %i.fv = load i32, ptr %i.fr, align 4
  %i.fw = sext i32 %i.fv to i64
  %i.fx = icmp slt i64 %indvars.iv.next367, %i.fw
  br i1 %i.fx, label %.lr.ph337, label %.critedge283.sink.split

.lr.ph337:                                        ; preds = %.lr.ph334, %bb.ac
  %indvars.iv366 = phi i64 [ %indvars.iv.next367, %bb.ac ], [ 0, %.lr.ph334 ] ; 2 uses
  %i.fy = load ptr, ptr %i.fs, align 8
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %indvars.iv366
  %i.ga = load ptr, ptr %i.fz, align 8
  %i.gb = load ptr, ptr %i.ff, align 8
  %i.gc = tail call zeroext i1 @equal(ptr noundef %i.gb, ptr noundef %i.ga) #12
  br i1 %i.gc, label %.critedge283, label %bb.ac

.critedge283.sink.split:                          ; preds = %bb.ac, %bb.ab, %.lr.ph334, %bb.aa, %bb.z
  %i.gd = tail call ptr @lappend(ptr noundef %.0181338408, ptr noundef nonnull %i.ff) #12
  br label %.critedge283

.critedge283:                                     ; preds = %.lr.ph337, %.critedge283.sink.split, %bb.aa
  %.3184 = phi ptr [ %i.gd, %.critedge283.sink.split ], [ %.0181338408, %bb.aa ], [ %.0181338408, %.lr.ph337 ] ; 2 uses
  %indvars.iv.next370 = add nuw nsw i64 %indvars.iv369407, 1 ; 2 uses
  %i.ge = load i32, ptr %i.ez, align 4
  %i.gf = sext i32 %i.ge to i64
  %i.gg = icmp slt i64 %indvars.iv.next370, %i.gf
  br i1 %i.gg, label %.lr.ph409, label %.critedge263

.critedge.thread:                                 ; preds = %.preheader284, %bb.p, %.critedge, %bb.d, %.critedge263
  %.0164 = phi i1 [ false, %bb.d ], [ true, %.critedge263 ], [ false, %.critedge ], [ false, %bb.p ], [ false, %.preheader284 ]
  ret i1 %.0164
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local ptr @estimate_multivariate_bucketsize(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readnone captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %list_length.exit.thread, label %list_length.exit

list_length.exit:                                 ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp slt i32 %i.e, 2
  br i1 %i.f, label %list_length.exit.thread, label %bb.b

bb.b:                                             ; preds = %list_length.exit
  %i.g = tail call ptr @list_copy(ptr noundef nonnull %2) #12 ; 2 uses
  %.not193 = icmp eq ptr %i.g, null
  br i1 %.not193, label %._crit_edge, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph197, %.thread170
  %.0102196 = phi double [ 1.000000e+00, %.lr.ph197 ], [ %.4106, %.thread170 ] ; 3 uses
  %.0107195 = phi ptr [ null, %.lr.ph197 ], [ %.9, %.thread170 ]
  %.0113194 = phi ptr [ %i.g, %.lr.ph197 ], [ %.1114.lcssa, %.thread170 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  store i32 -1, ptr %i.a, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.thread159
end_hunk_0
