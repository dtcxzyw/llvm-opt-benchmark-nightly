inline.NumInlined: 897
inline.NumDeleted: 161
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 42
begin_hunk_0_@If_DsdManCompute:bb.a
  %wide.load = load <2 x i64>, ptr %i.ah, align 16, !tbaa !52
  %wide.load40 = load <2 x i64>, ptr %i.ai, align 16, !tbaa !52
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x i64> %wide.load, ptr %i.aj, align 8, !tbaa !52
  store <2 x i64> %wide.load40, ptr %i.ak, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.al = icmp eq i64 %index.next, %n.vec
  br i1 %i.al, label %._crit_edge.i, label %vector.body, !llvm.loop !272

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 6 uses
  %niter = phi i64 [ %niter.next.3, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.an = load i64, ptr %i.am, align 16, !tbaa !52
  %gep.i = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i
  store i64 %i.an, ptr %gep.i, align 8, !tbaa !52
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !52
  %gep.i.1 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i
  store i64 %i.ap, ptr %gep.i.1, align 8, !tbaa !52
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.1
  %i.ar = load i64, ptr %i.aq, align 16, !tbaa !52
  %gep.i.2 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  store i64 %i.ar, ptr %gep.i.2, align 8, !tbaa !52
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.next.i.2
  %i.at = load i64, ptr %i.as, align 8, !tbaa !52
  %gep.i.3 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  store i64 %i.at, ptr %gep.i.3, align 8, !tbaa !52
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !273

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.i, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.i.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.i.3, %._crit_edge.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod42)
  br label %scalar.ph.epil

scalar.ph.epil:                                   ; preds = %scalar.ph.epil, %scalar.ph.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.next.i.epil, %scalar.ph.epil ], [ %indvars.iv.i.epil.init, %scalar.ph.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %scalar.ph.epil ], [ 0, %scalar.ph.epil.preheader ]
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv.i.epil
  %i.av = load i64, ptr %i.au, align 8, !tbaa !52
  %gep.i.epil = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i.epil
  store i64 %i.av, ptr %gep.i.epil, align 8, !tbaa !52
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i, label %scalar.ph.epil, !llvm.loop !274

._crit_edge.i:                                    ; preds = %vector.body, %._crit_edge.i.loopexit.unr-lcssa, %scalar.ph.epil
  %indvars.iv.next28.i = add nuw nsw i64 %indvars.iv27.i, %i.aa ; 2 uses
  %i.aw = trunc nuw i64 %indvars.iv.next28.i to i32
  %i.ax = icmp sgt i32 %i.w, %i.aw
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ax, label %.preheader.i, label %Abc_TtStretch6.exit, !llvm.loop !247

Abc_TtStretch6.exit:                              ; preds = %._crit_edge.i, %bb.c, %bb.b, %Abc_TtCopy.exit
  %i.ay = sext i32 %2 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %3, i8 -1, i64 %i.ay, i1 false)
  %i.az = call i32 @If_DsdManAddDsd(ptr noundef %0, ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef nonnull %i.d) ; 5 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !54
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !51 ; 3 uses
  call void @If_DsdManComputeTruthPtr(ptr noundef %0, i32 noundef %i.az, ptr noundef %3, ptr noundef %i.bd)
  br i1 %i.i, label %.lr.ph.preheader.i, label %Abc_TtEqual.exit.thread

.lr.ph.preheader.i:                               ; preds = %Abc_TtStretch6.exit
  %wide.trip.count.i = zext nneg i32 %i.h to i64
  br label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %indvars.iv.next.i30 = add nuw nsw i64 %indvars.iv.i29, 1 ; 2 uses
  %exitcond.not.i31 = icmp eq i64 %indvars.iv.next.i30, %wide.trip.count.i
  br i1 %exitcond.not.i31, label %Abc_TtEqual.exit.thread, label %.lr.ph.i, !llvm.loop !275

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %indvars.iv.i29 = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i30, %bb.d ] ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i29
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !52
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i29
  %i.bh = load i64, ptr %i.bg, align 8, !tbaa !52
  %.not.i = icmp eq i64 %i.bf, %i.bh
  br i1 %.not.i, label %bb.d, label %Abc_TtEqual.exit

Abc_TtEqual.exit:                                 ; preds = %.lr.ph.i
  %putchar = call i32 @putchar(i32 10)            ; 0 uses
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.10) ; 0 uses
  %puts26 = call i32 @puts(ptr nonnull dereferenceable(1) %i.c) ; 0 uses
  call void @Dau_DsdPrintFromTruth(ptr noundef nonnull %1, i32 noundef %2) #40
  call void @Dau_DsdPrintFromTruth(ptr noundef nonnull %i.bd, i32 noundef %2) #40
  %i.bi = load ptr, ptr @stdout, align 8, !tbaa !82 ; 6 uses
  %i.bj = ashr i32 %i.az, 1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  %i.bk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.15, i32 noundef %i.bj) #40 ; 0 uses
  %i.bl = getelementptr i8, ptr %0, i64 48        ; 3 uses
  %.val.i = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.bm = sext i32 %i.bj to i64                   ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = lshr i32 %i.bq, 3
  %i.bs = and i32 %i.br, 31
  %i.bt = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.16, i32 noundef %i.bs) #40 ; 0 uses
  %.val17.i = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.bu = getelementptr inbounds [8 x i8], ptr %.val17.i, i64 %i.bm
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !27
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 4
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = lshr i32 %i.bx, 9
  %i.bz = and i32 %i.by, 262143
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.17, i32 noundef %i.bz) #40 ; 0 uses
  %.val16.i = load ptr, ptr %i.bl, align 8, !tbaa !26
  %i.cb = getelementptr inbounds [8 x i8], ptr %.val16.i, i64 %i.bm
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !27
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = load i32, ptr %i.cd, align 4
  %i.cf = lshr i32 %i.ce, 8
  %i.cg = and i32 %i.cf, 1
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bi, ptr noundef nonnull @.str.18, i32 noundef %i.cg) #40 ; 0 uses
  %i.ci = and i32 %i.az, -2
  call void @If_DsdManPrint_rec(ptr noundef %i.bi, ptr noundef readonly %0, i32 noundef %i.ci, ptr noundef readonly %3, ptr noundef nonnull %i.a)
  %fputc.i = call i32 @fputc(i32 10, ptr %i.bi)   ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %putchar27 = call i32 @putchar(i32 10)          ; 0 uses
  br label %Abc_TtEqual.exit.thread

Abc_TtEqual.exit.thread:                          ; preds = %bb.d, %Abc_TtStretch6.exit, %Abc_TtEqual.exit
  %i.cj = ashr i32 %i.az, 1
  %i.ck = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.ck, align 8, !tbaa !26
  %i.cl = sext i32 %i.cj to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.cl
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !27
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4            ; 3 uses
  %i.cq = and i32 %i.cp, 134217216
  %.not.i32 = icmp eq i32 %i.cq, 134217216
  br i1 %.not.i32, label %If_DsdVecObjIncRef.exit, label %bb.e

bb.e:                                             ; preds = %Abc_TtEqual.exit.thread
  %i.cr = add i32 %i.cp, 512
  %i.cs = and i32 %i.cr, 134217216
  %i.ct = and i32 %i.cp, -134217217
  %i.cu = or disjoint i32 %i.cs, %i.ct
  store i32 %i.cu, ptr %i.co, align 4
  br label %If_DsdVecObjIncRef.exit

If_DsdVecObjIncRef.exit:                          ; preds = %Abc_TtEqual.exit.thread, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  ret i32 %i.az
}

