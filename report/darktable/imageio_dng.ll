inline.NumInlined: 49
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_write_full_preview_subifd:bb.a
  %i.o = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 278, i32 noundef %i.n) #13 ; 0 uses
  %i.p = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %0, i32 noundef 50970, i32 noundef 2) #13 ; 0 uses
  %i.q = load ptr, ptr %1, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.s = load i32, ptr %i.r, align 8, !tbaa !15
  %i.t = sext i32 %i.s to i64
  %i.u = tail call i64 @TIFFWriteRawStrip(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %i.q, i64 noundef %i.t) #13
  %i.v = icmp slt i64 %i.u, 0
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = load i32, ptr %i.r, align 8, !tbaa !15
  %i.x = load i32, ptr %i.b, align 4, !tbaa !16
  %i.y = load i32, ptr %i.e, align 8, !tbaa !17
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.17, i32 noundef %i.w, i32 noundef %i.x, i32 noundef %i.y) #13
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.z = tail call i32 @TIFFWriteDirectory(ptr noundef nonnull %0) #13
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.18) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 1, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

declare i32 @dt_exif_write_blob(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @dt_imageio_dng_write_linear(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(address_is_null) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  %8 = alloca %struct.dt_imageio_dng_preview_t, align 8 ; 10 uses
  %i.d = alloca i32, align 4                      ; 4 uses
  %i.e = alloca [3 x float], align 4              ; 4 uses
  %i.f = alloca [4 x i32], align 16               ; 7 uses
  %i.g = alloca [2 x float], align 8              ; 4 uses
  %i.h = alloca [2 x float], align 8              ; 4 uses
  %i.i = alloca [2 x float], align 4              ; 5 uses
  %i.j = icmp eq ptr %0, null
  %i.k = icmp eq ptr %1, null
  %or.cond.not138 = or i1 %i.j, %i.k
  %i.l = icmp eq ptr %4, null
  %or.cond3.not135 = or i1 %or.cond.not138, %i.l
  %i.m = icmp slt i32 %2, 1
  %or.cond5 = or i1 %i.m, %or.cond3.not135
  %i.n = icmp slt i32 %3, 1
  %or.cond7 = or i1 %i.n, %or.cond5
  br i1 %or.cond7, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @TIFFSetWarningHandler(ptr noundef nonnull @_dt_dng_tiff_warning) #13 ; 0 uses
  %i.p = tail call ptr @TIFFSetErrorHandler(ptr noundef nonnull @_dt_dng_tiff_error) #13 ; 0 uses
  %i.q = tail call ptr @TIFFOpen(ptr noundef nonnull %0, ptr noundef nonnull @.str) #13 ; 32 uses
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.x, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = tail call i32 @TIFFMergeFieldInfo(ptr noundef nonnull %i.q, ptr noundef nonnull @_register_extra_dng_fields.extra, i32 noundef 3) #13 ; 0 uses
  %.not139 = icmp eq ptr %7, null
  br i1 %.not139, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %7, align 8, !tbaa !11     ; 2 uses
  %.not140 = icmp eq ptr %i.s, null
  br i1 %.not140, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !15   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !16
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %bb.g, label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  br label %.thread148

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !17
  %i.ab = icmp sgt i32 %i.aa, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  store i32 0, ptr %i.c, align 4, !tbaa !18
  br i1 %i.ab, label %bb.h, label %.thread148

bb.h:                                             ; preds = %bb.g
  %i.ac = call fastcc ptr @_make_thumb_jpeg(ptr noundef nonnull %i.s, i32 noundef %i.u, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c) ; 4 uses
  %i.ad = icmp ne ptr %i.ac, null                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  br i1 %i.ad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %i.c, align 4, !tbaa !18
  %i.af = load i32, ptr %i.a, align 4, !tbaa !18
  %i.ag = load i32, ptr %i.b, align 4, !tbaa !18
  store ptr %i.ac, ptr %8, align 8, !tbaa !19
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i32 %i.ae, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !18
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 %i.af, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !18
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 %i.ag, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !18
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 20
  store i32 0, ptr %.sroa.5.0..sroa_idx, align 4
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %7, i64 24, i1 false), !tbaa.struct !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ah = phi i32 [ 1, %bb.j ], [ 2, %bb.i ]
  %i.ai = call fastcc i32 @_write_thumb_ifd0(ptr noundef %i.q, ptr noundef nonnull %4, ptr noundef %8, i32 noundef %i.ah)
  %.not141 = icmp eq i32 %i.ai, 0
  br i1 %.not141, label %.thread151, label %bb.l

.thread151:                                       ; preds = %bb.k
  %i.aj = tail call i32 @TIFFCreateDirectory(ptr noundef nonnull %i.q) #13 ; 0 uses
  %i.ak = tail call i32 @TIFFMergeFieldInfo(ptr noundef nonnull %i.q, ptr noundef nonnull @_register_extra_dng_fields.extra, i32 noundef 3) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %.thread148

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.3) #13
  tail call void @g_free(ptr noundef %i.ac) #13
  tail call void @TIFFClose(ptr noundef nonnull %i.q) #13
  %i.al = tail call i32 @g_unlink(ptr noundef nonnull %0) #13 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  br label %bb.w

.thread148:                                       ; preds = %.thread, %bb.g, %.thread151
  %i.am = phi i1 [ %i.ad, %.thread151 ], [ false, %bb.g ], [ false, %.thread ]
  %.0126150 = phi ptr [ %i.ac, %.thread151 ], [ null, %bb.g ], [ null, %.thread ]
  %i.an = phi i1 [ true, %.thread151 ], [ false, %bb.g ], [ false, %.thread ]
  %i.ao = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 254, i32 noundef 0) #13 ; 0 uses
  %i.ap = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 256, i32 noundef %2) #13 ; 0 uses
  %i.aq = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 257, i32 noundef %3) #13 ; 0 uses
  %i.ar = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 258, i32 noundef 16) #13 ; 0 uses
  %i.as = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 277, i32 noundef 3) #13 ; 0 uses
  %i.at = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 284, i32 noundef 1) #13 ; 0 uses
  %i.au = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 262, i32 noundef 34892) #13 ; 0 uses
  %i.av = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 339, i32 noundef 1) #13 ; 0 uses
  %i.aw = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 259, i32 noundef 1) #13 ; 0 uses
  %i.ax = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 274, i32 noundef 1) #13 ; 0 uses
  %i.ay = tail call i32 @TIFFDefaultStripSize(ptr noundef nonnull %i.q, i32 noundef 0) #13
  %i.az = tail call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 278, i32 noundef %i.ay) #13 ; 0 uses
  br i1 %i.an, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.thread148
  tail call fastcc void @_set_dng_shared_metadata(ptr noundef %i.q, ptr noundef nonnull %4)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.thread148
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  store i32 65535, ptr %i.d, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.e, i8 0, i64 12, i1 false)
  %i.ba = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50714, i32 noundef 3, ptr noundef nonnull %i.e) #13 ; 0 uses
  %i.bb = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50717, i32 noundef 1, ptr noundef nonnull %i.d) #13 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #13
  store i32 0, ptr %i.f, align 16, !tbaa !18
  %i.bc = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 0, ptr %i.bc, align 4, !tbaa !18
  %i.bd = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %3, ptr %i.bd, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  store i32 %2, ptr %i.be, align 4, !tbaa !18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #13
  store i64 4575657222473777152, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #13
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #13
  %i.bf = uitofp nneg i32 %2 to float
  store float %i.bf, ptr %i.i, align 4, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.bh = uitofp nneg i32 %3 to float
  store float %i.bh, ptr %i.bg, align 4, !tbaa !38
  %i.bi = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50829, ptr noundef nonnull %i.f) #13 ; 0 uses
  %i.bj = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50718, ptr noundef nonnull %i.g) #13 ; 0 uses
  %i.bk = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50719, ptr noundef nonnull %i.h) #13 ; 0 uses
  %i.bl = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef nonnull %i.q, i32 noundef 50720, ptr noundef nonnull %i.i) #13 ; 0 uses
  %i.bm = zext nneg i32 %2 to i64                 ; 3 uses
  %i.bn = mul nuw nsw i64 %i.bm, 6
  %i.bo = call noalias ptr @g_malloc(i64 noundef %i.bn) #14 ; 6 uses
  %.not142 = icmp eq ptr %i.bo, null
  br i1 %.not142, label %bb.o, label %.preheader.lr.ph.us.preheader

