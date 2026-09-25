Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/tclsqlite-ex?download=true
inline.NumInlined: 131
inline.NumDeleted: 33
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfExplain:bb.a
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.ar, align 4, !tbaa !30
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.as, align 4, !tbaa !30
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.70) #21
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.71) #21
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.72) #21
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.73) #21
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(11) @.str.74) #21
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.75) #21
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %qrfStringInArray.exit172, label %.lr.ph.i175

qrfStringInArray.exit172:                         ; preds = %.lr.ph.i167.5, %.lr.ph.i167.4, %.lr.ph.i167.3, %.lr.ph.i167.2, %.lr.ph.i167.1, %.preheader.i165
  %i.bf = icmp sgt i32 %i.x, 0
  %i.bg = sext i32 %i.x to i64
  %i.bh = icmp sgt i64 %indvars.iv240, %i.bg
  %or.cond229 = select i1 %i.bf, i1 %i.bh, i1 false
  br i1 %or.cond229, label %.lr.ph.preheader, label %.lr.ph.i175

.lr.ph.preheader:                                 ; preds = %qrfStringInArray.exit172
  %i.bi = add i32 %i.v, %i.n
  %i.bj = sub i32 %i.bi, %i.p
  %i.bk = zext i32 %i.bj to i64                   ; 4 uses
  %i.bl = add i32 %i.v, %i.f
  %i.bm = sub i32 %i.bl, %i.p
  %i.bn = sext i32 %i.bm to i64
  %i.bo = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bn)
  %i.bp = add i32 %i.v, %i.f
  %i.bq = sub i32 %i.bp, %i.p
  %i.br = sext i32 %i.bq to i64
  %i.bs = add i64 %i.bo, 1
  %i.bt = sub i64 %i.bs, %i.br                    ; 3 uses
  %min.iters.check287 = icmp ult i64 %i.bt, 16
  br i1 %min.iters.check287, label %.lr.ph.preheader301, label %vector.scevcheck285

vector.scevcheck285:                              ; preds = %.lr.ph.preheader
  %i.bu = add i32 %i.v, %i.h
  %i.bv = sub i32 %i.bu, %i.p                     ; 3 uses
  %i.bw = sext i32 %i.bv to i64                   ; 2 uses
  %smax = tail call i64 @llvm.smax.i64(i64 %indvars.iv240, i64 %i.bw)
  %i.bx = sub i64 %smax, %i.bw                    ; 2 uses
  %i.by = trunc i64 %i.bx to i32
  %i.bz = add i32 %i.bv, %i.by
  %i.ca = icmp slt i32 %i.bz, %i.bv
  %i.cb = icmp ugt i64 %i.bx, 4294967295
  %i.cc = or i1 %i.ca, %i.cb
  br i1 %i.cc, label %.lr.ph.preheader301, label %vector.ph288

vector.ph288:                                     ; preds = %vector.scevcheck285
  %n.vec289 = and i64 %i.bt, -8                   ; 3 uses
  %i.cd = add i64 %n.vec289, %i.bk
  %invariant.gep = getelementptr [4 x i8], ptr %.1146, i64 %i.bk
  br label %vector.body290

vector.body290:                                   ; preds = %vector.body290, %vector.ph288
  %index291 = phi i64 [ 0, %vector.ph288 ], [ %index.next294, %vector.body290 ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index291 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load292.a = load <4 x i32>, ptr %gep, align 4, !tbaa !30
  %wide.load293 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !30
  %i.cf = add nsw <4 x i32> %wide.load292.a, splat (i32 2)
  %i.cg = add nsw <4 x i32> %wide.load293, splat (i32 2)
  store <4 x i32> %i.cf, ptr %gep, align 4, !tbaa !30
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !30
  %index.next294 = add nuw i64 %index291, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.ch, label %middle.block295, label %vector.body290, !llvm.loop !283

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %i.bt, %n.vec289
  br i1 %cmp.n296, label %.lr.ph.i175, label %.lr.ph.preheader301

.lr.ph.preheader301:                              ; preds = %vector.scevcheck285, %.lr.ph.preheader, %middle.block295
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.scevcheck285 ], [ %i.bk, %.lr.ph.preheader ], [ %i.cd, %middle.block295 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader301, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader301 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !30
  %i.ck = add nsw i32 %i.cj, 2
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !30
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %indvars.iv.next, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = icmp slt i64 %i.cl, %indvars.iv240
  br i1 %i.cm, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !284

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block295, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cn = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.81) #21
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cp = sext i32 %i.x to i64                    ; 2 uses
  %i.cq = icmp sgt i64 %indvars.iv240, %i.cp
  br i1 %i.cq, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cr = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !30
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = icmp ne i32 %i.t, 0
  %or.cond5 = select i1 %i.ct, i1 true, i1 %i.cu
  br i1 %or.cond5, label %.lr.ph207.preheader, label %qrfStringInArray.exit180.thread

