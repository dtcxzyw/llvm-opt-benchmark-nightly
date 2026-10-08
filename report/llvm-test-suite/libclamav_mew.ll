Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/libclamav_mew?download=true
inline.NumInlined: 52
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 7
begin_hunk_0_@mew_lzma:bb.a
  %i.rf = shl i32 %i.qy, 8
  %i.rg = or disjoint i32 %i.rf, %i.re
  store ptr %i.qm, ptr %i.c, align 8, !tbaa !17
  %i.rh = shl nuw i32 %.sink.i519, 8
  store i32 %i.rg, ptr %i.k, align 4, !tbaa !12
  store i32 %i.rh, ptr %i.l, align 8, !tbaa !13
  store ptr %i.qm, ptr %5, align 8, !tbaa !14
  br label %lzma_486248.exit521

lzma_486248.exit521:                              ; preds = %bb.cl, %bb.cm
  %spec.select599 = select i1 %i.qq, i32 %.0357, i32 %.0340
  %spec.select600 = select i1 %i.qq, i32 %.0340, i32 %.0357
  br label %bb.cn

bb.cn:                                            ; preds = %lzma_486248.exit521, %lzma_486248.exit510
  %storemerge422 = phi i32 [ %spec.select599, %lzma_486248.exit521 ], [ %.0352, %lzma_486248.exit510 ] ; 2 uses
  %.1358 = phi i32 [ %.0352, %lzma_486248.exit521 ], [ %.0357, %lzma_486248.exit510 ]
  %.2342 = phi i32 [ %spec.select600, %lzma_486248.exit521 ], [ %.0340, %lzma_486248.exit510 ]
  store i32 %storemerge422, ptr %i.a, align 4, !tbaa !8
  br label %bb.cy

bb.co:                                            ; preds = %lzma_486248.exit499
  %i.ri = shl i32 %.0315, 4
  %i.rj = add i32 %i.ri, 240
  %i.rk = or disjoint i32 %i.rj, %i.bx            ; 2 uses
  store i32 %i.rk, ptr %i.a, align 4, !tbaa !8
  %i.rl = shl i32 %i.rk, 1
  %i.rm = zext i32 %i.rl to i64                   ; 2 uses
  %i.rn = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.rm ; 3 uses
  store ptr %i.rn, ptr %i.c, align 8, !tbaa !17
  %i.ro = add nuw nsw i64 %i.n, %i.rm
  %.not87.not.i523 = icmp samesign ugt i64 %i.ro, %i.j
  br i1 %.not87.not.i523, label %lzma_4862e0.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not88.i524 = icmp uge ptr %i.pi, %0
  %i.rp = getelementptr inbounds nuw i8, ptr %i.pi, i64 1 ; 3 uses
  %.not89.i525 = icmp ule ptr %i.rp, %i.m
  %or.cond91.i526 = select i1 %.not88.i524, i1 %.not89.i525, i1 false
  br i1 %or.cond91.i526, label %bb.cq, label %lzma_4862e0.exit.thread

bb.cq:                                            ; preds = %bb.cp
  %i.rq = lshr i32 %i.ph, 11
  %.val.i528 = load i32, ptr %i.rn, align 1       ; 4 uses
  %i.rr = and i32 %.val.i528, 65535               ; 3 uses
  %i.rs = mul i32 %i.rr, %i.rq                    ; 4 uses
  %i.rt = icmp ult i32 %i.pg, %i.rs               ; 2 uses
  br i1 %i.rt, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.ru = sub nsw i32 2048, %i.rr
  %i.rv = lshr i32 %i.ru, 5
  %i.rw = add i32 %i.rv, %.val.i528
  br label %bb.ct

