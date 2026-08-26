Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/drbg_ctr?download=true
inline.NumInlined: 23
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 18
begin_hunk_0_@ctr_update:bb.a
  %i.qc = and i64 %umax.i78, 12
  %min.epilog.iters.check273 = icmp eq i64 %i.qc, 0
  br i1 %min.epilog.iters.check273, label %vec.epilog.scalar.ph271.preheader, label %vec.epilog.ph274, !prof !43

vec.epilog.ph274:                                 ; preds = %vector.main.loop.iter.check260, %vec.epilog.iter.check272
  %vec.epilog.resume.val269 = phi i64 [ %n.vec263, %vec.epilog.iter.check272 ], [ 0, %vector.main.loop.iter.check260 ]
  %n.vec275 = and i64 %umax.i78, 28               ; 3 uses
  br label %vec.epilog.vector.body276

vec.epilog.vector.body276:                        ; preds = %vec.epilog.vector.body276, %vec.epilog.ph274
  %index277 = phi i64 [ %vec.epilog.resume.val269, %vec.epilog.ph274 ], [ %index.next280, %vec.epilog.vector.body276 ] ; 3 uses
  %i.qd = getelementptr i8, ptr %invariant.gep.i77, i64 %index277
  %wide.load278 = load <4 x i8>, ptr %i.qd, align 1, !tbaa !28, !alias.scope !81
  %i.qe = getelementptr inbounds nuw i8, ptr %i.i, i64 %index277 ; 2 uses
  %wide.load279 = load <4 x i8>, ptr %i.qe, align 1, !tbaa !28, !alias.scope !84, !noalias !81
  %i.qf = xor <4 x i8> %wide.load279, %wide.load278
  store <4 x i8> %i.qf, ptr %i.qe, align 1, !tbaa !28, !alias.scope !84, !noalias !81
  %index.next280 = add nuw i64 %index277, 4       ; 2 uses
  %i.qg = icmp eq i64 %index.next280, %n.vec275
  br i1 %i.qg, label %vec.epilog.middle.block281, label %vec.epilog.vector.body276, !llvm.loop !86

vec.epilog.middle.block281:                       ; preds = %vec.epilog.vector.body276
  %cmp.n282 = icmp eq i64 %umax.i78, %n.vec275
  br i1 %cmp.n282, label %ctr_XOR.exit, label %vec.epilog.scalar.ph271.preheader

vec.epilog.scalar.ph271.preheader:                ; preds = %vector.memcheck252, %iter.check270, %vec.epilog.iter.check272, %vec.epilog.middle.block281
  %.133.i79.ph = phi i64 [ 0, %iter.check270 ], [ 0, %vector.memcheck252 ], [ %n.vec263, %vec.epilog.iter.check272 ], [ %n.vec275, %vec.epilog.middle.block281 ] ; 3 uses
  %xtraiter294 = and i64 %umax.i78, 3             ; 2 uses
  %lcmp.mod295.not = icmp eq i64 %xtraiter294, 0
  br i1 %lcmp.mod295.not, label %vec.epilog.scalar.ph271.prol.loopexit, label %vec.epilog.scalar.ph271.prol

vec.epilog.scalar.ph271.prol:                     ; preds = %vec.epilog.scalar.ph271.preheader, %vec.epilog.scalar.ph271.prol
  %.133.i79.prol = phi i64 [ %i.ql, %vec.epilog.scalar.ph271.prol ], [ %.133.i79.ph, %vec.epilog.scalar.ph271.preheader ] ; 3 uses
  %prol.iter296 = phi i64 [ %prol.iter296.next, %vec.epilog.scalar.ph271.prol ], [ 0, %vec.epilog.scalar.ph271.preheader ]
  %gep.i80.prol = getelementptr i8, ptr %invariant.gep.i77, i64 %.133.i79.prol
  %i.qh = load i8, ptr %gep.i80.prol, align 1, !tbaa !28
  %i.qi = getelementptr inbounds nuw i8, ptr %i.i, i64 %.133.i79.prol ; 2 uses
  %i.qj = load i8, ptr %i.qi, align 1, !tbaa !28
  %i.qk = xor i8 %i.qj, %i.qh
  store i8 %i.qk, ptr %i.qi, align 1, !tbaa !28
  %i.ql = add nuw nsw i64 %.133.i79.prol, 1       ; 2 uses
  %prol.iter296.next = add i64 %prol.iter296, 1   ; 2 uses
  %prol.iter296.cmp.not = icmp eq i64 %prol.iter296.next, %xtraiter294
  br i1 %prol.iter296.cmp.not, label %vec.epilog.scalar.ph271.prol.loopexit, label %vec.epilog.scalar.ph271.prol, !llvm.loop !87

