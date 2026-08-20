inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
bb.bf:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i263
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !19
  %.not.i2.i265 = icmp eq i32 %i.ij, 0
  br i1 %.not.i2.i265, label %_ZL13stbi__get16leP13stbi__context.exit270, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !21
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !15
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !18
  %i.ir = tail call noundef i32 %i.il(ptr noundef %i.in, ptr noundef nonnull %i.io, i32 noundef %i.iq), !inline_history !389 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ii, align 8, !tbaa !19
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.io, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267

bb.bi:                                            ; preds = %bb.bg
  %i.iu = sext i32 %i.ir to i64
  %i.iv = getelementptr inbounds i8, ptr %i.io, i64 %i.iu
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267: ; preds = %bb.bi, %bb.bh
  %.sink.i.i5.i268 = phi ptr [ %i.it, %bb.bh ], [ %i.iv, %bb.bi ] ; 2 uses
  store ptr %.sink.i.i5.i268, ptr %i.d, align 8, !tbaa !25
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL13stbi__get16leP13stbi__context.exit270.sink.split

_ZL13stbi__get16leP13stbi__context.exit270.sink.split: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267, %bb.be
  %.sink244 = phi ptr [ %i.ih, %bb.be ], [ %i.iw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267 ] ; 2 uses
  %.ph242 = phi ptr [ %i.ie, %bb.be ], [ %.sink.i.i5.i268, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267 ]
  store ptr %.sink244, ptr %i.b, align 8, !tbaa !24
  br label %_ZL13stbi__get16leP13stbi__context.exit270

_ZL13stbi__get16leP13stbi__context.exit270:       ; preds = %_ZL13stbi__get16leP13stbi__context.exit270.sink.split, %bb.bf
  %i.ix = phi ptr [ %i.ie, %bb.bf ], [ %.ph242, %_ZL13stbi__get16leP13stbi__context.exit270.sink.split ] ; 3 uses
  %i.iy = phi ptr [ %i.if, %bb.bf ], [ %.sink244, %_ZL13stbi__get16leP13stbi__context.exit270.sink.split ] ; 4 uses
  %i.iz = icmp ult ptr %i.iy, %i.ix
  br i1 %i.iz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit270
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 2 uses
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !24
  %i.jb = load i8, ptr %i.iy, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i275

bb.bk:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit270
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !19
  %.not.i.i271 = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i271, label %_ZL10stbi__get8P13stbi__context.exit.i275, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !21
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !15
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !18
  %i.jl = tail call noundef i32 %i.jf(ptr noundef %i.jh, ptr noundef nonnull %i.ji, i32 noundef %i.jk), !inline_history !389 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.jc, align 8, !tbaa !19
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ji, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273

bb.bn:                                            ; preds = %bb.bl
  %i.jo = sext i32 %i.jl to i64
  %i.jp = getelementptr inbounds i8, ptr %i.ji, i64 %i.jo
  %.pre.i.i272 = load i8, ptr %i.ji, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273: ; preds = %bb.bn, %bb.bm
  %i.jq = phi i8 [ 0, %bb.bm ], [ %.pre.i.i272, %bb.bn ]
  %.sink.i.i.i274 = phi ptr [ %i.jn, %bb.bm ], [ %i.jp, %bb.bn ] ; 2 uses
  store ptr %.sink.i.i.i274, ptr %i.d, align 8, !tbaa !25
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.jr, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit.i275

_ZL10stbi__get8P13stbi__context.exit.i275:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273, %bb.bk, %bb.bj
  %i.js = phi ptr [ %i.ix, %bb.bj ], [ %.sink.i.i.i274, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ %i.ix, %bb.bk ] ; 3 uses
  %i.jt = phi ptr [ %i.ja, %bb.bj ], [ %i.jr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ %i.iy, %bb.bk ] ; 4 uses
  %.0.i.i276 = phi i8 [ %i.jb, %bb.bj ], [ %i.jq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ 0, %bb.bk ]
  %i.ju = icmp ult ptr %i.jt, %i.js
  br i1 %i.ju, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i275
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 1 ; 2 uses
  store ptr %i.jv, ptr %i.b, align 8, !tbaa !24
  %i.jw = load i8, ptr %i.jt, align 1, !tbaa !23
  br label %_ZL13stbi__get16leP13stbi__context.exit282

bb.bp:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i275
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !19
  %.not.i2.i277 = icmp eq i32 %i.jy, 0
  br i1 %.not.i2.i277, label %_ZL13stbi__get16leP13stbi__context.exit282, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !21
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !15
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !18
  %i.kg = tail call noundef i32 %i.ka(ptr noundef %i.kc, ptr noundef nonnull %i.kd, i32 noundef %i.kf), !inline_history !389 ; 2 uses
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.jx, align 8, !tbaa !19
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.kd, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279

bb.bs:                                            ; preds = %bb.bq
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr inbounds i8, ptr %i.kd, i64 %i.kj
  %.pre.i3.i278 = load i8, ptr %i.kd, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279: ; preds = %bb.bs, %bb.br
  %i.kl = phi i8 [ 0, %bb.br ], [ %.pre.i3.i278, %bb.bs ]
  %.sink.i.i5.i280 = phi ptr [ %i.ki, %bb.br ], [ %i.kk, %bb.bs ] ; 2 uses
  store ptr %.sink.i.i5.i280, ptr %i.d, align 8, !tbaa !25
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.km, ptr %i.b, align 8, !tbaa !24
  br label %_ZL13stbi__get16leP13stbi__context.exit282

_ZL13stbi__get16leP13stbi__context.exit282:       ; preds = %bb.bo, %bb.bp, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279
  %i.kn = phi ptr [ %i.js, %bb.bo ], [ %.sink.i.i5.i280, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ %i.js, %bb.bp ] ; 3 uses
  %i.ko = phi ptr [ %i.jv, %bb.bo ], [ %i.km, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ %i.jt, %bb.bp ] ; 4 uses
  %.0.i6.i281 = phi i8 [ %i.jw, %bb.bo ], [ %i.kl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ 0, %bb.bp ]
  %i.kp = zext i8 %.0.i.i276 to i32               ; 4 uses
  %i.kq = zext i8 %.0.i6.i281 to i32
  %i.kr = shl nuw nsw i32 %i.kq, 8                ; 4 uses
  %i.ks = or disjoint i32 %i.kr, %i.kp            ; 9 uses
  %i.kt = icmp ult ptr %i.ko, %i.kn
  br i1 %i.kt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit282
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 2 uses
  store ptr %i.ku, ptr %i.b, align 8, !tbaa !24
  %i.kv = load i8, ptr %i.ko, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i287

bb.bu:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit282
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !19
  %.not.i.i283 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i283, label %_ZL10stbi__get8P13stbi__context.exit.i287, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !21
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !15
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !18
  %i.lf = tail call noundef i32 %i.kz(ptr noundef %i.lb, ptr noundef nonnull %i.lc, i32 noundef %i.le), !inline_history !389 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.kw, align 8, !tbaa !19
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.lc, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285

bb.bx:                                            ; preds = %bb.bv
  %i.li = sext i32 %i.lf to i64
  %i.lj = getelementptr inbounds i8, ptr %i.lc, i64 %i.li
  %.pre.i.i284 = load i8, ptr %i.lc, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285: ; preds = %bb.bx, %bb.bw
  %i.lk = phi i8 [ 0, %bb.bw ], [ %.pre.i.i284, %bb.bx ]
  %.sink.i.i.i286 = phi ptr [ %i.lh, %bb.bw ], [ %i.lj, %bb.bx ] ; 2 uses
  store ptr %.sink.i.i.i286, ptr %i.d, align 8, !tbaa !25
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ll, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit.i287

_ZL10stbi__get8P13stbi__context.exit.i287:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285, %bb.bu, %bb.bt
  %i.lm = phi ptr [ %i.kn, %bb.bt ], [ %.sink.i.i.i286, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ %i.kn, %bb.bu ] ; 3 uses
  %i.ln = phi ptr [ %i.ku, %bb.bt ], [ %i.ll, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ %i.ko, %bb.bu ] ; 4 uses
  %.0.i.i288 = phi i8 [ %i.kv, %bb.bt ], [ %i.lk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ 0, %bb.bu ] ; 3 uses
  %i.lo = icmp ult ptr %i.ln, %i.lm
  br i1 %i.lo, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i287
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 1 ; 2 uses
  store ptr %i.lp, ptr %i.b, align 8, !tbaa !24
  %i.lq = load i8, ptr %i.ln, align 1, !tbaa !23
  br label %_ZL13stbi__get16leP13stbi__context.exit294

bb.bz:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i287
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !19
  %.not.i2.i289 = icmp eq i32 %i.ls, 0
  br i1 %.not.i2.i289, label %_ZL13stbi__get16leP13stbi__context.exit294, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !21
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !15
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !18
  %i.ma = tail call noundef i32 %i.lu(ptr noundef %i.lw, ptr noundef nonnull %i.lx, i32 noundef %i.lz), !inline_history !389 ; 2 uses
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.lr, align 8, !tbaa !19
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.lx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291

bb.cc:                                            ; preds = %bb.ca
  %i.md = sext i32 %i.ma to i64
  %i.me = getelementptr inbounds i8, ptr %i.lx, i64 %i.md
  %.pre.i3.i290 = load i8, ptr %i.lx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291: ; preds = %bb.cc, %bb.cb
  %i.mf = phi i8 [ 0, %bb.cb ], [ %.pre.i3.i290, %bb.cc ]
  %.sink.i.i5.i292 = phi ptr [ %i.mc, %bb.cb ], [ %i.me, %bb.cc ] ; 2 uses
  store ptr %.sink.i.i5.i292, ptr %i.d, align 8, !tbaa !25
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.mg, ptr %i.b, align 8, !tbaa !24
  br label %_ZL13stbi__get16leP13stbi__context.exit294

_ZL13stbi__get16leP13stbi__context.exit294:       ; preds = %bb.by, %bb.bz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291
  %i.mh = phi ptr [ %i.lm, %bb.by ], [ %.sink.i.i5.i292, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291 ], [ %i.lm, %bb.bz ] ; 3 uses
  %i.mi = phi ptr [ %i.lp, %bb.by ], [ %i.mg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291 ], [ %i.ln, %bb.bz ] ; 4 uses
  %.0.i6.i293 = phi i8 [ %i.lq, %bb.by ], [ %i.mf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291 ], [ 0, %bb.bz ]
  %i.mj = zext i8 %.0.i.i288 to i32               ; 6 uses
  %i.mk = zext i8 %.0.i6.i293 to i32
  %i.ml = shl nuw nsw i32 %i.mk, 8                ; 6 uses
  %i.mm = or disjoint i32 %i.ml, %i.mj            ; 12 uses
  %i.mn = icmp ult ptr %i.mi, %i.mh
  br i1 %i.mn, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit294
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mi, i64 1 ; 2 uses
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !24
  %i.mp = load i8, ptr %i.mi, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit300

bb.ce:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit294
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !19
  %.not.i295 = icmp eq i32 %i.mr, 0
  br i1 %.not.i295, label %_ZL10stbi__get8P13stbi__context.exit300, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !21
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !15
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !18
  %i.mz = tail call noundef i32 %i.mt(ptr noundef %i.mv, ptr noundef nonnull %i.mw, i32 noundef %i.my), !inline_history !346 ; 2 uses
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.mq, align 8, !tbaa !19
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.mw, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i297

bb.ch:                                            ; preds = %bb.cf
  %i.nc = sext i32 %i.mz to i64
  %i.nd = getelementptr inbounds i8, ptr %i.mw, i64 %i.nc
  %.pre.i296 = load i8, ptr %i.mw, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i297

_ZL19stbi__refill_bufferP13stbi__context.exit.i297: ; preds = %bb.ch, %bb.cg
  %i.ne = phi i8 [ 0, %bb.cg ], [ %.pre.i296, %bb.ch ]
  %.sink.i.i298 = phi ptr [ %i.nb, %bb.cg ], [ %i.nd, %bb.ch ] ; 2 uses
  store ptr %.sink.i.i298, ptr %i.d, align 8, !tbaa !25
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.nf, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit300

_ZL10stbi__get8P13stbi__context.exit300:          ; preds = %bb.cd, %bb.ce, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297
  %i.ng = phi ptr [ %i.mh, %bb.cd ], [ %.sink.i.i298, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ %i.mh, %bb.ce ] ; 3 uses
  %i.nh = phi ptr [ %i.mo, %bb.cd ], [ %i.nf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ %i.mi, %bb.ce ] ; 4 uses
  %.0.i299 = phi i8 [ %i.mp, %bb.cd ], [ %i.ne, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ 0, %bb.ce ] ; 3 uses
  %i.ni = icmp ult ptr %i.nh, %i.ng
  br i1 %i.ni, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit300
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 1 ; 2 uses
  store ptr %i.nj, ptr %i.b, align 8, !tbaa !24
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit306

