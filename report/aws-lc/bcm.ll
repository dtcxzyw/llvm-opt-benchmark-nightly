Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@ec_nistp_scalar_mul_base:bb.a
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -4
  %i.gr = icmp sgt i64 %indvars.iv116, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gr, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1943
}

; Function Attrs: nounwind uwtable
define hidden void @ec_nistp_scalar_mul_public(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(none) %6, ptr nofree noundef readonly captures(none) %7, ptr nofree noundef readonly captures(none) %8) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [432 x i64], align 16             ; 5 uses
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
  %9 = lshr i32 %i.bv, 1
  %i.bw = add nsw i32 %i.bu, -1
  %10 = ashr i32 %i.bw, 1
  %11 = select i1 %.not110, i32 %10, i32 %9       ; 2 uses
  br i1 %.not, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.bm, label %OPENSSL_memcpy.exit135, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bx = zext i32 %11 to i64
  %sext = shl i64 %i.bx, 48
  %i.by = ashr exact i64 %sext, 48
  %i.bz = mul i64 %i.by, %i.h
  %i.ca = getelementptr [8 x i8], ptr %i.a, i64 %i.bz ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.ca, i64 %i.f, i1 false)
  %i.cb = load i64, ptr %0, align 8, !tbaa !342
  %i.cc = getelementptr [8 x i8], ptr %i.ca, i64 %i.cb
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 8 %i.cc, i64 %i.f, i1 false)
  %i.cd = load i64, ptr %0, align 8, !tbaa !342
  %.idx112 = shl i64 %i.cd, 4
  %i.ce = getelementptr i8, ptr %i.ca, i64 %.idx112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 8 %i.ce, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit135

bb.t:                                             ; preds = %bb.q
  %12 = sext i32 %11 to i64
  %i.cf = mul i64 %i.h, %12
  %i.cg = load i64, ptr %0, align 8, !tbaa !342   ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.a, i64 %i.cf ; 3 uses
  %i.ci = getelementptr [8 x i8], ptr %i.ch, i64 %i.cg ; 2 uses
  br i1 %.not110, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cj = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.cj(ptr noundef nonnull %i.d, ptr noundef %i.ci) #46
  %.pre = load i64, ptr %0, align 8, !tbaa !342
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.ck = phi i64 [ %.pre, %bb.u ], [ %i.cg, %bb.t ]
  %.0104 = phi ptr [ %i.d, %bb.u ], [ %i.ci, %bb.t ]
  %i.cl = load ptr, ptr %i.bo, align 8, !tbaa !346
  %.idx = shl i64 %i.ck, 4
  %i.cm = getelementptr i8, ptr %i.ch, i64 %.idx
  call void %i.cl(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %i.ch, ptr noundef %.0104, ptr noundef %i.cm) #46
  br label %OPENSSL_memcpy.exit135

OPENSSL_memcpy.exit135:                           ; preds = %bb.r, %bb.s, %bb.v, %bb.p
  %.1 = phi i16 [ %.0106140, %bb.p ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !76  ; 3 uses
  %.not113 = icmp eq i8 %i.co, 0
  br i1 %.not113, label %OPENSSL_memcpy.exit138, label %bb.w

bb.w:                                             ; preds = %OPENSSL_memcpy.exit135
  %i.cp = sext i8 %i.co to i32                    ; 2 uses
  %.not114 = icmp sgt i8 %i.co, -1                ; 2 uses
  %i.cq = xor i32 %i.cp, -1
  %13 = lshr i32 %i.cq, 1
  %i.cr = add nsw i32 %i.cp, -1
  %14 = ashr i32 %i.cr, 1
  %15 = select i1 %.not114, i32 %14, i32 %13      ; 2 uses
  %.not115 = icmp eq i16 %.1, 0
  br i1 %.not115, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bm, label %OPENSSL_memcpy.exit138, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cs = zext i32 %15 to i64
  %sext117 = shl i64 %i.cs, 48
  %i.ct = ashr exact i64 %sext117, 48
  %i.cu = mul i64 %i.ct, %i.k
  %i.cv = getelementptr [8 x i8], ptr %i.j, i64 %i.cu ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.cv, i64 %i.f, i1 false)
  %i.cw = load i64, ptr %0, align 8, !tbaa !342
  %i.cx = getelementptr [8 x i8], ptr %i.cv, i64 %i.cw
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %i.cx, i64 %i.f, i1 false)
  %i.cy = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %i.cy, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit138

