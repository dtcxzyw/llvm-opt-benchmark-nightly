inline.NumInlined: 154
inline.NumDeleted: 26
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@onig_region_resize:bb.a
  store i32 %1, ptr %i.a, align 4, !tbaa !21
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 4) ; 5 uses
  %i.b = load i32, ptr %0, align 8, !tbaa !26     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = zext nneg i32 %spec.store.select to i64
  %i.e = shl nuw nsw i64 %i.d, 3                  ; 2 uses
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.e) #22 ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !25
  %i.h = icmp eq ptr %i.f, null
  br i1 %i.h, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.e) #22 ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 16
  store ptr %i.i, ptr %i.j, align 8, !tbaa !24
  %i.k = icmp eq ptr %i.i, null
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.f) #21
  br label %.thread

bb.e:                                             ; preds = %bb.c
  store i32 %spec.store.select, ptr %0, align 8, !tbaa !26
  br label %.thread

bb.f:                                             ; preds = %bb.a
  %i.l = icmp slt i32 %i.b, %spec.store.select
  br i1 %i.l, label %bb.g, label %.thread

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %0, align 8, !tbaa !26
  %i.m = getelementptr i8, ptr %0, i64 8          ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = zext nneg i32 %spec.store.select to i64
  %i.p = shl nuw nsw i64 %i.o, 3                  ; 2 uses
  %i.q = tail call ptr @realloc(ptr noundef %i.n, i64 noundef %i.p) #23 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.s = load ptr, ptr %i.m, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.s) #21
  %i.t = getelementptr i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.u) #21
  br label %.thread

bb.i:                                             ; preds = %bb.g
  store ptr %i.q, ptr %i.m, align 8, !tbaa !25
  %i.v = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !24
  %i.x = tail call ptr @realloc(ptr noundef %i.w, i64 noundef %i.p) #23 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.z = load ptr, ptr %i.m, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.z) #21
  %i.aa = load ptr, ptr %i.v, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.aa) #21
  br label %.thread

