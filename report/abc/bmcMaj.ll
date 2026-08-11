inline.NumInlined: 1214
inline.NumDeleted: 188
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 75
loop-unroll.NumUnrolled: 171
loop-unroll.NumUnrolledNotLatch: 4
begin_hunk_0_@Exa_ManMiniVerify:bb.a
  %.not.i = icmp eq i32 %i.z, 2147483647
  %i.aa = zext i1 %.not.i to i32
  %spec.select.i = add nuw nsw i32 %.08.i, %i.aa  ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.i87.preheader, label %scalar.ph, !llvm.loop !368

.lr.ph.i87.preheader:                             ; preds = %scalar.ph
  %i.ab = add nsw i64 %wide.trip.count.i, -2      ; 2 uses
  %xtraiter = and i64 %i.f, 1
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %.lr.ph.i87.epil.preheader, label %.lr.ph.i87.preheader.new

.lr.ph.i87.preheader.new:                         ; preds = %.lr.ph.i87.preheader
  %unroll_iter = and i64 %i.f, -2
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.b, %.lr.ph.i87.preheader.new
  %indvars.iv.i90 = phi i64 [ 1, %.lr.ph.i87.preheader.new ], [ %indvars.iv.next.i92.1, %bb.b ] ; 3 uses
  %.011.i = phi i32 [ 0, %.lr.ph.i87.preheader.new ], [ %i.ap, %bb.b ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i87.preheader.new ], [ %niter.next.1, %bb.b ]
  %.idx.i91 = shl nuw nsw i64 %indvars.iv.i90, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i91 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !38
  %.not.i.i = icmp eq i32 %i.ae, 2147483647
  br i1 %.not.i.i, label %Mini_AigNodeIsAnd.exit.thread.i, label %Mini_AigNodeIsAnd.exit.i

Mini_AigNodeIsAnd.exit.i:                         ; preds = %.lr.ph.i87
  %i.af = getelementptr i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !38
  %.fr.i = freeze i32 %i.ag
  %.not9.i = icmp eq i32 %.fr.i, 2147483647
  %i.ah = add nsw i32 %.011.i, 1
  br i1 %.not9.i, label %Mini_AigNodeIsAnd.exit.thread.i, label %.lr.ph.i87.1

Mini_AigNodeIsAnd.exit.thread.i:                  ; preds = %Mini_AigNodeIsAnd.exit.i, %.lr.ph.i87
  br label %.lr.ph.i87.1

.lr.ph.i87.1:                                     ; preds = %Mini_AigNodeIsAnd.exit.thread.i, %Mini_AigNodeIsAnd.exit.i
  %i.ai = phi i32 [ %.011.i, %Mini_AigNodeIsAnd.exit.thread.i ], [ %i.ah, %Mini_AigNodeIsAnd.exit.i ] ; 2 uses
  %indvars.iv.next.i92 = shl i64 %indvars.iv.i90, 3
  %i.aj = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.next.i92 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  %.not.i.i.1 = icmp eq i32 %i.al, 2147483647
  br i1 %.not.i.i.1, label %Mini_AigNodeIsAnd.exit.thread.i.1, label %Mini_AigNodeIsAnd.exit.i.1

Mini_AigNodeIsAnd.exit.i.1:                       ; preds = %.lr.ph.i87.1
  %i.am = getelementptr i8, ptr %i.aj, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !38
  %.fr.i.1 = freeze i32 %i.an
  %.not9.i.1 = icmp eq i32 %.fr.i.1, 2147483647
  %i.ao = add nsw i32 %i.ai, 1
  br i1 %.not9.i.1, label %Mini_AigNodeIsAnd.exit.thread.i.1, label %bb.b

Mini_AigNodeIsAnd.exit.thread.i.1:                ; preds = %Mini_AigNodeIsAnd.exit.i.1, %.lr.ph.i87.1
  br label %bb.b

bb.b:                                             ; preds = %Mini_AigNodeIsAnd.exit.thread.i.1, %Mini_AigNodeIsAnd.exit.i.1
  %i.ap = phi i32 [ %i.ai, %Mini_AigNodeIsAnd.exit.thread.i.1 ], [ %i.ao, %Mini_AigNodeIsAnd.exit.i.1 ] ; 3 uses
  %indvars.iv.next.i92.1 = add nuw nsw i64 %indvars.iv.i90, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.lr.ph.i96.preheader.unr-lcssa, label %.lr.ph.i87, !llvm.loop !361

.lr.ph.i96.preheader.unr-lcssa:                   ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i96.preheader, label %.lr.ph.i87.epil.preheader

.lr.ph.i87.epil.preheader:                        ; preds = %.lr.ph.i96.preheader.unr-lcssa, %.lr.ph.i87.preheader
  %indvars.iv.i90.epil.init = phi i64 [ 1, %.lr.ph.i87.preheader ], [ %indvars.iv.next.i92.1, %.lr.ph.i96.preheader.unr-lcssa ]
  %.011.i.epil.init = phi i32 [ 0, %.lr.ph.i87.preheader ], [ %i.ap, %.lr.ph.i96.preheader.unr-lcssa ] ; 2 uses
  %lcmp.mod197 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod197)
  %.idx.i91.epil = shl nuw nsw i64 %indvars.iv.i90.epil.init, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i91.epil ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !38
  %.not.i.i.epil = icmp eq i32 %i.ar, 2147483647
  br i1 %.not.i.i.epil, label %Mini_AigNodeIsAnd.exit.thread.i.epil, label %Mini_AigNodeIsAnd.exit.i.epil

Mini_AigNodeIsAnd.exit.i.epil:                    ; preds = %.lr.ph.i87.epil.preheader
  %i.as = getelementptr i8, ptr %i.aq, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !38
  %.fr.i.epil = freeze i32 %i.at
  %.not9.i.epil = icmp eq i32 %.fr.i.epil, 2147483647
  %i.au = add nsw i32 %.011.i.epil.init, 1
  br i1 %.not9.i.epil, label %Mini_AigNodeIsAnd.exit.thread.i.epil, label %.lr.ph.i96.preheader

Mini_AigNodeIsAnd.exit.thread.i.epil:             ; preds = %Mini_AigNodeIsAnd.exit.i.epil, %.lr.ph.i87.epil.preheader
  br label %.lr.ph.i96.preheader

.lr.ph.i96.preheader:                             ; preds = %Mini_AigNodeIsAnd.exit.i.epil, %Mini_AigNodeIsAnd.exit.thread.i.epil, %.lr.ph.i96.preheader.unr-lcssa
  %.lcssa193 = phi i32 [ %i.ap, %.lr.ph.i96.preheader.unr-lcssa ], [ %.011.i.epil.init, %Mini_AigNodeIsAnd.exit.thread.i.epil ], [ %i.au, %Mini_AigNodeIsAnd.exit.i.epil ]
  %xtraiter198 = and i64 %i.f, 1
  %i.av = icmp eq i64 %i.ab, 0
  br i1 %i.av, label %.lr.ph.i96.epil.preheader, label %.lr.ph.i96.preheader.new

.lr.ph.i96.preheader.new:                         ; preds = %.lr.ph.i96.preheader
  %unroll_iter202 = and i64 %i.f, -2
  br label %.lr.ph.i96

.lr.ph.i96:                                       ; preds = %bb.c, %.lr.ph.i96.preheader.new
  %indvars.iv.i99 = phi i64 [ 1, %.lr.ph.i96.preheader.new ], [ %indvars.iv.next.i104.1, %bb.c ] ; 3 uses
  %.010.i = phi i32 [ 0, %.lr.ph.i96.preheader.new ], [ %i.bi, %bb.c ] ; 2 uses
  %niter203 = phi i64 [ 0, %.lr.ph.i96.preheader.new ], [ %niter203.next.1, %bb.c ]
  %.idx.i100 = shl nuw nsw i64 %indvars.iv.i99, 3
  %i.aw = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i100 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !38
  %.not.i.i101 = icmp eq i32 %i.ax, 2147483647
  br i1 %.not.i.i101, label %Mini_AigNodeIsPo.exit.thread.i, label %Mini_AigNodeIsPo.exit.i

Mini_AigNodeIsPo.exit.i:                          ; preds = %.lr.ph.i96
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !38
  %.fr.i102 = freeze i32 %i.az
  %.not.i103 = icmp eq i32 %.fr.i102, 2147483647
  %i.ba = add nsw i32 %.010.i, 1
  br i1 %.not.i103, label %.lr.ph.i96.1, label %Mini_AigNodeIsPo.exit.thread.i

Mini_AigNodeIsPo.exit.thread.i:                   ; preds = %Mini_AigNodeIsPo.exit.i, %.lr.ph.i96
  br label %.lr.ph.i96.1

.lr.ph.i96.1:                                     ; preds = %Mini_AigNodeIsPo.exit.thread.i, %Mini_AigNodeIsPo.exit.i
  %i.bb = phi i32 [ %.010.i, %Mini_AigNodeIsPo.exit.thread.i ], [ %i.ba, %Mini_AigNodeIsPo.exit.i ] ; 2 uses
  %indvars.iv.next.i104 = shl i64 %indvars.iv.i99, 3
  %i.bc = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.next.i104 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38
  %.not.i.i101.1 = icmp eq i32 %i.be, 2147483647
  br i1 %.not.i.i101.1, label %Mini_AigNodeIsPo.exit.thread.i.1, label %Mini_AigNodeIsPo.exit.i.1

