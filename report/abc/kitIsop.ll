Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/kitIsop?download=true
inline.NumInlined: 53
inline.NumDeleted: 15
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@Kit_TruthIsop_rec:bb.a
  %diff.check371 = icmp ugt i64 %i.ew, -32
  %i.ex = add i64 %i.eu, %i.o
  %i.ey = sub i64 %i.ex, %i.cv
  %diff.check372 = icmp ugt i64 %i.ey, -32
  %conflict.rdx373 = or i1 %diff.check371, %diff.check372
  br i1 %conflict.rdx373, label %select.unfold.i197.preheader587, label %vector.ph374

vector.ph374:                                     ; preds = %vector.memcheck370
  %n.vec375 = and i64 %i.bn, 4294967288
  br label %vector.body376

vector.body376:                                   ; preds = %vector.body376, %vector.ph374
  %index377 = phi i64 [ 0, %vector.ph374 ], [ %index.next382, %vector.body376 ] ; 2 uses
  %i.ez = xor i64 %index377, -1
  %i.fa = add i64 %i.ez, %i.bn                    ; 3 uses
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.fa ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %i.fb, i64 -12
  %i.fd = getelementptr inbounds i8, ptr %i.fb, i64 -28
  %wide.load378 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !14
  %wide.load379 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !14
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %i.fa ; 2 uses
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 -12
  %i.fg = getelementptr inbounds i8, ptr %i.fe, i64 -28
  %wide.load380 = load <4 x i32>, ptr %i.ff, align 4, !tbaa !14
  %wide.load381 = load <4 x i32>, ptr %i.fg, align 4, !tbaa !14
  %i.fh = xor <4 x i32> %wide.load380, splat (i32 -1)
  %i.fi = xor <4 x i32> %wide.load381, splat (i32 -1)
  %i.fj = and <4 x i32> %wide.load378, %i.fh
  %i.fk = and <4 x i32> %wide.load379, %i.fi
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.fa ; 2 uses
  %i.fm = getelementptr inbounds i8, ptr %i.fl, i64 -12
  %i.fn = getelementptr inbounds i8, ptr %i.fl, i64 -28
  store <4 x i32> %i.fj, ptr %i.fm, align 4, !tbaa !14
  store <4 x i32> %i.fk, ptr %i.fn, align 4, !tbaa !14
  %index.next382 = add nuw i64 %index377, 8       ; 2 uses
  %i.fo = icmp eq i64 %index.next382, %n.vec375
  br i1 %i.fo, label %select.unfold.i203.preheader, label %vector.body376, !llvm.loop !47

bb.i:                                             ; preds = %Kit_TruthSharp.exit194.thread, %Kit_TruthSharp.exit194
  %i.fp = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.fp, align 4, !tbaa !19
  br label %Kit_TruthClear.exit

select.unfold.i197:                               ; preds = %select.unfold.i197.preheader587, %select.unfold.i197
  %indvars.iv.i198 = phi i64 [ %indvars.iv.next.i199, %select.unfold.i197 ], [ %i.bn, %select.unfold.i197.preheader587 ] ; 2 uses
  %indvars.iv.next.i199 = add nsw i64 %indvars.iv.i198, -1 ; 4 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next.i199
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !14
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.next.i199
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !14
  %i.fu = xor i32 %i.ft, -1
  %i.fv = and i32 %i.fr, %i.fu
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i199
  store i32 %i.fv, ptr %i.fw, align 4, !tbaa !14
  %i.fx = icmp samesign ugt i64 %indvars.iv.i198, 1
  br i1 %i.fx, label %select.unfold.i197, label %select.unfold.i203.preheader, !llvm.loop !48

select.unfold.i203.preheader:                     ; preds = %vector.body376, %select.unfold.i197
  %min.iters.check391 = icmp ult i32 %i.bh, 5
  br i1 %min.iters.check391, label %select.unfold.i203.preheader585, label %vector.memcheck392

select.unfold.i203.preheader585:                  ; preds = %vector.memcheck392, %select.unfold.i203.preheader
  br label %select.unfold.i203

