Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/ssl_lib?download=true
inline.NumInlined: 300
inline.NumDeleted: 75
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@nss_keylog_int:bb.a
  %i.g = add i64 %5, %3
  %i.h = shl i64 %i.g, 1
  %i.i = add i64 %i.h, 3
  %i.j = add i64 %i.i, %i.f                       ; 2 uses
  %i.k = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 6985) #18 ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.g, label %.new

.new:                                             ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull align 1 %0, i64 %i.f, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.f ; 2 uses
  store i8 32, ptr %i.m, align 1, !tbaa !264
  %xtraiter = and i64 %3, 1
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  %unroll_iter = and i64 %3, 62
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.new
  %.03541 = phi i64 [ 0, %.new ], [ %i.ap, %bb.c ] ; 3 uses
  %.03640 = phi ptr [ %i.n, %.new ], [ %i.ao, %bb.c ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.c ]
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 %.03541
  %i.p = load i8, ptr %i.o, align 1, !tbaa !264
  %i.q = zext i8 %i.p to i32                      ; 2 uses
  %i.r = lshr i32 %i.q, 4
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !264
  %i.v = getelementptr inbounds nuw i8, ptr %.03640, i64 1
  store i8 %i.u, ptr %.03640, align 1, !tbaa !264
  %i.w = and i32 %i.q, 15
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !264
  store i8 %i.z, ptr %i.v, align 1, !tbaa !264
  %i.aa = getelementptr inbounds nuw i8, ptr %.03640, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 %.03541
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !264
  %i.ae = zext i8 %i.ad to i32                    ; 2 uses
  %i.af = lshr i32 %i.ae, 4
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.ag
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !264
  %i.aj = getelementptr inbounds nuw i8, ptr %.03640, i64 3
  store i8 %i.ai, ptr %i.aa, align 1, !tbaa !264
  %i.ak = and i32 %i.ae, 15
  %i.al = zext nneg i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !264
  store i8 %i.an, ptr %i.aj, align 1, !tbaa !264
  %i.ao = getelementptr inbounds nuw i8, ptr %.03640, i64 4 ; 6 uses
  %i.ap = add nuw nsw i64 %.03541, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !523

.unr-lcssa:                                       ; preds = %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %.03640, i64 2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.d, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod55 = trunc i64 %3 to i1
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 %i.ap
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !264
  %i.at = zext i8 %i.as to i32                    ; 2 uses
  %i.au = lshr i32 %i.at, 4
  %i.av = zext nneg i32 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !264
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  store i8 %i.ax, ptr %i.ao, align 1, !tbaa !264
  %i.az = and i32 %i.at, 15
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.ba
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !264
  store i8 %i.bc, ptr %i.ay, align 1, !tbaa !264
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  br label %bb.d

