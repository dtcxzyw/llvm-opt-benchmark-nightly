Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/utilBSet?download=true
inline.NumInlined: 288
inline.NumDeleted: 70
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 34
begin_hunk_0_@Abc_TtGetCMPat:bb.a
Abc_TtCheck1Shared.exit:                          ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ 1, %bb.a ], [ %i.e, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define i32 @Abc_TtGetCM(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef captures(none) %6, i32 noundef %7) local_unnamed_addr #3 {
bb.a:
  %.not = icmp eq i32 %7, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @Abc_TtGetCMInt(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef readonly %4, ptr noundef %5, ptr noundef %6, ptr noundef null) ; 2 uses
  %i.b = icmp slt i32 %i.a, 3
  br i1 %i.b, label %Abc_TtGetCMPat.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %i.a, -1
  %i.d = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.c, i1 true)
  %i.e = sub nuw nsw i32 32, %i.d
  %.not3950.i.i = icmp sle i32 %1, %2
  tail call void @llvm.assume(i1 %.not3950.i.i)
  br label %Abc_TtGetCMPat.exit

bb.d:                                             ; preds = %bb.a
  %i.f = tail call i32 @Abc_TtGetCMCount(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6)
  br label %Abc_TtGetCMPat.exit

Abc_TtGetCMPat.exit:                              ; preds = %bb.c, %bb.b, %bb.d
  %.0 = phi i32 [ %i.f, %bb.d ], [ 1, %bb.b ], [ %i.e, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_TtPermGenTest() local_unnamed_addr #8 {
.preheader:
  %i.a = alloca [5 x i32], align 16               ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  store i32 4, ptr %i.e, align 16, !tbaa !29
  %i.f = getelementptr i8, ptr %i.a, i64 -4
  %.05.lcssa.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.05.lcssa.i.sroa.gep44 = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.05.lcssa.i.sroa.gep45 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.05.lcssa.i.sroa.gep46 = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  br label %bb.a

bb.a:                                             ; preds = %.preheader, %Abc_TtPermGen.exit
  %.119 = phi i32 [ 0, %.preheader ], [ %i.ap, %Abc_TtPermGen.exit ] ; 2 uses
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.119) ; 0 uses
  %i.l = load i32, ptr %i.a, align 16, !tbaa !29  ; 4 uses
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.l) ; 0 uses
  %i.n = load i32, ptr %i.b, align 4, !tbaa !29   ; 4 uses
  %i.o = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.n) ; 0 uses
  %i.p = load i32, ptr %i.c, align 8, !tbaa !29   ; 4 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.p) ; 0 uses
  %i.r = load i32, ptr %i.d, align 4, !tbaa !29   ; 4 uses
  %i.s = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.r) ; 0 uses
  %i.t = load i32, ptr %i.e, align 16, !tbaa !29  ; 2 uses
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %i.t) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  %.not.not.i.not = icmp slt i32 %i.r, %i.t       ; 3 uses
  br i1 %.not.not.i.not, label %.lr.ph.preheader.i, label %bb.b

.lr.ph.preheader.i:                               ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.05.lcssa.i.sroa.phi = phi ptr [ %.05.lcssa.i.sroa.gep, %bb.a ], [ %.05.lcssa.i.sroa.gep44, %bb.b ], [ %.05.lcssa.i.sroa.gep45, %bb.c ], [ %.05.lcssa.i.sroa.gep46, %bb.d ], [ %i.a, %bb.e ]
  %i.v = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %i.w = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.e ]
  %i.x = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.d ], [ true, %bb.e ]
  %.05.lcssa.i = phi i64 [ 4, %bb.a ], [ 3, %bb.b ], [ 2, %bb.c ], [ 1, %bb.d ], [ 0, %bb.e ] ; 3 uses
  %.lcssa15.i = phi ptr [ %i.e, %bb.a ], [ %i.d, %bb.b ], [ %i.c, %bb.c ], [ %i.b, %bb.d ], [ %i.a, %bb.e ]
  %.lcssa.i = phi i32 [ %i.r, %bb.a ], [ %i.p, %bb.b ], [ %i.n, %bb.c ], [ %i.l, %bb.d ], [ %i.aa, %bb.e ] ; 6 uses
  %i.y = getelementptr i8, ptr %.lcssa15.i, i64 -4
  %i.z = load i32, ptr %i.g, align 16, !tbaa !29  ; 2 uses
  %.not55.i = icmp sgt i32 %i.z, %.lcssa.i
  br i1 %.not55.i, label %.critedge2.i, label %.critedge.i

