begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.options_st = type { ptr, i32, i32, ptr }
%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@OPT_SECTION_STR = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"engine\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"Use engine, possibly a hardware device\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.7 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.13 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"check\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"Check key consistency\00", align 1
@.str.16 = private unnamed_addr constant [9 x i8] c"pubcheck\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"Check public key consistency\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"Input key\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"inform\00", align 1
@.str.22 = private unnamed_addr constant [48 x i8] c"Key input format (ENGINE, other values ignored)\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.24 = private unnamed_addr constant [29 x i8] c"Key input pass phrase source\00", align 1
@.str.25 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.26 = private unnamed_addr constant [43 x i8] c"Read only public components from key input\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.28 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"Output file for encoded and/or text output\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"outform\00", align 1
@.str.31 = private unnamed_addr constant [36 x i8] c"Output encoding format (DER or PEM)\00", align 1
@.str.32 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.33 = private unnamed_addr constant [47 x i8] c"Any supported cipher to be used for encryption\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"passout\00", align 1
@.str.35 = private unnamed_addr constant [35 x i8] c"Output PEM file pass phrase source\00", align 1
@.str.36 = private unnamed_addr constant [12 x i8] c"traditional\00", align 1
@.str.37 = private unnamed_addr constant [50 x i8] c"Use traditional format for private key PEM output\00", align 1
@.str.38 = private unnamed_addr constant [7 x i8] c"pubout\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"Restrict encoded output to public components\00", align 1
@.str.40 = private unnamed_addr constant [6 x i8] c"noout\00", align 1
@.str.41 = private unnamed_addr constant [38 x i8] c"Do not output the key in encoded form\00", align 1
@.str.42 = private unnamed_addr constant [5 x i8] c"text\00", align 1
@.str.43 = private unnamed_addr constant [35 x i8] c"Output key components in plaintext\00", align 1
@.str.44 = private unnamed_addr constant [9 x i8] c"text_pub\00", align 1
@.str.45 = private unnamed_addr constant [47 x i8] c"Output only public key components in text form\00", align 1
@.str.46 = private unnamed_addr constant [13 x i8] c"ec_conv_form\00", align 1
@.str.47 = private unnamed_addr constant [55 x i8] c"Specifies the EC point conversion form in the encoding\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c"ec_param_enc\00", align 1
@.str.49 = private unnamed_addr constant [48 x i8] c"Specifies the way the EC parameters are encoded\00", align 1
@pkey_options = dso_local constant [28 x %struct.options_st] [%struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @.str.1, i32 1, i32 45, ptr @.str.2 }, %struct.options_st { ptr @.str.3, i32 6, i32 115, ptr @.str.4 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.5 }, %struct.options_st { ptr @.str.6, i32 1602, i32 115, ptr @.str.7 }, %struct.options_st { ptr @.str.8, i32 1601, i32 115, ptr @.str.9 }, %struct.options_st { ptr @.str.10, i32 1604, i32 115, ptr @.str.11 }, %struct.options_st { ptr @.str.12, i32 1603, i32 115, ptr @.str.13 }, %struct.options_st { ptr @.str.14, i32 16, i32 45, ptr @.str.15 }, %struct.options_st { ptr @.str.16, i32 17, i32 45, ptr @.str.17 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.18 }, %struct.options_st { ptr @.str.19, i32 7, i32 115, ptr @.str.20 }, %struct.options_st { ptr @.str.21, i32 2, i32 102, ptr @.str.22 }, %struct.options_st { ptr @.str.23, i32 4, i32 115, ptr @.str.24 }, %struct.options_st { ptr @.str.25, i32 9, i32 45, ptr @.str.26 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.27 }, %struct.options_st { ptr @.str.28, i32 8, i32 62, ptr @.str.29 }, %struct.options_st { ptr @.str.30, i32 3, i32 70, ptr @.str.31 }, %struct.options_st { ptr @.str.32, i32 14, i32 45, ptr @.str.33 }, %struct.options_st { ptr @.str.34, i32 5, i32 115, ptr @.str.35 }, %struct.options_st { ptr @.str.36, i32 15, i32 45, ptr @.str.37 }, %struct.options_st { ptr @.str.38, i32 10, i32 45, ptr @.str.39 }, %struct.options_st { ptr @.str.40, i32 13, i32 45, ptr @.str.41 }, %struct.options_st { ptr @.str.42, i32 12, i32 45, ptr @.str.43 }, %struct.options_st { ptr @.str.44, i32 11, i32 45, ptr @.str.45 }, %struct.options_st { ptr @.str.46, i32 19, i32 115, ptr @.str.47 }, %struct.options_st { ptr @.str.48, i32 18, i32 115, ptr @.str.49 }, %struct.options_st zeroinitializer], align 16
@.str.50 = private unnamed_addr constant [7 x i8] c"cipher\00", align 1
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.51 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@point_format_options = internal global [4 x ptr] [ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr null], align 16
@asn1_encoding_options = internal global [3 x ptr] [ptr @.str.70, ptr @.str.71, ptr null], align 16
@.str.52 = private unnamed_addr constant [53 x i8] c"Warning: The -text option is ignored with -text_pub\0A\00", align 1
@.str.53 = private unnamed_addr constant [67 x i8] c"Warning: The -traditional is ignored since there is no PEM output\0A\00", align 1
@.str.54 = private unnamed_addr constant [65 x i8] c"Warning: The -passout option is ignored without a cipher option\0A\00", align 1
@.str.55 = private unnamed_addr constant [57 x i8] c"Error: Cipher options are supported only for PEM output\0A\00", align 1
@.str.56 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@.str.57 = private unnamed_addr constant [11 x i8] c"Public Key\00", align 1
@.str.58 = private unnamed_addr constant [4 x i8] c"key\00", align 1
@.str.59 = private unnamed_addr constant [3 x i8] c"EC\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"encoding\00", align 1
@.str.61 = private unnamed_addr constant [13 x i8] c"point-format\00", align 1
@.str.62 = private unnamed_addr constant [14 x i8] c"Key is valid\0A\00", align 1
@.str.63 = private unnamed_addr constant [16 x i8] c"Key is invalid\0A\00", align 1
@.str.64 = private unnamed_addr constant [55 x i8] c"Error: Text output cannot be combined with DER output\0A\00", align 1
@.str.65 = private unnamed_addr constant [30 x i8] c"Bad format specified for key\0A\00", align 1
@.str.66 = private unnamed_addr constant [39 x i8] c"../../deps/openssl/openssl/apps/pkey.c\00", align 1
@.str.67 = private unnamed_addr constant [13 x i8] c"uncompressed\00", align 1
@.str.68 = private unnamed_addr constant [11 x i8] c"compressed\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"hybrid\00", align 1
@.str.70 = private unnamed_addr constant [12 x i8] c"named_curve\00", align 1
@.str.71 = private unnamed_addr constant [9 x i8] c"explicit\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @pkey_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 8 uses
  %2 = alloca [3 x %struct.ossl_param_st], align 16 ; 7 uses
  %3 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  %4 = alloca %struct.ossl_param_st, align 8      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #3
  store ptr null, ptr %i.a, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #3
  store ptr null, ptr %i.b, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #3
  store ptr null, ptr %i.c, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #3
  store i32 0, ptr %i.d, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #3
  store i32 32773, ptr %i.e, align 4, !tbaa !5
  tail call void @opt_set_unknown_name(ptr noundef nonnull @.str.50) #3
  %i.f = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @pkey_options) #3
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0144 = phi ptr [ null, %bb.a ], [ %.0144.be, %.backedge ] ; 23 uses
  %.0138 = phi ptr [ null, %bb.a ], [ %.0138.be, %.backedge ] ; 21 uses
  %.0136 = phi ptr [ null, %bb.a ], [ %.0136.be, %.backedge ] ; 20 uses
  %.0134 = phi ptr [ null, %bb.a ], [ %.0134.be, %.backedge ] ; 20 uses
  %.0132 = phi ptr [ null, %bb.a ], [ %.0132.be, %.backedge ] ; 21 uses
  %.0130 = phi ptr [ null, %bb.a ], [ %.0130.be, %.backedge ] ; 20 uses
  %.0126 = phi i32 [ 0, %bb.a ], [ %.0126.be, %.backedge ] ; 20 uses
  %.0124 = phi i32 [ 0, %bb.a ], [ %.0124.be, %.backedge ] ; 20 uses
  %.0121 = phi i32 [ 0, %bb.a ], [ %.0121.be, %.backedge ] ; 22 uses
  %.0119 = phi i32 [ 0, %bb.a ], [ %.0119.be, %.backedge ] ; 22 uses
  %.0117 = phi i32 [ 0, %bb.a ], [ %.0117.be, %.backedge ] ; 22 uses
  %.0114 = phi i32 [ 0, %bb.a ], [ %.0114.be, %.backedge ] ; 20 uses
  %.0112 = phi i32 [ 0, %bb.a ], [ %.0112.be, %.backedge ] ; 21 uses
  %.0110 = phi i32 [ 0, %bb.a ], [ %.0110.be, %.backedge ] ; 20 uses
  %.0108 = phi ptr [ null, %bb.a ], [ %.0108.be, %.backedge ] ; 21 uses
  %.0106 = phi ptr [ null, %bb.a ], [ %.0106.be, %.backedge ] ; 21 uses
  %i.g = call i32 @opt_next() #3                  ; 2 uses
  switch i32 %i.g, label %.backedge [
    i32 0, label %bb.w
    i32 1602, label %bb.v
    i32 -1, label %.loopexit
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 11, label %bb.m
    i32 12, label %bb.n
    i32 13, label %bb.o
    i32 15, label %bb.p
    i32 16, label %bb.q
    i32 17, label %bb.r
    i32 14, label %bb.s
    i32 19, label %bb.t
    i32 18, label %bb.u
    i32 1603, label %bb.v
    i32 1604, label %bb.v
    i32 1601, label %bb.v
  ]

