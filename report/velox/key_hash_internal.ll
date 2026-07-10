inline.NumInlined: 356
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN5arrow7compute9Hashing327HashIntEbjmPKhPj:bb.a
  br i1 %exitcond.not.i69, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i66, !llvm.loop !50

bb.m:                                             ; preds = %bb.k
  br i1 %.not.i63, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.preheader.i71

.lr.ph.preheader.i71:                             ; preds = %bb.m
  %wide.trip.count.i72 = zext i32 %1 to i64       ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i72, 3     ; 3 uses
  %i.iy = icmp ult i32 %1, 4
  br i1 %i.iy, label %.lr.ph.i73.epil.preheader, label %.lr.ph.preheader.i71.new

.lr.ph.preheader.i71.new:                         ; preds = %.lr.ph.preheader.i71
  %unroll_iter = and i64 %wide.trip.count.i72, 4294967292
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.lr.ph.preheader.i71.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.preheader.i71.new ], [ %indvars.iv.next.i75.3, %.lr.ph.i73 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i71.new ], [ %niter.next.3, %.lr.ph.i73 ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74
  %i.ja = load i64, ptr %i.iz, align 8, !tbaa !15
  %i.jb = mul i64 %i.ja, -7046029288634856825
  %i.jc = tail call i64 @llvm.bswap.i64(i64 %i.jb)
  %i.jd = trunc i64 %i.jc to i32
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i74
  store i32 %i.jd, ptr %i.je, align 4, !tbaa !3
  %indvars.iv.next.i75 = or disjoint i64 %indvars.iv.i74, 1 ; 2 uses
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75
  %i.jg = load i64, ptr %i.jf, align 8, !tbaa !15
  %i.jh = mul i64 %i.jg, -7046029288634856825
  %i.ji = tail call i64 @llvm.bswap.i64(i64 %i.jh)
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i75
  store i32 %i.jj, ptr %i.jk, align 4, !tbaa !3
  %indvars.iv.next.i75.1 = or disjoint i64 %indvars.iv.i74, 2 ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75.1
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !15
  %i.jn = mul i64 %i.jm, -7046029288634856825
  %i.jo = tail call i64 @llvm.bswap.i64(i64 %i.jn)
  %i.jp = trunc i64 %i.jo to i32
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i75.1
  store i32 %i.jp, ptr %i.jq, align 4, !tbaa !3
  %indvars.iv.next.i75.2 = or disjoint i64 %indvars.iv.i74, 3 ; 2 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75.2
  %i.js = load i64, ptr %i.jr, align 8, !tbaa !15
  %i.jt = mul i64 %i.js, -7046029288634856825
  %i.ju = tail call i64 @llvm.bswap.i64(i64 %i.jt)
  %i.jv = trunc i64 %i.ju to i32
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.next.i75.2
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !3
  %indvars.iv.next.i75.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa, label %.lr.ph.i73, !llvm.loop !51

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit152.unr-lcssa: ; preds = %.lr.ph.i31
  %lcmp.mod176.not = icmp eq i64 %xtraiter174, 0
  br i1 %lcmp.mod176.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i31.epil.preheader

.lr.ph.i31.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit152.unr-lcssa, %.lr.ph.preheader.i29
  %indvars.iv.i32.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %indvars.iv.next.i33.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit152.unr-lcssa ]
  %lcmp.mod177 = icmp ne i64 %xtraiter174, 0
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %.lr.ph.i31.epil

.lr.ph.i31.epil:                                  ; preds = %.lr.ph.i31.epil, %.lr.ph.i31.epil.preheader
  %indvars.iv.i32.epil = phi i64 [ %indvars.iv.i32.epil.init, %.lr.ph.i31.epil.preheader ], [ %indvars.iv.next.i33.epil, %.lr.ph.i31.epil ] ; 3 uses
  %epil.iter175 = phi i64 [ 0, %.lr.ph.i31.epil.preheader ], [ %epil.iter175.next, %.lr.ph.i31.epil ]
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i32.epil
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !23
  %i.jz = zext i8 %i.jy to i64
  %i.ka = mul i64 %i.jz, -7046029288634856825
  %i.kb = tail call i64 @llvm.bswap.i64(i64 %i.ka)
  %i.kc = trunc i64 %i.kb to i32
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i32.epil
  store i32 %i.kc, ptr %i.kd, align 4, !tbaa !3
  %indvars.iv.next.i33.epil = add nuw nsw i64 %indvars.iv.i32.epil, 1
  %epil.iter175.next = add i64 %epil.iter175, 1   ; 2 uses
  %epil.iter175.cmp.not = icmp eq i64 %epil.iter175.next, %xtraiter174
  br i1 %epil.iter175.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i31.epil, !llvm.loop !52

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa: ; preds = %.lr.ph.i45
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod170.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa, %.lr.ph.preheader.i43
  %indvars.iv.i46.epil.init = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa ]
  %lcmp.mod171 = icmp ne i64 %xtraiter168, 0
  tail call void @llvm.assume(i1 %lcmp.mod171)
  br label %.lr.ph.i45.epil

.lr.ph.i45.epil:                                  ; preds = %.lr.ph.i45.epil, %.lr.ph.i45.epil.preheader
  %indvars.iv.i46.epil = phi i64 [ %indvars.iv.i46.epil.init, %.lr.ph.i45.epil.preheader ], [ %indvars.iv.next.i47.epil, %.lr.ph.i45.epil ] ; 3 uses
  %epil.iter169 = phi i64 [ 0, %.lr.ph.i45.epil.preheader ], [ %epil.iter169.next, %.lr.ph.i45.epil ]
  %i.ke = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i46.epil
  %i.kf = load i16, ptr %i.ke, align 2, !tbaa !36
  %i.kg = zext i16 %i.kf to i64
  %i.kh = mul i64 %i.kg, -7046029288634856825
  %i.ki = tail call i64 @llvm.bswap.i64(i64 %i.kh)
  %i.kj = trunc i64 %i.ki to i32
  %i.kk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i46.epil
  store i32 %i.kj, ptr %i.kk, align 4, !tbaa !3
  %indvars.iv.next.i47.epil = add nuw nsw i64 %indvars.iv.i46.epil, 1
  %epil.iter169.next = add i64 %epil.iter169, 1   ; 2 uses
  %epil.iter169.cmp.not = icmp eq i64 %epil.iter169.next, %xtraiter168
  br i1 %epil.iter169.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i45.epil, !llvm.loop !54

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa: ; preds = %.lr.ph.i59
  %lcmp.mod162.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod162.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa, %.lr.ph.preheader.i57
  %indvars.iv.i60.epil.init = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa ]
  %lcmp.mod163 = icmp ne i64 %xtraiter160, 0
  tail call void @llvm.assume(i1 %lcmp.mod163)
  br label %.lr.ph.i59.epil

.lr.ph.i59.epil:                                  ; preds = %.lr.ph.i59.epil, %.lr.ph.i59.epil.preheader
  %indvars.iv.i60.epil = phi i64 [ %indvars.iv.i60.epil.init, %.lr.ph.i59.epil.preheader ], [ %indvars.iv.next.i61.epil, %.lr.ph.i59.epil ] ; 3 uses
  %epil.iter161 = phi i64 [ 0, %.lr.ph.i59.epil.preheader ], [ %epil.iter161.next, %.lr.ph.i59.epil ]
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i60.epil
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !3
  %i.kn = zext i32 %i.km to i64
  %i.ko = mul i64 %i.kn, -7046029288634856825
  %i.kp = tail call i64 @llvm.bswap.i64(i64 %i.ko)
  %i.kq = trunc i64 %i.kp to i32
  %i.kr = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i60.epil
  store i32 %i.kq, ptr %i.kr, align 4, !tbaa !3
  %indvars.iv.next.i61.epil = add nuw nsw i64 %indvars.iv.i60.epil, 1
  %epil.iter161.next = add i64 %epil.iter161, 1   ; 2 uses
  %epil.iter161.cmp.not = icmp eq i64 %epil.iter161.next, %xtraiter160
  br i1 %epil.iter161.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i59.epil, !llvm.loop !55

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa: ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa, %.lr.ph.preheader.i71
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.preheader.i71 ], [ %indvars.iv.next.i75.3, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa ]
  %lcmp.mod159 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod159)
  br label %.lr.ph.i73.epil

.lr.ph.i73.epil:                                  ; preds = %.lr.ph.i73.epil, %.lr.ph.i73.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.lr.ph.i73.epil.preheader ], [ %indvars.iv.next.i75.epil, %.lr.ph.i73.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i73.epil.preheader ], [ %epil.iter.next, %.lr.ph.i73.epil ]
  %i.ks = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74.epil
  %i.kt = load i64, ptr %i.ks, align 8, !tbaa !15
  %i.ku = mul i64 %i.kt, -7046029288634856825
  %i.kv = tail call i64 @llvm.bswap.i64(i64 %i.ku)
  %i.kw = trunc i64 %i.kv to i32
  %i.kx = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv.i74.epil
  store i32 %i.kw, ptr %i.kx, align 4, !tbaa !3
  %indvars.iv.next.i75.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit, label %.lr.ph.i73.epil, !llvm.loop !56

