Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sqlite/original/sqlite3?download=true
inline.NumInlined: 10208
inline.NumDeleted: 1300
loop-unroll.NumCompletelyUnrolled: 273
loop-unroll.NumRuntimeUnrolled: 90
loop-unroll.NumUnrolled: 367
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@wherePathSolver:bb.a

bb.an:                                            ; preds = %bb.am
  %i.fp = add nsw i32 %i.fm, 31
  %i.fq = icmp slt i32 %i.fp, %i.fl
  br i1 %i.fq, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fr = add i16 %i.fk, 1
  br label %sqlite3LogEstAdd.exit

bb.ap:                                            ; preds = %bb.an
  %i.fs = sub nsw i32 %i.fl, %i.fm
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !231
  %i.fw = zext i8 %i.fv to i16
  %i.fx = add i16 %i.fk, %i.fw
  br label %sqlite3LogEstAdd.exit

bb.aq:                                            ; preds = %bb.al
  %i.fy = add nsw i32 %i.fl, 49
  %i.fz = icmp slt i32 %i.fy, %i.fm
  br i1 %i.fz, label %sqlite3LogEstAdd.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ga = add nsw i32 %i.fl, 31
  %i.gb = icmp slt i32 %i.ga, %i.fm
  br i1 %i.gb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.gc = add i16 %i.fi, 1
  br label %sqlite3LogEstAdd.exit

bb.at:                                            ; preds = %bb.ar
  %i.gd = sub nsw i32 %i.fm, %i.fl
  %i.ge = sext i32 %i.gd to i64
  %i.gf = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !231
  %i.gh = zext i8 %i.gg to i16
  %i.gi = add i16 %i.fi, %i.gh
  br label %sqlite3LogEstAdd.exit

sqlite3LogEstAdd.exit:                            ; preds = %bb.at, %bb.as, %bb.aq, %bb.ap, %bb.ao, %bb.am, %bb.ak
  %.0271 = phi i16 [ %i.fi, %bb.ak ], [ %i.gi, %bb.at ], [ %i.fr, %bb.ao ], [ %i.fx, %bb.ap ], [ %i.fk, %bb.am ], [ %i.gc, %bb.as ], [ %i.fi, %bb.aq ] ; 5 uses
  %i.gj = load i16, ptr %i.er, align 4, !tbaa !4443 ; 5 uses
  %i.gk = sext i16 %.0271 to i32                  ; 6 uses
  %i.gl = sext i16 %i.gj to i32                   ; 6 uses
  %.not.i359 = icmp slt i16 %.0271, %i.gj
  br i1 %.not.i359, label %bb.ay, label %bb.au

bb.au:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gm = add nsw i32 %i.gl, 49
  %i.gn = icmp slt i32 %i.gm, %i.gk
  br i1 %i.gn, label %sqlite3LogEstAdd.exit361, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.go = add nsw i32 %i.gl, 31
  %i.gp = icmp slt i32 %i.go, %i.gk
  br i1 %i.gp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.gq = add i16 %.0271, 1
  br label %sqlite3LogEstAdd.exit361

bb.ax:                                            ; preds = %bb.av
  %i.gr = sub nsw i32 %i.gk, %i.gl
  %i.gs = sext i32 %i.gr to i64
  %i.gt = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.gs
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !231
  %i.gv = zext i8 %i.gu to i16
  %i.gw = add i16 %.0271, %i.gv
  br label %sqlite3LogEstAdd.exit361

bb.ay:                                            ; preds = %sqlite3LogEstAdd.exit
  %i.gx = add nsw i32 %i.gk, 49
  %i.gy = icmp slt i32 %i.gx, %i.gl
  br i1 %i.gy, label %sqlite3LogEstAdd.exit361, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gz = add nsw i32 %i.gk, 31
  %i.ha = icmp slt i32 %i.gz, %i.gl
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.hb = add i16 %i.gj, 1
  br label %sqlite3LogEstAdd.exit361

bb.bb:                                            ; preds = %bb.az
  %i.hc = sub nsw i32 %i.gl, %i.gk
  %i.hd = sext i32 %i.hc to i64
  %i.he = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !231
  %i.hg = zext i8 %i.hf to i16
  %i.hh = add i16 %i.gj, %i.hg
  br label %sqlite3LogEstAdd.exit361

