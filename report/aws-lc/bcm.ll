Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@BN_MONT_CTX_free:bb.a
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !95   ; 2 uses
  %i.d = and i32 %i.c, 2
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.f) #46
  %.pre.i.i = load i32, ptr %i.b, align 4, !tbaa !95
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.pre.i.i, %bb.c ], [ %i.c, %bb.b ]
  %i.h = and i32 %i.g, 1
  %.not.i.i = icmp eq i32 %i.h, 0
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #46
  br label %BN_free.exit.i

bb.f:                                             ; preds = %bb.d
  store ptr null, ptr %0, align 8, !tbaa !92
  br label %BN_free.exit.i

BN_free.exit.i:                                   ; preds = %bb.f, %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !95   ; 2 uses
  %i.l = and i32 %i.k, 2
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.g, label %bb.h

bb.g:                                             ; preds = %BN_free.exit.i
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !92
  tail call void @OPENSSL_free(ptr noundef %i.n) #46
  %.pre.i3.i = load i32, ptr %i.j, align 4, !tbaa !95
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %BN_free.exit.i
  %i.o = phi i32 [ %.pre.i3.i, %bb.g ], [ %i.k, %BN_free.exit.i ]
  %i.p = and i32 %i.o, 1
  %.not.i2.i = icmp eq i32 %i.p, 0
  br i1 %.not.i2.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @OPENSSL_free(ptr noundef nonnull %i.i) #46
  br label %bn_mont_ctx_cleanup.exit

bb.j:                                             ; preds = %bb.h
  store ptr null, ptr %i.i, align 8, !tbaa !92
  br label %bn_mont_ctx_cleanup.exit

bn_mont_ctx_cleanup.exit:                         ; preds = %bb.i, %bb.j
  tail call void @OPENSSL_free(ptr noundef nonnull %0) #46
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bn_mont_ctx_cleanup.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @bn_mod_exp_mont_small(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [18 x i64], align 16              ; 4 uses
  %i.b = alloca [18 x i64], align 16              ; 5 uses
  %i.c = alloca [18 x i64], align 16              ; 6 uses
  %i.d = alloca [16 x [9 x i64]], align 16        ; 10 uses
  %i.e = alloca [9 x i64], align 16               ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !122
  %i.h = sext i32 %i.g to i64
  %i.i = icmp ne i64 %2, %i.h
  %i.j = icmp ugt i64 %2, 9
  %or.cond = or i1 %i.j, %i.i
  %i.k = icmp ugt i64 %4, 288230376151711743
  %or.cond3 = or i1 %i.k, %or.cond
  br i1 %or.cond3, label %bb.b, label %.preheader114

.preheader114:                                    ; preds = %bb.a
  %cond117 = icmp eq i64 %4, 0
  br i1 %cond117, label %.loopexit170, label %.lr.ph

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #49
  unreachable

.lr.ph:                                           ; preds = %.preheader114, %bb.c
  %.091118 = phi i64 [ %i.p, %bb.c ], [ %4, %.preheader114 ] ; 9 uses
  %i.l = getelementptr [8 x i8], ptr %3, i64 %.091118
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80   ; 3 uses
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph
  %i.p = add nsw i64 %.091118, -1                 ; 2 uses
  %cond = icmp eq i64 %i.p, 0
  br i1 %cond, label %.loopexit170, label %.lr.ph, !llvm.loop !1220

.loopexit170:                                     ; preds = %bb.c, %.preheader114
  %i.q = load ptr, ptr %5, align 8, !tbaa !124
  %i.r = shl nuw nsw i64 %2, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, i8 0, i64 144, i1 false)
  %i.s = icmp eq i64 %2, 0
  br i1 %i.s, label %OPENSSL_memcpy.exit.i, label %bb.d

bb.d:                                             ; preds = %.loopexit170
  %i.t = shl nuw nsw i64 %2, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr readonly align 1 %i.q, i64 %i.t, i1 false)
  br label %OPENSSL_memcpy.exit.i

OPENSSL_memcpy.exit.i:                            ; preds = %bb.d, %.loopexit170
  %i.u = call fastcc i32 @bn_from_montgomery_in_place(ptr noundef %0, i64 noundef %2, ptr noundef nonnull %i.c, i64 noundef %i.r, ptr noundef nonnull readonly %5)
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %bb.e, label %bn_from_montgomery_small.exit

bb.e:                                             ; preds = %OPENSSL_memcpy.exit.i
  call void @abort() #49
  unreachable