declare i32 @Dau_DsdDecompose(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

declare void @Dau_DsdPrintFromTruth(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @If_DsdManTest() local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 5942308905776796279, ptr %i.a, align 8, !tbaa !52
  %i.b = call ptr @Dau_DecFindSets(ptr noundef nonnull %i.a, i32 noundef 6) #40 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %Vec_IntFree.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @free(ptr noundef nonnull %i.d) #40
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.a, %bb.b
  call void @free(ptr noundef nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret void
}

declare ptr @Dau_DecFindSets(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @If_CutDsdBalancePinDelays_rec(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca [15 x i64], align 16              ; 4 uses
  %i.d = alloca [15 x i32], align 16              ; 4 uses
  %i.e = alloca [15 x i64], align 16              ; 16 uses
  %i.f = alloca [15 x i32], align 16              ; 11 uses
  %i.g = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.g, align 8, !tbaa !26
  %i.h = sext i32 %1 to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !27   ; 5 uses
  %i.k = getelementptr i8, ptr %i.j, i64 4        ; 4 uses
  %.val86 = load i32, ptr %i.k, align 4           ; 6 uses
  %i.l = and i32 %.val86, 7
  switch i32 %i.l, label %bb.m [
    i32 2, label %bb.b
    i32 5, label %bb.c
    i32 6, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %4, align 4, !tbaa !43     ; 2 uses
  %i.n = add nsw i32 %i.m, 1
  store i32 %i.n, ptr %4, align 4, !tbaa !43
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds i8, ptr %6, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !tbaa !140
  %i.r = ashr i8 %i.q, 1
  %i.s = sext i8 %i.r to i64                      ; 2 uses
  %i.t = shl nsw i64 %i.s, 2
  %i.u = and i64 %i.t, 4294967292
  %i.v = shl nuw i64 1, %i.u
  store i64 %i.v, ptr %3, align 8, !tbaa !52
  %i.w = getelementptr inbounds [4 x i8], ptr %2, i64 %i.s
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43
  br label %bb.w

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  %i.y = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.not155 = icmp ult i32 %.val86, 134217728
  br i1 %.not155, label %.critedge, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.c, %bb.d
  %indvars.iv161 = phi i64 [ %indvars.iv.next162, %bb.d ], [ 0, %bb.c ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv161
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 2 uses
  %.not83 = icmp eq i32 %i.aa, 0
  br i1 %.not83, label %.critedge.loopexit, label %bb.d

bb.d:                                             ; preds = %.lr.ph143
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv161
  %i.ad = call i32 @If_CutDsdBalancePinDelays_rec(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2, ptr noundef nonnull %i.ac, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv161
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !43
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %.val89 = load i32, ptr %i.k, align 4
  %i.af = lshr i32 %.val89, 27
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = icmp samesign ult i64 %indvars.iv.next162, %i.ag
  br i1 %i.ah, label %.lr.ph143, label %.critedge.loopexit, !llvm.loop !276

.critedge.loopexit:                               ; preds = %bb.d, %.lr.ph143
  %.pre = load i64, ptr %i.a, align 16, !tbaa !52
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.c
  %i.ai = phi i64 [ %.pre, %.critedge.loopexit ], [ undef, %bb.c ] ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !52
  %i.al = icmp sgt i32 %5, 0
  br i1 %i.al, label %.lr.ph.preheader.i, label %If_CutPinDelayMax.exit112

.lr.ph.preheader.i:                               ; preds = %.critedge
  %wide.trip.count.i = zext nneg i32 %5 to i64    ; 3 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01213.i = phi i64 [ 0, %.lr.ph.preheader.i ], [ %.1.i, %bb.f ] ; 2 uses
  %i.am = shl nuw nsw i64 %indvars.iv.i, 2
  %i.an = and i64 %i.am, 4294967292               ; 3 uses
  %i.ao = lshr i64 %i.ai, %i.an
  %i.ap = trunc i64 %i.ao to i32
  %i.aq = and i32 %i.ap, 15
  %i.ar = lshr i64 %i.ak, %i.an
  %i.as = trunc i64 %i.ar to i32
  %i.at = and i32 %i.as, 15
  %i.au = call i32 @llvm.umax.i32(i32 %i.aq, i32 %i.at) ; 2 uses
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.av = call i32 @llvm.umin.i32(i32 %i.au, i32 14)
  %i.aw = add nuw nsw i32 %i.av, 1
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = shl i64 %i.ax, %i.an
  %i.az = or i64 %i.ay, %.01213.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i
  %.1.i = phi i64 [ %.01213.i, %.lr.ph.i ], [ %i.az, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %If_CutPinDelayMax.exit, label %.lr.ph.i, !llvm.loop !277

If_CutPinDelayMax.exit:                           ; preds = %bb.f
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.bb = load i64, ptr %i.ba, align 16, !tbaa !52
  br label %.lr.ph.i94

.lr.ph.i94:                                       ; preds = %bb.h, %If_CutPinDelayMax.exit
  %indvars.iv.i95 = phi i64 [ 0, %If_CutPinDelayMax.exit ], [ %indvars.iv.next.i99, %bb.h ] ; 2 uses
  %.01213.i96 = phi i64 [ 0, %If_CutPinDelayMax.exit ], [ %.1.i98, %bb.h ] ; 2 uses
  %i.bc = shl nuw nsw i64 %indvars.iv.i95, 2
  %i.bd = and i64 %i.bc, 4294967292               ; 3 uses
  %i.be = lshr i64 %i.ai, %i.bd
  %i.bf = trunc i64 %i.be to i32
  %i.bg = and i32 %i.bf, 15
  %i.bh = lshr i64 %i.bb, %i.bd
  %i.bi = trunc i64 %i.bh to i32
  %i.bj = and i32 %i.bi, 15
  %i.bk = call i32 @llvm.umax.i32(i32 %i.bg, i32 %i.bj) ; 2 uses
  %.not.i97 = icmp eq i32 %i.bk, 0
  br i1 %.not.i97, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i94
  %i.bl = call i32 @llvm.umin.i32(i32 %i.bk, i32 14)
  %i.bm = add nuw nsw i32 %i.bl, 1
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = shl i64 %i.bn, %i.bd
  %i.bp = or i64 %i.bo, %.01213.i96
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i94
  %.1.i98 = phi i64 [ %.01213.i96, %.lr.ph.i94 ], [ %i.bp, %bb.g ] ; 2 uses
  %indvars.iv.next.i99 = add nuw nsw i64 %indvars.iv.i95, 1 ; 2 uses
  %exitcond.not.i100 = icmp eq i64 %indvars.iv.next.i99, %wide.trip.count.i
  br i1 %exitcond.not.i100, label %.lr.ph.i105, label %.lr.ph.i94, !llvm.loop !277

.lr.ph.i105:                                      ; preds = %bb.h, %bb.j
  %indvars.iv.i106 = phi i64 [ %indvars.iv.next.i110, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %.01213.i107 = phi i64 [ %.1.i109, %bb.j ], [ 0, %bb.h ] ; 2 uses
  %i.bq = shl nuw nsw i64 %indvars.iv.i106, 2
  %i.br = and i64 %i.bq, 4294967292               ; 3 uses
  %i.bs = lshr i64 %.1.i, %i.br
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = and i32 %i.bt, 15
  %i.bv = lshr i64 %.1.i98, %i.br
  %i.bw = trunc i64 %i.bv to i32
  %i.bx = and i32 %i.bw, 15
  %i.by = call i32 @llvm.umax.i32(i32 %i.bu, i32 %i.bx) ; 2 uses
  %.not.i108 = icmp eq i32 %i.by, 0
  br i1 %.not.i108, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i105
  %i.bz = call i32 @llvm.umin.i32(i32 %i.by, i32 14)
  %i.ca = add nuw nsw i32 %i.bz, 1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = shl i64 %i.cb, %i.br
  %i.cd = or i64 %i.cc, %.01213.i107
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i105
  %.1.i109 = phi i64 [ %.01213.i107, %.lr.ph.i105 ], [ %i.cd, %bb.i ] ; 2 uses
  %indvars.iv.next.i110 = add nuw nsw i64 %indvars.iv.i106, 1 ; 2 uses
  %exitcond.not.i111 = icmp eq i64 %indvars.iv.next.i110, %wide.trip.count.i
  br i1 %exitcond.not.i111, label %If_CutPinDelayMax.exit112, label %.lr.ph.i105, !llvm.loop !277

If_CutPinDelayMax.exit112:                        ; preds = %bb.j, %.critedge
  %.012.lcssa.i102 = phi i64 [ 0, %.critedge ], [ %.1.i109, %bb.j ]
  store i64 %.012.lcssa.i102, ptr %3, align 8, !tbaa !52
  %i.ce = load i32, ptr %i.b, align 4, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !43
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !43
  %i.cj = call noundef i32 @llvm.smax.i32(i32 %i.cg, i32 %i.ci)
  %i.ck = call noundef i32 @llvm.smax.i32(i32 %i.ce, i32 %i.cj)
  %i.cl = add nsw i32 %i.ck, 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.w

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.cn = lshr i32 %.val86, 27
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !71 ; 2 uses
  %i.cr = icmp ugt i32 %.val86, 402653183
  br i1 %i.cr, label %If_DsdObjTruthId.exit.thread, label %If_DsdObjTruthId.exit

If_DsdObjTruthId.exit.thread:                     ; preds = %bb.k
  %i.cs = load i32, ptr %i.j, align 4, !tbaa !37
  %i.ct = getelementptr i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.ct, align 8, !tbaa !42
  %i.cu = sext i32 %i.cs to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.cu
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !43
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.cq, i64 8
  %.val90197 = load ptr, ptr %i.cy, align 8, !tbaa !76
  %i.cz = getelementptr inbounds [16 x i8], ptr %.val90197, i64 %i.cx
  br label %.lr.ph.preheader

If_DsdObjTruthId.exit:                            ; preds = %bb.k
  %i.da = getelementptr i8, ptr %i.cq, i64 8
  %.val90 = load ptr, ptr %i.da, align 8, !tbaa !76
  %i.db = getelementptr inbounds i8, ptr %.val90, i64 -16 ; 2 uses
  %.not154 = icmp samesign ult i32 %.val86, 134217728
  br i1 %.not154, label %.critedge2, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %If_DsdObjTruthId.exit.thread, %If_DsdObjTruthId.exit
  %i.dc = phi ptr [ %i.cz, %If_DsdObjTruthId.exit.thread ], [ %i.db, %If_DsdObjTruthId.exit ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dd, i64 %indvars.iv
  %i.df = load i32, ptr %i.de, align 4, !tbaa !43 ; 2 uses
  %.not82 = icmp eq i32 %i.df, 0
  br i1 %.not82, label %.critedge2, label %bb.l

bb.l:                                             ; preds = %.lr.ph
  %i.dg = ashr i32 %i.df, 1
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.di = call i32 @If_CutDsdBalancePinDelays_rec(ptr noundef %0, i32 noundef %i.dg, ptr noundef %2, ptr noundef nonnull %i.dh, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val88 = load i32, ptr %i.k, align 4
  %i.dk = lshr i32 %.val88, 27
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = icmp samesign ult i64 %indvars.iv.next, %i.dl
  br i1 %i.dm, label %.lr.ph, label %.critedge2, !llvm.loop !278

.critedge2:                                       ; preds = %.lr.ph, %bb.l, %If_DsdObjTruthId.exit
  %i.dn = phi ptr [ %i.db, %If_DsdObjTruthId.exit ], [ %i.dc, %bb.l ], [ %i.dc, %.lr.ph ]
  %i.do = call i32 @If_CutSopBalancePinDelaysInt(ptr noundef %i.dn, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef %5, ptr noundef %3) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.w

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  %i.dp = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %.not156 = icmp ult i32 %.val86, 134217728
  br i1 %.not156, label %If_LogPinDelaysMulti.exit, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.m
  %i.dq = icmp sgt i32 %5, 0
  %wide.trip.count.i.i = zext nneg i32 %5 to i64
  %scevgep164 = getelementptr inbounds nuw i8, ptr %i.f, i64 4 ; 2 uses
  %scevgep167 = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.dr = load i32, ptr %i.dp, align 4, !tbaa !43 ; 2 uses
  %.not208 = icmp eq i32 %i.dr, 0
  br i1 %.not208, label %.critedge4, label %.lr.ph211

bb.n:                                             ; preds = %If_LogCounterPinDelays.exit
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.next179
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !43 ; 2 uses
  %.not = icmp eq i32 %i.dt, 0
  br i1 %.not, label %.critedge4.loopexit, label %.lr.ph211, !llvm.loop !279

.lr.ph211:                                        ; preds = %.lr.ph149, %bb.n
  %i.du = phi i32 [ %i.dt, %bb.n ], [ %i.dr, %.lr.ph149 ]
  %.0131146210 = phi i32 [ %.2.i, %bb.n ], [ 0, %.lr.ph149 ] ; 8 uses
  %indvars.iv178209 = phi i64 [ %indvars.iv.next179, %bb.n ], [ 0, %.lr.ph149 ] ; 2 uses
  %i.dv = ashr i32 %i.du, 1
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv178209 ; 2 uses
  %i.dx = call i32 @If_CutDsdBalancePinDelays_rec(ptr noundef %0, i32 noundef %i.dv, ptr noundef %2, ptr noundef nonnull %i.dw, ptr noundef %4, i32 noundef %5, ptr noundef %6)
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !52
  %i.dz = sext i32 %.0131146210 to i64            ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.dz
  store i64 %i.dy, ptr %i.ea, align 8, !tbaa !52
  %i.eb = add nsw i32 %.0131146210, 1             ; 3 uses
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.dz
  store i32 %i.dx, ptr %i.ec, align 4, !tbaa !43
  %i.ed = icmp sgt i32 %.0131146210, 0
  br i1 %i.ed, label %.preheader.i, label %If_LogCounterPinDelays.exit

.preheader.i:                                     ; preds = %.lr.ph211
  %invariant.op204 = sub nuw i32 -2, %.0131146210 ; 2 uses
  br i1 %i.dq, label %.preheader.split.us.i, label %.preheader.split.i

.preheader.split.us.i:                            ; preds = %.preheader.i, %.loopexit.us.i
  %indvar172 = phi i32 [ %indvar.next173, %.loopexit.us.i ], [ 0, %.preheader.i ] ; 2 uses
  %.075.us.i = phi i32 [ %.1.us.i, %.loopexit.us.i ], [ %i.eb, %.preheader.i ] ; 4 uses
  %.06674.us.i = phi i32 [ %i.eg, %.loopexit.us.i ], [ %.0131146210, %.preheader.i ] ; 3 uses
  %7 = zext i32 %.06674.us.i to i64               ; 4 uses
  %8 = shl nuw nsw i64 %7, 3                      ; 2 uses
  %scevgep174 = getelementptr i8, ptr %i.e, i64 %8
  %scevgep176 = getelementptr i8, ptr %scevgep167, i64 %8
  %.reass205 = add i32 %indvar172, %invariant.op204
  %9 = shl nuw nsw i64 %7, 2                      ; 2 uses
  %scevgep169 = getelementptr nuw i8, ptr %i.f, i64 %9
  %scevgep171.a = getelementptr i8, ptr %scevgep164, i64 %9
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %7 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !43 ; 3 uses
  %i.eg = add nsw i32 %.06674.us.i, -1            ; 2 uses
  %i.eh = zext nneg i32 %i.eg to i64              ; 2 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.eh ; 3 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !43 ; 4 uses
  %i.ek = icmp slt i32 %i.ef, %i.ej
  br i1 %i.ek, label %If_LogCounterPinDelays.exit, label %bb.o

bb.o:                                             ; preds = %.preheader.split.us.i
  %i.el = icmp sgt i32 %i.ef, %i.ej
  %10 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %7 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.eh ; 4 uses
  br i1 %i.el, label %bb.r, label %.lr.ph.preheader.i.us.i

.lr.ph.preheader.i.us.i:                          ; preds = %bb.o
  %i.en = add nsw i32 %i.ej, 1
  store i32 %i.en, ptr %i.ei, align 4, !tbaa !43
  %i.eo = load i64, ptr %10, align 8, !tbaa !52
  %i.ep = load i64, ptr %i.em, align 8, !tbaa !52
  br label %.lr.ph.i.us.i

.lr.ph.i.us.i:                                    ; preds = %bb.q, %.lr.ph.preheader.i.us.i
  %indvars.iv.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %indvars.iv.next.i.us.i, %bb.q ] ; 2 uses
  %.01213.i.us.i = phi i64 [ 0, %.lr.ph.preheader.i.us.i ], [ %.1.i.us.i, %bb.q ] ; 2 uses
  %i.eq = shl nuw nsw i64 %indvars.iv.i.us.i, 2
  %i.er = and i64 %i.eq, 4294967292               ; 3 uses
  %i.es = lshr i64 %i.eo, %i.er
  %i.et = trunc i64 %i.es to i32
  %i.eu = and i32 %i.et, 15
  %i.ev = lshr i64 %i.ep, %i.er
  %i.ew = trunc i64 %i.ev to i32
  %i.ex = and i32 %i.ew, 15
  %i.ey = call i32 @llvm.umax.i32(i32 %i.eu, i32 %i.ex) ; 2 uses
  %.not.i.us.i = icmp eq i32 %i.ey, 0
  br i1 %.not.i.us.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.us.i
  %i.ez = call i32 @llvm.umin.i32(i32 %i.ey, i32 14)
  %i.fa = add nuw nsw i32 %i.ez, 1
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = shl i64 %i.fb, %i.er
  %i.fd = or i64 %i.fc, %.01213.i.us.i
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.i.us.i
  %.1.i.us.i = phi i64 [ %.01213.i.us.i, %.lr.ph.i.us.i ], [ %i.fd, %bb.p ] ; 2 uses
  %indvars.iv.next.i.us.i = add nuw nsw i64 %indvars.iv.i.us.i, 1 ; 2 uses
  %exitcond.not.i.us.i = icmp eq i64 %indvars.iv.next.i.us.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.us.i, label %If_CutPinDelayMax.exit.loopexit.us.i, label %.lr.ph.i.us.i, !llvm.loop !277

bb.r:                                             ; preds = %bb.o
  store i32 %i.ej, ptr %i.ee, align 4, !tbaa !43
  store i32 %i.ef, ptr %i.ei, align 4, !tbaa !43
  %11 = load i64, ptr %10, align 8, !tbaa !52
  %12 = load i64, ptr %i.em, align 8, !tbaa !52
  store i64 %12, ptr %10, align 8, !tbaa !52
  store i64 %11, ptr %i.em, align 8, !tbaa !52
  br label %.loopexit.us.i

.loopexit.us.i:                                   ; preds = %.lr.ph.us.i.preheader, %If_CutPinDelayMax.exit.loopexit.us.i, %bb.r
  %.1.us.i = phi i32 [ %.075.us.i, %bb.r ], [ %i.fe, %If_CutPinDelayMax.exit.loopexit.us.i ], [ %i.fe, %.lr.ph.us.i.preheader ] ; 2 uses
  %indvar.next173 = add nuw nsw i32 %indvar172, 1 ; 2 uses
  %exitcond177.not = icmp eq i32 %indvar.next173, %.0131146210
  br i1 %exitcond177.not, label %If_LogCounterPinDelays.exit, label %.preheader.split.us.i, !llvm.loop !280

If_CutPinDelayMax.exit.loopexit.us.i:             ; preds = %bb.q
  store i64 %.1.i.us.i, ptr %i.em, align 8, !tbaa !52
  %i.fe = add nsw i32 %.075.us.i, -1              ; 3 uses
  %i.ff = icmp slt i32 %.06674.us.i, %i.fe
  br i1 %i.ff, label %.lr.ph.us.i.preheader, label %.loopexit.us.i

.lr.ph.us.i.preheader:                            ; preds = %If_CutPinDelayMax.exit.loopexit.us.i
  %i.fg = add i32 %.075.us.i, %.reass205
  %i.fh = zext i32 %i.fg to i64                   ; 2 uses
  %i.fi = shl nuw nsw i64 %i.fh, 2
  %i.fj = add nuw nsw i64 %i.fi, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep169, ptr noundef nonnull align 4 dereferenceable(1) %scevgep171.a, i64 %i.fj, i1 false), !tbaa !43
  %i.fk = shl nuw nsw i64 %i.fh, 3
  %i.fl = add nuw nsw i64 %i.fk, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep174, ptr noundef nonnull align 8 dereferenceable(1) %scevgep176, i64 %i.fl, i1 false), !tbaa !52
  br label %.loopexit.us.i

.preheader.split.i:                               ; preds = %.preheader.i, %.loopexit.i
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.preheader.i ] ; 2 uses
  %.075.i = phi i32 [ %.1.i113, %.loopexit.i ], [ %i.eb, %.preheader.i ] ; 4 uses
  %.06674.i = phi i32 [ %i.fo, %.loopexit.i ], [ %.0131146210, %.preheader.i ] ; 3 uses
  %13 = zext i32 %.06674.i to i64                 ; 4 uses
  %14 = shl nuw nsw i64 %13, 3                    ; 2 uses
  %scevgep166 = getelementptr i8, ptr %i.e, i64 %14
  %scevgep168 = getelementptr i8, ptr %scevgep167, i64 %14
  %.reass = add i32 %indvar, %invariant.op204
  %15 = shl nuw nsw i64 %13, 2                    ; 2 uses
  %scevgep = getelementptr nuw i8, ptr %i.f, i64 %15
  %scevgep165.a = getelementptr i8, ptr %scevgep164, i64 %15
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %13 ; 2 uses
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !43 ; 3 uses
  %i.fo = add nsw i32 %.06674.i, -1               ; 2 uses
  %i.fp = zext nneg i32 %i.fo to i64              ; 3 uses
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.fp ; 3 uses
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !43 ; 4 uses
  %i.fs = icmp slt i32 %i.fn, %i.fr
  br i1 %i.fs, label %If_LogCounterPinDelays.exit, label %bb.s

bb.s:                                             ; preds = %.preheader.split.i
  %i.ft = icmp sgt i32 %i.fn, %i.fr
  br i1 %i.ft, label %bb.t, label %If_CutPinDelayMax.exit.i

bb.t:                                             ; preds = %bb.s
  store i32 %i.fr, ptr %i.fm, align 4, !tbaa !43
  store i32 %i.fn, ptr %i.fq, align 4, !tbaa !43
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %13 ; 2 uses
  %17 = load i64, ptr %16, align 8, !tbaa !52
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fp ; 2 uses
  %18 = load i64, ptr %i.fu, align 8, !tbaa !52
  store i64 %18, ptr %16, align 8, !tbaa !52
  store i64 %17, ptr %i.fu, align 8, !tbaa !52
  br label %.loopexit.i

If_CutPinDelayMax.exit.i:                         ; preds = %bb.s
  %i.fv = add nsw i32 %i.fr, 1
  store i32 %i.fv, ptr %i.fq, align 4, !tbaa !43
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.fp
  store i64 0, ptr %i.fw, align 8, !tbaa !52
  %i.fx = add nsw i32 %.075.i, -1                 ; 3 uses
  %i.fy = icmp slt i32 %.06674.i, %i.fx
  br i1 %i.fy, label %.lr.ph.i114.preheader, label %.loopexit.i

.lr.ph.i114.preheader:                            ; preds = %If_CutPinDelayMax.exit.i
  %i.fz = add i32 %.075.i, %.reass
  %i.ga = zext i32 %i.fz to i64                   ; 2 uses
  %i.gb = shl nuw nsw i64 %i.ga, 2
  %i.gc = add nuw nsw i64 %i.gb, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %scevgep165.a, i64 %i.gc, i1 false), !tbaa !43
  %i.gd = shl nuw nsw i64 %i.ga, 3
  %i.ge = add nuw nsw i64 %i.gd, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep166, ptr noundef nonnull align 8 dereferenceable(1) %scevgep168, i64 %i.ge, i1 false), !tbaa !52
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.i114.preheader, %If_CutPinDelayMax.exit.i, %bb.t
  %.1.i113 = phi i32 [ %.075.i, %bb.t ], [ %i.fx, %If_CutPinDelayMax.exit.i ], [ %i.fx, %.lr.ph.i114.preheader ] ; 2 uses
  %indvar.next = add nuw i32 %indvar, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %.0131146210
  br i1 %exitcond.not, label %If_LogCounterPinDelays.exit, label %.preheader.split.i, !llvm.loop !280

If_LogCounterPinDelays.exit:                      ; preds = %.preheader.split.i, %.loopexit.i, %.preheader.split.us.i, %.loopexit.us.i, %.lr.ph211
  %.2.i = phi i32 [ %i.eb, %.lr.ph211 ], [ %.1.us.i, %.loopexit.us.i ], [ %.075.us.i, %.preheader.split.us.i ], [ %.1.i113, %.loopexit.i ], [ %.075.i, %.preheader.split.i ] ; 5 uses
  %i.gf = load i32, ptr %i.f, align 16, !tbaa !43 ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178209, 1 ; 3 uses
  %.val87 = load i32, ptr %i.k, align 4
  %i.gg = lshr i32 %.val87, 27
  %i.gh = zext nneg i32 %i.gg to i64
  %i.gi = icmp samesign ult i64 %indvars.iv.next179, %i.gh
  br i1 %i.gi, label %bb.n, label %If_LogCounterPinDelays.exit..critedge4_crit_edge, !llvm.loop !279

If_LogCounterPinDelays.exit..critedge4_crit_edge: ; preds = %If_LogCounterPinDelays.exit
  %i.gj = icmp sgt i32 %.2.i, 1
  %i.gk = zext i1 %i.gj to i32
  %i.gl = add nsw i32 %i.gf, %i.gk
  br label %.critedge4, !llvm.loop !279

.critedge4.loopexit:                              ; preds = %bb.n
  %i.gm = icmp sgt i32 %.2.i, 1
  %i.gn = zext i1 %i.gm to i32
  %i.go = add nsw i32 %i.gf, %i.gn
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %If_LogCounterPinDelays.exit..critedge4_crit_edge, %.lr.ph149
  %.0131.lcssa = phi i32 [ 0, %.lr.ph149 ], [ %.2.i, %If_LogCounterPinDelays.exit..critedge4_crit_edge ], [ %.2.i, %.critedge4.loopexit ] ; 4 uses
  %.0.lcssa = phi i32 [ 0, %.lr.ph149 ], [ %i.gl, %If_LogCounterPinDelays.exit..critedge4_crit_edge ], [ %i.go, %.critedge4.loopexit ] ; 3 uses
  %i.gp = icmp sgt i32 %.0131.lcssa, 1
  br i1 %i.gp, label %.lr.ph.i117, label %If_LogPinDelaysMulti.exit

.lr.ph.i117:                                      ; preds = %.critedge4
  %i.gq = icmp sgt i32 %5, 0
  %wide.trip.count.i.i118 = zext nneg i32 %5 to i64
  %i.gr = zext nneg i32 %.0131.lcssa to i64       ; 2 uses
  br i1 %i.gq, label %.lr.ph.preheader.i.us.i119, label %If_CutPinDelayMax.exit.preheader.i

If_CutPinDelayMax.exit.preheader.i:               ; preds = %.lr.ph.i117
  %i.gs = shl nuw nsw i64 %i.gr, 3
  %i.gt = add nsw i64 %i.gs, -16
  %i.gu = add nsw i32 %.0131.lcssa, -2
  %i.gv = zext nneg i32 %i.gu to i64
  %i.gw = shl nuw nsw i64 %i.gv, 3
  %i.gx = sub nsw i64 %i.gt, %i.gw
  %scevgep.i = getelementptr i8, ptr %i.e, i64 %i.gx
  %i.gy = add nsw i32 %.0131.lcssa, -1
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = shl nuw nsw i64 %i.gz, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.i, i8 0, i64 %i.ha, i1 false), !tbaa !52
  br label %If_LogPinDelaysMulti.exit

.lr.ph.preheader.i.us.i119:                       ; preds = %.lr.ph.i117, %If_CutPinDelayMax.exit.loopexit.us.i129
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %If_CutPinDelayMax.exit.loopexit.us.i129 ], [ %i.gr, %.lr.ph.i117 ] ; 3 uses
  %indvars.iv.next.i121 = add nsw i64 %indvars.iv.i120, -1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next.i121
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !52
  %i.hd = getelementptr [8 x i8], ptr %i.e, i64 %indvars.iv.i120
  %i.he = getelementptr i8, ptr %i.hd, i64 -16    ; 2 uses
  %i.hf = load i64, ptr %i.he, align 8, !tbaa !52
  br label %.lr.ph.i.us.i122

.lr.ph.i.us.i122:                                 ; preds = %bb.v, %.lr.ph.preheader.i.us.i119
  %indvars.iv.i.us.i123 = phi i64 [ 0, %.lr.ph.preheader.i.us.i119 ], [ %indvars.iv.next.i.us.i127, %bb.v ] ; 2 uses
  %.01213.i.us.i124 = phi i64 [ 0, %.lr.ph.preheader.i.us.i119 ], [ %.1.i.us.i126, %bb.v ] ; 2 uses
  %i.hg = shl nuw nsw i64 %indvars.iv.i.us.i123, 2
  %i.hh = and i64 %i.hg, 4294967292               ; 3 uses
  %i.hi = lshr i64 %i.hc, %i.hh
  %i.hj = trunc i64 %i.hi to i32
  %i.hk = and i32 %i.hj, 15
  %i.hl = lshr i64 %i.hf, %i.hh
  %i.hm = trunc i64 %i.hl to i32
  %i.hn = and i32 %i.hm, 15
  %i.ho = call i32 @llvm.umax.i32(i32 %i.hk, i32 %i.hn) ; 2 uses
  %.not.i.us.i125 = icmp eq i32 %i.ho, 0
  br i1 %.not.i.us.i125, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.us.i122
  %i.hp = call i32 @llvm.umin.i32(i32 %i.ho, i32 14)
  %i.hq = add nuw nsw i32 %i.hp, 1
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = shl i64 %i.hr, %i.hh
  %i.ht = or i64 %i.hs, %.01213.i.us.i124
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph.i.us.i122
  %.1.i.us.i126 = phi i64 [ %.01213.i.us.i124, %.lr.ph.i.us.i122 ], [ %i.ht, %bb.u ] ; 2 uses
  %indvars.iv.next.i.us.i127 = add nuw nsw i64 %indvars.iv.i.us.i123, 1 ; 2 uses
  %exitcond.not.i.us.i128 = icmp eq i64 %indvars.iv.next.i.us.i127, %wide.trip.count.i.i118
  br i1 %exitcond.not.i.us.i128, label %If_CutPinDelayMax.exit.loopexit.us.i129, label %.lr.ph.i.us.i122, !llvm.loop !277

If_CutPinDelayMax.exit.loopexit.us.i129:          ; preds = %bb.v
  store i64 %.1.i.us.i126, ptr %i.he, align 8, !tbaa !52
  %i.hu = icmp sgt i64 %indvars.iv.i120, 2
  br i1 %i.hu, label %.lr.ph.preheader.i.us.i119, label %If_LogPinDelaysMulti.exit, !llvm.loop !281

If_LogPinDelaysMulti.exit:                        ; preds = %If_CutPinDelayMax.exit.loopexit.us.i129, %bb.m, %.critedge4, %If_CutPinDelayMax.exit.preheader.i
  %.0.lcssa201 = phi i32 [ 0, %bb.m ], [ %.0.lcssa, %If_CutPinDelayMax.exit.preheader.i ], [ %.0.lcssa, %.critedge4 ], [ %.0.lcssa, %If_CutPinDelayMax.exit.loopexit.us.i129 ]
  %i.hv = load i64, ptr %i.e, align 16, !tbaa !52
  store i64 %i.hv, ptr %3, align 8, !tbaa !52
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.w

bb.w:                                             ; preds = %If_LogPinDelaysMulti.exit, %.critedge2, %If_CutPinDelayMax.exit112, %bb.b
  %.078 = phi i32 [ %i.x, %bb.b ], [ %i.cl, %If_CutPinDelayMax.exit112 ], [ %i.do, %.critedge2 ], [ %.0.lcssa201, %If_LogPinDelaysMulti.exit ]
  ret i32 %.078
}

declare i32 @If_CutSopBalancePinDelaysInt(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define i32 @If_CutDsdBalancePinDelays(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca [15 x i32], align 16              ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.e = load i64, ptr %i.d, align 4              ; 2 uses
  %i.f = trunc i64 %i.e to i32
  %i.g = lshr i32 %i.f, 24                        ; 7 uses
  %trunc = trunc nuw i32 %i.g to i8
  switch i8 %trunc, label %bb.c [
    i8 0, label %bb.e
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %2, align 1, !tbaa !140
  %i.h = getelementptr i8, ptr %0, i64 40
  %.val23 = load ptr, ptr %i.h, align 8, !tbaa !282
  %i.i = getelementptr i8, ptr %.val23, i64 8
  %.val23.val = load ptr, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.k = load i32, ptr %i.j, align 4, !tbaa !43
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %.val23.val, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 92
  %i.p = load float, ptr %i.o, align 4, !tbaa !292
  %i.q = fptosi float %i.p to i32
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i64 0, ptr %i.a, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.r = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.r, align 8, !tbaa !282
  %i.s = getelementptr i8, ptr %.val, i64 8
  %.val.val = load ptr, ptr %i.s, align 8, !tbaa !26 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 44 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.u = icmp eq i32 %i.g, 1
  br i1 %i.u, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 254
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.d ]
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = load i32, ptr %i.v, align 4, !tbaa !43
  %i.x = sext i32 %i.w to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.x
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 92
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !292
  %i.ac = fptosi float %i.ab to i32
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ad, align 8, !tbaa !43
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.next
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %.val.val, i64 %i.ag
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !27
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 92
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !292
  %i.al = fptosi float %i.ak to i32
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.next
  store i32 %i.al, ptr %i.am, align 4, !tbaa !43
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %bb.d, !llvm.loop !294

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
end_hunk_0
begin_hunk_1_@If_CutDsdBalanceEval_rec:bb.a
  br i1 %.not164, label %.critedge, label %.lr.ph153

.lr.ph153:                                        ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.not130 = icmp eq ptr %4, null
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph153, %bb.j
  %indvars.iv173 = phi i64 [ 0, %.lr.ph153 ], [ %indvars.iv.next174, %bb.j ] ; 4 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv173
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !43  ; 3 uses
  %.not128 = icmp eq i32 %i.aa, 0
  br i1 %.not128, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = ashr i32 %i.aa, 1
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv173 ; 3 uses
  %i.ad = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.ab, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.ac, i32 noundef %6, ptr noundef %7, ptr noundef %8) ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv173
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !43
  %i.af = icmp eq i32 %i.ad, -1
  br i1 %i.af, label %.loopexit144, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %.not130, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !43
  %i.ah = and i32 %i.aa, 1
  %i.ai = xor i32 %i.ag, %i.ah
  store i32 %i.ai, ptr %i.ac, align 4, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %.val140 = load i32, ptr %i.l, align 4
  %i.aj = lshr i32 %.val140, 27
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = icmp samesign ult i64 %indvars.iv.next174, %i.ak
  br i1 %i.al, label %bb.f, label %.critedge, !llvm.loop !305

.critedge:                                        ; preds = %bb.f, %bb.j, %bb.e
  %.not129 = icmp eq ptr %4, null
  br i1 %.not129, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.critedge
  %i.am = load i32, ptr %i.b, align 4, !tbaa !43  ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43
  %i.ar = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.am, i32 noundef %i.ao, i32 noundef %6)
  %i.as = xor i32 %i.am, 1
  %i.at = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.as, i32 noundef %i.aq, i32 noundef %6)
  %i.au = xor i32 %i.ar, 1
  %i.av = xor i32 %i.at, 1
  %i.aw = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.au, i32 noundef %i.av, i32 noundef %6)
  %i.ax = xor i32 %i.aw, 1
  store i32 %i.ax, ptr %5, align 4, !tbaa !43
  br label %bb.m

