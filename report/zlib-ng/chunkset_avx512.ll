Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng/original/chunkset_avx512?download=true
inline.NumInlined: 40
inline.NumDeleted: 22
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@inflate_fast_avx512:bb.a
  %.val.i = load <4 x i64>, ptr %i.gu, align 1, !tbaa !9
  store <4 x i64> %.val.i, ptr %.017.i, align 1, !tbaa !9
  %i.gy = zext nneg i32 %.0320 to i64
  %i.gz = getelementptr inbounds nuw i8, ptr %.017.i, i64 %i.gy ; 3 uses
  %i.ha = sub i32 %.1323, %.0320                  ; 3 uses
  %i.hb = shl nuw nsw i32 %.0320, 1               ; 3 uses
  %i.hc = icmp ult i32 %i.hb, %i.ha
  %i.hd = icmp ult i32 %.0320, 16
  %or.cond.i = and i1 %i.hd, %i.hc
  br i1 %or.cond.i, label %.lr.ph.i, label %chunkunroll_avx512.exit, !llvm.loop !15

chunkunroll_avx512.exit:                          ; preds = %.lr.ph.i
  %i.he = zext i32 %i.ha to i64                   ; 2 uses
  %i.hf = icmp eq i32 %.0320, 0
  br i1 %i.hf, label %bb.x, label %bb.y

bb.x:                                             ; preds = %chunkunroll_avx512.exit
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gz, i64 %i.he
  br label %CHUNKCOPY_SAFE.exit261

bb.y:                                             ; preds = %chunkunroll_avx512.exit.thread, %chunkunroll_avx512.exit
  %i.hh = phi i64 [ %i.gx, %chunkunroll_avx512.exit.thread ], [ %i.he, %chunkunroll_avx512.exit ]
  %.0.lcssa.i469 = phi ptr [ %.0.i258, %chunkunroll_avx512.exit.thread ], [ %i.gz, %chunkunroll_avx512.exit ] ; 3 uses
  %.1321468 = phi i32 [ %i.fe, %chunkunroll_avx512.exit.thread ], [ %i.hb, %chunkunroll_avx512.exit ]
  %i.hi = zext nneg i32 %.1321468 to i64
  %i.hj = sub nsw i64 0, %i.hi
  %i.hk = getelementptr inbounds i8, ptr %.0.lcssa.i469, i64 %i.hj
  %i.hl = ptrtoint ptr %.0.lcssa.i469 to i64
  %i.hm = sub i64 %i.bc, %i.hl
  %i.hn = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.hh, i64 %i.hm)
  %i.ho = trunc nuw i64 %i.hn to i32
  %i.hp = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.0.lcssa.i469, ptr noundef nonnull %i.hk, i32 noundef %i.ho)
  br label %CHUNKCOPY_SAFE.exit261

bb.z:                                             ; preds = %bb.t
  %i.hq = ptrtoint ptr %.2216 to i64              ; 2 uses
  %i.hr = sub i64 %i.bc, %i.hq
  %i.hs = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.gl, i64 %i.hr) ; 5 uses
  %i.ht = icmp uge ptr %.0, %.2216
  %i.hu = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.hs ; 3 uses
  %i.hv = icmp ult ptr %.0, %i.hu
  %i.hw = select i1 %i.ht, i1 %i.hv, i1 false
  %i.hx = icmp uge ptr %.2216, %.0
  %i.hy = getelementptr inbounds nuw i8, ptr %.0, i64 %i.hs
  %i.hz = icmp ult ptr %.2216, %i.hy
  %i.ia = select i1 %i.hx, i1 %i.hz, i1 false
  %or.cond.i262 = select i1 %i.hw, i1 true, i1 %i.ia
  br i1 %or.cond.i262, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.2216, ptr align 1 %.0, i64 %i.hs, i1 false)
  br label %chunkcopy_safe.exit

bb.ab:                                            ; preds = %bb.z
  %i.ib = icmp eq ptr %.2216, %.0
  br i1 %i.ib, label %chunkcopy_safe.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ic = ptrtoint ptr %.0 to i64
  %i.id = sub i64 %i.ic, %i.hq
  %i.ie = tail call i64 @llvm.abs.i64(i64 %i.id, i1 true)
  %.not87.i = icmp eq i64 %i.hs, 0
  br i1 %.not87.i, label %chunkcopy_safe.exit, label %.lr.ph92.i

.loopexit.i:                                      ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i, %middle.block599, %vec.epilog.middle.block616, %bb.ag
  %.469.lcssa.i = phi ptr [ %.368.i, %bb.ag ], [ %i.kf, %vec.epilog.middle.block616 ], [ %i.jv, %middle.block599 ], [ %.lcssa653.unr, %.lr.ph84.i.prol.loopexit ], [ %i.ll, %.lr.ph84.i ] ; 2 uses
  %.4.lcssa.i = phi ptr [ %.364.i, %bb.ag ], [ %i.ke, %vec.epilog.middle.block616 ], [ %i.ju, %middle.block599 ], [ %.lcssa654.unr, %.lr.ph84.i.prol.loopexit ], [ %i.lj, %.lr.ph84.i ]
  %.not.i = icmp eq i64 %i.ig, 0
  br i1 %.not.i, label %chunkcopy_safe.exit, label %.lr.ph92.i, !llvm.loop !16

.lr.ph92.i:                                       ; preds = %bb.ac, %.loopexit.i
  %.06090.i = phi i64 [ %i.ig, %.loopexit.i ], [ %i.hs, %bb.ac ] ; 2 uses
  %.06189.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.0, %bb.ac ] ; 3 uses
  %.06588.i = phi ptr [ %.469.lcssa.i, %.loopexit.i ], [ %.2216, %bb.ac ] ; 3 uses
  %i.if = tail call i64 @llvm.umin.i64(i64 %i.ie, i64 %.06090.i) ; 6 uses
  %i.ig = sub nuw nsw i64 %.06090.i, %i.if        ; 2 uses
  %i.ih = icmp samesign ugt i64 %i.if, 15
  br i1 %i.ih, label %.lr.ph.i264.preheader, label %._crit_edge.i

.lr.ph.i264.preheader:                            ; preds = %.lr.ph92.i
  %i.ii = add nsw i64 %i.if, -16                  ; 2 uses
  %i.ij = lshr i64 %i.ii, 4
  %i.ik = add nuw nsw i64 %i.ij, 1
  %xtraiter = and i64 %i.ik, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol

