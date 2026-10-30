Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5608
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 189
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 369
begin_hunk_0_@bn_mod_exp_mont_small:bb.a
  %i.bi = icmp eq i32 %.090.highbits, 0
  br i1 %i.bi, label %.lr.ph143, label %._crit_edge144, !llvm.loop !683

bb.k:                                             ; preds = %._crit_edge144, %_ZL14OPENSSL_memcpyPvPKvm.exit
  %i.bj = add i64 %i.at, -1
  %i.bk = shl nuw nsw i64 %2, 4                   ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.not56.i = icmp ult i64 %2, 4
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %2 ; 7 uses
  %i.bo = zext nneg i32 %spec.store.select to i64
  %i.bp = add nsw i64 %i.bo, -2
  %min.iters.check = icmp ult i64 %2, 4
  %n.vec = and i64 %2, 12                         ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bs = icmp eq i64 %n.vec, 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %cmp.n = icmp eq i64 %2, %n.vec
  br label %.outer

.outer:                                           ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit109, %bb.k
  %.not95 = phi i1 [ true, %_ZL14OPENSSL_memcpyPvPKvm.exit109 ], [ false, %bb.k ] ; 2 uses
  %.087.ph = phi i64 [ %i.mg, %_ZL14OPENSSL_memcpyPvPKvm.exit109 ], [ %i.bj, %bb.k ] ; 2 uses
  br i1 %.not95, label %.outer.split.us, label %.outer.split

.outer.split.us:                                  ; preds = %.outer, %bb.l
  %.087.us = phi i64 [ %i.ce, %bb.l ], [ %.087.ph, %.outer ] ; 5 uses
  %i.bx = lshr i64 %.087.us, 6                    ; 2 uses
  %.not.i102.us = icmp ult i64 %i.bx, %.091139
  br i1 %.not.i102.us, label %bn_is_bit_set_words.exit.us, label %bn_is_bit_set_words.exit.thread.us

bn_is_bit_set_words.exit.us:                      ; preds = %.outer.split.us
  %i.by = and i64 %.087.us, 63
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !96
  %i.cb = shl nuw i64 1, %i.by
  %i.cc = and i64 %i.ca, %i.cb
  %.not94.us = icmp eq i64 %i.cc, 0
  br i1 %.not94.us, label %bn_is_bit_set_words.exit.thread.us, label %.preheader122

bn_is_bit_set_words.exit.thread.us:               ; preds = %bn_is_bit_set_words.exit.us, %.outer.split.us
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef %0, i64 noundef %2, ptr noundef %5)
  %i.cd = icmp eq i64 %.087.us, 0
  br i1 %i.cd, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bn_is_bit_set_words.exit.thread.us
  %i.ce = add i64 %.087.us, -1
  br label %.outer.split.us, !llvm.loop !684

.outer.split:                                     ; preds = %.outer, %bb.m
  %.087 = phi i64 [ %i.cs, %bb.m ], [ %.087.ph, %.outer ] ; 5 uses
  %i.cf = lshr i64 %.087, 6                       ; 2 uses
  %.not.i102 = icmp ult i64 %i.cf, %.091139
  br i1 %.not.i102, label %bn_is_bit_set_words.exit, label %bn_is_bit_set_words.exit.thread

bn_is_bit_set_words.exit:                         ; preds = %.outer.split
  %i.cg = and i64 %.087, 63
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cf
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !96
  %i.cj = shl nuw i64 1, %i.cg
  %i.ck = and i64 %i.ci, %i.cj
  %.not94 = icmp eq i64 %i.ck, 0
  br i1 %.not94, label %bn_is_bit_set_words.exit.thread, label %.preheader122

.preheader122:                                    ; preds = %bn_is_bit_set_words.exit, %bn_is_bit_set_words.exit.us
  %.us-phi = phi i64 [ %.087.us, %bn_is_bit_set_words.exit.us ], [ %.087, %bn_is_bit_set_words.exit ] ; 8 uses
  %i.cl = icmp ne i64 %.us-phi, 0
  %i.cm = and i1 %i.ba, %i.cl
  br i1 %i.cm, label %.lr.ph148.preheader, label %._crit_edge149

.lr.ph148.preheader:                              ; preds = %.preheader122
  %i.cn = add i64 %.us-phi, -1
  %umin = call i64 @llvm.umin.i64(i64 %i.cn, i64 %i.bp) ; 2 uses
  %i.co = add i64 %umin, 1                        ; 2 uses
  %i.cp = add i64 %.us-phi, -1                    ; 2 uses
  %i.cq = lshr i64 %i.cp, 6                       ; 2 uses
  %.not.i104 = icmp ult i64 %i.cq, %.091139
  br i1 %.not.i104, label %bn_is_bit_set_words.exit106, label %.thread

bn_is_bit_set_words.exit.thread:                  ; preds = %.outer.split, %bn_is_bit_set_words.exit
  %i.cr = icmp eq i64 %.087, 0
  br i1 %i.cr, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bn_is_bit_set_words.exit.thread
  %i.cs = add i64 %.087, -1
  br label %.outer.split, !llvm.loop !684