bb.z:                                             ; preds = %bb.w
  %16 = sext i32 %15 to i64
  %i.cz = mul i64 %i.k, %16
  %i.da = load i64, ptr %0, align 8, !tbaa !342
  %i.db = getelementptr [8 x i8], ptr %i.j, i64 %i.cz ; 2 uses
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.da ; 2 uses
  br i1 %.not114, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dd = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.dd(ptr noundef nonnull %i.d, ptr noundef %i.dc) #46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi ptr [ %i.d, %bb.aa ], [ %i.dc, %bb.z ]
  %i.de = load ptr, ptr %i.bo, align 8, !tbaa !346
  %i.df = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void %i.de(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %i.db, ptr noundef %.0, ptr noundef %i.df) #46
  br label %OPENSSL_memcpy.exit138

OPENSSL_memcpy.exit138:                           ; preds = %bb.x, %bb.y, %OPENSSL_memcpy.exit135, %bb.ab
  %.2 = phi i16 [ %.1, %OPENSSL_memcpy.exit135 ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dg = icmp sgt i64 %indvars.iv, 0
  br i1 %i.dg, label %bb.n, label %._crit_edge, !llvm.loop !1946
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

.lr.ph.i.preheader:                               ; preds = %.lr.ph.preheader.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %n.vec, %middle.block ]
  %.067.i.ph = phi i64 [ 0, %.lr.ph.preheader.i ], [ %i.i, %middle.block ]
  br label %.lr.ph.i

ec_felem_non_zero_mask.exit.thread:               ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.i, %middle.block ], [ %i.n, %.lr.ph.i ]
  %i.j = icmp ne i64 %.lcssa, 0
  %i.k = sext i1 %i.j to i64
  br label %bn_sub_words.exit

end_hunk_0
begin_hunk_1_@ec_GFp_mont_batch_get_window:bb.a

scalar.ph112.prol.loopexit:                       ; preds = %scalar.ph112.prol, %scalar.ph112.preheader
  %.09.i.i.i.unr = phi i64 [ %.09.i.i.i.ph, %scalar.ph112.preheader ], [ %i.fm, %scalar.ph112.prol ]
  %i.fn = icmp eq i64 %.09.i.i.i.ph, %i.cm
  br i1 %i.fn, label %.lr.ph.i.i15.i, label %scalar.ph112

scalar.ph112:                                     ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112
  %.09.i.i.i = phi i64 [ %i.gd, %scalar.ph112 ], [ %.09.i.i.i.unr, %scalar.ph112.prol.loopexit ] ; 4 uses
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %.09.i.i.i
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !80
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.09.i.i.i ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !80
  %i.fs = and i64 %i.fp, %i.er
  %i.ft = and i64 %i.fr, %i.et
  %i.fu = or i64 %i.ft, %i.fs
  store i64 %i.fu, ptr %i.fq, align 8, !tbaa !80
  %i.fv = add nuw i64 %.09.i.i.i, 1               ; 2 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.ep, i64 %i.fv
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !80
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.fv ; 2 uses
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !80
  %i.ga = and i64 %i.fx, %i.er
  %i.gb = and i64 %i.fz, %i.et
  %i.gc = or i64 %i.gb, %i.ga
  store i64 %i.gc, ptr %i.fy, align 8, !tbaa !80
  %i.gd = add nuw i64 %.09.i.i.i, 2               ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.gd, %i.cb
  br i1 %exitcond.not.i.i.i.1, label %.lr.ph.i.i15.i, label %scalar.ph112, !llvm.loop !2006

.lr.ph.i.i15.i:                                   ; preds = %scalar.ph112.prol.loopexit, %scalar.ph112, %middle.block127
  %i.ge = getelementptr inbounds nuw i8, ptr %i.ep, i64 72 ; 4 uses
  %brmerge185 = select i1 %min.iters.check89, i1 true, i1 %found.conflict87
  br i1 %brmerge185, label %scalar.ph88.preheader, label %vector.ph90

vector.ph90:                                      ; preds = %.lr.ph.i.i15.i
  %broadcast.splatinsert92 = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat93 = shufflevector <2 x i64> %broadcast.splatinsert92, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert94 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat95 = shufflevector <2 x i64> %broadcast.splatinsert94, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body96

