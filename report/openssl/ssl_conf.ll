Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/ssl_conf?download=true
inline.NumInlined: 29
inline.NumDeleted: 11
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
@.str.95 = private unnamed_addr constant [8 x i8] c"TLSv1.1\00", align 1
@.str.96 = private unnamed_addr constant [8 x i8] c"TLSv1.2\00", align 1
@.str.97 = private unnamed_addr constant [8 x i8] c"TLSv1.3\00", align 1
@.str.98 = private unnamed_addr constant [7 x i8] c"DTLSv1\00", align 1
@.str.99 = private unnamed_addr constant [9 x i8] c"DTLSv1.2\00", align 1
@protocol_from_string.versions = internal unnamed_addr constant [8 x { ptr, i32, [4 x i8] }] [{ ptr, i32, [4 x i8] } { ptr @.str.100, i32 0, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.93, i32 768, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.94, i32 769, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.95, i32 770, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.96, i32 771, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.97, i32 772, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.98, i32 65279, [4 x i8] zeroinitializer }, { ptr, i32, [4 x i8] } { ptr @.str.99, i32 65277, [4 x i8] zeroinitializer }], align 16
@.str.100 = private unnamed_addr constant [5 x i8] c"None\00", align 1
@cmd_Options.ssl_option_list = internal constant [27 x %struct.ssl_flag_tbl] [%struct.ssl_flag_tbl { ptr @.str.101, i32 13, i32 13, i64 16384 }, %struct.ssl_flag_tbl { ptr @.str.102, i32 14, i32 13, i64 2048 }, %struct.ssl_flag_tbl { ptr @.str.103, i32 4, i32 12, i64 2147485776 }, %struct.ssl_flag_tbl { ptr @.str.104, i32 11, i32 13, i64 131072 }, %struct.ssl_flag_tbl { ptr @.str.105, i32 16, i32 8, i64 4194304 }, %struct.ssl_flag_tbl { ptr @.str.106, i32 27, i32 8, i64 65536 }, %struct.ssl_flag_tbl { ptr @.str.107, i32 8, i32 8, i64 0 }, %struct.ssl_flag_tbl { ptr @.str.108, i32 10, i32 8, i64 0 }, %struct.ssl_flag_tbl { ptr @.str.109, i32 25, i32 12, i64 262144 }, %struct.ssl_flag_tbl { ptr @.str.110, i32 25, i32 12, i64 4 }, %struct.ssl_flag_tbl { ptr @.str.111, i32 19, i32 12, i64 256 }, %struct.ssl_flag_tbl { ptr @.str.112, i32 14, i32 13, i64 524288 }, %struct.ssl_flag_tbl { ptr @.str.113, i32 15, i32 12, i64 1073741824 }, %struct.ssl_flag_tbl { ptr @.str.114, i32 13, i32 12, i64 1024 }, %struct.ssl_flag_tbl { ptr @.str.115, i32 14, i32 12, i64 34359738368 }, %struct.ssl_flag_tbl { ptr @.str.116, i32 16, i32 12, i64 2097152 }, %struct.ssl_flag_tbl { ptr @.str.117, i32 15, i32 12, i64 1048576 }, %struct.ssl_flag_tbl { ptr @.str.118, i32 10, i32 13, i64 16777216 }, %struct.ssl_flag_tbl { ptr @.str.119, i32 20, i32 13, i64 1 }, %struct.ssl_flag_tbl { ptr @.str.120, i32 7, i32 13, i64 512 }, %struct.ssl_flag_tbl { ptr @.str.121, i32 4, i32 12, i64 8 }, %struct.ssl_flag_tbl { ptr @.str.122, i32 15, i32 268, i64 1 }, %struct.ssl_flag_tbl { ptr @.str.123, i32 24, i32 13, i64 4294967296 }, %struct.ssl_flag_tbl { ptr @.str.124, i32 24, i32 13, i64 8589934592 }, %struct.ssl_flag_tbl { ptr @.str.125, i32 22, i32 12, i64 17179869184 }, %struct.ssl_flag_tbl { ptr @.str.126, i32 19, i32 12, i64 128 }, %struct.ssl_flag_tbl { ptr @.str.127, i32 20, i32 12, i64 68719476736 }], align 16
@.str.101 = private unnamed_addr constant [14 x i8] c"SessionTicket\00", align 1
@.str.102 = private unnamed_addr constant [15 x i8] c"EmptyFragments\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"Bugs\00", align 1
@.str.104 = private unnamed_addr constant [12 x i8] c"Compression\00", align 1
@.str.105 = private unnamed_addr constant [17 x i8] c"ServerPreference\00", align 1
@.str.106 = private unnamed_addr constant [28 x i8] c"NoResumptionOnRenegotiation\00", align 1
@.str.107 = private unnamed_addr constant [9 x i8] c"DHSingle\00", align 1
@.str.108 = private unnamed_addr constant [11 x i8] c"ECDHSingle\00", align 1
@.str.109 = private unnamed_addr constant [26 x i8] c"UnsafeLegacyRenegotiation\00", align 1
@.str.110 = private unnamed_addr constant [26 x i8] c"UnsafeLegacyServerConnect\00", align 1
@.str.111 = private unnamed_addr constant [20 x i8] c"ClientRenegotiation\00", align 1
@.str.112 = private unnamed_addr constant [15 x i8] c"EncryptThenMac\00", align 1
@.str.113 = private unnamed_addr constant [16 x i8] c"NoRenegotiation\00", align 1
@.str.114 = private unnamed_addr constant [14 x i8] c"AllowNoDHEKEX\00", align 1
@.str.115 = private unnamed_addr constant [15 x i8] c"PreferNoDHEKEX\00", align 1
@.str.116 = private unnamed_addr constant [17 x i8] c"PrioritizeChaCha\00", align 1
@.str.117 = private unnamed_addr constant [16 x i8] c"MiddleboxCompat\00", align 1
@.str.118 = private unnamed_addr constant [11 x i8] c"AntiReplay\00", align 1
@.str.119 = private unnamed_addr constant [21 x i8] c"ExtendedMasterSecret\00", align 1
@.str.120 = private unnamed_addr constant [8 x i8] c"CANames\00", align 1
@.str.121 = private unnamed_addr constant [5 x i8] c"KTLS\00", align 1
@.str.122 = private unnamed_addr constant [16 x i8] c"StrictCertCheck\00", align 1
@.str.123 = private unnamed_addr constant [25 x i8] c"TxCertificateCompression\00", align 1
@.str.124 = private unnamed_addr constant [25 x i8] c"RxCertificateCompression\00", align 1
@.str.125 = private unnamed_addr constant [23 x i8] c"KTLSTxZerocopySendfile\00", align 1
@.str.126 = private unnamed_addr constant [20 x i8] c"IgnoreUnexpectedEOF\00", align 1
@.str.127 = private unnamed_addr constant [21 x i8] c"LegacyECPointFormats\00", align 1
@cmd_VerifyMode.ssl_vfy_list = internal constant [6 x %struct.ssl_flag_tbl] [%struct.ssl_flag_tbl { ptr @.str.128, i32 4, i32 516, i64 1 }, %struct.ssl_flag_tbl { ptr @.str.129, i32 7, i32 520, i64 1 }, %struct.ssl_flag_tbl { ptr @.str.130, i32 7, i32 520, i64 3 }, %struct.ssl_flag_tbl { ptr @.str.131, i32 4, i32 520, i64 5 }, %struct.ssl_flag_tbl { ptr @.str.132, i32 20, i32 520, i64 9 }, %struct.ssl_flag_tbl { ptr @.str.133, i32 20, i32 520, i64 11 }], align 16
@.str.128 = private unnamed_addr constant [5 x i8] c"Peer\00", align 1
@.str.129 = private unnamed_addr constant [8 x i8] c"Request\00", align 1
@.str.130 = private unnamed_addr constant [8 x i8] c"Require\00", align 1
@.str.131 = private unnamed_addr constant [5 x i8] c"Once\00", align 1
@.str.132 = private unnamed_addr constant [21 x i8] c"RequestPostHandshake\00", align 1
@.str.133 = private unnamed_addr constant [21 x i8] c"RequirePostHandshake\00", align 1
@.str.134 = private unnamed_addr constant [4 x i8] c"PEM\00", align 1
@.str.135 = private unnamed_addr constant [3 x i8] c"DH\00", align 1
@__func__.ctrl_switch_option = private unnamed_addr constant [19 x i8] c"ctrl_switch_option\00", align 1
@ssl_cmd_switches = internal unnamed_addr constant [31 x { i64, i32, [4 x i8] }] [{ i64, i32, [4 x i8] } { i64 33554432, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 67108864, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 268435456, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 134217728, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 536870912, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 2147485776, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 131072, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 131072, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 4294967296, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 4294967296, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 8589934592, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 8589934592, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } zeroinitializer, { i64, i32, [4 x i8] } { i64 16384, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 4194304, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 262144, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 256, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 4, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 1073741824, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 65536, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 4, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 1024, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 34359738368, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 2097152, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 1, i32 256, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 1048576, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 16777216, i32 1, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 16777216, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 524288, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 1, i32 0, [4 x i8] zeroinitializer }, { i64, i32, [4 x i8] } { i64 68719476736, i32 0, [4 x i8] zeroinitializer }], align 16

