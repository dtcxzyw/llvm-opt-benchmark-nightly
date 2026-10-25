Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/darCut?download=true
inline.NumInlined: 63
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 24
loop-unroll.NumUnrolledNotLatch: 2
begin_hunk_0_@Dar_ObjPrepareCuts:bb.a
  %i.bh = or disjoint i32 %i.bg, 65535
  store i32 0, ptr %i.l, align 4, !tbaa !30
  br label %Dar_CutFindValue.exit

.lr.ph.i:                                         ; preds = %Vec_PtrPush.exit
  %i.bi = and i32 %i.be, 536870911
  %i.bj = or disjoint i32 %i.bi, 536870912        ; 2 uses
  store i32 %i.bj, ptr %i.bc, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !14 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.bl, ptr %i.bm, align 4, !tbaa !9
  %i.bn = and i32 %i.bl, 31
  %i.bo = shl nuw i32 1, %i.bn
  %i.bp = and i32 %i.bj, 1073676288
  %i.bq = or disjoint i32 %i.bp, 43690            ; 3 uses
  store i32 %i.bo, ptr %i.l, align 4, !tbaa !30
  store i32 %i.bq, ptr %i.bc, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !31
  %i.bt = getelementptr i8, ptr %i.bs, i64 32
  %.val.i = load ptr, ptr %i.bt, align 8, !tbaa !39 ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %Dar_CutFindValue.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.bv = getelementptr i8, ptr %.val.i, i64 8
  %.val.i.i = load ptr, ptr %i.bv, align 8, !tbaa !27
  %i.bw = load i32, ptr %i.bu, align 4, !tbaa !9
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  %i.ca = icmp eq ptr %i.bz, null
  %spec.select = select i1 %i.ca, i32 0, i32 65601536
  br label %Dar_CutFindValue.exit

Dar_CutFindValue.exit:                            ; preds = %.lr.ph.split.i, %.thread, %.lr.ph.i
  %storemerge50 = phi i32 [ %i.bq, %.lr.ph.split.i ], [ %i.bh, %.thread ], [ %i.bq, %.lr.ph.i ]
  %.018.i = phi i32 [ %spec.select, %.lr.ph.split.i ], [ 65601536, %.thread ], [ 0, %.lr.ph.i ]
  %i.cb = and i32 %storemerge50, -134152193
  %i.cc = or disjoint i32 %.018.i, %i.cb
  store i32 %i.cc, ptr %i.bc, align 4
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 2736 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !49
  %i.cf = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.cg = tail call i32 @Aig_MmFixedReadMemUsage(ptr noundef %i.cf) #13
  %i.ch = sdiv i32 %i.cg, 1048576
  %i.ci = icmp slt i32 %i.ce, %i.ch
  br i1 %i.ci, label %bb.k, label %bb.l

bb.k:                                             ; preds = %Dar_CutFindValue.exit
  %i.cj = load ptr, ptr %i.j, align 8, !tbaa !22
  %i.ck = tail call i32 @Aig_MmFixedReadMemUsage(ptr noundef %i.cj) #13
  %i.cl = sdiv i32 %i.ck, 1048576
  store i32 %i.cl, ptr %i.cd, align 8, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %Dar_CutFindValue.exit
  ret ptr %i.l
}

