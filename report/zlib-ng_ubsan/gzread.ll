Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/zlib-ng_ubsan/original/gzread?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
begin_hunk_0_@gz_fetch:bb.a

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @322, i64 %i.u) #10, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.ao = load ptr, ptr %i.t, align 8, !tbaa !38
  br i1 %i.c, label %bb.t, label %bb.s, !prof !13, !nosanitize !12

bb.s:                                             ; preds = %bb.r
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @323, i64 %i.a) #10, !nosanitize !12
  br label %bb.t, !nosanitize !12

bb.t:                                             ; preds = %bb.s, %bb.r
  br i1 %i.l, label %bb.v, label %bb.u, !prof !13, !nosanitize !12

bb.u:                                             ; preds = %bb.t
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @324, i64 %i.j) #10, !nosanitize !12
  br label %bb.v, !nosanitize !12

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ap = load i32, ptr %i.i, align 8, !tbaa !33  ; 3 uses
  %i.aq = icmp sgt i32 %i.ap, -1
  br i1 %i.aq, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  %i.ar = zext i32 %i.ap to i64, !nosanitize !12
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @325, i64 %i.ar, i64 1) #11, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.as = shl i32 %i.ap, 1
  br i1 %i.c, label %.critedge24, label %bb.y, !prof !13, !nosanitize !12

bb.y:                                             ; preds = %bb.x
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @326, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @327, i64 %i.a) #10, !nosanitize !12
  br label %.critedge24, !nosanitize !12

.critedge24:                                      ; preds = %bb.x, %bb.y
  %i.at = call fastcc i32 @gz_load(ptr noundef %0, ptr noundef %i.ao, i32 noundef %i.as, ptr noundef %0)
  %i.au = icmp eq i32 %i.at, -1
  br i1 %i.au, label %.critedge, label %bb.z

bb.z:                                             ; preds = %.critedge24
  br i1 %i.c, label %bb.ab, label %bb.aa, !prof !13, !nosanitize !12

bb.aa:                                            ; preds = %bb.z
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @328, i64 %i.a) #10, !nosanitize !12
  br label %bb.ab, !nosanitize !12

bb.ab:                                            ; preds = %bb.aa, %bb.z
  br i1 %i.w, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @329, i64 %i.u) #10, !nosanitize !12
  br label %bb.ad, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !38
  br i1 %i.c, label %.critedge26, label %bb.ae, !prof !13, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @330, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @331, i64 %i.a) #10, !nosanitize !12
  br label %.critedge26, !nosanitize !12

.critedge26:                                      ; preds = %bb.ad, %bb.ae
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !27
  br label %.critedge

bb.af:                                            ; preds = %bb.g
  br i1 %i.c, label %bb.ah, label %bb.ag, !prof !13, !nosanitize !12

bb.ag:                                            ; preds = %bb.af
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @332, i64 %i.a) #10, !nosanitize !12
  br label %bb.ah, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag, %bb.af
  br i1 %i.l, label %bb.aj, label %bb.ai, !prof !13, !nosanitize !12

bb.ai:                                            ; preds = %bb.ah
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @333, i64 %i.j) #10, !nosanitize !12
  br label %bb.aj, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.ax = load i32, ptr %i.i, align 8, !tbaa !33  ; 3 uses
  %i.ay = icmp sgt i32 %i.ax, -1
  br i1 %i.ay, label %bb.al, label %bb.ak, !prof !13, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj
  %i.az = zext i32 %i.ax to i64, !nosanitize !12
  call void @__ubsan_handle_shift_out_of_bounds(ptr nonnull @334, i64 %i.az, i64 1) #11, !nosanitize !12
  br label %bb.al, !nosanitize !12

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.ba = shl i32 %i.ax, 1
  br i1 %i.o, label %bb.an, label %bb.am, !prof !13, !nosanitize !12

bb.am:                                            ; preds = %bb.al
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @335, i64 %i.m) #10, !nosanitize !12
  br label %bb.an, !nosanitize !12

bb.an:                                            ; preds = %bb.am, %bb.al
  br i1 %i.s, label %bb.ap, label %bb.ao, !prof !13, !nosanitize !12

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @336, i64 %i.q) #10, !nosanitize !12
  br label %bb.ap, !nosanitize !12

bb.ap:                                            ; preds = %bb.ao, %bb.an
  store i32 %i.ba, ptr %i.p, align 8, !tbaa !43
  br i1 %i.c, label %bb.ar, label %bb.aq, !prof !13, !nosanitize !12

bb.aq:                                            ; preds = %bb.ap
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @337, i64 %i.a) #10, !nosanitize !12
  br label %bb.ar, !nosanitize !12

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  br i1 %i.w, label %bb.at, label %bb.as, !prof !13, !nosanitize !12

bb.as:                                            ; preds = %bb.ar
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @338, i64 %i.u) #10, !nosanitize !12
  br label %bb.at, !nosanitize !12

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.bb = load ptr, ptr %i.t, align 8, !tbaa !38
  br i1 %i.o, label %bb.av, label %bb.au, !prof !13, !nosanitize !12

bb.au:                                            ; preds = %bb.at
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @339, i64 %i.m) #10, !nosanitize !12
  br label %bb.av, !nosanitize !12

bb.av:                                            ; preds = %bb.au, %bb.at
  br i1 %i.aa, label %bb.ax, label %bb.aw, !prof !13, !nosanitize !12

bb.aw:                                            ; preds = %bb.av
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @340, i64 %i.y) #10, !nosanitize !12
  br label %bb.ax, !nosanitize !12

