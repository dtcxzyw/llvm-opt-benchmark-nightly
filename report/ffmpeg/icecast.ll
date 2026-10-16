Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/icecast?download=true
inline.NumInlined: 7
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.URLProtocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon = type { i64 }
%struct.AVBPrint = type { ptr, i32, i32, i32, [1 x i8], [1000 x i8] }

@.str = private unnamed_addr constant [8 x i8] c"icecast\00", align 1
@ff_icecast_protocol = local_unnamed_addr constant %struct.URLProtocol { ptr @.str, ptr @icecast_open, ptr null, ptr null, ptr null, ptr null, ptr @icecast_write, ptr null, ptr @icecast_close, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icecast_context_class, i32 112, i32 2, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8
@.str.1 = private unnamed_addr constant [9 x i8] c"Ice-Name\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Ice-Description\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"Ice-URL\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"Ice-Genre\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"Ice-Public\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"method\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SOURCE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PUT\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"auth_type\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"basic\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c"headers\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"chunked_post\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"send_expect_100\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"-1\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"content_type\00", align 1
@.str.18 = private unnamed_addr constant [11 x i8] c"audio/mpeg\00", align 1
@.str.19 = private unnamed_addr constant [11 x i8] c"user_agent\00", align 1
@.str.20 = private unnamed_addr constant [49 x i8] c"Overwriting -password <pass> with URI password!\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.22 = private unnamed_addr constant [7 x i8] c"source\00", align 1
@.str.23 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"No mountpoint (path) specified!\0A\00", align 1
@.str.26 = private unnamed_addr constant [6 x i8] c"https\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"http\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.29 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.30 = private unnamed_addr constant [52 x i8] c"Refusing to send '%s' header: value contains CR/LF\0A\00", align 1
@.str.31 = private unnamed_addr constant [9 x i8] c"%s: %s\0D\0A\00", align 1
@.str.32 = private unnamed_addr constant [53 x i8] c"Streaming Ogg but appropriate content type NOT set!\0A\00", align 1
@.str.33 = private unnamed_addr constant [43 x i8] c"Set it with -content_type application/ogg\0A\00", align 1
@.str.34 = private unnamed_addr constant [54 x i8] c"Streaming Opus but appropriate content type NOT set!\0A\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"Set it with -content_type audio/ogg\0A\00", align 1
@.str.36 = private unnamed_addr constant [54 x i8] c"Streaming WebM but appropriate content type NOT set!\0A\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"Set it with -content_type video/webm\0A\00", align 1
@.str.38 = private unnamed_addr constant [51 x i8] c"It seems you are streaming an unsupported format.\0A\00", align 1
@.str.39 = private unnamed_addr constant [60 x i8] c"It might work, but is not officially supported in Icecast!\0A\00", align 1
@icecast_context_class = internal constant { ptr, ptr, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, [4 x i8] } { ptr @.str, ptr @av_default_item_name, ptr @options, i32 3998052, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null, i32 0, [4 x i8] zeroinitializer }, align 8
@.str.41 = private unnamed_addr constant [10 x i8] c"ice_genre\00", align 1
@.str.42 = private unnamed_addr constant [17 x i8] c"set stream genre\00", align 1
@.str.43 = private unnamed_addr constant [9 x i8] c"ice_name\00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"set stream description\00", align 1
@.str.45 = private unnamed_addr constant [16 x i8] c"ice_description\00", align 1
@.str.46 = private unnamed_addr constant [8 x i8] c"ice_url\00", align 1
@.str.47 = private unnamed_addr constant [19 x i8] c"set stream website\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"ice_public\00", align 1
@.str.49 = private unnamed_addr constant [24 x i8] c"set if stream is public\00", align 1
@.str.50 = private unnamed_addr constant [27 x i8] c"override User-Agent header\00", align 1
@.str.51 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.52 = private unnamed_addr constant [13 x i8] c"set password\00", align 1
@.str.53 = private unnamed_addr constant [48 x i8] c"set content-type, MUST be set if not audio/mpeg\00", align 1
@.str.54 = private unnamed_addr constant [15 x i8] c"legacy_icecast\00", align 1
@.str.55 = private unnamed_addr constant [45 x i8] c"use legacy SOURCE method, for Icecast < v2.4\00", align 1
@.str.56 = private unnamed_addr constant [4 x i8] c"tls\00", align 1
@.str.57 = private unnamed_addr constant [21 x i8] c"use a TLS connection\00", align 1
@options = internal constant <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } }> <{ { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.41, ptr @.str.42, i32 48, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.43, ptr @.str.44, i32 64, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.45, ptr @.str.44, i32 40, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.46, ptr @.str.47, i32 88, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.48, ptr @.str.49, i32 80, i32 18, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.19, ptr @.str.50, i32 96, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.51, ptr @.str.52, i32 72, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, { ptr }, double, double, i32, [4 x i8], ptr } { ptr @.str.17, ptr @.str.53, i32 32, i32 6, { ptr } zeroinitializer, double 0.000000e+00, double 0.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.54, ptr @.str.55, i32 56, i32 18, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } { ptr @.str.56, ptr @.str.57, i32 104, i32 18, %union.anon zeroinitializer, double 0.000000e+00, double 1.000000e+00, i32 1, [4 x i8] zeroinitializer, ptr null }, { ptr, ptr, i32, i32, %union.anon, double, double, i32, [4 x i8], ptr } zeroinitializer }>, align 16

