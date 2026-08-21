inline.NumInlined: 446
inline.NumDeleted: 60
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0_@Ver_ParseFile:Ver_ParseStart.exit
  tail call void @Ver_ParseReportUndefBoxes(ptr noundef nonnull %calloc.i)
  %i.hb = tail call ptr @Ver_ParseCollectUndefBoxes(ptr noundef nonnull %calloc.i) ; 6 uses
  %i.hc = getelementptr i8, ptr %i.hb, i64 4
  %.val19.i.i.i = load i32, ptr %i.hc, align 4, !tbaa !22 ; 3 uses
  %i.hd = icmp sgt i32 %.val19.i.i.i, 0           ; 2 uses
  %i.he = getelementptr i8, ptr %i.hb, i64 8      ; 2 uses
  br i1 %i.hd, label %.lr.ph26.i.i.i, label %.outer.split.us.i.i

.lr.ph26.i.i.i:                                   ; preds = %bb.bn
  %.val21.i.i.i = load ptr, ptr %i.he, align 8, !tbaa !26 ; 2 uses
  %wide.trip.count32.i.i.i = zext nneg i32 %.val19.i.i.i to i64 ; 2 uses
  br label %bb.bo

bb.bo:                                            ; preds = %.critedge2.i.i.i, %.lr.ph26.i.i.i
  %indvars.iv29.i.i.i = phi i64 [ 0, %.lr.ph26.i.i.i ], [ %indvars.iv.next30.i.i.i, %.critedge2.i.i.i ] ; 2 uses
  %.025.i.i.i = phi i32 [ 0, %.lr.ph26.i.i.i ], [ %.1.lcssa.i.i.i, %.critedge2.i.i.i ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.i.i, i64 %indvars.iv29.i.i.i
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !66
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 344
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !75 ; 2 uses
  %i.hj = getelementptr i8, ptr %i.hi, i64 4
  %.val18.i.i.i = load i32, ptr %i.hj, align 4, !tbaa !22 ; 3 uses
  %i.hk = icmp sgt i32 %.val18.i.i.i, 0
  br i1 %i.hk, label %.lr.ph.i.i.i, label %.critedge2.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bo
  %i.hl = getelementptr i8, ptr %i.hi, i64 8
  %.val20.i.i.i = load ptr, ptr %i.hl, align 8, !tbaa !26 ; 5 uses
  %wide.trip.count.i.i.i = zext nneg i32 %.val18.i.i.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.hm = icmp ult i32 %.val18.i.i.i, 4
  br i1 %i.hm, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.3, %bb.bp ] ; 5 uses
  %.123.i.i.i = phi i32 [ %.025.i.i.i, %.lr.ph.i.i.i.new ], [ %spec.select.i.i.i.3, %bb.bp ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.3, %bb.bp ]
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %indvars.iv.i.i.i
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !66
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 72
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !76
  %i.hr = getelementptr i8, ptr %i.hq, i64 4
  %.val17.i.i.i = load i32, ptr %i.hr, align 4, !tbaa !22
  %spec.select.i.i.i = tail call i32 @llvm.smax.i32(i32 %.123.i.i.i, i32 %.val17.i.i.i)
  %i.hs = freeze i32 %spec.select.i.i.i
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %indvars.iv.i.i.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !66
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 72
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !76
  %i.hy = getelementptr i8, ptr %i.hx, i64 4
  %.val17.i.i.i.1 = load i32, ptr %i.hy, align 4, !tbaa !22
  %.val17.i.i.i.1.fr = freeze i32 %.val17.i.i.i.1
  %spec.select.i.i.i.1 = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 %.val17.i.i.i.1.fr)
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %indvars.iv.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %i.ib = load ptr, ptr %i.ia, align 8, !tbaa !66
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 72
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !76
  %i.ie = getelementptr i8, ptr %i.id, i64 4
  %.val17.i.i.i.2 = load i32, ptr %i.ie, align 4, !tbaa !22
  %.val17.i.i.i.2.fr = freeze i32 %.val17.i.i.i.2
  %spec.select.i.i.i.2 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.i.i.1, i32 %.val17.i.i.i.2.fr)
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %indvars.iv.i.i.i
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 72
  %i.ij = load ptr, ptr %i.ii, align 8, !tbaa !76
  %i.ik = getelementptr i8, ptr %i.ij, i64 4
  %.val17.i.i.i.3 = load i32, ptr %i.ik, align 4, !tbaa !22
  %.val17.i.i.i.3.fr = freeze i32 %.val17.i.i.i.3
  %spec.select.i.i.i.3 = tail call i32 @llvm.smax.i32(i32 %spec.select.i.i.i.2, i32 %.val17.i.i.i.3.fr) ; 3 uses
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.critedge2.i.i.i.loopexit.unr-lcssa, label %bb.bp, !llvm.loop !77

.critedge2.i.i.i.loopexit.unr-lcssa:              ; preds = %bb.bp
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge2.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge2.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.3, %.critedge2.i.i.i.loopexit.unr-lcssa ]
  %.123.i.i.i.epil.init = phi i32 [ %.025.i.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i.3, %.critedge2.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod143 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod143)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bq, %.epil.preheader
  %indvars.iv.i.i.i.epil = phi i64 [ %indvars.iv.i.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.i.epil, %bb.bq ] ; 2 uses
  %.123.i.i.i.epil = phi i32 [ %.123.i.i.i.epil.init, %.epil.preheader ], [ %i.iq, %bb.bq ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.bq ]
  %i.il = getelementptr inbounds nuw [8 x i8], ptr %.val20.i.i.i, i64 %indvars.iv.i.i.i.epil
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !66
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 72
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !76
  %i.ip = getelementptr i8, ptr %i.io, i64 4
  %.val17.i.i.i.epil = load i32, ptr %i.ip, align 4, !tbaa !22
  %spec.select.i.i.i.epil = tail call i32 @llvm.smax.i32(i32 %.123.i.i.i.epil, i32 %.val17.i.i.i.epil)
  %i.iq = freeze i32 %spec.select.i.i.i.epil      ; 2 uses
  %indvars.iv.next.i.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.critedge2.i.i.i, label %bb.bq, !llvm.loop !78

.critedge2.i.i.i:                                 ; preds = %.critedge2.i.i.i.loopexit.unr-lcssa, %bb.bq, %bb.bo
  %.1.lcssa.i.i.i = phi i32 [ %.025.i.i.i, %bb.bo ], [ %spec.select.i.i.i.3, %.critedge2.i.i.i.loopexit.unr-lcssa ], [ %i.iq, %bb.bq ] ; 3 uses
  %indvars.iv.next30.i.i.i = add nuw nsw i64 %indvars.iv29.i.i.i, 1 ; 2 uses
  %exitcond33.not.i.i.i = icmp eq i64 %indvars.iv.next30.i.i.i, %wide.trip.count32.i.i.i
  br i1 %exitcond33.not.i.i.i, label %Ver_ParseMaxBoxSize.exit.i.i, label %bb.bo, !llvm.loop !80

Ver_ParseMaxBoxSize.exit.i.i:                     ; preds = %.critedge2.i.i.i
  %i.ir = icmp sgt i32 %.1.lcssa.i.i.i, 0
  br i1 %i.ir, label %.outer.split.i.i, label %.outer.split.us.i.i

.outer.split.us.i.i:                              ; preds = %.outer.i.i, %Ver_ParseMaxBoxSize.exit.i.i, %bb.bn
  %i.is = tail call i32 @Ver_ParseCheckNondrivenNets(ptr noundef %i.hb) ; 0 uses
  br label %.split.i.i

.outer.split.i.i:                                 ; preds = %Ver_ParseMaxBoxSize.exit.i.i, %.outer.i.i
  %.0.ph73.i.i = phi i32 [ %i.kq, %.outer.i.i ], [ 0, %Ver_ParseMaxBoxSize.exit.i.i ] ; 3 uses
  %i.it = xor i32 %.0.ph73.i.i, -1
  br label %bb.br

bb.br:                                            ; preds = %.critedge.i37.i, %.outer.split.i.i
  %i.iu = tail call i32 @Ver_ParseCheckNondrivenNets(ptr noundef %i.hb)
  %.not76.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not76.i.i, label %.split.i.i, label %.preheader66.i.i

