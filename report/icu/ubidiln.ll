Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/icu/original/ubidiln?download=true
inline.NumInlined: 22
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@ubidi_getVisualMap_78:bb.a
    i16 8234, label %bb.y
  ]

bb.x:                                             ; preds = %switch.early.test.us.1
  %i.iw = add nsw i32 %.3.us, 1
  %i.ix = sext i32 %.3.us to i64
  %i.iy = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ix
  %i.iz = trunc nsw i64 %i.ir to i32
  store i32 %i.iz, ptr %i.iy, align 4, !tbaa !46
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %switch.early.test.us.1, %.lr.ph178.split.us.1
  %.3.us.1 = phi i32 [ %.3.us, %switch.early.test.us.1 ], [ %i.iw, %bb.x ], [ %.3.us, %.lr.ph178.split.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ], [ %.3.us, %switch.early.test.us.1 ] ; 3 uses
  %indvars.iv.next224.1 = add nuw nsw i64 %indvars.iv223, 2 ; 2 uses
  %niter360.next.1 = add i64 %niter360, 2         ; 2 uses
  %niter360.ncmp.1 = icmp eq i64 %niter360.next.1, %unroll_iter359
  br i1 %niter360.ncmp.1, label %.loopexit162.loopexit345.unr-lcssa, label %.lr.ph178.split.us, !llvm.loop !134

.lr.ph178.split:                                  ; preds = %bb.ab, %.lr.ph178.split.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph178.split.preheader.new ], [ %indvars.iv.next.1, %bb.ab ] ; 3 uses
  %.2176 = phi i32 [ %.0185, %.lr.ph178.split.preheader.new ], [ %.3.1, %bb.ab ] ; 12 uses
  %niter = phi i64 [ 0, %.lr.ph178.split.preheader.new ], [ %niter.next.1, %bb.ab ]
  %i.ja = add nuw nsw i64 %indvars.iv, %i.ic      ; 2 uses
  %i.jb = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.ja
  %i.jc = load i16, ptr %i.jb, align 2, !tbaa !39
  %.fr161 = freeze i16 %i.jc                      ; 2 uses
  %i.jd = and i16 %.fr161, -4
  %i.je = icmp eq i16 %i.jd, 8204
  br i1 %i.je, label %.lr.ph178.split.1, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph178.split
  switch i16 %.fr161, label %bb.z [
    i16 8297, label %.lr.ph178.split.1
    i16 8296, label %.lr.ph178.split.1
    i16 8295, label %.lr.ph178.split.1
    i16 8294, label %.lr.ph178.split.1
    i16 8238, label %.lr.ph178.split.1
    i16 8237, label %.lr.ph178.split.1
    i16 8236, label %.lr.ph178.split.1
    i16 8235, label %.lr.ph178.split.1
    i16 8234, label %.lr.ph178.split.1
  ]

bb.z:                                             ; preds = %switch.early.test
  %i.jf = add nsw i32 %.2176, 1
  %i.jg = sext i32 %.2176 to i64
  %i.jh = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jg
  %i.ji = trunc nuw nsw i64 %i.ja to i32
  store i32 %i.ji, ptr %i.jh, align 4, !tbaa !46
  br label %.lr.ph178.split.1

.lr.ph178.split.1:                                ; preds = %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %switch.early.test, %.lr.ph178.split, %bb.z
  %.3 = phi i32 [ %.2176, %switch.early.test ], [ %i.jf, %bb.z ], [ %.2176, %.lr.ph178.split ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ], [ %.2176, %switch.early.test ] ; 12 uses
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.jj = add nuw nsw i64 %indvars.iv.next, %i.ic ; 2 uses
  %i.jk = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.jj
  %i.jl = load i16, ptr %i.jk, align 2, !tbaa !39
  %.fr161.1 = freeze i16 %i.jl                    ; 2 uses
  %i.jm = and i16 %.fr161.1, -4
  %i.jn = icmp eq i16 %i.jm, 8204
  br i1 %i.jn, label %bb.ab, label %switch.early.test.1