bb.l:                                             ; preds = %.critedge
  %i.ay = load i32, ptr %7, align 4, !tbaa !43
  %i.az = add nsw i32 %i.ay, 3
  store i32 %i.az, ptr %7, align 4, !tbaa !43
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ba = load i32, ptr %i.a, align 4, !tbaa !43
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !43
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  %i.bf = call noundef i32 @llvm.smax.i32(i32 %i.bc, i32 %i.be)
  %i.bg = call noundef i32 @llvm.smax.i32(i32 %i.ba, i32 %i.bf)
  %i.bh = add nsw i32 %i.bg, 2
  br label %.loopexit144

.loopexit144:                                     ; preds = %bb.g, %bb.m
  %.0114 = phi i32 [ %i.bh, %bb.m ], [ -1, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  br label %bb.ac

bb.n:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #40
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bj = lshr i32 %.val137, 27
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bk
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !71
  %i.bn = icmp ugt i32 %.val137, 402653183
  br i1 %i.bn, label %bb.o, label %If_DsdObjTruthId.exit

bb.o:                                             ; preds = %bb.n
  %i.bo = load i32, ptr %i.k, align 4, !tbaa !37
  %i.bp = getelementptr i8, ptr %0, i64 80
  %.val.i = load ptr, ptr %i.bp, align 8, !tbaa !42
  %i.bq = sext i32 %i.bo to i64
  %i.br = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !43
  %i.bt = sext i32 %i.bs to i64
  br label %If_DsdObjTruthId.exit

If_DsdObjTruthId.exit:                            ; preds = %bb.n, %bb.o
  %i.bu = phi i64 [ %i.bt, %bb.o ], [ -1, %bb.n ]
  %i.bv = getelementptr i8, ptr %i.bm, i64 8
  %.val141 = load ptr, ptr %i.bv, align 8, !tbaa !76
  %i.bw = getelementptr inbounds [16 x i8], ptr %.val141, i64 %i.bu ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 4
  %.val133 = load i32, ptr %i.bx, align 4, !tbaa !40
  %i.by = icmp eq i32 %.val133, 0
  br i1 %i.by, label %.loopexit145, label %.preheader

.preheader:                                       ; preds = %If_DsdObjTruthId.exit
  %.not163 = icmp ult i32 %.val137, 134217728
  br i1 %.not163, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.bz = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not127 = icmp eq ptr %4, null
  br i1 %.not127, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.q
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %bb.q ], [ 0, %.lr.ph ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv170
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !43 ; 2 uses
  %.not126.us = icmp eq i32 %i.cb, 0
  br i1 %.not126.us, label %.critedge2, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.cc = ashr i32 %i.cb, 1
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv170
  %i.ce = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.cc, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.cd, i32 noundef %6, ptr noundef %7, ptr noundef %8) ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv170
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !43
  %i.cg = icmp eq i32 %i.ce, -1
  br i1 %i.cg, label %.loopexit145, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %.val139.us = load i32, ptr %i.l, align 4
  %i.ch = lshr i32 %.val139.us, 27
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = icmp samesign ult i64 %indvars.iv.next171, %i.ci
  br i1 %i.cj, label %.lr.ph.split.us, label %.critedge2, !llvm.loop !306

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.s ], [ 0, %.lr.ph ] ; 4 uses
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !43 ; 3 uses
  %.not126 = icmp eq i32 %i.cl, 0
  br i1 %.not126, label %.critedge2, label %bb.r

