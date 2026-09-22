Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@ec_nistp_scalar_mul_public:bb.a
  %i.b = alloca [522 x i8], align 16              ; 5 uses
  %i.c = alloca [522 x i8], align 16              ; 5 uses
  %i.d = alloca [9 x i64], align 16               ; 7 uses
  %i.e = load i64, ptr %0, align 8, !tbaa !342
  %i.f = shl i64 %i.e, 3                          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call fastcc void @generate_table(ptr noundef nonnull %0, ptr noundef %i.a, ptr noundef %5, ptr noundef %6, ptr noundef %7)
  %i.g = load i64, ptr %0, align 8, !tbaa !342    ; 2 uses
  %i.h = mul i64 %i.g, 3                          ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !347  ; 2 uses
  %i.k = shl i64 %i.g, 1                          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(522) %i.b, i8 0, i64 522, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(522) %i.c, i8 0, i64 522, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !343  ; 8 uses
  %.not38.i = icmp eq i64 %i.m, -1
  br i1 %.not38.i, label %ec_compute_wNAF.exit133.thread, label %.lr.ph.i

ec_compute_wNAF.exit133.thread:                   ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  br label %._crit_edge

.lr.ph.i:                                         ; preds = %bb.a
  %i.n = load i64, ptr %8, align 8, !tbaa !80
  %i.o = trunc i64 %i.n to i32
  %i.p = and i32 %i.o, 63
  %i.q = add i64 %i.m, 63
  %i.r = lshr i64 %i.q, 6                         ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bn_is_bit_set_words.exit.i, %.lr.ph.i
  %.03137.i = phi i64 [ 0, %.lr.ph.i ], [ %i.al, %bn_is_bit_set_words.exit.i ] ; 5 uses
  %.03236.i = phi i32 [ %i.p, %.lr.ph.i ], [ %i.ak, %bn_is_bit_set_words.exit.i ] ; 7 uses
  %i.s = and i32 %.03236.i, 1
  %.not.i = icmp eq i32 %i.s, 0
  br i1 %.not.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = and i32 %.03236.i, 32
  %.not34.i = icmp eq i32 %i.t, 0
  br i1 %.not34.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = add nsw i32 %.03236.i, -64
  %i.v = add nuw i64 %.03137.i, 6
  %.not35.i = icmp ult i64 %i.v, %i.m
  %i.w = and i32 %.03236.i, 31
  %spec.select.i = select i1 %.not35.i, i32 %i.u, i32 %i.w
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i32 [ %.03236.i, %bb.c ], [ %spec.select.i, %bb.d ] ; 2 uses
  %i.x = sub nsw i32 %.03236.i, %.0.i
  %i.y = trunc i32 %.0.i to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.133.i = phi i32 [ %i.x, %bb.e ], [ %.03236.i, %bb.b ]
  %.1.i = phi i8 [ %i.y, %bb.e ], [ 0, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %.03137.i
  store i8 %.1.i, ptr %i.z, align 1, !tbaa !76
  %i.aa = ashr i32 %.133.i, 1
  %i.ab = add nuw nsw i64 %.03137.i, 6            ; 2 uses
  %i.ac = lshr i64 %i.ab, 6                       ; 2 uses
  %.not.i.i = icmp samesign ult i64 %i.ac, %i.r
  br i1 %.not.i.i, label %bb.g, label %bn_is_bit_set_words.exit.i

bb.g:                                             ; preds = %bb.f
  %i.ad = and i64 %i.ab, 63
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %8, i64 %i.ac
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !80
  %i.ag = lshr i64 %i.af, %i.ad
  %i.ah = trunc i64 %i.ag to i32
  %i.ai = shl i32 %i.ah, 5
  %i.aj = and i32 %i.ai, 32
  br label %bn_is_bit_set_words.exit.i

bn_is_bit_set_words.exit.i:                       ; preds = %bb.g, %bb.f
  %.0.i.i = phi i32 [ %i.aj, %bb.g ], [ 0, %bb.f ]
  %i.ak = add nsw i32 %.0.i.i, %i.aa
  %i.al = add nuw nsw i64 %.03137.i, 1
  %exitcond.not.i = icmp eq i64 %.03137.i, %i.m
  br i1 %exitcond.not.i, label %.lr.ph.i119, label %bb.b, !llvm.loop !22

.lr.ph.i119:                                      ; preds = %bn_is_bit_set_words.exit.i
  %i.am = load i64, ptr %4, align 8, !tbaa !80
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 63
  br label %bb.h

bb.h:                                             ; preds = %bn_is_bit_set_words.exit.i130, %.lr.ph.i119
  %.03137.i120 = phi i64 [ 0, %.lr.ph.i119 ], [ %i.bi, %bn_is_bit_set_words.exit.i130 ] ; 5 uses
  %.03236.i121 = phi i32 [ %i.ao, %.lr.ph.i119 ], [ %i.bh, %bn_is_bit_set_words.exit.i130 ] ; 7 uses
  %i.ap = and i32 %.03236.i121, 1
  %.not.i122 = icmp eq i32 %i.ap, 0
  br i1 %.not.i122, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = and i32 %.03236.i121, 32
  %.not34.i123 = icmp eq i32 %i.aq, 0
  br i1 %.not34.i123, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %.03236.i121, -64
  %i.as = add nuw i64 %.03137.i120, 6
  %.not35.i124 = icmp ult i64 %i.as, %i.m
  %i.at = and i32 %.03236.i121, 31
  %spec.select.i125 = select i1 %.not35.i124, i32 %i.ar, i32 %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i126 = phi i32 [ %.03236.i121, %bb.i ], [ %spec.select.i125, %bb.j ] ; 2 uses
  %i.au = sub nsw i32 %.03236.i121, %.0.i126
  %i.av = trunc i32 %.0.i126 to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.133.i127 = phi i32 [ %i.au, %bb.k ], [ %.03236.i121, %bb.h ]
  %.1.i128 = phi i8 [ %i.av, %bb.k ], [ 0, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03137.i120
  store i8 %.1.i128, ptr %i.aw, align 1, !tbaa !76
  %i.ax = ashr i32 %.133.i127, 1
  %i.ay = add nuw nsw i64 %.03137.i120, 6         ; 2 uses
  %i.az = lshr i64 %i.ay, 6                       ; 2 uses
  %.not.i.i129 = icmp samesign ult i64 %i.az, %i.r
  br i1 %.not.i.i129, label %bb.m, label %bn_is_bit_set_words.exit.i130

bb.m:                                             ; preds = %bb.l
  %i.ba = and i64 %i.ay, 63
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bd = lshr i64 %i.bc, %i.ba
  %i.be = trunc i64 %i.bd to i32
  %i.bf = shl i32 %i.be, 5
  %i.bg = and i32 %i.bf, 32
  br label %bn_is_bit_set_words.exit.i130

bn_is_bit_set_words.exit.i130:                    ; preds = %bb.m, %bb.l
  %.0.i.i131 = phi i32 [ %i.bg, %bb.m ], [ 0, %bb.l ]
  %i.bh = add nsw i32 %.0.i.i131, %i.ax
  %i.bi = add nuw nsw i64 %.03137.i120, 1
  %exitcond.not.i132 = icmp eq i64 %.03137.i120, %i.m
  br i1 %exitcond.not.i132, label %ec_compute_wNAF.exit133, label %bb.h, !llvm.loop !22

ec_compute_wNAF.exit133:                          ; preds = %bn_is_bit_set_words.exit.i130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.bj = and i64 %i.m, 2147483648
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ec_compute_wNAF.exit133
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bq = and i64 %i.m, 2147483647
  br label %bb.n

._crit_edge:                                      ; preds = %OPENSSL_memcpy.exit138, %ec_compute_wNAF.exit133.thread, %ec_compute_wNAF.exit133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void

bb.n:                                             ; preds = %.lr.ph, %OPENSSL_memcpy.exit138
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph ], [ %indvars.iv.next, %OPENSSL_memcpy.exit138 ] ; 4 uses
  %.0106140 = phi i16 [ 1, %.lr.ph ], [ %.2, %OPENSSL_memcpy.exit138 ] ; 2 uses
  %.not = icmp eq i16 %.0106140, 0                ; 2 uses
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !344
  call void %i.br(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3) #46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76  ; 3 uses
  %.not109 = icmp eq i8 %i.bt, 0
  br i1 %.not109, label %OPENSSL_memcpy.exit135, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = sext i8 %i.bt to i32                    ; 2 uses
  %.not110 = icmp sgt i8 %i.bt, -1                ; 2 uses
  %i.bv = xor i32 %i.bu, -1
  %i.bw = lshr i32 %i.bv, 1
  %i.bx = add nsw i32 %i.bu, -1
  %i.by = ashr i32 %i.bx, 1
  %i.bz = select i1 %.not110, i32 %i.by, i32 %i.bw ; 2 uses
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bm, label %OPENSSL_memcpy.exit135, label %bb.s

bb.s:                                             ; preds = %bb.r
  %9 = sext i32 %i.bz to i64
  %i.ca = mul i64 %i.h, %9
  %i.cb = getelementptr [8 x i8], ptr %i.a, i64 %i.ca ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.cb, i64 %i.f, i1 false)
  %i.cc = load i64, ptr %0, align 8, !tbaa !342
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %i.cc
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 8 %i.cd, i64 %i.f, i1 false)
  %i.ce = load i64, ptr %0, align 8, !tbaa !342
  %.idx112 = shl i64 %i.ce, 4
  %i.cf = getelementptr i8, ptr %i.cb, i64 %.idx112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 8 %i.cf, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit135

bb.t:                                             ; preds = %bb.q
  %i.cg = sext i32 %i.bz to i64
  %i.ch = mul i64 %i.h, %i.cg
  %i.ci = load i64, ptr %0, align 8, !tbaa !342   ; 2 uses
  %i.cj = getelementptr [8 x i8], ptr %i.a, i64 %i.ch ; 3 uses
  %i.ck = getelementptr [8 x i8], ptr %i.cj, i64 %i.ci ; 2 uses
  br i1 %.not110, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cl = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.cl(ptr noundef nonnull %i.d, ptr noundef %i.ck) #46
  %.pre = load i64, ptr %0, align 8, !tbaa !342
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cm = phi i64 [ %.pre, %bb.u ], [ %i.ci, %bb.t ]
  %.0104 = phi ptr [ %i.d, %bb.u ], [ %i.ck, %bb.t ]
  %i.cn = load ptr, ptr %i.bo, align 8, !tbaa !346
  %.idx = shl i64 %i.cm, 4
  %i.co = getelementptr i8, ptr %i.cj, i64 %.idx
  call void %i.cn(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %i.cj, ptr noundef %.0104, ptr noundef %i.co) #46
  br label %OPENSSL_memcpy.exit135

OPENSSL_memcpy.exit135:                           ; preds = %bb.r, %bb.s, %bb.v, %bb.p
  %.1 = phi i16 [ %.0106140, %bb.p ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !76  ; 3 uses
  %.not113 = icmp eq i8 %i.cq, 0
  br i1 %.not113, label %OPENSSL_memcpy.exit138, label %bb.w

bb.w:                                             ; preds = %OPENSSL_memcpy.exit135
  %i.cr = sext i8 %i.cq to i32                    ; 2 uses
  %.not114 = icmp sgt i8 %i.cq, -1                ; 2 uses
  %i.cs = xor i32 %i.cr, -1
  %i.ct = lshr i32 %i.cs, 1
  %i.cu = add nsw i32 %i.cr, -1
  %i.cv = ashr i32 %i.cu, 1
  %i.cw = select i1 %.not114, i32 %i.cv, i32 %i.ct ; 2 uses
  %.not115 = icmp eq i16 %.1, 0
  br i1 %.not115, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bm, label %OPENSSL_memcpy.exit138, label %bb.y

bb.y:                                             ; preds = %bb.x
  %10 = sext i32 %i.cw to i64
  %i.cx = mul i64 %i.k, %10
  %i.cy = getelementptr [8 x i8], ptr %i.j, i64 %i.cx ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.cy, i64 %i.f, i1 false)
  %i.cz = load i64, ptr %0, align 8, !tbaa !342
  %i.da = getelementptr [8 x i8], ptr %i.cy, i64 %i.cz
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %i.da, i64 %i.f, i1 false)
  %i.db = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %i.db, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit138

