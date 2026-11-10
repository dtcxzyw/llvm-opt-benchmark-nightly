Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openssl/original/rsa_oaep?download=true
inline.NumInlined: 22
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@ossl_rsa_padding_add_PKCS1_OAEP_mgf1_ex:bb.a
  br i1 %exitcond90.not, label %.loopexit, label %.lr.ph84, !llvm.loop !18

.loopexit:                                        ; preds = %.lr.ph84, %middle.block119, %vec.epilog.middle.block133, %._crit_edge, %bb.l, %bb.k, %bb.j, %bb.i
  %.068 = phi i32 [ 0, %bb.j ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %._crit_edge ], [ 0, %bb.i ], [ 1, %middle.block119 ], [ 1, %vec.epilog.middle.block133 ], [ 1, %.lr.ph84 ]
  %.066 = phi ptr [ null, %bb.j ], [ null, %bb.k ], [ %i.am, %bb.l ], [ %i.am, %._crit_edge ], [ null, %bb.i ], [ %i.am, %middle.block119 ], [ %i.am, %vec.epilog.middle.block133 ], [ %i.am, %.lr.ph84 ]
  %.0 = phi i32 [ 0, %bb.j ], [ %i.ak, %bb.k ], [ %i.ak, %bb.l ], [ %i.ak, %._crit_edge ], [ 0, %bb.i ], [ %i.ak, %middle.block119 ], [ %i.ak, %vec.epilog.middle.block133 ], [ %i.ak, %.lr.ph84 ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  %i.ca = zext nneg i32 %.0 to i64
  call void @CRYPTO_clear_free(ptr noundef %.066, i64 noundef %i.ca, ptr noundef nonnull @.str, i32 noundef 147) #6
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
  %i.o = add nsw i32 %4, %i.n                     ; 11 uses
  %i.p = sext i32 %i.o to i64                     ; 4 uses
  %i.q = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 227) #6 ; 16 uses
  %i.r = icmp eq ptr %i.q, null
  %.pre229 = zext nneg i32 %4 to i64              ; 3 uses
  br i1 %i.r, label %._crit_edge228, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call noalias ptr @CRYPTO_malloc(i64 noundef %.pre229, ptr noundef nonnull @.str, i32 noundef 231) #6 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %._crit_edge228, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.pre229 ; 2 uses
  %i.v = zext nneg i32 %3 to i64
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.v ; 2 uses
  %xtraiter = and i32 %4, 1
  %i.x = icmp eq i32 %4, 1
  br i1 %i.x, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i32 %4, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.0139179 = phi ptr [ %i.u, %.lr.ph.preheader.new ], [ %i.aj, %.lr.ph ] ; 3 uses
  %.0150177 = phi ptr [ %i.w, %.lr.ph.preheader.new ], [ %i.ag, %.lr.ph ]
  %.0151176 = phi i32 [ %3, %.lr.ph.preheader.new ], [ %i.af, %.lr.ph ] ; 2 uses
  %niter = phi i32 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.y = icmp ne i32 %.0151176, 0                 ; 3 uses
  %.neg172 = sext i1 %i.y to i32
  %i.z = add i32 %.0151176, %.neg172              ; 2 uses
  %.neg173 = sext i1 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %.0150177, i64 %.neg173 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !8
  %i.ac = select i1 %i.y, i8 %i.ab, i8 0
  %i.ad = getelementptr inbounds i8, ptr %.0139179, i64 -1
  store i8 %i.ac, ptr %i.ad, align 1, !tbaa !8
  %i.ae = icmp ne i32 %i.z, 0                     ; 3 uses
  %.neg172.1 = sext i1 %i.ae to i32
  %i.af = add i32 %i.z, %.neg172.1                ; 2 uses
  %.neg173.1 = sext i1 %i.ae to i64
  %i.ag = getelementptr inbounds i8, ptr %i.aa, i64 %.neg173.1 ; 3 uses
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !8
  %i.ai = select i1 %i.ae, i8 %i.ah, i8 0         ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %.0139179, i64 -2 ; 4 uses
  store i8 %i.ai, ptr %i.aj, align 1, !tbaa !8
  %niter.next.1 = add i32 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i32 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph, !llvm.loop !20

