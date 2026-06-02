inline.NumInlined: 48
inline.NumDeleted: 12
begin_hunk_0_@uriNormalizeSyntaxEngineW:bb.a
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
  %i.dr = sub i64 %i.do, %i.dq
  %diff.check = icmp ult i64 %i.dr, 32
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
  %4 = or disjoint <4 x i32> %wide.load436, splat (i32 32)
  %i.dy = or disjoint <4 x i32> %wide.load437, splat (i32 32)
  %i.dz = select <4 x i1> %i.dw, <4 x i32> %4, <4 x i32> %wide.load436
  %5 = select <4 x i1> %i.dx, <4 x i32> %i.dy, <4 x i32> %wide.load437
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %index435 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store <4 x i32> %i.dz, ptr %i.ea, align 4, !tbaa !3
  store <4 x i32> %5, ptr %i.eb, align 4, !tbaa !3
  %index.next438 = add nuw i64 %index435, 8       ; 2 uses
  %i.ec = icmp eq i64 %index.next438, %n.vec433
  br i1 %i.ec, label %middle.block439, label %vector.body434, !llvm.loop !84

middle.block439:                                  ; preds = %vector.body434
  %cmp.n440 = icmp eq i64 %i.dk, %n.vec433
  br i1 %cmp.n440, label %._crit_edge.i, label %scalar.ph429.preheader

scalar.ph429.preheader:                           ; preds = %.lr.ph.i221, %middle.block439
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i221 ], [ %n.vec433, %middle.block439 ] ; 5 uses
  %.neg = or disjoint i64 %indvars.iv.i.ph, 1
  %i.ed = and i64 %i.de, 4
  %lcmp.mod.not = icmp eq i64 %i.ed, 0
  br i1 %lcmp.mod.not, label %scalar.ph429.prol.loopexit, label %scalar.ph429.prol

scalar.ph429.prol:                                ; preds = %scalar.ph429.preheader
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.ph
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !3  ; 3 uses
  %i.eg = add i32 %i.ef, -65
  %or.cond.i222.prol = icmp ult i32 %i.eg, 26
  %i.eh = or disjoint i32 %i.ef, 32
  %spec.select.i.prol = select i1 %or.cond.i222.prol, i32 %i.eh, i32 %i.ef
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.ph
  store i32 %spec.select.i.prol, ptr %i.ei, align 4, !tbaa !3
  %indvars.iv.next.i.prol = or disjoint i64 %indvars.iv.i.ph, 1
  br label %scalar.ph429.prol.loopexit

scalar.ph429.prol.loopexit:                       ; preds = %scalar.ph429.prol, %scalar.ph429.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %scalar.ph429.preheader ], [ %indvars.iv.next.i.prol, %scalar.ph429.prol ]
  %i.ej = icmp eq i64 %i.dk, %.neg
  br i1 %i.ej, label %._crit_edge.i, label %scalar.ph429

scalar.ph429:                                     ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %scalar.ph429 ], [ %indvars.iv.i.unr, %scalar.ph429.prol.loopexit ] ; 4 uses
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !3  ; 3 uses
  %i.em = add i32 %i.el, -65
  %or.cond.i222 = icmp ult i32 %i.em, 26
  %i.en = or disjoint i32 %i.el, 32
  %spec.select.i = select i1 %or.cond.i222, i32 %i.en, i32 %i.el
  %i.eo = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i
  store i32 %spec.select.i, ptr %i.eo, align 4, !tbaa !3
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next.i
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !3  ; 3 uses
  %i.er = add i32 %i.eq, -65
  %or.cond.i222.1 = icmp ult i32 %i.er, 26
  %i.es = or disjoint i32 %i.eq, 32
  %spec.select.i.1 = select i1 %or.cond.i222.1, i32 %i.es, i32 %i.eq
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.next.i
  store i32 %spec.select.i.1, ptr %i.et, align 4, !tbaa !3
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, %i.dk
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph429, !llvm.loop !85

._crit_edge.i:                                    ; preds = %scalar.ph429.prol.loopexit, %scalar.ph429, %middle.block439
  store ptr %i.dm, ptr %0, align 8, !tbaa !80
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %i.dk
  store ptr %i.eu, ptr %i.az, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef 0, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit:                         ; preds = %._crit_edge.i, %bb.v
  store i32 1, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit

