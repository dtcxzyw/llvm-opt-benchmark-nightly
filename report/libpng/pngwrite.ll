Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libpng/original/pngwrite?download=true
inline.NumInlined: 18
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@png_image_write_to_memory:bb.a
  store i32 %5, ptr %i.j, align 8, !tbaa !100
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %6, ptr %i.k, align 8, !tbaa !101
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i32 %3, ptr %i.l, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 64
  store ptr %1, ptr %i.m, align 8, !tbaa !103
  %i.n = load i64, ptr %2, align 8, !tbaa !72     ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 72
  store i64 %i.n, ptr %i.o, align 8, !tbaa !104
  %i.p = getelementptr inbounds nuw i8, ptr %7, i64 80 ; 2 uses
  store i64 0, ptr %i.p, align 8, !tbaa !105
  %i.q = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_memory, ptr noundef nonnull %7) #16 ; 2 uses
  call void @png_image_free(ptr noundef nonnull %0) #16
  %.not33 = icmp eq i32 %i.q, 0
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load i64, ptr %i.p, align 8              ; 2 uses
  %i.s = icmp ule i64 %i.r, %i.n
  %i.t = select i1 %i.f, i1 true, i1 %i.s
  %.0 = select i1 %i.t, i32 %i.q, i32 0
  store i64 %i.r, ptr %2, align 8, !tbaa !72
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1 = phi i32 [ %.0, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #16
  br label %.critedge

bb.j:                                             ; preds = %bb.c
  %i.u = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.14) #16
  br label %.critedge

bb.k:                                             ; preds = %bb.b
  %i.v = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.15) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.f, %bb.k, %bb.j, %bb.i
  %.025 = phi i32 [ %.1, %bb.i ], [ 0, %bb.f ], [ %i.u, %bb.j ], [ %i.v, %bb.k ], [ 0, %bb.a ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @png_image_write_init(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  %i.c = tail call noalias ptr @png_create_png_struct(ptr noundef nonnull @.str.22, ptr noundef nonnull %0, ptr noundef nonnull @png_safe_error, ptr noundef nonnull @png_safe_warning, ptr noundef null, ptr noundef null, ptr noundef null) #16 ; 13 uses
  %.not.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i, label %png_create_write_struct.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 440
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 456
  store <4 x i32> <i32 8192, i32 -1, i32 8, i32 15>, ptr %i.d, align 8, !tbaa !73
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 480
  store i32 0, ptr %i.f, align 8, !tbaa !74
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 476
  store i32 8, ptr %i.g, align 4, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 472
  store i32 15, ptr %i.h, align 8, !tbaa !76
  store <4 x i32> <i32 8, i32 1, i32 -1, i32 8>, ptr %i.e, align 8, !tbaa !73
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 304 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !77
  %i.k = or i32 %i.j, 2097152
  store i32 %i.k, ptr %i.i, align 8, !tbaa !77
  tail call void @png_set_write_fn(ptr noundef nonnull %i.c, ptr noundef null, ptr noundef null, ptr noundef null) #16
  store ptr %i.c, ptr %i.a, align 8, !tbaa !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #16
  %i.l = tail call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.c) #16 ; 3 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !227
  %.not15 = icmp eq ptr %i.l, null
  br i1 %.not15, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call noalias ptr @png_malloc_warn(ptr noundef nonnull %i.c, i64 noundef 48) #16 ; 6 uses
  %.not16 = icmp eq ptr %i.m, null
  br i1 %.not16, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @png_destroy_info_struct(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b) #16
  br label %.critedge

.critedge:                                        ; preds = %.thread, %bb.b
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef null)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %png_create_write_struct.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, i8 0, i64 32, i1 false)
  store ptr %i.c, ptr %i.m, align 8, !tbaa !108
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.l, ptr %i.o, align 8, !tbaa !109
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  store i8 1, ptr %i.p, align 8
  store ptr %i.m, ptr %0, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.e

png_create_write_struct.exit.thread:              ; preds = %bb.a, %.critedge
  %i.q = call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.23) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %png_create_write_struct.exit.thread
  %.3 = phi i32 [ %i.q, %png_create_write_struct.exit.thread ], [ 1, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  ret i32 %.3
}

