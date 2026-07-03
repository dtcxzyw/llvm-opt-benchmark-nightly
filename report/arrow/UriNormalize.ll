inline.NumInlined: 48
inline.NumDeleted: 12
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@uriNormalizeSyntaxEngineW:bb.a

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %0, align 8, !tbaa !68    ; 14 uses
  %i.aw = ptrtoint ptr %i.av to i64               ; 2 uses
  %.not172 = icmp eq ptr %i.av, null
  br i1 %.not172, label %uriLowercaseInplaceW.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !79
  %.not173 = icmp eq i32 %i.ay, 0
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !80 ; 5 uses
  %i.bb = ptrtoint ptr %i.ba to i64
  br i1 %.not173, label %bb.u, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = icmp ugt ptr %i.ba, %i.av
  br i1 %i.bc, label %.preheader.i219.preheader, label %uriLowercaseInplaceW.exit

.preheader.i219.preheader:                        ; preds = %bb.r
  %i.bd = add i64 %i.aw, 4
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bb, i64 %i.bd)
  %i.be = xor i64 %i.aw, -1
  %i.bf = add i64 %umax, %i.be                    ; 2 uses
  %i.bg = lshr i64 %i.bf, 2
  %i.bh = add nuw nsw i64 %i.bg, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bf, 28
  br i1 %min.iters.check, label %.preheader.i219.preheader544, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i219.preheader
  %n.vec = and i64 %i.bh, 9223372036854775800     ; 3 uses
  %i.bi = shl i64 %n.vec, 2
  %i.bj = getelementptr i8, ptr %i.av, i64 %i.bi
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue428, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue428 ] ; 2 uses
  %i.bk = shl i64 %index, 2                       ; 8 uses
  %next.gep = getelementptr i8, ptr %i.av, i64 %i.bk ; 3 uses
  %i.bl = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep407 = getelementptr i8, ptr %i.bl, i64 4
  %i.bm = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep408 = getelementptr i8, ptr %i.bm, i64 8
  %i.bn = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep409 = getelementptr i8, ptr %i.bn, i64 12
  %i.bo = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep410 = getelementptr i8, ptr %i.bo, i64 16
  %i.bp = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep411 = getelementptr i8, ptr %i.bp, i64 20
  %i.bq = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep412 = getelementptr i8, ptr %i.bq, i64 24
  %i.br = getelementptr i8, ptr %i.av, i64 %i.bk
  %next.gep413 = getelementptr i8, ptr %i.br, i64 28
  %i.bs = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep, align 4, !tbaa !3 ; 5 uses
  %wide.load414 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !3 ; 5 uses
  %i.bt = add <4 x i32> %wide.load, splat (i32 -65)
  %i.bu = add <4 x i32> %wide.load414, splat (i32 -65)
  %i.bv = icmp ult <4 x i32> %i.bt, splat (i32 26) ; 4 uses
  %i.bw = icmp ult <4 x i32> %i.bu, splat (i32 26) ; 4 uses
  %i.bx = extractelement <4 x i1> %i.bv, i64 0
  br i1 %i.bx, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  %i.by = extractelement <4 x i32> %wide.load, i64 0
  %i.bz = or disjoint i32 %i.by, 32
  store i32 %i.bz, ptr %next.gep, align 4, !tbaa !3
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ca = extractelement <4 x i1> %i.bv, i64 1
  br i1 %i.ca, label %pred.store.if415, label %pred.store.continue416

pred.store.if415:                                 ; preds = %pred.store.continue
  %i.cb = extractelement <4 x i32> %wide.load, i64 1
  %i.cc = or disjoint i32 %i.cb, 32
  store i32 %i.cc, ptr %next.gep407, align 4, !tbaa !3
  br label %pred.store.continue416

pred.store.continue416:                           ; preds = %pred.store.if415, %pred.store.continue
  %i.cd = extractelement <4 x i1> %i.bv, i64 2
  br i1 %i.cd, label %pred.store.if417, label %pred.store.continue418

pred.store.if417:                                 ; preds = %pred.store.continue416
  %i.ce = extractelement <4 x i32> %wide.load, i64 2
  %i.cf = or disjoint i32 %i.ce, 32
  store i32 %i.cf, ptr %next.gep408, align 4, !tbaa !3
  br label %pred.store.continue418

pred.store.continue418:                           ; preds = %pred.store.if417, %pred.store.continue416
  %i.cg = extractelement <4 x i1> %i.bv, i64 3
  br i1 %i.cg, label %pred.store.if419, label %pred.store.continue420

pred.store.if419:                                 ; preds = %pred.store.continue418
  %i.ch = extractelement <4 x i32> %wide.load, i64 3
  %i.ci = or disjoint i32 %i.ch, 32
  store i32 %i.ci, ptr %next.gep409, align 4, !tbaa !3
  br label %pred.store.continue420

pred.store.continue420:                           ; preds = %pred.store.if419, %pred.store.continue418
  %i.cj = extractelement <4 x i1> %i.bw, i64 0
  br i1 %i.cj, label %pred.store.if421, label %pred.store.continue422

pred.store.if421:                                 ; preds = %pred.store.continue420
  %i.ck = extractelement <4 x i32> %wide.load414, i64 0
  %i.cl = or disjoint i32 %i.ck, 32
  store i32 %i.cl, ptr %next.gep410, align 4, !tbaa !3
  br label %pred.store.continue422

pred.store.continue422:                           ; preds = %pred.store.if421, %pred.store.continue420
  %i.cm = extractelement <4 x i1> %i.bw, i64 1
  br i1 %i.cm, label %pred.store.if423, label %pred.store.continue424

pred.store.if423:                                 ; preds = %pred.store.continue422
  %i.cn = extractelement <4 x i32> %wide.load414, i64 1
  %i.co = or disjoint i32 %i.cn, 32
  store i32 %i.co, ptr %next.gep411, align 4, !tbaa !3
  br label %pred.store.continue424

pred.store.continue424:                           ; preds = %pred.store.if423, %pred.store.continue422
  %i.cp = extractelement <4 x i1> %i.bw, i64 2
  br i1 %i.cp, label %pred.store.if425, label %pred.store.continue426

pred.store.if425:                                 ; preds = %pred.store.continue424
  %i.cq = extractelement <4 x i32> %wide.load414, i64 2
  %i.cr = or disjoint i32 %i.cq, 32
  store i32 %i.cr, ptr %next.gep412, align 4, !tbaa !3
  br label %pred.store.continue426

pred.store.continue426:                           ; preds = %pred.store.if425, %pred.store.continue424
  %i.cs = extractelement <4 x i1> %i.bw, i64 3
  br i1 %i.cs, label %pred.store.if427, label %pred.store.continue428

pred.store.if427:                                 ; preds = %pred.store.continue426
  %i.ct = extractelement <4 x i32> %wide.load414, i64 3
  %i.cu = or disjoint i32 %i.ct, 32
  store i32 %i.cu, ptr %next.gep413, align 4, !tbaa !3
  br label %pred.store.continue428

pred.store.continue428:                           ; preds = %pred.store.if427, %pred.store.continue426
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cv = icmp eq i64 %index.next, %n.vec
  br i1 %i.cv, label %middle.block, label %vector.body, !llvm.loop !81

middle.block:                                     ; preds = %pred.store.continue428
  %cmp.n = icmp eq i64 %i.bh, %n.vec
  br i1 %cmp.n, label %uriLowercaseInplaceW.exit, label %.preheader.i219.preheader544

.preheader.i219.preheader544:                     ; preds = %.preheader.i219.preheader, %middle.block
  %.018.i.ph = phi ptr [ %i.av, %.preheader.i219.preheader ], [ %i.bj, %middle.block ]
  br label %.preheader.i219

.preheader.i219:                                  ; preds = %.preheader.i219.preheader544, %bb.t
  %.018.i = phi ptr [ %i.cz, %bb.t ], [ %.018.i.ph, %.preheader.i219.preheader544 ] ; 3 uses
  %i.cw = load i32, ptr %.018.i, align 4, !tbaa !3 ; 2 uses
  %i.cx = add i32 %i.cw, -65
  %or.cond17.i220 = icmp ult i32 %i.cx, 26
  br i1 %or.cond17.i220, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.preheader.i219
  %i.cy = or disjoint i32 %i.cw, 32
  store i32 %i.cy, ptr %.018.i, align 4, !tbaa !3
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.preheader.i219
  %i.cz = getelementptr inbounds nuw i8, ptr %.018.i, i64 4 ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.ba
  br i1 %i.da, label %.preheader.i219, label %uriLowercaseInplaceW.exit, !llvm.loop !82

bb.u:                                             ; preds = %bb.q
  %i.db = icmp eq ptr %i.ba, null
  br i1 %i.db, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = ptrtoint ptr %i.ba to i64
  %i.dd = ptrtoint ptr %i.av to i64
  %i.de = sub i64 %i.dc, %i.dd                    ; 2 uses
  %i.df = lshr exact i64 %i.de, 2                 ; 3 uses
  %i.dg = trunc i64 %i.df to i32                  ; 2 uses
  %i.dh = icmp eq i32 %i.dg, 0
  br i1 %i.dh, label %uriLowercaseMallocW.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = icmp slt i32 %i.dg, 0
  br i1 %i.di, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dj = load ptr, ptr %3, align 8, !tbaa !31
  %i.dk = and i64 %i.df, 2147483647               ; 6 uses
  %i.dl = shl nuw nsw i64 %i.dk, 2
  %i.dm = tail call ptr %i.dj(ptr noundef nonnull %3, i64 noundef %i.dl) #7, !inline_history !83 ; 8 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.y, label %.lr.ph.i221