._crit_edge.unr-lcssa:                            ; preds = %.lr.ph
  %i.ak = getelementptr inbounds i8, ptr %.0139179, i64 -1
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.unr-lcssa, %.lr.ph.preheader
  %.0139179.epil.init = phi ptr [ %i.u, %.lr.ph.preheader ], [ %i.aj, %._crit_edge.unr-lcssa ] ; 2 uses
  %.0150177.epil.init = phi ptr [ %i.w, %.lr.ph.preheader ], [ %i.ag, %._crit_edge.unr-lcssa ]
  %.0151176.epil.init = phi i32 [ %3, %.lr.ph.preheader ], [ %i.af, %._crit_edge.unr-lcssa ]
  %lcmp.mod336 = trunc i32 %4 to i1
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.al = icmp ne i32 %.0151176.epil.init, 0      ; 2 uses
  %.neg173.epil = sext i1 %i.al to i64
  %i.am = getelementptr inbounds i8, ptr %.0150177.epil.init, i64 %.neg173.epil
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %i.ao = select i1 %i.al, i8 %i.an, i8 0         ; 2 uses
  %i.ap = getelementptr inbounds i8, ptr %.0139179.epil.init, i64 -1 ; 2 uses
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.unr-lcssa, %.lr.ph.epil.preheader
  %.0139179.lcssa = phi ptr [ %i.ak, %._crit_edge.unr-lcssa ], [ %.0139179.epil.init, %.lr.ph.epil.preheader ] ; 4 uses
  %.lcssa332 = phi i8 [ %i.ai, %._crit_edge.unr-lcssa ], [ %i.ao, %.lr.ph.epil.preheader ]
  %.lcssa331 = phi ptr [ %i.aj, %._crit_edge.unr-lcssa ], [ %i.ap, %.lr.ph.epil.preheader ] ; 4 uses
  %i.aq = icmp eq i8 %.lcssa332, 0                ; 2 uses
  %.neg.i.i165 = sext i1 %i.aq to i32             ; 3 uses
  %i.ar = zext nneg i32 %i.f to i64               ; 12 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %i.ar ; 4 uses
  %i.at = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.a, i64 noundef %i.ar, ptr noundef nonnull %i.as, i64 noundef %i.p, ptr noundef %spec.select)
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %iter.check, label %._crit_edge228

iter.check:                                       ; preds = %._crit_edge
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph181.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check253 = icmp ult i32 %i.f, 32
  br i1 %min.iters.check253, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %i.ar, 28
  %n.vec = and i64 %i.ar, 2147483616              ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !8
  %wide.load254 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 %index ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %wide.load255 = load <16 x i8>, ptr %i.ax, align 16, !tbaa !8
  %wide.load256 = load <16 x i8>, ptr %i.ay, align 16, !tbaa !8
  %i.az = xor <16 x i8> %wide.load255, %wide.load
  %i.ba = xor <16 x i8> %wide.load256, %wide.load254
  store <16 x i8> %i.az, ptr %i.ax, align 16, !tbaa !8
  store <16 x i8> %i.ba, ptr %i.ay, align 16, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bb = icmp eq i64 %index.next, %n.vec
  br i1 %i.bb, label %middle.block, label %vector.body, !llvm.loop !21

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.ar
  br i1 %cmp.n, label %._crit_edge182, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph181.preheader, label %vec.epilog.ph, !prof !12

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec257 = and i64 %i.ar, 2147483644           ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index258 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next261, %vec.epilog.vector.body ] ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %index258
  %wide.load259 = load <4 x i8>, ptr %i.bc, align 1, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 %index258 ; 2 uses
  %wide.load260 = load <4 x i8>, ptr %i.bd, align 4, !tbaa !8
  %i.be = xor <4 x i8> %wide.load260, %wide.load259
  store <4 x i8> %i.be, ptr %i.bd, align 4, !tbaa !8
  %index.next261 = add nuw i64 %index258, 4       ; 2 uses
  %i.bf = icmp eq i64 %index.next261, %n.vec257
  br i1 %i.bf, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !22

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n262 = icmp eq i64 %n.vec257, %i.ar
  br i1 %cmp.n262, label %._crit_edge182, label %.lr.ph181.preheader

.lr.ph181.preheader:                              ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec257, %vec.epilog.middle.block ]
  br label %.lr.ph181