sqlite3LogEstAdd.exit361:                         ; preds = %bb.au, %bb.aw, %bb.ax, %bb.ay, %bb.ba, %bb.bb
  %.0.i360 = phi i16 [ %i.hh, %bb.bb ], [ %i.gq, %bb.aw ], [ %i.gw, %bb.ax ], [ %.0271, %bb.au ], [ %i.hb, %bb.ba ], [ %i.gj, %bb.ay ] ; 8 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %.0275421, i64 22
  %i.hj = load i16, ptr %i.hi, align 2, !tbaa !4261
  %i.hk = add i16 %i.hj, %.pre                    ; 3 uses
  %i.hl = or i64 %i.fa, %i.ew
  %i.hm = load i8, ptr %i.es, align 2, !tbaa !4439 ; 2 uses
  %i.hn = icmp slt i8 %i.hm, 0
  br i1 %i.hn, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %sqlite3LogEstAdd.exit361
  store i64 0, ptr %i.a, align 8, !tbaa !21
  %i.ho = load ptr, ptr %i.cp, align 8, !tbaa !3440
  %i.hp = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.hq = call fastcc signext i8 @wherePathSatisfiesOrderBy(ptr noundef nonnull %0, ptr noundef %i.ho, ptr noundef %.1279434, i16 noundef zeroext %i.hp, i16 noundef zeroext %i.ei, ptr noundef nonnull %.0275421, ptr noundef %i.a)
  br label %bb.be

bb.bd:                                            ; preds = %sqlite3LogEstAdd.exit361
  %i.hr = load i64, ptr %i.et, align 8, !tbaa !4444
  store i64 %i.hr, ptr %i.a, align 8, !tbaa !21
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.0270 = phi i8 [ %i.hq, %bb.bc ], [ %i.hm, %bb.bd ] ; 6 uses
  %i.hs = sext i8 %.0270 to i32                   ; 2 uses
  %i.ht = icmp sgt i8 %.0270, -1
  %i.hu = icmp sgt i32 %.0298, %i.hs
  %or.cond350 = and i1 %i.ht, %i.hu
  br i1 %or.cond350, label %bb.bf, label %bb.bx

bb.bf:                                            ; preds = %bb.be
  %i.hv = zext nneg i8 %.0270 to i64
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr %.0273371, i64 %i.hv ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2, !tbaa !338 ; 2 uses
  %i.hy = icmp eq i16 %i.hx, 0
  br i1 %i.hy, label %bb.bg, label %bb.bo

bb.bg:                                            ; preds = %bb.bf
  %i.hz = load ptr, ptr %i.dz, align 8, !tbaa !3828
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 24
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !2764
  %i.ic = load i32, ptr %i.ib, align 8, !tbaa !27
  %i.id = add nsw i32 %i.ic, 59
  %i.ie = sdiv i32 %i.id, 30                      ; 4 uses
  %i.if = sext i32 %i.ie to i64                   ; 3 uses
  %i.ig = icmp ult i32 %i.ie, 8
  br i1 %i.ig, label %bb.bh, label %.preheader23.i.i

.preheader23.i.i:                                 ; preds = %bb.bg
  %i.ih = icmp ugt i32 %i.ie, 255
  br i1 %i.ih, label %.lr.ph.i.i, label %.preheader21.i.i

bb.bh:                                            ; preds = %bb.bg
  %i.ii = icmp samesign ult i32 %i.ie, 2
  br i1 %i.ii, label %sqlite3LogEst.exit.i, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %bb.bh, %.lr.ph34.i.i
  %.033.i.i = phi i16 [ %i.ij, %.lr.ph34.i.i ], [ 40, %bb.bh ]
  %.01432.i.i = phi i64 [ %i.ik, %.lr.ph34.i.i ], [ %i.if, %bb.bh ] ; 2 uses
  %i.ij = add i16 %.033.i.i, -10                  ; 2 uses
  %i.ik = shl nuw nsw i64 %.01432.i.i, 1          ; 2 uses
  %i.il = icmp ult i64 %.01432.i.i, 4
  br i1 %i.il, label %.lr.ph34.i.i, label %.loopexit.i.i, !llvm.loop !1363

