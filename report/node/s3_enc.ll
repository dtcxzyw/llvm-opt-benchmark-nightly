Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/s3_enc?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ossl_param_st = type { ptr, i32, ptr, i64, i64 }

@.str = private unnamed_addr constant [40 x i8] c"../../deps/openssl/openssl/ssl/s3_enc.c\00", align 1
@__func__.ssl3_change_cipher_state = private unnamed_addr constant [25 x i8] c"ssl3_change_cipher_state\00", align 1
@__func__.ssl3_setup_key_block = private unnamed_addr constant [21 x i8] c"ssl3_setup_key_block\00", align 1
@__func__.ssl3_init_finished_mac = private unnamed_addr constant [23 x i8] c"ssl3_init_finished_mac\00", align 1
@__func__.ssl3_finish_mac = private unnamed_addr constant [16 x i8] c"ssl3_finish_mac\00", align 1
@__func__.ssl3_digest_cached_records = private unnamed_addr constant [27 x i8] c"ssl3_digest_cached_records\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"ssl3-ms\00", align 1
@__func__.ssl3_final_finish_mac = private unnamed_addr constant [22 x i8] c"ssl3_final_finish_mac\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"BB\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"CCC\00", align 1
@__func__.ssl3_generate_master_secret = private unnamed_addr constant [28 x i8] c"ssl3_generate_master_secret\00", align 1
@__func__.ssl3_generate_key_block = private unnamed_addr constant [24 x i8] c"ssl3_generate_key_block\00", align 1
@switch.table.ssl3_alert_code = private unnamed_addr constant [121 x i32] [i32 0, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 10, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 20, i32 20, i32 20, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 30, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 42, i32 40, i32 40, i32 40, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 40, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 40, i32 40, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 40, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 86, i32 -1, i32 -1, i32 -1, i32 40, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 40, i32 40, i32 40, i32 40, i32 40, i32 40, i32 115, i32 40, i32 -1, i32 -1, i32 -1, i32 120], align 4

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl3_change_cipher_state(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %1, 1
  %i.b = xor i32 %i.a, 1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !10   ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !73   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %.sink.split, label %bb.b, !prof !74

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !75   ; 4 uses
  %i.i = tail call i32 @EVP_MD_get_size(ptr noundef nonnull %i.f) #6 ; 2 uses
  %i.j = icmp slt i32 %i.i, 1
  br i1 %i.j, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = zext nneg i32 %i.i to i64                ; 5 uses
  %i.l = tail call i32 @EVP_CIPHER_get_key_length(ptr noundef %i.d) #6
  %i.m = sext i32 %i.l to i64                     ; 4 uses
  %i.n = tail call i32 @EVP_CIPHER_get_iv_length(ptr noundef %i.d) #6
  %i.o = sext i32 %i.n to i64                     ; 4 uses
  switch i32 %1, label %bb.e [
    i32 33, label %bb.d
    i32 18, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c, %bb.c
  %i.p = shl nuw nsw i64 %i.k, 1
  %i.q = add nsw i64 %i.m, %i.k                   ; 2 uses
  %i.r = shl nsw i64 %i.q, 1
  %i.s = add nsw i64 %i.q, %i.o
  %i.t = shl nsw i64 %i.s, 1
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %reass.add = shl nuw nsw i64 %i.k, 1
  %i.v = add nsw i64 %reass.add, %i.m             ; 2 uses
  %i.w = add nsw i64 %i.o, %i.m
  %i.x = add nsw i64 %i.w, %i.v                   ; 2 uses
  %i.y = add nsw i64 %i.x, %i.o
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.059 = phi ptr [ %i.h, %bb.d ], [ %i.u, %bb.e ]
  %.pn = phi i64 [ %i.p, %bb.d ], [ %i.v, %bb.e ]
  %.pn63 = phi i64 [ %i.r, %bb.d ], [ %i.x, %bb.e ]
  %.0 = phi i64 [ %i.t, %bb.d ], [ %i.y, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !76
  %i.ab = icmp ugt i64 %.0, %i.aa
  br i1 %i.ab, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.057 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn63
  %.058 = getelementptr inbounds nuw i8, ptr %i.h, i64 %.pn
  %i.ac = tail call i32 @ssl_set_new_record_layer(ptr noundef nonnull %0, i32 noundef 768, i32 noundef %i.b, i32 noundef 3, ptr noundef null, i64 noundef 0, ptr noundef %.058, i64 noundef %i.m, ptr noundef %.057, i64 noundef %i.o, ptr noundef %.059, i64 noundef %i.k, ptr noundef %i.d, i64 noundef 0, i32 noundef 0, ptr noundef nonnull %i.f, ptr noundef null, ptr noundef null) #6
  %.not64 = icmp eq i32 %i.ac, 0
  br i1 %.not64, label %bb.h, label %bb.i

.sink.split:                                      ; preds = %bb.f, %bb.b, %bb.a
  %.sink = phi i32 [ 118, %bb.b ], [ 108, %bb.a ], [ 143, %bb.f ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @__func__.ssl3_change_cipher_state) #6
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #6
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.g
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %.060 = phi i32 [ 0, %bb.h ], [ 1, %bb.g ]
  ret i32 %.060
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ossl_statem_fatal(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_key_length(ptr noundef) local_unnamed_addr #2

declare i32 @EVP_CIPHER_get_iv_length(ptr noundef) local_unnamed_addr #2

declare i32 @ssl_set_new_record_layer(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl3_setup_key_block(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [20 x i8], align 16               ; 7 uses
  %i.c = alloca ptr, align 8                      ; 6 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !76
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !77
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 2304 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !78
  %i.l = call i32 @ssl_cipher_get_evp(ptr noundef %i.i, ptr noundef %i.k, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.e, i32 noundef 0) #6
  %.not25 = icmp eq i32 %i.l, 0
  br i1 %.not25, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ossl_statem_send_fatal(ptr noundef nonnull %0, i32 noundef 80) #6
  br label %bb.ab

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !10
  call void @ssl_evp_cipher_free(ptr noundef %i.n) #6
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !79
  store ptr %i.o, ptr %i.m, align 8, !tbaa !10
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !73
  call void @ssl_evp_md_free(ptr noundef %i.q) #6
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !80   ; 2 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !73
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 912
  store ptr null, ptr %i.s, align 8, !tbaa !81
  %i.t = call i32 @EVP_MD_get_size(ptr noundef %i.r) #6 ; 2 uses
  %i.u = icmp slt i32 %i.t, 1
  br i1 %i.u, label %bb.ab, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.w = call i32 @EVP_CIPHER_get_key_length(ptr noundef %i.v) #6
  %i.x = add i32 %i.w, %i.t
  %i.y = load ptr, ptr %i.c, align 8, !tbaa !79
  %i.z = call i32 @EVP_CIPHER_get_iv_length(ptr noundef %i.y) #6
  %i.aa = add i32 %i.x, %i.z                      ; 2 uses
  %i.ab = shl i32 %i.aa, 1                        ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !75
  %i.ae = load i64, ptr %i.f, align 8, !tbaa !76
  call void @CRYPTO_clear_free(ptr noundef %i.ad, i64 noundef %i.ae, ptr noundef nonnull @.str, i32 noundef 215) #6
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  %i.af = sext i32 %i.ab to i64                   ; 2 uses
  %i.ag = call noalias ptr @CRYPTO_malloc(i64 noundef %i.af, ptr noundef nonnull @.str, i32 noundef 199) #6 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @__func__.ssl3_setup_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #6
  br label %bb.ab

bb.g:                                             ; preds = %bb.e
  store i64 %i.af, ptr %i.f, align 8, !tbaa !76
  store ptr %i.ag, ptr %i.ac, align 8, !tbaa !75
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.ai = load ptr, ptr %i.h, align 8, !tbaa !77  ; 3 uses
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !82
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 1136 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.am = call ptr @ssl_evp_md_fetch(ptr noundef %i.aj, i32 noundef 4, ptr noundef %i.al) #6 ; 3 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !82
  %i.ao = load ptr, ptr %i.ak, align 8, !tbaa !97
  %i.ap = call ptr @ssl_evp_md_fetch(ptr noundef %i.an, i32 noundef 64, ptr noundef %i.ao) #6 ; 3 uses
  %i.aq = call ptr @EVP_MD_CTX_new() #6           ; 7 uses
  %i.ar = call ptr @EVP_MD_CTX_new() #6           ; 8 uses
  %i.as = insertelement <4 x ptr> poison, ptr %i.am, i64 0
  %i.at = insertelement <4 x ptr> %i.as, ptr %i.ap, i64 1
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.aq, i64 2
  %i.av = insertelement <4 x ptr> %i.au, ptr %i.ar, i64 3
  %.fr = freeze <4 x ptr> %i.av
  %i.aw = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.ax = bitcast <4 x i1> %i.aw to i4
  %.not32 = icmp eq i4 %i.ax, 0
  br i1 %.not32, label %.preheader.i, label %bb.h

.preheader.i:                                     ; preds = %bb.g
  %i.ay = icmp sgt i32 %i.aa, 0
  br i1 %i.ay, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.bb = zext i32 %i.ab to i64                   ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.bb, i64 16)
  %i.bc = add nsw i64 %umax, -2
  %i.bd = lshr i64 %i.bc, 4
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 39, ptr noundef nonnull @__func__.ssl3_generate_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524294, ptr noundef null) #6
  br label %ssl3_generate_key_block.exit

bb.i:                                             ; preds = %bb.aa, %.lr.ph.i
  %indvars.iv82.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next83.i, %bb.aa ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.aa ] ; 3 uses
  %.06079.i = phi i8 [ 65, %.lr.ph.i ], [ %i.be, %bb.aa ] ; 2 uses
  %.06178.i = phi ptr [ %i.ag, %.lr.ph.i ], [ %i.bz, %bb.aa ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %exitcond.i = icmp eq i64 %indvars.iv.i, 16
  br i1 %exitcond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @__func__.ssl3_generate_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #6
  br label %ssl3_generate_key_block.exit

bb.k:                                             ; preds = %bb.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.a, i8 %.06079.i, i64 %indvars.iv.next.i, i1 false)
  %i.be = add nuw nsw i8 %.06079.i, 1
  %i.bf = call i32 @EVP_DigestInit_ex(ptr noundef %i.ar, ptr noundef %i.ap, ptr noundef null) #6
  %.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i, label %bb.t, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bg = call i32 @EVP_DigestUpdate(ptr noundef %i.ar, ptr noundef nonnull %i.a, i64 noundef %indvars.iv.next.i) #6
  %.not68.i = icmp eq i32 %i.bg, 0
  br i1 %.not68.i, label %bb.t, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load ptr, ptr %i.j, align 8, !tbaa !78  ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !98
  %i.bl = call i32 @EVP_DigestUpdate(ptr noundef %i.ar, ptr noundef nonnull %i.bi, i64 noundef %i.bk) #6
  %.not69.i = icmp eq i32 %i.bl, 0
  br i1 %.not69.i, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bm = call i32 @EVP_DigestUpdate(ptr noundef %i.ar, ptr noundef nonnull %i.az, i64 noundef 32) #6
  %.not70.i = icmp eq i32 %i.bm, 0
  br i1 %.not70.i, label %bb.t, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bn = call i32 @EVP_DigestUpdate(ptr noundef %i.ar, ptr noundef nonnull %i.ba, i64 noundef 32) #6
  %.not71.i = icmp eq i32 %i.bn, 0
  br i1 %.not71.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = call i32 @EVP_DigestFinal_ex(ptr noundef %i.ar, ptr noundef nonnull %i.b, ptr noundef null) #6
  %.not72.i = icmp eq i32 %i.bo, 0
  br i1 %.not72.i, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bp = call i32 @EVP_DigestInit_ex(ptr noundef %i.aq, ptr noundef %i.am, ptr noundef null) #6
  %.not73.i = icmp eq i32 %i.bp, 0
  br i1 %.not73.i, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bq = load ptr, ptr %i.j, align 8, !tbaa !78  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 80
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !98
  %i.bu = call i32 @EVP_DigestUpdate(ptr noundef %i.aq, ptr noundef nonnull %i.br, i64 noundef %i.bt) #6
  %.not74.i = icmp eq i32 %i.bu, 0
  br i1 %.not74.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bv = call i32 @EVP_DigestUpdate(ptr noundef %i.aq, ptr noundef nonnull %i.b, i64 noundef 20) #6
  %.not75.i = icmp eq i32 %i.bv, 0
  br i1 %.not75.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 63, ptr noundef nonnull @__func__.ssl3_generate_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #6
  br label %ssl3_generate_key_block.exit

bb.u:                                             ; preds = %bb.s
  %indvars.iv.next83.i = add nuw nsw i64 %indvars.iv82.i, 16 ; 2 uses
  %i.bw = icmp samesign ugt i64 %indvars.iv.next83.i, %i.bb
  br i1 %i.bw, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.bx = call i32 @EVP_DigestFinal_ex(ptr noundef %i.aq, ptr noundef nonnull %i.b, ptr noundef null) #6
  %.not77.i = icmp eq i32 %i.bx, 0
  br i1 %.not77.i, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 68, ptr noundef nonnull @__func__.ssl3_generate_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #6
  br label %ssl3_generate_key_block.exit

bb.x:                                             ; preds = %bb.v
  %1 = sub nuw nsw i64 %i.bb, %indvars.iv82.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.06178.i, ptr nonnull align 16 %i.b, i64 %1, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %bb.u
  %i.by = call i32 @EVP_DigestFinal_ex(ptr noundef %i.aq, ptr noundef nonnull %.06178.i, ptr noundef null) #6
  %.not76.i = icmp eq i32 %i.by, 0
  br i1 %.not76.i, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @__func__.ssl3_generate_key_block) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #6
  br label %ssl3_generate_key_block.exit

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.bz = getelementptr inbounds nuw i8, ptr %.06178.i, i64 16
  %exitcond.not = icmp eq i64 %indvars.iv.i, %i.bd
  br i1 %exitcond.not, label %._crit_edge.i, label %bb.i, !llvm.loop !101

._crit_edge.i:                                    ; preds = %bb.aa, %.preheader.i
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 20) #6
  br label %ssl3_generate_key_block.exit

ssl3_generate_key_block.exit:                     ; preds = %bb.h, %bb.j, %bb.t, %bb.w, %bb.z, %._crit_edge.i
  %.0.i = phi i32 [ 0, %bb.h ], [ 0, %bb.j ], [ 0, %bb.w ], [ 0, %bb.z ], [ 0, %bb.t ], [ 1, %._crit_edge.i ]
  call void @EVP_MD_CTX_free(ptr noundef %i.aq) #6
  call void @EVP_MD_CTX_free(ptr noundef %i.ar) #6
  call void @ssl_evp_md_free(ptr noundef %i.am) #6
  call void @ssl_evp_md_free(ptr noundef %i.ap) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br label %bb.ab

bb.ab:                                            ; preds = %bb.d, %bb.a, %ssl3_generate_key_block.exit, %bb.f, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ 1, %bb.a ], [ 0, %bb.f ], [ %.0.i, %ssl3_generate_key_block.exit ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #6
  ret i32 %.0
}

