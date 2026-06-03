inline.NumInlined: 17
inline.NumDeleted: 6
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }
%struct.ossl_passphrase_data_st = type { i32, %union.anon, i8, ptr, i64 }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, i64 }
%struct.ossl_store_ctx_st = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, ptr, %struct.ossl_passphrase_data_st }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.ossl_load_result_data_st = type { ptr, ptr }
%struct.ossl_store_search_st = type { i32, ptr, ptr, ptr, ptr, i64 }

@.str = private unnamed_addr constant [52 x i8] c"../../deps/openssl/openssl/crypto/store/store_lib.c\00", align 1
@__func__.OSSL_STORE_open_ex = private unnamed_addr constant [19 x i8] c"OSSL_STORE_open_ex\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"use_secmem\00", align 1
@__func__.OSSL_STORE_expect = private unnamed_addr constant [18 x i8] c"OSSL_STORE_expect\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"expect\00", align 1
@__func__.OSSL_STORE_find = private unnamed_addr constant [16 x i8] c"OSSL_STORE_find\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"subject\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"serial\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"digest\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"fingerprint\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"alias\00", align 1
@__func__.OSSL_STORE_delete = private unnamed_addr constant [18 x i8] c"OSSL_STORE_delete\00", align 1
@__func__.OSSL_STORE_INFO_new_NAME = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_NAME\00", align 1
@__func__.OSSL_STORE_INFO_set0_NAME_description = private unnamed_addr constant [38 x i8] c"OSSL_STORE_INFO_set0_NAME_description\00", align 1
@__func__.OSSL_STORE_INFO_new_PARAMS = private unnamed_addr constant [27 x i8] c"OSSL_STORE_INFO_new_PARAMS\00", align 1
@__func__.OSSL_STORE_INFO_new_PUBKEY = private unnamed_addr constant [27 x i8] c"OSSL_STORE_INFO_new_PUBKEY\00", align 1
@__func__.OSSL_STORE_INFO_new_PKEY = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_PKEY\00", align 1
@__func__.OSSL_STORE_INFO_new_CERT = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_new_CERT\00", align 1
@__func__.OSSL_STORE_INFO_new_CRL = private unnamed_addr constant [24 x i8] c"OSSL_STORE_INFO_new_CRL\00", align 1
@__func__.OSSL_STORE_INFO_get1_NAME = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_NAME\00", align 1
@.str.11 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@__func__.OSSL_STORE_INFO_get1_NAME_description = private unnamed_addr constant [38 x i8] c"OSSL_STORE_INFO_get1_NAME_description\00", align 1
@__func__.OSSL_STORE_INFO_get1_PARAMS = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PARAMS\00", align 1
@__func__.OSSL_STORE_INFO_get1_PUBKEY = private unnamed_addr constant [28 x i8] c"OSSL_STORE_INFO_get1_PUBKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_PKEY = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_PKEY\00", align 1
@__func__.OSSL_STORE_INFO_get1_CERT = private unnamed_addr constant [26 x i8] c"OSSL_STORE_INFO_get1_CERT\00", align 1
@__func__.OSSL_STORE_INFO_get1_CRL = private unnamed_addr constant [25 x i8] c"OSSL_STORE_INFO_get1_CRL\00", align 1
@__func__.OSSL_STORE_SEARCH_by_key_fingerprint = private unnamed_addr constant [37 x i8] c"OSSL_STORE_SEARCH_by_key_fingerprint\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"%s size is %d, fingerprint size is %zu\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"properties\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_open_ex(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca [2 x %struct.ossl_param_st], align 16 ; 11 uses
  %9 = alloca %struct.ossl_param_st, align 8      ; 8 uses
  %10 = alloca %struct.ossl_passphrase_data_st, align 8 ; 10 uses
  %i.a = alloca [256 x i8], align 16              ; 6 uses
  %i.b = alloca [2 x ptr], align 16               ; 6 uses
  %11 = alloca %struct.ossl_store_ctx_st, align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %10, i8 0, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 82, ptr noundef nonnull @__func__.OSSL_STORE_open_ex) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 786690, ptr noundef null) #8
  br label %bb.aq

bb.c:                                             ; preds = %bb.a
  store ptr @.str.1, ptr %i.b, align 16, !tbaa !9
  %i.d = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.a, ptr noundef nonnull %0, i64 noundef 256) #8 ; 0 uses
  %i.e = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 58) #9 ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.e, align 1, !tbaa !12
  %i.f = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) #8
  %.not114 = icmp eq i32 %i.f, 0
  br i1 %.not114, label %bb.e, label %sub_0

sub_0:                                            ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 1
  %i.h = load i8, ptr %i.g, align 1
  %.not166 = icmp eq i8 %i.h, 47
  br i1 %.not166, label %.tail, label %.thread190

.tail:                                            ; preds = %sub_0
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  %i.j = load i8, ptr %i.i, align 1
  %.fr = freeze i8 %i.j
  %i.k = icmp ne i8 %.fr, 47                      ; 2 uses
  %spec.select194 = select i1 %i.k, i64 8, i64 0
  br label %.thread190

