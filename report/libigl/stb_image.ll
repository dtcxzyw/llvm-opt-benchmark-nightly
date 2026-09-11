Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 80
loop-unroll.NumUnrolled: 110
begin_hunk_0_@_ZL14stbi__tga_loadP13stbi__contextPiS1_S1_iP17stbi__result_info:bb.a
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit.i263.sink.split

bb.ba:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit258
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hq = load i32, ptr %i.hp, align 8, !tbaa !31
  %.not.i.i259 = icmp eq i32 %i.hq, 0
  br i1 %.not.i.i259, label %_ZL10stbi__get8P13stbi__context.exit.i263, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !33
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hu = load ptr, ptr %i.ht, align 8, !tbaa !29
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !30
  %i.hy = tail call noundef i32 %i.hs(ptr noundef %i.hu, ptr noundef nonnull %i.hv, i32 noundef %i.hx), !inline_history !11 ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  store i32 0, ptr %i.hp, align 8, !tbaa !31
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.hv, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261

bb.bd:                                            ; preds = %bb.bb
  %i.ib = sext i32 %i.hy to i64
  %i.ic = getelementptr inbounds i8, ptr %i.hv, i64 %i.ib
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261: ; preds = %bb.bd, %bb.bc
  %.sink.i.i.i262 = phi ptr [ %i.ia, %bb.bc ], [ %i.ic, %bb.bd ] ; 2 uses
  store ptr %.sink.i.i.i262, ptr %i.d, align 8, !tbaa !36
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL10stbi__get8P13stbi__context.exit.i263.sink.split

_ZL10stbi__get8P13stbi__context.exit.i263.sink.split: ; preds = %bb.az, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261
  %.sink241 = phi ptr [ %i.id, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261 ], [ %i.ho, %bb.az ] ; 2 uses
  %.ph239 = phi ptr [ %.sink.i.i.i262, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i261 ], [ %i.hl, %bb.az ]
  store ptr %.sink241, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i263

_ZL10stbi__get8P13stbi__context.exit.i263:        ; preds = %_ZL10stbi__get8P13stbi__context.exit.i263.sink.split, %bb.ba
  %i.ie = phi ptr [ %i.hl, %bb.ba ], [ %.ph239, %_ZL10stbi__get8P13stbi__context.exit.i263.sink.split ] ; 3 uses
  %i.if = phi ptr [ %i.hm, %bb.ba ], [ %.sink241, %_ZL10stbi__get8P13stbi__context.exit.i263.sink.split ] ; 3 uses
  %i.ig = icmp ult ptr %i.if, %i.ie
  br i1 %i.ig, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i263
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 1
  br label %_ZL13stbi__get16leP13stbi__context.exit270.sink.split

bb.bf:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i263
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !31
  %.not.i2.i265 = icmp eq i32 %i.ij, 0
  br i1 %.not.i2.i265, label %_ZL13stbi__get16leP13stbi__context.exit270, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !33
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !29
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !30
  %i.ir = tail call noundef i32 %i.il(ptr noundef %i.in, ptr noundef nonnull %i.io, i32 noundef %i.iq), !inline_history !11 ; 2 uses
  %i.is = icmp eq i32 %i.ir, 0
  br i1 %i.is, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  store i32 0, ptr %i.ii, align 8, !tbaa !31
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.io, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267

bb.bi:                                            ; preds = %bb.bg
  %i.iu = sext i32 %i.ir to i64
  %i.iv = getelementptr inbounds i8, ptr %i.io, i64 %i.iu
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267: ; preds = %bb.bi, %bb.bh
  %.sink.i.i5.i268 = phi ptr [ %i.it, %bb.bh ], [ %i.iv, %bb.bi ] ; 2 uses
  store ptr %.sink.i.i5.i268, ptr %i.d, align 8, !tbaa !36
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL13stbi__get16leP13stbi__context.exit270.sink.split

_ZL13stbi__get16leP13stbi__context.exit270.sink.split: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267, %bb.be
  %.sink244 = phi ptr [ %i.ih, %bb.be ], [ %i.iw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267 ] ; 2 uses
  %.ph242 = phi ptr [ %i.ie, %bb.be ], [ %.sink.i.i5.i268, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i267 ]
  store ptr %.sink244, ptr %i.b, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit270

_ZL13stbi__get16leP13stbi__context.exit270:       ; preds = %_ZL13stbi__get16leP13stbi__context.exit270.sink.split, %bb.bf
  %i.ix = phi ptr [ %i.ie, %bb.bf ], [ %.ph242, %_ZL13stbi__get16leP13stbi__context.exit270.sink.split ] ; 3 uses
  %i.iy = phi ptr [ %i.if, %bb.bf ], [ %.sink244, %_ZL13stbi__get16leP13stbi__context.exit270.sink.split ] ; 4 uses
  %i.iz = icmp ult ptr %i.iy, %i.ix
  br i1 %i.iz, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit270
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iy, i64 1 ; 2 uses
  store ptr %i.ja, ptr %i.b, align 8, !tbaa !35
  %i.jb = load i8, ptr %i.iy, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i275

bb.bk:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit270
  %i.jc = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jd = load i32, ptr %i.jc, align 8, !tbaa !31
  %.not.i.i271 = icmp eq i32 %i.jd, 0
  br i1 %.not.i.i271, label %_ZL10stbi__get8P13stbi__context.exit.i275, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !33
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !29
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jk = load i32, ptr %i.jj, align 4, !tbaa !30
  %i.jl = tail call noundef i32 %i.jf(ptr noundef %i.jh, ptr noundef nonnull %i.ji, i32 noundef %i.jk), !inline_history !11 ; 2 uses
  %i.jm = icmp eq i32 %i.jl, 0
  br i1 %i.jm, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.jc, align 8, !tbaa !31
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.ji, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273

bb.bn:                                            ; preds = %bb.bl
  %i.jo = sext i32 %i.jl to i64
  %i.jp = getelementptr inbounds i8, ptr %i.ji, i64 %i.jo
  %.pre.i.i272 = load i8, ptr %i.ji, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273: ; preds = %bb.bn, %bb.bm
  %i.jq = phi i8 [ 0, %bb.bm ], [ %.pre.i.i272, %bb.bn ]
  %.sink.i.i.i274 = phi ptr [ %i.jn, %bb.bm ], [ %i.jp, %bb.bn ] ; 2 uses
  store ptr %.sink.i.i.i274, ptr %i.d, align 8, !tbaa !36
  %i.jr = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.jr, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i275

_ZL10stbi__get8P13stbi__context.exit.i275:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273, %bb.bk, %bb.bj
  %i.js = phi ptr [ %i.ix, %bb.bj ], [ %.sink.i.i.i274, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ %i.ix, %bb.bk ] ; 3 uses
  %i.jt = phi ptr [ %i.ja, %bb.bj ], [ %i.jr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ %i.iy, %bb.bk ] ; 4 uses
  %.0.i.i276 = phi i8 [ %i.jb, %bb.bj ], [ %i.jq, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i273 ], [ 0, %bb.bk ]
  %i.ju = icmp ult ptr %i.jt, %i.js
  br i1 %i.ju, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i275
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jt, i64 1 ; 2 uses
  store ptr %i.jv, ptr %i.b, align 8, !tbaa !35
  %i.jw = load i8, ptr %i.jt, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit282

bb.bp:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i275
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jy = load i32, ptr %i.jx, align 8, !tbaa !31
  %.not.i2.i277 = icmp eq i32 %i.jy, 0
  br i1 %.not.i2.i277, label %_ZL13stbi__get16leP13stbi__context.exit282, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !33
  %i.kb = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !29
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !30
  %i.kg = tail call noundef i32 %i.ka(ptr noundef %i.kc, ptr noundef nonnull %i.kd, i32 noundef %i.kf), !inline_history !11 ; 2 uses
  %i.kh = icmp eq i32 %i.kg, 0
  br i1 %i.kh, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 0, ptr %i.jx, align 8, !tbaa !31
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.kd, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279

bb.bs:                                            ; preds = %bb.bq
  %i.kj = sext i32 %i.kg to i64
  %i.kk = getelementptr inbounds i8, ptr %i.kd, i64 %i.kj
  %.pre.i3.i278 = load i8, ptr %i.kd, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279: ; preds = %bb.bs, %bb.br
  %i.kl = phi i8 [ 0, %bb.br ], [ %.pre.i3.i278, %bb.bs ]
  %.sink.i.i5.i280 = phi ptr [ %i.ki, %bb.br ], [ %i.kk, %bb.bs ] ; 2 uses
  store ptr %.sink.i.i5.i280, ptr %i.d, align 8, !tbaa !36
  %i.km = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.km, ptr %i.b, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit282

_ZL13stbi__get16leP13stbi__context.exit282:       ; preds = %bb.bo, %bb.bp, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279
  %i.kn = phi ptr [ %i.js, %bb.bo ], [ %.sink.i.i5.i280, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ %i.js, %bb.bp ] ; 3 uses
  %i.ko = phi ptr [ %i.jv, %bb.bo ], [ %i.km, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ %i.jt, %bb.bp ] ; 4 uses
  %.0.i6.i281 = phi i8 [ %i.jw, %bb.bo ], [ %i.kl, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i279 ], [ 0, %bb.bp ]
  %i.kp = zext i8 %.0.i.i276 to i32               ; 3 uses
  %i.kq = zext i8 %.0.i6.i281 to i32
  %i.kr = shl nuw nsw i32 %i.kq, 8                ; 3 uses
  %i.ks = or disjoint i32 %i.kr, %i.kp            ; 8 uses
  %i.kt = icmp ult ptr %i.ko, %i.kn
  br i1 %i.kt, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit282
  %i.ku = getelementptr inbounds nuw i8, ptr %i.ko, i64 1 ; 2 uses
  store ptr %i.ku, ptr %i.b, align 8, !tbaa !35
  %i.kv = load i8, ptr %i.ko, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i287

bb.bu:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit282
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.kx = load i32, ptr %i.kw, align 8, !tbaa !31
  %.not.i.i283 = icmp eq i32 %i.kx, 0
  br i1 %.not.i.i283, label %_ZL10stbi__get8P13stbi__context.exit.i287, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !33
  %i.la = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lb = load ptr, ptr %i.la, align 8, !tbaa !29
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ld = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !30
  %i.lf = tail call noundef i32 %i.kz(ptr noundef %i.lb, ptr noundef nonnull %i.lc, i32 noundef %i.le), !inline_history !11 ; 2 uses
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  store i32 0, ptr %i.kw, align 8, !tbaa !31
  %i.lh = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.lc, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285

bb.bx:                                            ; preds = %bb.bv
  %i.li = sext i32 %i.lf to i64
  %i.lj = getelementptr inbounds i8, ptr %i.lc, i64 %i.li
  %.pre.i.i284 = load i8, ptr %i.lc, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285: ; preds = %bb.bx, %bb.bw
  %i.lk = phi i8 [ 0, %bb.bw ], [ %.pre.i.i284, %bb.bx ]
  %.sink.i.i.i286 = phi ptr [ %i.lh, %bb.bw ], [ %i.lj, %bb.bx ] ; 2 uses
  store ptr %.sink.i.i.i286, ptr %i.d, align 8, !tbaa !36
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ll, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i287

_ZL10stbi__get8P13stbi__context.exit.i287:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285, %bb.bu, %bb.bt
  %i.lm = phi ptr [ %i.kn, %bb.bt ], [ %.sink.i.i.i286, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ %i.kn, %bb.bu ] ; 3 uses
  %i.ln = phi ptr [ %i.ku, %bb.bt ], [ %i.ll, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ %i.ko, %bb.bu ] ; 4 uses
  %.0.i.i288 = phi i8 [ %i.kv, %bb.bt ], [ %i.lk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i285 ], [ 0, %bb.bu ] ; 3 uses
  %i.lo = icmp ult ptr %i.ln, %i.lm
  br i1 %i.lo, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i287
  %i.lp = getelementptr inbounds nuw i8, ptr %i.ln, i64 1 ; 2 uses
  store ptr %i.lp, ptr %i.b, align 8, !tbaa !35
  %i.lq = load i8, ptr %i.ln, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit294

bb.bz:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i287
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ls = load i32, ptr %i.lr, align 8, !tbaa !31
  %.not.i2.i289 = icmp eq i32 %i.ls, 0
  br i1 %.not.i2.i289, label %_ZL13stbi__get16leP13stbi__context.exit294, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !33
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !29
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.lz = load i32, ptr %i.ly, align 4, !tbaa !30
  %i.ma = tail call noundef i32 %i.lu(ptr noundef %i.lw, ptr noundef nonnull %i.lx, i32 noundef %i.lz), !inline_history !11 ; 2 uses
  %i.mb = icmp eq i32 %i.ma, 0
  br i1 %i.mb, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store i32 0, ptr %i.lr, align 8, !tbaa !31
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.lx, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291

