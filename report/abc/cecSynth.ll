Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSynth?download=true
inline.NumInlined: 177
inline.NumDeleted: 49
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cec_SequentialSynthesisPart:.critedge
  call void @free(ptr noundef nonnull %i.ci) #21
  store ptr null, ptr %i.a, align 8, !tbaa !43
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val78 = load i32, ptr %i.o, align 4, !tbaa !73
  %i.cj = sext i32 %.val78 to i64
  %i.ck = icmp slt i64 %indvars.iv.next, %i.cj
  br i1 %i.ck, label %bb.b, label %.critedge2.loopexit, !llvm.loop !66

.critedge2.loopexit:                              ; preds = %bb.o
  %.val19.i.pre = load i32, ptr %i.k, align 8, !tbaa !42 ; 2 uses
  %.pre98 = sext i32 %.val19.i.pre to i64
  br label %.critedge2

.critedge2:                                       ; preds = %.critedge2.loopexit, %Abc_Clock.exit
  %.pre-phi = phi i64 [ %.pre98, %.critedge2.loopexit ], [ %i.l, %Abc_Clock.exit ]
  %.val19.i = phi i32 [ %.val19.i.pre, %.critedge2.loopexit ], [ %.val77, %Abc_Clock.exit ]
  %i.cl = call noalias ptr @calloc(i64 noundef %.pre-phi, i64 noundef 4) #24
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  store ptr %i.cl, ptr %i.cm, align 8, !tbaa !45
  %i.cn = icmp sgt i32 %.val19.i, 0
  br i1 %i.cn, label %.lr.ph.i82, label %Gia_ManNormalizeEquivalences.exit

.preheader.i85:                                   ; preds = %.lr.ph.i82
  %i.co = icmp sgt i32 %.val18.i, 0
  br i1 %i.co, label %.lr.ph27.i, label %Gia_ManNormalizeEquivalences.exit

.lr.ph.i82:                                       ; preds = %.critedge2, %.lr.ph.i82
  %indvars.iv.i83 = phi i64 [ %indvars.iv.next.i84, %.lr.ph.i82 ], [ 0, %.critedge2 ] ; 2 uses
  %.val21.i = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %indvars.iv.i83 ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = or i32 %i.cq, 268435455
  store i32 %i.cr, ptr %i.cp, align 4
  %indvars.iv.next.i84 = add nuw nsw i64 %indvars.iv.i83, 1 ; 2 uses
  %.val18.i = load i32, ptr %i.k, align 8, !tbaa !42 ; 3 uses
  %i.cs = sext i32 %.val18.i to i64
  %i.ct = icmp slt i64 %indvars.iv.next.i84, %i.cs
  br i1 %i.ct, label %.lr.ph.i82, label %.preheader.i85, !llvm.loop !1

.lr.ph27.i:                                       ; preds = %.preheader.i85, %bb.p
  %.val35.i = phi i32 [ %.val.i86, %bb.p ], [ %.val18.i, %.preheader.i85 ]
  %indvars.iv31.i = phi i64 [ %indvars.iv.next32.i, %bb.p ], [ 0, %.preheader.i85 ] ; 4 uses
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv31.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !11
  %i.cw = icmp eq i32 %i.cv, -1
  br i1 %i.cw, label %bb.p, label %tailrecurse.i.preheader.i

tailrecurse.i.preheader.i:                        ; preds = %.lr.ph27.i
  %i.cx = trunc nuw nsw i64 %indvars.iv31.i to i32
  br label %tailrecurse.i.i

tailrecurse.i.i:                                  ; preds = %tailrecurse.i.i, %tailrecurse.i.preheader.i
  %.tr9.i.i = phi i32 [ %i.da, %tailrecurse.i.i ], [ %i.cx, %tailrecurse.i.preheader.i ] ; 2 uses
  %i.cy = sext i32 %.tr9.i.i to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !11 ; 3 uses
  switch i32 %i.da, label %tailrecurse.i.i [
    i32 0, label %Gia_ManFindRepr_rec.exit.i
    i32 -1, label %Gia_ManFindRepr_rec.exit.loopexit.i
  ]

Gia_ManFindRepr_rec.exit.loopexit.i:              ; preds = %tailrecurse.i.i
  %i.db = and i32 %.tr9.i.i, 268435455
  br label %Gia_ManFindRepr_rec.exit.i

