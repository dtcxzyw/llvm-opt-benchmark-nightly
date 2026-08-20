inline.NumInlined: 186
inline.NumDeleted: 41
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@Sbm_ManCreateCnf:bb.a

.lr.ph72:                                         ; preds = %bb.f
  %i.bd = getelementptr i8, ptr %i.ba, i64 8
  %.sink85 = trunc i64 %indvars.iv80 to i32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph72, %bb.j
  %indvars.iv77 = phi i64 [ 0, %.lr.ph72 ], [ %indvars.iv.next78, %bb.j ] ; 2 uses
  %.val57 = load ptr, ptr %i.bd, align 8, !tbaa !24
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %.val57, i64 %indvars.iv77
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !25 ; 2 uses
  %i.bg = ashr i32 %i.bf, 1                       ; 2 uses
  %i.bh = load i32, ptr %i.r, align 4, !tbaa !22
  %.not50 = icmp sgt i32 %i.bg, %i.bh
  br i1 %.not50, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bi = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.bj = getelementptr i8, ptr %i.bi, i64 4
  %.val = load i32, ptr %i.bj, align 4, !tbaa !20
  %i.bk = add nsw i32 %.val, %i.bg
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, -2
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.bn = load i32, ptr %i.v, align 8, !tbaa !31
  %i.bo = sub nsw i32 %i.bf, %i.bn
  %i.bp = shl nsw i32 %i.bo, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi i32 [ %i.bm, %bb.h ], [ %i.bp, %bb.i ]
  store i32 %.sink, ptr %i.a, align 4, !tbaa !25
  %i.bq = load i32, ptr %i.s, align 4, !tbaa !28
  %i.br = add nsw i32 %i.bq, %.sink85
  %i.bs = shl nsw i32 %i.br, 1
  %i.bt = or disjoint i32 %i.bs, 1
  store i32 %i.bt, ptr %i.t, align 4, !tbaa !25
  %i.bu = load ptr, ptr %0, align 8, !tbaa !37
  %i.bv = call i32 @sat_solver_addclause(ptr noundef %i.bu, ptr noundef nonnull %i.a, ptr noundef nonnull %i.u) #20 ; 0 uses
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %.val56 = load i32, ptr %i.bb, align 4, !tbaa !15
  %i.bw = sext i32 %.val56 to i64
  %i.bx = icmp slt i64 %indvars.iv.next78, %i.bw
  br i1 %i.bx, label %bb.g, label %.critedge4.loopexit, !llvm.loop !39

.critedge4.loopexit:                              ; preds = %bb.j
  %.pre = load ptr, ptr %i.e, align 8, !tbaa !29
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.f
  %i.by = phi ptr [ %.pre, %.critedge4.loopexit ], [ %i.ay, %bb.f ] ; 2 uses
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1 ; 2 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 4
  %.val52 = load i32, ptr %i.bz, align 4, !tbaa !20
  %i.ca = sext i32 %.val52 to i64
  %i.cb = icmp slt i64 %indvars.iv.next81, %i.ca
  br i1 %i.cb, label %bb.f, label %.critedge2, !llvm.loop !40

.critedge2:                                       ; preds = %.critedge4, %.critedge.preheader
  %i.cc = load ptr, ptr %0, align 8, !tbaa !37    ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !8  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.ce, i64 8
  %.val60 = load ptr, ptr %i.cf, align 8, !tbaa !24 ; 5 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 4
  %.val55 = load i32, ptr %i.cg, align 4, !tbaa !15 ; 3 uses
  %i.ch = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.ci = icmp sgt i32 %i.ch, 0
  br i1 %i.ci, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.critedge2
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 216
  br label %bb.k

.preheader.i:                                     ; preds = %bb.k, %.critedge2
  %i.ck = icmp sgt i32 %.val55, 0
  br i1 %i.ck, label %.lr.ph12.i, label %sat_solver_set_polarity.exit

.lr.ph12.i:                                       ; preds = %.preheader.i
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 216 ; 5 uses
  %wide.trip.count.i = zext nneg i32 %.val55 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.cm = icmp ult i32 %.val55, 4
  br i1 %i.cm, label %.epil.preheader, label %.lr.ph12.i.new

