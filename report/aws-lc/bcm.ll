Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
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
  br i1 %i.dk, label %bb.n, label %._crit_edge, !llvm.loop !1948
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
  br i1 %i.h, label %middle.block, label %vector.body, !llvm.loop !1949

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.g, %i.f
  %i.i = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  br i1 %cmp.n, label %ec_felem_non_zero_mask.exit.thread, label %.lr.ph.i.preheader
end_hunk_0
begin_hunk_1_@p224_point_double:bb.a
  %i.vg = add nuw nsw i128 %i.vf, %i.um
  %i.vh = add nuw nsw i128 %i.vg, %i.ul
  %i.vi = add nuw nsw i128 %i.vh, %i.va           ; 3 uses
  %i.vj = and i128 %i.ux, 72057594037927935
  %i.vk = lshr i128 %i.vi, 56                     ; 2 uses
  %i.vl = and i128 %i.vi, 72057594037927935
  %i.vm = lshr i128 %i.vi, 72
  %i.vn = add nuw nsw i128 %i.vm, %i.vj
  %i.vo = shl nuw nsw i128 %i.vk, 40
  %i.vp = and i128 %i.vo, 72056494526300160
  %.neg224 = mul nsw i128 %i.up, %i.fa
  %.neg227 = add nsw i128 %.neg224, -168811955464684315858783496655603728384
  %.neg228 = add nuw nsw i128 %.neg227, %i.sq
  %i.vq = add nuw nsw i128 %i.uj, %i.vk
  %i.vr = sub nuw i128 %.neg228, %i.vq            ; 2 uses
  %i.vs = lshr i128 %i.vr, 56
  %.neg223 = add nsw i128 %.neg221, -168811955464684318238449510961154883584
  %i.vt = add nuw nsw i128 %.neg223, %i.st
  %i.vu = add nuw nsw i128 %i.vt, %i.ss
  %i.vv = sub nuw i128 %i.vu, %i.ub
  %i.vw = add nuw i128 %i.vv, %i.uz
  %i.vx = add nuw i128 %i.vw, %i.vp
  %i.vy = add nuw i128 %i.vx, %i.vs               ; 2 uses
  %i.vz = trunc i128 %i.vr to i64
  %i.wa = and i64 %i.vz, 72057594037927935
  store i64 %i.wa, ptr %1, align 8, !tbaa !80
  %i.wb = lshr i128 %i.vy, 56
  %i.wc = add nuw nsw i128 %i.vn, %i.wb           ; 2 uses
  %i.wd = trunc i128 %i.vy to i64
  %i.we = and i64 %i.wd, 72057594037927935
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !80
  %i.wg = lshr i128 %i.wc, 56
  %i.wh = add nuw nsw i128 %i.wg, %i.vl
  %i.wi = trunc i128 %i.wc to i64
  %i.wj = and i64 %i.wi, 72057594037927935
  %i.wk = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.wj, ptr %i.wk, align 8, !tbaa !80
  %i.wl = trunc nuw nsw i128 %i.wh to i64
  %i.wm = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.wl, ptr %i.wm, align 8, !tbaa !80
  ret void
}

; Function Attrs: nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @ec_GFp_nistp224_make_precomp(ptr nofree noundef nonnull captures(none) initializes((0, 192)) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(96) %0, i8 0, i64 96, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !80
  %i.c = and i64 %i.b, 72057594037927935
  store i64 %i.c, ptr %i.a, align 8, !tbaa !80
  %i.d = load i64, ptr %1, align 8, !tbaa !80
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !80
  %i.g = tail call i64 @llvm.fshl.i64(i64 %i.f, i64 %i.d, i64 8)
  %i.h = and i64 %i.g, 72057594037927935
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store i64 %i.h, ptr %i.i, align 8, !tbaa !80
  %i.j = load i64, ptr %i.e, align 8, !tbaa !80
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80
  %i.m = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.j, i64 16)
  %i.n = and i64 %i.m, 72057594037927935
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.n, ptr %i.o, align 8, !tbaa !80
  %i.p = load i64, ptr %i.k, align 8, !tbaa !80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !tbaa !80
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.p, i64 24)
  %i.t = and i64 %i.s, 72057594037927935
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %i.t, ptr %i.u, align 8, !tbaa !80
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80
  %i.y = and i64 %i.x, 72057594037927935
  store i64 %i.y, ptr %i.v, align 8, !tbaa !80
  %i.z = load i64, ptr %i.w, align 8, !tbaa !80
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !80
  %i.ac = tail call i64 @llvm.fshl.i64(i64 %i.ab, i64 %i.z, i64 8)
  %i.ad = and i64 %i.ac, 72057594037927935
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %i.ad, ptr %i.ae, align 8, !tbaa !80
  %i.af = load i64, ptr %i.aa, align 8, !tbaa !80
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.af, i64 16)
  %i.aj = and i64 %i.ai, 72057594037927935
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !80
  %i.al = load i64, ptr %i.ag, align 8, !tbaa !80
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.an = load i64, ptr %i.am, align 8, !tbaa !80
  %i.ao = tail call i64 @llvm.fshl.i64(i64 %i.an, i64 %i.al, i64 24)
  %i.ap = and i64 %i.ao, 72057594037927935
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 152
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !80
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !tbaa !80
  %i.au = and i64 %i.at, 72057594037927935
  store i64 %i.au, ptr %i.ar, align 8, !tbaa !80
  %i.av = load i64, ptr %i.as, align 8, !tbaa !80
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 152 ; 2 uses
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !80
  %i.ay = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.av, i64 8)
  %i.az = and i64 %i.ay, 72057594037927935
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !80
  %i.bb = load i64, ptr %i.aw, align 8, !tbaa !80
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 160 ; 2 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !80
  %i.be = tail call i64 @llvm.fshl.i64(i64 %i.bd, i64 %i.bb, i64 16)
  %i.bf = and i64 %i.be, 72057594037927935
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 %i.bf, ptr %i.bg, align 8, !tbaa !80
  %i.bh = load i64, ptr %i.bc, align 8, !tbaa !80
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !80
  %i.bk = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bh, i64 24)
  %i.bl = and i64 %i.bk, 72057594037927935
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i64 %i.bl, ptr %i.bm, align 8, !tbaa !80
  br label %bb.c

bb.b:                                             ; preds = %bb.f
  ret void

