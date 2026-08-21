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
  %i.a = sub i64 0, %2                            ; 6 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32
  %i.d = lshr i64 %2, 3                           ; 25 uses
  %i.e = and i64 %2, -8                           ; 8 uses
  %min.iters.check838 = icmp ult i64 %2, 4
  %min.iters.check840 = icmp ult i64 %2, 32
  %i.f = and i64 %2, 28
  %n.vec842 = and i64 %2, -32                     ; 5 uses
  %i.g = and i64 %2, 31
  %cmp.n853 = icmp eq i64 %2, %n.vec842
  %min.epilog.iters.check861 = icmp eq i64 %i.f, 0
  %n.vec863 = and i64 %2, -4                      ; 4 uses
  %i.h = and i64 %2, 3
  %cmp.n872 = icmp eq i64 %2, %n.vec863
  %min.iters.check814 = icmp ult i64 %2, 32
  %n.vec816 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.i = shl nuw i64 %n.vec816, 3                 ; 2 uses
  %i.j = and i64 %i.d, 3
  %cmp.n827 = icmp eq i64 %i.d, %n.vec816
  %min.iters.check769 = icmp ult i64 %2, 4
  %min.iters.check771 = icmp ult i64 %2, 32
  %i.k = and i64 %2, 28
  %n.vec773 = and i64 %2, -32                     ; 5 uses
  %i.l = and i64 %2, 31
  %cmp.n784 = icmp eq i64 %2, %n.vec773
  %min.epilog.iters.check792 = icmp eq i64 %i.k, 0
  %n.vec794 = and i64 %2, -4                      ; 4 uses
  %i.m = and i64 %2, 3
  %cmp.n803 = icmp eq i64 %2, %n.vec794
  %min.iters.check745 = icmp ult i64 %2, 32
  %n.vec747 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.n = shl nuw i64 %n.vec747, 3                 ; 2 uses
  %i.o = and i64 %i.d, 3
  %cmp.n758 = icmp eq i64 %i.d, %n.vec747
  %min.iters.check698 = icmp ult i64 %2, 4
  %min.iters.check700 = icmp ult i64 %2, 32
  %i.p = and i64 %2, 28
  %n.vec702 = and i64 %2, -32                     ; 5 uses
  %i.q = and i64 %2, 31
  %cmp.n713 = icmp eq i64 %2, %n.vec702
  %min.epilog.iters.check721 = icmp eq i64 %i.p, 0
  %n.vec723 = and i64 %2, -4                      ; 4 uses
  %i.r = and i64 %2, 3
  %cmp.n732 = icmp eq i64 %2, %n.vec723
  %min.iters.check674 = icmp ult i64 %2, 32
  %n.vec676 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.s = shl nuw i64 %n.vec676, 3                 ; 2 uses
  %i.t = and i64 %i.d, 3
  %cmp.n687 = icmp eq i64 %i.d, %n.vec676
  %min.iters.check629 = icmp ult i64 %2, 4
  %min.iters.check631 = icmp ult i64 %2, 32
  %i.u = and i64 %2, 28
  %n.vec633 = and i64 %2, -32                     ; 5 uses
  %i.v = and i64 %2, 31
  %cmp.n644 = icmp eq i64 %2, %n.vec633
  %min.epilog.iters.check652 = icmp eq i64 %i.u, 0
  %n.vec654 = and i64 %2, -4                      ; 4 uses
  %i.w = and i64 %2, 3
  %cmp.n663 = icmp eq i64 %2, %n.vec654
  %min.iters.check605 = icmp ult i64 %2, 48
  %n.vec607 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.x = shl nuw i64 %n.vec607, 3                 ; 2 uses
  %i.y = and i64 %i.d, 3
  %cmp.n618 = icmp eq i64 %i.d, %n.vec607
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %bb.a
  %.0214 = phi i64 [ %1, %bb.a ], [ %i.xl, %bb.at ] ; 9 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.xh, %bb.at ]  ; 62 uses
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

.critedge.us:                                     ; preds = %swapfunc.exit.us.us, %.lr.ph364.us, %.preheader.us
  %.0222.us = getelementptr inbounds nuw i8, ptr %.0222369.us, i64 %2 ; 2 uses
  %i.aj = icmp ult ptr %.0222.us, %i.af
  br i1 %i.aj, label %.preheader.us, label %.thread, !llvm.loop !13