_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit: ; preds = %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit158.unr-lcssa, %.lr.ph.i73.epil, %.lr.ph.i66, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit156.unr-lcssa, %.lr.ph.i59.epil, %.lr.ph.i52.prol.loopexit, %.lr.ph.i52, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit154.unr-lcssa, %.lr.ph.i45.epil, %.lr.ph.i38, %_ZN5arrow7compute9Hashing3210HashIntImpILb1EhEEvjPKT0_Pj.exit.loopexit152.unr-lcssa, %.lr.ph.i31.epil, %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %middle.block117, %middle.block130, %middle.block149, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing329HashFixedElbjmPKhPjS4_(i64 noundef %0, i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %3)
  %i.b = icmp eq i64 %i.a, 1
  %i.c = icmp ult i64 %3, 9
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing327HashIntEbjmPKhPj(i1 noundef zeroext %1, i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb1EEEvjmPKhPj(i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb0EEEvjmPKhPj(i32 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb1EEEvjmPKhPj(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not97 = icmp eq i32 %0, 0
  br i1 %.not97, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %4 = sub nsw i64 %i.b, %indvars.iv
  %i.c = mul i64 %1, %4
  %i.d = icmp ult i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %.critedge.loopexit.split.loop.exit134

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !57

.critedge.loopexit.split.loop.exit134:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit134, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.critedge.loopexit.split.loop.exit134 ], [ 0, %bb.b ] ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = add nsw i64 %1, -1
  %i.h = sdiv i64 %i.g, 16
  %i.i = add nsw i64 %i.h, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.k = sub i64 0, %1
  %i.l = and i64 %i.k, 15
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.l ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.m, align 1  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.n, align 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.o, align 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.p, align 1 ; 2 uses
  %.not107 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.q = icmp sgt i64 %i.j, 1
  %i.r = add nsw i64 %i.j, -2
  %i.s = shl i64 %i.j, 4
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = icmp ult i32 %.0.lcssa, %0
  br i1 %i.t, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.u = icmp sgt i64 %i.j, 1
  %i.v = add nsw i64 %i.j, -2
  %i.w = shl i64 %i.j, 4
  %i.x = add i64 %i.w, -16                        ; 2 uses
  %i.y = sub i64 %1, %i.x
  %i.z = zext i32 %.0.lcssa to i64
  %wide.trip.count124 = zext i32 %0 to i64
  %.4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.12..12..12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph102, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit ] ; 3 uses
  %i.aa = mul i64 %1, %indvars.iv116
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i32 [ %i.ak, %.lr.ph.i ], [ 606290984, %bb.d ]
  %.02434.i = phi i32 [ %i.ao, %.lr.ph.i ], [ -2048144777, %bb.d ]
  %.02533.i = phi i32 [ %i.as, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i32 [ %i.aw, %.lr.ph.i ], [ 1640531535, %bb.d ]
  %.02731.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.ac = shl i64 %.02731.i, 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 4 uses
  %.0.copyload.i.i44 = load i32, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %.0.copyload.i28.i = load i32, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i29.i = load i32, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %.0.copyload.i30.i = load i32, ptr %i.ag, align 1
  %i.ah = mul i32 %.0.copyload.i.i44, -2048144777
  %i.ai = add i32 %i.ah, %.035.i                  ; 2 uses
  %i.aj = tail call i32 @llvm.fshl.i32(i32 %i.ai, i32 %i.ai, i32 13)
  %i.ak = mul i32 %i.aj, -1640531535              ; 2 uses
  %i.al = mul i32 %.0.copyload.i28.i, -2048144777
  %i.am = add i32 %i.al, %.02434.i                ; 2 uses
  %i.an = tail call i32 @llvm.fshl.i32(i32 %i.am, i32 %i.am, i32 13)
  %i.ao = mul i32 %i.an, -1640531535              ; 2 uses
  %i.ap = mul i32 %.0.copyload.i29.i, -2048144777
  %i.aq = add i32 %i.ap, %.02533.i                ; 2 uses
  %i.ar = tail call i32 @llvm.fshl.i32(i32 %i.aq, i32 %i.aq, i32 13)
  %i.as = mul i32 %i.ar, -1640531535              ; 2 uses
  %i.at = mul i32 %.0.copyload.i30.i, -2048144777
  %i.au = add i32 %i.at, %.02632.i                ; 2 uses
  %i.av = tail call i32 @llvm.fshl.i32(i32 %i.au, i32 %i.au, i32 13)
  %i.aw = mul i32 %i.av, -1640531535              ; 2 uses
  %i.ax = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.r
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i32 [ 1640531535, %bb.d ], [ %i.aw, %.lr.ph.i ]
  %.025.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.as, %.lr.ph.i ]
  %.024.lcssa.i = phi i32 [ -2048144777, %bb.d ], [ %i.ao, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ 606290984, %bb.d ], [ %i.ak, %.lr.ph.i ]
  %i.ay = getelementptr i8, ptr %i.ab, i64 %i.s   ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -16
  %.0.copyload.i.i45 = load i32, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %i.ay, i64 -12
  %.0.copyload.i23.i = load i32, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %i.ay, i64 -8
  %.0.copyload.i24.i = load i32, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %i.ay, i64 -4
  %.0.copyload.i25.i = load i32, ptr %i.bc, align 1
  %i.bd = and i32 %.0.copyload.i.i45, %.0.copyload.i.i
  %i.be = and i32 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bf = and i32 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bg = and i32 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bh = mul i32 %i.bd, -2048144777
  %i.bi = add i32 %i.bh, %.0.lcssa.i              ; 2 uses
  %i.bj = tail call i32 @llvm.fshl.i32(i32 %i.bi, i32 %i.bi, i32 13)
  %i.bk = mul i32 %i.bj, -1640531535              ; 2 uses
  %i.bl = mul i32 %i.be, -2048144777
  %i.bm = add i32 %i.bl, %.024.lcssa.i            ; 2 uses
  %i.bn = tail call i32 @llvm.fshl.i32(i32 %i.bm, i32 %i.bm, i32 13)
  %i.bo = mul i32 %i.bn, -1640531535              ; 2 uses
  %i.bp = mul i32 %i.bf, -2048144777
  %i.bq = add i32 %i.bp, %.025.lcssa.i            ; 2 uses
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bq, i32 %i.bq, i32 13)
  %i.bs = mul i32 %i.br, -1640531535              ; 2 uses
  %i.bt = mul i32 %i.bg, -2048144777
  %i.bu = add i32 %i.bt, %.026.lcssa.i            ; 2 uses
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bu, i32 %i.bu, i32 13)
  %i.bw = mul i32 %i.bv, -1640531535              ; 2 uses
  %i.bx = tail call i32 @llvm.fshl.i32(i32 %i.bk, i32 %i.bk, i32 1)
  %i.by = tail call i32 @llvm.fshl.i32(i32 %i.bo, i32 %i.bo, i32 7)
  %i.bz = add i32 %i.by, %i.bx
  %i.ca = tail call i32 @llvm.fshl.i32(i32 %i.bs, i32 %i.bs, i32 12)
  %i.cb = add i32 %i.bz, %i.ca
  %i.cc = tail call i32 @llvm.fshl.i32(i32 %i.bw, i32 %i.bw, i32 18)
  %i.cd = add i32 %i.cb, %i.cc                    ; 2 uses
  %i.ce = lshr i32 %i.cd, 15
  %i.cf = xor i32 %i.ce, %i.cd
  %i.cg = mul i32 %i.cf, -2048144777              ; 2 uses
  %i.ch = lshr i32 %i.cg, 13
  %i.ci = xor i32 %i.ch, %i.cg
  %i.cj = mul i32 %i.ci, -1028477379              ; 2 uses
  %i.ck = lshr i32 %i.cj, 16
  %i.cl = xor i32 %i.ck, %i.cj
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv116 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !3  ; 3 uses
  %i.co = shl i32 %i.cn, 6
  %i.cp = lshr i32 %i.cn, 2
  %i.cq = add i32 %i.co, -1640531527
  %i.cr = add i32 %i.cq, %i.cp
  %i.cs = add i32 %i.cr, %i.cl
  %i.ct = xor i32 %i.cs, %i.cn
  store i32 %i.ct, ptr %i.cm, align 4, !tbaa !3
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !58

._crit_edge106:                                   ; preds = %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph105, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62
  %indvars.iv120 = phi i64 [ %i.z, %.lr.ph105 ], [ %indvars.iv.next121, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62 ] ; 3 uses
  %i.cu = mul i64 %1, %indvars.iv120
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 %i.cu ; 2 uses
  br i1 %i.u, label %.lr.ph.i51, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62

