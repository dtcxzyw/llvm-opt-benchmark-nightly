Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/rsa_crypt?download=true
inline.NumInlined: 31
inline.NumDeleted: 15
begin_hunk_0_@RSA_padding_check_PKCS1_OAEP_mgf1:bb.a
middle.block153:                                  ; preds = %vector.body146
  %cmp.n154 = icmp eq i64 %i.k, %n.vec145
  br i1 %cmp.n154, label %._crit_edge103, label %vec.epilog.iter.check156

vec.epilog.iter.check156:                         ; preds = %middle.block153
  %min.epilog.iters.check158 = icmp eq i64 %i.af, 0
  br i1 %min.epilog.iters.check158, label %.lr.ph102.preheader, label %vec.epilog.ph159, !prof !12

vec.epilog.ph159:                                 ; preds = %vector.main.loop.iter.check142, %vec.epilog.iter.check156
  %vec.epilog.resume.val160 = phi i64 [ %n.vec145, %vec.epilog.iter.check156 ], [ 0, %vector.main.loop.iter.check142 ]
  %n.vec161 = and i64 %i.k, -4                    ; 3 uses
  br label %vec.epilog.vector.body162

vec.epilog.vector.body162:                        ; preds = %vec.epilog.vector.body162, %vec.epilog.ph159
  %index163 = phi i64 [ %vec.epilog.resume.val160, %vec.epilog.ph159 ], [ %index.next166, %vec.epilog.vector.body162 ] ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 %index163
  %wide.load164 = load <4 x i8>, ptr %i.an, align 1, !tbaa !8, !alias.scope !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.l, i64 %index163 ; 2 uses
  %wide.load165 = load <4 x i8>, ptr %i.ao, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %i.ap = xor <4 x i8> %wide.load165, %wide.load164
  store <4 x i8> %i.ap, ptr %i.ao, align 1, !tbaa !8, !alias.scope !51, !noalias !50
  %index.next166 = add nuw i64 %index163, 4       ; 2 uses
  %i.aq = icmp eq i64 %index.next166, %n.vec161
  br i1 %i.aq, label %vec.epilog.middle.block167, label %vec.epilog.vector.body162, !llvm.loop !46

vec.epilog.middle.block167:                       ; preds = %vec.epilog.vector.body162
  %cmp.n168 = icmp eq i64 %i.k, %n.vec161
  br i1 %cmp.n168, label %._crit_edge103, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %iter.check155, %vector.memcheck, %vec.epilog.iter.check156, %vec.epilog.middle.block167
  %.081101.ph = phi i64 [ 0, %iter.check155 ], [ 0, %vector.memcheck ], [ %n.vec145, %vec.epilog.iter.check156 ], [ %n.vec161, %vec.epilog.middle.block167 ]
  br label %.lr.ph102

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %.082100 = phi i64 [ %i.aw, %.lr.ph ], [ %.082100.ph, %.lr.ph.preheader ] ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 %.082100
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.082100 ; 2 uses
  %i.au = load i8, ptr %i.at, align 1, !tbaa !8
  %i.av = xor i8 %i.au, %i.as
  store i8 %i.av, ptr %i.at, align 1, !tbaa !8
  %i.aw = add nuw nsw i64 %.082100, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aw, %i.f
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !47

._crit_edge103:                                   ; preds = %.lr.ph102, %middle.block153, %vec.epilog.middle.block167, %.preheader
  %i.ax = call i32 @EVP_Digest(ptr noundef %5, i64 noundef %6, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %.075, ptr noundef null) #6
  %.not93 = icmp eq i32 %i.ax, 0
  br i1 %.not93, label %bb.l, label %bb.f

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %.lr.ph102
  %.081101 = phi i64 [ %i.bd, %.lr.ph102 ], [ %.081101.ph, %.lr.ph102.preheader ] ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.o, i64 %.081101
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.l, i64 %.081101 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !8
  %i.bc = xor i8 %i.bb, %i.az
  store i8 %i.bc, ptr %i.ba, align 1, !tbaa !8
  %i.bd = add nuw i64 %.081101, 1                 ; 2 uses
  %exitcond117.not = icmp eq i64 %i.bd, %i.k
  br i1 %exitcond117.not, label %._crit_edge103, label %.lr.ph102, !llvm.loop !48

