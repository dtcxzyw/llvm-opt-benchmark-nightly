Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_oaep?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex:bb.a
  %indvars.iv.next87 = add nuw nsw i64 %indvars.iv86, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next87, %wide.trip.count89
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph84, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph84, %middle.block118, %vec.epilog.middle.block132, %._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i
  %.068 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 1, %middle.block118 ], [ 1, %vec.epilog.middle.block132 ], [ 1, %.lr.ph84 ]
  %.066 = phi ptr [ null, %bb.j ], [ null, %bb.k ], [ %i.am, %bb.l ], [ %i.am, %._crit_edge ], [ null, %bb.i ], [ %i.am, %middle.block118 ], [ %i.am, %vec.epilog.middle.block132 ], [ %i.am, %.lr.ph84 ]
  %.0 = phi i32 [ 0, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %._crit_edge ], [ 0, %bb.i ], [ %i.ak, %middle.block118 ], [ %i.ak, %vec.epilog.middle.block132 ], [ %i.ak, %.lr.ph84 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %i.cb = sext i32 %.0 to i64
  call void @CRYPTO_clear_free(ptr noundef %.066, i64 noundef %i.cb, ptr noundef nonnull @.str, i32 noundef 147) #6
  br label %bb.m

bb.m:                                             ; preds = %.loopexit, %bb.h, %bb.f, %bb.d
  %.071 = phi i32 [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.h ], [ %.068, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.071
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @EVP_sha1() local_unnamed_addr #2

declare i32 @EVP_MD_get_size(ptr noundef) local_unnamed_addr #2

declare void @ERR_new() local_unnamed_addr #2

declare void @ERR_set_debug(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @ERR_set_error(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @EVP_Digest(ptr noundef, i64 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @RAND_bytes_ex(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

declare noalias ptr @CRYPTO_malloc(i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @PKCS1_MGF1(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x i8], align 1                 ; 7 uses
  %i.b = alloca [64 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.c = tail call ptr @EVP_MD_CTX_new() #6       ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @EVP_MD_get_size(ptr noundef %4) #6 ; 2 uses
  %i.f = icmp slt i32 %i.e, 1
  br i1 %i.f, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  %i.k = zext nneg i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.i
  %.03143 = phi i64 [ 0, %.lr.ph ], [ %i.v, %bb.i ] ; 4 uses
  %.03242 = phi i64 [ 0, %.lr.ph ], [ %i.ab, %bb.i ] ; 5 uses
  %i.l = lshr i64 %.03242, 24
  %i.m = trunc i64 %i.l to i8
  store i8 %i.m, ptr %i.a, align 1, !tbaa !8
  %i.n = lshr i64 %.03242, 16
  %i.o = trunc i64 %i.n to i8
  store i8 %i.o, ptr %i.h, align 1, !tbaa !8
  %i.p = lshr i64 %.03242, 8
  %i.q = trunc i64 %i.p to i8
  store i8 %i.q, ptr %i.i, align 1, !tbaa !8
  %i.r = trunc i64 %.03242 to i8
  store i8 %i.r, ptr %i.j, align 1, !tbaa !8
  %i.s = call i32 @EVP_DigestInit_ex(ptr noundef nonnull %i.c, ptr noundef %4, ptr noundef null) #6
  %.not = icmp eq i32 %i.s, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef %2, i64 noundef %3) #6
  %.not37 = icmp eq i32 %i.t, 0
  br i1 %.not37, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = call i32 @EVP_DigestUpdate(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i64 noundef 4) #6
  %.not38 = icmp eq i32 %i.u, 0
  br i1 %.not38, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = add nuw nsw i64 %.03143, %i.k            ; 3 uses
  %.not39 = icmp sgt i64 %i.v, %1
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %.03143
  %i.x = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef %i.w, ptr noundef null) #6
  %.not41 = icmp eq i32 %i.x, 0
  br i1 %.not41, label %.loopexit, label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.y = call i32 @EVP_DigestFinal_ex(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b, ptr noundef null) #6
  %.not40 = icmp eq i32 %i.y, 0
  br i1 %.not40, label %.loopexit, label %.thread

.thread:                                          ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 %.03143
  %i.aa = sub nsw i64 %1, %.03143
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.z, ptr nonnull align 16 %i.b, i64 %i.aa, i1 false)
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ab = add nuw nsw i64 %.03242, 1
  %i.ac = icmp slt i64 %i.v, %1
  br i1 %i.ac, label %bb.c, label %.loopexit, !llvm.loop !19

.loopexit:                                        ; preds = %bb.e, %bb.d, %bb.c, %bb.g, %bb.i, %bb.h, %.thread, %.preheader, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ -1, %bb.b ], [ 0, %.preheader ], [ 0, %.thread ], [ -1, %bb.h ], [ -1, %bb.d ], [ -1, %bb.e ], [ -1, %bb.g ], [ -1, %bb.c ], [ 0, %bb.i ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef 64) #6
  call void @EVP_MD_CTX_free(ptr noundef %i.c) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @CRYPTO_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @RSA_padding_add_PKCS1_OAEP_mgf1(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex(ptr noundef null, ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, ptr noundef %7)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr noundef %0, i32 noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef null, ptr noundef null)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define i32 @RSA_padding_check_PKCS1_OAEP_mgf1(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 8 uses
  %i.b = alloca [64 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  %i.c = icmp eq ptr %7, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @EVP_sha1() #6
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0149 = phi ptr [ %i.d, %bb.b ], [ %7, %bb.a ] ; 3 uses
  %i.e = icmp eq ptr %8, null
  %spec.select = select i1 %i.e, ptr %.0149, ptr %8 ; 2 uses
  %i.f = tail call i32 @EVP_MD_get_size(ptr noundef %.0149) #6 ; 10 uses
  %i.g = icmp slt i32 %1, 1
  %i.h = icmp slt i32 %3, 1
  %or.cond = or i1 %i.g, %i.h
  %i.i = icmp slt i32 %i.f, 1
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.i
  br i1 %or.cond3, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp slt i32 %4, %3
  br i1 %i.j, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = shl nuw nsw i32 %i.f, 1
  %i.l = add nuw nsw i32 %i.k, 2
  %i.m = icmp samesign ult i32 %4, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ERR_new() #6
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 222, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_OAEP_mgf1) #6
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, ptr noundef null) #6
  br label %bb.l

bb.g:                                             ; preds = %bb.e
  %i.n = xor i32 %i.f, -1                         ; 2 uses
  %i.o = add nsw i32 %4, %i.n                     ; 10 uses
  %9 = zext i32 %i.o to i64                       ; 10 uses
  %i.p = tail call noalias ptr @CRYPTO_malloc(i64 noundef %9, ptr noundef nonnull @.str, i32 noundef 227) #6 ; 17 uses
  %i.q = icmp eq ptr %i.p, null
  %.pre229 = zext nneg i32 %4 to i64              ; 3 uses
  br i1 %i.q, label %._crit_edge228, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.pre229, ptr noundef nonnull @.str, i32 noundef 231) #6 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %._crit_edge228, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.pre229 ; 2 uses
  %i.u = zext nneg i32 %3 to i64
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 %i.u ; 2 uses
  %xtraiter = and i32 %4, 1
  %i.w = icmp eq i32 %4, 1
  br i1 %i.w, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0139179 = phi ptr [ %i.t, %.lr.ph.preheader.new ], [ %i.ai, %.lr.ph ] ; 3 uses
  %.0150177 = phi ptr [ %i.v, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ]
  %.0151176 = phi i32 [ %3, %.lr.ph.preheader.new ], [ %i.ae, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.x = icmp ne i32 %.0151176, 0                 ; 3 uses
  %.neg172 = sext i1 %i.x to i32
  %i.y = add i32 %.0151176, %.neg172              ; 2 uses
  %.neg173 = sext i1 %i.x to i64
  %i.z = getelementptr inbounds i8, ptr %.0150177, i64 %.neg173 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !8
  %i.ab = select i1 %i.x, i8 %i.aa, i8 0
  %i.ac = getelementptr inbounds i8, ptr %.0139179, i64 -1
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !8
  %i.ad = icmp ne i32 %i.y, 0                     ; 3 uses
  %.neg172.1 = sext i1 %i.ad to i32
  %i.ae = add i32 %i.y, %.neg172.1                ; 2 uses
  %.neg173.1 = sext i1 %i.ad to i64
  %i.af = getelementptr inbounds i8, ptr %i.z, i64 %.neg173.1 ; 3 uses
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !8
  %i.ah = select i1 %i.ad, i8 %i.ag, i8 0         ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %.0139179, i64 -2 ; 4 uses
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !20

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.aj = getelementptr inbounds i8, ptr %.0139179, i64 -1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0139179.epil.init = phi ptr [ %i.t, %.lr.ph.preheader ], [ %i.ai, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0150177.epil.init = phi ptr [ %i.v, %.lr.ph.preheader ], [ %i.af, %._crit_edge.unr-lcssa ]
  %.0151176.epil.init = phi i32 [ %3, %.lr.ph.preheader ], [ %i.ae, %._crit_edge.unr-lcssa ]
  %lcmp.mod338 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod338)
  %i.ak = icmp ne i32 %.0151176.epil.init, 0      ; 2 uses
  %.neg173.epil = sext i1 %i.ak to i64
  %i.al = getelementptr inbounds i8, ptr %.0150177.epil.init, i64 %.neg173.epil
  %i.am = load i8, ptr %i.al, align 1, !tbaa !8
  %i.an = select i1 %i.ak, i8 %i.am, i8 0         ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %.0139179.epil.init, i64 -1 ; 2 uses
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.0139179.lcssa = phi ptr [ %i.aj, %._crit_edge.unr-lcssa ], [ %.0139179.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.lcssa334 = phi i8 [ %i.ah, %._crit_edge.unr-lcssa ], [ %i.an, %.lr.ph.epil.preheader ]
  %.lcssa333 = phi ptr [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil.preheader ] ; 4 uses
  %i.ap = icmp eq i8 %.lcssa334, 0                ; 2 uses
  %.neg.i.i165 = sext i1 %i.ap to i32             ; 3 uses
  %i.aq = zext nneg i32 %i.f to i64               ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %i.aq ; 4 uses
  %i.as = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.aq, ptr noundef nonnull %i.ar, i64 noundef %9, ptr noundef %spec.select)
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %iter.check, label %._crit_edge228

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph181.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check253 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check253, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.at = and i64 %i.aq, 28
  %n.vec = and i64 %i.aq, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %index ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %wide.load = load <16 x i8>, ptr %i.au, align 1, !tbaa !8
  %wide.load254.a = load <16 x i8>, ptr %i.av, align 1, !tbaa !8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  %wide.load255.a = load <16 x i8>, ptr %i.aw, align 16, !tbaa !8
  %wide.load256 = load <16 x i8>, ptr %i.ax, align 16, !tbaa !8
  %i.ay = xor <16 x i8> %wide.load255.a, %wide.load
  %i.az = xor <16 x i8> %wide.load256, %wide.load254.a
  store <16 x i8> %i.ay, ptr %i.aw, align 16, !tbaa !8
  store <16 x i8> %i.az, ptr %i.ax, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ba = icmp eq i64 %index.next, %n.vec
  br i1 %i.ba, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aq
  br i1 %cmp.n, label %._crit_edge182, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.at, 0
  br i1 %min.epilog.iters.check, label %.lr.ph181.preheader, label %vec.epilog.ph, !prof !13

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec257 = and i64 %i.aq, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index258 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next261, %vec.epilog.vector.body ] ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %index258
  %wide.load259.a = load <4 x i8>, ptr %i.bb, align 1, !tbaa !8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 %index258 ; 2 uses
  %wide.load260 = load <4 x i8>, ptr %i.bc, align 4, !tbaa !8
  %i.bd = xor <4 x i8> %wide.load260, %wide.load259.a
  store <4 x i8> %i.bd, ptr %i.bc, align 4, !tbaa !8
  %index.next261 = add nuw i64 %index258, 4       ; 2 uses
  %i.be = icmp eq i64 %index.next261, %n.vec257
  br i1 %i.be, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n262 = icmp eq i64 %n.vec257, %i.aq
  br i1 %cmp.n262, label %._crit_edge182, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec257, %vec.epilog.middle.block ]
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph181 ], [ %indvars.iv.ph, %.lr.ph181.preheader ] ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %indvars.iv
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !8
  %i.bj = xor i8 %i.bi, %i.bg
  store i8 %i.bj, ptr %i.bh, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next, %i.aq
  br i1 %exitcond211.not, label %._crit_edge182, label %.lr.ph181, !llvm.loop !23

._crit_edge182:                                   ; preds = %.lr.ph181, %vec.epilog.middle.block, %middle.block
  %i.bk = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.p, i64 noundef %9, ptr noundef nonnull %i.a, i64 noundef %i.aq, ptr noundef %spec.select)
  %.not163 = icmp eq i32 %i.bk, 0
  br i1 %.not163, label %.preheader174, label %._crit_edge228

