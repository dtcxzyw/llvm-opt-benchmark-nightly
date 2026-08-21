inline.NumInlined: 51
inline.NumDeleted: 19
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 23
begin_hunk_0_@multilevel_spring_electrical_embedding:bb.a
  br i1 %i.gq, label %middle.block735, label %vector.body732, !llvm.loop !115

middle.block735:                                  ; preds = %vector.body732
  %cmp.n736 = icmp eq i64 %n.vec731, %wide.trip.count.i162
  br i1 %cmp.n736, label %.lr.ph105.preheader.i, label %.lr.ph.i163.preheader

.lr.ph.i163.preheader:                            ; preds = %.lr.ph.preheader.i161, %middle.block735
  %indvars.iv.i164.ph = phi i64 [ 0, %.lr.ph.preheader.i161 ], [ %n.vec731, %middle.block735 ]
  br label %.lr.ph.i163

.lr.ph105.preheader.i:                            ; preds = %.lr.ph.i163, %middle.block735, %gv_calloc.exit.i172
  %i.gr = phi ptr [ %i.gn, %gv_calloc.exit.i172 ], [ %i.gi, %middle.block735 ], [ %i.gi, %.lr.ph.i163 ] ; 16 uses
  %min.iters.check739 = icmp ult i32 %5, 8
  br i1 %min.iters.check739, label %.lr.ph105.i.preheader, label %vector.ph740

vector.ph740:                                     ; preds = %.lr.ph105.preheader.i
  %n.vec741 = and i64 %wide.trip.count124.i, 2147483640 ; 3 uses
  %broadcast.splatinsert742 = insertelement <4 x i32> poison, i32 %i.ge, i64 0
  %broadcast.splat743 = shufflevector <4 x i32> %broadcast.splatinsert742, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body744

vector.body744:                                   ; preds = %pred.store.continue759, %vector.ph740
  %index745 = phi i64 [ 0, %vector.ph740 ], [ %index.next760, %pred.store.continue759 ] ; 3 uses
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index745
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %index745
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %i.gv = load <4 x i32>, ptr %i.gs, align 4, !tbaa !39 ; 6 uses
  %i.gw = load <4 x i32>, ptr %i.gu, align 4, !tbaa !39 ; 6 uses
  %i.gx = icmp sgt <4 x i32> %i.gv, splat (i32 -1)
  %i.gy = icmp sgt <4 x i32> %i.gw, splat (i32 -1)
  %i.gz = icmp slt <4 x i32> %i.gv, %broadcast.splat743
  %i.ha = icmp slt <4 x i32> %i.gw, %broadcast.splat743
  %i.hb = and <4 x i1> %i.gx, %i.gz               ; 4 uses
  %i.hc = and <4 x i1> %i.gy, %i.ha               ; 4 uses
  %i.hd = extractelement <4 x i1> %i.hb, i64 0
  br i1 %i.hd, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body744
  %i.he = extractelement <4 x i32> %i.gv, i64 0
  %i.hf = zext nneg i32 %i.he to i64
  %i.hg = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hf
  store i32 -1, ptr %i.hg, align 4, !tbaa !39
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body744
  %i.hh = extractelement <4 x i1> %i.hb, i64 1
  br i1 %i.hh, label %pred.store.if746, label %pred.store.continue747

pred.store.if746:                                 ; preds = %pred.store.continue
  %i.hi = extractelement <4 x i32> %i.gv, i64 1
  %i.hj = zext nneg i32 %i.hi to i64
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hj
  store i32 -1, ptr %i.hk, align 4, !tbaa !39
  br label %pred.store.continue747

pred.store.continue747:                           ; preds = %pred.store.if746, %pred.store.continue
  %i.hl = extractelement <4 x i1> %i.hb, i64 2
  br i1 %i.hl, label %pred.store.if748, label %pred.store.continue749

pred.store.if748:                                 ; preds = %pred.store.continue747
  %i.hm = extractelement <4 x i32> %i.gv, i64 2
  %i.hn = zext nneg i32 %i.hm to i64
  %i.ho = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hn
  store i32 -1, ptr %i.ho, align 4, !tbaa !39
  br label %pred.store.continue749

pred.store.continue749:                           ; preds = %pred.store.if748, %pred.store.continue747
  %i.hp = extractelement <4 x i1> %i.hb, i64 3
  br i1 %i.hp, label %pred.store.if750, label %pred.store.continue751

pred.store.if750:                                 ; preds = %pred.store.continue749
  %i.hq = extractelement <4 x i32> %i.gv, i64 3
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hr
  store i32 -1, ptr %i.hs, align 4, !tbaa !39
  br label %pred.store.continue751

pred.store.continue751:                           ; preds = %pred.store.if750, %pred.store.continue749
  %i.ht = extractelement <4 x i1> %i.hc, i64 0
  br i1 %i.ht, label %pred.store.if752, label %pred.store.continue753

pred.store.if752:                                 ; preds = %pred.store.continue751
  %i.hu = extractelement <4 x i32> %i.gw, i64 0
  %i.hv = zext nneg i32 %i.hu to i64
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hv
  store i32 -1, ptr %i.hw, align 4, !tbaa !39
  br label %pred.store.continue753

pred.store.continue753:                           ; preds = %pred.store.if752, %pred.store.continue751
  %i.hx = extractelement <4 x i1> %i.hc, i64 1
  br i1 %i.hx, label %pred.store.if754, label %pred.store.continue755

pred.store.if754:                                 ; preds = %pred.store.continue753
  %i.hy = extractelement <4 x i32> %i.gw, i64 1
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.hz
  store i32 -1, ptr %i.ia, align 4, !tbaa !39
  br label %pred.store.continue755

pred.store.continue755:                           ; preds = %pred.store.if754, %pred.store.continue753
  %i.ib = extractelement <4 x i1> %i.hc, i64 2
  br i1 %i.ib, label %pred.store.if756, label %pred.store.continue757

pred.store.if756:                                 ; preds = %pred.store.continue755
  %i.ic = extractelement <4 x i32> %i.gw, i64 2
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.id
  store i32 -1, ptr %i.ie, align 4, !tbaa !39
  br label %pred.store.continue757

pred.store.continue757:                           ; preds = %pred.store.if756, %pred.store.continue755
  %i.if = extractelement <4 x i1> %i.hc, i64 3
  br i1 %i.if, label %pred.store.if758, label %pred.store.continue759

pred.store.if758:                                 ; preds = %pred.store.continue757
  %i.ig = extractelement <4 x i32> %i.gw, i64 3
  %i.ih = zext nneg i32 %i.ig to i64
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ih
  store i32 -1, ptr %i.ii, align 4, !tbaa !39
  br label %pred.store.continue759

pred.store.continue759:                           ; preds = %pred.store.if758, %pred.store.continue757
  %index.next760 = add nuw i64 %index745, 8       ; 2 uses
  %i.ij = icmp eq i64 %index.next760, %n.vec741
  br i1 %i.ij, label %middle.block761, label %vector.body744, !llvm.loop !116

middle.block761:                                  ; preds = %pred.store.continue759
  %cmp.n762 = icmp eq i64 %n.vec741, %wide.trip.count124.i
  br i1 %cmp.n762, label %.preheader101.i, label %.lr.ph105.i.preheader

.lr.ph105.i.preheader:                            ; preds = %.lr.ph105.preheader.i, %middle.block761
  %indvars.iv119.i.ph = phi i64 [ 0, %.lr.ph105.preheader.i ], [ %n.vec741, %middle.block761 ]
  br label %.lr.ph105.i

.lr.ph.i163:                                      ; preds = %.lr.ph.i163.preheader, %.lr.ph.i163
  %indvars.iv.i164 = phi i64 [ %indvars.iv.next.i165, %.lr.ph.i163 ], [ %indvars.iv.i164.ph, %.lr.ph.i163.preheader ] ; 2 uses
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.gi, i64 %indvars.iv.i164
  store i32 1, ptr %i.ik, align 4, !tbaa !39
  %indvars.iv.next.i165 = add nuw nsw i64 %indvars.iv.i164, 1 ; 2 uses
  %exitcond.not.i166 = icmp eq i64 %indvars.iv.next.i165, %wide.trip.count.i162
  br i1 %exitcond.not.i166, label %.lr.ph105.preheader.i, label %.lr.ph.i163, !llvm.loop !117

.preheader101.i:                                  ; preds = %bb.aq, %middle.block761
  br i1 %.not.i.not.i159, label %.preheader101.i..lr.ph117.i170_crit_edge, label %.lr.ph108.preheader.i

.preheader101.i..lr.ph117.i170_crit_edge:         ; preds = %.preheader101.i
  %.pre330 = zext nneg i32 %0 to i64              ; 2 uses
  %.pre331 = shl nuw nsw i64 %.pre330, 3
  br label %.lr.ph117.i170

.lr.ph108.preheader.i:                            ; preds = %.preheader101.i
  %wide.trip.count127.i = zext i32 %i.ge to i64   ; 5 uses
  %i.il = add nsw i64 %wide.trip.count127.i, -1   ; 2 uses
  %xtraiter894 = and i64 %wide.trip.count127.i, 1
  %i.im = icmp eq i64 %i.il, 0
  br i1 %i.im, label %.lr.ph108.i.epil.preheader, label %.lr.ph108.preheader.i.new

.lr.ph108.preheader.i.new:                        ; preds = %.lr.ph108.preheader.i
  %unroll_iter898 = and i64 %wide.trip.count127.i, 4294967294
  br label %.lr.ph108.i

.lr.ph105.i:                                      ; preds = %.lr.ph105.i.preheader, %bb.aq
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %bb.aq ], [ %indvars.iv119.i.ph, %.lr.ph105.i.preheader ] ; 2 uses
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv119.i
  %i.io = load i32, ptr %i.in, align 4, !tbaa !39 ; 3 uses
  %i.ip = icmp sgt i32 %i.io, -1
  %i.iq = icmp slt i32 %i.io, %i.ge
  %or.cond.i = and i1 %i.ip, %i.iq
  br i1 %or.cond.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %.lr.ph105.i
  %i.ir = zext nneg i32 %i.io to i64
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %i.ir
  store i32 -1, ptr %i.is, align 4, !tbaa !39
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %.lr.ph105.i
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond123.not.i = icmp eq i64 %indvars.iv.next120.i, %wide.trip.count124.i
  br i1 %exitcond123.not.i, label %.preheader101.i, label %.lr.ph105.i, !llvm.loop !118

.preheader100.i.unr-lcssa:                        ; preds = %bb.au
  %lcmp.mod896.not = icmp eq i64 %xtraiter894, 0
  br i1 %lcmp.mod896.not, label %.preheader100.i, label %.lr.ph108.i.epil.preheader

.lr.ph108.i.epil.preheader:                       ; preds = %.preheader100.i.unr-lcssa, %.lr.ph108.preheader.i
  %indvars.iv124.i.epil.init = phi i64 [ 0, %.lr.ph108.preheader.i ], [ %indvars.iv.next125.i.1, %.preheader100.i.unr-lcssa ]
  %.0107.i.epil.init = phi i32 [ 0, %.lr.ph108.preheader.i ], [ %.1.i167.1, %.preheader100.i.unr-lcssa ]
  %lcmp.mod897 = trunc i32 %i.ge to i1
  call void @llvm.assume(i1 %lcmp.mod897)
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv124.i.epil.init ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !39
  %i.iv = icmp sgt i32 %i.iu, -1
  br i1 %i.iv, label %bb.ar, label %.preheader100.i

bb.ar:                                            ; preds = %.lr.ph108.i.epil.preheader
  store i32 %.0107.i.epil.init, ptr %i.it, align 4, !tbaa !39
  br label %.preheader100.i

.preheader100.i:                                  ; preds = %.lr.ph108.i.epil.preheader, %bb.ar, %.preheader100.i.unr-lcssa
  %i.iw = zext nneg i32 %0 to i64                 ; 4 uses
  %i.ix = shl nuw nsw i64 %i.iw, 3                ; 9 uses
  %xtraiter900 = and i64 %wide.trip.count127.i, 1
  %i.iy = icmp eq i64 %i.il, 0
  br i1 %i.iy, label %.lr.ph111.i.epil.preheader, label %.preheader100.i.new

.preheader100.i.new:                              ; preds = %.preheader100.i
  %unroll_iter904 = and i64 %wide.trip.count127.i, 4294967294
  br label %.lr.ph111.i

.lr.ph108.i:                                      ; preds = %bb.au, %.lr.ph108.preheader.i.new
  %indvars.iv124.i = phi i64 [ 0, %.lr.ph108.preheader.i.new ], [ %indvars.iv.next125.i.1, %bb.au ] ; 3 uses
  %.0107.i = phi i32 [ 0, %.lr.ph108.preheader.i.new ], [ %.1.i167.1, %bb.au ] ; 3 uses
  %niter899 = phi i64 [ 0, %.lr.ph108.preheader.i.new ], [ %niter899.next.1, %bb.au ]
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv124.i ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !39
  %i.jb = icmp sgt i32 %i.ja, -1
  br i1 %i.jb, label %bb.as, label %.lr.ph108.i.1

bb.as:                                            ; preds = %.lr.ph108.i
  %i.jc = add nsw i32 %.0107.i, 1
  store i32 %.0107.i, ptr %i.iz, align 4, !tbaa !39
  br label %.lr.ph108.i.1

.lr.ph108.i.1:                                    ; preds = %bb.as, %.lr.ph108.i
  %.1.i167 = phi i32 [ %i.jc, %bb.as ], [ %.0107.i, %.lr.ph108.i ] ; 3 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv124.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 4 ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !39
  %i.jg = icmp sgt i32 %i.jf, -1
  br i1 %i.jg, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.lr.ph108.i.1
  %i.jh = add nsw i32 %.1.i167, 1
  store i32 %.1.i167, ptr %i.je, align 4, !tbaa !39
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.lr.ph108.i.1
  %.1.i167.1 = phi i32 [ %i.jh, %bb.at ], [ %.1.i167, %.lr.ph108.i.1 ] ; 2 uses
  %indvars.iv.next125.i.1 = add nuw nsw i64 %indvars.iv124.i, 2 ; 2 uses
  %niter899.next.1 = add i64 %niter899, 2         ; 2 uses
  %niter899.ncmp.1 = icmp eq i64 %niter899.next.1, %unroll_iter898
  br i1 %niter899.ncmp.1, label %.preheader100.i.unr-lcssa, label %.lr.ph108.i, !llvm.loop !119

.lr.ph117.i170.loopexit.unr-lcssa:                ; preds = %.loopexit.i168.1
  %lcmp.mod902.not = icmp eq i64 %xtraiter900, 0
  br i1 %lcmp.mod902.not, label %.lr.ph117.i170, label %.lr.ph111.i.epil.preheader

.lr.ph111.i.epil.preheader:                       ; preds = %.lr.ph117.i170.loopexit.unr-lcssa, %.preheader100.i
  %indvars.iv135.i.epil.init = phi i64 [ 0, %.preheader100.i ], [ %indvars.iv.next136.i.1, %.lr.ph117.i170.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod903 = trunc i32 %i.ge to i1
  call void @llvm.assume(i1 %lcmp.mod903)
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv135.i.epil.init
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !39 ; 2 uses
  %i.jk = icmp sgt i32 %i.jj, -1
  br i1 %i.jk, label %.preheader99.i.epil, label %.lr.ph117.i170

.preheader99.i.epil:                              ; preds = %.lr.ph111.i.epil.preheader
  %13 = mul i64 %i.ix, %indvars.iv135.i.epil.init
  %scevgep.epil = getelementptr i8, ptr %4, i64 %13
  %14 = mul nuw nsw i32 %i.jj, %0
  %15 = zext nneg i32 %14 to i64
  %invariant.gep.i.epil.a = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %15
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.epil, ptr align 8 %invariant.gep.i.epil.a, i64 %i.ix, i1 false), !tbaa !8
  br label %.lr.ph117.i170

.lr.ph117.i170:                                   ; preds = %.lr.ph117.i170.loopexit.unr-lcssa, %.preheader99.i.epil, %.lr.ph111.i.epil.preheader, %.preheader101.i..lr.ph117.i170_crit_edge
  %.pre-phi332 = phi i64 [ %.pre331, %.preheader101.i..lr.ph117.i170_crit_edge ], [ %i.ix, %.lr.ph111.i.epil.preheader ], [ %i.ix, %.preheader99.i.epil ], [ %i.ix, %.lr.ph117.i170.loopexit.unr-lcssa ]
  %.pre-phi = phi i64 [ %.pre330, %.preheader101.i..lr.ph117.i170_crit_edge ], [ %i.iw, %.lr.ph111.i.epil.preheader ], [ %i.iw, %.preheader99.i.epil ], [ %i.iw, %.lr.ph117.i170.loopexit.unr-lcssa ] ; 11 uses
  %i.jl = load ptr, ptr %i.ah, align 8, !tbaa !33
  %i.jm = shl nuw nsw i64 %.pre-phi, 3            ; 2 uses
  %scevgep778 = getelementptr i8, ptr %4, i64 %i.jm
  %scevgep780 = getelementptr i8, ptr %4, i64 %i.jm
  %min.iters.check786 = icmp samesign ult i64 %.pre-phi, 4
  %n.vec788 = and i64 %.pre-phi, 2147483644       ; 3 uses
  %cmp.n797 = icmp eq i64 %.pre-phi, %n.vec788
  %xtraiter906 = and i64 %.pre-phi, 3             ; 2 uses
  %lcmp.mod907.not = icmp eq i64 %xtraiter906, 0
  %min.iters.check765 = icmp samesign ult i64 %.pre-phi, 2
  %n.vec767 = and i64 %.pre-phi, 2147483646       ; 3 uses
  %cmp.n775 = icmp eq i64 %.pre-phi, %n.vec767
  br label %.preheader97.i

.lr.ph111.i:                                      ; preds = %.loopexit.i168.1, %.preheader100.i.new
  %indvars.iv135.i = phi i64 [ 0, %.preheader100.i.new ], [ %indvars.iv.next136.i.1, %.loopexit.i168.1 ] ; 4 uses
  %niter905 = phi i64 [ 0, %.preheader100.i.new ], [ %niter905.next.1, %.loopexit.i168.1 ]
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv135.i
  %i.jo = load i32, ptr %i.jn, align 4, !tbaa !39 ; 2 uses
  %i.jp = icmp sgt i32 %i.jo, -1
  br i1 %i.jp, label %.preheader99.i, label %.loopexit.i168

.preheader99.i:                                   ; preds = %.lr.ph111.i
  %16 = mul i64 %i.ix, %indvars.iv135.i
  %scevgep = getelementptr i8, ptr %4, i64 %16
  %17 = mul nuw nsw i32 %i.jo, %0
  %18 = zext nneg i32 %17 to i64
  %invariant.gep.i.a = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %18
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep, ptr align 8 %invariant.gep.i.a, i64 %i.ix, i1 false), !tbaa !8
  br label %.loopexit.i168

.loopexit.i168:                                   ; preds = %.preheader99.i, %.lr.ph111.i
  %indvars.iv.next136.i = or disjoint i64 %indvars.iv135.i, 1 ; 2 uses
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.gr, i64 %indvars.iv.next136.i
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !39 ; 2 uses
  %i.js = icmp sgt i32 %i.jr, -1
  br i1 %i.js, label %.preheader99.i.1, label %.loopexit.i168.1