.lr.ph.i264.prol:                                 ; preds = %.lr.ph.i264.preheader, %.lr.ph.i264.prol
  %.076.i.prol = phi i64 [ %i.in, %.lr.ph.i264.prol ], [ %i.if, %.lr.ph.i264.preheader ]
  %.16275.i.prol = phi ptr [ %i.im, %.lr.ph.i264.prol ], [ %.06189.i, %.lr.ph.i264.preheader ] ; 2 uses
  %.16674.i.prol = phi ptr [ %i.il, %.lr.ph.i264.prol ], [ %.06588.i, %.lr.ph.i264.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i264.prol ], [ 0, %.lr.ph.i264.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i.prol, i64 16, i1 false)
  %i.il = getelementptr inbounds nuw i8, ptr %.16674.i.prol, i64 16 ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.16275.i.prol, i64 16 ; 3 uses
  %i.in = add i64 %.076.i.prol, -16               ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i264.prol.loopexit, label %.lr.ph.i264.prol, !llvm.loop !17

.lr.ph.i264.prol.loopexit:                        ; preds = %.lr.ph.i264.prol, %.lr.ph.i264.preheader
  %.076.i.unr = phi i64 [ %i.if, %.lr.ph.i264.preheader ], [ %i.in, %.lr.ph.i264.prol ]
  %.16275.i.unr = phi ptr [ %.06189.i, %.lr.ph.i264.preheader ], [ %i.im, %.lr.ph.i264.prol ]
  %.16674.i.unr = phi ptr [ %.06588.i, %.lr.ph.i264.preheader ], [ %i.il, %.lr.ph.i264.prol ]
  %.lcssa652.unr = phi ptr [ poison, %.lr.ph.i264.preheader ], [ %i.il, %.lr.ph.i264.prol ]
  %.lcssa651.unr = phi ptr [ poison, %.lr.ph.i264.preheader ], [ %i.im, %.lr.ph.i264.prol ]
  %.lcssa650.unr = phi i64 [ poison, %.lr.ph.i264.preheader ], [ %i.in, %.lr.ph.i264.prol ]
  %i.io = icmp ult i64 %i.ii, 112
  br i1 %i.io, label %._crit_edge.i, label %.lr.ph.i264

.lr.ph.i264:                                      ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264
  %.076.i = phi i64 [ %i.jf, %.lr.ph.i264 ], [ %.076.i.unr, %.lr.ph.i264.prol.loopexit ]
  %.16275.i = phi ptr [ %i.je, %.lr.ph.i264 ], [ %.16275.i.unr, %.lr.ph.i264.prol.loopexit ] ; 9 uses
  %.16674.i = phi ptr [ %i.jd, %.lr.ph.i264 ], [ %.16674.i.unr, %.lr.ph.i264.prol.loopexit ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i, i64 16, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %.16674.i, i64 16
  %i.iq = getelementptr inbounds nuw i8, ptr %.16275.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ip, ptr noundef nonnull align 1 dereferenceable(16) %i.iq, i64 16, i1 false)
  %i.ir = getelementptr inbounds nuw i8, ptr %.16674.i, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %.16275.i, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ir, ptr noundef nonnull align 1 dereferenceable(16) %i.is, i64 16, i1 false)
  %i.it = getelementptr inbounds nuw i8, ptr %.16674.i, i64 48
  %i.iu = getelementptr inbounds nuw i8, ptr %.16275.i, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.it, ptr noundef nonnull align 1 dereferenceable(16) %i.iu, i64 16, i1 false)
  %i.iv = getelementptr inbounds nuw i8, ptr %.16674.i, i64 64
  %i.iw = getelementptr inbounds nuw i8, ptr %.16275.i, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iv, ptr noundef nonnull align 1 dereferenceable(16) %i.iw, i64 16, i1 false)
  %i.ix = getelementptr inbounds nuw i8, ptr %.16674.i, i64 80
  %i.iy = getelementptr inbounds nuw i8, ptr %.16275.i, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ix, ptr noundef nonnull align 1 dereferenceable(16) %i.iy, i64 16, i1 false)
  %i.iz = getelementptr inbounds nuw i8, ptr %.16674.i, i64 96
  %i.ja = getelementptr inbounds nuw i8, ptr %.16275.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.iz, ptr noundef nonnull align 1 dereferenceable(16) %i.ja, i64 16, i1 false)
  %i.jb = getelementptr inbounds nuw i8, ptr %.16674.i, i64 112
  %i.jc = getelementptr inbounds nuw i8, ptr %.16275.i, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jb, ptr noundef nonnull align 1 dereferenceable(16) %i.jc, i64 16, i1 false)
  %i.jd = getelementptr inbounds nuw i8, ptr %.16674.i, i64 128 ; 2 uses
  %i.je = getelementptr inbounds nuw i8, ptr %.16275.i, i64 128 ; 2 uses
  %i.jf = add i64 %.076.i, -128                   ; 3 uses
  %i.jg = icmp ugt i64 %i.jf, 15
  br i1 %i.jg, label %.lr.ph.i264, label %._crit_edge.i, !llvm.loop !18