bb.b:                                             ; preds = %bb.a
  %.not.1.i = icmp slt i32 %i.p, %i.r
  br i1 %.not.1.i, label %.lr.ph.preheader.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.2.i = icmp slt i32 %i.n, %i.p
  br i1 %.not.2.i, label %.lr.ph.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.3.i = icmp slt i32 %i.l, %i.n
  br i1 %.not.3.i, label %.lr.ph.preheader.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = load i32, ptr %i.f, align 4, !tbaa !29  ; 2 uses
  %.not.4.i = icmp slt i32 %i.aa, %i.l
  br i1 %.not.4.i, label %.lr.ph.preheader.i, label %Abc_TtPermGen.exit

.critedge.i:                                      ; preds = %.lr.ph.preheader.i
  br i1 %.not.not.i.not, label %.critedge2.i.loopexit, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.critedge.i
  %i.ab = load i32, ptr %i.h, align 4, !tbaa !29  ; 2 uses
  %.not55.i.1 = icmp sgt i32 %i.ab, %.lcssa.i
  br i1 %.not55.i.1, label %.critedge2.i, label %.critedge.i.1

.critedge.i.1:                                    ; preds = %.lr.ph.i.1
  br i1 %i.v, label %.lr.ph.i.2, label %.critedge2.i.loopexit

.lr.ph.i.2:                                       ; preds = %.critedge.i.1
  %i.ac = load i32, ptr %i.i, align 8, !tbaa !29  ; 2 uses
  %.not55.i.2 = icmp sgt i32 %i.ac, %.lcssa.i
  br i1 %.not55.i.2, label %.critedge2.i, label %.critedge.i.2

.critedge.i.2:                                    ; preds = %.lr.ph.i.2
  br i1 %i.w, label %.lr.ph.i.3, label %.critedge2.i.loopexit

.lr.ph.i.3:                                       ; preds = %.critedge.i.2
  %i.ad = load i32, ptr %i.j, align 4, !tbaa !29  ; 2 uses
  %.not55.i.3 = icmp sgt i32 %i.ad, %.lcssa.i
  br i1 %.not55.i.3, label %.critedge2.i, label %.critedge.i.3

.critedge.i.3:                                    ; preds = %.lr.ph.i.3
  %i.ae = load i32, ptr %i.a, align 16            ; 2 uses
  %.not55.i.4 = icmp sgt i32 %i.ae, %.lcssa.i
  %or.cond = select i1 %i.x, i1 %.not55.i.4, i1 false
  br i1 %or.cond, label %.critedge2.i, label %.critedge2.i.loopexit

.critedge2.i.loopexit:                            ; preds = %.critedge.i.3, %.critedge.i.2, %.critedge.i.1, %.critedge.i
  %.phi.trans.insert24 = getelementptr i8, ptr %.05.lcssa.i.sroa.phi, i64 -4
  %.pre = load i32, ptr %.phi.trans.insert24, align 4, !tbaa !29
  br label %.critedge2.i

.critedge2.i:                                     ; preds = %.critedge.i.3, %.lr.ph.preheader.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.critedge2.i.loopexit
  %.pre-phi = phi i64 [ %.05.lcssa.i, %.critedge2.i.loopexit ], [ 5, %.lr.ph.preheader.i ], [ 4, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 2, %.lr.ph.i.3 ], [ 1, %.critedge.i.3 ]
  %i.af = phi i32 [ %.pre, %.critedge2.i.loopexit ], [ %i.z, %.lr.ph.preheader.i ], [ %i.ab, %.lr.ph.i.1 ], [ %i.ac, %.lr.ph.i.2 ], [ %i.ad, %.lr.ph.i.3 ], [ %i.ae, %.critedge.i.3 ]
  %i.ag = getelementptr [4 x i8], ptr %i.a, i64 %.pre-phi
  %i.ah = getelementptr i8, ptr %i.ag, i64 -4
  store i32 %i.af, ptr %i.y, align 4, !tbaa !29
  store i32 %.lcssa.i, ptr %i.ah, align 4, !tbaa !29
  br i1 %.not.not.i.not, label %Abc_TtPermGen.exit, label %.lr.ph12.preheader.i