.preheader99.i.1:                                 ; preds = %.loopexit.i168
  %19 = mul i64 %i.ix, %indvars.iv.next136.i
  %scevgep.1 = getelementptr i8, ptr %4, i64 %19
  %20 = mul nuw nsw i32 %i.jr, %0
  %21 = zext nneg i32 %20 to i64
  %invariant.gep.i.1.a = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %21
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %scevgep.1, ptr align 8 %invariant.gep.i.1.a, i64 %i.ix, i1 false), !tbaa !8
  br label %.loopexit.i168.1

.loopexit.i168.1:                                 ; preds = %.preheader99.i.1, %.loopexit.i168
  %indvars.iv.next136.i.1 = add nuw nsw i64 %indvars.iv135.i, 2 ; 2 uses
  %niter905.next.1 = add i64 %niter905, 2         ; 2 uses
  %niter905.ncmp.1 = icmp eq i64 %niter905.next.1, %unroll_iter904
  br i1 %niter905.ncmp.1, label %.lr.ph117.i170.loopexit.unr-lcssa, label %.lr.ph111.i, !llvm.loop !120

.preheader97.i:                                   ; preds = %.loopexit799, %.lr.ph117.i170
  %indvars.iv158.i = phi i64 [ 0, %.lr.ph117.i170 ], [ %indvars.iv.next159.i, %.loopexit799 ] ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %6, i64 %indvars.iv158.i
  %i.ju = load i32, ptr %i.jt, align 4, !tbaa !39 ; 2 uses
  %i.jv = sext i32 %i.ju to i64
  %i.jw = getelementptr [4 x i8], ptr %i.jl, i64 %i.jv ; 2 uses
  %i.jx = getelementptr i8, ptr %i.jw, i64 4
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !39 ; 3 uses
  %i.jz = load i32, ptr %i.jw, align 4, !tbaa !39 ; 3 uses
  %i.ka = mul nsw i32 %i.ju, %0
  %i.kb = sext i32 %i.ka to i64                   ; 4 uses
  %i.kc = shl nsw i64 %i.kb, 3
  %scevgep.i = getelementptr i8, ptr %4, i64 %i.kc
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %.pre-phi332, i1 false), !tbaa !8
  %i.kd = sub nsw i32 %i.jy, %i.jz
  %i.ke = sitofp i32 %i.kd to double              ; 2 uses
  %i.kf = icmp slt i32 %i.jz, %i.jy
  br i1 %i.kf, label %.preheader.lr.ph.i, label %.preheader96.i

.preheader.lr.ph.i:                               ; preds = %.preheader97.i
  %i.kg = load ptr, ptr %i.aj, align 8, !tbaa !37
  %i.kh = sext i32 %i.jz to i64
  %wide.trip.count151.i = sext i32 %i.jy to i64
  %invariant.gep175.i = getelementptr [8 x i8], ptr %4, i64 %i.kb ; 7 uses
  %i.ki = shl nsw i64 %i.kb, 3
  %scevgep779 = getelementptr i8, ptr %scevgep778, i64 %i.ki
  br label %.preheader.i171

.preheader96.i:                                   ; preds = %.loopexit, %.preheader97.i
  %invariant.gep177.i = getelementptr [8 x i8], ptr %4, i64 %i.kb ; 2 uses
  br i1 %min.iters.check765, label %scalar.ph764.preheader, label %vector.ph766

vector.ph766:                                     ; preds = %.preheader96.i
  %broadcast.splatinsert768 = insertelement <2 x double> poison, double %i.ke, i64 0
  %broadcast.splat769 = shufflevector <2 x double> %broadcast.splatinsert768, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body770

vector.body770:                                   ; preds = %vector.body770, %vector.ph766
  %index771 = phi i64 [ 0, %vector.ph766 ], [ %index.next773, %vector.body770 ] ; 2 uses
  %i.kj = getelementptr [8 x i8], ptr %invariant.gep177.i, i64 %index771 ; 2 uses
  %wide.load772 = load <2 x double>, ptr %i.kj, align 8, !tbaa !8
  %i.kk = fdiv <2 x double> %wide.load772, %broadcast.splat769
  store <2 x double> %i.kk, ptr %i.kj, align 8, !tbaa !8
  %index.next773 = add nuw i64 %index771, 2       ; 2 uses
  %i.kl = icmp eq i64 %index.next773, %n.vec767
  br i1 %i.kl, label %middle.block774, label %vector.body770, !llvm.loop !121

middle.block774:                                  ; preds = %vector.body770
  br i1 %cmp.n775, label %.loopexit799, label %scalar.ph764.preheader

scalar.ph764.preheader:                           ; preds = %.preheader96.i, %middle.block774
  %indvars.iv153.i.ph = phi i64 [ 0, %.preheader96.i ], [ %n.vec767, %middle.block774 ]
  br label %scalar.ph764

.preheader.i171:                                  ; preds = %.loopexit, %.preheader.lr.ph.i
  %indvars.iv148.i = phi i64 [ %i.kh, %.preheader.lr.ph.i ], [ %indvars.iv.next149.i, %.loopexit ] ; 2 uses
  %i.km = getelementptr inbounds [4 x i8], ptr %i.kg, i64 %indvars.iv148.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !39
  %i.ko = mul nsw i32 %i.kn, %0
  %i.kp = sext i32 %i.ko to i64                   ; 2 uses
  %invariant.gep173.i = getelementptr [8 x i8], ptr %4, i64 %i.kp ; 7 uses
  br i1 %min.iters.check786, label %scalar.ph785.preheader, label %vector.memcheck777

vector.memcheck777:                               ; preds = %.preheader.i171
  %i.kq = shl nsw i64 %i.kp, 3
  %scevgep781 = getelementptr i8, ptr %scevgep780, i64 %i.kq
  %bound0782 = icmp ult ptr %invariant.gep175.i, %scevgep781
  %bound1783 = icmp ult ptr %invariant.gep173.i, %scevgep779
  %found.conflict784 = and i1 %bound0782, %bound1783
  br i1 %found.conflict784, label %scalar.ph785.preheader, label %vector.body789

vector.body789:                                   ; preds = %vector.memcheck777, %vector.body789
  %index790 = phi i64 [ %index.next795, %vector.body789 ], [ 0, %vector.memcheck777 ] ; 3 uses
  %i.kr = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %index790 ; 2 uses
  %i.ks = getelementptr i8, ptr %i.kr, i64 16
  %wide.load791 = load <2 x double>, ptr %i.kr, align 8, !tbaa !8, !alias.scope !122
  %wide.load792 = load <2 x double>, ptr %i.ks, align 8, !tbaa !8, !alias.scope !122
  %i.kt = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %index790 ; 3 uses
  %i.ku = getelementptr i8, ptr %i.kt, i64 16     ; 2 uses
  %wide.load793 = load <2 x double>, ptr %i.kt, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %wide.load794 = load <2 x double>, ptr %i.ku, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %i.kv = fadd <2 x double> %wide.load791, %wide.load793
  %i.kw = fadd <2 x double> %wide.load792, %wide.load794
  store <2 x double> %i.kv, ptr %i.kt, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  store <2 x double> %i.kw, ptr %i.ku, align 8, !tbaa !8, !alias.scope !125, !noalias !122
  %index.next795 = add nuw i64 %index790, 4       ; 2 uses
  %i.kx = icmp eq i64 %index.next795, %n.vec788
  br i1 %i.kx, label %middle.block796, label %vector.body789, !llvm.loop !127

middle.block796:                                  ; preds = %vector.body789
  br i1 %cmp.n797, label %.loopexit, label %scalar.ph785.preheader

scalar.ph785.preheader:                           ; preds = %vector.memcheck777, %.preheader.i171, %middle.block796
  %indvars.iv143.i.ph = phi i64 [ 0, %vector.memcheck777 ], [ 0, %.preheader.i171 ], [ %n.vec788, %middle.block796 ] ; 3 uses
  br i1 %lcmp.mod907.not, label %scalar.ph785.prol.loopexit, label %scalar.ph785.prol

scalar.ph785.prol:                                ; preds = %scalar.ph785.preheader, %scalar.ph785.prol
  %indvars.iv143.i.prol = phi i64 [ %indvars.iv.next144.i.prol, %scalar.ph785.prol ], [ %indvars.iv143.i.ph, %scalar.ph785.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph785.prol ], [ 0, %scalar.ph785.preheader ]
  %gep174.i.prol = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv143.i.prol
  %i.ky = load double, ptr %gep174.i.prol, align 8, !tbaa !8
  %gep176.i.prol = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv143.i.prol ; 2 uses
  %i.kz = load double, ptr %gep176.i.prol, align 8, !tbaa !8
  %i.la = fadd double %i.ky, %i.kz
  store double %i.la, ptr %gep176.i.prol, align 8, !tbaa !8
  %indvars.iv.next144.i.prol = add nuw nsw i64 %indvars.iv143.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter906
  br i1 %prol.iter.cmp.not, label %scalar.ph785.prol.loopexit, label %scalar.ph785.prol, !llvm.loop !128

scalar.ph785.prol.loopexit:                       ; preds = %scalar.ph785.prol, %scalar.ph785.preheader
  %indvars.iv143.i.unr = phi i64 [ %indvars.iv143.i.ph, %scalar.ph785.preheader ], [ %indvars.iv.next144.i.prol, %scalar.ph785.prol ]
  %i.lb = sub nsw i64 %indvars.iv143.i.ph, %.pre-phi
  %i.lc = icmp ugt i64 %i.lb, -4
  br i1 %i.lc, label %.loopexit, label %scalar.ph785

scalar.ph785:                                     ; preds = %scalar.ph785.prol.loopexit, %scalar.ph785
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i.3, %scalar.ph785 ], [ %indvars.iv143.i.unr, %scalar.ph785.prol.loopexit ] ; 6 uses
  %gep174.i = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv143.i
  %i.ld = load double, ptr %gep174.i, align 8, !tbaa !8
  %gep176.i = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv143.i ; 2 uses
  %i.le = load double, ptr %gep176.i, align 8, !tbaa !8
  %i.lf = fadd double %i.ld, %i.le
  store double %i.lf, ptr %gep176.i, align 8, !tbaa !8
  %indvars.iv.next144.i = add nuw nsw i64 %indvars.iv143.i, 1 ; 2 uses
  %gep174.i.1 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i
  %i.lg = load double, ptr %gep174.i.1, align 8, !tbaa !8
  %gep176.i.1 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i ; 2 uses
  %i.lh = load double, ptr %gep176.i.1, align 8, !tbaa !8
  %i.li = fadd double %i.lg, %i.lh
  store double %i.li, ptr %gep176.i.1, align 8, !tbaa !8
  %indvars.iv.next144.i.1 = add nuw nsw i64 %indvars.iv143.i, 2 ; 2 uses
  %gep174.i.2 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i.1
  %i.lj = load double, ptr %gep174.i.2, align 8, !tbaa !8
  %gep176.i.2 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i.1 ; 2 uses
  %i.lk = load double, ptr %gep176.i.2, align 8, !tbaa !8
  %i.ll = fadd double %i.lj, %i.lk
  store double %i.ll, ptr %gep176.i.2, align 8, !tbaa !8
  %indvars.iv.next144.i.2 = add nuw nsw i64 %indvars.iv143.i, 3 ; 2 uses
  %gep174.i.3 = getelementptr [8 x i8], ptr %invariant.gep173.i, i64 %indvars.iv.next144.i.2
  %i.lm = load double, ptr %gep174.i.3, align 8, !tbaa !8
  %gep176.i.3 = getelementptr [8 x i8], ptr %invariant.gep175.i, i64 %indvars.iv.next144.i.2 ; 2 uses
  %i.ln = load double, ptr %gep176.i.3, align 8, !tbaa !8
  %i.lo = fadd double %i.lm, %i.ln
  store double %i.lo, ptr %gep176.i.3, align 8, !tbaa !8
  %indvars.iv.next144.i.3 = add nuw nsw i64 %indvars.iv143.i, 4 ; 2 uses
  %exitcond147.not.i.3 = icmp eq i64 %indvars.iv.next144.i.3, %.pre-phi
  br i1 %exitcond147.not.i.3, label %.loopexit, label %scalar.ph785, !llvm.loop !129

.loopexit:                                        ; preds = %scalar.ph785.prol.loopexit, %scalar.ph785, %middle.block796
  %indvars.iv.next149.i = add nsw i64 %indvars.iv148.i, 1 ; 2 uses
  %exitcond152.not.i = icmp eq i64 %indvars.iv.next149.i, %wide.trip.count151.i
  br i1 %exitcond152.not.i, label %.preheader96.i, label %.preheader.i171, !llvm.loop !130

scalar.ph764:                                     ; preds = %scalar.ph764.preheader, %scalar.ph764
  %indvars.iv153.i = phi i64 [ %indvars.iv.next154.i, %scalar.ph764 ], [ %indvars.iv153.i.ph, %scalar.ph764.preheader ] ; 2 uses
  %gep178.i = getelementptr [8 x i8], ptr %invariant.gep177.i, i64 %indvars.iv153.i ; 2 uses
  %i.lp = load double, ptr %gep178.i, align 8, !tbaa !8
  %i.lq = fdiv double %i.lp, %i.ke
  store double %i.lq, ptr %gep178.i, align 8, !tbaa !8
  %indvars.iv.next154.i = add nuw nsw i64 %indvars.iv153.i, 1 ; 2 uses
  %exitcond157.not.i = icmp eq i64 %indvars.iv.next154.i, %.pre-phi
  br i1 %exitcond157.not.i, label %.loopexit799, label %scalar.ph764, !llvm.loop !131

.loopexit799:                                     ; preds = %scalar.ph764, %middle.block774
  %indvars.iv.next159.i = add nuw nsw i64 %indvars.iv158.i, 1 ; 2 uses
  %exitcond162.not.i = icmp eq i64 %indvars.iv.next159.i, %wide.trip.count124.i
  br i1 %exitcond162.not.i, label %attach_edge_label_coordinates.exit, label %.preheader97.i, !llvm.loop !132

attach_edge_label_coordinates.exit:               ; preds = %.loopexit799
  call void @free(ptr noundef %i.gr) #22
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !17
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.lu = load double, ptr %i.lt, align 8, !tbaa !20
  %i.lv = load i32, ptr %i.q, align 8, !tbaa !21
  %i.lw = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.lx = load i8, ptr %i.lw, align 8, !tbaa !18, !range !31, !noundef !32
  %i.ly = trunc nuw i8 %i.lx to i1
  call void @remove_overlap(i32 noundef %0, ptr noundef nonnull %.0142, ptr noundef nonnull %4, ptr noundef %3, i32 noundef %i.ls, double noundef %i.lu, i32 noundef %i.lv, i32 noundef %5, ptr noundef %6, ptr noundef nonnull %.0142, i1 noundef zeroext %i.ly) #22
  call void @SparseMatrix_delete(ptr noundef %i.cv) #22
  call void @free(ptr noundef %i.ag) #22
  %.not157 = icmp eq ptr %.0142, %1
  br i1 %.not157, label %bb.fk, label %bb.av

bb.av:                                            ; preds = %attach_edge_label_coordinates.exit
  call void @SparseMatrix_delete(ptr noundef nonnull %.0142) #22
  br label %bb.fk

bb.aw:                                            ; preds = %bb.i, %bb.h
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !10
end_hunk_0
begin_hunk_1_@multilevel_spring_electrical_embedding:bb.a
  %wide.trip.count.i183 = sext i32 %i.ni to i64   ; 2 uses
  %i.nl = sub nsw i64 %wide.trip.count.i183, %i.nk ; 3 uses
  %min.iters.check = icmp ult i64 %i.nl, 8
  br i1 %min.iters.check, label %.lr.ph47.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph47.preheader.i
  %n.vec = and i64 %i.nl, -8                      ; 3 uses
  %i.nm = add nsw i64 %n.vec, %i.nk
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %indvars.iv56.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.gep = getelementptr [4 x i8], ptr %i.mu, i64 %i.nk
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.nu, %vector.body ]
  %vec.phi454 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.nv, %vector.body ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %gep, i64 16
  %wide.load = load <4 x i32>, ptr %gep, align 4, !tbaa !39
  %wide.load455 = load <4 x i32>, ptr %i.nn, align 4, !tbaa !39
  %i.no = zext <4 x i32> %wide.load to <4 x i64>
  %i.np = zext <4 x i32> %wide.load455 to <4 x i64>
  %i.nq = icmp ne <4 x i64> %broadcast.splat, %i.no
  %i.nr = icmp ne <4 x i64> %broadcast.splat, %i.np
  %i.ns = zext <4 x i1> %i.nq to <4 x i32>
  %i.nt = zext <4 x i1> %i.nr to <4 x i32>
  %i.nu = add <4 x i32> %vec.phi, %i.ns           ; 2 uses
  %i.nv = add <4 x i32> %vec.phi454, %i.nt        ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nw = icmp eq i64 %index.next, %n.vec
  br i1 %i.nw, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.nv, %i.nu
  %i.nx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.nl, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i, label %.lr.ph47.i.preheader

.lr.ph47.i.preheader:                             ; preds = %.lr.ph47.preheader.i, %middle.block
  %indvars.iv.i184.ph = phi i64 [ %i.nk, %.lr.ph47.preheader.i ], [ %i.nm, %middle.block ]
  %.03546.i.ph = phi i32 [ 0, %.lr.ph47.preheader.i ], [ %i.nx, %middle.block ]
  br label %.lr.ph47.i

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %indvars.iv.i184 = phi i64 [ %indvars.iv.next.i185, %.lr.ph47.i ], [ %indvars.iv.i184.ph, %.lr.ph47.i.preheader ] ; 2 uses
  %.03546.i = phi i32 [ %spec.select.i, %.lr.ph47.i ], [ %.03546.i.ph, %.lr.ph47.i.preheader ]
  %i.ny = getelementptr inbounds [4 x i8], ptr %i.mu, i64 %indvars.iv.i184
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !39
  %i.oa = zext i32 %i.nz to i64
  %i.ob = icmp ne i64 %indvars.iv56.i, %i.oa
  %i.oc = zext i1 %i.ob to i32
  %spec.select.i = add nuw nsw i32 %.03546.i, %i.oc ; 2 uses
  %indvars.iv.next.i185 = add nsw i64 %indvars.iv.i184, 1 ; 2 uses
  %exitcond.not.i186 = icmp eq i64 %indvars.iv.next.i185, %wide.trip.count.i183
  br i1 %exitcond.not.i186, label %._crit_edge.loopexit.i, label %.lr.ph47.i, !llvm.loop !139

._crit_edge.loopexit.i:                           ; preds = %.lr.ph47.i, %middle.block
  %spec.select.i.lcssa = phi i32 [ %i.nx, %middle.block ], [ %spec.select.i, %.lr.ph47.i ]
  %i.od = zext nneg i32 %spec.select.i.lcssa to i64
  br label %._crit_edge.i182

