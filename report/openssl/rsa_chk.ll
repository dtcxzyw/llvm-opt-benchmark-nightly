Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_chk?download=true
inline.NumInlined: 6
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [21 x i8] c"crypto/rsa/rsa_chk.c\00", align 1
@__func__.rsa_validate_keypair_multiprime = private unnamed_addr constant [32 x i8] c"rsa_validate_keypair_multiprime\00", align 1

; Function Attrs: nounwind uwtable
define i32 @ossl_rsa_validate_public(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_sp800_56b_check_public(ptr noundef %0) #2
  ret i32 %i.a
}

declare i32 @ossl_rsa_sp800_56b_check_public(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define i32 @ossl_rsa_validate_private(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_sp800_56b_check_private(ptr noundef %0) #2
  ret i32 %i.a
}

declare i32 @ossl_rsa_sp800_56b_check_private(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @ossl_rsa_validate_pairwise(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rsa_validate_keypair_multiprime(ptr noundef %0, ptr noundef null)
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = zext i1 %i.b to i32
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 2) i32 @rsa_validate_keypair_multiprime(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 5 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 31, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 147, ptr noundef null) #2
  br label %bb.bi

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !30
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !31
  %i.u = tail call i32 @OPENSSL_sk_num(ptr noundef %i.t) #2 ; 3 uses
  %i.v = icmp slt i32 %i.u, 1
  br i1 %i.v, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.w = add nuw nsw i32 %i.u, 2
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.y = tail call i32 @BN_num_bits(ptr noundef %i.x) #2
  %i.z = tail call i32 @ossl_rsa_multip_cap(i32 noundef %i.y) #2
  %i.aa = icmp sgt i32 %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 40, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 167, ptr noundef null) #2
  br label %bb.bi

bb.k:                                             ; preds = %bb.i, %bb.g
  %.0150 = phi i32 [ %i.u, %bb.i ], [ 0, %bb.g ]  ; 6 uses
  %i.ab = tail call ptr @BN_new() #2              ; 21 uses
  %i.ac = tail call ptr @BN_new() #2              ; 11 uses
  %i.ad = tail call ptr @BN_new() #2              ; 5 uses
  %i.ae = tail call ptr @BN_new() #2              ; 6 uses
  %i.af = tail call ptr @BN_new() #2              ; 11 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !32
  %i.ai = tail call ptr @BN_CTX_new_ex(ptr noundef %i.ah) #2 ; 19 uses
  %i.aj = insertelement <4 x ptr> poison, ptr %i.ab, i64 0
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.ac, i64 1
  %i.al = insertelement <4 x ptr> %i.ak, ptr %i.ad, i64 2
  %i.am = insertelement <4 x ptr> %i.al, ptr %i.ae, i64 3
  %.fr = freeze <4 x ptr> %i.am
  %i.an = icmp eq <4 x ptr> %.fr, splat (ptr null)
  %i.ao = icmp eq ptr %i.af, null
  %i.ap = icmp eq ptr %i.ai, null
  %i.aq = bitcast <4 x i1> %i.an to i4
  %i.ar = icmp ne i4 %i.aq, 0
  %op.rdx = select i1 %i.ar, i1 true, i1 %i.ao
  %op.rdx236 = select i1 %op.rdx, i1 true, i1 %i.ap
  br i1 %op.rdx236, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 524291, ptr noundef null) #2
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.as = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.at = tail call i32 @BN_is_one(ptr noundef %i.as) #2
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 60, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, ptr noundef null) #2
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0151 = phi i32 [ 0, %bb.n ], [ 1, %bb.m ]
  %i.au = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.av = tail call i32 @BN_is_odd(ptr noundef %i.au) #2
  %.not160 = icmp eq i32 %i.av, 0
  br i1 %.not160, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 64, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 101, ptr noundef null) #2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.1152 = phi i32 [ %.0151, %bb.o ], [ 0, %bb.p ]
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.ax = tail call i32 @BN_check_prime(ptr noundef %i.aw, ptr noundef nonnull %i.ai, ptr noundef %1) #2
  %.not161 = icmp eq i32 %i.ax, 1
  br i1 %.not161, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 70, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 128, ptr noundef null) #2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.2153 = phi i32 [ 0, %bb.r ], [ %.1152, %bb.q ]
  %i.ay = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.az = tail call i32 @BN_check_prime(ptr noundef %i.ay, ptr noundef nonnull %i.ai, ptr noundef %1) #2
  %.not162 = icmp eq i32 %i.az, 1
  br i1 %.not162, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 129, ptr noundef null) #2
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.3154 = phi i32 [ 0, %bb.t ], [ %.2153, %bb.s ] ; 2 uses
  %.not233 = icmp eq i32 %.0150, 0                ; 4 uses
  br i1 %.not233, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %bb.x
  %.0199 = phi i32 [ 0, %.lr.ph ], [ %i.bf, %bb.x ] ; 2 uses
  %.4198 = phi i32 [ %.3154, %.lr.ph ], [ %.5, %bb.x ]
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !31
  %i.bc = tail call ptr @OPENSSL_sk_value(ptr noundef %i.bb, i32 noundef range(i32 -2147483648, 2147483647) %.0199) #2
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !34
  %i.be = tail call i32 @BN_check_prime(ptr noundef %i.bd, ptr noundef nonnull %i.ai, ptr noundef %1) #2
  %.not194 = icmp eq i32 %i.be, 1
  br i1 %.not194, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 84, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 170, ptr noundef null) #2
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.5 = phi i32 [ 0, %bb.w ], [ %.4198, %bb.v ]   ; 2 uses
  %i.bf = add nuw nsw i32 %.0199, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.bf, %.0150
  br i1 %exitcond.not, label %._crit_edge, label %bb.v, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.x, %bb.u
  %.4.lcssa = phi i32 [ %.3154, %bb.u ], [ %.5, %bb.x ]
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.bi = tail call i32 @BN_mul(ptr noundef %i.ab, ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef nonnull %i.ai) #2
  %.not163 = icmp eq i32 %i.bi, 0
  br i1 %.not163, label %.loopexit, label %.preheader196

