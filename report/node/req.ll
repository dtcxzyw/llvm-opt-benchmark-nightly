inline.NumInlined: 52
inline.NumDeleted: 18
begin_hunk_0
@.str.123 = private unnamed_addr constant [29 x i8] c"Can't find keygen engine %s\0A\00", align 1
@section = internal unnamed_addr global ptr @.str.209, align 8
@batch = internal unnamed_addr global i1 false, align 4
@.str.124 = private unnamed_addr constant [39 x i8] c"%s: -days parameter arg must be >= -1\0A\00", align 1
@.str.125 = private unnamed_addr constant [30 x i8] c"Serial number supplied twice\0A\00", align 1
@.str.126 = private unnamed_addr constant [37 x i8] c"Invalid extension copy option: \22%s\22\0A\00", align 1
@.str.127 = private unnamed_addr constant [36 x i8] c"Internal error handling -addext %s\0A\00", align 1
@.str.128 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.129 = private unnamed_addr constant [20 x i8] c"Unknown cipher: %s\0A\00", align 1
@.str.130 = private unnamed_addr constant [69 x i8] c"Warning: Ignoring -days without -x509; not generating a certificate\0A\00", align 1
@.str.131 = private unnamed_addr constant [75 x i8] c"Warning: Ignoring -not_before without -x509; not generating a certificate\0A\00", align 1
@.str.132 = private unnamed_addr constant [74 x i8] c"Warning: Ignoring -not_after without -x509; not generating a certificate\0A\00", align 1
@.str.133 = private unnamed_addr constant [67 x i8] c"Warning: Ignoring -copy_extensions 'none' when -x509 is not given\0A\00", align 1
@.str.134 = private unnamed_addr constant [73 x i8] c"Warning: Will read cert request from stdin since no -in option is given\0A\00", align 1
@.str.135 = private unnamed_addr constant [25 x i8] c"Error getting passwords\0A\00", align 1
@req_conf = internal unnamed_addr global ptr null, align 8
@.str.136 = private unnamed_addr constant [53 x i8] c"Using additional configuration from -addext options\0A\00", align 1
@addext_conf = internal unnamed_addr global ptr null, align 8
@.str.137 = private unnamed_addr constant [9 x i8] c"oid_file\00", align 1
@.str.138 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.139 = private unnamed_addr constant [38 x i8] c"Problems opening '%s' for extra OIDs\0A\00", align 1
@.str.140 = private unnamed_addr constant [11 x i8] c"default_md\00", align 1
@.str.141 = private unnamed_addr constant [16 x i8] c"x509_extensions\00", align 1
@.str.142 = private unnamed_addr constant [15 x i8] c"req_extensions\00", align 1
@.str.143 = private unnamed_addr constant [40 x i8] c"Error checking %s extension section %s\0A\00", align 1
@.str.144 = private unnamed_addr constant [8 x i8] c"request\00", align 1
@.str.145 = private unnamed_addr constant [8 x i8] c"default\00", align 1
@.str.146 = private unnamed_addr constant [49 x i8] c"Error checking extensions defined using -addext\0A\00", align 1
@.str.147 = private unnamed_addr constant [15 x i8] c"input_password\00", align 1
@.str.148 = private unnamed_addr constant [16 x i8] c"output_password\00", align 1
@.str.149 = private unnamed_addr constant [12 x i8] c"string_mask\00", align 1
@.str.150 = private unnamed_addr constant [39 x i8] c"Invalid global string mask setting %s\0A\00", align 1
@.str.151 = private unnamed_addr constant [4 x i8] c"yes\00", align 1
@.str.152 = private unnamed_addr constant [12 x i8] c"private key\00", align 1
@.str.153 = private unnamed_addr constant [74 x i8] c"Warning: Not generating key via given -newkey option since -key is given\0A\00", align 1
@.str.154 = private unnamed_addr constant [13 x i8] c"default_bits\00", align 1
@.str.155 = private unnamed_addr constant [4 x i8] c"RSA\00", align 1
@.str.156 = private unnamed_addr constant [8 x i8] c"RSA-PSS\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"DSA\00", align 1
@.str.158 = private unnamed_addr constant [70 x i8] c"Private key length too short, needs to be at least %d bits, not %ld.\0A\00", align 1
@.str.159 = private unnamed_addr constant [145 x i8] c"Warning: It is not recommended to use more than %d bit for RSA keys.\0A         Your key size is %ld! Larger key size may behave not as expected.\0A\00", align 1
@.str.160 = private unnamed_addr constant [145 x i8] c"Warning: It is not recommended to use more than %d bit for DSA keys.\0A         Your key size is %ld! Larger key size may behave not as expected.\0A\00", align 1
@.str.161 = private unnamed_addr constant [26 x i8] c"Key parameter error \22%s\22\0A\00", align 1
@.str.162 = private unnamed_addr constant [16 x i8] c"default_keyfile\00", align 1
@.str.163 = private unnamed_addr constant [24 x i8] c"Writing private key to \00", align 1
@.str.164 = private unnamed_addr constant [8 x i8] c"stdout\0A\00", align 1
@.str.165 = private unnamed_addr constant [6 x i8] c"'%s'\0A\00", align 1
@.str.166 = private unnamed_addr constant [16 x i8] c"encrypt_rsa_key\00", align 1
@.str.167 = private unnamed_addr constant [12 x i8] c"encrypt_key\00", align 1
@.str.169 = private unnamed_addr constant [7 x i8] c"-----\0A\00", align 1
@.str.170 = private unnamed_addr constant [68 x i8] c"Warning: Not placing -key in cert or request since request is used\0A\00", align 1
@.str.171 = private unnamed_addr constant [13 x i8] c"X509 request\00", align 1
@.str.172 = private unnamed_addr constant [73 x i8] c"Warning: Ignoring -in option since -new or -newkey or -precert is given\0A\00", align 1
@.str.173 = private unnamed_addr constant [62 x i8] c"Warning: Ignoring -CAkey option since no -CA option is given\0A\00", align 1
@.str.174 = private unnamed_addr constant [35 x i8] c"issuer private key from -CAkey arg\00", align 1
@.str.175 = private unnamed_addr constant [32 x i8] c"issuer private key from -CA arg\00", align 1
@.str.176 = private unnamed_addr constant [25 x i8] c"issuer cert from -CA arg\00", align 1
@.str.177 = private unnamed_addr constant [44 x i8] c"Issuer CA certificate and key do not match\0A\00", align 1
@.str.178 = private unnamed_addr constant [65 x i8] c"Must provide a signature key using -key or provide -CA / -CAkey\0A\00", align 1
@.str.179 = private unnamed_addr constant [34 x i8] c"Error making certificate request\0A\00", align 1
@.str.180 = private unnamed_addr constant [74 x i8] c"Warning: Not using -key or -newkey for signing since -CA option is given\0A\00", align 1
@.str.181 = private unnamed_addr constant [52 x i8] c"Warning: -not_after option overriding -days option\0A\00", align 1
@.str.182 = private unnamed_addr constant [76 x i8] c"Warning: No -copy_extensions given; ignoring any extensions in the request\0A\00", align 1
@.str.183 = private unnamed_addr constant [39 x i8] c"Error copying extensions from request\0A\00", align 1
@.str.184 = private unnamed_addr constant [60 x i8] c"Warning: Signature key and public key of cert do not match\0A\00", align 1
@.str.185 = private unnamed_addr constant [46 x i8] c"Error adding x509 extensions from section %s\0A\00", align 1
@.str.186 = private unnamed_addr constant [50 x i8] c"Error adding x509 extensions defined via -addext\0A\00", align 1
@.str.187 = private unnamed_addr constant [31 x i8] c"Error adding poison extension\0A\00", align 1
@.str.188 = private unnamed_addr constant [59 x i8] c"Warning: Ignoring -precert flag since no cert is produced\0A\00", align 1
@.str.189 = private unnamed_addr constant [49 x i8] c"Error adding request extensions from section %s\0A\00", align 1
@.str.190 = private unnamed_addr constant [53 x i8] c"Error adding request extensions defined via -addext\0A\00", align 1
@.str.191 = private unnamed_addr constant [42 x i8] c"Modifying subject of certificate request\0A\00", align 1
@.str.192 = private unnamed_addr constant [13 x i8] c"Old subject=\00", align 1
@.str.193 = private unnamed_addr constant [48 x i8] c"Error modifying subject of certificate request\0A\00", align 1
@.str.194 = private unnamed_addr constant [13 x i8] c"New subject=\00", align 1
@.str.195 = private unnamed_addr constant [51 x i8] c"Certificate request self-signature verify failure\0A\00", align 1
@bio_out = external local_unnamed_addr global ptr, align 8
@.str.196 = private unnamed_addr constant [46 x i8] c"Certificate request self-signature verify OK\0A\00", align 1
@.str.197 = private unnamed_addr constant [26 x i8] c"Error getting public key\0A\00", align 1
@.str.198 = private unnamed_addr constant [28 x i8] c"Error printing certificate\0A\00", align 1
@.str.199 = private unnamed_addr constant [36 x i8] c"Error printing certificate request\0A\00", align 1
@.str.200 = private unnamed_addr constant [9 x i8] c"subject=\00", align 1
@.str.201 = private unnamed_addr constant [24 x i8] c"Modulus is unavailable\0A\00", align 1
@.str.202 = private unnamed_addr constant [9 x i8] c"Modulus=\00", align 1
@.str.203 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.204 = private unnamed_addr constant [21 x i8] c"Wrong Algorithm type\00", align 1
@.str.205 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.206 = private unnamed_addr constant [37 x i8] c"Unable to write certificate request\0A\00", align 1
@.str.207 = private unnamed_addr constant [34 x i8] c"Unable to write X509 certificate\0A\00", align 1
@.str.208 = private unnamed_addr constant [38 x i8] c"../../deps/openssl/openssl/apps/req.c\00", align 1
@.str.209 = private unnamed_addr constant [4 x i8] c"req\00", align 1
@.str.210 = private unnamed_addr constant [37 x i8] c"Parse error on -addext: missing '='\0A\00", align 1
@.str.211 = private unnamed_addr constant [37 x i8] c"Parse error on -addext: missing key\0A\00", align 1
@.str.212 = private unnamed_addr constant [30 x i8] c"Duplicate extension name: %s\0A\00", align 1
@.str.213 = private unnamed_addr constant [7 x i8] c"prompt\00", align 1
@.str.214 = private unnamed_addr constant [19 x i8] c"distinguished_name\00", align 1
@.str.215 = private unnamed_addr constant [28 x i8] c"Unable to get '%s' section\0A\00", align 1
@.str.216 = private unnamed_addr constant [11 x i8] c"attributes\00", align 1
@.str.217 = private unnamed_addr constant [44 x i8] c"Error: No objects specified in config file\0A\00", align 1
@.str.218 = private unnamed_addr constant [74 x i8] c"You are about to be asked to enter information that will be incorporated\0A\00", align 1
@.str.219 = private unnamed_addr constant [32 x i8] c"into your certificate request.\0A\00", align 1
@.str.220 = private unnamed_addr constant [77 x i8] c"What you are about to enter is what is called a Distinguished Name or a DN.\0A\00", align 1
@.str.221 = private unnamed_addr constant [59 x i8] c"There are quite a few fields but you can leave some blank\0A\00", align 1
@.str.222 = private unnamed_addr constant [48 x i8] c"For some fields there will be a default value,\0A\00", align 1
@.str.223 = private unnamed_addr constant [49 x i8] c"If you enter '.', the field will be left blank.\0A\00", align 1
@.str.224 = private unnamed_addr constant [5 x i8] c"_min\00", align 1
@.str.225 = private unnamed_addr constant [5 x i8] c"_max\00", align 1
@.str.226 = private unnamed_addr constant [9 x i8] c"_default\00", align 1
@.str.227 = private unnamed_addr constant [7 x i8] c"_value\00", align 1
@.str.228 = private unnamed_addr constant [5 x i8] c"Name\00", align 1
@.str.229 = private unnamed_addr constant [48 x i8] c"\0APlease enter the following 'extra' attributes\0A\00", align 1
@.str.230 = private unnamed_addr constant [42 x i8] c"to be sent with your certificate request\0A\00", align 1
@.str.231 = private unnamed_addr constant [33 x i8] c"No template, please set one up.\0A\00", align 1
@.str.232 = private unnamed_addr constant [18 x i8] c"%s '%s' too long\0A\00", align 1
@.str.233 = private unnamed_addr constant [9 x i8] c"DN value\00", align 1
@.str.234 = private unnamed_addr constant [11 x i8] c"DN default\00", align 1
@.str.235 = private unnamed_addr constant [9 x i8] c"%s [%s]:\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.236 = private unnamed_addr constant [33 x i8] c"Missing newline at end of input\0A\00", align 1
@.str.237 = private unnamed_addr constant [50 x i8] c"String too short, must be at least %d bytes long\0A\00", align 1
@.str.238 = private unnamed_addr constant [48 x i8] c"String too long, must be at most %d bytes long\0A\00", align 1
@.str.239 = private unnamed_addr constant [16 x i8] c"Attribute value\00", align 1
@.str.240 = private unnamed_addr constant [18 x i8] c"Attribute default\00", align 1
@.str.241 = private unnamed_addr constant [24 x i8] c"Error adding attribute\0A\00", align 1
@.str.242 = private unnamed_addr constant [6 x i8] c"param\00", align 1
@.str.243 = private unnamed_addr constant [48 x i8] c"Parameter file requested but no path given: %s\0A\00", align 1
@.str.244 = private unnamed_addr constant [31 x i8] c"Cannot open parameter file %s\0A\00", align 1
@.str.245 = private unnamed_addr constant [33 x i8] c"Error reading parameter file %s\0A\00", align 1
@.str.246 = private unnamed_addr constant [30 x i8] c"Unable to determine key type\0A\00", align 1
@.str.247 = private unnamed_addr constant [15 x i8] c"Out of memory\0A\00", align 1
@.str.248 = private unnamed_addr constant [36 x i8] c"Key type does not match parameters\0A\00", align 1
@.str.249 = private unnamed_addr constant [33 x i8] c"Error allocating keygen context\0A\00", align 1
@.str.250 = private unnamed_addr constant [35 x i8] c"Error initializing keygen context\0A\00", align 1
@.str.251 = private unnamed_addr constant [5 x i8] c"bits\00", align 1
@.str.252 = private unnamed_addr constant [23 x i8] c"Error setting keysize\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @req_main(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  %i.d = alloca ptr, align 8                      ; 9 uses
  %i.e = alloca i32, align 4                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 8 uses
  %i.g = alloca i32, align 4                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 12 uses
  %i.i = alloca i64, align 8                      ; 5 uses
  %2 = alloca %struct.v3_ext_ctx, align 8         ; 6 uses
  %3 = alloca %struct.v3_ext_ctx, align 8         ; 6 uses
  %4 = alloca %struct.v3_ext_ctx, align 8         ; 9 uses
  %5 = alloca %struct.v3_ext_ctx, align 8         ; 7 uses
  %i.j = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i32 -1, ptr %i.a, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  store ptr null, ptr %i.b, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store ptr null, ptr %i.c, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  store ptr null, ptr %i.d, align 8, !tbaa !9
  %i.k = load ptr, ptr @default_config_file, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store i32 0, ptr %i.e, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #11
  store i32 32773, ptr %i.f, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #11
  store i32 0, ptr %i.g, align 4, !tbaa !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #11
  store i64 -1, ptr %i.h, align 8, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #11
  store i64 0, ptr %i.i, align 8, !tbaa !12
  %i.l = tail call ptr @EVP_aes_256_cbc() #11
  tail call void @opt_set_unknown_name(ptr noundef nonnull @.str.121) #11
  %i.m = tail call ptr @opt_init(i32 noundef %0, ptr noundef %1, ptr noundef nonnull @req_options) #11 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.0510 = phi ptr [ null, %bb.a ], [ %.0510.be, %.backedge ] ; 121 uses
  %.0506 = phi ptr [ null, %bb.a ], [ %.0506.be, %.backedge ] ; 98 uses
  %.0494 = phi ptr [ %i.l, %bb.a ], [ %.0494.be, %.backedge ] ; 53 uses
  %.0490 = phi ptr [ null, %bb.a ], [ %.0490.be, %.backedge ] ; 99 uses
  %.0487 = phi ptr [ null, %bb.a ], [ %.0487.be, %.backedge ] ; 51 uses
  %.0485 = phi ptr [ null, %bb.a ], [ %.0485.be, %.backedge ] ; 51 uses
  %.0483 = phi ptr [ null, %bb.a ], [ %.0483.be, %.backedge ] ; 53 uses
  %.0480 = phi ptr [ null, %bb.a ], [ %.0480.be, %.backedge ] ; 51 uses
  %.0478 = phi ptr [ null, %bb.a ], [ %.0478.be, %.backedge ] ; 52 uses
  %.0476 = phi ptr [ null, %bb.a ], [ %.0476.be, %.backedge ] ; 51 uses
  %.0473 = phi ptr [ null, %bb.a ], [ %.0473.be, %.backedge ] ; 52 uses
  %.0467 = phi ptr [ null, %bb.a ], [ %.0467.be, %.backedge ] ; 121 uses
  %.0465 = phi ptr [ null, %bb.a ], [ %.0465.be, %.backedge ] ; 50 uses
  %.0463 = phi ptr [ null, %bb.a ], [ %.0463.be, %.backedge ] ; 50 uses
  %.0457 = phi ptr [ null, %bb.a ], [ %.0457.be, %.backedge ] ; 51 uses
  %.0453 = phi ptr [ %i.k, %bb.a ], [ %.0453.be, %.backedge ] ; 51 uses
  %.0450 = phi ptr [ null, %bb.a ], [ %.0450.be, %.backedge ] ; 52 uses
  %.0448 = phi ptr [ null, %bb.a ], [ %.0448.be, %.backedge ] ; 51 uses
  %.0443 = phi ptr [ null, %bb.a ], [ %.0443.be, %.backedge ] ; 123 uses
  %.0441 = phi ptr [ null, %bb.a ], [ %.0441.be, %.backedge ] ; 51 uses
  %.0439 = phi ptr [ null, %bb.a ], [ %.0439.be, %.backedge ] ; 52 uses
  %.0436 = phi i32 [ -2, %bb.a ], [ %.0436.be, %.backedge ] ; 53 uses
  %.0431 = phi i32 [ 0, %bb.a ], [ %.0431.be, %.backedge ] ; 51 uses
  %.0424 = phi i32 [ 0, %bb.a ], [ %.0424.be, %.backedge ] ; 49 uses
  %.0422 = phi i32 [ 0, %bb.a ], [ %.0422.be, %.backedge ] ; 54 uses
  %.0420 = phi i32 [ 1, %bb.a ], [ %.0420.be, %.backedge ] ; 49 uses
  %.0418 = phi i32 [ 0, %bb.a ], [ %.0418.be, %.backedge ] ; 51 uses
  %.0414 = phi i32 [ 0, %bb.a ], [ %.0414.be, %.backedge ] ; 50 uses
  %.0412 = phi i32 [ 0, %bb.a ], [ %.0412.be, %.backedge ] ; 51 uses
  %.0410 = phi i32 [ 0, %bb.a ], [ %.0410.be, %.backedge ] ; 51 uses
  %.0408 = phi i32 [ 0, %bb.a ], [ %.0408.be, %.backedge ] ; 50 uses
  %.0406 = phi i32 [ 0, %bb.a ], [ %.0406.be, %.backedge ] ; 50 uses
  %.0404 = phi i32 [ 0, %bb.a ], [ %.0404.be, %.backedge ] ; 51 uses
  %.0402 = phi i32 [ 0, %bb.a ], [ %.0402.be, %.backedge ] ; 51 uses
  %.0400 = phi i32 [ 0, %bb.a ], [ %.0400.be, %.backedge ] ; 51 uses
  %.0397 = phi i32 [ 0, %bb.a ], [ %.0397.be, %.backedge ] ; 50 uses
  %.0394 = phi i64 [ 4097, %bb.a ], [ %.0394.be, %.backedge ] ; 50 uses
  %.0381 = phi ptr [ null, %bb.a ], [ %.0381.be, %.backedge ] ; 119 uses
  %.0379 = phi ptr [ null, %bb.a ], [ %.0379.be, %.backedge ] ; 52 uses
  %.0376 = phi ptr [ null, %bb.a ], [ %.0376.be, %.backedge ] ; 121 uses
  %i.n = call i32 @opt_next() #11                 ; 3 uses
  switch i32 %i.n, label %.backedge [
    i32 0, label %bb.bw
    i32 45, label %bb.bd
    i32 -1, label %.loopexit
    i32 1, label %bb.c
    i32 3, label %bb.d
    i32 4, label %bb.e
    i32 5, label %bb.f
    i32 6, label %bb.g
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
    i32 10, label %bb.l
    i32 50, label %bb.m
    i32 11, label %bb.n
    i32 12, label %bb.o
    i32 13, label %bb.p
    i32 14, label %bb.q
    i32 15, label %bb.r
    i32 16, label %bb.s
    i32 2, label %bb.bt
    i32 48, label %bb.bs
    i32 1501, label %bb.t
    i32 1502, label %bb.t
    i32 47, label %bb.be
    i32 46, label %bb.bd
    i32 1601, label %bb.u
    i32 1602, label %bb.u
    i32 1604, label %bb.u
    i32 1603, label %bb.u
    i32 17, label %bb.v
    i32 18, label %bb.w
    i32 19, label %bb.y
    i32 20, label %bb.aa
    i32 21, label %bb.ac
    i32 22, label %bb.ad
    i32 23, label %bb.ae
    i32 24, label %bb.af
    i32 26, label %bb.ag
    i32 25, label %bb.ag
    i32 27, label %bb.ah
    i32 28, label %bb.ai
    i32 51, label %bb.aj
    i32 29, label %bb.ak
    i32 30, label %bb.al
    i32 31, label %bb.am
    i32 34, label %bb.an
    i32 36, label %bb.ao
    i32 35, label %bb.ap
    i32 37, label %bb.aq
    i32 38, label %bb.ar
    i32 40, label %bb.as
    i32 41, label %bb.at
    i32 42, label %bb.au
    i32 43, label %bb.aw
    i32 33, label %bb.az
    i32 32, label %bb.ba
    i32 49, label %bb.bv
    i32 44, label %bb.bb
  ]

