Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/pkeyutl?download=true
inline.NumInlined: 12
inline.NumDeleted: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0

%struct.options_st = type { ptr, i32, i32, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@OPT_SECTION_STR = external constant [0 x i8], align 1
@.str = private unnamed_addr constant [18 x i8] c"General options:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Display this summary\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"sign\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Sign input data with private key\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"verify\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Verify with public key\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"encrypt\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Encrypt input data with public key\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"decrypt\00", align 1
@.str.10 = private unnamed_addr constant [36 x i8] c"Decrypt input data with private key\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"derive\00", align 1
@.str.12 = private unnamed_addr constant [51 x i8] c"Derive shared secret from own and peer (EC)DH keys\00", align 1
@.str.13 = private unnamed_addr constant [6 x i8] c"decap\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"Decapsulate shared secret\00", align 1
@.str.15 = private unnamed_addr constant [6 x i8] c"encap\00", align 1
@.str.16 = private unnamed_addr constant [26 x i8] c"Encapsulate shared secret\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"config\00", align 1
@.str.18 = private unnamed_addr constant [50 x i8] c"Load a configuration file (this may load modules)\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"Input options:\0A\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"in\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"Input file - default stdin\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"inkey\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"Input key, by default private key\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"pubin\00", align 1
@.str.25 = private unnamed_addr constant [26 x i8] c"Input key is a public key\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"passin\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"Input file pass phrase source\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"peerkey\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"Peer key file used in key derivation\00", align 1
@.str.30 = private unnamed_addr constant [9 x i8] c"peerform\00", align 1
@.str.31 = private unnamed_addr constant [30 x i8] c"Peer key format (DER/PEM/P12)\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"certin\00", align 1
@.str.33 = private unnamed_addr constant [34 x i8] c"Input is a cert with a public key\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c"rev\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"Reverse the order of the input buffer\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"sigfile\00", align 1
@.str.37 = private unnamed_addr constant [39 x i8] c"Signature file (verify operation only)\00", align 1
@.str.38 = private unnamed_addr constant [8 x i8] c"keyform\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"Private key format (DER/PEM)\00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"Output options:\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"out\00", align 1
@.str.42 = private unnamed_addr constant [29 x i8] c"Output file - default stdout\00", align 1
@.str.43 = private unnamed_addr constant [7 x i8] c"secret\00", align 1
@.str.44 = private unnamed_addr constant [38 x i8] c"File to store secret on encapsulation\00", align 1
@.str.45 = private unnamed_addr constant [10 x i8] c"asn1parse\00", align 1
@.str.46 = private unnamed_addr constant [74 x i8] c"parse the output as ASN.1 data to check its DER encoding and print errors\00", align 1
@.str.47 = private unnamed_addr constant [8 x i8] c"hexdump\00", align 1
@.str.48 = private unnamed_addr constant [16 x i8] c"Hex dump output\00", align 1
@.str.49 = private unnamed_addr constant [14 x i8] c"verifyrecover\00", align 1
@.str.50 = private unnamed_addr constant [63 x i8] c"Verify RSA signature, recovering original signature input data\00", align 1
@.str.51 = private unnamed_addr constant [43 x i8] c"Signing/Derivation/Encapsulation options:\0A\00", align 1
@.str.52 = private unnamed_addr constant [6 x i8] c"rawin\00", align 1
@.str.53 = private unnamed_addr constant [70 x i8] c"Indicate that the signature/verification input data is not yet hashed\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.55 = private unnamed_addr constant [81 x i8] c"The digest algorithm to use for signing/verifying raw input data. Implies -rawin\00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c"pkeyopt\00", align 1
@.str.57 = private unnamed_addr constant [32 x i8] c"Public key options as opt:value\00", align 1
@.str.58 = private unnamed_addr constant [15 x i8] c"pkeyopt_passin\00", align 1
@.str.59 = private unnamed_addr constant [71 x i8] c"Public key option that is read as a passphrase argument opt:passphrase\00", align 1
@.str.60 = private unnamed_addr constant [4 x i8] c"kdf\00", align 1
@.str.61 = private unnamed_addr constant [18 x i8] c"Use KDF algorithm\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"kdflen\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"KDF algorithm output length\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"kemop\00", align 1
@.str.65 = private unnamed_addr constant [44 x i8] c"KEM operation specific to the key algorithm\00", align 1
@.str.66 = private unnamed_addr constant [23 x i8] c"Random state options:\0A\00", align 1
@.str.67 = private unnamed_addr constant [5 x i8] c"rand\00", align 1
@.str.68 = private unnamed_addr constant [56 x i8] c"Load the given file(s) into the random number generator\00", align 1
@.str.69 = private unnamed_addr constant [10 x i8] c"writerand\00", align 1
@.str.70 = private unnamed_addr constant [40 x i8] c"Write random data to the specified file\00", align 1
@.str.71 = private unnamed_addr constant [19 x i8] c"Provider options:\0A\00", align 1
@.str.72 = private unnamed_addr constant [14 x i8] c"provider-path\00", align 1
@.str.73 = private unnamed_addr constant [68 x i8] c"Provider load path (must be before 'provider' argument if required)\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c"provider\00", align 1
@.str.75 = private unnamed_addr constant [51 x i8] c"Provider to load (can be specified multiple times)\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"provparam\00", align 1
@.str.77 = private unnamed_addr constant [35 x i8] c"Set a provider key-value parameter\00", align 1
@.str.78 = private unnamed_addr constant [10 x i8] c"propquery\00", align 1
@.str.79 = private unnamed_addr constant [45 x i8] c"Property query used when fetching algorithms\00", align 1
@pkeyutl_options = dso_local constant [44 x %struct.options_st] [%struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str }, %struct.options_st { ptr @.str.1, i32 1, i32 45, ptr @.str.2 }, %struct.options_st { ptr @.str.3, i32 8, i32 45, ptr @.str.4 }, %struct.options_st { ptr @.str.5, i32 9, i32 45, ptr @.str.6 }, %struct.options_st { ptr @.str.7, i32 12, i32 45, ptr @.str.8 }, %struct.options_st { ptr @.str.9, i32 13, i32 45, ptr @.str.10 }, %struct.options_st { ptr @.str.11, i32 14, i32 45, ptr @.str.12 }, %struct.options_st { ptr @.str.13, i32 1606, i32 45, ptr @.str.14 }, %struct.options_st { ptr @.str.15, i32 1607, i32 45, ptr @.str.16 }, %struct.options_st { ptr @.str.17, i32 1610, i32 60, ptr @.str.18 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.19 }, %struct.options_st { ptr @.str.20, i32 2, i32 60, ptr @.str.21 }, %struct.options_st { ptr @.str.22, i32 16, i32 115, ptr @.str.23 }, %struct.options_st { ptr @.str.24, i32 4, i32 45, ptr @.str.25 }, %struct.options_st { ptr @.str.26, i32 18, i32 115, ptr @.str.27 }, %struct.options_st { ptr @.str.28, i32 17, i32 115, ptr @.str.29 }, %struct.options_st { ptr @.str.30, i32 19, i32 102, ptr @.str.31 }, %struct.options_st { ptr @.str.32, i32 5, i32 45, ptr @.str.33 }, %struct.options_st { ptr @.str.34, i32 11, i32 45, ptr @.str.35 }, %struct.options_st { ptr @.str.36, i32 15, i32 60, ptr @.str.37 }, %struct.options_st { ptr @.str.38, i32 20, i32 102, ptr @.str.39 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.40 }, %struct.options_st { ptr @.str.41, i32 3, i32 62, ptr @.str.42 }, %struct.options_st { ptr @.str.43, i32 1608, i32 62, ptr @.str.44 }, %struct.options_st { ptr @.str.45, i32 6, i32 45, ptr @.str.46 }, %struct.options_st { ptr @.str.47, i32 7, i32 45, ptr @.str.48 }, %struct.options_st { ptr @.str.49, i32 10, i32 45, ptr @.str.50 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.51 }, %struct.options_st { ptr @.str.52, i32 1611, i32 45, ptr @.str.53 }, %struct.options_st { ptr @.str.54, i32 1612, i32 115, ptr @.str.55 }, %struct.options_st { ptr @.str.56, i32 21, i32 115, ptr @.str.57 }, %struct.options_st { ptr @.str.58, i32 22, i32 115, ptr @.str.59 }, %struct.options_st { ptr @.str.60, i32 23, i32 115, ptr @.str.61 }, %struct.options_st { ptr @.str.62, i32 24, i32 112, ptr @.str.63 }, %struct.options_st { ptr @.str.64, i32 1609, i32 115, ptr @.str.65 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.66 }, %struct.options_st { ptr @.str.67, i32 1501, i32 115, ptr @.str.68 }, %struct.options_st { ptr @.str.69, i32 1502, i32 62, ptr @.str.70 }, %struct.options_st { ptr @OPT_SECTION_STR, i32 1, i32 45, ptr @.str.71 }, %struct.options_st { ptr @.str.72, i32 1602, i32 115, ptr @.str.73 }, %struct.options_st { ptr @.str.74, i32 1601, i32 115, ptr @.str.75 }, %struct.options_st { ptr @.str.76, i32 1604, i32 115, ptr @.str.77 }, %struct.options_st { ptr @.str.78, i32 1603, i32 115, ptr @.str.79 }, %struct.options_st zeroinitializer], align 16
@bio_err = external local_unnamed_addr global ptr, align 8
@.str.80 = private unnamed_addr constant [28 x i8] c"%s: Use -help for summary.\0A\00", align 1
@.str.81 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1
@.str.82 = private unnamed_addr constant [46 x i8] c"%s: no KDF length given (-kdflen parameter).\0A\00", align 1
@.str.83 = private unnamed_addr constant [46 x i8] c"%s: no private key given (-inkey parameter).\0A\00", align 1
@.str.84 = private unnamed_addr constant [50 x i8] c"%s: -peerkey option not allowed without -derive.\0A\00", align 1
@.str.85 = private unnamed_addr constant [52 x i8] c"%s: missing -peerkey option for -derive operation.\0A\00", align 1
@.str.86 = private unnamed_addr constant [23 x i8] c"%s: Error loading key\0A\00", align 1
@.str.87 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.88 = private unnamed_addr constant [46 x i8] c"%s: -verifyrecover can be used only with RSA\0A\00", align 1
@.str.89 = private unnamed_addr constant [48 x i8] c"%s: -digest (prehash) is not supported with %s\0A\00", align 1
@.str.90 = private unnamed_addr constant [19 x i8] c"(unknown key type)\00", align 1
@.str.91 = private unnamed_addr constant [63 x i8] c"%s: -digest and -rawin can only be used with -sign or -verify\0A\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"%s: -rev cannot be used with raw input\0A\00", align 1
@.str.93 = private unnamed_addr constant [22 x i8] c"Error: out of memory\0A\00", align 1
@.str.94 = private unnamed_addr constant [32 x i8] c"%s: Error initializing context\0A\00", align 1
@.str.95 = private unnamed_addr constant [31 x i8] c"%s: Error setting up peer key\0A\00", align 1
@.str.96 = private unnamed_addr constant [31 x i8] c"%s: Can't set parameter \22%s\22:\0A\00", align 1
@.str.97 = private unnamed_addr constant [11 x i8] c"Enter %s: \00", align 1
@.str.98 = private unnamed_addr constant [12 x i8] c"user abort\0A\00", align 1
@.str.99 = private unnamed_addr constant [14 x i8] c"entry failed\0A\00", align 1
@.str.100 = private unnamed_addr constant [15 x i8] c"apps/pkeyutl.c\00", align 1
@.str.101 = private unnamed_addr constant [20 x i8] c"failed to get '%s'\0A\00", align 1
@.str.102 = private unnamed_addr constant [45 x i8] c"%s: Signature file specified for non verify\0A\00", align 1
@.str.103 = private unnamed_addr constant [44 x i8] c"%s: No signature file specified for verify\0A\00", align 1
@.str.104 = private unnamed_addr constant [101 x i8] c"%s: Decapsulation produces only a shared secret and no output. The '-out' option is not applicable.\0A\00", align 1
@.str.105 = private unnamed_addr constant [73 x i8] c"KEM-based shared-secret derivation requires the '-secret <file>' option\0A\00", align 1
@.str.106 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.107 = private unnamed_addr constant [30 x i8] c"Can't open signature file %s\0A\00", align 1
@.str.108 = private unnamed_addr constant [30 x i8] c"Error reading signature data\0A\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"Error reading input Data\0A\00", align 1
@.str.110 = private unnamed_addr constant [88 x i8] c"Error: The non-raw input data length %zd is too long - max supported hashed size is %d\0A\00", align 1
@.str.111 = private unnamed_addr constant [33 x i8] c"Signature Verified Successfully\0A\00", align 1
@.str.112 = private unnamed_addr constant [32 x i8] c"Signature Verification Failure\0A\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"buffer output\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"secret output\00", align 1
@.str.115 = private unnamed_addr constant [28 x i8] c"Public Key operation error\0A\00", align 1
@.str.116 = private unnamed_addr constant [23 x i8] c"Key derivation failed\0A\00", align 1
@.str.118 = private unnamed_addr constant [44 x i8] c"A private key is needed for this operation\0A\00", align 1
@.str.119 = private unnamed_addr constant [24 x i8] c"Error getting password\0A\00", align 1
@.str.120 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.121 = private unnamed_addr constant [11 x i8] c"public key\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"Certificate\00", align 1
@.str.123 = private unnamed_addr constant [32 x i8] c"The given KDF \22%s\22 is unknown.\0A\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"peer key\00", align 1
@.str.125 = private unnamed_addr constant [27 x i8] c"Error reading peer key %s\0A\00", align 1
@.str.126 = private unnamed_addr constant [68 x i8] c"Type of peer public key: %s does not match type of private key: %s\0A\00", align 1
@.str.127 = private unnamed_addr constant [60 x i8] c"Error: unable to determine file size for oneshot operation\0A\00", align 1
@.str.128 = private unnamed_addr constant [27 x i8] c"oneshot sign/verify buffer\00", align 1
@.str.129 = private unnamed_addr constant [30 x i8] c"Error reading raw input data\0A\00", align 1
@.str.130 = private unnamed_addr constant [32 x i8] c"Error verifying raw input data\0A\00", align 1
@.str.131 = private unnamed_addr constant [30 x i8] c"Error signing raw input data\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @pkeyutl_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 14 uses
  %i.b = alloca ptr, align 8                      ; 9 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i32, align 4                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 10 uses
  %i.j = alloca i64, align 8                      ; 8 uses
  %i.k = alloca ptr, align 8                      ; 8 uses
  %i.l = alloca [4096 x i8], align 16             ; 7 uses
  %2 = alloca %struct.stat, align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr null, ptr %i.a, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store ptr null, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  store ptr null, ptr %i.c, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  store i64 0, ptr %i.d, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  store i64 0, ptr %i.e, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  store i32 0, ptr %i.f, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  store i32 0, ptr %i.g, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #10
  store i32 -1, ptr %i.h, align 4, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #10
  store i64 0, ptr %i.i, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  store i64 0, ptr %i.j, align 8, !tbaa !13
  %i.m = tail call ptr @app_get0_libctx() #10     ; 2 uses
  %i.n = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @pkeyutl_options) #10 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0314 = phi ptr [ null, %bb.a ], [ %.0314.be, %.backedge ] ; 65 uses
  %.0303 = phi ptr [ null, %bb.a ], [ %.0303.be, %.backedge ] ; 35 uses
  %.0301 = phi ptr [ null, %bb.a ], [ %.0301.be, %.backedge ] ; 35 uses
  %.0299 = phi ptr [ null, %bb.a ], [ %.0299.be, %.backedge ] ; 35 uses
  %.0297 = phi ptr [ null, %bb.a ], [ %.0297.be, %.backedge ] ; 36 uses
  %.0295 = phi ptr [ null, %bb.a ], [ %.0295.be, %.backedge ] ; 33 uses
  %.0293 = phi i8 [ 0, %bb.a ], [ %.0293.be, %.backedge ] ; 33 uses
  %.0291 = phi i8 [ 0, %bb.a ], [ %.0291.be, %.backedge ] ; 33 uses
  %.0289 = phi i8 [ 0, %bb.a ], [ %.0289.be, %.backedge ] ; 34 uses
  %.0284 = phi i32 [ 16, %bb.a ], [ %.0284.be, %.backedge ] ; 43 uses
  %.0282 = phi i32 [ 1, %bb.a ], [ %.0282.be, %.backedge ] ; 31 uses
  %.0276 = phi ptr [ null, %bb.a ], [ %.0276.be, %.backedge ] ; 34 uses
  %.0274 = phi ptr [ null, %bb.a ], [ %.0274.be, %.backedge ] ; 36 uses
  %.0272 = phi ptr [ null, %bb.a ], [ %.0272.be, %.backedge ] ; 36 uses
  %.0270 = phi ptr [ null, %bb.a ], [ %.0270.be, %.backedge ] ; 35 uses
  %.0268 = phi ptr [ null, %bb.a ], [ %.0268.be, %.backedge ] ; 34 uses
  %.0266 = phi i32 [ 0, %bb.a ], [ %.0266.be, %.backedge ] ; 35 uses
  %.0261 = phi ptr [ null, %bb.a ], [ %.0261.be, %.backedge ] ; 70 uses
  %.0256 = phi ptr [ null, %bb.a ], [ %.0256.be, %.backedge ] ; 70 uses
  %.0252 = phi i32 [ 0, %bb.a ], [ %.0252.be, %.backedge ] ; 34 uses
  %i.o = call i32 @opt_next() #10                 ; 3 uses
  switch i32 %i.o, label %.backedge [
    i32 0, label %bb.ap
    i32 11, label %bb.ae
    i32 -1, label %.loopexit476
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 1608, label %bb.f
    i32 15, label %bb.g
    i32 16, label %bb.h
    i32 17, label %bb.i
    i32 18, label %bb.j
    i32 19, label %bb.k
    i32 20, label %bb.l
    i32 1612, label %bb.ao
    i32 1611, label %bb.an
    i32 1501, label %bb.m
    i32 1502, label %bb.m
    i32 1610, label %bb.n
    i32 22, label %bb.aj
    i32 21, label %bb.af
    i32 1601, label %bb.o
    i32 1602, label %bb.o
    i32 1604, label %bb.o
    i32 1603, label %bb.o
    i32 4, label %bb.p
    i32 5, label %bb.q
    i32 6, label %bb.r
    i32 7, label %bb.s
    i32 8, label %bb.t
    i32 9, label %bb.u
    i32 10, label %bb.v
    i32 12, label %bb.w
    i32 13, label %bb.x
    i32 14, label %bb.y
    i32 1606, label %bb.z
    i32 1607, label %bb.aa
    i32 1609, label %bb.ab
    i32 23, label %bb.ac
    i32 24, label %bb.ad
  ]

