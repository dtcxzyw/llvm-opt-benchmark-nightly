inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.options_st = type { ptr, i32, i32, ptr }

@OPT_HELP_STR = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [32 x i8] c"Usage: %s [options] [password]\0A\00", align 1
@OPT_SECTION_STR = external constant [0 x i8], align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.6 = private unnamed_addr constant [25 x i8] c"Read passwords from file\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"noverify\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"Never verify when reading password from terminal\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"Read passwords from stdin\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"quiet\00", align 1
@.str.13 = private unnamed_addr constant [12 x i8] c"No warnings\00", align 1
@.str.14 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"Format output as table\00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"reverse\00", align 1
@.str.17 = private unnamed_addr constant [21 x i8] c"Switch table columns\00", align 1
@.str.18 = private unnamed_addr constant [24 x i8] c"Cryptographic options:\0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"salt\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"Use provided salt\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"6\00", align 1
@.str.22 = private unnamed_addr constant [32 x i8] c"SHA512-based password algorithm\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"5\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"SHA256-based password algorithm\00", align 1
@.str.25 = private unnamed_addr constant [5 x i8] c"apr1\00", align 1
@.str.26 = private unnamed_addr constant [45 x i8] c"MD5-based password algorithm, Apache variant\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.28 = private unnamed_addr constant [29 x i8] c"MD5-based password algorithm\00", align 1
@.str.29 = private unnamed_addr constant [7 x i8] c"aixmd5\00", align 1
@.str.30 = private unnamed_addr constant [33 x i8] c"AIX MD5-based password algorithm\00", align 1
@.str.31 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.32 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.33 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.34 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.38 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.39 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.40 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.41 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.42 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.44 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@OPT_PARAM_STR = external constant [0 x i8], align 1
@.str.45 = private unnamed_addr constant [13 x i8] c"Parameters:\0A\00", align 1
@.str.46 = private unnamed_addr constant [9 x i8] c"password\00", align 1
@.str.47 = private unnamed_addr constant [35 x i8] c"Password text to digest (optional)\00", align 1
@passwd_options = dso_local constant [29 x %struct.options_st] [%struct.options_st { ptr @OPT_HELP_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.1 }, %struct.options_st { ptr @.str.2, i32 1, i32 45, ptr @.str.3 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.4 }, %struct.options_st { ptr @.str.5, i32 2, i32 60, ptr @.str.6 }, %struct.options_st { ptr @.str.7, i32 3, i32 45, ptr @.str.8 }, %struct.options_st { ptr @.str.9, i32 13, i32 45, ptr @.str.10 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.11 }, %struct.options_st { ptr @.str.12, i32 4, i32 45, ptr @.str.13 }, %struct.options_st { ptr @.str.14, i32 5, i32 45, ptr @.str.15 }, %struct.options_st { ptr @.str.16, i32 6, i32 45, ptr @.str.17 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.18 }, %struct.options_st { ptr @.str.19, i32 12, i32 115, ptr @.str.20 }, %struct.options_st { ptr @.str.21, i32 10, i32 45, ptr @.str.22 }, %struct.options_st { ptr @.str.23, i32 9, i32 45, ptr @.str.24 }, %struct.options_st { ptr @.str.25, i32 7, i32 45, ptr @.str.26 }, %struct.options_st { ptr @.str.27, i32 8, i32 45, ptr @.str.28 }, %struct.options_st { ptr @.str.29, i32 11, i32 45, ptr @.str.30 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.31 }, %struct.options_st { ptr @.str.32, i32 1501, i32 115, ptr @.str.33 }, %struct.options_st { ptr @.str.34, i32 1502, i32 62, ptr @.str.35 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.36 }, %struct.options_st { ptr @.str.37, i32 1602, i32 115, ptr @.str.38 }, %struct.options_st { ptr @.str.39, i32 1601, i32 115, ptr @.str.40 }, %struct.options_st { ptr @.str.41, i32 1604, i32 115, ptr @.str.42 }, %struct.options_st { ptr @.str.43, i32 1603, i32 115, ptr @.str.44 }, %struct.options_st { ptr @OPT_PARAM_STR, i32 1, i32 45, ptr @.str.45 }, %struct.options_st { ptr @.str.46, i32 0, i32 0, ptr @.str.47 }, %struct.options_st zeroinitializer], align 16
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.48 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.49 = private unnamed_addr constant [34 x i8] c"%s: Can't combine -in and -stdin\0A\00", align 1
@.str.50 = private unnamed_addr constant [16 x i8] c"password buffer\00", align 1
@passwd_main.passwds_static = internal unnamed_addr global [2 x ptr] zeroinitializer, align 16
@.str.51 = private unnamed_addr constant [11 x i8] c"Password: \00", align 1
@bio_out = external local_unnamed_addr global ptr, align 8
@.str.52 = private unnamed_addr constant [41 x i8] c"../../deps/openssl/openssl/apps/passwd.c\00", align 1
@.str.53 = private unnamed_addr constant [12 x i8] c"salt buffer\00", align 1
@cov_2char = internal unnamed_addr constant [64 x i8] c"./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", align 16
@.str.54 = private unnamed_addr constant [47 x i8] c"Warning: truncating password to %u characters\0A\00", align 1
@.str.55 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"%s\09%s\0A\00", align 1
@.str.57 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@md5crypt.out_buf = internal global [41 x i8] zeroinitializer, align 16
@ascii_dollar = internal constant [2 x i8] c"$\00", align 1
@.str.58 = private unnamed_addr constant [2 x i8] zeroinitializer, align 1
@shacrypt.rounds_prefix = internal constant [8 x i8] c"rounds=\00", align 1
@shacrypt.out_buf = internal global [124 x i8] zeroinitializer, align 16
@.str.59 = private unnamed_addr constant [10 x i8] c"rounds=%u\00", align 1
@switch.table.do_passwd = private unnamed_addr constant [5 x i64] [i64 8, i64 8, i64 0, i64 0, i64 8], align 8

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @passwd_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca [8192 x i8], align 16             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  store ptr null, ptr %i.b, align 8, !tbaa !9
  %i.d = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @passwd_options) #7 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.e = phi ptr [ null, %bb.a ], [ %.be, %.backedge ] ; 18 uses
  %.0107 = phi ptr [ null, %bb.a ], [ %.0107.be, %.backedge ] ; 16 uses
  %.097 = phi i32 [ 0, %bb.a ], [ %.097.be, %.backedge ] ; 15 uses
  %.095 = phi i32 [ 0, %bb.a ], [ %.095.be, %.backedge ] ; 16 uses
  %.093 = phi i32 [ 0, %bb.a ], [ %.093.be, %.backedge ] ; 15 uses
  %.091 = phi i32 [ 0, %bb.a ], [ %.091.be, %.backedge ] ; 17 uses
  %.089 = phi i32 [ 0, %bb.a ], [ %.089.be, %.backedge ] ; 16 uses
  %.087 = phi i32 [ 0, %bb.a ], [ %.087.be, %.backedge ] ; 16 uses
  %.085 = phi i32 [ 0, %bb.a ], [ %.085.be, %.backedge ] ; 16 uses
  %.082 = phi i32 [ 0, %bb.a ], [ %.082.be, %.backedge ] ; 16 uses
  %i.f = tail call i32 @opt_next() #7             ; 3 uses
  switch i32 %i.f, label %.backedge [
    i32 0, label %bb.t
    i32 1601, label %bb.s
    i32 -1, label %.loopexit
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.g
    i32 4, label %bb.h
    i32 5, label %bb.i
    i32 6, label %bb.j
    i32 8, label %bb.k
    i32 9, label %bb.l
    i32 10, label %bb.m
    i32 7, label %bb.n
    i32 11, label %bb.o
    i32 12, label %bb.p
    i32 13, label %bb.q
    i32 1603, label %bb.s
    i32 1604, label %bb.s
    i32 1501, label %bb.r
    i32 1502, label %bb.r
    i32 1602, label %bb.s
  ]

