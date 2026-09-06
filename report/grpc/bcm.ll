Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@bn_mod_exp_mont_small:bb.a

vector.ph:                                        ; preds = %.lr.ph.i11.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hd, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.he, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %index ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %wide.load = load <2 x i64>, ptr %i.hf, align 8, !tbaa !96
  %wide.load239 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !96
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load240 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !96
  %wide.load241 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !96
  %i.hj = and <2 x i64> %wide.load, %broadcast.splat
  %i.hk = and <2 x i64> %wide.load239, %broadcast.splat
  %i.hl = and <2 x i64> %wide.load240, %broadcast.splat238
  %i.hm = and <2 x i64> %wide.load241, %broadcast.splat238
  %i.hn = or disjoint <2 x i64> %i.hl, %i.hj
  %i.ho = or disjoint <2 x i64> %i.hm, %i.hk
  store <2 x i64> %i.hn, ptr %i.hh, align 8, !tbaa !96
  store <2 x i64> %i.ho, ptr %i.hi, align 8, !tbaa !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hp = icmp eq i64 %index.next, %n.vec
  br i1 %i.hp, label %middle.block, label %vector.body, !llvm.loop !685

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i11.i.i, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i = phi i64 [ %i.hx, %scalar.ph ], [ %.09.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.09.i.i.i
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !96
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !96
  %i.hu = and i64 %i.hr, %i.hd
  %i.hv = and i64 %i.ht, %i.he
  %i.hw = or disjoint i64 %i.hv, %i.hu
  store i64 %i.hw, ptr %i.hs, align 8, !tbaa !96
  %i.hx = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.hx, %2
  br i1 %exitcond.not.i.i.i, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph, !llvm.loop !686

.lr.ph.i:                                         ; preds = %bb.v, %bn_mul_add_words.exit
  %.04354.i = phi i64 [ %i.lp, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %.04453.i = phi i64 [ %i.lo, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04354.i ; 4 uses
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !96
  %i.ia = mul i64 %i.hz, %i.em
  %.pre171 = zext i64 %i.ia to i128               ; 7 uses
  br i1 %.not56.i, label %.lr.ph69.i.preheader, label %.lr.ph.i114

.preheader.i:                                     ; preds = %.lr.ph.i114
  %.not5464.i = icmp eq i64 %i.kk, 0
  br i1 %.not5464.i, label %bn_mul_add_words.exit, label %.lr.ph69.i.preheader

.lr.ph69.i.preheader:                             ; preds = %.lr.ph.i, %.preheader.i
  %.168.i.ph = phi ptr [ %i.hy, %.lr.ph.i ], [ %i.kj, %.preheader.i ] ; 4 uses
  %.14867.i.ph = phi ptr [ %i.ek, %.lr.ph.i ], [ %i.ki, %.preheader.i ] ; 3 uses
  %.15066.i.ph = phi i64 [ %2, %.lr.ph.i ], [ %i.kk, %.preheader.i ] ; 4 uses
  %.15265.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.kh, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.15066.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol

.lr.ph69.i.prol:                                  ; preds = %.lr.ph69.i.preheader
  %i.ib = load i64, ptr %.14867.i.ph, align 8, !tbaa !96
  %i.ic = zext i64 %i.ib to i128
  %i.id = mul nuw i128 %.pre171, %i.ic
  %i.ie = load i64, ptr %.168.i.ph, align 8, !tbaa !96
  %i.if = zext i64 %i.ie to i128
  %i.ig = zext i64 %.15265.i.ph to i128
  %i.ih = add nuw nsw i128 %i.if, %i.ig
  %i.ii = add nuw i128 %i.ih, %i.id               ; 2 uses
  %i.ij = trunc i128 %i.ii to i64
  store i64 %i.ij, ptr %.168.i.ph, align 8, !tbaa !96
  %i.ik = lshr i128 %i.ii, 64
  %i.il = trunc nuw i128 %i.ik to i64             ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %.14867.i.ph, i64 8
  %i.in = getelementptr inbounds nuw i8, ptr %.168.i.ph, i64 8
  %i.io = add nsw i64 %.15066.i.ph, -1
  br label %.lr.ph69.i.prol.loopexit

.lr.ph69.i.prol.loopexit:                         ; preds = %.lr.ph69.i.prol, %.lr.ph69.i.preheader
  %.lcssa252.unr = phi i64 [ poison, %.lr.ph69.i.preheader ], [ %i.il, %.lr.ph69.i.prol ]
  %.168.i.unr = phi ptr [ %.168.i.ph, %.lr.ph69.i.preheader ], [ %i.in, %.lr.ph69.i.prol ]
  %.14867.i.unr = phi ptr [ %.14867.i.ph, %.lr.ph69.i.preheader ], [ %i.im, %.lr.ph69.i.prol ]
  %.15066.i.unr = phi i64 [ %.15066.i.ph, %.lr.ph69.i.preheader ], [ %i.io, %.lr.ph69.i.prol ]
  %.15265.i.unr = phi i64 [ %.15265.i.ph, %.lr.ph69.i.preheader ], [ %i.il, %.lr.ph69.i.prol ]
  %i.ip = icmp eq i64 %.15066.i.ph, 1
  br i1 %i.ip, label %bn_mul_add_words.exit, label %.lr.ph69.i

.lr.ph.i114:                                      ; preds = %.lr.ph.i, %.lr.ph.i114
  %.04660.i = phi ptr [ %i.kj, %.lr.ph.i114 ], [ %i.hy, %.lr.ph.i ] ; 6 uses
  %.04759.i = phi ptr [ %i.ki, %.lr.ph.i114 ], [ %i.ek, %.lr.ph.i ] ; 5 uses
  %.04958.i = phi i64 [ %i.kk, %.lr.ph.i114 ], [ %2, %.lr.ph.i ]
  %.05157.i = phi i64 [ %i.kh, %.lr.ph.i114 ], [ 0, %.lr.ph.i ]
  %i.iq = load i64, ptr %.04759.i, align 8, !tbaa !96
  %i.ir = zext i64 %i.iq to i128
  %i.is = mul nuw i128 %i.ir, %.pre171
  %i.it = load i64, ptr %.04660.i, align 8, !tbaa !96
  %i.iu = zext i64 %i.it to i128
  %i.iv = zext i64 %.05157.i to i128
  %i.iw = add nuw nsw i128 %i.iu, %i.iv
  %i.ix = add nuw i128 %i.iw, %i.is               ; 2 uses
  %i.iy = trunc i128 %i.ix to i64
  store i64 %i.iy, ptr %.04660.i, align 8, !tbaa !96
  %i.iz = lshr i128 %i.ix, 64
  %i.ja = getelementptr inbounds nuw i8, ptr %.04759.i, i64 8
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !96
  %i.jc = zext i64 %i.jb to i128
  %i.jd = mul nuw i128 %i.jc, %.pre171
  %i.je = getelementptr inbounds nuw i8, ptr %.04660.i, i64 8 ; 2 uses
  %i.jf = load i64, ptr %i.je, align 8, !tbaa !96
  %i.jg = zext i64 %i.jf to i128
  %i.jh = add nuw i128 %i.jd, %i.jg
  %i.ji = add nuw i128 %i.jh, %i.iz               ; 2 uses
  %i.jj = trunc i128 %i.ji to i64
  store i64 %i.jj, ptr %i.je, align 8, !tbaa !96
  %i.jk = lshr i128 %i.ji, 64
  %i.jl = getelementptr inbounds nuw i8, ptr %.04759.i, i64 16
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !96
  %i.jn = zext i64 %i.jm to i128
  %i.jo = mul nuw i128 %i.jn, %.pre171
  %i.jp = getelementptr inbounds nuw i8, ptr %.04660.i, i64 16 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !tbaa !96
  %i.jr = zext i64 %i.jq to i128
  %i.js = add nuw i128 %i.jo, %i.jr
  %i.jt = add nuw i128 %i.js, %i.jk               ; 2 uses
  %i.ju = trunc i128 %i.jt to i64
  store i64 %i.ju, ptr %i.jp, align 8, !tbaa !96
  %i.jv = lshr i128 %i.jt, 64
  %i.jw = getelementptr inbounds nuw i8, ptr %.04759.i, i64 24
  %i.jx = load i64, ptr %i.jw, align 8, !tbaa !96
  %i.jy = zext i64 %i.jx to i128
  %i.jz = mul nuw i128 %i.jy, %.pre171
  %i.ka = getelementptr inbounds nuw i8, ptr %.04660.i, i64 24 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !96
  %i.kc = zext i64 %i.kb to i128
  %i.kd = add nuw i128 %i.jz, %i.kc
  %i.ke = add nuw i128 %i.kd, %i.jv               ; 2 uses
  %i.kf = trunc i128 %i.ke to i64
  store i64 %i.kf, ptr %i.ka, align 8, !tbaa !96
  %i.kg = lshr i128 %i.ke, 64
  %i.kh = trunc nuw i128 %i.kg to i64             ; 3 uses
  %i.ki = getelementptr inbounds nuw i8, ptr %.04759.i, i64 32 ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.04660.i, i64 32 ; 2 uses
  %i.kk = add i64 %.04958.i, -4                   ; 4 uses
  %.not.i115 = icmp ult i64 %i.kk, 4
  br i1 %.not.i115, label %.preheader.i, label %.lr.ph.i114, !llvm.loop !21

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i
  %.168.i = phi ptr [ %i.li, %.lr.ph69.i ], [ %.168.i.unr, %.lr.ph69.i.prol.loopexit ] ; 4 uses
  %.14867.i = phi ptr [ %i.lh, %.lr.ph69.i ], [ %.14867.i.unr, %.lr.ph69.i.prol.loopexit ] ; 3 uses
  %.15066.i = phi i64 [ %i.lj, %.lr.ph69.i ], [ %.15066.i.unr, %.lr.ph69.i.prol.loopexit ]
  %.15265.i = phi i64 [ %i.lg, %.lr.ph69.i ], [ %.15265.i.unr, %.lr.ph69.i.prol.loopexit ]
  %i.kl = load i64, ptr %.14867.i, align 8, !tbaa !96
  %i.km = zext i64 %i.kl to i128
  %i.kn = mul nuw i128 %.pre171, %i.km
  %i.ko = load i64, ptr %.168.i, align 8, !tbaa !96
  %i.kp = zext i64 %i.ko to i128
  %i.kq = zext i64 %.15265.i to i128
  %i.kr = add nuw nsw i128 %i.kp, %i.kq
  %i.ks = add nuw i128 %i.kr, %i.kn               ; 2 uses
  %i.kt = trunc i128 %i.ks to i64
  store i64 %i.kt, ptr %.168.i, align 8, !tbaa !96
  %i.ku = lshr i128 %i.ks, 64
  %i.kv = getelementptr inbounds nuw i8, ptr %.14867.i, i64 8
  %i.kw = getelementptr inbounds nuw i8, ptr %.168.i, i64 8 ; 2 uses
  %i.kx = load i64, ptr %i.kv, align 8, !tbaa !96
  %i.ky = zext i64 %i.kx to i128
  %i.kz = mul nuw i128 %.pre171, %i.ky
  %i.la = load i64, ptr %i.kw, align 8, !tbaa !96
  %i.lb = zext i64 %i.la to i128
  %i.lc = add nuw nsw i128 %i.ku, %i.lb
  %i.ld = add nuw i128 %i.lc, %i.kz               ; 2 uses
  %i.le = trunc i128 %i.ld to i64
  store i64 %i.le, ptr %i.kw, align 8, !tbaa !96
  %i.lf = lshr i128 %i.ld, 64
  %i.lg = trunc nuw i128 %i.lf to i64             ; 2 uses
  %i.lh = getelementptr inbounds nuw i8, ptr %.14867.i, i64 16
  %i.li = getelementptr inbounds nuw i8, ptr %.168.i, i64 16
  %i.lj = add i64 %.15066.i, -2                   ; 2 uses
  %.not54.i116.1 = icmp eq i64 %i.lj, 0
  br i1 %.not54.i116.1, label %bn_mul_add_words.exit, label %.lr.ph69.i, !llvm.loop !22

bn_mul_add_words.exit:                            ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i, %.preheader.i
  %.0.i117 = phi i64 [ %i.kh, %.preheader.i ], [ %.lcssa252.unr, %.lr.ph69.i.prol.loopexit ], [ %i.lg, %.lr.ph69.i ]
  %i.lk = getelementptr [8 x i8], ptr %i.hy, i64 %2 ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !96 ; 2 uses
  %i.lm = add i64 %.0.i117, %.04453.i             ; 2 uses
  %i.ln = add i64 %i.lm, %i.ll                    ; 2 uses
  %.not47.i = icmp ule i64 %i.ln, %i.ll
  %6 = or i64 %i.lm, %.04453.i
  %.narrow.i = icmp ne i64 %6, 0
  %narrow.i = select i1 %.not47.i, i1 %.narrow.i, i1 false
  %i.lo = zext i1 %narrow.i to i64                ; 2 uses
  store i64 %i.ln, ptr %i.lk, align 8, !tbaa !96
  %i.lp = add nuw i64 %.04354.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.lp, %2
  br i1 %exitcond.not.i, label %.preheader42.i.i.i, label %.lr.ph.i, !llvm.loop !23

bb.w:                                             ; preds = %bn_sqr_small.exit.i
  call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.8, i32 noundef 197) #36
  call void @abort() #37
  unreachable

bn_mod_mul_montgomery_small.exit:                 ; preds = %scalar.ph, %middle.block, %bb.v
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.bk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.lq = add i32 %.082151, 1                     ; 2 uses
  %.not97 = icmp ugt i32 %i.lq, %.084.lcssa
  br i1 %.not97, label %bb.y, label %.preheader, !llvm.loop !687

.critedge100:                                     ; preds = %._crit_edge149
  br i1 %i.az, label %_ZL14OPENSSL_memcpyPvPKvm.exit109, label %bb.x

bb.x:                                             ; preds = %.critedge100
  %i.lr = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 8 %i.lr, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

bb.y:                                             ; preds = %bn_mod_mul_montgomery_small.exit
  %i.ls = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.ls, i64 noundef %2, ptr noundef %5)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

_ZL14OPENSSL_memcpyPvPKvm.exit109:                ; preds = %bb.x, %.critedge100, %bb.y
  %i.lt = zext nneg i32 %.084.lcssa to i64
  %i.lu = icmp eq i64 %.us-phi, %i.lt
  %i.lv = add nuw i32 %.084.lcssa, 1
  %i.lw = zext i32 %i.lv to i64
  %i.lx = sub i64 %.us-phi, %i.lw
  br i1 %i.lu, label %.loopexit, label %.outer

.loopexit:                                        ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit109, %bn_is_bit_set_words.exit.thread, %bn_is_bit_set_words.exit.thread.us
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.d, i64 noundef 1152) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #36
  br label %bb.z