switch.early.test.1:                              ; preds = %.lr.ph178.split.1
  switch i16 %.fr161.1, label %bb.aa [
    i16 8297, label %bb.ab
    i16 8296, label %bb.ab
    i16 8295, label %bb.ab
    i16 8294, label %bb.ab
    i16 8238, label %bb.ab
    i16 8237, label %bb.ab
    i16 8236, label %bb.ab
    i16 8235, label %bb.ab
    i16 8234, label %bb.ab
  ]

bb.aa:                                            ; preds = %switch.early.test.1
  %i.jo = add nsw i32 %.3, 1
  %i.jp = sext i32 %.3 to i64
  %i.jq = getelementptr inbounds [4 x i8], ptr %1, i64 %i.jp
  %i.jr = trunc nuw nsw i64 %i.jj to i32
  store i32 %i.jr, ptr %i.jq, align 4, !tbaa !46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %.lr.ph178.split.1
  %.3.1 = phi i32 [ %.3, %switch.early.test.1 ], [ %i.jo, %bb.aa ], [ %.3, %.lr.ph178.split.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ], [ %.3, %switch.early.test.1 ] ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit162.loopexit346.unr-lcssa, label %.lr.ph178.split, !llvm.loop !134

.loopexit162.loopexit:                            ; preds = %.lr.ph181.prol.loopexit, %.lr.ph181, %middle.block311
  %indvars.iv.next230.lcssa = phi i64 [ %i.gu, %middle.block311 ], [ %indvars.iv.next230.lcssa348.unr, %.lr.ph181.prol.loopexit ], [ %indvars.iv.next230.3, %.lr.ph181 ]
  %i.js = trunc nsw i64 %indvars.iv.next230.lcssa to i32
  br label %.loopexit162

.loopexit162.loopexit345.unr-lcssa:               ; preds = %bb.y
  %lcmp.mod356.not = icmp eq i64 %xtraiter355, 0
  br i1 %lcmp.mod356.not, label %.loopexit162, label %.lr.ph178.split.us.epil.preheader

.lr.ph178.split.us.epil.preheader:                ; preds = %.loopexit162.loopexit345.unr-lcssa, %.lr.ph178.split.us.preheader
  %indvars.iv223.epil.init = phi i64 [ 0, %.lr.ph178.split.us.preheader ], [ %indvars.iv.next224.1, %.loopexit162.loopexit345.unr-lcssa ]
  %.2176.us.epil.init = phi i32 [ %.0185, %.lr.ph178.split.us.preheader ], [ %.3.us.1, %.loopexit162.loopexit345.unr-lcssa ] ; 12 uses
  %lcmp.mod358 = trunc i32 %i.gg to i1
  tail call void @llvm.assume(i1 %lcmp.mod358)
  %i.jt = xor i64 %indvars.iv223.epil.init, -1
  %i.ju = add nsw i64 %i.ie, %i.jt                ; 2 uses
  %i.jv = getelementptr inbounds [2 x i8], ptr %i.ib, i64 %i.ju
  %i.jw = load i16, ptr %i.jv, align 2, !tbaa !39
  %.fr161.us.epil = freeze i16 %i.jw              ; 2 uses
  %i.jx = and i16 %.fr161.us.epil, -4
  %i.jy = icmp eq i16 %i.jx, 8204
  br i1 %i.jy, label %.loopexit162, label %switch.early.test.us.epil

switch.early.test.us.epil:                        ; preds = %.lr.ph178.split.us.epil.preheader
  switch i16 %.fr161.us.epil, label %bb.ac [
    i16 8297, label %.loopexit162
    i16 8296, label %.loopexit162
    i16 8295, label %.loopexit162
    i16 8294, label %.loopexit162
    i16 8238, label %.loopexit162
    i16 8237, label %.loopexit162
    i16 8236, label %.loopexit162
    i16 8235, label %.loopexit162
    i16 8234, label %.loopexit162
  ]