uriLowercaseInplaceW.exit:                        ; preds = %bb.t, %middle.block, %bb.r, %uriLowercaseMallocW.exit, %bb.p, %bb.o
  %i.ev = phi i32 [ 0, %bb.o ], [ 0, %bb.r ], [ 1, %uriLowercaseMallocW.exit ], [ 0, %bb.p ], [ 0, %middle.block ], [ 0, %bb.t ] ; 12 uses
  %i.ew = and i32 %1, 4
  %.not175 = icmp eq i32 %i.ew, 0
  br i1 %.not175, label %uriContainsUglyPercentEncodingW.exit, label %bb.z

bb.z:                                             ; preds = %uriLowercaseInplaceW.exit
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !86 ; 18 uses
  %i.fa = ptrtoint ptr %i.ez to i64               ; 2 uses
  %.not176 = icmp eq ptr %i.ez, null
  br i1 %.not176, label %bb.aj, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !79
  %.not180 = icmp eq i32 %i.fc, 0
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !80 ; 9 uses
  %i.ff = ptrtoint ptr %i.fe to i64
  br i1 %.not180, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.fg = icmp ugt ptr %i.fe, %i.ez
  br i1 %i.fg, label %.preheader.i224.preheader, label %uriLowercaseInplaceW.exit227

.preheader.i224.preheader:                        ; preds = %bb.ab
  %i.fh = add i64 %i.fa, 4
  %umax442 = tail call i64 @llvm.umax.i64(i64 %i.ff, i64 %i.fh)
  %i.fi = xor i64 %i.fa, -1
  %i.fj = add i64 %umax442, %i.fi                 ; 2 uses
  %i.fk = lshr i64 %i.fj, 2
  %i.fl = add nuw nsw i64 %i.fk, 1                ; 2 uses
  %min.iters.check444 = icmp ult i64 %i.fj, 28
  br i1 %min.iters.check444, label %.preheader.i224.preheader543, label %vector.ph445

vector.ph445:                                     ; preds = %.preheader.i224.preheader
  %n.vec447 = and i64 %i.fl, 9223372036854775800  ; 3 uses
  %i.fm = shl i64 %n.vec447, 2
  %i.fn = getelementptr i8, ptr %i.ez, i64 %i.fm
  br label %vector.body448

vector.body448:                                   ; preds = %pred.store.continue475, %vector.ph445
  %index449 = phi i64 [ 0, %vector.ph445 ], [ %index.next476, %pred.store.continue475 ] ; 2 uses
  %i.fo = shl i64 %index449, 2                    ; 8 uses
  %next.gep450 = getelementptr i8, ptr %i.ez, i64 %i.fo ; 3 uses
  %i.fp = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep451 = getelementptr i8, ptr %i.fp, i64 4
  %i.fq = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep452 = getelementptr i8, ptr %i.fq, i64 8
  %i.fr = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep453 = getelementptr i8, ptr %i.fr, i64 12
  %i.fs = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep454 = getelementptr i8, ptr %i.fs, i64 16
  %i.ft = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep455 = getelementptr i8, ptr %i.ft, i64 20
  %i.fu = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep456 = getelementptr i8, ptr %i.fu, i64 24
  %i.fv = getelementptr i8, ptr %i.ez, i64 %i.fo
  %next.gep457 = getelementptr i8, ptr %i.fv, i64 28
  %i.fw = getelementptr i8, ptr %next.gep450, i64 16
  %wide.load458 = load <4 x i32>, ptr %next.gep450, align 4, !tbaa !3 ; 5 uses
  %wide.load459 = load <4 x i32>, ptr %i.fw, align 4, !tbaa !3 ; 5 uses
  %i.fx = add <4 x i32> %wide.load458, splat (i32 -65)
  %i.fy = add <4 x i32> %wide.load459, splat (i32 -65)
  %i.fz = icmp ult <4 x i32> %i.fx, splat (i32 26) ; 4 uses
  %i.ga = icmp ult <4 x i32> %i.fy, splat (i32 26) ; 4 uses
  %i.gb = extractelement <4 x i1> %i.fz, i64 0
  br i1 %i.gb, label %pred.store.if460, label %pred.store.continue461