bb.d:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %.03640.lcssa = phi ptr [ %i.aq, %.unr-lcssa ], [ %i.ao, %.epil.preheader ]
  %.lcssa52 = phi ptr [ %i.ao, %.unr-lcssa ], [ %i.bd, %.epil.preheader ]
  %i.be = getelementptr inbounds nuw i8, ptr %.03640.lcssa, i64 3 ; 3 uses
  store i8 32, ptr %.lcssa52, align 1, !tbaa !264
  %.not44 = icmp eq i64 %5, 0
  br i1 %.not44, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.d
  %xtraiter56 = and i64 %5, 1
  %i.bf = icmp eq i64 %5, 1
  br i1 %i.bf, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter60 = and i64 %5, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.143 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.ch, %.lr.ph ] ; 3 uses
  %.13742 = phi ptr [ %i.be, %.lr.ph.preheader.new ], [ %i.cg, %.lr.ph ] ; 5 uses
  %niter61 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter61.next.1, %.lr.ph ]
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 %.143
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !264
  %i.bi = zext i8 %i.bh to i32                    ; 2 uses
  %i.bj = lshr i32 %i.bi, 4
  %i.bk = zext nneg i32 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !264
  %i.bn = getelementptr inbounds nuw i8, ptr %.13742, i64 1
  store i8 %i.bm, ptr %.13742, align 1, !tbaa !264
  %i.bo = and i32 %i.bi, 15
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !264
  store i8 %i.br, ptr %i.bn, align 1, !tbaa !264
  %i.bs = getelementptr inbounds nuw i8, ptr %.13742, i64 2
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 %.143
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !264
  %i.bw = zext i8 %i.bv to i32                    ; 2 uses
  %i.bx = lshr i32 %i.bw, 4
  %i.by = zext nneg i32 %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !264
  %i.cb = getelementptr inbounds nuw i8, ptr %.13742, i64 3
  store i8 %i.ca, ptr %i.bs, align 1, !tbaa !264
  %i.cc = and i32 %i.bw, 15
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !264
  store i8 %i.cf, ptr %i.cb, align 1, !tbaa !264
  %i.cg = getelementptr inbounds nuw i8, ptr %.13742, i64 4 ; 3 uses
  %i.ch = add nuw i64 %.143, 2                    ; 2 uses
  %niter61.next.1 = add nuw i64 %niter61, 2       ; 2 uses
  %niter61.ncmp.1 = icmp eq i64 %niter61.next.1, %unroll_iter60
  br i1 %niter61.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !524

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.143.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.ch, %._crit_edge.loopexit.unr-lcssa ]
  %.13742.epil.init = phi ptr [ %i.be, %.lr.ph.preheader ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod59 = trunc i64 %5 to i1
  tail call void @llvm.assume(i1 %lcmp.mod59)
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 %.143.epil.init
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !264
  %i.ck = zext i8 %i.cj to i32                    ; 2 uses
  %i.cl = lshr i32 %i.ck, 4
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.cm
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !264
  %i.cp = getelementptr inbounds nuw i8, ptr %.13742.epil.init, i64 1
  store i8 %i.co, ptr %.13742.epil.init, align 1, !tbaa !264
  %i.cq = and i32 %i.ck, 15
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = getelementptr inbounds nuw i8, ptr @ossl_to_lowerhex.hexdig, i64 %i.cr
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !264
  store i8 %i.ct, ptr %i.cp, align 1, !tbaa !264
  %i.cu = getelementptr inbounds nuw i8, ptr %.13742.epil.init, i64 2
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %bb.d
  %.137.lcssa = phi ptr [ %i.be, %bb.d ], [ %i.cg, %._crit_edge.loopexit.unr-lcssa ], [ %i.cu, %.lr.ph.epil.preheader ]
  store i8 0, ptr %.137.lcssa, align 1, !tbaa !264
  %i.cv = load ptr, ptr %i.c, align 8, !tbaa !522 ; 2 uses
  %.not = icmp eq ptr %i.cv, null
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %._crit_edge
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !180
  tail call void %i.cv(ptr noundef %i.cx, ptr noundef nonnull %i.k) #18
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge
  tail call void @CRYPTO_clear_free(ptr noundef nonnull %i.k, i64 noundef %i.j, ptr noundef nonnull @.str, i32 noundef 7006) #18
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %bb.f
  %.0 = phi i32 [ 1, %bb.f ], [ 1, %bb.a ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_log_secret(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.b = tail call fastcc i32 @nss_keylog_int(ptr noundef %1, ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef %2, i64 noundef %3)
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ssl_cache_cipherlist(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.a = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %.val43 = load i64, ptr %i.a, align 8, !tbaa !498 ; 3 uses
  %i.b = icmp eq i64 %.val43, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7052, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 183, ptr noundef null) #18
  br label %.critedge

bb.c:                                             ; preds = %bb.a
  %3 = and i64 %.val43, 1
  %i.c = urem i64 %.val43, 3
  %4 = select i1 %.not, i64 %3, i64 %i.c
  %.not34 = icmp eq i64 %4, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7057, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 151, ptr noundef null) #18
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !379
  tail call void @CRYPTO_free(ptr noundef %i.e, ptr noundef nonnull @.str, i32 noundef 7061) #18
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 936 ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br i1 %.not, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.val41 = load i64, ptr %i.a, align 8, !tbaa !498 ; 3 uses
  %i.g = udiv i64 %.val41, 3
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !tbaa !282
  %i.h = shl nuw i64 %i.g, 1
  %i.i = tail call noalias ptr @CRYPTO_malloc(i64 noundef %i.h, ptr noundef nonnull @.str, i32 noundef 7078) #18 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !379
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7081, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #18
  br label %.critedge

bb.h:                                             ; preds = %bb.f
  store i64 0, ptr %i.f, align 8, !tbaa !380
  %.not3679 = icmp eq i64 %.val41, 0
  br i1 %.not3679, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %bb.l
  %i.k = phi i64 [ %i.s, %bb.l ], [ 0, %bb.h ]    ; 2 uses
  %.082 = phi ptr [ %i.t, %bb.l ], [ %i.i, %bb.h ] ; 2 uses
  %.sroa.0.081 = phi ptr [ %.sroa.0.275, %bb.l ], [ %.sroa.0.0.copyload, %bb.h ] ; 3 uses
  %.sroa.11.080 = phi i64 [ %.sroa.11.273, %bb.l ], [ %.val41, %bb.h ] ; 2 uses
  %i.l = load i8, ptr %.sroa.0.081, align 1, !tbaa !264
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 1
  %i.n = icmp eq i8 %i.l, 0
  %i.o = icmp ult i64 %.sroa.11.080, 3            ; 2 uses
  br i1 %i.n, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph
  br i1 %i.o, label %PACKET_copy_bytes.exit.thread, label %bb.k

bb.j:                                             ; preds = %.lr.ph
  br i1 %i.o, label %PACKET_copy_bytes.exit.thread, label %bb.l

PACKET_copy_bytes.exit.thread:                    ; preds = %bb.j, %bb.i
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7093, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 240, ptr noundef null) #18
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !379
  tail call void @CRYPTO_free(ptr noundef %i.p, ptr noundef nonnull @.str, i32 noundef 7094) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  br label %.critedge

bb.k:                                             ; preds = %bb.i
  %i.q = load i16, ptr %i.m, align 1
  store i16 %i.q, ptr %.082, align 1
  %i.r = add i64 %i.k, 2                          ; 2 uses
  store i64 %i.r, ptr %i.f, align 8, !tbaa !380
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.s = phi i64 [ %i.k, %bb.j ], [ %i.r, %bb.k ]
  %.sroa.11.273 = add i64 %.sroa.11.080, -3       ; 2 uses
  %.sroa.0.275 = getelementptr inbounds nuw i8, ptr %.sroa.0.081, i64 3
  %i.t = getelementptr inbounds nuw i8, ptr %.082, i64 2
  %.not36 = icmp eq i64 %.sroa.11.273, 0
  br i1 %.not36, label %.critedge, label %.lr.ph, !llvm.loop !525

bb.m:                                             ; preds = %bb.e
  tail call void @CRYPTO_free(ptr noundef null, ptr noundef nonnull @.str.21, i32 noundef 454) #18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, i8 0, i64 16, i1 false)
  %.val.i47 = load i64, ptr %i.a, align 8, !tbaa !498 ; 3 uses
  %i.u = icmp eq i64 %.val.i47, 0
  br i1 %i.u, label %.critedge, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.v = load ptr, ptr %1, align 8, !tbaa !497
  %i.w = tail call ptr @CRYPTO_memdup(ptr noundef %i.v, i64 noundef %.val.i47, ptr noundef nonnull @.str.21, i32 noundef 463) #18 ; 2 uses
  store ptr %i.w, ptr %i.d, align 8, !tbaa !282
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %PACKET_memdup.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i64 %.val.i47, ptr %i.f, align 8, !tbaa !203
  br label %.critedge

PACKET_memdup.exit:                               ; preds = %bb.n
  tail call void @ERR_new() #18
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7104, ptr noundef nonnull @__func__.ssl_cache_cipherlist) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef nonnull %0, i32 noundef 80, i32 noundef 786691, ptr noundef null) #18
  br label %.critedge