bb.cc:                                            ; preds = %bb.ca
  %i.md = sext i32 %i.ma to i64
  %i.me = getelementptr inbounds i8, ptr %i.lx, i64 %i.md
  %.pre.i3.i290 = load i8, ptr %i.lx, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i291: ; preds = %bb.cc, %bb.cb
  %i.mf = phi i8 [ 0, %bb.cb ], [ %.pre.i3.i290, %bb.cc ]
  %.sink.i.i5.i292 = phi ptr [ %i.mc, %bb.cb ], [ %i.me, %bb.cc ] ; 2 uses
  store ptr %.sink.i.i5.i292, ptr %i.d, align 8, !tbaa !36
  %i.mg = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.mg, ptr %i.b, align 8, !tbaa !35
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
  store ptr %i.mo, ptr %i.b, align 8, !tbaa !35
  %i.mp = load i8, ptr %i.mi, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit300

bb.ce:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit294
  %i.mq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !31
  %.not.i295 = icmp eq i32 %i.mr, 0
  br i1 %.not.i295, label %_ZL10stbi__get8P13stbi__context.exit300, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mt = load ptr, ptr %i.ms, align 8, !tbaa !33
  %i.mu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.mv = load ptr, ptr %i.mu, align 8, !tbaa !29
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !30
  %i.mz = tail call noundef i32 %i.mt(ptr noundef %i.mv, ptr noundef nonnull %i.mw, i32 noundef %i.my), !inline_history !9 ; 2 uses
  %i.na = icmp eq i32 %i.mz, 0
  br i1 %i.na, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  store i32 0, ptr %i.mq, align 8, !tbaa !31
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.mw, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i297

bb.ch:                                            ; preds = %bb.cf
  %i.nc = sext i32 %i.mz to i64
  %i.nd = getelementptr inbounds i8, ptr %i.mw, i64 %i.nc
  %.pre.i296 = load i8, ptr %i.mw, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i297

_ZL19stbi__refill_bufferP13stbi__context.exit.i297: ; preds = %bb.ch, %bb.cg
  %i.ne = phi i8 [ 0, %bb.cg ], [ %.pre.i296, %bb.ch ]
  %.sink.i.i298 = phi ptr [ %i.nb, %bb.cg ], [ %i.nd, %bb.ch ] ; 2 uses
  store ptr %.sink.i.i298, ptr %i.d, align 8, !tbaa !36
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.nf, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit300

_ZL10stbi__get8P13stbi__context.exit300:          ; preds = %bb.cd, %bb.ce, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297
  %i.ng = phi ptr [ %i.mh, %bb.cd ], [ %.sink.i.i298, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ %i.mh, %bb.ce ] ; 3 uses
  %i.nh = phi ptr [ %i.mo, %bb.cd ], [ %i.nf, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ %i.mi, %bb.ce ] ; 4 uses
  %.0.i299 = phi i8 [ %i.mp, %bb.cd ], [ %i.ne, %_ZL19stbi__refill_bufferP13stbi__context.exit.i297 ], [ 0, %bb.ce ] ; 3 uses
  %i.ni = icmp ult ptr %i.nh, %i.ng
  br i1 %i.ni, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit300
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nh, i64 1 ; 2 uses
  store ptr %i.nj, ptr %i.b, align 8, !tbaa !35
  %i.nk = load i8, ptr %i.nh, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit306

bb.cj:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit300
  %i.nl = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.nm = load i32, ptr %i.nl, align 8, !tbaa !31
  %.not.i301 = icmp eq i32 %i.nm, 0
  br i1 %.not.i301, label %_ZL10stbi__get8P13stbi__context.exit306, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !33
  %i.np = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !29
  %i.nr = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !30
  %i.nu = tail call noundef i32 %i.no(ptr noundef %i.nq, ptr noundef nonnull %i.nr, i32 noundef %i.nt), !inline_history !9 ; 2 uses
  %i.nv = icmp eq i32 %i.nu, 0
  br i1 %i.nv, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %bb.ck
  store i32 0, ptr %i.nl, align 8, !tbaa !31
  %i.nw = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.nr, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i303

bb.cm:                                            ; preds = %bb.ck
  %i.nx = sext i32 %i.nu to i64
  %i.ny = getelementptr inbounds i8, ptr %i.nr, i64 %i.nx
  %.pre.i302 = load i8, ptr %i.nr, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i303

_ZL19stbi__refill_bufferP13stbi__context.exit.i303: ; preds = %bb.cm, %bb.cl
  %i.nz = phi i8 [ 0, %bb.cl ], [ %.pre.i302, %bb.cm ]
  %.sink.i.i304 = phi ptr [ %i.nw, %bb.cl ], [ %i.ny, %bb.cm ] ; 2 uses
  store ptr %.sink.i.i304, ptr %i.d, align 8, !tbaa !36
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.oa, ptr %i.b, align 8, !tbaa !35
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
  %5 = zext nneg i8 %i.og to i32
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
  %i.oi = icmp eq i32 %spec.select, 3             ; 2 uses
  %6 = zext i1 %i.oi to i32
  %.mux.i = xor i32 %6, 3
  br i1 %i.oi, label %bb.ct, label %bb.co

bb.cs:                                            ; preds = %bb.cq, %bb.cq
  %i.oj = lshr i8 %.0.i299, 3
  %7 = zext nneg i8 %i.oj to i32
  br label %bb.ct

_ZL18stbi__tga_get_compiiPi.exit:                 ; preds = %bb.cq, %bb.cn
  store ptr @.str.83, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.fd

bb.ct:                                            ; preds = %bb.co, %bb.cp, %bb.cn, %bb.cs, %bb.cq, %bb.cr
  %i.ok = phi i1 [ false, %bb.cs ], [ false, %bb.cp ], [ false, %bb.cr ], [ false, %bb.cq ], [ true, %bb.co ], [ false, %bb.cn ] ; 2 uses
  %.not204 = phi i1 [ true, %bb.cs ], [ true, %bb.cp ], [ true, %bb.cr ], [ true, %bb.cq ], [ false, %bb.co ], [ true, %bb.cn ] ; 2 uses
  %.0189.ph = phi i32 [ %7, %bb.cs ], [ %5, %bb.cp ], [ %.mux.i, %bb.cr ], [ 1, %bb.cq ], [ 3, %bb.co ], [ 1, %bb.cn ] ; 17 uses
  store i32 %i.ks, ptr %1, align 4, !tbaa !24
  store i32 %i.mm, ptr %2, align 4, !tbaa !24
  %.not199 = icmp eq ptr %3, null
  br i1 %.not199, label %bb.cv, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  store i32 %.0189.ph, ptr %3, align 4, !tbaa !24
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
  store ptr @.str.26, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.fd

_ZL21stbi__mul2sizes_validii.exit.i.i:            ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i.thread
  %i.or = udiv i32 2147483647, %i.mm
  %.not23.i.i = icmp samesign ugt i32 %i.ks, %i.or
  br i1 %.not23.i.i, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %_ZL17stbi__malloc_mad3iiii.exit

_ZL17stbi__malloc_mad3iiii.exit:                  ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.os = phi i32 [ %i.op, %_ZL21stbi__mul2sizes_validii.exit.i.i ], [ %i.on, %_ZL21stbi__mul2sizes_validii.exit.thread15.i ] ; 7 uses
  %i.ot = mul nsw i32 %.0189.ph, %i.os
  %i.ou = zext nneg i32 %i.ot to i64
  %i.ov = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.ou) #34 ; 25 uses
  %.not201 = icmp eq ptr %i.ov, null
  br i1 %.not201, label %_ZL17stbi__malloc_mad3iiii.exit.thread, label %bb.cx

_ZL17stbi__malloc_mad3iiii.exit.thread:           ; preds = %_ZL21stbi__mul2sizes_validii.exit.i.i, %_ZL17stbi__malloc_mad3iiii.exit
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.fd

bb.cx:                                            ; preds = %_ZL17stbi__malloc_mad3iiii.exit
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 9 uses
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !33
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
  store ptr %i.ob, ptr %i.b, align 8, !tbaa !35
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !74
  %i.pf = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !29
  %i.ph = sub nsw i32 %i.aa, %i.pb
  tail call void %i.pe(ptr noundef %i.pg, i32 noundef %i.ph), !inline_history !124
  br label %_ZL10stbi__skipP13stbi__contexti.exit

.thread.i:                                        ; preds = %bb.cx, %bb.cy
  %i.pi = zext i8 %.0.i to i64
  %i.pj = getelementptr inbounds nuw i8, ptr %.pre.i316, i64 %i.pi
  store ptr %i.pj, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__skipP13stbi__contexti.exit

_ZL10stbi__skipP13stbi__contexti.exit:            ; preds = %bb.cz, %.thread.i
  %or.cond = or i1 %i.of, %i.oc
  %or.cond3 = or i1 %or.cond, %i.ok
  br i1 %or.cond3, label %bb.dh, label %.preheader31

.preheader31:                                     ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.ol, label %.loopexit32, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader31
  %.not202.not = icmp eq i8 %i.oe, 0              ; 2 uses
  %i.pk = mul nuw nsw i32 %.0189.ph, %i.ks        ; 10 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pm = zext nneg i32 %i.pk to i64              ; 14 uses
  %i.pn = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.po = icmp eq ptr %i.pn, null
  br i1 %i.po, label %.lr.ph.split.us, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %i.pp = or disjoint i32 %i.ml, %i.mj
  br label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  %.pre35.i.us = load ptr, ptr %i.d, align 8, !tbaa !36 ; 6 uses
  %.promoted = load ptr, ptr %i.b, align 8, !tbaa !35 ; 4 uses
  br i1 %.not202.not, label %..thread_crit_edge.i319.us.us.preheader, label %..thread_crit_edge.i319.us.preheader

..thread_crit_edge.i319.us.preheader:             ; preds = %.lr.ph.split.us
  %i.pq = or disjoint i32 %i.ml, %i.mj            ; 2 uses
  %i.pr = zext nneg i32 %i.pq to i64              ; 2 uses
  %xtraiter = and i64 %i.pr, 1
  %i.ps = icmp eq i32 %i.pq, 1
  br i1 %i.ps, label %..thread_crit_edge.i319.us.epil.preheader, label %..thread_crit_edge.i319.us.preheader.new

..thread_crit_edge.i319.us.preheader.new:         ; preds = %..thread_crit_edge.i319.us.preheader
  %unroll_iter = and i64 %i.pr, 65534
  br label %..thread_crit_edge.i319.us

..thread_crit_edge.i319.us.us.preheader:          ; preds = %.lr.ph.split.us
  %i.pt = or disjoint i32 %i.ml, %i.mj            ; 2 uses
  %i.pu = zext nneg i32 %i.pt to i64              ; 2 uses
  %xtraiter277 = and i64 %i.pu, 1
  %i.pv = icmp eq i32 %i.pt, 1
  br i1 %i.pv, label %..thread_crit_edge.i319.us.us.epil.preheader, label %..thread_crit_edge.i319.us.us.preheader.new

..thread_crit_edge.i319.us.us.preheader.new:      ; preds = %..thread_crit_edge.i319.us.us.preheader
  %unroll_iter282 = and i64 %i.pu, 65534
  br label %..thread_crit_edge.i319.us.us

..thread_crit_edge.i319.us.us:                    ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, %..thread_crit_edge.i319.us.us.preheader.new
  %indvars.iv67 = phi i64 [ 0, %..thread_crit_edge.i319.us.us.preheader.new ], [ %indvars.iv.next68.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %i.pw = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.us.preheader.new ], [ %i.qm, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ] ; 3 uses
  %niter283 = phi i64 [ 0, %..thread_crit_edge.i319.us.us.preheader.new ], [ %niter283.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1 ]
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 %i.pm ; 3 uses
  %.not32.i.us.us = icmp ugt ptr %i.px, %.pre35.i.us
  br i1 %.not32.i.us.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us, label %bb.da

bb.da:                                            ; preds = %..thread_crit_edge.i319.us.us
  %i.py = trunc i64 %indvars.iv67 to i32
  %i.pz = xor i32 %i.py, -1
  %i.qa = add i32 %i.mm, %i.pz
  %i.qb = mul i32 %i.pk, %i.qa
  %i.qc = sext i32 %i.qb to i64
  %i.qd = getelementptr inbounds i8, ptr %i.ov, i64 %i.qc
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qd, ptr align 1 %i.pw, i64 %i.pm, i1 false)
  store ptr %i.px, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us:    ; preds = %..thread_crit_edge.i319.us.us, %bb.da
  %i.qe = phi ptr [ %i.px, %bb.da ], [ %i.pw, %..thread_crit_edge.i319.us.us ] ; 3 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qe, i64 %i.pm ; 3 uses
  %.not32.i.us.us.1 = icmp ugt ptr %i.qf, %.pre35.i.us
  br i1 %.not32.i.us.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1, label %bb.db