bb.z:                                             ; preds = %bb.w
  %i.dc = sext i32 %i.cw to i64
  %i.dd = mul i64 %i.k, %i.dc
  %i.de = load i64, ptr %0, align 8, !tbaa !342
  %i.df = getelementptr [8 x i8], ptr %i.j, i64 %i.dd ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %i.de ; 2 uses
  br i1 %.not114, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dh = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.dh(ptr noundef nonnull %i.d, ptr noundef %i.dg) #46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi ptr [ %i.d, %bb.aa ], [ %i.dg, %bb.z ]
  %i.di = load ptr, ptr %i.bo, align 8, !tbaa !346
  %i.dj = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void %i.di(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %i.df, ptr noundef %.0, ptr noundef %i.dj) #46
  br label %OPENSSL_memcpy.exit138

OPENSSL_memcpy.exit138:                           ; preds = %bb.x, %bb.y, %OPENSSL_memcpy.exit135, %bb.ab
  %.2 = phi i16 [ %.1, %OPENSSL_memcpy.exit135 ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dk = icmp sgt i64 %indvars.iv, 0
  br i1 %i.dk, label %bb.n, label %._crit_edge, !llvm.loop !1946
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @ec_compute_wNAF(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i32 noundef %3) local_unnamed_addr #3 {
bb.a:
  %i.a = shl nuw i32 1, %3
  %i.b = shl i32 2, %3                            ; 2 uses
  %.not38 = icmp eq i64 %2, -1
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !80
  %i.d = trunc i64 %i.c to i32
  %i.e = add nsw i32 %i.b, -1                     ; 2 uses
  %i.f = and i32 %i.e, %i.d
  %i.g = sext i32 %3 to i64
  %i.h = add nsw i64 %i.g, 1                      ; 2 uses
  %i.i = ashr i32 %i.e, 1
  %i.j = add i64 %2, 63
  %i.k = lshr i64 %i.j, 6
  br label %bb.b

._crit_edge:                                      ; preds = %bn_is_bit_set_words.exit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bn_is_bit_set_words.exit
  %.03137 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bn_is_bit_set_words.exit ] ; 5 uses
  %.03236 = phi i32 [ %i.f, %.lr.ph ], [ %i.ad, %bn_is_bit_set_words.exit ] ; 7 uses
  %i.l = and i32 %.03236, 1
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = and i32 %.03236, %i.a
  %.not34 = icmp eq i32 %i.m, 0
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = sub nsw i32 %.03236, %i.b
  %i.o = add i64 %i.h, %.03137
  %.not35 = icmp ult i64 %i.o, %2
  %i.p = and i32 %.03236, %i.i
  %spec.select = select i1 %.not35, i32 %i.n, i32 %i.p
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %.03236, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.q = sub nsw i32 %.03236, %.0
  %i.r = trunc i32 %.0 to i8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.133 = phi i32 [ %i.q, %bb.e ], [ %.03236, %bb.b ]
  %.1 = phi i8 [ %i.r, %bb.e ], [ 0, %bb.b ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 %.03137
  store i8 %.1, ptr %i.s, align 1, !tbaa !76
  %i.t = ashr i32 %.133, 1
  %i.u = add i64 %i.h, %.03137                    ; 2 uses
  %i.v = lshr i64 %i.u, 6                         ; 2 uses
  %.not.i = icmp samesign ult i64 %i.v, %i.k
  br i1 %.not.i, label %bb.g, label %bn_is_bit_set_words.exit

bb.g:                                             ; preds = %bb.f
  %i.w = and i64 %i.u, 63
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.v
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = lshr i64 %i.y, %i.w
  %i.aa = trunc i64 %i.z to i32
  %i.ab = and i32 %i.aa, 1
  br label %bn_is_bit_set_words.exit

bn_is_bit_set_words.exit:                         ; preds = %bb.f, %bb.g
  %.0.i = phi i32 [ %i.ab, %bb.g ], [ 0, %bb.f ]
  %i.ac = shl nuw i32 %.0.i, %3
  %i.ad = add nsw i32 %i.ac, %i.t
  %i.ae = add nuw i64 %.03137, 1
  %exitcond.not = icmp eq i64 %.03137, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !22
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ec_nistp_point_to_coordinates(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = shl i64 %4, 3                            ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %OPENSSL_memcpy.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %3, i64 %i.a, i1 false)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.c, i64 %i.a, i1 false)
  %.idx = shl i64 %4, 4
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %i.d, i64 %i.a, i1 false)
  br label %OPENSSL_memcpy.exit12

OPENSSL_memcpy.exit12:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @ec_nistp_coordinates_to_point(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i64 noundef %4) local_unnamed_addr #21 {
bb.a:
  %i.a = shl i64 %4, 3                            ; 4 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %OPENSSL_memcpy.exit12, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr readonly align 1 %1, i64 %i.a, i1 false)
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %4
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.c, ptr readonly align 1 %2, i64 %i.a, i1 false)
  %.idx = shl i64 %4, 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr readonly align 1 %3, i64 %i.a, i1 false)
  br label %OPENSSL_memcpy.exit12

