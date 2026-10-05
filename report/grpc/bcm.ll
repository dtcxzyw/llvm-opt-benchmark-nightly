Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
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
  br i1 %i.y, label %.lr.ph.i.i.preheader.i.us, label %_ZL14OPENSSL_memsetPvim.exit.split.preheader

_ZL14OPENSSL_memsetPvim.exit.split.preheader:     ; preds = %_ZL14OPENSSL_memsetPvim.exit
  %i.z = xor i64 %indvar, -1
  %i.aa = add i64 %3, %i.z                        ; 3 uses
  %cond = icmp eq i64 %.02732.i, 1
  %min.iters.check = icmp ult i64 %i.aa, 4
  %n.vec = and i64 %i.aa, -4                      ; 3 uses
  %i.ab = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br label %bb.f

_ZL14OPENSSL_memsetPvim.exit.split.us:            ; preds = %._crit_edge.loopexit.i.i.i.us
  %i.ac = add nsw i32 %i.ad, -1                   ; 2 uses
  %.not14.us = icmp eq i32 %i.ac, 0
  br i1 %.not14.us, label %.split.us, label %.lr.ph.i.i.preheader.i.us, !llvm.loop !984

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
  br i1 %.not15.us, label %_ZL14OPENSSL_memsetPvim.exit.split.us, label %.loopexit, !llvm.loop !984

_ZL14OPENSSL_memsetPvim.exit.split:               ; preds = %bn_in_range_words.exit
  %i.bb = add nsw i32 %i.bc, -1                   ; 2 uses
  %.not14 = icmp eq i32 %i.bb, 0
  br i1 %.not14, label %.split.us, label %bb.f, !llvm.loop !984

.split.us:                                        ; preds = %_ZL14OPENSSL_memsetPvim.exit.split, %_ZL14OPENSSL_memsetPvim.exit.split.us
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 115, ptr noundef nonnull @.str.11, i32 noundef 175) #36
  br label %.loopexit

bb.f:                                             ; preds = %_ZL14OPENSSL_memsetPvim.exit.split.preheader, %_ZL14OPENSSL_memsetPvim.exit.split
  %i.bc = phi i32 [ 99, %_ZL14OPENSSL_memsetPvim.exit.split.preheader ], [ %i.bb, %_ZL14OPENSSL_memsetPvim.exit.split ]
  %i.bd = tail call i32 @BCM_rand_bytes_with_additional_data(ptr noundef %0, i64 noundef %i.w, ptr noundef %4) ; 0 uses
  %i.be = load i64, ptr %i.x, align 8, !tbaa !96
  %i.bf = and i64 %i.be, %i.r
  store i64 %i.bf, ptr %i.x, align 8, !tbaa !96
  br i1 %cond, label %._crit_edge.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.f
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
  br i1 %i.bn, label %middle.block, label %vector.body, !llvm.loop !985

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

