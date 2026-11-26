Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.options_st = type { ptr, i32, i32, ptr }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@OPT_SECTION_STR = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Verify key consistency\00", align 1
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"Any supported cipher\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"Input file\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.11 = private unnamed_addr constant [27 x i8] c"Input format (DER/PEM/P12)\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"Expect a public key in input file\00", align 1
@.str.14 = private unnamed_addr constant [16 x i8] c"RSAPublicKey_in\00", align 1
@.str.15 = private unnamed_addr constant [25 x i8] c"Input is an RSAPublicKey\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.17 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.20 = private unnamed_addr constant [12 x i8] c"Output file\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"Output format, one of DER PEM PVK\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.24 = private unnamed_addr constant [20 x i8] c"Output a public key\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"RSAPublicKey_out\00", align 1
@.str.26 = private unnamed_addr constant [26 x i8] c"Output is an RSAPublicKey\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.28 = private unnamed_addr constant [31 x i8] c"Output file pass phrase source\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"Don't print key out\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"Print the key in text\00", align 1
@.str.33 = private unnamed_addr constant [8 x i8] c"modulus\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"Print the RSA key modulus\00", align 1
@.str.35 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.36 = private unnamed_addr constant [40 x i8] c"Use traditional format for private keys\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"PVK options:\0A\00", align 1
@.str.38 = private unnamed_addr constant [11 x i8] c"pvk-strong\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"Enable 'Strong' PVK encoding level (default)\00", align 1
@.str.40 = private unnamed_addr constant [9 x i8] c"pvk-weak\00", align 1
@.str.41 = private unnamed_addr constant [33 x i8] c"Enable 'Weak' PVK encoding level\00", align 1
@.str.42 = private unnamed_addr constant [9 x i8] c"pvk-none\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"Don't enforce PVK encoding\00", align 1
@.str.44 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.46 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.47 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.48 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.49 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.52 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@rsa_options = dso_local constant [30 x %struct.options_st] [%struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @.str.1, i32 1, i32 45, ptr @.str.2 }, %struct.options_st { ptr @.str.3, i32 18, i32 45, ptr @.str.4 }, %struct.options_st { ptr @.str.5, i32 19, i32 45, ptr @.str.6 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.7 }, %struct.options_st { ptr @.str.8, i32 4, i32 115, ptr @.str.9 }, %struct.options_st { ptr @.str.10, i32 2, i32 102, ptr @.str.11 }, %struct.options_st { ptr @.str.12, i32 6, i32 45, ptr @.str.13 }, %struct.options_st { ptr @.str.14, i32 10, i32 45, ptr @.str.15 }, %struct.options_st { ptr @.str.16, i32 9, i32 115, ptr @.str.17 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.18 }, %struct.options_st { ptr @.str.19, i32 5, i32 62, ptr @.str.20 }, %struct.options_st { ptr @.str.21, i32 3, i32 102, ptr @.str.22 }, %struct.options_st { ptr @.str.23, i32 7, i32 45, ptr @.str.24 }, %struct.options_st { ptr @.str.25, i32 11, i32 45, ptr @.str.26 }, %struct.options_st { ptr @.str.27, i32 8, i32 115, ptr @.str.28 }, %struct.options_st { ptr @.str.29, i32 15, i32 45, ptr @.str.30 }, %struct.options_st { ptr @.str.31, i32 16, i32 45, ptr @.str.32 }, %struct.options_st { ptr @.str.33, i32 17, i32 45, ptr @.str.34 }, %struct.options_st { ptr @.str.35, i32 1606, i32 45, ptr @.str.36 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.37 }, %struct.options_st { ptr @.str.38, i32 14, i32 45, ptr @.str.39 }, %struct.options_st { ptr @.str.40, i32 13, i32 45, ptr @.str.41 }, %struct.options_st { ptr @.str.42, i32 12, i32 45, ptr @.str.43 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.44 }, %struct.options_st { ptr @.str.45, i32 1602, i32 115, ptr @.str.46 }, %struct.options_st { ptr @.str.47, i32 1601, i32 115, ptr @.str.48 }, %struct.options_st { ptr @.str.49, i32 1604, i32 115, ptr @.str.50 }, %struct.options_st { ptr @.str.51, i32 1603, i32 115, ptr @.str.52 }, %struct.options_st zeroinitializer], align 16
@.str.53 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.54 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.56 = private unnamed_addr constant [34 x i8] c"Only private keys can be checked\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.59 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.61 = private unnamed_addr constant [16 x i8] c"Not an RSA key\0A\00", align 1
@.str.62 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.63 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.64 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.65 = private unnamed_addr constant [35 x i8] c"RSA unable to create PKEY context\0A\00", align 1
@.str.66 = private unnamed_addr constant [12 x i8] c"RSA key ok\0A\00", align 1
@.str.67 = private unnamed_addr constant [16 x i8] c"RSA key not ok\0A\00", align 1
@.str.68 = private unnamed_addr constant [17 x i8] c"writing RSA key\0A\00", align 1
@.str.69 = private unnamed_addr constant [4 x i8] c"DER\00", align 1
@.str.70 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"MSBLOB\00", align 1
@.str.72 = private unnamed_addr constant [43 x i8] c"PVK form impossible with public key input\0A\00", align 1
@.str.73 = private unnamed_addr constant [4 x i8] c"PVK\00", align 1
@.str.74 = private unnamed_addr constant [41 x i8] c"bad output format specified for outfile\0A\00", align 1
@.str.75 = private unnamed_addr constant [6 x i8] c"pkcs1\00", align 1
@.str.76 = private unnamed_addr constant [21 x i8] c"SubjectPublicKeyInfo\00", align 1
@.str.77 = private unnamed_addr constant [15 x i8] c"PrivateKeyInfo\00", align 1
@.str.78 = private unnamed_addr constant [25 x i8] c"%s format not supported\0A\00", align 1
@.str.79 = private unnamed_addr constant [14 x i8] c"encrypt-level\00", align 1
@.str.80 = private unnamed_addr constant [30 x i8] c"invalid PVK encryption level\0A\00", align 1
@.str.81 = private unnamed_addr constant [21 x i8] c"unable to write key\0A\00", align 1
@.str.82 = private unnamed_addr constant [11 x i8] c"apps/rsa.c\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @rsa_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca i32, align 4                      ; 9 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 6 uses
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
  tail call void @opt_set_unknown_name(ptr noundef nonnull @.str.53) #6
  %i.h = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @rsa_options) #6
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0120 = phi ptr [ null, %bb.a ], [ %.0120.be, %.backedge ] ; 20 uses
  %.0118 = phi ptr [ null, %bb.a ], [ %.0118.be, %.backedge ] ; 20 uses
  %.0116 = phi ptr [ null, %bb.a ], [ %.0116.be, %.backedge ] ; 19 uses
  %.0114 = phi ptr [ null, %bb.a ], [ %.0114.be, %.backedge ] ; 19 uses
  %.0112 = phi ptr [ null, %bb.a ], [ %.0112.be, %.backedge ] ; 19 uses
  %.0110 = phi i32 [ 0, %bb.a ], [ %.0110.be, %.backedge ] ; 19 uses
  %.0108 = phi i32 [ 0, %bb.a ], [ %.0108.be, %.backedge ] ; 19 uses
  %.0106 = phi i32 [ 0, %bb.a ], [ %.0106.be, %.backedge ] ; 20 uses
  %.0104 = phi i32 [ 0, %bb.a ], [ %.0104.be, %.backedge ] ; 19 uses
  %.0102 = phi i32 [ 0, %bb.a ], [ %.0102.be, %.backedge ] ; 21 uses
  %.0100 = phi i32 [ 0, %bb.a ], [ %.0100.be, %.backedge ] ; 22 uses
  %.097 = phi i32 [ 0, %bb.a ], [ %.097.be, %.backedge ] ; 19 uses
  %i.i = call i32 @opt_next() #6                  ; 3 uses
  switch i32 %i.i, label %.backedge [
    i32 0, label %bb.v
    i32 1604, label %bb.t
    i32 -1, label %.loopexit.a
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 4, label %bb.e
    i32 3, label %bb.f
    i32 5, label %bb.g
    i32 9, label %bb.h
    i32 8, label %bb.i
    i32 6, label %bb.j
    i32 7, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 14, label %bb.n
    i32 13, label %bb.n
    i32 12, label %bb.n
    i32 15, label %bb.o
    i32 16, label %bb.p
    i32 17, label %bb.q
    i32 18, label %bb.r
    i32 19, label %bb.s
    i32 1606, label %bb.u
    i32 1603, label %bb.t
    i32 1601, label %bb.t
    i32 1602, label %bb.t
  ]