.loopexit:                                        ; preds = %bb.e, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.q, %bb.b
  store ptr %i.e, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %.loopexit, %bb.u
  %i.g = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.h = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.g, ptr noundef nonnull @.str.48, ptr noundef %i.d) #7 ; 0 uses
  br label %.thread150

bb.d:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.a, align 8
  tail call void @opt_help(ptr noundef nonnull @passwd_options) #7
  br label %.thread150

bb.e:                                             ; preds = %bb.b
  %.not136 = icmp eq i32 %.095, 0
  br i1 %.not136, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.i = tail call ptr @opt_arg() #7
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %.not135 = icmp eq i32 %.082, 0
  br i1 %.not135, label %.backedge, label %.loopexit

bb.l:                                             ; preds = %bb.b
  %.not134 = icmp eq i32 %.082, 0
  br i1 %.not134, label %.backedge, label %.loopexit

bb.m:                                             ; preds = %bb.b
  %.not133 = icmp eq i32 %.082, 0
  br i1 %.not133, label %.backedge, label %.loopexit

bb.n:                                             ; preds = %bb.b
  %.not132 = icmp eq i32 %.082, 0
  br i1 %.not132, label %.backedge, label %.loopexit

bb.o:                                             ; preds = %bb.b
  %.not131 = icmp eq i32 %.082, 0
  br i1 %.not131, label %.backedge, label %.loopexit

