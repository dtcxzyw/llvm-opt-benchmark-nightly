inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoNumSortIteration:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge33.i22.i
  %.1.i24.i = phi i64 [ %.0.i23.i, %bb.g ], [ %i.bn, %._crit_edge33.i22.i ] ; 2 uses
  %i.cc = shl i64 %.1.i24.i, 1                    ; 2 uses
  %.not.i25.i = icmp ugt i64 %i.cc, %.131.i
  br i1 %.not.i25.i, label %NumSift.exit27.i, label %bb.e, !llvm.loop !27

NumSift.exit27.i:                                 ; preds = %bb.h
  %i.cd = load i64, ptr %i.av, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.131.i ; 2 uses
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !15
  store i64 %i.cf, ptr %i.av, align 8, !tbaa !15
  store i64 %i.cd, ptr %i.ce, align 8, !tbaa !15
  %i.cg = add i64 %.131.i, -1                     ; 2 uses
  %.not18.i = icmp eq i64 %i.cg, 0
  br i1 %.not18.i, label %NumHeapSort.exit.loopexit, label %.lr.ph32.i, !llvm.loop !29

NumHeapSort.exit.loopexit:                        ; preds = %NumSift.exit27.i
  %i.ch = add nuw nsw i64 %.014, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.ch, %i.aq
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !30

._crit_edge:                                      ; preds = %NumHeapSort.exit.loopexit, %.lr.ph, %LoadNumArrayWithRand.exit
  %i.ci = phi i64 [ %i.ao, %LoadNumArrayWithRand.exit ], [ %i.ar, %.lr.ph ], [ %i.ar, %NumHeapSort.exit.loopexit ]
  %i.cj = tail call i64 @StopStopwatch(i64 noundef %i.ci) #11
  ret i64 %i.cj
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
  %.026 = phi ptr [ %i.w, %bb.e ], [ %i.w, %bb.f ], [ %i.h, %bb.c ] ; 2 uses
  %.pre = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.loopexit
  %i.y = phi i16 [ %.pre, %.loopexit ], [ %i.ad, %bb.g ]
  %.025 = phi i64 [ 0, %.loopexit ], [ %i.ac, %bb.g ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.af, %bb.g ]
  %i.z = zext i16 %i.y to i32
  %i.aa = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 32), align 8, !tbaa !14
  %i.ab = call fastcc i64 @DoStringSortIteration(ptr noundef %.026, i32 noundef %i.z, i64 noundef %i.aa)
  %i.ac = add i64 %i.ab, %.025                    ; 2 uses
  %i.ad = load i16, ptr getelementptr inbounds nuw (i8, ptr @global_strsortstruct, i64 24), align 8, !tbaa !13 ; 2 uses
  %i.ae = uitofp i16 %i.ad to double
  %i.af = fadd double %.0, %i.ae                  ; 3 uses
  %i.ag = fcmp olt double %i.af, 1.250000e+02
  br i1 %i.ag, label %bb.g, label %bb.h, !llvm.loop !31

bb.h:                                             ; preds = %bb.g
  call void @FreeMemory(ptr noundef %.026, ptr noundef nonnull %i.a) #11
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
  %min.iters.check60 = icmp ult i64 %2, 32
  %i.ad = and i64 %2, 28
  %n.vec = and i64 %2, 8589934560                 ; 5 uses
  %3 = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %2, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec62 = and i64 %2, 8589934588               ; 4 uses
  %4 = trunc i64 %n.vec62 to i32
  %cmp.n66 = icmp eq i64 %2, %n.vec62
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %indvar = phi i64 [ 0, %.lr.ph79.i.preheader ], [ %indvar.next, %._crit_edge80.i ] ; 2 uses
  %.05682.i = phi i32 [ 1, %.lr.ph79.i.preheader ], [ %i.av, %._crit_edge80.i ]
  %.06681.i = phi ptr [ %0, %.lr.ph79.i.preheader ], [ %i.af, %._crit_edge80.i ]
  %i.ae = getelementptr i8, ptr %.06681.i, i64 %2
  %i.af = getelementptr i8, ptr %i.ae, i64 100    ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.ag = add i64 %indvar, 1
  %i.ah = mul i64 %i.y, %i.ag
  %i.ai = add i64 %i.ah, -1
  %diff.check = icmp ult i64 %i.ai, 31
  %or.cond = select i1 %i.ac, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check60, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load = load <16 x i8>, ptr %i.aj, align 1, !tbaa !32
  %wide.load61.a = load <16 x i8>, ptr %i.ak, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !32
  store <16 x i8> %wide.load61.a, ptr %i.am, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.an = icmp eq i64 %index.next, %n.vec
  br i1 %i.an, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge80.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index63 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next65, %vec.epilog.vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 %index63
  %wide.load64 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !32
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 %index63
  store <4 x i8> %wide.load64, ptr %i.ap, align 1, !tbaa !32
  %index.next65 = add nuw i64 %index63, 4         ; 2 uses
  %i.aq = icmp eq i64 %index.next65, %n.vec62
  br i1 %i.aq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n66, label %._crit_edge80.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec62, %vec.epilog.middle.block ]
  %.077.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %6, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.077.i = phi i32 [ %5, %vec.epilog.scalar.ph ], [ %.077.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !32
  %5 = add i32 %.077.i, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.au = icmp ugt i64 %2, %6
  br i1 %i.au, label %vec.epilog.scalar.ph, label %._crit_edge80.i, !llvm.loop !38

._crit_edge80.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.av = add nuw nsw i32 %.05682.i, 1            ; 2 uses
  %exitcond104.not.i.a = icmp eq i32 %i.av, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond104.not.i.a, label %._crit_edge84.split.i, label %iter.check, !llvm.loop !39

._crit_edge84.split.i:                            ; preds = %._crit_edge80.i, %.preheader73.i
  %i.aw = shl nuw nsw i32 %1, 3
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = mul i64 %i.u, %i.ax
  %i.az = call ptr @AllocateMemory(i64 noundef %i.ay, ptr noundef nonnull %i.b) #11 ; 10 uses
  %i.ba = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not72.i = icmp eq i32 %i.ba, 0
  br i1 %.not72.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge84.split.i
  call void @ReportError(ptr noundef nonnull @.str.63, i32 noundef %i.ba) #11
  call void @FreeMemory(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge84.split.i
  %.not98.i = icmp eq i64 %i.u, 0
  br i1 %.not98.i, label %LoadStringArray.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.bb = icmp ult i64 %.028, 3
  br i1 %i.bb, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i.preheader.new

.lr.ph88.i.preheader.new:                         ; preds = %.lr.ph88.i.preheader
  %unroll_iter = and i64 %indvars.iv, -4
  br label %.lr.ph88.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph88.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph88.i.preheader
  %.05886.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.cq, %.preheader.i.unr-lcssa ]
  %.285.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.cp, %.preheader.i.unr-lcssa ]
  %lcmp.mod147 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod147)
  br label %.lr.ph88.i.epil

.lr.ph88.i.epil:                                  ; preds = %.lr.ph88.i.epil, %.lr.ph88.i.epil.preheader
  %.05886.i.epil = phi i64 [ %i.bi, %.lr.ph88.i.epil ], [ %.05886.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %.285.i.epil = phi i64 [ %i.bh, %.lr.ph88.i.epil ], [ %.285.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph88.i.epil ], [ 0, %.lr.ph88.i.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05886.i.epil
  store i64 %.285.i.epil, ptr %i.bc, align 8, !tbaa !15
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i.epil
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !32
  %i.bf = zext i8 %i.be to i64
  %i.bg = add i64 %.285.i.epil, 1
  %i.bh = add i64 %i.bg, %i.bf
  %i.bi = add nuw i64 %.05886.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph88.i.epil, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph88.i.epil, %.preheader.i.unr-lcssa
  br i1 %i.v, label %.lr.ph91.i.preheader.preheader, label %LoadStringArray.exit

.lr.ph91.i.preheader.preheader:                   ; preds = %.preheader.i
  %i.bj = shl i64 %.028, 3
  %i.bk = add i64 %i.bj, 8
  %min.iters.check72 = icmp ult i64 %indvars.iv, 14
  %i.bl = and i64 %.028, 4294967295
  %i.bm = icmp eq i64 %i.bl, 4294967295
  %i.bn = icmp ugt i64 %.028, 4294967295
  %i.bo = or i1 %i.bm, %i.bn
  %n.vec74 = and i64 %indvars.iv, -4              ; 4 uses
  %7 = trunc i64 %n.vec74 to i32
  %cmp.n81 = icmp eq i64 %indvars.iv, %n.vec74
  br label %.lr.ph91.i.preheader

.lr.ph88.i:                                       ; preds = %.lr.ph88.i, %.lr.ph88.i.preheader.new
  %.05886.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.cq, %.lr.ph88.i ] ; 5 uses
  %.285.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.cp, %.lr.ph88.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %niter.next.3, %.lr.ph88.i ]
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05886.i
  store i64 %.285.i, ptr %i.bp, align 8, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !32
  %i.bs = zext i8 %i.br to i64
  %i.bt = add i64 %.285.i, 1
  %i.bu = add i64 %i.bt, %i.bs                    ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05886.i
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  store i64 %i.bu, ptr %i.bw, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 %i.bu
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !32
  %i.bz = zext i8 %i.by to i64
  %i.ca = add i64 %i.bu, 1
  %i.cb = add i64 %i.ca, %i.bz                    ; 3 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05886.i
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 %i.cb, ptr %i.cd, align 8, !tbaa !15
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !32
  %i.cg = zext i8 %i.cf to i64
  %i.ch = add i64 %i.cb, 1
  %i.ci = add i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.05886.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store i64 %i.ci, ptr %i.ck, align 8, !tbaa !15
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 %i.ci
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !32
  %i.cn = zext i8 %i.cm to i64
  %i.co = add i64 %i.ci, 1
  %i.cp = add i64 %i.co, %i.cn                    ; 2 uses
  %i.cq = add nuw i64 %.05886.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !41

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.i.preheader.preheader, %._crit_edge92.i
  %indvar69 = phi i64 [ 0, %.lr.ph91.i.preheader.preheader ], [ %indvar.next70, %._crit_edge92.i ] ; 2 uses
  %.15794.i = phi i32 [ 1, %.lr.ph91.i.preheader.preheader ], [ %i.de, %._crit_edge92.i ]
  %.06593.i = phi ptr [ %i.az, %.lr.ph91.i.preheader.preheader ], [ %i.cr, %._crit_edge92.i ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.06593.i, i64 %i.u ; 3 uses
  br i1 %min.iters.check72, label %.lr.ph91.i.preheader146, label %vector.scevcheck67

vector.scevcheck67:                               ; preds = %.lr.ph91.i.preheader
  %i.cs = add i64 %indvar69, 1
  %i.ct = mul i64 %i.bk, %i.cs
  %i.cu = add i64 %i.ct, -1
  %diff.check71 = icmp ult i64 %i.cu, 31
  %or.cond139 = select i1 %i.bo, i1 true, i1 %diff.check71
  br i1 %or.cond139, label %.lr.ph91.i.preheader146, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck67, %vector.body75
  %index76 = phi i64 [ %index.next79, %vector.body75 ], [ 0, %vector.scevcheck67 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index76 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load77.a = load <2 x i64>, ptr %i.cv, align 8, !tbaa !15
  %wide.load78 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index76 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %wide.load77.a, ptr %i.cx, align 8, !tbaa !15
  store <2 x i64> %wide.load78, ptr %i.cy, align 8, !tbaa !15
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.cz, label %middle.block80, label %vector.body75, !llvm.loop !42

middle.block80:                                   ; preds = %vector.body75
  br i1 %cmp.n81, label %._crit_edge92.i, label %.lr.ph91.i.preheader146

.lr.ph91.i.preheader146:                          ; preds = %vector.scevcheck67, %.lr.ph91.i.preheader, %middle.block80
  %indvars.iv40.ph = phi i64 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %n.vec74, %middle.block80 ]
  %.189.i.ph = phi i32 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %7, %middle.block80 ]
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader146, %.lr.ph91.i
  %indvars.iv40 = phi i64 [ %9, %.lr.ph91.i ], [ %indvars.iv40.ph, %.lr.ph91.i.preheader146 ] ; 2 uses
  %.189.i = phi i32 [ %8, %.lr.ph91.i ], [ %.189.i.ph, %.lr.ph91.i.preheader146 ]
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %indvars.iv40
  %i.db = load i64, ptr %i.da, align 8, !tbaa !15
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv40
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !15
  %8 = add i32 %.189.i, 1                         ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.dd = icmp ugt i64 %i.u, %9
  br i1 %i.dd, label %.lr.ph91.i, label %._crit_edge92.i, !llvm.loop !43

