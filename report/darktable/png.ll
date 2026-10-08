Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/png?download=true
inline.NumInlined: 2
inline.NumDeleted: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.darktable_t = type { %struct.dt_codepath_t, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [64 x %struct.dt_pthread_mutex_t], %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, %struct.dt_pthread_mutex_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dt_lua_state_t, ptr, double, ptr, i32, [49 x i32], i32, i32, ptr, ptr, %struct.dt_sys_resources_t, %struct.dt_backthumb_t, %struct.dt_gimp_t, %struct.dt_splash_t, i32 }
%struct.dt_codepath_t = type { i8, [3 x i8] }
%struct.dt_pthread_mutex_t = type { %union.pthread_mutex_t }
%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%struct.dt_lua_state_t = type { ptr, %struct.dt_pthread_mutex_t, %union.pthread_cond_t, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }
%struct.dt_sys_resources_t = type { i64, i64, ptr, ptr, i32 }
%struct.dt_backthumb_t = type { double, double, i32, i32 }
%struct.dt_gimp_t = type { i32, ptr, ptr, i32, i32 }
%struct.dt_splash_t = type { ptr, ptr, ptr, ptr, i32 }

@.str = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"1.6.43\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"icc\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"Exif\00\00\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"exif\00", align 1
@__const.write_image.chunk_name = private unnamed_addr constant [5 x i8] c"cICP\00", align 1
@darktable = external local_unnamed_addr global %struct.darktable_t, align 8
@.str.7 = private unnamed_addr constant [31 x i8] c"[png] out of memory writing %s\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"plugins/imageio/format/png/bpp\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"plugins/imageio/format/png/compression\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"image/png\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c"png\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"PNG\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"dt_imageio_png_t\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"bpp\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@gui_init.texts = internal global [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr null], align 16
@.str.16 = private unnamed_addr constant [6 x i8] c"8 bit\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"16 bit\00", align 1
@.str.18 = private unnamed_addr constant [10 x i8] c"bit depth\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"compression\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"value-changed\00", align 1
@.str.21 = private unnamed_addr constant [61 x i8] c"/opt-bench/work/darktable/darktable/src/imageio/format/png.c\00", align 1
@__FUNCTION__.gui_init = private unnamed_addr constant [9 x i8] c"gui_init\00", align 1
@__const.PNGwriteRawProfile.hex = private unnamed_addr constant [16 x i8] c"0123456789abcdef", align 16
@.str.22 = private unnamed_addr constant [44 x i8] c"[png] out of memory adding profile to image\00", align 1
@.str.23 = private unnamed_addr constant [18 x i8] c"Raw profile type \00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"%8lu \00", align 1
@switch.table.write_image = private unnamed_addr constant [26 x i8] [i8 1, i8 poison, i8 1, i8 9, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 9, i8 9, i8 12, i8 12, i8 12], align 1
@switch.table.write_image.3 = private unnamed_addr constant [26 x i8] [i8 13, i8 poison, i8 8, i8 8, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 1, i8 poison, i8 16, i8 18, i8 16, i8 18, i8 13], align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_dt_version() local_unnamed_addr #0 {
bb.a:
  ret i32 25
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @dt_module_mod_version() local_unnamed_addr #0 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @write_image(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, ptr nofree noundef readonly captures(address_is_null) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr nofree noundef readnone captures(none) %10, i32 noundef %11) local_unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 23 uses
  %i.b = alloca ptr, align 8                      ; 10 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca i32, align 4                      ; 7 uses
  %i.e = alloca [512 x i8], align 16              ; 6 uses
  %i.f = alloca [5 x i8], align 1                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !41   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = load i32, ptr %i.i, align 4, !tbaa !17   ; 10 uses
  %i.k = call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str) ; 6 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.ag, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  %i.l = call noalias ptr @png_create_write_struct(ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null) #18 ; 3 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !42
  %.not74 = icmp eq ptr %i.l, null
  br i1 %.not74, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  %i.n = call noalias ptr @png_create_info_struct(ptr noundef nonnull %i.l) #18 ; 2 uses
  store ptr %i.n, ptr %i.b, align 8, !tbaa !18
  %.not75 = icmp eq ptr %i.n, null
  br i1 %.not75, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef null) #18
  br label %bb.af