bb.ax:                                            ; preds = %bb.aw, %bb.av
  store ptr %i.bb, ptr %i.x, align 8, !tbaa !44
  %i.bc = call fastcc i32 @gz_decomp(ptr noundef %0)
  %i.bd = icmp eq i32 %i.bc, -1
  br i1 %i.bd, label %.critedge, label %bb.ay

bb.ay:                                            ; preds = %bb.m, %bb.ax
  br i1 %i.c, label %.critedge29, label %.critedge28, !prof !13, !nosanitize !12

.critedge28:                                      ; preds = %bb.ay
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @341, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @342, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @343, i64 %i.a) #10, !nosanitize !12
  br label %.critedge29, !nosanitize !12

.critedge29:                                      ; preds = %bb.ay, %.critedge28
  %i.be = load i32, ptr %0, align 8, !tbaa !26
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.az, label %.critedge

bb.az:                                            ; preds = %.critedge29
  br i1 %i.c, label %bb.bb, label %bb.ba, !prof !13, !nosanitize !12

bb.ba:                                            ; preds = %bb.az
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @344, i64 %i.a) #10, !nosanitize !12
  br label %bb.bb, !nosanitize !12

bb.bb:                                            ; preds = %bb.ba, %bb.az
  br i1 %i.ae, label %bb.bd, label %bb.bc, !prof !13, !nosanitize !12

bb.bc:                                            ; preds = %bb.bb
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @345, i64 %i.ac) #10, !nosanitize !12
  br label %bb.bd, !nosanitize !12

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.bg = load i32, ptr %i.ab, align 8, !tbaa !29
  %.not = icmp eq i32 %i.bg, 0
  br i1 %.not, label %.critedge2.backedge, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.o, label %bb.bg, label %bb.bf, !prof !13, !nosanitize !12

bb.bf:                                            ; preds = %bb.be
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @346, i64 %i.m) #10, !nosanitize !12
  br label %bb.bg, !nosanitize !12

bb.bg:                                            ; preds = %bb.bf, %bb.be
  br i1 %i.ai, label %bb.bi, label %bb.bh, !prof !13, !nosanitize !12

bb.bh:                                            ; preds = %bb.bg
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @347, i64 %i.ag) #10, !nosanitize !12
  br label %bb.bi, !nosanitize !12

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %i.bh = load i32, ptr %i.af, align 8, !tbaa !40
  %.not20 = icmp eq i32 %i.bh, 0
  br i1 %.not20, label %.critedge, label %.critedge2.backedge

.critedge2.backedge:                              ; preds = %bb.bi, %bb.bd
  br label %.critedge2

.critedge:                                        ; preds = %bb.bi, %.critedge29, %bb.g, %bb.ax, %bb.m, %bb.h, %.critedge24, %.critedge26
  %.0 = phi i32 [ 0, %.critedge26 ], [ -1, %.critedge24 ], [ 0, %bb.bi ], [ 0, %.critedge29 ], [ 0, %bb.m ], [ -1, %bb.g ], [ -1, %bb.h ], [ -1, %bb.ax ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: uwtable
declare void @__ubsan_handle_nonnull_arg(ptr) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @zng_gzdirect(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 7 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 4 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @144, i64 %i.b) #10, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @145, i64 %i.f) #10, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %i.j = icmp eq i32 %i.i, 7247
  br i1 %i.j, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @146, i64 %i.b) #10, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.l = load i32, ptr %i.k, align 4, !tbaa !32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %.critedge9, label %.critedge, !prof !13, !nosanitize !12

.critedge:                                        ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @147, i64 %i.b) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @148, i64 %i.b) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @149, i64 %i.b) #10, !nosanitize !12
  br label %.critedge9, !nosanitize !12

.critedge9:                                       ; preds = %bb.j, %.critedge
  %i.n = load i32, ptr %0, align 8, !tbaa !26
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.critedge9
  %i.p = call fastcc i32 @gz_look(ptr noundef %0) ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.critedge9, %bb.i, %bb.f
  br i1 %i.d, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @150, i64 %i.b) #10, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.r = load i32, ptr %i.q, align 8, !tbaa !42
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n
  %.0 = phi i32 [ %i.r, %bb.n ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -5, 1) i32 @zng_gzclose_r(ptr noundef %0) local_unnamed_addr #0 !func_sanitize !36 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 7 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 5 uses
  br i1 %i.d, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %bb.b
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @151, i64 %i.b) #10, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = ptrtoint ptr %i.e to i64, !nosanitize !12 ; 2 uses
  %i.g = and i64 %i.f, 7, !nosanitize !12
  %i.h = icmp eq i64 %i.g, 0, !nosanitize !12
  br i1 %i.h, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @152, i64 %i.f) #10, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = load i32, ptr %i.e, align 8, !tbaa !21
  %.not = icmp eq i32 %i.i, 7247
  br i1 %.not, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  br i1 %i.d, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @153, i64 %i.b) #10, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i32, ptr %i.j, align 8, !tbaa !33
  %.not14 = icmp eq i32 %i.k, 0
  br i1 %.not14, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.d, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @154, i64 %i.b) #10, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.m = call i32 @zng_inflateEnd(ptr noundef nonnull %i.l) #10 ; 0 uses
  call void @gz_buffer_free(ptr noundef nonnull %0) #10
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  br i1 %i.d, label %bb.o, label %bb.n, !prof !13, !nosanitize !12

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @155, i64 %i.b) #10, !nosanitize !12
  br label %bb.o, !nosanitize !12

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.o = load i32, ptr %i.n, align 4, !tbaa !22
  %i.p = icmp eq i32 %i.o, -5
  %i.q = select i1 %i.p, i32 -5, i32 0
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef 0, ptr noundef null) #10
  br i1 %i.d, label %.critedge, label %bb.p, !prof !13, !nosanitize !12

