Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/dsa?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.options_st = type { ptr, i32, i32, ptr }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@OPT_SECTION_STR = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"pvk-strong\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Enable 'Strong' PVK encoding level (default)\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"pvk-weak\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Enable 'Weak' PVK encoding level\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"pvk-none\00", align 1
@.str.10 = private unnamed_addr constant [27 x i8] c"Don't enforce PVK encoding\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"Input key\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.15 = private unnamed_addr constant [42 x i8] c"Input format (DER/PEM/PVK); has no effect\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"Expect a public key in input file\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.22 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.24 = private unnamed_addr constant [27 x i8] c"Output format, DER PEM PVK\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.26 = private unnamed_addr constant [20 x i8] c"Don't print key out\00", align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.28 = private unnamed_addr constant [22 x i8] c"Print the key in text\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"Print the DSA public value\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"Output public key, not private\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.34 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.35 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.36 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.37 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.39 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.40 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.41 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.42 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.43 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@dsa_options = dso_local constant [25 x %struct.options_st] [%struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @.str.1, i32 1, i32 45, ptr @.str.2 }, %struct.options_st { ptr @.str.3, i32 14, i32 45, ptr @.str.4 }, %struct.options_st { ptr @.str.5, i32 8, i32 45, ptr @.str.6 }, %struct.options_st { ptr @.str.7, i32 7, i32 45, ptr @.str.8 }, %struct.options_st { ptr @.str.9, i32 6, i32 45, ptr @.str.10 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.11 }, %struct.options_st { ptr @.str.12, i32 4, i32 115, ptr @.str.13 }, %struct.options_st { ptr @.str.14, i32 2, i32 102, ptr @.str.15 }, %struct.options_st { ptr @.str.16, i32 12, i32 45, ptr @.str.17 }, %struct.options_st { ptr @.str.18, i32 15, i32 115, ptr @.str.19 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.20 }, %struct.options_st { ptr @.str.21, i32 5, i32 62, ptr @.str.22 }, %struct.options_st { ptr @.str.23, i32 3, i32 102, ptr @.str.24 }, %struct.options_st { ptr @.str.25, i32 9, i32 45, ptr @.str.26 }, %struct.options_st { ptr @.str.27, i32 10, i32 45, ptr @.str.28 }, %struct.options_st { ptr @.str.29, i32 11, i32 45, ptr @.str.30 }, %struct.options_st { ptr @.str.31, i32 13, i32 45, ptr @.str.32 }, %struct.options_st { ptr @.str.33, i32 16, i32 115, ptr @.str.34 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.35 }, %struct.options_st { ptr @.str.36, i32 1602, i32 115, ptr @.str.37 }, %struct.options_st { ptr @.str.38, i32 1601, i32 115, ptr @.str.39 }, %struct.options_st { ptr @.str.40, i32 1604, i32 115, ptr @.str.41 }, %struct.options_st { ptr @.str.42, i32 1603, i32 115, ptr @.str.43 }, %struct.options_st zeroinitializer], align 16
@.str.44 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.45 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.46 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.47 = private unnamed_addr constant [14 x i8] c"read DSA key\0A\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.50 = private unnamed_addr constant [20 x i8] c"unable to load Key\0A\00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.52 = private unnamed_addr constant [15 x i8] c"Not a DSA key\0A\00", align 1
@.str.53 = private unnamed_addr constant [4 x i8] c"pub\00", align 1
@.str.54 = private unnamed_addr constant [12 x i8] c"Public Key=\00", align 1
@.str.55 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.56 = private unnamed_addr constant [17 x i8] c"writing DSA key\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.60 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.61 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.62 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.63 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.64 = private unnamed_addr constant [14 x i8] c"type-specific\00", align 1
@.str.65 = private unnamed_addr constant [25 x i8] c"%s format not supported\0A\00", align 1
@.str.66 = private unnamed_addr constant [14 x i8] c"encrypt-level\00", align 1
@.str.67 = private unnamed_addr constant [30 x i8] c"invalid PVK encryption level\0A\00", align 1
@.str.68 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1
@.str.69 = private unnamed_addr constant [11 x i8] c"apps/dsa.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @dsa_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 7 uses
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store ptr null, ptr %i.a, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store ptr null, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  store ptr null, ptr %i.c, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  store i32 0, ptr %i.d, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  store i32 32773, ptr %i.e, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #6
  store i32 2, ptr %i.f, align 4, !tbaa !15
  tail call void @opt_set_unknown_name(ptr noundef nonnull @.str.44) #6
  %i.h = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @dsa_options) #6
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.088 = phi ptr [ null, %bb.a ], [ %.088.be, %.backedge ] ; 16 uses
  %.086 = phi ptr [ null, %bb.a ], [ %.086.be, %.backedge ] ; 16 uses
  %.084 = phi ptr [ null, %bb.a ], [ %.084.be, %.backedge ] ; 15 uses
  %.082 = phi ptr [ null, %bb.a ], [ %.082.be, %.backedge ] ; 15 uses
  %.080 = phi i32 [ 0, %bb.a ], [ %.080.be, %.backedge ] ; 15 uses
  %.078 = phi i32 [ 0, %bb.a ], [ %.078.be, %.backedge ] ; 15 uses
  %.076 = phi i32 [ 0, %bb.a ], [ %.076.be, %.backedge ] ; 15 uses
  %.074 = phi i32 [ 0, %bb.a ], [ %.074.be, %.backedge ] ; 17 uses
  %.072 = phi i32 [ 0, %bb.a ], [ %.072.be, %.backedge ] ; 17 uses
  %.068 = phi ptr [ null, %bb.a ], [ %.068.be, %.backedge ] ; 15 uses
  %i.i = call i32 @opt_next() #6                  ; 3 uses
  switch i32 %i.i, label %.backedge [
    i32 0, label %bb.r
    i32 1602, label %bb.q
    i32 -1, label %.loopexit.a
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
    i32 15, label %bb.h
    i32 16, label %bb.i
    i32 8, label %bb.j
    i32 7, label %bb.j
    i32 6, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 14, label %bb.p
    i32 1603, label %bb.q
    i32 1604, label %bb.q
    i32 1601, label %bb.q
  ]