.backedge:                                        ; preds = %bb.b, %bb.t, %bb.f, %bb.d, %bb.u, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.e
  %.0120.be = phi ptr [ %.0120, %bb.b ], [ %.0120, %bb.d ], [ %i.n, %bb.e ], [ %.0120, %bb.f ], [ %.0120, %bb.g ], [ %.0120, %bb.h ], [ %.0120, %bb.i ], [ %.0120, %bb.j ], [ %.0120, %bb.k ], [ %.0120, %bb.l ], [ %.0120, %bb.m ], [ %.0120, %bb.n ], [ %.0120, %bb.o ], [ %.0120, %bb.p ], [ %.0120, %bb.q ], [ %.0120, %bb.r ], [ %.0120, %bb.s ], [ %.0120, %bb.u ], [ %.0120, %bb.t ]
  %.0118.be = phi ptr [ %.0118, %bb.b ], [ %.0118, %bb.d ], [ %.0118, %bb.e ], [ %.0118, %bb.f ], [ %i.q, %bb.g ], [ %.0118, %bb.h ], [ %.0118, %bb.i ], [ %.0118, %bb.j ], [ %.0118, %bb.k ], [ %.0118, %bb.l ], [ %.0118, %bb.m ], [ %.0118, %bb.n ], [ %.0118, %bb.o ], [ %.0118, %bb.p ], [ %.0118, %bb.q ], [ %.0118, %bb.r ], [ %.0118, %bb.s ], [ %.0118, %bb.u ], [ %.0118, %bb.t ]
  %.0116.be = phi ptr [ %.0116, %bb.b ], [ %.0116, %bb.d ], [ %.0116, %bb.e ], [ %.0116, %bb.f ], [ %.0116, %bb.g ], [ %.0116, %bb.h ], [ %.0116, %bb.i ], [ %.0116, %bb.j ], [ %.0116, %bb.k ], [ %.0116, %bb.l ], [ %.0116, %bb.m ], [ %.0116, %bb.n ], [ %.0116, %bb.o ], [ %.0116, %bb.p ], [ %.0116, %bb.q ], [ %.0116, %bb.r ], [ %i.u, %bb.s ], [ %.0116, %bb.u ], [ %.0116, %bb.t ]
  %.0114.be = phi ptr [ %.0114, %bb.b ], [ %.0114, %bb.d ], [ %.0114, %bb.e ], [ %.0114, %bb.f ], [ %.0114, %bb.g ], [ %i.r, %bb.h ], [ %.0114, %bb.i ], [ %.0114, %bb.j ], [ %.0114, %bb.k ], [ %.0114, %bb.l ], [ %.0114, %bb.m ], [ %.0114, %bb.n ], [ %.0114, %bb.o ], [ %.0114, %bb.p ], [ %.0114, %bb.q ], [ %.0114, %bb.r ], [ %.0114, %bb.s ], [ %.0114, %bb.u ], [ %.0114, %bb.t ]
  %.0112.be = phi ptr [ %.0112, %bb.b ], [ %.0112, %bb.d ], [ %.0112, %bb.e ], [ %.0112, %bb.f ], [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %i.s, %bb.i ], [ %.0112, %bb.j ], [ %.0112, %bb.k ], [ %.0112, %bb.l ], [ %.0112, %bb.m ], [ %.0112, %bb.n ], [ %.0112, %bb.o ], [ %.0112, %bb.p ], [ %.0112, %bb.q ], [ %.0112, %bb.r ], [ %.0112, %bb.s ], [ %.0112, %bb.u ], [ %.0112, %bb.t ]
  %.0110.be = phi i32 [ %.0110, %bb.b ], [ %.0110, %bb.d ], [ %.0110, %bb.e ], [ %.0110, %bb.f ], [ %.0110, %bb.g ], [ %.0110, %bb.h ], [ %.0110, %bb.i ], [ %.0110, %bb.j ], [ %.0110, %bb.k ], [ %.0110, %bb.l ], [ %.0110, %bb.m ], [ %.0110, %bb.n ], [ %.0110, %bb.o ], [ 1, %bb.p ], [ %.0110, %bb.q ], [ %.0110, %bb.r ], [ %.0110, %bb.s ], [ %.0110, %bb.u ], [ %.0110, %bb.t ]
  %.0108.be = phi i32 [ %.0108, %bb.b ], [ %.0108, %bb.d ], [ %.0108, %bb.e ], [ %.0108, %bb.f ], [ %.0108, %bb.g ], [ %.0108, %bb.h ], [ %.0108, %bb.i ], [ %.0108, %bb.j ], [ %.0108, %bb.k ], [ %.0108, %bb.l ], [ %.0108, %bb.m ], [ %.0108, %bb.n ], [ %.0108, %bb.o ], [ %.0108, %bb.p ], [ %.0108, %bb.q ], [ 1, %bb.r ], [ %.0108, %bb.s ], [ %.0108, %bb.u ], [ %.0108, %bb.t ]
  %.0106.be = phi i32 [ %.0106, %bb.b ], [ %.0106, %bb.d ], [ %.0106, %bb.e ], [ %.0106, %bb.f ], [ %.0106, %bb.g ], [ %.0106, %bb.h ], [ %.0106, %bb.i ], [ %.0106, %bb.j ], [ %.0106, %bb.k ], [ %.0106, %bb.l ], [ %.0106, %bb.m ], [ %.0106, %bb.n ], [ 1, %bb.o ], [ %.0106, %bb.p ], [ %.0106, %bb.q ], [ %.0106, %bb.r ], [ %.0106, %bb.s ], [ %.0106, %bb.u ], [ %.0106, %bb.t ]
  %.0104.be = phi i32 [ %.0104, %bb.b ], [ %.0104, %bb.d ], [ %.0104, %bb.e ], [ %.0104, %bb.f ], [ %.0104, %bb.g ], [ %.0104, %bb.h ], [ %.0104, %bb.i ], [ %.0104, %bb.j ], [ %.0104, %bb.k ], [ %.0104, %bb.l ], [ %.0104, %bb.m ], [ %.0104, %bb.n ], [ %.0104, %bb.o ], [ %.0104, %bb.p ], [ 1, %bb.q ], [ %.0104, %bb.r ], [ %.0104, %bb.s ], [ %.0104, %bb.u ], [ %.0104, %bb.t ]
  %.0102.be = phi i32 [ %.0102, %bb.b ], [ %.0102, %bb.d ], [ %.0102, %bb.e ], [ %.0102, %bb.f ], [ %.0102, %bb.g ], [ %.0102, %bb.h ], [ %.0102, %bb.i ], [ 1, %bb.j ], [ %.0102, %bb.k ], [ 2, %bb.l ], [ %.0102, %bb.m ], [ %.0102, %bb.n ], [ %.0102, %bb.o ], [ %.0102, %bb.p ], [ %.0102, %bb.q ], [ %.0102, %bb.r ], [ %.0102, %bb.s ], [ %.0102, %bb.u ], [ %.0102, %bb.t ]
  %.0100.be = phi i32 [ %.0100, %bb.b ], [ %.0100, %bb.d ], [ %.0100, %bb.e ], [ %.0100, %bb.f ], [ %.0100, %bb.g ], [ %.0100, %bb.h ], [ %.0100, %bb.i ], [ %.0100, %bb.j ], [ 1, %bb.k ], [ %.0100, %bb.l ], [ 2, %bb.m ], [ %.0100, %bb.n ], [ %.0100, %bb.o ], [ %.0100, %bb.p ], [ %.0100, %bb.q ], [ %.0100, %bb.r ], [ %.0100, %bb.s ], [ %.0100, %bb.u ], [ %.0100, %bb.t ]
  %.097.be = phi i32 [ %.097, %bb.b ], [ %.097, %bb.d ], [ %.097, %bb.e ], [ %.097, %bb.f ], [ %.097, %bb.g ], [ %.097, %bb.h ], [ %.097, %bb.i ], [ %.097, %bb.j ], [ %.097, %bb.k ], [ %.097, %bb.l ], [ %.097, %bb.m ], [ %.097, %bb.n ], [ %.097, %bb.o ], [ %.097, %bb.p ], [ %.097, %bb.q ], [ %.097, %bb.r ], [ %.097, %bb.s ], [ 1, %bb.u ], [ %.097, %bb.t ]
  br label %bb.b, !llvm.loop !9