bb.p:                                             ; preds = %bb.o
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @156, i64 %i.b) #10, !nosanitize !12
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !59
  call void @free(ptr noundef %i.s) #10
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @157, i64 %i.b) #10, !nosanitize !12
  br label %bb.q, !nosanitize !12

.critedge:                                        ; preds = %bb.o
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !59
  call void @free(ptr noundef %i.u) #10
  br label %bb.q

bb.q:                                             ; preds = %.critedge, %bb.p
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.w = load i32, ptr %i.v, align 4, !tbaa !45
  %i.x = call i32 @close(i32 noundef %i.w) #10
  call void @free(ptr noundef nonnull %0) #10
  %.not15 = icmp eq i32 %i.x, 0
  %i.y = select i1 %.not15, i32 %i.q, i32 -1
  br label %bb.r

bb.r:                                             ; preds = %bb.f, %bb.a, %bb.q
  %.0 = phi i32 [ %i.y, %bb.q ], [ -2, %bb.a ], [ -2, %bb.f ]
  ret i32 %.0
}

declare i32 @zng_inflateEnd(ptr noundef) local_unnamed_addr #3

declare hidden void @gz_buffer_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

declare i32 @close(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_load(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 !func_sanitize !61 {
bb.a:
  %i.a = ptrtoint ptr %3 to i64, !nosanitize !12  ; 6 uses
  %i.b = and i64 %i.a, 3, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 5 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @207, i64 %i.a) #10, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 0, ptr %3, align 4, !tbaa !25
  %i.d = ptrtoint ptr %0 to i64, !nosanitize !12  ; 3 uses
  %i.e = and i64 %i.d, 7, !nosanitize !12
  %i.f = icmp eq i64 %i.e, 0, !nosanitize !12     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64                 ; 2 uses
  %i.i = and i64 %i.h, 3
  %i.j = icmp eq i64 %i.i, 0
  %i.k = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.l = icmp ne ptr %1, null
  %i.m = zext i32 %2 to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.w, %bb.c
  br i1 %i.f, label %bb.f, label %bb.e, !prof !13, !nosanitize !12

bb.e:                                             ; preds = %bb.d
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @208, i64 %i.d) #10, !nosanitize !12
  br label %bb.f, !nosanitize !12

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %i.j, label %bb.h, label %bb.g, !prof !13, !nosanitize !12

bb.g:                                             ; preds = %bb.f
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @209, i64 %i.h) #10, !nosanitize !12
  br label %bb.h, !nosanitize !12

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.n = load i32, ptr %i.g, align 4, !tbaa !45
  br i1 %i.c, label %bb.j, label %bb.i, !prof !13, !nosanitize !12

bb.i:                                             ; preds = %bb.h
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @210, i64 %i.a) #10, !nosanitize !12
  br label %bb.j, !nosanitize !12

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.o = load i32, ptr %3, align 4, !tbaa !25
  %i.p = zext i32 %i.o to i64                     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.r = add i64 %i.p, %i.k, !nosanitize !12      ; 3 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = xor i1 %i.l, %i.s
  %i.u = icmp uge i64 %i.r, %i.k, !nosanitize !12
  %i.v = and i1 %i.u, %i.t, !nosanitize !12
  br i1 %i.v, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @211, i64 %i.k, i64 %i.r) #10, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  br i1 %i.c, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @212, i64 %i.a) #10, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = load i32, ptr %3, align 4, !tbaa !25     ; 2 uses
  %i.x = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %2, i32 %i.w), !nosanitize !12 ; 2 uses
  %i.y = extractvalue { i32, i1 } %i.x, 0, !nosanitize !12
  %i.z = extractvalue { i32, i1 } %i.x, 1, !nosanitize !12
  br i1 %i.z, label %bb.o, label %bb.p, !prof !28, !nosanitize !12

bb.o:                                             ; preds = %bb.n
  %i.aa = zext i32 %i.w to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @213, i64 %i.m, i64 %i.aa) #11, !nosanitize !12
  br label %bb.p, !nosanitize !12

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ab = zext i32 %i.y to i64
  %i.ac = call i64 @read(i32 noundef %i.n, ptr noundef %i.q, i64 noundef %i.ab) #10 ; 4 uses
  %i.ad = icmp slt i64 %i.ac, 1
  br i1 %i.ad, label %bb.x, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ae = trunc i64 %i.ac to i32
  br i1 %i.c, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @214, i64 %i.a) #10, !nosanitize !12
  br label %bb.s, !nosanitize !12

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = load i32, ptr %3, align 4, !tbaa !25    ; 2 uses
  %i.ag = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.af, i32 %i.ae), !nosanitize !12 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 0, !nosanitize !12 ; 2 uses
  %i.ai = extractvalue { i32, i1 } %i.ag, 1, !nosanitize !12
  br i1 %i.ai, label %bb.t, label %bb.u, !prof !28, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  %i.aj = zext i32 %i.af to i64, !nosanitize !12
  %i.ak = and i64 %i.ac, 4294967295
  call void @__ubsan_handle_add_overflow(ptr nonnull @215, i64 %i.aj, i64 %i.ak) #11, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %bb.s
  store i32 %i.ah, ptr %3, align 4, !tbaa !25
  br i1 %i.c, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @216, i64 %i.a) #10, !nosanitize !12
  %.pre = load i32, ptr %3, align 4, !tbaa !25
  br label %bb.w, !nosanitize !12

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.al = phi i32 [ %.pre, %bb.v ], [ %i.ah, %bb.u ]
  %i.am = icmp ult i32 %i.al, %2
  br i1 %i.am, label %bb.d, label %.loopexit, !llvm.loop !60

