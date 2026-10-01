Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/llb4Sweep?download=true
inline.NumInlined: 149
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@Llb_Nonlin4SweepPartitions:bb.a
  br i1 %i.j, label %.lr.ph52, label %.critedge

.lr.ph52:                                         ; preds = %.preheader
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  br label %bb.c

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.049 = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.b ] ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !40
  %.val45 = load i32, ptr %i.h, align 8, !tbaa !48
  %i.m = add nsw i32 %.val45, %.049
  %i.n = getelementptr i8, ptr %i.l, i64 8
  %.val41 = load ptr, ptr %i.n, align 8, !tbaa !42
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %.val41, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = tail call ptr @Llb_Nonlin4SweepPartitions_rec(ptr noundef %0, ptr noundef %i.q, ptr noundef %2, ptr noundef nonnull %i.a) ; 0 uses
  %i.s = add nuw nsw i32 %.049, 1                 ; 2 uses
  %.val43 = load i32, ptr %i.e, align 8, !tbaa !47
  %i.t = icmp slt i32 %i.s, %.val43
  br i1 %i.t, label %bb.b, label %.critedge, !llvm.loop !78

bb.c:                                             ; preds = %.lr.ph52, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph52 ], [ %indvars.iv.next, %bb.c ] ; 2 uses
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !40
  %i.v = getelementptr i8, ptr %i.u, i64 8
  %.val40 = load ptr, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val40, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43
  %i.y = tail call ptr @Llb_Nonlin4SweepPartitions_rec(ptr noundef %0, ptr noundef %i.x, ptr noundef %2, ptr noundef nonnull %i.a) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val44 = load i32, ptr %i.i, align 8, !tbaa !48
  %i.z = sext i32 %.val44 to i64
  %i.aa = icmp slt i64 %indvars.iv.next, %i.z
  br i1 %i.aa, label %bb.c, label %.critedge, !llvm.loop !79

.critedge:                                        ; preds = %bb.b, %bb.c, %.preheader46, %.preheader
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !35 ; 2 uses
  %i.ad = getelementptr i8, ptr %i.ac, i64 4
  %.val53 = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.ae = icmp sgt i32 %.val53, 0
  br i1 %i.ae, label %.lr.ph55, label %.critedge4

.lr.ph55:                                         ; preds = %.critedge, %bb.g
  %i.af = phi ptr [ %i.aq, %bb.g ], [ %i.ac, %.critedge ] ; 4 uses
  %indvars.iv58 = phi i64 [ %indvars.iv.next59, %bb.g ], [ 0, %.critedge ] ; 2 uses
  %i.ag = getelementptr i8, ptr %i.af, i64 8
  %.val39 = load ptr, ptr %i.ag, align 8, !tbaa !42
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %.val39, i64 %indvars.iv58
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !43 ; 3 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.g, label %bb.d

bb.d:                                             ; preds = %.lr.ph55
  %i.ak = getelementptr i8, ptr %i.ai, i64 24
  %.val42 = load i64, ptr %i.ak, align 8
  %i.al = trunc i64 %.val42 to i32
  %i.am = and i32 %i.al, 7
  %i.an = add nsw i32 %i.am, -7
  %narrow.i = icmp ult i32 %i.an, -2
  br i1 %narrow.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !45 ; 2 uses
  %.not38 = icmp eq ptr %i.ap, null
  br i1 %.not38, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef nonnull %i.ap) #14
  %.pre = load ptr, ptr %i.ab, align 8, !tbaa !35
  br label %bb.g

bb.g:                                             ; preds = %bb.d, %.lr.ph55, %bb.f, %bb.e
  %i.aq = phi ptr [ %i.af, %bb.d ], [ %i.af, %.lr.ph55 ], [ %.pre, %bb.f ], [ %i.af, %bb.e ] ; 2 uses
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 4
  %.val = load i32, ptr %i.ar, align 4, !tbaa !37
  %i.as = sext i32 %.val to i64
  %i.at = icmp slt i64 %indvars.iv.next59, %i.as
  br i1 %i.at, label %.lr.ph55, label %.critedge4, !llvm.loop !80