.preheader174:                                    ; preds = %._crit_edge182
  %i.bl = icmp sgt i32 %i.o, 0
  br i1 %i.bl, label %iter.check278, label %._crit_edge185

iter.check278:                                    ; preds = %.preheader174
  %min.iters.check263 = icmp ult i32 %i.o, 4
  br i1 %min.iters.check263, label %.lr.ph184.preheader, label %vector.main.loop.iter.check264

vector.main.loop.iter.check264:                   ; preds = %iter.check278
  %min.iters.check265 = icmp ult i32 %i.o, 32
  br i1 %min.iters.check265, label %vec.epilog.ph282, label %vector.ph266

vector.ph266:                                     ; preds = %vector.main.loop.iter.check264
  %i.bm = and i64 %9, 28
  %n.vec267 = and i64 %9, 2147483616              ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.body268, %vector.ph266
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next274, %vector.body268 ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index269 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %wide.load270.a = load <16 x i8>, ptr %i.bn, align 1, !tbaa !8
  %wide.load271.a = load <16 x i8>, ptr %i.bo, align 1, !tbaa !8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 %index269 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16 ; 2 uses
  %wide.load272.a = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %wide.load273 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !8
  %i.br = xor <16 x i8> %wide.load272.a, %wide.load270.a
  %i.bs = xor <16 x i8> %wide.load273, %wide.load271.a
  store <16 x i8> %i.br, ptr %i.bp, align 1, !tbaa !8
  store <16 x i8> %i.bs, ptr %i.bq, align 1, !tbaa !8
  %index.next274 = add nuw i64 %index269, 32      ; 2 uses
  %i.bt = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.bt, label %middle.block275, label %vector.body268, !llvm.loop !24

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %n.vec267, %9
  br i1 %cmp.n276, label %._crit_edge185, label %vec.epilog.iter.check280