bb.c:                                             ; preds = %bb.a, %bb.f
  %.036 = phi i64 [ 2, %bb.a ], [ %i.by, %bb.f ]  ; 4 uses
  %i.bn = and i64 %.036, 1
  %.not = icmp eq i64 %i.bn, 0
  %i.bo = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.036 ; 7 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 32 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 64 ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = getelementptr i8, ptr %i.bo, i64 -96
  %i.bs = getelementptr i8, ptr %i.bo, i64 -64
  %i.bt = getelementptr i8, ptr %i.bo, i64 -32
  tail call fastcc void @p224_point_add(ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.a, ptr noundef %i.v, ptr noundef %i.ar, i32 noundef 0, ptr noundef %i.br, ptr noundef %i.bs, ptr noundef %i.bt)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.bu = lshr exact i64 %.036, 1
  %i.bv = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %i.bu ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 64
  tail call fastcc void @p224_point_double(ptr noundef %i.bo, ptr noundef %i.bp, ptr noundef %i.bq, ptr noundef %i.bv, ptr noundef %i.bw, ptr noundef %i.bx)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.by = add nuw nsw i64 %.036, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, 17
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !2663
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite) uwtable
define internal void @fiat_p256_add(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #41 {
bb.a:
  %i.a = load i64, ptr %1, align 8, !tbaa !80     ; 2 uses
  %i.b = load i64, ptr %2, align 8, !tbaa !80
  %add.narrowed = add i64 %i.b, %i.a              ; 3 uses
  %add.narrowed.overflow = icmp ult i64 %add.narrowed, %i.a
  %i.c = zext i1 %add.narrowed.overflow to i128
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !80
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !80
  %i.h = zext i64 %i.e to i128
  %i.i = add nuw nsw i128 %i.c, %i.h
  %i.j = zext i64 %i.g to i128
  %i.k = add nuw nsw i128 %i.i, %i.j              ; 3 uses
  %i.l = trunc i128 %i.k to i64
  %i.m = lshr i128 %i.k, 64
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !80
  %i.r = zext i64 %i.o to i128
  %i.s = zext i64 %i.q to i128
  %i.t = add nuw nsw i128 %i.s, %i.r
  %i.u = add nuw nsw i128 %i.t, %i.m              ; 3 uses
  %i.v = trunc i128 %i.u to i64
  %i.w = lshr i128 %i.u, 64
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !80
  %i.ab = zext i64 %i.y to i128
  %i.ac = zext i64 %i.aa to i128
  %i.ad = add nuw nsw i128 %i.ac, %i.ab
  %i.ae = add nuw nsw i128 %i.ad, %i.w            ; 3 uses
  %i.af = trunc i128 %i.ae to i64
  %i.ag = lshr i128 %i.ae, 64
  %i.ah = zext i64 %add.narrowed to i128
  %i.ai = add nsw i128 %i.ah, -18446744073709551615 ; 2 uses
  %3 = trunc i128 %i.ai to i64
  %4 = lshr i128 %i.ai, 64
  %i.aj = and i128 %i.k, 18446744073709551615
  %i.ak = sub nsw i128 0, %4
  %i.al = and i128 %i.ak, 255
  %reass.sub = sub nsw i128 %i.aj, %i.al
  %i.am = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %5 = trunc i128 %i.am to i64
  %6 = lshr i128 %i.am, 64
  %i.an = and i128 %i.u, 18446744073709551615
  %i.ao = sub nsw i128 0, %6
  %i.ap = and i128 %i.ao, 255
  %i.aq = sub nsw i128 %i.an, %i.ap               ; 2 uses
  %7 = trunc i128 %i.aq to i64
  %8 = lshr i128 %i.aq, 64
  %i.ar = and i128 %i.ae, 18446744073709551615
  %i.as = sub nsw i128 0, %8
  %i.at = and i128 %i.as, 255
  %reass.sub42 = sub nsw i128 %i.ar, %i.at
  %i.au = add nsw i128 %reass.sub42, -18446744069414584321 ; 2 uses
  %9 = trunc i128 %i.au to i64
  %10 = lshr i128 %i.au, 64
  %i.av = sub nsw i128 0, %10
  %i.aw = and i128 %i.av, 255
  %i.ax = sub nsw i128 %i.ag, %i.aw
  %i.ay = lshr i128 %i.ax, 64
  %i.az = trunc i128 %i.ay to i8
  %i.ba = icmp ne i8 %i.az, 0
  %i.bb = sext i1 %i.ba to i64                    ; 2 uses
  %i.bc = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.bb) #47, !srcloc !599 ; 4 uses
  %i.bd = and i64 %i.bc, %add.narrowed
  %i.be = xor i64 %i.bb, -1
  %i.bf = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.be) #47, !srcloc !599 ; 4 uses
  %i.bg = and i64 %i.bf, %3
  %i.bh = or i64 %i.bg, %i.bd
  %i.bi = and i64 %i.bc, %i.l
  %i.bj = and i64 %i.bf, %5
  %i.bk = or i64 %i.bj, %i.bi
  %i.bl = and i64 %i.bc, %i.v
  %i.bm = and i64 %i.bf, %7
  %i.bn = or i64 %i.bm, %i.bl
  %i.bo = and i64 %i.bc, %i.af
  %i.bp = and i64 %i.bf, %9
  %i.bq = or i64 %i.bp, %i.bo
  store i64 %i.bh, ptr %0, align 8, !tbaa !80
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bk, ptr %i.br, align 8, !tbaa !80
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %i.bs, align 8, !tbaa !80
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.bq, ptr %i.bt, align 8, !tbaa !80
  ret void
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite) uwtable
define internal void @fiat_p256_sub(ptr nofree noundef writeonly captures(none) initializes((0, 32)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) #41 {
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
end_hunk_1
begin_hunk_2_@fiat_p256_mul:bb.a
  %i.eg = and i128 %i.dz, 18446744073709551615
  %i.eh = add nuw nsw i128 %i.eg, %i.dt
  %i.ei = lshr i128 %i.eh, 64
  %i.ej = and i128 %i.dc, 18446744073709551615
  %i.ek = add nuw nsw i128 %i.ej, %i.ei
  %i.el = and i128 %i.ec, 18446744073709551615
  %i.em = add nuw nsw i128 %i.ek, %i.el           ; 2 uses
  %i.en = lshr i128 %i.em, 64
  %i.eo = and i128 %i.dh, 18446744073709551615
  %i.ep = add nuw nsw i128 %i.eo, %i.en
  %i.eq = zext nneg i64 %i.ef to i128
  %i.er = add nuw nsw i128 %i.ep, %i.eq           ; 2 uses
  %i.es = lshr i128 %i.er, 64
  %i.et = and i128 %i.dm, 18446744073709551615
  %i.eu = and i128 %i.du, 18446744073709551615
  %i.ev = add nuw nsw i128 %i.es, %i.eu
  %i.ew = add nuw nsw i128 %i.ev, %i.et           ; 2 uses
  %i.ex = lshr i128 %i.ew, 64
  %i.ey = and i128 %i.dq, 18446744073709551615
  %i.ez = add nuw nsw i128 %i.ex, %i.dv
  %i.fa = add nuw nsw i128 %i.ez, %i.ey           ; 2 uses
  %i.fb = lshr i128 %i.fa, 64
  %i.fc = trunc nuw nsw i128 %i.fb to i64
  %i.fd = add nuw nsw i64 %i.fc, %i.ds
  %i.fe = zext i64 %i.d to i128                   ; 4 uses
  %i.ff = mul nuw i128 %i.k, %i.fe                ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = trunc nuw i128 %i.fg to i64
  %i.fi = mul nuw i128 %i.q, %i.fe                ; 2 uses
  %i.fj = lshr i128 %i.fi, 64
  %i.fk = mul nuw i128 %i.v, %i.fe                ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = mul nuw i128 %i.z, %i.fe                ; 2 uses
  %i.fn = lshr i128 %i.fm, 64
  %i.fo = and i128 %i.fk, 18446744073709551615
  %i.fp = add nuw nsw i128 %i.fn, %i.fo           ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = and i128 %i.fi, 18446744073709551615
  %i.fs = add nuw nsw i128 %i.fl, %i.fr
  %i.ft = add nuw nsw i128 %i.fs, %i.fq           ; 2 uses
  %i.fu = lshr i128 %i.ft, 64
  %i.fv = and i128 %i.ff, 18446744073709551615
  %i.fw = add nuw nsw i128 %i.fj, %i.fv
  %i.fx = add nuw nsw i128 %i.fw, %i.fu           ; 2 uses
  %i.fy = lshr i128 %i.fx, 64
  %i.fz = trunc nuw nsw i128 %i.fy to i64
  %i.ga = add nuw i64 %i.fz, %i.fh
  %i.gb = and i128 %i.em, 18446744073709551615
  %i.gc = and i128 %i.fm, 18446744073709551615
  %i.gd = add nuw nsw i128 %i.gb, %i.gc           ; 2 uses
  %i.ge = lshr i128 %i.gd, 64
  %i.gf = and i128 %i.er, 18446744073709551615
  %i.gg = and i128 %i.fp, 18446744073709551615
  %i.gh = add nuw nsw i128 %i.ge, %i.gg
  %i.gi = add nuw nsw i128 %i.gh, %i.gf           ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = and i128 %i.ew, 18446744073709551615
  %i.gl = and i128 %i.ft, 18446744073709551615
  %i.gm = add nuw nsw i128 %i.gj, %i.gl
  %i.gn = add nuw nsw i128 %i.gm, %i.gk           ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = and i128 %i.fa, 18446744073709551615
  %i.gq = and i128 %i.fx, 18446744073709551615
  %i.gr = add nuw nsw i128 %i.go, %i.gq
  %i.gs = add nuw nsw i128 %i.gr, %i.gp           ; 2 uses
  %i.gt = lshr i128 %i.gs, 64
  %i.gu = zext nneg i64 %i.fd to i128
  %i.gv = zext i64 %i.ga to i128
  %i.gw = add nuw nsw i128 %i.gu, %i.gv
  %i.gx = add nuw nsw i128 %i.gw, %i.gt           ; 2 uses
  %i.gy = lshr i128 %i.gx, 64
  %i.gz = trunc nuw nsw i128 %i.gy to i64
  %i.ha = and i128 %i.gd, 18446744073709551615    ; 4 uses
  %i.hb = mul nuw i128 %i.ha, 18446744069414584321 ; 2 uses
  %i.hc = lshr i128 %i.hb, 64
  %i.hd = mul nuw nsw i128 %i.ha, 4294967295      ; 2 uses
  %i.he = lshr i128 %i.hd, 64
  %i.hf = trunc nuw nsw i128 %i.he to i64
  %i.hg = mul nuw i128 %i.ha, 18446744073709551615 ; 2 uses
  %i.hh = lshr i128 %i.hg, 64
  %i.hi = and i128 %i.hd, 18446744073709551615
  %i.hj = add nuw nsw i128 %i.hh, %i.hi           ; 2 uses
  %i.hk = lshr i128 %i.hj, 64
  %i.hl = trunc nuw nsw i128 %i.hk to i64
  %i.hm = add nuw nsw i64 %i.hl, %i.hf
  %i.hn = and i128 %i.hg, 18446744073709551615
  %i.ho = add nuw nsw i128 %i.hn, %i.ha
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = and i128 %i.gi, 18446744073709551615
  %i.hr = add nuw nsw i128 %i.hq, %i.hp
  %i.hs = and i128 %i.hj, 18446744073709551615
  %i.ht = add nuw nsw i128 %i.hr, %i.hs           ; 2 uses
  %i.hu = lshr i128 %i.ht, 64
  %i.hv = and i128 %i.gn, 18446744073709551615
  %i.hw = add nuw nsw i128 %i.hv, %i.hu
  %i.hx = zext nneg i64 %i.hm to i128
  %i.hy = add nuw nsw i128 %i.hw, %i.hx           ; 2 uses
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = and i128 %i.gs, 18446744073709551615
  %i.ib = and i128 %i.hb, 18446744073709551615
  %i.ic = add nuw nsw i128 %i.hz, %i.ib
  %i.id = add nuw nsw i128 %i.ic, %i.ia           ; 2 uses
  %i.ie = lshr i128 %i.id, 64
  %i.if = and i128 %i.gx, 18446744073709551615
  %i.ig = add nuw nsw i128 %i.ie, %i.hc
  %i.ih = add nuw nsw i128 %i.ig, %i.if           ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = trunc nuw nsw i128 %i.ii to i64
  %i.ik = add nuw nsw i64 %i.ij, %i.gz
  %i.il = zext i64 %i.f to i128                   ; 4 uses
  %i.im = mul nuw i128 %i.k, %i.il                ; 2 uses
  %i.in = lshr i128 %i.im, 64
  %i.io = trunc nuw i128 %i.in to i64
  %i.ip = mul nuw i128 %i.q, %i.il                ; 2 uses
  %i.iq = lshr i128 %i.ip, 64
  %i.ir = mul nuw i128 %i.v, %i.il                ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = mul nuw i128 %i.z, %i.il                ; 2 uses
  %i.iu = lshr i128 %i.it, 64
  %i.iv = and i128 %i.ir, 18446744073709551615
  %i.iw = add nuw nsw i128 %i.iu, %i.iv           ; 2 uses
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = and i128 %i.ip, 18446744073709551615
  %i.iz = add nuw nsw i128 %i.is, %i.iy
  %i.ja = add nuw nsw i128 %i.iz, %i.ix           ; 2 uses
  %i.jb = lshr i128 %i.ja, 64
  %i.jc = and i128 %i.im, 18446744073709551615
  %i.jd = add nuw nsw i128 %i.iq, %i.jc
  %i.je = add nuw nsw i128 %i.jd, %i.jb           ; 2 uses
  %i.jf = lshr i128 %i.je, 64
  %i.jg = trunc nuw nsw i128 %i.jf to i64
  %i.jh = add nuw i64 %i.jg, %i.io
  %i.ji = and i128 %i.ht, 18446744073709551615
  %i.jj = and i128 %i.it, 18446744073709551615
  %i.jk = add nuw nsw i128 %i.ji, %i.jj           ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = and i128 %i.hy, 18446744073709551615
  %i.jn = and i128 %i.iw, 18446744073709551615
  %i.jo = add nuw nsw i128 %i.jl, %i.jn
  %i.jp = add nuw nsw i128 %i.jo, %i.jm           ; 2 uses
  %i.jq = lshr i128 %i.jp, 64
  %i.jr = and i128 %i.id, 18446744073709551615
  %i.js = and i128 %i.ja, 18446744073709551615
  %i.jt = add nuw nsw i128 %i.jq, %i.js
  %i.ju = add nuw nsw i128 %i.jt, %i.jr           ; 2 uses
  %i.jv = lshr i128 %i.ju, 64
  %i.jw = and i128 %i.ih, 18446744073709551615
  %i.jx = and i128 %i.je, 18446744073709551615
  %i.jy = add nuw nsw i128 %i.jv, %i.jx
  %i.jz = add nuw nsw i128 %i.jy, %i.jw           ; 2 uses
  %i.ka = lshr i128 %i.jz, 64
  %i.kb = zext nneg i64 %i.ik to i128
  %i.kc = zext i64 %i.jh to i128
  %i.kd = add nuw nsw i128 %i.kb, %i.kc
  %i.ke = add nuw nsw i128 %i.kd, %i.ka           ; 2 uses
  %i.kf = lshr i128 %i.ke, 64
  %i.kg = trunc nuw nsw i128 %i.kf to i64
  %i.kh = and i128 %i.jk, 18446744073709551615    ; 4 uses
  %i.ki = mul nuw i128 %i.kh, 18446744069414584321 ; 2 uses
  %i.kj = lshr i128 %i.ki, 64
  %i.kk = mul nuw nsw i128 %i.kh, 4294967295      ; 2 uses
  %i.kl = lshr i128 %i.kk, 64
  %i.km = trunc nuw nsw i128 %i.kl to i64
  %i.kn = mul nuw i128 %i.kh, 18446744073709551615 ; 2 uses
  %i.ko = lshr i128 %i.kn, 64
  %i.kp = and i128 %i.kk, 18446744073709551615
  %i.kq = add nuw nsw i128 %i.ko, %i.kp           ; 2 uses
  %i.kr = lshr i128 %i.kq, 64
  %i.ks = trunc nuw nsw i128 %i.kr to i64
  %i.kt = add nuw nsw i64 %i.ks, %i.km
  %i.ku = and i128 %i.kn, 18446744073709551615
  %i.kv = add nuw nsw i128 %i.ku, %i.kh
  %i.kw = lshr i128 %i.kv, 64
  %i.kx = and i128 %i.jp, 18446744073709551615
  %i.ky = add nuw nsw i128 %i.kx, %i.kw
  %i.kz = and i128 %i.kq, 18446744073709551615
  %i.la = add nuw nsw i128 %i.ky, %i.kz           ; 3 uses
  %i.lb = trunc i128 %i.la to i64
  %i.lc = lshr i128 %i.la, 64
  %i.ld = and i128 %i.ju, 18446744073709551615
  %i.le = add nuw nsw i128 %i.ld, %i.lc
  %i.lf = zext nneg i64 %i.kt to i128
  %i.lg = add nuw nsw i128 %i.le, %i.lf           ; 3 uses
  %i.lh = trunc i128 %i.lg to i64
  %i.li = lshr i128 %i.lg, 64
  %i.lj = and i128 %i.jz, 18446744073709551615
  %i.lk = and i128 %i.ki, 18446744073709551615
  %i.ll = add nuw nsw i128 %i.li, %i.lk
  %i.lm = add nuw nsw i128 %i.ll, %i.lj           ; 3 uses
  %i.ln = trunc i128 %i.lm to i64
  %i.lo = lshr i128 %i.lm, 64
  %i.lp = and i128 %i.ke, 18446744073709551615
  %i.lq = add nuw nsw i128 %i.lo, %i.kj
  %i.lr = add nuw nsw i128 %i.lq, %i.lp           ; 3 uses
  %i.ls = trunc i128 %i.lr to i64
  %i.lt = lshr i128 %i.lr, 64
  %i.lu = trunc nuw nsw i128 %i.lt to i64
  %i.lv = add nuw nsw i64 %i.lu, %i.kg
  %i.lw = and i128 %i.la, 18446744073709551615
  %i.lx = add nsw i128 %i.lw, -18446744073709551615 ; 2 uses
  %3 = trunc i128 %i.lx to i64
  %4 = lshr i128 %i.lx, 64
  %i.ly = and i128 %i.lg, 18446744073709551615
  %i.lz = sub nsw i128 0, %4
  %i.ma = and i128 %i.lz, 255
  %reass.sub = sub nsw i128 %i.ly, %i.ma
  %i.mb = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %5 = trunc i128 %i.mb to i64
  %6 = lshr i128 %i.mb, 64
  %i.mc = and i128 %i.lm, 18446744073709551615
  %i.md = sub nsw i128 0, %6
  %i.me = and i128 %i.md, 255
  %i.mf = sub nsw i128 %i.mc, %i.me               ; 2 uses
  %7 = trunc i128 %i.mf to i64
  %8 = lshr i128 %i.mf, 64
  %i.mg = and i128 %i.lr, 18446744073709551615
  %i.mh = sub nsw i128 0, %8
  %i.mi = and i128 %i.mh, 255
  %.neg237 = add nsw i128 %i.mg, -18446744069414584321
  %i.mj = sub nsw i128 %.neg237, %i.mi            ; 2 uses
  %9 = trunc i128 %i.mj to i64
  %10 = lshr i128 %i.mj, 64
  %i.mk = zext nneg i64 %i.lv to i128
  %i.ml = sub nsw i128 0, %10
  %i.mm = and i128 %i.ml, 255
  %i.mn = sub nsw i128 %i.mk, %i.mm
  %i.mo = lshr i128 %i.mn, 64
  %i.mp = trunc i128 %i.mo to i8
  %i.mq = icmp ne i8 %i.mp, 0
  %i.mr = sext i1 %i.mq to i64                    ; 2 uses
  %i.ms = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mr) #47, !srcloc !599 ; 4 uses
  %i.mt = and i64 %i.ms, %i.lb
  %i.mu = xor i64 %i.mr, -1
  %i.mv = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.mu) #47, !srcloc !599 ; 4 uses
  %i.mw = and i64 %i.mv, %3
  %i.mx = or i64 %i.mw, %i.mt
  %i.my = and i64 %i.ms, %i.lh
  %i.mz = and i64 %i.mv, %5
  %i.na = or i64 %i.mz, %i.my
  %i.nb = and i64 %i.ms, %i.ln
  %i.nc = and i64 %i.mv, %7
  %i.nd = or i64 %i.nc, %i.nb
  %i.ne = and i64 %i.ms, %i.ls
  %i.nf = and i64 %i.mv, %9
  %i.ng = or i64 %i.nf, %i.ne
  store i64 %i.mx, ptr %0, align 8, !tbaa !80
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.na, ptr %i.nh, align 8, !tbaa !80
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.nd, ptr %i.ni, align 8, !tbaa !80
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ng, ptr %i.nj, align 8, !tbaa !80
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
  %i.dg = trunc nuw nsw i128 %i.df to i64
  %i.dh = and i128 %i.cl, 18446744073709551615    ; 4 uses
  %i.di = mul nuw i128 %i.dh, 18446744069414584321 ; 2 uses
  %i.dj = lshr i128 %i.di, 64
  %i.dk = mul nuw nsw i128 %i.dh, 4294967295      ; 2 uses
  %i.dl = lshr i128 %i.dk, 64
  %i.dm = trunc nuw nsw i128 %i.dl to i64
  %i.dn = mul nuw i128 %i.dh, 18446744073709551615 ; 2 uses
  %i.do = lshr i128 %i.dn, 64
  %i.dp = and i128 %i.dk, 18446744073709551615
  %i.dq = add nuw nsw i128 %i.do, %i.dp           ; 2 uses
  %i.dr = lshr i128 %i.dq, 64
  %i.ds = trunc nuw nsw i128 %i.dr to i64
  %i.dt = add nuw nsw i64 %i.ds, %i.dm
  %i.du = and i128 %i.dn, 18446744073709551615
  %i.dv = add nuw nsw i128 %i.du, %i.dh
  %i.dw = lshr i128 %i.dv, 64
  %i.dx = and i128 %i.cq, 18446744073709551615
  %i.dy = add nuw nsw i128 %i.dx, %i.dw
  %i.dz = and i128 %i.dq, 18446744073709551615
  %i.ea = add nuw nsw i128 %i.dy, %i.dz           ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = and i128 %i.cv, 18446744073709551615
  %i.ed = add nuw nsw i128 %i.ec, %i.eb
  %i.ee = zext nneg i64 %i.dt to i128
  %i.ef = add nuw nsw i128 %i.ed, %i.ee           ; 2 uses
  %i.eg = lshr i128 %i.ef, 64
  %i.eh = and i128 %i.da, 18446744073709551615
  %i.ei = and i128 %i.di, 18446744073709551615
  %i.ej = add nuw nsw i128 %i.eg, %i.ei
  %i.ek = add nuw nsw i128 %i.ej, %i.eh           ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = and i128 %i.de, 18446744073709551615
  %i.en = add nuw nsw i128 %i.el, %i.dj
  %i.eo = add nuw nsw i128 %i.en, %i.em           ; 2 uses
  %i.ep = lshr i128 %i.eo, 64
  %i.eq = trunc nuw nsw i128 %i.ep to i64
  %i.er = add nuw nsw i64 %i.eq, %i.dg
  %i.es = mul nuw i128 %i.i, %i.m                 ; 2 uses
  %i.et = lshr i128 %i.es, 64                     ; 2 uses
  %i.eu = trunc nuw i128 %i.et to i64
  %i.ev = mul nuw i128 %i.m, %i.m                 ; 2 uses
  %i.ew = lshr i128 %i.ev, 64
  %i.ex = add nuw nsw i128 %i.o, %i.ca            ; 2 uses
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = and i128 %i.ev, 18446744073709551615
  %i.fa = add nuw nsw i128 %i.ez, %i.bu
  %i.fb = add nuw nsw i128 %i.fa, %i.ey           ; 2 uses
  %i.fc = lshr i128 %i.fb, 64
  %i.fd = and i128 %i.es, 18446744073709551615    ; 2 uses
  %i.fe = add nuw nsw i128 %i.fd, %i.ew
  %i.ff = add nuw nsw i128 %i.fe, %i.fc           ; 2 uses
  %i.fg = lshr i128 %i.ff, 64
  %i.fh = trunc nuw nsw i128 %i.fg to i64
  %i.fi = add nuw i64 %i.fh, %i.eu
  %i.fj = and i128 %i.ea, 18446744073709551615
  %i.fk = add nuw nsw i128 %i.fj, %i.x            ; 2 uses
  %i.fl = lshr i128 %i.fk, 64
  %i.fm = and i128 %i.ef, 18446744073709551615
  %i.fn = and i128 %i.ex, 18446744073709551615
  %i.fo = add nuw nsw i128 %i.fl, %i.fn
  %i.fp = add nuw nsw i128 %i.fo, %i.fm           ; 2 uses
  %i.fq = lshr i128 %i.fp, 64
  %i.fr = and i128 %i.ek, 18446744073709551615
  %i.fs = and i128 %i.fb, 18446744073709551615
  %i.ft = add nuw nsw i128 %i.fq, %i.fs
  %i.fu = add nuw nsw i128 %i.ft, %i.fr           ; 2 uses
  %i.fv = lshr i128 %i.fu, 64
  %i.fw = and i128 %i.eo, 18446744073709551615
  %i.fx = and i128 %i.ff, 18446744073709551615
  %i.fy = add nuw nsw i128 %i.fv, %i.fx
  %i.fz = add nuw nsw i128 %i.fy, %i.fw           ; 2 uses
  %i.ga = lshr i128 %i.fz, 64
  %i.gb = zext nneg i64 %i.er to i128
  %i.gc = zext i64 %i.fi to i128
  %i.gd = add nuw nsw i128 %i.gb, %i.gc
  %i.ge = add nuw nsw i128 %i.gd, %i.ga           ; 2 uses
  %i.gf = lshr i128 %i.ge, 64
  %i.gg = trunc nuw nsw i128 %i.gf to i64
  %i.gh = and i128 %i.fk, 18446744073709551615    ; 4 uses
  %i.gi = mul nuw i128 %i.gh, 18446744069414584321 ; 2 uses
  %i.gj = lshr i128 %i.gi, 64
  %i.gk = mul nuw nsw i128 %i.gh, 4294967295      ; 2 uses
  %i.gl = lshr i128 %i.gk, 64
  %i.gm = trunc nuw nsw i128 %i.gl to i64
  %i.gn = mul nuw i128 %i.gh, 18446744073709551615 ; 2 uses
  %i.go = lshr i128 %i.gn, 64
  %i.gp = and i128 %i.gk, 18446744073709551615
  %i.gq = add nuw nsw i128 %i.go, %i.gp           ; 2 uses
  %i.gr = lshr i128 %i.gq, 64
  %i.gs = trunc nuw nsw i128 %i.gr to i64
  %i.gt = add nuw nsw i64 %i.gs, %i.gm
  %i.gu = and i128 %i.gn, 18446744073709551615
  %i.gv = add nuw nsw i128 %i.gu, %i.gh
  %i.gw = lshr i128 %i.gv, 64
  %i.gx = and i128 %i.fp, 18446744073709551615
  %i.gy = add nuw nsw i128 %i.gx, %i.gw
  %i.gz = and i128 %i.gq, 18446744073709551615
  %i.ha = add nuw nsw i128 %i.gy, %i.gz           ; 2 uses
  %i.hb = lshr i128 %i.ha, 64
  %i.hc = and i128 %i.fu, 18446744073709551615
  %i.hd = add nuw nsw i128 %i.hc, %i.hb
  %i.he = zext nneg i64 %i.gt to i128
  %i.hf = add nuw nsw i128 %i.hd, %i.he           ; 2 uses
  %i.hg = lshr i128 %i.hf, 64
  %i.hh = and i128 %i.fz, 18446744073709551615
  %i.hi = and i128 %i.gi, 18446744073709551615
  %i.hj = add nuw nsw i128 %i.hg, %i.hi
  %i.hk = add nuw nsw i128 %i.hj, %i.hh           ; 2 uses
  %i.hl = lshr i128 %i.hk, 64
  %i.hm = and i128 %i.ge, 18446744073709551615
  %i.hn = add nuw nsw i128 %i.hl, %i.gj
  %i.ho = add nuw nsw i128 %i.hn, %i.hm           ; 2 uses
  %i.hp = lshr i128 %i.ho, 64
  %i.hq = trunc nuw nsw i128 %i.hp to i64
  %i.hr = add nuw nsw i64 %i.hq, %i.gg
  %i.hs = mul nuw i128 %i.i, %i.i                 ; 2 uses
  %i.ht = lshr i128 %i.hs, 64
  %i.hu = trunc nuw i128 %i.ht to i64
  %i.hv = add nuw nsw i128 %i.k, %i.ce            ; 2 uses
  %i.hw = lshr i128 %i.hv, 64
  %i.hx = add nuw nsw i128 %i.fd, %i.br
  %i.hy = add nuw nsw i128 %i.hx, %i.hw           ; 2 uses
  %i.hz = lshr i128 %i.hy, 64
  %i.ia = and i128 %i.hs, 18446744073709551615
  %i.ib = add nuw nsw i128 %i.ia, %i.et
  %i.ic = add nuw nsw i128 %i.ib, %i.hz           ; 2 uses
  %i.id = lshr i128 %i.ic, 64
  %i.ie = trunc nuw nsw i128 %i.id to i64
  %i.if = add nuw i64 %i.ie, %i.hu
  %i.ig = and i128 %i.ha, 18446744073709551615
  %i.ih = add nuw nsw i128 %i.ig, %i.ab           ; 2 uses
  %i.ii = lshr i128 %i.ih, 64
  %i.ij = and i128 %i.hf, 18446744073709551615
  %i.ik = and i128 %i.hv, 18446744073709551615
  %i.il = add nuw nsw i128 %i.ii, %i.ik
  %i.im = add nuw nsw i128 %i.il, %i.ij           ; 2 uses
  %i.in = lshr i128 %i.im, 64
  %i.io = and i128 %i.hk, 18446744073709551615
  %i.ip = and i128 %i.hy, 18446744073709551615
  %i.iq = add nuw nsw i128 %i.in, %i.ip
  %i.ir = add nuw nsw i128 %i.iq, %i.io           ; 2 uses
  %i.is = lshr i128 %i.ir, 64
  %i.it = and i128 %i.ho, 18446744073709551615
  %i.iu = and i128 %i.ic, 18446744073709551615
  %i.iv = add nuw nsw i128 %i.is, %i.iu
  %i.iw = add nuw nsw i128 %i.iv, %i.it           ; 2 uses
  %i.ix = lshr i128 %i.iw, 64
  %i.iy = zext nneg i64 %i.hr to i128
  %i.iz = zext i64 %i.if to i128
  %i.ja = add nuw nsw i128 %i.iy, %i.iz
  %i.jb = add nuw nsw i128 %i.ja, %i.ix           ; 2 uses
  %i.jc = lshr i128 %i.jb, 64
  %i.jd = trunc nuw nsw i128 %i.jc to i64
  %i.je = and i128 %i.ih, 18446744073709551615    ; 4 uses
  %i.jf = mul nuw i128 %i.je, 18446744069414584321 ; 2 uses
  %i.jg = lshr i128 %i.jf, 64
  %i.jh = mul nuw nsw i128 %i.je, 4294967295      ; 2 uses
  %i.ji = lshr i128 %i.jh, 64
  %i.jj = trunc nuw nsw i128 %i.ji to i64
  %i.jk = mul nuw i128 %i.je, 18446744073709551615 ; 2 uses
  %i.jl = lshr i128 %i.jk, 64
  %i.jm = and i128 %i.jh, 18446744073709551615
  %i.jn = add nuw nsw i128 %i.jl, %i.jm           ; 2 uses
  %i.jo = lshr i128 %i.jn, 64
  %i.jp = trunc nuw nsw i128 %i.jo to i64
  %i.jq = add nuw nsw i64 %i.jp, %i.jj
  %i.jr = and i128 %i.jk, 18446744073709551615
  %i.js = add nuw nsw i128 %i.jr, %i.je
  %i.jt = lshr i128 %i.js, 64
  %i.ju = and i128 %i.im, 18446744073709551615
  %i.jv = add nuw nsw i128 %i.ju, %i.jt
  %i.jw = and i128 %i.jn, 18446744073709551615
  %i.jx = add nuw nsw i128 %i.jv, %i.jw           ; 3 uses
  %i.jy = trunc i128 %i.jx to i64
  %i.jz = lshr i128 %i.jx, 64
  %i.ka = and i128 %i.ir, 18446744073709551615
  %i.kb = add nuw nsw i128 %i.ka, %i.jz
  %i.kc = zext nneg i64 %i.jq to i128
  %i.kd = add nuw nsw i128 %i.kb, %i.kc           ; 3 uses
  %i.ke = trunc i128 %i.kd to i64
  %i.kf = lshr i128 %i.kd, 64
  %i.kg = and i128 %i.iw, 18446744073709551615
  %i.kh = and i128 %i.jf, 18446744073709551615
  %i.ki = add nuw nsw i128 %i.kf, %i.kh
  %i.kj = add nuw nsw i128 %i.ki, %i.kg           ; 3 uses
  %i.kk = trunc i128 %i.kj to i64
  %i.kl = lshr i128 %i.kj, 64
  %i.km = and i128 %i.jb, 18446744073709551615
  %i.kn = add nuw nsw i128 %i.kl, %i.jg
  %i.ko = add nuw nsw i128 %i.kn, %i.km           ; 3 uses
  %i.kp = trunc i128 %i.ko to i64
  %i.kq = lshr i128 %i.ko, 64
  %i.kr = trunc nuw nsw i128 %i.kq to i64
  %i.ks = add nuw nsw i64 %i.kr, %i.jd
  %i.kt = and i128 %i.jx, 18446744073709551615
  %i.ku = add nsw i128 %i.kt, -18446744073709551615 ; 2 uses
  %2 = trunc i128 %i.ku to i64
  %3 = lshr i128 %i.ku, 64
  %i.kv = and i128 %i.kd, 18446744073709551615
  %i.kw = sub nsw i128 0, %3
  %i.kx = and i128 %i.kw, 255
  %reass.sub = sub nsw i128 %i.kv, %i.kx
  %i.ky = add nsw i128 %reass.sub, -4294967295    ; 2 uses
  %4 = trunc i128 %i.ky to i64
  %5 = lshr i128 %i.ky, 64
  %i.kz = and i128 %i.kj, 18446744073709551615
  %i.la = sub nsw i128 0, %5
  %i.lb = and i128 %i.la, 255
  %i.lc = sub nsw i128 %i.kz, %i.lb               ; 2 uses
  %6 = trunc i128 %i.lc to i64
  %7 = lshr i128 %i.lc, 64
  %i.ld = and i128 %i.ko, 18446744073709551615
  %i.le = sub nsw i128 0, %7
  %i.lf = and i128 %i.le, 255
  %.neg237 = add nsw i128 %i.ld, -18446744069414584321
  %i.lg = sub nsw i128 %.neg237, %i.lf            ; 2 uses
  %8 = trunc i128 %i.lg to i64
  %9 = lshr i128 %i.lg, 64
  %i.lh = zext nneg i64 %i.ks to i128
  %i.li = sub nsw i128 0, %9
  %i.lj = and i128 %i.li, 255
  %i.lk = sub nsw i128 %i.lh, %i.lj
  %i.ll = lshr i128 %i.lk, 64
  %i.lm = trunc i128 %i.ll to i8
  %i.ln = icmp ne i8 %i.lm, 0
  %i.lo = sext i1 %i.ln to i64                    ; 2 uses
  %i.lp = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lo) #47, !srcloc !599 ; 4 uses
  %i.lq = and i64 %i.lp, %i.jy
  %i.lr = xor i64 %i.lo, -1
  %i.ls = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.lr) #47, !srcloc !599 ; 4 uses
  %i.lt = and i64 %i.ls, %2
  %i.lu = or i64 %i.lt, %i.lq
  %i.lv = and i64 %i.lp, %i.ke
  %i.lw = and i64 %i.ls, %4
  %i.lx = or i64 %i.lw, %i.lv
  %i.ly = and i64 %i.lp, %i.kk
  %i.lz = and i64 %i.ls, %6
  %i.ma = or i64 %i.lz, %i.ly
  %i.mb = and i64 %i.lp, %i.kp
  %i.mc = and i64 %i.ls, %8
  %i.md = or i64 %i.mc, %i.mb
  store i64 %i.lu, ptr %0, align 8, !tbaa !80
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.lx, ptr %i.me, align 8, !tbaa !80
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ma, ptr %i.mf, align 8, !tbaa !80
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.md, ptr %i.mg, align 8, !tbaa !80
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
  br i1 %i.u, label %middle.block, label %vector.body, !llvm.loop !2664

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.t, %i.s
  %i.v = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.v, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.v, %middle.block ], [ %i.z, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %.lcssa, 0
  %i.w = zext i1 %.not.i to i32
  br label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv.i.i
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %i.z = or i64 %i.y, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !2665

ec_GFp_simple_is_at_infinity.exit:                ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.06.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.w, %._crit_edge.loopexit.i.i ]
  %i.aa = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i.i) #47, !srcloc !120
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.75, i32 noundef 190) #46
  br label %bb.i