.lr.ph.i51:                                       ; preds = %bb.e, %.lr.ph.i51
  %.035.i52 = phi i32 [ %i.de, %.lr.ph.i51 ], [ 606290984, %bb.e ]
  %.02434.i53 = phi i32 [ %i.di, %.lr.ph.i51 ], [ -2048144777, %bb.e ]
  %.02533.i54 = phi i32 [ %i.dm, %.lr.ph.i51 ], [ 0, %bb.e ]
  %.02632.i55 = phi i32 [ %i.dq, %.lr.ph.i51 ], [ 1640531535, %bb.e ]
  %.02731.i56 = phi i64 [ %i.dr, %.lr.ph.i51 ], [ 0, %bb.e ] ; 3 uses
  %i.cw = shl i64 %.02731.i56, 4
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.cw ; 4 uses
  %.0.copyload.i.i57 = load i32, ptr %i.cx, align 1
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 4
  %.0.copyload.i28.i58 = load i32, ptr %i.cy, align 1
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  %.0.copyload.i29.i59 = load i32, ptr %i.cz, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %i.cx, i64 12
  %.0.copyload.i30.i60 = load i32, ptr %i.da, align 1
  %i.db = mul i32 %.0.copyload.i.i57, -2048144777
  %i.dc = add i32 %i.db, %.035.i52                ; 2 uses
  %i.dd = tail call i32 @llvm.fshl.i32(i32 %i.dc, i32 %i.dc, i32 13)
  %i.de = mul i32 %i.dd, -1640531535              ; 2 uses
  %i.df = mul i32 %.0.copyload.i28.i58, -2048144777
  %i.dg = add i32 %i.df, %.02434.i53              ; 2 uses
  %i.dh = tail call i32 @llvm.fshl.i32(i32 %i.dg, i32 %i.dg, i32 13)
  %i.di = mul i32 %i.dh, -1640531535              ; 2 uses
  %i.dj = mul i32 %.0.copyload.i29.i59, -2048144777
  %i.dk = add i32 %i.dj, %.02533.i54              ; 2 uses
  %i.dl = tail call i32 @llvm.fshl.i32(i32 %i.dk, i32 %i.dk, i32 13)
  %i.dm = mul i32 %i.dl, -1640531535              ; 2 uses
  %i.dn = mul i32 %.0.copyload.i30.i60, -2048144777
  %i.do = add i32 %i.dn, %.02632.i55              ; 2 uses
  %i.dp = tail call i32 @llvm.fshl.i32(i32 %i.do, i32 %i.do, i32 13)
  %i.dq = mul i32 %i.dp, -1640531535              ; 2 uses
  %i.dr = add nuw nsw i64 %.02731.i56, 1
  %exitcond.not.i61 = icmp eq i64 %.02731.i56, %i.v
  br i1 %exitcond.not.i61, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62, label %.lr.ph.i51, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit62: ; preds = %.lr.ph.i51, %bb.e
  %.026.lcssa.i46 = phi i32 [ 1640531535, %bb.e ], [ %i.dq, %.lr.ph.i51 ]
  %.025.lcssa.i47 = phi i32 [ 0, %bb.e ], [ %i.dm, %.lr.ph.i51 ]
  %.024.lcssa.i48 = phi i32 [ -2048144777, %bb.e ], [ %i.di, %.lr.ph.i51 ]
  %.0.lcssa.i49 = phi i32 [ 606290984, %bb.e ], [ %i.de, %.lr.ph.i51 ]
  %i.ds = getelementptr inbounds nuw i8, ptr %i.cv, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.ds, i64 %i.y, i1 false)
  %.0..0..0..0.copyload.i.i63 = load i32, ptr %i.a, align 16
  %.4..4..4..0.copyload.i23.i64 = load i32, ptr %.4..4..4..sroa_idx, align 4
  %.8..8..8..0.copyload.i24.i65 = load i32, ptr %.8..8..8..sroa_idx, align 8
  %.12..12..12..0.copyload.i25.i66 = load i32, ptr %.12..12..12..sroa_idx, align 4
  %i.dt = and i32 %.0..0..0..0.copyload.i.i63, %.0.copyload.i.i
  %i.du = and i32 %.4..4..4..0.copyload.i23.i64, %.0.copyload.i9.i
  %i.dv = and i32 %.8..8..8..0.copyload.i24.i65, %.0.copyload.i10.i
  %i.dw = and i32 %.12..12..12..0.copyload.i25.i66, %.0.copyload.i11.i
  %i.dx = mul i32 %i.dt, -2048144777
  %i.dy = add i32 %i.dx, %.0.lcssa.i49            ; 2 uses
  %i.dz = tail call i32 @llvm.fshl.i32(i32 %i.dy, i32 %i.dy, i32 13)
  %i.ea = mul i32 %i.dz, -1640531535              ; 2 uses
  %i.eb = mul i32 %i.du, -2048144777
  %i.ec = add i32 %i.eb, %.024.lcssa.i48          ; 2 uses
  %i.ed = tail call i32 @llvm.fshl.i32(i32 %i.ec, i32 %i.ec, i32 13)
  %i.ee = mul i32 %i.ed, -1640531535              ; 2 uses
  %i.ef = mul i32 %i.dv, -2048144777
  %i.eg = add i32 %i.ef, %.025.lcssa.i47          ; 2 uses
  %i.eh = tail call i32 @llvm.fshl.i32(i32 %i.eg, i32 %i.eg, i32 13)
  %i.ei = mul i32 %i.eh, -1640531535              ; 2 uses
  %i.ej = mul i32 %i.dw, -2048144777
  %i.ek = add i32 %i.ej, %.026.lcssa.i46          ; 2 uses
  %i.el = tail call i32 @llvm.fshl.i32(i32 %i.ek, i32 %i.ek, i32 13)
  %i.em = mul i32 %i.el, -1640531535              ; 2 uses
  %i.en = tail call i32 @llvm.fshl.i32(i32 %i.ea, i32 %i.ea, i32 1)
  %i.eo = tail call i32 @llvm.fshl.i32(i32 %i.ee, i32 %i.ee, i32 7)
  %i.ep = add i32 %i.eo, %i.en
  %i.eq = tail call i32 @llvm.fshl.i32(i32 %i.ei, i32 %i.ei, i32 12)
  %i.er = add i32 %i.ep, %i.eq
  %i.es = tail call i32 @llvm.fshl.i32(i32 %i.em, i32 %i.em, i32 18)
  %i.et = add i32 %i.er, %i.es                    ; 2 uses
  %i.eu = lshr i32 %i.et, 15
  %i.ev = xor i32 %i.eu, %i.et
  %i.ew = mul i32 %i.ev, -2048144777              ; 2 uses
  %i.ex = lshr i32 %i.ew, 13
  %i.ey = xor i32 %i.ex, %i.ew
  %i.ez = mul i32 %i.ey, -1028477379              ; 2 uses
  %i.fa = lshr i32 %i.ez, 16
  %i.fb = xor i32 %i.fa, %i.ez
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv120 ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !3  ; 3 uses
  %i.fe = shl i32 %i.fd, 6
  %i.ff = lshr i32 %i.fd, 2
  %i.fg = add i32 %i.fe, -1640531527
  %i.fh = add i32 %i.fg, %i.ff
  %i.fi = add i32 %i.fh, %i.fb
  %i.fj = xor i32 %i.fi, %i.fd
  store i32 %i.fj, ptr %i.fc, align 4, !tbaa !3
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge106, label %bb.e, !llvm.loop !59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing3215HashFixedLenImpILb0EEEvjmPKhPj(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i32], align 16               ; 7 uses
  %.not93 = icmp eq i32 %0, 0
  br i1 %.not93, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %4 = sub nsw i64 %i.b, %indvars.iv
  %i.c = mul i64 %1, %4
  %i.d = icmp ult i64 %i.c, 16
  br i1 %i.d, label %bb.b, label %.critedge.loopexit.split.loop.exit138

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !60

.critedge.loopexit.split.loop.exit138:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit138, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.critedge.loopexit.split.loop.exit138 ], [ 0, %bb.b ] ; 6 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = add nsw i64 %1, -1
  %i.h = sdiv i64 %i.g, 16
  %i.i = add nsw i64 %i.h, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.k = sub i64 0, %1
  %i.l = and i64 %i.k, 15
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing3210StripeMaskEiPjS2_S2_S2_E5bytes, i64 %i.l ; 4 uses
  %.0.copyload.i.i = load i32, ptr %i.m, align 1  ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %.0.copyload.i9.i = load i32, ptr %i.n, align 1 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i10.i = load i32, ptr %i.o, align 1 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %.0.copyload.i11.i = load i32, ptr %i.p, align 1 ; 4 uses
  %.not103 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.q = icmp sgt i64 %i.j, 1
  %i.r = add nsw i64 %i.j, -2
  %i.s = shl i64 %i.j, 4                          ; 8 uses
  br i1 %i.q, label %.lr.ph.preheader.i.us.preheader, label %.lr.ph98.split

.lr.ph.preheader.i.us.preheader:                  ; preds = %.lr.ph98
  %wide.trip.count121 = zext i32 %.0.lcssa to i64
  br label %.lr.ph.preheader.i.us

.lr.ph.preheader.i.us:                            ; preds = %.lr.ph.preheader.i.us.preheader, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us
  %indvars.iv117 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader ], [ %indvars.iv.next118, %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us ] ; 3 uses
  %i.t = mul i64 %1, %indvars.iv117
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 %i.t ; 2 uses
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.us, %.lr.ph.preheader.i.us
  %.035.i.us = phi i32 [ %i.ad, %.lr.ph.i.us ], [ 606290984, %.lr.ph.preheader.i.us ]
  %.02434.i.us = phi i32 [ %i.ah, %.lr.ph.i.us ], [ -2048144777, %.lr.ph.preheader.i.us ]
  %.02533.i.us = phi i32 [ %i.al, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ]
  %.02632.i.us = phi i32 [ %i.ap, %.lr.ph.i.us ], [ 1640531535, %.lr.ph.preheader.i.us ]
  %.02731.i.us = phi i64 [ %i.aq, %.lr.ph.i.us ], [ 0, %.lr.ph.preheader.i.us ] ; 3 uses
  %i.v = shl i64 %.02731.i.us, 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v ; 4 uses
  %.0.copyload.i.i40.us = load i32, ptr %i.w, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  %.0.copyload.i28.i.us = load i32, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %.0.copyload.i29.i.us = load i32, ptr %i.y, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %.0.copyload.i30.i.us = load i32, ptr %i.z, align 1
  %i.aa = mul i32 %.0.copyload.i.i40.us, -2048144777
  %i.ab = add i32 %i.aa, %.035.i.us               ; 2 uses
  %i.ac = tail call i32 @llvm.fshl.i32(i32 %i.ab, i32 %i.ab, i32 13)
  %i.ad = mul i32 %i.ac, -1640531535              ; 2 uses
  %i.ae = mul i32 %.0.copyload.i28.i.us, -2048144777
  %i.af = add i32 %i.ae, %.02434.i.us             ; 2 uses
  %i.ag = tail call i32 @llvm.fshl.i32(i32 %i.af, i32 %i.af, i32 13)
  %i.ah = mul i32 %i.ag, -1640531535              ; 2 uses
  %i.ai = mul i32 %.0.copyload.i29.i.us, -2048144777
  %i.aj = add i32 %i.ai, %.02533.i.us             ; 2 uses
  %i.ak = tail call i32 @llvm.fshl.i32(i32 %i.aj, i32 %i.aj, i32 13)
  %i.al = mul i32 %i.ak, -1640531535              ; 2 uses
  %i.am = mul i32 %.0.copyload.i30.i.us, -2048144777
  %i.an = add i32 %i.am, %.02632.i.us             ; 2 uses
  %i.ao = tail call i32 @llvm.fshl.i32(i32 %i.an, i32 %i.an, i32 13)
  %i.ap = mul i32 %i.ao, -1640531535              ; 2 uses
  %i.aq = add nuw nsw i64 %.02731.i.us, 1
  %exitcond.not.i.us = icmp eq i64 %.02731.i.us, %i.r
  br i1 %exitcond.not.i.us, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us, label %.lr.ph.i.us, !llvm.loop !9