._crit_edge.i:                                    ; preds = %.lr.ph.i264.prol.loopexit, %.lr.ph.i264, %.lr.ph92.i
  %.166.lcssa.i = phi ptr [ %.06588.i, %.lr.ph92.i ], [ %.lcssa652.unr, %.lr.ph.i264.prol.loopexit ], [ %i.jd, %.lr.ph.i264 ] ; 3 uses
  %.162.lcssa.i = phi ptr [ %.06189.i, %.lr.ph92.i ], [ %.lcssa651.unr, %.lr.ph.i264.prol.loopexit ], [ %i.je, %.lr.ph.i264 ] ; 3 uses
  %.0.lcssa.i263 = phi i64 [ %i.if, %.lr.ph92.i ], [ %.lcssa650.unr, %.lr.ph.i264.prol.loopexit ], [ %i.jf, %.lr.ph.i264 ] ; 3 uses
  %i.jh = icmp samesign ugt i64 %.0.lcssa.i263, 7
  br i1 %i.jh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %._crit_edge.i
  %i.ji = load i64, ptr %.162.lcssa.i, align 1
  store i64 %i.ji, ptr %.166.lcssa.i, align 1
  %i.jj = getelementptr inbounds nuw i8, ptr %.166.lcssa.i, i64 8
  %i.jk = getelementptr inbounds nuw i8, ptr %.162.lcssa.i, i64 8
  %i.jl = add nsw i64 %.0.lcssa.i263, -8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %._crit_edge.i
  %.267.i = phi ptr [ %i.jj, %bb.ad ], [ %.166.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.263.i = phi ptr [ %i.jk, %bb.ad ], [ %.162.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.1.i = phi i64 [ %i.jl, %bb.ad ], [ %.0.lcssa.i263, %._crit_edge.i ] ; 3 uses
  %i.jm = icmp samesign ugt i64 %.1.i, 3
  br i1 %i.jm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.jn = load i32, ptr %.263.i, align 1
  store i32 %i.jn, ptr %.267.i, align 1
  %i.jo = getelementptr inbounds nuw i8, ptr %.267.i, i64 4
  %i.jp = getelementptr inbounds nuw i8, ptr %.263.i, i64 4
  %i.jq = add nsw i64 %.1.i, -4
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.368.i = phi ptr [ %i.jo, %bb.af ], [ %.267.i, %bb.ae ] ; 7 uses
  %.364.i = phi ptr [ %i.jp, %bb.af ], [ %.263.i, %bb.ae ] ; 7 uses
  %.2.i = phi i64 [ %i.jq, %bb.af ], [ %.1.i, %bb.ae ] ; 11 uses
  %.not7279.i = icmp eq i64 %.2.i, 0
  br i1 %.not7279.i, label %.loopexit.i, label %iter.check604

iter.check604:                                    ; preds = %bb.ag
  %.364.i583 = ptrtoaddr ptr %.364.i to i64
  %.368.i582 = ptrtoaddr ptr %.368.i to i64
  %min.iters.check585 = icmp ult i64 %.2.i, 8
  %i.jr = sub i64 %.364.i583, %.368.i582
  %diff.check584 = icmp ugt i64 %i.jr, -128
  %or.cond621 = select i1 %min.iters.check585, i1 true, i1 %diff.check584
  br i1 %or.cond621, label %.lr.ph84.i.preheader, label %vector.main.loop.iter.check586

vector.main.loop.iter.check586:                   ; preds = %iter.check604
  %min.iters.check587 = icmp ult i64 %.2.i, 128
  br i1 %min.iters.check587, label %vec.epilog.ph608, label %vector.ph588

vector.ph588:                                     ; preds = %vector.main.loop.iter.check586
  %i.js = and i64 %.2.i, 120
  %n.vec589 = and i64 %.2.i, -128                 ; 5 uses
  %i.jt = and i64 %.2.i, 127
  %i.ju = getelementptr i8, ptr %.364.i, i64 %n.vec589 ; 2 uses
  %i.jv = getelementptr i8, ptr %.368.i, i64 %n.vec589 ; 2 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.ph588, %vector.body590
  %index591 = phi i64 [ 0, %vector.ph588 ], [ %index.next598, %vector.body590 ] ; 3 uses
  %next.gep592 = getelementptr i8, ptr %.364.i, i64 %index591 ; 4 uses
  %next.gep593 = getelementptr i8, ptr %.368.i, i64 %index591 ; 4 uses
  %i.jw = getelementptr i8, ptr %next.gep592, i64 32
  %i.jx = getelementptr i8, ptr %next.gep592, i64 64
  %i.jy = getelementptr i8, ptr %next.gep592, i64 96
  %wide.load594 = load <32 x i8>, ptr %next.gep592, align 1, !tbaa !9
  %wide.load595 = load <32 x i8>, ptr %i.jw, align 1, !tbaa !9
  %wide.load596 = load <32 x i8>, ptr %i.jx, align 1, !tbaa !9
  %wide.load597 = load <32 x i8>, ptr %i.jy, align 1, !tbaa !9
  %i.jz = getelementptr i8, ptr %next.gep593, i64 32
  %i.ka = getelementptr i8, ptr %next.gep593, i64 64
  %i.kb = getelementptr i8, ptr %next.gep593, i64 96
  store <32 x i8> %wide.load594, ptr %next.gep593, align 1, !tbaa !9
  store <32 x i8> %wide.load595, ptr %i.jz, align 1, !tbaa !9
  store <32 x i8> %wide.load596, ptr %i.ka, align 1, !tbaa !9
  store <32 x i8> %wide.load597, ptr %i.kb, align 1, !tbaa !9
  %index.next598 = add nuw i64 %index591, 128     ; 2 uses
  %i.kc = icmp eq i64 %index.next598, %n.vec589
  br i1 %i.kc, label %middle.block599, label %vector.body590, !llvm.loop !19

middle.block599:                                  ; preds = %vector.body590
  %cmp.n600 = icmp eq i64 %.2.i, %n.vec589
  br i1 %cmp.n600, label %.loopexit.i, label %vec.epilog.iter.check606

vec.epilog.iter.check606:                         ; preds = %middle.block599
  %min.epilog.iters.check607 = icmp eq i64 %i.js, 0
  br i1 %min.epilog.iters.check607, label %.lr.ph84.i.preheader, label %vec.epilog.ph608, !prof !64

vec.epilog.ph608:                                 ; preds = %vector.main.loop.iter.check586, %vec.epilog.iter.check606
  %vec.epilog.resume.val601 = phi i64 [ %n.vec589, %vec.epilog.iter.check606 ], [ 0, %vector.main.loop.iter.check586 ]
  %n.vec609 = and i64 %.2.i, -8                   ; 4 uses
  %i.kd = and i64 %.2.i, 7
  %i.ke = getelementptr i8, ptr %.364.i, i64 %n.vec609 ; 2 uses
  %i.kf = getelementptr i8, ptr %.368.i, i64 %n.vec609 ; 2 uses
  br label %vec.epilog.vector.body610

vec.epilog.vector.body610:                        ; preds = %vec.epilog.vector.body610, %vec.epilog.ph608
  %index611 = phi i64 [ %vec.epilog.resume.val601, %vec.epilog.ph608 ], [ %index.next615, %vec.epilog.vector.body610 ] ; 3 uses
  %next.gep612 = getelementptr i8, ptr %.364.i, i64 %index611
  %next.gep613 = getelementptr i8, ptr %.368.i, i64 %index611
  %wide.load614 = load <8 x i8>, ptr %next.gep612, align 1, !tbaa !9
  store <8 x i8> %wide.load614, ptr %next.gep613, align 1, !tbaa !9
  %index.next615 = add nuw i64 %index611, 8       ; 2 uses
  %i.kg = icmp eq i64 %index.next615, %n.vec609
  br i1 %i.kg, label %vec.epilog.middle.block616, label %vec.epilog.vector.body610, !llvm.loop !20

vec.epilog.middle.block616:                       ; preds = %vec.epilog.vector.body610
  %cmp.n617 = icmp eq i64 %.2.i, %n.vec609
  br i1 %cmp.n617, label %.loopexit.i, label %.lr.ph84.i.preheader

.lr.ph84.i.preheader:                             ; preds = %iter.check604, %vec.epilog.iter.check606, %vec.epilog.middle.block616
  %.382.i.ph = phi i64 [ %.2.i, %iter.check604 ], [ %i.jt, %vec.epilog.iter.check606 ], [ %i.kd, %vec.epilog.middle.block616 ] ; 4 uses
  %.481.i.ph = phi ptr [ %.364.i, %iter.check604 ], [ %i.ju, %vec.epilog.iter.check606 ], [ %i.ke, %vec.epilog.middle.block616 ] ; 2 uses
  %.46980.i.ph = phi ptr [ %.368.i, %iter.check604 ], [ %i.jv, %vec.epilog.iter.check606 ], [ %i.kf, %vec.epilog.middle.block616 ] ; 2 uses
  %i.kh = add i64 %.382.i.ph, -1
  %xtraiter669 = and i64 %.382.i.ph, 7            ; 2 uses
  %lcmp.mod670.not = icmp eq i64 %xtraiter669, 0
  br i1 %lcmp.mod670.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol

.lr.ph84.i.prol:                                  ; preds = %.lr.ph84.i.preheader, %.lr.ph84.i.prol
  %.382.i.prol = phi i64 [ %i.ki, %.lr.ph84.i.prol ], [ %.382.i.ph, %.lr.ph84.i.preheader ]
  %.481.i.prol = phi ptr [ %i.kj, %.lr.ph84.i.prol ], [ %.481.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %.46980.i.prol = phi ptr [ %i.kl, %.lr.ph84.i.prol ], [ %.46980.i.ph, %.lr.ph84.i.preheader ] ; 2 uses
  %prol.iter671 = phi i64 [ %prol.iter671.next, %.lr.ph84.i.prol ], [ 0, %.lr.ph84.i.preheader ]
  %i.ki = add i64 %.382.i.prol, -1                ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.481.i.prol, i64 1 ; 3 uses
  %i.kk = load i8, ptr %.481.i.prol, align 1, !tbaa !9
  %i.kl = getelementptr inbounds nuw i8, ptr %.46980.i.prol, i64 1 ; 3 uses
  store i8 %i.kk, ptr %.46980.i.prol, align 1, !tbaa !9
  %prol.iter671.next = add i64 %prol.iter671, 1   ; 2 uses
  %prol.iter671.cmp.not = icmp eq i64 %prol.iter671.next, %xtraiter669
  br i1 %prol.iter671.cmp.not, label %.lr.ph84.i.prol.loopexit, label %.lr.ph84.i.prol, !llvm.loop !21

.lr.ph84.i.prol.loopexit:                         ; preds = %.lr.ph84.i.prol, %.lr.ph84.i.preheader
  %.lcssa654.unr = phi ptr [ poison, %.lr.ph84.i.preheader ], [ %i.kj, %.lr.ph84.i.prol ]
  %.lcssa653.unr = phi ptr [ poison, %.lr.ph84.i.preheader ], [ %i.kl, %.lr.ph84.i.prol ]
  %.382.i.unr = phi i64 [ %.382.i.ph, %.lr.ph84.i.preheader ], [ %i.ki, %.lr.ph84.i.prol ]
  %.481.i.unr = phi ptr [ %.481.i.ph, %.lr.ph84.i.preheader ], [ %i.kj, %.lr.ph84.i.prol ]
  %.46980.i.unr = phi ptr [ %.46980.i.ph, %.lr.ph84.i.preheader ], [ %i.kl, %.lr.ph84.i.prol ]
  %i.km = icmp ult i64 %i.kh, 7
  br i1 %i.km, label %.loopexit.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph84.i.prol.loopexit, %.lr.ph84.i
  %.382.i = phi i64 [ %i.li, %.lr.ph84.i ], [ %.382.i.unr, %.lr.ph84.i.prol.loopexit ]
  %.481.i = phi ptr [ %i.lj, %.lr.ph84.i ], [ %.481.i.unr, %.lr.ph84.i.prol.loopexit ] ; 9 uses
  %.46980.i = phi ptr [ %i.ll, %.lr.ph84.i ], [ %.46980.i.unr, %.lr.ph84.i.prol.loopexit ] ; 9 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.481.i, i64 1
  %i.ko = load i8, ptr %.481.i, align 1, !tbaa !9
  %i.kp = getelementptr inbounds nuw i8, ptr %.46980.i, i64 1
  store i8 %i.ko, ptr %.46980.i, align 1, !tbaa !9
  %i.kq = getelementptr inbounds nuw i8, ptr %.481.i, i64 2
  %i.kr = load i8, ptr %i.kn, align 1, !tbaa !9
  %i.ks = getelementptr inbounds nuw i8, ptr %.46980.i, i64 2
  store i8 %i.kr, ptr %i.kp, align 1, !tbaa !9
  %i.kt = getelementptr inbounds nuw i8, ptr %.481.i, i64 3
  %i.ku = load i8, ptr %i.kq, align 1, !tbaa !9
  %i.kv = getelementptr inbounds nuw i8, ptr %.46980.i, i64 3
  store i8 %i.ku, ptr %i.ks, align 1, !tbaa !9
  %i.kw = getelementptr inbounds nuw i8, ptr %.481.i, i64 4
  %i.kx = load i8, ptr %i.kt, align 1, !tbaa !9
  %i.ky = getelementptr inbounds nuw i8, ptr %.46980.i, i64 4
  store i8 %i.kx, ptr %i.kv, align 1, !tbaa !9
  %i.kz = getelementptr inbounds nuw i8, ptr %.481.i, i64 5
  %i.la = load i8, ptr %i.kw, align 1, !tbaa !9
  %i.lb = getelementptr inbounds nuw i8, ptr %.46980.i, i64 5
  store i8 %i.la, ptr %i.ky, align 1, !tbaa !9
  %i.lc = getelementptr inbounds nuw i8, ptr %.481.i, i64 6
  %i.ld = load i8, ptr %i.kz, align 1, !tbaa !9
  %i.le = getelementptr inbounds nuw i8, ptr %.46980.i, i64 6
  store i8 %i.ld, ptr %i.lb, align 1, !tbaa !9
  %i.lf = getelementptr inbounds nuw i8, ptr %.481.i, i64 7
  %i.lg = load i8, ptr %i.lc, align 1, !tbaa !9
  %i.lh = getelementptr inbounds nuw i8, ptr %.46980.i, i64 7
  store i8 %i.lg, ptr %i.le, align 1, !tbaa !9
  %i.li = add i64 %.382.i, -8                     ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %.481.i, i64 8 ; 2 uses
  %i.lk = load i8, ptr %i.lf, align 1, !tbaa !9
  %i.ll = getelementptr inbounds nuw i8, ptr %.46980.i, i64 8 ; 2 uses
  store i8 %i.lk, ptr %i.lh, align 1, !tbaa !9
  %.not72.i.7 = icmp eq i64 %i.li, 0
  br i1 %.not72.i.7, label %.loopexit.i, label %.lr.ph84.i, !llvm.loop !22

chunkcopy_safe.exit:                              ; preds = %.loopexit.i, %bb.aa, %bb.ab, %bb.ac
  %.059.i = phi ptr [ %i.hu, %bb.aa ], [ %i.hu, %bb.ab ], [ %.2216, %bb.ac ], [ %.469.lcssa.i, %.loopexit.i ] ; 5 uses
  %i.lm = sub nsw i64 0, %i.fd
  %i.ln = getelementptr inbounds i8, ptr %.059.i, i64 %i.lm ; 2 uses
  %i.lo = zext nneg i32 %i.gk to i64
  %i.lp = ptrtoint ptr %.059.i to i64
  %i.lq = sub i64 %i.bc, %i.lp
  %i.lr = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.lo, i64 %i.lq) ; 4 uses
  %i.ls = icmp samesign ugt i64 %i.lr, %i.fd
  br i1 %i.ls, label %.lr.ph92.i268, label %bb.ah

bb.ah:                                            ; preds = %chunkcopy_safe.exit
  %i.lt = getelementptr inbounds nuw i8, ptr %.059.i, i64 %i.lr
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.059.i, ptr align 1 %i.ln, i64 %i.lr, i1 false)
  br label %CHUNKCOPY_SAFE.exit261

.loopexit.i288:                                   ; preds = %.lr.ph84.i283.prol.loopexit, %.lr.ph84.i283, %middle.block, %vec.epilog.middle.block, %bb.al
  %.469.lcssa.i289 = phi ptr [ %.368.i279, %bb.al ], [ %i.nu, %vec.epilog.middle.block ], [ %i.nk, %middle.block ], [ %.lcssa658.unr, %.lr.ph84.i283.prol.loopexit ], [ %i.pa, %.lr.ph84.i283 ] ; 2 uses
  %.4.lcssa.i290 = phi ptr [ %.364.i280, %bb.al ], [ %i.nt, %vec.epilog.middle.block ], [ %i.nj, %middle.block ], [ %.lcssa659.unr, %.lr.ph84.i283.prol.loopexit ], [ %i.oy, %.lr.ph84.i283 ]
  %.not.i291 = icmp eq i64 %i.lv, 0
  br i1 %.not.i291, label %CHUNKCOPY_SAFE.exit261, label %.lr.ph92.i268, !llvm.loop !16

.lr.ph92.i268:                                    ; preds = %chunkcopy_safe.exit, %.loopexit.i288
  %.06090.i269 = phi i64 [ %i.lv, %.loopexit.i288 ], [ %i.lr, %chunkcopy_safe.exit ] ; 2 uses
  %.06189.i270 = phi ptr [ %.4.lcssa.i290, %.loopexit.i288 ], [ %i.ln, %chunkcopy_safe.exit ] ; 3 uses
  %.06588.i271 = phi ptr [ %.469.lcssa.i289, %.loopexit.i288 ], [ %.059.i, %chunkcopy_safe.exit ] ; 3 uses
  %i.lu = tail call i64 @llvm.umin.i64(i64 %i.fd, i64 %.06090.i269) ; 6 uses
  %i.lv = sub nuw nsw i64 %.06090.i269, %i.lu     ; 2 uses
  %i.lw = icmp samesign ugt i64 %i.lu, 15
  br i1 %i.lw, label %.lr.ph.i292.preheader, label %._crit_edge.i272

.lr.ph.i292.preheader:                            ; preds = %.lr.ph92.i268
  %i.lx = add nsw i64 %i.lu, -16                  ; 2 uses
  %i.ly = lshr i64 %i.lx, 4
  %i.lz = add nuw nsw i64 %i.ly, 1
  %xtraiter672 = and i64 %i.lz, 7                 ; 2 uses
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br i1 %lcmp.mod673.not, label %.lr.ph.i292.prol.loopexit, label %.lr.ph.i292.prol

.lr.ph.i292.prol:                                 ; preds = %.lr.ph.i292.preheader, %.lr.ph.i292.prol
  %.076.i293.prol = phi i64 [ %i.mc, %.lr.ph.i292.prol ], [ %i.lu, %.lr.ph.i292.preheader ]
  %.16275.i294.prol = phi ptr [ %i.mb, %.lr.ph.i292.prol ], [ %.06189.i270, %.lr.ph.i292.preheader ] ; 2 uses
  %.16674.i295.prol = phi ptr [ %i.ma, %.lr.ph.i292.prol ], [ %.06588.i271, %.lr.ph.i292.preheader ] ; 2 uses
  %prol.iter674 = phi i64 [ %prol.iter674.next, %.lr.ph.i292.prol ], [ 0, %.lr.ph.i292.preheader ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i295.prol, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i294.prol, i64 16, i1 false)
  %i.ma = getelementptr inbounds nuw i8, ptr %.16674.i295.prol, i64 16 ; 3 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %.16275.i294.prol, i64 16 ; 3 uses
  %i.mc = add i64 %.076.i293.prol, -16            ; 3 uses
  %prol.iter674.next = add i64 %prol.iter674, 1   ; 2 uses
  %prol.iter674.cmp.not = icmp eq i64 %prol.iter674.next, %xtraiter672
  br i1 %prol.iter674.cmp.not, label %.lr.ph.i292.prol.loopexit, label %.lr.ph.i292.prol, !llvm.loop !23

.lr.ph.i292.prol.loopexit:                        ; preds = %.lr.ph.i292.prol, %.lr.ph.i292.preheader
  %.076.i293.unr = phi i64 [ %i.lu, %.lr.ph.i292.preheader ], [ %i.mc, %.lr.ph.i292.prol ]
  %.16275.i294.unr = phi ptr [ %.06189.i270, %.lr.ph.i292.preheader ], [ %i.mb, %.lr.ph.i292.prol ]
  %.16674.i295.unr = phi ptr [ %.06588.i271, %.lr.ph.i292.preheader ], [ %i.ma, %.lr.ph.i292.prol ]
  %.lcssa657.unr = phi ptr [ poison, %.lr.ph.i292.preheader ], [ %i.ma, %.lr.ph.i292.prol ]
  %.lcssa656.unr = phi ptr [ poison, %.lr.ph.i292.preheader ], [ %i.mb, %.lr.ph.i292.prol ]
  %.lcssa655.unr = phi i64 [ poison, %.lr.ph.i292.preheader ], [ %i.mc, %.lr.ph.i292.prol ]
  %i.md = icmp ult i64 %i.lx, 112
  br i1 %i.md, label %._crit_edge.i272, label %.lr.ph.i292

.lr.ph.i292:                                      ; preds = %.lr.ph.i292.prol.loopexit, %.lr.ph.i292
  %.076.i293 = phi i64 [ %i.mu, %.lr.ph.i292 ], [ %.076.i293.unr, %.lr.ph.i292.prol.loopexit ]
  %.16275.i294 = phi ptr [ %i.mt, %.lr.ph.i292 ], [ %.16275.i294.unr, %.lr.ph.i292.prol.loopexit ] ; 9 uses
  %.16674.i295 = phi ptr [ %i.ms, %.lr.ph.i292 ], [ %.16674.i295.unr, %.lr.ph.i292.prol.loopexit ] ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.16674.i295, ptr noundef nonnull align 1 dereferenceable(16) %.16275.i294, i64 16, i1 false)
  %i.me = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.me, ptr noundef nonnull align 1 dereferenceable(16) %i.mf, i64 16, i1 false)
  %i.mg = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 32
  %i.mh = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mg, ptr noundef nonnull align 1 dereferenceable(16) %i.mh, i64 16, i1 false)
  %i.mi = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 48
  %i.mj = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mi, ptr noundef nonnull align 1 dereferenceable(16) %i.mj, i64 16, i1 false)
  %i.mk = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 64
  %i.ml = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mk, ptr noundef nonnull align 1 dereferenceable(16) %i.ml, i64 16, i1 false)
  %i.mm = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 80
  %i.mn = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mm, ptr noundef nonnull align 1 dereferenceable(16) %i.mn, i64 16, i1 false)
  %i.mo = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 96
  %i.mp = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mo, ptr noundef nonnull align 1 dereferenceable(16) %i.mp, i64 16, i1 false)
  %i.mq = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 112
  %i.mr = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 112
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.mq, ptr noundef nonnull align 1 dereferenceable(16) %i.mr, i64 16, i1 false)
  %i.ms = getelementptr inbounds nuw i8, ptr %.16674.i295, i64 128 ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.16275.i294, i64 128 ; 2 uses
  %i.mu = add i64 %.076.i293, -128                ; 3 uses
  %i.mv = icmp ugt i64 %i.mu, 15
  br i1 %i.mv, label %.lr.ph.i292, label %._crit_edge.i272, !llvm.loop !18