declare i32 @png_safe_execute(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @png_image_write_memory(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !98
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !110
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  tail call void @png_set_write_fn(ptr noundef %i.c, ptr noundef nonnull %0, ptr noundef nonnull @image_memory_write, ptr noundef nonnull @image_memory_flush) #16
  %i.d = tail call i32 @png_image_write_main(ptr noundef nonnull %0)
  ret i32 %i.d
}

declare void @png_image_free(ptr noundef) local_unnamed_addr #1

declare i32 @png_image_error(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @png_image_write_to_stdio(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.png_image_write_control, align 8 ; 9 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %3, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = tail call fastcc i32 @png_image_write_init(ptr noundef %0)
  %.not22 = icmp eq i32 %i.f, 0
  br i1 %.not22, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.g = load ptr, ptr %0, align 8, !tbaa !110
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !108
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 264
  store ptr %1, ptr %i.i, align 8, !tbaa !111
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.j, i8 0, i64 72, i1 false)
  store ptr %0, ptr %6, align 8, !tbaa !98
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %3, ptr %i.k, align 8, !tbaa !99
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 %4, ptr %i.l, align 8, !tbaa !100
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %5, ptr %i.m, align 8, !tbaa !101
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i32 %2, ptr %i.n, align 8, !tbaa !102
  %i.o = call i32 @png_safe_execute(ptr noundef nonnull %0, ptr noundef nonnull @png_image_write_main, ptr noundef nonnull %6) #16
  call void @png_image_free(ptr noundef nonnull %0) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #16
  br label %.critedge

bb.f:                                             ; preds = %bb.c
  %i.p = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.16) #16
  br label %.critedge

bb.g:                                             ; preds = %bb.b
  %i.q = tail call i32 @png_image_error(ptr noundef nonnull %0, ptr noundef nonnull @.str.17) #16
  br label %.critedge

.critedge:                                        ; preds = %bb.a, %bb.d, %bb.g, %bb.f, %bb.e
  %.0 = phi i32 [ %i.o, %bb.e ], [ 0, %bb.d ], [ %i.p, %bb.f ], [ %i.q, %bb.g ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @png_image_write_main(ptr noundef %0) #0 {
bb.a:
  %1 = alloca [256 x %struct.png_color_struct], align 16 ; 10 uses
  %i.a = alloca [256 x i8], align 16              ; 8 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !98     ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !110  ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !108  ; 28 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !109  ; 10 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 20 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !112  ; 8 uses
  %i.i = and i32 %i.h, 8                          ; 2 uses
  %.not = icmp eq i32 %i.i, 0                     ; 2 uses
  %i.j = and i32 %i.h, 12
  %i.k = icmp eq i32 %i.j, 4                      ; 3 uses
  %i.l = and i32 %i.h, 9
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = load i32, ptr %i.n, align 8, !tbaa !102
  %i.p = icmp eq i32 %i.o, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.q = phi i1 [ false, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  tail call void @png_set_benign_errors(ptr noundef %i.d, i32 noundef 0) #16
  %i.r = load i32, ptr %i.g, align 4, !tbaa !112  ; 2 uses
  %i.s = and i32 %i.r, 8
  %.not141 = icmp eq i32 %i.s, 0
  %i.t = and i32 %i.r, 3
  %i.u = add nuw nsw i32 %i.t, 1
  %i.v = select i1 %.not141, i32 %i.u, i32 1      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !113  ; 4 uses
  %i.y = udiv i32 2147483647, %i.v
  %.not142 = icmp ugt i32 %i.x, %i.y
  br i1 %.not142, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = mul i32 %i.v, %i.x                       ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.z, ptr %i.aa, align 8, !tbaa !100
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ad = phi i32 [ %i.z, %bb.e ], [ %i.ab, %bb.d ]
  %.0131 = tail call i32 @llvm.abs.i32(i32 %i.ad, i1 false)
  %.not143 = icmp ult i32 %.0131, %i.z
  br i1 %.not143, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !114 ; 3 uses
  %mul = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %i.z, i32 %i.af)
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  br i1 %mul.ov, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.ah, ptr noundef nonnull @.str.25) #17
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.ai = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.aj, ptr noundef nonnull @.str.26) #17
  unreachable

bb.j:                                             ; preds = %bb.g
  br i1 %.not, label %bb.ah, label %bb.l