.critedge4:                                       ; preds = %bb.g, %.critedge
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define noundef ptr @Llb4_Nonlin4SweepBadMonitor(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 760 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !82
  store i64 0, ptr %i.a, align 8, !tbaa !82
  %i.c = tail call ptr @Cudd_ReadOne(ptr noundef %2) #14 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.c) #14
  %i.d = getelementptr i8, ptr %0, i64 112        ; 2 uses
  %.val2425 = load i32, ptr %i.d, align 8, !tbaa !48
  %i.e = icmp sgt i32 %.val2425, 0
  br i1 %i.e, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.02126 = phi ptr [ %i.c, %.lr.ph ], [ %i.t, %bb.b ] ; 2 uses
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %.val = load ptr, ptr %i.i, align 8, !tbaa !42
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %indvars.iv
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !43
  %.val22 = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.l = getelementptr i8, ptr %i.k, i64 36
  %.val23 = load i32, ptr %i.l, align 4, !tbaa !31
  %i.m = sext i32 %.val23 to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.val22, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !32
  %i.p = tail call ptr @Cudd_bddIthVar(ptr noundef nonnull %2, i32 noundef %i.o) #14
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = xor i64 %i.q, 1
  %i.s = inttoptr i64 %i.r to ptr
  %i.t = tail call ptr @Cudd_bddAnd(ptr noundef nonnull %2, ptr noundef %.02126, ptr noundef %i.s) #14 ; 3 uses
  tail call void @Cudd_Ref(ptr noundef %i.t) #14
  tail call void @Cudd_RecursiveDeref(ptr noundef nonnull %2, ptr noundef %.02126) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val24 = load i32, ptr %i.d, align 8, !tbaa !48
  %i.u = sext i32 %.val24 to i64
  %i.v = icmp slt i64 %indvars.iv.next, %i.u
  br i1 %i.v, label %bb.b, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.b, %bb.a
  %.021.lcssa = phi ptr [ %i.c, %bb.a ], [ %i.t, %bb.b ] ; 2 uses
  tail call void @Cudd_Deref(ptr noundef %.021.lcssa) #14
  store i64 %i.b, ptr %i.a, align 8, !tbaa !82
  %i.w = ptrtoint ptr %.021.lcssa to i64
  %i.x = xor i64 %i.w, 1
  %i.y = inttoptr i64 %i.x to ptr
  ret ptr %i.y
}