.preheader21.i.i:                                 ; preds = %.lr.ph.i.i, %.preheader23.i.i
  %.115.lcssa.i.i = phi i64 [ %i.if, %.preheader23.i.i ], [ %i.io, %.lr.ph.i.i ] ; 3 uses
  %.1.lcssa.i.i = phi i16 [ 40, %.preheader23.i.i ], [ %i.in, %.lr.ph.i.i ] ; 2 uses
  %i.im = icmp samesign ugt i64 %.115.lcssa.i.i, 15
  br i1 %i.im, label %.lr.ph29.i.i, label %.loopexit.i.i

.lr.ph.i.i:                                       ; preds = %.preheader23.i.i, %.lr.ph.i.i
  %.125.i.i = phi i16 [ %i.in, %.lr.ph.i.i ], [ 40, %.preheader23.i.i ]
  %.11524.i.i = phi i64 [ %i.io, %.lr.ph.i.i ], [ %i.if, %.preheader23.i.i ] ; 2 uses
  %i.in = add nuw nsw i16 %.125.i.i, 40           ; 2 uses
  %i.io = lshr i64 %.11524.i.i, 4                 ; 2 uses
  %i.ip = icmp ugt i64 %.11524.i.i, 4095
  br i1 %i.ip, label %.lr.ph.i.i, label %.preheader21.i.i, !llvm.loop !1364

.lr.ph29.i.i:                                     ; preds = %.preheader21.i.i, %.lr.ph29.i.i
  %.228.i.i = phi i16 [ %i.iq, %.lr.ph29.i.i ], [ %.1.lcssa.i.i, %.preheader21.i.i ]
  %.21627.i.i = phi i64 [ %i.ir, %.lr.ph29.i.i ], [ %.115.lcssa.i.i, %.preheader21.i.i ] ; 2 uses
  %i.iq = add nuw nsw i16 %.228.i.i, 10           ; 2 uses
  %i.ir = lshr i64 %.21627.i.i, 1                 ; 2 uses
  %i.is = icmp samesign ugt i64 %.21627.i.i, 31
  br i1 %i.is, label %.lr.ph29.i.i, label %.loopexit.i.i, !llvm.loop !1365

.loopexit.i.i:                                    ; preds = %.lr.ph29.i.i, %.lr.ph34.i.i, %.preheader21.i.i
  %.317.i.i = phi i64 [ %.115.lcssa.i.i, %.preheader21.i.i ], [ %i.ik, %.lr.ph34.i.i ], [ %i.ir, %.lr.ph29.i.i ]
  %.3.i.i = phi i16 [ %.1.lcssa.i.i, %.preheader21.i.i ], [ %i.ij, %.lr.ph34.i.i ], [ %i.iq, %.lr.ph29.i.i ]
  %i.it = and i64 %.317.i.i, 7
  %i.iu = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.it
  %i.iv = load i16, ptr %i.iu, align 2, !tbaa !338
  %i.iw = add i16 %.3.i.i, -10
  %i.ix = add i16 %i.iw, %i.iv
  br label %sqlite3LogEst.exit.i

sqlite3LogEst.exit.i:                             ; preds = %.loopexit.i.i, %bb.bh
  %.018.i.i = phi i16 [ %i.ix, %.loopexit.i.i ], [ 0, %bb.bh ]
  %i.iy = add i16 %.018.i.i, %1                   ; 2 uses
  %.not.i362 = icmp eq i8 %.0270, 0               ; 2 uses
  br i1 %.not.i362, label %bb.bk, label %bb.bi

bb.bi:                                            ; preds = %sqlite3LogEst.exit.i
  %i.iz = sub nuw nsw i32 %.0298, %i.hs
  %i.ja = mul nuw nsw i32 %i.iz, 100
  %i.jb = sdiv i32 %i.ja, %.0298                  ; 4 uses
  %i.jc = sext i32 %i.jb to i64                   ; 3 uses
  %i.jd = icmp ult i32 %i.jb, 8
  br i1 %i.jd, label %bb.bj, label %.preheader23.i29.i

.preheader23.i29.i:                               ; preds = %bb.bi
  %i.je = icmp ugt i32 %i.jb, 255
  br i1 %i.je, label %.lr.ph.i40.i, label %.preheader21.i30.i

bb.bj:                                            ; preds = %bb.bi
  %i.jf = icmp samesign ult i32 %i.jb, 2
  br i1 %i.jf, label %sqlite3LogEst.exit46.i, label %.lr.ph34.i43.i