.preheader196:                                    ; preds = %._crit_edge
  br i1 %.not233, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %.preheader196
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.z

bb.y:                                             ; preds = %bb.z
  %i.bk = add nuw nsw i32 %.1200, 1               ; 2 uses
  %exitcond219.not = icmp eq i32 %i.bk, %.0150
  br i1 %exitcond219.not, label %._crit_edge202, label %bb.z, !llvm.loop !9

bb.z:                                             ; preds = %.lr.ph201, %bb.y
  %.1200 = phi i32 [ 0, %.lr.ph201 ], [ %i.bk, %bb.y ] ; 2 uses
  %i.bl = load ptr, ptr %i.bj, align 8, !tbaa !31
  %i.bm = tail call ptr @OPENSSL_sk_value(ptr noundef %i.bl, i32 noundef range(i32 -2147483648, 2147483647) %.1200) #2
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !34
  %i.bo = tail call i32 @BN_mul(ptr noundef %i.ab, ptr noundef %i.ab, ptr noundef %i.bn, ptr noundef nonnull %i.ai) #2
  %.not193 = icmp eq i32 %i.bo, 0
  br i1 %.not193, label %.loopexit, label %bb.y

._crit_edge202:                                   ; preds = %bb.y, %.preheader196
  %i.bp = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.bq = tail call i32 @BN_cmp(ptr noundef %i.ab, ptr noundef %i.bp) #2
  %.not164 = icmp eq i32 %i.bq, 0
  br i1 %.not164, label %bb.aa, label %.sink.split

.sink.split:                                      ; preds = %._crit_edge202
  %.not165 = icmp eq i32 %.0150, 0                ; 2 uses
  tail call void @ERR_new() #2
  %. = select i1 %.not165, i32 105, i32 103
  %.232 = select i1 %.not165, i32 127, i32 172
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef %., ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef %.232, ptr noundef null) #2
  br label %bb.aa