.lr.ph364.us:                                     ; preds = %.preheader.us, %swapfunc.exit.us.us
  %.0225363.us.us = phi ptr [ %i.ak, %swapfunc.exit.us.us ], [ %.0222369.us, %.preheader.us ] ; 4 uses
  %i.ak = getelementptr inbounds i8, ptr %.0225363.us.us, i64 %i.a ; 5 uses
  %i.al = tail call i32 %3(ptr noundef nonnull %i.ak, ptr noundef nonnull %.0225363.us.us) #2
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %swapfunc.exit.us.us, label %.critedge.us

swapfunc.exit.us.us:                              ; preds = %.lr.ph364.us
  %i.an = load i64, ptr %.0225363.us.us, align 8, !tbaa !15
  %i.ao = load i64, ptr %i.ak, align 8, !tbaa !15
  store i64 %i.ao, ptr %.0225363.us.us, align 8, !tbaa !15
  store i64 %i.an, ptr %i.ak, align 8, !tbaa !15
  %i.ap = icmp ugt ptr %i.ak, %.0
  br i1 %i.ap, label %.lr.ph364.us, label %.critedge.us, !llvm.loop !17

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %or.cond, label %.preheader.us373.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %min.iters.check877 = icmp ult i64 %2, 4
  %min.iters.check879 = icmp ult i64 %2, 32
  %i.aq = and i64 %2, 28
  %n.vec881 = and i64 %2, -32                     ; 5 uses
  %i.ar = and i64 %2, 31
  %cmp.n892 = icmp eq i64 %2, %n.vec881
  %min.epilog.iters.check900 = icmp eq i64 %i.aq, 0
  %n.vec902 = and i64 %2, -4                      ; 4 uses
  %i.as = and i64 %2, 3
  %cmp.n911 = icmp eq i64 %2, %n.vec902
  br label %.preheader

.preheader.us373.preheader:                       ; preds = %.preheader.lr.ph.split
  %i.at = and i64 %2, -8                          ; 2 uses
  %i.au = add i64 %2, %i.at
  %min.iters.check927 = icmp ult i64 %2, 32
  %n.vec929 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.av = shl nuw i64 %n.vec929, 3                ; 2 uses
  %i.aw = and i64 %i.d, 3
  %cmp.n940 = icmp eq i64 %i.d, %n.vec929
  br label %.preheader.us373

.preheader.us373:                                 ; preds = %.preheader.us373.preheader, %.critedge.us375
  %indvar916 = phi i64 [ 0, %.preheader.us373.preheader ], [ %indvar.next917, %.critedge.us375 ] ; 2 uses
  %.0222369.us374 = phi ptr [ %.0222368, %.preheader.us373.preheader ], [ %.0222.us376, %.critedge.us375 ] ; 3 uses
  %i.ax = mul i64 %2, %indvar916                  ; 2 uses
  %i.ay = add i64 %i.au, %i.ax
  %i.az = add i64 %i.at, %i.ax
  %i.ba = icmp ugt ptr %.0222369.us374, %.0
  br i1 %i.ba, label %.lr.ph364.us377, label %.critedge.us375

.critedge.us375:                                  ; preds = %swapfunc.exit.loopexit.us.us, %.lr.ph364.us377, %.preheader.us373
  %.0222.us376 = getelementptr inbounds nuw i8, ptr %.0222369.us374, i64 %2 ; 2 uses
  %i.bb = icmp ult ptr %.0222.us376, %i.af
  %indvar.next917 = add i64 %indvar916, 1
  br i1 %i.bb, label %.preheader.us373, label %.thread, !llvm.loop !13