.lr.ph34.i43.i:                                   ; preds = %bb.bj, %.lr.ph34.i43.i
  %.033.i44.i = phi i16 [ %i.jg, %.lr.ph34.i43.i ], [ 40, %bb.bj ]
  %.01432.i45.i = phi i64 [ %i.jh, %.lr.ph34.i43.i ], [ %i.jc, %bb.bj ] ; 2 uses
  %i.jg = add i16 %.033.i44.i, -10                ; 2 uses
  %i.jh = shl nuw nsw i64 %.01432.i45.i, 1        ; 2 uses
  %i.ji = icmp ult i64 %.01432.i45.i, 4
  br i1 %i.ji, label %.lr.ph34.i43.i, label %.loopexit.i33.i, !llvm.loop !1363

.preheader21.i30.i:                               ; preds = %.lr.ph.i40.i, %.preheader23.i29.i
  %.115.lcssa.i31.i = phi i64 [ %i.jc, %.preheader23.i29.i ], [ %i.jl, %.lr.ph.i40.i ] ; 3 uses
  %.1.lcssa.i32.i = phi i16 [ 40, %.preheader23.i29.i ], [ %i.jk, %.lr.ph.i40.i ] ; 2 uses
  %i.jj = icmp samesign ugt i64 %.115.lcssa.i31.i, 15
  br i1 %i.jj, label %.lr.ph29.i37.i, label %.loopexit.i33.i

.lr.ph.i40.i:                                     ; preds = %.preheader23.i29.i, %.lr.ph.i40.i
  %.125.i41.i = phi i16 [ %i.jk, %.lr.ph.i40.i ], [ 40, %.preheader23.i29.i ]
  %.11524.i42.i = phi i64 [ %i.jl, %.lr.ph.i40.i ], [ %i.jc, %.preheader23.i29.i ] ; 2 uses
  %i.jk = add nuw nsw i16 %.125.i41.i, 40         ; 2 uses
  %i.jl = lshr i64 %.11524.i42.i, 4               ; 2 uses
  %i.jm = icmp ugt i64 %.11524.i42.i, 4095
  br i1 %i.jm, label %.lr.ph.i40.i, label %.preheader21.i30.i, !llvm.loop !1364

.lr.ph29.i37.i:                                   ; preds = %.preheader21.i30.i, %.lr.ph29.i37.i
  %.228.i38.i = phi i16 [ %i.jn, %.lr.ph29.i37.i ], [ %.1.lcssa.i32.i, %.preheader21.i30.i ]
  %.21627.i39.i = phi i64 [ %i.jo, %.lr.ph29.i37.i ], [ %.115.lcssa.i31.i, %.preheader21.i30.i ] ; 2 uses
  %i.jn = add nuw nsw i16 %.228.i38.i, 10         ; 2 uses
  %i.jo = lshr i64 %.21627.i39.i, 1               ; 2 uses
  %i.jp = icmp samesign ugt i64 %.21627.i39.i, 31
  br i1 %i.jp, label %.lr.ph29.i37.i, label %.loopexit.i33.i, !llvm.loop !1365

.loopexit.i33.i:                                  ; preds = %.lr.ph29.i37.i, %.lr.ph34.i43.i, %.preheader21.i30.i
  %.317.i34.i = phi i64 [ %.115.lcssa.i31.i, %.preheader21.i30.i ], [ %i.jh, %.lr.ph34.i43.i ], [ %i.jo, %.lr.ph29.i37.i ]
  %.3.i35.i = phi i16 [ %.1.lcssa.i32.i, %.preheader21.i30.i ], [ %i.jg, %.lr.ph34.i43.i ], [ %i.jn, %.lr.ph29.i37.i ]
  %i.jq = and i64 %.317.i34.i, 7
  %i.jr = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.jq
  %i.js = load i16, ptr %i.jr, align 2, !tbaa !338
  %i.jt = add i16 %.3.i35.i, -76
  %i.ju = add i16 %i.jt, %i.js
  br label %sqlite3LogEst.exit46.i

sqlite3LogEst.exit46.i:                           ; preds = %.loopexit.i33.i, %bb.bj
  %.018.i36.i = phi i16 [ %i.ju, %.loopexit.i33.i ], [ -66, %bb.bj ]
  %i.jv = add i16 %.018.i36.i, %i.iy
  br label %bb.bk

