Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_amd?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cs_amd:bb.a
  %i.ar = tail call ptr @cs_transpose(ptr noundef nonnull %i.f, i32 noundef 0) #7 ; 3 uses
  %.not781 = icmp eq ptr %i.ar, null
  br i1 %.not781, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.as = tail call ptr @cs_multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ar) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.at = phi ptr [ %i.as, %bb.h ], [ null, %._crit_edge ]
  %i.au = tail call ptr @cs_spfree(ptr noundef %i.ar) #7 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.av = tail call ptr @cs_multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  %.0746 = phi ptr [ %i.r, %bb.e ], [ %i.at, %bb.i ], [ %i.av, %bb.j ] ; 9 uses
  %i.aw = tail call ptr @cs_spfree(ptr noundef nonnull %i.f) #7 ; 0 uses
  %.not782 = icmp eq ptr %.0746, null
  br i1 %.not782, label %bb.ca, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @cs_fkeep(ptr noundef nonnull %.0746, ptr noundef nonnull @cs_diag, ptr noundef null) #7 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0746, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 36 uses
  %i.ba = sext i32 %i.j to i64                    ; 9 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !52 ; 3 uses
  %i.bd = add nsw i32 %i.j, 1                     ; 13 uses
  %i.be = tail call ptr @cs_malloc(i32 noundef %i.bd, i64 noundef 4) #7 ; 14 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 8 uses
  %i.bg = shl nsw i32 %i.bd, 3
  %i.bh = tail call ptr @cs_malloc(i32 noundef %i.bg, i64 noundef 4) #7 ; 31 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 8 uses
  %i.bj = icmp ne ptr %i.be, null
  %i.bk = icmp ne ptr %i.bh, null
  %or.cond5 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond5, label %bb.m, label %.sink.split1230

bb.m:                                             ; preds = %bb.l
  %i.bl = sdiv i32 %i.bc, 5
  %i.bm = shl nsw i32 %i.j, 1
  %i.bn = add i32 %i.bc, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = tail call i32 @cs_sprealloc(ptr noundef nonnull %.0746, i32 noundef %i.bo) #7
  %.not783 = icmp eq i32 %i.bp, 0
  br i1 %.not783, label %.sink.split1230, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = sext i32 %i.bd to i64                   ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bq ; 17 uses
  %i.bs = shl i32 %i.bd, 1
  %i.bt = sext i32 %i.bs to i64                   ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bt ; 16 uses
  %i.bv = mul i32 %i.bd, 3
  %i.bw = sext i32 %i.bv to i64                   ; 4 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bh, i64 %i.bw ; 16 uses
  %i.by = shl i32 %i.bd, 2
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bz ; 12 uses
  %i.cb = mul i32 %i.bd, 5
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cc ; 9 uses
  %i.ce = mul i32 %i.bd, 6
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cf ; 21 uses
  %i.ch = mul i32 %i.bd, 7
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ci ; 4 uses
  %i.ck = icmp sgt i32 %i.j, 0                    ; 4 uses
  br i1 %i.ck, label %.lr.ph867.preheader, label %._crit_edge868

.lr.ph867.preheader:                              ; preds = %bb.n
  %wide.trip.count1023 = zext nneg i32 %i.j to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.j, 12
  br i1 %min.iters.check, label %.lr.ph867.preheader1368, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph867.preheader
  %i.cl = shl nuw nsw i64 %wide.trip.count1023, 2 ; 2 uses
  %scevgep = getelementptr i8, ptr %i.bh, i64 %i.cl
  %i.cm = getelementptr i8, ptr %i.az, i64 %i.cl
  %scevgep1239 = getelementptr i8, ptr %i.cm, i64 4
  %bound0 = icmp ult ptr %i.bh, %scevgep1239
  %bound1 = icmp ult ptr %i.az, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph867.preheader1368, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count1023, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cn, i64 20
  %wide.load = load <4 x i32>, ptr %i.co, align 4, !tbaa !52, !alias.scope !54
  %wide.load1240 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !52, !alias.scope !54
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load1241 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !52, !alias.scope !54
  %wide.load1242 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !52, !alias.scope !54
  %i.cs = sub nsw <4 x i32> %wide.load, %wide.load1241
  %i.ct = sub nsw <4 x i32> %wide.load1240, %wide.load1242
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  store <4 x i32> %i.cs, ptr %i.cu, align 4, !tbaa !52, !alias.scope !55, !noalias !54
  store <4 x i32> %i.ct, ptr %i.cv, align 4, !tbaa !52, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1023
  br i1 %cmp.n, label %._crit_edge868.thread, label %.lr.ph867.preheader1368

.lr.ph867.preheader1368:                          ; preds = %vector.memcheck, %.lr.ph867.preheader, %middle.block
  %indvars.iv1020.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph867.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count1023, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph867.prol.loopexit, label %.lr.ph867.prol

.lr.ph867.prol:                                   ; preds = %.lr.ph867.preheader1368, %.lr.ph867.prol
  %indvars.iv1020.prol = phi i64 [ %indvars.iv.next1021.prol, %.lr.ph867.prol ], [ %indvars.iv1020.ph, %.lr.ph867.preheader1368 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph867.prol ], [ 0, %.lr.ph867.preheader1368 ]
  %indvars.iv.next1021.prol = add nuw nsw i64 %indvars.iv1020.prol, 1 ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.prol
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !52
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1020.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !52
  %i.db = sub nsw i32 %i.cy, %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1020.prol
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !52
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph867.prol.loopexit, label %.lr.ph867.prol, !llvm.loop !14

.lr.ph867.prol.loopexit:                          ; preds = %.lr.ph867.prol, %.lr.ph867.preheader1368
  %indvars.iv1020.unr = phi i64 [ %indvars.iv1020.ph, %.lr.ph867.preheader1368 ], [ %indvars.iv.next1021.prol, %.lr.ph867.prol ]
  %i.dd = sub nsw i64 %indvars.iv1020.ph, %wide.trip.count1023
  %i.de = icmp ugt i64 %i.dd, -4
  br i1 %i.de, label %._crit_edge868.thread, label %.lr.ph867

.lr.ph867:                                        ; preds = %.lr.ph867.prol.loopexit, %.lr.ph867
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021.3, %.lr.ph867 ], [ %indvars.iv1020.unr, %.lr.ph867.prol.loopexit ] ; 6 uses
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 3 uses
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !52
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1020
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.dj = sub nsw i32 %i.dg, %i.di
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1020
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !52
  %indvars.iv.next1021.1 = add nuw nsw i64 %indvars.iv1020, 2 ; 3 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.1
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !52
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !52
  %i.dp = sub nsw i32 %i.dm, %i.do
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021
  store i32 %i.dp, ptr %i.dq, align 4, !tbaa !52
  %indvars.iv.next1021.2 = add nuw nsw i64 %indvars.iv1020, 3 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.2
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !52
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.1
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !52
  %i.dv = sub nsw i32 %i.ds, %i.du
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021.1
  store i32 %i.dv, ptr %i.dw, align 4, !tbaa !52
  %indvars.iv.next1021.3 = add nuw nsw i64 %indvars.iv1020, 4 ; 3 uses
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.3
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !52
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.2
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !52
  %i.eb = sub nsw i32 %i.dy, %i.ea
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021.2
  store i32 %i.eb, ptr %i.ec, align 4, !tbaa !52
  %exitcond1024.not.3 = icmp eq i64 %indvars.iv.next1021.3, %wide.trip.count1023
  br i1 %exitcond1024.not.3, label %._crit_edge868.thread, label %.lr.ph867, !llvm.loop !15

._crit_edge868.thread:                            ; preds = %.lr.ph867.prol.loopexit, %.lr.ph867, %middle.block
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ba
  store i32 0, ptr %i.ed, align 4, !tbaa !52
  %i.ee = load i32, ptr %.0746, align 8, !tbaa !59
  %i.ef = getelementptr inbounds nuw i8, ptr %.0746, i64 24
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !51
  br label %.lr.ph872.preheader

._crit_edge868:                                   ; preds = %bb.n
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ba
  store i32 0, ptr %i.eh, align 4, !tbaa !52
  %i.ei = load i32, ptr %.0746, align 8, !tbaa !59 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.0746, i64 24
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !51 ; 2 uses
  %.not784869 = icmp slt i32 %i.j, 0
  br i1 %.not784869, label %cs_wclear.exit.thread, label %.lr.ph872.preheader

