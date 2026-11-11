Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_vector?download=true
inline.NumInlined: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 8
begin_hunk_0_@hypre_StructVectorInitializeShell:bb.a
  %i.br = load i32, ptr %i.bn, align 4, !tbaa !7
  %i.bs = sub nsw i32 %i.bq, %i.br
  %i.bt = tail call i32 @llvm.smax.i32(i32 %i.bs, i32 -1)
  %spec.select = add nsw i32 %i.bt, 1
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = sub nsw i32 %i.bv, %i.bx                ; 2 uses
  %i.bz = add nuw nsw i32 %i.by, 1
  %i.ca = mul nsw i32 %i.bz, %spec.select
  %.inv = icmp slt i32 %i.by, 0
  %i.cb = select i1 %.inv, i32 0, i32 %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = sub nsw i32 %i.cd, %i.cf                ; 2 uses
  %i.ch = add nuw nsw i32 %i.cg, 1
  %i.ci = mul nsw i32 %i.cb, %i.ch
  %.inv71 = icmp slt i32 %i.cg, 0
  %i.cj = select i1 %.inv71, i32 0, i32 %i.ci
  %i.ck = add nuw nsw i32 %i.cj, %.06774          ; 2 uses
  %indvars.iv.next82 = add nuw nsw i64 %indvars.iv81, 1 ; 2 uses
  %i.cl = load i32, ptr %i.bh, align 8, !tbaa !33
  %i.cm = sext i32 %i.cl to i64
  %i.cn = icmp slt i64 %indvars.iv.next82, %i.cm
  br i1 %i.cn, label %bb.f, label %._crit_edge78, !llvm.loop !47

._crit_edge78:                                    ; preds = %bb.f, %bb.e
  %.067.lcssa = phi i32 [ 0, %bb.e ], [ %i.ck, %bb.f ]
  store ptr %i.bj, ptr %i.be, align 8, !tbaa !25
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.067.lcssa, ptr %i.co, align 4, !tbaa !36
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge78, %bb.d
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !49
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i32 %i.cq, ptr %i.cr, align 8, !tbaa !50
  ret i32 0
}