_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.loopexit.us: ; preds = %.lr.ph.i.us
  %i.ar = getelementptr i8, ptr %i.u, i64 %i.s    ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -16
  %.0.copyload.i.i41.us = load i32, ptr %i.as, align 1
  %i.at = getelementptr i8, ptr %i.ar, i64 -12
  %.0.copyload.i23.i.us = load i32, ptr %i.at, align 1
  %i.au = getelementptr i8, ptr %i.ar, i64 -8
  %.0.copyload.i24.i.us = load i32, ptr %i.au, align 1
  %i.av = getelementptr i8, ptr %i.ar, i64 -4
  %.0.copyload.i25.i.us = load i32, ptr %i.av, align 1
  %i.aw = and i32 %.0.copyload.i.i41.us, %.0.copyload.i.i
  %i.ax = and i32 %.0.copyload.i23.i.us, %.0.copyload.i9.i
  %i.ay = and i32 %.0.copyload.i24.i.us, %.0.copyload.i10.i
  %i.az = and i32 %.0.copyload.i25.i.us, %.0.copyload.i11.i
  %i.ba = mul i32 %i.aw, -2048144777
  %i.bb = add i32 %i.ba, %i.ad                    ; 2 uses
  %i.bc = tail call i32 @llvm.fshl.i32(i32 %i.bb, i32 %i.bb, i32 13)
  %i.bd = mul i32 %i.bc, -1640531535              ; 2 uses
  %i.be = mul i32 %i.ax, -2048144777
  %i.bf = add i32 %i.be, %i.ah                    ; 2 uses
  %i.bg = tail call i32 @llvm.fshl.i32(i32 %i.bf, i32 %i.bf, i32 13)
  %i.bh = mul i32 %i.bg, -1640531535              ; 2 uses
  %i.bi = mul i32 %i.ay, -2048144777
  %i.bj = add i32 %i.bi, %i.al                    ; 2 uses
  %i.bk = tail call i32 @llvm.fshl.i32(i32 %i.bj, i32 %i.bj, i32 13)
  %i.bl = mul i32 %i.bk, -1640531535              ; 2 uses
  %i.bm = mul i32 %i.az, -2048144777
  %i.bn = add i32 %i.bm, %i.ap                    ; 2 uses
  %i.bo = tail call i32 @llvm.fshl.i32(i32 %i.bn, i32 %i.bn, i32 13)
  %i.bp = mul i32 %i.bo, -1640531535              ; 2 uses
  %i.bq = tail call i32 @llvm.fshl.i32(i32 %i.bd, i32 %i.bd, i32 1)
  %i.br = tail call i32 @llvm.fshl.i32(i32 %i.bh, i32 %i.bh, i32 7)
  %i.bs = add i32 %i.br, %i.bq
  %i.bt = tail call i32 @llvm.fshl.i32(i32 %i.bl, i32 %i.bl, i32 12)
  %i.bu = add i32 %i.bs, %i.bt
  %i.bv = tail call i32 @llvm.fshl.i32(i32 %i.bp, i32 %i.bp, i32 18)
  %i.bw = add i32 %i.bu, %i.bv                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 15
  %i.by = xor i32 %i.bx, %i.bw
  %i.bz = mul i32 %i.by, -2048144777              ; 2 uses
  %i.ca = lshr i32 %i.bz, 13
  %i.cb = xor i32 %i.ca, %i.bz
  %i.cc = mul i32 %i.cb, -1028477379              ; 2 uses
  %i.cd = lshr i32 %i.cc, 16
  %i.ce = xor i32 %i.cd, %i.cc
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv117
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !3
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %exitcond122.not = icmp eq i64 %indvars.iv.next118, %wide.trip.count121
  br i1 %exitcond122.not, label %._crit_edge, label %.lr.ph.preheader.i.us, !llvm.loop !61

.lr.ph98.split:                                   ; preds = %.lr.ph98
  %invariant.gep = getelementptr i8, ptr %2, i64 %i.s ; 5 uses
  %wide.trip.count = zext i32 %.0.lcssa to i64    ; 6 uses
  %min.iters.check = icmp ult i32 %.0.lcssa, 8
  br i1 %min.iters.check, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph98.split
  %ident.check = icmp ne i64 %1, 1
  %i.cg = add nsw i64 %wide.trip.count, -1        ; 4 uses
  %i.ch = getelementptr i8, ptr %2, i64 %i.s
  %scevgep = getelementptr i8, ptr %i.ch, i64 -16 ; 2 uses
  %i.ci = getelementptr i8, ptr %scevgep, i64 %i.cg
  %i.cj = icmp ult ptr %i.ci, %scevgep
  %i.ck = getelementptr i8, ptr %2, i64 %i.s
  %scevgep146 = getelementptr i8, ptr %i.ck, i64 -12 ; 2 uses
  %i.cl = getelementptr i8, ptr %scevgep146, i64 %i.cg
  %i.cm = icmp ult ptr %i.cl, %scevgep146
  %i.cn = getelementptr i8, ptr %2, i64 %i.s
  %scevgep148 = getelementptr i8, ptr %i.cn, i64 -8 ; 2 uses
  %i.co = getelementptr i8, ptr %scevgep148, i64 %i.cg
  %i.cp = icmp ult ptr %i.co, %scevgep148
  %i.cq = getelementptr i8, ptr %2, i64 %i.s
  %scevgep150 = getelementptr i8, ptr %i.cq, i64 -4 ; 2 uses
  %i.cr = getelementptr i8, ptr %scevgep150, i64 %i.cg
  %i.cs = icmp ult ptr %i.cr, %scevgep150
  %i.ct = or i1 %ident.check, %i.cj
  %i.cu = or i1 %i.ct, %i.cm
  %i.cv = or i1 %i.cu, %i.cp
  %i.cw = or i1 %i.cv, %i.cs
  br i1 %i.cw, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.cx = shl nuw nsw i64 %wide.trip.count, 2
  %scevgep152 = getelementptr i8, ptr %3, i64 %i.cx
  %i.cy = getelementptr i8, ptr %2, i64 %i.s
  %scevgep153 = getelementptr i8, ptr %i.cy, i64 -16
  %i.cz = getelementptr i8, ptr %2, i64 %i.s
  %i.da = getelementptr i8, ptr %i.cz, i64 %wide.trip.count
  %scevgep154 = getelementptr i8, ptr %i.da, i64 -1
  %bound0 = icmp ult ptr %3, %scevgep154
  %bound1 = icmp ult ptr %scevgep153, %scevgep152
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %_ZN5arrow7compute9Hashing3218ProcessFullStripesEmPKhPjS4_S4_S4_.exit.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.0.copyload.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert155 = insertelement <4 x i32> poison, i32 %.0.copyload.i9.i, i64 0
  %broadcast.splat156 = shufflevector <4 x i32> %broadcast.splatinsert155, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert157 = insertelement <4 x i32> poison, i32 %.0.copyload.i10.i, i64 0
  %broadcast.splat158 = shufflevector <4 x i32> %broadcast.splatinsert157, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <4 x i32> poison, i32 %.0.copyload.i11.i, i64 0
  %broadcast.splat160 = shufflevector <4 x i32> %broadcast.splatinsert159, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.db = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.dc = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.dd = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.de = getelementptr i8, ptr %invariant.gep, i64 %index ; 4 uses
  %i.df = getelementptr i8, ptr %i.db, i64 -16
  %i.dg = getelementptr i8, ptr %i.dc, i64 -15
  %i.dh = getelementptr i8, ptr %i.dd, i64 -14
  %i.di = getelementptr i8, ptr %i.de, i64 -13
  %i.dj = load i32, ptr %i.df, align 1, !alias.scope !62
  %i.dk = load i32, ptr %i.dg, align 1, !alias.scope !62
  %i.dl = load i32, ptr %i.dh, align 1, !alias.scope !62
  %i.dm = load i32, ptr %i.di, align 1, !alias.scope !62
  %i.dn = insertelement <4 x i32> poison, i32 %i.dj, i64 0
  %i.do = insertelement <4 x i32> %i.dn, i32 %i.dk, i64 1
  %i.dp = insertelement <4 x i32> %i.do, i32 %i.dl, i64 2
  %i.dq = insertelement <4 x i32> %i.dp, i32 %i.dm, i64 3
end_hunk_0
begin_hunk_1_@_ZN5arrow7compute9Hashing647HashIntEbjmPKhPm:bb.a
  br label %.lr.ph.i73