bb.x:                                             ; preds = %bb.p
  %i.an = icmp slt i64 %i.ac, 0
  br i1 %i.an, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.ao = call ptr @__errno_location() #13        ; 3 uses
  %i.ap = icmp ne ptr %i.ao, null, !nosanitize !12
  %i.aq = ptrtoint ptr %i.ao to i64, !nosanitize !12 ; 2 uses
  %i.ar = and i64 %i.aq, 3, !nosanitize !12
  %i.as = icmp eq i64 %i.ar, 0, !nosanitize !12
  %i.at = and i1 %i.ap, %i.as, !nosanitize !12
  br i1 %i.at, label %bb.aa, label %bb.z, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @217, i64 %i.aq) #10, !nosanitize !12
  br label %bb.aa, !nosanitize !12

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !25
  %i.av = call ptr @strerror(i32 noundef %i.au) #10
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -1, ptr noundef %i.av) #10
  br label %.loopexit

bb.ab:                                            ; preds = %bb.x
  br i1 %i.f, label %bb.ad, label %bb.ac, !prof !13, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @218, i64 %i.d) #10, !nosanitize !12
  br label %bb.ad, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ax = ptrtoint ptr %i.aw to i64, !nosanitize !12 ; 2 uses
  %i.ay = and i64 %i.ax, 7, !nosanitize !12
  %i.az = icmp eq i64 %i.ay, 0, !nosanitize !12
  br i1 %i.az, label %bb.af, label %bb.ae, !prof !13, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @219, i64 %i.ax) #10, !nosanitize !12
  br label %bb.af, !nosanitize !12

bb.af:                                            ; preds = %bb.ae, %bb.ad
  store i32 1, ptr %i.aw, align 8, !tbaa !29
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %bb.af, %bb.aa
  %.0 = phi i32 [ -1, %bb.aa ], [ 0, %bb.af ], [ 0, %bb.w ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_decomp(ptr noundef nonnull %0) unnamed_addr #0 !func_sanitize !39 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64, !nosanitize !12  ; 11 uses
  %i.b = and i64 %i.a, 7, !nosanitize !12
  %i.c = icmp eq i64 %i.b, 0, !nosanitize !12     ; 5 uses
  br i1 %i.c, label %bb.c, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @220, i64 %i.a) #10, !nosanitize !12
  br label %bb.c, !nosanitize !12

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64, !nosanitize !12 ; 9 uses
  %i.f = and i64 %i.e, 7, !nosanitize !12
  %i.g = icmp eq i64 %i.f, 0, !nosanitize !12     ; 6 uses
  br i1 %i.g, label %bb.e, label %bb.d, !prof !13, !nosanitize !12

bb.d:                                             ; preds = %bb.c
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @221, i64 %i.e) #10, !nosanitize !12
  br label %bb.e, !nosanitize !12

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.i = ptrtoint ptr %i.h to i64, !nosanitize !12 ; 5 uses
  %i.j = and i64 %i.i, 7, !nosanitize !12
  %i.k = icmp eq i64 %i.j, 0, !nosanitize !12     ; 4 uses
  br i1 %i.k, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @222, i64 %i.i) #10, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.l = load i32, ptr %i.h, align 8, !tbaa !43   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  br i1 %i.g, label %.split.us, label %.split.split.us, !prof !13, !nosanitize !12

.split.us:                                        ; preds = %bb.g, %bb.m
  %.0.us = phi i32 [ %i.t, %bb.m ], [ 0, %bb.g ]
  %i.n = load i32, ptr %i.m, align 8, !tbaa !40
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us
  %i.p = call fastcc i32 @gz_avail(ptr noundef %0)
  %i.q = icmp eq i32 %i.p, -1
  br i1 %i.q, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %.split.us, %bb.h
  %i.r = load i32, ptr %i.m, align 8, !tbaa !40
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %.split39.us, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = call i32 @zng_inflate(ptr noundef nonnull %i.d, i32 noundef 0) #10 ; 4 uses
  switch i32 %i.t, label %bb.k [
    i32 -2, label %.split41.us
    i32 2, label %.split41.us
    i32 -4, label %.split43.us
    i32 -3, label %.split45.us
  ]

bb.k:                                             ; preds = %bb.j
  br i1 %i.k, label %bb.m, label %bb.l, !prof !13, !nosanitize !12

bb.l:                                             ; preds = %bb.k
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @228, i64 %i.i) #10, !nosanitize !12
  br label %bb.m, !nosanitize !12

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.u = load i32, ptr %i.h, align 8, !tbaa !43
  %i.v = icmp ne i32 %i.u, 0
  %i.w = icmp ne i32 %i.t, 1
  %i.x = and i1 %i.w, %i.v
  br i1 %i.x, label %.split.us, label %.loopexit29, !llvm.loop !62

.split.split.us:                                  ; preds = %bb.g, %bb.s
  %.0.us47 = phi i32 [ %i.ae, %bb.s ], [ 0, %bb.g ]
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @223, i64 %i.e) #10, !nosanitize !12
  %i.y = load i32, ptr %i.m, align 8, !tbaa !40
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.split.split.us
  %i.aa = call fastcc i32 @gz_avail(ptr noundef %0)
  %i.ab = icmp eq i32 %i.aa, -1
  br i1 %i.ab, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n, %.split.split.us
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @224, i64 %i.e) #10, !nosanitize !12
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !40
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %.split39.us, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ae = call i32 @zng_inflate(ptr noundef nonnull %i.d, i32 noundef 0) #10 ; 4 uses
  switch i32 %i.ae, label %bb.q [
    i32 -2, label %.split41.us
    i32 2, label %.split41.us
    i32 -4, label %.split43.us
    i32 -3, label %.split45.us
  ]

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @227, i64 %i.e) #10, !nosanitize !12
  br i1 %i.k, label %bb.s, label %bb.r, !prof !13, !nosanitize !12