.lr.ph181:                                        ; preds = %.lr.ph181.preheader, %.lr.ph181
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph181 ], [ %indvars.iv.ph, %.lr.ph181.preheader ] ; 3 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0139179.lcssa, i64 %indvars.iv
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !8
  %i.bk = xor i8 %i.bj, %i.bh
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond211.not = icmp eq i64 %indvars.iv.next, %i.ar
  br i1 %exitcond211.not, label %._crit_edge182, label %.lr.ph181, !llvm.loop !23

._crit_edge182:                                   ; preds = %.lr.ph181, %vec.epilog.middle.block, %middle.block
  %i.bl = call i32 @PKCS1_MGF1(ptr noundef nonnull %i.q, i64 noundef %i.p, ptr noundef nonnull %i.a, i64 noundef %i.ar, ptr noundef %spec.select)
  %.not163 = icmp eq i32 %i.bl, 0
  br i1 %.not163, label %.preheader174, label %._crit_edge228

.preheader174:                                    ; preds = %._crit_edge182
  %i.bm = icmp sgt i32 %i.o, 0
  br i1 %i.bm, label %iter.check277, label %._crit_edge185

iter.check277:                                    ; preds = %.preheader174
  %wide.trip.count215 = zext nneg i32 %i.o to i64 ; 6 uses
  %min.iters.check263 = icmp ult i32 %i.o, 4
  br i1 %min.iters.check263, label %.lr.ph184.preheader, label %vector.main.loop.iter.check264

vector.main.loop.iter.check264:                   ; preds = %iter.check277
  %min.iters.check265 = icmp ult i32 %i.o, 32
  br i1 %min.iters.check265, label %vec.epilog.ph281, label %vector.ph266

vector.ph266:                                     ; preds = %vector.main.loop.iter.check264
  %i.bn = and i64 %wide.trip.count215, 28
  %n.vec267 = and i64 %wide.trip.count215, 2147483616 ; 4 uses
  br label %vector.body268

