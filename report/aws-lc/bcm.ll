Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 551
begin_hunk_0_@ec_nistp_scalar_mul_base:bb.a
  %i.fo = add nuw nsw i64 %.09.i.i.i, 2           ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.fo, %i.ea
  br i1 %exitcond.not.i.i.i.1, label %constant_time_select_array_w.exit.loopexit.i.i, label %scalar.ph129, !llvm.loop !1942

constant_time_select_array_w.exit.loopexit.i.i:   ; preds = %scalar.ph129, %middle.block144
  %i.fp = add nuw nsw i64 %.011.i.i, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.fp, 16
  br i1 %exitcond.not.i.i, label %select_point_from_table.exit, label %.lr.ph.i.i.i, !llvm.loop !21

select_point_from_table.exit:                     ; preds = %constant_time_select_array_w.exit.loopexit.i.i, %.lr.ph113
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.fq = load ptr, ptr %i.r, align 8, !tbaa !345
  call void %i.fq(ptr noundef nonnull %i.d, ptr noundef nonnull %i.n) #46
  %i.fr = load i64, ptr %0, align 8, !tbaa !342   ; 5 uses
  %.not.i99 = icmp eq i64 %i.fr, 0
  br i1 %.not.i99, label %cmovznz.exit104, label %.lr.ph.i100

