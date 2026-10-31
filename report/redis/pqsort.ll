Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/pqsort?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @pqsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = mul i64 %4, %2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %i.a
  %i.c = add i64 %5, 1
  %i.d = mul i64 %i.c, %2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -1
  tail call fastcc void @_pqsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %i.b, ptr noundef nonnull %i.f)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @_pqsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef readnone captures(address) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub i64 0, %2                            ; 11 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32
  %i.d = lshr i64 %2, 3                           ; 25 uses
  %i.e = and i64 %2, -8                           ; 8 uses
  %min.iters.check815 = icmp ult i64 %2, 4
  %min.iters.check817 = icmp ult i64 %2, 32
  %i.f = and i64 %2, 28
  %n.vec819 = and i64 %2, -32                     ; 5 uses
  %i.g = and i64 %2, 31
  %cmp.n830 = icmp eq i64 %2, %n.vec819
  %min.epilog.iters.check834 = icmp eq i64 %i.f, 0
  %n.vec837 = and i64 %2, -4                      ; 4 uses
  %i.h = and i64 %2, 3
  %cmp.n846 = icmp eq i64 %2, %n.vec837
  %min.iters.check791 = icmp ult i64 %2, 32
  %n.vec793 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.i = shl nuw i64 %n.vec793, 3                 ; 2 uses
  %i.j = and i64 %i.d, 3
  %cmp.n804 = icmp eq i64 %i.d, %n.vec793
  %min.iters.check749 = icmp ult i64 %2, 4
  %min.iters.check751 = icmp ult i64 %2, 32
  %i.k = and i64 %2, 28
  %n.vec753.a = and i64 %2, -32                   ; 5 uses
  %i.l = and i64 %2, 31
  %cmp.n764.a = icmp eq i64 %2, %n.vec753.a
  %min.epilog.iters.check768 = icmp eq i64 %i.k, 0
  %n.vec771 = and i64 %2, -4                      ; 4 uses
  %i.m = and i64 %2, 3
  %cmp.n780 = icmp eq i64 %2, %n.vec771
  %min.iters.check725 = icmp ult i64 %2, 32
  %n.vec727 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.n = shl nuw i64 %n.vec727, 3                 ; 2 uses
  %i.o = and i64 %i.d, 3
  %cmp.n738 = icmp eq i64 %i.d, %n.vec727
  %min.iters.check681 = icmp ult i64 %2, 4
  %min.iters.check683 = icmp ult i64 %2, 32
  %i.p = and i64 %2, 28
  %n.vec685 = and i64 %2, -32                     ; 5 uses
  %i.q = and i64 %2, 31
  %cmp.n696 = icmp eq i64 %2, %n.vec685
  %min.epilog.iters.check700 = icmp eq i64 %i.p, 0
  %n.vec703 = and i64 %2, -4                      ; 4 uses
  %i.r = and i64 %2, 3
  %cmp.n712 = icmp eq i64 %2, %n.vec703
  %min.iters.check657 = icmp ult i64 %2, 32
  %n.vec659 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.s = shl nuw i64 %n.vec659, 3                 ; 2 uses
  %i.t = and i64 %i.d, 3
  %cmp.n670 = icmp eq i64 %i.d, %n.vec659
  %min.iters.check615 = icmp ult i64 %2, 4
  %min.iters.check617 = icmp ult i64 %2, 32
  %i.u = and i64 %2, 28
  %n.vec619 = and i64 %2, -32                     ; 5 uses
  %i.v = and i64 %2, 31
  %cmp.n630 = icmp eq i64 %2, %n.vec619
  %min.epilog.iters.check634 = icmp eq i64 %i.u, 0
  %n.vec637 = and i64 %2, -4                      ; 4 uses
  %i.w = and i64 %2, 3
  %cmp.n646 = icmp eq i64 %2, %n.vec637
  %min.iters.check591 = icmp ult i64 %2, 48
  %n.vec593 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.x = shl nuw i64 %n.vec593, 3                 ; 2 uses
  %i.y = and i64 %i.d, 3
  %cmp.n604 = icmp eq i64 %i.d, %n.vec593
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %bb.a
  %.0214 = phi i64 [ %1, %bb.a ], [ %i.wv, %bb.at ] ; 9 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.wr, %bb.at ]  ; 62 uses
  %i.z = ptrtoint ptr %.0 to i64                  ; 2 uses
  %i.aa = or i64 %2, %i.z
  %i.ab = and i64 %i.aa, 7
  %or.cond = icmp eq i64 %i.ab, 0                 ; 8 uses
  %i.ac = select i1 %or.cond, i32 %i.c, i32 2     ; 2 uses
  %i.ad = icmp ult i64 %.0214, 7
  br i1 %i.ad, label %.preheader325, label %bb.c

.preheader325:                                    ; preds = %bb.b
  %i.ae = mul i64 %.0214, %2                      ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0, i64 %i.ae ; 3 uses
  %.0222368 = getelementptr inbounds nuw i8, ptr %.0, i64 %2 ; 3 uses
  %i.ag = icmp samesign ult i64 %2, %i.ae
  br i1 %i.ag, label %.preheader.lr.ph, label %.thread

.preheader.lr.ph:                                 ; preds = %.preheader325
  %i.ah = icmp eq i32 %i.ac, 0
  br i1 %i.ah, label %.preheader.us, label %.preheader.lr.ph.split

.preheader.us:                                    ; preds = %.preheader.lr.ph, %.critedge.us
  %.0222369.us = phi ptr [ %.0222.us, %.critedge.us ], [ %.0222368, %.preheader.lr.ph ] ; 3 uses
  %i.ai = icmp ugt ptr %.0222369.us, %.0
  br i1 %i.ai, label %.lr.ph364.us, label %.critedge.us

.lr.ph364.us:                                     ; preds = %.preheader.us, %swapfunc.exit.us.us
  %.0225363.us.us = phi ptr [ %i.aj, %swapfunc.exit.us.us ], [ %.0222369.us, %.preheader.us ] ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %.0225363.us.us, i64 %i.a ; 5 uses
  %i.ak = tail call i32 %3(ptr noundef nonnull %i.aj, ptr noundef nonnull %.0225363.us.us) #2
  %i.al = icmp sgt i32 %i.ak, 0
  br i1 %i.al, label %swapfunc.exit.us.us, label %.critedge.us

swapfunc.exit.us.us:                              ; preds = %.lr.ph364.us
  %i.am = load i64, ptr %.0225363.us.us, align 8, !tbaa !106
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !106
  store i64 %i.an, ptr %.0225363.us.us, align 8, !tbaa !106
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !106
  %i.ao = icmp ugt ptr %i.aj, %.0
  br i1 %i.ao, label %.lr.ph364.us, label %.critedge.us, !llvm.loop !13

.critedge.us:                                     ; preds = %swapfunc.exit.us.us, %.lr.ph364.us, %.preheader.us
  %.0222.us = getelementptr inbounds nuw i8, ptr %.0222369.us, i64 %2 ; 2 uses
  %i.ap = icmp ult ptr %.0222.us, %i.af
  br i1 %i.ap, label %.preheader.us, label %.thread, !llvm.loop !14

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %or.cond, label %.preheader.us373.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %min.iters.check851 = icmp ult i64 %2, 4
  %min.iters.check853 = icmp ult i64 %2, 32
  %i.aq = and i64 %2, 28
  %n.vec855 = and i64 %2, -32                     ; 5 uses
  %i.ar = and i64 %2, 31
  %cmp.n866 = icmp eq i64 %2, %n.vec855
  %min.epilog.iters.check870 = icmp eq i64 %i.aq, 0
  %n.vec873 = and i64 %2, -4                      ; 4 uses
  %i.as = and i64 %2, 3
  %cmp.n882 = icmp eq i64 %2, %n.vec873
  br label %.preheader

.preheader.us373.preheader:                       ; preds = %.preheader.lr.ph.split
  %i.at = and i64 %2, -8                          ; 2 uses
  %min.iters.check935 = icmp ult i64 %2, 32
  %6 = getelementptr i8, ptr %.0, i64 %2
  %7 = getelementptr i8, ptr %6, i64 %i.at
  %8 = getelementptr i8, ptr %.0, i64 %i.at
  %n.vec899 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.au = shl nuw i64 %n.vec899, 3                ; 2 uses
  %i.av = and i64 %i.d, 3
  %cmp.n910 = icmp eq i64 %i.d, %n.vec899
  br label %.preheader.us373

.preheader.us373:                                 ; preds = %.preheader.us373.preheader, %.critedge.us376
  %indvar887 = phi i64 [ 0, %.preheader.us373.preheader ], [ %indvar.next888, %.critedge.us376 ] ; 2 uses
  %.0222369.us374 = phi ptr [ %.0222368, %.preheader.us373.preheader ], [ %.0222.us377, %.critedge.us376 ] ; 3 uses
  %i.aw = mul i64 %2, %indvar887                  ; 2 uses
  %i.ax = icmp ugt ptr %.0222369.us374, %.0
  br i1 %i.ax, label %.lr.ph364.us375.preheader, label %.critedge.us376

.lr.ph364.us375.preheader:                        ; preds = %.preheader.us373
  %9 = getelementptr i8, ptr %7, i64 %i.aw
  %10 = getelementptr i8, ptr %8, i64 %i.aw
  br label %.lr.ph364.us375

.lr.ph364.us375:                                  ; preds = %.lr.ph364.us375.preheader, %swapfunc.exit.loopexit.us.us
  %indvar889 = phi i64 [ %indvar.next890, %swapfunc.exit.loopexit.us.us ], [ 0, %.lr.ph364.us375.preheader ] ; 2 uses
  %.0225363.us366.us = phi ptr [ %i.ay, %swapfunc.exit.loopexit.us.us ], [ %.0222369.us374, %.lr.ph364.us375.preheader ] ; 7 uses
  %i.ay = getelementptr inbounds i8, ptr %.0225363.us366.us, i64 %i.a ; 8 uses
  %i.az = tail call i32 %3(ptr noundef nonnull %i.ay, ptr noundef nonnull %.0225363.us366.us) #2
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.preheader381.preheader, label %.critedge.us376

.preheader381.preheader:                          ; preds = %.lr.ph364.us375
  br i1 %min.iters.check935, label %.preheader381.preheader914, label %vector.memcheck886

vector.memcheck886:                               ; preds = %.preheader381.preheader
  %11 = mul i64 %indvar889, %i.a                  ; 2 uses
  %12 = getelementptr i8, ptr %9, i64 %11
  %13 = getelementptr i8, ptr %10, i64 %11
  %bound0893 = icmp ult ptr %.0225363.us366.us, %13
  %bound1894 = icmp ult ptr %i.ay, %12
  %found.conflict895 = and i1 %bound0893, %bound1894
  br i1 %found.conflict895, label %.preheader381.preheader914, label %vector.ph898

vector.ph898:                                     ; preds = %vector.memcheck886
  %i.bb = getelementptr i8, ptr %i.ay, i64 %i.au
  %i.bc = getelementptr i8, ptr %.0225363.us366.us, i64 %i.au
  br label %vector.body900

vector.body900:                                   ; preds = %vector.body900, %vector.ph898
  %index901 = phi i64 [ 0, %vector.ph898 ], [ %index.next908, %vector.body900 ] ; 2 uses
  %i.bd = shl i64 %index901, 3                    ; 2 uses
  %next.gep902 = getelementptr i8, ptr %i.ay, i64 %i.bd ; 3 uses
  %next.gep903 = getelementptr i8, ptr %.0225363.us366.us, i64 %i.bd ; 3 uses
  %i.be = getelementptr i8, ptr %next.gep903, i64 16 ; 2 uses
  %wide.load904 = load <2 x i64>, ptr %next.gep903, align 8, !tbaa !106, !alias.scope !108, !noalias !109
  %wide.load905 = load <2 x i64>, ptr %i.be, align 8, !tbaa !106, !alias.scope !108, !noalias !109
  %i.bf = getelementptr i8, ptr %next.gep902, i64 16 ; 2 uses
  %wide.load906 = load <2 x i64>, ptr %next.gep902, align 8, !tbaa !106, !alias.scope !109
  %wide.load907 = load <2 x i64>, ptr %i.bf, align 8, !tbaa !106, !alias.scope !109
  store <2 x i64> %wide.load906, ptr %next.gep903, align 8, !tbaa !106, !alias.scope !108, !noalias !109
  store <2 x i64> %wide.load907, ptr %i.be, align 8, !tbaa !106, !alias.scope !108, !noalias !109
  store <2 x i64> %wide.load904, ptr %next.gep902, align 8, !tbaa !106, !alias.scope !109
  store <2 x i64> %wide.load905, ptr %i.bf, align 8, !tbaa !106, !alias.scope !109
  %index.next908 = add nuw i64 %index901, 4       ; 2 uses
  %i.bg = icmp eq i64 %index.next908, %n.vec899
  br i1 %i.bg, label %middle.block909, label %vector.body900, !llvm.loop !18

middle.block909:                                  ; preds = %vector.body900
  br i1 %cmp.n910, label %swapfunc.exit.loopexit.us.us, label %.preheader381.preheader914

.preheader381.preheader914:                       ; preds = %vector.memcheck886, %.preheader381.preheader, %middle.block909
  %.022.i.us.us.ph = phi ptr [ %i.ay, %vector.memcheck886 ], [ %i.ay, %.preheader381.preheader ], [ %i.bb, %middle.block909 ] ; 2 uses
  %.021.i.us.us.ph = phi ptr [ %.0225363.us366.us, %vector.memcheck886 ], [ %.0225363.us366.us, %.preheader381.preheader ], [ %i.bc, %middle.block909 ] ; 2 uses
  %.0.i.us.us.ph = phi i64 [ %i.d, %vector.memcheck886 ], [ %i.d, %.preheader381.preheader ], [ %i.av, %middle.block909 ] ; 4 uses
  %i.bh = add nsw i64 %.0.i.us.us.ph, -1
  %xtraiter980 = and i64 %.0.i.us.us.ph, 3        ; 2 uses
  %lcmp.mod981.not = icmp eq i64 %xtraiter980, 0
  br i1 %lcmp.mod981.not, label %.preheader381.prol.loopexit, label %.preheader381.prol