._crit_edge.i182:                                 ; preds = %._crit_edge.loopexit.i, %.lr.ph51.i
  %.035.lcssa.i = phi i64 [ 0, %.lr.ph51.i ], [ %i.od, %._crit_edge.loopexit.i ]
  %i.oe = getelementptr inbounds nuw [4 x i8], ptr %i.nb, i64 %.035.lcssa.i ; 2 uses
  %i.of = load i32, ptr %i.oe, align 4, !tbaa !39
  %i.og = add nsw i32 %i.of, 1                    ; 2 uses
  store i32 %i.og, ptr %i.oe, align 4, !tbaa !39
  %.039..i = tail call i32 @llvm.smax.i32(i32 %.03949.i, i32 %i.og) ; 2 uses
  %exitcond60.not.i = icmp eq i64 %indvars.iv.next57.i, %wide.trip.count59.i
  br i1 %exitcond60.not.i, label %._crit_edge52.loopexit.i, label %.lr.ph51.i, !llvm.loop !140

._crit_edge52.loopexit.i:                         ; preds = %._crit_edge.i182
  %i.oh = uitofp nneg i32 %.039..i to double
  %i.oi = fmul nnan double %i.oh, 8.000000e-01
  br label %._crit_edge52.i

._crit_edge52.i:                                  ; preds = %._crit_edge52.loopexit.i, %.preheader.i179, %.preheader.thread.i
  %i.oj = phi ptr [ %i.nb, %.preheader.i179 ], [ %i.nb, %._crit_edge52.loopexit.i ], [ %i.my, %.preheader.thread.i ] ; 2 uses
  %.039.lcssa.i = phi double [ 0.000000e+00, %.preheader.i179 ], [ %i.oi, %._crit_edge52.loopexit.i ], [ 0.000000e+00, %.preheader.thread.i ]
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 4
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !39
  %i.om = sitofp i32 %i.ol to double              ; 2 uses
  %i.on = fcmp olt double %.039.lcssa.i, %i.om
  br i1 %i.on, label %bb.bg, label %power_law_graph.exit

bb.bg:                                            ; preds = %._crit_edge52.i
  %i.oo = sitofp i32 %i.mv to double
  %i.op = fmul nnan double %i.oo, 3.000000e-01
  %i.oq = fcmp olt double %i.op, %i.om
  br i1 %i.oq, label %bb.bh, label %power_law_graph.exit

bb.bh:                                            ; preds = %bb.bg
  br label %power_law_graph.exit

power_law_graph.exit:                             ; preds = %._crit_edge52.i, %bb.bg, %bb.bh
  %.0.i = phi double [ -1.800000e+00, %bb.bh ], [ -1.000000e+00, %bb.bg ], [ -1.000000e+00, %._crit_edge52.i ]
  tail call void @free(ptr noundef nonnull %i.oj) #22
  %i.or = load double, ptr %2, align 8, !tbaa !25
  %i.os = fcmp oeq double %i.or, f0xBFF0008164EF6DE2
  br i1 %i.os, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %power_law_graph.exit
  store double %.0.i, ptr %2, align 8
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %power_law_graph.exit
  %i.ot = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.ou = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 7 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ox = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 8 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 5 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  %i.pa = zext nneg i32 %0 to i64                 ; 83 uses
  %i.pb = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.pc = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.pd = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 4
  %i.pe = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.pf = getelementptr inbounds nuw i8, ptr %8, i64 176
  %i.pg = shl nuw nsw i64 %i.pa, 3                ; 13 uses
  %i.ph = shl nuw nsw i64 %i.pa, 3
  %i.pi = shl nuw nsw i64 %i.pa, 3
  %i.pj = shl nuw nsw i64 %i.pa, 3
  %i.pk = shl nuw nsw i64 %i.pa, 3
  %i.pl = shl nuw nsw i64 %i.pa, 3
  %i.pm = add nsw i64 %i.pa, -1                   ; 4 uses
  %xtraiter = and i64 %i.pa, 3                    ; 3 uses
  %i.pn = icmp ult i64 %i.pm, 3
  %unroll_iter = and i64 %i.pa, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod835 = icmp ne i64 %xtraiter, 0
  %min.iters.check658 = icmp ult i32 %0, 4
  %n.vec660 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n675 = icmp eq i64 %n.vec660, %i.pa
  %xtraiter836 = and i64 %i.pa, 1
  %lcmp.mod837.not = icmp eq i64 %xtraiter836, 0
  %i.po = add nsw i64 %i.pa, -1
  %xtraiter839.a = and i64 %i.pa, 3               ; 3 uses
  %i.pp = icmp ult i64 %i.pm, 3
  %unroll_iter844 = and i64 %i.pa, 2147483644
  %lcmp.mod841.not = icmp eq i64 %xtraiter839.a, 0
  %lcmp.mod843 = icmp ne i64 %xtraiter839.a, 0
  %min.iters.check631 = icmp ult i32 %0, 2
  %n.vec633 = and i64 %i.pa, 2147483646           ; 3 uses
  %cmp.n641 = icmp eq i64 %n.vec633, %i.pa
  %min.iters.check615 = icmp ult i32 %0, 4
  %n.vec617 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n628 = icmp eq i64 %n.vec617, %i.pa
  %xtraiter846 = and i64 %i.pa, 1
  %lcmp.mod847.not = icmp eq i64 %xtraiter846, 0
  %i.pq = add nsw i64 %i.pa, -1
  %xtraiter849.a = and i64 %i.pa, 3               ; 3 uses
  %i.pr = icmp ult i64 %i.pm, 3
  %unroll_iter854 = and i64 %i.pa, 2147483644
  %lcmp.mod851.not = icmp eq i64 %xtraiter849.a, 0
  %lcmp.mod853 = icmp ne i64 %xtraiter849.a, 0
  %min.iters.check589 = icmp ult i32 %0, 4
  %n.vec591 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n606 = icmp eq i64 %n.vec591, %i.pa
  %xtraiter856 = and i64 %i.pa, 1
  %lcmp.mod857.not = icmp eq i64 %xtraiter856, 0
  %i.ps = add nsw i64 %i.pa, -1
  %min.iters.check560 = icmp ult i32 %0, 2
  %n.vec562 = and i64 %i.pa, 2147483646           ; 3 uses
  %cmp.n574 = icmp eq i64 %n.vec562, %i.pa
  %xtraiter858 = and i64 %i.pa, 1
  %lcmp.mod859.not.a = icmp eq i64 %xtraiter858, 0
  %i.pt = add nsw i64 %i.pa, -1
  %min.iters.check531 = icmp ult i32 %0, 2
  %n.vec533 = and i64 %i.pa, 2147483646           ; 3 uses
  %cmp.n545 = icmp eq i64 %n.vec533, %i.pa
  %xtraiter860 = and i64 %i.pa, 1
  %lcmp.mod861.not = icmp eq i64 %xtraiter860, 0
  %i.pu = add nsw i64 %i.pa, -1
  %xtraiter864 = and i64 %i.pa, 3                 ; 3 uses
  %i.pv = icmp ult i64 %i.pm, 3
  %unroll_iter870 = and i64 %i.pa, 2147483644
  %lcmp.mod866.not.a = icmp eq i64 %xtraiter864, 0
  %lcmp.mod869 = icmp ne i64 %xtraiter864, 0
  %min.iters.check507 = icmp ult i32 %0, 2
  %n.vec509 = and i64 %i.pa, 2147483646           ; 3 uses
  %cmp.n517 = icmp eq i64 %n.vec509, %i.pa
  %min.iters.check491 = icmp ult i32 %0, 4
  %n.vec493 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n504 = icmp eq i64 %n.vec493, %i.pa
  %xtraiter872 = and i64 %i.pa, 1
  %lcmp.mod873.not = icmp eq i64 %xtraiter872, 0
  %i.pw = add nsw i64 %i.pa, -1
  %min.iters.check473 = icmp ult i32 %0, 4
  %n.vec475 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n484 = icmp eq i64 %n.vec475, %i.pa
  %min.iters.check457 = icmp ult i32 %0, 4
  %n.vec459 = and i64 %i.pa, 2147483644           ; 3 uses
  %cmp.n470 = icmp eq i64 %n.vec459, %i.pa
  br label %bb.bk

bb.bk:                                            ; preds = %prolongate.exit, %bb.bj
  %.0141 = phi ptr [ %i.mc, %bb.bj ], [ %i.anl, %prolongate.exit ] ; 6 uses
  %.1 = phi ptr [ %.0140, %bb.bj ], [ %.0, %prolongate.exit ] ; 44 uses
  %i.px = load i32, ptr %i.ot, align 4, !tbaa !19
  switch i32 %i.px, label %._crit_edge [
    i32 0, label %bb.bl
    i32 2, label %bb.bp
    i32 3, label %bb.bm
  ]

._crit_edge:                                      ; preds = %bb.bk
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !141
  br label %bb.cw

bb.bl:                                            ; preds = %bb.bk
  %i.py = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.pz = load ptr, ptr %i.py, align 8, !tbaa !141
  call fastcc void @spring_electrical_embedding_slow(i32 noundef %0, ptr noundef %i.pz, ptr noundef nonnull %2, ptr noundef %.1, ptr noundef nonnull %7)
  br label %bb.em

bb.bm:                                            ; preds = %bb.bk
  %i.qa = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !141 ; 2 uses
  %i.qc = load i32, ptr %i.qb, align 8, !tbaa !38
  %i.qd = icmp sgt i32 %i.qc, 10000
  br i1 %i.qd, label %bb.bn, label %bb.cw

bb.bn:                                            ; preds = %bb.bm
  %i.qe = load i8, ptr @Verbose, align 1
  %.not409 = icmp eq i8 %i.qe, 0
  br i1 %.not409, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.qf = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.qg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.qf, ptr noundef nonnull @.str.12, i32 noundef 10000) #21 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bk, %bb.bo, %bb.bn
  %i.qh = getelementptr inbounds nuw i8, ptr %.0141, i64 8
  %i.qi = load ptr, ptr %i.qh, align 8, !tbaa !141 ; 5 uses
  %i.qj = load double, ptr %2, align 8, !tbaa !25 ; 2 uses
  %i.qk = load double, ptr %i.ou, align 8, !tbaa !26 ; 2 uses
  %i.ql = load i32, ptr %i.ov, align 8, !tbaa !14 ; 2 uses
  %i.qm = load double, ptr %i.ow, align 8, !tbaa !15
  %i.qn = load i8, ptr %i.ox, align 4
  %i.qo = and i8 %i.qn, 2
  %.not183.i = icmp eq i8 %i.qo, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  %i.qp = load i32, ptr %i.oy, align 4, !tbaa !13 ; 2 uses
  %i.qq = icmp eq ptr %i.qi, null
  %i.qr = icmp slt i32 %i.ql, 1
  %or.cond.i187 = select i1 %i.qq, i1 true, i1 %i.qr
  br i1 %or.cond.i187, label %spring_electrical_embedding_fast.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qi, i64 4
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !48 ; 6 uses
  %i.qu = icmp slt i32 %i.qt, 1
  br i1 %i.qu, label %spring_electrical_embedding_fast.exit, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.qv = load i32, ptr %i.qi, align 8, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %9, i8 0, i64 184, i1 false), !alias.scope !142
  store i32 0, ptr %7, align 4, !tbaa !39
  %.not.i188 = icmp eq i32 %i.qv, %i.qt
  br i1 %.not.i188, label %bb.bs, label %.thread.i189

.thread.i189:                                     ; preds = %bb.br
  store i32 -100, ptr %7, align 4, !tbaa !39
  store i32 %i.qp, ptr %i.oy, align 4, !tbaa !13
  br label %bb.cv

bb.bs:                                            ; preds = %bb.br
  %i.qw = call ptr @SparseMatrix_symmetrize(ptr noundef nonnull %i.qi, i1 noundef zeroext true) #22 ; 7 uses
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !33 ; 2 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qw, i64 40 ; 2 uses
  %i.ra = load ptr, ptr %i.qz, align 8, !tbaa !37
  %i.rb = load i8, ptr %i.ox, align 4
  %i.rc = trunc i8 %i.rb to i1
  br i1 %i.rc, label %.lr.ph.preheader.i196, label %.loopexit187.i

.lr.ph.preheader.i196:                            ; preds = %bb.bs
  %i.rd = load i32, ptr %i.oz, align 8, !tbaa !16
  call void @srand(i32 noundef %i.rd) #22
  %i.re = mul i32 %i.qt, %0
  %smax.i = call i32 @llvm.smax.i32(i32 %i.re, i32 1)
  %wide.trip.count.i197 = zext nneg i32 %smax.i to i64
  br label %.lr.ph.i198

.lr.ph.i198:                                      ; preds = %.lr.ph.i198, %.lr.ph.preheader.i196
  %indvars.iv.i199 = phi i64 [ 0, %.lr.ph.preheader.i196 ], [ %indvars.iv.next.i200, %.lr.ph.i198 ] ; 2 uses
  %i.rf = call double @drand() #22
  %i.rg = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %indvars.iv.i199
  store double %i.rf, ptr %i.rg, align 8, !tbaa !8
  %indvars.iv.next.i200 = add nuw nsw i64 %indvars.iv.i199, 1 ; 2 uses
  %exitcond.not.i201 = icmp eq i64 %indvars.iv.next.i200, %wide.trip.count.i197
  br i1 %exitcond.not.i201, label %.loopexit187.i, label %.lr.ph.i198, !llvm.loop !145

.loopexit187.i:                                   ; preds = %.lr.ph.i198, %bb.bs
  %i.rh = fcmp olt double %i.qk, 0.000000e+00
  br i1 %i.rh, label %bb.bt, label %bb.bv

bb.bt:                                            ; preds = %.loopexit187.i
  %i.ri = load ptr, ptr %i.qx, align 8, !tbaa !33 ; 3 uses
  %i.rj = load ptr, ptr %i.qz, align 8, !tbaa !37
  %i.rk = load i32, ptr %i.qw, align 8, !tbaa !38 ; 3 uses
  %i.rl = sext i32 %i.rk to i64
  %i.rm = getelementptr inbounds [4 x i8], ptr %i.ri, i64 %i.rl ; 2 uses
  %i.rn = load i32, ptr %i.rm, align 4, !tbaa !39 ; 2 uses
  %i.ro = icmp eq i32 %i.rn, 0
  br i1 %i.ro, label %average_edge_length.exit.i, label %.preheader45.i.i

.preheader45.i.i:                                 ; preds = %bb.bt
  %i.rp = icmp sgt i32 %i.rk, 0
  br i1 %i.rp, label %.lr.ph.split.us.preheader.i.i, label %._crit_edge.i.i

.lr.ph.split.us.preheader.i.i:                    ; preds = %.preheader45.i.i
  %wide.trip.count67.i.i = zext nneg i32 %i.rk to i64
  %.pre.i.i = load i32, ptr %i.ri, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.loopexit.us.i.i, %.lr.ph.split.us.preheader.i.i
  %i.rq = phi i32 [ %.pre.i.i, %.lr.ph.split.us.preheader.i.i ], [ %i.ru, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv64.i.i = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i ], [ %indvars.iv.next65.i.i, %.loopexit.us.i.i ] ; 2 uses
  %.04153.us.i.i = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i ], [ %.1.lcssa.us.i.i, %.loopexit.us.i.i ] ; 2 uses
  %indvars.iv.next65.i.i = add nuw nsw i64 %indvars.iv64.i.i, 1 ; 3 uses
  %i.rr = getelementptr inbounds nuw [4 x i8], ptr %i.ri, i64 %indvars.iv.next65.i.i ; 2 uses
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !39 ; 2 uses
  %i.rt = icmp slt i32 %i.rq, %i.rs
  br i1 %i.rt, label %.preheader.lr.ph.us.i.i, label %.loopexit.us.i.i

.loopexit.us.i.i:                                 ; preds = %._crit_edge.us.us.i.i, %.lr.ph.split.us.i.i
  %i.ru = phi i32 [ %i.rs, %.lr.ph.split.us.i.i ], [ %i.sx, %._crit_edge.us.us.i.i ]
  %.1.lcssa.us.i.i = phi double [ %.04153.us.i.i, %.lr.ph.split.us.i.i ], [ %i.sw, %._crit_edge.us.us.i.i ] ; 2 uses
  %exitcond68.not.i.i = icmp eq i64 %indvars.iv.next65.i.i, %wide.trip.count67.i.i
  br i1 %exitcond68.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.split.us.i.i, !llvm.loop !40

.preheader.lr.ph.us.i.i:                          ; preds = %.lr.ph.split.us.i.i
  %i.rv = mul nuw nsw i64 %indvars.iv64.i.i, %i.pa
  %i.rw = sext i32 %i.rq to i64
  %invariant.gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.rv ; 5 uses
  br label %.preheader.us.us.i.i

.preheader.us.us.i.i:                             ; preds = %._crit_edge.us.us.i.i, %.preheader.lr.ph.us.i.i
  %indvars.iv61.i.i = phi i64 [ %indvars.iv.next62.i.i, %._crit_edge.us.us.i.i ], [ %i.rw, %.preheader.lr.ph.us.i.i ] ; 2 uses
  %.148.us.us.i.i = phi double [ %i.sw, %._crit_edge.us.us.i.i ], [ %.04153.us.i.i, %.preheader.lr.ph.us.i.i ]
  %i.rx = getelementptr inbounds [4 x i8], ptr %i.rj, i64 %indvars.iv61.i.i
  %i.ry = load i32, ptr %i.rx, align 4, !tbaa !39
  %i.rz = mul nsw i32 %i.ry, %0
  %i.sa = sext i32 %i.rz to i64
  %i.sb = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.sa
  %i.sc = load double, ptr %i.sb, align 8, !tbaa !8 ; 5 uses
  br i1 %i.pn, label %.epil.preheader, label %.preheader.us.us.i.i.new

.preheader.us.us.i.i.new:                         ; preds = %.preheader.us.us.i.i, %.preheader.us.us.i.i.new
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ] ; 5 uses
  %.04046.us.us.i.i = phi double [ %i.sr, %.preheader.us.us.i.i.new ], [ 0.000000e+00, %.preheader.us.us.i.i ]
  %niter = phi i64 [ %niter.next.3, %.preheader.us.us.i.i.new ], [ 0, %.preheader.us.us.i.i ]
  %gep.i.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %i.sd = load double, ptr %gep.i.i, align 8, !tbaa !8
  %i.se = fsub double %i.sd, %i.sc                ; 2 uses
  %i.sf = call double @llvm.fmuladd.f64(double %i.se, double %i.se, double %.04046.us.us.i.i)
  %i.sg = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.1 = getelementptr inbounds nuw i8, ptr %i.sg, i64 8
  %i.sh = load double, ptr %gep.i.i.1, align 8, !tbaa !8
  %i.si = fsub double %i.sh, %i.sc                ; 2 uses
  %i.sj = call double @llvm.fmuladd.f64(double %i.si, double %i.si, double %i.sf)
  %i.sk = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.2 = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %i.sl = load double, ptr %gep.i.i.2, align 8, !tbaa !8
  %i.sm = fsub double %i.sl, %i.sc                ; 2 uses
  %i.sn = call double @llvm.fmuladd.f64(double %i.sm, double %i.sm, double %i.sj)
  %i.so = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i
  %gep.i.i.3 = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sp = load double, ptr %gep.i.i.3, align 8, !tbaa !8
  %i.sq = fsub double %i.sp, %i.sc                ; 2 uses
  %i.sr = call double @llvm.fmuladd.f64(double %i.sq, double %i.sq, double %i.sn) ; 3 uses
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.us.us.i.i.unr-lcssa, label %.preheader.us.us.i.i.new, !llvm.loop !42