.backedge:                                        ; preds = %bb.b, %bb.v, %bb.u, %bb.t, %bb.e, %bb.d, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.0144.be = phi ptr [ %.0144, %bb.b ], [ %.0144, %bb.d ], [ %.0144, %bb.e ], [ %.0144, %bb.f ], [ %.0144, %bb.g ], [ %i.q, %bb.h ], [ %.0144, %bb.i ], [ %.0144, %bb.j ], [ %.0144, %bb.k ], [ %.0144, %bb.l ], [ %.0144, %bb.m ], [ %.0144, %bb.n ], [ %.0144, %bb.o ], [ %.0144, %bb.p ], [ %.0144, %bb.q ], [ %.0144, %bb.r ], [ %.0144, %bb.s ], [ %.0144, %bb.t ], [ %.0144, %bb.u ], [ %.0144, %bb.v ]
  %.0138.be = phi ptr [ %.0138, %bb.b ], [ %.0138, %bb.d ], [ %.0138, %bb.e ], [ %.0138, %bb.f ], [ %.0138, %bb.g ], [ %.0138, %bb.h ], [ %i.r, %bb.i ], [ %.0138, %bb.j ], [ %.0138, %bb.k ], [ %.0138, %bb.l ], [ %.0138, %bb.m ], [ %.0138, %bb.n ], [ %.0138, %bb.o ], [ %.0138, %bb.p ], [ %.0138, %bb.q ], [ %.0138, %bb.r ], [ %.0138, %bb.s ], [ %.0138, %bb.t ], [ %.0138, %bb.u ], [ %.0138, %bb.v ]
  %.0136.be = phi ptr [ %.0136, %bb.b ], [ %.0136, %bb.d ], [ %.0136, %bb.e ], [ %.0136, %bb.f ], [ %.0136, %bb.g ], [ %.0136, %bb.h ], [ %.0136, %bb.i ], [ %i.s, %bb.j ], [ %.0136, %bb.k ], [ %.0136, %bb.l ], [ %.0136, %bb.m ], [ %.0136, %bb.n ], [ %.0136, %bb.o ], [ %.0136, %bb.p ], [ %.0136, %bb.q ], [ %.0136, %bb.r ], [ %.0136, %bb.s ], [ %.0136, %bb.t ], [ %.0136, %bb.u ], [ %.0136, %bb.v ]
  %.0134.be = phi ptr [ %.0134, %bb.b ], [ %.0134, %bb.d ], [ %.0134, %bb.e ], [ %i.n, %bb.f ], [ %.0134, %bb.g ], [ %.0134, %bb.h ], [ %.0134, %bb.i ], [ %.0134, %bb.j ], [ %.0134, %bb.k ], [ %.0134, %bb.l ], [ %.0134, %bb.m ], [ %.0134, %bb.n ], [ %.0134, %bb.o ], [ %.0134, %bb.p ], [ %.0134, %bb.q ], [ %.0134, %bb.r ], [ %.0134, %bb.s ], [ %.0134, %bb.t ], [ %.0134, %bb.u ], [ %.0134, %bb.v ]
  %.0132.be = phi ptr [ %.0132, %bb.b ], [ %.0132, %bb.d ], [ %.0132, %bb.e ], [ %.0132, %bb.f ], [ %i.o, %bb.g ], [ %.0132, %bb.h ], [ %.0132, %bb.i ], [ %.0132, %bb.j ], [ %.0132, %bb.k ], [ %.0132, %bb.l ], [ %.0132, %bb.m ], [ %.0132, %bb.n ], [ %.0132, %bb.o ], [ %.0132, %bb.p ], [ %.0132, %bb.q ], [ %.0132, %bb.r ], [ %.0132, %bb.s ], [ %.0132, %bb.t ], [ %.0132, %bb.u ], [ %.0132, %bb.v ]
  %.0130.be = phi ptr [ %.0130, %bb.b ], [ %.0130, %bb.d ], [ %.0130, %bb.e ], [ %.0130, %bb.f ], [ %.0130, %bb.g ], [ %.0130, %bb.h ], [ %.0130, %bb.i ], [ %.0130, %bb.j ], [ %.0130, %bb.k ], [ %.0130, %bb.l ], [ %.0130, %bb.m ], [ %.0130, %bb.n ], [ %.0130, %bb.o ], [ %.0130, %bb.p ], [ %.0130, %bb.q ], [ %.0130, %bb.r ], [ %i.t, %bb.s ], [ %.0130, %bb.t ], [ %.0130, %bb.u ], [ %.0130, %bb.v ]
  %.0126.be = phi i32 [ %.0126, %bb.b ], [ %.0126, %bb.d ], [ %.0126, %bb.e ], [ %.0126, %bb.f ], [ %.0126, %bb.g ], [ %.0126, %bb.h ], [ %.0126, %bb.i ], [ %.0126, %bb.j ], [ 1, %bb.k ], [ %.0126, %bb.l ], [ %.0126, %bb.m ], [ %.0126, %bb.n ], [ %.0126, %bb.o ], [ %.0126, %bb.p ], [ %.0126, %bb.q ], [ %.0126, %bb.r ], [ %.0126, %bb.s ], [ %.0126, %bb.t ], [ %.0126, %bb.u ], [ %.0126, %bb.v ]
  %.0124.be = phi i32 [ %.0124, %bb.b ], [ %.0124, %bb.d ], [ %.0124, %bb.e ], [ %.0124, %bb.f ], [ %.0124, %bb.g ], [ %.0124, %bb.h ], [ %.0124, %bb.i ], [ %.0124, %bb.j ], [ 1, %bb.k ], [ 1, %bb.l ], [ %.0124, %bb.m ], [ %.0124, %bb.n ], [ %.0124, %bb.o ], [ %.0124, %bb.p ], [ %.0124, %bb.q ], [ %.0124, %bb.r ], [ %.0124, %bb.s ], [ %.0124, %bb.t ], [ %.0124, %bb.u ], [ %.0124, %bb.v ]
  %.0121.be = phi i32 [ %.0121, %bb.b ], [ %.0121, %bb.d ], [ %.0121, %bb.e ], [ %.0121, %bb.f ], [ %.0121, %bb.g ], [ %.0121, %bb.h ], [ %.0121, %bb.i ], [ %.0121, %bb.j ], [ %.0121, %bb.k ], [ %.0121, %bb.l ], [ 1, %bb.m ], [ %.0121, %bb.n ], [ %.0121, %bb.o ], [ %.0121, %bb.p ], [ %.0121, %bb.q ], [ %.0121, %bb.r ], [ %.0121, %bb.s ], [ %.0121, %bb.t ], [ %.0121, %bb.u ], [ %.0121, %bb.v ]
  %.0119.be = phi i32 [ %.0119, %bb.b ], [ %.0119, %bb.d ], [ %.0119, %bb.e ], [ %.0119, %bb.f ], [ %.0119, %bb.g ], [ %.0119, %bb.h ], [ %.0119, %bb.i ], [ %.0119, %bb.j ], [ %.0119, %bb.k ], [ %.0119, %bb.l ], [ %.0119, %bb.m ], [ 1, %bb.n ], [ %.0119, %bb.o ], [ %.0119, %bb.p ], [ %.0119, %bb.q ], [ %.0119, %bb.r ], [ %.0119, %bb.s ], [ %.0119, %bb.t ], [ %.0119, %bb.u ], [ %.0119, %bb.v ]
  %.0117.be = phi i32 [ %.0117, %bb.b ], [ %.0117, %bb.d ], [ %.0117, %bb.e ], [ %.0117, %bb.f ], [ %.0117, %bb.g ], [ %.0117, %bb.h ], [ %.0117, %bb.i ], [ %.0117, %bb.j ], [ %.0117, %bb.k ], [ %.0117, %bb.l ], [ %.0117, %bb.m ], [ %.0117, %bb.n ], [ 1, %bb.o ], [ %.0117, %bb.p ], [ %.0117, %bb.q ], [ %.0117, %bb.r ], [ %.0117, %bb.s ], [ %.0117, %bb.t ], [ %.0117, %bb.u ], [ %.0117, %bb.v ]
  %.0114.be = phi i32 [ %.0114, %bb.b ], [ %.0114, %bb.d ], [ %.0114, %bb.e ], [ %.0114, %bb.f ], [ %.0114, %bb.g ], [ %.0114, %bb.h ], [ %.0114, %bb.i ], [ %.0114, %bb.j ], [ %.0114, %bb.k ], [ %.0114, %bb.l ], [ %.0114, %bb.m ], [ %.0114, %bb.n ], [ %.0114, %bb.o ], [ 1, %bb.p ], [ %.0114, %bb.q ], [ %.0114, %bb.r ], [ %.0114, %bb.s ], [ %.0114, %bb.t ], [ %.0114, %bb.u ], [ %.0114, %bb.v ]
  %.0112.be = phi i32 [ %.0112, %bb.b ], [ %.0112, %bb.d ], [ %.0112, %bb.e ], [ %.0112, %bb.f ], [ %.0112, %bb.g ], [ %.0112, %bb.h ], [ %.0112, %bb.i ], [ %.0112, %bb.j ], [ %.0112, %bb.k ], [ %.0112, %bb.l ], [ %.0112, %bb.m ], [ %.0112, %bb.n ], [ %.0112, %bb.o ], [ %.0112, %bb.p ], [ 1, %bb.q ], [ %.0112, %bb.r ], [ %.0112, %bb.s ], [ %.0112, %bb.t ], [ %.0112, %bb.u ], [ %.0112, %bb.v ]
  %.0110.be = phi i32 [ %.0110, %bb.b ], [ %.0110, %bb.d ], [ %.0110, %bb.e ], [ %.0110, %bb.f ], [ %.0110, %bb.g ], [ %.0110, %bb.h ], [ %.0110, %bb.i ], [ %.0110, %bb.j ], [ %.0110, %bb.k ], [ %.0110, %bb.l ], [ %.0110, %bb.m ], [ %.0110, %bb.n ], [ %.0110, %bb.o ], [ %.0110, %bb.p ], [ %.0110, %bb.q ], [ 1, %bb.r ], [ %.0110, %bb.s ], [ %.0110, %bb.t ], [ %.0110, %bb.u ], [ %.0110, %bb.v ]
  %.0108.be = phi ptr [ %.0108, %bb.b ], [ %.0108, %bb.d ], [ %.0108, %bb.e ], [ %.0108, %bb.f ], [ %.0108, %bb.g ], [ %.0108, %bb.h ], [ %.0108, %bb.i ], [ %.0108, %bb.j ], [ %.0108, %bb.k ], [ %.0108, %bb.l ], [ %.0108, %bb.m ], [ %.0108, %bb.n ], [ %.0108, %bb.o ], [ %.0108, %bb.p ], [ %.0108, %bb.q ], [ %.0108, %bb.r ], [ %.0108, %bb.s ], [ %.0108, %bb.t ], [ %i.w, %bb.u ], [ %.0108, %bb.v ]
  %.0106.be = phi ptr [ %.0106, %bb.b ], [ %.0106, %bb.d ], [ %.0106, %bb.e ], [ %.0106, %bb.f ], [ %.0106, %bb.g ], [ %.0106, %bb.h ], [ %.0106, %bb.i ], [ %.0106, %bb.j ], [ %.0106, %bb.k ], [ %.0106, %bb.l ], [ %.0106, %bb.m ], [ %.0106, %bb.n ], [ %.0106, %bb.o ], [ %.0106, %bb.p ], [ %.0106, %bb.q ], [ %.0106, %bb.r ], [ %.0106, %bb.s ], [ %i.u, %bb.t ], [ %.0106, %bb.u ], [ %.0106, %bb.v ]
  br label %bb.b, !llvm.loop !14