bb.f:                                             ; preds = %bb.d
  %i.p = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.q = call ptr @png_set_longjmp_fn(ptr noundef %i.p, ptr noundef nonnull @longjmp, i64 noundef 200) #18
  %i.r = call i32 @_setjmp(ptr noundef %i.q) #19
  %.not76 = icmp eq i32 %i.r, 0
  br i1 %.not76, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = call i32 @fclose(ptr noundef nonnull %i.k) ; 0 uses
  call void @png_destroy_write_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #18
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_init_io(ptr noundef %i.t, ptr noundef nonnull %i.k) #18
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.w = load i32, ptr %i.v, align 8, !tbaa !19
  call void @png_set_compression_level(ptr noundef %i.u, i32 noundef %i.w) #18
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_compression_mem_level(ptr noundef %i.x, i32 noundef 8) #18
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_compression_strategy(ptr noundef %i.y, i32 noundef 0) #18
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_compression_window_bits(ptr noundef %i.z, i32 noundef 15) #18
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_compression_method(ptr noundef %i.aa, i32 noundef 8) #18
  %i.ab = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_compression_buffer_size(ptr noundef %i.ab, i64 noundef 8192) #18
  %i.ac = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.ad = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 148 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !20
  call void @png_set_IHDR(ptr noundef %i.ac, ptr noundef %i.ad, i32 noundef %i.h, i32 noundef %i.j, i32 noundef %i.af, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0) #18
  %i.ag = call ptr @dt_colorspaces_get_output_profile(i32 noundef %7, i32 noundef %3, ptr noundef %4) #18 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 1032
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !44 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 16777730, ptr %i.c, align 4
  %i.aj = load i32, ptr %i.ag, align 8, !tbaa !45
  %switch.tableidx = add i32 %i.aj, -1            ; 4 uses
  %i.ak = icmp ult i32 %switch.tableidx, 26
  %switch.shifted = lshr i32 65536013, %switch.tableidx
  %switch.lobit = trunc i32 %switch.shifted to i1
  %or.cond174 = select i1 %i.ak, i1 %switch.lobit, i1 false
  br i1 %or.cond174, label %switch.lookup, label %bb.i