bb.db:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.qg = trunc i64 %indvars.iv67 to i32
  %i.qh = xor i32 %i.qg, -2
  %i.qi = add i32 %i.mm, %i.qh
  %i.qj = mul i32 %i.pk, %i.qi
  %i.qk = sext i32 %i.qj to i64
  %i.ql = getelementptr inbounds i8, ptr %i.ov, i64 %i.qk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ql, ptr align 1 %i.qe, i64 %i.pm, i1 false)
  store ptr %i.qf, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.us.1:  ; preds = %bb.db, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us
  %i.qm = phi ptr [ %i.qf, %bb.db ], [ %i.qe, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.us ] ; 2 uses
  %indvars.iv.next68.1 = add nuw nsw i64 %indvars.iv67, 2 ; 2 uses
  %niter283.next.1 = add i64 %niter283, 2         ; 2 uses
  %niter283.ncmp.1 = icmp eq i64 %niter283.next.1, %unroll_iter282
  br i1 %niter283.ncmp.1, label %.loopexit32.loopexit.unr-lcssa, label %..thread_crit_edge.i319.us.us, !llvm.loop !405

..thread_crit_edge.i319.us:                       ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, %..thread_crit_edge.i319.us.preheader.new
  %indvars.iv = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader.new ], [ %indvars.iv.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %i.qn = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.preheader.new ], [ %i.ra, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ] ; 3 uses
  %niter = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader.new ], [ %niter.next.1, %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1 ]
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qn, i64 %i.pm ; 3 uses
  %.not32.i.us = icmp ugt ptr %i.qo, %.pre35.i.us
  br i1 %.not32.i.us, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us, label %bb.dc

bb.dc:                                            ; preds = %..thread_crit_edge.i319.us
  %i.qp = trunc nuw nsw i64 %indvars.iv to i32
  %i.qq = mul i32 %i.pk, %i.qp
  %i.qr = sext i32 %i.qq to i64
  %i.qs = getelementptr inbounds i8, ptr %i.ov, i64 %i.qr
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qs, ptr align 1 %i.qn, i64 %i.pm, i1 false)
  store ptr %i.qo, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us

_ZL10stbi__getnP13stbi__contextPhi.exit.us:       ; preds = %bb.dc, %..thread_crit_edge.i319.us
  %i.qt = phi ptr [ %i.qo, %bb.dc ], [ %i.qn, %..thread_crit_edge.i319.us ] ; 3 uses
  %i.qu = getelementptr inbounds nuw i8, ptr %i.qt, i64 %i.pm ; 3 uses
  %.not32.i.us.1 = icmp ugt ptr %i.qu, %.pre35.i.us
  br i1 %.not32.i.us.1, label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1, label %bb.dd

bb.dd:                                            ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.qv = trunc i64 %indvars.iv to i32
  %i.qw = or disjoint i32 %i.qv, 1
  %i.qx = mul i32 %i.pk, %i.qw
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds i8, ptr %i.ov, i64 %i.qy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.qz, ptr align 1 %i.qt, i64 %i.pm, i1 false)
  store ptr %i.qu, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1

_ZL10stbi__getnP13stbi__contextPhi.exit.us.1:     ; preds = %bb.dd, %_ZL10stbi__getnP13stbi__contextPhi.exit.us
  %i.ra = phi ptr [ %i.qu, %bb.dd ], [ %i.qt, %_ZL10stbi__getnP13stbi__contextPhi.exit.us ] ; 2 uses
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit32.loopexit274.unr-lcssa, label %..thread_crit_edge.i319.us, !llvm.loop !405

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %_ZL10stbi__getnP13stbi__contextPhi.exit
  %.018333 = phi i32 [ %i.ry, %_ZL10stbi__getnP13stbi__contextPhi.exit ], [ 0, %.lr.ph.split.preheader ] ; 3 uses
  %i.rb = xor i32 %.018333, -1
  %i.rc = add nsw i32 %i.mm, %i.rb
  %i.rd = select i1 %.not202.not, i32 %i.rc, i32 %.018333
  %i.re = mul i32 %i.pk, %i.rd
  %i.rf = sext i32 %i.re to i64
  %i.rg = getelementptr inbounds i8, ptr %i.ov, i64 %i.rf ; 3 uses
  %i.rh = load ptr, ptr %i.ow, align 8, !tbaa !33 ; 2 uses
  %.not.i317 = icmp eq ptr %i.rh, null
  br i1 %.not.i317, label %..thread_crit_edge.i319, label %bb.de

..thread_crit_edge.i319:                          ; preds = %.lr.ph.split
  %.pre.i321 = load ptr, ptr %i.b, align 8, !tbaa !35
  %.pre35.i = load ptr, ptr %i.d, align 8, !tbaa !36
  br label %.thread.i318

bb.de:                                            ; preds = %.lr.ph.split
  %i.ri = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.rj = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.rk = ptrtoint ptr %i.ri to i64
  %i.rl = ptrtoint ptr %i.rj to i64
  %i.rm = sub i64 %i.rk, %i.rl                    ; 2 uses
  %i.rn = trunc i64 %i.rm to i32                  ; 2 uses
  %i.ro = icmp sgt i32 %i.pk, %i.rn
  br i1 %i.ro, label %bb.df, label %.thread.i318

bb.df:                                            ; preds = %bb.de
  %sext.i = shl i64 %i.rm, 32
  %i.rp = ashr exact i64 %sext.i, 32              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr align 1 %i.rj, i64 %i.rp, i1 false)
  %i.rq = load ptr, ptr %i.pl, align 8, !tbaa !29
  %i.rr = getelementptr inbounds i8, ptr %i.rg, i64 %i.rp
  %i.rs = sub nsw i32 %i.pk, %i.rn
  %i.rt = tail call noundef i32 %i.rh(ptr noundef %i.rq, ptr noundef nonnull %i.rr, i32 noundef %i.rs), !inline_history !125 ; 0 uses
  %i.ru = load ptr, ptr %i.d, align 8, !tbaa !36
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

.thread.i318:                                     ; preds = %bb.de, %..thread_crit_edge.i319
  %i.rv = phi ptr [ %.pre35.i, %..thread_crit_edge.i319 ], [ %i.ri, %bb.de ]
  %i.rw = phi ptr [ %.pre.i321, %..thread_crit_edge.i319 ], [ %i.rj, %bb.de ] ; 2 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.rw, i64 %i.pm ; 2 uses
  %.not32.i = icmp ugt ptr %i.rx, %i.rv
  br i1 %.not32.i, label %_ZL10stbi__getnP13stbi__contextPhi.exit, label %bb.dg

bb.dg:                                            ; preds = %.thread.i318
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.rg, ptr align 1 %i.rw, i64 %i.pm, i1 false)
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split

_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split: ; preds = %bb.dg, %bb.df
  %.sink245 = phi ptr [ %i.ru, %bb.df ], [ %i.rx, %bb.dg ]
  store ptr %.sink245, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__getnP13stbi__contextPhi.exit

_ZL10stbi__getnP13stbi__contextPhi.exit:          ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.sink.split, %.thread.i318
  %i.ry = add nuw nsw i32 %.018333, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.ry, %i.pp
  br i1 %exitcond.not, label %.loopexit32, label %.lr.ph.split, !llvm.loop !406

bb.dh:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit
  br i1 %i.of, label %bb.di, label %.loopexit30

bb.di:                                            ; preds = %bb.dh
  %i.rz = load ptr, ptr %i.ow, align 8, !tbaa !33
  %.not.i322 = icmp eq ptr %i.rz, null
  br i1 %.not.i322, label %..thread_crit_edge.i324, label %bb.dj

..thread_crit_edge.i324:                          ; preds = %bb.di
  %.pre.i326 = load ptr, ptr %i.b, align 8, !tbaa !35
  br label %.thread.i323

bb.dj:                                            ; preds = %bb.di
  %i.sa = load ptr, ptr %i.d, align 8, !tbaa !36  ; 2 uses
  %i.sb = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %i.sc = ptrtoint ptr %i.sa to i64
  %i.sd = ptrtoint ptr %i.sb to i64
  %i.se = sub i64 %i.sc, %i.sd
  %i.sf = trunc i64 %i.se to i32                  ; 2 uses
  %i.sg = icmp sgt i32 %i.dl, %i.sf
  br i1 %i.sg, label %bb.dk, label %.thread.i323

bb.dk:                                            ; preds = %bb.dj
  store ptr %i.sa, ptr %i.b, align 8, !tbaa !35
  %i.sh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.si = load ptr, ptr %i.sh, align 8, !tbaa !74
  %i.sj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !29
  %i.sl = sub nsw i32 %i.dl, %i.sf
  tail call void %i.si(ptr noundef %i.sk, i32 noundef %i.sl), !inline_history !124
  br label %_ZL10stbi__skipP13stbi__contexti.exit327

.thread.i323:                                     ; preds = %bb.dj, %..thread_crit_edge.i324
  %i.sm = phi ptr [ %.pre.i326, %..thread_crit_edge.i324 ], [ %i.sb, %bb.dj ]
  %i.sn = zext nneg i32 %i.dl to i64
  %i.so = getelementptr inbounds nuw i8, ptr %i.sm, i64 %i.sn
  store ptr %i.so, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__skipP13stbi__contexti.exit327

_ZL10stbi__skipP13stbi__contexti.exit327:         ; preds = %bb.dk, %.thread.i323
  %i.sp = mul nuw nsw i32 %.0189.ph, %i.ff        ; 2 uses
  %i.sq = zext nneg i32 %i.sp to i64
  %i.sr = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.sq) #34 ; 7 uses
  %.not203 = icmp eq ptr %i.sr, null
  br i1 %.not203, label %_ZL17stbi__malloc_mad2iii.exit.thread, label %bb.dl

_ZL17stbi__malloc_mad2iii.exit.thread:            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit327
  tail call void @free(ptr noundef nonnull %i.ov) #33
  store ptr @.str.27, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.fd

bb.dl:                                            ; preds = %_ZL10stbi__skipP13stbi__contexti.exit327
  br i1 %.not204, label %bb.dn, label %.preheader29

.preheader29:                                     ; preds = %bb.dl
  %.not58 = icmp eq i32 %i.ff, 0
  br i1 %.not58, label %.loopexit30, label %.lr.ph36

.lr.ph36:                                         ; preds = %.preheader29
  %i.ss = zext nneg i32 %.0189.ph to i64
  %i.st = or disjoint i32 %i.fe, %i.fc
  br label %bb.dm

bb.dm:                                            ; preds = %.lr.ph36, %bb.dm
  %.017335 = phi ptr [ %i.sr, %.lr.ph36 ], [ %i.su, %bb.dm ] ; 2 uses
  %.118434 = phi i32 [ 0, %.lr.ph36 ], [ %i.sv, %bb.dm ]
  tail call fastcc void @_ZL20stbi__tga_read_rgb16P13stbi__contextPh(ptr noundef %0, ptr noundef %.017335)
  %i.su = getelementptr inbounds nuw i8, ptr %.017335, i64 %i.ss
  %i.sv = add nuw nsw i32 %.118434, 1             ; 2 uses
  %exitcond72.not = icmp eq i32 %i.sv, %i.st
  br i1 %exitcond72.not, label %.loopexit30, label %bb.dm, !llvm.loop !407

bb.dn:                                            ; preds = %bb.dl
  %i.sw = tail call fastcc noundef i32 @_ZL10stbi__getnP13stbi__contextPhi(ptr noundef nonnull %0, ptr noundef nonnull %i.sr, i32 noundef %i.sp)
  %.not205 = icmp eq i32 %i.sw, 0
  br i1 %.not205, label %bb.do, label %.loopexit30

bb.do:                                            ; preds = %bb.dn
  tail call void @free(ptr noundef nonnull %i.ov) #33
  tail call void @free(ptr noundef nonnull %i.sr) #33
  store ptr @.str.94, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %bb.fd

.loopexit30:                                      ; preds = %bb.dm, %.preheader29, %bb.dn, %bb.dh
  %.0187 = phi ptr [ null, %bb.dh ], [ %i.sr, %bb.dn ], [ %i.sr, %.preheader29 ], [ %i.sr, %bb.dm ] ; 3 uses
  %.not59 = icmp eq i32 %i.os, 0
  br i1 %.not59, label %._crit_edge, label %.lr.ph44

.lr.ph44:                                         ; preds = %.loopexit30
  %i.sx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 10 uses
  %i.sy = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 20 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 5 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 12 uses
  %i.tc = icmp eq i8 %.0.i299, 8
  %i.td = zext nneg i32 %.0189.ph to i64          ; 4 uses
  %wide.trip.count89 = zext nneg i32 %i.os to i64
  br label %bb.dp

