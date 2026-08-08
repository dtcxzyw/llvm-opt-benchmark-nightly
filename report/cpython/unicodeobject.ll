inline.NumInlined: 2798
inline.NumDeleted: 306
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_PyUnicode_EncodeUTF32:bb.a
  %i.bv = shl i64 %i.bu, 2
  %scevgep512 = getelementptr i8, ptr %.246.lcssa.i, i64 %i.bv
  %bound0513 = icmp ult ptr %.246.lcssa.i, %scevgep74.i
  %bound1514 = icmp ult ptr %.2.lcssa.i, %scevgep512
  %found.conflict515 = and i1 %bound0513, %bound1514
  br i1 %found.conflict515, label %.lr.ph64.i.preheader, label %vector.ph518

vector.ph518:                                     ; preds = %vector.memcheck511
  %n.vec519 = and i64 %i.bt, -8                   ; 4 uses
  %i.bw = getelementptr i8, ptr %.2.lcssa.i, i64 %n.vec519
  %i.bx = shl i64 %n.vec519, 2
  %i.by = getelementptr i8, ptr %.246.lcssa.i, i64 %i.bx
  br label %vector.body520

vector.body520:                                   ; preds = %vector.body520, %vector.ph518
  %index521 = phi i64 [ 0, %vector.ph518 ], [ %index.next526, %vector.body520 ] ; 3 uses
  %next.gep522 = getelementptr i8, ptr %.2.lcssa.i, i64 %index521 ; 2 uses
  %i.bz = shl i64 %index521, 2
  %next.gep523 = getelementptr i8, ptr %.246.lcssa.i, i64 %i.bz ; 2 uses
  %i.ca = getelementptr i8, ptr %next.gep522, i64 4
  %wide.load524 = load <4 x i8>, ptr %next.gep522, align 1, !tbaa !205, !alias.scope !448
  %wide.load525 = load <4 x i8>, ptr %i.ca, align 1, !tbaa !205, !alias.scope !448
  %i.cb = zext <4 x i8> %wide.load524 to <4 x i32>
  %i.cc = zext <4 x i8> %wide.load525 to <4 x i32>
  %i.cd = shl nuw <4 x i32> %i.cb, splat (i32 24)
  %i.ce = shl nuw <4 x i32> %i.cc, splat (i32 24)
  %i.cf = getelementptr i8, ptr %next.gep523, i64 16
  store <4 x i32> %i.cd, ptr %next.gep523, align 4, !tbaa !7, !alias.scope !451, !noalias !448
  store <4 x i32> %i.ce, ptr %i.cf, align 4, !tbaa !7, !alias.scope !451, !noalias !448
  %index.next526 = add nuw i64 %index521, 8       ; 2 uses
  %i.cg = icmp eq i64 %index.next526, %n.vec519
  br i1 %i.cg, label %middle.block527, label %vector.body520, !llvm.loop !453

middle.block527:                                  ; preds = %vector.body520
  %cmp.n528 = icmp eq i64 %i.bt, %n.vec519
  br i1 %cmp.n528, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i.preheader

.lr.ph64.i.preheader:                             ; preds = %vector.memcheck511, %.lr.ph64.preheader.i, %middle.block527
  %.363.i.ph = phi ptr [ %.2.lcssa.i, %vector.memcheck511 ], [ %.2.lcssa.i, %.lr.ph64.preheader.i ], [ %i.bw, %middle.block527 ]
  %.34762.i.ph = phi ptr [ %.246.lcssa.i, %vector.memcheck511 ], [ %.246.lcssa.i, %.lr.ph64.preheader.i ], [ %i.by, %middle.block527 ]
  br label %.lr.ph64.i