bb.c:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #46
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(32) %i.m, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #46
  call void @fiat_p256_square(ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.i)
  call void @fiat_p256_mul(ptr noundef nonnull %i.a, ptr noundef nonnull %i.a, ptr noundef nonnull readonly %i.i)
  call void @fiat_p256_square(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  call void @fiat_p256_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull readonly %i.i)
  call void @fiat_p256_square(ptr noundef nonnull %i.c, ptr noundef nonnull %i.b)
  call void @fiat_p256_square(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
  call void @fiat_p256_square(ptr noundef nonnull %i.c, ptr noundef nonnull %i.c)
end_hunk_2
begin_hunk_3_@ec_GFp_nistp256_cmp_x_coordinate:bb.a

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
  br i1 %exitcond.not.i.i, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i, !llvm.loop !2672

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
  %i.ac = trunc nuw nsw i128 %i.ab to i64
  %i.ad = and i128 %i.x, 18446744073709551615
  %i.ae = add nuw nsw i128 %i.ad, %i.r
  %i.af = lshr i128 %i.ae, 64
  %i.ag = and i128 %i.aa, 18446744073709551615
  %i.ah = add nuw nsw i128 %i.af, %i.ag           ; 2 uses
  %i.ai = lshr i128 %i.ah, 64
  %i.aj = trunc nuw nsw i128 %i.ai to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !80
  %i.am = and i128 %i.ah, 18446744073709551615
  %i.an = zext i64 %i.al to i128
  %i.ao = add nuw nsw i128 %i.am, %i.an           ; 2 uses
  %i.ap = lshr i128 %i.ao, 64
  %i.aq = trunc nuw nsw i128 %i.ap to i64
  %i.ar = and i128 %i.ao, 18446744073709551615    ; 4 uses
  %i.as = mul nuw i128 %i.ar, 18446744069414584321 ; 2 uses
  %i.at = lshr i128 %i.as, 64
  %i.au = trunc nuw i128 %i.at to i64
  %i.av = mul nuw nsw i128 %i.ar, 4294967295      ; 2 uses
  %i.aw = lshr i128 %i.av, 64
  %i.ax = trunc nuw nsw i128 %i.aw to i64
  %i.ay = mul nuw i128 %i.ar, 18446744073709551615 ; 2 uses
  %i.az = lshr i128 %i.ay, 64
  %i.ba = and i128 %i.av, 18446744073709551615
  %i.bb = add nuw nsw i128 %i.az, %i.ba           ; 2 uses
  %i.bc = lshr i128 %i.bb, 64
  %i.bd = trunc nuw nsw i128 %i.bc to i64
  %i.be = and i128 %i.ay, 18446744073709551615
  %i.bf = add nuw nsw i128 %i.be, %i.ar
  %i.bg = lshr i128 %i.bf, 64
  %i.bh = add nuw nsw i64 %i.ac, %i.w
  %i.bi = add nuw nsw i64 %i.bh, %i.aj
  %i.bj = add nuw nsw i64 %i.bi, %i.aq
  %i.bk = zext nneg i64 %i.bj to i128
  %i.bl = add nuw nsw i128 %i.bg, %i.bk
  %i.bm = and i128 %i.bb, 18446744073709551615
  %i.bn = add nuw nsw i128 %i.bl, %i.bm           ; 2 uses
  %i.bo = lshr i128 %i.bn, 64
  %i.bp = add nuw nsw i64 %i.bd, %i.ax
  %i.bq = and i128 %i.s, 18446744073709551615
  %i.br = add nuw nsw i128 %i.bo, %i.bq
  %i.bs = zext nneg i64 %i.bp to i128
  %i.bt = add nuw nsw i128 %i.br, %i.bs           ; 2 uses
  %i.bu = lshr i128 %i.bt, 64
  %i.bv = and i128 %i.as, 18446744073709551615
  %i.bw = add nuw nsw i128 %i.bv, %i.t
  %i.bx = add nuw nsw i128 %i.bw, %i.bu           ; 2 uses
  %i.by = lshr i128 %i.bx, 64
  %i.bz = trunc nuw nsw i128 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.cb = load i64, ptr %i.ca, align 16, !tbaa !80
  %i.cc = and i128 %i.bn, 18446744073709551615
  %i.cd = zext i64 %i.cb to i128
  %i.ce = add nuw nsw i128 %i.cc, %i.cd           ; 2 uses
  %i.cf = lshr i128 %i.ce, 64
  %i.cg = and i128 %i.bt, 18446744073709551615
  %i.ch = add nuw nsw i128 %i.cg, %i.cf           ; 2 uses
  %i.ci = lshr i128 %i.ch, 64
  %i.cj = and i128 %i.bx, 18446744073709551615
  %i.ck = add nuw nsw i128 %i.cj, %i.ci           ; 2 uses
  %i.cl = lshr i128 %i.ck, 64
  %i.cm = trunc nuw nsw i128 %i.cl to i64
  %i.cn = and i128 %i.ce, 18446744073709551615    ; 4 uses
  %i.co = mul nuw i128 %i.cn, 18446744069414584321 ; 2 uses
  %i.cp = lshr i128 %i.co, 64
  %i.cq = trunc nuw i128 %i.cp to i64
  %i.cr = mul nuw nsw i128 %i.cn, 4294967295      ; 2 uses
  %i.cs = lshr i128 %i.cr, 64
  %i.ct = trunc nuw nsw i128 %i.cs to i64
  %i.cu = mul nuw i128 %i.cn, 18446744073709551615 ; 2 uses
  %i.cv = lshr i128 %i.cu, 64
  %i.cw = and i128 %i.cr, 18446744073709551615
  %i.cx = add nuw nsw i128 %i.cv, %i.cw           ; 2 uses
  %i.cy = lshr i128 %i.cx, 64
  %i.cz = trunc nuw nsw i128 %i.cy to i64
  %i.da = and i128 %i.cu, 18446744073709551615
  %i.db = add nuw nsw i128 %i.da, %i.cn
  %i.dc = lshr i128 %i.db, 64
  %i.dd = and i128 %i.ch, 18446744073709551615
  %i.de = add nuw nsw i128 %i.dc, %i.dd
  %i.df = and i128 %i.cx, 18446744073709551615
  %i.dg = add nuw nsw i128 %i.de, %i.df           ; 2 uses
  %i.dh = lshr i128 %i.dg, 64
  %i.di = add nuw nsw i64 %i.cz, %i.ct
  %i.dj = and i128 %i.ck, 18446744073709551615
  %i.dk = add nuw nsw i128 %i.dh, %i.dj
  %i.dl = zext nneg i64 %i.di to i128
  %i.dm = add nuw nsw i128 %i.dk, %i.dl           ; 2 uses
  %i.dn = lshr i128 %i.dm, 64
  %i.do = add nuw i64 %i.bz, %i.au
  %i.dp = add nuw i64 %i.do, %i.cm
  %i.dq = zext i64 %i.dp to i128
  %i.dr = and i128 %i.co, 18446744073709551615
  %i.ds = add nuw nsw i128 %i.dr, %i.dq
  %i.dt = add nuw nsw i128 %i.ds, %i.dn           ; 2 uses
  %i.du = lshr i128 %i.dt, 64
  %i.dv = trunc nuw nsw i128 %i.du to i64
  %i.dw = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !80
  %i.dy = and i128 %i.dg, 18446744073709551615
  %i.dz = zext i64 %i.dx to i128
  %i.ea = add nuw nsw i128 %i.dy, %i.dz           ; 2 uses
  %i.eb = lshr i128 %i.ea, 64
  %i.ec = and i128 %i.dm, 18446744073709551615
  %i.ed = add nuw nsw i128 %i.ec, %i.eb           ; 2 uses
  %i.ee = lshr i128 %i.ed, 64
  %i.ef = and i128 %i.dt, 18446744073709551615
  %i.eg = add nuw nsw i128 %i.ef, %i.ee           ; 2 uses
  %i.eh = lshr i128 %i.eg, 64
  %i.ei = trunc nuw nsw i128 %i.eh to i64
  %i.ej = and i128 %i.ea, 18446744073709551615    ; 4 uses
  %i.ek = mul nuw i128 %i.ej, 18446744069414584321 ; 2 uses
  %i.el = lshr i128 %i.ek, 64
  %i.em = trunc nuw i128 %i.el to i64
  %i.en = mul nuw nsw i128 %i.ej, 4294967295      ; 2 uses
  %i.eo = lshr i128 %i.en, 64
  %i.ep = trunc nuw nsw i128 %i.eo to i64
  %i.eq = mul nuw i128 %i.ej, 18446744073709551615 ; 2 uses
  %i.er = lshr i128 %i.eq, 64
  %i.es = and i128 %i.en, 18446744073709551615
  %i.et = add nuw nsw i128 %i.er, %i.es           ; 2 uses
  %i.eu = lshr i128 %i.et, 64
  %i.ev = trunc nuw nsw i128 %i.eu to i64
  %i.ew = and i128 %i.eq, 18446744073709551615
  %i.ex = add nuw nsw i128 %i.ew, %i.ej
  %i.ey = lshr i128 %i.ex, 64
  %i.ez = and i128 %i.ed, 18446744073709551615
  %i.fa = add nuw nsw i128 %i.ey, %i.ez
  %i.fb = and i128 %i.et, 18446744073709551615
  %i.fc = add nuw nsw i128 %i.fa, %i.fb           ; 3 uses
  %i.fd = trunc i128 %i.fc to i64
  %i.fe = lshr i128 %i.fc, 64
  %i.ff = add nuw nsw i64 %i.ev, %i.ep
  %i.fg = and i128 %i.eg, 18446744073709551615
  %i.fh = add nuw nsw i128 %i.fe, %i.fg
  %i.fi = zext nneg i64 %i.ff to i128
  %i.fj = add nuw nsw i128 %i.fh, %i.fi           ; 3 uses
  %i.fk = trunc i128 %i.fj to i64
  %i.fl = lshr i128 %i.fj, 64
  %i.fm = add nuw i64 %i.dv, %i.cq
  %i.fn = add nuw i64 %i.fm, %i.ei
  %i.fo = zext i64 %i.fn to i128
  %i.fp = and i128 %i.ek, 18446744073709551615
  %i.fq = add nuw nsw i128 %i.fp, %i.fo
  %i.fr = add nuw nsw i128 %i.fq, %i.fl           ; 3 uses
  %i.fs = trunc i128 %i.fr to i64
  %i.ft = lshr i128 %i.fr, 64
  %i.fu = trunc nuw nsw i128 %i.ft to i64
  %i.fv = add nuw i64 %i.fu, %i.em                ; 2 uses
  %i.fw = and i128 %i.fc, 18446744073709551615
  %i.fx = add nsw i128 %i.fw, -18446744073709551615 ; 2 uses
  %4 = trunc i128 %i.fx to i64
  %5 = lshr i128 %i.fx, 64
  %i.fy = and i128 %i.fj, 18446744073709551615
  %i.fz = sub nsw i128 0, %5
  %i.ga = and i128 %i.fz, 255
  %reass.sub.i = sub nsw i128 %i.fy, %i.ga
  %i.gb = add nsw i128 %reass.sub.i, -4294967295  ; 2 uses
  %6 = trunc i128 %i.gb to i64
  %7 = lshr i128 %i.gb, 64
  %i.gc = and i128 %i.fr, 18446744073709551615
  %i.gd = sub nsw i128 0, %7
  %i.ge = and i128 %i.gd, 255
  %i.gf = sub nsw i128 %i.gc, %i.ge               ; 2 uses
  %8 = trunc i128 %i.gf to i64
  %9 = lshr i128 %i.gf, 64
  %i.gg = zext i64 %i.fv to i128
  %i.gh = sub nsw i128 0, %9
  %i.gi = and i128 %i.gh, 255
  %.neg112.i = add nsw i128 %i.gg, -18446744069414584321
  %i.gj = sub nsw i128 %.neg112.i, %i.gi          ; 2 uses
  %10 = trunc i128 %i.gj to i64
  %11 = lshr i128 %i.gj, 64
  %i.gk = sub nsw i128 0, %11
  %i.gl = and i128 %i.gk, 255
  %i.gm = sub nsw i128 0, %i.gl
  %i.gn = lshr i128 %i.gm, 64
  %i.go = trunc i128 %i.gn to i8
  %i.gp = icmp ne i8 %i.go, 0
  %i.gq = sext i1 %i.gp to i64                    ; 2 uses
  %i.gr = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gq) #47, !srcloc !599 ; 4 uses
  %i.gs = and i64 %i.gr, %i.fd
  %i.gt = xor i64 %i.gq, -1
  %i.gu = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.gt) #47, !srcloc !599 ; 4 uses
  %i.gv = and i64 %i.gu, %4
  %i.gw = or i64 %i.gv, %i.gs
  %i.gx = and i64 %i.gr, %i.fk
  %i.gy = and i64 %i.gu, %6
  %i.gz = or i64 %i.gy, %i.gx
  %i.ha = and i64 %i.gr, %i.fs
  %i.hb = and i64 %i.gu, %8
  %i.hc = or i64 %i.hb, %i.ha
  %i.hd = and i64 %i.fv, %i.gr
  %i.he = and i64 %i.gu, %10
  %i.hf = or i64 %i.he, %i.hd
  store i64 %i.gw, ptr %i.c, align 16, !tbaa !80
  store i64 %i.gz, ptr %i.ak, align 8, !tbaa !80
  store i64 %i.hc, ptr %i.ca, align 16, !tbaa !80
  store i64 %i.hf, ptr %i.dw, align 8, !tbaa !80
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %bb.b
  %.018.i = phi i64 [ %i.hu, %.lr.ph.i ], [ 0, %bb.b ]
  %.01517.i = phi i64 [ %i.hg, %.lr.ph.i ], [ 32, %bb.b ]
  %i.hg = add nsw i64 %.01517.i, -1               ; 4 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.hg
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !76  ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.hg
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !76  ; 2 uses
  %i.hl = zext i8 %i.hi to i64
  %i.hm = zext i8 %i.hk to i64
  %i.hn = icmp eq i8 %i.hi, %i.hk
  %.neg.i.i.i = sext i1 %i.hn to i64              ; 2 uses
  %i.ho = xor i64 %.neg.i.i.i, -1
  %i.hp = sub nsw i64 %i.hl, %i.hm
  %i.hq = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ho) #47, !srcloc !81
  %i.hr = and i64 %i.hp, %i.hq
  %i.hs = tail call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i) #47, !srcloc !81
  %i.ht = and i64 %i.hs, %.018.i
  %i.hu = or i64 %i.ht, %i.hr                     ; 2 uses
  %.not.i12 = icmp eq i64 %i.hg, 0
  br i1 %.not.i12, label %OPENSSL_memcmp.exit, label %.lr.ph.i, !llvm.loop !20