.backedge:                                        ; preds = %bb.b, %bb.al, %bb.ah, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.ao, %bb.an, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.0314.be = phi ptr [ %.0314, %bb.b ], [ %.0314, %bb.d ], [ %.0314, %bb.e ], [ %.0314, %bb.f ], [ %.0314, %bb.g ], [ %.0314, %bb.h ], [ %.0314, %bb.i ], [ %.0314, %bb.j ], [ %.0314, %bb.k ], [ %.0314, %bb.l ], [ %.0314, %bb.ao ], [ %.0314, %bb.an ], [ %.0314, %bb.m ], [ %i.ag, %bb.n ], [ %.0314, %bb.al ], [ %.0314, %bb.ah ], [ %.0314, %bb.o ], [ %.0314, %bb.p ], [ %.0314, %bb.q ], [ %.0314, %bb.r ], [ %.0314, %bb.s ], [ %.0314, %bb.t ], [ %.0314, %bb.u ], [ %.0314, %bb.v ], [ %.0314, %bb.w ], [ %.0314, %bb.x ], [ %.0314, %bb.y ], [ %.0314, %bb.z ], [ %.0314, %bb.aa ], [ %.0314, %bb.ab ], [ %.0314, %bb.ac ], [ %.0314, %bb.ad ], [ %.0314, %bb.ae ]
  %.0303.be = phi ptr [ %.0303, %bb.b ], [ %i.t, %bb.d ], [ %.0303, %bb.e ], [ %.0303, %bb.f ], [ %.0303, %bb.g ], [ %.0303, %bb.h ], [ %.0303, %bb.i ], [ %.0303, %bb.j ], [ %.0303, %bb.k ], [ %.0303, %bb.l ], [ %.0303, %bb.ao ], [ %.0303, %bb.an ], [ %.0303, %bb.m ], [ %.0303, %bb.n ], [ %.0303, %bb.al ], [ %.0303, %bb.ah ], [ %.0303, %bb.o ], [ %.0303, %bb.p ], [ %.0303, %bb.q ], [ %.0303, %bb.r ], [ %.0303, %bb.s ], [ %.0303, %bb.t ], [ %.0303, %bb.u ], [ %.0303, %bb.v ], [ %.0303, %bb.w ], [ %.0303, %bb.x ], [ %.0303, %bb.y ], [ %.0303, %bb.z ], [ %.0303, %bb.aa ], [ %.0303, %bb.ab ], [ %.0303, %bb.ac ], [ %.0303, %bb.ad ], [ %.0303, %bb.ae ]
  %.0301.be = phi ptr [ %.0301, %bb.b ], [ %.0301, %bb.d ], [ %i.u, %bb.e ], [ %.0301, %bb.f ], [ %.0301, %bb.g ], [ %.0301, %bb.h ], [ %.0301, %bb.i ], [ %.0301, %bb.j ], [ %.0301, %bb.k ], [ %.0301, %bb.l ], [ %.0301, %bb.ao ], [ %.0301, %bb.an ], [ %.0301, %bb.m ], [ %.0301, %bb.n ], [ %.0301, %bb.al ], [ %.0301, %bb.ah ], [ %.0301, %bb.o ], [ %.0301, %bb.p ], [ %.0301, %bb.q ], [ %.0301, %bb.r ], [ %.0301, %bb.s ], [ %.0301, %bb.t ], [ %.0301, %bb.u ], [ %.0301, %bb.v ], [ %.0301, %bb.w ], [ %.0301, %bb.x ], [ %.0301, %bb.y ], [ %.0301, %bb.z ], [ %.0301, %bb.aa ], [ %.0301, %bb.ab ], [ %.0301, %bb.ac ], [ %.0301, %bb.ad ], [ %.0301, %bb.ae ]
  %.0299.be = phi ptr [ %.0299, %bb.b ], [ %.0299, %bb.d ], [ %.0299, %bb.e ], [ %i.v, %bb.f ], [ %.0299, %bb.g ], [ %.0299, %bb.h ], [ %.0299, %bb.i ], [ %.0299, %bb.j ], [ %.0299, %bb.k ], [ %.0299, %bb.l ], [ %.0299, %bb.ao ], [ %.0299, %bb.an ], [ %.0299, %bb.m ], [ %.0299, %bb.n ], [ %.0299, %bb.al ], [ %.0299, %bb.ah ], [ %.0299, %bb.o ], [ %.0299, %bb.p ], [ %.0299, %bb.q ], [ %.0299, %bb.r ], [ %.0299, %bb.s ], [ %.0299, %bb.t ], [ %.0299, %bb.u ], [ %.0299, %bb.v ], [ %.0299, %bb.w ], [ %.0299, %bb.x ], [ %.0299, %bb.y ], [ %.0299, %bb.z ], [ %.0299, %bb.aa ], [ %.0299, %bb.ab ], [ %.0299, %bb.ac ], [ %.0299, %bb.ad ], [ %.0299, %bb.ae ]
  %.0297.be = phi ptr [ %.0297, %bb.b ], [ %.0297, %bb.d ], [ %.0297, %bb.e ], [ %.0297, %bb.f ], [ %i.w, %bb.g ], [ %.0297, %bb.h ], [ %.0297, %bb.i ], [ %.0297, %bb.j ], [ %.0297, %bb.k ], [ %.0297, %bb.l ], [ %.0297, %bb.ao ], [ %.0297, %bb.an ], [ %.0297, %bb.m ], [ %.0297, %bb.n ], [ %.0297, %bb.al ], [ %.0297, %bb.ah ], [ %.0297, %bb.o ], [ %.0297, %bb.p ], [ %.0297, %bb.q ], [ %.0297, %bb.r ], [ %.0297, %bb.s ], [ %.0297, %bb.t ], [ %.0297, %bb.u ], [ %.0297, %bb.v ], [ %.0297, %bb.w ], [ %.0297, %bb.x ], [ %.0297, %bb.y ], [ %.0297, %bb.z ], [ %.0297, %bb.aa ], [ %.0297, %bb.ab ], [ %.0297, %bb.ac ], [ %.0297, %bb.ad ], [ %.0297, %bb.ae ]
  %.0295.be = phi ptr [ %.0295, %bb.b ], [ %.0295, %bb.d ], [ %.0295, %bb.e ], [ %.0295, %bb.f ], [ %.0295, %bb.g ], [ %.0295, %bb.h ], [ %.0295, %bb.i ], [ %i.z, %bb.j ], [ %.0295, %bb.k ], [ %.0295, %bb.l ], [ %.0295, %bb.ao ], [ %.0295, %bb.an ], [ %.0295, %bb.m ], [ %.0295, %bb.n ], [ %.0295, %bb.al ], [ %.0295, %bb.ah ], [ %.0295, %bb.o ], [ %.0295, %bb.p ], [ %.0295, %bb.q ], [ %.0295, %bb.r ], [ %.0295, %bb.s ], [ %.0295, %bb.t ], [ %.0295, %bb.u ], [ %.0295, %bb.v ], [ %.0295, %bb.w ], [ %.0295, %bb.x ], [ %.0295, %bb.y ], [ %.0295, %bb.z ], [ %.0295, %bb.aa ], [ %.0295, %bb.ab ], [ %.0295, %bb.ac ], [ %.0295, %bb.ad ], [ %.0295, %bb.ae ]
  %.0293.be = phi i8 [ %.0293, %bb.b ], [ %.0293, %bb.d ], [ %.0293, %bb.e ], [ %.0293, %bb.f ], [ %.0293, %bb.g ], [ %.0293, %bb.h ], [ %.0293, %bb.i ], [ %.0293, %bb.j ], [ %.0293, %bb.k ], [ %.0293, %bb.l ], [ %.0293, %bb.ao ], [ %.0293, %bb.an ], [ %.0293, %bb.m ], [ %.0293, %bb.n ], [ %.0293, %bb.al ], [ %.0293, %bb.ah ], [ %.0293, %bb.o ], [ %.0293, %bb.p ], [ %.0293, %bb.q ], [ %.0293, %bb.r ], [ 1, %bb.s ], [ %.0293, %bb.t ], [ %.0293, %bb.u ], [ %.0293, %bb.v ], [ %.0293, %bb.w ], [ %.0293, %bb.x ], [ %.0293, %bb.y ], [ %.0293, %bb.z ], [ %.0293, %bb.aa ], [ %.0293, %bb.ab ], [ %.0293, %bb.ac ], [ %.0293, %bb.ad ], [ %.0293, %bb.ae ]
  %.0291.be = phi i8 [ %.0291, %bb.b ], [ %.0291, %bb.d ], [ %.0291, %bb.e ], [ %.0291, %bb.f ], [ %.0291, %bb.g ], [ %.0291, %bb.h ], [ %.0291, %bb.i ], [ %.0291, %bb.j ], [ %.0291, %bb.k ], [ %.0291, %bb.l ], [ %.0291, %bb.ao ], [ %.0291, %bb.an ], [ %.0291, %bb.m ], [ %.0291, %bb.n ], [ %.0291, %bb.al ], [ %.0291, %bb.ah ], [ %.0291, %bb.o ], [ %.0291, %bb.p ], [ %.0291, %bb.q ], [ 1, %bb.r ], [ %.0291, %bb.s ], [ %.0291, %bb.t ], [ %.0291, %bb.u ], [ %.0291, %bb.v ], [ %.0291, %bb.w ], [ %.0291, %bb.x ], [ %.0291, %bb.y ], [ %.0291, %bb.z ], [ %.0291, %bb.aa ], [ %.0291, %bb.ab ], [ %.0291, %bb.ac ], [ %.0291, %bb.ad ], [ %.0291, %bb.ae ]
  %.0289.be = phi i8 [ %.0289, %bb.b ], [ %.0289, %bb.d ], [ %.0289, %bb.e ], [ %.0289, %bb.f ], [ %.0289, %bb.g ], [ %.0289, %bb.h ], [ %.0289, %bb.i ], [ %.0289, %bb.j ], [ %.0289, %bb.k ], [ %.0289, %bb.l ], [ %.0289, %bb.ao ], [ %.0289, %bb.an ], [ %.0289, %bb.m ], [ %.0289, %bb.n ], [ %.0289, %bb.al ], [ %.0289, %bb.ah ], [ %.0289, %bb.o ], [ %.0289, %bb.p ], [ %.0289, %bb.q ], [ %.0289, %bb.r ], [ %.0289, %bb.s ], [ %.0289, %bb.t ], [ %.0289, %bb.u ], [ %.0289, %bb.v ], [ %.0289, %bb.w ], [ %.0289, %bb.x ], [ %.0289, %bb.y ], [ %.0289, %bb.z ], [ %.0289, %bb.aa ], [ %.0289, %bb.ab ], [ %.0289, %bb.ac ], [ %.0289, %bb.ad ], [ 1, %bb.ae ]
  %.0284.be = phi i32 [ %.0284, %bb.b ], [ %.0284, %bb.d ], [ %.0284, %bb.e ], [ %.0284, %bb.f ], [ %.0284, %bb.g ], [ %.0284, %bb.h ], [ %.0284, %bb.i ], [ %.0284, %bb.j ], [ %.0284, %bb.k ], [ %.0284, %bb.l ], [ %.0284, %bb.ao ], [ %.0284, %bb.an ], [ %.0284, %bb.m ], [ %.0284, %bb.n ], [ %.0284, %bb.al ], [ %.0284, %bb.ah ], [ %.0284, %bb.o ], [ %.0284, %bb.p ], [ %.0284, %bb.q ], [ %.0284, %bb.r ], [ %.0284, %bb.s ], [ 16, %bb.t ], [ 32, %bb.u ], [ 64, %bb.v ], [ 512, %bb.w ], [ 1024, %bb.x ], [ 2048, %bb.y ], [ 8192, %bb.z ], [ 4096, %bb.aa ], [ %.0284, %bb.ab ], [ 2048, %bb.ac ], [ %.0284, %bb.ad ], [ %.0284, %bb.ae ]
  %.0282.be = phi i32 [ %.0282, %bb.b ], [ %.0282, %bb.d ], [ %.0282, %bb.e ], [ %.0282, %bb.f ], [ %.0282, %bb.g ], [ %.0282, %bb.h ], [ %.0282, %bb.i ], [ %.0282, %bb.j ], [ %.0282, %bb.k ], [ %.0282, %bb.l ], [ %.0282, %bb.ao ], [ %.0282, %bb.an ], [ %.0282, %bb.m ], [ %.0282, %bb.n ], [ %.0282, %bb.al ], [ %.0282, %bb.ah ], [ %.0282, %bb.o ], [ 2, %bb.p ], [ 3, %bb.q ], [ %.0282, %bb.r ], [ %.0282, %bb.s ], [ %.0282, %bb.t ], [ %.0282, %bb.u ], [ %.0282, %bb.v ], [ %.0282, %bb.w ], [ %.0282, %bb.x ], [ %.0282, %bb.y ], [ %.0282, %bb.z ], [ 2, %bb.aa ], [ %.0282, %bb.ab ], [ 0, %bb.ac ], [ %.0282, %bb.ad ], [ %.0282, %bb.ae ]
  %.0276.be = phi ptr [ %.0276, %bb.b ], [ %.0276, %bb.d ], [ %.0276, %bb.e ], [ %.0276, %bb.f ], [ %.0276, %bb.g ], [ %i.x, %bb.h ], [ %.0276, %bb.i ], [ %.0276, %bb.j ], [ %.0276, %bb.k ], [ %.0276, %bb.l ], [ %.0276, %bb.ao ], [ %.0276, %bb.an ], [ %.0276, %bb.m ], [ %.0276, %bb.n ], [ %.0276, %bb.al ], [ %.0276, %bb.ah ], [ %.0276, %bb.o ], [ %.0276, %bb.p ], [ %.0276, %bb.q ], [ %.0276, %bb.r ], [ %.0276, %bb.s ], [ %.0276, %bb.t ], [ %.0276, %bb.u ], [ %.0276, %bb.v ], [ %.0276, %bb.w ], [ %.0276, %bb.x ], [ %.0276, %bb.y ], [ %.0276, %bb.z ], [ %.0276, %bb.aa ], [ %.0276, %bb.ab ], [ %.0276, %bb.ac ], [ %.0276, %bb.ad ], [ %.0276, %bb.ae ]
  %.0274.be = phi ptr [ %.0274, %bb.b ], [ %.0274, %bb.d ], [ %.0274, %bb.e ], [ %.0274, %bb.f ], [ %.0274, %bb.g ], [ %.0274, %bb.h ], [ %i.y, %bb.i ], [ %.0274, %bb.j ], [ %.0274, %bb.k ], [ %.0274, %bb.l ], [ %.0274, %bb.ao ], [ %.0274, %bb.an ], [ %.0274, %bb.m ], [ %.0274, %bb.n ], [ %.0274, %bb.al ], [ %.0274, %bb.ah ], [ %.0274, %bb.o ], [ %.0274, %bb.p ], [ %.0274, %bb.q ], [ %.0274, %bb.r ], [ %.0274, %bb.s ], [ %.0274, %bb.t ], [ %.0274, %bb.u ], [ %.0274, %bb.v ], [ %.0274, %bb.w ], [ %.0274, %bb.x ], [ %.0274, %bb.y ], [ %.0274, %bb.z ], [ %.0274, %bb.aa ], [ %.0274, %bb.ab ], [ %.0274, %bb.ac ], [ %.0274, %bb.ad ], [ %.0274, %bb.ae ]
  %.0272.be = phi ptr [ %.0272, %bb.b ], [ %.0272, %bb.d ], [ %.0272, %bb.e ], [ %.0272, %bb.f ], [ %.0272, %bb.g ], [ %.0272, %bb.h ], [ %.0272, %bb.i ], [ %.0272, %bb.j ], [ %.0272, %bb.k ], [ %.0272, %bb.l ], [ %.0272, %bb.ao ], [ %.0272, %bb.an ], [ %.0272, %bb.m ], [ %.0272, %bb.n ], [ %.0272, %bb.al ], [ %.0272, %bb.ah ], [ %.0272, %bb.o ], [ %.0272, %bb.p ], [ %.0272, %bb.q ], [ %.0272, %bb.r ], [ %.0272, %bb.s ], [ %.0272, %bb.t ], [ %.0272, %bb.u ], [ %.0272, %bb.v ], [ %.0272, %bb.w ], [ %.0272, %bb.x ], [ %.0272, %bb.y ], [ %.0272, %bb.z ], [ %.0272, %bb.aa ], [ %.0272, %bb.ab ], [ %i.ak, %bb.ac ], [ %.0272, %bb.ad ], [ %.0272, %bb.ae ]
  %.0270.be = phi ptr [ %.0270, %bb.b ], [ %.0270, %bb.d ], [ %.0270, %bb.e ], [ %.0270, %bb.f ], [ %.0270, %bb.g ], [ %.0270, %bb.h ], [ %.0270, %bb.i ], [ %.0270, %bb.j ], [ %.0270, %bb.k ], [ %.0270, %bb.l ], [ %i.bg, %bb.ao ], [ %.0270, %bb.an ], [ %.0270, %bb.m ], [ %.0270, %bb.n ], [ %.0270, %bb.al ], [ %.0270, %bb.ah ], [ %.0270, %bb.o ], [ %.0270, %bb.p ], [ %.0270, %bb.q ], [ %.0270, %bb.r ], [ %.0270, %bb.s ], [ %.0270, %bb.t ], [ %.0270, %bb.u ], [ %.0270, %bb.v ], [ %.0270, %bb.w ], [ %.0270, %bb.x ], [ %.0270, %bb.y ], [ %.0270, %bb.z ], [ %.0270, %bb.aa ], [ %.0270, %bb.ab ], [ %.0270, %bb.ac ], [ %.0270, %bb.ad ], [ %.0270, %bb.ae ]
  %.0268.be = phi ptr [ %.0268, %bb.b ], [ %.0268, %bb.d ], [ %.0268, %bb.e ], [ %.0268, %bb.f ], [ %.0268, %bb.g ], [ %.0268, %bb.h ], [ %.0268, %bb.i ], [ %.0268, %bb.j ], [ %.0268, %bb.k ], [ %.0268, %bb.l ], [ %.0268, %bb.ao ], [ %.0268, %bb.an ], [ %.0268, %bb.m ], [ %.0268, %bb.n ], [ %.0268, %bb.al ], [ %.0268, %bb.ah ], [ %.0268, %bb.o ], [ %.0268, %bb.p ], [ %.0268, %bb.q ], [ %.0268, %bb.r ], [ %.0268, %bb.s ], [ %.0268, %bb.t ], [ %.0268, %bb.u ], [ %.0268, %bb.v ], [ %.0268, %bb.w ], [ %.0268, %bb.x ], [ %.0268, %bb.y ], [ %.0268, %bb.z ], [ %.0268, %bb.aa ], [ %i.aj, %bb.ab ], [ %.0268, %bb.ac ], [ %.0268, %bb.ad ], [ %.0268, %bb.ae ]
  %.0266.be = phi i32 [ %.0266, %bb.b ], [ %.0266, %bb.d ], [ %.0266, %bb.e ], [ %.0266, %bb.f ], [ %.0266, %bb.g ], [ %.0266, %bb.h ], [ %.0266, %bb.i ], [ %.0266, %bb.j ], [ %.0266, %bb.k ], [ %.0266, %bb.l ], [ %.0266, %bb.ao ], [ %.0266, %bb.an ], [ %.0266, %bb.m ], [ %.0266, %bb.n ], [ %.0266, %bb.al ], [ %.0266, %bb.ah ], [ %.0266, %bb.o ], [ %.0266, %bb.p ], [ %.0266, %bb.q ], [ %.0266, %bb.r ], [ %.0266, %bb.s ], [ %.0266, %bb.t ], [ %.0266, %bb.u ], [ %.0266, %bb.v ], [ %.0266, %bb.w ], [ %.0266, %bb.x ], [ %.0266, %bb.y ], [ %.0266, %bb.z ], [ %.0266, %bb.aa ], [ %.0266, %bb.ab ], [ %.0266, %bb.ac ], [ %i.an, %bb.ad ], [ %.0266, %bb.ae ]
  %.0261.be = phi ptr [ %.0261, %bb.b ], [ %.0261, %bb.d ], [ %.0261, %bb.e ], [ %.0261, %bb.f ], [ %.0261, %bb.g ], [ %.0261, %bb.h ], [ %.0261, %bb.i ], [ %.0261, %bb.j ], [ %.0261, %bb.k ], [ %.0261, %bb.l ], [ %.0261, %bb.ao ], [ %.0261, %bb.an ], [ %.0261, %bb.m ], [ %.0261, %bb.n ], [ %.0261, %bb.al ], [ %.1262, %bb.ah ], [ %.0261, %bb.o ], [ %.0261, %bb.p ], [ %.0261, %bb.q ], [ %.0261, %bb.r ], [ %.0261, %bb.s ], [ %.0261, %bb.t ], [ %.0261, %bb.u ], [ %.0261, %bb.v ], [ %.0261, %bb.w ], [ %.0261, %bb.x ], [ %.0261, %bb.y ], [ %.0261, %bb.z ], [ %.0261, %bb.aa ], [ %.0261, %bb.ab ], [ %.0261, %bb.ac ], [ %.0261, %bb.ad ], [ %.0261, %bb.ae ]
  %.0256.be = phi ptr [ %.0256, %bb.b ], [ %.0256, %bb.d ], [ %.0256, %bb.e ], [ %.0256, %bb.f ], [ %.0256, %bb.g ], [ %.0256, %bb.h ], [ %.0256, %bb.i ], [ %.0256, %bb.j ], [ %.0256, %bb.k ], [ %.0256, %bb.l ], [ %.0256, %bb.ao ], [ %.0256, %bb.an ], [ %.0256, %bb.m ], [ %.0256, %bb.n ], [ %.1257, %bb.al ], [ %.0256, %bb.ah ], [ %.0256, %bb.o ], [ %.0256, %bb.p ], [ %.0256, %bb.q ], [ %.0256, %bb.r ], [ %.0256, %bb.s ], [ %.0256, %bb.t ], [ %.0256, %bb.u ], [ %.0256, %bb.v ], [ %.0256, %bb.w ], [ %.0256, %bb.x ], [ %.0256, %bb.y ], [ %.0256, %bb.z ], [ %.0256, %bb.aa ], [ %.0256, %bb.ab ], [ %.0256, %bb.ac ], [ %.0256, %bb.ad ], [ %.0256, %bb.ae ]
  %.0252.be = phi i32 [ %.0252, %bb.b ], [ %.0252, %bb.d ], [ %.0252, %bb.e ], [ %.0252, %bb.f ], [ %.0252, %bb.g ], [ %.0252, %bb.h ], [ %.0252, %bb.i ], [ %.0252, %bb.j ], [ %.0252, %bb.k ], [ %.0252, %bb.l ], [ %.0252, %bb.ao ], [ 1, %bb.an ], [ %.0252, %bb.m ], [ %.0252, %bb.n ], [ %.0252, %bb.al ], [ %.0252, %bb.ah ], [ %.0252, %bb.o ], [ %.0252, %bb.p ], [ %.0252, %bb.q ], [ %.0252, %bb.r ], [ %.0252, %bb.s ], [ %.0252, %bb.t ], [ %.0252, %bb.u ], [ %.0252, %bb.v ], [ %.0252, %bb.w ], [ %.0252, %bb.x ], [ %.0252, %bb.y ], [ %.0252, %bb.z ], [ %.0252, %bb.aa ], [ %.0252, %bb.ab ], [ %.0252, %bb.ac ], [ %.0252, %bb.ad ], [ %.0252, %bb.ae ]
  br label %bb.b, !llvm.loop !17