.thread190:                                       ; preds = %.tail, %sub_0
  %i.l = phi i1 [ true, %sub_0 ], [ %i.k, %.tail ]
  %i.m = phi i64 [ 8, %sub_0 ], [ %spec.select194, %.tail ]
  %spec.select.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.m
  store ptr %i.a, ptr %spec.select.sroa.sel.idx.sroa.sel, align 8, !tbaa !9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread190, %bb.c
  %.182 = phi i1 [ %i.l, %.thread190 ], [ false, %bb.d ], [ false, %bb.c ]
  %i.n = call i32 @ERR_set_mark() #8              ; 0 uses
  %.not115 = icmp eq ptr %3, null
  br i1 %.not115, label %.peel.begin, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = call i32 @ossl_pw_set_ui_method(ptr noundef nonnull %10, ptr noundef nonnull %3, ptr noundef %4) #8
  %.not116 = icmp eq i32 %i.o, 0
  br i1 %.not116, label %.thread156, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = call i32 @ossl_pw_enable_passphrase_caching(ptr noundef nonnull %10) #8
  %.not117 = icmp eq i32 %i.p, 0
  br i1 %.not117, label %.thread156, label %.peel.begin

.thread156:                                       ; preds = %bb.f, %bb.g
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.OSSL_STORE_open_ex) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524303, ptr noundef null) #8
  %i.q = call i32 @ERR_clear_last_mark() #8       ; 0 uses
  br label %bb.ap

.peel.begin:                                      ; preds = %bb.g, %bb.e
  %.not.i = icmp eq ptr %5, null                  ; 2 uses
  %.not14.i = icmp eq ptr %2, null                ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.s = load ptr, ptr %i.b, align 16, !tbaa !9   ; 2 uses
  %i.t = call i32 @ERR_set_mark() #8              ; 0 uses
  %i.u = call ptr @ossl_store_get0_loader_int(ptr noundef %i.s) #8 ; 7 uses
  %.not120.peel = icmp eq ptr %i.u, null
  br i1 %.not120.peel, label %bb.k, label %bb.h

bb.h:                                             ; preds = %.peel.begin
  %i.v = call i32 @ERR_clear_last_mark() #8       ; 0 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !13   ; 2 uses
  %.not121.peel = icmp eq ptr %i.x, null
  br i1 %.not121.peel, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.y = call ptr %i.x(ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #8
  br label %.thread.peel

bb.j:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18
  %i.ab = call ptr %i.aa(ptr noundef nonnull %i.u, ptr noundef nonnull %0, ptr noundef %3, ptr noundef %4) #8
  br label %.thread.peel

bb.k:                                             ; preds = %.peel.begin
  %i.ac = call i32 @ERR_pop_to_mark() #8          ; 0 uses
  %i.ad = call ptr @OSSL_STORE_LOADER_fetch(ptr noundef %1, ptr noundef %i.s, ptr noundef %2) #8 ; 12 uses
  %.not122.peel = icmp eq ptr %i.ad, null
  br i1 %.not122.peel, label %.thread.peel, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.ad) #8
  %i.af = call ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef %i.ae) #8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 208
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !19 ; 2 uses
  %.not123.peel = icmp eq ptr %i.ah, null
  br i1 %.not123.peel, label %bb.m, label %loader_set_params.exit.peel

loader_set_params.exit.peel:                      ; preds = %bb.l
  %i.ai = call ptr %i.ah(ptr noundef %i.af, ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @ossl_pw_passphrase_callback_dec, ptr noundef nonnull %10) #8 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %loader_set_params.exit.thread136.peel, label %loader_set_params.exit.thread141.peel

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 136
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !20 ; 2 uses
  %.not124.peel = icmp eq ptr %i.al, null
  br i1 %.not124.peel, label %loader_set_params.exit.thread136.peel, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.am = call ptr %i.al(ptr noundef %i.af, ptr noundef nonnull %0) #8 ; 7 uses
  %.not125.peel = icmp eq ptr %i.am, null
  br i1 %.not125.peel, label %loader_set_params.exit.thread136.peel, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !21
  %i.ap = call i32 %i.ao(ptr noundef nonnull %i.am, ptr noundef nonnull %5) #8, !inline_history !22
  %.not13.i.peel = icmp eq i32 %i.ap, 0
  br i1 %.not13.i.peel, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not14.i, label %loader_set_params.exit.thread141.peel, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aq = call ptr @OSSL_PARAM_locate_const(ptr noundef %5, ptr noundef nonnull @.str.13) #8
  %.not15.i.peel = icmp eq ptr %i.aq, null
  br i1 %.not15.i.peel, label %bb.s, label %.thread.i.peel

.thread.i.peel:                                   ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br label %loader_set_params.exit.thread141.peel

bb.s:                                             ; preds = %bb.r
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %8, ptr noundef nonnull @.str.13, ptr noundef nonnull %2, i64 noundef 0) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.r, ptr noundef nonnull align 8 dereferenceable(40) %9, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 160
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !21
  %i.at = call i32 %i.as(ptr noundef nonnull %i.am, ptr noundef nonnull %8) #8, !inline_history !22
  %.not16.not.i.peel = icmp eq i32 %i.at, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  br i1 %.not16.not.i.peel, label %bb.t, label %loader_set_params.exit.thread141.peel

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %i.ad, i64 184
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !27
  %i.aw = call i32 %i.av(ptr noundef nonnull %i.am) #8 ; 0 uses
  br label %loader_set_params.exit.thread136.peel

loader_set_params.exit.thread136.peel:            ; preds = %bb.t, %bb.n, %bb.m, %loader_set_params.exit.peel
  call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.ad) #8
  br label %loader_set_params.exit.thread141.peel

