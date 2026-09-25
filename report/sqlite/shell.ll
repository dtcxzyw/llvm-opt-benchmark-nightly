Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/shell?download=true
inline.NumInlined: 1512
inline.NumDeleted: 270
loop-unroll.NumCompletelyUnrolled: 74
loop-unroll.NumRuntimeUnrolled: 39
loop-unroll.NumUnrolled: 119
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@qrfExplain:bb.a
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %.1149, i64 %indvars.iv240
  store i32 %.07.i.ph, ptr %i.ar, align 4, !tbaa !53
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv240
  store i32 0, ptr %i.as, align 4, !tbaa !53
  %i.at = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.218) #46
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %qrfStringInArray.exit172, label %.lr.ph.i167.1

.lr.ph.i167.1:                                    ; preds = %.preheader.i165
  %i.av = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.219) #46
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %qrfStringInArray.exit172, label %.lr.ph.i167.2

.lr.ph.i167.2:                                    ; preds = %.lr.ph.i167.1
  %i.ax = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.220) #46
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %qrfStringInArray.exit172, label %.lr.ph.i167.3

.lr.ph.i167.3:                                    ; preds = %.lr.ph.i167.2
  %i.az = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(6) @.str.221) #46
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %qrfStringInArray.exit172, label %.lr.ph.i167.4

.lr.ph.i167.4:                                    ; preds = %.lr.ph.i167.3
  %i.bb = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(11) @.str.222) #46
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %qrfStringInArray.exit172, label %.lr.ph.i167.5

.lr.ph.i167.5:                                    ; preds = %.lr.ph.i167.4
  %i.bd = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(7) @.str.223) #46
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
  %wide.load292.a = load <4 x i32>, ptr %gep, align 4, !tbaa !53
  %wide.load293 = load <4 x i32>, ptr %i.ce, align 4, !tbaa !53
  %i.cf = add nsw <4 x i32> %wide.load292.a, splat (i32 2)
  %i.cg = add nsw <4 x i32> %wide.load293, splat (i32 2)
  store <4 x i32> %i.cf, ptr %gep, align 4, !tbaa !53
  store <4 x i32> %i.cg, ptr %i.ce, align 4, !tbaa !53
  %index.next294 = add nuw i64 %index291, 8       ; 2 uses
  %i.ch = icmp eq i64 %index.next294, %n.vec289
  br i1 %i.ch, label %middle.block295, label %vector.body290, !llvm.loop !738

middle.block295:                                  ; preds = %vector.body290
  %cmp.n296 = icmp eq i64 %i.bt, %n.vec289
  br i1 %cmp.n296, label %.lr.ph.i175, label %.lr.ph.preheader301

.lr.ph.preheader301:                              ; preds = %vector.scevcheck285, %.lr.ph.preheader, %middle.block295
  %indvars.iv.ph = phi i64 [ %i.bk, %vector.scevcheck285 ], [ %i.bk, %.lr.ph.preheader ], [ %i.cd, %middle.block295 ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader301, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader301 ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %.1146, i64 %indvars.iv ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !53
  %i.ck = add nsw i32 %i.cj, 2
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !53
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %sext = shl i64 %indvars.iv.next, 32
  %i.cl = ashr exact i64 %sext, 32
  %i.cm = icmp slt i64 %i.cl, %indvars.iv240
  br i1 %i.cm, label %.lr.ph, label %.lr.ph.i175, !llvm.loop !739

.lr.ph.i175:                                      ; preds = %.lr.ph, %middle.block295, %.lr.ph.i167.5, %qrfStringInArray.exit172
  %i.cn = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %i.r, ptr noundef nonnull dereferenceable(5) @.str.229) #46
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %qrfStringInArray.exit180, label %qrfStringInArray.exit180.thread

qrfStringInArray.exit180:                         ; preds = %.lr.ph.i175
  %i.cp = sext i32 %i.x to i64                    ; 2 uses
  %i.cq = icmp sgt i64 %indvars.iv240, %i.cp
  br i1 %i.cq, label %bb.f, label %qrfStringInArray.exit180.thread

bb.f:                                             ; preds = %qrfStringInArray.exit180
  %i.cr = getelementptr inbounds [4 x i8], ptr %.1149, i64 %i.cp
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !53
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
  %wide.load = load <4 x i32>, ptr %gep309, align 4, !tbaa !53
  %wide.load284 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !53
  %i.dn = add nsw <4 x i32> %wide.load, splat (i32 2)
  %i.do = add nsw <4 x i32> %wide.load284, splat (i32 2)
  store <4 x i32> %i.dn, ptr %gep309, align 4, !tbaa !53
  store <4 x i32> %i.do, ptr %i.dm, align 4, !tbaa !53
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dp = icmp eq i64 %index.next, %n.vec
  br i1 %i.dp, label %middle.block, label %vector.body, !llvm.loop !740

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %qrfStringInArray.exit180.thread, label %.lr.ph207.preheader300

.lr.ph207.preheader300:                           ; preds = %vector.scevcheck, %.lr.ph207.preheader, %middle.block
  %indvars.iv237.ph = phi i64 [ %i.cx, %vector.scevcheck ], [ %i.cx, %.lr.ph207.preheader ], [ %i.dl, %middle.block ]
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.preheader300, %.lr.ph207
  %indvars.iv237 = phi i64 [ %indvars.iv.next238, %.lr.ph207 ], [ %indvars.iv237.ph, %.lr.ph207.preheader300 ] ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %.1146, i64 %indvars.iv237 ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !53
  %i.ds = add nsw i32 %i.dr, 2
  store i32 %i.ds, ptr %i.dq, align 4, !tbaa !53
  %indvars.iv.next238 = add nsw i64 %indvars.iv237, 1 ; 2 uses
  %i.dt = and i64 %indvars.iv.next238, 4294967295
  %exitcond.not = icmp eq i64 %i.dt, %indvars.iv240
  br i1 %exitcond.not, label %qrfStringInArray.exit180.thread, label %.lr.ph207, !llvm.loop !741

qrfStringInArray.exit180.thread:                  ; preds = %.lr.ph207, %middle.block, %.lr.ph.i175, %qrfStringInArray.exit172.thread.thread191, %bb.f, %qrfStringInArray.exit180
  %indvars.iv.next241 = add nuw i64 %indvars.iv240, 1 ; 2 uses
  %i.du = load ptr, ptr %0, align 8, !tbaa !68
  %i.dv = tail call i32 @sqlite3_step(ptr noundef %i.du) #45
  %i.dw = icmp eq i32 %i.dv, 100
  br i1 %i.dw, label %bb.b, label %.critedge.loopexit, !llvm.loop !742