.preheader.lr.ph.us.preheader:                    ; preds = %bb.n
  %i.bp = mul nuw nsw i64 %i.bm, 12
  %9 = mul nuw nsw i64 %i.bm, 3                   ; 6 uses
  %i.bq = zext nneg i32 %3 to i64
  %min.iters.check = icmp ult i32 %2, 2
  %min.iters.check.a = icmp ult i32 %2, 11
  %10 = and i64 %9, 28
  %n.vec = and i64 %9, 8589934560                 ; 4 uses
  %cmp.n = icmp eq i64 %9, %n.vec
  %min.epilog.iters.check = icmp eq i64 %10, 0
  %n.vec.a = and i64 %9, 8589934588               ; 3 uses
  %cmp.n.a = icmp eq i64 %9, %n.vec.a
  br label %.preheader.lr.ph.us

.preheader.lr.ph.us:                              ; preds = %._crit_edge.us, %.preheader.lr.ph.us.preheader
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %._crit_edge.us ], [ 0, %.preheader.lr.ph.us.preheader ] ; 3 uses
  %.idx.us = mul i64 %i.bp, %indvars.iv165
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 %.idx.us ; 3 uses
  br i1 %min.iters.check, label %.preheader.us.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %.preheader.lr.ph.us
  br i1 %min.iters.check.a, label %.preheader.us.preheader.a, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %11 = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index ; 4 uses
  %12 = getelementptr inbounds nuw i8, ptr %11, i64 32
  %13 = getelementptr inbounds nuw i8, ptr %11, i64 64
  %14 = getelementptr inbounds nuw i8, ptr %11, i64 96
  %wide.load = load <8 x float>, ptr %11, align 4, !tbaa !38
  %wide.load180 = load <8 x float>, ptr %12, align 4, !tbaa !38
  %wide.load181 = load <8 x float>, ptr %13, align 4, !tbaa !38
  %wide.load182 = load <8 x float>, ptr %14, align 4, !tbaa !38
  %15 = fmul reassoc nsz arcp contract afn <8 x float> %wide.load, splat (float 6.553500e+04) ; 2 uses
  %16 = fmul reassoc nsz arcp contract afn <8 x float> %wide.load180, splat (float 6.553500e+04) ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn <8 x float> %wide.load181, splat (float 6.553500e+04) ; 2 uses
  %17 = fmul reassoc nsz arcp contract afn <8 x float> %wide.load182, splat (float 6.553500e+04) ; 2 uses
  %18 = fcmp reassoc nsz arcp contract afn olt <8 x float> %15, zeroinitializer
  %19 = fcmp reassoc nsz arcp contract afn olt <8 x float> %16, zeroinitializer
  %20 = fcmp reassoc nsz arcp contract afn olt <8 x float> %i.bs, zeroinitializer
  %i.bt = fcmp reassoc nsz arcp contract afn olt <8 x float> %17, zeroinitializer
  %i.bu = select nsz <8 x i1> %18, <8 x float> zeroinitializer, <8 x float> %15 ; 2 uses
  %21 = select nsz <8 x i1> %19, <8 x float> zeroinitializer, <8 x float> %16 ; 2 uses
  %22 = select nsz <8 x i1> %20, <8 x float> zeroinitializer, <8 x float> %i.bs ; 2 uses
  %i.bv = select nsz <8 x i1> %i.bt, <8 x float> zeroinitializer, <8 x float> %17 ; 2 uses
  %23 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bu, splat (float 6.553500e+04)
  %24 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %21, splat (float 6.553500e+04)
  %25 = fcmp reassoc nsz arcp contract afn ogt <8 x float> %22, splat (float 6.553500e+04)
  %i.bw = fcmp reassoc nsz arcp contract afn ogt <8 x float> %i.bv, splat (float 6.553500e+04)
  %26 = select nsz <8 x i1> %23, <8 x float> splat (float 6.553500e+04), <8 x float> %i.bu
  %27 = select nsz <8 x i1> %24, <8 x float> splat (float 6.553500e+04), <8 x float> %21
  %28 = select nsz <8 x i1> %25, <8 x float> splat (float 6.553500e+04), <8 x float> %22
  %i.bx = select nsz <8 x i1> %i.bw, <8 x float> splat (float 6.553500e+04), <8 x float> %i.bv
  %29 = fadd reassoc nsz arcp contract afn <8 x float> %26, splat (float 5.000000e-01)
  %30 = fadd reassoc nsz arcp contract afn <8 x float> %27, splat (float 5.000000e-01)
  %31 = fadd reassoc nsz arcp contract afn <8 x float> %28, splat (float 5.000000e-01)
  %i.by = fadd reassoc nsz arcp contract afn <8 x float> %i.bx, splat (float 5.000000e-01)
  %32 = fptoui <8 x float> %29 to <8 x i16>
  %33 = fptoui <8 x float> %30 to <8 x i16>
  %34 = fptoui <8 x float> %31 to <8 x i16>
  %35 = fptoui <8 x float> %i.by to <8 x i16>
  %36 = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index ; 4 uses
  %37 = getelementptr inbounds nuw i8, ptr %36, i64 16
  %38 = getelementptr inbounds nuw i8, ptr %36, i64 32
  %39 = getelementptr inbounds nuw i8, ptr %36, i64 48
  store <8 x i16> %32, ptr %36, align 2, !tbaa !36
  store <8 x i16> %33, ptr %37, align 2, !tbaa !36
  store <8 x i16> %34, ptr %38, align 2, !tbaa !36
  store <8 x i16> %35, ptr %39, align 2, !tbaa !36
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bz = icmp eq i64 %index.next, %n.vec
  br i1 %i.bz, label %middle.block, label %vector.body, !llvm.loop !83

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %middle.block.a