bb.k:                                             ; preds = %bb.c
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.al, ptr noundef nonnull @.str.27) #17
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !101
  %.not145 = icmp eq ptr %i.an, null
  br i1 %.not145, label %bb.ag, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !234 ; 4 uses
  %.not146 = icmp eq i32 %i.ap, 0
  br i1 %.not146, label %bb.ag, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = icmp ugt i32 %i.ap, 16
  %i.ar = icmp ugt i32 %i.ap, 4
  %i.as = icmp ugt i32 %i.ap, 2
  %i.at = select i1 %i.as, i32 2, i32 1
  %i.au = select i1 %i.ar, i32 4, i32 %i.at
  %i.av = select i1 %i.aq, i32 8, i32 %i.au
  tail call void @png_set_IHDR(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.x, i32 noundef %i.af, i32 noundef %i.av, i32 noundef 3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  %.val = load ptr, ptr %0, align 8, !tbaa !98    ; 4 uses
  %.val157 = load ptr, ptr %i.am, align 8, !tbaa !101 ; 5 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.val, i64 28 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !234 ; 2 uses
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.ax, i32 256) ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.val, i64 20
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !112 ; 5 uses
  %i.ba = and i32 %i.az, 3                        ; 3 uses
  %i.bb = add nuw nsw i32 %i.ba, 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 -1, i64 256, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(768) %1, i8 0, i64 768, i1 false)
  %.not14.i = icmp eq i32 %i.ax, 0
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n
  %i.bc = lshr i32 %i.az, 3
  %i.bd = and i32 %i.bc, 2                        ; 3 uses
  %i.be = and i32 %i.az, 33
  %i.bf = icmp eq i32 %i.be, 33                   ; 5 uses
  %i.bg = zext i1 %i.bf to i32                    ; 2 uses
  %i.bh = and i32 %i.az, 4
  %.not.i = icmp eq i32 %i.bh, 0
  %i.bi = select i1 %i.bf, i32 0, i32 %i.ba
  %i.bj = zext nneg i32 %i.bi to i64              ; 2 uses
  %i.bk = icmp samesign ugt i32 %i.ba, 1          ; 2 uses
  %i.bl = zext i1 %i.bf to i64                    ; 2 uses
  %i.bm = or disjoint i32 %i.bd, %i.bg            ; 2 uses
  %i.bn = xor i32 %i.bm, 2
  %i.bo = zext nneg i32 %i.bn to i64              ; 2 uses
  %i.bp = select i1 %i.bf, i64 2, i64 1           ; 2 uses
  %i.bq = zext nneg i32 %i.bm to i64              ; 2 uses
  %i.br = xor i32 %i.bd, 2
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = zext nneg i32 %i.bd to i64
  %i.bu = xor i32 %i.bg, 1
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = select i1 %i.bf, i64 0, i64 3
  br i1 %.not.i, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i
  %i.bx = zext nneg i32 %i.bb to i64
  %wide.trip.count38.i = zext nneg i32 %spec.select.i to i64
  br label %.lr.ph.split.us.split.i

.lr.ph.split.us.split.i:                          ; preds = %bb.s, %.lr.ph.split.us.i
  %indvars.iv35.i = phi i64 [ 0, %.lr.ph.split.us.i ], [ %indvars.iv.next36.i, %bb.s ] ; 8 uses
  %.01213.us.i = phi i32 [ 0, %.lr.ph.split.us.i ], [ %.6.us.i, %bb.s ] ; 4 uses
  %i.by = mul nuw nsw i64 %indvars.iv35.i, %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %.val157, i64 %i.by ; 6 uses
  switch i32 %i.bb, label %bb.p [
    i32 4, label %bb.q
    i32 3, label %bb.r
    i32 2, label %bb.o
  ]

bb.o:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bv
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !40  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i
  store i8 %i.cb, ptr %i.cc, align 1, !tbaa !40
  %.not125.us.i = icmp eq i8 %i.cb, -1
  %i.cd = trunc i64 %indvars.iv35.i to i32
  %i.ce = add i32 %i.cd, 1
  %spec.select130.us.i = select i1 %.not125.us.i, i32 %.01213.us.i, i32 %i.ce
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph.split.us.split.i
  %.4.us.i = phi i32 [ %.01213.us.i, %.lr.ph.split.us.split.i ], [ %spec.select130.us.i, %bb.o ]
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bl
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !40  ; 3 uses
  %i.ch = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv35.i ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !236
  store i8 %i.cg, ptr %i.ch, align 1, !tbaa !237
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 2
  store i8 %i.cg, ptr %i.cj, align 1, !tbaa !238
  br label %bb.s