bb.r:                                             ; preds = %bb.q
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @228, i64 %i.i) #10, !nosanitize !12
  br label %bb.s, !nosanitize !12

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.af = load i32, ptr %i.h, align 8, !tbaa !43
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = icmp ne i32 %i.ae, 1
  %i.ai = and i1 %i.ah, %i.ag
  br i1 %i.ai, label %.split.split.us, label %.loopexit29, !llvm.loop !62

.split39.us:                                      ; preds = %bb.o, %bb.i
  %.us-phi = phi i32 [ %.0.us, %bb.i ], [ %.0.us47, %bb.o ]
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -5, ptr noundef nonnull @.str.4) #10
  br label %.loopexit29

.split41.us:                                      ; preds = %bb.p, %bb.p, %bb.j, %bb.j
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -2, ptr noundef nonnull @.str.5) #10
  br label %.loopexit

.split43.us:                                      ; preds = %bb.p, %bb.j
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -4, ptr noundef nonnull @.str.6) #10
  br label %.loopexit

.split45.us:                                      ; preds = %bb.p, %bb.j
  br i1 %i.g, label %bb.u, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %.split45.us
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @225, i64 %i.e) #10, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %.split45.us
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !63
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  br i1 %i.g, label %bb.x, label %bb.w, !prof !13, !nosanitize !12

bb.w:                                             ; preds = %bb.v
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @226, i64 %i.e) #10, !nosanitize !12
  br label %bb.x, !nosanitize !12

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !63
  br label %bb.y

bb.y:                                             ; preds = %bb.u, %bb.x
  %i.an = phi ptr [ %i.am, %bb.x ], [ @.str.7, %bb.u ]
  call void @zng_gz_error(ptr noundef nonnull %0, i32 noundef -3, ptr noundef %i.an) #10
  br label %.loopexit

.loopexit29:                                      ; preds = %bb.s, %bb.m, %.split39.us
  %.1 = phi i32 [ %.us-phi, %.split39.us ], [ %i.t, %bb.m ], [ %i.ae, %bb.s ]
  br i1 %i.g, label %bb.aa, label %bb.z, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %.loopexit29
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @229, i64 %i.e) #10, !nosanitize !12
  br label %bb.aa, !nosanitize !12

bb.aa:                                            ; preds = %bb.z, %.loopexit29
  br i1 %i.k, label %bb.ac, label %bb.ab, !prof !13, !nosanitize !12

bb.ab:                                            ; preds = %bb.aa
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @230, i64 %i.i) #10, !nosanitize !12
  br label %bb.ac, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ao = load i32, ptr %i.h, align 8, !tbaa !43  ; 2 uses
  %i.ap = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.l, i32 %i.ao), !nosanitize !12 ; 2 uses
  %i.aq = extractvalue { i32, i1 } %i.ap, 0, !nosanitize !12
  %i.ar = extractvalue { i32, i1 } %i.ap, 1, !nosanitize !12
  br i1 %i.ar, label %bb.ad, label %bb.ae, !prof !28, !nosanitize !12

bb.ad:                                            ; preds = %bb.ac
  %i.as = zext i32 %i.l to i64, !nosanitize !12
  %i.at = zext i32 %i.ao to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @231, i64 %i.as, i64 %i.at) #11, !nosanitize !12
  br label %bb.ae, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  br i1 %i.c, label %.critedge211, label %.critedge, !prof !13, !nosanitize !12

.critedge:                                        ; preds = %bb.ae
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @232, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @233, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @234, i64 %i.a) #10, !nosanitize !12
  br label %.critedge211, !nosanitize !12

.critedge211:                                     ; preds = %bb.ae, %.critedge
  store i32 %i.aq, ptr %0, align 8, !tbaa !26
  br i1 %i.g, label %bb.ag, label %bb.af, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %.critedge211
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @235, i64 %i.e) #10, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %.critedge211
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !44 ; 3 uses
  br i1 %i.c, label %.critedge214, label %.critedge213, !prof !13, !nosanitize !12

.critedge213:                                     ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @236, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @237, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @238, i64 %i.a) #10, !nosanitize !12
  br label %.critedge214, !nosanitize !12

.critedge214:                                     ; preds = %bb.ag, %.critedge213
  %i.aw = load i32, ptr %0, align 8, !tbaa !26
  %i.ax = zext i32 %i.aw to i64                   ; 4 uses
  %i.ay = sub nsw i64 0, %i.ax
  %i.az = getelementptr inbounds i8, ptr %i.av, i64 %i.ay
  %i.ba = ptrtoint ptr %i.av to i64, !nosanitize !12 ; 4 uses
  %i.bb = icmp ne ptr %i.av, null, !nosanitize !12
  %i.bc = icmp eq i64 %i.ba, %i.ax
  %i.bd = xor i1 %i.bb, %i.bc
  %i.be = icmp ule i64 %i.ax, %i.ba
  %i.bf = and i1 %i.be, %i.bd, !nosanitize !12
  br i1 %i.bf, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %.critedge214
  %i.bg = sub i64 %i.ba, %i.ax
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @239, i64 %i.ba, i64 %i.bg) #10, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %bb.ah, %.critedge214
  br i1 %i.c, label %.critedge216, label %bb.aj, !prof !13, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @240, i64 %i.a) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @241, i64 %i.a) #10, !nosanitize !12
  br label %.critedge216, !nosanitize !12