.lr.ph364.us377:                                  ; preds = %.preheader.us373, %swapfunc.exit.loopexit.us.us
  %indvar918 = phi i64 [ %indvar.next919, %swapfunc.exit.loopexit.us.us ], [ 0, %.preheader.us373 ] ; 2 uses
  %.0225363.us366.us = phi ptr [ %i.bf, %swapfunc.exit.loopexit.us.us ], [ %.0222369.us374, %.preheader.us373 ] ; 7 uses
  %i.bc = mul i64 %2, %indvar918                  ; 2 uses
  %i.bd = sub i64 %i.ay, %i.bc
  %scevgep921 = getelementptr i8, ptr %.0, i64 %i.bd
  %i.be = sub i64 %i.az, %i.bc
  %scevgep922 = getelementptr i8, ptr %.0, i64 %i.be
  %i.bf = getelementptr inbounds i8, ptr %.0225363.us366.us, i64 %i.a ; 8 uses
  %i.bg = tail call i32 %3(ptr noundef nonnull %i.bf, ptr noundef nonnull %.0225363.us366.us) #2
  %i.bh = icmp sgt i32 %i.bg, 0
  br i1 %i.bh, label %.preheader381.preheader, label %.critedge.us375

.preheader381.preheader:                          ; preds = %.lr.ph364.us377
  br i1 %min.iters.check927, label %.preheader381.preheader944, label %vector.memcheck915

vector.memcheck915:                               ; preds = %.preheader381.preheader
  %bound0923 = icmp ult ptr %.0225363.us366.us, %scevgep922
  %bound1924 = icmp ult ptr %i.bf, %scevgep921
  %found.conflict925 = and i1 %bound0923, %bound1924
  br i1 %found.conflict925, label %.preheader381.preheader944, label %vector.ph928

vector.ph928:                                     ; preds = %vector.memcheck915
  %i.bi = getelementptr i8, ptr %i.bf, i64 %i.av
  %i.bj = getelementptr i8, ptr %.0225363.us366.us, i64 %i.av
  br label %vector.body930

vector.body930:                                   ; preds = %vector.body930, %vector.ph928
  %index931 = phi i64 [ 0, %vector.ph928 ], [ %index.next938, %vector.body930 ] ; 2 uses
  %i.bk = shl i64 %index931, 3                    ; 2 uses
  %next.gep932 = getelementptr i8, ptr %i.bf, i64 %i.bk ; 3 uses
  %next.gep933 = getelementptr i8, ptr %.0225363.us366.us, i64 %i.bk ; 3 uses
  %i.bl = getelementptr i8, ptr %next.gep933, i64 16 ; 2 uses
  %wide.load934 = load <2 x i64>, ptr %next.gep933, align 8, !tbaa !15, !alias.scope !18, !noalias !21
  %wide.load935 = load <2 x i64>, ptr %i.bl, align 8, !tbaa !15, !alias.scope !18, !noalias !21
  %i.bm = getelementptr i8, ptr %next.gep932, i64 16 ; 2 uses
  %wide.load936 = load <2 x i64>, ptr %next.gep932, align 8, !tbaa !15, !alias.scope !21
  %wide.load937 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15, !alias.scope !21
  store <2 x i64> %wide.load936, ptr %next.gep933, align 8, !tbaa !15, !alias.scope !18, !noalias !21
  store <2 x i64> %wide.load937, ptr %i.bl, align 8, !tbaa !15, !alias.scope !18, !noalias !21
  store <2 x i64> %wide.load934, ptr %next.gep932, align 8, !tbaa !15, !alias.scope !21
  store <2 x i64> %wide.load935, ptr %i.bm, align 8, !tbaa !15, !alias.scope !21
  %index.next938 = add nuw i64 %index931, 4       ; 2 uses
  %i.bn = icmp eq i64 %index.next938, %n.vec929
  br i1 %i.bn, label %middle.block939, label %vector.body930, !llvm.loop !23

middle.block939:                                  ; preds = %vector.body930
  br i1 %cmp.n940, label %swapfunc.exit.loopexit.us.us, label %.preheader381.preheader944

.preheader381.preheader944:                       ; preds = %vector.memcheck915, %.preheader381.preheader, %middle.block939
  %.022.i.us.us.ph = phi ptr [ %i.bf, %vector.memcheck915 ], [ %i.bf, %.preheader381.preheader ], [ %i.bi, %middle.block939 ] ; 2 uses
  %.021.i.us.us.ph = phi ptr [ %.0225363.us366.us, %vector.memcheck915 ], [ %.0225363.us366.us, %.preheader381.preheader ], [ %i.bj, %middle.block939 ] ; 2 uses
  %.0.i.us.us.ph = phi i64 [ %i.d, %vector.memcheck915 ], [ %i.d, %.preheader381.preheader ], [ %i.aw, %middle.block939 ] ; 4 uses
  %i.bo = add nsw i64 %.0.i.us.us.ph, -1
  %xtraiter1010 = and i64 %.0.i.us.us.ph, 3       ; 2 uses
  %lcmp.mod1011.not = icmp eq i64 %xtraiter1010, 0
  br i1 %lcmp.mod1011.not, label %.preheader381.prol.loopexit, label %.preheader381.prol