.loopexit:                                        ; preds = %bb.b, %bb.ay, %bb.am, %bb.al, %bb.ab, %.thread694, %bb.z, %.thread690, %bb.x, %.thread, %bb.n, %bb.e, %bb.d, %bb.dc, %bb.bw, %bb.bu, %bb.ax, %bb.h
  %.1511 = phi ptr [ %.0510, %bb.bw ], [ %.0510, %bb.dc ], [ %.0510, %bb.bu ], [ %.0510, %bb.ax ], [ %.0510, %bb.h ], [ %.0510, %bb.ay ], [ %.0510, %bb.am ], [ %.0510, %bb.al ], [ null, %bb.ab ], [ %.2512697, %.thread694 ], [ %.0510, %bb.z ], [ %.0510, %.thread690 ], [ %.0510, %.thread ], [ %.0510, %bb.x ], [ %.0510, %bb.n ], [ %.0510, %bb.e ], [ %.0510, %bb.d ], [ %.0510, %bb.b ]
  %.1468 = phi ptr [ %.0467, %bb.bw ], [ %.0467, %bb.dc ], [ %.0467, %bb.bu ], [ %.0467, %bb.ax ], [ %.0467, %bb.h ], [ %.0467, %bb.ay ], [ %.0467, %bb.am ], [ %.0467, %bb.al ], [ %.0467, %bb.ab ], [ %.0467, %.thread694 ], [ null, %bb.z ], [ %.2469693, %.thread690 ], [ %.0467, %.thread ], [ %.0467, %bb.x ], [ %.0467, %bb.n ], [ %.0467, %bb.e ], [ %.0467, %bb.d ], [ %.0467, %bb.b ]
  %.1444 = phi ptr [ %.0443, %bb.bw ], [ %.0443, %bb.dc ], [ %.0443, %bb.bu ], [ %.0443, %bb.ax ], [ %.0443, %bb.h ], [ %.0443, %bb.ay ], [ %.0443, %bb.am ], [ %.0443, %bb.al ], [ %.0443, %bb.ab ], [ %.0443, %.thread694 ], [ %.0443, %bb.z ], [ %.0443, %.thread690 ], [ %.2445689, %.thread ], [ null, %bb.x ], [ %.0443, %bb.n ], [ %.0443, %bb.e ], [ %.0443, %bb.d ], [ %.0443, %bb.b ]
  %.1382 = phi ptr [ %.0381, %bb.bw ], [ %.0381, %bb.dc ], [ %.0381, %bb.bu ], [ %.0381, %bb.ax ], [ null, %bb.h ], [ %.0381, %bb.d ], [ %.0381, %bb.e ], [ %.0381, %bb.n ], [ %.0381, %.thread ], [ %.0381, %bb.x ], [ %.0381, %.thread690 ], [ %.0381, %bb.z ], [ %.0381, %.thread694 ], [ %.0381, %bb.ab ], [ %.0381, %bb.al ], [ %.0381, %bb.am ], [ %.0381, %bb.ay ], [ %.0381, %bb.b ]
  %.1 = phi ptr [ %.0376, %bb.bw ], [ %.0376, %bb.dc ], [ %.0376, %bb.bu ], [ %.0376, %bb.ax ], [ %.0376, %bb.h ], [ null, %bb.ay ], [ %.0376, %bb.am ], [ %.0376, %bb.al ], [ %.0376, %bb.ab ], [ %.0376, %.thread694 ], [ %.0376, %bb.z ], [ %.0376, %.thread690 ], [ %.0376, %.thread ], [ %.0376, %bb.x ], [ %.0376, %bb.n ], [ %.0376, %bb.e ], [ %.0376, %bb.d ], [ %.0376, %bb.b ]
  %i.o = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.p = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.o, ptr noundef nonnull @.str.122, ptr noundef %i.m) #11 ; 0 uses
  br label %.thread706

bb.c:                                             ; preds = %bb.b
  call void @opt_help(ptr noundef nonnull @req_options) #11
  br label %bb.jt

bb.d:                                             ; preds = %bb.b
  %i.q = call ptr @opt_arg() #11
  %i.r = call i32 @opt_format(ptr noundef %i.q, i64 noundef 6, ptr noundef nonnull %i.e) #11
  %.not659 = icmp eq i32 %i.r, 0
  br i1 %.not659, label %.loopexit, label %.backedge

bb.e:                                             ; preds = %bb.b
  %i.s = call ptr @opt_arg() #11
  %i.t = call i32 @opt_format(ptr noundef %i.s, i64 noundef 6, ptr noundef nonnull %i.f) #11
  %.not658 = icmp eq i32 %i.t, 0
  br i1 %.not658, label %.loopexit, label %.backedge

bb.f:                                             ; preds = %bb.b
  %i.u = call ptr @opt_arg() #11
  %i.v = call ptr @setup_engine_methods(ptr noundef %i.u, i32 noundef -1, i32 noundef 0) #11
  br label %.backedge

bb.g:                                             ; preds = %bb.b
  %i.w = call ptr @opt_arg() #11
  %i.x = call ptr @setup_engine_methods(ptr noundef %i.w, i32 noundef -1, i32 noundef 0) #11 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.backedge

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.aa = load ptr, ptr %1, align 8, !tbaa !9
  %i.ab = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.z, ptr noundef nonnull @.str.123, ptr noundef %i.aa) #11 ; 0 uses
  br label %.loopexit

bb.i:                                             ; preds = %bb.b
  %i.ac = call ptr @opt_arg() #11
  br label %.backedge

bb.j:                                             ; preds = %bb.b
  br label %.backedge

bb.k:                                             ; preds = %bb.b
  br label %.backedge

bb.l:                                             ; preds = %bb.b
  %i.ad = call ptr @opt_arg() #11
  br label %.backedge

bb.m:                                             ; preds = %bb.b
  %i.ae = call ptr @opt_arg() #11
  store ptr %i.ae, ptr @section, align 8, !tbaa !9
  br label %.backedge

bb.n:                                             ; preds = %bb.b
  %i.af = call ptr @opt_arg() #11
  %i.ag = call i32 @opt_format(ptr noundef %i.af, i64 noundef 4094, ptr noundef nonnull %i.g) #11
  %.not657 = icmp eq i32 %i.ag, 0
  br i1 %.not657, label %.loopexit, label %.backedge

bb.o:                                             ; preds = %bb.b
  %i.ah = call ptr @opt_arg() #11
  br label %.backedge

bb.p:                                             ; preds = %bb.b
  %i.ai = call ptr @opt_arg() #11
  br label %.backedge

bb.q:                                             ; preds = %bb.b
  %i.aj = call ptr @opt_arg() #11
  br label %.backedge

bb.r:                                             ; preds = %bb.b
  %i.ak = call ptr @opt_arg() #11
  br label %.backedge

bb.s:                                             ; preds = %bb.b
  %i.al = call ptr @opt_arg() #11
  br label %.backedge

bb.t:                                             ; preds = %bb.b, %bb.b
  %i.am = call i32 @opt_rand(i32 noundef %i.n) #11
  %.not656 = icmp eq i32 %i.am, 0
  br i1 %.not656, label %.thread706, label %.backedge

bb.u:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.an = call i32 @opt_provider(i32 noundef %i.n) #11
  %.not655 = icmp eq i32 %i.an, 0
  br i1 %.not655, label %.thread706, label %.backedge

bb.v:                                             ; preds = %bb.b
  %i.ao = call ptr @opt_arg() #11
  br label %.backedge

bb.w:                                             ; preds = %bb.b
  %i.ap = icmp eq ptr %.0443, null
  br i1 %i.ap, label %bb.x, label %.thread