.lr.ph59.i:                                       ; preds = %bb.n, %.lr.ph59.i
  %.258.i = phi ptr [ %i.cz, %.lr.ph59.i ], [ %.0.i, %bb.n ] ; 5 uses
  %.24657.i = phi ptr [ %i.da, %.lr.ph59.i ], [ %.0211, %bb.n ] ; 5 uses
  %i.ch = load i8, ptr %.258.i, align 1, !tbaa !205
  %i.ci = zext i8 %i.ch to i32
  %i.cj = shl nuw i32 %i.ci, 24
  store i32 %i.cj, ptr %.24657.i, align 4, !tbaa !7
  %i.ck = getelementptr i8, ptr %.258.i, i64 1
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !205
  %i.cm = zext i8 %i.cl to i32
  %i.cn = shl nuw i32 %i.cm, 24
  %i.co = getelementptr i8, ptr %.24657.i, i64 4
  store i32 %i.cn, ptr %i.co, align 4, !tbaa !7
  %i.cp = getelementptr i8, ptr %.258.i, i64 2
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !205
  %i.cr = zext i8 %i.cq to i32
  %i.cs = shl nuw i32 %i.cr, 24
  %i.ct = getelementptr i8, ptr %.24657.i, i64 8
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !7
  %i.cu = getelementptr i8, ptr %.258.i, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !205
  %i.cw = zext i8 %i.cv to i32
  %i.cx = shl nuw i32 %i.cw, 24
  %i.cy = getelementptr i8, ptr %.24657.i, i64 12
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !7
  %i.cz = getelementptr i8, ptr %.258.i, i64 4    ; 4 uses
  %i.da = getelementptr i8, ptr %.24657.i, i64 16 ; 2 uses
  %i.db = icmp ult ptr %i.cz, %i.ag
  br i1 %i.db, label %.lr.ph59.i, label %.preheader.loopexit.i, !llvm.loop !454