.loopexit476.sink.split:                          ; preds = %bb.bd, %.thread, %bb.av, %bb.au, %bb.at, %bb.as
  %.str.92.sink = phi ptr [ @.str.91, %.thread ], [ @.str.85, %bb.av ], [ @.str.84, %bb.au ], [ @.str.83, %bb.at ], [ @.str.82, %bb.as ], [ @.str.92, %bb.bd ]
  %.0305.ph = phi ptr [ %i.br, %.thread ], [ null, %bb.av ], [ null, %bb.au ], [ null, %bb.at ], [ null, %bb.as ], [ %i.br, %bb.bd ]
  %i.p = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.q = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.p, ptr noundef nonnull %.str.92.sink, ptr noundef %i.n) #10 ; 0 uses
  br label %.loopexit476

.loopexit476:                                     ; preds = %bb.b, %bb.l, %bb.k, %.loopexit476.sink.split, %bb.ap
  %.0305 = phi ptr [ null, %bb.ap ], [ %.0305.ph, %.loopexit476.sink.split ], [ null, %bb.k ], [ null, %bb.l ], [ null, %bb.b ]
  %i.r = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.s = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.r, ptr noundef nonnull @.str.80, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.c:                                             ; preds = %bb.b
  call void @opt_help(ptr noundef nonnull @pkeyutl_options) #10
  br label %bb.ef