.critedge.loopexit:                               ; preds = %qrfStringInArray.exit180.thread, %bb.b
  %.0148.lcssa.ph = phi ptr [ %.0148208, %bb.b ], [ %.1149, %qrfStringInArray.exit180.thread ]
  %.0145.lcssa.ph = phi ptr [ %.0145209, %bb.b ], [ %.1146, %qrfStringInArray.exit180.thread ]
  %.0140.lcssa.ph = phi i64 [ %indvars.iv240, %bb.b ], [ %indvars.iv.next241, %qrfStringInArray.exit180.thread ]
  %sext274 = shl i64 %.0140.lcssa.ph, 32
  %1 = ashr exact i64 %sext274, 32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0148.lcssa = phi ptr [ null, %bb.a ], [ %.0148.lcssa.ph, %.critedge.loopexit ]
  %.0145.lcssa = phi ptr [ null, %bb.a ], [ %.0145.lcssa.ph, %.critedge.loopexit ] ; 7 uses
  %.0140.lcssa = phi i64 [ 0, %bb.a ], [ %1, %.critedge.loopexit ]
  tail call void @sqlite3_free(ptr noundef %.0148.lcssa) #45
  %i.dx = load ptr, ptr %0, align 8, !tbaa !68
  %i.dy = tail call i32 @sqlite3_reset(ptr noundef %i.dx) #45 ; 0 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 8, !tbaa !70
  %i.eb = icmp eq i32 %i.ea, 0
  br i1 %i.eb, label %bb.g, label %qrfWrite.exit

bb.g:                                             ; preds = %.critedge
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !71 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 97
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !75
  %i.eg = icmp eq i8 %i.ef, 18
  br i1 %i.eg, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0134 = phi ptr [ @qrfExplain.aScanExpWidth, %bb.h ], [ @qrfExplain.aExplainWidth, %bb.g ] ; 3 uses
  %.0133 = phi ptr [ @qrfExplain.aScanExpMap, %bb.h ], [ @qrfExplain.aExplainMap, %bb.g ] ; 2 uses
  %.0132 = phi i32 [ 10, %bb.h ], [ 8, %bb.g ]
  %.0131 = phi i64 [ 3, %bb.h ], [ 1, %bb.g ]
  %i.eh = load ptr, ptr %0, align 8, !tbaa !68
  %i.ei = tail call i32 @sqlite3_step(ptr noundef %i.eh) #45
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
  %i.eq = load i32, ptr %i.dz, align 8, !tbaa !70
  %.not157 = icmp eq i32 %i.eq, 0
  br i1 %.not157, label %bb.k, label %.critedge7

bb.k:                                             ; preds = %bb.j
  %i.er = icmp eq i64 %indvars.iv260, 0
  br i1 %i.er, label %.preheader192, label %.loopexit

.preheader192:                                    ; preds = %bb.k
  br i1 %i.ek, label %.lr.ph220, label %._crit_edge

.lr.ph220:                                        ; preds = %.preheader192, %bb.n
  %indvars.iv243 = phi i64 [ %indvars.iv.next244, %bb.n ], [ 0, %.preheader192 ] ; 4 uses
  %i.es = load ptr, ptr %0, align 8, !tbaa !68
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv243
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !53
  %i.ev = tail call ptr @sqlite3_column_name(ptr noundef %i.es, i32 noundef %i.eu) #45
  %i.ew = load ptr, ptr %i.el, align 8, !tbaa !69
  %i.ex = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv243
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !53
  tail call fastcc void @qrfWidthPrint(ptr noundef %i.ew, i32 noundef %i.ey, ptr noundef %i.ev)
  %i.ez = icmp eq i64 %indvars.iv243, %i.ep
  %i.fa = load ptr, ptr %i.el, align 8, !tbaa !69 ; 2 uses
  br i1 %i.ez, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph220
  tail call void @sqlite3_str_append(ptr noundef %i.fa, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %indvars.iv.next244 = add nuw nsw i64 %indvars.iv243, 1 ; 2 uses
  %exitcond247.not = icmp eq i64 %indvars.iv.next244, %wide.trip.count
  br i1 %exitcond247.not, label %.lr.ph222, label %.lr.ph220, !llvm.loop !743

.lr.ph222:                                        ; preds = %bb.n, %bb.q
  %indvars.iv248 = phi i64 [ %indvars.iv.next249, %bb.q ], [ 0, %bb.n ] ; 3 uses
  %i.fb = load ptr, ptr %i.el, align 8, !tbaa !69
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv248
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !53
  tail call void (ptr, ptr, ...) @sqlite3_str_appendf(ptr noundef %i.fb, ptr noundef nonnull @.str.231, i32 noundef %i.fd, i32 noundef 45) #45
  %i.fe = icmp eq i64 %indvars.iv248, %i.ep
  %i.ff = load ptr, ptr %i.el, align 8, !tbaa !69 ; 2 uses
  br i1 %i.fe, label %bb.o, label %bb.p

bb.o:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ff, ptr noundef nonnull @.str.125, i32 noundef 1) #45
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph222
  tail call void @sqlite3_str_append(ptr noundef %i.ff, ptr noundef nonnull @.str.230, i32 noundef 2) #45
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %bb.p
  %indvars.iv.next249 = add nuw nsw i64 %indvars.iv248, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next249, %wide.trip.count252
  br i1 %exitcond253.not, label %.loopexit, label %.lr.ph222, !llvm.loop !744

.loopexit:                                        ; preds = %bb.q, %bb.k
  br i1 %i.ek, label %.lr.ph224, label %._crit_edge

.lr.ph224:                                        ; preds = %.loopexit
  %2 = icmp slt i64 %indvars.iv260, %.0140.lcssa
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.0145.lcssa, i64 %indvars.iv260
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph224, %bb.au
  %indvars.iv254 = phi i64 [ 0, %.lr.ph224 ], [ %indvars.iv.next255, %bb.au ] ; 5 uses
  %i.fh = getelementptr inbounds nuw [4 x i8], ptr %.0134, i64 %indvars.iv254
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !53
  %i.fj = load ptr, ptr %0, align 8, !tbaa !68
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %.0133, i64 %indvars.iv254
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !53
  %i.fm = tail call ptr @sqlite3_column_text(ptr noundef %i.fj, i32 noundef %i.fl) #45 ; 2 uses
  %i.fn = icmp eq i64 %indvars.iv254, %i.ep       ; 2 uses
  %spec.select163 = select i1 %i.fn, i32 0, i32 %i.fi ; 2 uses
  %i.fo = icmp eq ptr %i.fm, null
  %spec.store.select = select i1 %i.fo, ptr @.str.48, ptr %i.fm ; 3 uses
  %i.fp = load i8, ptr %spec.store.select, align 1, !tbaa !52 ; 2 uses
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
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !52
  %.not.i.i = icmp eq i8 %i.fu, 91
  br i1 %.not.i.i, label %.preheader.i.i, label %qrfIsVt100.exit.thread.i