.lr.ph64.i:                                       ; preds = %.lr.ph64.i.preheader, %.lr.ph64.i
  %.363.i = phi ptr [ %i.dc, %.lr.ph64.i ], [ %.363.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %.34762.i = phi ptr [ %i.dg, %.lr.ph64.i ], [ %.34762.i.ph, %.lr.ph64.i.preheader ] ; 2 uses
  %i.dc = getelementptr i8, ptr %.363.i, i64 1    ; 2 uses
  %i.dd = load i8, ptr %.363.i, align 1, !tbaa !205
  %i.de = zext i8 %i.dd to i32
  %i.df = shl nuw i32 %i.de, 24
  %i.dg = getelementptr i8, ptr %.34762.i, i64 4
  store i32 %i.df, ptr %.34762.i, align 4, !tbaa !7
  %exitcond75.not.i = icmp eq ptr %i.dc, %scevgep74.i
  br i1 %exitcond75.not.i, label %ucs1lib_utf32_encode.exit, label %.lr.ph64.i, !llvm.loop !455

bb.o:                                             ; preds = %bb.g
  %i.dh = tail call ptr @PyBytesWriter_Create(i64 noundef %i.x) #33 ; 6 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %ucs1lib_utf32_encode.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call ptr @PyBytesWriter_GetData(ptr noundef nonnull %i.dh) #33 ; 3 uses
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dk = getelementptr i8, ptr %i.dj, i64 4
  store i32 65279, ptr %i.dj, align 4, !tbaa !7
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0 = phi ptr [ %i.dk, %bb.q ], [ %i.dj, %bb.p ] ; 2 uses
  %i.dl = icmp eq i64 %.val122, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = tail call ptr @PyBytesWriter_Finish(ptr noundef nonnull %i.dh) #33
  br label %ucs1lib_utf32_encode.exit

bb.t:                                             ; preds = %bb.r
  %switch.selectcmp = icmp eq i32 %2, 1
  %switch.select = select i1 %switch.selectcmp, ptr @.str.72, ptr @.str.76
  %switch.selectcmp113 = icmp eq i32 %2, -1
  %switch.select114 = select i1 %switch.selectcmp113, ptr @.str.71, ptr %switch.select ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store ptr null, ptr %i.a, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #33
  store ptr null, ptr %i.b, align 8, !tbaa !194
  %i.dn = icmp sgt i64 %.val122, 0
  br i1 %i.dn, label %.lr.ph, label %Py_XDECREF.exit191

.lr.ph:                                           ; preds = %bb.t
  %i.do = icmp eq i32 %i.k, 2
  %i.dp = getelementptr [4 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.dq = ptrtoint ptr %i.dp to i64
  %i.dr = getelementptr [2 x i8], ptr %.0.i, i64 %.val122 ; 5 uses
  %i.ds = ptrtoint ptr %i.dr to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph, %raise_encode_exception.exit
  %.081271 = phi i64 [ 0, %.lr.ph ], [ %i.il, %raise_encode_exception.exit ] ; 4 uses
  %.1208270 = phi ptr [ %.0, %.lr.ph ], [ %.4, %raise_encode_exception.exit ] ; 8 uses
  %i.dt = sub i64 %.val122, %.081271              ; 11 uses
  %i.du = and i64 %i.dt, -4                       ; 2 uses
  br i1 %i.do, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %i.dv = getelementptr [2 x i8], ptr %.0.i, i64 %.081271 ; 6 uses
  %i.dw = getelementptr [2 x i8], ptr %i.dv, i64 %i.du ; 3 uses
  %i.dx = icmp ult ptr %i.dv, %i.dw               ; 2 uses
  br i1 %i.v, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  br i1 %i.dx, label %.lr.ph.i128, label %._crit_edge.i

.lr.ph.i128:                                      ; preds = %bb.w, %bb.x
  %.065107.i = phi ptr [ %i.eo, %bb.x ], [ %i.dv, %bb.w ] ; 5 uses
  %.070106.i = phi ptr [ %i.ep, %bb.x ], [ %.1208270, %bb.w ] ; 6 uses
  %i.dy = load <4 x i16>, ptr %.065107.i, align 2, !tbaa !208 ; 3 uses
  %i.dz = xor <4 x i16> %i.dy, splat (i16 -10240)
  %i.ea = call i16 @llvm.vector.reduce.and.v4i16(<4 x i16> %i.dz)
  %i.eb = icmp ult i16 %i.ea, 2048
  br i1 %i.eb, label %._crit_edge.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i128
  %i.ec = load i16, ptr %.065107.i, align 2, !tbaa !208
  %i.ed = zext i16 %i.ec to i32
  %i.ee = getelementptr i8, ptr %.065107.i, i64 2
  %i.ef = load i16, ptr %i.ee, align 2, !tbaa !208
  store i32 %i.ed, ptr %.070106.i, align 4, !tbaa !7
  %i.eg = zext i16 %i.ef to i32
  %i.eh = getelementptr i8, ptr %.070106.i, i64 4
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !7
  %i.ei = extractelement <4 x i16> %i.dy, i64 2
  %i.ej = zext i16 %i.ei to i32
  %i.ek = getelementptr i8, ptr %.070106.i, i64 8
  store i32 %i.ej, ptr %i.ek, align 4, !tbaa !7
  %i.el = extractelement <4 x i16> %i.dy, i64 3
  %i.em = zext i16 %i.el to i32
  %i.en = getelementptr i8, ptr %.070106.i, i64 12
  store i32 %i.em, ptr %i.en, align 4, !tbaa !7
  %i.eo = getelementptr i8, ptr %.065107.i, i64 8 ; 3 uses
  %i.ep = getelementptr i8, ptr %.070106.i, i64 16 ; 2 uses
  %i.eq = icmp ult ptr %i.eo, %i.dw
  br i1 %i.eq, label %.lr.ph.i128, label %._crit_edge.i, !llvm.loop !456

._crit_edge.i:                                    ; preds = %bb.x, %.lr.ph.i128, %bb.w
  %.070.lcssa.i = phi ptr [ %.1208270, %bb.w ], [ %i.ep, %bb.x ], [ %.070106.i, %.lr.ph.i128 ] ; 2 uses
  %.065.lcssa.i = phi ptr [ %i.dv, %bb.w ], [ %i.eo, %bb.x ], [ %.065107.i, %.lr.ph.i128 ] ; 2 uses
  %i.er = icmp ult ptr %.065.lcssa.i, %i.dr
  br i1 %i.er, label %.lr.ph115.i, label %ucs2lib_utf32_encode.exit

.lr.ph115.i:                                      ; preds = %._crit_edge.i, %bb.y
  %.1113.i = phi ptr [ %i.es, %bb.y ], [ %.065.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.171112.i = phi ptr [ %i.ew, %bb.y ], [ %.070.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.es = getelementptr i8, ptr %.1113.i, i64 2   ; 3 uses
  %i.et = load i16, ptr %.1113.i, align 2, !tbaa !208
  %i.eu = zext i16 %i.et to i32                   ; 2 uses
  %i.ev = and i32 %i.eu, 63488
  %.not99.i = icmp eq i32 %i.ev, 55296
  br i1 %.not99.i, label %.loopexit.i, label %bb.y

bb.y:                                             ; preds = %.lr.ph115.i
  %i.ew = getelementptr i8, ptr %.171112.i, i64 4 ; 2 uses
  store i32 %i.eu, ptr %.171112.i, align 4, !tbaa !7
  %i.ex = icmp ult ptr %i.es, %i.dr
  br i1 %i.ex, label %.lr.ph115.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !457

bb.z:                                             ; preds = %bb.v
  br i1 %i.dx, label %.lr.ph120.i, label %._crit_edge121.i

.lr.ph120.i:                                      ; preds = %bb.z, %bb.aa
  %.3118.i = phi ptr [ %i.fc, %bb.aa ], [ %i.dv, %bb.z ] ; 6 uses
  %.474117.i = phi ptr [ %i.fd, %bb.aa ], [ %.1208270, %bb.z ] ; 6 uses
  %3 = load i16, ptr %.3118.i, align 2, !tbaa !208 ; 2 uses
  %4 = xor i16 %3, -10240
  %5 = getelementptr i8, ptr %.3118.i, i64 2
  %6 = load i16, ptr %5, align 2, !tbaa !208      ; 2 uses
  %7 = xor i16 %6, -10240
  %8 = and i16 %7, %4
  %9 = getelementptr i8, ptr %.3118.i, i64 4
  %10 = load i16, ptr %9, align 2, !tbaa !208     ; 2 uses
  %11 = xor i16 %10, -10240
  %12 = and i16 %8, %11
  %13 = getelementptr i8, ptr %.3118.i, i64 6
  %14 = load i16, ptr %13, align 2, !tbaa !208    ; 2 uses
  %15 = xor i16 %14, -10240
  %16 = and i16 %12, %15
  %i.ey = icmp ult i16 %16, 2048
  br i1 %i.ey, label %._crit_edge121.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph120.i
  %trunc.i.i = zext i16 %3 to i32
  %rev.i.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i.i)
  store i32 %rev.i.i, ptr %.474117.i, align 4, !tbaa !7
  %trunc.i80.i = zext i16 %6 to i32
  %rev.i81.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i80.i)
  %i.ez = getelementptr i8, ptr %.474117.i, i64 4
  store i32 %rev.i81.i, ptr %i.ez, align 4, !tbaa !7
  %trunc.i82.i = zext i16 %10 to i32
  %rev.i83.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i82.i)
  %i.fa = getelementptr i8, ptr %.474117.i, i64 8
  store i32 %rev.i83.i, ptr %i.fa, align 4, !tbaa !7
  %trunc.i84.i = zext i16 %14 to i32
  %rev.i85.i = call noundef i32 @llvm.bswap.i32(i32 %trunc.i84.i)
  %i.fb = getelementptr i8, ptr %.474117.i, i64 12
  store i32 %rev.i85.i, ptr %i.fb, align 4, !tbaa !7
  %i.fc = getelementptr i8, ptr %.3118.i, i64 8   ; 3 uses
  %i.fd = getelementptr i8, ptr %.474117.i, i64 16 ; 2 uses
  %i.fe = icmp ult ptr %i.fc, %i.dw
  br i1 %i.fe, label %.lr.ph120.i, label %._crit_edge121.i, !llvm.loop !458

._crit_edge121.i:                                 ; preds = %bb.aa, %.lr.ph120.i, %bb.z
  %.474.lcssa.i = phi ptr [ %.1208270, %bb.z ], [ %i.fd, %bb.aa ], [ %.474117.i, %.lr.ph120.i ] ; 2 uses
  %.3.lcssa.i = phi ptr [ %i.dv, %bb.z ], [ %i.fc, %bb.aa ], [ %.3118.i, %.lr.ph120.i ] ; 2 uses
  %i.ff = icmp ult ptr %.3.lcssa.i, %i.dr
  br i1 %i.ff, label %.lr.ph130.i, label %ucs2lib_utf32_encode.exit

.lr.ph130.i:                                      ; preds = %._crit_edge121.i, %bb.ab
  %.4128.i = phi ptr [ %i.fg, %bb.ab ], [ %.3.lcssa.i, %._crit_edge121.i ] ; 2 uses
  %.575127.i = phi ptr [ %i.fk, %bb.ab ], [ %.474.lcssa.i, %._crit_edge121.i ] ; 3 uses
  %i.fg = getelementptr i8, ptr %.4128.i, i64 2   ; 3 uses
  %i.fh = load i16, ptr %.4128.i, align 2, !tbaa !208
  %i.fi = zext i16 %i.fh to i32                   ; 2 uses
  %i.fj = and i32 %i.fi, 63488
  %.not100.i = icmp eq i32 %i.fj, 55296
  br i1 %.not100.i, label %.loopexit.i, label %bb.ab

bb.ab:                                            ; preds = %.lr.ph130.i
  %rev.i87.i = call noundef i32 @llvm.bswap.i32(i32 %i.fi)
  %i.fk = getelementptr i8, ptr %.575127.i, i64 4 ; 2 uses
  store i32 %rev.i87.i, ptr %.575127.i, align 4, !tbaa !7
  %i.fl = icmp ult ptr %i.fg, %i.dr
  br i1 %i.fl, label %.lr.ph130.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !459

.loopexit.i:                                      ; preds = %.lr.ph115.i, %.lr.ph130.i
  %.9.i = phi ptr [ %.575127.i, %.lr.ph130.i ], [ %.171112.i, %.lr.ph115.i ]
  %.6.i = phi ptr [ %i.fg, %.lr.ph130.i ], [ %i.es, %.lr.ph115.i ]
  %i.fm = ptrtoint ptr %.6.i to i64
  %i.fn = sub i64 %i.ds, %i.fm
  %i.fo = ashr exact i64 %i.fn, 1
  %.neg.i = xor i64 %i.fo, -1
  %i.fp = add i64 %i.dt, %.neg.i
  br label %ucs2lib_utf32_encode.exit

bb.ac:                                            ; preds = %bb.u
  %i.fq = getelementptr [4 x i8], ptr %.0.i, i64 %.081271 ; 6 uses
  %i.fr = getelementptr [4 x i8], ptr %i.fq, i64 %i.du ; 3 uses
  %i.fs = icmp ult ptr %i.fq, %i.fr               ; 2 uses
  br i1 %i.v, label %bb.ag, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.fs, label %.lr.ph.i139, label %._crit_edge.i130

.lr.ph.i139:                                      ; preds = %bb.ad, %bb.ae
  %.06599.i = phi ptr [ %i.gi, %bb.ae ], [ %i.fq, %bb.ad ] ; 7 uses
  %.07098.i = phi ptr [ %i.gj, %bb.ae ], [ %.1208270, %bb.ad ] ; 6 uses
  %i.ft = load <4 x i32>, ptr %.06599.i, align 4, !tbaa !7
  %i.fu = and <4 x i32> %i.ft, <i32 63488, i32 -1, i32 -1, i32 -1>
  %i.fv = xor <4 x i32> %i.fu, splat (i32 55296)
  %i.fw = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.fv)
  %i.fx = icmp eq i32 %i.fw, 0
  br i1 %i.fx, label %._crit_edge.i130, label %bb.ae