vec.epilog.iter.check280:                         ; preds = %middle.block275
  %min.epilog.iters.check281 = icmp eq i64 %i.bm, 0
  br i1 %min.epilog.iters.check281, label %.lr.ph184.preheader, label %vec.epilog.ph282, !prof !13

vec.epilog.ph282:                                 ; preds = %vector.main.loop.iter.check264, %vec.epilog.iter.check280
  %vec.epilog.resume.val277 = phi i64 [ %n.vec267, %vec.epilog.iter.check280 ], [ 0, %vector.main.loop.iter.check264 ]
  %n.vec283 = and i64 %9, 2147483644              ; 3 uses
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph282
  %index285 = phi i64 [ %vec.epilog.resume.val277, %vec.epilog.ph282 ], [ %index.next288, %vec.epilog.vector.body284 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index285
  %wide.load286.a = load <4 x i8>, ptr %i.bu, align 1, !tbaa !8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.p, i64 %index285 ; 2 uses
  %wide.load287 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !8
  %i.bw = xor <4 x i8> %wide.load287, %wide.load286.a
  store <4 x i8> %i.bw, ptr %i.bv, align 1, !tbaa !8
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.bx, label %vec.epilog.middle.block289, label %vec.epilog.vector.body284, !llvm.loop !25

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body284
  %cmp.n290 = icmp eq i64 %n.vec283, %9
  br i1 %cmp.n290, label %._crit_edge185, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %iter.check278, %vec.epilog.iter.check280, %vec.epilog.middle.block289
  %indvars.iv212.ph = phi i64 [ 0, %iter.check278 ], [ %n.vec267, %vec.epilog.iter.check280 ], [ %n.vec283, %vec.epilog.middle.block289 ]
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph184 ], [ %indvars.iv212.ph, %.lr.ph184.preheader ] ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv212
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv212 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !8
  %i.cc = xor i8 %i.cb, %i.bz
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !8
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %9
  br i1 %exitcond216.not, label %._crit_edge185, label %.lr.ph184, !llvm.loop !26

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block275, %vec.epilog.middle.block289, %.preheader174
  %i.cd = sext i32 %6 to i64
  %i.ce = call i32 @EVP_Digest(ptr noundef %5, i64 noundef %i.cd, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %.0149, ptr noundef null) #6
  %.not164 = icmp eq i32 %i.ce, 0
  br i1 %.not164, label %._crit_edge228, label %bb.i