._crit_edge149.loopexit:                          ; preds = %.lr.ph148.3, %bn_is_bit_set_words.exit106.3, %bb.p, %.thread.2, %.thread.1, %.thread
  %.lcssa247 = phi i32 [ %i.db, %.thread ], [ %i.do, %.thread.1 ], [ %i.eb, %.thread.2 ], [ %i.en, %bb.p ], [ %i.eb, %.lr.ph148.3 ], [ %i.eb, %bn_is_bit_set_words.exit106.3 ]
  %.lcssa = phi i32 [ %i.dc, %.thread ], [ %i.dp, %.thread.1 ], [ %i.ec, %.thread.2 ], [ 4, %bb.p ], [ %i.ec, %.lr.ph148.3 ], [ %i.ec, %bn_is_bit_set_words.exit106.3 ]
  %i.ct = lshr i32 %.lcssa247, 1
  %i.cu = zext nneg i32 %i.ct to i64
  br label %._crit_edge149

._crit_edge149:                                   ; preds = %._crit_edge149.loopexit, %.preheader122
  %.085.lcssa = phi i64 [ 0, %.preheader122 ], [ %i.cu, %._crit_edge149.loopexit ] ; 2 uses
  %.084.lcssa = phi i32 [ 0, %.preheader122 ], [ %.lcssa, %._crit_edge149.loopexit ] ; 3 uses
  br i1 %.not95, label %.preheader, label %.critedge100

bn_is_bit_set_words.exit106:                      ; preds = %.lr.ph148.preheader
  %i.cv = and i64 %i.cp, 63
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cq
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !96
  %i.cy = shl nuw i64 1, %i.cv
  %i.cz = and i64 %i.cx, %i.cy
  %.fr = freeze i64 %i.cz
  %i.da = icmp eq i64 %.fr, 0                     ; 2 uses
  %spec.select = select i1 %i.da, i32 1, i32 3
  %spec.select280 = select i1 %i.da, i32 0, i32 1
  br label %.thread

.thread:                                          ; preds = %bn_is_bit_set_words.exit106, %.lr.ph148.preheader
  %i.db = phi i32 [ %spec.select, %bn_is_bit_set_words.exit106 ], [ 1, %.lr.ph148.preheader ] ; 4 uses
  %i.dc = phi i32 [ %spec.select280, %bn_is_bit_set_words.exit106 ], [ 0, %.lr.ph148.preheader ] ; 4 uses
  %exitcond.not = icmp eq i64 %umin, 0
  br i1 %exitcond.not, label %._crit_edge149.loopexit, label %.lr.ph148.1

.lr.ph148.1:                                      ; preds = %.thread
  %i.dd = add i64 %.us-phi, -2                    ; 2 uses
  %i.de = lshr i64 %i.dd, 6                       ; 2 uses
  %.not.i104.1 = icmp ult i64 %i.de, %.091139
  br i1 %.not.i104.1, label %bn_is_bit_set_words.exit106.1, label %.thread.1

bn_is_bit_set_words.exit106.1:                    ; preds = %.lr.ph148.1
  %i.df = and i64 %i.dd, 63
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.de
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !96
  %i.di = shl nuw i64 1, %i.df
  %i.dj = and i64 %i.dh, %i.di
  %.fr.1 = freeze i64 %i.dj
  %i.dk = icmp eq i64 %.fr.1, 0
  br i1 %i.dk, label %.thread.1, label %bb.n

bb.n:                                             ; preds = %bn_is_bit_set_words.exit106.1
  %i.dl = sub nuw nsw i32 2, %i.dc
  %i.dm = shl nuw nsw i32 %i.db, %i.dl
  %i.dn = or disjoint i32 %i.dm, 1
  br label %.thread.1

