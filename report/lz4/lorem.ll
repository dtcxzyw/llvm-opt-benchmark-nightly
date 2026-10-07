Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lz4/original/lorem?download=true
inline.NumInlined: 22
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@LOREM_genBlock:bb.a
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
  %i.kw = phi i64 [ %i.uo, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 2 uses
  %.lcssa.i.i.lcssa26 = phi i32 [ %.lcssa.i.i, %generateParagraph.exit ], [ %2, %generateFirstSentence.exit ]
  %i.kx = phi i64 [ %i.up, %generateParagraph.exit ], [ %g_nbChars.promoted, %generateFirstSentence.exit ] ; 4 uses
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
  %i.lp = phi i64 [ %i.kw, %bb.bh ], [ %i.ua, %generateSentence.exit.i ]
  %i.lq = phi i64 [ %i.kx, %bb.bh ], [ %i.ub, %generateSentence.exit.i ]
  %i.lr = phi i64 [ %i.kx, %bb.bh ], [ %i.uc, %generateSentence.exit.i ]
  %.09.i = phi i32 [ 0, %bb.bh ], [ %i.ue, %generateSentence.exit.i ]
  %.lcssa.i68.i = phi i32 [ %i.li, %bb.bh ], [ %.lcssa.i.i, %generateSentence.exit.i ]
  %i.ls = phi i64 [ %i.kx, %bb.bh ], [ %i.ud, %generateSentence.exit.i ] ; 9 uses
  %i.lt = mul i32 %.lcssa.i68.i, -1640531535
  %i.lu = xor i32 %i.lt, -2048144777              ; 2 uses
  %i.lv = tail call i32 @llvm.fshl.i32(i32 %i.lu, i32 %i.lu, i32 13) ; 2 uses
  %i.lw = zext i32 %i.lv to i64
  %i.lx = mul nuw nsw i64 %i.lw, 11
  %i.ly = lshr i64 %i.lx, 32
  %i.lz = trunc nuw nsw i64 %i.ly to i32          ; 2 uses
  %i.ma = mul i32 %i.lv, -1640531535
  %i.mb = xor i32 %i.ma, -2048144777              ; 2 uses
  %i.mc = tail call i32 @llvm.fshl.i32(i32 %i.mb, i32 %i.mb, i32 13) ; 2 uses
  %i.md = zext i32 %i.mc to i64
  %i.me = mul nuw nsw i64 %i.md, 11
  %i.mf = lshr i64 %i.me, 32
  %i.mg = trunc nuw nsw i64 %i.mf to i32          ; 2 uses
  %i.mh = add nuw nsw i32 %i.mg, %i.lz            ; 4 uses
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
  %exitcond.peel.not.i.i = icmp eq i32 %i.mh, 0
  br i1 %exitcond.peel.not.i.i, label %generateSentence.exit.i, label %.peel.next.i.preheader.i

.peel.next.i.preheader.i:                         ; preds = %generateWord.exit.peel.i.i
  %i.pt = add nsw i32 %i.lz, -1
  %i.pu = sub nsw i32 0, %i.mg
  %.not.i13 = icmp eq i32 %i.pt, %i.pu
  br i1 %.not.i13, label %generateSentence.exit.loopexit.peel.begin.i, label %.peel.next.i.preheader.split.i

.peel.next.i.preheader.split.i:                   ; preds = %.peel.next.i.preheader.i
  %i.pv = add nsw i32 %i.mh, -1
  br label %.peel.next.i.i

.peel.next.i.i:                                   ; preds = %generateWord.exit.i.i, %.peel.next.i.preheader.split.i
  %i.pw = phi i64 [ %i.rt, %generateWord.exit.i.i ], [ %i.pp, %.peel.next.i.preheader.split.i ]
  %i.px = phi i64 [ %i.ru, %generateWord.exit.i.i ], [ %i.pq, %.peel.next.i.preheader.split.i ]
  %i.py = phi i64 [ %i.rv, %generateWord.exit.i.i ], [ %i.pr, %.peel.next.i.preheader.split.i ]
  %i.pz = phi i64 [ %i.rw, %generateWord.exit.i.i ], [ %i.ps, %.peel.next.i.preheader.split.i ]
  %.01922.i.i = phi i32 [ %i.ry, %generateWord.exit.i.i ], [ 1, %.peel.next.i.preheader.split.i ] ; 4 uses
  %i.qa = phi i32 [ %i.qe, %generateWord.exit.i.i ], [ %i.nx, %.peel.next.i.preheader.split.i ]
  %i.qb = phi i64 [ %i.rx, %generateWord.exit.i.i ], [ %i.ps, %.peel.next.i.preheader.split.i ] ; 9 uses
  %i.qc = mul i32 %i.qa, -1640531535
  %i.qd = xor i32 %i.qc, -2048144777              ; 2 uses
  %i.qe = tail call i32 @llvm.fshl.i32(i32 %i.qd, i32 %i.qd, i32 13) ; 3 uses
  %i.qf = zext i32 %i.qe to i64
  %i.qg = mul nuw i64 %i.qf, %i.kt
  %i.qh = lshr i64 %i.qg, 32
  %i.qi = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %i.qh
  %i.qj = load i32, ptr %i.qi, align 4, !tbaa !21
  %i.qk = sext i32 %i.qj to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.qk
  %i.qm = load ptr, ptr %i.ql, align 8, !tbaa !20 ; 2 uses
  %i.qn = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.qk
  %i.qo = load i32, ptr %i.qn, align 4, !tbaa !21
  %i.qp = zext i32 %i.qo to i64                   ; 4 uses
  %i.qq = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.qp, i64 14)
  %i.qr = add i64 %i.qb, 2
  %i.qs = add i64 %i.qr, %i.qq
  %i.qt = icmp ugt i64 %i.qs, %1
  br i1 %i.qt, label %bb.br, label %bb.by