bn_from_montgomery_small.exit:                    ; preds = %OPENSSL_memcpy.exit.i
  %i.v = shl nuw nsw i64 %2, 4
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.c, i64 noundef %i.v) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  br label %bb.u

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
  %i.ar = shl i64 %.091118, 6
  %i.as = add i64 %i.ar, -64
  %i.at = add nuw i64 %i.aq, %i.as                ; 5 uses
  %i.au = icmp ugt i64 %i.at, 671
  br i1 %i.au, label %BN_window_bits_for_exponent_size.exit, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.av = icmp samesign ugt i64 %i.at, 239
  br i1 %i.av, label %BN_window_bits_for_exponent_size.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aw = icmp samesign ugt i64 %i.at, 79
  br i1 %i.aw, label %BN_window_bits_for_exponent_size.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ax = icmp samesign ugt i64 %i.at, 23
  %..i = select i1 %i.ax, i32 3, i32 1
  br label %BN_window_bits_for_exponent_size.exit

BN_window_bits_for_exponent_size.exit:            ; preds = %.critedge, %bb.f, %bb.g, %bb.h
  %.0.i = phi i32 [ 4, %bb.g ], [ 6, %.critedge ], [ 5, %bb.f ], [ %..i, %bb.h ] ; 2 uses
  %spec.store.select = tail call i32 @llvm.umin.i32(i32 %.0.i, i32 5) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.ay = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.az = icmp eq i64 %2, 0                       ; 2 uses
  br i1 %i.az, label %OPENSSL_memcpy.exit, label %bb.i

bb.i:                                             ; preds = %BN_window_bits_for_exponent_size.exit
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.d, ptr readonly align 1 %1, i64 %i.ay, i1 false)
  br label %OPENSSL_memcpy.exit

OPENSSL_memcpy.exit:                              ; preds = %BN_window_bits_for_exponent_size.exit, %bb.i
  %i.ba = icmp samesign ugt i32 %.0.i, 1          ; 2 uses
  br i1 %i.ba, label %bb.j, label %bb.k

bb.j:                                             ; preds = %OPENSSL_memcpy.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.e, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, i64 noundef %2, ptr noundef %5)
  %i.bb = add nsw i32 %spec.store.select, -1      ; 2 uses
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %._crit_edge123, label %.lr.ph122

._crit_edge123:                                   ; preds = %.lr.ph122, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  br label %bb.k

.lr.ph122:                                        ; preds = %bb.j, %.lr.ph122
  %.090120 = phi i32 [ %i.bh, %.lr.ph122 ], [ 1, %bb.j ] ; 3 uses
  %i.bc = zext i32 %.090120 to i64
  %i.bd = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.bc
  %i.be = add i32 %.090120, -1
  %i.bf = zext i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %i.bf
  call void @bn_mod_mul_montgomery_small(ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.e, i64 noundef %2, ptr noundef %5)
  %i.bh = add i32 %.090120, 1                     ; 2 uses
  %.090.highbits = lshr i32 %i.bh, %i.bb
  %i.bi = icmp eq i32 %.090.highbits, 0
  br i1 %i.bi, label %.lr.ph122, label %._crit_edge123, !llvm.loop !1221

bb.k:                                             ; preds = %._crit_edge123, %OPENSSL_memcpy.exit
  %i.bj = add i64 %i.at, -1
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bl = icmp ugt i64 %2, 1
  %i.bm = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.bn = shl nuw nsw i64 %2, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bp = zext nneg i32 %spec.store.select to i64
  %i.bq = add nsw i64 %i.bp, -2
  br label %.outer

.outer:                                           ; preds = %OPENSSL_memcpy.exit109, %bb.k
  %.not95 = phi i1 [ true, %OPENSSL_memcpy.exit109 ], [ false, %bb.k ] ; 2 uses
  %.087.ph = phi i64 [ %i.ex, %OPENSSL_memcpy.exit109 ], [ %i.bj, %bb.k ] ; 2 uses
  br i1 %.not95, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.l
  %.087.us = phi i64 [ %i.by, %bb.l ], [ %.087.ph, %.outer ] ; 5 uses
  %i.br = lshr i64 %.087.us, 6                    ; 2 uses
  %.not.i102.us = icmp ult i64 %i.br, %.091118
  br i1 %.not.i102.us, label %bn_is_bit_set_words.exit.us, label %bn_is_bit_set_words.exit.thread.us

bn_is_bit_set_words.exit.us:                      ; preds = %.outer.split.us
  %i.bs = and i64 %.087.us, 63
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.br
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !80
  %i.bv = shl nuw i64 1, %i.bs
  %i.bw = and i64 %i.bu, %i.bv
  %.not94.us = icmp eq i64 %i.bw, 0
  br i1 %.not94.us, label %bn_is_bit_set_words.exit.thread.us, label %.preheader112

bn_is_bit_set_words.exit.thread.us:               ; preds = %bn_is_bit_set_words.exit.us, %.outer.split.us
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %2, ptr noundef %5)
  %i.bx = icmp eq i64 %.087.us, 0
  br i1 %i.bx, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bn_is_bit_set_words.exit.thread.us
  %i.by = add i64 %.087.us, -1
  br label %.outer.split.us

