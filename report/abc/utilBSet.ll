Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBSet?download=true
inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_TtGetCMInt:bb.a

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.ba = add nsw i32 %1, -2                      ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, i8 -1, i64 64, i1 false)
  %.not21.i44 = icmp eq i32 %i.ba, 31
  br i1 %.not21.i44, label %Abc_TtGetCM2Pat.exit, label %.lr.ph.i45

.lr.ph.i45:                                       ; preds = %bb.g
  %i.bb = shl nuw i32 1, %i.ba
  %.not.i46 = icmp eq ptr %7, null
  %i.bc = tail call i32 @llvm.smax.i32(i32 %1, i32 8)
  %i.bd = add nsw i32 %i.bc, -8
  %smax23.i47 = tail call i32 @llvm.smax.i32(i32 %i.bb, i32 1) ; 2 uses
  br i1 %.not.i46, label %.lr.ph.split.us.i54, label %.lr.ph.split.i48

.lr.ph.split.us.i54:                              ; preds = %.lr.ph.i45, %bb.i
  %.020.us.i55 = phi i32 [ %i.br, %bb.i ], [ 0, %.lr.ph.i45 ] ; 3 uses
  %.01719.us.i56 = phi i32 [ %.1.us.i57, %bb.i ], [ 0, %.lr.ph.i45 ] ; 3 uses
  %i.be = lshr i32 %.020.us.i55, 4
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bf
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !28
  %i.bi = shl i32 %.020.us.i55, 2
  %i.bj = and i32 %i.bi, 60
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = lshr i64 %i.bh, %i.bk
  %i.bm = and i64 %i.bl, 15
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !29
  %i.bp = icmp eq i32 %i.bo, -1
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.i54
  store i32 %.01719.us.i56, ptr %i.bn, align 4, !tbaa !29
  %i.bq = add nsw i32 %.01719.us.i56, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.i54
  %.1.us.i57 = phi i32 [ %i.bq, %bb.h ], [ %.01719.us.i56, %.lr.ph.split.us.i54 ] ; 2 uses
  %i.br = add nuw nsw i32 %.020.us.i55, 1         ; 2 uses
  %exitcond24.not.i58 = icmp eq i32 %i.br, %smax23.i47
  br i1 %exitcond24.not.i58, label %Abc_TtGetCM2Pat.exit, label %.lr.ph.split.us.i54, !llvm.loop !7

.lr.ph.split.i48:                                 ; preds = %.lr.ph.i45, %bb.k
  %.020.i49 = phi i32 [ %i.cr, %bb.k ], [ 0, %.lr.ph.i45 ] ; 5 uses
  %.01719.i50 = phi i32 [ %.1.i51, %bb.k ], [ 0, %.lr.ph.i45 ] ; 4 uses
  %i.bs = lshr i32 %.020.i49, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bt
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !28
  %i.bw = shl i32 %.020.i49, 2
  %i.bx = and i32 %i.bw, 60
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = lshr i64 %i.bv, %i.by
  %i.ca = and i64 %i.bz, 15
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !29 ; 2 uses
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.i48
  store i32 %.01719.i50, ptr %i.cb, align 4, !tbaa !29
  %i.ce = add nsw i32 %.01719.i50, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.i48
  %i.cf = phi i32 [ %.01719.i50, %bb.j ], [ %i.cc, %.lr.ph.split.i48 ]
  %.1.i51 = phi i32 [ %i.ce, %bb.j ], [ %.01719.i50, %.lr.ph.split.i48 ] ; 2 uses
  %i.cg = shl i32 %i.cf, %i.bd
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [8 x i8], ptr %7, i64 %i.ch
  %i.cj = and i32 %.020.i49, 63
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = shl nuw i64 1, %i.ck
  %i.cm = lshr i32 %.020.i49, 6
  %i.cn = zext nneg i32 %i.cm to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %i.cn ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !28
  %i.cq = or i64 %i.cp, %i.cl
  store i64 %i.cq, ptr %i.co, align 8, !tbaa !28
  %i.cr = add nuw nsw i32 %.020.i49, 1            ; 2 uses
  %exitcond.not.i52 = icmp eq i32 %i.cr, %smax23.i47
  br i1 %exitcond.not.i52, label %Abc_TtGetCM2Pat.exit, label %.lr.ph.split.i48, !llvm.loop !7

Abc_TtGetCM2Pat.exit:                             ; preds = %bb.k, %bb.i, %bb.g
  %.017.lcssa.i53 = phi i32 [ 0, %bb.g ], [ %.1.us.i57, %bb.i ], [ %.1.i51, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %Abc_TtGetCM5Pat.exit

bb.l:                                             ; preds = %bb.a
  %i.cs = getelementptr i8, ptr %3, i64 8
  %.val43 = load ptr, ptr %i.cs, align 8, !tbaa !35
  %i.ct = tail call i32 @Abc_TtGetCM3Pat(ptr noundef %0, i32 noundef %1, ptr noundef %.val43, ptr noundef %6, ptr noundef %7)
  br label %Abc_TtGetCM5Pat.exit

bb.m:                                             ; preds = %bb.a
  %i.cu = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.cu, align 8, !tbaa !35
  %i.cv = tail call i32 @Abc_TtGetCM4Pat(ptr noundef %0, i32 noundef %1, ptr noundef %.val, ptr noundef %6, ptr noundef %7)
  br label %Abc_TtGetCM5Pat.exit

bb.n:                                             ; preds = %bb.a
  %i.cw = add nsw i32 %1, -5                      ; 2 uses
  %i.cx = shl nuw i32 1, %i.cw                    ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i32 0, ptr %i.cy, align 4, !tbaa !44
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 3 uses
  store i32 0, ptr %i.cz, align 4, !tbaa !34
  %.not.i59 = icmp eq ptr %7, null
  %.not45.i = icmp eq i32 %i.cw, 31               ; 2 uses
  br i1 %.not.i59, label %.preheader.i, label %.preheader36.i

.preheader36.i:                                   ; preds = %bb.n
  br i1 %.not45.i, label %Abc_TtGetCM5Pat.exit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.preheader36.i
  %i.da = tail call i32 @llvm.smax.i32(i32 %1, i32 11)
  %i.db = add nsw i32 %i.da, -11
  %smax.i = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  %wide.trip.count.i = zext nneg i32 %smax.i to i64
  br label %bb.o

.preheader.i:                                     ; preds = %bb.n
  br i1 %.not45.i, label %Abc_TtGetCM5Pat.exit, label %.lr.ph40.preheader.i

.lr.ph40.preheader.i:                             ; preds = %.preheader.i
  %smax52.i = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 1)
  %wide.trip.count53.i = zext nneg i32 %smax52.i to i64
  br label %.lr.ph40.i

bb.o:                                             ; preds = %bb.o, %.lr.ph.i60
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i60 ], [ %indvars.iv.next.i, %bb.o ] ; 4 uses
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !29
  %i.de = tail call i32 @Abc_TtHashLookup5(i32 noundef %i.dd, ptr noundef readonly %4, ptr noundef nonnull %5, ptr noundef nonnull %6)
  %i.df = shl i32 %i.de, %i.db
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr inbounds [8 x i8], ptr %7, i64 %i.dg
  %i.di = and i64 %indvars.iv.i, 63
  %i.dj = shl nuw i64 1, %i.di
  %i.dk = lshr i64 %indvars.iv.i, 6
  %i.dl = and i64 %i.dk, 67108863
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.dh, i64 %i.dl ; 2 uses
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !28
  %i.do = or i64 %i.dn, %i.dj
  store i64 %i.do, ptr %i.dm, align 8, !tbaa !28
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i61 = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i61, label %.loopexit.i, label %bb.o, !llvm.loop !8

.lr.ph40.i:                                       ; preds = %.lr.ph40.i, %.lr.ph40.preheader.i
  %indvars.iv49.i = phi i64 [ 0, %.lr.ph40.preheader.i ], [ %indvars.iv.next50.i, %.lr.ph40.i ] ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv49.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !29
  %i.dr = tail call i32 @Abc_TtHashLookup5(i32 noundef %i.dq, ptr noundef readonly %4, ptr noundef nonnull %5, ptr noundef nonnull %6) ; 0 uses
  %indvars.iv.next50.i = add nuw nsw i64 %indvars.iv49.i, 1 ; 2 uses
  %exitcond54.not.i = icmp eq i64 %indvars.iv.next50.i, %wide.trip.count53.i
  br i1 %exitcond54.not.i, label %.loopexit.i, label %.lr.ph40.i, !llvm.loop !9

.loopexit.i:                                      ; preds = %bb.o, %.lr.ph40.i
  %.val3341.pr.i = load i32, ptr %i.cz, align 4, !tbaa !34 ; 2 uses
  %i.ds = icmp sgt i32 %.val3341.pr.i, 0
  br i1 %i.ds, label %.lr.ph43.i, label %Abc_TtGetCM5Pat.exit

.lr.ph43.i:                                       ; preds = %.loopexit.i
  %i.dt = getelementptr i8, ptr %6, i64 8
  %.val34.i = load ptr, ptr %i.dt, align 8, !tbaa !35
  %i.du = getelementptr i8, ptr %4, i64 8
  %.val35.i = load ptr, ptr %i.du, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.lr.ph43.i
  %indvars.iv55.i = phi i64 [ 0, %.lr.ph43.i ], [ %indvars.iv.next56.i, %bb.p ] ; 2 uses
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.val34.i, i64 %indvars.iv55.i
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !29
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.val35.i, i64 %i.dx
  store i32 -1, ptr %i.dy, align 4, !tbaa !29
  %indvars.iv.next56.i = add nuw nsw i64 %indvars.iv55.i, 1 ; 2 uses
  %.val33.i = load i32, ptr %i.cz, align 4, !tbaa !34 ; 2 uses
  %i.dz = sext i32 %.val33.i to i64
  %i.ea = icmp slt i64 %indvars.iv.next56.i, %i.dz
  br i1 %i.ea, label %bb.p, label %Abc_TtGetCM5Pat.exit, !llvm.loop !10

