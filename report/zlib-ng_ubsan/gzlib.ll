Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/gzlib?download=true
inline.NumInlined: 8
inline.NumDeleted: 3
begin_hunk_0_@gz_open:bb.a

bb.do:                                            ; preds = %bb.dn, %bb.dk
  br i1 %i.f, label %bb.dq, label %bb.dp, !prof !14, !nosanitize !13

bb.dp:                                            ; preds = %bb.do
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @213, i64 %i.d) #12, !nosanitize !13
  br label %bb.dq, !nosanitize !13

bb.dq:                                            ; preds = %bb.do, %bb.dp
  %i.bt = load i32, ptr %i.x, align 8, !tbaa !23
  %i.bu = icmp eq i32 %i.bt, 7247
  br i1 %i.bu, label %bb.dr, label %bb.eb

bb.dr:                                            ; preds = %bb.dq
  br i1 %i.f, label %bb.dt, label %bb.ds, !prof !14, !nosanitize !13

bb.ds:                                            ; preds = %bb.dr
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @214, i64 %i.d) #12, !nosanitize !13
  br label %bb.dt, !nosanitize !13

bb.dt:                                            ; preds = %bb.dr, %bb.ds
  %i.bv = load i32, ptr %i.bj, align 4, !tbaa !34
  %i.bw = call i64 @lseek64(i32 noundef %i.bv, i64 noundef 0, i32 noundef 1) #12
  br i1 %i.f, label %bb.dv, label %bb.du, !prof !14, !nosanitize !13

bb.du:                                            ; preds = %bb.dt
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @215, i64 %i.d) #12, !nosanitize !13
  br label %bb.dv, !nosanitize !13

bb.dv:                                            ; preds = %bb.du, %bb.dt
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 80 ; 3 uses
  store i64 %i.bw, ptr %i.bx, align 8, !tbaa !35
  br i1 %i.f, label %bb.dx, label %bb.dw, !prof !14, !nosanitize !13

bb.dw:                                            ; preds = %bb.dv
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @216, i64 %i.d) #12, !nosanitize !13
  br label %bb.dx, !nosanitize !13

bb.dx:                                            ; preds = %bb.dv, %bb.dw
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !35
  %i.bz = icmp eq i64 %i.by, -1
  br i1 %i.bz, label %bb.dy, label %bb.eb

bb.dy:                                            ; preds = %bb.dx
  br i1 %i.f, label %bb.ea, label %bb.dz, !prof !14, !nosanitize !13

bb.dz:                                            ; preds = %bb.dy
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @217, i64 %i.d) #12, !nosanitize !13
  br label %bb.ea, !nosanitize !13

bb.ea:                                            ; preds = %bb.dy, %bb.dz
  store i64 0, ptr %i.bx, align 8, !tbaa !35
  br label %bb.eb

bb.eb:                                            ; preds = %bb.dx, %bb.ea, %bb.dq
  call fastcc void @gz_reset(ptr noundef nonnull %i.b)
  br label %gz_state_init.exit.thread

gz_state_init.exit.thread:                        ; preds = %bb.b, %bb.a, %bb.eb, %bb.dh, %bb.cn, %bb.cc, %bb.bv, %bb.ay
  %.057 = phi ptr [ %i.b, %bb.eb ], [ null, %bb.a ], [ null, %bb.ay ], [ null, %bb.bv ], [ null, %bb.cc ], [ null, %bb.cn ], [ null, %bb.dh ], [ null, %bb.b ]
  ret ptr %.057
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @zng_gzdopen(i32 noundef %0, ptr noundef %1) local_unnamed_addr #1 !func_sanitize !58 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %0, -1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 32, ptr noundef nonnull @.str.1, i32 noundef %0) #12 ; 0 uses
  %i.d = call fastcc ptr @gz_open(ptr noundef nonnull %i.a, i32 noundef %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret ptr %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzclose(ptr noundef %0) local_unnamed_addr #1 !func_sanitize !36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 2 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13
  br i1 %i.d, label %bb.d, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @30, i64 %i.b) #12, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !13 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !13
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !13
  br i1 %i.h, label %bb.f, label %bb.e, !prof !14, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @31, i64 %i.f) #12, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 7247
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = call i32 @zng_gzclose_r(ptr noundef nonnull %0) #12
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.l = call i32 @zng_gzclose_w(ptr noundef nonnull %0) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h, %bb.a
  %.0 = phi i32 [ -2, %bb.a ], [ %i.k, %bb.g ], [ %i.l, %bb.h ]
  ret i32 %.0
}