bb.ae:                                            ; preds = %.lr.ph.i139
  %i.fy = load i32, ptr %.06599.i, align 4, !tbaa !7
  %i.fz = getelementptr i8, ptr %.06599.i, i64 12
  %i.ga = getelementptr i8, ptr %.06599.i, i64 8
  %i.gb = getelementptr i8, ptr %.06599.i, i64 4
  store i32 %i.fy, ptr %.07098.i, align 4, !tbaa !7
  %i.gc = load i32, ptr %i.gb, align 4, !tbaa !7
  %i.gd = getelementptr i8, ptr %.07098.i, i64 4
  store i32 %i.gc, ptr %i.gd, align 4, !tbaa !7
  %i.ge = load i32, ptr %i.ga, align 4, !tbaa !7
  %i.gf = getelementptr i8, ptr %.07098.i, i64 8
  store i32 %i.ge, ptr %i.gf, align 4, !tbaa !7
  %i.gg = load i32, ptr %i.fz, align 4, !tbaa !7
  %i.gh = getelementptr i8, ptr %.07098.i, i64 12
  store i32 %i.gg, ptr %i.gh, align 4, !tbaa !7
  %i.gi = getelementptr i8, ptr %.06599.i, i64 16 ; 3 uses
  %i.gj = getelementptr i8, ptr %.07098.i, i64 16 ; 2 uses
  %i.gk = icmp ult ptr %i.gi, %i.fr
  br i1 %i.gk, label %.lr.ph.i139, label %._crit_edge.i130, !llvm.loop !460

