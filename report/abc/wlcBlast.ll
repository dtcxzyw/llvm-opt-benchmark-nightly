Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/wlcBlast?download=true
inline.NumInlined: 1166
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 14
begin_hunk_0_@Wlc_BlastAdderCLA_int:bb.a
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.q) #27
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4, !tbaa !8
  %i.t = load i32, ptr %i.n, align 4, !tbaa !8
  %i.u = load i32, ptr %i.p, align 4, !tbaa !8
  %i.v = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u) #27
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph55.preheader, label %.lr.ph, !llvm.loop !74

.lr.ph55.preheader:                               ; preds = %.lr.ph
  call void @Wlc_BlastAdderCLA_rec(ptr noundef %0, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.i, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %wide.trip.count61 = zext nneg i32 %3 to i64
  br label %.lr.ph55

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %indvars.iv58 = phi i64 [ 0, %.lr.ph55.preheader ], [ %indvars.iv.next59, %.lr.ph55 ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv58
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv58
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !8
  %i.ab = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.y, i32 noundef %i.aa) #27
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv58
  store i32 %i.ab, ptr %i.ac, align 4, !tbaa !8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1 ; 2 uses
  %exitcond62.not = icmp eq i64 %indvars.iv.next59, %wide.trip.count61
  br i1 %exitcond62.not, label %._crit_edge56.thread, label %.lr.ph55, !llvm.loop !75

._crit_edge56:                                    ; preds = %bb.c
  call void @Wlc_BlastAdderCLA_rec(ptr noundef %0, ptr noundef %i.e, ptr noundef %i.f, ptr noundef nonnull %i.i, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b)
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %._crit_edge56.thread

._crit_edge56.thread:                             ; preds = %.lr.ph55, %._crit_edge56
  tail call void @free(ptr noundef nonnull %i.e) #27
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge56, %._crit_edge56.thread
  %.not51 = icmp eq ptr %i.f, null
  br i1 %.not51, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @free(ptr noundef nonnull %i.i) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nounwind uwtable
define void @Wlc_BlastAdderCLA(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %3, 2
  %i.b = add i32 %3, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %3, i32 %i.d
  %i.e = shl nuw i32 1, %.09.i                    ; 5 uses
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #29 ; 8 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.f, i64 noundef 4) #29 ; 7 uses
  %i.i = icmp sgt i32 %3, 0                       ; 2 uses
  br i1 %i.i, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.j = zext nneg i32 %3 to i64
  %i.k = shl nuw nsw i64 %i.j, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.g, ptr align 4 %1, i64 %i.k, i1 false), !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %2, i64 %i.k, i1 false), !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %3, %.lr.ph.preheader ] ; 4 uses
  %i.l = icmp slt i32 %.0.lcssa, %i.e
  br i1 %i.l, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %.not46 = icmp eq i32 %4, 0
  br i1 %.not46, label %.thread.us.preheader, label %.lr.ph49.split

.thread.us.preheader:                             ; preds = %.lr.ph49
  %i.m = zext nneg i32 %.0.lcssa to i64
  %i.n = shl nuw nsw i64 %i.m, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.g, i64 %i.n
  %i.o = xor i32 %.0.lcssa, -1
  %i.p = add nsw i32 %i.e, %i.o
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 2
  %i.s = add nuw nsw i64 %i.r, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.s, i1 false), !tbaa !8
  %scevgep58 = getelementptr i8, ptr %i.h, i64 %i.n
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep58, i8 0, i64 %i.s, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph49.split:                                   ; preds = %.lr.ph49
  %i.t = sext i32 %3 to i64                       ; 2 uses
  %i.u = getelementptr [4 x i8], ptr %2, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 -4
  %i.w = getelementptr [4 x i8], ptr %1, i64 %i.t
  %i.x = getelementptr i8, ptr %i.w, i64 -4
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8    ; 2 uses
  %i.z = load i32, ptr %i.v, align 4, !tbaa !8    ; 2 uses
  %i.aa = zext nneg i32 %.0.lcssa to i64          ; 4 uses
  %wide.trip.count57 = zext nneg i32 %i.e to i64  ; 2 uses
  %i.ab = sub nsw i64 %wide.trip.count57, %i.aa   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.split
  %n.vec = and i64 %i.ab, -8                      ; 3 uses
  %i.ac = add nsw i64 %n.vec, %i.aa
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert68 = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat69 = shufflevector <4 x i32> %broadcast.splatinsert68, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ad = add nuw i64 %index, %i.aa               ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ad ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.ae, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !8
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ad ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <4 x i32> %broadcast.splat69, ptr %i.ag, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat69, ptr %i.ah, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !76

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph49.split, %middle.block
  %indvars.iv.ph = phi i64 [ %i.aa, %.lr.ph49.split ], [ %i.ac, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.y, ptr %i.aj, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.z, ptr %i.ak, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count57
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !77

._crit_edge:                                      ; preds = %scalar.ph, %middle.block, %.thread.us.preheader, %.preheader
  tail call void @Wlc_BlastAdderCLA_int(ptr noundef %0, ptr noundef %i.g, ptr noundef %i.h, i32 noundef %i.e, i32 noundef %5)
  br i1 %i.i, label %.lr.ph52.preheader, label %._crit_edge53

.lr.ph52.preheader:                               ; preds = %._crit_edge
  %i.al = zext nneg i32 %3 to i64
  %i.am = shl nuw nsw i64 %i.al, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %1, ptr align 4 %i.g, i64 %i.am, i1 false), !tbaa !8
  br label %._crit_edge53