bb.d:                                             ; preds = %bb.b
  %i.t = call ptr @opt_arg() #10
  br label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.u = call ptr @opt_arg() #10
  br label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.v = call ptr @opt_arg() #10
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.w = call ptr @opt_arg() #10
  br label %.backedge

bb.h:                                             ; preds = %bb.b
  %i.x = call ptr @opt_arg() #10
  br label %.backedge

bb.i:                                             ; preds = %bb.b
  %i.y = call ptr @opt_arg() #10
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  %i.z = call ptr @opt_arg() #10
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  %i.aa = call ptr @opt_arg() #10
  %i.ab = call i32 @opt_format(ptr noundef %i.aa, i64 noundef 4030, ptr noundef nonnull %i.g) #10
  %.not373 = icmp eq i32 %i.ab, 0
  br i1 %.not373, label %.loopexit476, label %.backedge

bb.l:                                             ; preds = %bb.b
  %i.ac = call ptr @opt_arg() #10
  %i.ad = call i32 @opt_format(ptr noundef %i.ac, i64 noundef 4030, ptr noundef nonnull %i.f) #10
  %.not372 = icmp eq i32 %i.ad, 0
  br i1 %.not372, label %.loopexit476, label %.backedge

bb.m:                                             ; preds = %bb.b, %bb.b
  %i.ae = call i32 @opt_rand(i32 noundef %i.o) #10
  %.not371 = icmp eq i32 %i.ae, 0
  br i1 %.not371, label %.thread423, label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.af = call ptr @opt_arg() #10
  %i.ag = call ptr @app_load_config_modules(ptr noundef %i.af) #10 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %.thread423, label %.backedge

