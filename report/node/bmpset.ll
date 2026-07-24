inline.NumInlined: 24
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN6icu_786BMPSet8initBitsEv:bb.a
  %.055 = phi i32 [ %i.m, %bb.c ], [ 1114112, %bb.b ] ; 2 uses
  %.153 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.b ]
  %i.n = icmp sgt i32 %i.g, 255
  br i1 %i.n, label %split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.d
  %i.o = sext i32 %i.g to i64
  %scevgep135 = getelementptr i8, ptr %scevgep, i64 %i.o
  %i.p = add nsw i32 %i.g, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %.055, i32 %i.p)
  %i.q = xor i32 %i.g, -1
  %i.r = add i32 %smax, %i.q
  %i.s = sub i32 255, %i.g
  %i.t = tail call i32 @llvm.umin.i32(i32 %i.r, i32 %i.s)
  %umin = zext i32 %i.t to i64
  %i.u = add nuw nsw i64 %umin, 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep135, i8 1, i64 %i.u, i1 false)
  %i.v = icmp slt i32 %.055, 257
  br i1 %i.v, label %bb.b, label %.preheader.preheader._crit_edge, !llvm.loop !7

.preheader.preheader._crit_edge:                  ; preds = %.preheader.preheader
  %.pre = load ptr, ptr %i.a, align 8
  %.pre138 = load i32, ptr %i.b, align 8
  br label %split, !llvm.loop !7

split:                                            ; preds = %bb.d, %.preheader.preheader._crit_edge
  %i.w = phi i32 [ %.pre138, %.preheader.preheader._crit_edge ], [ %i.h, %bb.d ] ; 2 uses
  %i.x = phi ptr [ %.pre, %.preheader.preheader._crit_edge ], [ %i.c, %bb.d ] ; 2 uses
  %i.y = sext i32 %i.w to i64
  %i.z = icmp sgt i32 %i.w, 1
  br i1 %i.z, label %.lr.ph195.preheader, label %.thread.split.loop.exit

.lr.ph195.preheader:                              ; preds = %split
  %invariant.op = sub nsw i64 %i.y, 1
  br label %.lr.ph195

bb.e:                                             ; preds = %.lr.ph195
  %i.aa = icmp slt i64 %indvars.iv.next, %invariant.op
  br i1 %i.aa, label %.lr.ph195, label %.thread.split.loop.exit, !llvm.loop !8

.lr.ph195:                                        ; preds = %.lr.ph195.preheader, %bb.e
  %indvars.iv194 = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.lr.ph195.preheader ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv194, 2 ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv194
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4            ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, 128
  br i1 %i.ae, label %.thread.split.loop.exit178, label %bb.e, !llvm.loop !8

.thread.split.loop.exit:                          ; preds = %bb.e, %split
  %indvars.iv.lcssa = phi i64 [ 0, %split ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars137.le = trunc i64 %indvars.iv.lcssa to i32
  %i.af = or disjoint i32 %indvars137.le, 1
  br label %.thread

.thread.split.loop.exit178:                       ; preds = %.lr.ph195
  %i.ag = trunc nuw i64 %indvars.iv.next to i32
  br label %.thread

.thread:                                          ; preds = %.thread.split.loop.exit178, %.thread.split.loop.exit
  %indvars.iv188 = phi i64 [ %indvars.iv.lcssa, %.thread.split.loop.exit ], [ %indvars.iv194, %.thread.split.loop.exit178 ]
  %.3110 = phi i32 [ %i.af, %.thread.split.loop.exit ], [ %i.ag, %.thread.split.loop.exit178 ] ; 2 uses
  %.156109 = phi i32 [ 1114112, %.thread.split.loop.exit ], [ %i.ad, %.thread.split.loop.exit178 ] ; 2 uses
  %i.ah = and i64 %indvars.iv188, 4294967294
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 4            ; 2 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 128) ; 2 uses
  %i.ak = icmp slt i32 %i.aj, 2048
  br i1 %i.ak, label %.lr.ph, label %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 10 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 300
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 332
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 460
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 492 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 508 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 300 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 316 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 332 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 348 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 364 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 380 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 396 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 412 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 428 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 444 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 460 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 476 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.m
  %.4119 = phi i32 [ %.3110, %.lr.ph ], [ %.5, %bb.m ] ; 4 uses
  %.257118 = phi i32 [ %.156109, %.lr.ph ], [ %.358, %bb.m ] ; 3 uses
  %.163117 = phi i32 [ %spec.store.select, %.lr.ph ], [ %i.gg, %bb.m ] ; 3 uses
  %i.bu = tail call i32 @llvm.smin.i32(i32 %.257118, i32 2048) ; 3 uses
  %i.bv = ashr i32 %.163117, 6                    ; 4 uses
  %i.bw = and i32 %.163117, 63                    ; 6 uses
  %i.bx = shl nuw i32 1, %i.bv                    ; 5 uses
  %i.by = add nsw i32 %.163117, 1
  %i.bz = icmp eq i32 %i.by, %i.bu
  br i1 %i.bz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ca = zext nneg i32 %i.bw to i64
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = or i32 %i.cc, %i.bx
  store i32 %i.cd, ptr %i.cb, align 4
  br label %_ZN6icu_78L12set32x64BitsEPjii.exit

bb.h:                                             ; preds = %bb.f
  %i.ce = ashr i32 %i.bu, 6                       ; 6 uses
  %i.cf = and i32 %i.bu, 63                       ; 5 uses
  %i.cg = icmp eq i32 %i.bv, %i.ce
  br i1 %i.cg, label %.preheader.i, label %bb.i

.preheader.i:                                     ; preds = %bb.h
  %i.ch = icmp samesign ult i32 %i.bw, %i.cf
  br i1 %i.ch, label %.lr.ph55.preheader.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit

.lr.ph55.preheader.i:                             ; preds = %.preheader.i
  %i.ci = zext nneg i32 %i.bw to i64              ; 4 uses
  %wide.trip.count70.i = zext nneg i32 %i.cf to i64 ; 2 uses
  %i.cj = sub nsw i64 %wide.trip.count70.i, %i.ci ; 3 uses
  %min.iters.check = icmp ult i64 %i.cj, 8
  br i1 %min.iters.check, label %.lr.ph55.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph55.preheader.i
  %n.vec = and i64 %i.cj, -8                      ; 3 uses
  %i.ck = add nsw i64 %n.vec, %i.ci
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.al, i64 %i.ci
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %gep, align 4
  %wide.load197 = load <4 x i32>, ptr %i.cl, align 4
  %i.cm = or <4 x i32> %wide.load, %broadcast.splat
  %i.cn = or <4 x i32> %wide.load197, %broadcast.splat
  store <4 x i32> %i.cm, ptr %gep, align 4
  store <4 x i32> %i.cn, ptr %i.cl, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !9

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cj, %n.vec
  br i1 %cmp.n, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph55.i.preheader

.lr.ph55.i.preheader:                             ; preds = %.lr.ph55.preheader.i, %middle.block
  %indvars.iv67.i.ph = phi i64 [ %i.ci, %.lr.ph55.preheader.i ], [ %i.ck, %middle.block ]
  br label %.lr.ph55.i