._crit_edge53:                                    ; preds = %.lr.ph52.preheader, %._crit_edge
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge53
  tail call void @free(ptr noundef nonnull %i.g) #27
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge53, %bb.b
  %.not45 = icmp eq ptr %i.h, null
  br i1 %.not45, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.h) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastAdderFast_int(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = shl nuw i32 1, %3                        ; 11 uses
  %i.c = add nuw nsw i32 %i.b, 1
  %i.d = sext i32 %i.c to i64                     ; 3 uses
  %i.e = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #29 ; 15 uses
  %i.f = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #29 ; 12 uses
  %i.g = tail call noalias ptr @calloc(i64 noundef %i.d, i64 noundef 4) #29 ; 5 uses
  %i.h = icmp eq i32 %3, 0
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.i = load i32, ptr %1, align 4, !tbaa !8
  %i.j = load i32, ptr %2, align 4, !tbaa !8
  call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.i, i32 noundef %i.j, i32 noundef %4, ptr noundef nonnull %i.a, ptr noundef nonnull %1)
  %.not166 = icmp eq ptr %i.e, null
  br i1 %.not166, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.e) #27
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.not167 = icmp eq ptr %i.f, null
  br i1 %.not167, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %i.f) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %.not168 = icmp eq ptr %i.g, null
  br i1 %.not168, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.g) #27
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  store i32 %4, ptr %i.e, align 4, !tbaa !8
  %.not172 = icmp eq i32 %3, 31                   ; 2 uses
  br i1 %.not172, label %.lr.ph181.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.i
  %smax = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %i.k = add nuw i32 %smax, 1
  %wide.trip.count = zext i32 %i.k to i64
  br label %.lr.ph

.lr.ph176.preheader:                              ; preds = %.lr.ph
  %i.l = sext i32 %i.b to i64
  br label %.lr.ph176

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 1, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.m = add nsw i64 %indvars.iv, -1              ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %1, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !8
  %i.p = getelementptr inbounds [4 x i8], ptr %2, i64 %i.m ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  %i.r = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.o, i32 noundef %i.q) #27
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  store i32 %i.r, ptr %i.s, align 4, !tbaa !8
  %i.t = load i32, ptr %i.n, align 4, !tbaa !8
  %i.u = load i32, ptr %i.p, align 4, !tbaa !8
  %i.v = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.u) #27 ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !8
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %i.v, ptr %i.x, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph176.preheader, label %.lr.ph, !llvm.loop !78

.preheader170:                                    ; preds = %.lr.ph176
  %i.y = icmp sgt i32 %3, 2
  br i1 %i.y, label %.lr.ph181.preheader, label %.lr.ph186.preheader

.lr.ph181.preheader:                              ; preds = %bb.i, %.preheader170
  %i.z = add nsw i32 %3, -1
  %i.aa = sext i32 %i.b to i64
  %wide.trip.count205 = zext nneg i32 %i.z to i64
  br label %.lr.ph181

.lr.ph176:                                        ; preds = %.lr.ph176.preheader, %.lr.ph176
  %indvars.iv194 = phi i64 [ 1, %.lr.ph176.preheader ], [ %indvars.iv.next195, %.lr.ph176 ] ; 4 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv194 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv194 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !8  ; 2 uses
  %i.af = add nsw i64 %indvars.iv194, -1          ; 2 uses
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.ah) #27
  %i.aj = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ac, i32 noundef %i.ai) #27
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.af
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !8
  %i.am = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ae, i32 noundef %i.al) #27
  store i32 %i.am, ptr %i.ad, align 4, !tbaa !8
  store i32 %i.aj, ptr %i.ab, align 4, !tbaa !8
  %indvars.iv.next195 = add nuw nsw i64 %indvars.iv194, 2 ; 2 uses
  %.not162 = icmp sgt i64 %indvars.iv.next195, %i.l
  br i1 %.not162, label %.preheader170, label %.lr.ph176, !llvm.loop !79

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %._crit_edge
  %indvars.iv202 = phi i64 [ 1, %.lr.ph181.preheader ], [ %indvars.iv.next203, %._crit_edge ] ; 2 uses
  %indvars.iv197 = phi i64 [ 3, %.lr.ph181.preheader ], [ %indvars.iv.next198, %._crit_edge ] ; 2 uses
  %i.an = shl nuw nsw i64 %indvars.iv202, 1       ; 2 uses
  %.not165177.not = icmp slt i64 %i.an, %i.aa
  br i1 %.not165177.not, label %.lr.ph179, label %._crit_edge