.preheader381.prol:                               ; preds = %.preheader381.preheader914, %.preheader381.prol
  %.022.i.us.us.prol = phi ptr [ %i.bl, %.preheader381.prol ], [ %.022.i.us.us.ph, %.preheader381.preheader914 ] ; 3 uses
  %.021.i.us.us.prol = phi ptr [ %i.bk, %.preheader381.prol ], [ %.021.i.us.us.ph, %.preheader381.preheader914 ] ; 3 uses
  %.0.i.us.us.prol = phi i64 [ %i.bm, %.preheader381.prol ], [ %.0.i.us.us.ph, %.preheader381.preheader914 ]
  %prol.iter982 = phi i64 [ %prol.iter982.next, %.preheader381.prol ], [ 0, %.preheader381.preheader914 ]
  %i.bi = load i64, ptr %.021.i.us.us.prol, align 8, !tbaa !106
  %i.bj = load i64, ptr %.022.i.us.us.prol, align 8, !tbaa !106
  %i.bk = getelementptr inbounds nuw i8, ptr %.021.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bj, ptr %.021.i.us.us.prol, align 8, !tbaa !106
  %i.bl = getelementptr inbounds nuw i8, ptr %.022.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bi, ptr %.022.i.us.us.prol, align 8, !tbaa !106
  %i.bm = add i64 %.0.i.us.us.prol, -1            ; 2 uses
  %prol.iter982.next = add i64 %prol.iter982, 1   ; 2 uses
  %prol.iter982.cmp.not = icmp eq i64 %prol.iter982.next, %xtraiter980
  br i1 %prol.iter982.cmp.not, label %.preheader381.prol.loopexit, label %.preheader381.prol, !llvm.loop !19