.preheader66.i.i:                                 ; preds = %bb.br, %Ver_ParseGetNondrivenBundle.exit.thread.i.i
  %indvars.iv.i34.i = phi i64 [ %indvars.iv.next.i35.i, %Ver_ParseGetNondrivenBundle.exit.thread.i.i ], [ 0, %bb.br ] ; 2 uses
  %i.iv = getelementptr inbounds nuw [8 x i8], ptr %.val21.i.i.i, i64 %indvars.iv.i34.i
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !66 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 344
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !75 ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iy, i64 4
  %.val31.i.i.i = load i32, ptr %i.iz, align 4, !tbaa !22 ; 2 uses
  %i.ja = icmp sgt i32 %.val31.i.i.i, 0
  br i1 %i.ja, label %.lr.ph46.i.i.i, label %Ver_ParseGetNondrivenBundle.exit.thread.i.i

.lr.ph46.i.i.i:                                   ; preds = %.preheader66.i.i
  %i.jb = getelementptr i8, ptr %i.iy, i64 8
  %.val34.i.i.i = load ptr, ptr %i.jb, align 8, !tbaa !26 ; 2 uses
  %wide.trip.count58.i.i.i.i = zext nneg i32 %.val31.i.i.i to i64 ; 2 uses
  br label %bb.bs

bb.bs:                                            ; preds = %.critedge2.i52.i.i, %.lr.ph46.i.i.i
  %indvars.iv52.i.i.i = phi i64 [ 0, %.lr.ph46.i.i.i ], [ %indvars.iv.next53.i.i.i, %.critedge2.i52.i.i ] ; 2 uses
  %i.jc = getelementptr inbounds nuw [8 x i8], ptr %.val34.i.i.i, i64 %indvars.iv52.i.i.i
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !66
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 72
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !76 ; 2 uses
  %i.jg = getelementptr i8, ptr %i.jf, i64 4
  %.val30.i.i.i = load i32, ptr %i.jg, align 4, !tbaa !22 ; 2 uses
  %.not.i.i36.i = icmp slt i32 %.0.ph73.i.i, %.val30.i.i.i
  br i1 %.not.i.i36.i, label %bb.bt, label %.critedge2.i52.i.i

bb.bt:                                            ; preds = %bb.bs
  %i.jh = add i32 %.val30.i.i.i, %i.it
  %i.ji = getelementptr i8, ptr %i.jf, i64 8
  %.val33.i.i.i = load ptr, ptr %i.ji, align 8, !tbaa !26
  %i.jj = sext i32 %i.jh to i64
  %i.jk = getelementptr inbounds [8 x i8], ptr %.val33.i.i.i, i64 %i.jj
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !66 ; 4 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %.critedge2.i52.i.i, label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.bt
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !81 ; 2 uses
  %i.jp = getelementptr i8, ptr %i.jo, i64 4
  %.val28.i.i.i = load i32, ptr %i.jp, align 4, !tbaa !22 ; 2 uses
  %i.jq = icmp sgt i32 %.val28.i.i.i, 0
  br i1 %i.jq, label %.lr.ph.i53.i.i, label %.critedge2.i52.i.i

.lr.ph.i53.i.i:                                   ; preds = %.preheader.i.i.i
  %i.jr = getelementptr i8, ptr %i.jo, i64 8
  %.val32.i.i.i = load ptr, ptr %i.jr, align 8, !tbaa !26
  %wide.trip.count.i54.i.i = zext nneg i32 %.val28.i.i.i to i64
  br label %bb.bu

bb.bu:                                            ; preds = %Ver_ParseFormalNetsAreDriven.exit.i.i.i, %.lr.ph.i53.i.i
  %indvars.iv.i55.i.i = phi i64 [ 0, %.lr.ph.i53.i.i ], [ %indvars.iv.next.i56.i.i, %Ver_ParseFormalNetsAreDriven.exit.i.i.i ] ; 2 uses
  %i.js = getelementptr inbounds nuw [8 x i8], ptr %.val32.i.i.i, i64 %indvars.iv.i55.i.i
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !66
  %i.ju = getelementptr i8, ptr %i.jt, i64 28
  %.val.i.i.i = load i32, ptr %i.ju, align 4, !tbaa !83
  %.not26.i.i.i = icmp eq i32 %.val.i.i.i, 0
  br i1 %.not26.i.i.i, label %.lr.ph49.i.i.i.i, label %Ver_ParseFormalNetsAreDriven.exit.i.i.i

.lr.ph49.i.i.i.i:                                 ; preds = %bb.bu
  %i.jv = load ptr, ptr %i.jl, align 8, !tbaa !84
  br label %bb.bv

bb.bv:                                            ; preds = %.critedge4.i.i.i.i, %.lr.ph49.i.i.i.i
  %indvars.iv55.i.i.i.i = phi i64 [ 0, %.lr.ph49.i.i.i.i ], [ %indvars.iv.next56.i.i.i.i, %.critedge4.i.i.i.i ] ; 2 uses
  %.02747.i.i.i.i = phi ptr [ null, %.lr.ph49.i.i.i.i ], [ %.263.i.i.i.i, %.critedge4.i.i.i.i ]
  %i.jw = getelementptr inbounds nuw [8 x i8], ptr %.val34.i.i.i, i64 %indvars.iv55.i.i.i.i
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !66
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 72
  %i.jz = load ptr, ptr %i.jy, align 8, !tbaa !76 ; 2 uses
  %i.ka = getelementptr i8, ptr %i.jz, i64 4
  %.val33.i.i.i.i = load i32, ptr %i.ka, align 4, !tbaa !22 ; 3 uses
  %i.kb = icmp sgt i32 %.val33.i.i.i.i, 0
  br i1 %i.kb, label %.lr.ph.i.i.i.i, label %.preheader.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.bv
  %.02539.i.i.i.i = add nsw i32 %.val33.i.i.i.i, -1
  %i.kc = getelementptr i8, ptr %i.jz, i64 8
  %.val36.i.i.i.i = load ptr, ptr %i.kc, align 8, !tbaa !26
  %4 = zext nneg i32 %.02539.i.i.i.i to i64
  br label %bb.bw

bb.bw:                                            ; preds = %bb.by, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %4, %.lr.ph.i.i.i.i ], [ %indvars.iv.next.i.i.i.i, %bb.by ] ; 4 uses
  %i.kd = getelementptr inbounds nuw [8 x i8], ptr %.val36.i.i.i.i, i64 %indvars.iv.i.i.i.i
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !66 ; 5 uses
  %.not.i.i.i38.i = icmp eq ptr %i.ke, null
  br i1 %.not.i.i.i38.i, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !84
  %i.kg = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.kf, ptr noundef nonnull readonly dereferenceable(1) %i.jv) #22
  %.not30.i.i.i.i = icmp eq i32 %i.kg, 0
  br i1 %.not30.i.i.i.i, label %.critedge2.i.i.i.i.a, label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %indvars.iv.next.i.i.i.i = add nsw i64 %indvars.iv.i.i.i.i, -1
  %5 = icmp sgt i64 %indvars.iv.i.i.i.i, 0
  br i1 %5, label %bb.bw, label %.preheader.i.i.i.i, !llvm.loop !85

.critedge2.i.i.i.i.a:                             ; preds = %bb.bx
  %6 = trunc nuw nsw i64 %indvars.iv.i.i.i.i to i32
  %7 = icmp eq i32 %.val33.i.i.i.i, %6
  br i1 %7, label %.critedge4.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.by, %.critedge2.i.i.i.i.a, %bb.bv
  %.262.i.i.i.i = phi ptr [ %i.ke, %.critedge2.i.i.i.i.a ], [ %.02747.i.i.i.i, %bb.bv ], [ %i.ke, %bb.by ] ; 3 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.262.i.i.i.i, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !81 ; 2 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 4
  %.val31.i.i.i.i = load i32, ptr %i.kj, align 4, !tbaa !22 ; 2 uses
  %i.kk = icmp sgt i32 %.val31.i.i.i.i, 0
  br i1 %i.kk, label %.lr.ph46.i.i.i.i, label %.critedge4.i.i.i.i

.lr.ph46.i.i.i.i:                                 ; preds = %.preheader.i.i.i.i
  %i.kl = getelementptr i8, ptr %i.ki, i64 8
  %.val35.i.i.i.i = load ptr, ptr %i.kl, align 8, !tbaa !26
  %wide.trip.count.i.i.i.i = zext nneg i32 %.val31.i.i.i.i to i64
  br label %bb.ca

bb.bz:                                            ; preds = %bb.ca
  %indvars.iv.next53.i.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i.i, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.critedge4.i.i.i.i, label %bb.ca, !llvm.loop !86