._crit_edge.i130:                                 ; preds = %bb.ae, %.lr.ph.i139, %bb.ad
  %.070.lcssa.i131 = phi ptr [ %.1208270, %bb.ad ], [ %i.gj, %bb.ae ], [ %.07098.i, %.lr.ph.i139 ] ; 2 uses
  %.065.lcssa.i132 = phi ptr [ %i.fq, %bb.ad ], [ %i.gi, %bb.ae ], [ %.06599.i, %.lr.ph.i139 ] ; 2 uses
  %i.gl = icmp ult ptr %.065.lcssa.i132, %i.dp
  br i1 %i.gl, label %.lr.ph107.i, label %ucs2lib_utf32_encode.exit

.lr.ph107.i:                                      ; preds = %._crit_edge.i130, %bb.af
  %.1105.i = phi ptr [ %i.gm, %bb.af ], [ %.065.lcssa.i132, %._crit_edge.i130 ] ; 2 uses
  %.171104.i = phi ptr [ %i.gp, %bb.af ], [ %.070.lcssa.i131, %._crit_edge.i130 ] ; 3 uses
  %i.gm = getelementptr i8, ptr %.1105.i, i64 4   ; 3 uses
  %i.gn = load i32, ptr %.1105.i, align 4, !tbaa !7 ; 2 uses
  %i.go = and i32 %i.gn, -2048
  %.not91.i = icmp eq i32 %i.go, 55296
  br i1 %.not91.i, label %.loopexit.i135, label %bb.af