._crit_edge92.i:                                  ; preds = %.lr.ph91.i, %middle.block80
  %i.de = add nuw nsw i32 %.15794.i, 1            ; 2 uses
  %exitcond105.not.i = icmp eq i32 %i.de, %1
  %indvar.next70 = add i64 %indvar69, 1
  br i1 %exitcond105.not.i, label %LoadStringArray.exit.thread, label %.lr.ph91.i.preheader, !llvm.loop !44

LoadStringArray.exit.thread:                      ; preds = %._crit_edge92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.df = call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

LoadStringArray.exit:                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dg = call i64 (...) @StartStopwatch() #11    ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadStringArray.exit.thread, %LoadStringArray.exit
  %i.dh = phi i64 [ %i.df, %LoadStringArray.exit.thread ], [ %i.dg, %LoadStringArray.exit ] ; 2 uses
  %i.di = lshr i64 %.028, 1                       ; 2 uses
  %.not53.i = icmp eq i64 %i.di, 0
  %.not3855.i = icmp eq i64 %.028, 0
  %i.dj = icmp ugt i64 %i.u, 1
  br i1 %.not3855.i, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check112 = icmp ult i64 %.028, 4     ; 2 uses
  %n.vec128 = and i64 %.028, -4                   ; 3 uses
  %i.dk = or disjoint i64 %n.vec128, 1
  %cmp.n137 = icmp eq i64 %.028, %n.vec128
  %n.vec114 = and i64 %.028, -4                   ; 3 uses
  %i.dl = or disjoint i64 %n.vec114, 1
  %cmp.n123 = icmp eq i64 %.028, %n.vec114
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %StrHeapSort.exit.loopexit
  %.034 = phi ptr [ %i.hp, %StrHeapSort.exit.loopexit ], [ %0, %.lr.ph.split.preheader ] ; 17 uses
  %.01533 = phi ptr [ %i.dm, %StrHeapSort.exit.loopexit ], [ %i.az, %.lr.ph.split.preheader ] ; 15 uses
  %.01632 = phi i32 [ %i.hq, %StrHeapSort.exit.loopexit ], [ 0, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br i1 %.not53.i, label %.preheader.i19, label %.lr.ph.i17

.preheader.i19:                                   ; preds = %.lr.ph.i17, %.lr.ph.split
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %i.u ; 2 uses
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 -8 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.01533, i64 8
  br label %bb.e

.lr.ph.i17:                                       ; preds = %.lr.ph.split, %.lr.ph.i17
  %.054.i = phi i64 [ %i.dp, %.lr.ph.i17 ], [ %i.di, %.lr.ph.split ] ; 2 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef %.054.i, i64 noundef %.028)
  %i.dp = add nsw i64 %.054.i, -1                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.dp, 0
  br i1 %.not.i18, label %.preheader.i19, label %.lr.ph.i17, !llvm.loop !46

bb.e:                                             ; preds = %.preheader.i19, %stradjust.exit49.i
  %indvar83 = phi i64 [ 0, %.preheader.i19 ], [ %indvar.next84, %stradjust.exit49.i ] ; 6 uses
  %.156.i = phi i64 [ %.028, %.preheader.i19 ], [ %i.hn, %stradjust.exit49.i ] ; 5 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef 0, i64 noundef %.156.i)
  %i.dq = load i8, ptr %.034, align 1, !tbaa !32
  %i.dr = zext i8 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %.034, i64 noundef %i.ds) #11
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.156.i ; 6 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !15
  %i.dv = getelementptr inbounds nuw i8, ptr %.034, i64 %i.du
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !32  ; 3 uses
  %i.dx = load i64, ptr %.01533, align 8, !tbaa !15
  %i.dy = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dx ; 2 uses
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !32
  %i.ea = load i64, ptr %i.dn, align 8, !tbaa !15 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ea
  %i.ec = load i8, ptr %i.eb, align 1, !tbaa !32
  %i.ed = zext i8 %i.ec to i64
  %i.ee = load i64, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.ef = add i64 %i.ea, 1
  %i.eg = add i64 %i.ef, %i.ed
  %i.eh = sub i64 %i.eg, %i.ee
  %i.ei = zext i8 %i.dw to i64                    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  %i.el = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ee
  call void @MoveMemory(ptr noundef nonnull %i.ek, ptr noundef nonnull %i.el, i64 noundef %i.eh) #11
  br i1 %i.dj, label %.lr.ph.i.i, label %stradjust.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.em = zext i8 %i.dw to i32
  %i.en = zext i8 %i.dz to i32
  %i.eo = sub nsw i32 %i.em, %i.en                ; 2 uses
  %i.ep = call i32 @llvm.abs.i32(i32 %i.eo, i1 true)
  %i.eq = icmp slt i32 %i.eo, 0
  %i.er = zext nneg i32 %i.ep to i64              ; 4 uses
  br i1 %i.eq, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %min.iters.check112, label %.lr.ph.split.i.i.preheader144, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.split.i.i.preheader
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index132 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 24 ; 2 uses
  %wide.load133.a = load <2 x i64>, ptr %i.et, align 8, !tbaa !15
  %wide.load134 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !15
  %i.ev = add <2 x i64> %wide.load133.a, %broadcast.splat130
  %i.ew = add <2 x i64> %wide.load134, %broadcast.splat130
  store <2 x i64> %i.ev, ptr %i.et, align 8, !tbaa !15
  store <2 x i64> %i.ew, ptr %i.eu, align 8, !tbaa !15
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.ex, label %middle.block136, label %vector.body131, !llvm.loop !47

middle.block136:                                  ; preds = %vector.body131
  br i1 %cmp.n137, label %stradjust.exit.i, label %.lr.ph.split.i.i.preheader144