Gia_ManFindRepr_rec.exit.i:                       ; preds = %tailrecurse.i.i, %Gia_ManFindRepr_rec.exit.loopexit.i
  %.0.i.i = phi i32 [ %i.db, %Gia_ManFindRepr_rec.exit.loopexit.i ], [ %i.da, %tailrecurse.i.i ]
  %.val20.i = load ptr, ptr %i.cm, align 8, !tbaa !45
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.val20.i, i64 %indvars.iv31.i ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4
  %i.de = and i32 %i.dd, -268435456
  %i.df = or disjoint i32 %i.de, %.0.i.i
  store i32 %i.df, ptr %i.dc, align 4
  %.val.pre.i = load i32, ptr %i.k, align 8, !tbaa !42
  br label %bb.p

bb.p:                                             ; preds = %Gia_ManFindRepr_rec.exit.i, %.lr.ph27.i
  %.val.i86 = phi i32 [ %.val35.i, %.lr.ph27.i ], [ %.val.pre.i, %Gia_ManFindRepr_rec.exit.i ] ; 2 uses
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %i.dg = sext i32 %.val.i86 to i64
  %i.dh = icmp slt i64 %indvars.iv.next32.i, %i.dg
  br i1 %i.dh, label %.lr.ph27.i, label %Gia_ManNormalizeEquivalences.exit.thread, !llvm.loop !2

Gia_ManNormalizeEquivalences.exit.thread:         ; preds = %bb.p
  %i.di = call ptr @Gia_ManDeriveNexts(ptr noundef nonnull %0) #21
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.di, ptr %i.dj, align 8, !tbaa !46
  br label %bb.q

Gia_ManNormalizeEquivalences.exit:                ; preds = %.critedge2, %.preheader.i85
  %i.dk = call ptr @Gia_ManDeriveNexts(ptr noundef nonnull %0) #21
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !46
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %Gia_ManNormalizeEquivalences.exit.thread, %Gia_ManNormalizeEquivalences.exit
  call void @free(ptr noundef nonnull %i.n) #21
  br label %bb.r

bb.r:                                             ; preds = %Gia_ManNormalizeEquivalences.exit, %bb.q
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !13
  %.not70 = icmp eq i32 %i.dn, 0
  br i1 %.not70, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.do = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #21
  %i.dp = icmp slt i32 %i.do, 0
  br i1 %i.dp, label %Abc_Clock.exit88, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dq = load i64, ptr %2, align 8, !tbaa !69
  %i.dr = mul nsw i64 %i.dq, 1000000
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !70
  %i.du = sdiv i64 %i.dt, 1000
  %i.dv = add nsw i64 %i.du, %i.dr
  br label %Abc_Clock.exit88

Abc_Clock.exit88:                                 ; preds = %bb.s, %bb.t
  %.0.i87 = phi i64 [ %i.dv, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.dw = add i64 %.0.i87, %.0.i.neg
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.4)
  %i.dx = sitofp i64 %i.dw to double
  %i.dy = fdiv double %i.dx, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.10, double noundef %i.dy)
  br label %bb.u

bb.u:                                             ; preds = %Abc_Clock.exit88, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 1
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @Abc_Print(i32 %0, ptr noundef %1, ...) unnamed_addr #6 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.a = load i32, ptr @enable_dbg_outs, align 4, !tbaa !11
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 (...) @Abc_FrameIsBridgeMode() #21 ; 0 uses
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.c = call i32 (...) @Abc_FrameIsBridgeMode() #21
  %.not9 = icmp eq i32 %i.c, 0
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call ptr @vnsprintf(ptr noundef %1, ptr noundef nonnull %2) #21 ; 3 uses
  %i.e = load ptr, ptr @stdout, align 8, !tbaa !93
  %i.f = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #25
  %i.g = trunc i64 %i.f to i32
  %i.h = call i32 @Gia_ManToBridgeText(ptr noundef %i.e, i32 noundef %i.g, ptr noundef nonnull %i.d) #21 ; 0 uses
  call void @free(ptr noundef %i.d) #21
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.i = load ptr, ptr @stdout, align 8, !tbaa !93, !noalias !94
  %i.j = call i32 @vfprintf(ptr noundef %i.i, ptr noundef %1, ptr noundef nonnull %2) #21, !inline_history !91 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  ret void
}

declare void @Gia_ManStop(ptr noundef) local_unnamed_addr #5

declare void @Cec_ManCorSetDefaultParams(ptr noundef) local_unnamed_addr #5