._crit_edge.i.i:                                  ; preds = %bb.f, %._crit_edge.loopexit.i.i
  %.013.lcssa.i.i = phi i1 [ true, %bb.f ], [ %i.bp, %._crit_edge.loopexit.i.i ]
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
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !986

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
  br i1 %.not15, label %_ZL14OPENSSL_memsetPvim.exit.split, label %.loopexit, !llvm.loop !984

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
  store i32 0, ptr %i.ag, align 4, !tbaa !989
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
  store i32 0, ptr %i.ai, align 8, !tbaa !990
  %i.aj = getelementptr inbounds nuw i8, ptr %.046, i64 288
  store i64 %i.g, ptr %i.aj, align 8, !tbaa !991
  %i.ak = getelementptr inbounds nuw i8, ptr %.046, i64 304
  store i32 %i.h, ptr %i.ak, align 8, !tbaa !992
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 296
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %.phi.trans.insert101 = getelementptr inbounds nuw i8, ptr %i.ab, i64 296
  %.pre102 = load i32, ptr %.phi.trans.insert101, align 8, !tbaa !990
  %i.am = icmp ugt i32 %.pre102, 4095
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 296 ; 2 uses
  br i1 %i.am, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.thread, %bb.k
  %i.ao = phi ptr [ %i.al, %.thread ], [ %i.an, %bb.k ] ; 3 uses
  %.1109 = phi ptr [ %.046, %.thread ], [ %i.ab, %bb.k ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.1109, i64 288
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !991
  %.not58 = icmp eq i64 %i.aq, %i.g
  br i1 %.not58, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %.1109, i64 304
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !992
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
  store i32 0, ptr %i.at, align 8, !tbaa !990
  %i.av = getelementptr inbounds nuw i8, ptr %.1110, i64 288
  store i64 %i.g, ptr %i.av, align 8, !tbaa !991
  %i.aw = getelementptr inbounds nuw i8, ptr %.1110, i64 304
  store i32 %i.h, ptr %i.aw, align 8, !tbaa !992
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
  %i.ba = load i32, ptr %i.ax, align 8, !tbaa !990
  %i.bb = add i32 %i.ba, 1
  store i32 %i.bb, ptr %i.ax, align 8, !tbaa !990
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
  %i.bg = load i32, ptr %i.ax, align 8, !tbaa !990
  %i.bh = add i32 %i.bg, 1
  store i32 %i.bh, ptr %i.ax, align 8, !tbaa !990
  %.not61 = icmp eq i64 %i.bf, 0
  br i1 %.not61, label %.loopexit69, label %bb.r, !llvm.loop !987

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
begin_hunk_1_@_ZL16bn_mul_recursivePmPKmS1_iiiS_:bb.a
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !96
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.09.i ; 2 uses
  %i.mj = load i64, ptr %i.mi, align 8, !tbaa !96
  %i.mk = and i64 %i.mh, %i.le
  %i.ml = and i64 %i.mj, %i.lf
  %i.mm = or disjoint i64 %i.ml, %i.mk
  store i64 %i.mm, ptr %i.mi, align 8, !tbaa !96
  %i.mn = add nuw i64 %.09.i, 1                   ; 2 uses
  %i.mo = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.mn
  %i.mp = load i64, ptr %i.mo, align 8, !tbaa !96
  %i.mq = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.mn ; 2 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !96
  %i.ms = and i64 %i.mp, %i.le
  %i.mt = and i64 %i.mr, %i.lf
  %i.mu = or disjoint i64 %i.mt, %i.ms
  store i64 %i.mu, ptr %i.mq, align 8, !tbaa !96
  %i.mv = add nuw i64 %.09.i, 2                   ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.mv, %i.y
  br i1 %exitcond.not.i.1, label %.preheader42.i229, label %scalar.ph383, !llvm.loop !1506

.preheader42.i229:                                ; preds = %scalar.ph383.prol.loopexit, %scalar.ph383, %middle.block402
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.v
  br label %.lr.ph.i231

.preheader.i238:                                  ; preds = %.lr.ph.i231
  %i.mx = add nuw nsw i64 %.032.i225, %.032.i
  %i.my = and i64 %i.le, %i.it
  %i.mz = and i64 %i.mx, %i.lf
  %i.na = or disjoint i64 %i.my, %i.mz
  %.not3453.i239 = icmp eq i64 %i.ox, 0
  br i1 %.not3453.i239, label %bn_add_words.exit254, label %.lr.ph59.i246

.lr.ph.i231:                                      ; preds = %.preheader42.i229, %.lr.ph.i231
  %.048.i232 = phi i64 [ %i.ox, %.lr.ph.i231 ], [ %i.y, %.preheader42.i229 ]
  %.02647.i233 = phi ptr [ %i.ow, %.lr.ph.i231 ], [ %i.z, %.preheader42.i229 ] ; 5 uses
  %.02846.i234 = phi ptr [ %i.ov, %.lr.ph.i231 ], [ %i.mw, %.preheader42.i229 ] ; 6 uses
  %.04044.i236 = phi i64 [ %i.ou, %.lr.ph.i231 ], [ 0, %.preheader42.i229 ]
  %i.nb = load i64, ptr %.02846.i234, align 8, !tbaa !96
  %i.nc = load i64, ptr %.02647.i233, align 8, !tbaa !96
  %i.nd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nb, i64 %i.nc) ; 2 uses
  %i.ne = extractvalue { i64, i1 } %i.nd, 1
  %i.nf = extractvalue { i64, i1 } %i.nd, 0
  %i.ng = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nf, i64 %.04044.i236) ; 2 uses
  %i.nh = extractvalue { i64, i1 } %i.ng, 1
  %i.ni = extractvalue { i64, i1 } %i.ng, 0
  %i.nj = or i1 %i.ne, %i.nh
  %i.nk = zext i1 %i.nj to i64
  store i64 %i.ni, ptr %.02846.i234, align 8, !tbaa !96
  %i.nl = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 8 ; 2 uses
  %i.nm = load i64, ptr %i.nl, align 8, !tbaa !96
  %i.nn = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 8
  %i.no = load i64, ptr %i.nn, align 8, !tbaa !96
  %i.np = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nm, i64 %i.no) ; 2 uses
  %i.nq = extractvalue { i64, i1 } %i.np, 1
  %i.nr = extractvalue { i64, i1 } %i.np, 0
  %i.ns = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.nr, i64 %i.nk) ; 2 uses
  %i.nt = extractvalue { i64, i1 } %i.ns, 1
  %i.nu = extractvalue { i64, i1 } %i.ns, 0
  %i.nv = or i1 %i.nq, %i.nt
  %i.nw = zext i1 %i.nv to i64
  store i64 %i.nu, ptr %i.nl, align 8, !tbaa !96
  %i.nx = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 16 ; 2 uses
  %i.ny = load i64, ptr %i.nx, align 8, !tbaa !96
  %i.nz = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 16
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !96
  %i.ob = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ny, i64 %i.oa) ; 2 uses
  %i.oc = extractvalue { i64, i1 } %i.ob, 1
  %i.od = extractvalue { i64, i1 } %i.ob, 0
  %i.oe = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.od, i64 %i.nw) ; 2 uses
  %i.of = extractvalue { i64, i1 } %i.oe, 1
  %i.og = extractvalue { i64, i1 } %i.oe, 0
  %i.oh = or i1 %i.oc, %i.of
  %i.oi = zext i1 %i.oh to i64
  store i64 %i.og, ptr %i.nx, align 8, !tbaa !96
  %i.oj = getelementptr inbounds nuw i8, ptr %.02846.i234, i64 24 ; 2 uses
  %i.ok = load i64, ptr %i.oj, align 8, !tbaa !96
  %i.ol = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 24
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !96
  %i.on = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.ok, i64 %i.om) ; 2 uses
  %i.oo = extractvalue { i64, i1 } %i.on, 1
  %i.op = extractvalue { i64, i1 } %i.on, 0
  %i.oq = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.op, i64 %i.oi) ; 2 uses
  %i.or = extractvalue { i64, i1 } %i.oq, 1
  %i.os = extractvalue { i64, i1 } %i.oq, 0
  %i.ot = or i1 %i.oo, %i.or
  %i.ou = zext i1 %i.ot to i64                    ; 3 uses
  store i64 %i.os, ptr %i.oj, align 8, !tbaa !96
  %i.ov = getelementptr i8, ptr %.02846.i234, i64 32 ; 2 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %.02647.i233, i64 32 ; 2 uses
  %i.ox = add i64 %.048.i232, -4                  ; 4 uses
  %.not.i237 = icmp ult i64 %i.ox, 4
  br i1 %.not.i237, label %.preheader.i238, label %.lr.ph.i231, !llvm.loop !11

