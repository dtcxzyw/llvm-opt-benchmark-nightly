inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoNumSortIteration:bb.a
  br i1 %i.bj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge33.i.i
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i.i
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !15
  store i64 %i.bg, ptr %i.bh, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge33.i.i
  %.1.i.i = phi i64 [ %.0.i.i, %bb.c ], [ %1, %._crit_edge33.i.i ] ; 2 uses
  %i.bl = shl i64 %.1.i.i, 1                      ; 2 uses
  %.not.i.i = icmp ugt i64 %i.bl, %i.as
  br i1 %.not.i.i, label %NumSift.exit.i, label %.lr.ph.i.i, !llvm.loop !27

NumSift.exit.i:                                   ; preds = %bb.d, %.lr.ph.i11
  %i.bm = add nsw i64 %.029.i, -1                 ; 2 uses
  %.not.i12 = icmp eq i64 %i.bm, 0
  br i1 %.not.i12, label %.lr.ph32.i.preheader, label %.lr.ph.i11, !llvm.loop !28

.lr.ph32.i.preheader:                             ; preds = %NumSift.exit.i, %.lr.ph.split
  br label %.lr.ph32.i

.lr.ph32.i:                                       ; preds = %.lr.ph32.i.preheader, %NumSift.exit27.i
  %.131.i = phi i64 [ %i.cg, %NumSift.exit27.i ], [ %i.as, %.lr.ph32.i.preheader ] ; 5 uses
  %i.bn = add i64 %.131.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %.lr.ph32.i
  %i.bo = phi i64 [ 0, %.lr.ph32.i ], [ %i.cc, %bb.h ] ; 5 uses
  %.02632.i21.i = phi i64 [ 0, %.lr.ph32.i ], [ %.1.i24.i, %bb.h ]
  %i.bp = icmp ult i64 %i.bo, %.131.i
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bo
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !15 ; 3 uses
  br i1 %i.bp, label %bb.f, label %._crit_edge33.i22.i

bb.f:                                             ; preds = %bb.e
  %i.bs = or disjoint i64 %i.bo, 1                ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.bs
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !15 ; 2 uses
  %i.bv = icmp slt i64 %i.br, %i.bu
  %spec.select.i26.i = select i1 %i.bv, i64 %i.bs, i64 %i.bo
  %i.bw = tail call i64 @llvm.smax.i64(i64 %i.br, i64 %i.bu)
  br label %._crit_edge33.i22.i