.lr.ph179:                                        ; preds = %.lr.ph181, %.lr.ph179
  %indvars.iv199 = phi i64 [ %indvars.iv.next200, %.lr.ph179 ], [ %indvars.iv197, %.lr.ph181 ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv199 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv199 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !8  ; 2 uses
  %i.as = sub nuw nsw i64 %indvars.iv199, %i.an   ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !8
  %i.av = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.au) #27
  %i.aw = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.ap, i32 noundef %i.av) #27
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.as
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !8
  %i.az = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.ay) #27
  store i32 %i.az, ptr %i.aq, align 4, !tbaa !8
  store i32 %i.aw, ptr %i.ao, align 4, !tbaa !8
  %indvars.iv.next200 = add nuw nsw i64 %indvars.iv199, 2 ; 2 uses
  %5 = trunc nuw i64 %indvars.iv.next200 to i32
  %.not165 = icmp slt i32 %i.b, %5
  br i1 %.not165, label %._crit_edge, label %.lr.ph179, !llvm.loop !80

._crit_edge:                                      ; preds = %.lr.ph179, %.lr.ph181
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %indvars.iv.next198 = add nuw nsw i64 %indvars.iv197, 2
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %._crit_edge182, label %.lr.ph181, !llvm.loop !81

._crit_edge182:                                   ; preds = %._crit_edge
  br i1 %.not172, label %._crit_edge192, label %.lr.ph186.preheader

.lr.ph186.preheader:                              ; preds = %.preheader170, %._crit_edge182
  %i.ba = sdiv i32 %i.b, 2
  %i.bb = sext i32 %i.ba to i64                   ; 2 uses
  %i.bc = add nsw i64 %i.bb, 1
  %i.bd = sext i32 %i.b to i64
  br label %.lr.ph186

.preheader169:                                    ; preds = %.lr.ph186
  %.not164187 = icmp slt i32 %i.b, 2
  br i1 %.not164187, label %.lr.ph191.preheader, label %.lr.ph189.preheader

.lr.ph189.preheader:                              ; preds = %.preheader169
  %i.be = zext nneg i32 %i.b to i64
  br label %.lr.ph189

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv207 = phi i64 [ %i.bc, %.lr.ph186.preheader ], [ %indvars.iv.next208, %.lr.ph186 ] ; 4 uses
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.e, i64 %indvars.iv207 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !8
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.f, i64 %indvars.iv207 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !8  ; 2 uses
  %i.bj = sub nsw i64 %indvars.iv207, %i.bb       ; 2 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bj
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !8
  %i.bm = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bl) #27
  %i.bn = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bg, i32 noundef %i.bm) #27
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bj
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !8
  %i.bq = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bi, i32 noundef %i.bp) #27
  store i32 %i.bq, ptr %i.bh, align 4, !tbaa !8
  store i32 %i.bn, ptr %i.bf, align 4, !tbaa !8
  %indvars.iv.next208 = add nsw i64 %indvars.iv207, 2 ; 2 uses
  %.not163 = icmp sgt i64 %indvars.iv.next208, %i.bd
  br i1 %.not163, label %.preheader169, label %.lr.ph186, !llvm.loop !82

.lr.ph191.preheader:                              ; preds = %.lr.ph189, %.preheader169
  %smax216 = tail call i32 @llvm.smax.i32(i32 %i.b, i32 1)
  %wide.trip.count217 = zext nneg i32 %smax216 to i64
  br label %.lr.ph191

.lr.ph189:                                        ; preds = %.lr.ph189.preheader, %.lr.ph189
  %indvars.iv210 = phi i64 [ 2, %.lr.ph189.preheader ], [ %indvars.iv.next211, %.lr.ph189 ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv210 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !8
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv210 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !8  ; 2 uses
  %i.bv = add nsw i64 %indvars.iv210, -1          ; 2 uses
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.bv
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !8
  %i.by = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bu, i32 noundef %i.bx) #27
  %i.bz = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.bs, i32 noundef %i.by) #27
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.bv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.bu, i32 noundef %i.cb) #27
  store i32 %i.cc, ptr %i.bt, align 4, !tbaa !8
  store i32 %i.bz, ptr %i.br, align 4, !tbaa !8
  %indvars.iv.next211 = add nuw nsw i64 %indvars.iv210, 2 ; 2 uses
  %.not164 = icmp samesign ugt i64 %indvars.iv.next211, %i.be
  br i1 %.not164, label %.lr.ph191.preheader, label %.lr.ph189, !llvm.loop !83

.lr.ph191:                                        ; preds = %.lr.ph191.preheader, %.lr.ph191
  %indvars.iv213 = phi i64 [ 0, %.lr.ph191.preheader ], [ %indvars.iv.next214, %.lr.ph191 ] ; 3 uses
  %indvars.iv.next214 = add nuw nsw i64 %indvars.iv213, 1 ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next214
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv213
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.ch = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.ce, i32 noundef %i.cg) #27
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv213
  store i32 %i.ch, ptr %i.ci, align 4, !tbaa !8
  %exitcond218.not = icmp eq i64 %indvars.iv.next214, %wide.trip.count217
  br i1 %exitcond218.not, label %._crit_edge192, label %.lr.ph191, !llvm.loop !84