bb.cj:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit300
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !19
  %.not.i301 = icmp eq i32 %i.nm, 0
  br i1 %.not.i301, label %_ZL10stbi__get8P13stbi__context.exit306, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !21
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !15
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !18
  %i.nu = tail call noundef i32 %i.no(ptr noundef %i.nq, ptr noundef nonnull %i.nr, i32 noundef %i.nt), !inline_history !346 ; 2 uses
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.nl, align 8, !tbaa !19
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.nr, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i303

bb.cm:                                            ; preds = %bb.ck
  %i.nx = sext i32 %i.nu to i64
  %i.ny = getelementptr inbounds i8, ptr %i.nr, i64 %i.nx
  %.pre.i302 = load i8, ptr %i.nr, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i303

_ZL19stbi__refill_bufferP13stbi__context.exit.i303: ; preds = %bb.cm, %bb.cl
  %i.nz = phi i8 [ 0, %bb.cl ], [ %.pre.i302, %bb.cm ]
  %.sink.i.i304 = phi ptr [ %i.nw, %bb.cl ], [ %i.ny, %bb.cm ] ; 2 uses
  store ptr %.sink.i.i304, ptr %i.d, align 8, !tbaa !25
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.oa, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit306

_ZL10stbi__get8P13stbi__context.exit306:          ; preds = %bb.ci, %bb.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i303
  %.pre.i316 = phi ptr [ %i.nj, %bb.ci ], [ %i.oa, %_ZL19stbi__refill_bufferP13stbi__context.exit.i303 ], [ %i.nh, %bb.cj ] ; 2 uses
  %i.ob = phi ptr [ %i.ng, %bb.ci ], [ %.sink.i.i304, %_ZL19stbi__refill_bufferP13stbi__context.exit.i303 ], [ %i.ng, %bb.cj ] ; 2 uses
  %.0.i305 = phi i8 [ %i.nk, %bb.ci ], [ %i.nz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i303 ], [ 0, %bb.cj ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i32 0, ptr %i.a, align 4
  %i.oc = icmp ugt i8 %.0.i227, 7                 ; 3 uses
  %.0.i305.fr = freeze i8 %.0.i305
  %i.od = lshr i8 %.0.i305.fr, 5
  %i.oe = and i8 %i.od, 1                         ; 2 uses
  %i.of = icmp ne i8 %.0.i221, 0                  ; 4 uses
  br i1 %i.of, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit306
  switch i8 %.0.i245, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.ct
    i8 16, label %bb.co
    i8 15, label %bb.co
    i8 24, label %bb.cp
    i8 32, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cr, %bb.cq, %bb.cn, %bb.cn
  br label %bb.ct

bb.cp:                                            ; preds = %bb.cn, %bb.cn
  %i.og = lshr i8 %.0.i245, 3
  br label %bb.ct

bb.cq:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit306
  switch i8 %.0.i299, label %_ZL18stbi__tga_get_compiiPi.exit [
    i8 8, label %bb.ct
    i8 16, label %bb.cr
    i8 15, label %bb.co
    i8 24, label %bb.cs
    i8 32, label %bb.cs
  ]

bb.cr:                                            ; preds = %bb.cq
  %i.oh = add nsw i32 %i.br, -8
  %spec.select = select i1 %i.oc, i32 %i.oh, i32 %i.br
  %i.oi = icmp eq i32 %spec.select, 3
  br i1 %i.oi, label %bb.ct, label %bb.co

bb.cs:                                            ; preds = %bb.cq, %bb.cq
  %i.oj = lshr i8 %.0.i299, 3
  br label %bb.ct

_ZL18stbi__tga_get_compiiPi.exit:                 ; preds = %bb.cq, %bb.cn
  store ptr @.str.83, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.fd

bb.ct:                                            ; preds = %bb.co, %bb.cp, %bb.cn, %bb.cs, %bb.cq, %bb.cr
  %i.ok = phi i1 [ false, %bb.cs ], [ false, %bb.cp ], [ false, %bb.cr ], [ false, %bb.cq ], [ true, %bb.co ], [ false, %bb.cn ] ; 2 uses
  %.not204 = phi i1 [ true, %bb.cs ], [ true, %bb.cp ], [ true, %bb.cr ], [ true, %bb.cq ], [ false, %bb.co ], [ true, %bb.cn ] ; 2 uses
  %.0189.ph.shrunk = phi i8 [ %i.oj, %bb.cs ], [ %i.og, %bb.cp ], [ 2, %bb.cr ], [ 1, %bb.cq ], [ 3, %bb.co ], [ 1, %bb.cn ] ; 6 uses
  %.0189.ph = zext nneg i8 %.0189.ph.shrunk to i32 ; 16 uses
  store i32 %i.ks, ptr %1, align 4, !tbaa !12
  store i32 %i.mm, ptr %2, align 4, !tbaa !12
  %.not199 = icmp eq ptr %3, null
  br i1 %.not199, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %.0189.ph, ptr %3, align 4, !tbaa !12
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.ol = icmp eq i32 %i.mm, 0                    ; 2 uses
  br i1 %i.ol, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i, label %_ZL21stbi__mul2sizes_validii.exit.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.cv
  %i.om = udiv i32 2147483647, %i.mm
  %.not23.i = icmp samesign ugt i32 %i.ks, %i.om
  br i1 %.not23.i, label %bb.cw, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %bb.cv
  %i.on = mul nuw nsw i32 %i.mm, %i.ks            ; 2 uses
  %i.oo = udiv i32 2147483647, %.0189.ph
  %.not.i312 = icmp samesign ugt i32 %i.on, %i.oo
  br i1 %.not.i312, label %bb.cw, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread: ; preds = %_ZL21stbi__mul2sizes_validii.exit.i
  %i.op = mul nuw nsw i32 %i.mm, %i.ks            ; 2 uses
  %i.oq = udiv i32 2147483647, %.0189.ph
  %.not.i312231 = icmp samesign ugt i32 %i.op, %i.oq
  br i1 %.not.i312231, label %bb.cw, label %_ZL21stbi__mul2sizes_validii.exit.i.i

bb.cw:                                            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread, %_ZL21stbi__mul2sizes_validii.exit.thread15.i, %_ZL21stbi__mul2sizes_validii.exit.i
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.fd

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread
  %i.or = udiv i32 2147483647, %i.mm
  %.not23.i.i = icmp samesign ugt i32 %i.ks, %i.or
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.os = phi i32 [ %i.op, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ %i.on, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ] ; 7 uses
  %i.ot = mul nuw nsw i32 %i.os, %.0189.ph
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ou) #34 ; 25 uses
  %.not201 = icmp eq ptr %i.ov, null
  br i1 %.not201, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.cx

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.fd

bb.cx:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !21
  %.not.i315 = icmp eq ptr %i.ox, null
  br i1 %.not.i315, label %.thread.i, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.oy = ptrtoint ptr %i.ob to i64
  %i.oz = ptrtoint ptr %.pre.i316 to i64
  %i.pa = sub i64 %i.oy, %i.oz
  %i.pb = trunc i64 %i.pa to i32                  ; 2 uses
  %i.pc = icmp sgt i32 %i.aa, %i.pb
  br i1 %i.pc, label %bb.cz, label %.thread.i

bb.cz:                                            ; preds = %bb.cy
  store ptr %i.ob, ptr %i.b, align 8, !tbaa !24
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !106
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !15
  %i.ph = sub nsw i32 %i.aa, %i.pb
  tail call void %i.pe(ptr noundef %i.pg, i32 noundef %i.ph), !inline_history !333
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.cx, %bb.cy
  %i.pi = zext i8 %.0.i to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %.pre.i316, i64 %i.pi
  store ptr %i.pj, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.cz, %.thread.i
  %or.cond = or i1 %i.of, %i.oc
  %or.cond3 = or i1 %or.cond, %i.ok
  br i1 %or.cond3, label %bb.dh, label %.preheader31

.preheader31:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ol, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31
  %.not202.not = icmp eq i8 %i.oe, 0              ; 2 uses
  %i.pk = mul nuw nsw i32 %i.ks, %.0189.ph        ; 10 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pm = zext nneg i32 %i.pk to i64              ; 14 uses
  %i.pn = load ptr, ptr %i.ow, align 8, !tbaa !21
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.pp = or disjoint i32 %i.ml, %i.mj
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !25 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !24 ; 4 uses
  br i1 %.not202.not, label %..thread_crit_edge.i319.us.us.preheader, label %..thread_crit_edge.i319.us.preheader

..thread_crit_edge.i319.us.preheader:             ; preds = %.lr.ph.split.us
  %5 = or disjoint i32 %i.ml, %i.mj               ; 2 uses
  %i.pq = zext nneg i32 %5 to i64                 ; 2 uses
  %xtraiter = and i64 %i.pq, 1
  %i.pr = icmp eq i32 %5, 1
  br i1 %i.pr, label %..thread_crit_edge.i319.us.epil.preheader, label %..thread_crit_edge.i319.us.preheader.new

..thread_crit_edge.i319.us.preheader.new:         ; preds = %..thread_crit_edge.i319.us.preheader
  %unroll_iter = and i64 %i.pq, 65534
  br label %..thread_crit_edge.i319.us

..thread_crit_edge.i319.us.us.preheader:          ; preds = %.lr.ph.split.us
  %6 = or disjoint i32 %i.ml, %i.mj               ; 2 uses
  %i.ps = zext nneg i32 %6 to i64                 ; 2 uses
  %xtraiter277 = and i64 %i.ps, 1
  %i.pt = icmp eq i32 %6, 1
  br i1 %i.pt, label %..thread_crit_edge.i319.us.us.epil.preheader, label %..thread_crit_edge.i319.us.us.preheader.new

..thread_crit_edge.i319.us.us.preheader.new:      ; preds = %..thread_crit_edge.i319.us.us.preheader
  %unroll_iter282 = and i64 %i.ps, 65534
  br label %..thread_crit_edge.i319.us.us

