Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/extraUtilPerm?download=true
inline.NumInlined: 140
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 30
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 36
begin_hunk_0_@Abc_ZddUniqueCreate:bb.a
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store i32 %3, ptr %i.bh, align 4, !tbaa !31
  %i.bi = load i32, ptr %.0.lcssa, align 4, !tbaa !17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %bb.h, %bb.a
  %.1 = phi i32 [ %3, %bb.a ], [ %i.bi, %bb.h ], [ %i.r, %bb.e ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind uwtable
define noalias noundef ptr @Abc_ZddManAlloc(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #22 ; 11 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !34
  %i.c = icmp ult i32 %1, 2
  %i.d = add i32 %1, -1
  %i.e = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.d, i1 true)
  %i.f = sub nuw nsw i32 32, %i.e
  %.09.i = select i1 %i.c, i32 %1, i32 %i.f
  %notmask = shl nsw i32 -1, %.09.i               ; 3 uses
  %i.g = xor i32 %notmask, -1                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 %i.g, ptr %i.h, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %i.g, ptr %i.i, align 4, !tbaa !38
  %i.j = sub i32 0, %notmask
  %i.k = zext i32 %i.j to i64                     ; 3 uses
  %i.l = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 4) #22 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.l, ptr %i.m, align 8, !tbaa !26
  %i.n = sext i32 %1 to i64                       ; 4 uses
  %i.o = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 4) #22 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.o, ptr %i.p, align 8, !tbaa !32
  %i.q = tail call noalias ptr @calloc(i64 noundef %i.k, i64 noundef 16) #22
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.q, ptr %i.r, align 8, !tbaa !39
  %i.s = tail call noalias ptr @calloc(i64 noundef %i.n, i64 noundef 12) #22 ; 6 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.s, ptr %i.t, align 8, !tbaa !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 2, ptr %i.u, align 4, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.v, i8 -1, i64 20, i1 false)
  %i.w = or i32 %0, -2147483648                   ; 2 uses
  store i32 %i.w, ptr %i.s, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 %i.w, ptr %i.x, align 4
  %i.y = icmp sgt i32 %0, 0
  br i1 %i.y, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %Abc_ZddUniqueCreate.exit
  %i.z = phi i32 [ %i.bh, %Abc_ZddUniqueCreate.exit ], [ 2, %bb.a ] ; 5 uses
  %.035 = phi i32 [ %i.bi, %Abc_ZddUniqueCreate.exit ], [ 0, %bb.a ] ; 4 uses
  %i.aa = mul nuw nsw i32 %.035, 12582917
  %i.ab = add nuw nsw i32 %i.aa, 4256249
  %i.ac = and i32 %i.ab, %i.g
  %i.ad = zext nneg i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.ad ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !17 ; 2 uses
  %.not41.i = icmp eq i32 %i.af, 0
  br i1 %.not41.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %i.ag = phi i32 [ %i.at, %bb.d ], [ %i.af, %.lr.ph ]
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = getelementptr inbounds [12 x i8], ptr %i.s, i64 %i.ah ; 3 uses
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = and i32 %i.aj, 2147483647
  %i.al = icmp eq i32 %i.ak, %.035
  br i1 %i.al, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.lr.ph.i
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %i.ao = icmp eq i32 %i.an, 1
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !31
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %Abc_ZddUniqueCreate.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %.lr.ph.i
  %i.as = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ah
  %i.at = load i32, ptr %i.as, align 4, !tbaa !17 ; 2 uses
  %.not.i = icmp eq i32 %i.at, 0
  br i1 %.not.i, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i.loopexit:                           ; preds = %bb.d
  %i.au = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.ah
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %.lr.ph
  %.0.lcssa.i = phi ptr [ %i.ae, %.lr.ph ], [ %i.au, %._crit_edge.i.loopexit ]
  %i.av = icmp eq i32 %i.z, %1
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i
  %i.aw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %1) ; 0 uses
  %i.ax = load ptr, ptr @stdout, align 8, !tbaa !36
  %i.ay = tail call i32 @fflush(ptr noundef %i.ax) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i
  %i.az = add nsw i32 %i.z, 1                     ; 2 uses
  store i32 %i.az, ptr %i.u, align 4, !tbaa !33
  store i32 %i.z, ptr %.0.lcssa.i, align 4, !tbaa !17
  %i.ba = sext i32 %i.z to i64
  %i.bb = getelementptr inbounds [12 x i8], ptr %i.s, i64 %i.ba ; 4 uses
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = and i32 %i.bc, -2147483648
  %i.be = or disjoint i32 %i.bd, %.035
  store i32 %i.be, ptr %i.bb, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  store i32 1, ptr %i.bf, align 4, !tbaa !30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 0, ptr %i.bg, align 4, !tbaa !31
  br label %Abc_ZddUniqueCreate.exit

