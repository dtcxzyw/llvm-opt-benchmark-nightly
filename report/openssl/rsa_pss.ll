inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.rsa_pss_params_30_st = type { i32, %struct.anon, i32, i32 }
%struct.anon = type { i32, i32 }

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_pss.c\00", align 1
@__func__.ossl_rsa_verify_PKCS1_PSS_mgf1 = private unnamed_addr constant [31 x i8] c"ossl_rsa_verify_PKCS1_PSS_mgf1\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"expected: %d retrieved: %d\00", align 1
@zeroes = internal constant [8 x i8] zeroinitializer, align 1
@__func__.ossl_rsa_padding_add_PKCS1_PSS_mgf1 = private unnamed_addr constant [36 x i8] c"ossl_rsa_padding_add_PKCS1_PSS_mgf1\00", align 1
@default_RSASSA_PSS_params = internal unnamed_addr constant %struct.rsa_pss_params_30_st { i32 64, %struct.anon { i32 911, i32 64 }, i32 20, i32 1 }, align 4
@ossl_rsa_pss_params_30_is_unrestricted.pss_params_cmp = internal global %struct.rsa_pss_params_30_st zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_verify_PKCS1_PSS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4, !tbaa !8
  %i.b = call range(i32 0, 2) i32 @ossl_rsa_verify_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef %3, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_verify_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %5, ptr %i.a, align 4, !tbaa !8
  %i.b = call i32 @ossl_rsa_verify_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsa_verify_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = load i32, ptr %5, align 4, !tbaa !8      ; 3 uses
  %i.c = tail call ptr @EVP_MD_CTX_new() #9       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.af, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq ptr %3, null
  %spec.select = select i1 %i.e, ptr %2, ptr %3
  %i.f = tail call i32 @EVP_MD_get_size(ptr noundef %2) #9 ; 6 uses
  %i.g = icmp slt i32 %i.f, 1
  br i1 %i.g, label %bb.af, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp eq i32 %i.b, -1
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i32 %i.b, -4
  br i1 %i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 78, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, ptr noundef null) #9
  br label %bb.af

bb.f:                                             ; preds = %bb.c, %bb.d
  %.089 = phi i32 [ %i.b, %bb.d ], [ %i.f, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = tail call i32 @BN_num_bits(ptr noundef %i.k) #9
  %i.m = add i32 %i.l, 7
  %i.n = and i32 %i.m, 7                          ; 3 uses
  %i.o = tail call i32 @RSA_size(ptr noundef %0) #9
  %i.p = load i8, ptr %4, align 1, !tbaa !23
  %i.q = zext i8 %i.p to i32
  %i.r = shl nuw nsw i32 255, %i.n
  %i.s = and i32 %i.r, %i.q
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 85, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 133, ptr noundef null) #9
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i32 %i.n, 0                      ; 3 uses
  %i.u = sext i1 %i.t to i32
  %.085 = add nsw i32 %i.o, %i.u                  ; 4 uses
  %.084.idx = zext i1 %i.t to i64
  %.084 = getelementptr inbounds nuw i8, ptr %4, i64 %.084.idx ; 5 uses
  %i.v = add nuw nsw i32 %i.f, 2
  %i.w = icmp slt i32 %.085, %i.v
  br i1 %i.w, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, ptr noundef null) #9
  br label %bb.af

bb.j:                                             ; preds = %bb.h
  %i.x = icmp eq i32 %.089, -3
  %reass.sub113 = sub nsw i32 %.085, %i.f
  %i.y = add nsw i32 %reass.sub113, -2            ; 2 uses
  br i1 %i.x, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = icmp sgt i32 %.089, %i.y
  br i1 %i.z, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 99, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 109, ptr noundef null) #9
  br label %bb.af

bb.m:                                             ; preds = %bb.j, %bb.k
  %.190 = phi i32 [ %.089, %bb.k ], [ %i.y, %bb.j ] ; 3 uses
  %i.aa = zext nneg i32 %.085 to i64
  %i.ab = getelementptr i8, ptr %.084, i64 %i.aa
  %i.ac = getelementptr i8, ptr %i.ab, i64 -1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !23
  %.not101 = icmp eq i8 %i.ad, -68
  br i1 %.not101, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 103, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 134, ptr noundef null) #9
  br label %bb.af

