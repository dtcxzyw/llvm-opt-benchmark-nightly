Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lorem?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@LOREM_genBlock:bb.a
  %i.ig = phi i64 [ %i.jp, %generateWord.exit.i ], [ %.ph182, %.peel.next60.preheader ] ; 9 uses
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr @g_words, i64 %indvars.iv.i
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !20 ; 2 uses
  %i.ij = getelementptr inbounds nuw [4 x i8], ptr @g_wordLen, i64 %indvars.iv.i
  %i.ik = load i32, ptr %i.ij, align 4, !tbaa !21
  %i.il = zext i32 %i.ik to i64                   ; 4 uses
  %i.im = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.il, i64 14)
  %i.in = add i64 %i.ig, 2
  %i.io = add i64 %i.in, %i.im
  %i.ip = icmp ugt i64 %i.io, %1
  br i1 %i.ip, label %bb.aq, label %bb.ax

bb.aq:                                            ; preds = %.peel.next60
  %i.iq = add i64 %i.ig, %i.il                    ; 5 uses
  %i.ir = add i64 %i.iq, 2
  %i.is = icmp ugt i64 %i.ir, %1
  br i1 %i.is, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.it = sub i64 %1, %i.ig                       ; 3 uses
  %i.iu = icmp eq i64 %1, %i.ig
  br i1 %i.iu, label %generateWord.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  store i8 46, ptr %i.iv, align 1, !tbaa !25
  %i.iw = icmp ugt i64 %i.it, 2
  br i1 %i.iw, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ix = icmp eq i64 %i.it, 2
  br i1 %i.ix, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i, label %generateWord.exit.i

bb.au:                                            ; preds = %bb.aq
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.iy, ptr readonly align 1 %i.ii, i64 range(i64 0, 4294967296) %i.il, i1 false)
  %i.iz = sub i64 %1, %i.iq                       ; 3 uses
  %i.ja = icmp eq i64 %1, %i.iq
  br i1 %i.ja, label %generateWord.exit.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 %i.iq
  store i8 46, ptr %i.jb, align 1, !tbaa !25
  %i.jc = icmp ugt i64 %i.iz, 2
  br i1 %i.jc, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.jd = icmp eq i64 %i.iz, 2
  br i1 %i.jd, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i, label %generateWord.exit.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i: ; preds = %bb.av, %bb.as
  %i.je = phi i64 [ %i.ig, %bb.as ], [ %i.iq, %bb.av ]
  %.sink14.i.i.i = phi i64 [ %i.it, %bb.as ], [ %i.iz, %bb.av ]
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 1
  %i.jh = add i64 %.sink14.i.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 32, i64 %i.jh, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i, %bb.aw, %bb.at
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %generateWord.exit.i

bb.ax:                                            ; preds = %.peel.next60
  %i.ji = icmp eq i64 %indvars.iv.i, 7            ; 2 uses
  %.1.i = select i1 %i.ji, i64 2, i64 1
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ig
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.jj, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.ii, i64 16, i1 false)
  %i.jk = add i64 %i.ig, %i.il                    ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %0, i64 %i.jk
  %i.jm = select i1 %i.ji, i16 8236, i16 32
  store i16 %i.jm, ptr %i.jl, align 1
  %i.jn = add i64 %i.jk, %.1.i                    ; 3 uses
  br label %generateWord.exit.i

generateWord.exit.i:                              ; preds = %bb.at, %bb.aw, %writeLastCharacters.exit.sink.split.sink.split.i.i.i, %bb.ax, %bb.au, %bb.ar
  %g_nbChars.promoted73 = phi i64 [ %g_nbChars.promoted74, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ] ; 2 uses
  %i.jo = phi i64 [ %i.if, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ] ; 10 uses
  %i.jp = phi i64 [ %1, %bb.ar ], [ %1, %bb.au ], [ %i.jn, %bb.ax ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i ], [ %1, %bb.aw ], [ %1, %bb.at ]
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i10 = icmp eq i64 %indvars.iv.next.i, 18
  br i1 %exitcond.not.i10, label %.loopexit.i, label %.peel.next60, !llvm.loop !15

.loopexit.i:                                      ; preds = %generateWord.exit.i
  %i.jq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @g_words, i64 144), align 16, !tbaa !20 ; 2 uses
  %i.jr = load i32, ptr getelementptr inbounds nuw (i8, ptr @g_wordLen, i64 72), align 8, !tbaa !21
  %i.js = zext i32 %i.jr to i64                   ; 4 uses
  %i.jt = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.js, i64 14)
  %i.ju = add i64 %i.jo, 2
  %i.jv = add i64 %i.ju, %i.jt
  %i.jw = icmp ugt i64 %i.jv, %1
  br i1 %i.jw, label %bb.ay, label %bb.bf