.lr.ph872.preheader:                              ; preds = %._crit_edge868.thread, %._crit_edge868
  %i.el = phi ptr [ %i.eg, %._crit_edge868.thread ], [ %i.ek, %._crit_edge868 ] ; 2 uses
  %i.em = phi i32 [ %i.ee, %._crit_edge868.thread ], [ %i.ei, %._crit_edge868 ] ; 2 uses
  %wide.trip.count1028 = zext nneg i32 %i.bd to i64 ; 3 uses
  %min.iters.check1314 = icmp ult i32 %i.bd, 148
  br i1 %min.iters.check1314, label %.lr.ph872.preheader1367, label %vector.memcheck1243

vector.memcheck1243:                              ; preds = %.lr.ph872.preheader
  %i.en = shl nsw i64 %i.bw, 2                    ; 7 uses
  %i.eo = add i64 %i.en, %i.bi
  %i.ep = sub i64 %i.eo, %i.bf
  %diff.check = icmp ugt i64 %i.ep, -32
  %i.eq = shl nsw i64 %i.bt, 2                    ; 7 uses
  %i.er = sub nsw i64 %i.en, %i.eq
  %diff.check1244 = icmp ugt i64 %i.er, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1244
  %i.es = shl nsw i64 %i.ci, 2                    ; 7 uses
  %i.et = sub nsw i64 %i.en, %i.es
  %diff.check1245 = icmp ugt i64 %i.et, -32
  %conflict.rdx1246 = or i1 %conflict.rdx, %diff.check1245
  %i.eu = shl nsw i64 %i.bq, 2                    ; 7 uses
  %i.ev = sub nsw i64 %i.en, %i.eu
  %diff.check1247 = icmp ugt i64 %i.ev, -32
  %conflict.rdx1248 = or i1 %conflict.rdx1246, %diff.check1247
  %i.ew = shl nsw i64 %i.cf, 2                    ; 7 uses
  %i.ex = sub nsw i64 %i.en, %i.ew
  %diff.check1249 = icmp ugt i64 %i.ex, -32
  %conflict.rdx1250 = or i1 %conflict.rdx1248, %diff.check1249
  %i.ey = shl nsw i64 %i.bz, 2                    ; 7 uses
  %i.ez = sub nsw i64 %i.en, %i.ey
  %diff.check1251 = icmp ugt i64 %i.ez, -32
  %conflict.rdx1252 = or i1 %conflict.rdx1250, %diff.check1251
  %i.fa = shl nsw i64 %i.cc, 2                    ; 8 uses
  %i.fb = sub nsw i64 %i.en, %i.fa
  %diff.check1253 = icmp ugt i64 %i.fb, -32
  %conflict.rdx1254 = or i1 %conflict.rdx1252, %diff.check1253
  %i.fc = shl nsw i64 %i.bw, 2
  %diff.check1255 = icmp ugt i64 %i.fc, -32
  %conflict.rdx1256 = or i1 %conflict.rdx1254, %diff.check1255
  %i.fd = add i64 %i.eq, %i.bi
  %i.fe = sub i64 %i.bf, %i.fd
  %diff.check1257 = icmp ugt i64 %i.fe, -32
  %conflict.rdx1258 = or i1 %conflict.rdx1256, %diff.check1257
  %i.ff = add i64 %i.es, %i.bi
  %i.fg = sub i64 %i.bf, %i.ff
  %diff.check1259 = icmp ugt i64 %i.fg, -32
  %conflict.rdx1260 = or i1 %conflict.rdx1258, %diff.check1259
  %i.fh = add i64 %i.eu, %i.bi
  %i.fi = sub i64 %i.bf, %i.fh
  %diff.check1261 = icmp ugt i64 %i.fi, -32
  %conflict.rdx1262 = or i1 %conflict.rdx1260, %diff.check1261
  %i.fj = add i64 %i.ew, %i.bi
  %i.fk = sub i64 %i.bf, %i.fj
  %diff.check1263 = icmp ugt i64 %i.fk, -32
  %conflict.rdx1264 = or i1 %conflict.rdx1262, %diff.check1263
  %i.fl = add i64 %i.ey, %i.bi
  %i.fm = sub i64 %i.bf, %i.fl
  %diff.check1265 = icmp ugt i64 %i.fm, -32
  %conflict.rdx1266 = or i1 %conflict.rdx1264, %diff.check1265
  %i.fn = add i64 %i.fa, %i.bi
  %i.fo = sub i64 %i.bf, %i.fn
  %diff.check1267 = icmp ugt i64 %i.fo, -32
  %conflict.rdx1268 = or i1 %conflict.rdx1266, %diff.check1267
  %i.fp = sub i64 %i.bf, %i.bi
  %diff.check1269 = icmp ugt i64 %i.fp, -32
  %conflict.rdx1270 = or i1 %conflict.rdx1268, %diff.check1269
  %i.fq = sub nsw i64 %i.eq, %i.es
  %diff.check1271 = icmp ugt i64 %i.fq, -32
  %conflict.rdx1272 = or i1 %conflict.rdx1270, %diff.check1271
  %i.fr = sub nsw i64 %i.eq, %i.eu
  %diff.check1273 = icmp ugt i64 %i.fr, -32
  %conflict.rdx1274 = or i1 %conflict.rdx1272, %diff.check1273
  %i.fs = sub nsw i64 %i.eq, %i.ew
  %diff.check1275 = icmp ugt i64 %i.fs, -32
  %conflict.rdx1276 = or i1 %conflict.rdx1274, %diff.check1275
  %i.ft = sub nsw i64 %i.eq, %i.ey
  %diff.check1277 = icmp ugt i64 %i.ft, -32
  %conflict.rdx1278 = or i1 %conflict.rdx1276, %diff.check1277
  %i.fu = sub nsw i64 %i.eq, %i.fa
  %diff.check1279 = icmp ugt i64 %i.fu, -32
  %conflict.rdx1280 = or i1 %conflict.rdx1278, %diff.check1279
  %i.fv = shl nsw i64 %i.bt, 2
  %diff.check1281 = icmp ugt i64 %i.fv, -32
  %conflict.rdx1282 = or i1 %conflict.rdx1280, %diff.check1281
  %i.fw = sub nsw i64 %i.es, %i.eu
  %diff.check1283 = icmp ugt i64 %i.fw, -32
  %conflict.rdx1284 = or i1 %conflict.rdx1282, %diff.check1283
  %i.fx = sub nsw i64 %i.es, %i.ew
  %diff.check1285 = icmp ugt i64 %i.fx, -32
  %conflict.rdx1286 = or i1 %conflict.rdx1284, %diff.check1285
  %i.fy = sub nsw i64 %i.es, %i.ey
  %diff.check1287 = icmp ugt i64 %i.fy, -32
  %conflict.rdx1288 = or i1 %conflict.rdx1286, %diff.check1287
  %i.fz = sub nsw i64 %i.es, %i.fa
  %diff.check1289 = icmp ugt i64 %i.fz, -32
  %conflict.rdx1290 = or i1 %conflict.rdx1288, %diff.check1289
  %i.ga = shl nsw i64 %i.ci, 2
  %diff.check1291 = icmp ugt i64 %i.ga, -32
  %conflict.rdx1292 = or i1 %conflict.rdx1290, %diff.check1291
  %i.gb = sub nsw i64 %i.eu, %i.ew
  %diff.check1293 = icmp ugt i64 %i.gb, -32
  %conflict.rdx1294 = or i1 %conflict.rdx1292, %diff.check1293
  %i.gc = sub nsw i64 %i.eu, %i.ey
  %diff.check1295 = icmp ugt i64 %i.gc, -32
  %conflict.rdx1296 = or i1 %conflict.rdx1294, %diff.check1295
  %i.gd = sub nsw i64 %i.eu, %i.fa
  %diff.check1297 = icmp ugt i64 %i.gd, -32
  %conflict.rdx1298 = or i1 %conflict.rdx1296, %diff.check1297
  %i.ge = shl nsw i64 %i.bq, 2
  %diff.check1299 = icmp ugt i64 %i.ge, -32
  %conflict.rdx1300 = or i1 %conflict.rdx1298, %diff.check1299
  %i.gf = sub nsw i64 %i.ew, %i.ey
  %diff.check1301 = icmp ugt i64 %i.gf, -32
  %conflict.rdx1302 = or i1 %conflict.rdx1300, %diff.check1301
  %i.gg = sub nsw i64 %i.ew, %i.fa
  %diff.check1303 = icmp ugt i64 %i.gg, -32
  %conflict.rdx1304 = or i1 %conflict.rdx1302, %diff.check1303
  %i.gh = shl nsw i64 %i.cf, 2
  %diff.check1305 = icmp ugt i64 %i.gh, -32
  %conflict.rdx1306 = or i1 %conflict.rdx1304, %diff.check1305
  %i.gi = sub nsw i64 %i.ey, %i.fa
  %diff.check1307 = icmp ugt i64 %i.gi, -32
  %conflict.rdx1308 = or i1 %conflict.rdx1306, %diff.check1307
  %i.gj = shl nsw i64 %i.bz, 2
  %diff.check1309 = icmp ugt i64 %i.gj, -32
  %conflict.rdx1310 = or i1 %conflict.rdx1308, %diff.check1309
  %diff.check1311 = icmp ult i64 %i.fa, 32
  %conflict.rdx1312 = or i1 %conflict.rdx1310, %diff.check1311
  br i1 %conflict.rdx1312, label %.lr.ph872.preheader1367, label %vector.ph1315

