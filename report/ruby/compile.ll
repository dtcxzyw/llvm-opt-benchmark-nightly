Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/compile?download=true
inline.NumInlined: 6690
inline.NumDeleted: 334
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 112
begin_hunk_0_@compile_op_asgn1:bb.a
  %i.ed = getelementptr i8, ptr %i.eb, i64 12
  store i32 %.0.lcssa.i.i.i.i218, ptr %i.ed, align 4, !tbaa !37
  br label %new_label_body.exit225

new_label_body.exit225:                           ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i217
  %i.ee = phi i32 [ %i.do, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i217 ] ; 2 uses
  %.022.i.i.i.i215 = phi ptr [ %i.dm, %new_label_body.exit ], [ %i.eb, %._crit_edge.i.i.i.i217 ] ; 2 uses
  %i.ef = getelementptr i8, ptr %.022.i.i.i.i215, i64 16
  %i.eg = getelementptr i8, ptr %.022.i.i.i.i215, i64 8
  %i.eh = zext i32 %i.ee to i64
  %i.ei = getelementptr i8, ptr %i.ef, i64 %i.eh  ; 8 uses
  %i.ej = add i32 %i.ee, 48
  store i32 %i.ej, ptr %i.eg, align 8, !tbaa !37
  store i32 1, ptr %i.ei, align 8, !tbaa !182
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  store ptr null, ptr %i.ek, align 8, !tbaa !183
  %i.el = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.em = getelementptr i8, ptr %i.el, i64 132    ; 2 uses
  %i.en = load i32, ptr %i.em, align 4, !tbaa !184 ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4, !tbaa !184
  %i.ep = getelementptr i8, ptr %i.ei, i64 24
  store i32 %i.en, ptr %i.ep, align 8, !tbaa !111
  %i.eq = getelementptr i8, ptr %i.ei, i64 40     ; 2 uses
  %i.er = getelementptr i8, ptr %i.ei, i64 44     ; 2 uses
  %i.es = load i8, ptr %i.er, align 4
  %i.et = and i8 %i.es, -16
  store i8 %i.et, ptr %i.er, align 4
  %i.eu = getelementptr i8, ptr %i.ei, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.eu, align 4, !tbaa !37
  %i.ev = load i64, ptr %2, align 8, !tbaa !172
  %i.ew = lshr i64 %i.ev, 15
  %i.ex = trunc i64 %i.ew to i32
  %i.ey = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ez = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ex, i32 noundef %i.ey, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fa = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.fb = getelementptr i8, ptr %i.ez, i64 16
  store ptr %i.fa, ptr %i.fb, align 8, !tbaa !61
  %i.fc = getelementptr i8, ptr %i.fa, i64 8
  store ptr %i.ez, ptr %i.fc, align 8, !tbaa !62
  store ptr %i.ez, ptr %i.bg, align 8, !tbaa !42
  %i.fd = load i64, ptr %2, align 8, !tbaa !172
  %i.fe = lshr i64 %i.fd, 15
  %i.ff = trunc i64 %i.fe to i32
  %i.fg = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.fh = ptrtoint ptr %i.cy to i64
  %. = select i1 %i.bz, i32 73, i32 74
  %i.fi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.ff, i32 noundef %i.fg, i32 noundef %., i32 noundef 1, i64 noundef %i.fh) ; 3 uses
  %i.fj = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fi, i64 16
  store ptr %i.fj, ptr %i.fk, align 8, !tbaa !61
  %i.fl = getelementptr i8, ptr %i.fj, i64 8
  store ptr %i.fi, ptr %i.fl, align 8, !tbaa !62
  store ptr %i.fi, ptr %i.bg, align 8, !tbaa !42
  %storemerge326.in = load i32, ptr %i.dg, align 8, !tbaa !240
  %storemerge326 = add i32 %storemerge326.in, 1
  store i32 %storemerge326, ptr %i.dg, align 8, !tbaa !240
  %i.fm = load i64, ptr %2, align 8, !tbaa !172
  %i.fn = lshr i64 %i.fm, 15
  %i.fo = trunc i64 %i.fn to i32
  %i.fp = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.fq = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.fo, i32 noundef %i.fp, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.fr = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.fs = getelementptr i8, ptr %i.fq, i64 16
  store ptr %i.fr, ptr %i.fs, align 8, !tbaa !61
  %i.ft = getelementptr i8, ptr %i.fr, i64 8
  store ptr %i.fq, ptr %i.ft, align 8, !tbaa !62
  store ptr %i.fq, ptr %i.bg, align 8, !tbaa !42
  %i.fu = getelementptr i8, ptr %2, i64 56
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1145 ; 2 uses
  %i.fw = icmp eq ptr %i.fv, null
  br i1 %i.fw, label %ISEQ_COMPILE_DATA.exit.i236, label %iseq_compile_each.exit239

ISEQ_COMPILE_DATA.exit.i236:                      ; preds = %new_label_body.exit225
  %i.fx = load ptr, ptr %i.ca, align 8, !tbaa !47
  %i.fy = getelementptr i8, ptr %i.fx, i64 128
  %i.fz = load i32, ptr %i.fy, align 8, !tbaa !60 ; 2 uses
  %i.ga = icmp eq i32 %i.fz, 0
  br i1 %i.ga, label %bb.o, label %iseq_compile_each.exit239.thread

bb.o:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i236
  %i.gb = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.gc = call i64 @rb_fix2int(i64 noundef %i.gb) #37, !inline_history !169
  %i.gd = trunc i64 %i.gc to i32
  br label %iseq_compile_each.exit239.thread

iseq_compile_each.exit239.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit.i236, %bb.o
  %.0.i238 = phi i32 [ %i.gd, %bb.o ], [ %i.fz, %ISEQ_COMPILE_DATA.exit.i236 ]
  %i.ge = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i238, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.gf = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.gg = getelementptr i8, ptr %i.ge, i64 16
  store ptr %i.gf, ptr %i.gg, align 8, !tbaa !61
  %i.gh = getelementptr i8, ptr %i.gf, i64 8
  store ptr %i.ge, ptr %i.gh, align 8, !tbaa !62
  store ptr %i.ge, ptr %i.bg, align 8, !tbaa !42
  br label %bb.p

iseq_compile_each.exit239:                        ; preds = %new_label_body.exit225
  %i.gi = call fastcc i32 @iseq_compile_each0(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %i.fv, i32 noundef 0), !inline_history !169
  %.not203.not = icmp eq i32 %i.gi, 0
  br i1 %.not203.not, label %.critedge, label %bb.p

bb.p:                                             ; preds = %iseq_compile_each.exit239.thread, %iseq_compile_each.exit239
  br i1 %.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.gj = load i64, ptr %2, align 8, !tbaa !172
  %i.gk = lshr i64 %i.gj, 15
  %i.gl = trunc i64 %i.gk to i32
  %i.gm = load i32, ptr %i.ba, align 8, !tbaa !243
  %sext328 = add i64 %i.bc, 8589934592
  %i.gn = ashr exact i64 %sext328, 31
  %i.go = or disjoint i64 %i.gn, 1
  %i.gp = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.gl, i32 noundef %i.gm, i32 noundef 45, i32 noundef 1, i64 noundef %i.go) ; 3 uses
  %i.gq = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.gr = getelementptr i8, ptr %i.gp, i64 16
  store ptr %i.gq, ptr %i.gr, align 8, !tbaa !61
  %i.gs = getelementptr i8, ptr %i.gq, i64 8
  store ptr %i.gp, ptr %i.gs, align 8, !tbaa !62
  store ptr %i.gp, ptr %i.bg, align 8, !tbaa !42
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.gt = load i32, ptr %i.a, align 4, !tbaa !37  ; 3 uses
  %i.gu = and i32 %i.gt, 1
  %.not204 = icmp eq i32 %i.gu, 0
  br i1 %.not204, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gv = and i32 %i.gt, 4096
  %.not205 = icmp eq i32 %i.gv, 0
  br i1 %.not205, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.gw = load i64, ptr %2, align 8, !tbaa !172
  %i.gx = lshr i64 %i.gw, 15
  %i.gy = trunc i64 %i.gx to i32
  %i.gz = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ha = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.gy, i32 noundef %i.gz, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.hb = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.hc = getelementptr i8, ptr %i.ha, i64 16
  store ptr %i.hb, ptr %i.hc, align 8, !tbaa !61
  %i.hd = getelementptr i8, ptr %i.hb, i64 8
  store ptr %i.ha, ptr %i.hd, align 8, !tbaa !62
  store ptr %i.ha, ptr %i.bg, align 8, !tbaa !42
  %i.he = load i64, ptr %2, align 8, !tbaa !172
  %i.hf = lshr i64 %i.he, 15
  %i.hg = trunc i64 %i.hf to i32
  %i.hh = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.hi = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hg, i32 noundef %i.hh, i32 noundef 35, i32 noundef 1, i64 noundef 20) ; 3 uses
  %i.hj = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hi, i64 16
  store ptr %i.hj, ptr %i.hk, align 8, !tbaa !61
  %i.hl = getelementptr i8, ptr %i.hj, i64 8
  store ptr %i.hi, ptr %i.hl, align 8, !tbaa !62
  store ptr %i.hi, ptr %i.bg, align 8, !tbaa !42
  %i.hm = load i64, ptr %2, align 8, !tbaa !172
  %i.hn = lshr i64 %i.hm, 15
  %i.ho = trunc i64 %i.hn to i32
  %i.hp = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.hq = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.ho, i32 noundef %i.hp, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.hr = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hq, i64 16
  store ptr %i.hr, ptr %i.hs, align 8, !tbaa !61
  %i.ht = getelementptr i8, ptr %i.hr, i64 8
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !62
  store ptr %i.hq, ptr %i.bg, align 8, !tbaa !42
  %i.hu = load i32, ptr %i.a, align 4, !tbaa !37
  %i.hv = or i32 %i.hu, 4096
  store i32 %i.hv, ptr %i.a, align 4, !tbaa !37
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.hw = load i64, ptr %2, align 8, !tbaa !172
  %i.hx = lshr i64 %i.hw, 15
  %i.hy = trunc i64 %i.hx to i32
  %i.hz = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ia = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.hy, i32 noundef %i.hz, i32 noundef 34, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.ib = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ia, i64 16
  store ptr %i.ib, ptr %i.ic, align 8, !tbaa !61
  %i.id = getelementptr i8, ptr %i.ib, i64 8
  store ptr %i.ia, ptr %i.id, align 8, !tbaa !62
  store ptr %i.ia, ptr %i.bg, align 8, !tbaa !42
  %i.ie = load i64, ptr %2, align 8, !tbaa !172
  %i.if = lshr i64 %i.ie, 15
  %i.ig = trunc i64 %i.if to i32
  %i.ih = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ii = load i32, ptr %i.a, align 4, !tbaa !37
  %i.ij = zext i32 %i.ii to i64
  %i.ik = shl nuw nsw i64 %i.ij, 1
  %i.il = or disjoint i64 %i.ik, 1
  %i.im = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ig, i32 noundef %i.ih, i64 noundef 146, i64 noundef %.0191, ptr noundef null, i64 noundef %i.il, ptr noundef null)
  br label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.in = load i64, ptr %2, align 8, !tbaa !172
  %i.io = lshr i64 %i.in, 15
  %i.ip = trunc i64 %i.io to i32
  %i.iq = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ir = add nsw i64 %.0191, 2
  %i.is = zext i32 %i.gt to i64
  %i.it = shl nuw nsw i64 %i.is, 1
  %i.iu = or disjoint i64 %i.it, 1
  %i.iv = call fastcc ptr @new_insn_send(ptr noundef nonnull %0, i32 noundef %i.ip, i32 noundef %i.iq, i64 noundef 146, i64 noundef %i.ir, ptr noundef null, i64 noundef %i.iu, ptr noundef null)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sink370 = phi ptr [ %i.iv, %bb.v ], [ %i.im, %bb.u ] ; 3 uses
  %i.iw = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.ix = getelementptr i8, ptr %.sink370, i64 16
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !61
  %i.iy = getelementptr i8, ptr %i.iw, i64 8
  store ptr %.sink370, ptr %i.iy, align 8, !tbaa !62
  store ptr %.sink370, ptr %i.bg, align 8, !tbaa !42
  %i.iz = load i64, ptr %2, align 8, !tbaa !172
  %i.ja = lshr i64 %i.iz, 15
  %i.jb = trunc i64 %i.ja to i32
  %i.jc = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.jd = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %i.jb, i32 noundef %i.jc, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.je = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.jf = getelementptr i8, ptr %i.jd, i64 16
  store ptr %i.je, ptr %i.jf, align 8, !tbaa !61
  %i.jg = getelementptr i8, ptr %i.je, i64 8
  store ptr %i.jd, ptr %i.jg, align 8, !tbaa !62
  store ptr %i.jd, ptr %i.bg, align 8, !tbaa !42
  %i.jh = load i64, ptr %2, align 8, !tbaa !172
  %i.ji = lshr i64 %i.jh, 15
  %i.jj = trunc i64 %i.ji to i32
  %i.jk = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.jl = ptrtoint ptr %i.ei to i64
  %i.jm = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jj, i32 noundef %i.jk, i32 noundef 72, i32 noundef 1, i64 noundef %i.jl) ; 4 uses
  %i.jn = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.jo = getelementptr i8, ptr %i.jm, i64 16
  store ptr %i.jn, ptr %i.jo, align 8, !tbaa !61
  %i.jp = getelementptr i8, ptr %i.jn, i64 8
  store ptr %i.jm, ptr %i.jp, align 8, !tbaa !62
  %i.jq = load i32, ptr %i.eq, align 8, !tbaa !240
  %i.jr = add i32 %i.jq, 1
  store i32 %i.jr, ptr %i.eq, align 8, !tbaa !240
  %i.js = getelementptr i8, ptr %i.cy, i64 16
  store ptr %i.jm, ptr %i.js, align 8, !tbaa !61
  %i.jt = getelementptr i8, ptr %i.jm, i64 8
  store ptr %i.cy, ptr %i.jt, align 8, !tbaa !62
  store ptr %i.cy, ptr %i.bg, align 8, !tbaa !42
  br i1 %.not, label %bb.x, label %._crit_edge