._crit_edge192:                                   ; preds = %.lr.ph191, %._crit_edge182
  %i.cj = sext i32 %i.b to i64                    ; 2 uses
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.cj
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = getelementptr inbounds [4 x i8], ptr %1, i64 %i.cj
  store i32 %i.cl, ptr %i.cm, align 4, !tbaa !8
  tail call void @free(ptr noundef %i.e) #27
  tail call void @free(ptr noundef %i.f) #27
  tail call void @free(ptr noundef %i.g) #27
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge192, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastAdderFast(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp ult i32 %3, 2
  %i.b = add i32 %3, -1
  %i.c = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.b, i1 true)
  %i.d = sub nuw nsw i32 32, %i.c
  %.09.i = select i1 %i.a, i32 %3, i32 %i.d       ; 2 uses
  %i.e = shl nuw i32 1, %.09.i                    ; 4 uses
  %i.f = add nuw nsw i32 %i.e, 1
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #29 ; 8 uses
  %i.i = tail call noalias ptr @calloc(i64 noundef %i.g, i64 noundef 4) #29 ; 7 uses
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.k = zext nneg i32 %3 to i64
  %i.l = shl nuw nsw i64 %i.k, 2                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.h, ptr align 4 %1, i64 %i.l, i1 false), !tbaa !8
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.i, ptr align 4 %2, i64 %i.l, i1 false), !tbaa !8
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %3, %.lr.ph.preheader ] ; 4 uses
  %i.m = icmp slt i32 %.0.lcssa, %i.e
  br i1 %i.m, label %.lr.ph49, label %._crit_edge

.lr.ph49:                                         ; preds = %.preheader
  %.not46 = icmp eq i32 %4, 0
  br i1 %.not46, label %.thread.us.preheader, label %.lr.ph49.split

.thread.us.preheader:                             ; preds = %.lr.ph49
  %i.n = zext nneg i32 %.0.lcssa to i64
  %i.o = shl nuw nsw i64 %i.n, 2                  ; 2 uses
  %scevgep = getelementptr i8, ptr %i.h, i64 %i.o
  %i.p = xor i32 %.0.lcssa, -1
  %i.q = add nsw i32 %i.e, %i.p
  %i.r = zext i32 %i.q to i64
  %i.s = shl nuw nsw i64 %i.r, 2
  %i.t = add nuw nsw i64 %i.s, 4                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, i8 0, i64 %i.t, i1 false), !tbaa !8
  %scevgep59 = getelementptr i8, ptr %i.i, i64 %i.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep59, i8 0, i64 %i.t, i1 false), !tbaa !8
  br label %._crit_edge