vector.ph1315:                                    ; preds = %vector.memcheck1243
  %n.vec1316 = and i64 %wide.trip.count1028, 2147483640 ; 3 uses
  br label %vector.body1317

vector.body1317:                                  ; preds = %vector.body1317, %vector.ph1315
  %index1318 = phi i64 [ 0, %vector.ph1315 ], [ %index.next1321, %vector.body1317 ] ; 10 uses
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index1318 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.gk, align 4, !tbaa !52
  store <4 x i32> splat (i32 -1), ptr %i.gl, align 4, !tbaa !52
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %index1318 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.gm, align 4, !tbaa !52
  store <4 x i32> splat (i32 -1), ptr %i.gn, align 4, !tbaa !52
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %index1318 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.go, align 4, !tbaa !52
  store <4 x i32> splat (i32 -1), ptr %i.gp, align 4, !tbaa !52
  %i.gq = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index1318 ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 16
  store <4 x i32> splat (i32 -1), ptr %i.gq, align 4, !tbaa !52
  store <4 x i32> splat (i32 -1), ptr %i.gr, align 4, !tbaa !52
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index1318 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 16
  store <4 x i32> splat (i32 1), ptr %i.gs, align 4, !tbaa !52
  store <4 x i32> splat (i32 1), ptr %i.gt, align 4, !tbaa !52
  %i.gu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1318 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store <4 x i32> splat (i32 1), ptr %i.gu, align 4, !tbaa !52
  store <4 x i32> splat (i32 1), ptr %i.gv, align 4, !tbaa !52
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index1318 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store <4 x i32> zeroinitializer, ptr %i.gw, align 4, !tbaa !52
  store <4 x i32> zeroinitializer, ptr %i.gx, align 4, !tbaa !52
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index1318 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %wide.load1319 = load <4 x i32>, ptr %i.gy, align 4, !tbaa !52
  %wide.load1320 = load <4 x i32>, ptr %i.gz, align 4, !tbaa !52
  %i.ha = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %index1318 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store <4 x i32> %wide.load1319, ptr %i.ha, align 4, !tbaa !52
  store <4 x i32> %wide.load1320, ptr %i.hb, align 4, !tbaa !52
  %index.next1321 = add nuw i64 %index1318, 8     ; 2 uses
  %i.hc = icmp eq i64 %index.next1321, %n.vec1316
  br i1 %i.hc, label %middle.block1322, label %vector.body1317, !llvm.loop !16

middle.block1322:                                 ; preds = %vector.body1317
  %cmp.n1323 = icmp eq i64 %n.vec1316, %wide.trip.count1028
  br i1 %cmp.n1323, label %._crit_edge873, label %.lr.ph872.preheader1367

.lr.ph872.preheader1367:                          ; preds = %vector.memcheck1243, %.lr.ph872.preheader, %middle.block1322
  %indvars.iv1025.ph = phi i64 [ 0, %vector.memcheck1243 ], [ 0, %.lr.ph872.preheader ], [ %n.vec1316, %middle.block1322 ]
  br label %.lr.ph872

.lr.ph872:                                        ; preds = %.lr.ph872.preheader1367, %.lr.ph872
  %indvars.iv1025 = phi i64 [ %indvars.iv.next1026, %.lr.ph872 ], [ %indvars.iv1025.ph, %.lr.ph872.preheader1367 ] ; 10 uses
  %i.hd = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv1025
  store i32 -1, ptr %i.hd, align 4, !tbaa !52
  %i.he = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv1025
  store i32 -1, ptr %i.he, align 4, !tbaa !52
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1025
  store i32 -1, ptr %i.hf, align 4, !tbaa !52
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %indvars.iv1025
  store i32 -1, ptr %i.hg, align 4, !tbaa !52
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1025
  store i32 1, ptr %i.hh, align 4, !tbaa !52
  %i.hi = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv1025
  store i32 1, ptr %i.hi, align 4, !tbaa !52
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv1025
  store i32 0, ptr %i.hj, align 4, !tbaa !52
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1025
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !52
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv1025
  store i32 %i.hl, ptr %i.hm, align 4, !tbaa !52
  %indvars.iv.next1026 = add nuw nsw i64 %indvars.iv1025, 1 ; 2 uses
  %exitcond1029.not = icmp eq i64 %indvars.iv.next1026, %wide.trip.count1028
  br i1 %exitcond1029.not, label %._crit_edge873, label %.lr.ph872, !llvm.loop !17

._crit_edge873:                                   ; preds = %.lr.ph872, %middle.block1322
  %i.hn = icmp eq i32 %i.j, 0
  br i1 %i.hn, label %cs_wclear.exit.thread, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge873
  %wide.trip.count.i = zext i32 %i.j to i64       ; 3 uses
  %min.iters.check1326 = icmp ult i32 %i.j, 8
  br i1 %min.iters.check1326, label %.lr.ph.i.preheader, label %vector.ph1327

vector.ph1327:                                    ; preds = %.lr.ph.preheader.i
  %n.vec1328 = and i64 %wide.trip.count.i, 4294967288 ; 3 uses
  br label %vector.body1329

vector.body1329:                                  ; preds = %pred.store.continue1346, %vector.ph1327
  %index1330 = phi i64 [ 0, %vector.ph1327 ], [ %index.next1347, %pred.store.continue1346 ] ; 9 uses
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  %wide.load1331 = load <4 x i32>, ptr %i.ho, align 4, !tbaa !52
  %wide.load1332 = load <4 x i32>, ptr %i.hp, align 4, !tbaa !52
  %i.hq = icmp ne <4 x i32> %wide.load1331, zeroinitializer ; 4 uses
  %i.hr = icmp ne <4 x i32> %wide.load1332, zeroinitializer ; 4 uses
  %i.hs = extractelement <4 x i1> %i.hq, i64 0
  br i1 %i.hs, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body1329
  store i32 1, ptr %i.ho, align 4, !tbaa !52
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body1329
  %i.ht = extractelement <4 x i1> %i.hq, i64 1
  br i1 %i.ht, label %pred.store.if1333, label %pred.store.continue1334

pred.store.if1333:                                ; preds = %pred.store.continue
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  store i32 1, ptr %i.hv, align 4, !tbaa !52
  br label %pred.store.continue1334

pred.store.continue1334:                          ; preds = %pred.store.if1333, %pred.store.continue
  %i.hw = extractelement <4 x i1> %i.hq, i64 2
  br i1 %i.hw, label %pred.store.if1335, label %pred.store.continue1336

pred.store.if1335:                                ; preds = %pred.store.continue1334
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hx, i64 8
  store i32 1, ptr %i.hy, align 4, !tbaa !52
  br label %pred.store.continue1336

pred.store.continue1336:                          ; preds = %pred.store.if1335, %pred.store.continue1334
  %i.hz = extractelement <4 x i1> %i.hq, i64 3
  br i1 %i.hz, label %pred.store.if1337, label %pred.store.continue1338

pred.store.if1337:                                ; preds = %pred.store.continue1336
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 12
  store i32 1, ptr %i.ib, align 4, !tbaa !52
  br label %pred.store.continue1338