._crit_edge:                                      ; preds = %bb.w
  %.pre = add i64 %i.bc, 8589934592
  %.pre334 = ashr exact i64 %.pre, 31
  %.pre335 = or disjoint i64 %.pre334, 1
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ju = load i64, ptr %2, align 8, !tbaa !172
  %i.jv = lshr i64 %i.ju, 15
  %i.jw = trunc i64 %i.jv to i32
  %i.jx = load i32, ptr %i.ba, align 8, !tbaa !243
  %sext330 = add i64 %i.bc, 8589934592
  %i.jy = ashr exact i64 %sext330, 31
  %i.jz = or disjoint i64 %i.jy, 1                ; 2 uses
  %i.ka = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.jw, i32 noundef %i.jx, i32 noundef 45, i32 noundef 1, i64 noundef %i.jz) ; 3 uses
  %i.kb = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.kc = getelementptr i8, ptr %i.ka, i64 16
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !61
  %i.kd = getelementptr i8, ptr %i.kb, i64 8
  store ptr %i.ka, ptr %i.kd, align 8, !tbaa !62
  store ptr %i.ka, ptr %i.bg, align 8, !tbaa !42
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x
  %.pre-phi336 = phi i64 [ %.pre335, %._crit_edge ], [ %i.jz, %bb.x ]
  %i.ke = load i64, ptr %2, align 8, !tbaa !172
  %i.kf = lshr i64 %i.ke, 15
  %i.kg = trunc i64 %i.kf to i32
  %i.kh = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ki = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef nonnull %0, i32 noundef %i.kg, i32 noundef %i.kh, i32 noundef 46, i32 noundef 1, i64 noundef %.pre-phi336) ; 3 uses
  %i.kj = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.kk = getelementptr i8, ptr %i.ki, i64 16
  store ptr %i.kj, ptr %i.kk, align 8, !tbaa !61
  %i.kl = getelementptr i8, ptr %i.kj, i64 8
  store ptr %i.ki, ptr %i.kl, align 8, !tbaa !62
  br label %.critedge.sink.split

bb.z:                                             ; preds = %bb.i
  %i.km = getelementptr i8, ptr %2, i64 56
  %i.kn = load ptr, ptr %i.km, align 8, !tbaa !1145 ; 2 uses
  %i.ko = icmp eq ptr %i.kn, null
  br i1 %i.ko, label %ISEQ_COMPILE_DATA.exit.i264, label %iseq_compile_each.exit267

ISEQ_COMPILE_DATA.exit.i264:                      ; preds = %bb.z
  %i.kp = getelementptr i8, ptr %0, i64 24
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !47
  %i.kr = getelementptr i8, ptr %i.kq, i64 128
  %i.ks = load i32, ptr %i.kr, align 8, !tbaa !60 ; 2 uses
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.aa, label %iseq_compile_each.exit267.thread

bb.aa:                                            ; preds = %ISEQ_COMPILE_DATA.exit.i264
  %i.ku = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.kv = call i64 @rb_fix2int(i64 noundef %i.ku) #37, !inline_history !169
  %i.kw = trunc i64 %i.kv to i32
  br label %iseq_compile_each.exit267.thread

iseq_compile_each.exit267.thread:                 ; preds = %ISEQ_COMPILE_DATA.exit.i264, %bb.aa
  %.0.i266 = phi i32 [ %i.kw, %bb.aa ], [ %i.ks, %ISEQ_COMPILE_DATA.exit.i264 ]
  %i.kx = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i266, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169 ; 3 uses
  %i.ky = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.kz = getelementptr i8, ptr %i.kx, i64 16
  store ptr %i.ky, ptr %i.kz, align 8, !tbaa !61
  %i.la = getelementptr i8, ptr %i.ky, i64 8
  store ptr %i.kx, ptr %i.la, align 8, !tbaa !62
  store ptr %i.kx, ptr %i.bg, align 8, !tbaa !42
  br label %bb.ab

iseq_compile_each.exit267:                        ; preds = %bb.z
  %i.lb = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.kn, i32 noundef 0), !inline_history !169
  %.not198 = icmp eq i32 %i.lb, 0
  br i1 %.not198, label %.critedge, label %bb.ab