.preheader.i.i:                                   ; preds = %bb.t, %.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.preheader.i.i ], [ 2, %bb.t ] ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv.i.i
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !52
  %i.fx = and i8 %i.fw, -16
  %or.cond.i.i = icmp eq i8 %i.fx, 48
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  br i1 %or.cond.i.i, label %.preheader.i.i, label %.critedge.i.i, !llvm.loop !1

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.critedge.i.i
  %indvars.iv25.i.i = phi i64 [ %indvars.iv.next26.i.i, %.critedge.i.i ], [ %indvars.iv.i.i, %.preheader.i.i ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.029.i, i64 %indvars.iv25.i.i
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !52  ; 2 uses
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
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !52
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
  %i.gx = load i8, ptr %i.gw, align 1, !tbaa !52
  %i.gy = zext i8 %i.gx to i32                    ; 2 uses
  %i.gz = and i32 %i.gy, 192
  %i.ha = icmp eq i32 %i.gz, 128
  br i1 %i.ha, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.hb = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !52
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
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !52
  %i.hr = zext i8 %i.hq to i32                    ; 2 uses
  %i.hs = and i32 %i.hr, 192
  %i.ht = icmp eq i32 %i.hs, 128
  br i1 %i.ht, label %bb.ag, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ag:                                            ; preds = %bb.af
  %i.hu = getelementptr inbounds nuw i8, ptr %.029.i, i64 2
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !52
  %i.hw = zext i8 %i.hv to i32                    ; 2 uses
  %i.hx = and i32 %i.hw, 192
  %i.hy = icmp eq i32 %i.hx, 128
  br i1 %i.hy, label %bb.ah, label %sqlite3_qrf_decode_utf8.exit.thread.i

bb.ah:                                            ; preds = %bb.ag
  %i.hz = getelementptr inbounds nuw i8, ptr %.029.i, i64 3
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !52
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
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !49 ; 2 uses
  %i.ix = icmp slt i32 %i.iw, %.sink.i.i
  br i1 %i.ix, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %.preheader.i21.i
  %i.iy = icmp sgt i32 %i.iw, %.sink.i.i
  br i1 %i.iy, label %bb.ak, label %.thread.i.i

bb.ak:                                            ; preds = %bb.aj
  %i.iz = add nsw i32 %i.is, -1
end_hunk_0
begin_hunk_1_@intckCheckObjectSql:bb.a
  %i.cd = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.cc) #45
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !236
  br label %intckFinalize.exit

intckFinalize.exit:                               ; preds = %.critedge, %bb.q
  br i1 %.0.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %intckFinalize.exit
  call fastcc void @intckExec(ptr noundef nonnull %0, ptr noundef nonnull @.str.452)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %intckFinalize.exit
  ret ptr %.030.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @intckPrepare(ptr nofree noundef captures(none) %0, ptr noundef %1) unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !230
  %i.f = call i32 @sqlite3_prepare_v2(ptr noundef %i.e, ptr noundef %1, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 2 uses
  store i32 %i.f, ptr %i.b, align 4, !tbaa !240
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !230
  %i.h = call i32 @sqlite3_errcode(ptr noundef %i.g) #45
  store i32 %i.h, ptr %i.b, align 4, !tbaa !240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.j) #45
  %i.k = load ptr, ptr %0, align 8, !tbaa !230
  %i.l = call ptr @sqlite3_errmsg(ptr noundef %i.k) #45
  %i.m = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.l) #45
  store ptr %i.m, ptr %i.i, align 8, !tbaa !236
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  ret ptr %i.n
}

; Function Attrs: nounwind uwtable
define internal ptr @intckMprintf(ptr nofree noundef captures(none) %0, ptr noundef %1, ...) unnamed_addr #4 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #45
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.a = call ptr @sqlite3_vmprintf(ptr noundef %1, ptr noundef nonnull %2) #45 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %i.a, null
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  store i32 7, ptr %i.b, align 4, !tbaa !240
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @sqlite3_free(ptr noundef %i.a) #45
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %.0 = phi ptr [ null, %bb.c ], [ %i.a, %bb.b ], [ null, %bb.d ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #45
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_intck_message(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !237  ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !232  ; 2 uses
  %.not7 = icmp eq ptr %i.d, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @sqlite3_column_text(ptr noundef nonnull %i.d, i32 noundef 0) #45
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.b, %bb.a ], [ %i.e, %bb.c ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 102, 101) i32 @sqlite3_intck_error(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !236
  store ptr %i.b, ptr %1, align 8, !tbaa !88
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !240  ; 2 uses
  %i.e = icmp eq i32 %i.d, 101
  %spec.select = select i1 %i.e, i32 0, i32 %i.d
  ret i32 %spec.select
}

; Function Attrs: nounwind uwtable
define i32 @sqlite3_intck_unlock(ptr nofree noundef captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 13 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !240  ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !232
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !231  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !233  ; 2 uses
  %i.k = tail call ptr (ptr, ptr, ...) @intckPrepareFmt(ptr noundef nonnull %0, ptr noundef nonnull @.str.455, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.h, ptr noundef %i.j) ; 3 uses
  %i.l = load i32, ptr %i.b, align 4, !tbaa !240
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.d, label %.preheader93.i

bb.d:                                             ; preds = %bb.c
  %i.n = tail call i32 @sqlite3_step(ptr noundef %i.k) #45
  %i.o = icmp eq i32 %i.n, 100
  br i1 %i.o, label %bb.e, label %.preheader93.i

bb.e:                                             ; preds = %bb.d
  %i.p = tail call ptr @sqlite3_column_text(ptr noundef %i.k, i32 noundef 0) #45 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.preheader93.i, label %bb.f

.preheader93.i:                                   ; preds = %bb.e, %bb.d, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !241
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph110.preheader.i, label %._crit_edge111.i

.lr.ph110.preheader.i:                            ; preds = %.preheader93.i
  %i.u = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.457, ptr noundef null, ptr noundef nonnull @.str.456) ; 2 uses
  %i.v = load i32, ptr %i.r, align 8, !tbaa !241
  %i.w = icmp sgt i32 %i.v, 1
  br i1 %i.w, label %.lr.ph110.i, label %._crit_edge111.i

.lr.ph110.i:                                      ; preds = %.lr.ph110.preheader.i, %.lr.ph110.i
  %.0109.i = phi i32 [ %i.y, %.lr.ph110.i ], [ 1, %.lr.ph110.preheader.i ]
  %.082108.i = phi ptr [ %i.x, %.lr.ph110.i ], [ %i.u, %.lr.ph110.preheader.i ]
  %i.x = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.457, ptr noundef %.082108.i, ptr noundef nonnull @.str.458) ; 2 uses
  %i.y = add nuw nsw i32 %.0109.i, 1              ; 2 uses
  %i.z = load i32, ptr %i.r, align 8, !tbaa !241
  %i.aa = icmp slt i32 %i.y, %i.z
  br i1 %i.aa, label %.lr.ph110.i, label %._crit_edge111.i, !llvm.loop !841