declare i32 @ssl_cipher_get_evp(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_statem_send_fatal(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ssl_evp_cipher_free(ptr noundef) local_unnamed_addr #2

declare void @ssl_evp_md_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ssl3_cleanup_key_block(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 872
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 864 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !76
  tail call void @CRYPTO_clear_free(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull @.str, i32 noundef 215) #6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  ret void
}

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl3_init_finished_mac(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @BIO_s_mem() #6
  %i.b = tail call ptr @BIO_new(ptr noundef %i.a) #6 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 225, ptr noundef nonnull @__func__.ssl3_init_finished_mac) #6
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 524320, ptr noundef null) #6
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103
  %i.f = tail call i32 @BIO_free(ptr noundef %i.e) #6 ; 0 uses
  store ptr null, ptr %i.d, align 8, !tbaa !103
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104
  tail call void @EVP_MD_CTX_free(ptr noundef %i.h) #6
  store ptr null, ptr %i.g, align 8, !tbaa !104
  store ptr %i.b, ptr %i.d, align 8, !tbaa !103
  %i.i = tail call i64 @BIO_ctrl(ptr noundef nonnull %i.b, i32 noundef 9, i64 noundef 1, ptr noundef null) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ]
  ret i32 %.0
}

declare ptr @BIO_new(ptr noundef) local_unnamed_addr #2