..thread_crit_edge.i319.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i319.us.us.preheader.new
  %indvars.iv67 = phi i64 [ 0, %..thread_crit_edge.i319.us.us.preheader.new ], [ %indvars.iv.next68.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.pu = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.us.preheader.new ], [ %i.qk, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter283 = phi i64 [ 0, %..thread_crit_edge.i319.us.us.preheader.new ], [ %niter283.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 %i.pm ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.pv, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.da

bb.da:                                            ; preds = %..thread_crit_edge.i319.us.us
  %i.pw = trunc i64 %indvars.iv67 to i32
  %i.px = xor i32 %i.pw, -1
  %i.py = add i32 %i.mm, %i.px
  %i.pz = mul i32 %i.pk, %i.py
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds i8, ptr %i.ov, i64 %i.qa
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qb, ptr align 1 %i.pu, i64 %i.pm, i1 false)
  store ptr %i.pv, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i319.us.us, %bb.da
  %i.qc = phi ptr [ %i.pv, %bb.da ], [ %i.pu, %..thread_crit_edge.i319.us.us ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.pm ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.qd, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.db

bb.db:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.qe = trunc i64 %indvars.iv67 to i32
  %i.qf = xor i32 %i.qe, -2
  %i.qg = add i32 %i.mm, %i.qf
  %i.qh = mul i32 %i.pk, %i.qg
  %i.qi = sext i32 %i.qh to i64
  %i.qj = getelementptr inbounds i8, ptr %i.ov, i64 %i.qi
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qj, ptr align 1 %i.qc, i64 %i.pm, i1 false)
  store ptr %i.qd, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.db, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.qk = phi ptr [ %i.qd, %bb.db ], [ %i.qc, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %.loopexit32.loopexit.unr-lcssa, label %..thread_crit_edge.i319.us.us, !llvm.loop !390

..thread_crit_edge.i319.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, %..thread_crit_edge.i319.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader.new ], [ %indvars.iv.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.ql = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.preheader.new ], [ %i.qy, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader.new ], [ %niter.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 %i.pm ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.qm, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.dc

bb.dc:                                            ; preds = %..thread_crit_edge.i319.us
  %i.qn = trunc nuw nsw i64 %indvars.iv to i32
  %i.qo = mul i32 %i.pk, %i.qn
  %i.qp = sext i32 %i.qo to i64
  %i.qq = getelementptr inbounds i8, ptr %i.ov, i64 %i.qp
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qq, ptr align 1 %i.ql, i64 %i.pm, i1 false)
  store ptr %i.qm, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.dc, %..thread_crit_edge.i319.us
  %i.qr = phi ptr [ %i.qm, %bb.dc ], [ %i.ql, %..thread_crit_edge.i319.us ] ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 %i.pm ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.qs, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.dd

bb.dd:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.qt = trunc i64 %indvars.iv to i32
  %i.qu = or disjoint i32 %i.qt, 1
  %i.qv = mul i32 %i.pk, %i.qu
  %i.qw = sext i32 %i.qv to i64
  %i.qx = getelementptr inbounds i8, ptr %i.ov, i64 %i.qw
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qx, ptr align 1 %i.qr, i64 %i.pm, i1 false)
  store ptr %i.qs, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.dd, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.qy = phi ptr [ %i.qs, %bb.dd ], [ %i.qr, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit32.loopexit274.unr-lcssa, label %..thread_crit_edge.i319.us, !llvm.loop !390

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018333 = phi i32 [ %i.rw, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.qz = xor i32 %.018333, -1
  %i.ra = add nsw i32 %i.mm, %i.qz
  %i.rb = select i1 %.not202.not, i32 %i.ra, i32 %.018333
  %i.rc = mul i32 %i.pk, %i.rb
  %i.rd = sext i32 %i.rc to i64
  %i.re = getelementptr inbounds i8, ptr %i.ov, i64 %i.rd ; 3 uses
  %i.rf = load ptr, ptr %i.ow, align 8, !tbaa !21 ; 2 uses
  %.not.i317 = icmp eq ptr %i.rf, null
  br i1 %.not.i317, label %..thread_crit_edge.i319, label %bb.de

..thread_crit_edge.i319:                          ; preds = %.lr.ph.split
  %.pre.i321 = load ptr, ptr %i.b, align 8, !tbaa !24
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %.thread.i318

bb.de:                                            ; preds = %.lr.ph.split
  %i.rg = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.rh = load ptr, ptr %i.b, align 8, !tbaa !24  ; 3 uses
  %i.ri = ptrtoint ptr %i.rg to i64
  %i.rj = ptrtoint ptr %i.rh to i64
  %i.rk = sub i64 %i.ri, %i.rj                    ; 2 uses
  %i.rl = trunc i64 %i.rk to i32                  ; 2 uses
  %i.rm = icmp sgt i32 %i.pk, %i.rl
  br i1 %i.rm, label %bb.df, label %.thread.i318

bb.df:                                            ; preds = %bb.de
  %sext.i = shl i64 %i.rk, 32
  %i.rn = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.re, ptr align 1 %i.rh, i64 %i.rn, i1 false)
  %i.ro = load ptr, ptr %i.pl, align 8, !tbaa !15
  %i.rp = getelementptr inbounds i8, ptr %i.re, i64 %i.rn
  %i.rq = sub nsw i32 %i.pk, %i.rl
  %i.rr = tail call noundef i32 %i.rf(ptr noundef %i.ro, ptr noundef nonnull %i.rp, i32 noundef %i.rq), !inline_history !373 ; 0 uses
  %i.rs = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i318:                                     ; preds = %bb.de, %..thread_crit_edge.i319
  %i.rt = phi ptr [ %.pre35.i, %..thread_crit_edge.i319 ], [ %i.rg, %bb.de ]
  %i.ru = phi ptr [ %.pre.i321, %..thread_crit_edge.i319 ], [ %i.rh, %bb.de ] ; 2 uses
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.pm ; 2 uses
  %.not32.i = icmp ugt ptr %i.rv, %i.rt
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.dg

bb.dg:                                            ; preds = %.thread.i318
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.re, ptr align 1 %i.ru, i64 %i.pm, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.dg, %bb.df
  %.sink245 = phi ptr [ %i.rs, %bb.df ], [ %i.rv, %bb.dg ]
  store ptr %.sink245, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i318
  %i.rw = add nuw nsw i32 %.018333, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.rw, %i.pp
  br i1 %exitcond.not, label %.loopexit32, label %.lr.ph.split, !llvm.loop !391

bb.dh:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.of, label %bb.di, label %.loopexit30

bb.di:                                            ; preds = %bb.dh
  %i.rx = load ptr, ptr %i.ow, align 8, !tbaa !21
  %.not.i322 = icmp eq ptr %i.rx, null
  br i1 %.not.i322, label %..thread_crit_edge.i324, label %bb.dj

..thread_crit_edge.i324:                          ; preds = %bb.di
  %.pre.i326 = load ptr, ptr %i.b, align 8, !tbaa !24
  br label %.thread.i323

bb.dj:                                            ; preds = %bb.di
  %i.ry = load ptr, ptr %i.d, align 8, !tbaa !25  ; 2 uses
  %i.rz = load ptr, ptr %i.b, align 8, !tbaa !24  ; 2 uses
  %i.sa = ptrtoint ptr %i.ry to i64
  %i.sb = ptrtoint ptr %i.rz to i64
  %i.sc = sub i64 %i.sa, %i.sb
  %i.sd = trunc i64 %i.sc to i32                  ; 2 uses
  %i.se = icmp sgt i32 %i.dl, %i.sd
  br i1 %i.se, label %bb.dk, label %.thread.i323

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.ry, ptr %i.b, align 8, !tbaa !24
  %i.sf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !106
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !15
  %i.sj = sub nsw i32 %i.dl, %i.sd
  tail call void %i.sg(ptr noundef %i.si, i32 noundef %i.sj), !inline_history !333
  br label %_ZL10stbi__skipP13stbi__contexti.exit327

.thread.i323:                                     ; preds = %bb.dj, %..thread_crit_edge.i324
  %i.sk = phi ptr [ %.pre.i326, %..thread_crit_edge.i324 ], [ %i.rz, %bb.dj ]
  %i.sl = zext nneg i32 %i.dl to i64
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sk, i64 %i.sl
  store ptr %i.sm, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__skipP13stbi__contexti.exit327

_ZL10stbi__skipP13stbi__contexti.exit327:         ; preds = %bb.dk, %.thread.i323
  %i.sn = mul nuw nsw i32 %i.ff, %.0189.ph        ; 2 uses
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.so) #34 ; 7 uses
  %.not203 = icmp eq ptr %i.sp, null
  br i1 %.not203, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.dl

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit327
  tail call void @free(ptr noundef nonnull %i.ov) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %bb.fd

bb.dl:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit327
  br i1 %.not204, label %bb.dn, label %.preheader29

.preheader29:                                     ; preds = %bb.dl
  %.not58 = icmp eq i32 %i.ff, 0
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %.0.i340 = phi i8 [ %i.uc, %bb.ea ], [ %i.ul, %_ZL19stbi__refill_bufferP13stbi__context.exit.i338 ], [ 0, %bb.eb ]
  %i.um = zext i8 %.0.i340 to i32
  br label %.loopexit26.loopexit

bb.ef:                                            ; preds = %bb.dy
  br i1 %i.ua, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.un = getelementptr inbounds nuw i8, ptr %i.ty, i64 1 ; 2 uses
  store ptr %i.un, ptr %i.b, align 8, !tbaa !24
  %i.uo = load i8, ptr %i.ty, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i346

bb.eh:                                            ; preds = %bb.ef
  %i.up = load i32, ptr %i.sv, align 8, !tbaa !19
  %.not.i.i342 = icmp eq i32 %i.up, 0
  br i1 %.not.i.i342, label %_ZL10stbi__get8P13stbi__context.exit.i346, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.uq = load ptr, ptr %i.ow, align 8, !tbaa !21
  %i.ur = load ptr, ptr %i.sw, align 8, !tbaa !15
  %i.us = load i32, ptr %i.sy, align 4, !tbaa !18
  %i.ut = tail call noundef i32 %i.uq(ptr noundef %i.ur, ptr noundef nonnull %i.sx, i32 noundef %i.us), !inline_history !389 ; 2 uses
  %i.uu = icmp eq i32 %i.ut, 0
  br i1 %i.uu, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.sv, align 8, !tbaa !19
  store i8 0, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344

bb.ek:                                            ; preds = %bb.ei
  %i.uv = sext i32 %i.ut to i64
  %i.uw = getelementptr inbounds i8, ptr %i.sx, i64 %i.uv
  %.pre.i.i343 = load i8, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344: ; preds = %bb.ek, %bb.ej
  %i.ux = phi i8 [ 0, %bb.ej ], [ %.pre.i.i343, %bb.ek ]
  %.sink.i.i.i345 = phi ptr [ %i.sz, %bb.ej ], [ %i.uw, %bb.ek ] ; 2 uses
  store ptr %.sink.i.i.i345, ptr %i.d, align 8, !tbaa !25
  store ptr %i.sz, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit.i346

_ZL10stbi__get8P13stbi__context.exit.i346:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344, %bb.eh, %bb.eg
  %i.uy = phi ptr [ %i.tz, %bb.eg ], [ %.sink.i.i.i345, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ %i.tz, %bb.eh ]
  %i.uz = phi ptr [ %i.un, %bb.eg ], [ %i.sz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ %i.ty, %bb.eh ] ; 3 uses
  %.0.i.i347 = phi i8 [ %i.uo, %bb.eg ], [ %i.ux, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ 0, %bb.eh ]
  %i.va = icmp ult ptr %i.uz, %i.uy
  br i1 %i.va, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i346
  %i.vb = getelementptr inbounds nuw i8, ptr %i.uz, i64 1
  store ptr %i.vb, ptr %i.b, align 8, !tbaa !24
  %i.vc = load i8, ptr %i.uz, align 1, !tbaa !23
  br label %_ZL13stbi__get16leP13stbi__context.exit353

bb.em:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i346
  %i.vd = load i32, ptr %i.sv, align 8, !tbaa !19
  %.not.i2.i348 = icmp eq i32 %i.vd, 0
  br i1 %.not.i2.i348, label %_ZL13stbi__get16leP13stbi__context.exit353, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.ve = load ptr, ptr %i.ow, align 8, !tbaa !21
  %i.vf = load ptr, ptr %i.sw, align 8, !tbaa !15
  %i.vg = load i32, ptr %i.sy, align 4, !tbaa !18
  %i.vh = tail call noundef i32 %i.ve(ptr noundef %i.vf, ptr noundef nonnull %i.sx, i32 noundef %i.vg), !inline_history !389 ; 2 uses
  %i.vi = icmp eq i32 %i.vh, 0
  br i1 %i.vi, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.sv, align 8, !tbaa !19
  store i8 0, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350

bb.ep:                                            ; preds = %bb.en
  %i.vj = sext i32 %i.vh to i64
  %i.vk = getelementptr inbounds i8, ptr %i.sx, i64 %i.vj
  %.pre.i3.i349 = load i8, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350: ; preds = %bb.ep, %bb.eo
  %i.vl = phi i8 [ 0, %bb.eo ], [ %.pre.i3.i349, %bb.ep ]
  %.sink.i.i5.i351 = phi ptr [ %i.sz, %bb.eo ], [ %i.vk, %bb.ep ]
  store ptr %.sink.i.i5.i351, ptr %i.d, align 8, !tbaa !25
  store ptr %i.sz, ptr %i.b, align 8, !tbaa !24
  br label %_ZL13stbi__get16leP13stbi__context.exit353

_ZL13stbi__get16leP13stbi__context.exit353:       ; preds = %bb.el, %bb.em, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350
  %.0.i6.i352 = phi i8 [ %i.vc, %bb.el ], [ %i.vl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350 ], [ 0, %bb.em ]
  %i.vm = zext i8 %.0.i.i347 to i32
  %i.vn = zext i8 %.0.i6.i352 to i32
  %i.vo = shl nuw nsw i32 %i.vn, 8
  %i.vp = or disjoint i32 %i.vo, %i.vm
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %_ZL13stbi__get16leP13stbi__context.exit353, %_ZL10stbi__get8P13stbi__context.exit341
  %i.vq = phi i32 [ %i.um, %_ZL10stbi__get8P13stbi__context.exit341 ], [ %i.vp, %_ZL13stbi__get16leP13stbi__context.exit353 ] ; 2 uses
  %.not213 = icmp samesign ult i32 %i.vq, %i.ff
  %spec.store.select = select i1 %.not213, i32 %i.vq, i32 0
  %i.vr = zext nneg i32 %spec.store.select to i64
  %i.vs = mul nuw nsw i64 %i.tb, %i.vr
  %scevgep = getelementptr nuw i8, ptr %.0187, i64 %i.vs
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %scevgep, i64 %i.tb, i1 false), !tbaa !23
  br label %.loopexit26