; Function Attrs: nounwind uwtable
define range(i32 -3, 3) i32 @SSL_CONF_cmd(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 974, ptr noundef nonnull @__func__.SSL_CONF_cmd) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 385, ptr noundef null) #8
  br label %ctrl_switch_option.exit

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %.not26.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not26.i, label %bb.e, label %ssl_conf_cmd_lookup.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not27.i = icmp eq i32 %i.h, 0
  br i1 %.not27.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.f) #9
  %.not28.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i, label %bb.g, label %ssl_conf_cmd_lookup.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.j = and i32 %i.g, 2
  %.not29.i = icmp eq i32 %i.j, 0
  br i1 %.not29.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.k = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.f) #8
  %.not30.i = icmp eq i32 %i.k, 0
  br i1 %.not30.i, label %._crit_edge.i, label %ssl_conf_cmd_lookup.exit

._crit_edge.i:                                    ; preds = %bb.h
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !22
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge.i, %bb.g
  %i.l = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.f, %bb.g ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  br label %ssl_conf_cmd_skip_prefix.exit

bb.j:                                             ; preds = %bb.c
  %i.n = load i32, ptr %0, align 8, !tbaa !23
  %i.o = and i32 %i.n, 1
  %.not23.i = icmp eq i32 %i.o, 0
  br i1 %.not23.i, label %ssl_conf_cmd_skip_prefix.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load i8, ptr %1, align 1, !tbaa !24
  %.not24.i = icmp eq i8 %i.p, 45
  br i1 %.not24.i, label %bb.l, label %ssl_conf_cmd_lookup.exit