.loopexit:                                        ; preds = %bb.b, %bb.u, %bb.t, %bb.e, %bb.d, %bb.ac, %bb.w
  %i.h = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.i = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.h, ptr noundef nonnull @.str.51, ptr noundef %i.f) #3 ; 0 uses
  br label %.thread178

bb.c:                                             ; preds = %bb.b
  call void @opt_help(ptr noundef nonnull @pkey_options) #3
  br label %.thread183

bb.d:                                             ; preds = %bb.b
  %i.j = call ptr @opt_arg() #3
  %i.k = call i32 @opt_format(ptr noundef %i.j, i64 noundef 4094, ptr noundef nonnull %i.d) #3
  %.not170 = icmp eq i32 %i.k, 0
  br i1 %.not170, label %.loopexit, label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.l = call ptr @opt_arg() #3
  %i.m = call i32 @opt_format(ptr noundef %i.l, i64 noundef 6, ptr noundef nonnull %i.e) #3
  %.not169 = icmp eq i32 %i.m, 0
  br i1 %.not169, label %.loopexit, label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.n = call ptr @opt_arg() #3
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.o = call ptr @opt_arg() #3
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.p = call ptr @opt_arg() #3
  %i.q = call ptr @setup_engine_methods(ptr noundef %i.p, i32 noundef -1, i32 noundef 0) #3
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.r = call ptr @opt_arg() #3
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.s = call ptr @opt_arg() #3
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
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  %i.t = call ptr @opt_unknown() #3
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  %i.u = call ptr @opt_arg() #3                   ; 2 uses
  %i.v = call i32 @opt_string(ptr noundef %i.u, ptr noundef nonnull @point_format_options) #3
  %.not168 = icmp eq i32 %i.v, 0
  br i1 %.not168, label %.loopexit, label %.backedge

