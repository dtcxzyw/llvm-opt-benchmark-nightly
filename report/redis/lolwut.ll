Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/lolwut?download=true
inline.NumInlined: 4
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@lolwutCommand:bb.a
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.4) #14
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef null) #13
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %i.p to i32
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.5, i32 noundef %i.q) #13 ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.f, align 8, !tbaa !43
  %i.u = load i32, ptr %i.c, align 8, !tbaa !18
  %i.v = add nsw i32 %i.u, -2
  store i32 %i.v, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.a
  %.1.sroa.phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.b ], [ %.1.sroa.gep, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.a ] ; 5 uses
  %.1.sroa.phi36 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.b ], [ %.1.sroa.gep37, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.a ] ; 5 uses
  %.1 = phi ptr [ @.str.1, %bb.b ], [ %i.a, %bb.d ], [ @.str.1, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.1, align 1, !tbaa !13
  switch i8 %i.w, label %.thread70 [
    i8 53, label %bb.f
    i8 52, label %bb.h
    i8 54, label %bb.k
    i8 56, label %bb.n
    i8 55, label %bb.p
  ]

bb.f:                                             ; preds = %bb.e
  %i.x = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.g, label %.thread70

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %.not33 = icmp eq i8 %i.z, 57
  br i1 %.not33, label %bb.m, label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.aa = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %bb.i, label %.thread70

bb.i:                                             ; preds = %bb.h
  %i.ac = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.ac, 57
  br i1 %i.ad, label %bb.j, label %.thread70

bb.j:                                             ; preds = %bb.i, %bb.g
  call void @lolwut5Command(ptr noundef nonnull %0) #13
  br label %bb.s

bb.k:                                             ; preds = %bb.e
  %i.ae = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.af = icmp eq i8 %i.ae, 46
  br i1 %i.af, label %bb.l, label %.thread70

bb.l:                                             ; preds = %bb.k
  %i.ag = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %.not34 = icmp eq i8 %i.ag, 57
  br i1 %.not34, label %.thread70, label %bb.m

bb.m:                                             ; preds = %bb.g, %bb.l
  call void @lolwut6Command(ptr noundef nonnull %0) #13
  br label %bb.s

bb.n:                                             ; preds = %bb.e
  %i.ah = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.ai = icmp eq i8 %i.ah, 46
  br i1 %i.ai, label %bb.o, label %.thread70

bb.o:                                             ; preds = %bb.n
  %i.aj = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %.not35 = icmp eq i8 %i.aj, 57
  br i1 %.not35, label %.thread70, label %bb.r

bb.p:                                             ; preds = %bb.e
  %i.ak = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.q, label %.thread70

bb.q:                                             ; preds = %bb.p
  %i.am = load i8, ptr %.1.sroa.phi36, align 1, !tbaa !13
  %i.an = icmp eq i8 %i.am, 57
  br i1 %i.an, label %bb.r, label %.thread70

bb.r:                                             ; preds = %bb.q, %bb.o
  call void @lolwut8Command(ptr noundef nonnull %0) #13
  br label %bb.s

.thread70:                                        ; preds = %bb.e, %bb.k, %bb.l, %bb.h, %bb.i, %bb.f, %bb.n, %bb.o, %bb.q, %bb.p
  call void @lolwutUnstableCommand(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.m, %.thread70, %bb.r, %bb.j
  %i.ao = icmp eq ptr %.1, %i.a
  br i1 %i.ao, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !43
  %i.as = load i32, ptr %i.c, align 8, !tbaa !18
  %i.at = add nsw i32 %i.as, 2
  store i32 %i.at, ptr %i.c, align 8, !tbaa !18
  br label %bb.u

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @lolwut5Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut6Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut8Command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @lwCreateCanvas(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #15 ; 4 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !49
  %i.c = sext i32 %0 to i64
  %i.d = sext i32 %1 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 2 uses
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #15 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  %i.h = trunc i32 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 %i.h, i64 %i.e, i1 false)
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @lwFreeCanvas(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @zfree(ptr noundef %i.b) #13
  tail call void @zfree(ptr noundef %0) #13
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i32 %3 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = mul nuw nsw i32 %i.b, %2
  %i.k = add nuw nsw i32 %i.j, %1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 %i.g, ptr %i.m, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -128, 128) i32 @lwGetPixel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = mul nuw nsw i32 %i.b, %2
  %i.j = add nuw nsw i32 %i.i, %1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = sext i8 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawLine(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = sub nsw i32 %3, %1
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 3 uses
  %i.c = sub nsw i32 %4, %2
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 3 uses
  %i.e = icmp slt i32 %1, %3
  %i.f = select i1 %i.e, i32 1, i32 -1
  %i.g = icmp slt i32 %2, %4
  %i.h = select i1 %i.g, i32 1, i32 -1
  %i.i = sub nsw i32 %i.b, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = trunc i32 %5 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = sub nsw i32 0, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.032 = phi i32 [ %2, %bb.a ], [ %.133, %bb.f ] ; 5 uses
  %.030 = phi i32 [ %1, %bb.a ], [ %.131, %bb.f ] ; 5 uses
  %.0 = phi i32 [ %i.i, %bb.a ], [ %.2, %bb.f ]   ; 2 uses
  %i.n = icmp slt i32 %.030, 0
  br i1 %i.n, label %lwDrawPixel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.p = icmp sge i32 %.030, %i.o
  %i.q = icmp slt i32 %.032, 0
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %lwDrawPixel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.j, align 4, !tbaa !49
  %.not.i = icmp slt i32 %.032, %i.r
  br i1 %.not.i, label %bb.e, label %lwDrawPixel.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.t = mul nuw nsw i32 %i.o, %.032
  %i.u = add nuw nsw i32 %i.t, %.030
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 %i.k, ptr %i.w, align 1, !tbaa !13
  br label %lwDrawPixel.exit

lwDrawPixel.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.x = icmp eq i32 %.030, %3
  %i.y = icmp eq i32 %.032, %4
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lwDrawPixel.exit
  %i.z = shl nsw i32 %.0, 1                       ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %i.m                 ; 2 uses
  %i.ab = select i1 %i.aa, i32 %i.f, i32 0
  %.131 = add nsw i32 %i.ab, %.030
  %i.ac = select i1 %i.aa, i32 %i.d, i32 0
  %.1 = sub i32 %.0, %i.ac
  %i.ad = icmp slt i32 %i.z, %i.b                 ; 2 uses
  %i.ae = select i1 %i.ad, i32 %i.h, i32 0
  %.133 = add nsw i32 %i.ae, %.032
  %i.af = select i1 %i.ad, i32 %i.b, i32 0
  %.2 = add nsw i32 %.1, %i.af
  br label %bb.b

bb.g:                                             ; preds = %lwDrawPixel.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawSquare(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #9 {
lwDrawLine.exit.preheader:
  %i.a = fpext float %3 to double
  %i.b = fdiv double %i.a, f0x3FF6A09E667A35E6
  %i.c = fptrunc double %i.b to float
  %i.d = tail call float @llvm.round.f32(float %i.c)
  %i.e = fpext float %4 to double
  %i.f = fadd double %i.e, f0x3FE921FB54442D18
  %i.g = fpext float %i.d to double               ; 8 uses
  %i.h = sitofp i32 %1 to double                  ; 4 uses
  %i.i = sitofp i32 %2 to double                  ; 4 uses
  %.022 = fptrunc double %i.f to float
  %i.j = fpext float %.022 to double              ; 3 uses
  %i.k = tail call double @sin(double noundef %i.j) #13, !tbaa !9
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double %i.g, double %i.h)
  %i.m = tail call double @llvm.round.f64(double %i.l)
  %i.n = fptosi double %i.m to i32                ; 6 uses
  %i.o = tail call double @cos(double noundef %i.j) #13, !tbaa !9
  %i.p = tail call double @llvm.fmuladd.f64(double %i.o, double %i.g, double %i.i)
  %i.q = tail call double @llvm.round.f64(double %i.p)
  %i.r = fptosi double %i.q to i32                ; 6 uses
  %i.s = fadd double %i.j, f0x3FF921FB54442D18
  %.022.1 = fptrunc double %i.s to float
  %i.t = fpext float %.022.1 to double            ; 3 uses
  %i.u = tail call double @sin(double noundef %i.t) #13, !tbaa !9
  %i.v = tail call double @llvm.fmuladd.f64(double %i.u, double %i.g, double %i.h)
  %i.w = tail call double @llvm.round.f64(double %i.v)
  %i.x = fptosi double %i.w to i32                ; 6 uses
  %i.y = tail call double @cos(double noundef %i.t) #13, !tbaa !9
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.g, double %i.i)
  %i.aa = tail call double @llvm.round.f64(double %i.z)
  %i.ab = fptosi double %i.aa to i32              ; 6 uses
  %i.ac = fadd double %i.t, f0x3FF921FB54442D18
  %.022.2 = fptrunc double %i.ac to float
  %i.ad = fpext float %.022.2 to double           ; 3 uses
  %i.ae = tail call double @sin(double noundef %i.ad) #13, !tbaa !9
  %i.af = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.g, double %i.h)
  %i.ag = tail call double @llvm.round.f64(double %i.af)
  %i.ah = fptosi double %i.ag to i32              ; 6 uses
  %i.ai = tail call double @cos(double noundef %i.ad) #13, !tbaa !9
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.g, double %i.i)
  %i.ak = tail call double @llvm.round.f64(double %i.aj)
  %i.al = fptosi double %i.ak to i32              ; 6 uses
  %i.am = fadd double %i.ad, f0x3FF921FB54442D18
  %.022.3 = fptrunc double %i.am to float
  %i.an = fpext float %.022.3 to double           ; 2 uses
  %i.ao = tail call double @sin(double noundef %i.an) #13, !tbaa !9
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.ao, double %i.g, double %i.h)
  %i.aq = tail call double @llvm.round.f64(double %i.ap)
  %i.ar = fptosi double %i.aq to i32              ; 6 uses
  %i.as = tail call double @cos(double noundef %i.an) #13, !tbaa !9
  %i.at = tail call double @llvm.fmuladd.f64(double %i.as, double %i.g, double %i.i)
  %i.au = tail call double @llvm.round.f64(double %i.at)
  %i.av = fptosi double %i.au to i32              ; 6 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.ax = trunc i32 %5 to i8                      ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.az = sub nsw i32 %i.x, %i.n
  %i.ba = tail call i32 @llvm.abs.i32(i32 %i.az, i1 true) ; 3 uses
  %i.bb = sub nsw i32 %i.ab, %i.r
  %i.bc = tail call i32 @llvm.abs.i32(i32 %i.bb, i1 true) ; 3 uses
  %i.bd = icmp slt i32 %i.n, %i.x
  %i.be = select i1 %i.bd, i32 1, i32 -1
  %i.bf = icmp slt i32 %i.r, %i.ab
  %i.bg = select i1 %i.bf, i32 1, i32 -1
  %i.bh = sub nsw i32 %i.ba, %i.bc
  %i.bi = sub nsw i32 0, %i.bc
  br label %bb.p