bb.br:                                            ; preds = %.peel.next.i.i
  %i.qu = add i64 %i.qb, %i.qp                    ; 5 uses
  %i.qv = add i64 %i.qu, 2
  %i.qw = icmp ugt i64 %i.qv, %1
  br i1 %i.qw, label %bb.bs, label %bb.bv

bb.bs:                                            ; preds = %bb.br
  %i.qx = sub i64 %1, %i.qb                       ; 3 uses
  %i.qy = icmp eq i64 %1, %i.qb
  br i1 %i.qy, label %generateWord.exit.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 %i.qb
  store i8 46, ptr %i.qz, align 1, !tbaa !25
  %i.ra = icmp ugt i64 %i.qx, 2
  br i1 %i.ra, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.rb = icmp eq i64 %i.qx, 2
  br i1 %i.rb, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

bb.bv:                                            ; preds = %bb.br
  %i.rc = getelementptr inbounds nuw i8, ptr %0, i64 %i.qb
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rc, ptr readonly align 1 %i.qm, i64 range(i64 0, 4294967296) %i.qp, i1 false)
  %i.rd = sub i64 %1, %i.qu                       ; 3 uses
  %i.re = icmp eq i64 %1, %i.qu
  br i1 %i.re, label %generateWord.exit.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.rf = getelementptr inbounds nuw i8, ptr %0, i64 %i.qu
  store i8 46, ptr %i.rf, align 1, !tbaa !25
  %i.rg = icmp ugt i64 %i.rd, 2
  br i1 %i.rg, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.rh = icmp eq i64 %i.rd, 2
  br i1 %i.rh, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, label %generateWord.exit.i.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i: ; preds = %bb.bw, %bb.bt
  %i.ri = phi i64 [ %i.qb, %bb.bt ], [ %i.qu, %bb.bw ]
  %.sink14.i.i.i.i = phi i64 [ %i.qx, %bb.bt ], [ %i.rd, %bb.bw ]
  %i.rj = getelementptr inbounds nuw i8, ptr %0, i64 %i.ri
  %i.rk = getelementptr i8, ptr %i.rj, i64 1
  %i.rl = add i64 %.sink14.i.i.i.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.rk, i8 32, i64 %i.rl, i1 false)
  br label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i

writeLastCharacters.exit.sink.split.sink.split.i.i.i.i: ; preds = %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.i, %bb.bx, %bb.bu
  store i8 10, ptr %i.kv, align 1, !tbaa !25
  br label %generateWord.exit.i.i