bb.q:                                             ; preds = %bb.a
  %i.eb = icmp sgt i32 %2, 5
  br i1 %i.eb, label %bb.r, label %Abc_TtGetCM5Pat.exit

bb.r:                                             ; preds = %bb.q
  %i.ec = tail call i32 @Abc_TtGetCM6Pat(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  br label %Abc_TtGetCM5Pat.exit

Abc_TtGetCM5Pat.exit:                             ; preds = %bb.p, %.loopexit.i, %.preheader.i, %.preheader36.i, %Abc_TtGetCM2Pat.exit, %bb.m, %bb.r, %bb.q, %bb.l, %Abc_TtGetCM1Pat.exit
  %.0 = phi i32 [ %.017.lcssa.i, %Abc_TtGetCM1Pat.exit ], [ %.017.lcssa.i53, %Abc_TtGetCM2Pat.exit ], [ %i.ct, %bb.l ], [ %i.cv, %bb.m ], [ 0, %bb.q ], [ %i.ec, %bb.r ], [ %.val3341.pr.i, %.loopexit.i ], [ 0, %.preheader.i ], [ 0, %.preheader36.i ], [ %.val33.i, %bb.p ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 1, 32) i32 @Abc_TtGetCMPat(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
  %8 = tail call i32 @Abc_TtGetCMInt(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef null) ; 2 uses
  %9 = icmp slt i32 %8, 3
  br i1 %9, label %Abc_TtCheck1Shared.exit, label %bb.a

bb.a:                                             ; preds = %7
  %i.a = add nsw i32 %8, -1
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.c = sub nuw nsw i32 32, %i.b
  %.not3950.i = icmp sle i32 %1, %2
  tail call void @llvm.assume(i1 %.not3950.i)
  br label %Abc_TtCheck1Shared.exit

Abc_TtCheck1Shared.exit:                          ; preds = %bb.a, %7
  %.0 = phi i32 [ 1, %7 ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtGetCM(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.c, label %8

8:                                                ; preds = %bb.a
  %9 = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef null) ; 2 uses
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %Abc_TtGetCMPat.exit, label %bb.b

bb.b:                                             ; preds = %8
  %i.a = add nsw i32 %9, -1
  %i.b = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.a, i1 true)
  %i.c = sub nuw nsw i32 32, %i.b
  %.not3950.i.i = icmp sle i32 %1, %2
  tail call void @llvm.assume(i1 %.not3950.i.i)
  br label %Abc_TtGetCMPat.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 @Abc_TtGetCMCount(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %Abc_TtGetCMPat.exit

Abc_TtGetCMPat.exit:                              ; preds = %bb.b, %8, %bb.c
  %.0 = phi i32 [ %i.d, %bb.c ], [ 1, %8 ], [ %i.c, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_TtPermGenTest() local_unnamed_addr #8 {
.preheader:
  %i.a = alloca [5 x i32], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i32 4, ptr %i.e, align 16, !tbaa !29
  %i.f = getelementptr i8, ptr %i.a, i64 -4
  %.05.lcssa.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.05.lcssa.i.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.05.lcssa.i.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.05.lcssa.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %Abc_TtPermGen.exit
  %.119 = phi i32 [ 0, %.preheader ], [ %i.ap, %Abc_TtPermGen.exit ] ; 2 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.119) ; 0 uses
  %i.l = load i32, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !29   ; 4 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.n) ; 0 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.p) ; 0 uses
  %i.r = load i32, ptr %i.d, align 4, !tbaa !29   ; 4 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.e, align 16, !tbaa !29  ; 2 uses
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.t) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.not.i.not = icmp slt i32 %i.r, %i.t       ; 3 uses
  br i1 %.not.not.i.not, label %.lr.ph.preheader.i, label %bb.b

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.05.lcssa.i.sroa.phi = phi ptr [ %.05.lcssa.i.sroa.gep, %bb.a ], [ %.05.lcssa.i.sroa.gep44, %bb.b ], [ %.05.lcssa.i.sroa.gep45, %bb.c ], [ %.05.lcssa.i.sroa.gep46, %bb.d ], [ %i.a, %bb.e ]
  %i.v = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %i.w = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %i.x = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  %.05.lcssa.i = phi i64 [ 4, %bb.a ], [ 3, %bb.b ], [ 2, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.lcssa15.i = phi ptr [ %i.e, %bb.a ], [ %i.d, %bb.b ], [ %i.c, %bb.c ], [ %i.b, %bb.d ], [ %i.a, %bb.e ]
  %.lcssa.i = phi i32 [ %i.r, %bb.a ], [ %i.p, %bb.b ], [ %i.n, %bb.c ], [ %i.l, %bb.d ], [ %i.aa, %bb.e ] ; 6 uses
  %i.y = getelementptr i8, ptr %.lcssa15.i, i64 -4
  %i.z = load i32, ptr %i.g, align 16, !tbaa !29  ; 2 uses
  %.not55.i = icmp sgt i32 %i.z, %.lcssa.i
  br i1 %.not55.i, label %.critedge2.i, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.not.1.i = icmp slt i32 %i.p, %i.r
  br i1 %.not.1.i, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.2.i = icmp slt i32 %i.n, %i.p
  br i1 %.not.2.i, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.3.i = icmp slt i32 %i.l, %i.n
  br i1 %.not.3.i, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !29  ; 2 uses
  %.not.4.i = icmp slt i32 %i.aa, %i.l
  br i1 %.not.4.i, label %.lr.ph.preheader.i, label %Abc_TtPermGen.exit

.critedge.i:                                      ; preds = %.lr.ph.preheader.i
  br i1 %.not.not.i.not, label %.critedge2.i.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.critedge.i
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !29  ; 2 uses
  %.not55.i.1 = icmp sgt i32 %i.ab, %.lcssa.i
  br i1 %.not55.i.1, label %.critedge2.i, label %.critedge.i.1

.critedge.i.1:                                    ; preds = %.lr.ph.i.1
  br i1 %i.v, label %.lr.ph.i.2, label %.critedge2.i.loopexit

.lr.ph.i.2:                                       ; preds = %.critedge.i.1
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %.not55.i.2 = icmp sgt i32 %i.ac, %.lcssa.i
  br i1 %.not55.i.2, label %.critedge2.i, label %.critedge.i.2

.critedge.i.2:                                    ; preds = %.lr.ph.i.2
  br i1 %i.w, label %.lr.ph.i.3, label %.critedge2.i.loopexit

.lr.ph.i.3:                                       ; preds = %.critedge.i.2
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !29  ; 2 uses
  %.not55.i.3 = icmp sgt i32 %i.ad, %.lcssa.i
  br i1 %.not55.i.3, label %.critedge2.i, label %.critedge.i.3

.critedge.i.3:                                    ; preds = %.lr.ph.i.3
  %i.ae = load i32, ptr %i.a, align 16            ; 2 uses
  %.not55.i.4 = icmp sgt i32 %i.ae, %.lcssa.i
  %or.cond = select i1 %i.x, i1 %.not55.i.4, i1 false
  br i1 %or.cond, label %.critedge2.i, label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i
  %.phi.trans.insert24 = getelementptr i8, ptr %.05.lcssa.i.sroa.phi, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !29
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge.i.3, %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.critedge2.i.loopexit
  %.pre-phi = phi i64 [ %.05.lcssa.i, %.critedge2.i.loopexit ], [ 5, %.lr.ph.preheader.i ], [ 4, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.3 ], [ 1, %.critedge.i.3 ]
  %i.af = phi i32 [ %.pre, %.critedge2.i.loopexit ], [ %i.z, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.3 ], [ %i.ae, %.critedge.i.3 ]
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  store i32 %i.af, ptr %i.y, align 4, !tbaa !29
  store i32 %.lcssa.i, ptr %i.ah, align 4, !tbaa !29
  br i1 %.not.not.i.not, label %Abc_TtPermGen.exit, label %.lr.ph12.preheader.i

.lr.ph12.preheader.i:                             ; preds = %.critedge2.i
  %i.ai = add nuw nsw i64 %.05.lcssa.i, 1
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i
  %indvars.iv23.i = phi i64 [ 5, %.lr.ph12.preheader.i ], [ %indvars.iv.next24.i, %.lr.ph12.i ] ; 2 uses
  %indvars.iv21.i = phi i64 [ %.05.lcssa.i, %.lr.ph12.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph12.i ] ; 2 uses
  %indvars.iv19.i = phi i64 [ %i.ai, %.lr.ph12.preheader.i ], [ %indvars.iv.next20.i, %.lr.ph12.i ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv21.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv23.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !29
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !29
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, -1 ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next20.i, %indvars.iv.next24.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  br i1 %i.ao, label %.lr.ph12.i, label %Abc_TtPermGen.exit, !llvm.loop !88

Abc_TtPermGen.exit:                               ; preds = %.lr.ph12.i, %bb.e, %.critedge2.i
  %i.ap = add nuw nsw i32 %.119, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, 120
  br i1 %exitcond.not, label %bb.f, label %bb.a, !llvm.loop !89

bb.f:                                             ; preds = %Abc_TtPermGen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_GenChaseNext(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %.not77 = icmp eq i32 %i.d, 0
  br i1 %.not77, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = phi ptr [ %i.k, %bb.f ], [ %i.c, %bb.a ]
  %.05578 = phi i32 [ %.2, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29   ; 4 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.not61 = icmp eq i32 %i.l, 0
  %.neg = or i32 %i.j, -2
  %i.m = select i1 %.not61, i32 0, i32 %.neg
  %i.n = add i32 %i.m, %i.j
  %.not65 = icmp slt i32 %i.h, %i.n
  br i1 %.not65, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.p = and i32 %i.g, 1
  %.not63 = icmp eq i32 %i.p, 0
  %i.q = add nsw i32 %i.g, 2                      ; 2 uses
  %i.r = icmp sge i32 %i.q, %i.j
  %i.s = select i1 %.not63, i1 true, i1 %i.r
  %.053 = select i1 %i.s, i32 %i.h, i32 %i.q
  store i32 %.053, ptr %i.o, align 4, !tbaa !29
  %.not64 = icmp eq i32 %.05578, 0
  br i1 %.not64, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.t = trunc nsw i64 %indvars.iv to i32
  %i.u = tail call i32 @llvm.smax.i32(i32 %i.t, i32 1)
  %i.v = add nsw i32 %i.u, -1
  br label %.thread.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.w = sext i32 %i.g to i64
  %i.x = icmp slt i64 %indvars.iv, %i.w           ; 2 uses
  %i.y = zext i1 %i.x to i32
  store i32 %i.y, ptr %i.e, align 4, !tbaa !29
  %i.z = icmp eq i32 %.05578, 0
end_hunk_0
begin_hunk_1_@Abc_BSEvalOneTest:bb.a
  br i1 %.not29, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %1, ptr %i.a, align 8, !tbaa !65
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %2, ptr %i.e, align 4, !tbaa !66
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = sext i32 %1 to i64
  %i.h = getelementptr inbounds [192 x i8], ptr %i.f, i64 %i.g
  %i.i = sext i32 %2 to i64
  %i.j = getelementptr inbounds [8 x i8], ptr %i.h, i64 %i.i ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !57
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = tail call ptr @Abc_GenChasePairs(i32 noundef %1, i32 noundef %2)
  store ptr %i.m, ptr %i.j, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.n = sub nsw i32 %1, %2
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4624
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !53
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 4632
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !54
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 4648
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !56
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4640
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !55
  %i.w = tail call i32 @Abc_TtGetCMCount(ptr noundef readonly %0, i32 noundef %1, i32 noundef %i.n, ptr noundef readonly %i.p, ptr noundef readonly %i.r, ptr noundef %i.t, ptr noundef %i.v)
  %i.x = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10) ; 0 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !47
  tail call void @Extra_PrintHex(ptr noundef %i.y, ptr noundef %0, i32 noundef %1) #28
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, i32 noundef %1, i32 noundef %2, i32 noundef %i.w) ; 0 uses
  tail call void @Abc_BSEvalFree(ptr noundef nonnull %i.a)
  ret void
}

declare void @Extra_PrintHex(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define i32 @Abc_BSEvalBest(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(address) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef captures(address_is_null) %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr nofree noundef writeonly captures(address_is_null) %8, ptr nofree noundef captures(address_is_null) %9, i32 noundef %10, i32 noundef %11) local_unnamed_addr #5 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %i.b = ptrtoaddr ptr %1 to i64                  ; 2 uses
  %i.c = ptrtoaddr ptr %2 to i64                  ; 2 uses
  %i.d = alloca [32 x i32], align 16              ; 12 uses
  %i.e = alloca [32 x i32], align 16              ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #28
  %i.f = sub i32 %4, %5                           ; 5 uses
  %i.g = icmp sgt i32 %4, 0
  br i1 %i.g, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a
  %.not278 = icmp ne ptr %8, null
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %4 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %4, 8
  br i1 %min.iters.check, label %.lr.ph.preheader358, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483640   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> %vec.ind, ptr %i.h, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.i, align 16, !tbaa !29
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %vec.ind, ptr %i.j, align 16, !tbaa !29
  store <4 x i32> %step.add, ptr %i.k, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !101

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader358

.lr.ph.preheader358:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader358, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader358 ] ; 4 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.n = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  store i32 %i.n, ptr %i.m, align 4, !tbaa !29
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.n, ptr %i.o, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !102

._crit_edge:                                      ; preds = %.lr.ph, %middle.block
  %.not.not = icmp eq ptr %8, null
  br i1 %.not.not, label %.loopexit, label %.lr.ph209.preheader

.lr.ph209.preheader:                              ; preds = %._crit_edge
  %wide.trip.count241 = zext nneg i32 %4 to i64
  %min.iters.check282 = icmp ult i32 %4, 8
  br i1 %min.iters.check282, label %.lr.ph209.preheader357, label %vector.ph283

vector.ph283:                                     ; preds = %.lr.ph209.preheader
  %n.vec284 = and i64 %wide.trip.count, 2147483640 ; 3 uses
  br label %vector.body285

vector.body285:                                   ; preds = %vector.body285, %vector.ph283
  %index286 = phi i64 [ 0, %vector.ph283 ], [ %index.next289, %vector.body285 ] ; 2 uses
  %vec.ind287 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph283 ], [ %vec.ind.next290, %vector.body285 ] ; 3 uses
  %step.add288 = add <4 x i32> %vec.ind287, splat (i32 4)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %index286 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store <4 x i32> %vec.ind287, ptr %i.p, align 4, !tbaa !29
  store <4 x i32> %step.add288, ptr %i.q, align 4, !tbaa !29
  %index.next289 = add nuw i64 %index286, 8       ; 2 uses
  %vec.ind.next290 = add <4 x i32> %vec.ind287, splat (i32 8)
  %i.r = icmp eq i64 %index.next289, %n.vec284
  br i1 %i.r, label %middle.block291, label %vector.body285, !llvm.loop !103

