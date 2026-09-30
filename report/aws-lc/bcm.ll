Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@bn_is_bit_set_words:bb.a
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !80
  %i.e = lshr i64 %i.d, %i.b
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden void @bn_mod_inverse0_prime_mont_small(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !122
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ne i64 %2, %i.d
  %i.f = icmp ugt i64 %2, 9
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.loopexit.sink.split, label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %bb.c
  %i.h = shl nuw nsw i64 %2, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !123
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %i.j, i64 %i.h, i1 false)
  %.pre = load i64, ptr %i.a, align 16, !tbaa !80 ; 3 uses
  %i.k = icmp ugt i64 %.pre, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %OPENSSL_memcpy.exit
  %i.l = add i64 %.pre, -2
  br label %.loopexit.sink.split

bb.e:                                             ; preds = %OPENSSL_memcpy.exit
  %i.m = or disjoint i64 %.pre, -2
  store i64 %i.m, ptr %i.a, align 16, !tbaa !80
  %.not22 = icmp eq i64 %2, 1
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80   ; 2 uses
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %i.n, align 8, !tbaa !80
  %.not = icmp ne i64 %i.o, 0
  %exitcond.not = icmp eq i64 %2, 2
  %or.cond21 = or i1 %.not, %exitcond.not
  br i1 %or.cond21, label %.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.lr.ph
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 16, !tbaa !80  ; 2 uses
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 16, !tbaa !80
  %.not.1 = icmp ne i64 %i.r, 0
  %exitcond.not.1 = icmp eq i64 %2, 3
  %or.cond21.1 = or i1 %.not.1, %exitcond.not.1
  br i1 %or.cond21.1, label %.loopexit, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80   ; 2 uses
  %i.v = add i64 %i.u, -1
  store i64 %i.v, ptr %i.t, align 8, !tbaa !80
  %.not.2 = icmp ne i64 %i.u, 0
  %exitcond.not.2 = icmp eq i64 %2, 4
  %or.cond21.2 = or i1 %.not.2, %exitcond.not.2
  br i1 %or.cond21.2, label %.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.x = load i64, ptr %i.w, align 16, !tbaa !80  ; 2 uses
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 16, !tbaa !80
  %.not.3 = icmp ne i64 %i.x, 0
  %exitcond.not.3 = icmp eq i64 %2, 5
  %or.cond21.3 = or i1 %.not.3, %exitcond.not.3
  br i1 %or.cond21.3, label %.loopexit, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80  ; 2 uses
  %i.ab = add i64 %i.aa, -1
  store i64 %i.ab, ptr %i.z, align 8, !tbaa !80
  %.not.4 = icmp ne i64 %i.aa, 0
  %exitcond.not.4 = icmp eq i64 %2, 6
  %or.cond21.4 = or i1 %.not.4, %exitcond.not.4
  br i1 %or.cond21.4, label %.loopexit, label %.lr.ph.5

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 16, !tbaa !80 ; 2 uses
  %i.ae = add i64 %i.ad, -1
  store i64 %i.ae, ptr %i.ac, align 16, !tbaa !80
  %.not.5 = icmp ne i64 %i.ad, 0
  %exitcond.not.5 = icmp eq i64 %2, 7
  %or.cond21.5 = or i1 %.not.5, %exitcond.not.5
  br i1 %or.cond21.5, label %.loopexit, label %.lr.ph.6

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 56 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !80 ; 2 uses
  %i.ah = add i64 %i.ag, -1
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !80
  %.not.6 = icmp ne i64 %i.ag, 0
  %exitcond.not.6 = icmp eq i64 %2, 8
  %or.cond21.6 = or i1 %.not.6, %exitcond.not.6
  br i1 %or.cond21.6, label %.loopexit, label %.lr.ph.7

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 16, !tbaa !80
  %i.ak = add i64 %i.aj, -1
  store i64 %i.ak, ptr %i.ai, align 16, !tbaa !80
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.c, %bb.d
  %.sink = phi i64 [ %i.l, %bb.d ], [ -1, %bb.c ]
  store i64 %.sink, ptr %i.a, align 16, !tbaa !80
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.loopexit.sink.split, %bb.e
  call void @bn_mod_exp_mont_small(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %i.a, i64 noundef %2, ptr noundef %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @BN_mod_exp_mont_consttime(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef captures(none) %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [696 x i64], align 64             ; 4 uses
  %6 = alloca %struct.bignum_st, align 8          ; 33 uses
  %7 = alloca %struct.bignum_st, align 8          ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %BN_is_odd.exit, label %BN_is_odd.exit.thread

BN_is_odd.exit:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !92     ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80   ; 2 uses
  %i.g = and i64 %i.f, 1
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %BN_is_odd.exit.thread, label %bb.b

BN_is_odd.exit.thread:                            ; preds = %bb.a, %BN_is_odd.exit
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 104, ptr noundef nonnull @.str.4, i32 noundef 835) #46
  br label %bb.cg

bb.b:                                             ; preds = %BN_is_odd.exit
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.i = load i32, ptr %i.h, align 8, !tbaa !91
  %.not257 = icmp eq i32 %i.i, 0
  br i1 %.not257, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 109, ptr noundef nonnull @.str.4, i32 noundef 839) #46
  br label %bb.cg

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !91
  %.not258 = icmp eq i32 %i.k, 0
  br i1 %.not258, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr %1, align 8, !tbaa !92
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !93   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %i.p = zext nneg i32 %i.c to i64                ; 3 uses
  %i.q = tail call fastcc i32 @bn_cmp_words_consttime(ptr noundef %i.l, i64 noundef %i.o, ptr noundef nonnull %i.e, i64 noundef %i.p)
  %i.r = icmp sgt i32 %i.q, -1
  %i.s = zext i1 %i.r to i32
  %i.t = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %i.s) #47, !srcloc !120
  %.not259 = icmp eq i32 %i.t, 0
  br i1 %.not259, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 107, ptr noundef nonnull @.str.4, i32 noundef 845) #46
  br label %bb.cg

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 23 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !93   ; 2 uses
  %i.w = shl i32 %i.v, 6                          ; 7 uses
  %i.x = icmp eq i32 %i.v, 0
  br i1 %i.x, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.y = and i64 %i.f, -2                         ; 3 uses
  %.not289 = icmp eq i32 %i.c, 1
  br i1 %.not289, label %BN_abs_is_word.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.h
  %i.z = add nsw i64 %i.p, -1                     ; 2 uses
  %min.iters.check400 = icmp ult i32 %i.c, 5
  br i1 %min.iters.check400, label %.lr.ph.i.preheader412, label %vector.ph401

vector.ph401:                                     ; preds = %.lr.ph.i.preheader
  %n.vec402 = and i64 %i.z, -4                    ; 3 uses
  %i.aa = or disjoint i64 %n.vec402, 1
  %i.ab = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.y, i64 0
  br label %vector.body403

vector.body403:                                   ; preds = %vector.body403, %vector.ph401
  %index404 = phi i64 [ 0, %vector.ph401 ], [ %index.next408, %vector.body403 ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ab, %vector.ph401 ], [ %i.af, %vector.body403 ]
  %vec.phi405 = phi <2 x i64> [ zeroinitializer, %vector.ph401 ], [ %i.ag, %vector.body403 ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %index404 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %wide.load406 = load <2 x i64>, ptr %i.ad, align 8, !tbaa !80
  %wide.load407 = load <2 x i64>, ptr %i.ae, align 8, !tbaa !80
  %i.af = or <2 x i64> %wide.load406, %vec.phi    ; 2 uses
  %i.ag = or <2 x i64> %wide.load407, %vec.phi405 ; 2 uses
  %index.next408 = add nuw i64 %index404, 4       ; 2 uses
  %i.ah = icmp eq i64 %index.next408, %n.vec402
  br i1 %i.ah, label %middle.block409, label %vector.body403, !llvm.loop !1223

middle.block409:                                  ; preds = %vector.body403
  %bin.rdx = or <2 x i64> %i.ag, %i.af
  %i.ai = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n410 = icmp eq i64 %i.z, %n.vec402
  br i1 %cmp.n410, label %BN_abs_is_word.exit, label %.lr.ph.i.preheader412

.lr.ph.i.preheader412:                            ; preds = %.lr.ph.i.preheader, %middle.block409
  %indvars.iv.i.ph = phi i64 [ 1, %.lr.ph.i.preheader ], [ %i.aa, %middle.block409 ]
  %.01113.i.ph = phi i64 [ %i.y, %.lr.ph.i.preheader ], [ %i.ai, %middle.block409 ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader412, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ %indvars.iv.i.ph, %.lr.ph.i.preheader412 ] ; 2 uses
  %.01113.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.01113.i.ph, %.lr.ph.i.preheader412 ]
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !80
  %i.al = or i64 %i.ak, %.01113.i                 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %i.p
  br i1 %exitcond.not.i, label %BN_abs_is_word.exit, label %.lr.ph.i, !llvm.loop !1224