lwDrawLine.exit.loopexit:                         ; preds = %lwDrawPixel.exit.i
  %i.bj = sub nsw i32 %i.ah, %i.x
  %i.bk = tail call i32 @llvm.abs.i32(i32 %i.bj, i1 true) ; 3 uses
  %i.bl = sub nsw i32 %i.al, %i.ab
  %i.bm = tail call i32 @llvm.abs.i32(i32 %i.bl, i1 true) ; 3 uses
  %i.bn = icmp slt i32 %i.x, %i.ah
  %i.bo = select i1 %i.bn, i32 1, i32 -1
  %i.bp = icmp slt i32 %i.ab, %i.al
  %i.bq = select i1 %i.bp, i32 1, i32 -1
  %i.br = sub nsw i32 %i.bk, %i.bm
  %i.bs = sub nsw i32 0, %i.bm
  br label %bb.a

bb.a:                                             ; preds = %bb.e, %lwDrawLine.exit.loopexit
  %.032.i.1 = phi i32 [ %i.ab, %lwDrawLine.exit.loopexit ], [ %.133.i.1, %bb.e ] ; 5 uses
  %.030.i.1 = phi i32 [ %i.x, %lwDrawLine.exit.loopexit ], [ %.131.i.1, %bb.e ] ; 5 uses
  %.0.i.1 = phi i32 [ %i.br, %lwDrawLine.exit.loopexit ], [ %.2.i.1, %bb.e ] ; 2 uses
  %i.bt = icmp slt i32 %.030.i.1, 0
  br i1 %i.bt, label %lwDrawPixel.exit.i.1, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bu = load i32, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.bv = icmp sge i32 %.030.i.1, %i.bu
  %i.bw = icmp slt i32 %.032.i.1, 0
  %or.cond.i.i.1 = or i1 %i.bw, %i.bv
  br i1 %or.cond.i.i.1, label %lwDrawPixel.exit.i.1, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.bx = load i32, ptr %i.aw, align 4, !tbaa !49
  %.not.i.i.1 = icmp slt i32 %.032.i.1, %i.bx
  br i1 %.not.i.i.1, label %bb.d, label %lwDrawPixel.exit.i.1