Abc_ZddUniqueCreate.exit:                         ; preds = %bb.c, %bb.f
  %i.bh = phi i32 [ %i.az, %bb.f ], [ %i.z, %bb.c ]
  %i.bi = add nuw nsw i32 %.035, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bi, %0
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !61

._crit_edge:                                      ; preds = %Abc_ZddUniqueCreate.exit, %bb.a
  %narrow = sub i32 24, %notmask
  %i.bj = zext i32 %narrow to i64
  %i.bk = shl nuw nsw i64 %i.k, 2
  %i.bl = mul nsw i64 %i.n, 12
  %i.bm = lshr exact i64 %i.bl, 2
  %i.bn = add nsw i64 %i.bm, %i.n
  %i.bo = add nsw i64 %i.bn, %i.bj
  %i.bp = add nsw i64 %i.bo, %i.bk
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.bp, ptr %i.bq, align 8, !tbaa !40
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define void @Abc_ZddManCreatePerms(ptr nofree noundef captures(none) initializes((12, 16), (72, 96)) %0, i32 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %1, ptr %i.a, align 4, !tbaa !41
  %i.b = load i32, ptr %0, align 8, !tbaa !37
  %i.c = sext i32 %i.b to i64
  %i.d = shl nsw i64 %i.c, 2                      ; 4 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.d) #23 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.e, i8 -1, i64 %i.d, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.e, ptr %i.f, align 8, !tbaa !42
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.d) #23 ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.g, i8 -1, i64 %i.d, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.g, ptr %i.h, align 8, !tbaa !43
  %i.i = mul nsw i32 %1, %1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.k) #23 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.l, i8 -1, i64 %i.k, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.l, ptr %i.m, align 8, !tbaa !44
  %i.n = icmp sgt i32 %1, 0
  br i1 %i.n, label %.lr.ph37.preheader, label %._crit_edge

.lr.ph37.preheader:                               ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %1 to i64      ; 2 uses
  br label %.lr.ph37

.loopexit.loopexit:                               ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.v, %middle.block ], [ %indvars.iv.next, %scalar.ph ]
  %i.o = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.lr.ph37
  %.1.lcssa = phi i32 [ %.036, %.lr.ph37 ], [ %i.o, %.loopexit.loopexit ]
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1
  %exitcond45.not = icmp eq i32 %i.p, %1
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond45.not, label %._crit_edge, label %.lr.ph37, !llvm.loop !1