bb.x:                                             ; preds = %bb.w
  %i.aq = call ptr @OPENSSL_sk_new_null() #11     ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.w, %bb.x
  %.2445689 = phi ptr [ %i.aq, %bb.x ], [ %.0443, %bb.w ] ; 3 uses
  %i.as = call ptr @opt_arg() #11
  %i.at = call i32 @OPENSSL_sk_push(ptr noundef nonnull %.2445689, ptr noundef %i.as) #11
  %.not654 = icmp eq i32 %i.at, 0
  br i1 %.not654, label %.loopexit, label %.backedge

bb.y:                                             ; preds = %bb.b
  %.not651 = icmp eq ptr %.0467, null
  br i1 %.not651, label %bb.z, label %.thread690
end_hunk_0
begin_hunk_1_@req_main:bb.a
bb.au:                                            ; preds = %bb.b
  %i.bi = call ptr @opt_arg() #11
  %i.bj = call i64 @strtol(ptr noundef nonnull captures(none) %i.bi, ptr noundef null, i32 noundef 10) #11, !inline_history !18
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = icmp slt i32 %i.bk, -1
  br i1 %i.bl, label %bb.av, label %.backedge

bb.av:                                            ; preds = %bb.au
  %i.bm = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bm, ptr noundef nonnull @.str.124, ptr noundef %i.m) #11 ; 0 uses
  br label %.thread706

bb.aw:                                            ; preds = %bb.b
  %.not645 = icmp eq ptr %.0376, null
  br i1 %.not645, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.bo = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bp = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bo, ptr noundef nonnull @.str.125) #11 ; 0 uses
  br label %.loopexit

bb.ay:                                            ; preds = %bb.aw
  %i.bq = call ptr @opt_arg() #11
  %i.br = call ptr @s2i_ASN1_INTEGER(ptr noundef null, ptr noundef %i.bq) #11 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.loopexit, label %.backedge

bb.az:                                            ; preds = %bb.b
  br label %.backedge

bb.ba:                                            ; preds = %bb.b
  %i.bt = call ptr @opt_arg() #11
  br label %.backedge

bb.bb:                                            ; preds = %bb.b
  %i.bu = call ptr @opt_arg() #11
  %i.bv = call i32 @set_ext_copy(ptr noundef nonnull %i.a, ptr noundef %i.bu) #11
  %.not644 = icmp eq i32 %i.bv, 0
  br i1 %.not644, label %bb.bc, label %.backedge

bb.bc:                                            ; preds = %bb.bb
  %i.bw = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.bx = call ptr @opt_arg() #11
  %i.by = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.bw, ptr noundef nonnull @.str.126, ptr noundef %i.bx) #11 ; 0 uses
  br label %.thread706

bb.bd:                                            ; preds = %bb.b, %bb.b
  %i.bz = call ptr @opt_arg() #11
  br label %.backedge

bb.be:                                            ; preds = %bb.b
  %i.ca = call ptr @opt_arg() #11                 ; 3 uses
  %i.cb = icmp eq ptr %.0506, null
  br i1 %i.cb, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.cc = call ptr @OPENSSL_LH_new(ptr noundef nonnull @ext_name_hash, ptr noundef nonnull @ext_name_cmp) #11
  %i.cd = call ptr @OPENSSL_LH_set_thunks(ptr noundef %i.cc, ptr noundef nonnull @lh_OPENSSL_STRING_hash_thunk, ptr noundef nonnull @lh_OPENSSL_STRING_comp_thunk, ptr noundef nonnull @lh_OPENSSL_STRING_doall_thunk, ptr noundef nonnull @lh_OPENSSL_STRING_doall_arg_thunk) #11 ; 3 uses
  %i.ce = call ptr @BIO_s_mem() #11
  %i.cf = call ptr @BIO_new(ptr noundef %i.ce) #11 ; 3 uses
  %i.cg = icmp eq ptr %i.cd, null
  %i.ch = icmp eq ptr %i.cf, null
  %or.cond = select i1 %i.cg, i1 true, i1 %i.ch
  br i1 %or.cond, label %.thread706, label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.1507 = phi ptr [ %i.cd, %bb.bf ], [ %.0506, %bb.be ] ; 8 uses
  %.1491 = phi ptr [ %i.cf, %bb.bf ], [ %.0490, %bb.be ] ; 7 uses
  %i.ci = tail call ptr @__ctype_b_loc() #12      ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !19
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bh, %bb.bg
  %.024.i = phi ptr [ %i.ca, %bb.bg ], [ %i.cp, %bb.bh ] ; 6 uses
  %i.ck = load i8, ptr %.024.i, align 1, !tbaa !21
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %i.cj, i64 %i.cl
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !22
  %i.co = and i16 %i.cn, 8192
  %.not.i = icmp eq i16 %i.co, 0
  %i.cp = getelementptr inbounds nuw i8, ptr %.024.i, i64 1
  br i1 %.not.i, label %bb.bi, label %bb.bh, !llvm.loop !24

bb.bi:                                            ; preds = %bb.bh
  %i.cq = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.024.i, i32 noundef 61) #13 ; 3 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.cs = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ct = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.cs, ptr noundef nonnull @.str.210) #11 ; 0 uses
  br label %.thread706

bb.bk:                                            ; preds = %bb.bi
  %i.cu = call ptr @CRYPTO_strdup(ptr noundef nonnull %.024.i, ptr noundef nonnull @.str.208, i32 noundef 255) #11 ; 8 uses
  %i.cv = icmp eq ptr %i.cu, null
  br i1 %i.cv, label %.thread704, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cw = ptrtoint ptr %i.cq to i64
  %i.cx = ptrtoint ptr %.024.i to i64
  %i.cy = sub i64 %i.cw, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cy ; 2 uses
  %.not3173 = icmp eq ptr %i.cq, %.024.i
  br i1 %.not3173, label %._crit_edge3171, label %.lr.ph3169.preheader

.lr.ph3169.preheader:                             ; preds = %bb.bl
  %i.da = load ptr, ptr %i.ci, align 8, !tbaa !19
  br label %.lr.ph3169

bb.bm:                                            ; preds = %.lr.ph3169
  %i.db = icmp ugt ptr %i.dc, %i.cu
  br i1 %i.db, label %.lr.ph3169, label %._crit_edge3171, !llvm.loop !25

.lr.ph3169:                                       ; preds = %.lr.ph3169.preheader, %bb.bm
  %.023.i3167 = phi ptr [ %i.dc, %bb.bm ], [ %i.cz, %.lr.ph3169.preheader ] ; 2 uses
  %i.dc = getelementptr inbounds i8, ptr %.023.i3167, i64 -1 ; 4 uses
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !21
  %i.de = zext i8 %i.dd to i64
  %i.df = getelementptr inbounds nuw [2 x i8], ptr %i.da, i64 %i.de
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !22
  %i.dh = and i16 %i.dg, 8192
  %.not28.i = icmp eq i16 %i.dh, 0
  br i1 %.not28.i, label %._crit_edge3170, label %bb.bm, !llvm.loop !25

._crit_edge3170:                                  ; preds = %.lr.ph3169
  br label %._crit_edge3171, !llvm.loop !25

._crit_edge3171:                                  ; preds = %bb.bm, %._crit_edge3170, %bb.bl
  %.023.i.lcssa = phi ptr [ %.023.i3167, %._crit_edge3170 ], [ %i.cz, %bb.bl ], [ %i.dc, %bb.bm ] ; 2 uses
  %i.di = icmp eq ptr %.023.i.lcssa, %i.cu
  br i1 %i.di, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %._crit_edge3171
  %i.dj = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dk = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dj, ptr noundef nonnull @.str.211) #11 ; 0 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.208, i32 noundef 264) #11
  br label %.thread706

bb.bo:                                            ; preds = %._crit_edge3171
  store i8 0, ptr %.023.i.lcssa, align 1, !tbaa !21
  %i.dl = call ptr @OPENSSL_LH_insert(ptr noundef nonnull %.1507, ptr noundef nonnull %i.cu) #11 ; 2 uses
  %.not29.i = icmp eq ptr %i.dl, null
  br i1 %.not29.i, label %bb.bp, label %duplicated.exit

bb.bp:                                            ; preds = %bb.bo
  %i.dm = call i32 @OPENSSL_LH_error(ptr noundef nonnull %.1507) #11
  %.not30.i = icmp eq i32 %i.dm, 0
  br i1 %.not30.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @CRYPTO_free(ptr noundef nonnull %i.cu, ptr noundef nonnull @.str.208, i32 noundef 276) #11
  br label %.thread704

duplicated.exit:                                  ; preds = %bb.bo
  %i.dn = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.do = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dn, ptr noundef nonnull @.str.212, ptr noundef nonnull %i.cu) #11 ; 0 uses
  call void @CRYPTO_free(ptr noundef nonnull %i.dl, ptr noundef nonnull @.str.208, i32 noundef 273) #11
  br label %.thread706

.thread704:                                       ; preds = %bb.bk, %bb.bq
  %i.dp = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dp, ptr noundef nonnull @.str.127, ptr noundef %i.ca) #11 ; 0 uses
  br label %.thread706

bb.br:                                            ; preds = %bb.bp
  %i.dr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %.1491, ptr noundef nonnull @.str.128, ptr noundef %i.ca) #11
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %.thread706, label %.backedge

bb.bs:                                            ; preds = %bb.b
  br label %.backedge

bb.bt:                                            ; preds = %bb.b
  %i.dt = call ptr @opt_arg() #11
  %i.du = call ptr @EVP_get_cipherbyname(ptr noundef %i.dt) #11 ; 2 uses
  %i.dv = icmp eq ptr %i.du, null
  br i1 %i.dv, label %bb.bu, label %.backedge

bb.bu:                                            ; preds = %bb.bt
  %i.dw = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.dx = call ptr @opt_arg() #11
  %i.dy = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.dw, ptr noundef nonnull @.str.129, ptr noundef %i.dx) #11 ; 0 uses
  br label %.loopexit

bb.bv:                                            ; preds = %bb.b
  %i.dz = call ptr @opt_unknown() #11
  br label %.backedge

bb.bw:                                            ; preds = %bb.b
  %i.ea = call i32 @opt_check_rest_arg(ptr noundef null) #11
  %.not563 = icmp eq i32 %i.ea, 0
  br i1 %.not563, label %.loopexit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.eb = call i32 @app_RAND_load() #11
  %.not564 = icmp eq i32 %i.eb, 0
  br i1 %.not564, label %.thread706, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %6 = icmp ne i32 %.0431, 0                      ; 9 uses
  br i1 %6, label %bb.ch, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %.not565 = icmp eq i32 %.0436, -2
  br i1 %.not565, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.ec = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ed = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ec, ptr noundef nonnull @.str.130) #11 ; 0 uses
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.not566 = icmp eq ptr %.0441, null
  br i1 %.not566, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.ee = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ef = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ee, ptr noundef nonnull @.str.131) #11 ; 0 uses
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not567 = icmp eq ptr %.0439, null
  br i1 %.not567, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eg = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.eh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eg, ptr noundef nonnull @.str.132) #11 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %i.ei = load i32, ptr %i.a, align 4, !tbaa !5
  %i.ej = icmp eq i32 %i.ei, 0
  br i1 %i.ej, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  %i.ek = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.el = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ek, ptr noundef nonnull @.str.133) #11 ; 0 uses
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.by
  %i.em = icmp eq ptr %.0485, null                ; 3 uses
  br i1 %i.em, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.en = or i32 %.0431, %.0424
  %or.cond663.not.not = icmp eq i32 %i.en, 0
  br i1 %or.cond663.not.not, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  %i.eo = call i32 @fileno_stdin() #11
  %i.ep = call i32 @isatty(i32 noundef %i.eo) #11
  %.not569 = icmp eq i32 %i.ep, 0
  br i1 %.not569, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.eq = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.er = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.eq, ptr noundef nonnull @.str.134) #11 ; 0 uses
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ci, %bb.ck, %bb.cj, %bb.ch
  %.2426 = phi i32 [ %.0424, %bb.ch ], [ 1, %bb.ci ], [ 0, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.es = call i32 @app_passwd(ptr noundef %.0465, ptr noundef %.0463, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #11
  %.not570 = icmp eq i32 %i.es, 0
  br i1 %.not570, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.et = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.eu = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.et, ptr noundef nonnull @.str.135) #11 ; 0 uses
  br label %.thread706

bb.cn:                                            ; preds = %bb.cl
  %i.ev = call ptr @app_load_config_verbose(ptr noundef %.0453, i32 noundef %.0422) #11 ; 3 uses
  store ptr %i.ev, ptr @req_conf, align 8, !tbaa !26
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread706, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %.not571 = icmp eq ptr %.0490, null
  br i1 %.not571, label %bb.cs, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %.not572 = icmp eq i32 %.0422, 0
  br i1 %.not572, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.ex = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ey = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ex, ptr noundef nonnull @.str.136) #11 ; 0 uses
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cp
  %i.ez = call ptr @app_load_config_bio(ptr noundef nonnull %.0490, ptr noundef null) #11 ; 2 uses
  store ptr %i.ez, ptr @addext_conf, align 8, !tbaa !26
  %i.fa = icmp eq ptr %i.ez, null
  br i1 %i.fa, label %.thread706, label %._crit_edge1996

._crit_edge1996:                                  ; preds = %bb.cr
  %.pre1995.pre = load ptr, ptr @req_conf, align 8, !tbaa !26
  br label %bb.cs

bb.cs:                                            ; preds = %._crit_edge1996, %bb.co
  %.pre1995 = phi ptr [ %.pre1995.pre, %._crit_edge1996 ], [ %i.ev, %bb.co ] ; 2 uses
  %i.fb = load ptr, ptr @default_config_file, align 8, !tbaa !9
  %.not573 = icmp eq ptr %.0453, %i.fb
  br i1 %.not573, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.fc = call i32 @app_load_modules(ptr noundef %.pre1995) #11
  %.not574 = icmp eq i32 %i.fc, 0
  br i1 %.not574, label %.thread706, label %._crit_edge1994

._crit_edge1994:                                  ; preds = %bb.ct
  %.pre = load ptr, ptr @req_conf, align 8, !tbaa !26
  br label %bb.cu

bb.cu:                                            ; preds = %._crit_edge1994, %bb.cs
  %i.fd = phi ptr [ %.pre, %._crit_edge1994 ], [ %.pre1995, %bb.cs ] ; 2 uses
  %.not575 = icmp eq ptr %i.fd, null
  br i1 %.not575, label %bb.da, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.fe = call ptr @app_conf_try_string(ptr noundef nonnull %i.fd, ptr noundef null, ptr noundef nonnull @.str.137) #11 ; 3 uses
  %.not576 = icmp eq ptr %i.fe, null
  br i1 %.not576, label %bb.da, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ff = call ptr @BIO_new_file(ptr noundef nonnull %i.fe, ptr noundef nonnull @.str.138) #11 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  br i1 %i.fg, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  %.not577 = icmp eq i32 %.0422, 0
  br i1 %.not577, label %bb.da, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.fh = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.fi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fh, ptr noundef nonnull @.str.139, ptr noundef nonnull %i.fe) #11 ; 0 uses
  br label %bb.da

