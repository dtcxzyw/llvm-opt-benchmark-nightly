Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ipopt/original/IpStdFInterface?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0_@eval_grad_f:bb.a
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.d = zext i1 %2 to i32
  store i32 %i.d, ptr %i.b, align 4, !tbaa !8
  %i.e = load ptr, ptr %4, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 0, ptr %i.c, align 4, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  call void %i.i(ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef %3, ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull %i.c) #7
  %i.j = load i32, ptr %i.c, align 4, !tbaa !8
  %i.k = icmp eq i32 %i.j, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %i.k
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_jac_g(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr nofree noundef readonly captures(none) %8) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %i.g = zext i1 %2 to i32
  store i32 %i.g, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i32 %3, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 %4, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.h = load ptr, ptr %8, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 0, ptr %i.f, align 4, !tbaa !8
  %i.k = icmp ne ptr %5, null
  %i.l = icmp ne ptr %6, null
  %or.cond = and i1 %i.k, %i.l
  %i.m = icmp eq ptr %7, null
  %or.cond3 = and i1 %or.cond, %i.m
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = icmp eq ptr %5, null
  %i.o = icmp eq ptr %6, null
  %or.cond5 = and i1 %i.n, %i.o
  %i.p = icmp ne ptr %7, null
  %or.cond7 = and i1 %or.cond5, %i.p
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %i.e, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !18
  call void %i.r(ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %1, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %i.f) #7
  %i.s = load i32, ptr %i.f, align 4, !tbaa !8
  %i.t = icmp eq i32 %i.s, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.t, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @eval_h(i32 noundef %0, ptr noundef %1, i1 noundef zeroext %2, double noundef %3, i32 noundef %4, ptr noundef %5, i1 noundef zeroext %6, i32 noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr nofree noundef readonly captures(none) %11) #0 {
bb.a:
  %i.a = alloca double, align 8                   ; 2 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  store double %3, ptr %i.a, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %0, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  %i.i = zext i1 %2 to i32
  store i32 %i.i, ptr %i.c, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i32 %4, ptr %i.d, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.j = zext i1 %6 to i32
  store i32 %i.j, ptr %i.e, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store i32 %7, ptr %i.f, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  %i.k = load ptr, ptr %11, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store i32 0, ptr %i.h, align 4, !tbaa !8
  %i.n = icmp ne ptr %8, null
  %i.o = icmp ne ptr %9, null
  %or.cond = and i1 %i.n, %i.o
  %i.p = icmp eq ptr %10, null
  %or.cond3 = and i1 %or.cond, %i.p
  br i1 %or.cond3, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = icmp eq ptr %8, null
  %i.r = icmp eq ptr %9, null
  %or.cond5 = and i1 %i.q, %i.r
  %i.s = icmp ne ptr %10, null
  %or.cond7 = and i1 %or.cond5, %i.s
  br i1 %or.cond7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.b, %bb.a
  %storemerge = phi i32 [ 0, %bb.a ], [ 1, %bb.b ]
  store i32 %storemerge, ptr %i.g, align 4, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !19
  call void %i.u(ptr noundef nonnull %i.g, ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d, ptr noundef %5, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %i.k, ptr noundef %i.m, ptr noundef nonnull %i.h) #7
  %i.v = load i32, ptr %i.h, align 4, !tbaa !8
  %i.w = icmp eq i32 %i.v, 0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ %i.w, %bb.d ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define void @ipfree_(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  tail call void @FreeIpoptProblem(ptr noundef %i.c) #7
  tail call void @free(ptr noundef %i.a) #7
  store ptr null, ptr %0, align 8, !tbaa !25
  ret void
}

declare void @FreeIpoptProblem(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define i32 @ipsolve_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 4 uses
  store ptr %7, ptr %i.a, align 8, !tbaa !21
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %8, ptr %i.b, align 8, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = tail call i32 @IpoptSolve(ptr noundef %i.d, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull %i.a) #7
  ret i32 %i.e
}

