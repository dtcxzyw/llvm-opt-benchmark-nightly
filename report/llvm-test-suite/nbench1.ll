inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 85
begin_hunk_0_@DoNumSortIteration:bb.a

bb.h:                                             ; preds = %bb.g, %._crit_edge33.i22.i
  %.1.i24.i = phi i64 [ %.026.i23.i, %bb.g ], [ %i.bn, %._crit_edge33.i22.i ] ; 2 uses
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
  %3 = trunc i64 %n.vec to i32
  %cmp.n = icmp eq i64 %2, %n.vec
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec60 = and i64 %2, 8589934588               ; 4 uses
  %4 = trunc i64 %n.vec60 to i32
  %cmp.n64 = icmp eq i64 %2, %n.vec60
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %indvar = phi i64 [ 0, %.lr.ph79.i.preheader ], [ %indvar.next, %._crit_edge80.i ] ; 2 uses
  %.05682.i = phi i32 [ 1, %.lr.ph79.i.preheader ], [ %i.av, %._crit_edge80.i ]
  %.06681.i = phi ptr [ %0, %.lr.ph79.i.preheader ], [ %i.ae, %._crit_edge80.i ]
  %i.ad = getelementptr i8, ptr %.06681.i, i64 %2
  %i.ae = getelementptr i8, ptr %i.ad, i64 100    ; 4 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %iter.check
  %i.af = add i64 %indvar, 1
  %i.ag = mul i64 %i.y, %i.af
  %i.ah = add i64 %i.ag, -1
  %diff.check = icmp ult i64 %i.ah, 31
  %or.cond = select i1 %i.ac, i1 true, i1 %diff.check
  br i1 %or.cond, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.scevcheck
  br i1 %min.iters.check57, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %wide.load = load <16 x i8>, ptr %i.ai, align 1, !tbaa !32
  %wide.load58 = load <16 x i8>, ptr %i.aj, align 1, !tbaa !32
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store <16 x i8> %wide.load, ptr %i.ak, align 1, !tbaa !32
  store <16 x i8> %wide.load58, ptr %i.al, align 1, !tbaa !32
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge80.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !36

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index61 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next63, %vec.epilog.vector.body ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %index61
  %wide.load62 = load <4 x i8>, ptr %i.an, align 1, !tbaa !32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 %index61
  store <4 x i8> %wide.load62, ptr %i.ao, align 1, !tbaa !32
  %index.next63 = add nuw i64 %index61, 4         ; 2 uses
  %i.ap = icmp eq i64 %index.next63, %n.vec60
  br i1 %i.ap, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !37

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n64, label %._crit_edge80.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.scevcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.ph152 = phi i64 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec60, %vec.epilog.middle.block ]
  %.077.i.ph = phi i32 [ 0, %vector.scevcheck ], [ 0, %iter.check ], [ %3, %vec.epilog.iter.check ], [ %4, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %i.aq = phi i64 [ %6, %vec.epilog.scalar.ph ], [ %.ph152, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.077.i = phi i32 [ %5, %vec.epilog.scalar.ph ], [ %.077.i.ph, %vec.epilog.scalar.ph.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !32
  %5 = add i32 %.077.i, 1                         ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.au = icmp ugt i64 %2, %6
  br i1 %i.au, label %vec.epilog.scalar.ph, label %._crit_edge80.i, !llvm.loop !38

._crit_edge80.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.av = add nuw nsw i32 %.05682.i, 1            ; 2 uses
  %exitcond103.not.i = icmp eq i32 %i.av, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond103.not.i, label %._crit_edge84.split.i, label %iter.check, !llvm.loop !39

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
  %lcmp.mod153 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod153)
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
  %n.vec75 = and i64 %indvars.iv, -4              ; 4 uses
  %7 = trunc i64 %n.vec75 to i32
  %cmp.n82 = icmp eq i64 %indvars.iv, %n.vec75
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
  %.15794.i = phi i32 [ 1, %.lr.ph91.i.preheader.preheader ], [ %i.df, %._crit_edge92.i ]
  %.06593.i = phi ptr [ %i.az, %.lr.ph91.i.preheader.preheader ], [ %i.cr, %._crit_edge92.i ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.06593.i, i64 %i.u ; 3 uses
  br i1 %min.iters.check72, label %.lr.ph91.i.preheader151, label %vector.scevcheck67

vector.scevcheck67:                               ; preds = %.lr.ph91.i.preheader
  %i.cs = add i64 %indvar69, 1
  %i.ct = mul i64 %i.bk, %i.cs
  %i.cu = add i64 %i.ct, -1
  %diff.check71 = icmp ult i64 %i.cu, 31
  %or.cond144 = select i1 %i.bo, i1 true, i1 %diff.check71
  br i1 %or.cond144, label %.lr.ph91.i.preheader151, label %vector.body76

vector.body76:                                    ; preds = %vector.scevcheck67, %vector.body76
  %index77 = phi i64 [ %index.next80, %vector.body76 ], [ 0, %vector.scevcheck67 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index77 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16
  %wide.load78 = load <2 x i64>, ptr %i.cv, align 8, !tbaa !15
  %wide.load79 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index77 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  store <2 x i64> %wide.load78, ptr %i.cx, align 8, !tbaa !15
  store <2 x i64> %wide.load79, ptr %i.cy, align 8, !tbaa !15
  %index.next80 = add nuw i64 %index77, 4         ; 2 uses
  %i.cz = icmp eq i64 %index.next80, %n.vec75
  br i1 %i.cz, label %middle.block81, label %vector.body76, !llvm.loop !42

middle.block81:                                   ; preds = %vector.body76
  br i1 %cmp.n82, label %._crit_edge92.i, label %.lr.ph91.i.preheader151

.lr.ph91.i.preheader151:                          ; preds = %vector.scevcheck67, %.lr.ph91.i.preheader, %middle.block81
  %.ph = phi i64 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %n.vec75, %middle.block81 ]
  %.189.i.ph = phi i32 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %7, %middle.block81 ]
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader151, %.lr.ph91.i
  %i.da = phi i64 [ %9, %.lr.ph91.i ], [ %.ph, %.lr.ph91.i.preheader151 ] ; 2 uses
  %.189.i = phi i32 [ %8, %.lr.ph91.i ], [ %.189.i.ph, %.lr.ph91.i.preheader151 ]
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %i.da
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !15
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %i.da
  store i64 %i.dc, ptr %i.dd, align 8, !tbaa !15
  %8 = add i32 %.189.i, 1                         ; 2 uses
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.de = icmp ugt i64 %i.u, %9
  br i1 %i.de, label %.lr.ph91.i, label %._crit_edge92.i, !llvm.loop !43

._crit_edge92.i:                                  ; preds = %.lr.ph91.i, %middle.block81
  %i.df = add nuw nsw i32 %.15794.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.df, %1
  %indvar.next70 = add i64 %indvar69, 1
  br i1 %exitcond104.not.i, label %LoadStringArray.exit.thread, label %.lr.ph91.i.preheader, !llvm.loop !44

LoadStringArray.exit.thread:                      ; preds = %._crit_edge92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dg = call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

LoadStringArray.exit:                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dh = call i64 (...) @StartStopwatch() #11    ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadStringArray.exit.thread, %LoadStringArray.exit
  %i.di = phi i64 [ %i.dg, %LoadStringArray.exit.thread ], [ %i.dh, %LoadStringArray.exit ] ; 2 uses
  %i.dj = lshr i64 %.028, 1                       ; 2 uses
  %.not53.i = icmp eq i64 %i.dj, 0
  %.not3855.i = icmp eq i64 %.028, 0
  %i.dk = icmp ugt i64 %i.u, 1
  br i1 %.not3855.i, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check115 = icmp ult i64 %.028, 4     ; 2 uses
  %n.vec133 = and i64 %.028, -4                   ; 3 uses
  %i.dl = or disjoint i64 %n.vec133, 1
  %cmp.n142 = icmp eq i64 %.028, %n.vec133
  %n.vec118 = and i64 %.028, -4                   ; 3 uses
  %i.dm = or disjoint i64 %n.vec118, 1
  %cmp.n127 = icmp eq i64 %.028, %n.vec118
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %StrHeapSort.exit.loopexit
  %.034 = phi ptr [ %i.hq, %StrHeapSort.exit.loopexit ], [ %0, %.lr.ph.split.preheader ] ; 17 uses
  %.01533 = phi ptr [ %i.dn, %StrHeapSort.exit.loopexit ], [ %i.az, %.lr.ph.split.preheader ] ; 15 uses
  %.01632 = phi i32 [ %i.hr, %StrHeapSort.exit.loopexit ], [ 0, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br i1 %.not53.i, label %.preheader.i19, label %.lr.ph.i17

.preheader.i19:                                   ; preds = %.lr.ph.i17, %.lr.ph.split
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %i.u ; 2 uses
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.01533, i64 8
  br label %bb.e

.lr.ph.i17:                                       ; preds = %.lr.ph.split, %.lr.ph.i17
  %.054.i = phi i64 [ %i.dq, %.lr.ph.i17 ], [ %i.dj, %.lr.ph.split ] ; 2 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef %.054.i, i64 noundef %.028)
  %i.dq = add nsw i64 %.054.i, -1                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.dq, 0
  br i1 %.not.i18, label %.preheader.i19, label %.lr.ph.i17, !llvm.loop !46

bb.e:                                             ; preds = %.preheader.i19, %stradjust.exit49.i
  %indvar84 = phi i64 [ 0, %.preheader.i19 ], [ %indvar.next85, %stradjust.exit49.i ] ; 6 uses
  %.156.i = phi i64 [ %.028, %.preheader.i19 ], [ %i.ho, %stradjust.exit49.i ] ; 5 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef 0, i64 noundef %.156.i)
  %i.dr = load i8, ptr %.034, align 1, !tbaa !32
  %i.ds = zext i8 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %.034, i64 noundef %i.dt) #11
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.156.i ; 6 uses
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !15
  %i.dw = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dv
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !32  ; 3 uses
  %i.dy = load i64, ptr %.01533, align 8, !tbaa !15
  %i.dz = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dy ; 2 uses
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !32
  %i.eb = load i64, ptr %i.do, align 8, !tbaa !15 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.034, i64 %i.eb
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !32
  %i.ee = zext i8 %i.ed to i64
  %i.ef = load i64, ptr %i.dp, align 8, !tbaa !15 ; 2 uses
  %i.eg = add i64 %i.eb, 1
  %i.eh = add i64 %i.eg, %i.ee
  %i.ei = sub i64 %i.eh, %i.ef
  %i.ej = zext i8 %i.dx to i64                    ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dz, i64 %i.ej
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 1
  %i.em = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ef
  call void @MoveMemory(ptr noundef nonnull %i.el, ptr noundef nonnull %i.em, i64 noundef %i.ei) #11
  br i1 %i.dk, label %.lr.ph.i.i, label %stradjust.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.en = zext i8 %i.dx to i32
  %i.eo = zext i8 %i.ea to i32
  %i.ep = sub nsw i32 %i.en, %i.eo                ; 2 uses
  %i.eq = call i32 @llvm.abs.i32(i32 %i.ep, i1 true)
  %i.er = icmp slt i32 %i.ep, 0
  %i.es = zext nneg i32 %i.eq to i64              ; 4 uses
  br i1 %i.er, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %min.iters.check115, label %.lr.ph.split.i.i.preheader149, label %vector.ph131

