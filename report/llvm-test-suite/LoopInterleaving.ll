inline.NumInlined: 3446
inline.NumDeleted: 355
begin_hunk_0_@_ZL27loopWithReductionWithVW4IC4i:bb.a
  %i.k = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx17) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader18

.lr.ph.preheader18:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.067.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.k, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.k, %middle.block ], [ %i.n, %.lr.ph ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader18, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader18 ] ; 2 uses
  %.067 = phi i32 [ %i.n, %.lr.ph ], [ %.067.ph, %.lr.ph.preheader18 ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = add i32 %i.m, %.067                      ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !58
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z34benchForIC1VW1LoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC1i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC1i(i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 7         ; 3 uses
  %i.b = icmp ult i32 %0, 8
  br i1 %i.b, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483640
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %.067.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod11)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.lr.ph.epil.preheader ], [ %indvars.iv.next.epil, %.lr.ph.epil ] ; 2 uses
  %.067.epil = phi i32 [ %.067.epil.init, %.lr.ph.epil.preheader ], [ %i.e, %.lr.ph.epil ]
  %epil.iter = phi i64 [ 0, %.lr.ph.epil.preheader ], [ %epil.iter.next, %.lr.ph.epil ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv.epil
  %i.d = load i32, ptr %i.c, align 4, !tbaa !4
  %i.e = add i32 %i.d, %.067.epil                 ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !59

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.aj, %._crit_edge.loopexit.unr-lcssa ], [ %i.e, %.lr.ph.epil ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.7, %.lr.ph ] ; 9 uses
  %.067 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.7, %.lr.ph ]
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 16, !tbaa !4
  %i.h = add i32 %i.g, %.067
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = add i32 %i.k, %i.h
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !4
  %i.p = add i32 %i.o, %i.l
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = add i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load i32, ptr %i.v, align 16, !tbaa !4
  %i.x = add i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !4
  %i.af = add i32 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 28
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add i32 %i.ai, %i.af                    ; 3 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter.next.7 = add i64 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i64 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !60
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z34benchForIC2VW1LoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC2i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC2i(i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp eq i32 %0, 1
  br i1 %min.iters.check, label %.lr.ph.preheader12, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483646   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = phi <2 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %index
  %i.d = load <2 x i32>, ptr %i.c, align 8, !tbaa !4
  %i.e = add <2 x i32> %i.d, %i.b                 ; 2 uses
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !64

middle.block:                                     ; preds = %vector.body
  %bin.rdx = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader12

.lr.ph.preheader12:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.067.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %bin.rdx, %middle.block ] ; 2 uses
  %i.g = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader12, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader12 ] ; 2 uses
  %.067.prol = phi i32 [ %i.j, %.lr.ph.prol ], [ %.067.ph, %.lr.ph.preheader12 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader12 ]
  %i.h = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv.prol
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4
  %i.j = add i32 %i.i, %.067.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !65

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader12
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader12 ], [ %i.j, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader12 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph.preheader12 ], [ %i.j, %.lr.ph.prol ]
  %i.k = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.l = icmp ugt i64 %i.k, -8
  br i1 %i.l, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %bin.rdx, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.aq, %.lr.ph ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.067 = phi i32 [ %i.aq, %.lr.ph ], [ %.067.unr, %.lr.ph.prol.loopexit ]
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = add i32 %i.n, %.067
  %i.p = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = add i32 %i.r, %i.o
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %i.w = add i32 %i.v, %i.s
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = add i32 %i.z, %i.w
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = add i32 %i.ad, %i.aa
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 20
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4
  %i.ai = add i32 %i.ah, %i.ae
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = add i32 %i.al, %i.ai
  %i.an = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = add i32 %i.ap, %i.am                    ; 2 uses
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %exitcond.not.7 = icmp eq i64 %indvars.iv.next.7, %wide.trip.count
  br i1 %exitcond.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !66
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z34benchForIC4VW1LoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC4i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef i32 @_ZL27loopWithReductionWithVW1IC4i(i32 noundef %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %0 to i64      ; 5 uses
  %min.iters.check = icmp ult i32 %0, 4
  br i1 %min.iters.check, label %.lr.ph.preheader15, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.b = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.e, %vector.body ]
  %i.c = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %index
  %i.d = load <4 x i32>, ptr %i.c, align 16, !tbaa !4
  %i.e = add <4 x i32> %i.d, %i.b                 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.f = icmp eq i64 %index.next, %n.vec
  br i1 %i.f, label %middle.block, label %vector.body, !llvm.loop !67