.lr.ph55.i:                                       ; preds = %.lr.ph55.i.preheader, %.lr.ph55.i
  %indvars.iv67.i = phi i64 [ %indvars.iv.next68.i, %.lr.ph55.i ], [ %indvars.iv67.i.ph, %.lr.ph55.i.preheader ] ; 2 uses
  %indvars.iv.next68.i = add nuw nsw i64 %indvars.iv67.i, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv67.i ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = or i32 %i.cq, %i.bx
  store i32 %i.cr, ptr %i.cp, align 4
  %exitcond71.not.i = icmp eq i64 %indvars.iv.next68.i, %wide.trip.count70.i
  br i1 %exitcond71.not.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph55.i, !llvm.loop !12

bb.i:                                             ; preds = %bb.h
  %.not.i = icmp eq i32 %i.bw, 0
  br i1 %.not.i, label %bb.j, label %.preheader51.preheader.i

.preheader51.preheader.i:                         ; preds = %bb.i
  %i.cs = zext nneg i32 %i.bw to i64              ; 10 uses
  %i.ct = sub nuw nsw i64 64, %i.cs               ; 2 uses
  %min.iters.check224 = icmp samesign ugt i32 %i.bw, 56
  br i1 %min.iters.check224, label %.preheader51.i.preheader, label %vector.ph225

vector.ph225:                                     ; preds = %.preheader51.preheader.i
  %n.vec227 = and i64 %i.ct, 120                  ; 8 uses
  %i.cu = add nuw nsw i64 %n.vec227, %i.cs
  %broadcast.splatinsert228 = insertelement <4 x i32> poison, i32 %i.bx, i64 0
  %broadcast.splat229 = shufflevector <4 x i32> %broadcast.splatinsert228, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.cs ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load232 = load <4 x i32>, ptr %i.cv, align 4
  %wide.load233 = load <4 x i32>, ptr %i.cw, align 4
  %i.cx = or <4 x i32> %wide.load232, %broadcast.splat229
  %i.cy = or <4 x i32> %wide.load233, %broadcast.splat229
  store <4 x i32> %i.cx, ptr %i.cv, align 4
  store <4 x i32> %i.cy, ptr %i.cw, align 4
  %i.cz = icmp eq i64 %n.vec227, 8
  br i1 %i.cz, label %middle.block235, label %vector.body230.1

vector.body230.1:                                 ; preds = %vector.ph225
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %i.cs ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 2 uses
  %wide.load232.1 = load <4 x i32>, ptr %i.da, align 4
  %wide.load233.1 = load <4 x i32>, ptr %i.db, align 4
  %i.dc = or <4 x i32> %wide.load232.1, %broadcast.splat229
  %i.dd = or <4 x i32> %wide.load233.1, %broadcast.splat229
  store <4 x i32> %i.dc, ptr %i.da, align 4
  store <4 x i32> %i.dd, ptr %i.db, align 4
  %i.de = icmp eq i64 %n.vec227, 16
  br i1 %i.de, label %middle.block235, label %vector.body230.2

vector.body230.2:                                 ; preds = %vector.body230.1
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %i.cs ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16 ; 2 uses
  %wide.load232.2 = load <4 x i32>, ptr %i.df, align 4
  %wide.load233.2 = load <4 x i32>, ptr %i.dg, align 4
  %i.dh = or <4 x i32> %wide.load232.2, %broadcast.splat229
  %i.di = or <4 x i32> %wide.load233.2, %broadcast.splat229
  store <4 x i32> %i.dh, ptr %i.df, align 4
  store <4 x i32> %i.di, ptr %i.dg, align 4
  %i.dj = icmp eq i64 %n.vec227, 24
  br i1 %i.dj, label %middle.block235, label %vector.body230.3

vector.body230.3:                                 ; preds = %vector.body230.2
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.cs ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 2 uses
  %wide.load232.3 = load <4 x i32>, ptr %i.dk, align 4
  %wide.load233.3 = load <4 x i32>, ptr %i.dl, align 4
  %i.dm = or <4 x i32> %wide.load232.3, %broadcast.splat229
  %i.dn = or <4 x i32> %wide.load233.3, %broadcast.splat229
  store <4 x i32> %i.dm, ptr %i.dk, align 4
  store <4 x i32> %i.dn, ptr %i.dl, align 4
  %i.do = icmp eq i64 %n.vec227, 32
  br i1 %i.do, label %middle.block235, label %vector.body230.4

vector.body230.4:                                 ; preds = %vector.body230.3
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cs ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %wide.load232.4 = load <4 x i32>, ptr %i.dp, align 4
  %wide.load233.4 = load <4 x i32>, ptr %i.dq, align 4
  %i.dr = or <4 x i32> %wide.load232.4, %broadcast.splat229
  %i.ds = or <4 x i32> %wide.load233.4, %broadcast.splat229
  store <4 x i32> %i.dr, ptr %i.dp, align 4
  store <4 x i32> %i.ds, ptr %i.dq, align 4
  %i.dt = icmp eq i64 %n.vec227, 40
  br i1 %i.dt, label %middle.block235, label %vector.body230.5

vector.body230.5:                                 ; preds = %vector.body230.4
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %i.cs ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %wide.load232.5 = load <4 x i32>, ptr %i.du, align 4
  %wide.load233.5 = load <4 x i32>, ptr %i.dv, align 4
  %i.dw = or <4 x i32> %wide.load232.5, %broadcast.splat229
  %i.dx = or <4 x i32> %wide.load233.5, %broadcast.splat229
  store <4 x i32> %i.dw, ptr %i.du, align 4
  store <4 x i32> %i.dx, ptr %i.dv, align 4
  %i.dy = icmp eq i64 %n.vec227, 48
  br i1 %i.dy, label %middle.block235, label %vector.body230.6

vector.body230.6:                                 ; preds = %vector.body230.5
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.cs ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 2 uses
  %wide.load232.6 = load <4 x i32>, ptr %i.dz, align 4
  %wide.load233.6 = load <4 x i32>, ptr %i.ea, align 4
  %i.eb = or <4 x i32> %wide.load232.6, %broadcast.splat229
  %i.ec = or <4 x i32> %wide.load233.6, %broadcast.splat229
  store <4 x i32> %i.eb, ptr %i.dz, align 4
  store <4 x i32> %i.ec, ptr %i.ea, align 4
  br label %middle.block235

middle.block235:                                  ; preds = %vector.body230.6, %vector.body230.5, %vector.body230.4, %vector.body230.3, %vector.body230.2, %vector.body230.1, %vector.ph225
  %cmp.n236 = icmp eq i64 %i.ct, %n.vec227
  br i1 %cmp.n236, label %.loopexit293, label %.preheader51.i.preheader

.preheader51.i.preheader:                         ; preds = %.preheader51.preheader.i, %middle.block235
  %indvars.iv.i.ph = phi i64 [ %i.cs, %.preheader51.preheader.i ], [ %i.cu, %middle.block235 ]
  br label %.preheader51.i