bb.cs:                                            ; preds = %bb.cq
  %i.rx = sub i32 %i.ph, %i.rs
  %i.ry = sub nuw i32 %i.pg, %i.rs                ; 2 uses
  store i32 %i.ry, ptr %i.k, align 4, !tbaa !12
  %i.rz = lshr i32 %i.rr, 5
  %i.sa = sub i32 %.val.i528, %i.rz
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  %i.sb = phi i32 [ %i.ry, %bb.cs ], [ %i.pg, %bb.cr ]
  %.sink100.i529 = phi i32 [ %i.sa, %bb.cs ], [ %i.rw, %bb.cr ]
  %.sink.i530 = phi i32 [ %i.rx, %bb.cs ], [ %i.rs, %bb.cr ] ; 3 uses
  %.0.i531 = phi i32 [ 1, %bb.cs ], [ 0, %bb.cr ]
  %i.sc = and i32 %.val.i528, -65536
  %i.sd = and i32 %.sink100.i529, 65535
  %i.se = or disjoint i32 %i.sd, %i.sc
  store i32 %.sink.i530, ptr %i.l, align 8, !tbaa !13
  store i32 %i.se, ptr %i.rn, align 1
  %i.sf = icmp ult i32 %.sink.i530, 16777216
  br i1 %i.sf, label %bb.cu, label %lzma_486248.exit532

bb.cu:                                            ; preds = %bb.ct
  store ptr %i.pi, ptr %i.c, align 8, !tbaa !17
  %i.sg = load i8, ptr %i.pi, align 1, !tbaa !16
  %i.sh = zext i8 %i.sg to i32
  %i.si = shl i32 %i.sb, 8
  %i.sj = or disjoint i32 %i.si, %i.sh
  store ptr %i.rp, ptr %i.c, align 8, !tbaa !17
  %i.sk = shl nuw i32 %.sink.i530, 8
  store i32 %i.sj, ptr %i.k, align 4, !tbaa !12
  store i32 %i.sk, ptr %i.l, align 8, !tbaa !13
  store ptr %i.rp, ptr %5, align 8, !tbaa !14
  br label %lzma_486248.exit532

lzma_486248.exit532:                              ; preds = %bb.ct, %bb.cu
  store i32 %.0.i531, ptr %i.a, align 4, !tbaa !8
  br i1 %i.rt, label %bb.cv, label %bb.cy

bb.cv:                                            ; preds = %lzma_486248.exit532
  %i.sl = icmp ugt i32 %.0315, 6
  %i.sm = select i1 %i.sl, i32 11, i32 9
  %i.sn = sub i32 %.0365, %.0307
  %i.so = zext i32 %i.sn to i64                   ; 2 uses
  %i.sp = add nuw nsw i64 %.us-phi800, %i.so
  %.not417.not = icmp samesign ult i64 %i.sp, %i.j
  br i1 %.not417.not, label %bb.cw, label %lzma_4862e0.exit.thread

bb.cw:                                            ; preds = %bb.cv
  %i.sq = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.so
  %i.sr = load i8, ptr %i.sq, align 1, !tbaa !16  ; 2 uses
  store i32 %.0365, ptr %i.b, align 4, !tbaa !8
  %i.ss = zext i32 %.0365 to i64                  ; 2 uses
  %i.st = add nuw nsw i64 %.us-phi800, %i.ss
  %.not419.not = icmp samesign ult i64 %i.st, %i.j
  br i1 %.not419.not, label %bb.cx, label %lzma_4862e0.exit.thread

bb.cx:                                            ; preds = %bb.cw
  %i.su = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.ss
  %i.sv = add i32 %.0365, 1
  store i8 %i.sr, ptr %i.su, align 1, !tbaa !16
  br label %.loopexit614