bb.l:                                             ; preds = %bb.k
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
  %.not25.i = icmp eq i8 %i.r, 0
  br i1 %.not25.i, label %ssl_conf_cmd_lookup.exit, label %ssl_conf_cmd_skip_prefix.exit

ssl_conf_cmd_skip_prefix.exit:                    ; preds = %bb.l, %bb.j, %bb.i
  %.032 = phi ptr [ %i.m, %bb.i ], [ %1, %bb.j ], [ %i.q, %bb.l ] ; 4 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %ssl_conf_cmd_skip_prefix.exit, %ssl_conf_cmd_allowed.exit.thread.i
  %.028.i = phi i64 [ %i.ak, %ssl_conf_cmd_allowed.exit.thread.i ], [ 0, %ssl_conf_cmd_skip_prefix.exit ]
  %.01627.i = phi ptr [ %i.al, %ssl_conf_cmd_allowed.exit.thread.i ], [ @ssl_conf_cmds, %ssl_conf_cmd_skip_prefix.exit ] ; 7 uses
  %.val.i = load i32, ptr %0, align 8, !tbaa !23  ; 5 uses
  %i.s = getelementptr i8, ptr %.01627.i, i64 24
  %.016.val.i = load i16, ptr %i.s, align 8, !tbaa !27
  %i.t = zext i16 %.016.val.i to i32              ; 3 uses
  %i.u = and i32 %i.t, 8
  %.not.i.i = icmp ne i32 %i.u, 0
  %i.v = and i32 %.val.i, 8
  %.not8.i.i = icmp eq i32 %i.v, 0
  %or.cond.i.i = select i1 %.not.i.i, i1 %.not8.i.i, i1 false
  br i1 %or.cond.i.i, label %ssl_conf_cmd_allowed.exit.thread.i, label %bb.m