.lr.ph.i221:                                      ; preds = %bb.x
  %i.do = ptrtoaddr ptr %i.dm to i64
  %i.dp = load ptr, ptr %0, align 8, !tbaa !80    ; 5 uses
  %min.iters.check430 = icmp samesign ult i64 %i.dk, 8
  %i.dq = ptrtoaddr ptr %i.dp to i64
  %i.dr = sub i64 %i.dq, %i.do
  %diff.check = icmp ugt i64 %i.dr, -32
  %or.cond537 = select i1 %min.iters.check430, i1 true, i1 %diff.check
  br i1 %or.cond537, label %scalar.ph429.preheader, label %vector.ph431

vector.ph431:                                     ; preds = %.lr.ph.i221
  %n.vec433 = and i64 %i.df, 2147483640           ; 3 uses
  br label %vector.body434

vector.body434:                                   ; preds = %vector.body434, %vector.ph431
  %index435 = phi i64 [ 0, %vector.ph431 ], [ %index.next438, %vector.body434 ] ; 3 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %index435 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !3 ; 3 uses
  %wide.load437 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !3 ; 3 uses
  %i.du = add <4 x i32> %wide.load436, splat (i32 -65)
  %i.dv = add <4 x i32> %wide.load437, splat (i32 -65)
  %i.dw = icmp ult <4 x i32> %i.du, splat (i32 26)
  %i.dx = icmp ult <4 x i32> %i.dv, splat (i32 26)
  %i.dy = or disjoint <4 x i32> %wide.load436, splat (i32 32)
  %i.dz = or disjoint <4 x i32> %wide.load437, splat (i32 32)
  %i.ea = select <4 x i1> %i.dw, <4 x i32> %i.dy, <4 x i32> %wide.load436
  %i.eb = select <4 x i1> %i.dx, <4 x i32> %i.dz, <4 x i32> %wide.load437
  %i.ec = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index435 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  store <4 x i32> %i.ea, ptr %i.ec, align 4, !tbaa !3
  store <4 x i32> %i.eb, ptr %i.ed, align 4, !tbaa !3
  %index.next438 = add nuw i64 %index435, 8       ; 2 uses
  %i.ee = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.ee, label %middle.block439, label %vector.body434, !llvm.loop !84

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.dk, %n.vec433
  br i1 %cmp.n440, label %._crit_edge.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %.lr.ph.i221, %middle.block439
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i221 ], [ %n.vec433, %middle.block439 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %i.ef = and i64 %i.de, 4
  %lcmp.mod.not = icmp eq i64 %i.ef, 0
  br i1 %lcmp.mod.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.ph
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !3  ; 3 uses
  %i.ei = add i32 %i.eh, -65
  %or.cond.i222.prol = icmp ult i32 %i.ei, 26
  %i.ej = or disjoint i32 %i.eh, 32
  %spec.select.i.prol = select i1 %or.cond.i222.prol, i32 %i.ej, i32 %i.eh
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ek, align 4, !tbaa !3
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.el = icmp eq i64 %i.dk, %.neg
  br i1 %i.el, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i
  %i.en = load i32, ptr %i.em, align 4, !tbaa !3  ; 3 uses
  %i.eo = add i32 %i.en, -65
  %or.cond.i222 = icmp ult i32 %i.eo, 26
  %i.ep = or disjoint i32 %i.en, 32
  %spec.select.i = select i1 %or.cond.i222, i32 %i.ep, i32 %i.en
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.eq, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i
  %i.es = load i32, ptr %i.er, align 4, !tbaa !3  ; 3 uses
  %i.et = add i32 %i.es, -65
  %or.cond.i222.1 = icmp ult i32 %i.et, 26
  %i.eu = or disjoint i32 %i.es, 32
  %spec.select.i.1 = select i1 %or.cond.i222.1, i32 %i.eu, i32 %i.es
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.ev, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.dk
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !85

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block439
  store ptr %i.dm, ptr %0, align 8, !tbaa !80
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.ew, ptr %i.az, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ex = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ey = and i32 %1, 4
  %.not175 = icmp eq i32 %i.ey, 0
  br i1 %.not175, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !86 ; 18 uses
  %i.fc = ptrtoint ptr %i.fb to i64               ; 2 uses
  %.not176 = icmp eq ptr %i.fb, null
  br i1 %.not176, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !79
  %.not180 = icmp eq i32 %i.fe, 0
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !80 ; 9 uses
  %i.fh = ptrtoint ptr %i.fg to i64
  br i1 %.not180, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fi = icmp ugt ptr %i.fg, %i.fb
  br i1 %i.fi, label %.preheader.i224.preheader, label %uriLowercaseInplaceW.exit227

.preheader.i224.preheader:                        ; preds = %bb.ab
  %i.fj = add i64 %i.fc, 4
  %umax442 = tail call i64 @llvm.umax.i64(i64 %i.fh, i64 %i.fj)
  %i.fk = xor i64 %i.fc, -1
  %i.fl = add i64 %umax442, %i.fk                 ; 2 uses
  %i.fm = lshr i64 %i.fl, 2
  %i.fn = add nuw nsw i64 %i.fm, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.fl, 28
  br i1 %min.iters.check444, label %.preheader.i224.preheader543, label %vector.ph445

vector.ph445:                                     ; preds = %.preheader.i224.preheader
  %n.vec447 = and i64 %i.fn, 9223372036854775800  ; 3 uses
  %i.fo = shl i64 %n.vec447, 2
  %i.fp = getelementptr i8, ptr %i.fb, i64 %i.fo
  br label %vector.body448

vector.body448:                                   ; preds = %pred.store.continue475, %vector.ph445
  %index449 = phi i64 [ 0, %vector.ph445 ], [ %index.next476, %pred.store.continue475 ] ; 2 uses
  %i.fq = shl i64 %index449, 2                    ; 8 uses
  %next.gep450 = getelementptr i8, ptr %i.fb, i64 %i.fq ; 3 uses
  %i.fr = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep451 = getelementptr i8, ptr %i.fr, i64 4
  %i.fs = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep452 = getelementptr i8, ptr %i.fs, i64 8
  %i.ft = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep453 = getelementptr i8, ptr %i.ft, i64 12
  %i.fu = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep454 = getelementptr i8, ptr %i.fu, i64 16
  %i.fv = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep455 = getelementptr i8, ptr %i.fv, i64 20
  %i.fw = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep456 = getelementptr i8, ptr %i.fw, i64 24
  %i.fx = getelementptr i8, ptr %i.fb, i64 %i.fq
  %next.gep457 = getelementptr i8, ptr %i.fx, i64 28
  %i.fy = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load458 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !3 ; 5 uses
  %wide.load459 = load <4 x i32>, ptr %i.fy, align 4, !tbaa !3 ; 5 uses
  %i.fz = add <4 x i32> %wide.load458, splat (i32 -65)
  %i.ga = add <4 x i32> %wide.load459, splat (i32 -65)
  %i.gb = icmp ult <4 x i32> %i.fz, splat (i32 26) ; 4 uses
  %i.gc = icmp ult <4 x i32> %i.ga, splat (i32 26) ; 4 uses
  %i.gd = extractelement <4 x i1> %i.gb, i64 0
  br i1 %i.gd, label %pred.store.if460, label %pred.store.continue461

pred.store.if460:                                 ; preds = %vector.body448
  %i.ge = extractelement <4 x i32> %wide.load458, i64 0
  %i.gf = or disjoint i32 %i.ge, 32
  store i32 %i.gf, ptr %next.gep450, align 4, !tbaa !3
  br label %pred.store.continue461

pred.store.continue461:                           ; preds = %pred.store.if460, %vector.body448
  %i.gg = extractelement <4 x i1> %i.gb, i64 1
  br i1 %i.gg, label %pred.store.if462, label %pred.store.continue463

pred.store.if462:                                 ; preds = %pred.store.continue461
  %i.gh = extractelement <4 x i32> %wide.load458, i64 1
  %i.gi = or disjoint i32 %i.gh, 32
  store i32 %i.gi, ptr %next.gep451, align 4, !tbaa !3
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.if462, %pred.store.continue461
  %i.gj = extractelement <4 x i1> %i.gb, i64 2
  br i1 %i.gj, label %pred.store.if464, label %pred.store.continue465

pred.store.if464:                                 ; preds = %pred.store.continue463
  %i.gk = extractelement <4 x i32> %wide.load458, i64 2
  %i.gl = or disjoint i32 %i.gk, 32
  store i32 %i.gl, ptr %next.gep452, align 4, !tbaa !3
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.if464, %pred.store.continue463
  %i.gm = extractelement <4 x i1> %i.gb, i64 3
  br i1 %i.gm, label %pred.store.if466, label %pred.store.continue467

pred.store.if466:                                 ; preds = %pred.store.continue465
  %i.gn = extractelement <4 x i32> %wide.load458, i64 3
  %i.go = or disjoint i32 %i.gn, 32
  store i32 %i.go, ptr %next.gep453, align 4, !tbaa !3
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.if466, %pred.store.continue465
  %i.gp = extractelement <4 x i1> %i.gc, i64 0
  br i1 %i.gp, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %pred.store.continue467
  %i.gq = extractelement <4 x i32> %wide.load459, i64 0
  %i.gr = or disjoint i32 %i.gq, 32
  store i32 %i.gr, ptr %next.gep454, align 4, !tbaa !3
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %pred.store.continue467
  %i.gs = extractelement <4 x i1> %i.gc, i64 1
  br i1 %i.gs, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  %i.gt = extractelement <4 x i32> %wide.load459, i64 1
  %i.gu = or disjoint i32 %i.gt, 32
  store i32 %i.gu, ptr %next.gep455, align 4, !tbaa !3
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.gv = extractelement <4 x i1> %i.gc, i64 2
  br i1 %i.gv, label %pred.store.if472, label %pred.store.continue473

pred.store.if472:                                 ; preds = %pred.store.continue471
  %i.gw = extractelement <4 x i32> %wide.load459, i64 2
  %i.gx = or disjoint i32 %i.gw, 32
  store i32 %i.gx, ptr %next.gep456, align 4, !tbaa !3
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.gy = extractelement <4 x i1> %i.gc, i64 3
  br i1 %i.gy, label %pred.store.if474, label %pred.store.continue475

pred.store.if474:                                 ; preds = %pred.store.continue473
  %i.gz = extractelement <4 x i32> %wide.load459, i64 3
  %i.ha = or disjoint i32 %i.gz, 32
  store i32 %i.ha, ptr %next.gep457, align 4, !tbaa !3
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %index.next476 = add nuw i64 %index449, 8       ; 2 uses
  %i.hb = icmp eq i64 %index.next476, %n.vec447
  br i1 %i.hb, label %middle.block477, label %vector.body448, !llvm.loop !87

middle.block477:                                  ; preds = %pred.store.continue475
  %cmp.n478 = icmp eq i64 %i.fn, %n.vec447
  br i1 %cmp.n478, label %uriLowercaseInplaceW.exit227, label %.preheader.i224.preheader543

.preheader.i224.preheader543:                     ; preds = %.preheader.i224.preheader, %middle.block477
  %.018.i225.ph = phi ptr [ %i.fb, %.preheader.i224.preheader ], [ %i.fp, %middle.block477 ]
  br label %.preheader.i224

.preheader.i224:                                  ; preds = %.preheader.i224.preheader543, %bb.ad
  %.018.i225 = phi ptr [ %i.hf, %bb.ad ], [ %.018.i225.ph, %.preheader.i224.preheader543 ] ; 3 uses
  %i.hc = load i32, ptr %.018.i225, align 4, !tbaa !3 ; 2 uses
  %i.hd = add i32 %i.hc, -65
  %or.cond17.i226 = icmp ult i32 %i.hd, 26
  br i1 %or.cond17.i226, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i224
  %i.he = or disjoint i32 %i.hc, 32
  store i32 %i.he, ptr %.018.i225, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i224
  %i.hf = getelementptr inbounds nuw i8, ptr %.018.i225, i64 4 ; 2 uses
  %i.hg = icmp ult ptr %i.hf, %i.fg
  br i1 %i.hg, label %.preheader.i224, label %uriLowercaseInplaceW.exit227, !llvm.loop !88

bb.ae:                                            ; preds = %bb.aa
  %i.hh = icmp eq ptr %i.fg, null
  br i1 %i.hh, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hi = ptrtoint ptr %i.fg to i64
  %i.hj = ptrtoint ptr %i.fb to i64
  %i.hk = sub i64 %i.hi, %i.hj                    ; 2 uses
  %i.hl = lshr exact i64 %i.hk, 2                 ; 3 uses
  %i.hm = trunc i64 %i.hl to i32                  ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %uriLowercaseMallocW.exit237, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ho = icmp slt i32 %i.hm, 0
  br i1 %i.ho, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hp = load ptr, ptr %3, align 8, !tbaa !31
  %i.hq = and i64 %i.hl, 2147483647               ; 6 uses
  %i.hr = shl nuw nsw i64 %i.hq, 2
  %i.hs = tail call ptr %i.hp(ptr noundef nonnull %3, i64 noundef %i.hr) #7, !inline_history !83 ; 9 uses
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %bb.ai, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.ah
  %i.hu = ptrtoaddr ptr %i.hs to i64
  %i.hv = load ptr, ptr %i.fa, align 8, !tbaa !80 ; 5 uses
  %min.iters.check483 = icmp samesign ult i64 %i.hq, 8
  %i.hw = ptrtoaddr ptr %i.hv to i64
  %i.hx = sub i64 %i.hw, %i.hu
  %diff.check481 = icmp ugt i64 %i.hx, -32
  %or.cond539 = select i1 %min.iters.check483, i1 true, i1 %diff.check481
  br i1 %or.cond539, label %scalar.ph482.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.i228
  %n.vec486 = and i64 %i.hl, 2147483640           ; 3 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next491, %vector.body487 ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %index488 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 16
  %wide.load489 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !3 ; 3 uses
  %wide.load490 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !3 ; 3 uses
  %i.ia = add <4 x i32> %wide.load489, splat (i32 -65)
  %i.ib = add <4 x i32> %wide.load490, splat (i32 -65)
  %i.ic = icmp ult <4 x i32> %i.ia, splat (i32 26)
  %i.id = icmp ult <4 x i32> %i.ib, splat (i32 26)
  %i.ie = or disjoint <4 x i32> %wide.load489, splat (i32 32)
  %i.if = or disjoint <4 x i32> %wide.load490, splat (i32 32)
  %i.ig = select <4 x i1> %i.ic, <4 x i32> %i.ie, <4 x i32> %wide.load489
  %i.ih = select <4 x i1> %i.id, <4 x i32> %i.if, <4 x i32> %wide.load490
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %index488 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16
  store <4 x i32> %i.ig, ptr %i.ii, align 4, !tbaa !3
  store <4 x i32> %i.ih, ptr %i.ij, align 4, !tbaa !3
  %index.next491 = add nuw i64 %index488, 8       ; 2 uses
  %i.ik = icmp eq i64 %index.next491, %n.vec486
  br i1 %i.ik, label %middle.block492, label %vector.body487, !llvm.loop !89

middle.block492:                                  ; preds = %vector.body487
  %cmp.n493 = icmp eq i64 %i.hq, %n.vec486
  br i1 %cmp.n493, label %._crit_edge.i235, label %scalar.ph482.preheader

scalar.ph482.preheader:                           ; preds = %.lr.ph.i228, %middle.block492
  %indvars.iv.i230.ph = phi i64 [ 0, %.lr.ph.i228 ], [ %n.vec486, %middle.block492 ] ; 5 uses
  %.neg548 = or disjoint i64 %indvars.iv.i230.ph, 1
  %i.il = and i64 %i.hk, 4
  %lcmp.mod547.not = icmp eq i64 %i.il, 0
  br i1 %lcmp.mod547.not, label %scalar.ph482.prol.loopexit, label %scalar.ph482.prol

scalar.ph482.prol:                                ; preds = %scalar.ph482.preheader
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i230.ph
  %i.in = load i32, ptr %i.im, align 4, !tbaa !3  ; 3 uses
  %i.io = add i32 %i.in, -65
  %or.cond.i231.prol = icmp ult i32 %i.io, 26
  %i.ip = or disjoint i32 %i.in, 32
  %spec.select.i232.prol = select i1 %or.cond.i231.prol, i32 %i.ip, i32 %i.in
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.i230.ph
  store i32 %spec.select.i232.prol, ptr %i.iq, align 4, !tbaa !3
  %indvars.iv.next.i233.prol = or disjoint i64 %indvars.iv.i230.ph, 1
  br label %scalar.ph482.prol.loopexit

scalar.ph482.prol.loopexit:                       ; preds = %scalar.ph482.prol, %scalar.ph482.preheader
  %indvars.iv.i230.unr = phi i64 [ %indvars.iv.i230.ph, %scalar.ph482.preheader ], [ %indvars.iv.next.i233.prol, %scalar.ph482.prol ]
  %i.ir = icmp eq i64 %i.hq, %.neg548
  br i1 %i.ir, label %._crit_edge.i235, label %scalar.ph482

scalar.ph482:                                     ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233.1, %scalar.ph482 ], [ %indvars.iv.i230.unr, %scalar.ph482.prol.loopexit ] ; 4 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.i230
  %i.it = load i32, ptr %i.is, align 4, !tbaa !3  ; 3 uses
  %i.iu = add i32 %i.it, -65
  %or.cond.i231 = icmp ult i32 %i.iu, 26
  %i.iv = or disjoint i32 %i.it, 32
  %spec.select.i232 = select i1 %or.cond.i231, i32 %i.iv, i32 %i.it
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.i230
  store i32 %spec.select.i232, ptr %i.iw, align 4, !tbaa !3
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hv, i64 %indvars.iv.next.i233
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !3  ; 3 uses
  %i.iz = add i32 %i.iy, -65
  %or.cond.i231.1 = icmp ult i32 %i.iz, 26
  %i.ja = or disjoint i32 %i.iy, 32
  %spec.select.i232.1 = select i1 %or.cond.i231.1, i32 %i.ja, i32 %i.iy
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %indvars.iv.next.i233
  store i32 %spec.select.i232.1, ptr %i.jb, align 4, !tbaa !3
  %indvars.iv.next.i233.1 = add nuw nsw i64 %indvars.iv.i230, 2 ; 2 uses
  %exitcond.not.i234.1 = icmp eq i64 %indvars.iv.next.i233.1, %i.hq
  br i1 %exitcond.not.i234.1, label %._crit_edge.i235, label %scalar.ph482, !llvm.loop !90