bb.cy:                                            ; preds = %lzma_486248.exit532, %bb.cn
  %.2359 = phi i32 [ %.1358, %bb.cn ], [ %.0357, %lzma_486248.exit532 ]
  %.1353 = phi i32 [ %.0307, %bb.cn ], [ %.0352, %lzma_486248.exit532 ]
  %.3343 = phi i32 [ %.2342, %bb.cn ], [ %.0340, %lzma_486248.exit532 ]
  %.4311 = phi i32 [ %storemerge422, %bb.cn ], [ %.0307, %lzma_486248.exit532 ]
  store ptr %i.s, ptr %i.c, align 8, !tbaa !17
  %i.sw = call fastcc i32 @lzma_4863da(i32 noundef %i.bx, ptr noundef %5, ptr noundef %i.c, ptr noundef %i.b, ptr noundef %i.a, ptr noundef nonnull %0, i32 noundef %2)
  %i.sx = icmp eq i32 %i.sw, -1
  br i1 %i.sx, label %lzma_4862e0.exit.thread, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.sy = load i32, ptr %i.a, align 4, !tbaa !8
  %i.sz = icmp ugt i32 %.0315, 6
  %i.ta = select i1 %i.sz, i32 11, i32 8          ; 2 uses
  store i32 %i.ta, ptr %i.a, align 4, !tbaa !8
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.br
  %.0363 = phi i32 [ %i.em, %bb.br ], [ %i.sy, %bb.cz ] ; 5 uses
  %.3360 = phi i32 [ %.0352, %bb.br ], [ %.2359, %bb.cz ] ; 2 uses
  %.2354 = phi i32 [ %.0307, %bb.br ], [ %.1353, %bb.cz ] ; 2 uses
  %.4344 = phi i32 [ %.0357, %bb.br ], [ %.3343, %bb.cz ] ; 2 uses
  %.1316 = phi i32 [ %i.ej, %bb.br ], [ %i.ta, %bb.cz ] ; 2 uses
  %.5312 = phi i32 [ %i.oh, %bb.br ], [ %.4311, %bb.cz ] ; 4 uses
  %.not424 = icmp eq i32 %.5312, 0
  br i1 %.not424, label %bb.eq, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.tb = add i32 %.0363, 2                       ; 6 uses
  store ptr %.us-phi801, ptr %i.c, align 8, !tbaa !17
  store i32 %.0365, ptr %i.a, align 4, !tbaa !8
  %i.tc = sub i32 %.0365, %.5312                  ; 8 uses
  %i.td = sub i32 %.us-phi799, %.0365             ; 2 uses
  %i.te = icmp ult i32 %i.tb, %i.td
  br i1 %i.te, label %bb.dc, label %bb.df

bb.dc:                                            ; preds = %bb.db
  %i.tf = add i32 %.0363, 1
  %or.cond.not = icmp ult i32 %i.tf, %2
  br i1 %or.cond.not, label %bb.dd, label %lzma_4862e0.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.tg = zext i32 %i.tc to i64
  %i.th = zext i32 %i.tb to i64                   ; 2 uses
  %i.ti = add nuw nsw i64 %i.tg, %i.th            ; 2 uses
  %i.tj = add nuw nsw i64 %i.ti, %.us-phi800
  %.not428 = icmp samesign ule i64 %i.tj, %i.j
  %i.tk = or i64 %i.ti, %.us-phi800
  %i.tl = icmp ne i64 %i.tk, 0
  %or.cond443 = and i1 %.not428, %i.tl
  br i1 %or.cond443, label %bb.de, label %lzma_4862e0.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.tm = zext i32 %.0365 to i64
  %i.tn = add nuw nsw i64 %i.th, %i.tm            ; 2 uses
  %.not430 = icmp samesign ule i64 %i.tn, %invariant.op
  %i.to = or i64 %i.tn, %.us-phi800
  %i.tp = icmp ne i64 %i.to, 0
  %or.cond444 = and i1 %.not430, %i.tp
  br i1 %or.cond444, label %bb.df, label %lzma_4862e0.exit.thread

bb.df:                                            ; preds = %bb.db, %bb.de
  %.not431 = icmp eq i32 %.us-phi799, %.0365
  %.not432 = icmp ugt i32 %i.td, %2
  %or.cond445 = or i1 %.not431, %.not432
  br i1 %or.cond445, label %lzma_4862e0.exit.thread, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.tq = zext i32 %i.tc to i64                   ; 3 uses
  %i.tr = zext i32 %.0365 to i64                  ; 3 uses
  %i.ts = sub nsw i64 %i.bu, %i.tr
  %i.tt = add nsw i64 %i.ts, %i.tq                ; 2 uses
  %.not434 = icmp sgt i64 %i.tt, %invariant.op
  %i.tu = icmp sle i64 %i.tt, %invariant.op914
  %or.cond446.not918 = or i1 %.not434, %i.tu
  %or.cond = select i1 %or.cond446.not918, i1 true, i1 %.not436.not
  br i1 %or.cond, label %lzma_4862e0.exit.thread, label %.preheader613.preheader