.critedge216:                                     ; preds = %bb.ai, %bb.aj
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.az, ptr %i.bh, align 8, !tbaa !27
  %i.bi = icmp eq i32 %.1, 1
  br i1 %i.bi, label %bb.ak, label %.loopexit

bb.ak:                                            ; preds = %.critedge216
  br i1 %i.c, label %bb.am, label %bb.al, !prof !13, !nosanitize !12

bb.al:                                            ; preds = %bb.ak
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @242, i64 %i.a) #10, !nosanitize !12
  br label %bb.am, !nosanitize !12

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 76
  store i32 0, ptr %i.bj, align 4, !tbaa !32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %bb.h, %.critedge216, %bb.am, %bb.y, %.split43.us, %.split41.us
  %.027 = phi i32 [ -1, %bb.y ], [ 0, %.critedge216 ], [ -1, %.split41.us ], [ -1, %.split43.us ], [ 0, %bb.am ], [ -1, %bb.h ], [ -1, %bb.n ]
  ret i32 %.027
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @gz_avail(ptr noundef nonnull %0) unnamed_addr #0 !func_sanitize !39 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !12  ; 9 uses
  %i.c = and i64 %i.b, 7, !nosanitize !12
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !12     ; 7 uses
  br i1 %i.d, label %.thread, label %bb.b, !prof !13, !nosanitize !12

bb.b:                                             ; preds = %bb.a
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @243, i64 %i.b) #10, !nosanitize !12
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @244, i64 %i.b) #10, !nosanitize !12
  br label %.thread, !nosanitize !12

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 3 uses
  %i.g = ptrtoint ptr %i.f to i64, !nosanitize !12 ; 3 uses
  %i.h = and i64 %i.g, 3, !nosanitize !12
  %i.i = icmp eq i64 %i.h, 0, !nosanitize !12     ; 2 uses
  br i1 %i.i, label %bb.d, label %bb.c, !prof !13, !nosanitize !12

bb.c:                                             ; preds = %.thread
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @245, i64 %i.g) #10, !nosanitize !12
  br label %bb.d, !nosanitize !12

bb.d:                                             ; preds = %bb.c, %.thread
  %i.j = load i32, ptr %i.f, align 4, !tbaa !22
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  br i1 %i.d, label %bb.g, label %bb.f, !prof !13, !nosanitize !12

bb.f:                                             ; preds = %bb.e
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @246, i64 %i.b) #10, !nosanitize !12
  br label %bb.g, !nosanitize !12

bb.g:                                             ; preds = %bb.f, %bb.e
  br i1 %i.i, label %bb.i, label %bb.h, !prof !13, !nosanitize !12

bb.h:                                             ; preds = %bb.g
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @247, i64 %i.g) #10, !nosanitize !12
  br label %bb.i, !nosanitize !12

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.k = load i32, ptr %i.f, align 4, !tbaa !22
  %.not23 = icmp eq i32 %i.k, -5
  br i1 %.not23, label %bb.j, label %bb.aq

bb.j:                                             ; preds = %bb.i, %bb.d
  br i1 %i.d, label %bb.l, label %bb.k, !prof !13, !nosanitize !12

bb.k:                                             ; preds = %bb.j
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @248, i64 %i.b) #10, !nosanitize !12
  br label %bb.l, !nosanitize !12

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.m = ptrtoint ptr %i.l to i64, !nosanitize !12 ; 2 uses
  %i.n = and i64 %i.m, 7, !nosanitize !12
  %i.o = icmp eq i64 %i.n, 0, !nosanitize !12
  br i1 %i.o, label %bb.n, label %bb.m, !prof !13, !nosanitize !12

bb.m:                                             ; preds = %bb.l
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @249, i64 %i.m) #10, !nosanitize !12
  br label %bb.n, !nosanitize !12

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.p = load i32, ptr %i.l, align 8, !tbaa !29
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.o, label %bb.aq

bb.o:                                             ; preds = %bb.n
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 6 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !40
  %.not24 = icmp eq i32 %i.s, 0
  br i1 %.not24, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %i.d, label %bb.r, label %bb.q, !prof !13, !nosanitize !12

bb.q:                                             ; preds = %bb.p
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @250, i64 %i.b) #10, !nosanitize !12
  br label %bb.r, !nosanitize !12

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !65
  %i.v = load ptr, ptr %i.e, align 8, !tbaa !41
  %i.w = load i32, ptr %i.r, align 8, !tbaa !40
  br label %bb.s

bb.s:                                             ; preds = %bb.ac, %bb.r
  %.020 = phi ptr [ %i.u, %bb.r ], [ %i.ae, %bb.ac ] ; 4 uses
  %.019 = phi ptr [ %i.v, %bb.r ], [ %i.x, %bb.ac ] ; 4 uses
  %.0 = phi i32 [ %i.w, %bb.r ], [ %i.al, %bb.ac ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.019, i64 1
  %i.y = ptrtoint ptr %.019 to i64, !nosanitize !12 ; 3 uses
  %i.z = add i64 %i.y, 1, !nosanitize !12         ; 2 uses
  %i.aa = icmp ne ptr %.019, null, !nosanitize !12 ; 2 uses
  %i.ab = icmp ne i64 %i.z, 0
  %i.ac = and i1 %i.aa, %i.ab, !nosanitize !12
  br i1 %i.ac, label %bb.u, label %bb.t, !prof !13, !nosanitize !12

bb.t:                                             ; preds = %bb.s
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @251, i64 %i.y, i64 %i.z) #10, !nosanitize !12
  br label %bb.u, !nosanitize !12