vector.body268:                                   ; preds = %vector.ph266, %vector.body268
  %index269 = phi i64 [ 0, %vector.ph266 ], [ %index.next274, %vector.body268 ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.as, i64 %index269 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load270 = load <16 x i8>, ptr %i.bo, align 1, !tbaa !8
  %wide.load271 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.q, i64 %index269 ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load272 = load <16 x i8>, ptr %i.bq, align 1, !tbaa !8
  %wide.load273 = load <16 x i8>, ptr %i.br, align 1, !tbaa !8
  %i.bs = xor <16 x i8> %wide.load272, %wide.load270
  %i.bt = xor <16 x i8> %wide.load273, %wide.load271
  store <16 x i8> %i.bs, ptr %i.bq, align 1, !tbaa !8
  store <16 x i8> %i.bt, ptr %i.br, align 1, !tbaa !8
  %index.next274 = add nuw i64 %index269, 32      ; 2 uses
  %i.bu = icmp eq i64 %index.next274, %n.vec267
  br i1 %i.bu, label %middle.block275, label %vector.body268, !llvm.loop !24

middle.block275:                                  ; preds = %vector.body268
  %cmp.n276 = icmp eq i64 %n.vec267, %wide.trip.count215
  br i1 %cmp.n276, label %._crit_edge185, label %vec.epilog.iter.check278

vec.epilog.iter.check278:                         ; preds = %middle.block275
  %min.epilog.iters.check280 = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check280, label %.lr.ph184.preheader, label %vec.epilog.ph281, !prof !12

vec.epilog.ph281:                                 ; preds = %vector.main.loop.iter.check264, %vec.epilog.iter.check278
  %vec.epilog.resume.val282 = phi i64 [ %n.vec267, %vec.epilog.iter.check278 ], [ 0, %vector.main.loop.iter.check264 ]
  %n.vec283 = and i64 %wide.trip.count215, 2147483644 ; 3 uses
  br label %vec.epilog.vector.body284

vec.epilog.vector.body284:                        ; preds = %vec.epilog.vector.body284, %vec.epilog.ph281
  %index285 = phi i64 [ %vec.epilog.resume.val282, %vec.epilog.ph281 ], [ %index.next288, %vec.epilog.vector.body284 ] ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.as, i64 %index285
  %wide.load286 = load <4 x i8>, ptr %i.bv, align 1, !tbaa !8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.q, i64 %index285 ; 2 uses
  %wide.load287 = load <4 x i8>, ptr %i.bw, align 1, !tbaa !8
  %i.bx = xor <4 x i8> %wide.load287, %wide.load286
  store <4 x i8> %i.bx, ptr %i.bw, align 1, !tbaa !8
  %index.next288 = add nuw i64 %index285, 4       ; 2 uses
  %i.by = icmp eq i64 %index.next288, %n.vec283
  br i1 %i.by, label %vec.epilog.middle.block289, label %vec.epilog.vector.body284, !llvm.loop !25

vec.epilog.middle.block289:                       ; preds = %vec.epilog.vector.body284
  %cmp.n290 = icmp eq i64 %n.vec283, %wide.trip.count215
  br i1 %cmp.n290, label %._crit_edge185, label %.lr.ph184.preheader

.lr.ph184.preheader:                              ; preds = %iter.check277, %vec.epilog.iter.check278, %vec.epilog.middle.block289
  %indvars.iv212.ph = phi i64 [ 0, %iter.check277 ], [ %n.vec267, %vec.epilog.iter.check278 ], [ %n.vec283, %vec.epilog.middle.block289 ]
  br label %.lr.ph184

.lr.ph184:                                        ; preds = %.lr.ph184.preheader, %.lr.ph184
  %indvars.iv212 = phi i64 [ %indvars.iv.next213, %.lr.ph184 ], [ %indvars.iv212.ph, %.lr.ph184.preheader ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv212
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv212 ; 2 uses
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !8
  %i.cd = xor i8 %i.cc, %i.ca
  store i8 %i.cd, ptr %i.cb, align 1, !tbaa !8
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1 ; 2 uses
  %exitcond216.not = icmp eq i64 %indvars.iv.next213, %wide.trip.count215
  br i1 %exitcond216.not, label %._crit_edge185, label %.lr.ph184, !llvm.loop !26

._crit_edge185:                                   ; preds = %.lr.ph184, %middle.block275, %vec.epilog.middle.block289, %.preheader174
  %i.ce = sext i32 %6 to i64
  %i.cf = call i32 @EVP_Digest(ptr noundef %5, i64 noundef %i.ce, ptr noundef nonnull %i.b, ptr noundef null, ptr noundef %.0149, ptr noundef null) #6
  %.not164 = icmp eq i32 %i.cf, 0
  br i1 %.not164, label %._crit_edge228, label %bb.i

bb.i:                                             ; preds = %._crit_edge185
  %i.cg = call i32 @CRYPTO_memcmp(ptr noundef nonnull %i.q, ptr noundef nonnull %i.b, i64 noundef %i.ar) #6
  %i.ch = icmp eq i32 %i.cg, 0
  %i.ci = and i1 %i.aq, %i.ch
  %i.cj = sext i1 %i.ci to i32                    ; 2 uses
  %i.ck = icmp slt i32 %i.f, %i.o
  br i1 %i.ck, label %.lr.ph191, label %._crit_edge192

.lr.ph191:                                        ; preds = %bb.i, %.lr.ph191
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph191 ], [ %i.ar, %bb.i ] ; 3 uses
  %.0140189 = phi i32 [ %i.cy, %.lr.ph191 ], [ 0, %bb.i ] ; 2 uses
  %.0141188 = phi i32 [ %i.da, %.lr.ph191 ], [ %i.cj, %bb.i ]
  %.0144187 = phi i32 [ %i.cx, %.lr.ph191 ], [ 0, %bb.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv217
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !8   ; 2 uses
  %i.cn = icmp eq i8 %i.cm, 1                     ; 2 uses
  %i.co = icmp eq i8 %i.cm, 0
  %i.cp = xor i32 %.0140189, -1
  %i.cq = select i1 %i.cn, i32 %i.cp, i32 0       ; 2 uses
  %i.cr = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cq) #7, !srcloc !36
  %i.cs = trunc nuw i64 %indvars.iv217 to i32
  %i.ct = and i32 %i.cr, %i.cs
  %i.cu = xor i32 %i.cq, -1
  %i.cv = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cu) #7, !srcloc !36
  %i.cw = and i32 %i.cv, %.0144187
  %i.cx = or i32 %i.cw, %i.ct                     ; 2 uses
  %i.cy = select i1 %i.cn, i32 -1, i32 %.0140189  ; 3 uses
  %i.cz = select i1 %i.co, i32 -1, i32 %i.cy
  %i.da = and i32 %i.cz, %.0141188                ; 2 uses
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.db = trunc nuw i64 %indvars.iv.next218 to i32
  %i.dc = icmp sgt i32 %i.o, %i.db
  br i1 %i.dc, label %.lr.ph191, label %._crit_edge192, !llvm.loop !27

