Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 370
begin_hunk_0_@BN_from_montgomery:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.q = shl nuw i64 %i.m, 3
  %i.r = tail call ptr @OPENSSL_realloc(ptr noundef %i.p, i64 noundef %i.q) #36 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.r, ptr %i.c, align 8, !tbaa !120
  store i64 %i.m, ptr %i.h, align 8, !tbaa !124
  %.pre26.i.i = load i64, ptr %i.f, align 8, !tbaa !123
  br label %_ZL13BN_STACK_pushP8BN_STACKm.exit.i

_ZL13BN_STACK_pushP8BN_STACKm.exit.i:             ; preds = %bb.e, %._crit_edge.i.i
  %i.t = phi i64 [ %i.g, %._crit_edge.i.i ], [ %.pre26.i.i, %bb.e ]
  %i.u = phi ptr [ %.pre.i.i, %._crit_edge.i.i ], [ %i.r, %bb.e ]
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.t
  store i64 %i.e, ptr %i.v, align 8, !tbaa !96
  %i.w = load i64, ptr %i.f, align 8, !tbaa !123
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.f, align 8, !tbaa !123
  br label %BN_CTX_start.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !121
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 41
  store i8 1, ptr %i.y, align 1, !tbaa !125
  br label %BN_CTX_start.exit

BN_CTX_start.exit:                                ; preds = %bb.a, %_ZL13BN_STACK_pushP8BN_STACKm.exit.i, %bb.f
  %i.z = tail call ptr @BN_CTX_get(ptr noundef nonnull %3) ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.i, label %bb.g

bb.g:                                             ; preds = %BN_CTX_start.exit
  %i.ab = tail call ptr @BN_copy(ptr noundef nonnull %i.z, ptr noundef %1)
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = tail call fastcc noundef i32 @_ZL23BN_from_montgomery_wordP9bignum_stS0_PK14bn_mont_ctx_st(ptr noundef %0, ptr noundef %i.z, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %BN_CTX_start.exit, %bb.g, %bb.h
  %.0 = phi i32 [ 0, %BN_CTX_start.exit ], [ %i.ac, %bb.h ], [ 0, %bb.g ]
  %i.ad = load i8, ptr %i.a, align 8, !tbaa !121
  %.not.i10 = icmp eq i8 %i.ad, 0
  br i1 %.not.i10, label %bb.j, label %BN_CTX_end.exit

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !123
  %i.ah = add i64 %i.ag, -1                       ; 2 uses
  store i64 %i.ah, ptr %i.af, align 8, !tbaa !123
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !120
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ah
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !96
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !122
  br label %BN_CTX_end.exit

BN_CTX_end.exit:                                  ; preds = %bb.i, %bb.j
  ret i32 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @bn_mod_exp_mont_small(ptr nofree noundef captures(address) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr nofree noundef readonly captures(none) %5) local_unnamed_addr #5 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = alloca [18 x i64], align 16              ; 8 uses
  %i.c = alloca [18 x i64], align 16              ; 6 uses
  %i.d = alloca [16 x [9 x i64]], align 16        ; 10 uses
  %i.e = alloca [9 x i64], align 16               ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !132
  %i.h = sext i32 %i.g to i64
  %i.i = icmp ne i64 %2, %i.h
  %i.j = icmp ugt i64 %2, 9
  %or.cond = or i1 %i.j, %i.i
  %i.k = icmp ugt i64 %4, 288230376151711743
  %or.cond3 = or i1 %i.k, %or.cond
  br i1 %or.cond3, label %bb.b, label %.preheader124

.preheader124:                                    ; preds = %bb.a
  %cond138 = icmp eq i64 %4, 0
  br i1 %cond138, label %.loopexit197, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

.lr.ph:                                           ; preds = %.preheader124, %bb.c
  %.091139 = phi i64 [ %i.p, %bb.c ], [ %4, %.preheader124 ] ; 9 uses
  %i.l = getelementptr [8 x i8], ptr %3, i64 %.091139
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !96   ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nsw i64 %.091139, -1                 ; 2 uses
  %cond = icmp eq i64 %i.p, 0
  br i1 %cond, label %.loopexit197, label %.lr.ph, !llvm.loop !682

.loopexit197:                                     ; preds = %bb.c, %.preheader124
  %i.q = load ptr, ptr %5, align 8, !tbaa !133
  %i.r = shl nuw nsw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit197
  %i.t = shl nuw nsw i64 %2, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %i.q, i64 %i.t, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.d, %.loopexit197
  %i.u = call fastcc noundef i32 @_ZL27bn_from_montgomery_in_placePmmS_mPK14bn_mont_ctx_st(ptr noundef %0, i64 noundef %2, ptr noundef nonnull %i.c, i64 noundef %i.r, ptr noundef nonnull readonly %5)
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bn_from_montgomery_small.exit

bb.e:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  tail call void @abort() #37
  unreachable

bn_from_montgomery_small.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %i.v = shl nuw nsw i64 %2, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef %i.v) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #36
  br label %bb.z