vector.memcheck392:                               ; preds = %select.unfold.i203.preheader
  %i.fy = sext i32 %i.h to i64                    ; 2 uses
  %i.fz = shl nsw i64 %i.fy, 2
  %i.ga = add i64 %i.fz, %i.o
  %i.gb = sub i64 %i.ga, %i.b
  %diff.check393 = icmp ugt i64 %i.gb, -32
  %i.gc = add nsw i64 %i.fy, %i.bj
  %i.gd = shl nsw i64 %i.gc, 2
  %i.ge = add i64 %i.gd, %i.o
  %i.gf = sub i64 %i.ge, %i.ep
  %diff.check394 = icmp ugt i64 %i.gf, -32
  %conflict.rdx395 = or i1 %diff.check393, %diff.check394
  br i1 %conflict.rdx395, label %select.unfold.i203.preheader585, label %vector.ph396

vector.ph396:                                     ; preds = %vector.memcheck392
  %n.vec397 = and i64 %i.bn, 4294967288
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %i.gg = xor i64 %index399, -1
  %i.gh = add i64 %i.gg, %i.bn                    ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.gh ; 2 uses
  %i.gj = getelementptr inbounds i8, ptr %i.gi, i64 -12
  %i.gk = getelementptr inbounds i8, ptr %i.gi, i64 -28
  %wide.load400 = load <4 x i32>, ptr %i.gj, align 4, !tbaa !14
  %wide.load401 = load <4 x i32>, ptr %i.gk, align 4, !tbaa !14
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.gh ; 2 uses
  %i.gm = getelementptr inbounds i8, ptr %i.gl, i64 -12
  %i.gn = getelementptr inbounds i8, ptr %i.gl, i64 -28
  %wide.load402 = load <4 x i32>, ptr %i.gm, align 4, !tbaa !14
  %wide.load403 = load <4 x i32>, ptr %i.gn, align 4, !tbaa !14
  %i.go = xor <4 x i32> %wide.load402, splat (i32 -1)
  %i.gp = xor <4 x i32> %wide.load403, splat (i32 -1)
  %i.gq = and <4 x i32> %wide.load400, %i.go
  %i.gr = and <4 x i32> %wide.load401, %i.gp
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.gh ; 2 uses
  %i.gt = getelementptr inbounds i8, ptr %i.gs, i64 -12
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 -28
  store <4 x i32> %i.gq, ptr %i.gt, align 4, !tbaa !14
  store <4 x i32> %i.gr, ptr %i.gu, align 4, !tbaa !14
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.gv, label %select.unfold.i209.preheader, label %vector.body398, !llvm.loop !49

select.unfold.i203:                               ; preds = %select.unfold.i203.preheader585, %select.unfold.i203
  %indvars.iv.i204 = phi i64 [ %indvars.iv.next.i205, %select.unfold.i203 ], [ %i.bn, %select.unfold.i203.preheader585 ] ; 2 uses
  %indvars.iv.next.i205 = add nsw i64 %indvars.iv.i204, -1 ; 4 uses
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv.next.i205
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !14
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %indvars.iv.next.i205
  %i.gz = load i32, ptr %i.gy, align 4, !tbaa !14
  %i.ha = xor i32 %i.gz, -1
  %i.hb = and i32 %i.gx, %i.ha
  %i.hc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i205
  store i32 %i.hb, ptr %i.hc, align 4, !tbaa !14
  %i.hd = icmp samesign ugt i64 %indvars.iv.i204, 1
  br i1 %i.hd, label %select.unfold.i203, label %select.unfold.i209.preheader, !llvm.loop !50

select.unfold.i209.preheader:                     ; preds = %vector.body398, %select.unfold.i203
  %min.iters.check413 = icmp ult i32 %i.bh, 5
  br i1 %min.iters.check413, label %select.unfold.i209.preheader583, label %vector.memcheck414

select.unfold.i209.preheader583:                  ; preds = %vector.memcheck414, %select.unfold.i209.preheader
  br label %select.unfold.i209