._crit_edge192:                                   ; preds = %.lr.ph191, %bb.i
  %.0144.lcssa = phi i32 [ 0, %bb.i ], [ %i.cx, %.lr.ph191 ] ; 2 uses
  %.0141.lcssa = phi i32 [ %i.cj, %bb.i ], [ %i.da, %.lr.ph191 ]
  %.0140.lcssa = phi i32 [ 0, %bb.i ], [ %i.cy, %.lr.ph191 ]
  %.neg = xor i32 %.0144.lcssa, -1
  %i.dd = add i32 %i.o, %.neg                     ; 5 uses
  %i.de = sub i32 %1, %i.dd
  %i.df = or i32 %i.de, %i.dd
  %isnotneg.i.inv = icmp slt i32 %i.df, 0
  %i.dg = select i1 %isnotneg.i.inv, i32 0, i32 %.0140.lcssa
  %i.dh = and i32 %i.dg, %.0141.lcssa             ; 3 uses
  %i.di = add i32 %i.o, %i.n                      ; 4 uses
  %i.dj = sub i32 %i.di, %1
  %i.dk = sub i32 %i.f, %i.o
  %i.dl = and i32 %i.dj, %i.dk
  %.neg.i.i168 = ashr i32 %i.dl, 31               ; 2 uses
  %i.dm = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.neg.i.i168) #7, !srcloc !36
  %i.dn = and i32 %i.dm, %i.di
  %i.do = xor i32 %.neg.i.i168, -1
  %i.dp = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.do) #7, !srcloc !36
  %i.dq = and i32 %i.dp, %1
  %i.dr = or i32 %i.dq, %i.dn                     ; 2 uses
  %i.ds = icmp sgt i32 %i.di, 1
  br i1 %i.ds, label %.lr.ph203, label %.preheader

.lr.ph203:                                        ; preds = %._crit_edge192
  %i.dt = sub i32 %.0144.lcssa, %i.f
  %.4196 = add nuw nsw i32 %i.f, 1                ; 2 uses
  %i.du = zext nneg i32 %.4196 to i64             ; 9 uses
  %i.dv = add nuw nsw i64 %i.du, 1                ; 2 uses
  %invariant.gep345 = getelementptr i8, ptr %i.q, i64 %i.du ; 2 uses
  br label %bb.j

.preheader:                                       ; preds = %._crit_edge200, %._crit_edge192
  %i.dw = icmp sgt i32 %i.dr, 0
  br i1 %i.dw, label %.lr.ph205, label %._crit_edge206

.lr.ph205:                                        ; preds = %.preheader
  %i.dx = and i32 %i.dh, 255
  %wide.trip.count226 = zext nneg i32 %i.dr to i64
  %invariant.gep247 = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph203, %._crit_edge200
  %.0143201 = phi i32 [ 1, %.lr.ph203 ], [ %i.ft, %._crit_edge200 ] ; 4 uses
  %i.dy = sub nsw i32 %i.o, %.0143201             ; 2 uses
  %i.dz = icmp slt i32 %.4196, %i.dy
  br i1 %i.dz, label %iter.check310, label %._crit_edge200