.loopexit.a:                                      ; preds = %bb.b, %bb.f, %bb.d, %bb.w, %bb.v
  %i.j = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.k = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.j, ptr noundef nonnull @.str.54, ptr noundef %i.h) #6 ; 0 uses
  br label %.loopexit169.a

bb.c:                                             ; preds = %bb.b
  call void @opt_help(ptr noundef nonnull @rsa_options) #6
  br label %.loopexit169.a

bb.d:                                             ; preds = %bb.b
  %i.l = call ptr @opt_arg() #6
  %i.m = call i32 @opt_format(ptr noundef %i.l, i64 noundef 4030, ptr noundef nonnull %i.d) #6
  %.not153 = icmp eq i32 %i.m, 0
  br i1 %.not153, label %.loopexit.a, label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.n = call ptr @opt_arg() #6
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.o = call ptr @opt_arg() #6
  %i.p = call i32 @opt_format(ptr noundef %i.o, i64 noundef 4030, ptr noundef nonnull %i.e) #6
  %.not152 = icmp eq i32 %i.p, 0
  br i1 %.not152, label %.loopexit.a, label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.q = call ptr @opt_arg() #6
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.r = call ptr @opt_arg() #6
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.s = call ptr @opt_arg() #6
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  br label %.backedge

bb.n:                                             ; preds = %bb.b, %bb.b, %bb.b
  %i.t = add nsw i32 %i.i, -12
  store i32 %i.t, ptr %i.f, align 4, !tbaa !15
  br label %.backedge