bb.by:                                            ; preds = %.peel.next.i.i
  %i.rm = icmp eq i32 %.01922.i.i, %i.no
  %i.rn = icmp eq i32 %.01922.i.i, %i.mx
  %i.ro = or i1 %i.rm, %i.rn                      ; 2 uses
  %.2.i.i = select i1 %i.ro, i64 2, i64 1
  %i.rp = getelementptr inbounds nuw i8, ptr %0, i64 %i.qb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.rp, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.qm, i64 16, i1 false)
  %i.rq = add i64 %i.qb, %i.qp                    ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 %i.rq
  %.117.val.i.i = select i1 %i.ro, i16 8236, i16 32
  store i16 %.117.val.i.i, ptr %i.rr, align 1
  %i.rs = add i64 %i.rq, %.2.i.i                  ; 5 uses
  br label %generateWord.exit.i.i

generateWord.exit.i.i:                            ; preds = %bb.bu, %bb.bx, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i, %bb.by, %bb.bv, %bb.bs
  %i.rt = phi i64 [ %i.pw, %bb.bs ], [ %1, %bb.bv ], [ %i.rs, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.ru = phi i64 [ %i.px, %bb.bs ], [ %1, %bb.bv ], [ %i.rs, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rv = phi i64 [ %i.py, %bb.bs ], [ %1, %bb.bv ], [ %i.rs, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rw = phi i64 [ %i.pz, %bb.bs ], [ %1, %bb.bv ], [ %i.rs, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.rx = phi i64 [ %1, %bb.bs ], [ %1, %bb.bv ], [ %i.rs, %bb.by ], [ %1, %writeLastCharacters.exit.sink.split.sink.split.i.i.i.i ], [ %1, %bb.bx ], [ %1, %bb.bu ] ; 2 uses
  %i.ry = add nuw nsw i32 %.01922.i.i, 1          ; 2 uses
  %exitcond.not.i.i14 = icmp eq i32 %.01922.i.i, %i.pv
  br i1 %exitcond.not.i.i14, label %generateSentence.exit.loopexit.peel.begin.i, label %.peel.next.i.i, !llvm.loop !16

generateSentence.exit.loopexit.peel.begin.i:      ; preds = %generateWord.exit.i.i, %.peel.next.i.preheader.i
  %i.rz = phi i64 [ %i.pp, %.peel.next.i.preheader.i ], [ %i.rt, %generateWord.exit.i.i ]
  %i.sa = phi i64 [ %i.pq, %.peel.next.i.preheader.i ], [ %i.ru, %generateWord.exit.i.i ]
  %i.sb = phi i64 [ %i.pr, %.peel.next.i.preheader.i ], [ %i.rv, %generateWord.exit.i.i ]
  %i.sc = phi i64 [ %i.ps, %.peel.next.i.preheader.i ], [ %i.rw, %generateWord.exit.i.i ]
  %i.sd = phi i32 [ 1, %.peel.next.i.preheader.i ], [ %i.ry, %generateWord.exit.i.i ] ; 3 uses
  %i.se = phi i32 [ %i.nx, %.peel.next.i.preheader.i ], [ %i.qe, %generateWord.exit.i.i ]
  %i.sf = phi i64 [ %i.ps, %.peel.next.i.preheader.i ], [ %i.rx, %generateWord.exit.i.i ] ; 9 uses
  %i.sg = mul i32 %i.se, -1640531535
  %i.sh = xor i32 %i.sg, -2048144777              ; 2 uses
  %i.si = tail call i32 @llvm.fshl.i32(i32 %i.sh, i32 %i.sh, i32 13) ; 7 uses
  %i.sj = zext i32 %i.si to i64
  %i.sk = mul nuw i64 %i.sj, %i.kt
  %i.sl = lshr i64 %i.sk, 32
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr @g_distrib, i64 %i.sl
  %i.sn = load i32, ptr %i.sm, align 4, !tbaa !21
  %i.so = sext i32 %i.sn to i64                   ; 2 uses
  %i.sp = getelementptr inbounds [8 x i8], ptr @g_words, i64 %i.so
  %i.sq = load ptr, ptr %i.sp, align 8, !tbaa !20 ; 2 uses
  %i.sr = getelementptr inbounds [4 x i8], ptr @g_wordLen, i64 %i.so
  %i.ss = load i32, ptr %i.sr, align 4, !tbaa !21
  %i.st = zext i32 %i.ss to i64                   ; 4 uses
  %i.su = tail call i64 @llvm.umax.i64(i64 range(i64 0, 4294967296) %i.st, i64 14)
  %i.sv = add i64 %i.sf, 2
  %i.sw = add i64 %i.sv, %i.su
  %i.sx = icmp ugt i64 %i.sw, %1
  br i1 %i.sx, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.sy = icmp eq i32 %i.sd, %i.mh                ; 2 uses
  %i.sz = icmp eq i32 %i.sd, %i.no
  %i.ta = icmp eq i32 %i.sd, %i.mx
  %i.tb = or i1 %i.sz, %i.ta                      ; 2 uses
  %i.tc = select i1 %i.sy, i1 true, i1 %i.tb
  %.2.i.peel.i = select i1 %i.tc, i64 2, i64 1
  %i.td = getelementptr inbounds nuw i8, ptr %0, i64 %i.sf
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.td, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.sq, i64 16, i1 false)
  %i.te = add i64 %i.sf, %i.st                    ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 %i.te
  %.117.val.i.peel.i = select i1 %i.tb, i16 8236, i16 32
  %i.tg = select i1 %i.sy, i16 %.val.i.i, i16 %.117.val.i.peel.i
  store i16 %i.tg, ptr %i.tf, align 1
  %i.th = add i64 %i.te, %.2.i.peel.i             ; 4 uses
  br label %generateSentence.exit.i

bb.ca:                                            ; preds = %generateSentence.exit.loopexit.peel.begin.i
  %i.ti = add i64 %i.sf, %i.st                    ; 5 uses
  %i.tj = add i64 %i.ti, 2
  %i.tk = icmp ugt i64 %i.tj, %1
  br i1 %i.tk, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.tl = getelementptr inbounds nuw i8, ptr %0, i64 %i.sf
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.tl, ptr readonly align 1 %i.sq, i64 range(i64 0, 4294967296) %i.st, i1 false)
  %i.tm = sub i64 %1, %i.ti                       ; 3 uses
  %i.tn = icmp eq i64 %1, %i.ti
  br i1 %i.tn, label %generateSentence.exit.i, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.to = getelementptr inbounds nuw i8, ptr %0, i64 %i.ti
  store i8 46, ptr %i.to, align 1, !tbaa !25
  %i.tp = icmp ugt i64 %i.tm, 2
  br i1 %i.tp, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.tq = icmp eq i64 %i.tm, 2
  br i1 %i.tq, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

bb.ce:                                            ; preds = %bb.ca
  %i.tr = sub i64 %1, %i.sf                       ; 3 uses
  %i.ts = icmp eq i64 %1, %i.sf
  br i1 %i.ts, label %generateSentence.exit.i, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.tt = getelementptr inbounds nuw i8, ptr %0, i64 %i.sf
  store i8 46, ptr %i.tt, align 1, !tbaa !25
  %i.tu = icmp ugt i64 %i.tr, 2
  br i1 %i.tu, label %writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.tv = icmp eq i64 %i.tr, 2
  br i1 %i.tv, label %writeLastCharacters.exit.sink.split.sink.split.i.i.i.peel.i, label %generateSentence.exit.i

writeLastCharacters.exit.sink.split.sink.split.sink.split.i.i.i.peel.i: ; preds = %bb.cf, %bb.cc
  %i.tw = phi i64 [ %i.sf, %bb.cf ], [ %i.ti, %bb.cc ]
  %.sink14.i.i.i.peel.i = phi i64 [ %i.tr, %bb.cf ], [ %i.tm, %bb.cc ]
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 %i.tw
  %i.ty = getelementptr i8, ptr %i.tx, i64 1
  %i.tz = add i64 %.sink14.i.i.i.peel.i, -2
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.ty, i8 32, i64 %i.tz, i1 false)
end_hunk_0
