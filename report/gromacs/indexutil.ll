Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/indexutil?download=true
inline.NumInlined: 683
inline.NumDeleted: 377
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_:bb.a

.critedge:                                        ; preds = %bb.g, %bb.j
  %.1 = phi i32 [ %spec.select, %bb.j ], [ %.02935, %bb.g ]
  %i.ay = add nsw i32 %.03034, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %.critedge
  %.sink = phi i32 [ %i.av, %bb.i ], [ %i.al, %.critedge ]
  %.131 = phi i32 [ %.03034, %bb.i ], [ %i.ay, %.critedge ]
  %.2 = phi i32 [ %i.as, %bb.i ], [ %.1, %.critedge ]
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.next
  store i32 %.sink, ptr %i.az, align 4, !tbaa !44
  %i.ba = icmp samesign ugt i64 %indvars.iv, 1
  br i1 %i.ba, label %bb.f, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.k, %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z28gmx_ana_index_union_unsortedP15gmx_ana_index_tS0_S0_(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !59     ; 7 uses
  %i.c = add nsw i32 %i.b, -1                     ; 3 uses
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64 ; 3 uses
  %exitcond.i91 = icmp slt i32 %i.b, 2
  br i1 %exitcond.i91, label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !68   ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %exitcond.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.i, label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, label %.lr.ph, !llvm.loop !3

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv.i92 = phi i64 [ %indvars.iv.next.i, %bb.b ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i92, 1 ; 3 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.next.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !44
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i92
  %i.h = load i32, ptr %i.g, align 4, !tbaa !44
  %.not.i = icmp sgt i32 %i.f, %i.h
  br i1 %.not.i, label %bb.b, label %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93, !llvm.loop !3

._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93: ; preds = %.lr.ph
  br label %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit, !llvm.loop !3

_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit: ; preds = %bb.b, %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93, %bb.a
  %indvars.iv.i.lcssa = phi i64 [ %wide.trip.count.i, %bb.a ], [ %indvars.iv.i92, %._Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit_crit_edge93 ], [ %wide.trip.count.i, %bb.b ]
  %i.i = sext i32 %i.c to i64
  %.not8.i.not = icmp slt i64 %indvars.iv.i.lcssa, %i.i
  br i1 %.not8.i.not, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread, label %bb.c

bb.c:                                             ; preds = %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit
  %i.j = icmp sgt i32 %i.b, 0
  %.pre.i = load i32, ptr %1, align 8, !tbaa !59  ; 7 uses
  br i1 %i.j, label %.preheader.lr.ph.i.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i

.preheader.lr.ph.i.i:                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = sext i32 %.pre.i to i64
  %wide.trip.count.i.i = zext nneg i32 %i.b to i64
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.g, %.preheader.lr.ph.i.i
  %indvars.iv30.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next31.i.i, %bb.g ] ; 3 uses
  %.027.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.1.i.i, %bb.g ] ; 2 uses
  %.01726.i.i = phi i32 [ 0, %.preheader.lr.ph.i.i ], [ %.118.lcssa36.i.i, %bb.g ] ; 3 uses
  %i.m = icmp slt i32 %.01726.i.i, %.pre.i
  br i1 %i.m, label %.lr.ph.i.i, label %.critedge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv30.i.i
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = sext i32 %.01726.i.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %i.r, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.e ] ; 3 uses
  %i.s = getelementptr inbounds [4 x i8], ptr %i.n, i64 %indvars.iv.i.i
  %i.t = load i32, ptr %i.s, align 4, !tbaa !44
  %i.u = icmp slt i32 %i.t, %i.q
  br i1 %i.u, label %bb.e, label %.critedge.loopexit.i.i

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.l
  br i1 %exitcond.not.i.i, label %.critedge.thread.i.i, label %bb.d, !llvm.loop !7

.critedge.loopexit.i.i:                           ; preds = %bb.d
  %i.v = trunc nsw i64 %indvars.iv.i.i to i32
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %.critedge.loopexit.i.i, %.preheader.i.i
  %.118.lcssa.i.i = phi i32 [ %.01726.i.i, %.preheader.i.i ], [ %i.v, %.critedge.loopexit.i.i ] ; 4 uses
  %i.w = icmp eq i32 %.118.lcssa.i.i, %.pre.i
  br i1 %i.w, label %.critedge.thread.i.i, label %bb.f

bb.f:                                             ; preds = %.critedge.i.i
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.y = sext i32 %.118.lcssa.i.i to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !44
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv30.i.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %.not.i.i = icmp eq i32 %i.aa, %i.ad
  br i1 %.not.i.i, label %bb.g, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %bb.e, %bb.f, %.critedge.i.i
  %.118.lcssa37.i.i = phi i32 [ %.pre.i, %.critedge.i.i ], [ %.118.lcssa.i.i, %bb.f ], [ %.pre.i, %bb.e ]
  %i.ae = add nsw i32 %.027.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %.critedge.thread.i.i, %bb.f
  %.118.lcssa36.i.i = phi i32 [ %.118.lcssa37.i.i, %.critedge.thread.i.i ], [ %.118.lcssa.i.i, %bb.f ]
  %.1.i.i = phi i32 [ %i.ae, %.critedge.thread.i.i ], [ %.027.i.i, %bb.f ] ; 2 uses
  %indvars.iv.next31.i.i = add nuw nsw i64 %indvars.iv30.i.i, 1 ; 2 uses
  %exitcond33.not.i.i = icmp eq i64 %indvars.iv.next31.i.i, %wide.trip.count.i.i
  br i1 %exitcond33.not.i.i, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i, label %.preheader.i.i, !llvm.loop !8

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i: ; preds = %bb.g, %bb.c
  %.0.lcssa.i.i = phi i32 [ 0, %bb.c ], [ %.1.i.i, %bb.g ]
  %i.af = add nsw i32 %.0.lcssa.i.i, %.pre.i      ; 3 uses
  store i32 %i.af, ptr %0, align 8, !tbaa !59
  %i.ag = icmp sgt i32 %i.af, 0
  br i1 %i.ag, label %.lr.ph.i, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit

.lr.ph.i:                                         ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i
  %i.ah = add nsw i32 %.pre.i, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ak = zext nneg i32 %i.af to i64
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !68
  br label %bb.h

bb.h:                                             ; preds = %bb.m, %.lr.ph.i
  %indvars.iv.i7 = phi i64 [ %i.ak, %.lr.ph.i ], [ %indvars.iv.next.i8, %bb.m ] ; 2 uses
  %.02935.i = phi i32 [ %i.c, %.lr.ph.i ], [ %.2.i, %bb.m ] ; 6 uses
  %.03034.i = phi i32 [ %i.ah, %.lr.ph.i ], [ %.131.i, %bb.m ] ; 4 uses
  %indvars.iv.next.i8 = add nsw i64 %indvars.iv.i7, -1 ; 2 uses
  %i.am = icmp slt i32 %.03034.i, 0
  br i1 %i.am, label %._crit_edge42.i, label %bb.i

._crit_edge42.i:                                  ; preds = %bb.h
  %.pre43.i = load ptr, ptr %i.a, align 8, !tbaa !68
  br label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.an = icmp sgt i32 %.02935.i, -1
  %.pre39.i = load ptr, ptr %i.ai, align 8, !tbaa !68
  %i.ao = zext nneg i32 %.03034.i to i64
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.pre39.i, i64 %i.ao
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !44 ; 3 uses
  br i1 %i.an, label %bb.j, label %.critedge.i

bb.j:                                             ; preds = %bb.i
  %i.ar = load ptr, ptr %i.a, align 8, !tbaa !68  ; 2 uses
  %i.as = zext nneg i32 %.02935.i to i64
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !44 ; 2 uses
  %i.av = icmp slt i32 %i.aq, %i.au
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j, %._crit_edge42.i
  %i.aw = phi ptr [ %.pre43.i, %._crit_edge42.i ], [ %i.ar, %bb.j ]
  %i.ax = add nsw i32 %.02935.i, -1
  %i.ay = sext i32 %.02935.i to i64
  %i.az = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %i.ay
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !44
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %i.aq, %i.au
  %i.bc = sext i1 %i.bb to i32
  %spec.select.i = add nsw i32 %.02935.i, %i.bc
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.l, %bb.i
  %.1.i = phi i32 [ %spec.select.i, %bb.l ], [ %.02935.i, %bb.i ]
  %i.bd = add nsw i32 %.03034.i, -1
  br label %bb.m

bb.m:                                             ; preds = %.critedge.i, %bb.k
  %.sink.i = phi i32 [ %i.ba, %bb.k ], [ %i.aq, %.critedge.i ]
  %.131.i = phi i32 [ %.03034.i, %bb.k ], [ %i.bd, %.critedge.i ]
  %.2.i = phi i32 [ %i.ax, %bb.k ], [ %.1.i, %.critedge.i ]
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.next.i8
  store i32 %.sink.i, ptr %i.be, align 4, !tbaa !44
  %i.bf = icmp samesign ugt i64 %indvars.iv.i7, 1
  br i1 %i.bf, label %bb.h, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit, !llvm.loop !9

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread: ; preds = %_Z26gmx_ana_index_check_sortedP15gmx_ana_index_t.exit
  %i.bg = sext i32 %i.b to i64                    ; 3 uses
  %i.bh = tail call noundef ptr @_Z11save_callocPKcS0_imm(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.3, i32 noundef 365, i64 noundef range(i64 -2147483648, 2147483648) %i.bg, i64 noundef 4) ; 23 uses
  %i.bi = load ptr, ptr %i.a, align 8, !tbaa !68
  %i.bj = zext i32 %i.b to i64                    ; 2 uses
  %i.bk = shl nuw nsw i64 %i.bj, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bh, ptr align 4 %i.bi, i64 %i.bk, i1 false)
  %.idx.i = shl nuw nsw i64 %i.bg, 2
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i ; 2 uses
  %i.bm = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 true)
  %i.bn = shl nuw nsw i64 %i.bm, 1
  %i.bo = xor i64 %i.bn, 126
  tail call void @_ZSt16__introsort_loopIPilN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %i.bh, ptr noundef nonnull %i.bl, i64 noundef %i.bo)
  tail call void @_ZSt22__final_insertion_sortIPiN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %i.bh, ptr noundef nonnull %i.bl)
  %umax = tail call i64 @llvm.umax.i64(i64 %i.bj, i64 2)
  %i.bp = add nsw i64 %umax, -1                   ; 2 uses
  %xtraiter = and i64 %i.bp, 3                    ; 3 uses
  %i.bq = icmp ult i32 %i.b, 5
  br i1 %i.bq, label %.peel.next.i.epil.preheader, label %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new

_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new: ; preds = %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread
  %unroll_iter = and i64 %i.bp, -4
  br label %.peel.next.i

.peel.next.i:                                     ; preds = %bb.r, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new
  %indvars.iv.i10 = phi i64 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %indvars.iv.next.i13.3, %bb.r ] ; 5 uses
  %.01415.i = phi i32 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %.1.i12.3, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread.new ], [ %niter.next.3, %bb.r ]
  %i.br = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv.i10 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 -4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !44
  %i.bu = load i32, ptr %i.br, align 4, !tbaa !44 ; 2 uses
  %.not.i11 = icmp eq i32 %i.bt, %i.bu
  br i1 %.not.i11, label %.peel.next.i.1, label %bb.n

bb.n:                                             ; preds = %.peel.next.i
  %i.bv = sext i32 %.01415.i to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bv
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !44
  %i.bx = add nsw i32 %.01415.i, 1
  br label %.peel.next.i.1

.peel.next.i.1:                                   ; preds = %bb.n, %.peel.next.i
  %.1.i12 = phi i32 [ %i.bx, %bb.n ], [ %.01415.i, %.peel.next.i ] ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv.i10 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %i.ca = load i32, ptr %i.by, align 4, !tbaa !44
  %i.cb = load i32, ptr %i.bz, align 4, !tbaa !44 ; 2 uses
  %.not.i11.1 = icmp eq i32 %i.ca, %i.cb
  br i1 %.not.i11.1, label %.peel.next.i.2, label %bb.o

