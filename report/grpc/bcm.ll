Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 369
begin_hunk_0_@bn_rand_range_words:bb.a
  %i.h = or i64 %i.g, %i.c                        ; 2 uses
  %i.i = lshr i64 %i.h, 2
  %i.j = or i64 %i.i, %i.h                        ; 2 uses
  %i.k = lshr i64 %i.j, 4
  %i.l = or i64 %i.k, %i.j                        ; 2 uses
  %i.m = lshr i64 %i.l, 8
  %i.n = or i64 %i.m, %i.l                        ; 2 uses
  %i.o = lshr i64 %i.n, 16
  %i.p = or i64 %i.o, %i.n                        ; 2 uses
  %i.q = lshr i64 %i.p, 32
  %i.r = or i64 %i.q, %i.p                        ; 2 uses
  %i.s = getelementptr [8 x i8], ptr %0, i64 %.02732.i ; 2 uses
  %i.t = sub nuw i64 %3, %.02732.i
  %i.u = shl i64 %i.t, 3                          ; 2 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

_ZL14OPENSSL_memsetPvim.exit:                     ; preds = %bb.d, %bb.e
  %i.w = shl i64 %.02732.i, 3                     ; 2 uses
  %i.x = getelementptr i8, ptr %i.s, i64 -8       ; 4 uses
  %i.y = icmp eq i64 %1, 0
  br i1 %i.y, label %.lr.ph.i.i.preheader.i.us, label %_ZL14OPENSSL_memsetPvim.exit.split.preheader.preheader

_ZL14OPENSSL_memsetPvim.exit.split.preheader.preheader: ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %cond = icmp eq i64 %.02732.i, 1
  %i.z = xor i64 %indvar, -1
  %i.aa = add i64 %3, %i.z                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.aa, 4
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %_ZL14OPENSSL_memsetPvim.exit.split.preheader

_ZL14OPENSSL_memsetPvim.exit.split.us:            ; preds = %._crit_edge.loopexit.i.i.i.us
  %i.ac = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not14.us = icmp eq i32 %i.ac, 0
  br i1 %.not14.us, label %.split.us, label %.lr.ph.i.i.preheader.i.us, !llvm.loop !983

.lr.ph.i.i.preheader.i.us:                        ; preds = %_ZL14OPENSSL_memsetPvim.exit, %_ZL14OPENSSL_memsetPvim.exit.split.us
  %i.ad = phi i32 [ %i.ac, %_ZL14OPENSSL_memsetPvim.exit.split.us ], [ 99, %_ZL14OPENSSL_memsetPvim.exit ]
  %i.ae = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %i.w, ptr noundef %4) ; 0 uses
  %i.af = load i64, ptr %i.x, align 8, !tbaa !96
  %i.ag = and i64 %i.af, %i.r
  store i64 %i.ag, ptr %i.x, align 8, !tbaa !96
  br label %.lr.ph.i.i.i.us

.lr.ph.i.i.i.us:                                  ; preds = %.lr.ph.i.i.i.us, %.lr.ph.i.i.preheader.i.us
  %.04353.i.i.i.us = phi i64 [ %i.aw, %.lr.ph.i.i.i.us ], [ 0, %.lr.ph.i.i.preheader.i.us ]
  %.04452.i.i.i.us = phi i64 [ %i.ax, %.lr.ph.i.i.i.us ], [ 0, %.lr.ph.i.i.preheader.i.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04452.i.i.i.us
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !96 ; 5 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04452.i.i.i.us
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !96 ; 3 uses
  %i.al = icmp eq i64 %i.ai, %i.ak
  %.neg.i.i.i.i.i.i.us = sext i1 %i.al to i64
  %i.am = xor i64 %i.ak, %i.ai
  %i.an = sub i64 %i.ai, %i.ak
  %i.ao = xor i64 %i.an, %i.ai
  %i.ap = or i64 %i.ao, %i.am
  %i.aq = xor i64 %i.ap, %i.ai
  %.neg.i.i.i.i.i.us = ashr i64 %i.aq, 63
  %i.ar = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.us) #38, !srcloc !108
  %i.as = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i.us) #38, !srcloc !108 ; 2 uses
  %i.at = and i64 %i.as, %.04353.i.i.i.us
  %i.au = xor i64 %i.as, -1
  %i.av = and i64 %i.ar, %i.au
  %i.aw = or disjoint i64 %i.at, %i.av            ; 2 uses
  %i.ax = add nuw i64 %.04452.i.i.i.us, 1         ; 2 uses
  %exitcond.not.i.i.i.us = icmp eq i64 %i.ax, %.02732.i
  br i1 %exitcond.not.i.i.i.us, label %._crit_edge.loopexit.i.i.i.us, label %.lr.ph.i.i.i.us, !llvm.loop !9

