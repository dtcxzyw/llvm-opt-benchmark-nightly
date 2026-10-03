Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/stringutils?download=true
inline.NumInlined: 130
inline.NumDeleted: 41
begin_hunk_0_@_ZN5zxing6common11StringUtils18guessEncodingZXingB5cxx11EPci:bb.a
  br label %_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit

_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit: ; preds = %.outer33._crit_edge.i, %bb.j
  %.1.i = phi i32 [ %.030..i, %bb.j ], [ 0, %.outer33._crit_edge.i ] ; 2 uses
  br i1 %i.ad, label %.lr.ph.lr.ph.preheader.i211, label %.outer39._crit_edge.i

.lr.ph.lr.ph.preheader.i211:                      ; preds = %_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit
  %i.az = zext nneg i32 %2 to i64
  br label %.lr.ph.lr.ph.i212

.lr.ph.lr.ph.i212:                                ; preds = %.outer.i217, %.lr.ph.lr.ph.preheader.i211
  %.0.ph58.i = phi i32 [ %i.bp, %.outer.i217 ], [ 0, %.lr.ph.lr.ph.preheader.i211 ]
  %.034.ph57.i = phi i32 [ %.034.ph4050.i, %.outer.i217 ], [ 0, %.lr.ph.lr.ph.preheader.i211 ]
  %.035.ph56.i = phi i32 [ %i.bo, %.outer.i217 ], [ 0, %.lr.ph.lr.ph.preheader.i211 ] ; 3 uses
  br label %.lr.ph.i213

.lr.ph.i213:                                      ; preds = %.outer39.i, %.lr.ph.lr.ph.i212
  %.0.ph4151.i = phi i32 [ %.0.ph58.i, %.lr.ph.lr.ph.i212 ], [ %i.bs, %.outer39.i ]
  %.034.ph4050.i = phi i32 [ %.034.ph57.i, %.lr.ph.lr.ph.i212 ], [ %i.br, %.outer39.i ] ; 4 uses
  %i.ba = sext i32 %.0.ph4151.i to i64
  br label %bb.k

.outer39._crit_edge.i:                            ; preds = %.outer.i217, %.outer39.i, %bb.l, %_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit
  %.035.ph.lcssa.i = phi i32 [ %.035.ph56.i, %.outer39.i ], [ %.035.ph56.i, %bb.l ], [ 0, %_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit ], [ %i.bo, %.outer.i217 ] ; 3 uses
  %.034.ph40.lcssa44.i = phi i32 [ %i.br, %.outer39.i ], [ %.034.ph4050.i, %bb.l ], [ 0, %_ZN5zxing6common11StringUtils14is_gb2312_codeEPci.exit ], [ %.034.ph4050.i, %.outer.i217 ]
  %i.bb = add nsw i32 %.034.ph40.lcssa44.i, %.035.ph.lcssa.i ; 2 uses
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %bb.o, label %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit

bb.k:                                             ; preds = %bb.l, %.lr.ph.i213
  %indvars.iv.i214 = phi i64 [ %i.ba, %.lr.ph.i213 ], [ %indvars.iv.next.i218, %bb.l ] ; 4 uses
  %i.bd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i214
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !18  ; 2 uses
  %i.bf = icmp sgt i8 %i.be, -1
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %indvars.iv.next.i218 = add nsw i64 %indvars.iv.i214, 1 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next.i218, %i.az
  br i1 %i.bg, label %bb.k, label %.outer39._crit_edge.i, !llvm.loop !1

bb.m:                                             ; preds = %bb.k
  %i.bh = trunc nsw i64 %indvars.iv.i214 to i32   ; 2 uses
  %i.bi = add nsw i8 %i.be, 95
  %or.cond.i215 = icmp ult i8 %i.bi, 89
  br i1 %or.cond.i215, label %bb.n, label %.outer39.i

bb.n:                                             ; preds = %bb.m
  %i.bj = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i214
  %i.bk = getelementptr i8, ptr %i.bj, i64 1
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !18  ; 2 uses
  %i.bm = add i8 %i.bl, -64
  %or.cond5.i216 = icmp ult i8 %i.bm, 63
  %i.bn = add i8 %i.bl, 95
  %or.cond8.i = icmp ult i8 %i.bn, 94
  %or.cond38.i = or i1 %or.cond5.i216, %or.cond8.i
  br i1 %or.cond38.i, label %.outer.i217, label %.outer39.i

.outer.i217:                                      ; preds = %bb.n
  %i.bo = add nuw nsw i32 %.035.ph56.i, 1         ; 2 uses
  %i.bp = add nsw i32 %i.bh, 2                    ; 2 uses
  %i.bq = icmp slt i32 %i.bp, %2
  br i1 %i.bq, label %.lr.ph.lr.ph.i212, label %.outer39._crit_edge.i, !llvm.loop !1

.outer39.i:                                       ; preds = %bb.n, %bb.m
  %i.br = add nsw i32 %.034.ph4050.i, 1           ; 2 uses
  %i.bs = add nsw i32 %i.bh, 2                    ; 2 uses
  %i.bt = icmp slt i32 %i.bs, %2
  br i1 %i.bt, label %.lr.ph.i213, label %.outer39._crit_edge.i, !llvm.loop !1