bb.o:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.ai = call i32 @opt_provider(i32 noundef %i.o) #10
  %.not370 = icmp eq i32 %i.ai, 0
  br i1 %.not370, label %.thread423, label %.backedge

bb.p:                                             ; preds = %bb.b
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  br label %.backedge

bb.t:                                             ; preds = %bb.b
  br label %.backedge

bb.u:                                             ; preds = %bb.b
  br label %.backedge

bb.v:                                             ; preds = %bb.b
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  br label %.backedge

bb.x:                                             ; preds = %bb.b
  br label %.backedge

bb.y:                                             ; preds = %bb.b
  br label %.backedge

bb.z:                                             ; preds = %bb.b
  br label %.backedge

bb.aa:                                            ; preds = %bb.b
  br label %.backedge

bb.ab:                                            ; preds = %bb.b
  %i.aj = call ptr @opt_arg() #10
  br label %.backedge

bb.ac:                                            ; preds = %bb.b
  %i.ak = call ptr @opt_arg() #10
  br label %.backedge

bb.ad:                                            ; preds = %bb.b
  %i.al = call ptr @opt_arg() #10
  %i.am = call i64 @strtol(ptr noundef nonnull captures(none) %i.al, ptr noundef null, i32 noundef 10) #10, !inline_history !18
  %i.an = trunc i64 %i.am to i32
  br label %.backedge

