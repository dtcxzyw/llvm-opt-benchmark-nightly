inline.NumInlined: 36
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.srtm_item_st = type { ptr, ptr, ptr, i64, %struct.QUIC_STATELESS_RESET_TOKEN, [16 x i8] }
%struct.QUIC_STATELESS_RESET_TOKEN = type { [16 x i8] }

@.str = private unnamed_addr constant [48 x i8] c"../../deps/openssl/openssl/ssl/quic/quic_srtm.c\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"AES-128-ECB\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_quic_srtm_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  %i.b = call i32 @RAND_priv_bytes_ex(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 16, i32 noundef 128) #8
  %.not = icmp eq i32 %i.b, 1
  br i1 %.not, label %bb.b, label %ossl_quic_srtm_free.exit

bb.b:                                             ; preds = %bb.a
  %i.c = call noalias ptr @CRYPTO_zalloc(i64 noundef 32, ptr noundef nonnull @.str, i32 noundef 119) #8 ; 9 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.k, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call ptr @EVP_CIPHER_fetch(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef %1) #8 ; 5 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = call ptr @EVP_CIPHER_CTX_new() #8        ; 3 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !9
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = call i32 @EVP_EncryptInit_ex2(ptr noundef nonnull %i.g, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null) #8
  %.not18 = icmp eq i32 %i.i, 0
  br i1 %.not18, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @EVP_CIPHER_free(ptr noundef nonnull %i.e) #8
  %i.j = call ptr @OPENSSL_LH_new(ptr noundef nonnull @items_fwd_hash, ptr noundef nonnull @items_fwd_cmp) #8
  %i.k = call ptr @OPENSSL_LH_set_thunks(ptr noundef %i.j, ptr noundef nonnull @lh_SRTM_ITEM_hfn_thunk, ptr noundef nonnull @lh_SRTM_ITEM_cfn_thunk, ptr noundef nonnull @lh_SRTM_ITEM_doall_thunk, ptr noundef nonnull @lh_SRTM_ITEM_doall_arg_thunk) #8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !14
  %i.m = icmp eq ptr %i.k, null
  br i1 %i.m, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = call ptr @OPENSSL_LH_new(ptr noundef nonnull @items_rev_hash, ptr noundef nonnull @items_rev_cmp) #8
  %i.o = call ptr @OPENSSL_LH_set_thunks(ptr noundef %i.n, ptr noundef nonnull @lh_SRTM_ITEM_hfn_thunk, ptr noundef nonnull @lh_SRTM_ITEM_cfn_thunk, ptr noundef nonnull @lh_SRTM_ITEM_doall_thunk, ptr noundef nonnull @lh_SRTM_ITEM_doall_arg_thunk) #8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.o, ptr %i.p, align 8, !tbaa !15
  %i.q = icmp eq ptr %i.o, null
  br i1 %i.q, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.c, %bb.d, %bb.f, %bb.g, %bb.e
  %.0.ph = phi ptr [ %i.e, %bb.e ], [ null, %bb.g ], [ null, %bb.f ], [ %i.e, %bb.d ], [ null, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !15
  call void @OPENSSL_LH_free(ptr noundef %i.s) #8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !14   ; 3 uses
  %.not.i = icmp eq ptr %i.u, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @OPENSSL_LH_doall(ptr noundef nonnull %i.u, ptr noundef nonnull @srtm_free_each) #8
  call void @OPENSSL_LH_free(ptr noundef nonnull %i.u) #8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !9
  call void @EVP_CIPHER_CTX_free(ptr noundef %i.v) #8
  call void @CRYPTO_free(ptr noundef nonnull %i.c, ptr noundef nonnull @.str, i32 noundef 176) #8
  br label %ossl_quic_srtm_free.exit

ossl_quic_srtm_free.exit:                         ; preds = %bb.a, %bb.j
  %.023 = phi ptr [ %.0.ph, %bb.j ], [ null, %bb.a ]
  call void @EVP_CIPHER_free(ptr noundef %.023) #8
  br label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.b, %ossl_quic_srtm_free.exit
  %.014 = phi ptr [ null, %ossl_quic_srtm_free.exit ], [ null, %bb.b ], [ %i.c, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.014
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @RAND_priv_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_fetch(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @EVP_CIPHER_CTX_new() local_unnamed_addr #2

declare i32 @EVP_EncryptInit_ex2(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @items_fwd_hash(ptr noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = ptrtoint ptr %i.b to i64
  ret i64 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal range(i32 0, 2) i32 @items_fwd_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp ne ptr %i.b, %i.d
  %i.f = zext i1 %i.e to i32
  ret i32 %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @items_rev_hash(ptr noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.0.copyload = load i64, ptr %i.a, align 8
  ret i64 %.0.copyload
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable
define internal i32 @items_rev_cmp(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) #4 {
loadbb:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.c = load i64, ptr %i.a, align 1
  %i.d = load i64, ptr %i.b, align 1
  %i.e = tail call i64 @llvm.bswap.i64(i64 %i.c)  ; 2 uses
  %i.f = tail call i64 @llvm.bswap.i64(i64 %i.d)  ; 2 uses
  %i.g = icmp eq i64 %i.e, %i.f
  br i1 %i.g, label %loadbb2, label %res_block

res_block:                                        ; preds = %loadbb2, %loadbb
  %phi.src1 = phi i64 [ %i.e, %loadbb ], [ %i.n, %loadbb2 ]
  %phi.src2 = phi i64 [ %i.f, %loadbb ], [ %i.o, %loadbb2 ]
  %i.h = icmp ult i64 %phi.src1, %phi.src2
  %i.i = select i1 %i.h, i32 -1, i32 1
  br label %endblock

loadbb2:                                          ; preds = %loadbb
  %i.j = getelementptr i8, ptr %i.a, i64 8
  %i.k = getelementptr i8, ptr %i.b, i64 8
  %i.l = load i64, ptr %i.j, align 1
  %i.m = load i64, ptr %i.k, align 1
  %i.n = tail call i64 @llvm.bswap.i64(i64 %i.l)  ; 2 uses
  %i.o = tail call i64 @llvm.bswap.i64(i64 %i.m)  ; 2 uses
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %endblock, label %res_block

endblock:                                         ; preds = %res_block, %loadbb2
  %phi.res = phi i32 [ 0, %loadbb2 ], [ %i.i, %res_block ]
  ret i32 %phi.res
}

; Function Attrs: nounwind uwtable
define dso_local void @ossl_quic_srtm_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15
  tail call void @OPENSSL_LH_free(ptr noundef %i.c) #8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @OPENSSL_LH_doall(ptr noundef nonnull %i.e, ptr noundef nonnull @srtm_free_each) #8
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !14
  tail call void @OPENSSL_LH_free(ptr noundef %i.f) #8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr %0, align 8, !tbaa !9
  tail call void @EVP_CIPHER_CTX_free(ptr noundef %i.g) #8
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 176) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define internal void @srtm_free_each(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.08 = phi ptr [ %i.d, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.08, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21   ; 2 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %.08, ptr noundef nonnull @.str, i32 noundef 158) #8
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 161) #8
  ret void
}

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_srtm_add(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %4 = alloca %struct.srtm_item_st, align 8       ; 5 uses
  %i.b = alloca ptr, align 8                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.d = load i8, ptr %i.c, align 8
  %i.e = and i8 %i.d, 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.b, label %srtm_check_lh.exit60

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 8          ; 5 uses
  %.val = load ptr, ptr %i.f, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.g, align 8, !tbaa !16
  %i.h = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val, ptr noundef nonnull %4) #8 ; 7 uses
  %.not201.i = icmp eq ptr %i.h, null             ; 2 uses
  br i1 %.not201.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.0152.i = phi ptr [ %i.n, %bb.d ], [ %i.h, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.0152.i, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !24   ; 2 uses
  %i.k = icmp eq i64 %i.j, %2
  br i1 %i.k, label %srtm_find.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.l = icmp ult i64 %i.j, %2
  br i1 %i.l, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.0152.i, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !21   ; 2 uses
  %.not20.i = icmp eq ptr %i.n, null
  br i1 %.not20.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !25

srtm_find.exit:                                   ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  br label %srtm_check_lh.exit60

.loopexit:                                        ; preds = %bb.c, %bb.d, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.o = call noalias ptr @CRYPTO_zalloc(i64 noundef 64, ptr noundef nonnull @.str, i32 noundef 294) #8 ; 15 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %srtm_check_lh.exit60, label %bb.e

bb.e:                                             ; preds = %.loopexit
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %1, ptr %i.q, align 8, !tbaa !16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i64 %2, ptr %i.r, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 1 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !26
  %.val50 = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.u = call i32 @EVP_EncryptUpdate(ptr noundef %.val50, ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, ptr noundef nonnull %i.s, i32 noundef 16) #8
  %.not.i = icmp eq i32 %i.u, 0
  %i.v = load i32, ptr %i.a, align 4
  %i.w = icmp ne i32 %i.v, 16
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %narrow.i.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  call void @CRYPTO_free(ptr noundef nonnull %i.o, ptr noundef nonnull @.str, i32 noundef 301) #8
  br label %srtm_check_lh.exit60

bb.g:                                             ; preds = %bb.e
  br i1 %.not201.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.y = call ptr @OPENSSL_LH_insert(ptr noundef %i.x, ptr noundef nonnull %i.o) #8 ; 0 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.aa = call i32 @OPENSSL_LH_error(ptr noundef %i.z) #8
  %.not.i51 = icmp eq i32 %i.aa, 0
  br i1 %.not.i51, label %srtm_check_lh.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = load i8, ptr %i.c, align 8
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.c, align 8
  call void @CRYPTO_free(ptr noundef nonnull %i.o, ptr noundef nonnull @.str, i32 noundef 310) #8
  br label %srtm_check_lh.exit60

bb.j:                                             ; preds = %bb.g
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !24  ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !24
  %i.ag = icmp ugt i64 %i.af, %i.ad
  br i1 %i.ag, label %.lr.ph, label %sorted_insert_seq_num.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !24
  %i.aj = icmp ugt i64 %i.ai, %i.ad
  br i1 %i.aj, label %.lr.ph, label %sorted_insert_seq_num.exit.loopexit, !llvm.loop !29

.lr.ph:                                           ; preds = %bb.j, %bb.k
  %.01314.i82 = phi ptr [ %i.al, %bb.k ], [ %i.h, %bb.j ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01314.i82, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !21 ; 4 uses
  %.not.i54 = icmp eq ptr %i.al, null
  br i1 %.not.i54, label %.sorted_insert_seq_num.exit_crit_edge84, label %bb.k, !llvm.loop !29

.sorted_insert_seq_num.exit_crit_edge84:          ; preds = %.lr.ph
  %i.am = getelementptr inbounds nuw i8, ptr %.01314.i82, i64 8
  br label %sorted_insert_seq_num.exit, !llvm.loop !29

sorted_insert_seq_num.exit.loopexit:              ; preds = %bb.k
  %i.an = getelementptr inbounds nuw i8, ptr %.01314.i82, i64 8
  br label %sorted_insert_seq_num.exit

sorted_insert_seq_num.exit:                       ; preds = %sorted_insert_seq_num.exit.loopexit, %.sorted_insert_seq_num.exit_crit_edge84, %bb.j
  %i.ao = phi ptr [ null, %.sorted_insert_seq_num.exit_crit_edge84 ], [ %i.h, %bb.j ], [ %i.al, %sorted_insert_seq_num.exit.loopexit ]
  %.0.lcssa.i53 = phi ptr [ %i.am, %.sorted_insert_seq_num.exit_crit_edge84 ], [ %i.b, %bb.j ], [ %i.an, %sorted_insert_seq_num.exit.loopexit ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.ao, ptr %i.ap, align 8, !tbaa !21
  store ptr %i.o, ptr %.0.lcssa.i53, align 8, !tbaa !28
  %.0..0..0. = load ptr, ptr %i.b, align 8, !tbaa !28 ; 2 uses
  %.not44 = icmp eq ptr %.0..0..0., %i.h
  br i1 %.not44, label %srtm_check_lh.exit, label %bb.l

bb.l:                                             ; preds = %sorted_insert_seq_num.exit
  %i.aq = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.ar = call ptr @OPENSSL_LH_insert(ptr noundef %i.aq, ptr noundef %.0..0..0.) #8 ; 0 uses
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.at = call i32 @OPENSSL_LH_error(ptr noundef %i.as) #8
  %.not.i55 = icmp eq i32 %i.at, 0
  br i1 %.not.i55, label %srtm_check_lh.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = load i8, ptr %i.c, align 8
  %i.av = or i8 %i.au, 1
  store i8 %i.av, ptr %i.c, align 8
  call void @CRYPTO_free(ptr noundef nonnull %i.o, ptr noundef nonnull @.str, i32 noundef 318) #8
  br label %srtm_check_lh.exit60

srtm_check_lh.exit:                               ; preds = %bb.l, %bb.h, %sorted_insert_seq_num.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.ay = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.ax, ptr noundef nonnull %i.o) #8 ; 6 uses
  %i.az = icmp eq ptr %i.ay, null
  br i1 %i.az, label %bb.n, label %bb.o

bb.n:                                             ; preds = %srtm_check_lh.exit
  %i.ba = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.bb = call ptr @OPENSSL_LH_insert(ptr noundef %i.ba, ptr noundef nonnull %i.o) #8 ; 0 uses
  %i.bc = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.bd = call i32 @OPENSSL_LH_error(ptr noundef %i.bc) #8
  %.not.i58 = icmp eq i32 %i.bd, 0
  br i1 %.not.i58, label %srtm_check_lh.exit60, label %srtm_check_lh.exit60.thread

srtm_check_lh.exit60.thread:                      ; preds = %bb.n
  %i.be = load i8, ptr %i.c, align 8
  %i.bf = or i8 %i.be, 1
  store i8 %i.bf, ptr %i.c, align 8
  br label %srtm_check_lh.exit60

bb.o:                                             ; preds = %srtm_check_lh.exit
  %i.bg = load ptr, ptr %i.q, align 8, !tbaa !16  ; 2 uses
  store ptr %i.ay, ptr %i.b, align 8, !tbaa !28
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !16
  %i.bj = icmp ugt ptr %i.bi, %i.bg
  br i1 %i.bj, label %.lr.ph88, label %sorted_insert_srt.exit

bb.p:                                             ; preds = %.lr.ph88
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !16
  %i.bm = icmp ugt ptr %i.bl, %i.bg
  br i1 %i.bm, label %.lr.ph88, label %sorted_insert_srt.exit, !llvm.loop !30

.lr.ph88:                                         ; preds = %bb.o, %bb.p
  %.01314.i6287 = phi ptr [ %i.bn, %bb.p ], [ %i.ay, %bb.o ] ; 3 uses
  %i.bn = load ptr, ptr %.01314.i6287, align 8, !tbaa !31 ; 4 uses
  %.not.i64 = icmp eq ptr %i.bn, null
  br i1 %.not.i64, label %.sorted_insert_srt.exit_crit_edge91, label %bb.p, !llvm.loop !30

.sorted_insert_srt.exit_crit_edge91:              ; preds = %.lr.ph88
  br label %sorted_insert_srt.exit, !llvm.loop !30

sorted_insert_srt.exit:                           ; preds = %bb.p, %.sorted_insert_srt.exit_crit_edge91, %bb.o
  %i.bo = phi ptr [ null, %.sorted_insert_srt.exit_crit_edge91 ], [ %i.ay, %bb.o ], [ %i.bn, %bb.p ]
  %.0.lcssa.i63 = phi ptr [ %.01314.i6287, %.sorted_insert_srt.exit_crit_edge91 ], [ %i.b, %bb.o ], [ %.01314.i6287, %bb.p ]
  store ptr %i.bo, ptr %i.o, align 8, !tbaa !31
  store ptr %i.o, ptr %.0.lcssa.i63, align 8, !tbaa !28
  %.0..0..0.68 = load ptr, ptr %i.b, align 8, !tbaa !28 ; 2 uses
  %.not47 = icmp eq ptr %.0..0..0.68, %i.ay
  br i1 %.not47, label %srtm_check_lh.exit60, label %bb.q

bb.q:                                             ; preds = %sorted_insert_srt.exit
  %i.bp = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.bq = call ptr @OPENSSL_LH_insert(ptr noundef %i.bp, ptr noundef %.0..0..0.68) #8 ; 0 uses
  %i.br = load ptr, ptr %i.aw, align 8, !tbaa !15
  %i.bs = call i32 @OPENSSL_LH_error(ptr noundef %i.br) #8
  %.not.i65 = icmp eq i32 %i.bs, 0
  br i1 %.not.i65, label %srtm_check_lh.exit60, label %srtm_check_lh.exit67.thread

srtm_check_lh.exit67.thread:                      ; preds = %bb.q
  %i.bt = load i8, ptr %i.c, align 8
  %i.bu = or i8 %i.bt, 1
  store i8 %i.bu, ptr %i.c, align 8
  br label %srtm_check_lh.exit60

srtm_check_lh.exit60:                             ; preds = %sorted_insert_srt.exit, %bb.n, %bb.q, %srtm_check_lh.exit67.thread, %srtm_check_lh.exit60.thread, %srtm_find.exit, %.loopexit, %bb.a, %bb.m, %bb.i, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ 0, %bb.a ], [ 0, %srtm_find.exit ], [ 0, %srtm_check_lh.exit67.thread ], [ 0, %.loopexit ], [ 0, %srtm_check_lh.exit60.thread ], [ 0, %bb.i ], [ 0, %bb.m ], [ 1, %bb.q ], [ 1, %bb.n ], [ 1, %sorted_insert_srt.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_srtm_remove(ptr noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.srtm_item_st, align 8       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 1
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %1, ptr %i.e, align 8, !tbaa !16
  %i.f = call ptr @OPENSSL_LH_retrieve(ptr noundef %.val, ptr noundef nonnull %3) #8 ; 7 uses
  %.not201.i = icmp eq ptr %i.f, null
  br i1 %.not201.i, label %srtm_find.exit.thread, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !24   ; 2 uses
  %i.i = icmp eq i64 %i.h, %2
  br i1 %i.i, label %bb.d, label %.lr.ph

.lr.ph.i:                                         ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.k = load i64, ptr %i.j, align 8, !tbaa !24   ; 2 uses
  %i.l = icmp eq i64 %i.k, %2
  br i1 %i.l, label %bb.g, label %.lr.ph, !llvm.loop !25

.lr.ph:                                           ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %i.m = phi i64 [ %i.k, %.lr.ph.i ], [ %i.h, %.lr.ph.i.preheader ]
  %.0152.i31 = phi ptr [ %i.p, %.lr.ph.i ], [ %i.f, %.lr.ph.i.preheader ] ; 2 uses
  %i.n = icmp ult i64 %i.m, %2
  br i1 %i.n, label %srtm_find.exit.thread, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.0152.i31, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !21   ; 5 uses
  %.not20.i = icmp eq ptr %i.p, null
  br i1 %.not20.i, label %srtm_find.exit.thread, label %.lr.ph.i, !llvm.loop !25

srtm_find.exit.thread:                            ; preds = %.lr.ph, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  br label %bb.m

bb.d:                                             ; preds = %.lr.ph.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !21   ; 2 uses
  %.not18 = icmp eq ptr %i.r, null
  %i.s = load ptr, ptr %i.d, align 8, !tbaa !14   ; 2 uses
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = call ptr @OPENSSL_LH_insert(ptr noundef %i.s, ptr noundef nonnull %i.r) #8 ; 0 uses
  %i.u = load ptr, ptr %i.d, align 8, !tbaa !14
  %i.v = call i32 @OPENSSL_LH_error(ptr noundef %i.u) #8
  %.not.i = icmp eq i32 %i.v, 0
  br i1 %.not.i, label %srtm_check_lh.exit, label %srtm_check_lh.exit.thread

srtm_check_lh.exit.thread:                        ; preds = %bb.e
  %i.w = load i8, ptr %i.a, align 8
  %i.x = or i8 %i.w, 1
  store i8 %i.x, ptr %i.a, align 8
  br label %bb.m

bb.f:                                             ; preds = %bb.d
  %i.y = call ptr @OPENSSL_LH_delete(ptr noundef %i.s, ptr noundef nonnull %i.f) #8 ; 0 uses
  br label %srtm_check_lh.exit

bb.g:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.z = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !21
  %i.ab = getelementptr inbounds nuw i8, ptr %.0152.i31, i64 8
  store ptr %i.aa, ptr %i.ab, align 8, !tbaa !21
  br label %srtm_check_lh.exit

srtm_check_lh.exit:                               ; preds = %bb.e, %bb.f, %bb.g
  %.0152.i.lcssa44 = phi ptr [ %i.f, %bb.e ], [ %i.f, %bb.f ], [ %i.p, %bb.g ] ; 7 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ae = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.ad, ptr noundef nonnull %.0152.i.lcssa44) #8 ; 2 uses
  %i.af = icmp eq ptr %i.ae, %.0152.i.lcssa44
  br i1 %i.af, label %bb.h, label %.preheader.i

bb.h:                                             ; preds = %srtm_check_lh.exit
  %i.ag = load ptr, ptr %.0152.i.lcssa44, align 8, !tbaa !31 ; 2 uses
  %.not21.i = icmp eq ptr %i.ag, null
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  br i1 %.not21.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call ptr @OPENSSL_LH_insert(ptr noundef %i.ah, ptr noundef nonnull %i.ag) #8 ; 0 uses
  %i.aj = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ak = call i32 @OPENSSL_LH_error(ptr noundef %i.aj) #8
  %.not.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not.i.i, label %bb.l, label %srtm_remove_from_rev.exit

bb.j:                                             ; preds = %bb.h
  %i.al = call ptr @OPENSSL_LH_delete(ptr noundef %i.ah, ptr noundef nonnull %.0152.i.lcssa44) #8 ; 0 uses
  br label %bb.l

.preheader.i:                                     ; preds = %srtm_check_lh.exit, %.preheader.i
  %.0.i21 = phi ptr [ %i.am, %.preheader.i ], [ %i.ae, %srtm_check_lh.exit ] ; 2 uses
  %i.am = load ptr, ptr %.0.i21, align 8, !tbaa !31 ; 2 uses
  %.not.i22 = icmp eq ptr %i.am, %.0152.i.lcssa44
  br i1 %.not.i22, label %bb.k, label %.preheader.i, !llvm.loop !32

bb.k:                                             ; preds = %.preheader.i
  %i.an = load ptr, ptr %.0152.i.lcssa44, align 8, !tbaa !31
  store ptr %i.an, ptr %.0.i21, align 8, !tbaa !31
  br label %bb.l

srtm_remove_from_rev.exit:                        ; preds = %bb.i
  %i.ao = load i8, ptr %i.a, align 8
  %i.ap = or i8 %i.ao, 1
  store i8 %i.ap, ptr %i.a, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  call void @CRYPTO_free(ptr noundef nonnull %.0152.i.lcssa44, ptr noundef nonnull @.str, i32 noundef 412) #8
  br label %bb.m

bb.m:                                             ; preds = %srtm_remove_from_rev.exit, %srtm_check_lh.exit.thread, %srtm_find.exit.thread, %bb.a, %bb.l
  %.0 = phi i32 [ 0, %srtm_find.exit.thread ], [ 0, %bb.a ], [ 1, %bb.l ], [ 0, %srtm_check_lh.exit.thread ], [ 0, %srtm_remove_from_rev.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_srtm_cull(ptr noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.srtm_item_st, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %1, ptr %i.a, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.f, ptr noundef nonnull %2) #8 ; 11 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.o, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.i
  %.01729 = phi ptr [ %i.g, %.preheader ], [ %i.k, %bb.i ] ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.01729, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 2 uses
  %.not20 = icmp eq ptr %.01729, %i.g
  br i1 %.not20, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.m = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.l, ptr noundef nonnull %.01729) #8 ; 2 uses
  %i.n = icmp eq ptr %i.m, %.01729
  br i1 %i.n, label %bb.e, label %.preheader.i

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %.01729, align 8, !tbaa !31 ; 2 uses
  %.not21.i = icmp eq ptr %i.o, null
  %i.p = load ptr, ptr %i.i, align 8, !tbaa !15   ; 2 uses
  br i1 %.not21.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = call ptr @OPENSSL_LH_insert(ptr noundef %i.p, ptr noundef nonnull %i.o) #8 ; 0 uses
  %i.r = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.s = call i32 @OPENSSL_LH_error(ptr noundef %i.r) #8
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %srtm_remove_from_rev.exit, label %srtm_check_lh.exit.thread.i

srtm_check_lh.exit.thread.i:                      ; preds = %bb.f
  %i.t = load i8, ptr %i.b, align 8
  %i.u = or i8 %i.t, 1
  store i8 %i.u, ptr %i.b, align 8
  br label %srtm_remove_from_rev.exit

bb.g:                                             ; preds = %bb.e
  %i.v = call ptr @OPENSSL_LH_delete(ptr noundef %i.p, ptr noundef nonnull %.01729) #8 ; 0 uses
  br label %srtm_remove_from_rev.exit

.preheader.i:                                     ; preds = %bb.d, %.preheader.i
  %.0.i = phi ptr [ %i.w, %.preheader.i ], [ %i.m, %bb.d ] ; 2 uses
  %i.w = load ptr, ptr %.0.i, align 8, !tbaa !31  ; 2 uses
  %.not.i = icmp eq ptr %i.w, %.01729
  br i1 %.not.i, label %bb.h, label %.preheader.i, !llvm.loop !32

bb.h:                                             ; preds = %.preheader.i
  %i.x = load ptr, ptr %.01729, align 8, !tbaa !31
  store ptr %i.x, ptr %.0.i, align 8, !tbaa !31
  br label %srtm_remove_from_rev.exit

srtm_remove_from_rev.exit:                        ; preds = %bb.f, %srtm_check_lh.exit.thread.i, %bb.g, %bb.h
  call void @CRYPTO_free(ptr noundef nonnull %.01729, ptr noundef nonnull @.str, i32 noundef 432) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %srtm_remove_from_rev.exit
  %.not19 = icmp eq ptr %i.k, null
  br i1 %.not19, label %bb.j, label %bb.c, !llvm.loop !33

bb.j:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.z = call ptr @OPENSSL_LH_delete(ptr noundef %i.y, ptr noundef nonnull %i.g) #8 ; 0 uses
  %i.aa = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.ab = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.aa, ptr noundef nonnull %i.g) #8 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %i.g
  br i1 %i.ac, label %bb.k, label %.preheader.i21

bb.k:                                             ; preds = %bb.j
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !31  ; 2 uses
  %.not21.i25 = icmp eq ptr %i.ad, null
  %i.ae = load ptr, ptr %i.i, align 8, !tbaa !15  ; 2 uses
  br i1 %.not21.i25, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = call ptr @OPENSSL_LH_insert(ptr noundef %i.ae, ptr noundef nonnull %i.ad) #8 ; 0 uses
  %i.ag = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.ah = call i32 @OPENSSL_LH_error(ptr noundef %i.ag) #8
  %.not.i.i26 = icmp eq i32 %i.ah, 0
  br i1 %.not.i.i26, label %srtm_remove_from_rev.exit28, label %srtm_check_lh.exit.thread.i27

srtm_check_lh.exit.thread.i27:                    ; preds = %bb.l
  %i.ai = load i8, ptr %i.b, align 8
  %i.aj = or i8 %i.ai, 1
  store i8 %i.aj, ptr %i.b, align 8
  br label %srtm_remove_from_rev.exit28

bb.m:                                             ; preds = %bb.k
  %i.ak = call ptr @OPENSSL_LH_delete(ptr noundef %i.ae, ptr noundef nonnull %i.g) #8 ; 0 uses
  br label %srtm_remove_from_rev.exit28

.preheader.i21:                                   ; preds = %bb.j, %.preheader.i21
  %.0.i22 = phi ptr [ %i.al, %.preheader.i21 ], [ %i.ab, %bb.j ] ; 2 uses
  %i.al = load ptr, ptr %.0.i22, align 8, !tbaa !31 ; 2 uses
  %.not.i23 = icmp eq ptr %i.al, %i.g
  br i1 %.not.i23, label %bb.n, label %.preheader.i21, !llvm.loop !32

bb.n:                                             ; preds = %.preheader.i21
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !31
  store ptr %i.am, ptr %.0.i22, align 8, !tbaa !31
  br label %srtm_remove_from_rev.exit28

srtm_remove_from_rev.exit28:                      ; preds = %bb.l, %srtm_check_lh.exit.thread.i27, %bb.m, %bb.n
  call void @CRYPTO_free(ptr noundef nonnull %i.g, ptr noundef nonnull @.str, i32 noundef 438) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.b, %bb.a, %srtm_remove_from_rev.exit28
  %.0 = phi i32 [ 1, %srtm_remove_from_rev.exit28 ], [ 0, %bb.a ], [ 1, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_quic_srtm_lookup(ptr noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2, ptr noundef writeonly captures(address_is_null) %3, ptr noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %struct.srtm_item_st, align 8       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8
  %i.d = and i8 %i.c, 1
  %.not = icmp eq i8 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %0, align 8, !tbaa !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store i32 0, ptr %i.a, align 4, !tbaa !5
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.f = call i32 @EVP_EncryptUpdate(ptr noundef %.val, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, ptr noundef %1, i32 noundef 16) #8
  %.not.i = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr %i.a, align 4
  %i.h = icmp ne i32 %i.g, 16
  %narrow.i.not = select i1 %.not.i, i1 true, i1 %i.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  br i1 %narrow.i.not, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !15
  %i.k = call ptr @OPENSSL_LH_retrieve(ptr noundef %i.j, ptr noundef nonnull %5) #8 ; 3 uses
  %i.l = icmp ne i64 %2, 0
  %i.m = icmp ne ptr %i.k, null
  %i.n = select i1 %i.l, i1 %i.m, i1 false
  br i1 %i.n, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.024 = phi ptr [ %i.p, %.lr.ph ], [ %i.k, %bb.c ]
  %.01623 = phi i64 [ %i.o, %.lr.ph ], [ %2, %bb.c ]
  %i.o = add i64 %.01623, -1                      ; 2 uses
  %i.p = load ptr, ptr %.024, align 8, !tbaa !31  ; 3 uses
  %i.q = icmp ne i64 %i.o, 0
  %i.r = icmp ne ptr %i.p, null
  %i.s = select i1 %i.q, i1 %i.r, i1 false
  br i1 %i.s, label %.lr.ph, label %._crit_edge, !llvm.loop !34

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi ptr [ %i.k, %bb.c ], [ %i.p, %.lr.ph ] ; 3 uses
  %i.t = icmp eq ptr %.0.lcssa, null
  br i1 %i.t, label %bb.h, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %.not20 = icmp eq ptr %3, null
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !16
  store ptr %i.v, ptr %3, align 8, !tbaa !35
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.not21 = icmp eq ptr %4, null
  br i1 %.not21, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.0.lcssa, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !24
  store i64 %i.x, ptr %4, align 8, !tbaa !36
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %._crit_edge, %bb.b, %bb.a
  %.015 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %._crit_edge ], [ 1, %bb.g ], [ 1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  ret i32 %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @ossl_quic_srtm_check(ptr noundef readnone captures(none) %0) local_unnamed_addr #5 {
bb.a:
  ret void
}

declare ptr @OPENSSL_LH_set_thunks(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_new(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal i64 @lh_SRTM_ITEM_hfn_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call i64 %1(ptr noundef %0) #8
  ret i64 %i.a
}

; Function Attrs: nounwind uwtable
define internal i32 @lh_SRTM_ITEM_cfn_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = tail call i32 %2(ptr noundef %0, ptr noundef %1) #8
  ret i32 %i.a
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_SRTM_ITEM_doall_thunk(ptr noundef %0, ptr noundef readonly captures(none) %1) #6 {
bb.a:
  tail call void %1(ptr noundef %0) #8
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal void @lh_SRTM_ITEM_doall_arg_thunk(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2) #6 {
bb.a:
  tail call void %2(ptr noundef %0, ptr noundef %1) #8
  ret void
}

declare void @OPENSSL_LH_free(ptr noundef) local_unnamed_addr #2

declare void @OPENSSL_LH_doall(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_EncryptUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @OPENSSL_LH_error(ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_retrieve(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @OPENSSL_LH_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { inlinehint nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }

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
!9 = !{!10, !11, i64 0}
!10 = !{!"quic_srtm_st", !11, i64 0, !13, i64 8, !13, i64 16, !6, i64 24}
!11 = !{!"p1 _ZTS17evp_cipher_ctx_st", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{!"p1 _ZTS18lhash_st_SRTM_ITEM", !12, i64 0}
!14 = !{!10, !13, i64 8}
!15 = !{!10, !13, i64 16}
!16 = !{!17, !12, i64 16}
!17 = !{!"srtm_item_st", !18, i64 0, !18, i64 8, !12, i64 16, !19, i64 24, !20, i64 32, !7, i64 48}
!18 = !{!"p1 _ZTS12srtm_item_st", !12, i64 0}
!19 = !{!"long", !7, i64 0}
!20 = !{!"", !7, i64 0}
!21 = !{!17, !18, i64 8}
!22 = distinct !{!22, !23}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!17, !19, i64 24}
!25 = distinct !{!25, !23}
!26 = !{i64 0, i64 16, !27}
!27 = !{!7, !7, i64 0}
!28 = !{!18, !18, i64 0}
!29 = distinct !{!29, !23}
!30 = distinct !{!30, !23}
!31 = !{!17, !18, i64 0}
!32 = distinct !{!32, !23}
!33 = distinct !{!33, !23}
!34 = distinct !{!34, !23}
!35 = !{!12, !12, i64 0}
!36 = !{!19, !19, i64 0}
end_hunk_0