bb.eq:                                            ; preds = %.thread
  br i1 %.not204, label %.preheader27.preheader, label %bb.er

.preheader27.preheader:                           ; preds = %bb.eq
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !24
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !25
  br label %.preheader27

bb.er:                                            ; preds = %bb.eq
  call fastcc void @_ZL20stbi__tga_read_rgb16P13stbi__contextPh(ptr noundef %0, ptr noundef %i.a)
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit359
  %i.vt = phi ptr [ %.pre106, %.preheader27.preheader ], [ %i.wh, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 3 uses
  %i.vu = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.wi, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 4 uses
  %indvars.iv73 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next74, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 2 uses
  %i.vv = icmp ult ptr %i.vu, %i.vt
  br i1 %i.vv, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.preheader27
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 1 ; 2 uses
  store ptr %i.vw, ptr %i.b, align 8, !tbaa !24
  %i.vx = load i8, ptr %i.vu, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit359

bb.et:                                            ; preds = %.preheader27
  %i.vy = load i32, ptr %i.sv, align 8, !tbaa !19
  %.not.i354 = icmp eq i32 %i.vy, 0
  br i1 %.not.i354, label %_ZL10stbi__get8P13stbi__context.exit359, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.vz = load ptr, ptr %i.ow, align 8, !tbaa !21
  %i.wa = load ptr, ptr %i.sw, align 8, !tbaa !15
  %i.wb = load i32, ptr %i.sy, align 4, !tbaa !18
  %i.wc = tail call noundef i32 %i.vz(ptr noundef %i.wa, ptr noundef nonnull %i.sx, i32 noundef %i.wb), !inline_history !346 ; 2 uses
  %i.wd = icmp eq i32 %i.wc, 0
  br i1 %i.wd, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.sv, align 8, !tbaa !19
  store i8 0, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i356

bb.ew:                                            ; preds = %bb.eu
  %i.we = sext i32 %i.wc to i64
  %i.wf = getelementptr inbounds i8, ptr %i.sx, i64 %i.we
  %.pre.i355 = load i8, ptr %i.sx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i356

_ZL19stbi__refill_bufferP13stbi__context.exit.i356: ; preds = %bb.ew, %bb.ev
  %i.wg = phi i8 [ 0, %bb.ev ], [ %.pre.i355, %bb.ew ]
  %.sink.i.i357 = phi ptr [ %i.sz, %bb.ev ], [ %i.wf, %bb.ew ] ; 2 uses
  store ptr %.sink.i.i357, ptr %i.d, align 8, !tbaa !25
  store ptr %i.sz, ptr %i.b, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit359

_ZL10stbi__get8P13stbi__context.exit359:          ; preds = %bb.es, %bb.et, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356
  %i.wh = phi ptr [ %i.vt, %bb.es ], [ %.sink.i.i357, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ %i.vt, %bb.et ]
  %i.wi = phi ptr [ %i.vw, %bb.es ], [ %i.sz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ %i.vu, %bb.et ]
  %.0.i358 = phi i8 [ %i.vx, %bb.es ], [ %i.wg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ 0, %bb.et ]
  %i.wj = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv73
  store i8 %.0.i358, ptr %i.wj, align 1, !tbaa !23
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %.loopexit26, label %.preheader27, !llvm.loop !393

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit359, %.loopexit26.loopexit, %bb.dx, %bb.er
  %.117723 = phi i32 [ %.117722, %.loopexit26.loopexit ], [ %.117722, %bb.er ], [ 1, %bb.dx ], [ %.117722, %_ZL10stbi__get8P13stbi__context.exit359 ]
  %.117921 = phi i32 [ %.117920, %.loopexit26.loopexit ], [ %.117920, %bb.er ], [ %.017841, %bb.dx ], [ %.117920, %_ZL10stbi__get8P13stbi__context.exit359 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %scevgep82, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.tb, i1 false), !tbaa !23
  %i.wk = add nsw i32 %.117921, -1
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge, label %bb.dp, !llvm.loop !394

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not206.not = icmp eq i8 %i.oe, 0
  %i.wl = icmp ne i32 %i.mm, 0
  %or.cond56 = select i1 %.not206.not, i1 %i.wl, i1 false
  br i1 %or.cond56, label %.lr.ph52, label %.loopexit25

.lr.ph52:                                         ; preds = %._crit_edge
  %i.wm = mul nuw nsw i32 %i.ks, %.0189.ph        ; 4 uses
  %.not60 = icmp eq i32 %i.ks, 0
  br i1 %.not60, label %.loopexit25, label %.lr.ph49.preheader

.lr.ph49.preheader:                               ; preds = %.lr.ph52
  %i.wn = or disjoint i32 %i.ml, %i.mj
  %i.wo = add nsw i32 %i.wn, -1                   ; 2 uses
  %i.wp = or disjoint i32 %i.kr, %i.kp            ; 2 uses
  %i.wq = mul i32 %i.wo, %i.wp
  %i.wr = mul i32 %i.wq, %.0189.ph
  %i.ws = mul nuw nsw i32 %i.wp, %.0189.ph        ; 2 uses
  %i.wt = lshr i32 %i.wo, 1
  %i.wu = or disjoint i32 %i.kr, %i.kp            ; 3 uses
  %i.wv = mul nuw nsw i32 %i.wu, %.0189.ph        ; 3 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %i.wv, i32 1)
  %i.ww = sub nsw i32 %i.wv, %smin
  %narrow = add nuw nsw i32 %i.ww, 1
  %i.wx = zext nneg i32 %narrow to i64            ; 2 uses
  %scevgep251 = getelementptr i8, ptr %i.ov, i64 %i.wx
  %i.wy = or disjoint i32 %i.ml, %i.mj
  %i.wz = add nsw i32 %i.wy, -1
  %i.xa = mul i32 %i.wz, %i.wu
  %i.xb = mul i32 %i.xa, %.0189.ph
  %i.xc = mul nuw nsw i32 %i.wu, %.0189.ph
  %scevgep254 = getelementptr i8, ptr %i.ov, i64 %i.wx
  %i.xd = or disjoint i32 %i.kr, %i.kp
  %i.xe = mul nuw nsw i32 %i.xd, %.0189.ph        ; 2 uses
  %smin256 = tail call i32 @llvm.smin.i32(i32 %i.xe, i32 1)
  %i.xf = sub nsw i32 %i.xe, %smin256             ; 3 uses
  %narrow272 = add nuw nsw i32 %i.xf, 1
  %i.xg = zext nneg i32 %narrow272 to i64         ; 5 uses
  %min.iters.check = icmp ult i32 %i.xf, 7
  %min.iters.check257 = icmp ult i32 %i.xf, 31
  %i.xh = and i64 %i.xg, 24
  %n.vec = and i64 %i.xg, 2147483616              ; 6 uses
  %i.xi = trunc nuw nsw i64 %n.vec to i32
  %i.xj = sub nsw i32 %i.wm, %i.xi
  %cmp.n = icmp eq i64 %n.vec, %i.xg
  %min.epilog.iters.check = icmp eq i64 %i.xh, 0
  %n.vec263 = and i64 %i.xg, 2147483640           ; 5 uses
  %i.xk = trunc nuw nsw i64 %n.vec263 to i32
  %i.xl = sub nsw i32 %i.wm, %i.xk
  %cmp.n268 = icmp eq i64 %n.vec263, %i.xg
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph49.preheader, %._crit_edge50
  %indvars.iv97 = phi i32 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next98, %._crit_edge50 ] ; 2 uses
  %indvars.iv93 = phi i32 [ %i.wr, %.lr.ph49.preheader ], [ %indvars.iv.next94, %._crit_edge50 ] ; 2 uses
  %.351 = phi i32 [ 0, %.lr.ph49.preheader ], [ %i.yh, %._crit_edge50 ] ; 4 uses
  %i.xm = sext i32 %indvars.iv93 to i64           ; 6 uses
  %i.xn = zext i32 %indvars.iv97 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.xo = mul i32 %i.xc, %.351
  %i.xp = sub i32 %i.xb, %i.xo
  %i.xq = sext i32 %i.xp to i64                   ; 2 uses
  %scevgep255 = getelementptr i8, ptr %scevgep254, i64 %i.xq
  %scevgep253 = getelementptr i8, ptr %i.ov, i64 %i.xq
  %i.xr = mul i32 %i.wv, %.351
  %i.xs = zext i32 %i.xr to i64                   ; 2 uses
  %scevgep252 = getelementptr i8, ptr %scevgep251, i64 %i.xs
  %scevgep250 = getelementptr nuw i8, ptr %i.ov, i64 %i.xs
  %bound0 = icmp ult ptr %scevgep250, %scevgep255
  %bound1 = icmp ult ptr %scevgep253, %scevgep252
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xt = add nuw nsw i64 %n.vec, %i.xn
  %i.xu = add nsw i64 %n.vec, %i.xm
  %invariant.gep = getelementptr i8, ptr %i.ov, i64 %i.xn
  %invariant.gep291 = getelementptr i8, ptr %i.ov, i64 %i.xm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  %wide.load258 = load <16 x i8>, ptr %i.xv, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  %gep292 = getelementptr i8, ptr %invariant.gep291, i64 %index ; 3 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %gep292, i64 16 ; 2 uses
  %wide.load259 = load <16 x i8>, ptr %gep292, align 1, !tbaa !23, !alias.scope !398
  %wide.load260 = load <16 x i8>, ptr %i.xw, align 1, !tbaa !23, !alias.scope !398
  store <16 x i8> %wide.load259, ptr %gep, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  store <16 x i8> %wide.load260, ptr %i.xv, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  store <16 x i8> %wide.load, ptr %gep292, align 1, !tbaa !23, !alias.scope !398
  store <16 x i8> %wide.load258, ptr %i.xw, align 1, !tbaa !23, !alias.scope !398
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xx = icmp eq i64 %index.next, %n.vec
  br i1 %i.xx, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !163

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.xy = add nuw nsw i64 %n.vec263, %i.xn
  %i.xz = add nsw i64 %n.vec263, %i.xm
  %invariant.gep293 = getelementptr i8, ptr %i.ov, i64 %i.xn
  %invariant.gep295 = getelementptr i8, ptr %i.ov, i64 %i.xm
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 3 uses
  %gep294 = getelementptr i8, ptr %invariant.gep293, i64 %index264 ; 2 uses
  %wide.load265 = load <8 x i8>, ptr %gep294, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  %gep296 = getelementptr i8, ptr %invariant.gep295, i64 %index264 ; 2 uses
  %wide.load266 = load <8 x i8>, ptr %gep296, align 1, !tbaa !23, !alias.scope !398
  store <8 x i8> %wide.load266, ptr %gep294, align 1, !tbaa !23, !alias.scope !395, !noalias !398
  store <8 x i8> %wide.load265, ptr %gep296, align 1, !tbaa !23, !alias.scope !398
  %index.next267 = add nuw i64 %index264, 8       ; 2 uses
  %i.ya = icmp eq i64 %index.next267, %n.vec263
  br i1 %i.ya, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !401

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n268, label %._crit_edge50, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv99.ph = phi i64 [ %i.xn, %iter.check ], [ %i.xn, %vector.memcheck ], [ %i.xt, %vec.epilog.iter.check ], [ %i.xy, %vec.epilog.middle.block ]
  %indvars.iv95.ph = phi i64 [ %i.xm, %iter.check ], [ %i.xm, %vector.memcheck ], [ %i.xu, %vec.epilog.iter.check ], [ %i.xz, %vec.epilog.middle.block ]
  %.318645.ph = phi i32 [ %i.wm, %iter.check ], [ %i.wm, %vector.memcheck ], [ %i.xj, %vec.epilog.iter.check ], [ %i.xl, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %vec.epilog.scalar.ph ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %vec.epilog.scalar.ph ], [ %indvars.iv95.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.318645 = phi i32 [ %i.yf, %vec.epilog.scalar.ph ], [ %.318645.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ov, i64 %indvars.iv99 ; 2 uses
  %i.yc = load i8, ptr %i.yb, align 1, !tbaa !23
  %i.yd = getelementptr inbounds i8, ptr %i.ov, i64 %indvars.iv95 ; 2 uses
  %i.ye = load i8, ptr %i.yd, align 1, !tbaa !23
  store i8 %i.ye, ptr %i.yb, align 1, !tbaa !23
  store i8 %i.yc, ptr %i.yd, align 1, !tbaa !23
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %i.yf = add nsw i32 %.318645, -1
  %i.yg = icmp sgt i32 %.318645, 1
  br i1 %i.yg, label %vec.epilog.scalar.ph, label %._crit_edge50, !llvm.loop !402

._crit_edge50:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.yh = add nuw nsw i32 %.351, 1
  %indvars.iv.next94 = sub i32 %indvars.iv93, %i.ws
  %indvars.iv.next98 = add i32 %indvars.iv97, %i.ws
  %exitcond104.not = icmp eq i32 %.351, %i.wt
  br i1 %exitcond104.not, label %.loopexit25, label %iter.check, !llvm.loop !403

.loopexit25:                                      ; preds = %._crit_edge50, %.lr.ph52, %._crit_edge
  %.not207 = icmp eq ptr %.0187, null
  br i1 %.not207, label %.loopexit32, label %bb.ex

bb.ex:                                            ; preds = %.loopexit25
  tail call void @free(ptr noundef nonnull %.0187) #33
  br label %.loopexit32

.loopexit32.loopexit.unr-lcssa:                   ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1
  %lcmp.mod280.not = icmp eq i64 %xtraiter277, 0
  br i1 %lcmp.mod280.not, label %.loopexit32, label %..thread_crit_edge.i319.us.us.epil.preheader

..thread_crit_edge.i319.us.us.epil.preheader:     ; preds = %.loopexit32.loopexit.unr-lcssa, %..thread_crit_edge.i319.us.us.preheader
  %indvars.iv67.epil.init = phi i64 [ 0, %..thread_crit_edge.i319.us.us.preheader ], [ %indvars.iv.next68.1, %.loopexit32.loopexit.unr-lcssa ]
  %.epil.init279 = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.us.preheader ], [ %i.qk, %.loopexit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod281 = trunc i8 %.0.i.i288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.yi = getelementptr inbounds nuw i8, ptr %.epil.init279, i64 %i.pm ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.yi, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit32, label %bb.ey

bb.ey:                                            ; preds = %..thread_crit_edge.i319.us.us.epil.preheader
  %i.yj = trunc i64 %indvars.iv67.epil.init to i32
  %i.yk = xor i32 %i.yj, -1
  %i.yl = add i32 %i.mm, %i.yk
  %i.ym = mul i32 %i.pk, %i.yl
  %i.yn = sext i32 %i.ym to i64
  %i.yo = getelementptr inbounds i8, ptr %i.ov, i64 %i.yn
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yo, ptr align 1 %.epil.init279, i64 %i.pm, i1 false)
  store ptr %i.yi, ptr %i.b, align 8, !tbaa !24
  br label %.loopexit32

.loopexit32.loopexit274.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32, label %..thread_crit_edge.i319.us.epil.preheader

..thread_crit_edge.i319.us.epil.preheader:        ; preds = %.loopexit32.loopexit274.unr-lcssa, %..thread_crit_edge.i319.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader ], [ %indvars.iv.next.1, %.loopexit32.loopexit274.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.preheader ], [ %i.qy, %.loopexit32.loopexit274.unr-lcssa ] ; 2 uses
  %lcmp.mod276 = trunc i8 %.0.i.i288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.yp = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.pm ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.yp, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit32, label %bb.ez