bb.o:                                             ; preds = %.peel.next.i.1
  %i.cc = sext i32 %.1.i12 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cc
  store i32 %i.cb, ptr %i.cd, align 4, !tbaa !44
  %i.ce = add nsw i32 %.1.i12, 1
  br label %.peel.next.i.2

.peel.next.i.2:                                   ; preds = %bb.o, %.peel.next.i.1
  %.1.i12.1 = phi i32 [ %i.ce, %bb.o ], [ %.1.i12, %.peel.next.i.1 ] ; 3 uses
  %i.cf = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv.i10 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 8
  %i.ch = getelementptr i8, ptr %i.cf, i64 4
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !44
  %i.cj = load i32, ptr %i.cg, align 4, !tbaa !44 ; 2 uses
  %.not.i11.2 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not.i11.2, label %.peel.next.i.3, label %bb.p

bb.p:                                             ; preds = %.peel.next.i.2
  %i.ck = sext i32 %.1.i12.1 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ck
  store i32 %i.cj, ptr %i.cl, align 4, !tbaa !44
  %i.cm = add nsw i32 %.1.i12.1, 1
  br label %.peel.next.i.3

.peel.next.i.3:                                   ; preds = %bb.p, %.peel.next.i.2
  %.1.i12.2 = phi i32 [ %i.cm, %bb.p ], [ %.1.i12.1, %.peel.next.i.2 ] ; 3 uses
  %i.cn = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv.i10 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 12
  %i.cp = getelementptr i8, ptr %i.cn, i64 8
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !44
  %i.cr = load i32, ptr %i.co, align 4, !tbaa !44 ; 2 uses
  %.not.i11.3 = icmp eq i32 %i.cq, %i.cr
  br i1 %.not.i11.3, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.peel.next.i.3
  %i.cs = sext i32 %.1.i12.2 to i64
  %i.ct = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cs
  store i32 %i.cr, ptr %i.ct, align 4, !tbaa !44
  %i.cu = add nsw i32 %.1.i12.2, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.peel.next.i.3
  %.1.i12.3 = phi i32 [ %i.cu, %bb.q ], [ %.1.i12.2, %.peel.next.i.3 ] ; 3 uses
  %indvars.iv.next.i13.3 = add nuw nsw i64 %indvars.iv.i10, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa, label %.peel.next.i, !llvm.loop !6

_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa: ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit, label %.peel.next.i.epil.preheader

.peel.next.i.epil.preheader:                      ; preds = %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread
  %indvars.iv.i10.epil.init = phi i64 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread ], [ %indvars.iv.next.i13.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ]
  %.01415.i.epil.init = phi i32 [ 1, %_Z18gmx_ana_index_copyP15gmx_ana_index_tS0_b.exit.thread ], [ %.1.i12.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ]
  %lcmp.mod99 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod99)
  br label %.peel.next.i.epil

.peel.next.i.epil:                                ; preds = %bb.t, %.peel.next.i.epil.preheader
  %indvars.iv.i10.epil = phi i64 [ %indvars.iv.next.i13.epil, %bb.t ], [ %indvars.iv.i10.epil.init, %.peel.next.i.epil.preheader ] ; 2 uses
  %.01415.i.epil = phi i32 [ %.1.i12.epil, %bb.t ], [ %.01415.i.epil.init, %.peel.next.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %bb.t ], [ 0, %.peel.next.i.epil.preheader ]
  %i.cv = getelementptr [4 x i8], ptr %i.bh, i64 %indvars.iv.i10.epil ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !44
  %i.cy = load i32, ptr %i.cv, align 4, !tbaa !44 ; 2 uses
  %.not.i11.epil = icmp eq i32 %i.cx, %i.cy
  br i1 %.not.i11.epil, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.peel.next.i.epil
  %i.cz = sext i32 %.01415.i.epil to i64
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cz
  store i32 %i.cy, ptr %i.da, align 4, !tbaa !44
  %i.db = add nsw i32 %.01415.i.epil, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.peel.next.i.epil
  %.1.i12.epil = phi i32 [ %i.db, %bb.s ], [ %.01415.i.epil, %.peel.next.i.epil ] ; 2 uses
  %indvars.iv.next.i13.epil = add nuw nsw i64 %indvars.iv.i10.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit, label %.peel.next.i.epil, !llvm.loop !282

_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit: ; preds = %bb.t, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa
  %.1.i12.lcssa = phi i32 [ %.1.i12.3, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit.unr-lcssa ], [ %.1.i12.epil, %bb.t ] ; 5 uses
  %i.dc = icmp sgt i32 %.1.i12.lcssa, 0
  %.pre.i14 = load i32, ptr %1, align 8, !tbaa !59 ; 9 uses
  br i1 %i.dc, label %.preheader.lr.ph.i.i31, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15

.preheader.lr.ph.i.i31:                           ; preds = %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.de = sext i32 %.pre.i14 to i64
  %wide.trip.count.i.i32 = zext nneg i32 %.1.i12.lcssa to i64
  br label %.preheader.i.i33

.preheader.i.i33:                                 ; preds = %bb.x, %.preheader.lr.ph.i.i31
  %indvars.iv30.i.i34 = phi i64 [ 0, %.preheader.lr.ph.i.i31 ], [ %indvars.iv.next31.i.i44, %bb.x ] ; 3 uses
  %.027.i.i35 = phi i32 [ 0, %.preheader.lr.ph.i.i31 ], [ %.1.i.i43, %bb.x ] ; 2 uses
  %.01726.i.i36 = phi i32 [ 0, %.preheader.lr.ph.i.i31 ], [ %.118.lcssa36.i.i42, %bb.x ] ; 3 uses
  %i.df = icmp slt i32 %.01726.i.i36, %.pre.i14
  br i1 %i.df, label %.lr.ph.i.i46, label %.critedge.i.i37