._crit_edge.i235:                                 ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482, %middle.block492
  store ptr %i.hs, ptr %i.fa, align 8, !tbaa !80
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.hs, i64 %i.hq ; 2 uses
  store ptr %i.jc, ptr %i.ff, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit237

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ex, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit237:                      ; preds = %._crit_edge.i235, %bb.af
  %i.jd = phi ptr [ %i.jc, %._crit_edge.i235 ], [ %i.fg, %bb.af ]
  %i.je = phi ptr [ %i.hs, %._crit_edge.i235 ], [ %i.fb, %bb.af ]
  %i.jf = or disjoint i32 %i.ex, 4                ; 2 uses
  store i32 %i.jf, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit227

uriLowercaseInplaceW.exit227:                     ; preds = %bb.ad, %middle.block477, %bb.ab, %uriLowercaseMallocW.exit237
  %i.jg = phi i32 [ %i.jf, %uriLowercaseMallocW.exit237 ], [ %i.ex, %bb.ab ], [ %i.ex, %middle.block477 ], [ %i.ex, %bb.ad ]
  %i.jh = phi ptr [ %i.jd, %uriLowercaseMallocW.exit237 ], [ %i.fg, %bb.ab ], [ %i.fg, %middle.block477 ], [ %i.fg, %bb.ad ]
  %i.ji = phi ptr [ %i.je, %uriLowercaseMallocW.exit237 ], [ %i.fb, %bb.ab ], [ %i.fb, %middle.block477 ], [ %i.fb, %bb.ad ]
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ji, ptr %i.jj, align 8, !tbaa !76
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.jh, ptr %i.jk, align 8, !tbaa !77
  br label %uriContainsUglyPercentEncodingW.exit