declare void @Cudd_Deref(ptr noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind memory(readwrite, target_mem: none) uwtable
define noalias noundef ptr @Llb_Nonlin4SweepVars2Q(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #6 {
bb.a:
  %calloc = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc, i64 4
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val24 = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %.val24, i64 4
  %.val24.val = load i32, ptr %i.c, align 4, !tbaa !37 ; 5 uses
  %.not.i.i = icmp sgt i32 %.val24.val, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %Vec_IntFill.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %calloc, i64 8
  %i.e = zext nneg i32 %.val24.val to i64         ; 4 uses
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #15 ; 5 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !34
  store i32 %.val24.val, ptr %calloc, align 8, !tbaa !38
  %min.iters.check = icmp ult i32 %.val24.val, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !32
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %Vec_IntFill.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i
  store i32 1, ptr %i.k, align 4, !tbaa !32
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.e
  br i1 %exitcond.not.i, label %Vec_IntFill.exit, label %scalar.ph, !llvm.loop !84

Vec_IntFill.exit:                                 ; preds = %scalar.ph, %middle.block, %bb.a
  %.val = phi ptr [ null, %bb.a ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ] ; 6 uses
  store i32 %.val24.val, ptr %i.a, align 4, !tbaa !39
  %i.l = getelementptr i8, ptr %0, i64 104
  %.val3235 = load i32, ptr %i.l, align 8, !tbaa !47 ; 8 uses
  %i.m = icmp sgt i32 %.val3235, 0
  br i1 %i.m, label %.lr.ph, label %.critedge2

.lr.ph:                                           ; preds = %Vec_IntFill.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr i8, ptr %0, i64 108
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val26 = load ptr, ptr %i.q, align 8, !tbaa !42 ; 3 uses
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val29 = load ptr, ptr %i.r, align 8, !tbaa !34 ; 3 uses
  %.val34.pre = load i32, ptr %i.p, align 4, !tbaa !64 ; 3 uses
  %3 = add nsw i32 %.val3235, -1                  ; 2 uses
  %xtraiter = and i32 %.val3235, 1
  %i.s = icmp eq i32 %3, 0
  br i1 %i.s, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i32 %.val3235, 2147483646
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.new
  %.036 = phi i32 [ 0, %.lr.ph.new ], [ %i.ao, %bb.b ] ; 3 uses
  %niter = phi i32 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.b ]
  %i.t = add nsw i32 %.val34.pre, %.036
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.val26, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !43
  %i.x = getelementptr i8, ptr %i.w, i64 36
  %.val30 = load i32, ptr %i.x, align 4, !tbaa !31
  %i.y = sext i32 %.val30 to i64
  %i.z = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !32
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ab
  store i32 0, ptr %i.ac, align 4, !tbaa !32
  %i.ad = or disjoint i32 %.036, 1
  %i.ae = add nsw i32 %.val34.pre, %i.ad
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr inbounds [8 x i8], ptr %.val26, i64 %i.af
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !43
  %i.ai = getelementptr i8, ptr %i.ah, i64 36
  %.val30.1 = load i32, ptr %i.ai, align 4, !tbaa !31
  %i.aj = sext i32 %.val30.1 to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !32
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.am
  store i32 0, ptr %i.an, align 4, !tbaa !32
  %i.ao = add nuw nsw i32 %.036, 2                ; 2 uses
  %niter.next.1 = add nuw nsw i32 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %.critedge.unr-lcssa, label %bb.b, !llvm.loop !0

.critedge.unr-lcssa:                              ; preds = %bb.b
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge, label %.epil.preheader

.epil.preheader:                                  ; preds = %.critedge.unr-lcssa, %.lr.ph
  %.036.epil.init = phi i32 [ 0, %.lr.ph ], [ %i.ao, %.critedge.unr-lcssa ]
  %lcmp.mod43 = trunc i32 %.val3235 to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.ap = add nsw i32 %.val34.pre, %.036.epil.init
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %.val26, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr i8, ptr %i.as, i64 36
  %.val30.epil = load i32, ptr %i.at, align 4, !tbaa !31
  %i.au = sext i32 %.val30.epil to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %.val29, i64 %i.au
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !32
  %i.ax = sext i32 %i.aw to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.ax
  store i32 0, ptr %i.ay, align 4, !tbaa !32
  br label %.critedge

.critedge:                                        ; preds = %.critedge.unr-lcssa, %.epil.preheader
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.critedge2, label %.lr.ph39

.lr.ph39:                                         ; preds = %.critedge
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !40
  %i.bb = getelementptr i8, ptr %0, i64 112
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  %.val25 = load ptr, ptr %i.bc, align 8, !tbaa !42 ; 3 uses
  %i.bd = getelementptr i8, ptr %1, i64 8
  %.val27 = load ptr, ptr %i.bd, align 8, !tbaa !34 ; 3 uses
  %.val33.pre = load i32, ptr %i.bb, align 8, !tbaa !48 ; 3 uses
  %xtraiter45 = and i32 %.val3235, 1
  %i.be = icmp eq i32 %3, 0
  br i1 %i.be, label %.epil.preheader44, label %.lr.ph39.new

.lr.ph39.new:                                     ; preds = %.lr.ph39
  %unroll_iter48 = and i32 %.val3235, 2147483646
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph39.new
  %.138 = phi i32 [ 0, %.lr.ph39.new ], [ %i.ca, %bb.c ] ; 3 uses
  %niter49 = phi i32 [ 0, %.lr.ph39.new ], [ %niter49.next.1, %bb.c ]
  %i.bf = add nsw i32 %.val33.pre, %.138
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.val25, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr i8, ptr %i.bi, i64 36
  %.val28 = load i32, ptr %i.bj, align 4, !tbaa !31
  %i.bk = sext i32 %.val28 to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.bk
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !32
  %i.bn = sext i32 %i.bm to i64
  %i.bo = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.bn
  store i32 0, ptr %i.bo, align 4, !tbaa !32
  %i.bp = or disjoint i32 %.138, 1
  %i.bq = add nsw i32 %.val33.pre, %i.bp
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [8 x i8], ptr %.val25, i64 %i.br
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !43
  %i.bu = getelementptr i8, ptr %i.bt, i64 36
  %.val28.1 = load i32, ptr %i.bu, align 4, !tbaa !31
  %i.bv = sext i32 %.val28.1 to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !32
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.by
  store i32 0, ptr %i.bz, align 4, !tbaa !32
  %i.ca = add nuw nsw i32 %.138, 2                ; 2 uses
  %niter49.next.1 = add nuw nsw i32 %niter49, 2   ; 2 uses
  %niter49.ncmp.1.not = icmp eq i32 %niter49.next.1, %unroll_iter48
  br i1 %niter49.ncmp.1.not, label %.critedge2.loopexit.unr-lcssa, label %bb.c, !llvm.loop !1

.critedge2.loopexit.unr-lcssa:                    ; preds = %bb.c
  %lcmp.mod46.not = icmp eq i32 %xtraiter45, 0
  br i1 %lcmp.mod46.not, label %.critedge2, label %.epil.preheader44

.epil.preheader44:                                ; preds = %.critedge2.loopexit.unr-lcssa, %.lr.ph39
  %.138.epil.init = phi i32 [ 0, %.lr.ph39 ], [ %i.ca, %.critedge2.loopexit.unr-lcssa ]
  %lcmp.mod47 = trunc i32 %.val3235 to i1
  tail call void @llvm.assume(i1 %lcmp.mod47)
  %i.cb = add nsw i32 %.val33.pre, %.138.epil.init
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr inbounds [8 x i8], ptr %.val25, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr i8, ptr %i.ce, i64 36
  %.val28.epil = load i32, ptr %i.cf, align 4, !tbaa !31
  %i.cg = sext i32 %.val28.epil to i64
  %i.ch = getelementptr inbounds [4 x i8], ptr %.val27, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cj = sext i32 %i.ci to i64
  %i.ck = getelementptr inbounds [4 x i8], ptr %.val, i64 %i.cj
  store i32 0, ptr %i.ck, align 4, !tbaa !32
  br label %.critedge2

.critedge2:                                       ; preds = %.epil.preheader44, %.critedge2.loopexit.unr-lcssa, %.critedge, %Vec_IntFill.exit
  ret ptr %calloc
}