bb.o:                                             ; preds = %bb.m
  %i.ae = xor i32 %i.f, -1
  %i.af = add nsw i32 %.085, %i.ae                ; 8 uses
  %6 = sext i32 %i.af to i64                      ; 3 uses
  %i.ag = getelementptr inbounds i8, ptr %.084, i64 %6 ; 2 uses
  %i.ah = tail call noalias ptr @CRYPTO_malloc(i64 noundef %6, ptr noundef nonnull @.str, i32 noundef 108) #9 ; 18 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.af, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = zext nneg i32 %i.f to i64               ; 3 uses
  %i.ak = tail call i32 @PKCS1_MGF1(ptr noundef nonnull %i.ah, i64 noundef %6, ptr noundef nonnull %i.ag, i64 noundef %i.aj, ptr noundef %spec.select) #9
  %i.al = icmp slt i32 %i.ak, 0
  br i1 %i.al, label %bb.af, label %.preheader

.preheader:                                       ; preds = %bb.p
  %i.am = icmp sgt i32 %i.af, 0
  br i1 %i.am, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.af to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %i.af, 4
  br i1 %min.iters.check, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check126 = icmp ult i32 %i.af, 32
  br i1 %min.iters.check126, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.an = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.084, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %wide.load = load <16 x i8>, ptr %i.ao, align 1, !tbaa !23
  %wide.load127.a = load <16 x i8>, ptr %i.ap, align 1, !tbaa !23
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16 ; 2 uses
  %wide.load128.a = load <16 x i8>, ptr %i.aq, align 1, !tbaa !23
  %wide.load129 = load <16 x i8>, ptr %i.ar, align 1, !tbaa !23
  %i.as = xor <16 x i8> %wide.load128.a, %wide.load
  %i.at = xor <16 x i8> %wide.load129, %wide.load127.a
  store <16 x i8> %i.as, ptr %i.aq, align 1, !tbaa !23
  store <16 x i8> %i.at, ptr %i.ar, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.au = icmp eq i64 %index.next, %n.vec
  br i1 %i.au, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.an, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec130 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index131 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next134, %vec.epilog.vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.084, i64 %index131
  %wide.load132.a = load <4 x i8>, ptr %i.av, align 1, !tbaa !23
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 %index131 ; 2 uses
  %wide.load133 = load <4 x i8>, ptr %i.aw, align 1, !tbaa !23
  %i.ax = xor <4 x i8> %wide.load133, %wide.load132.a
  store <4 x i8> %i.ax, ptr %i.aw, align 1, !tbaa !23
  %index.next134 = add nuw i64 %index131, 4       ; 2 uses
  %i.ay = icmp eq i64 %index.next134, %n.vec130
  br i1 %i.ay, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !29

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n135 = icmp eq i64 %n.vec130, %wide.trip.count
  br i1 %cmp.n135, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec130, %vec.epilog.middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.084, i64 %indvars.iv
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv ; 2 uses
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !23
  %i.bd = xor i8 %i.bc, %i.ba
  store i8 %i.bd, ptr %i.bb, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %vec.epilog.middle.block, %.preheader
  br i1 %i.t, label %bb.r, label %bb.q

bb.q:                                             ; preds = %._crit_edge
  %i.be = sub nuw nsw i32 8, %i.n
  %i.bf = lshr i32 255, %i.be
  %i.bg = load i8, ptr %i.ah, align 1, !tbaa !23
  %i.bh = trunc nuw nsw i32 %i.bf to i8
  %i.bi = and i8 %i.bg, %i.bh
  store i8 %i.bi, ptr %i.ah, align 1, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge
  %i.bj = add nsw i32 %i.af, -1
  %i.bk = sext i32 %i.bj to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %bb.r
  %indvars.iv115 = phi i64 [ %indvars.iv.next116, %bb.s ], [ 0, %bb.r ] ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ah, i64 %indvars.iv115
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23  ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 0
  %i.bo = icmp slt i64 %indvars.iv115, %i.bk
  %i.bp = select i1 %i.bn, i1 %i.bo, i1 false
  %indvars.iv.next116 = add nuw nsw i64 %indvars.iv115, 1
  br i1 %i.bp, label %bb.s, label %bb.t, !llvm.loop !31