bb.aa:                                            ; preds = %.sink.split, %._crit_edge202
  %.6 = phi i32 [ %.4.lcssa, %._crit_edge202 ], [ 0, %.sink.split ]
  %i.br = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.bs = tail call ptr @BN_value_one() #2
  %i.bt = tail call i32 @BN_sub(ptr noundef %i.ab, ptr noundef %i.br, ptr noundef %i.bs) #2
  %.not166 = icmp eq i32 %i.bt, 0
  br i1 %.not166, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bu = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.bv = tail call ptr @BN_value_one() #2
  %i.bw = tail call i32 @BN_sub(ptr noundef %i.ac, ptr noundef %i.bu, ptr noundef %i.bv) #2
  %.not167 = icmp eq i32 %i.bw, 0
  br i1 %.not167, label %.loopexit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = tail call i32 @BN_mul(ptr noundef %i.ae, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull %i.ai) #2
  %.not168 = icmp eq i32 %i.bx, 0
  br i1 %.not168, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.by = tail call i32 @BN_gcd(ptr noundef %i.af, ptr noundef %i.ab, ptr noundef %i.ac, ptr noundef nonnull %i.ai) #2
  %.not169 = icmp eq i32 %i.by, 0
  br i1 %.not169, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bz = tail call i32 @BN_div(ptr noundef %i.af, ptr noundef null, ptr noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull %i.ai) #2
  %.not170 = icmp eq i32 %i.bz, 0
  br i1 %.not170, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.ae
  br i1 %.not233, label %._crit_edge205, label %.lr.ph204

.lr.ph204:                                        ; preds = %.preheader
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.ag

bb.af:                                            ; preds = %bb.aj
  %i.cb = add nuw nsw i32 %.2203, 1               ; 2 uses
  %exitcond220.not = icmp eq i32 %i.cb, %.0150
  br i1 %exitcond220.not, label %._crit_edge205, label %bb.ag, !llvm.loop !10

bb.ag:                                            ; preds = %.lr.ph204, %bb.af
  %.2203 = phi i32 [ 0, %.lr.ph204 ], [ %i.cb, %bb.af ] ; 2 uses
  %i.cc = load ptr, ptr %i.ca, align 8, !tbaa !31
  %i.cd = tail call ptr @OPENSSL_sk_value(ptr noundef %i.cc, i32 noundef range(i32 -2147483648, 2147483647) %.2203) #2
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !34
  %i.cf = tail call ptr @BN_value_one() #2
  %i.cg = tail call i32 @BN_sub(ptr noundef %i.ad, ptr noundef %i.ce, ptr noundef %i.cf) #2
  %.not189 = icmp eq i32 %i.cg, 0
  br i1 %.not189, label %.loopexit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ch = tail call i32 @BN_mul(ptr noundef %i.ae, ptr noundef %i.af, ptr noundef %i.ad, ptr noundef nonnull %i.ai) #2
  %.not190 = icmp eq i32 %i.ch, 0
  br i1 %.not190, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = tail call i32 @BN_gcd(ptr noundef %i.af, ptr noundef %i.af, ptr noundef %i.ad, ptr noundef nonnull %i.ai) #2
  %.not191 = icmp eq i32 %i.ci, 0
  br i1 %.not191, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cj = tail call i32 @BN_div(ptr noundef %i.af, ptr noundef null, ptr noundef %i.ae, ptr noundef %i.af, ptr noundef nonnull %i.ai) #2
  %.not192 = icmp eq i32 %i.cj, 0
  br i1 %.not192, label %.loopexit, label %bb.af

._crit_edge205:                                   ; preds = %bb.af, %.preheader
  %i.ck = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.cl = load ptr, ptr %i.j, align 8, !tbaa !28
  %i.cm = tail call i32 @BN_mod_mul(ptr noundef %i.ab, ptr noundef %i.ck, ptr noundef %i.cl, ptr noundef %i.af, ptr noundef nonnull %i.ai) #2
  %.not171 = icmp eq i32 %i.cm, 0
  br i1 %.not171, label %.loopexit, label %bb.ak

