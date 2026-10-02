Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/giaCut?download=true
inline.NumInlined: 647
inline.NumDeleted: 136
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 38
begin_hunk_0_@Gia_ManMatchCones:bb.a
  call void @Gia_ManMatchProfileFunctions(ptr noundef %i.af, ptr noundef %i.t, ptr noundef %i.bi, ptr noundef %i.ar, i32 noundef %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !102 ; 2 uses
  %.not.i53 = icmp eq ptr %i.bk, null
  br i1 %.not.i53, label %Vec_WrdFree.exit54, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.bk) #30
  br label %Vec_WrdFree.exit54

Vec_WrdFree.exit54:                               ; preds = %bb.g, %bb.h
  call void @free(ptr noundef nonnull %i.ar) #30
  call void @Gia_ManStop(ptr noundef nonnull %i.aq) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30
  %exitcond.not = icmp eq i32 %i.as, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.g, !llvm.loop !282

._crit_edge:                                      ; preds = %Vec_WrdFree.exit54, %Vec_WrdFree.exit52
  %i.bl = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !102 ; 2 uses
  %.not.i55 = icmp eq ptr %i.bm, null
  br i1 %.not.i55, label %Vec_WrdFree.exit56, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.bm) #30
  br label %Vec_WrdFree.exit56

Vec_WrdFree.exit56:                               ; preds = %._crit_edge, %bb.i
  call void @free(ptr noundef nonnull %i.af) #30
  %i.bn = load ptr, ptr %i.a, align 8, !tbaa !93  ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !57 ; 2 uses
  %.not.i57 = icmp eq ptr %i.bp, null
  br i1 %.not.i57, label %Vec_IntFree.exit58, label %bb.j

bb.j:                                             ; preds = %Vec_WrdFree.exit56
  call void @free(ptr noundef nonnull %i.bp) #30
  br label %Vec_IntFree.exit58

Vec_IntFree.exit58:                               ; preds = %Vec_WrdFree.exit56, %bb.j
  call void @free(ptr noundef nonnull %i.bn) #30
  %i.bq = icmp eq ptr %i.t, null
  br i1 %i.bq, label %Vec_MemHashFree.exit, label %bb.k

bb.k:                                             ; preds = %Vec_IntFree.exit58
  %i.br = getelementptr inbounds nuw i8, ptr %i.t, i64 32 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !93 ; 3 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %Vec_IntFreeP.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !57 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %bb.m, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.l
  call void @free(ptr noundef nonnull %i.bv) #30
  %i.bw = load ptr, ptr %i.br, align 8, !tbaa !93 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr null, ptr %i.bx, align 8, !tbaa !57
  br label %bb.m

bb.m:                                             ; preds = %.thread.i.i, %bb.l
  %i.by = phi ptr [ %i.bw, %.thread.i.i ], [ %i.bs, %bb.l ]
  call void @free(ptr noundef nonnull %i.by) #30
  store ptr null, ptr %i.br, align 8, !tbaa !93
  br label %Vec_IntFreeP.exit.i

Vec_IntFreeP.exit.i:                              ; preds = %bb.m, %bb.k
  %i.bz = getelementptr inbounds nuw i8, ptr %i.t, i64 40 ; 3 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 3 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %Vec_MemHashFree.exit, label %bb.n

bb.n:                                             ; preds = %Vec_IntFreeP.exit.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !57 ; 2 uses
  %.not.i3.i = icmp eq ptr %i.cd, null
  br i1 %.not.i3.i, label %bb.o, label %.thread.i4.i

.thread.i4.i:                                     ; preds = %bb.n
  call void @free(ptr noundef nonnull %i.cd) #30
  %i.ce = load ptr, ptr %i.bz, align 8, !tbaa !93 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr null, ptr %i.cf, align 8, !tbaa !57
  br label %bb.o

bb.o:                                             ; preds = %.thread.i4.i, %bb.n
  %i.cg = phi ptr [ %i.ce, %.thread.i4.i ], [ %i.ca, %bb.n ]
  call void @free(ptr noundef nonnull %i.cg) #30
  store ptr null, ptr %i.bz, align 8, !tbaa !93
  br label %Vec_MemHashFree.exit