.lr.ph207.preheader:                              ; preds = %bb.f
  %i.cv = add i32 %i.v, %i.n
  %i.cw = sub i32 %i.cv, %i.p
  %i.cx = sext i32 %i.cw to i64                   ; 4 uses
  %i.cy = add i32 %i.v, %i.j
  %i.cz = sub i32 %i.cy, %i.p
  %i.da = zext i32 %i.cz to i64
  %i.db = sub i64 %i.i, %i.da                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.db, 12
  br i1 %min.iters.check, label %.lr.ph207.preheader300, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph207.preheader
  %i.dc = add i32 %i.v, %i.l
  %i.dd = sub i32 %i.dc, %i.p                     ; 2 uses
  %i.de = zext i32 %i.dd to i64
  %i.df = sub i64 %indvars.iv240, %i.de           ; 2 uses
  %i.dg = trunc i64 %i.df to i32
  %i.dh = xor i32 %i.dd, -1
  %i.di = icmp ult i32 %i.dh, %i.dg
  %i.dj = icmp ugt i64 %i.df, 4294967295
  %i.dk = or i1 %i.di, %i.dj
  br i1 %i.dk, label %.lr.ph207.preheader300, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.db, -8                      ; 3 uses
  %i.dl = add i64 %n.vec, %i.cx
  %invariant.gep308 = getelementptr [4 x i8], ptr %.1146, i64 %i.cx
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep309 = getelementptr [4 x i8], ptr %invariant.gep308, i64 %index ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %gep309, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep309, align 4, !tbaa !30
  %wide.load284 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !30
  %i.dn = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.do = add nsw <4 x i32> %wide.load284, splat (i32 2)
  store <4 x i32> %i.dn, ptr %gep309, align 4, !tbaa !30
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !30
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !285

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader300

.lr.ph207.preheader300:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cx, %vector.scevcheck ], [ %i.cx, %.lr.ph207.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader300, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader300 ] ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !30
  %i.ds = add nsw i32 %i.dr, 2
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !30
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dt = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dt, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !286

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !46
  %i.dv = tail call i32 @sqlite3_step(ptr noundef %i.du) #20
  %i.dw = icmp eq i32 %i.dv, 100
  br i1 %i.dw, label %bb.b, label %.critedge.loopexit, !llvm.loop !287

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %1 = and i64 %.0140.lcssa.ph, 4294967295
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %1, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #20
  %i.dx = load ptr, ptr %0, align 8, !tbaa !46
  %i.dy = tail call i32 @sqlite3_reset(ptr noundef %i.dx) #20 ; 0 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !48
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !49 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !53
  %i.eg = icmp eq i8 %i.ef, 18
  br i1 %i.eg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !46
  %i.ei = tail call i32 @sqlite3_step(ptr noundef %i.eh) #20
  %i.ej = icmp eq i32 %i.ei, 100
  br i1 %i.ej, label %.lr.ph227, label %.critedge7

.lr.ph227:                                        ; preds = %bb.i
  %spec.select = tail call i32 @llvm.smin.i32(i32 %i.ed, i32 %.0132) ; 4 uses
  %i.ek = icmp sgt i32 %i.ed, 0                   ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.em = add nsw i32 %spec.select, -1
  %i.en = icmp ne ptr %.0145.lcssa, null
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.ep = zext i32 %i.em to i64                   ; 3 uses
  %wide.trip.count = zext nneg i32 %spec.select to i64
  %wide.trip.count252 = zext nneg i32 %spec.select to i64
  %wide.trip.count258 = zext nneg i32 %spec.select to i64
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph227, %._crit_edge
  %indvars.iv260 = phi i64 [ 0, %.lr.ph227 ], [ %indvars.iv.next261, %._crit_edge ] ; 4 uses
  %i.eq = load i32, ptr %i.dz, align 8, !tbaa !48
  %.not157 = icmp eq i32 %i.eq, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.er = icmp eq i64 %indvars.iv260, 0
  br i1 %i.er, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ek, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !46
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !30
  %i.ev = tail call ptr @sqlite3_column_name(ptr noundef %i.es, i32 noundef %i.eu) #20
  %i.ew = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !30
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.ew, i32 noundef %i.ey, ptr noundef %i.ev)
  %i.ez = icmp eq i64 %indvars.iv243, %i.ep
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !47 ; 2 uses
  br i1 %i.ez, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !288

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !47
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !30
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.fb, ptr noundef nonnull @.str.83, i32 noundef %i.fd, i32 noundef 45) #20
  %i.fe = icmp eq i64 %indvars.iv248, %i.ep
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !47 ; 2 uses
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ff, ptr noundef nonnull @.str.8, i32 noundef 1) #20
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ff, ptr noundef nonnull @.str.82, i32 noundef 2) #20
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !289

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ek, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %2 = icmp samesign ult i64 %indvars.iv260, %.0140.lcssa
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !30
  %i.fj = load ptr, ptr %0, align 8, !tbaa !46
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !30
  %i.fm = tail call ptr @sqlite3_column_text(ptr noundef %i.fj, i32 noundef %i.fl) #20 ; 2 uses
  %i.fn = icmp eq i64 %indvars.iv254, %i.ep       ; 2 uses
  %spec.select163 = select i1 %i.fn, i32 0, i32 %i.fi ; 2 uses
  %i.fo = icmp eq ptr %i.fm, null
  %spec.store.select = select i1 %i.fo, ptr @.str.6, ptr %i.fm ; 3 uses
  %i.fp = load i8, ptr %spec.store.select, align 1, !tbaa !29 ; 2 uses
  %.not27.i = icmp eq i8 %i.fp, 0
  br i1 %.not27.i, label %sqlite3_qrf_wcswidth.exit, label %.lr.ph.i181