.lr.ph12.i.new:                                   ; preds = %.lr.ph12.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.l

bb.k:                                             ; preds = %bb.k, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.k ] ; 2 uses
  %i.cn = load ptr, ptr %i.cj, align 8, !tbaa !56
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %indvars.iv.i
  store i8 0, ptr %i.co, align 1, !tbaa !57
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.cp = load i32, ptr %i.cc, align 8, !tbaa !41
  %i.cq = sext i32 %i.cp to i64
  %i.cr = icmp slt i64 %indvars.iv.next.i, %i.cq
  br i1 %i.cr, label %bb.k, label %.preheader.i, !llvm.loop !58

bb.l:                                             ; preds = %bb.l, %.lr.ph12.i.new
  %indvars.iv14.i = phi i64 [ 0, %.lr.ph12.i.new ], [ %indvars.iv.next15.i.3, %bb.l ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph12.i.new ], [ %niter.next.3, %bb.l ]
  %i.cs = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv14.i
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !25
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds i8, ptr %i.cs, i64 %i.cv
  store i8 1, ptr %i.cw, align 1, !tbaa !57
  %i.cx = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv14.i
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !25
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds i8, ptr %i.cx, i64 %i.db
  store i8 1, ptr %i.dc, align 1, !tbaa !57
  %i.dd = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv14.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !25
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds i8, ptr %i.dd, i64 %i.dh
  store i8 1, ptr %i.di, align 1, !tbaa !57
  %i.dj = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv14.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !25
  %i.dn = sext i32 %i.dm to i64
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %i.dn
  store i8 1, ptr %i.do, align 1, !tbaa !57
  %indvars.iv.next15.i.3 = add nuw nsw i64 %indvars.iv14.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %sat_solver_set_polarity.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !59