._crit_edge.i272:                                 ; preds = %.lr.ph.i292.prol.loopexit, %.lr.ph.i292, %.lr.ph92.i268
  %.166.lcssa.i273 = phi ptr [ %.06588.i271, %.lr.ph92.i268 ], [ %.lcssa657.unr, %.lr.ph.i292.prol.loopexit ], [ %i.ms, %.lr.ph.i292 ] ; 3 uses
  %.162.lcssa.i274 = phi ptr [ %.06189.i270, %.lr.ph92.i268 ], [ %.lcssa656.unr, %.lr.ph.i292.prol.loopexit ], [ %i.mt, %.lr.ph.i292 ] ; 3 uses
  %.0.lcssa.i275 = phi i64 [ %i.lu, %.lr.ph92.i268 ], [ %.lcssa655.unr, %.lr.ph.i292.prol.loopexit ], [ %i.mu, %.lr.ph.i292 ] ; 3 uses
  %i.mw = icmp samesign ugt i64 %.0.lcssa.i275, 7
  br i1 %i.mw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %._crit_edge.i272
  %i.mx = load i64, ptr %.162.lcssa.i274, align 1
  store i64 %i.mx, ptr %.166.lcssa.i273, align 1
  %i.my = getelementptr inbounds nuw i8, ptr %.166.lcssa.i273, i64 8
  %i.mz = getelementptr inbounds nuw i8, ptr %.162.lcssa.i274, i64 8
  %i.na = add nsw i64 %.0.lcssa.i275, -8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge.i272
  %.267.i276 = phi ptr [ %i.my, %bb.ai ], [ %.166.lcssa.i273, %._crit_edge.i272 ] ; 3 uses
  %.263.i277 = phi ptr [ %i.mz, %bb.ai ], [ %.162.lcssa.i274, %._crit_edge.i272 ] ; 3 uses
  %.1.i278 = phi i64 [ %i.na, %bb.ai ], [ %.0.lcssa.i275, %._crit_edge.i272 ] ; 3 uses
  %i.nb = icmp samesign ugt i64 %.1.i278, 3
  br i1 %i.nb, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.nc = load i32, ptr %.263.i277, align 1
  store i32 %i.nc, ptr %.267.i276, align 1
  %i.nd = getelementptr inbounds nuw i8, ptr %.267.i276, i64 4
  %i.ne = getelementptr inbounds nuw i8, ptr %.263.i277, i64 4
  %i.nf = add nsw i64 %.1.i278, -4
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.368.i279 = phi ptr [ %i.nd, %bb.ak ], [ %.267.i276, %bb.aj ] ; 7 uses
  %.364.i280 = phi ptr [ %i.ne, %bb.ak ], [ %.263.i277, %bb.aj ] ; 7 uses
  %.2.i281 = phi i64 [ %i.nf, %bb.ak ], [ %.1.i278, %bb.aj ] ; 11 uses
  %.not7279.i282 = icmp eq i64 %.2.i281, 0
  br i1 %.not7279.i282, label %.loopexit.i288, label %iter.check