middle.block.a:                                   ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %.preheader.us.preheader, label %.preheader.us.preheader.a, !prof !84

.preheader.us.preheader.a:                        ; preds = %vector.main.loop.iter.check, %middle.block.a
  %indvars.iv.ph = phi i64 [ %n.vec, %middle.block.a ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %.preheader.us.preheader.a
  %index184 = phi i64 [ %indvars.iv.ph, %.preheader.us.preheader.a ], [ %index.next186, %vec.epilog.vector.body ] ; 3 uses
  %40 = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %index184
  %wide.load185 = load <4 x float>, ptr %40, align 4, !tbaa !38
  %41 = fmul reassoc nsz arcp contract afn <4 x float> %wide.load185, splat (float 6.553500e+04) ; 2 uses
  %42 = fcmp reassoc nsz arcp contract afn olt <4 x float> %41, zeroinitializer
  %43 = select nsz <4 x i1> %42, <4 x float> zeroinitializer, <4 x float> %41 ; 2 uses
  %44 = fcmp reassoc nsz arcp contract afn ogt <4 x float> %43, splat (float 6.553500e+04)
  %45 = select nsz <4 x i1> %44, <4 x float> splat (float 6.553500e+04), <4 x float> %43
  %46 = fadd reassoc nsz arcp contract afn <4 x float> %45, splat (float 5.000000e-01)
  %47 = fptoui <4 x float> %46 to <4 x i16>
  %48 = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %index184
  store <4 x i16> %47, ptr %48, align 2, !tbaa !36
  %index.next186 = add nuw i64 %index184, 4       ; 2 uses
  %49 = icmp eq i64 %index.next186, %n.vec.a
  br i1 %49, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !85

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n.a, label %._crit_edge.us, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.us, %middle.block.a, %vec.epilog.middle.block
  %indvar160.ph = phi i64 [ 0, %.preheader.lr.ph.us ], [ %n.vec, %middle.block.a ], [ %n.vec.a, %vec.epilog.middle.block ]
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.preheader.us
  %indvars.iv = phi i64 [ %indvars.iv.next.a, %.preheader.us ], [ %indvar160.ph, %.preheader.us.preheader ] ; 3 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !38
  %i.cc = fmul reassoc nsz arcp contract afn float %i.cb, 6.553500e+04 ; 2 uses
  %i.cd = fcmp reassoc nsz arcp contract afn olt float %i.cc, 0.000000e+00
  %.0.us.2 = select nsz i1 %i.cd, float 0.000000e+00, float %i.cc ; 2 uses
  %i.ce = fcmp reassoc nsz arcp contract afn ogt float %.0.us.2, 6.553500e+04
  %.1.us.2 = select nsz i1 %i.ce, float 6.553500e+04, float %.0.us.2
  %i.cf = fadd reassoc nsz arcp contract afn float %.1.us.2, 5.000000e-01
  %i.cg = fptoui float %i.cf to i16
  %i.ch = getelementptr inbounds nuw [2 x i8], ptr %i.bo, i64 %indvars.iv
  store i16 %i.cg, ptr %i.ch, align 2, !tbaa !36
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next.a, %9
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader.us, !llvm.loop !86

._crit_edge.us:                                   ; preds = %.preheader.us, %vec.epilog.middle.block, %middle.block
  %i.ci = trunc nuw nsw i64 %indvars.iv165 to i32
  %i.cj = call i32 @TIFFWriteScanline(ptr noundef nonnull %i.q, ptr noundef nonnull %i.bo, i32 noundef %i.ci, i16 noundef zeroext 0) #13 ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.ck = icmp samesign ult i64 %indvars.iv.next166, %i.bq
  %i.cl = icmp sgt i32 %i.cj, -1                  ; 2 uses
  %i.cm = and i1 %i.cl, %i.ck
  br i1 %i.cm, label %.preheader.lr.ph.us, label %._crit_edge157

bb.o:                                             ; preds = %bb.n
  call void @TIFFClose(ptr noundef nonnull %i.q) #13
  %i.cn = call i32 @g_unlink(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.v

._crit_edge157:                                   ; preds = %._crit_edge.us
  %.lobit.us.le = lshr i32 %i.cj, 31
  call void @g_free(ptr noundef nonnull %i.bo) #13
  %or.cond9 = and i1 %i.am, %i.cl
  br i1 %or.cond9, label %bb.p, label %bb.s

bb.p:                                             ; preds = %._crit_edge157
  %i.co = call i32 @TIFFWriteDirectory(ptr noundef nonnull %i.q) #13
  %.not143 = icmp eq i32 %i.co, 0
  br i1 %.not143, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.4) #13
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.cp = call i32 @TIFFCreateDirectory(ptr noundef nonnull %i.q) #13 ; 0 uses
  %i.cq = call i32 @TIFFMergeFieldInfo(ptr noundef nonnull %i.q, ptr noundef nonnull @_register_extra_dng_fields.extra, i32 noundef 3) #13 ; 0 uses
  %i.cr = call fastcc i32 @_write_full_preview_subifd(ptr noundef %i.q, ptr noundef %7)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge157
  %.2124 = phi i32 [ %.lobit.us.le, %._crit_edge157 ], [ %i.cr, %bb.r ], [ 1, %bb.q ]
  call void @TIFFClose(ptr noundef nonnull %i.q) #13
  call void @g_free(ptr noundef %.0126150) #13
  %i.cs = icmp eq i32 %.2124, 0                   ; 2 uses
  %i.ct = icmp ne ptr %5, null
  %i.cu = icmp sgt i32 %6, 0
  %i.cv = and i1 %i.ct, %i.cu
  %or.cond13 = and i1 %i.cv, %i.cs
  br i1 %or.cond13, label %.thread152, label %bb.t

.thread152:                                       ; preds = %bb.s
  %i.cw = call i32 @dt_exif_write_blob(ptr noundef nonnull %5, i32 noundef %6, ptr noundef nonnull %0, i32 noundef 0) #13 ; 0 uses
  br label %bb.v

bb.t:                                             ; preds = %bb.s
  br i1 %i.cs, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cx = call i32 @g_unlink(ptr noundef nonnull %0) #13 ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %.thread152, %bb.t, %bb.u, %bb.o
  %.1120 = phi i32 [ 1, %bb.o ], [ 1, %bb.u ], [ 0, %bb.t ], [ 0, %.thread152 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #13
  br label %bb.w

bb.w:                                             ; preds = %bb.l, %bb.v
  %.2 = phi i32 [ %.1120, %bb.v ], [ 1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.b, %bb.a
  %.4 = phi i32 [ 1, %bb.a ], [ %.2, %bb.w ], [ 1, %bb.b ]
  ret i32 %.4
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @dt_imageio_dng_write_float(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef readonly captures(none) %7, float noundef %8, ptr nofree noundef readonly captures(none) %9, ptr nofree noundef readonly captures(none) %10) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 96 uses
  %i.b = tail call noalias ptr @fopen(ptr noundef %0, ptr noundef nonnull @.str.5) ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) %i.a, i8 0, i64 1024, i1 false)
  store i8 73, ptr %i.a, align 16, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 73, ptr %i.c, align 1, !tbaa !35
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 42, ptr %i.d, align 2, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i8 8, ptr %i.e, align 4, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i8 20, ptr %i.f, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  store i8 -2, ptr %i.g, align 2, !tbaa !35
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i8 4, ptr %i.h, align 4, !tbaa !35
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 14
  store i8 1, ptr %i.i, align 2, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 23
  store i8 1, ptr %i.j, align 1, !tbaa !35
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 4, ptr %i.k, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 26
  store i8 1, ptr %i.l, align 2, !tbaa !35
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  store i32 %2, ptr %i.m, align 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 34
  store i8 1, ptr %i.n, align 2, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  store i8 1, ptr %i.o, align 1, !tbaa !35
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i8 4, ptr %i.p, align 4, !tbaa !35
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  store i8 1, ptr %i.q, align 2, !tbaa !35
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 42
  store i32 %3, ptr %i.r, align 2
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 46
  store i8 2, ptr %i.s, align 2, !tbaa !35
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 47
  store i8 1, ptr %i.t, align 1, !tbaa !35
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 3, ptr %i.u, align 16, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 50
  store i8 1, ptr %i.v, align 2, !tbaa !35
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 54
  store i8 32, ptr %i.w, align 2, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 58
  store i8 3, ptr %i.x, align 2, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 59
  store i8 1, ptr %i.y, align 1, !tbaa !35
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 60
  store i8 3, ptr %i.z, align 4, !tbaa !35
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 62
  store i8 1, ptr %i.aa, align 2, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 66
  store i8 1, ptr %i.ab, align 2, !tbaa !35
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 70
  store i8 6, ptr %i.ac, align 2, !tbaa !35
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 71
  store i8 1, ptr %i.ad, align 1, !tbaa !35
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i8 3, ptr %i.ae, align 8, !tbaa !35
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 74
  store i8 1, ptr %i.af, align 2, !tbaa !35
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 78
  store i8 35, ptr %i.ag, align 2, !tbaa !35
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 79
  store i8 -128, ptr %i.ah, align 1, !tbaa !35
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 82
  store i8 17, ptr %i.ai, align 2, !tbaa !35
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 83
  store i8 1, ptr %i.aj, align 1, !tbaa !35
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 84
  store i8 4, ptr %i.ak, align 4, !tbaa !35
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 86
  store i8 1, ptr %i.al, align 2, !tbaa !35
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 87
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 90
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 92
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 93
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 94
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.am, i8 0, i64 7, i1 false)
  store i8 18, ptr %i.aq, align 2, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.a, i64 95
  store i8 1, ptr %i.ar, align 1, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i8 3, ptr %i.as, align 16, !tbaa !35
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 98
  store i8 1, ptr %i.at, align 2, !tbaa !35
  %i.au = getelementptr inbounds nuw i8, ptr %i.a, i64 102
  store i8 1, ptr %i.au, align 2, !tbaa !35
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 106
  store i8 21, ptr %i.av, align 2, !tbaa !35
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 107
  store i8 1, ptr %i.aw, align 1, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 108
  store i8 3, ptr %i.ax, align 4, !tbaa !35
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 110
  store i8 1, ptr %i.ay, align 2, !tbaa !35
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 113
  store i8 0, ptr %i.az, align 1, !tbaa !35
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 114
  store i8 1, ptr %i.ba, align 2, !tbaa !35
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i8 0, ptr %i.bb, align 4, !tbaa !35
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 118
  store i8 22, ptr %i.bc, align 2, !tbaa !35
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 119
  store i8 1, ptr %i.bd, align 1, !tbaa !35
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store i8 4, ptr %i.be, align 8, !tbaa !35
end_hunk_0
begin_hunk_1_@dt_imageio_dng_write_float:bb.a
  store i8 %i.db, ptr %i.dh, align 1, !tbaa !35
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 6
  store i8 %i.dd, ptr %i.di, align 4, !tbaa !35
  %i.dj = getelementptr inbounds nuw i8, ptr %i.df, i64 7
  store i8 0, ptr %i.dj, align 1, !tbaa !35
  %i.dk = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dl = extractelement <8 x i32> %i.ct, i64 0
  store i32 %i.dl, ptr %i.dk, align 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.df, i64 12
  store i8 %i.cz, ptr %i.dm, align 2, !tbaa !35
  %i.dn = getelementptr inbounds nuw i8, ptr %i.df, i64 13
  store i8 %i.db, ptr %i.dn, align 1, !tbaa !35
  %i.do = getelementptr inbounds nuw i8, ptr %i.df, i64 14
  store i8 %i.dd, ptr %i.do, align 4, !tbaa !35
  %i.dp = getelementptr inbounds nuw i8, ptr %i.df, i64 15
  store i8 0, ptr %i.dp, align 1, !tbaa !35
  %i.dq = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.dr = extractelement <8 x i32> %i.ct, i64 1
  store i32 %i.dr, ptr %i.dq, align 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.df, i64 20
  store i8 %i.cz, ptr %i.ds, align 2, !tbaa !35
  %i.dt = getelementptr inbounds nuw i8, ptr %i.df, i64 21
  store i8 %i.db, ptr %i.dt, align 1, !tbaa !35
  %i.du = getelementptr inbounds nuw i8, ptr %i.df, i64 22
  store i8 %i.dd, ptr %i.du, align 4, !tbaa !35
  %i.dv = getelementptr inbounds nuw i8, ptr %i.df, i64 23
  store i8 0, ptr %i.dv, align 1, !tbaa !35
  %i.dw = getelementptr inbounds nuw i8, ptr %i.df, i64 24
  %i.dx = extractelement <8 x i32> %i.ct, i64 2
  store i32 %i.dx, ptr %i.dw, align 2
  %i.dy = getelementptr inbounds nuw i8, ptr %i.df, i64 28
  store i8 %i.cz, ptr %i.dy, align 2, !tbaa !35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.df, i64 29
  store i8 %i.db, ptr %i.dz, align 1, !tbaa !35
  %i.ea = getelementptr inbounds nuw i8, ptr %i.df, i64 30
  store i8 %i.dd, ptr %i.ea, align 4, !tbaa !35
  %i.eb = getelementptr inbounds nuw i8, ptr %i.df, i64 31
  store i8 0, ptr %i.eb, align 1, !tbaa !35
  %i.ec = getelementptr inbounds nuw i8, ptr %i.df, i64 32
  %i.ed = extractelement <8 x i32> %i.ct, i64 3
  store i32 %i.ed, ptr %i.ec, align 2
  %i.ee = getelementptr inbounds nuw i8, ptr %i.df, i64 36
  store i8 %i.cz, ptr %i.ee, align 2, !tbaa !35
  %i.ef = getelementptr inbounds nuw i8, ptr %i.df, i64 37
  store i8 %i.db, ptr %i.ef, align 1, !tbaa !35
  %i.eg = getelementptr inbounds nuw i8, ptr %i.df, i64 38
  store i8 %i.dd, ptr %i.eg, align 4, !tbaa !35
  %i.eh = getelementptr inbounds nuw i8, ptr %i.df, i64 39
  store i8 0, ptr %i.eh, align 1, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %i.df, i64 40
  %i.ej = extractelement <8 x i32> %i.ct, i64 4
  store i32 %i.ej, ptr %i.ei, align 2
  %i.ek = getelementptr inbounds nuw i8, ptr %i.df, i64 44
  store i8 %i.cz, ptr %i.ek, align 2, !tbaa !35
  %i.el = getelementptr inbounds nuw i8, ptr %i.df, i64 45
  store i8 %i.db, ptr %i.el, align 1, !tbaa !35
  %i.em = getelementptr inbounds nuw i8, ptr %i.df, i64 46
  store i8 %i.dd, ptr %i.em, align 4, !tbaa !35
  %i.en = getelementptr inbounds nuw i8, ptr %i.df, i64 47
  store i8 0, ptr %i.en, align 1, !tbaa !35
  %i.eo = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  %i.ep = extractelement <8 x i32> %i.ct, i64 5
  store i32 %i.ep, ptr %i.eo, align 2
  %i.eq = getelementptr inbounds nuw i8, ptr %i.df, i64 52
  store i8 %i.cz, ptr %i.eq, align 2, !tbaa !35
  %i.er = getelementptr inbounds nuw i8, ptr %i.df, i64 53
  store i8 %i.db, ptr %i.er, align 1, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %i.df, i64 54
  store i8 %i.dd, ptr %i.es, align 4, !tbaa !35
  %i.et = getelementptr inbounds nuw i8, ptr %i.df, i64 55
  store i8 0, ptr %i.et, align 1, !tbaa !35
  %i.eu = getelementptr inbounds nuw i8, ptr %i.df, i64 56
  %i.ev = extractelement <8 x i32> %i.ct, i64 6
  store i32 %i.ev, ptr %i.eu, align 2
  %i.ew = getelementptr inbounds nuw i8, ptr %i.df, i64 60
  store i8 %i.cz, ptr %i.ew, align 2, !tbaa !35
  %i.ex = getelementptr inbounds nuw i8, ptr %i.df, i64 61
  store i8 %i.db, ptr %i.ex, align 1, !tbaa !35
  %i.ey = getelementptr inbounds nuw i8, ptr %i.df, i64 62
  store i8 %i.dd, ptr %i.ey, align 4, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %i.df, i64 63
  store i8 0, ptr %i.ez, align 1, !tbaa !35
  %i.fa = getelementptr inbounds nuw i8, ptr %i.df, i64 64
  %i.fb = extractelement <8 x i32> %i.ct, i64 7
  store i32 %i.fb, ptr %i.fa, align 2
  %i.fc = getelementptr inbounds nuw i8, ptr %i.df, i64 68
  store i8 %i.cz, ptr %i.fc, align 2, !tbaa !35
  %i.fd = getelementptr inbounds nuw i8, ptr %i.df, i64 69
  store i8 %i.db, ptr %i.fd, align 1, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.df, i64 70
  store i8 %i.dd, ptr %i.fe, align 4, !tbaa !35
  %i.ff = getelementptr inbounds nuw i8, ptr %i.df, i64 71
  store i8 0, ptr %i.ff, align 1, !tbaa !35
  %i.fg = add nuw nsw i32 %.084.i, 72             ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 226
  store <8 x i8> <i8 40, i8 -58, i8 5, i8 0, i8 3, i8 0, i8 0, i8 0>, ptr %i.fh, align 2, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %i.a, i64 234
  %i.fj = trunc nuw nsw i32 %i.fg to i16
  store i16 %i.fj, ptr %i.fi, align 2
  %i.fk = getelementptr inbounds nuw i8, ptr %i.a, i64 236
  store i8 0, ptr %i.fk, align 4, !tbaa !35
  %i.fl = getelementptr inbounds nuw i8, ptr %i.a, i64 237
  store i8 0, ptr %i.fl, align 1, !tbaa !35
  %i.fm = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.fn = zext nneg i32 %i.fg to i64
  %i.fo = load float, ptr %9, align 4, !tbaa !38
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.fn ; 3 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.df, i64 76
  store <4 x i8> <i8 64, i8 66, i8 15, i8 0>, ptr %i.fq, align 2, !tbaa !35
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.df, i64 84
  store <4 x i8> <i8 64, i8 66, i8 15, i8 0>, ptr %i.fs, align 2, !tbaa !35
  %i.ft = load <2 x float>, ptr %i.fm, align 4, !tbaa !38 ; 2 uses
  %i.fu = extractelement <2 x float> %i.ft, i64 0
  %i.fv = fmul reassoc nsz arcp contract afn float %i.fu, 1.000000e+06 ; 2 uses
  %i.fw = fdiv reassoc nsz arcp contract afn float %i.fv, %i.fo
  %i.fx = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.fw)
  %i.fy = fptosi float %i.fx to i32
  store i32 %i.fy, ptr %i.fp, align 2
  %i.fz = insertelement <2 x float> poison, float %i.fv, i64 0
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gb = fdiv reassoc nsz arcp contract afn <2 x float> %i.ga, %i.ft
  %i.gc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.round.v2f32(<2 x float> %i.gb) ; 2 uses
  %i.gd = extractelement <2 x float> %i.gc, i64 0
  %i.ge = fptosi float %i.gd to i32
  store i32 %i.ge, ptr %i.fr, align 2
  %i.gf = extractelement <2 x float> %i.gc, i64 1
  %i.gg = fptosi float %i.gf to i32
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store i32 %i.gg, ptr %i.gh, align 2
  %i.gi = getelementptr inbounds nuw i8, ptr %i.df, i64 92
  store <4 x i8> <i8 64, i8 66, i8 15, i8 0>, ptr %i.gi, align 2, !tbaa !35
  %i.gj = add nuw nsw i32 %.084.i, 96             ; 3 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.a, i64 238
  store <8 x i8> <i8 90, i8 -58, i8 3, i8 0, i8 1, i8 0, i8 0, i8 0>, ptr %i.gk, align 2, !tbaa !35
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 246
  store <4 x i8> <i8 21, i8 0, i8 0, i8 0>, ptr %i.gl, align 2, !tbaa !35
  %i.gm = trunc nuw nsw i32 %i.gj to i16
  store i16 %i.gm, ptr %i.an, align 2
  store i8 0, ptr %i.ao, align 4, !tbaa !35
  store i8 0, ptr %i.ap, align 1, !tbaa !35
  %i.gn = load i8, ptr %i.f, align 8, !tbaa !35
  %.not86.i = icmp eq i8 %i.gn, 20
  br i1 %.not86.i, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_imageio_dng_write_buf.exit108.2.i
  %i.go = zext nneg i32 %i.gj to i64
  %i.gp = call i64 @fwrite(ptr noundef nonnull %i.a, i64 noundef 1, i64 noundef %i.go, ptr noundef nonnull %i.b)
  %i.gq = trunc i64 %i.gp to i32
  %.not87.i = icmp eq i32 %i.gj, %i.gq
  br i1 %.not87.i, label %_imageio_dng_write_tiff_header.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.g, %_imageio_dng_write_buf.exit108.2.i
  %.str.21.sink.i = phi ptr [ @.str.19, %_imageio_dng_write_buf.exit108.2.i ], [ @.str.21, %bb.g ]
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull %.str.21.sink.i) #13
  br label %_imageio_dng_write_tiff_header.exit