bb.o:                                             ; preds = %bb.b
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  %i.u = call ptr @opt_unknown() #6
  br label %.backedge

bb.t:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.v = call i32 @opt_provider(i32 noundef %i.i) #6
  %.not151 = icmp eq i32 %i.v, 0
  br i1 %.not151, label %.loopexit169.a, label %.backedge

bb.u:                                             ; preds = %bb.b
  br label %.backedge

bb.v:                                             ; preds = %bb.b
  %i.w = call i32 @opt_check_rest_arg(ptr noundef null) #6
  %.not135 = icmp eq i32 %i.w, 0
  br i1 %.not135, label %.loopexit.a, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.x = call i32 @opt_cipher(ptr noundef %.0116, ptr noundef nonnull %i.a) #6
  %.not136 = icmp eq i32 %i.x, 0
  br i1 %.not136, label %.loopexit.a, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.y = icmp eq i32 %.0110, 0                    ; 2 uses
  %i.z = icmp ne i32 %.0102, 0                    ; 5 uses
  %or.cond = or i1 %i.y, %i.z
  %.not137 = icmp eq i32 %.0100, 0
  %i.aa = xor i32 %.0106, 1
  %spec.select = select i1 %.not137, i32 %i.aa, i32 0
  %i.ab = select i1 %or.cond, i32 %spec.select, i32 1
  %i.ac = call i32 @app_passwd(ptr noundef %.0114, ptr noundef %.0112, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #6
  %.not139 = icmp eq i32 %i.ac, 0
  br i1 %.not139, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ad = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.ae = call i32 @BIO_puts(ptr noundef %i.ad, ptr noundef nonnull @.str.55) #6 ; 0 uses
  br label %.loopexit169.a

bb.z:                                             ; preds = %bb.x
  %i.af = icmp ne i32 %.0108, 0                   ; 2 uses
  %or.cond3 = and i1 %i.af, %i.z
  br i1 %or.cond3, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ag = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.ah = call i32 @BIO_puts(ptr noundef %i.ag, ptr noundef nonnull @.str.56) #6 ; 0 uses
  br label %.loopexit169.a

bb.ab:                                            ; preds = %bb.z
  br i1 %i.z, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ai = icmp eq i32 %.0102, 2
  %i.aj = load i32, ptr %i.d, align 4, !tbaa !15  ; 3 uses
  %switch.selectcmp = icmp eq i32 %i.aj, 4
  %switch.select = select i1 %switch.selectcmp, i32 10, i32 0
  %switch.selectcmp155 = icmp eq i32 %i.aj, 32773
  %switch.select156 = select i1 %switch.selectcmp155, i32 32777, i32 %switch.select
  %.092 = select i1 %i.ai, i32 %switch.select156, i32 %i.aj
  %i.ak = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.al = call ptr @load_pubkey(ptr noundef %.0120, i32 noundef %.092, i32 noundef 1, ptr noundef %i.ak, ptr noundef nonnull @.str.57) #6
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.am = load i32, ptr %i.d, align 4, !tbaa !15
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.ao = call ptr @load_key(ptr noundef %.0120, i32 noundef %i.am, i32 noundef 1, ptr noundef %i.an, ptr noundef nonnull @.str.58) #6
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0122 = phi ptr [ %i.al, %bb.ac ], [ %i.ao, %bb.ad ] ; 22 uses
  %i.ap = icmp eq ptr %.0122, null
  br i1 %i.ap, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.aq = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.aq) #6
  br label %.loopexit169.a