pred.store.continue1338:                          ; preds = %pred.store.if1337, %pred.store.continue1336
  %i.ic = extractelement <4 x i1> %i.hr, i64 0
  br i1 %i.ic, label %pred.store.if1339, label %pred.store.continue1340

pred.store.if1339:                                ; preds = %pred.store.continue1338
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  store i32 1, ptr %i.ie, align 4, !tbaa !52
  br label %pred.store.continue1340

pred.store.continue1340:                          ; preds = %pred.store.if1339, %pred.store.continue1338
  %i.if = extractelement <4 x i1> %i.hr, i64 1
  br i1 %i.if, label %pred.store.if1341, label %pred.store.continue1342

pred.store.if1341:                                ; preds = %pred.store.continue1340
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 20
  store i32 1, ptr %i.ih, align 4, !tbaa !52
  br label %pred.store.continue1342

pred.store.continue1342:                          ; preds = %pred.store.if1341, %pred.store.continue1340
  %i.ii = extractelement <4 x i1> %i.hr, i64 2
  br i1 %i.ii, label %pred.store.if1343, label %pred.store.continue1344

pred.store.if1343:                                ; preds = %pred.store.continue1342
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 24
  store i32 1, ptr %i.ik, align 4, !tbaa !52
  br label %pred.store.continue1344

pred.store.continue1344:                          ; preds = %pred.store.if1343, %pred.store.continue1342
  %i.il = extractelement <4 x i1> %i.hr, i64 3
  br i1 %i.il, label %pred.store.if1345, label %pred.store.continue1346

pred.store.if1345:                                ; preds = %pred.store.continue1344
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %index1330
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 28
  store i32 1, ptr %i.in, align 4, !tbaa !52
  br label %pred.store.continue1346

pred.store.continue1346:                          ; preds = %pred.store.if1345, %pred.store.continue1344
  %index.next1347 = add nuw i64 %index1330, 8     ; 2 uses
  %i.io = icmp eq i64 %index.next1347, %n.vec1328
  br i1 %i.io, label %middle.block1348, label %vector.body1329, !llvm.loop !18

middle.block1348:                                 ; preds = %pred.store.continue1346
  %cmp.n1349 = icmp eq i64 %n.vec1328, %wide.trip.count.i
  br i1 %cmp.n1349, label %cs_wclear.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block1348
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec1328, %middle.block1348 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.p
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.p ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.ip = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv.i ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !52
  %.not.i = icmp eq i32 %i.iq, 0
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i
  store i32 1, ptr %i.ip, align 4, !tbaa !52
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %cs_wclear.exit, label %.lr.ph.i, !llvm.loop !19

cs_wclear.exit.thread:                            ; preds = %._crit_edge873, %._crit_edge868
  %.ph = phi i32 [ %i.em, %._crit_edge873 ], [ %i.ei, %._crit_edge868 ]
  %.ph1167 = phi ptr [ %i.el, %._crit_edge873 ], [ %i.ek, %._crit_edge868 ]
  %.not78486911641166.ph = phi i1 [ false, %._crit_edge873 ], [ true, %._crit_edge868 ]
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ba
  store i32 -2, ptr %i.ir, align 4, !tbaa !52
  store i32 -1, ptr %i.bb, align 4, !tbaa !52
  %i.is = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ba
  store i32 0, ptr %i.is, align 4, !tbaa !52
  br label %.preheader856

cs_wclear.exit:                                   ; preds = %bb.p, %middle.block1348
  %i.it = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.ba
  store i32 -2, ptr %i.it, align 4, !tbaa !52
  store i32 -1, ptr %i.bb, align 4, !tbaa !52
  %i.iu = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ba
  store i32 0, ptr %i.iu, align 4, !tbaa !52
  br i1 %i.ck, label %.lr.ph876, label %.lr.ph1000.preheader

.lr.ph876:                                        ; preds = %cs_wclear.exit
  %i.iv = sub nuw i32 -2, %i.j
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.ba ; 2 uses
  %wide.trip.count1033 = zext nneg i32 %i.j to i64
  br label %bb.q

.preheader856:                                    ; preds = %bb.x, %cs_wclear.exit.thread
  %.not784869116411661169 = phi i1 [ %.not78486911641166.ph, %cs_wclear.exit.thread ], [ false, %bb.x ]
  %2 = phi ptr [ %.ph1167, %cs_wclear.exit.thread ], [ %i.el, %bb.x ] ; 25 uses
  %3 = phi i32 [ %.ph, %cs_wclear.exit.thread ], [ %i.em, %bb.x ]
  %.0691.lcssa = phi i32 [ 0, %cs_wclear.exit.thread ], [ %.1692, %bb.x ] ; 2 uses
  %i.ix = icmp slt i32 %.0691.lcssa, %i.j
  br i1 %i.ix, label %.preheader855.lr.ph, label %.preheader848

.preheader855.lr.ph:                              ; preds = %.preheader856
  %wide.trip.count.i816 = zext i32 %i.j to i64    ; 2 uses
  %xtraiter1370 = and i64 %wide.trip.count.i816, 1
  %i.iy = icmp eq i32 %i.j, 1
  %unroll_iter = and i64 %wide.trip.count.i816, 2147483646
  %lcmp.mod1371.not = icmp eq i64 %xtraiter1370, 0
  %lcmp.mod1372 = trunc i32 %i.j to i1
  br label %.preheader855

bb.q:                                             ; preds = %.lr.ph876, %bb.x
  %indvars.iv1030 = phi i64 [ 0, %.lr.ph876 ], [ %indvars.iv.next1031, %bb.x ] ; 11 uses
  %.0691875 = phi i32 [ 0, %.lr.ph876 ], [ %.1692, %bb.x ] ; 3 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.cd, i64 %indvars.iv1030
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !52 ; 3 uses
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv1030
  store i32 -2, ptr %i.jc, align 4, !tbaa !52
  %i.jd = add nsw i32 %.0691875, 1
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1030
  store i32 -1, ptr %i.je, align 4, !tbaa !52
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.cg, i64 %indvars.iv1030
  store i32 0, ptr %i.jf, align 4, !tbaa !52
  br label %bb.x

bb.s:                                             ; preds = %bb.q
  %i.jg = icmp sgt i32 %i.ja, %i.o
  br i1 %i.jg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1030
  store i32 0, ptr %i.jh, align 4, !tbaa !52
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv1030
  store i32 -1, ptr %i.ji, align 4, !tbaa !52
  %i.jj = add nsw i32 %.0691875, 1
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1030
  store i32 %i.iv, ptr %i.jk, align 4, !tbaa !52
  %i.jl = load i32, ptr %i.iw, align 4, !tbaa !52
  %i.jm = add nsw i32 %i.jl, 1
  store i32 %i.jm, ptr %i.iw, align 4, !tbaa !52
  br label %bb.x

bb.u:                                             ; preds = %bb.s
  %i.jn = sext i32 %i.ja to i64
  %i.jo = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.jn ; 3 uses
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !52 ; 2 uses
  %.not809 = icmp eq i32 %i.jp, -1
  br i1 %.not809, label %._crit_edge1119, label %bb.v

._crit_edge1119:                                  ; preds = %bb.u
  %.pre1120 = trunc nuw nsw i64 %indvars.iv1030 to i32
  br label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.jq = sext i32 %i.jp to i64
  %i.jr = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.jq
  %i.js = trunc nuw nsw i64 %indvars.iv1030 to i32 ; 2 uses
  store i32 %i.js, ptr %i.jr, align 4, !tbaa !52
  %.pre1112 = load i32, ptr %i.jo, align 4, !tbaa !52
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge1119, %bb.v
  %.pre-phi = phi i32 [ %.pre1120, %._crit_edge1119 ], [ %i.js, %bb.v ]
  %i.jt = phi i32 [ -1, %._crit_edge1119 ], [ %.pre1112, %bb.v ]
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1030
  store i32 %i.jt, ptr %i.ju, align 4, !tbaa !52
  store i32 %.pre-phi, ptr %i.jo, align 4, !tbaa !52
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.w, %bb.t
  %.1692 = phi i32 [ %i.jd, %bb.r ], [ %i.jj, %bb.t ], [ %.0691875, %bb.w ] ; 2 uses
  %indvars.iv.next1031 = add nuw nsw i64 %indvars.iv1030, 1 ; 2 uses
  %exitcond1034.not = icmp eq i64 %indvars.iv.next1031, %wide.trip.count1033
  br i1 %exitcond1034.not, label %.preheader856, label %bb.q, !llvm.loop !20