middle.block291:                                  ; preds = %vector.body285
  %cmp.n292 = icmp eq i64 %n.vec284, %wide.trip.count
  br i1 %cmp.n292, label %.loopexit, label %.lr.ph209.preheader357

.lr.ph209.preheader357:                           ; preds = %.lr.ph209.preheader, %middle.block291
  %indvars.iv238.ph = phi i64 [ 0, %.lr.ph209.preheader ], [ %n.vec284, %middle.block291 ]
  br label %.lr.ph209

.lr.ph209:                                        ; preds = %.lr.ph209.preheader357, %.lr.ph209
  %indvars.iv238 = phi i64 [ %indvars.iv.next239, %.lr.ph209 ], [ %indvars.iv238.ph, %.lr.ph209.preheader357 ] ; 3 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %indvars.iv238
  %i.t = trunc nuw nsw i64 %indvars.iv238 to i32
  store i32 %i.t, ptr %i.s, align 4, !tbaa !29
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit, label %.lr.ph209, !llvm.loop !104

.loopexit:                                        ; preds = %.lr.ph209, %middle.block291, %._crit_edge.thread, %._crit_edge
  %.not280 = phi i1 [ %.not278, %._crit_edge.thread ], [ false, %._crit_edge ], [ true, %middle.block291 ], [ true, %.lr.ph209 ] ; 2 uses
  %i.u = shl nuw i32 1, %4                        ; 4 uses
  %.not169 = icmp eq i32 %11, 0                   ; 2 uses
  br i1 %.not169, label %.loopexit._crit_edge, label %bb.b

.loopexit._crit_edge:                             ; preds = %.loopexit
  %.pre = load i32, ptr %0, align 8, !tbaa !65
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre257 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !66
  %.pre258 = sext i32 %.pre257 to i64
  %.pre259 = sext i32 %.pre to i64
  br label %bb.c

bb.b:                                             ; preds = %.loopexit
  %i.v = tail call i32 @Abc_Random(i32 noundef 0) #28
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i32, ptr %0, align 8, !tbaa !65
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = getelementptr inbounds [192 x i8], ptr %i.w, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !66
  %i.ac = sext i32 %i.ab to i64                   ; 2 uses
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.ac
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !57
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %.val182 = load i32, ptr %i.af, align 4, !tbaa !34
  %i.ag = urem i32 %i.v, %.val182
  %i.ah = lshr i32 %i.ag, 1
  %i.ai = zext nneg i32 %i.ah to i64
  br label %bb.c

bb.c:                                             ; preds = %.loopexit._crit_edge, %bb.b
  %.pre-phi260 = phi i64 [ %.pre259, %.loopexit._crit_edge ], [ %i.y, %bb.b ]
  %.pre-phi = phi i64 [ %.pre258, %.loopexit._crit_edge ], [ %i.ac, %bb.b ]
  %i.aj = phi i64 [ 4294967295, %.loopexit._crit_edge ], [ %i.ai, %bb.b ]
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.am = getelementptr inbounds [192 x i8], ptr %i.ak, i64 %.pre-phi260
  %i.an = getelementptr inbounds [8 x i8], ptr %i.am, i64 %.pre-phi
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !57 ; 2 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 4
  %.val223 = load i32, ptr %i.ap, align 4, !tbaa !34
  %i.aq = icmp sgt i32 %.val223, 1
  br i1 %i.aq, label %.critedge.lr.ph, label %.preheader