vector.body96:                                    ; preds = %vector.body96, %vector.ph90
  %index97 = phi i64 [ 0, %vector.ph90 ], [ %index.next102, %vector.body96 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %index97 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %wide.load98 = load <2 x i64>, ptr %i.gf, align 8, !tbaa !80, !alias.scope !2020
  %wide.load99 = load <2 x i64>, ptr %i.gg, align 8, !tbaa !80, !alias.scope !2020
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %index97 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load100 = load <2 x i64>, ptr %i.gh, align 8, !tbaa !80, !alias.scope !2021, !noalias !2020
  %wide.load101 = load <2 x i64>, ptr %i.gi, align 8, !tbaa !80, !alias.scope !2021, !noalias !2020
  %i.gj = and <2 x i64> %wide.load98, %broadcast.splat93
  %i.gk = and <2 x i64> %wide.load99, %broadcast.splat93
  %i.gl = and <2 x i64> %wide.load100, %broadcast.splat95
  %i.gm = and <2 x i64> %wide.load101, %broadcast.splat95
  %i.gn = or <2 x i64> %i.gl, %i.gj
  %i.go = or <2 x i64> %i.gm, %i.gk
  store <2 x i64> %i.gn, ptr %i.gh, align 8, !tbaa !80, !alias.scope !2021, !noalias !2020
  store <2 x i64> %i.go, ptr %i.gi, align 8, !tbaa !80, !alias.scope !2021, !noalias !2020
  %index.next102 = add nuw i64 %index97, 4        ; 2 uses
  %i.gp = icmp eq i64 %index.next102, %n.vec91
  br i1 %i.gp, label %middle.block103, label %vector.body96, !llvm.loop !2010

middle.block103:                                  ; preds = %vector.body96
  br i1 %cmp.n104, label %.lr.ph.i.i20.i, label %scalar.ph88.preheader

scalar.ph88.preheader:                            ; preds = %.lr.ph.i.i15.i, %middle.block103
  %.09.i.i16.i.ph = phi i64 [ %n.vec91, %middle.block103 ], [ 0, %.lr.ph.i.i15.i ] ; 5 uses
  br i1 %lcmp.mod179.not, label %scalar.ph88.prol.loopexit, label %scalar.ph88.prol

scalar.ph88.prol:                                 ; preds = %scalar.ph88.preheader
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.09.i.i16.i.ph
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !80
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.09.i.i16.i.ph ; 2 uses
  %i.gt = load i64, ptr %i.gs, align 8, !tbaa !80
  %i.gu = and i64 %i.gr, %i.er
  %i.gv = and i64 %i.gt, %i.et
  %i.gw = or i64 %i.gv, %i.gu
  store i64 %i.gw, ptr %i.gs, align 8, !tbaa !80
  %i.gx = or disjoint i64 %.09.i.i16.i.ph, 1
  br label %scalar.ph88.prol.loopexit

scalar.ph88.prol.loopexit:                        ; preds = %scalar.ph88.prol, %scalar.ph88.preheader
  %.09.i.i16.i.unr = phi i64 [ %.09.i.i16.i.ph, %scalar.ph88.preheader ], [ %i.gx, %scalar.ph88.prol ]
  %i.gy = icmp eq i64 %.09.i.i16.i.ph, %i.co
  br i1 %i.gy, label %.lr.ph.i.i20.i, label %scalar.ph88

scalar.ph88:                                      ; preds = %scalar.ph88.prol.loopexit, %scalar.ph88
  %.09.i.i16.i = phi i64 [ %i.ho, %scalar.ph88 ], [ %.09.i.i16.i.unr, %scalar.ph88.prol.loopexit ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %.09.i.i16.i
  %i.ha = load i64, ptr %i.gz, align 8, !tbaa !80
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.09.i.i16.i ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !80
  %i.hd = and i64 %i.ha, %i.er
  %i.he = and i64 %i.hc, %i.et
  %i.hf = or i64 %i.he, %i.hd
  store i64 %i.hf, ptr %i.hb, align 8, !tbaa !80
  %i.hg = add nuw i64 %.09.i.i16.i, 1             ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.ge, i64 %i.hg
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !80
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %i.hg ; 2 uses
  %i.hk = load i64, ptr %i.hj, align 8, !tbaa !80
  %i.hl = and i64 %i.hi, %i.er
  %i.hm = and i64 %i.hk, %i.et
  %i.hn = or i64 %i.hm, %i.hl
  store i64 %i.hn, ptr %i.hj, align 8, !tbaa !80
  %i.ho = add nuw i64 %.09.i.i16.i, 2             ; 2 uses
  %exitcond.not.i.i17.i.1 = icmp eq i64 %i.ho, %i.cb
  br i1 %exitcond.not.i.i17.i.1, label %.lr.ph.i.i20.i, label %scalar.ph88, !llvm.loop !2011

.lr.ph.i.i20.i:                                   ; preds = %scalar.ph88.prol.loopexit, %scalar.ph88, %middle.block103
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ep, i64 144 ; 4 uses
  %brmerge186 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge186, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i20.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.er, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert76 = insertelement <2 x i64> poison, i64 %i.et, i64 0
  %broadcast.splat77 = shufflevector <2 x i64> %broadcast.splatinsert76, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %index ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %wide.load = load <2 x i64>, ptr %i.hq, align 8, !tbaa !80, !alias.scope !2022
  %wide.load78 = load <2 x i64>, ptr %i.hr, align 8, !tbaa !80, !alias.scope !2022
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %index ; 3 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 2 uses
  %wide.load79 = load <2 x i64>, ptr %i.hs, align 8, !tbaa !80, !alias.scope !2023, !noalias !2022
  %wide.load80 = load <2 x i64>, ptr %i.ht, align 8, !tbaa !80, !alias.scope !2023, !noalias !2022
  %i.hu = and <2 x i64> %wide.load, %broadcast.splat
  %i.hv = and <2 x i64> %wide.load78, %broadcast.splat
  %i.hw = and <2 x i64> %wide.load79, %broadcast.splat77
  %i.hx = and <2 x i64> %wide.load80, %broadcast.splat77
  %i.hy = or <2 x i64> %i.hw, %i.hu
  %i.hz = or <2 x i64> %i.hx, %i.hv
  store <2 x i64> %i.hy, ptr %i.hs, align 8, !tbaa !80, !alias.scope !2023, !noalias !2022
  store <2 x i64> %i.hz, ptr %i.ht, align 8, !tbaa !80, !alias.scope !2023, !noalias !2022
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ia = icmp eq i64 %index.next, %n.vec
  br i1 %i.ia, label %middle.block, label %vector.body, !llvm.loop !2015

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %ec_point_select.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i20.i, %middle.block
  %.09.i.i21.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i20.i ] ; 5 uses
  br i1 %lcmp.mod181.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ib = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.09.i.i21.i.ph
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !80
  %i.id = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.09.i.i21.i.ph ; 2 uses
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !80
  %i.if = and i64 %i.ic, %i.er
  %i.ig = and i64 %i.ie, %i.et
  %i.ih = or i64 %i.ig, %i.if
  store i64 %i.ih, ptr %i.id, align 8, !tbaa !80
  %i.ii = or disjoint i64 %.09.i.i21.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i21.i.unr = phi i64 [ %.09.i.i21.i.ph, %scalar.ph.preheader ], [ %i.ii, %scalar.ph.prol ]
  %i.ij = icmp eq i64 %.09.i.i21.i.ph, %i.cq
  br i1 %i.ij, label %ec_point_select.exit.loopexit, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i21.i = phi i64 [ %i.iz, %scalar.ph ], [ %.09.i.i21.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %.09.i.i21.i
  %i.il = load i64, ptr %i.ik, align 8, !tbaa !80
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %.09.i.i21.i ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !80
  %i.io = and i64 %i.il, %i.er
  %i.ip = and i64 %i.in, %i.et
  %i.iq = or i64 %i.ip, %i.io
  store i64 %i.iq, ptr %i.im, align 8, !tbaa !80
  %i.ir = add nuw i64 %.09.i.i21.i, 1             ; 2 uses
  %i.is = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.ir
  %i.it = load i64, ptr %i.is, align 8, !tbaa !80
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ir ; 2 uses
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !80
  %i.iw = and i64 %i.it, %i.er
  %i.ix = and i64 %i.iv, %i.et
  %i.iy = or i64 %i.ix, %i.iw
  store i64 %i.iy, ptr %i.iu, align 8, !tbaa !80
  %i.iz = add nuw i64 %.09.i.i21.i, 2             ; 2 uses
  %exitcond.not.i.i22.i.1 = icmp eq i64 %i.iz, %i.cb
  br i1 %exitcond.not.i.i22.i.1, label %ec_point_select.exit.loopexit, label %scalar.ph, !llvm.loop !2016

ec_point_select.exit.loopexit:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ja = add nuw nsw i64 %.04263, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ja, 17
  br i1 %exitcond.not, label %.split, label %.lr.ph.i.i.i, !llvm.loop !2017
}

; Function Attrs: nounwind uwtable
define hidden i32 @ec_GFp_mont_init_precomp(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %3 = alloca [31 x %struct.EC_JACOBIAN], align 16 ; 97 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %ec_GFp_mont_comb_stride.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.l, label %bb.b, label %ec_GFp_mont_comb_stride.exit.thread, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %ec_GFp_mont_comb_stride.exit.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !92
  br label %ec_GFp_mont_comb_stride.exit

ec_GFp_mont_comb_stride.exit.thread:              ; preds = %bb.c, %bn_minimal_width.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !2025
  br label %._crit_edge.3

ec_GFp_mont_comb_stride.exit:                     ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0             ; 2 uses
  %i.v = select i1 %.not.i.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.y, 0           ; 2 uses
  %i.z = select i1 %.not52.i.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.ab, 0          ; 2 uses
  %i.ac = select i1 %.not53.i.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.ae, 0          ; 2 uses
  %i.af = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ah, 0          ; 2 uses
  %i.ai = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, %i.w
  %i.am = or disjoint i32 %i.al, %i.v
  %i.an = or disjoint i32 %i.am, %i.z
  %i.ao = or disjoint i32 %i.an, %i.ac
  %i.ap = or disjoint i32 %i.ao, 4
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i.i
  %.fr = freeze i32 %i.as                         ; 2 uses
  %i.at = udiv i32 %.fr, 5                        ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(216) %2, i64 216, i1 false), !tbaa.struct !2025
  %i.au = icmp ugt i32 %.fr, 9
  br i1 %i.au, label %.lr.ph.us.preheader, label %._crit_edge.3

.lr.ph.us.preheader:                              ; preds = %ec_GFp_mont_comb_stride.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 3 uses
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %3)
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.preheader, %bb.d
  %.02327.us = phi i32 [ 1, %.lr.ph.us.preheader ], [ %i.aw, %bb.d ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %5, ptr noundef nonnull %5)
  %i.aw = add nuw nsw i32 %.02327.us, 1           ; 2 uses
  %exitcond.not = icmp eq i32 %i.aw, %i.at
  br i1 %exitcond.not, label %._crit_edge.us, label %bb.d, !llvm.loop !2024