iter.check:                                       ; preds = %bb.al
  %.364.i280563 = ptrtoaddr ptr %.364.i280 to i64
  %.368.i279562 = ptrtoaddr ptr %.368.i279 to i64
  %min.iters.check = icmp ult i64 %.2.i281, 8
  %i.ng = sub i64 %.364.i280563, %.368.i279562
  %diff.check = icmp ugt i64 %i.ng, -128
  %or.cond622 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond622, label %.lr.ph84.i283.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check564 = icmp ult i64 %.2.i281, 128
  br i1 %min.iters.check564, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.nh = and i64 %.2.i281, 120
  %n.vec = and i64 %.2.i281, -128                 ; 5 uses
  %i.ni = and i64 %.2.i281, 127
  %i.nj = getelementptr i8, ptr %.364.i280, i64 %n.vec ; 2 uses
  %i.nk = getelementptr i8, ptr %.368.i279, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %.364.i280, i64 %index ; 4 uses
  %next.gep565 = getelementptr i8, ptr %.368.i279, i64 %index ; 4 uses
  %i.nl = getelementptr i8, ptr %next.gep, i64 32
  %i.nm = getelementptr i8, ptr %next.gep, i64 64
  %i.nn = getelementptr i8, ptr %next.gep, i64 96
  %wide.load = load <32 x i8>, ptr %next.gep, align 1, !tbaa !9
  %wide.load566 = load <32 x i8>, ptr %i.nl, align 1, !tbaa !9
  %wide.load567 = load <32 x i8>, ptr %i.nm, align 1, !tbaa !9
  %wide.load568 = load <32 x i8>, ptr %i.nn, align 1, !tbaa !9
  %i.no = getelementptr i8, ptr %next.gep565, i64 32
  %i.np = getelementptr i8, ptr %next.gep565, i64 64
  %i.nq = getelementptr i8, ptr %next.gep565, i64 96
  store <32 x i8> %wide.load, ptr %next.gep565, align 1, !tbaa !9
  store <32 x i8> %wide.load566, ptr %i.no, align 1, !tbaa !9
  store <32 x i8> %wide.load567, ptr %i.np, align 1, !tbaa !9
  store <32 x i8> %wide.load568, ptr %i.nq, align 1, !tbaa !9
  %index.next = add nuw i64 %index, 128           ; 2 uses
  %i.nr = icmp eq i64 %index.next, %n.vec
  br i1 %i.nr, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.2.i281, %n.vec
  br i1 %cmp.n, label %.loopexit.i288, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.nh, 0
  br i1 %min.epilog.iters.check, label %.lr.ph84.i283.preheader, label %vec.epilog.ph, !prof !64

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec571 = and i64 %.2.i281, -8                ; 4 uses
  %i.ns = and i64 %.2.i281, 7
  %i.nt = getelementptr i8, ptr %.364.i280, i64 %n.vec571 ; 2 uses
  %i.nu = getelementptr i8, ptr %.368.i279, i64 %n.vec571 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index572 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next576, %vec.epilog.vector.body ] ; 3 uses
  %next.gep573 = getelementptr i8, ptr %.364.i280, i64 %index572
  %next.gep574 = getelementptr i8, ptr %.368.i279, i64 %index572
  %wide.load575 = load <8 x i8>, ptr %next.gep573, align 1, !tbaa !9
  store <8 x i8> %wide.load575, ptr %next.gep574, align 1, !tbaa !9
  %index.next576 = add nuw i64 %index572, 8       ; 2 uses
  %i.nv = icmp eq i64 %index.next576, %n.vec571
  br i1 %i.nv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !25

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n577 = icmp eq i64 %.2.i281, %n.vec571
  br i1 %cmp.n577, label %.loopexit.i288, label %.lr.ph84.i283.preheader