bb.i:                                             ; preds = %._crit_edge185
  %i.cf = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.p, ptr noundef nonnull %i.b, i64 noundef %i.aq) #6
  %i.cg = icmp eq i32 %i.cf, 0
  %i.ch = and i1 %i.ap, %i.cg
  %i.ci = sext i1 %i.ch to i32                    ; 2 uses
  %i.cj = icmp slt i32 %i.f, %i.o
  br i1 %i.cj, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %bb.i, %.lr.ph191
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph191 ], [ %i.aq, %bb.i ] ; 3 uses
  %.0140189 = phi i32 [ %i.cx, %.lr.ph191 ], [ 0, %bb.i ] ; 2 uses
  %.0141188 = phi i32 [ %i.cz, %.lr.ph191 ], [ %i.ci, %bb.i ]
  %.0144187 = phi i32 [ %i.cw, %.lr.ph191 ], [ 0, %bb.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv217
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !8   ; 2 uses
  %i.cm = icmp eq i8 %i.cl, 1                     ; 2 uses
  %i.cn = icmp eq i8 %i.cl, 0
  %i.co = xor i32 %.0140189, -1
  %i.cp = select i1 %i.cm, i32 %i.co, i32 0       ; 2 uses
  %i.cq = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cp) #7, !srcloc !27
  %i.cr = trunc nuw i64 %indvars.iv217 to i32
  %i.cs = and i32 %i.cq, %i.cr
  %i.ct = xor i32 %i.cp, -1
  %i.cu = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ct) #7, !srcloc !27
  %i.cv = and i32 %i.cu, %.0144187
  %i.cw = or i32 %i.cv, %i.cs                     ; 2 uses
  %i.cx = select i1 %i.cm, i32 -1, i32 %.0140189  ; 3 uses
  %i.cy = select i1 %i.cn, i32 -1, i32 %i.cx
  %i.cz = and i32 %i.cy, %.0141188                ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.da = trunc nuw i64 %indvars.iv.next218 to i32
  %i.db = icmp sgt i32 %i.o, %i.da
  br i1 %i.db, label %.lr.ph191, label %._crit_edge192, !llvm.loop !28