._crit_edge.us.us.i.i.unr-lcssa:                  ; preds = %.preheader.us.us.i.i.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.i.i.unr-lcssa, %.preheader.us.us.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.preheader.us.us.i.i ], [ %indvars.iv.next.i.i.3, %._crit_edge.us.us.i.i.unr-lcssa ]
  %.04046.us.us.i.i.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i ], [ %i.sr, %._crit_edge.us.us.i.i.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod835)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.next.i.i.epil, %bb.bu ], [ %indvars.iv.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.04046.us.us.i.i.epil = phi double [ %i.su, %bb.bu ], [ %.04046.us.us.i.i.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.bu ], [ 0, %.epil.preheader ]
  %gep.i.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i, i64 %indvars.iv.i.i.epil
  %i.ss = load double, ptr %gep.i.i.epil, align 8, !tbaa !8
  %i.st = fsub double %i.ss, %i.sc                ; 2 uses
  %i.su = call double @llvm.fmuladd.f64(double %i.st, double %i.st, double %.04046.us.us.i.i.epil) ; 2 uses
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.us.us.i.i, label %bb.bu, !llvm.loop !146

._crit_edge.us.us.i.i:                            ; preds = %bb.bu, %._crit_edge.us.us.i.i.unr-lcssa
  %.lcssa = phi double [ %i.sr, %._crit_edge.us.us.i.i.unr-lcssa ], [ %i.su, %bb.bu ]
  %i.sv = call double @sqrt(double noundef %.lcssa) #22
  %i.sw = fadd double %.148.us.us.i.i, %i.sv      ; 2 uses
  %indvars.iv.next62.i.i = add nsw i64 %indvars.iv61.i.i, 1 ; 2 uses
  %i.sx = load i32, ptr %i.rr, align 4, !tbaa !39 ; 2 uses
  %i.sy = sext i32 %i.sx to i64
  %i.sz = icmp slt i64 %indvars.iv.next62.i.i, %i.sy
  br i1 %i.sz, label %.preheader.us.us.i.i, label %.loopexit.us.i.i, !llvm.loop !45

._crit_edge.loopexit.i.i:                         ; preds = %.loopexit.us.i.i
  %.pre69.i.i = load i32, ptr %i.rm, align 4, !tbaa !39
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader45.i.i
  %i.ta = phi i32 [ %i.rn, %.preheader45.i.i ], [ %.pre69.i.i, %._crit_edge.loopexit.i.i ]
  %.041.lcssa.i.i = phi double [ 0.000000e+00, %.preheader45.i.i ], [ %.1.lcssa.us.i.i, %._crit_edge.loopexit.i.i ]
  %i.tb = sitofp i32 %i.ta to double
  %i.tc = fdiv double %.041.lcssa.i.i, %i.tb
  br label %average_edge_length.exit.i

average_edge_length.exit.i:                       ; preds = %._crit_edge.i.i, %bb.bt
  %.042.i.i = phi double [ %i.tc, %._crit_edge.i.i ], [ 1.000000e+00, %bb.bt ] ; 2 uses
  store double %.042.i.i, ptr %i.ou, align 8, !tbaa !26
  br label %bb.bv

bb.bv:                                            ; preds = %average_edge_length.exit.i, %.loopexit187.i
  %.0154.i = phi double [ %.042.i.i, %average_edge_length.exit.i ], [ %i.qk, %.loopexit187.i ] ; 3 uses
  %i.td = fcmp ult double %i.qj, 0.000000e+00
  br i1 %i.td, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  store double -1.000000e+00, ptr %2, align 8, !tbaa !25
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0155.i = phi double [ -1.000000e+00, %bb.bw ], [ %i.qj, %bb.bv ] ; 3 uses
  %i.te = fsub double 1.000000e+00, %.0155.i
  %i.tf = call double @pow(double noundef %.0154.i, double noundef %i.te) #22
  %i.tg = fsub double 2.000000e+00, %.0155.i
  %i.th = fdiv double %i.tg, 3.000000e+00
  %i.ti = call double @pow(double noundef 2.000000e-01, double noundef %i.th) #22
  %i.tj = fdiv double %i.ti, %.0154.i             ; 4 uses
  %i.tk = mul nuw nsw i32 %i.qt, %0
  %i.tl = zext nneg i32 %i.tk to i64              ; 2 uses
  %i.tm = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.tl, i64 noundef 8) #23 ; 10 uses
  %i.tn = icmp eq ptr %i.tm, null
  br i1 %i.tn, label %bb.by, label %gv_calloc.exit.preheader.i

gv_calloc.exit.preheader.i:                       ; preds = %bb.bx
  %i.to = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %wide.trip.count226.i = zext nneg i32 %i.qt to i64 ; 3 uses
  %i.tp = mul i64 %i.pk, %wide.trip.count226.i    ; 2 uses
  %scevgep609 = getelementptr i8, ptr %.1, i64 %i.tp
  %scevgep610 = getelementptr i8, ptr %i.tm, i64 %i.tp
  %scevgep646 = getelementptr i8, ptr %.1, i64 %i.pg
  %broadcast.splatinsert663 = insertelement <2 x double> poison, double %i.tj, i64 0
  %broadcast.splat664 = shufflevector <2 x double> %broadcast.splatinsert663, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0611 = icmp ult ptr %.1, %scevgep610
  %bound1612 = icmp ult ptr %i.tm, %scevgep609
  %found.conflict613 = and i1 %bound0611, %bound1612
  br label %.lr.ph196.preheader.i

bb.by:                                            ; preds = %bb.bx
  %i.tq = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.tr = shl nuw nsw i64 %i.tl, 3
  %i.ts = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.tq, ptr noundef nonnull @.str.25, i64 noundef %i.tr) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

.lr.ph196.preheader.i:                            ; preds = %update_step.exit.i, %gv_calloc.exit.preheader.i
  %i.tt = phi i32 [ %i.zf, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ] ; 4 uses
  %i.tu = phi i32 [ %i.zg, %update_step.exit.i ], [ %i.qp, %gv_calloc.exit.preheader.i ] ; 13 uses
  %.0153.i = phi double [ %.0.i.i, %update_step.exit.i ], [ %i.qm, %gv_calloc.exit.preheader.i ] ; 9 uses
  %.0151.i = phi double [ %i.xd, %update_step.exit.i ], [ 0.000000e+00, %gv_calloc.exit.preheader.i ] ; 2 uses
  %.0150.i = phi i32 [ %i.yf, %update_step.exit.i ], [ 0, %gv_calloc.exit.preheader.i ]
  %i.tv = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.qt, i32 noundef %i.tu, ptr noundef %.1) #22 ; 3 uses
  call void @QuadTree_get_repulsive_force(ptr noundef %i.tv, ptr noundef nonnull %i.tm, ptr noundef %.1, double noundef 6.000000e-01, double noundef %.0155.i, double noundef %i.tf, ptr noundef nonnull %i.g) #22
  %.pre.i190 = load i32, ptr %i.qy, align 4, !tbaa !39
  br label %.lr.ph196.i

.loopexit185.i:                                   ; preds = %.loopexit.i195, %.lr.ph196.i
  %i.tw = phi i32 [ %i.ud, %.lr.ph196.i ], [ %i.wf, %.loopexit.i195 ]
  %exitcond227.not.i = icmp eq i64 %indvars.iv.next223.i, %wide.trip.count226.i
  br i1 %exitcond227.not.i, label %.lr.ph203.i.preheader, label %.lr.ph196.i, !llvm.loop !147

.lr.ph203.i.preheader:                            ; preds = %.loopexit185.i
  %broadcast.splatinsert618 = insertelement <2 x double> poison, double %.0153.i, i64 0
  %broadcast.splat619 = shufflevector <2 x double> %broadcast.splatinsert618, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.lr.ph203.i

.lr.ph196.i:                                      ; preds = %.loopexit185.i, %.lr.ph196.preheader.i
  %i.tx = phi i32 [ %.pre.i190, %.lr.ph196.preheader.i ], [ %i.tw, %.loopexit185.i ] ; 2 uses
  %indvars.iv222.i = phi i64 [ 0, %.lr.ph196.preheader.i ], [ %indvars.iv.next223.i, %.loopexit185.i ] ; 5 uses
  %i.ty = mul i64 %i.pl, %indvars.iv222.i         ; 3 uses
  %scevgep644 = getelementptr i8, ptr %i.tm, i64 %i.ty ; 2 uses
  %i.tz = add i64 %i.pg, %i.ty                    ; 2 uses
  %scevgep645 = getelementptr i8, ptr %i.tm, i64 %i.tz ; 2 uses
  %scevgep648 = getelementptr i8, ptr %.1, i64 %i.ty
  %scevgep649 = getelementptr i8, ptr %.1, i64 %i.tz
  %i.ua = mul nuw nsw i64 %indvars.iv222.i, %i.pa ; 2 uses
  %i.ub = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.ua ; 4 uses
  %indvars.iv.next223.i = add nuw nsw i64 %indvars.iv222.i, 1 ; 3 uses
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %i.qy, i64 %indvars.iv.next223.i ; 2 uses
  %i.ud = load i32, ptr %i.uc, align 4, !tbaa !39 ; 3 uses
  %i.ue = icmp slt i32 %i.tx, %i.ud
  br i1 %i.ue, label %.lr.ph194.preheader.i, label %.loopexit185.i

.lr.ph194.preheader.i:                            ; preds = %.lr.ph196.i
  %i.uf = sext i32 %i.tx to i64
  %i.ug = trunc nuw nsw i64 %indvars.iv222.i to i32
  %invariant.gep.i193 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ua ; 4 uses
  %bound0653 = icmp ult ptr %scevgep644, %scevgep649
  %bound1654 = icmp ult ptr %scevgep648, %scevgep645
  %found.conflict655 = and i1 %bound0653, %bound1654
  br label %.lr.ph194.i

.lr.ph194.i:                                      ; preds = %.loopexit.i195, %.lr.ph194.preheader.i
  %i.uh = phi i32 [ %i.ud, %.lr.ph194.preheader.i ], [ %i.wf, %.loopexit.i195 ]
  %indvars.iv219.i = phi i64 [ %i.uf, %.lr.ph194.preheader.i ], [ %indvars.iv.next220.i, %.loopexit.i195 ] ; 2 uses
  %i.ui = getelementptr inbounds [4 x i8], ptr %i.ra, i64 %indvars.iv219.i ; 2 uses
  %i.uj = load i32, ptr %i.ui, align 4, !tbaa !39 ; 2 uses
  %i.uk = zext i32 %i.uj to i64
  %i.ul = icmp eq i64 %indvars.iv222.i, %i.uk
  br i1 %i.ul, label %.loopexit.i195, label %bb.bz

bb.bz:                                            ; preds = %.lr.ph194.i
  %i.um = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.ug, i32 noundef %i.uj) #22 ; 4 uses
  %i.un = load i32, ptr %i.ui, align 4, !tbaa !39
  %i.uo = mul nsw i32 %i.un, %0
  %i.up = sext i32 %i.uo to i64                   ; 2 uses
  %invariant.gep272.i = getelementptr [8 x i8], ptr %.1, i64 %i.up ; 5 uses
  br i1 %min.iters.check658, label %scalar.ph657.preheader, label %vector.memcheck643

vector.memcheck643:                               ; preds = %bb.bz
  %i.uq = shl nsw i64 %i.up, 3
  %scevgep647 = getelementptr i8, ptr %scevgep646, i64 %i.uq
  %bound0650 = icmp ult ptr %scevgep644, %scevgep647
  %bound1651 = icmp ult ptr %invariant.gep272.i, %scevgep645
  %found.conflict652 = and i1 %bound0650, %bound1651
  %conflict.rdx656 = or i1 %found.conflict652, %found.conflict655
  br i1 %conflict.rdx656, label %scalar.ph657.preheader, label %vector.ph659

vector.ph659:                                     ; preds = %vector.memcheck643
  %broadcast.splatinsert661 = insertelement <2 x double> poison, double %i.um, i64 0
  %broadcast.splat662 = shufflevector <2 x double> %broadcast.splatinsert661, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body665

vector.body665:                                   ; preds = %vector.body665, %vector.ph659
  %index666 = phi i64 [ 0, %vector.ph659 ], [ %index.next673, %vector.body665 ] ; 4 uses
  %i.ur = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i193, i64 %index666 ; 2 uses
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %wide.load667 = load <2 x double>, ptr %i.ur, align 8, !tbaa !8, !alias.scope !148
  %wide.load668 = load <2 x double>, ptr %i.us, align 8, !tbaa !8, !alias.scope !148
  %i.ut = getelementptr [8 x i8], ptr %invariant.gep272.i, i64 %index666 ; 2 uses
  %i.uu = getelementptr i8, ptr %i.ut, i64 16
  %wide.load669 = load <2 x double>, ptr %i.ut, align 8, !tbaa !8, !alias.scope !151
  %wide.load670 = load <2 x double>, ptr %i.uu, align 8, !tbaa !8, !alias.scope !151
  %i.uv = fsub <2 x double> %wide.load667, %wide.load669
  %i.uw = fsub <2 x double> %wide.load668, %wide.load670
  %i.ux = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %index666 ; 3 uses
  %i.uy = getelementptr inbounds nuw i8, ptr %i.ux, i64 16 ; 2 uses
  %wide.load671 = load <2 x double>, ptr %i.ux, align 8, !tbaa !8, !alias.scope !153, !noalias !155
  %wide.load672 = load <2 x double>, ptr %i.uy, align 8, !tbaa !8, !alias.scope !153, !noalias !155
  %i.uz = fneg <2 x double> %i.uv
  %i.va = fneg <2 x double> %i.uw
  %i.vb = fmul <2 x double> %broadcast.splat664, %i.uz
  %i.vc = fmul <2 x double> %broadcast.splat664, %i.va
  %i.vd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vb, <2 x double> %broadcast.splat662, <2 x double> %wide.load671)
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vc, <2 x double> %broadcast.splat662, <2 x double> %wide.load672)
  store <2 x double> %i.vd, ptr %i.ux, align 8, !tbaa !8, !alias.scope !153, !noalias !155
  store <2 x double> %i.ve, ptr %i.uy, align 8, !tbaa !8, !alias.scope !153, !noalias !155
  %index.next673 = add nuw i64 %index666, 4       ; 2 uses
  %i.vf = icmp eq i64 %index.next673, %n.vec660
  br i1 %i.vf, label %middle.block674, label %vector.body665, !llvm.loop !156

middle.block674:                                  ; preds = %vector.body665
  br i1 %cmp.n675, label %.loopexit.loopexit.i, label %scalar.ph657.preheader

scalar.ph657.preheader:                           ; preds = %vector.memcheck643, %bb.bz, %middle.block674
  %indvars.iv214.i.ph = phi i64 [ 0, %vector.memcheck643 ], [ 0, %bb.bz ], [ %n.vec660, %middle.block674 ] ; 6 uses
  br i1 %lcmp.mod837.not, label %scalar.ph657.prol.loopexit, label %scalar.ph657.prol

scalar.ph657.prol:                                ; preds = %scalar.ph657.preheader
  %gep.i194.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i193, i64 %indvars.iv214.i.ph
  %i.vg = load double, ptr %gep.i194.prol, align 8, !tbaa !8
  %gep273.i.prol = getelementptr [8 x i8], ptr %invariant.gep272.i, i64 %indvars.iv214.i.ph
  %i.vh = load double, ptr %gep273.i.prol, align 8, !tbaa !8
  %i.vi = fsub double %i.vg, %i.vh
  %i.vj = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv214.i.ph ; 2 uses
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !8
  %i.vl = fneg double %i.vi
  %i.vm = fmul double %i.tj, %i.vl
  %i.vn = call double @llvm.fmuladd.f64(double %i.vm, double %i.um, double %i.vk)
  store double %i.vn, ptr %i.vj, align 8, !tbaa !8
  %indvars.iv.next215.i.prol = or disjoint i64 %indvars.iv214.i.ph, 1
  br label %scalar.ph657.prol.loopexit

scalar.ph657.prol.loopexit:                       ; preds = %scalar.ph657.prol, %scalar.ph657.preheader
  %indvars.iv214.i.unr = phi i64 [ %indvars.iv214.i.ph, %scalar.ph657.preheader ], [ %indvars.iv.next215.i.prol, %scalar.ph657.prol ]
  %i.vo = icmp eq i64 %indvars.iv214.i.ph, %i.po
  br i1 %i.vo, label %.loopexit.loopexit.i, label %scalar.ph657

scalar.ph657:                                     ; preds = %scalar.ph657.prol.loopexit, %scalar.ph657
  %indvars.iv214.i = phi i64 [ %indvars.iv.next215.i.1, %scalar.ph657 ], [ %indvars.iv214.i.unr, %scalar.ph657.prol.loopexit ] ; 5 uses
  %gep.i194 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i193, i64 %indvars.iv214.i
  %i.vp = load double, ptr %gep.i194, align 8, !tbaa !8
  %gep273.i = getelementptr [8 x i8], ptr %invariant.gep272.i, i64 %indvars.iv214.i
  %i.vq = load double, ptr %gep273.i, align 8, !tbaa !8
  %i.vr = fsub double %i.vp, %i.vq
  %i.vs = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv214.i ; 2 uses
  %i.vt = load double, ptr %i.vs, align 8, !tbaa !8
  %i.vu = fneg double %i.vr
  %i.vv = fmul double %i.tj, %i.vu
  %i.vw = call double @llvm.fmuladd.f64(double %i.vv, double %i.um, double %i.vt)
  store double %i.vw, ptr %i.vs, align 8, !tbaa !8
  %indvars.iv.next215.i = add nuw nsw i64 %indvars.iv214.i, 1 ; 3 uses
  %gep.i194.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i193, i64 %indvars.iv.next215.i
  %i.vx = load double, ptr %gep.i194.1, align 8, !tbaa !8
  %gep273.i.1 = getelementptr [8 x i8], ptr %invariant.gep272.i, i64 %indvars.iv.next215.i
  %i.vy = load double, ptr %gep273.i.1, align 8, !tbaa !8
  %i.vz = fsub double %i.vx, %i.vy
  %i.wa = getelementptr inbounds nuw [8 x i8], ptr %i.ub, i64 %indvars.iv.next215.i ; 2 uses
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !8
  %i.wc = fneg double %i.vz
  %i.wd = fmul double %i.tj, %i.wc
  %i.we = call double @llvm.fmuladd.f64(double %i.wd, double %i.um, double %i.wb)
  store double %i.we, ptr %i.wa, align 8, !tbaa !8
  %indvars.iv.next215.i.1 = add nuw nsw i64 %indvars.iv214.i, 2 ; 2 uses
  %exitcond218.not.i.1 = icmp eq i64 %indvars.iv.next215.i.1, %i.pa
  br i1 %exitcond218.not.i.1, label %.loopexit.loopexit.i, label %scalar.ph657, !llvm.loop !157

.loopexit.loopexit.i:                             ; preds = %scalar.ph657.prol.loopexit, %scalar.ph657, %middle.block674
  %.pre249.i = load i32, ptr %i.uc, align 4, !tbaa !39
  br label %.loopexit.i195