Vec_MemHashFree.exit:                             ; preds = %Vec_IntFree.exit58, %Vec_IntFreeP.exit.i, %bb.o
  %i.ch = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !90 ; 2 uses
  %.not19.i = icmp slt i32 %i.ci, 0
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 2 uses
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 3 uses
  br i1 %.not19.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %Vec_MemHashFree.exit, %bb.q
  %i.cj = phi i32 [ %i.cp, %bb.q ], [ %i.ci, %Vec_MemHashFree.exit ]
  %i.ck = phi ptr [ %i.cq, %bb.q ], [ %.pre23.i, %Vec_MemHashFree.exit ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.q ], [ 0, %Vec_MemHashFree.exit ] ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %indvars.iv.i
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74 ; 2 uses
  %.not18.i = icmp eq ptr %i.cm, null
  br i1 %.not18.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i
  call void @free(ptr noundef nonnull %i.cm) #30
  %i.cn = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !71 ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.cn, i64 %indvars.iv.i
  store ptr null, ptr %i.co, align 8, !tbaa !74
  %.pre22.i = load i32, ptr %i.ch, align 4, !tbaa !90
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i
  %i.cp = phi i32 [ %.pre22.i, %bb.p ], [ %i.cj, %.lr.ph.i ] ; 2 uses
  %i.cq = phi ptr [ %i.cn, %bb.p ], [ %i.ck, %.lr.ph.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %i.cr = sext i32 %i.cp to i64
  %.not.not.i = icmp slt i64 %indvars.iv.i, %i.cr
  br i1 %.not.not.i, label %.lr.ph.i, label %._crit_edge.thread.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %Vec_MemHashFree.exit
  %.not16.i = icmp eq ptr %.pre23.i, null
  br i1 %.not16.i, label %Vec_MemFree.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.q, %._crit_edge.i
  %i.cs = phi ptr [ %.pre23.i, %._crit_edge.i ], [ %i.cq, %bb.q ]
  call void @free(ptr noundef nonnull %i.cs) #30
  br label %Vec_MemFree.exit

Vec_MemFree.exit:                                 ; preds = %._crit_edge.i, %._crit_edge.thread.i
  call void @free(ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ct = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #30
  %i.cu = icmp slt i32 %i.ct, 0
  br i1 %i.cu, label %Abc_Clock.exit60, label %bb.r

bb.r:                                             ; preds = %Vec_MemFree.exit
  %i.cv = load i64, ptr %7, align 8, !tbaa !83
  %i.cw = mul nsw i64 %i.cv, 1000000
  %i.cx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !84
  %i.cz = sdiv i64 %i.cy, 1000
  %i.da = add nsw i64 %i.cz, %i.cw
  br label %Abc_Clock.exit60

Abc_Clock.exit60:                                 ; preds = %Vec_MemFree.exit, %bb.r
  %.0.i59 = phi i64 [ %i.da, %bb.r ], [ -1, %Vec_MemFree.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #30
  %i.db = add i64 %.0.i59, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.51)
  %i.dc = sitofp i64 %i.db to double
  %i.dd = fdiv double %i.dc, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.58, double noundef %i.dd)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #30
  ret void
}