vector.memcheck414:                               ; preds = %select.unfold.i209.preheader
  %i.he = sext i32 %i.h to i64                    ; 3 uses
  %i.hf = add nsw i64 %i.he, 1                    ; 2 uses
  %i.hg = shl nsw i64 %i.hf, 2
  %i.hh = getelementptr i8, ptr %i.n, i64 %i.hg
  %i.hi = getelementptr i8, ptr %i.hh, i64 -4
  %i.hj = shl nsw i64 %i.he, 2
  %i.hk = shl nuw nsw i64 %i.bn, 2
  %i.hl = getelementptr i8, ptr %i.n, i64 %i.hj
  %i.hm = getelementptr i8, ptr %i.hl, i64 %i.hk
  %i.hn = add nsw i64 %i.hf, %i.bj
  %i.ho = shl nsw i64 %i.hn, 2
  %i.hp = getelementptr i8, ptr %i.n, i64 %i.ho
  %i.hq = getelementptr i8, ptr %i.hp, i64 -4
  %i.hr = add nsw i64 %i.he, %i.bj
  %i.hs = add nsw i64 %i.hr, %i.bn
  %i.ht = shl nsw i64 %i.hs, 2
  %i.hu = getelementptr i8, ptr %i.n, i64 %i.ht
  %bound0 = icmp ult ptr %i.hi, %i.hu
  %bound1 = icmp ult ptr %i.hq, %i.hm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %select.unfold.i209.preheader583, label %vector.ph415

vector.ph415:                                     ; preds = %vector.memcheck414
  %n.vec416 = and i64 %i.bn, 4294967288
  br label %vector.body417

vector.body417:                                   ; preds = %vector.body417, %vector.ph415
  %index418 = phi i64 [ 0, %vector.ph415 ], [ %index.next423, %vector.body417 ] ; 2 uses
  %i.hv = xor i64 %index418, -1
  %i.hw = add i64 %i.hv, %i.bn                    ; 2 uses
  %i.hx = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %i.hw ; 2 uses
  %i.hy = getelementptr inbounds i8, ptr %i.hx, i64 -12 ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.hx, i64 -28 ; 2 uses
  %wide.load419 = load <4 x i32>, ptr %i.hy, align 4, !tbaa !14, !alias.scope !75, !noalias !76
  %wide.load420 = load <4 x i32>, ptr %i.hz, align 4, !tbaa !14, !alias.scope !75, !noalias !76
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.hw ; 2 uses
  %i.ib = getelementptr inbounds i8, ptr %i.ia, i64 -12
  %i.ic = getelementptr inbounds i8, ptr %i.ia, i64 -28
  %wide.load421 = load <4 x i32>, ptr %i.ib, align 4, !tbaa !14, !alias.scope !76
  %wide.load422 = load <4 x i32>, ptr %i.ic, align 4, !tbaa !14, !alias.scope !76
  %i.id = or <4 x i32> %wide.load421, %wide.load419
  %i.ie = or <4 x i32> %wide.load422, %wide.load420
  store <4 x i32> %i.id, ptr %i.hy, align 4, !tbaa !14, !alias.scope !75, !noalias !76
  store <4 x i32> %i.ie, ptr %i.hz, align 4, !tbaa !14, !alias.scope !75, !noalias !76
  %index.next423 = add nuw i64 %index418, 8       ; 2 uses
  %i.if = icmp eq i64 %index.next423, %n.vec416
  br i1 %i.if, label %select.unfold.i214.preheader, label %vector.body417, !llvm.loop !54

select.unfold.i209:                               ; preds = %select.unfold.i209.preheader583, %select.unfold.i209
  %indvars.iv.i210 = phi i64 [ %indvars.iv.next.i211, %select.unfold.i209 ], [ %i.bn, %select.unfold.i209.preheader583 ] ; 2 uses
  %indvars.iv.next.i211 = add nsw i64 %indvars.iv.i210, -1 ; 3 uses
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next.i211 ; 2 uses
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !14
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i211
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !14
  %i.ik = or i32 %i.ij, %i.ih
  store i32 %i.ik, ptr %i.ig, align 4, !tbaa !14
  %i.il = icmp samesign ugt i64 %indvars.iv.i210, 1
  br i1 %i.il, label %select.unfold.i209, label %select.unfold.i214.preheader, !llvm.loop !55

select.unfold.i214.preheader:                     ; preds = %vector.body417, %select.unfold.i209
  %min.iters.check432 = icmp ult i32 %i.bh, 5
  br i1 %min.iters.check432, label %select.unfold.i214.preheader581, label %vector.memcheck433

select.unfold.i214.preheader581:                  ; preds = %vector.memcheck433, %select.unfold.i214.preheader
  br label %select.unfold.i214