bb.d:                                             ; preds = %bb.c
  %i.by = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.bz = mul nuw nsw i32 %i.bu, %.032.i.1
  %i.ca = add nuw nsw i32 %i.bz, %.030.i.1
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 %i.cb
  store i8 %i.ax, ptr %i.cc, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.1

lwDrawPixel.exit.i.1:                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %i.cd = icmp eq i32 %.030.i.1, %i.ah
  %i.ce = icmp eq i32 %.032.i.1, %i.al
  %or.cond.i.1 = and i1 %i.ce, %i.cd
  br i1 %or.cond.i.1, label %lwDrawLine.exit.loopexit.1, label %bb.e

bb.e:                                             ; preds = %lwDrawPixel.exit.i.1
  %i.cf = shl nsw i32 %.0.i.1, 1                  ; 2 uses
  %i.cg = icmp sgt i32 %i.cf, %i.bs               ; 2 uses
  %i.ch = select i1 %i.cg, i32 %i.bo, i32 0
  %.131.i.1 = add nsw i32 %i.ch, %.030.i.1
  %i.ci = select i1 %i.cg, i32 %i.bm, i32 0
  %.1.i.1 = sub i32 %.0.i.1, %i.ci
  %i.cj = icmp slt i32 %i.cf, %i.bk               ; 2 uses
  %i.ck = select i1 %i.cj, i32 %i.bq, i32 0
  %.133.i.1 = add nsw i32 %i.ck, %.032.i.1
  %i.cl = select i1 %i.cj, i32 %i.bk, i32 0
  %.2.i.1 = add nsw i32 %.1.i.1, %i.cl
  br label %bb.a