vec.epilog.scalar.ph271.prol.loopexit:            ; preds = %vec.epilog.scalar.ph271.prol, %vec.epilog.scalar.ph271.preheader
  %.133.i79.unr = phi i64 [ %.133.i79.ph, %vec.epilog.scalar.ph271.preheader ], [ %i.ql, %vec.epilog.scalar.ph271.prol ]
  %i.qm = sub nsw i64 %.133.i79.ph, %umax.i78
  %i.qn = icmp ugt i64 %i.qm, -4
  br i1 %i.qn, label %ctr_XOR.exit, label %vec.epilog.scalar.ph271

vec.epilog.scalar.ph271:                          ; preds = %vec.epilog.scalar.ph271.prol.loopexit, %vec.epilog.scalar.ph271
  %.133.i79 = phi i64 [ %i.rh, %vec.epilog.scalar.ph271 ], [ %.133.i79.unr, %vec.epilog.scalar.ph271.prol.loopexit ] ; 6 uses
  %gep.i80 = getelementptr i8, ptr %invariant.gep.i77, i64 %.133.i79
  %i.qo = load i8, ptr %gep.i80, align 1, !tbaa !28
  %i.qp = getelementptr inbounds nuw i8, ptr %i.i, i64 %.133.i79 ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 1, !tbaa !28
  %i.qr = xor i8 %i.qq, %i.qo
  store i8 %i.qr, ptr %i.qp, align 1, !tbaa !28
  %i.qs = add nuw nsw i64 %.133.i79, 1            ; 2 uses
  %gep.i80.1 = getelementptr i8, ptr %invariant.gep.i77, i64 %i.qs
  %i.qt = load i8, ptr %gep.i80.1, align 1, !tbaa !28
  %i.qu = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.qs ; 2 uses
  %i.qv = load i8, ptr %i.qu, align 1, !tbaa !28
  %i.qw = xor i8 %i.qv, %i.qt
  store i8 %i.qw, ptr %i.qu, align 1, !tbaa !28
  %i.qx = add nuw nsw i64 %.133.i79, 2            ; 2 uses
  %gep.i80.2 = getelementptr i8, ptr %invariant.gep.i77, i64 %i.qx
  %i.qy = load i8, ptr %gep.i80.2, align 1, !tbaa !28
  %i.qz = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.qx ; 2 uses
  %i.ra = load i8, ptr %i.qz, align 1, !tbaa !28
  %i.rb = xor i8 %i.ra, %i.qy
  store i8 %i.rb, ptr %i.qz, align 1, !tbaa !28
  %i.rc = add nuw nsw i64 %.133.i79, 3            ; 2 uses
  %gep.i80.3 = getelementptr i8, ptr %invariant.gep.i77, i64 %i.rc
  %i.rd = load i8, ptr %gep.i80.3, align 1, !tbaa !28
  %i.re = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.rc ; 2 uses
  %i.rf = load i8, ptr %i.re, align 1, !tbaa !28
  %i.rg = xor i8 %i.rf, %i.rd
  store i8 %i.rg, ptr %i.re, align 1, !tbaa !28
  %i.rh = add nuw nsw i64 %.133.i79, 4            ; 2 uses
  %exitcond38.not.i81.3 = icmp eq i64 %i.rh, %umax.i78
  br i1 %exitcond38.not.i81.3, label %ctr_XOR.exit, label %vec.epilog.scalar.ph271, !llvm.loop !88

ctr_XOR.exit:                                     ; preds = %vec.epilog.scalar.ph139.prol.loopexit, %vec.epilog.scalar.ph139, %vec.epilog.scalar.ph271.prol.loopexit, %vec.epilog.scalar.ph271, %vector.ph130, %vec.epilog.middle.block149, %vector.ph262, %vec.epilog.middle.block281, %._crit_edge.i74, %bb.v, %ctr_XOR.exit66, %._crit_edge.i, %bb.s, %bb.r, %bb.q
  %i.ri = load ptr, ptr %i.h, align 8, !tbaa !16
  %i.rj = call i32 @EVP_CipherInit_ex(ptr noundef %i.ri, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.fq, ptr noundef null, i32 noundef -1) #6
  %.not47 = icmp eq i32 %i.rj, 0
  br i1 %.not47, label %bb.x, label %bb.w