.lr.ph.i181:                                      ; preds = %bb.r, %bb.ap
  %i.fq = phi i8 [ %i.jp, %bb.ap ], [ %i.fp, %bb.r ] ; 4 uses
  %.029.i = phi ptr [ %.2.i, %bb.ap ], [ %spec.store.select, %bb.r ] ; 14 uses
  %.01528.i = phi i32 [ %.116.i, %bb.ap ], [ 0, %bb.r ] ; 4 uses
  %i.fr = icmp ult i8 %i.fq, 32
  br i1 %i.fr, label %bb.s, label %bb.v

bb.s:                                             ; preds = %.lr.ph.i181
  %i.fs = icmp eq i8 %i.fq, 27
  br i1 %i.fs, label %bb.t, label %qrfIsVt100.exit.thread.i

bb.t:                                             ; preds = %bb.s
  %i.ft = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !29
  %.not.i.i = icmp eq i8 %i.fu, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !29
  %i.fx = and i8 %i.fw, -16
  %or.cond.i.i = icmp eq i8 %i.fx, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !29  ; 2 uses
  %i.ga = and i8 %i.fz, -16
  %or.cond22.i.i = icmp eq i8 %i.ga, 32
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv25.i.i, 1 ; 2 uses
  br i1 %or.cond22.i.i, label %.critedge.i.i, label %.critedge2.i.i, !llvm.loop !2

.critedge2.i.i:                                   ; preds = %.critedge.i.i
  %i.gb = add i8 %i.fz, -64
  %or.cond23.i.i = icmp ult i8 %i.gb, 63
  br i1 %or.cond23.i.i, label %bb.u, label %qrfIsVt100.exit.thread.i

bb.u:                                             ; preds = %.critedge2.i.i
  %i.gc = and i64 %indvars.iv.next26.i.i, 4294967295
  %i.gd = getelementptr inbounds nuw i8, ptr %.029.i, i64 %i.gc
  br label %bb.ap

qrfIsVt100.exit.thread.i:                         ; preds = %.critedge2.i.i, %bb.t, %bb.s
  %i.ge = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %bb.ap

bb.v:                                             ; preds = %.lr.ph.i181
  %i.gf = icmp sgt i8 %i.fq, -1
  br i1 %i.gf, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gg = add i32 %.01528.i, 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %bb.ap

bb.x:                                             ; preds = %bb.v
  %i.gi = zext i8 %i.fq to i32                    ; 6 uses
  %i.gj = and i32 %i.gi, 224
  %i.gk = icmp eq i32 %i.gj, 192
  br i1 %i.gk, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.gl = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !29
  %i.gn = zext i8 %i.gm to i32                    ; 2 uses
  %i.go = and i32 %i.gn, 192
  %i.gp = icmp eq i32 %i.go, 128
  br i1 %i.gp, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.gq = shl nuw nsw i32 %i.gi, 6
  %i.gr = and i32 %i.gq, 1984
  %i.gs = and i32 %i.gn, 63
  %i.gt = or disjoint i32 %i.gs, %i.gr
  br label %sqlite3_qrf_decode_utf8.exit.i

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.gu = and i32 %i.gi, 240
  %i.gv = icmp eq i32 %i.gu, 224
  br i1 %i.gv, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.gw = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !29
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = and i32 %i.gy, 192
  %i.ha = icmp eq i32 %i.gz, 128
  br i1 %i.ha, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hb = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !29
  %i.hd = zext i8 %i.hc to i32                    ; 2 uses
  %i.he = and i32 %i.hd, 192
  %i.hf = icmp eq i32 %i.he, 128
  br i1 %i.hf, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.hg = shl nuw nsw i32 %i.gi, 12
  %i.hh = and i32 %i.hg, 61440
  %i.hi = shl nuw nsw i32 %i.gy, 6
  %i.hj = and i32 %i.hi, 4032
  %i.hk = or disjoint i32 %i.hj, %i.hh
  %i.hl = and i32 %i.hd, 63
  %i.hm = or disjoint i32 %i.hk, %i.hl
  br label %sqlite3_qrf_decode_utf8.exit.i