.lr.ph.i73:                                       ; preds = %.lr.ph.i73, %.lr.ph.preheader.i71.new
  %indvars.iv.i74 = phi i64 [ 0, %.lr.ph.preheader.i71.new ], [ %indvars.iv.next.i75.3, %.lr.ph.i73 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i71.new ], [ %niter.next.3, %.lr.ph.i73 ]
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15
  %i.ha = mul i64 %i.gz, -7046029288634856825
  %i.hb = tail call i64 @llvm.bswap.i64(i64 %i.ha)
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i74
  store i64 %i.hb, ptr %i.hc, align 8, !tbaa !15
  %indvars.iv.next.i75 = or disjoint i64 %indvars.iv.i74, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !15
  %i.hf = mul i64 %i.he, -7046029288634856825
  %i.hg = tail call i64 @llvm.bswap.i64(i64 %i.hf)
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i75
  store i64 %i.hg, ptr %i.hh, align 8, !tbaa !15
  %indvars.iv.next.i75.1 = or disjoint i64 %indvars.iv.i74, 2 ; 2 uses
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75.1
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !15
  %i.hk = mul i64 %i.hj, -7046029288634856825
  %i.hl = tail call i64 @llvm.bswap.i64(i64 %i.hk)
  %i.hm = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i75.1
  store i64 %i.hl, ptr %i.hm, align 8, !tbaa !15
  %indvars.iv.next.i75.2 = or disjoint i64 %indvars.iv.i74, 3 ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next.i75.2
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !15
  %i.hp = mul i64 %i.ho, -7046029288634856825
  %i.hq = tail call i64 @llvm.bswap.i64(i64 %i.hp)
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.next.i75.2
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !15
  %indvars.iv.next.i75.3 = add nuw nsw i64 %indvars.iv.i74, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa, label %.lr.ph.i73, !llvm.loop !172

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i
  %lcmp.mod163.not = icmp eq i64 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod164 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.hs = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i.epil.init
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !23
  %i.hu = zext i8 %i.ht to i64
  %i.hv = mul i64 %i.hu, -7046029288634856825
  %i.hw = tail call i64 @llvm.bswap.i64(i64 %i.hv)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !15 ; 3 uses
  %i.hz = shl i64 %i.hy, 6
  %i.ia = lshr i64 %i.hy, 2
  %i.ib = add i64 %i.hz, 2654435769
  %i.ic = add i64 %i.ib, %i.ia
  %i.id = add i64 %i.ic, %i.hw
  %i.ie = xor i64 %i.id, %i.hy
  store i64 %i.ie, ptr %i.hx, align 8, !tbaa !15
  br label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit133.unr-lcssa: ; preds = %.lr.ph.i31
  %lcmp.mod157.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i31.epil.preheader

.lr.ph.i31.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit133.unr-lcssa, %.lr.ph.preheader.i29
  %indvars.iv.i32.epil.init = phi i64 [ 0, %.lr.ph.preheader.i29 ], [ %indvars.iv.next.i33.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit133.unr-lcssa ]
  %lcmp.mod158 = icmp ne i64 %xtraiter155, 0
  tail call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i31.epil

.lr.ph.i31.epil:                                  ; preds = %.lr.ph.i31.epil, %.lr.ph.i31.epil.preheader
  %indvars.iv.i32.epil = phi i64 [ %indvars.iv.i32.epil.init, %.lr.ph.i31.epil.preheader ], [ %indvars.iv.next.i33.epil, %.lr.ph.i31.epil ] ; 3 uses
  %epil.iter156 = phi i64 [ 0, %.lr.ph.i31.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i31.epil ]
  %i.if = getelementptr inbounds nuw i8, ptr %3, i64 %indvars.iv.i32.epil
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !23
  %i.ih = zext i8 %i.ig to i64
  %i.ii = mul i64 %i.ih, -7046029288634856825
  %i.ij = tail call i64 @llvm.bswap.i64(i64 %i.ii)
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i32.epil
  store i64 %i.ij, ptr %i.ik, align 8, !tbaa !15
  %indvars.iv.next.i33.epil = add nuw nsw i64 %indvars.iv.i32.epil, 1
  %epil.iter156.next = add i64 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i64 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i31.epil, !llvm.loop !173

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa: ; preds = %.lr.ph.i45
  %lcmp.mod151.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i45.epil.preheader

.lr.ph.i45.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa, %.lr.ph.preheader.i43
  %indvars.iv.i46.epil.init = phi i64 [ 0, %.lr.ph.preheader.i43 ], [ %indvars.iv.next.i47.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa ]
  %lcmp.mod152 = icmp ne i64 %xtraiter149, 0
  tail call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i45.epil

.lr.ph.i45.epil:                                  ; preds = %.lr.ph.i45.epil, %.lr.ph.i45.epil.preheader
  %indvars.iv.i46.epil = phi i64 [ %indvars.iv.i46.epil.init, %.lr.ph.i45.epil.preheader ], [ %indvars.iv.next.i47.epil, %.lr.ph.i45.epil ] ; 3 uses
  %epil.iter150 = phi i64 [ 0, %.lr.ph.i45.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i45.epil ]
  %i.il = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %indvars.iv.i46.epil
  %i.im = load i16, ptr %i.il, align 2, !tbaa !36
  %i.in = zext i16 %i.im to i64
  %i.io = mul i64 %i.in, -7046029288634856825
  %i.ip = tail call i64 @llvm.bswap.i64(i64 %i.io)
  %i.iq = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i46.epil
  store i64 %i.ip, ptr %i.iq, align 8, !tbaa !15
  %indvars.iv.next.i47.epil = add nuw nsw i64 %indvars.iv.i46.epil, 1
  %epil.iter150.next = add i64 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i64 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i45.epil, !llvm.loop !174

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa: ; preds = %.lr.ph.i59
  %lcmp.mod145.not = icmp eq i64 %xtraiter143, 0
  br i1 %lcmp.mod145.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i59.epil.preheader

.lr.ph.i59.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa, %.lr.ph.preheader.i57
  %indvars.iv.i60.epil.init = phi i64 [ 0, %.lr.ph.preheader.i57 ], [ %indvars.iv.next.i61.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa ]
  %lcmp.mod146 = icmp ne i64 %xtraiter143, 0
  tail call void @llvm.assume(i1 %lcmp.mod146)
  br label %.lr.ph.i59.epil

.lr.ph.i59.epil:                                  ; preds = %.lr.ph.i59.epil, %.lr.ph.i59.epil.preheader
  %indvars.iv.i60.epil = phi i64 [ %indvars.iv.i60.epil.init, %.lr.ph.i59.epil.preheader ], [ %indvars.iv.next.i61.epil, %.lr.ph.i59.epil ] ; 3 uses
  %epil.iter144 = phi i64 [ 0, %.lr.ph.i59.epil.preheader ], [ %epil.iter144.next, %.lr.ph.i59.epil ]
  %i.ir = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i60.epil
  %i.is = load i32, ptr %i.ir, align 4, !tbaa !3
  %i.it = zext i32 %i.is to i64
  %i.iu = mul i64 %i.it, -7046029288634856825
  %i.iv = tail call i64 @llvm.bswap.i64(i64 %i.iu)
  %i.iw = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i60.epil
  store i64 %i.iv, ptr %i.iw, align 8, !tbaa !15
  %indvars.iv.next.i61.epil = add nuw nsw i64 %indvars.iv.i60.epil, 1
  %epil.iter144.next = add i64 %epil.iter144, 1   ; 2 uses
  %epil.iter144.cmp.not = icmp eq i64 %epil.iter144.next, %xtraiter143
  br i1 %epil.iter144.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i59.epil, !llvm.loop !175

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa: ; preds = %.lr.ph.i73
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i73.epil.preheader

.lr.ph.i73.epil.preheader:                        ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa, %.lr.ph.preheader.i71
  %indvars.iv.i74.epil.init = phi i64 [ 0, %.lr.ph.preheader.i71 ], [ %indvars.iv.next.i75.3, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa ]
  %lcmp.mod140 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod140)
  br label %.lr.ph.i73.epil

.lr.ph.i73.epil:                                  ; preds = %.lr.ph.i73.epil, %.lr.ph.i73.epil.preheader
  %indvars.iv.i74.epil = phi i64 [ %indvars.iv.i74.epil.init, %.lr.ph.i73.epil.preheader ], [ %indvars.iv.next.i75.epil, %.lr.ph.i73.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i73.epil.preheader ], [ %epil.iter.next, %.lr.ph.i73.epil ]
  %i.ix = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.i74.epil
  %i.iy = load i64, ptr %i.ix, align 8, !tbaa !15
  %i.iz = mul i64 %i.iy, -7046029288634856825
  %i.ja = tail call i64 @llvm.bswap.i64(i64 %i.iz)
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv.i74.epil
  store i64 %i.ja, ptr %i.jb, align 8, !tbaa !15
  %indvars.iv.next.i75.epil = add nuw nsw i64 %indvars.iv.i74.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit, label %.lr.ph.i73.epil, !llvm.loop !176