loader_set_params.exit.thread141.peel:            ; preds = %loader_set_params.exit.thread136.peel, %bb.s, %.thread.i.peel, %bb.q, %loader_set_params.exit.peel
  %.291138.peel = phi ptr [ null, %loader_set_params.exit.thread136.peel ], [ %i.ai, %loader_set_params.exit.peel ], [ %i.am, %.thread.i.peel ], [ %i.am, %bb.s ], [ %i.am, %bb.q ]
  %.193.peel = phi ptr [ null, %loader_set_params.exit.thread136.peel ], [ %i.ad, %loader_set_params.exit.peel ], [ %i.ad, %.thread.i.peel ], [ %i.ad, %bb.s ], [ %i.ad, %bb.q ] ; 2 uses
  call void @ossl_pw_clear_passphrase_cache(ptr noundef nonnull %10) #8
  br label %.thread.peel

.thread.peel:                                     ; preds = %loader_set_params.exit.thread141.peel, %bb.k, %bb.j, %bb.i
  %.294.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ null, %bb.i ], [ null, %bb.j ] ; 3 uses
  %.3.peel = phi ptr [ %.291138.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.y, %bb.i ], [ %i.ab, %bb.j ] ; 2 uses
  %.285.peel = phi i32 [ 0, %loader_set_params.exit.thread141.peel ], [ 1, %bb.k ], [ 0, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %.1.peel = phi ptr [ %.193.peel, %loader_set_params.exit.thread141.peel ], [ null, %bb.k ], [ %i.u, %bb.i ], [ %i.u, %bb.j ]
  %i.ax = icmp eq ptr %.3.peel, null              ; 2 uses
  %i.ay = and i1 %i.ax, %.182
  br i1 %i.ay, label %.peel.newph, label %bb.ah

.peel.newph:                                      ; preds = %.thread.peel
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !9  ; 2 uses
  %i.bb = call i32 @ERR_set_mark() #8             ; 0 uses
  %i.bc = call ptr @ossl_store_get0_loader_int(ptr noundef %i.ba) #8 ; 7 uses
end_hunk_0
begin_hunk_1_@OSSL_STORE_open_ex:bb.a
bb.ag:                                            ; preds = %bb.af, %bb.ac
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bl, i64 184
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !27
  %i.cc = call i32 %i.cb(ptr noundef nonnull %i.bs) #8 ; 0 uses
  br label %loader_set_params.exit.thread136

loader_set_params.exit:                           ; preds = %bb.y
  %i.cd = call ptr %i.bp(ptr noundef %i.bn, ptr noundef nonnull %0, ptr noundef %5, ptr noundef nonnull @ossl_pw_passphrase_callback_dec, ptr noundef nonnull %10) #8 ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %loader_set_params.exit.thread136, label %loader_set_params.exit.thread141

loader_set_params.exit.thread136:                 ; preds = %bb.aa, %bb.ag, %bb.z, %loader_set_params.exit
  call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.bl) #8
  br label %loader_set_params.exit.thread141

loader_set_params.exit.thread141:                 ; preds = %bb.ad, %bb.af, %.thread.i, %loader_set_params.exit.thread136, %loader_set_params.exit
  %.291138 = phi ptr [ null, %loader_set_params.exit.thread136 ], [ %i.cd, %loader_set_params.exit ], [ %i.bs, %.thread.i ], [ %i.bs, %bb.af ], [ %i.bs, %bb.ad ]
  %.193 = phi ptr [ null, %loader_set_params.exit.thread136 ], [ %i.bl, %loader_set_params.exit ], [ %i.bl, %.thread.i ], [ %i.bl, %bb.af ], [ %i.bl, %bb.ad ] ; 2 uses
  call void @ossl_pw_clear_passphrase_cache(ptr noundef nonnull %10) #8
  br label %.loopexit

.loopexit:                                        ; preds = %loader_set_params.exit.thread141, %bb.x, %bb.v, %bb.w
  %.294 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %.294.peel, %bb.v ], [ %.294.peel, %bb.w ]
  %.3 = phi ptr [ %.291138, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bg, %bb.v ], [ %i.bj, %bb.w ] ; 2 uses
  %.285 = phi i32 [ 0, %loader_set_params.exit.thread141 ], [ %.285.peel, %bb.x ], [ 0, %bb.v ], [ 0, %bb.w ]
  %.1 = phi ptr [ %.193, %loader_set_params.exit.thread141 ], [ null, %bb.x ], [ %i.bc, %bb.v ], [ %i.bc, %bb.w ]
  %i.cf = icmp eq ptr %.3, null
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit, %.thread.peel
  %.294.lcssa = phi ptr [ %.294.peel, %.thread.peel ], [ %.294, %.loopexit ] ; 5 uses
  %.3.lcssa = phi ptr [ %.3.peel, %.thread.peel ], [ %.3, %.loopexit ] ; 4 uses
  %.285.lcssa = phi i32 [ %.285.peel, %.thread.peel ], [ %.285, %.loopexit ]
  %.1.lcssa = phi ptr [ %.1.peel, %.thread.peel ], [ %.1, %.loopexit ] ; 4 uses
  %.lcssa = phi i1 [ %i.ax, %.thread.peel ], [ %i.cf, %.loopexit ] ; 2 uses
  %i.cg = icmp ne i32 %.285.lcssa, 0
  %or.cond = or i1 %.lcssa, %i.cg
  br i1 %or.cond, label %bb.am, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  br i1 %.not14.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ch = call ptr @CRYPTO_strdup(ptr noundef nonnull %2, ptr noundef nonnull @.str, i32 noundef 189) #8 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %.thread144, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.086 = phi ptr [ %i.ch, %bb.aj ], [ null, %bb.ai ] ; 2 uses
  %i.cj = call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef nonnull @.str, i32 noundef 190) #8 ; 9 uses
  %i.ck = icmp eq ptr %i.cj, null
  br i1 %i.ck, label %.thread144, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 48
  store ptr %.086, ptr %i.cl, align 8, !tbaa !28
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store ptr %.294.lcssa, ptr %i.cm, align 8, !tbaa !34
  store ptr %.1.lcssa, ptr %i.cj, align 8, !tbaa !35
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  store ptr %.3.lcssa, ptr %i.cn, align 8, !tbaa !36
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  store ptr %6, ptr %i.co, align 8, !tbaa !37
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  store ptr %7, ptr %i.cp, align 8, !tbaa !38
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.cq, ptr noundef nonnull align 8 dereferenceable(48) %10, i64 48, i1 false), !tbaa.struct !39
  %i.cr = call i32 @ERR_pop_to_mark() #8          ; 0 uses
  br label %bb.aq