.lr.ph84.i283.preheader:                          ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.382.i284.ph = phi i64 [ %.2.i281, %iter.check ], [ %i.ni, %vec.epilog.iter.check ], [ %i.ns, %vec.epilog.middle.block ] ; 4 uses
  %.481.i285.ph = phi ptr [ %.364.i280, %iter.check ], [ %i.nj, %vec.epilog.iter.check ], [ %i.nt, %vec.epilog.middle.block ] ; 2 uses
  %.46980.i286.ph = phi ptr [ %.368.i279, %iter.check ], [ %i.nk, %vec.epilog.iter.check ], [ %i.nu, %vec.epilog.middle.block ] ; 2 uses
  %i.nw = add i64 %.382.i284.ph, -1
  %xtraiter675 = and i64 %.382.i284.ph, 7         ; 2 uses
  %lcmp.mod676.not = icmp eq i64 %xtraiter675, 0
  br i1 %lcmp.mod676.not, label %.lr.ph84.i283.prol.loopexit, label %.lr.ph84.i283.prol

.lr.ph84.i283.prol:                               ; preds = %.lr.ph84.i283.preheader, %.lr.ph84.i283.prol
  %.382.i284.prol = phi i64 [ %i.nx, %.lr.ph84.i283.prol ], [ %.382.i284.ph, %.lr.ph84.i283.preheader ]
  %.481.i285.prol = phi ptr [ %i.ny, %.lr.ph84.i283.prol ], [ %.481.i285.ph, %.lr.ph84.i283.preheader ] ; 2 uses
  %.46980.i286.prol = phi ptr [ %i.oa, %.lr.ph84.i283.prol ], [ %.46980.i286.ph, %.lr.ph84.i283.preheader ] ; 2 uses
  %prol.iter677 = phi i64 [ %prol.iter677.next, %.lr.ph84.i283.prol ], [ 0, %.lr.ph84.i283.preheader ]
  %i.nx = add i64 %.382.i284.prol, -1             ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %.481.i285.prol, i64 1 ; 3 uses
  %i.nz = load i8, ptr %.481.i285.prol, align 1, !tbaa !9
  %i.oa = getelementptr inbounds nuw i8, ptr %.46980.i286.prol, i64 1 ; 3 uses
  store i8 %i.nz, ptr %.46980.i286.prol, align 1, !tbaa !9
  %prol.iter677.next = add i64 %prol.iter677, 1   ; 2 uses
  %prol.iter677.cmp.not = icmp eq i64 %prol.iter677.next, %xtraiter675
  br i1 %prol.iter677.cmp.not, label %.lr.ph84.i283.prol.loopexit, label %.lr.ph84.i283.prol, !llvm.loop !26