.preheader381.prol:                               ; preds = %.preheader381.preheader944, %.preheader381.prol
  %.022.i.us.us.prol = phi ptr [ %i.bs, %.preheader381.prol ], [ %.022.i.us.us.ph, %.preheader381.preheader944 ] ; 3 uses
  %.021.i.us.us.prol = phi ptr [ %i.br, %.preheader381.prol ], [ %.021.i.us.us.ph, %.preheader381.preheader944 ] ; 3 uses
  %.0.i.us.us.prol = phi i64 [ %i.bt, %.preheader381.prol ], [ %.0.i.us.us.ph, %.preheader381.preheader944 ]
  %prol.iter1012 = phi i64 [ %prol.iter1012.next, %.preheader381.prol ], [ 0, %.preheader381.preheader944 ]
  %i.bp = load i64, ptr %.021.i.us.us.prol, align 8, !tbaa !15
  %i.bq = load i64, ptr %.022.i.us.us.prol, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %.021.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bq, ptr %.021.i.us.us.prol, align 8, !tbaa !15
  %i.bs = getelementptr inbounds nuw i8, ptr %.022.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bp, ptr %.022.i.us.us.prol, align 8, !tbaa !15
  %i.bt = add i64 %.0.i.us.us.prol, -1            ; 2 uses
  %prol.iter1012.next = add i64 %prol.iter1012, 1 ; 2 uses
  %prol.iter1012.cmp.not = icmp eq i64 %prol.iter1012.next, %xtraiter1010
  br i1 %prol.iter1012.cmp.not, label %.preheader381.prol.loopexit, label %.preheader381.prol, !llvm.loop !26

.preheader381.prol.loopexit:                      ; preds = %.preheader381.prol, %.preheader381.preheader944
  %.022.i.us.us.unr = phi ptr [ %.022.i.us.us.ph, %.preheader381.preheader944 ], [ %i.bs, %.preheader381.prol ]
  %.021.i.us.us.unr = phi ptr [ %.021.i.us.us.ph, %.preheader381.preheader944 ], [ %i.br, %.preheader381.prol ]
  %.0.i.us.us.unr = phi i64 [ %.0.i.us.us.ph, %.preheader381.preheader944 ], [ %i.bt, %.preheader381.prol ]
  %i.bu = icmp ult i64 %i.bo, 3
  br i1 %i.bu, label %swapfunc.exit.loopexit.us.us, label %.preheader381