.backedge:                                        ; preds = %bb.b, %bb.q, %bb.f, %bb.d, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %.088.be = phi ptr [ %.088, %bb.b ], [ %.088, %bb.d ], [ %i.n, %bb.e ], [ %.088, %bb.f ], [ %.088, %bb.g ], [ %.088, %bb.h ], [ %.088, %bb.i ], [ %.088, %bb.j ], [ %.088, %bb.k ], [ %.088, %bb.l ], [ %.088, %bb.m ], [ %.088, %bb.n ], [ %.088, %bb.o ], [ %.088, %bb.p ], [ %.088, %bb.q ]
  %.086.be = phi ptr [ %.086, %bb.b ], [ %.086, %bb.d ], [ %.086, %bb.e ], [ %.086, %bb.f ], [ %i.q, %bb.g ], [ %.086, %bb.h ], [ %.086, %bb.i ], [ %.086, %bb.j ], [ %.086, %bb.k ], [ %.086, %bb.l ], [ %.086, %bb.m ], [ %.086, %bb.n ], [ %.086, %bb.o ], [ %.086, %bb.p ], [ %.086, %bb.q ]
  %.084.be = phi ptr [ %.084, %bb.b ], [ %.084, %bb.d ], [ %.084, %bb.e ], [ %.084, %bb.f ], [ %.084, %bb.g ], [ %i.r, %bb.h ], [ %.084, %bb.i ], [ %.084, %bb.j ], [ %.084, %bb.k ], [ %.084, %bb.l ], [ %.084, %bb.m ], [ %.084, %bb.n ], [ %.084, %bb.o ], [ %.084, %bb.p ], [ %.084, %bb.q ]
  %.082.be = phi ptr [ %.082, %bb.b ], [ %.082, %bb.d ], [ %.082, %bb.e ], [ %.082, %bb.f ], [ %.082, %bb.g ], [ %.082, %bb.h ], [ %i.s, %bb.i ], [ %.082, %bb.j ], [ %.082, %bb.k ], [ %.082, %bb.l ], [ %.082, %bb.m ], [ %.082, %bb.n ], [ %.082, %bb.o ], [ %.082, %bb.p ], [ %.082, %bb.q ]
  %.080.be = phi i32 [ %.080, %bb.b ], [ %.080, %bb.d ], [ %.080, %bb.e ], [ %.080, %bb.f ], [ %.080, %bb.g ], [ %.080, %bb.h ], [ %.080, %bb.i ], [ %.080, %bb.j ], [ %.080, %bb.k ], [ 1, %bb.l ], [ %.080, %bb.m ], [ %.080, %bb.n ], [ %.080, %bb.o ], [ %.080, %bb.p ], [ %.080, %bb.q ]
  %.078.be = phi i32 [ %.078, %bb.b ], [ %.078, %bb.d ], [ %.078, %bb.e ], [ %.078, %bb.f ], [ %.078, %bb.g ], [ %.078, %bb.h ], [ %.078, %bb.i ], [ %.078, %bb.j ], [ 1, %bb.k ], [ %.078, %bb.l ], [ %.078, %bb.m ], [ %.078, %bb.n ], [ %.078, %bb.o ], [ %.078, %bb.p ], [ %.078, %bb.q ]
  %.076.be = phi i32 [ %.076, %bb.b ], [ %.076, %bb.d ], [ %.076, %bb.e ], [ %.076, %bb.f ], [ %.076, %bb.g ], [ %.076, %bb.h ], [ %.076, %bb.i ], [ %.076, %bb.j ], [ %.076, %bb.k ], [ %.076, %bb.l ], [ 1, %bb.m ], [ %.076, %bb.n ], [ %.076, %bb.o ], [ %.076, %bb.p ], [ %.076, %bb.q ]
  %.074.be = phi i32 [ %.074, %bb.b ], [ %.074, %bb.d ], [ %.074, %bb.e ], [ %.074, %bb.f ], [ %.074, %bb.g ], [ %.074, %bb.h ], [ %.074, %bb.i ], [ %.074, %bb.j ], [ %.074, %bb.k ], [ %.074, %bb.l ], [ %.074, %bb.m ], [ 1, %bb.n ], [ %.074, %bb.o ], [ %.074, %bb.p ], [ %.074, %bb.q ]
  %.072.be = phi i32 [ %.072, %bb.b ], [ %.072, %bb.d ], [ %.072, %bb.e ], [ %.072, %bb.f ], [ %.072, %bb.g ], [ %.072, %bb.h ], [ %.072, %bb.i ], [ %.072, %bb.j ], [ %.072, %bb.k ], [ %.072, %bb.l ], [ %.072, %bb.m ], [ %.072, %bb.n ], [ 1, %bb.o ], [ %.072, %bb.p ], [ %.072, %bb.q ]
  %.068.be = phi ptr [ %.068, %bb.b ], [ %.068, %bb.d ], [ %.068, %bb.e ], [ %.068, %bb.f ], [ %.068, %bb.g ], [ %.068, %bb.h ], [ %.068, %bb.i ], [ %.068, %bb.j ], [ %.068, %bb.k ], [ %.068, %bb.l ], [ %.068, %bb.m ], [ %.068, %bb.n ], [ %.068, %bb.o ], [ %i.u, %bb.p ], [ %.068, %bb.q ]
  br label %bb.b, !llvm.loop !9