bb.o:                                             ; preds = %.outer39._crit_edge.i
  %i.bu = mul nsw i32 %.035.ph.lcssa.i, 100
  %i.bv = sdiv i32 %i.bu, %i.bb
  %i.bw = icmp eq i32 %i.bv, 100
  %.035..i = select i1 %i.bw, i32 %.035.ph.lcssa.i, i32 0
  br label %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit

_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit: ; preds = %.outer39._crit_edge.i, %bb.o
  %.1.i210 = phi i32 [ %.035..i, %bb.o ], [ 0, %.outer39._crit_edge.i ] ; 2 uses
  %i.bx = icmp sgt i32 %.1.i, 0                   ; 2 uses
  %i.by = icmp sgt i32 %.1.i210, 0                ; 2 uses
  br i1 %i.ad, label %.lr.ph.lr.ph.preheader.i220, label %.outer32._crit_edge.i

.lr.ph.lr.ph.preheader.i220:                      ; preds = %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit
  %i.bz = zext nneg i32 %2 to i64
  br label %.lr.ph.lr.ph.i221

.lr.ph.lr.ph.i221:                                ; preds = %.outer.i225, %.lr.ph.lr.ph.preheader.i220
  %.0.ph51.i = phi i32 [ %i.cn, %.outer.i225 ], [ 0, %.lr.ph.lr.ph.preheader.i220 ]
  %.028.ph50.i = phi i32 [ %.028.ph3343.i, %.outer.i225 ], [ 0, %.lr.ph.lr.ph.preheader.i220 ]
  %.029.ph49.i = phi i32 [ %i.cm, %.outer.i225 ], [ 0, %.lr.ph.lr.ph.preheader.i220 ] ; 3 uses
  br label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %.outer32.i, %.lr.ph.lr.ph.i221
  %.0.ph3444.i = phi i32 [ %.0.ph51.i, %.lr.ph.lr.ph.i221 ], [ %i.cq, %.outer32.i ]
  %.028.ph3343.i = phi i32 [ %.028.ph50.i, %.lr.ph.lr.ph.i221 ], [ %i.cp, %.outer32.i ] ; 4 uses
  %i.ca = sext i32 %.0.ph3444.i to i64
  br label %bb.p

.outer32._crit_edge.i:                            ; preds = %.outer.i225, %.outer32.i, %bb.q, %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit
  %.029.ph.lcssa.i = phi i32 [ %.029.ph49.i, %.outer32.i ], [ %.029.ph49.i, %bb.q ], [ 0, %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit ], [ %i.cm, %.outer.i225 ] ; 2 uses
  %.028.ph33.lcssa37.i = phi i32 [ %i.cp, %.outer32.i ], [ %.028.ph3343.i, %bb.q ], [ 0, %_ZN5zxing6common11StringUtils12is_big5_codeEPci.exit ], [ %.028.ph3343.i, %.outer.i225 ]
  %i.cb = add nsw i32 %.028.ph33.lcssa37.i, %.029.ph.lcssa.i ; 2 uses
  %i.cc = icmp sgt i32 %i.cb, 0
  br i1 %i.cc, label %bb.t, label %_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit

bb.p:                                             ; preds = %bb.q, %.lr.ph.i222
  %indvars.iv.i223 = phi i64 [ %i.ca, %.lr.ph.i222 ], [ %indvars.iv.next.i226, %bb.q ] ; 4 uses
  %i.cd = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i223
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !18  ; 2 uses
  %i.cf = icmp sgt i8 %i.ce, -1
  br i1 %i.cf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next.i226 = add nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next.i226, %i.bz
  br i1 %i.cg, label %bb.p, label %.outer32._crit_edge.i, !llvm.loop !2

bb.r:                                             ; preds = %bb.p
  %i.ch = trunc nsw i64 %indvars.iv.i223 to i32   ; 2 uses
  switch i8 %i.ce, label %bb.s [
    i8 -1, label %.outer32.i
    i8 -128, label %.outer32.i
  ]

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds i8, ptr %1, i64 %indvars.iv.i223
  %i.cj = getelementptr i8, ptr %i.ci, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !18
  %i.cl = add i8 %i.ck, -64
  %or.cond5.i224 = icmp ult i8 %i.cl, -65
  br i1 %or.cond5.i224, label %.outer.i225, label %.outer32.i

.outer.i225:                                      ; preds = %bb.s
  %i.cm = add nuw nsw i32 %.029.ph49.i, 1         ; 2 uses
  %i.cn = add nsw i32 %i.ch, 2                    ; 2 uses
  %i.co = icmp slt i32 %i.cn, %2
  br i1 %i.co, label %.lr.ph.lr.ph.i221, label %.outer32._crit_edge.i, !llvm.loop !2

.outer32.i:                                       ; preds = %bb.s, %bb.r, %bb.r
  %i.cp = add nsw i32 %.028.ph3343.i, 1           ; 2 uses
  %i.cq = add nsw i32 %i.ch, 2                    ; 2 uses
  %i.cr = icmp slt i32 %i.cq, %2
  br i1 %i.cr, label %.lr.ph.i222, label %.outer32._crit_edge.i, !llvm.loop !2

