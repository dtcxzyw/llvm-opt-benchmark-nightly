Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_func_scalar?download=true
inline.NumInlined: 4066
inline.NumDeleted: 1630
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 42
begin_hunk_0_@_ZNK6duckdb14StrfTimeFormat22WriteStandardSpecifierENS_16StrTimeSpecifierEPiPKcmPc:bb.a
  %i.fe = or disjoint i32 %i.ez, 1
  %i.ff = zext i32 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !34
  %i.fi = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.fh, ptr %i.fd, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.p:                                             ; preds = %bb.a
  %i.fj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.fk = load i32, ptr %i.fj, align 4, !tbaa !22
  %i.fl = shl i32 %i.fk, 1                        ; 2 uses
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !34
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.fo, ptr %5, align 1, !tbaa !34
  %i.fq = or disjoint i32 %i.fl, 1
  %i.fr = zext i32 %i.fq to i64
  %i.fs = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.fr
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !34
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ft, ptr %i.fp, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.q:                                             ; preds = %bb.a
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !22 ; 4 uses
  %i.fx = urem i32 %i.fw, 1000                    ; 3 uses
  %i.fy = udiv i32 %i.fw, 1000
  %i.fz = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 3 uses
  %i.ga = icmp samesign ugt i32 %i.fx, 99
  br i1 %i.ga, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.gb = getelementptr inbounds nuw i8, ptr %5, i64 7
  %.lhs.trunc.i = trunc nuw nsw i32 %i.fx to i16  ; 2 uses
  %i.gc = urem i16 %.lhs.trunc.i, 100
  %i.gd = shl nuw nsw i16 %i.gc, 1
  %i.ge = zext nneg i16 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.ge ; 2 uses
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !34
  store i8 %i.gg, ptr %i.gb, align 1, !tbaa !34
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 1
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !34
  %i.gj = udiv i16 %.lhs.trunc.i, 100
  %i.gk = trunc nuw nsw i16 %i.gj to i8
  %i.gl = or disjoint i8 %i.gk, 48
  store i8 %i.gl, ptr %i.fz, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit.i

bb.s:                                             ; preds = %bb.q
  store i8 48, ptr %i.fz, align 1, !tbaa !34
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 7
  %i.gn = shl nuw nsw i32 %i.fx, 1
  %i.go = zext nneg i32 %i.gn to i64
  %i.gp = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.go ; 2 uses
  %i.gq = load i8, ptr %i.gp, align 1, !tbaa !34
  store i8 %i.gq, ptr %i.gm, align 1, !tbaa !34
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit.i