bb.ac:                                            ; preds = %switch.early.test.us.epil
  %i.jz = add nsw i32 %.2176.us.epil.init, 1
  %i.ka = sext i32 %.2176.us.epil.init to i64
  %i.kb = getelementptr inbounds [4 x i8], ptr %1, i64 %i.ka
  %i.kc = trunc nsw i64 %i.ju to i32
  store i32 %i.kc, ptr %i.kb, align 4, !tbaa !46
  br label %.loopexit162

.loopexit162.loopexit346.unr-lcssa:               ; preds = %bb.ab
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit162, label %.lr.ph178.split.epil.preheader

.lr.ph178.split.epil.preheader:                   ; preds = %.loopexit162.loopexit346.unr-lcssa, %.lr.ph178.split.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph178.split.preheader ], [ %indvars.iv.next.1, %.loopexit162.loopexit346.unr-lcssa ]
  %.2176.epil.init = phi i32 [ %.0185, %.lr.ph178.split.preheader ], [ %.3.1, %.loopexit162.loopexit346.unr-lcssa ] ; 12 uses
  %lcmp.mod354 = trunc i32 %i.gg to i1
  tail call void @llvm.assume(i1 %lcmp.mod354)
  %i.kd = add nuw nsw i64 %indvars.iv.epil.init, %i.ic ; 2 uses
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %i.ib, i64 %i.kd
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !39
  %.fr161.epil = freeze i16 %i.kf                 ; 2 uses
  %i.kg = and i16 %.fr161.epil, -4
  %i.kh = icmp eq i16 %i.kg, 8204
  br i1 %i.kh, label %.loopexit162, label %switch.early.test.epil

switch.early.test.epil:                           ; preds = %.lr.ph178.split.epil.preheader
  switch i16 %.fr161.epil, label %bb.ad [
    i16 8297, label %.loopexit162
    i16 8296, label %.loopexit162
    i16 8295, label %.loopexit162
    i16 8294, label %.loopexit162
    i16 8238, label %.loopexit162
    i16 8237, label %.loopexit162
    i16 8236, label %.loopexit162
    i16 8235, label %.loopexit162
    i16 8234, label %.loopexit162
  ]

bb.ad:                                            ; preds = %switch.early.test.epil
  %i.ki = add nsw i32 %.2176.epil.init, 1
  %i.kj = sext i32 %.2176.epil.init to i64
  %i.kk = getelementptr inbounds [4 x i8], ptr %1, i64 %i.kj
  %i.kl = trunc nuw nsw i64 %i.kd to i32
  store i32 %i.kl, ptr %i.kk, align 4, !tbaa !46
  br label %.loopexit162

.loopexit162:                                     ; preds = %.loopexit162.loopexit346.unr-lcssa, %bb.ad, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %.lr.ph178.split.epil.preheader, %.loopexit162.loopexit345.unr-lcssa, %bb.ac, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %switch.early.test.us.epil, %.lr.ph178.split.us.epil.preheader, %.loopexit162.loopexit, %bb.v, %.preheader, %bb.t
  %.4 = phi i32 [ %i.gl, %bb.t ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.0185, %.preheader ], [ %.0185, %bb.v ], [ %i.js, %.loopexit162.loopexit ], [ %.3.us.1, %.loopexit162.loopexit345.unr-lcssa ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %i.jz, %bb.ac ], [ %.2176.us.epil.init, %.lr.ph178.split.us.epil.preheader ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.2176.us.epil.init, %switch.early.test.us.epil ], [ %.3.1, %.loopexit162.loopexit346.unr-lcssa ], [ %.2176.epil.init, %switch.early.test.epil ], [ %i.ki, %bb.ad ], [ %.2176.epil.init, %.lr.ph178.split.epil.preheader ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ], [ %.2176.epil.init, %switch.early.test.epil ]
  %indvars.iv.next239 = add nuw nsw i64 %indvars.iv238, 1 ; 2 uses
  %exitcond242.not = icmp eq i64 %indvars.iv.next239, %wide.trip.count241
  br i1 %exitcond242.not, label %.loopexit, label %bb.s, !llvm.loop !135