; Function Attrs: nounwind uwtable
define internal i32 @icecast_open(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca [1024 x i8], align 16             ; 4 uses
  %i.c = alloca [1024 x i8], align 16             ; 4 uses
  %i.d = alloca [1024 x i8], align 16             ; 8 uses
  %i.e = alloca [1024 x i8], align 16             ; 6 uses
  %i.f = alloca ptr, align 8                      ; 4 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 4 uses
  %3 = alloca %struct.AVBPrint, align 8           ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !16   ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store ptr null, ptr %i.a, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #5
  store ptr null, ptr %i.g, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.k = and i32 %2, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.al

bb.b:                                             ; preds = %bb.a
  call void @av_bprint_init(ptr noundef nonnull %3, i32 noundef 0, i32 noundef 1) #5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !23   ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %cat_header.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load i8, ptr %i.m, align 1, !tbaa !24
  %.not7.i = icmp eq i8 %i.n, 0
  br i1 %.not7.i, label %cat_header.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = call ptr @strpbrk(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.29) #6
  %.not8.i = icmp eq ptr %i.o, null
  br i1 %.not8.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.1) #5
  br label %cat_header.exit

bb.f:                                             ; preds = %bb.d
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.m) #5
  br label %cat_header.exit

cat_header.exit:                                  ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25   ; 4 uses
  %.not.i65 = icmp eq ptr %i.q, null
  br i1 %.not.i65, label %cat_header.exit68, label %bb.g

bb.g:                                             ; preds = %cat_header.exit
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %.not7.i66 = icmp eq i8 %i.r, 0
  br i1 %.not7.i66, label %cat_header.exit68, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call ptr @strpbrk(ptr noundef nonnull %i.q, ptr noundef nonnull @.str.29) #6
  %.not8.i67 = icmp eq ptr %i.s, null
  br i1 %.not8.i67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2) #5
  br label %cat_header.exit68

bb.j:                                             ; preds = %bb.h
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.q) #5
  br label %cat_header.exit68

cat_header.exit68:                                ; preds = %cat_header.exit, %bb.g, %bb.i, %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !26   ; 4 uses
  %.not.i69 = icmp eq ptr %i.u, null
  br i1 %.not.i69, label %cat_header.exit72, label %bb.k

bb.k:                                             ; preds = %cat_header.exit68
  %i.v = load i8, ptr %i.u, align 1, !tbaa !24
  %.not7.i70 = icmp eq i8 %i.v, 0
  br i1 %.not7.i70, label %cat_header.exit72, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = call ptr @strpbrk(ptr noundef nonnull %i.u, ptr noundef nonnull @.str.29) #6
  %.not8.i71 = icmp eq ptr %i.w, null
  br i1 %.not8.i71, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3) #5
  br label %cat_header.exit72

bb.n:                                             ; preds = %bb.l
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.u) #5
  br label %cat_header.exit72

cat_header.exit72:                                ; preds = %cat_header.exit68, %bb.k, %bb.m, %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 4 uses
  %.not.i73 = icmp eq ptr %i.y, null
  br i1 %.not.i73, label %cat_header.exit76, label %bb.o

bb.o:                                             ; preds = %cat_header.exit72
  %i.z = load i8, ptr %i.y, align 1, !tbaa !24
  %.not7.i74 = icmp eq i8 %i.z, 0
  br i1 %.not7.i74, label %cat_header.exit76, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = call ptr @strpbrk(ptr noundef nonnull %i.y, ptr noundef nonnull @.str.29) #6
  %.not8.i75 = icmp eq ptr %i.aa, null
  br i1 %.not8.i75, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4) #5
  br label %cat_header.exit76