bb.ca:                                            ; preds = %bb.bz, %.lr.ph46.i.i.i.i
  %indvars.iv52.i.i.i.i = phi i64 [ 0, %.lr.ph46.i.i.i.i ], [ %indvars.iv.next53.i.i.i.i, %bb.bz ] ; 2 uses
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %.val35.i.i.i.i, i64 %indvars.iv52.i.i.i.i
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !66
  %i.ko = getelementptr i8, ptr %i.kn, i64 28
  %.val.i.i.i.i = load i32, ptr %i.ko, align 4, !tbaa !83
  %i.kp = icmp sgt i32 %.val.i.i.i.i, 0
  br i1 %i.kp, label %Ver_ParseFormalNetsAreDriven.exit.i.i.i, label %bb.bz

.critedge4.i.i.i.i:                               ; preds = %bb.bz, %.preheader.i.i.i.i, %.critedge2.i.i.i.i.a
  %.263.i.i.i.i = phi ptr [ %i.ke, %.critedge2.i.i.i.i.a ], [ %.262.i.i.i.i, %.preheader.i.i.i.i ], [ %.262.i.i.i.i, %bb.bz ]
  %indvars.iv.next56.i.i.i.i = add nuw nsw i64 %indvars.iv55.i.i.i.i, 1 ; 2 uses
  %exitcond59.not.i.i.i.i = icmp eq i64 %indvars.iv.next56.i.i.i.i, %wide.trip.count58.i.i.i.i
  br i1 %exitcond59.not.i.i.i.i, label %.critedge.i37.i, label %bb.bv, !llvm.loop !87

Ver_ParseFormalNetsAreDriven.exit.i.i.i:          ; preds = %bb.ca, %bb.bu
  %indvars.iv.next.i56.i.i = add nuw nsw i64 %indvars.iv.i55.i.i, 1 ; 2 uses
  %exitcond.not.i57.i.i = icmp eq i64 %indvars.iv.next.i56.i.i, %wide.trip.count.i54.i.i
  br i1 %exitcond.not.i57.i.i, label %.critedge2.i52.i.i, label %bb.bu, !llvm.loop !88

.critedge2.i52.i.i:                               ; preds = %Ver_ParseFormalNetsAreDriven.exit.i.i.i, %.preheader.i.i.i, %bb.bt, %bb.bs
  %indvars.iv.next53.i.i.i = add nuw nsw i64 %indvars.iv52.i.i.i, 1 ; 2 uses
  %exitcond56.not.i.i.i = icmp eq i64 %indvars.iv.next53.i.i.i, %wide.trip.count58.i.i.i.i
  br i1 %exitcond56.not.i.i.i, label %Ver_ParseGetNondrivenBundle.exit.thread.i.i, label %bb.bs, !llvm.loop !89

Ver_ParseGetNondrivenBundle.exit.thread.i.i:      ; preds = %.critedge2.i52.i.i, %.preheader66.i.i
  %indvars.iv.next.i35.i = add nuw nsw i64 %indvars.iv.i34.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i35.i, %wide.trip.count32.i.i.i
  br i1 %exitcond.not.i.i, label %.outer.i.i, label %.preheader66.i.i, !llvm.loop !90

.outer.i.i:                                       ; preds = %Ver_ParseGetNondrivenBundle.exit.thread.i.i
  %i.kq = add nuw nsw i32 %.0.ph73.i.i, 1         ; 2 uses
  %exitcond85.not.i.i = icmp eq i32 %i.kq, %.1.lcssa.i.i.i
  br i1 %exitcond85.not.i.i, label %.outer.split.us.i.i, label %.outer.split.i.i, !llvm.loop !91

.critedge.i37.i:                                  ; preds = %.critedge4.i.i.i.i
  %i.kr = tail call i32 @Ver_ParseDriveFormal(ptr noundef nonnull %calloc.i, ptr noundef %i.iw, ptr noundef nonnull %i.jl)
  %.not48.i.i = icmp eq i32 %i.kr, 0
  br i1 %.not48.i.i, label %Ver_ParseInternal.exit, label %bb.br, !llvm.loop !91

.split.i.i:                                       ; preds = %bb.br, %.outer.split.us.i.i
  %i.ks = tail call i32 @Ver_ParseDriveInputs(ptr noundef nonnull %calloc.i, ptr noundef %i.hb)
  %.not.i30.i = icmp eq i32 %i.ks, 0
  br i1 %.not.i30.i, label %Ver_ParseInternal.exit, label %.preheader.i31.i

.preheader.i31.i:                                 ; preds = %.split.i.i
  %.pre.i.i = load ptr, ptr %i.he, align 8, !tbaa !26 ; 3 uses
  br i1 %i.hd, label %.lr.ph75.i.i, label %.critedge2.i32.i

.lr.ph75.i.i:                                     ; preds = %.preheader.i31.i
  %wide.trip.count89.i.i = zext nneg i32 %.val19.i.i.i to i64
  br label %bb.cb

bb.cb:                                            ; preds = %Vec_PtrFree.exit.i.i, %.lr.ph75.i.i
  %indvars.iv86.i.i = phi i64 [ 0, %.lr.ph75.i.i ], [ %indvars.iv.next87.i.i, %Vec_PtrFree.exit.i.i ] ; 2 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %indvars.iv86.i.i
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !66
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 344 ; 2 uses
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !75 ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 8
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !26 ; 2 uses
  %.not.i58.i.i = icmp eq ptr %i.ky, null
  br i1 %.not.i58.i.i, label %Vec_PtrFree.exit.i.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  tail call void @free(ptr noundef nonnull %i.ky) #20
  br label %Vec_PtrFree.exit.i.i

Vec_PtrFree.exit.i.i:                             ; preds = %bb.cc, %bb.cb
  tail call void @free(ptr noundef nonnull %i.kw) #20
  store ptr null, ptr %i.kv, align 8, !tbaa !75
  %indvars.iv.next87.i.i = add nuw nsw i64 %indvars.iv86.i.i, 1 ; 2 uses
  %exitcond90.not.i.i = icmp eq i64 %indvars.iv.next87.i.i, %wide.trip.count89.i.i
  br i1 %exitcond90.not.i.i, label %.critedge2.thread.i.i, label %bb.cb, !llvm.loop !92

.critedge2.i32.i:                                 ; preds = %.preheader.i31.i
  %.not.i59.i.i = icmp eq ptr %.pre.i.i, null
  br i1 %.not.i59.i.i, label %Ver_ParseAttachBoxes.exit.thread.i, label %.critedge2.thread.i.i

.critedge2.thread.i.i:                            ; preds = %Vec_PtrFree.exit.i.i, %.critedge2.i32.i
  tail call void @free(ptr noundef nonnull %.pre.i.i) #20
  br label %Ver_ParseAttachBoxes.exit.thread.i

Ver_ParseAttachBoxes.exit.thread.i:               ; preds = %.critedge2.thread.i.i, %.critedge2.i32.i
  tail call void @free(ptr noundef nonnull %i.hb) #20
  br label %.preheader.i

Ver_ParseAttachBoxes.exit.i:                      ; preds = %._crit_edge.i
  %.not24.i = icmp eq i32 %i.gz, 0
  br i1 %.not24.i, label %Ver_ParseInternal.exit, label %.preheader.i

.preheader.i:                                     ; preds = %Ver_ParseAttachBoxes.exit.i, %Ver_ParseAttachBoxes.exit.thread.i
  %i.kz = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !93 ; 2 uses
  %i.lc = getelementptr i8, ptr %i.lb, i64 4
  %.val72.i = load i32, ptr %i.lc, align 4, !tbaa !22
  %i.ld = icmp sgt i32 %.val72.i, 0
  br i1 %i.ld, label %.lr.ph74.i, label %Ver_ParseInternal.exit

.lr.ph74.i:                                       ; preds = %.preheader.i, %bb.ci
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.ci ], [ 0, %.preheader.i ] ; 2 uses
  %i.le = phi ptr [ %i.ma, %bb.ci ], [ %i.lb, %.preheader.i ]
  %i.lf = getelementptr i8, ptr %i.le, i64 8
  %.val27.i = load ptr, ptr %i.lf, align 8, !tbaa !26
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %.val27.i, i64 %indvars.iv.i
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !66 ; 3 uses
  tail call void @Abc_NtkFinalizeRead(ptr noundef %i.lh) #20
  %i.li = load i32, ptr %i.af, align 8, !tbaa !42
  %.not25.i = icmp eq i32 %i.li, 0
  br i1 %.not25.i, label %bb.ci, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph74.i
  %i.lj = tail call i32 @Abc_NtkCheckRead(ptr noundef %i.lh) #20
  %.not26.i = icmp eq i32 %i.lj, 0
  br i1 %.not26.i, label %bb.ce, label %bb.ci