.preheader51.i:                                   ; preds = %.preheader51.i.preheader, %.preheader51.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.preheader51.i ], [ %indvars.iv.i.ph, %.preheader51.i.preheader ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4
  %i.ef = or i32 %i.ee, %i.bx
  store i32 %i.ef, ptr %i.ed, align 4
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 64
  br i1 %exitcond.not.i, label %.loopexit293, label %.preheader51.i, !llvm.loop !13

.loopexit293:                                     ; preds = %.preheader51.i, %middle.block235
  %i.eg = add nsw i32 %i.bv, 1
  br label %bb.j

bb.j:                                             ; preds = %.loopexit293, %bb.i
  %.0.i = phi i32 [ %i.eg, %.loopexit293 ], [ %i.bv, %bb.i ] ; 2 uses
  %i.eh = icmp slt i32 %.0.i, %i.ce
  br i1 %i.eh, label %vector.body217, label %.loopexit50.i

vector.body217:                                   ; preds = %bb.j
  %notmask.i = shl nsw i32 -1, %.0.i
  %i.ei = icmp slt i32 %i.ce, 32
  %notmask48.i = shl nsw i32 -1, %i.ce
  %i.ej = xor i32 %notmask48.i, -1
  %i.ek = select i1 %i.ei, i32 %i.ej, i32 -1
  %.043.i = and i32 %notmask.i, %i.ek
  %broadcast.splatinsert215 = insertelement <4 x i32> poison, i32 %.043.i, i64 0
  %broadcast.splat216 = shufflevector <4 x i32> %broadcast.splatinsert215, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load219 = load <4 x i32>, ptr %i.al, align 4
  %wide.load220 = load <4 x i32>, ptr %i.as, align 4
  %i.el = or <4 x i32> %wide.load219, %broadcast.splat216
  %i.em = or <4 x i32> %wide.load220, %broadcast.splat216
  store <4 x i32> %i.el, ptr %i.al, align 4
  store <4 x i32> %i.em, ptr %i.as, align 4
  %wide.load219.1 = load <4 x i32>, ptr %i.at, align 4
  %wide.load220.1 = load <4 x i32>, ptr %i.au, align 4
  %i.en = or <4 x i32> %wide.load219.1, %broadcast.splat216
  %i.eo = or <4 x i32> %wide.load220.1, %broadcast.splat216
  store <4 x i32> %i.en, ptr %i.at, align 4
  store <4 x i32> %i.eo, ptr %i.au, align 4
  %wide.load219.2 = load <4 x i32>, ptr %i.av, align 4
  %wide.load220.2 = load <4 x i32>, ptr %i.aw, align 4
  %i.ep = or <4 x i32> %wide.load219.2, %broadcast.splat216
  %i.eq = or <4 x i32> %wide.load220.2, %broadcast.splat216
  store <4 x i32> %i.ep, ptr %i.av, align 4
  store <4 x i32> %i.eq, ptr %i.aw, align 4
  %wide.load219.3 = load <4 x i32>, ptr %i.ax, align 4
  %wide.load220.3 = load <4 x i32>, ptr %i.ay, align 4
  %i.er = or <4 x i32> %wide.load219.3, %broadcast.splat216
  %i.es = or <4 x i32> %wide.load220.3, %broadcast.splat216
  store <4 x i32> %i.er, ptr %i.ax, align 4
  store <4 x i32> %i.es, ptr %i.ay, align 4
  %wide.load219.4 = load <4 x i32>, ptr %i.az, align 4
  %wide.load220.4 = load <4 x i32>, ptr %i.ba, align 4
  %i.et = or <4 x i32> %wide.load219.4, %broadcast.splat216
  %i.eu = or <4 x i32> %wide.load220.4, %broadcast.splat216
  store <4 x i32> %i.et, ptr %i.az, align 4
  store <4 x i32> %i.eu, ptr %i.ba, align 4
  %wide.load219.5 = load <4 x i32>, ptr %i.bb, align 4
  %wide.load220.5 = load <4 x i32>, ptr %i.bc, align 4
  %i.ev = or <4 x i32> %wide.load219.5, %broadcast.splat216
  %i.ew = or <4 x i32> %wide.load220.5, %broadcast.splat216
  store <4 x i32> %i.ev, ptr %i.bb, align 4
  store <4 x i32> %i.ew, ptr %i.bc, align 4
  %wide.load219.6 = load <4 x i32>, ptr %i.bd, align 4
  %wide.load220.6 = load <4 x i32>, ptr %i.be, align 4
  %i.ex = or <4 x i32> %wide.load219.6, %broadcast.splat216
  %i.ey = or <4 x i32> %wide.load220.6, %broadcast.splat216
  store <4 x i32> %i.ex, ptr %i.bd, align 4
  store <4 x i32> %i.ey, ptr %i.be, align 4
  %wide.load219.7 = load <4 x i32>, ptr %i.bf, align 4
  %wide.load220.7 = load <4 x i32>, ptr %i.bg, align 4
  %i.ez = or <4 x i32> %wide.load219.7, %broadcast.splat216
  %i.fa = or <4 x i32> %wide.load220.7, %broadcast.splat216
  store <4 x i32> %i.ez, ptr %i.bf, align 4
  store <4 x i32> %i.fa, ptr %i.bg, align 4
  br label %.loopexit50.i

.loopexit50.i:                                    ; preds = %vector.body217, %bb.j
  %i.fb = icmp eq i32 %i.ce, 32
  %i.fc = shl nuw i32 1, %i.ce
  %i.fd = select i1 %i.fb, i32 -2147483648, i32 %i.fc ; 2 uses
  %.not56.i = icmp eq i32 %i.cf, 0
  br i1 %.not56.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit50.i
  %wide.trip.count.i = zext nneg i32 %i.cf to i64 ; 3 uses
  %min.iters.check199 = icmp samesign ult i32 %i.cf, 8
  br i1 %min.iters.check199, label %.lr.ph.i.preheader, label %vector.ph200

vector.ph200:                                     ; preds = %.lr.ph.preheader.i
  %n.vec202 = and i64 %wide.trip.count.i, 56      ; 8 uses
  %broadcast.splatinsert203 = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %broadcast.splat204 = shufflevector <4 x i32> %broadcast.splatinsert203, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %wide.load207 = load <4 x i32>, ptr %i.al, align 4
  %wide.load208 = load <4 x i32>, ptr %i.bh, align 4
  %i.fe = or <4 x i32> %wide.load207, %broadcast.splat204
  %i.ff = or <4 x i32> %wide.load208, %broadcast.splat204
  store <4 x i32> %i.fe, ptr %i.al, align 4
  store <4 x i32> %i.ff, ptr %i.bh, align 4
  %i.fg = icmp eq i64 %n.vec202, 8
  br i1 %i.fg, label %middle.block210, label %vector.body205.1

vector.body205.1:                                 ; preds = %vector.ph200
  %wide.load207.1 = load <4 x i32>, ptr %i.bi, align 4
  %wide.load208.1 = load <4 x i32>, ptr %i.bj, align 4
  %i.fh = or <4 x i32> %wide.load207.1, %broadcast.splat204
  %i.fi = or <4 x i32> %wide.load208.1, %broadcast.splat204
  store <4 x i32> %i.fh, ptr %i.bi, align 4
  store <4 x i32> %i.fi, ptr %i.bj, align 4
  %i.fj = icmp eq i64 %n.vec202, 16
  br i1 %i.fj, label %middle.block210, label %vector.body205.2

vector.body205.2:                                 ; preds = %vector.body205.1
  %wide.load207.2 = load <4 x i32>, ptr %i.bk, align 4
  %wide.load208.2 = load <4 x i32>, ptr %i.bl, align 4
  %i.fk = or <4 x i32> %wide.load207.2, %broadcast.splat204
  %i.fl = or <4 x i32> %wide.load208.2, %broadcast.splat204
  store <4 x i32> %i.fk, ptr %i.bk, align 4
  store <4 x i32> %i.fl, ptr %i.bl, align 4
  %i.fm = icmp eq i64 %n.vec202, 24
  br i1 %i.fm, label %middle.block210, label %vector.body205.3

vector.body205.3:                                 ; preds = %vector.body205.2
  %wide.load207.3 = load <4 x i32>, ptr %i.bm, align 4
  %wide.load208.3 = load <4 x i32>, ptr %i.bn, align 4
  %i.fn = or <4 x i32> %wide.load207.3, %broadcast.splat204
  %i.fo = or <4 x i32> %wide.load208.3, %broadcast.splat204
  store <4 x i32> %i.fn, ptr %i.bm, align 4
  store <4 x i32> %i.fo, ptr %i.bn, align 4
  %i.fp = icmp eq i64 %n.vec202, 32
  br i1 %i.fp, label %middle.block210, label %vector.body205.4

vector.body205.4:                                 ; preds = %vector.body205.3
  %wide.load207.4 = load <4 x i32>, ptr %i.bo, align 4
  %wide.load208.4 = load <4 x i32>, ptr %i.bp, align 4
  %i.fq = or <4 x i32> %wide.load207.4, %broadcast.splat204
  %i.fr = or <4 x i32> %wide.load208.4, %broadcast.splat204
  store <4 x i32> %i.fq, ptr %i.bo, align 4
  store <4 x i32> %i.fr, ptr %i.bp, align 4
  %i.fs = icmp eq i64 %n.vec202, 40
  br i1 %i.fs, label %middle.block210, label %vector.body205.5

vector.body205.5:                                 ; preds = %vector.body205.4
  %wide.load207.5 = load <4 x i32>, ptr %i.bq, align 4
  %wide.load208.5 = load <4 x i32>, ptr %i.br, align 4
  %i.ft = or <4 x i32> %wide.load207.5, %broadcast.splat204
  %i.fu = or <4 x i32> %wide.load208.5, %broadcast.splat204
  store <4 x i32> %i.ft, ptr %i.bq, align 4
  store <4 x i32> %i.fu, ptr %i.br, align 4
  %i.fv = icmp eq i64 %n.vec202, 48
  br i1 %i.fv, label %middle.block210, label %vector.body205.6

vector.body205.6:                                 ; preds = %vector.body205.5
  %wide.load207.6 = load <4 x i32>, ptr %i.bs, align 4
  %wide.load208.6 = load <4 x i32>, ptr %i.bt, align 4
  %i.fw = or <4 x i32> %wide.load207.6, %broadcast.splat204
  %i.fx = or <4 x i32> %wide.load208.6, %broadcast.splat204
  store <4 x i32> %i.fw, ptr %i.bs, align 4
  store <4 x i32> %i.fx, ptr %i.bt, align 4
  br label %middle.block210

middle.block210:                                  ; preds = %vector.body205.6, %vector.body205.5, %vector.body205.4, %vector.body205.3, %vector.body205.2, %vector.body205.1, %vector.ph200
  %cmp.n211 = icmp eq i64 %n.vec202, %wide.trip.count.i
  br i1 %cmp.n211, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block210
  %indvars.iv63.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec202, %middle.block210 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i, %.lr.ph.i ], [ %indvars.iv63.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %i.fy = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv63.i ; 2 uses
  %i.fz = load i32, ptr %i.fy, align 4
  %i.ga = or i32 %i.fz, %i.fd
  store i32 %i.ga, ptr %i.fy, align 4
  %indvars.iv.next64.i = add nuw nsw i64 %indvars.iv63.i, 1 ; 2 uses
  %exitcond66.not.i = icmp eq i64 %indvars.iv.next64.i, %wide.trip.count.i
  br i1 %exitcond66.not.i, label %_ZN6icu_78L12set32x64BitsEPjii.exit, label %.lr.ph.i, !llvm.loop !14

_ZN6icu_78L12set32x64BitsEPjii.exit:              ; preds = %.lr.ph.i, %.lr.ph55.i, %middle.block210, %middle.block, %bb.g, %.preheader.i, %.loopexit50.i
  %i.gb = icmp sgt i32 %.257118, 2048
  br i1 %i.gb, label %.lr.ph130, label %bb.k
end_hunk_0
begin_hunk_1_@_ZN6icu_786BMPSet8initBitsEv:bb.a
  %i.gc = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.gd = add nsw i32 %.4119, 1                   ; 3 uses
  %i.ge = sext i32 %.4119 to i64
  %i.gf = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.ge
  %i.gg = load i32, ptr %i.gf, align 4            ; 3 uses
  %i.gh = load i32, ptr %i.b, align 8
  %i.gi = icmp slt i32 %i.gd, %i.gh
  br i1 %i.gi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gj = add nsw i32 %.4119, 2
  %i.gk = sext i32 %i.gd to i64
  %i.gl = getelementptr inbounds [4 x i8], ptr %i.gc, i64 %i.gk
  %i.gm = load i32, ptr %i.gl, align 4
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %.358 = phi i32 [ %i.gm, %bb.l ], [ 1114112, %bb.k ] ; 2 uses
  %.5 = phi i32 [ %i.gj, %bb.l ], [ %i.gd, %bb.k ] ; 2 uses
  %i.gn = icmp slt i32 %i.gg, 2048
  br i1 %i.gn, label %bb.f, label %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge, !llvm.loop !15

_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge:   ; preds = %bb.m, %.thread
  %.257.lcssa = phi i32 [ %.156109, %.thread ], [ %.358, %bb.m ]
  %.4.lcssa = phi i32 [ %.3110, %.thread ], [ %.5, %bb.m ]
  %.264 = phi i32 [ %spec.store.select, %.thread ], [ %i.gg, %bb.m ] ; 2 uses
  %i.go = icmp samesign ult i32 %.264, 65536
  br i1 %i.go, label %.lr.ph130, label %._crit_edge131

.lr.ph130:                                        ; preds = %_ZN6icu_78L12set32x64BitsEPjii.exit, %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge
  %.264169 = phi i32 [ %.264, %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge ], [ 2048, %_ZN6icu_78L12set32x64BitsEPjii.exit ]
  %.4.lcssa168 = phi i32 [ %.4.lcssa, %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge ], [ %.4119, %_ZN6icu_78L12set32x64BitsEPjii.exit ]
  %.257.lcssa167 = phi i32 [ %.257.lcssa, %_ZN6icu_78L12set32x64BitsEPjii.exit._crit_edge ], [ %.257118, %_ZN6icu_78L12set32x64BitsEPjii.exit ]
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 524 ; 12 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 556
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 588
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 620
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 652
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 684
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 716
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 748 ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 764 ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 540 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 556 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 604 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 620 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 636 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 652 ; 2 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 668 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 684 ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 700 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 716 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 732 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph130, %bb.ab
  %.0128 = phi i32 [ 2048, %.lr.ph130 ], [ %.2, %bb.ab ] ; 3 uses
  %.6127 = phi i32 [ %.4.lcssa168, %.lr.ph130 ], [ %.7, %bb.ab ] ; 3 uses
  %.459126 = phi i32 [ %.257.lcssa167, %.lr.ph130 ], [ %.661, %bb.ab ]
  %.365125 = phi i32 [ %.264169, %.lr.ph130 ], [ %i.ng, %bb.ab ]
  %spec.store.select1 = tail call i32 @llvm.smin.i32(i32 %.459126, i32 65536) ; 11 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.365125, i32 %.0128) ; 6 uses
  %i.hy = icmp slt i32 %spec.select, %spec.store.select1
  br i1 %i.hy, label %bb.o, label %bb.y