bb.u:                                             ; preds = %bb.b
  %i.w = call ptr @opt_arg() #3                   ; 2 uses
  %i.x = call i32 @opt_string(ptr noundef %i.w, ptr noundef nonnull @asn1_encoding_options) #3
  %.not167 = icmp eq i32 %i.x, 0
  br i1 %.not167, label %.loopexit, label %.backedge

bb.v:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.y = call i32 @opt_provider(i32 noundef %i.g) #3
  %.not166 = icmp eq i32 %i.y, 0
  br i1 %.not166, label %.thread178, label %.backedge

bb.w:                                             ; preds = %bb.b
  %i.z = call i32 @opt_check_rest_arg(ptr noundef null) #3
  %.not151 = icmp eq i32 %i.z, 0
  br i1 %.not151, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %5 = trunc nuw i32 %.0119 to i1
  %6 = and i32 %.0119, %.0121
  %or.cond.not = icmp eq i32 %6, 0
  br i1 %or.cond.not, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aa = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ab = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.aa, ptr noundef nonnull @.str.52) #3 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.not152 = icmp eq i32 %.0114, 0                ; 2 uses
  br i1 %.not152, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %7 = trunc nuw i32 %.0117 to i1
  %i.ac = load i32, ptr %i.e, align 4
  %i.ad = icmp ne i32 %i.ac, 32773
  %or.cond3 = select i1 %7, i1 true, i1 %i.ad
  br i1 %or.cond3, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ae = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.af = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ae, ptr noundef nonnull @.str.53) #3 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.z
  %i.ag = icmp eq i32 %.0121, 0
  %8 = trunc nuw i32 %.0124 to i1                 ; 3 uses
  %or.cond5 = and i1 %i.ag, %8                    ; 2 uses
  %or.cond7 = and i1 %or.cond5, %5
  %spec.select = select i1 %or.cond7, i32 1, i32 %.0121 ; 3 uses
  %spec.select172 = select i1 %or.cond5, i32 0, i32 %.0119 ; 3 uses
  %9 = trunc nuw i32 %.0117 to i1                 ; 2 uses
  %i.ah = or i32 %.0117, %.0124
  %or.cond9.not = icmp eq i32 %i.ah, 0
  %.not153 = icmp eq i32 %spec.select172, 0
  %i.ai = xor i32 %spec.select, 1
  %spec.select508 = select i1 %.not153, i32 0, i32 %i.ai
  %i.aj = select i1 %or.cond9.not, i32 1, i32 %spec.select508
  %i.ak = call i32 @opt_cipher(ptr noundef %.0130, ptr noundef nonnull %i.a) #3
  %.not155 = icmp eq i32 %i.ak, 0
  br i1 %.not155, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.al = load ptr, ptr %i.a, align 8, !tbaa !9
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %.not156 = icmp eq ptr %.0132, null
  br i1 %.not156, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.an = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ao = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.an, ptr noundef nonnull @.str.54) #3 ; 0 uses
  br label %bb.ai