bb.ez:                                            ; preds = %..thread_crit_edge.i319.us.epil.preheader
  %i.yq = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.yr = mul i32 %i.pk, %i.yq
  %i.ys = sext i32 %i.yr to i64
  %i.yt = getelementptr inbounds i8, ptr %i.ov, i64 %i.ys
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yt, ptr align 1 %.epil.init, i64 %i.pm, i1 false)
  store ptr %i.yp, ptr %i.b, align 8, !tbaa !24
  br label %.loopexit32

.loopexit32:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit32.loopexit274.unr-lcssa, %bb.ez, %..thread_crit_edge.i319.us.epil.preheader, %.loopexit32.loopexit.unr-lcssa, %bb.ey, %..thread_crit_edge.i319.us.us.epil.preheader, %.preheader31, %.loopexit25, %bb.ex
  %i.yu = icmp samesign ult i8 %.0189.ph.shrunk, 3
  %.not61 = icmp eq i32 %i.os, 0
  %i.yv = or i1 %i.yu, %.not61
  %or.cond246 = or i1 %i.yv, %i.ok
  br i1 %or.cond246, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.loopexit32
  %i.yw = zext nneg i8 %.0189.ph.shrunk to i64    ; 5 uses
  %i.yx = add i32 %i.os, -1
  %xtraiter284 = and i32 %i.os, 3                 ; 3 uses
  %i.yy = icmp ult i32 %i.yx, 3
  br i1 %i.yy, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter287 = and i32 %i.os, -4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.lr.ph55.new
  %.017054 = phi ptr [ %i.ov, %.lr.ph55.new ], [ %i.zo, %bb.fa ] ; 4 uses
  %niter288 = phi i32 [ 0, %.lr.ph55.new ], [ %niter288.next.3, %bb.fa ]
  %i.yz = load i8, ptr %.017054, align 1, !tbaa !23
  %i.za = getelementptr inbounds nuw i8, ptr %.017054, i64 2 ; 2 uses
  %i.zb = load i8, ptr %i.za, align 1, !tbaa !23
  store i8 %i.zb, ptr %.017054, align 1, !tbaa !23
  store i8 %i.yz, ptr %i.za, align 1, !tbaa !23
  %i.zc = getelementptr inbounds nuw i8, ptr %.017054, i64 %i.yw ; 4 uses
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !23
  %i.ze = getelementptr inbounds nuw i8, ptr %i.zc, i64 2 ; 2 uses
  %i.zf = load i8, ptr %i.ze, align 1, !tbaa !23
  store i8 %i.zf, ptr %i.zc, align 1, !tbaa !23
  store i8 %i.zd, ptr %i.ze, align 1, !tbaa !23
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zc, i64 %i.yw ; 4 uses
  %i.zh = load i8, ptr %i.zg, align 1, !tbaa !23
  %i.zi = getelementptr inbounds nuw i8, ptr %i.zg, i64 2 ; 2 uses
  %i.zj = load i8, ptr %i.zi, align 1, !tbaa !23
  store i8 %i.zj, ptr %i.zg, align 1, !tbaa !23
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !23
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zg, i64 %i.yw ; 4 uses
  %i.zl = load i8, ptr %i.zk, align 1, !tbaa !23
  %i.zm = getelementptr inbounds nuw i8, ptr %i.zk, i64 2 ; 2 uses
  %i.zn = load i8, ptr %i.zm, align 1, !tbaa !23
  store i8 %i.zn, ptr %i.zk, align 1, !tbaa !23
  store i8 %i.zl, ptr %i.zm, align 1, !tbaa !23
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zk, i64 %i.yw ; 2 uses
  %niter288.next.3 = add i32 %niter288, 4         ; 2 uses
  %niter288.ncmp.3 = icmp eq i32 %niter288.next.3, %unroll_iter287
  br i1 %niter288.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.fa, !llvm.loop !404

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.fa
  %lcmp.mod285.not = icmp eq i32 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.loopexit, label %.epil.preheader
end_hunk_1
begin_hunk_2_@_ZL20stbi__process_markerP10stbi__jpegi:bb.a
  %.sink.i.i.i187 = phi ptr [ %i.jz, %bb.bl ], [ %i.kb, %bb.bm ] ; 2 uses
  store ptr %.sink.i.i.i187, ptr %i.jj, align 8, !tbaa !25
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jg, i64 57 ; 2 uses
  store ptr %i.kd, ptr %i.jh, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit.i188

_ZL10stbi__get8P13stbi__context.exit.i188:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i186, %bb.bj, %bb.bi
  %i.ke = phi ptr [ %i.jk, %bb.bi ], [ %.sink.i.i.i187, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i186 ], [ %i.jk, %bb.bj ]
  %i.kf = phi ptr [ %i.jm, %bb.bi ], [ %i.kd, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i186 ], [ %i.ji, %bb.bj ] ; 3 uses
  %.0.i.i189 = phi i8 [ %i.jn, %bb.bi ], [ %i.kc, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i186 ], [ 0, %bb.bj ]
  %i.kg = icmp ult ptr %i.kf, %i.ke
  br i1 %i.kg, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i188
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 1
  store ptr %i.kh, ptr %i.jh, align 8, !tbaa !24
  %i.ki = load i8, ptr %i.kf, align 1, !tbaa !23
  br label %_ZL13stbi__get16beP13stbi__context.exit195

bb.bo:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i188
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jg, i64 48 ; 2 uses
  %i.kk = load i32, ptr %i.kj, align 8, !tbaa !19
  %.not.i2.i190 = icmp eq i32 %i.kk, 0
  br i1 %.not.i2.i190, label %_ZL13stbi__get16beP13stbi__context.exit195, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !21
  %i.kn = getelementptr inbounds nuw i8, ptr %i.jg, i64 40
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !15
  %i.kp = getelementptr inbounds nuw i8, ptr %i.jg, i64 56 ; 4 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jg, i64 52
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !18
  %i.ks = tail call noundef i32 %i.km(ptr noundef %i.ko, ptr noundef nonnull %i.kp, i32 noundef %i.kr), !inline_history !332 ; 2 uses
  %i.kt = icmp eq i32 %i.ks, 0
  br i1 %i.kt, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  store i32 0, ptr %i.kj, align 8, !tbaa !19
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jg, i64 57
  store i8 0, ptr %i.kp, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i192

bb.br:                                            ; preds = %bb.bp
  %i.kv = sext i32 %i.ks to i64
  %i.kw = getelementptr inbounds i8, ptr %i.kp, i64 %i.kv
  %.pre.i3.i191 = load i8, ptr %i.kp, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i192

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i192: ; preds = %bb.br, %bb.bq
  %i.kx = phi i8 [ 0, %bb.bq ], [ %.pre.i3.i191, %bb.br ]
  %.sink.i.i5.i193 = phi ptr [ %i.ku, %bb.bq ], [ %i.kw, %bb.br ]
  store ptr %.sink.i.i5.i193, ptr %i.jj, align 8, !tbaa !25
  %i.ky = getelementptr inbounds nuw i8, ptr %i.jg, i64 57
  store ptr %i.ky, ptr %i.jh, align 8, !tbaa !24
  br label %_ZL13stbi__get16beP13stbi__context.exit195

_ZL13stbi__get16beP13stbi__context.exit195:       ; preds = %bb.bn, %bb.bo, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i192
  %.0.i6.i194 = phi i8 [ %i.ki, %bb.bn ], [ %i.kx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i192 ], [ 0, %bb.bo ]
  %i.kz = zext i8 %.0.i.i189 to i32
  %i.la = shl nuw nsw i32 %i.kz, 8
  %i.lb = zext i8 %.0.i6.i194 to i32
  %i.lc = add nsw i32 %i.la, -2
  %i.ld = add nsw i32 %i.lc, %i.lb                ; 3 uses
  %i.le = icmp sgt i32 %i.ld, 0
  br i1 %i.le, label %.lr.ph259, label %._crit_edge260

.lr.ph259:                                        ; preds = %_ZL13stbi__get16beP13stbi__context.exit195
  %i.lf = getelementptr inbounds nuw i8, ptr %0, i64 6728 ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 13960
  br label %bb.bs