bb.aj:                                            ; preds = %bb.z
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !76 ; 2 uses
  %.not177 = icmp eq ptr %i.jm, null
  br i1 %.not177, label %uriContainsUglyPercentEncodingW.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jn = load ptr, ptr %i.ez, align 8, !tbaa !91
  %i.jo = icmp eq ptr %i.jn, null
  br i1 %i.jo, label %bb.al, label %uriContainsUglyPercentEncodingW.exit

bb.al:                                            ; preds = %bb.ak
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !92
  %i.jr = icmp eq ptr %i.jq, null
  br i1 %i.jr, label %bb.am, label %uriContainsUglyPercentEncodingW.exit

bb.am:                                            ; preds = %bb.al
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !79
  %.not178 = icmp eq i32 %i.jt, 0
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not178, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.jm, ptr noundef %i.ju)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.jv = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.jl, ptr noundef %i.ju, ptr noundef %3)
  %.not179 = icmp eq i32 %i.jv, 0
  br i1 %.not179, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ex, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.jw = or disjoint i32 %i.ex, 4                ; 2 uses
  store i32 %i.jw, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.jx = phi i32 [ %i.jw, %bb.aq ], [ %i.ex, %bb.an ] ; 3 uses
  %i.jy = load ptr, ptr %i.jl, align 8, !tbaa !76 ; 13 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !77 ; 3 uses
  %i.kb = icmp ne ptr %i.jy, null
  %i.kc = icmp ugt ptr %i.ka, %i.jy
  %or.cond16.i238 = and i1 %i.kb, %i.kc
  br i1 %or.cond16.i238, label %.preheader.i239.preheader, label %uriContainsUglyPercentEncodingW.exit

.preheader.i239.preheader:                        ; preds = %bb.ar
  %i.kd = ptrtoint ptr %i.ka to i64
  %i.ke = ptrtoint ptr %i.jy to i64               ; 2 uses
  %i.kf = add i64 %i.ke, 4
  %umax495 = tail call i64 @llvm.umax.i64(i64 %i.kd, i64 %i.kf)
  %i.kg = xor i64 %i.ke, -1
  %i.kh = add i64 %umax495, %i.kg                 ; 2 uses
  %i.ki = lshr i64 %i.kh, 2
  %i.kj = add nuw nsw i64 %i.ki, 1                ; 2 uses
  %min.iters.check497 = icmp ult i64 %i.kh, 28
  br i1 %min.iters.check497, label %.preheader.i239.preheader542, label %vector.ph498

vector.ph498:                                     ; preds = %.preheader.i239.preheader
  %n.vec500 = and i64 %i.kj, 9223372036854775800  ; 3 uses
  %i.kk = shl i64 %n.vec500, 2
  %i.kl = getelementptr i8, ptr %i.jy, i64 %i.kk
  br label %vector.body501

vector.body501:                                   ; preds = %pred.store.continue528, %vector.ph498
  %index502 = phi i64 [ 0, %vector.ph498 ], [ %index.next529, %pred.store.continue528 ] ; 2 uses
  %i.km = shl i64 %index502, 2                    ; 8 uses
  %next.gep503 = getelementptr i8, ptr %i.jy, i64 %i.km ; 3 uses
  %i.kn = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep504 = getelementptr i8, ptr %i.kn, i64 4
  %i.ko = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep505 = getelementptr i8, ptr %i.ko, i64 8
  %i.kp = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep506 = getelementptr i8, ptr %i.kp, i64 12
  %i.kq = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep507 = getelementptr i8, ptr %i.kq, i64 16
  %i.kr = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep508 = getelementptr i8, ptr %i.kr, i64 20
  %i.ks = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep509 = getelementptr i8, ptr %i.ks, i64 24
  %i.kt = getelementptr i8, ptr %i.jy, i64 %i.km
  %next.gep510 = getelementptr i8, ptr %i.kt, i64 28
  %i.ku = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load511 = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !3 ; 5 uses
  %wide.load512 = load <4 x i32>, ptr %i.ku, align 4, !tbaa !3 ; 5 uses
  %i.kv = add <4 x i32> %wide.load511, splat (i32 -65)
  %i.kw = add <4 x i32> %wide.load512, splat (i32 -65)
end_hunk_0
begin_hunk_1_@uriNormalizeSyntaxExMmW:bb.a
  %i.c = tail call fastcc i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef %1, ptr noundef null, ptr noundef nonnull %.0)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.05 = phi i32 [ %i.c, %bb.c ], [ 10, %bb.b ]
  ret i32 %.05
}