bb.dp:                                            ; preds = %.lr.ph44, %.loopexit26
  %indvars.iv87 = phi i64 [ 0, %.lr.ph44 ], [ %indvars.iv.next88, %.loopexit26 ] ; 2 uses
  %.not211.not = phi i1 [ true, %.lr.ph44 ], [ false, %.loopexit26 ]
  %.017642 = phi i32 [ 0, %.lr.ph44 ], [ %.117723, %.loopexit26 ] ; 2 uses
  %.017841 = phi i32 [ 0, %.lr.ph44 ], [ %i.wm, %.loopexit26 ] ; 4 uses
  %i.te = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.tf = mul i32 %.0189.ph, %i.te
  %i.tg = zext i32 %i.tf to i64
  %scevgep82 = getelementptr i8, ptr %i.ov, i64 %i.tg
  br i1 %i.oc, label %bb.dq, label %.thread

bb.dq:                                            ; preds = %bb.dp
  %i.th = icmp eq i32 %.017841, 0
  br i1 %i.th, label %bb.dr, label %bb.dx

bb.dr:                                            ; preds = %bb.dq
  %i.ti = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.tj = load ptr, ptr %i.d, align 8, !tbaa !36
  %i.tk = icmp ult ptr %i.ti, %i.tj
  br i1 %i.tk, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.tl = getelementptr inbounds nuw i8, ptr %i.ti, i64 1
  store ptr %i.tl, ptr %i.b, align 8, !tbaa !35
  %i.tm = load i8, ptr %i.ti, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit335

bb.dt:                                            ; preds = %bb.dr
  %i.tn = load i32, ptr %i.sx, align 8, !tbaa !31
  %.not.i330 = icmp eq i32 %i.tn, 0
  br i1 %.not.i330, label %_ZL10stbi__get8P13stbi__context.exit335, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.to = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.tp = load ptr, ptr %i.sy, align 8, !tbaa !29
  %i.tq = load i32, ptr %i.ta, align 4, !tbaa !30
  %i.tr = tail call noundef i32 %i.to(ptr noundef %i.tp, ptr noundef nonnull %i.sz, i32 noundef %i.tq), !inline_history !9 ; 2 uses
  %i.ts = icmp eq i32 %i.tr, 0
  br i1 %i.ts, label %bb.dv, label %bb.dw

bb.dv:                                            ; preds = %bb.du
  store i32 0, ptr %i.sx, align 8, !tbaa !31
  store i8 0, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i332

bb.dw:                                            ; preds = %bb.du
  %i.tt = sext i32 %i.tr to i64
  %i.tu = getelementptr inbounds i8, ptr %i.sz, i64 %i.tt
  %.pre.i331 = load i8, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i332

_ZL19stbi__refill_bufferP13stbi__context.exit.i332: ; preds = %bb.dw, %bb.dv
  %i.tv = phi i8 [ 0, %bb.dv ], [ %.pre.i331, %bb.dw ]
  %.sink.i.i333 = phi ptr [ %i.tb, %bb.dv ], [ %i.tu, %bb.dw ]
  store ptr %.sink.i.i333, ptr %i.d, align 8, !tbaa !36
  store ptr %i.tb, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit335

_ZL10stbi__get8P13stbi__context.exit335:          ; preds = %bb.ds, %bb.dt, %_ZL19stbi__refill_bufferP13stbi__context.exit.i332
  %.0.i334 = phi i8 [ %i.tm, %bb.ds ], [ %i.tv, %_ZL19stbi__refill_bufferP13stbi__context.exit.i332 ], [ 0, %bb.dt ]
  %i.tw = zext i8 %.0.i334 to i32                 ; 2 uses
  %i.tx = and i32 %i.tw, 127
  %i.ty = add nuw nsw i32 %i.tx, 1
  %i.tz = lshr i32 %i.tw, 7
  br label %.thread

bb.dx:                                            ; preds = %bb.dq
  %.not210 = icmp eq i32 %.017642, 0              ; 2 uses
  %brmerge = or i1 %.not210, %.not211.not
  %not..not210 = xor i1 %.not210, true
  %.mux = zext i1 %not..not210 to i32
  br i1 %brmerge, label %.thread, label %.loopexit26

.thread:                                          ; preds = %bb.dx, %bb.dp, %_ZL10stbi__get8P13stbi__context.exit335
  %.117722 = phi i32 [ %.mux, %bb.dx ], [ %i.tz, %_ZL10stbi__get8P13stbi__context.exit335 ], [ %.017642, %bb.dp ] ; 3 uses
  %.117920 = phi i32 [ %.017841, %bb.dx ], [ %i.ty, %_ZL10stbi__get8P13stbi__context.exit335 ], [ %.017841, %bb.dp ] ; 3 uses
  br i1 %i.of, label %bb.dy, label %bb.eq

bb.dy:                                            ; preds = %.thread
  %i.ua = load ptr, ptr %i.b, align 8, !tbaa !35  ; 6 uses
  %i.ub = load ptr, ptr %i.d, align 8, !tbaa !36  ; 3 uses
  %i.uc = icmp ult ptr %i.ua, %i.ub               ; 2 uses
  br i1 %i.tc, label %bb.dz, label %bb.ef

bb.dz:                                            ; preds = %bb.dy
  br i1 %i.uc, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.ud = getelementptr inbounds nuw i8, ptr %i.ua, i64 1
  store ptr %i.ud, ptr %i.b, align 8, !tbaa !35
  %i.ue = load i8, ptr %i.ua, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit341

bb.eb:                                            ; preds = %bb.dz
  %i.uf = load i32, ptr %i.sx, align 8, !tbaa !31
  %.not.i336 = icmp eq i32 %i.uf, 0
  br i1 %.not.i336, label %_ZL10stbi__get8P13stbi__context.exit341, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.ug = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.uh = load ptr, ptr %i.sy, align 8, !tbaa !29
  %i.ui = load i32, ptr %i.ta, align 4, !tbaa !30
  %i.uj = tail call noundef i32 %i.ug(ptr noundef %i.uh, ptr noundef nonnull %i.sz, i32 noundef %i.ui), !inline_history !9 ; 2 uses
  %i.uk = icmp eq i32 %i.uj, 0
  br i1 %i.uk, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.sx, align 8, !tbaa !31
  store i8 0, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i338

bb.ee:                                            ; preds = %bb.ec
  %i.ul = sext i32 %i.uj to i64
  %i.um = getelementptr inbounds i8, ptr %i.sz, i64 %i.ul
  %.pre.i337 = load i8, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i338

_ZL19stbi__refill_bufferP13stbi__context.exit.i338: ; preds = %bb.ee, %bb.ed
  %i.un = phi i8 [ 0, %bb.ed ], [ %.pre.i337, %bb.ee ]
  %.sink.i.i339 = phi ptr [ %i.tb, %bb.ed ], [ %i.um, %bb.ee ]
  store ptr %.sink.i.i339, ptr %i.d, align 8, !tbaa !36
  store ptr %i.tb, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit341

_ZL10stbi__get8P13stbi__context.exit341:          ; preds = %bb.ea, %bb.eb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i338
  %.0.i340 = phi i8 [ %i.ue, %bb.ea ], [ %i.un, %_ZL19stbi__refill_bufferP13stbi__context.exit.i338 ], [ 0, %bb.eb ]
  %i.uo = zext i8 %.0.i340 to i32
  br label %.loopexit26.loopexit

bb.ef:                                            ; preds = %bb.dy
  br i1 %i.uc, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.up = getelementptr inbounds nuw i8, ptr %i.ua, i64 1 ; 2 uses
  store ptr %i.up, ptr %i.b, align 8, !tbaa !35
  %i.uq = load i8, ptr %i.ua, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i346

bb.eh:                                            ; preds = %bb.ef
  %i.ur = load i32, ptr %i.sx, align 8, !tbaa !31
  %.not.i.i342 = icmp eq i32 %i.ur, 0
  br i1 %.not.i.i342, label %_ZL10stbi__get8P13stbi__context.exit.i346, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  %i.us = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.ut = load ptr, ptr %i.sy, align 8, !tbaa !29
  %i.uu = load i32, ptr %i.ta, align 4, !tbaa !30
  %i.uv = tail call noundef i32 %i.us(ptr noundef %i.ut, ptr noundef nonnull %i.sz, i32 noundef %i.uu), !inline_history !11 ; 2 uses
  %i.uw = icmp eq i32 %i.uv, 0
  br i1 %i.uw, label %bb.ej, label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store i32 0, ptr %i.sx, align 8, !tbaa !31
  store i8 0, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344

bb.ek:                                            ; preds = %bb.ei
  %i.ux = sext i32 %i.uv to i64
  %i.uy = getelementptr inbounds i8, ptr %i.sz, i64 %i.ux
  %.pre.i.i343 = load i8, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344: ; preds = %bb.ek, %bb.ej
  %i.uz = phi i8 [ 0, %bb.ej ], [ %.pre.i.i343, %bb.ek ]
  %.sink.i.i.i345 = phi ptr [ %i.tb, %bb.ej ], [ %i.uy, %bb.ek ] ; 2 uses
  store ptr %.sink.i.i.i345, ptr %i.d, align 8, !tbaa !36
  store ptr %i.tb, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i346

_ZL10stbi__get8P13stbi__context.exit.i346:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344, %bb.eh, %bb.eg
  %i.va = phi ptr [ %i.ub, %bb.eg ], [ %.sink.i.i.i345, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ %i.ub, %bb.eh ]
  %i.vb = phi ptr [ %i.up, %bb.eg ], [ %i.tb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ %i.ua, %bb.eh ] ; 3 uses
  %.0.i.i347 = phi i8 [ %i.uq, %bb.eg ], [ %i.uz, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i344 ], [ 0, %bb.eh ]
  %i.vc = icmp ult ptr %i.vb, %i.va
  br i1 %i.vc, label %bb.el, label %bb.em

bb.el:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i346
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 1
  store ptr %i.vd, ptr %i.b, align 8, !tbaa !35
  %i.ve = load i8, ptr %i.vb, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit353

bb.em:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i346
  %i.vf = load i32, ptr %i.sx, align 8, !tbaa !31
  %.not.i2.i348 = icmp eq i32 %i.vf, 0
  br i1 %.not.i2.i348, label %_ZL13stbi__get16leP13stbi__context.exit353, label %bb.en

bb.en:                                            ; preds = %bb.em
  %i.vg = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.vh = load ptr, ptr %i.sy, align 8, !tbaa !29
  %i.vi = load i32, ptr %i.ta, align 4, !tbaa !30
  %i.vj = tail call noundef i32 %i.vg(ptr noundef %i.vh, ptr noundef nonnull %i.sz, i32 noundef %i.vi), !inline_history !11 ; 2 uses
  %i.vk = icmp eq i32 %i.vj, 0
  br i1 %i.vk, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  store i32 0, ptr %i.sx, align 8, !tbaa !31
  store i8 0, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350

bb.ep:                                            ; preds = %bb.en
  %i.vl = sext i32 %i.vj to i64
  %i.vm = getelementptr inbounds i8, ptr %i.sz, i64 %i.vl
  %.pre.i3.i349 = load i8, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350: ; preds = %bb.ep, %bb.eo
  %i.vn = phi i8 [ 0, %bb.eo ], [ %.pre.i3.i349, %bb.ep ]
  %.sink.i.i5.i351 = phi ptr [ %i.tb, %bb.eo ], [ %i.vm, %bb.ep ]
  store ptr %.sink.i.i5.i351, ptr %i.d, align 8, !tbaa !36
  store ptr %i.tb, ptr %i.b, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit353

_ZL13stbi__get16leP13stbi__context.exit353:       ; preds = %bb.el, %bb.em, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350
  %.0.i6.i352 = phi i8 [ %i.ve, %bb.el ], [ %i.vn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i350 ], [ 0, %bb.em ]
  %i.vo = zext i8 %.0.i.i347 to i32
  %i.vp = zext i8 %.0.i6.i352 to i32
  %i.vq = shl nuw nsw i32 %i.vp, 8
  %i.vr = or disjoint i32 %i.vq, %i.vo
  br label %.loopexit26.loopexit

.loopexit26.loopexit:                             ; preds = %_ZL13stbi__get16leP13stbi__context.exit353, %_ZL10stbi__get8P13stbi__context.exit341
  %i.vs = phi i32 [ %i.uo, %_ZL10stbi__get8P13stbi__context.exit341 ], [ %i.vr, %_ZL13stbi__get16leP13stbi__context.exit353 ] ; 2 uses
  %.not213 = icmp samesign ult i32 %i.vs, %i.ff
  %spec.store.select = select i1 %.not213, i32 %i.vs, i32 0
  %i.vt = zext nneg i32 %spec.store.select to i64
  %i.vu = mul nuw nsw i64 %i.td, %i.vt
  %scevgep = getelementptr nuw i8, ptr %.0187, i64 %i.vu
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.a, ptr align 1 %scevgep, i64 %i.td, i1 false), !tbaa !34
  br label %.loopexit26

