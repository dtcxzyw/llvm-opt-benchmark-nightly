Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wolfssl/original/aes?download=true
inline.NumInlined: 97
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 66
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 73
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@GenerateM0:bb.a
  %i.ayi = getelementptr inbounds nuw i8, ptr %0, i64 129
  %i.ayj = load i8, ptr %.ptr475, align 16, !tbaa !21
  %i.ayk = getelementptr inbounds nuw i8, ptr %0, i64 257 ; 2 uses
  %i.ayl = load i8, ptr %i.awt, align 16, !tbaa !21
  %i.aym = xor i8 %i.ayl, %i.ayj
  store i8 %i.aym, ptr %i.awt, align 16, !tbaa !21
  %i.ayn = getelementptr inbounds nuw i8, ptr %0, i64 130
  %i.ayo = load i8, ptr %i.ayi, align 1, !tbaa !21
  %i.ayp = getelementptr inbounds nuw i8, ptr %0, i64 258 ; 2 uses
  %i.ayq = load i8, ptr %i.ayk, align 1, !tbaa !21
  %i.ayr = xor i8 %i.ayq, %i.ayo
  store i8 %i.ayr, ptr %i.ayk, align 1, !tbaa !21
  %i.ays = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.ayt = load i8, ptr %i.ayn, align 2, !tbaa !21
  %i.ayu = getelementptr inbounds nuw i8, ptr %0, i64 259 ; 2 uses
  %i.ayv = load i8, ptr %i.ayp, align 2, !tbaa !21
  %i.ayw = xor i8 %i.ayv, %i.ayt
  store i8 %i.ayw, ptr %i.ayp, align 2, !tbaa !21
  %i.ayx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.ayy = load i8, ptr %i.ays, align 1, !tbaa !21
  %i.ayz = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  %i.aza = load i8, ptr %i.ayu, align 1, !tbaa !21
  %i.azb = xor i8 %i.aza, %i.ayy
  store i8 %i.azb, ptr %i.ayu, align 1, !tbaa !21
  %i.azc = getelementptr inbounds nuw i8, ptr %0, i64 133
  %i.azd = load i8, ptr %i.ayx, align 4, !tbaa !21
  %i.aze = getelementptr inbounds nuw i8, ptr %0, i64 261 ; 2 uses
  %i.azf = load i8, ptr %i.ayz, align 4, !tbaa !21
  %i.azg = xor i8 %i.azf, %i.azd
  store i8 %i.azg, ptr %i.ayz, align 4, !tbaa !21
  %i.azh = getelementptr inbounds nuw i8, ptr %0, i64 134
  %i.azi = load i8, ptr %i.azc, align 1, !tbaa !21
  %i.azj = getelementptr inbounds nuw i8, ptr %0, i64 262 ; 2 uses
  %i.azk = load i8, ptr %i.aze, align 1, !tbaa !21
  %i.azl = xor i8 %i.azk, %i.azi
  store i8 %i.azl, ptr %i.aze, align 1, !tbaa !21
  %i.azm = getelementptr inbounds nuw i8, ptr %0, i64 135
  %i.azn = load i8, ptr %i.azh, align 2, !tbaa !21
  %i.azo = getelementptr inbounds nuw i8, ptr %0, i64 263 ; 2 uses
  %i.azp = load i8, ptr %i.azj, align 2, !tbaa !21
  %i.azq = xor i8 %i.azp, %i.azn
  store i8 %i.azq, ptr %i.azj, align 2, !tbaa !21
  %i.azr = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.azs = load i8, ptr %i.azm, align 1, !tbaa !21
  %i.azt = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.azu = load i8, ptr %i.azo, align 1, !tbaa !21
  %i.azv = xor i8 %i.azu, %i.azs
  store i8 %i.azv, ptr %i.azo, align 1, !tbaa !21
  %i.azw = getelementptr inbounds nuw i8, ptr %0, i64 137
  %i.azx = load i8, ptr %i.azr, align 8, !tbaa !21
  %i.azy = getelementptr inbounds nuw i8, ptr %0, i64 265 ; 2 uses
  %i.azz = load i8, ptr %i.azt, align 8, !tbaa !21
  %i.baa = xor i8 %i.azz, %i.azx
  store i8 %i.baa, ptr %i.azt, align 8, !tbaa !21
  %i.bab = getelementptr inbounds nuw i8, ptr %0, i64 138
  %i.bac = load i8, ptr %i.azw, align 1, !tbaa !21
  %i.bad = getelementptr inbounds nuw i8, ptr %0, i64 266 ; 2 uses
  %i.bae = load i8, ptr %i.azy, align 1, !tbaa !21
  %i.baf = xor i8 %i.bae, %i.bac
  store i8 %i.baf, ptr %i.azy, align 1, !tbaa !21
  %i.bag = getelementptr inbounds nuw i8, ptr %0, i64 139
  %i.bah = load i8, ptr %i.bab, align 2, !tbaa !21
  %i.bai = getelementptr inbounds nuw i8, ptr %0, i64 267 ; 2 uses
  %i.baj = load i8, ptr %i.bad, align 2, !tbaa !21
  %i.bak = xor i8 %i.baj, %i.bah
  store i8 %i.bak, ptr %i.bad, align 2, !tbaa !21
  %i.bal = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.bam = load i8, ptr %i.bag, align 1, !tbaa !21
  %i.ban = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.bao = load i8, ptr %i.bai, align 1, !tbaa !21
  %i.bap = xor i8 %i.bao, %i.bam
  store i8 %i.bap, ptr %i.bai, align 1, !tbaa !21
  %i.baq = getelementptr inbounds nuw i8, ptr %0, i64 141
  %i.bar = load i8, ptr %i.bal, align 4, !tbaa !21
  %i.bas = getelementptr inbounds nuw i8, ptr %0, i64 269 ; 2 uses
  %i.bat = load i8, ptr %i.ban, align 4, !tbaa !21
  %i.bau = xor i8 %i.bat, %i.bar
  store i8 %i.bau, ptr %i.ban, align 4, !tbaa !21
  %i.bav = getelementptr inbounds nuw i8, ptr %0, i64 142
  %i.baw = load i8, ptr %i.baq, align 1, !tbaa !21
  %i.bax = getelementptr inbounds nuw i8, ptr %0, i64 270 ; 2 uses
  %i.bay = load i8, ptr %i.bas, align 1, !tbaa !21
  %i.baz = xor i8 %i.bay, %i.baw
  store i8 %i.baz, ptr %i.bas, align 1, !tbaa !21
  %i.bba = getelementptr inbounds nuw i8, ptr %0, i64 143
  %i.bbb = load i8, ptr %i.bav, align 2, !tbaa !21
  %i.bbc = getelementptr inbounds nuw i8, ptr %0, i64 271 ; 2 uses
  %i.bbd = load i8, ptr %i.bax, align 2, !tbaa !21
  %i.bbe = xor i8 %i.bbd, %i.bbb
  store i8 %i.bbe, ptr %i.bax, align 2, !tbaa !21
  %i.bbf = load i8, ptr %i.bba, align 1, !tbaa !21
  %i.bbg = load i8, ptr %i.bbc, align 1, !tbaa !21
  %i.bbh = xor i8 %i.bbg, %i.bbf
  store i8 %i.bbh, ptr %i.bbc, align 1, !tbaa !21
  br label %xorbuf.exit383.preheader