declare ptr @Aig_MmFixedEntryFetch(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare i32 @Aig_MmFixedReadMemUsage(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @Dar_ManCutsRestart(ptr nofree noundef captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %.val12 = load ptr, ptr %i.c, align 8, !tbaa !51
  %i.d = getelementptr inbounds nuw i8, ptr %.val12, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !23   ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 4
  %.val1316 = load i32, ptr %i.g, align 4, !tbaa !26
  %i.h = icmp sgt i32 %.val1316, 0
  br i1 %i.h, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.i = phi ptr [ %i.p, %bb.c ], [ %i.f, %bb.a ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !28   ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %.val14 = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val14, 7
  %.not = icmp eq i64 %i.n, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !15
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %i.p = phi ptr [ %i.i, %.lr.ph ], [ %.pre, %bb.b ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 4
  %.val13 = load i32, ptr %i.q, align 4, !tbaa !26
  %i.r = sext i32 %.val13 to i64
  %i.s = icmp slt i64 %indvars.iv.next, %i.r
  br i1 %i.s, label %.lr.ph, label %.critedge, !llvm.loop !50

.critedge:                                        ; preds = %bb.c, %bb.a
  %.lcssa15 = phi ptr [ %i.f, %bb.a ], [ %i.p, %bb.c ]
  %i.t = getelementptr i8, ptr %.lcssa15, i64 4
  store i32 0, ptr %i.t, align 4, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !22
  tail call void @Aig_MmFixedRestart(ptr noundef %i.v) #13
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %.val11 = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.y = tail call ptr @Dar_ObjPrepareCuts(ptr noundef nonnull %0, ptr noundef %.val11) ; 0 uses
  ret void
}

declare void @Aig_MmFixedRestart(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Dar_ObjComputeCuts(ptr nofree noundef captures(none) %0, ptr noundef initializes((40, 48)) %1, i32 noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %.val67 = load ptr, ptr %i.a, align 8, !tbaa !40
  %i.b = tail call ptr @Aig_ObjReal_rec(ptr noundef %.val67) #13
  %i.c = getelementptr i8, ptr %1, i64 16
  %.val68 = load ptr, ptr %i.c, align 8, !tbaa !41
  %i.d = tail call ptr @Aig_ObjReal_rec(ptr noundef %.val68) #13
  %i.e = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.f = and i64 %i.e, -2
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = tail call ptr @Dar_ObjPrepareCuts(ptr noundef %0, ptr noundef %1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 2 uses
  %.not = icmp ult i64 %i.j, 72057594037927936
  br i1 %.not, label %._crit_edge, label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.a
  %i.k = getelementptr i8, ptr %i.g, i64 40
  %.val66 = load ptr, ptr %i.k, align 8, !tbaa !15
  %i.l = ptrtoint ptr %i.d to i64                 ; 2 uses
  %i.m = and i64 %i.l, -2
  %i.n = inttoptr i64 %i.m to ptr                 ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 2748 ; 2 uses
  %i.r = getelementptr i8, ptr %1, i64 40         ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 2752 ; 2 uses
  %i.u = trunc i64 %i.e to i32
  %i.v = and i32 %i.u, 1
  %i.w = trunc i64 %i.l to i32
  %i.x = and i32 %i.w, 1
  %sext.i = sub nsw i32 0, %i.v
  %sext29.i = sub nsw i32 0, %i.x
  %.not63 = icmp eq i32 %2, 0
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2768 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph162, %.loopexit146
  %i.aa = phi i64 [ %i.j, %.lr.ph162 ], [ %i.zb, %.loopexit146 ] ; 2 uses
  %.058161 = phi i32 [ 0, %.lr.ph162 ], [ %i.zc, %.loopexit146 ]
  %.061159 = phi ptr [ %.val66, %.lr.ph162 ], [ %i.zd, %.loopexit146 ] ; 7 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.061159, i64 4 ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 268435456
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.loopexit146, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = load i64, ptr %i.p, align 8
  %.not168 = icmp ult i64 %i.af, 72057594037927936
  br i1 %.not168, label %.loopexit146, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %.val65 = load ptr, ptr %i.o, align 8, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %.061159, i64 8 ; 7 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %Dar_CutMerge.exit.thread
  %.057158 = phi i32 [ 0, %.lr.ph ], [ %i.yv, %Dar_CutMerge.exit.thread ]
  %.060156 = phi ptr [ %.val65, %.lr.ph ], [ %i.yw, %Dar_CutMerge.exit.thread ] ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.060156, i64 4 ; 3 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 268435456
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %Dar_CutMerge.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = load i32, ptr %i.q, align 4, !tbaa !62
  %i.am = add nsw i32 %i.al, 1
  store i32 %i.am, ptr %i.q, align 4, !tbaa !62
  %i.an = load i32, ptr %.061159, align 4, !tbaa !30
  %i.ao = load i32, ptr %.060156, align 4, !tbaa !30
  %i.ap = or i32 %i.ao, %i.an
  %i.aq = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ap)
  %i.ar = icmp samesign ugt i32 %i.aq, 4
  br i1 %i.ar, label %Dar_CutMerge.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val43.i = load ptr, ptr %i.r, align 8, !tbaa !15 ; 4 uses
  %i.as = load i64, ptr %i.s, align 8
  %i.at = lshr i64 %i.as, 56                      ; 4 uses
  %i.au = trunc nuw nsw i64 %i.at to i32          ; 4 uses
  %.not.i = icmp ne i64 %i.at, 0                  ; 2 uses
  br i1 %.not.i, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.k
  %.08.i = phi i32 [ %i.bi, %bb.k ], [ 0, %bb.f ]
  %.0357.i = phi ptr [ %.136.i, %bb.k ], [ null, %bb.f ] ; 4 uses
  %.0386.i = phi ptr [ %i.bj, %bb.k ], [ %.val43.i, %bb.f ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0386.i, i64 4
  %i.aw = load i32, ptr %i.av, align 4            ; 3 uses
  %i.ax = and i32 %i.aw, 268435456
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %Dar_CutFindFree.exit, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i
  %i.az = icmp ult i32 %i.aw, 1610612736
  br i1 %i.az, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ba = icmp eq ptr %.0357.i, null
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = getelementptr inbounds nuw i8, ptr %.0357.i, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = lshr i32 %i.bc, 16
  %i.be = and i32 %i.bd, 2047
  %i.bf = lshr i32 %i.aw, 16
  %i.bg = and i32 %i.bf, 2047
  %i.bh = icmp samesign ugt i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.g
  %.136.i = phi ptr [ %.0357.i, %bb.g ], [ %.0386.i, %bb.j ], [ %.0357.i, %bb.i ] ; 3 uses
  %i.bi = add nuw nsw i32 %.08.i, 1               ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0386.i, i64 24
  %exitcond.not.i = icmp eq i32 %i.bi, %i.au
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !52

._crit_edge.i:                                    ; preds = %bb.k
  %i.bk = icmp eq ptr %.136.i, null
  br i1 %i.bk, label %.lr.ph13.i, label %.thread.i

.lr.ph13.i:                                       ; preds = %._crit_edge.i, %bb.o
  %.112.i = phi i32 [ %i.bw, %bb.o ], [ 0, %._crit_edge.i ]
  %.23711.i = phi ptr [ %.3.i, %bb.o ], [ null, %._crit_edge.i ] ; 4 uses
  %.13910.i = phi ptr [ %i.bx, %bb.o ], [ %.val43.i, %._crit_edge.i ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.13910.i, i64 4
  %i.bm = load i32, ptr %i.bl, align 4            ; 2 uses
  %i.bn = icmp ult i32 %i.bm, 1073741824
  br i1 %i.bn, label %bb.o, label %bb.l

bb.l:                                             ; preds = %.lr.ph13.i
  %i.bo = icmp eq ptr %.23711.i, null
  br i1 %i.bo, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bp = getelementptr inbounds nuw i8, ptr %.23711.i, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = lshr i32 %i.bq, 16
  %i.bs = and i32 %i.br, 2047
  %i.bt = lshr i32 %i.bm, 16
  %i.bu = and i32 %i.bt, 2047
  %i.bv = icmp samesign ugt i32 %i.bs, %i.bu
  br i1 %i.bv, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %.lr.ph13.i
  %.3.i = phi ptr [ %.23711.i, %.lr.ph13.i ], [ %.13910.i, %bb.n ], [ %.23711.i, %bb.m ] ; 3 uses
  %i.bw = add nuw nsw i32 %.112.i, 1              ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.13910.i, i64 24
  %exitcond23.not.i = icmp eq i32 %i.bw, %i.au
  br i1 %exitcond23.not.i, label %._crit_edge14.i, label %.lr.ph13.i, !llvm.loop !53

._crit_edge14.i:                                  ; preds = %bb.o
  %i.by = icmp eq ptr %.3.i, null
  br i1 %i.by, label %.preheader.i, label %.thread.i

.preheader.i:                                     ; preds = %._crit_edge14.i, %bb.f
  tail call void @llvm.assume(i1 %.not.i)
  %xtraiter = and i32 %i.au, 1
  %i.bz = icmp eq i64 %i.at, 1
  br i1 %i.bz, label %.lr.ph19.i.epil.preheader, label %.preheader.i.new

.preheader.i.new:                                 ; preds = %.preheader.i
  %unroll_iter = and i32 %i.au, 254
  br label %.lr.ph19.i

.lr.ph19.i:                                       ; preds = %bb.t, %.preheader.i.new
  %.517.i = phi ptr [ null, %.preheader.i.new ], [ %.6.i.1, %bb.t ] ; 3 uses
  %.24016.i = phi ptr [ %.val43.i, %.preheader.i.new ], [ %i.cv, %bb.t ] ; 5 uses
  %niter = phi i32 [ 0, %.preheader.i.new ], [ %niter.next.1, %bb.t ]
  %i.ca = icmp eq ptr %.517.i, null
  br i1 %i.ca, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph19.i
  %i.cb = getelementptr inbounds nuw i8, ptr %.517.i, i64 4
  %i.cc = load i32, ptr %i.cb, align 4
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = and i32 %i.cd, 2047
  %i.cf = getelementptr inbounds nuw i8, ptr %.24016.i, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = lshr i32 %i.cg, 16
  %i.ci = and i32 %i.ch, 2047
  %i.cj = icmp samesign ugt i32 %i.ce, %i.ci
  br i1 %i.cj, label %bb.q, label %.lr.ph19.i.1

bb.q:                                             ; preds = %bb.p, %.lr.ph19.i
  br label %.lr.ph19.i.1

.lr.ph19.i.1:                                     ; preds = %bb.q, %bb.p
  %.6.i = phi ptr [ %.24016.i, %bb.q ], [ %.517.i, %bb.p ] ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.24016.i, i64 24
  %i.cl = icmp eq ptr %.6.i, null
  br i1 %i.cl, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.lr.ph19.i.1
  %i.cm = getelementptr inbounds nuw i8, ptr %.6.i, i64 4
  %i.cn = load i32, ptr %i.cm, align 4
  %i.co = lshr i32 %i.cn, 16
  %i.cp = and i32 %i.co, 2047
  %i.cq = getelementptr inbounds nuw i8, ptr %.24016.i, i64 28
  %i.cr = load i32, ptr %i.cq, align 4
  %i.cs = lshr i32 %i.cr, 16
  %i.ct = and i32 %i.cs, 2047
  %i.cu = icmp samesign ugt i32 %i.cp, %i.ct
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %.lr.ph19.i.1
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.6.i.1 = phi ptr [ %i.ck, %bb.s ], [ %.6.i, %bb.r ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.24016.i, i64 48 ; 2 uses
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.i.loopexit.unr-lcssa, label %.lr.ph19.i, !llvm.loop !54

.thread.i.loopexit.unr-lcssa:                     ; preds = %bb.t
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.i, label %.lr.ph19.i.epil.preheader

.lr.ph19.i.epil.preheader:                        ; preds = %.thread.i.loopexit.unr-lcssa, %.preheader.i
  %.517.i.epil.init = phi ptr [ null, %.preheader.i ], [ %.6.i.1, %.thread.i.loopexit.unr-lcssa ] ; 3 uses
  %.24016.i.epil.init = phi ptr [ %.val43.i, %.preheader.i ], [ %i.cv, %.thread.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod252 = trunc i64 %i.at to i1
  tail call void @llvm.assume(i1 %lcmp.mod252)
  %i.cw = icmp eq ptr %.517.i.epil.init, null
  br i1 %i.cw, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph19.i.epil.preheader
  %i.cx = getelementptr inbounds nuw i8, ptr %.517.i.epil.init, i64 4
  %i.cy = load i32, ptr %i.cx, align 4
  %i.cz = lshr i32 %i.cy, 16
  %i.da = and i32 %i.cz, 2047
  %i.db = getelementptr inbounds nuw i8, ptr %.24016.i.epil.init, i64 4
  %i.dc = load i32, ptr %i.db, align 4
  %i.dd = lshr i32 %i.dc, 16
  %i.de = and i32 %i.dd, 2047
  %i.df = icmp samesign ugt i32 %i.da, %i.de
  br i1 %i.df, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u, %.lr.ph19.i.epil.preheader
  br label %.thread.i

.thread.i:                                        ; preds = %.thread.i.loopexit.unr-lcssa, %bb.v, %bb.u, %._crit_edge14.i, %._crit_edge.i
  %.7.i = phi ptr [ %.136.i, %._crit_edge.i ], [ %.3.i, %._crit_edge14.i ], [ %.6.i.1, %.thread.i.loopexit.unr-lcssa ], [ %.24016.i.epil.init, %bb.v ], [ %.517.i.epil.init, %bb.u ] ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.7.i, i64 4 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4
  %i.di = and i32 %i.dh, -268435457
  store i32 %i.di, ptr %i.dg, align 4
  br label %Dar_CutFindFree.exit

Dar_CutFindFree.exit:                             ; preds = %.lr.ph.i, %.thread.i
  %.041.i = phi ptr [ %.7.i, %.thread.i ], [ %.0386.i, %.lr.ph.i ] ; 58 uses
  %i.dj = load i32, ptr %i.ab, align 4
  %i.dk = lshr i32 %i.dj, 29
  %i.dl = load i32, ptr %i.ah, align 4
  %i.dm = lshr i32 %i.dl, 29
  %.not.i69 = icmp samesign ugt i32 %i.dk, %i.dm
  br i1 %.not.i69, label %bb.x, label %bb.w

bb.w:                                             ; preds = %Dar_CutFindFree.exit
  %i.dn = tail call fastcc i32 @Dar_CutMergeOrdered(ptr noundef nonnull %.041.i, ptr noundef nonnull readonly %.060156, ptr noundef nonnull readonly %.061159)
  %.not13.i = icmp eq i32 %i.dn, 0
  br i1 %.not13.i, label %Dar_CutMerge.exit.thread, label %bb.y

bb.x:                                             ; preds = %Dar_CutFindFree.exit
  %i.do = tail call fastcc i32 @Dar_CutMergeOrdered(ptr noundef nonnull %.041.i, ptr noundef nonnull readonly %.061159, ptr noundef nonnull readonly %.060156)
  %.not12.i = icmp eq i32 %i.do, 0
  br i1 %.not12.i, label %Dar_CutMerge.exit.thread, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.dp = load i32, ptr %.061159, align 4, !tbaa !30
  %i.dq = load i32, ptr %.060156, align 4, !tbaa !30
  %i.dr = or i32 %i.dq, %i.dp
  store i32 %i.dr, ptr %.041.i, align 4, !tbaa !30
  %i.ds = getelementptr inbounds nuw i8, ptr %.041.i, i64 4 ; 20 uses
  %i.dt = load i32, ptr %i.ds, align 4
  %i.du = or i32 %i.dt, 268435456
  store i32 %i.du, ptr %i.ds, align 4
  %i.dv = load i32, ptr %i.t, align 8, !tbaa !63
  %i.dw = add nsw i32 %i.dv, 1
  store i32 %i.dw, ptr %i.t, align 8, !tbaa !63
  %i.dx = load i64, ptr %i.s, align 8             ; 2 uses
  %.not60.i = icmp ult i64 %i.dx, 72057594037927936
  br i1 %.not60.i, label %.loopexit145, label %.lr.ph.i70

.lr.ph.i70:                                       ; preds = %bb.y
  %.val.i = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %.041.i, i64 8 ; 8 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.041.i, i64 12
  %i.ea = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.ec = getelementptr inbounds nuw i8, ptr %.041.i, i64 24
  %i.ed = getelementptr inbounds nuw i8, ptr %.041.i, i64 28
  %i.ee = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  br label %bb.z

bb.z:                                             ; preds = %Dar_CutCheckDominance.exit.thread.i, %.lr.ph.i70
  %i.ef = phi i64 [ %i.dx, %.lr.ph.i70 ], [ %i.hf, %Dar_CutCheckDominance.exit.thread.i ] ; 17 uses
  %.059.i = phi i32 [ 0, %.lr.ph.i70 ], [ %i.hg, %Dar_CutCheckDominance.exit.thread.i ]
  %.02257.i = phi ptr [ %.val.i, %.lr.ph.i70 ], [ %i.hh, %Dar_CutCheckDominance.exit.thread.i ] ; 12 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02257.i, i64 4 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4            ; 3 uses
  %i.ei = and i32 %i.eh, 268435456
  %i.ej = icmp eq i32 %i.ei, 0
  %i.ek = icmp eq ptr %.02257.i, %.041.i
  %or.cond.i = or i1 %i.ek, %i.ej
  br i1 %or.cond.i, label %Dar_CutCheckDominance.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.el = lshr i32 %i.eh, 29                      ; 9 uses
  %i.em = load i32, ptr %i.ds, align 4            ; 9 uses
  %i.en = lshr i32 %i.em, 29                      ; 9 uses
  %i.eo = icmp samesign ugt i32 %i.el, %i.en
  %i.ep = load i32, ptr %.02257.i, align 4, !tbaa !30 ; 2 uses
  %i.eq = load i32, ptr %.041.i, align 4, !tbaa !30 ; 2 uses
  %i.er = and i32 %i.eq, %i.ep                    ; 2 uses
  br i1 %i.eo, label %bb.ab, label %bb.ar

bb.ab:                                            ; preds = %bb.aa
  %.not26.i = icmp eq i32 %i.er, %i.eq
  br i1 %.not26.i, label %bb.ac, label %Dar_CutCheckDominance.exit.thread.i

bb.ac:                                            ; preds = %bb.ab
  %.not.i.i = icmp eq i32 %i.en, 0
  br i1 %.not.i.i, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.preheader.i.i

.preheader.us.preheader.i.i:                      ; preds = %bb.ac
  %i.es = getelementptr inbounds nuw i8, ptr %.02257.i, i64 8 ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.el to i64 ; 7 uses
  %i.et = load i32, ptr %i.dy, align 4, !tbaa !9
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ae, %.preheader.us.preheader.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader.us.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.ae ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !9
  %i.ew = icmp eq i32 %i.et, %i.ev
  br i1 %i.ew, label %._crit_edge.us.i.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %Dar_CutCheckDominance.exit.thread.i, label %bb.ad, !llvm.loop !55

._crit_edge.us.i.i:                               ; preds = %bb.ad
  %exitcond31.not.i.i = icmp eq i32 %i.en, 1
  br i1 %exitcond31.not.i.i, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.1

.preheader.us.i.i.1:                              ; preds = %._crit_edge.us.i.i
  %i.ex = load i32, ptr %i.dz, align 4, !tbaa !9
  br label %bb.af

bb.af:                                            ; preds = %bb.ag, %.preheader.us.i.i.1
  %indvars.iv.i.i.1 = phi i64 [ 0, %.preheader.us.i.i.1 ], [ %indvars.iv.next.i.i.1, %bb.ag ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.1
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !9
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %._crit_edge.us.i.i.1, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.1, 1 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.1, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.1, label %Dar_CutCheckDominance.exit.thread.i, label %bb.af, !llvm.loop !55

._crit_edge.us.i.i.1:                             ; preds = %bb.af
  %exitcond31.not.i.i.1 = icmp eq i32 %i.en, 2
  br i1 %exitcond31.not.i.i.1, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.2

.preheader.us.i.i.2:                              ; preds = %._crit_edge.us.i.i.1
  %i.fb = load i32, ptr %i.ea, align 4, !tbaa !9
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ai, %.preheader.us.i.i.2
  %indvars.iv.i.i.2 = phi i64 [ 0, %.preheader.us.i.i.2 ], [ %indvars.iv.next.i.i.2, %bb.ai ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.2
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !9
  %i.fe = icmp eq i32 %i.fb, %i.fd
  br i1 %i.fe, label %._crit_edge.us.i.i.2, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %indvars.iv.next.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.2, 1 ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %indvars.iv.next.i.i.2, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.2, label %Dar_CutCheckDominance.exit.thread.i, label %bb.ah, !llvm.loop !55

._crit_edge.us.i.i.2:                             ; preds = %bb.ah
  %exitcond31.not.i.i.2 = icmp eq i32 %i.en, 3
  br i1 %exitcond31.not.i.i.2, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.3

.preheader.us.i.i.3:                              ; preds = %._crit_edge.us.i.i.2
  %i.ff = load i32, ptr %i.eb, align 4, !tbaa !9
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %.preheader.us.i.i.3
  %indvars.iv.i.i.3 = phi i64 [ 0, %.preheader.us.i.i.3 ], [ %indvars.iv.next.i.i.3, %bb.ak ] ; 2 uses
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.3
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !9
  %i.fi = icmp eq i32 %i.ff, %i.fh
  br i1 %i.fi, label %._crit_edge.us.i.i.3, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.3, 1 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.3, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.3, label %Dar_CutCheckDominance.exit.thread.i, label %bb.aj, !llvm.loop !55

._crit_edge.us.i.i.3:                             ; preds = %bb.aj
  %exitcond31.not.i.i.3 = icmp eq i32 %i.en, 4
  br i1 %exitcond31.not.i.i.3, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.4

.preheader.us.i.i.4:                              ; preds = %._crit_edge.us.i.i.3
  %i.fj = load i32, ptr %i.ec, align 4, !tbaa !9
  br label %bb.al

bb.al:                                            ; preds = %bb.am, %.preheader.us.i.i.4
  %indvars.iv.i.i.4 = phi i64 [ 0, %.preheader.us.i.i.4 ], [ %indvars.iv.next.i.i.4, %bb.am ] ; 2 uses
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.4
  %i.fl = load i32, ptr %i.fk, align 4, !tbaa !9
  %i.fm = icmp eq i32 %i.fj, %i.fl
  br i1 %i.fm, label %._crit_edge.us.i.i.4, label %bb.am

bb.am:                                            ; preds = %bb.al
  %indvars.iv.next.i.i.4 = add nuw nsw i64 %indvars.iv.i.i.4, 1 ; 2 uses
  %exitcond.not.i.i.4 = icmp eq i64 %indvars.iv.next.i.i.4, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.4, label %Dar_CutCheckDominance.exit.thread.i, label %bb.al, !llvm.loop !55

._crit_edge.us.i.i.4:                             ; preds = %bb.al
  %exitcond31.not.i.i.4 = icmp eq i32 %i.en, 5
  br i1 %exitcond31.not.i.i.4, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.5

.preheader.us.i.i.5:                              ; preds = %._crit_edge.us.i.i.4
  %i.fn = load i32, ptr %i.ed, align 4, !tbaa !9
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.preheader.us.i.i.5
  %indvars.iv.i.i.5 = phi i64 [ 0, %.preheader.us.i.i.5 ], [ %indvars.iv.next.i.i.5, %bb.ao ] ; 2 uses
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.5
  %i.fp = load i32, ptr %i.fo, align 4, !tbaa !9
  %i.fq = icmp eq i32 %i.fn, %i.fp
  br i1 %i.fq, label %._crit_edge.us.i.i.5, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %indvars.iv.next.i.i.5 = add nuw nsw i64 %indvars.iv.i.i.5, 1 ; 2 uses
  %exitcond.not.i.i.5 = icmp eq i64 %indvars.iv.next.i.i.5, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.5, label %Dar_CutCheckDominance.exit.thread.i, label %bb.an, !llvm.loop !55

._crit_edge.us.i.i.5:                             ; preds = %bb.an
  %exitcond31.not.i.i.5 = icmp eq i32 %i.en, 6
  br i1 %exitcond31.not.i.i.5, label %Dar_CutCheckDominance.exit.i, label %.preheader.us.i.i.6

.preheader.us.i.i.6:                              ; preds = %._crit_edge.us.i.i.5
  %i.fr = load i32, ptr %i.ee, align 4, !tbaa !9
  br label %bb.ap

bb.ap:                                            ; preds = %bb.aq, %.preheader.us.i.i.6
  %indvars.iv.i.i.6 = phi i64 [ 0, %.preheader.us.i.i.6 ], [ %indvars.iv.next.i.i.6, %bb.aq ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.es, i64 %indvars.iv.i.i.6
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !9
  %i.fu = icmp eq i32 %i.fr, %i.ft
  br i1 %i.fu, label %Dar_CutCheckDominance.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %indvars.iv.next.i.i.6 = add nuw nsw i64 %indvars.iv.i.i.6, 1 ; 2 uses
  %exitcond.not.i.i.6 = icmp eq i64 %indvars.iv.next.i.i.6, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i.6, label %Dar_CutCheckDominance.exit.thread.i, label %bb.ap, !llvm.loop !55

Dar_CutCheckDominance.exit.i:                     ; preds = %._crit_edge.us.i.i, %._crit_edge.us.i.i.1, %._crit_edge.us.i.i.2, %._crit_edge.us.i.i.3, %._crit_edge.us.i.i.4, %._crit_edge.us.i.i.5, %bb.ap, %bb.ac
  %i.fv = and i32 %i.eh, -268435457
  store i32 %i.fv, ptr %i.eg, align 4
  %.pre.i = load i64, ptr %i.s, align 8
  br label %Dar_CutCheckDominance.exit.thread.i

bb.ar:                                            ; preds = %bb.aa
  %.not.i71 = icmp eq i32 %i.er, %i.ep
  br i1 %.not.i71, label %bb.as, label %Dar_CutCheckDominance.exit.thread.i

bb.as:                                            ; preds = %bb.ar
  %.not.i28.i = icmp eq i32 %i.el, 0
  br i1 %.not.i28.i, label %Dar_CutMerge.exit.thread.sink.split, label %.preheader.lr.ph.i29.i

.preheader.lr.ph.i29.i:                           ; preds = %bb.as
  %wide.trip.count.i33.i = zext nneg i32 %i.en to i64 ; 7 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %.02257.i, i64 8
end_hunk_0
begin_hunk_1_@Dar_ObjComputeCuts:bb.a
  %i.io = load i32, ptr %i.in, align 4, !tbaa !9
  %i.ip = icmp sge i32 %i.il, %i.io               ; 2 uses
  %i.iq = select i1 %i.ip, i32 4, i32 0
  %.114.i.i.2 = or disjoint i32 %i.iq, %.114.i.i.1 ; 2 uses
  %i.ir = zext i1 %i.ip to i32
  %.1.i.i.2 = add nuw nsw i32 %.1.i.i.1, %i.ir    ; 3 uses
  %exitcond.not.i.i76.2 = icmp eq i32 %i.hr, 3
  %i.is = icmp eq i32 %.1.i.i.2, %i.hp
  %or.cond292 = select i1 %exitcond.not.i.i76.2, i1 true, i1 %i.is
  br i1 %or.cond292, label %Dar_CutTruthPhase.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.it = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !9
  %i.iv = zext nneg i32 %.1.i.i.2 to i64
  %i.iw = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.iv
  %i.ix = load i32, ptr %i.iw, align 4, !tbaa !9
  %i.iy = icmp sge i32 %i.iu, %i.ix               ; 2 uses
  %i.iz = select i1 %i.iy, i32 8, i32 0
  %.114.i.i.3 = or disjoint i32 %i.iz, %.114.i.i.2 ; 2 uses
  %i.ja = zext i1 %i.iy to i32
  %.1.i.i.3 = add nuw nsw i32 %.1.i.i.2, %i.ja    ; 3 uses
  %exitcond.not.i.i76.3 = icmp eq i32 %i.hr, 4
  %i.jb = icmp eq i32 %.1.i.i.3, %i.hp
  %or.cond293 = select i1 %exitcond.not.i.i76.3, i1 true, i1 %i.jb
  br i1 %or.cond293, label %Dar_CutTruthPhase.exit.i, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.jc = getelementptr inbounds nuw i8, ptr %.041.i, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !9
  %i.je = zext nneg i32 %.1.i.i.3 to i64
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.je
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !9
  %i.jh = icmp sge i32 %i.jd, %i.jg               ; 2 uses
  %i.ji = select i1 %i.jh, i32 16, i32 0
  %.114.i.i.4 = or disjoint i32 %i.ji, %.114.i.i.3 ; 2 uses
  %i.jj = zext i1 %i.jh to i32
  %.1.i.i.4 = add nuw nsw i32 %.1.i.i.3, %i.jj    ; 3 uses
  %exitcond.not.i.i76.4 = icmp eq i32 %i.hr, 5
  %i.jk = icmp eq i32 %.1.i.i.4, %i.hp
  %or.cond294 = select i1 %exitcond.not.i.i76.4, i1 true, i1 %i.jk
  br i1 %or.cond294, label %Dar_CutTruthPhase.exit.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jl = getelementptr inbounds nuw i8, ptr %.041.i, i64 28
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !9
  %i.jn = zext nneg i32 %.1.i.i.4 to i64
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.jn
  %i.jp = load i32, ptr %i.jo, align 4, !tbaa !9
  %i.jq = icmp sge i32 %i.jm, %i.jp               ; 2 uses
  %i.jr = select i1 %i.jq, i32 32, i32 0
  %.114.i.i.5 = or disjoint i32 %i.jr, %.114.i.i.4 ; 2 uses
  %i.js = zext i1 %i.jq to i32
  %.1.i.i.5 = add nuw nsw i32 %.1.i.i.4, %i.js    ; 2 uses
  %exitcond.not.i.i76.5 = icmp eq i32 %i.hr, 6
  %i.jt = icmp eq i32 %.1.i.i.5, %i.hp
  %or.cond295 = select i1 %exitcond.not.i.i76.5, i1 true, i1 %i.jt
  br i1 %or.cond295, label %Dar_CutTruthPhase.exit.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ju = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !9
  %i.jw = zext nneg i32 %.1.i.i.5 to i64
  %i.jx = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %i.jw
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !9
  %.not283 = icmp slt i32 %i.jv, %i.jy
  %i.jz = select i1 %.not283, i32 0, i32 64
  %.114.i.i.6 = or i32 %i.jz, %.114.i.i.5
  br label %Dar_CutTruthPhase.exit.i

Dar_CutTruthPhase.exit.i:                         ; preds = %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %.lr.ph.i.i
  %.013.lcssa.i.i = phi i32 [ %i.hy, %bb.bh ], [ 0, %.lr.ph.i.i ], [ %.114.i.i.6, %bb.bn ], [ %.114.i.i.1, %bb.bi ], [ %.114.i.i.4, %bb.bl ], [ %.114.i.i.2, %bb.bj ], [ %.114.i.i.5, %bb.bm ], [ %.114.i.i.3, %bb.bk ]
  %i.ka = tail call fastcc i32 @Dar_CutTruthStretch(i32 noundef %i.hn, i32 noundef %i.hp, i32 noundef %.013.lcssa.i.i) ; 2 uses
  %i.kb = lshr i32 %i.ho, 29                      ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %.060156, i64 8
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %Dar_CutTruthPhase.exit.i
  %indvars.iv.i19.i = phi i64 [ 0, %Dar_CutTruthPhase.exit.i ], [ %indvars.iv.next.i24.i, %bb.bp ] ; 3 uses
  %.017.i20.i = phi i32 [ 0, %Dar_CutTruthPhase.exit.i ], [ %.1.i23.i, %bb.bp ] ; 3 uses
  %.01315.i21.i = phi i32 [ 0, %Dar_CutTruthPhase.exit.i ], [ %.114.i22.i, %bb.bp ] ; 2 uses
  %i.kd = icmp eq i32 %.017.i20.i, %i.kb
  br i1 %i.kd, label %Dar_CutTruth.exit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %indvars.iv.i19.i
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !9
  %i.kg = zext nneg i32 %.017.i20.i to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %i.kc, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !9
  %i.kj = icmp sge i32 %i.kf, %i.ki               ; 2 uses
  %i.kk = trunc nuw nsw i64 %indvars.iv.i19.i to i32
  %i.kl = shl nuw nsw i32 1, %i.kk
  %i.km = select i1 %i.kj, i32 %i.kl, i32 0
  %.114.i22.i = or i32 %i.km, %.01315.i21.i       ; 2 uses
  %i.kn = zext i1 %i.kj to i32
  %.1.i23.i = add nuw nsw i32 %.017.i20.i, %i.kn
  %indvars.iv.next.i24.i = add nuw nsw i64 %indvars.iv.i19.i, 1 ; 2 uses
  %exitcond.not.i25.i = icmp eq i64 %indvars.iv.next.i24.i, %wide.trip.count.i.i73
  br i1 %exitcond.not.i25.i, label %Dar_CutTruth.exit, label %bb.bo, !llvm.loop !57

Dar_CutTruth.exit:                                ; preds = %bb.bo, %bb.bp, %Dar_CutTruthPhase.exit.thread.i
  %i.ko = phi i32 [ %i.hs, %Dar_CutTruthPhase.exit.thread.i ], [ %i.kb, %bb.bp ], [ %i.kb, %bb.bo ]
  %i.kp = phi i32 [ %i.hn, %Dar_CutTruthPhase.exit.thread.i ], [ %i.ka, %bb.bp ], [ %i.ka, %bb.bo ]
  %.013.lcssa.i26.i = phi i32 [ 0, %Dar_CutTruthPhase.exit.thread.i ], [ %.01315.i21.i, %bb.bo ], [ %.114.i22.i, %bb.bp ]
  %i.kq = and i32 %i.ho, 65535
  %i.kr = xor i32 %i.kq, %sext29.i
  %i.ks = tail call fastcc i32 @Dar_CutTruthStretch(i32 noundef %i.kr, i32 noundef %i.ko, i32 noundef %.013.lcssa.i26.i)
  %i.kt = and i32 %i.ks, %i.kp                    ; 11 uses
  %i.ku = and i32 %i.kt, 65535                    ; 6 uses
  %i.kv = and i32 %i.hq, -65536                   ; 2 uses
  %i.kw = or disjoint i32 %i.ku, %i.kv            ; 3 uses
  store i32 %i.kw, ptr %i.ds, align 4
  br i1 %.not63, label %bb.bq, label %Dar_CutFilter.exit123

bb.bq:                                            ; preds = %Dar_CutTruth.exit
  br i1 %.not.i.i72, label %._crit_edge.i79, label %.lr.ph.i77

.lr.ph.i77:                                       ; preds = %bb.bq
  %i.kx = lshr i32 %i.kt, 1
  %i.ky = xor i32 %i.kt, %i.kx
  %i.kz = and i32 %i.ky, 21845
  %i.la = icmp eq i32 %i.kz, 0                    ; 2 uses
  %not. = xor i1 %i.la, true
  %i.lb = zext i1 %not. to i32                    ; 2 uses
  %i.lc = sext i1 %i.la to i32
  %.1.i = add nsw i32 %i.hr, %i.lc                ; 2 uses
  %exitcond.not.i78 = icmp eq i32 %i.hr, 1
  br i1 %exitcond.not.i78, label %._crit_edge.i79, label %.lr.ph.i77.1

.lr.ph.i77.1:                                     ; preds = %.lr.ph.i77
  %i.ld = lshr i32 %i.kt, 2
  %i.le = xor i32 %i.kt, %i.ld
  %i.lf = and i32 %i.le, 13107
  %i.lg = icmp eq i32 %i.lf, 0                    ; 2 uses
  %i.lh = select i1 %i.lg, i32 0, i32 2
  %.140.i.1 = or disjoint i32 %i.lh, %i.lb        ; 2 uses
  %i.li = sext i1 %i.lg to i32
  %.1.i.1 = add nsw i32 %.1.i, %i.li              ; 2 uses
  %exitcond.not.i78.1 = icmp eq i32 %i.hr, 2
  br i1 %exitcond.not.i78.1, label %._crit_edge.i79, label %.lr.ph.i77.2

.lr.ph.i77.2:                                     ; preds = %.lr.ph.i77.1
  %i.lj = lshr i32 %i.kt, 4
  %i.lk = xor i32 %i.kt, %i.lj
  %i.ll = and i32 %i.lk, 3855
  %i.lm = icmp eq i32 %i.ll, 0                    ; 2 uses
  %i.ln = select i1 %i.lm, i32 0, i32 4
  %.140.i.2 = or disjoint i32 %i.ln, %.140.i.1    ; 2 uses
  %i.lo = sext i1 %i.lm to i32
  %.1.i.2 = add nsw i32 %.1.i.1, %i.lo            ; 2 uses
  %exitcond.not.i78.2 = icmp eq i32 %i.hr, 3
  br i1 %exitcond.not.i78.2, label %._crit_edge.i79, label %.lr.ph.i77.3

.lr.ph.i77.3:                                     ; preds = %.lr.ph.i77.2
  %i.lp = lshr i32 %i.kt, 8
  %i.lq = xor i32 %i.kt, %i.lp
  %i.lr = and i32 %i.lq, 255
  %i.ls = icmp eq i32 %i.lr, 0                    ; 2 uses
  %i.lt = select i1 %i.ls, i32 0, i32 8
  %.140.i.3 = or disjoint i32 %i.lt, %.140.i.2
  %i.lu = sext i1 %i.ls to i32
  %.1.i.3 = add nsw i32 %.1.i.2, %i.lu
  br label %._crit_edge.i79

._crit_edge.i79:                                  ; preds = %.lr.ph.i77.3, %.lr.ph.i77, %.lr.ph.i77.1, %.lr.ph.i77.2, %bb.bq
  %.039.lcssa.i = phi i32 [ 0, %bb.bq ], [ %i.lb, %.lr.ph.i77 ], [ %.140.i.1, %.lr.ph.i77.1 ], [ %.140.i.2, %.lr.ph.i77.2 ], [ %.140.i.3, %.lr.ph.i77.3 ] ; 12 uses
  %.0.lcssa.i = phi i32 [ 0, %bb.bq ], [ %.1.i, %.lr.ph.i77 ], [ %.1.i.1, %.lr.ph.i77.1 ], [ %.1.i.2, %.lr.ph.i77.2 ], [ %.1.i.3, %.lr.ph.i77.3 ] ; 2 uses
  %i.lv = icmp eq i32 %.0.lcssa.i, %i.hr
  br i1 %i.lv, label %Dar_CutFilter.exit123, label %bb.br

bb.br:                                            ; preds = %._crit_edge.i79
  %i.lw = and i32 %.039.lcssa.i, 1
  %.not.i.i80 = icmp eq i32 %i.lw, 0
  %i.lx = and i32 %.039.lcssa.i, 2
  %.not.1.i.i = icmp eq i32 %i.lx, 0              ; 2 uses
  br i1 %.not.i.i80, label %bb.bs, label %.thread.i.i

bb.bs:                                            ; preds = %bb.br
  br i1 %.not.1.i.i, label %bb.bt, label %Dar_CutTruthSwapAdjacentVars.exit.1.i.i

.thread.i.i:                                      ; preds = %bb.br
  br i1 %.not.1.i.i, label %bb.bt, label %.thread.i81

Dar_CutTruthSwapAdjacentVars.exit.1.i.i:          ; preds = %bb.bs
  %i.ly = shl nuw nsw i32 %i.ku, 1
  %i.lz = and i32 %i.ly, 17476
  %i.ma = and i32 %i.kt, 39321
  %i.mb = lshr i32 %i.kt, 1
  %i.mc = and i32 %i.mb, 8738
  %i.md = or disjoint i32 %i.mc, %i.ma
  %i.me = or disjoint i32 %i.md, %i.lz
  br label %bb.bt

bb.bt:                                            ; preds = %Dar_CutTruthSwapAdjacentVars.exit.1.i.i, %.thread.i.i, %bb.bs
  %.2.1.i.i = phi i32 [ %i.ku, %.thread.i.i ], [ %i.ku, %bb.bs ], [ %i.me, %Dar_CutTruthSwapAdjacentVars.exit.1.i.i ] ; 4 uses
  %.not16.not.2.i.peel.i = phi i1 [ false, %.thread.i.i ], [ true, %bb.bs ], [ false, %Dar_CutTruthSwapAdjacentVars.exit.1.i.i ]
  %.1.1.i.i = phi i32 [ 1, %.thread.i.i ], [ 0, %bb.bs ], [ 1, %Dar_CutTruthSwapAdjacentVars.exit.1.i.i ] ; 2 uses
  %i.mf = and i32 %.039.lcssa.i, 4
  %.not.2.i.i = icmp eq i32 %i.mf, 0
  br i1 %.not.2.i.i, label %bb.bu, label %._crit_edge.2.i.loopexit.loopexit.i

.thread.i81:                                      ; preds = %.thread.i.i
  %3 = and i32 %.039.lcssa.i, 4
  %.not.2.i45.i = icmp eq i32 %3, 0
  br i1 %.not.2.i45.i, label %bb.bu, label %._crit_edge.2.i.loopexit.i

.lr.ph.2.i.preheader.i:                           ; preds = %._crit_edge.2.i.loopexit.loopexit.i
  %i.mg = and i32 %i.mr, -1717986919
  %i.mh = shl nuw nsw i32 %i.mo, 1
  %i.mi = and i32 %i.mh, 1145324612
  %i.mj = or disjoint i32 %i.mi, %i.mg
  %i.mk = lshr i32 %i.mr, 1
  %i.ml = and i32 %i.mk, 572662306
  %i.mm = or disjoint i32 %i.mj, %i.ml
  br label %._crit_edge.2.i.loopexit.i

._crit_edge.2.i.loopexit.loopexit.i:              ; preds = %bb.bt
  %4 = and i32 %.2.1.i.i, -1010580541
  %5 = shl nuw nsw i32 %.2.1.i.i, 2
  %i.mn = and i32 %5, 808464432
  %i.mo = or disjoint i32 %i.mn, %4               ; 2 uses
  %i.mp = lshr i32 %.2.1.i.i, 2
  %i.mq = and i32 %i.mp, 202116108
  %i.mr = or disjoint i32 %i.mo, %i.mq            ; 3 uses
  br i1 %.not16.not.2.i.peel.i, label %.lr.ph.2.i.preheader.i, label %._crit_edge.2.i.loopexit.i, !llvm.loop !58

._crit_edge.2.i.loopexit.i:                       ; preds = %._crit_edge.2.i.loopexit.loopexit.i, %.lr.ph.2.i.preheader.i, %.thread.i81
  %.1.1.i4751.i = phi i32 [ %.1.1.i.i, %._crit_edge.2.i.loopexit.loopexit.i ], [ 0, %.lr.ph.2.i.preheader.i ], [ 2, %.thread.i81 ]
  %.115.lcssa.2.i.i = phi i32 [ %i.mr, %._crit_edge.2.i.loopexit.loopexit.i ], [ %i.mm, %.lr.ph.2.i.preheader.i ], [ %i.ku, %.thread.i81 ]
  %i.ms = add nuw nsw i32 %.1.1.i4751.i, 1
  br label %bb.bu

bb.bu:                                            ; preds = %._crit_edge.2.i.loopexit.i, %.thread.i81, %bb.bt
  %.2.2.i.i = phi i32 [ %.115.lcssa.2.i.i, %._crit_edge.2.i.loopexit.i ], [ %.2.1.i.i, %bb.bt ], [ %i.ku, %.thread.i81 ] ; 4 uses
  %.1.2.i.i = phi i32 [ %i.ms, %._crit_edge.2.i.loopexit.i ], [ %.1.1.i.i, %bb.bt ], [ 2, %.thread.i81 ] ; 3 uses
  %i.mt = and i32 %.039.lcssa.i, 8
  %.not.3.i.i = icmp ne i32 %i.mt, 0
  %.not16.not17.3.i.i = icmp samesign ult i32 %.1.2.i.i, 3
  %or.cond.i.i = select i1 %.not.3.i.i, i1 %.not16.not17.3.i.i, i1 false
  br i1 %or.cond.i.i, label %.lr.ph.3.i.i, label %Dar_CutTruthShrink.exit.i

.lr.ph.3.i.i:                                     ; preds = %bb.bu
  %i.mu = and i32 %.2.2.i.i, -267390961
  %i.mv = shl nuw nsw i32 %.2.2.i.i, 4
  %i.mw = and i32 %i.mv, 251662080
  %i.mx = or disjoint i32 %i.mw, %i.mu            ; 2 uses
  %i.my = lshr i32 %.2.2.i.i, 4
  %i.mz = and i32 %i.my, 15728880
  %i.na = or disjoint i32 %i.mx, %i.mz            ; 3 uses
  %.not16.not.3.i.i = icmp samesign ult i32 %.1.2.i.i, 2
  br i1 %.not16.not.3.i.i, label %.lr.ph.3.i.i.1, label %Dar_CutTruthShrink.exit.i

.lr.ph.3.i.i.1:                                   ; preds = %.lr.ph.3.i.i
  %i.nb = and i32 %i.na, -1010580541
  %i.nc = shl nuw nsw i32 %i.mx, 2
  %i.nd = and i32 %i.nc, 808464432
  %i.ne = or disjoint i32 %i.nd, %i.nb            ; 2 uses
  %i.nf = lshr i32 %i.na, 2
  %i.ng = and i32 %i.nf, 202116108
  %i.nh = or disjoint i32 %i.ne, %i.ng            ; 3 uses
  %.not16.not.3.i.i.1 = icmp eq i32 %.1.2.i.i, 0
  br i1 %.not16.not.3.i.i.1, label %.lr.ph.3.i.i.2, label %Dar_CutTruthShrink.exit.i

.lr.ph.3.i.i.2:                                   ; preds = %.lr.ph.3.i.i.1
  %i.ni = and i32 %i.nh, -1717986919
  %i.nj = shl nuw nsw i32 %i.ne, 1
  %i.nk = and i32 %i.nj, 1145324612
  %i.nl = or disjoint i32 %i.nk, %i.ni
  %i.nm = lshr i32 %i.nh, 1
  %i.nn = and i32 %i.nm, 572662306
  %i.no = or disjoint i32 %i.nl, %i.nn
  br label %Dar_CutTruthShrink.exit.i

Dar_CutTruthShrink.exit.i:                        ; preds = %.lr.ph.3.i.i, %.lr.ph.3.i.i.1, %.lr.ph.3.i.i.2, %bb.bu
  %.2.3.i.i = phi i32 [ %.2.2.i.i, %bb.bu ], [ %i.na, %.lr.ph.3.i.i ], [ %i.nh, %.lr.ph.3.i.i.1 ], [ %i.no, %.lr.ph.3.i.i.2 ]
  %i.np = and i32 %.2.3.i.i, 65535
  %i.nq = or disjoint i32 %i.np, %i.kv            ; 3 uses
  store i32 %i.nq, ptr %i.ds, align 4
  store i32 0, ptr %.041.i, align 4, !tbaa !30
  %.not64.i = icmp ult i32 %i.hq, 536870912
  br i1 %.not64.i, label %.loopexit, label %.lr.ph60.i

.lr.ph60.i:                                       ; preds = %Dar_CutTruthShrink.exit.i
  %i.nr = getelementptr inbounds nuw i8, ptr %.041.i, i64 8 ; 7 uses
  %i.ns = and i32 %.039.lcssa.i, 1
  %.not.i82 = icmp eq i32 %i.ns, 0
  br i1 %.not.i82, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph60.i
  %i.nt = load i32, ptr %i.nr, align 4, !tbaa !9
  %i.nu = and i32 %i.nt, 31
  %i.nv = shl nuw i32 1, %i.nu
  %i.nw = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.nx = or i32 %i.nv, %i.nw
  store i32 %i.nx, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83 = load i32, ptr %i.ds, align 4
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %.lr.ph60.i
  %i.ny = phi i32 [ %.pre.i83, %bb.bv ], [ %i.nq, %.lr.ph60.i ] ; 3 uses
  %.136.i84 = phi i32 [ 1, %bb.bv ], [ 0, %.lr.ph60.i ] ; 3 uses
  %i.nz = icmp ugt i32 %i.ny, 1073741823
  br i1 %i.nz, label %bb.bx, label %.loopexit

bb.bx:                                            ; preds = %bb.bw
  %i.oa = and i32 %.039.lcssa.i, 2
  %.not.i82.1 = icmp eq i32 %i.oa, 0
  br i1 %.not.i82.1, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ob = getelementptr inbounds nuw i8, ptr %.041.i, i64 12
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !9  ; 2 uses
  %i.od = add nuw nsw i32 %.136.i84, 1
  %i.oe = zext nneg i32 %.136.i84 to i64
  %i.of = getelementptr inbounds nuw [4 x i8], ptr %i.nr, i64 %i.oe
  store i32 %i.oc, ptr %i.of, align 4, !tbaa !9
  %i.og = and i32 %i.oc, 31
  %i.oh = shl nuw i32 1, %i.og
  %i.oi = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.oj = or i32 %i.oh, %i.oi
  store i32 %i.oj, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.1 = load i32, ptr %i.ds, align 4
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %i.ok = phi i32 [ %.pre.i83.1, %bb.by ], [ %i.ny, %bb.bx ] ; 3 uses
  %.136.i84.1 = phi i32 [ %i.od, %bb.by ], [ %.136.i84, %bb.bx ] ; 3 uses
  %i.ol = icmp ugt i32 %i.ok, 1610612735
  br i1 %i.ol, label %bb.ca, label %.loopexit

bb.ca:                                            ; preds = %bb.bz
  %i.om = and i32 %.039.lcssa.i, 4
  %.not.i82.2 = icmp eq i32 %i.om, 0
  br i1 %.not.i82.2, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.on = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.oo = load i32, ptr %i.on, align 4, !tbaa !9  ; 2 uses
  %i.op = add nsw i32 %.136.i84.1, 1
  %i.oq = sext i32 %.136.i84.1 to i64
  %i.or = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.oq
  store i32 %i.oo, ptr %i.or, align 4, !tbaa !9
  %i.os = and i32 %i.oo, 31
  %i.ot = shl nuw i32 1, %i.os
  %i.ou = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.ov = or i32 %i.ot, %i.ou
  store i32 %i.ov, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.2 = load i32, ptr %i.ds, align 4
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %i.ow = phi i32 [ %.pre.i83.2, %bb.cb ], [ %i.ok, %bb.ca ] ; 3 uses
  %.136.i84.2 = phi i32 [ %i.op, %bb.cb ], [ %.136.i84.1, %bb.ca ] ; 3 uses
  %i.ox = icmp slt i32 %i.ow, 0
  br i1 %i.ox, label %bb.cd, label %.loopexit

bb.cd:                                            ; preds = %bb.cc
  %i.oy = and i32 %.039.lcssa.i, 8
  %.not.i82.3 = icmp eq i32 %i.oy, 0
  br i1 %.not.i82.3, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.oz = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !9  ; 2 uses
  %i.pb = add nsw i32 %.136.i84.2, 1
  %i.pc = sext i32 %.136.i84.2 to i64
  %i.pd = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.pc
  store i32 %i.pa, ptr %i.pd, align 4, !tbaa !9
  %i.pe = and i32 %i.pa, 31
  %i.pf = shl nuw i32 1, %i.pe
  %i.pg = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.ph = or i32 %i.pf, %i.pg
  store i32 %i.ph, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.3 = load i32, ptr %i.ds, align 4
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.pi = phi i32 [ %.pre.i83.3, %bb.ce ], [ %i.ow, %bb.cd ] ; 3 uses
  %.136.i84.3 = phi i32 [ %i.pb, %bb.ce ], [ %.136.i84.2, %bb.cd ] ; 3 uses
  %i.pj = icmp ugt i32 %i.pi, -1610612737
  br i1 %i.pj, label %bb.cg, label %.loopexit

bb.cg:                                            ; preds = %bb.cf
  %i.pk = and i32 %.039.lcssa.i, 16
  %.not.i82.4 = icmp eq i32 %i.pk, 0
  br i1 %.not.i82.4, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.pl = getelementptr inbounds nuw i8, ptr %.041.i, i64 24
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !9  ; 2 uses
  %i.pn = add nsw i32 %.136.i84.3, 1
  %i.po = sext i32 %.136.i84.3 to i64
  %i.pp = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.po
  store i32 %i.pm, ptr %i.pp, align 4, !tbaa !9
  %i.pq = and i32 %i.pm, 31
  %i.pr = shl nuw i32 1, %i.pq
  %i.ps = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.pt = or i32 %i.pr, %i.ps
  store i32 %i.pt, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.4 = load i32, ptr %i.ds, align 4
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.pu = phi i32 [ %.pre.i83.4, %bb.ch ], [ %i.pi, %bb.cg ] ; 3 uses
  %.136.i84.4 = phi i32 [ %i.pn, %bb.ch ], [ %.136.i84.3, %bb.cg ] ; 3 uses
  %i.pv = icmp ugt i32 %i.pu, -1073741825
  br i1 %i.pv, label %bb.cj, label %.loopexit

bb.cj:                                            ; preds = %bb.ci
  %i.pw = and i32 %.039.lcssa.i, 32
  %.not.i82.5 = icmp eq i32 %i.pw, 0
  br i1 %.not.i82.5, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.px = getelementptr inbounds nuw i8, ptr %.041.i, i64 28
  %i.py = load i32, ptr %i.px, align 4, !tbaa !9  ; 2 uses
  %i.pz = add nsw i32 %.136.i84.4, 1
  %i.qa = sext i32 %.136.i84.4 to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.qa
  store i32 %i.py, ptr %i.qb, align 4, !tbaa !9
  %i.qc = and i32 %i.py, 31
  %i.qd = shl nuw i32 1, %i.qc
  %i.qe = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.qf = or i32 %i.qd, %i.qe
  store i32 %i.qf, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.5 = load i32, ptr %i.ds, align 4
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.qg = phi i32 [ %.pre.i83.5, %bb.ck ], [ %i.pu, %bb.cj ] ; 2 uses
  %.136.i84.5 = phi i32 [ %i.pz, %bb.ck ], [ %.136.i84.4, %bb.cj ]
  %i.qh = icmp ule i32 %i.qg, -536870913
  %i.qi = and i32 %.039.lcssa.i, 64
  %.not.i82.6 = icmp eq i32 %i.qi, 0
  %or.cond297 = select i1 %i.qh, i1 true, i1 %.not.i82.6
  br i1 %or.cond297, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.qj = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  %i.qk = load i32, ptr %i.qj, align 4, !tbaa !9  ; 2 uses
  %i.ql = sext i32 %.136.i84.5 to i64
  %i.qm = getelementptr inbounds [4 x i8], ptr %i.nr, i64 %i.ql
  store i32 %i.qk, ptr %i.qm, align 4, !tbaa !9
  %i.qn = and i32 %i.qk, 31
  %i.qo = shl nuw i32 1, %i.qn
  %i.qp = load i32, ptr %.041.i, align 4, !tbaa !30
  %i.qq = or i32 %i.qo, %i.qp
  store i32 %i.qq, ptr %.041.i, align 4, !tbaa !30
  %.pre.i83.6 = load i32, ptr %i.ds, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.bw, %bb.bz, %bb.cc, %bb.cf, %bb.ci, %bb.cl, %bb.cm, %Dar_CutTruthShrink.exit.i
  %.lcssa.i = phi i32 [ %i.nq, %Dar_CutTruthShrink.exit.i ], [ %i.ny, %bb.bw ], [ %i.ok, %bb.bz ], [ %i.ow, %bb.cc ], [ %i.pi, %bb.cf ], [ %i.pu, %bb.ci ], [ %i.qg, %bb.cl ], [ %.pre.i83.6, %bb.cm ]
  %i.qr = shl i32 %.0.lcssa.i, 29
  %i.qs = and i32 %.lcssa.i, 536870911
  %i.qt = or disjoint i32 %i.qs, %i.qr            ; 2 uses
  store i32 %i.qt, ptr %i.ds, align 4
  %i.qu = load i64, ptr %i.s, align 8             ; 2 uses
  %.not60.i86 = icmp ult i64 %i.qu, 72057594037927936
  br i1 %.not60.i86, label %Dar_CutFilter.exit123, label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %.loopexit
  %.val.i88 = load ptr, ptr %i.r, align 8, !tbaa !15
  %i.qv = getelementptr inbounds nuw i8, ptr %.041.i, i64 8 ; 8 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.041.i, i64 12
  %i.qx = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.qy = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.qz = getelementptr inbounds nuw i8, ptr %.041.i, i64 24
  %i.ra = getelementptr inbounds nuw i8, ptr %.041.i, i64 28
  %i.rb = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  br label %bb.cn

bb.cn:                                            ; preds = %Dar_CutCheckDominance.exit.thread.i93, %.lr.ph.i87
  %i.rc = phi i64 [ %i.qu, %.lr.ph.i87 ], [ %i.ud, %Dar_CutCheckDominance.exit.thread.i93 ] ; 17 uses
  %.059.i89 = phi i32 [ 0, %.lr.ph.i87 ], [ %i.ue, %Dar_CutCheckDominance.exit.thread.i93 ]
end_hunk_1
begin_hunk_2_@Dar_ObjComputeCuts:bb.a
  %i.ue = add nuw nsw i32 %.059.i89, 1            ; 2 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %.02257.i90, i64 24
  %i.ug = lshr i64 %i.ud, 56
  %i.uh = trunc nuw nsw i64 %i.ug to i32
  %i.ui = icmp samesign ult i32 %i.ue, %i.uh
  br i1 %i.ui, label %bb.cn, label %Dar_CutFilter.exit123thread-pre-split.loopexit, !llvm.loop !56

Dar_CutFilter.exit123thread-pre-split.loopexit:   ; preds = %Dar_CutCheckDominance.exit.thread.i93
  %.pr.pre = load i32, ptr %i.ds, align 4
  br label %Dar_CutFilter.exit123

Dar_CutFilter.exit123:                            ; preds = %._crit_edge.i79, %Dar_CutFilter.exit123thread-pre-split.loopexit, %Dar_CutCheckDominance.exit43.i107, %.loopexit, %Dar_CutTruth.exit
  %i.uj = phi i32 [ %i.kw, %Dar_CutTruth.exit ], [ %i.uc, %Dar_CutCheckDominance.exit43.i107 ], [ %i.qt, %.loopexit ], [ %.pr.pre, %Dar_CutFilter.exit123thread-pre-split.loopexit ], [ %i.kw, %._crit_edge.i79 ] ; 4 uses
  %i.uk = lshr i32 %i.uj, 29                      ; 7 uses
  %.not.i124 = icmp eq i32 %i.uk, 0
  br i1 %.not.i124, label %.critedge.i, label %.lr.ph.i125

.lr.ph.i125:                                      ; preds = %Dar_CutFilter.exit123
  %i.ul = load ptr, ptr %i.y, align 8, !tbaa !31
  %i.um = getelementptr i8, ptr %i.ul, i64 32
  %.val.i126 = load ptr, ptr %i.um, align 8, !tbaa !39 ; 2 uses
  %.not.i.i127 = icmp eq ptr %.val.i126, null
  %i.un = getelementptr inbounds nuw i8, ptr %.041.i, i64 8
  br i1 %.not.i.i127, label %Dar_CutFindValue.exit, label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i125
  %i.uo = getelementptr i8, ptr %.val.i126, i64 8
  %.val.i.i = load ptr, ptr %i.uo, align 8, !tbaa !27 ; 7 uses
  %i.up = load i32, ptr %i.un, align 4, !tbaa !9
  %i.uq = sext i32 %i.up to i64
  %i.ur = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.uq
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !28 ; 2 uses
  %i.ut = icmp eq ptr %i.us, null
  br i1 %i.ut, label %Dar_CutFindValue.exit, label %bb.dv

bb.dv:                                            ; preds = %.lr.ph.split.i
  %i.uu = getelementptr inbounds nuw i8, ptr %i.us, i64 24
  %i.uv = load i64, ptr %i.uu, align 8
  %i.uw = trunc i64 %i.uv to i32
  %i.ux = lshr i32 %i.uw, 6                       ; 3 uses
  %i.uy = icmp eq i32 %i.ux, 1
  %i.uz = zext i1 %i.uy to i32                    ; 2 uses
  %exitcond.not.i131 = icmp eq i32 %i.uk, 1
  br i1 %exitcond.not.i131, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.1

Aig_ManObj.exit.i.1:                              ; preds = %bb.dv
  %i.va = getelementptr inbounds nuw i8, ptr %.041.i, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !9
  %i.vc = sext i32 %i.vb to i64
  %i.vd = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.vc
  %i.ve = load ptr, ptr %i.vd, align 8, !tbaa !28 ; 2 uses
  %i.vf = icmp eq ptr %i.ve, null
  br i1 %i.vf, label %Dar_CutFindValue.exit, label %bb.dw

bb.dw:                                            ; preds = %Aig_ManObj.exit.i.1
  %i.vg = getelementptr inbounds nuw i8, ptr %i.ve, i64 24
  %i.vh = load i64, ptr %i.vg, align 8
  %i.vi = trunc i64 %i.vh to i32
  %i.vj = lshr i32 %i.vi, 6                       ; 2 uses
  %i.vk = add nuw nsw i32 %i.vj, %i.ux            ; 2 uses
  %i.vl = icmp eq i32 %i.vj, 1
  %i.vm = zext i1 %i.vl to i32
  %i.vn = add nuw nsw i32 %i.uz, %i.vm            ; 2 uses
  %exitcond.not.i131.1 = icmp eq i32 %i.uk, 2
  br i1 %exitcond.not.i131.1, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.2

Aig_ManObj.exit.i.2:                              ; preds = %bb.dw
  %i.vo = getelementptr inbounds nuw i8, ptr %.041.i, i64 16
  %i.vp = load i32, ptr %i.vo, align 4, !tbaa !9
  %i.vq = sext i32 %i.vp to i64
  %i.vr = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.vq
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !28 ; 2 uses
  %i.vt = icmp eq ptr %i.vs, null
  br i1 %i.vt, label %Dar_CutFindValue.exit, label %bb.dx

bb.dx:                                            ; preds = %Aig_ManObj.exit.i.2
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vs, i64 24
  %i.vv = load i64, ptr %i.vu, align 8
  %i.vw = trunc i64 %i.vv to i32
  %i.vx = lshr i32 %i.vw, 6                       ; 2 uses
  %i.vy = add nuw nsw i32 %i.vx, %i.vk            ; 2 uses
  %i.vz = icmp eq i32 %i.vx, 1
  %i.wa = zext i1 %i.vz to i32
  %i.wb = add nuw nsw i32 %i.vn, %i.wa            ; 2 uses
  %exitcond.not.i131.2 = icmp eq i32 %i.uk, 3
  br i1 %exitcond.not.i131.2, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.3

Aig_ManObj.exit.i.3:                              ; preds = %bb.dx
  %i.wc = getelementptr inbounds nuw i8, ptr %.041.i, i64 20
  %i.wd = load i32, ptr %i.wc, align 4, !tbaa !9
  %i.we = sext i32 %i.wd to i64
  %i.wf = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.we
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !28 ; 2 uses
  %i.wh = icmp eq ptr %i.wg, null
  br i1 %i.wh, label %Dar_CutFindValue.exit, label %bb.dy

bb.dy:                                            ; preds = %Aig_ManObj.exit.i.3
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  %i.wj = load i64, ptr %i.wi, align 8
  %i.wk = trunc i64 %i.wj to i32
  %i.wl = lshr i32 %i.wk, 6                       ; 2 uses
  %i.wm = add nuw nsw i32 %i.wl, %i.vy            ; 2 uses
  %i.wn = icmp eq i32 %i.wl, 1
  %i.wo = zext i1 %i.wn to i32
  %i.wp = add nuw nsw i32 %i.wb, %i.wo            ; 2 uses
  %exitcond.not.i131.3 = icmp eq i32 %i.uk, 4
  br i1 %exitcond.not.i131.3, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.4

Aig_ManObj.exit.i.4:                              ; preds = %bb.dy
  %i.wq = getelementptr inbounds nuw i8, ptr %.041.i, i64 24
  %i.wr = load i32, ptr %i.wq, align 4, !tbaa !9
  %i.ws = sext i32 %i.wr to i64
  %i.wt = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.ws
  %i.wu = load ptr, ptr %i.wt, align 8, !tbaa !28 ; 2 uses
  %i.wv = icmp eq ptr %i.wu, null
  br i1 %i.wv, label %Dar_CutFindValue.exit, label %bb.dz

bb.dz:                                            ; preds = %Aig_ManObj.exit.i.4
  %i.ww = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  %i.wx = load i64, ptr %i.ww, align 8
  %i.wy = trunc i64 %i.wx to i32
  %i.wz = lshr i32 %i.wy, 6                       ; 2 uses
  %i.xa = add nuw nsw i32 %i.wz, %i.wm            ; 2 uses
  %i.xb = icmp eq i32 %i.wz, 1
  %i.xc = zext i1 %i.xb to i32
  %i.xd = add nuw nsw i32 %i.wp, %i.xc            ; 2 uses
  %exitcond.not.i131.4 = icmp eq i32 %i.uk, 5
  br i1 %exitcond.not.i131.4, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.5

Aig_ManObj.exit.i.5:                              ; preds = %bb.dz
  %i.xe = getelementptr inbounds nuw i8, ptr %.041.i, i64 28
  %i.xf = load i32, ptr %i.xe, align 4, !tbaa !9
  %i.xg = sext i32 %i.xf to i64
  %i.xh = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.xg
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !28 ; 2 uses
  %i.xj = icmp eq ptr %i.xi, null
  br i1 %i.xj, label %Dar_CutFindValue.exit, label %bb.ea

bb.ea:                                            ; preds = %Aig_ManObj.exit.i.5
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xi, i64 24
  %i.xl = load i64, ptr %i.xk, align 8
  %i.xm = trunc i64 %i.xl to i32
  %i.xn = lshr i32 %i.xm, 6                       ; 2 uses
  %i.xo = add nuw nsw i32 %i.xn, %i.xa            ; 2 uses
  %i.xp = icmp eq i32 %i.xn, 1
  %i.xq = zext i1 %i.xp to i32
  %i.xr = add nuw nsw i32 %i.xd, %i.xq            ; 2 uses
  %exitcond.not.i131.5 = icmp eq i32 %i.uk, 6
  br i1 %exitcond.not.i131.5, label %.critedge.loopexit.i, label %Aig_ManObj.exit.i.6

Aig_ManObj.exit.i.6:                              ; preds = %bb.ea
  %i.xs = getelementptr inbounds nuw i8, ptr %.041.i, i64 32
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !9
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.xu
  %i.xw = load ptr, ptr %i.xv, align 8, !tbaa !28 ; 2 uses
  %i.xx = icmp eq ptr %i.xw, null
  br i1 %i.xx, label %Dar_CutFindValue.exit, label %bb.eb

bb.eb:                                            ; preds = %Aig_ManObj.exit.i.6
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xw, i64 24
  %i.xz = load i64, ptr %i.xy, align 8
  %i.ya = trunc i64 %i.xz to i32
  %i.yb = lshr i32 %i.ya, 6                       ; 2 uses
  %i.yc = add nuw nsw i32 %i.yb, %i.xo
  %i.yd = icmp eq i32 %i.yb, 1
  %i.ye = zext i1 %i.yd to i32
  %i.yf = add nuw nsw i32 %i.xr, %i.ye
  br label %.critedge.loopexit.i

.critedge.loopexit.i:                             ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dy, %bb.dx, %bb.dw, %bb.dv
  %.lcssa250 = phi i32 [ %i.ux, %bb.dv ], [ %i.vk, %bb.dw ], [ %i.vy, %bb.dx ], [ %i.wm, %bb.dy ], [ %i.xa, %bb.dz ], [ %i.xo, %bb.ea ], [ %i.yc, %bb.eb ]
  %.lcssa249 = phi i32 [ %i.uz, %bb.dv ], [ %i.vn, %bb.dw ], [ %i.wb, %bb.dx ], [ %i.wp, %bb.dy ], [ %i.xd, %bb.dz ], [ %i.xr, %bb.ea ], [ %i.yf, %bb.eb ]
  %i.yg = tail call i32 @llvm.umin.i32(i32 %.lcssa250, i32 1000)
  br label %.critedge.i

.critedge.i:                                      ; preds = %.critedge.loopexit.i, %Dar_CutFilter.exit123
  %.016.lcssa.i = phi i32 [ 0, %Dar_CutFilter.exit123 ], [ %i.yg, %.critedge.loopexit.i ]
  %.0.lcssa.i132 = phi i32 [ 0, %Dar_CutFilter.exit123 ], [ %.lcssa249, %.critedge.loopexit.i ] ; 2 uses
  %i.yh = icmp ult i32 %i.uj, 1073741824
  br i1 %i.yh, label %Dar_CutFindValue.exit, label %bb.ec

bb.ec:                                            ; preds = %.critedge.i
  %i.yi = icmp samesign ugt i32 %.0.lcssa.i132, 3
  %i.yj = sub nsw i32 5, %.0.lcssa.i132
  %spec.select.i = select i1 %i.yi, i32 %i.yj, i32 %.016.lcssa.i
  br label %Dar_CutFindValue.exit

Dar_CutFindValue.exit:                            ; preds = %.lr.ph.split.i, %Aig_ManObj.exit.i.1, %Aig_ManObj.exit.i.2, %Aig_ManObj.exit.i.3, %Aig_ManObj.exit.i.4, %Aig_ManObj.exit.i.5, %Aig_ManObj.exit.i.6, %.lr.ph.i125, %.critedge.i, %bb.ec
  %.018.i = phi i32 [ %spec.select.i, %bb.ec ], [ 1001, %.critedge.i ], [ 0, %.lr.ph.i125 ], [ 0, %Aig_ManObj.exit.i.6 ], [ 0, %Aig_ManObj.exit.i.5 ], [ 0, %Aig_ManObj.exit.i.4 ], [ 0, %Aig_ManObj.exit.i.3 ], [ 0, %Aig_ManObj.exit.i.2 ], [ 0, %Aig_ManObj.exit.i.1 ], [ 0, %.lr.ph.split.i ] ; 2 uses
  %i.yk = shl i32 %.018.i, 16
  %i.yl = and i32 %i.yk, 134152192
  %i.ym = and i32 %i.uj, -134152193
  %i.yn = or disjoint i32 %i.yl, %i.ym
  store i32 %i.yn, ptr %i.ds, align 4
  %i.yo = and i32 %.018.i, 2047
  %i.yp = icmp eq i32 %i.yo, 0
  br i1 %i.yp, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %Dar_CutFindValue.exit
  %i.yq = load i32, ptr %i.z, align 8, !tbaa !64
  %i.yr = add nsw i32 %i.yq, 1
  store i32 %i.yr, ptr %i.z, align 8, !tbaa !64
  %i.ys = load i32, ptr %i.ds, align 4
  br label %Dar_CutMerge.exit.thread.sink.split

bb.ee:                                            ; preds = %Dar_CutFindValue.exit
  %i.yt = icmp ult i32 %i.uj, 1073741824
  br i1 %i.yt, label %.loopexit147, label %Dar_CutMerge.exit.thread

Dar_CutMerge.exit.thread.sink.split:              ; preds = %bb.as, %bb.bf, %._crit_edge.us.i40.i, %._crit_edge.us.i40.i.1, %._crit_edge.us.i40.i.2, %._crit_edge.us.i40.i.3, %._crit_edge.us.i40.i.4, %._crit_edge.us.i40.i.5, %bb.ed
  %.sink220 = phi i32 [ %i.ys, %bb.ed ], [ %i.em, %bb.bf ], [ %i.em, %._crit_edge.us.i40.i.5 ], [ %i.em, %._crit_edge.us.i40.i.4 ], [ %i.em, %._crit_edge.us.i40.i.3 ], [ %i.em, %._crit_edge.us.i40.i.2 ], [ %i.em, %._crit_edge.us.i40.i.1 ], [ %i.em, %._crit_edge.us.i40.i ], [ %i.em, %bb.as ]
  %i.yu = and i32 %.sink220, -268435457
  store i32 %i.yu, ptr %i.ds, align 4
  br label %Dar_CutMerge.exit.thread

Dar_CutMerge.exit.thread:                         ; preds = %Dar_CutMerge.exit.thread.sink.split, %bb.x, %bb.w, %bb.d, %bb.ee, %bb.e
  %i.yv = add nuw nsw i32 %.057158, 1             ; 2 uses
  %i.yw = getelementptr inbounds nuw i8, ptr %.060156, i64 24
  %i.yx = load i64, ptr %i.p, align 8
  %i.yy = lshr i64 %i.yx, 56
  %i.yz = trunc nuw nsw i64 %i.yy to i32
  %i.za = icmp samesign ult i32 %i.yv, %i.yz
  br i1 %i.za, label %bb.d, label %.loopexit146.loopexit, !llvm.loop !59

.loopexit146.loopexit:                            ; preds = %Dar_CutMerge.exit.thread
  %.pre = load i64, ptr %i.i, align 8
  br label %.loopexit146

.loopexit146:                                     ; preds = %.loopexit146.loopexit, %bb.c, %bb.b
  %i.zb = phi i64 [ %.pre, %.loopexit146.loopexit ], [ %i.aa, %bb.c ], [ %i.aa, %bb.b ] ; 2 uses
  %i.zc = add nuw nsw i32 %.058161, 1             ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %.061159, i64 24
  %i.ze = lshr i64 %i.zb, 56
  %i.zf = trunc nuw nsw i64 %i.ze to i32
  %i.zg = icmp samesign ult i32 %i.zc, %i.zf
  br i1 %i.zg, label %bb.b, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.loopexit146, %bb.a
  %i.zh = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.zi = load i64, ptr %i.zh, align 8            ; 2 uses
  %.not169 = icmp ult i64 %i.zi, 72057594037927936
  br i1 %.not169, label %._crit_edge167, label %.lr.ph166

.lr.ph166:                                        ; preds = %._crit_edge
  %i.zj = getelementptr i8, ptr %1, i64 40
  %.val = load ptr, ptr %i.zj, align 8, !tbaa !15
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 2756 ; 2 uses
  br label %bb.ef

bb.ef:                                            ; preds = %.lr.ph166, %bb.eh
  %i.zl = phi i64 [ %i.zi, %.lr.ph166 ], [ %i.zs, %bb.eh ]
  %.1164 = phi i32 [ 0, %.lr.ph166 ], [ %i.zt, %bb.eh ]
  %.059163 = phi ptr [ %.val, %.lr.ph166 ], [ %i.zu, %bb.eh ] ; 2 uses
  %i.zm = getelementptr inbounds nuw i8, ptr %.059163, i64 4
  %i.zn = load i32, ptr %i.zm, align 4
  %i.zo = and i32 %i.zn, 268435456
  %i.zp = icmp eq i32 %i.zo, 0
  br i1 %i.zp, label %bb.eh, label %bb.eg

bb.eg:                                            ; preds = %bb.ef
  %i.zq = load i32, ptr %i.zk, align 4, !tbaa !65
  %i.zr = add nsw i32 %i.zq, 1
  store i32 %i.zr, ptr %i.zk, align 4, !tbaa !65
  %.pre183 = load i64, ptr %i.zh, align 8
  br label %bb.eh

bb.eh:                                            ; preds = %bb.eg, %bb.ef
  %i.zs = phi i64 [ %.pre183, %bb.eg ], [ %i.zl, %bb.ef ] ; 2 uses
  %i.zt = add nuw nsw i32 %.1164, 1               ; 2 uses
  %i.zu = getelementptr inbounds nuw i8, ptr %.059163, i64 24
  %i.zv = lshr i64 %i.zs, 56
  %i.zw = trunc nuw nsw i64 %i.zv to i32
  %i.zx = icmp samesign ult i32 %i.zt, %i.zw
  br i1 %i.zx, label %bb.ef, label %._crit_edge167, !llvm.loop !61

._crit_edge167:                                   ; preds = %bb.eh, %._crit_edge
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 2756 ; 2 uses
  %i.zz = load i32, ptr %i.zy, align 4, !tbaa !65
  %i.aaa = add nsw i32 %i.zz, -1
  store i32 %i.aaa, ptr %i.zy, align 4, !tbaa !65
  br label %.loopexit147

.loopexit147:                                     ; preds = %bb.ee, %._crit_edge167
  ret ptr %i.h
}

declare ptr @Aig_ObjReal_rec(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define ptr @Dar_ObjComputeCuts_rec(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40
  %.val1730 = load ptr, ptr %i.a, align 8, !tbaa !15 ; 2 uses
  %.not31 = icmp eq ptr %.val1730, null
  br i1 %.not31, label %.lr.ph, label %common.ret43

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr2532 = phi ptr [ %i.h, %tailrecurse ], [ %1, %bb.a ] ; 6 uses
  %i.b = getelementptr i8, ptr %.tr2532, i64 24
  %.val18 = load i64, ptr %i.b, align 8
  %i.c = and i64 %.val18, 7
  switch i64 %i.c, label %bb.c [
    i64 2, label %bb.b
    i64 4, label %tailrecurse
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = tail call ptr @Dar_ObjPrepareCuts(ptr noundef %0, ptr noundef nonnull %.tr2532)
  br label %common.ret43

tailrecurse:                                      ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.tr2532, i64 8
  %.val21 = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.f = ptrtoint ptr %.val21 to i64
  %i.g = and i64 %i.f, -2
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %i.i = getelementptr i8, ptr %i.h, i64 40
  %.val17 = load ptr, ptr %i.i, align 8, !tbaa !15 ; 2 uses
  %.not = icmp eq ptr %.val17, null
  br i1 %.not, label %.lr.ph, label %common.ret43

common.ret43:                                     ; preds = %bb.b, %bb.a, %tailrecurse, %bb.c
  %common.ret43.op = phi ptr [ %i.t, %bb.c ], [ %.val1730, %bb.a ], [ %i.d, %bb.b ], [ %.val17, %tailrecurse ]
  ret ptr %common.ret43.op

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr i8, ptr %.tr2532, i64 8
  %.val20 = load ptr, ptr %i.j, align 8, !tbaa !40
  %i.k = ptrtoint ptr %.val20 to i64
  %i.l = and i64 %i.k, -2
  %i.m = inttoptr i64 %i.l to ptr
  %i.n = tail call ptr @Dar_ObjComputeCuts_rec(ptr noundef %0, ptr noundef %i.m) ; 0 uses
  %i.o = getelementptr i8, ptr %.tr2532, i64 16
  %.val22 = load ptr, ptr %i.o, align 8, !tbaa !41
  %i.p = ptrtoint ptr %.val22 to i64
  %i.q = and i64 %i.p, -2
  %i.r = inttoptr i64 %i.q to ptr
  %i.s = tail call ptr @Dar_ObjComputeCuts_rec(ptr noundef %0, ptr noundef %i.r) ; 0 uses
  %i.t = tail call ptr @Dar_ObjComputeCuts(ptr noundef %0, ptr noundef nonnull %.tr2532, i32 noundef 0)
  br label %common.ret43
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i32 0, 2) i32 @Dar_CutMergeOrdered(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 19 uses
  %i.b = load i32, ptr %i.a, align 4              ; 2 uses
  %i.c = icmp slt i32 %i.b, -1610612736
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 6 uses
  br i1 %i.c, label %bb.b, label %.preheader112

.preheader112:                                    ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.d, align 4
  %i.i = icmp ult i32 %i.h, 536870912
  %i.j = icmp ult i32 %i.b, 536870912             ; 2 uses
  br i1 %i.i, label %bb.au, label %bb.ax

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.d, align 4              ; 2 uses
  %i.l = icmp slt i32 %i.k, -1610612736
  %i.m = load i32, ptr %1, align 4, !tbaa !30     ; 2 uses
  %i.n = load i32, ptr %2, align 4, !tbaa !30     ; 3 uses
  br i1 %i.l, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %.not103 = icmp eq i32 %i.m, %i.n
  br i1 %.not103, label %.preheader107, label %.thread105

.preheader107:                                    ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i32, ptr %i.o, align 4, !tbaa !9
  %i.r = load i32, ptr %i.p, align 4, !tbaa !9
  %.not104 = icmp eq i32 %i.q, %i.r
  br i1 %.not104, label %bb.d, label %.thread105

bb.d:                                             ; preds = %.preheader107
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.t = load i32, ptr %i.s, align 4, !tbaa !9
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !9
  %.not104.1 = icmp eq i32 %i.t, %i.v
  br i1 %.not104.1, label %bb.e, label %.thread105

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.x = load i32, ptr %i.w, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.z = load i32, ptr %i.y, align 4, !tbaa !9
  %.not104.2 = icmp eq i32 %i.x, %i.z
  br i1 %.not104.2, label %bb.f, label %.thread105

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !9
  %.not104.3 = icmp eq i32 %i.ab, %i.ad
  br i1 %.not104.3, label %.lr.ph124, label %.thread105

.lr.ph124:                                        ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i32, ptr %i.o, align 4, !tbaa !9
  store i32 %i.af, ptr %i.ae, align 4, !tbaa !9
  %i.ag = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ah = icmp ugt i32 %i.ag, 1073741823
  br i1 %i.ah, label %bb.g, label %._crit_edge125

bb.g:                                             ; preds = %.lr.ph124
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !9
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !9
  %i.al = load i32, ptr %i.a, align 4             ; 2 uses
  %i.am = icmp ugt i32 %i.al, 1610612735
  br i1 %i.am, label %bb.h, label %._crit_edge125

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !9
  %i.aq = load i32, ptr %i.a, align 4             ; 2 uses
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %bb.i, label %._crit_edge125

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.at = load i32, ptr %i.as, align 4, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 %i.at, ptr %i.au, align 4, !tbaa !9
  %i.av = load i32, ptr %i.a, align 4             ; 2 uses
  %i.aw = icmp ugt i32 %i.av, -1610612737
  br i1 %i.aw, label %bb.j, label %._crit_edge125

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !9
  %i.ba = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bb = icmp ugt i32 %i.ba, -1073741825
  br i1 %i.bb, label %bb.k, label %._crit_edge125

bb.k:                                             ; preds = %bb.j
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !9
  %i.bf = load i32, ptr %i.a, align 4             ; 2 uses
  %i.bg = icmp ugt i32 %i.bf, -536870913
  br i1 %i.bg, label %bb.l, label %._crit_edge125

bb.l:                                             ; preds = %bb.k
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !9
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !9
  %i.bk = load i32, ptr %i.a, align 4
  br label %._crit_edge125

._crit_edge125:                                   ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %.lr.ph124
  %.lcssa = phi i32 [ %i.ag, %.lr.ph124 ], [ %i.al, %bb.g ], [ %i.aq, %bb.h ], [ %i.av, %bb.i ], [ %i.ba, %bb.j ], [ %i.bf, %bb.k ], [ %i.bk, %bb.l ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %.lcssa, -536870912
  %i.bo = and i32 %i.bm, 536870911
  %i.bp = or disjoint i32 %i.bo, %i.bn
  store i32 %i.bp, ptr %i.bl, align 4
  br label %.thread105

end_hunk_2
begin_hunk_3_@Dar_CutTruthStretch:bb.a
  %i.ba = lshr i32 %.2, 1
  %i.bb = and i32 %i.ba, 572662306
  %i.bc = or disjoint i32 %i.az, %i.bb
  br label %Dar_CutTruthSwapAdjacentVars.exit.1

Dar_CutTruthSwapAdjacentVars.exit.1:              ; preds = %bb.h, %.lr.ph.1
  %.0.i.1 = phi i32 [ %i.bc, %bb.h ], [ 0, %.lr.ph.1 ] ; 4 uses
  switch i32 %.1, label %Dar_CutTruthSwapAdjacentVars.exit.1.1 [
    i32 -1, label %bb.i
    i32 0, label %._crit_edge.loopexit.1
  ]

bb.i:                                             ; preds = %Dar_CutTruthSwapAdjacentVars.exit.1
  %i.bd = and i32 %.0.i.1, -1717986919
  %i.be = shl i32 %.0.i.1, 1
  %i.bf = and i32 %i.be, 1145324612
  %i.bg = or disjoint i32 %i.bf, %i.bd
  %i.bh = lshr i32 %.0.i.1, 1
  %i.bi = and i32 %i.bh, 572662306
  %i.bj = or disjoint i32 %i.bg, %i.bi
  br label %Dar_CutTruthSwapAdjacentVars.exit.1.1

Dar_CutTruthSwapAdjacentVars.exit.1.1:            ; preds = %bb.i, %Dar_CutTruthSwapAdjacentVars.exit.1
  %.0.i.1.1 = phi i32 [ %i.bj, %bb.i ], [ 0, %Dar_CutTruthSwapAdjacentVars.exit.1 ] ; 4 uses
  switch i32 %.1, label %Dar_CutTruthSwapAdjacentVars.exit.1.2 [
    i32 -2, label %bb.j
    i32 -1, label %._crit_edge.loopexit.1
  ]

bb.j:                                             ; preds = %Dar_CutTruthSwapAdjacentVars.exit.1.1
  %i.bk = and i32 %.0.i.1.1, -1717986919
  %i.bl = shl i32 %.0.i.1.1, 1
  %i.bm = and i32 %i.bl, 1145324612
  %i.bn = or disjoint i32 %i.bm, %i.bk
  %i.bo = lshr i32 %.0.i.1.1, 1
  %i.bp = and i32 %i.bo, 572662306
  %i.bq = or disjoint i32 %i.bn, %i.bp
  br label %Dar_CutTruthSwapAdjacentVars.exit.1.2

Dar_CutTruthSwapAdjacentVars.exit.1.2:            ; preds = %bb.j, %Dar_CutTruthSwapAdjacentVars.exit.1.1
  %.0.i.1.2 = phi i32 [ %i.bq, %bb.j ], [ 0, %Dar_CutTruthSwapAdjacentVars.exit.1.1 ]
  %i.br = icmp eq i32 %.1, -3
  %i.bs = xor i1 %i.br, true
  call void @llvm.assume(i1 %i.bs)
  br label %._crit_edge.loopexit.1

._crit_edge.loopexit.1:                           ; preds = %Dar_CutTruthSwapAdjacentVars.exit.1.2, %Dar_CutTruthSwapAdjacentVars.exit.1.1, %Dar_CutTruthSwapAdjacentVars.exit.1, %.lr.ph.1
  %.11617.1.lcssa = phi i32 [ %.2, %.lr.ph.1 ], [ %.0.i.1, %Dar_CutTruthSwapAdjacentVars.exit.1 ], [ %.0.i.1.1, %Dar_CutTruthSwapAdjacentVars.exit.1.1 ], [ %.0.i.1.2, %Dar_CutTruthSwapAdjacentVars.exit.1.2 ] ; 3 uses
  %i.bt = and i32 %.11617.1.lcssa, -1010580541
  %i.bu = shl i32 %.11617.1.lcssa, 2
  %i.bv = and i32 %i.bu, 808464432
  %i.bw = or disjoint i32 %i.bv, %i.bt
  %i.bx = lshr i32 %.11617.1.lcssa, 2
  %i.by = and i32 %i.bx, 202116108
  %i.bz = or disjoint i32 %i.bw, %i.by
  br label %._crit_edge.1

._crit_edge.1:                                    ; preds = %._crit_edge.loopexit.1, %.preheader.1
  %.116.lcssa.1 = phi i32 [ %.2, %.preheader.1 ], [ %i.bz, %._crit_edge.loopexit.1 ]
  %i.ca = add nsw i32 %.1, -1
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.1, %bb.g
  %.2.1 = phi i32 [ %.116.lcssa.1, %._crit_edge.1 ], [ %.2, %bb.g ] ; 3 uses
  %.1.1 = phi i32 [ %i.ca, %._crit_edge.1 ], [ %.1, %bb.g ] ; 4 uses
  %i.cb = and i32 %2, 2
  %.not.2 = icmp eq i32 %i.cb, 0
  br i1 %.not.2, label %._crit_edge.3, label %.preheader.2

.preheader.2:                                     ; preds = %bb.k
  %i.cc = icmp slt i32 %.1.1, 1
  br i1 %i.cc, label %.lr.ph.2, label %._crit_edge.2

.lr.ph.2:                                         ; preds = %.preheader.2
  %cond = icmp eq i32 %.1.1, 0
  %spec.select = select i1 %cond, i32 %.2.1, i32 0 ; 3 uses
  %i.cd = and i32 %spec.select, -1717986919
  %i.ce = shl i32 %spec.select, 1
  %i.cf = and i32 %i.ce, 1145324612
  %i.cg = or disjoint i32 %i.cf, %i.cd
  %i.ch = lshr i32 %spec.select, 1
  %i.ci = and i32 %i.ch, 572662306
  %i.cj = or disjoint i32 %i.cg, %i.ci
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %.lr.ph.2, %.preheader.2
  %.116.lcssa.2 = phi i32 [ %.2.1, %.preheader.2 ], [ %i.cj, %.lr.ph.2 ]
  %i.ck = add nsw i32 %.1.1, -1
  br label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.2, %bb.k
  %.2.2 = phi i32 [ %.116.lcssa.2, %._crit_edge.2 ], [ %.2.1, %bb.k ]
  %.1.2 = phi i32 [ %i.ck, %._crit_edge.2 ], [ %.1.1, %bb.k ]
  %.not.3 = trunc i32 %2 to i1
  %i.cl = icmp slt i32 %.1.2, 0
  %or.cond = select i1 %.not.3, i1 %i.cl, i1 false
  %.2.3 = select i1 %or.cond, i32 0, i32 %.2.2
  ret i32 %.2.3
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(1) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !10}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS10Aig_Obj_t_", !11, i64 0}
!13 = !{!"Aig_Obj_t_", !5, i64 0, !12, i64 8, !12, i64 16, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 24, !6, i64 28, !6, i64 31, !6, i64 32, !6, i64 36, !5, i64 40}
!14 = !{!13, !6, i64 36}
!15 = !{!5, !5, i64 0}
!16 = !{!"p1 _ZTS13Dar_RwrPar_t_", !11, i64 0}
!17 = !{!"p1 _ZTS10Aig_Man_t_", !11, i64 0}
!18 = !{!"p1 _ZTS14Aig_MmFixed_t_", !11, i64 0}
!19 = !{!"p1 _ZTS10Vec_Ptr_t_", !11, i64 0}
!20 = !{!"long", !5, i64 0}
!21 = !{!"Dar_Man_t_", !16, i64 0, !17, i64 8, !18, i64 16, !11, i64 24, !19, i64 32, !19, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !6, i64 64, !6, i64 68, !5, i64 72, !5, i64 960, !5, i64 1848, !6, i64 2736, !6, i64 2740, !6, i64 2744, !6, i64 2748, !6, i64 2752, !6, i64 2756, !6, i64 2760, !6, i64 2764, !6, i64 2768, !20, i64 2776, !20, i64 2784, !20, i64 2792, !20, i64 2800, !20, i64 2808, !20, i64 2816}
!22 = !{!21, !18, i64 16}
!23 = !{!21, !19, i64 32}
!24 = !{!"any p2 pointer", !11, i64 0}
!25 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !24, i64 8}
!26 = !{!25, !6, i64 4}
!27 = !{!25, !24, i64 8}
!28 = !{!11, !11, i64 0}
!29 = !{!"Dar_Cut_t_", !6, i64 0, !6, i64 4, !6, i64 6, !6, i64 7, !6, i64 7, !6, i64 7, !5, i64 8}
!30 = !{!29, !6, i64 0}
!31 = !{!21, !17, i64 8}
!32 = !{!"p1 omnipotent char", !11, i64 0}
!33 = !{!"p2 _ZTS10Aig_Obj_t_", !24, i64 0}
!34 = !{!"p1 int", !11, i64 0}
!35 = !{!"p1 _ZTS10Vec_Vec_t_", !11, i64 0}
!36 = !{!"p1 _ZTS10Vec_Int_t_", !11, i64 0}
!37 = !{!"p1 _ZTS10Abc_Cex_t_", !11, i64 0}
!38 = !{!"Aig_Man_t_", !32, i64 0, !32, i64 8, !19, i64 16, !19, i64 24, !19, i64 32, !19, i64 40, !12, i64 48, !13, i64 56, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !5, i64 128, !6, i64 156, !33, i64 160, !6, i64 168, !34, i64 176, !6, i64 184, !35, i64 192, !6, i64 200, !6, i64 204, !6, i64 208, !34, i64 216, !6, i64 224, !6, i64 228, !6, i64 232, !6, i64 236, !6, i64 240, !33, i64 248, !33, i64 256, !6, i64 264, !18, i64 272, !36, i64 280, !6, i64 288, !11, i64 296, !11, i64 304, !6, i64 312, !6, i64 316, !6, i64 320, !33, i64 328, !11, i64 336, !11, i64 344, !11, i64 352, !11, i64 360, !34, i64 368, !34, i64 376, !19, i64 384, !36, i64 392, !36, i64 400, !37, i64 408, !19, i64 416, !17, i64 424, !19, i64 432, !6, i64 440, !36, i64 448, !35, i64 456, !36, i64 464, !36, i64 472, !6, i64 480, !20, i64 488, !20, i64 496, !20, i64 504, !19, i64 512, !19, i64 520}
!39 = !{!38, !19, i64 32}
!40 = !{!13, !12, i64 8}
!41 = !{!13, !12, i64 16}
!42 = distinct !{!42, !10}
!43 = distinct !{!43, !10}
!44 = distinct !{!44, !10}
!45 = !{!21, !16, i64 0}
!46 = !{!"Dar_RwrPar_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!47 = !{!46, !6, i64 0}
!48 = !{!25, !6, i64 0}
!49 = !{!21, !6, i64 2736}
!50 = distinct !{!50, !10}
!51 = !{!38, !12, i64 48}
!52 = distinct !{!52, !10}
!53 = distinct !{!53, !10}
!54 = distinct !{!54, !10}
!55 = distinct !{!55, !10}
!56 = distinct !{!56, !10}
!57 = distinct !{!57, !10}
!58 = distinct !{!58, !10}
!59 = distinct !{!59, !10}
!60 = distinct !{!60, !10}
!61 = distinct !{!61, !10}
!62 = !{!21, !6, i64 2748}
!63 = !{!21, !6, i64 2752}
!64 = !{!21, !6, i64 2768}
!65 = !{!21, !6, i64 2756}
end_hunk_3