.lr.ph37:                                         ; preds = %.lr.ph37.preheader, %.loopexit
  %indvar = phi i64 [ 0, %.lr.ph37.preheader ], [ %indvar.next, %.loopexit ] ; 2 uses
  %indvars.iv38 = phi i64 [ 1, %.lr.ph37.preheader ], [ %indvars.iv.next39, %.loopexit ] ; 5 uses
  %.036 = phi i32 [ 0, %.lr.ph37.preheader ], [ %.1.lcssa, %.loopexit ] ; 3 uses
  %.03035 = phi i32 [ 0, %.lr.ph37.preheader ], [ %i.p, %.loopexit ] ; 4 uses
  %i.p = add nuw nsw i32 %.03035, 1               ; 3 uses
  %i.q = icmp slt i32 %i.p, %1
  br i1 %i.q, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph37
  %i.r = mul nuw nsw i32 %1, %.03035
  %i.s = sext i32 %.036 to i64                    ; 3 uses
  %i.t = zext nneg i32 %i.r to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.t ; 2 uses
  %2 = xor i64 %indvar, -1
  %3 = add i64 %2, %wide.trip.count               ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.u = add i64 %indvars.iv38, %n.vec
  %i.v = add i64 %n.vec, %i.s                     ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.03035, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.w = trunc i64 %indvars.iv38 to i32
  %broadcast.splatinsert47 = insertelement <4 x i32> poison, i32 %i.w, i64 0
  %broadcast.splat48 = shufflevector <4 x i32> %broadcast.splatinsert47, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat48, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert49 = insertelement <4 x i32> poison, i32 %.036, i64 0
  %broadcast.splat50 = shufflevector <4 x i32> %broadcast.splatinsert49, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction51 = add <4 x i32> %broadcast.splat50, <i32 0, i32 1, i32 2, i32 3>
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv38
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind52 = phi <4 x i32> [ %induction51, %vector.ph ], [ %vec.ind.next54, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add53 = add <4 x i32> %vec.ind52, splat (i32 4)
  %i.y = add i64 %index, %i.s                     ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.y ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.z, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.aa, align 4, !tbaa !17
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.y ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <4 x i32> %vec.ind, ptr %i.ab, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ac, align 4, !tbaa !17
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  store <4 x i32> %vec.ind52, ptr %i.ad, align 4, !tbaa !17
  store <4 x i32> %step.add53, ptr %i.ae, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next54 = add <4 x i32> %vec.ind52, splat (i32 8)
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !62

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv40.ph = phi i64 [ %indvars.iv38, %.lr.ph ], [ %i.u, %middle.block ]
  %indvars.iv.ph = phi i64 [ %i.s, %.lr.ph ], [ %i.v, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40 = phi i64 [ %indvars.iv.next41, %scalar.ph ], [ %indvars.iv40.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 4 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %.03035, ptr %i.ag, align 4, !tbaa !17
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.ai = trunc nuw nsw i64 %indvars.iv40 to i32
  store i32 %i.ai, ptr %i.ah, align 4, !tbaa !17
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv40
  %i.aj = trunc nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %gep, align 4, !tbaa !17
  %indvars.iv.next41 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next41, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit.loopexit, label %scalar.ph, !llvm.loop !63

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define void @Abc_ZddManFree(ptr noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !37
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i32, ptr %i.d, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load i32, ptr %i.f, align 8, !tbaa !47
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4, !tbaa !48   ; 2 uses
  %i.j = sub nsw i32 %i.g, %i.i
  %i.k = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e, i32 noundef %i.j, i32 noundef %i.i) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load i64, ptr %i.l, align 8, !tbaa !40
  %i.n = lshr i64 %i.m, 20
  %i.o = trunc i64 %i.n to i32
  %i.p = sitofp i32 %i.o to double
  %i.q = fmul nnan double %i.p, 4.000000e+00
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, double noundef %i.q) ; 0 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !44   ; 2 uses
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @free(ptr noundef nonnull %i.t) #24
  store ptr null, ptr %i.s, align 8, !tbaa !44
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !42   ; 2 uses
  %.not36 = icmp eq ptr %i.v, null
  br i1 %.not36, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.v) #24
  store ptr null, ptr %i.u, align 8, !tbaa !42
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !43   ; 2 uses
  %.not37 = icmp eq ptr %i.x, null
  br i1 %.not37, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @free(ptr noundef nonnull %i.x) #24
  store ptr null, ptr %i.w, align 8, !tbaa !43
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !26   ; 2 uses
  %.not38 = icmp eq ptr %i.z, null
  br i1 %.not38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.z) #24
  store ptr null, ptr %i.y, align 8, !tbaa !26
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 2 uses
  %.not39 = icmp eq ptr %i.ab, null
  br i1 %.not39, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @free(ptr noundef nonnull %i.ab) #24
  store ptr null, ptr %i.aa, align 8, !tbaa !32
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !39 ; 2 uses
  %.not40 = icmp eq ptr %i.ad, null
  br i1 %.not40, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.ad) #24
  store ptr null, ptr %i.ac, align 8, !tbaa !39
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !28 ; 2 uses
  %.not41 = icmp eq ptr %i.af, null
  br i1 %.not41, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.af) #24
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  tail call void @free(ptr noundef nonnull %0) #24
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: nofree nounwind uwtable
define i32 @Abc_ZddDiff(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %2, 0
  br i1 %i.b, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %1, %2
  br i1 %i.c, label %bb.r, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !39
end_hunk_0
begin_hunk_1_@Abc_ZddPermTestInt:.lr.ph.i
  tail call void @llvm.assume(i1 %lcmp.mod110)
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.epil.init ; 2 uses
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !17 ; 2 uses
  %i.df = ashr i32 %i.de, 16
  %i.dg = and i32 %i.de, 65535
  %i.dh = mul nsw i32 %i.df, %.val47
  %i.di = add nsw i32 %i.dh, %i.dg
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.val48, i64 %i.dj
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !17
  store i32 %i.dl, ptr %i.dd, align 4, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.epil.preheader
  %putchar.i65 = tail call i32 @putchar(i32 123)  ; 0 uses
  %wide.trip.count.i68 = zext nneg i32 %.1.i.4102 to i64
  br label %.lr.ph.i69

.lr.ph.i69:                                       ; preds = %.lr.ph.i69, %._crit_edge
  %indvars.iv.i70 = phi i64 [ 0, %._crit_edge ], [ %indvars.iv.next.i71, %.lr.ph.i69 ] ; 2 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i70
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !17
  %i.do = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.dn) ; 0 uses
  %indvars.iv.next.i71 = add nuw nsw i64 %indvars.iv.i70, 1 ; 2 uses
  %exitcond.not.i72 = icmp eq i64 %indvars.iv.next.i71, %wide.trip.count.i68
  br i1 %exitcond.not.i72, label %Abc_ZddPermPrint.exit73, label %.lr.ph.i69, !llvm.loop !4