bb.eq:                                            ; preds = %.thread
  br i1 %.not204, label %.preheader27.preheader, label %bb.er

.preheader27.preheader:                           ; preds = %bb.eq
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !35
  %.pre106 = load ptr, ptr %i.d, align 8, !tbaa !36
  br label %.preheader27

bb.er:                                            ; preds = %bb.eq
  call fastcc void @_ZL20stbi__tga_read_rgb16P13stbi__contextPh(ptr noundef %0, ptr noundef %i.a)
  br label %.loopexit26

.preheader27:                                     ; preds = %.preheader27.preheader, %_ZL10stbi__get8P13stbi__context.exit359
  %i.vv = phi ptr [ %.pre106, %.preheader27.preheader ], [ %i.wj, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 3 uses
  %i.vw = phi ptr [ %.pre, %.preheader27.preheader ], [ %i.wk, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 4 uses
  %indvars.iv73 = phi i64 [ 0, %.preheader27.preheader ], [ %indvars.iv.next74, %_ZL10stbi__get8P13stbi__context.exit359 ] ; 2 uses
  %i.vx = icmp ult ptr %i.vw, %i.vv
  br i1 %i.vx, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.preheader27
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vw, i64 1 ; 2 uses
  store ptr %i.vy, ptr %i.b, align 8, !tbaa !35
  %i.vz = load i8, ptr %i.vw, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit359

bb.et:                                            ; preds = %.preheader27
  %i.wa = load i32, ptr %i.sx, align 8, !tbaa !31
  %.not.i354 = icmp eq i32 %i.wa, 0
  br i1 %.not.i354, label %_ZL10stbi__get8P13stbi__context.exit359, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.wb = load ptr, ptr %i.ow, align 8, !tbaa !33
  %i.wc = load ptr, ptr %i.sy, align 8, !tbaa !29
  %i.wd = load i32, ptr %i.ta, align 4, !tbaa !30
  %i.we = tail call noundef i32 %i.wb(ptr noundef %i.wc, ptr noundef nonnull %i.sz, i32 noundef %i.wd), !inline_history !9 ; 2 uses
  %i.wf = icmp eq i32 %i.we, 0
  br i1 %i.wf, label %bb.ev, label %bb.ew

bb.ev:                                            ; preds = %bb.eu
  store i32 0, ptr %i.sx, align 8, !tbaa !31
  store i8 0, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i356

bb.ew:                                            ; preds = %bb.eu
  %i.wg = sext i32 %i.we to i64
  %i.wh = getelementptr inbounds i8, ptr %i.sz, i64 %i.wg
  %.pre.i355 = load i8, ptr %i.sz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i356

_ZL19stbi__refill_bufferP13stbi__context.exit.i356: ; preds = %bb.ew, %bb.ev
  %i.wi = phi i8 [ 0, %bb.ev ], [ %.pre.i355, %bb.ew ]
  %.sink.i.i357 = phi ptr [ %i.tb, %bb.ev ], [ %i.wh, %bb.ew ] ; 2 uses
  store ptr %.sink.i.i357, ptr %i.d, align 8, !tbaa !36
  store ptr %i.tb, ptr %i.b, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit359

_ZL10stbi__get8P13stbi__context.exit359:          ; preds = %bb.es, %bb.et, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356
  %i.wj = phi ptr [ %i.vv, %bb.es ], [ %.sink.i.i357, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ %i.vv, %bb.et ]
  %i.wk = phi ptr [ %i.vy, %bb.es ], [ %i.tb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ %i.vw, %bb.et ]
  %.0.i358 = phi i8 [ %i.vz, %bb.es ], [ %i.wi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i356 ], [ 0, %bb.et ]
  %i.wl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv73
  store i8 %.0.i358, ptr %i.wl, align 1, !tbaa !34
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %i.td
  br i1 %exitcond77.not, label %.loopexit26, label %.preheader27, !llvm.loop !408

.loopexit26:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit359, %.loopexit26.loopexit, %bb.dx, %bb.er
  %.117723 = phi i32 [ %.117722, %.loopexit26.loopexit ], [ %.117722, %bb.er ], [ 1, %bb.dx ], [ %.117722, %_ZL10stbi__get8P13stbi__context.exit359 ]
  %.117921 = phi i32 [ %.117920, %.loopexit26.loopexit ], [ %.117920, %bb.er ], [ %.017841, %bb.dx ], [ %.117920, %_ZL10stbi__get8P13stbi__context.exit359 ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %scevgep82, ptr nonnull align 4 %i.a, i64 %i.td, i1 false), !tbaa !34
  %i.wm = add nsw i32 %.117921, -1
  %indvars.iv.next88 = add nuw nsw i64 %indvars.iv87, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next88, %wide.trip.count89
  br i1 %exitcond90.not, label %._crit_edge, label %bb.dp, !llvm.loop !409

._crit_edge:                                      ; preds = %.loopexit26, %.loopexit30
  %.not206.not = icmp eq i8 %i.oe, 0
  %i.wn = icmp ne i32 %i.mm, 0
  %or.cond56 = select i1 %.not206.not, i1 %i.wn, i1 false
  br i1 %or.cond56, label %.lr.ph52, label %.loopexit25

.lr.ph52:                                         ; preds = %._crit_edge
  %i.wo = mul nuw nsw i32 %.0189.ph, %i.ks        ; 11 uses
  %8 = icmp sgt i32 %i.wo, 0
  br i1 %8, label %.lr.ph49.preheader, label %.loopexit25

.lr.ph49.preheader:                               ; preds = %.lr.ph52
  %i.wp = or disjoint i32 %i.ml, %i.mj
  %i.wq = add nsw i32 %i.wp, -1                   ; 2 uses
  %i.wr = mul nsw i32 %.0189.ph, %i.wq
  %i.ws = or disjoint i32 %i.kr, %i.kp
  %i.wt = mul i32 %i.wr, %i.ws
  %9 = lshr i32 %i.wq, 1
  %i.wu = zext nneg i32 %i.wo to i64              ; 2 uses
  %scevgep251.a = getelementptr i8, ptr %i.ov, i64 %i.wu
  %i.wv = or disjoint i32 %i.ml, %i.mj
  %i.ww = add nsw i32 %i.wv, -1
  %i.wx = mul i32 %.0189.ph, %i.ww
  %i.wy = or disjoint i32 %i.kr, %i.kp            ; 2 uses
  %i.wz = mul i32 %i.wx, %i.wy
  %10 = mul i32 %.0189.ph, %i.wy
  %scevgep255 = getelementptr i8, ptr %i.ov, i64 %i.wu
  %i.xa = zext nneg i32 %i.wo to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.wo, 4
  %min.iters.check257 = icmp ult i32 %i.wo, 32
  %i.xb = and i64 %i.xa, 28
  %n.vec = and i64 %i.xa, 2147483616              ; 6 uses
  %i.xc = trunc nuw nsw i64 %n.vec to i32
  %i.xd = sub nsw i32 %i.wo, %i.xc
  %cmp.n = icmp eq i64 %n.vec, %i.xa
  %min.epilog.iters.check = icmp eq i64 %i.xb, 0
  %n.vec263 = and i64 %i.xa, 2147483644           ; 5 uses
  %i.xe = trunc nuw nsw i64 %n.vec263 to i32
  %i.xf = sub nsw i32 %i.wo, %i.xe
  %cmp.n268 = icmp eq i64 %n.vec263, %i.xa
  br label %iter.check

iter.check:                                       ; preds = %.lr.ph49.preheader, %._crit_edge50
  %indvars.iv97 = phi i32 [ 0, %.lr.ph49.preheader ], [ %indvars.iv.next98, %._crit_edge50 ] ; 3 uses
  %indvars.iv93 = phi i32 [ %i.wt, %.lr.ph49.preheader ], [ %indvars.iv.next94, %._crit_edge50 ] ; 2 uses
  %.351 = phi i32 [ 0, %.lr.ph49.preheader ], [ %i.ya, %._crit_edge50 ] ; 3 uses
  %i.xg = sext i32 %indvars.iv93 to i64           ; 6 uses
  %i.xh = zext i32 %indvars.iv97 to i64           ; 6 uses
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.xi = mul i32 %10, %.351
  %i.xj = sub i32 %i.wz, %i.xi
  %i.xk = sext i32 %i.xj to i64                   ; 2 uses
  %scevgep255.a = getelementptr i8, ptr %scevgep255, i64 %i.xk
  %scevgep253.a = getelementptr i8, ptr %i.ov, i64 %i.xk
  %i.xl = zext i32 %indvars.iv97 to i64           ; 2 uses
  %scevgep252 = getelementptr i8, ptr %scevgep251.a, i64 %i.xl
  %scevgep250 = getelementptr nuw i8, ptr %i.ov, i64 %i.xl
  %bound0 = icmp ult ptr %scevgep250, %scevgep255.a
  %bound1 = icmp ult ptr %scevgep253.a, %scevgep252
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  br i1 %min.iters.check257, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.xm = add nuw nsw i64 %n.vec, %i.xh
  %i.xn = add nsw i64 %n.vec, %i.xg
  %invariant.gep = getelementptr i8, ptr %i.ov, i64 %i.xh
  %invariant.gep291 = getelementptr i8, ptr %i.ov, i64 %i.xg
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %gep = getelementptr i8, ptr %invariant.gep, i64 %index ; 3 uses
  %i.xo = getelementptr inbounds nuw i8, ptr %gep, i64 16 ; 2 uses
  %wide.load = load <16 x i8>, ptr %gep, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  %wide.load258 = load <16 x i8>, ptr %i.xo, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  %gep292 = getelementptr i8, ptr %invariant.gep291, i64 %index ; 3 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %gep292, i64 16 ; 2 uses
  %wide.load259 = load <16 x i8>, ptr %gep292, align 1, !tbaa !34, !alias.scope !420
  %wide.load260 = load <16 x i8>, ptr %i.xp, align 1, !tbaa !34, !alias.scope !420
  store <16 x i8> %wide.load259, ptr %gep, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  store <16 x i8> %wide.load260, ptr %i.xo, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  store <16 x i8> %wide.load, ptr %gep292, align 1, !tbaa !34, !alias.scope !420
  store <16 x i8> %wide.load258, ptr %i.xp, align 1, !tbaa !34, !alias.scope !420
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.xq = icmp eq i64 %index.next, %n.vec
  br i1 %i.xq, label %middle.block, label %vector.body, !llvm.loop !413

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge50, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !63

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %i.xr = add nuw nsw i64 %n.vec263, %i.xh
  %i.xs = add nsw i64 %n.vec263, %i.xg
  %invariant.gep293 = getelementptr i8, ptr %i.ov, i64 %i.xh
  %invariant.gep295 = getelementptr i8, ptr %i.ov, i64 %i.xg
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index264 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next267, %vec.epilog.vector.body ] ; 3 uses
  %gep294 = getelementptr i8, ptr %invariant.gep293, i64 %index264 ; 2 uses
  %wide.load265 = load <4 x i8>, ptr %gep294, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  %gep296 = getelementptr i8, ptr %invariant.gep295, i64 %index264 ; 2 uses
  %wide.load266 = load <4 x i8>, ptr %gep296, align 1, !tbaa !34, !alias.scope !420
  store <4 x i8> %wide.load266, ptr %gep294, align 1, !tbaa !34, !alias.scope !419, !noalias !420
  store <4 x i8> %wide.load265, ptr %gep296, align 1, !tbaa !34, !alias.scope !420
  %index.next267 = add nuw i64 %index264, 4       ; 2 uses
  %i.xt = icmp eq i64 %index.next267, %n.vec263
  br i1 %i.xt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !414

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n268, label %._crit_edge50, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv99.ph = phi i64 [ %i.xh, %iter.check ], [ %i.xh, %vector.memcheck ], [ %i.xm, %vec.epilog.iter.check ], [ %i.xr, %vec.epilog.middle.block ]
  %indvars.iv95.ph = phi i64 [ %i.xg, %iter.check ], [ %i.xg, %vector.memcheck ], [ %i.xn, %vec.epilog.iter.check ], [ %i.xs, %vec.epilog.middle.block ]
  %.318645.ph = phi i32 [ %i.wo, %iter.check ], [ %i.wo, %vector.memcheck ], [ %i.xd, %vec.epilog.iter.check ], [ %i.xf, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv99 = phi i64 [ %indvars.iv.next100, %vec.epilog.scalar.ph ], [ %indvars.iv99.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %indvars.iv95 = phi i64 [ %indvars.iv.next96, %vec.epilog.scalar.ph ], [ %indvars.iv95.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.318645 = phi i32 [ %i.xy, %vec.epilog.scalar.ph ], [ %.318645.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %i.ov, i64 %indvars.iv99 ; 2 uses
  %i.xv = load i8, ptr %i.xu, align 1, !tbaa !34
  %i.xw = getelementptr inbounds i8, ptr %i.ov, i64 %indvars.iv95 ; 2 uses
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !34
  store i8 %i.xx, ptr %i.xu, align 1, !tbaa !34
  store i8 %i.xv, ptr %i.xw, align 1, !tbaa !34
  %indvars.iv.next100 = add nuw nsw i64 %indvars.iv99, 1
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, 1
  %i.xy = add nsw i32 %.318645, -1
  %i.xz = icmp sgt i32 %.318645, 1
  br i1 %i.xz, label %vec.epilog.scalar.ph, label %._crit_edge50, !llvm.loop !415

._crit_edge50:                                    ; preds = %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %i.ya = add nuw nsw i32 %.351, 1
  %indvars.iv.next94 = sub i32 %indvars.iv93, %i.wo
  %indvars.iv.next98 = add i32 %indvars.iv97, %i.wo
  %exitcond104.not = icmp eq i32 %.351, %9
  br i1 %exitcond104.not, label %.loopexit25, label %iter.check, !llvm.loop !416

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
  %.epil.init279 = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.us.preheader ], [ %i.qm, %.loopexit32.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod281 = trunc i8 %.0.i.i288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod281)
  %i.yb = getelementptr inbounds nuw i8, ptr %.epil.init279, i64 %i.pm ; 2 uses
  %.not32.i.us.us.epil = icmp ugt ptr %i.yb, %.pre35.i.us
  br i1 %.not32.i.us.us.epil, label %.loopexit32, label %bb.ey

bb.ey:                                            ; preds = %..thread_crit_edge.i319.us.us.epil.preheader
  %i.yc = trunc i64 %indvars.iv67.epil.init to i32
  %i.yd = xor i32 %i.yc, -1
  %i.ye = add i32 %i.mm, %i.yd
  %i.yf = mul i32 %i.pk, %i.ye
  %i.yg = sext i32 %i.yf to i64
  %i.yh = getelementptr inbounds i8, ptr %i.ov, i64 %i.yg
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.yh, ptr align 1 %.epil.init279, i64 %i.pm, i1 false)
  store ptr %i.yb, ptr %i.b, align 8, !tbaa !35
  br label %.loopexit32

.loopexit32.loopexit274.unr-lcssa:                ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit.us.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit32, label %..thread_crit_edge.i319.us.epil.preheader

..thread_crit_edge.i319.us.epil.preheader:        ; preds = %.loopexit32.loopexit274.unr-lcssa, %..thread_crit_edge.i319.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %..thread_crit_edge.i319.us.preheader ], [ %indvars.iv.next.1, %.loopexit32.loopexit274.unr-lcssa ]
  %.epil.init = phi ptr [ %.promoted, %..thread_crit_edge.i319.us.preheader ], [ %i.ra, %.loopexit32.loopexit274.unr-lcssa ] ; 2 uses
  %lcmp.mod276 = trunc i8 %.0.i.i288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod276)
  %i.yi = getelementptr inbounds nuw i8, ptr %.epil.init, i64 %i.pm ; 2 uses
  %.not32.i.us.epil = icmp ugt ptr %i.yi, %.pre35.i.us
  br i1 %.not32.i.us.epil, label %.loopexit32, label %bb.ez

bb.ez:                                            ; preds = %..thread_crit_edge.i319.us.epil.preheader
  %i.yj = trunc nuw nsw i64 %indvars.iv.epil.init to i32
  %i.yk = mul i32 %i.pk, %i.yj
  %i.yl = sext i32 %i.yk to i64
  %i.ym = getelementptr inbounds i8, ptr %i.ov, i64 %i.yl
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ym, ptr align 1 %.epil.init, i64 %i.pm, i1 false)
  store ptr %i.yi, ptr %i.b, align 8, !tbaa !35
  br label %.loopexit32