switch.lookup:                                    ; preds = %bb.h
  %i.al = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table.write_image, i64 %i.al
  %switch.load = load i8, ptr %switch.gep, align 1 ; 2 uses
  %i.am = zext nneg i32 %switch.tableidx to i64
  %switch.gep172 = getelementptr inbounds nuw i8, ptr @switch.table.write_image.3, i64 %i.am
  %switch.load173 = load i8, ptr %switch.gep172, align 1 ; 2 uses
  store i8 %switch.load, ptr %i.c, align 4, !tbaa !46
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  store i8 %switch.load173, ptr %i.an, align 1, !tbaa !46
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %switch.lookup
  %12 = phi i8 [ 2, %bb.h ], [ %switch.load173, %switch.lookup ] ; 3 uses
  %13 = phi i8 [ 2, %bb.h ], [ %switch.load, %switch.lookup ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !21
  %i.ao = call i32 @cmsSaveProfileToMem(ptr noundef %i.ai, ptr noundef null, ptr noundef nonnull %i.d) #18 ; 0 uses
  %i.ap = load i32, ptr %i.d, align 4, !tbaa !21  ; 2 uses
  %.not77 = icmp eq i32 %i.ap, 0
  br i1 %.not77, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = zext i32 %i.ap to i64
  %i.ar = call noalias ptr @malloc(i64 noundef %i.aq) #20 ; 4 uses
  %.not78 = icmp eq ptr %i.ar, null
  br i1 %.not78, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.as = call i32 @cmsSaveProfileToMem(ptr noundef %i.ai, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.d) #18 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(512) %i.e, i8 0, i64 512, i1 false)
  call void @dt_colorspaces_get_profile_name(ptr noundef %i.ai, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.e, i64 noundef 512) #18
  %i.at = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.au = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.av = load i8, ptr %i.e, align 16, !tbaa !46
  %.not79 = icmp eq i8 %i.av, 0
  %i.aw = select i1 %.not79, ptr @.str.4, ptr %i.e
  %i.ax = load i32, ptr %i.d, align 4, !tbaa !21
  call void @png_set_iCCP(ptr noundef %i.at, ptr noundef %i.au, ptr noundef nonnull %i.aw, i32 noundef 0, ptr noundef nonnull %i.ar, i32 noundef %i.ax) #18
  call void @free(ptr noundef nonnull %i.ar) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %i.ay = icmp ne ptr %5, null
  %i.az = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.ay, %i.az
  br i1 %or.cond, label %bb.m, label %bb.y

bb.m:                                             ; preds = %bb.l
  %i.ba = add nuw nsw i32 %6, 6                   ; 3 uses
  %i.bb = zext nneg i32 %i.ba to i64              ; 4 uses
  %i.bc = call noalias ptr @malloc(i64 noundef %i.bb) #20 ; 5 uses
  %.not80 = icmp eq ptr %i.bc, null
  br i1 %.not80, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.bc, ptr noundef nonnull align 1 dereferenceable(6) @.str.5, i64 6, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 6
  %i.be = zext nneg i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bd, ptr nonnull align 1 %5, i64 %i.be, i1 false)
  %i.bf = load ptr, ptr %i.a, align 8, !tbaa !42  ; 7 uses
  %i.bg = load ptr, ptr %i.b, align 8, !tbaa !18
  %i.bh = call noalias ptr @png_malloc(ptr noundef %i.bf, i64 noundef 56) #18 ; 7 uses
  %.not.i = icmp eq ptr %i.bh, null
  br i1 %.not.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #18
  br label %PNGwriteRawProfile.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = shl nuw i32 %i.ba, 1
  %i.bj = lshr i32 %i.ba, 5
  %i.bk = add nuw nsw i32 %i.bj, 24
  %i.bl = add i32 %i.bk, %i.bi
  %i.bm = zext i32 %i.bl to i64                   ; 4 uses
  %i.bn = call noalias ptr @png_malloc(ptr noundef %i.bf, i64 noundef %i.bm) #18 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 5 uses
  store ptr %i.bn, ptr %i.bo, align 8, !tbaa !48
  %i.bp = call noalias ptr @png_malloc(ptr noundef %i.bf, i64 noundef 80) #18 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 3 uses
  store ptr %i.bp, ptr %i.bq, align 8, !tbaa !49
  %.not61.i = icmp eq ptr %i.bn, null
  %.not62.i = icmp eq ptr %i.bp, null
  %or.cond.i = select i1 %.not61.i, i1 true, i1 %.not62.i
  br i1 %or.cond.i, label %bb.q, label %.new

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @dt_print_ext(ptr noundef nonnull @.str.22) #18
  br label %bb.x

.new:                                             ; preds = %bb.p
  store i8 0, ptr %i.bp, align 1, !tbaa !46
  %i.br = call i64 @g_strlcat(ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.23, i64 noundef 80) #18 ; 0 uses
  %i.bs = load ptr, ptr %i.bq, align 8, !tbaa !49
  %i.bt = call i64 @g_strlcat(ptr noundef %i.bs, ptr noundef nonnull @.str.6, i64 noundef 80) #18 ; 0 uses
  %i.bu = load ptr, ptr %i.bo, align 8, !tbaa !48 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store i8 10, ptr %i.bu, align 1, !tbaa !46
  %i.bw = call i64 @g_strlcpy(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.6, i64 noundef %i.bm) #18 ; 0 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 5
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 6 ; 2 uses
  store i8 10, ptr %i.bx, align 1, !tbaa !46
  store i8 0, ptr %i.by, align 1, !tbaa !46
  %i.bz = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.ca = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bz) #21
  %i.cb = sub i64 %i.bm, %i.ca
  %i.cc = call i32 (ptr, i64, ptr, ...) @g_snprintf(ptr noundef nonnull %i.by, i64 noundef %i.cb, ptr noundef nonnull @.str.24, i64 noundef %i.bb) #18 ; 0 uses
  %xtraiter = and i64 %i.bb, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bu, i64 14
  %unroll_iter = and i64 %i.bb, 2147483646
  br label %bb.r