bb.f:                                             ; preds = %._crit_edge103
  %i.be = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, i64 noundef %i.f) #6
  %i.bf = icmp ult i64 %i.f, %i.k
  br i1 %i.bf, label %.lr.ph109.preheader, label %._crit_edge110

.lr.ph109.preheader:                              ; preds = %bb.f
  %i.bg = icmp ne i32 %i.be, 0
  %i.bh = load i8, ptr %3, align 1, !tbaa !8
  %i.bi = icmp ne i8 %i.bh, 0
  %i.bj = or i1 %i.bg, %i.bi
  %i.bk = sext i1 %i.bj to i64
  br label %.lr.ph109

._crit_edge110.loopexit:                          ; preds = %.lr.ph109
  %i.bl = or i64 %i.ca, %.080104
  br label %._crit_edge110

._crit_edge110:                                   ; preds = %._crit_edge110.loopexit, %bb.f
  %.079.lcssa = phi i64 [ -1, %bb.f ], [ %i.bl, %._crit_edge110.loopexit ]
  %.078.lcssa = phi i64 [ 0, %bb.f ], [ %i.bw, %._crit_edge110.loopexit ]
  %i.bm = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.079.lcssa) #8, !srcloc !13
  %.not94 = icmp eq i64 %i.bm, 0
  br i1 %.not94, label %bb.g, label %bb.k

.lr.ph109:                                        ; preds = %.lr.ph109.preheader, %.lr.ph109
  %.077107 = phi i64 [ %i.cd, %.lr.ph109 ], [ %i.f, %.lr.ph109.preheader ] ; 3 uses
  %.078106 = phi i64 [ %i.bw, %.lr.ph109 ], [ 0, %.lr.ph109.preheader ]
  %.079105 = phi i64 [ %i.ca, %.lr.ph109 ], [ -1, %.lr.ph109.preheader ] ; 2 uses
  %.080104 = phi i64 [ %i.cc, %.lr.ph109 ], [ %i.bk, %.lr.ph109.preheader ] ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 %.077107
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !8   ; 2 uses
  %i.bp = icmp eq i8 %i.bo, 1                     ; 2 uses
  %.neg.i.i.i = sext i1 %i.bp to i64              ; 2 uses
  %i.bq = select i1 %i.bp, i64 %.079105, i64 0    ; 2 uses
  %i.br = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bq) #8, !srcloc !13
  %i.bs = and i64 %i.br, %.077107
  %i.bt = xor i64 %i.bq, -1
  %i.bu = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.bt) #8, !srcloc !13
  %i.bv = and i64 %i.bu, %.078106
  %i.bw = or i64 %i.bv, %i.bs                     ; 2 uses
  %i.bx = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #8, !srcloc !13 ; 0 uses
  %i.by = xor i64 %.neg.i.i.i, -1
  %i.bz = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.by) #8, !srcloc !13
  %i.ca = and i64 %i.bz, %.079105                 ; 3 uses
  %.not98 = icmp eq i8 %i.bo, 0
  %i.cb = select i1 %.not98, i64 0, i64 %i.ca
  %i.cc = or i64 %i.cb, %.080104
  %i.cd = add i64 %.077107, 1                     ; 2 uses
  %exitcond118.not = icmp eq i64 %i.cd, %i.k
  br i1 %exitcond118.not, label %._crit_edge110.loopexit, label %.lr.ph109, !llvm.loop !49

bb.g:                                             ; preds = %._crit_edge110
  %i.ce = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.078.lcssa) #8, !srcloc !13
  %i.cf = add i64 %i.ce, 1                        ; 3 uses
  %i.cg = sub i64 %i.k, %i.cf                     ; 3 uses
  %i.ch = icmp ult i64 %2, %i.cg
  br i1 %i.ch, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 113, ptr noundef nonnull @.str, i32 noundef 193) #6
  br label %bb.l