bb.o:                                             ; preds = %bb.n
  %i.hz = and i32 %spec.select, 63
  %.not = icmp eq i32 %i.hz, 0
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ia = lshr i32 %spec.select, 6
  %i.ib = lshr i32 %spec.select, 12
  %i.ic = shl nuw i32 65537, %i.ib
  %i.id = and i32 %i.ia, 63
  %i.ie = zext nneg i32 %i.id to i64
  %i.if = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.ie ; 2 uses
  %i.ig = load i32, ptr %i.if, align 4
  %i.ih = or i32 %i.ig, %i.ic
  store i32 %i.ih, ptr %i.if, align 4
  %i.ii = and i32 %spec.select, -64
  %i.ij = add nuw nsw i32 %i.ii, 64               ; 2 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.567 = phi i32 [ %i.ij, %bb.p ], [ %spec.select, %bb.o ] ; 4 uses
  %.1 = phi i32 [ %i.ij, %bb.p ], [ %.0128, %bb.o ] ; 2 uses
  %i.ik = icmp slt i32 %.567, %spec.store.select1
  br i1 %i.ik, label %bb.r, label %bb.y

bb.r:                                             ; preds = %bb.q
  %i.il = and i32 %spec.store.select1, -64        ; 2 uses
  %i.im = icmp slt i32 %.567, %i.il
  br i1 %i.im, label %bb.s, label %_ZN6icu_78L12set32x64BitsEPjii.exit106