.lr.ph84.i283.prol.loopexit:                      ; preds = %.lr.ph84.i283.prol, %.lr.ph84.i283.preheader
  %.lcssa659.unr = phi ptr [ poison, %.lr.ph84.i283.preheader ], [ %i.ny, %.lr.ph84.i283.prol ]
  %.lcssa658.unr = phi ptr [ poison, %.lr.ph84.i283.preheader ], [ %i.oa, %.lr.ph84.i283.prol ]
  %.382.i284.unr = phi i64 [ %.382.i284.ph, %.lr.ph84.i283.preheader ], [ %i.nx, %.lr.ph84.i283.prol ]
  %.481.i285.unr = phi ptr [ %.481.i285.ph, %.lr.ph84.i283.preheader ], [ %i.ny, %.lr.ph84.i283.prol ]
  %.46980.i286.unr = phi ptr [ %.46980.i286.ph, %.lr.ph84.i283.preheader ], [ %i.oa, %.lr.ph84.i283.prol ]
  %i.ob = icmp ult i64 %i.nw, 7
  br i1 %i.ob, label %.loopexit.i288, label %.lr.ph84.i283

.lr.ph84.i283:                                    ; preds = %.lr.ph84.i283.prol.loopexit, %.lr.ph84.i283
  %.382.i284 = phi i64 [ %i.ox, %.lr.ph84.i283 ], [ %.382.i284.unr, %.lr.ph84.i283.prol.loopexit ]
  %.481.i285 = phi ptr [ %i.oy, %.lr.ph84.i283 ], [ %.481.i285.unr, %.lr.ph84.i283.prol.loopexit ] ; 9 uses
  %.46980.i286 = phi ptr [ %i.pa, %.lr.ph84.i283 ], [ %.46980.i286.unr, %.lr.ph84.i283.prol.loopexit ] ; 9 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %.481.i285, i64 1
  %i.od = load i8, ptr %.481.i285, align 1, !tbaa !9
  %i.oe = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 1
  store i8 %i.od, ptr %.46980.i286, align 1, !tbaa !9
  %i.of = getelementptr inbounds nuw i8, ptr %.481.i285, i64 2
  %i.og = load i8, ptr %i.oc, align 1, !tbaa !9
  %i.oh = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 2
  store i8 %i.og, ptr %i.oe, align 1, !tbaa !9
  %i.oi = getelementptr inbounds nuw i8, ptr %.481.i285, i64 3
  %i.oj = load i8, ptr %i.of, align 1, !tbaa !9
  %i.ok = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 3
  store i8 %i.oj, ptr %i.oh, align 1, !tbaa !9
  %i.ol = getelementptr inbounds nuw i8, ptr %.481.i285, i64 4
  %i.om = load i8, ptr %i.oi, align 1, !tbaa !9
  %i.on = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 4
  store i8 %i.om, ptr %i.ok, align 1, !tbaa !9
  %i.oo = getelementptr inbounds nuw i8, ptr %.481.i285, i64 5
  %i.op = load i8, ptr %i.ol, align 1, !tbaa !9
  %i.oq = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 5
  store i8 %i.op, ptr %i.on, align 1, !tbaa !9
  %i.or = getelementptr inbounds nuw i8, ptr %.481.i285, i64 6
  %i.os = load i8, ptr %i.oo, align 1, !tbaa !9
  %i.ot = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 6
  store i8 %i.os, ptr %i.oq, align 1, !tbaa !9
  %i.ou = getelementptr inbounds nuw i8, ptr %.481.i285, i64 7
  %i.ov = load i8, ptr %i.or, align 1, !tbaa !9
  %i.ow = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 7
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !9
  %i.ox = add i64 %.382.i284, -8                  ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.481.i285, i64 8 ; 2 uses
  %i.oz = load i8, ptr %i.ou, align 1, !tbaa !9
  %i.pa = getelementptr inbounds nuw i8, ptr %.46980.i286, i64 8 ; 2 uses
  store i8 %i.oz, ptr %i.ow, align 1, !tbaa !9
  %.not72.i287.7 = icmp eq i64 %i.ox, 0
  br i1 %.not72.i287.7, label %.loopexit.i288, label %.lr.ph84.i283, !llvm.loop !27