bb.ak:                                            ; preds = %._crit_edge205
  %i.cn = tail call i32 @BN_is_one(ptr noundef %i.ab) #2
  %.not172 = icmp eq i32 %i.cn, 0
  br i1 %.not172, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 123, ptr noundef null) #2
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.7 = phi i32 [ %.6, %bb.ak ], [ 0, %bb.al ]    ; 4 uses
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !36
  %.not173 = icmp eq ptr %i.cp, null
  br i1 %.not173, label %bb.ba, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !37
  %.not174 = icmp eq ptr %i.cr, null
  br i1 %.not174, label %bb.ba, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !38
  %.not175 = icmp eq ptr %i.ct, null
  br i1 %.not175, label %bb.ba, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cu = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.cv = tail call ptr @BN_value_one() #2
  %i.cw = tail call i32 @BN_sub(ptr noundef %i.ab, ptr noundef %i.cu, ptr noundef %i.cv) #2
  %.not176 = icmp eq i32 %i.cw, 0
  br i1 %.not176, label %.loopexit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cx = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.cy = tail call i32 @BN_div(ptr noundef null, ptr noundef %i.ac, ptr noundef %i.cx, ptr noundef %i.ab, ptr noundef nonnull %i.ai) #2
  %.not177 = icmp eq i32 %i.cy, 0
  br i1 %.not177, label %.loopexit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cz = load ptr, ptr %i.co, align 8, !tbaa !36
  %i.da = tail call i32 @BN_cmp(ptr noundef %i.ac, ptr noundef %i.cz) #2
  %.not178 = icmp eq i32 %i.da, 0
  br i1 %.not178, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 124, ptr noundef null) #2
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %.8 = phi i32 [ 0, %bb.as ], [ %.7, %bb.ar ]
  %i.db = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.dc = tail call ptr @BN_value_one() #2
  %i.dd = tail call i32 @BN_sub(ptr noundef %i.ab, ptr noundef %i.db, ptr noundef %i.dc) #2
  %.not179 = icmp eq i32 %i.dd, 0
  br i1 %.not179, label %.loopexit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.de = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.df = tail call i32 @BN_div(ptr noundef null, ptr noundef %i.ac, ptr noundef %i.de, ptr noundef %i.ab, ptr noundef nonnull %i.ai) #2
  %.not180 = icmp eq i32 %i.df, 0
  br i1 %.not180, label %.loopexit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.dg = load ptr, ptr %i.cq, align 8, !tbaa !37
  %i.dh = tail call i32 @BN_cmp(ptr noundef %i.ac, ptr noundef %i.dg) #2
  %.not181 = icmp eq i32 %i.dh, 0
  br i1 %.not181, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 186, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 125, ptr noundef null) #2
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.9 = phi i32 [ 0, %bb.aw ], [ %.8, %bb.av ]
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !26
  %i.dj = load ptr, ptr %i.a, align 8, !tbaa !25
  %i.dk = tail call ptr @BN_mod_inverse(ptr noundef %i.ab, ptr noundef %i.di, ptr noundef %i.dj, ptr noundef nonnull %i.ai) #2
  %.not182 = icmp eq ptr %i.dk, null
  br i1 %.not182, label %.loopexit, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.dl = load ptr, ptr %i.cs, align 8, !tbaa !38
  %i.dm = tail call i32 @BN_cmp(ptr noundef %i.ab, ptr noundef %i.dl) #2
  %.not183 = icmp eq i32 %i.dm, 0
  br i1 %.not183, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 196, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 126, ptr noundef null) #2
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ay, %bb.az, %bb.ao, %bb.an, %bb.am
  %.10 = phi i32 [ 0, %bb.az ], [ %.9, %bb.ay ], [ %.7, %bb.ao ], [ %.7, %bb.an ], [ %.7, %bb.am ] ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 128
  br i1 %.not233, label %.loopexit, label %.lr.ph209