.critedge.lr.ph:                                  ; preds = %bb.c
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 4624
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 4632
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4648
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4640
  %.not.i = icmp eq i32 %10, 0
  %.not3950.i.i.i = icmp sle i32 %4, %6
  %.not172 = icmp eq ptr %3, null
  %i.av = icmp slt i32 %4, 7
  %i.aw = add nsw i32 %4, -6
  %i.ax = shl nuw i32 1, %i.aw
  %i.ay = select i1 %i.av, i32 1, i32 %i.ax       ; 8 uses
  %i.az = icmp slt i32 %i.ay, 1                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.ay to i64      ; 9 uses
  %.not173 = icmp eq ptr %9, null
  %i.ba = sext i32 %4 to i64
  %i.bb = shl nsw i64 %i.ba, 2                    ; 2 uses
  %.not174 = icmp eq ptr %2, null                 ; 2 uses
  %.not176 = icmp eq i32 %7, 0
  %i.bc = icmp sgt i32 %5, 0
  %.not177.not214 = icmp sgt i32 %i.f, %6
  %i.bd = icmp sgt i32 %6, 0
  %i.be = sext i32 %i.f to i64
  %i.bf = sext i32 %6 to i64
  %i.bg = zext i32 %6 to i64
  %brmerge = select i1 %.not172, i1 true, i1 %i.az
  %brmerge236 = select i1 %.not174, i1 true, i1 %i.az
  %brmerge234 = select i1 %.not174, i1 true, i1 %i.az
  %i.bh = sub i64 %i.c, %i.b                      ; 2 uses
  %min.iters.check322 = icmp ult i32 %i.ay, 4
  %i.bi = sub i64 %i.b, %i.a
  %diff.check320 = icmp ugt i64 %i.bi, -32
  %or.cond = or i1 %min.iters.check322, %diff.check320
  %n.vec324 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.bj = icmp ult i32 %i.ay, 4
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod359 = icmp ne i64 %xtraiter, 0
  %min.iters.check308 = icmp ult i32 %i.ay, 4
  %i.bk = add i64 %i.bh, -1
  %diff.check306 = icmp ult i64 %i.bk, 31
  %or.cond348.a = or i1 %min.iters.check308, %diff.check306
  %n.vec310 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter360 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.bl = icmp ult i32 %i.ay, 4
  %unroll_iter364 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod362.not = icmp eq i64 %xtraiter360, 0
  %lcmp.mod363 = icmp ne i64 %xtraiter360, 0
  %min.iters.check295 = icmp ult i32 %i.ay, 4
  %i.bm = add i64 %i.bh, -1
  %diff.check = icmp ult i64 %i.bm, 31
  %or.cond347 = or i1 %min.iters.check295, %diff.check
  %n.vec297 = and i64 %wide.trip.count.i, 2147483644
  %xtraiter366 = and i64 %wide.trip.count.i, 3    ; 3 uses
  %i.bn = icmp ult i32 %i.ay, 4
  %unroll_iter370 = and i64 %wide.trip.count.i, 2147483644
  %lcmp.mod368.not = icmp eq i64 %xtraiter366, 0
  %lcmp.mod369 = icmp ne i64 %xtraiter366, 0
  br label %.critedge

.preheader:                                       ; preds = %bb.p, %bb.c
  %.0141.lcssa = phi i32 [ %i.u, %bb.c ], [ %.1142, %bb.p ] ; 2 uses
  %.0.lcssa = phi i32 [ %i.u, %bb.c ], [ %.1, %bb.p ] ; 2 uses
  %i.bo = icmp sgt i32 %i.f, 0
  br i1 %i.bo, label %.lr.ph230.preheader, label %._crit_edge231

.lr.ph230.preheader:                              ; preds = %.preheader
  %wide.trip.count255 = zext nneg i32 %i.f to i64
  br label %.lr.ph230

.critedge:                                        ; preds = %.critedge.lr.ph, %bb.p
  %indvars.iv249 = phi i64 [ 0, %.critedge.lr.ph ], [ %indvars.iv.next250, %bb.p ] ; 3 uses
  %i.bp = phi ptr [ %i.ao, %.critedge.lr.ph ], [ %i.gi, %bb.p ]
  %.0227 = phi i32 [ %i.u, %.critedge.lr.ph ], [ %.1, %bb.p ]
  %.0141226 = phi i32 [ %i.u, %.critedge.lr.ph ], [ %.1142, %bb.p ] ; 6 uses
  %.0143225 = phi i32 [ 0, %.critedge.lr.ph ], [ %.1144, %bb.p ] ; 2 uses
  %i.bq = getelementptr i8, ptr %i.bp, i64 8
  %.val184 = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %.val184, i64 %indvars.iv249 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !29
  %i.bv = load ptr, ptr %i.ar, align 8, !tbaa !53 ; 2 uses
  %i.bw = load ptr, ptr %i.as, align 8, !tbaa !54 ; 2 uses
  %i.bx = load ptr, ptr %i.at, align 8, !tbaa !56 ; 2 uses
  %i.by = load ptr, ptr %i.au, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i, label %bb.e, label %12

12:                                               ; preds = %.critedge
  %13 = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %1, i32 noundef %4, i32 noundef %6, ptr noundef readonly %i.bv, ptr noundef readonly %i.bw, ptr noundef %i.bx, ptr noundef %i.by, ptr noundef null) ; 2 uses
  %14 = icmp slt i32 %13, 3
  br i1 %14, label %Abc_TtGetCM.exit, label %bb.d

bb.d:                                             ; preds = %12
  %i.bz = add nsw i32 %13, -1
  %i.ca = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bz, i1 true)
  %i.cb = sub nuw nsw i32 32, %i.ca
  tail call void @llvm.assume(i1 %.not3950.i.i.i)
  br label %Abc_TtGetCM.exit

bb.e:                                             ; preds = %.critedge
  %i.cc = tail call i32 @Abc_TtGetCMCount(ptr noundef readonly %1, i32 noundef %4, i32 noundef %6, ptr noundef readonly %i.bv, ptr noundef readonly %i.bw, ptr noundef %i.bx, ptr noundef %i.by)
  br label %Abc_TtGetCM.exit

Abc_TtGetCM.exit:                                 ; preds = %12, %bb.d, %bb.e
  %.0.i = phi i32 [ %i.cc, %bb.e ], [ 1, %12 ], [ %i.cb, %bb.d ] ; 7 uses
  %i.cd = lshr exact i64 %indvars.iv249, 1        ; 2 uses
  %i.ce = icmp eq i64 %i.aj, %i.cd
  br i1 %i.ce, label %bb.f, label %bb.h

bb.f:                                             ; preds = %Abc_TtGetCM.exit
  br i1 %brmerge, label %Abc_TtCopy.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f
  br i1 %or.cond, label %.lr.ph.i.preheader355, label %vector.body325

.lr.ph.i.preheader355:                            ; preds = %.lr.ph.i.preheader
  br i1 %i.bj, label %.lr.ph.i.epil.preheader, label %.lr.ph.i

vector.body325:                                   ; preds = %.lr.ph.i.preheader, %vector.body325
  %index326 = phi i64 [ %index.next329, %vector.body325 ], [ 0, %.lr.ph.i.preheader ] ; 3 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index326 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load327.a = load <2 x i64>, ptr %i.cf, align 8, !tbaa !28
  %wide.load328 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !28
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index326 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store <2 x i64> %wide.load327.a, ptr %i.ch, align 8, !tbaa !28
  store <2 x i64> %wide.load328, ptr %i.ci, align 8, !tbaa !28
  %index.next329 = add nuw i64 %index326, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next329, %n.vec324
  br i1 %i.cj, label %Abc_TtCopy.exit, label %vector.body325, !llvm.loop !105

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader355, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader355 ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i ], [ 0, %.lr.ph.i.preheader355 ]
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i
  store i64 %i.cl, ptr %i.cm, align 8, !tbaa !28
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !28
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i
  store i64 %i.co, ptr %i.cp, align 8, !tbaa !28
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.1
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !28
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.1
  store i64 %i.cr, ptr %i.cs, align 8, !tbaa !28
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i.2
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !28
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i.2
  store i64 %i.cu, ptr %i.cv, align 8, !tbaa !28
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %Abc_TtCopy.exit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !106