bb.ag:                                            ; preds = %bb.ae
  %i.ar = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.0122, ptr noundef nonnull @.str.59) #6
  %.not140 = icmp eq i32 %i.ar, 0
  br i1 %.not140, label %bb.ah, label %bb.aj

bb.ah:                                            ; preds = %bb.ag
  %i.as = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.0122, ptr noundef nonnull @.str.60) #6
  %.not141 = icmp eq i32 %i.as, 0
  br i1 %.not141, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.at = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.au = call i32 @BIO_puts(ptr noundef %i.at, ptr noundef nonnull @.str.61) #6 ; 0 uses
  br label %.loopexit169.a

bb.aj:                                            ; preds = %bb.ah, %bb.ag
  %i.av = load i32, ptr %i.e, align 4, !tbaa !15
  %i.aw = call ptr @bio_open_owner(ptr noundef %.0118, i32 noundef %i.av, i32 noundef %i.ab) #6 ; 20 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.loopexit169.a, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  br i1 %i.y, label %bb.ao, label %bb.al

bb.al:                                            ; preds = %bb.ak
  br i1 %i.z, label %bb.am, label %.critedge

bb.am:                                            ; preds = %bb.al
  %i.ay = call i32 @EVP_PKEY_print_public(ptr noundef nonnull %i.aw, ptr noundef nonnull %.0122, i32 noundef 0, ptr noundef null) #6
  %i.az = icmp slt i32 %i.ay, 1
  br i1 %i.az, label %bb.an, label %bb.ao

.critedge:                                        ; preds = %bb.al
  %i.ba = call i32 @EVP_PKEY_print_private(ptr noundef nonnull %i.aw, ptr noundef nonnull %.0122, i32 noundef 0, ptr noundef null) #6
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %.critedge, %bb.am
  call void @perror(ptr noundef %.0118) #7
  %i.bc = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.bc) #6
  br label %.loopexit169.a

bb.ao:                                            ; preds = %bb.am, %.critedge, %bb.ak
  %.not143 = icmp eq i32 %.0104, 0
  br i1 %.not143, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #6
  store ptr null, ptr %i.g, align 8, !tbaa !20
  %i.bd = call i32 @EVP_PKEY_get_bn_param(ptr noundef nonnull %.0122, ptr noundef nonnull @.str.62, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.be = call i32 @BIO_puts(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.63) #6 ; 0 uses
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.bg = call i32 @BN_print(ptr noundef nonnull %i.aw, ptr noundef %i.bf) #6 ; 0 uses
  %i.bh = call i32 @BIO_puts(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.64) #6 ; 0 uses
  %i.bi = load ptr, ptr %i.g, align 8, !tbaa !20
  call void @BN_free(ptr noundef %i.bi) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #6
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  br i1 %i.af, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.bj = call ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef null, ptr noundef nonnull %.0122, ptr noundef null) #6 ; 3 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bl = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bm = call i32 @BIO_puts(ptr noundef %i.bl, ptr noundef nonnull @.str.65) #6 ; 0 uses
  %i.bn = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.bn) #6
  br label %.loopexit169.a