bb.z:                                             ; preds = %.loopexit, %bn_from_montgomery_small.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_from_montgomery_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132
  %i.d = sext i32 %i.c to i64
  %i.e = icmp ne i64 %1, %i.d
  %i.f = icmp ugt i64 %1, 9
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = shl nuw nsw i64 %1, 1                    ; 2 uses
  %i.h = icmp ugt i64 %3, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @abort() #37
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, i8 0, i64 144, i1 false)
  %i.i = icmp eq i64 %3, 0
  br i1 %i.i, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = shl nuw nsw i64 %3, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.a, ptr readonly align 1 %2, i64 %i.j, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.d, %bb.e
  %i.k = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef %0, i64 noundef %1, ptr noundef nonnull %i.a, i64 noundef %i.g, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  tail call void @abort() #37
  unreachable

bb.g:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.l = shl nuw nsw i64 %1, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.l) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_mod_mul_montgomery_small(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, ptr nofree noundef readonly captures(address) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = alloca [18 x i64], align 16              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.d = load i32, ptr %i.c, align 8, !tbaa !132
  %i.e = sext i32 %i.d to i64
  %i.f = icmp ne i64 %3, %i.e
  %i.g = icmp ugt i64 %3, 9
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  %i.h = icmp eq ptr %1, %2
  br i1 %i.h, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  switch i64 %3, label %bb.g [
    i64 4, label %bb.e
    i64 8, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  call void @bn_sqr_comba4(ptr noundef nonnull %i.b, ptr noundef readonly %1)
  br label %bn_sqr_small.exit

bb.f:                                             ; preds = %bb.d
  call void @bn_sqr_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %1)
  br label %bn_sqr_small.exit

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef nonnull %i.b, ptr noundef readonly %1, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.i = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.i) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bn_sqr_small.exit