middle.block:                                     ; preds = %vector.body
  %i.g = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %.067.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.g, %middle.block ] ; 2 uses
  %i.h = sub nsw i64 %wide.trip.count, %indvars.iv.ph
  %xtraiter = and i64 %i.h, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader15, %.lr.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.prol ], [ %indvars.iv.ph, %.lr.ph.preheader15 ] ; 2 uses
  %.067.prol = phi i32 [ %i.k, %.lr.ph.prol ], [ %.067.ph, %.lr.ph.preheader15 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader15 ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = add i32 %i.j, %.067.prol                 ; 3 uses
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !68

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader15
  %.lcssa.unr = phi i32 [ poison, %.lr.ph.preheader15 ], [ %i.k, %.lr.ph.prol ]
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %.lr.ph.preheader15 ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.067.unr = phi i32 [ %.067.ph, %.lr.ph.preheader15 ], [ %i.k, %.lr.ph.prol ]
  %i.l = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.m = icmp ugt i64 %i.l, -8
  br i1 %i.m, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %middle.block, %bb.a
  %.06.lcssa = phi i32 [ 0, %bb.a ], [ %i.g, %middle.block ], [ %.lcssa.unr, %.lr.ph.prol.loopexit ], [ %i.ar, %.lr.ph ]
  ret i32 %.06.lcssa

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.7, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %.067 = phi i32 [ %i.ar, %.lr.ph ], [ %.067.unr, %.lr.ph.prol.loopexit ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.o = load i32, ptr %i.n, align 4, !tbaa !4
  %i.p = add i32 %i.o, %.067
  %i.q = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !4
  %i.t = add i32 %i.s, %i.p
  %i.u = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %i.x = add i32 %i.w, %i.t
  %i.y = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = add i32 %i.aa, %i.x
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = add i32 %i.ae, %i.ab
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add i32 %i.ai, %i.af
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
end_hunk_0
begin_hunk_1_@_ZL30bigLoopWithReductionWithVW4IC4i:bb.a
  %wide.load24 = load <4 x i32>, ptr %i.s, align 16, !tbaa !4
  %wide.load25 = load <4 x i32>, ptr %i.t, align 16, !tbaa !4
  %wide.load26 = load <4 x i32>, ptr %i.u, align 16, !tbaa !4
  %i.v = shl nsw <4 x i32> %wide.load23, splat (i32 1)
  %i.w = shl nsw <4 x i32> %wide.load24, splat (i32 1)
  %i.x = shl nsw <4 x i32> %wide.load25, splat (i32 1)
  %i.y = shl nsw <4 x i32> %wide.load26, splat (i32 1)
  store <4 x i32> %i.v, ptr %i.r, align 16, !tbaa !4
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
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !82

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !83
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC1VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC1i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !84
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC2VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC2i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %index
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.l, align 8, !tbaa !4
  %i.p = load i32, ptr %i.n, align 4, !tbaa !4
  %i.q = sdiv i32 %i.o, 5
  %i.r = sdiv i32 %i.p, 5
  store i32 %i.q, ptr %i.l, align 8, !tbaa !4
  store i32 %i.r, ptr %i.n, align 4, !tbaa !4
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %bin.rdx = tail call i32 @llvm.vector.reduce.add.v2i32(<2 x i32> %i.e) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader15

.lr.ph.preheader15:                               ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.0910.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %bin.rdx, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %.09.lcssa = phi i32 [ 0, %bb.a ], [ %bin.rdx, %middle.block ], [ %i.v, %.lr.ph ]
  ret i32 %.09.lcssa

.lr.ph:                                           ; preds = %.lr.ph.preheader15, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader15 ] ; 5 uses
  %.0910 = phi i32 [ %i.v, %.lr.ph ], [ %.0910.ph, %.lr.ph.preheader15 ]
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @A, i64 %indvars.iv
  %i.u = load i32, ptr %i.t, align 4, !tbaa !4
  %i.v = add i32 %i.u, %.0910                     ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr @D, i64 %indvars.iv ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !4
  %i.y = add nsw i32 %i.x, 1
  store i32 %i.y, ptr %i.w, align 4, !tbaa !4
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @E, i64 %indvars.iv ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = shl nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4, !tbaa !4
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr @F, i64 %indvars.iv ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = sdiv i32 %i.ad, 5
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !86
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z37benchForIC4VW1BigLoopWithReductionTC1RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL30bigLoopWithReductionWithVW1IC4i(i32 noundef 1), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
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
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !87

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
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !88
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z22benchAutoVecForLoopTC2RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @D, ptr nonnull elementtype([2048 x i32]) @D) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @E, ptr nonnull elementtype([2048 x i32]) @E) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @F, ptr nonnull elementtype([2048 x i32]) @F) #10, !srcloc !36
  fence syncscope("singlethread") acq_rel
  %i.e = tail call fastcc noundef i32 @_ZL22loopNoReductionAutoVeci(i32 noundef 2), !inline_history !37
  %i.f = load i32, ptr @g_sum, align 4, !tbaa !4
  %i.g = add i32 %i.f, %i.e
  store i32 %i.g, ptr @g_sum, align 4, !tbaa !4
  %i.h = add nsw i64 %.sroa.06.014, -1            ; 2 uses
  %.not.i.not = icmp eq i64 %i.h, 0
  br i1 %.not.i.not, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !38