._crit_edge.us:                                   ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 432
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ax, ptr noundef nonnull %5, ptr noundef nonnull %3)
  %6 = getelementptr inbounds nuw i8, ptr %3, i64 864 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 7 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %5)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %._crit_edge.us
  %.02327.us.1 = phi i32 [ 1, %._crit_edge.us ], [ %i.az, %bb.e ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.ay)
  %i.az = add nuw nsw i32 %.02327.us.1, 1         ; 2 uses
  %exitcond.1.not = icmp eq i32 %i.az, %i.at
  br i1 %exitcond.1.not, label %._crit_edge.us.1, label %bb.e, !llvm.loop !2024

._crit_edge.us.1:                                 ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 864
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ba, ptr noundef nonnull %i.ay, ptr noundef nonnull %3)
  %i.bb = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bb, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.av)
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bc, ptr noundef nonnull %i.ay, ptr noundef nonnull %4)
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 1512 ; 11 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.ay)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %._crit_edge.us.1
  %.02327.us.2 = phi i32 [ 1, %._crit_edge.us.1 ], [ %i.be, %bb.f ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bd)
  %i.be = add nuw nsw i32 %.02327.us.2, 1         ; 2 uses
  %exitcond.2.not = icmp eq i32 %i.be, %i.at
  br i1 %exitcond.2.not, label %._crit_edge.us.2, label %bb.f, !llvm.loop !2024