bb.p:                                             ; preds = %bb.b
  %i.j = tail call ptr @opt_arg() #7
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %.not130 = icmp eq i32 %.095, 0
  br i1 %.not130, label %.backedge, label %.loopexit

.backedge:                                        ; preds = %bb.q, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.b, %bb.s, %bb.r, %bb.p, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.be = phi ptr [ %i.e, %bb.b ], [ %i.e, %bb.f ], [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %i.e, %bb.i ], [ %i.e, %bb.j ], [ %i.e, %bb.s ], [ %i.e, %bb.k ], [ %i.e, %bb.l ], [ %i.e, %bb.m ], [ %i.e, %bb.n ], [ %i.j, %bb.p ], [ %i.e, %bb.o ], [ %i.e, %bb.r ], [ %i.e, %bb.q ]
  %.0107.be = phi ptr [ %.0107, %bb.b ], [ %i.i, %bb.f ], [ %.0107, %bb.g ], [ %.0107, %bb.h ], [ %.0107, %bb.i ], [ %.0107, %bb.j ], [ %.0107, %bb.s ], [ %.0107, %bb.k ], [ %.0107, %bb.l ], [ %.0107, %bb.m ], [ %.0107, %bb.n ], [ %.0107, %bb.p ], [ %.0107, %bb.o ], [ %.0107, %bb.r ], [ %.0107, %bb.q ]
  %.097.be = phi i32 [ %.097, %bb.b ], [ %.097, %bb.f ], [ %.097, %bb.g ], [ %.097, %bb.h ], [ %.097, %bb.i ], [ %.097, %bb.j ], [ %.097, %bb.s ], [ %.097, %bb.k ], [ %.097, %bb.l ], [ %.097, %bb.m ], [ %.097, %bb.n ], [ %.097, %bb.p ], [ %.097, %bb.o ], [ %.097, %bb.r ], [ 1, %bb.q ]
  %.095.be = phi i32 [ %.095, %bb.b ], [ 1, %bb.f ], [ %.095, %bb.g ], [ %.095, %bb.h ], [ %.095, %bb.i ], [ %.095, %bb.j ], [ %.095, %bb.s ], [ %.095, %bb.k ], [ %.095, %bb.l ], [ %.095, %bb.m ], [ %.095, %bb.n ], [ %.095, %bb.p ], [ %.095, %bb.o ], [ %.095, %bb.r ], [ 1, %bb.q ]
  %.093.be = phi i32 [ %.093, %bb.b ], [ %.093, %bb.f ], [ 1, %bb.g ], [ %.093, %bb.h ], [ %.093, %bb.i ], [ %.093, %bb.j ], [ %.093, %bb.s ], [ %.093, %bb.k ], [ %.093, %bb.l ], [ %.093, %bb.m ], [ %.093, %bb.n ], [ %.093, %bb.p ], [ %.093, %bb.o ], [ %.093, %bb.r ], [ %.093, %bb.q ]
  %.091.be = phi i32 [ %.091, %bb.b ], [ %.091, %bb.f ], [ %.091, %bb.g ], [ %.091, %bb.h ], [ %.091, %bb.i ], [ %.091, %bb.j ], [ %.091, %bb.s ], [ %.091, %bb.k ], [ %.091, %bb.l ], [ %.091, %bb.m ], [ %.091, %bb.n ], [ 1, %bb.p ], [ %.091, %bb.o ], [ %.091, %bb.r ], [ %.091, %bb.q ]
  %.089.be = phi i32 [ %.089, %bb.b ], [ %.089, %bb.f ], [ %.089, %bb.g ], [ 1, %bb.h ], [ %.089, %bb.i ], [ %.089, %bb.j ], [ %.089, %bb.s ], [ %.089, %bb.k ], [ %.089, %bb.l ], [ %.089, %bb.m ], [ %.089, %bb.n ], [ %.089, %bb.p ], [ %.089, %bb.o ], [ %.089, %bb.r ], [ %.089, %bb.q ]
  %.087.be = phi i32 [ %.087, %bb.b ], [ %.087, %bb.f ], [ %.087, %bb.g ], [ %.087, %bb.h ], [ 1, %bb.i ], [ %.087, %bb.j ], [ %.087, %bb.s ], [ %.087, %bb.k ], [ %.087, %bb.l ], [ %.087, %bb.m ], [ %.087, %bb.n ], [ %.087, %bb.p ], [ %.087, %bb.o ], [ %.087, %bb.r ], [ %.087, %bb.q ]
  %.085.be = phi i32 [ %.085, %bb.b ], [ %.085, %bb.f ], [ %.085, %bb.g ], [ %.085, %bb.h ], [ %.085, %bb.i ], [ 1, %bb.j ], [ %.085, %bb.s ], [ %.085, %bb.k ], [ %.085, %bb.l ], [ %.085, %bb.m ], [ %.085, %bb.n ], [ %.085, %bb.p ], [ %.085, %bb.o ], [ %.085, %bb.r ], [ %.085, %bb.q ]
  %.082.be = phi i32 [ %.082, %bb.b ], [ %.082, %bb.f ], [ %.082, %bb.g ], [ %.082, %bb.h ], [ %.082, %bb.i ], [ %.082, %bb.j ], [ %.082, %bb.s ], [ 1, %bb.k ], [ 3, %bb.l ], [ 4, %bb.m ], [ 2, %bb.n ], [ %.082, %bb.p ], [ 5, %bb.o ], [ %.082, %bb.r ], [ %.082, %bb.q ]
  br label %bb.b, !llvm.loop !14