bb.r:                                             ; preds = %.lr.ph.split
  %i.cm = ashr i32 %i.cl, 1
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv ; 3 uses
  %i.co = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.cm, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %4, ptr noundef nonnull %i.cn, i32 noundef %6, ptr noundef %7, ptr noundef %8) ; 2 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 %i.co, ptr %i.cp, align 4, !tbaa !43
  %i.cq = icmp eq i32 %i.co, -1
  br i1 %i.cq, label %.loopexit145, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cr = load i32, ptr %i.cn, align 4, !tbaa !43
  %i.cs = and i32 %i.cl, 1
  %i.ct = xor i32 %i.cr, %i.cs
  store i32 %i.ct, ptr %i.cn, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val139 = load i32, ptr %i.l, align 4
  %i.cu = lshr i32 %.val139, 27
  %i.cv = zext nneg i32 %i.cu to i64
  %i.cw = icmp samesign ult i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %.lr.ph.split, label %.critedge2, !llvm.loop !306

.critedge2:                                       ; preds = %.lr.ph.split, %bb.s, %.lr.ph.split.us, %bb.q, %.preheader
  %i.cx = call i32 @If_CutSopBalanceEvalInt(ptr noundef %i.bw, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7) #40
  br label %.loopexit145

.loopexit145:                                     ; preds = %bb.r, %bb.p, %If_DsdObjTruthId.exit, %.critedge2
  %.1115 = phi i32 [ %i.cx, %.critedge2 ], [ -1, %If_DsdObjTruthId.exit ], [ -1, %bb.p ], [ -1, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #40
  br label %bb.ac

bb.t:                                             ; preds = %bb.a
  %i.cy = icmp eq i32 %i.m, 4                     ; 2 uses
  %i.cz = zext i1 %i.cy to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #40
  store i32 0, ptr %i.e, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #40
  %i.da = lshr i32 %.val137, 27                   ; 2 uses
  %.not165 = icmp eq i32 %i.da, 0
  br i1 %.not165, label %.critedge4, label %.lr.ph158

.lr.ph158:                                        ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %.not125 = icmp eq ptr %4, null
  %scevgep176 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !43 ; 2 uses
  %.not201 = icmp eq i32 %i.dc, 0
  br i1 %.not201, label %.critedge4.loopexit, label %.lr.ph203

bb.u:                                             ; preds = %bb.z
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.db, i64 %indvars.iv.next179
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !43 ; 2 uses
  %.not = icmp eq i32 %i.de, 0
  br i1 %.not, label %.critedge4.loopexit, label %.lr.ph203, !llvm.loop !307

.lr.ph203:                                        ; preds = %.lr.ph158, %bb.u
  %i.df = phi i32 [ %i.de, %bb.u ], [ %i.dc, %.lr.ph158 ] ; 2 uses
  %indvars.iv178202 = phi i64 [ %indvars.iv.next179, %bb.u ], [ 0, %.lr.ph158 ] ; 2 uses
  %i.dg = ashr i32 %i.df, 1
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv178202 ; 3 uses
  %i.di = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.dg, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.dh, i32 noundef %6, ptr noundef %7, ptr noundef %8) ; 3 uses
  %i.dj = icmp eq i32 %i.di, -1
  br i1 %i.dj, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %.lr.ph203
  br i1 %.not125, label %.split116, label %.split