bb.t:                                             ; preds = %bb.s
  %i.bq = trunc nuw nsw i64 %indvars.iv115 to i32
  %i.br = add nuw nsw i32 %i.bq, 1                ; 3 uses
  %.not103 = icmp eq i8 %i.bm, 1
  br i1 %.not103, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 120, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 135, ptr noundef null) #9
  br label %bb.af

bb.v:                                             ; preds = %bb.t
  %i.bs = and i32 %.190, -3
  %or.cond.not = icmp eq i32 %i.bs, -4
  %.pre = sub nsw i32 %i.af, %i.br                ; 4 uses
  %.not104 = icmp eq i32 %.pre, %.190
  %or.cond = select i1 %or.cond.not, i1 true, i1 %.not104
  br i1 %or.cond, label %._crit_edge118, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 126, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, ptr noundef nonnull @.str.1, i32 noundef %.190, i32 noundef %.pre) #9
  br label %bb.af

._crit_edge118:                                   ; preds = %bb.v
  %i.bt = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.c, ptr noundef %2, ptr noundef null) #9
  %.not105 = icmp eq i32 %i.bt, 0
  br i1 %.not105, label %bb.af, label %bb.x

bb.x:                                             ; preds = %._crit_edge118
  %i.bu = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef nonnull @zeroes, i64 noundef 8) #9
  %.not106 = icmp eq i32 %i.bu, 0
  br i1 %.not106, label %bb.af, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bv = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef %1, i64 noundef %i.aj) #9
  %.not107 = icmp eq i32 %i.bv, 0
  br i1 %.not107, label %bb.af, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not108 = icmp eq i32 %i.af, %i.br
  br i1 %.not108, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bw = zext nneg i32 %i.br to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.bw
  %i.by = sext i32 %.pre to i64
  %i.bz = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef nonnull %i.bx, i64 noundef %i.by) #9
  %.not109 = icmp eq i32 %i.bz, 0
  br i1 %.not109, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.ca = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef null) #9
  %.not110 = icmp eq i32 %i.ca, 0
  br i1 %.not110, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %bcmp = call i32 @bcmp(ptr nonnull %i.a, ptr nonnull %i.ag, i64 %i.aj)
  %.not111 = icmp eq i32 %bcmp, 0
  br i1 %.not111, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @ERR_new() #9
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 144, ptr noundef nonnull @__func__.ossl_rsa_verify_PKCS1_PSS_mgf1) #9
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 104, ptr noundef null) #9
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.087 = phi i32 [ 0, %bb.ad ], [ 1, %bb.ac ]
  store i32 %.pre, ptr %5, align 4, !tbaa !8
  br label %bb.af