declare i32 @IpoptSolve(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddstroption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %6, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %5 = zext nneg i32 %.014.i to i64
  %i.c = getelementptr i8, ptr %1, i64 %5
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %6 = add nsw i32 %.014.i, -1
  %i.f = icmp sgt i32 %.014.i, 1
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.g = add nsw i32 %.0.lcssa.i, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !26
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.l = icmp sgt i32 %4, 0
  br i1 %i.l, label %.lr.ph.i13, label %._crit_edge.i10

.lr.ph.i13:                                       ; preds = %f2cstr.exit, %bb.d
  %.014.i14 = phi i32 [ %8, %bb.d ], [ %4, %f2cstr.exit ] ; 4 uses
  %7 = zext nneg i32 %.014.i14 to i64
  %i.m = getelementptr i8, ptr %2, i64 %7
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !26
  %.not.i15 = icmp eq i8 %i.o, 32
  br i1 %.not.i15, label %bb.d, label %._crit_edge.i10

bb.d:                                             ; preds = %.lr.ph.i13
  %8 = add nsw i32 %.014.i14, -1
  %i.p = icmp sgt i32 %.014.i14, 1
  br i1 %i.p, label %.lr.ph.i13, label %._crit_edge.i10, !llvm.loop !27

._crit_edge.i10:                                  ; preds = %bb.d, %.lr.ph.i13, %f2cstr.exit
  %.0.lcssa.i11 = phi i32 [ %4, %f2cstr.exit ], [ 0, %bb.d ], [ %.014.i14, %.lr.ph.i13 ] ; 2 uses
  %i.q = add nsw i32 %.0.lcssa.i11, 1
  %i.r = sext i32 %i.q to i64
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #6 ; 5 uses
  %.not13.i12 = icmp eq ptr %i.s, null
  br i1 %.not13.i12, label %f2cstr.exit16, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i10
  %i.t = sext i32 %.0.lcssa.i11 to i64            ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.s, ptr readonly align 1 %2, i64 %i.t, i1 false)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 %i.t
  store i8 0, ptr %i.u, align 1, !tbaa !26
  br label %f2cstr.exit16

f2cstr.exit16:                                    ; preds = %._crit_edge.i10, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !9
  %i.x = tail call zeroext i1 @AddIpoptStrOption(ptr noundef %i.w, ptr noundef %i.i, ptr noundef %i.s) #7
  tail call void @free(ptr noundef %i.s) #7
  tail call void @free(ptr noundef %i.i) #7
  %not. = xor i1 %i.x, true
  %i.y = zext i1 %not. to i32
  ret i32 %i.y
}

declare zeroext i1 @AddIpoptStrOption(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddnumoption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = icmp sgt i32 %3, 0
  br i1 %i.b, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %5, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %4 = zext nneg i32 %.014.i to i64
  %i.c = getelementptr i8, ptr %1, i64 %4
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.e, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %5 = add nsw i32 %.014.i, -1
  %i.f = icmp sgt i32 %.014.i, 1
  br i1 %i.f, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.g = add nsw i32 %.0.lcssa.i, 1
  %i.h = sext i32 %i.g to i64
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.h) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.j = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr readonly align 1 %1, i64 %i.j, i1 false)
  %i.k = getelementptr inbounds i8, ptr %i.i, i64 %i.j
  store i8 0, ptr %i.k, align 1, !tbaa !26
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !9
  %i.n = load double, ptr %2, align 8, !tbaa !23
  %i.o = tail call zeroext i1 @AddIpoptNumOption(ptr noundef %i.m, ptr noundef %i.i, double noundef %i.n) #7
  tail call void @free(ptr noundef %i.i) #7
  %not. = xor i1 %i.o, true
  %i.p = zext i1 %not. to i32
  ret i32 %i.p
}

declare zeroext i1 @AddIpoptNumOption(ptr noundef, ptr noundef, double noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipaddintoption_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %5, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %4 = zext nneg i32 %.014.i to i64
  %i.d = getelementptr i8, ptr %1, i64 %4
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %5 = add nsw i32 %.014.i, -1
  %i.g = icmp sgt i32 %.014.i, 1
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.h = add nsw i32 %.0.lcssa.i, 1
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.j, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.k = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %1, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !26
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call zeroext i1 @AddIpoptIntOption(ptr noundef %i.n, ptr noundef %i.j, i32 noundef %i.b) #7
  tail call void @free(ptr noundef %i.j) #7
  %not. = xor i1 %i.o, true
  %i.p = zext i1 %not. to i32
  ret i32 %i.p
}