OPENSSL_memcpy.exit12:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i32 @ec_felem_from_bytes(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !271
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !318
  %i.d = tail call i32 %i.c(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i64 noundef %3) #46
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define hidden void @ec_felem_neg(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !277  ; 5 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader.i, label %ec_felem_non_zero_mask.exit

.lr.ph.preheader.i:                               ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 3 uses
  %min.iters.check = icmp ult i32 %i.b, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.f, %vector.body ]
  %vec.phi18 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %index ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %wide.load = load <2 x i64>, ptr %i.d, align 8, !tbaa !80
  %wide.load19 = load <2 x i64>, ptr %i.e, align 8, !tbaa !80
  %i.f = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.g = or <2 x i64> %wide.load19, %vec.phi18    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.h = icmp eq i64 %index.next, %n.vec
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1947

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ec_felem_non_zero_mask.exit.thread, label %.lr.ph.i.preheader
end_hunk_0
begin_hunk_1_@fiat_p256_sub:bb.a
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = load i64, ptr %2, align 8, !tbaa !80
  %i.c = zext i64 %i.a to i128
  %i.d = zext i64 %i.b to i128
  %i.e = sub nsw i128 %i.c, %i.d                  ; 2 uses
  %i.f = lshr i128 %i.e, 64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !80
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %i.k = zext i64 %i.h to i128
  %i.l = sub nsw i128 0, %i.f
  %i.m = and i128 %i.l, 255
  %i.n = zext i64 %i.j to i128
  %i.o = add nuw nsw i128 %i.m, %i.n
  %i.p = sub nsw i128 %i.k, %i.o                  ; 2 uses
  %i.q = lshr i128 %i.p, 64
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80
  %i.v = zext i64 %i.s to i128
  %i.w = sub nsw i128 0, %i.q
  %i.x = and i128 %i.w, 255
  %i.y = zext i64 %i.u to i128
  %i.z = add nuw nsw i128 %i.x, %i.y
  %i.aa = sub nsw i128 %i.v, %i.z                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !80
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !80
  %i.ag = zext i64 %i.ad to i128
  %i.ah = sub nsw i128 0, %i.ab
  %i.ai = and i128 %i.ah, 255
  %i.aj = zext i64 %i.af to i128
  %i.ak = add nuw nsw i128 %i.ai, %i.aj
  %i.al = sub nsw i128 %i.ag, %i.ak               ; 2 uses
  %i.am = and i128 %i.al, 4703919738795935662080
  %i.an = icmp ne i128 %i.am, 0
  %i.ao = sext i1 %i.an to i64                    ; 2 uses
  %i.ap = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ao) #47, !srcloc !599 ; 3 uses
  %i.aq = xor i64 %i.ao, -1
  %i.ar = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.aq) #47, !srcloc !599 ; 0 uses
  %i.as = and i128 %i.e, 18446744073709551615
  %i.at = zext i64 %i.ap to i128
  %i.au = add nuw nsw i128 %i.as, %i.at           ; 2 uses
  %i.av = trunc i128 %i.au to i64
  %i.aw = lshr i128 %i.au, 64
  %i.ax = and i64 %i.ap, 4294967295
  %i.ay = and i128 %i.p, 18446744073709551615
  %i.az = zext nneg i64 %i.ax to i128
  %i.ba = add nuw nsw i128 %i.ay, %i.az
  %i.bb = add nuw nsw i128 %i.ba, %i.aw           ; 2 uses
  %i.bc = trunc i128 %i.bb to i64
  %i.bd = lshr i128 %i.bb, 64
  %i.be = and i128 %i.aa, 18446744073709551615
  %i.bf = add nuw nsw i128 %i.bd, %i.be           ; 2 uses
  %i.bg = trunc i128 %i.bf to i64
  %i.bh = lshr i128 %i.bf, 64
  %i.bi = and i64 %i.ap, -4294967295
  %i.bj = add nsw i128 %i.bh, %i.al
  %i.bk = trunc i128 %i.bj to i64
  %i.bl = add i64 %i.bi, %i.bk
  store i64 %i.av, ptr %0, align 8, !tbaa !80
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bc, ptr %i.bm, align 8, !tbaa !80
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bg, ptr %i.bn, align 8, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bl, ptr %i.bo, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite) uwtable
define internal void @fiat_p256_mul(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = load i64, ptr %1, align 8, !tbaa !80
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = zext i64 %i.g to i128                    ; 4 uses
  %i.k = zext i64 %i.i to i128                    ; 4 uses
  %i.l = mul nuw i128 %i.k, %i.j                  ; 2 uses
  %i.m = lshr i128 %i.l, 64
  %i.n = trunc nuw i128 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !80
  %i.q = zext i64 %i.p to i128                    ; 4 uses
  %i.r = mul nuw i128 %i.q, %i.j                  ; 2 uses
  %i.s = lshr i128 %i.r, 64
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80
  %i.v = zext i64 %i.u to i128                    ; 4 uses
  %i.w = mul nuw i128 %i.v, %i.j                  ; 2 uses
  %i.x = lshr i128 %i.w, 64
  %i.y = load i64, ptr %2, align 8, !tbaa !80
  %i.z = zext i64 %i.y to i128                    ; 4 uses
  %i.aa = mul nuw i128 %i.z, %i.j                 ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = and i128 %i.w, 18446744073709551615
  %i.ad = add nuw nsw i128 %i.ab, %i.ac           ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = and i128 %i.r, 18446744073709551615
  %i.ag = add nuw nsw i128 %i.x, %i.af
  %i.ah = add nuw nsw i128 %i.ag, %i.ae           ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = and i128 %i.l, 18446744073709551615
  %i.ak = add nuw nsw i128 %i.s, %i.aj
  %i.al = add nuw nsw i128 %i.ak, %i.ai           ; 2 uses
  %i.am = lshr i128 %i.al, 64
  %i.an = trunc nuw nsw i128 %i.am to i64
  %i.ao = add nuw i64 %i.an, %i.n
  %i.ap = and i128 %i.aa, 18446744073709551615    ; 4 uses
  %i.aq = mul nuw i128 %i.ap, 18446744069414584321 ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = mul nuw nsw i128 %i.ap, 4294967295      ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw nsw i128 %i.at to i64
  %i.av = mul nuw i128 %i.ap, 18446744073709551615 ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = and i128 %i.as, 18446744073709551615
  %i.ay = add nuw nsw i128 %i.aw, %i.ax           ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = trunc nuw nsw i128 %i.az to i64
  %i.bb = add nuw nsw i64 %i.ba, %i.au
  %i.bc = and i128 %i.av, 18446744073709551615
  %i.bd = add nuw nsw i128 %i.bc, %i.ap
  %i.be = lshr i128 %i.bd, 64
  %i.bf = and i128 %i.ad, 18446744073709551615
  %i.bg = add nuw nsw i128 %i.be, %i.bf
  %i.bh = and i128 %i.ay, 18446744073709551615
  %i.bi = add nuw nsw i128 %i.bg, %i.bh           ; 2 uses
  %i.bj = lshr i128 %i.bi, 64
  %i.bk = and i128 %i.ah, 18446744073709551615
  %i.bl = add nuw nsw i128 %i.bj, %i.bk
  %i.bm = zext nneg i64 %i.bb to i128
  %i.bn = add nuw nsw i128 %i.bl, %i.bm           ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = and i128 %i.al, 18446744073709551615
  %i.bq = and i128 %i.aq, 18446744073709551615
  %i.br = add nuw nsw i128 %i.bp, %i.bq
  %i.bs = add nuw nsw i128 %i.br, %i.bo           ; 2 uses
  %i.bt = lshr i128 %i.bs, 64
  %i.bu = zext i64 %i.ao to i128
  %i.bv = add nuw nsw i128 %i.ar, %i.bu
  %i.bw = add nuw nsw i128 %i.bv, %i.bt           ; 2 uses
  %i.bx = lshr i128 %i.bw, 64
  %i.by = zext i64 %i.b to i128                   ; 4 uses
  %i.bz = mul nuw i128 %i.k, %i.by                ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = trunc nuw i128 %i.ca to i64
  %i.cc = mul nuw i128 %i.q, %i.by                ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = mul nuw i128 %i.v, %i.by                ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = mul nuw i128 %i.z, %i.by                ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = and i128 %i.ce, 18446744073709551615
  %i.cj = add nuw nsw i128 %i.ch, %i.ci           ; 2 uses
  %i.ck = lshr i128 %i.cj, 64
  %i.cl = and i128 %i.cc, 18446744073709551615
  %i.cm = add nuw nsw i128 %i.cf, %i.cl
  %i.cn = add nuw nsw i128 %i.cm, %i.ck           ; 2 uses
  %i.co = lshr i128 %i.cn, 64
  %i.cp = and i128 %i.bz, 18446744073709551615
  %i.cq = add nuw nsw i128 %i.cd, %i.cp
  %i.cr = add nuw nsw i128 %i.cq, %i.co           ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = trunc nuw nsw i128 %i.cs to i64
  %i.cu = add nuw i64 %i.ct, %i.cb
  %i.cv = and i128 %i.bi, 18446744073709551615
  %i.cw = and i128 %i.cg, 18446744073709551615
  %i.cx = add nuw nsw i128 %i.cv, %i.cw           ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = and i128 %i.bn, 18446744073709551615
  %i.da = and i128 %i.cj, 18446744073709551615
  %i.db = add nuw nsw i128 %i.cy, %i.da
  %i.dc = add nuw nsw i128 %i.db, %i.cz           ; 2 uses
  %i.dd = lshr i128 %i.dc, 64
  %i.de = and i128 %i.bs, 18446744073709551615
  %i.df = and i128 %i.cn, 18446744073709551615
  %i.dg = add nuw nsw i128 %i.dd, %i.df
  %i.dh = add nuw nsw i128 %i.dg, %i.de           ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = and i128 %i.bw, 18446744073709551615
  %i.dk = and i128 %i.cr, 18446744073709551615
  %i.dl = add nuw nsw i128 %i.di, %i.dk
  %i.dm = add nuw nsw i128 %i.dl, %i.dj           ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = zext i64 %i.cu to i128
  %i.dp = add nuw nsw i128 %i.bx, %i.do
  %i.dq = add nuw nsw i128 %i.dp, %i.dn           ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = and i128 %i.cx, 18446744073709551615    ; 4 uses
  %i.dt = mul nuw i128 %i.ds, 18446744069414584321 ; 2 uses
  %i.du = lshr i128 %i.dt, 64
  %i.dv = mul nuw nsw i128 %i.ds, 4294967295      ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = trunc nuw nsw i128 %i.dw to i64
  %i.dy = mul nuw i128 %i.ds, 18446744073709551615 ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = and i128 %i.dv, 18446744073709551615
  %i.eb = add nuw nsw i128 %i.dz, %i.ea           ; 2 uses
  %i.ec = lshr i128 %i.eb, 64
  %i.ed = trunc nuw nsw i128 %i.ec to i64
  %i.ee = add nuw nsw i64 %i.ed, %i.dx
  %i.ef = and i128 %i.dy, 18446744073709551615
  %i.eg = add nuw nsw i128 %i.ef, %i.ds
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = and i128 %i.dc, 18446744073709551615
  %i.ej = add nuw nsw i128 %i.ei, %i.eh
  %i.ek = and i128 %i.eb, 18446744073709551615
  %i.el = add nuw nsw i128 %i.ej, %i.ek           ; 2 uses
  %i.em = lshr i128 %i.el, 64
  %i.en = and i128 %i.dh, 18446744073709551615
  %i.eo = add nuw nsw i128 %i.en, %i.em
  %i.ep = zext nneg i64 %i.ee to i128
  %i.eq = add nuw nsw i128 %i.eo, %i.ep           ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = and i128 %i.dm, 18446744073709551615
  %i.et = and i128 %i.dt, 18446744073709551615
  %i.eu = add nuw nsw i128 %i.er, %i.et
  %i.ev = add nuw nsw i128 %i.eu, %i.es           ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = and i128 %i.dq, 18446744073709551615
  %i.ey = add nuw nsw i128 %i.ew, %i.du
  %i.ez = add nuw nsw i128 %i.ey, %i.ex           ; 2 uses
  %i.fa = lshr i128 %i.ez, 64
  %3 = trunc nuw nsw i128 %i.fa to i64
  %i.fb = trunc nuw nsw i128 %i.dr to i64
  %i.fc = add nuw nsw i64 %3, %i.fb
  %i.fd = zext i64 %i.d to i128                   ; 4 uses
  %i.fe = mul nuw i128 %i.k, %i.fd                ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw i128 %i.ff to i64
  %i.fh = mul nuw i128 %i.q, %i.fd                ; 2 uses
  %i.fi = lshr i128 %i.fh, 64
  %i.fj = mul nuw i128 %i.v, %i.fd                ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = mul nuw i128 %i.z, %i.fd                ; 2 uses
  %i.fm = lshr i128 %i.fl, 64
  %i.fn = and i128 %i.fj, 18446744073709551615
  %i.fo = add nuw nsw i128 %i.fm, %i.fn           ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = and i128 %i.fh, 18446744073709551615
  %i.fr = add nuw nsw i128 %i.fk, %i.fq
  %i.fs = add nuw nsw i128 %i.fr, %i.fp           ; 2 uses
  %i.ft = lshr i128 %i.fs, 64
  %i.fu = and i128 %i.fe, 18446744073709551615
  %i.fv = add nuw nsw i128 %i.fi, %i.fu
  %i.fw = add nuw nsw i128 %i.fv, %i.ft           ; 2 uses
  %i.fx = lshr i128 %i.fw, 64
  %i.fy = trunc nuw nsw i128 %i.fx to i64
  %i.fz = add nuw i64 %i.fy, %i.fg
  %i.ga = and i128 %i.el, 18446744073709551615
  %i.gb = and i128 %i.fl, 18446744073709551615
  %i.gc = add nuw nsw i128 %i.ga, %i.gb           ; 2 uses
  %i.gd = lshr i128 %i.gc, 64
  %i.ge = and i128 %i.eq, 18446744073709551615
  %i.gf = and i128 %i.fo, 18446744073709551615
  %i.gg = add nuw nsw i128 %i.gd, %i.gf
  %i.gh = add nuw nsw i128 %i.gg, %i.ge           ; 2 uses
  %i.gi = lshr i128 %i.gh, 64
  %i.gj = and i128 %i.ev, 18446744073709551615
  %i.gk = and i128 %i.fs, 18446744073709551615
  %i.gl = add nuw nsw i128 %i.gi, %i.gk
  %i.gm = add nuw nsw i128 %i.gl, %i.gj           ; 2 uses
  %i.gn = lshr i128 %i.gm, 64
  %i.go = and i128 %i.ez, 18446744073709551615
  %i.gp = and i128 %i.fw, 18446744073709551615
  %i.gq = add nuw nsw i128 %i.gn, %i.gp
  %i.gr = add nuw nsw i128 %i.gq, %i.go           ; 2 uses
  %i.gs = lshr i128 %i.gr, 64
  %i.gt = zext nneg i64 %i.fc to i128
  %i.gu = zext i64 %i.fz to i128
  %i.gv = add nuw nsw i128 %i.gt, %i.gu
  %i.gw = add nuw nsw i128 %i.gv, %i.gs           ; 2 uses
  %i.gx = lshr i128 %i.gw, 64
  %i.gy = and i128 %i.gc, 18446744073709551615    ; 4 uses
  %i.gz = mul nuw i128 %i.gy, 18446744069414584321 ; 2 uses
  %i.ha = lshr i128 %i.gz, 64
  %i.hb = mul nuw nsw i128 %i.gy, 4294967295      ; 2 uses
  %i.hc = lshr i128 %i.hb, 64
  %i.hd = trunc nuw nsw i128 %i.hc to i64
  %i.he = mul nuw i128 %i.gy, 18446744073709551615 ; 2 uses
  %i.hf = lshr i128 %i.he, 64
  %i.hg = and i128 %i.hb, 18446744073709551615
  %i.hh = add nuw nsw i128 %i.hf, %i.hg           ; 2 uses
  %i.hi = lshr i128 %i.hh, 64
  %i.hj = trunc nuw nsw i128 %i.hi to i64
  %i.hk = add nuw nsw i64 %i.hj, %i.hd
  %i.hl = and i128 %i.he, 18446744073709551615
  %i.hm = add nuw nsw i128 %i.hl, %i.gy
  %i.hn = lshr i128 %i.hm, 64
  %i.ho = and i128 %i.gh, 18446744073709551615
  %i.hp = add nuw nsw i128 %i.ho, %i.hn
  %i.hq = and i128 %i.hh, 18446744073709551615
  %i.hr = add nuw nsw i128 %i.hp, %i.hq           ; 2 uses
  %i.hs = lshr i128 %i.hr, 64
  %i.ht = and i128 %i.gm, 18446744073709551615
  %i.hu = add nuw nsw i128 %i.ht, %i.hs
  %i.hv = zext nneg i64 %i.hk to i128
  %i.hw = add nuw nsw i128 %i.hu, %i.hv           ; 2 uses
  %i.hx = lshr i128 %i.hw, 64
  %i.hy = and i128 %i.gr, 18446744073709551615
  %i.hz = and i128 %i.gz, 18446744073709551615
  %i.ia = add nuw nsw i128 %i.hx, %i.hz
  %i.ib = add nuw nsw i128 %i.ia, %i.hy           ; 2 uses
  %i.ic = lshr i128 %i.ib, 64
  %i.id = and i128 %i.gw, 18446744073709551615
  %i.ie = add nuw nsw i128 %i.ic, %i.ha
  %i.if = add nuw nsw i128 %i.ie, %i.id           ; 2 uses
  %i.ig = lshr i128 %i.if, 64
  %4 = trunc nuw nsw i128 %i.ig to i64
  %i.ih = trunc nuw nsw i128 %i.gx to i64
  %i.ii = add nuw nsw i64 %4, %i.ih
  %i.ij = zext i64 %i.f to i128                   ; 4 uses
  %i.ik = mul nuw i128 %i.k, %i.ij                ; 2 uses
  %i.il = lshr i128 %i.ik, 64
  %i.im = trunc nuw i128 %i.il to i64
  %i.in = mul nuw i128 %i.q, %i.ij                ; 2 uses
  %i.io = lshr i128 %i.in, 64
  %i.ip = mul nuw i128 %i.v, %i.ij                ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = mul nuw i128 %i.z, %i.ij                ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = and i128 %i.ip, 18446744073709551615
  %i.iu = add nuw nsw i128 %i.is, %i.it           ; 2 uses
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = and i128 %i.in, 18446744073709551615
  %i.ix = add nuw nsw i128 %i.iq, %i.iw
  %i.iy = add nuw nsw i128 %i.ix, %i.iv           ; 2 uses
  %i.iz = lshr i128 %i.iy, 64
  %i.ja = and i128 %i.ik, 18446744073709551615
  %i.jb = add nuw nsw i128 %i.io, %i.ja
  %i.jc = add nuw nsw i128 %i.jb, %i.iz           ; 2 uses
  %i.jd = lshr i128 %i.jc, 64
  %i.je = trunc nuw nsw i128 %i.jd to i64
  %i.jf = add nuw i64 %i.je, %i.im
  %i.jg = and i128 %i.hr, 18446744073709551615
  %i.jh = and i128 %i.ir, 18446744073709551615
  %i.ji = add nuw nsw i128 %i.jg, %i.jh           ; 2 uses
  %i.jj = lshr i128 %i.ji, 64
  %i.jk = and i128 %i.hw, 18446744073709551615
  %i.jl = and i128 %i.iu, 18446744073709551615
  %i.jm = add nuw nsw i128 %i.jj, %i.jl
  %i.jn = add nuw nsw i128 %i.jm, %i.jk           ; 2 uses
  %i.jo = lshr i128 %i.jn, 64
  %i.jp = and i128 %i.ib, 18446744073709551615
  %i.jq = and i128 %i.iy, 18446744073709551615
  %i.jr = add nuw nsw i128 %i.jo, %i.jq
  %i.js = add nuw nsw i128 %i.jr, %i.jp           ; 2 uses
  %i.jt = lshr i128 %i.js, 64
  %i.ju = and i128 %i.if, 18446744073709551615
  %i.jv = and i128 %i.jc, 18446744073709551615
  %i.jw = add nuw nsw i128 %i.jt, %i.jv
  %i.jx = add nuw nsw i128 %i.jw, %i.ju           ; 2 uses
  %i.jy = lshr i128 %i.jx, 64
  %i.jz = zext nneg i64 %i.ii to i128
  %i.ka = zext i64 %i.jf to i128
  %i.kb = add nuw nsw i128 %i.jz, %i.ka
  %i.kc = add nuw nsw i128 %i.kb, %i.jy           ; 2 uses
  %i.kd = lshr i128 %i.kc, 64
  %i.ke = and i128 %i.ji, 18446744073709551615    ; 4 uses
  %i.kf = mul nuw i128 %i.ke, 18446744069414584321 ; 2 uses
  %i.kg = lshr i128 %i.kf, 64
  %i.kh = mul nuw nsw i128 %i.ke, 4294967295      ; 2 uses
  %i.ki = lshr i128 %i.kh, 64
  %i.kj = trunc nuw nsw i128 %i.ki to i64
  %i.kk = mul nuw i128 %i.ke, 18446744073709551615 ; 2 uses
  %i.kl = lshr i128 %i.kk, 64
  %i.km = and i128 %i.kh, 18446744073709551615
  %i.kn = add nuw nsw i128 %i.kl, %i.km           ; 2 uses
  %i.ko = lshr i128 %i.kn, 64
  %i.kp = trunc nuw nsw i128 %i.ko to i64
  %i.kq = add nuw nsw i64 %i.kp, %i.kj
  %i.kr = and i128 %i.kk, 18446744073709551615
  %i.ks = add nuw nsw i128 %i.kr, %i.ke
  %i.kt = lshr i128 %i.ks, 64
  %i.ku = and i128 %i.jn, 18446744073709551615
  %i.kv = add nuw nsw i128 %i.ku, %i.kt
  %i.kw = and i128 %i.kn, 18446744073709551615
  %i.kx = add nuw nsw i128 %i.kv, %i.kw           ; 3 uses
  %i.ky = trunc i128 %i.kx to i64
  %i.kz = lshr i128 %i.kx, 64
  %i.la = and i128 %i.js, 18446744073709551615
  %i.lb = add nuw nsw i128 %i.la, %i.kz
  %i.lc = zext nneg i64 %i.kq to i128
  %i.ld = add nuw nsw i128 %i.lb, %i.lc           ; 3 uses
  %i.le = trunc i128 %i.ld to i64
  %i.lf = lshr i128 %i.ld, 64
  %i.lg = and i128 %i.jx, 18446744073709551615
  %i.lh = and i128 %i.kf, 18446744073709551615
  %i.li = add nuw nsw i128 %i.lf, %i.lh
  %i.lj = add nuw nsw i128 %i.li, %i.lg           ; 3 uses
  %i.lk = trunc i128 %i.lj to i64
  %i.ll = lshr i128 %i.lj, 64
  %i.lm = and i128 %i.kc, 18446744073709551615
  %i.ln = add nuw nsw i128 %i.ll, %i.kg
  %i.lo = add nuw nsw i128 %i.ln, %i.lm           ; 3 uses
  %i.lp = trunc i128 %i.lo to i64
  %i.lq = lshr i128 %i.lo, 64
  %5 = trunc nuw nsw i128 %i.lq to i64
  %i.lr = trunc nuw nsw i128 %i.kd to i64
  %i.ls = add nuw nsw i64 %5, %i.lr
  %i.lt = and i128 %i.kx, 18446744073709551615
  %i.lu = add nsw i128 %i.lt, -18446744073709551615 ; 2 uses
  %i.lv = lshr i128 %i.lu, 64
  %i.lw = trunc i128 %i.lu to i64
  %i.lx = and i128 %i.ld, 18446744073709551615
  %i.ly = sub nsw i128 0, %i.lv
  %i.lz = and i128 %i.ly, 255
  %reass.sub = sub nsw i128 %i.lx, %i.lz
  %i.ma = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %i.mb = lshr i128 %i.ma, 64
  %i.mc = trunc i128 %i.ma to i64
  %i.md = and i128 %i.lj, 18446744073709551615
  %i.me = sub nsw i128 0, %i.mb
  %i.mf = and i128 %i.me, 255
  %i.mg = sub nsw i128 %i.md, %i.mf               ; 2 uses
  %i.mh = lshr i128 %i.mg, 64
  %i.mi = trunc i128 %i.mg to i64
  %i.mj = and i128 %i.lo, 18446744073709551615
  %i.mk = sub nsw i128 0, %i.mh
  %i.ml = and i128 %i.mk, 255
  %.neg237 = add nsw i128 %i.mj, -18446744069414584321
  %i.mm = sub nsw i128 %.neg237, %i.ml            ; 2 uses
  %i.mn = lshr i128 %i.mm, 64
  %i.mo = trunc i128 %i.mm to i64
  %i.mp = zext nneg i64 %i.ls to i128
  %i.mq = sub nsw i128 0, %i.mn
  %i.mr = and i128 %i.mq, 255
  %i.ms = sub nsw i128 %i.mp, %i.mr
  %i.mt = lshr i128 %i.ms, 64
  %i.mu = trunc i128 %i.mt to i8
  %i.mv = icmp ne i8 %i.mu, 0
  %i.mw = sext i1 %i.mv to i64                    ; 2 uses
  %i.mx = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mw) #47, !srcloc !599 ; 4 uses
  %i.my = and i64 %i.mx, %i.ky
  %i.mz = xor i64 %i.mw, -1
  %i.na = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mz) #47, !srcloc !599 ; 4 uses
  %i.nb = and i64 %i.na, %i.lw
  %i.nc = or i64 %i.nb, %i.my
  %i.nd = and i64 %i.mx, %i.le
  %i.ne = and i64 %i.na, %i.mc
  %i.nf = or i64 %i.ne, %i.nd
  %i.ng = and i64 %i.mx, %i.lk
  %i.nh = and i64 %i.na, %i.mi
  %i.ni = or i64 %i.nh, %i.ng
  %i.nj = and i64 %i.mx, %i.lp
  %i.nk = and i64 %i.na, %i.mo
  %i.nl = or i64 %i.nk, %i.nj
  store i64 %i.nc, ptr %0, align 8, !tbaa !80
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.nf, ptr %i.nm, align 8, !tbaa !80
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ni, ptr %i.nn, align 8, !tbaa !80
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.nl, ptr %i.no, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite) uwtable
define internal void @fiat_p256_square(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) #41 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = load i64, ptr %1, align 8, !tbaa !80
  %i.h = zext i64 %i.g to i128                    ; 5 uses
  %i.i = zext i64 %i.f to i128                    ; 5 uses
  %i.j = mul nuw i128 %i.h, %i.i                  ; 2 uses
  %i.k = lshr i128 %i.j, 64                       ; 2 uses
  %i.l = trunc nuw i128 %i.k to i64
  %i.m = zext i64 %i.d to i128                    ; 5 uses
  %i.n = mul nuw i128 %i.h, %i.m                  ; 2 uses
  %i.o = lshr i128 %i.n, 64                       ; 2 uses
  %i.p = zext i64 %i.b to i128                    ; 5 uses
  %i.q = mul nuw i128 %i.h, %i.p                  ; 2 uses
  %i.r = lshr i128 %i.q, 64                       ; 2 uses
  %i.s = mul nuw i128 %i.h, %i.h                  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = and i128 %i.q, 18446744073709551615      ; 2 uses
  %i.v = add nuw nsw i128 %i.t, %i.u              ; 2 uses
  %i.w = lshr i128 %i.v, 64
  %i.x = and i128 %i.n, 18446744073709551615      ; 2 uses
  %i.y = add nuw nsw i128 %i.x, %i.r
  %i.z = add nuw nsw i128 %i.y, %i.w              ; 2 uses
  %i.aa = lshr i128 %i.z, 64
  %i.ab = and i128 %i.j, 18446744073709551615     ; 2 uses
  %i.ac = add nuw nsw i128 %i.ab, %i.o
  %i.ad = add nuw nsw i128 %i.ac, %i.aa           ; 2 uses
  %i.ae = lshr i128 %i.ad, 64
  %i.af = trunc nuw nsw i128 %i.ae to i64
  %i.ag = add nuw i64 %i.af, %i.l
  %i.ah = and i128 %i.s, 18446744073709551615     ; 4 uses
  %i.ai = mul nuw i128 %i.ah, 18446744069414584321 ; 2 uses
  %i.aj = lshr i128 %i.ai, 64
  %i.ak = mul nuw nsw i128 %i.ah, 4294967295      ; 2 uses
  %i.al = lshr i128 %i.ak, 64
  %i.am = trunc nuw nsw i128 %i.al to i64
  %i.an = mul nuw i128 %i.ah, 18446744073709551615 ; 2 uses
  %i.ao = lshr i128 %i.an, 64
  %i.ap = and i128 %i.ak, 18446744073709551615
  %i.aq = add nuw nsw i128 %i.ao, %i.ap           ; 2 uses
  %i.ar = lshr i128 %i.aq, 64
  %i.as = trunc nuw nsw i128 %i.ar to i64
  %i.at = add nuw nsw i64 %i.as, %i.am
  %i.au = and i128 %i.an, 18446744073709551615
  %i.av = add nuw nsw i128 %i.au, %i.ah
  %i.aw = lshr i128 %i.av, 64
  %i.ax = and i128 %i.v, 18446744073709551615
  %i.ay = add nuw nsw i128 %i.aw, %i.ax
  %i.az = and i128 %i.aq, 18446744073709551615
  %i.ba = add nuw nsw i128 %i.ay, %i.az           ; 2 uses
  %i.bb = lshr i128 %i.ba, 64
  %i.bc = and i128 %i.z, 18446744073709551615
  %i.bd = add nuw nsw i128 %i.bb, %i.bc
  %i.be = zext nneg i64 %i.at to i128
  %i.bf = add nuw nsw i128 %i.bd, %i.be           ; 2 uses
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = and i128 %i.ad, 18446744073709551615
  %i.bi = and i128 %i.ai, 18446744073709551615
  %i.bj = add nuw nsw i128 %i.bh, %i.bi
  %i.bk = add nuw nsw i128 %i.bj, %i.bg           ; 2 uses
  %i.bl = lshr i128 %i.bk, 64
  %i.bm = zext i64 %i.ag to i128
  %i.bn = add nuw nsw i128 %i.aj, %i.bm
  %i.bo = add nuw nsw i128 %i.bn, %i.bl           ; 2 uses
  %i.bp = lshr i128 %i.bo, 64
  %i.bq = mul nuw i128 %i.i, %i.p                 ; 2 uses
  %i.br = lshr i128 %i.bq, 64                     ; 2 uses
  %i.bs = trunc nuw i128 %i.br to i64
  %i.bt = mul nuw i128 %i.m, %i.p                 ; 2 uses
  %i.bu = lshr i128 %i.bt, 64                     ; 2 uses
  %i.bv = mul nuw i128 %i.p, %i.p                 ; 2 uses
  %i.bw = lshr i128 %i.bv, 64
  %i.bx = and i128 %i.bv, 18446744073709551615
  %i.by = add nuw nsw i128 %i.r, %i.bx            ; 2 uses
  %i.bz = lshr i128 %i.by, 64
  %i.ca = and i128 %i.bt, 18446744073709551615    ; 2 uses
  %i.cb = add nuw nsw i128 %i.ca, %i.bw
  %i.cc = add nuw nsw i128 %i.cb, %i.bz           ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = and i128 %i.bq, 18446744073709551615    ; 2 uses
  %i.cf = add nuw nsw i128 %i.ce, %i.bu
  %i.cg = add nuw nsw i128 %i.cf, %i.cd           ; 2 uses
  %i.ch = lshr i128 %i.cg, 64
  %i.ci = trunc nuw nsw i128 %i.ch to i64
  %i.cj = add nuw i64 %i.ci, %i.bs
  %i.ck = and i128 %i.ba, 18446744073709551615
  %i.cl = add nuw nsw i128 %i.ck, %i.u            ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = and i128 %i.bf, 18446744073709551615
  %i.co = and i128 %i.by, 18446744073709551615
  %i.cp = add nuw nsw i128 %i.cm, %i.co
  %i.cq = add nuw nsw i128 %i.cp, %i.cn           ; 2 uses
  %i.cr = lshr i128 %i.cq, 64
  %i.cs = and i128 %i.bk, 18446744073709551615
  %i.ct = and i128 %i.cc, 18446744073709551615
  %i.cu = add nuw nsw i128 %i.cr, %i.ct
  %i.cv = add nuw nsw i128 %i.cu, %i.cs           ; 2 uses
  %i.cw = lshr i128 %i.cv, 64
  %i.cx = and i128 %i.bo, 18446744073709551615
  %i.cy = and i128 %i.cg, 18446744073709551615
  %i.cz = add nuw nsw i128 %i.cw, %i.cy
  %i.da = add nuw nsw i128 %i.cz, %i.cx           ; 2 uses
  %i.db = lshr i128 %i.da, 64
  %i.dc = zext i64 %i.cj to i128
  %i.dd = add nuw nsw i128 %i.bp, %i.dc
  %i.de = add nuw nsw i128 %i.dd, %i.db           ; 2 uses
  %i.df = lshr i128 %i.de, 64
  %i.dg = and i128 %i.cl, 18446744073709551615    ; 4 uses
  %i.dh = mul nuw i128 %i.dg, 18446744069414584321 ; 2 uses
  %i.di = lshr i128 %i.dh, 64
  %i.dj = mul nuw nsw i128 %i.dg, 4294967295      ; 2 uses
  %i.dk = lshr i128 %i.dj, 64
  %i.dl = trunc nuw nsw i128 %i.dk to i64
  %i.dm = mul nuw i128 %i.dg, 18446744073709551615 ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = and i128 %i.dj, 18446744073709551615
  %i.dp = add nuw nsw i128 %i.dn, %i.do           ; 2 uses
  %i.dq = lshr i128 %i.dp, 64
  %i.dr = trunc nuw nsw i128 %i.dq to i64
  %i.ds = add nuw nsw i64 %i.dr, %i.dl
  %i.dt = and i128 %i.dm, 18446744073709551615
  %i.du = add nuw nsw i128 %i.dt, %i.dg
  %i.dv = lshr i128 %i.du, 64
  %i.dw = and i128 %i.cq, 18446744073709551615
  %i.dx = add nuw nsw i128 %i.dw, %i.dv
  %i.dy = and i128 %i.dp, 18446744073709551615
  %i.dz = add nuw nsw i128 %i.dx, %i.dy           ; 2 uses
  %i.ea = lshr i128 %i.dz, 64
  %i.eb = and i128 %i.cv, 18446744073709551615
  %i.ec = add nuw nsw i128 %i.eb, %i.ea
  %i.ed = zext nneg i64 %i.ds to i128
  %i.ee = add nuw nsw i128 %i.ec, %i.ed           ; 2 uses
  %i.ef = lshr i128 %i.ee, 64
  %i.eg = and i128 %i.da, 18446744073709551615
  %i.eh = and i128 %i.dh, 18446744073709551615
  %i.ei = add nuw nsw i128 %i.ef, %i.eh
  %i.ej = add nuw nsw i128 %i.ei, %i.eg           ; 2 uses
  %i.ek = lshr i128 %i.ej, 64
  %i.el = and i128 %i.de, 18446744073709551615
  %i.em = add nuw nsw i128 %i.ek, %i.di
  %i.en = add nuw nsw i128 %i.em, %i.el           ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %2 = trunc nuw nsw i128 %i.eo to i64
  %i.ep = trunc nuw nsw i128 %i.df to i64
  %i.eq = add nuw nsw i64 %2, %i.ep
  %i.er = mul nuw i128 %i.i, %i.m                 ; 2 uses
  %i.es = lshr i128 %i.er, 64                     ; 2 uses
  %i.et = trunc nuw i128 %i.es to i64
  %i.eu = mul nuw i128 %i.m, %i.m                 ; 2 uses
  %i.ev = lshr i128 %i.eu, 64
  %i.ew = add nuw nsw i128 %i.o, %i.ca            ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = and i128 %i.eu, 18446744073709551615
  %i.ez = add nuw nsw i128 %i.ey, %i.bu
  %i.fa = add nuw nsw i128 %i.ez, %i.ex           ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = and i128 %i.er, 18446744073709551615    ; 2 uses
  %i.fd = add nuw nsw i128 %i.fc, %i.ev
  %i.fe = add nuw nsw i128 %i.fd, %i.fb           ; 2 uses
  %i.ff = lshr i128 %i.fe, 64
  %i.fg = trunc nuw nsw i128 %i.ff to i64
  %i.fh = add nuw i64 %i.fg, %i.et
  %i.fi = and i128 %i.dz, 18446744073709551615
  %i.fj = add nuw nsw i128 %i.fi, %i.x            ; 2 uses
  %i.fk = lshr i128 %i.fj, 64
  %i.fl = and i128 %i.ee, 18446744073709551615
  %i.fm = and i128 %i.ew, 18446744073709551615
  %i.fn = add nuw nsw i128 %i.fk, %i.fm
  %i.fo = add nuw nsw i128 %i.fn, %i.fl           ; 2 uses
  %i.fp = lshr i128 %i.fo, 64
  %i.fq = and i128 %i.ej, 18446744073709551615
  %i.fr = and i128 %i.fa, 18446744073709551615
  %i.fs = add nuw nsw i128 %i.fp, %i.fr
  %i.ft = add nuw nsw i128 %i.fs, %i.fq           ; 2 uses
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = and i128 %i.en, 18446744073709551615
  %i.fw = and i128 %i.fe, 18446744073709551615
  %i.fx = add nuw nsw i128 %i.fu, %i.fw
  %i.fy = add nuw nsw i128 %i.fx, %i.fv           ; 2 uses
  %i.fz = lshr i128 %i.fy, 64
  %i.ga = zext nneg i64 %i.eq to i128
  %i.gb = zext i64 %i.fh to i128
  %i.gc = add nuw nsw i128 %i.ga, %i.gb
  %i.gd = add nuw nsw i128 %i.gc, %i.fz           ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = and i128 %i.fj, 18446744073709551615    ; 4 uses
  %i.gg = mul nuw i128 %i.gf, 18446744069414584321 ; 2 uses
  %i.gh = lshr i128 %i.gg, 64
  %i.gi = mul nuw nsw i128 %i.gf, 4294967295      ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = trunc nuw nsw i128 %i.gj to i64
  %i.gl = mul nuw i128 %i.gf, 18446744073709551615 ; 2 uses
  %i.gm = lshr i128 %i.gl, 64
  %i.gn = and i128 %i.gi, 18446744073709551615
  %i.go = add nuw nsw i128 %i.gm, %i.gn           ; 2 uses
  %i.gp = lshr i128 %i.go, 64
  %i.gq = trunc nuw nsw i128 %i.gp to i64
  %i.gr = add nuw nsw i64 %i.gq, %i.gk
  %i.gs = and i128 %i.gl, 18446744073709551615
  %i.gt = add nuw nsw i128 %i.gs, %i.gf
  %i.gu = lshr i128 %i.gt, 64
  %i.gv = and i128 %i.fo, 18446744073709551615
  %i.gw = add nuw nsw i128 %i.gv, %i.gu
  %i.gx = and i128 %i.go, 18446744073709551615
  %i.gy = add nuw nsw i128 %i.gw, %i.gx           ; 2 uses
  %i.gz = lshr i128 %i.gy, 64
  %i.ha = and i128 %i.ft, 18446744073709551615
  %i.hb = add nuw nsw i128 %i.ha, %i.gz
  %i.hc = zext nneg i64 %i.gr to i128
  %i.hd = add nuw nsw i128 %i.hb, %i.hc           ; 2 uses
  %i.he = lshr i128 %i.hd, 64
  %i.hf = and i128 %i.fy, 18446744073709551615
  %i.hg = and i128 %i.gg, 18446744073709551615
  %i.hh = add nuw nsw i128 %i.he, %i.hg
  %i.hi = add nuw nsw i128 %i.hh, %i.hf           ; 2 uses
  %i.hj = lshr i128 %i.hi, 64
  %i.hk = and i128 %i.gd, 18446744073709551615
  %i.hl = add nuw nsw i128 %i.hj, %i.gh
  %i.hm = add nuw nsw i128 %i.hl, %i.hk           ; 2 uses
  %i.hn = lshr i128 %i.hm, 64
  %3 = trunc nuw nsw i128 %i.hn to i64
  %i.ho = trunc nuw nsw i128 %i.ge to i64
  %i.hp = add nuw nsw i64 %3, %i.ho
  %i.hq = mul nuw i128 %i.i, %i.i                 ; 2 uses
  %i.hr = lshr i128 %i.hq, 64
  %i.hs = trunc nuw i128 %i.hr to i64
  %i.ht = add nuw nsw i128 %i.k, %i.ce            ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = add nuw nsw i128 %i.fc, %i.br
  %i.hw = add nuw nsw i128 %i.hv, %i.hu           ; 2 uses
  %i.hx = lshr i128 %i.hw, 64
  %i.hy = and i128 %i.hq, 18446744073709551615
  %i.hz = add nuw nsw i128 %i.hy, %i.es
  %i.ia = add nuw nsw i128 %i.hz, %i.hx           ; 2 uses
  %i.ib = lshr i128 %i.ia, 64
  %i.ic = trunc nuw nsw i128 %i.ib to i64
  %i.id = add nuw i64 %i.ic, %i.hs
  %i.ie = and i128 %i.gy, 18446744073709551615
  %i.if = add nuw nsw i128 %i.ie, %i.ab           ; 2 uses
  %i.ig = lshr i128 %i.if, 64
  %i.ih = and i128 %i.hd, 18446744073709551615
  %i.ii = and i128 %i.ht, 18446744073709551615
  %i.ij = add nuw nsw i128 %i.ig, %i.ii
  %i.ik = add nuw nsw i128 %i.ij, %i.ih           ; 2 uses
  %i.il = lshr i128 %i.ik, 64
  %i.im = and i128 %i.hi, 18446744073709551615
  %i.in = and i128 %i.hw, 18446744073709551615
  %i.io = add nuw nsw i128 %i.il, %i.in
  %i.ip = add nuw nsw i128 %i.io, %i.im           ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = and i128 %i.hm, 18446744073709551615
  %i.is = and i128 %i.ia, 18446744073709551615
  %i.it = add nuw nsw i128 %i.iq, %i.is
  %i.iu = add nuw nsw i128 %i.it, %i.ir           ; 2 uses
  %i.iv = lshr i128 %i.iu, 64
  %i.iw = zext nneg i64 %i.hp to i128
  %i.ix = zext i64 %i.id to i128
  %i.iy = add nuw nsw i128 %i.iw, %i.ix
  %i.iz = add nuw nsw i128 %i.iy, %i.iv           ; 2 uses
  %i.ja = lshr i128 %i.iz, 64
  %i.jb = and i128 %i.if, 18446744073709551615    ; 4 uses
  %i.jc = mul nuw i128 %i.jb, 18446744069414584321 ; 2 uses
  %i.jd = lshr i128 %i.jc, 64
  %i.je = mul nuw nsw i128 %i.jb, 4294967295      ; 2 uses
  %i.jf = lshr i128 %i.je, 64
  %i.jg = trunc nuw nsw i128 %i.jf to i64
  %i.jh = mul nuw i128 %i.jb, 18446744073709551615 ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = and i128 %i.je, 18446744073709551615
  %i.jk = add nuw nsw i128 %i.ji, %i.jj           ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = trunc nuw nsw i128 %i.jl to i64
  %i.jn = add nuw nsw i64 %i.jm, %i.jg
  %i.jo = and i128 %i.jh, 18446744073709551615
  %i.jp = add nuw nsw i128 %i.jo, %i.jb
  %i.jq = lshr i128 %i.jp, 64
  %i.jr = and i128 %i.ik, 18446744073709551615
  %i.js = add nuw nsw i128 %i.jr, %i.jq
  %i.jt = and i128 %i.jk, 18446744073709551615
  %i.ju = add nuw nsw i128 %i.js, %i.jt           ; 3 uses
  %i.jv = trunc i128 %i.ju to i64
  %i.jw = lshr i128 %i.ju, 64
  %i.jx = and i128 %i.ip, 18446744073709551615
  %i.jy = add nuw nsw i128 %i.jx, %i.jw
  %i.jz = zext nneg i64 %i.jn to i128
  %i.ka = add nuw nsw i128 %i.jy, %i.jz           ; 3 uses
  %i.kb = trunc i128 %i.ka to i64
  %i.kc = lshr i128 %i.ka, 64
  %i.kd = and i128 %i.iu, 18446744073709551615
  %i.ke = and i128 %i.jc, 18446744073709551615
  %i.kf = add nuw nsw i128 %i.kc, %i.ke
  %i.kg = add nuw nsw i128 %i.kf, %i.kd           ; 3 uses
  %i.kh = trunc i128 %i.kg to i64
  %i.ki = lshr i128 %i.kg, 64
  %i.kj = and i128 %i.iz, 18446744073709551615
  %i.kk = add nuw nsw i128 %i.ki, %i.jd
  %i.kl = add nuw nsw i128 %i.kk, %i.kj           ; 3 uses
  %i.km = trunc i128 %i.kl to i64
  %i.kn = lshr i128 %i.kl, 64
  %4 = trunc nuw nsw i128 %i.kn to i64
  %i.ko = trunc nuw nsw i128 %i.ja to i64
  %i.kp = add nuw nsw i64 %4, %i.ko
  %i.kq = and i128 %i.ju, 18446744073709551615
  %i.kr = add nsw i128 %i.kq, -18446744073709551615 ; 2 uses
  %i.ks = lshr i128 %i.kr, 64
  %i.kt = trunc i128 %i.kr to i64
  %i.ku = and i128 %i.ka, 18446744073709551615
  %i.kv = sub nsw i128 0, %i.ks
  %i.kw = and i128 %i.kv, 255
  %reass.sub = sub nsw i128 %i.ku, %i.kw
  %i.kx = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %i.ky = lshr i128 %i.kx, 64
  %i.kz = trunc i128 %i.kx to i64
  %i.la = and i128 %i.kg, 18446744073709551615
  %i.lb = sub nsw i128 0, %i.ky
  %i.lc = and i128 %i.lb, 255
  %i.ld = sub nsw i128 %i.la, %i.lc               ; 2 uses
  %i.le = lshr i128 %i.ld, 64
  %i.lf = trunc i128 %i.ld to i64
  %i.lg = and i128 %i.kl, 18446744073709551615
  %i.lh = sub nsw i128 0, %i.le
  %i.li = and i128 %i.lh, 255
  %.neg237 = add nsw i128 %i.lg, -18446744069414584321
  %i.lj = sub nsw i128 %.neg237, %i.li            ; 2 uses
  %i.lk = lshr i128 %i.lj, 64
  %i.ll = trunc i128 %i.lj to i64
  %i.lm = zext nneg i64 %i.kp to i128
  %i.ln = sub nsw i128 0, %i.lk
  %i.lo = and i128 %i.ln, 255
  %i.lp = sub nsw i128 %i.lm, %i.lo
  %i.lq = lshr i128 %i.lp, 64
  %i.lr = trunc i128 %i.lq to i8
  %i.ls = icmp ne i8 %i.lr, 0
  %i.lt = sext i1 %i.ls to i64                    ; 2 uses
  %i.lu = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lt) #47, !srcloc !599 ; 4 uses
  %i.lv = and i64 %i.lu, %i.jv
  %i.lw = xor i64 %i.lt, -1
  %i.lx = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lw) #47, !srcloc !599 ; 4 uses
  %i.ly = and i64 %i.lx, %i.kt
  %i.lz = or i64 %i.ly, %i.lv
  %i.ma = and i64 %i.lu, %i.kb
  %i.mb = and i64 %i.lx, %i.kz
  %i.mc = or i64 %i.mb, %i.ma
  %i.md = and i64 %i.lu, %i.kh
  %i.me = and i64 %i.lx, %i.lf
  %i.mf = or i64 %i.me, %i.md
  %i.mg = and i64 %i.lu, %i.km
  %i.mh = and i64 %i.lx, %i.ll
  %i.mi = or i64 %i.mh, %i.mg
  store i64 %i.lz, ptr %0, align 8, !tbaa !80
  %i.mj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mc, ptr %i.mj, align 8, !tbaa !80
  %i.mk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.mf, ptr %i.mk, align 8, !tbaa !80
  %i.ml = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.mi, ptr %i.ml, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite) uwtable