.preheader855:                                    ; preds = %.preheader855.lr.ph, %bb.bq
  %.2693995 = phi i32 [ %.0691.lcssa, %.preheader855.lr.ph ], [ %.3694.lcssa119011991214, %bb.bq ]
  %.0696994 = phi i32 [ %i.bc, %.preheader855.lr.ph ], [ %spec.select814, %bb.bq ] ; 4 uses
  %.0702993 = phi i32 [ 2, %.preheader855.lr.ph ], [ %.1703.lcssa12011212, %bb.bq ] ; 5 uses
  %.0708992 = phi i32 [ 0, %.preheader855.lr.ph ], [ %.2710.lcssa1216, %bb.bq ] ; 3 uses
  %.0736991 = phi i32 [ 0, %.preheader855.lr.ph ], [ %i.wb, %bb.bq ] ; 2 uses
  %i.jv = icmp slt i32 %.0708992, %i.j
  br i1 %i.jv, label %.lr.ph879.preheader, label %.critedge

.lr.ph879.preheader:                              ; preds = %.preheader855
  %i.jw = sext i32 %.0708992 to i64
  br label %.lr.ph879

.preheader848:                                    ; preds = %bb.bq, %.preheader856
  br i1 %i.ck, label %.lr.ph997.preheader, label %.preheader847

.lr.ph997.preheader:                              ; preds = %.preheader848
  %wide.trip.count1096 = zext nneg i32 %i.j to i64 ; 3 uses
  %min.iters.check1352 = icmp ult i32 %i.j, 8
  br i1 %min.iters.check1352, label %.lr.ph997.preheader1363, label %vector.ph1353

vector.ph1353:                                    ; preds = %.lr.ph997.preheader
  %n.vec1354 = and i64 %wide.trip.count1096, 2147483640 ; 3 uses
  br label %vector.body1355

vector.body1355:                                  ; preds = %vector.body1355, %vector.ph1353
  %index1356 = phi i64 [ 0, %vector.ph1353 ], [ %index.next1359, %vector.body1355 ] ; 2 uses
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index1356 ; 3 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 16 ; 2 uses
  %wide.load1357 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !52
  %wide.load1358 = load <4 x i32>, ptr %i.jy, align 4, !tbaa !52
  %i.jz = sub <4 x i32> splat (i32 -2), %wide.load1357
  %i.ka = sub <4 x i32> splat (i32 -2), %wide.load1358
  store <4 x i32> %i.jz, ptr %i.jx, align 4, !tbaa !52
  store <4 x i32> %i.ka, ptr %i.jy, align 4, !tbaa !52
  %index.next1359 = add nuw i64 %index1356, 8     ; 2 uses
  %i.kb = icmp eq i64 %index.next1359, %n.vec1354
  br i1 %i.kb, label %middle.block1360, label %vector.body1355, !llvm.loop !21

middle.block1360:                                 ; preds = %vector.body1355
  %cmp.n1361 = icmp eq i64 %n.vec1354, %wide.trip.count1096
  br i1 %cmp.n1361, label %.preheader847, label %.lr.ph997.preheader1363

.lr.ph997.preheader1363:                          ; preds = %.lr.ph997.preheader, %middle.block1360
  %indvars.iv1093.ph = phi i64 [ 0, %.lr.ph997.preheader ], [ %n.vec1354, %middle.block1360 ]
  br label %.lr.ph997

.lr.ph879:                                        ; preds = %.lr.ph879.preheader, %bb.y
  %indvars.iv1035 = phi i64 [ %i.jw, %.lr.ph879.preheader ], [ %indvars.iv.next1036, %bb.y ] ; 3 uses
  %i.kc = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %indvars.iv1035
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !52 ; 2 uses
  %i.ke = icmp eq i32 %i.kd, -1
  br i1 %i.ke, label %bb.y, label %.critedge.loopexit.split.loop.exit1221

bb.y:                                             ; preds = %.lr.ph879
  %indvars.iv.next1036 = add nsw i64 %indvars.iv1035, 1 ; 2 uses
  %exitcond1038.not = icmp eq i64 %indvars.iv.next1036, %i.ba
  br i1 %exitcond1038.not, label %.critedge, label %.lr.ph879, !llvm.loop !22

.critedge.loopexit.split.loop.exit1221:           ; preds = %.lr.ph879
  %i.kf = trunc nsw i64 %indvars.iv1035 to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.y, %.critedge.loopexit.split.loop.exit1221, %.preheader855
  %.1709.lcssa = phi i32 [ %.0708992, %.preheader855 ], [ %i.kf, %.critedge.loopexit.split.loop.exit1221 ], [ %i.j, %bb.y ] ; 4 uses
  %.2720 = phi i32 [ -1, %.preheader855 ], [ %i.kd, %.critedge.loopexit.split.loop.exit1221 ], [ -1, %bb.y ] ; 6 uses
  %i.kg = sext i32 %.2720 to i64                  ; 10 uses
  %i.kh = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.kg ; 2 uses
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !52 ; 2 uses
  %.not788 = icmp eq i32 %i.ki, -1
  br i1 %.not788, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge
  %i.kj = sext i32 %i.ki to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.kj
  store i32 -1, ptr %i.kk, align 4, !tbaa !52
  %.pre1113 = load i32, ptr %i.kh, align 4, !tbaa !52
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge
  %i.kl = phi i32 [ %.pre1113, %bb.z ], [ -1, %.critedge ]
  %i.km = sext i32 %.1709.lcssa to i64
  %i.kn = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.km
  store i32 %i.kl, ptr %i.kn, align 4, !tbaa !52
  %i.ko = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.kg ; 3 uses
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !52 ; 6 uses
  %i.kq = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.kg ; 4 uses
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !52 ; 4 uses
  %i.ks = add nsw i32 %i.kr, %.2693995            ; 2 uses
  %i.kt = icmp slt i32 %i.kp, 1
  %i.ku = add nsw i32 %.1709.lcssa, %.0696994
  %.not789 = icmp slt i32 %i.ku, %3
  %or.cond810 = select i1 %i.kt, i1 true, i1 %.not789
  br i1 %or.cond810, label %.loopexit853, label %.preheader854

.preheader854:                                    ; preds = %bb.aa
  br i1 %i.ck, label %.lr.ph886.preheader, label %.preheader852

.lr.ph886.preheader:                              ; preds = %.preheader854
  br i1 %i.iy, label %.lr.ph886.epil.preheader, label %.lr.ph886

.preheader852.loopexit.unr-lcssa:                 ; preds = %bb.ae
  br i1 %lcmp.mod1371.not, label %.preheader852, label %.lr.ph886.epil.preheader

.lr.ph886.epil.preheader:                         ; preds = %.preheader852.loopexit.unr-lcssa, %.lr.ph886.preheader
  %indvars.iv1039.epil.init = phi i64 [ 0, %.lr.ph886.preheader ], [ %indvars.iv.next1040.1, %.preheader852.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1372)
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1039.epil.init ; 2 uses
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !52 ; 2 uses
  %i.kx = icmp sgt i32 %i.kw, -1
  br i1 %i.kx, label %bb.ab, label %.preheader852

bb.ab:                                            ; preds = %.lr.ph886.epil.preheader
  %i.ky = zext nneg i32 %i.kw to i64
  %i.kz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ky ; 2 uses
  %i.la = load i32, ptr %i.kz, align 4, !tbaa !52
  store i32 %i.la, ptr %i.kv, align 4, !tbaa !52
  %i.lb = trunc i64 %indvars.iv1039.epil.init to i32
  %i.lc = sub i32 -2, %i.lb
  store i32 %i.lc, ptr %i.kz, align 4, !tbaa !52
end_hunk_0
begin_hunk_1_@cs_amd:bb.a
  br label %.lr.ph958