bb.s:                                             ; preds = %bb.r
  %i.in = lshr i32 %.567, 6                       ; 2 uses
  %i.io = lshr i32 %spec.store.select1, 6         ; 2 uses
  %i.ip = lshr i32 %.567, 12                      ; 4 uses
  %i.iq = and i32 %i.in, 63                       ; 6 uses
  %i.ir = shl nuw nsw i32 1, %i.ip                ; 5 uses
  %i.is = add nuw nsw i32 %i.in, 1
  %i.it = icmp eq i32 %i.is, %i.io
  br i1 %i.it, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.iu = zext nneg i32 %i.iq to i64
  %i.iv = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.iu ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 4
  %i.ix = or i32 %i.iw, %i.ir
  store i32 %i.ix, ptr %i.iv, align 4
  br label %_ZN6icu_78L12set32x64BitsEPjii.exit106

bb.u:                                             ; preds = %bb.s
  %i.iy = lshr i32 %spec.store.select1, 12        ; 4 uses
  %i.iz = and i32 %i.io, 63                       ; 5 uses
  %i.ja = icmp eq i32 %i.ip, %i.iy
  br i1 %i.ja, label %.preheader.i99, label %bb.v

.preheader.i99:                                   ; preds = %bb.u
  %i.jb = icmp samesign ult i32 %i.iq, %i.iz
  br i1 %i.jb, label %.lr.ph55.preheader.i100, label %_ZN6icu_78L12set32x64BitsEPjii.exit106

.lr.ph55.preheader.i100:                          ; preds = %.preheader.i99
  %i.jc = zext nneg i32 %i.iq to i64              ; 4 uses
  %wide.trip.count70.i101 = zext nneg i32 %i.iz to i64 ; 2 uses
  %i.jd = sub nsw i64 %wide.trip.count70.i101, %i.jc ; 3 uses
  %min.iters.check239 = icmp ult i64 %i.jd, 8
  br i1 %min.iters.check239, label %.lr.ph55.i102.preheader, label %vector.ph240

vector.ph240:                                     ; preds = %.lr.ph55.preheader.i100
  %n.vec242 = and i64 %i.jd, -8                   ; 3 uses
  %i.je = add nsw i64 %n.vec242, %i.jc
  %broadcast.splatinsert243 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat244 = shufflevector <4 x i32> %broadcast.splatinsert243, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep316 = getelementptr [4 x i8], ptr %i.gp, i64 %i.jc
  br label %vector.body245

vector.body245:                                   ; preds = %vector.body245, %vector.ph240
  %index246 = phi i64 [ 0, %vector.ph240 ], [ %index.next249, %vector.body245 ] ; 2 uses
  %gep317 = getelementptr [4 x i8], ptr %invariant.gep316, i64 %index246 ; 3 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %gep317, i64 16 ; 2 uses
  %wide.load247 = load <4 x i32>, ptr %gep317, align 4
  %wide.load248 = load <4 x i32>, ptr %i.jf, align 4
  %i.jg = or <4 x i32> %wide.load247, %broadcast.splat244
  %i.jh = or <4 x i32> %wide.load248, %broadcast.splat244
  store <4 x i32> %i.jg, ptr %gep317, align 4
  store <4 x i32> %i.jh, ptr %i.jf, align 4
  %index.next249 = add nuw i64 %index246, 8       ; 2 uses
  %i.ji = icmp eq i64 %index.next249, %n.vec242
  br i1 %i.ji, label %middle.block250, label %vector.body245, !llvm.loop !16

middle.block250:                                  ; preds = %vector.body245
  %cmp.n251 = icmp eq i64 %i.jd, %n.vec242
  br i1 %cmp.n251, label %_ZN6icu_78L12set32x64BitsEPjii.exit106, label %.lr.ph55.i102.preheader

.lr.ph55.i102.preheader:                          ; preds = %.lr.ph55.preheader.i100, %middle.block250
  %indvars.iv67.i103.ph = phi i64 [ %i.jc, %.lr.ph55.preheader.i100 ], [ %i.je, %middle.block250 ]
  br label %.lr.ph55.i102