bb.bk:                                            ; preds = %sqlite3LogEst.exit46.i, %sqlite3LogEst.exit.i
  %.0.i363 = phi i16 [ %i.jv, %sqlite3LogEst.exit46.i ], [ %i.iy, %sqlite3LogEst.exit.i ] ; 2 uses
  %i.jw = load i16, ptr %i.dy, align 4, !tbaa !338
  %i.jx = zext i16 %i.jw to i32                   ; 2 uses
  %i.jy = and i32 %i.jx, 16384
  %.not25.i = icmp eq i32 %i.jy, 0
  br i1 %.not25.i, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %spec.select.v.i = select i1 %.not.i362, i16 10, i16 16
  %spec.select.i364 = add i16 %.0.i363, %spec.select.v.i
  %i.jz = load i16, ptr %i.ea, align 2, !tbaa !338
  %spec.select28.i = tail call i16 @llvm.smin.i16(i16 %i.jz, i16 range(i16 0, -32767) %1)
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bk
  %i.ka = and i32 %i.jx, 256
  %i.kb = icmp ne i32 %i.ka, 0
  %or.cond.i365 = and i1 %i.eb, %i.kb
  %spec.select27.i = select i1 %or.cond.i365, i16 %i.ec, i16 %1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.022.i = phi i16 [ %spec.select27.i, %bb.bm ], [ %spec.select28.i, %bb.bl ] ; 4 uses
  %.2.i = phi i16 [ %.0.i363, %bb.bm ], [ %spec.select.i364, %bb.bl ]
  %i.kc = icmp slt i16 %.022.i, 11
  br i1 %i.kc, label %whereSortingCost.exit, label %.preheader23.i.i.i

.preheader23.i.i.i:                               ; preds = %bb.bn
  %i.kd = zext nneg i16 %.022.i to i64            ; 3 uses
  %i.ke = icmp samesign ugt i16 %.022.i, 255
  br i1 %i.ke, label %.lr.ph.i.i.i, label %.preheader21.i.i.i

.preheader21.i.i.i:                               ; preds = %.lr.ph.i.i.i, %.preheader23.i.i.i
  %.115.lcssa.i.i.i = phi i64 [ %i.kd, %.preheader23.i.i.i ], [ %.lcssa35, %.lr.ph.i.i.i ] ; 3 uses
  %.1.lcssa.i.i.i = phi i16 [ 40, %.preheader23.i.i.i ], [ %.lcssa36, %.lr.ph.i.i.i ] ; 2 uses
  %i.kf = icmp samesign ugt i64 %.115.lcssa.i.i.i, 15
  br i1 %i.kf, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader23.i.i.i
  %i.kg = lshr i64 %i.kd, 4
  %i.kh = icmp ugt i16 %.022.i, 4095              ; 2 uses
  %i.ki = lshr i64 %i.kd, 8
  %.lcssa36 = select i1 %i.kh, i16 120, i16 80
  %.lcssa35 = select i1 %i.kh, i64 %i.ki, i64 %i.kg
  br label %.preheader21.i.i.i

.lr.ph29.i.i.i:                                   ; preds = %.preheader21.i.i.i, %.lr.ph29.i.i.i
  %.228.i.i.i = phi i16 [ %i.kj, %.lr.ph29.i.i.i ], [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ]
  %.21627.i.i.i = phi i64 [ %i.kk, %.lr.ph29.i.i.i ], [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ] ; 2 uses
  %i.kj = add nuw nsw i16 %.228.i.i.i, 10         ; 2 uses
  %i.kk = lshr i64 %.21627.i.i.i, 1               ; 2 uses
  %i.kl = icmp samesign ugt i64 %.21627.i.i.i, 31
  br i1 %i.kl, label %.lr.ph29.i.i.i, label %sqlite3LogEst.exit.i.i, !llvm.loop !1365

sqlite3LogEst.exit.i.i:                           ; preds = %.lr.ph29.i.i.i, %.preheader21.i.i.i
  %.317.i.i.i = phi i64 [ %.115.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kk, %.lr.ph29.i.i.i ]
  %.3.i.i.i = phi i16 [ %.1.lcssa.i.i.i, %.preheader21.i.i.i ], [ %i.kj, %.lr.ph29.i.i.i ]
  %i.km = and i64 %.317.i.i.i, 7
  %i.kn = getelementptr inbounds nuw [2 x i8], ptr @sqlite3LogEst.a, i64 %i.km
  %i.ko = load i16, ptr %i.kn, align 2, !tbaa !338
  %i.kp = add i16 %.3.i.i.i, -43
  %i.kq = add i16 %i.kp, %i.ko
  br label %whereSortingCost.exit