.critedge:                                        ; preds = %bb.l, %bb.h, %bb.m, %bb.o, %bb.g, %PACKET_copy_bytes.exit.thread, %PACKET_memdup.exit, %bb.d, %bb.b
  %.1 = phi i32 [ 0, %bb.b ], [ 0, %bb.d ], [ 0, %PACKET_memdup.exit ], [ 1, %bb.m ], [ 0, %bb.g ], [ 0, %PACKET_copy_bytes.exit.thread ], [ 1, %bb.o ], [ 1, %bb.h ], [ 1, %bb.l ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @SSL_bytes_to_cipher_list(ptr noundef %0, ptr noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5) local_unnamed_addr #0 {
bb.a:
  %6 = alloca %struct.PACKET, align 8             ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !23     ; 2 uses
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread16, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = and i32 %i.b, 128
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr @ossl_quic_obj_get0_handshake_layer(ptr noundef nonnull %0) #18 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %.thread, label %.thread16

.thread16:                                        ; preds = %bb.b, %bb.d
  %i.g = phi ptr [ %i.e, %bb.d ], [ %0, %bb.b ]
  %i.h = icmp slt i64 %2, 0
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %.thread16
  store ptr %1, ptr %6, align 8, !tbaa !497
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %2, ptr %i.i, align 8, !tbaa !498
  %i.j = call i32 @ossl_bytes_to_cipher_list(ptr noundef nonnull %i.g, ptr noundef nonnull %6, ptr noundef %4, ptr noundef %5, i32 noundef %3, i32 noundef 0)
  br label %.thread

.thread:                                          ; preds = %.thread16, %bb.c, %bb.a, %bb.d, %bb.e
  %.0 = phi i32 [ 0, %bb.d ], [ %i.j, %bb.e ], [ 0, %bb.c ], [ 0, %bb.a ], [ 0, %.thread16 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @ossl_bytes_to_cipher_list(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %.not81.not = icmp ne i32 %4, 0                 ; 4 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 6 uses
  %.val62 = load i64, ptr %i.b, align 8, !tbaa !498 ; 3 uses
  %i.c = icmp eq i64 %.val62, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.not60 = icmp eq i32 %5, 0
  tail call void @ERR_new() #18
  br i1 %.not60, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7141, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 47, i32 noundef 183, ptr noundef null) #18
  br label %bb.af

bb.d:                                             ; preds = %bb.b
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7143, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 183, ptr noundef null) #18
  br label %bb.af

bb.e:                                             ; preds = %bb.a
  %i.d = select i1 %.not81.not, i64 3, i64 2      ; 9 uses
  %i.e = urem i64 %.val62, 3
  %6 = and i64 %.val62, 1
  %7 = select i1 %.not81.not, i64 %i.e, i64 %6
  %.not = icmp eq i64 %7, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not59 = icmp eq i32 %5, 0
  tail call void @ERR_new() #18
  br i1 %.not59, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7150, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 151, ptr noundef null) #18
  br label %bb.af