define internal void @fiat_p256_opp(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1) #41 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80
  %i.b = zext i64 %i.a to i128
  %i.c = sub nsw i128 0, %i.b                     ; 2 uses
  %i.d = lshr i128 %i.c, 64
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = sub nsw i128 0, %i.d
  %i.h = and i128 %i.g, 255
  %i.i = zext i64 %i.f to i128
  %i.j = add nuw nsw i128 %i.h, %i.i
  %i.k = sub nsw i128 0, %i.j                     ; 2 uses
  %i.l = lshr i128 %i.k, 64
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = sub nsw i128 0, %i.l
  %i.p = and i128 %i.o, 255
  %i.q = zext i64 %i.n to i128
  %i.r = add nuw nsw i128 %i.p, %i.q
  %i.s = sub nsw i128 0, %i.r                     ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load i64, ptr %i.u, align 8, !tbaa !80
  %i.w = sub nsw i128 0, %i.t
  %i.x = and i128 %i.w, 255
  %i.y = zext i64 %i.v to i128
  %i.z = add nuw nsw i128 %i.x, %i.y              ; 2 uses
  %i.aa = sub nsw i128 0, %i.z
  %i.ab = and i128 %i.aa, 4703919738795935662080
  %i.ac = icmp ne i128 %i.ab, 0
  %i.ad = sext i1 %i.ac to i64                    ; 2 uses
  %i.ae = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ad) #47, !srcloc !599 ; 3 uses
  %i.af = xor i64 %i.ad, -1
  %i.ag = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.af) #47, !srcloc !599 ; 0 uses
  %i.ah = and i128 %i.c, 18446744073709551615
  %i.ai = zext i64 %i.ae to i128
  %i.aj = add nuw nsw i128 %i.ah, %i.ai           ; 2 uses
  %i.ak = trunc i128 %i.aj to i64
  %i.al = lshr i128 %i.aj, 64
  %i.am = and i64 %i.ae, 4294967295
  %i.an = and i128 %i.k, 18446744073709551615
  %i.ao = zext nneg i64 %i.am to i128
  %i.ap = add nuw nsw i128 %i.an, %i.ao
  %i.aq = add nuw nsw i128 %i.ap, %i.al           ; 2 uses
  %i.ar = trunc i128 %i.aq to i64
  %i.as = lshr i128 %i.aq, 64
  %i.at = and i128 %i.s, 18446744073709551615
  %i.au = add nuw nsw i128 %i.as, %i.at           ; 2 uses
  %i.av = trunc i128 %i.au to i64
  %i.aw = lshr i128 %i.au, 64
  %i.ax = and i64 %i.ae, -4294967295
  %i.ay = sub nsw i128 %i.aw, %i.z
  %i.az = trunc i128 %i.ay to i64
  %i.ba = add i64 %i.ax, %i.az
  store i64 %i.ak, ptr %0, align 8, !tbaa !80
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.ar, ptr %i.bb, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.av, ptr %i.bc, align 8, !tbaa !80
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ba, ptr %i.bd, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal i64 @fiat_p256_nz(ptr nofree noundef readonly captures(none) %0) #18 {
bb.a:
  %i.a = load <4 x i64>, ptr %0, align 8, !tbaa !80
  %i.b = tail call i64 @llvm.vector.reduce.or.v4i64(<4 x i64> %i.a)
  ret i64 %i.b
}