._crit_edge111.i:                                 ; preds = %.lr.ph110.i, %.lr.ph110.preheader.i, %.preheader93.i
  %.082.lcssa.i = phi ptr [ null, %.preheader93.i ], [ %i.u, %.lr.ph110.preheader.i ], [ %i.x, %.lr.ph110.i ]
  %i.ab = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.459, ptr noundef %.082.lcssa.i)
  br label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !241 ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 0
  br i1 %i.ae, label %.lr.ph104.i, label %._crit_edge105.i

.lr.ph104.i:                                      ; preds = %bb.f
  %i.af = zext nneg i32 %i.ad to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %.lr.ph104.i
  %indvars.iv119.i = phi i64 [ %i.af, %.lr.ph104.i ], [ %indvars.iv.next120.i, %bb.m ] ; 4 uses
  %.183101.i = phi ptr [ null, %.lr.ph104.i ], [ %.284.i, %bb.m ] ; 3 uses
  %indvars.iv.next120.i = add nsw i64 %indvars.iv119.i, -1 ; 3 uses
  %indvars = trunc i64 %indvars.iv.next120.i to i32 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv.next120.i
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52
  %i.ai = icmp eq i8 %i.ah, 49                    ; 2 uses
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !232
  %1 = trunc nuw nsw i64 %indvars.iv119.i to i32  ; 3 uses
  %i.ak = tail call i32 @sqlite3_column_type(ptr noundef %i.aj, i32 noundef %1) #45
  %i.al = icmp eq i32 %i.ak, 5
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.an = tail call ptr @sqlite3_column_name(ptr noundef %i.am, i32 noundef %1) #45 ; 2 uses
  br i1 %i.al, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  br i1 %i.ai, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.460, ptr noundef %i.an)
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  %i.ap = select i1 %i.ai, ptr @.str.461, ptr @.str.446
  %i.aq = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.462, ptr noundef %i.an, ptr noundef nonnull %i.ap, i32 noundef %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.085.i = phi ptr [ %i.ao, %bb.i ], [ %i.aq, %bb.j ] ; 2 uses
  %.not.i = icmp eq i64 %indvars.iv119.i, 1
  br i1 %.not.i, label %bb.l, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.k
  %i.ar = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.as = tail call ptr @sqlite3_column_name(ptr noundef %i.ar, i32 noundef 1) #45
  %i.at = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.463, ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef %i.as) ; 2 uses
  %i.au = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.464, ptr noundef null, ptr noundef nonnull @.str.48, i32 noundef 1) ; 2 uses
  %exitcond.peel.not.i = icmp eq i32 %indvars, 1
  br i1 %exitcond.peel.not.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %.07999.i = phi i32 [ %i.aw, %.lr.ph.i ], [ 1, %.lr.ph.preheader.i ]
  %.08796.i = phi ptr [ %i.az, %.lr.ph.i ], [ %i.au, %.lr.ph.preheader.i ]
  %.08895.i = phi ptr [ %i.ay, %.lr.ph.i ], [ %i.at, %.lr.ph.preheader.i ]
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.aw = add nuw nsw i32 %.07999.i, 1            ; 4 uses
  %i.ax = tail call ptr @sqlite3_column_name(ptr noundef %i.av, i32 noundef %i.aw) #45
  %i.ay = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.463, ptr noundef %.08895.i, ptr noundef nonnull @.str.163, ptr noundef %i.ax) ; 2 uses
  %i.az = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.464, ptr noundef %.08796.i, ptr noundef nonnull @.str.465, i32 noundef %i.aw) ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.aw, %indvars
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !842

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.lcssa117.i = phi ptr [ %i.at, %.lr.ph.preheader.i ], [ %i.ay, %.lr.ph.i ]
  %.lcssa116.i = phi ptr [ %i.au, %.lr.ph.preheader.i ], [ %i.az, %.lr.ph.i ]
  %i.ba = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.466, ptr noundef %.lcssa117.i, ptr noundef %.lcssa116.i, ptr noundef %.085.i)
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge.i, %bb.k
  %.186.i = phi ptr [ %i.ba, %._crit_edge.i ], [ %.085.i, %bb.k ]
  %i.bb = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.467, ptr noundef %.186.i)
  %i.bc = icmp eq ptr %.183101.i, null
  %i.bd = select i1 %i.bc, ptr @.str.469, ptr @.str.470
  %i.be = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.468, ptr noundef %.183101.i, ptr noundef nonnull %i.bd, ptr noundef %i.bb)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.h
  %.284.i = phi ptr [ %i.be, %bb.l ], [ %.183101.i, %bb.h ] ; 2 uses
  %i.bf = icmp samesign ugt i64 %indvars.iv119.i, 1
  br i1 %i.bf, label %bb.g, label %._crit_edge105.i, !llvm.loop !843

._crit_edge105.i:                                 ; preds = %bb.m, %bb.f
  %.183.lcssa.i = phi ptr [ null, %bb.f ], [ %.284.i, %bb.m ]
  %i.bg = tail call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.471, ptr noundef %.183.lcssa.i)
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge105.i, %._crit_edge111.i
  %.3.i = phi ptr [ %i.ab, %._crit_edge111.i ], [ %i.bg, %._crit_edge105.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  store ptr null, ptr %i.a, align 8, !tbaa !109
  %i.bh = load i32, ptr %i.b, align 4, !tbaa !240
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %bb.o, label %intckPrepare.exit.thread.i

intckPrepare.exit.thread.i:                       ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %intckFinalize.exit.i

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %0, align 8, !tbaa !230
  %i.bk = call i32 @sqlite3_prepare_v2(ptr noundef %i.bj, ptr noundef %.3.i, i32 noundef -1, ptr noundef nonnull %i.a, ptr noundef null) #45 ; 2 uses
  store i32 %i.bk, ptr %i.b, align 4, !tbaa !240
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %intckPrepare.exit.thread124.i, label %intckPrepare.exit.i

intckPrepare.exit.thread124.i:                    ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br label %.preheader.i

intckPrepare.exit.i:                              ; preds = %bb.o
  %i.bm = load ptr, ptr %0, align 8, !tbaa !230
  %i.bn = call i32 @sqlite3_errcode(ptr noundef %i.bm) #45
  store i32 %i.bn, ptr %i.b, align 4, !tbaa !240
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.bp) #45
  %i.bq = load ptr, ptr %0, align 8, !tbaa !230
  %i.br = call ptr @sqlite3_errmsg(ptr noundef %i.bq) #45
  %i.bs = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.br) #45
  store ptr %i.bs, ptr %i.bo, align 8, !tbaa !236
  %.pr.i = load i32, ptr %i.b, align 4, !tbaa !240
  %i.bt = icmp eq i32 %.pr.i, 0
  %i.bu = load ptr, ptr %i.a, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #45
  br i1 %i.bt, label %.preheader.i, label %intckFinalize.exit.i