OPENSSL_memcmp.exit:                              ; preds = %.lr.ph.i
  %i.hv = and i64 %i.hu, 4294967295
  %i.hw = icmp eq i64 %i.hv, 0
  br i1 %i.hw, label %bb.f, label %bn_add_words.exit

bn_add_words.exit:                                ; preds = %OPENSSL_memcmp.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !297
  %i.hz = call { i64, i64, i64 } asm sideeffect "\09subq\09$0,$0\09\09\0A\09jmp\091f\09\09\0A.p2align 4\09\09\09\0A1:\09movq\09($4,$2,8),$0\09\0A\09adcq\09($5,$2,8),$0\09\0A\09movq\09$0,($3,$2,8)\09\0A\09lea\091($2),$2\09\0A\09dec\09$1\09\09\0A\09jnz\091b\09\09\0A\09sbbq\09$0,$0\09\09\0A", "=&r,=&{cx},=&r,r,r,r,1,2,~{cc},~{memory},~{dirflag},~{fpsr},~{flags}"(ptr nonnull %3, ptr nonnull %2, ptr %i.hy, i64 %wide.trip.count.i.i, i64 0) #46, !srcloc !96
  %i.ia = extractvalue { i64, i64, i64 } %i.hz, 0
  %i.ib = and i64 %i.ia, 1
  %i.ic = icmp eq i64 %i.ib, 0
  br i1 %i.ic, label %bn_add_words.exit.thread, label %bb.d