Mini_AigNodeIsPo.exit.i.1:                        ; preds = %.lr.ph.i96.1
  %i.bf = getelementptr i8, ptr %i.bc, i64 12
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !38
  %.fr.i102.1 = freeze i32 %i.bg
  %.not.i103.1 = icmp eq i32 %.fr.i102.1, 2147483647
  %i.bh = add nsw i32 %i.bb, 1
  br i1 %.not.i103.1, label %bb.c, label %Mini_AigNodeIsPo.exit.thread.i.1

Mini_AigNodeIsPo.exit.thread.i.1:                 ; preds = %Mini_AigNodeIsPo.exit.i.1, %.lr.ph.i96.1
  br label %bb.c

bb.c:                                             ; preds = %Mini_AigNodeIsPo.exit.thread.i.1, %Mini_AigNodeIsPo.exit.i.1
  %i.bi = phi i32 [ %i.bb, %Mini_AigNodeIsPo.exit.thread.i.1 ], [ %i.bh, %Mini_AigNodeIsPo.exit.i.1 ] ; 3 uses
  %indvars.iv.next.i104.1 = add nuw nsw i64 %indvars.iv.i99, 2 ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %Mini_AigPoNum.exit.loopexit.unr-lcssa, label %.lr.ph.i96, !llvm.loop !369

Mini_AigPoNum.exit.loopexit.unr-lcssa:            ; preds = %bb.c
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %Mini_AigPoNum.exit.loopexit, label %.lr.ph.i96.epil.preheader

.lr.ph.i96.epil.preheader:                        ; preds = %Mini_AigPoNum.exit.loopexit.unr-lcssa, %.lr.ph.i96.preheader
  %indvars.iv.i99.epil.init = phi i64 [ 1, %.lr.ph.i96.preheader ], [ %indvars.iv.next.i104.1, %Mini_AigPoNum.exit.loopexit.unr-lcssa ]
  %.010.i.epil.init = phi i32 [ 0, %.lr.ph.i96.preheader ], [ %i.bi, %Mini_AigPoNum.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod201 = trunc i64 %i.f to i1
  tail call void @llvm.assume(i1 %lcmp.mod201)
  %.idx.i100.epil = shl nuw nsw i64 %indvars.iv.i99.epil.init, 3
  %i.bj = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.idx.i100.epil ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !38
  %.not.i.i101.epil = icmp eq i32 %i.bk, 2147483647
  br i1 %.not.i.i101.epil, label %Mini_AigNodeIsPo.exit.thread.i.epil, label %Mini_AigNodeIsPo.exit.i.epil

Mini_AigNodeIsPo.exit.i.epil:                     ; preds = %.lr.ph.i96.epil.preheader
  %i.bl = getelementptr i8, ptr %i.bj, i64 4
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !38
  %.fr.i102.epil = freeze i32 %i.bm
  %.not.i103.epil = icmp eq i32 %.fr.i102.epil, 2147483647
  %i.bn = add nsw i32 %.010.i.epil.init, 1
  br i1 %.not.i103.epil, label %Mini_AigPoNum.exit.loopexit, label %Mini_AigNodeIsPo.exit.thread.i.epil

Mini_AigNodeIsPo.exit.thread.i.epil:              ; preds = %Mini_AigNodeIsPo.exit.i.epil, %.lr.ph.i96.epil.preheader
  br label %Mini_AigPoNum.exit.loopexit

Mini_AigPoNum.exit.loopexit:                      ; preds = %Mini_AigNodeIsPo.exit.i.epil, %Mini_AigNodeIsPo.exit.thread.i.epil, %Mini_AigPoNum.exit.loopexit.unr-lcssa
  %.lcssa192 = phi i32 [ %i.bi, %Mini_AigPoNum.exit.loopexit.unr-lcssa ], [ %.010.i.epil.init, %Mini_AigNodeIsPo.exit.thread.i.epil ], [ %i.bn, %Mini_AigNodeIsPo.exit.i.epil ]
  %i.bo = add nuw nsw i32 %spec.select.i, 1
  br label %Mini_AigPoNum.exit

Mini_AigPoNum.exit:                               ; preds = %Mini_AigPoNum.exit.loopexit, %bb.a
  %.0.lcssa.i86110 = phi i32 [ 0, %bb.a ], [ %.lcssa193, %Mini_AigPoNum.exit.loopexit ] ; 2 uses
  %i.bp = phi i32 [ 1, %bb.a ], [ %i.bo, %Mini_AigPoNum.exit.loopexit ] ; 2 uses
  %.0.lcssa.i95 = phi i32 [ 0, %bb.a ], [ %.lcssa192, %Mini_AigPoNum.exit.loopexit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, i8 0, i64 48, i1 false)
  %i.bq = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 5 uses
  store i32 64, ptr %i.bq, align 8, !tbaa !19
  %calloc = tail call dereferenceable_or_null(512) ptr @calloc(i64 1, i64 512)
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8 ; 2 uses
  store ptr %calloc, ptr %i.bs, align 8, !tbaa !22
  store i32 64, ptr %i.br, align 4, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !23 ; 2 uses
  %i.bv = icmp sgt i32 %i.bu, 63
  br i1 %i.bv, label %Vec_WrdFillExtra.exit, label %bb.d

bb.d:                                             ; preds = %Mini_AigPoNum.exit
  %i.bw = load i32, ptr %1, align 8, !tbaa !19    ; 4 uses
  %i.bx = shl nsw i32 %i.bw, 1
  %i.by = icmp slt i32 %i.bw, 32
  br i1 %i.by, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !22 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ca, null
  br i1 %.not9.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cb = tail call dereferenceable_or_null(512) ptr @realloc(ptr noundef nonnull %i.ca, i64 noundef 512) #39
  br label %Vec_WrdGrow.exit.i

bb.g:                                             ; preds = %bb.e
  %i.cc = tail call noalias dereferenceable_or_null(512) ptr @malloc(i64 noundef 512) #38
  br label %Vec_WrdGrow.exit.i

Vec_WrdGrow.exit.i:                               ; preds = %bb.g, %bb.f
  %i.cd = phi ptr [ %i.cb, %bb.f ], [ %i.cc, %bb.g ]
  store ptr %i.cd, ptr %i.bz, align 8, !tbaa !22
  br label %Vec_WrdGrow.exit24.i

bb.h:                                             ; preds = %bb.d
  %i.ce = icmp samesign ult i32 %i.bw, 64
  br i1 %i.ce, label %bb.i, label %.lr.ph.i106

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !22 ; 2 uses
  %.not9.i23.i = icmp eq ptr %i.cg, null
  %i.ch = shl nuw nsw i32 %i.bw, 4
  %i.ci = zext nneg i32 %i.ch to i64              ; 2 uses
  br i1 %.not9.i23.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = tail call ptr @realloc(ptr noundef nonnull %i.cg, i64 noundef %i.ci) #39
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ck = tail call noalias ptr @malloc(i64 noundef %i.ci) #38
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.cl = phi ptr [ %i.cj, %bb.j ], [ %i.ck, %bb.k ]
  store ptr %i.cl, ptr %i.cf, align 8, !tbaa !22
  br label %Vec_WrdGrow.exit24.i

Vec_WrdGrow.exit24.i:                             ; preds = %Vec_WrdGrow.exit.i, %bb.l
  %.sink.i = phi i32 [ %i.bx, %bb.l ], [ 64, %Vec_WrdGrow.exit.i ]
  store i32 %.sink.i, ptr %1, align 8, !tbaa !19
  %.pre = load i32, ptr %i.bt, align 4, !tbaa !23 ; 2 uses
  %i.cm = icmp slt i32 %.pre, 64
  br i1 %i.cm, label %.lr.ph.i106, label %._crit_edge.i

.lr.ph.i106:                                      ; preds = %bb.h, %Vec_WrdGrow.exit24.i
  %i.cn = phi i32 [ %.pre, %Vec_WrdGrow.exit24.i ], [ %i.bu, %bb.h ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !22
  %i.cq = sext i32 %i.cn to i64
  %i.cr = shl nsw i64 %i.cq, 3
  %scevgep.i = getelementptr i8, ptr %i.cp, i64 %i.cr
  %i.cs = sub i32 63, %i.cn
  %i.ct = zext i32 %i.cs to i64
  %i.cu = shl nuw nsw i64 %i.ct, 3
  %i.cv = add nuw nsw i64 %i.cu, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep.i, i8 0, i64 %i.cv, i1 false), !tbaa !26
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i106, %Vec_WrdGrow.exit24.i
  store i32 64, ptr %i.bt, align 4, !tbaa !23
  br label %Vec_WrdFillExtra.exit

Vec_WrdFillExtra.exit:                            ; preds = %Mini_AigPoNum.exit, %._crit_edge.i
  tail call void @Extra_BitMatrixTransposeP(ptr noundef nonnull %1, i32 noundef 1, ptr noundef nonnull %i.bq, i32 noundef 1) #41
  %i.cw = add i32 %i.bp, %.0.lcssa.i86110         ; 3 uses
  %i.cx = icmp sgt i32 %.0.lcssa.i86110, 0
  %.pre149.pre = load ptr, ptr %i.bs, align 8, !tbaa !22 ; 8 uses
  br i1 %i.cx, label %.lr.ph, label %.preheader111

.lr.ph:                                           ; preds = %Vec_WrdFillExtra.exit
  %i.cy = getelementptr i8, ptr %0, i64 16
  %.val82 = load ptr, ptr %i.cy, align 8, !tbaa !358
  %i.cz = sext i32 %i.bp to i64
  %i.da = sext i32 %i.cw to i64
  br label %bb.m

.preheader111:                                    ; preds = %bb.m, %Vec_WrdFillExtra.exit
  %.val80 = load i32, ptr %i.b, align 4, !tbaa !356
  %i.db = sdiv i32 %.val80, 2                     ; 2 uses
  %i.dc = icmp slt i32 %i.cw, %i.db
  br i1 %i.dc, label %.lr.ph116, label %._crit_edge

.lr.ph116:                                        ; preds = %.preheader111
  %i.dd = getelementptr i8, ptr %0, i64 16
  %.val81 = load ptr, ptr %i.dd, align 8, !tbaa !358 ; 3 uses
  %i.de = sext i32 %i.cw to i64                   ; 7 uses
  %i.df = sext i32 %i.db to i64                   ; 3 uses
  %i.dg = sub nsw i64 %i.df, %i.de
  %xtraiter204 = and i64 %i.dg, 1
  %lcmp.mod205.not = icmp eq i64 %xtraiter204, 0
  br i1 %lcmp.mod205.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph116
  %.idx156.prol = shl nsw i64 %i.de, 3
  %i.dh = getelementptr inbounds i8, ptr %.val81, i64 %.idx156.prol
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !38 ; 2 uses
  %i.dj = ashr i32 %i.di, 1
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %i.dk
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !26
  %i.dn = and i32 %i.di, 1
  %sext.prol = sub nsw i32 0, %i.dn
  %i.do = sext i32 %sext.prol to i64
  %i.dp = xor i64 %i.dm, %i.do
  store i64 %i.dp, ptr %i.a, align 16, !tbaa !26
  %indvars.iv.next134.prol = add nsw i64 %i.de, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph116
  %indvars.iv133.unr = phi i64 [ %i.de, %.lr.ph116 ], [ %indvars.iv.next134.prol, %.prol.loopexit.unr-lcssa ]
  %i.dq = add nsw i64 %i.df, -1
  %i.dr = icmp eq i64 %i.dq, %i.de
  br i1 %i.dr, label %._crit_edge.thread, label %.lr.ph116.new

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %indvars.iv = phi i64 [ %i.cz, %.lr.ph ], [ %indvars.iv.next, %bb.m ] ; 3 uses
  %.idx = shl nsw i64 %indvars.iv, 3
  %i.ds = getelementptr inbounds i8, ptr %.val82, i64 %.idx ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !38 ; 3 uses
  %i.du = getelementptr i8, ptr %i.ds, i64 4
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !38 ; 3 uses
  %i.dw = ashr i32 %i.dt, 1
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %i.dx
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !26
  %i.ea = ashr i32 %i.dv, 1
  %i.eb = sext i32 %i.ea to i64
  %i.ec = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !26
  %i.ee = and i32 %i.dt, 1
  %sext72 = sub nsw i32 0, %i.ee
  %i.ef = sext i32 %sext72 to i64
  %i.eg = xor i64 %i.dz, %i.ef                    ; 2 uses
  %i.eh = and i32 %i.dv, 1
  %sext74 = sub nsw i32 0, %i.eh
  %i.ei = sext i32 %sext74 to i64
  %i.ej = xor i64 %i.ed, %i.ei                    ; 2 uses
  %i.ek = icmp slt i32 %i.dt, %i.dv
  %i.el = and i64 %i.ej, %i.eg
  %i.em = xor i64 %i.ej, %i.eg
  %i.en = select i1 %i.ek, i64 %i.el, i64 %i.em
  %i.eo = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %indvars.iv
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !26
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ep = icmp slt i64 %indvars.iv.next, %i.da
  br i1 %i.ep, label %bb.m, label %.preheader111, !llvm.loop !370

.lr.ph116.new:                                    ; preds = %.prol.loopexit, %.lr.ph116.new
  %indvars.iv133 = phi i64 [ %indvars.iv.next134.1, %.lr.ph116.new ], [ %indvars.iv133.unr, %.prol.loopexit ] ; 4 uses
  %.idx156 = shl nsw i64 %indvars.iv133, 3
  %i.eq = getelementptr inbounds i8, ptr %.val81, i64 %.idx156
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !38 ; 2 uses
  %i.es = ashr i32 %i.er, 1
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %i.et
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !26
  %i.ew = and i32 %i.er, 1
  %sext = sub nsw i32 0, %i.ew
  %i.ex = sext i32 %sext to i64
  %i.ey = xor i64 %i.ev, %i.ex
  %i.ez = sub nsw i64 %indvars.iv133, %i.de
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ez
  store i64 %i.ey, ptr %i.fa, align 8, !tbaa !26
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, 1 ; 2 uses
  %.idx156.1 = shl nsw i64 %indvars.iv.next134, 3
  %i.fb = getelementptr inbounds i8, ptr %.val81, i64 %.idx156.1
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !38 ; 2 uses
  %i.fd = ashr i32 %i.fc, 1
  %i.fe = sext i32 %i.fd to i64
  %i.ff = getelementptr inbounds [8 x i8], ptr %.pre149.pre, i64 %i.fe
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !26
  %i.fh = and i32 %i.fc, 1
  %sext.1 = sub nsw i32 0, %i.fh
  %i.fi = sext i32 %sext.1 to i64
  %i.fj = xor i64 %i.fg, %i.fi
  %i.fk = sub nsw i64 %indvars.iv.next134, %i.de
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fk
  store i64 %i.fj, ptr %i.fl, align 8, !tbaa !26
  %indvars.iv.next134.1 = add nsw i64 %indvars.iv133, 2 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next134.1, %i.df
  br i1 %i.fm, label %.lr.ph116.new, label %._crit_edge.thread, !llvm.loop !371

._crit_edge:                                      ; preds = %.preheader111
  %.not.i107 = icmp eq ptr %.pre149.pre, null
  br i1 %.not.i107, label %Vec_WrdFree.exit, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %.prol.loopexit, %.lr.ph116.new, %._crit_edge
  tail call void @free(ptr noundef nonnull %.pre149.pre) #41
  br label %Vec_WrdFree.exit

end_hunk_0
begin_hunk_1_@Exa6_WriteFile:bb.a
bb.a:
  %i.a = shl nuw i32 1, %1                        ; 3 uses
  %i.b = shl nuw i32 1, %3                        ; 2 uses
  %i.c = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.16) ; 42 uses
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.105, i32 noundef %1, i32 noundef 0, i32 noundef %3, i32 noundef %i.a) #41 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %i.e = icmp sgt i32 %1, 0
  br i1 %i.e, label %.preheader46.lr.ph, label %._crit_edge49