lwDrawLine.exit.loopexit.1:                       ; preds = %lwDrawPixel.exit.i.1
  %i.cm = sub nsw i32 %i.ar, %i.ah
  %i.cn = tail call i32 @llvm.abs.i32(i32 %i.cm, i1 true) ; 3 uses
  %i.co = sub nsw i32 %i.av, %i.al
  %i.cp = tail call i32 @llvm.abs.i32(i32 %i.co, i1 true) ; 3 uses
  %i.cq = icmp slt i32 %i.ah, %i.ar
  %i.cr = select i1 %i.cq, i32 1, i32 -1
  %i.cs = icmp slt i32 %i.al, %i.av
  %i.ct = select i1 %i.cs, i32 1, i32 -1
  %i.cu = sub nsw i32 %i.cn, %i.cp
  %i.cv = sub nsw i32 0, %i.cp
  br label %bb.f

bb.f:                                             ; preds = %bb.j, %lwDrawLine.exit.loopexit.1
  %.032.i.2 = phi i32 [ %i.al, %lwDrawLine.exit.loopexit.1 ], [ %.133.i.2, %bb.j ] ; 5 uses
  %.030.i.2 = phi i32 [ %i.ah, %lwDrawLine.exit.loopexit.1 ], [ %.131.i.2, %bb.j ] ; 5 uses
  %.0.i.2 = phi i32 [ %i.cu, %lwDrawLine.exit.loopexit.1 ], [ %.2.i.2, %bb.j ] ; 2 uses
  %i.cw = icmp slt i32 %.030.i.2, 0
  br i1 %i.cw, label %lwDrawPixel.exit.i.2, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cx = load i32, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.cy = icmp sge i32 %.030.i.2, %i.cx
  %i.cz = icmp slt i32 %.032.i.2, 0
  %or.cond.i.i.2 = or i1 %i.cz, %i.cy
  br i1 %or.cond.i.i.2, label %lwDrawPixel.exit.i.2, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.da = load i32, ptr %i.aw, align 4, !tbaa !49
  %.not.i.i.2 = icmp slt i32 %.032.i.2, %i.da
  br i1 %.not.i.i.2, label %bb.i, label %lwDrawPixel.exit.i.2