._crit_edge.us.2:                                 ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 1728
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bf, ptr noundef nonnull %i.bd, ptr noundef nonnull %3)
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bg, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.av)
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bh, ptr noundef nonnull %i.bd, ptr noundef nonnull %4)
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 2376
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bi, ptr noundef nonnull %i.bd, ptr noundef nonnull %8)
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bj, ptr noundef nonnull %i.bd, ptr noundef nonnull %6)
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 2808
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bk, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 3024
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bm, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %3, i64 3240 ; 13 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bd)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %._crit_edge.us.2
  %.02327.us.3 = phi i32 [ 1, %._crit_edge.us.2 ], [ %i.bp, %bb.g ]
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bo)
  %i.bp = add nuw nsw i32 %.02327.us.3, 1         ; 2 uses
  %exitcond.3.not = icmp eq i32 %i.bp, %i.at
  br i1 %exitcond.3.not, label %._crit_edge.us.3, label %bb.g, !llvm.loop !2024

._crit_edge.us.3:                                 ; preds = %bb.g
  %9 = getelementptr inbounds nuw i8, ptr %3, i64 3456
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %i.bo, ptr noundef nonnull %3)
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 3672
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bq, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.av)
  %i.br = getelementptr inbounds nuw i8, ptr %3, i64 3888
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.br, ptr noundef nonnull %i.bo, ptr noundef nonnull %4)
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %i.bt = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bs, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bt)
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4320
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.bo, ptr noundef nonnull %6)
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 4536
  %i.bw = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.bw)
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4752
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.by)
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 4968
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 1512
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bz, ptr noundef nonnull %i.bo, ptr noundef nonnull %i.ca)
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 5184
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cb, ptr noundef nonnull %i.bo, ptr noundef nonnull %7)
  br label %.split.us