.lr.ph55.i102:                                    ; preds = %.lr.ph55.i102.preheader, %.lr.ph55.i102
  %indvars.iv67.i103 = phi i64 [ %indvars.iv.next68.i104, %.lr.ph55.i102 ], [ %indvars.iv67.i103.ph, %.lr.ph55.i102.preheader ] ; 2 uses
  %indvars.iv.next68.i104 = add nuw nsw i64 %indvars.iv67.i103, 1 ; 2 uses
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv67.i103 ; 2 uses
  %i.jk = load i32, ptr %i.jj, align 4
  %i.jl = or i32 %i.jk, %i.ir
  store i32 %i.jl, ptr %i.jj, align 4
  %exitcond71.not.i105 = icmp eq i64 %indvars.iv.next68.i104, %wide.trip.count70.i101
  br i1 %exitcond71.not.i105, label %_ZN6icu_78L12set32x64BitsEPjii.exit106, label %.lr.ph55.i102, !llvm.loop !17

bb.v:                                             ; preds = %bb.u
  %.not.i78 = icmp eq i32 %i.iq, 0
  br i1 %.not.i78, label %bb.w, label %.preheader51.preheader.i79

.preheader51.preheader.i79:                       ; preds = %bb.v
  %i.jm = zext nneg i32 %i.iq to i64              ; 10 uses
  %i.jn = sub nuw nsw i64 64, %i.jm               ; 2 uses
  %min.iters.check279 = icmp samesign ugt i32 %i.iq, 56
  br i1 %min.iters.check279, label %.preheader51.i80.preheader, label %vector.ph280

vector.ph280:                                     ; preds = %.preheader51.preheader.i79
  %n.vec282 = and i64 %i.jn, 120                  ; 8 uses
  %i.jo = add nuw nsw i64 %n.vec282, %i.jm
  %broadcast.splatinsert283 = insertelement <4 x i32> poison, i32 %i.ir, i64 0
  %broadcast.splat284 = shufflevector <4 x i32> %broadcast.splatinsert283, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %i.jp = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %i.jm ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 16 ; 2 uses
  %wide.load287 = load <4 x i32>, ptr %i.jp, align 4
  %wide.load288 = load <4 x i32>, ptr %i.jq, align 4
  %i.jr = or <4 x i32> %wide.load287, %broadcast.splat284
  %i.js = or <4 x i32> %wide.load288, %broadcast.splat284
  store <4 x i32> %i.jr, ptr %i.jp, align 4
  store <4 x i32> %i.js, ptr %i.jq, align 4
  %i.jt = icmp eq i64 %n.vec282, 8
  br i1 %i.jt, label %middle.block290, label %vector.body285.1

vector.body285.1:                                 ; preds = %vector.ph280
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.gq, i64 %i.jm ; 3 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 16 ; 2 uses
  %wide.load287.1 = load <4 x i32>, ptr %i.ju, align 4
  %wide.load288.1 = load <4 x i32>, ptr %i.jv, align 4
  %i.jw = or <4 x i32> %wide.load287.1, %broadcast.splat284
  %i.jx = or <4 x i32> %wide.load288.1, %broadcast.splat284
  store <4 x i32> %i.jw, ptr %i.ju, align 4
  store <4 x i32> %i.jx, ptr %i.jv, align 4
  %i.jy = icmp eq i64 %n.vec282, 16
  br i1 %i.jy, label %middle.block290, label %vector.body285.2

vector.body285.2:                                 ; preds = %vector.body285.1
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.jm ; 3 uses
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 16 ; 2 uses
  %wide.load287.2 = load <4 x i32>, ptr %i.jz, align 4
  %wide.load288.2 = load <4 x i32>, ptr %i.ka, align 4
  %i.kb = or <4 x i32> %wide.load287.2, %broadcast.splat284
  %i.kc = or <4 x i32> %wide.load288.2, %broadcast.splat284
  store <4 x i32> %i.kb, ptr %i.jz, align 4
  store <4 x i32> %i.kc, ptr %i.ka, align 4
  %i.kd = icmp eq i64 %n.vec282, 24
  br i1 %i.kd, label %middle.block290, label %vector.body285.3

vector.body285.3:                                 ; preds = %vector.body285.2
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %i.jm ; 3 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 16 ; 2 uses
  %wide.load287.3 = load <4 x i32>, ptr %i.ke, align 4
  %wide.load288.3 = load <4 x i32>, ptr %i.kf, align 4
  %i.kg = or <4 x i32> %wide.load287.3, %broadcast.splat284
  %i.kh = or <4 x i32> %wide.load288.3, %broadcast.splat284
  store <4 x i32> %i.kg, ptr %i.ke, align 4
  store <4 x i32> %i.kh, ptr %i.kf, align 4
  %i.ki = icmp eq i64 %n.vec282, 32
  br i1 %i.ki, label %middle.block290, label %vector.body285.4

vector.body285.4:                                 ; preds = %vector.body285.3
  %i.kj = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %i.jm ; 3 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16 ; 2 uses
  %wide.load287.4 = load <4 x i32>, ptr %i.kj, align 4
  %wide.load288.4 = load <4 x i32>, ptr %i.kk, align 4
  %i.kl = or <4 x i32> %wide.load287.4, %broadcast.splat284
  %i.km = or <4 x i32> %wide.load288.4, %broadcast.splat284
  store <4 x i32> %i.kl, ptr %i.kj, align 4
  store <4 x i32> %i.km, ptr %i.kk, align 4
  %i.kn = icmp eq i64 %n.vec282, 40
  br i1 %i.kn, label %middle.block290, label %vector.body285.5

vector.body285.5:                                 ; preds = %vector.body285.4
  %i.ko = getelementptr inbounds nuw [4 x i8], ptr %i.gu, i64 %i.jm ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 16 ; 2 uses
  %wide.load287.5 = load <4 x i32>, ptr %i.ko, align 4
  %wide.load288.5 = load <4 x i32>, ptr %i.kp, align 4
  %i.kq = or <4 x i32> %wide.load287.5, %broadcast.splat284
  %i.kr = or <4 x i32> %wide.load288.5, %broadcast.splat284
  store <4 x i32> %i.kq, ptr %i.ko, align 4
  store <4 x i32> %i.kr, ptr %i.kp, align 4
  %i.ks = icmp eq i64 %n.vec282, 48
  br i1 %i.ks, label %middle.block290, label %vector.body285.6

vector.body285.6:                                 ; preds = %vector.body285.5
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.gv, i64 %i.jm ; 3 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 16 ; 2 uses
  %wide.load287.6 = load <4 x i32>, ptr %i.kt, align 4
  %wide.load288.6 = load <4 x i32>, ptr %i.ku, align 4
  %i.kv = or <4 x i32> %wide.load287.6, %broadcast.splat284
  %i.kw = or <4 x i32> %wide.load288.6, %broadcast.splat284
  store <4 x i32> %i.kv, ptr %i.kt, align 4
  store <4 x i32> %i.kw, ptr %i.ku, align 4
  br label %middle.block290