xorbuf.exit383.preheader:                         ; preds = %.lr.ph.i32.i374, %vector.body1560, %.lr.ph56.i357, %middle.block1541, %.lr.ph.i.i381.preheader
  br label %xorbuf.exit383

xorbuf.exit383:                                   ; preds = %xorbuf.exit383.preheader, %xorbuf.exit383
  %indvars.iv = phi i64 [ %indvars.iv.next, %xorbuf.exit383 ], [ 0, %xorbuf.exit383.preheader ] ; 2 uses
  %i.bbi = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 20 uses
  %i.bbj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 256
  %i.bbk = getelementptr i8, ptr %i.bbi, i64 15
  %i.bbl = getelementptr i8, ptr %i.bbi, i64 14
  %i.bbm = load i8, ptr %i.bbl, align 1, !tbaa !21 ; 2 uses
  %i.bbn = load i8, ptr %i.bbk, align 1, !tbaa !21
  %i.bbo = tail call i8 @llvm.fshl.i8(i8 %i.bbm, i8 %i.bbn, i8 4)
  %i.bbp = getelementptr inbounds nuw i8, ptr %i.bbi, i64 271
  store i8 %i.bbo, ptr %i.bbp, align 1, !tbaa !21
  %i.bbq = getelementptr i8, ptr %i.bbi, i64 13
  %i.bbr = load i8, ptr %i.bbq, align 1, !tbaa !21 ; 2 uses
  %i.bbs = tail call i8 @llvm.fshl.i8(i8 %i.bbr, i8 %i.bbm, i8 4)
  %i.bbt = getelementptr inbounds nuw i8, ptr %i.bbi, i64 270
  store i8 %i.bbs, ptr %i.bbt, align 1, !tbaa !21
  %i.bbu = getelementptr i8, ptr %i.bbi, i64 12
  %i.bbv = load i8, ptr %i.bbu, align 1, !tbaa !21 ; 2 uses
  %i.bbw = tail call i8 @llvm.fshl.i8(i8 %i.bbv, i8 %i.bbr, i8 4)
  %i.bbx = getelementptr inbounds nuw i8, ptr %i.bbi, i64 269
  store i8 %i.bbw, ptr %i.bbx, align 1, !tbaa !21
  %i.bby = getelementptr i8, ptr %i.bbi, i64 11
  %i.bbz = load i8, ptr %i.bby, align 1, !tbaa !21 ; 2 uses
  %i.bca = tail call i8 @llvm.fshl.i8(i8 %i.bbz, i8 %i.bbv, i8 4)
  %i.bcb = getelementptr inbounds nuw i8, ptr %i.bbi, i64 268
  store i8 %i.bca, ptr %i.bcb, align 1, !tbaa !21
  %i.bcc = getelementptr i8, ptr %i.bbi, i64 10
  %i.bcd = load i8, ptr %i.bcc, align 1, !tbaa !21 ; 2 uses
  %i.bce = tail call i8 @llvm.fshl.i8(i8 %i.bcd, i8 %i.bbz, i8 4)
  %i.bcf = getelementptr inbounds nuw i8, ptr %i.bbi, i64 267
  store i8 %i.bce, ptr %i.bcf, align 1, !tbaa !21
  %i.bcg = getelementptr i8, ptr %i.bbi, i64 9
  %i.bch = load i8, ptr %i.bcg, align 1, !tbaa !21 ; 2 uses
  %i.bci = tail call i8 @llvm.fshl.i8(i8 %i.bch, i8 %i.bcd, i8 4)
  %i.bcj = getelementptr inbounds nuw i8, ptr %i.bbi, i64 266
  store i8 %i.bci, ptr %i.bcj, align 1, !tbaa !21
  %i.bck = getelementptr i8, ptr %i.bbi, i64 8
  %i.bcl = getelementptr inbounds nuw i8, ptr %i.bbi, i64 265
  %i.bcm = getelementptr i8, ptr %i.bbi, i64 1
  %i.bcn = getelementptr inbounds nuw i8, ptr %i.bbi, i64 257
  %i.bco = load i8, ptr %i.bck, align 1, !tbaa !21
  %i.bcp = load <8 x i8>, ptr %i.bcm, align 1, !tbaa !21
  %i.bcq = tail call i8 @llvm.fshl.i8(i8 %i.bco, i8 %i.bch, i8 4)
  store i8 %i.bcq, ptr %i.bcl, align 1, !tbaa !21
  %i.bcr = load <8 x i8>, ptr %i.bbi, align 1, !tbaa !21
  %i.bcs = load i8, ptr %i.bbi, align 1, !tbaa !21
  %i.bct = tail call <8 x i8> @llvm.fshl.v8i8(<8 x i8> %i.bcr, <8 x i8> %i.bcp, <8 x i8> splat (i8 4))
  store <8 x i8> %i.bct, ptr %i.bcn, align 1, !tbaa !21
  %i.bcu = lshr i8 %i.bcs, 4
  store i8 %i.bcu, ptr %i.bbj, align 1, !tbaa !21
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.m, label %xorbuf.exit383, !llvm.loop !152