.preheader46.lr.ph:                               ; preds = %bb.a
  %.not = icmp eq i32 %1, 31
  br i1 %.not, label %.preheader46, label %.preheader46.us

.preheader46.us:                                  ; preds = %.preheader46.lr.ph, %._crit_edge.us
  %.03748.us = phi i32 [ %i.j, %._crit_edge.us ], [ 0, %.preheader46.lr.ph ] ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader46.us, %bb.b
  %.040.in47.us = phi i32 [ %i.a, %.preheader46.us ], [ %.040.us, %bb.b ] ; 2 uses
  %.040.us = add nsw i32 %.040.in47.us, -1        ; 2 uses
  %i.f = lshr i32 %.040.us, %.03748.us
  %i.g = and i32 %i.f, 1
  %i.h = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.106, i32 noundef %i.g) #41 ; 0 uses
  %i.i = icmp sgt i32 %.040.in47.us, 1
  br i1 %i.i, label %bb.b, label %._crit_edge.us, !llvm.loop !539

._crit_edge.us:                                   ; preds = %bb.b
  %i.j = add nuw nsw i32 %.03748.us, 1            ; 2 uses
  %fputc44.us = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %exitcond.not = icmp eq i32 %i.j, %1
  br i1 %exitcond.not, label %._crit_edge49, label %.preheader46.us, !llvm.loop !540

.preheader46:                                     ; preds = %.preheader46.lr.ph
  %fputc44 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.1 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.2 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.3 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.4 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.5 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.6 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.7 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.8 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.9 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.10 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.11 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.12 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.13 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.14 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.15 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.16 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.17 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.18 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.19 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.20 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.21 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.22 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.23 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.24 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.25 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.26 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.27 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.28 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.29 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %fputc44.30 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  br label %._crit_edge49

._crit_edge49:                                    ; preds = %._crit_edge.us, %.preheader46, %bb.a
  %fputc42 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %.not63 = icmp eq i32 %3, 31
  br i1 %.not63, label %._crit_edge, label %.preheader45.lr.ph

.preheader45.lr.ph:                               ; preds = %._crit_edge49
  %.14152 = add nsw i32 %i.a, -1                  ; 2 uses
  %.not64 = icmp eq i32 %1, 31
  br i1 %.not64, label %.preheader45.preheader, label %.preheader45.lr.ph.split.us

.preheader45.preheader:                           ; preds = %.preheader45.lr.ph
  %smax74 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  br label %.preheader45

.preheader45.lr.ph.split.us:                      ; preds = %.preheader45.lr.ph
  %i.k = icmp sgt i32 %3, 0
  %smax72 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 2 uses
  br i1 %i.k, label %.preheader45.us.us.preheader, label %.preheader45.us