_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit: ; preds = %.lr.ph, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit
  tail call void @_ZN9benchmark5State17FinishKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_Z21benchForIC1VW4LoopTC2RN9benchmark5StateE(ptr noundef nonnull align 64 dereferenceable(184) %0) #1 {
_ZN9benchmark5State13StateIteratorC2EPS0_.exit:
  tail call fastcc void @_ZL9init_dataj()
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load i32, ptr %i.a, align 4, !tbaa !8
  %.not = icmp ne i32 %i.b, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 16             ; 2 uses
  tail call void @_ZN9benchmark5State16StartKeepRunningEv(ptr noundef nonnull align 64 dereferenceable(184) %0)
  %.not.i.not1315 = icmp eq i64 %i.d, 0
  %.not.i.not13 = select i1 %.not, i1 true, i1 %.not.i.not1315
  br i1 %.not.i.not13, label %_ZL27runBenchForLoopInterleavingRN9benchmark5StateEPFiiEi.exit, label %.lr.ph, !prof !35

.lr.ph:                                           ; preds = %_ZN9benchmark5State13StateIteratorC2EPS0_.exit, %.lr.ph
  %.sroa.06.014 = phi i64 [ %i.h, %.lr.ph ], [ %i.d, %_ZN9benchmark5State13StateIteratorC2EPS0_.exit ]
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @A, ptr nonnull elementtype([2048 x i32]) @A) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @B, ptr nonnull elementtype([2048 x i32]) @B) #10, !srcloc !36
  tail call void asm sideeffect "", "=*r|m,*0,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype([2048 x i32]) @C, ptr nonnull elementtype([2048 x i32]) @C) #10, !srcloc !36
end_hunk_1
begin_hunk_2_@_GLOBAL__sub_I_LoopInterleaving.cpp:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.hsz, ptr noundef nonnull align 1 dereferenceable(39) @.str.612, i64 39, i1 false)
  %i.htb = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.hta, ptr %i.htb, align 8, !tbaa !103
  %i.htc = getelementptr inbounds nuw i8, ptr %i.hsz, i64 %i.hta
  store i8 0, ptr %i.htc, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.hsx, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.aii unwind label %bb.aik

bb.aii:                                           ; preds = %.noexc.i2740
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.hsx, align 8, !tbaa !104
  %i.htd = getelementptr inbounds nuw i8, ptr %i.hsx, i64 224
  store ptr @_Z39benchForIC1VW1BigLoopWithReductionTC128RN9benchmark5StateE, ptr %i.htd, align 8, !tbaa !106
  %i.hte = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.hsx)
          to label %bb.aij unwind label %bb.aik

bb.aij:                                           ; preds = %bb.aii
  %i.htf = load ptr, ptr %2, align 8, !tbaa !101  ; 2 uses
  %i.htg = icmp eq ptr %i.htf, %i.hsy
  br i1 %i.htg, label %__cxx_global_var_init.611.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2744

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2744: ; preds = %bb.aij
  %i.hth = load i64, ptr %i.hsy, align 8, !tbaa !102
  %i.hti = add i64 %i.hth, 1
  call void @_ZdlPvm(ptr noundef %i.htf, i64 noundef %i.hti) #12
  br label %__cxx_global_var_init.611.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i2737: ; preds = %__cxx_global_var_init.609.exit
  %i.htj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %common.resume.sink.split