sat_solver_set_polarity.exit.loopexit.unr-lcssa:  ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %sat_solver_set_polarity.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %sat_solver_set_polarity.exit.loopexit.unr-lcssa, %.lr.ph12.i
  %indvars.iv14.i.epil.init = phi i64 [ 0, %.lr.ph12.i ], [ %indvars.iv.next15.i.3, %sat_solver_set_polarity.exit.loopexit.unr-lcssa ]
  %lcmp.mod86 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod86)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv14.i.epil = phi i64 [ %indvars.iv14.i.epil.init, %.epil.preheader ], [ %indvars.iv.next15.i.epil, %bb.m ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.dp = load ptr, ptr %i.cl, align 8, !tbaa !56
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %.val60, i64 %indvars.iv14.i.epil
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !25
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr inbounds i8, ptr %i.dp, i64 %i.ds
  store i8 1, ptr %i.dt, align 1, !tbaa !57
  %indvars.iv.next15.i.epil = add nuw nsw i64 %indvars.iv14.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %sat_solver_set_polarity.exit, label %bb.m, !llvm.loop !60

sat_solver_set_polarity.exit:                     ; preds = %sat_solver_set_polarity.exit.loopexit.unr-lcssa, %bb.m, %.preheader.i, %bb.a
  %.049 = phi i32 [ 0, %bb.a ], [ 1, %.preheader.i ], [ 1, %bb.m ], [ 1, %sat_solver_set_polarity.exit.loopexit.unr-lcssa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.049
}

declare void @sat_solver_setnvars(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @sat_solver_nvars(ptr noundef) local_unnamed_addr #3

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Card_AddCardinConstrPairWise(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !25
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.d = add nsw i32 %.val, -1
  call fastcc void @Card_AddCardinConstrRange(ptr noundef %0, ptr noundef %.val3, i32 noundef 0, i32 noundef %i.d, ptr noundef %i.a)
  %i.e = load i32, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.e
}

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Card_AddCardinConstrRange(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #5 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = sub nsw i32 %3, %2                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 1
  %i.e = add nuw i32 %i.d, %2                     ; 2 uses
  %i.f = add nuw nsw i32 %i.b, 1
  %i.g = lshr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = zext nneg i32 %2 to i64
  %i.l = zext nneg i32 %i.g to i64
  %i.m = add nuw i32 %i.e, 1                      ; 2 uses
  %wide.trip.count = zext i32 %i.m to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.k, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !25     ; 4 uses
  %i.o = add nsw i32 %i.n, 1                      ; 2 uses
  %i.p = add nsw i32 %i.n, 2
  store i32 %i.p, ptr %4, align 4, !tbaa !25
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %gep, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.t = shl nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !25
  %i.u = shl nsw i32 %i.r, 1
  %i.v = or disjoint i32 %i.u, 1                  ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !25
  call fastcc void @Card_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.i)
  store i32 %i.t, ptr %i.a, align 4, !tbaa !25
  %i.w = shl nsw i32 %i.s, 1
  %i.x = or disjoint i32 %i.w, 1                  ; 2 uses
  store i32 %i.x, ptr %i.h, align 4, !tbaa !25
  call fastcc void @Card_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.i)
  %i.y = shl nsw i32 %i.o, 1
  store i32 %i.y, ptr %i.a, align 4, !tbaa !25
  store i32 %i.v, ptr %i.h, align 4, !tbaa !25
  store i32 %i.x, ptr %i.i, align 4, !tbaa !25
  call fastcc void @Card_AddClause(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i32 %i.n, ptr %i.q, align 4, !tbaa !25
  store i32 %i.o, ptr %gep, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !62

bb.d:                                             ; preds = %bb.c
  call fastcc void @Card_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.e, ptr noundef %4)
  call fastcc void @Card_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %3, ptr noundef %4)
  call fastcc void @Card_AddCardinConstrMerge(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Card_AddCardinSolver(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = shl nuw i32 1, %0                        ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 4 uses
  store i32 0, ptr %i.d, align 4, !tbaa !15
  store i32 1000, ptr %i.c, align 8, !tbaa !23
  %i.e = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 5 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !24
  %i.g = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %i.h = add i32 %i.b, -1
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.b, i32 16) ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i32 %spec.store.select.i.i, ptr %i.g, align 8, !tbaa !23
  %i.j = sext i32 %spec.store.select.i.i to i64
  %i.k = shl nsw i64 %i.j, 2
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #19 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !24
  store i32 %i.b, ptr %i.i, align 4, !tbaa !15
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %Vec_IntStartNatural.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %0, 3
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !25
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %Vec_IntStartNatural.exit, label %vector.body, !llvm.loop !63

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !66

Vec_IntStartNatural.exit:                         ; preds = %vector.body, %.lr.ph.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.b, ptr %i.a, align 4, !tbaa !25
  call fastcc void @Card_AddCardinConstrRange(ptr noundef nonnull %i.c, ptr noundef %i.l, i32 noundef 0, i32 noundef %i.h, ptr noundef %i.a)
  %i.s = load i32, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  %i.t = load i32, ptr %i.d, align 4, !tbaa !15   ; 7 uses
  %i.u = load i32, ptr %i.c, align 8, !tbaa !23
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.b, label %Vec_IntStartNatural.exit.Vec_IntPush.exit_crit_edge

Vec_IntStartNatural.exit.Vec_IntPush.exit_crit_edge: ; preds = %Vec_IntStartNatural.exit
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !24
  br label %Vec_IntPush.exit

bb.b:                                             ; preds = %Vec_IntStartNatural.exit
  %i.w = icmp slt i32 %i.t, 16
  br i1 %i.w, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !24   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.x, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.x, i64 noundef 64) #18
  br label %Vec_IntGrow.exit11.sink.split.i

bb.e:                                             ; preds = %bb.c
  %i.z = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.aa = icmp samesign ult i32 %i.t, 1073741823
  %i.ab = shl nuw nsw i32 %i.t, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.t, %spec.select.i
  %.pre14 = load ptr, ptr %i.f, align 8, !tbaa !24 ; 3 uses
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %.not9.i10.i = icmp eq ptr %.pre14, null
  %i.ac = zext nneg i32 %spec.select.i to i64
  %i.ad = shl nuw nsw i64 %i.ac, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call ptr @realloc(ptr noundef nonnull %.pre14, i64 noundef %i.ad) #18
  br label %Vec_IntGrow.exit11.sink.split.i