bb.h:                                             ; preds = %bb.f
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7152, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 151, ptr noundef null) #18
  br label %bb.af

bb.i:                                             ; preds = %bb.e
  %i.f = tail call ptr @OPENSSL_sk_new_null() #18 ; 6 uses
  %i.g = tail call ptr @OPENSSL_sk_new_null() #18 ; 6 uses
  %i.h = icmp eq ptr %i.f, null
  %i.i = icmp eq ptr %i.g, null
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.m, label %.preheader

.preheader:                                       ; preds = %bb.i
  %.val.i.i67 = load i64, ptr %i.b, align 8, !tbaa !498 ; 4 uses
  %i.j = icmp ult i64 %.val.i.i67, %i.d
  br i1 %i.j, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx = zext i1 %.not81.not to i64
  %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel.idx ; 2 uses
  br i1 %.not81.not, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %.backedge.us
  %.val.i.i68.us = phi i64 [ %.val.i.i.us, %.backedge.us ], [ %.val.i.i67, %.lr.ph ]
  %i.k = load ptr, ptr %1, align 8, !tbaa !497    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(2) %i.k, i64 range(i64 2, 4) %i.d, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.d
  store ptr %i.l, ptr %1, align 8, !tbaa !497
  %i.m = sub nuw i64 %.val.i.i68.us, %i.d
  store i64 %i.m, ptr %i.b, align 8, !tbaa !498
  %i.n = call ptr @ssl_get_cipher_by_char(ptr noundef %0, ptr noundef nonnull %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i32 noundef 1) #18 ; 5 uses
  %.not52.us = icmp eq ptr %i.n, null
  br i1 %.not52.us, label %.backedge.us, label %bb.j