bb.ce:                                            ; preds = %bb.cd
  %i.lk = getelementptr inbounds nuw i8, ptr %calloc.i, i64 72 ; 2 uses
  store i32 1, ptr %i.lk, align 8, !tbaa !47
  %i.ll = getelementptr inbounds nuw i8, ptr %calloc.i, i64 80 ; 3 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lh, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !48
  %i.lo = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ll, ptr noundef nonnull dereferenceable(1) @.str.38, ptr noundef %i.ln) #20 ; 0 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %calloc.i, i64 76
  store i32 1, ptr %i.lp, align 4, !tbaa !46
  %i.lq = load i32, ptr %i.lk, align 8, !tbaa !47
  %.not.i39.i = icmp eq i32 %i.lq, 0
  %i.lr = load ptr, ptr %i.e, align 8, !tbaa !21  ; 2 uses
  %i.ls = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  br i1 %.not.i39.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lt = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lr, ptr noundef nonnull @.str, ptr noundef %i.ls, ptr noundef nonnull %i.ll) #20 ; 0 uses
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.lu = load ptr, ptr %i.c, align 8, !tbaa !19
  %i.lv = tail call i32 @Ver_StreamGetLineNumber(ptr noundef %i.lu) #20
  %i.lw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.lr, ptr noundef nonnull @.str.1, ptr noundef %i.ls, i32 noundef %i.lv, ptr noundef nonnull %i.ll) #20 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.lx = load ptr, ptr %i.aa, align 8, !tbaa !36 ; 2 uses
  %.not.i.i40.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i40.i, label %Ver_ParseInternal.exit, label %Ver_ParseInternal.exit.sink.split

bb.ci:                                            ; preds = %bb.cd, %.lr.ph74.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ly = load ptr, ptr %i.aa, align 8, !tbaa !36
  %i.lz = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  %i.ma = load ptr, ptr %i.lz, align 8, !tbaa !93 ; 2 uses
  %i.mb = getelementptr i8, ptr %i.ma, i64 4
  %.val.i = load i32, ptr %i.mb, align 4, !tbaa !22
  %i.mc = sext i32 %.val.i to i64
  %i.md = icmp slt i64 %indvars.iv.next.i, %i.mc
  br i1 %i.md, label %.lr.ph74.i, label %Ver_ParseInternal.exit, !llvm.loop !94

Ver_ParseInternal.exit.sink.split:                ; preds = %bb.ch, %bb.s, %bb.l, %bb.f
  %.sink = phi ptr [ %i.cw, %bb.s ], [ %i.bf, %bb.f ], [ %i.cf, %bb.l ], [ %i.lx, %bb.ch ]
  tail call void @Abc_DesFree(ptr noundef nonnull %.sink, ptr noundef null) #20
  store ptr null, ptr %i.aa, align 8, !tbaa !36
  br label %Ver_ParseInternal.exit

Ver_ParseInternal.exit:                           ; preds = %bb.n, %bb.bl, %.preheader174.i.i, %Extra_ProgressBarUpdate.exit.i.i, %bb.aa, %bb.bf, %bb.bg, %bb.bh, %.critedge.i37.i, %bb.ci, %Ver_ParseInternal.exit.sink.split, %bb.f, %bb.l, %bb.s, %.split.i.i, %Ver_ParseAttachBoxes.exit.i, %.preheader.i, %bb.ch
  %i.me = load ptr, ptr %i.aa, align 8, !tbaa !36
  store ptr null, ptr %i.aa, align 8, !tbaa !36
  %i.mf = load ptr, ptr %i.aq, align 8, !tbaa !45 ; 2 uses
  %.not.i13 = icmp eq ptr %i.mf, null
  br i1 %.not.i13, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %Ver_ParseInternal.exit
  tail call void @Extra_ProgressBarStop(ptr noundef nonnull %i.mf) #20
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %Ver_ParseInternal.exit
  %i.mg = load ptr, ptr %i.c, align 8, !tbaa !19
  tail call void @Ver_StreamFree(ptr noundef %i.mg) #20
  %i.mh = load ptr, ptr %i.j, align 8, !tbaa !27  ; 2 uses
  %i.mi = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !26 ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i14, label %Vec_PtrFree.exit.i, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  tail call void @free(ptr noundef nonnull %i.mj) #20
  br label %Vec_PtrFree.exit.i

Vec_PtrFree.exit.i:                               ; preds = %bb.cl, %bb.ck
  tail call void @free(ptr noundef nonnull %i.mh) #20
  %i.mk = load ptr, ptr %i.o, align 8, !tbaa !28  ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mk, i64 8
  %i.mm = load ptr, ptr %i.ml, align 8, !tbaa !26 ; 2 uses
  %.not.i11.i = icmp eq ptr %i.mm, null
  br i1 %.not.i11.i, label %Vec_PtrFree.exit12.i, label %bb.cm

bb.cm:                                            ; preds = %Vec_PtrFree.exit.i
  tail call void @free(ptr noundef nonnull %i.mm) #20
  br label %Vec_PtrFree.exit12.i

Vec_PtrFree.exit12.i:                             ; preds = %bb.cm, %Vec_PtrFree.exit.i
  tail call void @free(ptr noundef nonnull %i.mk) #20
  %i.mn = load ptr, ptr %i.t, align 8, !tbaa !34  ; 2 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !33 ; 2 uses
  %.not.i13.i = icmp eq ptr %i.mp, null
  br i1 %.not.i13.i, label %Vec_IntFree.exit.i, label %bb.cn

bb.cn:                                            ; preds = %Vec_PtrFree.exit12.i
  tail call void @free(ptr noundef nonnull %i.mp) #20
  br label %Vec_IntFree.exit.i
end_hunk_0
begin_hunk_1_@Ver_ParseReportUndefBoxes:bb.a
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !66
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 196
  store i32 0, ptr %i.dc, align 4, !tbaa !136
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %.val56, i64 %indvars.iv110
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !66
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 196
  store i32 0, ptr %i.dg, align 4, !tbaa !136
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %.val56, i64 %indvars.iv110
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !66
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 196
  store i32 0, ptr %i.dk, align 4, !tbaa !136
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %.val56, i64 %indvars.iv110
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !66
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 196
  store i32 0, ptr %i.do, align 4, !tbaa !136
  %indvars.iv.next111.7 = add nuw nsw i64 %indvars.iv110, 8 ; 2 uses
  %niter124.next.7 = add i64 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i64 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %.critedge8.loopexit.unr-lcssa, label %bb.i, !llvm.loop !141

.critedge8.loopexit.unr-lcssa:                    ; preds = %bb.i
  %lcmp.mod121.not = icmp eq i64 %xtraiter120, 0
  br i1 %lcmp.mod121.not, label %.critedge8, label %.epil.preheader119

.epil.preheader119:                               ; preds = %.critedge8.loopexit.unr-lcssa, %.lr.ph95
  %indvars.iv110.epil.init = phi i64 [ 0, %.lr.ph95 ], [ %indvars.iv.next111.7, %.critedge8.loopexit.unr-lcssa ]
  %lcmp.mod122 = icmp ne i64 %xtraiter120, 0
  tail call void @llvm.assume(i1 %lcmp.mod122)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.epil.preheader119
  %indvars.iv110.epil = phi i64 [ %indvars.iv110.epil.init, %.epil.preheader119 ], [ %indvars.iv.next111.epil, %bb.j ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader119 ], [ %epil.iter.next, %bb.j ]
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.val56, i64 %indvars.iv110.epil
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !66
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 196
  store i32 0, ptr %i.dr, align 4, !tbaa !136
  %indvars.iv.next111.epil = add nuw nsw i64 %indvars.iv110.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter120
  br i1 %epil.iter.cmp.not, label %.critedge8, label %bb.j, !llvm.loop !142

