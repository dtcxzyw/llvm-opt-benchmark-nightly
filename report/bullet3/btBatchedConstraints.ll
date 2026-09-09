Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btBatchedConstraints?download=true
inline.NumInlined: 302
inline.NumDeleted: 113
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 16
loop-unroll.NumUnrolled: 22
begin_hunk_0_@_ZNK25ReadSolverConstraintsLoop7forLoopEii:bb.a
  store i32 %i.aa, ptr %i.ab, align 4, !tbaa !26
  %i.ac = trunc nsw i64 %indvars.iv to i32
  store i32 %i.ac, ptr %i.u, align 4, !tbaa !53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 1, ptr %i.ad, align 4, !tbaa !54
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ae = getelementptr inbounds [16 x i8], ptr %i.c, i64 %indvars.iv.next ; 4 uses
  %i.af = getelementptr inbounds [160 x i8], ptr %i.g, i64 %indvars.iv.next ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 152
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !40
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !26
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 156
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !41
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  store i32 %i.ak, ptr %i.al, align 4, !tbaa !26
  %i.am = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.am, ptr %i.ae, align 4, !tbaa !53
  %i.an = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  store i32 1, ptr %i.an, align 4, !tbaa !54
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %.lr.ph.new, !llvm.loop !177
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN34AssignConstraintsToGridBatchesLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK34AssignConstraintsToGridBatchesLoop7forLoopEii(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !68   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.4)
  %i.c = icmp slt i32 %1, %2
  br i1 %i.c, label %.lr.ph.i, label %_ZL30assignConstraintsToGridBatchesRK36AssignConstraintsToGridBatchesParamsii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !62
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !63
  %i.m = sext i32 %1 to i64
  %wide.trip.count.i = sext i32 %2 to i64
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  br label %bb.b

bb.b:                                             ; preds = %_Z7btClampIiEvRT_RKS0_S3_.exit.2.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.m, %.lr.ph.i ], [ %indvars.iv.next.i, %_Z7btClampIiEvRT_RKS0_S3_.exit.2.i ] ; 4 uses
  %i.n = getelementptr inbounds [16 x i8], ptr %i.e, i64 %indvars.iv.i ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 4, !tbaa !26
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26   ; 2 uses
  %i.s = load i32, ptr %i.f, align 4, !tbaa !65   ; 4 uses
  %i.t = trunc nsw i64 %indvars.iv.i to i32       ; 2 uses
  %i.u = and i32 %i.s, %i.t                       ; 3 uses
  %i.v = sext i32 %i.p to i64                     ; 3 uses
  %i.w = getelementptr inbounds i8, ptr %i.g, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !55, !range !43, !noundef !45
  %i.y = trunc nuw i8 %i.x to i1
  br i1 %i.y, label %bb.c, label %..thread_crit_edge.i