bb.ay:                                            ; preds = %.loopexit.i
  %i.jx = add i64 %i.jo, %i.js                    ; 5 uses
  %i.jy = add i64 %i.jx, 2
  %i.jz = icmp ugt i64 %i.jy, %1
  br i1 %i.jz, label %bb.az, label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.ka = sub i64 %1, %i.jo                       ; 3 uses
  %i.kb = icmp eq i64 %1, %i.jo
  br i1 %i.kb, label %generateFirstSentence.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  store i8 46, ptr %i.kc, align 1, !tbaa !25
  %i.kd = icmp ugt i64 %i.ka, 2
  br i1 %i.kd, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ke = icmp eq i64 %i.ka, 2
  br i1 %i.ke, label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, label %generateFirstSentence.exit

bb.bc:                                            ; preds = %bb.ay
  %i.kf = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kf, ptr readonly align 1 %i.jq, i64 range(i64 0, 4294967296) %i.js, i1 false)
  %i.kg = sub i64 %1, %i.jx                       ; 3 uses
  %i.kh = icmp eq i64 %1, %i.jx
  br i1 %i.kh, label %generateFirstSentence.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 %i.jx
  store i8 46, ptr %i.ki, align 1, !tbaa !25
  %i.kj = icmp ugt i64 %i.kg, 2
  br i1 %i.kj, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.kk = icmp eq i64 %i.kg, 2
  br i1 %i.kk, label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, label %generateFirstSentence.exit

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i: ; preds = %bb.bd, %bb.ba
  %i.kl = phi i64 [ %i.jo, %bb.ba ], [ %i.jx, %bb.bd ]
  %.sink14.i.i18.i = phi i64 [ %i.ka, %bb.ba ], [ %i.kg, %bb.bd ]
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 %i.kl
  %i.kn = getelementptr i8, ptr %i.km, i64 1
  %i.ko = add i64 %.sink14.i.i18.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.kn, i8 32, i64 %i.ko, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i14.i

writeLastCharacters.exit.sink.split.sink.split.i.i14.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i16.i, %bb.be, %bb.bb
  store i8 10, ptr %i.ds, align 1, !tbaa !25
  br label %generateFirstSentence.exit

bb.bf:                                            ; preds = %.loopexit.i
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 %i.jo
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.kp, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.jq, i64 16, i1 false)
  %i.kq = add i64 %i.jo, %i.js                    ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 %i.kq
  store i16 8238, ptr %i.kr, align 1
  %i.ks = add i64 %i.kq, 2
  br label %generateFirstSentence.exit

generateFirstSentence.exit:                       ; preds = %bb.bb, %bb.be, %writeLastCharacters.exit.sink.split.sink.split.i.i14.i, %bb.bf, %bb.bc, %bb.az, %init_word_distrib.exit
  %g_nbChars.promoted = phi i64 [ 0, %init_word_distrib.exit ], [ %1, %bb.bc ], [ %g_nbChars.promoted73, %bb.az ], [ %i.ks, %bb.bf ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i14.i ], [ %1, %bb.be ], [ %1, %bb.bb ] ; 2 uses
  %i.kt = zext i32 %i.cp to i64                   ; 3 uses
  %i.ku = getelementptr i8, ptr %0, i64 %1
  %i.kv = getelementptr i8, ptr %i.ku, i64 -1     ; 3 uses
  %.not6 = icmp eq i32 %4, 0
  br label %bb.bg