Abc_TtCopy.exit.loopexit.unr-lcssa:               ; preds = %.lr.ph.i
  br i1 %lcmp.mod.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader355
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader355 ], [ %indvars.iv.next.i.3, %Abc_TtCopy.exit.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod359)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %.lr.ph.i.epil ], [ %indvars.iv.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.epil
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !28
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i.epil
  store i64 %i.cx, ptr %i.cy, align 8, !tbaa !28
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %Abc_TtCopy.exit, label %.lr.ph.i.epil, !llvm.loop !107

Abc_TtCopy.exit:                                  ; preds = %vector.body325, %Abc_TtCopy.exit.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.f
  br i1 %.not173, label %bb.h, label %bb.g

bb.g:                                             ; preds = %Abc_TtCopy.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %9, ptr nonnull align 16 %i.d, i64 %i.bb, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %Abc_TtCopy.exit, %bb.g, %Abc_TtGetCM.exit
  %.1 = phi i32 [ %.0.i, %bb.g ], [ %.0.i, %Abc_TtCopy.exit ], [ %.0227, %Abc_TtGetCM.exit ] ; 2 uses
  %i.cz = icmp sgt i32 %.0141226, %.0.i
  br i1 %i.cz, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %brmerge234, label %Abc_TtCopy.exit191, label %.lr.ph.i187.preheader

.lr.ph.i187.preheader:                            ; preds = %bb.i
  br i1 %or.cond347, label %.lr.ph.i187.preheader351, label %vector.body298

.lr.ph.i187.preheader351:                         ; preds = %.lr.ph.i187.preheader
  br i1 %i.bn, label %.lr.ph.i187.epil.preheader, label %.lr.ph.i187

vector.body298:                                   ; preds = %.lr.ph.i187.preheader, %vector.body298
  %index299 = phi i64 [ %index.next301, %vector.body298 ], [ 0, %.lr.ph.i187.preheader ] ; 3 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index299 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %wide.load = load <2 x i64>, ptr %i.da, align 8, !tbaa !28
  %wide.load300 = load <2 x i64>, ptr %i.db, align 8, !tbaa !28
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index299 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store <2 x i64> %wide.load, ptr %i.dc, align 8, !tbaa !28
  store <2 x i64> %wide.load300, ptr %i.dd, align 8, !tbaa !28
  %index.next301 = add nuw i64 %index299, 4       ; 2 uses
  %i.de = icmp eq i64 %index.next301, %n.vec297
  br i1 %i.de, label %Abc_TtCopy.exit191, label %vector.body298, !llvm.loop !108

.lr.ph.i187:                                      ; preds = %.lr.ph.i187.preheader351, %.lr.ph.i187
  %indvars.iv.i188 = phi i64 [ %indvars.iv.next.i189.3, %.lr.ph.i187 ], [ 0, %.lr.ph.i187.preheader351 ] ; 6 uses
  %niter371 = phi i64 [ %niter371.next.3, %.lr.ph.i187 ], [ 0, %.lr.ph.i187.preheader351 ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i188
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !28
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i188
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !28
  %indvars.iv.next.i189 = or disjoint i64 %indvars.iv.i188, 1 ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i189
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !28
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i189
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !28
  %indvars.iv.next.i189.1 = or disjoint i64 %indvars.iv.i188, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i189.1
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i189.1
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !28
  %indvars.iv.next.i189.2 = or disjoint i64 %indvars.iv.i188, 3 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next.i189.2
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !28
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.next.i189.2
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !28
  %indvars.iv.next.i189.3 = add nuw nsw i64 %indvars.iv.i188, 4 ; 2 uses
  %niter371.next.3 = add i64 %niter371, 4         ; 2 uses
  %niter371.ncmp.3 = icmp eq i64 %niter371.next.3, %unroll_iter370
  br i1 %niter371.ncmp.3, label %Abc_TtCopy.exit191.loopexit.unr-lcssa, label %.lr.ph.i187, !llvm.loop !109

Abc_TtCopy.exit191.loopexit.unr-lcssa:            ; preds = %.lr.ph.i187
  br i1 %lcmp.mod368.not, label %Abc_TtCopy.exit191, label %.lr.ph.i187.epil.preheader

.lr.ph.i187.epil.preheader:                       ; preds = %Abc_TtCopy.exit191.loopexit.unr-lcssa, %.lr.ph.i187.preheader351
  %indvars.iv.i188.epil.init = phi i64 [ 0, %.lr.ph.i187.preheader351 ], [ %indvars.iv.next.i189.3, %Abc_TtCopy.exit191.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod369)
  br label %.lr.ph.i187.epil

.lr.ph.i187.epil:                                 ; preds = %.lr.ph.i187.epil, %.lr.ph.i187.epil.preheader
  %indvars.iv.i188.epil = phi i64 [ %indvars.iv.next.i189.epil, %.lr.ph.i187.epil ], [ %indvars.iv.i188.epil.init, %.lr.ph.i187.epil.preheader ] ; 3 uses
  %epil.iter367 = phi i64 [ %epil.iter367.next, %.lr.ph.i187.epil ], [ 0, %.lr.ph.i187.epil.preheader ]
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i188.epil
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !28
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i188.epil
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !28
  %indvars.iv.next.i189.epil = add nuw nsw i64 %indvars.iv.i188.epil, 1
  %epil.iter367.next = add i64 %epil.iter367, 1   ; 2 uses
  %epil.iter367.cmp.not = icmp eq i64 %epil.iter367.next, %xtraiter366
  br i1 %epil.iter367.cmp.not, label %Abc_TtCopy.exit191, label %.lr.ph.i187.epil, !llvm.loop !110

Abc_TtCopy.exit191:                               ; preds = %vector.body298, %Abc_TtCopy.exit191.loopexit.unr-lcssa, %.lr.ph.i187.epil, %bb.i
  br i1 %.not280, label %.sink.split, label %bb.m

bb.j:                                             ; preds = %bb.h
  %i.du = icmp eq i32 %.0141226, %.0.i
  br i1 %i.du, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.dv = tail call i32 @Abc_Random(i32 noundef 0) #28
  %i.dw = add nsw i32 %.0143225, 1                ; 4 uses
  %i.dx = urem i32 %i.dv, %i.dw
  %i.dy = icmp eq i32 %i.dx, 0
  br i1 %i.dy, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %brmerge236, label %Abc_TtCopy.exit198, label %.lr.ph.i194.preheader

.lr.ph.i194.preheader:                            ; preds = %bb.l
  br i1 %or.cond348.a, label %.lr.ph.i194.preheader353, label %vector.body311

.lr.ph.i194.preheader353:                         ; preds = %.lr.ph.i194.preheader
  br i1 %i.bl, label %.lr.ph.i194.epil.preheader, label %.lr.ph.i194

vector.body311:                                   ; preds = %.lr.ph.i194.preheader, %vector.body311
  %index312 = phi i64 [ %index.next315, %vector.body311 ], [ 0, %.lr.ph.i194.preheader ] ; 3 uses
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %index312 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load313.a = load <2 x i64>, ptr %i.dz, align 8, !tbaa !28
  %wide.load314 = load <2 x i64>, ptr %i.ea, align 8, !tbaa !28
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index312 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  store <2 x i64> %wide.load313.a, ptr %i.eb, align 8, !tbaa !28
  store <2 x i64> %wide.load314, ptr %i.ec, align 8, !tbaa !28
  %index.next315 = add nuw i64 %index312, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next315, %n.vec310
  br i1 %i.ed, label %Abc_TtCopy.exit198, label %vector.body311, !llvm.loop !111

.lr.ph.i194:                                      ; preds = %.lr.ph.i194.preheader353, %.lr.ph.i194
  %indvars.iv.i195 = phi i64 [ %indvars.iv.next.i196.3, %.lr.ph.i194 ], [ 0, %.lr.ph.i194.preheader353 ] ; 6 uses
  %niter365 = phi i64 [ %niter365.next.3, %.lr.ph.i194 ], [ 0, %.lr.ph.i194.preheader353 ]
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i195
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !28
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i195
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !28
end_hunk_1
begin_hunk_2_@Abc_BSEvalBestTest:bb.a
  %i.d = load i32, ptr %i.c, align 8, !tbaa !65
  %.not = icmp eq i32 %i.d, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !66
  %.not45 = icmp eq i32 %i.f, %2
  br i1 %.not45, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 %1, ptr %i.c, align 8, !tbaa !65
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %2, ptr %i.g, align 4, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds [192 x i8], ptr %i.h, i64 %i.i
  %i.k = sext i32 %2 to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.k ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !57
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @Abc_GenChasePairs(i32 noundef %1, i32 noundef %2)
  store ptr %i.o, ptr %i.l, align 8, !tbaa !57
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.p = icmp slt i32 %1, 7
  %i.q = add nsw i32 %1, -6
  %i.r = shl nuw i32 1, %i.q
  %i.s = select i1 %i.p, i32 1, i32 %i.r
  %i.t = sext i32 %i.s to i64
  %i.u = shl nsw i64 %i.t, 3                      ; 2 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.u) #30 ; 4 uses
  %i.w = tail call noalias ptr @malloc(i64 noundef %i.u) #30 ; 3 uses
  %i.x = sub nsw i32 %1, %2
  %i.y = call i32 @Abc_BSEvalBest(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef %i.v, ptr noundef %i.w, i32 noundef %1, i32 noundef 0, i32 noundef %i.x, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef %3, i32 noundef 0)
  %.not46 = icmp eq i32 %3, 0
  %i.z = select i1 %.not46, ptr @.str.16, ptr @.str.15
  %i.aa = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef nonnull %i.z, i32 noundef %1, i32 noundef %2, i32 noundef %i.y) ; 0 uses
  %i.ab = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  %i.ac = load ptr, ptr @stdout, align 8, !tbaa !47
  call void @Extra_PrintHex(ptr noundef %i.ac, ptr noundef %0, i32 noundef %1) #28
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) ; 0 uses
  %i.ae = load ptr, ptr @stdout, align 8, !tbaa !47
  call void @Extra_PrintHex(ptr noundef %i.ae, ptr noundef %i.v, i32 noundef %1) #28
  %putchar47 = call i32 @putchar(i32 10)          ; 0 uses
  %i.af = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.ag = icmp sgt i32 %1, 0
  br i1 %i.ag, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !29
  %i.aj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.ai) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !140

._crit_edge:                                      ; preds = %.lr.ph, %bb.e
  %putchar48 = call i32 @putchar(i32 10)          ; 0 uses
  %.not49 = icmp eq ptr %i.v, null
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.v) #28
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  %.not50 = icmp eq ptr %i.w, null
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @free(ptr noundef nonnull %i.w) #28
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  call void @Abc_BSEvalFree(ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define void @Abc_BSEvalBestGen(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) local_unnamed_addr #5 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #28
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %8, align 8, !tbaa !149
  %.neg176 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !150
  %.neg = sdiv i64 %i.e, -1000
  %.neg177 = add i64 %.neg, %.neg176
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg177, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.f = call ptr @Abc_BSEvalAlloc()              ; 11 uses
  %i.g = shl nuw i32 1, %0                        ; 7 uses
  %i.h = add i32 %i.g, -1
  %spec.store.select.i.i = call i32 @llvm.umax.i32(i32 %i.g, i32 16)
  %i.i = sext i32 %spec.store.select.i.i to i64
  %i.j = shl nsw i64 %i.i, 2                      ; 2 uses
  %i.k = call noalias ptr @malloc(i64 noundef %i.j) #30 ; 6 uses
  %.not.i = icmp eq ptr %i.k, null                ; 2 uses
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.l = sext i32 %i.g to i64
  %i.m = shl nsw i64 %i.l, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.k, i8 0, i64 %i.m, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Abc_Clock.exit, %bb.c
  %i.n = call noalias ptr @malloc(i64 noundef %i.j) #30 ; 5 uses
  %.not.i164 = icmp eq ptr %i.n, null             ; 2 uses
  br i1 %.not.i164, label %Vec_IntStart.exit165, label %bb.d

bb.d:                                             ; preds = %Vec_IntStart.exit
  %i.o = sext i32 %i.g to i64
  %i.p = shl nsw i64 %i.o, 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.n, i8 0, i64 %i.p, i1 false)
  br label %Vec_IntStart.exit165