..thread_crit_edge.i:                             ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.h, align 8, !tbaa !61
  %.pre93.i = sext i32 %i.r to i64
  br label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.z = sext i32 %i.r to i64                     ; 2 uses
  %i.aa = getelementptr inbounds i8, ptr %i.g, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !55, !range !43, !noundef !45
  %i.ac = trunc nuw i8 %i.ab to i1
  %.pre92.i = load ptr, ptr %i.h, align 8, !tbaa !61 ; 3 uses
  br i1 %i.ac, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds [12 x i8], ptr %.pre92.i, i64 %i.v ; 3 uses
  %i.ae = getelementptr inbounds [12 x i8], ptr %.pre92.i, i64 %i.z ; 3 uses
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !26 ; 2 uses
  %i.ag = load i32, ptr %i.ae, align 4, !tbaa !26 ; 2 uses
  %i.ah = call i32 @llvm.smin.i32(i32 %i.af, i32 %i.ag) ; 4 uses
  %.not.i = icmp eq i32 %i.af, %i.ag
  br i1 %.not.i, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = and i32 %i.ah, 1
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ak = and i32 %i.u, -2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.al = or i32 %i.t, 1
  %i.am = and i32 %i.s, %i.al
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d
  %.1.i = phi i32 [ %i.ak, %bb.f ], [ %i.am, %bb.g ], [ %i.u, %bb.d ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ap = load i32, ptr %i.an, align 4, !tbaa !26 ; 2 uses
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !26 ; 2 uses
  %i.ar = call i32 @llvm.smin.i32(i32 %i.ap, i32 %i.aq) ; 4 uses
  %.not.1.i = icmp eq i32 %i.ap, %i.aq
  br i1 %.not.1.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = and i32 %i.ar, 1
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = or i32 %.1.i, 2
  %i.av = and i32 %i.au, %i.s
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aw = and i32 %.1.i, -3
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.h
  %.1.1.i = phi i32 [ %i.aw, %bb.k ], [ %i.av, %bb.j ], [ %.1.i, %bb.h ] ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.az = load i32, ptr %i.ax, align 4, !tbaa !26 ; 2 uses
  %i.ba = load i32, ptr %i.ay, align 4, !tbaa !26 ; 2 uses
  %i.bb = call i32 @llvm.smin.i32(i32 %i.az, i32 %i.ba) ; 4 uses
  %.not.2.i = icmp eq i32 %i.az, %i.ba
  br i1 %.not.2.i, label %.loopexit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = and i32 %i.bb, 1
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = or i32 %.1.1.i, 4
  %i.bf = and i32 %i.be, %i.s
  br label %.loopexit.i

bb.o:                                             ; preds = %bb.m
  %i.bg = and i32 %.1.1.i, -5
  br label %.loopexit.i

.thread.i:                                        ; preds = %bb.c, %..thread_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre93.i, %..thread_crit_edge.i ], [ %i.v, %bb.c ]
  %i.bh = phi ptr [ %.pre.i, %..thread_crit_edge.i ], [ %.pre92.i, %bb.c ]
  %i.bi = getelementptr inbounds [12 x i8], ptr %i.bh, i64 %.pre-phi.i ; 3 uses
  %.sroa.089.0.copyload.i = load i32, ptr %i.bi, align 4, !tbaa !26
  %.sroa.590.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.590.0.copyload.i = load i32, ptr %.sroa.590.0..sroa_idx.i, align 4, !tbaa !26
  %.sroa.791.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.sroa.791.0.copyload.i = load i32, ptr %.sroa.791.0..sroa_idx.i, align 4, !tbaa !26
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.thread.i, %bb.o, %bb.n, %bb.l
  %.sroa.791.0.i = phi i32 [ %.sroa.791.0.copyload.i, %.thread.i ], [ %i.bb, %bb.o ], [ %i.bb, %bb.n ], [ %i.bb, %bb.l ]
  %.sroa.590.0.i = phi i32 [ %.sroa.590.0.copyload.i, %.thread.i ], [ %i.ar, %bb.o ], [ %i.ar, %bb.n ], [ %i.ar, %bb.l ]
  %.sroa.089.0.i = phi i32 [ %.sroa.089.0.copyload.i, %.thread.i ], [ %i.ah, %bb.o ], [ %i.ah, %bb.n ], [ %i.ah, %bb.l ]
  %.2.i = phi i32 [ %i.u, %.thread.i ], [ %i.bg, %bb.o ], [ %i.bf, %bb.n ], [ %.1.1.i, %bb.l ] ; 4 uses
  %.sroa.0.0.copyload.i = load i32, ptr %i.i, align 8 ; 2 uses
  %.sroa.5.0.copyload.i = load i32, ptr %.sroa.5.0..sroa_idx.i, align 4 ; 2 uses
  %.sroa.7.0.copyload.i = load i32, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !44
  %i.bj = and i32 %.2.i, 1
  %i.bk = sub nsw i32 %.sroa.089.0.i, %i.bj       ; 2 uses
  %i.bl = icmp slt i32 %i.bk, -1
  br i1 %i.bl, label %_Z7btClampIiEvRT_RKS0_S3_.exit.i, label %bb.p