bb.bg:                                            ; preds = %generateParagraph.exit, %generateFirstSentence.exit
  %i.kw = phi i64 [ %i.um, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 2 uses
  %.lcssa.i.i.lcssa26 = phi i32 [ %.lcssa.i.i, %generateParagraph.exit ], [ %2, %generateFirstSentence.exit ]
  %i.kx = phi i64 [ %i.un, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 4 uses
  %i.ky = icmp ult i64 %i.kx, %1
  br i1 %i.ky, label %bb.bh, label %bb.ck

bb.bh:                                            ; preds = %bb.bg
  %i.kz = mul i32 %.lcssa.i.i.lcssa26, -1640531535
  %i.la = xor i32 %i.kz, -2048144777              ; 2 uses
  %i.lb = tail call i32 @llvm.fshl.i32(i32 %i.la, i32 %i.la, i32 13) ; 2 uses
  %i.lc = zext i32 %i.lb to i64
  %i.ld = mul nuw nsw i64 %i.lc, 7
  %i.le = lshr i64 %i.ld, 32
  %i.lf = trunc nuw nsw i64 %i.le to i32
  %i.lg = mul i32 %i.lb, -1640531535
  %i.lh = xor i32 %i.lg, -2048144777              ; 2 uses
  %i.li = tail call i32 @llvm.fshl.i32(i32 %i.lh, i32 %i.lh, i32 13) ; 2 uses
  %i.lj = zext i32 %i.li to i64
  %i.lk = mul nuw nsw i64 %i.lj, 7
  %i.ll = lshr i64 %i.lk, 32
  %i.lm = trunc nuw nsw i64 %i.ll to i32
  %i.ln = add nuw nsw i32 %i.lf, 1
  %i.lo = add nuw nsw i32 %i.ln, %i.lm
  br label %bb.bi

bb.bi:                                            ; preds = %generateSentence.exit.i, %bb.bh
  %i.lp = phi i64 [ %i.kw, %bb.bh ], [ %i.ty, %generateSentence.exit.i ]
  %i.lq = phi i64 [ %i.kx, %bb.bh ], [ %i.tz, %generateSentence.exit.i ]
  %i.lr = phi i64 [ %i.kx, %bb.bh ], [ %i.ua, %generateSentence.exit.i ]
  %.09.i = phi i32 [ 0, %bb.bh ], [ %i.uc, %generateSentence.exit.i ]
  %.lcssa.i68.i = phi i32 [ %i.li, %bb.bh ], [ %.lcssa.i.i, %generateSentence.exit.i ]
  %i.ls = phi i64 [ %i.kx, %bb.bh ], [ %i.ub, %generateSentence.exit.i ] ; 9 uses
  %i.lt = mul i32 %.lcssa.i68.i, -1640531535
  %i.lu = xor i32 %i.lt, -2048144777              ; 2 uses
  %i.lv = tail call i32 @llvm.fshl.i32(i32 %i.lu, i32 %i.lu, i32 13) ; 2 uses
  %i.lw = zext i32 %i.lv to i64
  %i.lx = mul nuw nsw i64 %i.lw, 11
  %i.ly = lshr i64 %i.lx, 32
  %i.lz = trunc nuw nsw i64 %i.ly to i32
  %i.ma = mul i32 %i.lv, -1640531535
  %i.mb = xor i32 %i.ma, -2048144777              ; 2 uses
  %i.mc = tail call i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 13) ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = mul nuw nsw i64 %i.md, 11
  %i.mf = lshr i64 %i.me, 32
  %i.mg = trunc nuw nsw i64 %i.mf to i32
  %i.mh = add nuw nsw i32 %i.mg, %i.lz            ; 5 uses
  %i.mi = mul i32 %i.mc, -1640531535
  %i.mj = xor i32 %i.mi, -2048144777              ; 2 uses
  %i.mk = tail call i32 @llvm.fshl.i32(i32 %i.mj, i32 %i.mj, i32 13) ; 2 uses
  %i.ml = zext i32 %i.mk to i64
  %i.mm = mul nuw nsw i64 %i.ml, 9
  %i.mn = lshr i64 %i.mm, 32
  %i.mo = trunc nuw nsw i64 %i.mn to i32
  %i.mp = mul i32 %i.mk, -1640531535
  %i.mq = xor i32 %i.mp, -2048144777              ; 2 uses
  %i.mr = tail call i32 @llvm.fshl.i32(i32 %i.mq, i32 %i.mq, i32 13) ; 2 uses
  %i.ms = zext i32 %i.mr to i64
  %i.mt = mul nuw nsw i64 %i.ms, 9
  %i.mu = lshr i64 %i.mt, 32
  %i.mv = trunc nuw nsw i64 %i.mu to i32
  %i.mw = add nuw nsw i32 %i.mo, 1
  %i.mx = add nuw nsw i32 %i.mw, %i.mv            ; 3 uses
  %i.my = mul i32 %i.mr, -1640531535
  %i.mz = xor i32 %i.my, -2048144777              ; 2 uses
  %i.na = tail call i32 @llvm.fshl.i32(i32 %i.mz, i32 %i.mz, i32 13) ; 2 uses
  %i.nb = zext i32 %i.na to i64
  %i.nc = mul nuw nsw i64 %i.nb, 7
  %i.nd = lshr i64 %i.nc, 32
  %i.ne = trunc nuw nsw i64 %i.nd to i32
  %i.nf = mul i32 %i.na, -1640531535
  %i.ng = xor i32 %i.nf, -2048144777              ; 2 uses
  %i.nh = tail call i32 @llvm.fshl.i32(i32 %i.ng, i32 %i.ng, i32 13) ; 2 uses
  %i.ni = zext i32 %i.nh to i64
  %i.nj = mul nuw nsw i64 %i.ni, 7
  %i.nk = lshr i64 %i.nj, 32
  %i.nl = trunc nuw nsw i64 %i.nk to i32
  %i.nm = add nuw nsw i32 %i.mx, 1
  %i.nn = add nuw nsw i32 %i.nm, %i.ne
  %i.no = add nuw nsw i32 %i.nn, %i.nl            ; 2 uses
  %i.np = mul i32 %i.nh, -1640531535
  %i.nq = xor i32 %i.np, -2048144777              ; 2 uses
  %i.nr = tail call i32 @llvm.fshl.i32(i32 %i.nq, i32 %i.nq, i32 13) ; 2 uses
  %i.ns = zext i32 %i.nr to i64
  %i.nt = mul nuw nsw i64 %i.ns, 11
  %.mask.i.i = and i64 %i.nt, 64424509440
  %i.nu = icmp eq i64 %.mask.i.i, 30064771072
  %.val.i.i = select i1 %i.nu, i16 8255, i16 8238 ; 2 uses
  %i.nv = mul i32 %i.nr, -1640531535
  %i.nw = xor i32 %i.nv, -2048144777              ; 2 uses
  %i.nx = tail call i32 @llvm.fshl.i32(i32 %i.nw, i32 %i.nw, i32 13) ; 4 uses
  %i.ny = zext i32 %i.nx to i64
  %i.nz = mul nuw i64 %i.ny, %i.kt
  %i.oa = lshr i64 %i.nz, 32
  %i.ob = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %i.oa
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !21
  %i.od = sext i32 %i.oc to i64                   ; 2 uses
  %i.oe = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.od
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !20 ; 2 uses
  %i.og = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.od
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !21
  %i.oi = zext i32 %i.oh to i64                   ; 4 uses
  %i.oj = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.oi, i64 14)
  %i.ok = add i64 %i.ls, 2
  %i.ol = add i64 %i.ok, %i.oj
  %i.om = icmp ugt i64 %i.ol, %1
  br i1 %i.om, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.on = icmp eq i32 %i.mh, 0                    ; 2 uses
  %.2.peel.i.i = select i1 %i.on, i64 2, i64 1
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 %i.ls ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.oo, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.of, i64 16, i1 false)
  %i.op = load i8, ptr %i.oo, align 1, !tbaa !25
  %i.oq = add i8 %i.op, -32
  store i8 %i.oq, ptr %i.oo, align 1, !tbaa !25
  %i.or = add i64 %i.ls, %i.oi                    ; 2 uses
  %i.os = getelementptr inbounds nuw i8, ptr %0, i64 %i.or
  %i.ot = select i1 %i.on, i16 %.val.i.i, i16 32
  store i16 %i.ot, ptr %i.os, align 1
  %i.ou = add i64 %.2.peel.i.i, %i.or             ; 4 uses
  br label %generateWord.exit.peel.i.i