bb.cz:                                            ; preds = %bb.cw
  %i.fj = call i32 @OBJ_create_objects(ptr noundef nonnull %i.ff) #11 ; 0 uses
  %i.fk = call i32 @BIO_free(ptr noundef nonnull %i.ff) #11 ; 0 uses
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cv, %bb.cu
  %i.fl = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.fm = call i32 @add_oid_section(ptr noundef %i.fl) #11
  %.not578 = icmp eq i32 %i.fm, 0
  br i1 %.not578, label %.thread706, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.not579 = icmp eq ptr %.0473, null
  br i1 %.not579, label %bb.dd, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.fn = call i32 @opt_check_md(ptr noundef nonnull %.0473) #11
  %.not581 = icmp eq i32 %i.fn, 0
  br i1 %.not581, label %.loopexit, label %bb.de

bb.dd:                                            ; preds = %bb.db
  %i.fo = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.fp = load ptr, ptr @section, align 8, !tbaa !9
  %i.fq = call ptr @app_conf_try_string(ptr noundef %i.fo, ptr noundef %i.fp, ptr noundef nonnull @.str.140) #11
  br label %bb.de

bb.de:                                            ; preds = %bb.dd, %bb.dc
  %.2475 = phi ptr [ %.0473, %bb.dc ], [ %i.fq, %bb.dd ] ; 2 uses
  %i.fr = icmp eq ptr %.0487, null
  br i1 %i.fr, label %bb.df, label %.thread708

bb.df:                                            ; preds = %bb.de
  %i.fs = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.ft = load ptr, ptr @section, align 8, !tbaa !9
  %i.fu = select i1 %6, ptr @.str.141, ptr @.str.142
  %i.fv = call ptr @app_conf_try_string(ptr noundef %i.fs, ptr noundef %i.ft, ptr noundef nonnull %i.fu) #11 ; 2 uses
  %.not582 = icmp eq ptr %i.fv, null
  br i1 %.not582, label %bb.dh, label %.thread708

.thread708:                                       ; preds = %bb.de, %bb.df
  %.2489711 = phi ptr [ %i.fv, %bb.df ], [ %.0487, %bb.de ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  call void @X509V3_set_ctx(ptr noundef nonnull %2, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 1) #11
  %i.fw = load ptr, ptr @req_conf, align 8, !tbaa !26
  call void @X509V3_set_nconf(ptr noundef nonnull %2, ptr noundef %i.fw) #11
  %i.fx = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.fy = call i32 @X509V3_EXT_add_nconf(ptr noundef %i.fx, ptr noundef nonnull %2, ptr noundef nonnull %.2489711, ptr noundef null) #11
  %.not583 = icmp eq i32 %i.fy, 0
  br i1 %.not583, label %bb.dg, label %.thread715

.thread715:                                       ; preds = %.thread708
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %bb.dh

bb.dg:                                            ; preds = %.thread708
  %i.fz = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ga = select i1 %6, ptr @.str.30, ptr @.str.144
  %i.gb = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.fz, ptr noundef nonnull @.str.143, ptr noundef nonnull %i.ga, ptr noundef nonnull %.2489711) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  br label %.thread706

bb.dh:                                            ; preds = %.thread715, %bb.df
end_hunk_1
begin_hunk_2_@req_main:bb.a
bb.ex:                                            ; preds = %bb.ew
  %i.jm = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.jn = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jm, ptr noundef nonnull @.str.163) #11 ; 0 uses
  %i.jo = icmp eq ptr %.2452, null
  %i.jp = load ptr, ptr @bio_err, align 8, !tbaa !14 ; 2 uses
  br i1 %i.jo, label %bb.ey, label %bb.ez

bb.ey:                                            ; preds = %bb.ex
  %i.jq = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jp, ptr noundef nonnull @.str.164) #11 ; 0 uses
  br label %bb.fa

bb.ez:                                            ; preds = %bb.ex
  %i.jr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.jp, ptr noundef nonnull @.str.165, ptr noundef nonnull %.2452) #11 ; 0 uses
  br label %bb.fa

bb.fa:                                            ; preds = %bb.ey, %bb.ez, %bb.ew
  %i.js = load i32, ptr %i.f, align 4, !tbaa !5
  %i.jt = call ptr @bio_open_owner(ptr noundef %.2452, i32 noundef %i.js, i32 noundef 1) #11 ; 5 uses
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %.thread706, label %bb.fb

bb.fb:                                            ; preds = %bb.fa
  %i.jv = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.jw = load ptr, ptr @section, align 8, !tbaa !9
  %i.jx = call ptr @app_conf_try_string(ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef nonnull @.str.166) #11 ; 2 uses
  %i.jy = icmp eq ptr %i.jx, null
  br i1 %i.jy, label %bb.fc, label %sub_0

bb.fc:                                            ; preds = %bb.fb
  %i.jz = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.ka = load ptr, ptr @section, align 8, !tbaa !9
  %i.kb = call ptr @app_conf_try_string(ptr noundef %i.jz, ptr noundef %i.ka, ptr noundef nonnull @.str.167) #11 ; 2 uses
  %.not600 = icmp eq ptr %i.kb, null
  br i1 %.not600, label %.thread733.tail, label %sub_0

sub_0:                                            ; preds = %bb.fc, %bb.fb
  %.0472736 = phi ptr [ %i.kb, %bb.fc ], [ %i.jx, %bb.fb ] ; 3 uses
  %i.kc = load i8, ptr %.0472736, align 1
  %.not1431 = icmp eq i8 %i.kc, 110
  br i1 %.not1431, label %sub_1, label %.thread733.tail

sub_1:                                            ; preds = %sub_0
  %i.kd = getelementptr inbounds nuw i8, ptr %.0472736, i64 1
  %i.ke = load i8, ptr %i.kd, align 1
  %.not1432 = icmp eq i8 %i.ke, 111
  br i1 %.not1432, label %sub_2, label %.thread733.tail

sub_2:                                            ; preds = %sub_1
  %i.kf = getelementptr inbounds nuw i8, ptr %.0472736, i64 2
  %i.kg = load i8, ptr %i.kf, align 1
  %i.kh = icmp eq i8 %i.kg, 0
  %i.ki = select i1 %i.kh, ptr null, ptr %.0494
  br label %.thread733.tail

.thread733.tail:                                  ; preds = %sub_2, %sub_1, %sub_0, %bb.fc
  %.2496 = phi ptr [ %.0494, %bb.fc ], [ %.0494, %sub_0 ], [ %.0494, %sub_1 ], [ %i.ki, %sub_2 ]
  %.not601 = icmp eq i32 %.0408, 0
  %spec.select672 = select i1 %.not601, ptr %.2496, ptr null ; 2 uses
  %i.kj = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.kk = call i32 @PEM_write_bio_PrivateKey(ptr noundef nonnull %i.jt, ptr noundef nonnull %.1386732, ptr noundef %spec.select672, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.kj) #11
  %.not6021428 = icmp eq i32 %i.kk, 0
  br i1 %.not6021428, label %.lr.ph1430, label %._crit_edge

.lr.ph1430:                                       ; preds = %.thread733.tail, %bb.fd
  %.14281429 = phi i32 [ %i.kq, %bb.fd ], [ 0, %.thread733.tail ] ; 2 uses
  %i.kl = call i64 @ERR_peek_error() #11          ; 2 uses
  %i.km = and i64 %i.kl, 2147483648
  %.not.i686 = icmp eq i64 %i.km, 0
  %i.kn = trunc i64 %i.kl to i32
  %.0.v.i = select i1 %.not.i686, i32 8388607, i32 2147483647
  %.0.i687 = and i32 %.0.v.i, %i.kn
  %i.ko = icmp eq i32 %.0.i687, 109
  %i.kp = icmp samesign ult i32 %.14281429, 3
  %or.cond13 = select i1 %i.ko, i1 %i.kp, i1 false
  br i1 %or.cond13, label %bb.fd, label %.thread706

bb.fd:                                            ; preds = %.lr.ph1430
  call void @ERR_clear_error() #11
  %i.kq = add nuw nsw i32 %.14281429, 1
  %i.kr = load ptr, ptr %i.d, align 8, !tbaa !9
  %i.ks = call i32 @PEM_write_bio_PrivateKey(ptr noundef nonnull %i.jt, ptr noundef nonnull %.1386732, ptr noundef %spec.select672, ptr noundef null, i32 noundef 0, ptr noundef null, ptr noundef %i.kr) #11
  %.not602 = icmp eq i32 %i.ks, 0
  br i1 %.not602, label %.lr.ph1430, label %._crit_edge

._crit_edge:                                      ; preds = %bb.fd, %.thread733.tail
  call void @BIO_free_all(ptr noundef nonnull %i.jt) #11
  %i.kt = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ku = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.kt, ptr noundef nonnull @.str.169) #11 ; 0 uses
  br label %bb.fe

bb.fe:                                            ; preds = %._crit_edge, %bb.ev
  %.not603 = icmp eq ptr %.0457, null             ; 2 uses
  br i1 %.not603, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.kv = trunc nuw nsw i64 %.2396 to i32
  %i.kw = call ptr @parse_name(ptr noundef nonnull %.0457, i32 noundef %i.kv, i32 noundef 1, ptr noundef nonnull @.str.41) #11 ; 2 uses
  %i.kx = icmp eq ptr %i.kw, null
  br i1 %i.kx, label %.thread706, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.0455 = phi ptr [ %i.kw, %bb.ff ], [ null, %bb.fe ] ; 29 uses
  br i1 %i.jj, label %bb.fk, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  br i1 %i.hd, label %bb.fi, label %bb.fj

bb.fi:                                            ; preds = %bb.fh
  %i.ky = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.kz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ky, ptr noundef nonnull @.str.170) #11 ; 0 uses
  br label %bb.fj

bb.fj:                                            ; preds = %bb.fi, %bb.fh
  %i.la = load i32, ptr %i.e, align 4, !tbaa !5
  %i.lb = call ptr @load_csr_autofmt(ptr noundef %.0485, i32 noundef %i.la, ptr noundef %.0510, ptr noundef nonnull @.str.171) #11 ; 2 uses
  %i.lc = icmp eq ptr %i.lb, null
  br i1 %i.lc, label %.thread706, label %bb.fm

bb.fk:                                            ; preds = %bb.fg
  br i1 %i.em, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  %i.ld = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.le = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ld, ptr noundef nonnull @.str.172) #11 ; 0 uses
  br label %bb.fm

bb.fm:                                            ; preds = %bb.fk, %bb.fl, %bb.fj
  %.0498 = phi ptr [ null, %bb.fl ], [ null, %bb.fk ], [ %i.lb, %bb.fj ] ; 14 uses
  %i.lf = icmp eq ptr %.0480, null
  %spec.select673 = select i1 %i.lf, ptr %.0483, ptr %.0480 ; 3 uses
  %.not605 = icmp eq ptr %spec.select673, null
  %.not607 = icmp eq ptr %.0483, null             ; 2 uses
  br i1 %.not605, label %bb.fp, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  br i1 %.not607, label %.thread737, label %bb.fo

.thread737:                                       ; preds = %bb.fn
  %i.lg = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.lh = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lg, ptr noundef nonnull @.str.173) #11 ; 0 uses
  br label %bb.fs

bb.fo:                                            ; preds = %bb.fn
  %i.li = load ptr, ptr %i.c, align 8, !tbaa !9
  %.not606 = icmp eq ptr %spec.select673, %.0483
  %i.lj = select i1 %.not606, ptr @.str.175, ptr @.str.174
  %i.lk = call ptr @load_key(ptr noundef nonnull %spec.select673, i32 noundef 0, i32 noundef 0, ptr noundef %i.li, ptr noundef %.0379, ptr noundef nonnull %i.lj) #11 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, null
  br i1 %i.ll, label %.thread706, label %.thread741

bb.fp:                                            ; preds = %bb.fm
  br i1 %.not607, label %bb.fs, label %.thread741

.thread741:                                       ; preds = %bb.fo, %bb.fp
  %.0392744 = phi ptr [ null, %bb.fp ], [ %i.lk, %bb.fo ] ; 4 uses
  %i.lm = load ptr, ptr %i.c, align 8, !tbaa !9
  %i.ln = call ptr @load_cert_pass(ptr noundef nonnull %.0483, i32 noundef 0, i32 noundef 1, ptr noundef %i.lm, ptr noundef nonnull @.str.176) #11 ; 4 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %.thread706, label %bb.fq

bb.fq:                                            ; preds = %.thread741
  %i.lp = call i32 @X509_check_private_key(ptr noundef nonnull %i.ln, ptr noundef %.0392744) #11
  %.not608 = icmp eq i32 %i.lp, 0
  br i1 %.not608, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq
  %i.lq = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.lr = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lq, ptr noundef nonnull @.str.177) #11 ; 0 uses
  br label %.thread706

bb.fs:                                            ; preds = %.thread737, %bb.fq, %bb.fp
  %.0392740 = phi ptr [ %.0392744, %bb.fq ], [ null, %bb.fp ], [ null, %.thread737 ] ; 21 uses
  %.0502 = phi ptr [ %i.ln, %bb.fq ], [ null, %bb.fp ], [ null, %.thread737 ] ; 23 uses
  %i.ls = or i32 %.2426, %.0431
  %or.cond15.not = icmp eq i32 %i.ls, 0
  br i1 %or.cond15.not, label %bb.hw, label %bb.ft

bb.ft:                                            ; preds = %bb.fs
  %i.lt = icmp eq ptr %.0502, null                ; 2 uses
  %i.lu = icmp eq ptr %.1386732, null
  %or.cond17 = and i1 %i.lu, %i.lt
  br i1 %or.cond17, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft
  %i.lv = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.lw = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.lv, ptr noundef nonnull @.str.178) #11 ; 0 uses
  br label %.thread706

bb.fv:                                            ; preds = %bb.ft
  %i.lx = icmp eq ptr %.0498, null
  br i1 %i.lx, label %bb.fw, label %bb.fz

bb.fw:                                            ; preds = %bb.fv
  %i.ly = call ptr @app_get0_libctx() #11
  %i.lz = call ptr @app_get0_propq() #11
  %i.ma = call ptr @X509_REQ_new_ex(ptr noundef %i.ly, ptr noundef %i.lz) #11 ; 4 uses
  %i.mb = icmp eq ptr %i.ma, null
  br i1 %i.mb, label %.thread706, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %i.mc = call fastcc i32 @make_REQ(ptr noundef %i.ma, ptr noundef %.1386732, ptr noundef %.0455, i32 noundef %8, i64 noundef %.2396)
  %.not609 = icmp eq i32 %i.mc, 0
  br i1 %.not609, label %bb.fy, label %bb.fz

bb.fy:                                            ; preds = %bb.fx
  %i.md = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.me = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.md, ptr noundef nonnull @.str.179) #11 ; 0 uses
  br label %.thread706

bb.fz:                                            ; preds = %bb.fx, %bb.fv
  %.1499 = phi ptr [ %i.ma, %bb.fx ], [ %.0498, %bb.fv ] ; 12 uses
  br i1 %6, label %bb.ga, label %bb.hm