.critedge:                                        ; preds = %.lr.ph
  %i.w = lshr i64 %i.n, 32                        ; 2 uses
  %.not.i101 = icmp eq i64 %i.w, 0                ; 2 uses
  %i.x = select i1 %.not.i101, i64 1, i64 33
  %i.y = select i1 %.not.i101, i64 %i.n, i64 %i.w ; 2 uses
  %i.z = lshr i64 %i.y, 16                        ; 2 uses
  %.not52.i = icmp eq i64 %i.z, 0                 ; 2 uses
  %i.aa = select i1 %.not52.i, i64 0, i64 16
  %i.ab = or disjoint i64 %i.x, %i.aa
  %i.ac = select i1 %.not52.i, i64 %i.y, i64 %i.z ; 2 uses
  %i.ad = lshr i64 %i.ac, 8                       ; 2 uses
  %.not53.i = icmp eq i64 %i.ad, 0                ; 2 uses
  %i.ae = select i1 %.not53.i, i64 0, i64 8
  %i.af = or disjoint i64 %i.ab, %i.ae
  %i.ag = select i1 %.not53.i, i64 %i.ac, i64 %i.ad ; 2 uses
  %i.ah = lshr i64 %i.ag, 4                       ; 2 uses
  %.not54.i = icmp eq i64 %i.ah, 0                ; 2 uses
  %i.ai = select i1 %.not54.i, i64 0, i64 4
  %i.aj = or disjoint i64 %i.af, %i.ai
  %i.ak = select i1 %.not54.i, i64 %i.ag, i64 %i.ah ; 2 uses
  %i.al = lshr i64 %i.ak, 2                       ; 2 uses
  %.not55.i = icmp eq i64 %i.al, 0                ; 2 uses
  %i.am = select i1 %.not55.i, i64 0, i64 2
  %i.an = or disjoint i64 %i.aj, %i.am
  %i.ao = select i1 %.not55.i, i64 %i.ak, i64 %i.al
  %i.ap = icmp samesign ugt i64 %i.ao, 1
  %.neg.i = zext i1 %i.ap to i64
  %i.aq = add nuw nsw i64 %i.an, %.neg.i
  %i.ar = shl i64 %.091139, 6
  %i.as = add i64 %i.ar, -64
  %i.at = add nuw i64 %i.aq, %i.as                ; 5 uses
  %i.au = icmp ugt i64 %i.at, 671
  br i1 %i.au, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.av = icmp samesign ugt i64 %i.at, 239
  br i1 %i.av, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %i.at, 79
  br i1 %i.aw, label %_ZL32BN_window_bits_for_exponent_sizem.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp samesign ugt i64 %i.at, 23
  %..i = select i1 %i.ax, i32 3, i32 1
  br label %_ZL32BN_window_bits_for_exponent_sizem.exit

_ZL32BN_window_bits_for_exponent_sizem.exit:      ; preds = %.critedge, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 4, %bb.g ], [ 6, %.critedge ], [ 5, %bb.f ], [ %..i, %bb.h ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 5) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #36
  %i.ay = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.az = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %i.az, label %_ZL14OPENSSL_memcpyPvPKvm.exit, label %bb.i