bb.ab:                                            ; preds = %iseq_compile_each.exit267.thread, %iseq_compile_each.exit267
  %i.lc = load i64, ptr %2, align 8, !tbaa !172
  %i.ld = lshr i64 %i.lc, 15
  %i.le = trunc i64 %i.ld to i32
  %i.lf = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.lg = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.le, i32 noundef %i.lf, i64 noundef %i.d, i64 noundef 3, ptr noundef null, i64 noundef 1, ptr noundef null) ; 3 uses
  %i.lh = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.li = getelementptr i8, ptr %i.lg, i64 16
  store ptr %i.lh, ptr %i.li, align 8, !tbaa !61
  %i.lj = getelementptr i8, ptr %i.lh, i64 8
  store ptr %i.lg, ptr %i.lj, align 8, !tbaa !62
  store ptr %i.lg, ptr %i.bg, align 8, !tbaa !42
  br i1 %.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.lk = load i64, ptr %2, align 8, !tbaa !172
  %i.ll = lshr i64 %i.lk, 15
  %i.lm = trunc i64 %i.ll to i32
  %i.ln = load i32, ptr %i.ba, align 8, !tbaa !243
  %sext324 = add i64 %i.bc, 8589934592
  %i.lo = ashr exact i64 %sext324, 31
  %i.lp = or disjoint i64 %i.lo, 1
  %i.lq = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.lm, i32 noundef %i.ln, i32 noundef 45, i32 noundef 1, i64 noundef %i.lp) ; 3 uses
  %i.lr = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.ls = getelementptr i8, ptr %i.lq, i64 16
  store ptr %i.lr, ptr %i.ls, align 8, !tbaa !61
  %i.lt = getelementptr i8, ptr %i.lr, i64 8
  store ptr %i.lq, ptr %i.lt, align 8, !tbaa !62
  store ptr %i.lq, ptr %i.bg, align 8, !tbaa !42
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.lu = load i32, ptr %i.a, align 4, !tbaa !37  ; 4 uses
  %i.lv = and i32 %i.lu, 1
  %.not199 = icmp eq i32 %i.lv, 0
  br i1 %.not199, label %bb.am, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.lw = and i32 %i.lu, 64
  %.not200 = icmp eq i32 %i.lw, 0
  br i1 %.not200, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.lx = load i64, ptr %2, align 8, !tbaa !172
  %i.ly = lshr i64 %i.lx, 15
  %i.lz = trunc i64 %i.ly to i32
  %i.ma = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.mb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.lz, i32 noundef %i.ma, i32 noundef 44, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.mc = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.md = getelementptr i8, ptr %i.mb, i64 16
  store ptr %i.mc, ptr %i.md, align 8, !tbaa !61
  %i.me = getelementptr i8, ptr %i.mc, i64 8
  store ptr %i.mb, ptr %i.me, align 8, !tbaa !62
  store ptr %i.mb, ptr %i.bg, align 8, !tbaa !42
  %i.mf = load i32, ptr %i.a, align 4, !tbaa !37
  %i.mg = and i32 %i.mf, 4096
  %.not202 = icmp eq i32 %i.mg, 0
  br i1 %.not202, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.mh = load i64, ptr %2, align 8, !tbaa !172
  %i.mi = lshr i64 %i.mh, 15
  %i.mj = trunc i64 %i.mi to i32
  %i.mk = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ml = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.mj, i32 noundef %i.mk, i32 noundef 35, i32 noundef 1, i64 noundef 20) ; 3 uses
  %i.mm = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.mn = getelementptr i8, ptr %i.ml, i64 16
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !61
  %i.mo = getelementptr i8, ptr %i.mm, i64 8
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !62
  store ptr %i.ml, ptr %i.bg, align 8, !tbaa !42
  %i.mp = load i32, ptr %i.a, align 4, !tbaa !37
  %i.mq = or i32 %i.mp, 4096
  store i32 %i.mq, ptr %i.a, align 4, !tbaa !37
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.mr = load i64, ptr %2, align 8, !tbaa !172
  %i.ms = lshr i64 %i.mr, 15
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.mv = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.mt, i32 noundef %i.mu, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.mw = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.mx = getelementptr i8, ptr %i.mv, i64 16
  store ptr %i.mw, ptr %i.mx, align 8, !tbaa !61
  %i.my = getelementptr i8, ptr %i.mw, i64 8
  store ptr %i.mv, ptr %i.my, align 8, !tbaa !62
  store ptr %i.mv, ptr %i.bg, align 8, !tbaa !42
  %i.mz = load i64, ptr %2, align 8, !tbaa !172
  %i.na = lshr i64 %i.mz, 15
  %i.nb = trunc i64 %i.na to i32
  %i.nc = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.nd = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.nb, i32 noundef %i.nc, i32 noundef 34, i32 noundef 1, i64 noundef 3) ; 3 uses
  %i.ne = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.nf = getelementptr i8, ptr %i.nd, i64 16
  store ptr %i.ne, ptr %i.nf, align 8, !tbaa !61
  %i.ng = getelementptr i8, ptr %i.ne, i64 8
  store ptr %i.nd, ptr %i.ng, align 8, !tbaa !62
  store ptr %i.nd, ptr %i.bg, align 8, !tbaa !42
  %i.nh = load i64, ptr %2, align 8, !tbaa !172
  %i.ni = lshr i64 %i.nh, 15
  %i.nj = trunc i64 %i.ni to i32
  %i.nk = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.nl = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.nj, i32 noundef %i.nk, i32 noundef 45, i32 noundef 1, i64 noundef 5) ; 3 uses
  %i.nm = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.nn = getelementptr i8, ptr %i.nl, i64 16
  store ptr %i.nm, ptr %i.nn, align 8, !tbaa !61
  %i.no = getelementptr i8, ptr %i.nm, i64 8
  store ptr %i.nl, ptr %i.no, align 8, !tbaa !62
  store ptr %i.nl, ptr %i.bg, align 8, !tbaa !42
  %i.np = load i64, ptr %2, align 8, !tbaa !172
  %i.nq = lshr i64 %i.np, 15
  %i.nr = trunc i64 %i.nq to i32
  %i.ns = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.nt = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.nr, i32 noundef %i.ns, i32 noundef 39, i32 noundef 0, ptr noundef null)
  br label %bb.al

bb.ai:                                            ; preds = %bb.ae
  %i.nu = and i32 %i.lu, 4096
  %.not201 = icmp eq i32 %i.nu, 0
  br i1 %.not201, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.nv = load i64, ptr %2, align 8, !tbaa !172
  %i.nw = lshr i64 %i.nv, 15
  %i.nx = trunc i64 %i.nw to i32
  %i.ny = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.nz = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.nx, i32 noundef %i.ny, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.oa = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.ob = getelementptr i8, ptr %i.nz, i64 16
  store ptr %i.oa, ptr %i.ob, align 8, !tbaa !61
  %i.oc = getelementptr i8, ptr %i.oa, i64 8
  store ptr %i.nz, ptr %i.oc, align 8, !tbaa !62
  store ptr %i.nz, ptr %i.bg, align 8, !tbaa !42
  %i.od = load i64, ptr %2, align 8, !tbaa !172
  %i.oe = lshr i64 %i.od, 15
  %i.of = trunc i64 %i.oe to i32
  %i.og = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.oh = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.of, i32 noundef %i.og, i32 noundef 35, i32 noundef 1, i64 noundef 20) ; 3 uses
  %i.oi = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.oj = getelementptr i8, ptr %i.oh, i64 16
  store ptr %i.oi, ptr %i.oj, align 8, !tbaa !61
  %i.ok = getelementptr i8, ptr %i.oi, i64 8
  store ptr %i.oh, ptr %i.ok, align 8, !tbaa !62
  store ptr %i.oh, ptr %i.bg, align 8, !tbaa !42
  %i.ol = load i64, ptr %2, align 8, !tbaa !172
  %i.om = lshr i64 %i.ol, 15
  %i.on = trunc i64 %i.om to i32
  %i.oo = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.op = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.on, i32 noundef %i.oo, i32 noundef 42, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.oq = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.or = getelementptr i8, ptr %i.op, i64 16
  store ptr %i.oq, ptr %i.or, align 8, !tbaa !61
  %i.os = getelementptr i8, ptr %i.oq, i64 8
  store ptr %i.op, ptr %i.os, align 8, !tbaa !62
  store ptr %i.op, ptr %i.bg, align 8, !tbaa !42
  %i.ot = load i32, ptr %i.a, align 4, !tbaa !37
  %i.ou = or i32 %i.ot, 4096
  store i32 %i.ou, ptr %i.a, align 4, !tbaa !37
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.ov = load i64, ptr %2, align 8, !tbaa !172
  %i.ow = lshr i64 %i.ov, 15
  %i.ox = trunc i64 %i.ow to i32
  %i.oy = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.oz = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ox, i32 noundef %i.oy, i32 noundef 34, i32 noundef 1, i64 noundef 3)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.ah
  %.sink376 = phi ptr [ %i.oz, %bb.ak ], [ %i.nt, %bb.ah ] ; 3 uses
  %i.pa = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.pb = getelementptr i8, ptr %.sink376, i64 16
  store ptr %i.pa, ptr %i.pb, align 8, !tbaa !61
  %i.pc = getelementptr i8, ptr %i.pa, i64 8
  store ptr %.sink376, ptr %i.pc, align 8, !tbaa !62
  store ptr %.sink376, ptr %i.bg, align 8, !tbaa !42
  %i.pd = load i64, ptr %2, align 8, !tbaa !172
  %i.pe = lshr i64 %i.pd, 15
  %i.pf = trunc i64 %i.pe to i32
  %i.pg = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.ph = load i32, ptr %i.a, align 4, !tbaa !37
  %i.pi = zext i32 %i.ph to i64
  %i.pj = shl nuw nsw i64 %i.pi, 1
  %i.pk = or disjoint i64 %i.pj, 1
  %i.pl = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.pf, i32 noundef %i.pg, i64 noundef 146, i64 noundef %.0191, ptr noundef null, i64 noundef %i.pk, ptr noundef null)
  br label %bb.an

bb.am:                                            ; preds = %bb.ad
  %i.pm = load i64, ptr %2, align 8, !tbaa !172
  %i.pn = lshr i64 %i.pm, 15
  %i.po = trunc i64 %i.pn to i32
  %i.pp = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.pq = add nsw i64 %.0191, 2
  %i.pr = zext i32 %i.lu to i64
  %i.ps = shl nuw nsw i64 %i.pr, 1
  %i.pt = or disjoint i64 %i.ps, 1
  %i.pu = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.po, i32 noundef %i.pp, i64 noundef 146, i64 noundef %i.pq, ptr noundef null, i64 noundef %i.pt, ptr noundef null)
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.sink382 = phi ptr [ %i.pu, %bb.am ], [ %i.pl, %bb.al ] ; 3 uses
  %i.pv = load ptr, ptr %i.bg, align 8, !tbaa !42 ; 2 uses
  %i.pw = getelementptr i8, ptr %.sink382, i64 16
  store ptr %i.pv, ptr %i.pw, align 8, !tbaa !61
  %i.px = getelementptr i8, ptr %i.pv, i64 8
  store ptr %.sink382, ptr %i.px, align 8, !tbaa !62
  store ptr %.sink382, ptr %i.bg, align 8, !tbaa !42
  %i.py = load i64, ptr %2, align 8, !tbaa !172
  %i.pz = lshr i64 %i.py, 15
  %i.qa = trunc i64 %i.pz to i32
  %i.qb = load i32, ptr %i.ba, align 8, !tbaa !243
  %i.qc = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.qa, i32 noundef %i.qb, i32 noundef 39, i32 noundef 0, ptr noundef null)
  %i.qd = load ptr, ptr %i.bg, align 8, !tbaa !42
  br label %.critedge.sink.split

.critedge.sink.split:                             ; preds = %bb.y, %bb.an
  %.sink389 = phi ptr [ %i.qc, %bb.an ], [ %i.ei, %bb.y ] ; 3 uses
  %.sink387 = phi ptr [ %i.qd, %bb.an ], [ %i.ki, %bb.y ] ; 2 uses
  %i.qe = getelementptr i8, ptr %.sink389, i64 16
  store ptr %.sink387, ptr %i.qe, align 8, !tbaa !61
  %i.qf = getelementptr i8, ptr %.sink387, i64 8
  store ptr %.sink389, ptr %i.qf, align 8, !tbaa !62
  store ptr %.sink389, ptr %i.bg, align 8, !tbaa !42
  br label %.critedge