; Function Attrs: nounwind uwtable
define void @Llb_Nonlin4SweepDeref(ptr noundef %0, ptr noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %.val8 = load i32, ptr %i.a, align 4, !tbaa !37
  %i.b = icmp sgt i32 %.val8, 0
  br i1 %i.b, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val7 = load ptr, ptr %i.c, align 8, !tbaa !42
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %.val7, i64 %indvars.iv
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !43
  tail call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.e) #14
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !37
  %i.f = sext i32 %.val to i64
  %i.g = icmp slt i64 %indvars.iv.next, %i.f
  br i1 %i.g, label %bb.b, label %.critedge, !llvm.loop !2

.critedge:                                        ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !42   ; 2 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %Vec_PtrFree.exit, label %bb.c

bb.c:                                             ; preds = %.critedge
  tail call void @free(ptr noundef nonnull %i.i) #14
  br label %Vec_PtrFree.exit

Vec_PtrFree.exit:                                 ; preds = %.critedge, %bb.c
  tail call void @free(ptr noundef nonnull %1) #14
  ret void
}

; Function Attrs: nounwind uwtable
define void @Llb_Nonlin4SweepPrint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4          ; 3 uses
  %.val6 = load i32, ptr %i.a, align 4, !tbaa !37
  %i.b = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.val6) ; 0 uses
  %.val8 = load i32, ptr %i.a, align 4, !tbaa !37
  %i.c = icmp sgt i32 %.val8, 0
  br i1 %i.c, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %.val7 = load ptr, ptr %i.d, align 8, !tbaa !42
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.val7, i64 %indvars.iv
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !43
  %i.g = tail call i32 @Cudd_DagSize(ptr noundef %i.f) #14
  %i.h = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %i.g) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.val = load i32, ptr %i.a, align 4, !tbaa !37
  %i.i = sext i32 %.val to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %.critedge, !llvm.loop !3