BN_abs_is_word.exit:                              ; preds = %.lr.ph.i, %middle.block409, %bb.h
  %.012.in.in.i = phi i64 [ %i.y, %bb.h ], [ %i.ai, %middle.block409 ], [ %i.al, %.lr.ph.i ]
  %.012.in.i.not = icmp eq i64 %.012.in.in.i, 0
  br i1 %.012.in.i.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %BN_abs_is_word.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.am, align 8, !tbaa !91
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.an, align 8, !tbaa !93
  br label %bb.cg

bb.j:                                             ; preds = %BN_abs_is_word.exit
  %i.ao = tail call i32 @BN_one(ptr noundef %0)
  br label %bb.cg

bb.k:                                             ; preds = %bb.g
  %i.ap = icmp eq ptr %5, null
  br i1 %i.ap, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = tail call ptr @BN_MONT_CTX_new_consttime(ptr noundef nonnull %3, ptr noundef %4) ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.loopexit294, label %._crit_edge355

._crit_edge355:                                   ; preds = %bb.l
  %.pre = load i32, ptr %i.m, align 8, !tbaa !93
  br label %bb.m

bb.m:                                             ; preds = %._crit_edge355, %bb.k
  %i.as = phi i32 [ %i.n, %bb.k ], [ %.pre, %._crit_edge355 ]
  %.0242 = phi ptr [ null, %bb.k ], [ %i.aq, %._crit_edge355 ] ; 18 uses
  %.0224 = phi ptr [ %5, %bb.k ], [ %i.aq, %._crit_edge355 ] ; 17 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0224, i64 24
  %i.au = getelementptr inbounds nuw i8, ptr %.0224, i64 32
  %i.av = load i32, ptr %i.au, align 8, !tbaa !122 ; 19 uses
  %i.aw = icmp eq i32 %i.as, 16
  br i1 %i.aw, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.ax = load i32, ptr %i.u, align 8, !tbaa !93
  %i.ay = icmp eq i32 %i.ax, 16
  br i1 %i.ay, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  %i.az = tail call i32 @BN_num_bits(ptr noundef nonnull %3)
  %i.ba = icmp eq i32 %i.az, 1024
  br i1 %i.ba, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.bb = load i32, ptr getelementptr inbounds nuw (i8, ptr @OPENSSL_ia32cap_P, i64 8), align 8, !tbaa !73 ; 2 uses
  %i.bc = and i32 %i.bb, 524552
  %or.cond6.not.i = icmp eq i32 %i.bc, 524552
  %i.bd = and i32 %i.bb, 32
  %.not260288 = icmp eq i32 %i.bd, 0
  %.not260 = or i1 %or.cond6.not.i, %.not260288
  br i1 %.not260, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.be = tail call i32 @bn_wexpand(ptr noundef %0, i64 noundef 16)
  %.not274 = icmp eq i32 %i.be, 0
  br i1 %.not274, label %.loopexit294, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = load ptr, ptr %0, align 8, !tbaa !92
  %i.bg = load ptr, ptr %1, align 8, !tbaa !92
  %i.bh = load ptr, ptr %2, align 8, !tbaa !92
  %i.bi = load ptr, ptr %3, align 8, !tbaa !92
  %i.bj = load ptr, ptr %.0224, align 8, !tbaa !124
  %i.bk = getelementptr inbounds nuw i8, ptr %.0224, i64 48
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !80
  call void @RSAZ_1024_mod_exp_avx2(ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bh, ptr noundef %i.bi, ptr noundef %i.bj, i64 noundef %i.bl, ptr noundef nonnull %i.a)
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 16, ptr %i.bm, align 8, !tbaa !93
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 0, ptr %i.bn, align 8, !tbaa !91
  br label %.loopexit294

bb.s:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.bo = sext i32 %i.av to i64                   ; 24 uses
  %i.bp = mul nsw i64 %i.bo, 280                  ; 19 uses
  %i.bq = icmp ugt i64 %i.bp, 5568
  br i1 %i.bq, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.br = add nsw i64 %i.bp, 64
  %i.bs = tail call ptr @OPENSSL_zalloc(i64 noundef %i.br) #46 ; 4 uses
  %i.bt = icmp eq ptr %i.bs, null
  br i1 %i.bt, label %.loopexit294, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bu = ptrtoint ptr %i.bs to i64
  %i.bv = sub i64 0, %i.bu
  %i.bw = and i64 %i.bv, 63
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bw
  br label %OPENSSL_memset.exit

bb.v:                                             ; preds = %bb.s
  %i.by = icmp eq i32 %i.av, 0
  br i1 %i.by, label %OPENSSL_memset.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.memset.p0.i64(ptr nonnull align 64 %i.a, i8 0, i64 %i.bp, i1 false)
  br label %OPENSSL_memset.exit

OPENSSL_memset.exit:                              ; preds = %bb.w, %bb.v, %bb.u
  %.0240 = phi ptr [ %i.bs, %bb.u ], [ null, %bb.v ], [ null, %bb.w ] ; 15 uses
  %.1237 = phi ptr [ %i.bx, %bb.u ], [ %i.a, %bb.v ], [ %i.a, %bb.w ] ; 35 uses
  %i.bz = shl nsw i32 %i.av, 5
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %.1237, i64 %i.ca ; 2 uses
  store ptr %i.cb, ptr %6, align 8, !tbaa !92
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.bo
  store ptr %i.cc, ptr %7, align 8, !tbaa !92
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store i32 0, ptr %i.cd, align 8, !tbaa !93
  %i.ce = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i32 0, ptr %i.ce, align 8, !tbaa !93
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 12
  store i32 %i.av, ptr %i.cf, align 4, !tbaa !94
  %i.cg = getelementptr inbounds nuw i8, ptr %6, i64 12
  store i32 %i.av, ptr %i.cg, align 4, !tbaa !94
  %i.ch = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 0, ptr %i.ch, align 8, !tbaa !91
  %i.ci = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.ci, align 8, !tbaa !91
  %i.cj = getelementptr inbounds nuw i8, ptr %7, i64 20
  store i32 2, ptr %i.cj, align 4, !tbaa !95
  %i.ck = getelementptr inbounds nuw i8, ptr %6, i64 20
  store i32 2, ptr %i.ck, align 4, !tbaa !95
  %i.cl = call i32 @bn_one_to_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not261 = icmp eq i32 %i.cl, 0
  br i1 %.not261, label %.loopexit294, label %bb.x

bb.x:                                             ; preds = %OPENSSL_memset.exit
  %i.cm = call i32 @bn_resize_words(ptr noundef nonnull %6, i64 noundef %i.bo)
  %.not262 = icmp eq i32 %i.cm, 0
  br i1 %.not262, label %.loopexit294, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = call range(i32 0, 2) i32 @BN_mod_mul_montgomery(ptr noundef nonnull %7, ptr noundef nonnull readonly %1, ptr noundef nonnull %.0224, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not263 = icmp eq i32 %i.cn, 0
  br i1 %.not263, label %.loopexit294, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.co = call i32 @bn_resize_words(ptr noundef nonnull %7, i64 noundef %i.bo)
  %.not264 = icmp eq i32 %i.co, 0
  br i1 %.not264, label %.loopexit294, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cp = icmp sgt i32 %i.av, 1
  br i1 %i.cp, label %bb.ab, label %bb.ba

bb.ab:                                            ; preds = %bb.aa
  %i.cq = load ptr, ptr %7, align 8, !tbaa !92    ; 6 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %i.bo ; 20 uses
  %i.cs = load ptr, ptr %i.at, align 8, !tbaa !123 ; 7 uses
  %wide.trip.count = zext nneg i32 %i.av to i64   ; 5 uses
  %min.iters.check = icmp ult i32 %i.av, 14
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.ab
  %i.ct = ptrtoaddr ptr %i.cs to i64
  %i.cu = ptrtoaddr ptr %i.cq to i64
  %i.cv = shl nuw nsw i64 %i.bo, 3
  %i.cw = add i64 %i.cv, %i.cu
  %i.cx = sub i64 %i.ct, %i.cw
  %diff.check = icmp ugt i64 %i.cx, -32
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 2147483644   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %index ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load = load <2 x i64>, ptr %i.cy, align 8, !tbaa !80
  %wide.load398 = load <2 x i64>, ptr %i.cz, align 8, !tbaa !80
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %index ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  store <2 x i64> %wide.load, ptr %i.da, align 8, !tbaa !80
  store <2 x i64> %wide.load398, ptr %i.db, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dc = icmp eq i64 %index.next, %n.vec
  br i1 %i.dc, label %middle.block, label %vector.body, !llvm.loop !1225

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.preheader292.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.ab, %middle.block
  %indvars.iv341.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.ab ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv341.prol = phi i64 [ %indvars.iv.next342.prol, %scalar.ph.prol ], [ %indvars.iv341.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv341.prol
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !80
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv341.prol
  store i64 %i.de, ptr %i.df, align 8, !tbaa !80
  %indvars.iv.next342.prol = add nuw nsw i64 %indvars.iv341.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1226

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv341.unr = phi i64 [ %indvars.iv341.ph, %scalar.ph.preheader ], [ %indvars.iv.next342.prol, %scalar.ph.prol ]
  %i.dg = sub nsw i64 %indvars.iv341.ph, %wide.trip.count
  %i.dh = icmp ugt i64 %i.dg, -4
  br i1 %i.dh, label %.preheader292.preheader, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv341 = phi i64 [ %indvars.iv.next342.3, %scalar.ph ], [ %indvars.iv341.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv341
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !80
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv341
  store i64 %i.dj, ptr %i.dk, align 8, !tbaa !80
  %indvars.iv.next342 = add nuw nsw i64 %indvars.iv341, 1 ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next342
  %i.dm = load i64, ptr %i.dl, align 8, !tbaa !80
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next342
  store i64 %i.dm, ptr %i.dn, align 8, !tbaa !80
  %indvars.iv.next342.1 = add nuw nsw i64 %indvars.iv341, 2 ; 2 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next342.1
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !80
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next342.1
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !80
  %indvars.iv.next342.2 = add nuw nsw i64 %indvars.iv341, 3 ; 2 uses
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %indvars.iv.next342.2
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !80
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.cr, i64 %indvars.iv.next342.2
  store i64 %i.ds, ptr %i.dt, align 8, !tbaa !80
  %indvars.iv.next342.3 = add nuw nsw i64 %indvars.iv341, 4 ; 2 uses
  %exitcond344.not.3 = icmp eq i64 %indvars.iv.next342.3, %wide.trip.count
  br i1 %exitcond344.not.3, label %.preheader292.preheader, label %scalar.ph, !llvm.loop !1227

.preheader292.preheader:                          ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.du = getelementptr inbounds nuw i8, ptr %.0224, i64 48 ; 14 uses
  %i.dv = load ptr, ptr %6, align 8, !tbaa !92    ; 43 uses
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef 0) #46
  %i.dw = load i32, ptr %i.cd, align 8, !tbaa !93
  %i.dx = sext i32 %i.dw to i64
  call void @bn_scatter5(ptr noundef nonnull %i.cq, i64 noundef %i.dx, ptr noundef nonnull %.1237, i64 noundef 1) #46
  %i.dy = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef 2) #46
  %i.dz = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef 4) #46
  %i.ea = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef 8) #46
  %i.eb = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef 16) #46
  br label %.preheader292