iter.check310:                                    ; preds = %bb.j
  %i.ea = and i32 %.0143201, %i.dt
  %.not171 = icmp eq i32 %i.ea, 0
  %i.eb = select i1 %.not171, i32 0, i32 255      ; 2 uses
  %i.ec = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.eb) #7, !srcloc !36 ; 3 uses
  %i.ed = xor i32 %i.eb, -1
  %i.ee = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.ed) #7, !srcloc !36 ; 3 uses
  %i.ef = sext i32 %.0143201 to i64               ; 3 uses
  %i.eg = zext nneg i32 %i.dy to i64              ; 3 uses
  %invariant.gep = getelementptr i8, ptr %i.q, i64 %i.ef ; 3 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.eg)
  %i.eh = sub nsw i64 %umax, %i.du                ; 7 uses
  %min.iters.check296 = icmp ult i64 %i.eh, 4
  br i1 %min.iters.check296, label %vec.epilog.scalar.ph312.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check310
  %i.ei = call i64 @llvm.umax.i64(i64 %i.dv, i64 %i.eg) ; 2 uses
  %i.ej = getelementptr i8, ptr %i.q, i64 %i.ei
  %gep346 = getelementptr i8, ptr %invariant.gep345, i64 %i.ef
  %i.ek = getelementptr i8, ptr %i.q, i64 %i.ei
  %i.el = getelementptr i8, ptr %i.ek, i64 %i.ef
  %bound0 = icmp ult ptr %invariant.gep345, %i.el
  %bound1 = icmp ult ptr %gep346, %i.ej
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph312.preheader, label %vector.main.loop.iter.check297

vector.main.loop.iter.check297:                   ; preds = %vector.memcheck
  %min.iters.check298 = icmp ult i64 %i.eh, 16
  br i1 %min.iters.check298, label %vec.epilog.ph314, label %vector.ph299

vector.ph299:                                     ; preds = %vector.main.loop.iter.check297
  %i.em = and i64 %i.eh, 12
  %n.vec300 = and i64 %i.eh, -16                  ; 4 uses
  %i.en = add nsw i64 %n.vec300, %i.du
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert301 = insertelement <16 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat302 = shufflevector <16 x i32> %broadcast.splatinsert301, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body303

vector.body303:                                   ; preds = %vector.ph299, %vector.body303
  %index304 = phi i64 [ 0, %vector.ph299 ], [ %index.next307, %vector.body303 ] ; 2 uses
  %i.eo = add nuw i64 %index304, %i.du            ; 2 uses
  %i.ep = getelementptr i8, ptr %invariant.gep, i64 %i.eo
  %wide.load305 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !8, !alias.scope !37
  %i.eq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.eo ; 2 uses
  %wide.load306 = load <16 x i8>, ptr %i.eq, align 1, !tbaa !8, !alias.scope !38, !noalias !37
  %i.er = zext <16 x i8> %wide.load305 to <16 x i32>
  %i.es = zext <16 x i8> %wide.load306 to <16 x i32>
  %i.et = and <16 x i32> %broadcast.splat, %i.er
  %i.eu = and <16 x i32> %broadcast.splat302, %i.es
  %i.ev = or <16 x i32> %i.eu, %i.et
  %i.ew = trunc nuw <16 x i32> %i.ev to <16 x i8>
  store <16 x i8> %i.ew, ptr %i.eq, align 1, !tbaa !8, !alias.scope !38, !noalias !37
  %index.next307 = add nuw i64 %index304, 16      ; 2 uses
  %i.ex = icmp eq i64 %index.next307, %n.vec300
  br i1 %i.ex, label %middle.block308, label %vector.body303, !llvm.loop !31

middle.block308:                                  ; preds = %vector.body303
  %cmp.n309 = icmp eq i64 %i.eh, %n.vec300
  br i1 %cmp.n309, label %._crit_edge200, label %vec.epilog.iter.check311

vec.epilog.iter.check311:                         ; preds = %middle.block308
  %min.epilog.iters.check313 = icmp eq i64 %i.em, 0
  br i1 %min.epilog.iters.check313, label %vec.epilog.scalar.ph312.preheader, label %vec.epilog.ph314, !prof !39

vec.epilog.ph314:                                 ; preds = %vector.main.loop.iter.check297, %vec.epilog.iter.check311
  %vec.epilog.resume.val315 = phi i64 [ %n.vec300, %vec.epilog.iter.check311 ], [ 0, %vector.main.loop.iter.check297 ]
  %n.vec316 = and i64 %i.eh, -4                   ; 3 uses
  %i.ey = add nsw i64 %n.vec316, %i.du
  %broadcast.splatinsert317 = insertelement <4 x i32> poison, i32 %i.ec, i64 0
  %broadcast.splat318 = shufflevector <4 x i32> %broadcast.splatinsert317, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert319 = insertelement <4 x i32> poison, i32 %i.ee, i64 0
  %broadcast.splat320 = shufflevector <4 x i32> %broadcast.splatinsert319, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body321