.lr.ph958:                                        ; preds = %.lr.ph958.preheader, %.lr.ph958
  %indvars.iv1075 = phi i64 [ %i.tn, %.lr.ph958.preheader ], [ %indvars.iv.next1076, %.lr.ph958 ]
  %indvars.iv.next1076 = add nsw i64 %indvars.iv1075, 1 ; 3 uses
  %i.to = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next1076
  %i.tp = load i32, ptr %i.to, align 4, !tbaa !52
  %i.tq = sext i32 %i.tp to i64
  %i.tr = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.tq
  store i32 %.2704974, ptr %i.tr, align 4, !tbaa !52
  %i.ts = load i32, ptr %i.tj, align 4, !tbaa !52
  %i.tt = add i32 %i.tl, %i.ts
  %i.tu = sext i32 %i.tt to i64
  %.not795.not = icmp slt i64 %indvars.iv.next1076, %i.tu
  br i1 %.not795.not, label %.lr.ph958, label %._crit_edge959, !llvm.loop !33

._crit_edge959:                                   ; preds = %.lr.ph958
  %.pre1116 = load i32, ptr %i.td, align 4, !tbaa !52 ; 2 uses
  %.not796966 = icmp eq i32 %.pre1116, -1
  br i1 %.not796966, label %._crit_edge971.thread, label %.lr.ph970

._crit_edge971.thread:                            ; preds = %._crit_edge959
  %i.tv = add nuw nsw i32 %.2704974, 1
  br label %.critedge7

.lr.ph970:                                        ; preds = %bb.bf, %._crit_edge959
  %i.tw = phi i32 [ %.pre1116, %._crit_edge959 ], [ %i.te, %bb.bf ]
  %i.tx = sub nuw i32 -2, %.2731973
  %i.ty = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tc ; 2 uses
  br label %bb.bg

bb.bg:                                            ; preds = %.lr.ph970, %bb.bj
  %.0713968 = phi i32 [ %.2731973, %.lr.ph970 ], [ %.1714, %bb.bj ] ; 2 uses
  %.2725967 = phi i32 [ %i.tw, %.lr.ph970 ], [ %.3726, %bb.bj ] ; 2 uses
  %i.tz = sext i32 %.2725967 to i64               ; 7 uses
  %i.ua = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.tz
  %i.ub = load i32, ptr %i.ua, align 4, !tbaa !52
  %i.uc = icmp eq i32 %i.ub, %i.tg
  br i1 %i.uc, label %bb.bh, label %.critedge813

bb.bh:                                            ; preds = %bb.bg
  %i.ud = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.tz
  %i.ue = load i32, ptr %i.ud, align 4, !tbaa !52
  %.not1232 = icmp eq i32 %i.ue, %i.ti
  %i.uf = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.tz ; 2 uses
  br i1 %.not1232, label %.lr.ph965, label %.critedge813

.lr.ph965:                                        ; preds = %bb.bh
  %i.ug = load i32, ptr %i.uf, align 4, !tbaa !52 ; 4 uses
  %i.uh = add i32 %i.tl, %i.ug                    ; 2 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.ug, i32 %i.uh)
  %wide.trip.count1081 = sext i32 %smax to i64
  %exitcond1082.not1237.not = icmp slt i32 %i.ug, %i.uh
  br i1 %exitcond1082.not1237.not, label %select.unfold.lr.ph, label %.critedge9

select.unfold.lr.ph:                              ; preds = %.lr.ph965
  %i.ui = sext i32 %i.ug to i64
  br label %select.unfold

bb.bi:                                            ; preds = %select.unfold
  %exitcond1082.not = icmp eq i64 %indvars.iv.next1079, %wide.trip.count1081
  br i1 %exitcond1082.not, label %.critedge9, label %select.unfold

select.unfold:                                    ; preds = %select.unfold.lr.ph, %bb.bi
  %indvars.iv10781238 = phi i64 [ %i.ui, %select.unfold.lr.ph ], [ %indvars.iv.next1079, %bb.bi ]
  %indvars.iv.next1079 = add nsw i64 %indvars.iv10781238, 1 ; 3 uses
  %i.uj = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv.next1079
  %i.uk = load i32, ptr %i.uj, align 4, !tbaa !52
  %i.ul = sext i32 %i.uk to i64
  %i.um = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.ul
  %i.un = load i32, ptr %i.um, align 4, !tbaa !52
  %.not799.not = icmp eq i32 %i.un, %.2704974
  br i1 %.not799.not, label %bb.bi, label %.critedge813

.critedge9:                                       ; preds = %bb.bi, %.lr.ph965
  store i32 %i.tx, ptr %i.uf, align 4, !tbaa !52
  %i.uo = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.tz ; 2 uses
  %i.up = load i32, ptr %i.uo, align 4, !tbaa !52
  %i.uq = load i32, ptr %i.ty, align 4, !tbaa !52
  %i.ur = add nsw i32 %i.uq, %i.up
  store i32 %i.ur, ptr %i.ty, align 4, !tbaa !52
  store i32 0, ptr %i.uo, align 4, !tbaa !52
  %i.us = getelementptr inbounds [4 x i8], ptr %i.ca, i64 %i.tz
  store i32 -1, ptr %i.us, align 4, !tbaa !52
  %i.ut = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.tz
  %i.uu = load i32, ptr %i.ut, align 4, !tbaa !52 ; 2 uses
  %i.uv = sext i32 %.0713968 to i64
  %i.uw = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.uv
  store i32 %i.uu, ptr %i.uw, align 4, !tbaa !52
  br label %bb.bj

.critedge813:                                     ; preds = %select.unfold, %bb.bg, %bb.bh
  %i.ux = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.tz
  %i.uy = load i32, ptr %i.ux, align 4, !tbaa !52
  br label %bb.bj

bb.bj:                                            ; preds = %.critedge813, %.critedge9
  %.3726 = phi i32 [ %i.uu, %.critedge9 ], [ %i.uy, %.critedge813 ] ; 2 uses
  %.1714 = phi i32 [ %.0713968, %.critedge9 ], [ %.2725967, %.critedge813 ]
  %.not796 = icmp eq i32 %.3726, -1
  br i1 %.not796, label %._crit_edge971, label %bb.bg, !llvm.loop !34

._crit_edge971:                                   ; preds = %bb.bj
  %.pre1117 = load i32, ptr %i.td, align 4, !tbaa !52 ; 2 uses
  %i.uz = add nuw nsw i32 %.2704974, 1            ; 2 uses
  %.not793 = icmp eq i32 %.pre1117, -1
  br i1 %.not793, label %.critedge7, label %.lr.ph976, !llvm.loop !35

.critedge7:                                       ; preds = %._crit_edge971, %.lr.ph976, %._crit_edge971.thread, %bb.be, %.lr.ph982
  %.3705 = phi i32 [ %.1703980, %.lr.ph982 ], [ %.1703980, %bb.be ], [ %i.tv, %._crit_edge971.thread ], [ %i.uz, %._crit_edge971 ], [ %.2704974, %.lr.ph976 ] ; 3 uses
  %indvars.iv.next1084 = add nsw i64 %indvars.iv1083, 1 ; 2 uses
  %exitcond1087.not = icmp eq i64 %indvars.iv.next1084, %wide.trip.count1086
  br i1 %exitcond1087.not, label %.lr.ph987, label %.lr.ph982, !llvm.loop !36