bb.r:                                             ; preds = %bb.b, %bb.b
  %i.k = tail call i32 @opt_rand(i32 noundef %i.f) #7
  %.not128 = icmp eq i32 %i.k, 0
  br i1 %.not128, label %.thread150.loopexit155, label %.backedge

bb.s:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = tail call i32 @opt_provider(i32 noundef %i.f) #7
  %.not129 = icmp eq i32 %i.l, 0
  br i1 %.not129, label %.thread150.loopexit155, label %.backedge

bb.t:                                             ; preds = %bb.b
  store ptr %i.e, ptr %i.a, align 8
  %i.m = tail call i32 @opt_num_rest() #7         ; 0 uses
  %i.n = tail call ptr @opt_rest() #7             ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !9
  %.not115 = icmp eq ptr %i.o, null
  br i1 %.not115, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.not116 = icmp eq i32 %.095, 0
  br i1 %.not116, label %bb.v, label %bb.c

bb.v:                                             ; preds = %bb.u, %bb.t
  %.0103 = phi ptr [ null, %bb.t ], [ %i.n, %bb.u ] ; 4 uses
  %i.p = tail call i32 @app_RAND_load() #7
  %.not117 = icmp eq i32 %i.p, 0
  br i1 %.not117, label %.thread150, label %bb.w

bb.w:                                             ; preds = %bb.v
  %spec.store.select = tail call i32 @llvm.umax.i32(i32 %.082, i32 1) ; 2 uses
  %i.q = icmp ne ptr %.0107, null                 ; 2 uses
  %i.r = icmp ne i32 %.097, 0                     ; 2 uses
  %or.cond = and i1 %i.q, %i.r
  br i1 %or.cond, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.s = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.t = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.s, ptr noundef nonnull @.str.49, ptr noundef %i.d) #7 ; 0 uses
  br label %.thread150

bb.y:                                             ; preds = %bb.w
  %or.cond4 = or i1 %i.q, %i.r
  br i1 %or.cond4, label %bb.z, label %.thread224

bb.z:                                             ; preds = %bb.y
  %i.u = tail call ptr @bio_open_default(ptr noundef %.0107, i8 noundef signext 114, i32 noundef 32769) #7 ; 5 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %.thread150, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.w = icmp eq ptr %.0103, null
  br i1 %i.w, label %bb.ab, label %.preheader152