bb.bk:                                            ; preds = %bb.bi
  %i.ov = add i64 %i.ls, %i.oi                    ; 5 uses
  %i.ow = add i64 %i.ov, 2
  %i.ox = icmp ugt i64 %i.ow, %1
  br i1 %i.ox, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 %i.ls ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr readonly align 1 %i.of, i64 range(i64 0, 4294967296) %i.oi, i1 false)
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !25
  %i.pa = add i8 %i.oz, -32
  store i8 %i.pa, ptr %i.oy, align 1, !tbaa !25
  %i.pb = sub i64 %1, %i.ov                       ; 3 uses
  %i.pc = icmp eq i64 %1, %i.ov
  br i1 %i.pc, label %generateWord.exit.peel.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 %i.ov
  store i8 46, ptr %i.pd, align 1, !tbaa !25
  %i.pe = icmp ugt i64 %i.pb, 2
  br i1 %i.pe, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.pf = icmp eq i64 %i.pb, 2
  br i1 %i.pf, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, label %generateWord.exit.peel.i.i

bb.bo:                                            ; preds = %bb.bk
  %i.pg = sub i64 %1, %i.ls                       ; 3 uses
  %i.ph = icmp eq i64 %1, %i.ls
  br i1 %i.ph, label %generateWord.exit.peel.i.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.pi = getelementptr inbounds nuw i8, ptr %0, i64 %i.ls
  store i8 46, ptr %i.pi, align 1, !tbaa !25
  %i.pj = icmp ugt i64 %i.pg, 2
  br i1 %i.pj, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.pk = icmp eq i64 %i.pg, 2
  br i1 %i.pk, label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, label %generateWord.exit.peel.i.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i: ; preds = %bb.bp, %bb.bm
  %i.pl = phi i64 [ %i.ls, %bb.bp ], [ %i.ov, %bb.bm ]
  %.sink14.i.i.peel.i.i = phi i64 [ %i.pg, %bb.bp ], [ %i.pb, %bb.bm ]
  %i.pm = getelementptr inbounds nuw i8, ptr %0, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 1
  %i.po = add i64 %.sink14.i.i.peel.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.pn, i8 32, i64 %i.po, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.peel.i.i, %bb.bq, %bb.bn
  store i8 10, ptr %i.kv, align 1, !tbaa !25
  br label %generateWord.exit.peel.i.i