declare zeroext i1 @AddIpoptIntOption(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipopenoutputfile_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = load i32, ptr %2, align 4, !tbaa !8
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.b
  %.014.i = phi i32 [ %5, %bb.b ], [ %3, %bb.a ]  ; 4 uses
  %4 = zext nneg i32 %.014.i to i64
  %i.d = getelementptr i8, ptr %1, i64 %4
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !26
  %.not.i = icmp eq i8 %i.f, 32
  br i1 %.not.i, label %bb.b, label %._crit_edge.i

bb.b:                                             ; preds = %.lr.ph.i
  %5 = add nsw i32 %.014.i, -1
  %i.g = icmp sgt i32 %.014.i, 1
  br i1 %i.g, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !27

._crit_edge.i:                                    ; preds = %bb.b, %.lr.ph.i, %bb.a
  %.0.lcssa.i = phi i32 [ %3, %bb.a ], [ 0, %bb.b ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.h = add nsw i32 %.0.lcssa.i, 1
  %i.i = sext i32 %i.h to i64
  %i.j = tail call noalias ptr @malloc(i64 noundef %i.i) #6 ; 5 uses
  %.not13.i = icmp eq ptr %i.j, null
  br i1 %.not13.i, label %f2cstr.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  %i.k = sext i32 %.0.lcssa.i to i64              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr readonly align 1 %1, i64 %i.k, i1 false)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 %i.k
  store i8 0, ptr %i.l, align 1, !tbaa !26
  br label %f2cstr.exit

f2cstr.exit:                                      ; preds = %._crit_edge.i, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !9
  %i.o = tail call zeroext i1 @OpenIpoptOutputFile(ptr noundef %i.n, ptr noundef %i.j, i32 noundef %i.b) #7
  tail call void @free(ptr noundef %i.j) #7
  %not. = xor i1 %i.o, true
  %i.p = zext i1 %not. to i32
  ret i32 %i.p
}

declare zeroext i1 @OpenIpoptOutputFile(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @ipsetcallback_(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %1, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = tail call zeroext i1 @SetIntermediateCallback(ptr noundef %i.d, ptr noundef nonnull @intermediate_cb) #7 ; 0 uses
  ret void
}

declare zeroext i1 @SetIntermediateCallback(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal zeroext i1 @intermediate_cb(i32 noundef %0, i32 noundef %1, double noundef %2, double noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9, i32 noundef %10, ptr nofree noundef readonly captures(none) %11) #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = alloca double, align 8                   ; 4 uses
  %i.d = alloca double, align 8                   ; 4 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca i32, align 4                      ; 4 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  store i32 %0, ptr %i.a, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store i32 %1, ptr %i.b, align 4, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store double %2, ptr %i.c, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store double %3, ptr %i.d, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  store double %4, ptr %i.e, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  store double %5, ptr %i.f, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #7
  store double %6, ptr %i.g, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #7
  store double %7, ptr %i.h, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #7
  store double %8, ptr %i.i, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #7
  store double %9, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #7
  store i32 %10, ptr %i.k, align 4, !tbaa !8
  %i.m = load ptr, ptr %11, align 8, !tbaa !21
  %i.n = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #7
  store i32 0, ptr %i.l, align 4, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %11, i64 56
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20   ; 2 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void %i.q(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k, ptr noundef %i.m, ptr noundef %i.o, ptr noundef nonnull %i.l) #7
  %i.r = load i32, ptr %i.l, align 4, !tbaa !8
  %i.s = icmp eq i32 %i.r, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.s, %bb.b ], [ true, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define void @ipunsetcallback_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr null, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.e = tail call zeroext i1 @SetIntermediateCallback(ptr noundef %i.d, ptr noundef null) #7 ; 0 uses
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipgetcurriterate_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr nofree noundef readonly captures(none) %10, ptr noundef %11, ptr noundef %12) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load i32, ptr %1, align 4, !tbaa !8
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i32, ptr %6, align 4, !tbaa !8
  %i.g = load i32, ptr %2, align 4, !tbaa !8
  %.not = icmp eq i32 %i.g, 0
  %i.h = select i1 %.not, ptr null, ptr %7
  %i.i = load i32, ptr %3, align 4, !tbaa !8
  %.not15 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = select i1 %.not15, ptr null, ptr %8
  %i.k = select i1 %.not15, ptr null, ptr %9
  %i.l = load i32, ptr %10, align 4, !tbaa !8
  %i.m = load i32, ptr %4, align 4, !tbaa !8
  %.not16 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not16, ptr null, ptr %11
  %i.o = load i32, ptr %5, align 4, !tbaa !8
  %.not17 = icmp eq i32 %i.o, 0
  %i.p = select i1 %.not17, ptr null, ptr %12
  %i.q = tail call zeroext i1 @GetIpoptCurrentIterate(ptr noundef %i.c, i1 noundef zeroext %i.e, i32 noundef %i.f, ptr noundef %i.h, ptr noundef %i.j, ptr noundef %i.k, i32 noundef %i.l, ptr noundef %i.n, ptr noundef %i.p) #7
  %not. = xor i1 %i.q, true
  %i.r = zext i1 %not. to i32
  ret i32 %i.r
}