bb.af:                                            ; preds = %bb.ab, %bb.aa, %._crit_edge118, %bb.x, %bb.y, %bb.p, %bb.o, %bb.b, %bb.a, %bb.ae, %bb.w, %bb.u, %bb.n, %bb.l, %bb.i, %bb.g, %bb.e
  %.188 = phi i32 [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.g ], [ 0, %bb.i ], [ 0, %bb.n ], [ 0, %bb.o ], [ 0, %bb.p ], [ 0, %bb.u ], [ 0, %bb.w ], [ %.087, %bb.ae ], [ 0, %bb.ab ], [ 0, %bb.aa ], [ 0, %bb.y ], [ 0, %bb.x ], [ 0, %._crit_edge118 ], [ 0, %bb.l ], [ 0, %bb.e ]
  %.083 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.g ], [ null, %bb.i ], [ null, %bb.n ], [ null, %bb.o ], [ %i.ah, %bb.p ], [ %i.ah, %bb.u ], [ %i.ah, %bb.w ], [ %i.ah, %bb.ae ], [ %i.ah, %bb.ab ], [ %i.ah, %bb.aa ], [ %i.ah, %bb.y ], [ %i.ah, %bb.x ], [ %i.ah, %._crit_edge118 ], [ null, %bb.l ], [ null, %bb.e ]
  call void @CRYPTO_free(ptr noundef %.083, ptr noundef nonnull @.str, i32 noundef 152) #9
  call void @EVP_MD_CTX_free(ptr noundef %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.188
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #2

declare i32 @RSA_size(ptr noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @PKCS1_MGF1(ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @CRYPTO_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_PSS(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %4, ptr %i.a, align 4, !tbaa !8
  %i.b = call range(i32 0, 2) i32 @ossl_rsa_padding_add_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef null, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 2 uses
  store i32 %5, ptr %i.a, align 4, !tbaa !8
  %i.b = call i32 @ossl_rsa_padding_add_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull %i.a)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsa_padding_add_PKCS1_PSS_mgf1(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr nofree noundef captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %5, align 4, !tbaa !8      ; 6 uses
  %i.b = icmp eq ptr %4, null
  %spec.select = select i1 %i.b, ptr %3, ptr %4
  %i.c = tail call i32 @EVP_MD_get_size(ptr noundef %3) #9 ; 8 uses
  %i.d = icmp slt i32 %i.c, 1
  br i1 %i.d, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.a, label %bb.e [
    i32 -1, label %bb.g
    i32 -2, label %bb.c
    i32 -4, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.e = icmp slt i32 %i.a, -4
  br i1 %i.e, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 216, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 136, ptr noundef null) #9
  br label %bb.ac

bb.g:                                             ; preds = %bb.b, %bb.c, %bb.e, %bb.d
  %.089 = phi i32 [ %i.a, %bb.e ], [ -3, %bb.c ], [ -3, %bb.d ], [ %i.c, %bb.b ] ; 5 uses
  %.0 = phi i32 [ -1, %bb.e ], [ -1, %bb.c ], [ %i.c, %bb.d ], [ %i.a, %bb.b ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !9
  %i.h = tail call i32 @BN_num_bits(ptr noundef %i.g) #9
  %i.i = add i32 %i.h, 7
  %i.j = and i32 %i.i, 7                          ; 2 uses
  %i.k = tail call i32 @RSA_size(ptr noundef %0) #9 ; 2 uses
  %i.l = icmp eq i32 %i.j, 0                      ; 2 uses
  br i1 %i.l, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 1
  store i8 0, ptr %1, align 1, !tbaa !23
  %i.n = add nsw i32 %i.k, -1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.085 = phi i32 [ %i.n, %bb.h ], [ %i.k, %bb.g ] ; 5 uses
  %.084 = phi ptr [ %i.m, %bb.h ], [ %1, %bb.g ]  ; 6 uses
  %i.o = add nuw nsw i32 %i.c, 2
  %i.p = icmp slt i32 %.085, %i.o
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 227, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, ptr noundef null) #9
  br label %bb.ac

bb.k:                                             ; preds = %bb.i
  %i.q = icmp eq i32 %.089, -3
  %i.r = sub nsw i32 %.085, %i.c
  %i.s = add nsw i32 %i.r, -2                     ; 3 uses
  br i1 %i.q, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.t = tail call i32 @llvm.smin.i32(i32 %i.s, i32 %.0)
  %i.u = icmp slt i32 %.0, 0
  %spec.select107 = select i1 %i.u, i32 %i.s, i32 %i.t
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.v = icmp sgt i32 %.089, %i.s
  br i1 %i.v, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #9
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 235, ptr noundef nonnull @__func__.ossl_rsa_padding_add_PKCS1_PSS_mgf1) #9
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 110, ptr noundef null) #9
  br label %bb.ac

bb.o:                                             ; preds = %bb.l, %bb.m
  %.190 = phi i32 [ %spec.select107, %bb.l ], [ %.089, %bb.m ] ; 19 uses
  %i.w = icmp sgt i32 %.190, 0                    ; 2 uses
  br i1 %i.w, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.x = zext nneg i32 %.190 to i64               ; 2 uses
  %i.y = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.x, ptr noundef nonnull @.str, i32 noundef 239) #9 ; 4 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.ac, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !32
  %i.ac = tail call i32 @RAND_bytes_ex(ptr noundef %i.ab, ptr noundef nonnull %i.y, i64 noundef %i.x, i32 noundef 0) #9
  %i.ad = icmp slt i32 %i.ac, 1
  br i1 %i.ad, label %bb.ac, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o
  %.083 = phi ptr [ %i.y, %bb.q ], [ null, %bb.o ] ; 12 uses
  %i.ae = xor i32 %i.c, -1
  %i.af = add nsw i32 %.085, %i.ae
  %6 = sext i32 %i.af to i64                      ; 2 uses
  %i.ag = getelementptr inbounds i8, ptr %.084, i64 %6 ; 2 uses
  %i.ah = tail call ptr @EVP_MD_CTX_new() #9      ; 13 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.ac, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aj = tail call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.ah, ptr noundef %3, ptr noundef null) #9
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.ac, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ah, ptr noundef nonnull @zeroes, i64 noundef 8) #9
  %.not100 = icmp eq i32 %i.ak, 0
  br i1 %.not100, label %bb.ac, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.al = zext nneg i32 %i.c to i64               ; 2 uses
  %i.am = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ah, ptr noundef %2, i64 noundef %i.al) #9
  %.not101 = icmp eq i32 %i.am, 0
  br i1 %.not101, label %bb.ac, label %bb.v