.critedge8:                                       ; preds = %.critedge8.loopexit.unr-lcssa, %bb.j, %.critedge6
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ver_ParseCheckNondrivenNets(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val4054 = load i32, ptr %i.a, align 4, !tbaa !22 ; 2 uses
  %i.b = icmp sgt i32 %.val4054, 0
  br i1 %i.b, label %.lr.ph56, label %.critedge

.lr.ph56:                                         ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph56, %.critedge2
  %.val4068 = phi i32 [ %.val4054, %.lr.ph56 ], [ %.val40, %.critedge2 ]
  %indvars.iv65 = phi i64 [ 0, %.lr.ph56 ], [ %indvars.iv.next66, %.critedge2 ] ; 2 uses
  %.val44 = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val44, i64 %indvars.iv65
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 344 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75   ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 4
  %.val3951 = load i32, ptr %i.h, align 4, !tbaa !22
  %i.i = icmp sgt i32 %.val3951, 0
  br i1 %i.i, label %.lr.ph53, label %.critedge2

.lr.ph53:                                         ; preds = %bb.b, %.critedge4
  %i.j = phi ptr [ %i.ap, %.critedge4 ], [ %i.g, %bb.b ] ; 2 uses
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %.critedge4 ], [ 0, %bb.b ] ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val43 = load ptr, ptr %i.k, align 8, !tbaa !26
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val43, i64 %indvars.iv62
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val38 = load i32, ptr %i.p, align 4, !tbaa !22 ; 2 uses
  %i.q = icmp sgt i32 %.val38, 0
  br i1 %i.q, label %.lr.ph50.preheader, label %.critedge4

.lr.ph50.preheader:                               ; preds = %.lr.ph53
  %i.r = zext nneg i32 %.val38 to i64
  br label %.lr.ph50

.lr.ph50:                                         ; preds = %.lr.ph50.preheader, %.critedge6
  %indvars.iv59 = phi i64 [ %i.r, %.lr.ph50.preheader ], [ %indvars.iv.next60, %.critedge6 ] ; 2 uses
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1 ; 2 uses
  %i.s = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val42 = load ptr, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %.val42, i64 %indvars.iv.next60
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !66   ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.critedge6, label %.preheader

.preheader:                                       ; preds = %.lr.ph50
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !81   ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 4
  %.val3746 = load i32, ptr %i.y, align 4, !tbaa !22
  %i.z = icmp sgt i32 %.val3746, 0
  br i1 %i.z, label %.lr.ph, label %.critedge6

.lr.ph:                                           ; preds = %.preheader, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %.preheader ] ; 2 uses
  %i.aa = phi ptr [ %i.ak, %bb.e ], [ %i.x, %.preheader ]
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val41 = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val41, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 3 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 28
  %.val = load i32, ptr %i.ae, align 4, !tbaa !83
  %i.af = icmp eq i32 %.val, 0
  br i1 %i.af, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ag = tail call ptr @Abc_ObjName(ptr noundef nonnull %i.ad) #20
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull dereferenceable(5) @.str.2) #22
  %.not35 = icmp eq i32 %i.ah, 0
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = tail call ptr @Abc_ObjName(ptr noundef nonnull %i.ad) #20
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(5) @.str.4) #22
  %.not36 = icmp eq i32 %i.aj, 0
  br i1 %.not36, label %bb.e, label %.critedge

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ak = load ptr, ptr %i.w, align 8, !tbaa !81  ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 4
  %.val37 = load i32, ptr %i.al, align 4, !tbaa !22
  %i.am = sext i32 %.val37 to i64
  %i.an = icmp slt i64 %indvars.iv.next, %i.am
  br i1 %i.an, label %.lr.ph, label %.critedge6, !llvm.loop !143

.critedge6:                                       ; preds = %bb.e, %.preheader, %.lr.ph50
  %i.ao = icmp sgt i64 %indvars.iv59, 1
  br i1 %i.ao, label %.lr.ph50, label %.critedge4.loopexit, !llvm.loop !144

.critedge4.loopexit:                              ; preds = %.critedge6
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !75
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %.lr.ph53
  %i.ap = phi ptr [ %.pre, %.critedge4.loopexit ], [ %i.j, %.lr.ph53 ] ; 2 uses
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 4
  %.val39 = load i32, ptr %i.aq, align 4, !tbaa !22
  %i.ar = sext i32 %.val39 to i64
  %i.as = icmp slt i64 %indvars.iv.next63, %i.ar
  br i1 %i.as, label %.lr.ph53, label %.critedge2.loopexit, !llvm.loop !145

.critedge2.loopexit:                              ; preds = %.critedge4
  %.val40.pre = load i32, ptr %i.a, align 4, !tbaa !22
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %bb.b
  %.val40 = phi i32 [ %.val40.pre, %.critedge2.loopexit ], [ %.val4068, %bb.b ] ; 2 uses
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %i.at = sext i32 %.val40 to i64
  %i.au = icmp slt i64 %indvars.iv.next66, %i.at
  br i1 %i.au, label %bb.b, label %.critedge, !llvm.loop !146

.critedge:                                        ; preds = %.critedge2, %bb.d, %bb.a
  %.033 = phi i32 [ 0, %bb.a ], [ 1, %bb.d ], [ 0, %.critedge2 ]
  ret i32 %.033
}

declare ptr @Abc_ObjName(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @Ver_ParseFormalNetsAreDriven(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val34 = load i32, ptr %i.c, align 4, !tbaa !22 ; 2 uses
  %i.d = icmp sgt i32 %.val34, 0
  br i1 %i.d, label %.lr.ph49, label %.critedge

.lr.ph49:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val37 = load ptr, ptr %i.e, align 8, !tbaa !26
  %wide.trip.count58 = zext nneg i32 %.val34 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph49, %.critedge4
  %indvars.iv55 = phi i64 [ 0, %.lr.ph49 ], [ %indvars.iv.next56, %.critedge4 ] ; 2 uses
  %.02747 = phi ptr [ null, %.lr.ph49 ], [ %.263, %.critedge4 ]
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %.val37, i64 %indvars.iv55
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !76   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 4
  %.val33 = load i32, ptr %i.j, align 4, !tbaa !22 ; 3 uses
  %i.k = icmp sgt i32 %.val33, 0
  br i1 %i.k, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.b
  %.02539 = add nsw i32 %.val33, -1
  %i.l = getelementptr i8, ptr %i.i, i64 8
  %.val36 = load ptr, ptr %i.l, align 8, !tbaa !26
  %2 = zext nneg i32 %.02539 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ %2, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %.val36, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !66   ; 5 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !84
  %i.p = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %1) #22
  %.not30 = icmp eq i32 %i.p, 0
  br i1 %.not30, label %.critedge2.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %3 = icmp sgt i64 %indvars.iv, 0
  br i1 %3, label %bb.c, label %.preheader, !llvm.loop !85

.critedge2.split.loop.exit:                       ; preds = %bb.d
  %4 = trunc nuw nsw i64 %indvars.iv to i32
  %5 = icmp eq i32 %.val33, %4
  br i1 %5, label %.critedge4, label %.preheader

.preheader:                                       ; preds = %bb.e, %bb.b, %.critedge2.split.loop.exit
  %.262 = phi ptr [ %i.n, %.critedge2.split.loop.exit ], [ %.02747, %bb.b ], [ %i.n, %bb.e ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.262, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !81   ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 4
  %.val31 = load i32, ptr %i.s, align 4, !tbaa !22 ; 2 uses
  %i.t = icmp sgt i32 %.val31, 0
  br i1 %i.t, label %.lr.ph46, label %.critedge4

.lr.ph46:                                         ; preds = %.preheader
  %i.u = getelementptr i8, ptr %i.r, i64 8
  %.val35 = load ptr, ptr %i.u, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %.val31 to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %bb.g, !llvm.loop !86

bb.g:                                             ; preds = %.lr.ph46, %bb.f
  %indvars.iv52 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next53, %bb.f ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val35, i64 %indvars.iv52
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  %i.x = getelementptr i8, ptr %i.w, i64 28
  %.val = load i32, ptr %i.x, align 4, !tbaa !83
  %i.y = icmp sgt i32 %.val, 0
  br i1 %i.y, label %.critedge, label %bb.f

.critedge4:                                       ; preds = %bb.f, %.preheader, %.critedge2.split.loop.exit
  %.263 = phi ptr [ %i.n, %.critedge2.split.loop.exit ], [ %.262, %.preheader ], [ %.262, %bb.f ]
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count58
  br i1 %exitcond59.not, label %.critedge, label %bb.b, !llvm.loop !87

.critedge:                                        ; preds = %.critedge4, %bb.g, %bb.a
  %.028 = phi i32 [ 0, %bb.a ], [ 1, %bb.g ], [ 0, %.critedge4 ]
  ret i32 %.028
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define ptr @Ver_ParseGetNondrivenBundle(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75   ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 4
  %.val31 = load i32, ptr %i.c, align 4, !tbaa !22 ; 2 uses
  %i.d = icmp sgt i32 %.val31, 0
  br i1 %i.d, label %.lr.ph46, label %.critedge

.lr.ph46:                                         ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.b, i64 8
  %.val34 = load ptr, ptr %i.e, align 8, !tbaa !26 ; 2 uses
  %i.f = xor i32 %1, -1
  %wide.trip.count58.i = zext nneg i32 %.val31 to i64 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph46, %.critedge2
  %indvars.iv52 = phi i64 [ 0, %.lr.ph46 ], [ %indvars.iv.next53, %.critedge2 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %indvars.iv52
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !76   ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4
  %.val30 = load i32, ptr %i.k, align 4, !tbaa !22 ; 2 uses
  %.not = icmp slt i32 %1, %.val30
  br i1 %.not, label %bb.c, label %.critedge2

bb.c:                                             ; preds = %bb.b
  %i.l = add i32 %.val30, %i.f
  %i.m = getelementptr i8, ptr %i.j, i64 8
  %.val33 = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [8 x i8], ptr %.val33, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !66   ; 4 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.critedge2, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !81   ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val28 = load i32, ptr %i.t, align 4, !tbaa !22 ; 2 uses
  %i.u = icmp sgt i32 %.val28, 0
  br i1 %i.u, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %i.s, i64 8
  %.val32 = load ptr, ptr %i.v, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %.val28 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Ver_ParseFormalNetsAreDriven.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Ver_ParseFormalNetsAreDriven.exit ] ; 2 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val32, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !66
  %i.y = getelementptr i8, ptr %i.x, i64 28
  %.val = load i32, ptr %i.y, align 4, !tbaa !83
  %.not26 = icmp eq i32 %.val, 0
  br i1 %.not26, label %.lr.ph49.i, label %Ver_ParseFormalNetsAreDriven.exit

.lr.ph49.i:                                       ; preds = %bb.d
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !84
  br label %bb.e

bb.e:                                             ; preds = %.critedge4.i, %.lr.ph49.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph49.i ], [ %indvars.iv.next56.i, %.critedge4.i ] ; 2 uses
  %.02747.i = phi ptr [ null, %.lr.ph49.i ], [ %.263.i, %.critedge4.i ]
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.val34, i64 %indvars.iv55.i
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !76 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 4
  %.val33.i = load i32, ptr %i.ae, align 4, !tbaa !22 ; 3 uses
  %i.af = icmp sgt i32 %.val33.i, 0
  br i1 %i.af, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.e
  %.02539.i = add nsw i32 %.val33.i, -1
  %i.ag = getelementptr i8, ptr %i.ad, i64 8
  %.val36.i = load ptr, ptr %i.ag, align 8, !tbaa !26
  %2 = zext nneg i32 %.02539.i to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %2, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.h ] ; 4 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val36.i, i64 %indvars.iv.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !66 ; 5 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !84
  %i.ak = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.aj, ptr noundef nonnull readonly dereferenceable(1) %i.z) #22
  %.not30.i = icmp eq i32 %i.ak, 0
  br i1 %.not30.i, label %.critedge2.i.a, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %3 = icmp sgt i64 %indvars.iv.i, 0
  br i1 %3, label %bb.f, label %.preheader.i, !llvm.loop !85