bb.h:                                             ; preds = %bb.c
  %i.j = icmp eq i64 %3, 8
  br i1 %i.j, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void @bn_mul_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %1, ptr noundef readonly %2)
  br label %bn_sqr_small.exit

bb.j:                                             ; preds = %bb.h
  call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef nonnull %i.b, ptr noundef readonly %1, i64 noundef %3, ptr noundef readonly %2, i64 noundef %3)
  br label %bn_sqr_small.exit

bn_sqr_small.exit:                                ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.e
  %i.k = shl nuw nsw i64 %3, 1
  %i.l = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef %0, i64 noundef %3, ptr noundef nonnull %i.b, i64 noundef %i.k, ptr noundef nonnull %4)
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bn_sqr_small.exit
  call void @abort() #37
  unreachable

bb.l:                                             ; preds = %bn_sqr_small.exit
  %i.m = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.m) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 0, 2) i32 @bn_is_bit_set_words(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = lshr i64 %2, 6                           ; 2 uses
  %.not = icmp ult i64 %i.a, %1
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = and i64 %2, 63
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.a
  %i.d = load i64, ptr %i.c, align 8, !tbaa !96
  %i.e = lshr i64 %i.d, %i.b
  %i.f = trunc i64 %i.e to i32
  %i.g = and i32 %i.f, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

declare void @OPENSSL_cleanse(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_mod_inverse0_prime_mont_small(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [9 x i64], align 16               ; 15 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.c = load i32, ptr %i.b, align 8, !tbaa !132
  %i.d = sext i32 %i.c to i64
end_hunk_0
begin_hunk_1_@_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st:bb.a
.lr.ph.i.i:                                       ; preds = %.preheader42.i.i, %.lr.ph.i.i
  %.048.i.i = phi i64 [ %i.bj, %.lr.ph.i.i ], [ %1, %.preheader42.i.i ]
  %.02647.i.i = phi ptr [ %i.bh, %.lr.ph.i.i ], [ %i.b, %.preheader42.i.i ] ; 5 uses
  %.02846.i.i = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.i, %.preheader42.i.i ] ; 5 uses
  %.03045.i.i = phi ptr [ %i.bi, %.lr.ph.i.i ], [ %0, %.preheader42.i.i ] ; 5 uses
  %.04044.i.i = phi i64 [ %i.be, %.lr.ph.i.i ], [ 0, %.preheader42.i.i ]
  %i.j = load i64, ptr %.02846.i.i, align 8, !tbaa !96
  %i.k = load i64, ptr %.02647.i.i, align 8, !tbaa !96
  %i.l = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.j, i64 %i.k) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0
  %i.o = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.n, i64 %.04044.i.i) ; 2 uses
  %i.p = extractvalue { i64, i1 } %i.o, 1
  %i.q = extractvalue { i64, i1 } %i.o, 0
  %i.r = or i1 %i.m, %i.p
  %i.s = zext i1 %i.r to i64
  store i64 %i.q, ptr %.03045.i.i, align 8, !tbaa !96
  %i.t = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !96
  %i.x = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.u, i64 %i.w) ; 2 uses
  %i.y = extractvalue { i64, i1 } %i.x, 1
  %i.z = extractvalue { i64, i1 } %i.x, 0
  %i.aa = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.z, i64 %i.s) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = or i1 %i.y, %i.ab
  %i.ae = zext i1 %i.ad to i64
  %i.af = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 8
  store i64 %i.ac, ptr %i.af, align 8, !tbaa !96
  %i.ag = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !96
  %i.ai = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !96
  %i.ak = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ah, i64 %i.aj) ; 2 uses
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  %i.am = extractvalue { i64, i1 } %i.ak, 0
  %i.an = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.am, i64 %i.ae) ; 2 uses
  %i.ao = extractvalue { i64, i1 } %i.an, 1
  %i.ap = extractvalue { i64, i1 } %i.an, 0
  %i.aq = or i1 %i.al, %i.ao
  %i.ar = zext i1 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 16
  store i64 %i.ap, ptr %i.as, align 8, !tbaa !96
  %i.at = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 24
  %i.au = load i64, ptr %i.at, align 8, !tbaa !96
  %i.av = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 24
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !96
  %i.ax = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.au, i64 %i.aw) ; 2 uses
  %i.ay = extractvalue { i64, i1 } %i.ax, 1
  %i.az = extractvalue { i64, i1 } %i.ax, 0
  %i.ba = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.az, i64 %i.ar) ; 2 uses
  %i.bb = extractvalue { i64, i1 } %i.ba, 1
  %i.bc = extractvalue { i64, i1 } %i.ba, 0
  %i.bd = or i1 %i.ay, %i.bb
  %i.be = zext i1 %i.bd to i64                    ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 24
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !96
  %i.bg = getelementptr inbounds nuw i8, ptr %.02846.i.i, i64 32 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02647.i.i, i64 32 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.03045.i.i, i64 32 ; 2 uses
  %i.bj = add i64 %.048.i.i, -4                   ; 4 uses
  %.not.i.i = icmp ult i64 %i.bj, 4
  br i1 %.not.i.i, label %.preheader.i.i, label %.lr.ph.i.i, !llvm.loop !13