bb.af:                                            ; preds = %.lr.ph107.i
  %i.gp = getelementptr i8, ptr %.171104.i, i64 4 ; 2 uses
  store i32 %i.gn, ptr %.171104.i, align 4, !tbaa !7
  %i.gq = icmp ult ptr %i.gm, %i.dp
  br i1 %i.gq, label %.lr.ph107.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !461

bb.ag:                                            ; preds = %bb.ac
  br i1 %i.fs, label %.lr.ph112.i, label %._crit_edge113.i

.lr.ph112.i:                                      ; preds = %bb.ag, %bb.ah
  %.3110.i = phi ptr [ %i.hk, %bb.ah ], [ %i.fq, %bb.ag ] ; 7 uses
  %.474109.i = phi ptr [ %i.hl, %bb.ah ], [ %.1208270, %bb.ag ] ; 6 uses
  %i.gr = load <4 x i32>, ptr %.3110.i, align 4, !tbaa !7
  %i.gs = and <4 x i32> %i.gr, <i32 63488, i32 -1, i32 -1, i32 -1>
  %i.gt = xor <4 x i32> %i.gs, splat (i32 55296)
  %i.gu = call i32 @llvm.vector.reduce.and.v4i32(<4 x i32> %i.gt)
  %i.gv = icmp eq i32 %i.gu, 0
  br i1 %i.gv, label %._crit_edge113.i, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph112.i
  %i.gw = load i32, ptr %.3110.i, align 4, !tbaa !7
  %i.gx = getelementptr i8, ptr %.3110.i, i64 12
  %i.gy = getelementptr i8, ptr %.3110.i, i64 8
  %i.gz = getelementptr i8, ptr %.3110.i, i64 4
  %i.ha = call noundef i32 @llvm.bswap.i32(i32 %i.gw)
  store i32 %i.ha, ptr %.474109.i, align 4, !tbaa !7
  %i.hb = load i32, ptr %i.gz, align 4, !tbaa !7
  %i.hc = call noundef i32 @llvm.bswap.i32(i32 %i.hb)
  %i.hd = getelementptr i8, ptr %.474109.i, i64 4
  store i32 %i.hc, ptr %i.hd, align 4, !tbaa !7
  %i.he = load i32, ptr %i.gy, align 4, !tbaa !7
  %i.hf = call noundef i32 @llvm.bswap.i32(i32 %i.he)
  %i.hg = getelementptr i8, ptr %.474109.i, i64 8
  store i32 %i.hf, ptr %i.hg, align 4, !tbaa !7
  %i.hh = load i32, ptr %i.gx, align 4, !tbaa !7
  %i.hi = call noundef i32 @llvm.bswap.i32(i32 %i.hh)
  %i.hj = getelementptr i8, ptr %.474109.i, i64 12
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !7
  %i.hk = getelementptr i8, ptr %.3110.i, i64 16  ; 3 uses
  %i.hl = getelementptr i8, ptr %.474109.i, i64 16 ; 2 uses
  %i.hm = icmp ult ptr %i.hk, %i.fr
  br i1 %i.hm, label %.lr.ph112.i, label %._crit_edge113.i, !llvm.loop !462