vec.epilog.vector.body321:                        ; preds = %vec.epilog.vector.body321, %vec.epilog.ph314
  %index322 = phi i64 [ %vec.epilog.resume.val315, %vec.epilog.ph314 ], [ %index.next325, %vec.epilog.vector.body321 ] ; 2 uses
  %i.ez = add nuw i64 %index322, %i.du            ; 2 uses
  %i.fa = getelementptr i8, ptr %invariant.gep, i64 %i.ez
  %wide.load323 = load <4 x i8>, ptr %i.fa, align 1, !tbaa !8, !alias.scope !37
  %i.fb = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ez ; 2 uses
  %wide.load324 = load <4 x i8>, ptr %i.fb, align 1, !tbaa !8, !alias.scope !38, !noalias !37
  %i.fc = zext <4 x i8> %wide.load323 to <4 x i32>
  %i.fd = zext <4 x i8> %wide.load324 to <4 x i32>
  %i.fe = and <4 x i32> %broadcast.splat318, %i.fc
  %i.ff = and <4 x i32> %broadcast.splat320, %i.fd
  %i.fg = or <4 x i32> %i.ff, %i.fe
  %i.fh = trunc nuw <4 x i32> %i.fg to <4 x i8>
  store <4 x i8> %i.fh, ptr %i.fb, align 1, !tbaa !8, !alias.scope !38, !noalias !37
  %index.next325 = add nuw i64 %index322, 4       ; 2 uses
  %i.fi = icmp eq i64 %index.next325, %n.vec316
  br i1 %i.fi, label %vec.epilog.middle.block326, label %vec.epilog.vector.body321, !llvm.loop !32

vec.epilog.middle.block326:                       ; preds = %vec.epilog.vector.body321
  %cmp.n327 = icmp eq i64 %i.eh, %n.vec316
  br i1 %cmp.n327, label %._crit_edge200, label %vec.epilog.scalar.ph312.preheader

vec.epilog.scalar.ph312.preheader:                ; preds = %iter.check310, %vector.memcheck, %vec.epilog.iter.check311, %vec.epilog.middle.block326
  %indvars.iv220.ph = phi i64 [ %i.du, %iter.check310 ], [ %i.du, %vector.memcheck ], [ %i.en, %vec.epilog.iter.check311 ], [ %i.ey, %vec.epilog.middle.block326 ]
  br label %vec.epilog.scalar.ph312