bb.ag:                                            ; preds = %bb.ad
  %i.ap = load i32, ptr %i.e, align 4
  %i.aq = icmp ne i32 %i.ap, 32773
  %or.cond11 = select i1 %9, i1 true, i1 %i.aq
  br i1 %or.cond11, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ar = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.as = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ar, ptr noundef nonnull @.str.55) #3 ; 0 uses
  br label %.thread178

bb.ai:                                            ; preds = %bb.ag, %bb.ae, %bb.af
  %i.at = call i32 @app_passwd(ptr noundef %.0134, ptr noundef %.0132, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #3
  %.not157 = icmp eq i32 %i.at, 0
  br i1 %.not157, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.au = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.av = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.au, ptr noundef nonnull @.str.56) #3 ; 0 uses
  br label %.thread178

bb.ak:                                            ; preds = %bb.ai
  %10 = trunc nuw i32 %.0126 to i1                ; 2 uses
  %i.aw = load i32, ptr %i.d, align 4, !tbaa !5   ; 2 uses
  %i.ax = load ptr, ptr %i.b, align 8, !tbaa !12  ; 2 uses
  br i1 %10, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.ay = call ptr @load_pubkey(ptr noundef %.0138, i32 noundef %i.aw, i32 noundef 1, ptr noundef %i.ax, ptr noundef %.0144, ptr noundef nonnull @.str.57) #3
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.az = call ptr @load_key(ptr noundef %.0138, i32 noundef %i.aw, i32 noundef 1, ptr noundef %i.ax, ptr noundef %.0144, ptr noundef nonnull @.str.58) #3
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.0142 = phi ptr [ %i.ay, %bb.al ], [ %i.az, %bb.am ] ; 29 uses
  %i.ba = icmp eq ptr %.0142, null
  br i1 %i.ba, label %.thread178, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bb = load i32, ptr %i.e, align 4, !tbaa !5
  %i.bc = call ptr @bio_open_owner(ptr noundef %.0136, i32 noundef %i.bb, i32 noundef %i.aj) #3 ; 26 uses
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %.thread178, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.be = icmp ne ptr %.0108, null                ; 2 uses
  %i.bf = icmp ne ptr %.0106, null                ; 2 uses
  %or.cond13 = or i1 %i.be, %i.bf
  br i1 %or.cond13, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #3
  %i.bg = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.0142, ptr noundef nonnull @.str.59) #3
  %.not158 = icmp eq i32 %i.bg, 0
  br i1 %.not158, label %.thread, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  br i1 %i.be, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.60, ptr noundef nonnull %.0108, i64 noundef 0) #3
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.0104 = phi ptr [ %i.bh, %bb.as ], [ %2, %bb.ar ] ; 3 uses
  br i1 %i.bf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.bi = getelementptr inbounds nuw i8, ptr %.0104, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #3
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.61, ptr noundef nonnull %.0106, i64 noundef 0) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.0104, ptr noundef nonnull align 8 dereferenceable(40) %3, i64 40, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #3
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.1105 = phi ptr [ %i.bi, %bb.au ], [ %.0104, %bb.at ]
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #3
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %4) #3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.1105, ptr noundef nonnull align 8 dereferenceable(40) %4, i64 40, i1 false), !tbaa.struct !18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #3
  %i.bj = call i32 @EVP_PKEY_set_params(ptr noundef nonnull %.0142, ptr noundef nonnull %2) #3
  %i.bk = icmp slt i32 %i.bj, 1
  br i1 %i.bk, label %.thread, label %bb.aw