.loopexit.a:                                      ; preds = %bb.b, %bb.f, %bb.d, %bb.r
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.45, ptr noundef %i.h) #6 ; 0 uses
  br label %bb.bb

bb.c:                                             ; preds = %bb.b
  call void @opt_help(ptr noundef nonnull @dsa_options) #6
  br label %bb.bb

bb.d:                                             ; preds = %bb.b
  %i.l = call ptr @opt_arg() #6
  %i.m = call i32 @opt_format(ptr noundef %i.l, i64 noundef 4030, ptr noundef nonnull %i.d) #6
  %.not116 = icmp eq i32 %i.m, 0
  br i1 %.not116, label %.loopexit.a, label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.n = call ptr @opt_arg() #6
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.o = call ptr @opt_arg() #6
  %i.p = call i32 @opt_format(ptr noundef %i.o, i64 noundef 4030, ptr noundef nonnull %i.e) #6
  %.not115 = icmp eq i32 %i.p, 0
  br i1 %.not115, label %.loopexit.a, label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.q = call ptr @opt_arg() #6
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.r = call ptr @opt_arg() #6
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.s = call ptr @opt_arg() #6
  br label %.backedge

bb.j:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.t = add nsw i32 %i.i, -6
  store i32 %i.t, ptr %i.f, align 4, !tbaa !15
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.u = call ptr @opt_unknown() #6
  br label %.backedge