.thread144:                                       ; preds = %bb.aj, %bb.ak
  %.187.ph = phi ptr [ %.086, %bb.ak ], [ null, %bb.aj ]
  %i.cs = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br label %bb.an

bb.am:                                            ; preds = %bb.ah
  %i.ct = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br i1 %.lcssa, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %.thread144, %bb.am
  %.187153 = phi ptr [ %.187.ph, %.thread144 ], [ null, %bb.am ]
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #8
  %i.cu = getelementptr inbounds nuw i8, ptr %11, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.cu, i8 0, i64 96, i1 false)
  %i.cv = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store ptr %.294.lcssa, ptr %i.cv, align 8, !tbaa !34
  store ptr %.1.lcssa, ptr %11, align 8, !tbaa !35
  %i.cw = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  store ptr %.3.lcssa, ptr %i.cw, align 8, !tbaa !36
  %.not.i127 = icmp eq ptr %.294.lcssa, null
  br i1 %.not.i127, label %.thread.i129, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cx = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 184
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = call i32 %i.cy(ptr noundef nonnull %.3.lcssa) #8, !inline_history !40 ; 0 uses
  %.pr.i = load ptr, ptr %i.cv, align 8, !tbaa !34 ; 2 uses
  %i.da = icmp eq ptr %.pr.i, null
  br i1 %i.da, label %..thread.i129_crit_edge, label %ossl_store_close_it.exit

..thread.i129_crit_edge:                          ; preds = %bb.ao
  %.pre = load ptr, ptr %11, align 8, !tbaa !35
  %.pre168 = load ptr, ptr %i.cw, align 8, !tbaa !36
  br label %.thread.i129

.thread.i129:                                     ; preds = %..thread.i129_crit_edge, %bb.an
  %i.db = phi ptr [ %.pre168, %..thread.i129_crit_edge ], [ %.3.lcssa, %bb.an ]
  %i.dc = phi ptr [ %.pre, %..thread.i129_crit_edge ], [ %.1.lcssa, %bb.an ]
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 80
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !41
  %i.df = call i32 %i.de(ptr noundef %i.db) #8, !inline_history !40 ; 0 uses
  %.pre169 = load ptr, ptr %i.cv, align 8, !tbaa !34
  br label %ossl_store_close_it.exit

ossl_store_close_it.exit:                         ; preds = %bb.ao, %.thread.i129
  %i.dg = phi ptr [ %.pr.i, %bb.ao ], [ %.pre169, %.thread.i129 ]
  %i.dh = getelementptr inbounds nuw i8, ptr %11, i64 64
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !42
  call void @OPENSSL_sk_pop_free(ptr noundef %i.di, ptr noundef nonnull @OSSL_STORE_INFO_free) #8
  call void @OSSL_STORE_LOADER_free(ptr noundef %i.dg) #8
  %i.dj = getelementptr inbounds nuw i8, ptr %11, i64 48
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !28
  call void @CRYPTO_free(ptr noundef %i.dk, ptr noundef nonnull @.str, i32 noundef 590) #8
  %i.dl = getelementptr inbounds nuw i8, ptr %11, i64 72
  call void @ossl_pw_clear_passphrase_data(ptr noundef nonnull %i.dl) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #8
  br label %bb.ap

bb.ap:                                            ; preds = %.thread156, %ossl_store_close_it.exit, %bb.am
  %.187154 = phi ptr [ %.187153, %ossl_store_close_it.exit ], [ null, %bb.am ], [ null, %.thread156 ]
  %.395151 = phi ptr [ %.294.lcssa, %ossl_store_close_it.exit ], [ %.294.lcssa, %bb.am ], [ null, %.thread156 ]
  call void @OSSL_STORE_LOADER_free(ptr noundef %.395151) #8
  call void @CRYPTO_free(ptr noundef %.187154, ptr noundef nonnull @.str, i32 noundef 235) #8
  call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 236) #8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.al, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.ap ], [ %i.cj, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare void @ERR_new() local_unnamed_addr #3

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i64 @OPENSSL_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

declare i32 @OPENSSL_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ERR_set_mark() local_unnamed_addr #3

declare i32 @ossl_pw_set_ui_method(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @ossl_pw_enable_passphrase_caching(ptr noundef) local_unnamed_addr #3

declare ptr @ossl_store_get0_loader_int(ptr noundef) local_unnamed_addr #3

declare i32 @ERR_clear_last_mark() local_unnamed_addr #3

declare i32 @ERR_pop_to_mark() local_unnamed_addr #3

declare ptr @OSSL_STORE_LOADER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef) local_unnamed_addr #3

declare i32 @ossl_pw_passphrase_callback_dec(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef) #3

declare void @OSSL_STORE_LOADER_free(ptr noundef) local_unnamed_addr #3