Abc_ZddPermPrint.exit73:                          ; preds = %.lr.ph.i69, %._crit_edge.thread
  %.1.i.4101105109 = phi i32 [ 0, %._crit_edge.thread ], [ %.1.i.4102, %.lr.ph.i69 ]
  %puts.i66 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.dp = call i32 @Abc_ZddBuildSet(ptr noundef %0, ptr noundef nonnull %i.b, i32 noundef %.1.i.4101105109)
  %i.dq = tail call i32 @Abc_ZddUnion(ptr noundef %0, i32 noundef %.080, i32 noundef %i.dp) ; 6 uses
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, 3
  br i1 %exitcond90.not, label %bb.b, label %.lr.ph.i50, !llvm.loop !97

bb.b:                                             ; preds = %Abc_ZddPermPrint.exit73
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.dr = load i32, ptr %0, align 8, !tbaa !37
  %i.ds = sext i32 %i.dr to i64
  %i.dt = tail call noalias ptr @calloc(i64 noundef %i.ds, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq, ptr noundef %i.dt, i32 noundef 0)
  %.not.i74 = icmp eq ptr %i.dt, null
  br i1 %.not.i74, label %Abc_ZddPrint.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.dt) #24
  br label %Abc_ZddPrint.exit

Abc_ZddPrint.exit:                                ; preds = %bb.b, %bb.c
  %i.du = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.dq)
  %i.dv = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.dq)
  %i.dw = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.du, i32 noundef %i.dv) ; 0 uses
  %.val = load i32, ptr %i.r, align 4, !tbaa !41
  %.val46 = load ptr, ptr %i.s, align 8, !tbaa !44
  %i.dx = mul nsw i32 %.val, 3
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %.val46, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = tail call i32 @Abc_ZddPerm(ptr noundef nonnull %0, i32 noundef %i.dq, i32 noundef %i.eb) ; 4 uses
  %puts45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.3) ; 0 uses
  %i.ed = load i32, ptr %0, align 8, !tbaa !37
  %i.ee = sext i32 %i.ed to i64
  %i.ef = tail call noalias ptr @calloc(i64 noundef %i.ee, i64 noundef 4) #22 ; 3 uses
  tail call void @Abc_ZddPrint_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec, ptr noundef %i.ef, i32 noundef 0)
  %.not.i75 = icmp eq ptr %i.ef, null
  br i1 %.not.i75, label %Abc_ZddPrint.exit76, label %bb.d