bb.w:                                             ; preds = %ctr_XOR.exit
  %i.rk = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.rl = load ptr, ptr %i.rk, align 8, !tbaa !20
  %i.rm = call i32 @EVP_CipherInit_ex(ptr noundef %i.rl, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.fq, ptr noundef null, i32 noundef -1) #6
  %.not48 = icmp ne i32 %i.rm, 0
  %spec.select = zext i1 %.not48 to i32
  br label %bb.x

bb.x:                                             ; preds = %ctr_df.exit.thread, %bb.w, %ctr_XOR.exit, %bb.c
  %.042 = phi i32 [ 0, %bb.c ], [ 0, %ctr_XOR.exit ], [ 0, %ctr_df.exit.thread ], [ %spec.select, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #6
  ret i32 %.042
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

declare i32 @EVP_CipherUpdate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @ctr_BCC_update(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq i64 %2, 0
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 3 uses
  %.not = icmp eq i64 %i.f, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = sub i64 16, %i.f                         ; 4 uses
  %.not42 = icmp ult i64 %2, %i.g
  br i1 %.not42, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.i, ptr nonnull align 1 %1, i64 %i.g, i1 false)
  %.sroa.0.0.copyload = load <16 x i8>, ptr %i.h, align 4 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !36
  %.not.i = icmp eq i64 %i.k, 16                  ; 2 uses
  br i1 %.not.i, label %vector.ph, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.sroa.6.32.copyload = load <16 x i8>, ptr %i.h, align 4
  br label %vector.ph

vector.ph:                                        ; preds = %bb.e, %bb.d
  %.sroa.6.0 = phi <16 x i8> [ undef, %bb.d ], [ %.sroa.6.32.copyload, %bb.e ]
  %.0.i = phi i32 [ 32, %bb.d ], [ 48, %bb.e ]    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #6
  store i32 16, ptr %i.b, align 4, !tbaa !26
  %wide.load73 = load <16 x i8>, ptr %i.l, align 8, !tbaa !28
  %i.m = xor <16 x i8> %wide.load73, %.sroa.0.0.copyload
  store <16 x i8> %i.m, ptr %i.l, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %wide.load73.1 = load <16 x i8>, ptr %i.n, align 8, !tbaa !28
  %i.o = xor <16 x i8> %wide.load73.1, %.sroa.0.0.copyload
  store <16 x i8> %i.o, ptr %i.n, align 8, !tbaa !28
  br i1 %.not.i, label %ctr_BCC_blocks.exit, label %vector.body.2

vector.body.2:                                    ; preds = %vector.ph
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %wide.load73.2 = load <16 x i8>, ptr %i.p, align 8, !tbaa !28
  %i.q = xor <16 x i8> %wide.load73.2, %.sroa.6.0
  store <16 x i8> %i.q, ptr %i.p, align 8, !tbaa !28
  br label %ctr_BCC_blocks.exit

ctr_BCC_blocks.exit:                              ; preds = %vector.body.2, %vector.ph
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = call i32 @EVP_CipherUpdate(ptr noundef %i.s, ptr noundef nonnull %i.l, ptr noundef nonnull %i.b, ptr noundef nonnull %i.l, i32 noundef range(i32 32, 49) %.0.i) #6
  %.not.i.i = icmp eq i32 %i.t, 0
  %i.u = load i32, ptr %i.b, align 4
  %.not14.i.i = icmp ne i32 %i.u, %.0.i
  %or.cond.i.i.not = select i1 %.not.i.i, i1 true, i1 %.not14.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #6
  br i1 %or.cond.i.i.not, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %ctr_BCC_blocks.exit
  store i64 0, ptr %i.e, align 8, !tbaa !25
  %i.v = sub i64 %2, %i.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 %i.g
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.b
  %.236 = phi ptr [ %1, %bb.b ], [ %1, %bb.c ], [ %i.w, %bb.f ] ; 2 uses
  %.2 = phi i64 [ %2, %bb.b ], [ %2, %bb.c ], [ %i.v, %bb.f ] ; 3 uses
  %i.x = icmp ugt i64 %.2, 15
  br i1 %i.x, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.thread
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.687.0 = phi <16 x i8> [ undef, %.lr.ph ], [ %.sroa.687.1, %bb.i ]
  %.363 = phi i64 [ %.2, %.lr.ph ], [ %i.al, %bb.i ]
  %.33762 = phi ptr [ %.236, %.lr.ph ], [ %i.ak, %bb.i ] ; 3 uses
  %.sroa.085.0.copyload = load <16 x i8>, ptr %.33762, align 1 ; 2 uses
  %i.ad = load i64, ptr %i.y, align 8, !tbaa !36
  %.not.i46 = icmp eq i64 %i.ad, 16               ; 2 uses
  br i1 %.not.i46, label %vector.ph75, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.sroa.687.32.copyload = load <16 x i8>, ptr %.33762, align 1
  br label %vector.ph75

vector.ph75:                                      ; preds = %bb.h, %bb.g
  %.sroa.687.1 = phi <16 x i8> [ %.sroa.687.0, %bb.g ], [ %.sroa.687.32.copyload, %bb.h ] ; 2 uses
  %.0.i47 = phi i32 [ 32, %bb.g ], [ 48, %bb.h ]  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 16, ptr %i.a, align 4, !tbaa !26
  %wide.load80 = load <16 x i8>, ptr %i.z, align 8, !tbaa !28
  %i.ae = xor <16 x i8> %wide.load80, %.sroa.085.0.copyload
  store <16 x i8> %i.ae, ptr %i.z, align 8, !tbaa !28
  %wide.load80.1 = load <16 x i8>, ptr %i.ab, align 8, !tbaa !28
  %i.af = xor <16 x i8> %wide.load80.1, %.sroa.085.0.copyload
  store <16 x i8> %i.af, ptr %i.ab, align 8, !tbaa !28
  br i1 %.not.i46, label %ctr_BCC_blocks.exit56, label %vector.body77.2

vector.body77.2:                                  ; preds = %vector.ph75
  %wide.load80.2 = load <16 x i8>, ptr %i.ac, align 8, !tbaa !28
  %i.ag = xor <16 x i8> %wide.load80.2, %.sroa.687.1
  store <16 x i8> %i.ag, ptr %i.ac, align 8, !tbaa !28
  br label %ctr_BCC_blocks.exit56

ctr_BCC_blocks.exit56:                            ; preds = %vector.body77.2, %vector.ph75
  %i.ah = load ptr, ptr %i.aa, align 8, !tbaa !21
  %i.ai = call i32 @EVP_CipherUpdate(ptr noundef %i.ah, ptr noundef nonnull %i.z, ptr noundef nonnull %i.a, ptr noundef nonnull %i.z, i32 noundef range(i32 32, 49) %.0.i47) #6
  %.not.i.i52 = icmp eq i32 %i.ai, 0
  %i.aj = load i32, ptr %i.a, align 4
  %.not14.i.i53 = icmp ne i32 %i.aj, %.0.i47
  %or.cond.i.i54.not = select i1 %.not.i.i52, i1 true, i1 %.not14.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  br i1 %or.cond.i.i54.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %ctr_BCC_blocks.exit56
  %i.ak = getelementptr inbounds nuw i8, ptr %.33762, i64 16 ; 2 uses
  %i.al = add i64 %.363, -16                      ; 3 uses
  %i.am = icmp ugt i64 %i.al, 15
  br i1 %i.am, label %bb.g, label %._crit_edge, !llvm.loop !89

._crit_edge:                                      ; preds = %bb.i, %.thread
  %.337.lcssa = phi ptr [ %.236, %.thread ], [ %i.ak, %bb.i ]
  %.3.lcssa = phi i64 [ %.2, %.thread ], [ %i.al, %bb.i ] ; 3 uses
  %.not44 = icmp eq i64 %.3.lcssa, 0
  br i1 %.not44, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.ao = load i64, ptr %i.e, align 8, !tbaa !25
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ap, ptr align 1 %.337.lcssa, i64 %.3.lcssa, i1 false)
  %i.aq = load i64, ptr %i.e, align 8, !tbaa !25
  %i.ar = add i64 %i.aq, %.3.lcssa
  store i64 %i.ar, ptr %i.e, align 8, !tbaa !25
  br label %.loopexit