.thread224:                                       ; preds = %bb.y
  %i.x = icmp eq ptr %.0103, null
  br i1 %i.x, label %bb.ac, label %.thread..preheader_crit_edge

.thread..preheader_crit_edge:                     ; preds = %.thread224
  %.pre.pre = load ptr, ptr %.0103, align 8, !tbaa !9
  br label %.preheader

bb.ab:                                            ; preds = %bb.aa
  %i.y = tail call ptr @app_malloc(i64 noundef 258, ptr noundef nonnull @.str.50) #7
  br label %.preheader152

.preheader152:                                    ; preds = %bb.ab, %bb.aa
  %.0101141143.ph = phi ptr [ %i.y, %bb.ab ], [ null, %bb.aa ] ; 5 uses
  br label %bb.ag

bb.ac:                                            ; preds = %.thread224
  %i.z = tail call ptr @app_malloc(i64 noundef 258, ptr noundef nonnull @.str.50) #7 ; 5 uses
  %i.aa = or i32 %.091, %.093
  %i.ab = xor i32 %i.aa, 1
  %i.ac = tail call i32 @EVP_read_pw_string(ptr noundef %i.z, i32 noundef 258, ptr noundef nonnull @.str.51, i32 noundef %i.ab) #7
  %.not121 = icmp eq i32 %i.ac, 0
  br i1 %.not121, label %bb.ad, label %.thread150

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.z, ptr @passwd_main.passwds_static, align 16, !tbaa !9
  br label %.preheader

.preheader:                                       ; preds = %.thread..preheader_crit_edge, %bb.ad
  %.pre = phi ptr [ %i.z, %bb.ad ], [ %.pre.pre, %.thread..preheader_crit_edge ]
  %.0101141144.ph = phi ptr [ %i.z, %bb.ad ], [ null, %.thread..preheader_crit_edge ] ; 2 uses
  %.2105.ph = phi ptr [ @passwd_main.passwds_static, %bb.ad ], [ %.0103, %.thread..preheader_crit_edge ]
  br label %bb.ae

bb.ae:                                            ; preds = %.preheader, %bb.af
  %i.ad = phi ptr [ %i.ah, %bb.af ], [ %.pre, %.preheader ]
  %.2105 = phi ptr [ %i.ag, %bb.af ], [ %.2105.ph, %.preheader ]
  %i.ae = load ptr, ptr @bio_out, align 8, !tbaa !12
  %i.af = call fastcc i32 @do_passwd(i32 noundef %.091, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.ad, ptr noundef %i.ae, i32 noundef %.089, i32 noundef %.087, i32 noundef %.085, i32 noundef %spec.store.select)
  %.not126 = icmp eq i32 %i.af, 0
  br i1 %.not126, label %.thread150, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ag = getelementptr inbounds nuw i8, ptr %.2105, i64 8 ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !9  ; 2 uses
  %.not127 = icmp eq ptr %i.ah, null
  br i1 %.not127, label %.thread150, label %bb.ae, !llvm.loop !16

bb.ag:                                            ; preds = %bb.am, %.preheader152
  %i.ai = call i32 @BIO_gets(ptr noundef nonnull %i.u, ptr noundef %.0101141143.ph, i32 noundef 257) #7
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %bb.ah, label %.thread150

bb.ah:                                            ; preds = %bb.ag
  %i.ak = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.0101141143.ph, i32 noundef 10) #8 ; 2 uses
  %.not122 = icmp eq ptr %i.ak, null
  br i1 %.not122, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !17
  br label %bb.am

bb.aj:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  br label %bb.ak

bb.ak:                                            ; preds = %bb.al, %bb.aj
  %i.al = call i32 @BIO_gets(ptr noundef nonnull %i.u, ptr noundef nonnull %i.c, i32 noundef 8192) #7 ; 2 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %bb.al, label %.critedge

bb.al:                                            ; preds = %bb.ak
  %i.an = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.c, i32 noundef 10) #8
  %.not123 = icmp eq ptr %i.an, null
  br i1 %.not123, label %bb.ak, label %.critedge, !llvm.loop !18

.critedge:                                        ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #7
  %i.ao = icmp slt i32 %i.al, 1
  br label %bb.am