.lr.ph.i.i46:                                     ; preds = %.preheader.i.i33
  %i.dg = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv30.i.i34
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !44
  %i.dj = sext i32 %.01726.i.i36 to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.v, %.lr.ph.i.i46
  %indvars.iv.i.i47 = phi i64 [ %i.dj, %.lr.ph.i.i46 ], [ %indvars.iv.next.i.i49, %bb.v ] ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.dg, i64 %indvars.iv.i.i47
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !44
  %i.dm = icmp slt i32 %i.dl, %i.di
  br i1 %i.dm, label %bb.v, label %.critedge.loopexit.i.i48

bb.v:                                             ; preds = %bb.u
  %indvars.iv.next.i.i49 = add nsw i64 %indvars.iv.i.i47, 1 ; 2 uses
  %exitcond.not.i.i50 = icmp eq i64 %indvars.iv.next.i.i49, %i.de
  br i1 %exitcond.not.i.i50, label %.critedge.thread.i.i40, label %bb.u, !llvm.loop !7

.critedge.loopexit.i.i48:                         ; preds = %bb.u
  %i.dn = trunc nsw i64 %indvars.iv.i.i47 to i32
  br label %.critedge.i.i37

.critedge.i.i37:                                  ; preds = %.critedge.loopexit.i.i48, %.preheader.i.i33
  %.118.lcssa.i.i38 = phi i32 [ %.01726.i.i36, %.preheader.i.i33 ], [ %i.dn, %.critedge.loopexit.i.i48 ] ; 4 uses
  %i.do = icmp eq i32 %.118.lcssa.i.i38, %.pre.i14
  br i1 %i.do, label %.critedge.thread.i.i40, label %bb.w

bb.w:                                             ; preds = %.critedge.i.i37
  %i.dp = load ptr, ptr %i.dd, align 8, !tbaa !68
  %i.dq = sext i32 %.118.lcssa.i.i38 to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.dp, i64 %i.dq
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !44
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv30.i.i34
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !44
  %.not.i.i39 = icmp eq i32 %i.ds, %i.du
  br i1 %.not.i.i39, label %bb.x, label %.critedge.thread.i.i40

.critedge.thread.i.i40:                           ; preds = %bb.v, %bb.w, %.critedge.i.i37
  %.118.lcssa37.i.i41 = phi i32 [ %.pre.i14, %.critedge.i.i37 ], [ %.118.lcssa.i.i38, %bb.w ], [ %.pre.i14, %bb.v ]
  %i.dv = add nsw i32 %.027.i.i35, 1
  br label %bb.x

bb.x:                                             ; preds = %.critedge.thread.i.i40, %bb.w
  %.118.lcssa36.i.i42 = phi i32 [ %.118.lcssa37.i.i41, %.critedge.thread.i.i40 ], [ %.118.lcssa.i.i38, %bb.w ]
  %.1.i.i43 = phi i32 [ %i.dv, %.critedge.thread.i.i40 ], [ %.027.i.i35, %bb.w ] ; 2 uses
  %indvars.iv.next31.i.i44 = add nuw nsw i64 %indvars.iv30.i.i34, 1 ; 2 uses
  %exitcond33.not.i.i45 = icmp eq i64 %indvars.iv.next31.i.i44, %wide.trip.count.i.i32
  br i1 %exitcond33.not.i.i45, label %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15, label %.preheader.i.i33, !llvm.loop !8

_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15: ; preds = %bb.x, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit
  %.0.lcssa.i.i16 = phi i32 [ 0, %_Z31gmx_ana_index_remove_duplicatesP15gmx_ana_index_t.exit ], [ %.1.i.i43, %bb.x ]
  %i.dw = add nsw i32 %.0.lcssa.i.i16, %.pre.i14  ; 4 uses
  store i32 %i.dw, ptr %0, align 8, !tbaa !59
  %i.dx = icmp sgt i32 %i.dw, 0
  br i1 %i.dx, label %.lr.ph.i17, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51

.lr.ph.i17:                                       ; preds = %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15
  %i.dy = add nsw i32 %.1.i12.lcssa, -1           ; 5 uses
  %i.dz = add nsw i32 %.pre.i14, -1               ; 3 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ec = zext nneg i32 %i.dw to i64              ; 3 uses
  %i.ed = load ptr, ptr %i.eb, align 8, !tbaa !68 ; 3 uses
  %xtraiter100 = and i64 %i.ec, 1
  %lcmp.mod101.not = icmp eq i64 %xtraiter100, 0
  br i1 %lcmp.mod101.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i17
  %indvars.iv.next.i21.prol = add nsw i64 %i.ec, -1 ; 2 uses
  %3 = icmp slt i32 %.pre.i14, 1
  br i1 %3, label %.._crit_edge42.i29_crit_edge.prol, label %4

4:                                                ; preds = %.prol.preheader
  %5 = icmp sgt i32 %.1.i12.lcssa, 0
  %.pre39.i22.prol = load ptr, ptr %i.ea, align 8, !tbaa !68
  %6 = zext nneg i32 %i.dz to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.pre39.i22.prol, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !44       ; 3 uses
  br i1 %5, label %9, label %.critedge.i23.prol

9:                                                ; preds = %4
  %10 = zext nneg i32 %i.dy to i64
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !44     ; 3 uses
  %13 = icmp slt i32 %8, %12
  br i1 %13, label %._crit_edge42.i29.prol, label %14

14:                                               ; preds = %9
  %15 = icmp eq i32 %8, %12
  %16 = sext i1 %15 to i32
  %spec.select.i28.prol = add nsw i32 %i.dy, %16
  br label %.critedge.i23.prol

.critedge.i23.prol:                               ; preds = %14, %4
  %.1.i24.prol = phi i32 [ %spec.select.i28.prol, %14 ], [ %i.dy, %4 ]
  %17 = add nsw i32 %.pre.i14, -2
  br label %.prol.loopexit.unr-lcssa