; Function Attrs: nounwind uwtable
define internal void @fiat_p256_point_double(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !600
  tail call void @ec_nistp_point_double(ptr noundef nonnull @p256_methods_storage, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @fiat_p256_point_add(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9) #0 {
bb.a:
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !600
  tail call void @ec_nistp_point_add(ptr noundef nonnull @p256_methods_storage, ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, ptr noundef %7, ptr noundef %8, ptr noundef %9)
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ec_GFp_nistp256_point_get_affine_coordinates(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 7 uses
  %i.b = alloca [4 x i64], align 16               ; 8 uses
  %i.c = alloca [4 x i64], align 16               ; 11 uses
  %i.d = alloca [4 x i64], align 16               ; 16 uses
  %i.e = alloca [4 x i64], align 16               ; 11 uses
  %i.f = alloca [4 x i64], align 16               ; 35 uses
  %i.g = alloca [4 x i64], align 16               ; 10 uses
  %i.h = alloca [4 x i64], align 16               ; 202 uses
  %i.i = alloca [4 x i64], align 16               ; 8 uses
  %i.j = alloca [4 x i64], align 16               ; 7 uses
  %i.k = alloca [4 x i64], align 16               ; 6 uses
  %i.l = alloca [4 x i64], align 16               ; 8 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i32, ptr %i.n, align 8, !tbaa !277  ; 3 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.o to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.o, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.s, %vector.body ]
  %vec.phi16 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.t, %vector.body ]
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %wide.load = load <2 x i64>, ptr %i.q, align 8, !tbaa !80
  %wide.load17 = load <2 x i64>, ptr %i.r, align 8, !tbaa !80
  %i.s = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.t = or <2 x i64> %wide.load17, %vec.phi16    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.u = icmp eq i64 %index.next, %n.vec
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2662

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.v, %middle.block ]
end_hunk_1
begin_hunk_2_@ec_GFp_nistp256_add:bb.a
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !2665
  call void @ec_nistp_point_add(ptr noundef nonnull @p256_methods_storage, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, i32 noundef 0, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.f), !inline_history !2666
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.k, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.l, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ec_GFp_nistp256_dbl(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 6 uses
  %i.b = alloca [4 x i64], align 16               ; 6 uses
  %i.c = alloca [4 x i64], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.e, i64 32, i1 false)
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !2667
  call void @ec_nistp_point_double(ptr noundef nonnull @p256_methods_storage, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c), !inline_history !2668
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.g, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ec_GFp_nistp256_point_mul(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %i.a = alloca [3 x [4 x i64]], align 16         ; 6 uses
  %i.b = alloca [3 x [4 x i64]], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !600
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @ec_nistp_scalar_mul(ptr noundef nonnull @p256_methods_storage, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %3)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ec_GFp_nistp256_point_mul_base(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = alloca [3 x [4 x i64]], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !600
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @ec_nistp_scalar_mul_base(ptr noundef nonnull @p256_methods_storage, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef %2)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.d, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @ec_GFp_nistp256_point_mul_public(ptr nofree readnone captures(none) %0, ptr nofree noundef writeonly captures(none) initializes((0, 32), (72, 104), (144, 176)) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca [3 x [4 x i64]], align 16         ; 6 uses
  %i.b = alloca [3 x [4 x i64]], align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %3, i64 32, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.e, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.f, i64 32, i1 false)
  tail call void @CRYPTO_once(ptr noundef nonnull @p256_methods_once, ptr noundef nonnull @p256_methods_init) #46, !inline_history !600
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 64 ; 2 uses
  call void @ec_nistp_scalar_mul_public(ptr noundef nonnull @p256_methods_storage, ptr noundef nonnull %i.a, ptr noundef nonnull %i.g, ptr noundef nonnull %i.h, ptr noundef %2, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef %4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %1, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.g, i64 32, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 16 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ec_GFp_nistp256_cmp_x_coordinate(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 8 uses
  %i.b = alloca [4 x i64], align 16               ; 10 uses
  %i.c = alloca [4 x i64], align 16               ; 10 uses
  %3 = alloca %struct.EC_FELEM, align 8           ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !277  ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.f to i64 ; 4 uses
  %min.iters.check = icmp ult i32 %i.f, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %vec.phi31 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.k, %vector.body ]
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %wide.load = load <2 x i64>, ptr %i.h, align 8, !tbaa !80
  %wide.load32 = load <2 x i64>, ptr %i.i, align 8, !tbaa !80
  %i.j = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.k = or <2 x i64> %wide.load32, %vec.phi31    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !2669

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.k, %i.j
  %i.m = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.m, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = or i64 %i.o, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i, !llvm.loop !2670

ec_GFp_simple_is_at_infinity.exit:                ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa30 = phi i64 [ %i.m, %middle.block ], [ %i.p, %.lr.ph.i.i ]
  %.not.i.not = icmp eq i64 %.lcssa30, 0
  br i1 %.not.i.not, label %ec_GFp_simple_is_at_infinity.exit.thread, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.d, i64 32, i1 false)
  call void @fiat_p256_mul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(32) %2, i64 32, i1 false)
  call void @fiat_p256_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, ptr noundef nonnull readonly align 1 dereferenceable(32) %1, i64 32, i1 false)
  %i.q = load i64, ptr %i.c, align 16, !tbaa !80
  %i.r = zext i64 %i.q to i128                    ; 4 uses
  %i.s = mul nuw i128 %i.r, 18446744069414584321  ; 2 uses
  %i.t = lshr i128 %i.s, 64
  %i.u = mul nuw nsw i128 %i.r, 4294967295        ; 2 uses
  %i.v = lshr i128 %i.u, 64
  %i.w = trunc nuw nsw i128 %i.v to i64
  %i.x = mul nuw i128 %i.r, 18446744073709551615  ; 2 uses
  %i.y = lshr i128 %i.x, 64
  %i.z = and i128 %i.u, 18446744073709551615
  %i.aa = add nuw nsw i128 %i.y, %i.z             ; 2 uses
  %i.ab = lshr i128 %i.aa, 64
  %i.ac = and i128 %i.x, 18446744073709551615
  %i.ad = add nuw nsw i128 %i.ac, %i.r
  %i.ae = lshr i128 %i.ad, 64
  %i.af = and i128 %i.aa, 18446744073709551615
  %i.ag = add nuw nsw i128 %i.ae, %i.af           ; 2 uses
  %i.ah = lshr i128 %i.ag, 64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !80
  %i.ak = and i128 %i.ag, 18446744073709551615
  %i.al = zext i64 %i.aj to i128
  %i.am = add nuw nsw i128 %i.ak, %i.al           ; 2 uses
  %i.an = lshr i128 %i.am, 64
  %i.ao = and i128 %i.am, 18446744073709551615    ; 4 uses
  %i.ap = mul nuw i128 %i.ao, 18446744069414584321 ; 2 uses
  %i.aq = lshr i128 %i.ap, 64
  %i.ar = trunc nuw i128 %i.aq to i64
  %i.as = mul nuw nsw i128 %i.ao, 4294967295      ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw nsw i128 %i.at to i64
  %i.av = mul nuw i128 %i.ao, 18446744073709551615 ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = and i128 %i.as, 18446744073709551615
  %i.ay = add nuw nsw i128 %i.aw, %i.ax           ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = and i128 %i.av, 18446744073709551615
  %i.bb = add nuw nsw i128 %i.ba, %i.ao
  %i.bc = lshr i128 %i.bb, 64
  %4 = trunc nuw nsw i128 %i.an to i64
  %5 = trunc nuw nsw i128 %i.ah to i64
  %6 = trunc nuw nsw i128 %i.ab to i64
  %i.bd = add nuw nsw i64 %6, %i.w
  %i.be = add nuw nsw i64 %i.bd, %5
  %i.bf = add nuw nsw i64 %i.be, %4
  %i.bg = zext nneg i64 %i.bf to i128
  %i.bh = add nuw nsw i128 %i.bc, %i.bg
  %i.bi = and i128 %i.ay, 18446744073709551615
  %i.bj = add nuw nsw i128 %i.bh, %i.bi           ; 2 uses
  %i.bk = lshr i128 %i.bj, 64
  %7 = trunc nuw nsw i128 %i.az to i64
  %i.bl = add nuw nsw i64 %7, %i.au
  %i.bm = and i128 %i.s, 18446744073709551615
  %i.bn = add nuw nsw i128 %i.bk, %i.bm
  %i.bo = zext nneg i64 %i.bl to i128
  %i.bp = add nuw nsw i128 %i.bn, %i.bo           ; 2 uses
  %i.bq = lshr i128 %i.bp, 64
  %i.br = and i128 %i.ap, 18446744073709551615
  %i.bs = add nuw nsw i128 %i.br, %i.t
  %i.bt = add nuw nsw i128 %i.bs, %i.bq           ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 16, !tbaa !80
  %i.bx = and i128 %i.bj, 18446744073709551615
  %i.by = zext i64 %i.bw to i128
  %i.bz = add nuw nsw i128 %i.bx, %i.by           ; 2 uses
  %i.ca = lshr i128 %i.bz, 64
  %i.cb = and i128 %i.bp, 18446744073709551615
  %i.cc = add nuw nsw i128 %i.cb, %i.ca           ; 2 uses
  %i.cd = lshr i128 %i.cc, 64
  %i.ce = and i128 %i.bt, 18446744073709551615
  %i.cf = add nuw nsw i128 %i.ce, %i.cd           ; 2 uses
  %i.cg = lshr i128 %i.cf, 64
  %i.ch = and i128 %i.bz, 18446744073709551615    ; 4 uses
  %i.ci = mul nuw i128 %i.ch, 18446744069414584321 ; 2 uses
  %i.cj = lshr i128 %i.ci, 64
  %i.ck = trunc nuw i128 %i.cj to i64
  %i.cl = mul nuw nsw i128 %i.ch, 4294967295      ; 2 uses
  %i.cm = lshr i128 %i.cl, 64
  %i.cn = trunc nuw nsw i128 %i.cm to i64
  %i.co = mul nuw i128 %i.ch, 18446744073709551615 ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = and i128 %i.cl, 18446744073709551615
  %i.cr = add nuw nsw i128 %i.cp, %i.cq           ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = and i128 %i.co, 18446744073709551615
  %i.cu = add nuw nsw i128 %i.ct, %i.ch
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = and i128 %i.cc, 18446744073709551615
  %i.cx = add nuw nsw i128 %i.cv, %i.cw
  %i.cy = and i128 %i.cr, 18446744073709551615
  %i.cz = add nuw nsw i128 %i.cx, %i.cy           ; 2 uses
  %i.da = lshr i128 %i.cz, 64
  %8 = trunc nuw nsw i128 %i.cs to i64
  %i.db = add nuw nsw i64 %8, %i.cn
  %i.dc = and i128 %i.cf, 18446744073709551615
  %i.dd = add nuw nsw i128 %i.da, %i.dc
  %i.de = zext nneg i64 %i.db to i128
  %i.df = add nuw nsw i128 %i.dd, %i.de           ; 2 uses
  %i.dg = lshr i128 %i.df, 64
  %9 = trunc nuw nsw i128 %i.cg to i64
  %10 = trunc nuw nsw i128 %i.bu to i64
  %i.dh = add nuw i64 %10, %i.ar
  %i.di = add nuw i64 %i.dh, %9
  %i.dj = zext i64 %i.di to i128
  %i.dk = and i128 %i.ci, 18446744073709551615
  %i.dl = add nuw nsw i128 %i.dk, %i.dj
  %i.dm = add nuw nsw i128 %i.dl, %i.dg           ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !80
  %i.dq = and i128 %i.cz, 18446744073709551615
  %i.dr = zext i64 %i.dp to i128
  %i.ds = add nuw nsw i128 %i.dq, %i.dr           ; 2 uses
  %i.dt = lshr i128 %i.ds, 64
  %i.du = and i128 %i.df, 18446744073709551615
  %i.dv = add nuw nsw i128 %i.du, %i.dt           ; 2 uses
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = and i128 %i.dm, 18446744073709551615
  %i.dy = add nuw nsw i128 %i.dx, %i.dw           ; 2 uses
  %i.dz = lshr i128 %i.dy, 64
  %i.ea = and i128 %i.ds, 18446744073709551615    ; 4 uses
  %i.eb = mul nuw i128 %i.ea, 18446744069414584321 ; 2 uses
  %i.ec = lshr i128 %i.eb, 64
  %i.ed = trunc nuw i128 %i.ec to i64
  %i.ee = mul nuw nsw i128 %i.ea, 4294967295      ; 2 uses
  %i.ef = lshr i128 %i.ee, 64
  %i.eg = trunc nuw nsw i128 %i.ef to i64
  %i.eh = mul nuw i128 %i.ea, 18446744073709551615 ; 2 uses
  %i.ei = lshr i128 %i.eh, 64
  %i.ej = and i128 %i.ee, 18446744073709551615
  %i.ek = add nuw nsw i128 %i.ei, %i.ej           ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = and i128 %i.eh, 18446744073709551615
  %i.en = add nuw nsw i128 %i.em, %i.ea
  %i.eo = lshr i128 %i.en, 64
  %i.ep = and i128 %i.dv, 18446744073709551615
  %i.eq = add nuw nsw i128 %i.eo, %i.ep
  %i.er = and i128 %i.ek, 18446744073709551615
  %i.es = add nuw nsw i128 %i.eq, %i.er           ; 3 uses
  %i.et = trunc i128 %i.es to i64
  %i.eu = lshr i128 %i.es, 64
  %11 = trunc nuw nsw i128 %i.el to i64
  %i.ev = add nuw nsw i64 %11, %i.eg
  %i.ew = and i128 %i.dy, 18446744073709551615
  %i.ex = add nuw nsw i128 %i.eu, %i.ew
  %i.ey = zext nneg i64 %i.ev to i128
  %i.ez = add nuw nsw i128 %i.ex, %i.ey           ; 3 uses
  %i.fa = trunc i128 %i.ez to i64
  %i.fb = lshr i128 %i.ez, 64
  %12 = trunc nuw nsw i128 %i.dz to i64
  %13 = trunc nuw nsw i128 %i.dn to i64
  %i.fc = add nuw i64 %13, %i.ck
  %i.fd = add nuw i64 %i.fc, %12
  %i.fe = zext i64 %i.fd to i128
  %i.ff = and i128 %i.eb, 18446744073709551615
  %i.fg = add nuw nsw i128 %i.ff, %i.fe
  %i.fh = add nuw nsw i128 %i.fg, %i.fb           ; 3 uses
  %i.fi = trunc i128 %i.fh to i64
  %i.fj = lshr i128 %i.fh, 64
  %i.fk = trunc nuw nsw i128 %i.fj to i64
  %i.fl = add nuw i64 %i.fk, %i.ed                ; 2 uses
  %i.fm = and i128 %i.es, 18446744073709551615
  %i.fn = add nsw i128 %i.fm, -18446744073709551615 ; 2 uses
  %i.fo = lshr i128 %i.fn, 64
  %i.fp = trunc i128 %i.fn to i64
  %i.fq = and i128 %i.ez, 18446744073709551615
  %i.fr = sub nsw i128 0, %i.fo
  %i.fs = and i128 %i.fr, 255
  %reass.sub.i = sub nsw i128 %i.fq, %i.fs
  %i.ft = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = trunc i128 %i.ft to i64
  %i.fw = and i128 %i.fh, 18446744073709551615
  %i.fx = sub nsw i128 0, %i.fu
  %i.fy = and i128 %i.fx, 255
  %i.fz = sub nsw i128 %i.fw, %i.fy               ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = trunc i128 %i.fz to i64
  %i.gc = zext i64 %i.fl to i128
  %i.gd = sub nsw i128 0, %i.ga
  %i.ge = and i128 %i.gd, 255
  %.neg112.i = add nsw i128 %i.gc, -18446744069414584321
  %i.gf = sub nsw i128 %.neg112.i, %i.ge          ; 2 uses
  %i.gg = lshr i128 %i.gf, 64
  %i.gh = trunc i128 %i.gf to i64
  %i.gi = sub nsw i128 0, %i.gg
  %i.gj = and i128 %i.gi, 255
  %i.gk = sub nsw i128 0, %i.gj
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc i128 %i.gl to i8
  %i.gn = icmp ne i8 %i.gm, 0
  %i.go = sext i1 %i.gn to i64                    ; 2 uses
  %i.gp = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.go) #47, !srcloc !599 ; 4 uses
  %i.gq = and i64 %i.gp, %i.et
  %i.gr = xor i64 %i.go, -1
  %i.gs = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gr) #47, !srcloc !599 ; 4 uses
  %i.gt = and i64 %i.gs, %i.fp
  %i.gu = or i64 %i.gt, %i.gq
  %i.gv = and i64 %i.gp, %i.fa
  %i.gw = and i64 %i.gs, %i.fv
  %i.gx = or i64 %i.gw, %i.gv
  %i.gy = and i64 %i.gp, %i.fi
  %i.gz = and i64 %i.gs, %i.gb
  %i.ha = or i64 %i.gz, %i.gy
  %i.hb = and i64 %i.fl, %i.gp
  %i.hc = and i64 %i.gs, %i.gh
  %i.hd = or i64 %i.hc, %i.hb
  store i64 %i.gu, ptr %i.c, align 16, !tbaa !80
  store i64 %i.gx, ptr %i.ai, align 8, !tbaa !80
  store i64 %i.ha, ptr %i.bv, align 16, !tbaa !80
  store i64 %i.hd, ptr %i.do, align 8, !tbaa !80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.018.i = phi i64 [ %i.hs, %.lr.ph.i ], [ 0, %bb.b ]
  %.01517.i = phi i64 [ %i.he, %.lr.ph.i ], [ 32, %bb.b ]
  %i.he = add nsw i64 %.01517.i, -1               ; 4 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.he
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !76  ; 2 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.he
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !76  ; 2 uses
  %i.hj = zext i8 %i.hg to i64
  %i.hk = zext i8 %i.hi to i64
  %i.hl = icmp eq i8 %i.hg, %i.hi
  %.neg.i.i.i = sext i1 %i.hl to i64              ; 2 uses
  %i.hm = xor i64 %.neg.i.i.i, -1
  %i.hn = sub nsw i64 %i.hj, %i.hk
  %i.ho = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.hm) #47, !srcloc !81
  %i.hp = and i64 %i.hn, %i.ho
  %i.hq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #47, !srcloc !81
  %i.hr = and i64 %i.hq, %.018.i
  %i.hs = or i64 %i.hr, %i.hp                     ; 2 uses
  %.not.i12 = icmp eq i64 %i.he, 0
  br i1 %.not.i12, label %OPENSSL_memcmp.exit, label %.lr.ph.i, !llvm.loop !20