._crit_edge113.i:                                 ; preds = %bb.ah, %.lr.ph112.i, %bb.ag
  %.474.lcssa.i140 = phi ptr [ %.1208270, %bb.ag ], [ %i.hl, %bb.ah ], [ %.474109.i, %.lr.ph112.i ] ; 2 uses
  %.3.lcssa.i141 = phi ptr [ %i.fq, %bb.ag ], [ %i.hk, %bb.ah ], [ %.3110.i, %.lr.ph112.i ] ; 2 uses
  %i.hn = icmp ult ptr %.3.lcssa.i141, %i.dp
  br i1 %i.hn, label %.lr.ph122.i, label %ucs2lib_utf32_encode.exit

.lr.ph122.i:                                      ; preds = %._crit_edge113.i, %bb.ai
  %.4120.i = phi ptr [ %i.ho, %bb.ai ], [ %.3.lcssa.i141, %._crit_edge113.i ] ; 2 uses
  %.575119.i = phi ptr [ %i.hs, %bb.ai ], [ %.474.lcssa.i140, %._crit_edge113.i ] ; 3 uses
  %i.ho = getelementptr i8, ptr %.4120.i, i64 4   ; 3 uses
  %i.hp = load i32, ptr %.4120.i, align 4, !tbaa !7 ; 2 uses
  %i.hq = and i32 %i.hp, -2048
  %.not92.i = icmp eq i32 %i.hq, 55296
  br i1 %.not92.i, label %.loopexit.i135, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph122.i
  %i.hr = call noundef i32 @llvm.bswap.i32(i32 %i.hp)
  %i.hs = getelementptr i8, ptr %.575119.i, i64 4 ; 2 uses
  store i32 %i.hr, ptr %.575119.i, align 4, !tbaa !7
  %i.ht = icmp ult ptr %i.ho, %i.dp
  br i1 %i.ht, label %.lr.ph122.i, label %ucs2lib_utf32_encode.exit, !llvm.loop !463

