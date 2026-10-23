Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/abcSpeedup?download=true
inline.NumInlined: 319
inline.NumDeleted: 55
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 15
begin_hunk_0_@Abc_NtkSpeedup:bb.a
  br i1 %i.oz, label %.lr.ph437, label %.critedge21, !llvm.loop !98

.critedge21:                                      ; preds = %bb.cg, %bb.cb
  ret ptr %i.cb
}

declare i32 @Abc_NtkGetTotalFanins(ptr noundef) local_unnamed_addr #3

declare ptr @Abc_NtkStrash(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Abc_NtkPowerEstimate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %.val39 = load ptr, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr i8, ptr %.val39, i64 4
  %.val39.val = load i32, ptr %i.b, align 4, !tbaa !47 ; 5 uses
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 5 uses
  %i.d = add i32 %.val39.val, -1
  %or.cond.i.i = icmp ult i32 %i.d, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val39.val ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.c, align 8, !tbaa !51
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !52
  store i32 %.val39.val, ptr %i.e, align 4, !tbaa !50
  br label %Vec_IntStart.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #18 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !52
  store i32 %.val39.val, ptr %i.e, align 4, !tbaa !50
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStart.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %.val39.val to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 0, i64 %i.l, i1 false)
  br label %Vec_IntStart.exit