.lr.ph12.preheader.i:                             ; preds = %.critedge2.i
  %i.ai = add nuw nsw i64 %.05.lcssa.i, 1
  br label %.lr.ph12.i

.lr.ph12.i:                                       ; preds = %.lr.ph12.i, %.lr.ph12.preheader.i
  %indvars.iv23.i = phi i64 [ 5, %.lr.ph12.preheader.i ], [ %indvars.iv.next24.i, %.lr.ph12.i ] ; 2 uses
  %indvars.iv21.i = phi i64 [ %.05.lcssa.i, %.lr.ph12.preheader.i ], [ %indvars.iv.next22.i, %.lr.ph12.i ] ; 2 uses
  %indvars.iv19.i = phi i64 [ %i.ai, %.lr.ph12.preheader.i ], [ %indvars.iv.next20.i, %.lr.ph12.i ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv21.i ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !29
  %i.al = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv23.i
  %i.am = getelementptr i8, ptr %i.al, i64 -4     ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !29
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !29
  store i32 %i.ak, ptr %i.am, align 4, !tbaa !29
  %indvars.iv.next24.i = add nsw i64 %indvars.iv23.i, -1 ; 2 uses
  %indvars.iv.next20.i = add nuw nsw i64 %indvars.iv19.i, 1 ; 2 uses
  %i.ao = icmp samesign ult i64 %indvars.iv.next20.i, %indvars.iv.next24.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1
  br i1 %i.ao, label %.lr.ph12.i, label %Abc_TtPermGen.exit, !llvm.loop !88

Abc_TtPermGen.exit:                               ; preds = %.lr.ph12.i, %bb.e, %.critedge2.i
  %i.ap = add nuw nsw i32 %.119, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ap, 120
  br i1 %exitcond.not, label %bb.f, label %bb.a, !llvm.loop !89

bb.f:                                             ; preds = %Abc_TtPermGen.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @Abc_GenChaseNext(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #4 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !29     ; 2 uses
  %i.b = sext i32 %i.a to i64                     ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 3 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !29
  %.not77 = icmp eq i32 %i.d, 0
  br i1 %.not77, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = phi ptr [ %i.k, %bb.f ], [ %i.c, %bb.a ]
  %.05578 = phi i32 [ %.2, %bb.f ], [ 0, %bb.a ]  ; 3 uses
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.g = load i32, ptr %i.f, align 4, !tbaa !29   ; 4 uses
  %i.h = add nsw i32 %i.g, 1                      ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 5 uses
  %i.i = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv.next
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29   ; 3 uses
  %i.k = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next ; 4 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !29
  %.not61 = icmp eq i32 %i.l, 0
  %.neg = or i32 %i.j, -2
  %3 = select i1 %.not61, i32 0, i32 %.neg
  %4 = add i32 %3, %i.j
  %.not65 = icmp slt i32 %i.h, %4
  br i1 %.not65, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph
  %i.m = getelementptr inbounds [4 x i8], ptr %0, i64 %indvars.iv
  %i.n = and i32 %i.g, 1
  %.not63 = icmp eq i32 %i.n, 0
  %i.o = add nsw i32 %i.g, 2                      ; 2 uses
  %i.p = icmp sge i32 %i.o, %i.j
  %i.q = select i1 %.not63, i1 true, i1 %i.p
  %.053 = select i1 %i.q, i32 %i.h, i32 %i.o
  store i32 %.053, ptr %i.m, align 4, !tbaa !29
  %.not64 = icmp eq i32 %.05578, 0
  br i1 %.not64, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.r = trunc nsw i64 %indvars.iv to i32
  %i.s = tail call i32 @llvm.smax.i32(i32 %i.r, i32 1)
  %i.t = add nsw i32 %i.s, -1
  br label %.thread.sink.split

bb.d:                                             ; preds = %.lr.ph
  %i.u = sext i32 %i.g to i64
  %i.v = icmp slt i64 %indvars.iv, %i.u           ; 2 uses
  %i.w = zext i1 %i.v to i32
  store i32 %i.w, ptr %i.e, align 4, !tbaa !29
  %i.x = icmp eq i32 %.05578, 0
  %or.cond.not = select i1 %i.v, i1 %i.x, i1 false
  br i1 %or.cond.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = trunc nsw i64 %indvars.iv to i32
  store i32 %i.y, ptr %2, align 4, !tbaa !29
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.2 = phi i32 [ %.05578, %bb.d ], [ 1, %bb.e ]  ; 2 uses
  %i.z = load i32, ptr %i.k, align 4, !tbaa !29
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.f
  %i.aa = trunc nsw i64 %indvars.iv.next to i32
  %i.ab = icmp eq i32 %.2, 0
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %.055.lcssa = phi i1 [ true, %bb.a ], [ %i.ab, %._crit_edge.loopexit ]
  %.054.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.aa, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa68 = phi i64 [ %i.b, %bb.a ], [ %indvars.iv.next, %._crit_edge.loopexit ]
  %.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.k, %._crit_edge.loopexit ]
  %i.ac = getelementptr inbounds [4 x i8], ptr %0, i64 %.lcssa68 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29 ; 2 uses
  %i.ae = add nsw i32 %i.ad, -1                   ; 2 uses
  %i.af = and i32 %i.ae, 1
  %.not58 = icmp eq i32 %i.af, 0
  %i.ag = add nsw i32 %i.ad, -2                   ; 2 uses
  %.not59 = icmp slt i32 %i.ag, %.054.lcssa
  %or.cond = select i1 %.not58, i1 true, i1 %.not59
  %.0 = select i1 %or.cond, i32 %i.ae, i32 %i.ag  ; 2 uses
  store i32 %.0, ptr %i.ac, align 4, !tbaa !29
  %i.ah = icmp sgt i32 %.0, %.054.lcssa
  %i.ai = zext i1 %i.ah to i32
  store i32 %i.ai, ptr %.lcssa, align 4, !tbaa !29
  br i1 %.055.lcssa, label %.thread.sink.split, label %.thread

.thread.sink.split:                               ; preds = %._crit_edge, %bb.c
  %.sink = phi i32 [ %i.t, %bb.c ], [ %.054.lcssa, %._crit_edge ]
  store i32 %.sink, ptr %2, align 4, !tbaa !29
  br label %.thread

.thread:                                          ; preds = %.thread.sink.split, %bb.b, %._crit_edge
  ret void
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Abc_GenChasePairs(i32 noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 11 uses
  %i.b = alloca [32 x i32], align 16              ; 4 uses
  %i.c = alloca [32 x i32], align 16              ; 6 uses
  %i.d = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #30 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4, !tbaa !34
  store i32 100, ptr %i.d, align 8, !tbaa !37
  %i.f = tail call noalias dereferenceable_or_null(400) ptr @malloc(i64 noundef 400) #30
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  %.not48 = icmp slt i32 %1, 0                    ; 2 uses
  br i1 %.not48, label %..preheader_crit_edge, label %.lr.ph

..preheader_crit_edge:                            ; preds = %bb.a
  %.pre81.a = add nsw i32 %1, 1
  %.pre82 = zext i32 %.pre81.a to i64
  br label %.preheader

.lr.ph:                                           ; preds = %bb.a
  %.neg = sub i32 %0, %1                          ; 2 uses
  %i.h = add nuw i32 %1, 1
  %wide.trip.count = zext i32 %i.h to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %1, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.neg, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add <4 x i32> splat (i32 4), %broadcast.splat
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %i.i = add <4 x i32> %broadcast.splat, %vec.ind
  %.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store <4 x i32> %i.i, ptr %i.j, align 16, !tbaa !29
  store <4 x i32> %.reass, ptr %i.k, align 16, !tbaa !29
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store <4 x i32> splat (i32 1), ptr %i.l, align 16, !tbaa !29
  store <4 x i32> splat (i32 1), ptr %i.m, align 16, !tbaa !29
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.n = icmp eq i64 %index.next, %n.vec
  br i1 %i.n, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %..preheader_crit_edge
  %.pre-phi83 = phi i64 [ %.pre82, %..preheader_crit_edge ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %scalar.ph ]
  %i.o = icmp sgt i32 %1, 0
  %i.p = sext i32 %1 to i64
  %i.q = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.p
  %i.r = shl nuw nsw i64 %.pre-phi83, 2
  %wide.trip.count77 = zext nneg i32 %1 to i64
  br label %bb.b

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.s = trunc nuw nsw i64 %indvars.iv to i32
  %i.t = add i32 %.neg, %i.s
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.t, ptr %i.u, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv
  store i32 1, ptr %i.v, align 4, !tbaa !29
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader, label %scalar.ph, !llvm.loop !91

bb.b:                                             ; preds = %.preheader, %.loopexit
  %.029 = phi i32 [ %.4, %.loopexit ], [ 0, %.preheader ] ; 4 uses
  br i1 %.not48, label %._crit_edge, label %.lr.ph52.preheader

.lr.ph52.preheader:                               ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 16 %i.a, i64 %i.r, i1 false), !tbaa !29
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph52.preheader, %bb.b
  %i.w = sext i32 %.029 to i64                    ; 4 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.w ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !29
  %.not77.i = icmp eq i32 %i.y, 0
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.w
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !29 ; 2 uses
  br i1 %.not77.i, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %._crit_edge, %bb.e
  %i.z = phi i32 [ %i.ad, %bb.e ], [ %.pre, %._crit_edge ] ; 4 uses
  %.2 = phi i32 [ %spec.select, %bb.e ], [ %.029, %._crit_edge ] ; 2 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.e ], [ %i.w, %._crit_edge ] ; 5 uses
  %i.aa = phi ptr [ %i.ae, %bb.e ], [ %i.x, %._crit_edge ]
  %.05578.i = phi i32 [ %spec.select31, %bb.e ], [ 0, %._crit_edge ] ; 3 uses
  %i.ab = add nsw i32 %i.z, 1                     ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 5 uses
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.next.i
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !29 ; 5 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.c, i64 %indvars.iv.next.i ; 4 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !29
  %.not61.i = icmp eq i32 %i.af, 0
  %.neg.i = or i32 %i.ad, -2
  %2 = select i1 %.not61.i, i32 0, i32 %.neg.i
  %3 = add i32 %2, %i.ad
  %.not65.i = icmp slt i32 %i.ab, %3
  br i1 %.not65.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.a, i64 %indvars.iv.i
  %i.ah = and i32 %i.z, 1
  %.not63.i = icmp eq i32 %i.ah, 0
  %i.ai = add nsw i32 %i.z, 2                     ; 2 uses
  %i.aj = icmp sge i32 %i.ai, %i.ad
  %i.ak = select i1 %.not63.i, i1 true, i1 %i.aj
  %.053.i = select i1 %i.ak, i32 %i.ab, i32 %i.ai
  store i32 %.053.i, ptr %i.ag, align 4, !tbaa !29
  %.not64.i = icmp eq i32 %.05578.i, 0
  br i1 %.not64.i, label %bb.d, label %Abc_GenChaseNext.exit