.loopexit.i195:                                   ; preds = %.loopexit.loopexit.i, %.lr.ph194.i
  %i.wf = phi i32 [ %.pre249.i, %.loopexit.loopexit.i ], [ %i.uh, %.lr.ph194.i ] ; 3 uses
  %indvars.iv.next220.i = add nsw i64 %indvars.iv219.i, 1 ; 2 uses
  %i.wg = sext i32 %i.wf to i64
  %i.wh = icmp slt i64 %indvars.iv.next220.i, %i.wg
  br i1 %i.wh, label %.lr.ph194.i, label %.loopexit185.i, !llvm.loop !158

.lr.ph203.i:                                      ; preds = %.lr.ph203.i.preheader, %.loopexit803
  %indvars.iv243.i = phi i64 [ %indvars.iv.next244.i, %.loopexit803 ], [ 0, %.lr.ph203.i.preheader ] ; 2 uses
  %.1202.i = phi double [ %i.xd, %.loopexit803 ], [ 0.000000e+00, %.lr.ph203.i.preheader ]
  %i.wi = mul nuw nsw i64 %indvars.iv243.i, %i.pa ; 2 uses
  %i.wj = getelementptr inbounds nuw [8 x i8], ptr %i.tm, i64 %i.wi ; 11 uses
  br i1 %i.pp, label %.epil.preheader838, label %.lr.ph203.i.new

.lr.ph203.i.new:                                  ; preds = %.lr.ph203.i, %.lr.ph203.i.new
  %indvars.iv228.i = phi i64 [ %indvars.iv.next229.i.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ] ; 5 uses
  %.0152198.i = phi double [ %i.wy, %.lr.ph203.i.new ], [ 0.000000e+00, %.lr.ph203.i ]
  %niter845 = phi i64 [ %niter845.next.3, %.lr.ph203.i.new ], [ 0, %.lr.ph203.i ]
  %i.wk = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv228.i
  %i.wl = load double, ptr %i.wk, align 8, !tbaa !8 ; 2 uses
  %i.wm = call double @llvm.fmuladd.f64(double %i.wl, double %i.wl, double %.0152198.i)
  %i.wn = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv228.i
  %i.wo = getelementptr inbounds nuw i8, ptr %i.wn, i64 8
  %i.wp = load double, ptr %i.wo, align 8, !tbaa !8 ; 2 uses
  %i.wq = call double @llvm.fmuladd.f64(double %i.wp, double %i.wp, double %i.wm)
  %i.wr = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv228.i
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wr, i64 16
  %i.wt = load double, ptr %i.ws, align 8, !tbaa !8 ; 2 uses
  %i.wu = call double @llvm.fmuladd.f64(double %i.wt, double %i.wt, double %i.wq)
  %i.wv = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv228.i
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wv, i64 24
  %i.wx = load double, ptr %i.ww, align 8, !tbaa !8 ; 2 uses
  %i.wy = call double @llvm.fmuladd.f64(double %i.wx, double %i.wx, double %i.wu) ; 3 uses
  %indvars.iv.next229.i.3 = add nuw nsw i64 %indvars.iv228.i, 4 ; 2 uses
  %niter845.next.3 = add i64 %niter845, 4         ; 2 uses
  %niter845.ncmp.3 = icmp eq i64 %niter845.next.3, %unroll_iter844
  br i1 %niter845.ncmp.3, label %.unr-lcssa, label %.lr.ph203.i.new, !llvm.loop !159

.unr-lcssa:                                       ; preds = %.lr.ph203.i.new
  br i1 %lcmp.mod841.not, label %.epilog-lcssa, label %.epil.preheader838

.epil.preheader838:                               ; preds = %.unr-lcssa, %.lr.ph203.i
  %indvars.iv228.i.epil.init = phi i64 [ 0, %.lr.ph203.i ], [ %indvars.iv.next229.i.3, %.unr-lcssa ]
  %.0152198.i.epil.init = phi double [ 0.000000e+00, %.lr.ph203.i ], [ %i.wy, %.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod843)
  br label %bb.ca

bb.ca:                                            ; preds = %bb.ca, %.epil.preheader838
  %indvars.iv228.i.epil = phi i64 [ %indvars.iv228.i.epil.init, %.epil.preheader838 ], [ %indvars.iv.next229.i.epil, %bb.ca ] ; 2 uses
  %.0152198.i.epil = phi double [ %.0152198.i.epil.init, %.epil.preheader838 ], [ %i.xb, %bb.ca ]
  %epil.iter840 = phi i64 [ 0, %.epil.preheader838 ], [ %epil.iter840.next, %bb.ca ]
  %i.wz = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv228.i.epil
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !8 ; 2 uses
  %i.xb = call double @llvm.fmuladd.f64(double %i.xa, double %i.xa, double %.0152198.i.epil) ; 2 uses
  %indvars.iv.next229.i.epil = add nuw nsw i64 %indvars.iv228.i.epil, 1
  %epil.iter840.next = add i64 %epil.iter840, 1   ; 2 uses
  %epil.iter840.cmp.not = icmp eq i64 %epil.iter840.next, %xtraiter839.a
  br i1 %epil.iter840.cmp.not, label %.epilog-lcssa, label %bb.ca, !llvm.loop !160

.epilog-lcssa:                                    ; preds = %bb.ca, %.unr-lcssa
  %.lcssa812 = phi double [ %i.wy, %.unr-lcssa ], [ %i.xb, %bb.ca ]
  %i.xc = call double @sqrt(double noundef %.lcssa812) #22 ; 4 uses
  %i.xd = fadd double %.1202.i, %i.xc             ; 5 uses
  %i.xe = fcmp ogt double %i.xc, 0.000000e+00
  br i1 %i.xe, label %.preheader.i192.preheader, label %.loopexit184.i

.preheader.i192.preheader:                        ; preds = %.epilog-lcssa
  br i1 %min.iters.check631, label %.preheader.i192.preheader808, label %vector.ph632

vector.ph632:                                     ; preds = %.preheader.i192.preheader
  %broadcast.splatinsert634 = insertelement <2 x double> poison, double %i.xc, i64 0
  %broadcast.splat635 = shufflevector <2 x double> %broadcast.splatinsert634, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body636

vector.body636:                                   ; preds = %vector.body636, %vector.ph632
  %index637 = phi i64 [ 0, %vector.ph632 ], [ %index.next639, %vector.body636 ] ; 2 uses
  %i.xf = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %index637 ; 2 uses
  %wide.load638 = load <2 x double>, ptr %i.xf, align 8, !tbaa !8
  %i.xg = fdiv <2 x double> %wide.load638, %broadcast.splat635
  store <2 x double> %i.xg, ptr %i.xf, align 8, !tbaa !8
  %index.next639 = add nuw i64 %index637, 2       ; 2 uses
  %i.xh = icmp eq i64 %index.next639, %n.vec633
  br i1 %i.xh, label %middle.block640, label %vector.body636, !llvm.loop !161

middle.block640:                                  ; preds = %vector.body636
  br i1 %cmp.n641, label %.loopexit184.i, label %.preheader.i192.preheader808

.preheader.i192.preheader808:                     ; preds = %.preheader.i192.preheader, %middle.block640
  %indvars.iv233.i.ph = phi i64 [ 0, %.preheader.i192.preheader ], [ %n.vec633, %middle.block640 ]
  br label %.preheader.i192

.preheader.i192:                                  ; preds = %.preheader.i192.preheader808, %.preheader.i192
  %indvars.iv233.i = phi i64 [ %indvars.iv.next234.i, %.preheader.i192 ], [ %indvars.iv233.i.ph, %.preheader.i192.preheader808 ] ; 2 uses
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %i.wj, i64 %indvars.iv233.i ; 2 uses
  %i.xj = load double, ptr %i.xi, align 8, !tbaa !8
  %i.xk = fdiv double %i.xj, %i.xc
  store double %i.xk, ptr %i.xi, align 8, !tbaa !8
  %indvars.iv.next234.i = add nuw nsw i64 %indvars.iv233.i, 1 ; 2 uses
  %exitcond237.not.i = icmp eq i64 %indvars.iv.next234.i, %i.pa
  br i1 %exitcond237.not.i, label %.loopexit184.i, label %.preheader.i192, !llvm.loop !162

.loopexit184.i:                                   ; preds = %.preheader.i192, %middle.block640, %.epilog-lcssa
  %invariant.gep274.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.wi ; 4 uses
end_hunk_1
begin_hunk_2_@multilevel_spring_electrical_embedding:bb.a
  %i.aba = icmp eq i32 %i.aaz, 0
  br i1 %i.aba, label %average_edge_length.exit.i223, label %.preheader45.i.i220

.preheader45.i.i220:                              ; preds = %bb.dd
  %i.abb = icmp sgt i32 %i.aaw, 0
  br i1 %i.abb, label %.lr.ph.split.us.preheader.i.i225, label %._crit_edge.i.i221

.lr.ph.split.us.preheader.i.i225:                 ; preds = %.preheader45.i.i220
  %wide.trip.count67.i.i226 = zext nneg i32 %i.aaw to i64
  %.pre.i.i227 = load i32, ptr %i.aau, align 4, !tbaa !39
  br label %.lr.ph.split.us.i.i228

.lr.ph.split.us.i.i228:                           ; preds = %.loopexit.us.i.i232, %.lr.ph.split.us.preheader.i.i225
  %i.abc = phi i32 [ %.pre.i.i227, %.lr.ph.split.us.preheader.i.i225 ], [ %i.abg, %.loopexit.us.i.i232 ] ; 2 uses
  %indvars.iv64.i.i229 = phi i64 [ 0, %.lr.ph.split.us.preheader.i.i225 ], [ %indvars.iv.next65.i.i231, %.loopexit.us.i.i232 ] ; 2 uses
  %.04153.us.i.i230 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader.i.i225 ], [ %.1.lcssa.us.i.i233, %.loopexit.us.i.i232 ] ; 2 uses
  %indvars.iv.next65.i.i231 = add nuw nsw i64 %indvars.iv64.i.i229, 1 ; 3 uses
  %i.abd = getelementptr inbounds nuw [4 x i8], ptr %i.aau, i64 %indvars.iv.next65.i.i231 ; 2 uses
  %i.abe = load i32, ptr %i.abd, align 4, !tbaa !39 ; 2 uses
  %i.abf = icmp slt i32 %i.abc, %i.abe
  br i1 %i.abf, label %.preheader.lr.ph.us.i.i237, label %.loopexit.us.i.i232

.loopexit.us.i.i232:                              ; preds = %._crit_edge.us.us.i.i247, %.lr.ph.split.us.i.i228
  %i.abg = phi i32 [ %i.abe, %.lr.ph.split.us.i.i228 ], [ %i.acj, %._crit_edge.us.us.i.i247 ]
  %.1.lcssa.us.i.i233 = phi double [ %.04153.us.i.i230, %.lr.ph.split.us.i.i228 ], [ %i.aci, %._crit_edge.us.us.i.i247 ] ; 2 uses
  %exitcond68.not.i.i234 = icmp eq i64 %indvars.iv.next65.i.i231, %wide.trip.count67.i.i226
  br i1 %exitcond68.not.i.i234, label %._crit_edge.loopexit.i.i235, label %.lr.ph.split.us.i.i228, !llvm.loop !40

.preheader.lr.ph.us.i.i237:                       ; preds = %.lr.ph.split.us.i.i228
  %i.abh = mul nuw nsw i64 %indvars.iv64.i.i229, %i.pa
  %i.abi = sext i32 %i.abc to i64
  %invariant.gep.i.i238 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.abh ; 5 uses
  br label %.preheader.us.us.i.i239

.preheader.us.us.i.i239:                          ; preds = %._crit_edge.us.us.i.i247, %.preheader.lr.ph.us.i.i237
  %indvars.iv61.i.i240 = phi i64 [ %indvars.iv.next62.i.i248, %._crit_edge.us.us.i.i247 ], [ %i.abi, %.preheader.lr.ph.us.i.i237 ] ; 2 uses
  %.148.us.us.i.i241 = phi double [ %i.aci, %._crit_edge.us.us.i.i247 ], [ %.04153.us.i.i230, %.preheader.lr.ph.us.i.i237 ]
  %i.abj = getelementptr inbounds [4 x i8], ptr %i.aav, i64 %indvars.iv61.i.i240
  %i.abk = load i32, ptr %i.abj, align 4, !tbaa !39
  %i.abl = mul nsw i32 %i.abk, %0
  %i.abm = sext i32 %i.abl to i64
  %i.abn = getelementptr inbounds [8 x i8], ptr %.1, i64 %i.abm
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !8 ; 5 uses
  br i1 %i.pr, label %.epil.preheader848, label %.preheader.us.us.i.i239.new

.preheader.us.us.i.i239.new:                      ; preds = %.preheader.us.us.i.i239, %.preheader.us.us.i.i239.new
  %indvars.iv.i.i242 = phi i64 [ %indvars.iv.next.i.i245.3, %.preheader.us.us.i.i239.new ], [ 0, %.preheader.us.us.i.i239 ] ; 5 uses
  %.04046.us.us.i.i243 = phi double [ %i.acd, %.preheader.us.us.i.i239.new ], [ 0.000000e+00, %.preheader.us.us.i.i239 ]
  %niter855 = phi i64 [ %niter855.next.3, %.preheader.us.us.i.i239.new ], [ 0, %.preheader.us.us.i.i239 ]
  %gep.i.i244 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i238, i64 %indvars.iv.i.i242
  %i.abp = load double, ptr %gep.i.i244, align 8, !tbaa !8
  %i.abq = fsub double %i.abp, %i.abo             ; 2 uses
  %i.abr = call double @llvm.fmuladd.f64(double %i.abq, double %i.abq, double %.04046.us.us.i.i243)
  %i.abs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i238, i64 %indvars.iv.i.i242
  %gep.i.i244.1 = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abt = load double, ptr %gep.i.i244.1, align 8, !tbaa !8
  %i.abu = fsub double %i.abt, %i.abo             ; 2 uses
  %i.abv = call double @llvm.fmuladd.f64(double %i.abu, double %i.abu, double %i.abr)
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i238, i64 %indvars.iv.i.i242
  %gep.i.i244.2 = getelementptr inbounds nuw i8, ptr %i.abw, i64 16
  %i.abx = load double, ptr %gep.i.i244.2, align 8, !tbaa !8
  %i.aby = fsub double %i.abx, %i.abo             ; 2 uses
  %i.abz = call double @llvm.fmuladd.f64(double %i.aby, double %i.aby, double %i.abv)
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i238, i64 %indvars.iv.i.i242
  %gep.i.i244.3 = getelementptr inbounds nuw i8, ptr %i.aca, i64 24
  %i.acb = load double, ptr %gep.i.i244.3, align 8, !tbaa !8
  %i.acc = fsub double %i.acb, %i.abo             ; 2 uses
  %i.acd = call double @llvm.fmuladd.f64(double %i.acc, double %i.acc, double %i.abz) ; 3 uses
  %indvars.iv.next.i.i245.3 = add nuw nsw i64 %indvars.iv.i.i242, 4 ; 2 uses
  %niter855.next.3 = add i64 %niter855, 4         ; 2 uses
  %niter855.ncmp.3 = icmp eq i64 %niter855.next.3, %unroll_iter854
  br i1 %niter855.ncmp.3, label %._crit_edge.us.us.i.i247.unr-lcssa, label %.preheader.us.us.i.i239.new, !llvm.loop !42

._crit_edge.us.us.i.i247.unr-lcssa:               ; preds = %.preheader.us.us.i.i239.new
  br i1 %lcmp.mod851.not, label %._crit_edge.us.us.i.i247, label %.epil.preheader848

.epil.preheader848:                               ; preds = %._crit_edge.us.us.i.i247.unr-lcssa, %.preheader.us.us.i.i239
  %indvars.iv.i.i242.epil.init = phi i64 [ 0, %.preheader.us.us.i.i239 ], [ %indvars.iv.next.i.i245.3, %._crit_edge.us.us.i.i247.unr-lcssa ]
  %.04046.us.us.i.i243.epil.init = phi double [ 0.000000e+00, %.preheader.us.us.i.i239 ], [ %i.acd, %._crit_edge.us.us.i.i247.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod853)
  br label %bb.de

bb.de:                                            ; preds = %bb.de, %.epil.preheader848
  %indvars.iv.i.i242.epil = phi i64 [ %indvars.iv.next.i.i245.epil, %bb.de ], [ %indvars.iv.i.i242.epil.init, %.epil.preheader848 ] ; 2 uses
  %.04046.us.us.i.i243.epil = phi double [ %i.acg, %bb.de ], [ %.04046.us.us.i.i243.epil.init, %.epil.preheader848 ]
  %epil.iter850 = phi i64 [ %epil.iter850.next, %bb.de ], [ 0, %.epil.preheader848 ]
  %gep.i.i244.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i.i238, i64 %indvars.iv.i.i242.epil
  %i.ace = load double, ptr %gep.i.i244.epil, align 8, !tbaa !8
  %i.acf = fsub double %i.ace, %i.abo             ; 2 uses
  %i.acg = call double @llvm.fmuladd.f64(double %i.acf, double %i.acf, double %.04046.us.us.i.i243.epil) ; 2 uses
  %indvars.iv.next.i.i245.epil = add nuw nsw i64 %indvars.iv.i.i242.epil, 1
  %epil.iter850.next = add i64 %epil.iter850, 1   ; 2 uses
  %epil.iter850.cmp.not = icmp eq i64 %epil.iter850.next, %xtraiter849.a
  br i1 %epil.iter850.cmp.not, label %._crit_edge.us.us.i.i247, label %bb.de, !llvm.loop !174

._crit_edge.us.us.i.i247:                         ; preds = %bb.de, %._crit_edge.us.us.i.i247.unr-lcssa
  %.lcssa815 = phi double [ %i.acd, %._crit_edge.us.us.i.i247.unr-lcssa ], [ %i.acg, %bb.de ]
  %i.ach = call double @sqrt(double noundef %.lcssa815) #22
  %i.aci = fadd double %.148.us.us.i.i241, %i.ach ; 2 uses
  %indvars.iv.next62.i.i248 = add nsw i64 %indvars.iv61.i.i240, 1 ; 2 uses
  %i.acj = load i32, ptr %i.abd, align 4, !tbaa !39 ; 2 uses
  %i.ack = sext i32 %i.acj to i64
  %i.acl = icmp slt i64 %indvars.iv.next62.i.i248, %i.ack
  br i1 %i.acl, label %.preheader.us.us.i.i239, label %.loopexit.us.i.i232, !llvm.loop !45

._crit_edge.loopexit.i.i235:                      ; preds = %.loopexit.us.i.i232
  %.pre69.i.i236 = load i32, ptr %i.aay, align 4, !tbaa !39
  br label %._crit_edge.i.i221

._crit_edge.i.i221:                               ; preds = %._crit_edge.loopexit.i.i235, %.preheader45.i.i220
  %i.acm = phi i32 [ %i.aaz, %.preheader45.i.i220 ], [ %.pre69.i.i236, %._crit_edge.loopexit.i.i235 ]
  %.041.lcssa.i.i222 = phi double [ 0.000000e+00, %.preheader45.i.i220 ], [ %.1.lcssa.us.i.i233, %._crit_edge.loopexit.i.i235 ]
  %i.acn = sitofp i32 %i.acm to double
  %i.aco = fdiv double %.041.lcssa.i.i222, %i.acn
  br label %average_edge_length.exit.i223