bb.at:                                            ; preds = %bb.ar
  %i.bo = call i32 @EVP_PKEY_check(ptr noundef nonnull %i.bj) #6 ; 2 uses
  call void @EVP_PKEY_CTX_free(ptr noundef nonnull %i.bj) #6
  switch i32 %i.bo, label %bb.aw [
    i32 1, label %bb.au
    i32 0, label %bb.av
  ]

bb.au:                                            ; preds = %bb.at
  %i.bp = call i32 @BIO_puts(ptr noundef nonnull %i.aw, ptr noundef nonnull @.str.66) #6 ; 0 uses
  br label %.thread

bb.av:                                            ; preds = %bb.at
  %i.bq = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.br = call i32 @BIO_puts(ptr noundef %i.bq, ptr noundef nonnull @.str.67) #6 ; 0 uses
  %i.bs = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.bs) #6
  br label %.thread

bb.aw:                                            ; preds = %bb.at
  %i.bt = icmp slt i32 %i.bo, 0
  br i1 %i.bt, label %bb.ax, label %.thread

bb.ax:                                            ; preds = %bb.aw
  %i.bu = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.bu) #6
  br label %.loopexit169.a

.thread:                                          ; preds = %bb.au, %bb.aw, %bb.av, %bb.aq
  %.not144 = icmp eq i32 %.0106, 0
  br i1 %.not144, label %bb.ay, label %.loopexit169.a

bb.ay:                                            ; preds = %.thread
  %i.bv = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bw = call i32 @BIO_puts(ptr noundef %i.bv, ptr noundef nonnull @.str.68) #6 ; 0 uses
  %i.bx = load i32, ptr %i.e, align 4, !tbaa !15
  switch i32 %i.bx, label %bb.bc [
    i32 4, label %bb.bd
    i32 32773, label %bb.az
    i32 11, label %.thread159
    i32 12, label %bb.ba
  ]

bb.az:                                            ; preds = %bb.ay
  br label %bb.bd

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.z, label %bb.bb, label %.thread159

bb.bb:                                            ; preds = %bb.ba
  %i.by = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.bz = call i32 @BIO_puts(ptr noundef %i.by, ptr noundef nonnull @.str.72) #6 ; 0 uses
  br label %.loopexit169.a

bb.bc:                                            ; preds = %bb.ay
  %i.ca = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.cb = call i32 @BIO_puts(ptr noundef %i.ca, ptr noundef nonnull @.str.74) #6 ; 0 uses
  br label %.loopexit169.a

.thread159:                                       ; preds = %bb.ba, %bb.ay
  %.096.ph = phi ptr [ @.str.73, %bb.ba ], [ @.str.71, %bb.ay ]
  %i.cc = or i32 %.0100, %.0102
  %or.cond5161 = icmp ne i32 %i.cc, 0             ; 2 uses
  %.162 = select i1 %or.cond5161, i32 2, i32 135
  br label %bb.bg

bb.bd:                                            ; preds = %bb.az, %bb.ay
  %.096 = phi ptr [ @.str.69, %bb.ay ], [ @.str.70, %bb.az ] ; 2 uses
  %i.cd = or i32 %.0100, %.0102
  %or.cond5.not = icmp eq i32 %i.cd, 0
  br i1 %or.cond5.not, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.ce = icmp eq i32 %.0100, 2
  %.str.75..str.76 = select i1 %i.ce, ptr @.str.75, ptr @.str.76
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bd
  %.not145 = icmp eq i32 %.097, 0
  %.str.77..str.75 = select i1 %.not145, ptr @.str.77, ptr @.str.75
  br label %bb.bg

bb.bg:                                            ; preds = %.thread159, %bb.bf, %bb.be
  %.165 = phi i32 [ 2, %bb.be ], [ %.162, %.thread159 ], [ 135, %bb.bf ]
  %or.cond5164 = phi i1 [ true, %bb.be ], [ %or.cond5161, %.thread159 ], [ false, %bb.bf ]
  %.096163 = phi ptr [ %.096, %bb.be ], [ %.096.ph, %.thread159 ], [ %.096, %bb.bf ] ; 2 uses
  %.095 = phi ptr [ %.str.75..str.76, %bb.be ], [ null, %.thread159 ], [ %.str.77..str.75, %bb.bf ]
  %i.cf = call ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef nonnull %.0122, i32 noundef %.165, ptr noundef nonnull %.096163, ptr noundef %.095, ptr noundef null) #6 ; 11 uses
  %i.cg = call i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef %i.cf) #6
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %bb.bh, label %bb.bk