bb.r:                                             ; preds = %bb.p
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.y) #5
  br label %cat_header.exit76

cat_header.exit76:                                ; preds = %cat_header.exit72, %bb.o, %bb.q, %bb.r
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 80
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !28
  %.not44 = icmp eq i32 %i.ac, 0
  %i.ad = select i1 %.not44, ptr @.str.7, ptr @.str.6 ; 2 uses
  %4 = call ptr @strpbrk(ptr noundef nonnull %i.ad, ptr noundef nonnull @.str.29) #6
  %.not7.i78 = icmp eq ptr %4, null
  br i1 %.not7.i78, label %bb.t, label %bb.s

bb.s:                                             ; preds = %cat_header.exit76
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5) #5
  br label %cat_header.exit80

bb.t:                                             ; preds = %cat_header.exit76
  call void (ptr, ptr, ...) @av_bprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ad) #5
  br label %cat_header.exit80

cat_header.exit80:                                ; preds = %bb.s, %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val = load i32, ptr %i.ae, align 8, !tbaa !30
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.val64 = load i32, ptr %i.af, align 4, !tbaa !31
  %.not83 = icmp ult i32 %.val, %.val64
  br i1 %.not83, label %bb.v, label %bb.u

bb.u:                                             ; preds = %cat_header.exit80
  %i.ag = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef null) #5 ; 0 uses
  br label %bb.al

bb.v:                                             ; preds = %cat_header.exit80
  %i.ah = call i32 @av_bprint_finalize(ptr noundef nonnull %3, ptr noundef nonnull %i.f) #5 ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 56 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !32
  %.not46 = icmp eq i32 %i.ak, 0
  %i.al = select i1 %.not46, ptr @.str.10, ptr @.str.9
  %i.am = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.al, i32 noundef 0) #5 ; 0 uses
  %i.an = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, i32 noundef 0) #5 ; 0 uses
  %i.ao = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.ap = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.13, ptr noundef %i.ao, i32 noundef 8) #5 ; 0 uses
  %i.aq = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.7, i32 noundef 0) #5 ; 0 uses
  %i.ar = load i32, ptr %i.aj, align 8, !tbaa !32
  %.not47 = icmp eq i32 %i.ar, 0
  %i.as = select i1 %.not47, ptr @.str.6, ptr @.str.16
  %i.at = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.as, i32 noundef 0) #5 ; 0 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !19 ; 3 uses
  %.not48 = icmp eq ptr %i.av, null
  br i1 %.not48, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !24
  %.not49 = icmp eq i8 %i.aw, 0
  br i1 %.not49, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.str.18.sink = phi ptr [ @.str.18, %bb.y ], [ %i.av, %bb.x ]
  %i.ax = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.17, ptr noundef nonnull %.str.18.sink, i32 noundef 0) #5 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.j, i64 96
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !33 ; 3 uses
  %.not50 = icmp eq ptr %i.az, null
  br i1 %.not50, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !24
  %.not51 = icmp eq i8 %i.ba, 0
  br i1 %.not51, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bb = call i32 @av_dict_set(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.19, ptr noundef nonnull %i.az, i32 noundef 0) #5 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  call void @av_url_split(ptr noundef null, i32 noundef 0, ptr noundef nonnull %i.d, i32 noundef 1024, ptr noundef nonnull %i.c, i32 noundef 1024, ptr noundef nonnull %i.h, ptr noundef nonnull %i.e, i32 noundef 1024, ptr noundef %1) #5
  %i.bc = load i8, ptr %i.d, align 16, !tbaa !24
  %.not52 = icmp eq i8 %i.bc, 0
  br i1 %.not52, label %bb.ai, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bd = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.d, i32 noundef 58) #6 ; 3 uses
  %.not53 = icmp eq ptr %i.bd, null
  br i1 %.not53, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  store i8 0, ptr %i.bd, align 1, !tbaa !24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 72 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !34 ; 2 uses
  %.not54 = icmp eq ptr %i.bg, null
  br i1 %.not54, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @av_free(ptr noundef nonnull %i.bg) #5
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.20) #5
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.bh = call noalias ptr @av_strdup(ptr noundef nonnull %i.be) #5 ; 2 uses
  store ptr %i.bh, ptr %i.bf, align 8, !tbaa !34
  %.not55 = icmp eq ptr %i.bh, null
  br i1 %.not55, label %.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad
  %i.bi = call noalias ptr @av_strdup(ptr noundef nonnull %i.d) #5 ; 3 uses
  store ptr %i.bi, ptr %i.g, align 8, !tbaa !22
  %.not56 = icmp eq ptr %i.bi, null
  br i1 %.not56, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ac
  %i.bj = phi ptr [ %i.bi, %bb.ah ], [ null, %bb.ac ] ; 2 uses
  %.not57 = icmp eq ptr %i.bj, null
  %i.bk = select i1 %.not57, ptr @.str.22, ptr %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !34 ; 2 uses
  %.not58 = icmp eq ptr %i.bm, null
  %spec.select = select i1 %.not58, ptr @.str.23, ptr %i.bm
  %i.bn = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.d, i64 noundef 1024, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.bk, ptr noundef nonnull %spec.select) #5 ; 0 uses
  %i.bo = load i8, ptr %i.e, align 16, !tbaa !24
  %.not59 = icmp eq i8 %i.bo, 0
  %lhsv = load i16, ptr %i.e, align 16
  %.not61 = icmp eq i16 %lhsv, 47
  %or.cond = select i1 %.not59, i1 true, i1 %.not61
  br i1 %or.cond, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.25) #5
  br label %.thread