; Function Attrs: nounwind uwtable
define range(i32 0, 4) i32 @uriNormalizeSyntaxW(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 0, 4) i32 @uriNormalizeSyntaxEngineW(ptr noundef %0, i32 noundef -1, ptr noundef null, ptr noundef nonnull @defaultMemoryManager)
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriPreventLeakageA(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !7
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !45
  tail call void %i.g(ptr noundef %2, ptr noundef %i.i) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %1, 4
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !20   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  tail call void %i.y(ptr noundef %2, ptr noundef nonnull %i.r) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h, %bb.e
  %i.z = and i32 %1, 8
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !53 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !50
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !48 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #7
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !117

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !56
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !58
  tail call void %i.as(ptr noundef %2, ptr noundef %i.au) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceA(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = trunc i64 %i.f to i32                    ; 3 uses
  %i.h = icmp sgt i32 %i.g, 2
  br i1 %i.h, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.az, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.c ], [ %.2.i, %bb.h ] ; 8 uses
  %.0.lcssa.i18 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.i = icmp slt i32 %.039.lcssa.i, %i.g
  br i1 %i.i, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.j = sext i32 %.039.lcssa.i to i64            ; 8 uses
  %sext.i = shl i64 %i.f, 32
  %i.k = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.l = sub nsw i64 %i.k, %i.j                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.l, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.m = add i64 %i.e, %i.j
  %i.n = sub i64 %i.m, %.0.lcssa.i18
  %diff.check = icmp ugt i64 %i.n, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check19 = icmp ult i64 %i.l, 32
  br i1 %min.iters.check19, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.l, 24
  %n.vec = and i64 %i.l, -32                      ; 5 uses
  %i.o = add nsw i64 %n.vec, %i.j
  %i.p = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %0, i64 %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load20 = load <16 x i8>, ptr %i.q, align 1, !tbaa !17
  %i.r = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load20, ptr %i.r, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !118

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec23 = and i64 %i.l, -8                     ; 4 uses
  %i.t = add nsw i64 %n.vec23, %i.j
  %i.u = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec23 ; 2 uses
  %invariant.gep35 = getelementptr i8, ptr %0, i64 %i.j
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index24 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next27, %vec.epilog.vector.body ] ; 3 uses
  %next.gep25 = getelementptr i8, ptr %.0.lcssa.i, i64 %index24
  %gep36 = getelementptr i8, ptr %invariant.gep35, i64 %index24
  %wide.load26 = load <8 x i8>, ptr %gep36, align 1, !tbaa !17
  store <8 x i8> %wide.load26, ptr %next.gep25, align 1, !tbaa !17
  %index.next27 = add nuw i64 %index24, 8         ; 2 uses
  %i.v = icmp eq i64 %index.next27, %n.vec23
  br i1 %i.v, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !120

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n28 = icmp eq i64 %i.l, %n.vec23
  br i1 %cmp.n28, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.j, %iter.check ], [ %i.j, %vector.memcheck ], [ %i.o, %vec.epilog.iter.check ], [ %i.t, %vec.epilog.middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.p, %vec.epilog.iter.check ], [ %i.u, %vec.epilog.middle.block ] ; 2 uses
  %i.w = sub i64 %i.f, %indvars.iv.i.ph
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.z, %.lr.ph49.i.prol ], [ %.348.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.x = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i.prol
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  store i8 %i.y, ptr %.348.i.prol, align 1, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !121

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.z, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph49.i.preheader ], [ %i.z, %.lr.ph49.i.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %i.k
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.ac = phi i32 [ %i.ba, %bb.h ], [ 2, %bb.c ]  ; 3 uses
  %.045.i = phi ptr [ %.2.i, %bb.h ], [ %0, %bb.c ] ; 7 uses
  %.03944.i = phi i32 [ %i.az, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.ad = sext i32 %.03944.i to i64
  %i.ae = getelementptr inbounds i8, ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.af, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i8 %i.af, ptr %.045.i, align 1, !tbaa !17
  %i.ag = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ah = getelementptr i8, ptr %i.ae, i64 1
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !17
  %i.aj = sext i32 %i.ac to i64
  %i.ak = getelementptr inbounds i8, ptr %0, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  %i.am = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ai) #7
  %i.an = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.al) #7
  %i.ao = zext i8 %i.am to i32                    ; 2 uses
  %i.ap = shl nuw nsw i32 %i.ao, 4
  %i.aq = zext i8 %i.an to i32                    ; 2 uses
  %i.ar = add nuw nsw i32 %i.ap, %i.aq            ; 2 uses
  %i.as = tail call i32 @uriIsUnreserved(i32 noundef %i.ar) #7
  %.not43.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.045.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = trunc i32 %i.ar to i8
  store i8 %i.au, ptr %.045.i, align 1, !tbaa !17
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.av = tail call signext i8 @uriHexToLetterA(i32 noundef %i.ao) #7
  store i8 %i.av, ptr %i.at, align 1, !tbaa !17
  %i.aw = tail call signext i8 @uriHexToLetterA(i32 noundef %i.aq) #7
  %i.ax = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !17
  %i.ay = getelementptr inbounds nuw i8, ptr %.045.i, i64 3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.140.i = phi i32 [ %.03944.i, %bb.d ], [ %i.ac, %bb.g ], [ %i.ac, %bb.f ] ; 2 uses
  %.2.i = phi ptr [ %i.ag, %bb.d ], [ %i.ay, %bb.g ], [ %i.at, %bb.f ] ; 2 uses
  %i.az = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ba = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.g
  br i1 %i.bb, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.cg, %.lr.ph49.i ], [ %.348.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bc = getelementptr inbounds i8, ptr %0, i64 %indvars.iv.i
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !17
  store i8 %i.bd, ptr %.348.i, align 1, !tbaa !17
  %i.be = getelementptr inbounds nuw i8, ptr %.348.i, i64 1
  %i.bf = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bg = getelementptr i8, ptr %i.bf, i64 1
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !17
  store i8 %i.bh, ptr %i.be, align 1, !tbaa !17
  %i.bi = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.bj = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bk = getelementptr i8, ptr %i.bj, i64 2
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !17
  store i8 %i.bl, ptr %i.bi, align 1, !tbaa !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.348.i, i64 3
  %i.bn = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 3
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !17
  store i8 %i.bp, ptr %i.bm, align 1, !tbaa !17
  %i.bq = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.br = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !17
  store i8 %i.bt, ptr %i.bq, align 1, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.348.i, i64 5
  %i.bv = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 5
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !17
  store i8 %i.bx, ptr %i.bu, align 1, !tbaa !17
  %i.by = getelementptr inbounds nuw i8, ptr %.348.i, i64 6
  %i.bz = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 6
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !17
  store i8 %i.cb, ptr %i.by, align 1, !tbaa !17
  %i.cc = getelementptr inbounds nuw i8, ptr %.348.i, i64 7
  %i.cd = getelementptr i8, ptr %0, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 7
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !17
  store i8 %i.cf, ptr %i.cc, align 1, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.k
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !124

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.u, %vec.epilog.middle.block ], [ %i.p, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.cg, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocA(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !24     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !24     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %i.h, 0
  br i1 %i.j, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load ptr, ptr %2, align 8, !tbaa !31
  %i.l = and i64 %i.g, 2147483647
  %i.m = tail call ptr %i.k(ptr noundef nonnull %2, i64 noundef %i.l) #7 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %0, align 8, !tbaa !24     ; 14 uses
  %i.p = load ptr, ptr %1, align 8, !tbaa !24
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64                 ; 2 uses
  %i.s = sub i64 %i.q, %i.r                       ; 3 uses
  %i.t = trunc i64 %i.s to i32                    ; 3 uses
  %i.u = icmp sgt i32 %i.t, 2
  br i1 %i.u, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bm, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.m, %bb.f ], [ %.2.i, %bb.k ] ; 8 uses
  %.0.lcssa.i36 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.v = icmp slt i32 %.039.lcssa.i, %i.t
  br i1 %i.v, label %iter.check, label %uriFixPercentEncodingEngineA.exit

iter.check:                                       ; preds = %.preheader.i
  %i.w = sext i32 %.039.lcssa.i to i64            ; 8 uses
  %sext.i = shl i64 %i.s, 32
  %i.x = ashr exact i64 %sext.i, 32               ; 3 uses
  %i.y = sub nsw i64 %i.x, %i.w                   ; 7 uses
  %min.iters.check = icmp ult i64 %i.y, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.z = add i64 %i.r, %i.w
  %i.aa = sub i64 %i.z, %.0.lcssa.i36
  %diff.check = icmp ugt i64 %i.aa, -32
  br i1 %diff.check, label %.lr.ph49.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %i.y, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.y, 24
  %n.vec = and i64 %i.y, -32                      ; 5 uses
  %i.ab = add nsw i64 %n.vec, %i.w
  %i.ac = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %index ; 2 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !17
  %wide.load38 = load <16 x i8>, ptr %i.ad, align 1, !tbaa !17
  %i.ae = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1, !tbaa !17
  store <16 x i8> %wide.load38, ptr %i.ae, align 1, !tbaa !17
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !125

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.y, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineA.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph49.i.preheader, label %vec.epilog.ph, !prof !119

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec41 = and i64 %i.y, -8                     ; 4 uses
  %i.ag = add nsw i64 %n.vec41, %i.w
  %i.ah = getelementptr i8, ptr %.0.lcssa.i, i64 %n.vec41 ; 2 uses
  %invariant.gep53 = getelementptr i8, ptr %i.o, i64 %i.w
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep43 = getelementptr i8, ptr %.0.lcssa.i, i64 %index42
  %gep54 = getelementptr i8, ptr %invariant.gep53, i64 %index42
  %wide.load44 = load <8 x i8>, ptr %gep54, align 1, !tbaa !17
  store <8 x i8> %wide.load44, ptr %next.gep43, align 1, !tbaa !17
  %index.next45 = add nuw i64 %index42, 8         ; 2 uses
  %i.ai = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.ai, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !126

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.y, %n.vec41
  br i1 %cmp.n46, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ %i.w, %iter.check ], [ %i.w, %vector.memcheck ], [ %i.ab, %vec.epilog.iter.check ], [ %i.ag, %vec.epilog.middle.block ] ; 4 uses
  %.348.i.ph = phi ptr [ %.0.lcssa.i, %iter.check ], [ %.0.lcssa.i, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ah, %vec.epilog.middle.block ] ; 2 uses
  %i.aj = sub i64 %i.s, %indvars.iv.i.ph
  %xtraiter = and i64 %i.aj, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol

.lr.ph49.i.prol:                                  ; preds = %.lr.ph49.i.preheader, %.lr.ph49.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ], [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %.348.i.prol = phi ptr [ %i.am, %.lr.ph49.i.prol ], [ %.348.i.ph, %.lr.ph49.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph49.i.prol ], [ 0, %.lr.ph49.i.preheader ]
  %i.ak = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i.prol
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !17
  store i8 %i.al, ptr %.348.i.prol, align 1, !tbaa !17
  %i.am = getelementptr inbounds nuw i8, ptr %.348.i.prol, i64 1 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph49.i.prol.loopexit, label %.lr.ph49.i.prol, !llvm.loop !127

.lr.ph49.i.prol.loopexit:                         ; preds = %.lr.ph49.i.prol, %.lr.ph49.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph49.i.preheader ], [ %i.am, %.lr.ph49.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph49.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph49.i.prol ]
  %.348.i.unr = phi ptr [ %.348.i.ph, %.lr.ph49.i.preheader ], [ %i.am, %.lr.ph49.i.prol ]
  %i.an = sub nsw i64 %indvars.iv.i.ph, %i.x
  %i.ao = icmp ugt i64 %i.an, -8
  br i1 %i.ao, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.ap = phi i32 [ %i.bn, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.045.i = phi ptr [ %.2.i, %bb.k ], [ %i.m, %bb.f ] ; 7 uses
  %.03944.i = phi i32 [ %i.bm, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %i.aq = sext i32 %.03944.i to i64
  %i.ar = getelementptr inbounds i8, ptr %i.o, i64 %i.aq ; 2 uses
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !17  ; 2 uses
  %.not.i = icmp eq i8 %i.as, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i8 %i.as, ptr %.045.i, align 1, !tbaa !17
  %i.at = getelementptr inbounds nuw i8, ptr %.045.i, i64 1
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr i8, ptr %i.ar, i64 1
  %i.av = load i8, ptr %i.au, align 1, !tbaa !17
  %i.aw = sext i32 %i.ap to i64
  %i.ax = getelementptr inbounds i8, ptr %i.o, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !17
  %i.az = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.av) #7
  %i.ba = tail call zeroext i8 @uriHexdigToIntA(i8 noundef signext %i.ay) #7
  %i.bb = zext i8 %i.az to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 4
  %i.bd = zext i8 %i.ba to i32                    ; 2 uses
  %i.be = add nuw nsw i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = tail call i32 @uriIsUnreserved(i32 noundef %i.be) #7
  %.not43.i = icmp eq i32 %i.bf, 0
  %i.bg = getelementptr inbounds nuw i8, ptr %.045.i, i64 1 ; 2 uses
  br i1 %.not43.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = trunc i32 %i.be to i8
  store i8 %i.bh, ptr %.045.i, align 1, !tbaa !17
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i8 37, ptr %.045.i, align 1, !tbaa !17
  %i.bi = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bb) #7
  store i8 %i.bi, ptr %i.bg, align 1, !tbaa !17
  %i.bj = tail call signext i8 @uriHexToLetterA(i32 noundef %i.bd) #7
  %i.bk = getelementptr inbounds nuw i8, ptr %.045.i, i64 2
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.045.i, i64 3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.140.i = phi i32 [ %.03944.i, %bb.g ], [ %i.ap, %bb.j ], [ %i.ap, %bb.i ] ; 2 uses
  %.2.i = phi ptr [ %i.at, %bb.g ], [ %i.bl, %bb.j ], [ %i.bg, %bb.i ] ; 2 uses
  %i.bm = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bn = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bo = icmp slt i32 %i.bn, %i.t
  br i1 %i.bo, label %.lr.ph.i, label %.preheader.i, !llvm.loop !123

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph49.i ], [ %indvars.iv.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %.348.i = phi ptr [ %i.ct, %.lr.ph49.i ], [ %.348.i.unr, %.lr.ph49.i.prol.loopexit ] ; 9 uses
  %i.bp = getelementptr inbounds i8, ptr %i.o, i64 %indvars.iv.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  store i8 %i.bq, ptr %.348.i, align 1, !tbaa !17
  %i.br = getelementptr inbounds nuw i8, ptr %.348.i, i64 1
  %i.bs = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bt = getelementptr i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !17
  store i8 %i.bu, ptr %i.br, align 1, !tbaa !17
  %i.bv = getelementptr inbounds nuw i8, ptr %.348.i, i64 2
  %i.bw = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.bx = getelementptr i8, ptr %i.bw, i64 2
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !17
  store i8 %i.by, ptr %i.bv, align 1, !tbaa !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.348.i, i64 3
  %i.ca = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cb = getelementptr i8, ptr %i.ca, i64 3
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !17
  store i8 %i.cc, ptr %i.bz, align 1, !tbaa !17
  %i.cd = getelementptr inbounds nuw i8, ptr %.348.i, i64 4
  %i.ce = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cf = getelementptr i8, ptr %i.ce, i64 4
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !17
  store i8 %i.cg, ptr %i.cd, align 1, !tbaa !17
  %i.ch = getelementptr inbounds nuw i8, ptr %.348.i, i64 5
  %i.ci = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 5
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !17
  store i8 %i.ck, ptr %i.ch, align 1, !tbaa !17
  %i.cl = getelementptr inbounds nuw i8, ptr %.348.i, i64 6
  %i.cm = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 6
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !17
  store i8 %i.co, ptr %i.cl, align 1, !tbaa !17
  %i.cp = getelementptr inbounds nuw i8, ptr %.348.i, i64 7
  %i.cq = getelementptr i8, ptr %i.o, i64 %indvars.iv.i
  %i.cr = getelementptr i8, ptr %i.cq, i64 7
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !17
  store i8 %i.cs, ptr %i.cp, align 1, !tbaa !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.348.i, i64 8 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.i.7, %i.x
  br i1 %exitcond.not.7, label %uriFixPercentEncodingEngineA.exit, label %.lr.ph49.i, !llvm.loop !128

uriFixPercentEncodingEngineA.exit:                ; preds = %.lr.ph49.i.prol.loopexit, %.lr.ph49.i, %middle.block, %vec.epilog.middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.ah, %vec.epilog.middle.block ], [ %i.ac, %middle.block ], [ %.lcssa.unr, %.lr.ph49.i.prol.loopexit ], [ %i.ct, %.lr.ph49.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !24
  store ptr %i.m, ptr %0, align 8, !tbaa !24
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %uriFixPercentEncodingEngineA.exit
  %.0 = phi i32 [ 1, %uriFixPercentEncodingEngineA.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExA(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3
end_hunk_1
begin_hunk_2_@uriMakeRangeOwnerA:bb.a
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.e, label %.thread

.thread:                                          ; preds = %bb.d
  %i.o = load ptr, ptr %2, align 8, !tbaa !60
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr align 1 %i.o, i64 %i.k, i1 false)
  store ptr %i.m, ptr %2, align 8, !tbaa !60
  %i.p = getelementptr inbounds i8, ptr %i.m, i64 %i.k
  store ptr %i.p, ptr %i.e, align 8, !tbaa !61
  %i.q = load i32, ptr %0, align 4, !tbaa !3
  %i.r = or i32 %i.q, %1
  store i32 %i.r, ptr %0, align 4, !tbaa !3
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %.thread, %bb.d
  %.1 = phi i32 [ 0, %bb.d ], [ 1, %.thread ], [ 1, %bb.c ], [ 1, %bb.b ], [ 1, %bb.a ]
  ret i32 %.1
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriPreventLeakageW(ptr nofree noundef nonnull captures(none) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = and i32 %1, 1
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !63
  %i.d = load ptr, ptr %0, align 8, !tbaa !68
  tail call void %i.c(ptr noundef %2, ptr noundef %i.d) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 2
  %.not58 = icmp eq i32 %i.e, 0
  br i1 %.not58, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !95
  tail call void %i.g(ptr noundef %2, ptr noundef %i.i) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = and i32 %1, 4
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !86   ; 2 uses
  %.not60 = icmp eq ptr %i.m, null
  br i1 %.not60, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !63
  tail call void %i.o(ptr noundef %2, ptr noundef nonnull %i.m) #7
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  br label %.sink.split

bb.h:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !76   ; 2 uses
  %.not61 = icmp eq ptr %i.r, null
  br i1 %.not61, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = load ptr, ptr %i.k, align 8, !tbaa !91
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !92
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !63
  tail call void %i.y(ptr noundef %2, ptr noundef nonnull %i.r) #7
  br label %.sink.split

.sink.split:                                      ; preds = %bb.k, %bb.g
  %.sink = phi ptr [ %i.l, %bb.g ], [ %i.q, %bb.k ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sink, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.j, %bb.i, %bb.h, %bb.e
  %i.z = and i32 %1, 8
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.q, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !102 ; 2 uses
  %.not6366 = icmp eq ptr %i.ab, null
  br i1 %.not6366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.m
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph, %bb.p
  %.067 = phi ptr [ %i.ab, %.lr.ph ], [ %i.ae, %bb.p ] ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.067, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !103 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.067, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !100
  %i.ah = load ptr, ptr %.067, align 8, !tbaa !98 ; 2 uses
  %i.ai = icmp ugt ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.aj(ptr noundef %2, ptr noundef %i.ah) #7
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ak = load ptr, ptr %i.ac, align 8, !tbaa !63
  tail call void %i.ak(ptr noundef %2, ptr noundef nonnull %.067) #7
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %._crit_edge, label %bb.n, !llvm.loop !129

._crit_edge:                                      ; preds = %bb.p, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge, %bb.l
  %i.al = and i32 %1, 16
  %.not64 = icmp eq i32 %i.al, 0
  br i1 %.not64, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !63
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !106
  tail call void %i.an(ptr noundef %2, ptr noundef %i.ap) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ao, i8 0, i64 16, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aq = and i32 %1, 32
  %.not65 = icmp eq i32 %i.aq, 0
  br i1 %.not65, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !63
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !108
  tail call void %i.as(ptr noundef %2, ptr noundef %i.au) #7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, i8 0, i64 16, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @uriFixPercentEncodingInplaceW(ptr noundef %0, ptr nofree noundef nonnull captures(none) %1) unnamed_addr #2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = lshr exact i64 %i.f, 2
  %i.h = trunc i64 %i.g to i32                    ; 3 uses
  %i.i = icmp sgt i32 %i.h, 2
  br i1 %i.i, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %bb.c
  %.039.lcssa.i = phi i32 [ 0, %bb.c ], [ %i.ax, %bb.h ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %0, %bb.c ], [ %i.aw, %bb.h ] ; 6 uses
  %.0.lcssa.i22 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.j = icmp slt i32 %.039.lcssa.i, %i.h
  br i1 %i.j, label %.lr.ph50.preheader.i, label %uriFixPercentEncodingEngineW.exit

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.k = sext i32 %.039.lcssa.i to i64            ; 6 uses
  %sext.i = shl i64 %i.f, 30
  %wide.trip.count.i = ashr i64 %sext.i, 32       ; 4 uses
  %i.l = sub nsw i64 %wide.trip.count.i, %i.k     ; 3 uses
  %min.iters.check = icmp ult i64 %i.l, 16
  br i1 %min.iters.check, label %.lr.ph50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader.i
  %i.m = shl nsw i64 %i.k, 2
  %i.n = add i64 %i.m, %i.e
  %i.o = sub i64 %i.n, %.0.lcssa.i22
  %diff.check = icmp ugt i64 %i.o, -32
  br i1 %diff.check, label %.lr.ph50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.l, -8                       ; 4 uses
  %i.p = add nsw i64 %n.vec, %i.k
  %i.q = shl nsw i64 %n.vec, 2
  %i.r = getelementptr i8, ptr %.0.lcssa.i, i64 %i.q ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %0, i64 %i.k
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.s = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.s ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !3
  %wide.load23 = load <4 x i32>, ptr %i.t, align 4, !tbaa !3
  %i.u = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load23, ptr %i.u, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.v = icmp eq i64 %index.next, %n.vec
  br i1 %i.v, label %middle.block, label %vector.body, !llvm.loop !130

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph50.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.k, %vector.memcheck ], [ %i.k, %.lr.ph50.preheader.i ], [ %i.p, %middle.block ] ; 4 uses
  %.349.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph50.preheader.i ], [ %i.r, %middle.block ] ; 2 uses
  %i.w = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.w, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ], [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %.349.i.prol = phi ptr [ %i.z, %.lr.ph50.i.prol ], [ %.349.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.x = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i.prol
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  store i32 %i.y, ptr %.349.i.prol, align 4, !tbaa !3
  %i.z = getelementptr inbounds nuw i8, ptr %.349.i.prol, i64 4 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !131

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.z, %.lr.ph50.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ]
  %.349.i.unr = phi ptr [ %.349.i.ph, %.lr.ph50.i.preheader ], [ %i.z, %.lr.ph50.i.prol ]
  %i.aa = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ab = icmp ugt i64 %i.aa, -8
  br i1 %i.ab, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.h
  %i.ac = phi i32 [ %i.ay, %bb.h ], [ 2, %bb.c ]  ; 3 uses
  %.046.i = phi ptr [ %i.aw, %bb.h ], [ %0, %bb.c ] ; 6 uses
  %.03945.i = phi i32 [ %i.ax, %bb.h ], [ 0, %bb.c ] ; 2 uses
  %i.ad = sext i32 %.03945.i to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %i.af, 37
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  store i32 %i.af, ptr %.046.i, align 4, !tbaa !3
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !3
  %i.ai = sext i32 %i.ac to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !3
  %i.al = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ah) #7
  %i.am = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ak) #7
  %i.an = zext i8 %i.al to i32                    ; 2 uses
  %i.ao = shl nuw nsw i32 %i.an, 4
  %i.ap = zext i8 %i.am to i32                    ; 2 uses
  %i.aq = add nuw nsw i32 %i.ao, %i.ap            ; 2 uses
  %i.ar = tail call i32 @uriIsUnreserved(i32 noundef %i.aq) #7
  %.not44.i = icmp eq i32 %i.ar, 0
  br i1 %.not44.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i32 %i.aq, ptr %.046.i, align 4, !tbaa !3
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  store i32 37, ptr %.046.i, align 4, !tbaa !3
  %i.as = tail call i32 @uriHexToLetterW(i32 noundef %i.an) #7
  %i.at = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  store i32 %i.as, ptr %i.at, align 4, !tbaa !3
  %i.au = tail call i32 @uriHexToLetterW(i32 noundef %i.ap) #7
  %i.av = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  store i32 %i.au, ptr %i.av, align 4, !tbaa !3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.sink.i = phi i64 [ 4, %bb.f ], [ 12, %bb.g ], [ 4, %bb.d ]
  %.140.i = phi i32 [ %i.ac, %bb.f ], [ %i.ac, %bb.g ], [ %.03945.i, %bb.d ] ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.046.i, i64 %.sink.i ; 2 uses
  %i.ax = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.ay = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.az = icmp slt i32 %i.ay, %i.h
  br i1 %i.az, label %.lr.ph.i, label %.preheader.i, !llvm.loop !132

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.349.i = phi ptr [ %i.ce, %.lr.ph50.i ], [ %.349.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.ba = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !3
  store i32 %i.bb, ptr %.349.i, align 4, !tbaa !3
  %i.bc = getelementptr inbounds nuw i8, ptr %.349.i, i64 4
  %i.bd = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !3
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3
  %i.bg = getelementptr inbounds nuw i8, ptr %.349.i, i64 8
  %i.bh = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !3
  store i32 %i.bj, ptr %i.bg, align 4, !tbaa !3
  %i.bk = getelementptr inbounds nuw i8, ptr %.349.i, i64 12
  %i.bl = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bm = getelementptr i8, ptr %i.bl, i64 12
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !3
  store i32 %i.bn, ptr %i.bk, align 4, !tbaa !3
  %i.bo = getelementptr inbounds nuw i8, ptr %.349.i, i64 16
  %i.bp = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !3
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !3
  %i.bs = getelementptr inbounds nuw i8, ptr %.349.i, i64 20
  %i.bt = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.bu = getelementptr i8, ptr %i.bt, i64 20
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !3
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !3
  %i.bw = getelementptr inbounds nuw i8, ptr %.349.i, i64 24
  %i.bx = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.by = getelementptr i8, ptr %i.bx, i64 24
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !3
  store i32 %i.bz, ptr %i.bw, align 4, !tbaa !3
  %i.ca = getelementptr inbounds nuw i8, ptr %.349.i, i64 28
  %i.cb = getelementptr [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.cc = getelementptr i8, ptr %i.cb, i64 28
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !3
  store i32 %i.cd, ptr %i.ca, align 4, !tbaa !3
  %i.ce = getelementptr inbounds nuw i8, ptr %.349.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !133

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.ce, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !80
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %bb.b, %uriFixPercentEncodingEngineW.exit
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriFixPercentEncodingMallocW(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef %2) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !80     ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.a to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 2
  %i.i = trunc i64 %i.h to i32                    ; 2 uses
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = icmp slt i32 %i.i, 0
  br i1 %i.k, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %2, align 8, !tbaa !31
  %i.m = and i64 %i.g, 8589934588
  %i.n = tail call ptr %i.l(ptr noundef nonnull %2, i64 noundef %i.m) #7 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %0, align 8, !tbaa !80     ; 13 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !80
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = ptrtoint ptr %i.p to i64                 ; 2 uses
  %i.t = sub i64 %i.r, %i.s                       ; 2 uses
  %i.u = lshr exact i64 %i.t, 2
  %i.v = trunc i64 %i.u to i32                    ; 3 uses
  %i.w = icmp sgt i32 %i.v, 2
  br i1 %i.w, label %.lr.ph.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.k, %bb.f
  %.039.lcssa.i = phi i32 [ 0, %bb.f ], [ %i.bl, %bb.k ] ; 2 uses
  %.0.lcssa.i = phi ptr [ %i.n, %bb.f ], [ %i.bk, %bb.k ] ; 6 uses
  %.0.lcssa.i40 = ptrtoaddr ptr %.0.lcssa.i to i64
  %i.x = icmp slt i32 %.039.lcssa.i, %i.v
  br i1 %i.x, label %.lr.ph50.preheader.i, label %uriFixPercentEncodingEngineW.exit

.lr.ph50.preheader.i:                             ; preds = %.preheader.i
  %i.y = sext i32 %.039.lcssa.i to i64            ; 6 uses
  %sext.i = shl i64 %i.t, 30
  %wide.trip.count.i = ashr i64 %sext.i, 32       ; 4 uses
  %i.z = sub nsw i64 %wide.trip.count.i, %i.y     ; 3 uses
  %min.iters.check = icmp ult i64 %i.z, 16
  br i1 %min.iters.check, label %.lr.ph50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph50.preheader.i
  %i.aa = shl nsw i64 %i.y, 2
  %i.ab = add i64 %i.aa, %i.s
  %i.ac = sub i64 %i.ab, %.0.lcssa.i40
  %diff.check = icmp ugt i64 %i.ac, -32
  br i1 %diff.check, label %.lr.ph50.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.z, -8                       ; 4 uses
  %i.ad = add nsw i64 %n.vec, %i.y
  %i.ae = shl nsw i64 %n.vec, 2
  %i.af = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ae ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.p, i64 %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ag = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %.0.lcssa.i, i64 %i.ag ; 2 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !3
  %wide.load41 = load <4 x i32>, ptr %i.ah, align 4, !tbaa !3
  %i.ai = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !3
  store <4 x i32> %wide.load41, ptr %i.ai, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !134

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.z, %n.vec
  br i1 %cmp.n, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i.preheader

.lr.ph50.i.preheader:                             ; preds = %vector.memcheck, %.lr.ph50.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph50.preheader.i ], [ %i.ad, %middle.block ] ; 4 uses
  %.349.i.ph = phi ptr [ %.0.lcssa.i, %vector.memcheck ], [ %.0.lcssa.i, %.lr.ph50.preheader.i ], [ %i.af, %middle.block ] ; 2 uses
  %i.ak = sub nsw i64 %wide.trip.count.i, %indvars.iv.i.ph
  %xtraiter = and i64 %i.ak, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol

.lr.ph50.i.prol:                                  ; preds = %.lr.ph50.i.preheader, %.lr.ph50.i.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ], [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %.349.i.prol = phi ptr [ %i.an, %.lr.ph50.i.prol ], [ %.349.i.ph, %.lr.ph50.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph50.i.prol ], [ 0, %.lr.ph50.i.preheader ]
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i.prol
  %i.am = load i32, ptr %i.al, align 4, !tbaa !3
  store i32 %i.am, ptr %.349.i.prol, align 4, !tbaa !3
  %i.an = getelementptr inbounds nuw i8, ptr %.349.i.prol, i64 4 ; 3 uses
  %indvars.iv.next.i.prol = add nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph50.i.prol.loopexit, label %.lr.ph50.i.prol, !llvm.loop !135

.lr.ph50.i.prol.loopexit:                         ; preds = %.lr.ph50.i.prol, %.lr.ph50.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph50.i.preheader ], [ %i.an, %.lr.ph50.i.prol ]
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %.lr.ph50.i.preheader ], [ %indvars.iv.next.i.prol, %.lr.ph50.i.prol ]
  %.349.i.unr = phi ptr [ %.349.i.ph, %.lr.ph50.i.preheader ], [ %i.an, %.lr.ph50.i.prol ]
  %i.ao = sub nsw i64 %indvars.iv.i.ph, %wide.trip.count.i
  %i.ap = icmp ugt i64 %i.ao, -8
  br i1 %i.ap, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %i.aq = phi i32 [ %i.bm, %bb.k ], [ 2, %bb.f ]  ; 3 uses
  %.046.i = phi ptr [ %i.bk, %bb.k ], [ %i.n, %bb.f ] ; 6 uses
  %.03945.i = phi i32 [ %i.bl, %bb.k ], [ 0, %bb.f ] ; 2 uses
  %i.ar = sext i32 %.03945.i to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ar ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !3  ; 2 uses
  %.not.i = icmp eq i32 %i.at, 37
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  store i32 %i.at, ptr %.046.i, align 4, !tbaa !3
  br label %bb.k