.._crit_edge42.i29_crit_edge.prol:                ; preds = %.prol.preheader
  %.phi.trans.insert.prol = sext i32 %i.dy to i64
  %.phi.trans.insert77.prol = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.phi.trans.insert.prol
  %.pre.prol = load i32, ptr %.phi.trans.insert77.prol, align 4, !tbaa !44
  br label %._crit_edge42.i29.prol

._crit_edge42.i29.prol:                           ; preds = %.._crit_edge42.i29_crit_edge.prol, %9
  %18 = phi i32 [ %.pre.prol, %.._crit_edge42.i29_crit_edge.prol ], [ %12, %9 ]
  %19 = add nsw i32 %.1.i12.lcssa, -2
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge42.i29.prol, %.critedge.i23.prol
  %.sink.i25.prol = phi i32 [ %18, %._crit_edge42.i29.prol ], [ %8, %.critedge.i23.prol ]
  %.131.i26.prol = phi i32 [ %i.dz, %._crit_edge42.i29.prol ], [ %17, %.critedge.i23.prol ]
  %.2.i27.prol = phi i32 [ %19, %._crit_edge42.i29.prol ], [ %.1.i24.prol, %.critedge.i23.prol ]
  %20 = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i21.prol
  store i32 %.sink.i25.prol, ptr %20, align 4, !tbaa !44
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i17
  %indvars.iv.i18.unr = phi i64 [ %i.ec, %.lr.ph.i17 ], [ %indvars.iv.next.i21.prol, %.prol.loopexit.unr-lcssa ]
  %.02935.i19.unr = phi i32 [ %i.dy, %.lr.ph.i17 ], [ %.2.i27.prol, %.prol.loopexit.unr-lcssa ]
  %.03034.i20.unr = phi i32 [ %i.dz, %.lr.ph.i17 ], [ %.131.i26.prol, %.prol.loopexit.unr-lcssa ]
  %21 = icmp eq i32 %i.dw, 1
  br i1 %21, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51, label %bb.y

bb.y:                                             ; preds = %.prol.loopexit, %bb.ac
  %indvars.iv.i18 = phi i64 [ %indvars.iv.next.i21.1, %bb.ac ], [ %indvars.iv.i18.unr, %.prol.loopexit ] ; 3 uses
  %.02935.i19 = phi i32 [ %.2.i27.a, %bb.ac ], [ %.02935.i19.unr, %.prol.loopexit ] ; 6 uses
  %.03034.i20 = phi i32 [ %.131.i26.a, %bb.ac ], [ %.03034.i20.unr, %.prol.loopexit ] ; 4 uses
  %i.ee = icmp slt i32 %.03034.i20, 0
  br i1 %i.ee, label %.._crit_edge42.i29_crit_edge, label %bb.z

.._crit_edge42.i29_crit_edge:                     ; preds = %bb.y
  %.phi.trans.insert = sext i32 %.02935.i19 to i64
  %.phi.trans.insert77 = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.phi.trans.insert
  %.pre = load i32, ptr %.phi.trans.insert77, align 4, !tbaa !44
  br label %._crit_edge42.i29

bb.z:                                             ; preds = %bb.y
  %i.ef = icmp sgt i32 %.02935.i19, -1
  %.pre39.i22 = load ptr, ptr %i.ea, align 8, !tbaa !68
  %i.eg = zext nneg i32 %.03034.i20 to i64
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %.pre39.i22, i64 %i.eg
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !44 ; 3 uses
  br i1 %i.ef, label %bb.aa, label %._crit_edge42.i29.a

bb.aa:                                            ; preds = %bb.z
  %i.ej = zext nneg i32 %.02935.i19 to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !44 ; 3 uses
  %i.em = icmp slt i32 %i.ei, %i.el
  br i1 %i.em, label %._crit_edge42.i29, label %24

._crit_edge42.i29:                                ; preds = %bb.aa, %.._crit_edge42.i29_crit_edge
  %22 = phi i32 [ %.pre, %.._crit_edge42.i29_crit_edge ], [ %i.el, %bb.aa ]
  %23 = add nsw i32 %.02935.i19, -1
  br label %27

24:                                               ; preds = %bb.aa
  %25 = icmp eq i32 %i.ei, %i.el
  %26 = sext i1 %25 to i32
  %spec.select.i28 = add nsw i32 %.02935.i19, %26
  br label %._crit_edge42.i29.a

._crit_edge42.i29.a:                              ; preds = %24, %bb.z
  %i.en = phi i32 [ %spec.select.i28, %24 ], [ %.02935.i19, %bb.z ]
  %i.eo = add nsw i32 %.03034.i20, -1
  br label %27

27:                                               ; preds = %._crit_edge42.i29.a, %._crit_edge42.i29
  %.sink.i25 = phi i32 [ %22, %._crit_edge42.i29 ], [ %i.ei, %._crit_edge42.i29.a ]
  %.131.i26 = phi i32 [ %.03034.i20, %._crit_edge42.i29 ], [ %i.eo, %._crit_edge42.i29.a ] ; 4 uses
  %.2.i27 = phi i32 [ %23, %._crit_edge42.i29 ], [ %i.en, %._crit_edge42.i29.a ] ; 6 uses
  %28 = getelementptr [4 x i8], ptr %i.ed, i64 %indvars.iv.i18
  %29 = getelementptr i8, ptr %28, i64 -4
  store i32 %.sink.i25, ptr %29, align 4, !tbaa !44
  %indvars.iv.next.i21.1 = add nsw i64 %indvars.iv.i18, -2 ; 2 uses
  %30 = icmp slt i32 %.131.i26, 0
  br i1 %30, label %.._crit_edge42.i29_crit_edge.1, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %.2.i27, -1
  %.pre39.i22.1 = load ptr, ptr %i.ea, align 8, !tbaa !68
  %33 = zext nneg i32 %.131.i26 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %.pre39.i22.1, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !44     ; 3 uses
  br i1 %32, label %36, label %.critedge.i23.1