declare void @ossl_pw_clear_passphrase_cache(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @CRYPTO_strdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_open(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @OSSL_STORE_open_ex(ptr noundef %0, ptr noundef null, ptr noundef null, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef %4)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_ctrl(ptr noundef readonly captures(none) %0, i32 noundef %1, ...) local_unnamed_addr #0 {
bb.a:
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %3 = alloca [1 x %struct.__va_list_tag], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.va_start.p0(ptr nonnull %3)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not15.i = icmp eq ptr %i.e, null
  br i1 %.not15.i, label %OSSL_STORE_vctrl.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %2, i8 0, i64 80, i1 false)
  %cond.i = icmp eq i32 %1, 1
  br i1 %cond.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = load i32, ptr %3, align 16               ; 3 uses
  %i.g = icmp ult i32 %i.f, 41
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load ptr, ptr %i.h, align 16
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = add nuw nsw i32 %i.f, 8
  store i32 %i.l, ptr %3, align 16
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.f ]
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = load i32, ptr %i.q, align 4, !tbaa !5
  store i32 %i.r, ptr %i.a, align 4, !tbaa !5
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %2, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre.i = load ptr, ptr %i.b, align 8, !tbaa !34
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 160
  %.pre16.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.s = phi ptr [ %i.e, %bb.c ], [ %.pre16.i, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = call i32 %i.s(ptr noundef %i.u, ptr noundef nonnull %2) #8, !inline_history !45
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %OSSL_STORE_vctrl.exit

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %.not14.i = icmp eq ptr %i.y, null
  br i1 %.not14.i, label %OSSL_STORE_vctrl.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = call i32 %i.y(ptr noundef %i.aa, i32 noundef %1, ptr noundef nonnull %3) #8, !inline_history !45
  br label %OSSL_STORE_vctrl.exit

OSSL_STORE_vctrl.exit:                            ; preds = %bb.b, %bb.h, %bb.i, %bb.j
  %.0.i = phi i32 [ %i.v, %bb.h ], [ %i.ab, %bb.j ], [ 1, %bb.i ], [ 1, %bb.b ]
  call void @llvm.va_end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0.i
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #5

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_vctrl(ptr noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21   ; 2 uses
  %.not15 = icmp eq ptr %i.e, null
  br i1 %.not15, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %3, i8 0, i64 80, i1 false)
  %cond = icmp eq i32 %1, 1
  br i1 %cond, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.f = load i32, ptr %2, align 8                ; 3 uses
  %i.g = icmp ult i32 %i.f, 41
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = zext nneg i32 %i.f to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  %i.l = add nuw nsw i32 %i.f, 8
  store i32 %i.l, ptr %2, align 8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  store ptr %i.o, ptr %i.m, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = phi ptr [ %i.k, %bb.e ], [ %i.n, %bb.f ]
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  %i.r = load i32, ptr %i.q, align 4, !tbaa !5
  store i32 %i.r, ptr %i.a, align 4, !tbaa !5
  call void @OSSL_PARAM_construct_int(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %3, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !34
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 160
  %.pre16 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !21
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.g
  %i.s = phi ptr [ %i.e, %bb.c ], [ %.pre16, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !36
  %i.v = call i32 %i.s(ptr noundef %i.u, ptr noundef nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.w = load ptr, ptr %0, align 8, !tbaa !35
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !46   ; 2 uses
  %.not14 = icmp eq ptr %i.y, null
  br i1 %.not14, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36
  %i.ab = tail call i32 %i.y(ptr noundef %i.aa, i32 noundef %1, ptr noundef %2) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.i, %bb.j, %bb.h
  %.0 = phi i32 [ %i.v, %bb.h ], [ %i.ab, %bb.j ], [ 1, %bb.i ], [ 1, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #5

declare void @OSSL_PARAM_construct_int(ptr dead_on_unwind writable sret(%struct.ossl_param_st) align 8, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_expect(ptr noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %2 = alloca [2 x %struct.ossl_param_st], align 16 ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !5
  %i.b = icmp eq ptr %0, null
  %i.c = icmp ugt i32 %1, 6
  %or.cond3 = or i1 %i.b, %i.c
  br i1 %or.cond3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 299, ptr noundef nonnull @__func__.OSSL_STORE_expect) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524550, ptr noundef null) #8
  br label %.thread29

bb.c:                                             ; preds = %bb.a
end_hunk_1
begin_hunk_2_@OSSL_STORE_INFO_free:bb.a
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12
  tail call void @CRYPTO_free(ptr noundef %i.c, ptr noundef nonnull @.str, i32 noundef 836) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 837) #8
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !12
  tail call void @EVP_PKEY_free(ptr noundef %i.g) #8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  tail call void @EVP_PKEY_free(ptr noundef %i.i) #8
  br label %bb.i

bb.f:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !12
  tail call void @EVP_PKEY_free(ptr noundef %i.k) #8
  br label %bb.i

bb.g:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !12
  tail call void @X509_free(ptr noundef %i.m) #8
  br label %bb.i

bb.h:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  tail call void @X509_CRL_free(ptr noundef %i.o) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 855) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_delete(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 5 uses
  %6 = alloca %struct.ossl_passphrase_data_st, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %6, i8 0, i64 48, i1 false)
  %i.b = call i64 @OPENSSL_strlcpy(ptr noundef nonnull %i.a, ptr noundef %0, i64 noundef 256) #8 ; 0 uses
  %i.c = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %i.a, i32 noundef 58) #9 ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %i.c, align 1, !tbaa !12
  %.not21 = icmp eq ptr %3, null
  br i1 %.not21, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call i32 @ossl_pw_set_ui_method(ptr noundef nonnull %6, ptr noundef nonnull %3, ptr noundef %4) #8
  %.not22 = icmp eq i32 %i.d, 0
  br i1 %.not22, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = call i32 @ossl_pw_enable_passphrase_caching(ptr noundef nonnull %6) #8
  %.not23 = icmp eq i32 %i.e, 0
  br i1 %.not23, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  call void @ERR_new() #8
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 510, ptr noundef nonnull @__func__.OSSL_STORE_delete) #8
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524303, ptr noundef null) #8
  br label %bb.j