middle.block290:                                  ; preds = %vector.body285.6, %vector.body285.5, %vector.body285.4, %vector.body285.3, %vector.body285.2, %vector.body285.1, %vector.ph280
  %cmp.n291 = icmp eq i64 %i.jn, %n.vec282
  br i1 %cmp.n291, label %.loopexit, label %.preheader51.i80.preheader

.preheader51.i80.preheader:                       ; preds = %.preheader51.preheader.i79, %middle.block290
  %indvars.iv.i81.ph = phi i64 [ %i.jm, %.preheader51.preheader.i79 ], [ %i.jo, %middle.block290 ]
  br label %.preheader51.i80

.preheader51.i80:                                 ; preds = %.preheader51.i80.preheader, %.preheader51.i80
  %indvars.iv.i81 = phi i64 [ %indvars.iv.next.i82, %.preheader51.i80 ], [ %indvars.iv.i81.ph, %.preheader51.i80.preheader ] ; 2 uses
  %indvars.iv.next.i82 = add nuw nsw i64 %indvars.iv.i81, 1 ; 2 uses
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv.i81 ; 2 uses
  %i.ky = load i32, ptr %i.kx, align 4
  %i.kz = or i32 %i.ky, %i.ir
  store i32 %i.kz, ptr %i.kx, align 4
  %exitcond.not.i83 = icmp eq i64 %indvars.iv.next.i82, 64
  br i1 %exitcond.not.i83, label %.loopexit, label %.preheader51.i80, !llvm.loop !18

.loopexit:                                        ; preds = %.preheader51.i80, %middle.block290
  %i.la = add nuw nsw i32 %i.ip, 1
  br label %bb.w

bb.w:                                             ; preds = %.loopexit, %bb.v
  %.0.i84 = phi i32 [ %i.la, %.loopexit ], [ %i.ip, %bb.v ] ; 2 uses
  %i.lb = icmp samesign ult i32 %.0.i84, %i.iy
  br i1 %i.lb, label %vector.body272, label %.loopexit50.i85

vector.body272:                                   ; preds = %bb.w
  %notmask.i93 = shl nsw i32 -1, %.0.i84
  %notmask48.i94 = shl nsw i32 -1, %i.iy
  %i.lc = xor i32 %notmask48.i94, -1
  %.043.i95 = and i32 %notmask.i93, %i.lc
  %broadcast.splatinsert270 = insertelement <4 x i32> poison, i32 %.043.i95, i64 0
  %broadcast.splat271 = shufflevector <4 x i32> %broadcast.splatinsert270, <4 x i32> poison, <4 x i32> zeroinitializer ; 16 uses
  %wide.load274 = load <4 x i32>, ptr %i.gp, align 4
  %wide.load275 = load <4 x i32>, ptr %i.gw, align 4
  %i.ld = or <4 x i32> %wide.load274, %broadcast.splat271
  %i.le = or <4 x i32> %wide.load275, %broadcast.splat271
  store <4 x i32> %i.ld, ptr %i.gp, align 4
  store <4 x i32> %i.le, ptr %i.gw, align 4
  %wide.load274.1 = load <4 x i32>, ptr %i.gx, align 4
  %wide.load275.1 = load <4 x i32>, ptr %i.gy, align 4
  %i.lf = or <4 x i32> %wide.load274.1, %broadcast.splat271
  %i.lg = or <4 x i32> %wide.load275.1, %broadcast.splat271
  store <4 x i32> %i.lf, ptr %i.gx, align 4
  store <4 x i32> %i.lg, ptr %i.gy, align 4
  %wide.load274.2 = load <4 x i32>, ptr %i.gz, align 4
  %wide.load275.2 = load <4 x i32>, ptr %i.ha, align 4
  %i.lh = or <4 x i32> %wide.load274.2, %broadcast.splat271
  %i.li = or <4 x i32> %wide.load275.2, %broadcast.splat271
  store <4 x i32> %i.lh, ptr %i.gz, align 4
  store <4 x i32> %i.li, ptr %i.ha, align 4
  %wide.load274.3 = load <4 x i32>, ptr %i.hb, align 4
  %wide.load275.3 = load <4 x i32>, ptr %i.hc, align 4
  %i.lj = or <4 x i32> %wide.load274.3, %broadcast.splat271
  %i.lk = or <4 x i32> %wide.load275.3, %broadcast.splat271
  store <4 x i32> %i.lj, ptr %i.hb, align 4
  store <4 x i32> %i.lk, ptr %i.hc, align 4
  %wide.load274.4 = load <4 x i32>, ptr %i.hd, align 4
  %wide.load275.4 = load <4 x i32>, ptr %i.he, align 4
  %i.ll = or <4 x i32> %wide.load274.4, %broadcast.splat271
  %i.lm = or <4 x i32> %wide.load275.4, %broadcast.splat271
  store <4 x i32> %i.ll, ptr %i.hd, align 4
  store <4 x i32> %i.lm, ptr %i.he, align 4
  %wide.load274.5 = load <4 x i32>, ptr %i.hf, align 4
  %wide.load275.5 = load <4 x i32>, ptr %i.hg, align 4
  %i.ln = or <4 x i32> %wide.load274.5, %broadcast.splat271
  %i.lo = or <4 x i32> %wide.load275.5, %broadcast.splat271
  store <4 x i32> %i.ln, ptr %i.hf, align 4
  store <4 x i32> %i.lo, ptr %i.hg, align 4
  %wide.load274.6 = load <4 x i32>, ptr %i.hh, align 4
  %wide.load275.6 = load <4 x i32>, ptr %i.hi, align 4
  %i.lp = or <4 x i32> %wide.load274.6, %broadcast.splat271
  %i.lq = or <4 x i32> %wide.load275.6, %broadcast.splat271
  store <4 x i32> %i.lp, ptr %i.hh, align 4
  store <4 x i32> %i.lq, ptr %i.hi, align 4
  %wide.load274.7 = load <4 x i32>, ptr %i.hj, align 4
  %wide.load275.7 = load <4 x i32>, ptr %i.hk, align 4
  %i.lr = or <4 x i32> %wide.load274.7, %broadcast.splat271
  %i.ls = or <4 x i32> %wide.load275.7, %broadcast.splat271
  store <4 x i32> %i.lr, ptr %i.hj, align 4
  store <4 x i32> %i.ls, ptr %i.hk, align 4
  br label %.loopexit50.i85

.loopexit50.i85:                                  ; preds = %vector.body272, %bb.w
  %i.lt = shl nuw nsw i32 1, %i.iy                ; 2 uses
  %.not56.i86 = icmp eq i32 %i.iz, 0
  br i1 %.not56.i86, label %_ZN6icu_78L12set32x64BitsEPjii.exit106, label %.lr.ph.preheader.i87

.lr.ph.preheader.i87:                             ; preds = %.loopexit50.i85
  %wide.trip.count.i88 = zext nneg i32 %i.iz to i64 ; 3 uses
  %min.iters.check254 = icmp samesign ult i32 %i.iz, 8
  br i1 %min.iters.check254, label %.lr.ph.i89.preheader, label %vector.ph255

