Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/imageio?download=true
inline.NumInlined: 27
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@dt_imageio_is_ldr:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !70
  %.not3 = icmp eq i32 %i.c, 0
  %i.d = zext i1 %.not3 to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ 0, %bb.a ], [ %i.d, %bb.b ]
  ret i32 %i.e
}

; Function Attrs: nofree nounwind uwtable
define internal fastcc ptr @_find_signature(ptr nofree noundef readonly captures(address_is_null) %0) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i8], align 16              ; 11 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %0, align 1, !tbaa !21
  %.not36 = icmp eq i8 %i.b, 0
  br i1 %.not36, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noalias ptr @fopen(ptr noundef nonnull %0, ptr noundef nonnull @.str.130) ; 3 uses
  %.not37 = icmp eq ptr %i.c, null
  br i1 %.not37, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.a, i8 0, i64 512, i1 false)
  %i.d = call i64 @fread(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef 512, ptr noundef nonnull %i.c)
  %i.e = tail call i32 @fclose(ptr noundef nonnull %i.c) ; 0 uses
  %i.f = icmp ult i64 %i.d, 32
  br i1 %i.f, label %.thread57, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %lhsv = load i32, ptr %i.g, align 4
  %lhsv.fr = freeze i32 %lhsv                     ; 2 uses
  switch i32 %lhsv.fr, label %.preheader.split [
    i32 1431718468, label %.preheader.split.us.preheader
    i32 1297500740, label %.preheader.split.us.preheader
    i32 875842882, label %.preheader.split.us.preheader
  ]

.preheader.split.us.preheader:                    ; preds = %.preheader, %.preheader, %.preheader
  br label %.preheader.split.us

.preheader.split.us:                              ; preds = %.preheader.split.us.preheader, %_memfind.exit.thread.us
  %.061.us = phi i64 [ %i.ac, %_memfind.exit.thread.us ], [ 0, %.preheader.split.us.preheader ] ; 3 uses
  %i.h = getelementptr inbounds nuw [64 x i8], ptr @_magic_signatures, i64 %.061.us ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !176
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !177
  %i.p = zext i32 %i.o to i64
  %bcmp.us = call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %i.m, i64 %i.p)
  %i.q = icmp eq i32 %bcmp.us, 0
  br i1 %i.q, label %bb.e, label %_memfind.exit.thread.us

bb.e:                                             ; preds = %.preheader.split.us
  %i.r = add nsw i64 %.061.us, -46
  %.not38.us = icmp ult i64 %i.r, -10
  br i1 %.not38.us, label %.thread57, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !178  ; 3 uses
  %i.u = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.t) #18 ; 3 uses
  %i.v = sub i64 512, %i.u
  %.not17.not.i.us = icmp eq i64 %i.u, 512
  br i1 %.not17.not.i.us, label %_memfind.exit.thread.us, label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %bb.f
  %i.w = load i8, ptr %i.t, align 1, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.i.us
  %.01418.i.us = phi i64 [ 0, %.lr.ph.i.us ], [ %i.ab, %bb.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01418.i.us ; 2 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !21
  %i.z = icmp eq i8 %i.y, %i.w
  br i1 %i.z, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %bcmp.i.us = call i32 @bcmp(ptr nonnull readonly %i.x, ptr nonnull readonly %i.t, i64 %i.u)
  %i.aa = icmp eq i32 %bcmp.i.us, 0
  br i1 %i.aa, label %.thread57, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = add nuw nsw i64 %.01418.i.us, 1         ; 2 uses
  %exitcond.not.i.us = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond.not.i.us, label %_memfind.exit.thread.us, label %bb.g

_memfind.exit.thread.us:                          ; preds = %bb.i, %bb.f, %.preheader.split.us
  %i.ac = add nuw nsw i64 %.061.us, 1             ; 2 uses
  %exitcond = icmp eq i64 %i.ac, 101
  br i1 %exitcond, label %.thread52, label %.preheader.split.us

.preheader.split:                                 ; preds = %.preheader, %_memfind.exit.thread
  %.061 = phi i64 [ %i.az, %_memfind.exit.thread ], [ 0, %.preheader ] ; 4 uses
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr @_magic_signatures, i64 %.061 ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !176
  %i.ag = zext i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !177
  %i.al = zext i32 %i.ak to i64
  %bcmp = call i32 @bcmp(ptr nonnull %i.ah, ptr nonnull %i.ai, i64 %i.al)
  %i.am = icmp eq i32 %bcmp, 0
  br i1 %i.am, label %bb.j, label %_memfind.exit.thread

bb.j:                                             ; preds = %.preheader.split
  %i.an = add nsw i64 %.061, -46
  %.not38 = icmp ult i64 %i.an, -10
  br i1 %.not38, label %_memfind.exit.thread56, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !178 ; 3 uses
  %i.aq = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ap) #18 ; 3 uses
  %i.ar = sub i64 512, %i.aq
  %.not17.not.i = icmp eq i64 %i.aq, 512
  br i1 %.not17.not.i, label %_memfind.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.as = load i8, ptr %i.ap, align 1, !tbaa !21
  br label %bb.l