bb.q:                                             ; preds = %.lr.ph.split.us.split.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bw
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !40  ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv35.i
  store i8 %i.cl, ptr %i.cm, align 1, !tbaa !40
  %.not126.us.i = icmp eq i8 %i.cl, -1
  %i.cn = trunc i64 %indvars.iv35.i to i32
  %i.co = add i32 %i.cn, 1
  %spec.select129.us.i = select i1 %.not126.us.i, i32 %.01213.us.i, i32 %i.co
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.us.split.i
  %.3.us.i = phi i32 [ %.01213.us.i, %.lr.ph.split.us.split.i ], [ %spec.select129.us.i, %bb.q ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bo
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !40
  %i.cr = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv35.i ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 2
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !238
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bp
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !40
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 1
  store i8 %i.cu, ptr %i.cv, align 1, !tbaa !236
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.bq
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !40
  store i8 %i.cx, ptr %i.cr, align 1, !tbaa !237
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.p
  %.6.us.i = phi i32 [ %.4.us.i, %bb.p ], [ %.3.us.i, %bb.r ] ; 2 uses
  %indvars.iv.next36.i = add nuw nsw i64 %indvars.iv35.i, 1 ; 2 uses
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next36.i, %wide.trip.count38.i
  br i1 %exitcond39.not.i, label %._crit_edge.i, label %.lr.ph.split.us.split.i, !llvm.loop !228

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.cy = and i32 %i.az, 1
  %.not127.not.i = icmp eq i32 %i.cy, 0
  %i.cz = zext nneg i32 %i.bb to i64              ; 4 uses
  %wide.trip.count33.i = zext nneg i32 %spec.select.i to i64 ; 4 uses
  br i1 %.not127.not.i, label %.lr.ph.split.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.split.us.i:                          ; preds = %.lr.ph.split.i
  br i1 %i.bk, label %.lr.ph.split.split.us.split.us.i, label %.lr.ph.split.split.us.split.i

.lr.ph.split.split.us.split.us.i:                 ; preds = %.lr.ph.split.split.us.i, %.lr.ph.split.split.us.split.us.i
  %indvars.iv30.i = phi i64 [ %indvars.iv.next31.i, %.lr.ph.split.split.us.split.us.i ], [ 0, %.lr.ph.split.split.us.i ] ; 3 uses
  %i.da = mul nuw nsw i64 %indvars.iv30.i, %i.cz
  %i.db = getelementptr inbounds nuw [2 x i8], ptr %.val157, i64 %i.da ; 3 uses
  %i.dc = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.bs
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !115
  %i.de = zext i16 %i.dd to i32
  %i.df = mul nuw nsw i32 %i.de, 255              ; 2 uses
  %i.dg = lshr i32 %i.df, 15
  %i.dh = zext nneg i32 %i.dg to i64              ; 2 uses
  %i.di = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.dh
  %i.dj = load i16, ptr %i.di, align 2, !tbaa !115
  %i.dk = zext i16 %i.dj to i32
  %i.dl = and i32 %i.df, 32767
  %i.dm = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.dh
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !40
  %i.do = zext i8 %i.dn to i32
  %i.dp = mul nuw nsw i32 %i.dl, %i.do
  %i.dq = lshr i32 %i.dp, 12
  %i.dr = add nuw nsw i32 %i.dq, %i.dk
  %i.ds = lshr i32 %i.dr, 8
  %i.dt = trunc i32 %i.ds to i8
  %i.du = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv30.i ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 2
  store i8 %i.dt, ptr %i.dv, align 1, !tbaa !238
  %i.dw = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !115
  %i.dy = zext i16 %i.dx to i32
  %i.dz = mul nuw nsw i32 %i.dy, 255              ; 2 uses
  %i.ea = lshr i32 %i.dz, 15
  %i.eb = zext nneg i32 %i.ea to i64              ; 2 uses
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.eb
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !115
  %i.ee = zext i16 %i.ed to i32
  %i.ef = and i32 %i.dz, 32767
  %i.eg = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.eb
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !40
  %i.ei = zext i8 %i.eh to i32
  %i.ej = mul nuw nsw i32 %i.ef, %i.ei
  %i.ek = lshr i32 %i.ej, 12
  %i.el = add nuw nsw i32 %i.ek, %i.ee
  %i.em = lshr i32 %i.el, 8
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.du, i64 1
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !236
  %i.ep = getelementptr inbounds nuw [2 x i8], ptr %i.db, i64 %i.bt
  %i.eq = load i16, ptr %i.ep, align 2, !tbaa !115
  %i.er = zext i16 %i.eq to i32
  %i.es = mul nuw nsw i32 %i.er, 255              ; 2 uses
  %i.et = lshr i32 %i.es, 15
end_hunk_0
begin_hunk_1_@png_image_write_main:bb.a
  %i.ix = lshr i32 %.015.i138.us.i, 15
  %i.iy = zext nneg i32 %i.ix to i64              ; 2 uses
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.iy
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !115
  %i.jb = zext i16 %i.ja to i32
  %i.jc = and i32 %.015.i138.us.i, 32767
  %i.jd = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.iy
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !40
  %i.jf = zext i8 %i.je to i32
  %i.jg = mul nuw nsw i32 %i.jc, %i.jf
  %i.jh = lshr i32 %i.jg, 12
  %i.ji = add nuw nsw i32 %i.jh, %i.jb
  %i.jj = lshr i32 %i.ji, 8
  %i.jk = trunc i32 %i.jj to i8
  br label %png_unpremultiply.exit140.us.i

png_unpremultiply.exit140.us.i:                   ; preds = %bb.aa, %bb.z, %png_unpremultiply.exit135.us.i
  %.0.i139.us.i = phi i8 [ -1, %png_unpremultiply.exit135.us.i ], [ %i.jk, %bb.aa ], [ 0, %bb.z ]
  store i8 %.0.i139.us.i, ptr %i.hq, align 1, !tbaa !237
  %exitcond24.not.i = icmp eq i64 %indvars.iv.next21.i, %wide.trip.count33.i
  br i1 %exitcond24.not.i, label %._crit_edge.i, label %.lr.ph.split.split.split.us.i, !llvm.loop !228

.lr.ph.split.split.split.i:                       ; preds = %.lr.ph.split.split.i, %png_unpremultiply.exit145.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %png_unpremultiply.exit145.i ], [ 0, %.lr.ph.split.split.i ] ; 4 uses
  %.01213.i = phi i32 [ %spec.select128.i, %png_unpremultiply.exit145.i ], [ 0, %.lr.ph.split.split.i ]
  %i.jl = mul nuw nsw i64 %indvars.iv.i, %i.cz
  %i.jm = getelementptr inbounds nuw [2 x i8], ptr %.val157, i64 %i.jl ; 2 uses
  %i.jn = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.bj
  %i.jo = load i16, ptr %i.jn, align 2, !tbaa !115 ; 4 uses
  %i.jp = zext i16 %i.jo to i32                   ; 3 uses
  %i.jq = mul nuw nsw i32 %i.jp, 255
  %i.jr = add nuw nsw i32 %i.jq, 32895
  %i.js = lshr i32 %i.jr, 16                      ; 2 uses
  %i.jt = trunc nuw i32 %i.js to i8
  %i.ju = icmp ne i32 %i.js, 0
  %i.jv = icmp ult i16 %i.jo, -129                ; 3 uses
  %or.cond.i = and i1 %i.jv, %i.ju
  br i1 %or.cond.i, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.lr.ph.split.split.split.i
  %i.jw = lshr i32 %i.jp, 1
  %i.jx = add nuw nsw i32 %i.jw, 2139062400
  %i.jy = udiv i32 %i.jx, %i.jp
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.lr.ph.split.split.split.i
  %.0.i = phi i32 [ %i.jy, %bb.ab ], [ 0, %.lr.ph.split.split.split.i ]
  %i.jz = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  store i8 %i.jt, ptr %i.jz, align 1, !tbaa !40
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.ka = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %spec.select128.i = select i1 %i.jv, i32 %i.ka, i32 %.01213.i ; 2 uses
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr %i.jm, i64 %i.bl
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !115 ; 3 uses
  %i.kd = zext i16 %i.kc to i32                   ; 2 uses
  %i.ke = icmp uge i16 %i.kc, %i.jo
  %i.kf = icmp ult i16 %i.jo, 128
  %or.cond.i141.i = or i1 %i.kf, %i.ke
  br i1 %or.cond.i141.i, label %png_unpremultiply.exit145.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %.not.i142.i = icmp eq i16 %i.kc, 0
  br i1 %.not.i142.i, label %png_unpremultiply.exit145.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.kg = mul i32 %.0.i, %i.kd
  %i.kh = add i32 %i.kg, 64
  %i.ki = lshr i32 %i.kh, 7
  %i.kj = mul nuw nsw i32 %i.kd, 255
  %.015.i143.i = select i1 %i.jv, i32 %i.ki, i32 %i.kj ; 2 uses
  %i.kk = lshr i32 %.015.i143.i, 15
  %i.kl = zext nneg i32 %i.kk to i64              ; 2 uses
  %i.km = getelementptr inbounds nuw [2 x i8], ptr @png_sRGB_base, i64 %i.kl
  %i.kn = load i16, ptr %i.km, align 2, !tbaa !115
  %i.ko = zext i16 %i.kn to i32
  %i.kp = and i32 %.015.i143.i, 32767
  %i.kq = getelementptr inbounds nuw i8, ptr @png_sRGB_delta, i64 %i.kl
  %i.kr = load i8, ptr %i.kq, align 1, !tbaa !40
  %i.ks = zext i8 %i.kr to i32
  %i.kt = mul nuw nsw i32 %i.kp, %i.ks
  %i.ku = lshr i32 %i.kt, 12
  %i.kv = add nuw nsw i32 %i.ku, %i.ko
  %i.kw = lshr i32 %i.kv, 8
  %i.kx = trunc i32 %i.kw to i8
  br label %png_unpremultiply.exit145.i