bb.i:                                             ; preds = %bb.g
  %i.af = call noalias ptr @malloc(i64 noundef %i.ad) #19
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.h, %bb.i, %bb.d, %bb.e
  %storemerge = phi ptr [ %i.z, %bb.e ], [ %i.y, %bb.d ], [ %i.ae, %bb.h ], [ %i.af, %bb.i ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.e ], [ 16, %bb.d ], [ %spec.select.i, %bb.h ], [ %spec.select.i, %bb.i ]
  store ptr %storemerge, ptr %i.f, align 8, !tbaa !24
  store i32 %spec.select.sink.i, ptr %i.c, align 8, !tbaa !23
  %.pre15 = load i32, ptr %i.d, align 4, !tbaa !15
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %Vec_IntStartNatural.exit.Vec_IntPush.exit_crit_edge, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.ag = phi i32 [ %i.t, %Vec_IntStartNatural.exit.Vec_IntPush.exit_crit_edge ], [ %i.t, %bb.f ], [ %.pre15, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ah = phi ptr [ %.pre, %Vec_IntStartNatural.exit.Vec_IntPush.exit_crit_edge ], [ %.pre14, %bb.f ], [ %storemerge, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ai = add nsw i32 %i.ag, 1
  store i32 %i.ai, ptr %i.d, align 4, !tbaa !15
  %i.aj = sext i32 %i.ag to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %i.aj
  store i32 -1, ptr %i.ak, align 4, !tbaa !25
  store ptr %i.g, ptr %1, align 8, !tbaa !67
  store ptr %i.c, ptr %2, align 8, !tbaa !67
  ret i32 %i.s
}

; Function Attrs: nounwind uwtable
define noundef ptr @Sbm_AddCardinSolver2(i32 noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !67
  %i.c = call i32 @Card_AddCardinSolver(i32 noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %i.d = tail call ptr @sat_solver_new() #20      ; 3 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.d, i32 noundef %i.c) #20
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !67   ; 3 uses
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  %i.g = getelementptr i8, ptr %i.e, i64 4        ; 2 uses
  %.val24 = load i32, ptr %i.g, align 4, !tbaa !15
  %i.h = icmp sgt i32 %.val24, 1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %.val21 = load ptr, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.val23 = phi ptr [ %.val20, %.lr.ph ], [ %.val21, %.lr.ph.preheader ] ; 2 uses
  %.0.in26 = phi ptr [ %i.p, %.lr.ph ], [ %.val21, %.lr.ph.preheader ]
  %.01625 = phi i32 [ %i.o, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 2 uses
  %.0 = load i32, ptr %.0.in26, align 4, !tbaa !25
  %i.i = sext i32 %.01625 to i64
  %i.j = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.i
  %i.k = add nsw i32 %.0, %.01625                 ; 2 uses
  %i.l = sext i32 %i.k to i64                     ; 2 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.l
  %i.n = tail call i32 @sat_solver_addclause(ptr noundef %i.d, ptr noundef %i.j, ptr noundef %i.m) #20 ; 0 uses
  %i.o = add nsw i32 %i.k, 1                      ; 2 uses
  %.val20 = load ptr, ptr %i.f, align 8, !tbaa !24 ; 2 uses
  %i.p = getelementptr inbounds [4 x i8], ptr %.val20, i64 %i.l
  %.val = load i32, ptr %i.g, align 4, !tbaa !15
  %i.q = icmp slt i32 %i.o, %.val
  br i1 %i.q, label %.lr.ph, label %._crit_edge, !llvm.loop !68

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !67
  store ptr %i.r, ptr %1, align 8, !tbaa !67
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  %.not19 = icmp eq ptr %2, null
  br i1 %.not19, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.e, ptr %2, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret ptr %i.d
}

declare ptr @sat_solver_new() local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @Sbm_AddCardinConstrPairWise(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.b = getelementptr i8, ptr %1, i64 4
  %.val = load i32, ptr %i.b, align 4, !tbaa !15  ; 2 uses
  store i32 %.val, ptr %i.a, align 4, !tbaa !25
  %i.c = getelementptr i8, ptr %1, i64 8
  %.val4 = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.d = add nsw i32 %.val, -1
  call fastcc void @Sbm_AddCardinConstrRange(ptr noundef %0, ptr noundef %.val4, i32 noundef 0, i32 noundef %i.d, ptr noundef %i.a)
  %i.e = load i32, ptr %0, align 8, !tbaa !41     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 %i.e, ptr %i.f, align 8, !tbaa !69
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !70
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  store i32 %i.h, ptr %i.i, align 4, !tbaa !71
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = load <2 x i32>, ptr %i.j, align 8, !tbaa !25
  store <2 x i32> %i.l, ptr %i.k, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = load i32, ptr %i.m, align 8, !tbaa !25   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.p = load i32, ptr %i.o, align 8, !tbaa !72   ; 2 uses
  %i.q = shl i32 %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !73   ; 2 uses
  %i.t = sext i32 %i.n to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !74
  %.val.i.i.i = load i32, ptr %i.v, align 4, !tbaa !25
  %i.w = or i32 %.val.i.i.i, %i.q
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.w, ptr %i.x, align 8, !tbaa !25
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !25   ; 2 uses
  %i.aa = shl i32 %i.z, %i.p
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.ab
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !74
  %.val.i8.i.i = load i32, ptr %i.ad, align 4, !tbaa !25
  %i.ae = or i32 %.val.i8.i.i, %i.aa
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.ae, ptr %i.af, align 4, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !75 ; 2 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %sat_solver_bookmark.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !77
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !78
  %i.an = sext i32 %i.e to i64
  %i.ao = shl nsw i64 %i.an, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %i.am, i64 %i.ao, i1 false)
  br label %sat_solver_bookmark.exit

sat_solver_bookmark.exit:                         ; preds = %bb.a, %bb.b
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %i.ap
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @Sbm_AddCardinConstrRange(ptr noundef %0, ptr noundef %1, i32 noundef range(i32 0, -2147483648) %2, i32 noundef %3, ptr noundef nonnull %4) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = sub nsw i32 %3, %2                       ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i32 %i.b, 1
  %i.e = add nuw i32 %i.d, %2                     ; 2 uses
  %i.f = add nuw nsw i32 %i.b, 1
  %i.g = lshr i32 %i.f, 1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.k = zext nneg i32 %2 to i64
  %i.l = zext nneg i32 %i.g to i64
  %i.m = add nuw i32 %i.e, 1                      ; 2 uses
  %wide.trip.count = zext i32 %i.m to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.c
  %indvars.iv = phi i64 [ %i.k, %bb.b ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %i.n = load i32, ptr %4, align 4, !tbaa !25     ; 4 uses
  %i.o = add nsw i32 %i.n, 2
  store i32 %i.o, ptr %4, align 4, !tbaa !25
  %i.p = add nsw i32 %i.n, 1                      ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !25
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv ; 2 uses
  %i.s = load i32, ptr %gep, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.t = shl nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !25
  %i.u = shl nsw i32 %i.r, 1
  %i.v = or disjoint i32 %i.u, 1                  ; 2 uses
  store i32 %i.v, ptr %i.h, align 4, !tbaa !25
  %i.w = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #20 ; 0 uses
  store i32 %i.t, ptr %i.a, align 4, !tbaa !25
  %i.x = shl nsw i32 %i.s, 1
  %i.y = or disjoint i32 %i.x, 1                  ; 2 uses
  store i32 %i.y, ptr %i.h, align 4, !tbaa !25
  %i.z = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.i) #20 ; 0 uses
  %i.aa = shl nsw i32 %i.p, 1
  store i32 %i.aa, ptr %i.a, align 4, !tbaa !25
  store i32 %i.v, ptr %i.h, align 4, !tbaa !25
  store i32 %i.y, ptr %i.i, align 4, !tbaa !25
  %i.ab = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.j) #20 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store i32 %i.n, ptr %i.q, align 4, !tbaa !25
  store i32 %i.p, ptr %gep, align 4, !tbaa !25
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.d, label %bb.c, !llvm.loop !79

bb.d:                                             ; preds = %bb.c
  call fastcc void @Sbm_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.e, ptr noundef %4)
  call fastcc void @Sbm_AddCardinConstrRange(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.m, i32 noundef %3, ptr noundef %4)
  call fastcc void @Sbm_AddCardinConstrMerge(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i32 noundef 1, ptr noundef %4)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Sbm_AddCardinSolver(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = shl nuw i32 1, %0                        ; 7 uses
  %i.c = shl i32 %0, %0
  %i.d = add nsw i32 %0, -1
  %i.e = mul nsw i32 %i.c, %i.d
  %i.f = sdiv i32 %i.e, 4
  %i.g = add nsw i32 %i.f, %i.b
  %i.h = shl i32 %i.g, 1
  %i.i = add i32 %i.b, -2
  %i.j = add i32 %i.i, %i.h
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 4 uses
  %spec.store.select.i.i = tail call i32 @llvm.umax.i32(i32 %i.b, i32 16) ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %spec.store.select.i.i, ptr %i.k, align 8, !tbaa !23
  %i.m = sext i32 %spec.store.select.i.i to i64
  %i.n = shl nsw i64 %i.m, 2
  %i.o = tail call noalias ptr @malloc(i64 noundef %i.n) #19 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !24
  store i32 %i.b, ptr %i.l, align 4, !tbaa !15
  %.not = icmp eq i32 %0, 31
  br i1 %.not, label %Vec_IntStartNatural.exit, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %min.iters.check = icmp ult i32 %0, 3
  br i1 %min.iters.check, label %.lr.ph.i, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483640
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <4 x i32> %vec.ind, ptr %i.q, align 4, !tbaa !25
  store <4 x i32> %step.add, ptr %i.r, align 4, !tbaa !25
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %Vec_IntStartNatural.exit, label %vector.body, !llvm.loop !80

.lr.ph.i:                                         ; preds = %.lr.ph.preheader.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.i
  %i.u = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.u, ptr %i.t, align 4, !tbaa !25
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %Vec_IntStartNatural.exit, label %.lr.ph.i, !llvm.loop !81

Vec_IntStartNatural.exit:                         ; preds = %vector.body, %.lr.ph.i, %bb.a
  %i.v = tail call ptr @sat_solver_new() #20      ; 19 uses
  tail call void @sat_solver_setnvars(ptr noundef %i.v, i32 noundef %i.j) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store i32 %i.b, ptr %i.a, align 4, !tbaa !25
  %i.w = add nsw i32 %i.b, -1
  call fastcc void @Sbm_AddCardinConstrRange(ptr noundef %i.v, ptr noundef %i.o, i32 noundef 0, i32 noundef %i.w, ptr noundef %i.a)
  %i.x = load i32, ptr %i.v, align 8, !tbaa !41   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  store i32 %i.x, ptr %i.y, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.v, i64 100
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !71
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.ae = load <2 x i32>, ptr %i.ac, align 8, !tbaa !25
  store <2 x i32> %i.ae, ptr %i.ad, align 8, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !25 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !72 ; 2 uses
  %i.aj = shl i32 %i.ag, %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !73 ; 2 uses
  %i.am = sext i32 %i.ag to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !74
  %.val.i.i.i.i = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.ap = or i32 %.val.i.i.i.i, %i.aj
  %i.aq = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  store i32 %i.ap, ptr %i.aq, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.v, i64 44
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !25 ; 2 uses
  %i.at = shl i32 %i.as, %i.ai
  %i.au = sext i32 %i.as to i64
  %i.av = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.au
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !74
  %.val.i8.i.i.i = load i32, ptr %i.aw, align 4, !tbaa !25
  %i.ax = or i32 %.val.i8.i.i.i, %i.at
  %i.ay = getelementptr inbounds nuw i8, ptr %i.v, i64 28
  store i32 %i.ax, ptr %i.ay, align 4, !tbaa !25
  %i.az = getelementptr inbounds nuw i8, ptr %i.v, i64 152
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !75 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %Sbm_AddCardinConstrPairWise.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntStartNatural.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !76
  %i.bd = getelementptr inbounds nuw i8, ptr %i.v, i64 128
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !77
  %i.be = getelementptr inbounds nuw i8, ptr %i.v, i64 144
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !78
  %i.bg = sext i32 %i.x to i64
  %i.bh = shl nsw i64 %i.bg, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ba, ptr align 8 %i.bf, i64 %i.bh, i1 false)
  br label %Sbm_AddCardinConstrPairWise.exit

Sbm_AddCardinConstrPairWise.exit:                 ; preds = %Vec_IntStartNatural.exit, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  store ptr %i.k, ptr %1, align 8, !tbaa !67
  ret ptr %i.v
}