bb.q:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.v = call i32 @opt_provider(i32 noundef %i.i) #6
  %.not114 = icmp eq i32 %i.v, 0
  br i1 %.not114, label %.loopexit141.a, label %.backedge

bb.r:                                             ; preds = %bb.b
  %i.w = call i32 @opt_check_rest_arg(ptr noundef null) #6
  %.not100 = icmp eq i32 %i.w, 0
  br i1 %.not100, label %.loopexit.a, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.x = call i32 @opt_cipher(ptr noundef %.068, ptr noundef nonnull %i.a) #6
  %.not101 = icmp eq i32 %i.x, 0
  br i1 %.not101, label %.loopexit141.a, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.not109 = icmp eq i32 %.074, 0                 ; 4 uses
  %.not102 = icmp eq i32 %.072, 0
  %i.y = icmp ne i32 %.080, 0                     ; 2 uses
  %i.z = or i1 %.not102, %i.y
  %narrow = and i1 %.not109, %i.z
  %i.aa = zext i1 %narrow to i32
  %i.ab = call i32 @app_passwd(ptr noundef %.084, ptr noundef %.082, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not103 = icmp eq i32 %i.ab, 0
  %i.ac = load ptr, ptr @bio_err, align 8, !tbaa !18 ; 2 uses
  br i1 %.not103, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ad = call i32 @BIO_puts(ptr noundef %i.ac, ptr noundef nonnull @.str.46) #6 ; 0 uses
  br label %.loopexit141.a

bb.v:                                             ; preds = %bb.t
  %i.ae = call i32 @BIO_puts(ptr noundef %i.ac, ptr noundef nonnull @.str.47) #6 ; 0 uses
  %i.af = load i32, ptr %i.d, align 4, !tbaa !15  ; 2 uses
  %i.ag = load ptr, ptr %i.b, align 8, !tbaa !14  ; 2 uses
  br i1 %.not109, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ah = call ptr @load_pubkey(ptr noundef %.088, i32 noundef %i.af, i32 noundef 1, ptr noundef %i.ag, ptr noundef nonnull @.str.48) #6
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.ai = call ptr @load_key(ptr noundef %.088, i32 noundef %i.af, i32 noundef 1, ptr noundef %i.ag, ptr noundef nonnull @.str.49) #6
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.090 = phi ptr [ %i.ah, %bb.w ], [ %i.ai, %bb.x ] ; 17 uses
  %i.aj = icmp eq ptr %.090, null
  br i1 %i.aj, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ak = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.al = call i32 @BIO_puts(ptr noundef %i.ak, ptr noundef nonnull @.str.50) #6 ; 0 uses
  %i.am = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.am) #6
  br label %.loopexit141.a