bb.bk:                                            ; preds = %.lr.ph987, %bb.bo
  %indvars.iv1088 = phi i64 [ %i.sq, %.lr.ph987 ], [ %indvars.iv.next1089, %bb.bo ] ; 2 uses
  %.11985 = phi i32 [ %i.my, %.lr.ph987 ], [ %.12, %bb.bo ] ; 3 uses
  %.2710984 = phi i32 [ %.1709.lcssa, %.lr.ph987 ], [ %.3711, %bb.bo ] ; 2 uses
  %i.va = getelementptr inbounds [4 x i8], ptr %2, i64 %indvars.iv1088
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !52 ; 4 uses
  %i.vc = sext i32 %i.vb to i64                   ; 4 uses
  %i.vd = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.vc ; 2 uses
  %i.ve = load i32, ptr %i.vd, align 4, !tbaa !52 ; 3 uses
  %i.vf = icmp sgt i32 %i.ve, -1
  br i1 %i.vf, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.vg = sub nsw i32 0, %i.ve
  store i32 %i.vg, ptr %i.vd, align 4, !tbaa !52
  %i.vh = getelementptr inbounds [4 x i8], ptr %i.cd, i64 %i.vc ; 2 uses
  %i.vi = load i32, ptr %i.vh, align 4, !tbaa !52
  %i.vj = add nsw i32 %i.vi, %.4741
  %. = tail call i32 @llvm.smin.i32(i32 %i.vj, i32 %i.sp)
  %i.vk = add nsw i32 %., %i.ve                   ; 3 uses
  %i.vl = sext i32 %i.vk to i64
  %i.vm = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.vl ; 3 uses
  %i.vn = load i32, ptr %i.vm, align 4, !tbaa !52 ; 2 uses
  %.not792 = icmp eq i32 %i.vn, -1
  br i1 %.not792, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vo = sext i32 %i.vn to i64
  %i.vp = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.vo
  store i32 %i.vb, ptr %i.vp, align 4, !tbaa !52
  %.pre1118 = load i32, ptr %i.vm, align 4, !tbaa !52
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.vq = phi i32 [ %.pre1118, %bb.bm ], [ -1, %bb.bl ]
  %i.vr = getelementptr inbounds [4 x i8], ptr %i.bu, i64 %i.vc
  store i32 %i.vq, ptr %i.vr, align 4, !tbaa !52
  %i.vs = getelementptr inbounds [4 x i8], ptr %i.be, i64 %i.vc
  store i32 -1, ptr %i.vs, align 4, !tbaa !52
  store i32 %i.vb, ptr %i.vm, align 4, !tbaa !52
  %i.vt = tail call i32 @llvm.smin.i32(i32 %.2710984, i32 %i.vk)
  store i32 %i.vk, ptr %i.vh, align 4, !tbaa !52
  %i.vu = add nsw i32 %.11985, 1
  %i.vv = sext i32 %.11985 to i64
  %i.vw = getelementptr inbounds [4 x i8], ptr %2, i64 %i.vv
  store i32 %i.vb, ptr %i.vw, align 4, !tbaa !52
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bk, %bb.bn
  %.3711 = phi i32 [ %.2710984, %bb.bk ], [ %i.vt, %bb.bn ] ; 3 uses
  %.12 = phi i32 [ %.11985, %bb.bk ], [ %i.vu, %bb.bn ] ; 5 uses
  %indvars.iv.next1089 = add nsw i64 %indvars.iv1088, 1 ; 2 uses
  %exitcond1092.not = icmp eq i64 %indvars.iv.next1089, %wide.trip.count1091
  br i1 %exitcond1092.not, label %._crit_edge988, label %bb.bk, !llvm.loop !37

._crit_edge988:                                   ; preds = %bb.bo
  store i32 %.1707, ptr %i.kq, align 4, !tbaa !52
  %i.vx = sub nsw i32 %.12, %i.my
  store i32 %i.vx, ptr %i.ou, align 4, !tbaa !52
  %i.vy = icmp eq i32 %.12, %i.my
  br i1 %i.vy, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %cs_wclear.exit833.thread, %._crit_edge988
  %.11.lcssa1219 = phi i32 [ %i.my, %cs_wclear.exit833.thread ], [ %.12, %._crit_edge988 ]
  %.2710.lcssa1217 = phi i32 [ %.1709.lcssa, %cs_wclear.exit833.thread ], [ %.3711, %._crit_edge988 ]
  %i.vz = phi i32 [ %i.sk, %cs_wclear.exit833.thread ], [ %i.sm, %._crit_edge988 ]
  %.3694.lcssa119011991215 = phi i32 [ %i.ks, %cs_wclear.exit833.thread ], [ %.4695, %._crit_edge988 ]
  %.1703.lcssa12011213 = phi i32 [ %i.sl, %cs_wclear.exit833.thread ], [ %.3705, %._crit_edge988 ]
  store i32 -1, ptr %i.mv, align 4, !tbaa !52
  %i.wa = getelementptr inbounds [4 x i8], ptr %i.cg, i64 %i.kg
  store i32 0, ptr %i.wa, align 4, !tbaa !52
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %._crit_edge988
  %.11.lcssa1218 = phi i32 [ %.11.lcssa1219, %bb.bp ], [ %.12, %._crit_edge988 ]
  %.2710.lcssa1216 = phi i32 [ %.2710.lcssa1217, %bb.bp ], [ %.3711, %._crit_edge988 ]
  %i.wb = phi i32 [ %i.vz, %bb.bp ], [ %i.sm, %._crit_edge988 ]
  %.3694.lcssa119011991214 = phi i32 [ %.3694.lcssa119011991215, %bb.bp ], [ %.4695, %._crit_edge988 ] ; 2 uses
  %.1703.lcssa12011212 = phi i32 [ %.1703.lcssa12011213, %bb.bp ], [ %.3705, %._crit_edge988 ]
  %spec.select814 = select i1 %i.mx, i32 %.1697, i32 %.11.lcssa1218
  %i.wc = icmp slt i32 %.3694.lcssa119011991214, %i.j
  br i1 %i.wc, label %.preheader855, label %.preheader848, !llvm.loop !38

.preheader847:                                    ; preds = %.lr.ph997, %middle.block1360, %.preheader848
  br i1 %.not784869116411661169, label %.preheader846, label %.lr.ph1000.preheader

.lr.ph1000.preheader:                             ; preds = %cs_wclear.exit, %.preheader847
  %i.wd = zext nneg i32 %i.bd to i64
  %i.we = shl nuw nsw i64 %i.wd, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.bx, i8 -1, i64 %i.we, i1 false), !tbaa !52
  br label %.preheader846

.lr.ph997:                                        ; preds = %.lr.ph997.preheader1363, %.lr.ph997
  %indvars.iv1093 = phi i64 [ %indvars.iv.next1094, %.lr.ph997 ], [ %indvars.iv1093.ph, %.lr.ph997.preheader1363 ] ; 2 uses
  %i.wf = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1093 ; 2 uses
  %i.wg = load i32, ptr %i.wf, align 4, !tbaa !52
  %i.wh = sub i32 -2, %i.wg
  store i32 %i.wh, ptr %i.wf, align 4, !tbaa !52
  %indvars.iv.next1094 = add nuw nsw i64 %indvars.iv1093, 1 ; 2 uses
  %exitcond1097.not = icmp eq i64 %indvars.iv.next1094, %wide.trip.count1096
  br i1 %exitcond1097.not, label %.preheader847, label %.lr.ph997, !llvm.loop !39

.preheader846:                                    ; preds = %.lr.ph1000.preheader, %.preheader847
  %.not784869116411661169117211741226 = phi i1 [ true, %.preheader847 ], [ false, %.lr.ph1000.preheader ]
  %i.wi = icmp sgt i32 %i.j, -1
  br i1 %i.wi, label %.lr.ph1002.preheader, label %.preheader

.lr.ph1002.preheader:                             ; preds = %.preheader846
  %i.wj = zext nneg i32 %i.j to i64               ; 6 uses
  %i.wk = and i64 %i.wj, 1
  %lcmp.mod1374.not.not = icmp eq i64 %i.wk, 0
  br i1 %lcmp.mod1374.not.not, label %.lr.ph1002.prol, label %.lr.ph1002.prol.loopexit

.lr.ph1002.prol:                                  ; preds = %.lr.ph1002.preheader
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %i.wj
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !52
  %i.wn = icmp sgt i32 %i.wm, 0
  br i1 %i.wn, label %.lr.ph1002.prol.loopexit.unr-lcssa, label %bb.br

bb.br:                                            ; preds = %.lr.ph1002.prol
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %i.wj ; 2 uses
  %i.wp = load i32, ptr %i.wo, align 4, !tbaa !52
  %i.wq = sext i32 %i.wp to i64
  %i.wr = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.wq
  %i.ws = load i32, ptr %i.wr, align 4, !tbaa !52
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %i.wj
  store i32 %i.ws, ptr %i.wt, align 4, !tbaa !52
  %i.wu = load i32, ptr %i.wo, align 4, !tbaa !52
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.wv
  store i32 %i.j, ptr %i.ww, align 4, !tbaa !52
  br label %.lr.ph1002.prol.loopexit.unr-lcssa

.lr.ph1002.prol.loopexit.unr-lcssa:               ; preds = %bb.br, %.lr.ph1002.prol
  %indvars.iv.next1102.prol = add nsw i64 %i.wj, -1
  br label %.lr.ph1002.prol.loopexit