bb.r:                                             ; preds = %bb.t, %.new
  %.03.i = phi ptr [ %i.cd, %.new ], [ %i.dg, %bb.t ] ; 3 uses
  %.0572.i = phi ptr [ %i.bc, %.new ], [ %i.da, %bb.t ] ; 4 uses
  %.0581.i = phi i64 [ 0, %.new ], [ %i.dh, %bb.t ] ; 2 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.t ]
  %i.ce = urem i64 %.0581.i, 36
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.cg = getelementptr inbounds nuw i8, ptr %.03.i, i64 1
  store i8 10, ptr %.03.i, align 1, !tbaa !46
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.1.i = phi ptr [ %i.cg, %bb.s ], [ %.03.i, %bb.r ] ; 5 uses
  %i.ch = load i8, ptr %.0572.i, align 1, !tbaa !46
  %i.ci = lshr i8 %i.ch, 4
  %i.cj = zext nneg i8 %i.ci to i64
  %i.ck = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.cj
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !46
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i, i64 1
  store i8 %i.cl, ptr %.1.i, align 1, !tbaa !46
  %i.cn = getelementptr inbounds nuw i8, ptr %.0572.i, i64 1 ; 2 uses
  %i.co = load i8, ptr %.0572.i, align 1, !tbaa !46
  %i.cp = and i8 %i.co, 15
  %i.cq = zext nneg i8 %i.cp to i64
  %i.cr = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !46
  %i.ct = getelementptr inbounds nuw i8, ptr %.1.i, i64 2 ; 2 uses
  store i8 %i.cs, ptr %i.cm, align 1, !tbaa !46
  %i.cu = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.cv = lshr i8 %i.cu, 4
  %i.cw = zext nneg i8 %i.cv to i64
  %i.cx = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1, !tbaa !46
  %i.cz = getelementptr inbounds nuw i8, ptr %.1.i, i64 3
  store i8 %i.cy, ptr %i.ct, align 1, !tbaa !46
  %i.da = getelementptr inbounds nuw i8, ptr %.0572.i, i64 2 ; 3 uses
  %i.db = load i8, ptr %i.cn, align 1, !tbaa !46
  %i.dc = and i8 %i.db, 15
  %i.dd = zext nneg i8 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.dd
  %i.df = load i8, ptr %i.de, align 1, !tbaa !46
  %i.dg = getelementptr inbounds nuw i8, ptr %.1.i, i64 4 ; 5 uses
  store i8 %i.df, ptr %i.cz, align 1, !tbaa !46
  %i.dh = add nuw nsw i64 %.0581.i, 2             ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r

.unr-lcssa:                                       ; preds = %bb.t
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.v, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod178 = trunc i32 %6 to i1
  call void @llvm.assume(i1 %lcmp.mod178)
  %i.di = urem i64 %i.dh, 36
  %i.dj = icmp eq i64 %i.di, 0
  br i1 %i.dj, label %bb.u, label %.epilog-lcssa

bb.u:                                             ; preds = %.epil.preheader
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 1
  store i8 10, ptr %i.dg, align 1, !tbaa !46
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %bb.u, %.epil.preheader
  %.1.i.epil = phi ptr [ %i.dk, %bb.u ], [ %i.dg, %.epil.preheader ] ; 4 uses
  %i.dl = load i8, ptr %i.da, align 1, !tbaa !46
  %i.dm = lshr i8 %i.dl, 4
  %i.dn = zext nneg i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !46
  %i.dq = getelementptr inbounds nuw i8, ptr %.1.i.epil, i64 1
  store i8 %i.dp, ptr %.1.i.epil, align 1, !tbaa !46
  %i.dr = load i8, ptr %i.da, align 1, !tbaa !46
  %i.ds = and i8 %i.dr, 15
  %i.dt = zext nneg i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @__const.PNGwriteRawProfile.hex, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !46
  %i.dw = getelementptr inbounds nuw i8, ptr %.1.i.epil, i64 2
  store i8 %i.dv, ptr %i.dq, align 1, !tbaa !46
  br label %bb.v