bb.ga:                                            ; preds = %bb.fz
  %i.mf = call ptr @X509_REQ_get0_pubkey(ptr noundef nonnull %.1499) #11 ; 2 uses
  %i.mg = icmp ne ptr %.0502, null                ; 4 uses
  %i.mh = select i1 %i.mg, ptr %.0392740, ptr %.1386732
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  br i1 %i.mg, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %bb.ga
  %i.mi = call ptr @X509_get_subject_name(ptr noundef nonnull %.0502) #11
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.mj = call ptr @X509_REQ_get_subject_name(ptr noundef nonnull %.1499) #11
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.mk = phi ptr [ %i.mi, %bb.gb ], [ %i.mj, %bb.gc ]
  %.not615 = icmp eq ptr %.0455, null
  br i1 %.not615, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  %i.ml = call ptr @X509_REQ_get_subject_name(ptr noundef nonnull %.1499) #11
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gd, %bb.ge
  %i.mm = phi ptr [ %i.ml, %bb.ge ], [ %.0455, %bb.gd ]
  %or.cond19 = and i1 %i.hd, %i.mg
  br i1 %or.cond19, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.mn = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.mo = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.mn, ptr noundef nonnull @.str.180) #11 ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.mp = call ptr @app_get0_libctx() #11
  %i.mq = call ptr @app_get0_propq() #11
  %i.mr = call ptr @X509_new_ex(ptr noundef %i.mp, ptr noundef %i.mq) #11 ; 17 uses
  %i.ms = icmp eq ptr %i.mr, null
  br i1 %i.ms, label %.thread746, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %.not616 = icmp eq ptr %.0376, null
  br i1 %.not616, label %bb.gk, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %i.mt = call i32 @X509_set_serialNumber(ptr noundef nonnull %i.mr, ptr noundef nonnull %.0376) #11
  %.not618 = icmp eq i32 %i.mt, 0
  br i1 %.not618, label %.thread746, label %bb.gl

bb.gk:                                            ; preds = %bb.gi
  %i.mu = call ptr @X509_get_serialNumber(ptr noundef nonnull %i.mr) #11
  %i.mv = call i32 @rand_serial(ptr noundef null, ptr noundef %i.mu) #11
  %.not617 = icmp eq i32 %i.mv, 0
  br i1 %.not617, label %.thread746, label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %i.mw = call i32 @X509_set_issuer_name(ptr noundef nonnull %i.mr, ptr noundef %i.mk) #11
  %.not619 = icmp eq i32 %i.mw, 0
  br i1 %.not619, label %.thread746, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.mx = icmp eq i32 %.0436, -2
  br i1 %i.mx, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %bb.gm
  %.not620 = icmp eq ptr %.0439, null
  br i1 %.not620, label %bb.gp, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.my = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.mz = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.my, ptr noundef nonnull @.str.181) #11 ; 0 uses
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gm, %bb.gn, %bb.go
  %.2438 = phi i32 [ %.0436, %bb.gn ], [ %.0436, %bb.go ], [ 30, %bb.gm ]
  %i.na = call i32 @set_cert_times(ptr noundef nonnull %i.mr, ptr noundef %.0441, ptr noundef %.0439, i32 noundef %.2438, i32 noundef 1) #11
  %.not621 = icmp eq i32 %i.na, 0
  br i1 %.not621, label %.thread746, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  %i.nb = call i32 @X509_set_subject_name(ptr noundef nonnull %i.mr, ptr noundef %i.mm) #11
  %.not622 = icmp eq i32 %i.nb, 0
  %.not623 = icmp eq ptr %i.mf, null
  %or.cond685 = select i1 %.not622, i1 true, i1 %.not623
  br i1 %or.cond685, label %.thread746, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.nc = call i32 @X509_set_pubkey(ptr noundef nonnull %i.mr, ptr noundef nonnull %i.mf) #11
  %.not624 = icmp eq i32 %i.nc, 0
  br i1 %.not624, label %.thread746, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.nd = load i32, ptr %i.a, align 4, !tbaa !5   ; 2 uses
  %i.ne = icmp eq i32 %i.nd, -1
  br i1 %i.ne, label %bb.gt, label %bb.gv

bb.gt:                                            ; preds = %bb.gs
  br i1 %i.em, label %bb.gx, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  %i.nf = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ng = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nf, ptr noundef nonnull @.str.182) #11 ; 0 uses
  br label %bb.gx

bb.gv:                                            ; preds = %bb.gs
  %i.nh = call i32 @copy_extensions(ptr noundef nonnull %i.mr, ptr noundef nonnull %.1499, i32 noundef %i.nd) #11
  %.not625 = icmp eq i32 %i.nh, 0
  br i1 %.not625, label %bb.gw, label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.ni = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.nj = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ni, ptr noundef nonnull @.str.183) #11 ; 0 uses
  br label %.thread746

bb.gx:                                            ; preds = %bb.gv, %bb.gt, %bb.gu
  %i.nk = select i1 %i.mg, ptr %.0502, ptr %i.mr
  call void @X509V3_set_ctx(ptr noundef nonnull %4, ptr noundef nonnull %i.nk, ptr noundef nonnull %i.mr, ptr noundef null, ptr noundef null, i32 noundef 2) #11
  br i1 %i.lt, label %bb.gy, label %bb.hb

bb.gy:                                            ; preds = %bb.gx
  %i.nl = call i32 @X509V3_set_issuer_pkey(ptr noundef nonnull %4, ptr noundef %.1386732) #11
  %.not627 = icmp eq i32 %i.nl, 0
  br i1 %.not627, label %.thread746, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  %i.nm = call i32 @cert_matches_key(ptr noundef nonnull %i.mr, ptr noundef %.1386732) #11
  %.not628 = icmp eq i32 %i.nm, 0
  br i1 %.not628, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.nn = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.no = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nn, ptr noundef nonnull @.str.184) #11 ; 0 uses
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha, %bb.gx
  %i.np = load ptr, ptr @req_conf, align 8, !tbaa !26
  call void @X509V3_set_nconf(ptr noundef nonnull %4, ptr noundef %i.np) #11
  br i1 %.not582714, label %bb.he, label %bb.hc

bb.hc:                                            ; preds = %bb.hb
  %i.nq = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.nr = call i32 @X509V3_EXT_add_nconf(ptr noundef %i.nq, ptr noundef nonnull %4, ptr noundef nonnull %.2489712, ptr noundef nonnull %i.mr) #11
  %.not629 = icmp eq i32 %i.nr, 0
  br i1 %.not629, label %bb.hd, label %bb.he

bb.hd:                                            ; preds = %bb.hc
  %i.ns = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.nt = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ns, ptr noundef nonnull @.str.185, ptr noundef nonnull %.2489712) #11 ; 0 uses
  br label %.thread746

bb.he:                                            ; preds = %bb.hc, %bb.hb
  %i.nu = load ptr, ptr @addext_conf, align 8, !tbaa !26 ; 2 uses
  %.not630 = icmp eq ptr %i.nu, null
  br i1 %.not630, label %bb.hh, label %bb.hf

bb.hf:                                            ; preds = %bb.he
  %i.nv = call i32 @X509V3_EXT_add_nconf(ptr noundef nonnull %i.nu, ptr noundef nonnull %4, ptr noundef nonnull @.str.145, ptr noundef nonnull %i.mr) #11
  %.not631 = icmp eq i32 %i.nv, 0
  br i1 %.not631, label %bb.hg, label %bb.hh

bb.hg:                                            ; preds = %bb.hf
  %i.nw = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.nx = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nw, ptr noundef nonnull @.str.186) #11 ; 0 uses
  br label %.thread746

bb.hh:                                            ; preds = %bb.hf, %bb.he
  %.not632 = icmp eq i32 %.0400, 0
  br i1 %.not632, label %bb.hk, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.ny = call i32 @X509_add1_ext_i2d(ptr noundef nonnull %i.mr, i32 noundef 952, ptr noundef null, i32 noundef 1, i64 noundef 0) #11
  %.not633 = icmp eq i32 %i.ny, 1
  br i1 %.not633, label %bb.hk, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.nz = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.oa = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.nz, ptr noundef nonnull @.str.187) #11 ; 0 uses
  br label %.thread746

bb.hk:                                            ; preds = %bb.hi, %bb.hh
  %i.ob = call i32 @do_X509_sign(ptr noundef nonnull %i.mr, i32 noundef %.0397, ptr noundef %i.mh, ptr noundef %.2475, ptr noundef %.0467, ptr noundef nonnull %4) #11
  %.not634 = icmp eq i32 %i.ob, 0
  br i1 %.not634, label %.thread746, label %bb.hl

.thread746:                                       ; preds = %bb.gj, %bb.hj, %bb.gy, %bb.hg, %bb.hd, %bb.gr, %bb.gw, %bb.gq, %bb.gp, %bb.gl, %bb.gk, %bb.gh, %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread706

bb.hl:                                            ; preds = %bb.hk
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %.thread753

bb.hm:                                            ; preds = %bb.fz
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  %.not610 = icmp eq i32 %.0400, 0
  br i1 %.not610, label %bb.ho, label %bb.hn

bb.hn:                                            ; preds = %bb.hm
  %i.oc = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.od = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oc, ptr noundef nonnull @.str.188) #11 ; 0 uses
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hn, %bb.hm
  call void @X509V3_set_ctx(ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef nonnull %.1499, ptr noundef null, i32 noundef 2) #11
  %i.oe = load ptr, ptr @req_conf, align 8, !tbaa !26
  call void @X509V3_set_nconf(ptr noundef nonnull %5, ptr noundef %i.oe) #11
  br i1 %.not582714, label %bb.hr, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.of = load ptr, ptr @req_conf, align 8, !tbaa !26
  %i.og = call i32 @X509V3_EXT_REQ_add_nconf(ptr noundef %i.of, ptr noundef nonnull %5, ptr noundef nonnull %.2489712, ptr noundef nonnull %.1499) #11
  %.not611 = icmp eq i32 %i.og, 0
  br i1 %.not611, label %bb.hq, label %bb.hr

bb.hq:                                            ; preds = %bb.hp
  %i.oh = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.oi = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.oh, ptr noundef nonnull @.str.189, ptr noundef nonnull %.2489712) #11 ; 0 uses
  br label %.thread750

bb.hr:                                            ; preds = %bb.hp, %bb.ho
  %i.oj = load ptr, ptr @addext_conf, align 8, !tbaa !26 ; 2 uses
  %.not612 = icmp eq ptr %i.oj, null
  br i1 %.not612, label %bb.hu, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.ok = call i32 @X509V3_EXT_REQ_add_nconf(ptr noundef nonnull %i.oj, ptr noundef nonnull %5, ptr noundef nonnull @.str.145, ptr noundef nonnull %.1499) #11
  %.not613 = icmp eq i32 %i.ok, 0
  br i1 %.not613, label %bb.ht, label %bb.hu

bb.ht:                                            ; preds = %bb.hs
  %i.ol = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.om = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.ol, ptr noundef nonnull @.str.190) #11 ; 0 uses
  br label %.thread750

bb.hu:                                            ; preds = %bb.hs, %bb.hr
  %i.on = call i32 @do_X509_REQ_sign(ptr noundef nonnull %.1499, ptr noundef %.1386732, ptr noundef %.2475, ptr noundef %.0467) #11
  %.not614 = icmp eq i32 %i.on, 0
  br i1 %.not614, label %.thread750, label %bb.hv

.thread750:                                       ; preds = %bb.hq, %bb.ht, %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread706

bb.hv:                                            ; preds = %bb.hu
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %.thread753

bb.hw:                                            ; preds = %bb.fs
  br i1 %.not603, label %.thread753, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  %.not635 = icmp eq i32 %.0422, 0
  br i1 %.not635, label %bb.hy, label %.thread764

bb.hy:                                            ; preds = %bb.hx
  %i.oo = call i32 @X509_REQ_set_subject_name(ptr noundef %.0498, ptr noundef %.0455) #11
  %.not636 = icmp eq i32 %i.oo, 0
  br i1 %.not636, label %bb.hz, label %.thread753

.thread764:                                       ; preds = %bb.hx
  %i.op = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef null, ptr noundef nonnull @.str.191) #11 ; 0 uses
  %i.oq = call ptr @X509_REQ_get_subject_name(ptr noundef %.0498) #11
  call void @print_name(ptr noundef null, ptr noundef nonnull @.str.192, ptr noundef %i.oq) #11
  %i.or = call i32 @X509_REQ_set_subject_name(ptr noundef %.0498, ptr noundef %.0455) #11
  %.not636765 = icmp eq i32 %i.or, 0
  br i1 %.not636765, label %bb.hz, label %bb.ia

bb.hz:                                            ; preds = %.thread764, %bb.hy
  %i.os = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.ot = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.os, ptr noundef nonnull @.str.193) #11 ; 0 uses
  br label %.thread706

bb.ia:                                            ; preds = %.thread764
  %i.ou = call ptr @X509_REQ_get_subject_name(ptr noundef %.0498) #11
  call void @print_name(ptr noundef null, ptr noundef nonnull @.str.194, ptr noundef %i.ou) #11
  br label %.thread753

.thread753:                                       ; preds = %bb.hl, %bb.hv, %bb.hy, %bb.ia, %bb.hw
  %.2500761 = phi ptr [ %.0498, %bb.hy ], [ %.0498, %bb.hw ], [ %.0498, %bb.ia ], [ %.1499, %bb.hv ], [ %.1499, %bb.hl ] ; 23 uses
  %.0504757 = phi ptr [ null, %bb.hy ], [ null, %bb.hw ], [ null, %bb.ia ], [ null, %bb.hv ], [ %i.mr, %bb.hl ] ; 20 uses
  %.not637 = icmp eq i32 %.0414, 0
  br i1 %.not637, label %bb.ih, label %bb.ib

bb.ib:                                            ; preds = %.thread753
  %i.ov = icmp eq ptr %.1386732, null
  br i1 %i.ov, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %bb.ib
  %i.ow = call ptr @X509_REQ_get0_pubkey(ptr noundef %.2500761) #11 ; 2 uses
  %i.ox = icmp eq ptr %i.ow, null
  br i1 %i.ox, label %.thread706, label %bb.id

bb.id:                                            ; preds = %bb.ic, %bb.ib
  %.0375 = phi ptr [ %i.ow, %bb.ic ], [ %.1386732, %bb.ib ]
  %i.oy = call i32 @do_X509_REQ_verify(ptr noundef %.2500761, ptr noundef nonnull %.0375, ptr noundef %.0510) #11 ; 2 uses
  %i.oz = icmp slt i32 %i.oy, 0
  br i1 %i.oz, label %.thread706, label %bb.ie

bb.ie:                                            ; preds = %bb.id
  %i.pa = icmp eq i32 %i.oy, 0
  br i1 %i.pa, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.pb = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.pc = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pb, ptr noundef nonnull @.str.195) #11 ; 0 uses
  br label %.thread706