bb.i:                                             ; preds = %_ZL32BN_window_bits_for_exponent_sizem.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr readonly align 1 %1, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %_ZL32BN_window_bits_for_exponent_sizem.exit, %bb.i
  %i.ba = icmp samesign ugt i32 %.0.i, 1          ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #36
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %5)
  %i.bb = add nsw i32 %spec.store.select, -1      ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge144, label %.lr.ph143

._crit_edge144:                                   ; preds = %.lr.ph143, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  br label %bb.k

.lr.ph143:                                        ; preds = %bb.j, %.lr.ph143
  %.090141 = phi i32 [ %i.bh, %.lr.ph143 ], [ 1, %bb.j ] ; 3 uses
  %i.bc = zext i32 %.090141 to i64
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.bc
  %i.be = add i32 %.090141, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.bf
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.e, i64 noundef %2, ptr noundef %5)
  %i.bh = add i32 %.090141, 1                     ; 2 uses
  %.090.highbits = lshr i32 %i.bh, %i.bb
  %i.bi = icmp eq i32 %.090.highbits, 0
  br i1 %i.bi, label %.lr.ph143, label %._crit_edge144, !llvm.loop !683

bb.k:                                             ; preds = %._crit_edge144, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.bj = add i64 %i.at, -1
  %i.bk = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.not56.i = icmp ult i64 %2, 4
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2 ; 4 uses
  %i.bo = zext nneg i32 %spec.store.select to i64
  %i.bp = add nsw i64 %i.bo, -2
  %min.iters.check = icmp ult i64 %2, 4
  %n.vec = and i64 %2, 12                         ; 3 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %.outer

.outer:                                           ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit109, %bb.k
  %.not95 = phi i1 [ true, %_ZL14OPENSSL_memcpyPvPKvm.exit109 ], [ false, %bb.k ] ; 2 uses
  %.087.ph = phi i64 [ %i.ly, %_ZL14OPENSSL_memcpyPvPKvm.exit109 ], [ %i.bj, %bb.k ] ; 2 uses
  br i1 %.not95, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.l
  %.087.us = phi i64 [ %i.bx, %bb.l ], [ %.087.ph, %.outer ] ; 5 uses
  %i.bq = lshr i64 %.087.us, 6                    ; 2 uses
  %.not.i102.us = icmp ult i64 %i.bq, %.091139
  br i1 %.not.i102.us, label %bn_is_bit_set_words.exit.us, label %bn_is_bit_set_words.exit.thread.us

bn_is_bit_set_words.exit.us:                      ; preds = %.outer.split.us
  %i.br = and i64 %.087.us, 63
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bq
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !96
  %i.bu = shl nuw i64 1, %i.br
  %i.bv = and i64 %i.bt, %i.bu
  %.not94.us = icmp eq i64 %i.bv, 0
  br i1 %.not94.us, label %bn_is_bit_set_words.exit.thread.us, label %.preheader122

bn_is_bit_set_words.exit.thread.us:               ; preds = %bn_is_bit_set_words.exit.us, %.outer.split.us
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %2, ptr noundef %5)
  %i.bw = icmp eq i64 %.087.us, 0
  br i1 %i.bw, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bn_is_bit_set_words.exit.thread.us
  %i.bx = add i64 %.087.us, -1
  br label %.outer.split.us, !llvm.loop !684

.outer.split:                                     ; preds = %.outer, %bb.m
  %.087 = phi i64 [ %i.cl, %bb.m ], [ %.087.ph, %.outer ] ; 5 uses
  %i.by = lshr i64 %.087, 6                       ; 2 uses
  %.not.i102 = icmp ult i64 %i.by, %.091139
  br i1 %.not.i102, label %bn_is_bit_set_words.exit, label %bn_is_bit_set_words.exit.thread

bn_is_bit_set_words.exit:                         ; preds = %.outer.split
  %i.bz = and i64 %.087, 63
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.by
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !96
  %i.cc = shl nuw i64 1, %i.bz
  %i.cd = and i64 %i.cb, %i.cc
  %.not94 = icmp eq i64 %i.cd, 0
  br i1 %.not94, label %bn_is_bit_set_words.exit.thread, label %.preheader122