.split:                                           ; preds = %bb.v
  %i.dk = load i32, ptr %i.dh, align 4, !tbaa !43
  %i.dl = and i32 %i.df, 1
  %i.dm = xor i32 %i.dk, %i.dl                    ; 2 uses
  store i32 %i.dm, ptr %i.dh, align 4, !tbaa !43
  %i.dn = call fastcc i32 @If_LogCounterAddAig(ptr noundef %i.f, ptr noundef %i.e, ptr noundef %i.g, i32 noundef %i.di, i32 noundef %i.dm, ptr noundef nonnull %4, i32 noundef %6, i32 noundef %i.cz)
  br label %bb.z

.split116:                                        ; preds = %bb.v
  %i.do = load i32, ptr %i.e, align 4, !tbaa !43  ; 6 uses
  %.pre.i = sext i32 %i.do to i64
  %i.dp = add nsw i32 %i.do, 1                    ; 2 uses
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.f, i64 %.pre.i
  store i32 %i.di, ptr %i.dq, align 4, !tbaa !43
  %i.dr = icmp sgt i32 %i.do, 0
  br i1 %i.dr, label %.preheader.i.preheader, label %If_LogCounterAddAig.exit

.preheader.i.preheader:                           ; preds = %.split116
  %invariant.op = sub i32 -2, %i.do
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %.loopexit.i
  %indvar = phi i32 [ %indvar.next, %.loopexit.i ], [ 0, %.preheader.i.preheader ] ; 2 uses
  %.081.i = phi i32 [ %.1.i, %.loopexit.i ], [ %i.dp, %.preheader.i.preheader ] ; 4 uses
  %.07180.i = phi i32 [ %i.du, %.loopexit.i ], [ %i.do, %.preheader.i.preheader ] ; 3 uses
  %9 = zext i32 %.07180.i to i64                  ; 2 uses
  %10 = shl nuw nsw i64 %9, 2                     ; 2 uses
  %scevgep.a = getelementptr nuw i8, ptr %i.f, i64 %10
  %scevgep177 = getelementptr i8, ptr %scevgep176, i64 %10
  %.reass.reass = add i32 %indvar, %invariant.op
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %9 ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !43 ; 3 uses
  %i.du = add nsw i32 %.07180.i, -1               ; 2 uses
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.dv ; 3 uses
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !43 ; 4 uses
  %i.dy = icmp slt i32 %i.dt, %i.dx
  br i1 %i.dy, label %If_LogCounterAddAig.exit, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.dz = icmp sgt i32 %i.dt, %i.dx
  br i1 %i.dz, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !43
  store i32 %i.dt, ptr %i.dw, align 4, !tbaa !43
  br label %.loopexit.i