bb.i:                                             ; preds = %bb.g
  %i.ci = icmp eq i64 %i.k, %i.cf
  br i1 %i.ci, label %OPENSSL_memcpy.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.cf
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 1 %i.cj, i64 %i.cg, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.i, %bb.j
  store i64 %i.cg, ptr %1, align 8, !tbaa !15
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge110, %bb.c
  %.083 = phi ptr [ null, %bb.c ], [ %i.l, %._crit_edge110 ]
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 133, ptr noundef nonnull @.str, i32 noundef 205) #6
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %bb.k, %bb.d, %bb.e, %._crit_edge, %._crit_edge103, %OPENSSL_memcpy.exit
  %.1.sink = phi ptr [ %i.l, %OPENSSL_memcpy.exit ], [ %.083, %bb.k ], [ null, %bb.d ], [ %i.l, %bb.h ], [ %i.l, %._crit_edge103 ], [ %i.l, %._crit_edge ], [ %i.l, %bb.e ]
  %.0 = phi i32 [ 1, %OPENSSL_memcpy.exit ], [ 0, %bb.k ], [ 0, %bb.d ], [ 0, %bb.h ], [ 0, %._crit_edge103 ], [ 0, %._crit_edge ], [ 0, %bb.e ]
  call void @OPENSSL_free(ptr noundef %.1.sink) #6
  ret i32 %.0
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_public_encrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_encrypt(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 310) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_encrypt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %.not83 = icmp eq ptr %i.c, null
  br i1 %.not83, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %5, 2147483647
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 342) #6
  br label %.sink.split

bb.e:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %5 to i32
  %i.f = tail call i32 %i.c(i32 noundef %i.e, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %0, i32 noundef %6) #6 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %storemerge = zext nneg i32 %narrow to i64
  %.072 = zext i1 %i.g to i32
  br label %.sink.split

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 144, ptr noundef nonnull @.str, i32 noundef 356) #6
  br label %bb.ad

bb.i:                                             ; preds = %bb.g
  %i.n = tail call i32 @is_public_component_of_rsa_key_good(ptr noundef nonnull %0) #6
  %.not84 = icmp eq i32 %i.n, 0
  br i1 %.not84, label %bb.ad, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = tail call i32 @RSA_size(ptr noundef nonnull %0) #6
  %i.p = zext i32 %i.o to i64                     ; 8 uses
  %i.q = icmp ult i64 %3, %i.p
  br i1 %i.q, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 135, ptr noundef nonnull @.str, i32 noundef 371) #6
  br label %bb.ad

bb.l:                                             ; preds = %bb.j
  %i.r = tail call ptr @BN_CTX_new() #6           ; 8 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.ac, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @BN_CTX_start(ptr noundef nonnull %i.r) #6
  %i.t = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.r) #6 ; 4 uses
  %i.u = tail call ptr @BN_CTX_get(ptr noundef nonnull %i.r) #6 ; 3 uses
  %i.v = tail call ptr @OPENSSL_malloc(i64 noundef %i.p) #6 ; 6 uses
  %i.w = icmp ne ptr %i.t, null
  %i.x = icmp ne ptr %i.u, null
  %or.cond = select i1 %i.w, i1 %i.x, i1 false
  %i.y = icmp ne ptr %i.v, null
  %or.cond3 = select i1 %or.cond, i1 %i.y, i1 false
  br i1 %or.cond3, label %bb.n, label %bb.ab