bb.m:                                             ; preds = %.preheader.i
  %i.w = and i32 %i.t, 4
  %.not9.i.i = icmp ne i32 %i.w, 0
  %i.x = and i32 %.val.i, 4
  %.not10.i.i = icmp eq i32 %i.x, 0
  %or.cond13.i.i = select i1 %.not9.i.i, i1 %.not10.i.i, i1 false
  br i1 %or.cond13.i.i, label %ssl_conf_cmd_allowed.exit.thread.i, label %ssl_conf_cmd_allowed.exit.i

ssl_conf_cmd_allowed.exit.i:                      ; preds = %bb.m
  %i.y = and i32 %i.t, 32
  %.not11.i.i = icmp ne i32 %i.y, 0
  %i.z = and i32 %.val.i, 32
  %.not12.i.i = icmp eq i32 %i.z, 0
  %or.cond14.not.i.not.i = select i1 %.not11.i.i, i1 %.not12.i.i, i1 false
  br i1 %or.cond14.not.i.not.i, label %ssl_conf_cmd_allowed.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %ssl_conf_cmd_allowed.exit.i
  %i.aa = and i32 %.val.i, 1
  %.not21.i = icmp eq i32 %i.aa, 0
  br i1 %.not21.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ab = getelementptr inbounds nuw i8, ptr %.01627.i, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %.not22.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ac, ptr noundef nonnull dereferenceable(1) %.032) #9
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.af = and i32 %.val.i, 2
  %.not23.i26 = icmp eq i32 %i.af, 0
  br i1 %.not23.i26, label %ssl_conf_cmd_allowed.exit.thread.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ag = getelementptr inbounds nuw i8, ptr %.01627.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !29 ; 2 uses
  %.not24.i27 = icmp eq ptr %i.ah, null
  br i1 %.not24.i27, label %ssl_conf_cmd_allowed.exit.thread.i, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ai = tail call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.ah, ptr noundef nonnull %.032) #8
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.t, label %ssl_conf_cmd_allowed.exit.thread.i

ssl_conf_cmd_allowed.exit.thread.i:               ; preds = %bb.s, %bb.r, %bb.q, %ssl_conf_cmd_allowed.exit.i, %bb.m, %.preheader.i
  %i.ak = add nuw nsw i64 %.028.i, 1              ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01627.i, i64 32
  %exitcond.not.i = icmp eq i64 %i.ak, 61
  br i1 %exitcond.not.i, label %ssl_conf_cmd_lookup.exit, label %.preheader.i, !llvm.loop !0

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %.01627.i, i64 26
  %i.an = load i16, ptr %i.am, align 2, !tbaa !31
  %i.ao = icmp eq i16 %i.an, 4
  br i1 %i.ao, label %bb.u, label %bb.ad

bb.u:                                             ; preds = %bb.t
  %i.ap = ptrtoint ptr %.01627.i to i64
  %i.aq = sub i64 %i.ap, ptrtoint (ptr @ssl_conf_cmds to i64)
  %i.ar = ashr exact i64 %i.aq, 5                 ; 4 uses
  %i.as = icmp ugt i64 %i.ar, 30
  br i1 %i.as, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 961, ptr noundef nonnull @__func__.ctrl_switch_option) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 786691, ptr noundef null) #8
  br label %ctrl_switch_option.exit