.critedge2.i.a:                                   ; preds = %bb.g
  %4 = trunc nuw nsw i64 %indvars.iv.i to i32
  %5 = icmp eq i32 %.val33.i, %4
  br i1 %5, label %.critedge4.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h, %.critedge2.i.a, %bb.e
  %.262.i = phi ptr [ %i.ai, %.critedge2.i.a ], [ %.02747.i, %bb.e ], [ %i.ai, %bb.h ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.262.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !81 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 4
  %.val31.i = load i32, ptr %i.an, align 4, !tbaa !22 ; 2 uses
  %i.ao = icmp sgt i32 %.val31.i, 0
  br i1 %i.ao, label %.lr.ph46.i, label %.critedge4.i

.lr.ph46.i:                                       ; preds = %.preheader.i
  %i.ap = getelementptr i8, ptr %i.am, i64 8
  %.val35.i = load ptr, ptr %i.ap, align 8, !tbaa !26
  %wide.trip.count.i = zext nneg i32 %.val31.i to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.j
  %indvars.iv.next53.i = add nuw nsw i64 %indvars.iv52.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next53.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.critedge4.i, label %bb.j, !llvm.loop !86

bb.j:                                             ; preds = %bb.i, %.lr.ph46.i
  %indvars.iv52.i = phi i64 [ 0, %.lr.ph46.i ], [ %indvars.iv.next53.i, %bb.i ] ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %.val35.i, i64 %indvars.iv52.i
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !66
  %i.as = getelementptr i8, ptr %i.ar, i64 28
  %.val.i = load i32, ptr %i.as, align 4, !tbaa !83
  %i.at = icmp sgt i32 %.val.i, 0
  br i1 %i.at, label %Ver_ParseFormalNetsAreDriven.exit, label %bb.i

.critedge4.i:                                     ; preds = %bb.i, %.preheader.i, %.critedge2.i.a
  %.263.i = phi ptr [ %i.ai, %.critedge2.i.a ], [ %.262.i, %.preheader.i ], [ %.262.i, %bb.i ]
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %exitcond59.not.i = icmp eq i64 %indvars.iv.next56.i, %wide.trip.count58.i
  br i1 %exitcond59.not.i, label %.critedge, label %bb.e, !llvm.loop !87

Ver_ParseFormalNetsAreDriven.exit:                ; preds = %bb.j, %bb.d
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.d, !llvm.loop !88

.critedge2:                                       ; preds = %Ver_ParseFormalNetsAreDriven.exit, %.preheader, %bb.c, %bb.b
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count58.i
  br i1 %exitcond56.not, label %.critedge, label %bb.b, !llvm.loop !89

.critedge:                                        ; preds = %.critedge2, %.critedge4.i, %bb.a
  %.023 = phi ptr [ null, %bb.a ], [ %i.p, %.critedge4.i ], [ null, %.critedge2 ]
  ret ptr %.023
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ver_ParseDriveFormal(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = getelementptr i8, ptr %i.c, i64 4
  %.val8599 = load i32, ptr %i.d, align 4, !tbaa !22 ; 2 uses
  %i.e = icmp sgt i32 %.val8599, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %1, i64 80
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %.val85101 = phi i32 [ %.val8599, %.lr.ph ], [ %.val85, %bb.h ]
  %.0100 = phi i32 [ 0, %.lr.ph ], [ %i.r, %bb.h ] ; 2 uses
  %i.g = icmp eq i32 %.val85101, 1
  %i.h = load ptr, ptr %2, align 8, !tbaa !84     ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %strcpy = call ptr @strcpy(ptr nonnull dereferenceable(1) %i.a, ptr nonnull dereferenceable(1) %i.h) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef %i.h, i32 noundef %.0100) #20 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = call ptr @Abc_NtkFindOrCreateNet(ptr noundef %1, ptr noundef nonnull %i.a) #20 ; 2 uses
  %i.k = call ptr @Abc_NtkCreateObj(ptr noundef %1, i32 noundef 5) #20 ; 2 uses
  %.val91 = load ptr, ptr %i.f, align 8, !tbaa !63 ; 2 uses
  %i.l = getelementptr i8, ptr %.val91, i64 4
  %.val91.val = load i32, ptr %i.l, align 4, !tbaa !22
  %.not78 = icmp eq i32 %.val91.val, 0
  br i1 %.not78, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %.val91, i64 8
  %.val92.val = load ptr, ptr %i.m, align 8, !tbaa !26
  %i.n = load ptr, ptr %.val92.val, align 8, !tbaa !66
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.o = call ptr @Abc_NtkCreateObj(ptr noundef nonnull %1, i32 noundef 10) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi ptr [ %i.n, %bb.f ], [ %i.o, %bb.g ]
  %i.q = call ptr @Abc_NtkCreateObj(ptr noundef nonnull %1, i32 noundef 3) #20
  call void @Abc_ObjAddFanin(ptr noundef %i.q, ptr noundef %i.j) #20
  call void @Abc_ObjAddFanin(ptr noundef %i.j, ptr noundef %i.k) #20
  call void @Abc_ObjAddFanin(ptr noundef %i.k, ptr noundef %i.p) #20
  %i.r = add nuw nsw i32 %.0100, 1                ; 2 uses
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.t = getelementptr i8, ptr %i.s, i64 4
  %.val85 = load i32, ptr %i.t, align 4, !tbaa !22 ; 2 uses
  %i.u = icmp slt i32 %i.r, %.val85
  br i1 %i.u, label %bb.b, label %.critedge, !llvm.loop !147

.critedge:                                        ; preds = %bb.h, %bb.a
  %i.v = load ptr, ptr %2, align 8, !tbaa !84
  %i.w = call ptr @Extra_UtilStrsav(ptr noundef %i.v) #20 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !75   ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 4
  %.val83114 = load i32, ptr %i.z, align 4, !tbaa !22
  %i.aa = icmp sgt i32 %.val83114, 0
  br i1 %i.aa, label %.lr.ph117, label %.critedge2

.lr.ph117:                                        ; preds = %.critedge, %10
  %3 = phi ptr [ %11, %10 ], [ %i.y, %.critedge ] ; 2 uses
  %indvars.iv126 = phi i64 [ %indvars.iv.next127, %10 ], [ 0, %.critedge ] ; 2 uses
  %.070115 = phi ptr [ %.3, %10 ], [ null, %.critedge ]
  %i.ab = getelementptr i8, ptr %3, i64 8
  %.val89 = load ptr, ptr %i.ab, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val89, i64 %indvars.iv126
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !76 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %.val82 = load i32, ptr %i.ag, align 4, !tbaa !22 ; 3 uses
  %.068102 = add i32 %.val82, -1                  ; 2 uses
  %i.ah = icmp sgt i32 %.val82, 0
  br i1 %i.ah, label %.lr.ph104, label %.preheader

.lr.ph104:                                        ; preds = %.lr.ph117
  %4 = getelementptr i8, ptr %i.af, i64 8
  %.val88 = load ptr, ptr %4, align 8, !tbaa !26
  %5 = zext nneg i32 %.068102 to i64
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph104, %bb.k
  %indvars.iv = phi i64 [ %5, %.lr.ph104 ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val88, i64 %indvars.iv
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !66 ; 4 uses
  %.not76 = icmp eq ptr %i.aj, null
  br i1 %.not76, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !84
  %i.al = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ak, ptr noundef nonnull dereferenceable(1) %i.w) #22
  %.not77 = icmp eq i32 %i.al, 0
  br i1 %.not77, label %.critedge4.split.loop.exit, label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.am = icmp sgt i64 %indvars.iv, 0
  br i1 %i.am, label %bb.i, label %.critedge4, !llvm.loop !148

.critedge4.split.loop.exit:                       ; preds = %bb.j
  %6 = trunc nuw nsw i64 %indvars.iv to i32
  br label %.critedge4

.critedge4:                                       ; preds = %bb.k, %.critedge4.split.loop.exit
  %.068.lcssa = phi i32 [ %6, %.critedge4.split.loop.exit ], [ -1, %bb.k ] ; 2 uses
  %7 = icmp eq i32 %.068.lcssa, %.val82
  br i1 %7, label %10, label %.preheader

.preheader:                                       ; preds = %.lr.ph117, %.critedge4
  %.272137 = phi ptr [ %i.aj, %.critedge4 ], [ %.070115, %.lr.ph117 ] ; 4 uses
  %.068.lcssa136 = phi i32 [ %.068.lcssa, %.critedge4 ], [ %.068102, %.lr.ph117 ]
  %i.an = getelementptr inbounds nuw i8, ptr %.272137, i64 8 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val80 = load i32, ptr %i.ap, align 4, !tbaa !22 ; 3 uses
  %i.aq = icmp sgt i32 %.val80, 0
  br i1 %i.aq, label %.lr.ph110, label %.critedge8

.lr.ph110:                                        ; preds = %.preheader
  %i.ar = getelementptr i8, ptr %i.ao, i64 8
  %.val87 = load ptr, ptr %i.ar, align 8, !tbaa !26
  %wide.trip.count = zext nneg i32 %.val80 to i64
  br label %bb.m

bb.l:                                             ; preds = %bb.m
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count
  br i1 %exitcond.not, label %.critedge6.preheader118, label %bb.m, !llvm.loop !149

.critedge6.preheader118:                          ; preds = %bb.l
  %i.as = zext nneg i32 %.val80 to i64
  br label %.critedge6

bb.m:                                             ; preds = %.lr.ph110, %bb.l
  %indvars.iv120 = phi i64 [ 0, %.lr.ph110 ], [ %indvars.iv.next121, %bb.l ] ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %.val87, i64 %indvars.iv120
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !66
  %i.av = getelementptr i8, ptr %i.au, i64 28
  %.val = load i32, ptr %i.av, align 4, !tbaa !83
  %i.aw = icmp sgt i32 %.val, 0
  br i1 %i.aw, label %bb.n, label %bb.l

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.ay = getelementptr i8, ptr %1, i64 8
  %.val93 = load ptr, ptr %i.ay, align 8, !tbaa !48
  %i.az = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef %.val93) #20 ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.ba, align 4, !tbaa !46
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !47
  %.not.i = icmp eq i32 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !21 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !8  ; 2 uses
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str, ptr noundef %i.bg, ptr noundef nonnull %i.ax) #20 ; 0 uses
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !19
  %i.bk = call i32 @Ver_StreamGetLineNumber(ptr noundef %i.bj) #20
  %i.bl = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.be, ptr noundef nonnull @.str.1, ptr noundef %i.bg, i32 noundef %i.bk, ptr noundef nonnull %i.ax) #20 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bn, null
  br i1 %.not.i.i, label %Ver_ParsePrintErrorMessage.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @Abc_DesFree(ptr noundef nonnull %i.bn, ptr noundef null) #20
  store ptr null, ptr %i.bm, align 8, !tbaa !36
  br label %Ver_ParsePrintErrorMessage.exit