bb.n:                                             ; preds = %bb.m
  switch i32 %6, label %bb.r [
    i32 1, label %bb.o
    i32 4, label %bb.p
    i32 3, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.z = tail call fastcc i32 @rsa_padding_add_PKCS1_type_2(ptr noundef %i.v, i64 noundef %i.p, ptr noundef %4, i64 noundef %5)
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.aa = tail call i32 @RSA_padding_add_PKCS1_OAEP_mgf1(ptr noundef nonnull %i.v, i64 noundef %i.p, ptr noundef %4, i64 noundef %5, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null)
  br label %bb.s

bb.q:                                             ; preds = %bb.n
  %i.ab = tail call i32 @RSA_padding_add_none(ptr noundef nonnull %i.v, i64 noundef %i.p, ptr noundef %4, i64 noundef %5) #6
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 143, ptr noundef nonnull @.str, i32 noundef 401) #6
  br label %bb.ab

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.070 = phi i32 [ %i.z, %bb.o ], [ %i.aa, %bb.p ], [ %i.ab, %bb.q ]
  %i.ac = icmp slt i32 %.070, 1
  br i1 %i.ac, label %bb.ab, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = tail call ptr @BN_bin2bn(ptr noundef nonnull %i.v, i64 noundef %i.p, ptr noundef nonnull %i.t) #6
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.ab, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.ag = tail call i32 @BN_ucmp(ptr noundef nonnull %i.t, ptr noundef %i.af) #6
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str, i32 noundef 415) #6
  br label %bb.ab

bb.w:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ak = load ptr, ptr %i.h, align 8, !tbaa !53
  %i.al = tail call i32 @BN_MONT_CTX_set_locked(ptr noundef nonnull %i.ai, ptr noundef nonnull %i.aj, ptr noundef %i.ak, ptr noundef nonnull %i.r) #6
  %.not85 = icmp eq i32 %i.al, 0
  br i1 %.not85, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.am = load ptr, ptr %i.k, align 8, !tbaa !54
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !55 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = tail call i32 @BN_mod_exp_mont(ptr noundef nonnull %i.u, ptr noundef nonnull %i.t, ptr noundef %i.am, ptr noundef nonnull %i.ao, ptr noundef nonnull %i.r, ptr noundef %i.an) #6
  %.not86 = icmp eq i32 %i.ap, 0
  br i1 %.not86, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = tail call i32 @BN_bn2bin_padded(ptr noundef %2, i64 noundef %i.p, ptr noundef nonnull %i.u) #6
  %.not87 = icmp eq i32 %i.aq, 0
  br i1 %.not87, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 68, ptr noundef nonnull @.str, i32 noundef 427) #6
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  store i64 %i.p, ptr %1, align 8, !tbaa !15
  br label %bb.ab

bb.ab:                                            ; preds = %bb.w, %bb.x, %bb.t, %bb.s, %bb.m, %bb.aa, %bb.z, %bb.v, %bb.r
  %.0.ph = phi i32 [ 0, %bb.m ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %bb.z ], [ 1, %bb.aa ], [ 0, %bb.v ], [ 0, %bb.t ], [ 0, %bb.s ], [ 0, %bb.r ]
  tail call void @BN_CTX_end(ptr noundef nonnull %i.r) #6
  tail call void @BN_CTX_free(ptr noundef nonnull %i.r) #6
  br label %bb.ac

bb.ac:                                            ; preds = %bb.l, %bb.ab
  %.094 = phi i32 [ %.0.ph, %bb.ab ], [ 0, %bb.l ]
  %.07192 = phi ptr [ %i.v, %bb.ab ], [ null, %bb.l ]
  tail call void @OPENSSL_free(ptr noundef %.07192) #6
  br label %bb.ad

.sink.split:                                      ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ %storemerge, %bb.e ]
  %.2.ph = phi i32 [ 0, %bb.d ], [ %.072, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !15
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.k, %bb.ac, %bb.i, %bb.h
  %.2 = phi i32 [ 0, %bb.k ], [ %.094, %bb.ac ], [ 0, %bb.h ], [ 0, %bb.i ], [ %.2.ph, %.sink.split ]
  ret i32 %.2
}