.lr.ph49.split:                                   ; preds = %.lr.ph49
  %i.u = sext i32 %3 to i64                       ; 2 uses
  %i.v = getelementptr [4 x i8], ptr %2, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 -4
  %i.x = getelementptr [4 x i8], ptr %1, i64 %i.u
  %i.y = getelementptr i8, ptr %i.x, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !8    ; 2 uses
  %i.aa = load i32, ptr %i.w, align 4, !tbaa !8   ; 2 uses
  %i.ab = zext nneg i32 %.0.lcssa to i64          ; 4 uses
  %wide.trip.count58 = zext nneg i32 %i.e to i64  ; 2 uses
  %i.ac = sub nsw i64 %wide.trip.count58, %i.ab   ; 3 uses
  %min.iters.check = icmp ult i64 %i.ac, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.split
  %n.vec = and i64 %i.ac, -8                      ; 3 uses
  %i.ad = add nsw i64 %n.vec, %i.ab
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.z, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert69 = insertelement <4 x i32> poison, i32 %i.aa, i64 0
  %broadcast.splat70 = shufflevector <4 x i32> %broadcast.splatinsert69, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ae = add nuw i64 %index, %i.ab               ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <4 x i32> %broadcast.splat, ptr %i.af, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat, ptr %i.ag, align 4, !tbaa !8
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.ae ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  store <4 x i32> %broadcast.splat70, ptr %i.ah, align 4, !tbaa !8
  store <4 x i32> %broadcast.splat70, ptr %i.ai, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.aj = icmp eq i64 %index.next, %n.vec
  br i1 %i.aj, label %middle.block, label %vector.body, !llvm.loop !85

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ac, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph49.split, %middle.block
  %indvars.iv.ph = phi i64 [ %i.ab, %.lr.ph49.split ], [ %i.ad, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %i.z, ptr %i.ak, align 4, !tbaa !8
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count58
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !86
end_hunk_0
begin_hunk_1_@Wlc_BlastMultiplierC:bb.a
  store i32 %i.bx, ptr %i.at, align 4, !tbaa !8
  %i.by = load i32, ptr %i.ab, align 4, !tbaa !8
  %i.bz = xor i32 %i.by, 1
  store i32 %i.bz, ptr %i.ab, align 4, !tbaa !8
  br label %Wlc_BlastFullAdder.exit.peel

Wlc_BlastFullAdder.exit.peel:                     ; preds = %bb.j, %.preheader74
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %Wlc_BlastFullAdder.exit.peel, %Wlc_BlastFullAdder.exit
  %indvars.iv = phi i64 [ %indvars.iv.next, %Wlc_BlastFullAdder.exit ], [ 1, %Wlc_BlastFullAdder.exit.peel ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !8
  %i.cc = load i32, ptr %i.as, align 4, !tbaa !8
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !8  ; 2 uses
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv ; 4 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !8  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.cd, i64 -4     ; 3 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ci = icmp eq i64 %indvars.iv.next, %i.ap
  %i.cj = xor i1 %i.au, %i.ci
  %narrow = select i1 %.not, i1 true, i1 %i.cj
  %i.ck = zext i1 %narrow to i32
  %i.cl = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cb, i32 noundef %i.cc) #27
  %i.cm = xor i32 %i.cl, %i.ck                    ; 2 uses
  %i.cn = icmp eq i32 %i.cm, 1
  %i.co = icmp eq i32 %i.ce, 1
  %or.cond.i = or i1 %i.co, %i.cn
  %i.cp = icmp eq i32 %i.cg, 1
  %spec.select.i = or i1 %i.cp, %or.cond.i        ; 2 uses
  %i.cq = zext i1 %spec.select.i to i32           ; 3 uses
  %.054.i = xor i32 %i.cg, %i.cq                  ; 2 uses
  %.053.i = xor i32 %i.ce, %i.cq                  ; 2 uses
  %.0.i = xor i32 %i.cm, %i.cq                    ; 2 uses
  %i.cr = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0.i, i32 noundef %.053.i) #27 ; 2 uses
  %i.cs = xor i32 %.0.i, 1
  %i.ct = xor i32 %.053.i, 1
  %i.cu = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cs, i32 noundef %i.ct) #27
  %i.cv = xor i32 %i.cr, 1
  %i.cw = xor i32 %i.cu, 1
  %i.cx = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cv, i32 noundef %i.cw) #27 ; 2 uses
  %i.cy = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.054.i, i32 noundef %i.cx) #27 ; 2 uses
  %i.cz = xor i32 %.054.i, 1
  %i.da = xor i32 %i.cx, 1
  %i.db = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.cz, i32 noundef %i.da) #27
  %i.dc = xor i32 %i.cy, 1
  %i.dd = xor i32 %i.db, 1
  %i.de = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.dc, i32 noundef %i.dd) #27
  store i32 %i.de, ptr %i.ch, align 4, !tbaa !8
  %i.df = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %i.cr, i32 noundef %i.cy) #27
  store i32 %i.df, ptr %i.cf, align 4, !tbaa !8
  br i1 %spec.select.i, label %bb.k, label %Wlc_BlastFullAdder.exit

bb.k:                                             ; preds = %.peel.next
  %i.dg = load i32, ptr %i.ch, align 4, !tbaa !8
  %i.dh = xor i32 %i.dg, 1
  store i32 %i.dh, ptr %i.ch, align 4, !tbaa !8
  %i.di = load i32, ptr %i.cf, align 4, !tbaa !8
  %i.dj = xor i32 %i.di, 1
  store i32 %i.dj, ptr %i.cf, align 4, !tbaa !8
  br label %Wlc_BlastFullAdder.exit

Wlc_BlastFullAdder.exit:                          ; preds = %.peel.next, %bb.k
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ap
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !95

._crit_edge:                                      ; preds = %Wlc_BlastFullAdder.exit, %Wlc_BlastFullAdder.exit.peel
  br i1 %i.au, label %.preheader74, label %.lr.ph.preheader, !llvm.loop !96

.lr.ph.preheader:                                 ; preds = %._crit_edge, %Vec_IntFill.exit73
  %i.dk = getelementptr [4 x i8], ptr %i.an, i64 %i.am
  %i.dl = getelementptr i8, ptr %i.dk, i64 -4
  store i32 %i.b, ptr %i.dl, align 4, !tbaa !8
  %i.dm = sext i32 %4 to i64
  %wide.trip.count93 = zext nneg i32 %3 to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.n, i64 %i.dm
  br label %.lr.ph

.preheader:                                       ; preds = %.lr.ph, %._crit_edge77.split.thread115
  br i1 %i.l, label %.lr.ph81.preheader, label %._crit_edge82