36:                                               ; preds = %31
  %37 = zext nneg i32 %.2.i27 to i64
  %38 = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !44     ; 3 uses
  %40 = icmp slt i32 %35, %39
  br i1 %40, label %.critedge.i23, label %bb.ab

bb.ab:                                            ; preds = %36
  %i.ep = icmp eq i32 %35, %39
  %i.eq = sext i1 %i.ep to i32
  %spec.select.i28.a = add nsw i32 %.2.i27, %i.eq
  br label %.critedge.i23.1

.critedge.i23.1:                                  ; preds = %bb.ab, %31
  %.1.i24.1 = phi i32 [ %spec.select.i28.a, %bb.ab ], [ %.2.i27, %31 ]
  %41 = add nsw i32 %.131.i26, -1
  br label %bb.ac

.._crit_edge42.i29_crit_edge.1:                   ; preds = %27
  %.phi.trans.insert.1 = sext i32 %.2.i27 to i64
  %.phi.trans.insert77.1 = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %.phi.trans.insert.1
  %.pre.1 = load i32, ptr %.phi.trans.insert77.1, align 4, !tbaa !44
  br label %.critedge.i23

.critedge.i23:                                    ; preds = %.._crit_edge42.i29_crit_edge.1, %36
  %.1.i24 = phi i32 [ %.pre.1, %.._crit_edge42.i29_crit_edge.1 ], [ %39, %36 ]
  %i.er = add nsw i32 %.2.i27, -1
  br label %bb.ac

bb.ac:                                            ; preds = %.critedge.i23, %.critedge.i23.1
  %.sink.i25.a = phi i32 [ %.1.i24, %.critedge.i23 ], [ %35, %.critedge.i23.1 ]
  %.131.i26.a = phi i32 [ %.131.i26, %.critedge.i23 ], [ %41, %.critedge.i23.1 ]
  %.2.i27.a = phi i32 [ %i.er, %.critedge.i23 ], [ %.1.i24.1, %.critedge.i23.1 ]
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.next.i21.1
  store i32 %.sink.i25.a, ptr %i.es, align 4, !tbaa !44
  %42 = icmp sgt i64 %indvars.iv.i18, 2
  br i1 %42, label %bb.y, label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51, !llvm.loop !9

_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51: ; preds = %.prol.loopexit, %bb.ac, %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i15
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.3, i32 noundef 349, ptr noundef %i.bh)
  br label %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit

_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit: ; preds = %bb.m, %_Z19gmx_ana_index_unionP15gmx_ana_index_tS0_S0_.exit51, %_Z29gmx_ana_index_difference_sizeP15gmx_ana_index_tS0_.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_Z19gmx_ana_index_mergeP15gmx_ana_index_tS0_S0_(ptr nofree noundef captures(none) initializes((0, 4)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #19 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !59     ; 4 uses
  %i.b = load i32, ptr %2, align 8, !tbaa !59     ; 4 uses
  %i.c = add nsw i32 %i.b, %i.a                   ; 4 uses
  store i32 %i.c, ptr %0, align 8, !tbaa !59
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = add nsw i32 %i.b, -1                     ; 4 uses
  %i.f = add nsw i32 %i.a, -1                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = zext nneg i32 %i.c to i64                ; 3 uses
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.j, -1    ; 2 uses
  %3 = icmp slt i32 %i.a, 1
  br i1 %3, label %._crit_edge32.prol, label %4

4:                                                ; preds = %.prol.preheader
  %5 = icmp sgt i32 %i.b, 0
  %.pre.prol = load ptr, ptr %i.g, align 8, !tbaa !68
  %6 = zext nneg i32 %i.f to i64
  %7 = getelementptr inbounds nuw [4 x i8], ptr %.pre.prol, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !44       ; 2 uses
  br i1 %5, label %9, label %._crit_edge29.prol

9:                                                ; preds = %4
  %10 = load ptr, ptr %i.h, align 8, !tbaa !68    ; 2 uses
  %11 = zext nneg i32 %i.e to i64
  %12 = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !44
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %16, label %._crit_edge29.prol

._crit_edge29.prol:                               ; preds = %9, %4
  %15 = add nsw i32 %i.a, -2
  br label %.prol.loopexit.unr-lcssa

._crit_edge32.prol:                               ; preds = %.prol.preheader
  %.pre33.prol = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %._crit_edge32.prol, %9
  %17 = phi ptr [ %.pre33.prol, %._crit_edge32.prol ], [ %10, %9 ]
  %18 = add nsw i32 %i.b, -2
  %19 = sext i32 %i.e to i64
  %20 = getelementptr inbounds [4 x i8], ptr %17, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !44
  br label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %16, %._crit_edge29.prol
  %.sink.prol = phi i32 [ %21, %16 ], [ %8, %._crit_edge29.prol ]
  %.123.prol = phi i32 [ %i.f, %16 ], [ %15, %._crit_edge29.prol ]
  %.1.prol = phi i32 [ %18, %16 ], [ %i.e, %._crit_edge29.prol ]
  %22 = load ptr, ptr %i.i, align 8, !tbaa !68
  %23 = getelementptr inbounds nuw [4 x i8], ptr %22, i64 %indvars.iv.next.prol
  store i32 %.sink.prol, ptr %23, align 4, !tbaa !44
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.j, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %.02126.unr = phi i32 [ %i.e, %.lr.ph ], [ %.1.prol, %.prol.loopexit.unr-lcssa ]
  %.02225.unr = phi i32 [ %i.f, %.lr.ph ], [ %.123.prol, %.prol.loopexit.unr-lcssa ]
  %24 = icmp eq i32 %i.c, 1
  br i1 %24, label %._crit_edge, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.prol.loopexit
  %25 = load ptr, ptr %i.i, align 8, !tbaa !68    ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.unr, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.f ] ; 3 uses
  %.02126 = phi i32 [ %.02126.unr, %.lr.ph.new ], [ %.1.a, %bb.f ] ; 5 uses
  %.02225 = phi i32 [ %.02225.unr, %.lr.ph.new ], [ %.123.a, %bb.f ] ; 4 uses
  %i.k = icmp slt i32 %.02225, 0
  br i1 %i.k, label %._crit_edge32, label %bb.c

._crit_edge32:                                    ; preds = %bb.b
  %.pre33 = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.l = icmp sgt i32 %.02126, -1
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.m = zext nneg i32 %.02225 to i64
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !44   ; 2 uses
  br i1 %i.l, label %bb.d, label %._crit_edge29

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.h, align 8, !tbaa !68   ; 2 uses
  %i.q = zext nneg i32 %.02126 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44
  %i.t = icmp slt i32 %i.o, %i.s
  br i1 %i.t, label %bb.e, label %._crit_edge29

bb.e:                                             ; preds = %._crit_edge32, %bb.d
  %i.u = phi ptr [ %.pre33, %._crit_edge32 ], [ %i.p, %bb.d ]
  %i.v = add nsw i32 %.02126, -1
  %i.w = sext i32 %.02126 to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !44
  br label %27

._crit_edge29:                                    ; preds = %bb.c, %bb.d
  %26 = add nsw i32 %.02225, -1
  br label %27

27:                                               ; preds = %bb.e, %._crit_edge29
  %.sink = phi i32 [ %i.y, %bb.e ], [ %i.o, %._crit_edge29 ]
  %.123 = phi i32 [ %.02225, %bb.e ], [ %26, %._crit_edge29 ] ; 4 uses
  %.1 = phi i32 [ %i.v, %bb.e ], [ %.02126, %._crit_edge29 ] ; 5 uses
  %28 = getelementptr [4 x i8], ptr %25, i64 %indvars.iv
  %29 = getelementptr i8, ptr %28, i64 -4
  store i32 %.sink, ptr %29, align 4, !tbaa !44
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 2 uses
  %30 = icmp slt i32 %.123, 0
  br i1 %30, label %._crit_edge32.1, label %31

31:                                               ; preds = %27
  %32 = icmp sgt i32 %.1, -1
  %.pre.1 = load ptr, ptr %i.g, align 8, !tbaa !68
  %33 = zext nneg i32 %.123 to i64
  %34 = getelementptr inbounds nuw [4 x i8], ptr %.pre.1, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !44     ; 2 uses
  br i1 %32, label %36, label %._crit_edge29.1

36:                                               ; preds = %31
  %37 = load ptr, ptr %i.h, align 8, !tbaa !68    ; 2 uses
  %38 = zext nneg i32 %.1 to i64
  %39 = getelementptr inbounds nuw [4 x i8], ptr %37, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !44
  %41 = icmp slt i32 %35, %40
  br i1 %41, label %._crit_edge29.a, label %._crit_edge29.1

._crit_edge29.1:                                  ; preds = %36, %31
  %42 = add nsw i32 %.123, -1
  br label %bb.f

._crit_edge32.1:                                  ; preds = %27
  %.pre33.1 = load ptr, ptr %i.h, align 8, !tbaa !68
  br label %._crit_edge29.a

._crit_edge29.a:                                  ; preds = %._crit_edge32.1, %36
  %43 = phi ptr [ %.pre33.1, %._crit_edge32.1 ], [ %37, %36 ]
  %i.z = add nsw i32 %.1, -1
  %44 = sext i32 %.1 to i64
  %45 = getelementptr inbounds [4 x i8], ptr %43, i64 %44
  %46 = load i32, ptr %45, align 4, !tbaa !44
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge29.a, %._crit_edge29.1
  %.sink.a = phi i32 [ %46, %._crit_edge29.a ], [ %35, %._crit_edge29.1 ]
  %.123.a = phi i32 [ %.123, %._crit_edge29.a ], [ %42, %._crit_edge29.1 ]
  %.1.a = phi i32 [ %i.z, %._crit_edge29.a ], [ %.1, %._crit_edge29.1 ]
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %25, i64 %indvars.iv.next.1
  store i32 %.sink.a, ptr %i.aa, align 4, !tbaa !44
  %47 = icmp sgt i64 %indvars.iv, 2
  br i1 %47, label %bb.b, label %._crit_edge, !llvm.loop !283

._crit_edge:                                      ; preds = %.prol.loopexit, %bb.f, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_Z24gmx_ana_index_make_blockP8t_blockaPK10gmx_mtop_tP15gmx_ana_index_t9e_index_tb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !73
  tail call void @_Z9save_freePKcS0_iPv(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 779, ptr noundef %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !42
  %i.g = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, i32 noundef 780, ptr noundef %i.f, i64 noundef 2, i64 noundef 4) ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !42
  store i32 1, ptr %0, align 8, !tbaa !74
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 2, ptr %i.h, align 8, !tbaa !289
  store i32 0, ptr %i.g, align 4, !tbaa !44
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 0, ptr %i.i, align 4, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !290
  store ptr null, ptr %i.c, align 8, !tbaa !73
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.k, align 4, !tbaa !291
  br label %bb.ak

bb.c:                                             ; preds = %bb.a
  %.not = icmp ne ptr %1, null
  %i.l = add i32 %3, -4
  %or.cond = icmp ult i32 %i.l, -2                ; 2 uses
  %or.cond133 = or i1 %.not, %or.cond
  br i1 %or.cond133, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ24gmx_ana_index_make_blockP8t_blockaPK10gmx_mtop_tP15gmx_ana_index_t9e_index_tbENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 794) #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %.not130 = icmp eq i32 %3, 3
  br i1 %.not130, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 704
  %i.n = load i8, ptr %i.m, align 8, !tbaa !292, !range !133, !noundef !134
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN3gmx8internal13assertHandlerEPKcS2_S2_S2_i(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22, ptr noundef nonnull @"__PRETTY_FUNCTION__._ZZ24gmx_ana_index_make_blockP8t_blockaPK10gmx_mtop_tP15gmx_ana_index_t9e_index_tbENK3$_0clEv", ptr noundef nonnull @.str.3, i32 noundef 796) #26
  unreachable