.preheader.i:                                     ; preds = %intckPrepare.exit.i, %intckPrepare.exit.thread124.i
  %i.bv = phi ptr [ %i.bl, %intckPrepare.exit.thread124.i ], [ %i.bu, %intckPrepare.exit.i ] ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bx = load i32, ptr %i.bw, align 8, !tbaa !241
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph114.i, label %._crit_edge115.i

.lr.ph114.i:                                      ; preds = %.preheader.i, %.lr.ph114.i
  %.2113.i = phi i32 [ %i.bz, %.lr.ph114.i ], [ 0, %.preheader.i ]
  %i.bz = add nuw nsw i32 %.2113.i, 1             ; 4 uses
  %i.ca = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.cb = call ptr @sqlite3_column_value(ptr noundef %i.ca, i32 noundef %i.bz) #45
  %i.cc = call i32 @sqlite3_bind_value(ptr noundef %i.bv, i32 noundef %i.bz, ptr noundef %i.cb) #45 ; 0 uses
  %i.cd = load i32, ptr %i.bw, align 8, !tbaa !241
  %i.ce = icmp slt i32 %i.bz, %i.cd
  br i1 %i.ce, label %.lr.ph114.i, label %._crit_edge115.i, !llvm.loop !844

._crit_edge115.i:                                 ; preds = %.lr.ph114.i, %.preheader.i
  %i.cf = call i32 @sqlite3_step(ptr noundef %i.bv) #45
  %i.cg = icmp eq i32 %i.cf, 100
  br i1 %i.cg, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge115.i
  %i.ch = call ptr @sqlite3_column_text(ptr noundef %i.bv, i32 noundef 0) #45
  %i.ci = call ptr (ptr, ptr, ...) @intckMprintf(ptr noundef nonnull %0, ptr noundef nonnull @.str.51, ptr noundef %i.ch)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ci, ptr %i.cj, align 8, !tbaa !234
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %._crit_edge115.i
  %i.ck = call i32 @sqlite3_finalize(ptr noundef %i.bv) #45
  %i.cl = load i32, ptr %i.b, align 4, !tbaa !240
  %i.cm = icmp eq i32 %i.cl, 0
  %i.cn = icmp ne i32 %i.ck, 0
  %or.cond.i.i = select i1 %i.cm, i1 %i.cn, i1 false
  br i1 %or.cond.i.i, label %bb.r, label %intckFinalize.exit.i

bb.r:                                             ; preds = %bb.q
  %i.co = load ptr, ptr %0, align 8, !tbaa !230
  %i.cp = call i32 @sqlite3_errcode(ptr noundef %i.co) #45
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !240
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.cr) #45
  %i.cs = load ptr, ptr %0, align 8, !tbaa !230
  %i.ct = call ptr @sqlite3_errmsg(ptr noundef %i.cs) #45
  %i.cu = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.ct) #45
  store ptr %i.cu, ptr %i.cq, align 8, !tbaa !236
  br label %intckFinalize.exit.i

intckFinalize.exit.i:                             ; preds = %bb.r, %bb.q, %intckPrepare.exit.i, %intckPrepare.exit.thread.i
  call void @sqlite3_free(ptr noundef %.3.i) #45
  %i.cv = call i32 @sqlite3_finalize(ptr noundef %i.k) #45
  %i.cw = load i32, ptr %i.b, align 4, !tbaa !240
  %i.cx = icmp eq i32 %i.cw, 0
  %i.cy = icmp ne i32 %i.cv, 0
  %or.cond.i91.i = select i1 %i.cx, i1 %i.cy, i1 false
  br i1 %or.cond.i91.i, label %bb.s, label %intckSaveKey.exit

bb.s:                                             ; preds = %intckFinalize.exit.i
  %i.cz = load ptr, ptr %0, align 8, !tbaa !230
  %i.da = call i32 @sqlite3_errcode(ptr noundef %i.cz) #45
  store i32 %i.da, ptr %i.b, align 4, !tbaa !240
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.dc) #45
  %i.dd = load ptr, ptr %0, align 8, !tbaa !230
  %i.de = call ptr @sqlite3_errmsg(ptr noundef %i.dd) #45
  %i.df = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.de) #45
  store ptr %i.df, ptr %i.db, align 8, !tbaa !236
  br label %intckSaveKey.exit

intckSaveKey.exit:                                ; preds = %intckFinalize.exit.i, %bb.s
  %i.dg = load ptr, ptr %i.e, align 8, !tbaa !232
  %i.dh = call i32 @sqlite3_finalize(ptr noundef %i.dg) #45
  %i.di = load i32, ptr %i.b, align 4, !tbaa !240 ; 2 uses
  %i.dj = icmp eq i32 %i.di, 0
  %i.dk = icmp ne i32 %i.dh, 0
  %or.cond.i = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %or.cond.i, label %bb.t, label %intckFinalize.exit

bb.t:                                             ; preds = %intckSaveKey.exit
  %i.dl = load ptr, ptr %0, align 8, !tbaa !230
  %i.dm = call i32 @sqlite3_errcode(ptr noundef %i.dl) #45
  store i32 %i.dm, ptr %i.b, align 4, !tbaa !240
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !236
  call void @sqlite3_free(ptr noundef %i.do) #45
  %i.dp = load ptr, ptr %0, align 8, !tbaa !230
  %i.dq = call ptr @sqlite3_errmsg(ptr noundef %i.dp) #45
  %i.dr = call ptr (ptr, ...) @sqlite3_mprintf(ptr noundef nonnull @.str.51, ptr noundef %i.dq) #45
  store ptr %i.dr, ptr %i.dn, align 8, !tbaa !236
  %.pre.pre = load i32, ptr %i.b, align 4, !tbaa !240
  br label %intckFinalize.exit

intckFinalize.exit:                               ; preds = %intckSaveKey.exit, %bb.t
  %.pre = phi i32 [ %i.di, %intckSaveKey.exit ], [ %.pre.pre, %bb.t ]
  store ptr null, ptr %i.e, align 8, !tbaa !232
  br label %bb.u

bb.u:                                             ; preds = %intckFinalize.exit, %bb.b, %bb.a
  %i.ds = phi i32 [ %.pre, %intckFinalize.exit ], [ 0, %bb.b ], [ %i.c, %bb.a ]
  ret i32 %i.ds
}