.preheader613.preheader:                          ; preds = %bb.dg
  %i.tv = add i32 %.0365, 1
  %i.tw = call i32 @llvm.umax.i32(i32 %.us-phi799, i32 %i.tv)
  %i.tx = xor i32 %.0365, -1
  %i.ty = add i32 %i.tw, %i.tx
  %i.tz = add i32 %.0363, 1
  %i.ua = call i32 @llvm.umin.i32(i32 %i.ty, i32 %i.tz)
  %i.ub = add i32 %i.ua, 1                        ; 3 uses
  %min.iters.check = icmp ult i32 %i.ub, 24
  br i1 %min.iters.check, label %.preheader613.preheader1282, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.preheader613.preheader
  %i.uc = add i32 %.0365, 1
  %umax = call i32 @llvm.umax.i32(i32 %.us-phi799, i32 %i.uc)
  %i.ud = xor i32 %.0365, -1
  %i.ue = add i32 %umax, %i.ud
  %i.uf = add i32 %.0363, 1
  %umin = call i32 @llvm.umin.i32(i32 %i.ue, i32 %i.uf) ; 2 uses
  %i.ug = xor i32 %.0365, -1
  %i.uh = icmp ugt i32 %umin, %i.ug
  %i.ui = xor i32 %i.tc, -1
  %i.uj = icmp ugt i32 %umin, %i.ui
  %i.uk = or i1 %i.uh, %i.uj
  br i1 %i.uk, label %.preheader613.preheader1282, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %scevgep = getelementptr i8, ptr %.us-phi801, i64 %i.tr ; 2 uses
  %i.ul = add i32 %.0365, 1
  %umax1247 = call i32 @llvm.umax.i32(i32 %.us-phi799, i32 %i.ul)
  %i.um = xor i32 %.0365, -1
  %i.un = add i32 %umax1247, %i.um
  %i.uo = add i32 %.0363, 1
  %i.up = call i32 @llvm.umin.i32(i32 %i.un, i32 %i.uo)
  %umin1248 = zext i32 %i.up to i64               ; 2 uses
  %i.uq = getelementptr i8, ptr %scevgep1246, i64 %umin1248
  %scevgep1249 = getelementptr i8, ptr %i.uq, i64 %i.tr ; 2 uses
  %scevgep1251 = getelementptr i8, ptr %.us-phi801, i64 %i.tq ; 2 uses
  %i.ur = getelementptr i8, ptr %scevgep1252, i64 %umin1248
  %scevgep1253 = getelementptr i8, ptr %i.ur, i64 %i.tq ; 2 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep1250
  %bound1 = icmp ult ptr %i.b, %scevgep1249
  %found.conflict = and i1 %bound0, %bound1
  %bound01254 = icmp ult ptr %scevgep, %scevgep1253
  %bound11255 = icmp ult ptr %scevgep1251, %scevgep1249
  %found.conflict1256 = and i1 %bound01254, %bound11255
  %conflict.rdx = or i1 %found.conflict, %found.conflict1256
  %bound01257 = icmp ult ptr %i.b, %scevgep1253
  %bound11258 = icmp ult ptr %scevgep1251, %scevgep1250
  %found.conflict1259 = and i1 %bound01257, %bound11258
  %conflict.rdx1260 = or i1 %conflict.rdx, %found.conflict1259
  br i1 %conflict.rdx1260, label %.preheader613.preheader1282, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i32 %i.ub, -8                      ; 5 uses
  %i.us = add i32 %.0365, %n.vec                  ; 2 uses
  %i.ut = add i32 %i.tc, %n.vec
  %i.uu = sub i32 %i.tb, %n.vec
  %i.uv = add i32 %.0365, 3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.uw = phi i32 [ %i.uv, %vector.ph ], [ %i.vf, %vector.body ] ; 2 uses
  %i.ux = add i32 %.0365, %index
  %i.uy = add i32 %i.tc, %index
  %i.uz = zext i32 %i.uy to i64
  %i.va = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.uz ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 4
  %wide.load = load <4 x i8>, ptr %i.va, align 1, !tbaa !16, !alias.scope !32
  %wide.load1261 = load <4 x i8>, ptr %i.vb, align 1, !tbaa !16, !alias.scope !32 ; 2 uses
  %i.vc = zext i32 %i.ux to i64
  %i.vd = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.vc ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 4
  store <4 x i8> %wide.load, ptr %i.vd, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  store <4 x i8> %wide.load1261, ptr %i.ve, align 1, !tbaa !16, !alias.scope !33, !noalias !34
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.vf = add i32 %i.uw, 8
  %i.vg = icmp eq i32 %index.next, %n.vec
  br i1 %i.vg, label %middle.block, label %vector.body, !llvm.loop !25