.critedge:                                        ; preds = %.critedge.sink.split, %iseq_compile_each.exit267, %iseq_compile_each.exit239, %bb.h, %bb.f
  %.2 = phi i32 [ 0, %bb.h ], [ 0, %bb.f ], [ 0, %iseq_compile_each.exit267 ], [ 0, %iseq_compile_each.exit239 ], [ 1, %.critedge.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  ret i32 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_op_asgn2(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull readonly captures(none) %2, i32 noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %2, i64 56
  %i.b = load i64, ptr %i.a, align 8, !tbaa !1147 ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 48
  %i.d = load i64, ptr %i.c, align 8, !tbaa !1148 ; 2 uses
  %i.e = tail call i64 @rb_id_attrset(i64 noundef %i.d) #37 ; 2 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 9 uses
  %.val13.i = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.g = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64   ; 4 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !37   ; 2 uses
  %i.k = zext i32 %i.j to i64
  %i.l = add nuw nsw i64 %i.k, 48
  %i.m = getelementptr i8, ptr %i.h, i64 12
  %i.n = load i32, ptr %i.m, align 4, !tbaa !37   ; 4 uses
  %i.o = zext i32 %i.n to i64                     ; 2 uses
  %i.p = icmp samesign ugt i64 %i.l, %i.o
  br i1 %i.p, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %bb.a
  %i.q = icmp ult i32 %i.n, 48
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.c
  %.027.i.i.i.i = phi i32 [ %i.s, %bb.c ], [ %i.n, %.preheader.i.i.i.i ] ; 3 uses
  %i.r = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i.i.i.i
  tail call void @rb_memerror() #38
  unreachable

bb.c:                                             ; preds = %.lr.ph.i.i.i.i
  %i.s = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.t = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.t, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.c
  %i.u = zext nneg i32 %i.s to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.loopexit.i.i, %.preheader.i.i.i.i
  %.0.lcssa.i.i.i.i = phi i32 [ %i.n, %.preheader.i.i.i.i ], [ %i.s, %._crit_edge.i.i.loopexit.i.i ]
  %.lcssa.i.i.i.i = phi i64 [ %i.o, %.preheader.i.i.i.i ], [ %i.u, %._crit_edge.i.i.loopexit.i.i ]
  %i.v = add nuw nsw i64 %.lcssa.i.i.i.i, 16
  %i.w = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.v, i64 noundef 1) #39 ; 6 uses
  store ptr %i.w, ptr %i.h, align 8, !tbaa !64
  store ptr %i.w, ptr %i.g, align 8, !tbaa !64
  store ptr null, ptr %i.w, align 8, !tbaa !64
  %i.x = getelementptr i8, ptr %i.w, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !37
  %i.y = getelementptr i8, ptr %i.w, i64 12
  store i32 %.0.lcssa.i.i.i.i, ptr %i.y, align 4, !tbaa !37
  br label %new_label_body.exit

new_label_body.exit:                              ; preds = %bb.a, %._crit_edge.i.i.i.i
  %i.z = phi i32 [ %i.j, %bb.a ], [ 0, %._crit_edge.i.i.i.i ] ; 2 uses
  %.022.i.i.i.i = phi ptr [ %i.h, %bb.a ], [ %i.w, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.aa = getelementptr i8, ptr %.022.i.i.i.i, i64 16
  %i.ab = getelementptr i8, ptr %.022.i.i.i.i, i64 8
  %i.ac = zext i32 %i.z to i64
  %i.ad = getelementptr i8, ptr %i.aa, i64 %i.ac  ; 9 uses
  %i.ae = add i32 %i.z, 48
  store i32 %i.ae, ptr %i.ab, align 8, !tbaa !37
  store i32 1, ptr %i.ad, align 8, !tbaa !182
  %i.af = getelementptr i8, ptr %i.ad, i64 8
  store ptr null, ptr %i.af, align 8, !tbaa !183
  %i.ag = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.ah = getelementptr i8, ptr %i.ag, i64 132    ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !184 ; 2 uses
  %i.aj = add i32 %i.ai, 1
  store i32 %i.aj, ptr %i.ah, align 4, !tbaa !184
  %i.ak = getelementptr i8, ptr %i.ad, i64 24
  store i32 %i.ai, ptr %i.ak, align 8, !tbaa !111
  %i.al = getelementptr i8, ptr %i.ad, i64 40     ; 2 uses
  %i.am = getelementptr i8, ptr %i.ad, i64 44     ; 2 uses
  %i.an = load i8, ptr %i.am, align 4
  %i.ao = and i8 %i.an, -16
  store i8 %i.ao, ptr %i.am, align 4
  %i.ap = getelementptr i8, ptr %i.ad, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.ap, align 4, !tbaa !37
  %.val13.i147 = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.aq = getelementptr i8, ptr %.val13.i147, i64 96 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !64 ; 4 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = load i32, ptr %i.as, align 8, !tbaa !37 ; 2 uses
  %i.au = zext i32 %i.at to i64
  %i.av = add nuw nsw i64 %i.au, 48
  %i.aw = getelementptr i8, ptr %i.ar, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !37 ; 4 uses
  %i.ay = zext i32 %i.ax to i64                   ; 2 uses
  %i.az = icmp samesign ugt i64 %i.av, %i.ay
  br i1 %i.az, label %.preheader.i.i.i.i150, label %new_label_body.exit159

.preheader.i.i.i.i150:                            ; preds = %new_label_body.exit
  %i.ba = icmp ult i32 %i.ax, 48
  br i1 %i.ba, label %.lr.ph.i.i.i.i156, label %._crit_edge.i.i.i.i151

.lr.ph.i.i.i.i156:                                ; preds = %.preheader.i.i.i.i150, %bb.e
  %.027.i.i.i.i157 = phi i32 [ %i.bc, %bb.e ], [ %i.ax, %.preheader.i.i.i.i150 ] ; 3 uses
  %i.bb = icmp samesign ugt i32 %.027.i.i.i.i157, 1073741822
  br i1 %i.bb, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph.i.i.i.i156
  tail call void @rb_memerror() #38
  unreachable

bb.e:                                             ; preds = %.lr.ph.i.i.i.i156
  %i.bc = shl nuw nsw i32 %.027.i.i.i.i157, 1     ; 3 uses
  %i.bd = icmp samesign ult i32 %.027.i.i.i.i157, 24
  br i1 %i.bd, label %.lr.ph.i.i.i.i156, label %._crit_edge.i.i.loopexit.i.i158, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i158:                  ; preds = %bb.e
  %i.be = zext nneg i32 %i.bc to i64
  br label %._crit_edge.i.i.i.i151

._crit_edge.i.i.i.i151:                           ; preds = %._crit_edge.i.i.loopexit.i.i158, %.preheader.i.i.i.i150
  %.0.lcssa.i.i.i.i152 = phi i32 [ %i.ax, %.preheader.i.i.i.i150 ], [ %i.bc, %._crit_edge.i.i.loopexit.i.i158 ]
  %.lcssa.i.i.i.i153 = phi i64 [ %i.ay, %.preheader.i.i.i.i150 ], [ %i.be, %._crit_edge.i.i.loopexit.i.i158 ]
  %i.bf = add nuw nsw i64 %.lcssa.i.i.i.i153, 16
  %i.bg = tail call noalias nonnull ptr @ruby_xmalloc2(i64 noundef %i.bf, i64 noundef 1) #39 ; 6 uses
  store ptr %i.bg, ptr %i.ar, align 8, !tbaa !64
  store ptr %i.bg, ptr %i.aq, align 8, !tbaa !64
  store ptr null, ptr %i.bg, align 8, !tbaa !64
  %i.bh = getelementptr i8, ptr %i.bg, i64 8
  store i32 0, ptr %i.bh, align 8, !tbaa !37
  %i.bi = getelementptr i8, ptr %i.bg, i64 12
  store i32 %.0.lcssa.i.i.i.i152, ptr %i.bi, align 4, !tbaa !37
  br label %new_label_body.exit159

new_label_body.exit159:                           ; preds = %new_label_body.exit, %._crit_edge.i.i.i.i151
  %i.bj = phi i32 [ %i.at, %new_label_body.exit ], [ 0, %._crit_edge.i.i.i.i151 ] ; 2 uses
  %.022.i.i.i.i149 = phi ptr [ %i.ar, %new_label_body.exit ], [ %i.bg, %._crit_edge.i.i.i.i151 ] ; 2 uses
  %i.bk = getelementptr i8, ptr %.022.i.i.i.i149, i64 16
  %i.bl = getelementptr i8, ptr %.022.i.i.i.i149, i64 8
  %i.bm = zext i32 %i.bj to i64
  %i.bn = getelementptr i8, ptr %i.bk, i64 %i.bm  ; 11 uses
  %i.bo = add i32 %i.bj, 48
  store i32 %i.bo, ptr %i.bl, align 8, !tbaa !37
  store i32 1, ptr %i.bn, align 8, !tbaa !182
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  store ptr null, ptr %i.bp, align 8, !tbaa !183
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !47
  %i.br = getelementptr i8, ptr %i.bq, i64 132    ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !184 ; 2 uses
  %i.bt = add i32 %i.bs, 1
  store i32 %i.bt, ptr %i.br, align 4, !tbaa !184
  %i.bu = getelementptr i8, ptr %i.bn, i64 24
  store i32 %i.bs, ptr %i.bu, align 8, !tbaa !111
  %i.bv = getelementptr i8, ptr %i.bn, i64 40     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bn, i64 44     ; 2 uses
  %i.bx = load i8, ptr %i.bw, align 4
  %i.by = and i8 %i.bx, -16
  store i8 %i.by, ptr %i.bw, align 4
  %i.bz = getelementptr i8, ptr %i.bn, i64 28
  store <4 x i32> <i32 -1, i32 0, i32 -1, i32 0>, ptr %i.bz, align 4, !tbaa !37
  %i.ca = tail call fastcc ptr @get_nd_recv(ptr noundef nonnull readonly %2) ; 3 uses
  %.not.i = icmp eq ptr %i.ca, null
  br i1 %.not.i, label %private_recv_p.exit.thread, label %bb.f
end_hunk_0
begin_hunk_1_@compile_attrasgn:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 0, ptr %i.a, align 4, !tbaa !37
  %i.e = getelementptr i8, ptr %2, i64 40
  %i.f = load i64, ptr %i.e, align 8, !tbaa !1189 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #37
  store i64 0, ptr %i.b, align 8, !tbaa !63
  store ptr %4, ptr %i.c, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store ptr null, ptr %i.g, align 8, !tbaa !62
  store ptr %5, ptr %i.d, align 8, !tbaa !42
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  store ptr null, ptr %i.h, align 8, !tbaa !62
  %i.i = getelementptr i8, ptr %2, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !1190
  %i.k = call fastcc i64 @setup_args(ptr noundef %0, ptr noundef nonnull %5, ptr noundef %i.j, ptr noundef %i.a, ptr noundef null) ; 4 uses
  %i.l = icmp eq i64 %i.k, 4
  br i1 %i.l, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = call fastcc ptr @get_nd_recv(ptr noundef nonnull readonly %2) ; 3 uses
  %.not.i = icmp eq ptr %i.m, null
  br i1 %.not.i, label %private_recv_p.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %i.m, align 8, !tbaa !172
  %i.n = and i64 %.val.i, 32512
  %i.o = icmp eq i64 %i.n, 24064
  br i1 %i.o, label %private_recv_p.exit, label %private_recv_p.exit.thread

private_recv_p.exit:                              ; preds = %bb.c
  %i.p = getelementptr i8, ptr %i.m, i64 32
  %i.q = load i64, ptr %i.p, align 8, !tbaa !564
  %.not116 = icmp eq i64 %i.q, 0
  br i1 %.not116, label %private_recv_p.exit.thread, label %.thread

.thread:                                          ; preds = %private_recv_p.exit
  %i.r = load i64, ptr %2, align 8, !tbaa !172
  %i.s = lshr i64 %i.r, 15
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr i8, ptr %2, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !243
  %i.w = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.t, i32 noundef %i.v, i32 noundef 18, i32 noundef 0, ptr noundef null)
  br label %.sink.split

private_recv_p.exit.thread:                       ; preds = %bb.b, %bb.c, %private_recv_p.exit
  %i.x = getelementptr i8, ptr %2, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !1191 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %ISEQ_COMPILE_DATA.exit.i, label %bb.e

ISEQ_COMPILE_DATA.exit.i:                         ; preds = %private_recv_p.exit.thread
  %i.aa = getelementptr i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !47
  %i.ac = getelementptr i8, ptr %i.ab, i64 128
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.d, label %.thread112

bb.d:                                             ; preds = %ISEQ_COMPILE_DATA.exit.i
  %i.af = call i64 @rb_iseq_first_lineno(ptr noundef nonnull %0) #37, !inline_history !169
  %i.ag = call i64 @rb_fix2int(i64 noundef %i.af) #37, !inline_history !169
  %i.ah = trunc i64 %i.ag to i32
  br label %.thread112

.thread112:                                       ; preds = %ISEQ_COMPILE_DATA.exit.i, %bb.d
  %.0.i78 = phi i32 [ %i.ah, %bb.d ], [ %i.ad, %ISEQ_COMPILE_DATA.exit.i ]
  %i.ai = call fastcc noundef ptr @new_insn_core(ptr noundef nonnull %0, i32 noundef %.0.i78, i32 noundef -1, i32 noundef 17, i32 noundef 0, ptr noundef null), !inline_history !169
  br label %.sink.split

bb.e:                                             ; preds = %private_recv_p.exit.thread
  %i.aj = call fastcc i32 @iseq_compile_each0(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %i.y, i32 noundef 0), !inline_history !169
  %.not72 = icmp eq i32 %i.aj, 0
  br i1 %.not72, label %bb.q, label %bb.f

.sink.split:                                      ; preds = %.thread, %.thread112
  %.sink130 = phi ptr [ %i.ai, %.thread112 ], [ %i.w, %.thread ] ; 3 uses
  %.ph = phi i32 [ 0, %.thread112 ], [ 4, %.thread ]
  %i.ak = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  %i.al = getelementptr i8, ptr %.sink130, i64 16
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !61
  %i.am = getelementptr i8, ptr %i.ak, i64 8
  store ptr %.sink130, ptr %i.am, align 8, !tbaa !62
  store ptr %.sink130, ptr %i.c, align 8, !tbaa !42
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.e
  %i.an = phi i32 [ 0, %bb.e ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !37
  %i.ap = or i32 %i.ao, %i.an
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !37
  %i.aq = call i32 @rb_is_attrset_id(i64 noundef %i.f) #47
  %.not73 = icmp eq i32 %i.aq, 0
  br i1 %.not73, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = call i64 @rb_id_attrset(i64 noundef %i.f) #37
  %i.as = call fastcc ptr @qcall_branch_start(ptr noundef %0, ptr noundef %4, ptr noundef %i.b, ptr noundef nonnull %2, ptr noundef nonnull %2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.068 = phi i64 [ %i.f, %bb.f ], [ %i.ar, %bb.g ]
  %.0 = phi ptr [ null, %bb.f ], [ %i.as, %bb.g ]
  %.not74 = icmp eq i32 %3, 0
  br i1 %.not74, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %i.at = load i64, ptr %2, align 8, !tbaa !172
  %i.au = lshr i64 %i.at, 15
  %i.av = trunc i64 %i.au to i32
  %i.aw = getelementptr i8, ptr %2, i64 24        ; 6 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.ay = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.av, i32 noundef %i.ax, i32 noundef 17, i32 noundef 0, ptr noundef null) ; 6 uses
  %i.az = getelementptr i8, ptr %1, i64 24        ; 16 uses
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !61
  %i.bc = getelementptr i8, ptr %i.ba, i64 8
  store ptr %i.ay, ptr %i.bc, align 8, !tbaa !62
  store ptr %i.ay, ptr %i.az, align 8, !tbaa !42
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %.not.i81 = icmp eq ptr %i.bd, null
  br i1 %.not.i81, label %APPEND_LIST.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = getelementptr i8, ptr %i.ay, i64 8
  store ptr %i.bd, ptr %i.be, align 8, !tbaa !62
  %i.bf = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.bg = getelementptr i8, ptr %i.bf, i64 16
  store ptr %i.ay, ptr %i.bg, align 8, !tbaa !61
  %i.bh = load ptr, ptr %i.c, align 8, !tbaa !42  ; 2 uses
  store ptr %i.bh, ptr %i.az, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %bb.i, %bb.j
  %i.bi = phi ptr [ %i.ay, %bb.i ], [ %i.bh, %bb.j ] ; 2 uses
  %i.bj = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %.not.i82 = icmp eq ptr %i.bj, null
  br i1 %.not.i82, label %APPEND_LIST.exit83, label %bb.k

bb.k:                                             ; preds = %APPEND_LIST.exit
  %i.bk = getelementptr i8, ptr %i.bi, i64 8
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !62
  %i.bl = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.bm = getelementptr i8, ptr %i.bl, i64 16
  store ptr %i.bi, ptr %i.bm, align 8, !tbaa !61
  %i.bn = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.bn, ptr %i.az, align 8, !tbaa !42
  br label %APPEND_LIST.exit83

APPEND_LIST.exit83:                               ; preds = %APPEND_LIST.exit, %bb.k
  %i.bo = load i32, ptr %i.a, align 4, !tbaa !37
  %i.bp = and i32 %i.bo, 1
  %.not75 = icmp eq i32 %i.bp, 0
  %i.bq = load i64, ptr %2, align 8, !tbaa !172
  %i.br = lshr i64 %i.bq, 15
  %i.bs = trunc i64 %i.br to i32                  ; 2 uses
  %i.bt = load i32, ptr %i.aw, align 8, !tbaa !243 ; 2 uses
  br i1 %.not75, label %bb.m, label %bb.l

bb.l:                                             ; preds = %APPEND_LIST.exit83
  %i.bu = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef 40, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.bv = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bu, i64 16
  store ptr %i.bv, ptr %i.bw, align 8, !tbaa !61
  %i.bx = getelementptr i8, ptr %i.bv, i64 8
  store ptr %i.bu, ptr %i.bx, align 8, !tbaa !62
  store ptr %i.bu, ptr %i.az, align 8, !tbaa !42
  %i.by = load i64, ptr %2, align 8, !tbaa !172
  %i.bz = lshr i64 %i.by, 15
  %i.ca = trunc i64 %i.bz to i32
  %i.cb = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.cc = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ca, i32 noundef %i.cb, i32 noundef 19, i32 noundef 1, i64 noundef -1) ; 3 uses
  %i.cd = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  store ptr %i.cd, ptr %i.ce, align 8, !tbaa !61
  %i.cf = getelementptr i8, ptr %i.cd, i64 8
  store ptr %i.cc, ptr %i.cf, align 8, !tbaa !62
  store ptr %i.cc, ptr %i.az, align 8, !tbaa !42
  %i.cg = load i64, ptr %2, align 8, !tbaa !172
  %i.ch = lshr i64 %i.cg, 15
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.ck = shl nuw nsw i32 %i.an, 1
  %i.cl = or disjoint i32 %i.ck, 1
  %i.cm = zext nneg i32 %i.cl to i64
  %i.cn = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.ci, i32 noundef %i.cj, i64 noundef 145, i64 noundef 3, ptr noundef null, i64 noundef %i.cm, ptr noundef null) ; 3 uses
  %i.co = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.cn, i64 16
  store ptr %i.co, ptr %i.cp, align 8, !tbaa !61
  %i.cq = getelementptr i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %i.cq, align 8, !tbaa !62
  store ptr %i.cn, ptr %i.az, align 8, !tbaa !42
  %i.cr = load i64, ptr %2, align 8, !tbaa !172
  %i.cs = lshr i64 %i.cr, 15
  %i.ct = trunc i64 %i.cs to i32
  %i.cu = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.cv = add nsw i64 %i.k, 4
  %i.cw = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.ct, i32 noundef %i.cu, i32 noundef 45, i32 noundef 1, i64 noundef %i.cv) ; 3 uses
  %i.cx = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.cw, i64 16
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !61
  %i.cz = getelementptr i8, ptr %i.cx, i64 8
  store ptr %i.cw, ptr %i.cz, align 8, !tbaa !62
  store ptr %i.cw, ptr %i.az, align 8, !tbaa !42
  %i.da = load i64, ptr %2, align 8, !tbaa !172
  %i.db = lshr i64 %i.da, 15
  %i.dc = trunc i64 %i.db to i32
  %i.dd = load i32, ptr %i.aw, align 8, !tbaa !243
  %i.de = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.dc, i32 noundef %i.dd, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.df = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  store ptr %i.df, ptr %i.dg, align 8, !tbaa !61
  %i.dh = getelementptr i8, ptr %i.df, i64 8
  store ptr %i.de, ptr %i.dh, align 8, !tbaa !62
  store ptr %i.de, ptr %i.az, align 8, !tbaa !42
  br label %APPEND_LIST.exit99