pred.store.if460:                                 ; preds = %vector.body448
  %i.gc = extractelement <4 x i32> %wide.load458, i64 0
  %i.gd = or disjoint i32 %i.gc, 32
  store i32 %i.gd, ptr %next.gep450, align 4, !tbaa !3
  br label %pred.store.continue461

pred.store.continue461:                           ; preds = %pred.store.if460, %vector.body448
  %i.ge = extractelement <4 x i1> %i.fz, i64 1
  br i1 %i.ge, label %pred.store.if462, label %pred.store.continue463

pred.store.if462:                                 ; preds = %pred.store.continue461
  %i.gf = extractelement <4 x i32> %wide.load458, i64 1
  %i.gg = or disjoint i32 %i.gf, 32
  store i32 %i.gg, ptr %next.gep451, align 4, !tbaa !3
  br label %pred.store.continue463

pred.store.continue463:                           ; preds = %pred.store.if462, %pred.store.continue461
  %i.gh = extractelement <4 x i1> %i.fz, i64 2
  br i1 %i.gh, label %pred.store.if464, label %pred.store.continue465

pred.store.if464:                                 ; preds = %pred.store.continue463
  %i.gi = extractelement <4 x i32> %wide.load458, i64 2
  %i.gj = or disjoint i32 %i.gi, 32
  store i32 %i.gj, ptr %next.gep452, align 4, !tbaa !3
  br label %pred.store.continue465

pred.store.continue465:                           ; preds = %pred.store.if464, %pred.store.continue463
  %i.gk = extractelement <4 x i1> %i.fz, i64 3
  br i1 %i.gk, label %pred.store.if466, label %pred.store.continue467

pred.store.if466:                                 ; preds = %pred.store.continue465
  %i.gl = extractelement <4 x i32> %wide.load458, i64 3
  %i.gm = or disjoint i32 %i.gl, 32
  store i32 %i.gm, ptr %next.gep453, align 4, !tbaa !3
  br label %pred.store.continue467

pred.store.continue467:                           ; preds = %pred.store.if466, %pred.store.continue465
  %i.gn = extractelement <4 x i1> %i.ga, i64 0
  br i1 %i.gn, label %pred.store.if468, label %pred.store.continue469

pred.store.if468:                                 ; preds = %pred.store.continue467
  %i.go = extractelement <4 x i32> %wide.load459, i64 0
  %i.gp = or disjoint i32 %i.go, 32
  store i32 %i.gp, ptr %next.gep454, align 4, !tbaa !3
  br label %pred.store.continue469

pred.store.continue469:                           ; preds = %pred.store.if468, %pred.store.continue467
  %i.gq = extractelement <4 x i1> %i.ga, i64 1
  br i1 %i.gq, label %pred.store.if470, label %pred.store.continue471

pred.store.if470:                                 ; preds = %pred.store.continue469
  %i.gr = extractelement <4 x i32> %wide.load459, i64 1
  %i.gs = or disjoint i32 %i.gr, 32
  store i32 %i.gs, ptr %next.gep455, align 4, !tbaa !3
  br label %pred.store.continue471

pred.store.continue471:                           ; preds = %pred.store.if470, %pred.store.continue469
  %i.gt = extractelement <4 x i1> %i.ga, i64 2
  br i1 %i.gt, label %pred.store.if472, label %pred.store.continue473

pred.store.if472:                                 ; preds = %pred.store.continue471
  %i.gu = extractelement <4 x i32> %wide.load459, i64 2
  %i.gv = or disjoint i32 %i.gu, 32
  store i32 %i.gv, ptr %next.gep456, align 4, !tbaa !3
  br label %pred.store.continue473

pred.store.continue473:                           ; preds = %pred.store.if472, %pred.store.continue471
  %i.gw = extractelement <4 x i1> %i.ga, i64 3
  br i1 %i.gw, label %pred.store.if474, label %pred.store.continue475

pred.store.if474:                                 ; preds = %pred.store.continue473
  %i.gx = extractelement <4 x i32> %wide.load459, i64 3
  %i.gy = or disjoint i32 %i.gx, 32
  store i32 %i.gy, ptr %next.gep457, align 4, !tbaa !3
  br label %pred.store.continue475