.preheader292:                                    ; preds = %.preheader292.preheader, %._crit_edge314
  %indvars.iv345 = phi i64 [ 3, %.preheader292.preheader ], [ %indvars.iv.next346, %._crit_edge314 ] ; 6 uses
  %i.ec = trunc nuw nsw i64 %indvars.iv345 to i32
  %i.ed = add nsw i32 %i.ec, -1
  call void @bn_mul_mont_gather5(ptr noundef %i.dv, ptr noundef nonnull %i.cq, ptr noundef nonnull %.1237, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i32 noundef %i.av, i32 noundef %i.ed) #46
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef %indvars.iv345) #46
  %i.ee = icmp samesign ult i64 %indvars.iv345, 16
  br i1 %i.ee, label %.lr.ph313.preheader, label %._crit_edge314

.lr.ph313.preheader:                              ; preds = %.preheader292
  %i.ef = trunc nuw nsw i64 %indvars.iv345 to i32
  br label %.lr.ph313

._crit_edge314:                                   ; preds = %.lr.ph313, %.preheader292
  %indvars.iv.next346 = add nuw nsw i64 %indvars.iv345, 2
  %i.eg = icmp samesign ult i64 %indvars.iv345, 30
  br i1 %i.eg, label %.preheader292, label %bb.ac, !llvm.loop !1228

.lr.ph313:                                        ; preds = %.lr.ph313.preheader, %.lr.ph313
  %.0223.in311 = phi i32 [ %.0223, %.lr.ph313 ], [ %i.ef, %.lr.ph313.preheader ] ; 2 uses
  %.0223 = shl nuw nsw i32 %.0223.in311, 1        ; 2 uses
  %i.eh = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  %i.ei = zext nneg i32 %.0223 to i64
  call void @bn_scatter5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef %i.ei) #46
  %i.ej = icmp samesign ult i32 %.0223.in311, 8
  br i1 %i.ej, label %.lr.ph313, label %._crit_edge314, !llvm.loop !1229

bb.ac:                                            ; preds = %._crit_edge314
  %i.ek = add nsw i32 %i.w, -1                    ; 2 uses
  %i.el = srem i32 %i.ek, 5                       ; 6 uses
  %i.em = icmp sgt i32 %i.el, -1
  br i1 %i.em, label %.lr.ph320.preheader, label %._crit_edge321

.lr.ph320.preheader:                              ; preds = %bb.ac
  %i.en = add i32 %i.w, -1                        ; 6 uses
  %i.eo = zext i32 %i.en to i64                   ; 5 uses
  %.not387 = icmp sgt i32 %i.en, -1
  br i1 %.not387, label %bb.ad, label %BN_is_bit_set.exit

bb.ad:                                            ; preds = %.lr.ph320.preheader
  %i.ep = load i32, ptr %i.u, align 8, !tbaa !93
  %i.eq = sext i32 %i.ep to i64
  %i.er = lshr i64 %i.eo, 6                       ; 2 uses
  %.not.i.i = icmp ult i64 %i.er, %i.eq
  br i1 %.not.i.i, label %bb.ae, label %BN_is_bit_set.exit

bb.ae:                                            ; preds = %bb.ad
  %i.es = load ptr, ptr %2, align 8, !tbaa !92
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %i.er
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !80
  %i.ev = lshr i64 %i.eu, 63
  %i.ew = trunc nuw nsw i64 %i.ev to i32
  br label %BN_is_bit_set.exit

BN_is_bit_set.exit:                               ; preds = %.lr.ph320.preheader, %bb.ad, %bb.ae
  %.0.i277 = phi i32 [ 0, %.lr.ph320.preheader ], [ %i.ew, %bb.ae ], [ 0, %bb.ad ] ; 2 uses
  %indvars.iv.next349 = add nsw i64 %i.eo, -1
  %.not420 = icmp eq i32 %i.el, 0
  br i1 %.not420, label %._crit_edge321.loopexit, label %.lr.ph320.1

.lr.ph320.1:                                      ; preds = %BN_is_bit_set.exit
  %i.ex = shl nsw i32 %.0.i277, 1                 ; 3 uses
  %.not387.1 = icmp ult i32 %i.en, -2147483647
  br i1 %.not387.1, label %bb.af, label %BN_is_bit_set.exit.1

bb.af:                                            ; preds = %.lr.ph320.1
  %i.ey = load i32, ptr %i.u, align 8, !tbaa !93
  %i.ez = sext i32 %i.ey to i64
  %i.fa = lshr i64 %indvars.iv.next349, 6         ; 2 uses
  %.not.i.i.1 = icmp ult i64 %i.fa, %i.ez
  br i1 %.not.i.i.1, label %bb.ag, label %BN_is_bit_set.exit.1

bb.ag:                                            ; preds = %bb.af
  %i.fb = load ptr, ptr %2, align 8, !tbaa !92
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fa
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !80
  %i.fe = lshr i64 %i.fd, 62
  %i.ff = trunc nuw nsw i64 %i.fe to i32
  %i.fg = and i32 %i.ff, 1
  %i.fh = or disjoint i32 %i.fg, %i.ex
  br label %BN_is_bit_set.exit.1

BN_is_bit_set.exit.1:                             ; preds = %bb.ag, %bb.af, %.lr.ph320.1
  %.0.i277.1 = phi i32 [ %i.ex, %.lr.ph320.1 ], [ %i.fh, %bb.ag ], [ %i.ex, %bb.af ] ; 2 uses
  %indvars.iv.next349.1 = add nsw i64 %i.eo, -2
  %i.fi = icmp sgt i32 %i.el, 1
  br i1 %i.fi, label %.lr.ph320.2, label %._crit_edge321.loopexit

.lr.ph320.2:                                      ; preds = %BN_is_bit_set.exit.1
  %i.fj = shl nsw i32 %.0.i277.1, 1               ; 3 uses
  %.not387.2 = icmp ult i32 %i.en, -2147483646
  br i1 %.not387.2, label %bb.ah, label %BN_is_bit_set.exit.2

bb.ah:                                            ; preds = %.lr.ph320.2
  %i.fk = load i32, ptr %i.u, align 8, !tbaa !93
  %i.fl = sext i32 %i.fk to i64
  %i.fm = lshr i64 %indvars.iv.next349.1, 6       ; 2 uses
  %.not.i.i.2 = icmp ult i64 %i.fm, %i.fl
  br i1 %.not.i.i.2, label %bb.ai, label %BN_is_bit_set.exit.2