.thread.1:                                        ; preds = %bb.n, %bn_is_bit_set_words.exit106.1, %.lr.ph148.1
  %i.do = phi i32 [ %i.dn, %bb.n ], [ %i.db, %.lr.ph148.1 ], [ %i.db, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %i.dp = phi i32 [ 2, %bb.n ], [ %i.dc, %.lr.ph148.1 ], [ %i.dc, %bn_is_bit_set_words.exit106.1 ] ; 4 uses
  %exitcond.not.1 = icmp eq i64 %i.co, 2
  br i1 %exitcond.not.1, label %._crit_edge149.loopexit, label %.lr.ph148.2

.lr.ph148.2:                                      ; preds = %.thread.1
  %i.dq = add i64 %.us-phi, -3                    ; 2 uses
  %i.dr = lshr i64 %i.dq, 6                       ; 2 uses
  %.not.i104.2 = icmp ult i64 %i.dr, %.091139
  br i1 %.not.i104.2, label %bn_is_bit_set_words.exit106.2, label %.thread.2

bn_is_bit_set_words.exit106.2:                    ; preds = %.lr.ph148.2
  %i.ds = and i64 %i.dq, 63
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dr
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !96
  %i.dv = shl nuw i64 1, %i.ds
  %i.dw = and i64 %i.du, %i.dv
  %.fr.2 = freeze i64 %i.dw
  %i.dx = icmp eq i64 %.fr.2, 0
  br i1 %i.dx, label %.thread.2, label %bb.o

bb.o:                                             ; preds = %bn_is_bit_set_words.exit106.2
  %i.dy = sub nsw i32 3, %i.dp
  %i.dz = shl i32 %i.do, %i.dy
  %i.ea = or i32 %i.dz, 1
  br label %.thread.2

.thread.2:                                        ; preds = %bb.o, %bn_is_bit_set_words.exit106.2, %.lr.ph148.2
  %i.eb = phi i32 [ %i.ea, %bb.o ], [ %i.do, %.lr.ph148.2 ], [ %i.do, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %i.ec = phi i32 [ 3, %bb.o ], [ %i.dp, %.lr.ph148.2 ], [ %i.dp, %bn_is_bit_set_words.exit106.2 ] ; 4 uses
  %exitcond.not.2 = icmp eq i64 %i.co, 3
  br i1 %exitcond.not.2, label %._crit_edge149.loopexit, label %.lr.ph148.3

.lr.ph148.3:                                      ; preds = %.thread.2
  %i.ed = add i64 %.us-phi, -4                    ; 2 uses
  %i.ee = lshr i64 %i.ed, 6                       ; 2 uses
  %.not.i104.3 = icmp ult i64 %i.ee, %.091139
  br i1 %.not.i104.3, label %bn_is_bit_set_words.exit106.3, label %._crit_edge149.loopexit

bn_is_bit_set_words.exit106.3:                    ; preds = %.lr.ph148.3
  %i.ef = and i64 %i.ed, 63
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ee
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !96
  %i.ei = shl nuw i64 1, %i.ef
  %i.ej = and i64 %i.eh, %i.ei
  %.fr.3 = freeze i64 %i.ej
  %i.ek = icmp eq i64 %.fr.3, 0
  br i1 %i.ek, label %._crit_edge149.loopexit, label %bb.p

bb.p:                                             ; preds = %bn_is_bit_set_words.exit106.3
  %i.el = sub nsw i32 4, %i.ec
  %i.em = shl i32 %i.eb, %i.el
  %i.en = or i32 %i.em, 1
  br label %._crit_edge149.loopexit

.preheader:                                       ; preds = %._crit_edge149, %bn_mod_mul_montgomery_small.exit
  %.082151 = phi i32 [ %i.lz, %bn_mod_mul_montgomery_small.exit ], [ 0, %._crit_edge149 ] ; 2 uses
  %i.eo = load i32, ptr %i.f, align 8, !tbaa !132 ; 3 uses
  %i.ep = sext i32 %i.eo to i64
  %.not152 = icmp eq i64 %2, %i.ep
  br i1 %.not152, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.preheader
  call void @abort() #37
  unreachable

bb.r:                                             ; preds = %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #36
  switch i64 %2, label %bb.u [
    i64 4, label %bb.s
    i64 8, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  call void @bn_sqr_comba4(ptr noundef nonnull %i.b, ptr noundef readonly %0)
  br label %bn_sqr_small.exit.i

bb.t:                                             ; preds = %bb.r
  call void @bn_sqr_comba8(ptr noundef nonnull %i.b, ptr noundef readonly %0)
  br label %bn_sqr_small.exit.i

bb.u:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call fastcc void @_ZL13bn_sqr_normalPmPKmmS_(ptr noundef nonnull %i.b, ptr noundef readonly %0, i64 noundef %2, ptr noundef nonnull %i.a)
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.a, i64 noundef %i.bk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %.pre = load i32, ptr %i.f, align 8, !tbaa !132
  br label %bn_sqr_small.exit.i

bn_sqr_small.exit.i:                              ; preds = %bb.u, %bb.t, %bb.s
  %i.eq = phi i32 [ %.pre, %bb.u ], [ %i.eo, %bb.t ], [ %i.eo, %bb.s ] ; 3 uses
  %i.er = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 4 uses
  %i.es = sext i32 %i.eq to i64
  %.not.i110 = icmp eq i64 %2, %i.es
  br i1 %.not.i110, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bn_sqr_small.exit.i
  %i.et = load i64, ptr %i.bm, align 8, !tbaa !96
  %.not55.i113 = icmp eq i32 %i.eq, 0
  br i1 %.not55.i113, label %bn_mod_mul_montgomery_small.exit, label %.lr.ph.i

.preheader42.i.i.i:                               ; preds = %bn_mul_add_words.exit
  %.not43.i.i.i = icmp ult i32 %i.eq, 4
  br i1 %.not43.i.i.i, label %.lr.ph59.i.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph59.i.i.i.preheader:                         ; preds = %.preheader.i.i.i, %.preheader42.i.i.i
  %.158.i.i.i.ph = phi i64 [ %2, %.preheader42.i.i.i ], [ %i.gu, %.preheader.i.i.i ]
  %.12757.i.i.i.ph = phi ptr [ %i.er, %.preheader42.i.i.i ], [ %i.gs, %.preheader.i.i.i ]
  %.12956.i.i.i.ph = phi ptr [ %i.bn, %.preheader42.i.i.i ], [ %i.gr, %.preheader.i.i.i ]
  %.13155.i.i.i.ph = phi ptr [ %0, %.preheader42.i.i.i ], [ %i.gt, %.preheader.i.i.i ]
  %.14154.i.i.i.ph = phi i64 [ 0, %.preheader42.i.i.i ], [ %i.gp, %.preheader.i.i.i ]
  br label %.lr.ph59.i.i.i

.preheader.i.i.i:                                 ; preds = %.lr.ph.i.i.i
  %.not3453.i.i.i = icmp eq i64 %i.gu, 0
  br i1 %.not3453.i.i.i, label %.lr.ph.i11.i.i, label %.lr.ph59.i.i.i.preheader

.lr.ph.i.i.i:                                     ; preds = %.preheader42.i.i.i, %.lr.ph.i.i.i
  %.048.i.i.i = phi i64 [ %i.gu, %.lr.ph.i.i.i ], [ %2, %.preheader42.i.i.i ]
  %.02647.i.i.i = phi ptr [ %i.gs, %.lr.ph.i.i.i ], [ %i.er, %.preheader42.i.i.i ] ; 5 uses
  %.02846.i.i.i = phi ptr [ %i.gr, %.lr.ph.i.i.i ], [ %i.bn, %.preheader42.i.i.i ] ; 5 uses
  %.03045.i.i.i = phi ptr [ %i.gt, %.lr.ph.i.i.i ], [ %0, %.preheader42.i.i.i ] ; 5 uses
  %.04044.i.i.i = phi i64 [ %i.gp, %.lr.ph.i.i.i ], [ 0, %.preheader42.i.i.i ]
  %i.eu = load i64, ptr %.02846.i.i.i, align 8, !tbaa !96
  %i.ev = load i64, ptr %.02647.i.i.i, align 8, !tbaa !96
  %i.ew = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.eu, i64 %i.ev) ; 2 uses
  %i.ex = extractvalue { i64, i1 } %i.ew, 1
  %i.ey = extractvalue { i64, i1 } %i.ew, 0
  %i.ez = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ey, i64 %.04044.i.i.i) ; 2 uses
  %i.fa = extractvalue { i64, i1 } %i.ez, 1
  %i.fb = extractvalue { i64, i1 } %i.ez, 0
  %i.fc = or i1 %i.ex, %i.fa
  %i.fd = zext i1 %i.fc to i64
  store i64 %i.fb, ptr %.03045.i.i.i, align 8, !tbaa !96
  %i.fe = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 8
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !96
  %i.fg = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 8
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !96
  %i.fi = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.ff, i64 %i.fh) ; 2 uses
  %i.fj = extractvalue { i64, i1 } %i.fi, 1
  %i.fk = extractvalue { i64, i1 } %i.fi, 0
  %i.fl = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fk, i64 %i.fd) ; 2 uses
  %i.fm = extractvalue { i64, i1 } %i.fl, 1
  %i.fn = extractvalue { i64, i1 } %i.fl, 0
  %i.fo = or i1 %i.fj, %i.fm
  %i.fp = zext i1 %i.fo to i64
  %i.fq = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 8
  store i64 %i.fn, ptr %i.fq, align 8, !tbaa !96
  %i.fr = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 16
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !96
  %i.ft = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 16
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !96
  %i.fv = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fs, i64 %i.fu) ; 2 uses
  %i.fw = extractvalue { i64, i1 } %i.fv, 1
  %i.fx = extractvalue { i64, i1 } %i.fv, 0
  %i.fy = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.fx, i64 %i.fp) ; 2 uses
  %i.fz = extractvalue { i64, i1 } %i.fy, 1
  %i.ga = extractvalue { i64, i1 } %i.fy, 0
  %i.gb = or i1 %i.fw, %i.fz
  %i.gc = zext i1 %i.gb to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 16
  store i64 %i.ga, ptr %i.gd, align 8, !tbaa !96
  %i.ge = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 24
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !96
  %i.gg = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 24
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !96
  %i.gi = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gf, i64 %i.gh) ; 2 uses
  %i.gj = extractvalue { i64, i1 } %i.gi, 1
  %i.gk = extractvalue { i64, i1 } %i.gi, 0
  %i.gl = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gk, i64 %i.gc) ; 2 uses
  %i.gm = extractvalue { i64, i1 } %i.gl, 1
  %i.gn = extractvalue { i64, i1 } %i.gl, 0
  %i.go = or i1 %i.gj, %i.gm
  %i.gp = zext i1 %i.go to i64                    ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 24
  store i64 %i.gn, ptr %i.gq, align 8, !tbaa !96
  %i.gr = getelementptr inbounds nuw i8, ptr %.02846.i.i.i, i64 32 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %.02647.i.i.i, i64 32 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.03045.i.i.i, i64 32 ; 2 uses
  %i.gu = add i64 %.048.i.i.i, -4                 ; 4 uses
  %.not.i.i.i = icmp ult i64 %i.gu, 4
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !13