pred.store.continue475:                           ; preds = %pred.store.if474, %pred.store.continue473
  %index.next476 = add nuw i64 %index449, 8       ; 2 uses
  %i.gz = icmp eq i64 %index.next476, %n.vec447
  br i1 %i.gz, label %middle.block477, label %vector.body448, !llvm.loop !87

middle.block477:                                  ; preds = %pred.store.continue475
  %cmp.n478 = icmp eq i64 %i.fl, %n.vec447
  br i1 %cmp.n478, label %uriLowercaseInplaceW.exit227, label %.preheader.i224.preheader543

.preheader.i224.preheader543:                     ; preds = %.preheader.i224.preheader, %middle.block477
  %.018.i225.ph = phi ptr [ %i.ez, %.preheader.i224.preheader ], [ %i.fn, %middle.block477 ]
  br label %.preheader.i224

.preheader.i224:                                  ; preds = %.preheader.i224.preheader543, %bb.ad
  %.018.i225 = phi ptr [ %i.hd, %bb.ad ], [ %.018.i225.ph, %.preheader.i224.preheader543 ] ; 3 uses
  %i.ha = load i32, ptr %.018.i225, align 4, !tbaa !3 ; 2 uses
  %i.hb = add i32 %i.ha, -65
  %or.cond17.i226 = icmp ult i32 %i.hb, 26
  br i1 %or.cond17.i226, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %.preheader.i224
  %i.hc = or disjoint i32 %i.ha, 32
  store i32 %i.hc, ptr %.018.i225, align 4, !tbaa !3
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.preheader.i224
  %i.hd = getelementptr inbounds nuw i8, ptr %.018.i225, i64 4 ; 2 uses
  %i.he = icmp ult ptr %i.hd, %i.fe
  br i1 %i.he, label %.preheader.i224, label %uriLowercaseInplaceW.exit227, !llvm.loop !88

bb.ae:                                            ; preds = %bb.aa
  %i.hf = icmp eq ptr %i.fe, null
  br i1 %i.hf, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.hg = ptrtoint ptr %i.fe to i64
  %i.hh = ptrtoint ptr %i.ez to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 2 uses
  %i.hj = lshr exact i64 %i.hi, 2                 ; 3 uses
  %i.hk = trunc i64 %i.hj to i32                  ; 2 uses
  %i.hl = icmp eq i32 %i.hk, 0
  br i1 %i.hl, label %uriLowercaseMallocW.exit237, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hm = icmp slt i32 %i.hk, 0
  br i1 %i.hm, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hn = load ptr, ptr %3, align 8, !tbaa !31
  %i.ho = and i64 %i.hj, 2147483647               ; 6 uses
  %i.hp = shl nuw nsw i64 %i.ho, 2
  %i.hq = tail call ptr %i.hn(ptr noundef nonnull %3, i64 noundef %i.hp) #7, !inline_history !83 ; 9 uses
  %i.hr = icmp eq ptr %i.hq, null
  br i1 %i.hr, label %bb.ai, label %.lr.ph.i228

.lr.ph.i228:                                      ; preds = %bb.ah
  %i.hs = ptrtoaddr ptr %i.hq to i64
  %i.ht = load ptr, ptr %i.ey, align 8, !tbaa !80 ; 5 uses
  %min.iters.check483 = icmp samesign ult i64 %i.ho, 8
  %i.hu = ptrtoaddr ptr %i.ht to i64
  %i.hv = sub i64 %i.hs, %i.hu
  %diff.check481 = icmp ult i64 %i.hv, 32
  %or.cond539 = select i1 %min.iters.check483, i1 true, i1 %diff.check481
  br i1 %or.cond539, label %scalar.ph482.preheader, label %vector.ph484

vector.ph484:                                     ; preds = %.lr.ph.i228
  %n.vec486 = and i64 %i.hj, 2147483640           ; 3 uses
  br label %vector.body487