bb.ae:                                            ; preds = %bb.b
  br label %.backedge

bb.af:                                            ; preds = %bb.b
  %i.ao = icmp eq ptr %.0261, null
  br i1 %i.ao, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ap = call ptr @OPENSSL_sk_new_null() #10
  %i.aq = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.ap, ptr noundef nonnull @sk_OPENSSL_STRING_freefunc_thunk) #10 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %.1262 = phi ptr [ %i.aq, %bb.ag ], [ %.0261, %bb.af ] ; 3 uses
  %i.as = call ptr @opt_arg() #10
  %i.at = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.1262, ptr noundef %i.as) #10
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.ai, label %.backedge

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.2263 = phi ptr [ null, %bb.ag ], [ %.1262, %bb.ah ]
  %i.av = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.aw = call i32 @BIO_puts(ptr noundef %i.av, ptr noundef nonnull @.str.81) #10 ; 0 uses
  br label %.thread423

bb.aj:                                            ; preds = %bb.b
  %i.ax = icmp eq ptr %.0256, null
  br i1 %i.ax, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.ay = call ptr @OPENSSL_sk_new_null() #10
  %i.az = call ptr @OPENSSL_sk_set_thunks(ptr noundef %i.ay, ptr noundef nonnull @sk_OPENSSL_STRING_freefunc_thunk) #10 ; 2 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.1257 = phi ptr [ %i.az, %bb.ak ], [ %.0256, %bb.aj ] ; 3 uses
  %i.bb = call ptr @opt_arg() #10
  %i.bc = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.1257, ptr noundef %i.bb) #10
  %i.bd = icmp eq i32 %i.bc, 0
  br i1 %i.bd, label %bb.am, label %.backedge

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.2258 = phi ptr [ null, %bb.ak ], [ %.1257, %bb.al ]
  %i.be = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.bf = call i32 @BIO_puts(ptr noundef %i.be, ptr noundef nonnull @.str.81) #10 ; 0 uses
  br label %.thread423

