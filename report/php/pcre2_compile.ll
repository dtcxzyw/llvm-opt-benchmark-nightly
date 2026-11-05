Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/pcre2_compile?download=true
inline.NumInlined: 21
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_pcre2_check_escape_8:bb.a
bb.bv:                                            ; preds = %bb.bu
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !29  ; 2 uses
  %i.hh = add i8 %i.hg, -48
  %or.cond61.i = icmp ult i8 %i.hh, 10
  br i1 %or.cond61.i, label %.preheader.i.preheader, label %read_number.exit.thread

.preheader.i.preheader:                           ; preds = %bb.bv
  %i.hi = icmp ult ptr %i.hf, %1
  br i1 %i.hi, label %.lr.ph693, label %.preheader.i._crit_edge

.preheader.i:                                     ; preds = %bb.bw
  %i.hj = getelementptr inbounds nuw i8, ptr %.1.i692, i64 1 ; 3 uses
  %i.hk = icmp ult ptr %i.hj, %1
  br i1 %i.hk, label %.lr.ph693, label %.preheader.i._crit_edge, !llvm.loop !0

.lr.ph693:                                        ; preds = %.preheader.i.preheader, %.preheader.i
  %.1.i692 = phi ptr [ %i.hj, %.preheader.i ], [ %i.hf, %.preheader.i.preheader ] ; 3 uses
  %.044.i691 = phi i32 [ %i.hq, %.preheader.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %i.hl = load i8, ptr %.1.i692, align 1, !tbaa !29 ; 2 uses
  %i.hm = add i8 %i.hl, -48
  %or.cond62.i = icmp ult i8 %i.hm, 10
  br i1 %or.cond62.i, label %bb.bw, label %.preheader.i._crit_edge

bb.bw:                                            ; preds = %.lr.ph693
  %i.hn = zext nneg i8 %i.hl to i32
  %i.ho = mul nuw i32 %.044.i691, 10
  %i.hp = add i32 %i.ho, -48
  %i.hq = add i32 %i.hp, %i.hn                    ; 3 uses
  %i.hr = icmp ugt i32 %i.hq, 214748363
  br i1 %i.hr, label %read_number.exit.thread, label %.preheader.i, !llvm.loop !0

.preheader.i._crit_edge:                          ; preds = %.lr.ph693, %.preheader.i, %.preheader.i.preheader
  %.044.i.lcssa = phi i32 [ 0, %.preheader.i.preheader ], [ %.044.i691, %.lr.ph693 ], [ %i.hq, %.preheader.i ] ; 4 uses
  %.1.i.lcssa = phi ptr [ %i.hf, %.preheader.i.preheader ], [ %.1.i692, %.lr.ph693 ], [ %i.hj, %.preheader.i ]
  store ptr %.1.i.lcssa, ptr %i.b, align 8, !tbaa !27
  %i.hs = icmp samesign ult i32 %.044.i.lcssa, 10
  br i1 %i.hs, label %.thread416, label %bb.bx

bb.bx:                                            ; preds = %.preheader.i._crit_edge
  %i.ht = icmp ugt i8 %i.hg, 55
  br i1 %i.ht, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.hu = getelementptr inbounds nuw i8, ptr %7, i64 204
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !37
  %.not354 = icmp sgt i32 %.044.i.lcssa, %i.hv
  br i1 %.not354, label %read_number.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.hw = icmp samesign ugt i32 %.044.i.lcssa, 65535
  br i1 %i.hw, label %bb.ca, label %.thread416

bb.ca:                                            ; preds = %bb.bz
  store i32 161, ptr %3, align 4, !tbaa !28
  br label %bb.dt

.thread416:                                       ; preds = %.preheader.i._crit_edge, %bb.bz
  %i.hx = sub nsw i32 0, %.044.i.lcssa
  br label %bb.dt

read_number.exit.thread:                          ; preds = %bb.bw, %bb.bu, %bb.bv, %bb.by
  store ptr %i.ct, ptr %i.b, align 8, !tbaa !27
  br label %bb.cb

bb.cb:                                            ; preds = %read_number.exit.thread, %bb.bt
  %i.hy = icmp ugt i32 %.0273, 55
  br i1 %i.hy, label %bb.dt, label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ah
  %scevgep595 = getelementptr i8, ptr %i.ct, i64 2
  %i.hz = icmp ult ptr %i.ct, %1
  br i1 %i.hz, label %bb.cd, label %.critedge27

bb.cd:                                            ; preds = %bb.cc
  %i.ia = load i8, ptr %i.ct, align 1, !tbaa !29  ; 2 uses
  %i.ib = and i8 %i.ia, -8
  %or.cond388 = icmp eq i8 %i.ib, 48
  br i1 %or.cond388, label %bb.ce, label %.critedge27

bb.ce:                                            ; preds = %bb.cd
  %i.ic = shl nsw i32 %i.cv, 3
  %i.id = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 4 uses
  %i.ie = zext nneg i8 %i.ia to i32
  %i.if = add nsw i32 %i.ic, -48
  %i.ig = add nsw i32 %i.if, %i.ie                ; 3 uses
  %i.ih = icmp ult ptr %i.id, %1
  br i1 %i.ih, label %bb.cf, label %.critedge27

bb.cf:                                            ; preds = %bb.ce
  %i.ii = load i8, ptr %i.id, align 1, !tbaa !29  ; 2 uses
  %i.ij = and i8 %i.ii, -8
  %or.cond388.1 = icmp eq i8 %i.ij, 48
  br i1 %or.cond388.1, label %bb.cg, label %.critedge27

bb.cg:                                            ; preds = %bb.cf
  %i.ik = shl i32 %i.ig, 3
  %i.il = zext nneg i8 %i.ii to i32
  %i.im = add nsw i32 %i.ik, -48
  %i.in = add i32 %i.im, %i.il
  br label %.critedge27

.critedge27:                                      ; preds = %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.lcssa526 = phi ptr [ %i.ct, %bb.cd ], [ %i.ct, %bb.cc ], [ %scevgep595, %bb.cg ], [ %i.id, %bb.ce ], [ %i.id, %bb.cf ]
  %.4277.lcssa = phi i32 [ %i.cv, %bb.cd ], [ %i.cv, %bb.cc ], [ %i.in, %bb.cg ], [ %i.ig, %bb.ce ], [ %i.ig, %bb.cf ] ; 3 uses
  store ptr %.lcssa526, ptr %i.b, align 8
  %i.io = icmp ult i32 %.4277.lcssa, 256
  %or.cond29.not = select i1 %i.g, i1 true, i1 %i.io
  br i1 %or.cond29.not, label %bb.dt, label %bb.ch

bb.ch:                                            ; preds = %.critedge27
  store i32 151, ptr %3, align 4, !tbaa !28
  br label %bb.dt

bb.ci:                                            ; preds = %bb.ah
  %.not348 = icmp ult ptr %i.ct, %1
  br i1 %.not348, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 6 uses
  %i.iq = load i8, ptr %i.ct, align 1, !tbaa !29
  %.not349 = icmp eq i8 %i.iq, 123
  br i1 %.not349, label %.preheader425, label %bb.ck

.preheader425:                                    ; preds = %bb.cj
  %i.ir = icmp ult ptr %i.ip, %1
  br i1 %i.ir, label %.lr.ph498.preheader, label %.critedge31.loopexit

.lr.ph498.preheader:                              ; preds = %.preheader425
  %.promoted495584 = ptrtoaddr ptr %i.ip to i64
  %i.is = sub i64 %i.a, %.promoted495584
  %scevgep585 = getelementptr i8, ptr %i.ip, i64 %i.is
  br label %.lr.ph498

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.it = phi ptr [ %i.ip, %bb.cj ], [ %i.ct, %bb.ci ]
  %i.iu = getelementptr inbounds i8, ptr %i.it, i64 -1
  store ptr %i.iu, ptr %i.b, align 8, !tbaa !27
  store i32 155, ptr %3, align 4, !tbaa !28
  br label %bb.dt

.lr.ph498:                                        ; preds = %.lr.ph498.preheader, %.critedge33
  %.promoted500 = phi ptr [ %i.iw, %.critedge33 ], [ %i.ip, %.lr.ph498.preheader ] ; 8 uses
  %i.iv = load i8, ptr %.promoted500, align 1, !tbaa !29 ; 2 uses
  switch i8 %i.iv, label %bb.cl [
    i8 32, label %.critedge33
    i8 9, label %.critedge33
  ]

.critedge33:                                      ; preds = %.lr.ph498, %.lr.ph498
  %i.iw = getelementptr inbounds nuw i8, ptr %.promoted500, i64 1 ; 2 uses
  %exitcond586.not = icmp eq ptr %i.iw, %1
  br i1 %exitcond586.not, label %.critedge31.loopexit, label %.lr.ph498, !llvm.loop !91

bb.cl:                                            ; preds = %.lr.ph498
  store ptr %.promoted500, ptr %i.b, align 8
  %i.ix = icmp eq i8 %i.iv, 125
  br i1 %i.ix, label %.critedge31, label %.preheader424

.preheader424:                                    ; preds = %bb.cl
  %.promoted500587 = ptrtoaddr ptr %.promoted500 to i64 ; 2 uses
  %i.iy = icmp ult ptr %.promoted500, %1
  br i1 %i.iy, label %.lr.ph502, label %.critedge35

.lr.ph502:                                        ; preds = %.preheader424
  %i.iz = select i1 %i.g, i32 1114111, i32 255
  %i.ja = sub i64 %i.a, %.promoted500587
  %scevgep588 = getelementptr i8, ptr %.promoted500, i64 %i.ja
  br label %bb.cm

.critedge31.loopexit:                             ; preds = %.critedge33, %.preheader425
  %.lcssa496 = phi ptr [ %i.ip, %.preheader425 ], [ %scevgep585, %.critedge33 ]
  store ptr %.lcssa496, ptr %i.b, align 8
  br label %.critedge31

.critedge31:                                      ; preds = %.critedge31.loopexit, %bb.cl
  store i32 178, ptr %3, align 4, !tbaa !28
  br label %bb.dt

bb.cm:                                            ; preds = %.lr.ph502, %.backedge
  %.5278501 = phi i32 [ 0, %.lr.ph502 ], [ %.5278.be, %.backedge ] ; 3 uses
  %i.jb = phi ptr [ %.promoted500, %.lr.ph502 ], [ %i.je, %.backedge ] ; 3 uses
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !29  ; 3 uses
  %i.jd = and i8 %i.jc, -8
  %or.cond389 = icmp eq i8 %i.jd, 48
  br i1 %or.cond389, label %bb.cn, label %.critedge35.loopexit

bb.cn:                                            ; preds = %bb.cm
  %i.je = getelementptr inbounds nuw i8, ptr %i.jb, i64 1 ; 3 uses
  %i.jf = icmp eq i32 %.5278501, 0
  %i.jg = icmp eq i8 %i.jc, 48
  %or.cond37 = and i1 %i.jf, %i.jg
  br i1 %or.cond37, label %.backedge, label %bb.co

.backedge:                                        ; preds = %bb.cn, %bb.co
  %.5278.be = phi i32 [ %i.jk, %bb.co ], [ 0, %bb.cn ] ; 2 uses
  %exitcond589.not = icmp eq ptr %i.je, %1
  br i1 %exitcond589.not, label %.critedge35.loopexit, label %bb.cm, !llvm.loop !92

bb.co:                                            ; preds = %bb.cn
  %i.jh = zext nneg i8 %i.jc to i32
  %i.ji = shl nuw nsw i32 %.5278501, 3
  %i.jj = add nsw i32 %i.jh, -48
  %i.jk = or disjoint i32 %i.jj, %i.ji            ; 3 uses
  %i.jl = icmp ugt i32 %i.jk, %i.iz
  br i1 %i.jl, label %.critedge35.loopexit, label %.backedge

.critedge35.loopexit:                             ; preds = %bb.co, %bb.cm, %.backedge
  %.ph = phi ptr [ %scevgep588, %.backedge ], [ %i.jb, %bb.cm ], [ %i.je, %bb.co ] ; 2 uses
  %.6279.ph = phi i32 [ %.5278.be, %.backedge ], [ %.5278501, %bb.cm ], [ %i.jk, %bb.co ]
  %.not351.ph = phi i1 [ true, %.backedge ], [ true, %bb.cm ], [ false, %bb.co ]
  %.pre = ptrtoaddr ptr %.ph to i64
  br label %.critedge35

.critedge35:                                      ; preds = %.critedge35.loopexit, %.preheader424
  %.pre-phi = phi i64 [ %.pre, %.critedge35.loopexit ], [ %.promoted500587, %.preheader424 ]
  %i.jm = phi ptr [ %.ph, %.critedge35.loopexit ], [ %.promoted500, %.preheader424 ] ; 5 uses
  %.6279 = phi i32 [ %.6279.ph, %.critedge35.loopexit ], [ 0, %.preheader424 ] ; 5 uses
  %.not351 = phi i1 [ %.not351.ph, %.critedge35.loopexit ], [ true, %.preheader424 ] ; 2 uses
  store ptr %i.jm, ptr %i.b, align 8
  %i.jn = icmp ult ptr %i.jm, %1
  br i1 %i.jn, label %.lr.ph517.preheader, label %.critedge39.thread

.lr.ph517.preheader:                              ; preds = %.critedge35
  %i.jo = sub i64 %i.a, %.pre-phi
  %scevgep590 = getelementptr i8, ptr %i.jm, i64 %i.jo ; 2 uses
  br label %.lr.ph517

.lr.ph517:                                        ; preds = %.lr.ph517.preheader, %.critedge41
  %i.jp = phi ptr [ %i.jr, %.critedge41 ], [ %i.jm, %.lr.ph517.preheader ] ; 7 uses
  %i.jq = load i8, ptr %i.jp, align 1, !tbaa !29
  switch i8 %i.jq, label %.critedge39 [
    i8 32, label %.critedge41
    i8 9, label %.critedge41
  ]

.critedge41:                                      ; preds = %.lr.ph517, %.lr.ph517
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 2 uses
  %exitcond591.not = icmp eq ptr %i.jr, %scevgep590
  br i1 %exitcond591.not, label %.critedge39.thread, label %.lr.ph517, !llvm.loop !93

.critedge39:                                      ; preds = %.lr.ph517
  store ptr %i.jp, ptr %i.b, align 8
  br i1 %.not351, label %bb.cq, label %.preheader423

.critedge39.thread:                               ; preds = %.critedge41, %.critedge35
  %.lcssa515 = phi ptr [ %i.jm, %.critedge35 ], [ %scevgep590, %.critedge41 ] ; 3 uses
  store ptr %.lcssa515, ptr %i.b, align 8
  br i1 %.not351, label %.thread417, label %.preheader423

.preheader423:                                    ; preds = %.critedge39, %.critedge39.thread
  %.promoted519 = phi ptr [ %i.jp, %.critedge39 ], [ %.lcssa515, %.critedge39.thread ] ; 5 uses
  %i.js = icmp ult ptr %.promoted519, %1
  br i1 %i.js, label %.lr.ph521.preheader, label %.critedge43

.lr.ph521.preheader:                              ; preds = %.preheader423
  %.promoted519592 = ptrtoaddr ptr %.promoted519 to i64
  %i.jt = sub i64 %i.a, %.promoted519592
  %scevgep593 = getelementptr i8, ptr %.promoted519, i64 %i.jt
  br label %.lr.ph521

.lr.ph521:                                        ; preds = %.lr.ph521.preheader, %bb.cp
  %i.ju = phi ptr [ %i.jx, %bb.cp ], [ %.promoted519, %.lr.ph521.preheader ] ; 3 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !29
  %i.jw = and i8 %i.jv, -8
  %or.cond390 = icmp eq i8 %i.jw, 48
  br i1 %or.cond390, label %bb.cp, label %.critedge43

bb.cp:                                            ; preds = %.lr.ph521
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ju, i64 1 ; 2 uses
  %exitcond594.not = icmp eq ptr %i.jx, %1
  br i1 %exitcond594.not, label %.critedge43, label %.lr.ph521, !llvm.loop !94

.critedge43:                                      ; preds = %bb.cp, %.lr.ph521, %.preheader423
  %.lcssa520 = phi ptr [ %.promoted519, %.preheader423 ], [ %i.ju, %.lr.ph521 ], [ %scevgep593, %bb.cp ]
  store ptr %.lcssa520, ptr %i.b, align 8
  store i32 134, ptr %3, align 4, !tbaa !28
  br label %bb.dt

bb.cq:                                            ; preds = %.critedge39
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jp, i64 1 ; 2 uses
  store ptr %i.jy, ptr %i.b, align 8, !tbaa !27
  %i.jz = load i8, ptr %i.jp, align 1, !tbaa !29
  %i.ka = icmp eq i8 %i.jz, 125
  br i1 %i.ka, label %bb.cr, label %.thread417

bb.cr:                                            ; preds = %bb.cq
  %i.kb = and i32 %.6279, -2048
  %i.kc = icmp eq i32 %i.kb, 55296
  %i.kd = and i32 %5, 1
  %i.ke = icmp eq i32 %i.kd, 0
  %i.kf = and i1 %i.ke, %i.kc
  %or.cond392 = and i1 %i.g, %i.kf
  br i1 %or.cond392, label %bb.cs, label %bb.dt

bb.cs:                                            ; preds = %bb.cr
  store ptr %i.jp, ptr %i.b, align 8, !tbaa !27
  store i32 173, ptr %3, align 4, !tbaa !28
  br label %bb.dt

.thread417:                                       ; preds = %.critedge39.thread, %bb.cq
  %i.kg = phi ptr [ %.lcssa515, %.critedge39.thread ], [ %i.jy, %bb.cq ]
  %i.kh = getelementptr inbounds i8, ptr %i.kg, i64 -1
  store ptr %i.kh, ptr %i.b, align 8, !tbaa !27
  store i32 164, ptr %3, align 4, !tbaa !28
  br label %bb.dt

bb.ct:                                            ; preds = %bb.ah
  br i1 %.0282, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.ki = ptrtoint ptr %1 to i64
  %i.kj = ptrtoint ptr %i.ct to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = icmp slt i64 %i.kk, 2
  br i1 %i.kl, label %bb.dt, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.km = load i8, ptr %i.ct, align 1, !tbaa !29
  %i.kn = zext i8 %i.km to i64
  %i.ko = getelementptr inbounds nuw i8, ptr @xdigitab, i64 %i.kn
  %i.kp = load i8, ptr %i.ko, align 1, !tbaa !29  ; 2 uses
  %i.kq = zext i8 %i.kp to i32
  %i.kr = icmp eq i8 %i.kp, -1
  br i1 %i.kr, label %bb.dt, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ks = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  %i.kt = load i8, ptr %i.ks, align 1, !tbaa !29
  %i.ku = zext i8 %i.kt to i64
  %i.kv = getelementptr inbounds nuw i8, ptr @xdigitab, i64 %i.ku
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !29  ; 2 uses
  %i.kx = icmp eq i8 %i.kw, -1
  br i1 %i.kx, label %bb.dt, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.ky = zext i8 %i.kw to i32
  %i.kz = shl nuw nsw i32 %i.kq, 4
  %i.la = or i32 %i.kz, %i.ky
  %i.lb = getelementptr inbounds nuw i8, ptr %i.ct, i64 2
  store ptr %i.lb, ptr %i.b, align 8, !tbaa !27
  br label %bb.dt

bb.cy:                                            ; preds = %bb.ct
  %i.lc = ptrtoaddr ptr %i.ct to i64
  %i.ld = icmp ult ptr %i.ct, %1
  br i1 %i.ld, label %bb.cz, label %bb.dt

bb.cz:                                            ; preds = %bb.cy
  %i.le = load i8, ptr %i.ct, align 1, !tbaa !29  ; 2 uses
  %i.lf = icmp eq i8 %i.le, 123
  br i1 %i.lf, label %.preheader429, label %bb.dj

.preheader429:                                    ; preds = %bb.cz
  %storemerge460 = getelementptr inbounds nuw i8, ptr %i.ct, i64 1 ; 3 uses
  %i.lg = icmp ult ptr %storemerge460, %1
  br i1 %i.lg, label %.lr.ph462.preheader, label %.critedge49.loopexit

.lr.ph462.preheader:                              ; preds = %.preheader429
  %i.lh = sub i64 %i.a, %i.lc
  %scevgep = getelementptr i8, ptr %i.ct, i64 %i.lh
  br label %.lr.ph462

.lr.ph462:                                        ; preds = %.lr.ph462.preheader, %.critedge51
  %storemerge461 = phi ptr [ %storemerge, %.critedge51 ], [ %storemerge460, %.lr.ph462.preheader ] ; 3 uses
  %i.li = load i8, ptr %storemerge461, align 1, !tbaa !29
  switch i8 %i.li, label %.critedge49.loopexit [
    i8 32, label %.critedge51
    i8 9, label %.critedge51
  ]

.critedge51:                                      ; preds = %.lr.ph462, %.lr.ph462
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge461, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %storemerge, %1
  br i1 %exitcond.not, label %.critedge49.loopexit, label %.lr.ph462, !llvm.loop !95

.critedge49.loopexit:                             ; preds = %.lr.ph462, %.critedge51, %.preheader429
  %storemerge.lcssa = phi ptr [ %storemerge460, %.preheader429 ], [ %scevgep, %.critedge51 ], [ %storemerge461, %.lr.ph462 ] ; 2 uses
  store ptr %storemerge.lcssa, ptr %i.b, align 8, !tbaa !27
  br label %.critedge49

.critedge49:                                      ; preds = %.critedge49.loopexit, %bb.ad
  %.promoted466 = phi ptr [ %storemerge.lcssa, %.critedge49.loopexit ], [ %i.ec, %bb.ad ] ; 5 uses
  %.not377 = icmp ult ptr %.promoted466, %1
  br i1 %.not377, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.critedge49
  %i.lj = load i8, ptr %.promoted466, align 1, !tbaa !29
  %i.lk = icmp eq i8 %i.lj, 125
  br i1 %i.lk, label %bb.db, label %.lr.ph468

.lr.ph468:                                        ; preds = %bb.da
  %.promoted466576 = ptrtoaddr ptr %.promoted466 to i64
  %i.ll = sub i64 %i.a, %.promoted466576
  %scevgep577 = getelementptr i8, ptr %.promoted466, i64 %i.ll
  %or.cond545.v = select i1 %i.g, i32 1114111, i32 255
  br label %bb.dc

bb.db:                                            ; preds = %bb.da, %.critedge49
  store i32 178, ptr %3, align 4, !tbaa !28
  br label %bb.dt

end_hunk_0