._crit_edge.loopexit.i.i.i.us:                    ; preds = %.lr.ph.i.i.i.us
  %i.ay = trunc i64 %i.aw to i32
  %i.az = lshr i32 %i.ay, 31
  %i.ba = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.az) #38, !srcloc !128
  %.not15.us = icmp eq i32 %i.ba, 0
  br i1 %.not15.us, label %_ZL14OPENSSL_memsetPvim.exit.split.us, label %.loopexit, !llvm.loop !983

_ZL14OPENSSL_memsetPvim.exit.split:               ; preds = %bn_in_range_words.exit
  %i.bb = add nsw i32 %i.bc, -1                   ; 2 uses
  %.not14 = icmp eq i32 %i.bb, 0
  br i1 %.not14, label %.split.us, label %_ZL14OPENSSL_memsetPvim.exit.split.preheader, !llvm.loop !983

.split.us:                                        ; preds = %_ZL14OPENSSL_memsetPvim.exit.split, %_ZL14OPENSSL_memsetPvim.exit.split.us
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.11, i32 noundef 175) #36
  br label %.loopexit

_ZL14OPENSSL_memsetPvim.exit.split.preheader:     ; preds = %_ZL14OPENSSL_memsetPvim.exit.split.preheader.preheader, %_ZL14OPENSSL_memsetPvim.exit.split
  %i.bc = phi i32 [ %i.bb, %_ZL14OPENSSL_memsetPvim.exit.split ], [ 99, %_ZL14OPENSSL_memsetPvim.exit.split.preheader.preheader ]
  %i.bd = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %i.w, ptr noundef %4) ; 0 uses
  %i.be = load i64, ptr %i.x, align 8, !tbaa !96
  %i.bf = and i64 %i.be, %i.r
  store i64 %i.bf, ptr %i.x, align 8, !tbaa !96
  br i1 %cond, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_ZL14OPENSSL_memsetPvim.exit.split.preheader
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader59, label %vector.body

vector.body:                                      ; preds = %.lr.ph.i.i.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.bl, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %vec.phi57 = phi <2 x i64> [ %i.bm, %vector.body ], [ zeroinitializer, %.lr.ph.i.i.preheader ]
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %wide.load = load <2 x i64>, ptr %i.bh, align 8, !tbaa !96
  %wide.load58 = load <2 x i64>, ptr %i.bi, align 8, !tbaa !96
  %i.bj = freeze <2 x i64> %wide.load
  %i.bk = freeze <2 x i64> %wide.load58
  %i.bl = or <2 x i64> %i.bj, %vec.phi            ; 2 uses
  %i.bm = or <2 x i64> %i.bk, %vec.phi57          ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bn = icmp eq i64 %index.next, %n.vec
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !984

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.bm, %i.bl
  %i.bo = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader59