.lr.ph81.preheader:                               ; preds = %.preheader
  %wide.trip.count98 = zext nneg i32 %i.c to i64  ; 3 uses
  %min.iters.check118 = icmp ult i32 %i.c, 8
  br i1 %min.iters.check118, label %.lr.ph81.preheader129, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph81.preheader
  %n.vec120 = and i64 %wide.trip.count98, 2147483640 ; 3 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next124, %vector.body121 ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %index122 ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.dn, align 4, !tbaa !8
  %wide.load123 = load <4 x i32>, ptr %i.do, align 4, !tbaa !8
  %i.dp = xor <4 x i32> %wide.load, splat (i32 1)
  %i.dq = xor <4 x i32> %wide.load123, splat (i32 1)
  store <4 x i32> %i.dp, ptr %i.dn, align 4, !tbaa !8
  store <4 x i32> %i.dq, ptr %i.do, align 4, !tbaa !8
  %index.next124 = add nuw i64 %index122, 8       ; 2 uses
  %i.dr = icmp eq i64 %index.next124, %n.vec120
  br i1 %i.dr, label %middle.block125, label %vector.body121, !llvm.loop !97

middle.block125:                                  ; preds = %vector.body121
  %cmp.n126 = icmp eq i64 %n.vec120, %wide.trip.count98
  br i1 %cmp.n126, label %._crit_edge82, label %.lr.ph81.preheader129

.lr.ph81.preheader129:                            ; preds = %.lr.ph81.preheader, %middle.block125
  %indvars.iv95.ph = phi i64 [ 0, %.lr.ph81.preheader ], [ %n.vec120, %middle.block125 ]
  br label %.lr.ph81

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv90 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next91, %.lr.ph ] ; 4 uses
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv90
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !8
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv90
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !8
  %i.dw = load i32, ptr %i.a, align 4, !tbaa !8
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv90
  %i.dx = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef 1, i32 noundef %i.dt) #27
  call void @Wlc_BlastFullAdder(ptr noundef %0, i32 noundef %i.dx, i32 noundef %i.dv, i32 noundef %i.dw, ptr noundef nonnull %i.a, ptr noundef %gep)
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next91, %wide.trip.count93
  br i1 %exitcond94.not, label %.preheader, label %.lr.ph, !llvm.loop !98

.lr.ph81:                                         ; preds = %.lr.ph81.preheader129, %.lr.ph81
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %.lr.ph81 ], [ %indvars.iv95.ph, %.lr.ph81.preheader129 ] ; 2 uses
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv95 ; 2 uses
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !8
  %i.ea = xor i32 %i.dz, 1
  store i32 %i.ea, ptr %i.dy, align 4, !tbaa !8
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %exitcond99.not = icmp eq i64 %indvars.iv.next96, %wide.trip.count98
  br i1 %exitcond99.not, label %._crit_edge82, label %.lr.ph81, !llvm.loop !99

._crit_edge82:                                    ; preds = %.lr.ph81, %middle.block125, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastDivider(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 %4, i32 noundef %5, ptr nofree noundef captures(none) initializes((4, 8)) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @Wlc_VecCopy(ptr noundef %6, ptr noundef %1, i32 noundef %2) ; 3 uses
  %i.b = sext i32 %2 to i64                       ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #26 ; 5 uses
  %i.e = tail call noalias ptr @malloc(i64 noundef %i.c) #26 ; 5 uses
  %i.f = icmp sgt i32 %2, 0
  br i1 %i.f, label %.preheader120.lr.ph, label %._crit_edge139

.preheader120.lr.ph:                              ; preds = %bb.a
  %i.g = add nsw i32 %2, -1                       ; 2 uses
  %i.h = add nsw i64 %i.b, -1                     ; 2 uses
  %i.i = zext nneg i32 %i.g to i64
  %i.j = zext nneg i32 %i.g to i64
  %wide.trip.count = zext nneg i32 %2 to i64
  %wide.trip.count150 = zext nneg i32 %2 to i64
  br label %.preheader120

.preheader120:                                    ; preds = %.preheader120.lr.ph, %.loopexit
  %indvars.iv152 = phi i64 [ %i.h, %.preheader120.lr.ph ], [ %indvars.iv.next153, %.loopexit ] ; 9 uses
  %i.k = sub nuw nsw i64 %i.j, %indvars.iv152
  %.not163 = icmp eq i64 %indvars.iv152, 0        ; 2 uses
  br i1 %.not163, label %.lr.ph129, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 2 uses
  %i.l = icmp sgt i64 %indvars.iv.next, %i.k
  br i1 %i.l, label %.lr.ph, label %.lr.ph129, !llvm.loop !100

.lr.ph:                                           ; preds = %.preheader120, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.b ], [ %i.h, %.preheader120 ] ; 2 uses
  %.0105122 = phi i32 [ %i.o, %bb.b ], [ 0, %.preheader120 ]
  %i.m = getelementptr inbounds [4 x i8], ptr %3, i64 %indvars.iv
  %i.n = load i32, ptr %i.m, align 4, !tbaa !8
  %i.o = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.0105122, i32 noundef %i.n) #27 ; 3 uses
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152
  store i32 0, ptr %i.q, align 4, !tbaa !8
  br label %.loopexit