bb.am:                                            ; preds = %.critedge, %bb.ai
  %.077 = phi i1 [ false, %bb.ai ], [ %i.ao, %.critedge ]
  %i.ap = load ptr, ptr @bio_out, align 8, !tbaa !12
  %i.aq = call fastcc i32 @do_passwd(i32 noundef %.091, ptr noundef %i.a, ptr noundef %i.b, ptr noundef nonnull %.0101141143.ph, ptr noundef %i.ap, i32 noundef %.089, i32 noundef %.087, i32 noundef %.085, i32 noundef %spec.store.select) ; 2 uses
  %.not124.not = icmp eq i32 %i.aq, 0
  %brmerge = or i1 %.not124.not, %.077
  br i1 %brmerge, label %.thread150.loopexit.split.loop.exit, label %bb.ag

.thread150.loopexit155:                           ; preds = %bb.r, %bb.s
  store ptr %i.e, ptr %i.a, align 8
  br label %.thread150

.thread150.loopexit.split.loop.exit:              ; preds = %bb.am
  %.mux.le = xor i32 %i.aq, 1
  br label %.thread150

.thread150:                                       ; preds = %bb.af, %bb.ae, %.thread150.loopexit.split.loop.exit, %bb.ag, %.thread150.loopexit155, %bb.ac, %bb.z, %bb.v, %bb.x, %bb.d, %bb.c
  %.1102 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %.thread150.loopexit155 ], [ %.0101141143.ph, %.thread150.loopexit.split.loop.exit ], [ null, %bb.x ], [ null, %bb.z ], [ %i.z, %bb.ac ], [ null, %bb.v ], [ %.0101141143.ph, %bb.ag ], [ %.0101141144.ph, %bb.ae ], [ %.0101141144.ph, %bb.af ]
  %.1100 = phi ptr [ null, %bb.c ], [ null, %bb.d ], [ null, %.thread150.loopexit155 ], [ %i.u, %.thread150.loopexit.split.loop.exit ], [ null, %bb.x ], [ null, %bb.z ], [ null, %bb.ac ], [ null, %bb.v ], [ %i.u, %bb.ag ], [ null, %bb.ae ], [ null, %bb.af ]
  %.084 = phi i32 [ 1, %bb.c ], [ 0, %bb.d ], [ 1, %.thread150.loopexit155 ], [ 0, %bb.ag ], [ 1, %bb.x ], [ 1, %bb.z ], [ 1, %bb.ac ], [ 1, %bb.v ], [ %.mux.le, %.thread150.loopexit.split.loop.exit ], [ 0, %bb.af ], [ 1, %bb.ae ]
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.ar, ptr noundef nonnull @.str.52, i32 noundef 307) #7
  call void @CRYPTO_free(ptr noundef %.1102, ptr noundef nonnull @.str.52, i32 noundef 308) #7
  %i.as = call i32 @BIO_free(ptr noundef %.1100) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.084
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_next() local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opt_help(ptr noundef) local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare i32 @opt_num_rest() local_unnamed_addr #2

declare ptr @opt_rest() local_unnamed_addr #2

declare i32 @app_RAND_load() local_unnamed_addr #2

declare ptr @bio_open_default(ptr noundef, i8 noundef signext, i32 noundef) local_unnamed_addr #2