declare i32 @zng_gzclose_r(ptr noundef) local_unnamed_addr #4

declare i32 @zng_gzclose_w(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzbuffer(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 !func_sanitize !59 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 5 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13     ; 4 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @32, i64 %i.b) #12, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !13 ; 3 uses
  %i.g = and i64 %i.f, 7, !nosanitize !13
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !13     ; 2 uses
  br i1 %i.h, label %bb.f, label %bb.e, !prof !14, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @33, i64 %i.f) #12, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %.not = icmp eq i32 %i.i, 7247
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @34, i64 %i.b) #12, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  br i1 %i.h, label %bb.k, label %bb.j, !prof !14, !nosanitize !13

bb.j:                                             ; preds = %bb.i
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @35, i64 %i.f) #12, !nosanitize !13
  br label %bb.k, !nosanitize !13

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.j = load i32, ptr %i.e, align 8, !tbaa !23
  %.not12 = icmp eq i32 %i.j, 31153
  br i1 %.not12, label %bb.l, label %bb.s

bb.l:                                             ; preds = %bb.k, %bb.f
  br i1 %i.d, label %bb.n, label %bb.m, !prof !14, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @36, i64 %i.b) #12, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.l = load i32, ptr %i.k, align 8, !tbaa !29
  %.not13 = icmp eq i32 %i.l, 0
  br i1 %.not13, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.m = icmp sgt i32 %1, -1
  br i1 %i.m, label %2, label %.thread, !prof !14, !nosanitize !13

.thread:                                          ; preds = %bb.o
  %i.n = zext i32 %1 to i64, !nosanitize !13
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @38, i64 %i.n, i64 1) #14, !nosanitize !13
  br label %2, !nosanitize !13

2:                                                ; preds = %.thread, %bb.o
  %3 = icmp slt i32 %1, 0
  br i1 %3, label %bb.s, label %bb.p

bb.p:                                             ; preds = %2
  %spec.store.select = call i32 @llvm.umax.i32(i32 %1, i32 8)
  br i1 %i.d, label %bb.r, label %bb.q, !prof !14, !nosanitize !13

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @39, i64 %i.b) #12, !nosanitize !13
  br label %bb.r, !nosanitize !13

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %spec.store.select, ptr %i.o, align 4, !tbaa !22
  br label %bb.s

bb.s:                                             ; preds = %2, %bb.n, %bb.k, %bb.a, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -1, %bb.a ], [ -1, %bb.k ], [ -1, %bb.n ], [ -1, %2 ]
  ret i32 %.0
}

; Function Attrs: uwtable
declare void @__ubsan_handle_shift_out_of_bounds(ptr, i64, i64) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @zng_gzrewind(ptr noundef %0) local_unnamed_addr #1 !func_sanitize !36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 6 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13     ; 5 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !14, !nosanitize !13

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @40, i64 %i.b) #12, !nosanitize !13
  br label %bb.d, !nosanitize !13

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !13 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !13
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !13
  br i1 %i.h, label %bb.f, label %bb.e, !prof !14, !nosanitize !13

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @41, i64 %i.f) #12, !nosanitize !13
  br label %bb.f, !nosanitize !13

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !23
  %.not = icmp eq i32 %i.i, 7247
  br i1 %.not, label %bb.g, label %bb.s

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @42, i64 %i.b) #12, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !31
  %.not9 = icmp eq i32 %i.k, 0
  br i1 %.not9, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @43, i64 %i.b) #12, !nosanitize !13
  br label %bb.l, !nosanitize !13

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.l = load i32, ptr %i.j, align 4, !tbaa !31
  %.not10 = icmp eq i32 %i.l, -5
  br i1 %.not10, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l, %bb.i
  br i1 %i.d, label %bb.o, label %bb.n, !prof !14, !nosanitize !13

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @44, i64 %i.b) #12, !nosanitize !13
  br label %bb.o, !nosanitize !13

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.n = load i32, ptr %i.m, align 4, !tbaa !34
  br i1 %i.d, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @45, i64 %i.b) #12, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.p = load i64, ptr %i.o, align 8, !tbaa !35
  %i.q = call i64 @lseek64(i32 noundef %i.n, i64 noundef %i.p, i32 noundef 0) #12
  %i.r = icmp eq i64 %i.q, -1
  br i1 %i.r, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call fastcc void @gz_reset(ptr noundef nonnull %0)
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.f, %bb.l, %bb.a, %bb.r
  %.0 = phi i32 [ 0, %bb.r ], [ -1, %bb.a ], [ -1, %bb.f ], [ -1, %bb.l ], [ -1, %bb.q ]
  ret i32 %.0
}