.lr.ph59.i.i:                                     ; preds = %.lr.ph59.i.i.preheader, %.lr.ph59.i.i
  %.158.i.i = phi i64 [ %i.bx, %.lr.ph59.i.i ], [ %.158.i.i.ph, %.lr.ph59.i.i.preheader ]
  %.12757.i.i = phi ptr [ %i.bv, %.lr.ph59.i.i ], [ %.12757.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.12956.i.i = phi ptr [ %i.bu, %.lr.ph59.i.i ], [ %.12956.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.13155.i.i = phi ptr [ %i.bw, %.lr.ph59.i.i ], [ %.13155.i.i.ph, %.lr.ph59.i.i.preheader ] ; 2 uses
  %.14154.i.i = phi i64 [ %i.bt, %.lr.ph59.i.i ], [ %.14154.i.i.ph, %.lr.ph59.i.i.preheader ]
  %i.bk = load i64, ptr %.12956.i.i, align 8, !tbaa !96
  %i.bl = load i64, ptr %.12757.i.i, align 8, !tbaa !96
  %i.bm = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bk, i64 %i.bl) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0
  %i.bp = tail call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.bo, i64 %.14154.i.i) ; 2 uses
  %i.bq = extractvalue { i64, i1 } %i.bp, 1
  %i.br = extractvalue { i64, i1 } %i.bp, 0
  %i.bs = or i1 %i.bn, %i.bq
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  store i64 %i.br, ptr %.13155.i.i, align 8, !tbaa !96
  %i.bu = getelementptr inbounds nuw i8, ptr %.12956.i.i, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %.12757.i.i, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.13155.i.i, i64 8
  %i.bx = add i64 %.158.i.i, -1                   ; 2 uses
  %.not34.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not34.i.i, label %.lr.ph.i11.i, label %.lr.ph59.i.i, !llvm.loop !14