vector.memcheck433:                               ; preds = %select.unfold.i214.preheader
  %i.im = sext i32 %i.h to i64                    ; 2 uses
  %8 = add nsw i64 %i.im, %i.bj
  %i.in = shl nsw i64 %8, 2
  %i.io = sub i64 %i.a, %i.o                      ; 2 uses
  %i.ip = sub i64 %i.in, %i.io
  %diff.check434 = icmp ugt i64 %i.ip, -32
  %i.iq = shl nsw i64 %i.im, 2
  %i.ir = sub i64 %i.iq, %i.io
  %diff.check435 = icmp ugt i64 %i.ir, -32
  %conflict.rdx436 = or i1 %diff.check434, %diff.check435
  br i1 %conflict.rdx436, label %select.unfold.i214.preheader581, label %vector.ph437

vector.ph437:                                     ; preds = %vector.memcheck433
  %n.vec438 = and i64 %i.bn, 4294967288
  br label %vector.body439

vector.body439:                                   ; preds = %vector.body439, %vector.ph437
  %index440 = phi i64 [ 0, %vector.ph437 ], [ %index.next445, %vector.body439 ] ; 2 uses
  %i.is = xor i64 %index440, -1
  %i.it = add i64 %i.is, %i.bn                    ; 3 uses
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds i8, ptr %i.iu, i64 -12
  %i.iw = getelementptr inbounds i8, ptr %i.iu, i64 -28
  %wide.load441 = load <4 x i32>, ptr %i.iv, align 4, !tbaa !14
  %wide.load442 = load <4 x i32>, ptr %i.iw, align 4, !tbaa !14
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.it ; 2 uses
  %i.iy = getelementptr inbounds i8, ptr %i.ix, i64 -12
  %i.iz = getelementptr inbounds i8, ptr %i.ix, i64 -28
  %wide.load443 = load <4 x i32>, ptr %i.iy, align 4, !tbaa !14
  %wide.load444 = load <4 x i32>, ptr %i.iz, align 4, !tbaa !14
  %i.ja = and <4 x i32> %wide.load443, %wide.load441
  %i.jb = and <4 x i32> %wide.load444, %wide.load442
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.it ; 2 uses
  %i.jd = getelementptr inbounds i8, ptr %i.jc, i64 -12
  %i.je = getelementptr inbounds i8, ptr %i.jc, i64 -28
  store <4 x i32> %i.ja, ptr %i.jd, align 4, !tbaa !14
  store <4 x i32> %i.jb, ptr %i.je, align 4, !tbaa !14
  %index.next445 = add nuw i64 %index440, 8       ; 2 uses
  %i.jf = icmp eq i64 %index.next445, %n.vec438
  br i1 %i.jf, label %Kit_TruthAnd.exit, label %vector.body439, !llvm.loop !56

select.unfold.i214:                               ; preds = %select.unfold.i214.preheader581, %select.unfold.i214
  %indvars.iv.i215 = phi i64 [ %indvars.iv.next.i216, %select.unfold.i214 ], [ %i.bn, %select.unfold.i214.preheader581 ] ; 2 uses
  %indvars.iv.next.i216 = add nsw i64 %indvars.iv.i215, -1 ; 4 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next.i216
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !14
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.next.i216
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !14
  %i.jk = and i32 %i.jj, %i.jh
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv.next.i216
  store i32 %i.jk, ptr %i.jl, align 4, !tbaa !14
  %i.jm = icmp samesign ugt i64 %indvars.iv.i215, 1
  br i1 %i.jm, label %select.unfold.i214, label %Kit_TruthAnd.exit, !llvm.loop !57