bb.m:                                             ; preds = %xorbuf.exit383
  ret void
}

; Function Attrs: norecurse nounwind uwtable
define range(i32 -226, 1) i32 @wc_AesGcmSetKey(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  switch i32 %2, label %bb.f [
    i32 32, label %bb.b
    i32 24, label %bb.b
    i32 16, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a
  %i.b = icmp eq ptr %0, null
  %i.c = icmp eq ptr %1, null
  %or.cond5 = or i1 %i.b, %i.c
  br i1 %or.cond5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = call i32 @wc_AesSetKey(ptr noundef nonnull %0, ptr noundef nonnull %1, i32 noundef %2, ptr noundef nonnull %i.a, i32 noundef 0) ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.g = call fastcc i32 @AesEncrypt_preFetchOpt(ptr noundef %0, ptr noundef %i.a, ptr noundef %i.f, ptr noundef @always_prefetch) ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @GenerateM0(ptr noundef nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b, %bb.a
  %.019 = phi i32 [ -173, %bb.a ], [ -173, %bb.b ], [ 0, %bb.e ], [ %i.g, %bb.d ], [ %i.d, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.019
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @GHASH(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nofree noundef writeonly captures(none) %5, i32 noundef %6) local_unnamed_addr #7 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 24 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.d = icmp ne i32 %2, 0
  %i.e = icmp ne ptr %1, null
  %or.cond = and i1 %i.e, %i.d
  br i1 %or.cond, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.f = lshr i32 %2, 4                           ; 2 uses
  %i.g = and i32 %2, 15                           ; 2 uses
  %.not254 = icmp eq i32 %i.f, 0
  br i1 %.not254, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %GMULT.exit
  %i.j = phi i64 [ 0, %.lr.ph ], [ %i.cs, %GMULT.exit ]
  %i.k = phi i64 [ 0, %.lr.ph ], [ %i.cw, %GMULT.exit ]
  %.0256 = phi i32 [ %i.f, %.lr.ph ], [ %i.n, %GMULT.exit ]
  %.032255 = phi ptr [ %1, %.lr.ph ], [ %i.bw, %GMULT.exit ] ; 5 uses
  %i.l = phi <8 x i8> [ zeroinitializer, %.lr.ph ], [ %i.dt, %GMULT.exit ]
  %i.m = phi <8 x i8> [ zeroinitializer, %.lr.ph ], [ %i.du, %GMULT.exit ]
  %i.n = add nsw i32 %.0256, -1                   ; 2 uses
  %i.o = ptrtoint ptr %.032255 to i64
  %i.p = and i64 %i.o, 7
  %or.cond.i = icmp eq i64 %i.p, 0
  br i1 %or.cond.i, label %.lr.ph.i.i.preheader, label %.lr.ph56.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %i.q = load i64, ptr %.032255, align 8, !tbaa !20
  %i.r = xor i64 %i.k, %i.q                       ; 2 uses
  store i64 %i.r, ptr %i.a, align 16, !tbaa !20
  %.ptr219.1 = getelementptr inbounds nuw i8, ptr %.032255, i64 8
  %i.s = load i64, ptr %.ptr219.1, align 8, !tbaa !20
  %i.t = xor i64 %i.j, %i.s
  store i64 %i.t, ptr %i.i, align 8, !tbaa !20
  %i.u = trunc i64 %i.r to i8
  br label %xorbuf.exit

.lr.ph56.i.preheader:                             ; preds = %bb.d
  %i.v = load <16 x i8>, ptr %.032255, align 1, !tbaa !21
  %i.w = shufflevector <8 x i8> %i.l, <8 x i8> %i.m, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.x = xor <16 x i8> %i.w, %i.v                 ; 2 uses
  store <16 x i8> %i.x, ptr %i.a, align 16, !tbaa !21
  %i.y = extractelement <16 x i8> %i.x, i64 0
  br label %xorbuf.exit

xorbuf.exit:                                      ; preds = %.lr.ph56.i.preheader, %.lr.ph.i.i.preheader
  %i.z = phi i8 [ %i.y, %.lr.ph56.i.preheader ], [ %i.u, %.lr.ph.i.i.preheader ]
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %xorbuf.exit
  %indvars.iv.i = phi i64 [ 15, %xorbuf.exit ], [ %indvars.iv.next.i, %bb.e ] ; 3 uses
  %.sroa.24.068.i = phi i64 [ 0, %xorbuf.exit ], [ %i.aw, %bb.e ]
  %.sroa.0.067.i = phi i64 [ 0, %xorbuf.exit ], [ %i.bl, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !21
  %i.ac = zext i8 %i.ab to i32                    ; 2 uses
  %i.ad = and i32 %i.ac, 15
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ae ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !20
  %i.ah = xor i64 %i.ag, %.sroa.0.067.i           ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !20
  %i.ak = xor i64 %i.aj, %.sroa.24.068.i          ; 3 uses
  %i.al = lshr i64 %i.ak, 56
  %i.am = tail call i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ah, i64 8)
  %i.an = shl i64 %i.ah, 8
  %i.ao = lshr i32 %i.ac, 4
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.ap ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 256
  %i.as = getelementptr inbounds nuw i8, ptr %i.aq, i64 264
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !20
  %i.au = xor i64 %i.an, %i.at
  %i.av = load i64, ptr %i.as, align 8, !tbaa !20
  %i.aw = xor i64 %i.am, %i.av                    ; 2 uses
  %i.ax = and i64 %i.al, 15
  %i.ay = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.ax
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.ba = load i16, ptr %i.az, align 2, !tbaa !201
  %i.bb = zext i16 %i.ba to i64
  %i.bc = xor i64 %i.au, %i.bb
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !20
  %i.bf = lshr i64 %i.be, 56
  %i.bg = lshr i64 %i.ak, 60
  %.masked.i = and i64 %i.bf, 15
  %i.bh = xor i64 %.masked.i, %i.bg
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.bh
  %i.bj = load i16, ptr %i.bi, align 2, !tbaa !201
  %i.bk = zext i16 %i.bj to i64
  %i.bl = xor i64 %i.bc, %i.bk                    ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %i.bm = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bm, label %bb.e, label %GMULT.exit, !llvm.loop !197

GMULT.exit:                                       ; preds = %bb.e
  %i.bn = zext i8 %i.z to i32                     ; 2 uses
  %i.bo = and i32 %i.bn, 15
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bp ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = lshr i32 %i.bn, 4
  %i.bt = zext nneg i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.h, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %.032255, i64 16 ; 2 uses
  %.not = icmp eq i32 %i.n, 0
  %i.bx = load i64, ptr %i.bq, align 8, !tbaa !20
  %i.by = xor i64 %i.bx, %i.bl                    ; 2 uses
  %i.bz = load i64, ptr %i.br, align 8, !tbaa !20
  %i.ca = xor i64 %i.bz, %i.aw                    ; 3 uses
  %i.cb = lshr i64 %i.ca, 56
  %i.cc = and i64 %i.cb, 15
  %i.cd = and i64 %i.by, 1085102592571150095      ; 2 uses
  %i.ce = lshr i64 %i.ca, 4
  %i.cf = and i64 %i.ce, 1085102592571150095
  %i.cg = shl i64 %i.ca, 12
  %i.ch = and i64 %i.cg, -1085102592571150336
  %i.ci = lshr i64 %i.cd, 52
  %i.cj = or disjoint i64 %i.ch, %i.ci
  %i.ck = or disjoint i64 %i.cj, %i.cf
  %i.cl = lshr i64 %i.by, 4
  %i.cm = and i64 %i.cl, 1085102592571150095
  %i.cn = shl i64 %i.cd, 12
  %i.co = or disjoint i64 %i.cm, %i.cn
  %i.cp = load i64, ptr %i.bu, align 8, !tbaa !20
  %i.cq = xor i64 %i.co, %i.cp                    ; 7 uses
  %i.cr = load i64, ptr %i.bv, align 8, !tbaa !20
  %i.cs = xor i64 %i.ck, %i.cr                    ; 12 uses
  %i.ct = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.cc
  %i.cu = load i16, ptr %i.ct, align 2, !tbaa !201
  %i.cv = zext i16 %i.cu to i64
  %i.cw = xor i64 %i.cq, %i.cv                    ; 5 uses
  store i64 %i.cw, ptr %i.a, align 16, !tbaa !20
  store i64 %i.cs, ptr %i.i, align 8, !tbaa !20
  %i.cx = trunc i64 %i.cw to i8                   ; 2 uses
  %i.cy = lshr i64 %i.cw, 8
  %i.cz = trunc i64 %i.cy to i8                   ; 2 uses
  %i.da = lshr i64 %i.cq, 16
  %i.db = trunc i64 %i.da to i8                   ; 2 uses
  %i.dc = lshr i64 %i.cq, 24
  %i.dd = trunc i64 %i.dc to i8                   ; 2 uses
  %i.de = lshr i64 %i.cq, 32
  %i.df = trunc i64 %i.de to i8                   ; 2 uses
  %i.dg = lshr i64 %i.cq, 40
  %i.dh = trunc i64 %i.dg to i8                   ; 2 uses
  %i.di = lshr i64 %i.cq, 48
  %i.dj = trunc i64 %i.di to i8                   ; 2 uses
  %i.dk = lshr i64 %i.cq, 56
  %i.dl = trunc nuw i64 %i.dk to i8               ; 2 uses
  %i.dm = insertelement <8 x i8> poison, i8 %i.cx, i64 0
  %i.dn = insertelement <8 x i8> %i.dm, i8 %i.cz, i64 1
  %i.do = insertelement <8 x i8> %i.dn, i8 %i.db, i64 2
  %i.dp = insertelement <8 x i8> %i.do, i8 %i.dd, i64 3
  %i.dq = insertelement <8 x i8> %i.dp, i8 %i.df, i64 4
  %i.dr = insertelement <8 x i8> %i.dq, i8 %i.dh, i64 5
  %i.ds = insertelement <8 x i8> %i.dr, i8 %i.dj, i64 6
  %i.dt = insertelement <8 x i8> %i.ds, i8 %i.dl, i64 7
  %i.du = bitcast i64 %i.cs to <8 x i8>
  br i1 %.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !198

._crit_edge.loopexit:                             ; preds = %GMULT.exit
  %i.dv = lshr i64 %i.cs, 56
  %i.dw = trunc nuw i64 %i.dv to i8
  %i.dx = lshr i64 %i.cs, 48
  %i.dy = trunc i64 %i.dx to i8
  %i.dz = lshr i64 %i.cs, 40
  %i.ea = trunc i64 %i.dz to i8
  %i.eb = lshr i64 %i.cs, 32
  %i.ec = trunc i64 %i.eb to i8
  %i.ed = lshr i64 %i.cs, 24
  %i.ee = trunc i64 %i.ed to i8
  %i.ef = lshr i64 %i.cs, 16
  %i.eg = trunc i64 %i.ef to i8
  %i.eh = lshr i64 %i.cs, 8
  %i.ei = trunc i64 %i.eh to i8
  %i.ej = trunc i64 %i.cs to i8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.c
  %i.ek = phi i8 [ 0, %bb.c ], [ %i.dw, %._crit_edge.loopexit ]
  %i.el = phi i8 [ 0, %bb.c ], [ %i.dy, %._crit_edge.loopexit ]
  %i.em = phi i8 [ 0, %bb.c ], [ %i.ea, %._crit_edge.loopexit ]
  %i.en = phi i8 [ 0, %bb.c ], [ %i.ec, %._crit_edge.loopexit ]
  %i.eo = phi i8 [ 0, %bb.c ], [ %i.ee, %._crit_edge.loopexit ]
  %i.ep = phi i8 [ 0, %bb.c ], [ %i.eg, %._crit_edge.loopexit ]
  %i.eq = phi i8 [ 0, %bb.c ], [ %i.ei, %._crit_edge.loopexit ]
  %i.er = phi i8 [ 0, %bb.c ], [ %i.ej, %._crit_edge.loopexit ]
  %i.es = phi i8 [ 0, %bb.c ], [ %i.dl, %._crit_edge.loopexit ]
end_hunk_0
begin_hunk_1_@GHASH:bb.a
  %i.mo = xor i64 %i.mg, %i.mn
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mq = load i64, ptr %i.mp, align 8, !tbaa !20
  %i.mr = lshr i64 %i.mq, 56
  %i.ms = lshr i64 %i.lw, 60
  %.masked.i117 = and i64 %i.mr, 15
  %i.mt = xor i64 %.masked.i117, %i.ms
  %i.mu = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.mt
  %i.mv = load i16, ptr %i.mu, align 2, !tbaa !201
  %i.mw = zext i16 %i.mv to i64
  %i.mx = xor i64 %i.mo, %i.mw                    ; 2 uses
  %indvars.iv.next.i118 = add nsw i64 %indvars.iv.i114, -1
  %i.my = icmp samesign ugt i64 %indvars.iv.i114, 1
  br i1 %i.my, label %bb.j, label %GMULT.exit119, !llvm.loop !197

GMULT.exit119:                                    ; preds = %bb.j
  %i.mz = zext i8 %i.ll to i32                    ; 2 uses
  %i.na = and i32 %i.mz, 15
  %i.nb = zext nneg i32 %i.na to i64
  %i.nc = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.nb ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %i.nc, i64 8
  %i.ne = lshr i32 %i.mz, 4
  %i.nf = zext nneg i32 %i.ne to i64
  %i.ng = getelementptr inbounds nuw [16 x i8], ptr %i.jy, i64 %i.nf ; 2 uses
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 8
  %i.ni = getelementptr inbounds nuw i8, ptr %.033258, i64 16 ; 2 uses
  %.not42 = icmp eq i32 %i.ks, 0
  %i.nj = load i64, ptr %i.nc, align 8, !tbaa !20
  %i.nk = xor i64 %i.nj, %i.mx                    ; 2 uses
  %i.nl = load i64, ptr %i.nd, align 8, !tbaa !20
  %i.nm = xor i64 %i.nl, %i.mi                    ; 3 uses
  %i.nn = lshr i64 %i.nm, 56
  %i.no = and i64 %i.nn, 15
  %i.np = and i64 %i.nk, 1085102592571150095      ; 2 uses
  %i.nq = lshr i64 %i.nm, 4
  %i.nr = and i64 %i.nq, 1085102592571150095
  %i.ns = shl i64 %i.nm, 12
  %i.nt = and i64 %i.ns, -1085102592571150336
  %i.nu = lshr i64 %i.np, 52
  %i.nv = or disjoint i64 %i.nt, %i.nu
  %i.nw = or disjoint i64 %i.nv, %i.nr
  %i.nx = lshr i64 %i.nk, 4
  %i.ny = and i64 %i.nx, 1085102592571150095
  %i.nz = shl i64 %i.np, 12
  %i.oa = or disjoint i64 %i.ny, %i.nz
  %i.ob = load i64, ptr %i.ng, align 8, !tbaa !20
  %i.oc = xor i64 %i.oa, %i.ob                    ; 7 uses
  %i.od = load i64, ptr %i.nh, align 8, !tbaa !20
  %i.oe = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.no
  %i.of = load i16, ptr %i.oe, align 2, !tbaa !201
  %i.og = zext i16 %i.of to i64
  %i.oh = xor i64 %i.oc, %i.og                    ; 5 uses
  store i64 %i.oh, ptr %i.a, align 16, !tbaa !20
  %i.oi = trunc i64 %i.oh to i8
  %i.oj = xor i64 %i.nw, %i.od                    ; 8 uses
  store i64 %i.oj, ptr %i.jz, align 8, !tbaa !20
  %i.ok = lshr i64 %i.oh, 8
  %i.ol = trunc i64 %i.ok to i8
  %i.om = lshr i64 %i.oc, 16
  %i.on = trunc i64 %i.om to i8
  %i.oo = lshr i64 %i.oc, 24
  %i.op = trunc i64 %i.oo to i8
  %i.oq = lshr i64 %i.oc, 32
  %i.or = trunc i64 %i.oq to i8
  %i.os = lshr i64 %i.oc, 40
  %i.ot = trunc i64 %i.os to i8
  %i.ou = lshr i64 %i.oc, 48
  %i.ov = trunc i64 %i.ou to i8
  %i.ow = lshr i64 %i.oc, 56
  %i.ox = trunc nuw i64 %i.ow to i8
  %i.oy = trunc i64 %i.oj to i8
  %i.oz = lshr i64 %i.oj, 40
  %i.pa = trunc i64 %i.oz to i8
  %i.pb = lshr i64 %i.oj, 48
  %i.pc = trunc i64 %i.pb to i8
  %i.pd = lshr i64 %i.oj, 56
  %i.pe = trunc nuw i64 %i.pd to i8
  %i.pf = insertelement <8 x i8> poison, i8 %i.ol, i64 0
  %i.pg = insertelement <8 x i8> %i.pf, i8 %i.on, i64 1
  %i.ph = insertelement <8 x i8> %i.pg, i8 %i.op, i64 2
  %i.pi = insertelement <8 x i8> %i.ph, i8 %i.or, i64 3
  %i.pj = insertelement <8 x i8> %i.pi, i8 %i.ot, i64 4
  %i.pk = insertelement <8 x i8> %i.pj, i8 %i.ov, i64 5
  %i.pl = insertelement <8 x i8> %i.pk, i8 %i.ox, i64 6
  %i.pm = insertelement <8 x i8> %i.pl, i8 %i.oy, i64 7
  %i.pn = bitcast i64 %i.oj to <8 x i8>
  %i.po = shufflevector <8 x i8> %i.pn, <8 x i8> poison, <4 x i32> <i32 1, i32 2, i32 3, i32 4>
  br i1 %.not42, label %._crit_edge262, label %bb.i, !llvm.loop !199

._crit_edge262:                                   ; preds = %GMULT.exit119, %bb.h
  %i.pp = phi i64 [ %i.jf, %bb.h ], [ %i.oj, %GMULT.exit119 ] ; 2 uses
  %i.pq = phi i64 [ %i.jg, %bb.h ], [ %i.oh, %GMULT.exit119 ] ; 2 uses
  %.033.lcssa = phi ptr [ %3, %bb.h ], [ %i.ni, %GMULT.exit119 ]
  %.not43 = icmp eq i32 %i.jx, 0
  br i1 %.not43, label %.lr.ph.i.i187, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %._crit_edge262
  %i.pr = zext nneg i32 %i.jx to i64              ; 3 uses
  %i.ps = sub nuw nsw i64 16, %i.pr
  %i.pt = getelementptr i8, ptr %i.b, i64 %i.pr
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.pt, i8 0, i64 %i.ps, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %.033.lcssa, i64 %i.pr, i1 false)
  %.0.279 = load i64, ptr %i.b, align 16, !tbaa !20
  %i.pu = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.pv = xor i64 %i.pq, %.0.279                  ; 3 uses
  store i64 %i.pv, ptr %i.a, align 16, !tbaa !20
  %.8..ptr235.1.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.8.281 = load i64, ptr %.8..ptr235.1.sroa_idx, align 8, !tbaa !20
  %i.pw = xor i64 %i.pp, %.8.281
  store i64 %i.pw, ptr %i.pu, align 8, !tbaa !20
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i149
  %indvars.iv.i152 = phi i64 [ 15, %.lr.ph.i.i149 ], [ %indvars.iv.next.i156, %bb.k ] ; 3 uses
  %.sroa.24.068.i153 = phi i64 [ 0, %.lr.ph.i.i149 ], [ %i.qu, %bb.k ]
  %.sroa.0.067.i154 = phi i64 [ 0, %.lr.ph.i.i149 ], [ %i.rj, %bb.k ]
  %i.py = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i152
  %i.pz = load i8, ptr %i.py, align 1, !tbaa !21
  %i.qa = zext i8 %i.pz to i32                    ; 2 uses
  %i.qb = and i32 %i.qa, 15
  %i.qc = zext nneg i32 %i.qb to i64
  %i.qd = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.qc ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !tbaa !20
  %i.qf = xor i64 %i.qe, %.sroa.0.067.i154        ; 2 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qh = load i64, ptr %i.qg, align 8, !tbaa !20
  %i.qi = xor i64 %i.qh, %.sroa.24.068.i153       ; 3 uses
  %i.qj = lshr i64 %i.qi, 56
  %i.qk = tail call i64 @llvm.fshl.i64(i64 %i.qi, i64 %i.qf, i64 8)
  %i.ql = shl i64 %i.qf, 8
  %i.qm = lshr i32 %i.qa, 4
  %i.qn = zext nneg i32 %i.qm to i64
  %i.qo = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.qn ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qo, i64 256
  %i.qq = load i64, ptr %i.qp, align 8, !tbaa !20
  %i.qr = xor i64 %i.ql, %i.qq
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qo, i64 264
  %i.qt = load i64, ptr %i.qs, align 8, !tbaa !20
  %i.qu = xor i64 %i.qk, %i.qt                    ; 2 uses
  %i.qv = and i64 %i.qj, 15
  %i.qw = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.qv
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 32
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !201
  %i.qz = zext i16 %i.qy to i64
  %i.ra = xor i64 %i.qr, %i.qz
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qo, i64 8
  %i.rc = load i64, ptr %i.rb, align 8, !tbaa !20
  %i.rd = lshr i64 %i.rc, 56
  %i.re = lshr i64 %i.qi, 60
  %.masked.i155 = and i64 %i.rd, 15
  %i.rf = xor i64 %.masked.i155, %i.re
  %i.rg = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.rf
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !201
  %i.ri = zext i16 %i.rh to i64
  %i.rj = xor i64 %i.ra, %i.ri                    ; 2 uses
  %indvars.iv.next.i156 = add nsw i64 %indvars.iv.i152, -1
  %i.rk = icmp samesign ugt i64 %indvars.iv.i152, 1
  br i1 %i.rk, label %bb.k, label %GMULT.exit157, !llvm.loop !197

GMULT.exit157:                                    ; preds = %bb.k
  %i.rl = and i64 %i.pv, 15
  %i.rm = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.rl ; 2 uses
  %i.rn = load i64, ptr %i.rm, align 8, !tbaa !20
  %i.ro = xor i64 %i.rn, %i.rj                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.rm, i64 8
  %i.rq = load i64, ptr %i.rp, align 8, !tbaa !20
  %i.rr = xor i64 %i.rq, %i.qu                    ; 3 uses
  %i.rs = lshr i64 %i.rr, 56
  %i.rt = and i64 %i.rs, 15
  %i.ru = and i64 %i.ro, 1085102592571150095      ; 2 uses
  %i.rv = lshr i64 %i.rr, 4
  %i.rw = and i64 %i.rv, 1085102592571150095
  %i.rx = shl i64 %i.rr, 12
  %i.ry = and i64 %i.rx, -1085102592571150336
  %i.rz = lshr i64 %i.ru, 52
  %i.sa = or disjoint i64 %i.ry, %i.rz
  %i.sb = or disjoint i64 %i.sa, %i.rw
  %i.sc = lshr i64 %i.ro, 4
  %i.sd = and i64 %i.sc, 1085102592571150095
  %i.se = shl i64 %i.ru, 12
  %i.sf = or disjoint i64 %i.sd, %i.se
  %i.sg = lshr i64 %i.pv, 4
  %i.sh = and i64 %i.sg, 15
  %i.si = getelementptr inbounds nuw [16 x i8], ptr %i.px, i64 %i.sh ; 2 uses
  %i.sj = load i64, ptr %i.si, align 8, !tbaa !20
  %i.sk = xor i64 %i.sf, %i.sj
  %i.sl = getelementptr inbounds nuw i8, ptr %i.si, i64 8
  %i.sm = load i64, ptr %i.sl, align 8, !tbaa !20
  %i.sn = xor i64 %i.sb, %i.sm
  %i.so = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.rt
  %i.sp = load i16, ptr %i.so, align 2, !tbaa !201
  %i.sq = zext i16 %i.sp to i64
  %i.sr = xor i64 %i.sk, %i.sq
  br label %.lr.ph.i.i187

.lr.ph.i.i187:                                    ; preds = %._crit_edge262, %GMULT.exit157, %bb.g
  %i.ss = phi i64 [ %i.pp, %._crit_edge262 ], [ %i.sn, %GMULT.exit157 ], [ %i.jf, %bb.g ]
  %i.st = phi i64 [ %i.pq, %._crit_edge262 ], [ %i.sr, %GMULT.exit157 ], [ %i.jg, %bb.g ]
  %i.su = lshr i32 %2, 29
  %i.sv = shl i32 %2, 3
  store i8 0, ptr %i.b, align 16, !tbaa !21
  %.1..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 0, ptr %.1..sroa_idx, align 1, !tbaa !21
  %.2..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 0, ptr %.2..sroa_idx, align 2, !tbaa !21
  %i.sw = trunc nuw nsw i32 %i.su to i8
  %.3..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.sw, ptr %.3..sroa_idx, align 1, !tbaa !21
  %.4..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %i.sv)
  store i32 %7, ptr %.4..sroa_idx, align 4, !tbaa !21
  %i.sx = lshr i32 %4, 29
  %i.sy = shl i32 %4, 3
  %.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 0, ptr %.8..sroa_idx, align 8, !tbaa !21
  %.9..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 9
  store i8 0, ptr %.9..sroa_idx, align 1, !tbaa !21
  %.10..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 0, ptr %.10..sroa_idx, align 2, !tbaa !21
  %i.sz = trunc nuw nsw i32 %i.sx to i8
  %.11..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.sz, ptr %.11..sroa_idx, align 1, !tbaa !21
  %.12..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %8 = tail call i32 @llvm.bswap.i32(i32 %i.sy)
  store i32 %8, ptr %.12..sroa_idx, align 4, !tbaa !21
  %.0.280 = load i64, ptr %i.b, align 16, !tbaa !20
  %i.ta = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.tb = xor i64 %i.st, %.0.280                  ; 3 uses
  store i64 %i.tb, ptr %i.a, align 16, !tbaa !20
  %.8.282 = load i64, ptr %.8..sroa_idx, align 8, !tbaa !20
  %i.tc = xor i64 %i.ss, %.8.282
  store i64 %i.tc, ptr %i.ta, align 8, !tbaa !20
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i187
  %indvars.iv.i190 = phi i64 [ 15, %.lr.ph.i.i187 ], [ %indvars.iv.next.i194, %bb.l ] ; 3 uses
  %.sroa.24.068.i191 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.ua, %bb.l ]
  %.sroa.0.067.i192 = phi i64 [ 0, %.lr.ph.i.i187 ], [ %i.up, %bb.l ]
  %i.te = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.i190
  %i.tf = load i8, ptr %i.te, align 1, !tbaa !21
  %i.tg = zext i8 %i.tf to i32                    ; 2 uses
  %i.th = and i32 %i.tg, 15
  %i.ti = zext nneg i32 %i.th to i64
  %i.tj = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %i.ti ; 2 uses
  %i.tk = load i64, ptr %i.tj, align 8, !tbaa !20
  %i.tl = xor i64 %i.tk, %.sroa.0.067.i192        ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %i.tj, i64 8
  %i.tn = load i64, ptr %i.tm, align 8, !tbaa !20
  %i.to = xor i64 %i.tn, %.sroa.24.068.i191       ; 3 uses
  %i.tp = lshr i64 %i.to, 56
  %i.tq = tail call i64 @llvm.fshl.i64(i64 %i.to, i64 %i.tl, i64 8)
  %i.tr = shl i64 %i.tl, 8
  %i.ts = lshr i32 %i.tg, 4
  %i.tt = zext nneg i32 %i.ts to i64
  %i.tu = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %i.tt ; 3 uses
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tu, i64 256
  %i.tw = load i64, ptr %i.tv, align 8, !tbaa !20
  %i.tx = xor i64 %i.tr, %i.tw
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tu, i64 264
  %i.tz = load i64, ptr %i.ty, align 8, !tbaa !20
  %i.ua = xor i64 %i.tq, %i.tz                    ; 2 uses
  %i.ub = and i64 %i.tp, 15
  %i.uc = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.ub
  %i.ud = getelementptr inbounds nuw i8, ptr %i.uc, i64 32
  %i.ue = load i16, ptr %i.ud, align 2, !tbaa !201
  %i.uf = zext i16 %i.ue to i64
  %i.ug = xor i64 %i.tx, %i.uf
  %i.uh = getelementptr inbounds nuw i8, ptr %i.tu, i64 8
  %i.ui = load i64, ptr %i.uh, align 8, !tbaa !20
  %i.uj = lshr i64 %i.ui, 56
  %i.uk = lshr i64 %i.to, 60
  %.masked.i193 = and i64 %i.uj, 15
  %i.ul = xor i64 %.masked.i193, %i.uk
  %i.um = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.ul
  %i.un = load i16, ptr %i.um, align 2, !tbaa !201
  %i.uo = zext i16 %i.un to i64
  %i.up = xor i64 %i.ug, %i.uo                    ; 2 uses
  %indvars.iv.next.i194 = add nsw i64 %indvars.iv.i190, -1
  %i.uq = icmp samesign ugt i64 %indvars.iv.i190, 1
  br i1 %i.uq, label %bb.l, label %GMULT.exit195, !llvm.loop !197

GMULT.exit195:                                    ; preds = %bb.l
  %i.ur = and i64 %i.tb, 15
  %i.us = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %i.ur ; 2 uses
  %i.ut = load i64, ptr %i.us, align 8, !tbaa !20
  %i.uu = xor i64 %i.ut, %i.up                    ; 2 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uw = load i64, ptr %i.uv, align 8, !tbaa !20
  %i.ux = xor i64 %i.uw, %i.ua                    ; 3 uses
  %i.uy = lshr i64 %i.ux, 56
  %i.uz = and i64 %i.uy, 15
  %i.va = and i64 %i.uu, 1085102592571150095      ; 2 uses
  %i.vb = lshr i64 %i.ux, 4
  %i.vc = and i64 %i.vb, 1085102592571150095
  %i.vd = shl i64 %i.ux, 12
  %i.ve = and i64 %i.vd, -1085102592571150336
  %i.vf = lshr i64 %i.va, 52
  %i.vg = or disjoint i64 %i.ve, %i.vf
  %i.vh = or disjoint i64 %i.vg, %i.vc
  %i.vi = lshr i64 %i.uu, 4
  %i.vj = and i64 %i.vi, 1085102592571150095
  %i.vk = shl i64 %i.va, 12
  %i.vl = or disjoint i64 %i.vj, %i.vk
  %i.vm = lshr i64 %i.tb, 4
  %i.vn = and i64 %i.vm, 15
  %i.vo = getelementptr inbounds nuw [16 x i8], ptr %i.td, i64 %i.vn ; 2 uses
  %i.vp = load i64, ptr %i.vo, align 8, !tbaa !20
  %i.vq = xor i64 %i.vl, %i.vp
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vo, i64 8
  %i.vs = load i64, ptr %i.vr, align 8, !tbaa !20
  %i.vt = xor i64 %i.vh, %i.vs
  %i.vu = getelementptr inbounds nuw [2 x i8], ptr @R, i64 %i.uz
  %i.vv = load i16, ptr %i.vu, align 2, !tbaa !201
  %i.vw = zext i16 %i.vv to i64
  %i.vx = xor i64 %i.vq, %i.vw
  store i64 %i.vx, ptr %i.a, align 16, !tbaa !20
  store i64 %i.vt, ptr %i.ta, align 8, !tbaa !20
  %i.vy = zext i32 %6 to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 16 %i.a, i64 %i.vy, i1 false)
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %GMULT.exit195
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -226, 1) i32 @wc_AesGcmEncrypt(ptr nofree noundef readonly captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4, i32 noundef %5, ptr noundef %6, i32 noundef %7, ptr noundef %8, i32 noundef %9) local_unnamed_addr #6 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 17 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [16 x i8], align 16               ; 37 uses
  %i.d = ptrtoaddr ptr %i.c to i64                ; 7 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = icmp eq ptr %0, null
  %i.g = icmp eq ptr %4, null
  %or.cond = or i1 %i.f, %i.g
  %i.h = icmp eq i32 %5, 0
  %or.cond3 = or i1 %or.cond, %i.h
  br i1 %or.cond3, label %bb.x, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq ptr %2, null
  %i.j = icmp eq ptr %1, null
  %or.cond5 = or i1 %i.j, %i.i
  %i.k = icmp eq ptr %6, null
  %or.cond7 = or i1 %or.cond5, %i.k
  %i.l = icmp ugt i32 %7, 16
  %or.cond36 = or i1 %or.cond7, %i.l
  br i1 %or.cond36, label %bb.x, label %bb.e