bb.l:                                             ; preds = %bb.n, %.lr.ph.i
  %.01418.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ax, %bb.n ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.01418.i ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !21
  %i.av = icmp eq i8 %i.au, %i.as
  br i1 %i.av, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %i.at, ptr nonnull readonly %i.ap, i64 %i.aq)
  %i.aw = icmp eq i32 %bcmp.i, 0
  br i1 %i.aw, label %.thread57, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ax = add nuw nsw i64 %.01418.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ax, %i.ar
  br i1 %exitcond.not.i, label %_memfind.exit.thread, label %bb.l

_memfind.exit.thread56:                           ; preds = %bb.j
  %i.ay = icmp eq i64 %.061, 65
  br i1 %i.ay, label %_memfind.exit.thread, label %.thread57

_memfind.exit.thread:                             ; preds = %bb.n, %_memfind.exit.thread56, %bb.k, %.preheader.split
  %i.az = add nuw nsw i64 %.061, 1                ; 2 uses
  %exitcond76 = icmp eq i64 %i.az, 101
  br i1 %exitcond76, label %.thread52, label %.preheader.split

.thread52:                                        ; preds = %_memfind.exit.thread.us, %_memfind.exit.thread
  %i.ba = load i8, ptr %i.a, align 16, !tbaa !21
  %i.bb = icmp eq i8 %i.ba, 40
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = icmp eq i8 %i.bd, 0
  %or.cond = select i1 %i.bb, i1 %i.be, i1 false
  %i.bf = and i32 %lhsv.fr, 65535
  %i.bg = icmp eq i32 %i.bf, 1
  %or.cond11 = and i1 %or.cond, %i.bg
  %_windows_BMP_signature. = select i1 %or.cond11, ptr @_windows_BMP_signature, ptr null
  br label %.thread57