Vec_IntStart.exit165:                             ; preds = %Vec_IntStart.exit, %bb.d
  %i.q = icmp slt i32 %0, 7
  %i.r = add nsw i32 %0, -6
  %i.s = shl nuw i32 1, %i.r
  %i.t = select i1 %i.q, i32 1, i32 %i.s          ; 3 uses
  %i.u = sext i32 %i.t to i64
  %i.v = shl nsw i64 %i.u, 3                      ; 2 uses
  %i.w = call noalias ptr @malloc(i64 noundef %i.v) #30 ; 10 uses
  %i.x = call noalias ptr @malloc(i64 noundef %i.v) #30 ; 3 uses
  %i.y = load i32, ptr %i.f, align 8, !tbaa !65
  %.not = icmp eq i32 %i.y, %0
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %Vec_IntStart.exit165
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %.not137 = icmp eq i32 %i.aa, %1
  br i1 %.not137, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e, %Vec_IntStart.exit165
  store i32 %0, ptr %i.f, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %1, ptr %i.ab, align 4, !tbaa !66
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ad = sext i32 %0 to i64
  %i.ae = getelementptr inbounds [192 x i8], ptr %i.ac, i64 %i.ad
  %i.af = sext i32 %1 to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.ae, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aj = call ptr @Abc_GenChasePairs(i32 noundef %0, i32 noundef %1)
  store ptr %i.aj, ptr %i.ag, align 8, !tbaa !57
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.e
  %i.ak = call i32 @Abc_Random(i32 noundef 1) #28 ; 0 uses
  %i.al = icmp sgt i32 %2, 0
  br i1 %i.al, label %.lr.ph187, label %._crit_edge

.lr.ph187:                                        ; preds = %bb.h
  %i.am = icmp eq i32 %3, 0                       ; 2 uses
  %i.an = icmp sgt i32 %i.t, 0                    ; 2 uses
  %i.ao = zext i32 %i.t to i64                    ; 2 uses
  %i.ap = shl nuw nsw i64 %i.ao, 3
  %i.aq = icmp sgt i32 %3, 0
  %.not150 = icmp eq i32 %6, 0                    ; 3 uses
  %i.ar = icmp slt i32 %0, 9
  %.not152 = icmp eq i32 %4, 0                    ; 2 uses
  %i.as = sub nsw i32 %0, %1                      ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 4624
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 4632
  %i.av = getelementptr inbounds nuw i8, ptr %i.f, i64 4648
  %i.aw = getelementptr inbounds nuw i8, ptr %i.f, i64 4640
  %.not.i166 = icmp eq i32 %5, 0
  %.not3950.i.i.i = icmp slt i32 %1, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph187, %bb.x
  %.0125185 = phi i32 [ 0, %.lr.ph187 ], [ %i.co, %bb.x ] ; 3 uses
  br i1 %i.am, label %.preheader178, label %bb.j

.preheader178:                                    ; preds = %bb.i
  br i1 %i.an, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader178, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader178 ] ; 2 uses
  %i.ax = call i64 @Abc_RandomW(i32 noundef 0) #28
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %indvars.iv
  store i64 %i.ax, ptr %i.ay, align 8, !tbaa !28
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond203.not = icmp eq i64 %indvars.iv.next, %i.ao
  br i1 %exitcond203.not, label %.loopexit, label %.lr.ph, !llvm.loop !141

bb.j:                                             ; preds = %bb.i
  br i1 %i.an, label %.lr.ph.preheader.i, label %Abc_TtClear.exit

.lr.ph.preheader.i:                               ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.w, i8 0, i64 %i.ap, i1 false), !tbaa !28
  br label %Abc_TtClear.exit

Abc_TtClear.exit:                                 ; preds = %bb.j, %.lr.ph.preheader.i
  br i1 %i.aq, label %.preheader, label %.loopexit.thread

.preheader:                                       ; preds = %Abc_TtClear.exit, %bb.l
  %.1183 = phi i32 [ %i.bl, %bb.l ], [ 0, %Abc_TtClear.exit ]
  br label %bb.k

bb.k:                                             ; preds = %.preheader, %bb.k
  %i.az = call i32 @Abc_Random(i32 noundef 0) #28
  %i.ba = and i32 %i.az, %i.h                     ; 2 uses
  %i.bb = lshr i32 %i.ba, 6
  %i.bc = zext nneg i32 %i.bb to i64              ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !28 ; 2 uses
  %i.bf = and i32 %i.ba, 63
  %i.bg = zext nneg i32 %i.bf to i64
  %i.bh = shl nuw i64 1, %i.bg                    ; 2 uses
  %i.bi = and i64 %i.bh, %i.be
  %.not149 = icmp eq i64 %i.bi, 0
  br i1 %.not149, label %bb.l, label %bb.k, !llvm.loop !142

bb.l:                                             ; preds = %bb.k
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.bc
  %i.bk = or i64 %i.bh, %i.be
  store i64 %i.bk, ptr %i.bj, align 8, !tbaa !28
  %i.bl = add nuw nsw i32 %.1183, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bl, %3
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !143

.loopexit:                                        ; preds = %bb.l, %.lr.ph, %.preheader178
  br i1 %.not150, label %bb.r, label %bb.m

.loopexit.thread:                                 ; preds = %Abc_TtClear.exit
  br i1 %.not150, label %bb.r, label %.thread237

.thread237:                                       ; preds = %.loopexit.thread
  %i.bm = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.0125185) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %.loopexit
  %i.bn = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.0125185) ; 0 uses
  br i1 %i.am, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.thread237, %bb.m
  %i.bo = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %3) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  br i1 %i.ar, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) ; 0 uses
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !47
  call void @Extra_PrintHex(ptr noundef %i.bq, ptr noundef %i.w, i32 noundef %0) #28
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not152, label %.thread, label %.thread174

.thread174:                                       ; preds = %bb.q
  %putchar153 = call i32 @putchar(i32 10)         ; 0 uses
  br label %bb.s

.thread:                                          ; preds = %bb.q
  %i.br = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) ; 0 uses
  br label %bb.t

bb.r:                                             ; preds = %.loopexit.thread, %.loopexit
  br i1 %.not152, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.thread174, %bb.r
  %i.bs = call i32 @Abc_BSEvalBest(ptr noundef nonnull %i.f, ptr noundef %i.w, ptr noundef %i.x, ptr noundef null, i32 noundef %0, i32 noundef 0, i32 noundef %i.as, i32 noundef %6, ptr noundef null, ptr noundef null, i32 noundef %5, i32 noundef 0)
  br label %Abc_TtGetCM.exit

bb.t:                                             ; preds = %.thread, %bb.r
  %i.bt = load ptr, ptr %i.at, align 8, !tbaa !53 ; 2 uses
  %i.bu = load ptr, ptr %i.au, align 8, !tbaa !54 ; 2 uses
  %i.bv = load ptr, ptr %i.av, align 8, !tbaa !56 ; 2 uses
  %i.bw = load ptr, ptr %i.aw, align 8, !tbaa !55 ; 2 uses
  br i1 %.not.i166, label %bb.v, label %9

9:                                                ; preds = %bb.t
  %10 = call i32 @Abc_TtGetCMInt(ptr noundef readonly %i.w, i32 noundef %0, i32 noundef %i.as, ptr noundef readonly %i.bt, ptr noundef readonly %i.bu, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef null) ; 2 uses
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %Abc_TtGetCM.exit, label %bb.u

bb.u:                                             ; preds = %9
  %i.bx = add nsw i32 %10, -1
  %i.by = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.bx, i1 true)
  %i.bz = sub nuw nsw i32 32, %i.by
  call void @llvm.assume(i1 %.not3950.i.i.i)
  br label %Abc_TtGetCM.exit

bb.v:                                             ; preds = %bb.t
  %i.ca = call i32 @Abc_TtGetCMCount(ptr noundef readonly %i.w, i32 noundef %0, i32 noundef %i.as, ptr noundef readonly %i.bt, ptr noundef readonly %i.bu, ptr noundef %i.bv, ptr noundef %i.bw)
  br label %Abc_TtGetCM.exit

Abc_TtGetCM.exit:                                 ; preds = %bb.v, %bb.u, %9, %bb.s
  %.0 = phi i32 [ %i.bs, %bb.s ], [ %i.ca, %bb.v ], [ 1, %9 ], [ %i.bz, %bb.u ] ; 5 uses
  br i1 %.not150, label %bb.x, label %bb.w

bb.w:                                             ; preds = %Abc_TtGetCM.exit
  %i.cb = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i32 noundef %.0) ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %Abc_TtGetCM.exit
  %i.cc = sext i32 %.0 to i64
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.cc ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !29
  %i.cf = add nsw i32 %i.ce, 1
  store i32 %i.cf, ptr %i.cd, align 4, !tbaa !29
  %i.cg = icmp ult i32 %.0, 2
  %i.ch = add i32 %.0, -1
  %i.ci = call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.ch, i1 true)
  %i.cj = sub nuw nsw i32 32, %i.ci
  %.09.i = select i1 %i.cg, i32 %.0, i32 %i.cj
  %i.ck = sext i32 %.09.i to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !29
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !29
  %i.co = add nuw nsw i32 %.0125185, 1            ; 2 uses
  %exitcond204.not = icmp eq i32 %i.co, %2
  br i1 %exitcond204.not, label %._crit_edge, label %bb.i, !llvm.loop !144