_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit: ; preds = %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit139.unr-lcssa, %.lr.ph.i73.epil, %.lr.ph.i66.prol.loopexit, %.lr.ph.i66, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit137.unr-lcssa, %.lr.ph.i59.epil, %.lr.ph.i52, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit135.unr-lcssa, %.lr.ph.i45.epil, %.lr.ph.i38, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit133.unr-lcssa, %.lr.ph.i31.epil, %.lr.ph.i.epil.preheader, %_ZN5arrow7compute9Hashing6410HashIntImpILb1EhEEvjPKT0_Pm.exit.loopexit.unr-lcssa, %middle.block, %middle.block117, %middle.block130, %bb.m, %bb.l, %bb.j, %bb.i, %bb.g, %bb.f, %bb.d, %bb.c, %.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5arrow7compute9Hashing649HashFixedEbjmPKhPm(i1 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %2)
  %i.b = icmp eq i64 %i.a, 1
  %i.c = icmp ult i64 %2, 9
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5arrow7compute9Hashing647HashIntEbjmPKhPm(i1 noundef zeroext %0, i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  br i1 %0, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb1EEEvjmPKhPm(i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb0EEEvjmPKhPm(i32 noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef %4)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb1EEEvjmPKhPm(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not97 = icmp eq i32 %0, 0
  br i1 %.not97, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %4 = sub nsw i64 %i.b, %indvars.iv
  %i.c = mul i64 %1, %4
  %i.d = icmp ult i64 %i.c, 32
  br i1 %i.d, label %bb.b, label %.critedge.loopexit.split.loop.exit134

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !177

.critedge.loopexit.split.loop.exit134:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit134, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.critedge.loopexit.split.loop.exit134 ], [ 0, %bb.b ] ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = add nsw i64 %1, -1
  %i.h = sdiv i64 %i.g, 32
  %i.i = add nsw i64 %i.h, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.k = sub i64 0, %1
  %i.l = and i64 %i.k, 31
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.l ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.m, align 1  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.n, align 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.o, align 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.p, align 1 ; 2 uses
  %.not107 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not107, label %._crit_edge, label %.lr.ph102

.lr.ph102:                                        ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.q = icmp sgt i64 %i.j, 1
  %i.r = add nsw i64 %i.j, -2
  %i.s = shl i64 %i.j, 5
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = icmp ult i32 %.0.lcssa, %0
  br i1 %i.t, label %.lr.ph105, label %._crit_edge106

.lr.ph105:                                        ; preds = %._crit_edge
  %i.u = icmp sgt i64 %i.j, 1
  %i.v = add nsw i64 %i.j, -2
  %i.w = shl i64 %i.j, 5
  %i.x = add i64 %i.w, -32                        ; 2 uses
  %i.y = sub i64 %1, %i.x
  %i.z = zext i32 %.0.lcssa to i64
  %wide.trip.count124 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph102, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %indvars.iv116 = phi i64 [ 0, %.lr.ph102 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ] ; 3 uses
  %i.aa = mul i64 %1, %indvars.iv116
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i64 [ %i.ak, %.lr.ph.i ], [ -2239933958592612906, %bb.d ]
  %.02434.i = phi i64 [ %i.ao, %.lr.ph.i ], [ -4417276706812531889, %bb.d ]
  %.02533.i = phi i64 [ %i.as, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 7046029288634856825, %bb.d ]
  %.02731.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.ac = shl nsw i64 %.02731.i, 5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 4 uses
  %.0.copyload.i.i44 = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.ag, align 1
  %i.ah = mul i64 %.0.copyload.i.i44, -4417276706812531889
  %i.ai = add i64 %i.ah, %.035.i                  ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 31)
  %i.ak = mul i64 %i.aj, -7046029288634856825     ; 2 uses
  %i.al = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.am = add i64 %i.al, %.02434.i                ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 31)
  %i.ao = mul i64 %i.an, -7046029288634856825     ; 2 uses
  %i.ap = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.aq = add i64 %i.ap, %.02533.i                ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 31)
  %i.as = mul i64 %i.ar, -7046029288634856825     ; 2 uses
  %i.at = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.au = add i64 %i.at, %.02632.i                ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -7046029288634856825     ; 2 uses
  %i.ax = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.r
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i64 [ 7046029288634856825, %bb.d ], [ %i.aw, %.lr.ph.i ]
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.as, %.lr.ph.i ]
  %.024.lcssa.i = phi i64 [ -4417276706812531889, %bb.d ], [ %i.ao, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ -2239933958592612906, %bb.d ], [ %i.ak, %.lr.ph.i ]
  %i.ay = getelementptr i8, ptr %i.ab, i64 %i.s   ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -32
  %.0.copyload.i.i45 = load i64, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %i.ay, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %i.ay, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bc, align 1
  %i.bd = and i64 %.0.copyload.i.i45, %.0.copyload.i.i
  %i.be = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bf = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bg = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bh = mul i64 %i.bd, -4417276706812531889
  %i.bi = add i64 %i.bh, %.0.lcssa.i              ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 31) ; 2 uses
  %i.bk = mul i64 %i.bj, -7046029288634856825     ; 2 uses
  %i.bl = mul i64 %i.be, -4417276706812531889
  %i.bm = add i64 %i.bl, %.024.lcssa.i            ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 31) ; 2 uses
  %i.bo = mul i64 %i.bn, -7046029288634856825     ; 2 uses
  %i.bp = mul i64 %i.bf, -4417276706812531889
  %i.bq = add i64 %i.bp, %.025.lcssa.i            ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 31) ; 2 uses
  %i.bs = mul i64 %i.br, -7046029288634856825     ; 2 uses
  %i.bt = mul i64 %i.bg, -4417276706812531889
  %i.bu = add i64 %i.bt, %.026.lcssa.i            ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 31) ; 2 uses
  %i.bw = mul i64 %i.bv, -7046029288634856825     ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 1)
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 7)
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 12)
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 18)
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = mul i64 %i.bj, -2381459717836149591     ; 2 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 31)
  %i.cg = mul i64 %i.cf, -7046029288634856825
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, -7046029288634856825
  %i.cj = add i64 %i.ci, -8796714831421723037
  %i.ck = mul i64 %i.bn, -2381459717836149591     ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 31)
  %i.cm = mul i64 %i.cl, -7046029288634856825
  %i.cn = xor i64 %i.cj, %i.cm
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = add i64 %i.co, -8796714831421723037
  %i.cq = mul i64 %i.br, -2381459717836149591     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = add i64 %i.cu, -8796714831421723037
  %i.cw = mul i64 %i.bv, -2381459717836149591     ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 31)
  %i.cy = mul i64 %i.cx, -7046029288634856825
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = add i64 %i.da, -8796714831421723037     ; 2 uses
  %i.dc = lshr i64 %i.db, 33
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4417276706812531889     ; 2 uses
  %i.df = lshr i64 %i.de, 29
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 1609587929392839161      ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv116 ; 2 uses
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !15 ; 3 uses
  %i.dm = shl i64 %i.dl, 6
  %i.dn = lshr i64 %i.dl, 2
  %i.do = add i64 %i.dm, 2654435769
  %i.dp = add i64 %i.do, %i.dn
  %i.dq = add i64 %i.dp, %i.dj
  %i.dr = xor i64 %i.dq, %i.dl
  store i64 %i.dr, ptr %i.dk, align 8, !tbaa !15
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next117, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !178

._crit_edge106:                                   ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph105, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62
  %indvars.iv120 = phi i64 [ %i.z, %.lr.ph105 ], [ %indvars.iv.next121, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62 ] ; 3 uses
  %i.ds = mul i64 %1, %indvars.iv120
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 %i.ds ; 2 uses
  br i1 %i.u, label %.lr.ph.i51, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62