.loopexit32:                                      ; preds = %_ZL10stbi__getnP13stbi__contextPhi.exit, %.loopexit32.loopexit274.unr-lcssa, %bb.ez, %..thread_crit_edge.i319.us.epil.preheader, %.loopexit32.loopexit.unr-lcssa, %bb.ey, %..thread_crit_edge.i319.us.us.epil.preheader, %.preheader31, %.loopexit25, %bb.ex
  %i.yn = icmp samesign ult i32 %.0189.ph, 3
  %.not61 = icmp eq i32 %i.os, 0
  %i.yo = or i1 %i.yn, %.not61
  %or.cond246 = or i1 %i.yo, %i.ok
  br i1 %or.cond246, label %.loopexit, label %.lr.ph55

.lr.ph55:                                         ; preds = %.loopexit32
  %i.yp = zext nneg i32 %.0189.ph to i64          ; 5 uses
  %i.yq = add i32 %i.os, -1
  %xtraiter284 = and i32 %i.os, 3                 ; 3 uses
  %i.yr = icmp ult i32 %i.yq, 3
  br i1 %i.yr, label %.epil.preheader, label %.lr.ph55.new

.lr.ph55.new:                                     ; preds = %.lr.ph55
  %unroll_iter287 = and i32 %i.os, -4
  br label %bb.fa

bb.fa:                                            ; preds = %bb.fa, %.lr.ph55.new
  %.017054 = phi ptr [ %i.ov, %.lr.ph55.new ], [ %i.zh, %bb.fa ] ; 4 uses
  %niter288 = phi i32 [ 0, %.lr.ph55.new ], [ %niter288.next.3, %bb.fa ]
  %i.ys = load i8, ptr %.017054, align 1, !tbaa !34
  %i.yt = getelementptr inbounds nuw i8, ptr %.017054, i64 2 ; 2 uses
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !34
  store i8 %i.yu, ptr %.017054, align 1, !tbaa !34
  store i8 %i.ys, ptr %i.yt, align 1, !tbaa !34
  %i.yv = getelementptr inbounds nuw i8, ptr %.017054, i64 %i.yp ; 4 uses
  %i.yw = load i8, ptr %i.yv, align 1, !tbaa !34
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yv, i64 2 ; 2 uses
  %i.yy = load i8, ptr %i.yx, align 1, !tbaa !34
  store i8 %i.yy, ptr %i.yv, align 1, !tbaa !34
  store i8 %i.yw, ptr %i.yx, align 1, !tbaa !34
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yv, i64 %i.yp ; 4 uses
  %i.za = load i8, ptr %i.yz, align 1, !tbaa !34
  %i.zb = getelementptr inbounds nuw i8, ptr %i.yz, i64 2 ; 2 uses
  %i.zc = load i8, ptr %i.zb, align 1, !tbaa !34
  store i8 %i.zc, ptr %i.yz, align 1, !tbaa !34
  store i8 %i.za, ptr %i.zb, align 1, !tbaa !34
  %i.zd = getelementptr inbounds nuw i8, ptr %i.yz, i64 %i.yp ; 4 uses
  %i.ze = load i8, ptr %i.zd, align 1, !tbaa !34
  %i.zf = getelementptr inbounds nuw i8, ptr %i.zd, i64 2 ; 2 uses
  %i.zg = load i8, ptr %i.zf, align 1, !tbaa !34
  store i8 %i.zg, ptr %i.zd, align 1, !tbaa !34
  store i8 %i.ze, ptr %i.zf, align 1, !tbaa !34
  %i.zh = getelementptr inbounds nuw i8, ptr %i.zd, i64 %i.yp ; 2 uses
  %niter288.next.3 = add i32 %niter288, 4         ; 2 uses
  %niter288.ncmp.3 = icmp eq i32 %niter288.next.3, %unroll_iter287
  br i1 %niter288.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.fa, !llvm.loop !417

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.fa
  %lcmp.mod285.not = icmp eq i32 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph55
  %.017054.epil.init = phi ptr [ %i.ov, %.lr.ph55 ], [ %i.zh, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod286 = icmp ne i32 %xtraiter284, 0
  tail call void @llvm.assume(i1 %lcmp.mod286)
  br label %bb.fb

bb.fb:                                            ; preds = %bb.fb, %.epil.preheader
  %.017054.epil = phi ptr [ %.017054.epil.init, %.epil.preheader ], [ %i.zl, %bb.fb ] ; 4 uses
  %epil.iter = phi i32 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fb ]
  %i.zi = load i8, ptr %.017054.epil, align 1, !tbaa !34
  %i.zj = getelementptr inbounds nuw i8, ptr %.017054.epil, i64 2 ; 2 uses
  %i.zk = load i8, ptr %i.zj, align 1, !tbaa !34
  store i8 %i.zk, ptr %.017054.epil, align 1, !tbaa !34
  store i8 %i.zi, ptr %i.zj, align 1, !tbaa !34
  %i.zl = getelementptr inbounds nuw i8, ptr %.017054.epil, i64 %i.yp
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter284
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.fb, !llvm.loop !418

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.fb, %.loopexit32
  %.not208 = icmp eq i32 %4, 0
  %.not209 = icmp eq i32 %4, %.0189.ph
  %or.cond216 = or i1 %.not208, %.not209
  br i1 %or.cond216, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %.loopexit
  %i.zm = tail call fastcc noundef ptr @_ZL20stbi__convert_formatPhiijj(ptr noundef nonnull %i.ov, i32 noundef %.0189.ph, i32 noundef %4, i32 noundef %i.ks, i32 noundef %i.mm)
  br label %bb.fd

bb.fd:                                            ; preds = %.loopexit, %bb.fc, %bb.do, %_ZL17stbi__malloc_mad2iii.exit.thread, %_ZL17stbi__malloc_mad3iiii.exit.thread, %bb.cw, %_ZL18stbi__tga_get_compiiPi.exit
  %.0 = phi ptr [ null, %_ZL18stbi__tga_get_compiiPi.exit ], [ null, %bb.do ], [ null, %_ZL17stbi__malloc_mad2iii.exit.thread ], [ null, %_ZL17stbi__malloc_mad3iiii.exit.thread ], [ null, %bb.cw ], [ %i.zm, %bb.fc ], [ %i.ov, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL24stbi__decode_jpeg_headerP10stbi__jpegi(ptr nofree noundef captures(none) initializes((18472, 18473), (18504, 18512)) %0, i32 noundef range(i32 0, 3) %1) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 18504
  store i32 0, ptr %i.a, align 8, !tbaa !79
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 18508
  store i32 -1, ptr %i.b, align 4, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 18472
  store i8 -1, ptr %i.c, align 8, !tbaa !81
  %i.d = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef %0)
  %i.e = icmp eq i8 %i.d, -40
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @.str.7, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.loopexit30

bb.c:                                             ; preds = %bb.a
  %i.f = icmp eq i32 %1, 1
  br i1 %i.f, label %.loopexit30, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef nonnull %0) ; 3 uses
  %.034 = zext i8 %i.g to i32                     ; 2 uses
  %i.h = and i32 %.034, 254
  %or.cond35 = icmp ne i32 %i.h, 192
  %i.i = icmp ne i8 %i.g, -62
  %spec.select36 = and i1 %i.i, %or.cond35
  br i1 %spec.select36, label %.lr.ph38, label %._crit_edge

.loopexit:                                        ; preds = %_ZL12stbi__at_eofP13stbi__context.exit.thread, %bb.e
  %.1.in.lcssa = phi i8 [ %i.m, %bb.e ], [ %i.ad, %_ZL12stbi__at_eofP13stbi__context.exit.thread ] ; 3 uses
  %.0 = zext i8 %.1.in.lcssa to i32               ; 2 uses
  %i.j = and i32 %.0, 254
  %or.cond = icmp ne i32 %i.j, 192
  %i.k = icmp ne i8 %.1.in.lcssa, -62
  %spec.select = and i1 %i.k, %or.cond
  br i1 %spec.select, label %.lr.ph38, label %._crit_edge, !llvm.loop !421

.lr.ph38:                                         ; preds = %bb.d, %.loopexit
  %.037 = phi i32 [ %.0, %.loopexit ], [ %.034, %bb.d ]
  %i.l = tail call fastcc noundef i32 @_ZL20stbi__process_markerP10stbi__jpegi(ptr noundef nonnull %0, i32 noundef %.037)
  %.not23 = icmp eq i32 %i.l, 0
  br i1 %.not23, label %.loopexit30, label %bb.e