declare i32 @RSA_size(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_private_encrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_sign_raw(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 325) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @RSA_sign_raw(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare i32 @is_public_component_of_rsa_key_good(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_new() local_unnamed_addr #1

declare void @BN_CTX_start(ptr noundef) local_unnamed_addr #1

declare ptr @BN_CTX_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @rsa_padding_add_PKCS1_type_2(ptr noundef nonnull %0, i64 noundef range(i64 0, 4294967296) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i64 %1, 11
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 215) #6
  br label %OPENSSL_memcpy.exit

bb.c:                                             ; preds = %bb.a
  %i.b = add nsw i64 %1, -11
  %i.c = icmp ugt i64 %3, %i.b
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 114, ptr noundef nonnull @.str, i32 noundef 220) #6
  br label %OPENSSL_memcpy.exit

bb.e:                                             ; preds = %bb.c
  store i8 0, ptr %0, align 1, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.d, align 1, !tbaa !8
  %i.e = add nsw i64 %1, -3
  %i.f = sub nuw nsw i64 %i.e, %3                 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 2 ; 2 uses
  %i.h = tail call i32 @RAND_bytes(ptr noundef nonnull %i.g, i64 noundef range(i64 -4294967276, 4294967293) %i.f) #6
  %i.i = icmp eq i32 %i.h, 1
  br i1 %i.i, label %.preheader.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #7
  unreachable

.preheader.i:                                     ; preds = %bb.e, %bb.j
  %.09.i = phi i64 [ %i.q, %bb.j ], [ 0, %bb.e ]  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.09.i ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.preheader.i
  %i.k = load i8, ptr %i.j, align 1, !tbaa !8
  %i.l = icmp eq i8 %i.k, 0
  %i.m = zext i1 %i.l to i32
  %i.n = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 range(i32 0, 2) %i.m) #8, !srcloc !58
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = tail call i32 @RAND_bytes(ptr noundef nonnull %i.j, i64 noundef 1) #6
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.g, label %bb.i, !llvm.loop !56

bb.i:                                             ; preds = %bb.h
  tail call void @abort() #7
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.q = add nuw i64 %.09.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %i.f
  br i1 %exitcond.not.i, label %rand_nonzero.exit, label %.preheader.i, !llvm.loop !57

rand_nonzero.exit:                                ; preds = %bb.j
  %i.r = getelementptr i8, ptr %0, i64 %i.f
  %i.s = getelementptr i8, ptr %i.r, i64 2
  store i8 0, ptr %i.s, align 1, !tbaa !8
  %i.t = icmp eq i64 %3, 0
  br i1 %i.t, label %OPENSSL_memcpy.exit, label %bb.k

bb.k:                                             ; preds = %rand_nonzero.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %i.v = sub nsw i64 0, %3
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 %i.v
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.w, ptr readonly align 1 %2, i64 %3, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.k, %rand_nonzero.exit, %bb.d, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 1, %rand_nonzero.exit ], [ 1, %bb.k ]
  ret i32 %.0
}