bb.i:                                             ; preds = %bb.h
  %i.db = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.dc = mul nuw nsw i32 %i.cx, %.032.i.2
  %i.dd = add nuw nsw i32 %i.dc, %.030.i.2
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.de
  store i8 %i.ax, ptr %i.df, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.2

lwDrawPixel.exit.i.2:                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %i.dg = icmp eq i32 %.030.i.2, %i.ar
  %i.dh = icmp eq i32 %.032.i.2, %i.av
  %or.cond.i.2 = and i1 %i.dh, %i.dg
  br i1 %or.cond.i.2, label %lwDrawLine.exit.loopexit.2, label %bb.j

bb.j:                                             ; preds = %lwDrawPixel.exit.i.2
  %i.di = shl nsw i32 %.0.i.2, 1                  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, %i.cv               ; 2 uses
  %i.dk = select i1 %i.dj, i32 %i.cr, i32 0
  %.131.i.2 = add nsw i32 %i.dk, %.030.i.2
  %i.dl = select i1 %i.dj, i32 %i.cp, i32 0
  %.1.i.2 = sub i32 %.0.i.2, %i.dl
  %i.dm = icmp slt i32 %i.di, %i.cn               ; 2 uses
  %i.dn = select i1 %i.dm, i32 %i.ct, i32 0
  %.133.i.2 = add nsw i32 %i.dn, %.032.i.2
  %i.do = select i1 %i.dm, i32 %i.cn, i32 0
  %.2.i.2 = add nsw i32 %.1.i.2, %i.do
  br label %bb.f

lwDrawLine.exit.loopexit.2:                       ; preds = %lwDrawPixel.exit.i.2
  %i.dp = sub nsw i32 %i.n, %i.ar
  %i.dq = tail call i32 @llvm.abs.i32(i32 %i.dp, i1 true) ; 3 uses
  %i.dr = sub nsw i32 %i.r, %i.av
  %i.ds = tail call i32 @llvm.abs.i32(i32 %i.dr, i1 true) ; 3 uses
  %i.dt = icmp slt i32 %i.ar, %i.n
  %i.du = select i1 %i.dt, i32 1, i32 -1
  %i.dv = icmp slt i32 %i.av, %i.r
  %i.dw = select i1 %i.dv, i32 1, i32 -1
  %i.dx = sub nsw i32 %i.dq, %i.ds
  %i.dy = sub nsw i32 0, %i.ds
  br label %bb.k

