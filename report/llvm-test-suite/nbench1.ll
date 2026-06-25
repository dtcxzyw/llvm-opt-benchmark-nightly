inline.NumInlined: 76
inline.NumDeleted: 47
begin_hunk_0_@DoNumSort:bb.a
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.i
  %.0 = phi ptr [ %i.y, %bb.h ], [ %i.y, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.loopexit
  %.028 = phi i64 [ 0, %.loopexit ], [ %i.ae, %bb.j ]
  %.027 = phi double [ 0.000000e+00, %.loopexit ], [ %i.af, %bb.j ]
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 32), align 8, !tbaa !14
  %i.ab = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.ac = zext i16 %i.ab to i32
  %i.ad = call fastcc i64 @DoNumSortIteration(ptr noundef %.0, i64 noundef %i.aa, i32 noundef %i.ac)
  %i.ae = add i64 %i.ad, %.028                    ; 2 uses
  %i.af = fadd double %.027, 1.000000e+00         ; 3 uses
  %i.ag = fcmp olt double %i.af, 3.750000e+02
  br i1 %i.ag, label %bb.j, label %bb.k, !llvm.loop !16

bb.k:                                             ; preds = %bb.j
  call void @FreeMemory(ptr noundef %.0, ptr noundef nonnull %i.a) #11
  %i.ah = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 24), align 8, !tbaa !13
  %i.ai = uitofp i16 %i.ah to double
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = call double @TicksToFracSecs(i64 noundef %i.ae) #11
  %i.al = fdiv double %i.aj, %i.ak
  store double %i.al, ptr getelementptr inbounds nuw (i8, ptr @global_numsortstruct, i64 16), align 8, !tbaa !18
  %i.am = load i32, ptr @global_numsortstruct, align 8, !tbaa !8
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store i32 1, ptr @global_numsortstruct, align 8, !tbaa !8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @AllocateMemory(i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @ReportError(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @FreeMemory(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ErrorExit(...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoNumSortIteration(ptr nofree noundef captures(none) %0, i64 noundef %1, i32 noundef range(i32 0, 65536) %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  %.not25.i = icmp eq i64 %1, 0
  br i1 %.not25.i, label %LoadNumArrayWithRand.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i
  %i.b = add nsw i32 %2, -1                       ; 2 uses
  %.not22.not.i = icmp eq i32 %i.b, 0
  br i1 %.not22.not.i, label %LoadNumArrayWithRand.exit.thread, label %.lr.ph21.i.preheader

.lr.ph21.i.preheader:                             ; preds = %.preheader.i
  %i.c = shl nuw nsw i64 %1, 3
  %i.d = shl i64 %1, 3
  %min.iters.check = icmp ult i64 %1, 4
  %n.vec = and i64 %1, -4                         ; 3 uses
  %cmp.n = icmp eq i64 %1, %n.vec
  %xtraiter = and i64 %1, 3                       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph21.i

LoadNumArrayWithRand.exit.thread:                 ; preds = %.preheader.i
  %i.e = tail call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.01519.i = phi i64 [ %i.i, %.lr.ph.i ], [ 0, %bb.a ] ; 2 uses
  %i.f = tail call i32 @randnum(i32 noundef 0) #11
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.01519.i
  store i64 %i.g, ptr %i.h, align 8, !tbaa !15
  %i.i = add nuw i64 %.01519.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.i, %1
  br i1 %exitcond.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !19

..loopexit_crit_edge.i:                           ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.j = add i32 %i.k, -1                         ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i, label %LoadNumArrayWithRand.exit, label %.lr.ph21.i, !llvm.loop !20

.lr.ph21.i:                                       ; preds = %.lr.ph21.i.preheader, %..loopexit_crit_edge.i
  %indvar = phi i64 [ 0, %.lr.ph21.i.preheader ], [ %indvar.next, %..loopexit_crit_edge.i ] ; 2 uses
  %i.k = phi i32 [ %i.b, %.lr.ph21.i.preheader ], [ %i.j, %..loopexit_crit_edge.i ]
  %.023.i = phi ptr [ %0, %.lr.ph21.i.preheader ], [ %i.l, %..loopexit_crit_edge.i ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %.023.i, i64 %1 ; 7 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph21.i
  %i.m = mul i64 %i.d, %indvar
  %i.n = add i64 %i.c, %i.m
  %diff.check = icmp ult i64 %i.n, 32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x i64>, ptr %i.o, align 8, !tbaa !15
  %wide.load43 = load <2 x i64>, ptr %i.p, align 8, !tbaa !15
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x i64> %wide.load, ptr %i.q, align 8, !tbaa !15
  store <2 x i64> %wide.load43, ptr %i.r, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %..loopexit_crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph21.i, %middle.block
  %.120.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph21.i ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.120.i.prol = phi i64 [ %i.w, %scalar.ph.prol ], [ %.120.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.120.i.prol
  %i.u = load i64, ptr %i.t, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.120.i.prol
  store i64 %i.u, ptr %i.v, align 8, !tbaa !15
  %i.w = add nuw nsw i64 %.120.i.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !24

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.120.i.unr = phi i64 [ %.120.i.ph, %scalar.ph.preheader ], [ %i.w, %scalar.ph.prol ]
  %i.x = sub i64 %.120.i.ph, %1
  %i.y = icmp ugt i64 %i.x, -4
  br i1 %i.y, label %..loopexit_crit_edge.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.120.i = phi i64 [ %i.ao, %scalar.ph ], [ %.120.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.120.i
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %.120.i
  store i64 %i.aa, ptr %i.ab, align 8, !tbaa !15
  %i.ac = add nuw nsw i64 %.120.i, 1              ; 2 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !15
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ac
  store i64 %i.ae, ptr %i.af, align 8, !tbaa !15
  %i.ag = add nuw nsw i64 %.120.i, 2              ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !15
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag
  store i64 %i.ai, ptr %i.aj, align 8, !tbaa !15
  %i.ak = add nuw nsw i64 %.120.i, 3              ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !15
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  store i64 %i.am, ptr %i.an, align 8, !tbaa !15
  %i.ao = add nuw nsw i64 %.120.i, 4              ; 2 uses
  %exitcond26.not.i.3 = icmp eq i64 %i.ao, %1
  br i1 %exitcond26.not.i.3, label %..loopexit_crit_edge.i, label %scalar.ph, !llvm.loop !26

LoadNumArrayWithRand.exit:                        ; preds = %..loopexit_crit_edge.i, %bb.a
  %i.ap = tail call i64 (...) @StartStopwatch() #11 ; 2 uses
  %i.aq = zext nneg i32 %2 to i64
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadNumArrayWithRand.exit.thread, %LoadNumArrayWithRand.exit
  %i.ar = phi i64 [ 1, %LoadNumArrayWithRand.exit.thread ], [ %i.aq, %LoadNumArrayWithRand.exit ]
  %i.as = phi i64 [ %i.e, %LoadNumArrayWithRand.exit.thread ], [ %i.ap, %LoadNumArrayWithRand.exit ] ; 2 uses
  %i.at = add i64 %1, -1                          ; 6 uses
  %i.au = lshr i64 %i.at, 1                       ; 2 uses
  %.not27.i = icmp eq i64 %i.au, 0
  %.not1829.i = icmp eq i64 %i.at, 0
  br i1 %.not1829.i, label %._crit_edge, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %NumHeapSort.exit.loopexit
  %.014 = phi i64 [ %i.by, %NumHeapSort.exit.loopexit ], [ 0, %.lr.ph ] ; 2 uses
  %i.av = mul i64 %.014, %1
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.av ; 11 uses
  br i1 %.not27.i, label %.lr.ph31.i.preheader, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %.lr.ph.split, %NumSift.exit.i
  %.028.i = phi i64 [ %i.bi, %NumSift.exit.i ], [ %i.au, %.lr.ph.split ] ; 3 uses
  %i.ax = shl nuw i64 %.028.i, 1                  ; 2 uses
  %.not31.i.i = icmp ugt i64 %i.ax, %i.at
  br i1 %.not31.i.i, label %NumSift.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i11, %bb.e
  %i.ay = phi i64 [ %i.bh, %bb.e ], [ %i.ax, %.lr.ph.i11 ] ; 5 uses
  %.032.i.i = phi i64 [ %.1.i.i, %bb.e ], [ %.028.i, %.lr.ph.i11 ]
  %i.az = icmp ult i64 %i.ay, %i.at
  br i1 %i.az, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i
  %3 = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ay
  %4 = load i64, ptr %3, align 8, !tbaa !15
  %i.ba = or disjoint i64 %i.ay, 1                ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ba
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !15
  %i.bd = icmp slt i64 %4, %i.bc
  %spec.select.i.i = select i1 %i.bd, i64 %i.ba, i64 %i.ay
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i.i
  %.026.i.i.a = phi i64 [ %i.ay, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.b ] ; 2 uses
  %5 = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.032.i.i ; 2 uses
  %6 = load i64, ptr %5, align 8, !tbaa !15       ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.026.i.i.a ; 2 uses
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !15 ; 2 uses
  %i.bg = icmp slt i64 %6, %i.bf
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 %6, ptr %i.be, align 8, !tbaa !15
  store i64 %i.bf, ptr %5, align 8, !tbaa !15
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.i = phi i64 [ %.026.i.i.a, %bb.d ], [ %1, %bb.c ] ; 2 uses
  %i.bh = shl i64 %.1.i.i, 1                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bh, %i.at
  br i1 %.not.i.i, label %NumSift.exit.i, label %.lr.ph.i.i, !llvm.loop !27

NumSift.exit.i:                                   ; preds = %bb.e, %.lr.ph.i11
  %i.bi = add nsw i64 %.028.i, -1                 ; 2 uses
  %.not.i12 = icmp eq i64 %i.bi, 0
  br i1 %.not.i12, label %.lr.ph31.i.preheader, label %.lr.ph.i11, !llvm.loop !28

.lr.ph31.i.preheader:                             ; preds = %NumSift.exit.i, %.lr.ph.split
  br label %.lr.ph31.i

.lr.ph31.i:                                       ; preds = %.lr.ph31.i.preheader, %NumSift.exit26.i
  %.130.i = phi i64 [ %i.bx, %NumSift.exit26.i ], [ %i.at, %.lr.ph31.i.preheader ] ; 5 uses
  %i.bj = add i64 %.130.i, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %.lr.ph31.i
  %i.bk = phi i64 [ 0, %.lr.ph31.i ], [ %i.bt, %bb.j ] ; 5 uses
  %.032.i21.i = phi i64 [ 0, %.lr.ph31.i ], [ %.1.i23.i, %bb.j ]
  %i.bl = icmp ult i64 %i.bk, %.130.i
  br i1 %i.bl, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %7 = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bk
  %8 = load i64, ptr %7, align 8, !tbaa !15
  %i.bm = or disjoint i64 %i.bk, 1                ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bp = icmp slt i64 %8, %i.bo
  %spec.select.i25.i = select i1 %i.bp, i64 %i.bm, i64 %i.bk
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.026.i22.i = phi i64 [ %i.bk, %bb.f ], [ %spec.select.i25.i, %bb.g ] ; 2 uses
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.032.i21.i ; 2 uses
  %10 = load i64, ptr %9, align 8, !tbaa !15      ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.026.i22.i ; 2 uses
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15 ; 2 uses
  %i.bs = icmp slt i64 %10, %i.br
  br i1 %i.bs, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %10, ptr %i.bq, align 8, !tbaa !15
  store i64 %i.br, ptr %9, align 8, !tbaa !15
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.i23.i = phi i64 [ %.026.i22.i, %bb.i ], [ %i.bj, %bb.h ] ; 2 uses
  %i.bt = shl i64 %.1.i23.i, 1                    ; 2 uses
  %.not.i24.i = icmp ugt i64 %i.bt, %.130.i
  br i1 %.not.i24.i, label %NumSift.exit26.i, label %bb.f, !llvm.loop !27

NumSift.exit26.i:                                 ; preds = %bb.j
  %i.bu = load i64, ptr %i.aw, align 8, !tbaa !15
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.130.i ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !15
  store i64 %i.bw, ptr %i.aw, align 8, !tbaa !15
  store i64 %i.bu, ptr %i.bv, align 8, !tbaa !15
  %i.bx = add i64 %.130.i, -1                     ; 2 uses
  %.not18.i = icmp eq i64 %i.bx, 0
  br i1 %.not18.i, label %NumHeapSort.exit.loopexit, label %.lr.ph31.i, !llvm.loop !29

NumHeapSort.exit.loopexit:                        ; preds = %NumSift.exit26.i
  %i.by = add nuw nsw i64 %.014, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.ar
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !30

._crit_edge:                                      ; preds = %NumHeapSort.exit.loopexit, %.lr.ph, %LoadNumArrayWithRand.exit
  %i.bz = phi i64 [ %i.ap, %LoadNumArrayWithRand.exit ], [ %i.as, %.lr.ph ], [ %i.as, %NumHeapSort.exit.loopexit ]
  %i.ca = tail call i64 @StopStopwatch(i64 noundef %i.bz) #11
  ret i64 %i.ca
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare double @TicksToFracSecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @DoStringSort() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = load i32, ptr @global_strsortstruct, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a, %bb.d
  %storemerge = phi i16 [ %i.q, %bb.d ], [ 1, %bb.a ] ; 2 uses
  store i16 %storemerge, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.d = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.e = add i64 %i.d, 100
  %i.f = zext i16 %storemerge to i64
  %i.g = mul i64 %i.e, %i.f
  %i.h = call ptr @AllocateMemory(i64 noundef %i.g, ptr noundef nonnull %i.a) #11 ; 3 uses
  %i.i = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not30 = icmp eq i32 %i.i, 0
  br i1 %.not30, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  call void @ReportError(ptr noundef nonnull @.str.52, i32 noundef %i.i) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader
  %i.j = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.k = zext i16 %i.j to i32
  %i.l = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.m = call fastcc i64 @DoStringSortIteration(ptr noundef %i.h, i32 noundef %i.k, i64 noundef %i.l)
  %i.n = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.o = icmp ugt i64 %i.m, %i.n
  br i1 %i.o, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @FreeMemory(ptr noundef %i.h, ptr noundef nonnull %i.a) #11
  %i.p = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.q = add i16 %i.p, 1
  br label %.preheader

bb.e:                                             ; preds = %bb.a
  %i.r = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.s = add i64 %i.r, 100
  %i.t = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  %i.u = zext i16 %i.t to i64
  %i.v = mul i64 %i.s, %i.u
  %i.w = call ptr @AllocateMemory(i64 noundef %i.v, ptr noundef nonnull %i.a) #11 ; 2 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.x, 0
  br i1 %.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.52, i32 noundef %i.x) #11
  call void (...) @ErrorExit() #11
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.f
  %.0 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.h, %bb.c ] ; 2 uses
  %.pre = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %i.y = phi i16 [ %.pre, %.loopexit ], [ %i.ad, %bb.g ]
  %.026 = phi i64 [ 0, %.loopexit ], [ %i.ac, %bb.g ]
  %.025 = phi double [ 0.000000e+00, %.loopexit ], [ %i.af, %bb.g ]
  %i.z = zext i16 %i.y to i32
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.ab = call fastcc i64 @DoStringSortIteration(ptr noundef %.0, i32 noundef %i.z, i64 noundef %i.aa)
  %i.ac = add i64 %i.ab, %.026                    ; 2 uses
  %i.ad = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13 ; 2 uses
  %i.ae = uitofp i16 %i.ad to double
  %i.af = fadd double %.025, %i.ae                ; 3 uses
  %i.ag = fcmp olt double %i.af, 1.250000e+02
  br i1 %i.ag, label %bb.g, label %bb.h, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  call void @FreeMemory(ptr noundef %.0, ptr noundef nonnull %i.a) #11
  %i.ah = call double @TicksToFracSecs(i64 noundef %i.ac) #11
  %i.ai = fdiv double %i.af, %i.ah
  store double %i.ai, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 16), align 8, !tbaa !18
  %i.aj = load i32, ptr @global_strsortstruct, align 8, !tbaa !8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 1, ptr @global_strsortstruct, align 8, !tbaa !8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @DoStringSortIteration(ptr noundef %0, i32 noundef range(i32 0, 65536) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.d = tail call i32 @randnum(i32 noundef 13) #11 ; 0 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge.i, %bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge.i ], [ 1, %bb.a ] ; 6 uses
  %.028 = phi i64 [ %i.u, %._crit_edge.i ], [ 0, %bb.a ] ; 19 uses
  %.063.i = phi i64 [ %.164.lcssa.i, %._crit_edge.i ], [ 0, %bb.a ] ; 4 uses
  %i.e = tail call i32 @abs_randwc(i32 noundef 76) #11
  %i.f = trunc i32 %i.e to i8
  %i.g = add i8 %i.f, 1                           ; 2 uses
  %i.h = zext i8 %i.g to i64
  %i.i = add i64 %.063.i, 1                       ; 3 uses
  %i.j = add i64 %i.i, %i.h
  %.not.i = icmp ult i64 %i.j, %2                 ; 2 uses
  %i.k = xor i64 %.063.i, -1
  %i.l = add i64 %2, %i.k
  %i.m = trunc i64 %i.l to i8
  %.060.i = select i1 %.not.i, i8 %i.g, i8 %i.m   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 %.063.i
  store i8 %.060.i, ptr %i.n, align 1, !tbaa !32
  %.not97.i = icmp eq i8 %.060.i, 0
  br i1 %.not97.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.o = trunc i64 %.063.i to i8
  %i.p = add i8 %i.o, 1
  %i.q = add i8 %i.p, %.060.i
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %.16476.i = phi i64 [ %.164.i, %.lr.ph.i ], [ %i.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.r = tail call i32 @abs_randwc(i32 noundef 254) #11
  %i.s = trunc i32 %i.r to i8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 %.16476.i
  store i8 %i.s, ptr %i.t, align 1, !tbaa !32
  %.164.i = add i64 %.16476.i, 1                  ; 3 uses
  %lftr.wideiv = trunc i64 %.164.i to i8
  %exitcond = icmp eq i8 %i.q, %lftr.wideiv
  br i1 %exitcond, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !33

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.164.lcssa.i = phi i64 [ %i.i, %bb.b ], [ %.164.i, %.lr.ph.i ]
  %i.u = add i64 %.028, 1                         ; 10 uses
  %indvars.iv.next = add i64 %indvars.iv, 1
  br i1 %.not.i, label %bb.b, label %.preheader73.i, !llvm.loop !34

.preheader73.i:                                   ; preds = %._crit_edge.i
  %i.v = icmp samesign ugt i32 %1, 1              ; 2 uses
  %i.w = icmp ne i64 %2, 0
  %or.cond.i = and i1 %i.v, %i.w
  br i1 %or.cond.i, label %.lr.ph79.i.preheader, label %._crit_edge84.split.i

.lr.ph79.i.preheader:                             ; preds = %.preheader73.i
  %i.x = add i64 %2, -1                           ; 2 uses
  %i.y = add i64 %2, 100
  %min.iters.check = icmp ult i64 %2, 4
  %i.z = and i64 %i.x, 4294967295
  %i.aa = icmp eq i64 %i.z, 4294967295
  %i.ab = icmp ugt i64 %i.x, 4294967295
  %i.ac = or i1 %i.aa, %i.ab
  %min.iters.check57 = icmp ult i64 %2, 32
  %n.mod.vf = and i64 %2, 28
  %n.vec = and i64 %2, 8589934560                 ; 5 uses
  %i.ad = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %2, %n.vec
end_hunk_0
begin_hunk_1_@DoLUIteration:bb.a
  %i.nr = sext i32 %.04966.i.i to i64             ; 5 uses
  %i.ns = icmp sgt i64 %indvars.iv75.i.i, %i.nr
  br i1 %i.ns, label %.lr.ph.i7.i, label %.loopexit61.i.i

.lr.ph.i7.i:                                      ; preds = %.preheader60.i.i
  %i.nt = getelementptr inbounds nuw [808 x i8], ptr %i.fn, i64 %indvars.iv75.i.i ; 5 uses
  %i.nu = sub i64 %indvars.iv75.i.i, %i.nr
  %xtraiter119 = and i64 %i.nu, 3                 ; 2 uses
  %lcmp.mod120.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod120.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i7.i, %.prol.preheader
  %indvars.iv.i8.i.prol = phi i64 [ %indvars.iv.next.i9.i.prol, %.prol.preheader ], [ %i.nr, %.lr.ph.i7.i ] ; 3 uses
  %.063.i.i.prol = phi double [ %i.oa, %.prol.preheader ], [ %i.no, %.lr.ph.i7.i ]
  %prol.iter121 = phi i64 [ %prol.iter121.next, %.prol.preheader ], [ 0, %.lr.ph.i7.i ]
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %indvars.iv.i8.i.prol
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !80
  %i.nx = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.i8.i.prol
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !80
  %i.nz = fneg double %i.nw
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.ny, double %.063.i.i.prol) ; 3 uses
  %indvars.iv.next.i9.i.prol = add nsw i64 %indvars.iv.i8.i.prol, 1 ; 2 uses
  %prol.iter121.next = add i64 %prol.iter121, 1   ; 2 uses
  %prol.iter121.cmp.not = icmp eq i64 %prol.iter121.next, %xtraiter119
  br i1 %prol.iter121.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !190

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i7.i
  %.lcssa96.unr = phi double [ poison, %.lr.ph.i7.i ], [ %i.oa, %.prol.preheader ]
  %indvars.iv.i8.i.unr = phi i64 [ %i.nr, %.lr.ph.i7.i ], [ %indvars.iv.next.i9.i.prol, %.prol.preheader ]
  %.063.i.i.unr = phi double [ %i.no, %.lr.ph.i7.i ], [ %i.oa, %.prol.preheader ]
  %i.ob = sub i64 %i.nr, %indvars.iv75.i.i
  %i.oc = icmp ugt i64 %i.ob, -4
  br i1 %i.oc, label %.loopexit61.i.i, label %.lr.ph.i7.i.new

.lr.ph.i7.i.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i7.i.new
  %indvars.iv.i8.i = phi i64 [ %indvars.iv.next.i9.i.3, %.lr.ph.i7.i.new ], [ %indvars.iv.i8.i.unr, %.prol.loopexit ] ; 6 uses
  %.063.i.i = phi double [ %i.pa, %.lr.ph.i7.i.new ], [ %.063.i.i.unr, %.prol.loopexit ]
  %i.od = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %indvars.iv.i8.i
  %i.oe = load double, ptr %i.od, align 8, !tbaa !80
  %i.of = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.i8.i
  %i.og = load double, ptr %i.of, align 8, !tbaa !80
  %i.oh = fneg double %i.oe
  %i.oi = tail call double @llvm.fmuladd.f64(double %i.oh, double %i.og, double %.063.i.i)
  %indvars.iv.next.i9.i = add nsw i64 %indvars.iv.i8.i, 1 ; 2 uses
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i9.i
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !80
  %i.ol = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.next.i9.i
  %i.om = load double, ptr %i.ol, align 8, !tbaa !80
  %i.on = fneg double %i.ok
  %i.oo = tail call double @llvm.fmuladd.f64(double %i.on, double %i.om, double %i.oi)
  %indvars.iv.next.i9.i.1 = add nsw i64 %indvars.iv.i8.i, 2 ; 2 uses
  %i.op = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i9.i.1
  %i.oq = load double, ptr %i.op, align 8, !tbaa !80
  %i.or = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.next.i9.i.1
  %i.os = load double, ptr %i.or, align 8, !tbaa !80
  %i.ot = fneg double %i.oq
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.ot, double %i.os, double %i.oo)
  %indvars.iv.next.i9.i.2 = add nsw i64 %indvars.iv.i8.i, 3 ; 2 uses
  %i.ov = getelementptr inbounds [8 x i8], ptr %i.nt, i64 %indvars.iv.next.i9.i.2
  %i.ow = load double, ptr %i.ov, align 8, !tbaa !80
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.fo, i64 %indvars.iv.next.i9.i.2
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !80
  %i.oz = fneg double %i.ow
  %i.pa = tail call double @llvm.fmuladd.f64(double %i.oz, double %i.oy, double %i.ou) ; 2 uses
  %indvars.iv.next.i9.i.3 = add nsw i64 %indvars.iv.i8.i, 4 ; 2 uses
  %exitcond.not.i10.i.3 = icmp eq i64 %indvars.iv.next.i9.i.3, %indvars.iv75.i.i
  br i1 %exitcond.not.i10.i.3, label %.loopexit61.i.i, label %.lr.ph.i7.i.new, !llvm.loop !191

bb.l:                                             ; preds = %ludcmp.exit.i
  %i.pb = fcmp une double %i.no, 0.000000e+00
  br i1 %i.pb, label %bb.m, label %.loopexit61.i.i

bb.m:                                             ; preds = %bb.l
  %i.pc = trunc nuw nsw i64 %indvars.iv75.i.i to i32
  br label %.loopexit61.i.i

.loopexit61.i.i:                                  ; preds = %.prol.loopexit, %.lr.ph.i7.i.new, %bb.m, %bb.l, %.preheader60.i.i
  %.150.i.i = phi i32 [ -1, %bb.l ], [ %i.pc, %bb.m ], [ %.04966.i.i, %.preheader60.i.i ], [ %.04966.i.i, %.lr.ph.i7.i.new ], [ %.04966.i.i, %.prol.loopexit ]
  %.1.i.i = phi double [ %i.no, %bb.l ], [ %i.no, %bb.m ], [ %i.no, %.preheader60.i.i ], [ %.lcssa96.unr, %.prol.loopexit ], [ %i.pa, %.lr.ph.i7.i.new ]
  store double %.1.i.i, ptr %i.np, align 8, !tbaa !80
  %indvars.iv.next76.i.i = add nuw nsw i64 %indvars.iv75.i.i, 1 ; 2 uses
  %exitcond78.not.i.i = icmp eq i64 %indvars.iv.next76.i.i, 101
  br i1 %exitcond78.not.i.i, label %.preheader59.i.i, label %ludcmp.exit.i, !llvm.loop !192

.preheader59.i.i:                                 ; preds = %.loopexit61.i.i, %.loopexit.i5.i
  %indvar = phi i64 [ %indvar.next, %.loopexit.i5.i ], [ 0, %.loopexit61.i.i ] ; 3 uses
  %indvars.iv79.i.i = phi i64 [ %indvars.iv.next80.i.i, %.loopexit.i5.i ], [ 100, %.loopexit61.i.i ] ; 9 uses
  %i.pd = add i64 %indvar, -1
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv79.i.i ; 2 uses
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !80 ; 3 uses
  %i.pg = icmp samesign ult i64 %indvars.iv79.i.i, 100
  br i1 %i.pg, label %.lr.ph69.i.i, label %.loopexit.i5.i

.lr.ph69.i.i:                                     ; preds = %.preheader59.i.i
  %i.ph = getelementptr inbounds nuw [808 x i8], ptr %i.fn, i64 %indvars.iv79.i.i ; 5 uses
  %xtraiter124 = and i64 %indvar, 3               ; 2 uses
  %lcmp.mod125.not = icmp eq i64 %xtraiter124, 0
  br i1 %lcmp.mod125.not, label %.prol.loopexit123, label %.prol.preheader122

.prol.preheader122:                               ; preds = %.lr.ph69.i.i, %.prol.preheader122
  %indvars.iv81.i.i.prol = phi i64 [ %indvars.iv.next82.i.i.prol, %.prol.preheader122 ], [ %indvars.iv79.i.i, %.lr.ph69.i.i ]
  %.268.i.i.prol = phi double [ %i.pn, %.prol.preheader122 ], [ %i.pf, %.lr.ph69.i.i ]
  %prol.iter126 = phi i64 [ %prol.iter126.next, %.prol.preheader122 ], [ 0, %.lr.ph69.i.i ]
  %indvars.iv.next82.i.i.prol = add nuw nsw i64 %indvars.iv81.i.i.prol, 1 ; 4 uses
  %i.pi = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next82.i.i.prol
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !80
  %i.pk = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next82.i.i.prol
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !80
  %i.pm = fneg double %i.pj
  %i.pn = tail call double @llvm.fmuladd.f64(double %i.pm, double %i.pl, double %.268.i.i.prol) ; 3 uses
  %prol.iter126.next = add i64 %prol.iter126, 1   ; 2 uses
  %prol.iter126.cmp.not = icmp eq i64 %prol.iter126.next, %xtraiter124
  br i1 %prol.iter126.cmp.not, label %.prol.loopexit123, label %.prol.preheader122, !llvm.loop !193

.prol.loopexit123:                                ; preds = %.prol.preheader122, %.lr.ph69.i.i
  %.lcssa97.unr = phi double [ poison, %.lr.ph69.i.i ], [ %i.pn, %.prol.preheader122 ]
  %indvars.iv81.i.i.unr = phi i64 [ %indvars.iv79.i.i, %.lr.ph69.i.i ], [ %indvars.iv.next82.i.i.prol, %.prol.preheader122 ]
  %.268.i.i.unr = phi double [ %i.pf, %.lr.ph69.i.i ], [ %i.pn, %.prol.preheader122 ]
  %i.po = icmp ult i64 %i.pd, 3
  br i1 %i.po, label %.loopexit.i5.i, label %.lr.ph69.i.i.new

.lr.ph69.i.i.new:                                 ; preds = %.prol.loopexit123, %.lr.ph69.i.i.new
  %indvars.iv81.i.i = phi i64 [ %indvars.iv.next82.i.i.3, %.lr.ph69.i.i.new ], [ %indvars.iv81.i.i.unr, %.prol.loopexit123 ] ; 4 uses
  %.268.i.i = phi double [ %i.qm, %.lr.ph69.i.i.new ], [ %.268.i.i.unr, %.prol.loopexit123 ]
  %indvars.iv.next82.i.i = add nuw nsw i64 %indvars.iv81.i.i, 1 ; 2 uses
  %i.pp = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next82.i.i
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !80
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next82.i.i
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !80
  %i.pt = fneg double %i.pq
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.ps, double %.268.i.i)
  %indvars.iv.next82.i.i.1 = add nuw nsw i64 %indvars.iv81.i.i, 2 ; 2 uses
  %i.pv = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next82.i.i.1
  %i.pw = load double, ptr %i.pv, align 8, !tbaa !80
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next82.i.i.1
  %i.py = load double, ptr %i.px, align 8, !tbaa !80
  %i.pz = fneg double %i.pw
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.pz, double %i.py, double %i.pu)
  %indvars.iv.next82.i.i.2 = add nuw nsw i64 %indvars.iv81.i.i, 3 ; 2 uses
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next82.i.i.2
  %i.qc = load double, ptr %i.qb, align 8, !tbaa !80
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next82.i.i.2
  %i.qe = load double, ptr %i.qd, align 8, !tbaa !80
  %i.qf = fneg double %i.qc
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.qe, double %i.qa)
  %indvars.iv.next82.i.i.3 = add nuw nsw i64 %indvars.iv81.i.i, 4 ; 4 uses
  %i.qh = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %indvars.iv.next82.i.i.3
  %i.qi = load double, ptr %i.qh, align 8, !tbaa !80
  %i.qj = getelementptr inbounds nuw [8 x i8], ptr %i.fo, i64 %indvars.iv.next82.i.i.3
  %i.qk = load double, ptr %i.qj, align 8, !tbaa !80
  %i.ql = fneg double %i.qi
  %i.qm = tail call double @llvm.fmuladd.f64(double %i.ql, double %i.qk, double %i.qg) ; 2 uses
  %exitcond84.not.i.i.3 = icmp eq i64 %indvars.iv.next82.i.i.3, 100
  br i1 %exitcond84.not.i.i.3, label %.loopexit.i5.i, label %.lr.ph69.i.i.new, !llvm.loop !194

.loopexit.i5.i:                                   ; preds = %.prol.loopexit123, %.lr.ph69.i.i.new, %.preheader59.i.i
  %.3.i.i = phi double [ %i.pf, %.preheader59.i.i ], [ %.lcssa97.unr, %.prol.loopexit123 ], [ %i.qm, %.lr.ph69.i.i.new ]
  %i.qn = getelementptr inbounds nuw [808 x i8], ptr %i.fn, i64 %indvars.iv79.i.i
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qn, i64 %indvars.iv79.i.i
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !80
  %i.qq = fdiv double %.3.i.i, %i.qp
  store double %i.qq, ptr %i.pe, align 8, !tbaa !80
  %indvars.iv.next80.i.i = add nsw i64 %indvars.iv79.i.i, -1
  %.not.i6.i = icmp eq i64 %indvars.iv79.i.i, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.i6.i, label %lusolve.exit, label %.preheader59.i.i, !llvm.loop !195

lusolve.exit:                                     ; preds = %bb.d, %.loopexit.i5.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %i.qr = add nuw i64 %.240, 1                    ; 2 uses
  %exitcond51.not = icmp eq i64 %i.qr, %4
  br i1 %exitcond51.not, label %._crit_edge43, label %.lr.ph42, !llvm.loop !196

._crit_edge43:                                    ; preds = %lusolve.exit, %._crit_edge.thread
  %i.qs = phi i64 [ %i.be, %._crit_edge.thread ], [ %i.fk, %lusolve.exit ]
  %i.qt = tail call i64 @StopStopwatch(i64 noundef %i.qs) #11
  ret i64 %i.qt
}

declare i64 @StartStopwatch(...) local_unnamed_addr #2

declare i64 @StopStopwatch(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @strsift(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2, i64 noundef range(i64 0, -9223372036854775808) %3, i64 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.b = shl nuw i64 %3, 1                        ; 2 uses
  %.not74 = icmp ugt i64 %i.b, %4
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = add i64 %2, -1                           ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %2
  %i.e = getelementptr inbounds i8, ptr %i.d, i64 -8 ; 2 uses
  %i.f = add i64 %4, 1
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.j
  %i.g = phi i64 [ %i.b, %.lr.ph ], [ %i.el, %bb.j ] ; 5 uses
  %.075 = phi i64 [ %3, %.lr.ph ], [ %.1, %bb.j ] ; 4 uses
  %i.h = icmp ult i64 %i.g, %4
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = or disjoint i64 %i.g, 1                  ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.g
  %i.k = load i64, ptr %i.j, align 8, !tbaa !15
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 %i.k ; 2 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !32    ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !32    ; 2 uses
  %i.r = icmp ugt i8 %i.m, %i.q
  %spec.select.i = call i8 @llvm.umin.i8(i8 %i.m, i8 %i.q)
  %i.s = zext i8 %spec.select.i to i64
  %i.t = call i32 @strncmp(ptr noundef nonnull readonly %i.l, ptr noundef nonnull readonly %i.p, i64 noundef %i.s) #12 ; 2 uses
  %i.u = icmp eq i32 %i.t, 0
  %..i = zext i1 %i.r to i32
  %.lobit.i = lshr i32 %i.t, 31
  %.025.i = select i1 %i.u, i32 %..i, i32 %.lobit.i
  %.not53 = icmp eq i32 %.025.i, 0
  %spec.select.a = select i1 %.not53, i64 %i.g, i64 %i.i
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.050 = phi i64 [ %i.g, %bb.b ], [ %spec.select.a, %bb.c ] ; 5 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.075 ; 7 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !15
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 %i.w ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !32    ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.050 ; 5 uses
  %5 = load i64, ptr %i.z, align 8, !tbaa !15
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %5 ; 3 uses
  %6 = load i8, ptr %i.aa, align 1, !tbaa !32     ; 3 uses
  %i.ab = icmp ugt i8 %i.y, %6
  %spec.select.i55 = call i8 @llvm.umin.i8(i8 %i.y, i8 %6)
  %i.ac = zext i8 %spec.select.i55 to i64
  %i.ad = call i32 @strncmp(ptr noundef nonnull readonly %i.x, ptr noundef nonnull readonly %i.aa, i64 noundef %i.ac) #12 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  %..i56 = zext i1 %i.ab to i32
  %.lobit.i57 = lshr i32 %i.ad, 31
  %.025.i58 = select i1 %i.ae, i32 %..i56, i32 %.lobit.i57
  %.not54 = icmp eq i32 %.025.i58, 0
  br i1 %.not54, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = zext i8 %6 to i64
  %i.ag = add nuw nsw i64 %i.af, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, i64 noundef %i.ag) #11
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !15
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !32  ; 5 uses
  %i.ak = zext i8 %i.aj to i32
  %i.al = load i64, ptr %i.z, align 8, !tbaa !15
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 %i.al ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !32
  %i.ao = zext i8 %i.an to i32
  %i.ap = sub nsw i32 %i.ak, %i.ao                ; 2 uses
  %i.aq = call i32 @llvm.abs.i32(i32 %i.ap, i1 true)
  %i.ar = icmp eq i64 %.050, %i.c
  br i1 %i.ar, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 %i.aj, ptr %i.am, align 1, !tbaa !32
  %.pre.a = zext i8 %i.aj to i64
  br label %stradjust.exit

bb.g:                                             ; preds = %bb.e
  %i.as = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !32
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !15 ; 2 uses
  %i.ay = add i64 %i.as, 1
  %i.az = add i64 %i.ay, %i.av
  %i.ba = sub i64 %i.az, %i.ax
  %i.bb = zext i8 %i.aj to i64                    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %i.ax
  call void @MoveMemory(ptr noundef nonnull %i.bd, ptr noundef %i.be, i64 noundef %i.ba) #11
  %.045.i = add i64 %.050, 1                      ; 7 uses
  %i.bf = icmp ult i64 %.045.i, %2
  br i1 %i.bf, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.bg = icmp slt i32 %i.ap, 0
  %i.bh = zext nneg i32 %i.aq to i64              ; 4 uses
  %i.bi = xor i64 %.050, -1
  %i.bj = add i64 %2, %i.bi                       ; 5 uses
  %min.iters.check107 = icmp ult i64 %i.bj, 4     ; 2 uses
  br i1 %i.bg, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.i
  br i1 %min.iters.check107, label %.lr.ph.split.i.preheader140, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.split.i.preheader
  %n.vec125 = and i64 %i.bj, -4                   ; 3 uses
  %i.bk = add i64 %.045.i, %n.vec125
  %broadcast.splatinsert126 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat127 = shufflevector <2 x i64> %broadcast.splatinsert126, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bl = getelementptr [8 x i8], ptr %0, i64 %.045.i
  br label %vector.body128

vector.body128:                                   ; preds = %vector.body128, %vector.ph123
  %index129 = phi i64 [ 0, %vector.ph123 ], [ %index.next132, %vector.body128 ] ; 2 uses
  %i.bm = getelementptr [8 x i8], ptr %i.bl, i64 %index129 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %wide.load130 = load <2 x i64>, ptr %i.bm, align 8, !tbaa !15
  %wide.load131 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !15
  %i.bo = add <2 x i64> %wide.load130, %broadcast.splat127
  %i.bp = add <2 x i64> %wide.load131, %broadcast.splat127
  store <2 x i64> %i.bo, ptr %i.bm, align 8, !tbaa !15
  store <2 x i64> %i.bp, ptr %i.bn, align 8, !tbaa !15
  %index.next132 = add nuw i64 %index129, 4       ; 2 uses
  %i.bq = icmp eq i64 %index.next132, %n.vec125
  br i1 %i.bq, label %middle.block133, label %vector.body128, !llvm.loop !197

middle.block133:                                  ; preds = %vector.body128
  %cmp.n134 = icmp eq i64 %i.bj, %n.vec125
  br i1 %cmp.n134, label %._crit_edge.i, label %.lr.ph.split.i.preheader140

.lr.ph.split.i.preheader140:                      ; preds = %.lr.ph.split.i.preheader, %middle.block133
  %.046.i.ph = phi i64 [ %.045.i, %.lr.ph.split.i.preheader ], [ %i.bk, %middle.block133 ]
  br label %.lr.ph.split.i

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i
  br i1 %min.iters.check107, label %.lr.ph.split.us.i.preheader139, label %vector.ph108

vector.ph108:                                     ; preds = %.lr.ph.split.us.i.preheader
  %n.vec110 = and i64 %i.bj, -4                   ; 3 uses
  %i.br = add i64 %.045.i, %n.vec110
  %broadcast.splatinsert111 = insertelement <2 x i64> poison, i64 %i.bh, i64 0
  %broadcast.splat112 = shufflevector <2 x i64> %broadcast.splatinsert111, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %0, i64 %.045.i
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph108
  %index114 = phi i64 [ 0, %vector.ph108 ], [ %index.next117, %vector.body113 ] ; 2 uses
  %i.bt = getelementptr [8 x i8], ptr %i.bs, i64 %index114 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load115 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !15
  %wide.load116 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !15
  %i.bv = sub <2 x i64> %wide.load115, %broadcast.splat112
  %i.bw = sub <2 x i64> %wide.load116, %broadcast.splat112
  store <2 x i64> %i.bv, ptr %i.bt, align 8, !tbaa !15
  store <2 x i64> %i.bw, ptr %i.bu, align 8, !tbaa !15
  %index.next117 = add nuw i64 %index114, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next117, %n.vec110
  br i1 %i.bx, label %middle.block118, label %vector.body113, !llvm.loop !198

middle.block118:                                  ; preds = %vector.body113
  %cmp.n119 = icmp eq i64 %i.bj, %n.vec110
  br i1 %cmp.n119, label %._crit_edge.i, label %.lr.ph.split.us.i.preheader139

.lr.ph.split.us.i.preheader139:                   ; preds = %.lr.ph.split.us.i.preheader, %middle.block118
  %.046.us.i.ph = phi i64 [ %.045.i, %.lr.ph.split.us.i.preheader ], [ %i.br, %middle.block118 ]
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader139, %.lr.ph.split.us.i
  %.046.us.i = phi i64 [ %.0.us.i, %.lr.ph.split.us.i ], [ %.046.us.i.ph, %.lr.ph.split.us.i.preheader139 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.us.i ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !15
  %i.ca = sub i64 %i.bz, %i.bh
  store i64 %i.ca, ptr %i.by, align 8, !tbaa !15
  %.0.us.i = add nuw i64 %.046.us.i, 1            ; 2 uses
  %exitcond48.not.i = icmp eq i64 %.0.us.i, %2
  br i1 %exitcond48.not.i, label %._crit_edge.i, label %.lr.ph.split.us.i, !llvm.loop !199

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader140, %.lr.ph.split.i
  %.046.i = phi i64 [ %.0.i, %.lr.ph.split.i ], [ %.046.i.ph, %.lr.ph.split.i.preheader140 ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i ; 2 uses
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !15
  %i.cd = add i64 %i.cc, %i.bh
  store i64 %i.cd, ptr %i.cb, align 8, !tbaa !15
  %.0.i = add nuw i64 %.046.i, 1                  ; 2 uses
  %exitcond.not.i = icmp eq i64 %.0.i, %2
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.i, !llvm.loop !200

._crit_edge.i:                                    ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i, %middle.block133, %middle.block118, %bb.g
  %i.ce = load i64, ptr %i.z, align 8, !tbaa !15
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 %i.ce
  store i8 %i.aj, ptr %i.cf, align 1, !tbaa !32
  br label %stradjust.exit

stradjust.exit:                                   ; preds = %bb.f, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre.a, %bb.f ], [ %i.bb, %._crit_edge.i ]
  %i.cg = load i64, ptr %i.z, align 8, !tbaa !15
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 %i.cg
  %i.ci = load i64, ptr %i.v, align 8, !tbaa !15
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 %i.ci
  %i.ck = add nuw nsw i64 %.pre-phi, 1
  call void @MoveMemory(ptr noundef %i.ch, ptr noundef %i.cj, i64 noundef %i.ck) #11
  %i.cl = load i8, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.cm = zext i8 %i.cl to i32
  %i.cn = load i64, ptr %i.v, align 8, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 %i.cn ; 3 uses
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !32
  %i.cq = zext i8 %i.cp to i32
  %i.cr = sub nsw i32 %i.cm, %i.cq                ; 2 uses
  %i.cs = call i32 @llvm.abs.i32(i32 %i.cr, i1 true)
  %i.ct = icmp eq i64 %.075, %i.c
  br i1 %i.ct, label %bb.h, label %bb.i

bb.h:                                             ; preds = %stradjust.exit
  store i8 %i.cl, ptr %i.co, align 1, !tbaa !32
  %.pre78 = zext i8 %i.cl to i64
  br label %stradjust.exit70

bb.i:                                             ; preds = %stradjust.exit
  %i.cu = load i64, ptr %i.e, align 8, !tbaa !15  ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %i.cu
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !32
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !15 ; 2 uses
  %i.da = add i64 %i.cu, 1
  %i.db = add i64 %i.da, %i.cx
  %i.dc = sub i64 %i.db, %i.cz
  %i.dd = zext i8 %i.cl to i64                    ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.dd
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 1
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 %i.cz
  call void @MoveMemory(ptr noundef nonnull %i.df, ptr noundef %i.dg, i64 noundef %i.dc) #11
  %.045.i59 = add i64 %.075, 1                    ; 7 uses
  %i.dh = icmp ult i64 %.045.i59, %2
  br i1 %i.dh, label %.lr.ph.i61, label %._crit_edge.i60

.lr.ph.i61:                                       ; preds = %bb.i
  %i.di = icmp slt i32 %i.cr, 0
  %i.dj = zext nneg i32 %i.cs to i64              ; 4 uses
  %i.dk = xor i64 %.075, -1
  %i.dl = add i64 %2, %i.dk                       ; 5 uses
  %min.iters.check = icmp ult i64 %i.dl, 4        ; 2 uses
  br i1 %i.di, label %.lr.ph.split.us.i66.preheader, label %.lr.ph.split.i62.preheader

.lr.ph.split.i62.preheader:                       ; preds = %.lr.ph.i61
  br i1 %min.iters.check, label %.lr.ph.split.i62.preheader137, label %vector.ph93

vector.ph93:                                      ; preds = %.lr.ph.split.i62.preheader
  %n.vec95 = and i64 %i.dl, -4                    ; 3 uses
  %i.dm = add i64 %.045.i59, %n.vec95
  %broadcast.splatinsert96 = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat97 = shufflevector <2 x i64> %broadcast.splatinsert96, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %0, i64 %.045.i59
  br label %vector.body98

vector.body98:                                    ; preds = %vector.body98, %vector.ph93
  %index99 = phi i64 [ 0, %vector.ph93 ], [ %index.next102, %vector.body98 ] ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %index99 ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16 ; 2 uses
  %wide.load100 = load <2 x i64>, ptr %i.do, align 8, !tbaa !15
  %wide.load101 = load <2 x i64>, ptr %i.dp, align 8, !tbaa !15
  %i.dq = add <2 x i64> %wide.load100, %broadcast.splat97
  %i.dr = add <2 x i64> %wide.load101, %broadcast.splat97
  store <2 x i64> %i.dq, ptr %i.do, align 8, !tbaa !15
  store <2 x i64> %i.dr, ptr %i.dp, align 8, !tbaa !15
  %index.next102 = add nuw i64 %index99, 4        ; 2 uses
  %i.ds = icmp eq i64 %index.next102, %n.vec95
  br i1 %i.ds, label %middle.block103, label %vector.body98, !llvm.loop !201

middle.block103:                                  ; preds = %vector.body98
  %cmp.n104 = icmp eq i64 %i.dl, %n.vec95
  br i1 %cmp.n104, label %._crit_edge.i60, label %.lr.ph.split.i62.preheader137

.lr.ph.split.i62.preheader137:                    ; preds = %.lr.ph.split.i62.preheader, %middle.block103
  %.046.i63.ph = phi i64 [ %.045.i59, %.lr.ph.split.i62.preheader ], [ %i.dm, %middle.block103 ]
  br label %.lr.ph.split.i62

.lr.ph.split.us.i66.preheader:                    ; preds = %.lr.ph.i61
  br i1 %min.iters.check, label %.lr.ph.split.us.i66.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.split.us.i66.preheader
  %n.vec = and i64 %i.dl, -4                      ; 3 uses
  %i.dt = add i64 %.045.i59, %n.vec
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dj, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %0, i64 %.045.i59
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %index ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.dv, align 8, !tbaa !15
  %wide.load90 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !15
  %i.dx = sub <2 x i64> %wide.load, %broadcast.splat
  %i.dy = sub <2 x i64> %wide.load90, %broadcast.splat
  store <2 x i64> %i.dx, ptr %i.dv, align 8, !tbaa !15
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !15
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dz = icmp eq i64 %index.next, %n.vec
  br i1 %i.dz, label %middle.block, label %vector.body, !llvm.loop !202

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dl, %n.vec
  br i1 %cmp.n, label %._crit_edge.i60, label %.lr.ph.split.us.i66.preheader136

.lr.ph.split.us.i66.preheader136:                 ; preds = %.lr.ph.split.us.i66.preheader, %middle.block
  %.046.us.i67.ph = phi i64 [ %.045.i59, %.lr.ph.split.us.i66.preheader ], [ %i.dt, %middle.block ]
  br label %.lr.ph.split.us.i66

.lr.ph.split.us.i66:                              ; preds = %.lr.ph.split.us.i66.preheader136, %.lr.ph.split.us.i66
  %.046.us.i67 = phi i64 [ %.0.us.i68, %.lr.ph.split.us.i66 ], [ %.046.us.i67.ph, %.lr.ph.split.us.i66.preheader136 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.us.i67 ; 2 uses
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !15
  %i.ec = sub i64 %i.eb, %i.dj
  store i64 %i.ec, ptr %i.ea, align 8, !tbaa !15
  %.0.us.i68 = add nuw i64 %.046.us.i67, 1        ; 2 uses
  %exitcond48.not.i69 = icmp eq i64 %.0.us.i68, %2
  br i1 %exitcond48.not.i69, label %._crit_edge.i60, label %.lr.ph.split.us.i66, !llvm.loop !203

.lr.ph.split.i62:                                 ; preds = %.lr.ph.split.i62.preheader137, %.lr.ph.split.i62
  %.046.i63 = phi i64 [ %.0.i64, %.lr.ph.split.i62 ], [ %.046.i63.ph, %.lr.ph.split.i62.preheader137 ] ; 2 uses
  %i.ed = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.046.i63 ; 2 uses
  %i.ee = load i64, ptr %i.ed, align 8, !tbaa !15
  %i.ef = add i64 %i.ee, %i.dj
  store i64 %i.ef, ptr %i.ed, align 8, !tbaa !15
  %.0.i64 = add nuw i64 %.046.i63, 1              ; 2 uses
  %exitcond.not.i65 = icmp eq i64 %.0.i64, %2
  br i1 %exitcond.not.i65, label %._crit_edge.i60, label %.lr.ph.split.i62, !llvm.loop !204

._crit_edge.i60:                                  ; preds = %.lr.ph.split.i62, %.lr.ph.split.us.i66, %middle.block103, %middle.block, %bb.i
  %i.eg = load i64, ptr %i.v, align 8, !tbaa !15
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 %i.eg
  store i8 %i.cl, ptr %i.eh, align 1, !tbaa !32
  br label %stradjust.exit70

stradjust.exit70:                                 ; preds = %bb.h, %._crit_edge.i60
  %.pre-phi79 = phi i64 [ %.pre78, %bb.h ], [ %i.dd, %._crit_edge.i60 ]
  %i.ei = load i64, ptr %i.v, align 8, !tbaa !15
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 %i.ei
  %i.ek = add nuw nsw i64 %.pre-phi79, 1
  call void @MoveMemory(ptr noundef %i.ej, ptr noundef nonnull %i.a, i64 noundef %i.ek) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %stradjust.exit70
  %.1 = phi i64 [ %.050, %stradjust.exit70 ], [ %i.f, %bb.d ] ; 2 uses
  %i.el = shl i64 %.1, 1                          ; 2 uses
  %.not = icmp ugt i64 %i.el, %4
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !205

._crit_edge:                                      ; preds = %bb.j, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

declare void @MoveMemory(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.fshl.i16(i16, i16, i16) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.vector.reduce.add.v8i16(<8 x i16>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i64> @llvm.smin.v2i64(<2 x i64>, <2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.smin.v2i64(<2 x i64>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fmuladd.v4f64(<4 x double>, <4 x double>, <4 x double>) #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #9 = { nofree nounwind }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 0}
!9 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !12, i64 24, !10, i64 32}
!10 = !{!"long", !6, i64 0}
!11 = !{!"double", !6, i64 0}
!12 = !{!"short", !6, i64 0}
!13 = !{!9, !12, i64 24}
!14 = !{!9, !10, i64 32}
!15 = !{!10, !10, i64 0}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.mustprogress"}
!18 = !{!9, !11, i64 16}
!19 = distinct !{!19, !17}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17, !22, !23}
!22 = !{!"llvm.loop.isvectorized", i32 1}
!23 = !{!"llvm.loop.unroll.runtime.disable"}
!24 = distinct !{!24, !25}
!25 = !{!"llvm.loop.unroll.disable"}
!26 = distinct !{!26, !17, !22}
!27 = distinct !{!27, !17}
!28 = distinct !{!28, !17}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !17}
!32 = !{!6, !6, i64 0}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !17, !22, !23}
!36 = !{!"branch_weights", i32 4, i32 28}
!37 = distinct !{!37, !17, !22, !23}
!38 = distinct !{!38, !17, !22}
!39 = distinct !{!39, !17}
!40 = distinct !{!40, !25}
!41 = distinct !{!41, !17}
!42 = distinct !{!42, !17, !22, !23}
!43 = distinct !{!43, !17, !22}
!44 = distinct !{!44, !17, !45}
!45 = !{!"llvm.loop.unswitch.partial.disable"}
!46 = distinct !{!46, !17}
!47 = distinct !{!47, !17, !22, !23}
!48 = distinct !{!48, !17, !22, !23}
!49 = distinct !{!49, !17, !23, !22}
!50 = distinct !{!50, !17, !23, !22}
!51 = distinct !{!51, !17, !22, !23}
!52 = distinct !{!52, !17, !22, !23}
!53 = distinct !{!53, !17, !23, !22}
!54 = distinct !{!54, !17, !23, !22}
!55 = distinct !{!55, !17}
!56 = distinct !{!56, !17}
!57 = !{!58, !5, i64 0}
!58 = !{!"", !5, i64 0, !10, i64 8, !11, i64 16, !10, i64 24, !10, i64 32}
!59 = !{!58, !10, i64 32}
!60 = !{!58, !10, i64 24}
!61 = distinct !{!61, !17}
!62 = !{!58, !11, i64 16}
!63 = distinct !{!63, !17}
!64 = distinct !{!64, !17}
!65 = distinct !{!65, !17}
!66 = distinct !{!66, !17}
!67 = distinct !{!67, !17}
!68 = !{!69, !10, i64 16}
!69 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16, !10, i64 24, !11, i64 32}
!70 = !{!69, !5, i64 0}
!71 = !{!69, !10, i64 24}
!72 = distinct !{!72, !17}
!73 = !{!69, !11, i64 32}
!74 = !{!75, !5, i64 0}
!75 = !{!"", !5, i64 0, !10, i64 8, !10, i64 16, !11, i64 24}
!76 = !{!75, !10, i64 16}
!77 = distinct !{!77, !17}
!78 = !{!75, !11, i64 24}
!79 = distinct !{!79, !17}
!80 = !{!11, !11, i64 0}
!81 = distinct !{!81, !17}
!82 = distinct !{!82, !17}
!83 = distinct !{!83, !17}
!84 = distinct !{!84, !25}
!85 = distinct !{!85, !17, !22}
!86 = distinct !{!86, !17}
!87 = distinct !{!87, !17}
!88 = distinct !{!88, !17, !22, !23}
!89 = distinct !{!89, !17}
!90 = distinct !{!90, !17}
!91 = !{!12, !12, i64 0}
!92 = distinct !{!92, !17}
!93 = distinct !{!93, !17}
!94 = distinct !{!94, !17}
!95 = distinct !{!95, !17}
!96 = distinct !{!96, !17}
!97 = distinct !{!97, !17, !22, !23}
!98 = distinct !{!98, !17}
!99 = distinct !{!99, !17}
!100 = distinct !{!100, !17}
!101 = distinct !{!101, !17}
!102 = distinct !{!102, !17}
!103 = distinct !{!103, !17}
!104 = distinct !{!104, !17}
!105 = distinct !{!105, !17}
!106 = distinct !{!106, !17}
!107 = distinct !{!107, !17}
!108 = distinct !{!108, !17}
!109 = distinct !{!109, !17}
!110 = distinct !{!110, !17}
!111 = distinct !{!111, !17}
!112 = distinct !{!112, !17}
!113 = distinct !{!113, !17}
!114 = !{!115, !115, i64 0}
!115 = !{!"any pointer", !6, i64 0}
!116 = !{!117, !117, i64 0}
!117 = !{!"p1 omnipotent char", !115, i64 0}
!118 = distinct !{!118, !17}
!119 = distinct !{!119, !17}
!120 = distinct !{!120, !17}
!121 = distinct !{!121, !17}
!122 = !{!123, !124, i64 4}
!123 = !{!"", !6, i64 0, !124, i64 4, !5, i64 8, !5, i64 12, !5, i64 16}
!124 = !{!"float", !6, i64 0}
!125 = !{!123, !6, i64 0}
!126 = distinct !{!126, !17}
!127 = distinct !{!127, !25}
!128 = distinct !{!128, !17, !22, !23}
!129 = distinct !{!129, !17}
!130 = !{!123, !5, i64 16}
!131 = !{!123, !5, i64 12}
!132 = !{!123, !5, i64 8}
!133 = distinct !{!133, !17}
!134 = distinct !{!134, !17}
!135 = distinct !{!135, !17}
!136 = distinct !{!136, !17}
!137 = distinct !{!137, !17}
!138 = distinct !{!138, !17}
!139 = distinct !{!139, !17}
!140 = distinct !{!140, !17}
!141 = distinct !{!141, !17}
!142 = distinct !{!142, !17}
!143 = distinct !{!143, !17}
!144 = distinct !{!144, !17}
!145 = distinct !{!145, !17}
!146 = distinct !{!146, !17}
!147 = distinct !{!147, !17}
!148 = distinct !{!148, !17}
!149 = distinct !{!149, !17}
!150 = distinct !{!150, !17}
!151 = distinct !{!151, !17, !22, !23}
!152 = distinct !{!152, !17}
!153 = distinct !{!153, !17}
!154 = distinct !{!154, !17, !22, !23}
!155 = distinct !{!155, !17, !22, !23}
!156 = distinct !{!156, !17, !23, !22}
!157 = distinct !{!157, !17, !23, !22}
!158 = !{!159, !159, i64 0}
end_hunk_1