bb.m:                                             ; preds = %APPEND_LIST.exit83
  %i.di = add nsw i64 %i.k, 2
  %i.dj = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.bs, i32 noundef %i.bt, i32 noundef 45, i32 noundef 1, i64 noundef %i.di) ; 3 uses
  %i.dk = load ptr, ptr %i.az, align 8, !tbaa !42 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dj, i64 16
  store ptr %i.dk, ptr %i.dl, align 8, !tbaa !61
  %i.dm = getelementptr i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dm, align 8, !tbaa !62
  store ptr %i.dj, ptr %i.az, align 8, !tbaa !42
  br label %APPEND_LIST.exit99

bb.n:                                             ; preds = %bb.h
  %i.dn = load ptr, ptr %i.g, align 8, !tbaa !87  ; 2 uses
  %.not.i96 = icmp eq ptr %i.dn, null
  br i1 %.not.i96, label %APPEND_LIST.exit97, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.do = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !42 ; 2 uses
  %i.dq = getelementptr i8, ptr %i.dp, i64 8
  store ptr %i.dn, ptr %i.dq, align 8, !tbaa !62
  %i.dr = load ptr, ptr %i.g, align 8, !tbaa !87
  %i.ds = getelementptr i8, ptr %i.dr, i64 16
  store ptr %i.dp, ptr %i.ds, align 8, !tbaa !61
  %i.dt = load ptr, ptr %i.c, align 8, !tbaa !42
  store ptr %i.dt, ptr %i.do, align 8, !tbaa !42
  br label %APPEND_LIST.exit97