.lr.ph129:                                        ; preds = %bb.b, %.preheader120
  %.promoted.ph = phi i32 [ 0, %.preheader120 ], [ %i.o, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv152
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph129, %bb.e
  %indvars.iv141 = phi i64 [ %i.i, %.lr.ph129 ], [ %indvars.iv.next142, %bb.e ] ; 5 uses
  %i.s = phi i32 [ %.promoted.ph, %.lr.ph129 ], [ %i.ab, %bb.e ]
  %.2127 = phi i32 [ %.promoted.ph, %.lr.ph129 ], [ %i.ae, %bb.e ] ; 2 uses
  %.not117 = icmp slt i64 %indvars.iv141, %indvars.iv152
  br i1 %.not117, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = sub nuw nsw i64 %indvars.iv141, %indvars.iv152
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.w = phi i32 [ %i.v, %bb.d ], [ 0, %bb.c ]    ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv141 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !8
  %i.z = xor i32 %i.y, 1
  %i.aa = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.z) #27
  %i.ab = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.2127, i32 noundef %i.s, i32 noundef %i.aa) #27 ; 4 uses
  %i.ac = load i32, ptr %i.x, align 4, !tbaa !8
  %i.ad = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.ac) #27
  %i.ae = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.2127, i32 noundef %i.ad) #27 ; 2 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.af = icmp slt i64 %indvars.iv141, 1
  %i.ag = icmp eq i32 %i.ae, 1
  %or.cond = select i1 %i.af, i1 true, i1 %i.ag
  br i1 %or.cond, label %bb.f, label %bb.c, !llvm.loop !101

bb.f:                                             ; preds = %bb.e
  %i.ah = xor i32 %i.ab, 1                        ; 2 uses
  store i32 %i.ah, ptr %i.r, align 4, !tbaa !8
  %i.ai = icmp eq i32 %i.ab, 1
  br i1 %i.ai, label %.loopexit, label %.lr.ph133

.lr.ph133:                                        ; preds = %bb.f, %bb.h
  %indvars.iv144 = phi i64 [ %indvars.iv.next145, %bb.h ], [ 0, %bb.f ] ; 5 uses
  %.0132 = phi i32 [ %i.au, %bb.h ], [ 0, %bb.f ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv144 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !8  ; 2 uses
  %i.al = xor i32 %i.ak, 1
  %i.am = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %.0132, i32 noundef %i.al, i32 noundef %i.ak) #27
  %.not118 = icmp slt i64 %indvars.iv144, %indvars.iv152
  br i1 %.not118, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph133
  %i.an = sub nuw nsw i64 %indvars.iv144, %indvars.iv152
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph133, %bb.g
  %i.aq = phi i32 [ %i.ap, %bb.g ], [ 0, %.lr.ph133 ] ; 3 uses
  %i.ar = load i32, ptr %i.aj, align 4, !tbaa !8
  %i.as = tail call i32 @Gia_ManHashAnd(ptr noundef %0, i32 noundef %.0132, i32 noundef %i.aq) #27
  %i.at = tail call i32 @Gia_ManHashOr(ptr noundef %0, i32 noundef %.0132, i32 noundef %i.aq) #27
  %i.au = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.ar, i32 noundef %i.as, i32 noundef %i.at) #27
  %i.av = tail call i32 @Gia_ManHashXor(ptr noundef %0, i32 noundef %i.am, i32 noundef %i.aq) #27
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv144
  store i32 %i.av, ptr %i.aw, align 4, !tbaa !8
  %indvars.iv.next145 = add nuw nsw i64 %indvars.iv144, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next145, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge134, label %.lr.ph133, !llvm.loop !102

._crit_edge134:                                   ; preds = %bb.h
  %i.ax = icmp eq i32 %i.ab, 0
  br i1 %i.ax, label %bb.i, label %.lr.ph136

bb.i:                                             ; preds = %._crit_edge134
  %i.ay = tail call ptr @Wlc_VecCopy(ptr noundef %6, ptr noundef nonnull %i.e, i32 noundef %2) ; 0 uses
  br label %.loopexit

.lr.ph136:                                        ; preds = %._crit_edge134, %.lr.ph136
  %indvars.iv147 = phi i64 [ %indvars.iv.next148, %.lr.ph136 ], [ 0, %._crit_edge134 ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv147
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !8
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv147 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !8
  %i.bd = tail call i32 @Gia_ManHashMux(ptr noundef %0, i32 noundef %i.ah, i32 noundef %i.ba, i32 noundef %i.bc) #27
  store i32 %i.bd, ptr %i.bb, align 4, !tbaa !8
  %indvars.iv.next148 = add nuw nsw i64 %indvars.iv147, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next148, %wide.trip.count150
  br i1 %exitcond151.not, label %.loopexit, label %.lr.ph136, !llvm.loop !103

.loopexit:                                        ; preds = %.lr.ph136, %.thread, %bb.i, %bb.f
  %indvars.iv.next153 = add nsw i64 %indvars.iv152, -1
  br i1 %.not163, label %._crit_edge139, label %.preheader120, !llvm.loop !104

._crit_edge139:                                   ; preds = %.loopexit, %bb.a
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge139
  tail call void @free(ptr noundef nonnull %i.e) #27
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge139, %bb.j
  %.not115 = icmp eq i32 %5, 0
  br i1 %.not115, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.be = tail call ptr @Wlc_VecCopy(ptr noundef %6, ptr noundef %i.d, i32 noundef %2) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not116 = icmp eq ptr %i.d, null
  br i1 %.not116, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @free(ptr noundef nonnull %i.d) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  ret void
}