.preheader381:                                    ; preds = %.preheader381.prol.loopexit, %.preheader381
  %.022.i.us.us = phi ptr [ %i.ck, %.preheader381 ], [ %.022.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.021.i.us.us = phi ptr [ %i.cj, %.preheader381 ], [ %.021.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.0.i.us.us = phi i64 [ %i.cl, %.preheader381 ], [ %.0.i.us.us.unr, %.preheader381.prol.loopexit ]
  %i.bv = load i64, ptr %.021.i.us.us, align 8, !tbaa !15
  %i.bw = load i64, ptr %.022.i.us.us, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 8 ; 2 uses
  store i64 %i.bw, ptr %.021.i.us.us, align 8, !tbaa !15
  %i.by = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 8 ; 2 uses
  store i64 %i.bv, ptr %.022.i.us.us, align 8, !tbaa !15
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !15
  %i.ca = load i64, ptr %i.by, align 8, !tbaa !15
  %i.cb = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 16 ; 2 uses
  store i64 %i.ca, ptr %i.bx, align 8, !tbaa !15
  %i.cc = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 16 ; 2 uses
  store i64 %i.bz, ptr %i.by, align 8, !tbaa !15
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.ce = load i64, ptr %i.cc, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 24 ; 2 uses
  store i64 %i.ce, ptr %i.cb, align 8, !tbaa !15
  %i.cg = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 24 ; 2 uses
  store i64 %i.cd, ptr %i.cc, align 8, !tbaa !15
  %i.ch = load i64, ptr %i.cf, align 8, !tbaa !15
  %i.ci = load i64, ptr %i.cg, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 32
  store i64 %i.ci, ptr %i.cf, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 32
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !15
  %i.cl = add i64 %.0.i.us.us, -4                 ; 2 uses
  %.not23.i.us.us.3 = icmp eq i64 %i.cl, 0
  br i1 %.not23.i.us.us.3, label %swapfunc.exit.loopexit.us.us, label %.preheader381, !llvm.loop !28

swapfunc.exit.loopexit.us.us:                     ; preds = %.preheader381.prol.loopexit, %.preheader381, %middle.block939
  %i.cm = icmp ugt ptr %i.bf, %.0
  %indvar.next919 = add i64 %indvar918, 1
  br i1 %i.cm, label %.lr.ph364.us377, label %.critedge.us375, !llvm.loop !17

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0222369 = phi ptr [ %.0222, %.critedge ], [ %.0222368, %.preheader.preheader ] ; 3 uses
  %i.cn = icmp ugt ptr %.0222369, %.0
  br i1 %i.cn, label %.lr.ph364, label %.critedge

.lr.ph364:                                        ; preds = %.preheader, %swapfunc.exit.loopexit324
  %.0225363 = phi ptr [ %i.co, %swapfunc.exit.loopexit324 ], [ %.0222369, %.preheader ] ; 7 uses
  %i.co = getelementptr inbounds i8, ptr %.0225363, i64 %i.a ; 8 uses
  %i.cp = tail call i32 %3(ptr noundef nonnull %i.co, ptr noundef nonnull %.0225363) #2
  %i.cq = icmp sgt i32 %i.cp, 0
  br i1 %i.cq, label %iter.check897, label %.critedge

iter.check897:                                    ; preds = %.lr.ph364
  br i1 %min.iters.check877, label %.preheader.i.preheader, label %vector.main.loop.iter.check878

vector.main.loop.iter.check878:                   ; preds = %iter.check897
  br i1 %min.iters.check879, label %vec.epilog.ph901, label %vector.ph880

vector.ph880:                                     ; preds = %vector.main.loop.iter.check878
  %i.cr = getelementptr i8, ptr %.0225363, i64 %n.vec881
  %i.cs = getelementptr i8, ptr %i.co, i64 %n.vec881
  br label %vector.body882

vector.body882:                                   ; preds = %vector.body882, %vector.ph880
  %index883 = phi i64 [ 0, %vector.ph880 ], [ %index.next890, %vector.body882 ] ; 3 uses
  %next.gep884 = getelementptr i8, ptr %.0225363, i64 %index883 ; 3 uses
  %next.gep885 = getelementptr i8, ptr %i.co, i64 %index883 ; 3 uses
  %i.ct = getelementptr i8, ptr %next.gep884, i64 16 ; 2 uses
  %wide.load886 = load <16 x i8>, ptr %next.gep884, align 1, !tbaa !29
  %wide.load887 = load <16 x i8>, ptr %i.ct, align 1, !tbaa !29
  %i.cu = getelementptr i8, ptr %next.gep885, i64 16 ; 2 uses
  %wide.load888 = load <16 x i8>, ptr %next.gep885, align 1, !tbaa !29
  %wide.load889 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !29
  store <16 x i8> %wide.load888, ptr %next.gep884, align 1, !tbaa !29
  store <16 x i8> %wide.load889, ptr %i.ct, align 1, !tbaa !29
  store <16 x i8> %wide.load886, ptr %next.gep885, align 1, !tbaa !29
  store <16 x i8> %wide.load887, ptr %i.cu, align 1, !tbaa !29
  %index.next890 = add nuw i64 %index883, 32      ; 2 uses
  %i.cv = icmp eq i64 %index.next890, %n.vec881
  br i1 %i.cv, label %middle.block891, label %vector.body882, !llvm.loop !30

middle.block891:                                  ; preds = %vector.body882
  br i1 %cmp.n892, label %swapfunc.exit.loopexit324, label %vec.epilog.iter.check899

vec.epilog.iter.check899:                         ; preds = %middle.block891
  br i1 %min.epilog.iters.check900, label %.preheader.i.preheader, label %vec.epilog.ph901, !prof !31

vec.epilog.ph901:                                 ; preds = %vector.main.loop.iter.check878, %vec.epilog.iter.check899
  %vec.epilog.resume.val893 = phi i64 [ %n.vec881, %vec.epilog.iter.check899 ], [ 0, %vector.main.loop.iter.check878 ]
  %i.cw = getelementptr i8, ptr %.0225363, i64 %n.vec902
  %i.cx = getelementptr i8, ptr %i.co, i64 %n.vec902
  br label %vec.epilog.vector.body903

vec.epilog.vector.body903:                        ; preds = %vec.epilog.vector.body903, %vec.epilog.ph901
  %index904 = phi i64 [ %vec.epilog.resume.val893, %vec.epilog.ph901 ], [ %index.next909, %vec.epilog.vector.body903 ] ; 3 uses
  %next.gep905 = getelementptr i8, ptr %.0225363, i64 %index904 ; 2 uses
  %next.gep906 = getelementptr i8, ptr %i.co, i64 %index904 ; 2 uses
  %wide.load907 = load <4 x i8>, ptr %next.gep905, align 1, !tbaa !29
  %wide.load908 = load <4 x i8>, ptr %next.gep906, align 1, !tbaa !29
  store <4 x i8> %wide.load908, ptr %next.gep905, align 1, !tbaa !29
  store <4 x i8> %wide.load907, ptr %next.gep906, align 1, !tbaa !29
  %index.next909 = add nuw i64 %index904, 4       ; 2 uses
  %i.cy = icmp eq i64 %index.next909, %n.vec902
  br i1 %i.cy, label %vec.epilog.middle.block910, label %vec.epilog.vector.body903, !llvm.loop !32

vec.epilog.middle.block910:                       ; preds = %vec.epilog.vector.body903
  br i1 %cmp.n911, label %swapfunc.exit.loopexit324, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check897, %vec.epilog.iter.check899, %vec.epilog.middle.block910
  %.020.i.ph = phi i64 [ %2, %iter.check897 ], [ %i.ar, %vec.epilog.iter.check899 ], [ %i.as, %vec.epilog.middle.block910 ]
  %.019.i.ph = phi ptr [ %.0225363, %iter.check897 ], [ %i.cr, %vec.epilog.iter.check899 ], [ %i.cw, %vec.epilog.middle.block910 ]
  %.018.i.ph = phi ptr [ %i.co, %iter.check897 ], [ %i.cs, %vec.epilog.iter.check899 ], [ %i.cx, %vec.epilog.middle.block910 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.020.i = phi i64 [ %i.dd, %.preheader.i ], [ %.020.i.ph, %.preheader.i.preheader ]
  %.019.i = phi ptr [ %i.db, %.preheader.i ], [ %.019.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.018.i = phi ptr [ %i.dc, %.preheader.i ], [ %.018.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.cz = load i8, ptr %.019.i, align 1, !tbaa !29
  %i.da = load i8, ptr %.018.i, align 1, !tbaa !29
  %i.db = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  store i8 %i.da, ptr %.019.i, align 1, !tbaa !29
  %i.dc = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  store i8 %i.cz, ptr %.018.i, align 1, !tbaa !29
  %i.dd = add i64 %.020.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.dd, 0
  br i1 %.not.i, label %swapfunc.exit.loopexit324, label %.preheader.i, !llvm.loop !33

swapfunc.exit.loopexit324:                        ; preds = %.preheader.i, %vec.epilog.middle.block910, %middle.block891
  %i.de = icmp ugt ptr %i.co, %.0
  br i1 %i.de, label %.lr.ph364, label %.critedge, !llvm.loop !17

.critedge:                                        ; preds = %swapfunc.exit.loopexit324, %.lr.ph364, %.preheader
  %.0222 = getelementptr inbounds nuw i8, ptr %.0222369, i64 %2 ; 2 uses
  %i.df = icmp ult ptr %.0222, %i.af
  br i1 %i.df, label %.preheader, label %.thread, !llvm.loop !13

bb.c:                                             ; preds = %bb.b
  %i.dg = lshr i64 %.0214, 1
  %i.dh = mul i64 %i.dg, %2
  %i.di = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dh ; 8 uses
end_hunk_0