.lr.ph59.i246:                                    ; preds = %.preheader.i238, %.lr.ph59.i246
  %.158.i247 = phi i64 [ %i.pk, %.lr.ph59.i246 ], [ %i.ox, %.preheader.i238 ]
  %.12757.i248 = phi ptr [ %i.pj, %.lr.ph59.i246 ], [ %i.ow, %.preheader.i238 ] ; 2 uses
  %.12956.i249 = phi ptr [ %i.pi, %.lr.ph59.i246 ], [ %i.ov, %.preheader.i238 ] ; 3 uses
  %.14154.i251 = phi i64 [ %i.ph, %.lr.ph59.i246 ], [ %i.ou, %.preheader.i238 ]
  %i.oy = load i64, ptr %.12956.i249, align 8, !tbaa !96
  %i.oz = load i64, ptr %.12757.i248, align 8, !tbaa !96
  %i.pa = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.oy, i64 %i.oz) ; 2 uses
  %i.pb = extractvalue { i64, i1 } %i.pa, 1
  %i.pc = extractvalue { i64, i1 } %i.pa, 0
  %i.pd = tail call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %i.pc, i64 %.14154.i251) ; 2 uses
  %i.pe = extractvalue { i64, i1 } %i.pd, 1
  %i.pf = extractvalue { i64, i1 } %i.pd, 0
  %i.pg = or i1 %i.pb, %i.pe
  %i.ph = zext i1 %i.pg to i64                    ; 2 uses
  store i64 %i.pf, ptr %.12956.i249, align 8, !tbaa !96
  %i.pi = getelementptr i8, ptr %.12956.i249, i64 8
  %i.pj = getelementptr inbounds nuw i8, ptr %.12757.i248, i64 8
  %i.pk = add nsw i64 %.158.i247, -1              ; 2 uses
  %.not34.i252 = icmp eq i64 %i.pk, 0
  br i1 %.not34.i252, label %bn_add_words.exit254, label %.lr.ph59.i246, !llvm.loop !12