bb.ae:                                            ; preds = %bb.ac, %bb.ab, %bb.aa
  %i.hn = and i32 %i.gi, 248
  %i.ho = icmp eq i32 %i.hn, 240
  br i1 %i.ho, label %bb.af, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.af:                                            ; preds = %bb.ae
  %i.hp = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !29
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %i.hs = and i32 %i.hr, 192
  %i.ht = icmp eq i32 %i.hs, 128
  br i1 %i.ht, label %bb.ag, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !29
  %i.hw = zext i8 %i.hv to i32                    ; 2 uses
  %i.hx = and i32 %i.hw, 192
  %i.hy = icmp eq i32 %i.hx, 128
  br i1 %i.hy, label %bb.ah, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.hz = getelementptr inbounds nuw i8, ptr %.029.i, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !29
  %i.ib = zext i8 %i.ia to i32                    ; 2 uses
  %i.ic = and i32 %i.ib, 192
  %i.id = icmp eq i32 %i.ic, 128
  br i1 %i.id, label %bb.ai, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ai:                                            ; preds = %bb.ah
  %i.ie = shl nuw nsw i32 %i.gi, 18
  %i.if = and i32 %i.ie, 1835008
  %i.ig = shl nuw nsw i32 %i.hr, 12
  %i.ih = and i32 %i.ig, 258048
  %i.ii = or disjoint i32 %i.ih, %i.if
  %i.ij = shl nuw nsw i32 %i.hw, 6
  %i.ik = and i32 %i.ij, 4032
  %i.il = or disjoint i32 %i.ii, %i.ik
  %i.im = and i32 %i.ib, 63
  %i.in = or disjoint i32 %i.il, %i.im
  br label %sqlite3_qrf_decode_utf8.exit.i

sqlite3_qrf_decode_utf8.exit.thread.i:            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.io = getelementptr inbounds nuw i8, ptr %.029.i, i64 1
  br label %sqlite3_qrf_wcwidth.exit.i

sqlite3_qrf_decode_utf8.exit.i:                   ; preds = %bb.ai, %bb.ad, %bb.z
  %.sink.i.i = phi i32 [ %i.gt, %bb.z ], [ %i.in, %bb.ai ], [ %i.hm, %bb.ad ] ; 4 uses
  %.0.i.i = phi i64 [ 2, %bb.z ], [ 4, %bb.ai ], [ 3, %bb.ad ]
  %i.ip = getelementptr inbounds nuw i8, ptr %.029.i, i64 %.0.i.i ; 4 uses
  %i.iq = icmp samesign ult i32 %.sink.i.i, 768
  br i1 %i.iq, label %sqlite3_qrf_wcwidth.exit.i, label %.preheader.i21.i

.preheader.i21.i:                                 ; preds = %sqlite3_qrf_decode_utf8.exit.i, %bb.al
  %.01935.i.i = phi i32 [ %.2.i.i, %bb.al ], [ 302, %sqlite3_qrf_decode_utf8.exit.i ] ; 2 uses
  %.02034.i.i = phi i32 [ %.222.i.i, %bb.al ], [ 0, %sqlite3_qrf_decode_utf8.exit.i ] ; 2 uses
  %i.ir = add nsw i32 %.02034.i.i, %.01935.i.i
  %i.is = sdiv i32 %i.ir, 2                       ; 3 uses
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds [8 x i8], ptr @aQrfUWidth, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 4
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !26 ; 2 uses
  %i.ix = icmp slt i32 %i.iw, %.sink.i.i
  br i1 %i.ix, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i21.i
  %i.iy = icmp sgt i32 %i.iw, %.sink.i.i
  br i1 %i.iy, label %bb.ak, label %.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.iz = add nsw i32 %i.is, -1
end_hunk_0
