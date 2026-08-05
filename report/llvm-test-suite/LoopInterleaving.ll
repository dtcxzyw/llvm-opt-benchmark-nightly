inline.NumInlined: 3446
inline.NumDeleted: 355
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZL30bigLoopWithReductionWithVW4IC4i:bb.a
  store <4 x i32> %i.w, ptr %i.s, align 16, !tbaa !4
  store <4 x i32> %i.x, ptr %i.t, align 16, !tbaa !4
  store <4 x i32> %i.y, ptr %i.u, align 16, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.z, i64 32 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 48 ; 2 uses
  %wide.load27 = load <4 x i32>, ptr %i.z, align 16, !tbaa !4
  %wide.load28 = load <4 x i32>, ptr %i.aa, align 16, !tbaa !4
  %wide.load29 = load <4 x i32>, ptr %i.ab, align 16, !tbaa !4
  %wide.load30 = load <4 x i32>, ptr %i.ac, align 16, !tbaa !4
  %i.ad = sdiv <4 x i32> %wide.load27, splat (i32 5)
  %i.ae = sdiv <4 x i32> %wide.load28, splat (i32 5)
  %i.af = sdiv <4 x i32> %wide.load29, splat (i32 5)
  %i.ag = sdiv <4 x i32> %wide.load30, splat (i32 5)
  store <4 x i32> %i.ad, ptr %i.z, align 16, !tbaa !4
  store <4 x i32> %i.ae, ptr %i.aa, align 16, !tbaa !4
  store <4 x i32> %i.af, ptr %i.ab, align 16, !tbaa !4
  store <4 x i32> %i.ag, ptr %i.ac, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.g, %i.f
  %bin.rdx31 = add <4 x i32> %i.h, %bin.rdx
  %bin.rdx32 = add <4 x i32> %i.i, %bin.rdx31
  %i.ai = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx32) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader33

.lr.ph.preheader33:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0910.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %i.ai, %middle.block ], [ %i.al, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader33, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader33 ] ; 5 uses
  %.0910 = phi i32 [ %i.al, %.lr.ph ], [ %.0910.ph, %.lr.ph.preheader33 ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4
  %i.al = add i32 %i.ak, %.0910                   ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %indvars.iv ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !4
  %i.ao = add nsw i32 %i.an, 1
  store i32 %i.ao, ptr %i.am, align 4, !tbaa !4
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %indvars.iv ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !4
  %i.ar = shl nsw i32 %i.aq, 1
  store i32 %i.ar, ptr %i.ap, align 4, !tbaa !4
  %i.as = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %indvars.iv ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sdiv i32 %i.at, 5
  store i32 %i.au, ptr %i.as, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC1VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !35  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not13 = icmp eq i64 %i.d, 0
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !37
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC1i(i32 noundef 1), !inline_history !38
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !39

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC1i(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %.0910 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.d, %.lr.ph ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.c = load i32, ptr %i.b, align 4, !tbaa !4
  %i.d = add i32 %i.c, %.0910                     ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !4
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 4, !tbaa !4
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %indvars.iv ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = shl nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %indvars.iv ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %i.m = sdiv i32 %i.l, 5
  store i32 %i.m, ptr %i.k, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !85
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC2VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !35  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not13 = icmp eq i64 %i.d, 0
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !37
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC2i(i32 noundef 1), !inline_history !38
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !39

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC2i(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp eq i32 %0, 1
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.b = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %index
  %i.d = load <2 x i32>, ptr %i.c, align 8, !tbaa !4
  %i.e = add <2 x i32> %i.d, %i.b                 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %index ; 2 uses
  %i.g = load <2 x i32>, ptr %i.f, align 8, !tbaa !4
  %i.h = add nsw <2 x i32> %i.g, splat (i32 1)
  store <2 x i32> %i.h, ptr %i.f, align 8, !tbaa !4
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %index ; 2 uses
  %i.j = load <2 x i32>, ptr %i.i, align 8, !tbaa !4
  %i.k = shl nsw <2 x i32> %i.j, splat (i32 1)
  store <2 x i32> %i.k, ptr %i.i, align 8, !tbaa !4
  %1 = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index
  %2 = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %3 = load i32, ptr %1, align 8, !tbaa !4
  %4 = load i32, ptr %2, align 4, !tbaa !4
  %5 = sdiv i32 %3, 5
  %6 = sdiv i32 %4, 5
  store i32 %5, ptr %1, align 8, !tbaa !4
  store i32 %6, ptr %2, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !86

middle.block:                                     ; preds = %vector.body
  %bin.rdx = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0910.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %bin.rdx, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %bin.rdx, %middle.block ], [ %i.p, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader15 ] ; 5 uses
  %.0910 = phi i32 [ %i.p, %.lr.ph ], [ %.0910.ph, %.lr.ph.preheader15 ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add i32 %i.o, %.0910                     ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %indvars.iv ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = add nsw i32 %i.r, 1
  store i32 %i.s, ptr %i.q, align 4, !tbaa !4
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = shl nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = sdiv i32 %i.x, 5
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !87
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC4VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !35  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not13 = icmp eq i64 %i.d, 0
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !37
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC4i(i32 noundef 1), !inline_history !38
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !39

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC4i(i32 noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader18, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.b = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %index
  %i.d = load <4 x i32>, ptr %i.c, align 16, !tbaa !4
  %i.e = add <4 x i32> %i.d, %i.b                 ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %index ; 2 uses
  %i.g = load <4 x i32>, ptr %i.f, align 16, !tbaa !4
  %i.h = add nsw <4 x i32> %i.g, splat (i32 1)
  store <4 x i32> %i.h, ptr %i.f, align 16, !tbaa !4
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %index ; 2 uses
  %i.j = load <4 x i32>, ptr %i.i, align 16, !tbaa !4
  %i.k = shl nsw <4 x i32> %i.j, splat (i32 1)
  store <4 x i32> %i.k, ptr %i.i, align 16, !tbaa !4
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index ; 2 uses
  %i.m = load <4 x i32>, ptr %i.l, align 16, !tbaa !4
  %i.n = sdiv <4 x i32> %i.m, splat (i32 5)
  store <4 x i32> %i.n, ptr %i.l, align 16, !tbaa !4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !88

middle.block:                                     ; preds = %vector.body
  %i.p = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0910.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.p, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %i.p, %middle.block ], [ %i.s, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 5 uses
  %.0910 = phi i32 [ %i.s, %.lr.ph ], [ %.0910.ph, %.lr.ph.preheader18 ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = add i32 %i.r, %.0910                     ; 2 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %indvars.iv ; 2 uses
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = add nsw i32 %i.u, 1
  store i32 %i.v, ptr %i.t, align 4, !tbaa !4
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = shl nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = sdiv i32 %i.aa, 5
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !89
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22benchAutoVecForLoopTC2RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
bb.a:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, label %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread

_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread: ; preds = %bb.a
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  br label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit

_ZN9benchmark5State13StateIteratorC2EPS0_.exit:   ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16, !tbaa !35  ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not13 = icmp eq i64 %i.d, 0
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !36

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !37
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !37
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL22loopNoReductionAutoVeci(i32 noundef 2), !inline_history !38
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !39

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit.thread, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