bn_add_words.exit254:                             ; preds = %.lr.ph59.i246, %.preheader.i238
  %.032.i253 = phi i64 [ %i.ou, %.preheader.i238 ], [ %i.ph, %.lr.ph59.i246 ]
  %i.pl = add nuw nsw i32 %i.s, %3                ; 2 uses
  %i.pm = icmp samesign ult i32 %i.pl, %i.gb
  br i1 %i.pm, label %.lr.ph.preheader, label %.loopexit

.lr.ph.preheader:                                 ; preds = %bn_add_words.exit254
  %i.pn = add i64 %i.na, %.032.i253               ; 2 uses
  %i.po = zext nneg i32 %i.pl to i64              ; 3 uses
  %i.pp = sub nsw i32 %3, %i.s
  %.neg = add nuw nsw i32 %i.s, 1
  %xtraiter428 = and i32 %i.pp, 1
  %lcmp.mod429.not = icmp eq i32 %xtraiter428, 0
  br i1 %lcmp.mod429.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader
  %i.pq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.po ; 2 uses
  %i.pr = load i64, ptr %i.pq, align 8, !tbaa !96 ; 2 uses
  %i.ps = add i64 %i.pr, %i.pn                    ; 2 uses
  store i64 %i.ps, ptr %i.pq, align 8, !tbaa !96
  %i.pt = icmp ult i64 %i.ps, %i.pr
  %i.pu = zext i1 %i.pt to i64
  %indvars.iv.next.prol = add nuw nsw i64 %i.po, 1
  br label %.lr.ph.prol.loopexit

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %indvars.iv.unr = phi i64 [ %i.po, %.lr.ph.preheader ], [ %indvars.iv.next.prol, %.lr.ph.prol ]
  %.0168278.unr = phi i64 [ %i.pn, %.lr.ph.preheader ], [ %i.pu, %.lr.ph.prol ]
  %i.pv = icmp eq i32 %3, %.neg
  br i1 %i.pv, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ %indvars.iv.unr, %.lr.ph.prol.loopexit ] ; 3 uses
  %.0168278 = phi i64 [ %i.qg, %.lr.ph ], [ %.0168278.unr, %.lr.ph.prol.loopexit ]
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.px = load i64, ptr %i.pw, align 8, !tbaa !96 ; 2 uses
  %i.py = add i64 %i.px, %.0168278                ; 2 uses
  store i64 %i.py, ptr %i.pw, align 8, !tbaa !96
  %i.pz = icmp ult i64 %i.py, %i.px
  %i.qa = zext i1 %i.pz to i64
  %i.qb = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  %i.qc = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  %i.qd = load i64, ptr %i.qc, align 8, !tbaa !96 ; 2 uses
  %i.qe = add i64 %i.qd, %i.qa                    ; 2 uses
  store i64 %i.qe, ptr %i.qc, align 8, !tbaa !96
  %i.qf = icmp ult i64 %i.qe, %i.qd
  %i.qg = zext i1 %i.qf to i64
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.qh = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.qi = icmp sgt i32 %i.gb, %i.qh
  br i1 %i.qi, label %.lr.ph, label %.loopexit, !llvm.loop !1507