bb.bh:                                            ; preds = %bb.bg
  br i1 %or.cond5164, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ci = load i32, ptr %i.e, align 4, !tbaa !15
  %i.cj = call fastcc i32 @try_legacy_encoding(ptr noundef %.0122, i32 noundef %i.ci, i32 noundef %.0100, ptr noundef %i.aw)
  %.not150 = icmp eq i32 %i.cj, 0
  br i1 %.not150, label %bb.bj, label %.loopexit169.a

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ck = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.cl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ck, ptr noundef nonnull @.str.78, ptr noundef nonnull %.096163) #6 ; 0 uses
  br label %.loopexit169.a

bb.bk:                                            ; preds = %bb.bg
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !12  ; 2 uses
  %.not146 = icmp eq ptr %i.cm, null
  br i1 %.not146, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cn = call ptr @EVP_CIPHER_get0_name(ptr noundef nonnull %i.cm) #6
  %i.co = call i32 @OSSL_ENCODER_CTX_set_cipher(ptr noundef %i.cf, ptr noundef %i.cn, ptr noundef null) #6 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !12
  %i.cp = icmp ne ptr %.pre, null
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %i.cq = phi i1 [ %i.cp, %bb.bl ], [ false, %bb.bk ]
  %i.cr = load i32, ptr %i.e, align 4
  %i.cs = icmp eq i32 %i.cr, 12
  %or.cond13 = select i1 %i.cq, i1 true, i1 %i.cs
  br i1 %or.cond13, label %bb.bn, label %.thread166

bb.bn:                                            ; preds = %bb.bm
  %i.ct = call ptr @get_ui_method() #6
  %i.cu = call i32 @OSSL_ENCODER_CTX_set_passphrase_ui(ptr noundef %i.cf, ptr noundef %i.ct, ptr noundef null) #6 ; 0 uses
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !14  ; 3 uses
  %.not147 = icmp eq ptr %i.cv, null
  br i1 %.not147, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #8
  %i.cx = call i32 @OSSL_ENCODER_CTX_set_passphrase(ptr noundef %i.cf, ptr noundef nonnull %i.cv, i64 noundef %i.cw) #6 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bn, %bb.bo
  %.pr = load i32, ptr %i.e, align 4, !tbaa !15
  %i.cy = icmp eq i32 %.pr, 12
  br i1 %i.cy, label %bb.bq, label %.thread166

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #6
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.79, ptr noundef nonnull %i.f) #6
  %i.cz = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.cz, i8 0, i64 40, i1 false)
  %i.da = call i32 @OSSL_ENCODER_CTX_set_params(ptr noundef %i.cf, ptr noundef nonnull %2) #6
  %.not148 = icmp eq i32 %i.da, 0
  br i1 %.not148, label %bb.br, label %.thread167

.thread167:                                       ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %.thread166

bb.br:                                            ; preds = %bb.bq
  %i.db = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.dc = call i32 @BIO_puts(ptr noundef %i.db, ptr noundef nonnull @.str.80) #6 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #6
  br label %.loopexit169.a

.thread166:                                       ; preds = %bb.bm, %.thread167, %bb.bp
  %i.dd = call i32 @OSSL_ENCODER_to_bio(ptr noundef %i.cf, ptr noundef nonnull %i.aw) #6
  %.not149 = icmp eq i32 %i.dd, 0
  br i1 %.not149, label %bb.bs, label %.loopexit169.a

bb.bs:                                            ; preds = %.thread166
  %i.de = load ptr, ptr @bio_err, align 8, !tbaa !18
  %i.df = call i32 @BIO_puts(ptr noundef %i.de, ptr noundef nonnull @.str.81) #6 ; 0 uses
  %i.dg = load ptr, ptr @bio_err, align 8, !tbaa !18
  call void @ERR_print_errors(ptr noundef %i.dg) #6
  br label %.loopexit169.a