bb.y:                                             ; preds = %bb.w
  %i.ea = add nsw i32 %i.dx, 1
  store i32 %i.ea, ptr %i.dw, align 4, !tbaa !43
  %i.eb = add nsw i32 %.081.i, -1                 ; 3 uses
  %i.ec = icmp slt i32 %.07180.i, %i.eb
  br i1 %i.ec, label %.lr.ph.split.us.i.preheader, label %.loopexit.i

.lr.ph.split.us.i.preheader:                      ; preds = %bb.y
  %i.ed = add i32 %.081.i, %.reass.reass
  %i.ee = zext i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 2
  %i.eg = add nuw nsw i64 %i.ef, 4
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.a, ptr noundef nonnull align 4 dereferenceable(1) %scevgep177, i64 %i.eg, i1 false), !tbaa !43
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph.split.us.i.preheader, %bb.y, %bb.x
  %.1.i = phi i32 [ %i.eb, %bb.y ], [ %.081.i, %bb.x ], [ %i.eb, %.lr.ph.split.us.i.preheader ] ; 2 uses
  %indvar.next = add nuw i32 %indvar, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %indvar.next, %i.do
  br i1 %exitcond.not, label %If_LogCounterAddAig.exit, label %.preheader.i, !llvm.loop !308

If_LogCounterAddAig.exit:                         ; preds = %.preheader.i, %.loopexit.i, %.split116
  %.2.i = phi i32 [ %i.dp, %.split116 ], [ %.1.i, %.loopexit.i ], [ %.081.i, %.preheader.i ] ; 2 uses
  store i32 %.2.i, ptr %i.e, align 4, !tbaa !43
  %i.eh = load i32, ptr %i.f, align 16, !tbaa !43
  %i.ei = icmp sgt i32 %.2.i, 1
  %i.ej = zext i1 %i.ei to i32
  %i.ek = add nsw i32 %i.eh, %i.ej
  br label %bb.z

bb.z:                                             ; preds = %If_LogCounterAddAig.exit, %.split
  %phi.call = phi i32 [ %i.dn, %.split ], [ %i.ek, %If_LogCounterAddAig.exit ] ; 2 uses
  %indvars.iv.next179 = add nuw nsw i64 %indvars.iv178202, 1 ; 3 uses
  %.val138 = load i32, ptr %i.l, align 4
  %i.el = lshr i32 %.val138, 27                   ; 3 uses
  %i.em = zext nneg i32 %i.el to i64
  %i.en = icmp samesign ult i64 %indvars.iv.next179, %i.em
  br i1 %i.en, label %bb.u, label %..critedge4.loopexit_crit_edge205, !llvm.loop !307

..critedge4.loopexit_crit_edge205:                ; preds = %bb.z
  br label %.critedge4.loopexit, !llvm.loop !307

.critedge4.loopexit:                              ; preds = %bb.u, %..critedge4.loopexit_crit_edge205, %.lr.ph158
  %.0.lcssa.ph = phi i32 [ %phi.call, %..critedge4.loopexit_crit_edge205 ], [ 0, %.lr.ph158 ], [ %phi.call, %bb.u ]
  %.lcssa.ph = phi i32 [ %i.el, %..critedge4.loopexit_crit_edge205 ], [ %i.da, %.lr.ph158 ], [ %i.el, %bb.u ]
  %i.eo = add nsw i32 %.lcssa.ph, -1
  br label %.critedge4

.critedge4:                                       ; preds = %.critedge4.loopexit, %bb.t
  %.0.lcssa = phi i32 [ 0, %bb.t ], [ %.0.lcssa.ph, %.critedge4.loopexit ] ; 2 uses
  %.lcssa = phi i32 [ -1, %bb.t ], [ %i.eo, %.critedge4.loopexit ]
  %.not124 = icmp eq ptr %4, null
  br i1 %.not124, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.critedge4
  %i.ep = load i32, ptr %i.e, align 4, !tbaa !43  ; 2 uses
  %i.eq = icmp sgt i32 %i.ep, 1
  br i1 %i.eq, label %.lr.ph.i, label %If_LogCreateAndXorMulti.exit

.lr.ph.i:                                         ; preds = %bb.aa
  %i.er = zext nneg i32 %i.ep to i64              ; 2 uses
  br i1 %i.cy, label %If_LogCreateAndXor.exit.i, label %If_LogCreateAndXor.exit.us.i

If_LogCreateAndXor.exit.us.i:                     ; preds = %.lr.ph.i, %If_LogCreateAndXor.exit.us.i
  %indvars.iv15.i = phi i64 [ %indvars.iv.next16.i, %If_LogCreateAndXor.exit.us.i ], [ %i.er, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next16.i = add nsw i64 %indvars.iv15.i, -1 ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next16.i
  %i.et = load i32, ptr %i.es, align 4, !tbaa !43
  %i.eu = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv15.i
  %i.ev = getelementptr i8, ptr %i.eu, i64 -8     ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !43
  %i.ex = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.et, i32 noundef %i.ew, i32 noundef %6)
  store i32 %i.ex, ptr %i.ev, align 4, !tbaa !43
  %i.ey = icmp samesign ugt i64 %indvars.iv15.i, 2
  br i1 %i.ey, label %If_LogCreateAndXor.exit.us.i, label %If_LogCreateAndXorMulti.exit, !llvm.loop !309