.preheader45.us.us.preheader:                     ; preds = %.preheader45.lr.ph.split.us
  %wide.trip.count = zext nneg i32 %3 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.l = icmp eq i32 %3, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod90 = trunc i32 %3 to i1
  br label %.preheader45.us.us

.preheader45.us.us:                               ; preds = %.preheader45.us.us.preheader, %._crit_edge54.split.us.us.us
  %.03956.us.us = phi i32 [ %i.al, %._crit_edge54.split.us.us.us ], [ 0, %.preheader45.us.us.preheader ] ; 2 uses
  br label %.preheader.us.us.us

.preheader.us.us.us:                              ; preds = %._crit_edge.us55.us.us, %.preheader45.us.us
  %.14153.us.us.us = phi i32 [ %.14152, %.preheader45.us.us ], [ %.141.us.us.us, %._crit_edge.us55.us.us ] ; 4 uses
  %i.m = ashr i32 %.14153.us.us.us, 6
  %i.n = sext i32 %i.m to i64
  %invariant.gep.us.us.us = getelementptr [8 x i8], ptr %2, i64 %i.n ; 3 uses
  %i.o = and i32 %.14153.us.us.us, 63
  %i.p = zext nneg i32 %i.o to i64
  %i.q = shl nuw i64 1, %i.p                      ; 3 uses
  br i1 %i.l, label %.epil.preheader, label %.preheader.us.us.us.new

.preheader.us.us.us.new:                          ; preds = %.preheader.us.us.us, %.preheader.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ] ; 5 uses
  %.051.us.us.us = phi i32 [ %.1.us.us.us.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %niter = phi i64 [ %niter.next.1, %.preheader.us.us.us.new ], [ 0, %.preheader.us.us.us ]
  %gep.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.us.us.us, i64 %indvars.iv
  %i.r = load i64, ptr %gep.us.us.us, align 8, !tbaa !26
  %i.s = and i64 %i.r, %i.q
  %.not.us.us.us = icmp eq i64 %i.s, 0
  %i.t = shl nuw i64 1, %indvars.iv
  %i.u = trunc i64 %i.t to i32
  %i.v = select i1 %.not.us.us.us, i32 0, i32 %i.u
  %.1.us.us.us = or i32 %i.v, %.051.us.us.us
  %i.w = getelementptr [8 x i8], ptr %invariant.gep.us.us.us, i64 %indvars.iv
  %gep.us.us.us.1 = getelementptr i8, ptr %i.w, i64 8
  %i.x = load i64, ptr %gep.us.us.us.1, align 8, !tbaa !26
  %i.y = and i64 %i.x, %i.q
  %.not.us.us.us.1 = icmp eq i64 %i.y, 0
  %i.z = shl nuw i64 2, %indvars.iv
  %i.aa = trunc i64 %i.z to i32
  %i.ab = select i1 %.not.us.us.us.1, i32 0, i32 %i.aa
  %.1.us.us.us.1 = or i32 %i.ab, %.1.us.us.us     ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us55.us.us.unr-lcssa, label %.preheader.us.us.us.new, !llvm.loop !541

._crit_edge.us55.us.us.unr-lcssa:                 ; preds = %.preheader.us.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us55.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us55.us.us.unr-lcssa, %.preheader.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader.us.us.us ], [ %indvars.iv.next.1, %._crit_edge.us55.us.us.unr-lcssa ] ; 2 uses
  %.051.us.us.us.epil.init = phi i32 [ 0, %.preheader.us.us.us ], [ %.1.us.us.us.1, %._crit_edge.us55.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod90)
  %gep.us.us.us.epil = getelementptr [8 x i8], ptr %invariant.gep.us.us.us, i64 %indvars.iv.epil.init
  %i.ac = load i64, ptr %gep.us.us.us.epil, align 8, !tbaa !26
  %i.ad = and i64 %i.ac, %i.q
  %.not.us.us.us.epil = icmp eq i64 %i.ad, 0
  %i.ae = shl nuw i64 1, %indvars.iv.epil.init
  %i.af = trunc i64 %i.ae to i32
  %i.ag = select i1 %.not.us.us.us.epil, i32 0, i32 %i.af
  %.1.us.us.us.epil = or i32 %i.ag, %.051.us.us.us.epil.init
  br label %._crit_edge.us55.us.us

._crit_edge.us55.us.us:                           ; preds = %._crit_edge.us55.us.us.unr-lcssa, %.epil.preheader
  %.1.us.us.us.lcssa = phi i32 [ %.1.us.us.us.1, %._crit_edge.us55.us.us.unr-lcssa ], [ %.1.us.us.us.epil, %.epil.preheader ]
  %i.ah = icmp eq i32 %.1.us.us.us.lcssa, %.03956.us.us
  %i.ai = zext i1 %i.ah to i32
  %i.aj = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.106, i32 noundef %i.ai) #41 ; 0 uses
  %.141.us.us.us = add nsw i32 %.14153.us.us.us, -1
  %i.ak = icmp sgt i32 %.14153.us.us.us, 0
  br i1 %i.ak, label %.preheader.us.us.us, label %._crit_edge54.split.us.us.us, !llvm.loop !542

._crit_edge54.split.us.us.us:                     ; preds = %._crit_edge.us55.us.us
  %i.al = add nuw nsw i32 %.03956.us.us, 1        ; 2 uses
  %fputc43.us.us = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %exitcond73.not = icmp eq i32 %i.al, %smax72
  br i1 %exitcond73.not, label %._crit_edge, label %.preheader45.us.us, !llvm.loop !543

.preheader45.us:                                  ; preds = %.preheader45.lr.ph.split.us, %._crit_edge54.split.us61
  %.03956.us = phi i32 [ %i.aq, %._crit_edge54.split.us61 ], [ 0, %.preheader45.lr.ph.split.us ] ; 2 uses
  %i.am = icmp eq i32 %.03956.us, 0
  %i.an = zext i1 %i.am to i32
  br label %.preheader.us58

.preheader.us58:                                  ; preds = %.preheader45.us, %.preheader.us58
  %.14153.us59 = phi i32 [ %.14152, %.preheader45.us ], [ %.141.us60, %.preheader.us58 ] ; 2 uses
  %i.ao = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.106, i32 noundef %i.an) #41 ; 0 uses
  %.141.us60 = add nsw i32 %.14153.us59, -1
  %i.ap = icmp sgt i32 %.14153.us59, 0
  br i1 %i.ap, label %.preheader.us58, label %._crit_edge54.split.us61, !llvm.loop !542

._crit_edge54.split.us61:                         ; preds = %.preheader.us58
  %i.aq = add nuw nsw i32 %.03956.us, 1           ; 2 uses
  %fputc43.us = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %exitcond69.not = icmp eq i32 %i.aq, %smax72
  br i1 %exitcond69.not, label %._crit_edge, label %.preheader45.us, !llvm.loop !543

.preheader45:                                     ; preds = %.preheader45.preheader, %.preheader45
  %.03956 = phi i32 [ %i.ar, %.preheader45 ], [ 0, %.preheader45.preheader ]
  %i.ar = add nuw nsw i32 %.03956, 1              ; 2 uses
  %fputc43 = tail call i32 @fputc(i32 10, ptr %i.c) ; 0 uses
  %exitcond75.not = icmp eq i32 %i.ar, %smax74
  br i1 %exitcond75.not, label %._crit_edge, label %.preheader45, !llvm.loop !543

._crit_edge:                                      ; preds = %._crit_edge54.split.us61, %._crit_edge54.split.us.us.us, %.preheader45, %._crit_edge49
  %i.as = tail call i32 @fclose(ptr noundef %i.c) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Exa6_WriteFile2(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #17 {
bb.a:
  %i.a = shl nuw i32 1, %3
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.16) ; 10 uses
  %i.c = getelementptr i8, ptr %5, i64 4          ; 4 uses
  %.val42 = load i32, ptr %i.c, align 4, !tbaa !23
  %i.d = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.105, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %.val42) #41 ; 0 uses
  %fputc = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  %i.e = add nsw i32 %2, %1                       ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph46, label %._crit_edge47

.lr.ph46:                                         ; preds = %bb.a
  %i.g = getelementptr i8, ptr %4, i64 8          ; 2 uses
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.lr.ph46.split.us, label %.lr.ph46.split

.lr.ph46.split.us:                                ; preds = %.lr.ph46, %._crit_edge.us
  %.044.us = phi i32 [ %i.i, %._crit_edge.us ], [ 0, %.lr.ph46 ]
  %.val41.us = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.h = icmp sgt i32 %.val41.us, 0
  %i.i = add nuw nsw i32 %.044.us, 1              ; 4 uses
  br i1 %i.h, label %.lr.ph.us, label %._crit_edge.us

bb.b:                                             ; preds = %.lr.ph.us, %bb.b
  %indvars.iv59 = phi i64 [ %i.w, %.lr.ph.us ], [ %indvars.iv.next60, %bb.b ] ; 2 uses
  %indvars.iv.next60 = add nsw i64 %indvars.iv59, -1 ; 2 uses
  %.val39.us = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val39.us, i64 %indvars.iv.next60
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %i.t
  %i.l = load i64, ptr %i.k, align 8, !tbaa !26
  %i.m = lshr i64 %i.l, %i.v
  %i.n = trunc i64 %i.m to i32
  %i.o = and i32 %i.n, 1
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.106, i32 noundef %i.o) #41 ; 0 uses
  %i.q = icmp samesign ugt i64 %indvars.iv59, 1
  br i1 %i.q, label %bb.b, label %._crit_edge.us, !llvm.loop !544