vector.ph131:                                     ; preds = %.lr.ph.split.i.i.preheader
  %broadcast.splatinsert134 = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat135 = shufflevector <2 x i64> %broadcast.splatinsert134, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body136

vector.body136:                                   ; preds = %vector.body136, %vector.ph131
  %index137 = phi i64 [ 0, %vector.ph131 ], [ %index.next140, %vector.body136 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index137 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 8 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 24 ; 2 uses
  %wide.load138 = load <2 x i64>, ptr %i.eu, align 8, !tbaa !15
  %wide.load139 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !15
  %i.ew = add <2 x i64> %wide.load138, %broadcast.splat135
  %i.ex = add <2 x i64> %wide.load139, %broadcast.splat135
  store <2 x i64> %i.ew, ptr %i.eu, align 8, !tbaa !15
  store <2 x i64> %i.ex, ptr %i.ev, align 8, !tbaa !15
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.ey = icmp eq i64 %index.next140, %n.vec133
  br i1 %i.ey, label %middle.block141, label %vector.body136, !llvm.loop !47

middle.block141:                                  ; preds = %vector.body136
  br i1 %cmp.n142, label %stradjust.exit.i, label %.lr.ph.split.i.i.preheader149

.lr.ph.split.i.i.preheader149:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block141
  %.046.i.i.ph = phi i64 [ 1, %.lr.ph.split.i.i.preheader ], [ %i.dl, %middle.block141 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check115, label %.lr.ph.split.us.i.i.preheader148, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.split.us.i.i.preheader
  %broadcast.splatinsert119 = insertelement <2 x i64> poison, i64 %i.es, i64 0
  %broadcast.splat120 = shufflevector <2 x i64> %broadcast.splatinsert119, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph116
  %index122 = phi i64 [ 0, %vector.ph116 ], [ %index.next125, %vector.body121 ] ; 2 uses
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index122 ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 8 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ez, i64 24 ; 2 uses
  %wide.load123 = load <2 x i64>, ptr %i.fa, align 8, !tbaa !15
  %wide.load124 = load <2 x i64>, ptr %i.fb, align 8, !tbaa !15
  %i.fc = sub <2 x i64> %wide.load123, %broadcast.splat120
  %i.fd = sub <2 x i64> %wide.load124, %broadcast.splat120
  store <2 x i64> %i.fc, ptr %i.fa, align 8, !tbaa !15
  store <2 x i64> %i.fd, ptr %i.fb, align 8, !tbaa !15
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.fe, label %middle.block126, label %vector.body121, !llvm.loop !48

middle.block126:                                  ; preds = %vector.body121
  br i1 %cmp.n127, label %stradjust.exit.i, label %.lr.ph.split.us.i.i.preheader148

.lr.ph.split.us.i.i.preheader148:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block126
  %.046.us.i.i.ph = phi i64 [ 1, %.lr.ph.split.us.i.i.preheader ], [ %i.dm, %middle.block126 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader148, %.lr.ph.split.us.i.i
  %.046.us.i.i = phi i64 [ %.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.046.us.i.i.ph, %.lr.ph.split.us.i.i.preheader148 ] ; 3 uses
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i.i ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !15
  %i.fh = sub i64 %i.fg, %i.es
  store i64 %i.fh, ptr %i.ff, align 8, !tbaa !15
  %.0.us.i.i = add nuw i64 %.046.us.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %.046.us.i.i, %.028
  br i1 %exitcond48.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader149, %.lr.ph.split.i.i
  %.046.i.i = phi i64 [ %.0.i.i, %.lr.ph.split.i.i ], [ %.046.i.i.ph, %.lr.ph.split.i.i.preheader149 ] ; 3 uses
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i.i ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !15
  %i.fk = add i64 %i.fj, %i.es
  store i64 %i.fk, ptr %i.fi, align 8, !tbaa !15
  %.0.i.i = add nuw i64 %.046.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.046.i.i, %.028
  br i1 %exitcond.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.i.i, !llvm.loop !50

stradjust.exit.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %middle.block141, %middle.block126, %bb.e
  %i.fl = load i64, ptr %.01533, align 8, !tbaa !15
  %i.fm = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fl
  store i8 %i.dx, ptr %i.fm, align 1, !tbaa !32
  %i.fn = load i64, ptr %i.du, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fn
  %i.fp = add nuw nsw i64 %i.ej, 1
  call void @MoveMemory(ptr noundef nonnull %.034, ptr noundef nonnull %i.fo, i64 noundef %i.fp) #11
  %i.fq = load i8, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.fr = zext i8 %i.fq to i32
  %i.fs = load i64, ptr %i.du, align 8, !tbaa !15
  %i.ft = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fs ; 3 uses
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !32
  %i.fv = zext i8 %i.fu to i32
  %i.fw = sub nsw i32 %i.fr, %i.fv                ; 2 uses
  %i.fx = call i32 @llvm.abs.i32(i32 %i.fw, i1 true)
  %i.fy = icmp eq i64 %.156.i, %.028
  br i1 %i.fy, label %bb.f, label %bb.g

bb.f:                                             ; preds = %stradjust.exit.i
  store i8 %i.fq, ptr %i.ft, align 1, !tbaa !32
  %.pre60.i = zext i8 %i.fq to i64
  br label %stradjust.exit49.i

end_hunk_0