generateWord.exit.peel.i.i:                       ; preds = %bb.bj, %bb.bn, %bb.bq, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i, %bb.bo, %bb.bl
  %i.pp = phi i64 [ %i.lp, %bb.bo ], [ %1, %bb.bl ], [ %i.ou, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.pq = phi i64 [ %i.lq, %bb.bo ], [ %1, %bb.bl ], [ %i.ou, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.pr = phi i64 [ %i.lr, %bb.bo ], [ %1, %bb.bl ], [ %i.ou, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 3 uses
  %i.ps = phi i64 [ %1, %bb.bo ], [ %1, %bb.bl ], [ %i.ou, %bb.bj ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.peel.i.i ], [ %1, %bb.bn ], [ %1, %bb.bq ] ; 5 uses
  switch i32 %i.mh, label %.peel.next.i.preheader.split.i [
    i32 0, label %generateSentence.exit.i
    i32 1, label %generateSentence.exit.loopexit.peel.begin.i
  ]

.peel.next.i.preheader.split.i:                   ; preds = %generateWord.exit.peel.i.i
  %i.pt = add nsw i32 %i.mh, -1
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %generateWord.exit.i.i, %.peel.next.i.preheader.split.i
  %i.pu = phi i64 [ %i.rr, %generateWord.exit.i.i ], [ %i.pp, %.peel.next.i.preheader.split.i ]
  %i.pv = phi i64 [ %i.rs, %generateWord.exit.i.i ], [ %i.pq, %.peel.next.i.preheader.split.i ]
  %i.pw = phi i64 [ %i.rt, %generateWord.exit.i.i ], [ %i.pr, %.peel.next.i.preheader.split.i ]
  %i.px = phi i64 [ %i.ru, %generateWord.exit.i.i ], [ %i.ps, %.peel.next.i.preheader.split.i ]
  %.01922.i.i = phi i32 [ %i.rw, %generateWord.exit.i.i ], [ 1, %.peel.next.i.preheader.split.i ] ; 4 uses
  %i.py = phi i32 [ %i.qc, %generateWord.exit.i.i ], [ %i.nx, %.peel.next.i.preheader.split.i ]
  %i.pz = phi i64 [ %i.rv, %generateWord.exit.i.i ], [ %i.ps, %.peel.next.i.preheader.split.i ] ; 9 uses
  %i.qa = mul i32 %i.py, -1640531535
  %i.qb = xor i32 %i.qa, -2048144777              ; 2 uses
  %i.qc = tail call i32 @llvm.fshl.i32(i32 %i.qb, i32 %i.qb, i32 13) ; 3 uses
  %i.qd = zext i32 %i.qc to i64
  %i.qe = mul nuw i64 %i.qd, %i.kt
  %i.qf = lshr i64 %i.qe, 32
  %i.qg = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %i.qf
  %i.qh = load i32, ptr %i.qg, align 4, !tbaa !21
  %i.qi = sext i32 %i.qh to i64                   ; 2 uses
  %i.qj = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.qi
  %i.qk = load ptr, ptr %i.qj, align 8, !tbaa !20 ; 2 uses
  %i.ql = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.qi
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !21
  %i.qn = zext i32 %i.qm to i64                   ; 4 uses
  %i.qo = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.qn, i64 14)
  %i.qp = add i64 %i.pz, 2
  %i.qq = add i64 %i.qp, %i.qo
  %i.qr = icmp ugt i64 %i.qq, %1
  br i1 %i.qr, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.peel.next.i.i
  %i.qs = add i64 %i.pz, %i.qn                    ; 5 uses
  %i.qt = add i64 %i.qs, 2
  %i.qu = icmp ugt i64 %i.qt, %1
  br i1 %i.qu, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.qv = sub i64 %1, %i.pz                       ; 3 uses
  %i.qw = icmp eq i64 %1, %i.pz
  br i1 %i.qw, label %generateWord.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qx = getelementptr inbounds nuw i8, ptr %0, i64 %i.pz
  store i8 46, ptr %i.qx, align 1, !tbaa !25
  %i.qy = icmp ugt i64 %i.qv, 2
  br i1 %i.qy, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.qz = icmp eq i64 %i.qv, 2
  br i1 %i.qz, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

bb.bv:                                            ; preds = %bb.br
  %i.ra = getelementptr inbounds nuw i8, ptr %0, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ra, ptr readonly align 1 %i.qk, i64 range(i64 0, 4294967296) %i.qn, i1 false)
  %i.rb = sub i64 %1, %i.qs                       ; 3 uses
  %i.rc = icmp eq i64 %1, %i.qs
  br i1 %i.rc, label %generateWord.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rd = getelementptr inbounds nuw i8, ptr %0, i64 %i.qs
  store i8 46, ptr %i.rd, align 1, !tbaa !25
  %i.re = icmp ugt i64 %i.rb, 2
  br i1 %i.re, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rf = icmp eq i64 %i.rb, 2
  br i1 %i.rf, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i: ; preds = %bb.bw, %bb.bt
  %i.rg = phi i64 [ %i.pz, %bb.bt ], [ %i.qs, %bb.bw ]
  %.sink14.i.i.i.i = phi i64 [ %i.qv, %bb.bt ], [ %i.rb, %bb.bw ]
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 %i.rg
  %i.ri = getelementptr i8, ptr %i.rh, i64 1
  %i.rj = add i64 %.sink14.i.i.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ri, i8 32, i64 %i.rj, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, %bb.bx, %bb.bu
  store i8 10, ptr %i.kv, align 1, !tbaa !25
  br label %generateWord.exit.i.i

bb.by:                                            ; preds = %.peel.next.i.i
  %i.rk = icmp eq i32 %.01922.i.i, %i.no
  %i.rl = icmp eq i32 %.01922.i.i, %i.mx
  %i.rm = or i1 %i.rk, %i.rl                      ; 2 uses
  %.2.i.i = select i1 %i.rm, i64 2, i64 1
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 %i.pz
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rn, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.qk, i64 16, i1 false)
  %i.ro = add i64 %i.pz, %i.qn                    ; 2 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 %i.ro
  %.117.val.i.i = select i1 %i.rm, i16 8236, i16 32
  store i16 %.117.val.i.i, ptr %i.rp, align 1
  %i.rq = add i64 %i.ro, %.2.i.i                  ; 5 uses
  br label %generateWord.exit.i.i