.lr.ph.i100:                                      ; preds = %select_point_from_table.exit
  %i.fs = icmp sgt i16 %i.do, -1
  %.neg.i.i.i101 = sext i1 %i.fs to i64           ; 2 uses
  %i.ft = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i101) #47, !srcloc !81 ; 2 uses
  %i.fu = xor i64 %.neg.i.i.i101, -1
  %i.fv = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.fu) #47, !srcloc !81 ; 2 uses
  %min.iters.check = icmp ult i64 %i.fr, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i100
  %n.vec = and i64 %i.fr, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ft, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert123 = insertelement <2 x i64> poison, i64 %i.fv, i64 0
  %broadcast.splat124 = shufflevector <2 x i64> %broadcast.splatinsert123, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %index ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fw, align 8, !tbaa !80
  %wide.load125 = load <2 x i64>, ptr %i.fx, align 8, !tbaa !80
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  %wide.load126 = load <2 x i64>, ptr %i.fy, align 16, !tbaa !80
  %wide.load127 = load <2 x i64>, ptr %i.fz, align 16, !tbaa !80
  %i.ga = and <2 x i64> %wide.load, %broadcast.splat
  %i.gb = and <2 x i64> %wide.load125, %broadcast.splat
  %i.gc = and <2 x i64> %wide.load126, %broadcast.splat124
  %i.gd = and <2 x i64> %wide.load127, %broadcast.splat124
  %i.ge = or <2 x i64> %i.gc, %i.ga
  %i.gf = or <2 x i64> %i.gd, %i.gb
  store <2 x i64> %i.ge, ptr %i.fw, align 8, !tbaa !80
  store <2 x i64> %i.gf, ptr %i.fx, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gg = icmp eq i64 %index.next, %n.vec
  br i1 %i.gg, label %middle.block, label %vector.body, !llvm.loop !1943

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fr, %n.vec
  br i1 %cmp.n, label %cmovznz.exit104, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i100, %middle.block
  %.010.i102.ph = phi i64 [ 0, %.lr.ph.i100 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.010.i102 = phi i64 [ %i.go, %scalar.ph ], [ %.010.i102.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.010.i102 ; 2 uses
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !80
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.010.i102
  %i.gk = load i64, ptr %i.gj, align 8, !tbaa !80
  %i.gl = and i64 %i.gi, %i.ft
  %i.gm = and i64 %i.gk, %i.fv
  %i.gn = or i64 %i.gm, %i.gl
  store i64 %i.gn, ptr %i.gh, align 8, !tbaa !80
  %i.go = add nuw nsw i64 %.010.i102, 1           ; 2 uses
  %exitcond.not.i103 = icmp eq i64 %i.go, %i.fr
  br i1 %exitcond.not.i103, label %cmovznz.exit104, label %scalar.ph, !llvm.loop !1944

cmovznz.exit104:                                  ; preds = %scalar.ph, %middle.block, %select_point_from_table.exit
  %i.gp = load ptr, ptr %i.s, align 8, !tbaa !346
  %i.gq = load ptr, ptr %i.t, align 8, !tbaa !348
  call void %i.gp(ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, ptr noundef nonnull %i.b, ptr noundef nonnull %i.k, ptr noundef nonnull %i.m, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.n, ptr noundef %i.gq) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  %indvars.iv.next117 = add nsw i64 %indvars.iv116, -4
  %i.gr = icmp sgt i64 %indvars.iv116, 3
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gr, label %.lr.ph113, label %._crit_edge114, !llvm.loop !1945
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
  br i1 %.not38.i, label %ec_compute_wNAF.exit132.thread, label %.lr.ph.i

ec_compute_wNAF.exit132.thread:                   ; preds = %bb.a
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
  br i1 %exitcond.not.i, label %.lr.ph.i118, label %bb.b, !llvm.loop !22

.lr.ph.i118:                                      ; preds = %bn_is_bit_set_words.exit.i
  %i.am = load i64, ptr %4, align 8, !tbaa !80
  %i.an = trunc i64 %i.am to i32
  %i.ao = and i32 %i.an, 63
  br label %bb.h

bb.h:                                             ; preds = %bn_is_bit_set_words.exit.i129, %.lr.ph.i118
  %.03137.i119 = phi i64 [ 0, %.lr.ph.i118 ], [ %i.bi, %bn_is_bit_set_words.exit.i129 ] ; 5 uses
  %.03236.i120 = phi i32 [ %i.ao, %.lr.ph.i118 ], [ %i.bh, %bn_is_bit_set_words.exit.i129 ] ; 7 uses
  %i.ap = and i32 %.03236.i120, 1
  %.not.i121 = icmp eq i32 %i.ap, 0
  br i1 %.not.i121, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aq = and i32 %.03236.i120, 32
  %.not34.i122 = icmp eq i32 %i.aq, 0
  br i1 %.not34.i122, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ar = add nsw i32 %.03236.i120, -64
  %i.as = add nuw i64 %.03137.i119, 6
  %.not35.i123 = icmp ult i64 %i.as, %i.m
  %i.at = and i32 %.03236.i120, 31
  %spec.select.i124 = select i1 %.not35.i123, i32 %i.ar, i32 %i.at
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.0.i125 = phi i32 [ %.03236.i120, %bb.i ], [ %spec.select.i124, %bb.j ] ; 2 uses
  %i.au = sub nsw i32 %.03236.i120, %.0.i125
  %i.av = trunc i32 %.0.i125 to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.h
  %.133.i126 = phi i32 [ %i.au, %bb.k ], [ %.03236.i120, %bb.h ]
  %.1.i127 = phi i8 [ %i.av, %bb.k ], [ 0, %bb.h ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 %.03137.i119
  store i8 %.1.i127, ptr %i.aw, align 1, !tbaa !76
  %i.ax = ashr i32 %.133.i126, 1
  %i.ay = add nuw nsw i64 %.03137.i119, 6         ; 2 uses
  %i.az = lshr i64 %i.ay, 6                       ; 2 uses
  %.not.i.i128 = icmp samesign ult i64 %i.az, %i.r
  br i1 %.not.i.i128, label %bb.m, label %bn_is_bit_set_words.exit.i129

bb.m:                                             ; preds = %bb.l
  %i.ba = and i64 %i.ay, 63
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %i.az
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !80
  %i.bd = lshr i64 %i.bc, %i.ba
  %i.be = trunc i64 %i.bd to i32
  %i.bf = shl i32 %i.be, 5
  %i.bg = and i32 %i.bf, 32
  br label %bn_is_bit_set_words.exit.i129

bn_is_bit_set_words.exit.i129:                    ; preds = %bb.m, %bb.l
  %.0.i.i130 = phi i32 [ %i.bg, %bb.m ], [ 0, %bb.l ]
  %i.bh = add nsw i32 %.0.i.i130, %i.ax
  %i.bi = add nuw nsw i64 %.03137.i119, 1
  %exitcond.not.i131 = icmp eq i64 %.03137.i119, %i.m
  br i1 %exitcond.not.i131, label %ec_compute_wNAF.exit132, label %bb.h, !llvm.loop !22

ec_compute_wNAF.exit132:                          ; preds = %bn_is_bit_set_words.exit.i129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #46
  %i.bj = and i64 %i.m, 2147483648
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %ec_compute_wNAF.exit132
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bm = icmp eq i64 %i.f, 0                     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.bq = and i64 %i.m, 2147483647
  br label %bb.n

._crit_edge:                                      ; preds = %OPENSSL_memcpy.exit137, %ec_compute_wNAF.exit132.thread, %ec_compute_wNAF.exit132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #46
  ret void

bb.n:                                             ; preds = %.lr.ph, %OPENSSL_memcpy.exit137
  %indvars.iv = phi i64 [ %i.bq, %.lr.ph ], [ %indvars.iv.next, %OPENSSL_memcpy.exit137 ] ; 4 uses
  %.0106139 = phi i16 [ 1, %.lr.ph ], [ %.2, %OPENSSL_memcpy.exit137 ] ; 2 uses
  %.not = icmp eq i16 %.0106139, 0                ; 2 uses
  br i1 %.not, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !344
  call void %i.br(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3) #46
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !76  ; 3 uses
  %.not109 = icmp eq i8 %i.bt, 0
  br i1 %.not109, label %OPENSSL_memcpy.exit134, label %bb.q

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
  br i1 %i.bm, label %OPENSSL_memcpy.exit134, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = sext i32 %i.bz to i64
  %i.cb = mul i64 %i.h, %i.ca
  %i.cc = getelementptr [8 x i8], ptr %i.a, i64 %i.cb ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr nonnull readonly align 8 %i.cc, i64 %i.f, i1 false)
  %i.cd = load i64, ptr %0, align 8, !tbaa !342
  %i.ce = getelementptr [8 x i8], ptr %i.cc, i64 %i.cd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 8 %i.ce, i64 %i.f, i1 false)
  %i.cf = load i64, ptr %0, align 8, !tbaa !342
  %.idx112 = shl i64 %i.cf, 4
  %i.cg = getelementptr i8, ptr %i.cc, i64 %.idx112
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 8 %i.cg, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit134

bb.t:                                             ; preds = %bb.q
  %i.ch = sext i32 %i.bz to i64
  %i.ci = mul i64 %i.h, %i.ch
  %i.cj = load i64, ptr %0, align 8, !tbaa !342   ; 2 uses
  %i.ck = getelementptr [8 x i8], ptr %i.a, i64 %i.ci ; 3 uses
  %i.cl = getelementptr [8 x i8], ptr %i.ck, i64 %i.cj ; 2 uses
  br i1 %.not110, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.cm(ptr noundef nonnull %i.d, ptr noundef %i.cl) #46
  %.pre = load i64, ptr %0, align 8, !tbaa !342
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cn = phi i64 [ %.pre, %bb.u ], [ %i.cj, %bb.t ]
  %.0104 = phi ptr [ %i.d, %bb.u ], [ %i.cl, %bb.t ]
  %i.co = load ptr, ptr %i.bo, align 8, !tbaa !346
  %.idx = shl i64 %i.cn, 4
  %i.cp = getelementptr i8, ptr %i.ck, i64 %.idx
  call void %i.co(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0, ptr noundef nonnull %i.ck, ptr noundef %.0104, ptr noundef %i.cp) #46
  br label %OPENSSL_memcpy.exit134

OPENSSL_memcpy.exit134:                           ; preds = %bb.r, %bb.s, %bb.v, %bb.p
  %.1 = phi i16 [ %.0106139, %bb.p ], [ 0, %bb.v ], [ 0, %bb.s ], [ 0, %bb.r ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !76  ; 3 uses
  %.not113 = icmp eq i8 %i.cr, 0
  br i1 %.not113, label %OPENSSL_memcpy.exit137, label %bb.w

bb.w:                                             ; preds = %OPENSSL_memcpy.exit134
  %i.cs = sext i8 %i.cr to i32                    ; 2 uses
  %.not114 = icmp sgt i8 %i.cr, -1                ; 2 uses
  %i.ct = xor i32 %i.cs, -1
  %i.cu = lshr i32 %i.ct, 1
  %i.cv = add nsw i32 %i.cs, -1
  %i.cw = ashr i32 %i.cv, 1
  %i.cx = select i1 %.not114, i32 %i.cw, i32 %i.cu ; 2 uses
  %.not115 = icmp eq i16 %.1, 0
  br i1 %.not115, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.bm, label %OPENSSL_memcpy.exit137, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cy = sext i32 %i.cx to i64
  %i.cz = mul i64 %i.k, %i.cy
  %i.da = getelementptr [8 x i8], ptr %i.j, i64 %i.cz ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1, ptr readonly align 1 %i.da, i64 %i.f, i1 false)
  %i.db = load i64, ptr %0, align 8, !tbaa !342
  %i.dc = getelementptr [8 x i8], ptr %i.da, i64 %i.db
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr readonly align 1 %i.dc, i64 %i.f, i1 false)
  %i.dd = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr readonly align 1 %i.dd, i64 %i.f, i1 false)
  br label %OPENSSL_memcpy.exit137