.split.us:                                        ; preds = %._crit_edge.3, %._crit_edge.us.3
  %.sink51 = phi ptr [ %i.dk, %._crit_edge.3 ], [ %i.bo, %._crit_edge.us.3 ] ; 6 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 5400
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cc, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cd)
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 5616
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ce, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cf)
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 5832
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 2376
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cg, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.ch)
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 6048
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ci, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cj)
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 6264
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 2808
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.ck, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cl)
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 6480
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 3024
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cm, ptr noundef nonnull %.sink51, ptr noundef nonnull %i.cn)
  %i.co = load ptr, ptr %0, align 8, !tbaa !271
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !317 ; 2 uses
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.split.us
  call void @ERR_put_error(i32 noundef 15, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.23, i32 noundef 672) #46
  br label %ec_jacobian_to_affine_batch.exit

bb.i:                                             ; preds = %.split.us
  %i.cs = call i32 %i.cq(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %3, i64 noundef 31) #46, !inline_history !2026
  br label %ec_jacobian_to_affine_batch.exit

ec_jacobian_to_affine_batch.exit:                 ; preds = %bb.h, %bb.i
  %.0.i = phi i32 [ 0, %bb.h ], [ %i.cs, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  ret i32 %.0.i

._crit_edge.3:                                    ; preds = %ec_GFp_mont_comb_stride.exit.thread, %ec_GFp_mont_comb_stride.exit
  %10 = getelementptr inbounds nuw i8, ptr %3, i64 432 ; 3 uses
  %11 = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 216 ; 3 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %11, ptr noundef nonnull %3)
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 432
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cu, ptr noundef nonnull %11, ptr noundef nonnull %3)
  %12 = getelementptr inbounds nuw i8, ptr %3, i64 864 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 648 ; 5 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.cv, ptr noundef nonnull %11)
  %13 = getelementptr inbounds nuw i8, ptr %3, i64 864
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %13, ptr noundef nonnull %i.cv, ptr noundef nonnull %3)
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cw, ptr noundef nonnull %i.cv, ptr noundef nonnull %i.ct)
  %i.cx = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.cx, ptr noundef nonnull %i.cv, ptr noundef nonnull %10)
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 1728
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 1512 ; 9 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.cv)
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 1728
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.da, ptr noundef nonnull %i.cz, ptr noundef nonnull %3)
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 1944
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.db, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.ct)
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 2160
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dc, ptr noundef nonnull %i.cz, ptr noundef nonnull %10)
  %i.dd = getelementptr inbounds nuw i8, ptr %3, i64 2376
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 2592
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.df, ptr noundef nonnull %i.cz, ptr noundef nonnull %12)
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 2808
  %i.dh = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dg, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dh)
  %i.di = getelementptr inbounds nuw i8, ptr %3, i64 3024
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.di, ptr noundef nonnull %i.cz, ptr noundef nonnull %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %3, i64 3240 ; 11 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cz)
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 3456
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dl, ptr noundef nonnull %i.dk, ptr noundef nonnull %3)
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 3672
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dm, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.ct)
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 3888
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dn, ptr noundef nonnull %i.dk, ptr noundef nonnull %10)
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 4104
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 648
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.do, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dp)
  %i.dq = getelementptr inbounds nuw i8, ptr %3, i64 4320
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dq, ptr noundef nonnull %i.dk, ptr noundef nonnull %12)
  %i.dr = getelementptr inbounds nuw i8, ptr %3, i64 4536
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 1080
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dr, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.ds)
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4752
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 1296
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dt, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.du)
  %i.dv = getelementptr inbounds nuw i8, ptr %3, i64 4968
  %i.dw = getelementptr inbounds nuw i8, ptr %3, i64 1512
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dv, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %3, i64 5184
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.dx, ptr noundef nonnull %i.dk, ptr noundef nonnull %i.cy)
  br label %.split.us
}