.critedge:                                        ; preds = %bb.b, %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define noundef ptr @Llb4_Nonlin4SweepBadStates(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %calloc.i = tail call dereferenceable_or_null(16) ptr @calloc(i64 1, i64 16) ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %calloc.i, i64 4
  %i.b = getelementptr i8, ptr %0, i64 32
  %.val24.i = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.c = getelementptr i8, ptr %.val24.i, i64 4
  %.val24.val.i = load i32, ptr %i.c, align 4, !tbaa !37 ; 5 uses
  %.not.i.i.i = icmp sgt i32 %.val24.val.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i, label %Vec_IntFill.exit.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %calloc.i, i64 8
  %i.e = zext nneg i32 %.val24.val.i to i64       ; 4 uses
  %i.f = shl nuw nsw i64 %i.e, 2
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #15 ; 5 uses
  store ptr %i.g, ptr %i.d, align 8, !tbaa !34
  store i32 %.val24.val.i, ptr %calloc.i, align 8, !tbaa !38
  %min.iters.check = icmp ult i32 %.val24.val.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i
  %n.vec = and i64 %i.e, 2147483640               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store <4 x i32> splat (i32 1), ptr %i.h, align 4, !tbaa !32
  store <4 x i32> splat (i32 1), ptr %i.i, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.j = icmp eq i64 %index.next, %n.vec
  br i1 %i.j, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.e
  br i1 %cmp.n, label %Vec_IntFill.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %scalar.ph ], [ %indvars.iv.i.i.ph, %scalar.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.i.i
  store i32 1, ptr %i.k, align 4, !tbaa !32
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.e
  br i1 %exitcond.not.i.i, label %Vec_IntFill.exit.i, label %scalar.ph, !llvm.loop !86

Vec_IntFill.exit.i:                               ; preds = %scalar.ph, %middle.block, %bb.a
  %.val.i = phi ptr [ null, %bb.a ], [ %i.g, %middle.block ], [ %i.g, %scalar.ph ] ; 5 uses
  store i32 %.val24.val.i, ptr %i.a, align 4, !tbaa !39
  %i.l = getelementptr i8, ptr %0, i64 104
  %.val3235.i = load i32, ptr %i.l, align 8, !tbaa !47 ; 3 uses
  %i.m = icmp sgt i32 %.val3235.i, 0
  br i1 %i.m, label %.lr.ph.i, label %Llb_Nonlin4SweepVars2Q.exit

.lr.ph.i:                                         ; preds = %Vec_IntFill.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr i8, ptr %0, i64 108
  %i.q = getelementptr i8, ptr %i.o, i64 8
  %.val26.i = load ptr, ptr %i.q, align 8, !tbaa !42
  %i.r = getelementptr i8, ptr %1, i64 8
  %.val29.i = load ptr, ptr %i.r, align 8, !tbaa !34 ; 5 uses
  %.val34.pre.i = load i32, ptr %i.p, align 4, !tbaa !64
  %i.s = sext i32 %.val34.pre.i to i64
  %wide.trip.count = zext nneg i32 %.val3235.i to i64 ; 2 uses
  %invariant.gep = getelementptr [8 x i8], ptr %.val26.i, i64 %i.s ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.t = icmp ult i32 %.val3235.i, 4
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.u = load ptr, ptr %gep, align 8, !tbaa !43
  %i.v = getelementptr i8, ptr %i.u, i64 36
  %.val30.i = load i32, ptr %i.v, align 4, !tbaa !31
  %i.w = sext i32 %.val30.i to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.val29.i, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4, !tbaa !32
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.z
  store i32 0, ptr %i.aa, align 4, !tbaa !32
  %i.ab = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %gep.1 = getelementptr i8, ptr %i.ab, i64 8
  %i.ac = load ptr, ptr %gep.1, align 8, !tbaa !43
  %i.ad = getelementptr i8, ptr %i.ac, i64 36
  %.val30.i.1 = load i32, ptr %i.ad, align 4, !tbaa !31
  %i.ae = sext i32 %.val30.i.1 to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.val29.i, i64 %i.ae
end_hunk_0