.lr.ph209:                                        ; preds = %bb.ba, %bb.bh
  %.3207 = phi i32 [ %i.ef, %bb.bh ], [ 0, %bb.ba ] ; 2 uses
  %.11206 = phi i32 [ %.13, %bb.bh ], [ %.10, %bb.ba ]
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !31
  %i.dp = tail call ptr @OPENSSL_sk_value(ptr noundef %i.do, i32 noundef range(i32 -2147483648, 2147483647) %.3207) #2 ; 5 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.dr = tail call ptr @BN_value_one() #2
  %i.ds = tail call i32 @BN_sub(ptr noundef %i.ab, ptr noundef %i.dq, ptr noundef %i.dr) #2
  %.not184 = icmp eq i32 %i.ds, 0
  br i1 %.not184, label %.loopexit, label %bb.bb

bb.bb:                                            ; preds = %.lr.ph209
  %i.dt = load ptr, ptr %i.m, align 8, !tbaa !29
  %i.du = tail call i32 @BN_div(ptr noundef null, ptr noundef %i.ac, ptr noundef %i.dt, ptr noundef %i.ab, ptr noundef nonnull %i.ai) #2
  %.not185 = icmp eq i32 %i.du, 0
  br i1 %.not185, label %.loopexit, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !39
  %i.dx = tail call i32 @BN_cmp(ptr noundef %i.ac, ptr noundef %i.dw) #2
  %.not186 = icmp eq i32 %i.dx, 0
  br i1 %.not186, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 213, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 169, ptr noundef null) #2
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.12 = phi i32 [ 0, %bb.bd ], [ %.11206, %bb.bc ]
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !40
  %i.ea = load ptr, ptr %i.dp, align 8, !tbaa !34
  %i.eb = tail call ptr @BN_mod_inverse(ptr noundef %i.ab, ptr noundef %i.dz, ptr noundef %i.ea, ptr noundef nonnull %i.ai) #2
  %.not187 = icmp eq ptr %i.eb, null
  br i1 %.not187, label %.loopexit, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !41
  %i.ee = tail call i32 @BN_cmp(ptr noundef %i.ab, ptr noundef %i.ed) #2
  %.not188 = icmp eq i32 %i.ee, 0
  br i1 %.not188, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  tail call void @ERR_new() #2
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @__func__.rsa_validate_keypair_multiprime) #2
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 168, ptr noundef null) #2
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bf, %bb.bg
  %.13 = phi i32 [ 0, %bb.bg ], [ %.12, %bb.bf ]  ; 2 uses
  %i.ef = add nuw nsw i32 %.3207, 1               ; 2 uses
  %exitcond221.not = icmp eq i32 %i.ef, %.0150
  br i1 %exitcond221.not, label %.loopexit, label %.lr.ph209, !llvm.loop !11

.loopexit:                                        ; preds = %bb.z, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.bh, %.lr.ph209, %bb.bb, %bb.be, %bb.ba, %bb.ax, %bb.au, %bb.at, %bb.aq, %bb.ap, %._crit_edge205, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %._crit_edge, %bb.l
  %.14 = phi i32 [ -1, %bb.l ], [ -1, %._crit_edge ], [ %.10, %bb.ba ], [ -1, %bb.ad ], [ -1, %bb.ac ], [ -1, %bb.ae ], [ -1, %bb.ab ], [ -1, %bb.aa ], [ -1, %bb.ax ], [ -1, %bb.be ], [ -1, %bb.au ], [ -1, %bb.at ], [ -1, %bb.aq ], [ -1, %bb.ap ], [ -1, %._crit_edge205 ], [ -1, %bb.aj ], [ -1, %bb.bb ], [ %.13, %bb.bh ], [ -1, %.lr.ph209 ], [ -1, %bb.ag ], [ -1, %bb.ah ], [ -1, %bb.ai ], [ -1, %bb.z ]
  tail call void @BN_free(ptr noundef %i.ab) #2
  tail call void @BN_free(ptr noundef %i.ac) #2
  tail call void @BN_free(ptr noundef %i.ad) #2
  tail call void @BN_free(ptr noundef %i.ae) #2
  tail call void @BN_free(ptr noundef %i.af) #2
  tail call void @BN_CTX_free(ptr noundef %i.ai) #2
  br label %bb.bi