.lr.ph.i51:                                       ; preds = %bb.e, %.lr.ph.i51
  %.035.i52 = phi i64 [ %i.ec, %.lr.ph.i51 ], [ -2239933958592612906, %bb.e ]
  %.02434.i53 = phi i64 [ %i.eg, %.lr.ph.i51 ], [ -4417276706812531889, %bb.e ]
  %.02533.i54 = phi i64 [ %i.ek, %.lr.ph.i51 ], [ 0, %bb.e ]
  %.02632.i55 = phi i64 [ %i.eo, %.lr.ph.i51 ], [ 7046029288634856825, %bb.e ]
  %.02731.i56 = phi i64 [ %i.ep, %.lr.ph.i51 ], [ 0, %bb.e ] ; 3 uses
  %i.du = shl nsw i64 %.02731.i56, 5
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.du ; 4 uses
  %.0.copyload.i.i57 = load i64, ptr %i.dv, align 1
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %.0.copyload.i28.i58 = load i64, ptr %i.dw, align 1
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 16
  %.0.copyload.i29.i59 = load i64, ptr %i.dx, align 1
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 24
  %.0.copyload.i30.i60 = load i64, ptr %i.dy, align 1
  %i.dz = mul i64 %.0.copyload.i.i57, -4417276706812531889
  %i.ea = add i64 %i.dz, %.035.i52                ; 2 uses
  %i.eb = tail call i64 @llvm.fshl.i64(i64 %i.ea, i64 %i.ea, i64 31)
  %i.ec = mul i64 %i.eb, -7046029288634856825     ; 2 uses
  %i.ed = mul i64 %.0.copyload.i28.i58, -4417276706812531889
  %i.ee = add i64 %i.ed, %.02434.i53              ; 2 uses
  %i.ef = tail call i64 @llvm.fshl.i64(i64 %i.ee, i64 %i.ee, i64 31)
  %i.eg = mul i64 %i.ef, -7046029288634856825     ; 2 uses
  %i.eh = mul i64 %.0.copyload.i29.i59, -4417276706812531889
  %i.ei = add i64 %i.eh, %.02533.i54              ; 2 uses
  %i.ej = tail call i64 @llvm.fshl.i64(i64 %i.ei, i64 %i.ei, i64 31)
  %i.ek = mul i64 %i.ej, -7046029288634856825     ; 2 uses
  %i.el = mul i64 %.0.copyload.i30.i60, -4417276706812531889
  %i.em = add i64 %i.el, %.02632.i55              ; 2 uses
  %i.en = tail call i64 @llvm.fshl.i64(i64 %i.em, i64 %i.em, i64 31)
  %i.eo = mul i64 %i.en, -7046029288634856825     ; 2 uses
  %i.ep = add nuw nsw i64 %.02731.i56, 1
  %exitcond.not.i61 = icmp eq i64 %.02731.i56, %i.v
  br i1 %exitcond.not.i61, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62, label %.lr.ph.i51, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit62: ; preds = %.lr.ph.i51, %bb.e
  %.026.lcssa.i46 = phi i64 [ 7046029288634856825, %bb.e ], [ %i.eo, %.lr.ph.i51 ]
  %.025.lcssa.i47 = phi i64 [ 0, %bb.e ], [ %i.ek, %.lr.ph.i51 ]
  %.024.lcssa.i48 = phi i64 [ -4417276706812531889, %bb.e ], [ %i.eg, %.lr.ph.i51 ]
  %.0.lcssa.i49 = phi i64 [ -2239933958592612906, %bb.e ], [ %i.ec, %.lr.ph.i51 ]
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr align 1 %i.eq, i64 %i.y, i1 false)
  %.0..0..0..0.copyload.i.i63 = load i64, ptr %i.a, align 16
  %.8..8..8..0.copyload.i23.i64 = load i64, ptr %.8..8..8..sroa_idx, align 8
  %.16..16..16..0.copyload.i24.i65 = load i64, ptr %.16..16..16..sroa_idx, align 16
  %.24..24..24..0.copyload.i25.i66 = load i64, ptr %.24..24..24..sroa_idx, align 8
  %i.er = and i64 %.0..0..0..0.copyload.i.i63, %.0.copyload.i.i
  %i.es = and i64 %.8..8..8..0.copyload.i23.i64, %.0.copyload.i9.i
  %i.et = and i64 %.16..16..16..0.copyload.i24.i65, %.0.copyload.i10.i
  %i.eu = and i64 %.24..24..24..0.copyload.i25.i66, %.0.copyload.i11.i
  %i.ev = mul i64 %i.er, -4417276706812531889
  %i.ew = add i64 %i.ev, %.0.lcssa.i49            ; 2 uses
  %i.ex = tail call i64 @llvm.fshl.i64(i64 %i.ew, i64 %i.ew, i64 31) ; 2 uses
  %i.ey = mul i64 %i.ex, -7046029288634856825     ; 2 uses
  %i.ez = mul i64 %i.es, -4417276706812531889
  %i.fa = add i64 %i.ez, %.024.lcssa.i48          ; 2 uses
  %i.fb = tail call i64 @llvm.fshl.i64(i64 %i.fa, i64 %i.fa, i64 31) ; 2 uses
  %i.fc = mul i64 %i.fb, -7046029288634856825     ; 2 uses
  %i.fd = mul i64 %i.et, -4417276706812531889
  %i.fe = add i64 %i.fd, %.025.lcssa.i47          ; 2 uses
  %i.ff = tail call i64 @llvm.fshl.i64(i64 %i.fe, i64 %i.fe, i64 31) ; 2 uses
  %i.fg = mul i64 %i.ff, -7046029288634856825     ; 2 uses
  %i.fh = mul i64 %i.eu, -4417276706812531889
  %i.fi = add i64 %i.fh, %.026.lcssa.i46          ; 2 uses
  %i.fj = tail call i64 @llvm.fshl.i64(i64 %i.fi, i64 %i.fi, i64 31) ; 2 uses
  %i.fk = mul i64 %i.fj, -7046029288634856825     ; 2 uses
  %i.fl = tail call i64 @llvm.fshl.i64(i64 %i.ey, i64 %i.ey, i64 1)
  %i.fm = tail call i64 @llvm.fshl.i64(i64 %i.fc, i64 %i.fc, i64 7)
  %i.fn = add i64 %i.fm, %i.fl
  %i.fo = tail call i64 @llvm.fshl.i64(i64 %i.fg, i64 %i.fg, i64 12)
  %i.fp = add i64 %i.fn, %i.fo
  %i.fq = tail call i64 @llvm.fshl.i64(i64 %i.fk, i64 %i.fk, i64 18)
  %i.fr = add i64 %i.fp, %i.fq
  %i.fs = mul i64 %i.ex, -2381459717836149591     ; 2 uses
  %i.ft = tail call i64 @llvm.fshl.i64(i64 %i.fs, i64 %i.fs, i64 31)
  %i.fu = mul i64 %i.ft, -7046029288634856825
  %i.fv = xor i64 %i.fr, %i.fu
  %i.fw = mul i64 %i.fv, -7046029288634856825
  %i.fx = add i64 %i.fw, -8796714831421723037
  %i.fy = mul i64 %i.fb, -2381459717836149591     ; 2 uses
  %i.fz = tail call i64 @llvm.fshl.i64(i64 %i.fy, i64 %i.fy, i64 31)
  %i.ga = mul i64 %i.fz, -7046029288634856825
  %i.gb = xor i64 %i.fx, %i.ga
  %i.gc = mul i64 %i.gb, -7046029288634856825
  %i.gd = add i64 %i.gc, -8796714831421723037
  %i.ge = mul i64 %i.ff, -2381459717836149591     ; 2 uses
  %i.gf = tail call i64 @llvm.fshl.i64(i64 %i.ge, i64 %i.ge, i64 31)
  %i.gg = mul i64 %i.gf, -7046029288634856825
  %i.gh = xor i64 %i.gd, %i.gg
  %i.gi = mul i64 %i.gh, -7046029288634856825
  %i.gj = add i64 %i.gi, -8796714831421723037
  %i.gk = mul i64 %i.fj, -2381459717836149591     ; 2 uses
  %i.gl = tail call i64 @llvm.fshl.i64(i64 %i.gk, i64 %i.gk, i64 31)
  %i.gm = mul i64 %i.gl, -7046029288634856825
  %i.gn = xor i64 %i.gj, %i.gm
  %i.go = mul i64 %i.gn, -7046029288634856825
  %i.gp = add i64 %i.go, -8796714831421723037     ; 2 uses
  %i.gq = lshr i64 %i.gp, 33
  %i.gr = xor i64 %i.gq, %i.gp
  %i.gs = mul i64 %i.gr, -4417276706812531889     ; 2 uses
  %i.gt = lshr i64 %i.gs, 29
  %i.gu = xor i64 %i.gt, %i.gs
  %i.gv = mul i64 %i.gu, 1609587929392839161      ; 2 uses
  %i.gw = lshr i64 %i.gv, 32
  %i.gx = xor i64 %i.gw, %i.gv
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv120 ; 2 uses
  %i.gz = load i64, ptr %i.gy, align 8, !tbaa !15 ; 3 uses
  %i.ha = shl i64 %i.gz, 6
  %i.hb = lshr i64 %i.gz, 2
  %i.hc = add i64 %i.ha, 2654435769
  %i.hd = add i64 %i.hc, %i.hb
  %i.he = add i64 %i.hd, %i.gx
  %i.hf = xor i64 %i.he, %i.gz
  store i64 %i.hf, ptr %i.gy, align 8, !tbaa !15
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond125.not = icmp eq i64 %indvars.iv.next121, %wide.trip.count124
  br i1 %exitcond125.not, label %._crit_edge106, label %bb.e, !llvm.loop !179
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5arrow7compute9Hashing6415HashFixedLenImpILb0EEEvjmPKhPm(i32 noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %.not93 = icmp eq i32 %0, 0
  br i1 %.not93, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = zext i32 %0 to i64                       ; 2 uses
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %4 = sub nsw i64 %i.b, %indvars.iv
  %i.c = mul i64 %1, %4
  %i.d = icmp ult i64 %i.c, 32
  br i1 %i.d, label %bb.b, label %.critedge.loopexit.split.loop.exit130

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.e = and i64 %indvars.iv.next, 4294967295
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %.critedge, label %.lr.ph, !llvm.loop !180

.critedge.loopexit.split.loop.exit130:            ; preds = %.lr.ph
  %5 = trunc nuw i64 %indvars.iv to i32
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %.critedge.loopexit.split.loop.exit130, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %5, %.critedge.loopexit.split.loop.exit130 ], [ 0, %bb.b ] ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %_ZN5arrow8bit_util7CeilDivEll.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  %i.g = add nsw i64 %1, -1
  %i.h = sdiv i64 %i.g, 32
  %i.i = add nsw i64 %i.h, 1
  br label %_ZN5arrow8bit_util7CeilDivEll.exit

_ZN5arrow8bit_util7CeilDivEll.exit:               ; preds = %.critedge, %bb.c
  %i.j = phi i64 [ %i.i, %bb.c ], [ 0, %.critedge ] ; 6 uses
  %i.k = sub i64 0, %1
  %i.l = and i64 %i.k, 31
  %i.m = getelementptr inbounds nuw i8, ptr @_ZZN5arrow7compute9Hashing6410StripeMaskEiPmS2_S2_S2_E5bytes, i64 %i.l ; 4 uses
  %.0.copyload.i.i = load i64, ptr %i.m, align 1  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.0.copyload.i9.i = load i64, ptr %i.n, align 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.0.copyload.i10.i = load i64, ptr %i.o, align 1 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.0.copyload.i11.i = load i64, ptr %i.p, align 1 ; 2 uses
  %.not103 = icmp eq i32 %.0.lcssa, 0
  br i1 %.not103, label %._crit_edge, label %.lr.ph98

.lr.ph98:                                         ; preds = %_ZN5arrow8bit_util7CeilDivEll.exit
  %i.q = icmp sgt i64 %i.j, 1
  %i.r = add nsw i64 %i.j, -2
  %i.s = shl i64 %i.j, 5
  %wide.trip.count = zext i32 %.0.lcssa to i64
  br label %bb.d

._crit_edge:                                      ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, %_ZN5arrow8bit_util7CeilDivEll.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.t = icmp ult i32 %.0.lcssa, %0
  br i1 %i.t, label %.lr.ph101, label %._crit_edge102