.thread57:                                        ; preds = %bb.e, %bb.h, %_memfind.exit.thread56, %bb.m, %.thread52, %bb.d
  %.3 = phi ptr [ %i.ad, %bb.m ], [ %_windows_BMP_signature., %.thread52 ], [ null, %bb.d ], [ %i.h, %bb.h ], [ %i.ad, %_memfind.exit.thread56 ], [ %i.h, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  br label %bb.o

bb.o:                                             ; preds = %.thread57, %bb.c, %bb.a, %bb.b
  %.5 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %.3, %.thread57 ], [ null, %bb.c ]
  ret ptr %.5
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @dt_imageio_to_fractional(float noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 4)) %1, ptr nofree noundef captures(none) initializes((0, 4)) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = fcmp reassoc nsz arcp contract afn ult float %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %2, align 4, !tbaa !20
  store i32 0, ptr %1, align 4, !tbaa !20
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %2, align 4, !tbaa !20
  %storemerge.in14 = fadd reassoc nsz arcp contract afn float %0, 5.000000e-01
  %storemerge15 = fptosi float %storemerge.in14 to i32 ; 2 uses
  store i32 %storemerge15, ptr %1, align 4, !tbaa !20
  %i.b = uitofp reassoc nsz arcp contract afn i32 %storemerge15 to float
  %i.c = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.d = uitofp reassoc nsz arcp contract afn i32 %i.c to float
  %i.e = fdiv reassoc nsz arcp contract afn float %i.b, %i.d
  %i.f = fsub reassoc nsz arcp contract afn float %i.e, %0
  %i.g = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.f)
  %i.h = fcmp reassoc nsz arcp contract afn ogt float %i.g, 1.000000e-03
  br i1 %i.h, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.i = phi i32 [ %i.n, %.lr.ph ], [ %i.c, %bb.c ]
  %i.j = mul i32 %i.i, 10                         ; 2 uses
  store i32 %i.j, ptr %2, align 4, !tbaa !20
  %i.k = uitofp reassoc nsz arcp contract afn i32 %i.j to float
  %i.l = fmul reassoc nsz arcp contract afn float %0, %i.k
  %storemerge.in = fadd reassoc nsz arcp contract afn float %i.l, 5.000000e-01
  %storemerge = fptosi float %storemerge.in to i32 ; 2 uses
  store i32 %storemerge, ptr %1, align 4, !tbaa !20
  %i.m = uitofp reassoc nsz arcp contract afn i32 %storemerge to float
  %i.n = load i32, ptr %2, align 4, !tbaa !20     ; 2 uses
  %i.o = uitofp reassoc nsz arcp contract afn i32 %i.n to float
  %i.p = fdiv reassoc nsz arcp contract afn float %i.m, %i.o
  %i.q = fsub reassoc nsz arcp contract afn float %i.p, %0
  %i.r = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.q)
  %i.s = fcmp reassoc nsz arcp contract afn ogt float %i.r, 1.000000e-03
  br i1 %i.s, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #8

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_imageio_export(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !76
  %i.c = tail call ptr %i.b(ptr noundef %3) #17
  %i.d = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(7) @.str.9) #18
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 176
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !77
  %i.h = tail call i32 %i.g(ptr noundef %3, ptr noundef %1, ptr noundef null, i32 noundef %10, ptr noundef %11, ptr noundef null, i32 noundef 0, i32 noundef %0, i32 noundef %15, i32 noundef %16, ptr noundef null, i32 noundef %9) #17
  %i.i = icmp ne i32 %i.h, 0
  %i.j = zext i1 %i.i to i32
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = tail call i32 @dt_imageio_export_with_flags(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef %4, i32 noundef %5, i32 noundef %6, double noundef %7, i32 noundef 0, ptr noundef null, i32 noundef %8, i32 noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, ptr noundef %13, ptr noundef %14, i32 noundef %15, i32 noundef %16, ptr noundef %17, i32 noundef -1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.j, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_imageio_export_with_flags(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, double noundef %9, i32 noundef %10, ptr noundef %11, i32 noundef %12, i32 noundef %13, i32 noundef %14, ptr noundef %15, i32 noundef %16, ptr noundef %17, ptr noundef %18, i32 noundef %19, i32 noundef %20, ptr noundef %21, i32 noundef %22) local_unnamed_addr #0 {
bb.a:
  %23 = alloca %struct.rusage, align 8            ; 5 uses
  %24 = alloca %struct.timeval, align 8           ; 5 uses
  %25 = alloca %struct.rusage, align 8            ; 5 uses
  %26 = alloca %struct.timeval, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %27 = alloca %struct.dt_develop_t, align 16     ; 32 uses
  %28 = alloca %struct.dt_mipmap_buffer_t, align 8 ; 9 uses
  %29 = alloca %struct.dt_times_t, align 8        ; 6 uses
  %30 = alloca %struct.dt_dev_pixelpipe_t, align 16 ; 26 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca [2048 x i8], align 16             ; 7 uses
  %i.d = alloca [2 x float], align 8              ; 2 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca [4096 x i8], align 16             ; 5 uses
  %i.g = alloca i32, align 4                      ; 4 uses
  store i32 %0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #17
  call void @dt_dev_init(ptr noundef nonnull %27, i32 noundef 0) #17
  call void @dt_dev_load_image(ptr noundef nonnull %27, i32 noundef %0) #17
  %.not = icmp eq i32 %22, -1                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @dt_dev_pop_history_items_ext(ptr noundef nonnull %27, i32 noundef %22) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = icmp ne i32 %10, 0                       ; 8 uses
  br i1 %i.h, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @dt_set_backthumb_time(double noundef 6.000000e+02) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #17
  call void @dt_mipmap_cache_get_with_caller(ptr noundef nonnull %28, i32 noundef %0, i32 noundef 12, i32 noundef 3, i8 noundef signext 114, ptr noundef nonnull @.str.10, i32 noundef 1079) #17
  %i.i = getelementptr inbounds nuw i8, ptr %28, i64 24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !201
  %i.k = icmp ne ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %28, i64 8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp ne i32 %i.m, 0
  %or.cond = select i1 %i.k, i1 %i.n, i1 false
  %i.o = getelementptr inbounds nuw i8, ptr %28, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = icmp ne i32 %i.p, 0
  %or.cond5 = select i1 %or.cond, i1 %i.q, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %27, i64 1988
  %i.s = load i32, ptr %i.r, align 4, !tbaa !202  ; 2 uses
  switch i32 %i.s, label %bb.i [
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 7, label %bb.h
    i32 8, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.11, i32 noundef 5) #17
  %i.u = getelementptr inbounds nuw i8, ptr %27, i64 1236
  call void (ptr, ...) @dt_control_log(ptr noundef %i.t, ptr noundef nonnull %i.u) #17
  br label %bb.dz

bb.h:                                             ; preds = %bb.f, %bb.f, %bb.f
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.12, ptr noundef %1, i32 noundef %i.s) #17
  %i.v = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.13, i32 noundef 5) #17
  %i.w = getelementptr inbounds nuw i8, ptr %27, i64 1236
  call void (ptr, ...) @dt_control_log(ptr noundef %i.v, ptr noundef nonnull %i.w) #17
  br label %bb.dz