.lr.ph1002.prol.loopexit:                         ; preds = %.lr.ph1002.prol.loopexit.unr-lcssa, %.lr.ph1002.preheader
  %indvars.iv1101.unr = phi i64 [ %i.wj, %.lr.ph1002.preheader ], [ %indvars.iv.next1102.prol, %.lr.ph1002.prol.loopexit.unr-lcssa ]
  %i.wx = icmp eq i32 %i.j, 0
  br i1 %i.wx, label %.lr.ph1004.preheader, label %.lr.ph1002

.lr.ph1004.preheader:                             ; preds = %bb.bu, %.lr.ph1002.prol.loopexit
  %i.wy = zext nneg i32 %i.j to i64
  br label %.lr.ph1004

.lr.ph1002:                                       ; preds = %.lr.ph1002.prol.loopexit, %bb.bu
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102.1, %bb.bu ], [ %indvars.iv1101.unr, %.lr.ph1002.prol.loopexit ] ; 7 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1101
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !52
  %i.xb = icmp sgt i32 %i.xa, 0
  br i1 %i.xb, label %.lr.ph1002.1, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1002
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1101 ; 2 uses
  %i.xd = load i32, ptr %i.xc, align 4, !tbaa !52
  %i.xe = sext i32 %i.xd to i64
  %i.xf = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xe
  %i.xg = load i32, ptr %i.xf, align 4, !tbaa !52
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1101
  store i32 %i.xg, ptr %i.xh, align 4, !tbaa !52
  %i.xi = load i32, ptr %i.xc, align 4, !tbaa !52
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xj
  %i.xl = trunc nuw nsw i64 %indvars.iv1101 to i32
  store i32 %i.xl, ptr %i.xk, align 4, !tbaa !52
  br label %.lr.ph1002.1

.lr.ph1002.1:                                     ; preds = %.lr.ph1002, %bb.bs
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -1 ; 4 uses
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next1102
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !52
  %i.xo = icmp sgt i32 %i.xn, 0
  br i1 %i.xo, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1002.1
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1102 ; 2 uses
  %i.xq = load i32, ptr %i.xp, align 4, !tbaa !52
  %i.xr = sext i32 %i.xq to i64
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xr
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !52
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next1102
  store i32 %i.xt, ptr %i.xu, align 4, !tbaa !52
  %i.xv = load i32, ptr %i.xp, align 4, !tbaa !52
  %i.xw = sext i32 %i.xv to i64
  %i.xx = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xw
  %i.xy = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  store i32 %i.xy, ptr %i.xx, align 4, !tbaa !52
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph1002.1
  %indvars.iv.next1102.1 = add nsw i64 %indvars.iv1101, -2
  %i.xz = icmp sgt i64 %indvars.iv1101, 1
  br i1 %i.xz, label %.lr.ph1002, label %.lr.ph1004.preheader, !llvm.loop !40

.preheader:                                       ; preds = %bb.bx, %.preheader846
  br i1 %.not784869116411661169117211741226, label %.sink.split1230, label %.lr.ph1008.preheader

.lr.ph1008.preheader:                             ; preds = %.preheader
  %wide.trip.count1110 = zext nneg i32 %i.bd to i64
  br label %.lr.ph1008

.lr.ph1004:                                       ; preds = %.lr.ph1004.preheader, %bb.bx
  %indvars.iv1104 = phi i64 [ %i.wy, %.lr.ph1004.preheader ], [ %indvars.iv.next1105, %bb.bx ] ; 6 uses
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1104
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !52
  %i.yc = icmp slt i32 %i.yb, 1
  br i1 %i.yc, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1004
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1104 ; 2 uses
  %i.ye = load i32, ptr %i.yd, align 4, !tbaa !52 ; 2 uses
  %.not787 = icmp eq i32 %i.ye, -1
  br i1 %.not787, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yf = sext i32 %i.ye to i64
  %i.yg = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.yf
  %i.yh = load i32, ptr %i.yg, align 4, !tbaa !52
  %i.yi = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1104
  store i32 %i.yh, ptr %i.yi, align 4, !tbaa !52
  %i.yj = load i32, ptr %i.yd, align 4, !tbaa !52
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.yk
  %i.ym = trunc nuw nsw i64 %indvars.iv1104 to i32
  store i32 %i.ym, ptr %i.yl, align 4, !tbaa !52
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %.lr.ph1004
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -1
  %i.yn = icmp sgt i64 %indvars.iv1104, 0
  br i1 %i.yn, label %.lr.ph1004, label %.preheader, !llvm.loop !41

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.bz
  %indvars.iv1107 = phi i64 [ 0, %.lr.ph1008.preheader ], [ %indvars.iv.next1108, %bb.bz ] ; 3 uses
  %.37211007 = phi i32 [ 0, %.lr.ph1008.preheader ], [ %.4722, %bb.bz ] ; 2 uses
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1107
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !52
  %i.yq = icmp eq i32 %i.yp, -1
  br i1 %i.yq, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph1008
  %i.yr = trunc nuw nsw i64 %indvars.iv1107 to i32
  %i.ys = tail call i32 @cs_tdfs(i32 noundef %i.yr, i32 noundef %.37211007, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.be, ptr noundef nonnull %i.cg) #7
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1008, %bb.by
  %.4722 = phi i32 [ %i.ys, %bb.by ], [ %.37211007, %.lr.ph1008 ]
  %indvars.iv.next1108 = add nuw nsw i64 %indvars.iv1107, 1 ; 2 uses
  %exitcond1111.not = icmp eq i64 %indvars.iv.next1108, %wide.trip.count1110
  br i1 %exitcond1111.not, label %.sink.split1230, label %.lr.ph1008, !llvm.loop !42

.sink.split1230:                                  ; preds = %bb.bz, %.preheader, %bb.l, %bb.m
  %.sink1231 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %bb.bz ]
  %i.yt = tail call ptr @cs_idone(ptr noundef %i.be, ptr noundef nonnull %.0746, ptr noundef %i.bh, i32 noundef %.sink1231) #7
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split1230, %bb.k, %bb.c, %bb.a, %bb.b
  %.0747 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.k ], [ null, %bb.c ], [ %i.yt, %.sink.split1230 ]
  ret ptr %.0747
}

declare ptr @cs_transpose(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare ptr @cs_add(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare ptr @cs_multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cs_spfree(ptr noundef) local_unnamed_addr #1

declare i32 @cs_fkeep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal range(i32 0, 2) i32 @cs_diag(i32 noundef %0, i32 noundef %1, double %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = icmp ne i32 %0, %1
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @cs_sprealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_idone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cs_tdfs(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !53}
!9 = distinct !{!9, !53}
!10 = distinct !{!10, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !53, !56, !57}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !53, !56}
!16 = distinct !{!16, !53, !56, !57}
!17 = distinct !{!17, !53, !56}
!18 = distinct !{!18, !53, !56, !57}
!19 = distinct !{!19, !53, !57, !56}
!20 = distinct !{!20, !53}
!21 = distinct !{!21, !53, !56, !57}
!22 = distinct !{!22, !53}
!23 = distinct !{!23, !53}
!24 = distinct !{!24, !53}
!25 = distinct !{!25, !53}
!26 = distinct !{!26, !53}
!27 = distinct !{!27, !53}
!28 = distinct !{!28, !53}
!29 = distinct !{!29, !53}
!30 = distinct !{!30, !53}
!31 = distinct !{!31, !53}
!32 = distinct !{!32, !53}
!33 = distinct !{!33, !53}
!34 = distinct !{!34, !53}
!35 = distinct !{!35, !53}
!36 = distinct !{!36, !53}
!37 = distinct !{!37, !53}
!38 = distinct !{!38, !53}
!39 = distinct !{!39, !53, !57, !56}
!40 = distinct !{!40, !53}
!41 = distinct !{!41, !53}
!42 = distinct !{!42, !53}
!43 = !{!"any pointer", !4, i64 0}
!44 = !{!"p1 int", !43, i64 0}
!45 = !{!"p1 double", !43, i64 0}
!46 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !44, i64 16, !44, i64 24, !45, i64 32, !5, i64 40}
!47 = !{!46, !5, i64 40}
!48 = !{!46, !5, i64 4}
!49 = !{!46, !5, i64 8}
!50 = !{!46, !44, i64 16}
!51 = !{!46, !44, i64 24}
!52 = !{!5, !5, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!11}
!55 = !{!12}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!46, !5, i64 0}
end_hunk_1
