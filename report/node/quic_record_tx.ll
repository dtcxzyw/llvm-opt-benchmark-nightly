inline.NumInlined: 64
inline.NumDeleted: 32
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.wpacket_st = type { ptr, ptr, i64, i64, i64, ptr, i8 }
%struct.quic_pkt_hdr_ptrs_st = type { ptr, ptr, i64, ptr }
%struct.bio_msg_st = type { ptr, i64, ptr, ptr, i64 }

@.str = private unnamed_addr constant [53 x i8] c"../../deps/openssl/openssl/ssl/quic/quic_record_tx.c\00", align 1
@__func__.qtx_encrypt_into_txe = private unnamed_addr constant [21 x i8] c"qtx_encrypt_into_txe\00", align 1
@switch.table.ossl_qtx_write_pkt = private unnamed_addr constant [5 x i32] [i32 0, i32 1, i32 2, i32 poison, i32 3], align 4

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_qtx_new(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9
  %i.c = icmp ult i64 %i.b, 1200
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @CRYPTO_zalloc(i64 noundef 1024, ptr noundef nonnull @.str, i32 noundef 120) #10 ; 6 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load <2 x ptr>, ptr %0, align 8, !tbaa !16
  store <2 x ptr> %i.f, ptr %i.d, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 848
  store ptr %i.h, ptr %i.i, align 8, !tbaa !18
  %i.j = load i64, ptr %i.a, align 8, !tbaa !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 872
  store i64 %i.j, ptr %i.k, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 856
  %i.n = load <2 x ptr>, ptr %i.l, align 8, !tbaa !16
  store <2 x ptr> %i.n, ptr %i.m, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare noalias ptr @CRYPTO_zalloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @ossl_qtx_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 904
  %.val9 = load ptr, ptr %i.b, align 8, !tbaa !25 ; 2 uses
  %.not2.i = icmp eq ptr %.val9, null
  br i1 %.not2.i, label %qtx_cleanup_txl.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %.03.i = phi ptr [ %.0.val.i, %.lr.ph.i ], [ %.val9, %bb.b ] ; 2 uses
  %.0.val.i = load ptr, ptr %.03.i, align 8, !tbaa !26 ; 2 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %.03.i, ptr noundef nonnull @.str, i32 noundef 140) #10
  %.not.i = icmp eq ptr %.0.val.i, null
  br i1 %.not.i, label %qtx_cleanup_txl.exit, label %.lr.ph.i, !llvm.loop !29

qtx_cleanup_txl.exit:                             ; preds = %.lr.ph.i, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.val = load ptr, ptr %i.c, align 8, !tbaa !25  ; 2 uses
  %.not2.i10 = icmp eq ptr %.val, null
  br i1 %.not2.i10, label %qtx_cleanup_txl.exit15, label %.lr.ph.i11

.lr.ph.i11:                                       ; preds = %qtx_cleanup_txl.exit, %.lr.ph.i11
  %.03.i12 = phi ptr [ %.0.val.i13, %.lr.ph.i11 ], [ %.val, %qtx_cleanup_txl.exit ] ; 2 uses
  %.0.val.i13 = load ptr, ptr %.03.i12, align 8, !tbaa !26 ; 2 uses
  tail call void @CRYPTO_free(ptr noundef nonnull %.03.i12, ptr noundef nonnull @.str, i32 noundef 140) #10
  %.not.i14 = icmp eq ptr %.0.val.i13, null
  br i1 %.not.i14, label %qtx_cleanup_txl.exit15, label %.lr.ph.i11, !llvm.loop !29