._crit_edge33.i22.i:                              ; preds = %bb.f, %bb.e
  %i.bx = phi i64 [ %i.bw, %bb.f ], [ %i.br, %bb.e ] ; 2 uses
  %.0.i23.i = phi i64 [ %spec.select.i26.i, %bb.f ], [ %i.bo, %bb.e ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.02632.i21.i ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !15 ; 2 uses
  %i.ca = icmp slt i64 %i.bz, %i.bx
  br i1 %i.ca, label %bb.g, label %bb.h

bb.g:                                             ; preds = %._crit_edge33.i22.i
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.0.i23.i
  store i64 %i.bz, ptr %i.cb, align 8, !tbaa !15
  store i64 %i.bx, ptr %i.by, align 8, !tbaa !15
  br label %bb.h

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
  %n.vec = and i64 %2, 8589934560                 ; 4 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  %n.vec62 = and i64 %2, 8589934588               ; 3 uses
  %cmp.n66 = icmp eq i64 %2, %n.vec62
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph79.i.preheader, %._crit_edge80.i
  %indvar = phi i64 [ 0, %.lr.ph79.i.preheader ], [ %indvar.next, %._crit_edge80.i ] ; 2 uses
  %.05682.i = phi i32 [ 1, %.lr.ph79.i.preheader ], [ %i.aw, %._crit_edge80.i ]
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
  %wide.load61 = load <16 x i8>, ptr %i.ak, align 1, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %index ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <16 x i8> %wide.load, ptr %i.al, align 1, !tbaa !32
  store <16 x i8> %wide.load61, ptr %i.am, align 1, !tbaa !32
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
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %vec.epilog.scalar.ph ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !32
  %i.at = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv.i
  store i8 %i.as, ptr %i.at, align 1, !tbaa !32
  %indvars.iv.next.i = add i64 %indvars.iv.i, 1   ; 2 uses
  %i.au = and i64 %indvars.iv.next.i, 4294967295
  %i.av = icmp ugt i64 %2, %i.au
  br i1 %i.av, label %vec.epilog.scalar.ph, label %._crit_edge80.i, !llvm.loop !38

._crit_edge80.i:                                  ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.aw = add nuw nsw i32 %.05682.i, 1            ; 2 uses
  %exitcond104.not.i = icmp eq i32 %i.aw, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond104.not.i, label %._crit_edge84.split.i, label %iter.check, !llvm.loop !39

._crit_edge84.split.i:                            ; preds = %._crit_edge80.i, %.preheader73.i
  %i.ax = shl nuw nsw i32 %1, 3
  %i.ay = zext nneg i32 %i.ax to i64
  %i.az = mul i64 %i.u, %i.ay
  %i.ba = call ptr @AllocateMemory(i64 noundef %i.az, ptr noundef nonnull %i.b) #11 ; 10 uses
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !4   ; 2 uses
  %.not72.i = icmp eq i32 %i.bb, 0
  br i1 %.not72.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge84.split.i
  call void @ReportError(ptr noundef nonnull @.str.63, i32 noundef %i.bb) #11
  call void @FreeMemory(ptr noundef nonnull %0, ptr noundef nonnull %i.b) #11
  call void (...) @ErrorExit() #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge84.split.i
  %.not98.i = icmp eq i64 %i.u, 0
  br i1 %.not98.i, label %LoadStringArray.exit, label %.lr.ph88.i.preheader

.lr.ph88.i.preheader:                             ; preds = %bb.d
  %xtraiter = and i64 %indvars.iv, 3              ; 3 uses
  %i.bc = icmp ult i64 %.028, 3
  br i1 %i.bc, label %.lr.ph88.i.epil.preheader, label %.lr.ph88.i.preheader.new

.lr.ph88.i.preheader.new:                         ; preds = %.lr.ph88.i.preheader
  %unroll_iter = and i64 %indvars.iv, -4
  br label %.lr.ph88.i

.preheader.i.unr-lcssa:                           ; preds = %.lr.ph88.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader.i, label %.lr.ph88.i.epil.preheader

.lr.ph88.i.epil.preheader:                        ; preds = %.preheader.i.unr-lcssa, %.lr.ph88.i.preheader
  %.05886.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.cp, %.preheader.i.unr-lcssa ]
  %.285.i.epil.init = phi i64 [ 0, %.lr.ph88.i.preheader ], [ %i.co, %.preheader.i.unr-lcssa ]
  %lcmp.mod147 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod147)
  br label %.lr.ph88.i.epil