.lr.ph59.i.i.i:                                   ; preds = %.lr.ph59.i.i.i.preheader, %.lr.ph59.i.i.i
  %.158.i.i.i = phi i64 [ %i.hi, %.lr.ph59.i.i.i ], [ %.158.i.i.i.ph, %.lr.ph59.i.i.i.preheader ]
  %.12757.i.i.i = phi ptr [ %i.hg, %.lr.ph59.i.i.i ], [ %.12757.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.12956.i.i.i = phi ptr [ %i.hf, %.lr.ph59.i.i.i ], [ %.12956.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.13155.i.i.i = phi ptr [ %i.hh, %.lr.ph59.i.i.i ], [ %.13155.i.i.i.ph, %.lr.ph59.i.i.i.preheader ] ; 2 uses
  %.14154.i.i.i = phi i64 [ %i.he, %.lr.ph59.i.i.i ], [ %.14154.i.i.i.ph, %.lr.ph59.i.i.i.preheader ]
  %i.gv = load i64, ptr %.12956.i.i.i, align 8, !tbaa !96
  %i.gw = load i64, ptr %.12757.i.i.i, align 8, !tbaa !96
  %i.gx = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gv, i64 %i.gw) ; 2 uses
  %i.gy = extractvalue { i64, i1 } %i.gx, 1
  %i.gz = extractvalue { i64, i1 } %i.gx, 0
  %i.ha = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %i.gz, i64 %.14154.i.i.i) ; 2 uses
  %i.hb = extractvalue { i64, i1 } %i.ha, 1
  %i.hc = extractvalue { i64, i1 } %i.ha, 0
  %i.hd = or i1 %i.gy, %i.hb
  %i.he = zext i1 %i.hd to i64                    ; 2 uses
  store i64 %i.hc, ptr %.13155.i.i.i, align 8, !tbaa !96
  %i.hf = getelementptr inbounds nuw i8, ptr %.12956.i.i.i, i64 8
  %i.hg = getelementptr inbounds nuw i8, ptr %.12757.i.i.i, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %.13155.i.i.i, i64 8
  %i.hi = add nsw i64 %.158.i.i.i, -1             ; 2 uses
  %.not34.i.i.i = icmp eq i64 %i.hi, 0
  br i1 %.not34.i.i.i, label %.lr.ph.i11.i.i, label %.lr.ph59.i.i.i, !llvm.loop !14