bb.j:                                             ; preds = %.lr.ph.split.us
  %i.o = load i32, ptr %i.n, align 8, !tbaa !526
  %.not53.us = icmp eq i32 %i.o, 0
  br i1 %.not53.us, label %.thread.us, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = call i32 @OPENSSL_sk_push(ptr noundef %i.f, ptr noundef nonnull %i.n) #18
  %.not54.us = icmp eq i32 %i.p, 0
  br i1 %.not54.us, label %.split.us, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.pr.us = load i32, ptr %i.n, align 8, !tbaa !526
  %.not55.us = icmp eq i32 %.pr.us, 0
  br i1 %.not55.us, label %.thread.us, label %.backedge.us

.thread.us:                                       ; preds = %bb.l, %bb.j
  %i.q = call i32 @OPENSSL_sk_push(ptr noundef %i.g, ptr noundef nonnull %i.n) #18
  %.not56.us = icmp eq i32 %i.q, 0
  br i1 %.not56.us, label %.split.us, label %.backedge.us

.backedge.us:                                     ; preds = %.thread.us, %bb.l, %.lr.ph.split.us
  %.val.i.i.us = load i64, ptr %i.b, align 8, !tbaa !498 ; 3 uses
  %i.r = icmp ult i64 %.val.i.i.us, %i.d
  br i1 %i.r, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !527

bb.m:                                             ; preds = %bb.i
  %.not58 = icmp eq i32 %5, 0
  tail call void @ERR_new() #18
  br i1 %.not58, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7160, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #18
  br label %bb.ae

bb.o:                                             ; preds = %bb.m
  tail call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7162, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  tail call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #18
  br label %bb.ae

.lr.ph.split:                                     ; preds = %.lr.ph, %.backedge
  %.val.i.i68 = phi i64 [ %.val.i.i, %.backedge ], [ %.val.i.i67, %.lr.ph ]
  %i.s = load ptr, ptr %1, align 8, !tbaa !497    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(2) %i.a, ptr noundef nonnull align 1 dereferenceable(2) %i.s, i64 range(i64 2, 4) %i.d, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.d
  store ptr %i.t, ptr %1, align 8, !tbaa !497
  %i.u = sub nuw i64 %.val.i.i68, %i.d
  store i64 %i.u, ptr %i.b, align 8, !tbaa !498
  %i.v = load i8, ptr %i.a, align 1
  %.not69 = icmp eq i8 %i.v, 0
  br i1 %.not69, label %bb.p, label %.backedge

bb.p:                                             ; preds = %.lr.ph.split
  %i.w = call ptr @ssl_get_cipher_by_char(ptr noundef %0, ptr noundef nonnull %.idx.sroa.sel.idx.sroa.sel.idx.sroa.sel, i32 noundef 1) #18 ; 5 uses
  %.not52 = icmp eq ptr %i.w, null
  br i1 %.not52, label %.backedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.x = load i32, ptr %i.w, align 8, !tbaa !526
  %.not53 = icmp eq i32 %i.x, 0
  br i1 %.not53, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.y = call i32 @OPENSSL_sk_push(ptr noundef %i.f, ptr noundef nonnull %i.w) #18
  %.not54 = icmp eq i32 %i.y, 0
  br i1 %.not54, label %.split.us, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.pr = load i32, ptr %i.w, align 8, !tbaa !526
  %.not55 = icmp eq i32 %.pr, 0
  br i1 %.not55, label %.thread, label %.backedge