bb.t:                                             ; preds = %.outer32._crit_edge.i
  %i.cs = mul nsw i32 %.029.ph.lcssa.i, 100
  %i.ct = sdiv i32 %i.cs, %i.cb
  %i.cu = icmp ne i32 %i.ct, 100
  br label %_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit

_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit: ; preds = %.outer32._crit_edge.i, %bb.t
  %.1.i219 = phi i1 [ %i.cu, %bb.t ], [ true, %.outer32._crit_edge.i ]
  br i1 %i.ad, label %iter.check, label %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit

iter.check:                                       ; preds = %_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit
  %wide.trip.count.i = zext nneg i32 %2 to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %2, 4
  br i1 %min.iters.check, label %.lr.ph.i227.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check511 = icmp ult i32 %2, 32
  br i1 %min.iters.check511, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cv = and i64 %wide.trip.count.i, 28
  %n.vec = and i64 %wide.trip.count.i, 2147483616 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.da, %vector.body ]
  %vec.phi512 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.db, %vector.body ]
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  %wide.load = load <16 x i8>, ptr %i.cw, align 1, !tbaa !18
  %wide.load513 = load <16 x i8>, ptr %i.cx, align 1, !tbaa !18
  %i.cy = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.cz = icmp slt <16 x i8> %wide.load513, zeroinitializer
  %i.da = or <16 x i1> %vec.phi, %i.cy            ; 2 uses
  %i.db = or <16 x i1> %vec.phi512, %i.cz         ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !26

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.db, %i.da
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.dd = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not521 = icmp eq i16 %i.dd, 0                 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i227.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not521, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %9 = xor i1 %bc.merge.rdx, true
  %n.vec514 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %9, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index515 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next518, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi516 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr522, %vec.epilog.vector.body ]
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 %index515
  %wide.load517 = load <4 x i8>, ptr %i.de, align 1, !tbaa !18
  %i.df = icmp slt <4 x i8> %wide.load517, zeroinitializer
  %i.dg = or <4 x i1> %vec.phi516, %i.df
  %.fr522 = freeze <4 x i1> %i.dg                 ; 2 uses
  %index.next518 = add nuw i64 %index515, 4       ; 2 uses
  %i.dh = icmp eq i64 %index.next518, %n.vec514
  br i1 %i.dh, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !27

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.di = bitcast <4 x i1> %.fr522 to i4
  %.not523 = icmp eq i4 %i.di, 0                  ; 2 uses
  %cmp.n519 = icmp eq i64 %n.vec514, %wide.trip.count.i
  br i1 %cmp.n519, label %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit, label %.lr.ph.i227.preheader

.lr.ph.i227.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i228.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec514, %vec.epilog.middle.block ]
  %.067.i.ph = phi i1 [ true, %iter.check ], [ %.not521, %vec.epilog.iter.check ], [ %.not523, %vec.epilog.middle.block ]
  br label %.lr.ph.i227

.lr.ph.i227:                                      ; preds = %.lr.ph.i227.preheader, %.lr.ph.i227
  %indvars.iv.i228 = phi i64 [ %indvars.iv.next.i229, %.lr.ph.i227 ], [ %indvars.iv.i228.ph, %.lr.ph.i227.preheader ] ; 2 uses
  %.067.i = phi i1 [ %spec.select.i, %.lr.ph.i227 ], [ %.067.i.ph, %.lr.ph.i227.preheader ]
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i228
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !18
  %i.dl = icmp sgt i8 %i.dk, -1
  %spec.select.i = select i1 %i.dl, i1 %.067.i, i1 false ; 2 uses
  %indvars.iv.next.i229 = add nuw nsw i64 %indvars.iv.i228, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i229, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit, label %.lr.ph.i227, !llvm.loop !28

_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit: ; preds = %.lr.ph.i227, %middle.block, %vec.epilog.middle.block, %_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit
  %.06.lcssa.i = phi i1 [ true, %_ZN5zxing6common11StringUtils11is_gbk_codeEPci.exit ], [ %.not523, %vec.epilog.middle.block ], [ %.not521, %middle.block ], [ %spec.select.i, %.lr.ph.i227 ]
  br i1 %.0179.lcssa418, label %bb.ap, label %bb.ar

bb.u:                                             ; preds = %.lr.ph
  %i.dm = icmp sgt i32 %.0173322, 0
  br i1 %i.dm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %.lobit404 = lshr i8 %i.p, 7
  %.lobit274 = ashr i8 %i.p, 7
  %i.dn = sext i8 %.lobit274 to i32
  %spec.select207 = add nsw i32 %.0173322, %i.dn
  br label %bb.ad