average_edge_length.exit.i223:                    ; preds = %._crit_edge.i.i221, %bb.dd
  %.042.i.i224 = phi double [ %i.aco, %._crit_edge.i.i221 ], [ 1.000000e+00, %bb.dd ] ; 2 uses
  store double %.042.i.i224, ptr %i.ou, align 8, !tbaa !26
  br label %bb.df

bb.df:                                            ; preds = %average_edge_length.exit.i223, %.loopexit241.i
  %.0208.i = phi double [ %.042.i.i224, %average_edge_length.exit.i223 ], [ %i.zv, %.loopexit241.i ] ; 2 uses
  %i.acp = fcmp ult double %i.zu, 0.000000e+00
  br i1 %i.acp, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  store double -1.000000e+00, ptr %2, align 8, !tbaa !25
  br label %bb.dh

bb.dh:                                            ; preds = %bb.dg, %bb.df
  %.0209.i = phi double [ -1.000000e+00, %bb.dg ], [ %i.zu, %bb.df ] ; 2 uses
  %i.acq = fsub double 1.000000e+00, %.0209.i     ; 3 uses
  %i.acr = call double @pow(double noundef %.0208.i, double noundef %i.acq) #22 ; 5 uses
  %i.acs = fsub double 2.000000e+00, %.0209.i
  %i.act = fdiv double %i.acs, 3.000000e+00
  %i.acu = call double @pow(double noundef 2.000000e-01, double noundef %i.act) #22
  %i.acv = fdiv double %i.acu, %.0208.i           ; 4 uses
  %i.acw = call noalias ptr @calloc(i64 noundef range(i64 -2147483648, 2305843009213693953) %i.pa, i64 noundef 8) #23 ; 35 uses
  %i.acx = icmp eq ptr %i.acw, null
  br i1 %i.acx, label %bb.di, label %gv_calloc.exit.preheader.i204

gv_calloc.exit.preheader.i204:                    ; preds = %bb.dh
  %i.acy = uitofp nneg i32 %i.aad to double
  %.promoted269.i = load i32, ptr %i.pf, align 8
  %wide.trip.count329.i = zext i32 %i.aad to i64  ; 3 uses
  %scevgep487.a = getelementptr i8, ptr %.1, i64 %i.pg
  %scevgep489 = getelementptr i8, ptr %i.acw, i64 %i.pg ; 7 uses
  %scevgep521 = getelementptr i8, ptr %.1, i64 %i.pg
  %i.acz = mul i64 %i.pi, %wide.trip.count329.i
  %scevgep548 = getelementptr i8, ptr %.1, i64 %i.acz
  %scevgep550 = getelementptr i8, ptr %.1, i64 %i.pg
  %scevgep577 = getelementptr i8, ptr %.1, i64 %i.pg
  %i.ada = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.adb = shufflevector <2 x double> %i.ada, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adc = getelementptr i8, ptr %.1, i64 %i.pg
  %broadcast.splatinsert594 = insertelement <2 x double> poison, double %i.acv, i64 0
  %broadcast.splat595 = shufflevector <2 x double> %broadcast.splatinsert594, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %bound0552 = icmp ult ptr %i.acw, %scevgep548
  %bound1553 = icmp ult ptr %.1, %scevgep489
  %found.conflict554 = and i1 %bound0552, %bound1553
  %broadcast.splatinsert565 = insertelement <2 x double> poison, double %i.acr, i64 0
  %broadcast.splat566 = shufflevector <2 x double> %broadcast.splatinsert565, <2 x double> poison, <2 x i32> zeroinitializer
  br label %gv_calloc.exit.i205

bb.di:                                            ; preds = %bb.dh
  %i.add = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ade = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.add, ptr noundef nonnull @.str.25, i64 noundef %i.pg) #21 ; 0 uses
  call fastcc void @graphviz_exit() #24
  unreachable

gv_calloc.exit.i205:                              ; preds = %update_step.exit.i212, %gv_calloc.exit.preheader.i204
  %i.adf = phi i32 [ %i.amt, %update_step.exit.i212 ], [ %.promoted269.i, %gv_calloc.exit.preheader.i204 ] ; 3 uses
  %i.adg = phi i32 [ %i.amu, %update_step.exit.i212 ], [ %.promoted.i, %gv_calloc.exit.preheader.i204 ] ; 12 uses
  %.0207.i = phi double [ %.0.i.i213, %update_step.exit.i212 ], [ %i.zx, %gv_calloc.exit.preheader.i204 ] ; 8 uses
  %.0203.i = phi double [ %i.aku, %update_step.exit.i212 ], [ 0.000000e+00, %gv_calloc.exit.preheader.i204 ] ; 2 uses
  %.0202.i = phi i32 [ %i.adh, %update_step.exit.i212 ], [ 0, %gv_calloc.exit.preheader.i204 ]
  %.0196.i = phi i32 [ %.1.i206, %update_step.exit.i212 ], [ %i.aaa, %gv_calloc.exit.preheader.i204 ]
  %i.adh = add nuw nsw i32 %.0202.i, 1            ; 2 uses
  br i1 %i.aah, label %bb.dj, label %.preheader240.preheader.i

bb.dj:                                            ; preds = %gv_calloc.exit.i205
  %i.adi = call ptr @QuadTree_new_from_point_list(i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aad, i32 noundef %i.adg, ptr noundef %.1) #22
  br label %.preheader240.preheader.i

.preheader240.preheader.i:                        ; preds = %bb.dj, %gv_calloc.exit.i205
  %.1.i206 = phi i32 [ %i.adg, %bb.dj ], [ %.0196.i, %gv_calloc.exit.i205 ] ; 3 uses
  %.0.i207 = phi ptr [ %i.adi, %bb.dj ], [ null, %gv_calloc.exit.i205 ] ; 3 uses
  %broadcast.splatinsert494 = insertelement <2 x double> poison, double %.0207.i, i64 0
  %broadcast.splat495 = shufflevector <2 x double> %broadcast.splatinsert494, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %.preheader240.i

.loopexit235.i:                                   ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490, %middle.block503
  %exitcond330.not.i = icmp eq i64 %indvars.iv.next327.i, %wide.trip.count329.i
  br i1 %exitcond330.not.i, label %._crit_edge266.i, label %.preheader240.i, !llvm.loop !175

.preheader240.i:                                  ; preds = %.loopexit235.i, %.preheader240.preheader.i
  %indvars.iv326.i = phi i64 [ 0, %.preheader240.preheader.i ], [ %indvars.iv.next327.i, %.loopexit235.i ] ; 14 uses
  %.1204263.i = phi double [ 0.000000e+00, %.preheader240.preheader.i ], [ %i.aku, %.loopexit235.i ]
  %i.adj = phi <2 x double> [ zeroinitializer, %.preheader240.preheader.i ], [ %i.aka, %.loopexit235.i ] ; 2 uses
  %i.adk = mul i64 %i.pj, %indvars.iv326.i        ; 2 uses
  %scevgep579 = getelementptr i8, ptr %.1, i64 %i.adk
  %scevgep580 = getelementptr i8, ptr %i.adc, i64 %i.adk
  %i.adl = trunc i64 %indvars.iv326.i to i32
  %i.adm = mul i32 %0, %i.adl
  %i.adn = zext i32 %i.adm to i64
  %i.ado = shl nuw nsw i64 %i.adn, 3              ; 2 uses
  %scevgep549 = getelementptr i8, ptr %.1, i64 %i.ado
  %scevgep551 = getelementptr i8, ptr %scevgep550, i64 %i.ado
  %i.adp = trunc i64 %indvars.iv326.i to i32
  %i.adq = mul i32 %0, %i.adp
  %i.adr = zext i32 %i.adq to i64
  %i.ads = shl nuw nsw i64 %i.adr, 3              ; 2 uses
  %scevgep520 = getelementptr i8, ptr %.1, i64 %i.ads
  %scevgep522 = getelementptr i8, ptr %scevgep521, i64 %i.ads
  %i.adt = trunc i64 %indvars.iv326.i to i32
  %i.adu = mul i32 %0, %i.adt
  %i.adv = zext i32 %i.adu to i64
  %i.adw = shl nuw nsw i64 %i.adv, 3              ; 2 uses
  %scevgep486 = getelementptr i8, ptr %.1, i64 %i.adw
  %scevgep488 = getelementptr i8, ptr %scevgep487.a, i64 %i.adw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acw, i8 0, i64 %i.pg, i1 false), !tbaa !8
  %i.adx = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv326.i
  %i.ady = load i32, ptr %i.adx, align 4, !tbaa !39 ; 2 uses
  %indvars.iv.next327.i = add nuw nsw i64 %indvars.iv326.i, 1 ; 3 uses
  %i.adz = getelementptr inbounds nuw [4 x i8], ptr %i.aak, i64 %indvars.iv.next327.i ; 2 uses
  %i.aea = load i32, ptr %i.adz, align 4, !tbaa !39 ; 2 uses
  %i.aeb = icmp slt i32 %i.ady, %i.aea
  br i1 %i.aeb, label %.lr.ph249.i, label %._crit_edge.i208

.lr.ph249.i:                                      ; preds = %.preheader240.i
  %i.aec = mul nuw nsw i64 %indvars.iv326.i, %i.pa
  %i.aed = sext i32 %i.ady to i64
  %i.aee = trunc nuw nsw i64 %indvars.iv326.i to i32
  %invariant.gep.i217 = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.aec ; 4 uses
  %bound0584 = icmp ult ptr %i.acw, %scevgep580
  %bound1585 = icmp ult ptr %scevgep579, %scevgep489
  %found.conflict586 = and i1 %bound0584, %bound1585
  br label %bb.dk

bb.dk:                                            ; preds = %.loopexit234.i, %.lr.ph249.i
  %i.aef = phi i32 [ %i.aea, %.lr.ph249.i ], [ %i.agd, %.loopexit234.i ]
  %indvars.iv287.i = phi i64 [ %i.aed, %.lr.ph249.i ], [ %indvars.iv.next288.i, %.loopexit234.i ] ; 2 uses
  %i.aeg = getelementptr inbounds [4 x i8], ptr %i.aam, i64 %indvars.iv287.i ; 2 uses
  %i.aeh = load i32, ptr %i.aeg, align 4, !tbaa !39 ; 2 uses
  %i.aei = zext i32 %i.aeh to i64
  %i.aej = icmp eq i64 %indvars.iv326.i, %i.aei
  br i1 %i.aej, label %.loopexit234.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.aek = call double @distance(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.aee, i32 noundef %i.aeh) #22 ; 4 uses
  %i.ael = load i32, ptr %i.aeg, align 4, !tbaa !39
  %i.aem = mul nsw i32 %i.ael, %0
  %i.aen = sext i32 %i.aem to i64                 ; 2 uses
  %invariant.gep355.i = getelementptr [8 x i8], ptr %.1, i64 %i.aen ; 5 uses
  br i1 %min.iters.check589, label %scalar.ph588.preheader, label %vector.memcheck576

vector.memcheck576:                               ; preds = %bb.dl
  %i.aeo = shl nsw i64 %i.aen, 3
  %scevgep578 = getelementptr i8, ptr %scevgep577, i64 %i.aeo
  %bound0581 = icmp ult ptr %i.acw, %scevgep578
  %bound1582 = icmp ult ptr %invariant.gep355.i, %scevgep489
  %found.conflict583 = and i1 %bound0581, %bound1582
  %conflict.rdx587 = or i1 %found.conflict583, %found.conflict586
  br i1 %conflict.rdx587, label %scalar.ph588.preheader, label %vector.ph590

vector.ph590:                                     ; preds = %vector.memcheck576
  %broadcast.splatinsert592 = insertelement <2 x double> poison, double %i.aek, i64 0
  %broadcast.splat593 = shufflevector <2 x double> %broadcast.splatinsert592, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body596

vector.body596:                                   ; preds = %vector.body596, %vector.ph590
  %index597 = phi i64 [ 0, %vector.ph590 ], [ %index.next604, %vector.body596 ] ; 4 uses
  %i.aep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i217, i64 %index597 ; 2 uses
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.aep, i64 16
  %wide.load598.a = load <2 x double>, ptr %i.aep, align 8, !tbaa !8, !alias.scope !176
  %wide.load599 = load <2 x double>, ptr %i.aeq, align 8, !tbaa !8, !alias.scope !176
  %i.aer = getelementptr [8 x i8], ptr %invariant.gep355.i, i64 %index597 ; 2 uses
  %i.aes = getelementptr i8, ptr %i.aer, i64 16
  %wide.load600 = load <2 x double>, ptr %i.aer, align 8, !tbaa !8, !alias.scope !179
  %wide.load601 = load <2 x double>, ptr %i.aes, align 8, !tbaa !8, !alias.scope !179
  %i.aet = fsub <2 x double> %wide.load598.a, %wide.load600
  %i.aeu = fsub <2 x double> %wide.load599, %wide.load601
  %i.aev = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index597 ; 3 uses
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aev, i64 16 ; 2 uses
  %wide.load602 = load <2 x double>, ptr %i.aev, align 8, !tbaa !8, !alias.scope !181, !noalias !183
  %wide.load603 = load <2 x double>, ptr %i.aew, align 8, !tbaa !8, !alias.scope !181, !noalias !183
  %i.aex = fneg <2 x double> %i.aet
  %i.aey = fneg <2 x double> %i.aeu
  %i.aez = fmul <2 x double> %broadcast.splat595, %i.aex
  %i.afa = fmul <2 x double> %broadcast.splat595, %i.aey
  %i.afb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aez, <2 x double> %broadcast.splat593, <2 x double> %wide.load602)
  %i.afc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.afa, <2 x double> %broadcast.splat593, <2 x double> %wide.load603)
  store <2 x double> %i.afb, ptr %i.aev, align 8, !tbaa !8, !alias.scope !181, !noalias !183
  store <2 x double> %i.afc, ptr %i.aew, align 8, !tbaa !8, !alias.scope !181, !noalias !183
  %index.next604 = add nuw i64 %index597, 4       ; 2 uses
  %i.afd = icmp eq i64 %index.next604, %n.vec591
  br i1 %i.afd, label %middle.block605, label %vector.body596, !llvm.loop !184

middle.block605:                                  ; preds = %vector.body596
  br i1 %cmp.n606, label %.loopexit234.loopexit.i, label %scalar.ph588.preheader

scalar.ph588.preheader:                           ; preds = %vector.memcheck576, %bb.dl, %middle.block605
  %indvars.iv282.i.ph = phi i64 [ 0, %vector.memcheck576 ], [ 0, %bb.dl ], [ %n.vec591, %middle.block605 ] ; 6 uses
  br i1 %lcmp.mod857.not, label %scalar.ph588.prol.loopexit, label %scalar.ph588.prol

scalar.ph588.prol:                                ; preds = %scalar.ph588.preheader
  %gep.i218.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i217, i64 %indvars.iv282.i.ph
  %i.afe = load double, ptr %gep.i218.prol, align 8, !tbaa !8
  %gep356.i.prol = getelementptr [8 x i8], ptr %invariant.gep355.i, i64 %indvars.iv282.i.ph
  %i.aff = load double, ptr %gep356.i.prol, align 8, !tbaa !8
  %i.afg = fsub double %i.afe, %i.aff
  %i.afh = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv282.i.ph ; 2 uses
  %i.afi = load double, ptr %i.afh, align 8, !tbaa !8
  %i.afj = fneg double %i.afg
  %i.afk = fmul double %i.acv, %i.afj
  %i.afl = call double @llvm.fmuladd.f64(double %i.afk, double %i.aek, double %i.afi)
  store double %i.afl, ptr %i.afh, align 8, !tbaa !8
  %indvars.iv.next283.i.prol = or disjoint i64 %indvars.iv282.i.ph, 1
  br label %scalar.ph588.prol.loopexit

scalar.ph588.prol.loopexit:                       ; preds = %scalar.ph588.prol, %scalar.ph588.preheader
  %indvars.iv282.i.unr = phi i64 [ %indvars.iv282.i.ph, %scalar.ph588.preheader ], [ %indvars.iv.next283.i.prol, %scalar.ph588.prol ]
  %i.afm = icmp eq i64 %indvars.iv282.i.ph, %i.ps
  br i1 %i.afm, label %.loopexit234.loopexit.i, label %scalar.ph588

scalar.ph588:                                     ; preds = %scalar.ph588.prol.loopexit, %scalar.ph588
  %indvars.iv282.i = phi i64 [ %indvars.iv.next283.i.1, %scalar.ph588 ], [ %indvars.iv282.i.unr, %scalar.ph588.prol.loopexit ] ; 5 uses
  %gep.i218 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i217, i64 %indvars.iv282.i
  %i.afn = load double, ptr %gep.i218, align 8, !tbaa !8
  %gep356.i = getelementptr [8 x i8], ptr %invariant.gep355.i, i64 %indvars.iv282.i
  %i.afo = load double, ptr %gep356.i, align 8, !tbaa !8
  %i.afp = fsub double %i.afn, %i.afo
  %i.afq = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv282.i ; 2 uses
  %i.afr = load double, ptr %i.afq, align 8, !tbaa !8
  %i.afs = fneg double %i.afp
  %i.aft = fmul double %i.acv, %i.afs
  %i.afu = call double @llvm.fmuladd.f64(double %i.aft, double %i.aek, double %i.afr)
  store double %i.afu, ptr %i.afq, align 8, !tbaa !8
  %indvars.iv.next283.i = add nuw nsw i64 %indvars.iv282.i, 1 ; 3 uses
  %gep.i218.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i217, i64 %indvars.iv.next283.i
  %i.afv = load double, ptr %gep.i218.1, align 8, !tbaa !8
  %gep356.i.1 = getelementptr [8 x i8], ptr %invariant.gep355.i, i64 %indvars.iv.next283.i
  %i.afw = load double, ptr %gep356.i.1, align 8, !tbaa !8
  %i.afx = fsub double %i.afv, %i.afw
  %i.afy = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.next283.i ; 2 uses
  %i.afz = load double, ptr %i.afy, align 8, !tbaa !8
  %i.aga = fneg double %i.afx
  %i.agb = fmul double %i.acv, %i.aga
  %i.agc = call double @llvm.fmuladd.f64(double %i.agb, double %i.aek, double %i.afz)
  store double %i.agc, ptr %i.afy, align 8, !tbaa !8
  %indvars.iv.next283.i.1 = add nuw nsw i64 %indvars.iv282.i, 2 ; 2 uses
  %exitcond286.not.i.1 = icmp eq i64 %indvars.iv.next283.i.1, %i.pa
  br i1 %exitcond286.not.i.1, label %.loopexit234.loopexit.i, label %scalar.ph588, !llvm.loop !185

.loopexit234.loopexit.i:                          ; preds = %scalar.ph588.prol.loopexit, %scalar.ph588, %middle.block605
  %.pre.i219 = load i32, ptr %i.adz, align 4, !tbaa !39
  br label %.loopexit234.i

.loopexit234.i:                                   ; preds = %.loopexit234.loopexit.i, %bb.dk
  %i.agd = phi i32 [ %.pre.i219, %.loopexit234.loopexit.i ], [ %i.aef, %bb.dk ] ; 2 uses
  %indvars.iv.next288.i = add nsw i64 %indvars.iv287.i, 1 ; 2 uses
  %i.age = sext i32 %i.agd to i64
  %i.agf = icmp slt i64 %indvars.iv.next288.i, %i.age
  br i1 %i.agf, label %bb.dk, label %._crit_edge.i208, !llvm.loop !186