png_unpremultiply.exit145.i:                      ; preds = %bb.ae, %bb.ad, %bb.ac
  %.0.i144.i = phi i8 [ -1, %bb.ac ], [ %i.kx, %bb.ae ], [ 0, %bb.ad ] ; 3 uses
  %i.ky = getelementptr inbounds nuw [3 x i8], ptr %1, i64 %indvars.iv.i ; 3 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 1
  store i8 %.0.i144.i, ptr %i.kz, align 1, !tbaa !236
  store i8 %.0.i144.i, ptr %i.ky, align 1, !tbaa !237
  %i.la = getelementptr inbounds nuw i8, ptr %i.ky, i64 2
  store i8 %.0.i144.i, ptr %i.la, align 1, !tbaa !238
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count33.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.split.split.split.i, !llvm.loop !228

._crit_edge.i:                                    ; preds = %png_unpremultiply.exit145.i, %png_unpremultiply.exit140.us.i, %.lr.ph.split.split.us.split.i, %.lr.ph.split.split.us.split.us.i, %bb.s, %bb.n
  %.0121.lcssa.i = phi i32 [ 0, %bb.n ], [ 0, %.lr.ph.split.split.us.split.i ], [ %.6.us.i, %bb.s ], [ %spec.select128.us.i, %png_unpremultiply.exit140.us.i ], [ 0, %.lr.ph.split.split.us.split.us.i ], [ %spec.select128.i, %png_unpremultiply.exit145.i ] ; 2 uses
  %i.lb = load ptr, ptr %.val, align 8, !tbaa !110 ; 2 uses
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !108
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lb, i64 8
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !109
  call void @png_set_PLTE(ptr noundef %i.lc, ptr noundef %i.le, ptr noundef nonnull %1, i32 noundef %spec.select.i) #16
  %i.lf = icmp sgt i32 %.0121.lcssa.i, 0
  br i1 %i.lf, label %bb.af, label %png_image_set_PLTE.exit