vector.body487:                                   ; preds = %vector.body487, %vector.ph484
  %index488 = phi i64 [ 0, %vector.ph484 ], [ %index.next491, %vector.body487 ] ; 3 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index488 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load489 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !3 ; 3 uses
  %wide.load490 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !3 ; 3 uses
  %i.hy = add <4 x i32> %wide.load489, splat (i32 -65)
  %i.hz = add <4 x i32> %wide.load490, splat (i32 -65)
  %i.ia = icmp ult <4 x i32> %i.hy, splat (i32 26)
  %i.ib = icmp ult <4 x i32> %i.hz, splat (i32 26)
  %6 = or disjoint <4 x i32> %wide.load489, splat (i32 32)
  %i.ic = or disjoint <4 x i32> %wide.load490, splat (i32 32)
  %i.id = select <4 x i1> %i.ia, <4 x i32> %6, <4 x i32> %wide.load489
  %7 = select <4 x i1> %i.ib, <4 x i32> %i.ic, <4 x i32> %wide.load490
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %index488 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  store <4 x i32> %i.id, ptr %i.ie, align 4, !tbaa !3
  store <4 x i32> %7, ptr %i.if, align 4, !tbaa !3
  %index.next491 = add nuw i64 %index488, 8       ; 2 uses
  %i.ig = icmp eq i64 %index.next491, %n.vec486
  br i1 %i.ig, label %middle.block492, label %vector.body487, !llvm.loop !89

middle.block492:                                  ; preds = %vector.body487
  %cmp.n493 = icmp eq i64 %i.ho, %n.vec486
  br i1 %cmp.n493, label %._crit_edge.i235, label %scalar.ph482.preheader

scalar.ph482.preheader:                           ; preds = %.lr.ph.i228, %middle.block492
  %indvars.iv.i230.ph = phi i64 [ 0, %.lr.ph.i228 ], [ %n.vec486, %middle.block492 ] ; 5 uses
  %.neg548 = or disjoint i64 %indvars.iv.i230.ph, 1
  %i.ih = and i64 %i.hi, 4
  %lcmp.mod547.not = icmp eq i64 %i.ih, 0
  br i1 %lcmp.mod547.not, label %scalar.ph482.prol.loopexit, label %scalar.ph482.prol

scalar.ph482.prol:                                ; preds = %scalar.ph482.preheader
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i230.ph
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !3  ; 3 uses
  %i.ik = add i32 %i.ij, -65
  %or.cond.i231.prol = icmp ult i32 %i.ik, 26
  %i.il = or disjoint i32 %i.ij, 32
  %spec.select.i232.prol = select i1 %or.cond.i231.prol, i32 %i.il, i32 %i.ij
  %i.im = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i230.ph
  store i32 %spec.select.i232.prol, ptr %i.im, align 4, !tbaa !3
  %indvars.iv.next.i233.prol = or disjoint i64 %indvars.iv.i230.ph, 1
  br label %scalar.ph482.prol.loopexit

scalar.ph482.prol.loopexit:                       ; preds = %scalar.ph482.prol, %scalar.ph482.preheader
  %indvars.iv.i230.unr = phi i64 [ %indvars.iv.i230.ph, %scalar.ph482.preheader ], [ %indvars.iv.next.i233.prol, %scalar.ph482.prol ]
  %i.in = icmp eq i64 %i.ho, %.neg548
  br i1 %i.in, label %._crit_edge.i235, label %scalar.ph482

scalar.ph482:                                     ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482
  %indvars.iv.i230 = phi i64 [ %indvars.iv.next.i233.1, %scalar.ph482 ], [ %indvars.iv.i230.unr, %scalar.ph482.prol.loopexit ] ; 4 uses
  %i.io = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i230
  %i.ip = load i32, ptr %i.io, align 4, !tbaa !3  ; 3 uses
  %i.iq = add i32 %i.ip, -65
  %or.cond.i231 = icmp ult i32 %i.iq, 26
  %i.ir = or disjoint i32 %i.ip, 32
  %spec.select.i232 = select i1 %or.cond.i231, i32 %i.ir, i32 %i.ip
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.i230
  store i32 %spec.select.i232, ptr %i.is, align 4, !tbaa !3
  %indvars.iv.next.i233 = add nuw nsw i64 %indvars.iv.i230, 1 ; 2 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.next.i233
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !3  ; 3 uses
  %i.iv = add i32 %i.iu, -65
  %or.cond.i231.1 = icmp ult i32 %i.iv, 26
  %i.iw = or disjoint i32 %i.iu, 32
  %spec.select.i232.1 = select i1 %or.cond.i231.1, i32 %i.iw, i32 %i.iu
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %indvars.iv.next.i233
  store i32 %spec.select.i232.1, ptr %i.ix, align 4, !tbaa !3
  %indvars.iv.next.i233.1 = add nuw nsw i64 %indvars.iv.i230, 2 ; 2 uses
  %exitcond.not.i234.1 = icmp eq i64 %indvars.iv.next.i233.1, %i.ho
  br i1 %exitcond.not.i234.1, label %._crit_edge.i235, label %scalar.ph482, !llvm.loop !90