bb.bs:                                            ; preds = %.lr.ph259, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit
  %.2258 = phi i32 [ %i.ld, %.lr.ph259 ], [ %i.qa, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.li = load ptr, ptr %0, align 8, !tbaa !94    ; 9 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 184 ; 3 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !24 ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %i.li, i64 192 ; 2 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !25
  %i.ln = icmp ult ptr %i.lk, %i.lm
  br i1 %i.ln, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.lo = getelementptr inbounds nuw i8, ptr %i.lk, i64 1
  store ptr %i.lo, ptr %i.lj, align 8, !tbaa !24
  %i.lp = load i8, ptr %i.lk, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit201

bb.bu:                                            ; preds = %bb.bs
  %i.lq = getelementptr inbounds nuw i8, ptr %i.li, i64 48 ; 2 uses
  %i.lr = load i32, ptr %i.lq, align 8, !tbaa !19
  %.not.i196 = icmp eq i32 %i.lr, 0
  br i1 %.not.i196, label %_ZL10stbi__get8P13stbi__context.exit201, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ls = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  %i.lt = load ptr, ptr %i.ls, align 8, !tbaa !21
  %i.lu = getelementptr inbounds nuw i8, ptr %i.li, i64 40
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !15
  %i.lw = getelementptr inbounds nuw i8, ptr %i.li, i64 56 ; 4 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.li, i64 52
  %i.ly = load i32, ptr %i.lx, align 4, !tbaa !18
  %i.lz = tail call noundef i32 %i.lt(ptr noundef %i.lv, ptr noundef nonnull %i.lw, i32 noundef %i.ly), !inline_history !346 ; 2 uses
  %i.ma = icmp eq i32 %i.lz, 0
  br i1 %i.ma, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.lq, align 8, !tbaa !19
  %i.mb = getelementptr inbounds nuw i8, ptr %i.li, i64 57
  store i8 0, ptr %i.lw, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i198

bb.bx:                                            ; preds = %bb.bv
  %i.mc = sext i32 %i.lz to i64
  %i.md = getelementptr inbounds i8, ptr %i.lw, i64 %i.mc
  %.pre.i197 = load i8, ptr %i.lw, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i198

_ZL19stbi__refill_bufferP13stbi__context.exit.i198: ; preds = %bb.bx, %bb.bw
  %i.me = phi i8 [ 0, %bb.bw ], [ %.pre.i197, %bb.bx ]
  %.sink.i.i199 = phi ptr [ %i.mb, %bb.bw ], [ %i.md, %bb.bx ]
  store ptr %.sink.i.i199, ptr %i.ll, align 8, !tbaa !25
  %i.mf = getelementptr inbounds nuw i8, ptr %i.li, i64 57
  store ptr %i.mf, ptr %i.lj, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit201

_ZL10stbi__get8P13stbi__context.exit201:          ; preds = %bb.bt, %bb.bu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i198
  %.0.i200 = phi i8 [ %i.lp, %bb.bt ], [ %i.me, %_ZL19stbi__refill_bufferP13stbi__context.exit.i198 ], [ 0, %bb.bu ] ; 3 uses
  %i.mg = and i8 %.0.i200, 15                     ; 3 uses
  %i.mh = icmp ugt i8 %.0.i200, 31
  %i.mi = icmp samesign ugt i8 %i.mg, 3
  %or.cond4 = select i1 %i.mh, i1 true, i1 %i.mi
  br i1 %or.cond4, label %bb.by, label %.preheader250

bb.by:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit201
  store ptr @.str.13, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !9
  br label %.critedge140

.preheader250:                                    ; preds = %_ZL10stbi__get8P13stbi__context.exit201, %_ZL10stbi__get8P13stbi__context.exit207
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL10stbi__get8P13stbi__context.exit207 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit201 ] ; 2 uses
  %.0111256 = phi i32 [ %i.nj, %_ZL10stbi__get8P13stbi__context.exit207 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit201 ]
  %i.mj = load ptr, ptr %0, align 8, !tbaa !94    ; 9 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 184 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !24 ; 3 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mj, i64 192 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !25
  %i.mo = icmp ult ptr %i.ml, %i.mn
  br i1 %i.mo, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.preheader250
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 1
  store ptr %i.mp, ptr %i.mk, align 8, !tbaa !24
  %i.mq = load i8, ptr %i.ml, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit207

bb.ca:                                            ; preds = %.preheader250
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mj, i64 48 ; 2 uses
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !19
  %.not.i202 = icmp eq i32 %i.ms, 0
  br i1 %.not.i202, label %_ZL10stbi__get8P13stbi__context.exit207, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.mt = getelementptr inbounds nuw i8, ptr %i.mj, i64 16
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !21
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mj, i64 40
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !15
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mj, i64 56 ; 4 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mj, i64 52
  %i.mz = load i32, ptr %i.my, align 4, !tbaa !18
  %i.na = tail call noundef i32 %i.mu(ptr noundef %i.mw, ptr noundef nonnull %i.mx, i32 noundef %i.mz), !inline_history !346 ; 2 uses
  %i.nb = icmp eq i32 %i.na, 0
  br i1 %i.nb, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  store i32 0, ptr %i.mr, align 8, !tbaa !19
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mj, i64 57
  store i8 0, ptr %i.mx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i204

bb.cd:                                            ; preds = %bb.cb
  %i.nd = sext i32 %i.na to i64
  %i.ne = getelementptr inbounds i8, ptr %i.mx, i64 %i.nd
  %.pre.i203 = load i8, ptr %i.mx, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i204

_ZL19stbi__refill_bufferP13stbi__context.exit.i204: ; preds = %bb.cd, %bb.cc
  %i.nf = phi i8 [ 0, %bb.cc ], [ %.pre.i203, %bb.cd ]
  %.sink.i.i205 = phi ptr [ %i.nc, %bb.cc ], [ %i.ne, %bb.cd ]
  store ptr %.sink.i.i205, ptr %i.mm, align 8, !tbaa !25
  %i.ng = getelementptr inbounds nuw i8, ptr %i.mj, i64 57
  store ptr %i.ng, ptr %i.mk, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit207

_ZL10stbi__get8P13stbi__context.exit207:          ; preds = %bb.bz, %bb.ca, %_ZL19stbi__refill_bufferP13stbi__context.exit.i204
  %.0.i206 = phi i8 [ %i.mq, %bb.bz ], [ %i.nf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i204 ], [ 0, %bb.ca ]
  %i.nh = zext i8 %.0.i206 to i32                 ; 2 uses
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.nh, ptr %i.ni, align 4, !tbaa !12
  %i.nj = add i32 %.0111256, %i.nh                ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.ce, label %.preheader250, !llvm.loop !424

bb.ce:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit207
  %i.nk = add nsw i32 %.2258, -17
  %i.nl = icmp ult i8 %.0.i200, 16                ; 2 uses
  %i.nm = zext nneg i8 %i.mg to i64               ; 3 uses
  br i1 %i.nl, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.nn = getelementptr inbounds nuw [1680 x i8], ptr %i.lg, i64 %i.nm
  %i.no = call fastcc noundef i32 @_ZL19stbi__build_huffmanP13stbi__huffmanPi(ptr noundef nonnull %i.nn, ptr noundef %i.a)
  %.not131 = icmp eq i32 %i.no, 0
  br i1 %.not131, label %.critedge140, label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  %i.np = getelementptr inbounds nuw [1680 x i8], ptr %i.lf, i64 %i.nm
  %i.nq = call fastcc noundef i32 @_ZL19stbi__build_huffmanP13stbi__huffmanPi(ptr noundef nonnull %i.np, ptr noundef %i.a)
  %.not = icmp eq i32 %i.nq, 0
  br i1 %.not, label %.critedge140, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %i.nr = phi i64 [ 8, %bb.cf ], [ 6728, %bb.cg ]
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 %i.nr
  %i.nt = getelementptr inbounds nuw [1680 x i8], ptr %i.ns, i64 %i.nm
  %.0114 = getelementptr inbounds nuw i8, ptr %i.nt, i64 1024
  %.not270 = icmp eq i32 %i.nj, 0
  br i1 %.not270, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.ch
  %wide.trip.count = zext i32 %i.nj to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL10stbi__get8P13stbi__context.exit213
  %indvars.iv275 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next276, %_ZL10stbi__get8P13stbi__context.exit213 ] ; 2 uses
  %i.nu = load ptr, ptr %0, align 8, !tbaa !94    ; 9 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %i.nu, i64 184 ; 3 uses
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !24 ; 3 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nu, i64 192 ; 2 uses
  %i.ny = load ptr, ptr %i.nx, align 8, !tbaa !25
  %i.nz = icmp ult ptr %i.nw, %i.ny
  br i1 %i.nz, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %.lr.ph
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 1
  store ptr %i.oa, ptr %i.nv, align 8, !tbaa !24
  %i.ob = load i8, ptr %i.nw, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit213

bb.cj:                                            ; preds = %.lr.ph
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nu, i64 48 ; 2 uses
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !19
  %.not.i208 = icmp eq i32 %i.od, 0
  br i1 %.not.i208, label %_ZL10stbi__get8P13stbi__context.exit213, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nu, i64 16
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !21
  %i.og = getelementptr inbounds nuw i8, ptr %i.nu, i64 40
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !15
  %i.oi = getelementptr inbounds nuw i8, ptr %i.nu, i64 56 ; 4 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nu, i64 52
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !18
  %i.ol = tail call noundef i32 %i.of(ptr noundef %i.oh, ptr noundef nonnull %i.oi, i32 noundef %i.ok), !inline_history !346 ; 2 uses
  %i.om = icmp eq i32 %i.ol, 0
  br i1 %i.om, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.oc, align 8, !tbaa !19
  %i.on = getelementptr inbounds nuw i8, ptr %i.nu, i64 57
  store i8 0, ptr %i.oi, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i210

bb.cm:                                            ; preds = %bb.ck
  %i.oo = sext i32 %i.ol to i64
  %i.op = getelementptr inbounds i8, ptr %i.oi, i64 %i.oo
  %.pre.i209 = load i8, ptr %i.oi, align 8, !tbaa !23
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i210

_ZL19stbi__refill_bufferP13stbi__context.exit.i210: ; preds = %bb.cm, %bb.cl
  %i.oq = phi i8 [ 0, %bb.cl ], [ %.pre.i209, %bb.cm ]
  %.sink.i.i211 = phi ptr [ %i.on, %bb.cl ], [ %i.op, %bb.cm ]
  store ptr %.sink.i.i211, ptr %i.nx, align 8, !tbaa !25
  %i.or = getelementptr inbounds nuw i8, ptr %i.nu, i64 57
  store ptr %i.or, ptr %i.nv, align 8, !tbaa !24
  br label %_ZL10stbi__get8P13stbi__context.exit213

_ZL10stbi__get8P13stbi__context.exit213:          ; preds = %bb.ci, %bb.cj, %_ZL19stbi__refill_bufferP13stbi__context.exit.i210
  %.0.i212 = phi i8 [ %i.ob, %bb.ci ], [ %i.oq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i210 ], [ 0, %bb.cj ]
  %i.os = getelementptr inbounds nuw i8, ptr %.0114, i64 %indvars.iv275
  store i8 %.0.i212, ptr %i.os, align 1, !tbaa !23
  %indvars.iv.next276 = add nuw nsw i64 %indvars.iv275, 1 ; 2 uses
  %exitcond278.not = icmp eq i64 %indvars.iv.next276, %wide.trip.count
  br i1 %exitcond278.not, label %._crit_edge, label %.lr.ph, !llvm.loop !425

._crit_edge:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit213, %bb.ch
  br i1 %i.nl, label %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, label %bb.cn

bb.cn:                                            ; preds = %._crit_edge
  %i.ot = zext nneg i8 %i.mg to i64               ; 2 uses
  %i.ou = getelementptr inbounds nuw [1024 x i8], ptr %i.lh, i64 %i.ot
  %i.ov = getelementptr inbounds nuw [1680 x i8], ptr %i.lf, i64 %i.ot ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 1024
  %i.ox = getelementptr inbounds nuw i8, ptr %i.ov, i64 1280
  br label %bb.co

bb.co:                                            ; preds = %bb.ct, %bb.cn
  %indvars.iv.i = phi i64 [ 0, %bb.cn ], [ %indvars.iv.next.i, %bb.ct ] ; 4 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ov, i64 %indvars.iv.i
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !23  ; 2 uses
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr %i.ou, i64 %indvars.iv.i ; 2 uses
  store i16 0, ptr %i.pa, align 2, !tbaa !30
  %.not.i214 = icmp eq i8 %i.oz, -1
  br i1 %.not.i214, label %bb.ct, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.pb = zext i8 %i.oz to i64                    ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ow, i64 %i.pb
  %i.pd = load i8, ptr %i.pc, align 1, !tbaa !23
  %i.pe = zext i8 %i.pd to i32                    ; 2 uses
  %i.pf = and i32 %i.pe, 240
  %i.pg = and i32 %i.pe, 15                       ; 4 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.pb
  %i.pi = load i8, ptr %i.ph, align 1, !tbaa !23
  %i.pj = zext i8 %i.pi to i32                    ; 2 uses
  %.not36.i = icmp eq i32 %i.pg, 0
  br i1 %.not36.i, label %bb.ct, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.pk = add nuw nsw i32 %i.pg, %i.pj            ; 2 uses
  %i.pl = icmp samesign ult i32 %i.pk, 10
  br i1 %i.pl, label %bb.cr, label %bb.ct

