Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/curl/original/pop3?download=true
inline.NumInlined: 47
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.Curl_protocol = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Curl_scheme = type { ptr, ptr, i64, i64, i32, i16 }
%struct.MD5_params = type { ptr, ptr, ptr, i32, i32 }

@Curl_protocol_pop3 = local_unnamed_addr constant %struct.Curl_protocol { ptr @pop3_setup_connection, ptr @pop3_do, ptr @pop3_done, ptr null, ptr @pop3_connect, ptr @pop3_multi_statemach, ptr @pop3_doing, ptr @pop3_pollset, ptr @pop3_pollset, ptr null, ptr null, ptr @pop3_disconnect, ptr @pop3_write, ptr null, ptr null, ptr null, ptr null }, align 8
@Curl_ccalloc = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [21 x i8] c"meta:proto:pop3:easy\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"meta:proto:pop3:conn\00", align 1
@Curl_cfree = external local_unnamed_addr global ptr, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"RETR\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"APOP\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"AUTH\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"CAPA\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"DELE\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"MSG\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"PASS\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.14 = private unnamed_addr constant [5 x i8] c"RSET\00", align 1
@.str.15 = private unnamed_addr constant [5 x i8] c"STAT\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"STLS\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"TOP\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"UIDL\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"USER\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"UTF8\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"XTND\00", align 1
@pop3cmds = internal unnamed_addr constant [18 x { ptr, i16, i8, [5 x i8] }] [{ ptr, i16, i8, [5 x i8] } { ptr @.str.6, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.7, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.8, i16 4, i8 3, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.9, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.2, i16 4, i8 1, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.10, i16 3, i8 3, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.11, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.12, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.13, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.3, i16 4, i8 3, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.14, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.15, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.16, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.17, i16 3, i8 3, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.18, i16 4, i8 1, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.19, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.20, i16 4, i8 0, [5 x i8] zeroinitializer }, { ptr, i16, i8, [5 x i8] } { ptr @.str.21, i16 4, i8 3, [5 x i8] zeroinitializer }], align 16
@Curl_scheme_pop3s = external constant %struct.Curl_scheme, align 8
@.str.23 = private unnamed_addr constant [36 x i8] c"Got unexpected pop3-server response\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"SASL \00", align 1
@.str.25 = private unnamed_addr constant [20 x i8] c"STLS not supported.\00", align 1
@Curl_DIGEST_MD5 = external constant %struct.MD5_params, align 8
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [5 x i8] c"%02x\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"APOP %s %s\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"USER %s\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"STARTTLS denied\00", align 1
@.str.31 = private unnamed_addr constant [25 x i8] c"Authentication cancelled\00", align 1
@.str.32 = private unnamed_addr constant [26 x i8] c"Authentication failed: %d\00", align 1
@.str.33 = private unnamed_addr constant [18 x i8] c"Access denied. %c\00", align 1
@.str.34 = private unnamed_addr constant [8 x i8] c"PASS %s\00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"pop\00", align 1
@saslpop3 = internal constant { ptr, ptr, ptr, ptr, ptr, i64, i32, i32, i16, i16, [4 x i8] } { ptr @.str.37, ptr @pop3_perform_auth, ptr @pop3_continue_auth, ptr @pop3_cancel_auth, ptr @pop3_get_message, i64 247, i32 42, i32 43, i16 -33, i16 1, [4 x i8] zeroinitializer }, align 8
@.str.39 = private unnamed_addr constant [11 x i8] c"AUTH %s %s\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"AUTH %s\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.42 = private unnamed_addr constant [6 x i8] c"AUTH=\00", align 1
@.str.43 = private unnamed_addr constant [6 x i8] c"+APOP\00", align 1
@.str.44 = private unnamed_addr constant [6 x i8] c"\0D\0A.\0D\0A\00", align 1