.loopexit.i135:                                   ; preds = %.lr.ph107.i, %.lr.ph122.i
  %.9.i136 = phi ptr [ %.575119.i, %.lr.ph122.i ], [ %.171104.i, %.lr.ph107.i ]
  %.6.i137 = phi ptr [ %i.ho, %.lr.ph122.i ], [ %i.gm, %.lr.ph107.i ]
  %i.hu = ptrtoint ptr %.6.i137 to i64
  %i.hv = sub i64 %i.dq, %i.hu
  %i.hw = ashr exact i64 %i.hv, 2
  %.neg.i138 = xor i64 %i.hw, -1
  %i.hx = add i64 %i.dt, %.neg.i138
  br label %ucs2lib_utf32_encode.exit

ucs2lib_utf32_encode.exit:                        ; preds = %bb.af, %bb.ai, %bb.y, %bb.ab, %.loopexit.i135, %._crit_edge113.i, %._crit_edge.i130, %.loopexit.i, %._crit_edge121.i, %._crit_edge.i
  %.2209 = phi ptr [ %i.fk, %bb.ab ], [ %.9.i, %.loopexit.i ], [ %i.hs, %bb.ai ], [ %.474.lcssa.i, %._crit_edge121.i ], [ %.070.lcssa.i, %._crit_edge.i ], [ %.9.i136, %.loopexit.i135 ], [ %i.ew, %bb.y ], [ %.474.lcssa.i140, %._crit_edge113.i ], [ %.070.lcssa.i131, %._crit_edge.i130 ], [ %i.gp, %bb.af ] ; 3 uses
  %.pn = phi i64 [ %i.dt, %bb.ab ], [ %i.fp, %.loopexit.i ], [ %i.dt, %bb.ai ], [ %i.dt, %._crit_edge121.i ], [ %i.dt, %._crit_edge.i ], [ %i.hx, %.loopexit.i135 ], [ %i.dt, %bb.y ], [ %i.dt, %._crit_edge113.i ], [ %i.dt, %._crit_edge.i130 ], [ %i.dt, %bb.af ]
  %.182 = add i64 %.pn, %.081271                  ; 6 uses
  %i.hy = icmp eq i64 %.182, %.val122
  br i1 %i.hy, label %._crit_edge, label %bb.aj

bb.aj:                                            ; preds = %ucs2lib_utf32_encode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  %i.hz = add i64 %.182, 1                        ; 3 uses
  %i.ia = call fastcc ptr @unicode_encode_call_errorhandler(ptr noundef %1, ptr noundef %i.a, ptr noundef nonnull %switch.select114, ptr noundef nonnull @.str.77, ptr noundef %0, ptr noundef %i.b, i64 noundef %.182, i64 noundef %i.hz, ptr noundef %i.c) ; 13 uses
  %.not108 = icmp eq ptr %i.ia, null
  br i1 %.not108, label %bb.bh, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ib = getelementptr i8, ptr %i.ia, i64 8      ; 2 uses
  %.val115 = load ptr, ptr %i.ib, align 8, !tbaa !197
  %i.ic = getelementptr i8, ptr %.val115, i64 168
  %.val118 = load i64, ptr %i.ic, align 8, !tbaa !198 ; 2 uses
  %i.id = and i64 %.val118, 134217728
  %.not109 = icmp eq i64 %i.id, 0
  %i.ie = getelementptr i8, ptr %i.ia, i64 16
  %.val121 = load i64, ptr %i.ie, align 8, !tbaa !193 ; 9 uses
  br i1 %.not109, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.if = and i64 %.val121, 3
  %.not111 = icmp eq i64 %i.if, 0
  br i1 %.not111, label %bb.an, label %bb.am

end_hunk_0