.preheader381.prol.loopexit:                      ; preds = %.preheader381.prol, %.preheader381.preheader914
  %.022.i.us.us.unr = phi ptr [ %.022.i.us.us.ph, %.preheader381.preheader914 ], [ %i.bl, %.preheader381.prol ]
  %.021.i.us.us.unr = phi ptr [ %.021.i.us.us.ph, %.preheader381.preheader914 ], [ %i.bk, %.preheader381.prol ]
  %.0.i.us.us.unr = phi i64 [ %.0.i.us.us.ph, %.preheader381.preheader914 ], [ %i.bm, %.preheader381.prol ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %swapfunc.exit.loopexit.us.us, label %.preheader381

.preheader381:                                    ; preds = %.preheader381.prol.loopexit, %.preheader381
  %.022.i.us.us = phi ptr [ %i.cd, %.preheader381 ], [ %.022.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.021.i.us.us = phi ptr [ %i.cc, %.preheader381 ], [ %.021.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.0.i.us.us = phi i64 [ %i.ce, %.preheader381 ], [ %.0.i.us.us.unr, %.preheader381.prol.loopexit ]
  %i.bo = load i64, ptr %.021.i.us.us, align 8, !tbaa !106
  %i.bp = load i64, ptr %.022.i.us.us, align 8, !tbaa !106
  %i.bq = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 8 ; 2 uses
  store i64 %i.bp, ptr %.021.i.us.us, align 8, !tbaa !106
  %i.br = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 8 ; 2 uses
  store i64 %i.bo, ptr %.022.i.us.us, align 8, !tbaa !106
  %i.bs = load i64, ptr %i.bq, align 8, !tbaa !106
  %i.bt = load i64, ptr %i.br, align 8, !tbaa !106
  %i.bu = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 16 ; 2 uses
  store i64 %i.bt, ptr %i.bq, align 8, !tbaa !106
  %i.bv = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 16 ; 2 uses
  store i64 %i.bs, ptr %i.br, align 8, !tbaa !106
  %i.bw = load i64, ptr %i.bu, align 8, !tbaa !106
  %i.bx = load i64, ptr %i.bv, align 8, !tbaa !106
  %i.by = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 24 ; 2 uses
  store i64 %i.bx, ptr %i.bu, align 8, !tbaa !106
  %i.bz = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 24 ; 2 uses
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !106
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !106
  %i.cb = load i64, ptr %i.bz, align 8, !tbaa !106
  %i.cc = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 32
  store i64 %i.cb, ptr %i.by, align 8, !tbaa !106
  %i.cd = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 32
  store i64 %i.ca, ptr %i.bz, align 8, !tbaa !106
  %i.ce = add i64 %.0.i.us.us, -4                 ; 2 uses
  %.not23.i.us.us.3 = icmp eq i64 %i.ce, 0
  br i1 %.not23.i.us.us.3, label %swapfunc.exit.loopexit.us.us, label %.preheader381, !llvm.loop !20

swapfunc.exit.loopexit.us.us:                     ; preds = %.preheader381.prol.loopexit, %.preheader381, %middle.block909
  %i.cf = icmp ugt ptr %i.ay, %.0
  %indvar.next890 = add i64 %indvar889, 1
  br i1 %i.cf, label %.lr.ph364.us375, label %.critedge.us376, !llvm.loop !13

.critedge.us376:                                  ; preds = %swapfunc.exit.loopexit.us.us, %.lr.ph364.us375, %.preheader.us373
  %.0222.us377 = getelementptr inbounds nuw i8, ptr %.0222369.us374, i64 %2 ; 2 uses
  %i.cg = icmp ult ptr %.0222.us377, %i.af
  %indvar.next888 = add i64 %indvar887, 1
  br i1 %i.cg, label %.preheader.us373, label %.thread, !llvm.loop !14

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0222369 = phi ptr [ %.0222, %.critedge ], [ %.0222368, %.preheader.preheader ] ; 3 uses
  %i.ch = icmp ugt ptr %.0222369, %.0
  br i1 %i.ch, label %.lr.ph364, label %.critedge

.lr.ph364:                                        ; preds = %.preheader, %swapfunc.exit.loopexit324
  %.0225363 = phi ptr [ %i.ci, %swapfunc.exit.loopexit324 ], [ %.0222369, %.preheader ] ; 7 uses
  %i.ci = getelementptr inbounds i8, ptr %.0225363, i64 %i.a ; 8 uses
  %i.cj = tail call i32 %3(ptr noundef nonnull %i.ci, ptr noundef nonnull %.0225363) #2
  %i.ck = icmp sgt i32 %i.cj, 0
  br i1 %i.ck, label %iter.check867, label %.critedge

iter.check867:                                    ; preds = %.lr.ph364
  br i1 %min.iters.check851, label %.preheader.i.preheader, label %vector.main.loop.iter.check852

vector.main.loop.iter.check852:                   ; preds = %iter.check867
  br i1 %min.iters.check853, label %vec.epilog.ph871, label %vector.ph854

vector.ph854:                                     ; preds = %vector.main.loop.iter.check852
  %i.cl = getelementptr i8, ptr %.0225363, i64 %n.vec855
  %i.cm = getelementptr i8, ptr %i.ci, i64 %n.vec855
  br label %vector.body856

vector.body856:                                   ; preds = %vector.ph854, %vector.body856
  %index857 = phi i64 [ 0, %vector.ph854 ], [ %index.next864, %vector.body856 ] ; 3 uses
  %next.gep858.a = getelementptr i8, ptr %.0225363, i64 %index857 ; 3 uses
  %next.gep859 = getelementptr i8, ptr %i.ci, i64 %index857 ; 3 uses
  %i.cn = getelementptr i8, ptr %next.gep858.a, i64 16 ; 2 uses
  %wide.load860.a = load <16 x i8>, ptr %next.gep858.a, align 1, !tbaa !113
  %wide.load861.a = load <16 x i8>, ptr %i.cn, align 1, !tbaa !113
  %i.co = getelementptr i8, ptr %next.gep859, i64 16 ; 2 uses
  %wide.load862.a = load <16 x i8>, ptr %next.gep859, align 1, !tbaa !113
  %wide.load863 = load <16 x i8>, ptr %i.co, align 1, !tbaa !113
  store <16 x i8> %wide.load862.a, ptr %next.gep858.a, align 1, !tbaa !113
  store <16 x i8> %wide.load863, ptr %i.cn, align 1, !tbaa !113
  store <16 x i8> %wide.load860.a, ptr %next.gep859, align 1, !tbaa !113
  store <16 x i8> %wide.load861.a, ptr %i.co, align 1, !tbaa !113
  %index.next864 = add nuw i64 %index857, 32      ; 2 uses
  %i.cp = icmp eq i64 %index.next864, %n.vec855
  br i1 %i.cp, label %middle.block865, label %vector.body856, !llvm.loop !21

middle.block865:                                  ; preds = %vector.body856
  br i1 %cmp.n866, label %swapfunc.exit.loopexit324, label %vec.epilog.iter.check868

vec.epilog.iter.check868:                         ; preds = %middle.block865
  br i1 %min.epilog.iters.check870, label %.preheader.i.preheader, label %vec.epilog.ph871, !prof !114

vec.epilog.ph871:                                 ; preds = %vector.main.loop.iter.check852, %vec.epilog.iter.check868
  %vec.epilog.resume.val872 = phi i64 [ %n.vec855, %vec.epilog.iter.check868 ], [ 0, %vector.main.loop.iter.check852 ]
  %i.cq = getelementptr i8, ptr %.0225363, i64 %n.vec873
  %i.cr = getelementptr i8, ptr %i.ci, i64 %n.vec873
  br label %vec.epilog.vector.body874

vec.epilog.vector.body874:                        ; preds = %vec.epilog.vector.body874, %vec.epilog.ph871
  %index875 = phi i64 [ %vec.epilog.resume.val872, %vec.epilog.ph871 ], [ %index.next880, %vec.epilog.vector.body874 ] ; 3 uses
  %next.gep876.a = getelementptr i8, ptr %.0225363, i64 %index875 ; 2 uses
  %next.gep877 = getelementptr i8, ptr %i.ci, i64 %index875 ; 2 uses
  %wide.load878.a = load <4 x i8>, ptr %next.gep876.a, align 1, !tbaa !113
  %wide.load879 = load <4 x i8>, ptr %next.gep877, align 1, !tbaa !113
  store <4 x i8> %wide.load879, ptr %next.gep876.a, align 1, !tbaa !113
  store <4 x i8> %wide.load878.a, ptr %next.gep877, align 1, !tbaa !113
  %index.next880 = add nuw i64 %index875, 4       ; 2 uses
  %i.cs = icmp eq i64 %index.next880, %n.vec873
  br i1 %i.cs, label %vec.epilog.middle.block881, label %vec.epilog.vector.body874, !llvm.loop !22

vec.epilog.middle.block881:                       ; preds = %vec.epilog.vector.body874
  br i1 %cmp.n882, label %swapfunc.exit.loopexit324, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check867, %vec.epilog.iter.check868, %vec.epilog.middle.block881
  %.020.i.ph = phi i64 [ %2, %iter.check867 ], [ %i.ar, %vec.epilog.iter.check868 ], [ %i.as, %vec.epilog.middle.block881 ]
  %.019.i.ph = phi ptr [ %.0225363, %iter.check867 ], [ %i.cl, %vec.epilog.iter.check868 ], [ %i.cq, %vec.epilog.middle.block881 ]
  %.018.i.ph = phi ptr [ %i.ci, %iter.check867 ], [ %i.cm, %vec.epilog.iter.check868 ], [ %i.cr, %vec.epilog.middle.block881 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.020.i = phi i64 [ %i.cx, %.preheader.i ], [ %.020.i.ph, %.preheader.i.preheader ]
  %.019.i = phi ptr [ %i.cv, %.preheader.i ], [ %.019.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.018.i = phi ptr [ %i.cw, %.preheader.i ], [ %.018.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.ct = load i8, ptr %.019.i, align 1, !tbaa !113
  %i.cu = load i8, ptr %.018.i, align 1, !tbaa !113
  %i.cv = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  store i8 %i.cu, ptr %.019.i, align 1, !tbaa !113
  %i.cw = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  store i8 %i.ct, ptr %.018.i, align 1, !tbaa !113
  %i.cx = add i64 %.020.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i, label %swapfunc.exit.loopexit324, label %.preheader.i, !llvm.loop !23

swapfunc.exit.loopexit324:                        ; preds = %.preheader.i, %vec.epilog.middle.block881, %middle.block865
  %i.cy = icmp ugt ptr %i.ci, %.0
  br i1 %i.cy, label %.lr.ph364, label %.critedge, !llvm.loop !13

.critedge:                                        ; preds = %swapfunc.exit.loopexit324, %.lr.ph364, %.preheader
  %.0222 = getelementptr inbounds nuw i8, ptr %.0222369, i64 %2 ; 2 uses
  %i.cz = icmp ult ptr %.0222, %i.af
end_hunk_0
begin_hunk_1_@_pqsort:bb.a
  store i8 %i.fz, ptr %.019.i264.prol, align 1, !tbaa !113
  %i.gb = getelementptr inbounds nuw i8, ptr %.018.i265.prol, i64 1 ; 2 uses
  store i8 %i.fy, ptr %.018.i265.prol, align 1, !tbaa !113
  %i.gc = add i64 %.020.i263.prol, -1             ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader.i262.prol.loopexit, label %.preheader.i262.prol, !llvm.loop !30

.preheader.i262.prol.loopexit:                    ; preds = %.preheader.i262.prol, %.preheader.i262.preheader
  %.020.i263.unr = phi i64 [ %.020.i263.ph, %.preheader.i262.preheader ], [ %i.gc, %.preheader.i262.prol ]
  %.019.i264.unr = phi ptr [ %.019.i264.ph, %.preheader.i262.preheader ], [ %i.ga, %.preheader.i262.prol ]
  %.018.i265.unr = phi ptr [ %.018.i265.ph, %.preheader.i262.preheader ], [ %i.gb, %.preheader.i262.prol ]
  %i.gd = icmp ult i64 %i.fx, 3
  br i1 %i.gd, label %swapfunc.exit271, label %.preheader.i262

.preheader396.preheader:                          ; preds = %bb.w
  br i1 %min.iters.check791, label %.preheader396.preheader929, label %vector.memcheck784

vector.memcheck784:                               ; preds = %.preheader396.preheader
  %scevgep785 = getelementptr i8, ptr %.0, i64 %i.e
  %scevgep786 = getelementptr i8, ptr %.2224, i64 %i.e
  %bound0787 = icmp ult ptr %.0, %scevgep786
  %bound1788 = icmp ult ptr %.2224, %scevgep785
  %found.conflict789 = and i1 %bound0787, %bound1788
  br i1 %found.conflict789, label %.preheader396.preheader929, label %vector.ph792

vector.ph792:                                     ; preds = %vector.memcheck784
  %i.ge = getelementptr i8, ptr %.2224, i64 %i.i
  %i.gf = getelementptr i8, ptr %.0, i64 %i.i
  br label %vector.body794

vector.body794:                                   ; preds = %vector.body794, %vector.ph792
  %index795 = phi i64 [ 0, %vector.ph792 ], [ %index.next802, %vector.body794 ] ; 2 uses
  %i.gg = shl i64 %index795, 3                    ; 2 uses
  %next.gep796 = getelementptr i8, ptr %.2224, i64 %i.gg ; 3 uses
  %next.gep797 = getelementptr i8, ptr %.0, i64 %i.gg ; 3 uses
  %i.gh = getelementptr i8, ptr %next.gep797, i64 16 ; 2 uses
  %wide.load798 = load <2 x i64>, ptr %next.gep797, align 8, !tbaa !106, !alias.scope !117, !noalias !118
  %wide.load799 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !106, !alias.scope !117, !noalias !118
  %i.gi = getelementptr i8, ptr %next.gep796, i64 16 ; 2 uses
  %wide.load800 = load <2 x i64>, ptr %next.gep796, align 8, !tbaa !106, !alias.scope !118
  %wide.load801 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !106, !alias.scope !118
  store <2 x i64> %wide.load800, ptr %next.gep797, align 8, !tbaa !106, !alias.scope !117, !noalias !118
  store <2 x i64> %wide.load801, ptr %i.gh, align 8, !tbaa !106, !alias.scope !117, !noalias !118
  store <2 x i64> %wide.load798, ptr %next.gep796, align 8, !tbaa !106, !alias.scope !118
  store <2 x i64> %wide.load799, ptr %i.gi, align 8, !tbaa !106, !alias.scope !118
  %index.next802 = add nuw i64 %index795, 4       ; 2 uses
  %i.gj = icmp eq i64 %index.next802, %n.vec793
  br i1 %i.gj, label %middle.block803, label %vector.body794, !llvm.loop !34

middle.block803:                                  ; preds = %vector.body794
  br i1 %cmp.n804, label %swapfunc.exit271, label %.preheader396.preheader929

.preheader396.preheader929:                       ; preds = %vector.memcheck784, %.preheader396.preheader, %middle.block803
  %.022.i267.ph = phi ptr [ %.2224, %vector.memcheck784 ], [ %.2224, %.preheader396.preheader ], [ %i.ge, %middle.block803 ] ; 2 uses
  %.021.i268.ph = phi ptr [ %.0, %vector.memcheck784 ], [ %.0, %.preheader396.preheader ], [ %i.gf, %middle.block803 ] ; 2 uses
  %.0.i269.ph = phi i64 [ %i.d, %vector.memcheck784 ], [ %i.d, %.preheader396.preheader ], [ %i.j, %middle.block803 ] ; 4 uses
  %i.gk = add nsw i64 %.0.i269.ph, -1
  %xtraiter947 = and i64 %.0.i269.ph, 3           ; 2 uses
  %lcmp.mod948.not = icmp eq i64 %xtraiter947, 0
  br i1 %lcmp.mod948.not, label %.preheader396.prol.loopexit, label %.preheader396.prol

.preheader396.prol:                               ; preds = %.preheader396.preheader929, %.preheader396.prol
  %.022.i267.prol = phi ptr [ %i.go, %.preheader396.prol ], [ %.022.i267.ph, %.preheader396.preheader929 ] ; 3 uses
  %.021.i268.prol = phi ptr [ %i.gn, %.preheader396.prol ], [ %.021.i268.ph, %.preheader396.preheader929 ] ; 3 uses
  %.0.i269.prol = phi i64 [ %i.gp, %.preheader396.prol ], [ %.0.i269.ph, %.preheader396.preheader929 ]
  %prol.iter949 = phi i64 [ %prol.iter949.next, %.preheader396.prol ], [ 0, %.preheader396.preheader929 ]
  %i.gl = load i64, ptr %.021.i268.prol, align 8, !tbaa !106
  %i.gm = load i64, ptr %.022.i267.prol, align 8, !tbaa !106
  %i.gn = getelementptr inbounds nuw i8, ptr %.021.i268.prol, i64 8 ; 2 uses
  store i64 %i.gm, ptr %.021.i268.prol, align 8, !tbaa !106
  %i.go = getelementptr inbounds nuw i8, ptr %.022.i267.prol, i64 8 ; 2 uses
  store i64 %i.gl, ptr %.022.i267.prol, align 8, !tbaa !106
  %i.gp = add i64 %.0.i269.prol, -1               ; 2 uses
  %prol.iter949.next = add i64 %prol.iter949, 1   ; 2 uses
  %prol.iter949.cmp.not = icmp eq i64 %prol.iter949.next, %xtraiter947
  br i1 %prol.iter949.cmp.not, label %.preheader396.prol.loopexit, label %.preheader396.prol, !llvm.loop !35

.preheader396.prol.loopexit:                      ; preds = %.preheader396.prol, %.preheader396.preheader929
  %.022.i267.unr = phi ptr [ %.022.i267.ph, %.preheader396.preheader929 ], [ %i.go, %.preheader396.prol ]
  %.021.i268.unr = phi ptr [ %.021.i268.ph, %.preheader396.preheader929 ], [ %i.gn, %.preheader396.prol ]
  %.0.i269.unr = phi i64 [ %.0.i269.ph, %.preheader396.preheader929 ], [ %i.gp, %.preheader396.prol ]
  %i.gq = icmp ult i64 %i.gk, 3
  br i1 %i.gq, label %swapfunc.exit271, label %.preheader396

.preheader396:                                    ; preds = %.preheader396.prol.loopexit, %.preheader396
  %.022.i267 = phi ptr [ %i.hg, %.preheader396 ], [ %.022.i267.unr, %.preheader396.prol.loopexit ] ; 6 uses
  %.021.i268 = phi ptr [ %i.hf, %.preheader396 ], [ %.021.i268.unr, %.preheader396.prol.loopexit ] ; 6 uses
  %.0.i269 = phi i64 [ %i.hh, %.preheader396 ], [ %.0.i269.unr, %.preheader396.prol.loopexit ]
  %i.gr = load i64, ptr %.021.i268, align 8, !tbaa !106
  %i.gs = load i64, ptr %.022.i267, align 8, !tbaa !106
  %i.gt = getelementptr inbounds nuw i8, ptr %.021.i268, i64 8 ; 2 uses
  store i64 %i.gs, ptr %.021.i268, align 8, !tbaa !106
  %i.gu = getelementptr inbounds nuw i8, ptr %.022.i267, i64 8 ; 2 uses
  store i64 %i.gr, ptr %.022.i267, align 8, !tbaa !106
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !106
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !106
  %i.gx = getelementptr inbounds nuw i8, ptr %.021.i268, i64 16 ; 2 uses
  store i64 %i.gw, ptr %i.gt, align 8, !tbaa !106
  %i.gy = getelementptr inbounds nuw i8, ptr %.022.i267, i64 16 ; 2 uses
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !106
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !106
  %i.ha = load i64, ptr %i.gy, align 8, !tbaa !106
  %i.hb = getelementptr inbounds nuw i8, ptr %.021.i268, i64 24 ; 2 uses
  store i64 %i.ha, ptr %i.gx, align 8, !tbaa !106
  %i.hc = getelementptr inbounds nuw i8, ptr %.022.i267, i64 24 ; 2 uses
  store i64 %i.gz, ptr %i.gy, align 8, !tbaa !106
  %i.hd = load i64, ptr %i.hb, align 8, !tbaa !106
  %i.he = load i64, ptr %i.hc, align 8, !tbaa !106
  %i.hf = getelementptr inbounds nuw i8, ptr %.021.i268, i64 32
  store i64 %i.he, ptr %i.hb, align 8, !tbaa !106
  %i.hg = getelementptr inbounds nuw i8, ptr %.022.i267, i64 32
  store i64 %i.hd, ptr %i.hc, align 8, !tbaa !106
  %i.hh = add i64 %.0.i269, -4                    ; 2 uses
  %.not23.i270.3 = icmp eq i64 %i.hh, 0
  br i1 %.not23.i270.3, label %swapfunc.exit271, label %.preheader396, !llvm.loop !36

.preheader.i262:                                  ; preds = %.preheader.i262.prol.loopexit, %.preheader.i262
  %.020.i263 = phi i64 [ %i.hy, %.preheader.i262 ], [ %.020.i263.unr, %.preheader.i262.prol.loopexit ]
  %.019.i264 = phi ptr [ %i.hw, %.preheader.i262 ], [ %.019.i264.unr, %.preheader.i262.prol.loopexit ] ; 6 uses
  %.018.i265 = phi ptr [ %i.hx, %.preheader.i262 ], [ %.018.i265.unr, %.preheader.i262.prol.loopexit ] ; 6 uses
  %i.hi = load i8, ptr %.019.i264, align 1, !tbaa !113
  %i.hj = load i8, ptr %.018.i265, align 1, !tbaa !113
  %i.hk = getelementptr inbounds nuw i8, ptr %.019.i264, i64 1 ; 2 uses
  store i8 %i.hj, ptr %.019.i264, align 1, !tbaa !113
  %i.hl = getelementptr inbounds nuw i8, ptr %.018.i265, i64 1 ; 2 uses
  store i8 %i.hi, ptr %.018.i265, align 1, !tbaa !113
  %i.hm = load i8, ptr %i.hk, align 1, !tbaa !113
  %i.hn = load i8, ptr %i.hl, align 1, !tbaa !113
  %i.ho = getelementptr inbounds nuw i8, ptr %.019.i264, i64 2 ; 2 uses
  store i8 %i.hn, ptr %i.hk, align 1, !tbaa !113
  %i.hp = getelementptr inbounds nuw i8, ptr %.018.i265, i64 2 ; 2 uses
  store i8 %i.hm, ptr %i.hl, align 1, !tbaa !113
  %i.hq = load i8, ptr %i.ho, align 1, !tbaa !113
  %i.hr = load i8, ptr %i.hp, align 1, !tbaa !113
  %i.hs = getelementptr inbounds nuw i8, ptr %.019.i264, i64 3 ; 2 uses
  store i8 %i.hr, ptr %i.ho, align 1, !tbaa !113
  %i.ht = getelementptr inbounds nuw i8, ptr %.018.i265, i64 3 ; 2 uses
  store i8 %i.hq, ptr %i.hp, align 1, !tbaa !113
  %i.hu = load i8, ptr %i.hs, align 1, !tbaa !113
  %i.hv = load i8, ptr %i.ht, align 1, !tbaa !113
  %i.hw = getelementptr inbounds nuw i8, ptr %.019.i264, i64 4
  store i8 %i.hv, ptr %i.hs, align 1, !tbaa !113
  %i.hx = getelementptr inbounds nuw i8, ptr %.018.i265, i64 4
  store i8 %i.hu, ptr %i.ht, align 1, !tbaa !113
  %i.hy = add i64 %.020.i263, -4                  ; 2 uses
  %.not.i266.3 = icmp eq i64 %i.hy, 0
  br i1 %.not.i266.3, label %swapfunc.exit271, label %.preheader.i262, !llvm.loop !37

swapfunc.exit271:                                 ; preds = %.preheader.i262.prol.loopexit, %.preheader.i262, %.preheader396.prol.loopexit, %.preheader396, %middle.block829, %vec.epilog.middle.block845, %middle.block803, %bb.v
  %i.hz = getelementptr inbounds nuw i8, ptr %.0, i64 %2 ; 2 uses
  %i.ia = add i64 %.0214, -1
  %i.ib = mul i64 %i.ia, %2
  %i.ic = getelementptr i8, ptr %.0, i64 %i.ib    ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %swapfunc.exit301, %swapfunc.exit271
  %.0227 = phi ptr [ %i.ic, %swapfunc.exit271 ], [ %.1228351, %swapfunc.exit301 ] ; 2 uses
  %.0219 = phi ptr [ %i.ic, %swapfunc.exit271 ], [ %i.qf, %swapfunc.exit301 ] ; 10 uses
  %.0216 = phi ptr [ %i.hz, %swapfunc.exit271 ], [ %i.qe, %swapfunc.exit301 ] ; 6 uses
  %.0215 = phi ptr [ %i.hz, %swapfunc.exit271 ], [ %.1.lcssa, %swapfunc.exit301 ] ; 3 uses
  %.not250339 = icmp ugt ptr %.0216, %.0219
  br i1 %.not250339, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.x
  br i1 %i.fm, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.id = getelementptr i8, ptr %.0216, i64 %i.e
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.z
  %.1342.us = phi ptr [ %.2.us, %bb.z ], [ %.0215, %.lr.ph ] ; 5 uses
  %.1217340.us = phi ptr [ %i.ik, %bb.z ], [ %.0216, %.lr.ph ] ; 5 uses
  %i.ie = tail call i32 %3(ptr noundef %.1217340.us, ptr noundef %.0) #2 ; 2 uses
  %i.if = icmp slt i32 %i.ie, 1
  br i1 %i.if, label %bb.y, label %.critedge2

bb.y:                                             ; preds = %.lr.ph.split.us
  %i.ig = icmp eq i32 %i.ie, 0
  br i1 %i.ig, label %swapfunc.exit281.us, label %bb.z

swapfunc.exit281.us:                              ; preds = %bb.y
  %i.ih = load i64, ptr %.1342.us, align 8, !tbaa !106
  %i.ii = load i64, ptr %.1217340.us, align 8, !tbaa !106
  store i64 %i.ii, ptr %.1342.us, align 8, !tbaa !106
  store i64 %i.ih, ptr %.1217340.us, align 8, !tbaa !106
  %i.ij = getelementptr inbounds nuw i8, ptr %.1342.us, i64 %2
  br label %bb.z

bb.z:                                             ; preds = %swapfunc.exit281.us, %bb.y
  %.2.us = phi ptr [ %i.ij, %swapfunc.exit281.us ], [ %.1342.us, %bb.y ] ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.1217340.us, i64 %2 ; 3 uses
  %.not250.us = icmp ugt ptr %i.ik, %.0219
  br i1 %.not250.us, label %.critedge2, label %.lr.ph.split.us, !llvm.loop !38

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.ac
  %indvar718 = phi i64 [ %indvar.next719, %bb.ac ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %.1342 = phi ptr [ %.2, %bb.ac ], [ %.0215, %.lr.ph.split.preheader ] ; 17 uses
  %.1217340 = phi ptr [ %i.kz, %bb.ac ], [ %.0216, %.lr.ph.split.preheader ] ; 15 uses
  %i.il = tail call i32 %3(ptr noundef %.1217340, ptr noundef %.0) #2 ; 2 uses
  %i.im = icmp slt i32 %i.il, 1
  br i1 %i.im, label %bb.aa, label %.critedge2

bb.aa:                                            ; preds = %.lr.ph.split
  %i.in = icmp eq i32 %i.il, 0
  br i1 %i.in, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  br i1 %or.cond, label %.preheader386.preheader, label %iter.check765

iter.check765:                                    ; preds = %bb.ab
  br i1 %min.iters.check749, label %.preheader.i272.preheader, label %vector.memcheck742

vector.memcheck742:                               ; preds = %iter.check765
  %scevgep743 = getelementptr i8, ptr %.1342, i64 %2
  %14 = add i64 %indvar718, 1
  %15 = mul i64 %2, %14
  %16 = getelementptr i8, ptr %.0216, i64 %15
  %bound0745 = icmp ult ptr %.1342, %16
  %bound1746 = icmp ult ptr %.1217340, %scevgep743
  %found.conflict747 = and i1 %bound0745, %bound1746
  br i1 %found.conflict747, label %.preheader.i272.preheader, label %vector.main.loop.iter.check750

vector.main.loop.iter.check750:                   ; preds = %vector.memcheck742
  br i1 %min.iters.check751, label %vec.epilog.ph769, label %vector.ph752.a

vector.ph752.a:                                   ; preds = %vector.main.loop.iter.check750
  %i.io = getelementptr i8, ptr %.1342, i64 %n.vec753.a
  %i.ip = getelementptr i8, ptr %.1217340, i64 %n.vec753.a
  br label %vector.body754.a

vector.body754.a:                                 ; preds = %vector.ph752.a, %vector.body754.a
  %index755.a = phi i64 [ 0, %vector.ph752.a ], [ %index.next762.a, %vector.body754.a ] ; 3 uses
  %next.gep756.a = getelementptr i8, ptr %.1342, i64 %index755.a ; 3 uses
  %next.gep757.a = getelementptr i8, ptr %.1217340, i64 %index755.a ; 3 uses
  %i.iq = getelementptr i8, ptr %next.gep756.a, i64 16 ; 2 uses
  %wide.load758.a = load <16 x i8>, ptr %next.gep756.a, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  %wide.load759.a = load <16 x i8>, ptr %i.iq, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  %i.ir = getelementptr i8, ptr %next.gep757.a, i64 16 ; 2 uses
  %wide.load760.a = load <16 x i8>, ptr %next.gep757.a, align 1, !tbaa !113, !alias.scope !120
  %wide.load761.a = load <16 x i8>, ptr %i.ir, align 1, !tbaa !113, !alias.scope !120
  store <16 x i8> %wide.load760.a, ptr %next.gep756.a, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  store <16 x i8> %wide.load761.a, ptr %i.iq, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  store <16 x i8> %wide.load758.a, ptr %next.gep757.a, align 1, !tbaa !113, !alias.scope !120
  store <16 x i8> %wide.load759.a, ptr %i.ir, align 1, !tbaa !113, !alias.scope !120
  %index.next762.a = add nuw i64 %index755.a, 32  ; 2 uses
  %i.is = icmp eq i64 %index.next762.a, %n.vec753.a
  br i1 %i.is, label %middle.block763.a, label %vector.body754.a, !llvm.loop !42

middle.block763.a:                                ; preds = %vector.body754.a
  br i1 %cmp.n764.a, label %swapfunc.exit281, label %vec.epilog.iter.check766

vec.epilog.iter.check766:                         ; preds = %middle.block763.a
  br i1 %min.epilog.iters.check768, label %.preheader.i272.preheader, label %vec.epilog.ph769, !prof !114

vec.epilog.ph769:                                 ; preds = %vector.main.loop.iter.check750, %vec.epilog.iter.check766
  %vec.epilog.resume.val770 = phi i64 [ %n.vec753.a, %vec.epilog.iter.check766 ], [ 0, %vector.main.loop.iter.check750 ]
  %i.it = getelementptr i8, ptr %.1342, i64 %n.vec771
  %i.iu = getelementptr i8, ptr %.1217340, i64 %n.vec771
  br label %vec.epilog.vector.body772

vec.epilog.vector.body772:                        ; preds = %vec.epilog.vector.body772, %vec.epilog.ph769
  %index773 = phi i64 [ %vec.epilog.resume.val770, %vec.epilog.ph769 ], [ %index.next778, %vec.epilog.vector.body772 ] ; 3 uses
  %next.gep774 = getelementptr i8, ptr %.1342, i64 %index773 ; 2 uses
  %next.gep775 = getelementptr i8, ptr %.1217340, i64 %index773 ; 2 uses
  %wide.load776 = load <4 x i8>, ptr %next.gep774, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  %wide.load777 = load <4 x i8>, ptr %next.gep775, align 1, !tbaa !113, !alias.scope !120
  store <4 x i8> %wide.load777, ptr %next.gep774, align 1, !tbaa !113, !alias.scope !119, !noalias !120
  store <4 x i8> %wide.load776, ptr %next.gep775, align 1, !tbaa !113, !alias.scope !120
  %index.next778 = add nuw i64 %index773, 4       ; 2 uses
  %i.iv = icmp eq i64 %index.next778, %n.vec771
  br i1 %i.iv, label %vec.epilog.middle.block779, label %vec.epilog.vector.body772, !llvm.loop !43

vec.epilog.middle.block779:                       ; preds = %vec.epilog.vector.body772
  br i1 %cmp.n780, label %swapfunc.exit281, label %.preheader.i272.preheader

.preheader.i272.preheader:                        ; preds = %iter.check765, %vector.memcheck742, %vec.epilog.iter.check766, %vec.epilog.middle.block779
  %.020.i273.ph = phi i64 [ %2, %iter.check765 ], [ %2, %vector.memcheck742 ], [ %i.l, %vec.epilog.iter.check766 ], [ %i.m, %vec.epilog.middle.block779 ] ; 4 uses
  %.019.i274.ph = phi ptr [ %.1342, %iter.check765 ], [ %.1342, %vector.memcheck742 ], [ %i.io, %vec.epilog.iter.check766 ], [ %i.it, %vec.epilog.middle.block779 ] ; 2 uses
  %.018.i275.ph = phi ptr [ %.1217340, %iter.check765 ], [ %.1217340, %vector.memcheck742 ], [ %i.ip, %vec.epilog.iter.check766 ], [ %i.iu, %vec.epilog.middle.block779 ] ; 2 uses
  %i.iw = add i64 %.020.i273.ph, -1
  %xtraiter950 = and i64 %.020.i273.ph, 3         ; 2 uses
  %lcmp.mod951.not = icmp eq i64 %xtraiter950, 0
  br i1 %lcmp.mod951.not, label %.preheader.i272.prol.loopexit, label %.preheader.i272.prol

.preheader.i272.prol:                             ; preds = %.preheader.i272.preheader, %.preheader.i272.prol
  %.020.i273.prol = phi i64 [ %i.jb, %.preheader.i272.prol ], [ %.020.i273.ph, %.preheader.i272.preheader ]
  %.019.i274.prol = phi ptr [ %i.iz, %.preheader.i272.prol ], [ %.019.i274.ph, %.preheader.i272.preheader ] ; 3 uses
  %.018.i275.prol = phi ptr [ %i.ja, %.preheader.i272.prol ], [ %.018.i275.ph, %.preheader.i272.preheader ] ; 3 uses
  %prol.iter952 = phi i64 [ %prol.iter952.next, %.preheader.i272.prol ], [ 0, %.preheader.i272.preheader ]
  %i.ix = load i8, ptr %.019.i274.prol, align 1, !tbaa !113
  %i.iy = load i8, ptr %.018.i275.prol, align 1, !tbaa !113
  %i.iz = getelementptr inbounds nuw i8, ptr %.019.i274.prol, i64 1 ; 2 uses
  store i8 %i.iy, ptr %.019.i274.prol, align 1, !tbaa !113
  %i.ja = getelementptr inbounds nuw i8, ptr %.018.i275.prol, i64 1 ; 2 uses
  store i8 %i.ix, ptr %.018.i275.prol, align 1, !tbaa !113
  %i.jb = add i64 %.020.i273.prol, -1             ; 2 uses
  %prol.iter952.next = add i64 %prol.iter952, 1   ; 2 uses
  %prol.iter952.cmp.not = icmp eq i64 %prol.iter952.next, %xtraiter950
  br i1 %prol.iter952.cmp.not, label %.preheader.i272.prol.loopexit, label %.preheader.i272.prol, !llvm.loop !44

.preheader.i272.prol.loopexit:                    ; preds = %.preheader.i272.prol, %.preheader.i272.preheader
  %.020.i273.unr = phi i64 [ %.020.i273.ph, %.preheader.i272.preheader ], [ %i.jb, %.preheader.i272.prol ]
  %.019.i274.unr = phi ptr [ %.019.i274.ph, %.preheader.i272.preheader ], [ %i.iz, %.preheader.i272.prol ]
  %.018.i275.unr = phi ptr [ %.018.i275.ph, %.preheader.i272.preheader ], [ %i.ja, %.preheader.i272.prol ]
  %i.jc = icmp ult i64 %i.iw, 3
  br i1 %i.jc, label %swapfunc.exit281, label %.preheader.i272

.preheader386.preheader:                          ; preds = %bb.ab
  br i1 %min.iters.check725, label %.preheader386.preheader919, label %vector.memcheck716

vector.memcheck716:                               ; preds = %.preheader386.preheader
  %scevgep717 = getelementptr i8, ptr %.1342, i64 %i.e
  %17 = mul i64 %indvar718, %2
  %18 = getelementptr i8, ptr %i.id, i64 %17
  %bound0721 = icmp ult ptr %.1342, %18
  %bound1722 = icmp ult ptr %.1217340, %scevgep717
  %found.conflict723 = and i1 %bound0721, %bound1722
  br i1 %found.conflict723, label %.preheader386.preheader919, label %vector.ph726

vector.ph726:                                     ; preds = %vector.memcheck716
  %i.jd = getelementptr i8, ptr %.1217340, i64 %i.n
  %i.je = getelementptr i8, ptr %.1342, i64 %i.n
  br label %vector.body728

vector.body728:                                   ; preds = %vector.body728, %vector.ph726
  %index729 = phi i64 [ 0, %vector.ph726 ], [ %index.next736, %vector.body728 ] ; 2 uses
  %i.jf = shl i64 %index729, 3                    ; 2 uses
  %next.gep730 = getelementptr i8, ptr %.1217340, i64 %i.jf ; 3 uses
  %next.gep731 = getelementptr i8, ptr %.1342, i64 %i.jf ; 3 uses
  %i.jg = getelementptr i8, ptr %next.gep731, i64 16 ; 2 uses
  %wide.load732 = load <2 x i64>, ptr %next.gep731, align 8, !tbaa !106, !alias.scope !121, !noalias !122
  %wide.load733 = load <2 x i64>, ptr %i.jg, align 8, !tbaa !106, !alias.scope !121, !noalias !122
  %i.jh = getelementptr i8, ptr %next.gep730, i64 16 ; 2 uses
  %wide.load734 = load <2 x i64>, ptr %next.gep730, align 8, !tbaa !106, !alias.scope !122
  %wide.load735 = load <2 x i64>, ptr %i.jh, align 8, !tbaa !106, !alias.scope !122
  store <2 x i64> %wide.load734, ptr %next.gep731, align 8, !tbaa !106, !alias.scope !121, !noalias !122
  store <2 x i64> %wide.load735, ptr %i.jg, align 8, !tbaa !106, !alias.scope !121, !noalias !122
  store <2 x i64> %wide.load732, ptr %next.gep730, align 8, !tbaa !106, !alias.scope !122
  store <2 x i64> %wide.load733, ptr %i.jh, align 8, !tbaa !106, !alias.scope !122
  %index.next736 = add nuw i64 %index729, 4       ; 2 uses
  %i.ji = icmp eq i64 %index.next736, %n.vec727
  br i1 %i.ji, label %middle.block737, label %vector.body728, !llvm.loop !48

middle.block737:                                  ; preds = %vector.body728
  br i1 %cmp.n738, label %swapfunc.exit281, label %.preheader386.preheader919

.preheader386.preheader919:                       ; preds = %vector.memcheck716, %.preheader386.preheader, %middle.block737
  %.022.i277.ph = phi ptr [ %.1217340, %vector.memcheck716 ], [ %.1217340, %.preheader386.preheader ], [ %i.jd, %middle.block737 ] ; 2 uses
  %.021.i278.ph = phi ptr [ %.1342, %vector.memcheck716 ], [ %.1342, %.preheader386.preheader ], [ %i.je, %middle.block737 ] ; 2 uses
  %.0.i279.ph = phi i64 [ %i.d, %vector.memcheck716 ], [ %i.d, %.preheader386.preheader ], [ %i.o, %middle.block737 ] ; 4 uses
  %i.jj = add nsw i64 %.0.i279.ph, -1
  %xtraiter953 = and i64 %.0.i279.ph, 3           ; 2 uses
  %lcmp.mod954.not = icmp eq i64 %xtraiter953, 0
  br i1 %lcmp.mod954.not, label %.preheader386.prol.loopexit, label %.preheader386.prol

.preheader386.prol:                               ; preds = %.preheader386.preheader919, %.preheader386.prol
  %.022.i277.prol = phi ptr [ %i.jn, %.preheader386.prol ], [ %.022.i277.ph, %.preheader386.preheader919 ] ; 3 uses
  %.021.i278.prol = phi ptr [ %i.jm, %.preheader386.prol ], [ %.021.i278.ph, %.preheader386.preheader919 ] ; 3 uses
  %.0.i279.prol = phi i64 [ %i.jo, %.preheader386.prol ], [ %.0.i279.ph, %.preheader386.preheader919 ]
  %prol.iter955 = phi i64 [ %prol.iter955.next, %.preheader386.prol ], [ 0, %.preheader386.preheader919 ]
  %i.jk = load i64, ptr %.021.i278.prol, align 8, !tbaa !106
  %i.jl = load i64, ptr %.022.i277.prol, align 8, !tbaa !106
  %i.jm = getelementptr inbounds nuw i8, ptr %.021.i278.prol, i64 8 ; 2 uses
  store i64 %i.jl, ptr %.021.i278.prol, align 8, !tbaa !106
  %i.jn = getelementptr inbounds nuw i8, ptr %.022.i277.prol, i64 8 ; 2 uses
  store i64 %i.jk, ptr %.022.i277.prol, align 8, !tbaa !106
  %i.jo = add i64 %.0.i279.prol, -1               ; 2 uses
  %prol.iter955.next = add i64 %prol.iter955, 1   ; 2 uses
  %prol.iter955.cmp.not = icmp eq i64 %prol.iter955.next, %xtraiter953
  br i1 %prol.iter955.cmp.not, label %.preheader386.prol.loopexit, label %.preheader386.prol, !llvm.loop !49

.preheader386.prol.loopexit:                      ; preds = %.preheader386.prol, %.preheader386.preheader919
  %.022.i277.unr = phi ptr [ %.022.i277.ph, %.preheader386.preheader919 ], [ %i.jn, %.preheader386.prol ]
  %.021.i278.unr = phi ptr [ %.021.i278.ph, %.preheader386.preheader919 ], [ %i.jm, %.preheader386.prol ]
  %.0.i279.unr = phi i64 [ %.0.i279.ph, %.preheader386.preheader919 ], [ %i.jo, %.preheader386.prol ]
  %i.jp = icmp ult i64 %i.jj, 3
  br i1 %i.jp, label %swapfunc.exit281, label %.preheader386

.preheader386:                                    ; preds = %.preheader386.prol.loopexit, %.preheader386
  %.022.i277 = phi ptr [ %i.kf, %.preheader386 ], [ %.022.i277.unr, %.preheader386.prol.loopexit ] ; 6 uses
  %.021.i278 = phi ptr [ %i.ke, %.preheader386 ], [ %.021.i278.unr, %.preheader386.prol.loopexit ] ; 6 uses
  %.0.i279 = phi i64 [ %i.kg, %.preheader386 ], [ %.0.i279.unr, %.preheader386.prol.loopexit ]
  %i.jq = load i64, ptr %.021.i278, align 8, !tbaa !106
  %i.jr = load i64, ptr %.022.i277, align 8, !tbaa !106
  %i.js = getelementptr inbounds nuw i8, ptr %.021.i278, i64 8 ; 2 uses
  store i64 %i.jr, ptr %.021.i278, align 8, !tbaa !106
  %i.jt = getelementptr inbounds nuw i8, ptr %.022.i277, i64 8 ; 2 uses
  store i64 %i.jq, ptr %.022.i277, align 8, !tbaa !106
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !106
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !106
  %i.jw = getelementptr inbounds nuw i8, ptr %.021.i278, i64 16 ; 2 uses
  store i64 %i.jv, ptr %i.js, align 8, !tbaa !106
  %i.jx = getelementptr inbounds nuw i8, ptr %.022.i277, i64 16 ; 2 uses
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !106
  %i.jy = load i64, ptr %i.jw, align 8, !tbaa !106
  %i.jz = load i64, ptr %i.jx, align 8, !tbaa !106
  %i.ka = getelementptr inbounds nuw i8, ptr %.021.i278, i64 24 ; 2 uses
  store i64 %i.jz, ptr %i.jw, align 8, !tbaa !106
  %i.kb = getelementptr inbounds nuw i8, ptr %.022.i277, i64 24 ; 2 uses
  store i64 %i.jy, ptr %i.jx, align 8, !tbaa !106
  %i.kc = load i64, ptr %i.ka, align 8, !tbaa !106
  %i.kd = load i64, ptr %i.kb, align 8, !tbaa !106
  %i.ke = getelementptr inbounds nuw i8, ptr %.021.i278, i64 32
  store i64 %i.kd, ptr %i.ka, align 8, !tbaa !106
  %i.kf = getelementptr inbounds nuw i8, ptr %.022.i277, i64 32
  store i64 %i.kc, ptr %i.kb, align 8, !tbaa !106
  %i.kg = add i64 %.0.i279, -4                    ; 2 uses
  %.not23.i280.3 = icmp eq i64 %i.kg, 0
  br i1 %.not23.i280.3, label %swapfunc.exit281, label %.preheader386, !llvm.loop !50

.preheader.i272:                                  ; preds = %.preheader.i272.prol.loopexit, %.preheader.i272
  %.020.i273 = phi i64 [ %i.kx, %.preheader.i272 ], [ %.020.i273.unr, %.preheader.i272.prol.loopexit ]
  %.019.i274 = phi ptr [ %i.kv, %.preheader.i272 ], [ %.019.i274.unr, %.preheader.i272.prol.loopexit ] ; 6 uses
  %.018.i275 = phi ptr [ %i.kw, %.preheader.i272 ], [ %.018.i275.unr, %.preheader.i272.prol.loopexit ] ; 6 uses
  %i.kh = load i8, ptr %.019.i274, align 1, !tbaa !113
  %i.ki = load i8, ptr %.018.i275, align 1, !tbaa !113
  %i.kj = getelementptr inbounds nuw i8, ptr %.019.i274, i64 1 ; 2 uses
  store i8 %i.ki, ptr %.019.i274, align 1, !tbaa !113
  %i.kk = getelementptr inbounds nuw i8, ptr %.018.i275, i64 1 ; 2 uses
  store i8 %i.kh, ptr %.018.i275, align 1, !tbaa !113
  %i.kl = load i8, ptr %i.kj, align 1, !tbaa !113
  %i.km = load i8, ptr %i.kk, align 1, !tbaa !113
  %i.kn = getelementptr inbounds nuw i8, ptr %.019.i274, i64 2 ; 2 uses
  store i8 %i.km, ptr %i.kj, align 1, !tbaa !113
  %i.ko = getelementptr inbounds nuw i8, ptr %.018.i275, i64 2 ; 2 uses
  store i8 %i.kl, ptr %i.kk, align 1, !tbaa !113
  %i.kp = load i8, ptr %i.kn, align 1, !tbaa !113
  %i.kq = load i8, ptr %i.ko, align 1, !tbaa !113
  %i.kr = getelementptr inbounds nuw i8, ptr %.019.i274, i64 3 ; 2 uses
  store i8 %i.kq, ptr %i.kn, align 1, !tbaa !113
  %i.ks = getelementptr inbounds nuw i8, ptr %.018.i275, i64 3 ; 2 uses
  store i8 %i.kp, ptr %i.ko, align 1, !tbaa !113
  %i.kt = load i8, ptr %i.kr, align 1, !tbaa !113
  %i.ku = load i8, ptr %i.ks, align 1, !tbaa !113
  %i.kv = getelementptr inbounds nuw i8, ptr %.019.i274, i64 4
  store i8 %i.ku, ptr %i.kr, align 1, !tbaa !113
  %i.kw = getelementptr inbounds nuw i8, ptr %.018.i275, i64 4
  store i8 %i.kt, ptr %i.ks, align 1, !tbaa !113
  %i.kx = add i64 %.020.i273, -4                  ; 2 uses
  %.not.i276.3 = icmp eq i64 %i.kx, 0
  br i1 %.not.i276.3, label %swapfunc.exit281, label %.preheader.i272, !llvm.loop !51

swapfunc.exit281:                                 ; preds = %.preheader.i272.prol.loopexit, %.preheader.i272, %.preheader386.prol.loopexit, %.preheader386, %middle.block763.a, %vec.epilog.middle.block779, %middle.block737
  %i.ky = getelementptr inbounds nuw i8, ptr %.1342, i64 %2
  br label %bb.ac

bb.ac:                                            ; preds = %swapfunc.exit281, %bb.aa
  %.2 = phi ptr [ %i.ky, %swapfunc.exit281 ], [ %.1342, %bb.aa ] ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.1217340, i64 %2 ; 3 uses
  %.not250 = icmp ugt ptr %i.kz, %.0219
  %indvar.next719 = add i64 %indvar718, 1
  br i1 %.not250, label %.critedge2, label %.lr.ph.split, !llvm.loop !38

.critedge2:                                       ; preds = %.lr.ph.split, %bb.ac, %.lr.ph.split.us, %bb.z, %bb.x
  %.1217.lcssa = phi ptr [ %.0216, %bb.x ], [ %i.ik, %bb.z ], [ %.1217340.us, %.lr.ph.split.us ], [ %i.kz, %bb.ac ], [ %.1217340, %.lr.ph.split ] ; 37 uses
  %.1.lcssa = phi ptr [ %.0215, %bb.x ], [ %.2.us, %bb.z ], [ %.1342.us, %.lr.ph.split.us ], [ %.2, %bb.ac ], [ %.1342, %.lr.ph.split ] ; 2 uses
  %.not251350 = icmp ugt ptr %.1217.lcssa, %.0219
  br i1 %.not251350, label %.critedge2._crit_edge, label %.lr.ph354.preheader

.lr.ph354.preheader:                              ; preds = %.critedge2
  %19 = getelementptr i8, ptr %.0219, i64 %2
  %20 = getelementptr i8, ptr %.0219, i64 %i.e
  br label %.lr.ph354

.lr.ph354:                                        ; preds = %.lr.ph354.preheader, %bb.ah
  %indvar = phi i64 [ %indvar.next, %bb.ah ], [ 0, %.lr.ph354.preheader ] ; 5 uses
  %.1220352 = phi ptr [ %i.nq, %bb.ah ], [ %.0219, %.lr.ph354.preheader ] ; 31 uses
  %.1228351 = phi ptr [ %.2229, %bb.ah ], [ %.0227, %.lr.ph354.preheader ] ; 19 uses
  %i.la = tail call i32 %3(ptr noundef %.1220352, ptr noundef %.0) #2 ; 2 uses
  %i.lb = icmp sgt i32 %i.la, -1
  br i1 %i.lb, label %bb.ad, label %.critedge4

bb.ad:                                            ; preds = %.lr.ph354
  %i.lc = icmp eq i32 %i.la, 0
  br i1 %i.lc, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  br i1 %i.fm, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.ld = load i64, ptr %.1220352, align 8, !tbaa !106
  %i.le = load i64, ptr %.1228351, align 8, !tbaa !106
  store i64 %i.le, ptr %.1220352, align 8, !tbaa !106
  store i64 %i.ld, ptr %.1228351, align 8, !tbaa !106
  br label %swapfunc.exit291

bb.ag:                                            ; preds = %bb.ae
  br i1 %or.cond, label %.preheader384.preheader, label %iter.check697

iter.check697:                                    ; preds = %bb.ag
  br i1 %min.iters.check681, label %.preheader.i282.preheader, label %vector.memcheck674

vector.memcheck674:                               ; preds = %iter.check697
  %21 = mul i64 %indvar, %i.a
  %22 = getelementptr i8, ptr %19, i64 %21
  %scevgep676 = getelementptr i8, ptr %.1228351, i64 %2
  %bound0677 = icmp ult ptr %.1220352, %scevgep676
  %bound1678 = icmp ult ptr %.1228351, %22
  %found.conflict679 = and i1 %bound0677, %bound1678
  br i1 %found.conflict679, label %.preheader.i282.preheader, label %vector.main.loop.iter.check682

vector.main.loop.iter.check682:                   ; preds = %vector.memcheck674
  br i1 %min.iters.check683, label %vec.epilog.ph701, label %vector.ph684

vector.ph684:                                     ; preds = %vector.main.loop.iter.check682
  %i.lf = getelementptr i8, ptr %.1220352, i64 %n.vec685
  %i.lg = getelementptr i8, ptr %.1228351, i64 %n.vec685
  br label %vector.body686

vector.body686:                                   ; preds = %vector.ph684, %vector.body686
  %index687 = phi i64 [ 0, %vector.ph684 ], [ %index.next694, %vector.body686 ] ; 3 uses
  %next.gep688 = getelementptr i8, ptr %.1220352, i64 %index687 ; 3 uses
  %next.gep689 = getelementptr i8, ptr %.1228351, i64 %index687 ; 3 uses
  %i.lh = getelementptr i8, ptr %next.gep688, i64 16 ; 2 uses
  %wide.load690 = load <16 x i8>, ptr %next.gep688, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  %wide.load691 = load <16 x i8>, ptr %i.lh, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  %i.li = getelementptr i8, ptr %next.gep689, i64 16 ; 2 uses
  %wide.load692 = load <16 x i8>, ptr %next.gep689, align 1, !tbaa !113, !alias.scope !124
  %wide.load693 = load <16 x i8>, ptr %i.li, align 1, !tbaa !113, !alias.scope !124
  store <16 x i8> %wide.load692, ptr %next.gep688, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  store <16 x i8> %wide.load693, ptr %i.lh, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  store <16 x i8> %wide.load690, ptr %next.gep689, align 1, !tbaa !113, !alias.scope !124
  store <16 x i8> %wide.load691, ptr %i.li, align 1, !tbaa !113, !alias.scope !124
  %index.next694 = add nuw i64 %index687, 32      ; 2 uses
  %i.lj = icmp eq i64 %index.next694, %n.vec685
  br i1 %i.lj, label %middle.block695, label %vector.body686, !llvm.loop !55

middle.block695:                                  ; preds = %vector.body686
  br i1 %cmp.n696, label %swapfunc.exit291, label %vec.epilog.iter.check698

vec.epilog.iter.check698:                         ; preds = %middle.block695
  br i1 %min.epilog.iters.check700, label %.preheader.i282.preheader, label %vec.epilog.ph701, !prof !114

vec.epilog.ph701:                                 ; preds = %vector.main.loop.iter.check682, %vec.epilog.iter.check698
  %vec.epilog.resume.val702 = phi i64 [ %n.vec685, %vec.epilog.iter.check698 ], [ 0, %vector.main.loop.iter.check682 ]
  %i.lk = getelementptr i8, ptr %.1220352, i64 %n.vec703
  %i.ll = getelementptr i8, ptr %.1228351, i64 %n.vec703
  br label %vec.epilog.vector.body704

vec.epilog.vector.body704:                        ; preds = %vec.epilog.vector.body704, %vec.epilog.ph701
  %index705 = phi i64 [ %vec.epilog.resume.val702, %vec.epilog.ph701 ], [ %index.next710, %vec.epilog.vector.body704 ] ; 3 uses
  %next.gep706 = getelementptr i8, ptr %.1220352, i64 %index705 ; 2 uses
  %next.gep707 = getelementptr i8, ptr %.1228351, i64 %index705 ; 2 uses
  %wide.load708 = load <4 x i8>, ptr %next.gep706, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  %wide.load709 = load <4 x i8>, ptr %next.gep707, align 1, !tbaa !113, !alias.scope !124
  store <4 x i8> %wide.load709, ptr %next.gep706, align 1, !tbaa !113, !alias.scope !123, !noalias !124
  store <4 x i8> %wide.load708, ptr %next.gep707, align 1, !tbaa !113, !alias.scope !124
  %index.next710 = add nuw i64 %index705, 4       ; 2 uses
  %i.lm = icmp eq i64 %index.next710, %n.vec703
  br i1 %i.lm, label %vec.epilog.middle.block711, label %vec.epilog.vector.body704, !llvm.loop !56

vec.epilog.middle.block711:                       ; preds = %vec.epilog.vector.body704
  br i1 %cmp.n712, label %swapfunc.exit291, label %.preheader.i282.preheader

.preheader.i282.preheader:                        ; preds = %iter.check697, %vector.memcheck674, %vec.epilog.iter.check698, %vec.epilog.middle.block711
  %.020.i283.ph = phi i64 [ %2, %iter.check697 ], [ %2, %vector.memcheck674 ], [ %i.q, %vec.epilog.iter.check698 ], [ %i.r, %vec.epilog.middle.block711 ] ; 4 uses
  %.019.i284.ph = phi ptr [ %.1220352, %iter.check697 ], [ %.1220352, %vector.memcheck674 ], [ %i.lf, %vec.epilog.iter.check698 ], [ %i.lk, %vec.epilog.middle.block711 ] ; 2 uses
  %.018.i285.ph = phi ptr [ %.1228351, %iter.check697 ], [ %.1228351, %vector.memcheck674 ], [ %i.lg, %vec.epilog.iter.check698 ], [ %i.ll, %vec.epilog.middle.block711 ] ; 2 uses
  %i.ln = add i64 %.020.i283.ph, -1
  %xtraiter956 = and i64 %.020.i283.ph, 3         ; 2 uses
  %lcmp.mod957.not = icmp eq i64 %xtraiter956, 0
  br i1 %lcmp.mod957.not, label %.preheader.i282.prol.loopexit, label %.preheader.i282.prol

.preheader.i282.prol:                             ; preds = %.preheader.i282.preheader, %.preheader.i282.prol
  %.020.i283.prol = phi i64 [ %i.ls, %.preheader.i282.prol ], [ %.020.i283.ph, %.preheader.i282.preheader ]
  %.019.i284.prol = phi ptr [ %i.lq, %.preheader.i282.prol ], [ %.019.i284.ph, %.preheader.i282.preheader ] ; 3 uses
  %.018.i285.prol = phi ptr [ %i.lr, %.preheader.i282.prol ], [ %.018.i285.ph, %.preheader.i282.preheader ] ; 3 uses
  %prol.iter958 = phi i64 [ %prol.iter958.next, %.preheader.i282.prol ], [ 0, %.preheader.i282.preheader ]
  %i.lo = load i8, ptr %.019.i284.prol, align 1, !tbaa !113
  %i.lp = load i8, ptr %.018.i285.prol, align 1, !tbaa !113
  %i.lq = getelementptr inbounds nuw i8, ptr %.019.i284.prol, i64 1 ; 2 uses
  store i8 %i.lp, ptr %.019.i284.prol, align 1, !tbaa !113
  %i.lr = getelementptr inbounds nuw i8, ptr %.018.i285.prol, i64 1 ; 2 uses
  store i8 %i.lo, ptr %.018.i285.prol, align 1, !tbaa !113
  %i.ls = add i64 %.020.i283.prol, -1             ; 2 uses
  %prol.iter958.next = add i64 %prol.iter958, 1   ; 2 uses
  %prol.iter958.cmp.not = icmp eq i64 %prol.iter958.next, %xtraiter956
  br i1 %prol.iter958.cmp.not, label %.preheader.i282.prol.loopexit, label %.preheader.i282.prol, !llvm.loop !57

.preheader.i282.prol.loopexit:                    ; preds = %.preheader.i282.prol, %.preheader.i282.preheader
  %.020.i283.unr = phi i64 [ %.020.i283.ph, %.preheader.i282.preheader ], [ %i.ls, %.preheader.i282.prol ]
  %.019.i284.unr = phi ptr [ %.019.i284.ph, %.preheader.i282.preheader ], [ %i.lq, %.preheader.i282.prol ]
  %.018.i285.unr = phi ptr [ %.018.i285.ph, %.preheader.i282.preheader ], [ %i.lr, %.preheader.i282.prol ]
  %i.lt = icmp ult i64 %i.ln, 3
  br i1 %i.lt, label %swapfunc.exit291, label %.preheader.i282

.preheader384.preheader:                          ; preds = %bb.ag
  br i1 %min.iters.check657, label %.preheader384.preheader917, label %vector.memcheck650

vector.memcheck650:                               ; preds = %.preheader384.preheader
  %23 = mul i64 %indvar, %i.a
  %24 = getelementptr i8, ptr %20, i64 %23
  %scevgep652 = getelementptr i8, ptr %.1228351, i64 %i.e
  %bound0653 = icmp ult ptr %.1220352, %scevgep652
  %bound1654 = icmp ult ptr %.1228351, %24
  %found.conflict655 = and i1 %bound0653, %bound1654
  br i1 %found.conflict655, label %.preheader384.preheader917, label %vector.ph658

vector.ph658:                                     ; preds = %vector.memcheck650
  %i.lu = getelementptr i8, ptr %.1228351, i64 %i.s
  %i.lv = getelementptr i8, ptr %.1220352, i64 %i.s
  br label %vector.body660

vector.body660:                                   ; preds = %vector.body660, %vector.ph658
  %index661 = phi i64 [ 0, %vector.ph658 ], [ %index.next668, %vector.body660 ] ; 2 uses
  %i.lw = shl i64 %index661, 3                    ; 2 uses
  %next.gep662 = getelementptr i8, ptr %.1228351, i64 %i.lw ; 3 uses
  %next.gep663 = getelementptr i8, ptr %.1220352, i64 %i.lw ; 3 uses
  %i.lx = getelementptr i8, ptr %next.gep663, i64 16 ; 2 uses
  %wide.load664 = load <2 x i64>, ptr %next.gep663, align 8, !tbaa !106, !alias.scope !125, !noalias !126
  %wide.load665 = load <2 x i64>, ptr %i.lx, align 8, !tbaa !106, !alias.scope !125, !noalias !126
  %i.ly = getelementptr i8, ptr %next.gep662, i64 16 ; 2 uses
  %wide.load666 = load <2 x i64>, ptr %next.gep662, align 8, !tbaa !106, !alias.scope !126
  %wide.load667 = load <2 x i64>, ptr %i.ly, align 8, !tbaa !106, !alias.scope !126
  store <2 x i64> %wide.load666, ptr %next.gep663, align 8, !tbaa !106, !alias.scope !125, !noalias !126
  store <2 x i64> %wide.load667, ptr %i.lx, align 8, !tbaa !106, !alias.scope !125, !noalias !126
  store <2 x i64> %wide.load664, ptr %next.gep662, align 8, !tbaa !106, !alias.scope !126
  store <2 x i64> %wide.load665, ptr %i.ly, align 8, !tbaa !106, !alias.scope !126
  %index.next668 = add nuw i64 %index661, 4       ; 2 uses
  %i.lz = icmp eq i64 %index.next668, %n.vec659
  br i1 %i.lz, label %middle.block669, label %vector.body660, !llvm.loop !61

middle.block669:                                  ; preds = %vector.body660
  br i1 %cmp.n670, label %swapfunc.exit291, label %.preheader384.preheader917

.preheader384.preheader917:                       ; preds = %vector.memcheck650, %.preheader384.preheader, %middle.block669
  %.022.i287.ph = phi ptr [ %.1228351, %vector.memcheck650 ], [ %.1228351, %.preheader384.preheader ], [ %i.lu, %middle.block669 ] ; 2 uses
  %.021.i288.ph = phi ptr [ %.1220352, %vector.memcheck650 ], [ %.1220352, %.preheader384.preheader ], [ %i.lv, %middle.block669 ] ; 2 uses
  %.0.i289.ph = phi i64 [ %i.d, %vector.memcheck650 ], [ %i.d, %.preheader384.preheader ], [ %i.t, %middle.block669 ] ; 4 uses
  %i.ma = add nsw i64 %.0.i289.ph, -1
  %xtraiter959 = and i64 %.0.i289.ph, 3           ; 2 uses
  %lcmp.mod960.not = icmp eq i64 %xtraiter959, 0
  br i1 %lcmp.mod960.not, label %.preheader384.prol.loopexit, label %.preheader384.prol

.preheader384.prol:                               ; preds = %.preheader384.preheader917, %.preheader384.prol
  %.022.i287.prol = phi ptr [ %i.me, %.preheader384.prol ], [ %.022.i287.ph, %.preheader384.preheader917 ] ; 3 uses
  %.021.i288.prol = phi ptr [ %i.md, %.preheader384.prol ], [ %.021.i288.ph, %.preheader384.preheader917 ] ; 3 uses
  %.0.i289.prol = phi i64 [ %i.mf, %.preheader384.prol ], [ %.0.i289.ph, %.preheader384.preheader917 ]
  %prol.iter961 = phi i64 [ %prol.iter961.next, %.preheader384.prol ], [ 0, %.preheader384.preheader917 ]
  %i.mb = load i64, ptr %.021.i288.prol, align 8, !tbaa !106
  %i.mc = load i64, ptr %.022.i287.prol, align 8, !tbaa !106
  %i.md = getelementptr inbounds nuw i8, ptr %.021.i288.prol, i64 8 ; 2 uses
  store i64 %i.mc, ptr %.021.i288.prol, align 8, !tbaa !106
  %i.me = getelementptr inbounds nuw i8, ptr %.022.i287.prol, i64 8 ; 2 uses
  store i64 %i.mb, ptr %.022.i287.prol, align 8, !tbaa !106
  %i.mf = add i64 %.0.i289.prol, -1               ; 2 uses
  %prol.iter961.next = add i64 %prol.iter961, 1   ; 2 uses
  %prol.iter961.cmp.not = icmp eq i64 %prol.iter961.next, %xtraiter959
  br i1 %prol.iter961.cmp.not, label %.preheader384.prol.loopexit, label %.preheader384.prol, !llvm.loop !62

.preheader384.prol.loopexit:                      ; preds = %.preheader384.prol, %.preheader384.preheader917
  %.022.i287.unr = phi ptr [ %.022.i287.ph, %.preheader384.preheader917 ], [ %i.me, %.preheader384.prol ]
  %.021.i288.unr = phi ptr [ %.021.i288.ph, %.preheader384.preheader917 ], [ %i.md, %.preheader384.prol ]
  %.0.i289.unr = phi i64 [ %.0.i289.ph, %.preheader384.preheader917 ], [ %i.mf, %.preheader384.prol ]
  %i.mg = icmp ult i64 %i.ma, 3
  br i1 %i.mg, label %swapfunc.exit291, label %.preheader384

.preheader384:                                    ; preds = %.preheader384.prol.loopexit, %.preheader384
  %.022.i287 = phi ptr [ %i.mw, %.preheader384 ], [ %.022.i287.unr, %.preheader384.prol.loopexit ] ; 6 uses
  %.021.i288 = phi ptr [ %i.mv, %.preheader384 ], [ %.021.i288.unr, %.preheader384.prol.loopexit ] ; 6 uses
  %.0.i289 = phi i64 [ %i.mx, %.preheader384 ], [ %.0.i289.unr, %.preheader384.prol.loopexit ]
  %i.mh = load i64, ptr %.021.i288, align 8, !tbaa !106
  %i.mi = load i64, ptr %.022.i287, align 8, !tbaa !106
  %i.mj = getelementptr inbounds nuw i8, ptr %.021.i288, i64 8 ; 2 uses
  store i64 %i.mi, ptr %.021.i288, align 8, !tbaa !106
  %i.mk = getelementptr inbounds nuw i8, ptr %.022.i287, i64 8 ; 2 uses
  store i64 %i.mh, ptr %.022.i287, align 8, !tbaa !106
  %i.ml = load i64, ptr %i.mj, align 8, !tbaa !106
  %i.mm = load i64, ptr %i.mk, align 8, !tbaa !106
  %i.mn = getelementptr inbounds nuw i8, ptr %.021.i288, i64 16 ; 2 uses
  store i64 %i.mm, ptr %i.mj, align 8, !tbaa !106
  %i.mo = getelementptr inbounds nuw i8, ptr %.022.i287, i64 16 ; 2 uses
  store i64 %i.ml, ptr %i.mk, align 8, !tbaa !106
  %i.mp = load i64, ptr %i.mn, align 8, !tbaa !106
  %i.mq = load i64, ptr %i.mo, align 8, !tbaa !106
  %i.mr = getelementptr inbounds nuw i8, ptr %.021.i288, i64 24 ; 2 uses
  store i64 %i.mq, ptr %i.mn, align 8, !tbaa !106
  %i.ms = getelementptr inbounds nuw i8, ptr %.022.i287, i64 24 ; 2 uses
  store i64 %i.mp, ptr %i.mo, align 8, !tbaa !106
  %i.mt = load i64, ptr %i.mr, align 8, !tbaa !106
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !106
  %i.mv = getelementptr inbounds nuw i8, ptr %.021.i288, i64 32
  store i64 %i.mu, ptr %i.mr, align 8, !tbaa !106
  %i.mw = getelementptr inbounds nuw i8, ptr %.022.i287, i64 32
  store i64 %i.mt, ptr %i.ms, align 8, !tbaa !106
  %i.mx = add i64 %.0.i289, -4                    ; 2 uses
  %.not23.i290.3 = icmp eq i64 %i.mx, 0
  br i1 %.not23.i290.3, label %swapfunc.exit291, label %.preheader384, !llvm.loop !63

.preheader.i282:                                  ; preds = %.preheader.i282.prol.loopexit, %.preheader.i282
  %.020.i283 = phi i64 [ %i.no, %.preheader.i282 ], [ %.020.i283.unr, %.preheader.i282.prol.loopexit ]
  %.019.i284 = phi ptr [ %i.nm, %.preheader.i282 ], [ %.019.i284.unr, %.preheader.i282.prol.loopexit ] ; 6 uses
  %.018.i285 = phi ptr [ %i.nn, %.preheader.i282 ], [ %.018.i285.unr, %.preheader.i282.prol.loopexit ] ; 6 uses
  %i.my = load i8, ptr %.019.i284, align 1, !tbaa !113
  %i.mz = load i8, ptr %.018.i285, align 1, !tbaa !113
  %i.na = getelementptr inbounds nuw i8, ptr %.019.i284, i64 1 ; 2 uses
  store i8 %i.mz, ptr %.019.i284, align 1, !tbaa !113
  %i.nb = getelementptr inbounds nuw i8, ptr %.018.i285, i64 1 ; 2 uses
  store i8 %i.my, ptr %.018.i285, align 1, !tbaa !113
  %i.nc = load i8, ptr %i.na, align 1, !tbaa !113
  %i.nd = load i8, ptr %i.nb, align 1, !tbaa !113
  %i.ne = getelementptr inbounds nuw i8, ptr %.019.i284, i64 2 ; 2 uses
  store i8 %i.nd, ptr %i.na, align 1, !tbaa !113
  %i.nf = getelementptr inbounds nuw i8, ptr %.018.i285, i64 2 ; 2 uses
  store i8 %i.nc, ptr %i.nb, align 1, !tbaa !113
  %i.ng = load i8, ptr %i.ne, align 1, !tbaa !113
  %i.nh = load i8, ptr %i.nf, align 1, !tbaa !113
  %i.ni = getelementptr inbounds nuw i8, ptr %.019.i284, i64 3 ; 2 uses
  store i8 %i.nh, ptr %i.ne, align 1, !tbaa !113
  %i.nj = getelementptr inbounds nuw i8, ptr %.018.i285, i64 3 ; 2 uses
  store i8 %i.ng, ptr %i.nf, align 1, !tbaa !113
  %i.nk = load i8, ptr %i.ni, align 1, !tbaa !113
  %i.nl = load i8, ptr %i.nj, align 1, !tbaa !113
  %i.nm = getelementptr inbounds nuw i8, ptr %.019.i284, i64 4
  store i8 %i.nl, ptr %i.ni, align 1, !tbaa !113
  %i.nn = getelementptr inbounds nuw i8, ptr %.018.i285, i64 4
  store i8 %i.nk, ptr %i.nj, align 1, !tbaa !113
  %i.no = add i64 %.020.i283, -4                  ; 2 uses
  %.not.i286.3 = icmp eq i64 %i.no, 0
  br i1 %.not.i286.3, label %swapfunc.exit291, label %.preheader.i282, !llvm.loop !64

swapfunc.exit291:                                 ; preds = %.preheader.i282.prol.loopexit, %.preheader.i282, %.preheader384.prol.loopexit, %.preheader384, %middle.block695, %vec.epilog.middle.block711, %middle.block669, %bb.af
  %i.np = getelementptr i8, ptr %.1228351, i64 %i.a
  br label %bb.ah

bb.ah:                                            ; preds = %swapfunc.exit291, %bb.ad
  %.2229 = phi ptr [ %i.np, %swapfunc.exit291 ], [ %.1228351, %bb.ad ] ; 2 uses
  %i.nq = getelementptr i8, ptr %.1220352, i64 %i.a ; 3 uses
  %.not251 = icmp ugt ptr %.1217.lcssa, %i.nq
  %indvar.next = add i64 %indvar, 1
  br i1 %.not251, label %.critedge2._crit_edge, label %.lr.ph354, !llvm.loop !65

.critedge4:                                       ; preds = %.lr.ph354
  br i1 %i.fm, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %.critedge4
  %i.nr = load i64, ptr %.1217.lcssa, align 8, !tbaa !106
  %i.ns = load i64, ptr %.1220352, align 8, !tbaa !106
  store i64 %i.ns, ptr %.1217.lcssa, align 8, !tbaa !106
  store i64 %i.nr, ptr %.1220352, align 8, !tbaa !106
  br label %swapfunc.exit301

bb.aj:                                            ; preds = %.critedge4
  br i1 %or.cond, label %.preheader388.preheader, label %iter.check631

iter.check631:                                    ; preds = %bb.aj
  br i1 %min.iters.check615, label %.preheader.i292.preheader, label %vector.memcheck608

vector.memcheck608:                               ; preds = %iter.check631
  %scevgep609 = getelementptr i8, ptr %.1217.lcssa, i64 %2
  %25 = mul i64 %indvar, %i.a
  %26 = getelementptr i8, ptr %.0219, i64 %2
  %scevgep610 = getelementptr i8, ptr %26, i64 %25
  %bound0611 = icmp ult ptr %.1217.lcssa, %scevgep610
  %bound1612 = icmp ult ptr %.1220352, %scevgep609
  %found.conflict613 = and i1 %bound0611, %bound1612
  br i1 %found.conflict613, label %.preheader.i292.preheader, label %vector.main.loop.iter.check616

vector.main.loop.iter.check616:                   ; preds = %vector.memcheck608
  br i1 %min.iters.check617, label %vec.epilog.ph635, label %vector.ph618

vector.ph618:                                     ; preds = %vector.main.loop.iter.check616
  %i.nt = getelementptr i8, ptr %.1217.lcssa, i64 %n.vec619
  %i.nu = getelementptr i8, ptr %.1220352, i64 %n.vec619
  br label %vector.body620

vector.body620:                                   ; preds = %vector.ph618, %vector.body620
  %index621 = phi i64 [ 0, %vector.ph618 ], [ %index.next628, %vector.body620 ] ; 3 uses
  %next.gep622 = getelementptr i8, ptr %.1217.lcssa, i64 %index621 ; 3 uses
  %next.gep623 = getelementptr i8, ptr %.1220352, i64 %index621 ; 3 uses
  %i.nv = getelementptr i8, ptr %next.gep622, i64 16 ; 2 uses
  %wide.load624 = load <16 x i8>, ptr %next.gep622, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  %wide.load625 = load <16 x i8>, ptr %i.nv, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  %i.nw = getelementptr i8, ptr %next.gep623, i64 16 ; 2 uses
  %wide.load626 = load <16 x i8>, ptr %next.gep623, align 1, !tbaa !113, !alias.scope !128
  %wide.load627 = load <16 x i8>, ptr %i.nw, align 1, !tbaa !113, !alias.scope !128
  store <16 x i8> %wide.load626, ptr %next.gep622, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  store <16 x i8> %wide.load627, ptr %i.nv, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  store <16 x i8> %wide.load624, ptr %next.gep623, align 1, !tbaa !113, !alias.scope !128
  store <16 x i8> %wide.load625, ptr %i.nw, align 1, !tbaa !113, !alias.scope !128
  %index.next628 = add nuw i64 %index621, 32      ; 2 uses
  %i.nx = icmp eq i64 %index.next628, %n.vec619
  br i1 %i.nx, label %middle.block629, label %vector.body620, !llvm.loop !69

middle.block629:                                  ; preds = %vector.body620
  br i1 %cmp.n630, label %swapfunc.exit301, label %vec.epilog.iter.check632

vec.epilog.iter.check632:                         ; preds = %middle.block629
  br i1 %min.epilog.iters.check634, label %.preheader.i292.preheader, label %vec.epilog.ph635, !prof !114

vec.epilog.ph635:                                 ; preds = %vector.main.loop.iter.check616, %vec.epilog.iter.check632
  %vec.epilog.resume.val636 = phi i64 [ %n.vec619, %vec.epilog.iter.check632 ], [ 0, %vector.main.loop.iter.check616 ]
  %i.ny = getelementptr i8, ptr %.1217.lcssa, i64 %n.vec637
  %i.nz = getelementptr i8, ptr %.1220352, i64 %n.vec637
  br label %vec.epilog.vector.body638

vec.epilog.vector.body638:                        ; preds = %vec.epilog.vector.body638, %vec.epilog.ph635
  %index639 = phi i64 [ %vec.epilog.resume.val636, %vec.epilog.ph635 ], [ %index.next644, %vec.epilog.vector.body638 ] ; 3 uses
  %next.gep640 = getelementptr i8, ptr %.1217.lcssa, i64 %index639 ; 2 uses
  %next.gep641 = getelementptr i8, ptr %.1220352, i64 %index639 ; 2 uses
  %wide.load642 = load <4 x i8>, ptr %next.gep640, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  %wide.load643 = load <4 x i8>, ptr %next.gep641, align 1, !tbaa !113, !alias.scope !128
  store <4 x i8> %wide.load643, ptr %next.gep640, align 1, !tbaa !113, !alias.scope !127, !noalias !128
  store <4 x i8> %wide.load642, ptr %next.gep641, align 1, !tbaa !113, !alias.scope !128
  %index.next644 = add nuw i64 %index639, 4       ; 2 uses
  %i.oa = icmp eq i64 %index.next644, %n.vec637
  br i1 %i.oa, label %vec.epilog.middle.block645, label %vec.epilog.vector.body638, !llvm.loop !70

vec.epilog.middle.block645:                       ; preds = %vec.epilog.vector.body638
  br i1 %cmp.n646, label %swapfunc.exit301, label %.preheader.i292.preheader

.preheader.i292.preheader:                        ; preds = %iter.check631, %vector.memcheck608, %vec.epilog.iter.check632, %vec.epilog.middle.block645
  %.020.i293.ph = phi i64 [ %2, %iter.check631 ], [ %2, %vector.memcheck608 ], [ %i.v, %vec.epilog.iter.check632 ], [ %i.w, %vec.epilog.middle.block645 ] ; 4 uses
  %.019.i294.ph = phi ptr [ %.1217.lcssa, %iter.check631 ], [ %.1217.lcssa, %vector.memcheck608 ], [ %i.nt, %vec.epilog.iter.check632 ], [ %i.ny, %vec.epilog.middle.block645 ] ; 2 uses
  %.018.i295.ph = phi ptr [ %.1220352, %iter.check631 ], [ %.1220352, %vector.memcheck608 ], [ %i.nu, %vec.epilog.iter.check632 ], [ %i.nz, %vec.epilog.middle.block645 ] ; 2 uses
  %i.ob = add i64 %.020.i293.ph, -1
  %xtraiter962 = and i64 %.020.i293.ph, 3         ; 2 uses
  %lcmp.mod963.not = icmp eq i64 %xtraiter962, 0
  br i1 %lcmp.mod963.not, label %.preheader.i292.prol.loopexit, label %.preheader.i292.prol

.preheader.i292.prol:                             ; preds = %.preheader.i292.preheader, %.preheader.i292.prol
  %.020.i293.prol = phi i64 [ %i.og, %.preheader.i292.prol ], [ %.020.i293.ph, %.preheader.i292.preheader ]
  %.019.i294.prol = phi ptr [ %i.oe, %.preheader.i292.prol ], [ %.019.i294.ph, %.preheader.i292.preheader ] ; 3 uses
  %.018.i295.prol = phi ptr [ %i.of, %.preheader.i292.prol ], [ %.018.i295.ph, %.preheader.i292.preheader ] ; 3 uses
  %prol.iter964 = phi i64 [ %prol.iter964.next, %.preheader.i292.prol ], [ 0, %.preheader.i292.preheader ]
  %i.oc = load i8, ptr %.019.i294.prol, align 1, !tbaa !113
  %i.od = load i8, ptr %.018.i295.prol, align 1, !tbaa !113
  %i.oe = getelementptr inbounds nuw i8, ptr %.019.i294.prol, i64 1 ; 2 uses
  store i8 %i.od, ptr %.019.i294.prol, align 1, !tbaa !113
  %i.of = getelementptr inbounds nuw i8, ptr %.018.i295.prol, i64 1 ; 2 uses
  store i8 %i.oc, ptr %.018.i295.prol, align 1, !tbaa !113
  %i.og = add i64 %.020.i293.prol, -1             ; 2 uses
  %prol.iter964.next = add i64 %prol.iter964, 1   ; 2 uses
  %prol.iter964.cmp.not = icmp eq i64 %prol.iter964.next, %xtraiter962
  br i1 %prol.iter964.cmp.not, label %.preheader.i292.prol.loopexit, label %.preheader.i292.prol, !llvm.loop !71

.preheader.i292.prol.loopexit:                    ; preds = %.preheader.i292.prol, %.preheader.i292.preheader
  %.020.i293.unr = phi i64 [ %.020.i293.ph, %.preheader.i292.preheader ], [ %i.og, %.preheader.i292.prol ]
  %.019.i294.unr = phi ptr [ %.019.i294.ph, %.preheader.i292.preheader ], [ %i.oe, %.preheader.i292.prol ]
  %.018.i295.unr = phi ptr [ %.018.i295.ph, %.preheader.i292.preheader ], [ %i.of, %.preheader.i292.prol ]
  %i.oh = icmp ult i64 %i.ob, 3
  br i1 %i.oh, label %swapfunc.exit301, label %.preheader.i292

.preheader388.preheader:                          ; preds = %bb.aj
  br i1 %min.iters.check591, label %.preheader388.preheader921, label %vector.memcheck584

vector.memcheck584:                               ; preds = %.preheader388.preheader
  %scevgep585 = getelementptr i8, ptr %.1217.lcssa, i64 %i.e
  %i.oi = mul i64 %indvar, %i.a
  %27 = getelementptr i8, ptr %.0219, i64 %i.e
  %scevgep586 = getelementptr i8, ptr %27, i64 %i.oi
  %bound0587 = icmp ult ptr %.1217.lcssa, %scevgep586
  %bound1588 = icmp ult ptr %.1220352, %scevgep585
  %found.conflict589 = and i1 %bound0587, %bound1588
  br i1 %found.conflict589, label %.preheader388.preheader921, label %vector.ph592

vector.ph592:                                     ; preds = %vector.memcheck584
  %i.oj = getelementptr i8, ptr %.1220352, i64 %i.x
  %i.ok = getelementptr i8, ptr %.1217.lcssa, i64 %i.x
  br label %vector.body594

vector.body594:                                   ; preds = %vector.body594, %vector.ph592
  %index595 = phi i64 [ 0, %vector.ph592 ], [ %index.next602, %vector.body594 ] ; 2 uses
  %i.ol = shl i64 %index595, 3                    ; 2 uses
  %next.gep596 = getelementptr i8, ptr %.1220352, i64 %i.ol ; 3 uses
  %next.gep597 = getelementptr i8, ptr %.1217.lcssa, i64 %i.ol ; 3 uses
  %i.om = getelementptr i8, ptr %next.gep597, i64 16 ; 2 uses
  %wide.load598 = load <2 x i64>, ptr %next.gep597, align 8, !tbaa !106, !alias.scope !129, !noalias !130
  %wide.load599 = load <2 x i64>, ptr %i.om, align 8, !tbaa !106, !alias.scope !129, !noalias !130
  %i.on = getelementptr i8, ptr %next.gep596, i64 16 ; 2 uses
  %wide.load600 = load <2 x i64>, ptr %next.gep596, align 8, !tbaa !106, !alias.scope !130
  %wide.load601 = load <2 x i64>, ptr %i.on, align 8, !tbaa !106, !alias.scope !130
  store <2 x i64> %wide.load600, ptr %next.gep597, align 8, !tbaa !106, !alias.scope !129, !noalias !130
  store <2 x i64> %wide.load601, ptr %i.om, align 8, !tbaa !106, !alias.scope !129, !noalias !130
  store <2 x i64> %wide.load598, ptr %next.gep596, align 8, !tbaa !106, !alias.scope !130
  store <2 x i64> %wide.load599, ptr %i.on, align 8, !tbaa !106, !alias.scope !130
  %index.next602 = add nuw i64 %index595, 4       ; 2 uses
  %i.oo = icmp eq i64 %index.next602, %n.vec593
  br i1 %i.oo, label %middle.block603, label %vector.body594, !llvm.loop !75

middle.block603:                                  ; preds = %vector.body594
  br i1 %cmp.n604, label %swapfunc.exit301, label %.preheader388.preheader921

.preheader388.preheader921:                       ; preds = %vector.memcheck584, %.preheader388.preheader, %middle.block603
  %.022.i297.ph = phi ptr [ %.1220352, %vector.memcheck584 ], [ %.1220352, %.preheader388.preheader ], [ %i.oj, %middle.block603 ] ; 2 uses
  %.021.i298.ph = phi ptr [ %.1217.lcssa, %vector.memcheck584 ], [ %.1217.lcssa, %.preheader388.preheader ], [ %i.ok, %middle.block603 ] ; 2 uses
  %.0.i299.ph = phi i64 [ %i.d, %vector.memcheck584 ], [ %i.d, %.preheader388.preheader ], [ %i.y, %middle.block603 ] ; 4 uses
  %i.op = add nsw i64 %.0.i299.ph, -1
  %xtraiter965 = and i64 %.0.i299.ph, 3           ; 2 uses
  %lcmp.mod966.not = icmp eq i64 %xtraiter965, 0
  br i1 %lcmp.mod966.not, label %.preheader388.prol.loopexit, label %.preheader388.prol

.preheader388.prol:                               ; preds = %.preheader388.preheader921, %.preheader388.prol
  %.022.i297.prol = phi ptr [ %i.ot, %.preheader388.prol ], [ %.022.i297.ph, %.preheader388.preheader921 ] ; 3 uses
  %.021.i298.prol = phi ptr [ %i.os, %.preheader388.prol ], [ %.021.i298.ph, %.preheader388.preheader921 ] ; 3 uses
  %.0.i299.prol = phi i64 [ %i.ou, %.preheader388.prol ], [ %.0.i299.ph, %.preheader388.preheader921 ]
  %prol.iter967 = phi i64 [ %prol.iter967.next, %.preheader388.prol ], [ 0, %.preheader388.preheader921 ]
  %i.oq = load i64, ptr %.021.i298.prol, align 8, !tbaa !106
  %i.or = load i64, ptr %.022.i297.prol, align 8, !tbaa !106
  %i.os = getelementptr inbounds nuw i8, ptr %.021.i298.prol, i64 8 ; 2 uses
  store i64 %i.or, ptr %.021.i298.prol, align 8, !tbaa !106
  %i.ot = getelementptr inbounds nuw i8, ptr %.022.i297.prol, i64 8 ; 2 uses
  store i64 %i.oq, ptr %.022.i297.prol, align 8, !tbaa !106
  %i.ou = add i64 %.0.i299.prol, -1               ; 2 uses
  %prol.iter967.next = add i64 %prol.iter967, 1   ; 2 uses
  %prol.iter967.cmp.not = icmp eq i64 %prol.iter967.next, %xtraiter965
  br i1 %prol.iter967.cmp.not, label %.preheader388.prol.loopexit, label %.preheader388.prol, !llvm.loop !76

.preheader388.prol.loopexit:                      ; preds = %.preheader388.prol, %.preheader388.preheader921
  %.022.i297.unr = phi ptr [ %.022.i297.ph, %.preheader388.preheader921 ], [ %i.ot, %.preheader388.prol ]
  %.021.i298.unr = phi ptr [ %.021.i298.ph, %.preheader388.preheader921 ], [ %i.os, %.preheader388.prol ]
  %.0.i299.unr = phi i64 [ %.0.i299.ph, %.preheader388.preheader921 ], [ %i.ou, %.preheader388.prol ]
  %i.ov = icmp ult i64 %i.op, 3
  br i1 %i.ov, label %swapfunc.exit301, label %.preheader388

.preheader388:                                    ; preds = %.preheader388.prol.loopexit, %.preheader388
  %.022.i297 = phi ptr [ %i.pl, %.preheader388 ], [ %.022.i297.unr, %.preheader388.prol.loopexit ] ; 6 uses
  %.021.i298 = phi ptr [ %i.pk, %.preheader388 ], [ %.021.i298.unr, %.preheader388.prol.loopexit ] ; 6 uses
  %.0.i299 = phi i64 [ %i.pm, %.preheader388 ], [ %.0.i299.unr, %.preheader388.prol.loopexit ]
  %i.ow = load i64, ptr %.021.i298, align 8, !tbaa !106
  %i.ox = load i64, ptr %.022.i297, align 8, !tbaa !106
  %i.oy = getelementptr inbounds nuw i8, ptr %.021.i298, i64 8 ; 2 uses
  store i64 %i.ox, ptr %.021.i298, align 8, !tbaa !106
  %i.oz = getelementptr inbounds nuw i8, ptr %.022.i297, i64 8 ; 2 uses
  store i64 %i.ow, ptr %.022.i297, align 8, !tbaa !106
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !106
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !106
  %i.pc = getelementptr inbounds nuw i8, ptr %.021.i298, i64 16 ; 2 uses
  store i64 %i.pb, ptr %i.oy, align 8, !tbaa !106
  %i.pd = getelementptr inbounds nuw i8, ptr %.022.i297, i64 16 ; 2 uses
  store i64 %i.pa, ptr %i.oz, align 8, !tbaa !106
  %i.pe = load i64, ptr %i.pc, align 8, !tbaa !106
  %i.pf = load i64, ptr %i.pd, align 8, !tbaa !106
  %i.pg = getelementptr inbounds nuw i8, ptr %.021.i298, i64 24 ; 2 uses
  store i64 %i.pf, ptr %i.pc, align 8, !tbaa !106
  %i.ph = getelementptr inbounds nuw i8, ptr %.022.i297, i64 24 ; 2 uses
  store i64 %i.pe, ptr %i.pd, align 8, !tbaa !106
  %i.pi = load i64, ptr %i.pg, align 8, !tbaa !106
  %i.pj = load i64, ptr %i.ph, align 8, !tbaa !106
  %i.pk = getelementptr inbounds nuw i8, ptr %.021.i298, i64 32
  store i64 %i.pj, ptr %i.pg, align 8, !tbaa !106
  %i.pl = getelementptr inbounds nuw i8, ptr %.022.i297, i64 32
  store i64 %i.pi, ptr %i.ph, align 8, !tbaa !106
  %i.pm = add i64 %.0.i299, -4                    ; 2 uses
  %.not23.i300.3 = icmp eq i64 %i.pm, 0
  br i1 %.not23.i300.3, label %swapfunc.exit301, label %.preheader388, !llvm.loop !77

.preheader.i292:                                  ; preds = %.preheader.i292.prol.loopexit, %.preheader.i292
  %.020.i293 = phi i64 [ %i.qd, %.preheader.i292 ], [ %.020.i293.unr, %.preheader.i292.prol.loopexit ]
  %.019.i294 = phi ptr [ %i.qb, %.preheader.i292 ], [ %.019.i294.unr, %.preheader.i292.prol.loopexit ] ; 6 uses
  %.018.i295 = phi ptr [ %i.qc, %.preheader.i292 ], [ %.018.i295.unr, %.preheader.i292.prol.loopexit ] ; 6 uses
  %i.pn = load i8, ptr %.019.i294, align 1, !tbaa !113
  %i.po = load i8, ptr %.018.i295, align 1, !tbaa !113
  %i.pp = getelementptr inbounds nuw i8, ptr %.019.i294, i64 1 ; 2 uses
  store i8 %i.po, ptr %.019.i294, align 1, !tbaa !113
  %i.pq = getelementptr inbounds nuw i8, ptr %.018.i295, i64 1 ; 2 uses
  store i8 %i.pn, ptr %.018.i295, align 1, !tbaa !113
  %i.pr = load i8, ptr %i.pp, align 1, !tbaa !113
  %i.ps = load i8, ptr %i.pq, align 1, !tbaa !113
  %i.pt = getelementptr inbounds nuw i8, ptr %.019.i294, i64 2 ; 2 uses
  store i8 %i.ps, ptr %i.pp, align 1, !tbaa !113
  %i.pu = getelementptr inbounds nuw i8, ptr %.018.i295, i64 2 ; 2 uses
  store i8 %i.pr, ptr %i.pq, align 1, !tbaa !113
  %i.pv = load i8, ptr %i.pt, align 1, !tbaa !113
  %i.pw = load i8, ptr %i.pu, align 1, !tbaa !113
  %i.px = getelementptr inbounds nuw i8, ptr %.019.i294, i64 3 ; 2 uses
  store i8 %i.pw, ptr %i.pt, align 1, !tbaa !113
  %i.py = getelementptr inbounds nuw i8, ptr %.018.i295, i64 3 ; 2 uses
  store i8 %i.pv, ptr %i.pu, align 1, !tbaa !113
  %i.pz = load i8, ptr %i.px, align 1, !tbaa !113
  %i.qa = load i8, ptr %i.py, align 1, !tbaa !113
  %i.qb = getelementptr inbounds nuw i8, ptr %.019.i294, i64 4
  store i8 %i.qa, ptr %i.px, align 1, !tbaa !113
  %i.qc = getelementptr inbounds nuw i8, ptr %.018.i295, i64 4
  store i8 %i.pz, ptr %i.py, align 1, !tbaa !113
  %i.qd = add i64 %.020.i293, -4                  ; 2 uses
  %.not.i296.3 = icmp eq i64 %i.qd, 0
  br i1 %.not.i296.3, label %swapfunc.exit301, label %.preheader.i292, !llvm.loop !78

swapfunc.exit301:                                 ; preds = %.preheader.i292.prol.loopexit, %.preheader.i292, %.preheader388.prol.loopexit, %.preheader388, %middle.block629, %vec.epilog.middle.block645, %middle.block603, %bb.ai
  %i.qe = getelementptr inbounds nuw i8, ptr %.1217.lcssa, i64 %2
  %i.qf = getelementptr i8, ptr %.1220352, i64 %i.a
  br label %bb.x

.critedge2._crit_edge:                            ; preds = %.critedge2, %bb.ah
  %.1228.lcssa = phi ptr [ %.2229, %bb.ah ], [ %.0227, %.critedge2 ]
  %.1220.lcssa = phi ptr [ %i.nq, %bb.ah ], [ %.0219, %.critedge2 ]
  %i.qg = mul i64 %.0214, %2                      ; 2 uses
  %i.qh = getelementptr i8, ptr %.0, i64 %i.qg    ; 5 uses
  %i.qi = ptrtoint ptr %.1.lcssa to i64           ; 2 uses
  %i.qj = sub i64 %i.qi, %i.z
  %i.qk = ptrtoint ptr %.1217.lcssa to i64
  %i.ql = sub i64 %i.qk, %i.qi                    ; 4 uses
  %. = tail call i64 @llvm.smin.i64(i64 %i.qj, i64 %i.ql) ; 18 uses
  %.not252 = icmp eq i64 %., 0
  br i1 %.not252, label %swapfunc.exit311, label %bb.ak

bb.ak:                                            ; preds = %.critedge2._crit_edge
  %i.qm = sub i64 0, %.
  %i.qn = getelementptr i8, ptr %.1217.lcssa, i64 %i.qm ; 12 uses
  br i1 %or.cond, label %bb.al, label %iter.check565

iter.check565:                                    ; preds = %bb.ak
  %min.iters.check549 = icmp ult i64 %., 4
  br i1 %min.iters.check549, label %.preheader.i302.preheader, label %vector.memcheck543

vector.memcheck543:                               ; preds = %iter.check565
  %scevgep544 = getelementptr i8, ptr %.0, i64 %.
  %bound0545 = icmp ult ptr %.0, %.1217.lcssa
  %bound1546 = icmp ult ptr %i.qn, %scevgep544
  %found.conflict547 = and i1 %bound0545, %bound1546
  br i1 %found.conflict547, label %.preheader.i302.preheader, label %vector.main.loop.iter.check550

vector.main.loop.iter.check550:                   ; preds = %vector.memcheck543
  %min.iters.check551 = icmp ult i64 %., 32
  br i1 %min.iters.check551, label %vec.epilog.ph569, label %vector.ph552

vector.ph552:                                     ; preds = %vector.main.loop.iter.check550
  %i.qo = and i64 %., 28
  %n.vec553 = and i64 %., -32                     ; 5 uses
  %i.qp = and i64 %., 31
  %i.qq = getelementptr i8, ptr %.0, i64 %n.vec553
  %i.qr = getelementptr i8, ptr %i.qn, i64 %n.vec553
  br label %vector.body554

vector.body554:                                   ; preds = %vector.ph552, %vector.body554
  %index555 = phi i64 [ 0, %vector.ph552 ], [ %index.next562, %vector.body554 ] ; 3 uses
  %next.gep556 = getelementptr i8, ptr %.0, i64 %index555 ; 3 uses
  %next.gep557 = getelementptr i8, ptr %i.qn, i64 %index555 ; 3 uses
  %i.qs = getelementptr i8, ptr %next.gep556, i64 16 ; 2 uses
  %wide.load558 = load <16 x i8>, ptr %next.gep556, align 1, !tbaa !113, !alias.scope !131, !noalias !132
  %wide.load559 = load <16 x i8>, ptr %i.qs, align 1, !tbaa !113, !alias.scope !131, !noalias !132
  %i.qt = getelementptr i8, ptr %next.gep557, i64 16 ; 2 uses
  %wide.load560 = load <16 x i8>, ptr %next.gep557, align 1, !tbaa !113, !alias.scope !132
  %wide.load561 = load <16 x i8>, ptr %i.qt, align 1, !tbaa !113, !alias.scope !132
  store <16 x i8> %wide.load560, ptr %next.gep556, align 1, !tbaa !113, !alias.scope !131, !noalias !132
  store <16 x i8> %wide.load561, ptr %i.qs, align 1, !tbaa !113, !alias.scope !131, !noalias !132
  store <16 x i8> %wide.load558, ptr %next.gep557, align 1, !tbaa !113, !alias.scope !132
  store <16 x i8> %wide.load559, ptr %i.qt, align 1, !tbaa !113, !alias.scope !132
  %index.next562 = add nuw i64 %index555, 32      ; 2 uses
  %i.qu = icmp eq i64 %index.next562, %n.vec553
  br i1 %i.qu, label %middle.block563, label %vector.body554, !llvm.loop !82

middle.block563:                                  ; preds = %vector.body554
  %cmp.n564 = icmp eq i64 %., %n.vec553
  br i1 %cmp.n564, label %swapfunc.exit311, label %vec.epilog.iter.check566

vec.epilog.iter.check566:                         ; preds = %middle.block563
  %min.epilog.iters.check568 = icmp eq i64 %i.qo, 0
  br i1 %min.epilog.iters.check568, label %.preheader.i302.preheader, label %vec.epilog.ph569, !prof !114

end_hunk_1