bb.aa:                                            ; preds = %bb.y
  %i.an = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.090, ptr noundef nonnull @.str.51) #6
  %.not104 = icmp eq i32 %i.an, 0
  br i1 %.not104, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ao = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.ap = call i32 @BIO_puts(ptr noundef %i.ao, ptr noundef nonnull @.str.52) #6 ; 0 uses
  br label %.loopexit141.a

bb.ac:                                            ; preds = %bb.aa
  %i.aq = load i32, ptr %i.e, align 4, !tbaa !15
  %i.ar = call ptr @bio_open_owner(ptr noundef %.086, i32 noundef %i.aq, i32 noundef %i.aa) #6 ; 16 uses
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %.loopexit141.a, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  br i1 %i.y, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  br i1 %.not109, label %.critedge, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = call i32 @EVP_PKEY_print_public(ptr noundef nonnull %i.ar, ptr noundef nonnull %.090, i32 noundef 0, ptr noundef null) #6
  %i.au = icmp slt i32 %i.at, 1
  br i1 %i.au, label %bb.ag, label %bb.ah

.critedge:                                        ; preds = %bb.ae
  %i.av = call i32 @EVP_PKEY_print_private(ptr noundef nonnull %i.ar, ptr noundef nonnull %.090, i32 noundef 0, ptr noundef null) #6
  %i.aw = icmp slt i32 %i.av, 1
  br i1 %i.aw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %.critedge, %bb.af
  call void @perror(ptr noundef %.086) #7
  %i.ax = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.ax) #6
  br label %.loopexit141.a

bb.ah:                                            ; preds = %bb.af, %.critedge, %bb.ad
  %.not106 = icmp eq i32 %.076, 0
  br i1 %.not106, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store ptr null, ptr %i.g, align 8, !tbaa !20
  %i.ay = call i32 @EVP_PKEY_get_bn_param(ptr noundef nonnull %.090, ptr noundef nonnull @.str.53, ptr noundef nonnull %i.g) #6
  %.not107 = icmp eq i32 %i.ay, 0
  br i1 %.not107, label %bb.aj, label %.thread

.thread:                                          ; preds = %bb.ai
  %i.az = call i32 @BIO_puts(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.54) #6 ; 0 uses
  %i.ba = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.bb = call i32 @BN_print(ptr noundef nonnull %i.ar, ptr noundef %i.ba) #6 ; 0 uses
  %i.bc = call i32 @BIO_puts(ptr noundef nonnull %i.ar, ptr noundef nonnull @.str.55) #6 ; 0 uses
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !20
  call void @BN_free(ptr noundef %i.bd) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.be = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.be) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %.loopexit141.a

bb.ak:                                            ; preds = %.thread, %bb.ah
  %.not108 = icmp eq i32 %.078, 0
  br i1 %.not108, label %bb.al, label %bb.bb

bb.al:                                            ; preds = %bb.ak
  %i.bf = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bg = call i32 @BIO_puts(ptr noundef %i.bf, ptr noundef nonnull @.str.56) #6 ; 0 uses
  %i.bh = load i32, ptr %i.e, align 4, !tbaa !15
  switch i32 %i.bh, label %bb.ap [
    i32 4, label %bb.aq
    i32 32773, label %bb.am
    i32 11, label %.thread120
    i32 12, label %bb.an
  ]

bb.am:                                            ; preds = %bb.al
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  br i1 %.not109, label %.thread120, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bi = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bj = call i32 @BIO_puts(ptr noundef %i.bi, ptr noundef nonnull @.str.60) #6 ; 0 uses
  br label %.loopexit141.a

bb.ap:                                            ; preds = %bb.al
  %i.bk = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bl = call i32 @BIO_puts(ptr noundef %i.bk, ptr noundef nonnull @.str.62) #6 ; 0 uses
  br label %.loopexit141.a