._crit_edge192:                                   ; preds = %.lr.ph191, %bb.i
  %.0144.lcssa = phi i32 [ 0, %bb.i ], [ %i.cw, %.lr.ph191 ] ; 2 uses
  %.0141.lcssa = phi i32 [ %i.ci, %bb.i ], [ %i.cz, %.lr.ph191 ]
  %.0140.lcssa = phi i32 [ 0, %bb.i ], [ %i.cx, %.lr.ph191 ]
  %.neg = xor i32 %.0144.lcssa, -1
  %i.dc = add i32 %i.o, %.neg                     ; 5 uses
  %i.dd = sub i32 %1, %i.dc
  %i.de = or i32 %i.dd, %i.dc
  %isnotneg.i.inv = icmp slt i32 %i.de, 0
  %i.df = select i1 %isnotneg.i.inv, i32 0, i32 %.0140.lcssa
  %i.dg = and i32 %i.df, %.0141.lcssa             ; 3 uses
  %i.dh = add i32 %i.o, %i.n                      ; 4 uses
  %i.di = sub i32 %i.dh, %1
  %i.dj = sub i32 %i.f, %i.o
  %i.dk = and i32 %i.di, %i.dj
  %.neg.i.i168 = ashr i32 %i.dk, 31               ; 2 uses
  %i.dl = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.neg.i.i168) #7, !srcloc !27
  %i.dm = and i32 %i.dl, %i.dh
  %i.dn = xor i32 %.neg.i.i168, -1
  %i.do = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.dn) #7, !srcloc !27
  %i.dp = and i32 %i.do, %1
  %i.dq = or i32 %i.dp, %i.dm                     ; 2 uses
  %i.dr = icmp sgt i32 %i.dh, 1
  br i1 %i.dr, label %.lr.ph203, label %.preheader

.lr.ph203:                                        ; preds = %._crit_edge192
  %i.ds = sub i32 %.0144.lcssa, %i.f
  %.4196 = add nuw nsw i32 %i.f, 1                ; 2 uses
  %i.dt = zext nneg i32 %.4196 to i64             ; 10 uses
  %scevgep = getelementptr i8, ptr %i.p, i64 %i.dt
  %i.du = add nuw nsw i64 %i.dt, 1                ; 2 uses
  %scevgep293.a = getelementptr i8, ptr %i.p, i64 %i.dt
  br label %bb.j