.lr.ph88.i.epil:                                  ; preds = %.lr.ph88.i.epil, %.lr.ph88.i.epil.preheader
  %.05886.i.epil = phi i64 [ %i.bj, %.lr.ph88.i.epil ], [ %.05886.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 2 uses
  %.285.i.epil = phi i64 [ %i.bi, %.lr.ph88.i.epil ], [ %.285.i.epil.init, %.lr.ph88.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph88.i.epil ], [ 0, %.lr.ph88.i.epil.preheader ]
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.05886.i.epil
  store i64 %.285.i.epil, ptr %i.bd, align 8, !tbaa !15
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i.epil
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !32
  %i.bg = zext i8 %i.bf to i64
  %i.bh = add i64 %.285.i.epil, 1
  %i.bi = add i64 %i.bh, %i.bg
  %i.bj = add nuw i64 %.05886.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader.i, label %.lr.ph88.i.epil, !llvm.loop !40

.preheader.i:                                     ; preds = %.lr.ph88.i.epil, %.preheader.i.unr-lcssa
  br i1 %i.v, label %.lr.ph91.i.preheader.preheader, label %LoadStringArray.exit

.lr.ph91.i.preheader.preheader:                   ; preds = %.preheader.i
  %3 = shl i64 %.028, 3
  %4 = add i64 %3, 8
  %min.iters.check72 = icmp ult i64 %indvars.iv, 10
  %i.bk = and i64 %.028, 4294967295
  %i.bl = icmp eq i64 %i.bk, 4294967295
  %i.bm = icmp ugt i64 %.028, 4294967295
  %i.bn = or i1 %i.bl, %i.bm
  %n.vec74 = and i64 %indvars.iv, -4              ; 3 uses
  %cmp.n81 = icmp eq i64 %indvars.iv, %n.vec74
  br label %.lr.ph91.i.preheader

.lr.ph88.i:                                       ; preds = %.lr.ph88.i, %.lr.ph88.i.preheader.new
  %.05886.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.cp, %.lr.ph88.i ] ; 5 uses
  %.285.i = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %i.co, %.lr.ph88.i ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph88.i.preheader.new ], [ %niter.next.3, %.lr.ph88.i ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.05886.i
  store i64 %.285.i, ptr %i.bo, align 8, !tbaa !15
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %.285.i
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !32
  %i.br = zext i8 %i.bq to i64
  %i.bs = add i64 %.285.i, 1
  %i.bt = add i64 %i.bs, %i.br                    ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.05886.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  store i64 %i.bt, ptr %i.bv, align 8, !tbaa !15
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 %i.bt
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !32
  %i.by = zext i8 %i.bx to i64
  %i.bz = add i64 %i.bt, 1
  %i.ca = add i64 %i.bz, %i.by                    ; 3 uses
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.05886.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  store i64 %i.ca, ptr %i.cc, align 8, !tbaa !15
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ca
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !32
  %i.cf = zext i8 %i.ce to i64
  %i.cg = add i64 %i.ca, 1
  %i.ch = add i64 %i.cg, %i.cf                    ; 3 uses
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %.05886.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 %i.ch, ptr %i.cj, align 8, !tbaa !15
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !32
  %i.cm = zext i8 %i.cl to i64
  %i.cn = add i64 %i.ch, 1
  %i.co = add i64 %i.cn, %i.cm                    ; 2 uses
  %i.cp = add nuw i64 %.05886.i, 4                ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.i.unr-lcssa, label %.lr.ph88.i, !llvm.loop !41

.lr.ph91.i.preheader:                             ; preds = %.lr.ph91.i.preheader.preheader, %._crit_edge92.i
  %indvar69 = phi i64 [ 0, %.lr.ph91.i.preheader.preheader ], [ %indvar.next70, %._crit_edge92.i ] ; 2 uses
  %.15794.i = phi i32 [ 1, %.lr.ph91.i.preheader.preheader ], [ %i.da, %._crit_edge92.i ]
  %.06593.i = phi ptr [ %i.ba, %.lr.ph91.i.preheader.preheader ], [ %5, %._crit_edge92.i ]
  %5 = getelementptr inbounds nuw [8 x i8], ptr %.06593.i, i64 %i.u ; 3 uses
  br i1 %min.iters.check72, label %.lr.ph91.i.preheader146, label %vector.scevcheck67

vector.scevcheck67:                               ; preds = %.lr.ph91.i.preheader
  %6 = add i64 %indvar69, 1
  %7 = mul i64 %4, %6
  %8 = add i64 %7, -1
  %diff.check71 = icmp ult i64 %8, 31
  %or.cond139 = select i1 %i.bn, i1 true, i1 %diff.check71
  br i1 %or.cond139, label %.lr.ph91.i.preheader146, label %vector.body75

vector.body75:                                    ; preds = %vector.scevcheck67, %vector.body75
  %index76 = phi i64 [ %index.next79, %vector.body75 ], [ 0, %vector.scevcheck67 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %index76 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %wide.load77 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !15
  %wide.load78 = load <2 x i64>, ptr %i.cr, align 8, !tbaa !15
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index76 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  store <2 x i64> %wide.load77, ptr %i.cs, align 8, !tbaa !15
  store <2 x i64> %wide.load78, ptr %i.ct, align 8, !tbaa !15
  %index.next79 = add nuw i64 %index76, 4         ; 2 uses
  %i.cu = icmp eq i64 %index.next79, %n.vec74
  br i1 %i.cu, label %middle.block80, label %vector.body75, !llvm.loop !42

middle.block80:                                   ; preds = %vector.body75
  br i1 %cmp.n81, label %._crit_edge92.i, label %.lr.ph91.i.preheader146

.lr.ph91.i.preheader146:                          ; preds = %vector.scevcheck67, %.lr.ph91.i.preheader, %middle.block80
  %indvars.iv40.ph = phi i64 [ 0, %vector.scevcheck67 ], [ 0, %.lr.ph91.i.preheader ], [ %n.vec74, %middle.block80 ]
  br label %.lr.ph91.i

.lr.ph91.i:                                       ; preds = %.lr.ph91.i.preheader146, %.lr.ph91.i
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %.lr.ph91.i ], [ %indvars.iv40.ph, %.lr.ph91.i.preheader146 ] ; 3 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %indvars.iv40
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !15
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv40
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !15
  %indvars.iv.next41 = add i64 %indvars.iv40, 1   ; 2 uses
  %i.cy = and i64 %indvars.iv.next41, 4294967295
  %i.cz = icmp ugt i64 %i.u, %i.cy
  br i1 %i.cz, label %.lr.ph91.i, label %._crit_edge92.i, !llvm.loop !43

._crit_edge92.i:                                  ; preds = %.lr.ph91.i, %middle.block80
  %i.da = add nuw nsw i32 %.15794.i, 1            ; 2 uses
  %exitcond105.not.i = icmp eq i32 %i.da, %1
  %indvar.next70 = add i64 %indvar69, 1
  br i1 %exitcond105.not.i, label %LoadStringArray.exit.thread, label %.lr.ph91.i.preheader, !llvm.loop !44

LoadStringArray.exit.thread:                      ; preds = %._crit_edge92.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.db = call i64 (...) @StartStopwatch() #11
  br label %.lr.ph

LoadStringArray.exit:                             ; preds = %bb.d, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.dc = call i64 (...) @StartStopwatch() #11    ; 2 uses
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %LoadStringArray.exit.thread, %LoadStringArray.exit
  %i.dd = phi i64 [ %i.db, %LoadStringArray.exit.thread ], [ %i.dc, %LoadStringArray.exit ] ; 2 uses
  %i.de = lshr i64 %.028, 1                       ; 2 uses
  %.not53.i = icmp eq i64 %i.de, 0
  %.not3855.i = icmp eq i64 %.028, 0
  %i.df = icmp ugt i64 %i.u, 1
  br i1 %.not3855.i, label %._crit_edge, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %min.iters.check112 = icmp ult i64 %.028, 4     ; 2 uses
  %n.vec128 = and i64 %.028, -4                   ; 3 uses
  %i.dg = or disjoint i64 %n.vec128, 1
  %cmp.n137 = icmp eq i64 %.028, %n.vec128
  %n.vec114 = and i64 %.028, -4                   ; 3 uses
  %i.dh = or disjoint i64 %n.vec114, 1
  %cmp.n123 = icmp eq i64 %.028, %n.vec114
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %StrHeapSort.exit.loopexit
  %.034 = phi ptr [ %i.hl, %StrHeapSort.exit.loopexit ], [ %0, %.lr.ph.split.preheader ] ; 17 uses
  %.01533 = phi ptr [ %i.di, %StrHeapSort.exit.loopexit ], [ %i.ba, %.lr.ph.split.preheader ] ; 15 uses
  %.01632 = phi i32 [ %i.hm, %StrHeapSort.exit.loopexit ], [ 0, %.lr.ph.split.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br i1 %.not53.i, label %.preheader.i19, label %.lr.ph.i17

.preheader.i19:                                   ; preds = %.lr.ph.i17, %.lr.ph.split
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %i.u ; 2 uses
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 -8 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01533, i64 8
  br label %bb.e

.lr.ph.i17:                                       ; preds = %.lr.ph.split, %.lr.ph.i17
  %.054.i = phi i64 [ %i.dl, %.lr.ph.i17 ], [ %i.de, %.lr.ph.split ] ; 2 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef %.054.i, i64 noundef %.028)
  %i.dl = add nsw i64 %.054.i, -1                 ; 2 uses
  %.not.i18 = icmp eq i64 %i.dl, 0
  br i1 %.not.i18, label %.preheader.i19, label %.lr.ph.i17, !llvm.loop !46

bb.e:                                             ; preds = %.preheader.i19, %stradjust.exit49.i
  %indvar83 = phi i64 [ 0, %.preheader.i19 ], [ %indvar.next84, %stradjust.exit49.i ] ; 6 uses
  %.156.i = phi i64 [ %.028, %.preheader.i19 ], [ %i.hj, %stradjust.exit49.i ] ; 5 uses
  call fastcc void @strsift(ptr noundef %.01533, ptr noundef %.034, i64 noundef %i.u, i64 noundef 0, i64 noundef %.156.i)
  %i.dm = load i8, ptr %.034, align 1, !tbaa !32
  %i.dn = zext i8 %i.dm to i64
  %i.do = add nuw nsw i64 %i.dn, 1
  call void @MoveMemory(ptr noundef nonnull %i.a, ptr noundef nonnull %.034, i64 noundef %i.do) #11
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.156.i ; 6 uses
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.dr = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dq
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !32  ; 3 uses
  %i.dt = load i64, ptr %.01533, align 8, !tbaa !15
  %i.du = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dt ; 2 uses
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !32
  %i.dw = load i64, ptr %i.dj, align 8, !tbaa !15 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.034, i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !32
  %i.dz = zext i8 %i.dy to i64
  %i.ea = load i64, ptr %i.dk, align 8, !tbaa !15 ; 2 uses
  %i.eb = add i64 %i.dw, 1
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.ec, %i.ea
  %i.ee = zext i8 %i.ds to i64                    ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.ee
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 1
  %i.eh = getelementptr inbounds nuw i8, ptr %.034, i64 %i.ea
  call void @MoveMemory(ptr noundef nonnull %i.eg, ptr noundef nonnull %i.eh, i64 noundef %i.ed) #11
  br i1 %i.df, label %.lr.ph.i.i, label %stradjust.exit.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.ei = zext i8 %i.ds to i32
  %i.ej = zext i8 %i.dv to i32
  %i.ek = sub nsw i32 %i.ei, %i.ej                ; 2 uses
  %i.el = call i32 @llvm.abs.i32(i32 %i.ek, i1 true)
  %i.em = icmp slt i32 %i.ek, 0
  %i.en = zext nneg i32 %i.el to i64              ; 4 uses
  br i1 %i.em, label %.lr.ph.split.us.i.i.preheader, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.i.i
  br i1 %min.iters.check112, label %.lr.ph.split.i.i.preheader144, label %vector.ph127

vector.ph127:                                     ; preds = %.lr.ph.split.i.i.preheader
  %broadcast.splatinsert129 = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %broadcast.splat130 = shufflevector <2 x i64> %broadcast.splatinsert129, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next135, %vector.body131 ] ; 2 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index132 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 8 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 24 ; 2 uses
  %wide.load133 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !15
  %wide.load134 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !15
  %i.er = add <2 x i64> %wide.load133, %broadcast.splat130
  %i.es = add <2 x i64> %wide.load134, %broadcast.splat130
  store <2 x i64> %i.er, ptr %i.ep, align 8, !tbaa !15
  store <2 x i64> %i.es, ptr %i.eq, align 8, !tbaa !15
  %index.next135 = add nuw i64 %index132, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next135, %n.vec128
  br i1 %i.et, label %middle.block136, label %vector.body131, !llvm.loop !47