middle.block:                                     ; preds = %vector.body
  %i.vh = add i32 %i.uw, 5
  store i32 %i.vh, ptr %i.b, align 4, !tbaa !8, !alias.scope !37, !noalias !32
  %i.vi = extractelement <4 x i8> %wide.load1261, i64 3
  %cmp.n = icmp eq i32 %i.ub, %n.vec
  br i1 %cmp.n, label %.loopexit614, label %.preheader613.preheader1282

.preheader613.preheader1282:                      ; preds = %vector.memcheck, %vector.scevcheck, %.preheader613.preheader, %middle.block
  %.ph1283 = phi i32 [ %.0365, %vector.memcheck ], [ %.0365, %vector.scevcheck ], [ %.0365, %.preheader613.preheader ], [ %i.us, %middle.block ]
  %.ph1284 = phi i32 [ %i.tc, %vector.memcheck ], [ %i.tc, %vector.scevcheck ], [ %i.tc, %.preheader613.preheader ], [ %i.ut, %middle.block ]
  %.1364.ph = phi i32 [ %i.tb, %vector.memcheck ], [ %i.tb, %vector.scevcheck ], [ %i.tb, %.preheader613.preheader ], [ %i.uu, %middle.block ]
  br label %.preheader613

.preheader613:                                    ; preds = %.preheader613.preheader1282, %.preheader613
  %i.vj = phi i32 [ %i.vq, %.preheader613 ], [ %.ph1283, %.preheader613.preheader1282 ] ; 2 uses
  %i.vk = phi i32 [ %i.vr, %.preheader613 ], [ %.ph1284, %.preheader613.preheader1282 ] ; 2 uses
  %.1364 = phi i32 [ %i.vs, %.preheader613 ], [ %.1364.ph, %.preheader613.preheader1282 ]
  %i.vl = zext i32 %i.vk to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.vl
  %i.vn = load i8, ptr %i.vm, align 1, !tbaa !16  ; 2 uses
  %i.vo = zext i32 %i.vj to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.vo
  store i8 %i.vn, ptr %i.vp, align 1, !tbaa !16
  %i.vq = add i32 %i.vj, 1                        ; 4 uses
  store i32 %i.vq, ptr %i.b, align 4, !tbaa !8
  %i.vr = add i32 %i.vk, 1
  %i.vs = add i32 %.1364, -1                      ; 2 uses
  %i.vt = icmp ne i32 %i.vs, 0
  %i.vu = icmp ult i32 %i.vq, %.us-phi799
  %or.cond449 = and i1 %i.vt, %i.vu
  br i1 %or.cond449, label %.preheader613, label %.loopexit614, !llvm.loop !26

bb.dh:                                            ; preds = %lzma_486248.exit
  %i.vv = lshr i8 %.0333, 4
  %narrow = mul nuw nsw i8 %i.vv, 3
  %i.vw = zext nneg i8 %narrow to i64
  %i.vx = shl nuw nsw i64 %i.vw, 9
  %narrow607 = add nuw nsw i64 %i.vx, 3692        ; 5 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.h, i64 %narrow607 ; 6 uses
  store ptr %i.vy, ptr %i.c, align 8, !tbaa !17
  %i.vz = icmp ugt i32 %.0315, 3
  br i1 %i.vz, label %bb.di, label %bb.dl