bb.f:                                             ; preds = %bb.d, %bb.b
  %i.f = call ptr @OSSL_STORE_LOADER_fetch(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2) #8 ; 4 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 200 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !74
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.f) #8
  %i.j = call ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef %i.i) #8
  %i.k = load ptr, ptr %i.g, align 8, !tbaa !74
  %i.l = call i32 %i.k(ptr noundef %i.j, ptr noundef %0, ptr noundef %5, ptr noundef nonnull @ossl_pw_passphrase_callback_dec, ptr noundef nonnull %6) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.017 = phi i32 [ %i.l, %bb.h ], [ 0, %bb.g ], [ 0, %bb.f ]
  call void @ossl_pw_clear_passphrase_cache(ptr noundef nonnull %6) #8
  call void @OSSL_STORE_LOADER_free(ptr noundef %i.f) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %bb.i, %bb.e
  %.0 = phi i32 [ %.017, %bb.i ], [ 0, %bb.e ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_error(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !69
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36
  %i.j = tail call i32 %i.g(ptr noundef %i.i) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %i.j, %bb.c ], [ %i.d, %bb.b ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_close(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %ossl_store_close_it.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !34
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %.thread.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 184
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !36
  %i.i = tail call i32 %i.f(ptr noundef %i.h) #8, !inline_history !40
  %.pr.i = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.j = icmp eq ptr %.pr.i, null
  br i1 %i.j, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c, %bb.b
  %i.k = load ptr, ptr %0, align 8, !tbaa !35
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !41
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !36
  %i.p = tail call i32 %i.m(ptr noundef %i.o) #8, !inline_history !40
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.c
  %.1.i = phi i32 [ %i.p, %.thread.i ], [ %i.i, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !42
  tail call void @OPENSSL_sk_pop_free(ptr noundef %i.r, ptr noundef nonnull @OSSL_STORE_INFO_free) #8
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !34
  tail call void @OSSL_STORE_LOADER_free(ptr noundef %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !28
  tail call void @CRYPTO_free(ptr noundef %i.u, ptr noundef nonnull @.str, i32 noundef 590) #8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  tail call void @ossl_pw_clear_passphrase_data(ptr noundef nonnull %i.v) #8
  br label %ossl_store_close_it.exit

ossl_store_close_it.exit:                         ; preds = %bb.a, %bb.d
  %.012.i = phi i32 [ %.1.i, %bb.d ], [ 1, %bb.a ]
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 599) #8
  ret i32 %.012.i
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new(i32 noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %0, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_NAME(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 627, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_NAME) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @OSSL_STORE_INFO_set0_NAME_description(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %.not = icmp eq i32 %i.a, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 640, ptr noundef nonnull @__func__.OSSL_STORE_INFO_set0_NAME_description) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524550, ptr noundef null) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_PARAMS(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %OSSL_STORE_INFO_new.exit

OSSL_STORE_INFO_new.exit:                         ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 653, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_PARAMS) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %OSSL_STORE_INFO_new.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_PUBKEY(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %OSSL_STORE_INFO_new.exit

OSSL_STORE_INFO_new.exit:                         ; preds = %bb.a
  store i32 3, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 662, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_PUBKEY) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %OSSL_STORE_INFO_new.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_PKEY(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %OSSL_STORE_INFO_new.exit

OSSL_STORE_INFO_new.exit:                         ; preds = %bb.a
  store i32 4, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 671, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_PKEY) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %OSSL_STORE_INFO_new.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_CERT(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %OSSL_STORE_INFO_new.exit

OSSL_STORE_INFO_new.exit:                         ; preds = %bb.a
  store i32 5, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 680, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_CERT) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %OSSL_STORE_INFO_new.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_INFO_new_CRL(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 24, ptr noundef nonnull @.str, i32 noundef 612) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %OSSL_STORE_INFO_new.exit

OSSL_STORE_INFO_new.exit:                         ; preds = %bb.a
  store i32 6, ptr %i.a, align 8, !tbaa !72
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 689, ptr noundef nonnull @__func__.OSSL_STORE_INFO_new_CRL) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 524332, ptr noundef null) #8
  br label %bb.c

bb.c:                                             ; preds = %OSSL_STORE_INFO_new.exit, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_data(i32 noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, %0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_NAME(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_NAME(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call ptr @CRYPTO_strdup(ptr noundef %i.d, ptr noundef nonnull @.str, i32 noundef 718) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 719, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_NAME) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 103, ptr noundef null) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_NAME_description(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_NAME_description(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  %spec.select = select i1 %.not, ptr @.str.11, ptr %i.d
  %i.e = tail call ptr @CRYPTO_strdup(ptr noundef nonnull %spec.select, ptr noundef nonnull @.str, i32 noundef 733) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 734, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_NAME_description) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 103, ptr noundef null) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi ptr [ %i.e, %bb.b ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_PARAMS(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_PARAMS(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 2
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 752, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_PARAMS) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 104, ptr noundef null) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

declare i32 @EVP_PKEY_up_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_PUBKEY(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_PUBKEY(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 3
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 @EVP_PKEY_up_ref(ptr noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c
end_hunk_2
begin_hunk_3_@OSSL_STORE_INFO_get1_PKEY:bb.a
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 788, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_PKEY) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 102, ptr noundef null) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_CERT(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_CERT(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 5
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 @X509_up_ref(ptr noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 806, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_CERT) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 100, ptr noundef null) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

declare i32 @X509_up_ref(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_INFO_get0_CRL(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_INFO_get1_CRL(ptr noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !72
  %i.b = icmp eq i32 %i.a, 6
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = tail call i32 @X509_CRL_up_ref(ptr noundef %i.d) #8
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !12
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 824, ptr noundef nonnull @__func__.OSSL_STORE_INFO_get1_CRL) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 101, ptr noundef null) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d, %bb.c
  %.0 = phi ptr [ %i.f, %bb.c ], [ null, %bb.d ], [ null, %bb.b ]
  ret ptr %.0
}

declare i32 @X509_CRL_up_ref(ptr noundef) local_unnamed_addr #3

declare void @EVP_PKEY_free(ptr noundef) local_unnamed_addr #3

declare void @X509_free(ptr noundef) local_unnamed_addr #3

declare void @X509_CRL_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @OSSL_STORE_supports_search(ptr noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.ossl_store_search_st, align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !34   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.b) #8
  %i.d = tail call ptr @ossl_provider_ctx(ptr noundef %i.c) #8
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !76   ; 2 uses
  %.not32 = icmp eq ptr %i.g, null
  br i1 %.not32, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr %i.g(ptr noundef %i.d) #8  ; 5 uses
  %i.i = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %i.h, ptr noundef nonnull @.str.5) #8
  %i.j = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %i.h, ptr noundef nonnull @.str.6) #8
  %i.k = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %i.h, ptr noundef nonnull @.str.7) #8
  %i.l = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %i.h, ptr noundef nonnull @.str.9) #8
  %i.m = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %i.h, ptr noundef nonnull @.str.10) #8
  switch i32 %1, label %bb.h [
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.f
    i32 4, label %bb.g
  ]

bb.d:                                             ; preds = %bb.c
  %i.n = icmp ne ptr %i.i, null
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.o = icmp ne ptr %i.j, null
  %i.p = icmp ne ptr %i.k, null
  %i.q = select i1 %i.o, i1 %i.p, i1 false
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.r = icmp ne ptr %i.l, null
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.s = icmp ne ptr %i.m, null
  br label %bb.h

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.026.shrunk = phi i1 [ false, %bb.c ], [ %i.n, %bb.d ], [ %i.q, %bb.e ], [ %i.r, %bb.f ], [ %i.s, %bb.g ]
  %.026 = zext i1 %.026.shrunk to i32
  %.pr = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.t = icmp eq ptr %.pr, null
  br i1 %i.t, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.a, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.u = load ptr, ptr %0, align 8, !tbaa !35
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60   ; 2 uses
  %.not33 = icmp eq ptr %i.w, null
  br i1 %.not33, label %.critedge.sink.split, label %bb.i

bb.i:                                             ; preds = %.thread
  store i32 %1, ptr %2, align 8, !tbaa !50
  %i.x = call i32 %i.w(ptr noundef null, ptr noundef nonnull %2) #8
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %.thread, %bb.i
  %.3.ph = phi i32 [ %i.x, %bb.i ], [ 0, %.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %bb.b, %bb.h
  %.3 = phi i32 [ %.026, %bb.h ], [ 0, %bb.b ], [ %.3.ph, %.critedge.sink.split ]
  ret i32 %.3
}

declare ptr @ossl_provider_ctx(ptr noundef) local_unnamed_addr #3

declare ptr @OSSL_PARAM_locate_const(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_SEARCH_by_name(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 913) #8 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !55
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_SEARCH_by_issuer_serial(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 926) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 2, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %0, ptr %i.c, align 8, !tbaa !55
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.d, align 8, !tbaa !56
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_SEARCH_by_key_fingerprint(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 942) #8 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @EVP_MD_get_size(ptr noundef %0) #8 ; 3 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 950) #8
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %.not = icmp eq ptr %0, null
  %i.e = zext nneg i32 %i.c to i64
  %.not23 = icmp eq i64 %2, %i.e
  %or.cond = select i1 %.not, i1 true, i1 %.not23
  br i1 %or.cond, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #8
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 955, ptr noundef nonnull @__func__.OSSL_STORE_SEARCH_by_key_fingerprint) #8
  %i.f = tail call ptr @EVP_MD_get0_name(ptr noundef nonnull %0) #8
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 44, i32 noundef 121, ptr noundef nonnull @.str.12, ptr noundef %i.f, i32 noundef %i.c, i64 noundef %2) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %i.a, ptr noundef nonnull @.str, i32 noundef 959) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i32 3, ptr %i.a, align 8, !tbaa !50
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %0, ptr %i.g, align 8, !tbaa !57
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %1, ptr %i.h, align 8, !tbaa !58
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %i.i, align 8, !tbaa !59
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.c
  %.0 = phi ptr [ %i.a, %bb.f ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noalias ptr @OSSL_STORE_SEARCH_by_alias(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 48, ptr noundef nonnull @.str, i32 noundef 972) #8 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 4, ptr %i.a, align 8, !tbaa !50
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %0, ptr %i.c, align 8, !tbaa !58
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.d, ptr %i.e, align 8, !tbaa !59
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define dso_local void @OSSL_STORE_SEARCH_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @CRYPTO_free(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef 986) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @OSSL_STORE_SEARCH_get_type(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !50
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_SEARCH_get0_name(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !55
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_SEARCH_get0_serial(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !56
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local ptr @OSSL_STORE_SEARCH_get0_bytes(ptr noundef readonly captures(none) %0, ptr noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8, !tbaa !59
  store i64 %i.b, ptr %1, align 8, !tbaa !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !58
  ret ptr %i.d
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_SEARCH_get0_string(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !58
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local ptr @OSSL_STORE_SEARCH_get0_digest(ptr noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define dso_local ptr @OSSL_STORE_attach(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %9 = alloca [2 x %struct.ossl_param_st], align 16 ; 6 uses
  %10 = alloca %struct.ossl_param_st, align 8     ; 4 uses
  %i.a = icmp eq ptr %1, null
  %spec.store.select = select i1 %i.a, ptr @.str.1, ptr %1 ; 2 uses
  %i.b = tail call i32 @ERR_set_mark() #8         ; 0 uses
  %i.c = tail call ptr @ossl_store_get0_loader_int(ptr noundef nonnull %spec.store.select) #8 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !77
  %i.f = tail call ptr %i.e(ptr noundef nonnull %i.c, ptr noundef %0, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #8
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.g = tail call ptr @OSSL_STORE_LOADER_fetch(ptr noundef %2, ptr noundef nonnull %spec.store.select, ptr noundef %3) #8 ; 11 uses
  %.not64 = icmp eq ptr %i.g, null
  br i1 %.not64, label %.thread72, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @OSSL_STORE_LOADER_get0_provider(ptr noundef nonnull %i.g) #8
  %i.i = tail call ptr @OSSL_PROVIDER_get0_provider_ctx(ptr noundef %i.h) #8
  %i.j = tail call ptr @ossl_core_bio_new_from_bio(ptr noundef %0) #8 ; 3 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !78   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call ptr %i.m(ptr noundef %i.i, ptr noundef nonnull %i.j) #8 ; 8 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  tail call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.g) #8
  br label %loader_set_params.exit

bb.h:                                             ; preds = %bb.f
  %.not.i = icmp eq ptr %6, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21
  %i.s = tail call i32 %i.r(ptr noundef nonnull %i.o, ptr noundef nonnull %6) #8, !inline_history !22
  %.not13.i = icmp eq i32 %i.s, 0
  br i1 %.not13.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not14.i = icmp eq ptr %3, null
  br i1 %.not14.i, label %loader_set_params.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #8
  %i.t = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %6, ptr noundef nonnull @.str.13) #8
  %.not15.i = icmp eq ptr %i.t, null
  br i1 %.not15.i, label %bb.l, label %.thread.i

.thread.i:                                        ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br label %loader_set_params.exit

bb.l:                                             ; preds = %bb.k
  call void @OSSL_PARAM_construct_utf8_string(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %9, ptr noundef nonnull @.str.13, ptr noundef nonnull %3, i64 noundef 0) #8
  %i.u = getelementptr inbounds nuw i8, ptr %9, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #8
  call void @OSSL_PARAM_construct_end(ptr dead_on_unwind nonnull writable sret(%struct.ossl_param_st) align 8 %10) #8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %10, i64 40, i1 false), !tbaa.struct !23
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #8
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !21
  %i.x = call i32 %i.w(ptr noundef nonnull %i.o, ptr noundef nonnull %9) #8, !inline_history !22
  %.not16.not.i = icmp eq i32 %i.x, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #8
  br i1 %.not16.not.i, label %bb.m, label %loader_set_params.exit

bb.m:                                             ; preds = %bb.l, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 184
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !27
  %i.aa = call i32 %i.z(ptr noundef nonnull %i.o) #8 ; 0 uses
  call void @OSSL_STORE_LOADER_free(ptr noundef nonnull %i.g) #8
  br label %loader_set_params.exit

loader_set_params.exit:                           ; preds = %bb.j, %bb.l, %.thread.i, %bb.m, %bb.g
  %.051 = phi ptr [ null, %bb.g ], [ null, %bb.m ], [ %i.g, %.thread.i ], [ %i.g, %bb.l ], [ %i.g, %bb.j ] ; 2 uses
  %.2 = phi ptr [ null, %bb.g ], [ %i.o, %bb.m ], [ %i.o, %.thread.i ], [ %i.o, %bb.l ], [ %i.o, %bb.j ]
  %i.ab = call i32 @ossl_core_bio_free(ptr noundef %i.j) #8 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.b, %loader_set_params.exit
  %.152 = phi ptr [ %.051, %loader_set_params.exit ], [ null, %bb.b ]
  %.3 = phi ptr [ %.2, %loader_set_params.exit ], [ %i.f, %bb.b ] ; 2 uses
  %.049 = phi ptr [ %.051, %loader_set_params.exit ], [ %i.c, %bb.b ]
  %i.ac = icmp eq ptr %.3, null
  br i1 %i.ac, label %.thread72, label %bb.o

.thread72:                                        ; preds = %bb.c, %bb.n
  %i.ad = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ae = call noalias ptr @CRYPTO_zalloc(i64 noundef 120, ptr noundef nonnull @.str, i32 noundef 1072) #8 ; 9 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ag = call i32 @ERR_clear_last_mark() #8      ; 0 uses
  br label %bb.u

bb.q:                                             ; preds = %bb.o
  %.not66 = icmp eq ptr %4, null
  br i1 %.not66, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
end_hunk_3