whereSortingCost.exit:                            ; preds = %bb.bn, %sqlite3LogEst.exit.i.i
  %i.kr = phi i16 [ %i.kq, %sqlite3LogEst.exit.i.i ], [ 0, %bb.bn ]
  %i.ks = add i16 %i.kr, %.2.i                    ; 2 uses
  store i16 %i.ks, ptr %i.hw, align 2, !tbaa !338
  br label %bb.bo

bb.bo:                                            ; preds = %whereSortingCost.exit, %bb.bf
  %i.kt = phi i16 [ %i.ks, %whereSortingCost.exit ], [ %i.hx, %bb.bf ] ; 5 uses
  %i.ku = sext i16 %.0.i360 to i32                ; 6 uses
  %i.kv = sext i16 %i.kt to i32                   ; 6 uses
  %.not.i366 = icmp slt i16 %.0.i360, %i.kt
  br i1 %.not.i366, label %bb.bt, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kw = add nsw i32 %i.kv, 49
  %i.kx = icmp slt i32 %i.kw, %i.ku
  br i1 %i.kx, label %sqlite3LogEstAdd.exit368, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.ky = add nsw i32 %i.kv, 31
  %i.kz = icmp slt i32 %i.ky, %i.ku
  br i1 %i.kz, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %i.la = add i16 %.0.i360, 1
  br label %sqlite3LogEstAdd.exit368

bb.bs:                                            ; preds = %bb.bq
  %i.lb = sub nsw i32 %i.ku, %i.kv
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.lc
  %i.le = load i8, ptr %i.ld, align 1, !tbaa !231
  %i.lf = zext i8 %i.le to i16
  %i.lg = add i16 %.0.i360, %i.lf
  br label %sqlite3LogEstAdd.exit368

bb.bt:                                            ; preds = %bb.bo
  %i.lh = add nsw i32 %i.ku, 49
  %i.li = icmp slt i32 %i.lh, %i.kv
  br i1 %i.li, label %sqlite3LogEstAdd.exit368, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.lj = add nsw i32 %i.ku, 31
  %i.lk = icmp slt i32 %i.lj, %i.kv
  br i1 %i.lk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ll = add i16 %i.kt, 1
  br label %sqlite3LogEstAdd.exit368

bb.bw:                                            ; preds = %bb.bu
  %i.lm = sub nsw i32 %i.kv, %i.ku
  %i.ln = sext i32 %i.lm to i64
  %i.lo = getelementptr inbounds i8, ptr @sqlite3LogEstAdd.x, i64 %i.ln
  %i.lp = load i8, ptr %i.lo, align 1, !tbaa !231
  %i.lq = zext i8 %i.lp to i16
  %i.lr = add i16 %i.kt, %i.lq
  br label %sqlite3LogEstAdd.exit368

sqlite3LogEstAdd.exit368:                         ; preds = %bb.bp, %bb.br, %bb.bs, %bb.bt, %bb.bv, %bb.bw
  %.0.i367 = phi i16 [ %i.lr, %bb.bw ], [ %i.la, %bb.br ], [ %i.lg, %bb.bs ], [ %.0.i360, %bb.bp ], [ %i.ll, %bb.bv ], [ %i.kt, %bb.bt ]
  %i.ls = add i16 %.0.i367, 3
  br label %bb.by

bb.bx:                                            ; preds = %bb.be
  %i.lt = add i16 %.0.i360, -2
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %sqlite3LogEstAdd.exit368
  %.0272 = phi i16 [ %i.ls, %sqlite3LogEstAdd.exit368 ], [ %.0.i360, %bb.bx ] ; 5 uses
  %.1 = phi i16 [ %.0.i360, %sqlite3LogEstAdd.exit368 ], [ %i.lt, %bb.bx ] ; 4 uses
  %i.lu = icmp sgt i32 %.1284420, 0
  br i1 %i.lu, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.by, %bb.ca
  %.0276403 = phi ptr [ %i.mc, %bb.ca ], [ %.0280450, %bb.by ] ; 12 uses
  %.0306402 = phi i32 [ %i.mb, %bb.ca ], [ 0, %bb.by ]
end_hunk_0