bb.p:                                             ; preds = %.loopexit.i
  %i.bm = sdiv i32 %i.bk, 2
  %i.bn = add nsw i32 %.sroa.0.0.copyload.i, -1
  %spec.select.i = call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.bn)
  br label %_Z7btClampIiEvRT_RKS0_S3_.exit.i

_Z7btClampIiEvRT_RKS0_S3_.exit.i:                 ; preds = %bb.p, %.loopexit.i
  %.sroa.087.0.i = phi i32 [ %spec.select.i, %bb.p ], [ 0, %.loopexit.i ]
  %4 = lshr i32 %.2.i, 1
  %5 = and i32 %4, 1
  %6 = sub nsw i32 %.sroa.590.0.i, %5             ; 2 uses
  %i.bo = icmp slt i32 %6, -1
  br i1 %i.bo, label %_Z7btClampIiEvRT_RKS0_S3_.exit.1.i, label %bb.q

bb.q:                                             ; preds = %_Z7btClampIiEvRT_RKS0_S3_.exit.i
  %i.bp = sdiv i32 %6, 2
  %i.bq = add nsw i32 %.sroa.5.0.copyload.i, -1
  %spec.select98.i = call i32 @llvm.smin.i32(i32 %i.bp, i32 %i.bq)
  br label %_Z7btClampIiEvRT_RKS0_S3_.exit.1.i

_Z7btClampIiEvRT_RKS0_S3_.exit.1.i:               ; preds = %bb.q, %_Z7btClampIiEvRT_RKS0_S3_.exit.i
  %.sroa.588.0.i = phi i32 [ %spec.select98.i, %bb.q ], [ 0, %_Z7btClampIiEvRT_RKS0_S3_.exit.i ]
  %7 = lshr i32 %.2.i, 2
  %8 = and i32 %7, 1
  %9 = sub nsw i32 %.sroa.791.0.i, %8             ; 2 uses
  %i.br = icmp slt i32 %9, -1
  br i1 %i.br, label %_Z7btClampIiEvRT_RKS0_S3_.exit.2.i, label %bb.r

bb.r:                                             ; preds = %_Z7btClampIiEvRT_RKS0_S3_.exit.1.i
  %i.bs = sdiv i32 %9, 2
  %i.bt = add nsw i32 %.sroa.7.0.copyload.i, -1
  %spec.select99.i = call i32 @llvm.smin.i32(i32 %i.bs, i32 %i.bt)
  %i.bu = mul i32 %spec.select99.i, %.sroa.5.0.copyload.i
  br label %_Z7btClampIiEvRT_RKS0_S3_.exit.2.i

_Z7btClampIiEvRT_RKS0_S3_.exit.2.i:               ; preds = %bb.r, %_Z7btClampIiEvRT_RKS0_S3_.exit.1.i
  %.sroa.8.0.i = phi i32 [ %i.bu, %bb.r ], [ 0, %_Z7btClampIiEvRT_RKS0_S3_.exit.1.i ]
  %i.bv = load i32, ptr %i.j, align 4, !tbaa !64
  %i.bw = mul nsw i32 %i.bv, %.2.i
  %reass.add.i = add i32 %.sroa.8.0.i, %.sroa.588.0.i
  %reass.mul.i = mul i32 %reass.add.i, %.sroa.0.0.copyload.i
  %i.bx = add i32 %i.bw, %.sroa.087.0.i
  %i.by = add i32 %i.bx, %reass.mul.i
  %i.bz = getelementptr inbounds [4 x i8], ptr %i.l, i64 %indvars.iv.i
  store i32 %i.by, ptr %i.bz, align 4, !tbaa !26
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL30assignConstraintsToGridBatchesRK36AssignConstraintsToGridBatchesParamsii.exit, label %bb.b, !llvm.loop !178