declare ptr @hypre_BoxArrayCreate(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @hypre_StructVectorInitializeData(ptr nofree noundef writeonly captures(none) initializes((24, 36)) %0, ptr noundef %1) local_unnamed_addr #4 !guid !51 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.b, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorInitialize(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 !guid !52 {
bb.a:
  %i.a = tail call i32 @hypre_StructVectorInitializeShell(ptr noundef %0) ; 0 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.c = load i32, ptr %i.b, align 4, !tbaa !36
  %i.d = tail call ptr @hypre_CAlloc(i32 noundef %i.c, i32 noundef 8) #14
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.d, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 1, ptr %i.f, align 8, !tbaa !22
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_StructVectorSetValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, i32 noundef %3) local_unnamed_addr #5 !guid !54 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.i = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not61 = icmp eq i32 %3, 0
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.l ] ; 4 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %.not = icmp slt i32 %i.i, %i.p
  br i1 %.not, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not56 = icmp sgt i32 %i.i, %i.r
  br i1 %.not56, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.j, align 4, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not57 = icmp slt i32 %i.s, %i.u
  br i1 %.not57, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %.not58 = icmp sgt i32 %i.s, %i.w
  br i1 %.not58, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %.not59 = icmp slt i32 %i.x, %i.z
  br i1 %.not59, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.not60 = icmp sgt i32 %i.x, %i.ab
  br i1 %.not60, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7  ; 2 uses
  %i.am = sub i32 %i.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7  ; 2 uses
  %i.ap = sub i32 %i.s, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = sub nsw i32 %i.ar, %i.ao                ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = sub nsw i32 %i.x, %i.av
  %i.ax = add nuw nsw i32 %i.as, 1
  %i.ay = mul nsw i32 %i.aw, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %i.ay, %bb.i ], [ 0, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = sub nsw i32 %i.bb, %i.al                ; 2 uses
  %i.bd = add nsw i32 %i.ap, %i.az
  %i.be = add nuw nsw i32 %i.bc, 1
  %i.bf = mul nsw i32 %i.be, %i.bd
  %.inv = icmp slt i32 %i.bc, 0
  %i.bg = select i1 %.inv, i32 0, i32 %i.bf
  %i.bh = add nsw i32 %i.am, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi ; 2 uses
  br i1 %.not61, label %.sink.split, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !38
  %i.bl = fadd double %2, %i.bk
  br label %.sink.split

.sink.split:                                      ; preds = %bb.j, %bb.k
  %.sink = phi double [ %i.bl, %bb.k ], [ %2, %bb.j ]
  store double %.sink, ptr %i.bj, align 8, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %.sink.split, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !53

._crit_edge:                                      ; preds = %bb.l, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorSetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 !guid !69 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [3 x i32], align 4                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #14 ; 7 uses
  %i.j = tail call ptr @hypre_BoxCreate() #14     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !33
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !7
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = load i32, ptr %i.n, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !33
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !55

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
  %i.al = tail call i32 @hypre_BoxDestroy(ptr noundef %i.j) #14 ; 0 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.n, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread, %._crit_edge
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !26 ; 2 uses
  %i.ao = tail call ptr @hypre_BoxDuplicate(ptr noundef %1) #14 ; 7 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %.lr.ph507, label %._crit_edge508

.lr.ph507:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 4 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 12 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ba = load ptr, ptr %i.i, align 8, !tbaa !34  ; 3 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %._crit_edge508, label %.lr.ph507.split.preheader

.lr.ph507.split.preheader:                        ; preds = %.lr.ph507
  %.not439 = icmp eq i32 %3, 0
  br i1 %.not439, label %.lr.ph507.split.us551.preheader, label %.lr.ph507.split.preheader.a

.lr.ph507.split.us551.preheader:                  ; preds = %.lr.ph507.split.preheader
  %invariant.op640 = sub i64 -1, %i.a
  br label %.lr.ph507.split.a

.lr.ph507.split.preheader.a:                      ; preds = %.lr.ph507.split.preheader
  %scevgep = getelementptr i8, ptr %2, i64 8
  br label %.lr.ph507.split

.lr.ph507.splitthread-pre-split.a:                ; preds = %.critedge.us552
  %.pr = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %.lr.ph507.split.a

.lr.ph507.split.a:                                ; preds = %.lr.ph507.split.us551.preheader, %.lr.ph507.splitthread-pre-split.a
  %i.bc = phi ptr [ %.pr, %.lr.ph507.splitthread-pre-split.a ], [ %i.ba, %.lr.ph507.split.us551.preheader ] ; 2 uses
  %indvars.iv548.a = phi i64 [ %indvars.iv.next549.us, %.lr.ph507.splitthread-pre-split.a ], [ 0, %.lr.ph507.split.us551.preheader ] ; 4 uses
  %i.bd = load ptr, ptr %i.an, align 8, !tbaa !34
  %i.be = getelementptr inbounds nuw [24 x i8], ptr %i.bd, i64 %indvars.iv548.a ; 5 uses
  %.not438.a = icmp eq ptr %i.bc, null
  br i1 %.not438.a, label %.critedge.us552, label %bb.d

bb.d:                                             ; preds = %.lr.ph507.split.a
  %i.bf = getelementptr inbounds nuw [24 x i8], ptr %i.bc, i64 %indvars.iv548.a ; 5 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 4 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.bl = load ptr, ptr %i.as, align 8, !tbaa !24 ; 2 uses
  %i.bm = ptrtoaddr ptr %i.bl to i64
  %i.bn = load ptr, ptr %i.at, align 8, !tbaa !25
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv548.a
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bl, i64 %i.bq ; 6 uses
  %i.bs = call i32 @hypre_BoxGetSize(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.bt = load i32, ptr %i.bf, align 4, !tbaa !7
  %i.bu = load i32, ptr %i.be, align 4, !tbaa !7  ; 2 uses
  %i.bv = sub i32 %i.bt, %i.bu
  %i.bw = load i32, ptr %i.bh, align 4, !tbaa !7
  %i.bx = getelementptr inbounds nuw i8, ptr %i.be, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !7  ; 2 uses
  %i.bz = sub i32 %i.bw, %i.by
  %i.ca = getelementptr inbounds nuw i8, ptr %i.be, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.cd = sub nsw i32 %i.cc, %i.by                ; 3 uses
  %i.ce = icmp sgt i32 %i.cd, -1                  ; 2 uses
  br i1 %i.ce, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.cf = load i32, ptr %i.bj, align 4, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sub nsw i32 %i.cf, %i.ch
  %i.cj = add nuw nsw i32 %i.cd, 1
  %i.ck = mul nsw i32 %i.ci, %i.cj
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.cl = phi i32 [ %i.ck, %bb.e ], [ 0, %bb.d ]
  %i.cm = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cn = sub i32 %i.cm, %i.bu                    ; 2 uses
  %i.co = icmp sgt i32 %i.cn, -1                  ; 2 uses
  %i.cp = add nsw i32 %i.bz, %i.cl
  %i.cq = add i32 %i.cn, 1                        ; 2 uses
  %i.cr = mul nsw i32 %i.cq, %i.cp
  %i.cs = select i1 %i.co, i32 %i.cr, i32 0
  %i.ct = add nsw i32 %i.bv, %i.cs
  %i.cu = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.cv = sub i32 %i.bg, %i.cu
  %i.cw = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.cx = sub i32 %i.bi, %i.cw
  %i.cy = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.cz = sub nsw i32 %i.cy, %i.cw                ; 3 uses
  %i.da = icmp sgt i32 %i.cz, -1                  ; 2 uses
  br i1 %i.da, label %bb.g, label %._crit_edge551

._crit_edge551:                                   ; preds = %bb.f
  %.pre553 = add nuw nsw i32 %i.cz, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.db = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.dc = sub nsw i32 %i.bk, %i.db
  %i.dd = add nuw nsw i32 %i.cz, 1                ; 2 uses
  %i.de = mul nsw i32 %i.dc, %i.dd
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge551, %bb.g
  %.pre-phi554 = phi i32 [ %.pre553, %._crit_edge551 ], [ %i.dd, %bb.g ]
  %i.df = phi i32 [ 0, %._crit_edge551 ], [ %i.de, %bb.g ]
  %i.dg = load i32, ptr %i.b, align 4, !tbaa !7   ; 8 uses
  %i.dh = load i32, ptr %i.ay, align 4, !tbaa !7  ; 4 uses
  %i.di = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %.preheader457.lr.ph.a, label %.critedge.us552

.preheader457.lr.ph.a:                            ; preds = %bb.h
  %i.dk = load i32, ptr %i.av, align 4, !tbaa !7
  %i.dl = sub i32 %i.dk, %i.cu                    ; 2 uses
  %i.dm = icmp sgt i32 %i.dl, -1                  ; 2 uses
  %i.dn = add i32 %i.dl, 1                        ; 2 uses
  %i.do = select i1 %i.dm, i32 %i.dn, i32 0       ; 3 uses
  %i.dp = mul nsw i32 %i.do, %.pre-phi554
  %i.dq = select i1 %i.da, i32 %i.dp, i32 0
  %i.dr = select i1 %i.co, i32 %i.cq, i32 0       ; 3 uses
  %i.ds = add nuw nsw i32 %i.cd, 1
  %i.dt = mul nsw i32 %i.dr, %i.ds
  %i.du = select i1 %i.ce, i32 %i.dt, i32 0
  %i.dv = icmp sgt i32 %i.dh, 0
  %i.dw = sub i32 %i.dr, %i.dg
  %i.dx = sub i32 %i.do, %i.dg
  %i.dy = mul i32 %i.dh, %i.dr
  %i.dz = sub i32 %i.du, %i.dy
  %i.ea = mul i32 %i.do, %i.dh
  %i.eb = sub i32 %i.dq, %i.ea
  %i.ec = icmp sgt i32 %i.dg, 0
  %or.cond576 = and i1 %i.dv, %i.ec
  br i1 %or.cond576, label %.preheader457.us.preheader.a, label %.critedge.us552

.preheader457.us.preheader.a:                     ; preds = %.preheader457.lr.ph.a
  %i.ed = add nsw i32 %i.cx, %i.df
  %i.ee = mul nsw i32 %i.dn, %i.ed
  %i.ef = select i1 %i.dm, i32 %i.ee, i32 0
  %i.eg = add nsw i32 %i.cv, %i.ef
  %i.eh = zext nneg i32 %i.dg to i64              ; 2 uses
  %min.iters.check606 = icmp ult i32 %i.dg, 6
  %i.ei = add i64 %i.bm, %invariant.op640
  %n.vec602 = and i64 %i.eh, 2147483644           ; 5 uses
  %i.ej = trunc nuw nsw i64 %n.vec602 to i32
  %cmp.n611 = icmp eq i64 %n.vec602, %i.eh
  br label %.preheader457.us.a

.preheader457.us.a:                               ; preds = %.preheader457.us.preheader.a, %._crit_edge471.split.us.us.a
  %.1389479.us.a = phi i32 [ %i.fo, %._crit_edge471.split.us.us.a ], [ 0, %.preheader457.us.preheader.a ]
  %.0400478.us.a = phi i32 [ %i.fn, %._crit_edge471.split.us.us.a ], [ %i.eg, %.preheader457.us.preheader.a ]
  %.0404477.us.a = phi i32 [ %i.fm, %._crit_edge471.split.us.us.a ], [ %i.ct, %.preheader457.us.preheader.a ]
  br label %.preheader455.us.us.a

.preheader455.us.us.a:                            ; preds = %._crit_edge466.us.us.a, %.preheader457.us.a
  %.1391470.us.us.a = phi i32 [ 0, %.preheader457.us.a ], [ %i.fl, %._crit_edge466.us.us.a ]
  %.1401469.us.us.a = phi i32 [ %.0400478.us.a, %.preheader457.us.a ], [ %i.fk, %._crit_edge466.us.us.a ]
  %.1405468.us.us.a = phi i32 [ %.0404477.us.a, %.preheader457.us.a ], [ %i.fj, %._crit_edge466.us.us.a ]
  %i.ek = sext i32 %.1401469.us.us.a to i64       ; 5 uses
  %i.el = sext i32 %.1405468.us.us.a to i64       ; 5 uses
  br i1 %min.iters.check606, label %scalar.ph598.preheader, label %vector.memcheck600

vector.memcheck600:                               ; preds = %.preheader455.us.us.a
  %4 = sub nsw i64 %i.el, %i.ek
  %5 = add nsw i64 %4, %i.bq
  %i.em = shl nsw i64 %5, 3
  %.reass = add i64 %i.em, %i.ei
  %bound1.a = icmp ult i64 %.reass, 31
  br i1 %bound1.a, label %scalar.ph598.preheader, label %vector.ph601

vector.ph601:                                     ; preds = %vector.memcheck600
  %i.en = add nsw i64 %n.vec602, %i.el            ; 2 uses
  %i.eo = add nsw i64 %n.vec602, %i.ek            ; 2 uses
  %invariant.gep.a = getelementptr [8 x i8], ptr %2, i64 %i.ek
  %invariant.gep629 = getelementptr [8 x i8], ptr %i.br, i64 %i.el
  br label %vector.body603

vector.body603:                                   ; preds = %vector.body603, %vector.ph601
  %index604 = phi i64 [ 0, %vector.ph601 ], [ %index.next609, %vector.body603 ] ; 3 uses
  %gep.a = getelementptr [8 x i8], ptr %invariant.gep.a, i64 %index604 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %gep.a, i64 16
  %wide.load605 = load <2 x double>, ptr %gep.a, align 8, !tbaa !38
  %wide.load606 = load <2 x double>, ptr %i.ep, align 8, !tbaa !38
  %gep630 = getelementptr [8 x i8], ptr %invariant.gep629, i64 %index604 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %gep630, i64 16
  store <2 x double> %wide.load605, ptr %gep630, align 8, !tbaa !38
  store <2 x double> %wide.load606, ptr %i.eq, align 8, !tbaa !38
  %index.next609 = add nuw i64 %index604, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next609, %n.vec602
  br i1 %i.er, label %middle.block610, label %vector.body603, !llvm.loop !56

middle.block610:                                  ; preds = %vector.body603
  br i1 %cmp.n611, label %._crit_edge466.us.us.a, label %scalar.ph598.preheader

scalar.ph598.preheader:                           ; preds = %vector.memcheck600, %.preheader455.us.us.a, %middle.block610
  %indvars.iv528.ph.a = phi i64 [ %i.el, %vector.memcheck600 ], [ %i.el, %.preheader455.us.us.a ], [ %i.en, %middle.block610 ] ; 2 uses
  %indvars.iv526.ph.a = phi i64 [ %i.ek, %vector.memcheck600 ], [ %i.ek, %.preheader455.us.us.a ], [ %i.eo, %middle.block610 ] ; 2 uses
  %.1395464.us.us.ph.a = phi i32 [ 0, %vector.memcheck600 ], [ 0, %.preheader455.us.us.a ], [ %i.ej, %middle.block610 ] ; 4 uses
  %i.es = sub i32 %i.dg, %.1395464.us.us.ph.a
  %xtraiter.a = and i32 %i.es, 3                  ; 2 uses
  %lcmp.mod.not.a = icmp eq i32 %xtraiter.a, 0
  br i1 %lcmp.mod.not.a, label %scalar.ph598.prol.loopexit, label %scalar.ph598.prol

scalar.ph598.prol:                                ; preds = %scalar.ph598.preheader, %scalar.ph598.prol
  %indvars.iv540.us.prol = phi i64 [ %indvars.iv.next529.prol.a, %scalar.ph598.prol ], [ %indvars.iv528.ph.a, %scalar.ph598.preheader ] ; 2 uses
  %indvars.iv538.us.prol = phi i64 [ %indvars.iv.next527.prol.a, %scalar.ph598.prol ], [ %indvars.iv526.ph.a, %scalar.ph598.preheader ] ; 2 uses
  %.3397484.us.us.us.prol = phi i32 [ %7, %scalar.ph598.prol ], [ %.1395464.us.us.ph.a, %scalar.ph598.preheader ]
  %prol.iter = phi i32 [ %i.ev, %scalar.ph598.prol ], [ 0, %scalar.ph598.preheader ]
  %i.et = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv538.us.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !38
  %6 = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv540.us.prol
  store double %i.eu, ptr %6, align 8, !tbaa !38
  %indvars.iv.next529.prol.a = add nsw i64 %indvars.iv540.us.prol, 1 ; 3 uses
  %indvars.iv.next527.prol.a = add nsw i64 %indvars.iv538.us.prol, 1 ; 3 uses
  %7 = add nuw nsw i32 %.3397484.us.us.us.prol, 1 ; 2 uses
  %i.ev = add i32 %prol.iter, 1                   ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %i.ev, %xtraiter.a
  br i1 %prol.iter.cmp.not, label %scalar.ph598.prol.loopexit, label %scalar.ph598.prol, !llvm.loop !57

scalar.ph598.prol.loopexit:                       ; preds = %scalar.ph598.prol, %scalar.ph598.preheader
  %indvars.iv.next529.lcssa617.unr = phi i64 [ poison, %scalar.ph598.preheader ], [ %indvars.iv.next529.prol.a, %scalar.ph598.prol ]
  %indvars.iv.next527.lcssa616.unr = phi i64 [ poison, %scalar.ph598.preheader ], [ %indvars.iv.next527.prol.a, %scalar.ph598.prol ]
  %indvars.iv528.unr.a = phi i64 [ %indvars.iv528.ph.a, %scalar.ph598.preheader ], [ %indvars.iv.next529.prol.a, %scalar.ph598.prol ]
  %indvars.iv526.unr.a = phi i64 [ %indvars.iv526.ph.a, %scalar.ph598.preheader ], [ %indvars.iv.next527.prol.a, %scalar.ph598.prol ]
  %.1395464.us.us.unr.a = phi i32 [ %.1395464.us.us.ph.a, %scalar.ph598.preheader ], [ %7, %scalar.ph598.prol ]
  %8 = sub i32 %.1395464.us.us.ph.a, %i.dg
  %9 = icmp ugt i32 %8, -4
  br i1 %9, label %._crit_edge466.us.us.a, label %scalar.ph598

scalar.ph598:                                     ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598
  %indvars.iv528.a = phi i64 [ %indvars.iv.next529.1.a, %scalar.ph598 ], [ %indvars.iv528.unr.a, %scalar.ph598.prol.loopexit ] ; 5 uses
  %indvars.iv526.a = phi i64 [ %indvars.iv.next527.1.a, %scalar.ph598 ], [ %indvars.iv526.unr.a, %scalar.ph598.prol.loopexit ] ; 5 uses
  %.1395464.us.us.a = phi i32 [ %i.fg, %scalar.ph598 ], [ %.1395464.us.us.unr.a, %scalar.ph598.prol.loopexit ]
  %i.ew = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv526.a
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !38
  %10 = getelementptr inbounds [8 x i8], ptr %i.br, i64 %indvars.iv528.a
  store double %i.ex, ptr %10, align 8, !tbaa !38
  %i.ey = getelementptr [8 x i8], ptr %2, i64 %indvars.iv526.a
  %11 = getelementptr i8, ptr %i.ey, i64 8
  %i.ez = load double, ptr %11, align 8, !tbaa !38
  %12 = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv528.a
  %13 = getelementptr i8, ptr %12, i64 8
  store double %i.ez, ptr %13, align 8, !tbaa !38
  %i.fa = getelementptr [8 x i8], ptr %2, i64 %indvars.iv526.a
  %i.fb = getelementptr i8, ptr %i.fa, i64 16
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !38
  %14 = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv528.a
  %15 = getelementptr i8, ptr %14, i64 16
  store double %i.fc, ptr %15, align 8, !tbaa !38
  %i.fd = getelementptr [8 x i8], ptr %2, i64 %indvars.iv526.a
  %i.fe = getelementptr i8, ptr %i.fd, i64 24
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !38
  %16 = getelementptr [8 x i8], ptr %i.br, i64 %indvars.iv528.a
  %17 = getelementptr i8, ptr %16, i64 24
  store double %i.ff, ptr %17, align 8, !tbaa !38
  %indvars.iv.next529.1.a = add nsw i64 %indvars.iv528.a, 4 ; 2 uses
  %indvars.iv.next527.1.a = add nsw i64 %indvars.iv526.a, 4 ; 2 uses
  %i.fg = add nuw nsw i32 %.1395464.us.us.a, 4    ; 2 uses
  %exitcond.not.1.a = icmp eq i32 %i.fg, %i.dg
  br i1 %exitcond.not.1.a, label %._crit_edge466.us.us.a, label %scalar.ph598, !llvm.loop !58

._crit_edge466.us.us.a:                           ; preds = %scalar.ph598.prol.loopexit, %scalar.ph598, %middle.block610
  %indvars.iv.next529.lcssa.a = phi i64 [ %i.en, %middle.block610 ], [ %indvars.iv.next529.lcssa617.unr, %scalar.ph598.prol.loopexit ], [ %indvars.iv.next529.1.a, %scalar.ph598 ]
  %indvars.iv.next527.lcssa.a = phi i64 [ %i.eo, %middle.block610 ], [ %indvars.iv.next527.lcssa616.unr, %scalar.ph598.prol.loopexit ], [ %indvars.iv.next527.1.a, %scalar.ph598 ]
  %i.fh = trunc nsw i64 %indvars.iv.next529.lcssa.a to i32
  %i.fi = trunc nsw i64 %indvars.iv.next527.lcssa.a to i32
  %i.fj = add nsw i32 %i.dw, %i.fh                ; 2 uses
  %i.fk = add nsw i32 %i.dx, %i.fi                ; 2 uses
  %i.fl = add nuw nsw i32 %.1391470.us.us.a, 1    ; 2 uses
  %exitcond533.not.a = icmp eq i32 %i.fl, %i.dh
  br i1 %exitcond533.not.a, label %._crit_edge471.split.us.us.a, label %.preheader455.us.us.a, !llvm.loop !59

._crit_edge471.split.us.us.a:                     ; preds = %._crit_edge466.us.us.a
  %i.fm = add nsw i32 %i.dz, %i.fj
  %i.fn = add nsw i32 %i.eb, %i.fk
  %i.fo = add nuw nsw i32 %.1389479.us.a, 1       ; 2 uses
  %exitcond534.not.a = icmp eq i32 %i.fo, %i.di
  br i1 %exitcond534.not.a, label %.critedge.us552, label %.preheader457.us.a, !llvm.loop !60

.critedge.us552:                                  ; preds = %._crit_edge471.split.us.us.a, %.preheader457.lr.ph.a, %bb.h, %.lr.ph507.split.a
  %indvars.iv.next549.us = add nuw nsw i64 %indvars.iv548.a, 1 ; 2 uses
  %18 = load i32, ptr %i.ap, align 8, !tbaa !33
  %19 = sext i32 %18 to i64
  %20 = icmp slt i64 %indvars.iv.next549.us, %19
  br i1 %20, label %.lr.ph507.splitthread-pre-split.a, label %._crit_edge508, !llvm.loop !61

.lr.ph507.splitthread-pre-split:                  ; preds = %.critedge
  %.pr575 = load ptr, ptr %i.i, align 8, !tbaa !34
  br label %.lr.ph507.split

.lr.ph507.split:                                  ; preds = %.lr.ph507.split.preheader.a, %.lr.ph507.splitthread-pre-split
  %21 = phi ptr [ %.pr575, %.lr.ph507.splitthread-pre-split ], [ %i.ba, %.lr.ph507.split.preheader.a ] ; 2 uses
  %indvars.iv548 = phi i64 [ %indvars.iv.next549, %.lr.ph507.splitthread-pre-split ], [ 0, %.lr.ph507.split.preheader.a ] ; 4 uses
  %22 = load ptr, ptr %i.an, align 8, !tbaa !34
  %23 = getelementptr inbounds nuw [24 x i8], ptr %22, i64 %indvars.iv548 ; 5 uses
  %.not438 = icmp eq ptr %21, null
  br i1 %.not438, label %.critedge, label %bb.i

bb.i:                                             ; preds = %.lr.ph507.split
  %24 = getelementptr inbounds nuw [24 x i8], ptr %21, i64 %indvars.iv548 ; 5 uses
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = getelementptr inbounds nuw i8, ptr %24, i64 4 ; 2 uses
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = load ptr, ptr %i.as, align 8, !tbaa !24   ; 2 uses
  %31 = load ptr, ptr %i.at, align 8, !tbaa !25
  %32 = getelementptr inbounds nuw [4 x i8], ptr %31, i64 %indvars.iv548
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = sext i32 %33 to i64                       ; 2 uses
  %35 = getelementptr [8 x i8], ptr %30, i64 %34  ; 5 uses
  %36 = call i32 @hypre_BoxGetSize(ptr noundef nonnull %24, ptr noundef nonnull %i.b) #14 ; 0 uses
  %37 = load i32, ptr %24, align 4, !tbaa !7
  %38 = load i32, ptr %23, align 4, !tbaa !7      ; 2 uses
  %39 = sub i32 %37, %38
  %40 = load i32, ptr %26, align 4, !tbaa !7
  %41 = getelementptr inbounds nuw i8, ptr %23, i64 4
  %42 = load i32, ptr %41, align 4, !tbaa !7      ; 2 uses
  %43 = sub i32 %40, %42
  %44 = getelementptr inbounds nuw i8, ptr %23, i64 12
  %45 = getelementptr inbounds nuw i8, ptr %23, i64 16
  %46 = load i32, ptr %45, align 4, !tbaa !7
  %47 = sub nsw i32 %46, %42                      ; 3 uses
  %48 = icmp sgt i32 %47, -1                      ; 2 uses
  br i1 %48, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.fp = load i32, ptr %28, align 4, !tbaa !7
  %i.fq = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !7
  %i.fs = sub nsw i32 %i.fp, %i.fr
  %i.ft = add nuw nsw i32 %47, 1
  %i.fu = mul nsw i32 %i.fs, %i.ft
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.fv = phi i32 [ %i.fu, %bb.j ], [ 0, %bb.i ]
  %i.fw = load i32, ptr %44, align 4, !tbaa !7
  %i.fx = sub i32 %i.fw, %38                      ; 2 uses
  %i.fy = icmp sgt i32 %i.fx, -1                  ; 2 uses
  %i.fz = add nsw i32 %43, %i.fv
  %i.ga = add i32 %i.fx, 1                        ; 2 uses
  %i.gb = mul nsw i32 %i.ga, %i.fz
  %i.gc = select i1 %i.fy, i32 %i.gb, i32 0
  %i.gd = add nsw i32 %39, %i.gc
  %i.ge = load i32, ptr %i.ao, align 4, !tbaa !7  ; 2 uses
  %i.gf = sub i32 %25, %i.ge
  %i.gg = load i32, ptr %i.au, align 4, !tbaa !7  ; 2 uses
  %i.gh = sub i32 %27, %i.gg
  %i.gi = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.gj = sub nsw i32 %i.gi, %i.gg                ; 3 uses
  %i.gk = icmp sgt i32 %i.gj, -1                  ; 2 uses
  br i1 %i.gk, label %bb.l, label %._crit_edge552

._crit_edge552:                                   ; preds = %bb.k
  %.pre = add nuw nsw i32 %i.gj, 1
  br label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.gl = load i32, ptr %i.ax, align 4, !tbaa !7
  %i.gm = sub nsw i32 %29, %i.gl
  %i.gn = add nuw nsw i32 %i.gj, 1                ; 2 uses
  %i.go = mul nsw i32 %i.gm, %i.gn
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge552, %bb.l
  %.pre-phi = phi i32 [ %.pre, %._crit_edge552 ], [ %i.gn, %bb.l ]
  %i.gp = phi i32 [ 0, %._crit_edge552 ], [ %i.go, %bb.l ]
  %i.gq = load i32, ptr %i.b, align 4, !tbaa !7   ; 9 uses
  %i.gr = load i32, ptr %i.ay, align 4, !tbaa !7  ; 4 uses
  %i.gs = load i32, ptr %i.az, align 4, !tbaa !7  ; 2 uses
  %i.gt = icmp sgt i32 %i.gs, 0
  br i1 %i.gt, label %.preheader456.lr.ph, label %.critedge

.preheader456.lr.ph:                              ; preds = %bb.m
  %i.gu = load i32, ptr %i.av, align 4, !tbaa !7
  %i.gv = sub i32 %i.gu, %i.ge                    ; 2 uses
  %i.gw = icmp sgt i32 %i.gv, -1                  ; 2 uses
  %i.gx = add i32 %i.gv, 1                        ; 2 uses
  %i.gy = select i1 %i.gw, i32 %i.gx, i32 0       ; 3 uses
  %i.gz = mul nsw i32 %i.gy, %.pre-phi
  %i.ha = select i1 %i.gk, i32 %i.gz, i32 0
  %i.hb = select i1 %i.fy, i32 %i.ga, i32 0       ; 3 uses
  %i.hc = add nuw nsw i32 %47, 1
  %i.hd = mul nsw i32 %i.hb, %i.hc
  %i.he = select i1 %48, i32 %i.hd, i32 0
  %i.hf = icmp sgt i32 %i.gr, 0
  %i.hg = sub i32 %i.hb, %i.gq
  %i.hh = sub i32 %i.gy, %i.gq
  %i.hi = mul i32 %i.gr, %i.hb
  %i.hj = sub i32 %i.he, %i.hi
  %i.hk = mul i32 %i.gy, %i.gr
  %i.hl = sub i32 %i.ha, %i.hk
  %i.hm = icmp sgt i32 %i.gq, 0
  %or.cond578 = and i1 %i.hf, %i.hm
  br i1 %or.cond578, label %.preheader456.us.preheader, label %.critedge

.preheader456.us.preheader:                       ; preds = %.preheader456.lr.ph
  %i.hn = add nsw i32 %i.gh, %i.gp
  %i.ho = mul nsw i32 %i.gx, %i.hn
  %i.hp = select i1 %i.gw, i32 %i.ho, i32 0
  %49 = add nsw i32 %i.gf, %i.hp
  %i.hq = add nsw i32 %i.gq, -1
  %i.hr = zext i32 %i.hq to i64                   ; 2 uses
  %50 = shl nuw nsw i64 %i.hr, 3
  %scevgep596 = getelementptr i8, ptr %scevgep, i64 %50
  %scevgep597 = getelementptr i8, ptr %30, i64 8
  %invariant.op.reass = add nsw i64 %34, %i.hr
  %51 = shl nsw i64 %invariant.op.reass, 3
  %scevgep598 = getelementptr i8, ptr %scevgep597, i64 %51
  %52 = zext nneg i32 %i.gq to i64                ; 2 uses
  %min.iters.check = icmp ult i32 %i.gq, 4
  %n.vec = and i64 %52, 2147483644                ; 5 uses
  %i.hs = trunc nuw nsw i64 %n.vec to i32
  %cmp.n = icmp eq i64 %n.vec, %52
  br label %.preheader456.us

.preheader456.us:                                 ; preds = %.preheader456.us.preheader, %._crit_edge491.split.us.us
  %.3501.us = phi i32 [ %i.iw, %._crit_edge491.split.us.us ], [ 0, %.preheader456.us.preheader ]
  %.3403500.us = phi i32 [ %i.iv, %._crit_edge491.split.us.us ], [ %49, %.preheader456.us.preheader ]
  %.3407499.us = phi i32 [ %i.iu, %._crit_edge491.split.us.us ], [ %i.gd, %.preheader456.us.preheader ]
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %._crit_edge486.us.us, %.preheader456.us
  %.3393490.us.us = phi i32 [ 0, %.preheader456.us ], [ %i.it, %._crit_edge486.us.us ]
  %.4489.us.us = phi i32 [ %.3403500.us, %.preheader456.us ], [ %i.is, %._crit_edge486.us.us ]
  %.4408488.us.us = phi i32 [ %.3407499.us, %.preheader456.us ], [ %i.ir, %._crit_edge486.us.us ]
  %i.ht = sext i32 %.4489.us.us to i64            ; 5 uses
  %i.hu = sext i32 %.4408488.us.us to i64         ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.us.us
  %53 = shl nsw i64 %i.hu, 3                      ; 2 uses
  %54 = getelementptr i8, ptr %35, i64 %53
  %55 = getelementptr i8, ptr %scevgep598, i64 %53
  %i.hv = shl nsw i64 %i.ht, 3                    ; 2 uses
  %56 = getelementptr i8, ptr %2, i64 %i.hv
  %57 = getelementptr i8, ptr %scevgep596, i64 %i.hv
  %bound0 = icmp ult ptr %54, %57
  %diff.check = icmp ult ptr %56, %55
  %found.conflict = and i1 %bound0, %diff.check
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.hw = add nsw i64 %n.vec, %i.hu               ; 2 uses
  %i.hx = add nsw i64 %n.vec, %i.ht               ; 2 uses
  %invariant.gep631 = getelementptr [8 x i8], ptr %2, i64 %i.ht
  %invariant.gep633 = getelementptr [8 x i8], ptr %35, i64 %i.hu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep632 = getelementptr [8 x i8], ptr %invariant.gep631, i64 %index ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %gep632, i64 16
  %wide.load = load <2 x double>, ptr %gep632, align 8, !tbaa !38, !alias.scope !70
  %wide.load583 = load <2 x double>, ptr %i.hy, align 8, !tbaa !38, !alias.scope !70
  %gep634 = getelementptr [8 x i8], ptr %invariant.gep633, i64 %index ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %gep634, i64 16 ; 2 uses
  %wide.load600 = load <2 x double>, ptr %gep634, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %wide.load601 = load <2 x double>, ptr %i.hz, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %58 = fadd <2 x double> %wide.load, %wide.load600
  %59 = fadd <2 x double> %wide.load583, %wide.load601
  store <2 x double> %58, ptr %gep634, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  store <2 x double> %59, ptr %i.hz, align 8, !tbaa !38, !alias.scope !71, !noalias !70
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !65

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge486.us.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.preheader.us.us, %middle.block
  %indvars.iv540.ph = phi i64 [ %i.hu, %vector.memcheck ], [ %i.hu, %.preheader.us.us ], [ %i.hw, %middle.block ] ; 3 uses
  %indvars.iv538.ph = phi i64 [ %i.ht, %vector.memcheck ], [ %i.ht, %.preheader.us.us ], [ %i.hx, %middle.block ] ; 3 uses
  %.3397484.us.us.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.preheader.us.us ], [ %i.hs, %middle.block ] ; 4 uses
  %i.ib = sub i32 %i.gq, %.3397484.us.us.ph
  %.neg = add i32 %.3397484.us.us.ph, 1
  %xtraiter623 = and i32 %i.ib, 1
  %lcmp.mod624.not = icmp eq i32 %xtraiter623, 0
  br i1 %lcmp.mod624.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %60 = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv538.ph
  %61 = load double, ptr %60, align 8, !tbaa !38
  %i.ic = getelementptr inbounds [8 x i8], ptr %35, i64 %indvars.iv540.ph ; 2 uses
  %i.id = load double, ptr %i.ic, align 8, !tbaa !38
  %62 = fadd double %61, %i.id
  store double %62, ptr %i.ic, align 8, !tbaa !38
  %indvars.iv.next541.prol = add nsw i64 %indvars.iv540.ph, 1 ; 2 uses
  %indvars.iv.next539.prol = add nsw i64 %indvars.iv538.ph, 1 ; 2 uses
  %prol.iter.next = add nuw nsw i32 %.3397484.us.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.next541.lcssa620.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next541.prol, %scalar.ph.prol ]
  %indvars.iv.next539.lcssa619.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %indvars.iv.next539.prol, %scalar.ph.prol ]
  %indvars.iv540.unr = phi i64 [ %indvars.iv540.ph, %scalar.ph.preheader ], [ %indvars.iv.next541.prol, %scalar.ph.prol ]
  %indvars.iv538.unr = phi i64 [ %indvars.iv538.ph, %scalar.ph.preheader ], [ %indvars.iv.next539.prol, %scalar.ph.prol ]
  %.3397484.us.us.unr = phi i32 [ %.3397484.us.us.ph, %scalar.ph.preheader ], [ %prol.iter.next, %scalar.ph.prol ]
  %63 = icmp eq i32 %i.gq, %.neg
  br i1 %63, label %._crit_edge486.us.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv540 = phi i64 [ %indvars.iv.next541.3, %scalar.ph ], [ %indvars.iv540.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %indvars.iv538 = phi i64 [ %indvars.iv.next539.3, %scalar.ph ], [ %indvars.iv538.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %.3397484.us.us = phi i32 [ %i.io, %scalar.ph ], [ %.3397484.us.us.unr, %scalar.ph.prol.loopexit ]
  %i.ie = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv538
  %i.if = load double, ptr %i.ie, align 8, !tbaa !38
  %i.ig = getelementptr inbounds [8 x i8], ptr %35, i64 %indvars.iv540 ; 2 uses
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !38
  %64 = fadd double %i.if, %i.ih
  store double %64, ptr %i.ig, align 8, !tbaa !38
  %i.ii = getelementptr [8 x i8], ptr %2, i64 %indvars.iv538
  %i.ij = getelementptr i8, ptr %i.ii, i64 8
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !38
  %i.il = getelementptr [8 x i8], ptr %35, i64 %indvars.iv540
  %i.im = getelementptr i8, ptr %i.il, i64 8      ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !38
  %65 = fadd double %i.ik, %i.in
  store double %65, ptr %i.im, align 8, !tbaa !38
  %indvars.iv.next541.3 = add nsw i64 %indvars.iv540, 2 ; 2 uses
  %indvars.iv.next539.3 = add nsw i64 %indvars.iv538, 2 ; 2 uses
  %i.io = add nuw nsw i32 %.3397484.us.us, 2      ; 2 uses
  %exitcond545.not.3 = icmp eq i32 %i.io, %i.gq
  br i1 %exitcond545.not.3, label %._crit_edge486.us.us, label %scalar.ph, !llvm.loop !66

._crit_edge486.us.us:                             ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next541.lcssa = phi i64 [ %i.hw, %middle.block ], [ %indvars.iv.next541.lcssa620.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next541.3, %scalar.ph ]
  %indvars.iv.next539.lcssa = phi i64 [ %i.hx, %middle.block ], [ %indvars.iv.next539.lcssa619.unr, %scalar.ph.prol.loopexit ], [ %indvars.iv.next539.3, %scalar.ph ]
  %i.ip = trunc nsw i64 %indvars.iv.next541.lcssa to i32
  %i.iq = trunc nsw i64 %indvars.iv.next539.lcssa to i32
  %i.ir = add nsw i32 %i.hg, %i.ip                ; 2 uses
  %i.is = add nsw i32 %i.hh, %i.iq                ; 2 uses
  %i.it = add nuw nsw i32 %.3393490.us.us, 1      ; 2 uses
  %exitcond546.not = icmp eq i32 %i.it, %i.gr
  br i1 %exitcond546.not, label %._crit_edge491.split.us.us, label %.preheader.us.us, !llvm.loop !67

._crit_edge491.split.us.us:                       ; preds = %._crit_edge486.us.us
  %i.iu = add nsw i32 %i.hj, %i.ir
  %i.iv = add nsw i32 %i.hl, %i.is
  %i.iw = add nuw nsw i32 %.3501.us, 1            ; 2 uses
  %exitcond547.not = icmp eq i32 %i.iw, %i.gs
  br i1 %exitcond547.not, label %.critedge, label %.preheader456.us, !llvm.loop !68

.critedge:                                        ; preds = %._crit_edge491.split.us.us, %.preheader456.lr.ph, %bb.m, %.lr.ph507.split
  %indvars.iv.next549 = add nuw nsw i64 %indvars.iv548, 1 ; 2 uses
  %i.ix = load i32, ptr %i.ap, align 8, !tbaa !33
  %i.iy = sext i32 %i.ix to i64
  %i.iz = icmp slt i64 %indvars.iv.next549, %i.iy
  br i1 %i.iz, label %.lr.ph507.splitthread-pre-split, label %._crit_edge508, !llvm.loop !61

._crit_edge508:                                   ; preds = %.critedge, %.critedge.us552, %.lr.ph507, %bb.c
  %i.ja = call i32 @hypre_BoxDestroy(ptr noundef %i.ao) #14 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge508, %._crit_edge
  %i.jb = call i32 @hypre_BoxArrayDestroy(ptr noundef %i.i) #14 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  ret i32 0
}

declare ptr @hypre_BoxCreate() local_unnamed_addr #2

declare i32 @hypre_IntersectBoxes(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxDestroy(ptr noundef) local_unnamed_addr #2

declare ptr @hypre_BoxDuplicate(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxGetSize(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @hypre_StructVectorGetValues(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #6 !guid !73 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i32, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !34
  %i.i = load i32, ptr %1, align 4, !tbaa !7      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %wide.trip.count = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.k ] ; 4 uses
  %.04961 = phi double [ undef, %.lr.ph ], [ %.1, %bb.k ] ; 6 uses
  %i.o = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %.not = icmp slt i32 %i.i, %i.p
  br i1 %.not, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !7
  %.not55 = icmp sgt i32 %i.i, %i.r
  br i1 %.not55, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i32, ptr %i.j, align 4, !tbaa !7    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !7
  %.not56 = icmp slt i32 %i.s, %i.u
  br i1 %.not56, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = load i32, ptr %i.v, align 4, !tbaa !7
  %.not57 = icmp sgt i32 %i.s, %i.w
  br i1 %.not57, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = load i32, ptr %i.k, align 4, !tbaa !7    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7
  %.not58 = icmp slt i32 %i.x, %i.z
  br i1 %.not58, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %.not59 = icmp sgt i32 %i.x, %i.ab
  br i1 %.not59, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %indvars.iv
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !7
  %i.ag = sext i32 %i.af to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.ac, i64 %i.ag
  %i.ai = load ptr, ptr %i.n, align 8, !tbaa !26
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !34
  %i.ak = getelementptr inbounds nuw [24 x i8], ptr %i.aj, i64 %indvars.iv ; 5 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !7  ; 2 uses
  %i.am = sub i32 %i.i, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !7  ; 2 uses
  %i.ap = sub i32 %i.s, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = sub nsw i32 %i.ar, %i.ao                ; 2 uses
  %i.at = icmp sgt i32 %i.as, -1
  br i1 %i.at, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.av = load i32, ptr %i.au, align 4, !tbaa !7
  %i.aw = sub nsw i32 %i.x, %i.av
  %i.ax = add nuw nsw i32 %i.as, 1
  %i.ay = mul nsw i32 %i.aw, %i.ax
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.az = phi i32 [ %i.ay, %bb.i ], [ 0, %bb.h ]
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = sub nsw i32 %i.bb, %i.al                ; 2 uses
  %i.bd = add nsw i32 %i.ap, %i.az
  %i.be = add nuw nsw i32 %i.bc, 1
  %i.bf = mul nsw i32 %i.be, %i.bd
  %.inv = icmp slt i32 %i.bc, 0
  %i.bg = select i1 %.inv, i32 0, i32 %i.bf
  %i.bh = add nsw i32 %i.am, %i.bg
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bi
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.j
  %.1 = phi double [ %i.bk, %bb.j ], [ %.04961, %bb.g ], [ %.04961, %bb.f ], [ %.04961, %bb.e ], [ %.04961, %bb.d ], [ %.04961, %bb.c ], [ %.04961, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !72

._crit_edge:                                      ; preds = %bb.k, %bb.a
  %.049.lcssa = phi double [ undef, %bb.a ], [ %.1, %bb.k ]
  store double %.049.lcssa, ptr %2, align 8, !tbaa !38
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructVectorGetBoxValues(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 !guid !81 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !31   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !33
  %i.i = tail call ptr @hypre_BoxArrayCreate(i32 noundef %i.h) #14 ; 6 uses
  %i.j = tail call ptr @hypre_BoxCreate() #14     ; 9 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !33
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.r = load ptr, ptr %i.f, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %indvars.iv
  %i.t = tail call i32 @hypre_IntersectBoxes(ptr noundef %1, ptr noundef %i.s, ptr noundef %i.j) #14 ; 0 uses
  %i.u = load i32, ptr %i.j, align 4, !tbaa !7
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %indvars.iv ; 6 uses
  store i32 %i.u, ptr %i.w, align 4, !tbaa !7
  %i.x = load i32, ptr %i.m, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %i.x, ptr %i.y, align 4, !tbaa !7
  %i.z = load i32, ptr %i.n, align 4, !tbaa !7
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !7
  %i.ab = load i32, ptr %i.o, align 4, !tbaa !7
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !7
  %i.ad = load i32, ptr %i.p, align 4, !tbaa !7
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 %i.ad, ptr %i.ae, align 4, !tbaa !7
  %i.af = load i32, ptr %i.q, align 4, !tbaa !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  store i32 %i.af, ptr %i.ag, align 4, !tbaa !7
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ah = load i32, ptr %i.g, align 8, !tbaa !33
  %i.ai = sext i32 %i.ah to i64
  %i.aj = icmp slt i64 %indvars.iv.next, %i.ai
  br i1 %i.aj, label %bb.b, label %._crit_edge.thread, !llvm.loop !74

._crit_edge.thread:                               ; preds = %bb.b
  %i.ak = tail call i32 @hypre_BoxDestroy(ptr noundef nonnull %i.j) #14 ; 0 uses
  br label %bb.c

._crit_edge:                                      ; preds = %bb.a
end_hunk_0
begin_hunk_1_@hypre_MPI_Comm_rank

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #9

declare i32 @hypre_StructGridPrint(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_PrintBoxArrayData(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_StructVectorRead(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 !guid !112 {
bb.a:
  %i.a = alloca [255 x i8], align 16              ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  %i.d = call i32 @hypre_MPI_Comm_rank(i32 noundef %0, ptr noundef nonnull %i.c) #14 ; 0 uses
  %i.e = load i32, ptr %i.c, align 4, !tbaa !7
  %i.f = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.a, ptr noundef nonnull dereferenceable(1) @.str, ptr noundef %1, i32 noundef %i.e) #14 ; 0 uses
  %i.g = call noalias ptr @fopen(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.6) ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %i.a) ; 0 uses
  call void @exit(i32 noundef 1) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.3) #14 ; 0 uses
  %i.k = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.4) #14 ; 0 uses
  %i.l = call i32 @hypre_StructGridRead(i32 noundef %0, ptr noundef nonnull %i.g, ptr noundef nonnull %i.b) #14 ; 0 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.n = call ptr @hypre_CAlloc(i32 noundef 1, i32 noundef 80) #14 ; 15 uses
  store i32 %0, ptr %i.n, align 8, !tbaa !21
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = call i32 @hypre_StructGridRef(ptr noundef %i.m, ptr noundef nonnull %i.o) #14 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 32 ; 2 uses
  store i32 1, ptr %i.q, align 8, !tbaa !22
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 76
  store i32 1, ptr %i.r, align 4, !tbaa !23
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 52
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 56
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 60
  store <4 x i32> splat (i32 1), ptr %i.s, align 8, !tbaa !7
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store i32 1, ptr %i.w, align 8, !tbaa !7
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 68 ; 2 uses
  store i32 1, ptr %i.x, align 4, !tbaa !7
  %i.y = load i32, ptr %2, align 4, !tbaa !7
  store i32 %i.y, ptr %i.s, align 8, !tbaa !7
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  store i32 %i.aa, ptr %i.t, align 4, !tbaa !7
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !7
  store i32 %i.ac, ptr %i.u, align 8, !tbaa !7
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !7
  store i32 %i.ae, ptr %i.v, align 4, !tbaa !7
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7
  store i32 %i.ag, ptr %i.w, align 8, !tbaa !7
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !7
  store i32 %i.ai, ptr %i.x, align 4, !tbaa !7
  %i.aj = call i32 @hypre_StructVectorInitializeShell(ptr noundef nonnull %i.n) ; 0 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.n, i64 36
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !36
  %i.am = call ptr @hypre_CAlloc(i32 noundef %i.al, i32 noundef 8) #14
  %i.an = getelementptr inbounds nuw i8, ptr %i.n, i64 24 ; 2 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !24
  store i32 1, ptr %i.q, align 8, !tbaa !22
  %i.ao = load ptr, ptr %i.b, align 8, !tbaa !113
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !31
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !26
  %i.at = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.5) #14 ; 0 uses
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !24
  %i.av = call i32 @hypre_ReadBoxArrayData(ptr noundef nonnull %i.g, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef 1, ptr noundef %i.au) #14 ; 0 uses
  %i.aw = call i32 @fclose(ptr noundef nonnull %i.g) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %i.n
}

declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @hypre_StructGridRead(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_ReadBoxArrayData(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nounwind }
attributes #15 = { cold noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 99416997814719640}
!9 = !{i64 5645420692063901150}
!10 = !{i64 7576693614703807298}
!11 = !{i64 -8180545111729343201}
!12 = !{i64 -7512864155282073224}
!13 = !{i64 4571402749902994322}
!14 = !{i64 3169614066785825571}
!15 = !{!"any pointer", !5, i64 0}
!16 = !{!"p1 _ZTS23hypre_StructGrid_struct", !15, i64 0}
!17 = !{!"p1 _ZTS21hypre_BoxArray_struct", !15, i64 0}
!18 = !{!"p1 double", !15, i64 0}
!19 = !{!"p1 int", !15, i64 0}
!20 = !{!"hypre_StructVector_struct", !6, i64 0, !16, i64 8, !17, i64 16, !18, i64 24, !6, i64 32, !6, i64 36, !19, i64 40, !5, i64 48, !6, i64 72, !6, i64 76}
!21 = !{!20, !6, i64 0}
!22 = !{!20, !6, i64 32}
!23 = !{!20, !6, i64 76}
!24 = !{!20, !18, i64 24}
!25 = !{!20, !19, i64 40}
!26 = !{!20, !17, i64 16}
!27 = !{!20, !16, i64 8}
!28 = !{!"p1 _ZTS25hypre_BoxNeighbors_struct", !15, i64 0}
!29 = !{!"p1 _ZTS16hypre_Box_struct", !15, i64 0}
!30 = !{!"hypre_StructGrid_struct", !6, i64 0, !6, i64 4, !17, i64 8, !19, i64 16, !28, i64 24, !6, i64 32, !29, i64 40, !6, i64 48, !6, i64 52, !5, i64 56, !6, i64 68}
!31 = !{!30, !17, i64 8}
!32 = !{!"hypre_BoxArray_struct", !29, i64 0, !6, i64 8, !6, i64 12}
!33 = !{!32, !6, i64 8}
!34 = !{!32, !29, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!20, !6, i64 36}
!37 = !{!"double", !5, i64 0}
!38 = !{!37, !37, i64 0}
!39 = !{!"llvm.loop.isvectorized", i32 1}
!40 = !{!"llvm.loop.unroll.runtime.disable"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!"llvm.loop.unswitch.partial.disable"}
!43 = !{i64 37219578438678392}
!44 = !{i64 -3128790977680868309}
!45 = !{i64 8218848235396133348}
!46 = distinct !{!46, !35}
!47 = distinct !{!47, !35}
!48 = !{i64 -5060416990705663481}
!49 = !{!30, !6, i64 52}
!50 = !{!20, !6, i64 72}
!51 = !{i64 -6361409536506331288}
!52 = !{i64 -3674285776736471802}
!53 = distinct !{!53, !35}
!54 = !{i64 -8161918991122905334}
!55 = distinct !{!55, !35}
!56 = distinct !{!56, !35, !39, !40}
!57 = distinct !{!57, !41}
!58 = distinct !{!58, !35, !39}
!59 = distinct !{!59, !35}
!60 = distinct !{!60, !35}
!61 = distinct !{!61, !35, !42}
!62 = distinct !{!62, i1 false, !"LVerDomain"}
!63 = distinct !{!63, !62}
!64 = distinct !{!64, !62}
!65 = distinct !{!65, !35, !39, !40}
!66 = distinct !{!66, !35, !39}
!67 = distinct !{!67, !35}
!68 = distinct !{!68, !35}
!69 = !{i64 -7790269036518550619}
!70 = !{!63}
!71 = !{!64}
!72 = distinct !{!72, !35}
!73 = !{i64 4966920212703008258}
!74 = distinct !{!74, !35}
!75 = distinct !{!75, !35, !39, !40}
!76 = distinct !{!76, !41}
!77 = distinct !{!77, !35, !39}
!78 = distinct !{!78, !35}
!79 = distinct !{!79, !35}
!80 = distinct !{!80, !35, !42}
!81 = !{i64 377196244427914794}
!82 = !{i64 -3486347408696181152}
!83 = !{i64 -7786169546642294592}
!84 = distinct !{!84, !35, !39, !40}
!85 = distinct !{!85, !35, !40, !39}
!86 = distinct !{!86, !35}
!87 = distinct !{!87, !35}
!88 = distinct !{!88, !35}
!89 = !{i64 4885858520228566918}
!90 = distinct !{!90, !35}
!91 = distinct !{!91, !41}
!92 = distinct !{!92, !35}
!93 = distinct !{!93, !35}
!94 = distinct !{!94, !35}
!95 = !{i64 6343717435465551471}
!96 = distinct !{!96, !35, !39, !40}
!97 = distinct !{!97, !41}
!98 = distinct !{!98, !35, !39}
!99 = distinct !{!99, !35}
!100 = distinct !{!100, !35}
!101 = !{i64 -2845098357478282477}
!102 = !{i64 3899253049802839502}
!103 = !{!"p1 _ZTS26hypre_BoxArrayArray_struct", !15, i64 0}
!104 = !{!103, !103, i64 0}
!105 = !{!"any p2 pointer", !15, i64 0}
!106 = !{!"p2 int", !105, i64 0}
!107 = !{!106, !106, i64 0}
!108 = !{i64 3015763611210687539}
!109 = !{!"p1 _ZTS23hypre_CommHandle_struct", !15, i64 0}
!110 = !{!109, !109, i64 0}
!111 = !{i64 1513050930253858207}
!112 = !{i64 -6692171385159408650}
!113 = !{!16, !16, i64 0}
end_hunk_1