.loopexit:                                        ; preds = %ctr_BCC_blocks.exit56, %ctr_BCC_blocks.exit, %._crit_edge, %bb.j, %bb.a
  %.1 = phi i32 [ 1, %._crit_edge ], [ 1, %bb.a ], [ 0, %ctr_BCC_blocks.exit ], [ 1, %bb.j ], [ 0, %ctr_BCC_blocks.exit56 ]
  ret i32 %.1
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @ossl_prov_drbg_uninstantiate(ptr noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_CTX_free(ptr noundef) local_unnamed_addr #1

declare void @EVP_CIPHER_free(ptr noundef) local_unnamed_addr #1

declare void @CRYPTO_secure_clear_free(ptr noundef, i64 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ossl_rand_drbg_free(ptr noundef) local_unnamed_addr #1

declare i32 @CRYPTO_THREAD_write_lock(ptr noundef) local_unnamed_addr #1

declare i32 @ossl_prov_is_running() local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc i32 @drbg_ctr_set_ctx_params_locked(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !10   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90
  %i.f = tail call ptr @ossl_prov_ctx_get0_libctx(ptr noundef %i.e) #6 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  %i.g = tail call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = call i32 @OSSL_PARAM_get_int(ptr noundef nonnull %i.g, ptr noundef nonnull %i.a) #6
  %.not68 = icmp eq i32 %i.h, 0
  br i1 %.not68, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.a, align 4, !tbaa !26
  %i.j = icmp ne i32 %i.i, 0
  %i.k = zext i1 %i.j to i32
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i32 %i.k, ptr %i.l, align 8, !tbaa !27
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.not76.a = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.a ]
  %i.m = call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.2) #6 ; 3 uses
  %.not69 = icmp eq ptr %i.m, null
  br i1 %.not69, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !91
  %.not70 = icmp eq i32 %i.o, 4
  br i1 %.not70, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !94
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %.061 = phi ptr [ %i.q, %bb.f ], [ null, %bb.d ] ; 2 uses
  %i.r = call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.3) #6 ; 3 uses
  %.not71 = icmp eq ptr %i.r, null
  br i1 %.not71, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 8, !tbaa !91
  %.not72 = icmp eq i32 %i.t, 4
  br i1 %.not72, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !94
  %i.w = call ptr @ossl_provider_find(ptr noundef %i.f, ptr noundef %i.v, i32 noundef 1) #6 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %.057 = phi ptr [ %i.w, %bb.i ], [ null, %bb.g ] ; 8 uses
  %i.y = call ptr @OSSL_PARAM_locate_const(ptr noundef %1, ptr noundef nonnull @.str.4) #6 ; 4 uses
  %.not73 = icmp eq ptr %i.y, null
  br i1 %.not73, label %bb.aa, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !94  ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !91
  %.not74 = icmp eq i32 %i.ac, 4
  br i1 %.not74, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 24 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !95 ; 2 uses
  %i.af = icmp ult i64 %i.ae, 3
  br i1 %i.af, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @ossl_provider_free(ptr noundef %.057) #6
  br label %.critedge