.thread:                                          ; preds = %bb.aq, %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %.thread178

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #3
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.ap
  %i.bl = or i32 %.0112, %.0110
  %or.cond15.not = icmp eq i32 %i.bl, 0
  br i1 %or.cond15.not, label %bb.bg, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.bm = call ptr @EVP_PKEY_CTX_new(ptr noundef nonnull %.0142, ptr noundef %.0144) #3 ; 5 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.bo = load ptr, ptr @bio_err, align 8, !tbaa !16
  call void @ERR_print_errors(ptr noundef %i.bo) #3
  br label %.thread178

bb.ba:                                            ; preds = %bb.ay
  %i.bp = icmp eq i32 %.0112, 0
  %or.cond17 = or i1 %i.bp, %10
  br i1 %or.cond17, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.bq = call i32 @EVP_PKEY_check(ptr noundef nonnull %i.bm) #3
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.br = call i32 @EVP_PKEY_public_check(ptr noundef nonnull %i.bm) #3
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.0 = phi i32 [ %i.br, %bb.bc ], [ %i.bq, %bb.bb ]
  %i.bs = icmp eq i32 %.0, 1
  br i1 %i.bs, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.bt = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.bu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bt, ptr noundef nonnull @.str.63) #3 ; 0 uses
  %i.bv = load ptr, ptr @bio_err, align 8, !tbaa !16
  call void @ERR_print_errors(ptr noundef %i.bv) #3
  br label %.thread178