qtx_cleanup_txl.exit15:                           ; preds = %.lr.ph.i11, %qtx_cleanup_txl.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !31
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 155) #10
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.f, i32 noundef 0) #10
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.f, i32 noundef 1) #10
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.f, i32 noundef 2) #10
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.f, i32 noundef 3) #10
  tail call void @CRYPTO_free(ptr noundef nonnull %0, ptr noundef nonnull @.str, i32 noundef 161) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %qtx_cleanup_txl.exit15
  ret void
}

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @ossl_qrl_enc_level_set_discard(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_qtx_set_mutator(ptr nofree noundef writeonly captures(none) initializes((976, 1000)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 976
  store ptr %1, ptr %i.a, align 8, !tbaa !32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 984
  store ptr %2, ptr %i.b, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 992
  store ptr %3, ptr %i.c, align 8, !tbaa !34
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @ossl_qtx_set_qlog_cb(ptr nofree noundef writeonly captures(none) initializes((856, 872)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 856
  store ptr %1, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 864
  store ptr %2, ptr %i.b, align 8, !tbaa !36
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @ossl_qtx_provide_secret(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load ptr, ptr %0, align 8, !tbaa !37
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !38
  %i.f = tail call i32 @ossl_qrl_enc_level_set_provide_secret(ptr noundef nonnull %i.b, ptr noundef %i.c, ptr noundef %i.e, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, i8 noundef zeroext 0, i32 noundef 1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @ossl_qrl_enc_level_set_provide_secret(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qtx_discard_enc_level(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i32 %1, 3
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ossl_qrl_enc_level_set_discard(ptr noundef nonnull %i.b, i32 noundef %1) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qtx_is_enc_level_provisioned(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #10
  %i.c = icmp ne ptr %i.b, null
  %i.d = zext i1 %i.c to i32
  ret i32 %i.d
}

declare ptr @ossl_qrl_enc_level_set_get(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qtx_calculate_ciphertext_payload_len(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = tail call i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef %i.e) #10
  %i.g = zext i32 %i.f to i64
  %i.h = add i64 %2, %i.g
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %storemerge = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  store i64 %storemerge, ptr %3, align 8, !tbaa !45
  ret i32 %.0
}

declare i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qtx_calculate_plaintext_payload_len(ptr noundef %0, i32 noundef %1, i64 noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = tail call ptr @ossl_qrl_enc_level_set_get(ptr noundef nonnull %i.a, i32 noundef %1, i32 noundef 1) #10 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39
  %i.f = tail call i32 @ossl_qrl_get_suite_cipher_tag_len(i32 noundef %i.e) #10
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %.not = icmp ugt i64 %2, %i.g
  %spec.select = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %i.g)
  %spec.select17 = zext i1 %.not to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sink = phi i64 [ %spec.select, %bb.b ], [ 0, %bb.a ]
  %.0 = phi i32 [ %spec.select17, %bb.b ], [ 0, %bb.a ]
  store i64 %.sink, ptr %3, align 8, !tbaa !45
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_qtx_write_pkt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 6 uses
  %2 = alloca %struct.wpacket_st, align 8         ; 8 uses
  %i.d = alloca i64, align 8                      ; 7 uses
  %3 = alloca %struct.quic_pkt_hdr_ptrs_st, align 8 ; 5 uses
  %i.e = alloca ptr, align 8                      ; 7 uses
  %i.f = alloca ptr, align 8                      ; 7 uses
  %i.g = alloca i64, align 8                      ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !46
  %i.j = and i32 %i.i, 1
  %i.k = load ptr, ptr %1, align 8, !tbaa !51     ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %ossl_qtx_finish_dgram.exit93, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i32, ptr %i.k, align 8              ; 3 uses
  %trunc.i = trunc i32 %i.m to i8
  %switch.tableidx = add i8 %trunc.i, -1          ; 3 uses
  %i.n = icmp ult i8 %switch.tableidx, 5
  %switch.shifted = lshr i8 23, %switch.tableidx
  %switch.lobit = trunc i8 %switch.shifted to i1
  %or.cond = select i1 %i.n, i1 %switch.lobit, i1 false
  br i1 %or.cond, label %switch.lookup, label %ossl_quic_pkt_type_to_enc_level.exit.thread

switch.lookup:                                    ; preds = %bb.b
  %i.o = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [4 x i8], ptr @switch.table.ossl_qtx_write_pkt, i64 %i.o
  %switch.load = load i32, ptr %switch.gep, align 4 ; 9 uses
  %i.p = and i32 %i.m, 253
  %switch.selectcmp.i.i.not = icmp eq i32 %i.p, 4
  br i1 %switch.selectcmp.i.i.not, label %bb.c, label %bb.m

ossl_quic_pkt_type_to_enc_level.exit.thread:      ; preds = %bb.b
  %i.q = and i32 %i.m, 253
  %switch.selectcmp.i.i95.not = icmp eq i32 %i.q, 4
  br i1 %switch.selectcmp.i.i95.not, label %bb.c, label %ossl_qtx_finish_dgram.exit93

bb.c:                                             ; preds = %ossl_quic_pkt_type_to_enc_level.exit.thread, %switch.lookup
  %.0.i99 = phi i32 [ 4, %ossl_quic_pkt_type_to_enc_level.exit.thread ], [ %switch.load, %switch.lookup ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !31   ; 12 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %ossl_qtx_finish_dgram.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.v = load i64, ptr %i.u, align 8, !tbaa !52   ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !53   ; 3 uses
  %.not.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.s, ptr %i.z, align 8, !tbaa !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.z, ptr %i.aa, align 8, !tbaa !54
  store ptr null, ptr %i.s, align 8, !tbaa !26
  store ptr %i.s, ptr %i.y, align 8, !tbaa !53
  %i.ab = load ptr, ptr %i.x, align 8, !tbaa !25
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.h, label %ossl_list_txe_insert_tail.exit.i

bb.h:                                             ; preds = %bb.g
  store ptr %i.s, ptr %i.x, align 8, !tbaa !25
  br label %ossl_list_txe_insert_tail.exit.i

bb.i:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.s, ptr %i.af, align 8, !tbaa !26
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !54
  store ptr null, ptr %i.s, align 8, !tbaa !26
  store ptr %i.s, ptr %i.ae, align 8, !tbaa !53
  %i.ah = load ptr, ptr %i.ad, align 8, !tbaa !25
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.l, label %qtx_add_to_pending.exit.i

bb.l:                                             ; preds = %bb.k
  store ptr %i.s, ptr %i.ad, align 8, !tbaa !25
  br label %qtx_add_to_pending.exit.i

qtx_add_to_pending.exit.i:                        ; preds = %bb.l, %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.ak = load <2 x i64>, ptr %i.aj, align 8, !tbaa !45
  %i.al = add <2 x i64> %i.ak, splat (i64 1)
  store <2 x i64> %i.al, ptr %i.aj, align 8, !tbaa !45
  br label %ossl_list_txe_insert_tail.exit.i

ossl_list_txe_insert_tail.exit.i:                 ; preds = %qtx_add_to_pending.exit.i, %bb.h, %bb.g
  %.sink16.i = phi i64 [ 936, %qtx_add_to_pending.exit.i ], [ 896, %bb.g ], [ 896, %bb.h ]
  %.sink15.i = phi i64 [ %i.v, %qtx_add_to_pending.exit.i ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16.i ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !45
  %i.ao = add i64 %i.an, %.sink15.i
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !45
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !55
  %i.ar = add i64 %i.aq, 1
  store i64 %i.ar, ptr %i.ap, align 8, !tbaa !55
  br label %ossl_qtx_finish_dgram.exit.thread

bb.m:                                             ; preds = %switch.lookup
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.at = tail call i32 @ossl_qrl_enc_level_set_have_el(ptr noundef nonnull %i.as, i32 noundef %switch.load) #10
  %.not51 = icmp eq i32 %i.at, 1
  br i1 %.not51, label %ossl_qtx_finish_dgram.exit, label %ossl_qtx_finish_dgram.exit93

ossl_qtx_finish_dgram.exit.thread:                ; preds = %ossl_list_txe_insert_tail.exit.i, %bb.c
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 944
  br label %ossl_qtx_finish_dgram.exit71

ossl_qtx_finish_dgram.exit:                       ; preds = %bb.m
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 944
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !31 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 944 ; 10 uses
  %.not52 = icmp eq ptr %.pre, null
  br i1 %.not52, label %ossl_qtx_finish_dgram.exit71, label %bb.n

bb.n:                                             ; preds = %ossl_qtx_finish_dgram.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !52
  %.not = icmp eq i64 %i.ax, 0
  br i1 %.not, label %ossl_qtx_finish_dgram.exit71, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = getelementptr inbounds nuw i8, ptr %.pre, i64 32 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !56 ; 3 uses
  %i.bb = tail call i32 @BIO_ADDR_family(ptr noundef nonnull %i.ay) #10
  %i.bc = icmp eq i32 %i.bb, 0
  %i.bd = icmp eq ptr %i.ba, null                 ; 2 uses
  br i1 %i.bc, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %i.bd, label %addr_eq.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = tail call i32 @BIO_ADDR_family(ptr noundef nonnull %i.ba) #10
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %addr_eq.exit.thread, label %addr_eq.exit

bb.r:                                             ; preds = %bb.o
  br i1 %i.bd, label %addr_eq.exit.thread104, label %addr_eq.exit

addr_eq.exit:                                     ; preds = %bb.q, %bb.r
  %bcmp.i = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(112) %i.ay, ptr noundef nonnull dereferenceable(112) %i.ba, i64 112)
  %.not113 = icmp eq i32 %bcmp.i, 0
  br i1 %.not113, label %addr_eq.exit.thread, label %addr_eq.exit.thread104

addr_eq.exit.thread:                              ; preds = %bb.p, %bb.q, %addr_eq.exit
  %i.bg = load ptr, ptr %i.av, align 8, !tbaa !31
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 144 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !57 ; 3 uses
  %i.bk = tail call i32 @BIO_ADDR_family(ptr noundef nonnull %i.bh) #10
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = icmp eq ptr %i.bj, null                 ; 2 uses
  br i1 %i.bl, label %bb.s, label %bb.u

bb.s:                                             ; preds = %addr_eq.exit.thread
  br i1 %i.bm, label %ossl_qtx_finish_dgram.exit71, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bn = tail call i32 @BIO_ADDR_family(ptr noundef nonnull %i.bj) #10
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %ossl_qtx_finish_dgram.exit71, label %addr_eq.exit64

bb.u:                                             ; preds = %addr_eq.exit.thread
  br i1 %i.bm, label %addr_eq.exit.thread104, label %addr_eq.exit64

addr_eq.exit64:                                   ; preds = %bb.t, %bb.u
  %bcmp.i63 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(112) %i.bh, ptr noundef nonnull dereferenceable(112) %i.bj, i64 112)
  %.not115 = icmp eq i32 %bcmp.i63, 0
  br i1 %.not115, label %ossl_qtx_finish_dgram.exit71, label %addr_eq.exit.thread104

addr_eq.exit.thread104:                           ; preds = %bb.u, %bb.r, %addr_eq.exit64, %addr_eq.exit
  %i.bp = load ptr, ptr %i.av, align 8, !tbaa !31 ; 12 uses
  %i.bq = icmp eq ptr %i.bp, null
  br i1 %i.bq, label %ossl_qtx_finish_dgram.exit71, label %bb.v

bb.v:                                             ; preds = %addr_eq.exit.thread104
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !52 ; 2 uses
  %i.bt = icmp eq i64 %i.bs, 0
  br i1 %i.bt, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !53 ; 3 uses
  %.not.i.i70 = icmp eq ptr %i.bw, null
  br i1 %.not.i.i70, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bp, ptr %i.bw, align 8, !tbaa !26
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !54
  store ptr null, ptr %i.bp, align 8, !tbaa !26
  store ptr %i.bp, ptr %i.bv, align 8, !tbaa !53
  %i.by = load ptr, ptr %i.bu, align 8, !tbaa !25
  %i.bz = icmp eq ptr %i.by, null
  br i1 %i.bz, label %bb.z, label %ossl_list_txe_insert_tail.exit.i67

bb.z:                                             ; preds = %bb.y
  store ptr %i.bp, ptr %i.bu, align 8, !tbaa !25
  br label %ossl_list_txe_insert_tail.exit.i67

bb.aa:                                            ; preds = %bb.v
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 2 uses
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !53 ; 3 uses
  %.not.i.i.i65 = icmp eq ptr %i.cc, null
  br i1 %.not.i.i.i65, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.bp, ptr %i.cc, align 8, !tbaa !26
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.cc, ptr %i.cd, align 8, !tbaa !54
  store ptr null, ptr %i.bp, align 8, !tbaa !26
  store ptr %i.bp, ptr %i.cb, align 8, !tbaa !53
  %i.ce = load ptr, ptr %i.ca, align 8, !tbaa !25
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.ad, label %qtx_add_to_pending.exit.i66

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bp, ptr %i.ca, align 8, !tbaa !25
  br label %qtx_add_to_pending.exit.i66

qtx_add_to_pending.exit.i66:                      ; preds = %bb.ad, %bb.ac
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 2 uses
  %i.ch = load <2 x i64>, ptr %i.cg, align 8, !tbaa !45
  %i.ci = add <2 x i64> %i.ch, splat (i64 1)
  store <2 x i64> %i.ci, ptr %i.cg, align 8, !tbaa !45
  br label %ossl_list_txe_insert_tail.exit.i67

ossl_list_txe_insert_tail.exit.i67:               ; preds = %qtx_add_to_pending.exit.i66, %bb.z, %bb.y
  %.sink16.i68 = phi i64 [ 936, %qtx_add_to_pending.exit.i66 ], [ 896, %bb.y ], [ 896, %bb.z ]
  %.sink15.i69 = phi i64 [ %i.bs, %qtx_add_to_pending.exit.i66 ], [ 1, %bb.y ], [ 1, %bb.z ]
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.sink16.i68 ; 2 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !45
  %i.cl = add i64 %i.ck, %.sink15.i69
  store i64 %i.cl, ptr %i.cj, align 8, !tbaa !45
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, i8 0, i64 16, i1 false)
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !55
  %i.co = add i64 %i.cn, 1
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !55
  br label %ossl_qtx_finish_dgram.exit71

ossl_qtx_finish_dgram.exit71:                     ; preds = %ossl_qtx_finish_dgram.exit.thread, %bb.s, %bb.t, %ossl_qtx_finish_dgram.exit, %ossl_list_txe_insert_tail.exit.i67, %addr_eq.exit.thread104, %addr_eq.exit64, %bb.n
  %i.cp = phi ptr [ %i.av, %addr_eq.exit64 ], [ %i.av, %ossl_qtx_finish_dgram.exit ], [ %i.av, %bb.n ], [ %i.av, %ossl_list_txe_insert_tail.exit.i67 ], [ %i.av, %addr_eq.exit.thread104 ], [ %i.av, %bb.t ], [ %i.av, %bb.s ], [ %i.au, %ossl_qtx_finish_dgram.exit.thread ] ; 6 uses
  %.0.i98203 = phi i32 [ %switch.load, %addr_eq.exit64 ], [ %switch.load, %ossl_qtx_finish_dgram.exit ], [ %switch.load, %bb.n ], [ %switch.load, %ossl_list_txe_insert_tail.exit.i67 ], [ %switch.load, %addr_eq.exit.thread104 ], [ %switch.load, %bb.t ], [ %switch.load, %bb.s ], [ %.0.i99, %ossl_qtx_finish_dgram.exit.thread ] ; 3 uses
  %i.cq = phi i1 [ false, %addr_eq.exit64 ], [ true, %ossl_qtx_finish_dgram.exit ], [ true, %bb.n ], [ true, %ossl_list_txe_insert_tail.exit.i67 ], [ true, %addr_eq.exit.thread104 ], [ false, %bb.t ], [ false, %bb.s ], [ true, %ossl_qtx_finish_dgram.exit.thread ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 872 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 880 ; 8 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 888 ; 7 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 896 ; 4 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 992 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 1000
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 1016
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 856
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 968 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 904 ; 4 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 912 ; 4 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 920 ; 4 uses
  %.pre144 = load ptr, ptr %i.cp, align 8, !tbaa !31
  br label %ossl_qtx_finish_dgram.exit86

ossl_qtx_finish_dgram.exit86:                     ; preds = %ossl_qtx_finish_dgram.exit86.backedge, %ossl_qtx_finish_dgram.exit71
  %i.do = phi ptr [ %.pre144, %ossl_qtx_finish_dgram.exit71 ], [ null, %ossl_qtx_finish_dgram.exit86.backedge ] ; 2 uses
  %.1 = phi i1 [ %i.cq, %ossl_qtx_finish_dgram.exit71 ], [ true, %ossl_qtx_finish_dgram.exit86.backedge ] ; 2 uses
  %.not.i = icmp eq ptr %i.do, null
  %.pre151 = load i64, ptr %i.cr, align 8, !tbaa !24 ; 4 uses
  br i1 %.not.i, label %bb.ae, label %qtx_ensure_cons.exit

bb.ae:                                            ; preds = %ossl_qtx_finish_dgram.exit86
  %.val.i.i = load ptr, ptr %i.cs, align 8, !tbaa !25 ; 6 uses
  %.not.i.i73 = icmp eq ptr %.val.i.i, null
  br i1 %.not.i.i73, label %bb.af, label %bb.ak

bb.af:                                            ; preds = %bb.ae
  %i.dp = icmp ugt i64 %.pre151, -258
  br i1 %i.dp, label %ossl_qtx_finish_dgram.exit93, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dq = add nuw i64 %.pre151, 256
  %i.dr = call noalias ptr @CRYPTO_malloc(i64 noundef %i.dq, ptr noundef nonnull @.str, i32 noundef 224) #10 ; 9 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %ossl_qtx_finish_dgram.exit93, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  store i64 %.pre151, ptr %i.dt, align 8, !tbaa !58
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store i64 0, ptr %i.du, align 8, !tbaa !52
  %i.dv = load ptr, ptr %i.ct, align 8, !tbaa !53 ; 5 uses
  %.not.i.i.i74 = icmp eq ptr %i.dv, null
  br i1 %.not.i.i.i74, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  store ptr %i.dr, ptr %i.dv, align 8, !tbaa !26
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  store ptr %i.dv, ptr %i.dw, align 8, !tbaa !54
  store ptr null, ptr %i.dr, align 8, !tbaa !26
  %i.dx = load ptr, ptr %i.cs, align 8, !tbaa !25 ; 2 uses
  %i.dy = icmp eq ptr %i.dx, null
  %i.dz = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %i.cu, align 8, !tbaa !59
  %i.eb = icmp eq ptr %i.dx, %i.dr
  %or.cond.i = or i1 %i.dy, %i.eb
  br i1 %or.cond.i, label %.thread210, label %.thread

.thread210:                                       ; preds = %bb.aj
  store ptr null, ptr %i.cs, align 8, !tbaa !25
  br label %.thread

bb.ak:                                            ; preds = %bb.ae
  %.pre145 = load ptr, ptr %.val.i.i, align 8, !tbaa !26 ; 3 uses
  %.pre146.pre = load ptr, ptr %i.ct, align 8, !tbaa !53
  %.phi.trans.insert147.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.pre148.pre = load ptr, ptr %.phi.trans.insert147.phi.trans.insert, align 8, !tbaa !54 ; 2 uses
  %i.ec = icmp eq ptr %.pre146.pre, %.val.i.i
  store ptr %.pre145, ptr %i.cs, align 8, !tbaa !25
  br i1 %i.ec, label %.thread, label %._crit_edge.i.i

.thread:                                          ; preds = %bb.aj, %.thread210, %bb.ak
  %.0.i26.i209 = phi ptr [ %i.dr, %.thread210 ], [ %.val.i.i, %bb.ak ], [ %i.dr, %bb.aj ]
  %i.ed = phi ptr [ %i.dv, %.thread210 ], [ %.pre148.pre, %bb.ak ], [ %i.dv, %bb.aj ] ; 2 uses
  %.pre19.i.i207 = phi ptr [ null, %.thread210 ], [ %.pre145, %bb.ak ], [ null, %bb.aj ]
  store ptr %i.ed, ptr %i.ct, align 8, !tbaa !53
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.thread, %bb.ak
  %.0.i26.i208 = phi ptr [ %.0.i26.i209, %.thread ], [ %.val.i.i, %bb.ak ] ; 4 uses
  %i.ee = phi ptr [ %i.ed, %.thread ], [ %.pre148.pre, %bb.ak ] ; 3 uses
  %.pre19.i.i206 = phi ptr [ %.pre19.i.i207, %.thread ], [ %.pre145, %bb.ak ] ; 3 uses
  %.not.i16.i = icmp eq ptr %i.ee, null
  br i1 %.not.i16.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %._crit_edge.i.i
  store ptr %.pre19.i.i206, ptr %i.ee, align 8, !tbaa !26
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %._crit_edge.i.i
  %.not18.i.i = icmp eq ptr %.pre19.i.i206, null
  br i1 %.not18.i.i, label %ossl_list_txe_remove.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ef = getelementptr inbounds nuw i8, ptr %.pre19.i.i206, i64 8
  store ptr %i.ee, ptr %i.ef, align 8, !tbaa !54
  br label %ossl_list_txe_remove.exit.i

ossl_list_txe_remove.exit.i:                      ; preds = %bb.an, %bb.am
  %i.eg = load i64, ptr %i.cu, align 8, !tbaa !59
  %i.eh = add i64 %i.eg, -1
  store i64 %i.eh, ptr %i.cu, align 8, !tbaa !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0.i26.i208, i8 0, i64 16, i1 false)
  store ptr %.0.i26.i208, ptr %i.cp, align 8, !tbaa !31
  store i64 0, ptr %i.cv, align 8, !tbaa !60
  %i.ei = getelementptr inbounds nuw i8, ptr %.0.i26.i208, i64 16
  store i64 0, ptr %i.ei, align 8, !tbaa !52
  %.pre150 = load i64, ptr %i.cr, align 8, !tbaa !24
  br label %qtx_ensure_cons.exit

qtx_ensure_cons.exit:                             ; preds = %ossl_list_txe_remove.exit.i, %ossl_qtx_finish_dgram.exit86
  %i.ej = phi i64 [ %.pre150, %ossl_list_txe_remove.exit.i ], [ %.pre151, %ossl_qtx_finish_dgram.exit86 ]
  %.0.i72 = phi ptr [ %.0.i26.i208, %ossl_list_txe_remove.exit.i ], [ %i.do, %ossl_qtx_finish_dgram.exit86 ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.0.i72, i64 24 ; 3 uses
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !58
  %.not.i75 = icmp ult i64 %i.el, %i.ej
  br i1 %.not.i75, label %ossl_qtx_finish_dgram.exit93, label %bb.ao

bb.ao:                                            ; preds = %qtx_ensure_cons.exit
  br i1 %.1, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.em = load ptr, ptr %i.cw, align 8, !tbaa !56 ; 2 uses
  %.not57 = icmp eq ptr %i.em, null
  %i.en = getelementptr inbounds nuw i8, ptr %.0.i72, i64 32 ; 2 uses
  br i1 %.not57, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eo = call i32 @BIO_ADDR_copy(ptr noundef nonnull %i.en, ptr noundef nonnull %i.em) #10
  %.not58 = icmp eq i32 %i.eo, 0
  br i1 %.not58, label %ossl_qtx_finish_dgram.exit93, label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @BIO_ADDR_clear(ptr noundef nonnull %i.en) #10
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.ep = load ptr, ptr %i.cx, align 8, !tbaa !57 ; 2 uses
  %.not59 = icmp eq ptr %i.ep, null
  %i.eq = getelementptr inbounds nuw i8, ptr %.0.i72, i64 144 ; 2 uses
  br i1 %.not59, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.er = call i32 @BIO_ADDR_copy(ptr noundef nonnull %i.eq, ptr noundef nonnull %i.ep) #10
  %.not60 = icmp eq i32 %i.er, 0
  br i1 %.not60, label %ossl_qtx_finish_dgram.exit93, label %bb.av

bb.au:                                            ; preds = %bb.as
  call void @BIO_ADDR_clear(ptr noundef nonnull %i.eq) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #10
  %i.es = load ptr, ptr %i.cy, align 8, !tbaa !32 ; 2 uses
  %.not.i76 = icmp eq ptr %i.es, null
  %i.et = load ptr, ptr %1, align 8, !tbaa !51    ; 3 uses
  br i1 %.not.i76, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.eu = load ptr, ptr %i.cz, align 8, !tbaa !61
  %i.ev = load i64, ptr %i.da, align 8, !tbaa !62
  %i.ew = load ptr, ptr %i.db, align 8, !tbaa !34
  %i.ex = call i32 %i.es(ptr noundef %i.et, ptr noundef %i.eu, i64 noundef %i.ev, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef %i.ew) #10, !inline_history !63
  %.not23.i = icmp eq i32 %i.ex, 0
  br i1 %.not23.i, label %qtx_mutate_write.exit.thread, label %thread-pre-split.i

qtx_mutate_write.exit.thread:                     ; preds = %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  br label %ossl_qtx_finish_dgram.exit93

bb.ax:                                            ; preds = %bb.av
  store ptr %i.et, ptr %i.e, align 8, !tbaa !64
  %i.ey = load ptr, ptr %i.cz, align 8, !tbaa !61 ; 2 uses
  store ptr %i.ey, ptr %i.f, align 8, !tbaa !65
  %i.ez = load i64, ptr %i.da, align 8, !tbaa !62 ; 2 uses
  store i64 %i.ez, ptr %i.g, align 8, !tbaa !45
  br label %bb.ay

thread-pre-split.i:                               ; preds = %bb.aw
end_hunk_0