._crit_edge.i235:                                 ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482, %middle.block492
  store ptr %i.hq, ptr %i.ey, align 8, !tbaa !80
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.hq, i64 %i.ho ; 2 uses
  store ptr %i.iy, ptr %i.fd, align 8, !tbaa !80
  br label %uriLowercaseMallocW.exit237

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.ae
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ev, ptr noundef %3)
  br label %bb.ef

uriLowercaseMallocW.exit237:                      ; preds = %._crit_edge.i235, %bb.af
  %i.iz = phi ptr [ %i.iy, %._crit_edge.i235 ], [ %i.fe, %bb.af ]
  %i.ja = phi ptr [ %i.hq, %._crit_edge.i235 ], [ %i.ez, %bb.af ]
  %i.jb = or disjoint i32 %i.ev, 4                ; 2 uses
  store i32 %i.jb, ptr %i.a, align 4, !tbaa !3
  br label %uriLowercaseInplaceW.exit227

uriLowercaseInplaceW.exit227:                     ; preds = %bb.ad, %middle.block477, %bb.ab, %uriLowercaseMallocW.exit237
  %i.jc = phi i32 [ %i.jb, %uriLowercaseMallocW.exit237 ], [ %i.ev, %bb.ab ], [ %i.ev, %middle.block477 ], [ %i.ev, %bb.ad ]
  %i.jd = phi ptr [ %i.iz, %uriLowercaseMallocW.exit237 ], [ %i.fe, %bb.ab ], [ %i.fe, %middle.block477 ], [ %i.fe, %bb.ad ]
  %i.je = phi ptr [ %i.ja, %uriLowercaseMallocW.exit237 ], [ %i.ez, %bb.ab ], [ %i.ez, %middle.block477 ], [ %i.ez, %bb.ad ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !76
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !77
  br label %uriContainsUglyPercentEncodingW.exit

bb.aj:                                            ; preds = %bb.z
  %i.jh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !76 ; 2 uses
  %.not177 = icmp eq ptr %i.ji, null
  br i1 %.not177, label %uriContainsUglyPercentEncodingW.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.jj = load ptr, ptr %i.ex, align 8, !tbaa !91
  %i.jk = icmp eq ptr %i.jj, null
  br i1 %i.jk, label %bb.al, label %uriContainsUglyPercentEncodingW.exit

bb.al:                                            ; preds = %bb.ak
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !92
  %i.jn = icmp eq ptr %i.jm, null
  br i1 %i.jn, label %bb.am, label %uriContainsUglyPercentEncodingW.exit

bb.am:                                            ; preds = %bb.al
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !79
  %.not178 = icmp eq i32 %i.jp, 0
  %i.jq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %.not178, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call fastcc void @uriFixPercentEncodingInplaceW(ptr noundef nonnull %i.ji, ptr noundef %i.jq)
  br label %bb.ar

bb.ao:                                            ; preds = %bb.am
  %i.jr = tail call fastcc i32 @uriFixPercentEncodingMallocW(ptr noundef %i.jh, ptr noundef %i.jq, ptr noundef %3)
  %.not179 = icmp eq i32 %i.jr, 0
  br i1 %.not179, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call fastcc void @uriPreventLeakageW(ptr noundef %0, i32 noundef %i.ev, ptr noundef %3)
  br label %bb.ef

bb.aq:                                            ; preds = %bb.ao
  %i.js = or disjoint i32 %i.ev, 4                ; 2 uses
  store i32 %i.js, ptr %i.a, align 4, !tbaa !3
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.an
  %i.jt = phi i32 [ %i.js, %bb.aq ], [ %i.ev, %bb.an ] ; 3 uses
  %i.ju = load ptr, ptr %i.jh, align 8, !tbaa !76 ; 13 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !77 ; 3 uses
  %i.jx = icmp ne ptr %i.ju, null
  %i.jy = icmp ugt ptr %i.jw, %i.ju
  %or.cond16.i238 = and i1 %i.jx, %i.jy
  br i1 %or.cond16.i238, label %.preheader.i239.preheader, label %uriContainsUglyPercentEncodingW.exit

.preheader.i239.preheader:                        ; preds = %bb.ar
  %i.jz = ptrtoint ptr %i.jw to i64
  %i.ka = ptrtoint ptr %i.ju to i64               ; 2 uses
  %i.kb = add i64 %i.ka, 4
  %umax495 = tail call i64 @llvm.umax.i64(i64 %i.jz, i64 %i.kb)
  %i.kc = xor i64 %i.ka, -1
  %i.kd = add i64 %umax495, %i.kc                 ; 2 uses
  %i.ke = lshr i64 %i.kd, 2
  %i.kf = add nuw nsw i64 %i.ke, 1                ; 2 uses
  %min.iters.check497 = icmp ult i64 %i.kd, 28
  br i1 %min.iters.check497, label %.preheader.i239.preheader542, label %vector.ph498

vector.ph498:                                     ; preds = %.preheader.i239.preheader
  %n.vec500 = and i64 %i.kf, 9223372036854775800  ; 3 uses
  %i.kg = shl i64 %n.vec500, 2
  %i.kh = getelementptr i8, ptr %i.ju, i64 %i.kg
  br label %vector.body501

vector.body501:                                   ; preds = %pred.store.continue528, %vector.ph498
  %index502 = phi i64 [ 0, %vector.ph498 ], [ %index.next529, %pred.store.continue528 ] ; 2 uses
  %i.ki = shl i64 %index502, 2                    ; 8 uses
  %next.gep503 = getelementptr i8, ptr %i.ju, i64 %i.ki ; 3 uses
  %i.kj = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep504 = getelementptr i8, ptr %i.kj, i64 4
  %i.kk = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep505 = getelementptr i8, ptr %i.kk, i64 8
  %i.kl = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep506 = getelementptr i8, ptr %i.kl, i64 12
  %i.km = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep507 = getelementptr i8, ptr %i.km, i64 16
  %i.kn = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep508 = getelementptr i8, ptr %i.kn, i64 20
  %i.ko = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep509 = getelementptr i8, ptr %i.ko, i64 24
  %i.kp = getelementptr i8, ptr %i.ju, i64 %i.ki
  %next.gep510 = getelementptr i8, ptr %i.kp, i64 28
  %i.kq = getelementptr i8, ptr %next.gep503, i64 16
  %wide.load511 = load <4 x i32>, ptr %next.gep503, align 4, !tbaa !3 ; 5 uses
  %wide.load512 = load <4 x i32>, ptr %i.kq, align 4, !tbaa !3 ; 5 uses
  %i.kr = add <4 x i32> %wide.load511, splat (i32 -65)
  %i.ks = add <4 x i32> %wide.load512, splat (i32 -65)
  %i.kt = icmp ult <4 x i32> %i.kr, splat (i32 26) ; 4 uses
  %i.ku = icmp ult <4 x i32> %i.ks, splat (i32 26) ; 4 uses
  %i.kv = extractelement <4 x i1> %i.kt, i64 0
  br i1 %i.kv, label %pred.store.if513, label %pred.store.continue514

pred.store.if513:                                 ; preds = %vector.body501
  %i.kw = extractelement <4 x i32> %wide.load511, i64 0
  %i.kx = or disjoint i32 %i.kw, 32
  store i32 %i.kx, ptr %next.gep503, align 4, !tbaa !3
  br label %pred.store.continue514

pred.store.continue514:                           ; preds = %pred.store.if513, %vector.body501
  %i.ky = extractelement <4 x i1> %i.kt, i64 1
  br i1 %i.ky, label %pred.store.if515, label %pred.store.continue516

pred.store.if515:                                 ; preds = %pred.store.continue514
  %i.kz = extractelement <4 x i32> %wide.load511, i64 1
  %i.la = or disjoint i32 %i.kz, 32
  store i32 %i.la, ptr %next.gep504, align 4, !tbaa !3
  br label %pred.store.continue516

pred.store.continue516:                           ; preds = %pred.store.if515, %pred.store.continue514
  %i.lb = extractelement <4 x i1> %i.kt, i64 2
  br i1 %i.lb, label %pred.store.if517, label %pred.store.continue518
end_hunk_0