.outer.split:                                     ; preds = %.outer, %bb.m
  %.087 = phi i64 [ %i.cm, %bb.m ], [ %.087.ph, %.outer ] ; 5 uses
  %i.bz = lshr i64 %.087, 6                       ; 2 uses
  %.not.i102 = icmp ult i64 %i.bz, %.091118
  br i1 %.not.i102, label %bn_is_bit_set_words.exit, label %bn_is_bit_set_words.exit.thread

bn_is_bit_set_words.exit:                         ; preds = %.outer.split
  %i.ca = and i64 %.087, 63
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bz
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !80
  %i.cd = shl nuw i64 1, %i.ca
  %i.ce = and i64 %i.cc, %i.cd
  %.not94 = icmp eq i64 %i.ce, 0
  br i1 %.not94, label %bn_is_bit_set_words.exit.thread, label %.preheader112

.preheader112:                                    ; preds = %bn_is_bit_set_words.exit, %bn_is_bit_set_words.exit.us
  %.us-phi = phi i64 [ %.087.us, %bn_is_bit_set_words.exit.us ], [ %.087, %bn_is_bit_set_words.exit ] ; 8 uses
  %i.cf = icmp ne i64 %.us-phi, 0
  %i.cg = and i1 %i.ba, %i.cf
  br i1 %i.cg, label %.lr.ph127.preheader, label %._crit_edge128

.lr.ph127.preheader:                              ; preds = %.preheader112
  %i.ch = add i64 %.us-phi, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.bq) ; 2 uses
  %i.ci = add i64 %umin, 1                        ; 2 uses
  %i.cj = add i64 %.us-phi, -1                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 6                       ; 2 uses
  %.not.i104 = icmp ult i64 %i.ck, %.091118
  br i1 %.not.i104, label %bn_is_bit_set_words.exit106, label %.thread

bn_is_bit_set_words.exit.thread:                  ; preds = %.outer.split, %bn_is_bit_set_words.exit
  %i.cl = icmp eq i64 %.087, 0
  br i1 %i.cl, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bn_is_bit_set_words.exit.thread
  %i.cm = add i64 %.087, -1
  br label %.outer.split

._crit_edge128.loopexit:                          ; preds = %.lr.ph127.3, %bn_is_bit_set_words.exit106.3, %bb.q, %.thread.2, %.thread.1, %.thread
  %.lcssa195 = phi i32 [ %i.da, %.thread ], [ %i.dn, %.thread.1 ], [ %i.ea, %.thread.2 ], [ %i.em, %bb.q ], [ %i.ea, %.lr.ph127.3 ], [ %i.ea, %bn_is_bit_set_words.exit106.3 ]
  %.lcssa = phi i32 [ %i.db, %.thread ], [ %i.do, %.thread.1 ], [ %i.eb, %.thread.2 ], [ 4, %bb.q ], [ %i.eb, %.lr.ph127.3 ], [ %i.eb, %bn_is_bit_set_words.exit106.3 ]
  %i.cn = lshr i32 %.lcssa195, 1
  %i.co = zext nneg i32 %i.cn to i64
  br label %._crit_edge128

._crit_edge128:                                   ; preds = %._crit_edge128.loopexit, %.preheader112
  %.085.lcssa = phi i64 [ 0, %.preheader112 ], [ %i.co, %._crit_edge128.loopexit ] ; 2 uses
  %.084.lcssa = phi i32 [ 0, %.preheader112 ], [ %.lcssa, %._crit_edge128.loopexit ] ; 4 uses
  br i1 %.not95, label %.preheader, label %.critedge100

.preheader:                                       ; preds = %._crit_edge128
  br i1 %i.bl, label %.preheader.split.us, label %.preheader.split

.preheader.split.us:                              ; preds = %.preheader, %bn_mod_mul_montgomery_small.exit.us
  %.082130.us = phi i32 [ %i.ct, %bn_mod_mul_montgomery_small.exit.us ], [ 0, %.preheader ]
  %i.cp = load i32, ptr %i.f, align 8, !tbaa !122
  %i.cq = sext i32 %i.cp to i64
  %.not136 = icmp eq i64 %2, %i.cq
  br i1 %.not136, label %bb.n, label %.split.us

bb.n:                                             ; preds = %.preheader.split.us
  %i.cr = load ptr, ptr %i.bk, align 8, !tbaa !123
  %i.cs = call i32 @bn_mul_mont(ptr noundef %0, ptr noundef %0, ptr noundef %0, ptr noundef %i.cr, ptr noundef nonnull %i.bo, i64 noundef %2)
  %.not27.i.us = icmp eq i32 %i.cs, 0
  br i1 %.not27.i.us, label %.split132.us, label %bn_mod_mul_montgomery_small.exit.us