bb.d:                                             ; preds = %Abc_ZddPrint.exit
  tail call void @free(ptr noundef nonnull %i.ef) #24
  br label %Abc_ZddPrint.exit76

Abc_ZddPrint.exit76:                              ; preds = %Abc_ZddPrint.exit, %bb.d
  %i.eg = tail call i32 @Abc_ZddCount_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec)
  tail call void @Abc_ZddUnmark_rec(ptr noundef nonnull readonly %0, i32 noundef %i.ec)
  %i.eh = tail call i32 @Abc_ZddCountPaths(ptr noundef nonnull %0, i32 noundef %i.ec)
  %i.ei = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, i32 noundef %i.eg, i32 noundef %i.eh) ; 0 uses
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_ZddPermTest() local_unnamed_addr #7 {
.loopexit.i.4:
  %i.a = tail call ptr @Abc_ZddManAlloc(i32 noundef 10, i32 noundef 1048576) ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 5, ptr %i.b, align 4, !tbaa !41
  %i.c = load i32, ptr %i.a, align 8, !tbaa !37
  %i.d = sext i32 %i.c to i64
  %i.e = shl nsw i64 %i.d, 2                      ; 4 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 -1, i64 %i.e, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.e) #23 ; 6 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 -1, i64 %i.e, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.h, ptr %i.i, align 8, !tbaa !43
  %i.j = tail call noalias dereferenceable_or_null(100) ptr @malloc(i64 noundef 100) #23 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(100) %i.j, i8 -1, i64 100, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.j, ptr %i.k, align 8, !tbaa !44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, i8 0, i64 16, i1 false), !tbaa !17
  %gep.i = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store <4 x i32> <i32 1, i32 2, i32 3, i32 4>, ptr %i.h, align 4, !tbaa !17
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %gep.i, align 4, !tbaa !17
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 28
  store i32 4, ptr %gep.i.1, align 4, !tbaa !17
  %gep.i.1.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i32 5, ptr %gep.i.1.1, align 4, !tbaa !17
  %gep.i.1.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 36
  store i32 6, ptr %gep.i.1.2, align 4, !tbaa !17
  store <4 x i32> <i32 1, i32 1, i32 1, i32 2>, ptr %i.l, align 4, !tbaa !17
  store <4 x i32> <i32 2, i32 3, i32 4, i32 3>, ptr %i.m, align 4, !tbaa !17
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %i.j, i64 52
  store i32 7, ptr %gep.i.2, align 4, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 2, ptr %i.n, align 4, !tbaa !17
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i32 4, ptr %i.o, align 4, !tbaa !17
  %gep.i.2.1 = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i32 8, ptr %gep.i.2.1, align 4, !tbaa !17
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 3, ptr %i.p, align 4, !tbaa !17
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 36
  store i32 4, ptr %i.q, align 4, !tbaa !17
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %i.j, i64 76
  store i32 9, ptr %gep.i.3, align 4, !tbaa !17
  tail call void @Abc_ZddPermTestInt(ptr noundef nonnull %i.a)
  tail call void @Abc_ZddManFree(ptr noundef nonnull %i.a)
  ret void
}