bb.k:                                             ; preds = %bb.o, %lwDrawLine.exit.loopexit.2
  %.032.i.3 = phi i32 [ %i.av, %lwDrawLine.exit.loopexit.2 ], [ %.133.i.3, %bb.o ] ; 5 uses
  %.030.i.3 = phi i32 [ %i.ar, %lwDrawLine.exit.loopexit.2 ], [ %.131.i.3, %bb.o ] ; 5 uses
  %.0.i.3 = phi i32 [ %i.dx, %lwDrawLine.exit.loopexit.2 ], [ %.2.i.3, %bb.o ] ; 2 uses
  %i.dz = icmp slt i32 %.030.i.3, 0
  br i1 %i.dz, label %lwDrawPixel.exit.i.3, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ea = load i32, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.eb = icmp sge i32 %.030.i.3, %i.ea
  %i.ec = icmp slt i32 %.032.i.3, 0
  %or.cond.i.i.3 = or i1 %i.ec, %i.eb
  br i1 %or.cond.i.i.3, label %lwDrawPixel.exit.i.3, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ed = load i32, ptr %i.aw, align 4, !tbaa !49
  %.not.i.i.3 = icmp slt i32 %.032.i.3, %i.ed
  br i1 %.not.i.i.3, label %bb.n, label %lwDrawPixel.exit.i.3

bb.n:                                             ; preds = %bb.m
  %i.ee = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ef = mul nuw nsw i32 %i.ea, %.032.i.3
  %i.eg = add nuw nsw i32 %i.ef, %.030.i.3
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.eh
  store i8 %i.ax, ptr %i.ei, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i.3

lwDrawPixel.exit.i.3:                             ; preds = %bb.n, %bb.m, %bb.l, %bb.k
  %i.ej = icmp eq i32 %.030.i.3, %i.n
  %i.ek = icmp eq i32 %.032.i.3, %i.r
  %or.cond.i.3 = and i1 %i.ek, %i.ej
  br i1 %or.cond.i.3, label %lwDrawLine.exit.loopexit.3, label %bb.o

bb.o:                                             ; preds = %lwDrawPixel.exit.i.3
  %i.el = shl nsw i32 %.0.i.3, 1                  ; 2 uses
  %i.em = icmp sgt i32 %i.el, %i.dy               ; 2 uses
  %i.en = select i1 %i.em, i32 %i.du, i32 0
  %.131.i.3 = add nsw i32 %i.en, %.030.i.3
  %i.eo = select i1 %i.em, i32 %i.ds, i32 0
  %.1.i.3 = sub i32 %.0.i.3, %i.eo
  %i.ep = icmp slt i32 %i.el, %i.dq               ; 2 uses
  %i.eq = select i1 %i.ep, i32 %i.dw, i32 0
  %.133.i.3 = add nsw i32 %i.eq, %.032.i.3
  %i.er = select i1 %i.ep, i32 %i.dq, i32 0
  %.2.i.3 = add nsw i32 %.1.i.3, %i.er
  br label %bb.k

lwDrawLine.exit.loopexit.3:                       ; preds = %lwDrawPixel.exit.i.3
  ret void