bb.aq:                                            ; preds = %bb.am, %bb.al
  %.070 = phi ptr [ @.str.57, %bb.al ], [ @.str.58, %bb.am ]
  %i.bm = or i32 %.072, %.074
  %or.cond3.not = icmp eq i32 %i.bm, 0
  %.str.64..str.63 = select i1 %or.cond3.not, ptr @.str.64, ptr @.str.63
  br label %.thread120

.thread120:                                       ; preds = %bb.al, %bb.an, %bb.aq
  %.070122 = phi ptr [ %.070, %bb.aq ], [ @.str.61, %bb.an ], [ @.str.59, %bb.al ] ; 2 uses
  %.067 = phi ptr [ %.str.64..str.63, %bb.aq ], [ null, %bb.an ], [ null, %bb.al ]
  %i.bn = or i32 %.072, %.074
  %or.cond5.not = icmp eq i32 %i.bn, 0
  %. = select i1 %or.cond5.not, i32 135, i32 2
  %i.bo = call ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef nonnull %.090, i32 noundef %., ptr noundef nonnull %.070122, ptr noundef %.067, ptr noundef null) #6 ; 10 uses
  %i.bp = call i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef %i.bo) #6
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %.thread120
  %i.br = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bs = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.br, ptr noundef nonnull @.str.65, ptr noundef nonnull %.070122) #6 ; 0 uses
  br label %.loopexit141.a

bb.as:                                            ; preds = %.thread120
  %i.bt = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not110 = icmp eq ptr %i.bt, null
  br i1 %.not110, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bu = call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.bt) #6
  %i.bv = call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef %i.bo, ptr noundef %i.bu, ptr noundef null) #6 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.bw = icmp ne ptr %.pre, null
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.bx = phi i1 [ %i.bw, %bb.at ], [ false, %bb.as ]
  %i.by = load i32, ptr %i.e, align 4
  %i.bz = icmp eq i32 %i.by, 12
  %or.cond7 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond7, label %bb.av, label %.thread123

bb.av:                                            ; preds = %bb.au
  %i.ca = call ptr @get_ui_method() #6
  %i.cb = call i32 @OSSL_ENCODER_CTX_set_passphrase_ui(ptr noundef %i.bo, ptr noundef %i.ca, ptr noundef null) #6 ; 0 uses
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %.not111 = icmp eq ptr %i.cc, null
  br i1 %.not111, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cc) #8
  %i.ce = call i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef %i.bo, ptr noundef nonnull %i.cc, i64 noundef %i.cd) #6 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.av, %bb.aw
  %.pr = load i32, ptr %i.e, align 4, !tbaa !15
  %i.cf = icmp eq i32 %.pr, 12
  br i1 %i.cf, label %bb.ay, label %.thread123

bb.ay:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.f) #6
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cg, i8 0, i64 40, i1 false)
  %i.ch = call i32 @OSSL_ENCODER_CTX_set_params(ptr noundef %i.bo, ptr noundef nonnull %2) #6
  %.not112 = icmp eq i32 %i.ch, 0
  br i1 %.not112, label %bb.az, label %.thread124

.thread124:                                       ; preds = %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %.thread123

bb.az:                                            ; preds = %bb.ay
  %i.ci = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.cj = call i32 @BIO_puts(ptr noundef %i.ci, ptr noundef nonnull @.str.67) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %.loopexit141.a

.thread123:                                       ; preds = %bb.au, %.thread124, %bb.ax
  %i.ck = call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.bo, ptr noundef nonnull %i.ar) #6
  %.not113 = icmp eq i32 %i.ck, 0
  br i1 %.not113, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.thread123
  %i.cl = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.cm = call i32 @BIO_puts(ptr noundef %i.cl, ptr noundef nonnull @.str.68) #6 ; 0 uses
  br label %.loopexit141.a