.critedge6:                                       ; preds = %.critedge6.preheader118, %.critedge6
  %indvars.iv123 = phi i64 [ %i.as, %.critedge6.preheader118 ], [ %indvars.iv.next124, %.critedge6 ] ; 2 uses
  %indvars.iv.next124 = add nsw i64 %indvars.iv123, -1 ; 2 uses
  %i.bo = load ptr, ptr %i.an, align 8, !tbaa !81
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val86 = load ptr, ptr %i.bp, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %.val86, i64 %indvars.iv.next124
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !66 ; 2 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !67
  %i.bt = call ptr @Abc_NtkCreateObj(ptr noundef %i.bs, i32 noundef 5) #20 ; 2 uses
  call void @Abc_ObjAddFanin(ptr noundef %i.bt, ptr noundef %i.ad) #20
  call void @Abc_ObjAddFanin(ptr noundef nonnull %i.br, ptr noundef %i.bt) #20
  %i.bu = icmp samesign ugt i64 %indvars.iv123, 1
  br i1 %i.bu, label %.critedge6, label %.critedge8, !llvm.loop !150

.critedge8:                                       ; preds = %.critedge6, %.preheader
  %i.bv = load ptr, ptr %.272137, align 8, !tbaa !84 ; 2 uses
  %.not.i95 = icmp eq ptr %i.bv, null
  br i1 %.not.i95, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.critedge8
  call void @free(ptr noundef nonnull %i.bv) #20
  store ptr null, ptr %.272137, align 8, !tbaa !84
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.critedge8
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !81 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !26 ; 2 uses
  %.not.i.i96 = icmp eq ptr %i.by, null
  br i1 %.not.i.i96, label %Ver_ParseFreeBundle.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef nonnull %i.by) #20
  br label %Ver_ParseFreeBundle.exit

Ver_ParseFreeBundle.exit:                         ; preds = %bb.t, %bb.u
  call void @free(ptr noundef nonnull %i.bw) #20
  call void @free(ptr noundef nonnull %.272137) #20
  %i.bz = load ptr, ptr %i.ae, align 8, !tbaa !76
  %i.ca = getelementptr i8, ptr %i.bz, i64 8
  %.val94 = load ptr, ptr %i.ca, align 8, !tbaa !26
  %8 = sext i32 %.068.lcssa136 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %.val94, i64 %8
  store ptr null, ptr %9, align 8, !tbaa !66
  %.pre = load ptr, ptr %i.x, align 8, !tbaa !75
  br label %10