bb.n:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.ae
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -3
  %i.ai = call i32 @OPENSSL_strcasecmp(ptr noundef nonnull @.str.5, ptr noundef nonnull %i.ah) #6
  %.not75 = icmp eq i32 %i.ai, 0
  br i1 %.not75, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @ERR_new() #6
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 759, ptr noundef nonnull @__func__.drbg_ctr_set_ctx_params_locked) #6
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 57, i32 noundef 206, ptr noundef null) #6
  call void @ossl_provider_free(ptr noundef %.057) #6
  br label %.critedge

bb.p:                                             ; preds = %bb.n
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !95
  %i.ak = call ptr @CRYPTO_strndup(ptr noundef nonnull %i.aa, i64 noundef %i.aj, ptr noundef nonnull @.str, i32 noundef 763) #6 ; 5 uses
  %i.al = icmp eq ptr %i.ak, null
  br i1 %i.al, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @ossl_provider_free(ptr noundef %.057) #6
  br label %.critedge

bb.r:                                             ; preds = %bb.p
  %i.am = load i64, ptr %i.ad, align 8, !tbaa !95
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -3
  store i32 4342597, ptr %i.ao, align 1
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !22
  call void @EVP_CIPHER_free(ptr noundef %i.aq) #6
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23
  call void @EVP_CIPHER_free(ptr noundef %i.as) #6
  %i.at = call i32 @ERR_set_mark() #6             ; 0 uses
  %i.au = call ptr @evp_cipher_fetch_from_prov(ptr noundef %.057, ptr noundef nonnull %i.aa, ptr noundef null) #6 ; 2 uses
  store ptr %i.au, ptr %i.ar, align 8, !tbaa !23
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.aw = call i32 @ERR_pop_to_mark() #6          ; 0 uses
end_hunk_0