bb.d:                                             ; preds = %bb.c
  %i.al = trunc nsw i64 %indvars.iv.i to i32
  %i.am = tail call i32 @llvm.smax.i32(i32 %i.al, i32 1)
  %i.an = add nsw i32 %i.am, -1
  br label %Abc_GenChaseNext.exit

bb.e:                                             ; preds = %.lr.ph.i
  %i.ao = sext i32 %i.z to i64
  %i.ap = icmp slt i64 %indvars.iv.i, %i.ao       ; 2 uses
  %i.aq = zext i1 %i.ap to i32
  store i32 %i.aq, ptr %i.aa, align 4, !tbaa !29
  %i.ar = icmp eq i32 %.05578.i, 0
  %or.cond.not.i = select i1 %i.ap, i1 %i.ar, i1 false ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.i to i32
  %spec.select = select i1 %or.cond.not.i, i32 %i.as, i32 %.2 ; 2 uses
  %spec.select31 = select i1 %or.cond.not.i, i32 1, i32 %.05578.i ; 2 uses
  %i.at = load i32, ptr %i.ae, align 4, !tbaa !29
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %.lr.ph.i, label %._crit_edge.loopexit.i

._crit_edge.loopexit.i:                           ; preds = %bb.e
  %i.au = trunc nsw i64 %indvars.iv.next.i to i32 ; 2 uses
  %i.av = icmp eq i32 %spec.select31, 0
  %i.aw = select i1 %i.av, i32 %i.au, i32 %spec.select
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge, %._crit_edge.loopexit.i
  %i.ax = phi i32 [ %i.ad, %._crit_edge.loopexit.i ], [ %.pre, %._crit_edge ] ; 2 uses
  %.055.lcssa.i = phi i32 [ %i.aw, %._crit_edge.loopexit.i ], [ %.029, %._crit_edge ]
  %.054.lcssa.i = phi i32 [ %i.au, %._crit_edge.loopexit.i ], [ %.029, %._crit_edge ] ; 2 uses
  %.lcssa68.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.loopexit.i ], [ %i.w, %._crit_edge ]
  %.lcssa.i = phi ptr [ %i.ae, %._crit_edge.loopexit.i ], [ %i.x, %._crit_edge ]
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.a, i64 %.lcssa68.i
  %4 = add nsw i32 %i.ax, -1                      ; 2 uses
  %i.az = and i32 %4, 1
  %.not58.i = icmp eq i32 %i.az, 0
  %i.ba = add nsw i32 %i.ax, -2                   ; 2 uses
  %.not59.i = icmp slt i32 %i.ba, %.054.lcssa.i
  %or.cond.i = select i1 %.not58.i, i1 true, i1 %.not59.i
  %.0.i = select i1 %or.cond.i, i32 %4, i32 %i.ba ; 2 uses
  store i32 %.0.i, ptr %i.ay, align 4, !tbaa !29
  %i.bb = icmp sgt i32 %.0.i, %.054.lcssa.i
  %i.bc = zext i1 %i.bb to i32
  store i32 %i.bc, ptr %.lcssa.i, align 4, !tbaa !29
  br label %Abc_GenChaseNext.exit