; Function Attrs: nounwind uwtable
define hidden void @ec_GFp_mont_mul_precomp(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(address_is_null) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %8 = alloca %struct.EC_JACOBIAN, align 8        ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !93   ; 4 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !92   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.c, %.lr.ph.i.i.i.i ], [ %i.k, %bb.c ] ; 4 uses
  %i.f = zext nneg i32 %.05.i.i.i.i to i64
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load i64, ptr %i.h, align 8, !tbaa !80
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.c, label %ec_GFp_mont_comb_stride.exit

bb.c:                                             ; preds = %bb.b
  %i.k = add nsw i32 %.05.i.i.i.i, -1
  %i.l = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.l, label %bb.b, label %.critedge46, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.m = icmp eq i32 %i.c, 0
  br i1 %i.m, label %.critedge46, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.a, align 8, !tbaa !92
  br label %ec_GFp_mont_comb_stride.exit

ec_GFp_mont_comb_stride.exit:                     ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.n = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.e, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.o = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.p = shl nsw i32 %i.o, 6
  %i.q = sext i32 %i.o to i64
  %i.r = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.q
  %i.s = load i64, ptr %i.r, align 8, !tbaa !80   ; 3 uses
  %i.t = icmp ne i64 %i.s, 0
  %i.u = lshr i64 %i.s, 32                        ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.u, 0             ; 2 uses
  %i.v = select i1 %.not.i.i.i.i, i32 0, i32 32
  %i.w = zext i1 %i.t to i32
  %i.x = select i1 %.not.i.i.i.i, i64 %i.s, i64 %i.u ; 2 uses
  %i.y = lshr i64 %i.x, 16                        ; 2 uses
  %.not52.i.i.i.i = icmp eq i64 %i.y, 0           ; 2 uses
  %i.z = select i1 %.not52.i.i.i.i, i32 0, i32 16
  %i.aa = select i1 %.not52.i.i.i.i, i64 %i.x, i64 %i.y ; 2 uses
  %i.ab = lshr i64 %i.aa, 8                       ; 2 uses
  %.not53.i.i.i.i = icmp eq i64 %i.ab, 0          ; 2 uses
  %i.ac = select i1 %.not53.i.i.i.i, i32 0, i32 8
  %i.ad = select i1 %.not53.i.i.i.i, i64 %i.aa, i64 %i.ab ; 2 uses
  %i.ae = lshr i64 %i.ad, 4                       ; 2 uses
  %.not54.i.i.i.i = icmp eq i64 %i.ae, 0          ; 2 uses
  %i.af = select i1 %.not54.i.i.i.i, i32 0, i32 4
  %i.ag = select i1 %.not54.i.i.i.i, i64 %i.ad, i64 %i.ae ; 2 uses
  %i.ah = lshr i64 %i.ag, 2                       ; 2 uses
  %.not55.i.i.i.i = icmp eq i64 %i.ah, 0          ; 2 uses
  %i.ai = select i1 %.not55.i.i.i.i, i32 0, i32 2
  %i.aj = select i1 %.not55.i.i.i.i, i64 %i.ag, i64 %i.ah
  %i.ak = icmp samesign ugt i64 %i.aj, 1
  %.neg.i.i.i.i = zext i1 %i.ak to i32
  %i.al = or disjoint i32 %i.p, %i.w
  %i.am = or disjoint i32 %i.al, %i.v
  %i.an = or disjoint i32 %i.am, %i.z
  %i.ao = or disjoint i32 %i.an, %i.ac
  %i.ap = or disjoint i32 %i.ao, 4
  %i.aq = add i32 %i.ap, %i.af
  %i.ar = add i32 %i.aq, %i.ai
  %i.as = add i32 %i.ar, %.neg.i.i.i.i            ; 3 uses
  %i.at = udiv i32 %i.as, 5                       ; 3 uses
  %.not = icmp ult i32 %i.as, 5
  br i1 %.not, label %.critedge46, label %bb.d

