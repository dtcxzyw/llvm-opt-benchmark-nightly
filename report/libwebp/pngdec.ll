Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libwebp/original/pngdec?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { ptr, ptr, i64 }
%struct.PNGReadContext = type { ptr, i64, i64 }

@.str = private unnamed_addr constant [7 x i8] c"1.6.43\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"Error extracting PNG metadata!\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"libpng error: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"ReadFunc: invalid read length (overflow)!\00", align 1
@kPNGMetadataMap = internal unnamed_addr constant [6 x %struct.anon] [%struct.anon { ptr @.str.6, ptr @ProcessRawProfile, i64 0 }, %struct.anon { ptr @.str.7, ptr @ProcessRawProfile, i64 32 }, %struct.anon { ptr @.str.8, ptr @ProcessRawProfile, i64 0 }, %struct.anon { ptr @.str.9, ptr @ProcessRawProfile, i64 0 }, %struct.anon { ptr @.str.10, ptr @MetadataCopy, i64 32 }, %struct.anon zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [26 x i8] c"Ignoring additional '%s'\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Failed to process: '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Raw profile type exif\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Raw profile type xmp\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Raw profile type APP1\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Raw profile type app1\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"XML:com.adobe.xmp\00", align 1
@.str.11 = private unnamed_addr constant [51 x i8] c"Malformed raw profile, expected '\\n' got '\\x%.2X'\0A\00", align 1

; Function Attrs: nounwind uwtable
define hidden i32 @ReadPNG(ptr noundef %0, i64 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 33 uses
  %i.b = alloca ptr, align 8                      ; 14 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %5 = alloca %struct.PNGReadContext, align 8     ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 4 uses
  %i.f = alloca i32, align 4                      ; 3 uses
  %i.g = alloca i32, align 4                      ; 6 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i32, align 4                      ; 7 uses
  %i.j = alloca ptr, align 8                      ; 8 uses
  %i.k = alloca double, align 8                   ; 5 uses
  %i.l = alloca i32, align 4                      ; 3 uses
  %i.m = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store volatile ptr null, ptr %i.a, align 8, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  store volatile ptr null, ptr %i.b, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #14
  store volatile ptr null, ptr %i.c, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store volatile i32 0, ptr %i.g, align 4, !tbaa !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store volatile ptr null, ptr %i.j, align 8, !tbaa !12
  %i.o = icmp eq ptr %0, null
  %i.p = icmp eq i64 %1, 0
  %or.cond = or i1 %i.o, %i.p
  %i.q = icmp eq ptr %2, null
  %or.cond3 = or i1 %or.cond, %i.q
  br i1 %or.cond3, label %bb.aj, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %0, ptr %5, align 8, !tbaa !15
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %1, ptr %i.r, align 8, !tbaa !16
  %i.s = call noalias ptr @png_create_read_struct_2(ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef nonnull @MallocFunc, ptr noundef nonnull @FreeFunc) #14
  store volatile ptr %i.s, ptr %i.a, align 8, !tbaa !25
  %i.t = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.ag, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_error_fn(ptr noundef %i.v, ptr noundef null, ptr noundef nonnull @error_function, ptr noundef null) #14
  %i.w = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.x = call ptr @png_set_longjmp_fn(ptr noundef %i.w, ptr noundef nonnull @longjmp, i64 noundef 200) #14
  %i.y = call i32 @_setjmp(ptr noundef %i.x) #15
  %.not = icmp eq i32 %i.y, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.af, %bb.z, %bb.x, %bb.y, %bb.w, %bb.i, %bb.h, %bb.g, %bb.c, %bb.ab
  call void @MetadataFree(ptr noundef %4) #14
  br label %bb.ag

bb.e:                                             ; preds = %bb.c
  %i.z = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.aa = call i64 @png_get_chunk_malloc_max(ptr noundef %i.z) #14
  %i.ab = icmp ugt i64 %1, %i.aa
  %i.ac = icmp ult i64 %1, 16777216
  %or.cond5 = and i1 %i.ac, %i.ab
  br i1 %or.cond5, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_chunk_malloc_max(ptr noundef %i.ad, i64 noundef %1) #14
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.af = call noalias ptr @png_create_info_struct(ptr noundef %i.ae) #14
  store volatile ptr %i.af, ptr %i.b, align 8, !tbaa !27
  %i.ag = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.d, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.aj = call noalias ptr @png_create_info_struct(ptr noundef %i.ai) #14
  store volatile ptr %i.aj, ptr %i.c, align 8, !tbaa !27
  %i.ak = load volatile ptr, ptr %i.c, align 8, !tbaa !27
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.d, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_read_fn(ptr noundef %i.am, ptr noundef nonnull %5, ptr noundef nonnull @ReadFunc) #14
  %i.an = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.ao = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  call void @png_read_info(ptr noundef %i.an, ptr noundef %i.ao) #14
  %i.ap = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.aq = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.ar = call i32 @png_get_IHDR(ptr noundef %i.ap, ptr noundef %i.aq, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null) #14
  %.not56 = icmp eq i32 %i.ar, 0
  br i1 %.not56, label %bb.d, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.as = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_strip_16(ptr noundef %i.as) #14
  %i.at = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_packing(ptr noundef %i.at) #14
  %i.au = load i32, ptr %i.d, align 4, !tbaa !10  ; 2 uses
  %i.av = icmp eq i32 %i.au, 3
  br i1 %i.av, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aw = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_palette_to_rgb(ptr noundef %i.aw) #14
  %.pre = load i32, ptr %i.d, align 4, !tbaa !10
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ax = phi i32 [ %.pre, %bb.k ], [ %i.au, %bb.j ]
  %i.ay = and i32 %i.ax, -5
  %or.cond7 = icmp eq i32 %i.ay, 0
  br i1 %or.cond7, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.az = load i32, ptr %i.e, align 4, !tbaa !10
  %i.ba = icmp slt i32 %i.az, 8
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bb = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_expand_gray_1_2_4_to_8(ptr noundef %i.bb) #14
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bc = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_gray_to_rgb(ptr noundef %i.bc) #14
  br label %bb.p

bb.p:                                             ; preds = %bb.l, %bb.o
  %i.bd = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.be = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.bf = call i32 @png_get_valid(ptr noundef %i.bd, ptr noundef %i.be, i32 noundef 16) #14
  %.not57 = icmp eq i32 %i.bf, 0
  br i1 %.not57, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bg = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_tRNS_to_alpha(ptr noundef %i.bg) #14
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #14
  store double f0x3FDD1745D1745D17, ptr %i.k, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #14
  %i.bh = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.bi = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.bj = call i32 @png_get_sRGB(ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef nonnull %i.l) #14
  %.not58 = icmp eq i32 %i.bj, 0
  br i1 %.not58, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bk = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.bl = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.bm = call i32 @png_get_gAMA(ptr noundef %i.bk, ptr noundef %i.bl, ptr noundef nonnull %i.k) #14
  %.not59 = icmp eq i32 %i.bm, 0
  br i1 %.not59, label %bb.u, label %._crit_edge72

._crit_edge72:                                    ; preds = %bb.s
  %.pre73 = load double, ptr %i.k, align 8, !tbaa !29
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge72, %bb.r
  %6 = phi double [ %.pre73, %._crit_edge72 ], [ f0x3FDD1745D1745D17, %bb.r ]
  %7 = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_gamma(ptr noundef %7, double noundef 2.200000e+00, double noundef %6) #14
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #14
  %.not60 = icmp eq i32 %3, 0
  br i1 %.not60, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bn = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_set_strip_alpha(ptr noundef %i.bn) #14
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bo = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.bp = call i32 @png_set_interlace_handling(ptr noundef %i.bo) #14 ; 2 uses
  %i.bq = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.br = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  call void @png_read_update_info(ptr noundef %i.bq, ptr noundef %i.br) #14
  %i.bs = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.bt = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.bu = call zeroext i8 @png_get_channels(ptr noundef %i.bs, ptr noundef %i.bt) #14 ; 3 uses
  %i.bv = add i8 %i.bu, -5
  %or.cond9 = icmp ult i8 %i.bv, -2
  br i1 %or.cond9, label %bb.d, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bw = zext nneg i8 %i.bu to i64
  %i.bx = load i32, ptr %i.h, align 4, !tbaa !10
  %i.by = zext i32 %i.bx to i64
  %i.bz = mul nuw nsw i64 %i.by, %i.bw            ; 5 uses
  %i.ca = trunc i64 %i.bz to i32                  ; 2 uses
  %.not61 = icmp samesign ult i64 %i.bz, 2147483648
  br i1 %.not61, label %bb.y, label %bb.d

bb.y:                                             ; preds = %bb.x
  %i.cb = load i32, ptr %i.i, align 4, !tbaa !10
  %i.cc = zext i32 %i.cb to i64
  %i.cd = call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef %i.bz, i64 noundef %i.cc) #14
  %.not62 = icmp eq i32 %i.cd, 0
  br i1 %.not62, label %bb.d, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ce = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.cf = zext i32 %i.ce to i64
  %i.cg = mul nuw nsw i64 %i.bz, %i.cf
  %i.ch = call noalias ptr @malloc(i64 noundef %i.cg) #16
  store volatile ptr %i.ch, ptr %i.j, align 8, !tbaa !12
  %.0..0..0..0.10 = load volatile ptr, ptr %i.j, align 8, !tbaa !12
  %i.ci = icmp eq ptr %.0..0..0..0.10, null
  br i1 %i.ci, label %bb.d, label %.preheader

.preheader:                                       ; preds = %bb.z
  %i.cj = icmp sgt i32 %i.bp, 0
  br i1 %i.cj, label %.lr.ph69, label %._crit_edge70

.lr.ph69:                                         ; preds = %.preheader, %._crit_edge
  %i.ck = phi i32 [ %i.cr, %._crit_edge ], [ %i.ce, %.preheader ]
  %.04968 = phi i32 [ %i.cs, %._crit_edge ], [ 0, %.preheader ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #14
  %.0..0..0..0.11 = load volatile ptr, ptr %i.j, align 8, !tbaa !12
  store ptr %.0..0..0..0.11, ptr %i.m, align 8, !tbaa !12
  %.not71 = icmp eq i32 %i.ck, 0
  br i1 %.not71, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph69, %.lr.ph
  %.067 = phi i32 [ %i.co, %.lr.ph ], [ 0, %.lr.ph69 ]
  %i.cl = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  call void @png_read_rows(ptr noundef %i.cl, ptr noundef nonnull %i.m, ptr noundef null, i32 noundef 1) #14
  %i.cm = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.bz
  store ptr %i.cn, ptr %i.m, align 8, !tbaa !12
  %i.co = add nuw i32 %.067, 1                    ; 2 uses
  %i.cp = load i32, ptr %i.i, align 4, !tbaa !10  ; 2 uses
  %i.cq = icmp ult i32 %i.co, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %.lr.ph69
  %i.cr = phi i32 [ 0, %.lr.ph69 ], [ %i.cp, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #14
  %i.cs = add nuw nsw i32 %.04968, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.cs, %i.bp
  br i1 %exitcond.not, label %._crit_edge70, label %.lr.ph69, !llvm.loop !23

._crit_edge70:                                    ; preds = %._crit_edge, %.preheader
  %i.ct = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.cu = load volatile ptr, ptr %i.c, align 8, !tbaa !27
  call void @png_read_end(ptr noundef %i.ct, ptr noundef %i.cu) #14
  %.not63 = icmp eq ptr %4, null
  br i1 %.not63, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %._crit_edge70
  %i.cv = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %i.cw = load volatile ptr, ptr %i.b, align 8, !tbaa !27
  %i.cx = load volatile ptr, ptr %i.c, align 8, !tbaa !27
  %i.cy = call fastcc i32 @ExtractMetadataFromPNG(ptr noundef %i.cv, ptr noundef %i.cw, ptr noundef %i.cx, ptr noundef %4)
  %.not64 = icmp eq i32 %i.cy, 0
  br i1 %.not64, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cz = load ptr, ptr @stderr, align 8, !tbaa !19
  %fwrite = call i64 @fwrite(ptr nonnull @.str.1, i64 31, i64 1, ptr %i.cz) #17 ; 0 uses
  br label %bb.d

bb.ac:                                            ; preds = %bb.aa, %._crit_edge70
  %i.da = load i32, ptr %i.h, align 4, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.da, ptr %i.db, align 8, !tbaa !33
  %i.dc = load i32, ptr %i.i, align 4, !tbaa !10
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !34
  %i.de = icmp eq i8 %i.bu, 4
  %.0..0..0..0.12 = load volatile ptr, ptr %i.j, align 8, !tbaa !12 ; 2 uses
  br i1 %i.de, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.df = call i32 @WebPPictureImportRGBA(ptr noundef nonnull %2, ptr noundef %.0..0..0..0.12, i32 noundef %i.ca) #14
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %i.dg = call i32 @WebPPictureImportRGB(ptr noundef nonnull %2, ptr noundef %.0..0..0..0.12, i32 noundef %i.ca) #14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.dh = phi i32 [ %i.df, %bb.ad ], [ %i.dg, %bb.ae ]
  store volatile i32 %i.dh, ptr %i.g, align 4, !tbaa !10
  %.0..0..0..0.23 = load volatile i32, ptr %i.g, align 4, !tbaa !10
  %.not65 = icmp eq i32 %.0..0..0..0.23, 0
  br i1 %.not65, label %bb.d, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.b, %bb.d
  %i.di = load volatile ptr, ptr %i.a, align 8, !tbaa !25
  %.not66 = icmp eq ptr %i.di, null
  br i1 %.not66, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @png_destroy_read_struct(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #14
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.0..0..0..0.14 = load volatile ptr, ptr %i.j, align 8, !tbaa !12
  call void @free(ptr noundef %.0..0..0..0.14) #14
  %.0..0..0..0.24 = load volatile i32, ptr %i.g, align 4, !tbaa !10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.a, %bb.ai
  %.050 = phi i32 [ %.0..0..0..0.24, %bb.ai ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret i32 %.050
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @png_create_read_struct_2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noalias noundef ptr @MallocFunc(ptr nofree readnone captures(none) %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i32 @ImgIoUtilCheckSizeArgumentsOverflow(i64 noundef %1, i64 noundef 1) #14
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noalias ptr @malloc(i64 noundef %1) #16
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.b, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal void @FreeFunc(ptr nofree readnone captures(none) %0, ptr noundef captures(none) %1) #3 {
bb.a:
  tail call void @free(ptr noundef %1) #14
  ret void
}

declare void @png_set_error_fn(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind uwtable
define internal void @error_function(ptr noundef %0, ptr noundef %1) #4 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @stderr, align 8, !tbaa !19
  %i.b = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.a, ptr noundef nonnull @.str.2, ptr noundef nonnull %1) #18 ; 0 uses
end_hunk_0