declare i32 @RSA_padding_add_none(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @BN_bin2bn(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_ucmp(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_MONT_CTX_set_locked(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_mod_exp_mont(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @BN_bn2bin_padded(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_end(ptr noundef) local_unnamed_addr #1

declare void @BN_CTX_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_decrypt(ptr noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60   ; 2 uses
  %.not25 = icmp eq ptr %i.c, null
  br i1 %.not25, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = icmp ugt i64 %5, 2147483647
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 519) #6
  br label %rsa_default_decrypt.exit.sink.split

bb.e:                                             ; preds = %bb.c
  %i.e = trunc nuw nsw i64 %5 to i32
  %i.f = tail call i32 %i.c(i32 noundef %i.e, ptr noundef %4, ptr noundef %2, ptr noundef nonnull %0, i32 noundef %6) #6 ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  %narrow = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %storemerge = zext nneg i32 %narrow to i64
  %.0 = zext i1 %i.g to i32
  br label %rsa_default_decrypt.exit.sink.split

bb.f:                                             ; preds = %bb.b, %bb.a
  %i.h = tail call i32 @RSA_size(ptr noundef nonnull %0) #6 ; 3 uses
  %i.i = zext i32 %i.h to i64                     ; 3 uses
  %i.j = icmp ult i64 %3, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 135, ptr noundef nonnull @.str, i32 noundef 452) #6
  br label %rsa_default_decrypt.exit

bb.h:                                             ; preds = %bb.f
  %i.k = icmp eq i32 %6, 3                        ; 2 uses
  br i1 %i.k, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = tail call ptr @OPENSSL_malloc(i64 noundef %i.i) #6 ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %.thread.i, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.030.i = phi ptr [ %i.l, %bb.i ], [ %2, %bb.h ] ; 10 uses
  %.not.i = icmp eq i64 %5, %i.i
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 112, ptr noundef nonnull @.str, i32 noundef 467) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.i

bb.l:                                             ; preds = %bb.j
  %i.n = tail call i32 @rsa_private_transform(ptr noundef nonnull %0, ptr noundef %.030.i, ptr noundef %4, i64 noundef %5) #6
  %.not36.i = icmp eq i32 %i.n, 0
  br i1 %.not36.i, label %rsa_padding_check_PKCS1_type_2.exit.thread42.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  switch i32 %6, label %bb.z [
    i32 1, label %bb.n
    i32 4, label %rsa_padding_check_PKCS1_type_2.exit.i
    i32 3, label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i
  ]

bb.n:                                             ; preds = %bb.m
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 120, ptr noundef nonnull @.str, i32 noundef 238) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.p:                                             ; preds = %bb.n
  %i.p = icmp ult i32 %i.h, 11
  br i1 %i.p, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 126, ptr noundef nonnull @.str, i32 noundef 247) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.r:                                             ; preds = %bb.p
  %i.q = load i8, ptr %.030.i, align 1, !tbaa !8
  %i.r = getelementptr inbounds nuw i8, ptr %.030.i, i64 1
  %i.s = load i8, ptr %i.r, align 1, !tbaa !8
  br label %bb.t

bb.s:                                             ; preds = %bb.t
  %i.t = icmp ne i8 %i.q, 0
  %i.u = icmp ne i8 %i.s, 2
  %.not45.i.i = or i1 %i.t, %i.u
  %i.v = sub i64 9, %i.ah
  %i.w = or i64 %i.v, %i.ag
  %isneg.i.i = icmp sgt i64 %i.w, -1
  %.not42.i.i = select i1 %isneg.i.i, i1 true, i1 %.not45.i.i
  %i.x = add i64 %i.ah, 1                         ; 4 uses
  %.not40.i.i = icmp eq i64 %i.al, -1
  %.not.i.i = select i1 %.not42.i.i, i1 true, i1 %.not40.i.i
  br i1 %.not.i.i, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.t, %bb.r
  %.03448.i.i = phi i64 [ 2, %bb.r ], [ %i.am, %bb.t ] ; 3 uses
  %.03547.i.i = phi i64 [ -1, %bb.r ], [ %i.al, %bb.t ] ; 2 uses
  %.03646.i.i = phi i64 [ 0, %bb.r ], [ %i.ah, %bb.t ]
  %i.y = getelementptr inbounds nuw i8, ptr %.030.i, i64 %.03448.i.i
  %i.z = load i8, ptr %i.y, align 1, !tbaa !8
  %i.aa = icmp eq i8 %i.z, 0                      ; 2 uses
  %.neg.i.i.i.i = sext i1 %i.aa to i64            ; 2 uses
  %i.ab = select i1 %i.aa, i64 %.03547.i.i, i64 0 ; 2 uses
  %i.ac = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ab) #8, !srcloc !13
  %i.ad = and i64 %i.ac, %.03448.i.i
  %i.ae = xor i64 %i.ab, -1
  %i.af = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.ae) #8, !srcloc !13
  %i.ag = and i64 %i.af, %.03646.i.i              ; 2 uses
  %i.ah = or i64 %i.ag, %i.ad                     ; 3 uses
  %i.ai = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #8, !srcloc !13 ; 0 uses
  %i.aj = xor i64 %.neg.i.i.i.i, -1
  %i.ak = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.aj) #8, !srcloc !13
  %i.al = and i64 %i.ak, %.03547.i.i              ; 2 uses
  %i.am = add nuw nsw i64 %.03448.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.am, %5
  br i1 %exitcond.not.i.i, label %bb.s, label %bb.t, !llvm.loop !59