bb.di:                                            ; preds = %bb.dh
  %i.wa = icmp ugt i32 %.0315, 9
  br i1 %i.wa, label %bb.dj, label %bb.dk

bb.dj:                                            ; preds = %bb.di
  %i.wb = add i32 %.0315, -6
  br label %bb.dl

bb.dk:                                            ; preds = %bb.di
  %i.wc = add nsw i32 %.0315, -3
  br label %bb.dl

bb.dl:                                            ; preds = %bb.dh, %bb.dj, %bb.dk
  %.2317 = phi i32 [ %i.wb, %bb.dj ], [ %i.wc, %bb.dk ], [ 0, %bb.dh ]
  %i.wd = icmp eq i32 %.0347, 0
  br i1 %i.wd, label %bb.dm, label %bb.du

bb.dm:                                            ; preds = %bb.dl
  store i32 1, ptr %i.a, align 4, !tbaa !8
  %.reass1197 = add nuw nsw i64 %narrow607, %invariant.op1196
  %.not87.not.i534902 = icmp samesign ugt i64 %.reass1197, %i.j
  br i1 %.not87.not.i534902, label %lzma_4862e0.exit.thread, label %.lr.ph904.preheader

.lr.ph904.preheader:                              ; preds = %bb.dm
  %i.we = getelementptr inbounds nuw i8, ptr %i.vy, i64 2
  %invariant.op1195.reass = add nuw nsw i64 %narrow607, %invariant.op1198
  br label %.lr.ph904

bb.dn:                                            ; preds = %bb.dt
  %i.wf = shl nuw nsw i32 %.0.i542, 1             ; 2 uses
  %i.wg = zext nneg i32 %i.wf to i64              ; 2 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.wg
  %.reass = add nuw nsw i64 %invariant.op1195.reass, %i.wg
  %.not87.not.i534 = icmp samesign ugt i64 %.reass, %i.j
  br i1 %.not87.not.i534, label %lzma_4862e0.exit.thread, label %.lr.ph904, !llvm.loop !27

.lr.ph904:                                        ; preds = %.lr.ph904.preheader, %bb.dn
  %i.wi = phi i32 [ %i.xk, %bb.dn ], [ %i.dd, %.lr.ph904.preheader ] ; 3 uses
  %i.wj = phi i32 [ %i.xl, %bb.dn ], [ %i.de, %.lr.ph904.preheader ] ; 2 uses
  %i.wk = phi ptr [ %i.xm, %bb.dn ], [ %i.df, %.lr.ph904.preheader ] ; 4 uses
  %i.wl = phi ptr [ %i.wh, %bb.dn ], [ %i.we, %.lr.ph904.preheader ] ; 3 uses
  %i.wm = phi i32 [ %i.wf, %bb.dn ], [ 2, %.lr.ph904.preheader ] ; 2 uses
  %.not88.i535 = icmp uge ptr %i.wk, %0
  %i.wn = getelementptr inbounds nuw i8, ptr %i.wk, i64 1 ; 4 uses
  %.not89.i536 = icmp ule ptr %i.wn, %i.m
  %or.cond91.i537 = select i1 %.not88.i535, i1 %.not89.i536, i1 false
  br i1 %or.cond91.i537, label %bb.do, label %lzma_4862e0.exit.thread

bb.do:                                            ; preds = %.lr.ph904
  %i.wo = lshr i32 %i.wj, 11
  %.val.i539 = load i32, ptr %i.wl, align 1       ; 4 uses
  %i.wp = and i32 %.val.i539, 65535               ; 3 uses
  %i.wq = mul i32 %i.wp, %i.wo                    ; 4 uses
  %i.wr = icmp ult i32 %i.wi, %i.wq
  br i1 %i.wr, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.ws = sub nsw i32 2048, %i.wp
  %i.wt = lshr i32 %i.ws, 5
  %i.wu = add i32 %i.wt, %.val.i539
  br label %bb.dr