bb.af:                                            ; preds = %._crit_edge.i
  %i.lg = load ptr, ptr %.val, align 8, !tbaa !110 ; 2 uses
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !108
  %i.li = getelementptr inbounds nuw i8, ptr %i.lg, i64 8
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !109
  call void @png_set_tRNS(ptr noundef %i.lh, ptr noundef %i.lj, ptr noundef nonnull %i.a, i32 noundef %.0121.lcssa.i, ptr noundef null) #16
  br label %png_image_set_PLTE.exit

png_image_set_PLTE.exit:                          ; preds = %._crit_edge.i, %bb.af
  store i32 %spec.select.i, ptr %i.aw, align 4, !tbaa !234
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.ai

bb.ag:                                            ; preds = %bb.m, %bb.l
  %i.lk = load ptr, ptr %i.b, align 8, !tbaa !110
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !108
  tail call void @png_error(ptr noundef %i.ll, ptr noundef nonnull @.str.28) #17
  unreachable

bb.ah:                                            ; preds = %bb.j
  %i.lm = select i1 %i.q, i32 16, i32 8
  %trunc = trunc i32 %i.h to i3
  %i.ln = and i3 %trunc, 3
  %mask = tail call i3 @llvm.bitreverse.i3(i3 %i.ln)
  %i.lo = zext i3 %mask to i32
  tail call void @png_set_IHDR(ptr noundef %i.d, ptr noundef %i.f, i32 noundef %i.x, i32 noundef %i.af, i32 noundef %i.lm, i32 noundef %i.lo, i32 noundef 0, i32 noundef 0, i32 noundef 0) #16
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %png_image_set_PLTE.exit
  br i1 %i.q, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  call void @png_set_gAMA_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 100000) #16
  %i.lp = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lq = load i32, ptr %i.lp, align 8, !tbaa !239
  %i.lr = and i32 %i.lq, 1
  %i.ls = icmp eq i32 %i.lr, 0
  br i1 %i.ls, label %bb.ak, label %bb.ap

bb.ak:                                            ; preds = %bb.aj
  call void @png_set_cHRM_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 31270, i32 noundef 32900, i32 noundef 64000, i32 noundef 33000, i32 noundef 30000, i32 noundef 60000, i32 noundef 15000, i32 noundef 6000) #16
  br label %bb.ap

bb.al:                                            ; preds = %bb.ai
  %i.lt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !239
  %i.lv = and i32 %i.lu, 1
  %i.lw = icmp eq i32 %i.lv, 0
  br i1 %i.lw, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  call void @png_set_sRGB(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 0) #16
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  call void @png_set_gAMA_fixed(ptr noundef %i.d, ptr noundef %i.f, i32 noundef 45455) #16
  br label %bb.ao

bb.ao:                                            ; preds = %bb.am, %bb.an
  call void @png_write_info(ptr noundef %i.d, ptr noundef %i.f)
  br label %bb.aq