.lr.ph.i.i.preheader59:                           ; preds = %.lr.ph.i.i.preheader, %middle.block
  %.019.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.preheader ], [ %i.ab, %middle.block ]
  %.01318.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.preheader ], [ %i.bo, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa52 = phi i64 [ %i.bo, %middle.block ], [ %i.bt, %.lr.ph.i.i ]
  %i.bp = icmp eq i64 %.lcssa52, 0
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZL14OPENSSL_memsetPvim.exit.split.preheader, %._crit_edge.loopexit.i.i
  %.013.lcssa.i.i = phi i1 [ true, %_ZL14OPENSSL_memsetPvim.exit.split.preheader ], [ %i.bp, %._crit_edge.loopexit.i.i ]
  %i.bq = load i64, ptr %0, align 8, !tbaa !96    ; 4 uses
  br label %.lr.ph.i.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader59, %.lr.ph.i.i
  %.019.i.i = phi i64 [ %i.bu, %.lr.ph.i.i ], [ %.019.i.i.ph, %.lr.ph.i.i.preheader59 ] ; 2 uses
  %.01318.i.i = phi i64 [ %i.bt, %.lr.ph.i.i ], [ %.01318.i.i.ph, %.lr.ph.i.i.preheader59 ]
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.019.i.i
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !96
  %.fr21.i.i = freeze i64 %i.bs
  %i.bt = or i64 %.fr21.i.i, %.01318.i.i          ; 2 uses
  %i.bu = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bu, %.02732.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !985

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %._crit_edge.i.i
  %.04353.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ]
  %.04452.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i ], [ 0, %._crit_edge.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.04452.i.i.i
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !96 ; 5 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04452.i.i.i
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !96 ; 3 uses
  %i.bz = icmp eq i64 %i.bw, %i.by
  %.neg.i.i.i.i.i.i = sext i1 %i.bz to i64
  %i.ca = xor i64 %i.by, %i.bw
  %i.cb = sub i64 %i.bw, %i.by
  %i.cc = xor i64 %i.cb, %i.bw
  %i.cd = or i64 %i.cc, %i.ca
  %i.ce = xor i64 %i.cd, %i.bw
  %.neg.i.i.i.i.i = ashr i64 %i.ce, 63
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !108
  %i.cg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.i) #38, !srcloc !108 ; 2 uses
  %i.ch = and i64 %i.cg, %.04353.i.i.i
  %i.ci = xor i64 %i.cg, -1
  %i.cj = and i64 %i.cf, %i.ci
  %i.ck = or disjoint i64 %i.ch, %i.cj            ; 2 uses
  %i.cl = add nuw i64 %.04452.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.cl, %.02732.i
  br i1 %exitcond.not.i.i.i, label %bn_in_range_words.exit, label %.lr.ph.i.i.i, !llvm.loop !9

bn_in_range_words.exit:                           ; preds = %.lr.ph.i.i.i
  %i.cm = trunc i64 %i.ck to i32
  %i.cn = lshr i32 %i.cm, 31
  %i.co = sub i64 %i.bq, %1
  %i.cp = xor i64 %i.co, %i.bq
  %i.cq = xor i64 %i.bq, %1
  %i.cr = or i64 %i.cp, %i.cq
  %i.cs = xor i64 %i.cr, %i.bq
  %.neg.i.i17.i.i = ashr i64 %i.cs, 63
  %i.ct = trunc nsw i64 %.neg.i.i17.i.i to i32
  %i.cu = xor i32 %i.ct, -1
  %spec.select = select i1 %.013.lcssa.i.i, i32 %i.cu, i32 -1
  %i.cv = and i32 %i.cn, %spec.select
  %i.cw = tail call noundef i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.cv) #38, !srcloc !128
  %.not15 = icmp eq i32 %i.cw, 0
  br i1 %.not15, label %_ZL14OPENSSL_memsetPvim.exit.split, label %.loopexit, !llvm.loop !983