.preheader:                                       ; preds = %._crit_edge200, %._crit_edge192
  %i.dv = icmp sgt i32 %i.dq, 0
  br i1 %i.dv, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader
  %i.dw = and i32 %i.dg, 255
  %wide.trip.count226 = zext nneg i32 %i.dq to i64
  %invariant.gep247 = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.aq
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph203, %._crit_edge200
  %.0143201 = phi i32 [ 1, %.lr.ph203 ], [ %i.fp, %._crit_edge200 ] ; 4 uses
  %i.dx = sub nsw i32 %i.o, %.0143201             ; 2 uses
  %i.dy = icmp slt i32 %.4196, %i.dx
  br i1 %i.dy, label %iter.check313, label %._crit_edge200

iter.check313:                                    ; preds = %bb.j
  %i.dz = and i32 %.0143201, %i.ds
  %.not171 = icmp eq i32 %i.dz, 0
  %i.ea = select i1 %.not171, i32 0, i32 255      ; 2 uses
  %i.eb = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ea) #7, !srcloc !27 ; 3 uses
  %i.ec = xor i32 %i.ea, -1
  %i.ed = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ec) #7, !srcloc !27 ; 3 uses
  %i.ee = sext i32 %.0143201 to i64               ; 3 uses
  %i.ef = zext nneg i32 %i.dx to i64              ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.p, i64 %i.ee ; 3 uses
  %umax296 = call i64 @llvm.umax.i64(i64 %i.du, i64 %i.ef)
  %i.eg = sub nsw i64 %umax296, %i.dt             ; 7 uses
  %min.iters.check297 = icmp ult i64 %i.eg, 4
  br i1 %min.iters.check297, label %vec.epilog.scalar.ph314.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check313
  %umax = call i64 @llvm.umax.i64(i64 %i.du, i64 %i.ef) ; 2 uses
  %scevgep292 = getelementptr i8, ptr %i.p, i64 %umax
  %scevgep294.a = getelementptr i8, ptr %scevgep293.a, i64 %i.ee
  %i.eh = getelementptr i8, ptr %i.p, i64 %umax
  %scevgep295 = getelementptr i8, ptr %i.eh, i64 %i.ee
  %bound0 = icmp ult ptr %scevgep, %scevgep295
  %bound1 = icmp ult ptr %scevgep294.a, %scevgep292
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph314.preheader, label %vector.main.loop.iter.check298

vector.main.loop.iter.check298:                   ; preds = %vector.memcheck
  %min.iters.check299 = icmp ult i64 %i.eg, 16
  br i1 %min.iters.check299, label %vec.epilog.ph317, label %vector.ph300

vector.ph300:                                     ; preds = %vector.main.loop.iter.check298
  %i.ei = and i64 %i.eg, 12
  %n.vec301 = and i64 %i.eg, -16                  ; 4 uses
  %i.ej = add nsw i64 %n.vec301, %i.dt
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert302 = insertelement <16 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat303 = shufflevector <16 x i32> %broadcast.splatinsert302, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body304

vector.body304:                                   ; preds = %vector.body304, %vector.ph300
  %index305 = phi i64 [ 0, %vector.ph300 ], [ %index.next308, %vector.body304 ] ; 2 uses
  %i.ek = add nuw i64 %index305, %i.dt            ; 2 uses
  %i.el = getelementptr i8, ptr %invariant.gep, i64 %i.ek
  %wide.load306.a = load <16 x i8>, ptr %i.el, align 1, !tbaa !8, !alias.scope !29
  %i.em = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ek ; 2 uses
  %wide.load307 = load <16 x i8>, ptr %i.em, align 1, !tbaa !8, !alias.scope !32, !noalias !29
  %i.en = zext <16 x i8> %wide.load306.a to <16 x i32>
  %i.eo = zext <16 x i8> %wide.load307 to <16 x i32>
  %i.ep = and <16 x i32> %broadcast.splat, %i.en
  %i.eq = and <16 x i32> %broadcast.splat303, %i.eo
  %i.er = or <16 x i32> %i.eq, %i.ep
  %i.es = trunc nuw <16 x i32> %i.er to <16 x i8>
  store <16 x i8> %i.es, ptr %i.em, align 1, !tbaa !8, !alias.scope !32, !noalias !29
  %index.next308 = add nuw i64 %index305, 16      ; 2 uses
  %i.et = icmp eq i64 %index.next308, %n.vec301
  br i1 %i.et, label %middle.block309, label %vector.body304, !llvm.loop !34