.loopexit:                                        ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %bn_add_words.exit254, %bb.d, %_ZL14OPENSSL_memsetPvim.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal noundef range(i32 0, 2) i32 @_ZL12aes_init_keyP17evp_cipher_ctx_stPKhS2_i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, i32 noundef %3) #19 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !164
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.e = load i32, ptr %i.d, align 4, !tbaa !171
  %i.f = and i32 %i.e, 63                         ; 3 uses
  %i.g = icmp eq i32 %i.f, 5                      ; 2 uses
  br i1 %i.g, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = icmp eq i32 %i.f, 2                      ; 2 uses
  %i.i = add nsw i32 %i.f, -3
  %or.cond = icmp ult i32 %i.i, -2
  %i.j = icmp ne i32 %3, 0
  %or.cond3 = or i1 %i.j, %or.cond
  br i1 %or.cond3, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !175
  %i.m = shl i32 %i.l, 3
  %i.n = tail call range(i32 0, 2) i32 @aes_nohw_set_encrypt_key(ptr noundef readonly %1, i32 noundef %i.m, ptr noundef %i.b) ; 0 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_decrypt, ptr %i.o, align 8, !tbaa !372
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %spec.store.select70 = select i1 %i.h, ptr @aes_nohw_cbc_encrypt, ptr null
  store ptr %spec.store.select70, ptr %i.p, align 8
  br label %.thread76

.thread:                                          ; preds = %bb.a, %bb.b
  %i.q = phi i1 [ %i.h, %bb.b ], [ false, %bb.a ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.s = load i32, ptr %i.r, align 8, !tbaa !175
  %i.t = shl i32 %i.s, 3
  %i.u = tail call i32 @aes_nohw_set_encrypt_key(ptr noundef %1, i32 noundef %i.t, ptr noundef %i.b) ; 0 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  store ptr @aes_nohw_encrypt, ptr %i.v, align 8, !tbaa !372
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 256 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !80
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  store ptr @aes_nohw_cbc_encrypt, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

bb.e:                                             ; preds = %.thread
  br i1 %i.g, label %bb.f, label %.thread76

bb.f:                                             ; preds = %bb.e
  store ptr @aes_nohw_ctr32_encrypt_blocks, ptr %i.w, align 8, !tbaa !80
  br label %.thread76

.thread76:                                        ; preds = %bb.c, %bb.e, %bb.f, %bb.d
  ret i32 1
}