bb.k:                                             ; preds = %bb.i
  store ptr %i.x, ptr %i.v, align 8, !tbaa !24
  store i32 %spec.store.select, ptr %0, align 8, !tbaa !26
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.h, %bb.e, %bb.f, %bb.k, %bb.b, %bb.d
  %.1 = phi i32 [ 0, %bb.e ], [ -5, %bb.d ], [ -5, %bb.b ], [ 0, %bb.k ], [ 0, %bb.f ], [ -5, %bb.h ], [ -5, %bb.j ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define dso_local range(i32 -30, 1) i32 @onig_region_set(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !26
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = add nuw i32 %1, 1
  %i.d = tail call i32 @onig_region_resize(ptr noundef nonnull %0, i32 noundef %i.c) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = sext i32 %2 to i64
  %i.g = getelementptr i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25
  %i.i = zext nneg i32 %1 to i64                  ; 2 uses
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  store i64 %i.f, ptr %i.j, align 8, !tbaa !20
  %i.k = sext i32 %3 to i64
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !24
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.i
  store i64 %i.k, ptr %i.n, align 8, !tbaa !20
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.1 = phi i32 [ %i.d, %bb.c ], [ 0, %bb.d ], [ -30, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define dso_local void @onig_region_init(ptr nofree noundef writeonly captures(none) initializes((0, 24)) %0) local_unnamed_addr #7 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(inaccessiblemem: readwrite, errnomem: write) uwtable
define dso_local noalias noundef ptr @onig_region_new() local_unnamed_addr #8 {
bb.a:
  %calloc = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  ret ptr %calloc
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @onig_region_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %0, align 8, !tbaa !26
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  tail call void @free(ptr noundef %i.d) #21
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !24
  tail call void @free(ptr noundef %i.f) #21
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not6 = icmp eq i32 %1, 0
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @free(ptr noundef nonnull %0) #21
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %0, i8 noundef 0, i64 noundef 24, i1 noundef false) #21
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong memory(readwrite, target_mem: none) uwtable
define dso_local void @onig_region_copy(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #9 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 4          ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !21
  %i.d = tail call i32 @onig_region_resize(ptr noundef %0, i32 noundef %i.c)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.e = load i32, ptr %i.b, align 4, !tbaa !21   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !25   ; 5 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !25   ; 5 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !24   ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !24   ; 5 uses
  %wide.trip.count = zext nneg i32 %i.e to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %i.e, 32
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph
  %i.o = ptrtoaddr ptr %i.n to i64                ; 3 uses
  %i.p = ptrtoaddr ptr %i.l to i64                ; 2 uses
  %i.q = ptrtoaddr ptr %i.j to i64                ; 3 uses
  %i.r = ptrtoaddr ptr %i.h to i64                ; 2 uses
  %i.s = sub i64 %i.q, %i.o
  %diff.check = icmp ugt i64 %i.s, -32
  %i.t = sub i64 %i.r, %i.q
  %diff.check24 = icmp ugt i64 %i.t, -32
  %conflict.rdx = or i1 %diff.check, %diff.check24
  %i.u = sub i64 %i.q, %i.p
  %diff.check25 = icmp ugt i64 %i.u, -32
  %conflict.rdx26 = or i1 %conflict.rdx, %diff.check25
  %i.v = sub i64 %i.r, %i.o
  %diff.check27 = icmp ugt i64 %i.v, -32
  %conflict.rdx28 = or i1 %conflict.rdx26, %diff.check27
  %i.w = sub i64 %i.p, %i.o
  %diff.check29 = icmp ugt i64 %i.w, -32
  %conflict.rdx30 = or i1 %conflict.rdx28, %diff.check29
  br i1 %conflict.rdx30, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.x = getelementptr [8 x i8], ptr %i.h, i64 %index ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 16
  %wide.load = load <2 x i64>, ptr %i.x, align 8, !tbaa !20
  %wide.load31 = load <2 x i64>, ptr %i.y, align 8, !tbaa !20
  %i.z = getelementptr [8 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 16
  store <2 x i64> %wide.load, ptr %i.z, align 8, !tbaa !20
  store <2 x i64> %wide.load31, ptr %i.aa, align 8, !tbaa !20
  %i.ab = getelementptr [8 x i8], ptr %i.l, i64 %index ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 16
  %wide.load32 = load <2 x i64>, ptr %i.ab, align 8, !tbaa !20
  %wide.load33 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !20
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %index ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  store <2 x i64> %wide.load32, ptr %i.ad, align 8, !tbaa !20
  store <2 x i64> %wide.load33, ptr %i.ae, align 8, !tbaa !20
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !27

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph ], [ %n.vec, %middle.block ] ; 7 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ag = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.ph
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !20
  %i.ai = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.ph
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !20
  %i.aj = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.ph
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !20
  %i.al = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.ph
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !20
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.am = add nsw i64 %wide.trip.count, -1
  %i.an = icmp eq i64 %indvars.iv.ph, %i.am
  br i1 %i.an, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !20
  %i.aq = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !20
  %i.ar = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !20
  %i.at = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv
  store i64 %i.as, ptr %i.at, align 8, !tbaa !20
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.au = getelementptr [8 x i8], ptr %i.h, i64 %indvars.iv.next
  %i.av = load i64, ptr %i.au, align 8, !tbaa !20
  %i.aw = getelementptr [8 x i8], ptr %i.j, i64 %indvars.iv.next
  store i64 %i.av, ptr %i.aw, align 8, !tbaa !20
  %i.ax = getelementptr [8 x i8], ptr %i.l, i64 %indvars.iv.next
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr [8 x i8], ptr %i.n, i64 %indvars.iv.next
  store i64 %i.ay, ptr %i.az, align 8, !tbaa !20
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %scalar.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.preheader
  %i.ba = getelementptr i8, ptr %0, i64 4
  store i32 %i.e, ptr %i.ba, align 4, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local i32 @onig_get_match_stack_limit_size() local_unnamed_addr #10 {
bb.a:
  %i.a = load i32, ptr @MatchStackLimitSize, align 4, !tbaa !7
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @onig_set_match_stack_limit_size(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  store i32 %0, ptr @MatchStackLimitSize, align 4, !tbaa !7
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @onig_match(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.OnigMatchArg, align 8       ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store ptr null, ptr %6, align 8, !tbaa !32
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %5, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %4, ptr %i.b, align 8, !tbaa !36
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 32
  store ptr %3, ptr %i.c, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 40
  store ptr %3, ptr %i.d, align 8, !tbaa !38
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 48
  store i64 -1, ptr %i.e, align 8, !tbaa !39
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 64
  store i32 0, ptr %i.f, align 8, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 72
  store i64 0, ptr %i.g, align 8, !tbaa !41
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 80
  store i32 1, ptr %i.h, align 8, !tbaa !42
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 88
  store i64 0, ptr %i.i, align 8, !tbaa !43
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 96
  store i64 1, ptr %i.j, align 8, !tbaa !44
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %.not = icmp eq ptr %4, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i8 0, i64 24, i1 false)
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 8, !tbaa !45
  %i.n = add i32 %i.m, 1
  %i.o = tail call i32 @onig_region_resize(ptr noundef nonnull %4, i32 noundef %i.n) ; 2 uses
  %.not.i = icmp eq i32 %i.o, 0
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr i8, ptr %4, i64 4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !21   ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph.i.i, label %.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.s = getelementptr i8, ptr %4, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !24
  %i.u = getelementptr i8, ptr %4, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !25
  %i.w = zext nneg i32 %i.q to i64
  %i.x = shl nuw nsw i64 %i.w, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.t, i8 -1, i64 %i.x, i1 false), !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 -1, i64 %i.x, i1 false), !tbaa !20
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.y = sext i32 %i.o to i64
  br label %bb.e

.thread:                                          ; preds = %bb.c, %.lr.ph.i.i, %bb.a
  %i.z = getelementptr i8, ptr %0, i64 72
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !46
  %i.ab = tail call ptr @onigenc_get_prev_char_head(ptr noundef %i.aa, ptr noundef %1, ptr noundef %3, ptr noundef %2) #21
  %i.ac = call fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %i.ab, ptr noundef %6)
  %.pre = load ptr, ptr %6, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.ad = phi ptr [ %.pre, %.thread ], [ null, %bb.d ]
  %.1 = phi i64 [ %i.ac, %.thread ], [ %i.y, %bb.d ]
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 120
  call void @free(ptr noundef %i.ad) #21
  %i.af = load ptr, ptr %i.k, align 8, !tbaa !47
  call void @free(ptr noundef %i.af) #21
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !48
  call void @free(ptr noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  ret i64 %.1
}

declare ptr @onigenc_get_prev_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @match_at(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [18 x i8], align 16               ; 6 uses
  %i.g = alloca [18 x i8], align 16               ; 5 uses
  %i.h = alloca ptr, align 8                      ; 6 uses
  %i.i = alloca ptr, align 8                      ; 6 uses
  %i.j = alloca [18 x i8], align 16               ; 6 uses
  %i.k = alloca [18 x i8], align 16               ; 5 uses
end_hunk_0