bb.h:                                             ; preds = %bb.e, %bb.f
  %not.or.cond = xor i1 %or.cond, true
  %spec.select = and i1 %4, %not.or.cond          ; 3 uses
  br i1 %spec.select, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.p, align 8, !tbaa !290
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !291
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !135  ; 2 uses
  %i.u = icmp slt i32 %i.r, %i.t
  br i1 %i.u, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = sext i32 %i.t to i64
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.y = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 813, ptr noundef %i.x, i64 noundef range(i64 -2147483648, 2147483648) %i.w, i64 noundef 4)
  store ptr %i.y, ptr %i.v, align 8, !tbaa !42
  %i.z = load i32, ptr %i.s, align 8, !tbaa !135
  store i32 %i.z, ptr %i.q, align 4, !tbaa !291
  br label %bb.o

bb.k:                                             ; preds = %bb.h
  %i.aa = load i32, ptr %2, align 8, !tbaa !59    ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !290
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !291
  %i.ae = icmp slt i32 %i.ad, %i.aa
  br i1 %i.ae, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ag = sext i32 %i.aa to i64
  %i.ah = load ptr, ptr %i.af, align 8, !tbaa !42
  %i.ai = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.3, i32 noundef 822, ptr noundef %i.ah, i64 noundef range(i64 -2147483648, 2147483648) %i.ag, i64 noundef 4)
  store ptr %i.ai, ptr %i.af, align 8, !tbaa !42
  %i.aj = load i32, ptr %2, align 8, !tbaa !59    ; 2 uses
  store i32 %i.aj, ptr %i.ac, align 4, !tbaa !291
  %.pr = load i32, ptr %i.ab, align 8, !tbaa !290
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ak = phi i32 [ %i.aj, %bb.l ], [ %i.aa, %bb.k ]
  %i.al = phi i32 [ %.pr, %bb.l ], [ %i.aa, %bb.k ]
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !73
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !68
  %i.ar = sext i32 %i.ak to i64
  %i.as = shl nsw i64 %i.ar, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.ao, ptr align 4 %i.aq, i64 %i.as, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.i, %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.au = load i32, ptr %i.at, align 8, !tbaa !289
  %i.av = load i32, ptr %2, align 8, !tbaa !59    ; 3 uses
  %.not131 = icmp sgt i32 %i.au, %i.av
  br i1 %.not131, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %i.av, 1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ay = sext i32 %i.aw to i64
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.ba = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, i32 noundef 836, ptr noundef %i.az, i64 noundef range(i64 -2147483648, 2147483648) %i.ay, i64 noundef 4)
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !42
  %i.bb = load i32, ptr %2, align 8, !tbaa !59    ; 2 uses
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr %i.at, align 8, !tbaa !289
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bd = phi i32 [ %i.bb, %bb.p ], [ %i.av, %bb.o ] ; 3 uses
  store i32 0, ptr %0, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i32 -1, ptr %i.a, align 4, !tbaa !44
  %i.be = icmp sgt i32 %i.bd, 0
  br i1 %i.be, label %.lr.ph161, label %._crit_edge

.lr.ph161:                                        ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !68 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 736 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 112
  br i1 %spec.select, label %.lr.ph161.split.us, label %.lr.ph161.split

.lr.ph161.split.us:                               ; preds = %.lr.ph161
  %i.bo = icmp eq i32 %3, 2
  br i1 %i.bo, label %.lr.ph161.split.us.split.us, label %.lr.ph161.split.us.split.us163

.lr.ph161.split.us.split.us:                      ; preds = %.lr.ph161.split.us, %.loopexit.us.us
  %indvars.iv189 = phi i64 [ %indvars.iv.next190, %.loopexit.us.us ], [ 0, %.lr.ph161.split.us ] ; 2 uses
  %.0152159.us.us = phi i32 [ %.1.us.us, %.loopexit.us.us ], [ 0, %.lr.ph161.split.us ] ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv189
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !44 ; 5 uses
  %i.br = call fastcc noundef zeroext i1 @_ZL16next_group_indexiPK10gmx_mtop_t9e_index_tPi(i32 noundef %i.bq, ptr noundef %1, i32 noundef 2, ptr noundef %i.a)
  br i1 %i.br, label %bb.r, label %.loopexit.us.us

bb.r:                                             ; preds = %.lr.ph161.split.us.split.us
  %i.bs = load i32, ptr %i.bi, align 8, !tbaa !290
  %i.bt = load ptr, ptr %i.bh, align 8, !tbaa !136
  %i.bu = load i32, ptr %0, align 8, !tbaa !74    ; 2 uses
  %i.bv = add nsw i32 %i.bu, 1
  store i32 %i.bv, ptr %0, align 8, !tbaa !74
  %i.bw = sext i32 %i.bu to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bw
  store i32 %i.bs, ptr %i.bx, align 4, !tbaa !44
  %i.by = load ptr, ptr %i.bk, align 8, !tbaa !137
  %i.bz = load ptr, ptr %i.bj, align 8, !tbaa !138 ; 2 uses
  %i.ca = ptrtoint ptr %i.by to i64
  %i.cb = ptrtoint ptr %i.bz to i64
  %i.cc = sub i64 %i.ca, %i.cb
  %i.cd = sdiv exact i64 %i.cc, 56
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = load ptr, ptr %i.bl, align 8, !tbaa !139
  br label %bb.s

bb.s:                                             ; preds = %bb.u, %bb.r
  %.2.us.us = phi i32 [ %.0152159.us.us, %bb.r ], [ %i.cp, %bb.u ] ; 5 uses
  %.026.i.us.us = phi i32 [ -1, %bb.r ], [ %.127.i.us.us, %bb.u ]
  %.0.i.us.us = phi i32 [ %i.ce, %bb.r ], [ %.1.i.us.us, %bb.u ]
  %i.cg = sext i32 %.2.us.us to i64               ; 2 uses
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.cf, i64 %i.cg ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !141
  %.fr207 = freeze i32 %i.cj                      ; 5 uses
  %i.ck = icmp slt i32 %i.bq, %.fr207
  br i1 %i.ck, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