bb.ai:                                            ; preds = %bb.ah
  %i.fn = load ptr, ptr %2, align 8, !tbaa !92
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fm
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !80
  %i.fq = lshr i64 %i.fp, 61
  %i.fr = trunc nuw nsw i64 %i.fq to i32
  %i.fs = and i32 %i.fr, 1
  %i.ft = or disjoint i32 %i.fs, %i.fj
  br label %BN_is_bit_set.exit.2

BN_is_bit_set.exit.2:                             ; preds = %bb.ai, %bb.ah, %.lr.ph320.2
  %.0.i277.2 = phi i32 [ %i.fj, %.lr.ph320.2 ], [ %i.ft, %bb.ai ], [ %i.fj, %bb.ah ] ; 2 uses
  %indvars.iv.next349.2 = add nsw i64 %i.eo, -3
  %.not421 = icmp eq i32 %i.el, 2
  br i1 %.not421, label %._crit_edge321.loopexit, label %.lr.ph320.3

.lr.ph320.3:                                      ; preds = %BN_is_bit_set.exit.2
  %i.fu = shl i32 %.0.i277.2, 1                   ; 3 uses
  %.not387.3 = icmp ult i32 %i.en, -2147483645
  br i1 %.not387.3, label %bb.aj, label %BN_is_bit_set.exit.3

bb.aj:                                            ; preds = %.lr.ph320.3
  %i.fv = load i32, ptr %i.u, align 8, !tbaa !93
  %i.fw = sext i32 %i.fv to i64
  %i.fx = lshr i64 %indvars.iv.next349.2, 6       ; 2 uses
  %.not.i.i.3 = icmp ult i64 %i.fx, %i.fw
  br i1 %.not.i.i.3, label %bb.ak, label %BN_is_bit_set.exit.3

bb.ak:                                            ; preds = %bb.aj
  %i.fy = load ptr, ptr %2, align 8, !tbaa !92
  %i.fz = getelementptr inbounds nuw [8 x i8], ptr %i.fy, i64 %i.fx
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !80
  %i.gb = lshr i64 %i.ga, 60
  %i.gc = trunc nuw nsw i64 %i.gb to i32
  %i.gd = and i32 %i.gc, 1
  %i.ge = or disjoint i32 %i.gd, %i.fu
  br label %BN_is_bit_set.exit.3

BN_is_bit_set.exit.3:                             ; preds = %bb.ak, %bb.aj, %.lr.ph320.3
  %.0.i277.3 = phi i32 [ %i.fu, %.lr.ph320.3 ], [ %i.ge, %bb.ak ], [ %i.fu, %bb.aj ] ; 2 uses
  %indvars.iv.next349.3 = add nsw i64 %i.eo, -4
  %i.gf = icmp sgt i32 %i.el, 3
  br i1 %i.gf, label %.lr.ph320.4, label %._crit_edge321.loopexit

.lr.ph320.4:                                      ; preds = %BN_is_bit_set.exit.3
  %i.gg = shl i32 %.0.i277.3, 1                   ; 3 uses
  %.not387.4 = icmp ult i32 %i.en, -2147483644
  br i1 %.not387.4, label %bb.al, label %._crit_edge321.loopexit

bb.al:                                            ; preds = %.lr.ph320.4
  %i.gh = load i32, ptr %i.u, align 8, !tbaa !93
  %i.gi = sext i32 %i.gh to i64
  %i.gj = lshr i64 %indvars.iv.next349.3, 6       ; 2 uses
  %.not.i.i.4 = icmp ult i64 %i.gj, %i.gi
  br i1 %.not.i.i.4, label %bb.am, label %._crit_edge321.loopexit

bb.am:                                            ; preds = %bb.al
  %i.gk = load ptr, ptr %2, align 8, !tbaa !92
  %i.gl = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gj
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !80
  %i.gn = lshr i64 %i.gm, 59
  %i.go = trunc nuw nsw i64 %i.gn to i32
  %i.gp = and i32 %i.go, 1
  %i.gq = or disjoint i32 %i.gp, %i.gg
  br label %._crit_edge321.loopexit

._crit_edge321.loopexit:                          ; preds = %.lr.ph320.4, %bb.al, %bb.am, %BN_is_bit_set.exit.3, %BN_is_bit_set.exit.2, %BN_is_bit_set.exit.1, %BN_is_bit_set.exit
  %.0.i277.lcssa = phi i32 [ %.0.i277, %BN_is_bit_set.exit ], [ %.0.i277.1, %BN_is_bit_set.exit.1 ], [ %.0.i277.2, %BN_is_bit_set.exit.2 ], [ %.0.i277.3, %BN_is_bit_set.exit.3 ], [ %i.gg, %.lr.ph320.4 ], [ %i.gq, %bb.am ], [ %i.gg, %bb.al ]
  %8 = add i32 %i.w, -2
  %i.gr = sub nuw nsw i32 %8, %i.el
  %i.gs = sext i32 %.0.i277.lcssa to i64
  br label %._crit_edge321

._crit_edge321:                                   ; preds = %._crit_edge321.loopexit, %bb.ac
  %.0244.lcssa = phi i64 [ 0, %bb.ac ], [ %i.gs, %._crit_edge321.loopexit ]
  %.0228.lcssa = phi i32 [ %i.ek, %bb.ac ], [ %i.gr, %._crit_edge321.loopexit ] ; 6 uses
  call void @bn_gather5(ptr noundef %i.dv, i64 noundef %i.bo, ptr noundef nonnull %.1237, i64 noundef %.0244.lcssa) #46
  %i.gt = and i32 %i.av, 7
  %.not271 = icmp eq i32 %i.gt, 0
  br i1 %.not271, label %bb.ax, label %.preheader290

.preheader290:                                    ; preds = %._crit_edge321
  %i.gu = icmp sgt i32 %.0228.lcssa, -1
  br i1 %i.gu, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.preheader290
  %i.gv = zext nneg i32 %.0228.lcssa to i64
  br label %bb.an

bb.an:                                            ; preds = %BN_is_bit_set.exit280.4, %.preheader.preheader
  %indvars.iv352 = phi i64 [ %i.gv, %.preheader.preheader ], [ %indvars.iv.next353, %BN_is_bit_set.exit280.4 ] ; 12 uses
  %i.gw = load i32, ptr %i.u, align 8, !tbaa !93
  %i.gx = sext i32 %i.gw to i64
  %i.gy = lshr i64 %indvars.iv352, 6              ; 2 uses
  %.not.i.i278 = icmp ult i64 %i.gy, %i.gx
  br i1 %.not.i.i278, label %bb.ao, label %BN_is_bit_set.exit280

bb.ao:                                            ; preds = %bb.an
  %i.gz = load ptr, ptr %2, align 8, !tbaa !92
  %i.ha = and i64 %indvars.iv352, 63
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.gz, i64 %i.gy
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !80
  %i.hd = lshr i64 %i.hc, %i.ha
  %i.he = trunc i64 %i.hd to i32
  %i.hf = shl i32 %i.he, 1
  %i.hg = and i32 %i.hf, 2
  br label %BN_is_bit_set.exit280

BN_is_bit_set.exit280:                            ; preds = %bb.an, %bb.ao
  %.0.i279 = phi i32 [ 0, %bb.an ], [ %i.hg, %bb.ao ] ; 3 uses
  %i.hh = add nsw i64 %indvars.iv352, -1          ; 2 uses
  %i.hi = icmp slt i64 %indvars.iv352, 1
  br i1 %i.hi, label %BN_is_bit_set.exit280.1.thread, label %bb.ap

BN_is_bit_set.exit280.1.thread:                   ; preds = %BN_is_bit_set.exit280
  %i.hj = shl nuw nsw i32 %.0.i279, 1
  br label %BN_is_bit_set.exit280.2.thread

bb.ap:                                            ; preds = %BN_is_bit_set.exit280
  %i.hk = load i32, ptr %i.u, align 8, !tbaa !93
  %i.hl = sext i32 %i.hk to i64
  %i.hm = lshr i64 %i.hh, 6                       ; 2 uses
  %.not.i.i278.1 = icmp ult i64 %i.hm, %i.hl
  br i1 %.not.i.i278.1, label %bb.aq, label %BN_is_bit_set.exit280.1

bb.aq:                                            ; preds = %bb.ap
  %i.hn = load ptr, ptr %2, align 8, !tbaa !92
  %i.ho = and i64 %i.hh, 63
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.hn, i64 %i.hm
  %i.hq = load i64, ptr %i.hp, align 8, !tbaa !80
  %i.hr = lshr i64 %i.hq, %i.ho
  %i.hs = trunc i64 %i.hr to i32
  %i.ht = and i32 %i.hs, 1
  %i.hu = or disjoint i32 %i.ht, %.0.i279
  br label %BN_is_bit_set.exit280.1