OPENSSL_memcmp.exit:                              ; preds = %.lr.ph.i
  %i.ht = and i64 %i.hs, 4294967295
  %i.hu = icmp eq i64 %i.ht, 0
  br i1 %i.hu, label %bb.f, label %bn_add_words.exit

bn_add_words.exit:                                ; preds = %OPENSSL_memcmp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !297
  %i.hx = call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %3, ptr nonnull %2, ptr %i.hw, i64 %wide.trip.count.i.i, i64 0) #46, !srcloc !96
  %i.hy = extractvalue { i64, i64, i64 } %i.hx, 0
  %i.hz = and i64 %i.hy, 1
  %i.ia = icmp eq i64 %i.hz, 0
  br i1 %i.ia, label %bn_add_words.exit.thread, label %bb.d

bn_add_words.exit.thread:                         ; preds = %bn_add_words.exit
  %i.ib = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !316
  %i.id = load i32, ptr %i.e, align 8, !tbaa !277
  %i.ie = sext i32 %i.id to i64                   ; 2 uses
  %i.if = call fastcc i32 @bn_cmp_words_consttime(ptr noundef nonnull readonly %3, i64 noundef %i.ie, ptr noundef readonly %i.ic, i64 noundef %i.ie)
  %.not11 = icmp sgt i32 %i.if, -1
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bn_add_words.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @fiat_p256_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13, %bb.c
  %.018.i14 = phi i64 [ %i.iu, %.lr.ph.i13 ], [ 0, %bb.c ]
  %.01517.i15 = phi i64 [ %i.ig, %.lr.ph.i13 ], [ 32, %bb.c ]
  %i.ig = add nsw i64 %.01517.i15, -1             ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ig
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !76  ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ig
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !76  ; 2 uses
  %i.il = zext i8 %i.ii to i64
  %i.im = zext i8 %i.ik to i64
  %i.in = icmp eq i8 %i.ii, %i.ik
  %.neg.i.i.i16 = sext i1 %i.in to i64            ; 2 uses
  %i.io = xor i64 %.neg.i.i.i16, -1
  %i.ip = sub nsw i64 %i.il, %i.im
  %i.iq = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.io) #47, !srcloc !81
  %i.ir = and i64 %i.ip, %i.iq
  %i.is = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i16) #47, !srcloc !81
  %i.it = and i64 %i.is, %.018.i14
  %i.iu = or i64 %i.it, %i.ir                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.ig, 0
  br i1 %.not.i17, label %OPENSSL_memcmp.exit18, label %.lr.ph.i13, !llvm.loop !20