Abc_GenChaseNext.exit:                            ; preds = %._crit_edge.i, %bb.d, %bb.c
  %.4 = phi i32 [ %.055.lcssa.i, %._crit_edge.i ], [ %.2, %bb.c ], [ %i.an, %bb.d ]
  br i1 %i.o, label %.lr.ph55, label %.loopexit

bb.f:                                             ; preds = %.lr.ph55
  %indvars.iv.next75 = add nuw nsw i64 %indvars.iv74, 1 ; 2 uses
  %exitcond78.not = icmp eq i64 %indvars.iv.next75, %wide.trip.count77
  br i1 %exitcond78.not, label %.loopexit, label %.lr.ph55, !llvm.loop !92

.lr.ph55:                                         ; preds = %Abc_GenChaseNext.exit, %bb.f
  %indvars.iv74 = phi i64 [ %indvars.iv.next75, %bb.f ], [ 0, %Abc_GenChaseNext.exit ] ; 3 uses
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv74
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !29 ; 2 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv74
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !29 ; 2 uses
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.f, label %bb.g

bb.g:                                             ; preds = %.lr.ph55
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef %i.bg, i32 noundef %i.be)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %Abc_GenChaseNext.exit, %bb.g
  %i.bi = load i32, ptr %i.q, align 4, !tbaa !29
  %i.bj = icmp eq i32 %i.bi, %0
  br i1 %i.bj, label %bb.b, label %bb.h, !llvm.loop !93