bb.i:                                             ; preds = %bb.f
  %i.x = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.14, i32 noundef 5) #17
  %i.y = getelementptr inbounds nuw i8, ptr %27, i64 1236
  call void (ptr, ...) @dt_control_log(ptr noundef %i.x, ptr noundef nonnull %i.y) #17
  br label %bb.dz

bb.j:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds nuw i8, ptr %27, i64 1492
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !203 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %27, i64 1496
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !204 ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !63
  %i.ae = and i32 %i.ad, 16
  %.not.i = icmp eq i32 %i.ae, 0
  br i1 %.not.i, label %dt_get_perf_times.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #17
  %i.af = call i32 @gettimeofday(ptr noundef nonnull %26, ptr noundef null) #17 ; 0 uses
  %i.ag = load i64, ptr %26, align 8, !tbaa !206
  %i.ah = add nsw i64 %i.ag, -1290608000
  %i.ai = sitofp reassoc nsz arcp contract afn i64 %i.ah to double
  %i.aj = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !207
  %i.al = sitofp reassoc nsz arcp contract afn i64 %i.ak to double
  %i.am = fmul reassoc nnan nsz arcp contract afn double %i.al, f0x3EB0C6F7A0B5ED8D
  %i.an = fadd reassoc nsz arcp contract afn double %i.am, %i.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #17
  store double %i.an, ptr %29, align 8, !tbaa !209
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #17
  %i.ao = call i32 @getrusage(i32 noundef 0, ptr noundef nonnull %25) #17 ; 0 uses
  %i.ap = load i64, ptr %25, align 8, !tbaa !211
  %i.aq = sitofp reassoc nsz arcp contract afn i64 %i.ap to double
  %i.ar = getelementptr inbounds nuw i8, ptr %25, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !212
  %i.at = sitofp reassoc nsz arcp contract afn i64 %i.as to double
  %i.au = fmul reassoc nnan nsz arcp contract afn double %i.at, f0x3EB0C6F7A0B5ED8D
  %i.av = fadd reassoc nsz arcp contract afn double %i.au, %i.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #17
  %i.aw = getelementptr inbounds nuw i8, ptr %29, i64 8
  store double %i.av, ptr %i.aw, align 8, !tbaa !213
  br label %dt_get_perf_times.exit

dt_get_perf_times.exit:                           ; preds = %bb.j, %bb.k
  br i1 %i.h, label %bb.l, label %.thread

bb.l:                                             ; preds = %dt_get_perf_times.exit
  %i.ax = call i32 @dt_dev_pixelpipe_init_thumbnail(ptr noundef nonnull %30, i32 noundef %i.aa, i32 noundef %i.ac) #17
  %.not425 = icmp eq i32 %i.ax, 0
  br i1 %.not425, label %bb.m, label %.thread480

.thread:                                          ; preds = %dt_get_perf_times.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !86
  %i.ba = call i32 %i.az(ptr noundef %3) #17
  %i.bb = call i32 @dt_dev_pixelpipe_init_export(ptr noundef nonnull %30, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ba, i32 noundef %13) #17
  %.not425477 = icmp eq i32 %i.bb, 0
  br i1 %.not425477, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.thread, %bb.l
  %.str.17.sink = phi ptr [ @.str.16, %bb.l ], [ @.str.17, %.thread ]
  %i.bc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.15, i32 noundef 5) #17
  %i.bd = call ptr @g_dpgettext(ptr noundef null, ptr noundef nonnull %.str.17.sink, i64 noundef 5) #17
  call void (ptr, ...) @dt_control_log(ptr noundef %i.bc, ptr noundef %i.bd) #17
  br label %.thread486

.thread480:                                       ; preds = %bb.l
  %i.be = getelementptr inbounds nuw i8, ptr %27, i64 2048
  %i.bf = load i32, ptr %i.be, align 16
  %i.bg = select i1 %.not, i32 %i.bf, i32 %22
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !214
  %i.bj = icmp ne i32 %i.bi, 0
  br label %bb.ag

bb.n:                                             ; preds = %.thread
  %i.bk = getelementptr inbounds nuw i8, ptr %27, i64 2048
  %i.bl = load i32, ptr %i.bk, align 16
  %i.bm = select i1 %.not, i32 %i.bl, i32 %22
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.bo = load i8, ptr %i.bn, align 4, !tbaa !21
  %.not496 = icmp eq i8 %i.bo, 0
end_hunk_0