bb.v:                                             ; preds = %.unr-lcssa, %.epilog-lcssa
  %.1.i.lcssa = phi ptr [ %i.ct, %.unr-lcssa ], [ %.1.i.epil, %.epilog-lcssa ]
  %.lcssa = phi ptr [ %i.dg, %.unr-lcssa ], [ %i.dw, %.epilog-lcssa ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.1.i.lcssa, i64 3 ; 2 uses
  store i8 10, ptr %.lcssa, align 1, !tbaa !46
  store i8 0, ptr %i.dx, align 1, !tbaa !46
  %i.dy = load ptr, ptr %i.bo, align 8, !tbaa !48
  %i.dz = ptrtoint ptr %i.dx to i64
  %i.ea = ptrtoint ptr %i.dy to i64
  %i.eb = sub i64 %i.dz, %i.ea                    ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  store i64 %i.eb, ptr %i.ec, align 8, !tbaa !50
  store i32 -1, ptr %i.bh, align 8, !tbaa !51
  %.not63.i = icmp ugt i64 %i.eb, %i.bm
  br i1 %.not63.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @png_set_text(ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef nonnull %i.bh, i32 noundef 1) #18
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.q
  %i.ed = load ptr, ptr %i.bo, align 8, !tbaa !48
  call void @png_free(ptr noundef %i.bf, ptr noundef %i.ed) #18
  %i.ee = load ptr, ptr %i.bq, align 8, !tbaa !49
  call void @png_free(ptr noundef %i.bf, ptr noundef %i.ee) #18
  call void @png_free(ptr noundef %i.bf, ptr noundef nonnull %i.bh) #18
  %.pre.pre = load i8, ptr %i.c, align 4, !tbaa !46
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %.pre95.pre = load i8, ptr %.phi.trans.insert.phi.trans.insert, align 1
  br label %PNGwriteRawProfile.exit

PNGwriteRawProfile.exit:                          ; preds = %bb.o, %bb.x
  %.pre95 = phi i8 [ %12, %bb.o ], [ %.pre95.pre, %bb.x ]
  %.pre = phi i8 [ %13, %bb.o ], [ %.pre.pre, %bb.x ]
  call void @free(ptr noundef %i.bc) #18
  br label %bb.y

bb.y:                                             ; preds = %bb.m, %PNGwriteRawProfile.exit, %bb.l
  %14 = phi i8 [ %12, %bb.m ], [ %.pre95, %PNGwriteRawProfile.exit ], [ %12, %bb.l ]
  %15 = phi i8 [ %13, %bb.m ], [ %.pre, %PNGwriteRawProfile.exit ], [ %13, %bb.l ]
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !42
  %i.eg = load ptr, ptr %i.b, align 8, !tbaa !18
  call void @png_write_info(ptr noundef %i.ef, ptr noundef %i.eg) #18
  %i.eh = icmp ne i8 %15, 2
  %i.ei = icmp ne i8 %14, 2
  %or.cond5 = select i1 %i.eh, i1 %i.ei, i1 false
  br i1 %or.cond5, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.f, ptr noundef nonnull align 1 dereferenceable(5) @__const.write_image.chunk_name, i64 5, i1 false)
  %i.ej = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_write_chunk(ptr noundef %i.ej, ptr noundef nonnull %i.f, ptr noundef nonnull %i.c, i64 noundef 4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ek = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_filler(ptr noundef %i.ek, i32 noundef 0, i32 noundef 1) #18
  %i.el = sext i32 %i.j to i64
  %i.em = shl nsw i64 %i.el, 3
  %i.en = call ptr @dt_alloc_aligned(i64 noundef %i.em) #18 ; 10 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.en, i64 64) ]
  %.not81 = icmp eq ptr %i.en, null
  br i1 %.not81, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = load i32, ptr %i.ae, align 4, !tbaa !20
  %i.ep = icmp sgt i32 %i.eo, 8
  br i1 %i.ep, label %bb.ac, label %.preheader

.preheader:                                       ; preds = %bb.ab
  %.not86 = icmp eq i32 %i.j, 0
  br i1 %.not86, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %.preheader
  %i.eq = sext i32 %i.h to i64
  %i.er = shl nsw i64 %i.eq, 2                    ; 3 uses
  %wide.trip.count = zext i32 %i.j to i64         ; 6 uses
  %min.iters.check = icmp ult i32 %i.j, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check115 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check115, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.es = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 5 uses
  %step.add = add nuw <4 x i64> %vec.ind, splat (i64 4)
  %step.add.2 = add nuw <4 x i64> %vec.ind, splat (i64 8)
  %step.add.3 = add nuw <4 x i64> %vec.ind, splat (i64 12)
  %i.et = mul <4 x i64> %broadcast.splat, %vec.ind
  %i.eu = mul <4 x i64> %broadcast.splat, %step.add
  %i.ev = mul <4 x i64> %broadcast.splat, %step.add.2
  %i.ew = mul <4 x i64> %broadcast.splat, %step.add.3
  %wide.gep = getelementptr inbounds nuw i8, ptr %2, <4 x i64> %i.et
  %wide.gep116 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> %i.eu
  %wide.gep117 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> %i.ev
  %wide.gep118 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> %i.ew
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index ; 4 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ex, i64 64
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ex, i64 96
  store <4 x ptr> %wide.gep, ptr %i.ex, align 64, !tbaa !52
  store <4 x ptr> %wide.gep116, ptr %i.ey, align 32, !tbaa !52
  store <4 x ptr> %wide.gep117, ptr %i.ez, align 64, !tbaa !52
  store <4 x ptr> %wide.gep118, ptr %i.fa, align 32, !tbaa !52
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next = add nuw <4 x i64> %vec.ind, splat (i64 16)
  %i.fb = icmp eq i64 %index.next, %n.vec
  br i1 %i.fb, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.es, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !55

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ] ; 2 uses
  %n.vec119 = and i64 %wide.trip.count, 4294967292 ; 3 uses
  %broadcast.splatinsert120 = insertelement <4 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat121 = shufflevector <4 x i64> %broadcast.splatinsert120, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert122 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val, i64 0
  %broadcast.splat123 = shufflevector <4 x i64> %broadcast.splatinsert122, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction = or disjoint <4 x i64> %broadcast.splat123, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind125 = phi <4 x i64> [ %induction, %vec.epilog.ph ], [ %vec.ind.next128, %vec.epilog.vector.body ] ; 2 uses
  %i.fc = mul <4 x i64> %broadcast.splat121, %vec.ind125
  %wide.gep126 = getelementptr inbounds nuw i8, ptr %2, <4 x i64> %i.fc
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index124
  store <4 x ptr> %wide.gep126, ptr %i.fd, align 32, !tbaa !52
  %index.next127 = add nuw i64 %index124, 4       ; 2 uses
  %vec.ind.next128 = add nuw nsw <4 x i64> %vec.ind125, splat (i64 4)
  %i.fe = icmp eq i64 %index.next127, %n.vec119
  br i1 %i.fe, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !36

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n129 = icmp eq i64 %n.vec119, %wide.trip.count
  br i1 %cmp.n129, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec119, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