.lr.ph.i11.i:                                     ; preds = %.lr.ph59.i.i, %.preheader.i.i
  %.032.i.ph.i = phi i64 [ %i.be, %.preheader.i.i ], [ %i.bt, %.lr.ph59.i.i ]
  %i.by = sub nsw i64 %i.dv, %.032.i.ph.i
  %i.bz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.by) #38, !srcloc !108 ; 5 uses
  %i.ca = xor i64 %i.bz, -1                       ; 4 uses
  %min.iters.check = icmp ult i64 %1, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i11.i
  %i.cb = shl nsw i64 %1, 3
  %scevgep = getelementptr i8, ptr %0, i64 %i.cb
  %i.cc = shl nsw i64 %1, 4
  %scevgep78 = getelementptr i8, ptr %2, i64 %i.cc
  %bound0 = icmp ult ptr %0, %scevgep78
  %bound1 = icmp ult ptr %i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %1, -4                         ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bz, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert79 = insertelement <2 x i64> poison, i64 %i.ca, i64 0
  %broadcast.splat80 = shufflevector <2 x i64> %broadcast.splatinsert79, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load = load <2 x i64>, ptr %i.cd, align 8, !tbaa !96, !alias.scope !916
  %wide.load81 = load <2 x i64>, ptr %i.ce, align 8, !tbaa !96, !alias.scope !916
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %index ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16 ; 2 uses
  %wide.load82 = load <2 x i64>, ptr %i.cf, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %wide.load83 = load <2 x i64>, ptr %i.cg, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %i.ch = and <2 x i64> %wide.load, %broadcast.splat
  %i.ci = and <2 x i64> %wide.load81, %broadcast.splat
  %i.cj = and <2 x i64> %wide.load82, %broadcast.splat80
  %i.ck = and <2 x i64> %wide.load83, %broadcast.splat80
  %i.cl = or disjoint <2 x i64> %i.cj, %i.ch
  %i.cm = or disjoint <2 x i64> %i.ck, %i.ci
  store <2 x i64> %i.cl, ptr %i.cf, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  store <2 x i64> %i.cm, ptr %i.cg, align 8, !tbaa !96, !alias.scope !917, !noalias !916
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !914

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %1, %n.vec
  br i1 %cmp.n, label %bn_reduce_once.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph.i11.i, %middle.block
  %.09.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i11.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.i.ph, 1
  %xtraiter = and i64 %1, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i.ph
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !96
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.ph ; 2 uses
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !96
  %i.cs = and i64 %i.cp, %i.bz
  %i.ct = and i64 %i.cr, %i.ca
  %i.cu = or disjoint i64 %i.ct, %i.cs
  store i64 %i.cu, ptr %i.cq, align 8, !tbaa !96
  %i.cv = or disjoint i64 %.09.i.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph.preheader ], [ %i.cv, %scalar.ph.prol ]
  %i.cw = icmp eq i64 %1, %.neg
  br i1 %i.cw, label %bn_reduce_once.exit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i = phi i64 [ %i.dm, %scalar.ph ], [ %.09.i.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.09.i.i
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !96
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = and i64 %i.cy, %i.bz
  %i.dc = and i64 %i.da, %i.ca
  %i.dd = or disjoint i64 %i.dc, %i.db
  store i64 %i.dd, ptr %i.cz, align 8, !tbaa !96
  %i.de = add nuw i64 %.09.i.i, 1                 ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.de
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !96
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.de ; 2 uses
  %i.di = load i64, ptr %i.dh, align 8, !tbaa !96
  %i.dj = and i64 %i.dg, %i.bz
  %i.dk = and i64 %i.di, %i.ca
  %i.dl = or disjoint i64 %i.dk, %i.dj
  store i64 %i.dl, ptr %i.dh, align 8, !tbaa !96
  %i.dm = add nuw i64 %.09.i.i, 2                 ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.dm, %1
  br i1 %exitcond.not.i.i.1, label %bn_reduce_once.exit, label %scalar.ph, !llvm.loop !915

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %.04354 = phi i64 [ %i.dw, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %.04453 = phi i64 [ %i.dv, %.lr.ph ], [ 0, %bb.c ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.04354 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !96
  %i.dp = mul i64 %i.do, %i.h
  %i.dq = tail call i64 @bn_mul_add_words(ptr noundef nonnull %i.dn, ptr noundef %i.b, i64 noundef %1, i64 noundef %i.dp)
  %i.dr = getelementptr [8 x i8], ptr %i.dn, i64 %1 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !96 ; 2 uses
  %i.dt = add i64 %i.dq, %.04453                  ; 2 uses
  %i.du = add i64 %i.dt, %i.ds                    ; 2 uses
  %.not47 = icmp ule i64 %i.du, %i.ds
  %5 = or i64 %i.dt, %.04453
  %.narrow = icmp ne i64 %5, 0
  %narrow = select i1 %.not47, i1 %.narrow, i1 false
  %i.dv = zext i1 %narrow to i64                  ; 2 uses
  store i64 %i.du, ptr %i.dr, align 8, !tbaa !96
  %i.dw = add nuw i64 %.04354, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.dw, %1
  br i1 %exitcond.not, label %.preheader42.i.i, label %.lr.ph, !llvm.loop !23

bn_reduce_once.exit:                              ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.c, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ 1, %middle.block ], [ 1, %scalar.ph ], [ 1, %scalar.ph.prol.loopexit ]
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_sqr_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = shl i64 %3, 1
  %i.c = icmp ne i64 %1, %i.b
  %i.d = icmp ugt i64 %3, 9
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  switch i64 %3, label %bb.f [
    i64 4, label %bb.d
    i64 8, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba4(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  tail call void @bn_sqr_comba8(ptr noundef %0, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef nonnull %i.a)
  %i.e = shl nuw nsw i64 %3, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.e) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define hidden void @bn_mul_small(ptr nofree noundef captures(none) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #2 {
bb.a:
  %i.a = add i64 %5, %3
  %.not = icmp eq i64 %1, %i.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %3, 8
  %i.c = icmp eq i64 %5, 8
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @bn_mul_comba8(ptr noundef %0, ptr noundef %2, ptr noundef %4)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call fastcc void @_ZL13bn_mul_normalPmPKmmS1_m(ptr noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @bn_mont_n0(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !112
  %i.b = load i64, ptr %i.a, align 8, !tbaa !96   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.018.i = phi i64 [ 1, %bb.a ], [ %i.p, %bb.b ] ; 3 uses
  %.01417.i = phi i64 [ 0, %bb.a ], [ %i.u, %bb.b ]
  %.01516.i = phi i64 [ 0, %bb.a ], [ %i.v, %bb.b ]
  %i.c = and i64 %.018.i, 1
  %i.d = sub nsw i64 0, %i.c                      ; 2 uses
  %i.e = and i64 %i.b, %i.d                       ; 2 uses
  %i.f = xor i64 %i.e, %.018.i
  %i.g = lshr i64 %i.f, 1
  %i.h = and i64 %i.e, %.018.i
  %i.i = add i64 %i.g, %i.h                       ; 3 uses
  %i.j = and i64 %i.i, 1
  %i.k = sub nsw i64 0, %i.j                      ; 2 uses
  %i.l = and i64 %i.b, %i.k                       ; 2 uses
  %i.m = xor i64 %i.l, %i.i
  %i.n = lshr i64 %i.m, 1
  %i.o = and i64 %i.l, %i.i
  %i.p = add i64 %i.n, %i.o
  %i.q = and i64 %i.k, -9223372036854775808
  %i.r = lshr i64 %.01417.i, 2
  %i.s = and i64 %i.d, 4611686018427387904
  %i.t = or disjoint i64 %i.r, %i.s
  %i.u = or disjoint i64 %i.q, %i.t               ; 2 uses
  %i.v = add nuw nsw i64 %.01516.i, 2             ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.v, 64
  br i1 %exitcond.not.i.1, label %_ZL20bn_neg_inv_mod_r_u64m.exit, label %bb.b, !llvm.loop !26

_ZL20bn_neg_inv_mod_r_u64m.exit:                  ; preds = %bb.b
  ret i64 %i.u
}

; Function Attrs: mustprogress nounwind uwtable
define range(i32 0, 2) i32 @bn_abs_sub_consttime(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef captures(none) %3) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !113  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !113  ; 3 uses
  %. = tail call i32 @llvm.smin.i32(i32 %i.b, i32 %i.d) ; 3 uses
  %i.e = sub nsw i32 %i.b, %i.d                   ; 3 uses
  %i.f = tail call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d) ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.h = load i8, ptr %i.g, align 8, !tbaa !121
  %.not.i = icmp eq i8 %i.h, 0
  br i1 %.not.i, label %bb.b, label %BN_CTX_start.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.k = load i64, ptr %i.j, align 8, !tbaa !122
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !123  ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !124
  %i.p = icmp eq i64 %i.m, %i.o
  br i1 %i.p, label %bb.c, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.b
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !120
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i64 %i.m, 0
  %i.q = mul i64 %i.m, 3
  %i.r = lshr i64 %i.q, 1
  %i.s = select i1 %.not.i.i, i64 32, i64 %i.r    ; 4 uses
  %i.t = icmp ule i64 %i.s, %i.m
  %i.u = icmp samesign ugt i64 %i.s, 2305843009213693951
  %or.cond.i.i = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load ptr, ptr %i.i, align 8, !tbaa !120
  %i.w = shl nuw i64 %i.s, 3
  %i.x = tail call ptr @OPENSSL_realloc(ptr noundef %i.v, i64 noundef %i.w) #36 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.x, ptr %i.i, align 8, !tbaa !120
  store i64 %i.s, ptr %i.n, align 8, !tbaa !124
  %.pre26.i.i = load i64, ptr %i.l, align 8, !tbaa !123
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.e, %._crit_edge.i.i
  %i.z = phi i64 [ %i.m, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.aa = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.x, %bb.e ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %i.z
  store i64 %i.k, ptr %i.ab, align 8, !tbaa !96
  %i.ac = load i64, ptr %i.l, align 8, !tbaa !123
  %i.ad = add i64 %i.ac, 1
  store i64 %i.ad, ptr %i.l, align 8, !tbaa !123
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.g, align 8, !tbaa !121
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.ae, align 1, !tbaa !125
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.af = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 8 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %.thread, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ag = sext i32 %i.f to i64                    ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !114
  %.not.i32 = icmp ugt i32 %i.f, %i.ai
  br i1 %.not.i32, label %bb.h, label %bn_wexpand.exit

end_hunk_1