bb.ap:                                            ; preds = %bb.aj, %bb.ak
  call void @png_write_info(ptr noundef %i.d, ptr noundef %i.f)
  call void @png_set_swap(ptr noundef %i.d) #16
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap
  %i.lx = and i32 %i.h, 16
  %.not147 = icmp eq i32 %i.lx, 0
  br i1 %.not147, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ly = and i32 %i.h, 10
  %or.cond.not = icmp eq i32 %i.ly, 2
  br i1 %or.cond.not, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call void @png_set_bgr(ptr noundef %i.d) #16
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.lz = and i32 %i.h, -17
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.aq
  %.0132 = phi i32 [ %i.lz, %bb.at ], [ %i.h, %bb.aq ] ; 4 uses
  %i.ma = and i32 %.0132, 32
  %.not149 = icmp eq i32 %i.ma, 0
  br i1 %.not149, label %bb.ay, label %bb.av

bb.av:                                            ; preds = %bb.au
  %2 = icmp ne i32 %i.i, 0
  %i.mb = and i32 %.0132, 1
  %.not150 = icmp eq i32 %i.mb, 0
  %or.cond156 = or i1 %2, %.not150
  br i1 %or.cond156, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @png_set_swap_alpha(ptr noundef %i.d) #16
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.mc = and i32 %.0132, -33
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.au
  %.1 = phi i32 [ %i.mc, %bb.ax ], [ %.0132, %bb.au ]
  br i1 %.not, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.md = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.me = load i32, ptr %i.md, align 4, !tbaa !234
  %i.mf = icmp ult i32 %i.me, 17
  br i1 %i.mf, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  call void @png_set_packing(ptr noundef %i.d) #16
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az, %bb.ay
  %.not151 = icmp ult i32 %.1, 16
  br i1 %.not151, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @png_error(ptr noundef %i.d, ptr noundef nonnull @.str.29) #17
  unreachable

bb.bd:                                            ; preds = %bb.bb
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.mh = load ptr, ptr %i.mg, align 8, !tbaa !99 ; 2 uses
  %i.mi = load i32, ptr %i.aa, align 8, !tbaa !100 ; 2 uses
  %i.mj = sext i32 %i.mi to i64
  %i.mk = zext i1 %i.k to i64
  %spec.select = shl nsw i64 %i.mj, %i.mk         ; 2 uses
  %i.ml = icmp slt i32 %i.mi, 0
  br i1 %i.ml, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.mm = load i32, ptr %i.ae, align 8, !tbaa !114
  %i.mn = add i32 %i.mm, -1
  %i.mo = zext i32 %i.mn to i64
  %i.mp = mul i64 %spec.select, %i.mo
  %i.mq = sub i64 0, %i.mp
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mh, i64 %i.mq
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.0130 = phi ptr [ %i.mr, %bb.be ], [ %i.mh, %bb.bd ]
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %.0130, ptr %i.ms, align 8, !tbaa !116
  %i.mt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i64 %spec.select, ptr %i.mt, align 8, !tbaa !117
  %i.mu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.mv = load i32, ptr %i.mu, align 8, !tbaa !239
  %i.mw = and i32 %i.mv, 2
  %.not152 = icmp eq i32 %i.mw, 0
  %i.mx = icmp eq ptr %i.d, null
  %or.cond = select i1 %.not152, i1 true, i1 %i.mx
  br i1 %or.cond, label %png_set_compression_level.exit, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.my = getelementptr inbounds nuw i8, ptr %i.d, i64 622 ; 2 uses
  store i8 8, ptr %i.my, align 2, !tbaa !92, !alias.scope !240
  %i.mz = getelementptr inbounds nuw i8, ptr %i.d, i64 560
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !83, !alias.scope !240
  %.not.i159 = icmp eq ptr %i.na, null
  br i1 %.not.i159, label %bb.bm, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 508
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !80, !alias.scope !240
  %i.nd = getelementptr inbounds nuw i8, ptr %i.d, i64 628
  %i.ne = load i8, ptr %i.nd, align 4, !tbaa !81, !alias.scope !240
  %i.nf = zext i8 %i.ne to i32
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 625
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !82, !alias.scope !240
  %i.ni = zext i8 %i.nh to i32
  %i.nj = mul nuw nsw i32 %i.ni, %i.nf            ; 3 uses
  %i.nk = icmp samesign ugt i32 %i.nj, 7
  %i.nl = zext i32 %i.nc to i64                   ; 2 uses
  br i1 %i.nk, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.nm = lshr i32 %i.nj, 3
  %i.nn = zext nneg i32 %i.nm to i64
  %i.no = mul nuw nsw i64 %i.nn, %i.nl
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bh
  %i.np = zext nneg i32 %i.nj to i64
  %i.nq = mul nuw nsw i64 %i.np, %i.nl
  %i.nr = add nuw nsw i64 %i.nq, 7
  %i.ns = lshr i64 %i.nr, 3
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.nt = phi i64 [ %i.no, %bb.bi ], [ %i.ns, %bb.bj ]
  %i.nu = getelementptr inbounds nuw i8, ptr %i.d, i64 568 ; 2 uses
  %i.nv = load ptr, ptr %i.nu, align 8, !tbaa !90, !alias.scope !240
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.nx = add nuw nsw i64 %i.nt, 1
  %i.ny = call noalias ptr @png_malloc(ptr noundef nonnull %i.d, i64 noundef %i.nx) #16
  store ptr %i.ny, ptr %i.nu, align 8, !tbaa !90, !alias.scope !240
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bk, %bb.bl, %bb.bg
  store i8 0, ptr %i.my, align 2, !tbaa !92, !alias.scope !240
  %i.nz = getelementptr inbounds nuw i8, ptr %i.d, i64 444
  store i32 3, ptr %i.nz, align 4, !tbaa !93, !alias.scope !241
  br label %png_set_compression_level.exit