declare ptr @BIO_s_mem() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @ssl3_free_digest_list(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !103
  %i.c = tail call i32 @BIO_free(ptr noundef %i.b) #6 ; 0 uses
  store ptr null, ptr %i.a, align 8, !tbaa !103
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  tail call void @EVP_MD_CTX_free(ptr noundef %i.e) #6
  store ptr null, ptr %i.d, align 8, !tbaa !104
  ret void
}

declare i64 @BIO_ctrl(ptr noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @BIO_free(ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl3_finish_mac(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104  ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = icmp ugt i64 %2, 2147483647
  br i1 %i.d, label %.sink.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = trunc nuw nsw i64 %2 to i32              ; 2 uses
  %i.h = tail call i32 @BIO_write(ptr noundef %i.f, ptr noundef %1, i32 noundef %i.g) #6 ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  %.not18 = icmp eq i32 %i.h, %i.g
  %or.cond = and i1 %i.i, %.not18
  br i1 %or.cond, label %bb.e, label %.sink.split

bb.d:                                             ; preds = %bb.a
  %i.j = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.b, ptr noundef %1, i64 noundef %2) #6
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.sink.split, label %bb.e

.sink.split:                                      ; preds = %bb.d, %bb.c, %bb.b
  %.sink21 = phi i32 [ 259, %bb.c ], [ 254, %bb.b ], [ 265, %bb.d ]
  %.sink = phi i32 [ 786691, %bb.c ], [ 237, %bb.b ], [ 786691, %bb.d ]
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %.sink21, ptr noundef nonnull @__func__.ssl3_finish_mac) #6
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef %.sink, ptr noundef null) #6
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.d, %bb.c
  %.0 = phi i32 [ 1, %bb.d ], [ 1, %bb.c ], [ 0, %.sink.split ]
  ret i32 %.0
}

declare i32 @BIO_write(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl3_digest_cached_records(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103
  %i.g = call i64 @BIO_ctrl(ptr noundef %i.f, i32 noundef 3, i64 noundef 0, ptr noundef nonnull %i.a) #6 ; 2 uses
  %i.h = icmp slt i64 %i.g, 1
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 281, ptr noundef nonnull @__func__.ssl3_digest_cached_records) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 332, ptr noundef null) #6
  br label %bb.m

bb.d:                                             ; preds = %bb.b
  %i.i = call ptr @EVP_MD_CTX_new() #6            ; 2 uses
  store ptr %i.i, ptr %i.b, align 8, !tbaa !104
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 287, ptr noundef nonnull @__func__.ssl3_digest_cached_records) #6
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524294, ptr noundef null) #6
  br label %bb.m

bb.f:                                             ; preds = %bb.d
end_hunk_0