declare void @Dau_CanonicizeArray(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare ptr @Dau_CollectNpnFunctionsArray(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

declare i32 @Abc_Random(i32 noundef) local_unnamed_addr #10

declare ptr @Gia_ManDupCones(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #10

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, -2147483648) i32 @Gia_ManMatchConesMinimizeTts(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #16 {
bb.a:
  %i.a = icmp slt i32 %1, 7                       ; 3 uses
  %i.b = add nsw i32 %1, -6                       ; 3 uses
  %i.c = shl nuw i32 1, %i.b
  %i.d = select i1 %i.a, i32 1, i32 %i.c
  %i.e = getelementptr i8, ptr %0, i64 4          ; 2 uses
  %.val = load i32, ptr %i.e, align 4, !tbaa !104
  %i.f = sdiv i32 %.val, %i.d                     ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge50

.lr.ph:                                           ; preds = %bb.a
  %i.h = select i1 %i.a, i32 0, i32 %i.b
  %i.i = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.045 = phi i32 [ 0, %.lr.ph ], [ %i.n, %bb.b ]
  %.03444 = phi i32 [ 0, %.lr.ph ], [ %i.o, %bb.b ] ; 2 uses
  %i.j = shl i32 %.03444, %i.h
  %.val39 = load ptr, ptr %i.i, align 8, !tbaa !102
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val39, i64 %i.k
  %i.m = tail call fastcc i32 @Abc_TtMinBase(ptr noundef %i.l, ptr noundef null, i32 noundef %1, i32 noundef %1)
  %i.n = tail call noundef i32 @llvm.smax.i32(i32 %.045, i32 %i.m) ; 10 uses
  %i.o = add nuw nsw i32 %.03444, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.o, %i.f
  br i1 %exitcond.not, label %.lr.ph49, label %bb.b, !llvm.loop !283

.lr.ph49:                                         ; preds = %bb.b
  %i.p = icmp slt i32 %i.n, 7                     ; 3 uses
  %i.q = add nsw i32 %i.n, -6                     ; 3 uses
  %i.r = shl nuw i32 1, %i.q                      ; 3 uses
  %i.s = select i1 %i.p, i32 1, i32 %i.r
  %i.t = select i1 %i.a, i32 0, i32 %i.b          ; 2 uses
  %i.u = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.v = select i1 %i.p, i32 0, i32 %i.q          ; 5 uses
  %i.w = icmp sgt i32 %i.n, 0
  %i.x = sext i32 %i.r to i64
  %.idx.i.i = shl nsw i64 %i.x, 3
  %smax56.i.i = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %wide.trip.count57.i.i = zext nneg i32 %smax56.i.i to i64
  %.not48.i.i = icmp eq i32 %i.q, 31
  %wide.trip.count.i = zext i32 %i.n to i64       ; 3 uses
  %i.y = sext i32 %i.s to i64
  %i.z = shl nsw i64 %i.y, 3                      ; 2 uses
  br i1 %i.w, label %.lr.ph49.split.us, label %._crit_edge50

.lr.ph49.split.us:                                ; preds = %.lr.ph49
  br i1 %i.p, label %.lr.ph.i.us.us.preheader, label %.lr.ph49.split.us.split

.lr.ph.i.us.us.preheader:                         ; preds = %.lr.ph49.split.us
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.aa = icmp eq i32 %i.n, 1
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod88 = trunc i32 %i.n to i1
  br label %.lr.ph.i.us.us

.lr.ph.i.us.us:                                   ; preds = %.lr.ph.i.us.us.preheader, %Abc_TtSupportSize.exit.thread.us.us
  %.03347.us.us = phi i32 [ %.1.us.us, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 3 uses
  %.13546.us.us = phi i32 [ %i.bl, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph.i.us.us.preheader ] ; 2 uses
  %i.ab = shl i32 %.13546.us.us, %i.t
  %.val38.us.us = load ptr, ptr %i.u, align 8, !tbaa !102 ; 2 uses
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %.val38.us.us, i64 %i.ac ; 2 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !77 ; 6 uses
  br i1 %i.aa, label %Abc_TtHasVar.exit.us.i.us.us.epil.preheader, label %Abc_TtHasVar.exit.us.i.us.us

Abc_TtHasVar.exit.us.i.us.us:                     ; preds = %.lr.ph.i.us.us, %Abc_TtHasVar.exit.us.i.us.us
  %indvars.iv51.i.us.us = phi i64 [ %indvars.iv.next52.i.us.us.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ] ; 4 uses
  %.022.us.i.us.us = phi i32 [ %spec.select.i.us.us.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ]
  %niter = phi i64 [ %niter.next.1, %Abc_TtHasVar.exit.us.i.us.us ], [ 0, %.lr.ph.i.us.us ]
  %i.af = trunc nuw nsw i64 %indvars.iv51.i.us.us to i32
  %i.ag = shl nuw i32 1, %i.af
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = lshr i64 %i.ae, %i.ah
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv51.i.us.us
  %i.ak = load i64, ptr %i.aj, align 16, !tbaa !77
  %i.al = xor i64 %i.ai, %i.ae
  %i.am = and i64 %i.al, %i.ak
  %.fr.us.i.us.us = freeze i64 %i.am
  %.not17.us.i.us.us = icmp ne i64 %.fr.us.i.us.us, 0
  %i.an = zext i1 %.not17.us.i.us.us to i32
  %spec.select.i.us.us = add nuw nsw i32 %.022.us.i.us.us, %i.an
  %indvars.iv.next52.i.us.us = or disjoint i64 %indvars.iv51.i.us.us, 1 ; 2 uses
  %i.ao = trunc nuw nsw i64 %indvars.iv.next52.i.us.us to i32
  %i.ap = shl nuw i32 1, %i.ao
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = lshr i64 %i.ae, %i.aq
  %i.as = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.next52.i.us.us
  %i.at = load i64, ptr %i.as, align 8, !tbaa !77
  %i.au = xor i64 %i.ar, %i.ae
  %i.av = and i64 %i.au, %i.at
  %.fr.us.i.us.us.1 = freeze i64 %i.av
  %.not17.us.i.us.us.1 = icmp ne i64 %.fr.us.i.us.us.1, 0
  %i.aw = zext i1 %.not17.us.i.us.us.1 to i32
  %spec.select.i.us.us.1 = add nuw nsw i32 %spec.select.i.us.us, %i.aw ; 3 uses
  %indvars.iv.next52.i.us.us.1 = add nuw nsw i64 %indvars.iv51.i.us.us, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, label %Abc_TtHasVar.exit.us.i.us.us, !llvm.loop !284

Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa:  ; preds = %Abc_TtHasVar.exit.us.i.us.us
  br i1 %lcmp.mod.not, label %Abc_TtSupportSize.exit.loopexit.us.us, label %Abc_TtHasVar.exit.us.i.us.us.epil.preheader

Abc_TtHasVar.exit.us.i.us.us.epil.preheader:      ; preds = %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, %.lr.ph.i.us.us
  %indvars.iv51.i.us.us.epil.init = phi i64 [ 0, %.lr.ph.i.us.us ], [ %indvars.iv.next52.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ] ; 2 uses
  %.022.us.i.us.us.epil.init = phi i32 [ 0, %.lr.ph.i.us.us ], [ %spec.select.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod88)
  %i.ax = trunc nuw nsw i64 %indvars.iv51.i.us.us.epil.init to i32
  %i.ay = shl nuw i32 1, %i.ax
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = lshr i64 %i.ae, %i.az
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv51.i.us.us.epil.init
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !77
  %i.bd = xor i64 %i.ba, %i.ae
  %i.be = and i64 %i.bd, %i.bc
  %.fr.us.i.us.us.epil = freeze i64 %i.be
  %.not17.us.i.us.us.epil = icmp ne i64 %.fr.us.i.us.us.epil, 0
  %i.bf = zext i1 %.not17.us.i.us.us.epil to i32
  %spec.select.i.us.us.epil = add nuw nsw i32 %.022.us.i.us.us.epil.init, %i.bf
  br label %Abc_TtSupportSize.exit.loopexit.us.us

Abc_TtSupportSize.exit.loopexit.us.us:            ; preds = %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa, %Abc_TtHasVar.exit.us.i.us.us.epil.preheader
  %spec.select.i.us.us.lcssa = phi i32 [ %spec.select.i.us.us.1, %Abc_TtSupportSize.exit.loopexit.us.us.unr-lcssa ], [ %spec.select.i.us.us.epil, %Abc_TtHasVar.exit.us.i.us.us.epil.preheader ]
  %i.bg = icmp samesign ult i32 %spec.select.i.us.us.lcssa, 3
  br i1 %i.bg, label %Abc_TtSupportSize.exit.thread.us.us, label %bb.c

bb.c:                                             ; preds = %Abc_TtSupportSize.exit.loopexit.us.us
  %i.bh = shl i32 %.03347.us.us, %i.v
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.val38.us.us, i64 %i.bi
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bj, ptr noundef nonnull align 8 dereferenceable(1) %i.ad, i64 %i.z, i1 false)
  %i.bk = add nsw i32 %.03347.us.us, 1
  br label %Abc_TtSupportSize.exit.thread.us.us

Abc_TtSupportSize.exit.thread.us.us:              ; preds = %bb.c, %Abc_TtSupportSize.exit.loopexit.us.us
  %.1.us.us = phi i32 [ %i.bk, %bb.c ], [ %.03347.us.us, %Abc_TtSupportSize.exit.loopexit.us.us ] ; 2 uses
  %i.bl = add nuw nsw i32 %.13546.us.us, 1        ; 2 uses
  %exitcond68.not = icmp eq i32 %i.bl, %i.f
  br i1 %exitcond68.not, label %._crit_edge50, label %.lr.ph.i.us.us, !llvm.loop !285

.lr.ph49.split.us.split:                          ; preds = %.lr.ph49.split.us
  br i1 %.not48.i.i, label %._crit_edge50, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph49.split.us.split, %Abc_TtSupportSize.exit.thread.us
  %.03347.us = phi i32 [ %.1.us, %Abc_TtSupportSize.exit.thread.us ], [ 0, %.lr.ph49.split.us.split ] ; 3 uses
  %.13546.us = phi i32 [ %i.ct, %Abc_TtSupportSize.exit.thread.us ], [ 0, %.lr.ph49.split.us.split ] ; 2 uses
  %i.bm = shl i32 %.13546.us, %i.t
  %.val38.us = load ptr, ptr %i.u, align 8, !tbaa !102 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [8 x i8], ptr %.val38.us, i64 %i.bn ; 4 uses
  %i.bp = getelementptr inbounds i8, ptr %i.bo, i64 %.idx.i.i
  br label %.lr.ph.split.split.split.i.us

.lr.ph.split.split.split.i.us:                    ; preds = %Abc_TtHasVar.exit.thread.i.us, %.lr.ph.i.us
  %indvars.iv.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %indvars.iv.next.i.us, %Abc_TtHasVar.exit.thread.i.us ] ; 5 uses
  %.022.i.us = phi i32 [ 0, %.lr.ph.i.us ], [ %i.co, %Abc_TtHasVar.exit.thread.i.us ] ; 4 uses
  %i.bq = icmp samesign ult i64 %indvars.iv.i.us, 6
  br i1 %i.bq, label %.lr.ph.i.i.us, label %.preheader.lr.ph.i.i.us

.preheader.lr.ph.i.i.us:                          ; preds = %.lr.ph.split.split.split.i.us
  %i.br = add nsw i64 %indvars.iv.i.us, -6        ; 2 uses
  %i.bs = icmp eq i64 %i.br, 31
  %i.bt = trunc nuw nsw i64 %i.br to i32          ; 2 uses
  %i.bu = shl i32 2, %i.bt
  %i.bv = sext i32 %i.bu to i64
  br i1 %i.bs, label %Abc_TtHasVar.exit.thread.i.us, label %.preheader.us.preheader.i.i.us

.preheader.us.preheader.i.i.us:                   ; preds = %.preheader.lr.ph.i.i.us
  %i.bw = shl nuw nsw i32 1, %i.bt                ; 2 uses
  %i.bx = zext nneg i32 %i.bw to i64
  %wide.trip.count.i.i.us = zext nneg i32 %i.bw to i64
  br label %.preheader.us.i.i.us

.preheader.us.i.i.us:                             ; preds = %._crit_edge.us.i.i.us, %.preheader.us.preheader.i.i.us
  %.03343.us.i.i.us = phi ptr [ %i.cb, %._crit_edge.us.i.i.us ], [ %i.bo, %.preheader.us.preheader.i.i.us ] ; 3 uses
  %invariant.gep.i.i.us = getelementptr [8 x i8], ptr %.03343.us.i.i.us, i64 %i.bx
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.us.i.i.us
  %indvars.iv.i.i.us = phi i64 [ 0, %.preheader.us.i.i.us ], [ %indvars.iv.next.i.i.us, %bb.e ] ; 3 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i.i.us, i64 %indvars.iv.i.i.us
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !77
  %gep.i.i.us = getelementptr [8 x i8], ptr %invariant.gep.i.i.us, i64 %indvars.iv.i.i.us
  %i.ca = load i64, ptr %gep.i.i.us, align 8, !tbaa !77
  %.not.us.i.i.us = icmp eq i64 %i.bz, %i.ca
  br i1 %.not.us.i.i.us, label %bb.e, label %Abc_TtHasVar.exit.thread13.i.us

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %exitcond.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, %wide.trip.count.i.i.us
  br i1 %exitcond.not.i.i.us, label %._crit_edge.us.i.i.us, label %bb.d, !llvm.loop !16

._crit_edge.us.i.i.us:                            ; preds = %bb.e
  %i.cb = getelementptr inbounds [8 x i8], ptr %.03343.us.i.i.us, i64 %i.bv ; 2 uses
  %i.cc = icmp ult ptr %i.cb, %i.bp
  br i1 %i.cc, label %.preheader.us.i.i.us, label %Abc_TtHasVar.exit.thread.i.us, !llvm.loop !17

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.split.split.i.us
  %i.cd = trunc nuw nsw i64 %indvars.iv.i.us to i32
  %i.ce = shl nuw nsw i32 1, %i.cd
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv.i.us
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !77
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.us
  %indvars.iv53.i.i.us = phi i64 [ 0, %.lr.ph.i.i.us ], [ %indvars.iv.next54.i.i.us, %bb.g ] ; 2 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %indvars.iv53.i.i.us
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !77 ; 2 uses
  %i.ck = lshr i64 %i.cj, %i.cf
  %i.cl = xor i64 %i.ck, %i.cj
  %i.cm = and i64 %i.cl, %i.ch
  %.not39.i.i.us = icmp eq i64 %i.cm, 0
  br i1 %.not39.i.i.us, label %bb.g, label %Abc_TtHasVar.exit.thread13.i.us

bb.g:                                             ; preds = %bb.f
  %indvars.iv.next54.i.i.us = add nuw nsw i64 %indvars.iv53.i.i.us, 1 ; 2 uses
  %exitcond58.not.i.i.us = icmp eq i64 %indvars.iv.next54.i.i.us, %wide.trip.count57.i.i
  br i1 %exitcond58.not.i.i.us, label %Abc_TtHasVar.exit.thread.i.us, label %bb.f, !llvm.loop !18

Abc_TtHasVar.exit.thread13.i.us:                  ; preds = %bb.f, %bb.d
  %i.cn = add nsw i32 %.022.i.us, 1
  br label %Abc_TtHasVar.exit.thread.i.us

Abc_TtHasVar.exit.thread.i.us:                    ; preds = %._crit_edge.us.i.i.us, %bb.g, %Abc_TtHasVar.exit.thread13.i.us, %.preheader.lr.ph.i.i.us
  %i.co = phi i32 [ %i.cn, %Abc_TtHasVar.exit.thread13.i.us ], [ %.022.i.us, %bb.g ], [ %.022.i.us, %.preheader.lr.ph.i.i.us ], [ %.022.i.us, %._crit_edge.us.i.i.us ] ; 2 uses
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %indvars.iv.next.i.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us, label %Abc_TtSupportSize.exit.loopexit43.us, label %.lr.ph.split.split.split.i.us, !llvm.loop !284

bb.h:                                             ; preds = %Abc_TtSupportSize.exit.loopexit43.us
  %i.cp = shl i32 %.03347.us, %i.v
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr inbounds [8 x i8], ptr %.val38.us, i64 %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.cr, ptr noundef nonnull align 8 dereferenceable(1) %i.bo, i64 %i.z, i1 false)
  %i.cs = add nsw i32 %.03347.us, 1
  br label %Abc_TtSupportSize.exit.thread.us

Abc_TtSupportSize.exit.thread.us:                 ; preds = %bb.h, %Abc_TtSupportSize.exit.loopexit43.us
  %.1.us = phi i32 [ %i.cs, %bb.h ], [ %.03347.us, %Abc_TtSupportSize.exit.loopexit43.us ] ; 2 uses
  %i.ct = add nuw nsw i32 %.13546.us, 1           ; 2 uses
  %exitcond67.not = icmp eq i32 %i.ct, %i.f
  br i1 %exitcond67.not, label %._crit_edge50, label %.lr.ph.i.us, !llvm.loop !285

Abc_TtSupportSize.exit.loopexit43.us:             ; preds = %Abc_TtHasVar.exit.thread.i.us
  %i.cu = icmp slt i32 %i.co, 3
  br i1 %i.cu, label %Abc_TtSupportSize.exit.thread.us, label %bb.h

._crit_edge50:                                    ; preds = %Abc_TtSupportSize.exit.thread.us, %Abc_TtSupportSize.exit.thread.us.us, %bb.a, %.lr.ph49.split.us.split, %.lr.ph49
  %.0.lcssa74 = phi i32 [ %i.n, %Abc_TtSupportSize.exit.thread.us.us ], [ 37, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ %i.n, %.lr.ph49 ], [ %i.n, %Abc_TtSupportSize.exit.thread.us ]
  %.pre-phi = phi i32 [ %i.v, %Abc_TtSupportSize.exit.thread.us.us ], [ 31, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ %i.v, %.lr.ph49 ], [ %i.v, %Abc_TtSupportSize.exit.thread.us ]
  %.033.lcssa = phi i32 [ %.1.us.us, %Abc_TtSupportSize.exit.thread.us.us ], [ 0, %.lr.ph49.split.us.split ], [ 0, %bb.a ], [ 0, %.lr.ph49 ], [ %.1.us, %Abc_TtSupportSize.exit.thread.us ]
  %i.cv = shl i32 %.033.lcssa, %.pre-phi
  store i32 %i.cv, ptr %i.e, align 4, !tbaa !104
  ret i32 %.0.lcssa74
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @Abc_TtMinBase(ptr nofree noundef captures(address) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #17 {
bb.a:
  %i.a = icmp sgt i32 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = icmp slt i32 %3, 7
  %i.c = add i32 %3, -6                           ; 2 uses
  %i.d = shl nuw i32 1, %i.c                      ; 2 uses
  %i.e = sext i32 %i.d to i64
  %.idx.i = shl nsw i64 %i.e, 3
  %i.f = getelementptr inbounds i8, ptr %0, i64 %.idx.i
  %smax56.i = tail call i32 @llvm.smax.i32(i32 %i.d, i32 1)
  %wide.trip.count57.i = zext nneg i32 %smax56.i to i64
  %.not26 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %i.b, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %wide.trip.count82 = zext nneg i32 %2 to i64    ; 2 uses
  br i1 %.not26, label %Abc_TtHasVar.exit.us.us, label %Abc_TtHasVar.exit.us

Abc_TtHasVar.exit.us.us:                          ; preds = %.lr.ph.split.us, %Abc_TtHasVar.exit.thread.us.us
  %indvars.iv79 = phi i64 [ %indvars.iv.next80, %Abc_TtHasVar.exit.thread.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %.038.us.us = phi i32 [ %.1.us.us, %Abc_TtHasVar.exit.thread.us.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.g = load i64, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.h = trunc nuw nsw i64 %indvars.iv79 to i32   ; 2 uses
  %i.i = shl nuw i32 1, %i.h
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i64 %i.g, %i.j
  %i.l = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv79
  %i.m = load i64, ptr %i.l, align 8, !tbaa !77
  %i.n = xor i64 %i.k, %i.g
  %i.o = and i64 %i.n, %i.m
  %.not33.us.us = icmp eq i64 %i.o, 0
  br i1 %.not33.us.us, label %Abc_TtHasVar.exit.thread.us.us, label %Abc_TtHasVar.exit.thread30.us.us

Abc_TtHasVar.exit.thread30.us.us:                 ; preds = %Abc_TtHasVar.exit.us.us
  %i.p = sext i32 %.038.us.us to i64
  %i.q = icmp sgt i64 %indvars.iv79, %i.p
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %Abc_TtHasVar.exit.thread30.us.us
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.038.us.us, i32 noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %Abc_TtHasVar.exit.thread30.us.us
  %i.r = add nsw i32 %.038.us.us, 1
  br label %Abc_TtHasVar.exit.thread.us.us

Abc_TtHasVar.exit.thread.us.us:                   ; preds = %bb.c, %Abc_TtHasVar.exit.us.us
  %.1.us.us = phi i32 [ %i.r, %bb.c ], [ %.038.us.us, %Abc_TtHasVar.exit.us.us ] ; 2 uses
  %indvars.iv.next80 = add nuw nsw i64 %indvars.iv79, 1 ; 2 uses
  %exitcond83.not = icmp eq i64 %indvars.iv.next80, %wide.trip.count82
  br i1 %exitcond83.not, label %._crit_edge, label %Abc_TtHasVar.exit.us.us, !llvm.loop !286

Abc_TtHasVar.exit.us:                             ; preds = %.lr.ph.split.us, %Abc_TtHasVar.exit.thread.us
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %Abc_TtHasVar.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 5 uses
  %.038.us = phi i32 [ %.1.us, %Abc_TtHasVar.exit.thread.us ], [ 0, %.lr.ph.split.us ] ; 4 uses
  %i.s = load i64, ptr %0, align 8, !tbaa !77     ; 2 uses
  %i.t = trunc nuw nsw i64 %indvars.iv74 to i32   ; 2 uses
  %i.u = shl nuw i32 1, %i.t
  %i.v = zext nneg i32 %i.u to i64
  %i.w = lshr i64 %i.s, %i.v
  %i.x = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv74
  %i.y = load i64, ptr %i.x, align 8, !tbaa !77
  %i.z = xor i64 %i.w, %i.s
  %i.aa = and i64 %i.z, %i.y
  %.not33.us = icmp eq i64 %i.aa, 0
  br i1 %.not33.us, label %Abc_TtHasVar.exit.thread.us, label %Abc_TtHasVar.exit.thread30.us

Abc_TtHasVar.exit.thread30.us:                    ; preds = %Abc_TtHasVar.exit.us
  %i.ab = sext i32 %.038.us to i64                ; 2 uses
  %i.ac = icmp sgt i64 %indvars.iv74, %i.ab
  br i1 %i.ac, label %bb.d, label %bb.e

bb.d:                                             ; preds = %Abc_TtHasVar.exit.thread30.us
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv74
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !58
  %i.af = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ab
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !58
  tail call fastcc void @Abc_TtSwapVars(ptr noundef nonnull %0, i32 noundef %3, i32 noundef %.038.us, i32 noundef %i.t)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %Abc_TtHasVar.exit.thread30.us
  %i.ag = add nsw i32 %.038.us, 1
  br label %Abc_TtHasVar.exit.thread.us

Abc_TtHasVar.exit.thread.us:                      ; preds = %bb.e, %Abc_TtHasVar.exit.us
  %.1.us = phi i32 [ %i.ag, %bb.e ], [ %.038.us, %Abc_TtHasVar.exit.us ] ; 2 uses
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count82
  br i1 %exitcond78.not, label %._crit_edge, label %Abc_TtHasVar.exit.us, !llvm.loop !286

.lr.ph.split:                                     ; preds = %.lr.ph
  %.not48.i = icmp eq i32 %i.c, 31
  br i1 %.not48.i, label %._crit_edge, label %.lr.ph.split.split.split.preheader

.lr.ph.split.split.split.preheader:               ; preds = %.lr.ph.split
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph.split.split.split

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split.split.preheader, %Abc_TtHasVar.exit.thread
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.split.split.preheader ], [ %indvars.iv.next, %Abc_TtHasVar.exit.thread ] ; 8 uses
  %.038 = phi i32 [ 0, %.lr.ph.split.split.split.preheader ], [ %.1, %Abc_TtHasVar.exit.thread ] ; 6 uses
  %i.ah = icmp samesign ult i64 %indvars.iv, 6
  br i1 %i.ah, label %.lr.ph.i, label %.preheader.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.split.split.split
  %i.ai = trunc nuw nsw i64 %indvars.iv to i32
  %i.aj = shl nuw nsw i32 1, %i.ai
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr @s_Truths6Neg, i64 %indvars.iv
  %i.am = load i64, ptr %i.al, align 8, !tbaa !77
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next54.i = add nuw nsw i64 %indvars.iv53.i, 1 ; 2 uses
  %exitcond58.not.i = icmp eq i64 %indvars.iv.next54.i, %wide.trip.count57.i
  br i1 %exitcond58.not.i, label %Abc_TtHasVar.exit.thread, label %bb.g, !llvm.loop !18

bb.g:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv53.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next54.i, %bb.f ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv53.i
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !77 ; 2 uses
  %i.ap = lshr i64 %i.ao, %i.ak
  %i.aq = xor i64 %i.ap, %i.ao
  %i.ar = and i64 %i.aq, %i.am
  %.not39.i = icmp eq i64 %i.ar, 0
  br i1 %.not39.i, label %bb.f, label %Abc_TtHasVar.exit.thread30

.preheader.lr.ph.i:                               ; preds = %.lr.ph.split.split.split
  %i.as = add nsw i64 %indvars.iv, -6             ; 2 uses
  %i.at = icmp eq i64 %i.as, 31
  %i.au = trunc nsw i64 %i.as to i32              ; 2 uses
  %i.av = shl i32 2, %i.au
  %i.aw = sext i32 %i.av to i64
  br i1 %i.at, label %Abc_TtHasVar.exit.thread, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.i
  %i.ax = shl nuw i32 1, %i.au                    ; 2 uses
  %i.ay = sext i32 %i.ax to i64
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.ax, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i, %.preheader.us.preheader.i
  %.03343.us.i = phi ptr [ %i.bc, %._crit_edge.us.i ], [ %0, %.preheader.us.preheader.i ] ; 3 uses
  %invariant.gep.i = getelementptr [8 x i8], ptr %.03343.us.i, i64 %i.ay
  br label %bb.i

bb.h:                                             ; preds = %bb.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %bb.i, !llvm.loop !16

bb.i:                                             ; preds = %bb.h, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.h ] ; 3 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %.03343.us.i, i64 %indvars.iv.i
  %i.ba = load i64, ptr %i.az, align 8, !tbaa !77
  %gep.i = getelementptr [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.bb = load i64, ptr %gep.i, align 8, !tbaa !77
  %.not.us.i = icmp eq i64 %i.ba, %i.bb
  br i1 %.not.us.i, label %bb.h, label %Abc_TtHasVar.exit.thread30

._crit_edge.us.i:                                 ; preds = %bb.h
  %i.bc = getelementptr inbounds [8 x i8], ptr %.03343.us.i, i64 %i.aw ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.f
  br i1 %i.bd, label %.preheader.us.i, label %Abc_TtHasVar.exit.thread, !llvm.loop !17

Abc_TtHasVar.exit.thread30:                       ; preds = %bb.g, %bb.i
  %i.be = sext i32 %.038 to i64                   ; 2 uses
  %i.bf = icmp sgt i64 %indvars.iv, %i.be
  br i1 %i.bf, label %bb.j, label %bb.m

bb.j:                                             ; preds = %Abc_TtHasVar.exit.thread30
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !58
  %i.bi = getelementptr inbounds [4 x i8], ptr %1, i64 %i.be
  store i32 %i.bh, ptr %i.bi, align 4, !tbaa !58
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %0, i32 noundef %3, i32 noundef %.038, i32 noundef %i.bj)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %Abc_TtHasVar.exit.thread30
  %i.bk = add nsw i32 %.038, 1
  br label %Abc_TtHasVar.exit.thread

end_hunk_0