generateWord.exit.i.i:                            ; preds = %bb.bu, %bb.bx, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, %bb.by, %bb.bv, %bb.bs
  %i.rr = phi i64 [ %i.pu, %bb.bs ], [ %1, %bb.bv ], [ %i.rq, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rs = phi i64 [ %i.pv, %bb.bs ], [ %1, %bb.bv ], [ %i.rq, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rt = phi i64 [ %i.pw, %bb.bs ], [ %1, %bb.bv ], [ %i.rq, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.ru = phi i64 [ %i.px, %bb.bs ], [ %1, %bb.bv ], [ %i.rq, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rv = phi i64 [ %1, %bb.bs ], [ %1, %bb.bv ], [ %i.rq, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rw = add nuw nsw i32 %.01922.i.i, 1          ; 2 uses
  %exitcond.not.i.i14 = icmp eq i32 %.01922.i.i, %i.pt
  br i1 %exitcond.not.i.i14, label %generateSentence.exit.loopexit.peel.begin.i, label %.peel.next.i.i, !llvm.loop !16

generateSentence.exit.loopexit.peel.begin.i:      ; preds = %generateWord.exit.i.i, %generateWord.exit.peel.i.i
  %i.rx = phi i64 [ %i.pp, %generateWord.exit.peel.i.i ], [ %i.rr, %generateWord.exit.i.i ]
  %i.ry = phi i64 [ %i.pq, %generateWord.exit.peel.i.i ], [ %i.rs, %generateWord.exit.i.i ]
  %i.rz = phi i64 [ %i.pr, %generateWord.exit.peel.i.i ], [ %i.rt, %generateWord.exit.i.i ]
  %i.sa = phi i64 [ %i.ps, %generateWord.exit.peel.i.i ], [ %i.ru, %generateWord.exit.i.i ]
  %i.sb = phi i32 [ %i.mh, %generateWord.exit.peel.i.i ], [ %i.rw, %generateWord.exit.i.i ] ; 3 uses
  %i.sc = phi i32 [ %i.nx, %generateWord.exit.peel.i.i ], [ %i.qc, %generateWord.exit.i.i ]
  %i.sd = phi i64 [ %i.ps, %generateWord.exit.peel.i.i ], [ %i.rv, %generateWord.exit.i.i ] ; 9 uses
  %i.se = mul i32 %i.sc, -1640531535
  %i.sf = xor i32 %i.se, -2048144777              ; 2 uses
  %i.sg = tail call i32 @llvm.fshl.i32(i32 %i.sf, i32 %i.sf, i32 13) ; 7 uses
  %i.sh = zext i32 %i.sg to i64
  %i.si = mul nuw i64 %i.sh, %i.kt
  %i.sj = lshr i64 %i.si, 32
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %i.sj
  %i.sl = load i32, ptr %i.sk, align 4, !tbaa !21
  %i.sm = sext i32 %i.sl to i64                   ; 2 uses
  %i.sn = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.sm
  %i.so = load ptr, ptr %i.sn, align 8, !tbaa !20 ; 2 uses
  %i.sp = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.sm
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !21
  %i.sr = zext i32 %i.sq to i64                   ; 4 uses
  %i.ss = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.sr, i64 14)
  %i.st = add i64 %i.sd, 2
  %i.su = add i64 %i.st, %i.ss
  %i.sv = icmp ugt i64 %i.su, %1
  br i1 %i.sv, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.sw = icmp eq i32 %i.sb, %i.mh                ; 2 uses
  %i.sx = icmp eq i32 %i.sb, %i.no
  %i.sy = icmp eq i32 %i.sb, %i.mx
  %i.sz = or i1 %i.sx, %i.sy                      ; 2 uses
  %i.ta = select i1 %i.sw, i1 true, i1 %i.sz
  %.2.i.peel.i = select i1 %i.ta, i64 2, i64 1
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 %i.sd
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.tb, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.so, i64 16, i1 false)
  %i.tc = add i64 %i.sd, %i.sr                    ; 2 uses
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 %i.tc
  %.117.val.i.peel.i = select i1 %i.sz, i16 8236, i16 32
  %i.te = select i1 %i.sw, i16 %.val.i.i, i16 %.117.val.i.peel.i
  store i16 %i.te, ptr %i.td, align 1
  %i.tf = add i64 %i.tc, %.2.i.peel.i             ; 4 uses
  br label %generateSentence.exit.i

bb.ca:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.tg = add i64 %i.sd, %i.sr                    ; 5 uses
  %i.th = add i64 %i.tg, 2
  %i.ti = icmp ugt i64 %i.th, %1
  br i1 %i.ti, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.tj = getelementptr inbounds nuw i8, ptr %0, i64 %i.sd
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tj, ptr readonly align 1 %i.so, i64 range(i64 0, 4294967296) %i.sr, i1 false)
  %i.tk = sub i64 %1, %i.tg                       ; 3 uses
  %i.tl = icmp eq i64 %1, %i.tg
  br i1 %i.tl, label %generateSentence.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.tm = getelementptr inbounds nuw i8, ptr %0, i64 %i.tg
  store i8 46, ptr %i.tm, align 1, !tbaa !25
  %i.tn = icmp ugt i64 %i.tk, 2
  br i1 %i.tn, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.to = icmp eq i64 %i.tk, 2
  br i1 %i.to, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

bb.ce:                                            ; preds = %bb.ca
  %i.tp = sub i64 %1, %i.sd                       ; 3 uses
  %i.tq = icmp eq i64 %1, %i.sd
  br i1 %i.tq, label %generateSentence.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tr = getelementptr inbounds nuw i8, ptr %0, i64 %i.sd
  store i8 46, ptr %i.tr, align 1, !tbaa !25
  %i.ts = icmp ugt i64 %i.tp, 2
  br i1 %i.ts, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tt = icmp eq i64 %i.tp, 2
  br i1 %i.tt, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i: ; preds = %bb.cf, %bb.cc
  %i.tu = phi i64 [ %i.sd, %bb.cf ], [ %i.tg, %bb.cc ]
  %.sink14.i.i.i.peel.i = phi i64 [ %i.tp, %bb.cf ], [ %i.tk, %bb.cc ]
  %i.tv = getelementptr inbounds nuw i8, ptr %0, i64 %i.tu
  %i.tw = getelementptr i8, ptr %i.tv, i64 1
  %i.tx = add i64 %.sink14.i.i.i.peel.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.tw, i8 32, i64 %i.tx, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, %bb.cg, %bb.cd
  store i8 10, ptr %i.kv, align 1, !tbaa !25
  br label %generateSentence.exit.i

generateSentence.exit.i:                          ; preds = %bb.bz, %bb.cd, %bb.cg, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, %bb.ce, %bb.cb, %generateWord.exit.peel.i.i
  %i.ty = phi i64 [ %i.pp, %generateWord.exit.peel.i.i ], [ %i.rx, %bb.ce ], [ %1, %bb.cb ], [ %i.tf, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 2 uses
  %i.tz = phi i64 [ %i.pq, %generateWord.exit.peel.i.i ], [ %i.ry, %bb.ce ], [ %1, %bb.cb ], [ %i.tf, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 2 uses
  %i.ua = phi i64 [ %i.pr, %generateWord.exit.peel.i.i ], [ %i.rz, %bb.ce ], [ %1, %bb.cb ], [ %i.tf, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ] ; 5 uses
  %i.ub = phi i64 [ %i.ps, %generateWord.exit.peel.i.i ], [ %i.sa, %bb.ce ], [ %1, %bb.cb ], [ %i.tf, %bb.bz ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %1, %bb.cd ], [ %1, %bb.cg ]
  %.lcssa.i.i = phi i32 [ %i.nx, %generateWord.exit.peel.i.i ], [ %i.sg, %bb.ce ], [ %i.sg, %bb.cb ], [ %i.sg, %bb.bz ], [ %i.sg, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i ], [ %i.sg, %bb.cd ], [ %i.sg, %bb.cg ] ; 2 uses
  %i.uc = add nuw nsw i32 %.09.i, 1               ; 2 uses
  %exitcond.not.i15 = icmp eq i32 %i.uc, %i.lo
  br i1 %exitcond.not.i15, label %._crit_edge.i16, label %bb.bi, !llvm.loop !17

._crit_edge.i16:                                  ; preds = %generateSentence.exit.i
  %i.ud = icmp ult i64 %i.ua, %1
  br i1 %i.ud, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %._crit_edge.i16
  %i.ue = add nuw i64 %i.ua, 1                    ; 3 uses
  %i.uf = getelementptr inbounds nuw i8, ptr %0, i64 %i.ua
  store i8 10, ptr %i.uf, align 1, !tbaa !25
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %._crit_edge.i16
  %i.ug = phi i64 [ %i.ue, %bb.ch ], [ %i.ty, %._crit_edge.i16 ]
  %i.uh = phi i64 [ %i.ue, %bb.ch ], [ %i.tz, %._crit_edge.i16 ]
  %i.ui = phi i64 [ %i.ue, %bb.ch ], [ %i.ua, %._crit_edge.i16 ] ; 3 uses
  %i.uj = icmp ult i64 %i.ui, %1
  br i1 %i.uj, label %bb.cj, label %generateParagraph.exit

bb.cj:                                            ; preds = %bb.ci
  %i.uk = add nuw i64 %i.ui, 1                    ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %0, i64 %i.ui
  store i8 10, ptr %i.ul, align 1, !tbaa !25
  br label %generateParagraph.exit

generateParagraph.exit:                           ; preds = %bb.ci, %bb.cj
  %i.um = phi i64 [ %i.ug, %bb.ci ], [ %i.uk, %bb.cj ] ; 2 uses
  %i.un = phi i64 [ %i.uh, %bb.ci ], [ %i.uk, %bb.cj ]
  br i1 %.not6, label %bb.ck, label %bb.bg

bb.ck:                                            ; preds = %generateParagraph.exit, %bb.bg
  %i.uo = phi i64 [ %i.um, %generateParagraph.exit ], [ %i.kw, %bb.bg ]
  ret i64 %i.uo
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @LOREM_genBuffer(ptr noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i64 @LOREM_genBlock(ptr noundef %0, i64 noundef %1, i32 noundef %2, i32 noundef 1, i32 noundef 1) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #6

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind willreturn memory(read) }
attributes #8 = { nounwind allocsize(0,1) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !22}
!10 = distinct !{!10, !22, !23, !24}
!11 = distinct !{!11, !22}
!12 = distinct !{!12, !22, !23, !24}
!13 = distinct !{!13, !22, !24, !23}
!14 = distinct !{!14, !22}
!15 = distinct !{!15, !22, !26}
!16 = distinct !{!16, !22, !27}
end_hunk_0