png_set_compression_level.exit:                   ; preds = %bb.bm, %bb.bf
  br i1 %i.k, label %bb.bn, label %bb.bq

bb.bn:                                            ; preds = %png_set_compression_level.exit
  br i1 %i.m, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !102
  %.not153 = icmp eq i32 %i.ob, 0
  br i1 %.not153, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.oc = call i64 @png_get_rowbytes(ptr noundef %i.d, ptr noundef %i.f) #16
  %i.od = call noalias ptr @png_malloc(ptr noundef %i.d, i64 noundef %i.oc) #16 ; 2 uses
  %i.oe = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.od, ptr %i.oe, align 8, !tbaa !118
  %png_write_image_16bit.png_write_image_8bit = select i1 %i.q, ptr @png_write_image_16bit, ptr @png_write_image_8bit
  %i.of = call i32 @png_safe_execute(ptr noundef nonnull %i.b, ptr noundef nonnull %png_write_image_16bit.png_write_image_8bit, ptr noundef nonnull %0) #16
  store ptr null, ptr %i.oe, align 8, !tbaa !118
  call void @png_free(ptr noundef %i.d, ptr noundef %i.od) #16
  %.not155 = icmp eq i32 %i.of, 0
  br i1 %.not155, label %bb.br, label %.loopexit

bb.bq:                                            ; preds = %bb.bo, %png_set_compression_level.exit
  %i.og = load i64, ptr %i.mt, align 8, !tbaa !117
  %i.oh = load i32, ptr %i.ae, align 8, !tbaa !114 ; 2 uses
  %.not154165 = icmp eq i32 %i.oh, 0
  br i1 %.not154165, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bq
  %i.oi = load ptr, ptr %i.ms, align 8, !tbaa !116
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.0167 = phi i32 [ %i.ok, %.lr.ph ], [ %i.oh, %.lr.ph.preheader ]
  %.0126166 = phi ptr [ %i.oj, %.lr.ph ], [ %i.oi, %.lr.ph.preheader ] ; 2 uses
  call void @png_write_row(ptr noundef %i.d, ptr noundef %.0126166)
  %i.oj = getelementptr inbounds i8, ptr %.0126166, i64 %i.og
  %i.ok = add i32 %.0167, -1                      ; 2 uses
  %.not154 = icmp eq i32 %i.ok, 0
  br i1 %.not154, label %.loopexit, label %.lr.ph, !llvm.loop !233

.loopexit:                                        ; preds = %.lr.ph, %bb.bq, %bb.bp
  call void @png_write_end(ptr noundef %i.d, ptr noundef %i.f)
  br label %bb.br

bb.br:                                            ; preds = %bb.bp, %.loopexit
  %.1134 = phi i32 [ 1, %.loopexit ], [ 0, %bb.bp ]
  ret i32 %.1134
}

; Function Attrs: nounwind uwtable
define i32 @png_image_write_to_file(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.png_image_write_control, align 8 ; 8 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !96
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ne ptr %1, null
  %i.e = icmp ne ptr %3, null
  %or.cond = and i1 %i.d, %i.e
  br i1 %or.cond, label %bb.d, label %bb.p

bb.d:                                             ; preds = %bb.c
  %i.f = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.18) ; 7 uses
  %.not32 = icmp eq ptr %i.f, null
  br i1 %.not32, label %bb.o, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.a, align 8, !tbaa !96
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = tail call fastcc i32 @png_image_write_init(ptr noundef nonnull %0)
  %.not22.i = icmp eq i32 %i.i, 0
  br i1 %.not22.i, label %png_image_write_to_stdio.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #16
  %i.j = load ptr, ptr %0, align 8, !tbaa !110
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !108
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 264
  store ptr %i.f, ptr %i.l, align 8, !tbaa !111
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, i8 0, i64 72, i1 false)
end_hunk_1