bb.p:                                             ; preds = %bb.t, %lwDrawLine.exit.preheader
  %.032.i = phi i32 [ %i.r, %lwDrawLine.exit.preheader ], [ %.133.i, %bb.t ] ; 5 uses
  %.030.i = phi i32 [ %i.n, %lwDrawLine.exit.preheader ], [ %.131.i, %bb.t ] ; 5 uses
  %.0.i = phi i32 [ %i.bh, %lwDrawLine.exit.preheader ], [ %.2.i, %bb.t ] ; 2 uses
  %i.es = icmp slt i32 %.030.i, 0
  br i1 %i.es, label %lwDrawPixel.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.et = load i32, ptr %0, align 8, !tbaa !47    ; 2 uses
  %i.eu = icmp sge i32 %.030.i, %i.et
  %i.ev = icmp slt i32 %.032.i, 0
  %or.cond.i.i = or i1 %i.ev, %i.eu
  br i1 %or.cond.i.i, label %lwDrawPixel.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ew = load i32, ptr %i.aw, align 4, !tbaa !49
  %.not.i.i = icmp slt i32 %.032.i, %i.ew
  br i1 %.not.i.i, label %bb.s, label %lwDrawPixel.exit.i

bb.s:                                             ; preds = %bb.r
  %i.ex = load ptr, ptr %i.ay, align 8, !tbaa !50
  %i.ey = mul nuw nsw i32 %i.et, %.032.i
  %i.ez = add nuw nsw i32 %i.ey, %.030.i
  %i.fa = zext nneg i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ex, i64 %i.fa
  store i8 %i.ax, ptr %i.fb, align 1, !tbaa !13
  br label %lwDrawPixel.exit.i

lwDrawPixel.exit.i:                               ; preds = %bb.s, %bb.r, %bb.q, %bb.p
  %i.fc = icmp eq i32 %.030.i, %i.x
  %i.fd = icmp eq i32 %.032.i, %i.ab
  %or.cond.i = and i1 %i.fd, %i.fc
  br i1 %or.cond.i, label %lwDrawLine.exit.loopexit, label %bb.t