bb.u:                                             ; preds = %bb.s
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 284) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.v:                                             ; preds = %bb.s
  %i.an = sub nuw nsw i64 %5, %i.x                ; 2 uses
  %i.ao = icmp ugt i64 %i.x, %5
  br i1 %i.ao, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 137, ptr noundef nonnull @.str, i32 noundef 292) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread.i

bb.x:                                             ; preds = %bb.v
  %i.ap = icmp eq i64 %i.x, %5
  br i1 %i.ap, label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aq = getelementptr inbounds nuw i8, ptr %.030.i, i64 %i.x
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull readonly align 1 %i.aq, i64 %i.an, i1 false)
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i

rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i: ; preds = %bb.y, %bb.x
  store i64 %i.an, ptr %1, align 8, !tbaa !15
  br label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i: ; preds = %bb.m
  store i64 %5, ptr %1, align 8, !tbaa !15
  br label %rsa_default_decrypt.exit

bb.z:                                             ; preds = %bb.m
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 143, ptr noundef nonnull @.str, i32 noundef 490) #6
  br label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.i:            ; preds = %bb.m
  %i.ar = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr noundef %2, ptr noundef %1, i64 noundef %5, ptr noundef %.030.i, i64 noundef %5, ptr noundef null, i64 noundef 0, ptr noundef null, ptr noundef null)
  %.not37.i = icmp eq i32 %i.ar, 0
  br i1 %.not37.i, label %rsa_padding_check_PKCS1_type_2.exit.thread.i, label %.thread.i

rsa_padding_check_PKCS1_type_2.exit.thread.i:     ; preds = %rsa_padding_check_PKCS1_type_2.exit.i, %bb.w, %bb.u, %bb.q, %bb.o
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 136, ptr noundef nonnull @.str, i32 noundef 496) #6
  br label %rsa_padding_check_PKCS1_type_2.exit.thread42.i

rsa_padding_check_PKCS1_type_2.exit.thread42.i:   ; preds = %rsa_padding_check_PKCS1_type_2.exit.thread.i, %bb.l, %bb.k
  br i1 %i.k, label %rsa_default_decrypt.exit, label %.thread.i

.thread.i:                                        ; preds = %rsa_padding_check_PKCS1_type_2.exit.thread42.i, %rsa_padding_check_PKCS1_type_2.exit.i, %bb.z, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i, %bb.i
  %.148.i = phi i32 [ 0, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ 0, %bb.i ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.i ], [ 0, %bb.z ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i ]
  %.13147.i = phi ptr [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ null, %bb.i ], [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.i ], [ %.030.i, %bb.z ], [ %.030.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread51.i ]
  tail call void @OPENSSL_free(ptr noundef %.13147.i) #6
  br label %rsa_default_decrypt.exit

rsa_default_decrypt.exit.sink.split:              ; preds = %bb.e, %bb.d
  %.sink = phi i64 [ 0, %bb.d ], [ %storemerge, %bb.e ]
  %.1.ph = phi i32 [ 0, %bb.d ], [ %.0, %bb.e ]
  store i64 %.sink, ptr %1, align 8, !tbaa !15
  br label %rsa_default_decrypt.exit