bb.ig:                                            ; preds = %bb.ie
  %i.pd = load ptr, ptr @bio_out, align 8, !tbaa !14
  %i.pe = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pd, ptr noundef nonnull @.str.196) #11 ; 0 uses
  br label %bb.ih

bb.ih:                                            ; preds = %bb.ig, %.thread753
  %i.pf = icmp eq i32 %.0412, 0                   ; 2 uses
  %.not3174 = icmp eq i32 %.0410, 0
  %.not3175 = icmp eq i32 %.0418, 0               ; 3 uses
  %i.pg = or i32 %.0418, %.0410
  %.not3176 = icmp eq i32 %.0404, 0               ; 3 uses
  %i.ph = or i32 %.0404, %i.pg
  %.not3177 = icmp eq i32 %.0402, 0
  %i.pi = or i32 %.0402, %i.ph
  %9 = icmp ne i32 %i.pi, 0
  %or.cond31 = or i1 %i.pf, %9
  br i1 %or.cond31, label %bb.ii, label %bb.jt

bb.ii:                                            ; preds = %bb.ih
  %i.pj = icmp ne ptr %.0478, null
  %or.cond33 = select i1 %i.jl, i1 %i.pj, i1 false
  br i1 %or.cond33, label %bb.ij, label %bb.ik

bb.ij:                                            ; preds = %bb.ii
  %i.pk = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.2452, ptr noundef nonnull dereferenceable(1) %.0478) #13
  %i.pl = icmp eq i32 %i.pk, 0
  %i.pm = select i1 %i.pl, i8 97, i8 119
  br label %bb.ik

bb.ik:                                            ; preds = %bb.ij, %bb.ii
  %i.pn = phi i8 [ %i.pm, %bb.ij ], [ 119, %bb.ii ]
  %i.po = load i32, ptr %i.f, align 4, !tbaa !5
  %i.pp = call ptr @bio_open_default(ptr noundef %.0478, i8 noundef signext %i.pn, i32 noundef %i.po) #11 ; 23 uses
  %i.pq = icmp eq ptr %i.pp, null
  br i1 %i.pq, label %.thread706, label %bb.il

bb.il:                                            ; preds = %bb.ik
  br i1 %.not3177, label %bb.io, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.pr = call ptr @X509_REQ_get0_pubkey(ptr noundef %.2500761) #11 ; 2 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.in, label %.thread770

.thread770:                                       ; preds = %bb.im
  %i.pt = call i32 @PEM_write_bio_PUBKEY(ptr noundef nonnull %i.pp, ptr noundef nonnull %i.pr) #11 ; 0 uses
  br label %bb.io

bb.in:                                            ; preds = %bb.im
  %i.pu = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.pv = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.pu, ptr noundef nonnull @.str.197) #11 ; 0 uses
  br label %.thread706

bb.io:                                            ; preds = %.thread770, %bb.il
  br i1 %.not3174, label %bb.is, label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.pw = call i64 @get_nameopt() #11             ; 2 uses
  %i.px = load i64, ptr %i.i, align 8, !tbaa !12  ; 2 uses
  br i1 %6, label %bb.iq, label %.thread772

bb.iq:                                            ; preds = %bb.ip
  %i.py = call i32 @X509_print_ex(ptr noundef nonnull %i.pp, ptr noundef %.0504757, i64 noundef %i.pw, i64 noundef %i.px) #11 ; 4 uses
  %i.pz = icmp eq i32 %i.py, 0
  br i1 %i.pz, label %bb.ir, label %.thread855

.thread772:                                       ; preds = %bb.ip
  %i.qa = call i32 @X509_REQ_print_ex(ptr noundef nonnull %i.pp, ptr noundef %.2500761, i64 noundef %i.pw, i64 noundef %i.px) #11 ; 4 uses
  %i.qb = icmp eq i32 %i.qa, 0
  br i1 %i.qb, label %.thread774, label %.thread775

bb.ir:                                            ; preds = %bb.iq
  %i.qc = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.qd = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qc, ptr noundef nonnull @.str.198) #11 ; 0 uses
  br label %bb.jt

.thread774:                                       ; preds = %.thread772
  %i.qe = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.qf = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.qe, ptr noundef nonnull @.str.199) #11 ; 0 uses
  br label %bb.jt

bb.is:                                            ; preds = %bb.io
  br i1 %.not3176, label %bb.iv, label %bb.it

.thread855:                                       ; preds = %bb.iq
  br i1 %.not3176, label %.thread860, label %.thread857

.thread775:                                       ; preds = %.thread772
  br i1 %.not3176, label %.thread785, label %.thread781

bb.it:                                            ; preds = %bb.is
  br i1 %6, label %.thread857, label %.thread781

.thread857:                                       ; preds = %.thread855, %bb.it
  %.1434780859 = phi i32 [ 1, %bb.it ], [ %i.py, %.thread855 ]
  %i.qg = call ptr @X509_get_subject_name(ptr noundef %.0504757) #11
  br label %bb.iu

.thread781:                                       ; preds = %.thread775, %bb.it
  %.1434780784 = phi i32 [ 1, %bb.it ], [ %i.qa, %.thread775 ]
  %i.qh = call ptr @X509_REQ_get_subject_name(ptr noundef %.2500761) #11
  br label %bb.iu

bb.iu:                                            ; preds = %.thread781, %.thread857
  %.1434780783 = phi i32 [ %.1434780859, %.thread857 ], [ %.1434780784, %.thread781 ]
  %i.qi = phi ptr [ %i.qg, %.thread857 ], [ %i.qh, %.thread781 ]
  call void @print_name(ptr noundef nonnull %i.pp, ptr noundef nonnull @.str.200, ptr noundef %i.qi) #11
  br label %bb.iv

bb.iv:                                            ; preds = %bb.iu, %bb.is
  %.1434779 = phi i32 [ %.1434780783, %bb.iu ], [ 1, %bb.is ] ; 3 uses
  br i1 %.not3175, label %bb.jf, label %bb.iw

.thread860:                                       ; preds = %.thread855
  br i1 %.not3175, label %bb.jf, label %.thread862

.thread785:                                       ; preds = %.thread775
  br i1 %.not3175, label %bb.jf, label %.thread789

bb.iw:                                            ; preds = %bb.iv
  br i1 %6, label %.thread862, label %.thread789

.thread862:                                       ; preds = %.thread860, %bb.iw
  %.1434779788864 = phi i32 [ %.1434779, %bb.iw ], [ %i.py, %.thread860 ]
  %i.qj = call ptr @X509_get0_pubkey(ptr noundef %.0504757) #11
  br label %bb.ix

.thread789:                                       ; preds = %.thread785, %bb.iw
  %.1434779788792 = phi i32 [ %.1434779, %bb.iw ], [ %i.qa, %.thread785 ]
  %i.qk = call ptr @X509_REQ_get0_pubkey(ptr noundef %.2500761) #11
  br label %bb.ix

bb.ix:                                            ; preds = %.thread789, %.thread862
  %.1434779788791 = phi i32 [ %.1434779788864, %.thread862 ], [ %.1434779788792, %.thread789 ] ; 3 uses
  %.0 = phi ptr [ %i.qj, %.thread862 ], [ %i.qk, %.thread789 ] ; 4 uses
  %i.ql = icmp eq ptr %.0, null
  br i1 %i.ql, label %bb.iy, label %bb.iz

bb.iy:                                            ; preds = %bb.ix
  %i.qm = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.qn = call i32 @BIO_puts(ptr noundef %i.qm, ptr noundef nonnull @.str.201) #11 ; 0 uses
  br label %.thread706

bb.iz:                                            ; preds = %bb.ix
  %i.qo = call i32 @BIO_puts(ptr noundef nonnull %i.pp, ptr noundef nonnull @.str.202) #11 ; 0 uses
  %i.qp = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.0, ptr noundef nonnull @.str.155) #11
  %.not638 = icmp eq i32 %i.qp, 0
  br i1 %.not638, label %bb.ja, label %bb.jb

bb.ja:                                            ; preds = %bb.iz
  %i.qq = call i32 @EVP_PKEY_is_a(ptr noundef nonnull %.0, ptr noundef nonnull @.str.156) #11
  %.not639 = icmp eq i32 %i.qq, 0
  br i1 %.not639, label %bb.jd, label %bb.jb

bb.jb:                                            ; preds = %bb.ja, %bb.iz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #11
  store ptr null, ptr %i.j, align 8, !tbaa !29
  %i.qr = call i32 @EVP_PKEY_get_bn_param(ptr noundef nonnull %.0, ptr noundef nonnull @.str.203, ptr noundef nonnull %i.j) #11
  %.not640.not = icmp eq i32 %i.qr, 0
  br i1 %.not640.not, label %.thread793, label %bb.jc

.thread793:                                       ; preds = %bb.jb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %.thread706

bb.jc:                                            ; preds = %bb.jb
  %i.qs = load ptr, ptr %i.j, align 8, !tbaa !29
  %i.qt = call i32 @BN_print(ptr noundef nonnull %i.pp, ptr noundef %i.qs) #11 ; 0 uses
  %i.qu = load ptr, ptr %i.j, align 8, !tbaa !29
  call void @BN_free(ptr noundef %i.qu) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #11
  br label %bb.je

bb.jd:                                            ; preds = %bb.ja
  %i.qv = call i32 @BIO_puts(ptr noundef nonnull %i.pp, ptr noundef nonnull @.str.204) #11 ; 0 uses
  br label %bb.je

bb.je:                                            ; preds = %bb.jd, %bb.jc
  %i.qw = call i32 @BIO_puts(ptr noundef nonnull %i.pp, ptr noundef nonnull @.str.205) #11 ; 0 uses
  br label %bb.jf

bb.jf:                                            ; preds = %.thread860, %bb.je, %.thread785, %bb.iv
  %.1434779787 = phi i32 [ %i.qa, %.thread785 ], [ %.1434779788791, %bb.je ], [ %.1434779, %bb.iv ], [ %i.py, %.thread860 ] ; 2 uses
  %i.qx = or i32 %.0412, %.0431
  %or.cond35.not = icmp eq i32 %i.qx, 0
  br i1 %or.cond35.not, label %bb.jg, label %bb.jn

bb.jg:                                            ; preds = %bb.jf
  %i.qy = load i32, ptr %i.f, align 4, !tbaa !5
  %i.qz = icmp eq i32 %i.qy, 4
  br i1 %i.qz, label %bb.jh, label %bb.ji

bb.jh:                                            ; preds = %bb.jg
  %i.ra = call i32 @i2d_X509_REQ_bio(ptr noundef nonnull %i.pp, ptr noundef %.2500761) #11
  br label %bb.jl

bb.ji:                                            ; preds = %bb.jg
  %.not641 = icmp eq i32 %.0406, 0
  br i1 %.not641, label %bb.jk, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.rb = call i32 @PEM_write_bio_X509_REQ_NEW(ptr noundef nonnull %i.pp, ptr noundef %.2500761) #11
  br label %bb.jl

bb.jk:                                            ; preds = %bb.ji
  %i.rc = call i32 @PEM_write_bio_X509_REQ(ptr noundef nonnull %i.pp, ptr noundef %.2500761) #11
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jj, %bb.jk, %bb.jh
  %.2429 = phi i32 [ %i.ra, %bb.jh ], [ %i.rb, %bb.jj ], [ %i.rc, %bb.jk ]
  %.not642 = icmp eq i32 %.2429, 0
  br i1 %.not642, label %bb.jm, label %bb.jn

bb.jm:                                            ; preds = %bb.jl
  %i.rd = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.re = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.rd, ptr noundef nonnull @.str.206) #11 ; 0 uses
  br label %.thread706

bb.jn:                                            ; preds = %bb.jl, %bb.jf
  %i.rf = icmp ne ptr %.0504757, null
  %i.rg = and i1 %6, %i.rf
  %or.cond39 = and i1 %i.pf, %i.rg
  br i1 %or.cond39, label %bb.jo, label %bb.jt

bb.jo:                                            ; preds = %bb.jn
  %i.rh = load i32, ptr %i.f, align 4, !tbaa !5
  %i.ri = icmp eq i32 %i.rh, 4
  br i1 %i.ri, label %bb.jp, label %bb.jq

bb.jp:                                            ; preds = %bb.jo
  %i.rj = call i32 @i2d_X509_bio(ptr noundef nonnull %i.pp, ptr noundef nonnull %.0504757) #11
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jo
  %i.rk = call i32 @PEM_write_bio_X509(ptr noundef nonnull %i.pp, ptr noundef nonnull %.0504757) #11
  br label %bb.jr

bb.jr:                                            ; preds = %bb.jq, %bb.jp
  %.3430 = phi i32 [ %i.rj, %bb.jp ], [ %i.rk, %bb.jq ]
  %.not643 = icmp eq i32 %.3430, 0
  br i1 %.not643, label %bb.js, label %bb.jt

bb.js:                                            ; preds = %bb.jr
  %i.rl = load ptr, ptr @bio_err, align 8, !tbaa !14
  %i.rm = call i32 (ptr, ptr, ...) @BIO_printf(ptr noundef %i.rl, ptr noundef nonnull @.str.207) #11 ; 0 uses
  br label %.thread706