; Function Attrs: mustprogress nounwind uwtable
define internal noundef i32 @_ZL14aes_cbc_cipherP17evp_cipher_ctx_stPhPKhm(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !167  ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !80   ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.g = load i32, ptr %i.f, align 4, !tbaa !173
  tail call void %i.d(ptr noundef %2, ptr noundef %1, i64 noundef %3, ptr noundef nonnull %i.b, ptr noundef nonnull %i.e, i32 noundef %i.g) #36
  br label %CRYPTO_cbc128_encrypt.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.i = load i32, ptr %i.h, align 4, !tbaa !173
  %.not21 = icmp eq i32 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !372  ; 3 uses
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %3, 0
  br i1 %i.m, label %CRYPTO_cbc128_encrypt.exit, label %.preheader51.i

.preheader51.i:                                   ; preds = %bb.d
  %i.n = icmp ugt i64 %3, 15
  br i1 %i.n, label %.lr.ph.i, label %iter.check

.lr.ph.i:                                         ; preds = %.preheader51.i, %.lr.ph.i
  %.055.i = phi ptr [ %.04553.i, %.lr.ph.i ], [ %i.j, %.preheader51.i ] ; 2 uses
  %.04354.i = phi ptr [ %i.u, %.lr.ph.i ], [ %2, %.preheader51.i ] ; 3 uses
  %.04553.i = phi ptr [ %i.v, %.lr.ph.i ], [ %1, %.preheader51.i ] ; 8 uses
  %.04752.i = phi i64 [ %i.t, %.lr.ph.i ], [ %3, %.preheader51.i ]
  %.0.copyload.i.i.i = load i64, ptr %.04354.i, align 1
  %.0.copyload.i7.i.i = load i64, ptr %.055.i, align 1
  %i.o = xor i64 %.0.copyload.i7.i.i, %.0.copyload.i.i.i
  store i64 %i.o, ptr %.04553.i, align 1
  %i.p = getelementptr inbounds nuw i8, ptr %.04553.i, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %.04354.i, i64 8
  %.0.copyload.i.1.i.i = load i64, ptr %i.q, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %.055.i, i64 8
  %.0.copyload.i7.1.i.i = load i64, ptr %i.r, align 1
  %i.s = xor i64 %.0.copyload.i7.1.i.i, %.0.copyload.i.1.i.i
  store i64 %i.s, ptr %i.p, align 1
  tail call void %i.l(ptr noundef nonnull %.04553.i, ptr noundef nonnull %.04553.i, ptr noundef nonnull %i.b) #36, !inline_history !1518
  %i.t = add i64 %.04752.i, -16                   ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.04354.i, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.04553.i, i64 16 ; 2 uses
  %i.w = icmp ugt i64 %i.t, 15
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.not.i = icmp eq i64 %i.t, 0
  br i1 %.not.i, label %bb.e, label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader51.i
  %.0.lcssa77.i = phi ptr [ %.04553.i, %._crit_edge.i ], [ %i.j, %.preheader51.i ] ; 15 uses
  %.043.lcssa76.i = phi ptr [ %i.u, %._crit_edge.i ], [ %2, %.preheader51.i ] ; 8 uses
  %.045.lcssa75.i = phi ptr [ %i.v, %._crit_edge.i ], [ %1, %.preheader51.i ] ; 18 uses
  %.047.lcssa74.i = phi i64 [ %i.t, %._crit_edge.i ], [ %3, %.preheader51.i ] ; 14 uses
  %.045.lcssa75.i33 = ptrtoaddr ptr %.045.lcssa75.i to i64 ; 3 uses
  %.0.lcssa77.i35 = ptrtoaddr ptr %.0.lcssa77.i to i64 ; 2 uses
  %min.iters.check = icmp ult i64 %.047.lcssa74.i, 4
  br i1 %min.iters.check, label %.preheader50.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %.043.lcssa76.i34 = ptrtoaddr ptr %.043.lcssa76.i to i64
  %i.x = sub i64 %.043.lcssa76.i34, %.045.lcssa75.i33
  %diff.check = icmp ugt i64 %i.x, -32
  %i.y = sub i64 %.0.lcssa77.i35, %.045.lcssa75.i33
  %diff.check36 = icmp ugt i64 %i.y, -32
  %conflict.rdx = or i1 %diff.check, %diff.check36
  br i1 %conflict.rdx, label %.preheader50.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check37 = icmp ult i64 %.047.lcssa74.i, 32
  br i1 %min.iters.check37, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <16 x i8>, ptr %i.z, align 1, !tbaa !80
  %wide.load38 = load <16 x i8>, ptr %i.aa, align 1, !tbaa !80
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load39 = load <16 x i8>, ptr %i.ab, align 1, !tbaa !80
  %wide.load40 = load <16 x i8>, ptr %i.ac, align 1, !tbaa !80
  %i.ad = xor <16 x i8> %wide.load39, %wide.load
  %i.ae = xor <16 x i8> %wide.load40, %wide.load38
  %i.af = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %i.ad, ptr %i.af, align 1, !tbaa !80
  store <16 x i8> %i.ae, ptr %i.ag, align 1, !tbaa !80
  %index.next = add nuw i64 %index, 32
  br label %vector.body, !llvm.loop !1512

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check
  %n.vec41 = and i64 %.047.lcssa74.i, 12          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index42 = phi i64 [ 0, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ah, align 1, !tbaa !80
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %index42
  %wide.load44 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !80
  %i.aj = xor <4 x i8> %wide.load44, %wide.load43
  %i.ak = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %index42
  store <4 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !80
  %index.next45 = add nuw i64 %index42, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec41
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1513

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %.047.lcssa74.i, %n.vec41
  br i1 %cmp.n46, label %iter.check63, label %.preheader50.i.preheader

.preheader50.i.preheader:                         ; preds = %iter.check, %vector.memcheck, %vec.epilog.middle.block
  %.04159.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %iter.check ], [ %n.vec41, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.047.lcssa74.i, 3          ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol

.preheader50.i.prol:                              ; preds = %.preheader50.i.preheader, %.preheader50.i.prol
  %.04159.i.prol = phi i64 [ %i.as, %.preheader50.i.prol ], [ %.04159.i.ph, %.preheader50.i.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.preheader50.i.prol ], [ 0, %.preheader50.i.preheader ]
  %i.am = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i.prol
  %i.an = load i8, ptr %i.am, align 1, !tbaa !80
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i.prol
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !80
  %i.aq = xor i8 %i.ap, %i.an
  %i.ar = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i.prol
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !80
  %i.as = add nuw nsw i64 %.04159.i.prol, 1       ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.preheader50.i.prol.loopexit, label %.preheader50.i.prol, !llvm.loop !1514

.preheader50.i.prol.loopexit:                     ; preds = %.preheader50.i.prol, %.preheader50.i.preheader
  %.04159.i.unr = phi i64 [ %.04159.i.ph, %.preheader50.i.preheader ], [ %i.as, %.preheader50.i.prol ]
  %i.at = sub nsw i64 %.04159.i.ph, %.047.lcssa74.i
  %i.au = icmp ugt i64 %i.at, -4
  br i1 %i.au, label %iter.check63, label %.preheader50.i

.preheader50.i:                                   ; preds = %.preheader50.i.prol.loopexit, %.preheader50.i
  %.04159.i = phi i64 [ %i.bw, %.preheader50.i ], [ %.04159.i.unr, %.preheader50.i.prol.loopexit ] ; 7 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %.04159.i
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !80
  %i.ax = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %.04159.i
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !80
  %i.az = xor i8 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %.04159.i
  store i8 %i.az, ptr %i.ba, align 1, !tbaa !80
  %i.bb = add nuw nsw i64 %.04159.i, 1            ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !80
  %i.be = getelementptr inbounds nuw i8, ptr %.0.lcssa77.i, i64 %i.bb
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !80
  %i.bg = xor i8 %i.bf, %i.bd
  %i.bh = getelementptr inbounds nuw i8, ptr %.045.lcssa75.i, i64 %i.bb
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !80
  %i.bi = add nuw nsw i64 %.04159.i, 2            ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.043.lcssa76.i, i64 %i.bi
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !80
end_hunk_1