bb.w:                                             ; preds = %bb.u
  %.not = icmp sgt i8 %i.p, -1
  br i1 %.not, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.do = and i32 %i.q, 64
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ad, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dq = and i32 %i.q, 32
  %i.dr = icmp eq i32 %i.dq, 0
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ds = add nsw i32 %.0171323, 1
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.dt = and i32 %i.q, 16
  %i.du = icmp eq i32 %i.dt, 0
  br i1 %i.du, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dv = add nsw i32 %.0169324, 1
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.dw = and i32 %i.q, 8                         ; 2 uses
  %i.dx = icmp eq i32 %i.dw, 0
  %spec.select208 = zext i1 %i.dx to i8
  %.lobit = lshr exact i32 %i.dw, 3
  %i.dy = xor i32 %.lobit, 1
  %spec.select209 = add nsw i32 %i.dy, %.0167325
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.v, %bb.x, %bb.ab, %bb.z, %bb.w, %.lr.ph
  %.1180 = phi i8 [ 0, %.lr.ph ], [ 1, %bb.w ], [ %spec.select208, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.ab ], [ %.lobit404, %bb.v ], [ 0, %bb.x ] ; 2 uses
  %.1174 = phi i32 [ %.0173322, %.lr.ph ], [ 0, %bb.w ], [ 3, %bb.ac ], [ 1, %bb.z ], [ 2, %bb.ab ], [ %spec.select207, %bb.v ], [ 0, %bb.x ] ; 2 uses
  %.1172 = phi i32 [ %.0171323, %.lr.ph ], [ %.0171323, %bb.w ], [ %.0171323, %bb.ac ], [ %i.ds, %bb.z ], [ %.0171323, %bb.ab ], [ %.0171323, %bb.v ], [ %.0171323, %bb.x ] ; 4 uses
  %.1170 = phi i32 [ %.0169324, %.lr.ph ], [ %.0169324, %bb.w ], [ %.0169324, %bb.ac ], [ %.0169324, %bb.z ], [ %i.dv, %bb.ab ], [ %.0169324, %bb.v ], [ %.0169324, %bb.x ] ; 4 uses
  %.1168 = phi i32 [ %.0167325, %.lr.ph ], [ %.0167325, %bb.w ], [ %spec.select209, %bb.ac ], [ %.0167325, %bb.z ], [ %.0167325, %bb.ab ], [ %.0167325, %bb.v ], [ %.0167325, %bb.x ] ; 4 uses
  br i1 %i.m, label %bb.ae, label %bb.al

bb.ae:                                            ; preds = %bb.ad
  %i.dz = icmp sgt i32 %.0165326, 0
  br i1 %i.dz, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ea = icmp eq i8 %i.p, 127
  %i.eb = add i8 %i.p, 3
  %i.ec = icmp ult i8 %i.eb, 67
  %or.cond7 = or i1 %i.ea, %i.ec                  ; 2 uses
  %not.or.cond7 = xor i1 %or.cond7, true
  %..0181 = zext i1 %not.or.cond7 to i8
  %. = zext i1 %or.cond7 to i32
  br label %bb.al

bb.ag:                                            ; preds = %bb.ae
  %i.ed = and i8 %i.p, -33
  %or.cond9 = icmp eq i8 %i.ed, -128
  %i.ee = icmp ugt i8 %i.p, -17
  %or.cond11 = or i1 %i.ee, %or.cond9
  br i1 %or.cond11, label %bb.al, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ef = add i8 %i.p, 95
  %or.cond13 = icmp ult i8 %i.ef, 63
  br i1 %or.cond13, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.eg = add nsw i32 %.0163327, 1
  %i.eh = add nsw i32 %.0161328, 1                ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0157330, i32 %i.eh)
  br label %bb.al