.preheader122:                                    ; preds = %bn_is_bit_set_words.exit, %bn_is_bit_set_words.exit.us
  %.us-phi = phi i64 [ %.087.us, %bn_is_bit_set_words.exit.us ], [ %.087, %bn_is_bit_set_words.exit ] ; 8 uses
  %i.ce = icmp ne i64 %.us-phi, 0
  %i.cf = and i1 %i.ba, %i.ce
  br i1 %i.cf, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %.preheader122
  %i.cg = add i64 %.us-phi, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.cg, i64 %i.bp) ; 2 uses
  %i.ch = add i64 %umin, 1                        ; 2 uses
  %i.ci = add i64 %.us-phi, -1                    ; 2 uses
  %i.cj = lshr i64 %i.ci, 6                       ; 2 uses
  %.not.i104 = icmp ult i64 %i.cj, %.091139
  br i1 %.not.i104, label %bn_is_bit_set_words.exit106, label %.thread

bn_is_bit_set_words.exit.thread:                  ; preds = %.outer.split, %bn_is_bit_set_words.exit
  %i.ck = icmp eq i64 %.087, 0
  br i1 %i.ck, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bn_is_bit_set_words.exit.thread
  %i.cl = add i64 %.087, -1
  br label %.outer.split, !llvm.loop !684

._crit_edge149.loopexit:                          ; preds = %.lr.ph148.3, %bn_is_bit_set_words.exit106.3, %bb.p, %.thread.2, %.thread.1, %.thread
  %.lcssa247 = phi i32 [ %i.cu, %.thread ], [ %i.dh, %.thread.1 ], [ %i.du, %.thread.2 ], [ %i.eg, %bb.p ], [ %i.du, %.lr.ph148.3 ], [ %i.du, %bn_is_bit_set_words.exit106.3 ]
  %.lcssa = phi i32 [ %i.cv, %.thread ], [ %i.di, %.thread.1 ], [ %i.dv, %.thread.2 ], [ 4, %bb.p ], [ %i.dv, %.lr.ph148.3 ], [ %i.dv, %bn_is_bit_set_words.exit106.3 ]
  %i.cm = lshr i32 %.lcssa247, 1
  %i.cn = zext nneg i32 %i.cm to i64
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %.preheader122
  %.085.lcssa = phi i64 [ 0, %.preheader122 ], [ %i.cn, %._crit_edge149.loopexit ] ; 2 uses
  %.084.lcssa = phi i32 [ 0, %.preheader122 ], [ %.lcssa, %._crit_edge149.loopexit ] ; 3 uses
  br i1 %.not95, label %.preheader, label %.critedge100

bn_is_bit_set_words.exit106:                      ; preds = %.lr.ph148.preheader
  %i.co = and i64 %i.ci, 63
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !96
  %i.cr = shl nuw i64 1, %i.co
  %i.cs = and i64 %i.cq, %i.cr
  %.fr = freeze i64 %i.cs
  %i.ct = icmp eq i64 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.ct, i32 1, i32 3
  %spec.select280 = select i1 %i.ct, i32 0, i32 1
  br label %.thread