bb.am:                                            ; preds = %CHUNKCOPY_SAFE.exit
  %i.pb = zext nneg i32 %.0322 to i64             ; 2 uses
  %i.pc = icmp eq ptr %.2216, %.0
  br i1 %i.pc, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.pd = getelementptr inbounds nuw i8, ptr %.2216, i64 %i.pb
  br label %CHUNKCOPY_SAFE.exit261

bb.ao:                                            ; preds = %bb.am
  %i.pe = ptrtoint ptr %.2216 to i64
  %i.pf = sub i64 %i.bc, %i.pe
  %i.pg = tail call i64 @llvm.umin.i64(i64 range(i64 0, 4294967296) %i.pb, i64 %i.pf)
  %i.ph = trunc nuw nsw i64 %i.pg to i32
  %i.pi = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.2216, ptr noundef %.0, i32 noundef %i.ph)
  br label %CHUNKCOPY_SAFE.exit261

bb.ap:                                            ; preds = %._crit_edge374
  %.not253 = icmp samesign ule i64 %i.dw, %i.fd
  %i.pj = icmp samesign ugt i64 %i.fd, 31
  %or.cond325 = select i1 %.not253, i1 true, i1 %i.pj
  %i.pk = sub nsw i64 0, %i.fd
  %i.pl = getelementptr inbounds i8, ptr %.1215462, i64 %i.pk ; 4 uses
  br i1 %or.cond325, label %bb.aq, label %bb.at

bb.aq:                                            ; preds = %bb.ap
  %i.pm = and i32 %i.dx, 31                       ; 3 uses
  %i.pn = icmp samesign ult i64 %i.dw, 32
  br i1 %i.pn, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.po = tail call i32 @llvm.x86.bmi.bzhi.32(i32 -1, i32 range(i32 0, 32) %i.pm)
  %i.pp = bitcast i32 %i.po to <32 x i1>          ; 2 uses
  %i.pq = tail call <32 x i8> @llvm.masked.load.v32i8.p0(ptr readonly align 1 %i.pl, <32 x i1> %i.pp, <32 x i8> zeroinitializer)
  tail call void @llvm.masked.store.v32i8.p0(<32 x i8> %i.pq, ptr align 1 %.1215462, <32 x i1> %i.pp)
  %i.pr = getelementptr inbounds nuw i8, ptr %.1215462, i64 %i.dw
  br label %CHUNKCOPY_SAFE.exit261

bb.as:                                            ; preds = %bb.aq
  %.val.i299 = load <4 x i64>, ptr %i.pl, align 1, !tbaa !9
  %i.ps = icmp eq i32 %i.pm, 0
  %narrow.i = select i1 %i.ps, i32 32, i32 %i.pm  ; 2 uses
  store <4 x i64> %.val.i299, ptr %.1215462, align 1, !tbaa !9
  %i.pt = zext nneg i32 %narrow.i to i64          ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %.1215462, i64 %i.pt ; 2 uses
  %i.pv = sub nuw nsw i32 %i.dx, %narrow.i        ; 2 uses
  %.not32.i = icmp eq i32 %i.pv, 0
  br i1 %.not32.i, label %CHUNKCOPY_SAFE.exit261, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.as
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pl, i64 %i.pt
  br label %.lr.ph.i300

.lr.ph.i300:                                      ; preds = %.lr.ph.i300, %.lr.ph.preheader.i
  %.02635.i = phi i32 [ %i.pz, %.lr.ph.i300 ], [ %i.pv, %.lr.ph.preheader.i ]
  %.02734.i = phi ptr [ %i.py, %.lr.ph.i300 ], [ %i.pw, %.lr.ph.preheader.i ] ; 2 uses
  %.02833.i = phi ptr [ %i.px, %.lr.ph.i300 ], [ %i.pu, %.lr.ph.preheader.i ] ; 2 uses
  %.027.val.i = load <4 x i64>, ptr %.02734.i, align 1, !tbaa !9
  store <4 x i64> %.027.val.i, ptr %.02833.i, align 1, !tbaa !9
  %i.px = getelementptr inbounds nuw i8, ptr %.02833.i, i64 32 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %.02734.i, i64 32
  %i.pz = add i32 %.02635.i, -32                  ; 2 uses
  %.not.i301 = icmp eq i32 %i.pz, 0
  br i1 %.not.i301, label %CHUNKCOPY_SAFE.exit261, label %.lr.ph.i300, !llvm.loop !0

bb.at:                                            ; preds = %bb.ap
  %i.qa = tail call fastcc ptr @chunkmemset_avx512(ptr noundef %.1215462, ptr noundef %i.pl, i32 noundef %i.dx)
  br label %CHUNKCOPY_SAFE.exit261

.lr.ph373:                                        ; preds = %bb.i, %bb.au
  %i.qb = phi i32 [ %i.qv, %bb.au ], [ %i.eu, %bb.i ] ; 2 uses
  %i.qc = phi i32 [ %i.qt, %bb.au ], [ %i.es, %bb.i ] ; 2 uses
  %i.qd = phi i64 [ %i.qs, %bb.au ], [ %i.er, %bb.i ] ; 3 uses
  %.2371 = phi ptr [ %i.qn, %bb.au ], [ %i.ec, %bb.i ]
  %i.qe = and i32 %i.qb, 64
  %i.qf = icmp eq i32 %i.qe, 0
  br i1 %i.qf, label %bb.au, label %bb.av
end_hunk_0
