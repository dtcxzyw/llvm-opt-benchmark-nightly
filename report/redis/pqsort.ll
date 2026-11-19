Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/pqsort?download=true
inline.NumInlined: 11
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local void @pqsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 !guid !13 {
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
define internal fastcc void @_pqsort(ptr noundef %0, i64 noundef %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(address) %4, ptr nofree noundef readnone captures(address) %5) unnamed_addr #0 !guid !106 {
bb.a:
  %i.a = sub i64 0, %2                            ; 10 uses
  %i.b = icmp ne i64 %2, 8
  %i.c = zext i1 %i.b to i32
  %i.d = lshr i64 %2, 3                           ; 24 uses
  %i.e = and i64 %2, -8                           ; 8 uses
  %min.iters.check846 = icmp ult i64 %2, 4
  %min.iters.check852 = icmp ult i64 %2, 32
  %i.f = and i64 %2, 28
  %n.vec854 = and i64 %2, -32                     ; 5 uses
  %i.g = and i64 %2, 31
  %cmp.n865 = icmp eq i64 %2, %n.vec854
  %min.epilog.iters.check869 = icmp eq i64 %i.f, 0
  %n.vec872 = and i64 %2, -4                      ; 4 uses
  %i.h = and i64 %2, 3
  %cmp.n881 = icmp eq i64 %2, %n.vec872
  %min.iters.check819 = icmp ult i64 %2, 32
  %n.vec825 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.i = shl nuw i64 %n.vec825, 3                 ; 2 uses
  %i.j = and i64 %i.d, 3
  %cmp.n836 = icmp eq i64 %i.d, %n.vec825
  %min.iters.check774 = icmp ult i64 %2, 4
  %min.iters.check780 = icmp ult i64 %2, 32
  %i.k = and i64 %2, 28
  %n.vec782 = and i64 %2, -32                     ; 5 uses
  %i.l = and i64 %2, 31
  %cmp.n793 = icmp eq i64 %2, %n.vec782
  %min.epilog.iters.check797 = icmp eq i64 %i.k, 0
  %n.vec800 = and i64 %2, -4                      ; 4 uses
  %i.m = and i64 %2, 3
  %cmp.n809 = icmp eq i64 %2, %n.vec800
  %min.iters.check747 = icmp ult i64 %2, 32
  %n.vec753 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.n = shl nuw i64 %n.vec753, 3                 ; 2 uses
  %i.o = and i64 %i.d, 3
  %cmp.n764 = icmp eq i64 %i.d, %n.vec753
  %min.iters.check698 = icmp ult i64 %2, 4
  %min.iters.check704 = icmp ult i64 %2, 32
  %i.p = and i64 %2, 28
  %n.vec706 = and i64 %2, -32                     ; 5 uses
  %i.q = and i64 %2, 31
  %cmp.n717 = icmp eq i64 %2, %n.vec706
  %min.epilog.iters.check721 = icmp eq i64 %i.p, 0
  %n.vec724 = and i64 %2, -4                      ; 4 uses
  %i.r = and i64 %2, 3
  %cmp.n733 = icmp eq i64 %2, %n.vec724
  %min.iters.check671 = icmp ult i64 %2, 32
  %n.vec677 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.s = shl nuw i64 %n.vec677, 3                 ; 2 uses
  %i.t = and i64 %i.d, 3
  %cmp.n688 = icmp eq i64 %i.d, %n.vec677
  %min.iters.check626 = icmp ult i64 %2, 4
  %min.iters.check632 = icmp ult i64 %2, 32
  %i.u = and i64 %2, 28
  %n.vec634 = and i64 %2, -32                     ; 5 uses
  %i.v = and i64 %2, 31
  %cmp.n645 = icmp eq i64 %2, %n.vec634
  %min.epilog.iters.check649 = icmp eq i64 %i.u, 0
  %n.vec652 = and i64 %2, -4                      ; 4 uses
  %i.w = and i64 %2, 3
  %cmp.n661 = icmp eq i64 %2, %n.vec652
  %min.iters.check599 = icmp ult i64 %2, 48
  %n.vec605 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.x = shl nuw i64 %n.vec605, 3                 ; 2 uses
  %i.y = and i64 %i.d, 3
  %cmp.n616 = icmp eq i64 %i.d, %n.vec605
  br label %bb.b

bb.b:                                             ; preds = %bb.at, %bb.a
  %.0214 = phi i64 [ %1, %bb.a ], [ %i.yd, %bb.at ] ; 9 uses
  %.0 = phi ptr [ %0, %bb.a ], [ %i.xz, %bb.at ]  ; 63 uses
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
  %i.am = load i64, ptr %.0225363.us.us, align 8, !tbaa !108
  %i.an = load i64, ptr %i.aj, align 8, !tbaa !108
  store i64 %i.an, ptr %.0225363.us.us, align 8, !tbaa !108
  store i64 %i.am, ptr %i.aj, align 8, !tbaa !108
  %i.ao = icmp ugt ptr %i.aj, %.0
  br i1 %i.ao, label %.lr.ph364.us, label %.critedge.us, !llvm.loop !14

.critedge.us:                                     ; preds = %swapfunc.exit.us.us, %.lr.ph364.us, %.preheader.us
  %.0222.us = getelementptr inbounds nuw i8, ptr %.0222369.us, i64 %2 ; 2 uses
  %i.ap = icmp ult ptr %.0222.us, %i.af
  br i1 %i.ap, label %.preheader.us, label %.thread, !llvm.loop !15

.preheader.lr.ph.split:                           ; preds = %.preheader.lr.ph
  br i1 %or.cond, label %.preheader.us373.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph.split
  %min.iters.check886 = icmp ult i64 %2, 4
  %min.iters.check888 = icmp ult i64 %2, 32
  %i.aq = and i64 %2, 28
  %n.vec890 = and i64 %2, -32                     ; 5 uses
  %i.ar = and i64 %2, 31
  %cmp.n901 = icmp eq i64 %2, %n.vec890
  %min.epilog.iters.check905 = icmp eq i64 %i.aq, 0
  %n.vec908 = and i64 %2, -4                      ; 4 uses
  %i.as = and i64 %2, 3
  %cmp.n917 = icmp eq i64 %2, %n.vec908
  br label %.preheader

.preheader.us373.preheader:                       ; preds = %.preheader.lr.ph.split
  %i.at = and i64 %2, -8                          ; 2 uses
  %6 = getelementptr i8, ptr %.0, i64 %i.at
  %i.au = getelementptr i8, ptr %.0, i64 %2
  %i.av = getelementptr i8, ptr %i.au, i64 %i.at
  %min.iters.check934 = icmp ult i64 %2, 32
  %n.vec941 = and i64 %i.d, 2305843009213693948   ; 3 uses
  %i.aw = shl nuw i64 %n.vec941, 3                ; 2 uses
  %i.ax = and i64 %i.d, 3
  %cmp.n952 = icmp eq i64 %i.d, %n.vec941
  br label %.preheader.us373

.preheader.us373:                                 ; preds = %.preheader.us373.preheader, %.critedge.us376
  %indvar932 = phi i64 [ 0, %.preheader.us373.preheader ], [ %indvar.next933, %.critedge.us376 ] ; 2 uses
  %.0222369.us374 = phi ptr [ %.0222368, %.preheader.us373.preheader ], [ %.0222.us377, %.critedge.us376 ] ; 4 uses
  %i.ay = mul i64 %2, %indvar932                  ; 3 uses
  %scevgep = getelementptr i8, ptr %6, i64 %i.ay
  %scevgep931 = getelementptr i8, ptr %.0, i64 %i.ay
  %scevgep932 = getelementptr i8, ptr %i.av, i64 %i.ay
  %i.az = icmp ugt ptr %.0222369.us374, %.0
  br i1 %i.az, label %.lr.ph364.us375.preheader, label %.critedge.us376

.lr.ph364.us375.preheader:                        ; preds = %.preheader.us373
  %bound0936 = icmp ult ptr %.0222369.us374, %scevgep
  %bound1937 = icmp ult ptr %scevgep931, %scevgep932
  %found.conflict938 = and i1 %bound0936, %bound1937
  br label %.lr.ph364.us375

.lr.ph364.us375:                                  ; preds = %.lr.ph364.us375.preheader, %swapfunc.exit.loopexit.us.us
  %.0225363.us366.us = phi ptr [ %i.ba, %swapfunc.exit.loopexit.us.us ], [ %.0222369.us374, %.lr.ph364.us375.preheader ] ; 5 uses
  %i.ba = getelementptr inbounds i8, ptr %.0225363.us366.us, i64 %i.a ; 6 uses
  %i.bb = tail call i32 %3(ptr noundef nonnull %i.ba, ptr noundef nonnull %.0225363.us366.us) #2
  %i.bc = icmp sgt i32 %i.bb, 0
  br i1 %i.bc, label %vector.memcheck936, label %.critedge.us376

vector.memcheck936:                               ; preds = %.lr.ph364.us375
  %brmerge = select i1 %min.iters.check934, i1 true, i1 %found.conflict938
  br i1 %brmerge, label %.preheader381.preheader956, label %vector.ph940

vector.ph940:                                     ; preds = %vector.memcheck936
  %i.bd = getelementptr i8, ptr %i.ba, i64 %i.aw
  %i.be = getelementptr i8, ptr %.0225363.us366.us, i64 %i.aw
  br label %vector.body942

vector.body942:                                   ; preds = %vector.body942, %vector.ph940
  %index943 = phi i64 [ 0, %vector.ph940 ], [ %index.next950, %vector.body942 ] ; 2 uses
  %i.bf = shl i64 %index943, 3                    ; 2 uses
  %next.gep944.a = getelementptr i8, ptr %i.ba, i64 %i.bf ; 3 uses
  %next.gep945 = getelementptr i8, ptr %.0225363.us366.us, i64 %i.bf ; 3 uses
  %i.bg = getelementptr i8, ptr %next.gep945, i64 16 ; 2 uses
  %wide.load946.a = load <2 x i64>, ptr %next.gep945, align 8, !tbaa !108, !alias.scope !110, !noalias !111
  %wide.load947.a = load <2 x i64>, ptr %i.bg, align 8, !tbaa !108, !alias.scope !110, !noalias !111
  %i.bh = getelementptr i8, ptr %next.gep944.a, i64 16 ; 2 uses
  %wide.load948.a = load <2 x i64>, ptr %next.gep944.a, align 8, !tbaa !108, !alias.scope !111
  %wide.load949 = load <2 x i64>, ptr %i.bh, align 8, !tbaa !108, !alias.scope !111
  store <2 x i64> %wide.load948.a, ptr %next.gep945, align 8, !tbaa !108, !alias.scope !110, !noalias !111
  store <2 x i64> %wide.load949, ptr %i.bg, align 8, !tbaa !108, !alias.scope !110, !noalias !111
  store <2 x i64> %wide.load946.a, ptr %next.gep944.a, align 8, !tbaa !108, !alias.scope !111
  store <2 x i64> %wide.load947.a, ptr %i.bh, align 8, !tbaa !108, !alias.scope !111
  %index.next950 = add nuw i64 %index943, 4       ; 2 uses
  %i.bi = icmp eq i64 %index.next950, %n.vec941
  br i1 %i.bi, label %middle.block951, label %vector.body942, !llvm.loop !19

middle.block951:                                  ; preds = %vector.body942
  br i1 %cmp.n952, label %swapfunc.exit.loopexit.us.us, label %.preheader381.preheader956

.preheader381.preheader956:                       ; preds = %vector.memcheck936, %middle.block951
  %.022.i.us.us.ph = phi ptr [ %i.bd, %middle.block951 ], [ %i.ba, %vector.memcheck936 ] ; 2 uses
  %.021.i.us.us.ph = phi ptr [ %i.be, %middle.block951 ], [ %.0225363.us366.us, %vector.memcheck936 ] ; 2 uses
  %.0.i.us.us.ph = phi i64 [ %i.ax, %middle.block951 ], [ %i.d, %vector.memcheck936 ] ; 4 uses
  %i.bj = add nsw i64 %.0.i.us.us.ph, -1
  %xtraiter1022 = and i64 %.0.i.us.us.ph, 3       ; 2 uses
  %lcmp.mod1023.not = icmp eq i64 %xtraiter1022, 0
  br i1 %lcmp.mod1023.not, label %.preheader381.prol.loopexit, label %.preheader381.prol

.preheader381.prol:                               ; preds = %.preheader381.preheader956, %.preheader381.prol
  %.022.i.us.us.prol = phi ptr [ %i.bn, %.preheader381.prol ], [ %.022.i.us.us.ph, %.preheader381.preheader956 ] ; 3 uses
  %.021.i.us.us.prol = phi ptr [ %i.bm, %.preheader381.prol ], [ %.021.i.us.us.ph, %.preheader381.preheader956 ] ; 3 uses
  %.0.i.us.us.prol = phi i64 [ %i.bo, %.preheader381.prol ], [ %.0.i.us.us.ph, %.preheader381.preheader956 ]
  %prol.iter1024 = phi i64 [ %prol.iter1024.next, %.preheader381.prol ], [ 0, %.preheader381.preheader956 ]
  %i.bk = load i64, ptr %.021.i.us.us.prol, align 8, !tbaa !108
  %i.bl = load i64, ptr %.022.i.us.us.prol, align 8, !tbaa !108
  %i.bm = getelementptr inbounds nuw i8, ptr %.021.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bl, ptr %.021.i.us.us.prol, align 8, !tbaa !108
  %i.bn = getelementptr inbounds nuw i8, ptr %.022.i.us.us.prol, i64 8 ; 2 uses
  store i64 %i.bk, ptr %.022.i.us.us.prol, align 8, !tbaa !108
  %i.bo = add i64 %.0.i.us.us.prol, -1            ; 2 uses
  %prol.iter1024.next = add i64 %prol.iter1024, 1 ; 2 uses
  %prol.iter1024.cmp.not = icmp eq i64 %prol.iter1024.next, %xtraiter1022
  br i1 %prol.iter1024.cmp.not, label %.preheader381.prol.loopexit, label %.preheader381.prol, !llvm.loop !20

.preheader381.prol.loopexit:                      ; preds = %.preheader381.prol, %.preheader381.preheader956
  %.022.i.us.us.unr = phi ptr [ %.022.i.us.us.ph, %.preheader381.preheader956 ], [ %i.bn, %.preheader381.prol ]
  %.021.i.us.us.unr = phi ptr [ %.021.i.us.us.ph, %.preheader381.preheader956 ], [ %i.bm, %.preheader381.prol ]
  %.0.i.us.us.unr = phi i64 [ %.0.i.us.us.ph, %.preheader381.preheader956 ], [ %i.bo, %.preheader381.prol ]
  %i.bp = icmp ult i64 %i.bj, 3
  br i1 %i.bp, label %swapfunc.exit.loopexit.us.us, label %.preheader381

.preheader381:                                    ; preds = %.preheader381.prol.loopexit, %.preheader381
  %.022.i.us.us = phi ptr [ %i.cf, %.preheader381 ], [ %.022.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.021.i.us.us = phi ptr [ %i.ce, %.preheader381 ], [ %.021.i.us.us.unr, %.preheader381.prol.loopexit ] ; 6 uses
  %.0.i.us.us = phi i64 [ %i.cg, %.preheader381 ], [ %.0.i.us.us.unr, %.preheader381.prol.loopexit ]
  %i.bq = load i64, ptr %.021.i.us.us, align 8, !tbaa !108
  %i.br = load i64, ptr %.022.i.us.us, align 8, !tbaa !108
  %i.bs = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 8 ; 2 uses
  store i64 %i.br, ptr %.021.i.us.us, align 8, !tbaa !108
  %i.bt = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 8 ; 2 uses
  store i64 %i.bq, ptr %.022.i.us.us, align 8, !tbaa !108
  %i.bu = load i64, ptr %i.bs, align 8, !tbaa !108
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !108
  %i.bw = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 16 ; 2 uses
  store i64 %i.bv, ptr %i.bs, align 8, !tbaa !108
  %i.bx = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 16 ; 2 uses
  store i64 %i.bu, ptr %i.bt, align 8, !tbaa !108
  %i.by = load i64, ptr %i.bw, align 8, !tbaa !108
  %i.bz = load i64, ptr %i.bx, align 8, !tbaa !108
  %i.ca = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 24 ; 2 uses
  store i64 %i.bz, ptr %i.bw, align 8, !tbaa !108
  %i.cb = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 24 ; 2 uses
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !108
  %i.cc = load i64, ptr %i.ca, align 8, !tbaa !108
  %i.cd = load i64, ptr %i.cb, align 8, !tbaa !108
  %i.ce = getelementptr inbounds nuw i8, ptr %.021.i.us.us, i64 32
  store i64 %i.cd, ptr %i.ca, align 8, !tbaa !108
  %i.cf = getelementptr inbounds nuw i8, ptr %.022.i.us.us, i64 32
  store i64 %i.cc, ptr %i.cb, align 8, !tbaa !108
  %i.cg = add i64 %.0.i.us.us, -4                 ; 2 uses
  %.not23.i.us.us.3 = icmp eq i64 %i.cg, 0
  br i1 %.not23.i.us.us.3, label %swapfunc.exit.loopexit.us.us, label %.preheader381, !llvm.loop !21

swapfunc.exit.loopexit.us.us:                     ; preds = %.preheader381.prol.loopexit, %.preheader381, %middle.block951
  %i.ch = icmp ugt ptr %i.ba, %.0
  br i1 %i.ch, label %.lr.ph364.us375, label %.critedge.us376, !llvm.loop !14

.critedge.us376:                                  ; preds = %swapfunc.exit.loopexit.us.us, %.lr.ph364.us375, %.preheader.us373
  %.0222.us377 = getelementptr inbounds nuw i8, ptr %.0222369.us374, i64 %2 ; 2 uses
  %i.ci = icmp ult ptr %.0222.us377, %i.af
  %indvar.next933 = add i64 %indvar932, 1
  br i1 %i.ci, label %.preheader.us373, label %.thread, !llvm.loop !15

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %.0222369 = phi ptr [ %.0222, %.critedge ], [ %.0222368, %.preheader.preheader ] ; 3 uses
  %i.cj = icmp ugt ptr %.0222369, %.0
  br i1 %i.cj, label %.lr.ph364, label %.critedge

.lr.ph364:                                        ; preds = %.preheader, %swapfunc.exit.loopexit324
  %.0225363 = phi ptr [ %i.ck, %swapfunc.exit.loopexit324 ], [ %.0222369, %.preheader ] ; 7 uses
  %i.ck = getelementptr inbounds i8, ptr %.0225363, i64 %i.a ; 8 uses
  %i.cl = tail call i32 %3(ptr noundef nonnull %i.ck, ptr noundef nonnull %.0225363) #2
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %iter.check902, label %.critedge

iter.check902:                                    ; preds = %.lr.ph364
  br i1 %min.iters.check886, label %.preheader.i.preheader, label %vector.main.loop.iter.check887

vector.main.loop.iter.check887:                   ; preds = %iter.check902
  br i1 %min.iters.check888, label %vec.epilog.ph906, label %vector.ph889

vector.ph889:                                     ; preds = %vector.main.loop.iter.check887
  %i.cn = getelementptr i8, ptr %.0225363, i64 %n.vec890
  %i.co = getelementptr i8, ptr %i.ck, i64 %n.vec890
  br label %vector.body891

vector.body891:                                   ; preds = %vector.ph889, %vector.body891
  %index892 = phi i64 [ 0, %vector.ph889 ], [ %index.next899, %vector.body891 ] ; 3 uses
  %next.gep893 = getelementptr i8, ptr %.0225363, i64 %index892 ; 3 uses
  %next.gep894 = getelementptr i8, ptr %i.ck, i64 %index892 ; 3 uses
  %i.cp = getelementptr i8, ptr %next.gep893, i64 16 ; 2 uses
  %wide.load895 = load <16 x i8>, ptr %next.gep893, align 1, !tbaa !115
  %wide.load896 = load <16 x i8>, ptr %i.cp, align 1, !tbaa !115
  %i.cq = getelementptr i8, ptr %next.gep894, i64 16 ; 2 uses
  %wide.load897 = load <16 x i8>, ptr %next.gep894, align 1, !tbaa !115
  %wide.load898 = load <16 x i8>, ptr %i.cq, align 1, !tbaa !115
  store <16 x i8> %wide.load897, ptr %next.gep893, align 1, !tbaa !115
  store <16 x i8> %wide.load898, ptr %i.cp, align 1, !tbaa !115
  store <16 x i8> %wide.load895, ptr %next.gep894, align 1, !tbaa !115
  store <16 x i8> %wide.load896, ptr %i.cq, align 1, !tbaa !115
  %index.next899 = add nuw i64 %index892, 32      ; 2 uses
  %i.cr = icmp eq i64 %index.next899, %n.vec890
  br i1 %i.cr, label %middle.block900, label %vector.body891, !llvm.loop !22

middle.block900:                                  ; preds = %vector.body891
  br i1 %cmp.n901, label %swapfunc.exit.loopexit324, label %vec.epilog.iter.check903

vec.epilog.iter.check903:                         ; preds = %middle.block900
  br i1 %min.epilog.iters.check905, label %.preheader.i.preheader, label %vec.epilog.ph906, !prof !116

vec.epilog.ph906:                                 ; preds = %vector.main.loop.iter.check887, %vec.epilog.iter.check903
  %vec.epilog.resume.val907 = phi i64 [ %n.vec890, %vec.epilog.iter.check903 ], [ 0, %vector.main.loop.iter.check887 ]
  %i.cs = getelementptr i8, ptr %.0225363, i64 %n.vec908
  %i.ct = getelementptr i8, ptr %i.ck, i64 %n.vec908
  br label %vec.epilog.vector.body909

vec.epilog.vector.body909:                        ; preds = %vec.epilog.vector.body909, %vec.epilog.ph906
  %index910 = phi i64 [ %vec.epilog.resume.val907, %vec.epilog.ph906 ], [ %index.next915, %vec.epilog.vector.body909 ] ; 3 uses
  %next.gep911 = getelementptr i8, ptr %.0225363, i64 %index910 ; 2 uses
  %next.gep912 = getelementptr i8, ptr %i.ck, i64 %index910 ; 2 uses
  %wide.load913 = load <4 x i8>, ptr %next.gep911, align 1, !tbaa !115
  %wide.load914 = load <4 x i8>, ptr %next.gep912, align 1, !tbaa !115
  store <4 x i8> %wide.load914, ptr %next.gep911, align 1, !tbaa !115
  store <4 x i8> %wide.load913, ptr %next.gep912, align 1, !tbaa !115
  %index.next915 = add nuw i64 %index910, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next915, %n.vec908
  br i1 %i.cu, label %vec.epilog.middle.block916, label %vec.epilog.vector.body909, !llvm.loop !23

vec.epilog.middle.block916:                       ; preds = %vec.epilog.vector.body909
  br i1 %cmp.n917, label %swapfunc.exit.loopexit324, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %iter.check902, %vec.epilog.iter.check903, %vec.epilog.middle.block916
  %.020.i.ph = phi i64 [ %2, %iter.check902 ], [ %i.ar, %vec.epilog.iter.check903 ], [ %i.as, %vec.epilog.middle.block916 ]
  %.019.i.ph = phi ptr [ %.0225363, %iter.check902 ], [ %i.cn, %vec.epilog.iter.check903 ], [ %i.cs, %vec.epilog.middle.block916 ]
  %.018.i.ph = phi ptr [ %i.ck, %iter.check902 ], [ %i.co, %vec.epilog.iter.check903 ], [ %i.ct, %vec.epilog.middle.block916 ]
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.preheader.i
  %.020.i = phi i64 [ %i.cz, %.preheader.i ], [ %.020.i.ph, %.preheader.i.preheader ]
  %.019.i = phi ptr [ %i.cx, %.preheader.i ], [ %.019.i.ph, %.preheader.i.preheader ] ; 3 uses
  %.018.i = phi ptr [ %i.cy, %.preheader.i ], [ %.018.i.ph, %.preheader.i.preheader ] ; 3 uses
  %i.cv = load i8, ptr %.019.i, align 1, !tbaa !115
  %i.cw = load i8, ptr %.018.i, align 1, !tbaa !115
  %i.cx = getelementptr inbounds nuw i8, ptr %.019.i, i64 1
  store i8 %i.cw, ptr %.019.i, align 1, !tbaa !115
  %i.cy = getelementptr inbounds nuw i8, ptr %.018.i, i64 1
  store i8 %i.cv, ptr %.018.i, align 1, !tbaa !115
  %i.cz = add i64 %.020.i, -1                     ; 2 uses
  %.not.i = icmp eq i64 %i.cz, 0
  br i1 %.not.i, label %swapfunc.exit.loopexit324, label %.preheader.i, !llvm.loop !24

swapfunc.exit.loopexit324:                        ; preds = %.preheader.i, %vec.epilog.middle.block916, %middle.block900
  %i.da = icmp ugt ptr %i.ck, %.0
  br i1 %i.da, label %.lr.ph364, label %.critedge, !llvm.loop !14

.critedge:                                        ; preds = %swapfunc.exit.loopexit324, %.lr.ph364, %.preheader
  %.0222 = getelementptr inbounds nuw i8, ptr %.0222369, i64 %2 ; 2 uses
  %i.db = icmp ult ptr %.0222, %i.af
  br i1 %i.db, label %.preheader, label %.thread, !llvm.loop !15

bb.c:                                             ; preds = %bb.b
  %i.dc = lshr i64 %.0214, 1
  %i.dd = mul i64 %i.dc, %2
  %i.de = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dd ; 8 uses
  %.not249 = icmp eq i64 %.0214, 7
  br i1 %.not249, label %med3.exit261, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.df = add i64 %.0214, -1
  %i.dg = mul i64 %i.df, %2
  %i.dh = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dg ; 8 uses
  %i.di = icmp ugt i64 %.0214, 40
  br i1 %i.di, label %bb.e, label %med3.exit260

bb.e:                                             ; preds = %bb.d
  %i.dj = lshr i64 %.0214, 3
  %i.dk = mul i64 %i.dj, %2                       ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dk ; 4 uses
  %i.dm = shl i64 %i.dk, 1                        ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %.0, i64 %i.dm ; 5 uses
  %i.do = tail call i32 %3(ptr noundef %.0, ptr noundef %i.dl) #2, !inline_history !25
  %i.dp = icmp slt i32 %i.do, 0
  %i.dq = tail call i32 %3(ptr noundef %i.dl, ptr noundef %i.dn) #2, !inline_history !25 ; 2 uses
  br i1 %i.dp, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.dr = icmp slt i32 %i.dq, 0
  br i1 %i.dr, label %med3.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ds = tail call i32 %3(ptr noundef %.0, ptr noundef %i.dn) #2, !inline_history !25
  %i.dt = icmp slt i32 %i.ds, 0
  %i.du = select i1 %i.dt, ptr %i.dn, ptr %.0
  br label %med3.exit

bb.h:                                             ; preds = %bb.e
  %i.dv = icmp sgt i32 %i.dq, 0
  br i1 %i.dv, label %med3.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.dw = tail call i32 %3(ptr noundef %.0, ptr noundef %i.dn) #2, !inline_history !25
  %i.dx = icmp slt i32 %i.dw, 0
  %i.dy = select i1 %i.dx, ptr %.0, ptr %i.dn
  br label %med3.exit

med3.exit:                                        ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.dz = phi ptr [ %i.du, %bb.g ], [ %i.dy, %bb.i ], [ %i.dl, %bb.f ], [ %i.dl, %bb.h ] ; 4 uses
  %i.ea = sub i64 0, %i.dk                        ; 2 uses
  %i.eb = getelementptr inbounds i8, ptr %i.de, i64 %i.ea ; 5 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.dk ; 5 uses
  %i.ed = tail call i32 %3(ptr noundef %i.eb, ptr noundef %i.de) #2, !inline_history !25
  %i.ee = icmp slt i32 %i.ed, 0
  %i.ef = tail call i32 %3(ptr noundef %i.de, ptr noundef %i.ec) #2, !inline_history !25 ; 2 uses
  br i1 %i.ee, label %bb.j, label %bb.l

bb.j:                                             ; preds = %med3.exit
  %i.eg = icmp slt i32 %i.ef, 0
  br i1 %i.eg, label %med3.exit259, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.eh = tail call i32 %3(ptr noundef %i.eb, ptr noundef %i.ec) #2, !inline_history !25
  %i.ei = icmp slt i32 %i.eh, 0
  %i.ej = select i1 %i.ei, ptr %i.ec, ptr %i.eb
  br label %med3.exit259

bb.l:                                             ; preds = %med3.exit
  %i.ek = icmp sgt i32 %i.ef, 0
  br i1 %i.ek, label %med3.exit259, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.el = tail call i32 %3(ptr noundef %i.eb, ptr noundef %i.ec) #2, !inline_history !25
  %i.em = icmp slt i32 %i.el, 0
  %i.en = select i1 %i.em, ptr %i.eb, ptr %i.ec
  br label %med3.exit259

med3.exit259:                                     ; preds = %bb.j, %bb.k, %bb.l, %bb.m
  %i.eo = phi ptr [ %i.ej, %bb.k ], [ %i.en, %bb.m ], [ %i.de, %bb.j ], [ %i.de, %bb.l ] ; 4 uses
  %i.ep = sub i64 0, %i.dm
  %i.eq = getelementptr inbounds i8, ptr %i.dh, i64 %i.ep ; 5 uses
  %i.er = getelementptr inbounds i8, ptr %i.dh, i64 %i.ea ; 4 uses
  %i.es = tail call i32 %3(ptr noundef %i.eq, ptr noundef %i.er) #2, !inline_history !25
  %i.et = icmp slt i32 %i.es, 0
  %i.eu = tail call i32 %3(ptr noundef %i.er, ptr noundef %i.dh) #2, !inline_history !25 ; 2 uses
  br i1 %i.et, label %bb.n, label %bb.p

bb.n:                                             ; preds = %med3.exit259
  %i.ev = icmp slt i32 %i.eu, 0
  br i1 %i.ev, label %med3.exit260, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ew = tail call i32 %3(ptr noundef %i.eq, ptr noundef %i.dh) #2, !inline_history !25
  %i.ex = icmp slt i32 %i.ew, 0
  %i.ey = select i1 %i.ex, ptr %i.dh, ptr %i.eq
  br label %med3.exit260

end_hunk_0