._crit_edge.i208:                                 ; preds = %.loopexit234.i, %.preheader240.i
  br i1 %i.aah, label %bb.dm, label %.lr.ph252.i

.lr.ph252.i:                                      ; preds = %._crit_edge.i208
  %i.agg = trunc i64 %indvars.iv326.i to i32      ; 2 uses
  %i.agh = mul i32 %0, %i.agg
  %i.agi = zext i32 %i.agh to i64
  %invariant.gep357.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.agi ; 4 uses
  %bound0555 = icmp ult ptr %i.acw, %scevgep551
  %bound1556 = icmp ult ptr %scevgep549, %scevgep489
  %found.conflict557 = and i1 %bound0555, %bound1556
  %conflict.rdx558 = or i1 %found.conflict554, %found.conflict557
  br label %bb.do

bb.dm:                                            ; preds = %._crit_edge.i208
  %i.agj = mul nuw nsw i64 %indvars.iv326.i, %i.pa ; 2 uses
  %i.agk = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.agj
  %i.agl = trunc nuw nsw i64 %indvars.iv326.i to i32
  call void @QuadTree_get_supernodes(ptr noundef %.0.i207, double noundef 6.000000e-01, ptr noundef %i.agk, i32 noundef %i.agl, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f) #22
  %i.agm = load double, ptr %i.f, align 8, !tbaa !8
  %i.agn = load i32, ptr %i.b, align 4, !tbaa !39 ; 3 uses
  %i.ago = sitofp i32 %i.agn to double
  %i.agp = insertelement <2 x double> poison, double %i.ago, i64 0
  %i.agq = insertelement <2 x double> %i.agp, double %i.agm, i64 1
  %i.agr = fadd <2 x double> %i.adj, %i.agq       ; 2 uses
  %i.ags = icmp sgt i32 %i.agn, 0
  br i1 %i.ags, label %.lr.ph256.i, label %.loopexit237.i

.lr.ph256.i:                                      ; preds = %bb.dm
  %i.agt = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.agu = load ptr, ptr %i.d, align 8, !tbaa !46
  %i.agv = load ptr, ptr %i.c, align 8, !tbaa !46 ; 3 uses
  %i.agw = and i64 %i.agj, 4294967295
  %wide.trip.count309.i = zext nneg i32 %i.agn to i64 ; 2 uses
  %invariant.gep361.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.agw ; 4 uses
  %i.agx = mul i64 %i.ph, %wide.trip.count309.i
  %scevgep523 = getelementptr i8, ptr %i.agv, i64 %i.agx
  %bound0524.a = icmp ult ptr %i.acw, %scevgep522
  %bound1525.a = icmp ult ptr %scevgep520, %scevgep489
  %found.conflict526.a = and i1 %bound0524.a, %bound1525.a
  %bound0527 = icmp ult ptr %i.acw, %scevgep523
  %bound1528 = icmp ult ptr %i.agv, %scevgep489
  %found.conflict529 = and i1 %bound0527, %bound1528
  %conflict.rdx = or i1 %found.conflict526.a, %found.conflict529
  br label %bb.dn

bb.dn:                                            ; preds = %.loopexit802, %.lr.ph256.i
  %indvars.iv306.i = phi i64 [ 0, %.lr.ph256.i ], [ %indvars.iv.next307.i, %.loopexit802 ] ; 4 uses
  %i.agy = getelementptr inbounds nuw [8 x i8], ptr %i.agt, i64 %indvars.iv306.i
  %i.agz = load double, ptr %i.agy, align 8, !tbaa !8 ; 2 uses
  %i.aha = fcmp ogt double %i.agz, 1.000000e-15
  %i.ahb = select i1 %i.aha, double %i.agz, double 1.000000e-15
  %i.ahc = getelementptr inbounds nuw [8 x i8], ptr %i.agu, i64 %indvars.iv306.i
  %i.ahd = load double, ptr %i.ahc, align 8, !tbaa !8
  %i.ahe = fmul double %i.acr, %i.ahd             ; 4 uses
  %i.ahf = mul nuw nsw i64 %indvars.iv306.i, %i.pa
  %i.ahg = call double @pow(double noundef %i.ahb, double noundef %i.acq) #22 ; 4 uses
  %invariant.gep363.i = getelementptr inbounds nuw [8 x i8], ptr %i.agv, i64 %i.ahf ; 4 uses
  %brmerge939 = select i1 %min.iters.check531, i1 true, i1 %conflict.rdx
  br i1 %brmerge939, label %scalar.ph530.preheader, label %vector.ph532

vector.ph532:                                     ; preds = %bb.dn
  %broadcast.splatinsert534 = insertelement <2 x double> poison, double %i.ahe, i64 0
  %broadcast.splat535 = shufflevector <2 x double> %broadcast.splatinsert534, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert536 = insertelement <2 x double> poison, double %i.ahg, i64 0
  %broadcast.splat537 = shufflevector <2 x double> %broadcast.splatinsert536, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body538

vector.body538:                                   ; preds = %vector.body538, %vector.ph532
  %index539 = phi i64 [ 0, %vector.ph532 ], [ %index.next543, %vector.body538 ] ; 4 uses
  %i.ahh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361.i, i64 %index539
  %wide.load540 = load <2 x double>, ptr %i.ahh, align 8, !tbaa !8, !alias.scope !187
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363.i, i64 %index539
  %wide.load541 = load <2 x double>, ptr %i.ahi, align 8, !tbaa !8, !alias.scope !190
  %i.ahj = fsub <2 x double> %wide.load540, %wide.load541
  %i.ahk = fmul <2 x double> %broadcast.splat535, %i.ahj
  %i.ahl = fdiv <2 x double> %i.ahk, %broadcast.splat537
  %i.ahm = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index539 ; 2 uses
  %wide.load542 = load <2 x double>, ptr %i.ahm, align 8, !tbaa !8, !alias.scope !192, !noalias !194
  %i.ahn = fadd <2 x double> %wide.load542, %i.ahl
  store <2 x double> %i.ahn, ptr %i.ahm, align 8, !tbaa !8, !alias.scope !192, !noalias !194
  %index.next543 = add nuw i64 %index539, 2       ; 2 uses
  %i.aho = icmp eq i64 %index.next543, %n.vec533
  br i1 %i.aho, label %middle.block544, label %vector.body538, !llvm.loop !195

middle.block544:                                  ; preds = %vector.body538
  br i1 %cmp.n545, label %.loopexit802, label %scalar.ph530.preheader

scalar.ph530.preheader:                           ; preds = %bb.dn, %middle.block544
  %indvars.iv301.i.ph = phi i64 [ %n.vec533, %middle.block544 ], [ 0, %bb.dn ] ; 6 uses
  br i1 %lcmp.mod861.not, label %scalar.ph530.prol.loopexit, label %scalar.ph530.prol

scalar.ph530.prol:                                ; preds = %scalar.ph530.preheader
  %gep362.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361.i, i64 %indvars.iv301.i.ph
  %i.ahp = load double, ptr %gep362.i.prol, align 8, !tbaa !8
  %gep364.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363.i, i64 %indvars.iv301.i.ph
  %i.ahq = load double, ptr %gep364.i.prol, align 8, !tbaa !8
  %i.ahr = fsub double %i.ahp, %i.ahq
  %i.ahs = fmul double %i.ahe, %i.ahr
  %i.aht = fdiv double %i.ahs, %i.ahg
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv301.i.ph ; 2 uses
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !8
  %i.ahw = fadd double %i.ahv, %i.aht
  store double %i.ahw, ptr %i.ahu, align 8, !tbaa !8
  %indvars.iv.next302.i.prol = or disjoint i64 %indvars.iv301.i.ph, 1
  br label %scalar.ph530.prol.loopexit

scalar.ph530.prol.loopexit:                       ; preds = %scalar.ph530.prol, %scalar.ph530.preheader
  %indvars.iv301.i.unr = phi i64 [ %indvars.iv301.i.ph, %scalar.ph530.preheader ], [ %indvars.iv.next302.i.prol, %scalar.ph530.prol ]
  %i.ahx = icmp eq i64 %indvars.iv301.i.ph, %i.pu
  br i1 %i.ahx, label %.loopexit802, label %scalar.ph530

scalar.ph530:                                     ; preds = %scalar.ph530.prol.loopexit, %scalar.ph530
  %indvars.iv301.i = phi i64 [ %indvars.iv.next302.i.1, %scalar.ph530 ], [ %indvars.iv301.i.unr, %scalar.ph530.prol.loopexit ] ; 5 uses
  %gep362.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361.i, i64 %indvars.iv301.i
  %i.ahy = load double, ptr %gep362.i, align 8, !tbaa !8
  %gep364.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363.i, i64 %indvars.iv301.i
  %i.ahz = load double, ptr %gep364.i, align 8, !tbaa !8
  %i.aia = fsub double %i.ahy, %i.ahz
  %i.aib = fmul double %i.ahe, %i.aia
  %i.aic = fdiv double %i.aib, %i.ahg
  %i.aid = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv301.i ; 2 uses
  %i.aie = load double, ptr %i.aid, align 8, !tbaa !8
  %i.aif = fadd double %i.aie, %i.aic
  store double %i.aif, ptr %i.aid, align 8, !tbaa !8
  %indvars.iv.next302.i = add nuw nsw i64 %indvars.iv301.i, 1 ; 3 uses
  %gep362.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep361.i, i64 %indvars.iv.next302.i
  %i.aig = load double, ptr %gep362.i.1, align 8, !tbaa !8
  %gep364.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep363.i, i64 %indvars.iv.next302.i
  %i.aih = load double, ptr %gep364.i.1, align 8, !tbaa !8
  %i.aii = fsub double %i.aig, %i.aih
  %i.aij = fmul double %i.ahe, %i.aii
  %i.aik = fdiv double %i.aij, %i.ahg
  %i.ail = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.next302.i ; 2 uses
  %i.aim = load double, ptr %i.ail, align 8, !tbaa !8
  %i.ain = fadd double %i.aim, %i.aik
  store double %i.ain, ptr %i.ail, align 8, !tbaa !8
  %indvars.iv.next302.i.1 = add nuw nsw i64 %indvars.iv301.i, 2 ; 2 uses
  %exitcond305.not.i.1 = icmp eq i64 %indvars.iv.next302.i.1, %i.pa
  br i1 %exitcond305.not.i.1, label %.loopexit802, label %scalar.ph530, !llvm.loop !196

.loopexit802:                                     ; preds = %scalar.ph530.prol.loopexit, %scalar.ph530, %middle.block544
  %indvars.iv.next307.i = add nuw nsw i64 %indvars.iv306.i, 1 ; 2 uses
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next307.i, %wide.trip.count309.i
  br i1 %exitcond310.not.i, label %.loopexit237.i, label %bb.dn, !llvm.loop !197

bb.do:                                            ; preds = %.loopexit.i209, %.lr.ph252.i
  %indvars.iv295.i = phi i64 [ 0, %.lr.ph252.i ], [ %indvars.iv.next296.i, %.loopexit.i209 ] ; 4 uses
  %i.aio = icmp eq i64 %indvars.iv295.i, %indvars.iv326.i
  br i1 %i.aio, label %.loopexit.i209, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.aip = trunc nuw nsw i64 %indvars.iv295.i to i32
  %i.aiq = call double @distance_cropped(ptr noundef %.1, i32 noundef range(i32 1, -2147483648) %0, i32 noundef %i.agg, i32 noundef %i.aip) #22
  %i.air = mul nuw nsw i64 %indvars.iv295.i, %i.pa
  %i.ais = call double @pow(double noundef %i.aiq, double noundef %i.acq) #22 ; 4 uses
  %invariant.gep359.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.air ; 4 uses
  %brmerge940 = select i1 %min.iters.check560, i1 true, i1 %conflict.rdx558
  br i1 %brmerge940, label %scalar.ph559.preheader, label %vector.ph561

vector.ph561:                                     ; preds = %bb.dp
  %broadcast.splatinsert563 = insertelement <2 x double> poison, double %i.ais, i64 0
  %broadcast.splat564 = shufflevector <2 x double> %broadcast.splatinsert563, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body567

vector.body567:                                   ; preds = %vector.body567, %vector.ph561
  %index568 = phi i64 [ 0, %vector.ph561 ], [ %index.next572, %vector.body567 ] ; 4 uses
  %i.ait = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep357.i, i64 %index568
  %wide.load569 = load <2 x double>, ptr %i.ait, align 8, !tbaa !8, !alias.scope !198
  %i.aiu = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep359.i, i64 %index568
  %wide.load570 = load <2 x double>, ptr %i.aiu, align 8, !tbaa !8, !alias.scope !201
  %i.aiv = fsub <2 x double> %wide.load569, %wide.load570
  %i.aiw = fmul <2 x double> %broadcast.splat566, %i.aiv
  %i.aix = fdiv <2 x double> %i.aiw, %broadcast.splat564
  %i.aiy = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index568 ; 2 uses
  %wide.load571 = load <2 x double>, ptr %i.aiy, align 8, !tbaa !8, !alias.scope !203, !noalias !205
  %i.aiz = fadd <2 x double> %wide.load571, %i.aix
  store <2 x double> %i.aiz, ptr %i.aiy, align 8, !tbaa !8, !alias.scope !203, !noalias !205
  %index.next572 = add nuw i64 %index568, 2       ; 2 uses
  %i.aja = icmp eq i64 %index.next572, %n.vec562
  br i1 %i.aja, label %middle.block573, label %vector.body567, !llvm.loop !206

middle.block573:                                  ; preds = %vector.body567
  br i1 %cmp.n574, label %.loopexit.i209, label %scalar.ph559.preheader

scalar.ph559.preheader:                           ; preds = %bb.dp, %middle.block573
  %indvars.iv290.i.ph = phi i64 [ %n.vec562, %middle.block573 ], [ 0, %bb.dp ] ; 6 uses
  br i1 %lcmp.mod859.not.a, label %scalar.ph559.prol.loopexit, label %scalar.ph559.prol

scalar.ph559.prol:                                ; preds = %scalar.ph559.preheader
  %gep358.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep357.i, i64 %indvars.iv290.i.ph
  %i.ajb = load double, ptr %gep358.i.prol, align 8, !tbaa !8
  %gep360.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep359.i, i64 %indvars.iv290.i.ph
  %i.ajc = load double, ptr %gep360.i.prol, align 8, !tbaa !8
  %i.ajd = fsub double %i.ajb, %i.ajc
  %i.aje = fmul double %i.acr, %i.ajd
  %i.ajf = fdiv double %i.aje, %i.ais
  %i.ajg = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv290.i.ph ; 2 uses
  %i.ajh = load double, ptr %i.ajg, align 8, !tbaa !8
  %i.aji = fadd double %i.ajh, %i.ajf
  store double %i.aji, ptr %i.ajg, align 8, !tbaa !8
  %indvars.iv.next291.i.prol = or disjoint i64 %indvars.iv290.i.ph, 1
  br label %scalar.ph559.prol.loopexit

scalar.ph559.prol.loopexit:                       ; preds = %scalar.ph559.prol, %scalar.ph559.preheader
  %indvars.iv290.i.unr = phi i64 [ %indvars.iv290.i.ph, %scalar.ph559.preheader ], [ %indvars.iv.next291.i.prol, %scalar.ph559.prol ]
  %i.ajj = icmp eq i64 %indvars.iv290.i.ph, %i.pt
  br i1 %i.ajj, label %.loopexit.i209, label %scalar.ph559

scalar.ph559:                                     ; preds = %scalar.ph559.prol.loopexit, %scalar.ph559
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i.1, %scalar.ph559 ], [ %indvars.iv290.i.unr, %scalar.ph559.prol.loopexit ] ; 5 uses
  %gep358.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep357.i, i64 %indvars.iv290.i
  %i.ajk = load double, ptr %gep358.i, align 8, !tbaa !8
  %gep360.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep359.i, i64 %indvars.iv290.i
  %i.ajl = load double, ptr %gep360.i, align 8, !tbaa !8
  %i.ajm = fsub double %i.ajk, %i.ajl
  %i.ajn = fmul double %i.acr, %i.ajm
  %i.ajo = fdiv double %i.ajn, %i.ais
  %i.ajp = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv290.i ; 2 uses
  %i.ajq = load double, ptr %i.ajp, align 8, !tbaa !8
  %i.ajr = fadd double %i.ajq, %i.ajo
  store double %i.ajr, ptr %i.ajp, align 8, !tbaa !8
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1 ; 3 uses
  %gep358.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep357.i, i64 %indvars.iv.next291.i
  %i.ajs = load double, ptr %gep358.i.1, align 8, !tbaa !8
  %gep360.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep359.i, i64 %indvars.iv.next291.i
  %i.ajt = load double, ptr %gep360.i.1, align 8, !tbaa !8
  %i.aju = fsub double %i.ajs, %i.ajt
  %i.ajv = fmul double %i.acr, %i.aju
  %i.ajw = fdiv double %i.ajv, %i.ais
  %i.ajx = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.next291.i ; 2 uses
  %i.ajy = load double, ptr %i.ajx, align 8, !tbaa !8
  %i.ajz = fadd double %i.ajy, %i.ajw
  store double %i.ajz, ptr %i.ajx, align 8, !tbaa !8
  %indvars.iv.next291.i.1 = add nuw nsw i64 %indvars.iv290.i, 2 ; 2 uses
  %exitcond294.not.i.1 = icmp eq i64 %indvars.iv.next291.i.1, %i.pa
  br i1 %exitcond294.not.i.1, label %.loopexit.i209, label %scalar.ph559, !llvm.loop !207

.loopexit.i209:                                   ; preds = %scalar.ph559.prol.loopexit, %scalar.ph559, %middle.block573, %bb.do
  %indvars.iv.next296.i = add nuw nsw i64 %indvars.iv295.i, 1 ; 2 uses
  %exitcond300.not.i = icmp eq i64 %indvars.iv.next296.i, %wide.trip.count329.i
  br i1 %exitcond300.not.i, label %.loopexit237.i, label %bb.do, !llvm.loop !208

.loopexit237.i:                                   ; preds = %.loopexit.i209, %.loopexit802, %bb.dm
  %i.aka = phi <2 x double> [ %i.agr, %bb.dm ], [ %i.agr, %.loopexit802 ], [ %i.adj, %.loopexit.i209 ] ; 2 uses
  br i1 %i.pv, label %.epil.preheader863, label %.loopexit237.i.new