middle.block309:                                  ; preds = %vector.body304
  %cmp.n310 = icmp eq i64 %i.eg, %n.vec301
  br i1 %cmp.n310, label %._crit_edge200, label %vec.epilog.iter.check315

vec.epilog.iter.check315:                         ; preds = %middle.block309
  %min.epilog.iters.check316 = icmp eq i64 %i.ei, 0
  br i1 %min.epilog.iters.check316, label %vec.epilog.scalar.ph314.preheader, label %vec.epilog.ph317, !prof !35

vec.epilog.ph317:                                 ; preds = %vector.main.loop.iter.check298, %vec.epilog.iter.check315
  %vec.epilog.resume.val311 = phi i64 [ %n.vec301, %vec.epilog.iter.check315 ], [ 0, %vector.main.loop.iter.check298 ]
  %n.vec318 = and i64 %i.eg, -4                   ; 3 uses
  %i.eu = add nsw i64 %n.vec318, %i.dt
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.eb, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert321 = insertelement <4 x i32> poison, i32 %i.ed, i64 0
  %broadcast.splat322 = shufflevector <4 x i32> %broadcast.splatinsert321, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body323

vec.epilog.vector.body323:                        ; preds = %vec.epilog.vector.body323, %vec.epilog.ph317
  %index324 = phi i64 [ %vec.epilog.resume.val311, %vec.epilog.ph317 ], [ %index.next327, %vec.epilog.vector.body323 ] ; 2 uses
  %i.ev = add nuw i64 %index324, %i.dt            ; 2 uses
  %i.ew = getelementptr i8, ptr %invariant.gep, i64 %i.ev
  %wide.load325.a = load <4 x i8>, ptr %i.ew, align 1, !tbaa !8, !alias.scope !29
  %i.ex = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.ev ; 2 uses
  %wide.load326 = load <4 x i8>, ptr %i.ex, align 1, !tbaa !8, !alias.scope !32, !noalias !29
  %i.ey = zext <4 x i8> %wide.load325.a to <4 x i32>
  %i.ez = zext <4 x i8> %wide.load326 to <4 x i32>
  %i.fa = and <4 x i32> %broadcast.splat320, %i.ey
  %i.fb = and <4 x i32> %broadcast.splat322, %i.ez
  %i.fc = or <4 x i32> %i.fb, %i.fa
  %i.fd = trunc nuw <4 x i32> %i.fc to <4 x i8>
  store <4 x i8> %i.fd, ptr %i.ex, align 1, !tbaa !8, !alias.scope !32, !noalias !29
  %index.next327 = add nuw i64 %index324, 4       ; 2 uses
  %i.fe = icmp eq i64 %index.next327, %n.vec318
  br i1 %i.fe, label %vec.epilog.middle.block328, label %vec.epilog.vector.body323, !llvm.loop !36

vec.epilog.middle.block328:                       ; preds = %vec.epilog.vector.body323
  %cmp.n329 = icmp eq i64 %i.eg, %n.vec318
  br i1 %cmp.n329, label %._crit_edge200, label %vec.epilog.scalar.ph314.preheader

vec.epilog.scalar.ph314.preheader:                ; preds = %vector.memcheck, %iter.check313, %vec.epilog.iter.check315, %vec.epilog.middle.block328
  %indvars.iv220.ph = phi i64 [ %i.dt, %iter.check313 ], [ %i.dt, %vector.memcheck ], [ %i.ej, %vec.epilog.iter.check315 ], [ %i.eu, %vec.epilog.middle.block328 ]
  br label %vec.epilog.scalar.ph314

vec.epilog.scalar.ph314:                          ; preds = %vec.epilog.scalar.ph314.preheader, %vec.epilog.scalar.ph314
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %vec.epilog.scalar.ph314 ], [ %indvars.iv220.ph, %vec.epilog.scalar.ph314.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv220
  %i.ff = load i8, ptr %gep, align 1, !tbaa !8
  %i.fg = getelementptr inbounds nuw i8, ptr %i.p, i64 %indvars.iv220 ; 2 uses
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !8
end_hunk_0