.loopexit141.a:                                   ; preds = %bb.q, %bb.z, %bb.ac, %bb.ag, %bb.s, %bb.ar, %bb.ba, %bb.az, %bb.ao, %bb.ap, %bb.aj, %bb.ab, %bb.u
  %.092.ph = phi ptr [ null, %bb.u ], [ null, %bb.ab ], [ %i.ar, %bb.aj ], [ %i.ar, %bb.ap ], [ %i.ar, %bb.ao ], [ %i.ar, %bb.az ], [ %i.ar, %bb.ba ], [ %i.ar, %bb.ar ], [ null, %bb.s ], [ %i.ar, %bb.ag ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %bb.q ]
  %.191.ph = phi ptr [ null, %bb.u ], [ %.090, %bb.ab ], [ %.090, %bb.aj ], [ %.090, %bb.ap ], [ %.090, %bb.ao ], [ %.090, %bb.az ], [ %.090, %bb.ba ], [ %.090, %bb.ar ], [ null, %bb.s ], [ %.090, %bb.ag ], [ %.090, %bb.ac ], [ null, %bb.z ], [ null, %bb.q ]
  %.065.ph = phi ptr [ null, %bb.u ], [ null, %bb.ab ], [ null, %bb.aj ], [ null, %bb.ap ], [ null, %bb.ao ], [ %i.bo, %bb.az ], [ %i.bo, %bb.ba ], [ %i.bo, %bb.ar ], [ null, %bb.s ], [ null, %bb.ag ], [ null, %bb.ac ], [ null, %bb.z ], [ null, %bb.q ]
  %i.cn = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.cn) #6
  br label %bb.bb

bb.bb:                                            ; preds = %.loopexit.a, %bb.c, %bb.ak, %.thread123, %.loopexit141.a
  %.065140 = phi ptr [ %.065.ph, %.loopexit141.a ], [ null, %.loopexit.a ], [ null, %bb.c ], [ null, %bb.ak ], [ %i.bo, %.thread123 ]
  %.071138 = phi i32 [ 1, %.loopexit141.a ], [ 0, %.loopexit.a ], [ 0, %bb.c ], [ 0, %bb.ak ], [ 0, %.thread123 ]
  %.191136 = phi ptr [ %.191.ph, %.loopexit141.a ], [ null, %.loopexit.a ], [ null, %bb.c ], [ %.090, %bb.ak ], [ %.090, %.thread123 ]
  %.092134 = phi ptr [ %.092.ph, %.loopexit141.a ], [ null, %.loopexit.a ], [ null, %bb.c ], [ %i.ar, %bb.ak ], [ %i.ar, %.thread123 ]
  call void @OSSL_ENCODER_CTX_free(ptr noundef %.065140) #6
  call void @BIO_free_all(ptr noundef %.092134) #6
  call void @EVP_PKEY_free(ptr noundef %.191136) #6
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @EVP_CIPHER_free(ptr noundef %i.co) #6
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.cp, ptr noundef nonnull @.str.69, i32 noundef 307) #6
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.cq, ptr noundef nonnull @.str.69, i32 noundef 308) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.071138
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @opt_set_unknown_name(ptr noundef) local_unnamed_addr #2

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_next() local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opt_help(ptr noundef) local_unnamed_addr #2

declare i32 @opt_format(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare ptr @opt_unknown() local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare i32 @opt_check_rest_arg(ptr noundef) local_unnamed_addr #2

declare i32 @opt_cipher(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @app_passwd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_puts(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @load_pubkey(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @load_key(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_print_errors(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bio_open_owner(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_private(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #3

declare i32 @EVP_PKEY_get_bn_param(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BN_print(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @BN_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_get0_name(ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_passphrase_ui(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_ui_method() local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_set_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_to_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_ENCODER_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { cold }
attributes #8 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !16}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS13evp_cipher_st", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"p1 omnipotent char", !10, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!6, !6, i64 0}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!"p1 _ZTS6bio_st", !10, i64 0}
!18 = !{!17, !17, i64 0}
!19 = !{!"p1 _ZTS9bignum_st", !10, i64 0}
!20 = !{!19, !19, i64 0}
end_hunk_0