bb.aik:                                           ; preds = %bb.aii, %.noexc.i2740
  %.0.i2741 = phi i1 [ false, %bb.aii ], [ true, %.noexc.i2740 ] ; 2 uses
  %i.htk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.htl = load ptr, ptr %2, align 8, !tbaa !101  ; 2 uses
  %i.htm = icmp eq ptr %i.htl, %i.hsy
  br i1 %i.htm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2743, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2742

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2742: ; preds = %bb.aik
  %i.htn = load i64, ptr %i.hsy, align 8, !tbaa !102
  %i.hto = add i64 %i.htn, 1
  call void @_ZdlPvm(ptr noundef %i.htl, i64 noundef %i.hto) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %.0.i2741, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2743: ; preds = %bb.aik
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br i1 %.0.i2741, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.611.exit:                   ; preds = %bb.aij, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2744
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  store ptr %i.hte, ptr @_ZL29benchmark_uniq_307_benchmark_, align 8, !tbaa !133
  %i.htp = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  %i.htq = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.htq, ptr %1, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i64 39, ptr %i.b, align 8, !tbaa !97
  %i.htr = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc.i2749 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i2746 ; 3 uses

.noexc.i2749:                                     ; preds = %__cxx_global_var_init.611.exit
  store ptr %i.htr, ptr %1, align 8, !tbaa !101
  %i.hts = load i64, ptr %i.b, align 8, !tbaa !97 ; 3 uses
  store i64 %i.hts, ptr %i.htq, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.htr, ptr noundef nonnull align 1 dereferenceable(39) @.str.614, i64 39, i1 false)
  %i.htt = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.hts, ptr %i.htt, align 8, !tbaa !103
  %i.htu = getelementptr inbounds nuw i8, ptr %i.htr, i64 %i.hts
  store i8 0, ptr %i.htu, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.htp, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.ail unwind label %bb.ain

bb.ail:                                           ; preds = %.noexc.i2749
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.htp, align 8, !tbaa !104
  %i.htv = getelementptr inbounds nuw i8, ptr %i.htp, i64 224
  store ptr @_Z39benchForIC2VW1BigLoopWithReductionTC128RN9benchmark5StateE, ptr %i.htv, align 8, !tbaa !106
  %i.htw = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.htp)
          to label %bb.aim unwind label %bb.ain

bb.aim:                                           ; preds = %bb.ail
  %i.htx = load ptr, ptr %1, align 8, !tbaa !101  ; 2 uses
  %i.hty = icmp eq ptr %i.htx, %i.htq
  br i1 %i.hty, label %__cxx_global_var_init.613.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2753

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2753: ; preds = %bb.aim
  %i.htz = load i64, ptr %i.htq, align 8, !tbaa !102
  %i.hua = add i64 %i.htz, 1
  call void @_ZdlPvm(ptr noundef %i.htx, i64 noundef %i.hua) #12
  br label %__cxx_global_var_init.613.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i2746: ; preds = %__cxx_global_var_init.611.exit
  %i.hub = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %common.resume.sink.split

bb.ain:                                           ; preds = %bb.ail, %.noexc.i2749
  %.0.i2750 = phi i1 [ false, %bb.ail ], [ true, %.noexc.i2749 ] ; 2 uses
  %i.huc = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.hud = load ptr, ptr %1, align 8, !tbaa !101  ; 2 uses
  %i.hue = icmp eq ptr %i.hud, %i.htq
  br i1 %i.hue, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2752, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2751

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2751: ; preds = %bb.ain
  %i.huf = load i64, ptr %i.htq, align 8, !tbaa !102
  %i.hug = add i64 %i.huf, 1
  call void @_ZdlPvm(ptr noundef %i.hud, i64 noundef %i.hug) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br i1 %.0.i2750, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2752: ; preds = %bb.ain
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br i1 %.0.i2750, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.613.exit:                   ; preds = %bb.aim, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2753
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  store ptr %i.htw, ptr @_ZL29benchmark_uniq_308_benchmark_, align 8, !tbaa !133
  %i.huh = call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #11 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #10
  %i.hui = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  store ptr %i.hui, ptr %0, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 39, ptr %i.a, align 8, !tbaa !97
  %i.huj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i2758 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i2755 ; 3 uses