APPEND_LIST.exit97:                               ; preds = %bb.n, %bb.o
  %i.du = load ptr, ptr %i.h, align 8, !tbaa !87  ; 2 uses
  %.not.i98 = icmp eq ptr %i.du, null
  br i1 %.not.i98, label %APPEND_LIST.exit99, label %bb.p

bb.p:                                             ; preds = %APPEND_LIST.exit97
  %i.dv = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !42 ; 2 uses
  %i.dx = getelementptr i8, ptr %i.dw, i64 8
  store ptr %i.du, ptr %i.dx, align 8, !tbaa !62
  %i.dy = load ptr, ptr %i.h, align 8, !tbaa !87
  %i.dz = getelementptr i8, ptr %i.dy, i64 16
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !61
  %i.ea = load ptr, ptr %i.d, align 8, !tbaa !42
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !42
  br label %APPEND_LIST.exit99

APPEND_LIST.exit99:                               ; preds = %bb.p, %APPEND_LIST.exit97, %bb.l, %bb.m
  %i.eb = load i64, ptr %2, align 8, !tbaa !172
  %i.ec = lshr i64 %i.eb, 15
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = getelementptr i8, ptr %2, i64 24        ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !243
  %i.eg = load i32, ptr %i.a, align 4, !tbaa !37
  %i.eh = zext i32 %i.eg to i64
  %i.ei = shl nuw nsw i64 %i.eh, 1
  %i.ej = or disjoint i64 %i.ei, 1
  %i.ek = call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.ed, i32 noundef %i.ef, i64 noundef %.068, i64 noundef %i.k, ptr noundef null, i64 noundef %i.ej, ptr noundef null) ; 3 uses
  %i.el = getelementptr i8, ptr %1, i64 24        ; 4 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !42 ; 2 uses
  %i.en = getelementptr i8, ptr %i.ek, i64 16
  store ptr %i.em, ptr %i.en, align 8, !tbaa !61
  %i.eo = getelementptr i8, ptr %i.em, i64 8
  store ptr %i.ek, ptr %i.eo, align 8, !tbaa !62
  store ptr %i.ek, ptr %i.el, align 8, !tbaa !42
  %i.ep = load i64, ptr %i.b, align 8, !tbaa !63
  call fastcc void @qcall_branch_end(ptr noundef %0, ptr noundef %1, ptr noundef %.0, i64 noundef %i.ep, ptr noundef nonnull %2, ptr noundef nonnull %2)
  %i.eq = load i64, ptr %2, align 8, !tbaa !172
  %i.er = lshr i64 %i.eq, 15
  %i.es = trunc i64 %i.er to i32
  %i.et = load i32, ptr %i.ee, align 8, !tbaa !243
  %i.eu = call fastcc noundef ptr @new_insn_core(ptr noundef %0, i32 noundef %i.es, i32 noundef %i.et, i32 noundef 39, i32 noundef 0, ptr noundef null) ; 3 uses
  %i.ev = load ptr, ptr %i.el, align 8, !tbaa !42 ; 2 uses
  %i.ew = getelementptr i8, ptr %i.eu, i64 16
  store ptr %i.ev, ptr %i.ew, align 8, !tbaa !61
  %i.ex = getelementptr i8, ptr %i.ev, i64 8
  store ptr %i.eu, ptr %i.ex, align 8, !tbaa !62
  store ptr %i.eu, ptr %i.el, align 8, !tbaa !42
  br label %bb.q

bb.q:                                             ; preds = %APPEND_LIST.exit99, %bb.e, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ 1, %APPEND_LIST.exit99 ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #37
  ret i32 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @compile_branch_condition(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 {
bb.a:
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 11 uses
  %6 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 24         ; 4 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %new_label_body.exit, %bb.a
  %.089.ph.ph = phi ptr [ %5, %new_label_body.exit ], [ %1, %bb.a ]
  %.088.ph.ph = phi ptr [ %i.l, %new_label_body.exit ], [ %2, %bb.a ]
  %.086.ph.ph = phi ptr [ %i.ak, %new_label_body.exit ], [ %3, %bb.a ] ; 10 uses
  %.084.ph.ph = phi ptr [ %.084.ph412, %new_label_body.exit ], [ %4, %bb.a ]
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.d
  %.089.ph = phi ptr [ %.089.ph410, %bb.d ], [ %.089.ph.ph, %.outer.outer ]
  %.088.ph = phi ptr [ %i.l, %bb.d ], [ %.088.ph.ph, %.outer.outer ]
  %.084.ph = phi ptr [ %.084.ph412, %bb.d ], [ %.084.ph.ph, %.outer.outer ]
  br label %.outer409

.outer409:                                        ; preds = %new_label_body.exit120, %.outer
  %.089.ph410 = phi ptr [ %5, %new_label_body.exit120 ], [ %.089.ph, %.outer ] ; 14 uses
  %.088.ph411 = phi ptr [ %i.ba, %new_label_body.exit120 ], [ %.088.ph, %.outer ]
  %.084.ph412 = phi ptr [ %i.bz, %new_label_body.exit120 ], [ %.084.ph, %.outer ] ; 10 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer409, %bb.h
  %.088 = phi ptr [ %i.ba, %bb.h ], [ %.088.ph411, %.outer409 ] ; 19 uses
  %i.d = load i64, ptr %.088, align 8, !tbaa !172 ; 3 uses
  %i.e = trunc i64 %i.d to i32
  %i.f = lshr i32 %i.e, 8
  %i.g = and i32 %i.f, 127
  switch i32 %i.g, label %iseq_compile_each.exit132 [
    i32 22, label %bb.c
    i32 23, label %bb.g
    i32 101, label %nd_line.exit123
    i32 109, label %nd_line.exit123
    i32 110, label %nd_line.exit123
    i32 111, label %nd_line.exit123
    i32 59, label %nd_line.exit123
    i32 60, label %nd_line.exit123
    i32 61, label %nd_line.exit123
    i32 62, label %nd_line.exit123
    i32 96, label %nd_line.exit123
    i32 63, label %nd_line.exit123
    i32 68, label %nd_line.exit123
    i32 44, label %nd_line.exit123
    i32 104, label %nd_line.exit123
    i32 97, label %nd_line.exit126
    i32 95, label %nd_line.exit126
    i32 43, label %iseq_compile_each.exit
    i32 76, label %iseq_compile_each.exit
    i32 69, label %iseq_compile_each.exit
    i32 64, label %iseq_compile_each.exit
    i32 92, label %bb.k
    i32 93, label %bb.l
    i32 99, label %.thread
  ]

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.088, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !482
  %i.j = call fastcc i32 @compile_logical(ptr noundef %0, ptr noundef %.089.ph410, ptr noundef %i.i, ptr noundef null, ptr noundef %.084.ph412) ; 2 uses
  %.not99 = icmp eq i32 %i.j, 0
  br i1 %.not99, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.088, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !483  ; 2 uses
  %i.m = icmp eq i32 %i.j, 2
  br i1 %i.m, label %nd_line.exit, label %.outer

nd_line.exit:                                     ; preds = %bb.d
  store ptr %5, ptr %i.a, align 8, !tbaa !42
  store ptr null, ptr %i.b, align 8, !tbaa !62
  %.val13.i = load ptr, ptr %i.c, align 8, !tbaa !47
  %i.n = getelementptr i8, ptr %.val13.i, i64 96  ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64   ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !37   ; 2 uses
  %i.r = zext i32 %i.q to i64
  %i.s = add nuw nsw i64 %i.r, 48
  %i.t = getelementptr i8, ptr %i.o, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !37   ; 4 uses
  %i.v = zext i32 %i.u to i64                     ; 2 uses
  %i.w = icmp samesign ugt i64 %i.s, %i.v
  br i1 %i.w, label %.preheader.i.i.i.i, label %new_label_body.exit

.preheader.i.i.i.i:                               ; preds = %nd_line.exit
  %i.x = icmp ult i32 %i.u, 48
  br i1 %i.x, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.f
  %.027.i.i.i.i = phi i32 [ %i.z, %bb.f ], [ %i.u, %.preheader.i.i.i.i ] ; 3 uses
  %i.y = icmp samesign ugt i32 %.027.i.i.i.i, 1073741822
  br i1 %i.y, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  call void @rb_memerror() #38
  unreachable

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.z = shl nuw nsw i32 %.027.i.i.i.i, 1         ; 3 uses
  %i.aa = icmp samesign ult i32 %.027.i.i.i.i, 24
  br i1 %i.aa, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.loopexit.i.i, !llvm.loop !0

._crit_edge.i.i.loopexit.i.i:                     ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64
  br label %._crit_edge.i.i.i.i
end_hunk_1
begin_hunk_2_@compile_shareable_literal_constant:bb.a

bb.bg:                                            ; preds = %.sink.split, %bb.bf
  store i64 36, ptr %6, align 8, !tbaa !63
  store i32 0, ptr %7, align 4, !tbaa !37
  %i.im = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !87 ; 2 uses
  %.not.i245 = icmp eq ptr %i.in, null
  br i1 %.not.i245, label %APPEND_LIST.exit, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.io = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !42 ; 2 uses
  %i.iq = getelementptr i8, ptr %i.ip, i64 8
  store ptr %i.in, ptr %i.iq, align 8, !tbaa !62
  %i.ir = load ptr, ptr %i.im, align 8, !tbaa !87
  %i.is = getelementptr i8, ptr %i.ir, i64 16
  store ptr %i.ip, ptr %i.is, align 8, !tbaa !61
  %i.it = load ptr, ptr %i.f, align 8, !tbaa !42
  store ptr %i.it, ptr %i.io, align 8, !tbaa !42
  br label %APPEND_LIST.exit

bb.bi:                                            ; preds = %.thread290
  %i.iu = load i64, ptr %4, align 8, !tbaa !172   ; 3 uses
  %i.iv = trunc i64 %i.iu to i32
  %i.iw = lshr i32 %i.iv, 8
  %i.ix = and i32 %i.iw, 127
  switch i32 %i.ix, label %bb.bj [
    i32 43, label %nd_line.exit248
    i32 45, label %nd_line.exit251
  ]

nd_line.exit248:                                  ; preds = %bb.bi
  %i.iy = lshr i64 %i.iu, 15
  %i.iz = trunc i64 %i.iy to i32
  %i.ja = getelementptr i8, ptr %4, i64 24
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !243
  %i.jc = getelementptr i8, ptr %4, i64 40
  %i.jd = load i64, ptr %i.jc, align 8, !tbaa !47
  %i.je = shl i64 %i.jd, 1
  %i.jf = or disjoint i64 %i.je, 1
  %i.jg = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.iz, i32 noundef %i.jb, i32 noundef 27, i32 noundef 1, i64 noundef %i.jf)
  br label %.sink.split366

nd_line.exit251:                                  ; preds = %bb.bi
  %i.jh = getelementptr i8, ptr %4, i64 32
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !568
  %i.jj = getelementptr i8, ptr %i.ji, i64 40
  %i.jk = load i64, ptr %i.jj, align 8, !tbaa !47
  %i.jl = lshr i64 %i.iu, 15
  %i.jm = trunc i64 %i.jl to i32
  %i.jn = getelementptr i8, ptr %4, i64 24
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !243
  %sext208 = shl i64 %i.jk, 32
  %i.jp = ashr exact i64 %sext208, 31
  %i.jq = or disjoint i64 %i.jp, 1
  %i.jr = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.jm, i32 noundef %i.jo, i32 noundef 37, i32 noundef 1, i64 noundef %i.jq)
  br label %.sink.split366