bb.z:                                             ; preds = %bb.w
  %i.de = sext i32 %i.cx to i64
  %i.df = mul i64 %i.k, %i.de
  %i.dg = load i64, ptr %0, align 8, !tbaa !342
  %i.dh = getelementptr [8 x i8], ptr %i.j, i64 %i.df ; 2 uses
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  br i1 %.not114, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dj = load ptr, ptr %i.bn, align 8, !tbaa !345
  call void %i.dj(ptr noundef nonnull %i.d, ptr noundef %i.di) #46
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %.0 = phi ptr [ %i.d, %bb.aa ], [ %i.di, %bb.z ]
  %i.dk = load ptr, ptr %i.bo, align 8, !tbaa !346
  %i.dl = load ptr, ptr %i.bp, align 8, !tbaa !348
  call void %i.dk(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 1, ptr noundef %i.dh, ptr noundef %.0, ptr noundef %i.dl) #46
  br label %OPENSSL_memcpy.exit137

OPENSSL_memcpy.exit137:                           ; preds = %bb.x, %bb.y, %OPENSSL_memcpy.exit134, %bb.ab
  %.2 = phi i16 [ %.1, %OPENSSL_memcpy.exit134 ], [ 0, %bb.ab ], [ 0, %bb.y ], [ 0, %bb.x ]
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %i.dm = icmp sgt i64 %indvars.iv, 0
  br i1 %i.dm, label %bb.n, label %._crit_edge, !llvm.loop !1948
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
end_hunk_0