bb.h:                                             ; preds = %.loopexit
  tail call fastcc void @Vec_IntPushTwo(ptr noundef nonnull %i.d, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret ptr %i.d
}

; Function Attrs: inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @Vec_IntPushTwo(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !34   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !37
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !35   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #29
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #30
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !35   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #29
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #30
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !35
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !37
  %.pre = load i32, ptr %i.a, align 4, !tbaa !34
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !35   ; 4 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !34
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %1, ptr %i.y, align 4, !tbaa !29
  %i.z = load i32, ptr %i.a, align 4, !tbaa !34   ; 7 uses
  %i.aa = load i32, ptr %0, align 8, !tbaa !37
  %i.ab = icmp eq i32 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %Vec_IntPush.exit10

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.ac = icmp slt i32 %i.z, 16
  br i1 %i.ac, label %Vec_IntGrow.exit11.sink.split.i6, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp samesign ult i32 %i.z, 1073741823
  %i.ae = shl nuw nsw i32 %i.z, 1
  %spec.select.i3 = select i1 %i.ad, i32 %i.ae, i32 2147483647 ; 3 uses
  %.not.i9.i4 = icmp samesign ult i32 %i.z, %spec.select.i3
  br i1 %.not.i9.i4, label %bb.m, label %Vec_IntPush.exit10

bb.m:                                             ; preds = %bb.l
  %i.af = zext nneg i32 %spec.select.i3 to i64
  %i.ag = shl nuw nsw i64 %i.af, 2
  br label %Vec_IntGrow.exit11.sink.split.i6

Vec_IntGrow.exit11.sink.split.i6:                 ; preds = %bb.k, %bb.m
  %.sink = phi i64 [ %i.ag, %bb.m ], [ 64, %bb.k ]
  %spec.select.sink.i7 = phi i32 [ %spec.select.i3, %bb.m ], [ 16, %bb.k ]
  %i.ah = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %.sink) #29 ; 2 uses
  store ptr %i.ah, ptr %i.u, align 8, !tbaa !35
  store i32 %spec.select.sink.i7, ptr %0, align 8, !tbaa !37
  %.pre11 = load i32, ptr %i.a, align 4, !tbaa !34
  br label %Vec_IntPush.exit10