bb.aj:                                            ; preds = %bb.ah
  %i.ei = icmp slt i8 %i.p, 0
  br i1 %i.ei, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ej = add nsw i32 %.0159329, 1                ; 2 uses
  %spec.select203 = tail call i32 @llvm.smax.i32(i32 %.0155331, i32 %i.ej)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ai, %bb.aj, %bb.ag, %bb.af, %bb.ad
  %.1182 = phi i8 [ %..0181, %bb.af ], [ 0, %bb.ad ], [ 1, %bb.ak ], [ 0, %bb.ag ], [ 1, %bb.aj ], [ 1, %bb.ai ] ; 2 uses
  %.1166 = phi i32 [ %., %bb.af ], [ %.0165326, %bb.ad ], [ 1, %bb.ak ], [ 0, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ] ; 2 uses
  %.1164 = phi i32 [ %.0163327, %bb.af ], [ %.0163327, %bb.ad ], [ %.0163327, %bb.ak ], [ %.0163327, %bb.ag ], [ %.0163327, %bb.aj ], [ %i.eg, %bb.ai ] ; 4 uses
  %.1162 = phi i32 [ %.0161328, %bb.af ], [ %.0161328, %bb.ad ], [ 0, %bb.ak ], [ %.0161328, %bb.ag ], [ 0, %bb.aj ], [ %i.eh, %bb.ai ]
  %.1160 = phi i32 [ %.0159329, %bb.af ], [ %.0159329, %bb.ad ], [ %i.ej, %bb.ak ], [ %.0159329, %bb.ag ], [ 0, %bb.aj ], [ 0, %bb.ai ]
  %.1158 = phi i32 [ %.0157330, %bb.af ], [ %.0157330, %bb.ad ], [ %.0157330, %bb.ak ], [ %.0157330, %bb.ag ], [ %.0157330, %bb.aj ], [ %spec.select, %bb.ai ] ; 4 uses
  %.1156 = phi i32 [ %.0155331, %bb.af ], [ %.0155331, %bb.ad ], [ %spec.select203, %bb.ak ], [ %.0155331, %bb.ag ], [ %.0155331, %bb.aj ], [ %.0155331, %bb.ai ] ; 4 uses
  %or.cond15 = icmp sgt i8 %i.p, -97
  %or.cond267.not = select i1 %i.l, i1 %or.cond15, i1 false
  br i1 %or.cond267.not, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
  %i.ek = icmp ugt i8 %i.p, -97
  br i1 %i.ek, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.el = icmp samesign ult i8 %i.p, -64
  %i.em = and i8 %i.p, -33
  %i.en = icmp eq i8 %i.em, -41
  %or.cond19 = or i1 %i.el, %i.en
  %i.eo = zext i1 %or.cond19 to i32
  %spec.select204 = add nsw i32 %.0153332, %i.eo
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %bb.al
  %.1184 = phi i8 [ 0, %bb.al ], [ 1, %bb.am ], [ 1, %bb.an ] ; 2 uses
  %.1154 = phi i32 [ %.0153332, %bb.al ], [ %.0153332, %bb.am ], [ %spec.select204, %bb.an ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !29

bb.ap:                                            ; preds = %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit
  br i1 %i.ac, label %._crit_edge.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ep = add nsw i32 %.0169.lcssa420, %.0171.lcssa419
  %i.eq = add nsw i32 %i.ep, %.0167.lcssa421
  %i.er = icmp sgt i32 %i.eq, 0
  br i1 %i.er, label %._crit_edge.i.i, label %bb.ar

._crit_edge.i.i:                                  ; preds = %bb.aq, %bb.ap
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.es, ptr %0, align 8, !tbaa !14
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %i.es, ptr noundef nonnull align 1 dereferenceable(5) @.str.5, i64 5, i1 false)
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %i.et, align 8, !tbaa !17
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 0, ptr %i.eu, align 1, !tbaa !18
  br label %bb.bn

bb.ar:                                            ; preds = %bb.aq, %_ZN5zxing6common11StringUtils13is_ascii_codeEPci.exit
  %i.ev = tail call i32 @llvm.smax.i32(i32 %.1.i, i32 %.1.i210) ; 4 uses
  %i.ew = shl nsw i32 %i.ev, 1                    ; 3 uses
  %i.ex = shl nuw nsw i32 %.0155.lcssa424, 1
  %i.ey = add nuw nsw i32 %i.ex, %.0157.lcssa423  ; 3 uses
  br i1 %.0181.lcssa417, label %bb.as, label %.thread

bb.as:                                            ; preds = %bb.ar
  %i.ez = icmp slt i32 %.0157.lcssa423, 3
  %i.fa = icmp slt i32 %.0155.lcssa424, 3
  %or.cond25.not270 = select i1 %i.ez, i1 %i.fa, i1 false