bn_add_words.exit.thread:                         ; preds = %bn_add_words.exit
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !316
  %i.if = load i32, ptr %i.e, align 8, !tbaa !277
  %i.ig = sext i32 %i.if to i64                   ; 2 uses
  %i.ih = call fastcc i32 @bn_cmp_words_consttime(ptr noundef nonnull readonly %3, i64 noundef %i.ig, ptr noundef readonly %i.ie, i64 noundef %i.ig)
  %.not11 = icmp sgt i32 %i.ih, -1
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bn_add_words.exit.thread
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @fiat_p256_mul(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a)
  br label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %.lr.ph.i13, %bb.c
  %.018.i14 = phi i64 [ %i.iw, %.lr.ph.i13 ], [ 0, %bb.c ]
  %.01517.i15 = phi i64 [ %i.ii, %.lr.ph.i13 ], [ 32, %bb.c ]
  %i.ii = add nsw i64 %.01517.i15, -1             ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ii
  %i.ik = load i8, ptr %i.ij, align 1, !tbaa !76  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.ii
  %i.im = load i8, ptr %i.il, align 1, !tbaa !76  ; 2 uses
  %i.in = zext i8 %i.ik to i64
  %i.io = zext i8 %i.im to i64
  %i.ip = icmp eq i8 %i.ik, %i.im
  %.neg.i.i.i16 = sext i1 %i.ip to i64            ; 2 uses
  %i.iq = xor i64 %.neg.i.i.i16, -1
  %i.ir = sub nsw i64 %i.in, %i.io
  %i.is = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.iq) #47, !srcloc !81
  %i.it = and i64 %i.ir, %i.is
  %i.iu = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i16) #47, !srcloc !81
  %i.iv = and i64 %i.iu, %.018.i14
  %i.iw = or i64 %i.iv, %i.it                     ; 2 uses
  %.not.i17 = icmp eq i64 %i.ii, 0
  br i1 %.not.i17, label %OPENSSL_memcmp.exit18, label %.lr.ph.i13, !llvm.loop !20