bb.an:                                            ; preds = %bb.b
  br label %.backedge

bb.ao:                                            ; preds = %bb.b
  %i.bg = call ptr @opt_arg() #10
  br label %.backedge

bb.ap:                                            ; preds = %bb.b
  %i.bh = call i32 @opt_check_rest_arg(ptr noundef null) #10
  %.not346 = icmp eq i32 %i.bh, 0
  br i1 %.not346, label %.loopexit476, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bi = call i32 @app_RAND_load() #10
  %.not347 = icmp eq i32 %i.bi, 0
  br i1 %.not347, label %.thread423, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bj = icmp ne ptr %.0270, null                ; 3 uses
  %.not348 = icmp eq ptr %.0272, null
  br i1 %.not348, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.bk = icmp eq i32 %.0266, 0
  br i1 %i.bk, label %.loopexit476.sink.split, label %.split

bb.at:                                            ; preds = %bb.ar
  %i.bl = icmp eq ptr %.0276, null
  br i1 %i.bl, label %.loopexit476.sink.split, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.bm = icmp ne ptr %.0274, null
  %i.bn = icmp ne i32 %.0284, 2048
  %or.cond = and i1 %i.bm, %i.bn
  br i1 %or.cond, label %.loopexit476.sink.split, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.bo = icmp eq ptr %.0274, null
  %i.bp = icmp eq i32 %.0284, 2048
  %or.cond6 = and i1 %i.bo, %i.bp
  br i1 %or.cond6, label %.loopexit476.sink.split, label %.split

.split:                                           ; preds = %bb.av, %bb.as
  %.sink = phi ptr [ %.0272, %bb.as ], [ null, %bb.av ]
  %i.bq = load i32, ptr %i.f, align 4, !tbaa !14
  %i.br = call fastcc ptr @get_pkey(ptr noundef %.sink, ptr noundef %.0276, i32 noundef %i.bq, i32 noundef %.0282, ptr noundef %.0295, i32 noundef %.0284) ; 35 uses
  %i.bs = icmp ne i32 %.0282, 0
  %i.bt = icmp eq ptr %i.br, null
  %or.cond8 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond8, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %.split
  %i.bu = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.bv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bu, ptr noundef nonnull @.str.86, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.ax:                                            ; preds = %.split
  %i.bw = icmp eq i32 %.0284, 64
  br i1 %i.bw, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.bx = call i32 @EVP_PKEY_is_a(ptr noundef %i.br, ptr noundef nonnull @.str.87) #10
  %.not349 = icmp eq i32 %i.bx, 0
  br i1 %.not349, label %bb.az, label %.thread

bb.az:                                            ; preds = %bb.ay
  %i.by = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.bz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.by, ptr noundef nonnull @.str.88, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.ba:                                            ; preds = %bb.ax
  %i.ca = icmp eq i32 %.0284, 16
  %i.cb = icmp eq i32 %.0284, 32                  ; 4 uses
  %or.cond10 = or i1 %i.ca, %i.cb                 ; 3 uses
  switch i32 %.0284, label %.thread [
    i32 32, label %bb.bb
    i32 16, label %bb.bb
  ]

bb.bb:                                            ; preds = %bb.ba, %bb.ba
  %i.cc = call fastcc i32 @only_nomd(ptr noundef %i.br) ; 2 uses
  %.not350 = icmp ne i32 %i.cc, 0
  %brmerge.not = select i1 %.not350, i1 %i.bj, i1 false
  br i1 %brmerge.not, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.cd = call ptr @EVP_PKEY_get0_type_name(ptr noundef %i.br) #10 ; 2 uses
  %i.ce = load ptr, ptr @bio_err, align 8, !tbaa !16
  %.not369 = icmp eq ptr %i.cd, null
  %i.cf = select i1 %.not369, ptr @.str.90, ptr %i.cd
  %i.cg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ce, ptr noundef nonnull @.str.89, ptr noundef %i.n, ptr noundef nonnull %i.cf) #10 ; 0 uses
  br label %.thread423

.thread:                                          ; preds = %bb.ay, %bb.ba
  %or.cond10380 = phi i1 [ %or.cond10, %bb.ba ], [ false, %bb.ay ]
  %i.ch = phi i1 [ %i.cb, %bb.ba ], [ false, %bb.ay ]
  %i.ci = icmp ne i32 %.0252, 0
  %or.cond12 = or i1 %i.bj, %i.ci
  br i1 %or.cond12, label %.loopexit476.sink.split, label %.split318

bb.bd:                                            ; preds = %bb.bb
  %3 = or i32 %.0252, %i.cc
  %i.cj = icmp ne i32 %3, 0
  %i.ck = select i1 %i.cj, i1 true, i1 %i.bj      ; 2 uses
  %i.cl = icmp ne i8 %.0289, 0
  %or.cond15 = and i1 %i.ck, %i.cl
  br i1 %or.cond15, label %.loopexit476.sink.split, label %bb.be

bb.be:                                            ; preds = %bb.bd
  br i1 %i.ck, label %bb.bf, label %.split318

.split318:                                        ; preds = %.thread, %bb.be
  %or.cond10379385389 = phi i1 [ %or.cond10, %bb.be ], [ %or.cond10380, %.thread ]
  %i.cm = phi i1 [ %i.cb, %bb.be ], [ %i.ch, %.thread ]
  %i.cn = call ptr @app_get0_propq() #10
  %i.co = call fastcc ptr @init_ctx(ptr noundef %.0272, ptr noundef %i.h, i32 noundef %.0284, i32 noundef 0, ptr noundef %i.br, ptr noundef null, ptr noundef %.0270, ptr noundef %.0268, ptr noundef %i.m, ptr noundef %i.cn)
  br label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.cp = call ptr @EVP_MD_CTX_new() #10          ; 3 uses
  %i.cq = icmp eq ptr %i.cp, null
  br i1 %i.cq, label %bb.bg, label %.split319

.split319:                                        ; preds = %bb.bf
  %i.cr = call ptr @app_get0_propq() #10
  %i.cs = call fastcc ptr @init_ctx(ptr noundef %.0272, ptr noundef %i.h, i32 noundef %.0284, i32 noundef 1, ptr noundef %i.br, ptr noundef nonnull %i.cp, ptr noundef %.0270, ptr noundef %.0268, ptr noundef %i.m, ptr noundef %i.cr)
  br label %bb.bh

bb.bg:                                            ; preds = %bb.bf
  %i.ct = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.cu = call i32 @BIO_puts(ptr noundef %i.ct, ptr noundef nonnull @.str.93) #10 ; 0 uses
  br label %.thread423