.sink.split366:                                   ; preds = %nd_line.exit248, %nd_line.exit251
  %.sink373 = phi ptr [ %i.jr, %nd_line.exit251 ], [ %i.jg, %nd_line.exit248 ] ; 3 uses
  %i.js = load ptr, ptr %i.f, align 8, !tbaa !42  ; 2 uses
  %i.jt = getelementptr i8, ptr %.sink373, i64 16
  store ptr %i.js, ptr %i.jt, align 8, !tbaa !61
  %i.ju = getelementptr i8, ptr %i.js, i64 8
  store ptr %.sink373, ptr %i.ju, align 8, !tbaa !62
  store ptr %.sink373, ptr %i.f, align 8, !tbaa !42
  br label %bb.bj

bb.bj:                                            ; preds = %.sink.split366, %bb.bi
  call fastcc void @compile_make_shareable_node(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %8, ptr noundef nonnull %4, i1 noundef zeroext false)
  br label %rb_obj_written.exit255

nd_line.exit254:                                  ; preds = %.thread290
  %i.jv = call i64 @rb_ractor_make_shareable(i64 noundef %.11) #37 ; 6 uses
  %i.jw = load i64, ptr %4, align 8, !tbaa !172
  %i.jx = lshr i64 %i.jw, 15
  %i.jy = trunc i64 %i.jx to i32
  %i.jz = getelementptr i8, ptr %4, i64 24
  %i.ka = load i32, ptr %i.jz, align 8, !tbaa !243
  %i.kb = call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %i.jy, i32 noundef %i.ka, i32 noundef 19, i32 noundef 1, i64 noundef %i.jv) ; 3 uses
  %i.kc = getelementptr i8, ptr %1, i64 24        ; 2 uses
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !42 ; 2 uses
  %i.ke = getelementptr i8, ptr %i.kb, i64 16
  store ptr %i.kd, ptr %i.ke, align 8, !tbaa !61
  %i.kf = getelementptr i8, ptr %i.kd, i64 8
  store ptr %i.kb, ptr %i.kf, align 8, !tbaa !62
  store ptr %i.kb, ptr %i.kc, align 8, !tbaa !42
  %i.kg = icmp eq i64 %i.jv, 0
  %i.kh = and i64 %i.jv, 7
  %i.ki = icmp ne i64 %i.kh, 0
  %i.kj = or i1 %i.kg, %i.ki
  br i1 %i.kj, label %rb_obj_written.exit255, label %bb.bk

bb.bk:                                            ; preds = %nd_line.exit254
  %i.kk = ptrtoint ptr %0 to i64
  call void @rb_gc_writebarrier(i64 noundef %i.kk, i64 noundef %i.jv) #37
  br label %rb_obj_written.exit255

rb_obj_written.exit255:                           ; preds = %bb.bk, %nd_line.exit254, %bb.bj
  %storemerge = phi i64 [ 36, %bb.bj ], [ %i.jv, %nd_line.exit254 ], [ %i.jv, %bb.bk ]
  store i64 %storemerge, ptr %6, align 8, !tbaa !63
  store i32 1, ptr %7, align 4, !tbaa !37
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %const_decl_path.exit, %bb.bh, %bb.bg, %bb.ar, %bb.ab, %iseq_compile_each.exit238, %iseq_compile_each.exit218, %iseq_compile_each.exit, %rb_obj_written.exit255, %bb.be, %.loopexit, %bb.ad, %rb_obj_written.exit230, %rb_obj_written.exit226, %rb_obj_written.exit, %bb.p, %bb.n
  %.6 = phi i32 [ 1, %.loopexit ], [ 0, %iseq_compile_each.exit218 ], [ 1, %bb.be ], [ 1, %bb.bh ], [ 1, %bb.n ], [ 0, %bb.ar ], [ 1, %bb.p ], [ 0, %iseq_compile_each.exit ], [ 1, %rb_obj_written.exit ], [ 1, %rb_obj_written.exit226 ], [ 1, %rb_obj_written.exit230 ], [ 1, %rb_obj_written.exit255 ], [ 1, %bb.ad ], [ 0, %iseq_compile_each.exit238 ], [ 0, %bb.ab ], [ 1, %bb.bg ], [ 0, %const_decl_path.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #37
  ret i32 %.6
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @compile_make_shareable_node(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %nd_line.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %3, align 8, !tbaa !172
  %i.b = lshr i64 %i.a, 15
  %i.c = trunc i64 %i.b to i32
  br label %nd_line.exit

nd_line.exit:                                     ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.c, %bb.b ], [ -1, %bb.a ]
  %i.d = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !243
  %i.f = tail call ptr (ptr, i32, i32, i32, i32, ...) @new_insn_body(ptr noundef %0, i32 noundef %.0.i, i32 noundef %i.e, i32 noundef 20, i32 noundef 1, i64 noundef 3) ; 5 uses
  %i.g = getelementptr i8, ptr %1, i64 24         ; 5 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.i = getelementptr i8, ptr %i.f, i64 16
  store ptr %i.h, ptr %i.i, align 8, !tbaa !61
  %i.j = getelementptr i8, ptr %i.h, i64 8
  store ptr %i.f, ptr %i.j, align 8, !tbaa !62
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  %i.k = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !87   ; 2 uses
  %.not.i16 = icmp eq ptr %i.l, null
  br i1 %.not.i16, label %APPEND_LIST.exit, label %bb.c

bb.c:                                             ; preds = %nd_line.exit
  %i.m = getelementptr i8, ptr %i.f, i64 8
  store ptr %i.l, ptr %i.m, align 8, !tbaa !62
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !87
  %i.o = getelementptr i8, ptr %i.n, i64 16
  store ptr %i.f, ptr %i.o, align 8, !tbaa !61
  %i.p = getelementptr i8, ptr %2, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !42
  store ptr %i.q, ptr %i.g, align 8, !tbaa !42
  br label %APPEND_LIST.exit

APPEND_LIST.exit:                                 ; preds = %nd_line.exit, %bb.c
  %i.r = load i64, ptr %3, align 8, !tbaa !172
  %i.s = load i32, ptr %i.d, align 8, !tbaa !243
  br i1 %4, label %nd_line.exit19, label %nd_line.exit23

nd_line.exit19:                                   ; preds = %APPEND_LIST.exit
  %.pr.i = load i64, ptr @compile_make_shareable_node.rbimpl_id, align 8, !tbaa !63 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %nd_line.exit19, %.lr.ph.i
  %i.t = tail call i64 @rb_intern2(ptr noundef nonnull @.str.152, i64 noundef 19) #37 ; 3 uses
  store i64 %i.t, ptr @compile_make_shareable_node.rbimpl_id, align 8, !tbaa !63
  %.not.i20 = icmp eq i64 %i.t, 0
  br i1 %.not.i20, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !3

nd_line.exit23:                                   ; preds = %APPEND_LIST.exit
  %.pr.i24 = load i64, ptr @compile_make_shareable_node.rbimpl_id.153, align 8, !tbaa !63 ; 2 uses
  %.not4.i25 = icmp eq i64 %.pr.i24, 0
  br i1 %.not4.i25, label %.lr.ph.i27, label %rbimpl_intern_const.exit

.lr.ph.i27:                                       ; preds = %nd_line.exit23, %.lr.ph.i27
  %i.u = tail call i64 @rb_intern2(ptr noundef nonnull @.str.154, i64 noundef 14) #37 ; 3 uses
  store i64 %i.u, ptr @compile_make_shareable_node.rbimpl_id.153, align 8, !tbaa !63
  %.not.i28 = icmp eq i64 %i.u, 0
  br i1 %.not.i28, label %.lr.ph.i27, label %rbimpl_intern_const.exit, !llvm.loop !3

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i27, %.lr.ph.i, %nd_line.exit23, %nd_line.exit19
  %.lcssa.i26.sink = phi i64 [ %i.t, %.lr.ph.i ], [ %.pr.i, %nd_line.exit19 ], [ %.pr.i24, %nd_line.exit23 ], [ %i.u, %.lr.ph.i27 ]
  %i.v = lshr i64 %i.r, 15
  %i.w = trunc i64 %i.v to i32
  %i.x = tail call fastcc ptr @new_insn_send(ptr noundef %0, i32 noundef %i.w, i32 noundef %i.s, i64 noundef %.lcssa.i26.sink, i64 noundef 3, ptr noundef null, i64 noundef 33, ptr noundef null) ; 3 uses
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !42   ; 2 uses
  %i.z = getelementptr i8, ptr %i.x, i64 16
  store ptr %i.y, ptr %i.z, align 8, !tbaa !61
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  store ptr %i.x, ptr %i.aa, align 8, !tbaa !62
  store ptr %i.x, ptr %i.g, align 8, !tbaa !42
  ret void
}