._crit_edge.us:                                   ; preds = %bb.b, %.lr.ph46.split.us
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.57) #41 ; 0 uses
  %exitcond62.not = icmp eq i32 %i.i, %i.e
  br i1 %exitcond62.not, label %._crit_edge47, label %.lr.ph46.split.us, !llvm.loop !545

.lr.ph.us:                                        ; preds = %.lr.ph46.split.us
  %i.s = lshr i32 %i.i, 6
  %i.t = zext nneg i32 %i.s to i64
  %i.u = and i32 %i.i, 63
  %i.v = zext nneg i32 %i.u to i64
  %i.w = zext nneg i32 %.val41.us to i64
  br label %bb.b

.lr.ph46.split:                                   ; preds = %.lr.ph46, %._crit_edge
  %.044 = phi i32 [ %i.y, %._crit_edge ], [ 0, %.lr.ph46 ]
  %.val41 = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.x = icmp sgt i32 %.val41, 0
  %i.y = add nuw nsw i32 %.044, 1                 ; 5 uses
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph46.split
  %i.z = lshr i32 %i.y, 6
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = and i32 %i.y, 63
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = zext nneg i32 %.val41 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ %i.ad, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %.val39 = load ptr, ptr %i.g, align 8, !tbaa !22
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.val39, i64 %indvars.iv.next
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.aa
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !26
  %i.ah = lshr i64 %i.ag, %i.ac
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = and i32 %i.ai, 1
  %i.ak = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.106, i32 noundef %i.aj) #41 ; 0 uses
  %i.al = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.al, label %bb.c, label %._crit_edge, !llvm.loop !544

._crit_edge:                                      ; preds = %bb.c, %.lr.ph46.split
  %i.am = icmp eq i32 %i.y, %1
  %spec.select = select i1 %i.am, ptr @.str.24, ptr @.str.57
  %i.an = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.107, ptr noundef nonnull %spec.select) #41 ; 0 uses
  %exitcond.not = icmp eq i32 %i.y, %i.e
  br i1 %exitcond.not, label %._crit_edge47, label %.lr.ph46.split, !llvm.loop !545

._crit_edge47:                                    ; preds = %._crit_edge, %._crit_edge.us, %bb.a
  %fputc37 = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  %.not56 = icmp eq i32 %3, 31
  br i1 %.not56, label %._crit_edge55, label %.lr.ph54

.lr.ph54:                                         ; preds = %._crit_edge47
  %i.ao = getelementptr i8, ptr %5, i64 8
  %smax = tail call i32 @llvm.smax.i32(i32 %i.a, i32 1)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph54, %._crit_edge51
  %.03552 = phi i32 [ 0, %.lr.ph54 ], [ %i.bd, %._crit_edge51 ] ; 3 uses
  %.val40 = load i32, ptr %i.c, align 4, !tbaa !23 ; 2 uses
  %i.ap = icmp sgt i32 %.val40, 0
  br i1 %i.ap, label %.lr.ph50, label %._crit_edge51

.lr.ph50:                                         ; preds = %bb.d
  %i.aq = lshr i32 %.03552, 6
  %i.ar = zext nneg i32 %i.aq to i64
  %i.as = and i32 %.03552, 63
  %i.at = zext nneg i32 %i.as to i64
  %i.au = zext nneg i32 %.val40 to i64
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph50, %bb.e
  %indvars.iv63 = phi i64 [ %i.au, %.lr.ph50 ], [ %indvars.iv.next64, %bb.e ] ; 2 uses
  %indvars.iv.next64 = add nsw i64 %indvars.iv63, -1 ; 2 uses
  %.val = load ptr, ptr %i.ao, align 8, !tbaa !22
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv.next64
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ar
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !26
  %i.ay = lshr i64 %i.ax, %i.at
  %i.az = trunc i64 %i.ay to i32
  %i.ba = and i32 %i.az, 1
  %i.bb = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.b, ptr noundef nonnull @.str.106, i32 noundef %i.ba) #41 ; 0 uses
  %i.bc = icmp samesign ugt i64 %indvars.iv63, 1
  br i1 %i.bc, label %bb.e, label %._crit_edge51, !llvm.loop !546

._crit_edge51:                                    ; preds = %bb.e, %bb.d
  %i.bd = add nuw nsw i32 %.03552, 1              ; 2 uses
  %fputc38 = tail call i32 @fputc(i32 10, ptr %i.b) ; 0 uses
  %exitcond66.not = icmp eq i32 %i.bd, %smax
  br i1 %exitcond66.not, label %._crit_edge55, label %bb.d, !llvm.loop !547

._crit_edge55:                                    ; preds = %._crit_edge51, %._crit_edge47
  %i.be = tail call i32 @fclose(ptr noundef %i.b) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Exa6_GenCount(ptr nofree noundef captures(none) initializes((0, 24)) %0, i32 noundef %1) local_unnamed_addr #26 {
.preheader:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false), !tbaa !26
  %.not18 = icmp eq i32 %1, 31
  br i1 %.not18, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.a = shl nuw nsw i32 1, %1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.017 = phi i32 [ %i.q, %bb.f ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.b = tail call range(i32 0, 32) i32 @llvm.ctpop.i32(i32 %.017) ; 3 uses
  %i.c = and i32 %.017, 63
  %i.d = zext nneg i32 %i.c to i64
  %i.e = shl nuw i64 1, %i.d                      ; 3 uses
  %i.f = lshr i32 %.017, 6
  %i.g = zext nneg i32 %i.f to i64
  %invariant.gep = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g ; 4 uses
  %i.h = and i32 %i.b, 1
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.b, label %bb.a

bb.a:                                             ; preds = %.lr.ph
  %i.i = load i64, ptr %invariant.gep, align 8, !tbaa !26
  %i.j = or i64 %i.i, %i.e
  store i64 %i.j, ptr %invariant.gep, align 8, !tbaa !26
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.a
  %i.k = and i32 %i.b, 2
  %.not.1 = icmp eq i32 %i.k, 0
  br i1 %.not.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 8 ; 2 uses
  %i.l = load i64, ptr %gep.1, align 8, !tbaa !26
  %i.m = or i64 %i.l, %i.e
  store i64 %i.m, ptr %gep.1, align 8, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.n = and i32 %i.b, 4
  %.not.2 = icmp eq i32 %i.n, 0
  br i1 %.not.2, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 16 ; 2 uses
  %i.o = load i64, ptr %gep.2, align 8, !tbaa !26
  %i.p = or i64 %i.o, %i.e
  store i64 %i.p, ptr %gep.2, align 8, !tbaa !26
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = add nuw nsw i32 %.017, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.q, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !548

._crit_edge:                                      ; preds = %bb.f, %.preheader
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Exa6_GenProd(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #26 {
bb.a:
  %i.a = sdiv i32 %1, 2                           ; 3 uses
  %i.b = shl nsw i32 %i.a, 1                      ; 2 uses
  %i.c = icmp sgt i32 %1, 1
  br i1 %i.c, label %.preheader27, label %._crit_edge36.split

.preheader27:                                     ; preds = %bb.a
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.d = zext nneg i32 %smax to i64
  %i.e = shl nuw nsw i64 %i.d, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %0, i8 0, i64 %i.e, i1 false), !tbaa !26
  %i.f = and i32 %1, 2147483646
  %.not46 = icmp eq i32 %i.f, 62
  br i1 %.not46, label %._crit_edge36.split, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader27
  %i.g = shl nuw i32 1, %i.a
  %smax40 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1) ; 3 uses
  %smax41 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 1) ; 2 uses
  %wide.trip.count = zext nneg i32 %smax40 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %smax40, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod47 = trunc i32 %smax40 to i1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge33
  %.02434 = phi i32 [ %i.ag, %._crit_edge33 ], [ 0, %.preheader.preheader ] ; 3 uses
  %i.i = shl i32 %.02434, %i.a
  br label %.lr.ph30

.lr.ph30:                                         ; preds = %.preheader, %._crit_edge
  %.02331 = phi i32 [ 0, %.preheader ], [ %i.af, %._crit_edge ] ; 3 uses
  %i.j = mul nuw nsw i32 %.02331, %.02434         ; 3 uses
  %i.k = or i32 %.02331, %i.i                     ; 2 uses
  %i.l = and i32 %i.k, 63
  %i.m = zext nneg i32 %i.l to i64
  %i.n = shl nuw i64 1, %i.m                      ; 3 uses
  %i.o = ashr i32 %i.k, 6
  %i.p = sext i32 %i.o to i64
  %invariant.gep = getelementptr [8 x i8], ptr %0, i64 %i.p ; 3 uses
  br i1 %i.h, label %.epil.preheader, label %.lr.ph30.new