.lr.ph.i11.i.i:                                   ; preds = %.lr.ph59.i.i.i, %.preheader.i.i.i
  %.032.i.ph.i.i = phi i64 [ %i.gp, %.preheader.i.i.i ], [ %i.he, %.lr.ph59.i.i.i ]
  %i.hj = sub nsw i64 %i.lx, %.032.i.ph.i.i
  %i.hk = call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.hj) #38, !srcloc !108 ; 3 uses
  %i.hl = xor i64 %i.hk, -1                       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i11.i.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.hk, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.hl, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %wide.load = load <2 x i64>, ptr %i.bn, align 8, !tbaa !96
  %wide.load239 = load <2 x i64>, ptr %i.bq, align 8, !tbaa !96
  %wide.load240 = load <2 x i64>, ptr %0, align 8, !tbaa !96
  %wide.load241 = load <2 x i64>, ptr %i.br, align 8, !tbaa !96
  %i.hm = and <2 x i64> %wide.load, %broadcast.splat
  %i.hn = and <2 x i64> %wide.load239, %broadcast.splat
  %i.ho = and <2 x i64> %wide.load240, %broadcast.splat238
  %i.hp = and <2 x i64> %wide.load241, %broadcast.splat238
  %i.hq = or disjoint <2 x i64> %i.ho, %i.hm
  %i.hr = or disjoint <2 x i64> %i.hp, %i.hn
  store <2 x i64> %i.hq, ptr %0, align 8, !tbaa !96
  store <2 x i64> %i.hr, ptr %i.br, align 8, !tbaa !96
  br i1 %i.bs, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %wide.load.1 = load <2 x i64>, ptr %i.bt, align 8, !tbaa !96
  %wide.load239.1 = load <2 x i64>, ptr %i.bu, align 8, !tbaa !96
  %wide.load240.1 = load <2 x i64>, ptr %i.bv, align 8, !tbaa !96
  %wide.load241.1 = load <2 x i64>, ptr %i.bw, align 8, !tbaa !96
  %i.hs = and <2 x i64> %wide.load.1, %broadcast.splat
  %i.ht = and <2 x i64> %wide.load239.1, %broadcast.splat
  %i.hu = and <2 x i64> %wide.load240.1, %broadcast.splat238
  %i.hv = and <2 x i64> %wide.load241.1, %broadcast.splat238
  %i.hw = or disjoint <2 x i64> %i.hu, %i.hs
  %i.hx = or disjoint <2 x i64> %i.hv, %i.ht
  store <2 x i64> %i.hw, ptr %i.bv, align 8, !tbaa !96
  store <2 x i64> %i.hx, ptr %i.bw, align 8, !tbaa !96
  br label %middle.block