._crit_edge:                                      ; preds = %bb.x, %bb.h
  %.not138 = icmp eq ptr %i.w, null
  br i1 %.not138, label %bb.z, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  call void @free(ptr noundef nonnull %i.w) #28
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge, %bb.y
  %.not139 = icmp eq ptr %i.x, null
  br i1 %.not139, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @free(ptr noundef nonnull %i.x) #28
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @Abc_BSEvalFree(ptr noundef nonnull %i.f)
  %.not140 = icmp eq i32 %3, 0
  br i1 %.not140, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26, i32 noundef %2, i32 noundef %0, i32 noundef %3) ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cq = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %2, i32 noundef %0) ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.not141 = icmp eq i32 %5, 0
  %.not142 = icmp eq i32 %4, 0
  %i.cr = select i1 %.not142, ptr @.str.30, ptr @.str.29 ; 4 uses
  %.not197 = icmp eq i32 %0, 31                   ; 2 uses
  br i1 %.not141, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cs = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, ptr noundef nonnull %i.cr, i32 noundef %1) ; 0 uses
  br i1 %.not197, label %.critedge, label %.lr.ph190

.lr.ph190:                                        ; preds = %bb.af
  %i.ct = sitofp i32 %2 to double
  %smax = call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count208 = zext nneg i32 %smax to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph190, %bb.ai
  %indvars.iv205 = phi i64 [ 0, %.lr.ph190 ], [ %indvars.iv.next206, %bb.ai ] ; 3 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv205
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !29 ; 3 uses
  %.not148 = icmp eq i32 %i.cv, 0
  br i1 %.not148, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cw = sitofp i32 %i.cv to double
  %i.cx = fmul nnan double %i.cw, 1.000000e+02
  %i.cy = fdiv double %i.cx, %i.ct
  %i.cz = trunc nuw nsw i64 %indvars.iv205 to i32
  %i.da = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.cz, i32 noundef %i.cv, double noundef %i.cy) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ag, %bb.ah
  %indvars.iv.next206 = add nuw nsw i64 %indvars.iv205, 1 ; 2 uses
  %exitcond209.not = icmp eq i64 %indvars.iv.next206, %wide.trip.count208
  br i1 %exitcond209.not, label %.critedge, label %bb.ag, !llvm.loop !145

bb.aj:                                            ; preds = %bb.ae
  %i.db = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef nonnull %i.cr, i32 noundef %1) ; 0 uses
  br i1 %.not197, label %.critedge4.critedge, label %.lr.ph193

.lr.ph193:                                        ; preds = %bb.aj
  %i.dc = sitofp i32 %2 to double
  %smax213 = call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count214 = zext nneg i32 %smax213 to i64
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph193, %bb.am
  %indvars.iv210 = phi i64 [ 0, %.lr.ph193 ], [ %indvars.iv.next211, %bb.am ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %indvars.iv210
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !29 ; 3 uses
  %.not145 = icmp eq i32 %i.de, 0
  br i1 %.not145, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.df = sitofp i32 %i.de to double
  %i.dg = fmul nnan double %i.df, 1.000000e+02
  %i.dh = fdiv double %i.dg, %i.dc
  %i.di = trunc nuw nsw i64 %indvars.iv210 to i32
  %i.dj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.di, i32 noundef %i.de, double noundef %i.dh) ; 0 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.ak, %bb.al
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next211, %wide.trip.count214
  br i1 %exitcond215.not, label %.critedge2, label %bb.ak, !llvm.loop !146

.critedge2:                                       ; preds = %bb.am
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %i.dk = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %i.cr, i32 noundef %1) ; 0 uses
  %i.dl = sitofp i32 %2 to double
  %smax219 = call i32 @llvm.smax.i32(i32 %i.g, i32 1)
  %wide.trip.count220 = zext nneg i32 %smax219 to i64
  br label %bb.an

bb.an:                                            ; preds = %.critedge2, %bb.ap
  %indvars.iv216 = phi i64 [ 0, %.critedge2 ], [ %indvars.iv.next217, %bb.ap ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv216
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !29 ; 3 uses
  %.not144 = icmp eq i32 %i.dn, 0
  br i1 %.not144, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.do = sitofp i32 %i.dn to double
  %i.dp = fmul nnan double %i.do, 1.000000e+02
  %i.dq = fdiv double %i.dp, %i.dl
  %i.dr = trunc nuw nsw i64 %indvars.iv216 to i32
  %i.ds = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %i.dr, i32 noundef %i.dn, double noundef %i.dq) ; 0 uses
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %indvars.iv.next217 = add nuw nsw i64 %indvars.iv216, 1 ; 2 uses
  %exitcond221.not = icmp eq i64 %indvars.iv.next217, %wide.trip.count220
  br i1 %exitcond221.not, label %.critedge, label %bb.an, !llvm.loop !147

.critedge4.critedge:                              ; preds = %bb.aj
  %putchar.c = call i32 @putchar(i32 10)          ; 0 uses
  %i.dt = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.33, ptr noundef nonnull %i.cr, i32 noundef %1) ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.ai, %bb.ap, %.critedge4.critedge, %bb.af
  %putchar143 = call i32 @putchar(i32 10)         ; 0 uses
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.aq

bb.aq:                                            ; preds = %.critedge
  call void @free(ptr noundef nonnull %i.k) #28
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge, %bb.aq
  br i1 %.not.i164, label %Vec_IntFree.exit170, label %bb.ar

bb.ar:                                            ; preds = %Vec_IntFree.exit
  call void @free(ptr noundef nonnull %i.n) #28
  br label %Vec_IntFree.exit170

Vec_IntFree.exit170:                              ; preds = %Vec_IntFree.exit, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  %i.du = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #28
  %i.dv = icmp slt i32 %i.du, 0
  br i1 %i.dv, label %Abc_Clock.exit172, label %bb.as

bb.as:                                            ; preds = %Vec_IntFree.exit170
  %i.dw = load i64, ptr %7, align 8, !tbaa !149
  %i.dx = mul nsw i64 %i.dw, 1000000
  %i.dy = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !150
  %i.ea = sdiv i64 %i.dz, 1000
  %i.eb = add nsw i64 %i.ea, %i.dx
  br label %Abc_Clock.exit172

Abc_Clock.exit172:                                ; preds = %Vec_IntFree.exit170, %bb.as
  %.0.i171 = phi i64 [ %i.eb, %bb.as ], [ -1, %Vec_IntFree.exit170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %i.ec = add i64 %.0.i171, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.34)
  %i.ed = sitofp i64 %i.ec to double
  %i.ee = fdiv double %i.ed, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.43, double noundef %i.ee)
  ret void
}