BN_is_bit_set.exit280.1:                          ; preds = %bb.aq, %bb.ap
  %.0.i279.1 = phi i32 [ %.0.i279, %bb.ap ], [ %i.hu, %bb.aq ]
  %i.hv = add nsw i64 %indvars.iv352, -2          ; 2 uses
  %i.hw = shl nuw nsw i32 %.0.i279.1, 1           ; 3 uses
  %i.hx = icmp eq i64 %indvars.iv352, 1
  br i1 %i.hx, label %BN_is_bit_set.exit280.2.thread, label %bb.ar

bb.ar:                                            ; preds = %BN_is_bit_set.exit280.1
  %i.hy = load i32, ptr %i.u, align 8, !tbaa !93
  %i.hz = sext i32 %i.hy to i64
  %i.ia = lshr i64 %i.hv, 6                       ; 2 uses
  %.not.i.i278.2 = icmp ult i64 %i.ia, %i.hz
  br i1 %.not.i.i278.2, label %bb.as, label %BN_is_bit_set.exit280.2

bb.as:                                            ; preds = %bb.ar
  %i.ib = load ptr, ptr %2, align 8, !tbaa !92
  %i.ic = and i64 %i.hv, 63
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.ib, i64 %i.ia
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !80
  %i.if = lshr i64 %i.ie, %i.ic
  %i.ig = trunc i64 %i.if to i32
  %i.ih = and i32 %i.ig, 1
  %i.ii = or disjoint i32 %i.ih, %i.hw
  br label %BN_is_bit_set.exit280.2

BN_is_bit_set.exit280.2.thread:                   ; preds = %BN_is_bit_set.exit280.1.thread, %BN_is_bit_set.exit280.1
  %.0.i279.2.ph = phi i32 [ %i.hj, %BN_is_bit_set.exit280.1.thread ], [ %i.hw, %BN_is_bit_set.exit280.1 ]
  %i.ij = shl nuw nsw i32 %.0.i279.2.ph, 1
  br label %BN_is_bit_set.exit280.3.thread

BN_is_bit_set.exit280.2:                          ; preds = %bb.as, %bb.ar
  %.0.i279.2 = phi i32 [ %i.hw, %bb.ar ], [ %i.ii, %bb.as ]
  %i.ik = add nsw i64 %indvars.iv352, -3          ; 2 uses
  %i.il = shl nuw nsw i32 %.0.i279.2, 1           ; 3 uses
  %i.im = icmp samesign ult i64 %indvars.iv352, 3
  br i1 %i.im, label %BN_is_bit_set.exit280.3.thread, label %bb.at

bb.at:                                            ; preds = %BN_is_bit_set.exit280.2
  %i.in = load i32, ptr %i.u, align 8, !tbaa !93
  %i.io = sext i32 %i.in to i64
  %i.ip = lshr i64 %i.ik, 6                       ; 2 uses
  %.not.i.i278.3 = icmp ult i64 %i.ip, %i.io
  br i1 %.not.i.i278.3, label %bb.au, label %BN_is_bit_set.exit280.3

bb.au:                                            ; preds = %bb.at
  %i.iq = load ptr, ptr %2, align 8, !tbaa !92
  %i.ir = and i64 %i.ik, 63
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %i.ip
  %i.it = load i64, ptr %i.is, align 8, !tbaa !80
  %i.iu = lshr i64 %i.it, %i.ir
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = and i32 %i.iv, 1
  %i.ix = or disjoint i32 %i.iw, %i.il
  br label %BN_is_bit_set.exit280.3

BN_is_bit_set.exit280.3.thread:                   ; preds = %BN_is_bit_set.exit280.2.thread, %BN_is_bit_set.exit280.2
  %.0.i279.3.ph = phi i32 [ %i.ij, %BN_is_bit_set.exit280.2.thread ], [ %i.il, %BN_is_bit_set.exit280.2 ]
  %i.iy = shl nuw nsw i32 %.0.i279.3.ph, 1
  br label %BN_is_bit_set.exit280.4

BN_is_bit_set.exit280.3:                          ; preds = %bb.au, %bb.at
  %.0.i279.3 = phi i32 [ %i.il, %bb.at ], [ %i.ix, %bb.au ]
  %i.iz = add nsw i64 %indvars.iv352, -4          ; 2 uses
  %i.ja = shl nuw nsw i32 %.0.i279.3, 1           ; 3 uses
  %i.jb = icmp eq i64 %indvars.iv352, 3
  br i1 %i.jb, label %BN_is_bit_set.exit280.4, label %bb.av

bb.av:                                            ; preds = %BN_is_bit_set.exit280.3
  %i.jc = load i32, ptr %i.u, align 8, !tbaa !93
  %i.jd = sext i32 %i.jc to i64
  %i.je = lshr i64 %i.iz, 6                       ; 2 uses
  %.not.i.i278.4 = icmp ult i64 %i.je, %i.jd
  br i1 %.not.i.i278.4, label %bb.aw, label %BN_is_bit_set.exit280.4

bb.aw:                                            ; preds = %bb.av
  %i.jf = load ptr, ptr %2, align 8, !tbaa !92
  %i.jg = and i64 %i.iz, 63
  %i.jh = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.je
  %i.ji = load i64, ptr %i.jh, align 8, !tbaa !80
  %i.jj = lshr i64 %i.ji, %i.jg
  %i.jk = trunc i64 %i.jj to i32
  %i.jl = and i32 %i.jk, 1
  %i.jm = or disjoint i32 %i.jl, %i.ja
  br label %BN_is_bit_set.exit280.4

BN_is_bit_set.exit280.4:                          ; preds = %BN_is_bit_set.exit280.3.thread, %bb.aw, %bb.av, %BN_is_bit_set.exit280.3
  %.0.i279.4 = phi i32 [ %i.ja, %BN_is_bit_set.exit280.3 ], [ %i.jm, %bb.aw ], [ %i.ja, %bb.av ], [ %i.iy, %BN_is_bit_set.exit280.3.thread ]
  %indvars.iv.next353 = add nsw i64 %indvars.iv352, -5
  %i.jn = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  %i.jo = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  %i.jp = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  %i.jq = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  %i.jr = call i32 @bn_mul_mont(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i64 noundef %i.bo) ; 0 uses
  call void @bn_mul_mont_gather5(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %.1237, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i32 noundef %i.av, i32 noundef %.0.i279.4) #46
  %i.js = icmp sgt i64 %indvars.iv352, 4
  br i1 %i.js, label %bb.an, label %.loopexit, !llvm.loop !1230

bb.ax:                                            ; preds = %._crit_edge321
  %i.jt = load ptr, ptr %2, align 8, !tbaa !92    ; 2 uses
  %i.ju = add nsw i32 %i.w, -4
  %.not272 = icmp slt i32 %.0228.lcssa, %i.ju
  br i1 %.not272, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.jv = load i32, ptr %i.u, align 8, !tbaa !93
  %i.jw = shl nsw i32 %i.jv, 3
  %i.jx = sext i32 %i.jw to i64
  %i.jy = getelementptr i8, ptr %i.jt, i64 %i.jx
  %i.jz = getelementptr i8, ptr %i.jy, i64 -1
  %i.ka = load i8, ptr %i.jz, align 1, !tbaa !76
  %i.kb = zext i8 %i.ka to i32
  %i.kc = and i32 %.0228.lcssa, 7
  %i.kd = xor i32 %i.kc, 4
  %i.ke = lshr i32 %i.kb, %i.kd
  %i.kf = and i32 %i.ke, 31
  %i.kg = add nsw i32 %.0228.lcssa, -5
  call void @bn_power5(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %.1237, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i32 noundef %i.av, i32 noundef %i.kf) #46
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %.3231 = phi i32 [ %i.kg, %bb.ay ], [ %.0228.lcssa, %bb.ax ] ; 2 uses
  %i.kh = icmp sgt i32 %.3231, -1
  br i1 %i.kh, label %.lr.ph330, label %.loopexit

.lr.ph330:                                        ; preds = %bb.az, %.lr.ph330
  %.4232328 = phi i32 [ %i.kp, %.lr.ph330 ], [ %.3231, %bb.az ] ; 3 uses
  %i.ki = add nsw i32 %.4232328, -4               ; 2 uses
  %i.kj = ashr i32 %i.ki, 3
  %i.kk = sext i32 %i.kj to i64
  %i.kl = getelementptr inbounds i8, ptr %i.jt, i64 %i.kk
  %.0.copyload = load i16, ptr %i.kl, align 1
  %i.km = and i32 %i.ki, 7
  %i.kn = zext i16 %.0.copyload to i32
  %i.ko = lshr i32 %i.kn, %i.km
  %i.kp = add nsw i32 %.4232328, -5
  %i.kq = and i32 %i.ko, 31
  call void @bn_power5(ptr noundef %i.dv, ptr noundef %i.dv, ptr noundef nonnull %.1237, ptr noundef nonnull %i.cr, ptr noundef nonnull %i.du, i32 noundef %i.av, i32 noundef %i.kq) #46
  %i.kr = icmp samesign ugt i32 %.4232328, 4
  br i1 %i.kr, label %.lr.ph330, label %.loopexit, !llvm.loop !1231