bb.w:                                             ; preds = %bb.u
  %i.at = getelementptr inbounds nuw [16 x i8], ptr @ssl_cmd_switches, i64 %i.ar ; 2 uses
  %i.au = load i64, ptr %i.at, align 16, !tbaa !131 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !32 ; 5 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %ctrl_switch_option.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !132
  %i.ba = and i32 %i.az, 3840
  switch i32 %i.ba, label %ctrl_switch_option.exit [
    i32 256, label %bb.ac
    i32 512, label %bb.y
    i32 0, label %bb.z
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.ac

bb.z:                                             ; preds = %bb.x
  %3 = shl nuw nsw i64 1, %i.ar
  %4 = and i64 %3, 2045769087
  %.not16.i.not.not.i = icmp eq i64 %4, 0
  br i1 %.not16.i.not.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.bc = or i64 %i.bb, %i.au
  store i64 %i.bc, ptr %i.aw, align 8, !tbaa !33
  br label %ctrl_switch_option.exit

bb.ab:                                            ; preds = %bb.z
  %i.bd = xor i64 %i.au, -1
  %i.be = load i64, ptr %i.aw, align 8, !tbaa !33
  %i.bf = and i64 %i.be, %i.bd
  store i64 %i.bf, ptr %i.aw, align 8, !tbaa !33
  br label %ctrl_switch_option.exit

bb.ac:                                            ; preds = %bb.y, %bb.x
  %.sink.i.i = phi i64 [ 72, %bb.y ], [ 64, %bb.x ]
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.bg, align 8, !tbaa !34 ; 2 uses
  %5 = shl nuw nsw i64 1, %i.ar
  %6 = and i64 %5, 2045769087
  %.not17.i.not.not.i = icmp eq i64 %6, 0
  %i.bh = load i32, ptr %.0.i.i, align 4, !tbaa !35 ; 2 uses
  %i.bi = trunc i64 %i.au to i32                  ; 2 uses
  %i.bj = xor i32 %i.bi, -1
  %i.bk = and i32 %i.bh, %i.bj
  %i.bl = or i32 %i.bh, %i.bi
  %storemerge.i.i = select i1 %.not17.i.not.not.i, i32 %i.bk, i32 %i.bl
  store i32 %storemerge.i.i, ptr %.0.i.i, align 4, !tbaa !35
  br label %ctrl_switch_option.exit

bb.ad:                                            ; preds = %bb.t
  %i.bm = icmp eq ptr %2, null                    ; 2 uses
  br i1 %i.bm, label %bb.ag, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bn = load ptr, ptr %.01627.i, align 8, !tbaa !133
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %0, ptr noundef nonnull %2) #8 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, 0
  br i1 %i.bp, label %ctrl_switch_option.exit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not23 = icmp eq i32 %i.bo, -2
  %spec.store.select = select i1 %.not23, i32 -2, i32 0
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ad, %bb.af
  %.0 = phi i32 [ -3, %bb.ad ], [ %spec.store.select, %bb.af ] ; 2 uses
  %i.bq = load i32, ptr %0, align 8, !tbaa !23
  %i.br = and i32 %i.bq, 16
  %.not24 = icmp eq i32 %i.br, 0
  br i1 %.not24, label %ctrl_switch_option.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 999, ptr noundef nonnull @__func__.SSL_CONF_cmd) #8
  %i.bs = select i1 %i.bm, ptr @.str.2, ptr %2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 384, ptr noundef nonnull @.str.1, ptr noundef nonnull %.032, ptr noundef nonnull %i.bs) #8
  br label %ctrl_switch_option.exit

ssl_conf_cmd_lookup.exit:                         ; preds = %ssl_conf_cmd_allowed.exit.thread.i, %bb.l, %bb.k, %bb.f, %bb.d, %bb.h
  %.03236 = phi ptr [ %1, %bb.l ], [ %1, %bb.h ], [ %1, %bb.d ], [ %1, %bb.f ], [ %1, %bb.k ], [ %.032, %ssl_conf_cmd_allowed.exit.thread.i ]
  %i.bt = load i32, ptr %0, align 8, !tbaa !23
  %i.bu = and i32 %i.bt, 16
  %.not22 = icmp eq i32 %i.bu, 0
  br i1 %.not22, label %ctrl_switch_option.exit, label %bb.ai

bb.ai:                                            ; preds = %ssl_conf_cmd_lookup.exit
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 1007, ptr noundef nonnull @__func__.SSL_CONF_cmd) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 386, ptr noundef nonnull @.str.3, ptr noundef %.03236) #8
  br label %ctrl_switch_option.exit