.thread706:                                       ; preds = %bb.t, %bb.bf, %bb.br, %bb.u, %.lr.ph1430, %.thread793, %bb.iy, %bb.id, %bb.if, %bb.ic, %bb.bj, %bb.bn, %.loopexit, %duplicated.exit, %bb.av, %bb.bc, %bb.cn, %bb.cr, %bb.dv, %bb.eb, %bb.eg, %bb.er, %bb.fa, %bb.ff, %.thread741, %bb.fu, %bb.fw, %bb.ik, %bb.js, %bb.jm, %bb.in, %bb.bx, %bb.hz, %.thread746, %.thread750, %bb.fy, %bb.fr, %bb.fo, %bb.fj, %bb.ep, %bb.dq, %bb.dj, %bb.dg, %bb.da, %bb.ct, %bb.cm, %.thread704
  %.4514.ph = phi ptr [ %.0510, %.thread704 ], [ %.0510, %bb.cm ], [ %.0510, %bb.ct ], [ %.0510, %bb.da ], [ %.0510, %bb.dg ], [ %.0510, %bb.dj ], [ %.0510, %bb.dq ], [ %.0510, %bb.ep ], [ %.0510, %.thread793 ], [ %.0510, %bb.fj ], [ %.0510, %bb.fo ], [ %.0510, %bb.fr ], [ %.0510, %bb.fy ], [ %.0510, %.thread750 ], [ %.0510, %.thread746 ], [ %.0510, %bb.hz ], [ %.0510, %bb.bj ], [ %.0510, %bb.bx ], [ %.0510, %bb.in ], [ %.0510, %bb.id ], [ %.0510, %bb.jm ], [ %.0510, %bb.js ], [ %.0510, %bb.ik ], [ %.0510, %bb.fw ], [ %.0510, %bb.fu ], [ %.0510, %.thread741 ], [ %.0510, %bb.ff ], [ %.0510, %bb.fa ], [ %.0510, %bb.er ], [ %.0510, %bb.eg ], [ %.0510, %bb.eb ], [ %.0510, %bb.dv ], [ %.0510, %bb.cr ], [ %.0510, %bb.cn ], [ %.0510, %bb.bc ], [ %.0510, %bb.av ], [ %.0510, %bb.ic ], [ %.0510, %bb.if ], [ %.1511, %.loopexit ], [ %.0510, %duplicated.exit ], [ %.0510, %bb.iy ], [ %.0510, %.lr.ph1430 ], [ %.0510, %bb.bn ], [ %.0510, %bb.u ], [ %.0510, %bb.br ], [ %.0510, %bb.bf ], [ %.0510, %bb.t ]
  %.3509.ph = phi ptr [ %.1507, %.thread704 ], [ %.0506, %bb.cm ], [ %.0506, %bb.ct ], [ %.0506, %bb.da ], [ %.0506, %bb.dg ], [ %.0506, %bb.dj ], [ %.0506, %bb.dq ], [ %.0506, %bb.ep ], [ %.0506, %.thread793 ], [ %.0506, %bb.fj ], [ %.0506, %bb.fo ], [ %.0506, %bb.fr ], [ %.0506, %bb.fy ], [ %.0506, %.thread750 ], [ %.0506, %.thread746 ], [ %.0506, %bb.hz ], [ %.1507, %bb.bj ], [ %.0506, %bb.bx ], [ %.0506, %bb.in ], [ %.0506, %bb.id ], [ %.0506, %bb.jm ], [ %.0506, %bb.js ], [ %.0506, %bb.ik ], [ %.0506, %bb.fw ], [ %.0506, %bb.fu ], [ %.0506, %.thread741 ], [ %.0506, %bb.ff ], [ %.0506, %bb.fa ], [ %.0506, %bb.er ], [ %.0506, %bb.eg ], [ %.0506, %bb.eb ], [ %.0506, %bb.dv ], [ %.0506, %bb.cr ], [ %.0506, %bb.cn ], [ %.0506, %bb.bc ], [ %.0506, %bb.av ], [ %.0506, %bb.ic ], [ %.0506, %bb.if ], [ %.0506, %.loopexit ], [ %.1507, %duplicated.exit ], [ %.0506, %bb.iy ], [ %.0506, %.lr.ph1430 ], [ %.1507, %bb.bn ], [ %i.cd, %bb.bf ], [ %.1507, %bb.br ], [ %.0506, %bb.u ], [ %.0506, %bb.t ]
  %.1505.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.0504757, %.thread793 ], [ null, %bb.fj ], [ null, %bb.fo ], [ null, %bb.fr ], [ null, %bb.fy ], [ null, %.thread750 ], [ %i.mr, %.thread746 ], [ null, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0504757, %bb.in ], [ %.0504757, %bb.id ], [ %.0504757, %bb.jm ], [ %.0504757, %bb.js ], [ %.0504757, %bb.ik ], [ null, %bb.fw ], [ null, %bb.fu ], [ null, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0504757, %bb.ic ], [ %.0504757, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0504757, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.1503.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.0502, %.thread793 ], [ null, %bb.fj ], [ null, %bb.fo ], [ %i.ln, %bb.fr ], [ %.0502, %bb.fy ], [ %.0502, %.thread750 ], [ %.0502, %.thread746 ], [ %.0502, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0502, %bb.in ], [ %.0502, %bb.id ], [ %.0502, %bb.jm ], [ %.0502, %bb.js ], [ %.0502, %bb.ik ], [ %.0502, %bb.fw ], [ null, %bb.fu ], [ null, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0502, %bb.ic ], [ %.0502, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0502, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.3501.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.2500761, %.thread793 ], [ null, %bb.fj ], [ %.0498, %bb.fo ], [ %.0498, %bb.fr ], [ %i.ma, %bb.fy ], [ %.1499, %.thread750 ], [ %.1499, %.thread746 ], [ %.0498, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.2500761, %bb.in ], [ %.2500761, %bb.id ], [ %.2500761, %bb.jm ], [ %.2500761, %bb.js ], [ %.2500761, %bb.ik ], [ null, %bb.fw ], [ %.0498, %bb.fu ], [ %.0498, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.2500761, %bb.ic ], [ %.2500761, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.2500761, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.3493.ph = phi ptr [ %.1491, %.thread704 ], [ %.0490, %bb.cm ], [ %.0490, %bb.ct ], [ %.0490, %bb.da ], [ %.0490, %bb.dg ], [ %.0490, %bb.dj ], [ %.0490, %bb.dq ], [ %.0490, %bb.ep ], [ %.0490, %.thread793 ], [ %.0490, %bb.fj ], [ %.0490, %bb.fo ], [ %.0490, %bb.fr ], [ %.0490, %bb.fy ], [ %.0490, %.thread750 ], [ %.0490, %.thread746 ], [ %.0490, %bb.hz ], [ %.1491, %bb.bj ], [ %.0490, %bb.bx ], [ %.0490, %bb.in ], [ %.0490, %bb.id ], [ %.0490, %bb.jm ], [ %.0490, %bb.js ], [ %.0490, %bb.ik ], [ %.0490, %bb.fw ], [ %.0490, %bb.fu ], [ %.0490, %.thread741 ], [ %.0490, %bb.ff ], [ %.0490, %bb.fa ], [ %.0490, %bb.er ], [ %.0490, %bb.eg ], [ %.0490, %bb.eb ], [ %.0490, %bb.dv ], [ %.0490, %bb.cr ], [ %.0490, %bb.cn ], [ %.0490, %bb.bc ], [ %.0490, %bb.av ], [ %.0490, %bb.ic ], [ %.0490, %bb.if ], [ %.0490, %.loopexit ], [ %.1491, %duplicated.exit ], [ %.0490, %bb.iy ], [ %.0490, %.lr.ph1430 ], [ %.1491, %bb.bn ], [ %i.cf, %bb.bf ], [ %.1491, %bb.br ], [ %.0490, %bb.u ], [ %.0490, %bb.t ]
  %.4471.ph = phi ptr [ %.0467, %.thread704 ], [ %.0467, %bb.cm ], [ %.0467, %bb.ct ], [ %.0467, %bb.da ], [ %.0467, %bb.dg ], [ %.0467, %bb.dj ], [ %.0467, %bb.dq ], [ %.0467, %bb.ep ], [ %.0467, %.thread793 ], [ %.0467, %bb.fj ], [ %.0467, %bb.fo ], [ %.0467, %bb.fr ], [ %.0467, %bb.fy ], [ %.0467, %.thread750 ], [ %.0467, %.thread746 ], [ %.0467, %bb.hz ], [ %.0467, %bb.bj ], [ %.0467, %bb.bx ], [ %.0467, %bb.in ], [ %.0467, %bb.id ], [ %.0467, %bb.jm ], [ %.0467, %bb.js ], [ %.0467, %bb.ik ], [ %.0467, %bb.fw ], [ %.0467, %bb.fu ], [ %.0467, %.thread741 ], [ %.0467, %bb.ff ], [ %.0467, %bb.fa ], [ %.0467, %bb.er ], [ %.0467, %bb.eg ], [ %.0467, %bb.eb ], [ %.0467, %bb.dv ], [ %.0467, %bb.cr ], [ %.0467, %bb.cn ], [ %.0467, %bb.bc ], [ %.0467, %bb.av ], [ %.0467, %bb.ic ], [ %.0467, %bb.if ], [ %.1468, %.loopexit ], [ %.0467, %duplicated.exit ], [ %.0467, %bb.iy ], [ %.0467, %.lr.ph1430 ], [ %.0467, %bb.bn ], [ %.0467, %bb.u ], [ %.0467, %bb.br ], [ %.0467, %bb.bf ], [ %.0467, %bb.t ]
  %.1462.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ %.0461, %bb.dq ], [ %.0461, %bb.ep ], [ %.0461, %.thread793 ], [ %.0461, %bb.fj ], [ %.0461, %bb.fo ], [ %.0461, %bb.fr ], [ %.0461, %bb.fy ], [ %.0461, %.thread750 ], [ %.0461, %.thread746 ], [ %.0461, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0461, %bb.in ], [ %.0461, %bb.id ], [ %.0461, %bb.jm ], [ %.0461, %bb.js ], [ %.0461, %bb.ik ], [ %.0461, %bb.fw ], [ %.0461, %bb.fu ], [ %.0461, %.thread741 ], [ %.0461, %bb.ff ], [ %.0461, %bb.fa ], [ %.0461, %bb.er ], [ %.0461, %bb.eg ], [ %.0461, %bb.eb ], [ %.0461, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0461, %bb.ic ], [ %.0461, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0461, %bb.iy ], [ %.0461, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.1460.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ %.0459, %bb.dq ], [ %.0459, %bb.ep ], [ %.0459, %.thread793 ], [ %.0459, %bb.fj ], [ %.0459, %bb.fo ], [ %.0459, %bb.fr ], [ %.0459, %bb.fy ], [ %.0459, %.thread750 ], [ %.0459, %.thread746 ], [ %.0459, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0459, %bb.in ], [ %.0459, %bb.id ], [ %.0459, %bb.jm ], [ %.0459, %bb.js ], [ %.0459, %bb.ik ], [ %.0459, %bb.fw ], [ %.0459, %bb.fu ], [ %.0459, %.thread741 ], [ %.0459, %bb.ff ], [ %.0459, %bb.fa ], [ %.0459, %bb.er ], [ %.0459, %bb.eg ], [ %.0459, %bb.eb ], [ %.0459, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0459, %bb.ic ], [ %.0459, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0459, %bb.iy ], [ %.0459, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.1456.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.0455, %.thread793 ], [ %.0455, %bb.fj ], [ %.0455, %bb.fo ], [ %.0455, %bb.fr ], [ %.0455, %bb.fy ], [ %.0455, %.thread750 ], [ %.0455, %.thread746 ], [ %.0455, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0455, %bb.in ], [ %.0455, %bb.id ], [ %.0455, %bb.jm ], [ %.0455, %bb.js ], [ %.0455, %bb.ik ], [ %.0455, %bb.fw ], [ %.0455, %bb.fu ], [ %.0455, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0455, %bb.ic ], [ %.0455, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0455, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.4447.ph = phi ptr [ %.0443, %.thread704 ], [ %.0443, %bb.cm ], [ %.0443, %bb.ct ], [ %.0443, %bb.da ], [ %.0443, %bb.dg ], [ %.0443, %bb.dj ], [ %.0443, %bb.dq ], [ %.0443, %bb.ep ], [ %.0443, %.thread793 ], [ %.0443, %bb.fj ], [ %.0443, %bb.fo ], [ %.0443, %bb.fr ], [ %.0443, %bb.fy ], [ %.0443, %.thread750 ], [ %.0443, %.thread746 ], [ %.0443, %bb.hz ], [ %.0443, %bb.bj ], [ %.0443, %bb.bx ], [ %.0443, %bb.in ], [ %.0443, %bb.id ], [ %.0443, %bb.jm ], [ %.0443, %bb.js ], [ %.0443, %bb.ik ], [ %.0443, %bb.fw ], [ %.0443, %bb.fu ], [ %.0443, %.thread741 ], [ %.0443, %bb.ff ], [ %.0443, %bb.fa ], [ %.0443, %bb.er ], [ %.0443, %bb.eg ], [ %.0443, %bb.eb ], [ %.0443, %bb.dv ], [ %.0443, %bb.cr ], [ %.0443, %bb.cn ], [ %.0443, %bb.bc ], [ %.0443, %bb.av ], [ %.0443, %bb.ic ], [ %.0443, %bb.if ], [ %.1444, %.loopexit ], [ %.0443, %duplicated.exit ], [ %.0443, %bb.iy ], [ %.0443, %.lr.ph1430 ], [ %.0443, %bb.bn ], [ %.0443, %bb.u ], [ %.0443, %bb.br ], [ %.0443, %bb.bf ], [ %.0443, %bb.t ]
  %.2435.ph = phi i32 [ 1, %.thread704 ], [ 1, %bb.cm ], [ 1, %bb.ct ], [ 1, %bb.da ], [ 1, %bb.dg ], [ 1, %bb.dj ], [ 1, %bb.dq ], [ 1, %bb.ep ], [ %.1434779788791, %.thread793 ], [ 1, %bb.fj ], [ 1, %bb.fo ], [ 1, %bb.fr ], [ 1, %bb.fy ], [ 1, %.thread750 ], [ 1, %.thread746 ], [ 1, %bb.hz ], [ 1, %bb.bj ], [ 1, %bb.bx ], [ 1, %bb.in ], [ 1, %bb.id ], [ %.1434779787, %bb.jm ], [ %.1434779787, %bb.js ], [ 1, %bb.ik ], [ 1, %bb.fw ], [ 1, %bb.fu ], [ 1, %.thread741 ], [ 1, %bb.ff ], [ 1, %bb.fa ], [ 1, %bb.er ], [ 1, %bb.eg ], [ 1, %bb.eb ], [ 1, %bb.dv ], [ 1, %bb.cr ], [ 1, %bb.cn ], [ 1, %bb.bc ], [ 1, %bb.av ], [ 1, %bb.ic ], [ 1, %bb.if ], [ 1, %.loopexit ], [ 1, %duplicated.exit ], [ %.1434779788791, %bb.iy ], [ 1, %.lr.ph1430 ], [ 1, %bb.bn ], [ 1, %bb.u ], [ 1, %bb.br ], [ 1, %bb.bf ], [ 1, %bb.t ]
  %.1417.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ %i.hs, %bb.ep ], [ null, %.thread793 ], [ null, %bb.fj ], [ null, %bb.fo ], [ null, %bb.fr ], [ null, %bb.fy ], [ null, %.thread750 ], [ null, %.thread746 ], [ null, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ null, %bb.in ], [ null, %bb.id ], [ null, %bb.jm ], [ null, %bb.js ], [ null, %bb.ik ], [ null, %bb.fw ], [ null, %bb.fu ], [ null, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ %i.hs, %bb.er ], [ %i.hs, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ null, %bb.ic ], [ null, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ null, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.1393.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.0392740, %.thread793 ], [ null, %bb.fj ], [ null, %bb.fo ], [ %.0392744, %bb.fr ], [ %.0392740, %bb.fy ], [ %.0392740, %.thread750 ], [ %.0392740, %.thread746 ], [ %.0392740, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.0392740, %bb.in ], [ %.0392740, %bb.id ], [ %.0392740, %bb.jm ], [ %.0392740, %bb.js ], [ %.0392740, %bb.ik ], [ %.0392740, %bb.fw ], [ %.0392740, %bb.fu ], [ %.0392744, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ %.0392740, %bb.ic ], [ %.0392740, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.0392740, %bb.iy ], [ null, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.2387.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %.1386732, %.thread793 ], [ %.1386732, %bb.fj ], [ %.1386732, %bb.fo ], [ %.1386732, %bb.fr ], [ %.1386732, %bb.fy ], [ %.1386732, %.thread750 ], [ %.1386732, %.thread746 ], [ %.1386732, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %.1386732, %bb.in ], [ %.1386732, %bb.id ], [ %.1386732, %bb.jm ], [ %.1386732, %bb.js ], [ %.1386732, %bb.ik ], [ %.1386732, %bb.fw ], [ null, %bb.fu ], [ %.1386732, %.thread741 ], [ %.1386732, %bb.ff ], [ %.1386732, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ null, %bb.ic ], [ %.1386732, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %.1386732, %bb.iy ], [ %.1386732, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.3384.ph = phi ptr [ %.0381, %.thread704 ], [ %.0381, %bb.cm ], [ %.0381, %bb.ct ], [ %.0381, %bb.da ], [ %.0381, %bb.dg ], [ %.0381, %bb.dj ], [ %.0381, %bb.dq ], [ %.0381, %bb.ep ], [ %.0381, %.thread793 ], [ %.0381, %bb.fj ], [ %.0381, %bb.fo ], [ %.0381, %bb.fr ], [ %.0381, %bb.fy ], [ %.0381, %.thread750 ], [ %.0381, %.thread746 ], [ %.0381, %bb.hz ], [ %.0381, %bb.bj ], [ %.0381, %bb.bx ], [ %.0381, %bb.in ], [ %.0381, %bb.id ], [ %.0381, %bb.jm ], [ %.0381, %bb.js ], [ %.0381, %bb.ik ], [ %.0381, %bb.fw ], [ %.0381, %bb.fu ], [ %.0381, %.thread741 ], [ %.0381, %bb.ff ], [ %.0381, %bb.fa ], [ %.0381, %bb.er ], [ %.0381, %bb.eg ], [ %.0381, %bb.eb ], [ %.0381, %bb.dv ], [ %.0381, %bb.cr ], [ %.0381, %bb.cn ], [ %.0381, %bb.bc ], [ %.0381, %bb.av ], [ %.0381, %bb.ic ], [ %.0381, %bb.if ], [ %.1382, %.loopexit ], [ %.0381, %duplicated.exit ], [ %.0381, %bb.iy ], [ %.0381, %.lr.ph1430 ], [ %.0381, %bb.bn ], [ %.0381, %bb.u ], [ %.0381, %bb.br ], [ %.0381, %bb.bf ], [ %.0381, %bb.t ]
  %.1378.ph = phi ptr [ null, %.thread704 ], [ null, %bb.cm ], [ null, %bb.ct ], [ null, %bb.da ], [ null, %bb.dg ], [ null, %bb.dj ], [ null, %bb.dq ], [ null, %bb.ep ], [ %i.pp, %.thread793 ], [ null, %bb.fj ], [ null, %bb.fo ], [ null, %bb.fr ], [ null, %bb.fy ], [ null, %.thread750 ], [ null, %.thread746 ], [ null, %bb.hz ], [ null, %bb.bj ], [ null, %bb.bx ], [ %i.pp, %bb.in ], [ null, %bb.id ], [ %i.pp, %bb.jm ], [ %i.pp, %bb.js ], [ null, %bb.ik ], [ null, %bb.fw ], [ null, %bb.fu ], [ null, %.thread741 ], [ null, %bb.ff ], [ null, %bb.fa ], [ null, %bb.er ], [ null, %bb.eg ], [ null, %bb.eb ], [ null, %bb.dv ], [ null, %bb.cr ], [ null, %bb.cn ], [ null, %bb.bc ], [ null, %bb.av ], [ null, %bb.ic ], [ null, %bb.if ], [ null, %.loopexit ], [ null, %duplicated.exit ], [ %i.pp, %bb.iy ], [ %i.jt, %.lr.ph1430 ], [ null, %bb.bn ], [ null, %bb.u ], [ null, %bb.br ], [ null, %bb.bf ], [ null, %bb.t ]
  %.3.ph = phi ptr [ %.0376, %.thread704 ], [ %.0376, %bb.cm ], [ %.0376, %bb.ct ], [ %.0376, %bb.da ], [ %.0376, %bb.dg ], [ %.0376, %bb.dj ], [ %.0376, %bb.dq ], [ %.0376, %bb.ep ], [ %.0376, %.thread793 ], [ %.0376, %bb.fj ], [ %.0376, %bb.fo ], [ %.0376, %bb.fr ], [ %.0376, %bb.fy ], [ %.0376, %.thread750 ], [ %.0376, %.thread746 ], [ %.0376, %bb.hz ], [ %.0376, %bb.bj ], [ %.0376, %bb.bx ], [ %.0376, %bb.in ], [ %.0376, %bb.id ], [ %.0376, %bb.jm ], [ %.0376, %bb.js ], [ %.0376, %bb.ik ], [ %.0376, %bb.fw ], [ %.0376, %bb.fu ], [ %.0376, %.thread741 ], [ %.0376, %bb.ff ], [ %.0376, %bb.fa ], [ %.0376, %bb.er ], [ %.0376, %bb.eg ], [ %.0376, %bb.eb ], [ %.0376, %bb.dv ], [ %.0376, %bb.cr ], [ %.0376, %bb.cn ], [ %.0376, %bb.bc ], [ %.0376, %bb.av ], [ %.0376, %bb.ic ], [ %.0376, %bb.if ], [ %.1, %.loopexit ], [ %.0376, %duplicated.exit ], [ %.0376, %bb.iy ], [ %.0376, %.lr.ph1430 ], [ %.0376, %bb.bn ], [ %.0376, %bb.u ], [ %.0376, %bb.br ], [ %.0376, %bb.bf ], [ %.0376, %bb.t ]
  %i.rn = load ptr, ptr @bio_err, align 8, !tbaa !14
  call void @ERR_print_errors(ptr noundef %i.rn) #11
  br label %bb.jt

bb.jt:                                            ; preds = %bb.c, %.thread774, %bb.ir, %bb.ih, %bb.jr, %bb.jn, %.thread706
  %.3854 = phi ptr [ %.3.ph, %.thread706 ], [ %.0376, %bb.jr ], [ %.0376, %bb.c ], [ %.0376, %bb.ir ], [ %.0376, %.thread774 ], [ %.0376, %bb.ih ], [ %.0376, %bb.jn ]
  %.1378852 = phi ptr [ %.1378.ph, %.thread706 ], [ %i.pp, %bb.jr ], [ null, %bb.c ], [ %i.pp, %bb.ir ], [ %i.pp, %.thread774 ], [ null, %bb.ih ], [ %i.pp, %bb.jn ]
  %.3384850 = phi ptr [ %.3384.ph, %.thread706 ], [ %.0381, %bb.jr ], [ %.0381, %bb.c ], [ %.0381, %bb.ir ], [ %.0381, %.thread774 ], [ %.0381, %bb.ih ], [ %.0381, %bb.jn ]
  %.2387848 = phi ptr [ %.2387.ph, %.thread706 ], [ %.1386732, %bb.jr ], [ null, %bb.c ], [ %.1386732, %bb.ir ], [ %.1386732, %.thread774 ], [ %.1386732, %bb.ih ], [ %.1386732, %bb.jn ]
  %.1393846 = phi ptr [ %.1393.ph, %.thread706 ], [ %.0392740, %bb.jr ], [ null, %bb.c ], [ %.0392740, %bb.ir ], [ %.0392740, %.thread774 ], [ %.0392740, %bb.ih ], [ %.0392740, %bb.jn ]
  %.1417844 = phi ptr [ %.1417.ph, %.thread706 ], [ null, %bb.jr ], [ null, %bb.c ], [ null, %bb.ir ], [ null, %.thread774 ], [ null, %bb.ih ], [ null, %bb.jn ]
  %.2435842 = phi i32 [ %.2435.ph, %.thread706 ], [ 0, %bb.jr ], [ 0, %bb.c ], [ 0, %bb.ir ], [ 0, %.thread774 ], [ 0, %bb.ih ], [ 0, %bb.jn ]
  %.4447840 = phi ptr [ %.4447.ph, %.thread706 ], [ %.0443, %bb.jr ], [ %.0443, %bb.c ], [ %.0443, %bb.ir ], [ %.0443, %.thread774 ], [ %.0443, %bb.ih ], [ %.0443, %bb.jn ]
  %.1456838 = phi ptr [ %.1456.ph, %.thread706 ], [ %.0455, %bb.jr ], [ null, %bb.c ], [ %.0455, %bb.ir ], [ %.0455, %.thread774 ], [ %.0455, %bb.ih ], [ %.0455, %bb.jn ]
  %.1460836 = phi ptr [ %.1460.ph, %.thread706 ], [ %.0459, %bb.jr ], [ null, %bb.c ], [ %.0459, %bb.ir ], [ %.0459, %.thread774 ], [ %.0459, %bb.ih ], [ %.0459, %bb.jn ]
  %.1462834 = phi ptr [ %.1462.ph, %.thread706 ], [ %.0461, %bb.jr ], [ null, %bb.c ], [ %.0461, %bb.ir ], [ %.0461, %.thread774 ], [ %.0461, %bb.ih ], [ %.0461, %bb.jn ]
  %.4471832 = phi ptr [ %.4471.ph, %.thread706 ], [ %.0467, %bb.jr ], [ %.0467, %bb.c ], [ %.0467, %bb.ir ], [ %.0467, %.thread774 ], [ %.0467, %bb.ih ], [ %.0467, %bb.jn ]
  %.3493830 = phi ptr [ %.3493.ph, %.thread706 ], [ %.0490, %bb.jr ], [ %.0490, %bb.c ], [ %.0490, %bb.ir ], [ %.0490, %.thread774 ], [ %.0490, %bb.ih ], [ %.0490, %bb.jn ]
  %.3501828 = phi ptr [ %.3501.ph, %.thread706 ], [ %.2500761, %bb.jr ], [ null, %bb.c ], [ %.2500761, %bb.ir ], [ %.2500761, %.thread774 ], [ %.2500761, %bb.ih ], [ %.2500761, %bb.jn ]
  %.1503826 = phi ptr [ %.1503.ph, %.thread706 ], [ %.0502, %bb.jr ], [ null, %bb.c ], [ %.0502, %bb.ir ], [ %.0502, %.thread774 ], [ %.0502, %bb.ih ], [ %.0502, %bb.jn ]
  %.1505824 = phi ptr [ %.1505.ph, %.thread706 ], [ %.0504757, %bb.jr ], [ null, %bb.c ], [ %.0504757, %bb.ir ], [ %.0504757, %.thread774 ], [ %.0504757, %bb.ih ], [ %.0504757, %bb.jn ]
  %.3509822 = phi ptr [ %.3509.ph, %.thread706 ], [ %.0506, %bb.jr ], [ %.0506, %bb.c ], [ %.0506, %bb.ir ], [ %.0506, %.thread774 ], [ %.0506, %bb.ih ], [ %.0506, %bb.jn ] ; 2 uses
  %.4514820 = phi ptr [ %.4514.ph, %.thread706 ], [ %.0510, %bb.jr ], [ %.0510, %bb.c ], [ %.0510, %bb.ir ], [ %.0510, %.thread774 ], [ %.0510, %bb.ih ], [ %.0510, %bb.jn ]
  %i.ro = load ptr, ptr @req_conf, align 8, !tbaa !26
  call void @NCONF_free(ptr noundef %i.ro) #11
  %i.rp = load ptr, ptr @addext_conf, align 8, !tbaa !26
  call void @NCONF_free(ptr noundef %i.rp) #11
  %i.rq = call i32 @BIO_free(ptr noundef %.3493830) #11 ; 0 uses
  call void @BIO_free_all(ptr noundef %.1378852) #11
  call void @EVP_PKEY_free(ptr noundef %.2387848) #11
  call void @EVP_PKEY_CTX_free(ptr noundef %.1417844) #11
  call void @OPENSSL_sk_free(ptr noundef %.4447840) #11
  call void @OPENSSL_sk_free(ptr noundef %.4471832) #11
  call void @OPENSSL_sk_free(ptr noundef %.4514820) #11
  call void @OPENSSL_LH_doall(ptr noundef %.3509822, ptr noundef nonnull @exts_cleanup) #11
  call void @OPENSSL_LH_free(ptr noundef %.3509822) #11
  call void @release_engine(ptr noundef %.3384850) #11
  %i.rr = load ptr, ptr %i.b, align 8, !tbaa !9
  call void @CRYPTO_free(ptr noundef %i.rr, ptr noundef nonnull @.str.208, i32 noundef 1096) #11
  call void @X509_REQ_free(ptr noundef %.3501828) #11
  call void @X509_NAME_free(ptr noundef %.1456838) #11
  call void @X509_free(ptr noundef %.1505824) #11
  call void @X509_free(ptr noundef %.1503826) #11
  call void @EVP_PKEY_free(ptr noundef %.1393846) #11
  call void @ASN1_INTEGER_free(ptr noundef %.3854) #11
  call void @release_engine(ptr noundef %.0379) #11
  %i.rs = load ptr, ptr %i.c, align 8, !tbaa !9   ; 2 uses
  %.not661 = icmp eq ptr %i.rs, %.1462834
  br i1 %.not661, label %bb.jv, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  call void @CRYPTO_free(ptr noundef %i.rs, ptr noundef nonnull @.str.208, i32 noundef 1105) #11
  br label %bb.jv

bb.jv:                                            ; preds = %bb.ju, %bb.jt
  %i.rt = load ptr, ptr %i.d, align 8, !tbaa !9   ; 2 uses
  %.not662 = icmp eq ptr %i.rt, %.1460836
  br i1 %.not662, label %bb.jx, label %bb.jw

bb.jw:                                            ; preds = %bb.jv
  call void @CRYPTO_free(ptr noundef %i.rt, ptr noundef nonnull @.str.208, i32 noundef 1107) #11
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jv, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.2435842
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @EVP_aes_256_cbc() local_unnamed_addr #2

declare void @opt_set_unknown_name(ptr noundef) local_unnamed_addr #2

declare ptr @opt_init(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @opt_next() local_unnamed_addr #2

declare i32 @BIO_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @opt_help(ptr noundef) local_unnamed_addr #2

declare i32 @opt_format(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @opt_arg() local_unnamed_addr #2

declare ptr @setup_engine_methods(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @opt_rand(i32 noundef) local_unnamed_addr #2

declare i32 @opt_provider(i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_sk_new_null() local_unnamed_addr #2

declare i32 @OPENSSL_sk_push(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @set_nameopt(ptr noundef) local_unnamed_addr #2

declare i32 @set_cert_ex(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @s2i_ASN1_INTEGER(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @set_ext_copy(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_set_thunks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @ext_name_hash(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i64 @OPENSSL_LH_strhash(ptr noundef %0) #11
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i32 @ext_name_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %1) #13
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal i64 @lh_OPENSSL_STRING_hash_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #4 {
bb.a:
  %i.a = tail call i64 %1(ptr noundef %0) #11
  ret i64 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal i32 @lh_OPENSSL_STRING_comp_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #4 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1) #11
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_OPENSSL_STRING_doall_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #4 {
bb.a:
  tail call void %1(ptr noundef %0) #11
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_OPENSSL_STRING_doall_arg_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #4 {
bb.a:
end_hunk_2