bb.ba:                                            ; preds = %bb.aa
  call fastcc void @copy_to_prebuf(ptr noundef %6, i32 noundef %i.av, ptr noundef %.1237, i32 noundef 0)
  call fastcc void @copy_to_prebuf(ptr noundef %7, i32 noundef %i.av, ptr noundef %.1237, i32 noundef 1)
  %i.ks = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not265 = icmp eq i32 %i.ks, 0
  br i1 %.not265, label %.loopexit294, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  call fastcc void @copy_to_prebuf(ptr noundef %6, i32 noundef %i.av, ptr noundef %.1237, i32 noundef 2)
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.bd
  %.5301 = phi i32 [ 3, %bb.bb ], [ %i.ku, %bb.bd ] ; 2 uses
  %i.kt = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not270 = icmp eq i32 %i.kt, 0
  br i1 %.not270, label %.loopexit294, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call fastcc void @copy_to_prebuf(ptr noundef %6, i32 noundef %i.av, ptr noundef %.1237, i32 noundef %.5301)
  %i.ku = add nuw nsw i32 %.5301, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.ku, 32
  br i1 %exitcond.not, label %bb.be, label %bb.bc, !llvm.loop !1232

bb.be:                                            ; preds = %bb.bd
  %i.kv = add nsw i32 %i.w, -1                    ; 2 uses
  %i.kw = srem i32 %i.kv, 5                       ; 6 uses
  %i.kx = icmp sgt i32 %i.kw, -1
  br i1 %i.kx, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.be
  %i.ky = add i32 %i.w, -1                        ; 6 uses
  %i.kz = zext i32 %i.ky to i64                   ; 5 uses
  %.not386 = icmp sgt i32 %i.ky, -1
  br i1 %.not386, label %bb.bf, label %BN_is_bit_set.exit283

bb.bf:                                            ; preds = %.lr.ph.preheader
  %i.la = load i32, ptr %i.u, align 8, !tbaa !93
  %i.lb = sext i32 %i.la to i64
  %i.lc = lshr i64 %i.kz, 6                       ; 2 uses
  %.not.i.i281 = icmp ult i64 %i.lc, %i.lb
  br i1 %.not.i.i281, label %bb.bg, label %BN_is_bit_set.exit283

bb.bg:                                            ; preds = %bb.bf
  %i.ld = load ptr, ptr %2, align 8, !tbaa !92
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ld, i64 %i.lc
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !80
  %i.lg = lshr i64 %i.lf, 63
  %i.lh = trunc nuw nsw i64 %i.lg to i32
  br label %BN_is_bit_set.exit283

BN_is_bit_set.exit283:                            ; preds = %.lr.ph.preheader, %bb.bf, %bb.bg
  %.0.i282 = phi i32 [ 0, %.lr.ph.preheader ], [ %i.lh, %bb.bg ], [ 0, %bb.bf ] ; 2 uses
  %indvars.iv.next = add nsw i64 %i.kz, -1
  %.not418 = icmp eq i32 %i.kw, 0
  br i1 %.not418, label %._crit_edge.loopexit, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %BN_is_bit_set.exit283
  %i.li = shl nsw i32 %.0.i282, 1                 ; 3 uses
  %.not386.1 = icmp ult i32 %i.ky, -2147483647
  br i1 %.not386.1, label %bb.bh, label %BN_is_bit_set.exit283.1

bb.bh:                                            ; preds = %.lr.ph.1
  %i.lj = load i32, ptr %i.u, align 8, !tbaa !93
  %i.lk = sext i32 %i.lj to i64
  %i.ll = lshr i64 %indvars.iv.next, 6            ; 2 uses
  %.not.i.i281.1 = icmp ult i64 %i.ll, %i.lk
  br i1 %.not.i.i281.1, label %bb.bi, label %BN_is_bit_set.exit283.1

bb.bi:                                            ; preds = %bb.bh
  %i.lm = load ptr, ptr %2, align 8, !tbaa !92
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lm, i64 %i.ll
  %i.lo = load i64, ptr %i.ln, align 8, !tbaa !80
  %i.lp = lshr i64 %i.lo, 62
  %i.lq = trunc nuw nsw i64 %i.lp to i32
  %i.lr = and i32 %i.lq, 1
  %i.ls = or disjoint i32 %i.lr, %i.li
  br label %BN_is_bit_set.exit283.1

BN_is_bit_set.exit283.1:                          ; preds = %bb.bi, %bb.bh, %.lr.ph.1
  %.0.i282.1 = phi i32 [ %i.li, %.lr.ph.1 ], [ %i.ls, %bb.bi ], [ %i.li, %bb.bh ] ; 2 uses
  %indvars.iv.next.1 = add nsw i64 %i.kz, -2
  %i.lt = icmp sgt i32 %i.kw, 1
  br i1 %i.lt, label %.lr.ph.2, label %._crit_edge.loopexit

.lr.ph.2:                                         ; preds = %BN_is_bit_set.exit283.1
  %i.lu = shl nsw i32 %.0.i282.1, 1               ; 3 uses
  %.not386.2 = icmp ult i32 %i.ky, -2147483646
  br i1 %.not386.2, label %bb.bj, label %BN_is_bit_set.exit283.2

bb.bj:                                            ; preds = %.lr.ph.2
  %i.lv = load i32, ptr %i.u, align 8, !tbaa !93
  %i.lw = sext i32 %i.lv to i64
  %i.lx = lshr i64 %indvars.iv.next.1, 6          ; 2 uses
  %.not.i.i281.2 = icmp ult i64 %i.lx, %i.lw
  br i1 %.not.i.i281.2, label %bb.bk, label %BN_is_bit_set.exit283.2

bb.bk:                                            ; preds = %bb.bj
  %i.ly = load ptr, ptr %2, align 8, !tbaa !92
  %i.lz = getelementptr inbounds nuw [8 x i8], ptr %i.ly, i64 %i.lx
  %i.ma = load i64, ptr %i.lz, align 8, !tbaa !80
  %i.mb = lshr i64 %i.ma, 61
  %i.mc = trunc nuw nsw i64 %i.mb to i32
  %i.md = and i32 %i.mc, 1
  %i.me = or disjoint i32 %i.md, %i.lu
  br label %BN_is_bit_set.exit283.2

BN_is_bit_set.exit283.2:                          ; preds = %bb.bk, %bb.bj, %.lr.ph.2
  %.0.i282.2 = phi i32 [ %i.lu, %.lr.ph.2 ], [ %i.me, %bb.bk ], [ %i.lu, %bb.bj ] ; 2 uses
  %indvars.iv.next.2 = add nsw i64 %i.kz, -3
  %.not419 = icmp eq i32 %i.kw, 2
  br i1 %.not419, label %._crit_edge.loopexit, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %BN_is_bit_set.exit283.2
  %i.mf = shl i32 %.0.i282.2, 1                   ; 3 uses
  %.not386.3 = icmp ult i32 %i.ky, -2147483645
  br i1 %.not386.3, label %bb.bl, label %BN_is_bit_set.exit283.3

bb.bl:                                            ; preds = %.lr.ph.3
  %i.mg = load i32, ptr %i.u, align 8, !tbaa !93
  %i.mh = sext i32 %i.mg to i64
  %i.mi = lshr i64 %indvars.iv.next.2, 6          ; 2 uses
  %.not.i.i281.3 = icmp ult i64 %i.mi, %i.mh
  br i1 %.not.i.i281.3, label %bb.bm, label %BN_is_bit_set.exit283.3

bb.bm:                                            ; preds = %bb.bl
  %i.mj = load ptr, ptr %2, align 8, !tbaa !92
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.mj, i64 %i.mi
  %i.ml = load i64, ptr %i.mk, align 8, !tbaa !80
  %i.mm = lshr i64 %i.ml, 60
  %i.mn = trunc nuw nsw i64 %i.mm to i32
  %i.mo = and i32 %i.mn, 1
  %i.mp = or disjoint i32 %i.mo, %i.mf
  br label %BN_is_bit_set.exit283.3

BN_is_bit_set.exit283.3:                          ; preds = %bb.bm, %bb.bl, %.lr.ph.3
  %.0.i282.3 = phi i32 [ %i.mf, %.lr.ph.3 ], [ %i.mp, %bb.bm ], [ %i.mf, %bb.bl ] ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %i.kz, -4
  %i.mq = icmp sgt i32 %i.kw, 3
  br i1 %i.mq, label %.lr.ph.4, label %._crit_edge.loopexit

.lr.ph.4:                                         ; preds = %BN_is_bit_set.exit283.3
  %i.mr = shl i32 %.0.i282.3, 1                   ; 3 uses
  %.not386.4 = icmp ult i32 %i.ky, -2147483644
  br i1 %.not386.4, label %bb.bn, label %._crit_edge.loopexit