bb.u:                                             ; preds = %bb.t, %bb.s
  br i1 %i.aa, label %bb.w, label %bb.v, !prof !13, !nosanitize !12

bb.v:                                             ; preds = %bb.u
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @253, i64 %i.y) #10, !nosanitize !12
  br label %bb.w, !nosanitize !12

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ad = load i8, ptr %.019, align 1, !tbaa !37
  %i.ae = getelementptr inbounds nuw i8, ptr %.020, i64 1
  %i.af = ptrtoint ptr %.020 to i64, !nosanitize !12 ; 3 uses
  %i.ag = add i64 %i.af, 1, !nosanitize !12       ; 2 uses
  %i.ah = icmp ne ptr %.020, null, !nosanitize !12 ; 2 uses
  %i.ai = icmp ne i64 %i.ag, 0
  %i.aj = and i1 %i.ah, %i.ai, !nosanitize !12
  br i1 %i.aj, label %bb.y, label %bb.x, !prof !13, !nosanitize !12

bb.x:                                             ; preds = %bb.w
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @254, i64 %i.af, i64 %i.ag) #10, !nosanitize !12
  br label %bb.y, !nosanitize !12

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %i.ah, label %bb.aa, label %bb.z, !prof !13, !nosanitize !12

bb.z:                                             ; preds = %bb.y
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @255, i64 %i.af) #10, !nosanitize !12
  br label %bb.aa, !nosanitize !12

bb.aa:                                            ; preds = %bb.z, %bb.y
  store i8 %i.ad, ptr %.020, align 1, !tbaa !37
  %i.ak = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %.0, i32 1), !nosanitize !12 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 0, !nosanitize !12 ; 2 uses
  %i.am = extractvalue { i32, i1 } %i.ak, 1, !nosanitize !12
  br i1 %i.am, label %bb.ab, label %bb.ac, !prof !28, !nosanitize !12

bb.ab:                                            ; preds = %bb.aa
  %i.an = zext nneg i32 %.0 to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @256, i64 %i.an, i64 1) #11, !nosanitize !12
  br label %bb.ac, !nosanitize !12

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.not25 = icmp eq i32 %i.al, 0
  br i1 %.not25, label %.loopexit, label %bb.s, !llvm.loop !64

.loopexit:                                        ; preds = %bb.ac, %bb.o
  br i1 %i.d, label %bb.ae, label %bb.ad, !prof !13, !nosanitize !12

bb.ad:                                            ; preds = %.loopexit
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @257, i64 %i.b) #10, !nosanitize !12
  br label %bb.ae, !nosanitize !12

bb.ae:                                            ; preds = %bb.ad, %.loopexit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !65 ; 3 uses
  %i.aq = load i32, ptr %i.r, align 8, !tbaa !40
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ar
  %i.at = ptrtoint ptr %i.ap to i64, !nosanitize !12 ; 3 uses
  %i.au = add i64 %i.ar, %i.at, !nosanitize !12   ; 3 uses
  %i.av = icmp ne ptr %i.ap, null, !nosanitize !12
  %i.aw = icmp eq i64 %i.au, 0
  %i.ax = xor i1 %i.av, %i.aw
  %i.ay = icmp uge i64 %i.au, %i.at, !nosanitize !12
  %i.az = and i1 %i.ay, %i.ax, !nosanitize !12
  br i1 %i.az, label %bb.ag, label %bb.af, !prof !13, !nosanitize !12

bb.af:                                            ; preds = %bb.ae
  call void @__ubsan_handle_pointer_overflow(ptr nonnull @258, i64 %i.at, i64 %i.au) #10, !nosanitize !12
  br label %bb.ag, !nosanitize !12

bb.ag:                                            ; preds = %bb.af, %bb.ae
  br i1 %i.d, label %bb.ai, label %bb.ah, !prof !13, !nosanitize !12

bb.ah:                                            ; preds = %bb.ag
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @259, i64 %i.b) #10, !nosanitize !12
  br label %bb.ai, !nosanitize !12

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !33 ; 2 uses
  %i.bc = load i32, ptr %i.r, align 8, !tbaa !40  ; 2 uses
  %i.bd = call { i32, i1 } @llvm.usub.with.overflow.i32(i32 %i.bb, i32 %i.bc), !nosanitize !12 ; 2 uses
  %i.be = extractvalue { i32, i1 } %i.bd, 0, !nosanitize !12
  %i.bf = extractvalue { i32, i1 } %i.bd, 1, !nosanitize !12
  br i1 %i.bf, label %bb.aj, label %bb.ak, !prof !28, !nosanitize !12

bb.aj:                                            ; preds = %bb.ai
  %i.bg = zext i32 %i.bb to i64, !nosanitize !12
  %i.bh = zext i32 %i.bc to i64, !nosanitize !12
  call void @__ubsan_handle_sub_overflow(ptr nonnull @260, i64 %i.bg, i64 %i.bh) #11, !nosanitize !12
  br label %bb.ak, !nosanitize !12

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bi = call fastcc i32 @gz_load(ptr noundef %0, ptr noundef %i.as, i32 noundef %i.be, ptr noundef %i.a)
  %i.bj = icmp eq i32 %i.bi, -1
  br i1 %i.bj, label %bb.aq, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bk = load i32, ptr %i.a, align 4, !tbaa !25  ; 2 uses
  %i.bl = load i32, ptr %i.r, align 8, !tbaa !40  ; 2 uses
  %i.bm = call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %i.bl, i32 %i.bk), !nosanitize !12 ; 2 uses
  %i.bn = extractvalue { i32, i1 } %i.bm, 0, !nosanitize !12
  %i.bo = extractvalue { i32, i1 } %i.bm, 1, !nosanitize !12
  br i1 %i.bo, label %bb.am, label %bb.an, !prof !28, !nosanitize !12