bb.e:                                             ; preds = %.lr.ph38
  %i.m = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef nonnull %0) ; 2 uses
  %i.n = icmp eq i8 %i.m, -1
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e, %_ZL12stbi__at_eofP13stbi__context.exit.thread
  %i.o = load ptr, ptr %0, align 8, !tbaa !65     ; 6 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZL12stbi__at_eofP13stbi__context.exit, label %bb.f

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !106
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = tail call noundef i32 %i.s(ptr noundef %i.u), !inline_history !10
  %.not6.i = icmp eq i32 %i.v, 0
  br i1 %.not6.i, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.x = load i32, ptr %i.w, align 8, !tbaa !31
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %_ZL12stbi__at_eofP13stbi__context.exit.thread27, label %_ZL12stbi__at_eofP13stbi__context.exit

_ZL12stbi__at_eofP13stbi__context.exit:           ; preds = %.lr.ph, %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 184
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !35
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 192
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !36
  %.not = icmp ult ptr %i.aa, %i.ac
  br i1 %.not, label %_ZL12stbi__at_eofP13stbi__context.exit.thread, label %_ZL12stbi__at_eofP13stbi__context.exit.thread27

_ZL12stbi__at_eofP13stbi__context.exit.thread27:  ; preds = %bb.g, %_ZL12stbi__at_eofP13stbi__context.exit
  store ptr @.str.8, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.loopexit30

_ZL12stbi__at_eofP13stbi__context.exit.thread:    ; preds = %bb.f, %_ZL12stbi__at_eofP13stbi__context.exit
  %i.ad = tail call fastcc noundef zeroext i8 @_ZL16stbi__get_markerP10stbi__jpeg(ptr noundef nonnull %0) ; 2 uses
  %i.ae = icmp eq i8 %i.ad, -1
  br i1 %i.ae, label %.lr.ph, label %.loopexit, !llvm.loop !422

._crit_edge:                                      ; preds = %.loopexit, %bb.d
  %.0.in.lcssa = phi i8 [ %i.g, %bb.d ], [ %.1.in.lcssa, %.loopexit ]
  %i.af = icmp eq i8 %.0.in.lcssa, -62
  %i.ag = zext i1 %i.af to i32
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 18480
  store i32 %i.ag, ptr %i.ah, align 8, !tbaa !89
  %i.ai = tail call fastcc noundef i32 @_ZL26stbi__process_frame_headerP10stbi__jpegi(ptr noundef nonnull %0, i32 noundef %1)
  br label %.loopexit30

.loopexit30:                                      ; preds = %.lr.ph38, %._crit_edge, %bb.c, %_ZL12stbi__at_eofP13stbi__context.exit.thread27, %bb.b
  %.021 = phi i32 [ 0, %bb.b ], [ 0, %_ZL12stbi__at_eofP13stbi__context.exit.thread27 ], [ 1, %bb.c ], [ %i.ai, %._crit_edge ], [ 0, %.lr.ph38 ]
  ret i32 %.021
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZL15stbi__idct_simdPhiPs(ptr nofree noundef writeonly captures(none) initializes((0, 8)) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) #14 {
bb.a:
  %i.a = load <8 x i16>, ptr %2, align 16, !tbaa !34 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.c = load <8 x i16>, ptr %i.b, align 16, !tbaa !34 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.e = load <8 x i16>, ptr %i.d, align 16, !tbaa !34 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.g = load <8 x i16>, ptr %i.f, align 16, !tbaa !34 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.i = load <8 x i16>, ptr %i.h, align 16, !tbaa !34 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.k = load <8 x i16>, ptr %i.j, align 16, !tbaa !34 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96
  %i.m = load <8 x i16>, ptr %i.l, align 16, !tbaa !34 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.o = load <8 x i16>, ptr %i.n, align 16, !tbaa !34 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZL14stbi__tga_infoP13stbi__contextPiS1_S1_:bb.a
_ZL10stbi__get8P13stbi__context.exit.i117:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i115, %bb.aw, %bb.av
  %i.gy = phi ptr [ %i.fw, %bb.av ], [ %.sink.i.i.i116, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i115 ], [ %i.fw, %bb.aw ] ; 3 uses
  %i.gz = phi ptr [ %i.gg, %bb.av ], [ %i.gx, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i115 ], [ %i.fx, %bb.aw ] ; 4 uses
  %.0.i.i118 = phi i8 [ %i.gh, %bb.av ], [ %i.gw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i115 ], [ 0, %bb.aw ]
  %i.ha = icmp ult ptr %i.gz, %i.gy
  br i1 %i.ha, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i117
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gz, i64 1 ; 2 uses
  store ptr %i.hb, ptr %i.a, align 8, !tbaa !35
  %i.hc = load i8, ptr %i.gz, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit124

bb.bb:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i117
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.he = load i32, ptr %i.hd, align 8, !tbaa !31
  %.not.i2.i119 = icmp eq i32 %i.he, 0
  br i1 %.not.i2.i119, label %_ZL13stbi__get16leP13stbi__context.exit124, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !33
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !29
  %i.hj = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !30
  %i.hm = tail call noundef i32 %i.hg(ptr noundef %i.hi, ptr noundef nonnull %i.hj, i32 noundef %i.hl), !inline_history !11 ; 2 uses
  %i.hn = icmp eq i32 %i.hm, 0
  br i1 %i.hn, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  store i32 0, ptr %i.hd, align 8, !tbaa !31
  %i.ho = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.hj, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121

bb.be:                                            ; preds = %bb.bc
  %i.hp = sext i32 %i.hm to i64
  %i.hq = getelementptr inbounds i8, ptr %i.hj, i64 %i.hp
  %.pre.i3.i120 = load i8, ptr %i.hj, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121: ; preds = %bb.be, %bb.bd
  %i.hr = phi i8 [ 0, %bb.bd ], [ %.pre.i3.i120, %bb.be ]
  %.sink.i.i5.i122 = phi ptr [ %i.ho, %bb.bd ], [ %i.hq, %bb.be ] ; 2 uses
  store ptr %.sink.i.i5.i122, ptr %i.c, align 8, !tbaa !36
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.hs, ptr %i.a, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit124

_ZL13stbi__get16leP13stbi__context.exit124:       ; preds = %bb.ba, %bb.bb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121
  %i.ht = phi ptr [ %i.gy, %bb.ba ], [ %.sink.i.i5.i122, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121 ], [ %i.gy, %bb.bb ] ; 3 uses
  %i.hu = phi ptr [ %i.hb, %bb.ba ], [ %i.hs, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121 ], [ %i.gz, %bb.bb ] ; 4 uses
  %.0.i6.i123 = phi i8 [ %i.hc, %bb.ba ], [ %i.hr, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i121 ], [ 0, %bb.bb ]
  %i.hv = zext i8 %.0.i.i118 to i32
  %i.hw = zext i8 %.0.i6.i123 to i32
  %i.hx = shl nuw nsw i32 %i.hw, 8
  %i.hy = or disjoint i32 %i.hx, %i.hv            ; 2 uses
  %i.hz = icmp eq i32 %i.hy, 0
  br i1 %i.hz, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit124
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ib = load <2 x ptr>, ptr %i.ia, align 8, !tbaa !23
  store <2 x ptr> %i.ib, ptr %i.a, align 8, !tbaa !23
  br label %bb.cd

bb.bg:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit124
  %i.ic = icmp ult ptr %i.hu, %i.ht
  br i1 %i.ic, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.id = getelementptr inbounds nuw i8, ptr %i.hu, i64 1 ; 2 uses
  store ptr %i.id, ptr %i.a, align 8, !tbaa !35
  %i.ie = load i8, ptr %i.hu, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit130

bb.bi:                                            ; preds = %bb.bg
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ig = load i32, ptr %i.if, align 8, !tbaa !31
  %.not.i125 = icmp eq i32 %i.ig, 0
  br i1 %.not.i125, label %_ZL10stbi__get8P13stbi__context.exit130, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !33
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !29
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.in = load i32, ptr %i.im, align 4, !tbaa !30
  %i.io = tail call noundef i32 %i.ii(ptr noundef %i.ik, ptr noundef nonnull %i.il, i32 noundef %i.in), !inline_history !9 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  store i32 0, ptr %i.if, align 8, !tbaa !31
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.il, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i127

bb.bl:                                            ; preds = %bb.bj
  %i.ir = sext i32 %i.io to i64
  %i.is = getelementptr inbounds i8, ptr %i.il, i64 %i.ir
  %.pre.i126 = load i8, ptr %i.il, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i127

_ZL19stbi__refill_bufferP13stbi__context.exit.i127: ; preds = %bb.bl, %bb.bk
  %i.it = phi i8 [ 0, %bb.bk ], [ %.pre.i126, %bb.bl ]
  %.sink.i.i128 = phi ptr [ %i.iq, %bb.bk ], [ %i.is, %bb.bl ] ; 2 uses
  store ptr %.sink.i.i128, ptr %i.c, align 8, !tbaa !36
  %i.iu = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.iu, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit130

_ZL10stbi__get8P13stbi__context.exit130:          ; preds = %bb.bh, %bb.bi, %_ZL19stbi__refill_bufferP13stbi__context.exit.i127
  %i.iv = phi ptr [ %i.ht, %bb.bh ], [ %.sink.i.i128, %_ZL19stbi__refill_bufferP13stbi__context.exit.i127 ], [ %i.ht, %bb.bi ]
  %i.iw = phi ptr [ %i.id, %bb.bh ], [ %i.iu, %_ZL19stbi__refill_bufferP13stbi__context.exit.i127 ], [ %i.hu, %bb.bi ] ; 2 uses
  %.0.i129 = phi i8 [ %i.ie, %bb.bh ], [ %i.it, %_ZL19stbi__refill_bufferP13stbi__context.exit.i127 ], [ 0, %bb.bi ] ; 3 uses
  %i.ix = icmp ult ptr %i.iw, %i.iv
  br i1 %i.ix, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit130
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iw, i64 1
  br label %_ZL10stbi__get8P13stbi__context.exit136.sink.split

bb.bn:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit130
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ja = load i32, ptr %i.iz, align 8, !tbaa !31
  %.not.i131 = icmp eq i32 %i.ja, 0
  br i1 %.not.i131, label %_ZL10stbi__get8P13stbi__context.exit136, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jb = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !33
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !29
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jh = load i32, ptr %i.jg, align 4, !tbaa !30
  %i.ji = tail call noundef i32 %i.jc(ptr noundef %i.je, ptr noundef nonnull %i.jf, i32 noundef %i.jh), !inline_history !9 ; 2 uses
  %i.jj = icmp eq i32 %i.ji, 0
  br i1 %i.jj, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i32 0, ptr %i.iz, align 8, !tbaa !31
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.jf, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i133

bb.bq:                                            ; preds = %bb.bo
  %i.jl = sext i32 %i.ji to i64
  %i.jm = getelementptr inbounds i8, ptr %i.jf, i64 %i.jl
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i133

_ZL19stbi__refill_bufferP13stbi__context.exit.i133: ; preds = %bb.bq, %bb.bp
  %.sink.i.i134 = phi ptr [ %i.jk, %bb.bp ], [ %i.jm, %bb.bq ]
  store ptr %.sink.i.i134, ptr %i.c, align 8, !tbaa !36
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 57
  br label %_ZL10stbi__get8P13stbi__context.exit136.sink.split

_ZL10stbi__get8P13stbi__context.exit136.sink.split: ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i133, %bb.bm
  %.sink205 = phi ptr [ %i.iy, %bb.bm ], [ %i.jn, %_ZL19stbi__refill_bufferP13stbi__context.exit.i133 ]
  store ptr %.sink205, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit136

_ZL10stbi__get8P13stbi__context.exit136:          ; preds = %_ZL10stbi__get8P13stbi__context.exit136.sink.split, %bb.bn
  %.not = icmp eq i8 %.0.shrunk, 0
  br i1 %.not, label %bb.bu, label %bb.br