bb.d:                                             ; preds = %bb.b
  %.old6 = icmp eq ptr %6, null
  %.old = icmp ugt i32 %7, 16
  %or.cond37 = or i1 %.old6, %.old
  br i1 %or.cond37, label %bb.x, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = icmp ne i32 %9, 0
  %i.n = icmp eq ptr %8, null
  %or.cond10 = and i1 %i.n, %i.m
  %i.o = icmp samesign ult i32 %7, 12
  %or.cond39 = or i1 %i.o, %or.cond10
  br i1 %or.cond39, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = lshr i32 %3, 4                           ; 2 uses
  %i.q = and i32 %3, 15                           ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  store i32 0, ptr %i.e, align 4, !tbaa !15
  %i.r = icmp eq i32 %5, 12
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) %4, i64 12, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %i.s, i8 0, i64 3, i1 false)
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 15
  store i8 1, ptr %i.t, align 1, !tbaa !21
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void @GHASH(ptr noundef nonnull readonly %i.u, ptr noundef null, i32 noundef 0, ptr noundef nonnull %4, i32 noundef range(i32 1, 0) %5, ptr noundef nonnull %i.a, i32 noundef 16)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  %.not145.i = icmp eq i32 %i.p, 0
  br i1 %.not145.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 15 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 14 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 13 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %.ptr.1.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.promoted.i = load i8, ptr %i.v, align 1, !tbaa !21
  %.promoted201.i = load i8, ptr %i.w, align 2
  %.promoted202.i = load i8, ptr %i.x, align 1
  %.promoted203.i = load i8, ptr %i.y, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  %i.ak = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 13
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 14
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 15
end_hunk_1