declare ptr @app_malloc(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_read_pw_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @do_passwd(i32 noundef range(i32 0, 2) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr noundef %4, i32 noundef range(i32 0, 2) %5, i32 noundef range(i32 0, 2) %6, i32 noundef range(i32 0, 2) %7, i32 noundef range(i32 0, 6) %8) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 106 uses
  %i.b = alloca [64 x i8], align 16               ; 8 uses
  %i.c = alloca [2 x i8], align 1                 ; 4 uses
  %i.d = alloca [17 x i8], align 16               ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca [80 x i8], align 16               ; 4 uses
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add nsw i32 %8, -1           ; 2 uses
  %i.g = icmp ult i32 %switch.tableidx, 5
  br i1 %i.g, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.b
  %i.h = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.do_passwd, i64 %i.h
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b
  %.067 = phi i64 [ %switch.load, %switch.lookup ], [ 0, %bb.b ]
  %i.i = add nsw i32 %8, -3
  %or.cond5 = icmp ult i32 %i.i, 2
  %spec.select = select i1 %or.cond5, i64 16, i64 %.067 ; 8 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !9
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load ptr, ptr %1, align 8, !tbaa !9
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = or disjoint i64 %spec.select, 1
  %i.m = tail call ptr @app_malloc(i64 noundef %i.l, ptr noundef nonnull @.str.53) #7 ; 3 uses
  store ptr %i.m, ptr %2, align 8, !tbaa !9
  store ptr %i.m, ptr %1, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.d
  %i.n = phi ptr [ %.pre, %._crit_edge ], [ %i.m, %bb.d ]
  %i.o = trunc nuw nsw i64 %spec.select to i32
  %i.p = tail call i32 @RAND_bytes(ptr noundef %i.n, i32 noundef %i.o) #7
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %bb.be, label %.preheader

.preheader:                                       ; preds = %bb.e
  %.not89 = icmp eq i64 %spec.select, 0
  br i1 %.not89, label %.thread, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %spec.select, 1
  %i.r = icmp eq i64 %spec.select, 1
  br i1 %i.r, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %spec.select, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.06688 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ah, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %.06688 ; 2 uses
  %i.u = load i8, ptr %i.t, align 1, !tbaa !17
  %i.v = and i8 %i.u, 63
  %i.w = zext nneg i8 %i.v to i64
  %i.x = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.w
  %i.y = load i8, ptr %i.x, align 1, !tbaa !17
  store i8 %i.y, ptr %i.t, align 1, !tbaa !17
  %i.z = load ptr, ptr %1, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %.06688
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 1 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !17
  %i.ad = and i8 %i.ac, 63
  %i.ae = zext nneg i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.ae
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !17
  store i8 %i.ag, ptr %i.ab, align 1, !tbaa !17
  %i.ah = add nuw nsw i64 %.06688, 2              ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.thread.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !19

.thread.loopexit.unr-lcssa:                       ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.thread.loopexit.unr-lcssa, %.lr.ph.preheader
  %.06688.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ah, %.thread.loopexit.unr-lcssa ]
  %lcmp.mod17 = trunc i64 %spec.select to i1
  tail call void @llvm.assume(i1 %lcmp.mod17)
  %i.ai = load ptr, ptr %1, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %.06688.epil.init ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !17
  %i.al = and i8 %i.ak, 63
  %i.am = zext nneg i8 %i.al to i64
  %i.an = getelementptr inbounds nuw i8, ptr @cov_2char, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !17
  store i8 %i.ao, ptr %i.aj, align 1, !tbaa !17
  br label %.thread

.thread:                                          ; preds = %.lr.ph.epil.preheader, %.thread.loopexit.unr-lcssa, %.preheader
  %i.ap = load ptr, ptr %1, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %spec.select
  store i8 0, ptr %i.aq, align 1, !tbaa !17
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.a
  %i.ar = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8
  %i.as = icmp ugt i64 %i.ar, 256
  br i1 %i.as, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %.not72 = icmp eq i32 %5, 0
  br i1 %.not72, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.at = load ptr, ptr @bio_err, align 8, !tbaa !12
  %i.au = tail call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.at, ptr noundef nonnull @.str.54, i32 noundef 256) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 256
  store i8 0, ptr %i.av, align 1, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.aw = add nsw i32 %8, -1
  %or.cond7 = icmp ult i32 %i.aw, 2
  br i1 %or.cond7, label %.thread75, label %bb.k

.thread75:                                        ; preds = %bb.j
  %i.ax = icmp eq i32 %8, 1
  %i.ay = select i1 %i.ax, ptr @.str.27, ptr @.str.25
  %i.az = load ptr, ptr %1, align 8, !tbaa !9
  %i.ba = tail call fastcc ptr @md5crypt(ptr noundef nonnull %3, ptr noundef nonnull %i.ay, ptr noundef %i.az)
  br label %.thread77

bb.k:                                             ; preds = %bb.j
  %i.bb = icmp eq i32 %8, 5
  br i1 %i.bb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bc = load ptr, ptr %1, align 8, !tbaa !9
  %i.bd = tail call fastcc ptr @md5crypt(ptr noundef nonnull %3, ptr noundef nonnull @.str.55, ptr noundef %i.bc)
  br label %.thread77