bb.bn:                                            ; preds = %.lr.ph.4
  %i.ms = load i32, ptr %i.u, align 8, !tbaa !93
  %i.mt = sext i32 %i.ms to i64
  %i.mu = lshr i64 %indvars.iv.next.3, 6          ; 2 uses
  %.not.i.i281.4 = icmp ult i64 %i.mu, %i.mt
  br i1 %.not.i.i281.4, label %bb.bo, label %._crit_edge.loopexit

bb.bo:                                            ; preds = %bb.bn
  %i.mv = load ptr, ptr %2, align 8, !tbaa !92
  %i.mw = getelementptr inbounds nuw [8 x i8], ptr %i.mv, i64 %i.mu
  %i.mx = load i64, ptr %i.mw, align 8, !tbaa !80
  %i.my = lshr i64 %i.mx, 59
  %i.mz = trunc nuw nsw i64 %i.my to i32
  %i.na = and i32 %i.mz, 1
  %i.nb = or disjoint i32 %i.na, %i.mr
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.4, %bb.bn, %bb.bo, %BN_is_bit_set.exit283.3, %BN_is_bit_set.exit283.2, %BN_is_bit_set.exit283.1, %BN_is_bit_set.exit283
  %.0.i282.lcssa = phi i32 [ %.0.i282, %BN_is_bit_set.exit283 ], [ %.0.i282.1, %BN_is_bit_set.exit283.1 ], [ %.0.i282.2, %BN_is_bit_set.exit283.2 ], [ %.0.i282.3, %BN_is_bit_set.exit283.3 ], [ %i.mr, %.lr.ph.4 ], [ %i.nb, %bb.bo ], [ %i.mr, %bb.bn ]
  %9 = add i32 %i.w, -2
  %i.nc = sub nuw nsw i32 %9, %i.kw
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.be
  %.2246.lcssa = phi i32 [ 0, %bb.be ], [ %.0.i282.lcssa, %._crit_edge.loopexit ]
  %.5233.lcssa = phi i32 [ %i.kv, %bb.be ], [ %i.nc, %._crit_edge.loopexit ] ; 2 uses
  %i.nd = call fastcc i32 @copy_from_prebuf(ptr noundef %6, i32 noundef %i.av, ptr noundef %.1237, i32 noundef %.2246.lcssa)
  %.not266 = icmp eq i32 %i.nd, 0
  br i1 %.not266, label %.loopexit294, label %.preheader295.preheader

.preheader295.preheader:                          ; preds = %._crit_edge
  %i.ne = icmp sgt i32 %.5233.lcssa, -1
  br i1 %i.ne, label %.preheader293.preheader, label %.loopexit

.preheader295:                                    ; preds = %bb.cd
  %i.nf = icmp sgt i32 %.6234397, 4
  br i1 %i.nf, label %.preheader293.preheader, label %.loopexit, !llvm.loop !1233

.preheader293.preheader:                          ; preds = %.preheader295.preheader, %.preheader295
  %.6234397 = phi i32 [ %i.ng, %.preheader295 ], [ %.5233.lcssa, %.preheader295.preheader ] ; 11 uses
  %i.ng = add nsw i32 %.6234397, -5
  %i.nh = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not269 = icmp eq i32 %i.nh, 0
  br i1 %.not269, label %.loopexit294, label %bb.bp

bb.bp:                                            ; preds = %.preheader293.preheader
  %i.ni = load i32, ptr %i.u, align 8, !tbaa !93
  %i.nj = sext i32 %i.ni to i64
  %i.nk = zext nneg i32 %.6234397 to i64          ; 2 uses
  %i.nl = lshr i64 %i.nk, 6                       ; 2 uses
  %.not.i.i284 = icmp ult i64 %i.nl, %i.nj
  br i1 %.not.i.i284, label %bb.bq, label %BN_is_bit_set.exit286

bb.bq:                                            ; preds = %bb.bp
  %i.nm = load ptr, ptr %2, align 8, !tbaa !92
  %i.nn = and i64 %i.nk, 63
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.nm, i64 %i.nl
  %i.np = load i64, ptr %i.no, align 8, !tbaa !80
  %i.nq = lshr i64 %i.np, %i.nn
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = shl i32 %i.nr, 1
  %i.nt = and i32 %i.ns, 2
  br label %BN_is_bit_set.exit286

BN_is_bit_set.exit286:                            ; preds = %bb.bp, %bb.bq
  %.0.i285 = phi i32 [ 0, %bb.bp ], [ %i.nt, %bb.bq ] ; 3 uses
  %i.nu = add nsw i32 %.6234397, -1
  %i.nv = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not269.1 = icmp eq i32 %i.nv, 0
  br i1 %.not269.1, label %.loopexit294, label %bb.br

bb.br:                                            ; preds = %BN_is_bit_set.exit286
  %i.nw = icmp eq i32 %.6234397, 0
  br i1 %i.nw, label %BN_is_bit_set.exit286.1, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.nx = load i32, ptr %i.u, align 8, !tbaa !93
  %i.ny = sext i32 %i.nx to i64
  %i.nz = zext nneg i32 %i.nu to i64              ; 2 uses
  %i.oa = lshr i64 %i.nz, 6                       ; 2 uses
  %.not.i.i284.1 = icmp ult i64 %i.oa, %i.ny
  br i1 %.not.i.i284.1, label %bb.bt, label %BN_is_bit_set.exit286.1

bb.bt:                                            ; preds = %bb.bs
  %i.ob = load ptr, ptr %2, align 8, !tbaa !92
  %i.oc = and i64 %i.nz, 63
  %i.od = getelementptr inbounds nuw [8 x i8], ptr %i.ob, i64 %i.oa
  %i.oe = load i64, ptr %i.od, align 8, !tbaa !80
  %i.of = lshr i64 %i.oe, %i.oc
  %i.og = trunc i64 %i.of to i32
  %i.oh = and i32 %i.og, 1
  %i.oi = or disjoint i32 %i.oh, %.0.i285
  br label %BN_is_bit_set.exit286.1

BN_is_bit_set.exit286.1:                          ; preds = %bb.bt, %bb.bs, %bb.br
  %.0.i285.1 = phi i32 [ %.0.i285, %bb.br ], [ %i.oi, %bb.bt ], [ %.0.i285, %bb.bs ]
  %i.oj = add nsw i32 %.6234397, -2
  %i.ok = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not269.2 = icmp eq i32 %i.ok, 0
  br i1 %.not269.2, label %.loopexit294, label %bb.bu

bb.bu:                                            ; preds = %BN_is_bit_set.exit286.1
  %i.ol = shl nuw nsw i32 %.0.i285.1, 1           ; 3 uses
  %i.om = icmp samesign ult i32 %.6234397, 2
  br i1 %i.om, label %BN_is_bit_set.exit286.2, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.on = load i32, ptr %i.u, align 8, !tbaa !93
  %i.oo = sext i32 %i.on to i64
  %i.op = zext nneg i32 %i.oj to i64              ; 2 uses
  %i.oq = lshr i64 %i.op, 6                       ; 2 uses
  %.not.i.i284.2 = icmp ult i64 %i.oq, %i.oo
  br i1 %.not.i.i284.2, label %bb.bw, label %BN_is_bit_set.exit286.2

bb.bw:                                            ; preds = %bb.bv
  %i.or = load ptr, ptr %2, align 8, !tbaa !92
  %i.os = and i64 %i.op, 63
  %i.ot = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.oq
  %i.ou = load i64, ptr %i.ot, align 8, !tbaa !80
  %i.ov = lshr i64 %i.ou, %i.os
  %i.ow = trunc i64 %i.ov to i32
  %i.ox = and i32 %i.ow, 1
  %i.oy = or disjoint i32 %i.ox, %i.ol
  br label %BN_is_bit_set.exit286.2

BN_is_bit_set.exit286.2:                          ; preds = %bb.bw, %bb.bv, %bb.bu
  %.0.i285.2 = phi i32 [ %i.ol, %bb.bu ], [ %i.oy, %bb.bw ], [ %i.ol, %bb.bv ]
  %i.oz = add nsw i32 %.6234397, -3
  %i.pa = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not269.3 = icmp eq i32 %i.pa, 0
  br i1 %.not269.3, label %.loopexit294, label %bb.bx

bb.bx:                                            ; preds = %BN_is_bit_set.exit286.2
  %i.pb = shl nuw nsw i32 %.0.i285.2, 1           ; 3 uses
  %i.pc = icmp samesign ult i32 %.6234397, 3
  br i1 %i.pc, label %BN_is_bit_set.exit286.3, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.pd = load i32, ptr %i.u, align 8, !tbaa !93
  %i.pe = sext i32 %i.pd to i64
  %i.pf = zext nneg i32 %i.oz to i64              ; 2 uses
  %i.pg = lshr i64 %i.pf, 6                       ; 2 uses
  %.not.i.i284.3 = icmp ult i64 %i.pg, %i.pe
  br i1 %.not.i.i284.3, label %bb.bz, label %BN_is_bit_set.exit286.3