.thread:                                          ; preds = %bb.q, %bb.s
  %i.z = call i32 @OPENSSL_sk_push(ptr noundef %i.g, ptr noundef nonnull %i.w) #18
  %.not56 = icmp eq i32 %i.z, 0
  br i1 %.not56, label %.split.us, label %.backedge

.split.us:                                        ; preds = %bb.k, %.thread.us, %bb.r, %.thread
  %.not57 = icmp eq i32 %5, 0
  call void @ERR_new() #18
  br i1 %.not57, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.split.us
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7180, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 80, i32 noundef 524303, ptr noundef null) #18
  br label %bb.ae

bb.u:                                             ; preds = %.split.us
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7182, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 524303, ptr noundef null) #18
  br label %bb.ae

.backedge:                                        ; preds = %bb.p, %.thread, %bb.s, %.lr.ph.split
  %.val.i.i = load i64, ptr %i.b, align 8, !tbaa !498 ; 3 uses
  %i.aa = icmp ult i64 %.val.i.i, %i.d
  br i1 %i.aa, label %._crit_edge, label %.lr.ph.split, !llvm.loop !527

._crit_edge:                                      ; preds = %.backedge.us, %.backedge, %.preheader
  %.val = phi i64 [ %.val.i.i, %.backedge ], [ %.val.i.i67, %.preheader ], [ %.val.i.i.us, %.backedge.us ]
  %.not48 = icmp eq i64 %.val, 0
  br i1 %.not48, label %bb.y, label %bb.v

bb.v:                                             ; preds = %._crit_edge
  %.not51 = icmp eq i32 %5, 0
  call void @ERR_new() #18
  br i1 %.not51, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7189, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  call void (ptr, i32, i32, ptr, ...) @ossl_statem_fatal(ptr noundef %0, i32 noundef 50, i32 noundef 271, ptr noundef null) #18
  br label %bb.ae

bb.x:                                             ; preds = %bb.v
  call void @ERR_set_debug(ptr noundef nonnull @.str, i32 noundef 7191, ptr noundef nonnull @__func__.ossl_bytes_to_cipher_list) #18
  call void (i32, i32, ptr, ...) @ERR_set_error(i32 noundef 20, i32 noundef 271, ptr noundef null) #18
  br label %bb.ae

bb.y:                                             ; preds = %._crit_edge
  %.not49 = icmp eq ptr %2, null
  br i1 %.not49, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store ptr %i.f, ptr %2, align 8, !tbaa !528
  br label %bb.ab

bb.aa:                                            ; preds = %bb.y
  call void @OPENSSL_sk_free(ptr noundef %i.f) #18
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.not50 = icmp eq ptr %3, null
  br i1 %.not50, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.g, ptr %3, align 8, !tbaa !528
  br label %bb.af

bb.ad:                                            ; preds = %bb.ab
  call void @OPENSSL_sk_free(ptr noundef %i.g) #18
  br label %bb.af

bb.ae:                                            ; preds = %bb.w, %bb.x, %bb.t, %bb.u, %bb.n, %bb.o
  call void @OPENSSL_sk_free(ptr noundef %i.f) #18
  call void @OPENSSL_sk_free(ptr noundef %i.g) #18
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.g, %bb.h, %bb.c, %bb.d, %bb.ae
  %.0 = phi i32 [ 0, %bb.g ], [ 0, %bb.c ], [ 0, %bb.ae ], [ 0, %bb.d ], [ 0, %bb.h ], [ 1, %bb.ad ], [ 1, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  ret i32 %.0
}

declare ptr @ssl_get_cipher_by_char(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1
end_hunk_0