If_LogCreateAndXor.exit.i:                        ; preds = %.lr.ph.i, %If_LogCreateAndXor.exit.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %If_LogCreateAndXor.exit.i ], [ %i.er, %.lr.ph.i ] ; 3 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next.i
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !43 ; 2 uses
  %i.fb = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv.i
  %i.fc = getelementptr i8, ptr %i.fb, i64 -8     ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !43 ; 2 uses
  %i.fe = xor i32 %i.fd, 1
  %i.ff = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fa, i32 noundef %i.fe, i32 noundef %6)
  %i.fg = xor i32 %i.fa, 1
  %i.fh = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fg, i32 noundef %i.fd, i32 noundef %6)
  %i.fi = xor i32 %i.ff, 1
  %i.fj = xor i32 %i.fh, 1
  %i.fk = call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %4, i32 noundef %i.fi, i32 noundef %i.fj, i32 noundef %6)
  %i.fl = xor i32 %i.fk, 1
  store i32 %i.fl, ptr %i.fc, align 4, !tbaa !43
  %i.fm = icmp samesign ugt i64 %indvars.iv.i, 2
  br i1 %i.fm, label %If_LogCreateAndXor.exit.i, label %If_LogCreateAndXorMulti.exit, !llvm.loop !309

If_LogCreateAndXorMulti.exit:                     ; preds = %If_LogCreateAndXor.exit.us.i, %If_LogCreateAndXor.exit.i, %bb.aa
  %i.fn = load i32, ptr %i.g, align 16, !tbaa !43
  store i32 %i.fn, ptr %5, align 4, !tbaa !43
  br label %.loopexit

bb.ab:                                            ; preds = %.critedge4
  %i.fo = load i32, ptr %7, align 4, !tbaa !43
  %i.fp = add nsw i32 %.lcssa, %i.fo
  store i32 %i.fp, ptr %7, align 4, !tbaa !43
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph203, %If_LogCreateAndXorMulti.exit, %bb.ab
  %.2 = phi i32 [ %.0.lcssa, %If_LogCreateAndXorMulti.exit ], [ %.0.lcssa, %bb.ab ], [ -1, %.lr.ph203 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #40
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %.loopexit145, %.loopexit144, %bb.d
  %.3 = phi i32 [ %i.x, %bb.d ], [ %.0114, %.loopexit144 ], [ %.1115, %.loopexit145 ], [ %.2, %.loopexit ]
  ret i32 %.3
}

declare i32 @If_CutSopBalanceEvalInt(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc i32 @If_LogCounterAddAig(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, i32 noundef range(i32 0, -1) %3, i32 noundef %4, ptr nofree noundef captures(address_is_null) %5, i32 noundef %6, i32 noundef range(i32 0, 2) %7) unnamed_addr #26 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !43     ; 5 uses
  %.not = icmp eq ptr %5, null                    ; 3 uses
  %.pre = sext i32 %i.a to i64                    ; 2 uses
  br i1 %.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds [4 x i8], ptr %2, i64 %.pre
  store i32 %4, ptr %i.b, align 4, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.a, %bb.b
  %i.c = add nsw i32 %i.a, 1                      ; 2 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %0, i64 %.pre
  store i32 %3, ptr %i.d, align 4, !tbaa !43
  %i.e = icmp sgt i32 %i.a, 0
  br i1 %i.e, label %.preheader, label %.loopexit78

.preheader:                                       ; preds = %._crit_edge
  %.not.i = icmp eq i32 %7, 0
  %i.f = sub nuw i32 -2, %i.a                     ; 3 uses
  %scevgep3 = getelementptr i8, ptr %0, i64 8
  %scevgep6 = getelementptr i8, ptr %2, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %.loopexit
  %indvar = phi i32 [ 0, %.preheader ], [ %indvar.next, %.loopexit ] ; 4 uses
  %.081 = phi i32 [ %i.c, %.preheader ], [ %.1, %.loopexit ] ; 8 uses
  %.07180 = phi i32 [ %i.a, %.preheader ], [ %i.m, %.loopexit ] ; 6 uses
  %i.g = add i32 %i.f, %indvar
  %8 = zext i32 %.07180 to i64                    ; 2 uses
  %9 = shl nuw nsw i64 %8, 2                      ; 2 uses
  %scevgep.a = getelementptr nuw i8, ptr %0, i64 %9
  %i.h = add i32 %i.f, %indvar
  %scevgep5 = getelementptr i8, ptr %2, i64 %9
  %i.i = add i32 %i.f, %indvar
  %i.j = zext nneg i32 %.07180 to i64             ; 10 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !43   ; 3 uses
  %i.m = add nsw i32 %.07180, -1                  ; 2 uses
  %i.n = zext nneg i32 %i.m to i64                ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.n ; 3 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !43   ; 4 uses
  %i.q = icmp slt i32 %i.l, %i.p
  br i1 %i.q, label %.loopexit78, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = icmp sgt i32 %i.l, %i.p
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i32 %i.p, ptr %i.k, align 4, !tbaa !43
  store i32 %i.l, ptr %i.o, align 4, !tbaa !43
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %10 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j ; 2 uses
  %11 = load i32, ptr %10, align 4, !tbaa !43
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %12 = load i32, ptr %i.s, align 4, !tbaa !43
  store i32 %12, ptr %10, align 4, !tbaa !43
  store i32 %11, ptr %i.s, align 4, !tbaa !43
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  %i.t = add nsw i32 %i.p, 1
  store i32 %i.t, ptr %i.o, align 4, !tbaa !43
  br i1 %.not, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.v = load i32, ptr %i.u, align 4, !tbaa !43   ; 3 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.n ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !43   ; 3 uses
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = xor i32 %i.x, 1
  %i.z = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.v, i32 noundef %i.y, i32 noundef %6)
  %i.aa = xor i32 %i.v, 1
  %i.ab = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.aa, i32 noundef %i.x, i32 noundef %6)
  %i.ac = xor i32 %i.z, 1
  %i.ad = xor i32 %i.ab, 1
  %i.ae = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.ac, i32 noundef %i.ad, i32 noundef %6)
  %i.af = xor i32 %i.ae, 1
  br label %.thread

bb.j:                                             ; preds = %bb.h
  %i.ag = tail call fastcc i32 @If_LogCreateAnd(ptr noundef nonnull %5, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %6)
  br label %.thread

bb.k:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %.081, -1                   ; 5 uses
  %i.ai = icmp slt i32 %.07180, %i.ah
  br i1 %i.ai, label %.lr.ph.split.us.preheader, label %.loopexit

.lr.ph.split.us.preheader:                        ; preds = %bb.k
  %i.aj = add i32 %.081, %i.i                     ; 2 uses
  %i.ak = zext i32 %i.aj to i64
  %i.al = add nuw nsw i64 %i.ak, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.aj, 7
  br i1 %min.iters.check, label %.lr.ph.split.us.preheader22, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.preheader
  %n.vec = and i64 %i.al, 8589934584              ; 3 uses
  %i.am = add nuw nsw i64 %n.vec, %i.j
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.an = add nuw i64 %index, %i.j                ; 2 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %wide.load = load <4 x i32>, ptr %i.ap, align 4, !tbaa !43
  %wide.load2 = load <4 x i32>, ptr %i.aq, align 4, !tbaa !43
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.an ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <4 x i32> %wide.load, ptr %i.ar, align 4, !tbaa !43
  store <4 x i32> %wide.load2, ptr %i.as, align 4, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !310

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.al, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.split.us.preheader22

.lr.ph.split.us.preheader22:                      ; preds = %.lr.ph.split.us.preheader, %middle.block
  %indvars.iv85.ph = phi i64 [ %i.j, %.lr.ph.split.us.preheader ], [ %i.am, %middle.block ]
  br label %.lr.ph.split.us

.thread:                                          ; preds = %bb.j, %bb.i
  %i.au = phi i32 [ %i.af, %bb.i ], [ %i.ag, %bb.j ]
  store i32 %i.au, ptr %i.w, align 4, !tbaa !43
  %i.av = add nsw i32 %.081, -1                   ; 5 uses
  %i.aw = icmp slt i32 %.07180, %i.av
  br i1 %i.aw, label %.lr.ph.split.preheader, label %.loopexit

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.ax = add i32 %.081, %i.g                     ; 2 uses
  %i.ay = zext i32 %i.ax to i64
  %i.az = add nuw nsw i64 %i.ay, 1                ; 2 uses
  %min.iters.check9 = icmp ult i32 %i.ax, 7
  br i1 %min.iters.check9, label %.lr.ph.split.preheader23, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.split.preheader
  %i.ba = add i32 %.081, %i.h
  %i.bb = zext i32 %i.ba to i64
  %13 = add nuw nsw i64 %8, %i.bb
  %i.bc = shl nuw nsw i64 %13, 2                  ; 2 uses
  %scevgep4 = getelementptr i8, ptr %scevgep3, i64 %i.bc
  %scevgep7.a = getelementptr i8, ptr %scevgep6, i64 %i.bc
  %bound0 = icmp ult ptr %scevgep.a, %scevgep7.a
  %bound1 = icmp ult ptr %scevgep5, %scevgep4
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.split.preheader23, label %vector.ph10

vector.ph10:                                      ; preds = %vector.memcheck
  %n.vec11 = and i64 %i.az, 8589934584            ; 3 uses
  %i.bd = add nuw nsw i64 %n.vec11, %i.j
  br label %vector.body12