declare i32 @Cec_ManLSCorrespondenceClasses(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @Gia_ManSeqCleanupClasses(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define i32 @Gia_ManTestOnePair(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [2 x i32], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i64 1, ptr %i.a, align 8
  %i.b = tail call ptr @sat_solver_new() #21      ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 24
  %.val24 = load i32, ptr %i.c, align 8, !tbaa !42 ; 5 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #22 ; 8 uses
  %i.e = add i32 %.val24, -1
  %or.cond.i.i = icmp ult i32 %i.e, 15
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 16, i32 %.val24 ; 3 uses
  %4 = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  store i32 %spec.store.select.i.i, ptr %i.d, align 8, !tbaa !44
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_IntAlloc.exit.thread.i, label %Vec_IntAlloc.exit.i

Vec_IntAlloc.exit.thread.i:                       ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr null, ptr %i.f, align 8, !tbaa !18
  store i32 %.val24, ptr %4, align 4, !tbaa !17
  br label %Vec_IntStartFull.exit

Vec_IntAlloc.exit.i:                              ; preds = %bb.a
  %i.g = sext i32 %spec.store.select.i.i to i64
  %i.h = shl nsw i64 %i.g, 2
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #22 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !18
  store i32 %.val24, ptr %4, align 4, !tbaa !17
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_IntStartFull.exit, label %bb.b

bb.b:                                             ; preds = %Vec_IntAlloc.exit.i
  %i.k = sext i32 %.val24 to i64
  %i.l = shl nsw i64 %i.k, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.i, i8 -1, i64 %i.l, i1 false)
  br label %Vec_IntStartFull.exit

Vec_IntStartFull.exit:                            ; preds = %Vec_IntAlloc.exit.thread.i, %Vec_IntAlloc.exit.i, %bb.b
  %.val25 = phi ptr [ null, %Vec_IntAlloc.exit.thread.i ], [ null, %Vec_IntAlloc.exit.i ], [ %i.i, %bb.b ]
  %i.m = tail call i32 @sat_solver_addvar(ptr noundef %i.b) #21
  %i.n = getelementptr i8, ptr %i.d, i64 8        ; 2 uses
  store i32 %i.m, ptr %.val25, align 4, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.p = call i32 @sat_solver_addclause(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.o) #21 ; 0 uses
  %i.q = call fastcc i32 @Gia_ManTestOnePair_rec(ptr noundef %i.b, ptr noundef nonnull %0, i32 noundef %1, ptr noundef nonnull %i.d) ; 0 uses
  %i.r = call fastcc i32 @Gia_ManTestOnePair_rec(ptr noundef %i.b, ptr noundef nonnull %0, i32 noundef %2, ptr noundef nonnull %i.d) ; 0 uses
  %.val23 = load ptr, ptr %i.n, align 8, !tbaa !18 ; 2 uses
  %i.s = sext i32 %1 to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !11
  %i.v = shl nsw i32 %i.u, 1
  %i.w = or disjoint i32 %i.v, 1
  store i32 %i.w, ptr %i.a, align 8, !tbaa !11
  %i.x = sext i32 %2 to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %.val23, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !11
  %i.aa = shl nsw i32 %i.z, 1
  %i.ab = add nsw i32 %i.aa, %3
  store i32 %i.ab, ptr %i.o, align 4, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.ad = call i32 @sat_solver_solve(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #21 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, -1
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %Vec_IntStartFull.exit
  %i.af = load <2 x i32>, ptr %i.a, align 8, !tbaa !11
  %i.ag = xor <2 x i32> %i.af, splat (i32 1)
  store <2 x i32> %i.ag, ptr %i.a, align 8, !tbaa !11
  %i.ah = call i32 @sat_solver_solve(ptr noundef %i.b, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ac, i64 noundef 0, i64 noundef 0, i64 noundef 0, i64 noundef 0) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %Vec_IntStartFull.exit
  %.0 = phi i32 [ %i.ah, %bb.c ], [ %i.ad, %Vec_IntStartFull.exit ]
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !18  ; 2 uses
  %.not.i26 = icmp eq ptr %i.ai, null
  br i1 %.not.i26, label %Vec_IntFree.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @free(ptr noundef nonnull %i.ai) #21
  br label %Vec_IntFree.exit

Vec_IntFree.exit:                                 ; preds = %bb.d, %bb.e
  call void @free(ptr noundef nonnull %i.d) #21
  call void @sat_solver_delete(ptr noundef %i.b) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  ret i32 %.0
}

declare ptr @sat_solver_new() local_unnamed_addr #5

declare i32 @sat_solver_addvar(ptr noundef) local_unnamed_addr #5

declare i32 @sat_solver_addclause(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc i32 @Gia_ManTestOnePair_rec(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 11 uses
  %i.b = getelementptr i8, ptr %3, i64 8          ; 2 uses
  %.val28 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.c = sext i32 %2 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %.val28, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !11   ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %common.ret37, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @sat_solver_addvar(ptr noundef %0) #21 ; 4 uses
  %.val33 = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.h = getelementptr inbounds [4 x i8], ptr %.val33, i64 %i.c
  store i32 %i.g, ptr %i.h, align 4, !tbaa !11
  %i.i = getelementptr i8, ptr %1, i64 32
  %.val29 = load ptr, ptr %i.i, align 8, !tbaa !40
  %i.j = getelementptr inbounds [12 x i8], ptr %.val29, i64 %i.c ; 3 uses
  %.val30 = load i64, ptr %i.j, align 4           ; 3 uses
  %i.k = and i64 %.val30, 2147483648
  %.not.i = icmp ne i64 %i.k, 0
  %i.l = and i64 %.val30, 536870911
  %i.m = icmp eq i64 %i.l, 536870911
  %narrow.i.not = or i1 %.not.i, %i.m
  br i1 %narrow.i.not, label %common.ret37, label %bb.c

common.ret37:                                     ; preds = %bb.a, %bb.b, %bb.c
  %common.ret37.op = phi i32 [ %i.g, %bb.c ], [ %i.e, %bb.a ], [ %i.g, %bb.b ]
  ret i32 %common.ret37.op

bb.c:                                             ; preds = %bb.b
  %i.n = trunc i64 %.val30 to i32
  %i.o = and i32 %i.n, 536870911
  %i.p = sub nsw i32 %2, %i.o
  %i.q = tail call fastcc i32 @Gia_ManTestOnePair_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.p, ptr noundef nonnull %3)
  %.val35 = load i64, ptr %i.j, align 4
  %i.r = lshr i64 %.val35, 32
  %i.s = trunc nuw i64 %i.r to i32
  %i.t = and i32 %i.s, 536870911
  %i.u = sub nsw i32 %2, %i.t
  %i.v = tail call fastcc i32 @Gia_ManTestOnePair_rec(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.u, ptr noundef nonnull %3)
  %.val31 = load i64, ptr %i.j, align 4           ; 2 uses
  %i.w = trunc i64 %.val31 to i32
  %i.x = lshr i32 %i.w, 29
  %i.y = and i32 %i.x, 1
  %i.z = lshr i64 %.val31, 61
  %i.aa = trunc nuw nsw i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.ac = shl nsw i32 %i.g, 1                     ; 2 uses
  %i.ad = or disjoint i32 %i.ac, 1                ; 2 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !11
  %i.ae = shl nsw i32 %i.q, 1
  %i.af = or disjoint i32 %i.y, %i.ae             ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 3 uses
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !11
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ai = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah) #21 ; 0 uses
  store i32 %i.ad, ptr %i.a, align 4, !tbaa !11
  %i.aj = shl nsw i32 %i.v, 1
  %i.ak = or disjoint i32 %i.ab, %i.aj            ; 2 uses
  store i32 %i.ak, ptr %i.ag, align 4, !tbaa !11
  %i.al = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ah) #21 ; 0 uses
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !11
  %i.am = xor i32 %i.af, 1
  store i32 %i.am, ptr %i.ag, align 4, !tbaa !11
  %i.an = xor i32 %i.ak, 1
  store i32 %i.an, ptr %i.ah, align 4, !tbaa !11
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.ap = call i32 @sat_solver_addclause(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.ao) #21 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br label %common.ret37
}

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #5

declare void @sat_solver_delete(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @Gia_ManAppendObj(ptr nofree noundef captures(none) %0) unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !95
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  %i.f = shl nsw i32 %i.b, 1
  %i.g = tail call noundef range(i32 -2147483648, 536870913) i32 @llvm.smin.i32(i32 %i.f, i32 536870912) ; 6 uses
  %i.h = icmp eq i32 %i.b, 536870912
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef 1) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 820
  %i.j = load i32, ptr %i.i, align 4, !tbaa !96
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %i.b, i32 noundef %i.g) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not33 = icmp eq ptr %i.m, null
  %i.n = sext i32 %i.g to i64
  %i.o = mul nsw i64 %i.n, 12                     ; 2 uses
  br i1 %.not33, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = tail call ptr @realloc(ptr noundef nonnull %i.m, i64 noundef %i.o) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.o) #22
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = phi ptr [ %i.p, %bb.g ], [ %i.q, %bb.h ] ; 2 uses
  store ptr %i.r, ptr %i.l, align 8, !tbaa !40
  %i.s = load i32, ptr %i.c, align 4, !tbaa !95   ; 2 uses
end_hunk_0