.thread:                                          ; preds = %bn_is_bit_set_words.exit106, %.lr.ph148.preheader
  %i.cu = phi i32 [ %spec.select, %bn_is_bit_set_words.exit106 ], [ 1, %.lr.ph148.preheader ] ; 4 uses
  %i.cv = phi i32 [ %spec.select280, %bn_is_bit_set_words.exit106 ], [ 0, %.lr.ph148.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %._crit_edge149.loopexit, label %.lr.ph148.1

.lr.ph148.1:                                      ; preds = %.thread
  %i.cw = add i64 %.us-phi, -2                    ; 2 uses
  %i.cx = lshr i64 %i.cw, 6                       ; 2 uses
  %.not.i104.1 = icmp ult i64 %i.cx, %.091139
  br i1 %.not.i104.1, label %bn_is_bit_set_words.exit106.1, label %.thread.1

bn_is_bit_set_words.exit106.1:                    ; preds = %.lr.ph148.1
  %i.cy = and i64 %i.cw, 63
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cx
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !96
  %i.db = shl nuw i64 1, %i.cy
  %i.dc = and i64 %i.da, %i.db
  %.fr.1 = freeze i64 %i.dc
  %i.dd = icmp eq i64 %.fr.1, 0
  br i1 %i.dd, label %.thread.1, label %bb.n

bb.n:                                             ; preds = %bn_is_bit_set_words.exit106.1
  %i.de = sub nuw nsw i32 2, %i.cv
  %i.df = shl nuw nsw i32 %i.cu, %i.de
  %i.dg = or disjoint i32 %i.df, 1
  br label %.thread.1

.thread.1:                                        ; preds = %bb.n, %bn_is_bit_set_words.exit106.1, %.lr.ph148.1
  %i.dh = phi i32 [ %i.dg, %bb.n ], [ %i.cu, %.lr.ph148.1 ], [ %i.cu, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %i.di = phi i32 [ 2, %bb.n ], [ %i.cv, %.lr.ph148.1 ], [ %i.cv, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %exitcond.not.1 = icmp eq i64 %i.ch, 2
  br i1 %exitcond.not.1, label %._crit_edge149.loopexit, label %.lr.ph148.2

.lr.ph148.2:                                      ; preds = %.thread.1
  %i.dj = add i64 %.us-phi, -3                    ; 2 uses
  %i.dk = lshr i64 %i.dj, 6                       ; 2 uses
  %.not.i104.2 = icmp ult i64 %i.dk, %.091139
  br i1 %.not.i104.2, label %bn_is_bit_set_words.exit106.2, label %.thread.2

bn_is_bit_set_words.exit106.2:                    ; preds = %.lr.ph148.2
  %i.dl = and i64 %i.dj, 63
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dk
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !96
  %i.do = shl nuw i64 1, %i.dl
  %i.dp = and i64 %i.dn, %i.do
  %.fr.2 = freeze i64 %i.dp
  %i.dq = icmp eq i64 %.fr.2, 0
  br i1 %i.dq, label %.thread.2, label %bb.o

bb.o:                                             ; preds = %bn_is_bit_set_words.exit106.2
  %i.dr = sub nsw i32 3, %i.di
  %i.ds = shl i32 %i.dh, %i.dr
  %i.dt = or i32 %i.ds, 1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.o, %bn_is_bit_set_words.exit106.2, %.lr.ph148.2
  %i.du = phi i32 [ %i.dt, %bb.o ], [ %i.dh, %.lr.ph148.2 ], [ %i.dh, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %i.dv = phi i32 [ 3, %bb.o ], [ %i.di, %.lr.ph148.2 ], [ %i.di, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %exitcond.not.2 = icmp eq i64 %i.ch, 3
  br i1 %exitcond.not.2, label %._crit_edge149.loopexit, label %.lr.ph148.3

.lr.ph148.3:                                      ; preds = %.thread.2
  %i.dw = add i64 %.us-phi, -4                    ; 2 uses
  %i.dx = lshr i64 %i.dw, 6                       ; 2 uses
  %.not.i104.3 = icmp ult i64 %i.dx, %.091139
  br i1 %.not.i104.3, label %bn_is_bit_set_words.exit106.3, label %._crit_edge149.loopexit

bn_is_bit_set_words.exit106.3:                    ; preds = %.lr.ph148.3
  %i.dy = and i64 %i.dw, 63
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dx
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !96
  %i.eb = shl nuw i64 1, %i.dy
  %i.ec = and i64 %i.ea, %i.eb
  %.fr.3 = freeze i64 %i.ec
  %i.ed = icmp eq i64 %.fr.3, 0
  br i1 %i.ed, label %._crit_edge149.loopexit, label %bb.p

bb.p:                                             ; preds = %bn_is_bit_set_words.exit106.3
end_hunk_0