OPENSSL_memcmp.exit18:                            ; preds = %.lr.ph.i13
  %i.ix = and i64 %i.iw, 4294967295
  %i.iy = icmp eq i64 %i.ix, 0
  br i1 %i.iy, label %bb.e, label %bb.d

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
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !2673

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.j, %i.i
  %i.l = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.l, %middle.block ]
  br label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa = phi i64 [ %i.l, %middle.block ], [ %i.p, %.lr.ph.i.i ]
  %.not.i = icmp eq i64 %.lcssa, 0
  %i.m = zext i1 %.not.i to i32
  br label %ec_GFp_simple_is_at_infinity.exit

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.p, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv.i.i
  %i.o = load i64, ptr %i.n, align 8, !tbaa !80
  %i.p = or i64 %i.o, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !2674

ec_GFp_simple_is_at_infinity.exit:                ; preds = %bb.a, %._crit_edge.loopexit.i.i
  %.06.lcssa.i.i = phi i32 [ 1, %bb.a ], [ %i.m, %._crit_edge.loopexit.i.i ]
  %i.q = tail call i32 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %.06.lcssa.i.i) #47, !srcloc !120
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  tail call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 119, ptr noundef nonnull @.str.76, i32 noundef 456) #46
  br label %bb.h

bb.c:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #46
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #46
  call void @bignum_montinv_p256(ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  %.not14 = icmp eq ptr %2, null
  br i1 %.not14, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %2, ptr noundef nonnull %i.b, ptr noundef nonnull %1) #46
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not15 = icmp eq ptr %3, null
  br i1 %.not15, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @ecp_nistz256_sqr_mont(ptr noundef nonnull %i.b, ptr noundef nonnull %i.b) #46
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %3, ptr noundef nonnull %i.r, ptr noundef nonnull %i.c) #46
  call void @ecp_nistz256_mul_mont(ptr noundef nonnull %3, ptr noundef nonnull %3, ptr noundef nonnull %i.b) #46
  br label %bb.g

end_hunk_3