vector.body12:                                    ; preds = %vector.body12, %vector.ph10
  %index13 = phi i64 [ 0, %vector.ph10 ], [ %index.next18, %vector.body12 ] ; 2 uses
  %i.be = add nuw i64 %index13, %i.j              ; 3 uses
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %wide.load14 = load <4 x i32>, ptr %i.bg, align 4, !tbaa !43, !alias.scope !311, !noalias !314
  %wide.load15 = load <4 x i32>, ptr %i.bh, align 4, !tbaa !43, !alias.scope !311, !noalias !314
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.be ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store <4 x i32> %wide.load14, ptr %i.bi, align 4, !tbaa !43, !alias.scope !311, !noalias !314
  store <4 x i32> %wide.load15, ptr %i.bj, align 4, !tbaa !43, !alias.scope !311, !noalias !314
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.bf ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %wide.load16 = load <4 x i32>, ptr %i.bk, align 4, !tbaa !43, !alias.scope !314
  %wide.load17 = load <4 x i32>, ptr %i.bl, align 4, !tbaa !43, !alias.scope !314
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.be ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  store <4 x i32> %wide.load16, ptr %i.bm, align 4, !tbaa !43, !alias.scope !314
  store <4 x i32> %wide.load17, ptr %i.bn, align 4, !tbaa !43, !alias.scope !314
  %index.next18 = add nuw i64 %index13, 8         ; 2 uses
  %i.bo = icmp eq i64 %index.next18, %n.vec11
  br i1 %i.bo, label %middle.block19, label %vector.body12, !llvm.loop !316

middle.block19:                                   ; preds = %vector.body12
  %cmp.n20 = icmp eq i64 %i.az, %n.vec11
  br i1 %cmp.n20, label %.loopexit, label %.lr.ph.split.preheader23

.lr.ph.split.preheader23:                         ; preds = %vector.memcheck, %.lr.ph.split.preheader, %middle.block19
  %indvars.iv.ph = phi i64 [ %i.j, %vector.memcheck ], [ %i.j, %.lr.ph.split.preheader ], [ %i.bd, %middle.block19 ]
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader22, %.lr.ph.split.us
  %indvars.iv85 = phi i64 [ %indvars.iv.next86, %.lr.ph.split.us ], [ %indvars.iv85.ph, %.lr.ph.split.us.preheader22 ] ; 2 uses
  %indvars.iv.next86 = add nuw nsw i64 %indvars.iv85, 1 ; 3 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next86
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !43
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv85
  store i32 %i.bq, ptr %i.br, align 4, !tbaa !43
  %i.bs = trunc nuw i64 %indvars.iv.next86 to i32
  %i.bt = icmp sgt i32 %i.ah, %i.bs
  br i1 %i.bt, label %.lr.ph.split.us, label %.loopexit, !llvm.loop !317

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader23, %.lr.ph.split
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph.split ], [ %indvars.iv.ph, %.lr.ph.split.preheader23 ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !43
  %i.bw = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.bv, ptr %i.bw, align 4, !tbaa !43
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.next
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !43
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !43
  %i.ca = trunc nuw i64 %indvars.iv.next to i32
  %i.cb = icmp sgt i32 %i.av, %i.ca
  br i1 %i.cb, label %.lr.ph.split, label %.loopexit, !llvm.loop !318

.loopexit:                                        ; preds = %.lr.ph.split, %.lr.ph.split.us, %middle.block19, %middle.block, %.thread, %bb.k, %bb.e, %bb.f
  %.1 = phi i32 [ %.081, %bb.f ], [ %.081, %bb.e ], [ %i.ah, %bb.k ], [ %i.av, %.thread ], [ %i.ah, %middle.block ], [ %i.av, %middle.block19 ], [ %i.ah, %.lr.ph.split.us ], [ %i.av, %.lr.ph.split ] ; 2 uses
  %i.cc = icmp samesign ugt i32 %.07180, 1
  %indvar.next = add i32 %indvar, 1
  br i1 %i.cc, label %bb.c, label %.loopexit78, !llvm.loop !308

.loopexit78:                                      ; preds = %.loopexit, %bb.c, %._crit_edge
  %.2 = phi i32 [ %i.c, %._crit_edge ], [ %.081, %bb.c ], [ %.1, %.loopexit ] ; 2 uses
  store i32 %.2, ptr %1, align 4, !tbaa !43
  %i.cd = load i32, ptr %0, align 4, !tbaa !43
  %i.ce = icmp sgt i32 %.2, 1
  %i.cf = zext i1 %i.ce to i32
  %i.cg = add nsw i32 %i.cd, %i.cf
  ret i32 %i.cg
}

; Function Attrs: nounwind uwtable
define i32 @If_CutDsdBalanceEvalInt(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  store i32 0, ptr %i.a, align 4, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #40
  store i32 0, ptr %i.b, align 4, !tbaa !43
  %i.c = getelementptr i8, ptr %0, i64 48
  %.val = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.d = ashr i32 %1, 1                           ; 2 uses
  %i.e = sext i32 %i.d to i64
  %i.f = getelementptr inbounds [8 x i8], ptr %.val, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = load i32, ptr %i.h, align 4
  %i.j = lshr i32 %i.i, 3
  %i.k = and i32 %i.j, 31
  %i.l = call i32 @If_CutDsdBalanceEval_rec(ptr noundef %0, i32 noundef %i.d, ptr noundef %2, ptr noundef nonnull %i.a, ptr noundef %3, ptr noundef nonnull %i.b, i32 noundef %i.k, ptr noundef %4, ptr noundef %5) ; 2 uses
  %i.m = icmp eq i32 %i.l, -1
  %.not = icmp eq ptr %3, null
  %or.cond = or i1 %.not, %i.m
  br i1 %or.cond, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.b, align 4, !tbaa !43
  %i.o = xor i32 %i.n, %1
  %i.p = and i32 %i.o, 1
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 3 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !40   ; 7 uses
  %i.s = load i32, ptr %3, align 8, !tbaa !41
  %i.t = icmp eq i32 %i.r, %i.s
  br i1 %i.t, label %bb.c, label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.u = icmp slt i32 %i.r, 16
  br i1 %i.u, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !42   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.w, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.w, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.f:                                             ; preds = %bb.d
  %i.y = call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #42
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.f, %bb.e
  %i.z = phi ptr [ %i.x, %bb.e ], [ %i.y, %bb.f ]
  store ptr %i.z, ptr %i.v, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.aa = icmp samesign ult i32 %i.r, 1073741823
  %i.ab = shl nuw nsw i32 %i.r, 1
  %spec.select.i = select i1 %i.aa, i32 %i.ab, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.r, %spec.select.i
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !42 ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.ad, null
  %i.ae = zext nneg i32 %spec.select.i to i64
  %i.af = shl nuw nsw i64 %i.ae, 2                ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = call ptr @realloc(ptr noundef nonnull %i.ad, i64 noundef %i.af) #41
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ah = call noalias ptr @malloc(i64 noundef %i.af) #42
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ai = phi ptr [ %i.ag, %bb.i ], [ %i.ah, %bb.j ]
  store ptr %i.ai, ptr %i.ac, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.k, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.k ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %3, align 8, !tbaa !41
  %.pre = load i32, ptr %i.q, align 4, !tbaa !40
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.b, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.aj = phi i32 [ %i.r, %bb.b ], [ %i.r, %bb.g ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !42
  %i.am = add nsw i32 %i.aj, 1
  store i32 %i.am, ptr %i.q, align 4, !tbaa !40
  %i.an = sext i32 %i.aj to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.al, i64 %i.an
  store i32 %i.p, ptr %i.ao, align 4, !tbaa !43
  br label %bb.l

bb.l:                                             ; preds = %Vec_IntPush.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  ret i32 %i.l
}

; Function Attrs: nounwind uwtable
define i32 @If_CutDsdBalanceEval(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca [15 x i32], align 16              ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 10 uses
  %i.d = load i64, ptr %i.c, align 4
  %i.e = or i64 %i.d, 8192                        ; 2 uses
  store i64 %i.e, ptr %i.c, align 4
  %.not = icmp eq ptr %2, null                    ; 3 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !40
  %.pre = load i64, ptr %i.c, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i64 [ %.pre, %bb.b ], [ %i.e, %bb.a ] ; 5 uses
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %i.i = lshr i32 %i.h, 24                        ; 6 uses
  %trunc = trunc nuw i32 %i.i to i8
  switch i8 %trunc, label %bb.ad [
    i8 0, label %bb.d
    i8 1, label %bb.p
  ]

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %1, i64 24
  %.val93 = load i32, ptr %i.j, align 8, !tbaa !296 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.l = lshr i64 %i.g, 24
  %i.m = and i64 %i.l, 255
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val.i = load ptr, ptr %i.p, align 8, !tbaa !42
  %i.q = ashr i32 %.val93, 1
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.r
  %i.t = load i32, ptr %i.s, align 4, !tbaa !43
  %i.u = xor i32 %i.t, %.val93
  %i.v = and i32 %i.u, 1
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !40   ; 7 uses
  %i.y = load i32, ptr %2, align 8, !tbaa !41
  %i.z = icmp eq i32 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %Vec_IntPush.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = icmp slt i32 %i.x, 16
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !42 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ac, null
  br i1 %.not9.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.ac, i64 noundef 64) #41
  br label %Vec_IntGrow.exit.i

bb.i:                                             ; preds = %bb.g
  %i.ae = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #42
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.i, %bb.h
  %i.af = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ]
  store ptr %i.af, ptr %i.ab, align 8, !tbaa !42
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.f
  %i.ag = icmp samesign ult i32 %i.x, 1073741823
  %i.ah = shl nuw nsw i32 %i.x, 1
end_hunk_1