.loopexit.sink.split:                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.sink = phi i32 [ 1, %bb.c ], [ 27, %bb.d ], [ 27, %bb.f ], [ 27, %bb.g ]
  store i32 %.sink, ptr %2, align 4, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit162, %bb.p, %.loopexit.sink.split, %bb.j, %bb.r, %._crit_edge192, %bb.h, %bb.q, %bb.a, %bb.b, %ubidi_countRuns_78.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ubidi_invertMap_78(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  %i.c = icmp sgt i32 %2, 0
  %or.cond3 = and i1 %or.cond, %i.c
  br i1 %or.cond3, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.d = zext nneg i32 %2 to i64
  %.idx = shl nuw nsw i64 %i.d, 2
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %.idx ; 3 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.041 = phi i32 [ %.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %.02740 = phi i32 [ %spec.select, %.lr.ph ], [ -1, %.lr.ph.preheader ]
  %.02939 = phi ptr [ %i.f, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.f = getelementptr inbounds i8, ptr %.02939, i64 -4 ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !46   ; 2 uses
  %spec.select = tail call i32 @llvm.smax.i32(i32 %i.g, i32 %.02740) ; 3 uses
  %i.h = icmp sgt i32 %i.g, -1
  %i.i = zext i1 %i.h to i32
  %.1 = add nuw nsw i32 %.041, %i.i               ; 2 uses
  %i.j = icmp ugt ptr %i.f, %0
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !136

._crit_edge:                                      ; preds = %.lr.ph
  %.not = icmp sgt i32 %.1, %spec.select
  br i1 %.not, label %.lr.ph46.preheader, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.k = add nsw i32 %spec.select, 1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %1, i8 -1, i64 %i.m, i1 false)
  br label %.lr.ph46.preheader

.lr.ph46.preheader:                               ; preds = %._crit_edge, %bb.b
  %xtraiter = and i32 %2, 1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph46.prol.loopexit, label %.lr.ph46.prol

.lr.ph46.prol:                                    ; preds = %.lr.ph46.preheader
  %3 = getelementptr inbounds i8, ptr %i.e, i64 -4 ; 3 uses
  %4 = load i32, ptr %3, align 4, !tbaa !46       ; 2 uses
  %5 = icmp sgt i32 %4, -1
  %6 = add nsw i32 %2, -1                         ; 3 uses
  br i1 %5, label %.lr.ph46.preheader.a, label %.lr.ph46.prol.loopexit

.lr.ph46.preheader.a:                             ; preds = %.lr.ph46.prol
  %7 = zext nneg i32 %4 to i64
  %8 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %7
  store i32 %6, ptr %8, align 4, !tbaa !46
  br label %.lr.ph46.prol.loopexit

.lr.ph46.prol.loopexit:                           ; preds = %.lr.ph46.prol, %.lr.ph46.preheader.a, %.lr.ph46.preheader
  %.13044.unr = phi ptr [ %i.e, %.lr.ph46.preheader ], [ %3, %.lr.ph46.preheader.a ], [ %3, %.lr.ph46.prol ]
  %.03143.unr = phi i32 [ %2, %.lr.ph46.preheader ], [ %6, %.lr.ph46.preheader.a ], [ %6, %.lr.ph46.prol ]
  %9 = icmp eq i32 %2, 1
  br i1 %9, label %.loopexit, label %.lr.ph46

.lr.ph46:                                         ; preds = %.lr.ph46.prol.loopexit, %bb.d
  %.13044 = phi ptr [ %14, %bb.d ], [ %.13044.unr, %.lr.ph46.prol.loopexit ] ; 2 uses
  %.03143 = phi i32 [ %17, %bb.d ], [ %.03143.unr, %.lr.ph46.prol.loopexit ] ; 3 uses
  %i.n = getelementptr inbounds i8, ptr %.13044, i64 -4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !46   ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %10, label %.lr.ph46.1

10:                                               ; preds = %.lr.ph46
  %11 = add nsw i32 %.03143, -1
  %12 = zext nneg i32 %i.o to i64
  %13 = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %12
  store i32 %11, ptr %13, align 4, !tbaa !46
  br label %.lr.ph46.1

.lr.ph46.1:                                       ; preds = %.lr.ph46, %10
  %14 = getelementptr inbounds i8, ptr %.13044, i64 -8 ; 2 uses
  %15 = load i32, ptr %14, align 4, !tbaa !46     ; 2 uses
  %16 = icmp sgt i32 %15, -1
  %17 = add nsw i32 %.03143, -2                   ; 2 uses
  br i1 %16, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph46.1
  %i.q = zext nneg i32 %15 to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.q
  store i32 %17, ptr %i.r, align 4, !tbaa !46
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph46.1
  %i.s = icmp sgt i32 %.03143, 2
  br i1 %i.s, label %.lr.ph46, label %.loopexit, !llvm.loop !137

.loopexit:                                        ; preds = %.lr.ph46.prol.loopexit, %bb.d, %bb.a
  ret void
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umax.i8(i8, i8) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !40}
!1 = distinct !{!1, !40}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"_ZTS10UErrorCode", !6, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!"p1 _ZTS5UBiDi", !12, i64 0}
!14 = !{!"p1 char16_t", !12, i64 0}
!15 = !{!"p1 omnipotent char", !12, i64 0}
!16 = !{!"p1 _ZTS7Opening", !12, i64 0}
!17 = !{!"p1 _ZTS4Para", !12, i64 0}
!18 = !{!"p1 _ZTS3Run", !12, i64 0}
!19 = !{!"p1 _ZTS7Isolate", !12, i64 0}
!20 = !{!"_ZTS19UBiDiReorderingMode", !6, i64 0}
!21 = !{!"p1 _ZTS10ImpTabPair", !12, i64 0}
!22 = !{!"_ZTS14UBiDiDirection", !6, i64 0}
!23 = !{!"p1 _ZTS5Point", !12, i64 0}
!24 = !{!"_ZTS12InsertPoints", !7, i64 0, !7, i64 4, !7, i64 8, !10, i64 12, !23, i64 16}
!25 = !{!"_ZTS5UBiDi", !13, i64 0, !14, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !15, i64 56, !15, i64 64, !16, i64 72, !17, i64 80, !18, i64 88, !19, i64 96, !6, i64 104, !6, i64 105, !15, i64 112, !15, i64 120, !6, i64 128, !20, i64 132, !7, i64 136, !6, i64 140, !6, i64 141, !6, i64 142, !14, i64 144, !7, i64 152, !14, i64 160, !7, i64 168, !21, i64 176, !22, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !17, i64 208, !6, i64 216, !7, i64 296, !18, i64 304, !6, i64 312, !7, i64 324, !19, i64 328, !6, i64 336, !24, i64 416, !7, i64 440, !12, i64 448, !12, i64 456}
!26 = !{!25, !13, i64 0}
!27 = !{!25, !7, i64 20}
!28 = !{!25, !14, i64 8}
!29 = !{!25, !7, i64 24}
!30 = !{!25, !6, i64 142}
!31 = !{!25, !17, i64 208}
!32 = !{!"_ZTS4Para", !7, i64 0, !7, i64 4}
!33 = !{!32, !7, i64 0}
!34 = !{!25, !6, i64 141}
!35 = !{!25, !18, i64 304}
!36 = !{!6, !6, i64 0}
!37 = !{!25, !7, i64 440}
!38 = !{!"char16_t", !6, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!25, !15, i64 112}
!42 = !{!25, !15, i64 120}
!43 = !{!25, !7, i64 296}
!44 = !{!25, !22, i64 184}
!45 = !{!25, !7, i64 196}
!46 = !{!7, !7, i64 0}
!47 = !{!"_ZTS3Run", !7, i64 0, !7, i64 4, !7, i64 8}
!48 = !{!47, !7, i64 0}
!49 = !{!47, !7, i64 4}
!50 = !{!47, !7, i64 8}
!51 = !{!"llvm.loop.isvectorized", i32 1}
!52 = !{!"llvm.loop.unroll.runtime.disable"}
!53 = !{!25, !7, i64 420}
!54 = !{!"llvm.loop.unroll.disable"}
!55 = distinct !{!55, !40}
!56 = distinct !{!56, !40}
!57 = !{!25, !7, i64 16}
!58 = !{!25, !7, i64 200}
!59 = !{!25, !7, i64 188}
!60 = distinct !{!60, !40}
!61 = distinct !{!61, !40}
!62 = !{!25, !6, i64 104}
!63 = !{!25, !15, i64 64}
!64 = distinct !{!64, !40}
!65 = !{!25, !20, i64 132}
!66 = distinct !{!66, !40, !51, !52}
!67 = distinct !{!67, !40, !52, !51}
!68 = distinct !{!68, !40}
!69 = distinct !{!69, !40}
!70 = distinct !{!70, !40}
!71 = distinct !{!71, !40}
!72 = distinct !{!72, !40}
!73 = distinct !{!73, !40}
!74 = distinct !{!74, !40}
!75 = distinct !{!75, !40}
!76 = distinct !{!76, !40}
!77 = distinct !{!77, !40}
!78 = distinct !{!78, !40}
!79 = !{!25, !6, i64 105}
!80 = !{!25, !18, i64 88}
!81 = !{i64 0, i64 4, !46, i64 4, i64 4, !46, i64 8, i64 4, !46}
!82 = !{!25, !23, i64 432}
!83 = !{!"_ZTS5Point", !7, i64 0, !7, i64 4}
!84 = !{!83, !7, i64 0}
!85 = !{!83, !7, i64 4}
!86 = distinct !{!86, !54}
!87 = distinct !{!87, !40}
!88 = distinct !{!88, !40}
!89 = distinct !{!89, !40, !51, !52}
!90 = distinct !{!90, !40, !52, !51}
!91 = distinct !{!91, !40}
!92 = distinct !{!92, !40}
!93 = distinct !{!93, !54}
!94 = distinct !{!94, !40}
!95 = distinct !{!95, !40}
!96 = distinct !{!96, !40}
!97 = distinct !{!97, !40}
!98 = distinct !{!98, !40}
!99 = distinct !{!99, !40}
!100 = distinct !{!100, !40}
!101 = distinct !{!101, !40}
!102 = distinct !{!102, !40, !51, !52}
!103 = distinct !{!103, !40, !52, !51}
!104 = distinct !{!104, !40}
!105 = distinct !{!105, !40}
!106 = distinct !{!106, !40}
!107 = distinct !{!107, !40}
!108 = distinct !{!108, !40}
!109 = distinct !{!109, !40, !51, !52}
!110 = distinct !{!110, !40, !52, !51}
!111 = distinct !{!111, !40, !51, !52}
!112 = distinct !{!112, !40, !52, !51}
!113 = distinct !{!113, !40}
!114 = distinct !{!114, !40, !51, !52}
!115 = distinct !{!115, !40, !52, !51}
!116 = distinct !{!116, !40}
!117 = distinct !{!117, !40}
!118 = distinct !{!118, !40, !51, !52}
!119 = distinct !{!119, !40, !52, !51}
!120 = distinct !{!120, !40}
!121 = distinct !{!121, !40, !51, !52}
!122 = distinct !{!122, !40, !52, !51}
!123 = distinct !{!123, !40, !51, !52}
!124 = distinct !{!124, !40, !52, !51}
!125 = distinct !{!125, !40}
!126 = distinct !{!126, !40, !51, !52}
!127 = distinct !{!127, !40, !52, !51}
!128 = distinct !{!128, !40, !51, !52}
!129 = distinct !{!129, !40, !51}
!130 = distinct !{!130, !40}
!131 = distinct !{!131, !40, !51, !52}
!132 = distinct !{!132, !54}
!133 = distinct !{!133, !40, !51}
!134 = distinct !{!134, !40}
!135 = distinct !{!135, !40}
!136 = distinct !{!136, !40}
!137 = distinct !{!137, !40}
end_hunk_0