bn_mod_mul_montgomery_small.exit.us:              ; preds = %bb.n
  %i.ct = add i32 %.082130.us, 1                  ; 2 uses
  %.not97.us = icmp ugt i32 %i.ct, %.084.lcssa
  br i1 %.not97.us, label %.split134.us, label %.preheader.split.us, !llvm.loop !1222

bn_is_bit_set_words.exit106:                      ; preds = %.lr.ph127.preheader
  %i.cu = and i64 %i.cj, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ck
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !80
  %i.cx = shl nuw i64 1, %i.cu
  %i.cy = and i64 %i.cw, %i.cx
  %.fr = freeze i64 %i.cy
  %i.cz = icmp eq i64 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.cz, i32 1, i32 3
  %spec.select204 = select i1 %i.cz, i32 0, i32 1
  br label %.thread

.thread:                                          ; preds = %bn_is_bit_set_words.exit106, %.lr.ph127.preheader
  %i.da = phi i32 [ %spec.select, %bn_is_bit_set_words.exit106 ], [ 1, %.lr.ph127.preheader ] ; 4 uses
  %i.db = phi i32 [ %spec.select204, %bn_is_bit_set_words.exit106 ], [ 0, %.lr.ph127.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %._crit_edge128.loopexit, label %.lr.ph127.1

.lr.ph127.1:                                      ; preds = %.thread
  %i.dc = add i64 %.us-phi, -2                    ; 2 uses
  %i.dd = lshr i64 %i.dc, 6                       ; 2 uses
  %.not.i104.1 = icmp ult i64 %i.dd, %.091118
  br i1 %.not.i104.1, label %bn_is_bit_set_words.exit106.1, label %.thread.1

bn_is_bit_set_words.exit106.1:                    ; preds = %.lr.ph127.1
  %i.de = and i64 %i.dc, 63
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dd
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !80
  %i.dh = shl nuw i64 1, %i.de
  %i.di = and i64 %i.dg, %i.dh
  %.fr.1 = freeze i64 %i.di
  %i.dj = icmp eq i64 %.fr.1, 0
  br i1 %i.dj, label %.thread.1, label %bb.o

bb.o:                                             ; preds = %bn_is_bit_set_words.exit106.1
  %i.dk = sub nuw nsw i32 2, %i.db
  %i.dl = shl nuw nsw i32 %i.da, %i.dk
  %i.dm = or disjoint i32 %i.dl, 1
  br label %.thread.1

.thread.1:                                        ; preds = %bb.o, %bn_is_bit_set_words.exit106.1, %.lr.ph127.1
  %i.dn = phi i32 [ %i.dm, %bb.o ], [ %i.da, %.lr.ph127.1 ], [ %i.da, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %i.do = phi i32 [ 2, %bb.o ], [ %i.db, %.lr.ph127.1 ], [ %i.db, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %exitcond.not.1 = icmp eq i64 %i.ci, 2
  br i1 %exitcond.not.1, label %._crit_edge128.loopexit, label %.lr.ph127.2

.lr.ph127.2:                                      ; preds = %.thread.1
  %i.dp = add i64 %.us-phi, -3                    ; 2 uses
  %i.dq = lshr i64 %i.dp, 6                       ; 2 uses
  %.not.i104.2 = icmp ult i64 %i.dq, %.091118
  br i1 %.not.i104.2, label %bn_is_bit_set_words.exit106.2, label %.thread.2

bn_is_bit_set_words.exit106.2:                    ; preds = %.lr.ph127.2
  %i.dr = and i64 %i.dp, 63
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dq
  %i.dt = load i64, ptr %i.ds, align 8, !tbaa !80
  %i.du = shl nuw i64 1, %i.dr
  %i.dv = and i64 %i.dt, %i.du
  %.fr.2 = freeze i64 %i.dv
  %i.dw = icmp eq i64 %.fr.2, 0
  br i1 %i.dw, label %.thread.2, label %bb.p

bb.p:                                             ; preds = %bn_is_bit_set_words.exit106.2
  %i.dx = sub nsw i32 3, %i.do
  %i.dy = shl i32 %i.dn, %i.dx
  %i.dz = or i32 %i.dy, 1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.p, %bn_is_bit_set_words.exit106.2, %.lr.ph127.2
  %i.ea = phi i32 [ %i.dz, %bb.p ], [ %i.dn, %.lr.ph127.2 ], [ %i.dn, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %i.eb = phi i32 [ 3, %bb.p ], [ %i.do, %.lr.ph127.2 ], [ %i.do, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %exitcond.not.2 = icmp eq i64 %i.ci, 3
  br i1 %exitcond.not.2, label %._crit_edge128.loopexit, label %.lr.ph127.3
end_hunk_0