.loopexit:                                        ; preds = %bn_in_range_words.exit, %._crit_edge.loopexit.i.i.i.us, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread, %.split.us
  %.1 = phi i32 [ 0, %_ZL16bn_range_to_maskPmS_mPKmm.exit.thread ], [ 0, %.split.us ], [ 1, %._crit_edge.loopexit.i.i.i.us ], [ 1, %bn_in_range_words.exit ]
  ret i32 %.1
}

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 13 uses
  %3 = alloca %"struct.(anonymous namespace)::rand_thread_state", align 8 ; 4 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [48 x i8], align 16               ; 4 uses
  %i.d = alloca [48 x i8], align 16               ; 4 uses
  %i.e = alloca [48 x i8], align 16               ; 4 uses
  %i.f = icmp eq i64 %1, 0
  br i1 %i.f, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i64 @CRYPTO_get_fork_generation() #36 ; 4 uses
  %i.h = tail call i32 @rand_fork_unsafe_buffering_enabled() #36 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.i = icmp ne i64 %i.g, 0
  %i.j = icmp ne i32 %i.h, 0
  %or.cond = select i1 %i.i, i1 true, i1 %i.j
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @CRYPTO_sysrand(ptr noundef nonnull %i.a, i64 noundef 32) #36
  %i.l = load <16 x i8>, ptr %i.a, align 16, !tbaa !80
  %.phi.trans.insert99 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.pre100 = load i8, ptr %.phi.trans.insert99, align 16, !tbaa !80
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.m = phi i8 [ 0, %bb.c ], [ %.pre100, %bb.d ]
  %i.n = phi <16 x i8> [ zeroinitializer, %bb.c ], [ %i.l, %bb.d ]
  %i.o = load <16 x i8>, ptr %2, align 1, !tbaa !80
  %i.p = xor <16 x i8> %i.n, %i.o
  store <16 x i8> %i.p, ptr %i.a, align 16, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  %4 = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %5 = load <4 x i8>, ptr %i.s, align 1, !tbaa !80
  %6 = load <4 x i8>, ptr %4, align 1
  %i.u = load <16 x i8>, ptr %i.q, align 1, !tbaa !80
  %i.v = load <8 x i8>, ptr %i.t, align 8, !tbaa !80
  %i.w = shufflevector <4 x i8> %5, <4 x i8> %6, <16 x i32> <i32 poison, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.x = insertelement <16 x i8> %i.w, i8 %i.m, i64 0
  %i.y = shufflevector <8 x i8> %i.v, <8 x i8> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.z = shufflevector <16 x i8> %i.x, <16 x i8> %i.y, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %i.aa = xor <16 x i8> %i.z, %i.u
  store <16 x i8> %i.aa, ptr %i.r, align 16, !tbaa !80
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ab = call ptr @CRYPTO_get_thread_local(i32 noundef 1) #36 ; 5 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.f, label %bb.k

bb.f:                                             ; preds = %bb.e
  %i.ad = call ptr @OPENSSL_zalloc(i64 noundef 312) #36 ; 3 uses
  %i.ae = icmp eq ptr %i.ad, null
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = call i32 @CRYPTO_set_thread_local(i32 noundef 1, ptr noundef nonnull %i.ad, ptr noundef nonnull @_ZL22rand_thread_state_freePv) #36
  %.not56 = icmp eq i32 %i.af, 0
  br i1 %.not56, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.046 = phi ptr [ %3, %bb.h ], [ %i.ad, %bb.g ] ; 7 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.046, i64 300
  store i32 0, ptr %i.ag, align 4, !tbaa !988
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.c, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.b, i64 noundef 48) #36
  %i.ah = call i32 @CTR_DRBG_init(ptr noundef nonnull %.046, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i64 noundef 0)
  %.not57 = icmp eq i32 %i.ah, 0
  br i1 %.not57, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  call void @abort() #37
  unreachable

.thread:                                          ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.046, i64 296
  store i32 0, ptr %i.ai, align 8, !tbaa !989
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 288
  store i64 %i.g, ptr %i.aj, align 8, !tbaa !990
  %i.ak = getelementptr inbounds nuw i8, ptr %.046, i64 304
  store i32 %i.h, ptr %i.ak, align 8, !tbaa !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 296
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.pre102 = load i32, ptr %.phi.trans.insert101, align 8, !tbaa !989
  %i.am = icmp ugt i32 %.pre102, 4095
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 296 ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ao = phi ptr [ %i.al, %.thread ], [ %i.an, %bb.k ] ; 3 uses
  %.1109 = phi ptr [ %.046, %.thread ], [ %i.ab, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1109, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !990
  %.not58 = icmp eq i64 %i.aq, %i.g
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.1109, i64 304
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !991
  %.not59 = icmp eq i32 %i.as, %i.h
  br i1 %.not59, label %.peel.begin, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.at = phi ptr [ %i.ao, %bb.m ], [ %i.ao, %bb.l ], [ %i.an, %bb.k ] ; 2 uses
  %.1110 = phi ptr [ %.1109, %bb.m ], [ %.1109, %bb.l ], [ %i.ab, %bb.k ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.e, i8 0, i64 48, i1 false)
  call void @CRYPTO_sysrand_for_seed(ptr noundef nonnull %i.d, i64 noundef 48) #36
  %i.au = call i32 @CTR_DRBG_reseed(ptr noundef nonnull %.1110, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i64 noundef 0)
  %.not60 = icmp eq i32 %i.au, 0
  br i1 %.not60, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @abort() #37
  unreachable

bb.p:                                             ; preds = %bb.n
  store i32 0, ptr %i.at, align 8, !tbaa !989
  %i.av = getelementptr inbounds nuw i8, ptr %.1110, i64 288
  store i64 %i.g, ptr %i.av, align 8, !tbaa !990
  %i.aw = getelementptr inbounds nuw i8, ptr %.1110, i64 304
  store i32 %i.h, ptr %i.aw, align 8, !tbaa !991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %.peel.begin

.peel.begin:                                      ; preds = %bb.m, %bb.p
  %i.ax = phi ptr [ %i.ao, %bb.m ], [ %i.at, %bb.p ] ; 4 uses
  %.1108 = phi ptr [ %.1109, %bb.m ], [ %.1110, %bb.p ] ; 4 uses
  %spec.store.select.peel = call i64 @llvm.umin.i64(i64 %1, i64 65536) ; 3 uses
  %i.ay = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %0, i64 noundef %spec.store.select.peel, ptr noundef nonnull %i.a, i64 noundef 32)
  %.not63.peel = icmp eq i32 %i.ay, 0
  br i1 %.not63.peel, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %.peel.begin
  %i.az = sub nuw i64 %1, %spec.store.select.peel ; 2 uses
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !989
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !989
  %.not61.peel = icmp eq i64 %i.az, 0
  br i1 %.not61.peel, label %.loopexit69, label %.peel.next