middle.block:                                     ; preds = %vector.body.1, %vector.ph
  br i1 %cmp.n, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i11.i.i, %middle.block
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i11.i.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i.i = phi i64 [ %i.if, %scalar.ph ], [ %.09.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.hy = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %.09.i.i.i
  %i.hz = load i64, ptr %i.hy, align 8, !tbaa !96
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.09.i.i.i ; 2 uses
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !96
  %i.ic = and i64 %i.hz, %i.hk
  %i.id = and i64 %i.ib, %i.hl
  %i.ie = or disjoint i64 %i.id, %i.ic
  store i64 %i.ie, ptr %i.ia, align 8, !tbaa !96
  %i.if = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.if, %2
  br i1 %exitcond.not.i.i.i, label %bn_mod_mul_montgomery_small.exit, label %scalar.ph, !llvm.loop !685

.lr.ph.i:                                         ; preds = %bb.v, %bn_mul_add_words.exit
  %.04354.i = phi i64 [ %i.ly, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %.04453.i = phi i64 [ %i.lx, %bn_mul_add_words.exit ], [ 0, %bb.v ] ; 2 uses
  %i.ig = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.04354.i ; 4 uses
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !96
  %i.ii = mul i64 %i.ih, %i.et
  %.pre171 = zext i64 %i.ii to i128               ; 7 uses
  br i1 %.not56.i, label %.lr.ph69.i.preheader, label %.lr.ph.i114

.preheader.i:                                     ; preds = %.lr.ph.i114
  %.not5464.i = icmp eq i64 %i.ks, 0
  br i1 %.not5464.i, label %bn_mul_add_words.exit, label %.lr.ph69.i.preheader

.lr.ph69.i.preheader:                             ; preds = %.lr.ph.i, %.preheader.i
  %.168.i.ph = phi ptr [ %i.ig, %.lr.ph.i ], [ %i.kr, %.preheader.i ] ; 4 uses
  %.14867.i.ph = phi ptr [ %i.er, %.lr.ph.i ], [ %i.kq, %.preheader.i ] ; 3 uses
  %.15066.i.ph = phi i64 [ %2, %.lr.ph.i ], [ %i.ks, %.preheader.i ] ; 4 uses
  %.15265.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %i.kp, %.preheader.i ] ; 2 uses
  %xtraiter = and i64 %.15066.i.ph, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph69.i.prol.loopexit, label %.lr.ph69.i.prol

.lr.ph69.i.prol:                                  ; preds = %.lr.ph69.i.preheader
  %i.ij = load i64, ptr %.14867.i.ph, align 8, !tbaa !96
  %i.ik = zext i64 %i.ij to i128
  %i.il = mul nuw i128 %.pre171, %i.ik
  %i.im = load i64, ptr %.168.i.ph, align 8, !tbaa !96
  %i.in = zext i64 %i.im to i128
  %i.io = zext i64 %.15265.i.ph to i128
  %i.ip = add nuw nsw i128 %i.in, %i.io
  %i.iq = add nuw i128 %i.ip, %i.il               ; 2 uses
  %i.ir = trunc i128 %i.iq to i64
  store i64 %i.ir, ptr %.168.i.ph, align 8, !tbaa !96
  %i.is = lshr i128 %i.iq, 64
  %i.it = trunc nuw i128 %i.is to i64             ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %.14867.i.ph, i64 8
  %i.iv = getelementptr inbounds nuw i8, ptr %.168.i.ph, i64 8
  %i.iw = add nsw i64 %.15066.i.ph, -1
  br label %.lr.ph69.i.prol.loopexit

.lr.ph69.i.prol.loopexit:                         ; preds = %.lr.ph69.i.prol, %.lr.ph69.i.preheader
  %.lcssa252.unr = phi i64 [ poison, %.lr.ph69.i.preheader ], [ %i.it, %.lr.ph69.i.prol ]
  %.168.i.unr = phi ptr [ %.168.i.ph, %.lr.ph69.i.preheader ], [ %i.iv, %.lr.ph69.i.prol ]
  %.14867.i.unr = phi ptr [ %.14867.i.ph, %.lr.ph69.i.preheader ], [ %i.iu, %.lr.ph69.i.prol ]
  %.15066.i.unr = phi i64 [ %.15066.i.ph, %.lr.ph69.i.preheader ], [ %i.iw, %.lr.ph69.i.prol ]
  %.15265.i.unr = phi i64 [ %.15265.i.ph, %.lr.ph69.i.preheader ], [ %i.it, %.lr.ph69.i.prol ]
  %i.ix = icmp eq i64 %.15066.i.ph, 1
  br i1 %i.ix, label %bn_mul_add_words.exit, label %.lr.ph69.i

.lr.ph.i114:                                      ; preds = %.lr.ph.i, %.lr.ph.i114
  %.04660.i = phi ptr [ %i.kr, %.lr.ph.i114 ], [ %i.ig, %.lr.ph.i ] ; 6 uses
  %.04759.i = phi ptr [ %i.kq, %.lr.ph.i114 ], [ %i.er, %.lr.ph.i ] ; 5 uses
  %.04958.i = phi i64 [ %i.ks, %.lr.ph.i114 ], [ %2, %.lr.ph.i ]
  %.05157.i = phi i64 [ %i.kp, %.lr.ph.i114 ], [ 0, %.lr.ph.i ]
  %i.iy = load i64, ptr %.04759.i, align 8, !tbaa !96
  %i.iz = zext i64 %i.iy to i128
  %i.ja = mul nuw i128 %i.iz, %.pre171
  %i.jb = load i64, ptr %.04660.i, align 8, !tbaa !96
  %i.jc = zext i64 %i.jb to i128
  %i.jd = zext i64 %.05157.i to i128
  %i.je = add nuw nsw i128 %i.jc, %i.jd
  %i.jf = add nuw i128 %i.je, %i.ja               ; 2 uses
  %i.jg = trunc i128 %i.jf to i64
  store i64 %i.jg, ptr %.04660.i, align 8, !tbaa !96
  %i.jh = lshr i128 %i.jf, 64
  %i.ji = getelementptr inbounds nuw i8, ptr %.04759.i, i64 8
  %i.jj = load i64, ptr %i.ji, align 8, !tbaa !96
  %i.jk = zext i64 %i.jj to i128
  %i.jl = mul nuw i128 %i.jk, %.pre171
  %i.jm = getelementptr inbounds nuw i8, ptr %.04660.i, i64 8 ; 2 uses
  %i.jn = load i64, ptr %i.jm, align 8, !tbaa !96
  %i.jo = zext i64 %i.jn to i128
  %i.jp = add nuw i128 %i.jl, %i.jo
  %i.jq = add nuw i128 %i.jp, %i.jh               ; 2 uses
  %i.jr = trunc i128 %i.jq to i64
  store i64 %i.jr, ptr %i.jm, align 8, !tbaa !96
  %i.js = lshr i128 %i.jq, 64
  %i.jt = getelementptr inbounds nuw i8, ptr %.04759.i, i64 16
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !96
  %i.jv = zext i64 %i.ju to i128
  %i.jw = mul nuw i128 %i.jv, %.pre171
  %i.jx = getelementptr inbounds nuw i8, ptr %.04660.i, i64 16 ; 2 uses
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !96
  %i.jz = zext i64 %i.jy to i128
  %i.ka = add nuw i128 %i.jw, %i.jz
  %i.kb = add nuw i128 %i.ka, %i.js               ; 2 uses
  %i.kc = trunc i128 %i.kb to i64
  store i64 %i.kc, ptr %i.jx, align 8, !tbaa !96
  %i.kd = lshr i128 %i.kb, 64
  %i.ke = getelementptr inbounds nuw i8, ptr %.04759.i, i64 24
  %i.kf = load i64, ptr %i.ke, align 8, !tbaa !96
  %i.kg = zext i64 %i.kf to i128
  %i.kh = mul nuw i128 %i.kg, %.pre171
  %i.ki = getelementptr inbounds nuw i8, ptr %.04660.i, i64 24 ; 2 uses
  %i.kj = load i64, ptr %i.ki, align 8, !tbaa !96
  %i.kk = zext i64 %i.kj to i128
  %i.kl = add nuw i128 %i.kh, %i.kk
  %i.km = add nuw i128 %i.kl, %i.kd               ; 2 uses
  %i.kn = trunc i128 %i.km to i64
  store i64 %i.kn, ptr %i.ki, align 8, !tbaa !96
  %i.ko = lshr i128 %i.km, 64
  %i.kp = trunc nuw i128 %i.ko to i64             ; 3 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %.04759.i, i64 32 ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.04660.i, i64 32 ; 2 uses
  %i.ks = add i64 %.04958.i, -4                   ; 4 uses
  %.not.i115 = icmp ult i64 %i.ks, 4
  br i1 %.not.i115, label %.preheader.i, label %.lr.ph.i114, !llvm.loop !21

.lr.ph69.i:                                       ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i
  %.168.i = phi ptr [ %i.lq, %.lr.ph69.i ], [ %.168.i.unr, %.lr.ph69.i.prol.loopexit ] ; 4 uses
  %.14867.i = phi ptr [ %i.lp, %.lr.ph69.i ], [ %.14867.i.unr, %.lr.ph69.i.prol.loopexit ] ; 3 uses
  %.15066.i = phi i64 [ %i.lr, %.lr.ph69.i ], [ %.15066.i.unr, %.lr.ph69.i.prol.loopexit ]
  %.15265.i = phi i64 [ %i.lo, %.lr.ph69.i ], [ %.15265.i.unr, %.lr.ph69.i.prol.loopexit ]
  %i.kt = load i64, ptr %.14867.i, align 8, !tbaa !96
  %i.ku = zext i64 %i.kt to i128
  %i.kv = mul nuw i128 %.pre171, %i.ku
  %i.kw = load i64, ptr %.168.i, align 8, !tbaa !96
  %i.kx = zext i64 %i.kw to i128
  %i.ky = zext i64 %.15265.i to i128
  %i.kz = add nuw nsw i128 %i.kx, %i.ky
  %i.la = add nuw i128 %i.kz, %i.kv               ; 2 uses
  %i.lb = trunc i128 %i.la to i64
  store i64 %i.lb, ptr %.168.i, align 8, !tbaa !96
  %i.lc = lshr i128 %i.la, 64
  %i.ld = getelementptr inbounds nuw i8, ptr %.14867.i, i64 8
  %i.le = getelementptr inbounds nuw i8, ptr %.168.i, i64 8 ; 2 uses
  %i.lf = load i64, ptr %i.ld, align 8, !tbaa !96
  %i.lg = zext i64 %i.lf to i128
  %i.lh = mul nuw i128 %.pre171, %i.lg
  %i.li = load i64, ptr %i.le, align 8, !tbaa !96
  %i.lj = zext i64 %i.li to i128
  %i.lk = add nuw nsw i128 %i.lc, %i.lj
  %i.ll = add nuw i128 %i.lk, %i.lh               ; 2 uses
  %i.lm = trunc i128 %i.ll to i64
  store i64 %i.lm, ptr %i.le, align 8, !tbaa !96
  %i.ln = lshr i128 %i.ll, 64
  %i.lo = trunc nuw i128 %i.ln to i64             ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.14867.i, i64 16
  %i.lq = getelementptr inbounds nuw i8, ptr %.168.i, i64 16
  %i.lr = add nsw i64 %.15066.i, -2               ; 2 uses
  %.not54.i116.1 = icmp eq i64 %i.lr, 0
  br i1 %.not54.i116.1, label %bn_mul_add_words.exit, label %.lr.ph69.i, !llvm.loop !22

bn_mul_add_words.exit:                            ; preds = %.lr.ph69.i.prol.loopexit, %.lr.ph69.i, %.preheader.i
  %.0.i117 = phi i64 [ %i.kp, %.preheader.i ], [ %.lcssa252.unr, %.lr.ph69.i.prol.loopexit ], [ %i.lo, %.lr.ph69.i ]
  %i.ls = getelementptr [8 x i8], ptr %i.ig, i64 %2 ; 2 uses
  %i.lt = load i64, ptr %i.ls, align 8, !tbaa !96 ; 2 uses
  %i.lu = add i64 %.0.i117, %.04453.i             ; 2 uses
  %i.lv = add i64 %i.lu, %i.lt                    ; 2 uses
  %.not47.i = icmp ule i64 %i.lv, %i.lt
  %i.lw = or i64 %i.lu, %.04453.i
  %.narrow.i = icmp ne i64 %i.lw, 0
  %narrow.i = select i1 %.not47.i, i1 %.narrow.i, i1 false
  %i.lx = zext i1 %narrow.i to i64                ; 2 uses
  store i64 %i.lv, ptr %i.ls, align 8, !tbaa !96
  %i.ly = add nuw nsw i64 %.04354.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ly, %2
  br i1 %exitcond.not.i, label %.preheader42.i.i.i, label %.lr.ph.i, !llvm.loop !23

bb.w:                                             ; preds = %bn_sqr_small.exit.i
  call void @ERR_put_error(i32 noundef 3, i32 noundef 0, i32 noundef 66, ptr noundef nonnull @.str.8, i32 noundef 197) #36
  call void @abort() #37
  unreachable

bn_mod_mul_montgomery_small.exit:                 ; preds = %scalar.ph, %middle.block, %bb.v
  call void @OPENSSL_cleanse(ptr noundef nonnull %i.b, i64 noundef %i.bk) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  %i.lz = add nuw i32 %.082151, 1
  %exitcond171 = icmp eq i32 %.082151, %.084.lcssa
  br i1 %exitcond171, label %bb.y, label %.preheader, !llvm.loop !686

.critedge100:                                     ; preds = %._crit_edge149
  br i1 %i.az, label %_ZL14OPENSSL_memcpyPvPKvm.exit109, label %bb.x

bb.x:                                             ; preds = %.critedge100
  %i.ma = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %0, ptr nonnull readonly align 8 %i.ma, i64 %i.ay, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

bb.y:                                             ; preds = %bn_mod_mul_montgomery_small.exit
  %i.mb = getelementptr inbounds nuw [72 x i8], ptr %i.d, i64 %.085.lcssa
  call void @bn_mod_mul_montgomery_small(ptr noundef %0, ptr noundef %0, ptr noundef nonnull %i.mb, i64 noundef %2, ptr noundef %5)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit109

_ZL14OPENSSL_memcpyPvPKvm.exit109:                ; preds = %bb.x, %.critedge100, %bb.y
  %i.mc = zext nneg i32 %.084.lcssa to i64
  %i.md = icmp eq i64 %.us-phi, %i.mc
  %i.me = add nuw i32 %.084.lcssa, 1
  %i.mf = zext i32 %i.me to i64
  %i.mg = sub i64 %.us-phi, %i.mf
  br i1 %i.md, label %.loopexit, label %.outer

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
  %i.e = icmp ne i64 %2, %i.d
  %i.f = icmp ugt i64 %2, 9
  %or.cond = or i1 %i.f, %i.e
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #37
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %.loopexit.sink.split, label %_ZL14OPENSSL_memcpyPvPKvm.exit

_ZL14OPENSSL_memcpyPvPKvm.exit:                   ; preds = %bb.c
  %i.h = shl nuw nsw i64 %2, 3
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !134
end_hunk_0