bb.bf:                                            ; preds = %bb.bd
  %i.bw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef nonnull %i.bc, ptr noundef nonnull @.str.62) #3 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ax
  %.0140 = phi ptr [ %i.bm, %bb.bf ], [ null, %bb.ax ] ; 14 uses
  br i1 %9, label %bb.bt, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.bx = load i32, ptr %i.e, align 4, !tbaa !5
  switch i32 %i.bx, label %bb.bs [
    i32 32773, label %bb.bi
    i32 4, label %bb.bn
  ]

bb.bi:                                            ; preds = %bb.bh
  br i1 %8, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.by = call i32 @PEM_write_bio_PUBKEY(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142) #3
  %.not163 = icmp eq i32 %i.by, 0
  br i1 %.not163, label %.thread178, label %bb.bt

bb.bk:                                            ; preds = %bb.bi
  %i.bz = load ptr, ptr %i.a, align 8, !tbaa !9   ; 2 uses
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !12  ; 2 uses
  br i1 %.not152, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cb = call i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142, ptr noundef %i.bz, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.ca) #3
  %.not162 = icmp eq i32 %i.cb, 0
  br i1 %.not162, label %.thread178, label %bb.bt

bb.bm:                                            ; preds = %bb.bk
  %i.cc = call i32 @PEM_write_bio_PrivateKey(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142, ptr noundef %i.bz, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.ca) #3
  %.not161 = icmp eq i32 %i.cc, 0
  br i1 %.not161, label %.thread178, label %bb.bt

bb.bn:                                            ; preds = %bb.bh
  %11 = trunc nuw i32 %spec.select172 to i1
  %12 = trunc nuw i32 %spec.select to i1
  %or.cond19 = select i1 %11, i1 true, i1 %12
  br i1 %or.cond19, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.cd = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ce = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cd, ptr noundef nonnull @.str.64) #3 ; 0 uses
  br label %.thread178

bb.bp:                                            ; preds = %bb.bn
  br i1 %8, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.cf = call i32 @i2d_PUBKEY_bio(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142) #3
  %.not160 = icmp eq i32 %i.cf, 0
  br i1 %.not160, label %.thread178, label %.thread183

bb.br:                                            ; preds = %bb.bp
  %i.cg = call i32 @i2d_PrivateKey_bio(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142) #3
  %.not159 = icmp eq i32 %i.cg, 0
  br i1 %.not159, label %.thread178, label %.thread183

bb.bs:                                            ; preds = %bb.bh
  %i.ch = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ci = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ch, ptr noundef nonnull @.str.65) #3 ; 0 uses
  br label %.thread178

bb.bt:                                            ; preds = %bb.bl, %bb.bm, %bb.bj, %bb.bg
  %.not164 = icmp eq i32 %spec.select, 0
  br i1 %.not164, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.cj = call i32 @EVP_PKEY_print_public(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142, i32 noundef 0, ptr noundef null) #3
  %i.ck = icmp slt i32 %i.cj, 1
  br i1 %i.ck, label %.thread178, label %.thread183

bb.bv:                                            ; preds = %bb.bt
  %.not165 = icmp eq i32 %spec.select172, 0
  br i1 %.not165, label %.thread183, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.cl = call i32 @EVP_PKEY_print_private(ptr noundef nonnull %i.bc, ptr noundef nonnull %.0142, i32 noundef 0, ptr noundef null) #3
  %i.cm = icmp slt i32 %i.cl, 1
  br i1 %i.cm, label %.thread178, label %.thread183