rsa_default_decrypt.exit:                         ; preds = %rsa_default_decrypt.exit.sink.split, %.thread.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.i, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i, %bb.g
  %.1 = phi i32 [ 0, %rsa_padding_check_PKCS1_type_2.exit.thread42.i ], [ 1, %rsa_padding_check_PKCS1_type_2.exit.thread42.thread.i ], [ 0, %bb.g ], [ %.148.i, %.thread.i ], [ %.1.ph, %rsa_default_decrypt.exit.sink.split ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_private_decrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_decrypt(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4)
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 543) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, -2147483648) i32 @RSA_public_decrypt(i64 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.b = tail call i32 @RSA_size(ptr noundef %3) #6
  %i.c = zext i32 %i.b to i64
  %i.d = call i32 @RSA_verify_raw(ptr noundef %3, ptr noundef nonnull %i.a, ptr noundef %2, i64 noundef %i.c, ptr noundef %1, i64 noundef %0, i32 noundef %4) #6
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %i.a, align 8, !tbaa !15   ; 2 uses
  %i.f = icmp ugt i64 %i.e, 2147483647
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @ERR_put_error(i32 noundef 4, i32 noundef 0, i32 noundef 69, ptr noundef nonnull @.str, i32 noundef 557) #6
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = trunc nuw nsw i64 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c
  %.0 = phi i32 [ -1, %bb.c ], [ %i.g, %bb.d ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @RSA_verify_raw(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @rsa_private_transform(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind memory(none) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.isvectorized", i32 1}
!11 = !{!"llvm.loop.unroll.runtime.disable"}
!12 = !{!"branch_weights", i32 4, i32 28}
!13 = !{i64 1432501}
!14 = !{!"long", !4, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"any pointer", !4, i64 0}
!17 = !{!"p1 _ZTS11rsa_meth_st", !16, i64 0}
!18 = !{!"p1 _ZTS9bignum_st", !16, i64 0}
!19 = !{!"p1 _ZTS20rsassa_pss_params_st", !16, i64 0}
!20 = !{!"p1 _ZTS13stack_st_void", !16, i64 0}
!21 = !{!"crypto_ex_data_st", !20, i64 0}
!22 = !{!"p1 _ZTS14bn_mont_ctx_st", !16, i64 0}
!23 = !{!"any p2 pointer", !16, i64 0}
!24 = !{!"p2 _ZTS14bn_blinding_st", !23, i64 0}
!25 = !{!"p1 omnipotent char", !16, i64 0}
!26 = !{!"rsa_st", !17, i64 0, !18, i64 8, !18, i64 16, !18, i64 24, !18, i64 32, !18, i64 40, !18, i64 48, !18, i64 56, !18, i64 64, !19, i64 72, !21, i64 80, !5, i64 88, !5, i64 92, !4, i64 96, !22, i64 152, !22, i64 160, !22, i64 168, !18, i64 176, !18, i64 184, !18, i64 192, !18, i64 200, !14, i64 208, !24, i64 216, !25, i64 224, !14, i64 232, !5, i64 240}
!27 = !{!26, !17, i64 0}
!28 = !{!"rsa_meth_st", !16, i64 0, !16, i64 8, !16, i64 16, !16, i64 24, !16, i64 32, !16, i64 40, !16, i64 48, !16, i64 56, !16, i64 64, !16, i64 72, !5, i64 80}
!29 = distinct !{!29, i1 false, !"LVerDomain"}
!30 = distinct !{!30, !29}
!31 = distinct !{!31, !29}
!32 = distinct !{!32, !9, !10, !11}
!33 = distinct !{!33, !9, !10, !11}
!34 = distinct !{!34, !9, !10, !11}
!35 = distinct !{!35, !9, !10, !11}
!36 = distinct !{!36, !9, !10}
!37 = distinct !{!37, !9, !11, !10}
!38 = !{!30}
!39 = !{!31}
!40 = distinct !{!40, !9, !10, !11}
!41 = distinct !{!41, !9, !10, !11}
!42 = distinct !{!42, i1 false, !"LVerDomain"}
!43 = distinct !{!43, !42}
!44 = distinct !{!44, !42}
!45 = distinct !{!45, !9, !10, !11}
!46 = distinct !{!46, !9, !10, !11}
!47 = distinct !{!47, !9, !11, !10}
!48 = distinct !{!48, !9, !10}
!49 = distinct !{!49, !9}
!50 = !{!43}
!51 = !{!44}
!52 = !{!28, !16, i64 64}
!53 = !{!26, !18, i64 8}
!54 = !{!26, !18, i64 16}
!55 = !{!26, !22, i64 152}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = !{i64 1432741}
!59 = distinct !{!59, !9}
!60 = !{!28, !16, i64 56}
end_hunk_0