bb.cr:                                            ; preds = %bb.cq
  %i.pm = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.pn = shl nuw nsw i32 %i.pm, %i.pj            ; 2 uses
  %i.po = and i32 %i.pn, 511
  %i.pp = sub nsw i32 9, %i.pg
  %i.pq = lshr i32 %i.po, %i.pp
  %.highbits.mask.i = and i32 %i.pn, 256
  %i.pr = icmp eq i32 %.highbits.mask.i, 0
  %i.ps = shl nsw i32 -1, %i.pg
  %i.pt = or disjoint i32 %i.ps, 1
  %i.pu = select i1 %i.pr, i32 %i.pt, i32 0
  %.0.i215 = add nsw i32 %i.pu, %i.pq             ; 2 uses
  %i.pv = add nsw i32 %.0.i215, 128
  %or.cond.i = icmp ult i32 %i.pv, 256
  br i1 %or.cond.i, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.pw = shl nsw i32 %.0.i215, 8
  %i.px = or disjoint i32 %i.pw, %i.pf
  %i.py = or disjoint i32 %i.px, %i.pk
  %i.pz = trunc nsw i32 %i.py to i16
  store i16 %i.pz, ptr %i.pa, align 2, !tbaa !30
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %bb.cr, %bb.cq, %bb.cp, %bb.co
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512
  br i1 %exitcond.not.i, label %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, label %bb.co, !llvm.loop !426

_ZL19stbi__build_fast_acPsP13stbi__huffman.exit:  ; preds = %bb.ct, %._crit_edge
  %i.qa = sub i32 %i.nk, %i.nj                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  %i.qb = icmp sgt i32 %i.qa, 0
  br i1 %i.qb, label %bb.bs, label %._crit_edge260, !llvm.loop !427

._crit_edge260:                                   ; preds = %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, %_ZL13stbi__get16beP13stbi__context.exit195
  %.2.lcssa = phi i32 [ %i.ld, %_ZL13stbi__get16beP13stbi__context.exit195 ], [ %i.qa, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit ]
  %i.qc = icmp eq i32 %.2.lcssa, 0
  br label %.critedge

bb.cu:                                            ; preds = %bb.a
  %i.qd = and i32 %1, 240
  %or.cond6 = icmp eq i32 %i.qd, 224
  %i.qe = icmp eq i32 %1, 254                     ; 2 uses
  %or.cond8 = or i1 %i.qe, %or.cond6
  br i1 %or.cond8, label %bb.cv, label %bb.ft

bb.cv:                                            ; preds = %bb.cu
  %i.qf = load ptr, ptr %0, align 8, !tbaa !94    ; 16 uses
  %i.qg = getelementptr inbounds nuw i8, ptr %i.qf, i64 184 ; 5 uses
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !24 ; 4 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.qf, i64 192 ; 3 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !25 ; 3 uses
  %i.qk = icmp ult ptr %i.qh, %i.qj
  br i1 %i.qk, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ql = getelementptr inbounds nuw i8, ptr %i.qh, i64 1 ; 2 uses
  store ptr %i.ql, ptr %i.qg, align 8, !tbaa !24
  %i.qm = load i8, ptr %i.qh, align 1, !tbaa !23
  br label %_ZL10stbi__get8P13stbi__context.exit.i220

bb.cx:                                            ; preds = %bb.cv
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qf, i64 48 ; 2 uses
  %i.qo = load i32, ptr %i.qn, align 8, !tbaa !19
  %.not.i.i216 = icmp eq i32 %i.qo, 0
end_hunk_2
begin_hunk_3_@_ZL15stbi__de_iphoneP9stbi__png:bb.a
  %i.bc = load i8, ptr %.24813, align 1, !tbaa !23
  %i.bd = getelementptr inbounds nuw i8, ptr %.24813, i64 2 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !23
  store i8 %i.be, ptr %.24813, align 1, !tbaa !23
  store i8 %i.bc, ptr %i.bd, align 1, !tbaa !23
  %i.bf = getelementptr inbounds nuw i8, ptr %.24813, i64 4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !23
  %i.bh = getelementptr inbounds nuw i8, ptr %.24813, i64 6 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !23
  store i8 %i.bi, ptr %i.bf, align 1, !tbaa !23
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !23
  %i.bj = getelementptr inbounds nuw i8, ptr %.24813, i64 8 ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !23
  %i.bl = getelementptr inbounds nuw i8, ptr %.24813, i64 10 ; 2 uses
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !23
  store i8 %i.bm, ptr %i.bj, align 1, !tbaa !23
  store i8 %i.bk, ptr %i.bl, align 1, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %.24813, i64 12 ; 2 uses
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !23
  %i.bp = getelementptr inbounds nuw i8, ptr %.24813, i64 14 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !23
  store i8 %i.bq, ptr %i.bn, align 1, !tbaa !23
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !23
  %i.br = getelementptr inbounds nuw i8, ptr %.24813, i64 16 ; 2 uses
  %niter.next.3 = add i32 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i32 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit32.unr-lcssa, label %.lr.ph15, !llvm.loop !534

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph18
  %lcmp.mod37.not = icmp eq i32 %xtraiter35, 0
  br i1 %lcmp.mod37.not, label %.loopexit, label %.lr.ph18.epil.preheader

.lr.ph18.epil.preheader:                          ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph18.preheader
  %.04616.epil.init = phi ptr [ %.24.val, %.lr.ph18.preheader ], [ %i.x, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod38 = icmp ne i32 %xtraiter35, 0
  tail call void @llvm.assume(i1 %lcmp.mod38)
  br label %.lr.ph18.epil

.lr.ph18.epil:                                    ; preds = %.lr.ph18.epil, %.lr.ph18.epil.preheader
  %.04616.epil = phi ptr [ %i.bv, %.lr.ph18.epil ], [ %.04616.epil.init, %.lr.ph18.epil.preheader ] ; 4 uses
  %epil.iter36 = phi i32 [ %epil.iter36.next, %.lr.ph18.epil ], [ 0, %.lr.ph18.epil.preheader ]
  %i.bs = load i8, ptr %.04616.epil, align 1, !tbaa !23
  %i.bt = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 2 ; 2 uses
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !23
  store i8 %i.bu, ptr %.04616.epil, align 1, !tbaa !23
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !23
  %i.bv = getelementptr inbounds nuw i8, ptr %.04616.epil, i64 3
  %epil.iter36.next = add i32 %epil.iter36, 1     ; 2 uses
  %epil.iter36.cmp.not = icmp eq i32 %epil.iter36.next, %xtraiter35
  br i1 %epil.iter36.cmp.not, label %.loopexit, label %.lr.ph18.epil, !llvm.loop !535

.loopexit.loopexit32.unr-lcssa:                   ; preds = %.lr.ph15
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph15.epil.preheader

.lr.ph15.epil.preheader:                          ; preds = %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.preheader
  %.24813.epil.init = phi ptr [ %.24.val, %.lr.ph15.preheader ], [ %i.br, %.loopexit.loopexit32.unr-lcssa ]
  %lcmp.mod34 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod34)
  br label %.lr.ph15.epil

.lr.ph15.epil:                                    ; preds = %.lr.ph15.epil, %.lr.ph15.epil.preheader
  %.24813.epil = phi ptr [ %i.bz, %.lr.ph15.epil ], [ %.24813.epil.init, %.lr.ph15.epil.preheader ] ; 4 uses
  %epil.iter = phi i32 [ %epil.iter.next, %.lr.ph15.epil ], [ 0, %.lr.ph15.epil.preheader ]
  %i.bw = load i8, ptr %.24813.epil, align 1, !tbaa !23
  %i.bx = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 2 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !23
  store i8 %i.by, ptr %.24813.epil, align 1, !tbaa !23
  store i8 %i.bw, ptr %i.bx, align 1, !tbaa !23
  %i.bz = getelementptr inbounds nuw i8, ptr %.24813.epil, i64 4
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph15.epil, !llvm.loop !536

.loopexit:                                        ; preds = %bb.e, %.loopexit.loopexit32.unr-lcssa, %.lr.ph15.epil, %.loopexit.loopexit.unr-lcssa, %.lr.ph18.epil, %.preheader9, %.preheader7, %.preheader
  ret void
}

; Function Attrs: mustprogress nofree nounwind memory(readwrite, target_mem: none) uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL26stbi__create_png_image_rawP9stbi__pngPhjijjii(ptr nofree noundef nonnull captures(none) initializes((24, 32)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef range(i32 0, 256) %7) unnamed_addr #24 {
bb.a:
  %i.a = icmp eq i32 %6, 16                       ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !99
  %i.c = mul i32 %4, %3                           ; 4 uses
  %i.d = zext i1 %i.a to i32                      ; 3 uses
  %i.e = shl i32 %i.c, %i.d                       ; 9 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !98   ; 8 uses
  %i.h = shl i32 %3, %i.d                         ; 18 uses
  %i.i = shl i32 %i.g, %i.d
  %i.j = or i32 %5, %4
  %or.cond.not.i.i.i = icmp sgt i32 %i.j, -1
  br i1 %or.cond.not.i.i.i, label %bb.b, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.k = icmp eq i32 %5, 0                        ; 2 uses
  br i1 %i.k, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, label %_ZL21stbi__mul2sizes_validii.exit.i.i

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %bb.b
  %i.l = udiv i32 2147483647, %5
  %.not23.i.i = icmp sgt i32 %4, %i.l
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i.i:   ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.b
  %i.m = mul nsw i32 %5, %4                       ; 3 uses
  %i.n = or i32 %i.h, %i.m
  %or.cond.not.i10.i.i = icmp sgt i32 %i.n, -1
  br i1 %or.cond.not.i10.i.i, label %bb.c, label %_ZL17stbi__malloc_mad3iiii.exit.thread

bb.c:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i
  %i.o = icmp eq i32 %i.h, 0
  br i1 %i.o, label %_ZL17stbi__malloc_mad3iiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i.i

_ZL21stbi__mul2sizes_validii.exit12.i.i:          ; preds = %bb.c
  %i.p = udiv i32 2147483647, %i.h
  %.not.i.i = icmp sgt i32 %i.m, %i.p
  br i1 %.not.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.i, %_ZL21stbi__mul2sizes_validii.exit12.i.i, %_ZL21stbi__mul2sizes_validii.exit.i.i, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.q, align 8, !tbaa !296
  br label %.loopexit704.sink.split

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %bb.c, %_ZL21stbi__mul2sizes_validii.exit12.i.i
  %i.r = mul nsw i32 %i.h, %i.m
  %i.s = sext i32 %i.r to i64
  %i.t = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.s) #34 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  store ptr %i.t, ptr %i.u, align 8, !tbaa !296
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %.loopexit704.sink.split, label %bb.d

bb.d:                                             ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.v = or i32 %i.g, %4
  %or.cond.not.i.i = icmp sgt i32 %i.v, -1
  br i1 %or.cond.not.i.i, label %bb.e, label %.loopexit704.sink.split

bb.e:                                             ; preds = %bb.d
  %i.w = icmp ne i32 %4, 0                        ; 2 uses
  br i1 %i.w, label %_ZL21stbi__mul2sizes_validii.exit.i, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.i:              ; preds = %bb.e
  %i.x = udiv i32 2147483647, %4
  %.not23.i = icmp sgt i32 %i.g, %i.x
  br i1 %.not23.i, label %.loopexit704.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %_ZL21stbi__mul2sizes_validii.exit.i, %bb.e
  %i.y = mul i32 %i.g, %4                         ; 14 uses
  %i.z = or i32 %i.y, %6
  %or.cond.not.i10.i = icmp sgt i32 %i.z, -1
  br i1 %or.cond.not.i10.i, label %bb.f, label %.loopexit704.sink.split

bb.f:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.aa = icmp eq i32 %6, 0
  br i1 %i.aa, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.f
  %i.ab = udiv i32 2147483647, %6
  %.not.i = icmp sgt i32 %i.y, %i.ab
  %i.ac = mul i32 %i.y, %6                        ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, 2147483640
  %or.cond696 = or i1 %.not.i, %i.ad
  br i1 %or.cond696, label %.loopexit704.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge

_ZL21stbi__mad3sizes_validiiii.exit._crit_edge:   ; preds = %bb.f, %_ZL21stbi__mul2sizes_validii.exit12.i
  %.pre-phi = phi i32 [ %i.ac, %_ZL21stbi__mul2sizes_validii.exit12.i ], [ 0, %bb.f ]
  %i.ae = add nsw i32 %.pre-phi, 7
  %i.af = lshr i32 %i.ae, 3                       ; 4 uses
  %i.ag = add nuw nsw i32 %i.af, 1
  %i.ah = mul i32 %i.ag, %5
  %i.ai = icmp ult i32 %2, %i.ah
  br i1 %i.ai, label %.loopexit704.sink.split, label %.preheader740