OPENSSL_memcmp.exit18:                            ; preds = %.lr.ph.i13
  %i.iv = and i64 %i.iu, 4294967295
  %i.iw = icmp eq i64 %i.iv, 0
  br i1 %i.iw, label %bb.e, label %bb.d

bb.d:                                             ; preds = %OPENSSL_memcmp.exit18, %bn_add_words.exit.thread, %bn_add_words.exit
  br label %bb.e

bb.e:                                             ; preds = %OPENSSL_memcmp.exit18, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ 1, %OPENSSL_memcmp.exit18 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %bb.f

bb.f:                                             ; preds = %OPENSSL_memcmp.exit, %bb.e
  %.1 = phi i32 [ %.0, %bb.e ], [ 1, %OPENSSL_memcmp.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  br label %ec_GFp_simple_is_at_infinity.exit.thread

ec_GFp_simple_is_at_infinity.exit.thread:         ; preds = %bb.a, %ec_GFp_simple_is_at_infinity.exit, %bb.f
  %.2 = phi i32 [ %.1, %bb.f ], [ 0, %ec_GFp_simple_is_at_infinity.exit ], [ 0, %bb.a ]
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 2) i32 @ecp_nistz256_get_affine(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = alloca [4 x i64], align 16               ; 4 uses
  %i.b = alloca [4 x i64], align 16               ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.e = load i32, ptr %i.d, align 8, !tbaa !277  ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.e to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.e, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.i, %vector.body ]
  %vec.phi19 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.j, %vector.body ]
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <2 x i64>, ptr %i.g, align 8, !tbaa !80
  %wide.load20 = load <2 x i64>, ptr %i.h, align 8, !tbaa !80
  %i.i = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.j = or <2 x i64> %wide.load20, %vec.phi19    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !2671

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
end_hunk_2