; Function Attrs: nounwind uwtable
define ptr @sqlite3_intck_test_sql(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !235
  tail call void @sqlite3_free(ptr noundef %i.b) #45
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc ptr @intckCheckObjectSql(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, ptr noundef null)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !233  ; 2 uses
end_hunk_1
begin_hunk_2_@decimalNewFromText:bb.a
.preheader231:                                    ; preds = %bb.c
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.lr.ph, label %.critedge198

.lr.ph:                                           ; preds = %.preheader231
  %i.l = tail call ptr @__ctype_b_loc() #47
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !132
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1, !tbaa !52    ; 3 uses
  %i.p = zext i8 %i.o to i64
  %i.q = getelementptr inbounds nuw [2 x i8], ptr %i.m, i64 %i.p
  %i.r = load i16, ptr %i.q, align 2, !tbaa !98
  %i.s = and i16 %i.r, 8192
  %.not = icmp eq i16 %i.s, 0
  br i1 %.not, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %bb.d, !llvm.loop !1083

.critedge:                                        ; preds = %bb.d
  %i.t = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %i.u = icmp eq i8 %i.o, 45
  br i1 %i.u, label %bb.f, label %.critedge197

bb.f:                                             ; preds = %.critedge
  store i8 1, ptr %i.b, align 8, !tbaa !142
  %i.v = add nuw nsw i32 %i.t, 1
  br label %.critedge198

.critedge197:                                     ; preds = %.critedge
  %i.w = icmp eq i8 %i.o, 43
  %i.x = zext i1 %i.w to i32
  %spec.select = add nuw nsw i32 %i.t, %i.x
  br label %.critedge198

.critedge198:                                     ; preds = %.preheader231, %.critedge197, %bb.f
  %.1161 = phi i32 [ %i.v, %bb.f ], [ %spec.select, %.critedge197 ], [ 0, %.preheader231 ] ; 3 uses
  %i.y = icmp slt i32 %.1161, %1
  br i1 %i.y, label %.lr.ph238.preheader, label %.critedge2

.lr.ph238.preheader:                              ; preds = %.critedge198
  %i.z = sext i32 %.1161 to i64
  br label %.lr.ph238

.lr.ph238:                                        ; preds = %.lr.ph238.preheader, %bb.g
  %indvars.iv256 = phi i64 [ %i.z, %.lr.ph238.preheader ], [ %indvars.iv.next257, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds i8, ptr %0, i64 %indvars.iv256
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !52
  %i.ac = icmp eq i8 %i.ab, 48
  br i1 %i.ac, label %bb.g, label %.critedge2.loopexit

bb.g:                                             ; preds = %.lr.ph238
  %indvars.iv.next257 = add nsw i64 %indvars.iv256, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next257 to i32
  %exitcond259.not = icmp eq i32 %1, %lftr.wideiv
  br i1 %exitcond259.not, label %.thread, label %.lr.ph238, !llvm.loop !1084

.critedge2.loopexit:                              ; preds = %.lr.ph238
  %i.ad = trunc nsw i64 %indvars.iv256 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %.critedge198
  %.2162.lcssa = phi i32 [ %.1161, %.critedge198 ], [ %i.ad, %.critedge2.loopexit ] ; 2 uses
  %i.ae = icmp slt i32 %.2162.lcssa, %1
  br i1 %i.ae, label %.lr.ph243.preheader, label %.thread

.lr.ph243.preheader:                              ; preds = %.critedge2
  %i.af = sext i32 %.2162.lcssa to i64
  br label %.lr.ph243

.lr.ph243:                                        ; preds = %.lr.ph243.preheader, %bb.n
  %indvars.iv260 = phi i64 [ %i.af, %.lr.ph243.preheader ], [ %indvars.iv.next261, %bb.n ] ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %0, i64 %indvars.iv260
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !52  ; 3 uses
  %i.ai = add i8 %i.ah, -48                       ; 2 uses
  %or.cond = icmp ult i8 %i.ai, 10
  br i1 %or.cond, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph243
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.ak = load i32, ptr %i.d, align 4, !tbaa !138 ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.d, align 4, !tbaa !138
  %i.am = sext i32 %i.ak to i64
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.am
  store i8 %i.ai, ptr %i.an, align 1, !tbaa !52
  br label %bb.n

bb.i:                                             ; preds = %.lr.ph243
  %i.ao = icmp eq i8 %i.ah, 46
  br i1 %i.ao, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !138
  %i.aq = add nsw i32 %i.ap, 1
  store i32 %i.aq, ptr %i.e, align 8, !tbaa !143
  br label %bb.n

bb.k:                                             ; preds = %bb.i
  %i.ar = and i8 %i.ah, -33
  %or.cond7 = icmp eq i8 %i.ar, 69
  br i1 %or.cond7, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.as = trunc nsw i64 %indvars.iv260 to i32     ; 2 uses
  %i.at = add nsw i32 %i.as, 1                    ; 3 uses
  %.not184 = icmp slt i32 %i.at, %1
  br i1 %.not184, label %bb.m, label %.thread

bb.m:                                             ; preds = %bb.l
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %0, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !52  ; 2 uses
  %.not186 = icmp eq i8 %i.aw, 45                 ; 2 uses
  %i.ax = add nsw i32 %i.as, 2
  %i.ay = icmp eq i8 %i.aw, 43
  %i.az = or i1 %.not186, %i.ay
  %.0153 = select i1 %i.az, i32 %i.ax, i32 %i.at  ; 2 uses
  %i.ba = icmp slt i32 %.0153, %1
  br i1 %i.ba, label %.lr.ph246.preheader, label %._crit_edge

.lr.ph246.preheader:                              ; preds = %bb.m
  %i.bb = sext i32 %.0153 to i64
  %i.bc = sext i32 %1 to i64
  br label %.lr.ph246

.lr.ph246:                                        ; preds = %.lr.ph246.preheader, %.lr.ph246
  %indvars.iv265 = phi i64 [ %i.bb, %.lr.ph246.preheader ], [ %indvars.iv.next266, %.lr.ph246 ] ; 2 uses
  %.1156244 = phi i32 [ 0, %.lr.ph246.preheader ], [ %.2157, %.lr.ph246 ] ; 2 uses
  %i.bd = getelementptr inbounds i8, ptr %0, i64 %indvars.iv265
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !52  ; 2 uses
  %i.bf = sext i8 %i.be to i32
  %i.bg = add i8 %i.be, -48
  %or.cond200 = icmp ult i8 %i.bg, 10
  %i.bh = mul nsw i32 %.1156244, 10
  %i.bi = add i32 %i.bh, -48
  %i.bj = add i32 %i.bi, %i.bf
  %.2157 = select i1 %or.cond200, i32 %i.bj, i32 %.1156244 ; 3 uses
  %indvars.iv.next266 = add nsw i64 %indvars.iv265, 1 ; 2 uses
  %i.bk = icmp slt i64 %indvars.iv.next266, %i.bc
  %i.bl = icmp slt i32 %.2157, 1000000
  %i.bm = select i1 %i.bk, i1 %i.bl, i1 false
  br i1 %i.bm, label %.lr.ph246, label %._crit_edge, !llvm.loop !1085

._crit_edge:                                      ; preds = %.lr.ph246, %bb.m
  %.1156.lcssa = phi i32 [ 0, %bb.m ], [ %.2157, %.lr.ph246 ] ; 2 uses
  %i.bn = sub nsw i32 0, %.1156.lcssa
  %spec.select201 = select i1 %.not186, i32 %i.bn, i32 %.1156.lcssa
  br label %.thread

bb.n:                                             ; preds = %bb.h, %bb.k, %bb.j
  %indvars.iv.next261 = add nsw i64 %indvars.iv260, 1 ; 2 uses
  %lftr.wideiv263 = trunc i64 %indvars.iv.next261 to i32
  %exitcond264.not = icmp eq i32 %1, %lftr.wideiv263
  br i1 %exitcond264.not, label %.thread, label %.lr.ph243

.thread:                                          ; preds = %bb.e, %bb.g, %bb.n, %.critedge2, %._crit_edge, %bb.l
  %.6 = phi i32 [ %spec.select201, %._crit_edge ], [ 0, %bb.l ], [ 0, %.critedge2 ], [ 0, %bb.n ], [ 0, %bb.g ], [ 0, %bb.e ] ; 10 uses
  %i.bo = load i32, ptr %i.e, align 8, !tbaa !143 ; 2 uses
  %.not187 = icmp eq i32 %i.bo, 0
  br i1 %.not187, label %.thread291, label %bb.o

bb.o:                                             ; preds = %.thread
  %i.bp = load i32, ptr %i.d, align 4, !tbaa !138
  %reass.sub = sub i32 %i.bp, %i.bo               ; 2 uses
  %i.bq = add i32 %reass.sub, 1                   ; 5 uses
  store i32 %i.bq, ptr %i.e, align 8, !tbaa !143
  %i.br = icmp sgt i32 %.6, 0
  br i1 %i.br, label %bb.p, label %bb.s

.thread291:                                       ; preds = %.thread
  %i.bs = icmp sgt i32 %.6, 0
  br i1 %i.bs, label %.thread206, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp ult i32 %reass.sub, 2147483647
  br i1 %i.bt, label %bb.q, label %.thread206

bb.q:                                             ; preds = %bb.p
  %.not192 = icmp samesign ugt i32 %.6, %i.bq
  br i1 %.not192, label %bb.r, label %.thread209

.thread209:                                       ; preds = %bb.q
  %i.bu = sub nuw nsw i32 %i.bq, %.6
  store i32 %i.bu, ptr %i.e, align 8, !tbaa !143
  %.pr.pre.pre = load i32, ptr %i.d, align 4, !tbaa !138
  br label %.thread223

bb.r:                                             ; preds = %bb.q
  %i.bv = sub nuw nsw i32 %.6, %i.bq
  store i32 0, ptr %i.e, align 8, !tbaa !143
  br label %.thread206

.thread206:                                       ; preds = %.thread291, %bb.r, %bb.p
  %.7208 = phi i32 [ %i.bv, %bb.r ], [ %.6, %bb.p ], [ %.6, %.thread291 ] ; 2 uses
  %i.bw = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.bx = load i32, ptr %i.d, align 4, !tbaa !138
  %i.by = sext i32 %i.bx to i64
  %i.bz = zext nneg i32 %.7208 to i64             ; 2 uses
  %i.ca = add nuw nsw i64 %i.bz, 1
  %i.cb = add nsw i64 %i.ca, %i.by
  %i.cc = tail call ptr @sqlite3_realloc64(ptr noundef %i.bw, i64 noundef %i.cb) #45 ; 3 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.z, label %.thread211

.thread211:                                       ; preds = %.thread206
  store ptr %i.cc, ptr %i.i, align 8, !tbaa !139
  %i.ce = load i32, ptr %i.d, align 4, !tbaa !138
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds i8, ptr %i.cc, i64 %i.cf
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.cg, i8 0, i64 %i.bz, i1 false)
  %i.ch = load i32, ptr %i.d, align 4, !tbaa !138
  %i.ci = add nsw i32 %i.ch, %.7208               ; 2 uses
  store i32 %i.ci, ptr %i.d, align 4, !tbaa !138
  br label %.thread223

bb.s:                                             ; preds = %.thread291, %bb.o
  %i.cj = phi i32 [ 0, %.thread291 ], [ %i.bq, %bb.o ] ; 2 uses
  %i.ck = icmp slt i32 %.6, 0
  %.pr.pre.pre273 = load i32, ptr %i.d, align 4, !tbaa !138 ; 6 uses
  br i1 %i.ck, label %bb.t, label %.thread223

bb.t:                                             ; preds = %bb.s
  %i.cl = sub nsw i32 0, %.6                      ; 3 uses
  %i.cm = xor i32 %i.cj, -1
  %i.cn = add i32 %.pr.pre.pre273, %i.cm          ; 3 uses
  %.not188 = icmp eq i32 %i.cn, 0
  br i1 %.not188, label %.thread216, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not189 = icmp slt i32 %i.cn, %i.cl
  br i1 %.not189, label %bb.v, label %.thread213

.thread213:                                       ; preds = %bb.u
  %i.co = sub nsw i32 %i.cj, %.6
  store i32 %i.co, ptr %i.e, align 8, !tbaa !143
  br label %.thread223

bb.v:                                             ; preds = %bb.u
  %i.cp = sub nsw i32 %i.cl, %i.cn                ; 2 uses
  %i.cq = add nsw i32 %.pr.pre.pre273, -1
  store i32 %i.cq, ptr %i.e, align 8, !tbaa !143
  %.not190 = icmp eq i32 %i.cp, 0
  br i1 %.not190, label %.thread223, label %.thread216

.thread216:                                       ; preds = %bb.t, %bb.v
  %.8219 = phi i32 [ %i.cp, %bb.v ], [ %i.cl, %bb.t ] ; 3 uses
  %i.cr = load ptr, ptr %i.i, align 8, !tbaa !139
  %i.cs = sext i32 %.pr.pre.pre273 to i64
  %i.ct = zext nneg i32 %.8219 to i64             ; 3 uses
  %i.cu = add nsw i64 %i.cs, 1
  %i.cv = add nsw i64 %i.cu, %i.ct
  %i.cw = tail call ptr @sqlite3_realloc64(ptr noundef %i.cr, i64 noundef %i.cv) #45 ; 4 uses
  %.not191 = icmp eq ptr %i.cw, null
  br i1 %.not191, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.thread216
  store ptr %i.cw, ptr %i.i, align 8, !tbaa !139
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  %i.cy = load i32, ptr %i.d, align 4, !tbaa !138
  %i.cz = sext i32 %i.cy to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cx, ptr nonnull align 1 %i.cw, i64 %i.cz, i1 false)
  %i.da = load ptr, ptr %i.i, align 8, !tbaa !139
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.da, i8 0, i64 %i.ct, i1 false)
  %i.db = load i32, ptr %i.d, align 4, !tbaa !138
  %i.dc = add nsw i32 %i.db, %.8219               ; 2 uses
  store i32 %i.dc, ptr %i.d, align 4, !tbaa !138
  %i.dd = load i32, ptr %i.e, align 8, !tbaa !143
  %i.de = add nsw i32 %i.dd, %.8219
  store i32 %i.de, ptr %i.e, align 8, !tbaa !143
  br label %.thread223