declare zeroext i1 @GetIpoptCurrentIterate(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipgetcurrviolations_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr noundef %7, ptr noundef %8, ptr noundef %9, ptr noundef %10, ptr noundef %11, ptr nofree noundef readonly captures(none) %12, ptr noundef %13, ptr noundef %14) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load i32, ptr %1, align 4, !tbaa !8
  %i.e = icmp ne i32 %i.d, 0
  %i.f = load i32, ptr %6, align 4, !tbaa !8
  %i.g = load i32, ptr %2, align 4, !tbaa !8
  %.not = icmp eq i32 %i.g, 0                     ; 2 uses
  %i.h = select i1 %.not, ptr null, ptr %7
  %i.i = select i1 %.not, ptr null, ptr %8
  %i.j = load i32, ptr %3, align 4, !tbaa !8
  %.not19 = icmp eq i32 %i.j, 0                   ; 3 uses
  %i.k = select i1 %.not19, ptr null, ptr %9
  %i.l = select i1 %.not19, ptr null, ptr %10
  %i.m = load i32, ptr %4, align 4, !tbaa !8
  %.not20 = icmp eq i32 %i.m, 0
  %i.n = select i1 %.not20, ptr null, ptr %11
  %i.o = load i32, ptr %12, align 4, !tbaa !8
  %i.p = load i32, ptr %5, align 4, !tbaa !8
  %.not21 = icmp eq i32 %i.p, 0
  %i.q = select i1 %.not21, ptr null, ptr %13
  %i.r = select i1 %.not19, ptr null, ptr %14
  %i.s = tail call zeroext i1 @GetIpoptCurrentViolations(ptr noundef %i.c, i1 noundef zeroext %i.e, i32 noundef %i.f, ptr noundef %i.h, ptr noundef %i.i, ptr noundef %i.k, ptr noundef %i.l, ptr noundef %i.n, i32 noundef %i.o, ptr noundef %i.q, ptr noundef %i.r) #7
  %not. = xor i1 %i.s, true
  %i.t = zext i1 %not. to i32
  ret i32 %i.t
}

declare zeroext i1 @GetIpoptCurrentViolations(ptr noundef, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ipsetproblemscaling_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.d = load double, ptr %1, align 8, !tbaa !23
  %i.e = tail call zeroext i1 @SetIpoptProblemScaling(ptr noundef %i.c, double noundef %i.d, ptr noundef %2, ptr noundef %3) #7
  %not. = xor i1 %i.e, true
  %i.f = zext i1 %not. to i32
  ret i32 %i.f
}

declare zeroext i1 @SetIpoptProblemScaling(ptr noundef, double noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

end_hunk_0