bb.d:                                             ; preds = %ec_GFp_mont_comb_stride.exit
  %.043 = add nsw i32 %i.at, -1                   ; 3 uses
  %.not40 = icmp eq ptr %4, null                  ; 2 uses
  %.not41 = icmp eq ptr %6, null                  ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %8, i64 144
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %.043)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 8 dereferenceable(72) %8, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.aw, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.av, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.au, i64 72, i1 false)
  br i1 %.not40, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.043)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  br i1 %.not41, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %.043)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  %.off = add i32 %i.as, -5
  %.not54 = icmp ult i32 %.off, 5
  br i1 %.not54, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.h
  %.0.peel = add nsw i32 %i.at, -2
  br label %bb.i

bb.i:                                             ; preds = %.peel.next, %bb.m
  %.045 = phi i32 [ %.0.peel, %.peel.next ], [ %.0, %bb.m ] ; 4 uses
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef %2, ptr noundef %3, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br i1 %.not40, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %4, ptr noundef %5, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  br i1 %.not41, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call fastcc void @ec_GFp_mont_get_comb_window(ptr noundef %0, ptr noundef %8, ptr noundef nonnull %6, ptr noundef %7, i32 noundef %.045)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1, ptr noundef nonnull %8)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  %.0 = add nsw i32 %.045, -1                     ; 2 uses
  %i.ay = icmp ult i32 %.0, %i.at
  br i1 %i.ay, label %bb.i, label %._crit_edge, !llvm.loop !2027

.critedge46:                                      ; preds = %bb.c, %bn_minimal_width.exit.i.i.i, %ec_GFp_mont_comb_stride.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.m, %bb.h, %.critedge46
  ret void
}

; Function Attrs: nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @ec_GFp_mont_get_comb_window(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef range(i32 0, 858993459) %4) unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.b = load i32, ptr %i.a, align 8, !tbaa !296
  %i.c = sext i32 %i.b to i64                     ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !93   ; 4 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i.i.i.i, label %bn_minimal_width.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a
  %i.h = load ptr, ptr %i.d, align 8, !tbaa !92   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i.i.i.i
  %.05.i.i.i.i = phi i32 [ %i.f, %.lr.ph.i.i.i.i ], [ %i.n, %bb.c ] ; 4 uses
  %i.i = zext nneg i32 %.05.i.i.i.i to i64
  %i.j = getelementptr [8 x i8], ptr %i.h, i64 %i.i
  %i.k = getelementptr i8, ptr %i.j, i64 -8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %bn_minimal_width.exit.thread7.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.n = add nsw i32 %.05.i.i.i.i, -1
  %i.o = icmp sgt i32 %.05.i.i.i.i, 1
  br i1 %i.o, label %bb.b, label %ec_GFp_mont_comb_stride.exit, !llvm.loop !10

bn_minimal_width.exit.i.i.i:                      ; preds = %bb.a
  %i.p = icmp eq i32 %i.f, 0
  br i1 %i.p, label %ec_GFp_mont_comb_stride.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i: ; preds = %bn_minimal_width.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.d, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i.i.i

bn_minimal_width.exit.thread7.i.i.i:              ; preds = %bb.b, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i
  %i.q = phi ptr [ %.pre.i.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %i.h, %bb.b ]
  %.0.lcssa.i9.i.i.i = phi i32 [ %i.f, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i.i ], [ %.05.i.i.i.i, %bb.b ]
  %i.r = add nsw i32 %.0.lcssa.i9.i.i.i, -1       ; 2 uses
  %i.s = shl nsw i32 %i.r, 6
  %i.t = sext i32 %i.r to i64
end_hunk_1