Kit_TruthAnd.exit:                                ; preds = %vector.body439, %select.unfold.i214, %Kit_TruthSharp.exit194
  %i.jn = phi i32 [ %i.em, %Kit_TruthSharp.exit194 ], [ %i.er, %select.unfold.i214 ], [ %i.er, %vector.body439 ] ; 4 uses
  %i.jo = phi ptr [ %i.ek, %Kit_TruthSharp.exit194 ], [ %i.eo, %select.unfold.i214 ], [ %i.eo, %vector.body439 ] ; 3 uses
  %i.jp = phi i32 [ %i.dz, %Kit_TruthSharp.exit194 ], [ %i.cx, %select.unfold.i214 ], [ %i.cx, %vector.body439 ] ; 7 uses
  %i.jq = phi ptr [ %i.dx, %Kit_TruthSharp.exit194 ], [ %i.cu, %select.unfold.i214 ], [ %i.cu, %vector.body439 ] ; 3 uses
  %i.jr = ptrtoaddr ptr %i.jo to i64
  %i.js = ptrtoaddr ptr %i.jq to i64
  %i.jt = call fastcc ptr @Kit_TruthIsop_rec(ptr noundef nonnull %i.t, ptr noundef nonnull %i.bm, i32 noundef %.0335, ptr noundef %7, ptr noundef nonnull %4) ; 5 uses
  %i.ju = ptrtoaddr ptr %i.jt to i64              ; 2 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !19 ; 5 uses
  %i.jx = icmp eq i32 %i.jw, -1
  br i1 %i.jx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %Kit_TruthAnd.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i32 -1, ptr %i.jy, align 4, !tbaa !19
  br label %Kit_TruthClear.exit

bb.k:                                             ; preds = %Kit_TruthAnd.exit
  %i.jz = load i32, ptr %5, align 8, !tbaa !21
  %i.ka = load i32, ptr %6, align 8, !tbaa !21
  %i.kb = load i32, ptr %7, align 8, !tbaa !21
  %i.kc = add i32 %i.jp, %i.jn                    ; 2 uses
  %i.kd = add i32 %i.kc, %i.jz
  %i.ke = add i32 %i.kd, %i.ka
  %i.kf = add i32 %i.ke, %i.kb
  store i32 %i.kf, ptr %3, align 8, !tbaa !21
  %i.kg = add nsw i32 %i.kc, %i.jw                ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 2 uses
  store i32 %i.kg, ptr %i.kh, align 4, !tbaa !19
  %i.ki = icmp eq i32 %i.kg, 0
  br i1 %i.ki, label %Vec_IntFetch.exit218.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.kj = load i32, ptr %i.g, align 4, !tbaa !11
  %i.kk = add nsw i32 %i.kj, %i.kg                ; 3 uses
  store i32 %i.kk, ptr %i.g, align 4, !tbaa !11
  %i.kl = load i32, ptr %4, align 8, !tbaa !12
  %i.km = icmp sgt i32 %i.kk, %i.kl
  br i1 %i.km, label %Vec_IntFetch.exit218.thread, label %Vec_IntFetch.exit218

Vec_IntFetch.exit218.thread:                      ; preds = %bb.k, %bb.l
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.kn, align 8, !tbaa !20
  store i32 -1, ptr %i.kh, align 4, !tbaa !19
  br label %Kit_TruthClear.exit

Vec_IntFetch.exit218:                             ; preds = %bb.l
  %i.ko = load ptr, ptr %i.m, align 8, !tbaa !13  ; 2 uses
  %i.kp = ptrtoaddr ptr %i.ko to i64              ; 3 uses
  %i.kq = sext i32 %i.kk to i64                   ; 4 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %i.kq
  %i.ks = sext i32 %i.kg to i64                   ; 4 uses
  %i.kt = sub nsw i64 0, %i.ks
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kr, i64 %i.kt ; 19 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !20
  %i.kw = icmp sgt i32 %i.jp, 0
  br i1 %i.kw, label %.lr.ph, label %.preheader242

.lr.ph:                                           ; preds = %Vec_IntFetch.exit218
  %i.kx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !20 ; 7 uses
  %i.kz = shl nuw i32 %.0335, 1
  %i.la = shl nuw i32 1, %i.kz                    ; 6 uses
  %wide.trip.count = zext nneg i32 %i.jp to i64   ; 5 uses
  %min.iters.check452 = icmp ult i32 %i.jp, 16
  br i1 %min.iters.check452, label %scalar.ph451.preheader, label %vector.memcheck453

vector.memcheck453:                               ; preds = %.lr.ph
  %i.lb = ptrtoaddr ptr %i.ky to i64
  %i.lc = shl nsw i64 %i.kq, 2
  %i.ld = shl nsw i64 %i.ks, 2
  %i.le = add i64 %i.lc, %i.kp
  %i.lf = add i64 %i.ld, %i.lb
  %i.lg = sub i64 %i.lf, %i.le
  %diff.check454 = icmp ugt i64 %i.lg, -32
  br i1 %diff.check454, label %scalar.ph451.preheader, label %vector.ph455