ctrl_switch_option.exit:                          ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v, %ssl_conf_cmd_lookup.exit, %bb.ai, %bb.ae, %bb.ah, %bb.ag, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ %.0, %bb.ag ], [ -2, %ssl_conf_cmd_lookup.exit ], [ 2, %bb.ae ], [ %.0, %bb.ah ], [ -2, %bb.ai ], [ 0, %bb.v ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %bb.aa ], [ 1, %bb.ab ], [ 1, %bb.ac ]
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 -3, 3) i32 @SSL_CONF_cmd_argv(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i32, ptr %1, align 4, !tbaa !35     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.thread31, label %.thread29

.thread:                                          ; preds = %bb.a
  %i.c = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !36   ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %.thread29, label %bb.c

.thread31:                                        ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !134    ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !36   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread29, label %.thread32

.thread32:                                        ; preds = %.thread31
  %.not39 = icmp eq i32 %i.a, 1
  br i1 %.not39, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread, %.thread32
  %i.i = phi ptr [ %i.f, %.thread32 ], [ %i.c, %.thread ]
  %i.j = phi ptr [ %i.g, %.thread32 ], [ %i.d, %.thread ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %.thread32, %bb.c
  %i.m = phi ptr [ %i.j, %bb.c ], [ %i.g, %.thread32 ]
  %.0 = phi ptr [ %i.l, %bb.c ], [ null, %.thread32 ]
  %i.n = load i32, ptr %0, align 8, !tbaa !23
  %i.o = and i32 %i.n, -4
  %i.p = or disjoint i32 %i.o, 1
  store i32 %i.p, ptr %0, align 8, !tbaa !23
  %i.q = tail call i32 @SSL_CONF_cmd(ptr noundef nonnull %0, ptr noundef nonnull %i.m, ptr noundef %.0) ; 7 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %2, align 8, !tbaa !134
  %i.t = zext nneg i32 %i.q to i64
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %2, align 8, !tbaa !134
  br i1 %.not, label %.thread29, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i32, ptr %1, align 4, !tbaa !35
  %i.w = sub nsw i32 %i.v, %i.q
  store i32 %i.w, ptr %1, align 4, !tbaa !35
  br label %.thread29

bb.g:                                             ; preds = %bb.d
  switch i32 %i.q, label %bb.i [
    i32 -2, label %.thread29
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  br label %.thread29

bb.i:                                             ; preds = %bb.g
  br label %.thread29

.thread29:                                        ; preds = %.thread31, %bb.g, %bb.e, %bb.f, %.thread, %bb.b, %bb.i, %bb.h
  %.025 = phi i32 [ %i.q, %bb.i ], [ 0, %bb.b ], [ 0, %.thread ], [ %i.q, %bb.e ], [ -1, %bb.h ], [ %i.q, %bb.f ], [ 0, %bb.g ], [ 0, %.thread31 ]
  ret i32 %.025
}

; Function Attrs: nounwind uwtable
define range(i32 0, 65536) i32 @SSL_CONF_cmd_value_type(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %ssl_conf_cmd_skip_prefix.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !21   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !22   ; 4 uses
  %.not26.i = icmp ugt i64 %i.d, %i.f
  br i1 %.not26.i, label %bb.d, label %ssl_conf_cmd_skip_prefix.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.h = and i32 %i.g, 1
  %.not27.i = icmp eq i32 %i.h, 0
  br i1 %.not27.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @strncmp(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.f) #9
  %.not28.i = icmp eq i32 %i.i, 0
  br i1 %.not28.i, label %bb.f, label %ssl_conf_cmd_skip_prefix.exit.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.j = and i32 %i.g, 2
  %.not29.i = icmp eq i32 %i.j, 0
  br i1 %.not29.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = tail call i32 @OPENSSL_strncasecmp(ptr noundef nonnull %1, ptr noundef nonnull %i.c, i64 noundef %i.f) #8
  %.not30.i = icmp eq i32 %i.k, 0
  br i1 %.not30.i, label %._crit_edge.i, label %ssl_conf_cmd_skip_prefix.exit.thread

._crit_edge.i:                                    ; preds = %bb.g
  %.pre.i = load i64, ptr %i.e, align 8, !tbaa !22
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i, %bb.f
  %i.l = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.f, %bb.f ]
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.l
  br label %ssl_conf_cmd_skip_prefix.exit

bb.i:                                             ; preds = %bb.b
  %i.n = load i32, ptr %0, align 8, !tbaa !23
  %i.o = and i32 %i.n, 1
  %.not23.i = icmp eq i32 %i.o, 0
  br i1 %.not23.i, label %ssl_conf_cmd_skip_prefix.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = load i8, ptr %1, align 1, !tbaa !24
  %.not24.i = icmp eq i8 %i.p, 45
  br i1 %.not24.i, label %bb.k, label %ssl_conf_cmd_skip_prefix.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.r = load i8, ptr %i.q, align 1, !tbaa !24
end_hunk_0