.noexc.i2758:                                     ; preds = %__cxx_global_var_init.613.exit
  store ptr %i.huj, ptr %0, align 8, !tbaa !101
  %i.huk = load i64, ptr %i.a, align 8, !tbaa !97 ; 3 uses
  store i64 %i.huk, ptr %i.hui, align 8, !tbaa !102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(39) %i.huj, ptr noundef nonnull align 1 dereferenceable(39) @.str.616, i64 39, i1 false)
  %i.hul = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.huk, ptr %i.hul, align 8, !tbaa !103
  %i.hum = getelementptr inbounds nuw i8, ptr %i.huj, i64 %i.huk
  store i8 0, ptr %i.hum, align 1, !tbaa !102
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  invoke void @_ZN9benchmark8internal9BenchmarkC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(232) %i.huh, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.aio unwind label %bb.aiq

bb.aio:                                           ; preds = %.noexc.i2758
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN9benchmark8internal17FunctionBenchmarkE, i64 16), ptr %i.huh, align 8, !tbaa !104
  %i.hun = getelementptr inbounds nuw i8, ptr %i.huh, i64 224
  store ptr @_Z39benchForIC4VW1BigLoopWithReductionTC128RN9benchmark5StateE, ptr %i.hun, align 8, !tbaa !106
  %i.huo = invoke noundef ptr @_ZN9benchmark8internal25RegisterBenchmarkInternalEPNS0_9BenchmarkE(ptr noundef nonnull %i.huh)
          to label %bb.aip unwind label %bb.aiq

bb.aip:                                           ; preds = %bb.aio
  %i.hup = load ptr, ptr %0, align 8, !tbaa !101  ; 2 uses
  %i.huq = icmp eq ptr %i.hup, %i.hui
  br i1 %i.huq, label %__cxx_global_var_init.615.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2762

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2762: ; preds = %bb.aip
  %i.hur = load i64, ptr %i.hui, align 8, !tbaa !102
  %i.hus = add i64 %i.hur, 1
  call void @_ZdlPvm(ptr noundef %i.hup, i64 noundef %i.hus) #12
  br label %__cxx_global_var_init.615.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.thread.i2755: ; preds = %__cxx_global_var_init.613.exit
  %i.hut = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br label %common.resume.sink.split

bb.aiq:                                           ; preds = %bb.aio, %.noexc.i2758
  %.0.i2759 = phi i1 [ false, %bb.aio ], [ true, %.noexc.i2758 ] ; 2 uses
  %i.huu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.huv = load ptr, ptr %0, align 8, !tbaa !101  ; 2 uses
  %i.huw = icmp eq ptr %i.huv, %i.hui
  br i1 %i.huw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2761, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2760

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i2760: ; preds = %bb.aiq
  %i.hux = load i64, ptr %i.hui, align 8, !tbaa !102
  %i.huy = add i64 %i.hux, 1
  call void @_ZdlPvm(ptr noundef %i.huv, i64 noundef %i.huy) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br i1 %.0.i2759, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i2761: ; preds = %bb.aiq
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  br i1 %.0.i2759, label %common.resume.sink.split, label %common.resume