vector.ph455:                                     ; preds = %vector.memcheck453
  %n.vec456 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.la, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body457

vector.body457:                                   ; preds = %vector.body457, %vector.ph455
  %index458 = phi i64 [ 0, %vector.ph455 ], [ %index.next461, %vector.body457 ] ; 3 uses
  %i.lh = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %index458 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %wide.load459 = load <4 x i32>, ptr %i.lh, align 4, !tbaa !14
  %wide.load460 = load <4 x i32>, ptr %i.li, align 4, !tbaa !14
  %i.lj = or <4 x i32> %wide.load459, %broadcast.splat
  %i.lk = or <4 x i32> %wide.load460, %broadcast.splat
  %i.ll = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %index458 ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 16
  store <4 x i32> %i.lj, ptr %i.ll, align 4, !tbaa !14
  store <4 x i32> %i.lk, ptr %i.lm, align 4, !tbaa !14
  %index.next461 = add nuw i64 %index458, 8       ; 2 uses
  %i.ln = icmp eq i64 %index.next461, %n.vec456
  br i1 %i.ln, label %middle.block462, label %vector.body457, !llvm.loop !58

middle.block462:                                  ; preds = %vector.body457
  %cmp.n463 = icmp eq i64 %n.vec456, %wide.trip.count
  br i1 %cmp.n463, label %.preheader242, label %scalar.ph451.preheader

scalar.ph451.preheader:                           ; preds = %vector.memcheck453, %.lr.ph, %middle.block462
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck453 ], [ 0, %.lr.ph ], [ %n.vec456, %middle.block462 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph451.prol.loopexit, label %scalar.ph451.prol

scalar.ph451.prol:                                ; preds = %scalar.ph451.preheader, %scalar.ph451.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph451.prol ], [ %indvars.iv.ph, %scalar.ph451.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph451.prol ], [ 0, %scalar.ph451.preheader ]
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %i.ky, i64 %indvars.iv.prol
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !14
  %i.lq = or i32 %i.lp, %i.la
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %i.lr = getelementptr inbounds nuw [4 x i8], ptr %i.ku, i64 %indvars.iv.prol
  store i32 %i.lq, ptr %i.lr, align 4, !tbaa !14
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph451.prol.loopexit, label %scalar.ph451.prol, !llvm.loop !59

scalar.ph451.prol.loopexit:                       ; preds = %scalar.ph451.prol, %scalar.ph451.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph451.preheader ], [ %indvars.iv.next.prol, %scalar.ph451.prol ]
  %i.ls = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.lt = icmp ugt i64 %i.ls, -4
  br i1 %i.lt, label %.preheader242, label %scalar.ph451

.preheader242:                                    ; preds = %scalar.ph451.prol.loopexit, %scalar.ph451, %middle.block462, %Vec_IntFetch.exit218
  %.0163.lcssa = phi i32 [ 0, %Vec_IntFetch.exit218 ], [ %i.jp, %middle.block462 ], [ %i.jp, %scalar.ph451 ], [ %i.jp, %scalar.ph451.prol.loopexit ] ; 2 uses
  %i.lu = icmp sgt i32 %i.jn, 0
  br i1 %i.lu, label %.lr.ph251, label %.preheader241

.lr.ph251:                                        ; preds = %.preheader242
  %i.lv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !20 ; 7 uses
  %i.lx = shl nuw i32 %.0335, 1
  %i.ly = shl nuw i32 2, %i.lx                    ; 6 uses
  %i.lz = zext nneg i32 %.0163.lcssa to i64       ; 5 uses
  %wide.trip.count277 = zext nneg i32 %i.jn to i64 ; 5 uses
  %min.iters.check468 = icmp ult i32 %i.jn, 16
  br i1 %min.iters.check468, label %scalar.ph467.preheader, label %vector.memcheck469

vector.memcheck469:                               ; preds = %.lr.ph251
  %i.ma = ptrtoaddr ptr %i.lw to i64
  %i.mb = shl nsw i64 %i.ks, 2
  %i.mc = add nsw i64 %i.kq, %i.lz
  %i.md = shl nsw i64 %i.mc, 2
  %i.me = add i64 %i.md, %i.kp
  %i.mf = add i64 %i.mb, %i.ma
end_hunk_0