.loopexit169.a:                                   ; preds = %bb.t, %bb.br, %bb.as, %bb.ax, %.thread166, %bb.bi, %.thread, %bb.bj, %bb.aj, %bb.bs, %bb.bc, %bb.bb, %bb.an, %bb.ai, %bb.af, %bb.aa, %bb.y, %bb.c, %.loopexit.a
  %.0124 = phi ptr [ null, %.loopexit.a ], [ null, %bb.c ], [ %i.aw, %bb.as ], [ null, %bb.aa ], [ null, %bb.af ], [ null, %bb.aj ], [ %i.aw, %bb.an ], [ null, %bb.y ], [ %i.aw, %.thread ], [ %i.aw, %bb.bj ], [ %i.aw, %bb.bi ], [ %i.aw, %bb.bs ], [ %i.aw, %bb.br ], [ %i.aw, %bb.bb ], [ %i.aw, %bb.bc ], [ %i.aw, %.thread166 ], [ null, %bb.ai ], [ %i.aw, %bb.ax ], [ null, %bb.t ]
  %.1123 = phi ptr [ null, %.loopexit.a ], [ null, %bb.c ], [ %.0122, %bb.as ], [ null, %bb.aa ], [ null, %bb.af ], [ %.0122, %bb.aj ], [ %.0122, %bb.an ], [ null, %bb.y ], [ %.0122, %.thread ], [ %.0122, %bb.bj ], [ %.0122, %bb.bi ], [ %.0122, %bb.bs ], [ %.0122, %bb.br ], [ %.0122, %bb.bb ], [ %.0122, %bb.bc ], [ %.0122, %.thread166 ], [ %.0122, %bb.ai ], [ %.0122, %bb.ax ], [ null, %bb.t ]
  %.099 = phi i32 [ 1, %.loopexit.a ], [ 0, %bb.c ], [ 1, %bb.as ], [ 1, %bb.aa ], [ 1, %bb.af ], [ 1, %bb.aj ], [ 1, %bb.an ], [ 1, %bb.y ], [ 0, %.thread ], [ 1, %bb.bj ], [ 0, %bb.bi ], [ 1, %bb.bs ], [ 1, %bb.br ], [ 1, %bb.bb ], [ 1, %bb.bc ], [ 0, %.thread166 ], [ 1, %bb.ai ], [ 1, %bb.ax ], [ 1, %bb.t ]
  %.093 = phi ptr [ null, %.loopexit.a ], [ null, %bb.c ], [ null, %bb.as ], [ null, %bb.aa ], [ null, %bb.af ], [ null, %bb.aj ], [ null, %bb.an ], [ null, %bb.y ], [ null, %.thread ], [ %i.cf, %bb.bj ], [ %i.cf, %bb.bi ], [ %i.cf, %bb.bs ], [ %i.cf, %bb.br ], [ null, %bb.bb ], [ null, %bb.bc ], [ %i.cf, %.thread166 ], [ null, %bb.ai ], [ null, %bb.ax ], [ null, %bb.t ]
  call void @OSSL_ENCODER_CTX_free(ptr noundef %.093) #6
  call void @BIO_free_all(ptr noundef %.0124) #6
  call void @EVP_PKEY_free(ptr noundef %.1123) #6
  %i.dh = load ptr, ptr %i.a, align 8, !tbaa !12
  call void @EVP_CIPHER_free(ptr noundef %i.dh) #6
  %i.di = load ptr, ptr %i.b, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.di, ptr noundef nonnull @.str.82, i32 noundef 416) #6
  %i.dj = load ptr, ptr %i.c, align 8, !tbaa !14
  call void @CRYPTO_free(ptr noundef %i.dj, ptr noundef nonnull @.str.82, i32 noundef 417) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.099
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

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

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

declare ptr @EVP_PKEY_CTX_new_from_pkey(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_check(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #2

declare ptr @OSSL_ENCODER_CTX_new_for_pkey(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OSSL_ENCODER_CTX_get_num_encoders(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @try_legacy_encoding(ptr noundef nonnull %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @EVP_PKEY_get0_RSA(ptr noundef nonnull %0) #6 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %bb.i [
    i32 4, label %bb.c
    i32 32773, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = icmp eq i32 %2, 2
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @i2d_RSAPublicKey_bio(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #6
  %i.e = icmp sgt i32 %i.d, 0
  br label %bb.k

bb.e:                                             ; preds = %bb.c
  %i.f = tail call i32 @i2d_RSA_PUBKEY_bio(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #6
  %i.g = icmp sgt i32 %i.f, 0
  br label %bb.k

bb.f:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %2, 2
  br i1 %i.h, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.i = tail call i32 @PEM_write_bio_RSAPublicKey(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #6
  %i.j = icmp sgt i32 %i.i, 0
  br label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.k = tail call i32 @PEM_write_bio_RSA_PUBKEY(ptr noundef nonnull %3, ptr noundef nonnull %i.a) #6
  %i.l = icmp sgt i32 %i.k, 0
  br label %bb.k

bb.i:                                             ; preds = %bb.b
  %i.m = add i32 %1, -11
  %or.cond = icmp ult i32 %i.m, 2
  br i1 %or.cond, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.n = tail call i32 @i2b_PublicKey_bio(ptr noundef nonnull %3, ptr noundef nonnull %0) #6
  %i.o = icmp sgt i32 %i.n, 0
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.i, %bb.j, %bb.d, %bb.e
  %.0.shrunk = phi i1 [ %i.e, %bb.d ], [ %i.g, %bb.e ], [ %i.j, %bb.g ], [ %i.l, %bb.h ], [ %i.o, %bb.j ], [ false, %bb.i ]
  %.0 = zext i1 %.0.shrunk to i32
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k
  %.020 = phi i32 [ %.0, %bb.k ], [ 0, %bb.a ]
  ret i32 %.020
}

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

declare ptr @EVP_PKEY_get0_RSA(ptr noundef) local_unnamed_addr #2

declare i32 @i2d_RSAPublicKey_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_RSA_PUBKEY_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_RSAPublicKey(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_RSA_PUBKEY(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2b_PublicKey_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

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
end_hunk_0