.lr.ph.split.i.i.preheader144:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block136
  %.046.i.i.ph = phi i64 [ 1, %.lr.ph.split.i.i.preheader ], [ %i.dk, %middle.block136 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check112, label %.lr.ph.split.us.i.i.preheader143, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.split.us.i.i.preheader
  %broadcast.splatinsert115 = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat116 = shufflevector <2 x i64> %broadcast.splatinsert115, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index118 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ey, i64 24 ; 2 uses
  %wide.load119.a = load <2 x i64>, ptr %i.ez, align 8, !tbaa !15
  %wide.load120 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !15
  %i.fb = sub <2 x i64> %wide.load119.a, %broadcast.splat116
  %i.fc = sub <2 x i64> %wide.load120, %broadcast.splat116
  store <2 x i64> %i.fb, ptr %i.ez, align 8, !tbaa !15
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !15
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.fd = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.fd, label %middle.block122, label %vector.body117, !llvm.loop !48

middle.block122:                                  ; preds = %vector.body117
  br i1 %cmp.n123, label %stradjust.exit.i, label %.lr.ph.split.us.i.i.preheader143

.lr.ph.split.us.i.i.preheader143:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block122
  %.046.us.i.i.ph = phi i64 [ 1, %.lr.ph.split.us.i.i.preheader ], [ %i.dl, %middle.block122 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader143, %.lr.ph.split.us.i.i
  %.046.us.i.i = phi i64 [ %.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.046.us.i.i.ph, %.lr.ph.split.us.i.i.preheader143 ] ; 3 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i.i ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !15
  %i.fg = sub i64 %i.ff, %i.er
  store i64 %i.fg, ptr %i.fe, align 8, !tbaa !15
  %.0.us.i.i = add nuw i64 %.046.us.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %.046.us.i.i, %.028
  br i1 %exitcond48.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader144, %.lr.ph.split.i.i
  %.046.i.i = phi i64 [ %.0.i.i, %.lr.ph.split.i.i ], [ %.046.i.i.ph, %.lr.ph.split.i.i.preheader144 ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i.i ; 2 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !15
  %i.fj = add i64 %i.fi, %i.er
  store i64 %i.fj, ptr %i.fh, align 8, !tbaa !15
  %.0.i.i = add nuw i64 %.046.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.046.i.i, %.028
  br i1 %exitcond.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.i.i, !llvm.loop !50

stradjust.exit.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %middle.block136, %middle.block122, %bb.e
  %i.fk = load i64, ptr %.01533, align 8, !tbaa !15
  %i.fl = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fk
  store i8 %i.dw, ptr %i.fl, align 1, !tbaa !32
  %i.fm = load i64, ptr %i.dt, align 8, !tbaa !15
  %i.fn = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fm
  %i.fo = add nuw nsw i64 %i.ei, 1
  call void @MoveMemory(ptr noundef nonnull %.034, ptr noundef nonnull %i.fn, i64 noundef %i.fo) #11
  %i.fp = load i8, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.fq = zext i8 %i.fp to i32
  %i.fr = load i64, ptr %i.dt, align 8, !tbaa !15
  %i.fs = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fr ; 3 uses
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !32
  %i.fu = zext i8 %i.ft to i32
  %i.fv = sub nsw i32 %i.fq, %i.fu                ; 2 uses
  %i.fw = call i32 @llvm.abs.i32(i32 %i.fv, i1 true)
  %i.fx = icmp eq i64 %.156.i, %.028
  br i1 %i.fx, label %bb.f, label %bb.g

bb.f:                                             ; preds = %stradjust.exit.i
  store i8 %i.fp, ptr %i.fs, align 1, !tbaa !32
  %.pre60.i = zext i8 %i.fp to i64
  br label %stradjust.exit49.i

end_hunk_0
begin_hunk_1_@DoIDEA:.preheader188.preheader

bb.ar:                                            ; preds = %bb.ap
  %i.kf = sub i16 1, %.049.i70
  br label %mul.exit.i77

bb.as:                                            ; preds = %bb.ao
  %i.kg = sub i16 1, %i.ju
  br label %mul.exit.i77

mul.exit.i77:                                     ; preds = %bb.as, %bb.ar, %bb.aq
  %.0.i.i78 = phi i16 [ %i.ke, %bb.aq ], [ %i.kf, %bb.ar ], [ %i.kg, %bb.as ] ; 4 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %.050.i69, i64 4
  %i.ki = load i16, ptr %i.jt, align 2, !tbaa !91
  %i.kj = add i16 %i.ki, %.048.in.i71             ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %.050.i69, i64 6
  %i.kl = load i16, ptr %i.kh, align 2, !tbaa !91
  %i.km = add i16 %i.kl, %.047.in.i72             ; 3 uses
  %i.kn = getelementptr inbounds nuw i8, ptr %.050.i69, i64 8
  %i.ko = load i16, ptr %i.kk, align 2, !tbaa !91 ; 3 uses
  %.not.i51.i79 = icmp eq i16 %.046.i73, 0
  br i1 %.not.i51.i79, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %mul.exit.i77
  %.not15.i52.i80 = icmp eq i16 %i.ko, 0
  br i1 %.not15.i52.i80, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kp = zext i16 %.046.i73 to i32
  %i.kq = zext i16 %i.ko to i32
  %i.kr = mul nuw nsw i32 %i.kq, %i.kp            ; 3 uses
  %i.ks = lshr i32 %i.kr, 16                      ; 2 uses
  %i.kt = and i32 %i.kr, 65535
  %i.ku = sub nsw i32 %i.kr, %i.ks
  %i.kv = icmp samesign ult i32 %i.kt, %i.ks
  %i.kw = zext i1 %i.kv to i32
  %i.kx = add i32 %i.ku, %i.kw
  %i.ky = trunc i32 %i.kx to i16
  br label %mul.exit54.i81

bb.av:                                            ; preds = %bb.at
  %i.kz = sub i16 1, %.046.i73
  br label %mul.exit54.i81

bb.aw:                                            ; preds = %mul.exit.i77
  %i.la = sub i16 1, %i.ko
  br label %mul.exit54.i81

mul.exit54.i81:                                   ; preds = %bb.aw, %bb.av, %bb.au
  %.0.i53.i82 = phi i16 [ %i.ky, %bb.au ], [ %i.kz, %bb.av ], [ %i.la, %bb.aw ] ; 3 uses
  %i.lb = xor i16 %i.km, %.0.i.i78                ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.050.i69, i64 10
  %i.ld = load i16, ptr %i.kn, align 2, !tbaa !91 ; 3 uses
  %.not.i55.i83 = icmp eq i16 %.0.i.i78, %i.km
  br i1 %.not.i55.i83, label %bb.ba, label %bb.ax

bb.ax:                                            ; preds = %mul.exit54.i81
  %.not15.i56.i84 = icmp eq i16 %i.ld, 0
  br i1 %.not15.i56.i84, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.le = zext i16 %i.lb to i32
  %i.lf = zext i16 %i.ld to i32
  %i.lg = mul nuw nsw i32 %i.lf, %i.le            ; 3 uses
  %i.lh = lshr i32 %i.lg, 16                      ; 2 uses
  %i.li = and i32 %i.lg, 65535
  %i.lj = sub nsw i32 %i.lg, %i.lh
  %i.lk = icmp samesign ult i32 %i.li, %i.lh
  %i.ll = zext i1 %i.lk to i32
  %i.lm = add i32 %i.lj, %i.ll
  %i.ln = trunc i32 %i.lm to i16
  br label %mul.exit58.i85

bb.az:                                            ; preds = %bb.ax
  %i.lo = sub i16 1, %i.lb
  br label %mul.exit58.i85

bb.ba:                                            ; preds = %mul.exit54.i81
  %i.lp = sub i16 1, %i.ld
  br label %mul.exit58.i85

mul.exit58.i85:                                   ; preds = %bb.ba, %bb.az, %bb.ay
  %.0.i57.i86 = phi i16 [ %i.ln, %bb.ay ], [ %i.lo, %bb.az ], [ %i.lp, %bb.ba ] ; 2 uses
  %i.lq = xor i16 %.0.i53.i82, %i.kj
  %i.lr = add i16 %.0.i57.i86, %i.lq              ; 3 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.050.i69, i64 12
  %i.lt = load i16, ptr %i.lc, align 2, !tbaa !91 ; 3 uses
  %.not.i59.i87 = icmp eq i16 %i.lr, 0
  br i1 %.not.i59.i87, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %mul.exit58.i85
  %.not15.i60.i88 = icmp eq i16 %i.lt, 0
  br i1 %.not15.i60.i88, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.lu = zext i16 %i.lr to i32
  %i.lv = zext i16 %i.lt to i32
  %i.lw = mul nuw nsw i32 %i.lv, %i.lu            ; 3 uses
  %i.lx = lshr i32 %i.lw, 16                      ; 2 uses
  %i.ly = and i32 %i.lw, 65535
  %i.lz = sub nsw i32 %i.lw, %i.lx
  %i.ma = icmp samesign ult i32 %i.ly, %i.lx
  %i.mb = zext i1 %i.ma to i32
  %i.mc = add i32 %i.lz, %i.mb
  %i.md = trunc i32 %i.mc to i16
  br label %mul.exit62.i89

bb.bd:                                            ; preds = %bb.bb
  %i.me = sub i16 1, %i.lr
  br label %mul.exit62.i89

bb.be:                                            ; preds = %mul.exit58.i85
  %i.mf = sub i16 1, %i.lt
  br label %mul.exit62.i89

mul.exit62.i89:                                   ; preds = %bb.be, %bb.bd, %bb.bc
  %.0.i61.i90 = phi i16 [ %i.md, %bb.bc ], [ %i.me, %bb.bd ], [ %i.mf, %bb.be ] ; 4 uses
  %i.mg = add i16 %.0.i61.i90, %.0.i57.i86        ; 3 uses
  %i.mh = xor i16 %.0.i61.i90, %.0.i.i78          ; 3 uses
  %i.mi = xor i16 %i.mg, %.0.i53.i82              ; 3 uses
  %i.mj = xor i16 %i.mg, %i.kj                    ; 2 uses
  %i.mk = xor i16 %.0.i61.i90, %i.km              ; 2 uses
  %i.ml = add nsw i32 %.0.i74, -1                 ; 2 uses
  %.not.i91 = icmp eq i32 %i.ml, 0
  br i1 %.not.i91, label %bb.bf, label %bb.ao, !llvm.loop !108

bb.bf:                                            ; preds = %mul.exit62.i89
  %i.mm = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.022.us.us.i ; 4 uses
  %i.mn = load i16, ptr %scevgep.i92, align 16, !tbaa !91 ; 3 uses
  %.not.i63.i93 = icmp eq i16 %.0.i.i78, %.0.i61.i90
  br i1 %.not.i63.i93, label %bb.bj, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %.not15.i64.i94 = icmp eq i16 %i.mn, 0
  br i1 %.not15.i64.i94, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.mo = zext i16 %i.mh to i32
  %i.mp = zext i16 %i.mn to i32
  %i.mq = mul nuw nsw i32 %i.mp, %i.mo            ; 3 uses
  %i.mr = lshr i32 %i.mq, 16                      ; 2 uses
  %i.ms = and i32 %i.mq, 65535
  %i.mt = sub nsw i32 %i.mq, %i.mr
  %i.mu = icmp samesign ult i32 %i.ms, %i.mr
  %i.mv = zext i1 %i.mu to i32
  %i.mw = add i32 %i.mt, %i.mv
  %i.mx = trunc i32 %i.mw to i16
  br label %mul.exit66.i95

bb.bi:                                            ; preds = %bb.bg
  %i.my = sub i16 1, %i.mh
  br label %mul.exit66.i95

bb.bj:                                            ; preds = %bb.bf
  %i.mz = sub i16 1, %i.mn
  br label %mul.exit66.i95

mul.exit66.i95:                                   ; preds = %bb.bj, %bb.bi, %bb.bh
  %.0.i65.i96 = phi i16 [ %i.mx, %bb.bh ], [ %i.my, %bb.bi ], [ %i.mz, %bb.bj ]
  %i.na = getelementptr inbounds nuw i8, ptr %i.mm, i64 2
  store i16 %.0.i65.i96, ptr %i.mm, align 2, !tbaa !91
  %i.nb = load i16, ptr %i.iw, align 2, !tbaa !91
  %i.nc = add i16 %i.nb, %i.mj
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mm, i64 4
  store i16 %i.nc, ptr %i.na, align 2, !tbaa !91
  %i.ne = load i16, ptr %i.ix, align 4, !tbaa !91
  %i.nf = add i16 %i.ne, %i.mk
  store i16 %i.nf, ptr %i.nd, align 2, !tbaa !91
  %i.ng = load i16, ptr %i.iy, align 2, !tbaa !91 ; 3 uses
  %.not.i67.i97 = icmp eq i16 %.0.i53.i82, %i.mg
  br i1 %.not.i67.i97, label %bb.bn, label %bb.bk

bb.bk:                                            ; preds = %mul.exit66.i95
  %.not15.i68.i98 = icmp eq i16 %i.ng, 0
  br i1 %.not15.i68.i98, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.nh = zext i16 %i.mi to i32
  %i.ni = zext i16 %i.ng to i32
  %i.nj = mul nuw nsw i32 %i.ni, %i.nh            ; 3 uses
  %i.nk = lshr i32 %i.nj, 16                      ; 2 uses
  %i.nl = and i32 %i.nj, 65535
  %i.nm = sub nsw i32 %i.nj, %i.nk
  %i.nn = icmp samesign ult i32 %i.nl, %i.nk
  %i.no = zext i1 %i.nn to i32
  %i.np = add i32 %i.nm, %i.no
  %i.nq = trunc i32 %i.np to i16
  br label %cipher_idea.exit100

bb.bm:                                            ; preds = %bb.bk
  %i.nr = sub i16 1, %i.mi
  br label %cipher_idea.exit100

bb.bn:                                            ; preds = %mul.exit66.i95
  %i.ns = sub i16 1, %i.ng
  br label %cipher_idea.exit100

cipher_idea.exit100:                              ; preds = %bb.bl, %bb.bm, %bb.bn
  %.0.i69.i99 = phi i16 [ %i.nq, %bb.bl ], [ %i.nr, %bb.bm ], [ %i.ns, %bb.bn ]
  %i.nt = getelementptr inbounds nuw i8, ptr %i.mm, i64 6
  store i16 %.0.i69.i99, ptr %i.nt, align 2, !tbaa !91
  %i.nu = add i64 %.022.us.us.i, 8                ; 2 uses
  %i.nv = icmp ult i64 %i.nu, %i.jh
  br i1 %i.nv, label %bb.an, label %..preheader_crit_edge.us.us.i, !llvm.loop !109

..preheader_crit_edge.us.us.i:                    ; preds = %cipher_idea.exit100, %cipher_idea.exit
  %.123.us.us.i = phi i64 [ %i.rx, %cipher_idea.exit ], [ 0, %cipher_idea.exit100 ] ; 3 uses
  %i.nw = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.123.us.us.i ; 4 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nw, i64 2
  %i.ny = load i16, ptr %i.nw, align 2, !tbaa !91
  %i.nz = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.oa = load i16, ptr %i.nx, align 2, !tbaa !91
  %i.ob = getelementptr inbounds nuw i8, ptr %i.nw, i64 6
  %i.oc = load i16, ptr %i.nz, align 2, !tbaa !91
  %i.od = load i16, ptr %i.ob, align 2, !tbaa !91
  br label %bb.bo

bb.bo:                                            ; preds = %mul.exit62.i, %..preheader_crit_edge.us.us.i
  %.050.i = phi ptr [ %i.c, %..preheader_crit_edge.us.us.i ], [ %i.qd, %mul.exit62.i ] ; 7 uses
  %.049.i = phi i16 [ %i.ny, %..preheader_crit_edge.us.us.i ], [ %i.qs, %mul.exit62.i ] ; 3 uses
  %.048.in.i = phi i16 [ %i.oa, %..preheader_crit_edge.us.us.i ], [ %i.qv, %mul.exit62.i ]
  %.047.in.i = phi i16 [ %i.oc, %..preheader_crit_edge.us.us.i ], [ %i.qu, %mul.exit62.i ]
  %.046.i = phi i16 [ %i.od, %..preheader_crit_edge.us.us.i ], [ %i.qt, %mul.exit62.i ] ; 3 uses
  %.0.i = phi i32 [ 8, %..preheader_crit_edge.us.us.i ], [ %i.qw, %mul.exit62.i ]
  %i.oe = getelementptr inbounds nuw i8, ptr %.050.i, i64 2
  %i.of = load i16, ptr %.050.i, align 2, !tbaa !91 ; 3 uses
  %.not.i.i66 = icmp eq i16 %.049.i, 0
  br i1 %.not.i.i66, label %bb.bs, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %.not15.i.i = icmp eq i16 %i.of, 0
  br i1 %.not15.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.og = zext i16 %.049.i to i32
  %i.oh = zext i16 %i.of to i32
  %i.oi = mul nuw nsw i32 %i.oh, %i.og            ; 3 uses
  %i.oj = lshr i32 %i.oi, 16                      ; 2 uses
  %i.ok = and i32 %i.oi, 65535
  %i.ol = sub nsw i32 %i.oi, %i.oj
  %i.om = icmp samesign ult i32 %i.ok, %i.oj
  %i.on = zext i1 %i.om to i32
  %i.oo = add i32 %i.ol, %i.on
  %i.op = trunc i32 %i.oo to i16
  br label %mul.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.oq = sub i16 1, %.049.i
  br label %mul.exit.i

bb.bs:                                            ; preds = %bb.bo
  %i.or = sub i16 1, %i.of
  br label %mul.exit.i

mul.exit.i:                                       ; preds = %bb.bs, %bb.br, %bb.bq
  %.0.i.i67 = phi i16 [ %i.op, %bb.bq ], [ %i.oq, %bb.br ], [ %i.or, %bb.bs ] ; 4 uses
  %i.os = getelementptr inbounds nuw i8, ptr %.050.i, i64 4
  %i.ot = load i16, ptr %i.oe, align 2, !tbaa !91
  %i.ou = add i16 %i.ot, %.048.in.i               ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.050.i, i64 6
  %i.ow = load i16, ptr %i.os, align 2, !tbaa !91
  %i.ox = add i16 %i.ow, %.047.in.i               ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %.050.i, i64 8
  %i.oz = load i16, ptr %i.ov, align 2, !tbaa !91 ; 3 uses
  %.not.i51.i = icmp eq i16 %.046.i, 0
  br i1 %.not.i51.i, label %bb.bw, label %bb.bt

bb.bt:                                            ; preds = %mul.exit.i
  %.not15.i52.i = icmp eq i16 %i.oz, 0
  br i1 %.not15.i52.i, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.pa = zext i16 %.046.i to i32
  %i.pb = zext i16 %i.oz to i32
  %i.pc = mul nuw nsw i32 %i.pb, %i.pa            ; 3 uses
  %i.pd = lshr i32 %i.pc, 16                      ; 2 uses
  %i.pe = and i32 %i.pc, 65535
  %i.pf = sub nsw i32 %i.pc, %i.pd
  %i.pg = icmp samesign ult i32 %i.pe, %i.pd
  %i.ph = zext i1 %i.pg to i32
  %i.pi = add i32 %i.pf, %i.ph
  %i.pj = trunc i32 %i.pi to i16
  br label %mul.exit54.i

bb.bv:                                            ; preds = %bb.bt
  %i.pk = sub i16 1, %.046.i
  br label %mul.exit54.i

bb.bw:                                            ; preds = %mul.exit.i
  %i.pl = sub i16 1, %i.oz
  br label %mul.exit54.i

mul.exit54.i:                                     ; preds = %bb.bw, %bb.bv, %bb.bu
  %.0.i53.i = phi i16 [ %i.pj, %bb.bu ], [ %i.pk, %bb.bv ], [ %i.pl, %bb.bw ] ; 3 uses
  %i.pm = xor i16 %i.ox, %.0.i.i67                ; 2 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %.050.i, i64 10
  %i.po = load i16, ptr %i.oy, align 2, !tbaa !91 ; 3 uses
  %.not.i55.i = icmp eq i16 %.0.i.i67, %i.ox
  br i1 %.not.i55.i, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %mul.exit54.i
  %.not15.i56.i = icmp eq i16 %i.po, 0
  br i1 %.not15.i56.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pp = zext i16 %i.pm to i32
  %i.pq = zext i16 %i.po to i32
  %i.pr = mul nuw nsw i32 %i.pq, %i.pp            ; 3 uses
  %i.ps = lshr i32 %i.pr, 16                      ; 2 uses
  %i.pt = and i32 %i.pr, 65535
  %i.pu = sub nsw i32 %i.pr, %i.ps
  %i.pv = icmp samesign ult i32 %i.pt, %i.ps
  %i.pw = zext i1 %i.pv to i32
  %i.px = add i32 %i.pu, %i.pw
  %i.py = trunc i32 %i.px to i16
  br label %mul.exit58.i

bb.bz:                                            ; preds = %bb.bx
  %i.pz = sub i16 1, %i.pm
  br label %mul.exit58.i

bb.ca:                                            ; preds = %mul.exit54.i
  %i.qa = sub i16 1, %i.po
  br label %mul.exit58.i

mul.exit58.i:                                     ; preds = %bb.ca, %bb.bz, %bb.by
  %.0.i57.i = phi i16 [ %i.py, %bb.by ], [ %i.pz, %bb.bz ], [ %i.qa, %bb.ca ] ; 2 uses
  %i.qb = xor i16 %.0.i53.i, %i.ou
  %i.qc = add i16 %.0.i57.i, %i.qb                ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %.050.i, i64 12
  %i.qe = load i16, ptr %i.pn, align 2, !tbaa !91 ; 3 uses
  %.not.i59.i = icmp eq i16 %i.qc, 0
  br i1 %.not.i59.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %mul.exit58.i
  %.not15.i60.i = icmp eq i16 %i.qe, 0
  br i1 %.not15.i60.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.qf = zext i16 %i.qc to i32
  %i.qg = zext i16 %i.qe to i32
  %i.qh = mul nuw nsw i32 %i.qg, %i.qf            ; 3 uses
  %i.qi = lshr i32 %i.qh, 16                      ; 2 uses
  %i.qj = and i32 %i.qh, 65535
  %i.qk = sub nsw i32 %i.qh, %i.qi
  %i.ql = icmp samesign ult i32 %i.qj, %i.qi
  %i.qm = zext i1 %i.ql to i32
  %i.qn = add i32 %i.qk, %i.qm
  %i.qo = trunc i32 %i.qn to i16
  br label %mul.exit62.i

bb.cd:                                            ; preds = %bb.cb
  %i.qp = sub i16 1, %i.qc
  br label %mul.exit62.i

bb.ce:                                            ; preds = %mul.exit58.i
  %i.qq = sub i16 1, %i.qe
  br label %mul.exit62.i

mul.exit62.i:                                     ; preds = %bb.ce, %bb.cd, %bb.cc
  %.0.i61.i = phi i16 [ %i.qo, %bb.cc ], [ %i.qp, %bb.cd ], [ %i.qq, %bb.ce ] ; 4 uses
  %i.qr = add i16 %.0.i61.i, %.0.i57.i            ; 3 uses
  %i.qs = xor i16 %.0.i61.i, %.0.i.i67            ; 3 uses
  %i.qt = xor i16 %i.qr, %.0.i53.i                ; 3 uses
  %i.qu = xor i16 %i.qr, %i.ou                    ; 2 uses
  %i.qv = xor i16 %.0.i61.i, %i.ox                ; 2 uses
  %i.qw = add nsw i32 %.0.i, -1                   ; 2 uses
  %.not.i = icmp eq i32 %i.qw, 0
  br i1 %.not.i, label %bb.cf, label %bb.bo, !llvm.loop !108

bb.cf:                                            ; preds = %mul.exit62.i
  %i.qx = getelementptr inbounds nuw i8, ptr %i.im, i64 %.123.us.us.i ; 4 uses
  %.not.i63.i = icmp eq i16 %.0.i.i67, %.0.i61.i
  br i1 %.not.i63.i, label %mul.exit66.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not15.i64.i, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.qy = zext i16 %i.qs to i32
  %i.qz = mul nuw nsw i32 %i.ja, %i.qy            ; 3 uses
  %i.ra = lshr i32 %i.qz, 16                      ; 2 uses
  %i.rb = and i32 %i.qz, 65535
  %i.rc = sub nsw i32 %i.qz, %i.ra
  %i.rd = icmp samesign ult i32 %i.rb, %i.ra
  %i.re = zext i1 %i.rd to i32
  %i.rf = add i32 %i.rc, %i.re
  %i.rg = trunc i32 %i.rf to i16
  br label %mul.exit66.i

bb.ci:                                            ; preds = %bb.cg
  %i.rh = sub i16 1, %i.qs
  br label %mul.exit66.i

mul.exit66.i:                                     ; preds = %bb.cf, %bb.ci, %bb.ch
  %.0.i65.i = phi i16 [ %i.rg, %bb.ch ], [ %i.rh, %bb.ci ], [ %i.jb, %bb.cf ]
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qx, i64 2
  store i16 %.0.i65.i, ptr %i.qx, align 2, !tbaa !91
  %i.rj = add i16 %i.jc, %i.qu
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qx, i64 4
  store i16 %i.rj, ptr %i.ri, align 2, !tbaa !91
  %i.rl = add i16 %i.jd, %i.qv
  store i16 %i.rl, ptr %i.rk, align 2, !tbaa !91
  %.not.i67.i = icmp eq i16 %.0.i53.i, %i.qr
  br i1 %.not.i67.i, label %cipher_idea.exit, label %bb.cj

bb.cj:                                            ; preds = %mul.exit66.i
  br i1 %.not15.i68.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.rm = zext i16 %i.qt to i32
  %i.rn = mul nuw nsw i32 %i.jf, %i.rm            ; 3 uses
  %i.ro = lshr i32 %i.rn, 16                      ; 2 uses
  %i.rp = and i32 %i.rn, 65535
  %i.rq = sub nsw i32 %i.rn, %i.ro
  %i.rr = icmp samesign ult i32 %i.rp, %i.ro
  %i.rs = zext i1 %i.rr to i32
  %i.rt = add i32 %i.rq, %i.rs
  %i.ru = trunc i32 %i.rt to i16
  br label %cipher_idea.exit

bb.cl:                                            ; preds = %bb.cj
  %i.rv = sub i16 1, %i.qt
  br label %cipher_idea.exit

cipher_idea.exit:                                 ; preds = %mul.exit66.i, %bb.ck, %bb.cl
  %.0.i69.i68 = phi i16 [ %i.ru, %bb.ck ], [ %i.rv, %bb.cl ], [ %i.jg, %mul.exit66.i ]
  %i.rw = getelementptr inbounds nuw i8, ptr %i.qx, i64 6
  store i16 %.0.i69.i68, ptr %i.rw, align 2, !tbaa !91
  %i.rx = add i64 %.123.us.us.i, 8                ; 2 uses
  %i.ry = icmp ult i64 %i.rx, %i.jh
  br i1 %i.ry, label %..preheader_crit_edge.us.us.i, label %._crit_edge.us.us.i, !llvm.loop !110

._crit_edge.us.us.i:                              ; preds = %cipher_idea.exit
  %i.rz = add nuw nsw i64 %.01925.us.us.i, 1      ; 2 uses
  %exitcond.not.i56 = icmp eq i64 %i.rz, %storemerge232
  br i1 %exitcond.not.i56, label %DoIDEAIteration.exit, label %.preheader21.us.us.i, !llvm.loop !111

DoIDEAIteration.exit:                             ; preds = %._crit_edge.us.us.i, %bb.am
  %i.sa = call i64 @StopStopwatch(i64 noundef %i.ji) #11
  %i.sb = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.sc = icmp ugt i64 %i.sa, %i.sb
  br i1 %i.sc, label %.loopexit, label %bb.cm

bb.cm:                                            ; preds = %DoIDEAIteration.exit
  %i.sd = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !71
  %i.se = add i64 %i.sd, 10                       ; 3 uses
  store i64 %i.se, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !71
  %i.sf = icmp ult i64 %i.se, 500000
  br i1 %i.sf, label %bb.am, label %.loopexit, !llvm.loop !112

.loopexit:                                        ; preds = %bb.cm, %DoIDEAIteration.exit, %._crit_edge
  %scevgep.i156 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.sg = getelementptr inbounds nuw i8, ptr %i.b, i64 98
  %i.sh = getelementptr inbounds nuw i8, ptr %i.b, i64 100
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 102
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !71
  %i.sj = load i16, ptr %i.hz, align 16           ; 3 uses
  %.not15.i64.i126 = icmp eq i16 %i.sj, 0
  %i.sk = zext i16 %i.sj to i32
  %i.sl = sub i16 1, %i.sj
  %i.sm = load i16, ptr %i.ib, align 2
  %i.sn = load i16, ptr %i.ic, align 4
  %i.so = load i16, ptr %i.id, align 2            ; 3 uses
  %.not15.i68.i130 = icmp eq i16 %i.so, 0
  %i.sp = zext i16 %i.so to i32
  %i.sq = sub i16 1, %i.so
  br label %bb.cn

bb.cn:                                            ; preds = %DoIDEAIteration.exit65, %.loopexit
  %i.sr = phi i64 [ %.pre, %.loopexit ], [ %i.abn, %DoIDEAIteration.exit65 ] ; 2 uses
  %.045 = phi i64 [ 0, %.loopexit ], [ %i.abm, %DoIDEAIteration.exit65 ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.abp, %DoIDEAIteration.exit65 ]
  %i.ss = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 16), align 8, !tbaa !68 ; 3 uses
  %i.st = call i64 (...) @StartStopwatch() #11
  %i.su = icmp ne i64 %i.sr, 0
  %i.sv = icmp ne i64 %i.ss, 0
  %or.cond.i57 = and i1 %i.sv, %i.su
  br i1 %or.cond.i57, label %.preheader21.us.us.i58, label %DoIDEAIteration.exit65

.preheader21.us.us.i58:                           ; preds = %bb.cn, %._crit_edge.us.us.i63
  %.01925.us.us.i59 = phi i64 [ %i.abk, %._crit_edge.us.us.i63 ], [ 0, %bb.cn ]
  br label %bb.co

bb.co:                                            ; preds = %cipher_idea.exit164, %.preheader21.us.us.i58
  %.022.us.us.i60 = phi i64 [ 0, %.preheader21.us.us.i58 ], [ %i.xf, %cipher_idea.exit164 ] ; 3 uses
  %i.sw = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.022.us.us.i60 ; 4 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sw, i64 2
  %i.sy = load i16, ptr %i.sw, align 2, !tbaa !91
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.ta = load i16, ptr %i.sx, align 2, !tbaa !91
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sw, i64 6
  %i.tc = load i16, ptr %i.sz, align 2, !tbaa !91
  %i.td = load i16, ptr %i.tb, align 2, !tbaa !91
  br label %bb.cp

bb.cp:                                            ; preds = %mul.exit62.i153, %bb.co
  %.050.i133 = phi ptr [ %i.b, %bb.co ], [ %i.vd, %mul.exit62.i153 ] ; 7 uses
  %.049.i134 = phi i16 [ %i.sy, %bb.co ], [ %i.vs, %mul.exit62.i153 ] ; 3 uses
  %.048.in.i135 = phi i16 [ %i.ta, %bb.co ], [ %i.vv, %mul.exit62.i153 ]
  %.047.in.i136 = phi i16 [ %i.tc, %bb.co ], [ %i.vu, %mul.exit62.i153 ]
  %.046.i137 = phi i16 [ %i.td, %bb.co ], [ %i.vt, %mul.exit62.i153 ] ; 3 uses
  %.0.i138 = phi i32 [ 8, %bb.co ], [ %i.vw, %mul.exit62.i153 ]
  %i.te = getelementptr inbounds nuw i8, ptr %.050.i133, i64 2
  %i.tf = load i16, ptr %.050.i133, align 2, !tbaa !91 ; 3 uses
  %.not.i.i139 = icmp eq i16 %.049.i134, 0
  br i1 %.not.i.i139, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.not15.i.i140 = icmp eq i16 %i.tf, 0
  br i1 %.not15.i.i140, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.tg = zext i16 %.049.i134 to i32
  %i.th = zext i16 %i.tf to i32
  %i.ti = mul nuw nsw i32 %i.th, %i.tg            ; 3 uses
  %i.tj = lshr i32 %i.ti, 16                      ; 2 uses
  %i.tk = and i32 %i.ti, 65535
  %i.tl = sub nsw i32 %i.ti, %i.tj
  %i.tm = icmp samesign ult i32 %i.tk, %i.tj
  %i.tn = zext i1 %i.tm to i32
  %i.to = add i32 %i.tl, %i.tn
  %i.tp = trunc i32 %i.to to i16
  br label %mul.exit.i141

bb.cs:                                            ; preds = %bb.cq
  %i.tq = sub i16 1, %.049.i134
  br label %mul.exit.i141

bb.ct:                                            ; preds = %bb.cp
  %i.tr = sub i16 1, %i.tf
  br label %mul.exit.i141

mul.exit.i141:                                    ; preds = %bb.ct, %bb.cs, %bb.cr
  %.0.i.i142 = phi i16 [ %i.tp, %bb.cr ], [ %i.tq, %bb.cs ], [ %i.tr, %bb.ct ] ; 4 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %.050.i133, i64 4
  %i.tt = load i16, ptr %i.te, align 2, !tbaa !91
  %i.tu = add i16 %i.tt, %.048.in.i135            ; 2 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %.050.i133, i64 6
  %i.tw = load i16, ptr %i.ts, align 2, !tbaa !91
  %i.tx = add i16 %i.tw, %.047.in.i136            ; 3 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %.050.i133, i64 8
  %i.tz = load i16, ptr %i.tv, align 2, !tbaa !91 ; 3 uses
  %.not.i51.i143 = icmp eq i16 %.046.i137, 0
  br i1 %.not.i51.i143, label %bb.cx, label %bb.cu

bb.cu:                                            ; preds = %mul.exit.i141
  %.not15.i52.i144 = icmp eq i16 %i.tz, 0
  br i1 %.not15.i52.i144, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.ua = zext i16 %.046.i137 to i32
  %i.ub = zext i16 %i.tz to i32
  %i.uc = mul nuw nsw i32 %i.ub, %i.ua            ; 3 uses
  %i.ud = lshr i32 %i.uc, 16                      ; 2 uses
  %i.ue = and i32 %i.uc, 65535
  %i.uf = sub nsw i32 %i.uc, %i.ud
  %i.ug = icmp samesign ult i32 %i.ue, %i.ud
  %i.uh = zext i1 %i.ug to i32
  %i.ui = add i32 %i.uf, %i.uh
  %i.uj = trunc i32 %i.ui to i16
  br label %mul.exit54.i145

bb.cw:                                            ; preds = %bb.cu
  %i.uk = sub i16 1, %.046.i137
  br label %mul.exit54.i145

bb.cx:                                            ; preds = %mul.exit.i141
  %i.ul = sub i16 1, %i.tz
  br label %mul.exit54.i145

mul.exit54.i145:                                  ; preds = %bb.cx, %bb.cw, %bb.cv
  %.0.i53.i146 = phi i16 [ %i.uj, %bb.cv ], [ %i.uk, %bb.cw ], [ %i.ul, %bb.cx ] ; 3 uses
  %i.um = xor i16 %i.tx, %.0.i.i142               ; 2 uses
  %i.un = getelementptr inbounds nuw i8, ptr %.050.i133, i64 10
  %i.uo = load i16, ptr %i.ty, align 2, !tbaa !91 ; 3 uses
  %.not.i55.i147 = icmp eq i16 %.0.i.i142, %i.tx
  br i1 %.not.i55.i147, label %bb.db, label %bb.cy

bb.cy:                                            ; preds = %mul.exit54.i145
  %.not15.i56.i148 = icmp eq i16 %i.uo, 0
  br i1 %.not15.i56.i148, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.up = zext i16 %i.um to i32
  %i.uq = zext i16 %i.uo to i32
  %i.ur = mul nuw nsw i32 %i.uq, %i.up            ; 3 uses
  %i.us = lshr i32 %i.ur, 16                      ; 2 uses
  %i.ut = and i32 %i.ur, 65535
  %i.uu = sub nsw i32 %i.ur, %i.us
  %i.uv = icmp samesign ult i32 %i.ut, %i.us
  %i.uw = zext i1 %i.uv to i32
  %i.ux = add i32 %i.uu, %i.uw
  %i.uy = trunc i32 %i.ux to i16
  br label %mul.exit58.i149

bb.da:                                            ; preds = %bb.cy
  %i.uz = sub i16 1, %i.um
  br label %mul.exit58.i149

bb.db:                                            ; preds = %mul.exit54.i145
  %i.va = sub i16 1, %i.uo
  br label %mul.exit58.i149

mul.exit58.i149:                                  ; preds = %bb.db, %bb.da, %bb.cz
  %.0.i57.i150 = phi i16 [ %i.uy, %bb.cz ], [ %i.uz, %bb.da ], [ %i.va, %bb.db ] ; 2 uses
  %i.vb = xor i16 %.0.i53.i146, %i.tu
  %i.vc = add i16 %.0.i57.i150, %i.vb             ; 3 uses
  %i.vd = getelementptr inbounds nuw i8, ptr %.050.i133, i64 12
  %i.ve = load i16, ptr %i.un, align 2, !tbaa !91 ; 3 uses
  %.not.i59.i151 = icmp eq i16 %i.vc, 0
  br i1 %.not.i59.i151, label %bb.df, label %bb.dc

bb.dc:                                            ; preds = %mul.exit58.i149
  %.not15.i60.i152 = icmp eq i16 %i.ve, 0
  br i1 %.not15.i60.i152, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vf = zext i16 %i.vc to i32
  %i.vg = zext i16 %i.ve to i32
  %i.vh = mul nuw nsw i32 %i.vg, %i.vf            ; 3 uses
  %i.vi = lshr i32 %i.vh, 16                      ; 2 uses
  %i.vj = and i32 %i.vh, 65535
  %i.vk = sub nsw i32 %i.vh, %i.vi
  %i.vl = icmp samesign ult i32 %i.vj, %i.vi
  %i.vm = zext i1 %i.vl to i32
  %i.vn = add i32 %i.vk, %i.vm
  %i.vo = trunc i32 %i.vn to i16
  br label %mul.exit62.i153

bb.de:                                            ; preds = %bb.dc
  %i.vp = sub i16 1, %i.vc
  br label %mul.exit62.i153

bb.df:                                            ; preds = %mul.exit58.i149
  %i.vq = sub i16 1, %i.ve
  br label %mul.exit62.i153

mul.exit62.i153:                                  ; preds = %bb.df, %bb.de, %bb.dd
  %.0.i61.i154 = phi i16 [ %i.vo, %bb.dd ], [ %i.vp, %bb.de ], [ %i.vq, %bb.df ] ; 4 uses
  %i.vr = add i16 %.0.i61.i154, %.0.i57.i150      ; 3 uses
  %i.vs = xor i16 %.0.i61.i154, %.0.i.i142        ; 3 uses
  %i.vt = xor i16 %i.vr, %.0.i53.i146             ; 3 uses
  %i.vu = xor i16 %i.vr, %i.tu                    ; 2 uses
  %i.vv = xor i16 %.0.i61.i154, %i.tx             ; 2 uses
  %i.vw = add nsw i32 %.0.i138, -1                ; 2 uses
  %.not.i155 = icmp eq i32 %i.vw, 0
  br i1 %.not.i155, label %bb.dg, label %bb.cp, !llvm.loop !108

bb.dg:                                            ; preds = %mul.exit62.i153
  %i.vx = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.022.us.us.i60 ; 4 uses
  %i.vy = load i16, ptr %scevgep.i156, align 16, !tbaa !91 ; 3 uses
  %.not.i63.i157 = icmp eq i16 %.0.i.i142, %.0.i61.i154
  br i1 %.not.i63.i157, label %bb.dk, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %.not15.i64.i158 = icmp eq i16 %i.vy, 0
  br i1 %.not15.i64.i158, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.vz = zext i16 %i.vs to i32
  %i.wa = zext i16 %i.vy to i32
  %i.wb = mul nuw nsw i32 %i.wa, %i.vz            ; 3 uses
  %i.wc = lshr i32 %i.wb, 16                      ; 2 uses
  %i.wd = and i32 %i.wb, 65535
  %i.we = sub nsw i32 %i.wb, %i.wc
  %i.wf = icmp samesign ult i32 %i.wd, %i.wc
  %i.wg = zext i1 %i.wf to i32
  %i.wh = add i32 %i.we, %i.wg
  %i.wi = trunc i32 %i.wh to i16
  br label %mul.exit66.i159

bb.dj:                                            ; preds = %bb.dh
  %i.wj = sub i16 1, %i.vs
  br label %mul.exit66.i159

bb.dk:                                            ; preds = %bb.dg
  %i.wk = sub i16 1, %i.vy
  br label %mul.exit66.i159

mul.exit66.i159:                                  ; preds = %bb.dk, %bb.dj, %bb.di
  %.0.i65.i160 = phi i16 [ %i.wi, %bb.di ], [ %i.wj, %bb.dj ], [ %i.wk, %bb.dk ]
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vx, i64 2
  store i16 %.0.i65.i160, ptr %i.vx, align 2, !tbaa !91
  %i.wm = load i16, ptr %i.sg, align 2, !tbaa !91
  %i.wn = add i16 %i.wm, %i.vu
  %i.wo = getelementptr inbounds nuw i8, ptr %i.vx, i64 4
  store i16 %i.wn, ptr %i.wl, align 2, !tbaa !91
  %i.wp = load i16, ptr %i.sh, align 4, !tbaa !91
  %i.wq = add i16 %i.wp, %i.vv
  store i16 %i.wq, ptr %i.wo, align 2, !tbaa !91
  %i.wr = load i16, ptr %i.si, align 2, !tbaa !91 ; 3 uses
  %.not.i67.i161 = icmp eq i16 %.0.i53.i146, %i.vr
  br i1 %.not.i67.i161, label %bb.do, label %bb.dl

bb.dl:                                            ; preds = %mul.exit66.i159
  %.not15.i68.i162 = icmp eq i16 %i.wr, 0
  br i1 %.not15.i68.i162, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.ws = zext i16 %i.vt to i32
  %i.wt = zext i16 %i.wr to i32
  %i.wu = mul nuw nsw i32 %i.wt, %i.ws            ; 3 uses
  %i.wv = lshr i32 %i.wu, 16                      ; 2 uses
  %i.ww = and i32 %i.wu, 65535
  %i.wx = sub nsw i32 %i.wu, %i.wv
  %i.wy = icmp samesign ult i32 %i.ww, %i.wv
  %i.wz = zext i1 %i.wy to i32
  %i.xa = add i32 %i.wx, %i.wz
  %i.xb = trunc i32 %i.xa to i16
  br label %cipher_idea.exit164

bb.dn:                                            ; preds = %bb.dl
  %i.xc = sub i16 1, %i.vt
  br label %cipher_idea.exit164

bb.do:                                            ; preds = %mul.exit66.i159
  %i.xd = sub i16 1, %i.wr
  br label %cipher_idea.exit164

cipher_idea.exit164:                              ; preds = %bb.dm, %bb.dn, %bb.do
  %.0.i69.i163 = phi i16 [ %i.xb, %bb.dm ], [ %i.xc, %bb.dn ], [ %i.xd, %bb.do ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.vx, i64 6
  store i16 %.0.i69.i163, ptr %i.xe, align 2, !tbaa !91
  %i.xf = add i64 %.022.us.us.i60, 8              ; 2 uses
  %i.xg = icmp ult i64 %i.xf, %i.ss
  br i1 %i.xg, label %bb.co, label %..preheader_crit_edge.us.us.i61, !llvm.loop !109

..preheader_crit_edge.us.us.i61:                  ; preds = %cipher_idea.exit164, %cipher_idea.exit132
  %.123.us.us.i62 = phi i64 [ %i.abi, %cipher_idea.exit132 ], [ 0, %cipher_idea.exit164 ] ; 3 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ij, i64 %.123.us.us.i62 ; 4 uses
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xh, i64 2
  %i.xj = load i16, ptr %i.xh, align 2, !tbaa !91
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xh, i64 4
  %i.xl = load i16, ptr %i.xi, align 2, !tbaa !91
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xh, i64 6
  %i.xn = load i16, ptr %i.xk, align 2, !tbaa !91
  %i.xo = load i16, ptr %i.xm, align 2, !tbaa !91
  br label %bb.dp

bb.dp:                                            ; preds = %mul.exit62.i121, %..preheader_crit_edge.us.us.i61
  %.050.i101 = phi ptr [ %i.c, %..preheader_crit_edge.us.us.i61 ], [ %i.zo, %mul.exit62.i121 ] ; 7 uses
  %.049.i102 = phi i16 [ %i.xj, %..preheader_crit_edge.us.us.i61 ], [ %i.aad, %mul.exit62.i121 ] ; 3 uses
  %.048.in.i103 = phi i16 [ %i.xl, %..preheader_crit_edge.us.us.i61 ], [ %i.aag, %mul.exit62.i121 ]
  %.047.in.i104 = phi i16 [ %i.xn, %..preheader_crit_edge.us.us.i61 ], [ %i.aaf, %mul.exit62.i121 ]
  %.046.i105 = phi i16 [ %i.xo, %..preheader_crit_edge.us.us.i61 ], [ %i.aae, %mul.exit62.i121 ] ; 3 uses
  %.0.i106 = phi i32 [ 8, %..preheader_crit_edge.us.us.i61 ], [ %i.aah, %mul.exit62.i121 ]
  %i.xp = getelementptr inbounds nuw i8, ptr %.050.i101, i64 2
  %i.xq = load i16, ptr %.050.i101, align 2, !tbaa !91 ; 3 uses
  %.not.i.i107 = icmp eq i16 %.049.i102, 0
  br i1 %.not.i.i107, label %bb.dt, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %.not15.i.i108 = icmp eq i16 %i.xq, 0
  br i1 %.not15.i.i108, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.xr = zext i16 %.049.i102 to i32
  %i.xs = zext i16 %i.xq to i32
  %i.xt = mul nuw nsw i32 %i.xs, %i.xr            ; 3 uses
  %i.xu = lshr i32 %i.xt, 16                      ; 2 uses
  %i.xv = and i32 %i.xt, 65535
  %i.xw = sub nsw i32 %i.xt, %i.xu
  %i.xx = icmp samesign ult i32 %i.xv, %i.xu
  %i.xy = zext i1 %i.xx to i32
  %i.xz = add i32 %i.xw, %i.xy
  %i.ya = trunc i32 %i.xz to i16
  br label %mul.exit.i109

bb.ds:                                            ; preds = %bb.dq
  %i.yb = sub i16 1, %.049.i102
  br label %mul.exit.i109

bb.dt:                                            ; preds = %bb.dp
  %i.yc = sub i16 1, %i.xq
  br label %mul.exit.i109

mul.exit.i109:                                    ; preds = %bb.dt, %bb.ds, %bb.dr
  %.0.i.i110 = phi i16 [ %i.ya, %bb.dr ], [ %i.yb, %bb.ds ], [ %i.yc, %bb.dt ] ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %.050.i101, i64 4
  %i.ye = load i16, ptr %i.xp, align 2, !tbaa !91
  %i.yf = add i16 %i.ye, %.048.in.i103            ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %.050.i101, i64 6
  %i.yh = load i16, ptr %i.yd, align 2, !tbaa !91
  %i.yi = add i16 %i.yh, %.047.in.i104            ; 3 uses
  %i.yj = getelementptr inbounds nuw i8, ptr %.050.i101, i64 8
  %i.yk = load i16, ptr %i.yg, align 2, !tbaa !91 ; 3 uses
  %.not.i51.i111 = icmp eq i16 %.046.i105, 0
  br i1 %.not.i51.i111, label %bb.dx, label %bb.du

bb.du:                                            ; preds = %mul.exit.i109
  %.not15.i52.i112 = icmp eq i16 %i.yk, 0
  br i1 %.not15.i52.i112, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.yl = zext i16 %.046.i105 to i32
  %i.ym = zext i16 %i.yk to i32
  %i.yn = mul nuw nsw i32 %i.ym, %i.yl            ; 3 uses
  %i.yo = lshr i32 %i.yn, 16                      ; 2 uses
  %i.yp = and i32 %i.yn, 65535
  %i.yq = sub nsw i32 %i.yn, %i.yo
  %i.yr = icmp samesign ult i32 %i.yp, %i.yo
  %i.ys = zext i1 %i.yr to i32
  %i.yt = add i32 %i.yq, %i.ys
  %i.yu = trunc i32 %i.yt to i16
  br label %mul.exit54.i113

bb.dw:                                            ; preds = %bb.du
  %i.yv = sub i16 1, %.046.i105
  br label %mul.exit54.i113

bb.dx:                                            ; preds = %mul.exit.i109
  %i.yw = sub i16 1, %i.yk
  br label %mul.exit54.i113

mul.exit54.i113:                                  ; preds = %bb.dx, %bb.dw, %bb.dv
  %.0.i53.i114 = phi i16 [ %i.yu, %bb.dv ], [ %i.yv, %bb.dw ], [ %i.yw, %bb.dx ] ; 3 uses
  %i.yx = xor i16 %i.yi, %.0.i.i110               ; 2 uses
  %i.yy = getelementptr inbounds nuw i8, ptr %.050.i101, i64 10
  %i.yz = load i16, ptr %i.yj, align 2, !tbaa !91 ; 3 uses
  %.not.i55.i115 = icmp eq i16 %.0.i.i110, %i.yi
  br i1 %.not.i55.i115, label %bb.eb, label %bb.dy

bb.dy:                                            ; preds = %mul.exit54.i113
  %.not15.i56.i116 = icmp eq i16 %i.yz, 0
  br i1 %.not15.i56.i116, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.za = zext i16 %i.yx to i32
  %i.zb = zext i16 %i.yz to i32
  %i.zc = mul nuw nsw i32 %i.zb, %i.za            ; 3 uses
  %i.zd = lshr i32 %i.zc, 16                      ; 2 uses
  %i.ze = and i32 %i.zc, 65535
  %i.zf = sub nsw i32 %i.zc, %i.zd
  %i.zg = icmp samesign ult i32 %i.ze, %i.zd
  %i.zh = zext i1 %i.zg to i32
  %i.zi = add i32 %i.zf, %i.zh
  %i.zj = trunc i32 %i.zi to i16
  br label %mul.exit58.i117

bb.ea:                                            ; preds = %bb.dy
  %i.zk = sub i16 1, %i.yx
  br label %mul.exit58.i117

bb.eb:                                            ; preds = %mul.exit54.i113
  %i.zl = sub i16 1, %i.yz
  br label %mul.exit58.i117

mul.exit58.i117:                                  ; preds = %bb.eb, %bb.ea, %bb.dz
  %.0.i57.i118 = phi i16 [ %i.zj, %bb.dz ], [ %i.zk, %bb.ea ], [ %i.zl, %bb.eb ] ; 2 uses
  %i.zm = xor i16 %.0.i53.i114, %i.yf
  %i.zn = add i16 %.0.i57.i118, %i.zm             ; 3 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %.050.i101, i64 12
  %i.zp = load i16, ptr %i.yy, align 2, !tbaa !91 ; 3 uses
  %.not.i59.i119 = icmp eq i16 %i.zn, 0
  br i1 %.not.i59.i119, label %bb.ef, label %bb.ec

bb.ec:                                            ; preds = %mul.exit58.i117
  %.not15.i60.i120 = icmp eq i16 %i.zp, 0
  br i1 %.not15.i60.i120, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.zq = zext i16 %i.zn to i32
  %i.zr = zext i16 %i.zp to i32
  %i.zs = mul nuw nsw i32 %i.zr, %i.zq            ; 3 uses
  %i.zt = lshr i32 %i.zs, 16                      ; 2 uses
  %i.zu = and i32 %i.zs, 65535
  %i.zv = sub nsw i32 %i.zs, %i.zt
  %i.zw = icmp samesign ult i32 %i.zu, %i.zt
  %i.zx = zext i1 %i.zw to i32
  %i.zy = add i32 %i.zv, %i.zx
  %i.zz = trunc i32 %i.zy to i16
  br label %mul.exit62.i121

bb.ee:                                            ; preds = %bb.ec
  %i.aaa = sub i16 1, %i.zn
  br label %mul.exit62.i121

bb.ef:                                            ; preds = %mul.exit58.i117
  %i.aab = sub i16 1, %i.zp
  br label %mul.exit62.i121

mul.exit62.i121:                                  ; preds = %bb.ef, %bb.ee, %bb.ed
  %.0.i61.i122 = phi i16 [ %i.zz, %bb.ed ], [ %i.aaa, %bb.ee ], [ %i.aab, %bb.ef ] ; 4 uses
  %i.aac = add i16 %.0.i61.i122, %.0.i57.i118     ; 3 uses
  %i.aad = xor i16 %.0.i61.i122, %.0.i.i110       ; 3 uses
  %i.aae = xor i16 %i.aac, %.0.i53.i114           ; 3 uses
  %i.aaf = xor i16 %i.aac, %i.yf                  ; 2 uses
  %i.aag = xor i16 %.0.i61.i122, %i.yi            ; 2 uses
  %i.aah = add nsw i32 %.0.i106, -1               ; 2 uses
  %.not.i123 = icmp eq i32 %i.aah, 0
  br i1 %.not.i123, label %bb.eg, label %bb.dp, !llvm.loop !108

bb.eg:                                            ; preds = %mul.exit62.i121
  %i.aai = getelementptr inbounds nuw i8, ptr %i.im, i64 %.123.us.us.i62 ; 4 uses
  %.not.i63.i125 = icmp eq i16 %.0.i.i110, %.0.i61.i122
  br i1 %.not.i63.i125, label %mul.exit66.i127, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  br i1 %.not15.i64.i126, label %bb.ej, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.aaj = zext i16 %i.aad to i32
  %i.aak = mul nuw nsw i32 %i.sk, %i.aaj          ; 3 uses
  %i.aal = lshr i32 %i.aak, 16                    ; 2 uses
  %i.aam = and i32 %i.aak, 65535
  %i.aan = sub nsw i32 %i.aak, %i.aal
  %i.aao = icmp samesign ult i32 %i.aam, %i.aal
  %i.aap = zext i1 %i.aao to i32
  %i.aaq = add i32 %i.aan, %i.aap
  %i.aar = trunc i32 %i.aaq to i16
  br label %mul.exit66.i127

bb.ej:                                            ; preds = %bb.eh
  %i.aas = sub i16 1, %i.aad
  br label %mul.exit66.i127

mul.exit66.i127:                                  ; preds = %bb.eg, %bb.ej, %bb.ei
  %.0.i65.i128 = phi i16 [ %i.aar, %bb.ei ], [ %i.aas, %bb.ej ], [ %i.sl, %bb.eg ]
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aai, i64 2
  store i16 %.0.i65.i128, ptr %i.aai, align 2, !tbaa !91
  %i.aau = add i16 %i.sm, %i.aaf
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aai, i64 4
  store i16 %i.aau, ptr %i.aat, align 2, !tbaa !91
  %i.aaw = add i16 %i.sn, %i.aag
  store i16 %i.aaw, ptr %i.aav, align 2, !tbaa !91
  %.not.i67.i129 = icmp eq i16 %.0.i53.i114, %i.aac
  br i1 %.not.i67.i129, label %cipher_idea.exit132, label %bb.ek

bb.ek:                                            ; preds = %mul.exit66.i127
  br i1 %.not15.i68.i130, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  %i.aax = zext i16 %i.aae to i32
  %i.aay = mul nuw nsw i32 %i.sp, %i.aax          ; 3 uses
  %i.aaz = lshr i32 %i.aay, 16                    ; 2 uses
  %i.aba = and i32 %i.aay, 65535
  %i.abb = sub nsw i32 %i.aay, %i.aaz
  %i.abc = icmp samesign ult i32 %i.aba, %i.aaz
  %i.abd = zext i1 %i.abc to i32
  %i.abe = add i32 %i.abb, %i.abd
  %i.abf = trunc i32 %i.abe to i16
  br label %cipher_idea.exit132

bb.em:                                            ; preds = %bb.ek
  %i.abg = sub i16 1, %i.aae
  br label %cipher_idea.exit132

cipher_idea.exit132:                              ; preds = %mul.exit66.i127, %bb.el, %bb.em
  %.0.i69.i131 = phi i16 [ %i.abf, %bb.el ], [ %i.abg, %bb.em ], [ %i.sq, %mul.exit66.i127 ]
  %i.abh = getelementptr inbounds nuw i8, ptr %i.aai, i64 6
  store i16 %.0.i69.i131, ptr %i.abh, align 2, !tbaa !91
  %i.abi = add i64 %.123.us.us.i62, 8             ; 2 uses
  %i.abj = icmp ult i64 %i.abi, %i.ss
  br i1 %i.abj, label %..preheader_crit_edge.us.us.i61, label %._crit_edge.us.us.i63, !llvm.loop !110

._crit_edge.us.us.i63:                            ; preds = %cipher_idea.exit132
  %i.abk = add nuw i64 %.01925.us.us.i59, 1       ; 2 uses
  %exitcond.not.i64 = icmp eq i64 %i.abk, %i.sr
  br i1 %exitcond.not.i64, label %DoIDEAIteration.exit65, label %.preheader21.us.us.i58, !llvm.loop !111

DoIDEAIteration.exit65:                           ; preds = %._crit_edge.us.us.i63, %bb.cn
  %i.abl = call i64 @StopStopwatch(i64 noundef %i.st) #11
  %i.abm = add i64 %i.abl, %.045                  ; 2 uses
  %i.abn = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 24), align 8, !tbaa !71 ; 2 uses
  %i.abo = uitofp i64 %i.abn to double
  %i.abp = fadd double %.0, %i.abo                ; 3 uses
  %i.abq = fcmp olt double %i.abp, 1.875000e+03
  br i1 %i.abq, label %bb.cn, label %bb.en, !llvm.loop !113

bb.en:                                            ; preds = %DoIDEAIteration.exit65
  call void @FreeMemory(ptr noundef %i.ig, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.ij, ptr noundef nonnull %i.d) #11
  call void @FreeMemory(ptr noundef %i.im, ptr noundef nonnull %i.d) #11
  %i.abr = call double @TicksToFracSecs(i64 noundef %i.abm) #11
  %i.abs = fdiv double %i.abp, %i.abr
  store double %i.abs, ptr getelementptr inbounds nuw (i8, ptr @global_ideastruct, i64 32), align 8, !tbaa !73
  %i.abt = load i32, ptr @global_ideastruct, align 8, !tbaa !70
  %i.abu = icmp eq i32 %i.abt, 0
  br i1 %i.abu, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 1, ptr @global_ideastruct, align 8, !tbaa !70
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  ret void
}

declare i32 @randnum(i32 noundef) local_unnamed_addr #2

declare i32 @abs_randwc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @DoHuffman() local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 16               ; 6 uses
  %i.b = alloca i32, align 4                      ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.d = call ptr @AllocateMemory(i64 noundef %i.c, ptr noundef nonnull %i.b) #11 ; 8 uses
  %i.e = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @ReportError(ptr noundef nonnull @.str.59, i32 noundef %i.e) #11
  call void (...) @ErrorExit() #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.g = call ptr @AllocateMemory(i64 noundef %i.f, ptr noundef nonnull %i.b) #11 ; 5 uses
  %i.h = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not50 = icmp eq i32 %i.h, 0
  br i1 %.not50, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ReportError(ptr noundef nonnull @.str.59, i32 noundef %i.h) #11
  call void @FreeMemory(ptr noundef %i.d, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.j = call ptr @AllocateMemory(i64 noundef %i.i, ptr noundef nonnull %i.b) #11 ; 4 uses
  %i.k = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not51 = icmp eq i32 %i.k, 0
  br i1 %.not51, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ReportError(ptr noundef nonnull @.str.59, i32 noundef %i.k) #11
  call void @FreeMemory(ptr noundef %i.d, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = call ptr @AllocateMemory(i64 noundef 10240, ptr noundef nonnull %i.b) #11
  store ptr %i.l, ptr @hufftree, align 8, !tbaa !114
  %i.m = load i32, ptr %i.b, align 4, !tbaa !4    ; 2 uses
  %.not52 = icmp eq i32 %i.m, 0
  br i1 %.not52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @ReportError(ptr noundef nonnull @.str.59, i32 noundef %i.m) #11
  call void @FreeMemory(ptr noundef %i.d, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %i.g, ptr noundef nonnull %i.b) #11
  call void @FreeMemory(ptr noundef %i.j, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.n = call i32 @randnum(i32 noundef 13) #11    ; 0 uses
  %i.o = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.p = add i64 %i.o, -1                         ; 3 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.m, %bb.i
  %.016.i = phi ptr [ %i.d, %bb.i ], [ %i.am, %bb.m ] ; 2 uses
  %.015.i = phi i64 [ 0, %bb.i ], [ %i.ao, %bb.m ] ; 3 uses
  %i.q = call i32 @abs_randwc(i32 noundef 494) #11
  %i.r = add i32 %i.q, 6
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = add i64 %.015.i, %i.s
  %i.u = icmp ugt i64 %i.t, %i.p
  %i.v = sub i64 %i.p, %.015.i
  %spec.select.i = select i1 %i.u, i64 %i.v, i64 %i.s ; 6 uses
  %i.w = icmp ugt i64 %spec.select.i, 1
  br i1 %i.w, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %bb.k
  %.016.i.i = phi ptr [ %.016.i, %bb.k ], [ %i.ak, %bb.l ] ; 2 uses
  %.015.i.i = phi i64 [ 0, %bb.k ], [ %i.aj, %bb.l ] ; 3 uses
  %i.x = call i32 @abs_randwc(i32 noundef 50) #11
  %i.y = zext i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr @wordcatarray, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !116 ; 2 uses
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aa) #12
  %i.ac = add i64 %i.ab, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %i.aa, i64 noundef %i.ac) #11
  %i.ad = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #12 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 2 uses
  %i.af = getelementptr inbounds i8, ptr %i.a, i64 %i.ad
  store i8 32, ptr %i.af, align 1, !tbaa !32
  %i.ag = add nsw i64 %i.ae, %.015.i.i
  %i.ah = icmp sgt i64 %i.ag, %spec.select.i
  %i.ai = sub nsw i64 %spec.select.i, %.015.i.i
  %spec.select.i.i = select i1 %i.ah, i64 %i.ai, i64 %i.ae ; 3 uses
  call void @MoveMemory(ptr noundef %.016.i.i, ptr noundef nonnull %i.a, i64 noundef %spec.select.i.i) #11
  %i.aj = add nsw i64 %spec.select.i.i, %.015.i.i ; 2 uses
  %i.ak = getelementptr inbounds i8, ptr %.016.i.i, i64 %spec.select.i.i
  %i.al = icmp slt i64 %i.aj, %spec.select.i
  br i1 %i.al, label %bb.l, label %create_text_line.exit.i, !llvm.loop !118

create_text_line.exit.i:                          ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.m

bb.m:                                             ; preds = %create_text_line.exit.i, %bb.j
  %i.am = getelementptr i8, ptr %.016.i, i64 %spec.select.i ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -1
  store i8 10, ptr %i.an, align 1, !tbaa !32
  %i.ao = add i64 %spec.select.i, %.015.i         ; 2 uses
  %i.ap = icmp ult i64 %i.ao, %i.p
  br i1 %i.ap, label %bb.j, label %create_text_block.exit, !llvm.loop !119

create_text_block.exit:                           ; preds = %bb.m
  %i.aq = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.ar = getelementptr i8, ptr %i.d, i64 %i.aq
  %i.as = getelementptr i8, ptr %i.ar, i64 -1
  store i8 0, ptr %i.as, align 1, !tbaa !32
  %i.at = load i32, ptr @global_huffstruct, align 8, !tbaa !70
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %create_text_block.exit
  store i64 100, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 24), align 8, !tbaa !71
  br label %bb.n

bb.n:                                             ; preds = %.preheader, %bb.o
  %storemerge54 = phi i64 [ 100, %.preheader ], [ %i.bb, %bb.o ]
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.aw = load ptr, ptr @hufftree, align 8, !tbaa !114
  %i.ax = call fastcc i64 @DoHuffIteration(ptr noundef %i.d, ptr noundef %i.g, ptr noundef %i.j, i64 noundef %i.av, i64 noundef %storemerge54, ptr noundef %i.aw)
  %i.ay = load i64, ptr @global_min_ticks, align 8, !tbaa !15
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ba = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 24), align 8, !tbaa !71
  %i.bb = add i64 %i.ba, 10                       ; 3 uses
  store i64 %i.bb, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 24), align 8, !tbaa !71
  %i.bc = icmp ult i64 %i.bb, 500000
  br i1 %i.bc, label %bb.n, label %.loopexit, !llvm.loop !120

.loopexit:                                        ; preds = %bb.o, %bb.n, %create_text_block.exit
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 24), align 8, !tbaa !71
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.loopexit
  %i.bd = phi i64 [ %.pre, %.loopexit ], [ %i.bi, %bb.p ]
  %.043 = phi i64 [ 0, %.loopexit ], [ %i.bh, %bb.p ]
  %.0 = phi double [ 0.000000e+00, %.loopexit ], [ %i.bk, %bb.p ]
  %i.be = load i64, ptr getelementptr inbounds nuw (i8, ptr @global_huffstruct, i64 16), align 8, !tbaa !68
  %i.bf = load ptr, ptr @hufftree, align 8, !tbaa !114
end_hunk_1