bb.t:                                             ; preds = %lwDrawPixel.exit.i
  %i.fe = shl nsw i32 %.0.i, 1                    ; 2 uses
  %i.ff = icmp sgt i32 %i.fe, %i.bi               ; 2 uses
  %i.fg = select i1 %i.ff, i32 %i.be, i32 0
  %.131.i = add nsw i32 %i.fg, %.030.i
  %i.fh = select i1 %i.ff, i32 %i.bc, i32 0
  %.1.i = sub i32 %.0.i, %i.fh
  %i.fi = icmp slt i32 %i.fe, %i.ba               ; 2 uses
  %i.fj = select i1 %i.fi, i32 %i.bg, i32 0
  %.133.i = add nsw i32 %i.fj, %.032.i
  %i.fk = select i1 %i.fi, i32 %i.ba, i32 0
  %.2.i = add nsw i32 %.1.i, %i.fk
  br label %bb.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #11

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { nounwind willreturn memory(read) }
attributes #15 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"short", !11, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"long", !11, i64 0}
!18 = !{!19, !10, i64 88}
!19 = !{!"client", !17, i64 0, !17, i64 8, !20, i64 16, !11, i64 24, !11, i64 25, !11, i64 26, !11, i64 27, !10, i64 28, !22, i64 32, !23, i64 40, !23, i64 48, !23, i64 56, !24, i64 64, !17, i64 72, !17, i64 80, !10, i64 88, !25, i64 96, !10, i64 104, !10, i64 108, !25, i64 112, !17, i64 120, !27, i64 128, !28, i64 152, !29, i64 160, !10, i64 168, !25, i64 176, !10, i64 184, !10, i64 188, !30, i64 192, !30, i64 200, !30, i64 208, !30, i64 216, !21, i64 224, !10, i64 232, !10, i64 236, !17, i64 240, !31, i64 248, !32, i64 256, !31, i64 264, !17, i64 272, !17, i64 280, !17, i64 288, !10, i64 296, !10, i64 300, !33, i64 304, !17, i64 312, !17, i64 320, !17, i64 328, !32, i64 336, !32, i64 344, !10, i64 352, !10, i64 356, !10, i64 360, !10, i64 364, !17, i64 368, !17, i64 376, !24, i64 384, !32, i64 392, !32, i64 400, !32, i64 408, !32, i64 416, !32, i64 424, !32, i64 432, !32, i64 440, !32, i64 448, !32, i64 456, !32, i64 464, !32, i64 472, !11, i64 480, !10, i64 524, !24, i64 528, !10, i64 536, !10, i64 540, !17, i64 544, !34, i64 552, !36, i64 592, !32, i64 664, !31, i64 672, !37, i64 680, !37, i64 688, !37, i64 696, !24, i64 704, !24, i64 712, !38, i64 720, !38, i64 728, !38, i64 736, !21, i64 744, !21, i64 752, !21, i64 760, !21, i64 768, !21, i64 776, !17, i64 784, !39, i64 792, !17, i64 800, !10, i64 808, !38, i64 816, !21, i64 824, !38, i64 832, !17, i64 840, !38, i64 848, !17, i64 856, !38, i64 864, !17, i64 872, !40, i64 880, !40, i64 904, !17, i64 928, !17, i64 936, !17, i64 944, !32, i64 952, !17, i64 960, !17, i64 968, !24, i64 976, !11, i64 984, !41, i64 992, !32, i64 1000, !32, i64 1008, !32, i64 1016, !42, i64 1024, !24, i64 1032, !11, i64 1040}
!20 = !{!"p1 _ZTS10connection", !21, i64 0}
!21 = !{!"any pointer", !11, i64 0}
!22 = !{!"p1 _ZTS7redisDb", !21, i64 0}
!23 = !{!"p1 _ZTS11redisObject", !21, i64 0}
!24 = !{!"p1 omnipotent char", !21, i64 0}
!25 = !{!"p2 _ZTS11redisObject", !26, i64 0}
!26 = !{!"any p2 pointer", !21, i64 0}
!27 = !{!"pendingCommandList", !28, i64 0, !28, i64 8, !10, i64 16, !10, i64 20}
!28 = !{!"p1 _ZTS14pendingCommand", !21, i64 0}
!29 = !{!"p1 _ZTS14deferredObject", !21, i64 0}
!30 = !{!"p1 _ZTS12redisCommand", !21, i64 0}
!31 = !{!"p1 _ZTS4list", !21, i64 0}
!32 = !{!"long long", !11, i64 0}
!33 = !{!"p1 _ZTS9dictEntry", !21, i64 0}
!34 = !{!"multiState", !35, i64 0, !10, i64 8, !10, i64 12, !10, i64 16, !10, i64 20, !17, i64 24, !10, i64 32}
!35 = !{!"p2 _ZTS14pendingCommand", !26, i64 0}
!36 = !{!"blockingState", !10, i64 0, !32, i64 8, !10, i64 16, !37, i64 24, !10, i64 32, !10, i64 36, !32, i64 40, !21, i64 48, !21, i64 56, !17, i64 64}
!37 = !{!"p1 _ZTS4dict", !21, i64 0}
!38 = !{!"p1 _ZTS8listNode", !21, i64 0}
!39 = !{!"p1 _ZTS3rax", !21, i64 0}
!40 = !{!"listNode", !38, i64 0, !38, i64 8, !21, i64 16}
!41 = !{!"p1 _ZTS13payloadHeader", !21, i64 0}
!42 = !{!"p1 _ZTS7asmTask", !21, i64 0}
!43 = !{!19, !25, i64 96}
!44 = !{!23, !23, i64 0}
!45 = !{!46, !21, i64 8}
!46 = !{!"redisObject", !10, i64 0, !10, i64 0, !10, i64 1, !10, i64 3, !10, i64 4, !10, i64 5, !21, i64 8}
!47 = !{!48, !10, i64 0}
!48 = !{!"lwCanvas", !10, i64 0, !10, i64 4, !24, i64 8}
!49 = !{!48, !10, i64 4}
!50 = !{!48, !24, i64 8}
end_hunk_0