vec.epilog.scalar.ph312:                          ; preds = %vec.epilog.scalar.ph312.preheader, %vec.epilog.scalar.ph312
  %indvars.iv220 = phi i64 [ %indvars.iv.next221, %vec.epilog.scalar.ph312 ], [ %indvars.iv220.ph, %vec.epilog.scalar.ph312.preheader ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv220
  %i.fj = load i8, ptr %gep, align 1, !tbaa !8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv220 ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !8
  %i.fm = zext i8 %i.fj to i32
  %i.fn = zext i8 %i.fl to i32
  %i.fo = and i32 %i.ec, %i.fm
  %i.fp = and i32 %i.ee, %i.fn
  %i.fq = or i32 %i.fp, %i.fo
  %i.fr = trunc nuw i32 %i.fq to i8
  store i8 %i.fr, ptr %i.fk, align 1, !tbaa !8
  %indvars.iv.next221 = add nuw nsw i64 %indvars.iv220, 1 ; 2 uses
  %i.fs = icmp samesign ult i64 %indvars.iv.next221, %i.eg
  br i1 %i.fs, label %vec.epilog.scalar.ph312, label %._crit_edge200, !llvm.loop !33

._crit_edge200:                                   ; preds = %vec.epilog.scalar.ph312, %middle.block308, %vec.epilog.middle.block326, %bb.j
  %i.ft = shl i32 %.0143201, 1                    ; 2 uses
  %i.fu = icmp slt i32 %i.ft, %i.di
  br i1 %i.fu, label %bb.j, label %.preheader, !llvm.loop !34

bb.k:                                             ; preds = %.lr.ph205, %bb.k
  %indvars.iv223 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next224, %bb.k ] ; 4 uses
  %i.fv = trunc nuw nsw i64 %indvars.iv223 to i32
  %i.fw = sub i32 %i.fv, %i.dd
  %i.fx = or i32 %i.fw, %i.dd
  %isneg = icmp slt i32 %i.fx, 0
  %gep248 = getelementptr inbounds nuw i8, ptr %invariant.gep247, i64 %indvars.iv223
  %i.fy = getelementptr inbounds nuw i8, ptr %gep248, i64 1
  %i.fz = load i8, ptr %i.fy, align 1, !tbaa !8
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 %indvars.iv223 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !8
  %i.gc = select i1 %isneg, i32 %i.dx, i32 0      ; 2 uses
  %i.gd = zext i8 %i.fz to i32
  %i.ge = zext i8 %i.gb to i32
  %i.gf = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gc) #7, !srcloc !36
  %i.gg = and i32 %i.gf, %i.gd
  %i.gh = xor i32 %i.gc, -1
  %i.gi = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gh) #7, !srcloc !36
  %i.gj = and i32 %i.gi, %i.ge
  %i.gk = or i32 %i.gj, %i.gg
  %i.gl = trunc nuw i32 %i.gk to i8
  store i8 %i.gl, ptr %i.ga, align 1, !tbaa !8
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next224, %wide.trip.count226
  br i1 %exitcond227.not, label %._crit_edge206, label %bb.k, !llvm.loop !35

._crit_edge206:                                   ; preds = %bb.k, %.preheader
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 332, ptr noundef nonnull @__func__.RSA_padding_check_PKCS1_OAEP_mgf1) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 4, i32 noundef 121, ptr noundef null) #6
  %i.gm = and i32 %i.dh, 1
  call void @err_clear_last_constant_time(i32 noundef %i.gm) #6
  br label %._crit_edge228

._crit_edge228:                                   ; preds = %bb.g, %._crit_edge185, %._crit_edge182, %._crit_edge, %bb.h, %._crit_edge206
  %.0145 = phi i32 [ %i.dd, %._crit_edge206 ], [ -1, %._crit_edge185 ], [ -1, %._crit_edge182 ], [ -1, %._crit_edge ], [ -1, %bb.h ], [ -1, %bb.g ]
  %.1142 = phi i32 [ %i.dh, %._crit_edge206 ], [ %.neg.i.i165, %._crit_edge185 ], [ %.neg.i.i165, %._crit_edge182 ], [ %.neg.i.i165, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %.1 = phi ptr [ %.lcssa331, %._crit_edge206 ], [ %.lcssa331, %._crit_edge185 ], [ %.lcssa331, %._crit_edge182 ], [ %.lcssa331, %._crit_edge ], [ null, %bb.h ], [ null, %bb.g ]
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef 64) #6
  call void @CRYPTO_clear_free(ptr noundef %i.q, i64 noundef %i.p, ptr noundef nonnull @.str, i32 noundef 337) #6
  call void @CRYPTO_clear_free(ptr noundef %.1, i64 noundef %.pre229, ptr noundef nonnull @.str, i32 noundef 338) #6
  %i.gn = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.1142) #7, !srcloc !36
  %i.go = and i32 %i.gn, %.0145
  %i.gp = xor i32 %.1142, -1
  %i.gq = call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.gp) #7, !srcloc !36
  %i.gr = or i32 %i.gq, %i.go
  br label %bb.l

bb.l:                                             ; preds = %bb.c, %._crit_edge228, %bb.f
  %.0 = phi i32 [ %i.gr, %._crit_edge228 ], [ -1, %bb.f ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret i32 %.0
}

declare i32 @CRYPTO_memcmp(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @err_clear_last_constant_time(i32 noundef) local_unnamed_addr #2

declare ptr @EVP_MD_CTX_new() local_unnamed_addr #2

declare i32 @EVP_DigestInit_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @EVP_DigestUpdate(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @EVP_DigestFinal_ex(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @EVP_MD_CTX_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind memory(none) }

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
!8 = !{!4, !4, i64 0}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