vector.ph255:                                     ; preds = %.lr.ph.preheader.i87
  %n.vec257 = and i64 %wide.trip.count.i88, 56    ; 8 uses
  %broadcast.splatinsert258 = insertelement <4 x i32> poison, i32 %i.lt, i64 0
  %broadcast.splat259 = shufflevector <4 x i32> %broadcast.splatinsert258, <4 x i32> poison, <4 x i32> zeroinitializer ; 14 uses
  %wide.load262 = load <4 x i32>, ptr %i.gp, align 4
  %wide.load263 = load <4 x i32>, ptr %i.hl, align 4
  %i.lu = or <4 x i32> %wide.load262, %broadcast.splat259
  %i.lv = or <4 x i32> %wide.load263, %broadcast.splat259
  store <4 x i32> %i.lu, ptr %i.gp, align 4
  store <4 x i32> %i.lv, ptr %i.hl, align 4
  %i.lw = icmp eq i64 %n.vec257, 8
  br i1 %i.lw, label %middle.block265, label %vector.body260.1

vector.body260.1:                                 ; preds = %vector.ph255
  %wide.load262.1 = load <4 x i32>, ptr %i.hm, align 4
  %wide.load263.1 = load <4 x i32>, ptr %i.hn, align 4
  %i.lx = or <4 x i32> %wide.load262.1, %broadcast.splat259
  %i.ly = or <4 x i32> %wide.load263.1, %broadcast.splat259
  store <4 x i32> %i.lx, ptr %i.hm, align 4
  store <4 x i32> %i.ly, ptr %i.hn, align 4
  %i.lz = icmp eq i64 %n.vec257, 16
  br i1 %i.lz, label %middle.block265, label %vector.body260.2

vector.body260.2:                                 ; preds = %vector.body260.1
  %wide.load262.2 = load <4 x i32>, ptr %i.ho, align 4
  %wide.load263.2 = load <4 x i32>, ptr %i.hp, align 4
  %i.ma = or <4 x i32> %wide.load262.2, %broadcast.splat259
  %i.mb = or <4 x i32> %wide.load263.2, %broadcast.splat259
  store <4 x i32> %i.ma, ptr %i.ho, align 4
  store <4 x i32> %i.mb, ptr %i.hp, align 4
  %i.mc = icmp eq i64 %n.vec257, 24
  br i1 %i.mc, label %middle.block265, label %vector.body260.3

vector.body260.3:                                 ; preds = %vector.body260.2
  %wide.load262.3 = load <4 x i32>, ptr %i.hq, align 4
  %wide.load263.3 = load <4 x i32>, ptr %i.hr, align 4
  %i.md = or <4 x i32> %wide.load262.3, %broadcast.splat259
  %i.me = or <4 x i32> %wide.load263.3, %broadcast.splat259
  store <4 x i32> %i.md, ptr %i.hq, align 4
  store <4 x i32> %i.me, ptr %i.hr, align 4
  %i.mf = icmp eq i64 %n.vec257, 32
  br i1 %i.mf, label %middle.block265, label %vector.body260.4

vector.body260.4:                                 ; preds = %vector.body260.3
  %wide.load262.4 = load <4 x i32>, ptr %i.hs, align 4
  %wide.load263.4 = load <4 x i32>, ptr %i.ht, align 4
  %i.mg = or <4 x i32> %wide.load262.4, %broadcast.splat259
  %i.mh = or <4 x i32> %wide.load263.4, %broadcast.splat259
  store <4 x i32> %i.mg, ptr %i.hs, align 4
  store <4 x i32> %i.mh, ptr %i.ht, align 4
  %i.mi = icmp eq i64 %n.vec257, 40
  br i1 %i.mi, label %middle.block265, label %vector.body260.5

vector.body260.5:                                 ; preds = %vector.body260.4
  %wide.load262.5 = load <4 x i32>, ptr %i.hu, align 4
  %wide.load263.5 = load <4 x i32>, ptr %i.hv, align 4
  %i.mj = or <4 x i32> %wide.load262.5, %broadcast.splat259
  %i.mk = or <4 x i32> %wide.load263.5, %broadcast.splat259
  store <4 x i32> %i.mj, ptr %i.hu, align 4
  store <4 x i32> %i.mk, ptr %i.hv, align 4
  %i.ml = icmp eq i64 %n.vec257, 48
  br i1 %i.ml, label %middle.block265, label %vector.body260.6

vector.body260.6:                                 ; preds = %vector.body260.5
  %wide.load262.6 = load <4 x i32>, ptr %i.hw, align 4
  %wide.load263.6 = load <4 x i32>, ptr %i.hx, align 4
  %i.mm = or <4 x i32> %wide.load262.6, %broadcast.splat259
  %i.mn = or <4 x i32> %wide.load263.6, %broadcast.splat259
  store <4 x i32> %i.mm, ptr %i.hw, align 4
  store <4 x i32> %i.mn, ptr %i.hx, align 4
  br label %middle.block265

middle.block265:                                  ; preds = %vector.body260.6, %vector.body260.5, %vector.body260.4, %vector.body260.3, %vector.body260.2, %vector.body260.1, %vector.ph255
  %cmp.n266 = icmp eq i64 %n.vec257, %wide.trip.count.i88
  br i1 %cmp.n266, label %_ZN6icu_78L12set32x64BitsEPjii.exit106, label %.lr.ph.i89.preheader

.lr.ph.i89.preheader:                             ; preds = %.lr.ph.preheader.i87, %middle.block265
  %indvars.iv63.i90.ph = phi i64 [ 0, %.lr.ph.preheader.i87 ], [ %n.vec257, %middle.block265 ]
  br label %.lr.ph.i89

.lr.ph.i89:                                       ; preds = %.lr.ph.i89.preheader, %.lr.ph.i89
  %indvars.iv63.i90 = phi i64 [ %indvars.iv.next64.i91, %.lr.ph.i89 ], [ %indvars.iv63.i90.ph, %.lr.ph.i89.preheader ] ; 2 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.gp, i64 %indvars.iv63.i90 ; 2 uses
  %i.mp = load i32, ptr %i.mo, align 4
  %i.mq = or i32 %i.mp, %i.lt
  store i32 %i.mq, ptr %i.mo, align 4
  %indvars.iv.next64.i91 = add nuw nsw i64 %indvars.iv63.i90, 1 ; 2 uses
  %exitcond66.not.i92 = icmp eq i64 %indvars.iv.next64.i91, %wide.trip.count.i88
  br i1 %exitcond66.not.i92, label %_ZN6icu_78L12set32x64BitsEPjii.exit106, label %.lr.ph.i89, !llvm.loop !19

_ZN6icu_78L12set32x64BitsEPjii.exit106:           ; preds = %.lr.ph.i89, %.lr.ph55.i102, %middle.block265, %middle.block250, %.loopexit50.i85, %.preheader.i99, %bb.t, %bb.r
  %i.mr = and i32 %spec.store.select1, 63
  %.not77 = icmp eq i32 %i.mr, 0
  br i1 %.not77, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN6icu_78L12set32x64BitsEPjii.exit106
  %i.ms = lshr i32 %spec.store.select1, 6
end_hunk_1