.thread223:                                       ; preds = %bb.v, %.thread213, %bb.w, %.thread211, %.thread209, %bb.s
  %.pr.pre = phi i32 [ %.pr.pre.pre273, %bb.v ], [ %.pr.pre.pre273, %.thread213 ], [ %i.dc, %bb.w ], [ %i.ci, %.thread211 ], [ %.pr.pre.pre, %.thread209 ], [ %.pr.pre.pre273, %bb.s ] ; 3 uses
  %i.df = load i8, ptr %i.b, align 8, !tbaa !142
  %.not193 = icmp eq i8 %i.df, 0
  br i1 %.not193, label %thread-pre-split, label %.preheader

.preheader:                                       ; preds = %.thread223
  %i.dg = icmp sgt i32 %.pr.pre, 0
  br i1 %i.dg, label %.lr.ph249, label %.critedge9

.lr.ph249:                                        ; preds = %.preheader
  %i.dh = load ptr, ptr %i.i, align 8, !tbaa !139
  %wide.trip.count271 = zext nneg i32 %.pr.pre to i64
  br label %bb.y

bb.x:                                             ; preds = %bb.y
  %indvars.iv.next269 = add nuw nsw i64 %indvars.iv268, 1 ; 2 uses
  %exitcond272.not = icmp eq i64 %indvars.iv.next269, %wide.trip.count271
  br i1 %exitcond272.not, label %.critedge9, label %bb.y, !llvm.loop !1086