; Function Attrs: nounwind
declare i64 @lseek64(i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define internal fastcc void @gz_reset(ptr noundef %0) unnamed_addr #1 !func_sanitize !12 {
bb.a:
  %i.a = icmp ne ptr %0, null, !nosanitize !13    ; 3 uses
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !13  ; 13 uses
  %i.c = and i64 %i.b, 7, !nosanitize !13
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !13     ; 9 uses
  %i.e = and i1 %i.a, %i.d, !nosanitize !13
  br i1 %i.e, label %bb.c, label %bb.b, !prof !14, !nosanitize !13

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @239, i64 %i.b) #12, !nosanitize !13
  br label %bb.c, !nosanitize !13

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = and i1 %i.a, %i.d, !nosanitize !13
  br i1 %i.f, label %bb.e, label %bb.d, !prof !14, !nosanitize !13

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @240, i64 %i.b) #12, !nosanitize !13
  br label %bb.e, !nosanitize !13

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.g = and i1 %i.a, %i.d, !nosanitize !13
  br i1 %i.g, label %bb.g, label %bb.f, !prof !14, !nosanitize !13

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @241, i64 %i.b) #12, !nosanitize !13
  br label %bb.g, !nosanitize !13

bb.g:                                             ; preds = %bb.f, %bb.e
  store i32 0, ptr %0, align 8, !tbaa !32
  br i1 %i.d, label %bb.i, label %bb.h, !prof !14, !nosanitize !13

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @242, i64 %i.b) #12, !nosanitize !13
  br label %bb.i, !nosanitize !13

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !23
  %i.j = icmp eq i32 %i.i, 7247
  br i1 %i.j, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %.critedge11, label %bb.k, !prof !14, !nosanitize !13

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @243, i64 %i.b) #12, !nosanitize !13
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.k, align 8, !tbaa !37
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @244, i64 %i.b) #12, !nosanitize !13
  br label %bb.l, !nosanitize !13

.critedge11:                                      ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.l, align 8, !tbaa !37
  br label %bb.l

bb.l:                                             ; preds = %.critedge11, %bb.k
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.m, align 4, !tbaa !38
  br i1 %i.d, label %bb.n, label %bb.m, !prof !14, !nosanitize !13

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @245, i64 %i.b) #12, !nosanitize !13
  br label %bb.n, !nosanitize !13

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.n, align 4, !tbaa !39
  br label %bb.r

bb.o:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.q, label %bb.p, !prof !14, !nosanitize !13

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @246, i64 %i.b) #12, !nosanitize !13
  br label %bb.q, !nosanitize !13

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i32 0, ptr %i.o, align 8, !tbaa !60
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.n
  br i1 %i.d, label %.critedge.critedge, label %bb.s, !prof !14, !nosanitize !13

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @247, i64 %i.b) #12, !nosanitize !13
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.p, align 8, !tbaa !40
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null)
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @248, i64 %i.b) #12, !nosanitize !13
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @249, i64 %i.b) #12, !nosanitize !13
  br label %.critedge, !nosanitize !13

.critedge.critedge:                               ; preds = %bb.r
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i32 0, ptr %i.q, align 8, !tbaa !40
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null)
  br label %.critedge
end_hunk_0