.thread178:                                       ; preds = %bb.v, %bb.be, %bb.az, %.loopexit, %bb.an, %bb.ao, %bb.bu, %bb.bw, %bb.bj, %bb.bl, %bb.bm, %bb.bo, %bb.bq, %bb.br, %bb.bs, %.thread, %bb.aj, %bb.ah
  %.1143.ph = phi ptr [ null, %bb.ah ], [ null, %bb.aj ], [ %.0142, %.thread ], [ null, %.loopexit ], [ %.0142, %bb.bs ], [ %.0142, %bb.br ], [ %.0142, %bb.bq ], [ %.0142, %bb.bo ], [ %.0142, %bb.bm ], [ %.0142, %bb.bl ], [ %.0142, %bb.bj ], [ %.0142, %bb.bw ], [ %.0142, %bb.bu ], [ %.0142, %bb.ao ], [ null, %bb.an ], [ %.0142, %bb.be ], [ %.0142, %bb.az ], [ null, %bb.v ]
  %.1141.ph = phi ptr [ null, %bb.ah ], [ null, %bb.aj ], [ null, %.thread ], [ null, %.loopexit ], [ %.0140, %bb.bs ], [ %.0140, %bb.br ], [ %.0140, %bb.bq ], [ %.0140, %bb.bo ], [ %.0140, %bb.bm ], [ %.0140, %bb.bl ], [ %.0140, %bb.bj ], [ %.0140, %bb.bw ], [ %.0140, %bb.bu ], [ null, %bb.ao ], [ null, %bb.an ], [ %i.bm, %bb.be ], [ null, %bb.az ], [ null, %bb.v ]
  %.0129.ph = phi ptr [ null, %bb.ah ], [ null, %bb.aj ], [ %i.bc, %.thread ], [ null, %.loopexit ], [ %i.bc, %bb.bs ], [ %i.bc, %bb.br ], [ %i.bc, %bb.bq ], [ %i.bc, %bb.bo ], [ %i.bc, %bb.bm ], [ %i.bc, %bb.bl ], [ %i.bc, %bb.bj ], [ %i.bc, %bb.bw ], [ %i.bc, %bb.bu ], [ null, %bb.ao ], [ null, %bb.an ], [ %i.bc, %bb.be ], [ %i.bc, %bb.az ], [ null, %bb.v ]
  %i.cn = load ptr, ptr @bio_err, align 8, !tbaa !16
  call void @ERR_print_errors(ptr noundef %i.cn) #3
  br label %.thread183

.thread183:                                       ; preds = %bb.bu, %bb.bw, %bb.bv, %bb.br, %bb.bq, %bb.c, %.thread178
  %.0116199 = phi i32 [ 1, %.thread178 ], [ 0, %bb.c ], [ 0, %bb.bq ], [ 0, %bb.br ], [ 0, %bb.bv ], [ 0, %bb.bw ], [ 0, %bb.bu ]
  %.0129197 = phi ptr [ %.0129.ph, %.thread178 ], [ null, %bb.c ], [ %i.bc, %bb.bq ], [ %i.bc, %bb.br ], [ %i.bc, %bb.bv ], [ %i.bc, %bb.bw ], [ %i.bc, %bb.bu ]
  %.1141195 = phi ptr [ %.1141.ph, %.thread178 ], [ null, %bb.c ], [ %.0140, %bb.bq ], [ %.0140, %bb.br ], [ %.0140, %bb.bv ], [ %.0140, %bb.bw ], [ %.0140, %bb.bu ]
  %.1143193 = phi ptr [ %.1143.ph, %.thread178 ], [ null, %bb.c ], [ %.0142, %bb.bq ], [ %.0142, %bb.br ], [ %.0142, %bb.bv ], [ %.0142, %bb.bw ], [ %.0142, %bb.bu ]
  call void @EVP_PKEY_CTX_free(ptr noundef %.1141195) #3
  call void @EVP_PKEY_free(ptr noundef %.1143193) #3
  %i.co = load ptr, ptr %i.a, align 8, !tbaa !9
  call void @EVP_CIPHER_free(ptr noundef %i.co) #3
  call void @release_engine(ptr noundef %.0144) #3
  call void @BIO_free_all(ptr noundef %.0129197) #3
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.cp, ptr noundef nonnull @.str.66, i32 noundef 340) #3
  %i.cq = load ptr, ptr %i.c, align 8, !tbaa !12
  call void @CRYPTO_free(ptr noundef %i.cq, ptr noundef nonnull @.str.66, i32 noundef 341) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #3
  ret i32 %.0116199
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

declare ptr @setup_engine_methods(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @opt_unknown() local_unnamed_addr #2

declare i32 @opt_string(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare i32 @opt_check_rest_arg(ptr noundef) local_unnamed_addr #2

declare i32 @opt_cipher(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @app_passwd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @load_pubkey(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @load_key(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @bio_open_owner(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_is_a(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @OSSL_PARAM_construct_end(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8) local_unnamed_addr #2

declare i32 @EVP_PKEY_set_params(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_PKEY_CTX_new(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_print_errors(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_check(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_public_check(ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_PUBKEY(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_PrivateKey_traditional(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PEM_write_bio_PrivateKey(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_PUBKEY_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @i2d_PrivateKey_bio(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_public(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_PKEY_print_private(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

declare void @release_engine(ptr noundef) local_unnamed_addr #2

declare void @BIO_free_all(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = !{!6, !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 _ZTS13evp_cipher_st", !11, i64 0}
!11 = !{!"any pointer", !7, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"p1 omnipotent char", !11, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTS6bio_st", !11, i64 0}
!18 = !{i64 0, i64 8, !12, i64 8, i64 4, !5, i64 16, i64 8, !19, i64 24, i64 8, !20, i64 32, i64 8, !20}
!19 = !{!11, !11, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"long", !7, i64 0}
end_hunk_0