.lr.ph30.new:                                     ; preds = %.lr.ph30, %bb.e
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.lr.ph30 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph30 ]
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = shl nuw i32 1, %i.q
  %i.s = and i32 %i.r, %i.j
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph30.new
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.t = load i64, ptr %gep, align 8, !tbaa !26
  %i.u = or i64 %i.t, %i.n
  store i64 %i.u, ptr %gep, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph30.new, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.v = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.w = shl nuw i32 1, %i.v
  %i.x = and i32 %i.w, %i.j
  %.not.1 = icmp eq i32 %i.x, 0
  br i1 %.not.1, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.next ; 2 uses
  %i.y = load i64, ptr %gep.1, align 8, !tbaa !26
  %i.z = or i64 %i.y, %i.n
  store i64 %i.z, ptr %gep.1, align 8, !tbaa !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph30.new, !llvm.loop !549

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph30
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph30 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.aa = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = and i32 %i.ab, %i.j
  %.not.epil = icmp eq i32 %i.ac, 0
  br i1 %.not.epil, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.epil.preheader
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init ; 2 uses
  %i.ad = load i64, ptr %gep.epil, align 8, !tbaa !26
  %i.ae = or i64 %i.ad, %i.n
  store i64 %i.ae, ptr %gep.epil, align 8, !tbaa !26
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %i.af = add nuw nsw i32 %.02331, 1              ; 2 uses
  %exitcond42.not = icmp eq i32 %i.af, %smax41
  br i1 %exitcond42.not, label %._crit_edge33, label %.lr.ph30, !llvm.loop !550

._crit_edge33:                                    ; preds = %._crit_edge
  %i.ag = add nuw nsw i32 %.02434, 1              ; 2 uses
  %exitcond43.not = icmp eq i32 %i.ag, %smax41
  br i1 %exitcond43.not, label %._crit_edge36.split, label %.preheader, !llvm.loop !551

._crit_edge36.split:                              ; preds = %._crit_edge33, %bb.a, %.preheader27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Exa_ManExactSynthesis6_(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #3 {
._crit_edge.i.3.3:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca [100 x i64], align 16             ; 8 uses
  %i.e = alloca i32, align 4                      ; 3 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  store ptr null, ptr %i.a, align 8, !tbaa !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  store ptr null, ptr %i.b, align 8, !tbaa !536
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
end_hunk_1
begin_hunk_2_@Exa_ManExactSynthesis6:bb.a
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %.val90.i, i64 %indvars.iv151.i
  %i.jw = load i64, ptr %i.jv, align 8, !tbaa !26
  %.not.i = icmp eq i64 %i.iz, %i.jw
  br i1 %.not.i, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %.val89.i = load ptr, ptr %i.hi, align 8, !tbaa !22
  %i.jx = getelementptr inbounds nuw [8 x i8], ptr %.val89.i, i64 %indvars.iv151.i
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !26
  %i.jz = load ptr, ptr %i.iw, align 8, !tbaa !695
  %i.ka = load i32, ptr %i.iv, align 4, !tbaa !689
  %i.kb = trunc i64 %i.jy to i32
  %i.kc = mul i32 %i.ka, %i.kb
  %i.kd = getelementptr i8, ptr %i.jz, i64 8
  %.val.i = load ptr, ptr %i.kd, align 8, !tbaa !22
  %i.ke = sext i32 %i.kc to i64
  %i.kf = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.ke
  %i.kg = getelementptr inbounds nuw [4 x i8], ptr %i.kf, i64 %i.ji ; 2 uses
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !38
  %i.ki = or i32 %i.kh, %i.jg
  store i32 %i.ki, ptr %i.kg, align 4, !tbaa !38
  %.val86.pre.i = load i32, ptr %i.hc, align 4, !tbaa !23
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.val86.i = phi i32 [ %.val86162.i, %bb.az ], [ %.val86.pre.i, %bb.ba ] ; 2 uses
  %indvars.iv.next152.i = add nuw nsw i64 %indvars.iv151.i, 1 ; 2 uses
  %i.kj = sext i32 %.val86.i to i64
  %i.kk = icmp slt i64 %indvars.iv.next152.i, %i.kj
  br i1 %i.kk, label %bb.az, label %.critedge2.i, !llvm.loop !712

.critedge2.i:                                     ; preds = %bb.bb, %.preheader.i
  %indvars.iv.next155.i = add nuw nsw i64 %indvars.iv154.i, 1 ; 2 uses
  %exitcond160.not.i = icmp eq i64 %indvars.iv.next155.i, %wide.trip.count159.i
  br i1 %exitcond160.not.i, label %.critedge.i, label %bb.av, !llvm.loop !713

.critedge.i:                                      ; preds = %.critedge2.i, %Vec_WrdUniqify.exit.i
  %i.kl = load ptr, ptr %i.hi, align 8, !tbaa !22 ; 2 uses
  %.not.i117.i = icmp eq ptr %i.kl, null
  br i1 %.not.i117.i, label %Vec_WrdFree.exit.i, label %bb.bc

bb.bc:                                            ; preds = %.critedge.i
  tail call void @free(ptr noundef nonnull %i.kl) #41
  br label %Vec_WrdFree.exit.i

Vec_WrdFree.exit.i:                               ; preds = %bb.bc, %.critedge.i
  tail call void @free(ptr noundef nonnull %i.he) #41
  %.not.i118.i = icmp eq ptr %i.io, null
  br i1 %.not.i118.i, label %Vec_WrdFree.exit119.i, label %bb.bd

bb.bd:                                            ; preds = %Vec_WrdFree.exit.i
  tail call void @free(ptr noundef nonnull %i.io) #41
  br label %Vec_WrdFree.exit119.i

Vec_WrdFree.exit119.i:                            ; preds = %bb.bd, %Vec_WrdFree.exit.i
  %i.km = load ptr, ptr %i.hd, align 8, !tbaa !22 ; 2 uses
  %.not.i120.i = icmp eq ptr %i.km, null
  br i1 %.not.i120.i, label %Vec_WrdFree.exit121.i, label %bb.be

bb.be:                                            ; preds = %Vec_WrdFree.exit119.i
  tail call void @free(ptr noundef nonnull %i.km) #41
  br label %Vec_WrdFree.exit121.i

Vec_WrdFree.exit121.i:                            ; preds = %bb.be, %Vec_WrdFree.exit119.i
  tail call void @free(ptr noundef nonnull %i.gz) #41
  %i.kn = load ptr, ptr %i.ea, align 8, !tbaa !22 ; 2 uses
  %.not.i122.i = icmp eq ptr %i.kn, null
  br i1 %.not.i122.i, label %Vec_WrdFree.exit123.i, label %bb.bf

bb.bf:                                            ; preds = %Vec_WrdFree.exit121.i
  tail call void @free(ptr noundef nonnull %i.kn) #41
  br label %Vec_WrdFree.exit123.i

Vec_WrdFree.exit123.i:                            ; preds = %bb.bf, %Vec_WrdFree.exit121.i
  tail call void @free(ptr noundef nonnull %i.dt) #41
  %i.ko = load ptr, ptr %i.ef, align 8, !tbaa !22 ; 2 uses
  %.not.i124.i = icmp eq ptr %i.ko, null
  br i1 %.not.i124.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %Vec_WrdFree.exit123.i
  tail call void @free(ptr noundef nonnull %i.ko) #41
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %Vec_WrdFree.exit123.i
  tail call void @free(ptr noundef nonnull %i.eb) #41
  %.not93 = icmp eq ptr %i.ir, null
  br i1 %.not93, label %.critedge, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i32 0, ptr %i.f, align 4, !tbaa !38
  store i32 %i.eo, ptr %i.g, align 4, !tbaa !38
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ir, i64 8
  %i.kq = load i32, ptr %i.kp, align 8, !tbaa !709 ; 9 uses
  %i.kr = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  %i.ks = add i32 %i.kq, -1
  %or.cond.i.i = icmp ult i32 %i.ks, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %i.kq ; 5 uses
  store i32 %spec.store.select.i.i, ptr %i.kr, align 8, !tbaa !19
  %.not.i.i69 = icmp eq i32 %spec.store.select.i.i, 0 ; 2 uses
  br i1 %.not.i.i69, label %Vec_WrdStart.exit, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.kt = sext i32 %spec.store.select.i.i to i64
  %i.ku = shl nsw i64 %i.kt, 3
  %i.kv = tail call noalias ptr @malloc(i64 noundef %i.ku) #38
  br label %Vec_WrdStart.exit

Vec_WrdStart.exit:                                ; preds = %bb.bi, %bb.bj
  %i.kw = phi ptr [ %i.kv, %bb.bj ], [ null, %bb.bi ] ; 3 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  store ptr %i.kw, ptr %i.ky, align 8, !tbaa !22
  store i32 %i.kq, ptr %i.kx, align 4, !tbaa !23
  %i.kz = sext i32 %i.kq to i64
  %i.la = shl nsw i64 %i.kz, 3                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.kw, i8 0, i64 %i.la, i1 false)
  store ptr %i.kr, ptr %i.d, align 8, !tbaa !536
  %i.lb = icmp sgt i32 %i.kq, 0
  %or.cond = and i1 %i.eh, %i.lb
  br i1 %or.cond, label %.preheader94.lr.ph.split, label %._crit_edge97.split

.preheader94.lr.ph.split:                         ; preds = %Vec_WrdStart.exit
  %i.lc = getelementptr i8, ptr %i.ir, i64 16
  %i.ld = getelementptr i8, ptr %i.ir, i64 12
  %.val62 = load i32, ptr %i.ld, align 4, !tbaa !689
  %.val63 = load ptr, ptr %i.lc, align 8, !tbaa !694
  %i.le = getelementptr i8, ptr %.val63, i64 8
  %.val63.val = load ptr, ptr %i.le, align 8, !tbaa !22
  %i.lf = sext i32 %.val62 to i64
  %wide.trip.count112 = zext nneg i32 %i.eg to i64
  %wide.trip.count = zext nneg i32 %i.kq to i64
  br label %.preheader94