; Function Attrs: nounwind uwtable
define internal range(i32 0, 28) i32 @pop3_setup_connection(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !9
  %i.b = tail call ptr %i.a(i64 noundef 1, i64 noundef 24) #5 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @Curl_meta_set(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull %i.b, ptr noundef nonnull @pop3_easy_dtor) #5
  %.not8 = icmp eq i32 %i.c, 0
  br i1 %.not8, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr @Curl_ccalloc, align 8, !tbaa !9
  %i.e = tail call ptr %i.d(i64 noundef 1, i64 noundef 224) #5 ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @Curl_conn_meta_set(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.e, ptr noundef nonnull @pop3_conn_dtor) #5
  %.not10 = icmp eq i32 %i.f, 0
  %spec.select = select i1 %.not10, i32 0, i32 27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.b
  %.0 = phi i32 [ 27, %bb.c ], [ 27, %bb.a ], [ 27, %bb.b ], [ %spec.select, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @pop3_do(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #0 {
bb.a:
  store i8 0, ptr %1, align 1, !tbaa !11
  %i.a = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str) #5 ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pop3_regular_transfer.exit, label %pop3_parse_url_path.exit

pop3_parse_url_path.exit:                         ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4232
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !102
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = tail call i32 @Curl_urldecode(ptr noundef nonnull %i.d, i64 noundef 0, ptr noundef nonnull %i.e, ptr noundef null, i32 noundef 3) #5 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %pop3_regular_transfer.exit

bb.b:                                             ; preds = %pop3_parse_url_path.exit
  %i.g = tail call ptr @Curl_meta_get(ptr noundef nonnull %0, ptr noundef nonnull @.str) #5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 1528
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !103  ; 2 uses
  %.not.i13 = icmp eq ptr %i.g, null
  br i1 %.not.i13, label %pop3_regular_transfer.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not10.i = icmp eq ptr %i.i, null
  br i1 %.not10.i, label %pop3_parse_custom_request.exit.thread, label %pop3_parse_custom_request.exit

pop3_parse_custom_request.exit:                   ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = tail call i32 @Curl_urldecode(ptr noundef nonnull %i.i, i64 noundef 0, ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 3) #5 ; 2 uses
  %.not12 = icmp eq i32 %i.k, 0
  br i1 %.not12, label %pop3_parse_custom_request.exit.thread, label %pop3_regular_transfer.exit

pop3_parse_custom_request.exit.thread:            ; preds = %bb.c, %pop3_parse_custom_request.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 -1, ptr %i.l, align 8, !tbaa !104
  tail call void @Curl_pgrsReset(ptr noundef nonnull %0) #5
  %i.m = tail call ptr @Curl_meta_get(ptr noundef nonnull %0, ptr noundef nonnull @.str) #5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %pop3_regular_transfer.exit, label %bb.d

bb.d:                                             ; preds = %pop3_parse_custom_request.exit.thread
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.p = tail call ptr @Curl_meta_get(ptr noundef nonnull %0, ptr noundef nonnull @.str) #5 ; 4 uses
  %i.q = tail call ptr @Curl_conn_meta_get(ptr noundef %i.o, ptr noundef nonnull @.str.1) #5 ; 3 uses
  %i.r = icmp ne ptr %i.p, null
  %i.s = icmp ne ptr %i.q, null
  %or.cond.i.i.i = select i1 %i.r, i1 %i.s, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %pop3_regular_transfer.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76   ; 3 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !77
  %i.w = icmp eq i8 %i.v, 0
  br i1 %i.w, label %.thread.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 2187
  %i.y = load i64, ptr %i.x, align 1
  %i.z = and i64 %i.y, 16384
  %.not.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not.i.i.i, label %.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i32 1, ptr %i.p, align 8, !tbaa !78
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %bb.g, %bb.f, %bb.e
  %.0.i.i.i = phi ptr [ @.str.2, %bb.g ], [ @.str.3, %bb.f ], [ @.str.2, %bb.e ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !79 ; 3 uses
  %.not32.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not32.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread.i.i.i
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !77
  %.not33.i.i.i = icmp eq i8 %i.ac, 0
  %spec.select.i.i.i = select i1 %.not33.i.i.i, ptr %.0.i.i.i, ptr %i.ab
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.thread.i.i.i
  %.1.i.i.i = phi ptr [ %.0.i.i.i, %.thread.i.i.i ], [ %spec.select.i.i.i, %bb.h ] ; 38 uses
  %i.ad = load i8, ptr %i.u, align 1, !tbaa !77
  %.not34.i.i.i = icmp eq i8 %i.ad, 0
  br i1 %.not34.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.4, ptr noundef nonnull %.1.i.i.i, ptr noundef nonnull %i.u) #5
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.af = tail call i32 (ptr, ptr, ptr, ...) @Curl_pp_sendf(ptr noundef nonnull %0, ptr noundef nonnull %i.q, ptr noundef nonnull @.str.5, ptr noundef nonnull %.1.i.i.i) #5
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.026.i.i.i = phi i32 [ %i.ae, %bb.j ], [ %i.af, %bb.k ] ; 2 uses
  %.not35.i.i.i = icmp eq i32 %.026.i.i.i, 0
  br i1 %.not35.i.i.i, label %bb.m, label %pop3_regular_transfer.exit

bb.m:                                             ; preds = %bb.l
  %.val.i.i.i = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.ag = tail call ptr @Curl_conn_meta_get(ptr noundef %.val.i.i.i, ptr noundef nonnull @.str.1) #5 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i.i.i, label %pop3_state.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 152
  store i32 9, ptr %i.ah, align 8, !tbaa !84
  br label %pop3_state.exit.i.i.i

pop3_state.exit.i.i.i:                            ; preds = %bb.n, %bb.m
  %i.ai = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.6, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.i36.i.i.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i36.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %pop3_state.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !77
  switch i8 %i.ak, label %bb.p [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

.split.i.i.i:                                     ; preds = %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o
  %.017.lcssa20.i.i.i.i = phi i64 [ 0, %bb.o ], [ 1, %bb.q ], [ 2, %bb.s ], [ 3, %bb.u ], [ 4, %bb.w ], [ 5, %bb.y ], [ 6, %bb.aa ], [ 7, %bb.ac ], [ 8, %bb.ae ], [ 9, %bb.ag ], [ 10, %bb.ai ], [ 11, %bb.ak ], [ 12, %bb.am ], [ 13, %bb.ao ], [ 14, %bb.aq ], [ 15, %bb.as ], [ 16, %bb.au ], [ 17, %bb.aw ]
  %i.al = lshr i64 139812, %.017.lcssa20.i.i.i.i
  %.fr.i.i.i = freeze i64 %i.al
  %i.am = trunc i64 %.fr.i.i.i to i1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 1            ; 2 uses
  br i1 %i.am, label %bb.ax, label %bb.ay

bb.p:                                             ; preds = %bb.o, %pop3_state.exit.i.i.i
  %i.ap = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.7, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.1.i.i.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not.1.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aq = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !77
  switch i8 %i.ar, label %bb.r [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]
end_hunk_0
begin_hunk_1_@pop3_do:bb.a
  %i.av = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.9, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.3.i.i.i.i = icmp eq i32 %i.av, 0
  br i1 %.not.3.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !77
  switch i8 %i.ax, label %bb.v [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ay = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.2, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.4.i.i.i.i = icmp eq i32 %i.ay, 0
  br i1 %.not.4.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !77
  switch i8 %i.ba, label %bb.x [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.bb = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.10, ptr noundef nonnull %.1.i.i.i, i64 noundef 3) #5
  %.not.5.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.5.i.i.i.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bc = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 3
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !77
  switch i8 %i.bd, label %bb.z [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.be = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.11, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.6.i.i.i.i = icmp eq i32 %i.be, 0
  br i1 %.not.6.i.i.i.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !77
  switch i8 %i.bg, label %bb.ab [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bh = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.12, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.7.i.i.i.i = icmp eq i32 %i.bh, 0
  br i1 %.not.7.i.i.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !77
  switch i8 %i.bj, label %bb.ad [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.bk = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.13, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.8.i.i.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.8.i.i.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !77
  switch i8 %i.bm, label %bb.af [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.bn = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.3, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.9.i.i.i.i = icmp eq i32 %i.bn, 0
  br i1 %.not.9.i.i.i.i, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !77
  switch i8 %i.bp, label %bb.ah [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bq = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.14, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.10.i.i.i.i = icmp eq i32 %i.bq, 0
  br i1 %.not.10.i.i.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.br = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !77
  switch i8 %i.bs, label %bb.aj [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.bt = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.15, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.11.i.i.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not.11.i.i.i.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.bu = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !77
  switch i8 %i.bv, label %bb.al [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bw = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.16, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.12.i.i.i.i = icmp eq i32 %i.bw, 0
  br i1 %.not.12.i.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.bx = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !77
  switch i8 %i.by, label %bb.an [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.bz = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.17, ptr noundef nonnull %.1.i.i.i, i64 noundef 3) #5
  %.not.13.i.i.i.i = icmp eq i32 %i.bz, 0
  br i1 %.not.13.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 3
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !77
  switch i8 %i.cb, label %bb.ap [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %i.cc = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.18, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.14.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.14.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !77
  switch i8 %i.ce, label %bb.ar [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.cf = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.19, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.15.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.15.i.i.i.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.cg = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !77
  switch i8 %i.ch, label %bb.at [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.ci = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.20, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.16.i.i.i.i = icmp eq i32 %i.ci, 0
  br i1 %.not.16.i.i.i.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.cj = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !77
  switch i8 %i.ck, label %bb.av [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

bb.av:                                            ; preds = %bb.au, %bb.at
  %i.cl = tail call i32 @curl_strnequal(ptr noundef nonnull @.str.21, ptr noundef nonnull %.1.i.i.i, i64 noundef 4) #5
  %.not.17.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.17.i.i.i.i, label %pop3_is_multiline.exit.thread.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i.i.i, i64 4
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !77
  switch i8 %i.cn, label %pop3_is_multiline.exit.thread.i.i.i [
    i8 0, label %pop3_is_multiline.exit.i.i.i
    i8 32, label %.split.i.i.i
  ]

pop3_is_multiline.exit.thread.i.i.i:              ; preds = %bb.aw, %bb.av
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 1
  br label %bb.ax

pop3_is_multiline.exit.i.i.i:                     ; preds = %bb.aw, %bb.au, %bb.as, %bb.aq, %bb.ao, %bb.am, %bb.ak, %bb.ai, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o
  %.lcssa.i.i.i.i = phi ptr [ @pop3cmds, %bb.o ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 16), %bb.q ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 32), %bb.s ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 48), %bb.u ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 64), %bb.w ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 80), %bb.y ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 96), %bb.aa ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 112), %bb.ac ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 128), %bb.ae ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 144), %bb.ag ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 160), %bb.ai ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 176), %bb.ak ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 192), %bb.am ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 208), %bb.ao ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 224), %bb.aq ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 240), %bb.as ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 256), %bb.au ], [ getelementptr inbounds nuw (i8, ptr @pop3cmds, i64 272), %bb.aw ]
  %2 = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 10
  %3 = load i8, ptr %2, align 2
  %.fr40.i.i.i = freeze i8 %3
  %i.cq = trunc i8 %.fr40.i.i.i to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 417 ; 3 uses
  %i.cs = load i32, ptr %i.cr, align 1            ; 2 uses
  br i1 %i.cq, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %pop3_is_multiline.exit.i.i.i, %pop3_is_multiline.exit.thread.i.i.i, %.split.i.i.i
  %i.ct = phi i32 [ %i.cp, %pop3_is_multiline.exit.thread.i.i.i ], [ %i.cs, %pop3_is_multiline.exit.i.i.i ], [ %i.ao, %.split.i.i.i ]
  %i.cu = phi ptr [ %i.co, %pop3_is_multiline.exit.thread.i.i.i ], [ %i.cr, %pop3_is_multiline.exit.i.i.i ], [ %i.an, %.split.i.i.i ]
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %pop3_is_multiline.exit.i.i.i, %.split.i.i.i
  %i.cv = phi i32 [ %i.ct, %bb.ax ], [ %i.cs, %pop3_is_multiline.exit.i.i.i ], [ %i.ao, %.split.i.i.i ]
  %i.cw = phi ptr [ %i.cu, %bb.ax ], [ %i.cr, %pop3_is_multiline.exit.i.i.i ], [ %i.an, %.split.i.i.i ]
  %i.cx = phi i32 [ 0, %bb.ax ], [ 65536, %pop3_is_multiline.exit.i.i.i ], [ 65536, %.split.i.i.i ]
  %i.cy = and i32 %i.cv, -65537
  %i.cz = or disjoint i32 %i.cx, %i.cy
  store i32 %i.cz, ptr %i.cw, align 1
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 417
  %i.db = load i32, ptr %i.da, align 1
  %i.dc = and i32 %i.db, 65536
  %.not17.i.i = icmp eq i32 %i.dc, 0
  br i1 %.not17.i.i, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  store i32 1, ptr %i.m, align 8, !tbaa !78
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  store i8 0, ptr %1, align 1, !tbaa !11
  %i.dd = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.de = tail call ptr @Curl_conn_meta_get(ptr noundef %i.dd, ptr noundef nonnull @.str.1) #5 ; 3 uses
  %.not.i18.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i18.i.i, label %pop3_perform.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.df = tail call i32 @Curl_pp_statemach(ptr noundef nonnull %0, ptr noundef nonnull %i.de, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %i.dg = getelementptr inbounds nuw i8, ptr %i.de, i64 152
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !84
  %i.di = icmp eq i32 %i.dh, 0
  %i.dj = zext i1 %i.di to i8
  store i8 %i.dj, ptr %1, align 1, !tbaa !11
  br label %pop3_perform.exit.i

pop3_perform.exit.i:                              ; preds = %bb.bb, %bb.ba
  %.0.i19.i.i = phi i32 [ %i.df, %bb.bb ], [ 2, %bb.ba ]
  %i.dk = load ptr, ptr %i.n, align 8, !tbaa !74
  %i.dl = tail call zeroext i1 @Curl_conn_is_connected(ptr noundef %i.dk, i32 noundef 0) #5 ; 0 uses
  br label %pop3_regular_transfer.exit

pop3_regular_transfer.exit:                       ; preds = %bb.b, %bb.a, %pop3_perform.exit.i, %bb.l, %bb.d, %pop3_parse_custom_request.exit.thread, %pop3_parse_custom_request.exit, %pop3_parse_url_path.exit
  %.0 = phi i32 [ 2, %bb.a ], [ %i.f, %pop3_parse_url_path.exit ], [ %i.k, %pop3_parse_custom_request.exit ], [ 2, %bb.d ], [ %.0.i19.i.i, %pop3_perform.exit.i ], [ 2, %pop3_parse_custom_request.exit.thread ], [ %.026.i.i.i, %bb.l ], [ 2, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @pop3_done(ptr noundef %0, i32 noundef %1, i1 zeroext %2) #0 {
bb.a:
  %i.a = tail call ptr @Curl_meta_get(ptr noundef %0, ptr noundef nonnull @.str) #5 ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not14 = icmp eq i32 %1, 0
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !74
  tail call void @Curl_conncontrol(ptr noundef %i.c, i32 noundef 1) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.d = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !76
  tail call void %i.d(ptr noundef %i.f) #5
  store ptr null, ptr %i.e, align 8, !tbaa !76
  %i.g = load ptr, ptr @Curl_cfree, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !79
  tail call void %i.g(ptr noundef %i.i) #5
  store ptr null, ptr %i.h, align 8, !tbaa !79
  store i32 0, ptr %i.a, align 8, !tbaa !78
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.011 = phi i32 [ %1, %bb.d ], [ 0, %bb.a ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal i32 @pop3_connect(ptr noundef %0, ptr nofree noundef writeonly captures(none) initializes((0, 1)) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !74   ; 3 uses
  %i.c = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str.1) #5 ; 6 uses
  %.not = icmp eq ptr %i.c, null
  store i8 0, ptr %1, align 1, !tbaa !11
  br i1 %.not, label %pop3_multi_statemach.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store ptr @pop3_statemachine, ptr %i.d, align 8, !tbaa !108
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  store ptr @pop3_endofresp, ptr %i.e, align 8, !tbaa !109
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 217
  store i8 7, ptr %i.f, align 1, !tbaa !85
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 176
  tail call void @Curl_sasl_init(ptr noundef nonnull %i.g, ptr noundef nonnull %0, ptr noundef nonnull @saslpop3) #5
  %i.h = tail call ptr @Curl_pgrs_now(ptr noundef nonnull %0) #5
  tail call void @Curl_pp_init(ptr noundef nonnull %i.c, ptr noundef %i.h) #5
  %i.i = tail call ptr @Curl_conn_meta_get(ptr noundef %i.b, ptr noundef nonnull @.str.1) #5 ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !110  ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %pop3_multi_statemach.exit, label %.preheader54.i

.preheader54.i:                                   ; preds = %bb.b
  %.not59.i = icmp eq ptr %i.k, null
  br i1 %.not59.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader54.i
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 217
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 202
  %i.o = load i8, ptr %i.k, align 1, !tbaa !77    ; 2 uses
  %.not45.i27 = icmp eq i8 %i.o, 0
  br i1 %.not45.i27, label %.critedge.i, label %.preheader.i.preheader

.preheader.i.preheader:                           ; preds = %.lr.ph.i, %bb.h
  %i.p = phi i8 [ %i.ac, %bb.h ], [ %i.o, %.lr.ph.i ]
  %.056.i28 = phi ptr [ %spec.select.i, %bb.h ], [ %i.k, %.lr.ph.i ] ; 2 uses
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.preheader, %bb.c
  %i.q = phi i8 [ %.pr.i, %bb.c ], [ %i.p, %.preheader.i.preheader ] ; 2 uses
  %.1.i = phi ptr [ %i.r, %bb.c ], [ %.056.i28, %.preheader.i.preheader ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.1.i, i64 1 ; 5 uses
  switch i8 %i.q, label %bb.c [
    i8 0, label %.critedge3.i.preheader
    i8 61, label %.critedge3.i.preheader
  ]

.critedge3.i.preheader:                           ; preds = %.preheader.i, %.preheader.i
  br label %.critedge3.i

bb.c:                                             ; preds = %.preheader.i
  %.pr.i = load i8, ptr %i.r, align 1, !tbaa !77
  br label %.preheader.i, !llvm.loop !105

.critedge3.i:                                     ; preds = %.critedge3.i.preheader, %bb.d
  %i.s = phi i8 [ %.pre.i, %bb.d ], [ %i.q, %.critedge3.i.preheader ]
  %.2.i = phi ptr [ %i.t, %bb.d ], [ %.1.i, %.critedge3.i.preheader ] ; 4 uses
  switch i8 %i.s, label %bb.d [
    i8 0, label %.critedge5.i
    i8 59, label %.critedge5.i
  ]

bb.d:                                             ; preds = %.critedge3.i
  %i.t = getelementptr inbounds nuw i8, ptr %.2.i, i64 1 ; 2 uses
  %.pre.i = load i8, ptr %i.t, align 1, !tbaa !77
  br label %.critedge3.i, !llvm.loop !106

.critedge5.i:                                     ; preds = %.critedge3.i, %.critedge3.i
  %i.u = tail call i32 @curl_strnequal(ptr noundef nonnull %.056.i28, ptr noundef nonnull @.str.42, i64 noundef 5) #5
  %.not51.i = icmp eq i32 %i.u, 0
  br i1 %.not51.i, label %.critedge.i, label %bb.e

bb.e:                                             ; preds = %.critedge5.i
  %i.v = ptrtoint ptr %.2.i to i64
  %i.w = ptrtoint ptr %i.r to i64
  %i.x = sub i64 %i.v, %i.w                       ; 2 uses
  %i.y = tail call i32 @Curl_sasl_parse_url_auth_option(ptr noundef nonnull %i.l, ptr noundef nonnull %i.r, i64 noundef %i.x) #5 ; 2 uses
  %.not52.i = icmp eq i32 %i.y, 0
  br i1 %.not52.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = tail call i32 @curl_strnequal(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.43, i64 noundef %i.x) #5
  %.not53.i = icmp eq i32 %i.z, 0
  br i1 %.not53.i, label %.critedge.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  store i8 2, ptr %i.m, align 1, !tbaa !85
  store i16 0, ptr %i.n, align 2, !tbaa !111
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.aa = load i8, ptr %.2.i, align 1, !tbaa !77
  %i.ab = icmp eq i8 %i.aa, 59
  %spec.select.idx.i = zext i1 %i.ab to i64
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.2.i, i64 %spec.select.idx.i ; 2 uses
  %i.ac = load i8, ptr %spec.select.i, align 1, !tbaa !77 ; 2 uses
  %.not45.i = icmp eq i8 %i.ac, 0
  br i1 %.not45.i, label %.critedge.i, label %.preheader.i.preheader, !llvm.loop !107

.critedge.i:                                      ; preds = %bb.h, %.critedge5.i, %bb.f, %.lr.ph.i, %.preheader54.i
  %.038.lcssa.i = phi i32 [ 0, %.preheader54.i ], [ 0, %.lr.ph.i ], [ 0, %bb.h ], [ 3, %.critedge5.i ], [ %i.y, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 217 ; 2 uses
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !85
  %.not46.i = icmp eq i8 %i.ae, 2
  br i1 %.not46.i, label %pop3_parse_url_options.exit, label %.sink.split.i
end_hunk_1