; Function Attrs: nounwind uwtable
define void @Wlc_BlastDividerNR(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5, ptr nofree noundef captures(none) %6) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr i8, ptr %6, i64 8
  %.val = load ptr, ptr %i.c, align 8, !tbaa !27  ; 7 uses
  %i.d = sext i32 %2 to i64                       ; 10 uses
  %i.e = shl nsw i64 %i.d, 2
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #26 ; 8 uses
  %i.g = add nsw i32 %4, %2                       ; 4 uses
  %i.h = icmp sgt i32 %i.g, 0
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.g to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.i = icmp eq i32 %i.g, 1
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.d ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.d ]
  %i.j = icmp slt i64 %indvars.iv, %i.d
  br i1 %i.j, label %bb.b, label %.lr.ph.1

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph, %bb.b
  %i.m = phi i32 [ %i.l, %bb.b ], [ 0, %.lr.ph ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv
  store i32 %i.m, ptr %i.n, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 3 uses
  %i.o = icmp slt i64 %indvars.iv.next, %i.d
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.1
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next
  %i.q = load i32, ptr %i.p, align 4, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.1
  %i.r = phi i32 [ %i.q, %bb.c ], [ 0, %.lr.ph.1 ]
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.next
  store i32 %i.r, ptr %i.s, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !105

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod115 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod115)
  %i.t = icmp slt i64 %indvars.iv.epil.init, %i.d
  br i1 %i.t, label %bb.e, label %._crit_edge.loopexit.epilog-lcssa

bb.e:                                             ; preds = %.lr.ph.epil.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init
  %i.v = load i32, ptr %i.u, align 4, !tbaa !8
  br label %._crit_edge.loopexit.epilog-lcssa

._crit_edge.loopexit.epilog-lcssa:                ; preds = %bb.e, %.lr.ph.epil.preheader
  %i.w = phi i32 [ %i.v, %bb.e ], [ 0, %.lr.ph.epil.preheader ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %.val, i64 %indvars.iv.epil.init
  store i32 %i.w, ptr %i.x, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.epilog-lcssa, %._crit_edge.loopexit.unr-lcssa, %bb.a
  %i.y = add nsw i32 %2, -1
  %i.z = icmp sgt i32 %2, 0
  br i1 %i.z, label %.lr.ph80, label %._crit_edge81

.lr.ph80:                                         ; preds = %._crit_edge
  %.not6772 = icmp slt i32 %4, 0
  br i1 %.not6772, label %.lr.ph80.split.us.preheader, label %.lr.ph80.split.preheader

.lr.ph80.split.preheader:                         ; preds = %.lr.ph80
  %i.aa = zext nneg i32 %4 to i64                 ; 2 uses
  %i.ab = add nuw i32 %4, 1
  %i.ac = zext nneg i32 %i.y to i64
  %wide.trip.count91 = zext i32 %i.ab to i64
  %invariant.gep107 = getelementptr [4 x i8], ptr %.val, i64 %i.aa
  br label %.lr.ph80.split

.lr.ph80.split.us.preheader:                      ; preds = %.lr.ph80
  %i.ad = sext i32 %4 to i64
  %invariant.gep109 = getelementptr [4 x i8], ptr %.val, i64 %i.ad ; 2 uses
  %min.iters.check = icmp ult i32 %2, 8
  br i1 %min.iters.check, label %.lr.ph80.split.us.preheader113, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.split.us.preheader
  %n.vec = and i64 %i.d, 2147483640               ; 2 uses
  %i.ae = and i64 %i.d, 7
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.af = xor i64 %index, -1
  %i.ag = add i64 %i.af, %i.d                     ; 2 uses
  %i.ah = getelementptr [4 x i8], ptr %invariant.gep109, i64 %i.ag ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -12
  %i.aj = getelementptr i8, ptr %i.ah, i64 -28
  %wide.load = load <4 x i32>, ptr %i.ai, align 4, !tbaa !8
  %wide.load112 = load <4 x i32>, ptr %i.aj, align 4, !tbaa !8
  %i.ak = xor <4 x i32> %wide.load, splat (i32 1)
  %i.al = xor <4 x i32> %wide.load112, splat (i32 1)
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.ag ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -12
  %i.ao = getelementptr inbounds i8, ptr %i.am, i64 -28
  store <4 x i32> %i.ak, ptr %i.an, align 4, !tbaa !8
  store <4 x i32> %i.al, ptr %i.ao, align 4, !tbaa !8
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ap = icmp eq i64 %index.next, %n.vec
  br i1 %i.ap, label %middle.block, label %vector.body, !llvm.loop !106

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.d
  br i1 %cmp.n, label %._crit_edge81, label %.lr.ph80.split.us.preheader113

end_hunk_1