; Function Attrs: nounwind uwtable
define void @Sbm_AddCardinConstrTest() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #19 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 16, ptr %i.c, align 8, !tbaa !23
  %i.e = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  store ptr %i.e, ptr %i.f, align 8, !tbaa !24
  %i.g = call ptr @Sbm_AddCardinSolver(i32 noundef 3, ptr noundef nonnull %i.a) ; 6 uses
  %i.h = tail call i32 @sat_solver_nvars(ptr noundef %i.g) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8        ; 2 uses
  %.val = load ptr, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.l = load i32, ptr %i.k, align 4, !tbaa !25
  %i.m = shl nsw i32 %i.l, 1
  %i.n = or disjoint i32 %i.m, 1
  store i32 %i.n, ptr %i.b, align 4, !tbaa !25
  %i.o = tail call i32 @sat_solver_nclauses(ptr noundef %i.g) #20
  %i.p = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef 3, i32 noundef 8, i32 noundef %i.h, i32 noundef %i.o, i32 noundef 37) ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.r = getelementptr i8, ptr %i.g, i64 328      ; 16 uses
  br label %bb.b

bb.b:                                             ; preds = %Vec_IntPush.exit.7, %bb.a
  %.033 = phi i32 [ 1, %bb.a ], [ %i.dx, %Vec_IntPush.exit.7 ] ; 2 uses
  %i.s = call i32 @sat_solver_solve(ptr noundef %i.g, ptr noundef nonnull %i.b, ptr noundef nonnull %i.q, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #20
  %.not = icmp eq i32 %i.s, 1
  br i1 %.not, label %bb.c, label %select.unfold

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.d, align 4, !tbaa !15
  %i.t = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.033) ; 0 uses
  %.promoted45 = load ptr, ptr %i.f, align 8, !tbaa !24 ; 3 uses
  %.promoted42 = load i32, ptr %i.c, align 8, !tbaa !23 ; 2 uses
  %.val37 = load ptr, ptr %i.r, align 8, !tbaa !82 ; 3 uses
  %i.u = load i32, ptr %.val37, align 4, !tbaa !25
  %i.v = icmp eq i32 %i.u, 1
  %i.w = zext i1 %i.v to i32
  %i.x = icmp eq i32 %.promoted42, 0
  br i1 %i.x, label %bb.d, label %Vec_IntPush.exit

bb.d:                                             ; preds = %bb.c
  %.not9.i.i = icmp eq ptr %.promoted45, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %.promoted45, i64 noundef 64) #18
  %.val36.pre = load ptr, ptr %i.r, align 8, !tbaa !82
  br label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.d
  %i.z = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #19
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.f, %bb.e, %bb.c
  %.val36 = phi ptr [ %.val37, %bb.c ], [ %.val36.pre, %bb.e ], [ %.val37, %bb.f ]
  %storemerge47 = phi ptr [ %.promoted45, %bb.c ], [ %i.y, %bb.e ], [ %i.z, %bb.f ] ; 3 uses
  %spec.select.sink.i43 = phi i32 [ %.promoted42, %bb.c ], [ 16, %bb.e ], [ 16, %bb.f ] ; 2 uses
  store i32 %i.w, ptr %storemerge47, align 4, !tbaa !25
  %i.aa = load i32, ptr %.val36, align 4, !tbaa !25
  %i.ab = icmp eq i32 %i.aa, 1
  %i.ac = zext i1 %i.ab to i32
  %i.ad = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.ac) ; 0 uses
  %.val37.1 = load ptr, ptr %i.r, align 8, !tbaa !82 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val37.1, i64 4
end_hunk_0