Vec_IntPush.exit10:                               ; preds = %Vec_IntPush.exit, %bb.l, %Vec_IntGrow.exit11.sink.split.i6
  %i.ai = phi i32 [ %i.z, %Vec_IntPush.exit ], [ %i.z, %bb.l ], [ %.pre11, %Vec_IntGrow.exit11.sink.split.i6 ] ; 2 uses
  %i.aj = phi ptr [ %i.v, %Vec_IntPush.exit ], [ %i.v, %bb.l ], [ %i.ah, %Vec_IntGrow.exit11.sink.split.i6 ]
  %i.ak = add nsw i32 %i.ai, 1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !34
  %i.al = sext i32 %i.ai to i64
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  store i32 %2, ptr %i.am, align 4, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind uwtable
define void @Abc_GenChasePrint(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #8 {
bb.a:
  %i.a = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %0) ; 0 uses
  %.not.not14 = icmp sgt i32 %2, %3
  br i1 %.not.not14, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.b = sext i32 %2 to i64
  %i.c = sext i32 %3 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.b, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.d = getelementptr inbounds [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.e = load i32, ptr %i.d, align 4, !tbaa !29
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.e) ; 0 uses
  %.not.not = icmp sgt i64 %indvars.iv.next, %i.c
  br i1 %.not.not, label %.lr.ph, label %._crit_edge, !llvm.loop !94

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %putchar = tail call i32 @putchar(i32 32)       ; 0 uses
  %i.g = icmp sgt i32 %3, 0
  br i1 %i.g, label %.lr.ph18.preheader, label %._crit_edge19

.lr.ph18.preheader:                               ; preds = %._crit_edge
  %i.h = zext nneg i32 %3 to i64
  br label %.lr.ph18

.lr.ph18:                                         ; preds = %.lr.ph18.preheader, %.lr.ph18
  %indvars.iv21 = phi i64 [ %i.h, %.lr.ph18.preheader ], [ %indvars.iv.next22, %.lr.ph18 ] ; 2 uses
  %indvars.iv.next22 = add nsw i64 %indvars.iv21, -1 ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next22
  %i.j = load i32, ptr %i.i, align 4, !tbaa !29
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %i.j) ; 0 uses
  %i.l = icmp samesign ugt i64 %indvars.iv21, 1
  br i1 %i.l, label %.lr.ph18, label %._crit_edge19, !llvm.loop !95

._crit_edge19:                                    ; preds = %.lr.ph18, %._crit_edge
  %i.m = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %4, i32 noundef %5) ; 0 uses
  ret void
}
end_hunk_0