bb.bi:                                            ; preds = %.loopexit, %bb.j, %bb.f
  %.0155 = phi i32 [ 0, %bb.f ], [ 0, %bb.j ], [ %.14, %.loopexit ]
  ret i32 %.0155
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @RSA_check_key(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc range(i32 -1, 2) i32 @rsa_validate_keypair_multiprime(ptr noundef readonly %0, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @RSA_check_key_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @rsa_validate_keypair_multiprime(ptr noundef %0, ptr noundef %1)
  ret i32 %i.a
}

declare void @ERR_new() local_unnamed_addr #1

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @ossl_rsa_multip_cap(i32 noundef) local_unnamed_addr #1

declare i32 @BN_num_bits(ptr noundef) local_unnamed_addr #1

declare ptr @BN_new() local_unnamed_addr #1

declare ptr @BN_CTX_new_ex(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_one(ptr noundef) local_unnamed_addr #1

declare i32 @BN_is_odd(ptr noundef) local_unnamed_addr #1

declare i32 @BN_check_prime(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_cmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_sub(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BN_value_one() local_unnamed_addr #1

declare i32 @BN_gcd(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_mul(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @BN_mod_inverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_free(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

declare i32 @OPENSSL_sk_num(ptr noundef) local_unnamed_addr #1

declare ptr @OPENSSL_sk_value(ptr noundef, i32 noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !35}
!9 = distinct !{!9, !35}
!10 = distinct !{!10, !35}
!11 = distinct !{!11, !35}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 _ZTS15ossl_lib_ctx_st", !12, i64 0}
!14 = !{!"p1 _ZTS11rsa_meth_st", !12, i64 0}
!15 = !{!"p1 _ZTS9bignum_st", !12, i64 0}
!16 = !{!"", !5, i64 0, !5, i64 4}
!17 = !{!"rsa_pss_params_30_st", !5, i64 0, !16, i64 4, !5, i64 12, !5, i64 16}
!18 = !{!"p1 _ZTS17rsa_pss_params_st", !12, i64 0}
!19 = !{!"p1 _ZTS23stack_st_RSA_PRIME_INFO", !12, i64 0}
!20 = !{!"p1 _ZTS13stack_st_void", !12, i64 0}
!21 = !{!"crypto_ex_data_st", !13, i64 0, !20, i64 8}
!22 = !{!"", !4, i64 0}
!23 = !{!"p1 _ZTS14bn_mont_ctx_st", !12, i64 0}
!24 = !{!"rsa_st", !5, i64 0, !13, i64 8, !5, i64 16, !14, i64 24, !15, i64 32, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64, !15, i64 72, !15, i64 80, !15, i64 88, !17, i64 96, !18, i64 120, !19, i64 128, !21, i64 136, !22, i64 152, !5, i64 156, !23, i64 160, !23, i64 168, !23, i64 176, !12, i64 184, !12, i64 192, !5, i64 200}
!25 = !{!24, !15, i64 56}
!26 = !{!24, !15, i64 64}
!27 = !{!24, !15, i64 32}
!28 = !{!24, !15, i64 40}
!29 = !{!24, !15, i64 48}
!30 = !{!24, !5, i64 16}
!31 = !{!24, !19, i64 128}
!32 = !{!24, !13, i64 8}
!33 = !{!"rsa_prime_info_st", !15, i64 0, !15, i64 8, !15, i64 16, !15, i64 24, !23, i64 32}
!34 = !{!33, !15, i64 0}
!35 = !{!"llvm.loop.mustprogress"}
!36 = !{!24, !15, i64 72}
!37 = !{!24, !15, i64 80}
!38 = !{!24, !15, i64 88}
!39 = !{!33, !15, i64 8}
!40 = !{!33, !15, i64 24}
!41 = !{!33, !15, i64 16}
end_hunk_0