bb.v:                                             ; preds = %bb.u
  %.not102 = icmp eq i32 %.190, 0
  br i1 %.not102, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.an = sext i32 %.190 to i64
  %i.ao = tail call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.ah, ptr noundef %.083, i64 noundef %i.an) #9
  %.not103 = icmp eq i32 %i.ao, 0
  br i1 %.not103, label %bb.ac, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.ap = tail call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.ah, ptr noundef %i.ag, ptr noundef null) #9
  %.not104 = icmp eq i32 %i.ap, 0
  br i1 %.not104, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = tail call i32 @PKCS1_MGF1(ptr noundef %.084, i64 noundef %6, ptr noundef %i.ag, i64 noundef %i.al, ptr noundef %spec.select) #9
  %.not105 = icmp eq i32 %i.aq, 0
  br i1 %.not105, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.ar = add i32 %i.c, %.190
  %i.as = sub i32 %.085, %i.ar
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr i8, ptr %.084, i64 %i.at  ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -2     ; 2 uses
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !23
  %i.ax = xor i8 %i.aw, 1
  store i8 %i.ax, ptr %i.av, align 1, !tbaa !23
  br i1 %i.w, label %iter.check, label %.loopexit

iter.check:                                       ; preds = %bb.z
  %i.ay = getelementptr i8, ptr %i.au, i64 -1     ; 5 uses
  %wide.trip.count = zext nneg i32 %.190 to i64   ; 6 uses
  %min.iters.check = icmp ult i32 %.190, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check118 = icmp ult i32 %.190, 32
  br i1 %min.iters.check118, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.az = and i64 %wide.trip.count, 28
  %n.vec = and i64 %wide.trip.count, 2147483616   ; 5 uses
  %i.ba = getelementptr i8, ptr %i.ay, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.ay, i64 %index ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.083, i64 %index ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load = load <16 x i8>, ptr %i.bb, align 1, !tbaa !23
  %wide.load119 = load <16 x i8>, ptr %i.bc, align 1, !tbaa !23
  %i.bd = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load120 = load <16 x i8>, ptr %next.gep, align 1, !tbaa !23
  %wide.load121 = load <16 x i8>, ptr %i.bd, align 1, !tbaa !23
  %i.be = xor <16 x i8> %wide.load120, %wide.load
  %i.bf = xor <16 x i8> %wide.load121, %wide.load119
  store <16 x i8> %i.be, ptr %next.gep, align 1, !tbaa !23
  store <16 x i8> %i.bf, ptr %i.bd, align 1, !tbaa !23
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bg = icmp eq i64 %index.next, %n.vec
  br i1 %i.bg, label %middle.block, label %vector.body, !llvm.loop !33

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.az, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !28

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec122 = and i64 %wide.trip.count, 2147483644 ; 4 uses
  %i.bh = getelementptr i8, ptr %i.ay, i64 %n.vec122
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next127, %vec.epilog.vector.body ] ; 3 uses
  %next.gep124 = getelementptr i8, ptr %i.ay, i64 %index123 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.083, i64 %index123
  %wide.load125 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !23
  %wide.load126 = load <4 x i8>, ptr %next.gep124, align 1, !tbaa !23
  %i.bj = xor <4 x i8> %wide.load126, %wide.load125
  store <4 x i8> %i.bj, ptr %next.gep124, align 1, !tbaa !23
  %index.next127 = add nuw i64 %index123, 4       ; 2 uses
  %i.bk = icmp eq i64 %index.next127, %n.vec122
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !34

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n128 = icmp eq i64 %n.vec122, %wide.trip.count
  br i1 %cmp.n128, label %.loopexit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec122, %vec.epilog.middle.block ]
  %.082110.ph = phi ptr [ %i.ay, %iter.check ], [ %i.ba, %vec.epilog.iter.check ], [ %i.bh, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.082110 = phi ptr [ %i.bn, %vec.epilog.scalar.ph ], [ %.082110.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.083, i64 %indvars.iv
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %.082110, i64 1
  %i.bo = load i8, ptr %.082110, align 1, !tbaa !23
  %i.bp = xor i8 %i.bo, %i.bm
  store i8 %i.bp, ptr %.082110, align 1, !tbaa !23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !35

.loopexit:                                        ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.z
  br i1 %i.l, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.bq = sub nuw nsw i32 8, %i.j
  %i.br = lshr i32 255, %i.bq
  %i.bs = load i8, ptr %.084, align 1, !tbaa !23
  %i.bt = trunc nuw nsw i32 %i.br to i8
  %i.bu = and i8 %i.bs, %i.bt
  store i8 %i.bu, ptr %.084, align 1, !tbaa !23
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.loopexit
  %i.bv = zext nneg i32 %.085 to i64
  %i.bw = getelementptr i8, ptr %.084, i64 %i.bv
  %i.bx = getelementptr i8, ptr %i.bw, i64 -1
  store i8 -68, ptr %i.bx, align 1, !tbaa !23
  store i32 %.190, ptr %5, align 4, !tbaa !8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.x, %bb.w, %bb.s, %bb.t, %bb.u, %bb.r, %bb.q, %bb.p, %bb.a, %bb.ab, %bb.n, %bb.j, %bb.f
  %.2 = phi i32 [ %i.a, %bb.a ], [ %.089, %bb.j ], [ %.190, %bb.p ], [ %.190, %bb.q ], [ %.190, %bb.r ], [ %.190, %bb.y ], [ %.190, %bb.ab ], [ %.190, %bb.x ], [ %.190, %bb.w ], [ %.190, %bb.u ], [ %.190, %bb.t ], [ %.190, %bb.s ], [ %.089, %bb.n ], [ %i.a, %bb.f ]
  %.088 = phi i32 [ 0, %bb.a ], [ 0, %bb.j ], [ 0, %bb.p ], [ 0, %bb.q ], [ 0, %bb.r ], [ 0, %bb.y ], [ 1, %bb.ab ], [ 0, %bb.x ], [ 0, %bb.w ], [ 0, %bb.u ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.n ], [ 0, %bb.f ]
  %.1 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.p ], [ %i.y, %bb.q ], [ %.083, %bb.r ], [ %.083, %bb.y ], [ %.083, %bb.ab ], [ %.083, %bb.x ], [ %.083, %bb.w ], [ %.083, %bb.u ], [ %.083, %bb.t ], [ %.083, %bb.s ], [ null, %bb.n ], [ null, %bb.f ]
  %.081 = phi ptr [ null, %bb.a ], [ null, %bb.j ], [ null, %bb.p ], [ null, %bb.q ], [ null, %bb.r ], [ %i.ah, %bb.y ], [ %i.ah, %bb.ab ], [ %i.ah, %bb.x ], [ %i.ah, %bb.w ], [ %i.ah, %bb.u ], [ %i.ah, %bb.t ], [ %i.ah, %bb.s ], [ null, %bb.n ], [ null, %bb.f ]
  tail call void @EVP_MD_CTX_free(ptr noundef %.081) #9
  %i.by = sext i32 %.2 to i64
  tail call void @CRYPTO_clear_free(ptr noundef %.1, i64 noundef %i.by, ptr noundef nonnull @.str, i32 noundef 287) #9
  ret i32 %.088
}

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 0, 2) i32 @ossl_rsa_pss_params_30_set_defaults(ptr nofree noundef writeonly captures(address_is_null) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, ptr noundef nonnull align 4 dereferenceable(20) @default_RSASSA_PSS_params, i64 20, i1 false), !tbaa.struct !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i32 0, 2) i32 @ossl_rsa_pss_params_30_is_unrestricted(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i128, ptr %0, align 1
  %i.c = load i128, ptr @ossl_rsa_pss_params_30_is_unrestricted.pss_params_cmp, align 4
  %i.d = xor i128 %i.b, %i.c
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load i32, ptr %i.e, align 1
  %i.g = load i32, ptr getelementptr (i8, ptr @ossl_rsa_pss_params_30_is_unrestricted.pss_params_cmp, i64 16), align 4
  %i.h = zext i32 %i.f to i128
end_hunk_0