_ZL30assignConstraintsToGridBatchesRK36AssignConstraintsToGridBatchesParamsii.exit: ; preds = %_Z7btClampIiEvRT_RKS0_S3_.exit.2.i, %bb.a
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN37UpdateConstraintBatchIdsForMergesLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 32) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK37UpdateConstraintBatchIdsForMergesLoop7forLoopEii(ptr noundef nonnull align 8 dereferenceable(28) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %4 = alloca %class.CProfileSample, align 1      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull @.str.7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.c ; 3 uses
  %i.e = sub i32 %2, %1                           ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !73   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  invoke void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.8)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.h = icmp sgt i32 %i.e, 0
  br i1 %i.h, label %.lr.ph.preheader.i, label %.loopexit

.lr.ph.preheader.i:                               ; preds = %.noexc
  %wide.trip.count.i = zext nneg i32 %i.e to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 1
  %i.i = icmp eq i32 %i.e, 1
  br i1 %i.i, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483646
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %bb.d ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter.next.1, %bb.d ]
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !26
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.l
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !74   ; 2 uses
  %.not.i = icmp eq i32 %i.o, -1
  br i1 %.not.i, label %.lr.ph.i.1, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  store i32 %i.o, ptr %i.j, align 4, !tbaa !26
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.b, %.lr.ph.i
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 4 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !26
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !74   ; 2 uses
  %.not.i.1 = icmp eq i32 %i.v, -1
  br i1 %.not.i.1, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.1
  store i32 %i.v, ptr %i.q, align 4, !tbaa !26
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i.1
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !179

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod6 = trunc i32 %i.e to i1
  call void @llvm.assume(i1 %lcmp.mod6)
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.epil.init ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !26
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.g, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !74 ; 2 uses
  %.not.i.epil = icmp eq i32 %i.ab, -1
  br i1 %.not.i.epil, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.epil.preheader
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !26
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.e, %.lr.ph.i.epil.preheader, %.noexc
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @_ZN14CProfileSampleD1Ev(ptr noundef nonnull align 1 dereferenceable(1) %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.ac
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN24ExpandConstraintRowsLoopD0Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 40) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK24ExpandConstraintRowsLoop7forLoopEii(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 {
bb.a:
  %3 = alloca %class.CProfileSample, align 1      ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !77
  %i.e = sext i32 %1 to i64                       ; 2 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !78
  %i.i = getelementptr inbounds [16 x i8], ptr %i.h, i64 %i.e
  %i.j = sub nsw i32 %2, %1                       ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  call void @_ZN14CProfileSampleC1EPKc(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull @.str.10)
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph18.preheader.i, label %_ZL20expandConstraintRowsPiPKiPK23btBatchedConstraintInfoii.exit

.lr.ph18.preheader.i:                             ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.j to i64
  br label %.lr.ph18.i

.lr.ph18.i:                                       ; preds = %._crit_edge.i, %.lr.ph18.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph18.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 3 uses
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.n = load i32, ptr %i.m, align 4, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !54
  %i.q = icmp sgt i32 %i.p, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.lr.ph18.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZL20expandConstraintRowsPiPKiPK23btBatchedConstraintInfoii.exit, label %.lr.ph18.i, !llvm.loop !180

.lr.ph.i:                                         ; preds = %.lr.ph18.i, %.lr.ph.i
  %.01415.i = phi i32 [ %i.v, %.lr.ph.i ], [ 0, %.lr.ph18.i ] ; 2 uses
  %i.r = load i32, ptr %i.l, align 4, !tbaa !53
  %i.s = add nsw i32 %i.r, %.01415.i
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  store i32 %i.n, ptr %i.u, align 4, !tbaa !26
  %i.v = add nuw nsw i32 %.01415.i, 1             ; 2 uses
  %i.w = load i32, ptr %i.o, align 4, !tbaa !54
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !181

_ZL20expandConstraintRowsPiPKiPK23btBatchedConstraintInfoii.exit: ; preds = %._crit_edge.i, %bb.a
end_hunk_0