bb.bh:                                            ; preds = %.split319, %.split318
  %or.cond10379385388 = phi i1 [ %or.cond10379385389, %.split318 ], [ %or.cond10, %.split319 ]
  %i.cv = phi i1 [ %i.cm, %.split318 ], [ %i.cb, %.split319 ] ; 3 uses
  %i.cw = phi i1 [ false, %.split318 ], [ true, %.split319 ] ; 2 uses
  %phi.call320 = phi ptr [ %i.co, %.split318 ], [ %i.cs, %.split319 ] ; 28 uses
  %.0250 = phi ptr [ null, %.split318 ], [ %i.cp, %.split319 ] ; 24 uses
  %i.cx = icmp eq ptr %phi.call320, null
  br i1 %i.cx, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.cy = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.cz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cy, ptr noundef nonnull @.str.94, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.bj:                                            ; preds = %bb.bh
  %.not351 = icmp eq ptr %.0274, null
  br i1 %.not351, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.da = load i32, ptr %i.g, align 4, !tbaa !14
  %i.db = call fastcc i32 @setup_peer(ptr noundef %phi.call320, i32 noundef %i.da, ptr noundef %.0274)
  %.not352 = icmp eq i32 %i.db, 0
  br i1 %.not352, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.dc = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.dd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dc, ptr noundef nonnull @.str.95, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.bm:                                            ; preds = %bb.bk, %bb.bj
  %.not353 = icmp eq ptr %.0261, null
  br i1 %.not353, label %.thread392, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.de = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.0261) #10 ; 2 uses
  %i.df = icmp sgt i32 %i.de, 0
  br i1 %i.df, label %.lr.ph, label %.thread392

bb.bo:                                            ; preds = %.lr.ph
  %i.dg = add nuw nsw i32 %.0244597, 1            ; 2 uses
  %exitcond.not = icmp eq i32 %i.dg, %i.de
  br i1 %exitcond.not, label %.thread392, label %.lr.ph, !llvm.loop !19

.lr.ph:                                           ; preds = %bb.bn, %bb.bo
  %.0244597 = phi i32 [ %i.dg, %bb.bo ], [ 0, %bb.bn ] ; 2 uses
  %i.dh = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.0261, i32 noundef %.0244597) #10 ; 2 uses
  %i.di = call i32 @pkey_ctrl_string(ptr noundef %phi.call320, ptr noundef %i.dh) #10
  %i.dj = icmp sgt i32 %i.di, 0
  br i1 %i.dj, label %bb.bo, label %bb.bp

bb.bp:                                            ; preds = %.lr.ph
  %i.dk = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.dl = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dk, ptr noundef nonnull @.str.96, ptr noundef %i.n, ptr noundef %i.dh) #10 ; 0 uses
  br label %.thread423

.thread392:                                       ; preds = %bb.bo, %bb.bn, %bb.bm
  %.not354 = icmp eq ptr %.0256, null
  br i1 %.not354, label %.thread401, label %bb.bq

bb.bq:                                            ; preds = %.thread392
  %i.dm = call i32 @OPENSSL_sk_num(ptr noundef nonnull %.0256) #10 ; 2 uses
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph599, label %.thread401

.lr.ph599:                                        ; preds = %bb.bq, %bb.cc
  %.0243598 = phi i32 [ %i.eo, %bb.cc ], [ 0, %bb.bq ] ; 2 uses
  %i.do = call ptr @OPENSSL_sk_value(ptr noundef nonnull %.0256, i32 noundef %.0243598) #10 ; 5 uses
  %i.dp = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.do, i32 noundef 58) #11 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #10
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.lr.ph599
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #10
  %i.dr = call i32 (ptr, i64, ptr, ...) @BIO_snprintf(ptr noundef nonnull %i.l, i64 noundef 4096, ptr noundef nonnull @.str.97, ptr noundef nonnull %i.do) #10 ; 0 uses
  %i.ds = call i32 @EVP_read_pw_string(ptr noundef nonnull %i.l, i32 noundef 4095, ptr noundef nonnull %i.l, i32 noundef 0) #10 ; 2 uses
  %i.dt = icmp slt i32 %i.ds, 0
  br i1 %i.dt, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.du = icmp eq i32 %i.ds, -2
  %i.dv = load ptr, ptr @bio_err, align 8, !tbaa !16 ; 2 uses
  br i1 %i.du, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.dw = call i32 @BIO_puts(ptr noundef %i.dv, ptr noundef nonnull @.str.98) #10 ; 0 uses
  br label %.thread394

bb.bu:                                            ; preds = %bb.bs
  %i.dx = call i32 @BIO_puts(ptr noundef %i.dv, ptr noundef nonnull @.str.99) #10 ; 0 uses
  br label %.thread394

bb.bv:                                            ; preds = %bb.br
  %i.dy = call ptr @CRYPTO_strdup(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.100, i32 noundef 412) #10 ; 3 uses
  store ptr %i.dy, ptr %i.k, align 8, !tbaa !11
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.ea = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.eb = call i32 @BIO_puts(ptr noundef %i.ea, ptr noundef nonnull @.str.81) #10 ; 0 uses
  br label %.thread394

.thread394:                                       ; preds = %bb.bt, %bb.bw, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #10
  br label %bb.ca

bb.by:                                            ; preds = %.lr.ph599
  store i8 0, ptr %i.dp, align 1, !tbaa !23
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 1
  %i.ed = call i32 @app_passwd(ptr noundef nonnull %i.ec, ptr noundef null, ptr noundef nonnull %i.k, ptr noundef null) #10
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bz, label %._crit_edge

._crit_edge:                                      ; preds = %bb.by
  %.pre = load ptr, ptr %i.k, align 8, !tbaa !11
  br label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.ef = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.eg = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ef, ptr noundef nonnull @.str.101, ptr noundef nonnull %i.do) #10 ; 0 uses
  br label %bb.cd

bb.ca:                                            ; preds = %._crit_edge, %bb.bx
  %i.eh = phi ptr [ %.pre, %._crit_edge ], [ %i.dy, %bb.bx ]
  %i.ei = call i32 @EVP_PKEY_CTX_ctrl_str(ptr noundef %phi.call320, ptr noundef nonnull %i.do, ptr noundef %i.eh) #10
  %i.ej = icmp slt i32 %i.ei, 1
  br i1 %i.ej, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  %i.ek = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.el = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ek, ptr noundef nonnull @.str.96, ptr noundef %i.n, ptr noundef nonnull %i.do) #10 ; 0 uses
  %i.em = load ptr, ptr %i.k, align 8, !tbaa !11
  call void @CRYPTO_free(ptr noundef %i.em, ptr noundef nonnull @.str.100, i32 noundef 433) #10
  br label %bb.cd

bb.cc:                                            ; preds = %bb.ca
  %i.en = load ptr, ptr %i.k, align 8, !tbaa !11
  call void @CRYPTO_free(ptr noundef %i.en, ptr noundef nonnull @.str.100, i32 noundef 436) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  %i.eo = add nuw nsw i32 %.0243598, 1            ; 2 uses
  %exitcond720.not = icmp eq i32 %i.eo, %i.dm
  br i1 %exitcond720.not, label %.thread401, label %.lr.ph599, !llvm.loop !20

bb.cd:                                            ; preds = %bb.cb, %.thread394, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #10
  br label %.thread423

.thread401:                                       ; preds = %bb.cc, %bb.bq, %.thread392
  %i.ep = icmp ne ptr %.0297, null                ; 2 uses
  %i.eq = icmp ne i32 %.0284, 32
  %or.cond17 = and i1 %i.ep, %i.eq
  br i1 %or.cond17, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.thread401
  %i.er = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.es = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.er, ptr noundef nonnull @.str.102, ptr noundef %i.n) #10 ; 0 uses
  br label %.thread423

bb.cf:                                            ; preds = %.thread401
  %i.et = icmp eq ptr %.0297, null
  %or.cond19 = and i1 %i.et, %i.cv
  br i1 %or.cond19, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.eu = load ptr, ptr @bio_err, align 8, !tbaa !16
  %i.ev = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eu, ptr noundef nonnull @.str.103, ptr noundef %i.n) #10 ; 0 uses
end_hunk_0