bb.br:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit136
  switch i8 %.0.i129, label %bb.bs [
    i8 16, label %bb.bt
    i8 8, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.jo = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jp = load <2 x ptr>, ptr %i.jo, align 8, !tbaa !23
  store <2 x ptr> %i.jp, ptr %i.a, align 8, !tbaa !23
  br label %bb.cd

bb.bt:                                            ; preds = %bb.br, %bb.br
  %switch.tableidx = add i8 %.0.shrunk, -8        ; 3 uses
  %i.jq = icmp ult i8 %switch.tableidx, 25
  br i1 %i.jq, label %switch.hole_check, label %_ZL18stbi__tga_get_compiiPi.exit.thread148

bb.bu:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit136
  switch i8 %.0.i129, label %_ZL18stbi__tga_get_compiiPi.exit.thread148 [
    i8 8, label %_ZL18stbi__tga_get_compiiPi.exit.thread
    i8 16, label %bb.bv
    i8 15, label %bb.bw
    i8 24, label %bb.bx
    i8 32, label %bb.bx
  ]

bb.bv:                                            ; preds = %bb.bu
  %i.jr = and i8 %.0.i91, -9
  %i.js = icmp eq i8 %i.jr, 3
  %4 = zext i1 %i.js to i32
  %.mux.i = xor i32 %4, 3
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bw:                                            ; preds = %bb.bu
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

bb.bx:                                            ; preds = %bb.bu, %bb.bu
  %i.jt = lshr i8 %.0.i129, 3
  %i.ju = zext nneg i8 %i.jt to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread148:       ; preds = %switch.hole_check, %bb.bt, %bb.bu
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.jw = load <2 x ptr>, ptr %i.jv, align 8, !tbaa !23
  store <2 x ptr> %i.jw, ptr %i.a, align 8, !tbaa !23
  br label %bb.cd

switch.hole_check:                                ; preds = %bb.bt
  %switch.maskindex = zext nneg i8 %switch.tableidx to i32
  %switch.shifted = lshr i32 16843137, %switch.maskindex
  %switch.lobit = trunc i32 %switch.shifted to i1
  br i1 %switch.lobit, label %switch.lookup, label %_ZL18stbi__tga_get_compiiPi.exit.thread148

switch.lookup:                                    ; preds = %switch.hole_check
  %i.jx = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZL14stbi__tga_infoP13stbi__contextPiS1_S1_, i64 %i.jx
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i32
  br label %_ZL18stbi__tga_get_compiiPi.exit.thread

_ZL18stbi__tga_get_compiiPi.exit.thread:          ; preds = %switch.lookup, %bb.bw, %bb.bv, %bb.bu, %bb.bx
  %.069146 = phi i32 [ %switch.ext, %switch.lookup ], [ 3, %bb.bw ], [ %.mux.i, %bb.bv ], [ 1, %bb.bu ], [ %i.ju, %bb.bx ]
  %.not78 = icmp eq ptr %1, null
  br i1 %.not78, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %_ZL18stbi__tga_get_compiiPi.exit.thread
  store i32 %i.gb, ptr %1, align 4, !tbaa !24
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %_ZL18stbi__tga_get_compiiPi.exit.thread
  %.not79 = icmp eq ptr %2, null
  br i1 %.not79, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  store i32 %i.hy, ptr %2, align 4, !tbaa !24
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.not80 = icmp eq ptr %3, null
  br i1 %.not80, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i32 %.069146, ptr %3, align 4, !tbaa !24
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cb, %bb.cc, %_ZL18stbi__tga_get_compiiPi.exit.thread148, %bb.bs, %bb.bf, %bb.at, %bb.af, %_ZL10stbi__get8P13stbi__context.exit100.thread, %bb.s, %bb.l
  %.070 = phi i32 [ 0, %bb.l ], [ 0, %bb.s ], [ 0, %_ZL10stbi__get8P13stbi__context.exit100.thread ], [ 0, %bb.at ], [ 0, %bb.bf ], [ 0, %bb.bs ], [ 0, %bb.af ], [ 0, %_ZL18stbi__tga_get_compiiPi.exit.thread148 ], [ 1, %bb.cc ], [ 1, %bb.cb ]
  ret i32 %.070
}

; Function Attrs: mustprogress uwtable
define internal noundef range(i32 0, 2) i32 @_ZL14stbiw__outfileP19stbi__write_contextiiiiiiPviiPKcz(ptr nofree noundef nonnull readonly captures(none) %0, i32 %1, i32 %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef range(i32 0, 2) %6, ptr noundef %7, i32 noundef range(i32 0, 2) %8, i32 noundef range(i32 0, 4) %9, ptr nofree noundef readonly captures(none) %10, ...) unnamed_addr #4 {
bb.a:
  %i.a = alloca [3 x i8], align 1                 ; 10 uses
  %i.b = alloca [3 x i8], align 1                 ; 6 uses
  %i.c = alloca [3 x i8], align 1                 ; 10 uses
  %i.d = alloca i32, align 4                      ; 10 uses
  %11 = alloca [1 x %struct.__va_list_tag], align 16 ; 5 uses
  %i.e = or i32 %4, %3
  %or.cond.not = icmp sgt i32 %i.e, -1
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #33
  call void @llvm.va_start.p0(ptr nonnull %11)
  call fastcc void @_ZL14stbiw__writefvP19stbi__write_contextPKcP13__va_list_tag(ptr noundef %0, ptr noundef %10, ptr noundef %11)
  call void @llvm.va_end.p0(ptr nonnull %11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #33
  store i32 0, ptr %i.d, align 4, !tbaa !24
  %i.f = icmp eq i32 %4, 0
  br i1 %i.f, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load i32, ptr @stbi__flip_vertically_on_write, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.g, 0                   ; 3 uses
  %spec.select.i = select i1 %.not.i, i32 -1, i32 1 ; 6 uses
  %i.h = add nsw i32 %4, -1
  %.026.i = select i1 %.not.i, i32 %i.h, i32 0    ; 6 uses
  %.025.i = select i1 %.not.i, i32 -1, i32 %4     ; 7 uses
  %.not75.i = icmp eq i32 %3, 0
  %i.i = getelementptr i8, ptr %0, i64 8          ; 18 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 2 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  %.not36.i.i = icmp eq i32 %6, 0                 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 2 ; 2 uses
  %i.p = sext i32 %5 to i64                       ; 10 uses
  br i1 %.not75.i, label %.preheader.i, label %.split.us.i

.split.us.i:                                      ; preds = %bb.c
  %.not37.i.i = icmp eq i32 %8, 0
  br i1 %.not37.i.i, label %.split.us.split.us.i, label %.preheader.us.preheader.i

.preheader.us.preheader.i:                        ; preds = %.split.us.i
  %i.q = zext nneg i32 %.026.i to i64
  %i.r = sext i32 %spec.select.i to i64
  %i.s = zext nneg i32 %3 to i64                  ; 5 uses
  %invariant.gep = getelementptr i8, ptr %7, i64 %i.p
  br label %.preheader.us.i

.split.us.split.us.i:                             ; preds = %.split.us.i
  switch i32 %5, label %.preheader.us.us.us63.i [
    i32 2, label %.split.us.split.us.split.us.i
    i32 1, label %.split.us.split.us.split.us.i
    i32 4, label %.preheader.us.us.us50.preheader.i
    i32 3, label %.preheader.us.us.us57.preheader.i
  ]

.preheader.us.us.us57.preheader.i:                ; preds = %.split.us.split.us.i
  %i.t = zext nneg i32 %.026.i to i64
  %i.u = sext i32 %spec.select.i to i64
  %i.v = zext nneg i32 %3 to i64                  ; 2 uses
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us46.us.us.preheader.i

.preheader.us.us.us50.preheader.i:                ; preds = %.split.us.split.us.i
  %i.w = zext nneg i32 %.026.i to i64
  %i.x = sext i32 %spec.select.i to i64
  %i.y = zext nneg i32 %3 to i64                  ; 2 uses
  br label %.preheader.us.us.us50.i

.split.us.split.us.split.us.i:                    ; preds = %.split.us.split.us.i, %.split.us.split.us.i
  %i.z = zext nneg i32 %.026.i to i64             ; 2 uses
  %i.aa = sext i32 %spec.select.i to i64          ; 2 uses
  %i.ab = zext nneg i32 %3 to i64                 ; 4 uses
  br i1 %.not36.i.i, label %.preheader.us.us.us.us.us.i, label %.preheader.us.us.us.us72.i

.preheader.us.us.us.us.us.i:                      ; preds = %.split.us.split.us.split.us.i, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i
  %indvars.iv143.i = phi i64 [ %indvars.iv.next144.i, %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i ], [ %i.z, %.split.us.split.us.split.us.i ] ; 2 uses
  %i.ac = mul nsw i64 %indvars.iv143.i, %i.ab
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i, %.preheader.us.us.us.us.us.i
  %indvars.iv137.i = phi i64 [ %indvars.iv.next138.i, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i ], [ 0, %.preheader.us.us.us.us.us.i ] ; 2 uses
  %i.ad = add nsw i64 %indvars.iv137.i, %i.ac
  %i.ae = mul nsw i64 %i.ad, %i.p
  %i.af = getelementptr inbounds i8, ptr %7, i64 %i.ae
  %i.ag = load ptr, ptr %0, align 8, !tbaa !76
  %i.ah = load ptr, ptr %i.i, align 8, !tbaa !77
  call void %i.ag(ptr noundef %i.ah, ptr noundef %i.af, i32 noundef 1), !inline_history !708
  %indvars.iv.next138.i = add nuw nsw i64 %indvars.iv137.i, 1 ; 2 uses
  %exitcond142.not.i = icmp eq i64 %indvars.iv.next138.i, %i.ab
  br i1 %exitcond142.not.i, label %._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i, !llvm.loop !709

._crit_edge.split.us.us.us.split.us.us.split.us.split.us.us.us.i: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us.us.us.us.i
  %i.ai = load ptr, ptr %0, align 8, !tbaa !76
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !77
  call void %i.ai(ptr noundef %i.aj, ptr noundef nonnull %i.d, i32 noundef range(i32 0, 4) %9), !inline_history !710
  %indvars.iv.next144.i = add nsw i64 %indvars.iv143.i, %i.aa ; 2 uses
  %i.ak = trunc nsw i64 %indvars.iv.next144.i to i32
  %.not30.us.us.us.us.us.i = icmp eq i32 %.025.i, %i.ak
  br i1 %.not30.us.us.us.us.us.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.us.us.us.us.us.i, !llvm.loop !711

.preheader.us.us.us.us72.i:                       ; preds = %.split.us.split.us.split.us.i, %._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i
  %indvars.iv125.i = phi i64 [ %indvars.iv.next126.i, %._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i ], [ %i.z, %.split.us.split.us.split.us.i ] ; 2 uses
  %i.al = mul nsw i64 %indvars.iv125.i, %i.ab
  br label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i

_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i, %.preheader.us.us.us.us72.i
  %indvars.iv119.i = phi i64 [ %indvars.iv.next120.i, %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i ], [ 0, %.preheader.us.us.us.us72.i ] ; 2 uses
  %i.am = add nsw i64 %indvars.iv119.i, %i.al
  %i.an = mul nsw i64 %i.am, %i.p
  %i.ao = getelementptr inbounds i8, ptr %7, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34  ; 3 uses
  %.val41.i.us.us.us.us.us.us.us.i = load ptr, ptr %0, align 8, !tbaa !76
  %.val42.i.us.us.us.us.us.us.us.i = load ptr, ptr %i.i, align 8, !tbaa !77
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #33
  store i8 %i.ap, ptr %i.c, align 1, !tbaa !34
  store i8 %i.ap, ptr %i.n, align 1, !tbaa !34
  store i8 %i.ap, ptr %i.o, align 1, !tbaa !34
  call void %.val41.i.us.us.us.us.us.us.us.i(ptr noundef %.val42.i.us.us.us.us.us.us.us.i, ptr noundef nonnull %i.c, i32 noundef 3), !inline_history !712
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #33
  %indvars.iv.next120.i = add nuw nsw i64 %indvars.iv119.i, 1 ; 2 uses
  %exitcond124.not.i = icmp eq i64 %indvars.iv.next120.i, %i.ab
  br i1 %exitcond124.not.i, label %._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i, label %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i, !llvm.loop !709

._crit_edge.split.us.us.us.split.us.us.split.split.us.us.i: ; preds = %_ZL18stbiw__write_pixelP19stbi__write_contextiiiiPh.exit.us.us.us.us.us.us67.us.i
  %i.aq = load ptr, ptr %0, align 8, !tbaa !76
  %i.ar = load ptr, ptr %i.i, align 8, !tbaa !77
  call void %i.aq(ptr noundef %i.ar, ptr noundef nonnull %i.d, i32 noundef range(i32 0, 4) %9), !inline_history !710
  %indvars.iv.next126.i = add nsw i64 %indvars.iv125.i, %i.aa ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv.next126.i to i32
  %.not30.us.us.us.us74.i = icmp eq i32 %.025.i, %i.as
  br i1 %.not30.us.us.us.us74.i, label %_ZL19stbiw__write_pixelsP19stbi__write_contextiiiiiPviii.exit, label %.preheader.us.us.us.us72.i, !llvm.loop !711

.preheader.us.us.us50.i:                          ; preds = %._crit_edge.split.us.us.us.split.split.us.us.i, %.preheader.us.us.us50.preheader.i
  %indvars.iv108.i = phi i64 [ %i.w, %.preheader.us.us.us50.preheader.i ], [ %indvars.iv.next109.i, %._crit_edge.split.us.us.us.split.split.us.us.i ] ; 2 uses
  %i.at = mul nsw i64 %indvars.iv108.i, %i.y
  br label %.thread.i.us.us.us.us.us.i

end_hunk_1