bb.am:                                            ; preds = %bb.al
  %i.bp = zext i32 %i.bl to i64, !nosanitize !12
  %i.bq = zext i32 %i.bk to i64, !nosanitize !12
  call void @__ubsan_handle_add_overflow(ptr nonnull @261, i64 %i.bp, i64 %i.bq) #11, !nosanitize !12
  br label %bb.an, !nosanitize !12

bb.an:                                            ; preds = %bb.am, %bb.al
  store i32 %i.bn, ptr %i.r, align 8, !tbaa !40
  br i1 %i.d, label %bb.ap, label %bb.ao, !prof !13, !nosanitize !12

bb.ao:                                            ; preds = %bb.an
  call void @__ubsan_handle_type_mismatch_v1(ptr nonnull @262, i64 %i.b) #10, !nosanitize !12
  br label %bb.ap, !nosanitize !12

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %i.br = load ptr, ptr %i.ao, align 8, !tbaa !65
  store ptr %i.br, ptr %i.e, align 8, !tbaa !41
  br label %bb.aq

bb.aq:                                            ; preds = %bb.n, %bb.ap, %bb.ak, %bb.i
  %.021 = phi i32 [ -1, %bb.ak ], [ -1, %bb.i ], [ 0, %bb.ap ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 %.021
}

declare i32 @zng_inflate(ptr noundef, i32 noundef) local_unnamed_addr #3

declare i32 @zng_inflateReset(ptr noundef) local_unnamed_addr #3

declare hidden i32 @gz_buffer_alloc(ptr noundef) local_unnamed_addr #3

declare i32 @zng_inflateInit2(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #4

attributes #0 = { nounwind uwtable "disable-tail-calls"="true" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { uwtable }
attributes #3 = { "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "disable-tail-calls"="true" "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nomerge nounwind }
attributes #12 = { nounwind willreturn memory(read) }
attributes #13 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{}
!13 = !{!"branch_weights", i32 1048575, i32 1}
!14 = !{!"any pointer", !8, i64 0}
!15 = !{!"p1 omnipotent char", !14, i64 0}
!16 = !{!"long", !8, i64 0}
!17 = !{!"gzFile_s", !9, i64 0, !15, i64 8, !16, i64 16}
!18 = !{!"p1 _ZTS14internal_state", !14, i64 0}
!19 = !{!"zng_stream_s", !15, i64 0, !9, i64 8, !16, i64 16, !15, i64 24, !9, i64 32, !16, i64 40, !15, i64 48, !18, i64 56, !14, i64 64, !14, i64 72, !14, i64 80, !9, i64 88, !9, i64 92, !16, i64 96}
!20 = !{!"", !17, i64 0, !9, i64 24, !9, i64 28, !15, i64 32, !9, i64 40, !9, i64 44, !15, i64 48, !15, i64 56, !15, i64 64, !9, i64 72, !9, i64 76, !16, i64 80, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !16, i64 112, !9, i64 120, !9, i64 124, !15, i64 128, !19, i64 136}
!21 = !{!20, !9, i64 24}
!22 = !{!20, !9, i64 124}
!23 = !{!20, !9, i64 120}
!24 = !{!20, !16, i64 112}
!25 = !{!9, !9, i64 0}
!26 = !{!20, !9, i64 0}
!27 = !{!20, !15, i64 8}
!28 = !{!"branch_weights", i32 1, i32 1048575}
!29 = !{!20, !9, i64 88}
!30 = !{!20, !9, i64 144}
!31 = !{!20, !9, i64 92}
!32 = !{!20, !9, i64 76}
!33 = !{!20, !9, i64 40}
!34 = !{!20, !16, i64 16}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{i32 -1056584962, i32 1151599639}
!37 = !{!8, !8, i64 0}
!38 = !{!20, !15, i64 56}
!39 = !{i32 -1056584962, i32 292926664}
!40 = !{!19, !9, i64 8}
!41 = !{!19, !15, i64 0}
!42 = !{!20, !9, i64 72}
!43 = !{!19, !9, i64 32}
!44 = !{!19, !15, i64 24}
!45 = !{!20, !9, i64 28}
!46 = !{i32 -1056584962, i32 463715495}
!47 = distinct !{!47, !35}
!48 = !{i32 -1056584962, i32 2097611800}
!49 = !{!20, !9, i64 168}
!50 = !{!20, !15, i64 160}
!51 = !{i32 -1056584962, i32 1663153469}
!52 = distinct !{!52, !35}
!53 = !{i32 -1056584962, i32 1354619500}
!54 = !{!"branch_weights", i32 2147481600, i32 2048}
!55 = distinct !{!55, !35}
!56 = !{i32 -1056584962, i32 2140770246}
!57 = distinct !{!57, !35}
!58 = !{i32 -1056584962, i32 -1778573453}
!59 = !{!20, !15, i64 32}
!60 = distinct !{!60, !35}
!61 = !{i32 -1056584962, i32 1906499746}
!62 = distinct !{!62, !35}
!63 = !{!19, !15, i64 48}
!64 = distinct !{!64, !35}
!65 = !{!20, !15, i64 48}
end_hunk_0