bb.ac:                                            ; preds = %bb.ab
  %i.ff = load ptr, ptr %i.a, align 8, !tbaa !42
  call void @png_set_swap(ptr noundef %i.ff) #18
  %.not87 = icmp eq i32 %i.j, 0
  br i1 %.not87, label %.loopexit, label %iter.check152

iter.check152:                                    ; preds = %bb.ac
  %i.fg = sext i32 %i.h to i64
  %i.fh = shl nsw i64 %i.fg, 2                    ; 3 uses
  %wide.trip.count93 = zext i32 %i.j to i64       ; 6 uses
  %min.iters.check130 = icmp ult i32 %i.j, 4
  br i1 %min.iters.check130, label %vec.epilog.scalar.ph153.preheader, label %vector.main.loop.iter.check131

vector.main.loop.iter.check131:                   ; preds = %iter.check152
  %min.iters.check132 = icmp ult i32 %i.j, 16
  br i1 %min.iters.check132, label %vec.epilog.ph156, label %vector.ph133

vector.ph133:                                     ; preds = %vector.main.loop.iter.check131
  %i.fi = and i64 %wide.trip.count93, 12
  %n.vec134 = and i64 %wide.trip.count93, 4294967280 ; 4 uses
  %broadcast.splatinsert135 = insertelement <4 x i64> poison, i64 %i.fh, i64 0
  %broadcast.splat136 = shufflevector <4 x i64> %broadcast.splatinsert135, <4 x i64> poison, <4 x i32> zeroinitializer ; 4 uses
  br label %vector.body137