declare i64 @rb_ary_new() local_unnamed_addr #4

declare i64 @rb_hash_clear(i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_join(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i64 @rb_ary_reverse(i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 -4294967295, 4294967296) i64 @setup_args(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr nofree noundef writeonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %5 = alloca [1 x %struct.iseq_link_anchor], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #37
  store i32 1, ptr %i.a, align 4, !tbaa !37
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.val97 = load i64, ptr %2, align 8, !tbaa !172 ; 2 uses
  %i.b = and i64 %.val97, 32512
  %i.c = icmp eq i64 %i.b, 20224                  ; 2 uses
  br i1 %i.c, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %2, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1226 ; 3 uses
  %.not82 = icmp eq ptr %i.e, null
  br i1 %.not82, label %.thread108, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.c
  %.pre = load i64, ptr %i.e, align 8, !tbaa !172
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.b
  %i.f = phi i64 [ %.pre, %..thread_crit_edge ], [ %.val97, %bb.b ]
  %i.g = phi ptr [ %i.e, %..thread_crit_edge ], [ %2, %bb.b ] ; 11 uses
  %i.h = trunc i64 %i.f to i32
  %i.i = lshr i32 %i.h, 8
  %i.j = and i32 %i.i, 127
  switch i32 %i.j, label %.thread108 [
    i32 78, label %.thread108.sink.split
    i32 76, label %bb.d
    i32 77, label %bb.e
  ]

bb.d:                                             ; preds = %.thread
  %i.k = getelementptr i8, ptr %i.g, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !504
  %.val96 = load i64, ptr %i.l, align 8, !tbaa !172
  %i.m = and i64 %.val96, 32512
  %i.n = icmp ne i64 %i.m, 11008
  %i.o = zext i1 %i.n to i32
  br label %.thread108.sink.split

bb.e:                                             ; preds = %.thread
  %i.p = getelementptr i8, ptr %i.g, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !507  ; 2 uses
  %.val95 = load i64, ptr %i.q, align 8, !tbaa !172
  %i.r = trunc i64 %.val95 to i32
  %i.s = lshr i32 %i.r, 8
  %i.t = and i32 %i.s, 127
  switch i32 %i.t, label %.thread108 [
    i32 78, label %bb.g
    i32 76, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.q, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !504
  %.val93 = load i64, ptr %i.v, align 8, !tbaa !172
  %i.w = and i64 %.val93, 32512
  %i.x = icmp eq i64 %i.w, 11008
  br i1 %i.x, label %bb.g, label %.thread108

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.y = getelementptr i8, ptr %i.g, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !508  ; 3 uses
  %.val92 = load i64, ptr %i.z, align 8, !tbaa !172
  %i.aa = and i64 %.val92, 32512
  %i.ab = icmp eq i64 %i.aa, 11520
  br i1 %i.ab, label %bb.h, label %.thread108

bb.h:                                             ; preds = %bb.g
  %i.ac = getelementptr i8, ptr %i.z, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !510
  %.not83 = icmp ne i64 %i.ad, 0                  ; 2 uses
  %i.ae = zext i1 %.not83 to i32                  ; 2 uses
  store i32 %i.ae, ptr %i.a, align 4, !tbaa !37
  br i1 %.not83, label %.thread108, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.z, i64 32
  %.070121 = load ptr, ptr %i.af, align 8, !tbaa !196 ; 2 uses
  %.not84122 = icmp eq ptr %.070121, null
  br i1 %.not84122, label %.thread108, label %.lr.ph

bb.j:                                             ; preds = %bb.l
  %i.ag = getelementptr i8, ptr %i.al, i64 48
  %.070 = load ptr, ptr %i.ag, align 8, !tbaa !196 ; 2 uses
  %.not84 = icmp eq ptr %.070, null
  br i1 %.not84, label %.thread108, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %bb.j
  %.070123 = phi ptr [ %.070, %bb.j ], [ %.070121, %bb.i ] ; 2 uses
  %i.ah = getelementptr i8, ptr %.070123, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !523 ; 2 uses
  %.not85 = icmp eq ptr %i.ai, null
  br i1 %.not85, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph
  %i.aj = tail call fastcc zeroext i1 @setup_args_dup_rest_p(ptr noundef nonnull %i.ai)
  br i1 %i.aj, label %.thread108.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph
  %i.ak = getelementptr i8, ptr %.070123, i64 48
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !524 ; 2 uses
  %i.am = getelementptr i8, ptr %i.al, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !523
  %i.ao = tail call fastcc zeroext i1 @setup_args_dup_rest_p(ptr noundef %i.an)
  br i1 %i.ao, label %.thread108.sink.split, label %bb.j

.thread108.sink.split:                            ; preds = %bb.l, %bb.k, %.thread, %bb.d
  %.sink = phi i32 [ %i.o, %bb.d ], [ 0, %.thread ], [ 1, %bb.k ], [ 1, %bb.l ] ; 2 uses
  store i32 %.sink, ptr %i.a, align 4, !tbaa !37
  br label %.thread108

.thread108:                                       ; preds = %bb.j, %.thread108.sink.split, %bb.g, %bb.f, %bb.e, %bb.i, %bb.h, %.thread, %bb.c
  %i.ap = phi i32 [ 0, %bb.i ], [ 1, %bb.c ], [ 1, %bb.g ], [ 1, %bb.e ], [ 1, %bb.f ], [ 1, %bb.h ], [ 1, %.thread ], [ %.sink, %.thread108.sink.split ], [ %i.ae, %bb.j ] ; 2 uses
  %i.aq = phi ptr [ %i.g, %bb.i ], [ null, %bb.c ], [ %i.g, %bb.g ], [ %i.g, %bb.e ], [ %i.g, %bb.f ], [ %i.g, %bb.h ], [ %i.g, %.thread ], [ %i.g, %.thread108.sink.split ], [ %i.g, %bb.j ]
  %.not86 = icmp eq ptr %i.aq, %2
  br i1 %.not86, label %.thread112, label %bb.m

bb.m:                                             ; preds = %.thread108
  %i.ar = getelementptr i8, ptr %2, i64 40
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !1227
  %i.at = tail call fastcc zeroext i1 @setup_args_dup_rest_p(ptr noundef %i.as)
  br i1 %i.at, label %bb.n, label %.thread112

bb.n:                                             ; preds = %bb.m
  store i32 3, ptr %i.a, align 4, !tbaa !37
  br label %.thread112

.thread112:                                       ; preds = %.thread108, %bb.n, %bb.m
  %i.au = phi i32 [ %i.ap, %.thread108 ], [ 3, %bb.n ], [ %i.ap, %bb.m ] ; 3 uses
  br i1 %i.c, label %bb.o, label %.split77

.split77:                                         ; preds = %.thread112
  %i.av = call fastcc i32 @setup_args_core(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %i.a, ptr noundef nonnull %3, ptr noundef %4)
  %i.aw = sext i32 %i.av to i64
  %i.ax = shl nsw i64 %i.aw, 1
  %i.ay = or disjoint i64 %i.ax, 1
  br label %.split

bb.o:                                             ; preds = %.thread112
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #37
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  store ptr %5, ptr %i.az, align 8, !tbaa !42
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.bb = getelementptr i8, ptr %2, i64 48
  %i.bc = load i8, ptr %i.bb, align 8
  %i.bd = and i8 %i.bc, 1
  %.not87 = icmp eq i8 %i.bd, 0
  br i1 %.not87, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.be = getelementptr i8, ptr %0, i64 16        ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !242 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 16
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !70 ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 16
  %i.bl = load i16, ptr %i.bk, align 8
  %i.bm = and i16 %i.bl, 8192
  %.not88 = icmp eq i16 %i.bm, 0
  br i1 %.not88, label %bb.u, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bn = getelementptr i8, ptr %i.bj, i64 240
  %i.bo = load i32, ptr %i.bn, align 8, !tbaa !170
  %i.bp = getelementptr i8, ptr %2, i64 32
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !1226
  %i.br = getelementptr i8, ptr %i.bq, i64 32
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !507 ; 2 uses
  %.val90 = load i64, ptr %i.bs, align 8, !tbaa !172
  %i.bt = and i64 %.val90, 32512
  %i.bu = icmp eq i64 %i.bt, 19456
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr i8, ptr %i.bs, i64 32
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !504
  %i.bx = call fastcc i32 @setup_args_core(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.bw, ptr noundef %i.a, ptr noundef nonnull %3, ptr noundef %4)
  %i.by = sext i32 %i.bx to i64
  %i.bz = shl nsw i64 %i.by, 1
  %i.ca = or disjoint i64 %i.bz, 1
  %.pre126 = load ptr, ptr %i.be, align 8, !tbaa !70 ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %.pre126, i64 176
  %.pre127 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !242
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.cb = phi ptr [ %.pre127, %bb.r ], [ %i.bh, %bb.q ]
  %i.cc = phi ptr [ %.pre126, %bb.r ], [ %i.bf, %bb.q ]
  %.0 = phi i64 [ %i.ca, %bb.r ], [ 1, %bb.q ]
  %i.cd = load i32, ptr %3, align 4, !tbaa !37
  %i.ce = or i32 %i.cd, 8192
  store i32 %i.ce, ptr %3, align 4, !tbaa !37
end_hunk_2