.loopexit237.i.new:                               ; preds = %.loopexit237.i, %.loopexit237.i.new
  %indvars.iv311.i = phi i64 [ %indvars.iv.next312.i.3, %.loopexit237.i.new ], [ 0, %.loopexit237.i ] ; 5 uses
  %.0205258.i = phi double [ %i.akp, %.loopexit237.i.new ], [ 0.000000e+00, %.loopexit237.i ]
  %niter871 = phi i64 [ %niter871.next.3, %.loopexit237.i.new ], [ 0, %.loopexit237.i ]
  %i.akb = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv311.i
  %i.akc = load double, ptr %i.akb, align 8, !tbaa !8 ; 2 uses
  %i.akd = call double @llvm.fmuladd.f64(double %i.akc, double %i.akc, double %.0205258.i)
  %i.ake = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv311.i
  %i.akf = getelementptr inbounds nuw i8, ptr %i.ake, i64 8
  %i.akg = load double, ptr %i.akf, align 8, !tbaa !8 ; 2 uses
  %i.akh = call double @llvm.fmuladd.f64(double %i.akg, double %i.akg, double %i.akd)
  %i.aki = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv311.i
  %i.akj = getelementptr inbounds nuw i8, ptr %i.aki, i64 16
  %i.akk = load double, ptr %i.akj, align 8, !tbaa !8 ; 2 uses
  %i.akl = call double @llvm.fmuladd.f64(double %i.akk, double %i.akk, double %i.akh)
  %i.akm = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv311.i
  %i.akn = getelementptr inbounds nuw i8, ptr %i.akm, i64 24
  %i.ako = load double, ptr %i.akn, align 8, !tbaa !8 ; 2 uses
  %i.akp = call double @llvm.fmuladd.f64(double %i.ako, double %i.ako, double %i.akl) ; 3 uses
  %indvars.iv.next312.i.3 = add nuw nsw i64 %indvars.iv311.i, 4 ; 2 uses
  %niter871.next.3 = add i64 %niter871, 4         ; 2 uses
  %niter871.ncmp.3 = icmp eq i64 %niter871.next.3, %unroll_iter870
  br i1 %niter871.ncmp.3, label %.unr-lcssa862, label %.loopexit237.i.new, !llvm.loop !209

.unr-lcssa862:                                    ; preds = %.loopexit237.i.new
  br i1 %lcmp.mod866.not.a, label %.epilog-lcssa867, label %.epil.preheader863

.epil.preheader863:                               ; preds = %.unr-lcssa862, %.loopexit237.i
  %indvars.iv311.i.epil.init = phi i64 [ 0, %.loopexit237.i ], [ %indvars.iv.next312.i.3, %.unr-lcssa862 ]
  %.0205258.i.epil.init = phi double [ 0.000000e+00, %.loopexit237.i ], [ %i.akp, %.unr-lcssa862 ]
  call void @llvm.assume(i1 %lcmp.mod869)
  br label %bb.dq

bb.dq:                                            ; preds = %bb.dq, %.epil.preheader863
  %indvars.iv311.i.epil = phi i64 [ %indvars.iv311.i.epil.init, %.epil.preheader863 ], [ %indvars.iv.next312.i.epil, %bb.dq ] ; 2 uses
  %.0205258.i.epil = phi double [ %.0205258.i.epil.init, %.epil.preheader863 ], [ %i.aks, %bb.dq ]
  %epil.iter865 = phi i64 [ 0, %.epil.preheader863 ], [ %epil.iter865.next, %bb.dq ]
  %i.akq = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv311.i.epil
  %i.akr = load double, ptr %i.akq, align 8, !tbaa !8 ; 2 uses
  %i.aks = call double @llvm.fmuladd.f64(double %i.akr, double %i.akr, double %.0205258.i.epil) ; 2 uses
  %indvars.iv.next312.i.epil = add nuw nsw i64 %indvars.iv311.i.epil, 1
  %epil.iter865.next = add i64 %epil.iter865, 1   ; 2 uses
  %epil.iter865.cmp.not = icmp eq i64 %epil.iter865.next, %xtraiter864
  br i1 %epil.iter865.cmp.not, label %.epilog-lcssa867, label %bb.dq, !llvm.loop !210

.epilog-lcssa867:                                 ; preds = %bb.dq, %.unr-lcssa862
  %.lcssa818 = phi double [ %i.akp, %.unr-lcssa862 ], [ %i.aks, %bb.dq ]
  %i.akt = call double @sqrt(double noundef %.lcssa818) #22 ; 4 uses
  %i.aku = fadd double %.1204263.i, %i.akt        ; 4 uses
  %i.akv = fcmp ogt double %i.akt, 0.000000e+00
  br i1 %i.akv, label %.preheader.i216.preheader, label %.loopexit236.i

.preheader.i216.preheader:                        ; preds = %.epilog-lcssa867
  br i1 %min.iters.check507, label %.preheader.i216.preheader806, label %vector.ph508

vector.ph508:                                     ; preds = %.preheader.i216.preheader
  %broadcast.splatinsert510 = insertelement <2 x double> poison, double %i.akt, i64 0
  %broadcast.splat511 = shufflevector <2 x double> %broadcast.splatinsert510, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %vector.ph508
  %index513 = phi i64 [ 0, %vector.ph508 ], [ %index.next515, %vector.body512 ] ; 2 uses
  %i.akw = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index513 ; 2 uses
  %wide.load514 = load <2 x double>, ptr %i.akw, align 8, !tbaa !8
  %i.akx = fdiv <2 x double> %wide.load514, %broadcast.splat511
  store <2 x double> %i.akx, ptr %i.akw, align 8, !tbaa !8
  %index.next515 = add nuw i64 %index513, 2       ; 2 uses
  %i.aky = icmp eq i64 %index.next515, %n.vec509
  br i1 %i.aky, label %middle.block516, label %vector.body512, !llvm.loop !211

middle.block516:                                  ; preds = %vector.body512
  br i1 %cmp.n517, label %.loopexit236.i, label %.preheader.i216.preheader806

.preheader.i216.preheader806:                     ; preds = %.preheader.i216.preheader, %middle.block516
  %indvars.iv316.i.ph = phi i64 [ 0, %.preheader.i216.preheader ], [ %n.vec509, %middle.block516 ]
  br label %.preheader.i216

.preheader.i216:                                  ; preds = %.preheader.i216.preheader806, %.preheader.i216
  %indvars.iv316.i = phi i64 [ %indvars.iv.next317.i, %.preheader.i216 ], [ %indvars.iv316.i.ph, %.preheader.i216.preheader806 ] ; 2 uses
  %i.akz = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv316.i ; 2 uses
  %i.ala = load double, ptr %i.akz, align 8, !tbaa !8
  %i.alb = fdiv double %i.ala, %i.akt
  store double %i.alb, ptr %i.akz, align 8, !tbaa !8
  %indvars.iv.next317.i = add nuw nsw i64 %indvars.iv316.i, 1 ; 2 uses
  %exitcond320.not.i = icmp eq i64 %indvars.iv.next317.i, %i.pa
  br i1 %exitcond320.not.i, label %.loopexit236.i, label %.preheader.i216, !llvm.loop !212

.loopexit236.i:                                   ; preds = %.preheader.i216, %middle.block516, %.epilog-lcssa867
  %i.alc = trunc i64 %indvars.iv326.i to i32
  %i.ald = mul i32 %0, %i.alc
  %i.ale = zext i32 %i.ald to i64
  %invariant.gep365.i = getelementptr inbounds nuw [8 x i8], ptr %.1, i64 %i.ale ; 4 uses
  br i1 %min.iters.check491, label %scalar.ph490.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.loopexit236.i
  %bound0 = icmp ult ptr %scevgep486, %scevgep489
  %bound1 = icmp ult ptr %i.acw, %scevgep488
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph490.preheader, label %vector.body496

vector.body496:                                   ; preds = %vector.memcheck, %vector.body496
  %index497 = phi i64 [ %index.next502, %vector.body496 ], [ 0, %vector.memcheck ] ; 3 uses
  %i.alf = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %index497 ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %i.alf, i64 16
  %wide.load498.a = load <2 x double>, ptr %i.alf, align 8, !tbaa !8, !alias.scope !213
  %wide.load499.a = load <2 x double>, ptr %i.alg, align 8, !tbaa !8, !alias.scope !213
  %i.alh = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365.i, i64 %index497 ; 3 uses
  %i.ali = getelementptr inbounds nuw i8, ptr %i.alh, i64 16 ; 2 uses
  %wide.load500 = load <2 x double>, ptr %i.alh, align 8, !tbaa !8, !alias.scope !216, !noalias !213
  %wide.load501 = load <2 x double>, ptr %i.ali, align 8, !tbaa !8, !alias.scope !216, !noalias !213
  %i.alj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat495, <2 x double> %wide.load498.a, <2 x double> %wide.load500)
  %i.alk = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat495, <2 x double> %wide.load499.a, <2 x double> %wide.load501)
  store <2 x double> %i.alj, ptr %i.alh, align 8, !tbaa !8, !alias.scope !216, !noalias !213
  store <2 x double> %i.alk, ptr %i.ali, align 8, !tbaa !8, !alias.scope !216, !noalias !213
  %index.next502 = add nuw i64 %index497, 4       ; 2 uses
  %i.all = icmp eq i64 %index.next502, %n.vec493
  br i1 %i.all, label %middle.block503, label %vector.body496, !llvm.loop !218

middle.block503:                                  ; preds = %vector.body496
  br i1 %cmp.n504, label %.loopexit235.i, label %scalar.ph490.preheader

scalar.ph490.preheader:                           ; preds = %vector.memcheck, %.loopexit236.i, %middle.block503
  %indvars.iv321.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.loopexit236.i ], [ %n.vec493, %middle.block503 ] ; 5 uses
  br i1 %lcmp.mod873.not, label %scalar.ph490.prol.loopexit, label %scalar.ph490.prol

scalar.ph490.prol:                                ; preds = %scalar.ph490.preheader
  %i.alm = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv321.i.ph
  %i.aln = load double, ptr %i.alm, align 8, !tbaa !8
  %gep366.i.prol = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365.i, i64 %indvars.iv321.i.ph ; 2 uses
  %i.alo = load double, ptr %gep366.i.prol, align 8, !tbaa !8
  %i.alp = call double @llvm.fmuladd.f64(double %.0207.i, double %i.aln, double %i.alo)
  store double %i.alp, ptr %gep366.i.prol, align 8, !tbaa !8
  %indvars.iv.next322.i.prol = or disjoint i64 %indvars.iv321.i.ph, 1
  br label %scalar.ph490.prol.loopexit

scalar.ph490.prol.loopexit:                       ; preds = %scalar.ph490.prol, %scalar.ph490.preheader
  %indvars.iv321.i.unr = phi i64 [ %indvars.iv321.i.ph, %scalar.ph490.preheader ], [ %indvars.iv.next322.i.prol, %scalar.ph490.prol ]
  %i.alq = icmp eq i64 %indvars.iv321.i.ph, %i.pw
  br i1 %i.alq, label %.loopexit235.i, label %scalar.ph490

scalar.ph490:                                     ; preds = %scalar.ph490.prol.loopexit, %scalar.ph490
  %indvars.iv321.i = phi i64 [ %indvars.iv.next322.i.1, %scalar.ph490 ], [ %indvars.iv321.i.unr, %scalar.ph490.prol.loopexit ] ; 4 uses
  %i.alr = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv321.i
  %i.als = load double, ptr %i.alr, align 8, !tbaa !8
  %gep366.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365.i, i64 %indvars.iv321.i ; 2 uses
  %i.alt = load double, ptr %gep366.i, align 8, !tbaa !8
  %i.alu = call double @llvm.fmuladd.f64(double %.0207.i, double %i.als, double %i.alt)
  store double %i.alu, ptr %gep366.i, align 8, !tbaa !8
  %indvars.iv.next322.i = add nuw nsw i64 %indvars.iv321.i, 1 ; 2 uses
  %i.alv = getelementptr inbounds nuw [8 x i8], ptr %i.acw, i64 %indvars.iv.next322.i
  %i.alw = load double, ptr %i.alv, align 8, !tbaa !8
  %gep366.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep365.i, i64 %indvars.iv.next322.i ; 2 uses
  %i.alx = load double, ptr %gep366.i.1, align 8, !tbaa !8
  %i.aly = call double @llvm.fmuladd.f64(double %.0207.i, double %i.alw, double %i.alx)
  store double %i.aly, ptr %gep366.i.1, align 8, !tbaa !8
  %indvars.iv.next322.i.1 = add nuw nsw i64 %indvars.iv321.i, 2 ; 2 uses
  %exitcond325.not.i.1 = icmp eq i64 %indvars.iv.next322.i.1, %i.pa
  br i1 %exitcond325.not.i.1, label %.loopexit235.i, label %scalar.ph490, !llvm.loop !219

._crit_edge266.i:                                 ; preds = %.loopexit235.i
  %.not229.i = icmp eq ptr %.0.i207, null
  br i1 %.not229.i, label %oned_optimizer_train.exit.i211, label %bb.dr

bb.dr:                                            ; preds = %._crit_edge266.i
  call void @QuadTree_delete(ptr noundef nonnull %.0.i207) #22
  %i.alz = fdiv <2 x double> %i.aka, %i.adb       ; 2 uses
  %i.ama = extractelement <2 x double> %i.alz, i64 0
  %i.amb = extractelement <2 x double> %i.alz, i64 1
  %i.amc = call double @llvm.fmuladd.f64(double %i.ama, double 5.000000e+00, double %i.amb) ; 3 uses
  %i.amd = sext i32 %i.adg to i64
  %i.ame = getelementptr inbounds [8 x i8], ptr %i.pe, i64 %i.amd ; 3 uses
  store double %i.amc, ptr %i.ame, align 8, !tbaa !8
  switch i32 %i.adf, label %bb.dx [
    i32 0, label %bb.ds
    i32 1, label %bb.du
  ]

bb.ds:                                            ; preds = %bb.dr
  %i.amf = icmp eq i32 %i.adg, 20
  br i1 %i.amf, label %oned_optimizer_train.exit.i211, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.amg = call i32 @llvm.smin.i32(i32 %i.adg, i32 19)
  %spec.select.i.i214 = add nsw i32 %i.amg, 1
  br label %oned_optimizer_train.exit.i211

bb.du:                                            ; preds = %bb.dr
  %i.amh = getelementptr i8, ptr %i.ame, i64 -8
  %i.ami = load double, ptr %i.amh, align 8, !tbaa !8
  %i.amj = fcmp olt double %i.amc, %i.ami
  %i.amk = icmp slt i32 %i.adg, 20
  %or.cond.i.i210 = and i1 %i.amk, %i.amj
  br i1 %or.cond.i.i210, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  %i.aml = add nsw i32 %i.adg, 1
  br label %oned_optimizer_train.exit.i211

bb.dw:                                            ; preds = %bb.du
  %i.amm = add nsw i32 %i.adg, -1
  br label %oned_optimizer_train.exit.i211

bb.dx:                                            ; preds = %bb.dr
  %i.amn = getelementptr i8, ptr %i.ame, i64 8
  %i.amo = load double, ptr %i.amn, align 8, !tbaa !8
  %i.amp = fcmp olt double %i.amc, %i.amo
  %i.amq = icmp sgt i32 %i.adg, 0
  %or.cond37.i.i215 = and i1 %i.amq, %i.amp
  br i1 %or.cond37.i.i215, label %bb.dy, label %bb.dz

bb.dy:                                            ; preds = %bb.dx
  %i.amr = add nsw i32 %i.adg, -1
  br label %oned_optimizer_train.exit.i211

bb.dz:                                            ; preds = %bb.dx
  %i.ams = add nsw i32 %i.adg, 1
  br label %oned_optimizer_train.exit.i211

oned_optimizer_train.exit.i211:                   ; preds = %bb.dz, %bb.dy, %bb.dw, %bb.dv, %bb.dt, %bb.ds, %._crit_edge266.i
  %i.amt = phi i32 [ 1, %bb.dz ], [ %i.adf, %bb.dy ], [ -1, %bb.dw ], [ 1, %bb.dv ], [ 1, %bb.dt ], [ %i.adf, %._crit_edge266.i ], [ -1, %bb.ds ]
  %i.amu = phi i32 [ %i.ams, %bb.dz ], [ %i.amr, %bb.dy ], [ %i.amm, %bb.dw ], [ %i.aml, %bb.dv ], [ %spec.select.i.i214, %bb.dt ], [ %i.adg, %._crit_edge266.i ], [ 19, %bb.ds ]
  br i1 %.not233.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %oned_optimizer_train.exit.i211
  %i.amv = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i212

bb.eb:                                            ; preds = %oned_optimizer_train.exit.i211
  %i.amw = fcmp ult double %i.aku, %.0203.i
  br i1 %i.amw, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.amx = fmul double %.0207.i, 9.000000e-01
  br label %update_step.exit.i212

bb.ed:                                            ; preds = %bb.eb
  %i.amy = fmul double %.0203.i, f0x3FEE666666666666
  %i.amz = fcmp ogt double %i.aku, %i.amy
  br i1 %i.amz, label %update_step.exit.i212, label %bb.ee

bb.ee:                                            ; preds = %bb.ed
  %i.ana = fmul double %.0207.i, f0x3FEFAE147AE147AE
  %i.anb = fdiv double %i.ana, 9.000000e-01
  br label %update_step.exit.i212

update_step.exit.i212:                            ; preds = %bb.ee, %bb.ed, %bb.ec, %bb.ea
  %.0.i.i213 = phi double [ %i.amv, %bb.ea ], [ %i.amx, %bb.ec ], [ %.0207.i, %bb.ed ], [ %i.anb, %bb.ee ] ; 2 uses
  %i.anc = fcmp ogt double %.0.i.i213, 1.000000e-03
  %i.and = icmp slt i32 %i.adh, %i.zw
  %i.ane = select i1 %i.anc, i1 %i.and, i1 false
  br i1 %i.ane, label %gv_calloc.exit.i205, label %bb.ef, !llvm.loop !220

bb.ef:                                            ; preds = %update_step.exit.i212
  %i.anf = load i8, ptr %i.ox, align 4
  %i.ang = and i8 %i.anf, 4
  %.not230.i = icmp eq i8 %i.ang, 0
  br i1 %.not230.i, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  call fastcc void @beautify_leaves(i32 noundef range(i32 1, -2147483648) %0, ptr noundef %i.aai, ptr noundef nonnull %.1)
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef, %bb.db
  %.0218.i = phi ptr [ %i.zt, %bb.db ], [ %i.aai, %bb.eg ], [ %i.aai, %bb.ef ] ; 2 uses
  %.0206.i = phi ptr [ null, %bb.db ], [ %i.acw, %bb.eg ], [ %i.acw, %bb.ef ]
  %.2.i = phi i32 [ %i.aaa, %bb.db ], [ %.1.i206, %bb.eg ], [ %.1.i206, %bb.ef ]
  br i1 %i.aah, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  store i32 %.2.i, ptr %i.oy, align 4, !tbaa !13
  br label %bb.ej

bb.ej:                                            ; preds = %bb.ei, %bb.eh
  %.not231.i = icmp eq ptr %.0218.i, %i.zt
  br i1 %.not231.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  call void @SparseMatrix_delete(ptr noundef %.0218.i) #22
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej
  call void @free(ptr noundef %.0206.i) #22
  %i.anh = load ptr, ptr %i.c, align 8, !tbaa !46
  call void @free(ptr noundef %i.anh) #22
  %i.ani = load ptr, ptr %i.d, align 8, !tbaa !46
  call void @free(ptr noundef %i.ani) #22
  %i.anj = load ptr, ptr %i.e, align 8, !tbaa !46
  call void @free(ptr noundef %i.anj) #22
  br label %spring_electrical_embedding.exit

spring_electrical_embedding.exit:                 ; preds = %bb.cw, %bb.cx, %bb.el
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
end_hunk_2