bb.dq:                                            ; preds = %bb.do
  %i.wv = sub i32 %i.wj, %i.wq
  %i.ww = sub nuw i32 %i.wi, %i.wq                ; 2 uses
  store i32 %i.ww, ptr %i.k, align 4, !tbaa !12
  %i.wx = lshr i32 %i.wp, 5
  %i.wy = sub i32 %.val.i539, %i.wx
  %i.wz = or disjoint i32 %i.wm, 1
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %i.xa = phi i32 [ %i.ww, %bb.dq ], [ %i.wi, %bb.dp ] ; 2 uses
  %.sink100.i540 = phi i32 [ %i.wy, %bb.dq ], [ %i.wu, %bb.dp ]
  %.sink.i541 = phi i32 [ %i.wv, %bb.dq ], [ %i.wq, %bb.dp ] ; 4 uses
  %.0.i542 = phi i32 [ %i.wz, %bb.dq ], [ %i.wm, %bb.dp ] ; 3 uses
  %i.xb = and i32 %.val.i539, -65536
  %i.xc = and i32 %.sink100.i540, 65535
  %i.xd = or disjoint i32 %i.xc, %i.xb
  store i32 %.sink.i541, ptr %i.l, align 8, !tbaa !13
  store i32 %i.xd, ptr %i.wl, align 1
  %i.xe = icmp ult i32 %.sink.i541, 16777216
  br i1 %i.xe, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xf = load i8, ptr %i.wk, align 1, !tbaa !16
  %i.xg = zext i8 %i.xf to i32
  %i.xh = shl i32 %i.xa, 8
  %i.xi = or disjoint i32 %i.xh, %i.xg            ; 2 uses
  %i.xj = shl nuw i32 %.sink.i541, 8              ; 2 uses
  store i32 %i.xi, ptr %i.k, align 4, !tbaa !12
  store i32 %i.xj, ptr %i.l, align 8, !tbaa !13
  store ptr %i.wn, ptr %5, align 8, !tbaa !14
  br label %bb.dt

bb.dt:                                            ; preds = %bb.ds, %bb.dr
  %i.xk = phi i32 [ %i.xi, %bb.ds ], [ %i.xa, %bb.dr ]
  %i.xl = phi i32 [ %i.xj, %bb.ds ], [ %.sink.i541, %bb.dr ]
  %i.xm = phi ptr [ %i.wn, %bb.ds ], [ %i.wk, %bb.dr ]
  %i.xn = phi ptr [ %i.wn, %bb.ds ], [ %i.wl, %bb.dr ]
  %i.xo = icmp ult i32 %.0.i542, 256
  br i1 %i.xo, label %bb.dn, label %.loopexit

bb.du:                                            ; preds = %bb.dl
  %i.xp = sub i32 %.0365, %.0307                  ; 2 uses
  %i.xq = zext i32 %i.xp to i64                   ; 2 uses
  %i.xr = add nuw nsw i64 %.us-phi800, %i.xq
  %.not410.not = icmp samesign ult i64 %i.xr, %i.j
  br i1 %.not410.not, label %bb.dv, label %lzma_4862e0.exit.thread

bb.dv:                                            ; preds = %bb.du
  %i.xs = getelementptr inbounds nuw i8, ptr %.us-phi801, i64 %i.xq
  %i.xt = load i8, ptr %i.xs, align 1, !tbaa !16  ; 3 uses
  %i.xu = zext i8 %i.xt to i32
  %i.xv = and i32 %i.xp, -256
  %i.xw = or disjoint i32 %i.xv, %i.xu
  store i32 %i.xw, ptr %i.a, align 4, !tbaa !8
  %i.xx = lshr i8 %i.xt, 7
  %i.xy = zext nneg i8 %i.xx to i32               ; 2 uses
  %i.xz = shl nuw nsw i32 %i.xy, 9
  %i.ya = zext nneg i32 %i.xz to i64              ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.vy, i64 %i.ya
  %i.yc = getelementptr inbounds nuw i8, ptr %i.yb, i64 514 ; 3 uses
  store ptr %i.yc, ptr %i.c, align 8, !tbaa !17
  %i.yd = add nuw nsw i64 %i.v, %narrow607
  %i.ye = add nuw nsw i64 %i.yd, %i.ya
  %.not87.not.i.i545 = icmp samesign ugt i64 %i.ye, %i.j
  br i1 %.not87.not.i.i545, label %lzma_4862e0.exit.thread, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %.not88.i.i546 = icmp uge ptr %i.df, %0
  %i.yf = getelementptr inbounds nuw i8, ptr %i.df, i64 1 ; 4 uses
  %.not89.i.i547 = icmp ule ptr %i.yf, %i.m
  %or.cond91.i.i548 = select i1 %.not88.i.i546, i1 %.not89.i.i547, i1 false
  br i1 %or.cond91.i.i548, label %bb.dx, label %lzma_4862e0.exit.thread