__cxx_global_var_init.615.exit:                   ; preds = %bb.aip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i2762
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #10
  store ptr %i.huo, ptr @_ZL29benchmark_uniq_309_benchmark_, align 8, !tbaa !133
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v2i32(<2 x i32>) #9

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { builtin allocsize(0) }
attributes #12 = { builtin nounwind }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !12, i64 28}
!9 = !{!"_ZTSN9benchmark5StateE", !10, i64 0, !10, i64 8, !10, i64 16, !11, i64 24, !11, i64 25, !12, i64 28, !13, i64 32, !10, i64 56, !19, i64 64, !28, i64 112, !5, i64 144, !5, i64 148, !31, i64 152, !32, i64 160, !33, i64 168, !34, i64 176}
!10 = !{!"long", !6, i64 0}
!11 = !{!"bool", !6, i64 0}
!12 = !{!"_ZTSN9benchmark8internal7SkippedE", !6, i64 0}
!13 = !{!"_ZTSSt6vectorIlSaIlEE", !14, i64 0}
!14 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !15, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !16, i64 0}
!16 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !17, i64 0, !17, i64 8, !17, i64 16}
!17 = !{!"p1 long", !18, i64 0}
!18 = !{!"any pointer", !6, i64 0}
!19 = !{!"_ZTSSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN9benchmark7CounterESt4lessIS5_ESaISt4pairIKS5_S7_EEE", !20, i64 0}
!20 = !{!"_ZTSSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE", !21, i64 0}
!21 = !{!"_ZTSNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N9benchmark7CounterEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE13_Rb_tree_implISE_Lb1EEE", !22, i64 0, !24, i64 8}
!22 = !{!"_ZTSSt20_Rb_tree_key_compareISt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE", !23, i64 0}
!23 = !{!"_ZTSSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE"}
!24 = !{!"_ZTSSt15_Rb_tree_header", !25, i64 0, !10, i64 32}
!25 = !{!"_ZTSSt18_Rb_tree_node_base", !26, i64 0, !27, i64 8, !27, i64 16, !27, i64 24}
!26 = !{!"_ZTSSt14_Rb_tree_color", !6, i64 0}
!27 = !{!"p1 _ZTSSt18_Rb_tree_node_base", !18, i64 0}
!28 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !29, i64 0, !10, i64 8, !6, i64 16}
!29 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!30 = !{!"p1 omnipotent char", !18, i64 0}
!31 = !{!"p1 _ZTSN9benchmark8internal11ThreadTimerE", !18, i64 0}
!32 = !{!"p1 _ZTSN9benchmark8internal13ThreadManagerE", !18, i64 0}
!33 = !{!"p1 _ZTSN9benchmark8internal23PerfCountersMeasurementE", !18, i64 0}
!34 = !{!"p1 _ZTSN9benchmark15ProfilerManagerE", !18, i64 0}
!35 = !{!"branch_weights", i32 1, i32 127}
!36 = !{i64 4459083}
!37 = distinct !{null}
!38 = !{!"branch_weights", i32 127, i32 255873}
!39 = distinct !{!39, !40, !41, !42, !43}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"llvm.loop.isvectorized", i32 1}
!43 = !{!"llvm.loop.unroll.runtime.disable"}
!44 = distinct !{!44, !40, !41, !42}
!45 = distinct !{!45, !40, !42, !43}
!46 = distinct !{!46, !40, !43, !42}
!47 = distinct !{!47, !40, !42, !43}
!48 = distinct !{!48, !40, !43, !42}
!49 = distinct !{!49, !40, !42, !43}
!50 = distinct !{!50, !40, !43, !42}
!51 = distinct !{!51, !40, !41, !42, !43}
!52 = distinct !{!52, !40, !41, !42}
!53 = distinct !{!53, !40, !42, !43}
!54 = distinct !{!54, !40, !43, !42}
!55 = distinct !{!55, !40, !42, !43}
!56 = distinct !{!56, !40, !43, !42}
!57 = distinct !{!57, !40, !42, !43}
!58 = distinct !{!58, !40, !43, !42}
!59 = distinct !{!59, !41}
!60 = distinct !{!60, !40, !61, !62, !63}
!61 = !{!"llvm.loop.vectorize.width", i32 1}
!62 = !{!"llvm.loop.vectorize.scalable.enable", i1 false}
!63 = !{!"llvm.loop.interleave.count", i32 1}
!64 = distinct !{!64, !40, !42, !43}
!65 = distinct !{!65, !41}
!66 = distinct !{!66, !40, !42}
!67 = distinct !{!67, !40, !42, !43}
!68 = distinct !{!68, !41}
!69 = distinct !{!69, !40, !42}
!70 = distinct !{!70, !40, !42, !43}
!71 = distinct !{!71, !40, !43, !42}
!72 = distinct !{!72, !40, !42, !43}
!73 = distinct !{!73, !40, !43, !42}
!74 = distinct !{!74, !40, !42, !43}
!75 = distinct !{!75, !40, !43, !42}
!76 = distinct !{!76, !40, !41, !42, !43}
!77 = distinct !{!77, !40, !41, !42}
!78 = distinct !{!78, !40, !42, !43}
!79 = distinct !{!79, !40, !43, !42}
!80 = distinct !{!80, !40, !42, !43}
!81 = distinct !{!81, !40, !43, !42}
!82 = distinct !{!82, !40, !42, !43}
!83 = distinct !{!83, !40, !43, !42}
!84 = distinct !{!84, !40, !61, !62, !63}
!85 = distinct !{!85, !40, !42, !43}
!86 = distinct !{!86, !40, !42}
!87 = distinct !{!87, !40, !42, !43}
!88 = distinct !{!88, !40, !42}
!89 = !{!90, !5, i64 0}
!90 = !{!"_ZTSNSt24uniform_int_distributionIiE10param_typeE", !5, i64 0, !5, i64 4}
!91 = !{!90, !5, i64 4}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !40}
!94 = distinct !{!94, !40}
!95 = !{!96, !10, i64 4992}
!96 = !{!"_ZTSSt23mersenne_twister_engineImLm32ELm624ELm397ELm31ELm2567483615ELm11ELm4294967295ELm7ELm2636928640ELm15ELm4022730752ELm18ELm1812433253EE", !6, i64 0, !10, i64 4992}
!97 = !{!10, !10, i64 0}
!98 = distinct !{!98, !40, !42, !43}
!99 = distinct !{!99, !40, !42, !43}
!100 = !{!29, !30, i64 0}
!101 = !{!28, !30, i64 0}
!102 = !{!6, !6, i64 0}
!103 = !{!28, !10, i64 8}
!104 = !{!105, !105, i64 0}
!105 = !{!"vtable pointer", !7, i64 0}
!106 = !{!107, !18, i64 224}
!107 = !{!"_ZTSN9benchmark8internal17FunctionBenchmarkE", !108, i64 0, !18, i64 224}
!108 = !{!"_ZTSN9benchmark8internal9BenchmarkE", !28, i64 8, !109, i64 40, !110, i64 48, !115, i64 72, !120, i64 96, !11, i64 100, !5, i64 104, !121, i64 112, !121, i64 120, !10, i64 128, !5, i64 136, !11, i64 140, !11, i64 141, !11, i64 142, !122, i64 144, !18, i64 152, !123, i64 160, !128, i64 184, !18, i64 208, !18, i64 216}
!109 = !{!"_ZTSN9benchmark8internal21AggregationReportModeE", !6, i64 0}
!110 = !{!"_ZTSSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !111, i64 0}
!111 = !{!"_ZTSSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE", !112, i64 0}
!112 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implE", !113, i64 0}
!113 = !{!"_ZTSNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataE", !114, i64 0, !114, i64 8, !114, i64 16}
!114 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !18, i64 0}
!115 = !{!"_ZTSSt6vectorIS_IlSaIlEESaIS1_EE", !116, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE", !117, i64 0}
!117 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE12_Vector_implE", !118, i64 0}
!118 = !{!"_ZTSNSt12_Vector_baseISt6vectorIlSaIlEESaIS2_EE17_Vector_impl_dataE", !119, i64 0, !119, i64 8, !119, i64 16}
!119 = !{!"p1 _ZTSSt6vectorIlSaIlEE", !18, i64 0}
!120 = !{!"_ZTSN9benchmark8TimeUnitE", !6, i64 0}
!121 = !{!"double", !6, i64 0}
!122 = !{!"_ZTSN9benchmark4BigOE", !6, i64 0}
!123 = !{!"_ZTSSt6vectorIN9benchmark8internal10StatisticsESaIS2_EE", !124, i64 0}
!124 = !{!"_ZTSSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE", !125, i64 0}
!125 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE12_Vector_implE", !126, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN9benchmark8internal10StatisticsESaIS2_EE17_Vector_impl_dataE", !127, i64 0, !127, i64 8, !127, i64 16}
!127 = !{!"p1 _ZTSN9benchmark8internal10StatisticsE", !18, i64 0}
!128 = !{!"_ZTSSt6vectorIiSaIiEE", !129, i64 0}
!129 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !130, i64 0}
!130 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !131, i64 0}
!131 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !132, i64 0, !132, i64 8, !132, i64 16}
!132 = !{!"p1 int", !18, i64 0}
!133 = !{!134, !134, i64 0}
!134 = !{!"p1 _ZTSN9benchmark8internal9BenchmarkE", !18, i64 0}
end_hunk_2