middle.block136:                                  ; preds = %vector.body131
  br i1 %cmp.n137, label %stradjust.exit.i, label %.lr.ph.split.i.i.preheader144

.lr.ph.split.i.i.preheader144:                    ; preds = %.lr.ph.split.i.i.preheader, %middle.block136
  %.046.i.i.ph = phi i64 [ 1, %.lr.ph.split.i.i.preheader ], [ %i.dg, %middle.block136 ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.i.i.preheader:                    ; preds = %.lr.ph.i.i
  br i1 %min.iters.check112, label %.lr.ph.split.us.i.i.preheader143, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph.split.us.i.i.preheader
  %broadcast.splatinsert115 = insertelement <2 x i64> poison, i64 %i.en, i64 0
  %broadcast.splat116 = shufflevector <2 x i64> %broadcast.splatinsert115, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body117

vector.body117:                                   ; preds = %vector.body117, %vector.ph113
  %index118 = phi i64 [ 0, %vector.ph113 ], [ %index.next121, %vector.body117 ] ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %index118 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 24 ; 2 uses
  %wide.load119 = load <2 x i64>, ptr %i.ev, align 8, !tbaa !15
  %wide.load120 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !15
  %i.ex = sub <2 x i64> %wide.load119, %broadcast.splat116
  %i.ey = sub <2 x i64> %wide.load120, %broadcast.splat116
  store <2 x i64> %i.ex, ptr %i.ev, align 8, !tbaa !15
  store <2 x i64> %i.ey, ptr %i.ew, align 8, !tbaa !15
  %index.next121 = add nuw i64 %index118, 4       ; 2 uses
  %i.ez = icmp eq i64 %index.next121, %n.vec114
  br i1 %i.ez, label %middle.block122, label %vector.body117, !llvm.loop !48

middle.block122:                                  ; preds = %vector.body117
  br i1 %cmp.n123, label %stradjust.exit.i, label %.lr.ph.split.us.i.i.preheader143

.lr.ph.split.us.i.i.preheader143:                 ; preds = %.lr.ph.split.us.i.i.preheader, %middle.block122
  %.046.us.i.i.ph = phi i64 [ 1, %.lr.ph.split.us.i.i.preheader ], [ %i.dh, %middle.block122 ]
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.split.us.i.i.preheader143, %.lr.ph.split.us.i.i
  %.046.us.i.i = phi i64 [ %.0.us.i.i, %.lr.ph.split.us.i.i ], [ %.046.us.i.i.ph, %.lr.ph.split.us.i.i.preheader143 ] ; 3 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.us.i.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !15
  %i.fc = sub i64 %i.fb, %i.en
  store i64 %i.fc, ptr %i.fa, align 8, !tbaa !15
  %.0.us.i.i = add nuw i64 %.046.us.i.i, 1
  %exitcond48.not.i.i = icmp eq i64 %.046.us.i.i, %.028
  br i1 %exitcond48.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.us.i.i, !llvm.loop !49

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader144, %.lr.ph.split.i.i
  %.046.i.i = phi i64 [ %.0.i.i, %.lr.ph.split.i.i ], [ %.046.i.i.ph, %.lr.ph.split.i.i.preheader144 ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %.01533, i64 %.046.i.i ; 2 uses
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !15
  %i.ff = add i64 %i.fe, %i.en
  store i64 %i.ff, ptr %i.fd, align 8, !tbaa !15
  %.0.i.i = add nuw i64 %.046.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.046.i.i, %.028
  br i1 %exitcond.not.i.i, label %stradjust.exit.i, label %.lr.ph.split.i.i, !llvm.loop !50

stradjust.exit.i:                                 ; preds = %.lr.ph.split.i.i, %.lr.ph.split.us.i.i, %middle.block136, %middle.block122, %bb.e
  %i.fg = load i64, ptr %.01533, align 8, !tbaa !15
  %i.fh = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fg
  store i8 %i.ds, ptr %i.fh, align 1, !tbaa !32
  %i.fi = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.fj = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fi
  %i.fk = add nuw nsw i64 %i.ee, 1
  call void @MoveMemory(ptr noundef nonnull %.034, ptr noundef nonnull %i.fj, i64 noundef %i.fk) #11
  %i.fl = load i8, ptr %i.a, align 16, !tbaa !32  ; 5 uses
  %i.fm = zext i8 %i.fl to i32
  %i.fn = load i64, ptr %i.dp, align 8, !tbaa !15
  %i.fo = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fn ; 3 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !32
  %i.fq = zext i8 %i.fp to i32
  %i.fr = sub nsw i32 %i.fm, %i.fq                ; 2 uses
  %i.fs = call i32 @llvm.abs.i32(i32 %i.fr, i1 true)
  %i.ft = icmp eq i64 %.156.i, %.028
  br i1 %i.ft, label %bb.f, label %bb.g

bb.f:                                             ; preds = %stradjust.exit.i
  store i8 %i.fl, ptr %i.fo, align 1, !tbaa !32
  %.pre60.i = zext i8 %i.fl to i64
  br label %stradjust.exit49.i

bb.g:                                             ; preds = %stradjust.exit.i
  %i.fu = load i64, ptr %i.dj, align 8, !tbaa !15 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.034, i64 %i.fu
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !32
  %i.fx = zext i8 %i.fw to i64
  %i.fy = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !15 ; 2 uses
end_hunk_0