bb.y:                                             ; preds = %.lr.ph249, %bb.x
  %indvars.iv268 = phi i64 [ 0, %.lr.ph249 ], [ %indvars.iv.next269, %bb.x ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %indvars.iv268
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !52
  %i.dk = icmp eq i8 %i.dj, 0
  br i1 %i.dk, label %bb.x, label %thread-pre-split

.critedge9:                                       ; preds = %bb.x, %.preheader
  store i8 0, ptr %i.b, align 8, !tbaa !142
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.y, %.thread223, %.critedge9
  %i.dl = icmp sgt i32 %.pr.pre, 10000000
  br i1 %i.dl, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %thread-pre-split, %.thread206, %.thread216
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !139  ; 2 uses
  %.not196 = icmp eq ptr %.pr, null
  br i1 %.not196, label %.thread294, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @sqlite3_free(ptr noundef nonnull %.pr) #45
  br label %.thread294

.thread294:                                       ; preds = %bb.c, %bb.aa, %bb.z
  tail call void @sqlite3_free(ptr noundef nonnull %i.b) #45
  br label %bb.ab

bb.ab:                                            ; preds = %bb.a, %bb.b, %.thread294, %thread-pre-split
  %.0167 = phi ptr [ %i.b, %thread-pre-split ], [ null, %.thread294 ], [ null, %bb.b ], [ null, %bb.a ]
  ret ptr %.0167
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @decimalFromDouble(double noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = alloca [100 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #45
  %i.b = fcmp uge double %0, 0.000000e+00         ; 2 uses
  %or.cond = fcmp oeq double %0, 0.000000e+00
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = fneg double %0
  %.031 = select i1 %i.b, double %0, double %i.c
  %i.d = bitcast double %.031 to i64              ; 3 uses
  %i.e = ashr i64 %i.d, 52                        ; 3 uses
  %i.f = trunc nsw i64 %i.e to i32                ; 2 uses
  %i.g = icmp eq i64 %i.e, 0
  %i.h = shl nuw nsw i64 %i.d, 1
  %i.i = and i64 %i.d, 4503599627370495
  %i.j = or disjoint i64 %i.i, 4503599627370496
  %.029 = select i1 %i.g, i64 %i.h, i64 %i.j      ; 4 uses
  %i.k = icmp slt i64 %i.e, 1075
  %i.l = icmp ne i64 %.029, 0
  %i.m = and i64 %.029, 1
  %i.n = icmp eq i64 %i.m, 0
  %i.o = and i1 %i.l, %i.n
  %i.p = select i1 %i.k, i1 %i.o, i1 false
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.02838 = phi i32 [ %i.r, %.lr.ph ], [ %i.f, %bb.b ] ; 2 uses
  %.13037 = phi i64 [ %i.q, %.lr.ph ], [ %.029, %bb.b ] ; 3 uses
  %i.q = lshr exact i64 %.13037, 1                ; 2 uses
  %i.r = add nsw i32 %.02838, 1                   ; 2 uses
  %i.s = icmp slt i32 %.02838, 1074
  %i.t = icmp ne i64 %.13037, 0
  %i.u = and i64 %.13037, 2
  %i.v = icmp eq i64 %i.u, 0
  %i.w = and i1 %i.t, %i.v
  %i.x = select i1 %i.s, i1 %i.w, i1 false
  br i1 %i.x, label %.lr.ph, label %._crit_edge, !llvm.loop !1087

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %.130.lcssa = phi i64 [ %.029, %bb.b ], [ %i.q, %.lr.ph ] ; 2 uses
  %.028.lcssa = phi i32 [ %i.f, %bb.b ], [ %i.r, %.lr.ph ] ; 2 uses
  %i.y = sub nsw i64 0, %.130.lcssa
  %spec.select = select i1 %i.b, i64 %.130.lcssa, i64 %i.y
  %i.z = add nsw i32 %.028.lcssa, -1075
  %i.aa = icmp sgt i32 %.028.lcssa, 2046
  br i1 %i.aa, label %decimal_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.a, %._crit_edge
  %.3 = phi i64 [ %spec.select, %._crit_edge ], [ 0, %bb.a ]
  %.1 = phi i32 [ %i.z, %._crit_edge ], [ 0, %bb.a ]
  %i.ab = call ptr (i32, ptr, ptr, ...) @sqlite3_snprintf(i32 noundef 100, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.208, i64 noundef %.3) #45 ; 0 uses
  %i.ac = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #46
  %i.ad = trunc i64 %i.ac to i32
  %i.ae = call fastcc ptr @decimalNewFromText(ptr noundef nonnull %i.a, i32 noundef %i.ad) ; 3 uses
  %i.af = call fastcc ptr @decimalPow2(i32 noundef %.1) ; 4 uses
  call fastcc void @decimalMul(ptr noundef %i.ae, ptr noundef %i.af)
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %decimal_free.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  %.val.i = load ptr, ptr %i.ag, align 8, !tbaa !139
  call void @sqlite3_free(ptr noundef %.val.i) #45
  call void @sqlite3_free(ptr noundef nonnull %i.af) #45
  br label %decimal_free.exit

end_hunk_2