.lr.ph101:                                        ; preds = %._crit_edge
  %i.u = icmp sgt i64 %i.j, 1
  %i.v = add nsw i64 %i.j, -2
  %i.w = shl i64 %i.j, 5
  %i.x = add i64 %i.w, -32                        ; 2 uses
  %i.y = sub i64 %1, %i.x
  %i.z = zext i32 %.0.lcssa to i64
  %wide.trip.count120 = zext i32 %0 to i64
  %.8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.16..16..16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.24..24..24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph98, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit
  %indvars.iv112 = phi i64 [ 0, %.lr.ph98 ], [ %indvars.iv.next113, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit ] ; 3 uses
  %i.aa = mul i64 %1, %indvars.iv112
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %i.aa ; 2 uses
  br i1 %i.q, label %.lr.ph.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.i
  %.035.i = phi i64 [ %i.ak, %.lr.ph.i ], [ -2239933958592612906, %bb.d ]
  %.02434.i = phi i64 [ %i.ao, %.lr.ph.i ], [ -4417276706812531889, %bb.d ]
  %.02533.i = phi i64 [ %i.as, %.lr.ph.i ], [ 0, %bb.d ]
  %.02632.i = phi i64 [ %i.aw, %.lr.ph.i ], [ 7046029288634856825, %bb.d ]
  %.02731.i = phi i64 [ %i.ax, %.lr.ph.i ], [ 0, %bb.d ] ; 3 uses
  %i.ac = shl nsw i64 %.02731.i, 5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 %i.ac ; 4 uses
  %.0.copyload.i.i40 = load i64, ptr %i.ad, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.0.copyload.i28.i = load i64, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %.0.copyload.i29.i = load i64, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %.0.copyload.i30.i = load i64, ptr %i.ag, align 1
  %i.ah = mul i64 %.0.copyload.i.i40, -4417276706812531889
  %i.ai = add i64 %i.ah, %.035.i                  ; 2 uses
  %i.aj = tail call i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 31)
  %i.ak = mul i64 %i.aj, -7046029288634856825     ; 2 uses
  %i.al = mul i64 %.0.copyload.i28.i, -4417276706812531889
  %i.am = add i64 %i.al, %.02434.i                ; 2 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 31)
  %i.ao = mul i64 %i.an, -7046029288634856825     ; 2 uses
  %i.ap = mul i64 %.0.copyload.i29.i, -4417276706812531889
  %i.aq = add i64 %i.ap, %.02533.i                ; 2 uses
  %i.ar = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 31)
  %i.as = mul i64 %i.ar, -7046029288634856825     ; 2 uses
  %i.at = mul i64 %.0.copyload.i30.i, -4417276706812531889
  %i.au = add i64 %i.at, %.02632.i                ; 2 uses
  %i.av = tail call i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 31)
  %i.aw = mul i64 %i.av, -7046029288634856825     ; 2 uses
  %i.ax = add nuw nsw i64 %.02731.i, 1
  %exitcond.not.i = icmp eq i64 %.02731.i, %i.r
  br i1 %exitcond.not.i, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit, label %.lr.ph.i, !llvm.loop !143

_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit: ; preds = %.lr.ph.i, %bb.d
  %.026.lcssa.i = phi i64 [ 7046029288634856825, %bb.d ], [ %i.aw, %.lr.ph.i ]
  %.025.lcssa.i = phi i64 [ 0, %bb.d ], [ %i.as, %.lr.ph.i ]
  %.024.lcssa.i = phi i64 [ -4417276706812531889, %bb.d ], [ %i.ao, %.lr.ph.i ]
  %.0.lcssa.i = phi i64 [ -2239933958592612906, %bb.d ], [ %i.ak, %.lr.ph.i ]
  %i.ay = getelementptr i8, ptr %i.ab, i64 %i.s   ; 4 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 -32
  %.0.copyload.i.i41 = load i64, ptr %i.az, align 1
  %i.ba = getelementptr i8, ptr %i.ay, i64 -24
  %.0.copyload.i23.i = load i64, ptr %i.ba, align 1
  %i.bb = getelementptr i8, ptr %i.ay, i64 -16
  %.0.copyload.i24.i = load i64, ptr %i.bb, align 1
  %i.bc = getelementptr i8, ptr %i.ay, i64 -8
  %.0.copyload.i25.i = load i64, ptr %i.bc, align 1
  %i.bd = and i64 %.0.copyload.i.i41, %.0.copyload.i.i
  %i.be = and i64 %.0.copyload.i23.i, %.0.copyload.i9.i
  %i.bf = and i64 %.0.copyload.i24.i, %.0.copyload.i10.i
  %i.bg = and i64 %.0.copyload.i25.i, %.0.copyload.i11.i
  %i.bh = mul i64 %i.bd, -4417276706812531889
  %i.bi = add i64 %i.bh, %.0.lcssa.i              ; 2 uses
  %i.bj = tail call i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 31) ; 2 uses
  %i.bk = mul i64 %i.bj, -7046029288634856825     ; 2 uses
  %i.bl = mul i64 %i.be, -4417276706812531889
  %i.bm = add i64 %i.bl, %.024.lcssa.i            ; 2 uses
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bm, i64 %i.bm, i64 31) ; 2 uses
  %i.bo = mul i64 %i.bn, -7046029288634856825     ; 2 uses
  %i.bp = mul i64 %i.bf, -4417276706812531889
  %i.bq = add i64 %i.bp, %.025.lcssa.i            ; 2 uses
  %i.br = tail call i64 @llvm.fshl.i64(i64 %i.bq, i64 %i.bq, i64 31) ; 2 uses
  %i.bs = mul i64 %i.br, -7046029288634856825     ; 2 uses
  %i.bt = mul i64 %i.bg, -4417276706812531889
  %i.bu = add i64 %i.bt, %.026.lcssa.i            ; 2 uses
  %i.bv = tail call i64 @llvm.fshl.i64(i64 %i.bu, i64 %i.bu, i64 31) ; 2 uses
  %i.bw = mul i64 %i.bv, -7046029288634856825     ; 2 uses
  %i.bx = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 1)
  %i.by = tail call i64 @llvm.fshl.i64(i64 %i.bo, i64 %i.bo, i64 7)
  %i.bz = add i64 %i.by, %i.bx
  %i.ca = tail call i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 12)
  %i.cb = add i64 %i.bz, %i.ca
  %i.cc = tail call i64 @llvm.fshl.i64(i64 %i.bw, i64 %i.bw, i64 18)
  %i.cd = add i64 %i.cb, %i.cc
  %i.ce = mul i64 %i.bj, -2381459717836149591     ; 2 uses
  %i.cf = tail call i64 @llvm.fshl.i64(i64 %i.ce, i64 %i.ce, i64 31)
  %i.cg = mul i64 %i.cf, -7046029288634856825
  %i.ch = xor i64 %i.cd, %i.cg
  %i.ci = mul i64 %i.ch, -7046029288634856825
  %i.cj = add i64 %i.ci, -8796714831421723037
  %i.ck = mul i64 %i.bn, -2381459717836149591     ; 2 uses
  %i.cl = tail call i64 @llvm.fshl.i64(i64 %i.ck, i64 %i.ck, i64 31)
  %i.cm = mul i64 %i.cl, -7046029288634856825
  %i.cn = xor i64 %i.cj, %i.cm
  %i.co = mul i64 %i.cn, -7046029288634856825
  %i.cp = add i64 %i.co, -8796714831421723037
  %i.cq = mul i64 %i.br, -2381459717836149591     ; 2 uses
  %i.cr = tail call i64 @llvm.fshl.i64(i64 %i.cq, i64 %i.cq, i64 31)
  %i.cs = mul i64 %i.cr, -7046029288634856825
  %i.ct = xor i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, -7046029288634856825
  %i.cv = add i64 %i.cu, -8796714831421723037
  %i.cw = mul i64 %i.bv, -2381459717836149591     ; 2 uses
  %i.cx = tail call i64 @llvm.fshl.i64(i64 %i.cw, i64 %i.cw, i64 31)
  %i.cy = mul i64 %i.cx, -7046029288634856825
  %i.cz = xor i64 %i.cv, %i.cy
  %i.da = mul i64 %i.cz, -7046029288634856825
  %i.db = add i64 %i.da, -8796714831421723037     ; 2 uses
  %i.dc = lshr i64 %i.db, 33
  %i.dd = xor i64 %i.dc, %i.db
  %i.de = mul i64 %i.dd, -4417276706812531889     ; 2 uses
  %i.df = lshr i64 %i.de, 29
  %i.dg = xor i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, 1609587929392839161      ; 2 uses
  %i.di = lshr i64 %i.dh, 32
  %i.dj = xor i64 %i.di, %i.dh
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv112
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !15
  %indvars.iv.next113 = add nuw nsw i64 %indvars.iv112, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next113, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !181

._crit_edge102:                                   ; preds = %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.e:                                             ; preds = %.lr.ph101, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58
  %indvars.iv116 = phi i64 [ %i.z, %.lr.ph101 ], [ %indvars.iv.next117, %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58 ] ; 3 uses
  %i.dl = mul i64 %1, %indvars.iv116
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 %i.dl ; 2 uses
  br i1 %i.u, label %.lr.ph.i47, label %_ZN5arrow7compute9Hashing6418ProcessFullStripesEmPKhPmS4_S4_S4_.exit58

.lr.ph.i47:                                       ; preds = %bb.e, %.lr.ph.i47
  %.035.i48 = phi i64 [ %i.dv, %.lr.ph.i47 ], [ -2239933958592612906, %bb.e ]
  %.02434.i49 = phi i64 [ %i.dz, %.lr.ph.i47 ], [ -4417276706812531889, %bb.e ]
  %.02533.i50 = phi i64 [ %i.ed, %.lr.ph.i47 ], [ 0, %bb.e ]
  %.02632.i51 = phi i64 [ %i.eh, %.lr.ph.i47 ], [ 7046029288634856825, %bb.e ]
  %.02731.i52 = phi i64 [ %i.ei, %.lr.ph.i47 ], [ 0, %bb.e ] ; 3 uses
  %i.dn = shl nsw i64 %.02731.i52, 5
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dn ; 4 uses
  %.0.copyload.i.i53 = load i64, ptr %i.do, align 1
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %.0.copyload.i28.i54 = load i64, ptr %i.dp, align 1
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %.0.copyload.i29.i55 = load i64, ptr %i.dq, align 1
  %i.dr = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %.0.copyload.i30.i56 = load i64, ptr %i.dr, align 1
  %i.ds = mul i64 %.0.copyload.i.i53, -4417276706812531889
  %i.dt = add i64 %i.ds, %.035.i48                ; 2 uses
  %i.du = tail call i64 @llvm.fshl.i64(i64 %i.dt, i64 %i.dt, i64 31)
  %i.dv = mul i64 %i.du, -7046029288634856825     ; 2 uses
  %i.dw = mul i64 %.0.copyload.i28.i54, -4417276706812531889
  %i.dx = add i64 %i.dw, %.02434.i49              ; 2 uses
end_hunk_1