bb.h:                                             ; preds = %.lr.ph.i
  %i.au = getelementptr i8, ptr %i.as, i64 4
  %i.av = load i32, ptr %i.au, align 4, !tbaa !3
  %i.aw = sext i32 %i.aq to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !3
  %i.az = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.av) #7
  %i.ba = tail call zeroext i8 @uriHexdigToIntW(i32 noundef %i.ay) #7
  %i.bb = zext i8 %i.az to i32                    ; 2 uses
  %i.bc = shl nuw nsw i32 %i.bb, 4
  %i.bd = zext i8 %i.ba to i32                    ; 2 uses
  %i.be = add nuw nsw i32 %i.bc, %i.bd            ; 2 uses
  %i.bf = tail call i32 @uriIsUnreserved(i32 noundef %i.be) #7
  %.not44.i = icmp eq i32 %i.bf, 0
  br i1 %.not44.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 %i.be, ptr %.046.i, align 4, !tbaa !3
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  store i32 37, ptr %.046.i, align 4, !tbaa !3
  %i.bg = tail call i32 @uriHexToLetterW(i32 noundef %i.bb) #7
  %i.bh = getelementptr inbounds nuw i8, ptr %.046.i, i64 4
  store i32 %i.bg, ptr %i.bh, align 4, !tbaa !3
  %i.bi = tail call i32 @uriHexToLetterW(i32 noundef %i.bd) #7
  %i.bj = getelementptr inbounds nuw i8, ptr %.046.i, i64 8
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.sink.i = phi i64 [ 4, %bb.i ], [ 12, %bb.j ], [ 4, %bb.g ]
  %.140.i = phi i32 [ %i.aq, %bb.i ], [ %i.aq, %bb.j ], [ %.03945.i, %bb.g ] ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.046.i, i64 %.sink.i ; 2 uses
  %i.bl = add nsw i32 %.140.i, 1                  ; 2 uses
  %i.bm = add nsw i32 %.140.i, 3                  ; 2 uses
  %i.bn = icmp slt i32 %i.bm, %i.v
  br i1 %i.bn, label %.lr.ph.i, label %.preheader.i, !llvm.loop !132

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.7, %.lr.ph50.i ], [ %indvars.iv.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %.349.i = phi ptr [ %i.cs, %.lr.ph50.i ], [ %.349.i.unr, %.lr.ph50.i.prol.loopexit ] ; 9 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !3
  store i32 %i.bp, ptr %.349.i, align 4, !tbaa !3
  %i.bq = getelementptr inbounds nuw i8, ptr %.349.i, i64 4
  %i.br = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bs = getelementptr i8, ptr %i.br, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !3
  store i32 %i.bt, ptr %i.bq, align 4, !tbaa !3
  %i.bu = getelementptr inbounds nuw i8, ptr %.349.i, i64 8
  %i.bv = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 8
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !3
  store i32 %i.bx, ptr %i.bu, align 4, !tbaa !3
  %i.by = getelementptr inbounds nuw i8, ptr %.349.i, i64 12
  %i.bz = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ca = getelementptr i8, ptr %i.bz, i64 12
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !3
  store i32 %i.cb, ptr %i.by, align 4, !tbaa !3
  %i.cc = getelementptr inbounds nuw i8, ptr %.349.i, i64 16
  %i.cd = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ce = getelementptr i8, ptr %i.cd, i64 16
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !3
  store i32 %i.cf, ptr %i.cc, align 4, !tbaa !3
  %i.cg = getelementptr inbounds nuw i8, ptr %.349.i, i64 20
  %i.ch = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 20
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !3
  store i32 %i.cj, ptr %i.cg, align 4, !tbaa !3
  %i.ck = getelementptr inbounds nuw i8, ptr %.349.i, i64 24
  %i.cl = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cm = getelementptr i8, ptr %i.cl, i64 24
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3
  store i32 %i.cn, ptr %i.ck, align 4, !tbaa !3
  %i.co = getelementptr inbounds nuw i8, ptr %.349.i, i64 28
  %i.cp = getelementptr [4 x i8], ptr %i.p, i64 %indvars.iv.i
  %i.cq = getelementptr i8, ptr %i.cp, i64 28
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !3
  store i32 %i.cr, ptr %i.co, align 4, !tbaa !3
  %i.cs = getelementptr inbounds nuw i8, ptr %.349.i, i64 32 ; 2 uses
  %indvars.iv.next.i.7 = add nsw i64 %indvars.iv.i, 8 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, %wide.trip.count.i
  br i1 %exitcond.not.i.7, label %uriFixPercentEncodingEngineW.exit, label %.lr.ph50.i, !llvm.loop !136

uriFixPercentEncodingEngineW.exit:                ; preds = %.lr.ph50.i.prol.loopexit, %.lr.ph50.i, %middle.block, %.preheader.i
  %.3.lcssa.i = phi ptr [ %.0.lcssa.i, %.preheader.i ], [ %i.af, %middle.block ], [ %.lcssa.unr, %.lr.ph50.i.prol.loopexit ], [ %i.cs, %.lr.ph50.i ]
  store ptr %.3.lcssa.i, ptr %1, align 8, !tbaa !80
  store ptr %i.n, ptr %0, align 8, !tbaa !80
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a, %bb.b, %uriFixPercentEncodingEngineW.exit
  %.0 = phi i32 [ 1, %uriFixPercentEncodingEngineW.exit ], [ 0, %bb.a ], [ 1, %bb.c ], [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.e ]
  ret i32 %.0
}

declare i32 @uriRemoveDotSegmentsExW(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @uriFixEmptyTrailSegmentW(ptr noundef, ptr noundef) local_unnamed_addr #3

declare zeroext i8 @uriHexdigToIntW(i32 noundef) local_unnamed_addr #3

declare i32 @uriHexToLetterW(i32 noundef) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @uriMakeRangeOwnerW(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 33) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !3
  %i.b = and i32 %i.a, %1
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8, !tbaa !110    ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !111  ; 2 uses
  %i.g = icmp ugt ptr %i.f, %i.d
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = sub i64 %i.h, %i.i
  %sext = shl i64 %i.j, 30
end_hunk_2