end_hunk_0
begin_hunk_1_@_ZN5zxing6common11StringUtils12is_big5_codeEPci:bb.a
  %.035.ph56 = phi i32 [ %i.q, %.outer ], [ 0, %.lr.ph.lr.ph.preheader ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer39
  %.0.ph4151 = phi i32 [ %.0.ph58, %.lr.ph.lr.ph ], [ %i.u, %.outer39 ]
  %.034.ph4050 = phi i32 [ %.034.ph57, %.lr.ph.lr.ph ], [ %i.t, %.outer39 ] ; 4 uses
  %i.c = sext i32 %.0.ph4151 to i64
  br label %bb.b

.outer39._crit_edge:                              ; preds = %.outer, %.outer39, %bb.c, %bb.a
  %.035.ph.lcssa = phi i32 [ %.035.ph56, %.outer39 ], [ %.035.ph56, %bb.c ], [ 0, %bb.a ], [ %i.q, %.outer ] ; 3 uses
  %.034.ph40.lcssa44 = phi i32 [ %i.t, %.outer39 ], [ %.034.ph4050, %bb.c ], [ 0, %bb.a ], [ %.034.ph4050, %.outer ]
  %i.d = add nsw i32 %.034.ph40.lcssa44, %.035.ph.lcssa ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next, %i.b
  br i1 %i.i, label %bb.b, label %.outer39._crit_edge, !llvm.loop !1

bb.d:                                             ; preds = %bb.b
  %i.j = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.k = add nsw i8 %i.g, 95
  %or.cond = icmp ult i8 %i.k, 89
  br i1 %or.cond, label %bb.e, label %.outer39

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.m = getelementptr i8, ptr %i.l, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18    ; 2 uses
  %i.o = add i8 %i.n, -64
  %or.cond5 = icmp ult i8 %i.o, 63
  %i.p = add i8 %i.n, 95
  %or.cond8 = icmp ult i8 %i.p, 94
  %or.cond38 = or i1 %or.cond5, %or.cond8
  br i1 %or.cond38, label %.outer, label %.outer39

.outer:                                           ; preds = %bb.e
  %i.q = add nuw nsw i32 %.035.ph56, 1            ; 2 uses
  %i.r = add nsw i32 %i.j, 2                      ; 2 uses
  %i.s = icmp slt i32 %i.r, %1
  br i1 %i.s, label %.lr.ph.lr.ph, label %.outer39._crit_edge, !llvm.loop !1

.outer39:                                         ; preds = %bb.e, %bb.d
  %i.t = add nsw i32 %.034.ph4050, 1              ; 2 uses
  %i.u = add nsw i32 %i.j, 2                      ; 2 uses
  %i.v = icmp slt i32 %i.u, %1
  br i1 %i.v, label %.lr.ph, label %.outer39._crit_edge, !llvm.loop !1

bb.f:                                             ; preds = %.outer39._crit_edge
  %i.w = mul nsw i32 %.035.ph.lcssa, 100
  %i.x = sdiv i32 %i.w, %i.d
  %i.y = icmp eq i32 %i.x, 100
  %.035. = select i1 %i.y, i32 %.035.ph.lcssa, i32 0
  br label %bb.g

bb.g:                                             ; preds = %.outer39._crit_edge, %bb.f
  %.1 = phi i32 [ %.035., %bb.f ], [ 0, %.outer39._crit_edge ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5zxing6common11StringUtils11is_gbk_codeEPci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.lr.ph.preheader, label %.outer32._crit_edge

.lr.ph.lr.ph.preheader:                           ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.preheader, %.outer
  %.0.ph51 = phi i32 [ %i.p, %.outer ], [ 0, %.lr.ph.lr.ph.preheader ]
  %.028.ph50 = phi i32 [ %.028.ph3343, %.outer ], [ 0, %.lr.ph.lr.ph.preheader ]
  %.029.ph49 = phi i32 [ %i.o, %.outer ], [ 0, %.lr.ph.lr.ph.preheader ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer32
  %.0.ph3444 = phi i32 [ %.0.ph51, %.lr.ph.lr.ph ], [ %i.s, %.outer32 ]
  %.028.ph3343 = phi i32 [ %.028.ph50, %.lr.ph.lr.ph ], [ %i.r, %.outer32 ] ; 4 uses
  %i.c = sext i32 %.0.ph3444 to i64
  br label %bb.b

.outer32._crit_edge:                              ; preds = %.outer, %.outer32, %bb.c, %bb.a
  %.029.ph.lcssa = phi i32 [ %.029.ph49, %.outer32 ], [ %.029.ph49, %bb.c ], [ 0, %bb.a ], [ %i.o, %.outer ] ; 2 uses
  %.028.ph33.lcssa37 = phi i32 [ %i.r, %.outer32 ], [ %.028.ph3343, %bb.c ], [ 0, %bb.a ], [ %.028.ph3343, %.outer ]
  %i.d = add nsw i32 %.028.ph33.lcssa37, %.029.ph.lcssa ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.g

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.f = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.g = load i8, ptr %i.f, align 1, !tbaa !18    ; 2 uses
  %i.h = icmp sgt i8 %i.g, -1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.i = icmp slt i64 %indvars.iv.next, %i.b
  br i1 %i.i, label %bb.b, label %.outer32._crit_edge, !llvm.loop !2

bb.d:                                             ; preds = %bb.b
  %i.j = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  switch i8 %i.g, label %bb.e [
    i8 -1, label %.outer32
    i8 -128, label %.outer32
  ]

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.l = getelementptr i8, ptr %i.k, i64 1
  %i.m = load i8, ptr %i.l, align 1, !tbaa !18
  %i.n = add i8 %i.m, -64
  %or.cond5 = icmp ult i8 %i.n, -65
  br i1 %or.cond5, label %.outer, label %.outer32

.outer:                                           ; preds = %bb.e
  %i.o = add nuw nsw i32 %.029.ph49, 1            ; 2 uses
  %i.p = add nsw i32 %i.j, 2                      ; 2 uses
  %i.q = icmp slt i32 %i.p, %1
  br i1 %i.q, label %.lr.ph.lr.ph, label %.outer32._crit_edge, !llvm.loop !2

.outer32:                                         ; preds = %bb.d, %bb.d, %bb.e
  %i.r = add nsw i32 %.028.ph3343, 1              ; 2 uses
  %i.s = add nsw i32 %i.j, 2                      ; 2 uses
  %i.t = icmp slt i32 %i.s, %1
  br i1 %i.t, label %.lr.ph, label %.outer32._crit_edge, !llvm.loop !2

bb.f:                                             ; preds = %.outer32._crit_edge
  %i.u = mul nsw i32 %.029.ph.lcssa, 100
  %i.v = sdiv i32 %i.u, %i.d
  %i.w = icmp eq i32 %i.v, 100
  %. = zext i1 %i.w to i32
  br label %bb.g

bb.g:                                             ; preds = %.outer32._crit_edge, %bb.f
  %.1 = phi i32 [ %., %bb.f ], [ 0, %.outer32._crit_edge ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 -1, 2) i32 @_ZN5zxing6common11StringUtils13is_ascii_codeEPci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 6 uses
  %min.iters.check = icmp ult i32 %1, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check9 = icmp ult i32 %1, 32
  br i1 %min.iters.check9, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.b = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi10 = phi <16 x i1> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %wide.load = load <16 x i8>, ptr %i.c, align 1, !tbaa !18
  %wide.load11 = load <16 x i8>, ptr %i.d, align 1, !tbaa !18
  %i.e = icmp slt <16 x i8> %wide.load, zeroinitializer
  %i.f = icmp slt <16 x i8> %wide.load11, zeroinitializer
  %i.g = or <16 x i1> %vec.phi, %i.e              ; 2 uses
  %i.h = or <16 x i1> %vec.phi10, %i.f            ; 2 uses
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !30

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <16 x i1> %i.h, %i.g
  %bin.rdx.fr = freeze <16 x i1> %bin.rdx
  %i.j = bitcast <16 x i1> %bin.rdx.fr to i16
  %.not = icmp eq i16 %i.j, 0                     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.b, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !24

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.merge.rdx = phi i1 [ %.not, %vec.epilog.iter.check ], [ true, %vector.main.loop.iter.check ]
  %2 = xor i1 %bc.merge.rdx, true
  %n.vec12 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i1> poison, i1 %2, i64 0
  %broadcast.splat = shufflevector <4 x i1> %broadcast.splatinsert, <4 x i1> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index13 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 2 uses
  %vec.phi14 = phi <4 x i1> [ %broadcast.splat, %vec.epilog.ph ], [ %.fr19, %vec.epilog.vector.body ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %index13
  %wide.load15 = load <4 x i8>, ptr %i.k, align 1, !tbaa !18
  %i.l = icmp slt <4 x i8> %wide.load15, zeroinitializer
  %i.m = or <4 x i1> %vec.phi14, %i.l
  %.fr19 = freeze <4 x i1> %i.m                   ; 2 uses
  %index.next16 = add nuw i64 %index13, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next16, %n.vec12
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !31

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %i.o = bitcast <4 x i1> %.fr19 to i4
  %.not20 = icmp eq i4 %i.o, 0                    ; 2 uses
  %cmp.n17 = icmp eq i64 %n.vec12, %wide.trip.count
  br i1 %cmp.n17, label %._crit_edge.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec12, %vec.epilog.middle.block ]
  %.067.ph = phi i1 [ true, %iter.check ], [ %.not, %vec.epilog.iter.check ], [ %.not20, %vec.epilog.middle.block ]
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %.lr.ph, %vec.epilog.middle.block, %middle.block
  %spec.select.lcssa = phi i1 [ %.not20, %vec.epilog.middle.block ], [ %.not, %middle.block ], [ %spec.select, %.lr.ph ]
  %i.p = select i1 %spec.select.lcssa, i32 1, i32 -1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.06.lcssa = phi i32 [ 1, %bb.a ], [ %i.p, %._crit_edge.loopexit ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 2 uses
  %.067 = phi i1 [ %spec.select, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv
  %i.r = load i8, ptr %i.q, align 1, !tbaa !18
  %i.s = icmp sgt i8 %i.r, -1
  %spec.select = select i1 %i.s, i1 %.067, i1 false ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !32
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5zxing6common11StringUtils20is_utf8_special_byteEh(i8 noundef zeroext %0) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = icmp slt i8 %0, -64
  %. = zext i1 %i.a to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef range(i32 0, 2) i32 @_ZN5zxing6common11StringUtils12is_utf8_codeEPci(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph.lr.ph.preheader, label %.outer122._crit_edge

.lr.ph.lr.ph.preheader:                           ; preds = %bb.a
  %i.b = zext nneg i32 %1 to i64
  br label %.lr.ph.lr.ph

.lr.ph.lr.ph:                                     ; preds = %.lr.ph.lr.ph.preheader, %.outer.backedge
  %.0.ph150 = phi i32 [ %i.p, %.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ]
  %.080.ph149 = phi i32 [ %.080.ph123142, %.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ]
  %.081.ph148 = phi i32 [ %.081.ph.be, %.outer.backedge ], [ 0, %.lr.ph.lr.ph.preheader ] ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.outer122
  %.0.ph124143 = phi i32 [ %.0.ph150, %.lr.ph.lr.ph ], [ %i.be, %.outer122 ]
  %.080.ph123142 = phi i32 [ %.080.ph149, %.lr.ph.lr.ph ], [ %i.bd, %.outer122 ] ; 4 uses
  %i.c = sext i32 %.0.ph124143 to i64
  br label %bb.b

.outer122._crit_edge:                             ; preds = %.outer.backedge, %.outer122, %bb.c, %bb.a
  %.081.ph.lcssa = phi i32 [ %.081.ph148, %.outer122 ], [ %.081.ph148, %bb.c ], [ 0, %bb.a ], [ %.081.ph.be, %.outer.backedge ] ; 2 uses
  %.080.ph123.lcssa135 = phi i32 [ %i.bd, %.outer122 ], [ %.080.ph123142, %bb.c ], [ 0, %bb.a ], [ %.080.ph123142, %.outer.backedge ]
  %i.d = add nsw i32 %.080.ph123.lcssa135, %.081.ph.lcssa ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.c, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.e = getelementptr inbounds i8, ptr %0, i64 %indvars.iv
  %i.f = load i8, ptr %i.e, align 1, !tbaa !18    ; 2 uses
  %i.g = icmp sgt i8 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.h = icmp slt i64 %indvars.iv.next, %i.b
  br i1 %i.h, label %bb.b, label %.outer122._crit_edge, !llvm.loop !33

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds i8, ptr %0, i64 %indvars.iv ; 12 uses
  %i.j = trunc nsw i64 %indvars.iv to i32         ; 2 uses
  %i.k = zext i8 %i.f to i32                      ; 5 uses
  %.mask = and i32 %i.k, 224
  %i.l = icmp eq i32 %.mask, 192
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr i8, ptr %i.i, i64 1
  %i.n = load i8, ptr %i.m, align 1, !tbaa !18
  %i.o = icmp sgt i8 %i.n, -65
  br i1 %i.o, label %.outer122, label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.e, %bb.q, %bb.n, %bb.k, %bb.h
  %.sink = phi i32 [ 6, %bb.q ], [ 5, %bb.n ], [ 3, %bb.h ], [ 4, %bb.k ], [ 2, %bb.e ]
  %i.p = add nsw i32 %.sink, %i.j                 ; 2 uses
  %.081.ph.be = add nuw nsw i32 %.081.ph148, 1    ; 2 uses
  %i.q = icmp slt i32 %i.p, %1
  br i1 %i.q, label %.lr.ph.lr.ph, label %.outer122._crit_edge, !llvm.loop !33

bb.f:                                             ; preds = %bb.d
  %.mask84 = and i32 %i.k, 240
  %i.r = icmp eq i32 %.mask84, 224
  br i1 %i.r, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.i, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !18
  %i.u = icmp sgt i8 %i.t, -65
  br i1 %i.u, label %.outer122, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.i, i64 2
  %i.w = load i8, ptr %i.v, align 1, !tbaa !18
  %i.x = icmp sgt i8 %i.w, -65
  br i1 %i.x, label %.outer122, label %.outer.backedge

bb.i:                                             ; preds = %bb.f
  %.mask85 = and i32 %i.k, 248
  %i.y = icmp eq i32 %.mask85, 240
  br i1 %i.y, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr i8, ptr %i.i, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !18
  %i.ab = icmp sgt i8 %i.aa, -65
  br i1 %i.ab, label %.outer122, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %i.i, i64 3
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !18
  %i.ae = getelementptr i8, ptr %i.i, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !18
  %i.ag = icmp sgt i8 %i.af, -65
  %i.ah = icmp sgt i8 %i.ad, -65
  %or.cond = select i1 %i.ag, i1 true, i1 %i.ah
  br i1 %or.cond, label %.outer122, label %.outer.backedge

bb.l:                                             ; preds = %bb.i
  %.mask86 = and i32 %i.k, 252
  %i.ai = icmp eq i32 %.mask86, 248
  br i1 %i.ai, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.aj = getelementptr i8, ptr %i.i, i64 1
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !18
  %i.al = icmp sgt i8 %i.ak, -65
  br i1 %i.al, label %.outer122, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = getelementptr i8, ptr %i.i, i64 4
  %i.an = load i8, ptr %i.am, align 1, !tbaa !18
  %i.ao = getelementptr i8, ptr %i.i, i64 3
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !18
  %i.aq = getelementptr i8, ptr %i.i, i64 2
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !18
  %i.as = icmp sgt i8 %i.ar, -65
  %i.at = icmp sgt i8 %i.ap, -65
  %or.cond117 = select i1 %i.as, i1 true, i1 %i.at
  %i.au = icmp sgt i8 %i.an, -65
  %or.cond118 = select i1 %or.cond117, i1 true, i1 %i.au
  br i1 %or.cond118, label %.outer122, label %.outer.backedge

bb.o:                                             ; preds = %bb.l
  %.mask87 = and i32 %i.k, 254
  %i.av = icmp eq i32 %.mask87, 252
  br i1 %i.av, label %bb.p, label %.outer122

bb.p:                                             ; preds = %bb.o
  %i.aw = getelementptr i8, ptr %i.i, i64 1
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !18
  %i.ay = icmp sgt i8 %i.ax, -65
  br i1 %i.ay, label %.outer122, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr i8, ptr %i.i, i64 2
  %i.ba = load <4 x i8>, ptr %i.az, align 1, !tbaa !18
  %.fr = freeze <4 x i8> %i.ba
  %i.bb = icmp sgt <4 x i8> %.fr, splat (i8 -65)
  %i.bc = bitcast <4 x i1> %i.bb to i4
  %.not221 = icmp eq i4 %i.bc, 0
  br i1 %.not221, label %.outer.backedge, label %.outer122
end_hunk_1