_imageio_dng_write_tiff_header.exit:              ; preds = %bb.g, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.gr = sext i32 %2 to i64
  %i.gs = sext i32 %3 to i64
  %i.gt = mul nsw i64 %i.gs, %i.gr
  %i.gu = tail call i64 @fwrite(ptr noundef %1, i64 noundef 4, i64 noundef %i.gt, ptr noundef nonnull %i.b)
  %i.gv = trunc i64 %i.gu to i32
  %i.gw = mul nsw i32 %3, %2
  %.not23 = icmp eq i32 %i.gw, %i.gv
  br i1 %.not23, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_imageio_dng_write_tiff_header.exit
  tail call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.6, ptr noundef %0) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_imageio_dng_write_tiff_header.exit
  %i.gx = tail call i32 @fclose(ptr noundef nonnull %i.b) ; 0 uses
  %.not24 = icmp eq ptr %4, null
  br i1 %.not24, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.gy = tail call i32 @dt_exif_write_blob(ptr noundef nonnull %4, i32 noundef %5, ptr noundef %0, i32 noundef 0) #13 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

declare ptr @TIFFSetWarningHandler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind uwtable
define internal void @_dt_dng_tiff_warning(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #6 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 8), align 8, !tbaa !87
  %i.b = and i32 %i.a, 262144
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.d = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.e = load i64, ptr %3, align 8, !tbaa !129
  %i.f = add nsw i64 %i.e, -1290608000
  %i.g = sitofp reassoc nsz arcp contract afn i64 %i.f to double
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !131
  %i.j = sitofp reassoc nsz arcp contract afn i64 %i.i to double
  %i.k = fmul reassoc nnan nsz arcp contract afn double %i.j, f0x3EB0C6F7A0B5ED8D
  %i.l = fadd reassoc nsz arcp contract afn double %i.k, %i.g
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.m = load double, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3296), align 8, !tbaa !132
  %i.n = fsub reassoc nsz arcp contract afn double %i.l, %i.m
  %.not4 = icmp eq ptr %0, null
  %i.o = select i1 %.not4, ptr @.str.8, ptr %0
  %i.p = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.c, ptr noundef nonnull @.str.7, double noundef %i.n, ptr noundef nonnull %i.o) #16 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.r = tail call i32 @vfprintf(ptr noundef %i.q, ptr noundef %1, ptr noundef %2) #16 ; 0 uses
  %i.s = load ptr, ptr @stderr, align 8, !tbaa !128
  %fputc = tail call i32 @fputc(i32 10, ptr %i.s) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare ptr @TIFFSetErrorHandler(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind uwtable
define internal void @_dt_dng_tiff_error(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #7 {
bb.a:
  %3 = alloca %struct.timeval, align 8            ; 5 uses
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  %i.b = call i32 @gettimeofday(ptr noundef nonnull %3, ptr noundef null) #13 ; 0 uses
  %i.c = load i64, ptr %3, align 8, !tbaa !129
  %i.d = add nsw i64 %i.c, -1290608000
  %i.e = sitofp reassoc nsz arcp contract afn i64 %i.d to double
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !131
  %i.h = sitofp reassoc nsz arcp contract afn i64 %i.g to double
  %i.i = fmul reassoc nnan nsz arcp contract afn double %i.h, f0x3EB0C6F7A0B5ED8D
  %i.j = fadd reassoc nsz arcp contract afn double %i.i, %i.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  %i.k = load double, ptr getelementptr inbounds nuw (i8, ptr @darktable, i64 3296), align 8, !tbaa !132
  %i.l = fsub reassoc nsz arcp contract afn double %i.j, %i.k
  %.not = icmp eq ptr %0, null
  %i.m = select i1 %.not, ptr @.str.8, ptr %0
  %i.n = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.10, double noundef %i.l, ptr noundef nonnull %i.m) #16 ; 0 uses
  %i.o = load ptr, ptr @stderr, align 8, !tbaa !128
  %i.p = tail call i32 @vfprintf(ptr noundef %i.o, ptr noundef %1, ptr noundef %2) #16 ; 0 uses
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !128
  %fputc = tail call i32 @fputc(i32 10, ptr %i.q) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @vfprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

declare i32 @TIFFMergeFieldInfo(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @dt_imageio_jpeg_decompress_header(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @dt_imageio_jpeg_decompress(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc(i64 noundef) local_unnamed_addr #4

declare i32 @dt_imageio_jpeg_compress(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @dt_alloc_aligned(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

declare i64 @TIFFWriteRawStrip(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.maxnum.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.round.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smax.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x i32> @llvm.smin.v2i32(<2 x i32>, <2 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v8i32(<8 x i32>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v8f32(float, <8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.round.v8f32(<8 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.round.v2f32(<2 x float>) #11

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { allocsize(0) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nofree nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #6 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #7 = { cold nofree nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nofree nounwind }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind willreturn memory(read) }
attributes #16 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!7, !8, i64 0}
!7 = !{!"__libc_errno", !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"dt_imageio_dng_preview_t", !13, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!13 = !{!"p1 omnipotent char", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!12, !8, i64 8}
!16 = !{!12, !8, i64 12}
!17 = !{!12, !8, i64 16}
!18 = !{!8, !8, i64 0}
!19 = !{!13, !13, i64 0}
!20 = !{i64 0, i64 8, !19, i64 8, i64 4, !18, i64 12, i64 4, !18, i64 16, i64 4, !18}
!21 = !{!22, !8, i64 1496}
!22 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !23, i64 8, !23, i64 12, !23, i64 16, !23, i64 20, !23, i64 24, !23, i64 28, !23, i64 32, !23, i64 36, !8, i64 40, !9, i64 44, !9, i64 108, !9, i64 172, !9, i64 300, !9, i64 364, !9, i64 428, !9, i64 492, !24, i64 560, !8, i64 568, !9, i64 572, !9, i64 800, !9, i64 864, !9, i64 928, !9, i64 992, !8, i64 1120, !9, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !23, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !24, i64 1448, !24, i64 1456, !24, i64 1464, !24, i64 1472, !8, i64 1480, !25, i64 1488, !9, i64 1616, !13, i64 1656, !8, i64 1664, !8, i64 1668, !29, i64 1672, !30, i64 1680, !32, i64 1704, !27, i64 1736, !9, i64 1738, !8, i64 1748, !8, i64 1752, !23, i64 1756, !23, i64 1760, !9, i64 1776, !9, i64 1792, !9, i64 1840, !33, i64 1856, !34, i64 1864, !8, i64 1872, !8, i64 1876}
!23 = !{!"float", !9, i64 0}
!24 = !{!"long", !9, i64 0}
!25 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !9, i64 12, !26, i64 48, !28, i64 64, !9, i64 96, !8, i64 112}
!26 = !{!"", !27, i64 0, !27, i64 2}
!27 = !{!"short", !9, i64 0}
!28 = !{!"", !8, i64 0, !9, i64 16}
!29 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!30 = !{!"dt_image_geoloc_t", !31, i64 0, !31, i64 8, !31, i64 16}
!31 = !{!"double", !9, i64 0}
!32 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !9, i64 16}
!33 = !{!"p1 _ZTS6_GList", !14, i64 0}
!34 = !{!"p1 _ZTS16dt_cache_entry_t", !14, i64 0}
!35 = !{!9, !9, i64 0}
!36 = !{!27, !27, i64 0}
!37 = !{!22, !27, i64 1736}
!38 = !{!23, !23, i64 0}
!39 = !{!22, !8, i64 1748}
!40 = !{!41, !8, i64 0}
!41 = !{!"dt_imageio_jpeg_t", !8, i64 0, !8, i64 4, !42, i64 8, !43, i64 64, !44, i64 104, !64, i64 760, !75, i64 1344}
!42 = !{!"jpeg_source_mgr", !13, i64 0, !24, i64 8, !14, i64 16, !14, i64 24, !14, i64 32, !14, i64 40, !14, i64 48}
!43 = !{!"jpeg_destination_mgr", !13, i64 0, !24, i64 8, !14, i64 16, !14, i64 24, !14, i64 32}
!44 = !{!"jpeg_decompress_struct", !45, i64 0, !46, i64 8, !47, i64 16, !14, i64 24, !8, i64 32, !8, i64 36, !48, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !8, i64 64, !8, i64 68, !8, i64 72, !31, i64 80, !8, i64 88, !8, i64 92, !8, i64 96, !8, i64 100, !8, i64 104, !8, i64 108, !8, i64 112, !8, i64 116, !8, i64 120, !8, i64 124, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !8, i64 144, !8, i64 148, !8, i64 152, !8, i64 156, !49, i64 160, !8, i64 168, !8, i64 172, !8, i64 176, !8, i64 180, !8, i64 184, !51, i64 192, !9, i64 200, !9, i64 232, !9, i64 264, !8, i64 296, !14, i64 304, !8, i64 312, !8, i64 316, !8, i64 320, !9, i64 324, !9, i64 340, !9, i64 356, !8, i64 372, !8, i64 376, !9, i64 380, !9, i64 381, !9, i64 382, !27, i64 384, !27, i64 386, !8, i64 388, !9, i64 392, !8, i64 396, !52, i64 400, !8, i64 408, !8, i64 412, !8, i64 416, !8, i64 420, !8, i64 424, !13, i64 432, !8, i64 440, !9, i64 448, !8, i64 480, !8, i64 484, !8, i64 488, !9, i64 492, !8, i64 532, !8, i64 536, !8, i64 540, !8, i64 544, !8, i64 548, !51, i64 552, !8, i64 560, !8, i64 564, !53, i64 568, !54, i64 576, !55, i64 584, !56, i64 592, !57, i64 600, !58, i64 608, !59, i64 616, !60, i64 624, !61, i64 632, !62, i64 640, !63, i64 648}
!45 = !{!"p1 _ZTS14jpeg_error_mgr", !14, i64 0}
!46 = !{!"p1 _ZTS15jpeg_memory_mgr", !14, i64 0}
!47 = !{!"p1 _ZTS17jpeg_progress_mgr", !14, i64 0}
!48 = !{!"p1 _ZTS15jpeg_source_mgr", !14, i64 0}
!49 = !{!"p2 omnipotent char", !50, i64 0}
!50 = !{!"any p2 pointer", !14, i64 0}
!51 = !{!"p1 int", !14, i64 0}
!52 = !{!"p1 _ZTS18jpeg_marker_struct", !14, i64 0}
!53 = !{!"p1 _ZTS18jpeg_decomp_master", !14, i64 0}
!54 = !{!"p1 _ZTS22jpeg_d_main_controller", !14, i64 0}
!55 = !{!"p1 _ZTS22jpeg_d_coef_controller", !14, i64 0}
!56 = !{!"p1 _ZTS22jpeg_d_post_controller", !14, i64 0}
!57 = !{!"p1 _ZTS21jpeg_input_controller", !14, i64 0}
!58 = !{!"p1 _ZTS18jpeg_marker_reader", !14, i64 0}
!59 = !{!"p1 _ZTS20jpeg_entropy_decoder", !14, i64 0}
!60 = !{!"p1 _ZTS16jpeg_inverse_dct", !14, i64 0}
!61 = !{!"p1 _ZTS14jpeg_upsampler", !14, i64 0}
!62 = !{!"p1 _ZTS22jpeg_color_deconverter", !14, i64 0}
!63 = !{!"p1 _ZTS20jpeg_color_quantizer", !14, i64 0}
!64 = !{!"jpeg_compress_struct", !45, i64 0, !46, i64 8, !47, i64 16, !14, i64 24, !8, i64 32, !8, i64 36, !65, i64 40, !8, i64 48, !8, i64 52, !8, i64 56, !8, i64 60, !31, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !8, i64 84, !8, i64 88, !8, i64 92, !8, i64 96, !14, i64 104, !9, i64 112, !9, i64 144, !9, i64 160, !9, i64 192, !9, i64 224, !9, i64 240, !9, i64 256, !8, i64 272, !14, i64 280, !8, i64 288, !8, i64 292, !8, i64 296, !8, i64 300, !8, i64 304, !8, i64 308, !8, i64 312, !8, i64 316, !8, i64 320, !8, i64 324, !9, i64 328, !9, i64 329, !9, i64 330, !27, i64 332, !27, i64 334, !8, i64 336, !8, i64 340, !8, i64 344, !8, i64 348, !8, i64 352, !8, i64 356, !8, i64 360, !8, i64 364, !8, i64 368, !9, i64 376, !8, i64 408, !8, i64 412, !8, i64 416, !9, i64 420, !8, i64 460, !8, i64 464, !8, i64 468, !8, i64 472, !8, i64 476, !51, i64 480, !8, i64 488, !66, i64 496, !67, i64 504, !68, i64 512, !69, i64 520, !70, i64 528, !71, i64 536, !72, i64 544, !73, i64 552, !74, i64 560, !14, i64 568, !8, i64 576}
!65 = !{!"p1 _ZTS20jpeg_destination_mgr", !14, i64 0}
!66 = !{!"p1 _ZTS16jpeg_comp_master", !14, i64 0}
!67 = !{!"p1 _ZTS22jpeg_c_main_controller", !14, i64 0}
!68 = !{!"p1 _ZTS22jpeg_c_prep_controller", !14, i64 0}
!69 = !{!"p1 _ZTS22jpeg_c_coef_controller", !14, i64 0}
!70 = !{!"p1 _ZTS18jpeg_marker_writer", !14, i64 0}
!71 = !{!"p1 _ZTS20jpeg_color_converter", !14, i64 0}
!72 = !{!"p1 _ZTS16jpeg_downsampler", !14, i64 0}
!73 = !{!"p1 _ZTS16jpeg_forward_dct", !14, i64 0}
!74 = !{!"p1 _ZTS20jpeg_entropy_encoder", !14, i64 0}
!75 = !{!"p1 _ZTS8_IO_FILE", !14, i64 0}
!76 = !{!41, !8, i64 4}
!77 = distinct !{!77, !78, !79}
!78 = !{!"llvm.loop.isvectorized", i32 1}
!79 = !{!"llvm.loop.unroll.runtime.disable"}
!80 = !{!"branch_weights", i32 8, i32 24}
!81 = distinct !{!81, !78, !79}
!82 = distinct !{!82, !79, !78}
!83 = distinct !{!83, !78, !79}
!84 = !{!"branch_weights", i32 4, i32 28}
!85 = distinct !{!85, !78, !79}
!86 = distinct !{!86, !79, !78}
!87 = !{!88, !8, i64 8}
!88 = !{!"darktable_t", !89, i64 0, !8, i64 4, !8, i64 8, !33, i64 16, !33, i64 24, !33, i64 32, !33, i64 40, !90, i64 48, !91, i64 56, !92, i64 64, !93, i64 72, !94, i64 80, !95, i64 88, !96, i64 96, !97, i64 104, !98, i64 112, !99, i64 120, !100, i64 128, !101, i64 136, !102, i64 144, !103, i64 152, !104, i64 160, !105, i64 168, !106, i64 176, !107, i64 184, !108, i64 192, !109, i64 200, !110, i64 208, !111, i64 216, !112, i64 224, !9, i64 232, !113, i64 2792, !113, i64 2832, !113, i64 2872, !113, i64 2912, !113, i64 2952, !113, i64 2992, !13, i64 3032, !13, i64 3040, !13, i64 3048, !13, i64 3056, !13, i64 3064, !13, i64 3072, !13, i64 3080, !13, i64 3088, !13, i64 3096, !13, i64 3104, !13, i64 3112, !13, i64 3120, !13, i64 3128, !114, i64 3136, !33, i64 3288, !31, i64 3296, !33, i64 3304, !8, i64 3312, !9, i64 3316, !8, i64 3512, !8, i64 3516, !121, i64 3520, !122, i64 3528, !123, i64 3536, !124, i64 3576, !125, i64 3600, !126, i64 3632, !8, i64 3672}
!89 = !{!"dt_codepath_t", !8, i64 0}
!90 = !{!"p1 _ZTS11_JsonParser", !14, i64 0}
!91 = !{!"p1 _ZTS9dt_conf_t", !14, i64 0}
!92 = !{!"p1 _ZTS12dt_develop_t", !14, i64 0}
!93 = !{!"p1 _ZTS8dt_lib_t", !14, i64 0}
!94 = !{!"p1 _ZTS17dt_view_manager_t", !14, i64 0}
!95 = !{!"p1 _ZTS12dt_control_t", !14, i64 0}
!96 = !{!"p1 _ZTS19dt_control_signal_t", !14, i64 0}
!97 = !{!"p1 _ZTS12dt_gui_gtk_t", !14, i64 0}
!98 = !{!"p1 _ZTS17dt_mipmap_cache_t", !14, i64 0}
!99 = !{!"p1 _ZTS16dt_image_cache_t", !14, i64 0}
!100 = !{!"p1 _ZTS12dt_bauhaus_t", !14, i64 0}
!101 = !{!"p1 _ZTS13dt_database_t", !14, i64 0}
!102 = !{!"p1 _ZTS14dt_pwstorage_t", !14, i64 0}
!103 = !{!"p1 _ZTS11dt_camctl_t", !14, i64 0}
!104 = !{!"p1 _ZTS15dt_collection_t", !14, i64 0}
!105 = !{!"p1 _ZTS14dt_selection_t", !14, i64 0}
!106 = !{!"p1 _ZTS11dt_points_t", !14, i64 0}
!107 = !{!"p1 _ZTS12dt_imageio_t", !14, i64 0}
!108 = !{!"p1 _ZTS11dt_opencl_t", !14, i64 0}
!109 = !{!"p1 _ZTS9dt_dbus_t", !14, i64 0}
!110 = !{!"p1 _ZTS9dt_undo_t", !14, i64 0}
!111 = !{!"p1 _ZTS16dt_colorspaces_t", !14, i64 0}
!112 = !{!"p1 _ZTS9dt_l10n_t", !14, i64 0}
!113 = !{!"dt_pthread_mutex_t", !9, i64 0}
!114 = !{!"", !115, i64 0, !113, i64 8, !9, i64 48, !116, i64 96, !116, i64 97, !117, i64 104, !118, i64 112, !119, i64 120, !120, i64 128, !120, i64 136, !120, i64 144}
!115 = !{!"p1 _ZTS9lua_State", !14, i64 0}
!116 = !{!"_Bool", !9, i64 0}
!117 = !{!"p1 _ZTS10_GMainLoop", !14, i64 0}
!118 = !{!"p1 _ZTS13_GMainContext", !14, i64 0}
!119 = !{!"p1 _ZTS12_GThreadPool", !14, i64 0}
!120 = !{!"p1 _ZTS12_GAsyncQueue", !14, i64 0}
!121 = !{!"p1 _ZTS10_GTimeZone", !14, i64 0}
!122 = !{!"p1 _ZTS10_GDateTime", !14, i64 0}
!123 = !{!"dt_sys_resources_t", !24, i64 0, !24, i64 8, !51, i64 16, !51, i64 24, !8, i64 32}
!124 = !{!"dt_backthumb_t", !31, i64 0, !31, i64 8, !8, i64 16, !8, i64 20}
!125 = !{!"dt_gimp_t", !8, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28}
!126 = !{!"dt_splash_t", !127, i64 0, !127, i64 8, !127, i64 16, !127, i64 24, !8, i64 32}
!127 = !{!"p1 _ZTS10_GtkWidget", !14, i64 0}
!128 = !{!75, !75, i64 0}
!129 = !{!130, !24, i64 0}
!130 = !{!"timeval", !24, i64 0, !24, i64 8}
!131 = !{!130, !24, i64 8}
!132 = !{!88, !31, i64 3296}
end_hunk_1