.preheader740:                                    ; preds = %_ZL21stbi__mad3sizes_validiiii.exit._crit_edge
  %i.aj = icmp slt i32 %6, 8                      ; 4 uses
  br i1 %i.k, label %._crit_edge828.thread, label %.lr.ph827

.lr.ph827:                                        ; preds = %.preheader740
  %i.ak = sub i32 %i.c, %i.af
  %narrow = select i1 %i.aj, i32 %i.ak, i32 0
  %.0529.idx = zext i32 %narrow to i64            ; 10 uses
  %i.al = zext i32 %i.e to i64                    ; 10 uses
  %i.am = sub nsw i64 0, %i.al
  %i.an = icmp eq i32 %6, 8
  %.not603 = icmp eq i32 %i.g, %3                 ; 3 uses
  %i.ao = sext i32 %i.h to i64                    ; 60 uses
  %i.ap = sext i32 %i.g to i64                    ; 2 uses
  %i.aq = sext i32 %3 to i64                      ; 2 uses
  %or.cond = select i1 %i.aj, i1 true, i1 %.not603
  %.6565745 = add i32 %4, -1                      ; 8 uses
  %.not605746 = icmp eq i32 %.6565745, 0          ; 7 uses
  %wide.trip.count968 = zext i32 %5 to i64
  %i.ar = sub nsw i64 %i.al, %.0529.idx
  %i.as = add i32 %4, -2                          ; 2 uses
  %i.at = zext i32 %i.as to i64                   ; 2 uses
  %i.au = mul nsw i64 %i.ao, %i.at
  %i.av = zext i32 %i.as to i64                   ; 3 uses
  %i.aw = mul nsw i64 %i.ao, %i.av
  %i.ax = sub nsw i64 0, %i.ao
  %i.ay = add nsw i64 %i.av, -1
  %i.az = mul i64 %i.ay, %i.ao
  %i.ba = add i32 %4, -2                          ; 2 uses
  %i.bb = zext i32 %i.ba to i64                   ; 2 uses
  %i.bc = mul nsw i64 %i.ao, %i.bb                ; 2 uses
  %i.bd = add i64 %i.bc, %.0529.idx
  %i.be = sub i64 %i.bd, %i.al
  %i.bf = zext i32 %i.ba to i64                   ; 3 uses
  %i.bg = mul nsw i64 %i.ao, %i.bf                ; 2 uses
  %i.bh = add i64 %i.bg, %.0529.idx
  %i.bi = sub i64 %i.bh, %i.al
  %i.bj = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.bk = add nsw i64 %i.bf, -1
  %i.bl = mul i64 %i.bk, %i.ao
  %i.bm = add i32 %4, -2
  %i.bn = zext i32 %i.bm to i64                   ; 3 uses
  %i.bo = mul nsw i64 %i.ao, %i.bn                ; 2 uses
  %i.bp = add nsw i64 %i.bn, -1
  %i.bq = mul i64 %i.bp, %i.ao                    ; 2 uses
  %i.br = add i64 %i.bo, %.0529.idx
  %i.bs = sub i64 %i.br, %i.al
  %i.bt = add nsw i64 %i.ao, %i.al
  %i.bu = sub nsw i64 %.0529.idx, %i.bt
  %i.bv = add i64 %i.bq, %.0529.idx
  %i.bw = sub i64 %i.bv, %i.al
  %i.bx = add i32 %4, -2                          ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 3 uses
  %i.bz = mul nsw i64 %i.ao, %i.by
  %i.ca = sub nsw i64 0, %i.ao                    ; 2 uses
  %i.cb = add nsw i64 %i.by, -1
  %i.cc = mul i64 %i.cb, %i.ao
  %i.cd = zext i32 %i.bx to i64                   ; 3 uses
  %i.ce = mul nsw i64 %i.ao, %i.cd
  %i.cf = add nsw i64 %i.cd, -1
  %i.cg = mul i64 %i.cf, %i.ao
  %stride.check1566 = icmp slt i32 %i.h, 0
  %stride.check1519 = icmp slt i32 %i.h, 0
  %stride.check1458 = icmp slt i32 %i.h, 0
  %stride.check1396 = icmp slt i32 %i.h, 0
  %stride.check1347 = icmp slt i32 %i.h, 0
  %stride.check1301 = icmp slt i32 %i.h, 0
  %brmerge.not = and i1 %i.w, %i.a
  %xtraiter1638 = and i32 %4, 7                   ; 3 uses
  %i.ch = icmp ult i32 %4, 8
  %unroll_iter = and i32 %4, -8
  %lcmp.mod1639.not = icmp eq i32 %xtraiter1638, 0
  %lcmp.mod1640 = icmp ne i32 %xtraiter1638, 0
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph827, %.loopexit725
  %indvars.iv965 = phi i64 [ 0, %.lr.ph827 ], [ %indvars.iv.next966, %.loopexit725 ] ; 9 uses
  %.0540826 = phi i32 [ %4, %.lr.ph827 ], [ %.1541, %.loopexit725 ]
  %.0543825 = phi i32 [ %i.i, %.lr.ph827 ], [ %.1544, %.loopexit725 ] ; 17 uses
  %.0571823 = phi ptr [ %1, %.lr.ph827 ], [ %.11582, %.loopexit725 ] ; 3 uses
  %i.ci = trunc i64 %indvars.iv965 to i32
  %i.cj = mul i32 %i.e, %i.ci
  %i.ck = zext i32 %i.cj to i64                   ; 2 uses
  %i.cl = trunc i64 %indvars.iv965 to i32
  %i.cm = mul i32 %i.e, %i.cl
  %i.cn = zext i32 %i.cm to i64
  %i.co = trunc i64 %indvars.iv965 to i32
  %i.cp = mul i32 %i.e, %i.co
  %i.cq = zext i32 %i.cp to i64
  %i.cr = trunc i64 %indvars.iv965 to i32
  %i.cs = mul i32 %i.e, %i.cr
  %i.ct = zext i32 %i.cs to i64                   ; 2 uses
  %i.cu = trunc i64 %indvars.iv965 to i32
  %i.cv = mul i32 %i.e, %i.cu
  %i.cw = zext i32 %i.cv to i64
  %i.cx = trunc i64 %indvars.iv965 to i32
  %i.cy = mul i32 %i.e, %i.cx
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %i.u, align 8, !tbaa !296 ; 7 uses
  %i.db = ptrtoaddr ptr %i.da to i64              ; 4 uses
  %i.dc = trunc i64 %indvars.iv965 to i32
  %i.dd = mul i32 %i.e, %i.dc
  %i.de = zext i32 %i.dd to i64                   ; 2 uses
  %i.df = getelementptr i8, ptr %i.da, i64 %i.de  ; 5 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.0571823, i64 1 ; 9 uses
  %i.dh = load i8, ptr %.0571823, align 1, !tbaa !23 ; 3 uses
  %i.di = icmp ult i8 %i.dh, 5
  br i1 %i.di, label %bb.h, label %.loopexit704.sink.split

bb.h:                                             ; preds = %bb.g
  %.1544 = select i1 %i.aj, i32 1, i32 %.0543825  ; 30 uses
  %.1541 = select i1 %i.aj, i32 %i.af, i32 %.0540826 ; 2 uses
  %.0529 = getelementptr i8, ptr %i.df, i64 %.0529.idx ; 3 uses
  %i.dj = getelementptr i8, ptr %.0529, i64 %i.am ; 4 uses
  %i.dk = icmp eq i64 %indvars.iv965, 0
  br i1 %i.dk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dl = zext nneg i8 %i.dh to i64
  %i.dm = getelementptr inbounds nuw i8, ptr @_ZL16first_row_filter, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1, !tbaa !23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0520.in = phi i8 [ %i.dn, %bb.i ], [ %i.dh, %bb.h ] ; 3 uses
  %i.do = icmp sgt i32 %.1544, 0                  ; 8 uses
  br i1 %i.do, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.j
  %wide.trip.count = zext nneg i32 %.1544 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.r ] ; 12 uses
  switch i8 %.0520.in, label %bb.r [
    i8 0, label %bb.k
    i8 1, label %bb.l
    i8 2, label %bb.m
    i8 3, label %bb.n
    i8 4, label %bb.o
    i8 5, label %bb.p
    i8 6, label %bb.q
  ]

bb.k:                                             ; preds = %.lr.ph
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !23
  br label %.sink.split

bb.l:                                             ; preds = %.lr.ph
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !23
  br label %.sink.split

bb.m:                                             ; preds = %.lr.ph
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !23
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv
  %i.dw = load i8, ptr %i.dv, align 1, !tbaa !23
  %.narrow639 = add i8 %i.dw, %i.du
  br label %.sink.split

bb.n:                                             ; preds = %.lr.ph
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !23
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !23
  %i.eb = lshr i8 %i.ea, 1
  %.narrow637 = add i8 %i.eb, %i.dy
  br label %.sink.split

bb.o:                                             ; preds = %.lr.ph
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !23
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dj, i64 %indvars.iv
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !23
  %.narrow635 = add i8 %i.ef, %i.ed
  br label %.sink.split

bb.p:                                             ; preds = %.lr.ph
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !23
  br label %.sink.split

bb.q:                                             ; preds = %.lr.ph
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dg, i64 %indvars.iv
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !23
  br label %.sink.split

.sink.split:                                      ; preds = %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink = phi i8 [ %i.dq, %bb.k ], [ %i.ds, %bb.l ], [ %.narrow639, %bb.m ], [ %.narrow637, %bb.n ], [ %.narrow635, %bb.o ], [ %i.eh, %bb.p ], [ %i.ej, %bb.q ]
  %i.ek = getelementptr inbounds nuw i8, ptr %.0529, i64 %indvars.iv
  store i8 %.sink, ptr %i.ek, align 1, !tbaa !23
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !537

._crit_edge:                                      ; preds = %bb.r, %bb.j
  br i1 %i.an, label %bb.s, label %bb.v

bb.s:                                             ; preds = %._crit_edge
  br i1 %.not603, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.el = getelementptr inbounds i8, ptr %i.df, i64 %i.ap
  store i8 -1, ptr %i.el, align 1, !tbaa !23
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.em = getelementptr inbounds i8, ptr %i.dg, i64 %i.ap
  %i.en = getelementptr inbounds i8, ptr %i.df, i64 %i.aq
  br label %bb.z

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.a, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.pre983 = sext i32 %.0543825 to i64            ; 2 uses
  br i1 %.not603, label %._crit_edge982, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eo = getelementptr inbounds i8, ptr %i.df, i64 %.pre983 ; 2 uses
  store i8 -1, ptr %i.eo, align 1, !tbaa !23
  %i.ep = getelementptr i8, ptr %i.eo, i64 1
  store i8 -1, ptr %i.ep, align 1, !tbaa !23
  br label %._crit_edge982

._crit_edge982:                                   ; preds = %bb.w, %bb.x
  %i.eq = getelementptr inbounds i8, ptr %i.dg, i64 %.pre983
  %i.er = getelementptr inbounds i8, ptr %i.df, i64 %i.ao
  br label %bb.z

bb.y:                                             ; preds = %bb.v
  %i.es = getelementptr inbounds nuw i8, ptr %.0571823, i64 2
  %i.et = getelementptr inbounds nuw i8, ptr %.0529, i64 1
  br label %bb.z

bb.z:                                             ; preds = %._crit_edge982, %bb.y, %bb.u
  %.sink1032 = phi i64 [ %i.ao, %._crit_edge982 ], [ 1, %bb.y ], [ %i.aq, %bb.u ] ; 9 uses
  %.1572 = phi ptr [ %i.eq, %._crit_edge982 ], [ %i.es, %bb.y ], [ %i.em, %bb.u ] ; 62 uses
  %.1530 = phi ptr [ %i.er, %._crit_edge982 ], [ %i.et, %bb.y ], [ %i.en, %bb.u ] ; 95 uses
  %.15301067 = ptrtoaddr ptr %.1530 to i64        ; 10 uses
  %.15721068 = ptrtoaddr ptr %.1572 to i64        ; 6 uses
  %i.eu = getelementptr i8, ptr %i.dj, i64 %.sink1032 ; 24 uses
  br i1 %or.cond, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  %i.ev = add i32 %.1541, -1
  %i.ew = mul i32 %i.ev, %.1544                   ; 26 uses
  switch i8 %.0520.in, label %.loopexit714 [
    i8 0, label %bb.ab
    i8 1, label %.preheader713
    i8 2, label %.preheader715
    i8 3, label %.preheader717
    i8 4, label %.preheader719
    i8 5, label %.preheader721
    i8 6, label %.preheader723
  ]
end_hunk_3