vector.body137:                                   ; preds = %vector.ph133, %vector.body137
  %index138 = phi i64 [ 0, %vector.ph133 ], [ %index.next147, %vector.body137 ] ; 2 uses
  %vec.ind139 = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph133 ], [ %vec.ind.next148, %vector.body137 ] ; 5 uses
  %step.add140 = add nuw <4 x i64> %vec.ind139, splat (i64 4)
  %step.add.2141 = add nuw <4 x i64> %vec.ind139, splat (i64 8)
  %step.add.3142 = add nuw <4 x i64> %vec.ind139, splat (i64 12)
  %i.fj = mul <4 x i64> %broadcast.splat136, %vec.ind139
  %i.fk = mul <4 x i64> %broadcast.splat136, %step.add140
  %i.fl = mul <4 x i64> %broadcast.splat136, %step.add.2141
  %i.fm = mul <4 x i64> %broadcast.splat136, %step.add.3142
  %wide.gep143 = getelementptr inbounds nuw [2 x i8], ptr %2, <4 x i64> %i.fj
  %wide.gep144 = getelementptr inbounds nuw [2 x i8], ptr %2, <4 x i64> %i.fk
  %wide.gep145 = getelementptr inbounds nuw [2 x i8], ptr %2, <4 x i64> %i.fl
  %wide.gep146 = getelementptr inbounds nuw [2 x i8], ptr %2, <4 x i64> %i.fm
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index138 ; 4 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 96
  store <4 x ptr> %wide.gep143, ptr %i.fn, align 64, !tbaa !52
  store <4 x ptr> %wide.gep144, ptr %i.fo, align 32, !tbaa !52
  store <4 x ptr> %wide.gep145, ptr %i.fp, align 64, !tbaa !52
  store <4 x ptr> %wide.gep146, ptr %i.fq, align 32, !tbaa !52
  %index.next147 = add nuw i64 %index138, 16      ; 2 uses
  %vec.ind.next148 = add nuw <4 x i64> %vec.ind139, splat (i64 16)
  %i.fr = icmp eq i64 %index.next147, %n.vec134
  br i1 %i.fr, label %middle.block149, label %vector.body137, !llvm.loop !37

middle.block149:                                  ; preds = %vector.body137
  %cmp.n150 = icmp eq i64 %n.vec134, %wide.trip.count93
  br i1 %cmp.n150, label %.loopexit, label %vec.epilog.iter.check154

vec.epilog.iter.check154:                         ; preds = %middle.block149
  %min.epilog.iters.check155 = icmp eq i64 %i.fi, 0
  br i1 %min.epilog.iters.check155, label %vec.epilog.scalar.ph153.preheader, label %vec.epilog.ph156, !prof !55

vec.epilog.ph156:                                 ; preds = %vector.main.loop.iter.check131, %vec.epilog.iter.check154
  %vec.epilog.resume.val151 = phi i64 [ %n.vec134, %vec.epilog.iter.check154 ], [ 0, %vector.main.loop.iter.check131 ] ; 2 uses
  %n.vec157 = and i64 %wide.trip.count93, 4294967292 ; 3 uses
  %broadcast.splatinsert158 = insertelement <4 x i64> poison, i64 %i.fh, i64 0
  %broadcast.splat159 = shufflevector <4 x i64> %broadcast.splatinsert158, <4 x i64> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert160 = insertelement <4 x i64> poison, i64 %vec.epilog.resume.val151, i64 0
  %broadcast.splat161 = shufflevector <4 x i64> %broadcast.splatinsert160, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction162 = or disjoint <4 x i64> %broadcast.splat161, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body163

vec.epilog.vector.body163:                        ; preds = %vec.epilog.vector.body163, %vec.epilog.ph156
  %index164 = phi i64 [ %vec.epilog.resume.val151, %vec.epilog.ph156 ], [ %index.next167, %vec.epilog.vector.body163 ] ; 2 uses
  %vec.ind165 = phi <4 x i64> [ %induction162, %vec.epilog.ph156 ], [ %vec.ind.next168, %vec.epilog.vector.body163 ] ; 2 uses
  %i.fs = mul <4 x i64> %broadcast.splat159, %vec.ind165
  %wide.gep166 = getelementptr inbounds nuw [2 x i8], ptr %2, <4 x i64> %i.fs
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index164
  store <4 x ptr> %wide.gep166, ptr %i.ft, align 32, !tbaa !52
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %vec.ind.next168 = add nuw nsw <4 x i64> %vec.ind165, splat (i64 4)
  %i.fu = icmp eq i64 %index.next167, %n.vec157
  br i1 %i.fu, label %vec.epilog.middle.block169, label %vec.epilog.vector.body163, !llvm.loop !38

vec.epilog.middle.block169:                       ; preds = %vec.epilog.vector.body163
  %cmp.n170 = icmp eq i64 %n.vec157, %wide.trip.count93
  br i1 %cmp.n170, label %.loopexit, label %vec.epilog.scalar.ph153.preheader

vec.epilog.scalar.ph153.preheader:                ; preds = %iter.check152, %vec.epilog.iter.check154, %vec.epilog.middle.block169
end_hunk_0