.preheader94:                                     ; preds = %.preheader94.lr.ph.split, %._crit_edge
  %indvars.iv109 = phi i64 [ 0, %.preheader94.lr.ph.split ], [ %indvars.iv.next110, %._crit_edge ] ; 2 uses
  %i.lg = mul nsw i64 %indvars.iv109, %i.lf
  %i.lh = getelementptr inbounds [8 x i8], ptr %.val63.val, i64 %i.lg
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 4 uses
  %i.li = trunc nuw nsw i64 %indvars.iv.next110 to i32
  %i.lj = and i32 %i.li, 31
  %i.lk = shl nuw i32 1, %i.lj
  %i.ll = lshr i64 %indvars.iv.next110, 5
  %i.lm = and i64 %i.ll, 134217727
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.kw, i64 %i.lm
  br label %bb.bk

bb.bk:                                            ; preds = %.preheader94, %bb.bm
  %indvars.iv = phi i64 [ 0, %.preheader94 ], [ %indvars.iv.next, %bb.bm ] ; 4 uses
  %i.ln = trunc nuw nsw i64 %indvars.iv to i32
  %i.lo = lshr i64 %indvars.iv, 5
  %i.lp = and i64 %i.lo, 134217727
  %i.lq = getelementptr inbounds nuw [4 x i8], ptr %i.lh, i64 %i.lp
  %i.lr = load i32, ptr %i.lq, align 4, !tbaa !38
  %i.ls = and i32 %i.ln, 31
  %i.lt = shl nuw i32 1, %i.ls
  %i.lu = and i32 %i.lr, %i.lt
  %.not59 = icmp eq i32 %i.lu, 0
  br i1 %.not59, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %gep = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.lv = load i32, ptr %gep, align 4, !tbaa !38
  %i.lw = or i32 %i.lv, %i.lk
  store i32 %i.lw, ptr %gep, align 4, !tbaa !38
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond108.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond108.not, label %._crit_edge, label %bb.bk, !llvm.loop !714

._crit_edge:                                      ; preds = %bb.bm
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge97.split, label %.preheader94, !llvm.loop !715

._crit_edge97.split:                              ; preds = %._crit_edge, %Vec_WrdStart.exit
  %i.lx = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #38 ; 4 uses
  store i32 %spec.store.select.i.i, ptr %i.lx, align 8, !tbaa !19
  br i1 %.not.i.i69, label %Vec_WrdStart.exit73, label %bb.bn

bb.bn:                                            ; preds = %._crit_edge97.split
  %i.ly = sext i32 %spec.store.select.i.i to i64
  %i.lz = shl nsw i64 %i.ly, 3
  %i.ma = tail call noalias ptr @malloc(i64 noundef %i.lz) #38
  br label %Vec_WrdStart.exit73

Vec_WrdStart.exit73:                              ; preds = %._crit_edge97.split, %bb.bn
  %i.mb = phi ptr [ %i.ma, %bb.bn ], [ null, %._crit_edge97.split ] ; 3 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.md = getelementptr inbounds nuw i8, ptr %i.lx, i64 8
  store ptr %i.mb, ptr %i.md, align 8, !tbaa !22
  store i32 %i.kq, ptr %i.mc, align 4, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.mb, i8 0, i64 %i.la, i1 false)
  store ptr %i.lx, ptr %i.e, align 8, !tbaa !536
  %.not104 = icmp ne i32 %i.eo, 31
  %i.me = icmp sgt i32 %i.kq, 0
  %or.cond151 = and i1 %.not104, %i.me
  br i1 %or.cond151, label %.preheader.lr.ph.split, label %._crit_edge103.split

.preheader.lr.ph.split:                           ; preds = %Vec_WrdStart.exit73
  %i.mf = shl nuw i32 1, %i.eo
  %i.mg = getelementptr i8, ptr %i.ir, i64 24
  %i.mh = getelementptr i8, ptr %i.ir, i64 12
  %.val64 = load i32, ptr %i.mh, align 4, !tbaa !689
  %.val65 = load ptr, ptr %i.mg, align 8, !tbaa !695
  %i.mi = getelementptr i8, ptr %.val65, i64 8
  %.val65.val = load ptr, ptr %i.mi, align 8, !tbaa !22
  %i.mj = sext i32 %.val64 to i64
  %smax = tail call i32 @llvm.smax.i32(i32 %i.mf, i32 1)
  %wide.trip.count122 = zext nneg i32 %smax to i64
  %wide.trip.count117 = zext nneg i32 %i.kq to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge99
  %indvars.iv119 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvars.iv.next120, %._crit_edge99 ] ; 4 uses
  %i.mk = mul nsw i64 %indvars.iv119, %i.mj
  %i.ml = getelementptr inbounds [8 x i8], ptr %.val65.val, i64 %i.mk
  %i.mm = trunc nuw nsw i64 %indvars.iv119 to i32
  %i.mn = and i32 %i.mm, 31
  %i.mo = shl nuw i32 1, %i.mn
  %i.mp = lshr i64 %indvars.iv119, 5
  %i.mq = and i64 %i.mp, 134217727
  %invariant.gep100 = getelementptr inbounds nuw [4 x i8], ptr %i.mb, i64 %i.mq
  br label %bb.bo

bb.bo:                                            ; preds = %.preheader, %bb.bq
  %indvars.iv114 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next115, %bb.bq ] ; 4 uses
  %i.mr = trunc nuw nsw i64 %indvars.iv114 to i32
  %i.ms = lshr i64 %indvars.iv114, 5
  %i.mt = and i64 %i.ms, 134217727
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %i.mt
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !38
  %i.mw = and i32 %i.mr, 31
  %i.mx = shl nuw i32 1, %i.mw
  %i.my = and i32 %i.mv, %i.mx
  %.not58 = icmp eq i32 %i.my, 0
  br i1 %.not58, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %gep101 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep100, i64 %indvars.iv114 ; 2 uses
  %i.mz = load i32, ptr %gep101, align 4, !tbaa !38
  %i.na = or i32 %i.mz, %i.mo
  store i32 %i.na, ptr %gep101, align 4, !tbaa !38
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bo, %bb.bp
  %indvars.iv.next115 = add nuw nsw i64 %indvars.iv114, 1 ; 2 uses
  %exitcond118.not = icmp eq i64 %indvars.iv.next115, %wide.trip.count117
  br i1 %exitcond118.not, label %._crit_edge99, label %bb.bo, !llvm.loop !716

._crit_edge99:                                    ; preds = %bb.bq
  %indvars.iv.next120 = add nuw nsw i64 %indvars.iv119, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next120, %wide.trip.count122
  br i1 %exitcond123.not, label %._crit_edge103.split, label %.preheader, !llvm.loop !717

._crit_edge103.split:                             ; preds = %._crit_edge99, %Vec_WrdStart.exit73
  tail call fastcc void @Abc_RDataStop(ptr noundef %i.ag)
  tail call fastcc void @Abc_RDataStop(ptr noundef %i.ir)
  br label %bb.br

.thread90:                                        ; preds = %bb.c
  %i.nb = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.113, ptr noundef nonnull %1) ; 0 uses
  br label %.critedge

bb.br:                                            ; preds = %._crit_edge103.split, %bb.b
  %.150 = phi i32 [ %i.l, %bb.b ], [ %i.eg, %._crit_edge103.split ] ; 2 uses
  %i.nc = icmp eq i32 %.150, 0
  br i1 %i.nc, label %.critedge, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nd = load ptr, ptr %i.d, align 8, !tbaa !536 ; 5 uses
  %i.ne = load ptr, ptr %i.e, align 8, !tbaa !536 ; 4 uses
  %i.nf = getelementptr i8, ptr %i.nd, i64 8      ; 2 uses
  %.val38.i = load ptr, ptr %i.nf, align 8, !tbaa !22 ; 7 uses
  %i.ng = getelementptr i8, ptr %i.ne, i64 8      ; 2 uses
  %.val37.i = load ptr, ptr %i.ng, align 8, !tbaa !22 ; 2 uses
  %i.nh = getelementptr i8, ptr %i.nd, i64 4
  %.val.i74 = load i32, ptr %i.nh, align 4, !tbaa !23 ; 3 uses
  %i.ni = icmp sgt i32 %.val.i74, 1
  br i1 %i.ni, label %.lr.ph43.preheader.i, label %Exa6_SortSims.exit

.lr.ph43.preheader.i:                             ; preds = %bb.bs
  %i.nj = add nsw i32 %.val.i74, -1
  %wide.trip.count51.i = zext nneg i32 %i.nj to i64
  %wide.trip.count.i75 = zext nneg i32 %.val.i74 to i64 ; 3 uses
  %i.nk = add nsw i64 %wide.trip.count.i75, -2
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.bu, %.lr.ph43.preheader.i
  %indvars.iv48.i = phi i64 [ 0, %.lr.ph43.preheader.i ], [ %indvars.iv.next49.i, %bb.bu ] ; 7 uses
  %indvars.iv.i76 = phi i64 [ 1, %.lr.ph43.preheader.i ], [ %indvars.iv.next.i80, %bb.bu ] ; 3 uses
  %i.nl = xor i64 %indvars.iv48.i, -1
  %i.nm = add nsw i64 %i.nl, %wide.trip.count.i75
  %i.nn = sub i64 %i.nk, %indvars.iv48.i
  %i.no = trunc nuw nsw i64 %indvars.iv48.i to i32 ; 2 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv48.i ; 2 uses
  %.pre.i77 = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !26 ; 3 uses
  %xtraiter177 = and i64 %i.nm, 3                 ; 2 uses
  %lcmp.mod178.not = icmp eq i64 %xtraiter177, 0
  br i1 %lcmp.mod178.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol

.lr.ph.i78.prol:                                  ; preds = %.lr.ph.preheader.i, %.lr.ph.i78.prol
  %i.np = phi i64 [ %i.nu, %.lr.ph.i78.prol ], [ %.pre.i77, %.lr.ph.preheader.i ] ; 2 uses
  %indvars.iv45.i.prol = phi i64 [ %indvars.iv.next46.i.prol, %.lr.ph.i78.prol ], [ %indvars.iv.i76, %.lr.ph.preheader.i ] ; 3 uses
  %.03540.i.prol = phi i32 [ %spec.select.i.prol, %.lr.ph.i78.prol ], [ %i.no, %.lr.ph.preheader.i ]
  %prol.iter179 = phi i64 [ %prol.iter179.next, %.lr.ph.i78.prol ], [ 0, %.lr.ph.preheader.i ]
  %i.nq = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv45.i.prol
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !26 ; 2 uses
  %i.ns = icmp ult i64 %i.nr, %i.np
  %i.nt = trunc nuw nsw i64 %indvars.iv45.i.prol to i32
  %spec.select.i.prol = select i1 %i.ns, i32 %i.nt, i32 %.03540.i.prol ; 3 uses
  %indvars.iv.next46.i.prol = add nuw nsw i64 %indvars.iv45.i.prol, 1 ; 2 uses
  %i.nu = call i64 @llvm.umin.i64(i64 %i.nr, i64 %i.np) ; 2 uses
  %prol.iter179.next = add i64 %prol.iter179, 1   ; 2 uses
  %prol.iter179.cmp.not = icmp eq i64 %prol.iter179.next, %xtraiter177
  br i1 %prol.iter179.cmp.not, label %.lr.ph.i78.prol.loopexit, label %.lr.ph.i78.prol, !llvm.loop !718

.lr.ph.i78.prol.loopexit:                         ; preds = %.lr.ph.i78.prol, %.lr.ph.preheader.i
  %spec.select.i.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i78.prol ]
  %.unr = phi i64 [ %.pre.i77, %.lr.ph.preheader.i ], [ %i.nu, %.lr.ph.i78.prol ]
  %indvars.iv45.i.unr = phi i64 [ %indvars.iv.i76, %.lr.ph.preheader.i ], [ %indvars.iv.next46.i.prol, %.lr.ph.i78.prol ]
  %.03540.i.unr = phi i32 [ %i.no, %.lr.ph.preheader.i ], [ %spec.select.i.prol, %.lr.ph.i78.prol ]
  %i.nv = icmp ult i64 %i.nn, 3
  br i1 %i.nv, label %._crit_edge.i, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %.lr.ph.i78.prol.loopexit, %.lr.ph.i78
  %i.nw = phi i64 [ %i.oq, %.lr.ph.i78 ], [ %.unr, %.lr.ph.i78.prol.loopexit ] ; 2 uses
  %indvars.iv45.i = phi i64 [ %indvars.iv.next46.i.3, %.lr.ph.i78 ], [ %indvars.iv45.i.unr, %.lr.ph.i78.prol.loopexit ] ; 6 uses
  %.03540.i = phi i32 [ %spec.select.i.3, %.lr.ph.i78 ], [ %.03540.i.unr, %.lr.ph.i78.prol.loopexit ]
  %i.nx = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv45.i
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !26 ; 2 uses
  %i.nz = icmp ult i64 %i.ny, %i.nw
  %i.oa = trunc nuw nsw i64 %indvars.iv45.i to i32
  %spec.select.i = select i1 %i.nz, i32 %i.oa, i32 %.03540.i
  %indvars.iv.next46.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %i.ob = call i64 @llvm.umin.i64(i64 %i.ny, i64 %i.nw) ; 2 uses
  %i.oc = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv.next46.i
  %i.od = load i64, ptr %i.oc, align 8, !tbaa !26 ; 2 uses
  %i.oe = icmp ult i64 %i.od, %i.ob
  %i.of = trunc nuw nsw i64 %indvars.iv.next46.i to i32
  %spec.select.i.1 = select i1 %i.oe, i32 %i.of, i32 %spec.select.i
  %indvars.iv.next46.i.1 = add nuw nsw i64 %indvars.iv45.i, 2 ; 2 uses
  %i.og = call i64 @llvm.umin.i64(i64 %i.od, i64 %i.ob) ; 2 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv.next46.i.1
  %i.oi = load i64, ptr %i.oh, align 8, !tbaa !26 ; 2 uses
  %i.oj = icmp ult i64 %i.oi, %i.og
  %i.ok = trunc nuw nsw i64 %indvars.iv.next46.i.1 to i32
  %spec.select.i.2 = select i1 %i.oj, i32 %i.ok, i32 %spec.select.i.1
  %indvars.iv.next46.i.2 = add nuw nsw i64 %indvars.iv45.i, 3 ; 2 uses
  %i.ol = call i64 @llvm.umin.i64(i64 %i.oi, i64 %i.og) ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %.val38.i, i64 %indvars.iv.next46.i.2
  %i.on = load i64, ptr %i.om, align 8, !tbaa !26 ; 2 uses
  %i.oo = icmp ult i64 %i.on, %i.ol
  %i.op = trunc nuw nsw i64 %indvars.iv.next46.i.2 to i32
  %spec.select.i.3 = select i1 %i.oo, i32 %i.op, i32 %spec.select.i.2 ; 2 uses
  %indvars.iv.next46.i.3 = add nuw nsw i64 %indvars.iv45.i, 4 ; 2 uses
  %exitcond.not.i79.3 = icmp eq i64 %indvars.iv.next46.i.3, %wide.trip.count.i75
  %i.oq = call i64 @llvm.umin.i64(i64 %i.on, i64 %i.ol)
  br i1 %exitcond.not.i79.3, label %._crit_edge.i, label %.lr.ph.i78, !llvm.loop !533

._crit_edge.i:                                    ; preds = %.lr.ph.i78, %.lr.ph.i78.prol.loopexit
  %spec.select.i.lcssa = phi i32 [ %spec.select.i.lcssa.unr, %.lr.ph.i78.prol.loopexit ], [ %spec.select.i.3, %.lr.ph.i78 ] ; 2 uses
  %indvars.iv.next49.i = add nuw nsw i64 %indvars.iv48.i, 1 ; 2 uses
  %i.or = zext i32 %spec.select.i.lcssa to i64
  %i.os = icmp eq i64 %indvars.iv48.i, %i.or
  br i1 %i.os, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i
  %i.ot = sext i32 %spec.select.i.lcssa to i64    ; 2 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %.val38.i, i64 %i.ot ; 2 uses
  %i.ov = load i64, ptr %i.ou, align 8, !tbaa !26
  store i64 %i.ov, ptr %.phi.trans.insert.i, align 8, !tbaa !26
  store i64 %.pre.i77, ptr %i.ou, align 8, !tbaa !26
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %.val37.i, i64 %indvars.iv48.i ; 2 uses
  %i.ox = load i64, ptr %i.ow, align 8, !tbaa !26
  %i.oy = getelementptr inbounds [8 x i8], ptr %.val37.i, i64 %i.ot ; 2 uses
  %i.oz = load i64, ptr %i.oy, align 8, !tbaa !26
  store i64 %i.oz, ptr %i.ow, align 8, !tbaa !26
  store i64 %i.ox, ptr %i.oy, align 8, !tbaa !26
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge.i
  %indvars.iv.next.i80 = add nuw nsw i64 %indvars.iv.i76, 1
  %exitcond52.not.i = icmp eq i64 %indvars.iv.next49.i, %wide.trip.count51.i
  br i1 %exitcond52.not.i, label %Exa6_SortSims.exit, label %.lr.ph.preheader.i, !llvm.loop !534

Exa6_SortSims.exit:                               ; preds = %bb.bu, %bb.bs
  %i.pa = load i32, ptr %i.f, align 4, !tbaa !38
  %i.pb = load i32, ptr %i.g, align 4, !tbaa !38
  %i.pc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.pd = load i32, ptr %i.pc, align 4, !tbaa !110
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pf = load i32, ptr %i.pe, align 8, !tbaa !162
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.ph = load i32, ptr %i.pg, align 4, !tbaa !163
  %i.pi = call ptr @Exa_ManExactSynthesis6Int(ptr noundef %i.nd, ptr noundef %i.ne, i32 noundef %.150, i32 noundef %i.pa, i32 noundef %i.pb, i32 noundef %i.pd, i32 noundef %i.pf, i32 noundef %i.ph, ptr noundef nonnull %1) ; 3 uses
  %i.pj = icmp eq ptr %i.nd, null
  br i1 %i.pj, label %Vec_WrdFreeP.exit, label %bb.bv

bb.bv:                                            ; preds = %Exa6_SortSims.exit
  %i.pk = load ptr, ptr %i.nf, align 8, !tbaa !22 ; 2 uses
  %.not.i81 = icmp eq ptr %i.pk, null
  br i1 %.not.i81, label %bb.bw, label %.thread.i

.thread.i:                                        ; preds = %bb.bv
  call void @free(ptr noundef nonnull %i.pk) #41
  br label %bb.bw

bb.bw:                                            ; preds = %.thread.i, %bb.bv
  call void @free(ptr noundef nonnull %i.nd) #41
end_hunk_2