bb.dx:                                            ; preds = %bb.dw
  %i.yg = lshr i32 %i.de, 11
  %.val.i.i549 = load i32, ptr %i.yc, align 1     ; 4 uses
  %i.yh = and i32 %.val.i.i549, 65535             ; 3 uses
  %i.yi = mul i32 %i.yh, %i.yg                    ; 4 uses
  %i.yj = icmp ult i32 %i.dd, %i.yi
  br i1 %i.yj, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.yk = sub nsw i32 2048, %i.yh
  %i.yl = lshr i32 %i.yk, 5
  %i.ym = add i32 %i.yl, %.val.i.i549
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx
  %i.yn = sub i32 %i.de, %i.yi
  %i.yo = sub nuw i32 %i.dd, %i.yi                ; 2 uses
  store i32 %i.yo, ptr %i.k, align 4, !tbaa !12
  %i.yp = lshr i32 %i.yh, 5
  %i.yq = sub i32 %.val.i.i549, %i.yp
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dz, %bb.dy
  %i.yr = phi i32 [ %i.yo, %bb.dz ], [ %i.dd, %bb.dy ] ; 2 uses
  %.sink100.i.i550 = phi i32 [ %i.yq, %bb.dz ], [ %i.ym, %bb.dy ]
  %.sink.i.i551 = phi i32 [ %i.yn, %bb.dz ], [ %i.yi, %bb.dy ] ; 4 uses
  %.0.i.i552 = phi i32 [ 1, %bb.dz ], [ 0, %bb.dy ] ; 2 uses
  %i.ys = and i32 %.val.i.i549, -65536
  %i.yt = and i32 %.sink100.i.i550, 65535
  %i.yu = or disjoint i32 %i.yt, %i.ys
  store i32 %.sink.i.i551, ptr %i.l, align 8, !tbaa !13
  store i32 %i.yu, ptr %i.yc, align 1
  %i.yv = icmp ult i32 %.sink.i.i551, 16777216
  br i1 %i.yv, label %bb.eb, label %lzma_486248.exit.i553

bb.eb:                                            ; preds = %bb.ea
  %i.yw = load i8, ptr %i.df, align 1, !tbaa !16
  %i.yx = zext i8 %i.yw to i32
  %i.yy = shl i32 %i.yr, 8
  %i.yz = or disjoint i32 %i.yy, %i.yx            ; 2 uses
  store ptr %i.yf, ptr %i.c, align 8, !tbaa !17
  %i.za = shl nuw i32 %.sink.i.i551, 8            ; 2 uses
  store i32 %i.yz, ptr %i.k, align 4, !tbaa !12
  store i32 %i.za, ptr %i.l, align 8, !tbaa !13
  store ptr %i.yf, ptr %5, align 8, !tbaa !14
  br label %lzma_486248.exit.i553

lzma_486248.exit.i553:                            ; preds = %bb.eb, %bb.ea
  %.promoted870 = phi i32 [ %i.yz, %bb.eb ], [ %i.yr, %bb.ea ] ; 2 uses
  %.promoted866 = phi ptr [ %i.yf, %bb.eb ], [ %i.df, %bb.ea ] ; 2 uses
  %.promoted875 = phi i32 [ %i.za, %bb.eb ], [ %.sink.i.i551, %bb.ea ] ; 2 uses
end_hunk_0