bb.ak:                                            ; preds = %bb.ai
  %i.bp = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !35
  %.not62 = icmp eq i32 %i.bq, 0
  %i.br = select i1 %.not62, ptr @.str.27, ptr @.str.26
  %i.bs = load i32, ptr %i.h, align 4, !tbaa !36
  %i.bt = call i32 (ptr, i32, ptr, ptr, ptr, i32, ptr, ...) @ff_url_join(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef nonnull %i.br, ptr noundef nonnull %i.d, ptr noundef nonnull %i.c, i32 noundef %i.bs, ptr noundef nonnull @.str.28, ptr noundef nonnull %i.e) #5 ; 0 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !37
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !38
  %i.bz = call i32 @ffurl_open_whitelist(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.b, i32 noundef 3, ptr noundef null, ptr noundef nonnull %i.a, ptr noundef %i.bw, ptr noundef %i.by, ptr noundef nonnull %0) #5
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.ag, %bb.ak, %bb.aj
  %.1 = phi i32 [ -5, %bb.aj ], [ %i.bz, %bb.ak ], [ -12, %bb.ag ], [ -12, %bb.ah ]
  call void @av_freep(ptr noundef nonnull %i.g) #5
  call void @av_dict_free(ptr noundef nonnull %i.a) #5
  br label %bb.al

bb.al:                                            ; preds = %bb.v, %bb.a, %.thread, %bb.u
  %.036 = phi i32 [ -12, %bb.u ], [ -38, %bb.a ], [ %i.ah, %bb.v ], [ %.1, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 %.036
}

; Function Attrs: nounwind uwtable
define internal i32 @icecast_write(ptr noundef %0, ptr noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !39
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.c, align 8, !tbaa !39
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !19
  %i.g = icmp eq ptr %i.f, null
  %i.h = icmp sgt i32 %2, 7
  %or.cond = and i1 %i.h, %i.g
  br i1 %or.cond, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %1, align 1
  %i.j = icmp ne i32 %i.i, 1399285583
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.sink.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i64, ptr %1, align 1
  %i.n = icmp ne i64 %i.m, 7233173838382854223
  %i.o = zext i1 %i.n to i32
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load i32, ptr %1, align 1
  %i.r = icmp ne i32 %i.q, -1545648870
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0                      ; 2 uses
  %.str.36..str.38 = select i1 %i.t, ptr @.str.36, ptr @.str.38
  %.str.37..str.39 = select i1 %i.t, ptr @.str.37, ptr @.str.39
  br label %.sink.split

.sink.split:                                      ; preds = %bb.e, %bb.d, %bb.c
  %.str.34.sink = phi ptr [ @.str.32, %bb.c ], [ @.str.34, %bb.d ], [ %.str.36..str.38, %bb.e ]
  %.str.35.sink = phi ptr [ @.str.33, %bb.c ], [ @.str.35, %bb.d ], [ %.str.37..str.39, %bb.e ]
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %.str.34.sink) #5
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull %.str.35.sink) #5
  br label %bb.f

end_hunk_0