; Function Attrs: nounwind uwtable
define void @Abc_EnumerateCubeStatesZdd() local_unnamed_addr #7 {
bb.a:
  %0 = alloca %struct.timespec, align 8           ; 5 uses
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca [9 x i32], align 16               ; 14 uses
  %i.b = alloca [24 x i32], align 16              ; 30 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.c = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #24
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %3, align 8, !tbaa !103
  %i.f = mul nsw i64 %i.e, 1000000
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !104
  %i.i = sdiv i64 %i.h, 1000
  %i.j = add nsw i64 %i.i, %i.f
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.j, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.4) ; 0 uses
  %i.k = call ptr @Abc_ZddManAlloc(i32 noundef 276, i32 noundef 134217728) ; 20 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  store i32 24, ptr %i.l, align 4, !tbaa !41
  %i.m = load i32, ptr %i.k, align 8, !tbaa !37
  %i.n = sext i32 %i.m to i64
  %i.o = shl nsw i64 %i.n, 2                      ; 4 uses
  %i.p = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.p, i8 -1, i64 %i.o, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store ptr %i.p, ptr %i.q, align 8, !tbaa !42
  %i.r = call noalias ptr @malloc(i64 noundef %i.o) #23 ; 4 uses
  call void @llvm.memset.p0.i64(ptr align 1 %i.r, i8 -1, i64 %i.o, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  store ptr %i.r, ptr %i.s, align 8, !tbaa !43
  %i.t = call noalias dereferenceable_or_null(2304) ptr @malloc(i64 noundef 2304) #23 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2304) %i.t, i8 -1, i64 2304, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 88 ; 2 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !44
  br label %.lr.ph37.i

.loopexit.loopexit.i:                             ; preds = %scalar.ph, %middle.block
  %indvars.iv.next.i.lcssa = phi i64 [ %i.aa, %middle.block ], [ %indvars.iv.next.i, %scalar.ph ]
  %i.v = trunc nsw i64 %indvars.iv.next.i.lcssa to i32
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.lr.ph37.i, %.loopexit.loopexit.i
  %.1.lcssa.i = phi i32 [ %.036.i, %.lr.ph37.i ], [ %i.v, %.loopexit.loopexit.i ]
  %indvars.iv.next39.i = add nuw nsw i64 %indvars.iv38.i, 1
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next, 24
  br i1 %exitcond45.not.i, label %Abc_ZddManCreatePerms.exit, label %.lr.ph37.i, !llvm.loop !1

.lr.ph37.i:                                       ; preds = %.loopexit.i, %Abc_Clock.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 6 uses
  %indvars.iv38.i = phi i64 [ %indvars.iv.next39.i, %.loopexit.i ], [ 1, %Abc_Clock.exit ] ; 5 uses
  %.036.i = phi i32 [ %.1.lcssa.i, %.loopexit.i ], [ 0, %Abc_Clock.exit ] ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.w = icmp samesign ult i64 %indvars.iv, 23
  br i1 %i.w, label %.lr.ph.i, label %.loopexit.i

.lr.ph.i:                                         ; preds = %.lr.ph37.i
  %i.x = sext i32 %.036.i to i64                  ; 3 uses
  %invariant.gep.i.idx = mul nuw nsw i64 %indvars.iv, 96
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %i.t, i64 %invariant.gep.i.idx ; 2 uses
  %i.y = trunc nuw nsw i64 %indvars.iv to i32     ; 2 uses
  %4 = sub nuw nsw i64 23, %indvars.iv            ; 2 uses
  %min.iters.check = icmp samesign ugt i64 %indvars.iv, 15
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %4, 24                         ; 4 uses
  %i.z = add nuw i64 %indvars.iv38.i, %n.vec
  %i.aa = add nsw i64 %n.vec, %i.x                ; 2 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.ab = trunc i64 %indvars.iv38.i to i32
  %broadcast.splatinsert108 = insertelement <4 x i32> poison, i32 %i.ab, i64 0
  %broadcast.splat109 = shufflevector <4 x i32> %broadcast.splatinsert108, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat109, <i32 0, i32 1, i32 2, i32 3>
  %broadcast.splatinsert110 = insertelement <4 x i32> poison, i32 %.036.i, i64 0
  %broadcast.splat111 = shufflevector <4 x i32> %broadcast.splatinsert110, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction112 = add <4 x i32> %broadcast.splat111, <i32 0, i32 1, i32 2, i32 3>
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv38.i
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.ind113 = phi <4 x i32> [ %induction112, %vector.ph ], [ %vec.ind.next115, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %step.add114 = add <4 x i32> %vec.ind113, splat (i32 4)
  %i.ad = add i64 %index, %i.x                    ; 2 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !17
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !17
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %vec.ind, ptr %i.ag, align 4, !tbaa !17
  store <4 x i32> %step.add, ptr %i.ah, align 4, !tbaa !17
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <4 x i32> %vec.ind113, ptr %i.ai, align 4, !tbaa !17
  store <4 x i32> %step.add114, ptr %i.aj, align 4, !tbaa !17
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %vec.ind.next115 = add <4 x i32> %vec.ind113, splat (i32 8)
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !98

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %4, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv40.i.ph = phi i64 [ %indvars.iv38.i, %.lr.ph.i ], [ %i.z, %middle.block ]
  %indvars.iv.i.ph = phi i64 [ %i.x, %.lr.ph.i ], [ %i.aa, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv40.i = phi i64 [ %indvars.iv.next41.i, %scalar.ph ], [ %indvars.iv40.i.ph, %scalar.ph.preheader ] ; 3 uses
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 4 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.p, i64 %indvars.iv.i
  store i32 %i.y, ptr %i.al, align 4, !tbaa !17
  %i.am = getelementptr inbounds [4 x i8], ptr %i.r, i64 %indvars.iv.i
  %i.an = trunc nuw nsw i64 %indvars.iv40.i to i32
  store i32 %i.an, ptr %i.am, align 4, !tbaa !17
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv40.i
  %i.ao = trunc nsw i64 %indvars.iv.i to i32
  store i32 %i.ao, ptr %gep.i, align 4, !tbaa !17
  %indvars.iv.next41.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next41.i, 24
  br i1 %exitcond.not.i, label %.loopexit.loopexit.i, label %scalar.ph, !llvm.loop !99

Abc_ZddManCreatePerms.exit:                       ; preds = %.loopexit.i
  %i.ap = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef 0, i32 noundef 1, i32 noundef 0, i32 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  %i.aq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #24
  %i.ar = icmp slt i32 %i.aq, 0
  br i1 %i.ar, label %Abc_Clock.exit72, label %bb.c

bb.c:                                             ; preds = %Abc_ZddManCreatePerms.exit
  %i.as = load i64, ptr %2, align 8, !tbaa !103
  %i.at = mul nsw i64 %i.as, 1000000
  %i.au = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !104
  %i.aw = sdiv i64 %i.av, 1000
  %i.ax = add nsw i64 %i.aw, %i.at
  br label %Abc_Clock.exit72

Abc_Clock.exit72:                                 ; preds = %Abc_ZddManCreatePerms.exit, %bb.c
  %.0.i71 = phi i64 [ %i.ax, %bb.c ], [ -1, %Abc_ZddManCreatePerms.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #24
  %i.ay = sub nsw i64 %.0.i71, %.0.i
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.15)
  %i.az = sitofp i64 %i.ay to double
  %i.ba = fdiv double %i.az, 1.000000e+06
  call void (i32, ptr, ...) @Abc_Print(i32 poison, ptr noundef nonnull @.str.18, double noundef %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 20 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 28 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  br label %.preheader81

.preheader81:                                     ; preds = %Abc_Clock.exit72, %Abc_ZddPerm2Comb.exit.preheader
  %indvars.iv99 = phi i64 [ 0, %Abc_Clock.exit72 ], [ %indvars.iv.next100, %Abc_ZddPerm2Comb.exit.preheader ] ; 2 uses
  %.06686 = phi i32 [ 1, %Abc_Clock.exit72 ], [ %i.jh, %Abc_ZddPerm2Comb.exit.preheader ]
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.b, align 16, !tbaa !17
  store <4 x i32> <i32 4, i32 5, i32 6, i32 7>, ptr %i.bb, align 16, !tbaa !17
  store <4 x i32> <i32 8, i32 9, i32 10, i32 11>, ptr %i.bc, align 16, !tbaa !17
  store <4 x i32> <i32 12, i32 13, i32 14, i32 15>, ptr %i.bd, align 16, !tbaa !17
  store <4 x i32> <i32 16, i32 17, i32 18, i32 19>, ptr %i.be, align 16, !tbaa !17
  store <4 x i32> <i32 20, i32 21, i32 22, i32 23>, ptr %i.bf, align 16, !tbaa !17
  %i.bo = getelementptr inbounds nuw [72 x i8], ptr @__const.Abc_EnumerateCubeStatesZdd.pXYZ, i64 %indvars.iv99 ; 18 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !17
  %i.bq = sext i32 %i.bp to i64
  %i.br = getelementptr [4 x i8], ptr %i.b, i64 %i.bq
  %i.bs = getelementptr i8, ptr %i.br, i64 -4     ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !17
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !17
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %i.b, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 -4     ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !17
  store i32 %i.bz, ptr %i.bs, align 4, !tbaa !17
  store i32 %i.bt, ptr %i.by, align 4, !tbaa !17
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !17
  %i.cc = sext i32 %i.cb to i64
  %i.cd = getelementptr [4 x i8], ptr %i.b, i64 %i.cc
  %i.ce = getelementptr i8, ptr %i.cd, i64 -4     ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !17
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !17
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr [4 x i8], ptr %i.b, i64 %i.ci
  %i.ck = getelementptr i8, ptr %i.cj, i64 -4     ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !17
  store i32 %i.cl, ptr %i.ce, align 4, !tbaa !17
  store i32 %i.cf, ptr %i.ck, align 4, !tbaa !17
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !17
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr [4 x i8], ptr %i.b, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 -4     ; 2 uses
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !17
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bo, i64 20
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !17
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr [4 x i8], ptr %i.b, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.cv, i64 -4     ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !17
  store i32 %i.cx, ptr %i.cq, align 4, !tbaa !17
  store i32 %i.cr, ptr %i.cw, align 4, !tbaa !17
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !17
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr [4 x i8], ptr %i.b, i64 %i.da
  %i.dc = getelementptr i8, ptr %i.db, i64 -4     ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !17
  %i.de = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %i.df = load i32, ptr %i.de, align 4, !tbaa !17
  %i.dg = sext i32 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr %i.b, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4     ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !17
  store i32 %i.dj, ptr %i.dc, align 4, !tbaa !17
  store i32 %i.dd, ptr %i.di, align 4, !tbaa !17
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  %i.dl = load i32, ptr %i.dk, align 8, !tbaa !17
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %i.b, i64 %i.dm
  %i.do = getelementptr i8, ptr %i.dn, i64 -4     ; 2 uses
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !17
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bo, i64 36
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !17
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr [4 x i8], ptr %i.b, i64 %i.ds
  %i.du = getelementptr i8, ptr %i.dt, i64 -4     ; 2 uses
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !17
  store i32 %i.dv, ptr %i.do, align 4, !tbaa !17
  store i32 %i.dp, ptr %i.du, align 4, !tbaa !17
  %i.dw = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !17
  %i.dy = sext i32 %i.dx to i64
  %i.dz = getelementptr [4 x i8], ptr %i.b, i64 %i.dy
  %i.ea = getelementptr i8, ptr %i.dz, i64 -4     ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !17
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bo, i64 44
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !17
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr [4 x i8], ptr %i.b, i64 %i.ee
  %i.eg = getelementptr i8, ptr %i.ef, i64 -4     ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !17
  store i32 %i.eh, ptr %i.ea, align 4, !tbaa !17
  store i32 %i.eb, ptr %i.eg, align 4, !tbaa !17
  %i.ei = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !17
  %i.ek = sext i32 %i.ej to i64
  %i.el = getelementptr [4 x i8], ptr %i.b, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 -4     ; 2 uses
end_hunk_1