10:                                               ; preds = %.critedge4, %Ver_ParseFreeBundle.exit
  %11 = phi ptr [ %3, %.critedge4 ], [ %.pre, %Ver_ParseFreeBundle.exit ] ; 2 uses
  %.3 = phi ptr [ %i.aj, %.critedge4 ], [ null, %Ver_ParseFreeBundle.exit ]
  %indvars.iv.next127 = add nuw nsw i64 %indvars.iv126, 1 ; 2 uses
  %12 = getelementptr i8, ptr %11, i64 4
  %.val83 = load i32, ptr %12, align 4, !tbaa !22
  %13 = sext i32 %.val83 to i64
  %14 = icmp slt i64 %indvars.iv.next127, %13
  br i1 %14, label %.lr.ph117, label %.critedge2, !llvm.loop !151

.critedge2:                                       ; preds = %10, %.critedge
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %Ver_ParsePrintErrorMessage.exit, label %bb.v

bb.v:                                             ; preds = %.critedge2
  call void @free(ptr noundef nonnull %i.w) #20
  br label %Ver_ParsePrintErrorMessage.exit

Ver_ParsePrintErrorMessage.exit:                  ; preds = %bb.r, %bb.q, %bb.v, %.critedge2
  %.073 = phi i32 [ 1, %bb.v ], [ 1, %.critedge2 ], [ 0, %bb.q ], [ 0, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.073
}

declare void @Abc_ObjAddFanin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @Ver_ParseDriveInputs(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [200 x i8], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val113160 = load i32, ptr %i.b, align 4, !tbaa !22
  %i.c = icmp sgt i32 %.val113160, 0
  br i1 %i.c, label %.lr.ph162, label %.critedge

.lr.ph162:                                        ; preds = %bb.a
  %i.d = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph162, %.critedge10
  %indvars.iv188 = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next189, %.critedge10 ] ; 2 uses
  %.val122 = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val122, i64 %indvars.iv188
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !66   ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 344 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 4
  %.val112 = load i32, ptr %i.i, align 4, !tbaa !22 ; 3 uses
  %i.j = icmp sgt i32 %.val112, 0
  %i.k = getelementptr i8, ptr %i.h, i64 8
  %.val121 = load ptr, ptr %i.k, align 8, !tbaa !26 ; 2 uses
  br i1 %i.j, label %.lr.ph141, label %.critedge2

.lr.ph141:                                        ; preds = %bb.b
  %wide.trip.count174 = zext nneg i32 %.val112 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph141, %bb.j
  %indvars.iv171 = phi i64 [ 0, %.lr.ph141 ], [ %indvars.iv.next172, %bb.j ] ; 2 uses
  %.0140 = phi i32 [ -1, %.lr.ph141 ], [ %.1, %bb.j ] ; 4 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.val121, i64 %indvars.iv171
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val111 = load i32, ptr %i.p, align 4, !tbaa !22 ; 3 uses
  %i.q = icmp sgt i32 %.val111, 0
  br i1 %i.q, label %.lr.ph, label %.critedge4

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %i.o, i64 8
  %.val120 = load ptr, ptr %i.r, align 8, !tbaa !26 ; 2 uses
  %wide.trip.count = zext nneg i32 %.val111 to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %.val111, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.y, %vector.body ]
  %vec.phi216 = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.z, %vector.body ]
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %.val120, i64 %index ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %wide.load = load <2 x ptr>, ptr %i.s, align 8, !tbaa !66
  %wide.load217 = load <2 x ptr>, ptr %i.t, align 8, !tbaa !66
  %i.u = icmp ne <2 x ptr> %wide.load, splat (ptr null)
  %i.v = icmp ne <2 x ptr> %wide.load217, splat (ptr null)
  %i.w = zext <2 x i1> %i.u to <2 x i32>
  %i.x = zext <2 x i1> %i.v to <2 x i32>
  %i.y = add <2 x i32> %vec.phi, %i.w             ; 2 uses
  %i.z = add <2 x i32> %vec.phi216, %i.x          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !152

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i32> %i.z, %i.y
  %i.ab = call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.critedge4, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  %.094138.ph = phi i32 [ 0, %.lr.ph ], [ %i.ab, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %.094138 = phi i32 [ %i.ag, %scalar.ph ], [ %.094138.ph, %scalar.ph.preheader ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val120, i64 %indvars.iv
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !66
  %i.ae = icmp ne ptr %i.ad, null
  %i.af = zext i1 %i.ae to i32
  %i.ag = add nuw nsw i32 %.094138, %i.af         ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge4, label %scalar.ph, !llvm.loop !155

.critedge4:                                       ; preds = %scalar.ph, %middle.block, %bb.c
  %.094.lcssa = phi i32 [ 0, %bb.c ], [ %i.ab, %middle.block ], [ %i.ag, %scalar.ph ] ; 3 uses
  %i.ah = icmp eq i32 %.0140, -1
  br i1 %i.ah, label %bb.j, label %bb.d

bb.d:                                             ; preds = %.critedge4
  %.not105 = icmp eq i32 %.0140, %.094.lcssa
  br i1 %.not105, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !48
  %i.al = call ptr @Abc_ObjName(ptr noundef nonnull %i.m) #20
  %i.am = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.ai, ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef %.094.lcssa, i32 noundef %.0140, ptr noundef %i.ak, ptr noundef %i.al) #20 ; 0 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 1, ptr %i.an, align 4, !tbaa !46
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !47
  %.not.i = icmp eq i32 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !21 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !8  ; 2 uses
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str, ptr noundef %i.at, ptr noundef nonnull %i.ai) #20 ; 0 uses
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !19
  %i.ax = call i32 @Ver_StreamGetLineNumber(ptr noundef %i.aw) #20
  %i.ay = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ar, ptr noundef nonnull @.str.1, ptr noundef %i.at, i32 noundef %i.ax, ptr noundef nonnull %i.ai) #20 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @Abc_DesFree(ptr noundef nonnull %i.ba, ptr noundef null) #20
  store ptr null, ptr %i.az, align 8, !tbaa !36
  br label %.critedge

bb.j:                                             ; preds = %.critedge4, %bb.d
  %.1 = phi i32 [ %.0140, %bb.d ], [ %.094.lcssa, %.critedge4 ]
  %indvars.iv.next172 = add nuw nsw i64 %indvars.iv171, 1 ; 2 uses
  %exitcond175.not = icmp eq i64 %indvars.iv.next172, %wide.trip.count174
  br i1 %exitcond175.not, label %.critedge2, label %bb.c, !llvm.loop !156

.critedge2:                                       ; preds = %bb.j, %bb.b
  %i.bb = load ptr, ptr %.val121, align 8, !tbaa !66
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !76 ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 4
  %.val110147 = load i32, ptr %i.be, align 4, !tbaa !22
  %i.bf = icmp sgt i32 %.val110147, 0
  br i1 %i.bf, label %.lr.ph149, label %.critedge6.preheader

.lr.ph149:                                        ; preds = %.critedge2
  %i.bg = getelementptr i8, ptr %i.f, i64 80
  br label %bb.k

.critedge6.preheader.loopexit:                    ; preds = %.critedge8
  %.pre192 = load ptr, ptr %i.g, align 8, !tbaa !75 ; 2 uses
  %.phi.trans.insert193 = getelementptr i8, ptr %.pre192, i64 4
  %.val107157.pre = load i32, ptr %.phi.trans.insert193, align 4, !tbaa !22
  br label %.critedge6.preheader

.critedge6.preheader:                             ; preds = %.critedge6.preheader.loopexit, %.critedge2
  %.val107157 = phi i32 [ %.val107157.pre, %.critedge6.preheader.loopexit ], [ %.val112, %.critedge2 ]
  %i.bh = phi ptr [ %.pre192, %.critedge6.preheader.loopexit ], [ %i.h, %.critedge2 ]
  %i.bi = icmp sgt i32 %.val107157, 0
  br i1 %i.bi, label %.lr.ph159, label %.critedge10

bb.k:                                             ; preds = %.lr.ph149, %.critedge8
  %i.bj = phi ptr [ %i.bd, %.lr.ph149 ], [ %i.ch, %.critedge8 ] ; 3 uses
  %indvars.iv176 = phi i64 [ 0, %.lr.ph149 ], [ %indvars.iv.next177, %.critedge8 ] ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %.val118 = load ptr, ptr %i.bk, align 8, !tbaa !26
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %.val118, i64 %indvars.iv176
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !66 ; 3 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %.critedge8, label %.preheader

end_hunk_1