declare i64 @Abc_RandomW(i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Abc_BSEvalCreateCofs(i32 noundef %0, i32 noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
end_hunk_2
begin_hunk_3_@Abc_TtFindBVarsSVars2:bb.a
  tail call fastcc void @Abc_TtSwapVars(ptr noundef %i.ax, i32 noundef %2, i32 noundef %i.wo, i32 noundef %i.wr)
  %i.ws = sext i32 %i.wo to i64
  %i.wt = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ws ; 4 uses
  %i.wu = load i32, ptr %i.wt, align 4, !tbaa !29 ; 2 uses
  %i.wv = sext i32 %i.wu to i64
  %i.ww = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wv
  store i32 %i.wr, ptr %i.ww, align 4, !tbaa !29
  %i.wx = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv659 ; 3 uses
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !29 ; 2 uses
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.wz
  store i32 %i.wo, ptr %i.xa, align 4, !tbaa !29
  %i.xb = xor i32 %i.wy, %i.wu                    ; 2 uses
  store i32 %i.xb, ptr %i.wt, align 4, !tbaa !29
  %i.xc = load i32, ptr %i.wx, align 4, !tbaa !29
  %i.xd = xor i32 %i.xc, %i.xb                    ; 2 uses
  store i32 %i.xd, ptr %i.wx, align 4, !tbaa !29
  %i.xe = load i32, ptr %i.wt, align 4, !tbaa !29
  %i.xf = xor i32 %i.xe, %i.xd
  store i32 %i.xf, ptr %i.wt, align 4, !tbaa !29
  br label %Abc_TtMoveVar.exit481

Abc_TtMoveVar.exit481:                            ; preds = %.lr.ph615, %bb.co
  %indvars.iv.next660 = add nuw nsw i64 %indvars.iv659, 1 ; 2 uses
  %exitcond663.not = icmp eq i64 %indvars.iv.next660, %wide.trip.count662
  br i1 %exitcond663.not, label %._crit_edge616, label %.lr.ph615, !llvm.loop !215

._crit_edge616:                                   ; preds = %Abc_TtMoveVar.exit481, %.loopexit
  br i1 %i.ay, label %.lr.ph.preheader.i482, label %Abc_TtEqual.exit.thread

.lr.ph.preheader.i482:                            ; preds = %._crit_edge616
  %wide.trip.count.i483 = zext nneg i32 %i.au to i64
  br label %.lr.ph.i484

bb.cp:                                            ; preds = %.lr.ph.i484
  %indvars.iv.next.i487 = add nuw nsw i64 %indvars.iv.i485, 1 ; 2 uses
  %exitcond.not.i488 = icmp eq i64 %indvars.iv.next.i487, %wide.trip.count.i483
  br i1 %exitcond.not.i488, label %Abc_TtEqual.exit.thread, label %.lr.ph.i484, !llvm.loop !18

.lr.ph.i484:                                      ; preds = %bb.cp, %.lr.ph.preheader.i482
  %indvars.iv.i485 = phi i64 [ 0, %.lr.ph.preheader.i482 ], [ %indvars.iv.next.i487, %bb.cp ] ; 3 uses
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.ax, i64 %indvars.iv.i485
  %i.xh = load i64, ptr %i.xg, align 8, !tbaa !28
  %i.xi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i485
  %i.xj = load i64, ptr %i.xi, align 8, !tbaa !28
  %.not.i486 = icmp eq i64 %i.xh, %i.xj
  br i1 %.not.i486, label %bb.cp, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i484
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.cp, %._crit_edge616, %Abc_TtEqual.exit
  %i.xk = shl nuw i32 1, %4
  %i.xl = icmp sgt i32 %.6309, %i.xk
  br i1 %i.xl, label %bb.cq, label %bb.cs

bb.cq:                                            ; preds = %Abc_TtEqual.exit.thread
  %.not.i489 = icmp eq ptr %i.wl, null
  br i1 %.not.i489, label %Vec_WrdFree.exit, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  tail call void @free(ptr noundef nonnull %i.wl) #28
  br label %Vec_WrdFree.exit

Vec_WrdFree.exit:                                 ; preds = %bb.cq, %bb.cr
  tail call void @free(ptr noundef nonnull %i.ba) #28
  br label %bb.cu

bb.cs:                                            ; preds = %Abc_TtEqual.exit.thread
  %.not356 = icmp eq i32 %6, 0
  br i1 %.not356, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.xm = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %.4327, i32 noundef %.val374, i32 noundef %.6309, i32 noundef %.6) ; 0 uses
  br label %bb.cu

bb.cu:                                            ; preds = %bb.cs, %bb.ct, %Vec_WrdFree.exit
  %.0328 = phi ptr [ null, %Vec_WrdFree.exit ], [ %i.ba, %bb.ct ], [ %i.ba, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %.0328
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #16

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #17

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #18 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #28 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #28
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #28 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !47
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #32
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #28 ; 0 uses
  call void @free(ptr noundef %i.d) #28
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !47, !noalias !219
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #28, !inline_history !218 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

declare i32 @Abc_FrameIsBridgeMode(...) local_unnamed_addr #7

declare i32 @Gia_ManToBridgeText(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #19

declare ptr @vnsprintf(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #19

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #6

; Function Attrs: nofree
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #21

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 -1, 2) i32 @Vec_IntSortCompare1(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #22 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !29
  %i.b = load i32, ptr %1, align 4, !tbaa !29
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.a, i32 %i.b)
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 -1, 2) i32 @Vec_WecSortCompare5(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #23 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %.val9 = load i32, ptr %i.a, align 4, !tbaa !34
  %i.b = getelementptr i8, ptr %0, i64 8
  %.val10 = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = sext i32 %.val9 to i64
  %i.d = getelementptr [4 x i8], ptr %.val10, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !29
  %i.g = getelementptr i8, ptr %1, i64 4
  %.val7 = load i32, ptr %i.g, align 4, !tbaa !34
  %i.h = getelementptr i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.h, align 8, !tbaa !35
  %i.i = sext i32 %.val7 to i64
  %i.j = getelementptr [4 x i8], ptr %.val8, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.0 = tail call i32 @llvm.scmp.i32.i32(i32 %i.f, i32 %i.l)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #24

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #15

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #25

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #26

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #27

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i4 @llvm.ctpop.i4(i4) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.ctpop.i16(i16) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.or.v2i64(<2 x i64>) #15

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind willreturn memory(write, argmem: none, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { inlinehint nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nosync nounwind willreturn }
attributes #20 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #25 = { nofree nounwind }
attributes #26 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #27 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #28 = { nounwind }
attributes #29 = { nounwind allocsize(1) }
attributes #30 = { nounwind allocsize(0) }
attributes #31 = { nounwind allocsize(0,1) }
attributes #32 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!19, !20}
!llvm.ident = !{!21}
!llvm.errno.tbaa = !{!26}

!0 = distinct !{!0, !30}
!1 = distinct !{!1, !30}
!2 = distinct !{!2, !30}
!3 = distinct !{!3, !30}
!4 = distinct !{!4, !30}
!5 = distinct !{!5, !30}
!6 = distinct !{!6, !30}
!7 = distinct !{!7, !30}
!8 = distinct !{!8, !30}
!9 = distinct !{!9, !30}
!10 = distinct !{!10, !30}
!11 = distinct !{!11, !30}
!12 = distinct !{!12, !30}
!13 = distinct !{!13, !30}
!14 = distinct !{!14, !30}
!15 = distinct !{!15, !30}
!16 = distinct !{!16, !30}
!17 = distinct !{!17, !30}
!18 = distinct !{!18, !30}
!19 = !{i32 8, !"PIC Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 2}
!21 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"omnipotent char", !22, i64 0}
!24 = !{!"int", !23, i64 0}
!25 = !{!"__libc_errno", !24, i64 0}
!26 = !{!25, !24, i64 0}
!27 = !{!"long", !23, i64 0}
!28 = !{!27, !27, i64 0}
!29 = !{!24, !24, i64 0}
!30 = !{!"llvm.loop.mustprogress"}
!31 = !{!"any pointer", !23, i64 0}
!32 = !{!"p1 int", !31, i64 0}
!33 = !{!"Vec_Int_t_", !24, i64 0, !24, i64 4, !32, i64 8}
!34 = !{!33, !24, i64 4}
!35 = !{!33, !32, i64 8}
!36 = !{!23, !23, i64 0}
!37 = !{!33, !24, i64 0}
!38 = !{!"short", !23, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = !{!"p1 long", !31, i64 0}
!42 = !{!"Vec_Wrd_t_", !24, i64 0, !24, i64 4, !41, i64 8}
!43 = !{!42, !41, i64 8}
!44 = !{!42, !24, i64 4}
!45 = !{!42, !24, i64 0}
!46 = !{!"p1 _ZTS8_IO_FILE", !31, i64 0}
!47 = !{!46, !46, i64 0}
!48 = !{!"llvm.loop.isvectorized", i32 1}
!49 = !{!"llvm.loop.unroll.runtime.disable"}
!50 = !{!"p1 _ZTS10Vec_Int_t_", !31, i64 0}
!51 = !{!"p1 _ZTS10Vec_Wrd_t_", !31, i64 0}
!52 = !{!"Abc_BSEval_t_", !24, i64 0, !24, i64 4, !24, i64 8, !23, i64 16, !50, i64 4624, !50, i64 4632, !50, i64 4640, !51, i64 4648, !23, i64 4656, !23, i64 4848, !41, i64 5040}
!53 = !{!52, !50, i64 4624}
!54 = !{!52, !50, i64 4632}
!55 = !{!52, !50, i64 4640}
!56 = !{!52, !51, i64 4648}
!57 = !{!50, !50, i64 0}
!58 = !{!"p1 _ZTS10Vec_Wec_t_", !31, i64 0}
!59 = !{!58, !58, i64 0}
!60 = !{!"Vec_Wec_t_", !24, i64 0, !24, i64 4, !50, i64 8}
!61 = !{!60, !24, i64 0}
!62 = !{!60, !50, i64 8}
!63 = !{!52, !41, i64 5040}
!64 = !{!51, !51, i64 0}
!65 = !{!52, !24, i64 0}
!66 = !{!52, !24, i64 4}
!67 = !{!60, !24, i64 4}
!68 = !{!52, !24, i64 8}
!69 = distinct !{!69, !30}
!70 = distinct !{!70, !30}
!71 = distinct !{!71, !30}
!72 = distinct !{!72, !30}
!73 = distinct !{!73, !30}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !30}
!76 = distinct !{!76, !30}
!77 = distinct !{!77, !30}
!78 = distinct !{!78, !30}
!79 = distinct !{!79, !30}
!80 = distinct !{!80, !30}
!81 = distinct !{!81, !30}
!82 = distinct !{!82, !30}
!83 = distinct !{!83, !30}
!84 = distinct !{!84, !30}
!85 = distinct !{!85, !30}
!86 = distinct !{!86, !30}
!87 = distinct !{!87, !30}
!88 = distinct !{!88, !30}
!89 = distinct !{!89, !30}
!90 = distinct !{!90, !30, !48, !49}
!91 = distinct !{!91, !30, !49, !48}
!92 = distinct !{!92, !30}
!93 = distinct !{!93, !30}
!94 = distinct !{!94, !30}
!95 = distinct !{!95, !30}
!96 = distinct !{!96, !30}
!97 = distinct !{!97, !30}
!98 = distinct !{!98, !30}
!99 = distinct !{!99, !30}
!100 = distinct !{!100, !30}
!101 = distinct !{!101, !30, !48, !49}
!102 = distinct !{!102, !30, !49, !48}
!103 = distinct !{!103, !30, !48, !49}
!104 = distinct !{!104, !30, !49, !48}
!105 = distinct !{!105, !30, !48, !49}
!106 = distinct !{!106, !30, !48}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !30, !48, !49}
!109 = distinct !{!109, !30, !48}
!110 = distinct !{!110, !40}
!111 = distinct !{!111, !30, !48, !49}
!112 = distinct !{!112, !30, !48}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !30}
!115 = distinct !{!115, !30}
!116 = distinct !{!116, !30}
!117 = distinct !{!117, !30}
!118 = distinct !{!118, !30}
!119 = distinct !{!119, !30, !48, !49}
!120 = distinct !{!120, !30, !48}
!121 = distinct !{!121, !40}
!122 = distinct !{!122, !30, !48, !49}
!123 = distinct !{!123, !"LVerDomain"}
!124 = distinct !{!124, !123}
!125 = distinct !{!125, !123}
!126 = distinct !{!126, !30, !48, !49}
!127 = distinct !{!127, !30, !48}
!128 = distinct !{!128, !30}
!129 = distinct !{!129, !"LVerDomain"}
!130 = distinct !{!130, !129}
!131 = distinct !{!131, !129}
!132 = distinct !{!132, !30, !48, !49}
!133 = distinct !{!133, !30, !48}
!134 = distinct !{!134, !30}
!135 = distinct !{!135, !30}
!136 = !{!124}
!137 = !{!125}
!138 = !{!130}
!139 = !{!131}
!140 = distinct !{!140, !30}
!141 = distinct !{!141, !30}
!142 = distinct !{!142, !30}
!143 = distinct !{!143, !30}
!144 = distinct !{!144, !30}
!145 = distinct !{!145, !30}
!146 = distinct !{!146, !30}
!147 = distinct !{!147, !30}
!148 = !{!"timespec", !27, i64 0, !27, i64 8}
!149 = !{!148, !27, i64 0}
end_hunk_3