bb.bz:                                            ; preds = %bb.by
  %i.ph = load ptr, ptr %2, align 8, !tbaa !92
  %i.pi = and i64 %i.pf, 63
  %i.pj = getelementptr inbounds nuw [8 x i8], ptr %i.ph, i64 %i.pg
  %i.pk = load i64, ptr %i.pj, align 8, !tbaa !80
  %i.pl = lshr i64 %i.pk, %i.pi
  %i.pm = trunc i64 %i.pl to i32
  %i.pn = and i32 %i.pm, 1
  %i.po = or disjoint i32 %i.pn, %i.pb
  br label %BN_is_bit_set.exit286.3

BN_is_bit_set.exit286.3:                          ; preds = %bb.bz, %bb.by, %bb.bx
  %.0.i285.3 = phi i32 [ %i.pb, %bb.bx ], [ %i.po, %bb.bz ], [ %i.pb, %bb.by ]
  %i.pp = add nsw i32 %.6234397, -4
  %i.pq = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not269.4 = icmp eq i32 %i.pq, 0
  br i1 %.not269.4, label %.loopexit294, label %bb.ca

bb.ca:                                            ; preds = %BN_is_bit_set.exit286.3
  %i.pr = shl nuw nsw i32 %.0.i285.3, 1           ; 3 uses
  %i.ps = icmp samesign ult i32 %.6234397, 4
  br i1 %i.ps, label %BN_is_bit_set.exit286.4, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.pt = load i32, ptr %i.u, align 8, !tbaa !93
  %i.pu = sext i32 %i.pt to i64
  %i.pv = zext nneg i32 %i.pp to i64              ; 2 uses
  %i.pw = lshr i64 %i.pv, 6                       ; 2 uses
  %.not.i.i284.4 = icmp ult i64 %i.pw, %i.pu
  br i1 %.not.i.i284.4, label %bb.cc, label %BN_is_bit_set.exit286.4

bb.cc:                                            ; preds = %bb.cb
  %i.px = load ptr, ptr %2, align 8, !tbaa !92
  %i.py = and i64 %i.pv, 63
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.pw
  %i.qa = load i64, ptr %i.pz, align 8, !tbaa !80
  %i.qb = lshr i64 %i.qa, %i.py
  %i.qc = trunc i64 %i.qb to i32
  %i.qd = and i32 %i.qc, 1
  %i.qe = or disjoint i32 %i.qd, %i.pr
  br label %BN_is_bit_set.exit286.4

BN_is_bit_set.exit286.4:                          ; preds = %bb.cc, %bb.cb, %bb.ca
  %.0.i285.4 = phi i32 [ %i.pr, %bb.ca ], [ %i.qe, %bb.cc ], [ %i.pr, %bb.cb ]
  %i.qf = call fastcc i32 @copy_from_prebuf(ptr noundef %7, i32 noundef %i.av, ptr noundef %.1237, i32 noundef %.0.i285.4)
  %.not267 = icmp eq i32 %i.qf, 0
  br i1 %.not267, label %.loopexit294, label %bb.cd

bb.cd:                                            ; preds = %BN_is_bit_set.exit286.4
  %i.qg = call i32 @BN_mod_mul_montgomery(ptr noundef nonnull %6, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %.0224, ptr noundef %4)
  %.not268 = icmp eq i32 %i.qg, 0
  br i1 %.not268, label %.loopexit294, label %.preheader295, !llvm.loop !1233

.loopexit:                                        ; preds = %.preheader295, %BN_is_bit_set.exit280.4, %.lr.ph330, %.preheader295.preheader, %.preheader290, %bb.az
  %i.qh = call i32 @BN_from_montgomery(ptr noundef %0, ptr noundef nonnull %6, ptr noundef nonnull %.0224, ptr noundef %4)
  br label %.loopexit294

.loopexit294:                                     ; preds = %bb.bc, %bb.cd, %BN_is_bit_set.exit286.4, %.preheader293.preheader, %BN_is_bit_set.exit286, %BN_is_bit_set.exit286.1, %BN_is_bit_set.exit286.2, %BN_is_bit_set.exit286.3, %.loopexit, %._crit_edge, %bb.ba, %bb.y, %bb.z, %OPENSSL_memset.exit, %bb.x, %bb.t, %bb.q, %bb.l, %bb.r
  %.1243 = phi ptr [ null, %bb.l ], [ %.0242, %bb.r ], [ %.0242, %bb.q ], [ %.0242, %bb.t ], [ %.0242, %OPENSSL_memset.exit ], [ %.0242, %.loopexit ], [ %.0242, %bb.z ], [ %.0242, %bb.x ], [ %.0242, %bb.y ], [ %.0242, %bb.cd ], [ %.0242, %._crit_edge ], [ %.0242, %bb.ba ], [ %.0242, %BN_is_bit_set.exit286.3 ], [ %.0242, %BN_is_bit_set.exit286.2 ], [ %.0242, %BN_is_bit_set.exit286.1 ], [ %.0242, %BN_is_bit_set.exit286 ], [ %.0242, %.preheader293.preheader ], [ %.0242, %BN_is_bit_set.exit286.4 ], [ %.0242, %bb.bc ]
  %.1241 = phi ptr [ null, %bb.l ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.t ], [ %.0240, %OPENSSL_memset.exit ], [ %.0240, %.loopexit ], [ %.0240, %bb.z ], [ %.0240, %bb.x ], [ %.0240, %bb.y ], [ %.0240, %bb.cd ], [ %.0240, %._crit_edge ], [ %.0240, %bb.ba ], [ %.0240, %BN_is_bit_set.exit286.3 ], [ %.0240, %BN_is_bit_set.exit286.2 ], [ %.0240, %BN_is_bit_set.exit286.1 ], [ %.0240, %BN_is_bit_set.exit286 ], [ %.0240, %.preheader293.preheader ], [ %.0240, %BN_is_bit_set.exit286.4 ], [ %.0240, %bb.bc ] ; 2 uses
  %.0239 = phi i64 [ 0, %bb.l ], [ 0, %bb.r ], [ 0, %bb.q ], [ %i.bp, %bb.t ], [ %i.bp, %OPENSSL_memset.exit ], [ %i.bp, %.loopexit ], [ %i.bp, %bb.z ], [ %i.bp, %bb.x ], [ %i.bp, %bb.y ], [ %i.bp, %bb.cd ], [ %i.bp, %._crit_edge ], [ %i.bp, %bb.ba ], [ %i.bp, %BN_is_bit_set.exit286.3 ], [ %i.bp, %BN_is_bit_set.exit286.2 ], [ %i.bp, %BN_is_bit_set.exit286.1 ], [ %i.bp, %BN_is_bit_set.exit286 ], [ %i.bp, %.preheader293.preheader ], [ %i.bp, %BN_is_bit_set.exit286.4 ], [ %i.bp, %bb.bc ]
  %.2238 = phi ptr [ null, %bb.l ], [ null, %bb.r ], [ null, %bb.q ], [ null, %bb.t ], [ %.1237, %OPENSSL_memset.exit ], [ %.1237, %.loopexit ], [ %.1237, %bb.z ], [ %.1237, %bb.x ], [ %.1237, %bb.y ], [ %.1237, %bb.cd ], [ %.1237, %._crit_edge ], [ %.1237, %bb.ba ], [ %.1237, %BN_is_bit_set.exit286.3 ], [ %.1237, %BN_is_bit_set.exit286.2 ], [ %.1237, %BN_is_bit_set.exit286.1 ], [ %.1237, %BN_is_bit_set.exit286 ], [ %.1237, %.preheader293.preheader ], [ %.1237, %BN_is_bit_set.exit286.4 ], [ %.1237, %bb.bc ] ; 2 uses
  %.0227 = phi i32 [ 0, %bb.l ], [ 1, %bb.r ], [ 0, %bb.q ], [ 0, %bb.t ], [ 0, %OPENSSL_memset.exit ], [ %i.qh, %.loopexit ], [ 0, %bb.z ], [ 0, %bb.x ], [ 0, %bb.y ], [ 0, %bb.cd ], [ 0, %._crit_edge ], [ 0, %bb.ba ], [ 0, %BN_is_bit_set.exit286.3 ], [ 0, %BN_is_bit_set.exit286.2 ], [ 0, %BN_is_bit_set.exit286.1 ], [ 0, %BN_is_bit_set.exit286 ], [ 0, %.preheader293.preheader ], [ 0, %BN_is_bit_set.exit286.4 ], [ 0, %bb.bc ]
  call void @BN_MONT_CTX_free(ptr noundef %.1243)
  %i.qi = icmp ne ptr %.2238, null
  %i.qj = icmp eq ptr %.1241, null
  %or.cond = and i1 %i.qj, %i.qi
  br i1 %or.cond, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.loopexit294
  call void @OPENSSL_cleanse(ptr noundef nonnull %.2238, i64 noundef %.0239) #46
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %.loopexit294
  call void @OPENSSL_free(ptr noundef %.1241) #46
  br label %bb.cg
end_hunk_0