.peel.next:                                       ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 %spec.store.select.peel
  br label %bb.r

bb.r:                                             ; preds = %.peel.next, %bb.s
  %.04966 = phi i64 [ %i.az, %.peel.next ], [ %i.bf, %bb.s ] ; 2 uses
  %.05065 = phi ptr [ %i.bc, %.peel.next ], [ %i.be, %bb.s ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %.04966, i64 65536) ; 3 uses
  %i.bd = call i32 @CTR_DRBG_generate(ptr noundef nonnull %.1108, ptr noundef %.05065, i64 noundef %spec.store.select, ptr noundef nonnull %i.a, i64 noundef 0)
  %.not63 = icmp eq i32 %i.bd, 0
  br i1 %.not63, label %.loopexit, label %bb.s

.loopexit:                                        ; preds = %bb.r, %.peel.begin
  call void @abort() #37
  unreachable

bb.s:                                             ; preds = %bb.r
  %i.be = getelementptr inbounds nuw i8, ptr %.05065, i64 %spec.store.select
  %i.bf = sub nuw i64 %.04966, %spec.store.select ; 2 uses
  %i.bg = load i32, ptr %i.ax, align 8, !tbaa !989
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !989
  %.not61 = icmp eq i64 %i.bf, 0
  br i1 %.not61, label %.loopexit69, label %bb.r, !llvm.loop !986

.loopexit69:                                      ; preds = %bb.s, %bb.q
  %i.bi = icmp eq ptr %.1108, %3
  br i1 %i.bi, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.loopexit69
  call void @OPENSSL_cleanse(ptr noundef nonnull %.1108, i64 noundef 288) #36
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %.loopexit69
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.v

bb.v:                                             ; preds = %bb.a, %bb.u
  ret i32 0
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @BN_pseudo_rand_range(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = tail call range(i32 0, 2) i32 @BN_rand_range_ex(ptr noundef %0, i64 noundef 0, ptr noundef readonly %1)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @bn_rshift_words(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 63                           ; 3 uses
  %i.b = lshr i32 %2, 6                           ; 2 uses
  %i.c = zext nneg i32 %i.b to i64                ; 16 uses
  %.not = icmp ugt i64 %3, %i.c
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %_ZL14OPENSSL_memsetPvim.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = shl nuw nsw i64 %3, 3
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 0, i64 %i.e, i1 false)
  br label %_ZL14OPENSSL_memsetPvim.exit

bb.d:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %i.a, 0
  br i1 %i.f, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.g = add i64 %3, -1                           ; 4 uses
  %i.h = icmp ugt i64 %i.g, %i.c
  %i.i = zext nneg i32 %i.a to i64                ; 5 uses
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.j = sub nuw nsw i32 64, %i.a
  %i.k = zext nneg i32 %i.j to i64                ; 4 uses
end_hunk_0