_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit.i: ; preds = %bb.s, %bb.r
  %.sink.i.i = phi i8 [ %i.gi, %bb.r ], [ %i.gs, %bb.s ]
  %i.gt = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %.sink.i.i, ptr %i.gt, align 1, !tbaa !34
  %i.gu = urem i32 %i.fy, 100
  %i.gv = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.gw = shl nuw nsw i32 %i.gu, 1
  %i.gx = zext nneg i32 %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.gx ; 2 uses
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !34
  %i.ha = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.gz, ptr %i.gv, align 1, !tbaa !34
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gy, i64 1
  %i.hc = load i8, ptr %i.hb, align 1, !tbaa !34
  store i8 %i.hc, ptr %i.ha, align 1, !tbaa !34
  %i.hd = udiv i32 %i.fw, 100000
  %.lhs.trunc174 = trunc nuw i32 %i.hd to i16
  %i.he = urem i16 %.lhs.trunc174, 100
  %i.hf = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.hg = shl nuw nsw i16 %i.he, 1
  %i.hh = zext nneg i16 %i.hg to i64
  %i.hi = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.hh ; 2 uses
  %i.hj = load i8, ptr %i.hi, align 1, !tbaa !34
  %i.hk = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.hj, ptr %i.hf, align 1, !tbaa !34
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 1
  %i.hm = load i8, ptr %i.hl, align 1, !tbaa !34
  store i8 %i.hm, ptr %i.hk, align 1, !tbaa !34
  %i.hn = udiv i32 %i.fw, 10000000
  %.lhs.trunc176 = trunc nuw nsw i32 %i.hn to i16
  %i.ho = urem i16 %.lhs.trunc176, 100
  %i.hp = shl nuw nsw i16 %i.ho, 1
  %i.hq = zext nneg i16 %i.hp to i64
  %i.hr = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.hq ; 2 uses
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !34
  %i.ht = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.hs, ptr %5, align 1, !tbaa !34
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hr, i64 1
  %i.hv = load i8, ptr %i.hu, align 1, !tbaa !34
  store i8 %i.hv, ptr %i.ht, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit.loopexit149: ; preds = %bb.a
  %i.hw = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !22
  %i.hy = sdiv i32 %i.hx, 1000                    ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %5, i64 6
  %i.ia = urem i32 %i.hy, 100
  %i.ib = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.ic = shl nuw nsw i32 %i.ia, 1
  %i.id = zext nneg i32 %i.ic to i64
  %i.ie = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.id ; 2 uses
  %i.if = load i8, ptr %i.ie, align 1, !tbaa !34
  %i.ig = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.if, ptr %i.ib, align 1, !tbaa !34
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 1
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !34
  store i8 %i.ii, ptr %i.ig, align 1, !tbaa !34
  %i.ij = udiv i32 %i.hy, 100
  %i.ik = urem i32 %i.ij, 100
  %i.il = getelementptr inbounds nuw i8, ptr %5, i64 2
  %i.im = shl nuw nsw i32 %i.ik, 1
  %i.in = zext nneg i32 %i.im to i64
  %i.io = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.in ; 2 uses
  %i.ip = load i8, ptr %i.io, align 1, !tbaa !34
  %i.iq = getelementptr inbounds nuw i8, ptr %5, i64 3
  store i8 %i.ip, ptr %i.il, align 1, !tbaa !34
  %i.ir = getelementptr inbounds nuw i8, ptr %i.io, i64 1
  %i.is = load i8, ptr %i.ir, align 1, !tbaa !34
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !34
  %i.it = udiv i32 %i.hy, 10000
  %i.iu = urem i32 %i.it, 100
  %i.iv = shl nuw nsw i32 %i.iu, 1
  %i.iw = zext nneg i32 %i.iv to i64
  %i.ix = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.iw ; 2 uses
  %i.iy = load i8, ptr %i.ix, align 1, !tbaa !34
  %i.iz = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.iy, ptr %5, align 1, !tbaa !34
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ix, i64 1
  %i.jb = load i8, ptr %i.ja, align 1, !tbaa !34
  store i8 %i.jb, ptr %i.iz, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.t:                                             ; preds = %bb.a
  %i.jc = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !22
  %i.je = sdiv i32 %i.jd, 1000000                 ; 4 uses
  %i.jf = icmp ugt i32 %i.je, 99
  br i1 %i.jf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.jg = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.jh = urem i32 %i.je, 100
  %i.ji = shl nuw nsw i32 %i.jh, 1
  %i.jj = zext nneg i32 %i.ji to i64
  %i.jk = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.jj ; 2 uses
  %i.jl = load i8, ptr %i.jk, align 1, !tbaa !34
  store i8 %i.jl, ptr %i.jg, align 1, !tbaa !34
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jk, i64 1
  %i.jn = load i8, ptr %i.jm, align 1, !tbaa !34
  %i.jo = udiv i32 %i.je, 100
  %i.jp = trunc i32 %i.jo to i8
  %i.jq = add i8 %i.jp, 48
  store i8 %i.jq, ptr %5, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit

bb.v:                                             ; preds = %bb.t
  store i8 48, ptr %5, align 1, !tbaa !34
  %i.jr = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.js = shl nuw nsw i32 %i.je, 1
  %i.jt = zext nneg i32 %i.js to i64
  %i.ju = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.jt ; 2 uses
  %i.jv = load i8, ptr %i.ju, align 1, !tbaa !34
  store i8 %i.jv, ptr %i.jr, align 1, !tbaa !34
  %i.jw = getelementptr inbounds nuw i8, ptr %i.ju, i64 1
  %i.jx = load i8, ptr %i.jw, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit

_ZNK6duckdb14StrfTimeFormat12WritePadded3EPcj.exit: ; preds = %bb.u, %bb.v
  %.sink.i114 = phi i8 [ %i.jn, %bb.u ], [ %i.jx, %bb.v ]
  %i.jy = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %.sink.i114, ptr %i.jy, align 1, !tbaa !34
  %.0.i = getelementptr inbounds nuw i8, ptr %5, i64 3
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.w:                                             ; preds = %bb.a
  %i.jz = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !22
  %i.kb = icmp slt i32 %i.ka, 0
  %i.kc = select i1 %i.kb, i8 45, i8 43
  %i.kd = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.kc, ptr %5, align 1, !tbaa !34
  %i.ke = load i32, ptr %i.jz, align 4, !tbaa !22
  %i.kf = tail call i32 @llvm.abs.i32(i32 %i.ke, i1 true) ; 2 uses
  %i.kg = udiv i32 %i.kf, 3600
  %i.kh = urem i32 %i.kf, 3600                    ; 2 uses
  %.lhs.trunc.i115 = trunc nuw nsw i32 %i.kh to i16 ; 2 uses
  %i.ki = urem i16 %.lhs.trunc.i115, 60           ; 3 uses
  %i.kj = udiv i16 %.lhs.trunc.i115, 60
  %i.kk = shl nuw nsw i32 %i.kg, 1
  %i.kl = zext nneg i32 %i.kk to i64
  %i.km = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.kl ; 2 uses
  %i.kn = load i8, ptr %i.km, align 1, !tbaa !34
  %i.ko = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.kn, ptr %i.kd, align 1, !tbaa !34
  %i.kp = getelementptr inbounds nuw i8, ptr %i.km, i64 1
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !34
  %i.kr = getelementptr inbounds nuw i8, ptr %5, i64 3 ; 2 uses
  store i8 %i.kq, ptr %i.ko, align 1, !tbaa !34
  %i.ks = icmp samesign ugt i32 %i.kh, 59
  %i.kt = icmp ne i16 %i.ki, 0
  %or.cond = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond, label %bb.x, label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.x:                                             ; preds = %bb.w
  %i.ku = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 58, ptr %i.kr, align 1, !tbaa !34
  %i.kv = shl nuw nsw i16 %i.kj, 1
  %i.kw = zext nneg i16 %i.kv to i64
  %i.kx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.kw ; 2 uses
  %i.ky = load i8, ptr %i.kx, align 1, !tbaa !34
  %i.kz = getelementptr inbounds nuw i8, ptr %5, i64 5
  store i8 %i.ky, ptr %i.ku, align 1, !tbaa !34
  %i.la = getelementptr inbounds nuw i8, ptr %i.kx, i64 1
  %i.lb = load i8, ptr %i.la, align 1, !tbaa !34
  %i.lc = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  store i8 %i.lb, ptr %i.kz, align 1, !tbaa !34
  %.not95 = icmp eq i16 %i.ki, 0
  br i1 %.not95, label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ld = getelementptr inbounds nuw i8, ptr %5, i64 7
  store i8 58, ptr %i.lc, align 1, !tbaa !34
  %i.le = shl nuw nsw i16 %i.ki, 1
  %i.lf = zext nneg i16 %i.le to i64
  %i.lg = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.lf ; 2 uses
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !34
  %i.li = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 %i.lh, ptr %i.ld, align 1, !tbaa !34
  %i.lj = getelementptr inbounds nuw i8, ptr %i.lg, i64 1
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !34
  %i.ll = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %i.lk, ptr %i.li, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.z:                                             ; preds = %bb.a
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %5, ptr nonnull align 1 %3, i64 %4, i1 false)
  %i.lm = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #34
  %i.ln = getelementptr inbounds nuw i8, ptr %5, i64 %i.lm
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ab:                                            ; preds = %bb.a
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lp = load i32, ptr %i.lo, align 4, !tbaa !22
  %i.lq = srem i32 %i.lp, 100                     ; 3 uses
  %i.lr = icmp ugt i32 %i.lq, 9
  br i1 %i.lr, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %.mask144 = shl nsw i32 %i.lq, 1
  %i.ls = and i32 %.mask144, 510
  %i.lt = zext nneg i32 %i.ls to i64
  %i.lu = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.lt ; 2 uses
  %i.lv = load i8, ptr %i.lu, align 1, !tbaa !34
  %i.lw = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.lv, ptr %5, align 1, !tbaa !34
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 1
  %i.ly = load i8, ptr %i.lx, align 1, !tbaa !34
  %i.lz = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ly, ptr %i.lw, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ad:                                            ; preds = %bb.ab
  %i.ma = trunc nuw nsw i32 %i.lq to i8
  %i.mb = or disjoint i8 %i.ma, 48
  store i8 %i.mb, ptr %5, align 1, !tbaa !34
  %i.mc = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ae:                                            ; preds = %bb.a
  %i.md = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !22 ; 2 uses
  %i.mf = trunc i32 %i.me to i8                   ; 2 uses
  %i.mg = icmp ugt i8 %i.mf, 9
  br i1 %i.mg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %.mask143 = shl i32 %i.me, 1
  %i.mh = and i32 %.mask143, 510
  %i.mi = zext nneg i32 %i.mh to i64
  %i.mj = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.mi ; 2 uses
  %i.mk = load i8, ptr %i.mj, align 1, !tbaa !34
  %i.ml = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.mk, ptr %5, align 1, !tbaa !34
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 1
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !34
  %i.mo = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.mn, ptr %i.ml, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ag:                                            ; preds = %bb.ae
  %i.mp = or disjoint i8 %i.mf, 48
  store i8 %i.mp, ptr %5, align 1, !tbaa !34
  %i.mq = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ah:                                            ; preds = %bb.a
  %i.mr = load i32, ptr %2, align 4, !tbaa !22
  %i.ms = tail call noundef i32 @llvm.abs.i32(i32 %i.mr, i1 true)
  %i.mt = urem i32 %i.ms, 100                     ; 3 uses
  %i.mu = icmp samesign ugt i32 %i.mt, 9
  br i1 %i.mu, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.mv = shl nuw nsw i32 %i.mt, 1
  %i.mw = zext nneg i32 %i.mv to i64
  %i.mx = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.mw ; 2 uses
  %i.my = load i8, ptr %i.mx, align 1, !tbaa !34
  %i.mz = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.my, ptr %5, align 1, !tbaa !34
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 1
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !34
  %i.nc = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.nb, ptr %i.mz, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.aj:                                            ; preds = %bb.ah
  %i.nd = trunc nuw nsw i32 %i.mt to i8
  %i.ne = or disjoint i8 %i.nd, 48
  store i8 %i.ne, ptr %5, align 1, !tbaa !34
  %i.nf = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ak:                                            ; preds = %bb.a
  %i.ng = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.nh = load i32, ptr %i.ng, align 4, !tbaa !22 ; 2 uses
  %i.ni = trunc i32 %i.nh to i8                   ; 2 uses
  %i.nj = icmp ugt i8 %i.ni, 9
  br i1 %i.nj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %.mask141 = shl i32 %i.nh, 1
  %i.nk = and i32 %.mask141, 510
  %i.nl = zext nneg i32 %i.nk to i64
  %i.nm = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.nl ; 2 uses
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !34
  %i.no = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.nn, ptr %5, align 1, !tbaa !34
  %i.np = getelementptr inbounds nuw i8, ptr %i.nm, i64 1
  %i.nq = load i8, ptr %i.np, align 1, !tbaa !34
  %i.nr = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.nq, ptr %i.no, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.am:                                            ; preds = %bb.ak
  %i.ns = or disjoint i8 %i.ni, 48
  store i8 %i.ns, ptr %5, align 1, !tbaa !34
  %i.nt = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.an:                                            ; preds = %bb.a
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.nv = load i32, ptr %i.nu, align 4, !tbaa !22
  %i.nw = srem i32 %i.nv, 12                      ; 2 uses
  %i.nx = icmp eq i32 %i.nw, 0
  %i.ny = trunc nsw i32 %i.nw to i8
  %i.nz = select i1 %i.nx, i8 12, i8 %i.ny        ; 3 uses
  %i.oa = icmp ugt i8 %i.nz, 9
  br i1 %i.oa, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.ob = zext i8 %i.nz to i64
  %i.oc = shl nuw nsw i64 %i.ob, 1
  %i.od = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.oc ; 2 uses
  %i.oe = load i8, ptr %i.od, align 1, !tbaa !34
  %i.of = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.oe, ptr %5, align 1, !tbaa !34
  %i.og = getelementptr inbounds nuw i8, ptr %i.od, i64 1
  %i.oh = load i8, ptr %i.og, align 1, !tbaa !34
  %i.oi = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.oh, ptr %i.of, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.ap:                                            ; preds = %bb.an
  %i.oj = or disjoint i8 %i.nz, 48
  store i8 %i.oj, ptr %5, align 1, !tbaa !34
  %i.ok = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.aq:                                            ; preds = %bb.a
  %i.ol = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.om = load i32, ptr %i.ol, align 4, !tbaa !22 ; 2 uses
  %i.on = trunc i32 %i.om to i8                   ; 2 uses
  %i.oo = icmp ugt i8 %i.on, 9
  br i1 %i.oo, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %.mask140 = shl i32 %i.om, 1
  %i.op = and i32 %.mask140, 510
  %i.oq = zext nneg i32 %i.op to i64
  %i.or = getelementptr inbounds nuw i8, ptr @_ZN10duckdb_fmt2v68internal10basic_dataIvE6digitsE, i64 %i.oq ; 2 uses
  %i.os = load i8, ptr %i.or, align 1, !tbaa !34
  %i.ot = getelementptr inbounds nuw i8, ptr %5, i64 1
  store i8 %i.os, ptr %5, align 1, !tbaa !34
  %i.ou = getelementptr inbounds nuw i8, ptr %i.or, i64 1
  %i.ov = load i8, ptr %i.ou, align 1, !tbaa !34
  %i.ow = getelementptr inbounds nuw i8, ptr %5, i64 2
  store i8 %i.ov, ptr %i.ot, align 1, !tbaa !34
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.as:                                            ; preds = %bb.aq
  %i.ox = or disjoint i8 %i.on, 48
  store i8 %i.ox, ptr %5, align 1, !tbaa !34
  %i.oy = getelementptr inbounds nuw i8, ptr %5, i64 1
  br label %_ZNK6duckdb14StrfTimeFormat11WritePaddedEPcjm.exit

bb.at:                                            ; preds = %bb.a
  %i.oz = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !22 ; 2 uses
  %i.pb = trunc i32 %i.pa to i8                   ; 2 uses
  %i.pc = icmp ugt i8 %i.pb, 9
  br i1 %i.pc, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %.mask = shl i32 %i.pa, 1
end_hunk_0