bb.m:                                             ; preds = %bb.k
  %i.be = icmp samesign ugt i32 %8, 2
  br i1 %i.be, label %bb.n, label %.thread77

bb.n:                                             ; preds = %bb.m
  %i.bf = icmp eq i32 %8, 3
  %i.bg = select i1 %i.bf, ptr @.str.23, ptr @.str.21 ; 2 uses
  %i.bh = load ptr, ptr %1, align 8, !tbaa !9     ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  %i.bi = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #8 ; 17 uses
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !17  ; 2 uses
  switch i8 %i.bj, label %shacrypt.exit [
    i8 53, label %bb.o
    i8 54, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bk = tail call ptr @EVP_sha256() #7
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.bl = tail call ptr @EVP_sha512() #7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.0355.i = phi ptr [ %i.bk, %bb.o ], [ %i.bl, %bb.p ] ; 5 uses
  %.0346.i = phi i64 [ 32, %bb.o ], [ 64, %bb.p ] ; 16 uses
  %i.bm = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bh, ptr noundef nonnull dereferenceable(8) @shacrypt.rounds_prefix, i64 noundef 7) #8
  %.not400.i = icmp eq i32 %i.bm, 0               ; 2 uses
  br i1 %.not400.i, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.bo = call i64 @strtoul(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.e, i32 noundef 10) #7
  %i.bp = load ptr, ptr %i.e, align 8, !tbaa !9   ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !17
  %i.br = icmp eq i8 %i.bq, 36
  br i1 %i.br, label %bb.s, label %.critedge.i

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  %spec.select398.i = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1000)
  %.1344399.i = tail call i64 @llvm.umin.i64(i64 %spec.select398.i, i64 999999999)
  %.1344.i = trunc nuw nsw i64 %.1344399.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #7
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.q
  %.2345.i = phi i32 [ %.1344.i, %bb.s ], [ 5000, %bb.q ] ; 2 uses
  %.1342.i = phi i64 [ 20, %bb.s ], [ 3, %bb.q ]
  %.1335.i = phi ptr [ %i.bs, %bb.s ], [ %i.bh, %bb.q ]
  %i.bt = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bg, i64 noundef 2) #7 ; 0 uses
  %i.bu = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.d, ptr noundef nonnull %.1335.i, i64 noundef 17) #7 ; 0 uses
  %i.bv = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.d) #8 ; 9 uses
  store i8 0, ptr @shacrypt.out_buf, align 16, !tbaa !17
  %i.bw = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  %i.bx = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.c, i64 noundef 124) #7 ; 0 uses
  %i.by = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  br i1 %.not400.i, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.bz = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.f, i64 noundef 80, ptr noundef nonnull @.str.59, i32 noundef %.2345.i) #7 ; 0 uses
  %i.ca = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.f, i64 noundef 124) #7 ; 0 uses
  %i.cb = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull @ascii_dollar, i64 noundef 124) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cc = call i64 @OPENSSL_strlcat(ptr noundef nonnull @shacrypt.out_buf, ptr noundef nonnull %i.d, i64 noundef 124) #7 ; 0 uses
  %i.cd = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @shacrypt.out_buf) #8
  %i.ce = add i64 %i.bv, %.1342.i
  %i.cf = icmp ugt i64 %i.cd, %i.ce
  br i1 %i.cf, label %.loopexit402.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = call ptr @EVP_MD_CTX_new() #7           ; 36 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.loopexit402.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ci = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.cg, ptr noundef %.0355.i, ptr noundef null) #7
  %.not367.i = icmp eq i32 %i.ci, 0
  br i1 %.not367.i, label %.loopexit402.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cg, ptr noundef nonnull %3, i64 noundef %i.bi) #7
  %.not368.i = icmp eq i32 %i.cj, 0
  br i1 %.not368.i, label %.loopexit402.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ck = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.cg, ptr noundef nonnull %i.d, i64 noundef %i.bv) #7
  %.not369.i = icmp eq i32 %i.ck, 0
  br i1 %.not369.i, label %.loopexit402.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cl = call ptr @EVP_MD_CTX_new() #7           ; 42 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %.loopexit402.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cn = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.cl, ptr noundef %.0355.i, ptr noundef null) #7
  %.not370.i = icmp eq i32 %i.cn, 0
  br i1 %.not370.i, label %.loopexit402.i, label %bb.ac

end_hunk_0