Vec_IntStart.exit:                                ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %i.m = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ]
  %i.n = tail call ptr @Abc_NtkStrash(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #17 ; 2 uses
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !35   ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val3844 = load i32, ptr %i.p, align 4, !tbaa !47
  %i.q = icmp sgt i32 %.val3844, 0
  br i1 %i.q, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntStart.exit, %bb.e
  %i.r = phi ptr [ %i.af, %bb.e ], [ %i.o, %Vec_IntStart.exit ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.e ], [ 0, %Vec_IntStart.exit ] ; 2 uses
  %i.s = getelementptr i8, ptr %i.r, i64 8
  %.val41.val = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val41.val, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 72 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !49
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = and i64 %i.y, -2
  %i.aa = inttoptr i64 %i.z to ptr
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 15
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.w, align 8, !tbaa !49
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !35
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.d, %bb.c
  %i.af = phi ptr [ %i.r, %.lr.ph ], [ %.pre, %bb.d ], [ %i.r, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 4
  %.val38 = load i32, ptr %i.ag, align 4, !tbaa !47
  %i.ah = sext i32 %.val38 to i64
  %i.ai = icmp slt i64 %indvars.iv.next, %i.ah
  br i1 %i.ai, label %.lr.ph, label %.critedge, !llvm.loop !99

.critedge:                                        ; preds = %bb.e, %Vec_IntStart.exit
  %i.aj = getelementptr i8, ptr %0, i64 128
  %.val42 = load i32, ptr %i.aj, align 8, !tbaa !39
  %i.ak = icmp sgt i32 %.val42, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = tail call ptr @Abc_NtkToDar(ptr noundef %i.n, i32 noundef 0, i32 noundef %i.al) #17 ; 2 uses
  %i.an = tail call ptr @Saig_ManComputeSwitchProbs(ptr noundef %i.am, i32 noundef 48, i32 noundef 16, i32 noundef %1) #17 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 3 uses
  %i.aq = load ptr, ptr %i.a, align 8, !tbaa !35  ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.val = load i32, ptr %i.ar, align 4, !tbaa !47 ; 2 uses
  %i.as = icmp sgt i32 %.val, 0
  br i1 %i.as, label %.lr.ph47, label %.critedge2

.lr.ph47:                                         ; preds = %.critedge
  %i.at = getelementptr i8, ptr %i.aq, i64 8
  %.val40.val = load ptr, ptr %i.at, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph47, %bb.j
  %indvars.iv49 = phi i64 [ 0, %.lr.ph47 ], [ %indvars.iv.next50, %bb.j ] ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.val40.val, i64 %indvars.iv49
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !40 ; 3 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 72
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !49
  %i.az = ptrtoint ptr %i.ay to i64
  %i.ba = and i64 %i.az, -2                       ; 2 uses
  %.not = icmp eq i64 %i.ba, 0
  br i1 %.not, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bb = inttoptr i64 %i.ba to ptr
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 72
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !49
  %i.be = ptrtoint ptr %i.bd to i64
  %i.bf = and i64 %i.be, -2                       ; 2 uses
  %.not37 = icmp eq i64 %i.bf, 0
  br i1 %.not37, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = inttoptr i64 %i.bf to ptr
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 36
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !103
  %i.bj = sext i32 %i.bi to i64
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %i.bj
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !41
  %i.bo = sext i32 %i.bn to i64
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.bo
  store float %i.bl, ptr %i.bp, align 4, !tbaa !43
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.i, %bb.h, %bb.g
  %indvars.iv.next50 = add nuw nsw i64 %indvars.iv49, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next50, %wide.trip.count
  br i1 %exitcond.not, label %.critedge2, label %bb.f, !llvm.loop !100

.critedge2:                                       ; preds = %bb.j, %.critedge
  %.not.i43 = icmp eq ptr %i.ap, null
  br i1 %.not.i43, label %Vec_IntFree.exit, label %bb.k

bb.k:                                             ; preds = %.critedge2
  tail call void @free(ptr noundef nonnull %i.ap) #17
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %.critedge2, %bb.k
  tail call void @free(ptr noundef nonnull %i.an) #17
  tail call void @Aig_ManStop(ptr noundef %i.am) #17
  tail call void @Abc_NtkDelete(ptr noundef %i.n) #17
  ret ptr %i.c
}

declare ptr @Abc_NtkToDar(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @Saig_ManComputeSwitchProbs(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @Aig_ManStop(ptr noundef) local_unnamed_addr #3

declare void @Abc_NtkDelete(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define void @Abc_NtkPowerPrint(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !35   ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 4
  %.val = load i32, ptr %i.e, align 4, !tbaa !47  ; 2 uses
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val59.val = load ptr, ptr %i.g, align 8, !tbaa !38
  %wide.trip.count = zext nneg i32 %.val to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 3 uses
  %i.h = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ay, %bb.o ] ; 7 uses
  %i.i = phi i32 [ 0, %.lr.ph ], [ %i.az, %bb.o ] ; 7 uses
  %i.j = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ba, %bb.o ] ; 7 uses
  %i.k = phi i32 [ 0, %.lr.ph ], [ %i.bb, %bb.o ] ; 7 uses
  %i.l = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bc, %bb.o ] ; 7 uses
  %i.m = phi i32 [ 0, %.lr.ph ], [ %i.bd, %bb.o ] ; 7 uses
  %i.n = phi float [ 0.000000e+00, %.lr.ph ], [ %i.be, %bb.o ] ; 7 uses
  %i.o = phi i32 [ 0, %.lr.ph ], [ %i.bf, %bb.o ] ; 7 uses
  %i.p = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bg, %bb.o ] ; 7 uses
  %2 = phi i32 [ 0, %.lr.ph ], [ %i.bh, %bb.o ]   ; 7 uses
  %3 = phi i32 [ 0, %.lr.ph ], [ %25, %bb.o ]     ; 8 uses
  %4 = phi i32 [ 0, %.lr.ph ], [ %24, %bb.o ]     ; 8 uses
  %5 = phi i32 [ 0, %.lr.ph ], [ %23, %bb.o ]     ; 8 uses
  %6 = phi i32 [ 0, %.lr.ph ], [ %22, %bb.o ]     ; 8 uses
  %7 = phi i32 [ 0, %.lr.ph ], [ %21, %bb.o ]     ; 8 uses
  %i.q = phi i32 [ 0, %.lr.ph ], [ %20, %bb.o ]   ; 8 uses
  %8 = phi float [ 0.000000e+00, %.lr.ph ], [ %19, %bb.o ] ; 8 uses
  %9 = phi float [ 0.000000e+00, %.lr.ph ], [ %18, %bb.o ] ; 8 uses
  %10 = phi float [ 0.000000e+00, %.lr.ph ], [ %17, %bb.o ] ; 8 uses
  %11 = phi float [ 0.000000e+00, %.lr.ph ], [ %16, %bb.o ] ; 8 uses
  %12 = phi float [ 0.000000e+00, %.lr.ph ], [ %15, %bb.o ] ; 8 uses
  %13 = phi float [ 0.000000e+00, %.lr.ph ], [ %14, %bb.o ] ; 8 uses
  %.070 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.o ]  ; 3 uses
  %.04869 = phi i32 [ 0, %.lr.ph ], [ %.149, %bb.o ] ; 3 uses
  %.05267 = phi float [ 0.000000e+00, %.lr.ph ], [ %.153, %bb.o ] ; 3 uses
  %i.r = phi i32 [ 0, %.lr.ph ], [ %i.bj, %bb.o ] ; 7 uses
  %i.s = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bi, %bb.o ] ; 7 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %.val59.val, i64 %indvars.iv
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !40   ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr i8, ptr %i.u, i64 20
  %.val60 = load i32, ptr %i.w, align 4
  %i.x = and i32 %.val60, 15
  switch i32 %i.x, label %bb.o [
    i32 7, label %bb.d
    i32 2, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.y = add nsw i32 %.04869, 1                   ; 6 uses
  %i.z = getelementptr i8, ptr %i.u, i64 44
  %.val62 = load i32, ptr %i.z, align 4, !tbaa !56 ; 2 uses
  %i.aa = add nsw i32 %.val62, %.070              ; 6 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !43 ; 3 uses
  %i.ad = sitofp i32 %.val62 to float
  %i.ae = fmul float %i.ac, %i.ad                 ; 7 uses
  %i.af = fadd float %.05267, %i.ae               ; 6 uses
  %i.ag = fpext float %i.ac to double             ; 4 uses
  %i.ah = fcmp ult float %i.ac, 5.000000e-01
  br i1 %i.ah, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ai = add nsw i32 %i.q, 1                     ; 2 uses
  %i.aj = fadd float %13, %i.ae                   ; 2 uses
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  %i.ak = fcmp ult double %i.ag, 4.000000e-01
  br i1 %i.ak, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = add nsw i32 %7, 1                       ; 2 uses
  %i.am = fadd float %12, %i.ae                   ; 2 uses
  br label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.an = fcmp ult double %i.ag, 3.000000e-01
  br i1 %i.an, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %6, 1                       ; 2 uses
  %i.ap = fadd float %11, %i.ae                   ; 2 uses
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  %i.aq = fcmp ult double %i.ag, 2.000000e-01
  br i1 %i.aq, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = add nsw i32 %5, 1                       ; 2 uses
  %i.as = fadd float %10, %i.ae                   ; 2 uses
  br label %bb.o

bb.l:                                             ; preds = %bb.j
  %i.at = fcmp ult double %i.ag, 1.000000e-01
  br i1 %i.at, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = add nsw i32 %4, 1                       ; 2 uses
  %i.av = fadd float %9, %i.ae                    ; 2 uses
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.aw = add nsw i32 %3, 1                       ; 2 uses
  %i.ax = fadd float %8, %i.ae                    ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.c, %bb.b, %bb.g, %bb.k, %bb.n, %bb.m, %bb.i, %bb.e
  %i.ay = phi float [ %i.h, %bb.b ], [ %i.h, %bb.e ], [ %i.h, %bb.g ], [ %i.h, %bb.i ], [ %i.h, %bb.k ], [ %i.av, %bb.m ], [ %i.h, %bb.n ], [ %i.h, %bb.c ] ; 2 uses
  %i.az = phi i32 [ %i.i, %bb.b ], [ %i.i, %bb.e ], [ %i.i, %bb.g ], [ %i.i, %bb.i ], [ %i.i, %bb.k ], [ %i.au, %bb.m ], [ %i.i, %bb.n ], [ %i.i, %bb.c ] ; 2 uses
  %i.ba = phi float [ %i.j, %bb.b ], [ %i.j, %bb.e ], [ %i.j, %bb.g ], [ %i.j, %bb.i ], [ %i.as, %bb.k ], [ %i.j, %bb.m ], [ %i.j, %bb.n ], [ %i.j, %bb.c ] ; 2 uses
  %i.bb = phi i32 [ %i.k, %bb.b ], [ %i.k, %bb.e ], [ %i.k, %bb.g ], [ %i.k, %bb.i ], [ %i.ar, %bb.k ], [ %i.k, %bb.m ], [ %i.k, %bb.n ], [ %i.k, %bb.c ] ; 2 uses
  %i.bc = phi float [ %i.l, %bb.b ], [ %i.l, %bb.e ], [ %i.l, %bb.g ], [ %i.ap, %bb.i ], [ %i.l, %bb.k ], [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %i.l, %bb.c ] ; 2 uses
  %i.bd = phi i32 [ %i.m, %bb.b ], [ %i.m, %bb.e ], [ %i.m, %bb.g ], [ %i.ao, %bb.i ], [ %i.m, %bb.k ], [ %i.m, %bb.m ], [ %i.m, %bb.n ], [ %i.m, %bb.c ] ; 2 uses
  %i.be = phi float [ %i.n, %bb.b ], [ %i.n, %bb.e ], [ %i.am, %bb.g ], [ %i.n, %bb.i ], [ %i.n, %bb.k ], [ %i.n, %bb.m ], [ %i.n, %bb.n ], [ %i.n, %bb.c ] ; 2 uses
  %i.bf = phi i32 [ %i.o, %bb.b ], [ %i.o, %bb.e ], [ %i.al, %bb.g ], [ %i.o, %bb.i ], [ %i.o, %bb.k ], [ %i.o, %bb.m ], [ %i.o, %bb.n ], [ %i.o, %bb.c ] ; 2 uses
  %i.bg = phi float [ %i.p, %bb.b ], [ %i.aj, %bb.e ], [ %i.p, %bb.g ], [ %i.p, %bb.i ], [ %i.p, %bb.k ], [ %i.p, %bb.m ], [ %i.p, %bb.n ], [ %i.p, %bb.c ] ; 2 uses
  %i.bh = phi i32 [ %2, %bb.b ], [ %i.ai, %bb.e ], [ %2, %bb.g ], [ %2, %bb.i ], [ %2, %bb.k ], [ %2, %bb.m ], [ %2, %bb.n ], [ %2, %bb.c ] ; 2 uses
  %i.bi = phi float [ %i.s, %bb.b ], [ %i.s, %bb.e ], [ %i.s, %bb.g ], [ %i.s, %bb.i ], [ %i.s, %bb.k ], [ %i.s, %bb.m ], [ %i.ax, %bb.n ], [ %i.s, %bb.c ] ; 2 uses
  %i.bj = phi i32 [ %i.r, %bb.b ], [ %i.r, %bb.e ], [ %i.r, %bb.g ], [ %i.r, %bb.i ], [ %i.r, %bb.k ], [ %i.r, %bb.m ], [ %i.aw, %bb.n ], [ %i.r, %bb.c ] ; 2 uses
  %.153 = phi float [ %.05267, %bb.b ], [ %i.af, %bb.e ], [ %i.af, %bb.g ], [ %i.af, %bb.i ], [ %i.af, %bb.k ], [ %i.af, %bb.m ], [ %i.af, %bb.n ], [ %.05267, %bb.c ] ; 2 uses
  %.149 = phi i32 [ %.04869, %bb.b ], [ %i.y, %bb.e ], [ %i.y, %bb.g ], [ %i.y, %bb.i ], [ %i.y, %bb.k ], [ %i.y, %bb.m ], [ %i.y, %bb.n ], [ %.04869, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %.070, %bb.b ], [ %i.aa, %bb.e ], [ %i.aa, %bb.g ], [ %i.aa, %bb.i ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.n ], [ %.070, %bb.c ] ; 2 uses
  %14 = phi float [ %13, %bb.b ], [ %i.aj, %bb.e ], [ %13, %bb.g ], [ %13, %bb.i ], [ %13, %bb.k ], [ %13, %bb.m ], [ %13, %bb.n ], [ %13, %bb.c ]
  %15 = phi float [ %12, %bb.b ], [ %12, %bb.e ], [ %i.am, %bb.g ], [ %12, %bb.i ], [ %12, %bb.k ], [ %12, %bb.m ], [ %12, %bb.n ], [ %12, %bb.c ]
  %16 = phi float [ %11, %bb.b ], [ %11, %bb.e ], [ %11, %bb.g ], [ %i.ap, %bb.i ], [ %11, %bb.k ], [ %11, %bb.m ], [ %11, %bb.n ], [ %11, %bb.c ]
  %17 = phi float [ %10, %bb.b ], [ %10, %bb.e ], [ %10, %bb.g ], [ %10, %bb.i ], [ %i.as, %bb.k ], [ %10, %bb.m ], [ %10, %bb.n ], [ %10, %bb.c ]
  %18 = phi float [ %9, %bb.b ], [ %9, %bb.e ], [ %9, %bb.g ], [ %9, %bb.i ], [ %9, %bb.k ], [ %i.av, %bb.m ], [ %9, %bb.n ], [ %9, %bb.c ]
  %19 = phi float [ %8, %bb.b ], [ %8, %bb.e ], [ %8, %bb.g ], [ %8, %bb.i ], [ %8, %bb.k ], [ %8, %bb.m ], [ %i.ax, %bb.n ], [ %8, %bb.c ]
  %20 = phi i32 [ %i.q, %bb.b ], [ %i.ai, %bb.e ], [ %i.q, %bb.g ], [ %i.q, %bb.i ], [ %i.q, %bb.k ], [ %i.q, %bb.m ], [ %i.q, %bb.n ], [ %i.q, %bb.c ]
  %21 = phi i32 [ %7, %bb.b ], [ %7, %bb.e ], [ %i.al, %bb.g ], [ %7, %bb.i ], [ %7, %bb.k ], [ %7, %bb.m ], [ %7, %bb.n ], [ %7, %bb.c ]
  %22 = phi i32 [ %6, %bb.b ], [ %6, %bb.e ], [ %6, %bb.g ], [ %i.ao, %bb.i ], [ %6, %bb.k ], [ %6, %bb.m ], [ %6, %bb.n ], [ %6, %bb.c ]
  %23 = phi i32 [ %5, %bb.b ], [ %5, %bb.e ], [ %5, %bb.g ], [ %5, %bb.i ], [ %i.ar, %bb.k ], [ %5, %bb.m ], [ %5, %bb.n ], [ %5, %bb.c ]
  %24 = phi i32 [ %4, %bb.b ], [ %4, %bb.e ], [ %4, %bb.g ], [ %4, %bb.i ], [ %4, %bb.k ], [ %i.au, %bb.m ], [ %4, %bb.n ], [ %4, %bb.c ]
  %25 = phi i32 [ %3, %bb.b ], [ %3, %bb.e ], [ %3, %bb.g ], [ %3, %bb.i ], [ %3, %bb.k ], [ %3, %bb.m ], [ %i.aw, %bb.n ], [ %3, %bb.c ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %..critedge_crit_edge, label %bb.b, !llvm.loop !104

..critedge_crit_edge:                             ; preds = %bb.o
  %i.bk = sitofp i32 %.149 to double
  %i.bl = sitofp i32 %i.bj to double
  %i.bm = sitofp i32 %i.az to double
  %i.bn = insertelement <2 x double> poison, double %i.bl, i64 0
  %i.bo = insertelement <2 x double> %i.bn, double %i.bm, i64 1
  %i.bp = fmul nnan <2 x double> %i.bo, splat (double 1.000000e+02)
  %i.bq = sitofp i32 %i.bb to double
  %i.br = sitofp i32 %i.bd to double
  %i.bs = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %i.br, i64 1
  %i.bu = fmul nnan <2 x double> %i.bt, splat (double 1.000000e+02)
  %i.bv = sitofp i32 %i.bf to double
  %i.bw = sitofp i32 %i.bh to double
  %i.bx = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.bw, i64 1
  %i.bz = fmul nnan <2 x double> %i.by, splat (double 1.000000e+02)
  %i.ca = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.ay, i64 1
  %i.cc = fpext <2 x float> %i.cb to <2 x double>
  %i.cd = fmul <2 x double> %i.cc, splat (double 1.000000e+02)
  %i.ce = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.bc, i64 1
  %i.cg = fpext <2 x float> %i.cf to <2 x double>
  %i.ch = fmul <2 x double> %i.cg, splat (double 1.000000e+02)
  %i.ci = insertelement <2 x float> poison, float %i.be, i64 0
  %i.cj = insertelement <2 x float> %i.ci, float %i.bg, i64 1
  %i.ck = fpext <2 x float> %i.cj to <2 x double>
  %i.cl = fmul <2 x double> %i.ck, splat (double 1.000000e+02)
  br label %.critedge

.critedge:                                        ; preds = %..critedge_crit_edge, %bb.a
  %.052.lcssa = phi float [ %.153, %..critedge_crit_edge ], [ 0.000000e+00, %bb.a ] ; 2 uses
  %.048.lcssa = phi double [ %i.bk, %..critedge_crit_edge ], [ 0.000000e+00, %bb.a ]
  %.0.lcssa = phi i32 [ %.1, %..critedge_crit_edge ], [ 0, %bb.a ] ; 2 uses
  %i.cm = phi <2 x double> [ %i.bp, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.cn = phi <2 x double> [ %i.bu, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.co = phi <2 x double> [ %i.bz, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.cp = phi <2 x double> [ %i.cd, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.cq = phi <2 x double> [ %i.ch, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.cr = phi <2 x double> [ %i.cl, %..critedge_crit_edge ], [ zeroinitializer, %bb.a ]
  %i.cs = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) ; 0 uses
  %i.ct = insertelement <2 x double> poison, double %.048.lcssa, i64 0
  %i.cu = shufflevector <2 x double> %i.ct, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.cv = fdiv <2 x double> %i.cm, %i.cu          ; 2 uses
  %i.cw = extractelement <2 x double> %i.cv, i64 0
  %i.cx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 0, i32 noundef 1, double noundef %i.cw) ; 0 uses
  %i.cy = extractelement <2 x double> %i.cv, i64 1
  %i.cz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 1, i32 noundef 2, double noundef %i.cy) ; 0 uses
  %i.da = fdiv <2 x double> %i.cn, %i.cu          ; 2 uses
  %i.db = extractelement <2 x double> %i.da, i64 0
  %i.dc = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 2, i32 noundef 3, double noundef %i.db) ; 0 uses
  %i.dd = extractelement <2 x double> %i.da, i64 1
  %i.de = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 3, i32 noundef 4, double noundef %i.dd) ; 0 uses
  %i.df = fdiv <2 x double> %i.co, %i.cu          ; 2 uses
  %i.dg = extractelement <2 x double> %i.df, i64 0
  %i.dh = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 4, i32 noundef 5, double noundef %i.dg) ; 0 uses
  %i.di = extractelement <2 x double> %i.df, i64 1
  %i.dj = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18, i32 noundef 5, i32 noundef 6, double noundef %i.di) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %i.dk = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19) ; 0 uses
  %i.dl = fpext float %.052.lcssa to double       ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.dn = shufflevector <2 x double> %i.dm, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.do = fdiv <2 x double> %i.cp, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x double> %i.do, i64 0
  %i.dq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 0, i32 noundef 1, double noundef %i.dp) ; 0 uses
  %i.dr = extractelement <2 x double> %i.do, i64 1
  %i.ds = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 1, i32 noundef 2, double noundef %i.dr) ; 0 uses
  %i.dt = fdiv <2 x double> %i.cq, %i.dn          ; 2 uses
  %i.du = extractelement <2 x double> %i.dt, i64 0
  %i.dv = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 2, i32 noundef 3, double noundef %i.du) ; 0 uses
  %i.dw = extractelement <2 x double> %i.dt, i64 1
  %i.dx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 3, i32 noundef 4, double noundef %i.dw) ; 0 uses
  %i.dy = fdiv <2 x double> %i.cr, %i.dn          ; 2 uses
  %i.dz = extractelement <2 x double> %i.dy, i64 0
  %i.ea = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 4, i32 noundef 5, double noundef %i.dz) ; 0 uses
  %i.eb = extractelement <2 x double> %i.dy, i64 1
  %i.ec = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef 5, i32 noundef 6, double noundef %i.eb) ; 0 uses
  %putchar56 = tail call i32 @putchar(i32 10)     ; 0 uses
  %i.ed = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, double noundef %i.dl) ; 0 uses
  %i.ee = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, i32 noundef %.0.lcssa) ; 0 uses
  %i.ef = sitofp i32 %.0.lcssa to float
  %i.eg = fdiv float %.052.lcssa, %i.ef
  %i.eh = fpext float %i.eg to double
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23, double noundef %i.eh) ; 0 uses
  %putchar57 = tail call i32 @putchar(i32 10)     ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @Abc_NtkPowerCriticalEdges(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, float noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %i.c = getelementptr i8, ptr %1, i64 28
  %.val = load i32, ptr %i.c, align 4, !tbaa !19  ; 4 uses
  %i.d = icmp sgt i32 %.val, 0
  br i1 %i.d, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %.val12 = load ptr, ptr %1, align 8, !tbaa !20
  %i.e = getelementptr i8, ptr %1, i64 32
  %.val13 = load ptr, ptr %i.e, align 8, !tbaa !21 ; 3 uses
  %i.f = getelementptr i8, ptr %.val12, i64 32
  %.val12.val = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr i8, ptr %.val12.val, i64 8
  %.val12.val.val = load ptr, ptr %i.g, align 8, !tbaa !38 ; 3 uses
  %wide.trip.count = zext nneg i32 %.val to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.h = icmp eq i32 %.val, 1
  br i1 %i.h, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.b ] ; 4 uses
  %.01114 = phi i32 [ 0, %.lr.ph.new ], [ %.1.1, %bb.b ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !39
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %.val12.val.val, i64 %i.k
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load i32, ptr %i.n, align 8, !tbaa !41
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.p
  %i.r = load float, ptr %i.q, align 4, !tbaa !43
  %i.s = fcmp ult float %i.r, %2
  %i.t = trunc nuw nsw i64 %indvars.iv to i32
  %i.u = shl nuw i32 1, %i.t
  %i.v = select i1 %i.s, i32 0, i32 %i.u
  %.1 = or i32 %i.v, %.01114
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !39
  %i.y = sext i32 %i.x to i64
  %i.z = getelementptr inbounds [8 x i8], ptr %.val12.val.val, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !41
  %i.ad = sext i32 %i.ac to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ad
  %i.af = load float, ptr %i.ae, align 4, !tbaa !43
  %i.ag = fcmp ult float %i.af, %2
  %i.ah = trunc nuw nsw i64 %indvars.iv.next to i32
  %i.ai = shl nuw i32 1, %i.ah
  %i.aj = select i1 %i.ag, i32 0, i32 %i.ai
  %.1.1 = or i32 %i.aj, %.1                       ; 3 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.critedge.loopexit.unr-lcssa, label %bb.b, !llvm.loop !4

.critedge.loopexit.unr-lcssa:                     ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.1, %.critedge.loopexit.unr-lcssa ] ; 2 uses
  %.01114.epil.init = phi i32 [ 0, %.lr.ph ], [ %.1.1, %.critedge.loopexit.unr-lcssa ]
  %lcmp.mod18 = trunc i32 %.val to i1
  tail call void @llvm.assume(i1 %lcmp.mod18)
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.val13, i64 %indvars.iv.epil.init
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !39
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [8 x i8], ptr %.val12.val.val, i64 %i.am
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !40
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !41
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.ar
  %i.at = load float, ptr %i.as, align 4, !tbaa !43
  %i.au = fcmp ult float %i.at, %2
  %i.av = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.aw = shl nuw i32 1, %i.av
  %i.ax = select i1 %i.au, i32 0, i32 %i.aw
  %.1.epil = or i32 %i.ax, %.01114.epil.init
  br label %.critedge

.critedge:                                        ; preds = %.epil.preheader, %.critedge.loopexit.unr-lcssa, %bb.a
  %.011.lcssa = phi i32 [ 0, %bb.a ], [ %.1.1, %.critedge.loopexit.unr-lcssa ], [ %.1.epil, %.epil.preheader ]
  ret i32 %.011.lcssa
}

; Function Attrs: nounwind uwtable
define ptr @Abc_NtkPowerdown(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = sitofp i32 %2 to double
  %i.b = fdiv double %i.a, 1.000000e+02
  %i.c = fsub double 5.000000e-01, %i.b
  %i.d = fptrunc double %i.c to float             ; 4 uses
  %i.e = tail call ptr @Abc_NtkPowerEstimate(ptr noundef %0, i32 noundef 0) ; 3 uses
end_hunk_0
