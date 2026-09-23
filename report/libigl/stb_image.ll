Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/stb_image?download=true
inline.NumInlined: 822
inline.NumDeleted: 120
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 79
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZL22stbi__bmp_parse_headerP13stbi__contextP14stbi__bmp_data:bb.a
_ZL19stbi__refill_bufferP13stbi__context.exit.i.i157: ; preds = %bb.bi, %bb.bh
  %i.im = phi i8 [ 0, %bb.bh ], [ %.pre.i.i156, %bb.bi ]
  %.sink.i.i.i158 = phi ptr [ %i.ij, %bb.bh ], [ %i.il, %bb.bi ] ; 2 uses
  store ptr %.sink.i.i.i158, ptr %i.c, align 8, !tbaa !36
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.in, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i159

_ZL10stbi__get8P13stbi__context.exit.i159:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i157, %bb.bf, %bb.be
  %i.io = phi ptr [ %i.ht, %bb.be ], [ %.sink.i.i.i158, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i157 ], [ %i.ht, %bb.bf ] ; 3 uses
  %i.ip = phi ptr [ %i.hw, %bb.be ], [ %i.in, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i157 ], [ %i.hu, %bb.bf ] ; 4 uses
  %.0.i.i160 = phi i8 [ %i.hx, %bb.be ], [ %i.im, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i157 ], [ 0, %bb.bf ]
  %i.iq = icmp ult ptr %i.ip, %i.io
  br i1 %i.iq, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i159
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ip, i64 1 ; 2 uses
  store ptr %i.ir, ptr %i.a, align 8, !tbaa !35
  %i.is = load i8, ptr %i.ip, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit166

bb.bk:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i159
  %i.it = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 8, !tbaa !31
  %.not.i2.i161 = icmp eq i32 %i.iu, 0
  br i1 %.not.i2.i161, label %_ZL13stbi__get16leP13stbi__context.exit166, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !33
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !29
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !30
  %i.jc = tail call noundef i32 %i.iw(ptr noundef %i.iy, ptr noundef nonnull %i.iz, i32 noundef %i.jb), !inline_history !11 ; 2 uses
  %i.jd = icmp eq i32 %i.jc, 0
  br i1 %i.jd, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  store i32 0, ptr %i.it, align 8, !tbaa !31
  %i.je = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.iz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163

bb.bn:                                            ; preds = %bb.bl
  %i.jf = sext i32 %i.jc to i64
  %i.jg = getelementptr inbounds i8, ptr %i.iz, i64 %i.jf
  %.pre.i3.i162 = load i8, ptr %i.iz, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163: ; preds = %bb.bn, %bb.bm
  %i.jh = phi i8 [ 0, %bb.bm ], [ %.pre.i3.i162, %bb.bn ]
  %.sink.i.i5.i164 = phi ptr [ %i.je, %bb.bm ], [ %i.jg, %bb.bn ] ; 2 uses
  store ptr %.sink.i.i5.i164, ptr %i.c, align 8, !tbaa !36
  %i.ji = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.ji, ptr %i.a, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit166

_ZL13stbi__get16leP13stbi__context.exit166:       ; preds = %bb.bj, %bb.bk, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163
  %i.jj = phi ptr [ %i.io, %bb.bj ], [ %.sink.i.i5.i164, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163 ], [ %i.io, %bb.bk ] ; 3 uses
  %i.jk = phi ptr [ %i.ir, %bb.bj ], [ %i.ji, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163 ], [ %i.ip, %bb.bk ] ; 4 uses
  %.0.i6.i165 = phi i8 [ %i.is, %bb.bj ], [ %i.jh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i163 ], [ 0, %bb.bk ]
  %i.jl = zext i8 %.0.i.i160 to i32
  %i.jm = zext i8 %.0.i6.i165 to i32
  %i.jn = shl nuw nsw i32 %i.jm, 8
  %i.jo = or disjoint i32 %i.jn, %i.jl
  %.not112 = icmp eq i32 %i.jo, 1
  br i1 %.not112, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit166
  store ptr @.str.63, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.critedge

bb.bp:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit166
  %i.jp = icmp ult ptr %i.jk, %i.jj
  br i1 %i.jp, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jk, i64 1 ; 2 uses
  store ptr %i.jq, ptr %i.a, align 8, !tbaa !35
  %i.jr = load i8, ptr %i.jk, align 1, !tbaa !34
  br label %_ZL10stbi__get8P13stbi__context.exit.i171

bb.br:                                            ; preds = %bb.bp
  %i.js = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.jt = load i32, ptr %i.js, align 8, !tbaa !31
  %.not.i.i167 = icmp eq i32 %i.jt, 0
  br i1 %.not.i.i167, label %_ZL10stbi__get8P13stbi__context.exit.i171, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !33
  %i.jw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !29
  %i.jy = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.ka = load i32, ptr %i.jz, align 4, !tbaa !30
  %i.kb = tail call noundef i32 %i.jv(ptr noundef %i.jx, ptr noundef nonnull %i.jy, i32 noundef %i.ka), !inline_history !11 ; 2 uses
  %i.kc = icmp eq i32 %i.kb, 0
  br i1 %i.kc, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i32 0, ptr %i.js, align 8, !tbaa !31
  %i.kd = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.jy, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169

bb.bu:                                            ; preds = %bb.bs
  %i.ke = sext i32 %i.kb to i64
  %i.kf = getelementptr inbounds i8, ptr %i.jy, i64 %i.ke
  %.pre.i.i168 = load i8, ptr %i.jy, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169

_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169: ; preds = %bb.bu, %bb.bt
  %i.kg = phi i8 [ 0, %bb.bt ], [ %.pre.i.i168, %bb.bu ]
  %.sink.i.i.i170 = phi ptr [ %i.kd, %bb.bt ], [ %i.kf, %bb.bu ] ; 2 uses
  store ptr %.sink.i.i.i170, ptr %i.c, align 8, !tbaa !36
  %i.kh = getelementptr inbounds nuw i8, ptr %0, i64 57 ; 2 uses
  store ptr %i.kh, ptr %i.a, align 8, !tbaa !35
  br label %_ZL10stbi__get8P13stbi__context.exit.i171

_ZL10stbi__get8P13stbi__context.exit.i171:        ; preds = %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169, %bb.br, %bb.bq
  %i.ki = phi ptr [ %i.jj, %bb.bq ], [ %.sink.i.i.i170, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169 ], [ %i.jj, %bb.br ]
  %i.kj = phi ptr [ %i.jq, %bb.bq ], [ %i.kh, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169 ], [ %i.jk, %bb.br ] ; 3 uses
  %.0.i.i172 = phi i8 [ %i.jr, %bb.bq ], [ %i.kg, %_ZL19stbi__refill_bufferP13stbi__context.exit.i.i169 ], [ 0, %bb.br ]
  %i.kk = icmp ult ptr %i.kj, %i.ki
  br i1 %i.kk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i171
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kj, i64 1
  store ptr %i.kl, ptr %i.a, align 8, !tbaa !35
  %i.km = load i8, ptr %i.kj, align 1, !tbaa !34
  br label %_ZL13stbi__get16leP13stbi__context.exit178

bb.bw:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit.i171
  %i.kn = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8, !tbaa !31
  %.not.i2.i173 = icmp eq i32 %i.ko, 0
  br i1 %.not.i2.i173, label %_ZL13stbi__get16leP13stbi__context.exit178, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.kp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !33
  %i.kr = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ks = load ptr, ptr %i.kr, align 8, !tbaa !29
  %i.kt = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !30
  %i.kw = tail call noundef i32 %i.kq(ptr noundef %i.ks, ptr noundef nonnull %i.kt, i32 noundef %i.kv), !inline_history !11 ; 2 uses
  %i.kx = icmp eq i32 %i.kw, 0
  br i1 %i.kx, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  store i32 0, ptr %i.kn, align 8, !tbaa !31
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 57
  store i8 0, ptr %i.kt, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i175

bb.bz:                                            ; preds = %bb.bx
  %i.kz = sext i32 %i.kw to i64
  %i.la = getelementptr inbounds i8, ptr %i.kt, i64 %i.kz
  %.pre.i3.i174 = load i8, ptr %i.kt, align 8, !tbaa !34
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i175

_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i175: ; preds = %bb.bz, %bb.by
  %i.lb = phi i8 [ 0, %bb.by ], [ %.pre.i3.i174, %bb.bz ]
  %.sink.i.i5.i176 = phi ptr [ %i.ky, %bb.by ], [ %i.la, %bb.bz ]
  store ptr %.sink.i.i5.i176, ptr %i.c, align 8, !tbaa !36
  %i.lc = getelementptr inbounds nuw i8, ptr %0, i64 57
  store ptr %i.lc, ptr %i.a, align 8, !tbaa !35
  br label %_ZL13stbi__get16leP13stbi__context.exit178

_ZL13stbi__get16leP13stbi__context.exit178:       ; preds = %bb.bv, %bb.bw, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i175
  %.0.i6.i177 = phi i8 [ %i.km, %bb.bv ], [ %i.lb, %_ZL19stbi__refill_bufferP13stbi__context.exit.i4.i175 ], [ 0, %bb.bw ]
  %i.ld = zext i8 %.0.i.i172 to i32
  %i.le = zext i8 %.0.i6.i177 to i32
  %i.lf = shl nuw nsw i32 %i.le, 8
  %i.lg = or disjoint i32 %i.lf, %i.ld
  store i32 %i.lg, ptr %1, align 4, !tbaa !73
  br i1 %.not183, label %.critedge, label %bb.ca

bb.ca:                                            ; preds = %_ZL13stbi__get16leP13stbi__context.exit178
  %i.lh = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 2 uses
  %i.li = add i32 %i.lh, -1
  %or.cond10 = icmp ult i32 %i.li, 2
  br i1 %or.cond10, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  store ptr @.str.64, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.critedge

bb.cc:                                            ; preds = %bb.ca
  %i.lj = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.lk = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ll = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.lm = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ln = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.lo = add i32 %i.dr, -40                      ; 2 uses
  %i.lp = tail call i32 @llvm.fshl.i32(i32 %i.lo, i32 %i.lo, i32 30)
  switch i32 %i.lp, label %bb.cn [
    i32 4, label %bb.cd
    i32 0, label %bb.ce
    i32 21, label %bb.cm
    i32 17, label %bb.cm
  ]

bb.cd:                                            ; preds = %bb.cc
  %i.lq = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.lr = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ls = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.lt = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cc, %bb.cd
  %i.lu = load i32, ptr %1, align 4, !tbaa !73    ; 2 uses
  switch i32 %i.lu, label %bb.co [
    i32 16, label %bb.cf
    i32 32, label %bb.cf
  ]

bb.cf:                                            ; preds = %bb.ce, %bb.ce
  switch i32 %i.lh, label %bb.cl [
    i32 0, label %bb.cg
    i32 3, label %bb.cj
  ]

bb.cg:                                            ; preds = %bb.cf
  %i.lv = icmp eq i32 %i.lu, 32
  br i1 %i.lv, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  store <4 x i32> <i32 16711680, i32 65280, i32 255, i32 -16777216>, ptr %i.dw, align 4, !tbaa !24
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 28
  store i32 0, ptr %i.lw, align 4, !tbaa !72
  br label %bb.co

bb.ci:                                            ; preds = %bb.cg
  store i32 31744, ptr %i.dw, align 4, !tbaa !116
  store i32 992, ptr %i.dv, align 4, !tbaa !117
  store i32 31, ptr %i.du, align 4, !tbaa !118
  br label %bb.co

bb.cj:                                            ; preds = %bb.cf
  %i.lx = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.lx, ptr %i.dw, align 4, !tbaa !116
  %i.ly = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.ly, ptr %i.dv, align 4, !tbaa !117
  %i.lz = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 2 uses
  store i32 %i.lz, ptr %i.du, align 4, !tbaa !118
  %i.ma = load i32, ptr %i.dw, align 4, !tbaa !116
  %i.mb = load i32, ptr %i.dv, align 4, !tbaa !117 ; 2 uses
  %i.mc = icmp eq i32 %i.ma, %i.mb
  %i.md = icmp eq i32 %i.mb, %i.lz
  %or.cond = and i1 %i.mc, %i.md
  br i1 %or.cond, label %bb.ck, label %bb.co

bb.ck:                                            ; preds = %bb.cj
  store ptr @.str.63, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.critedge

bb.cl:                                            ; preds = %bb.cf
  store ptr @.str.63, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  br label %.critedge

bb.cm:                                            ; preds = %bb.cc, %bb.cc
  %i.me = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.me, ptr %i.dw, align 4, !tbaa !116
  %i.mf = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.mf, ptr %i.dv, align 4, !tbaa !117
  %i.mg = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.mg, ptr %i.du, align 4, !tbaa !118
  %i.mh = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0)
  store i32 %i.mh, ptr %i.dt, align 4, !tbaa !119
  %i.mi = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mj = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mk = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ml = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mm = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mn = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mo = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mp = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mq = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mr = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.ms = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mt = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mu = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  switch i32 %i.dr, label %.critedge [
    i32 124, label %.thread
    i32 108, label %bb.co
  ]

.thread:                                          ; preds = %bb.cm
  %i.mv = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mw = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.mx = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  %i.my = tail call fastcc noundef i32 @_ZL13stbi__get32leP13stbi__context(ptr noundef %0) ; 0 uses
  br label %bb.co

bb.cn:                                            ; preds = %bb.cc
  store ptr @.str.63, ptr @_ZL22stbi__g_failure_reason, align 8, !tbaa !23
  switch i32 %i.dr, label %.critedge [
    i32 124, label %bb.co
    i32 108, label %bb.co
  ]

bb.co:                                            ; preds = %.thread, %bb.cm, %bb.cn, %bb.cn, %bb.ce, %bb.cj, %bb.ch, %bb.ci
  br label %.critedge

.critedge:                                        ; preds = %bb.cm, %bb.cb, %bb.ck, %bb.cl, %bb.cn, %_ZL13stbi__get16leP13stbi__context.exit178, %bb.co, %bb.bo, %bb.ag, %_ZL10stbi__get8P13stbi__context.exit.thread
  %.3 = phi ptr [ null, %_ZL10stbi__get8P13stbi__context.exit.thread ], [ null, %bb.ag ], [ null, %bb.bo ], [ inttoptr (i64 1 to ptr), %_ZL13stbi__get16leP13stbi__context.exit178 ], [ inttoptr (i64 1 to ptr), %bb.co ], [ null, %bb.cn ], [ null, %bb.cl ], [ null, %bb.ck ], [ null, %bb.cb ], [ null, %bb.cm ]
  ret ptr %.3
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZL19stbi__gif_load_nextP13stbi__contextP9stbi__gifPiiPh(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 11 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  %.not179 = icmp eq ptr %i.b, null               ; 2 uses
  br i1 %.not179, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = tail call fastcc noundef i32 @_ZL16stbi__gif_headerP13stbi__contextP9stbi__gifPii(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 0)
  %.not166 = icmp eq i32 %i.c, 0
  br i1 %.not166, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr %1, align 8, !tbaa !47     ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !48   ; 4 uses
  %.not23.i = icmp ugt i32 %i.d, 536870911
  br i1 %.not23.i, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread.sink.split, label %_ZL21stbi__mul2sizes_validii.exit.thread15.i

_ZL21stbi__mul2sizes_validii.exit.thread15.i:     ; preds = %bb.c
  %i.g = shl nuw nsw i32 %i.d, 2
  %or.cond.not.i10.i = icmp sgt i32 %i.f, -1
  br i1 %or.cond.not.i10.i, label %bb.d, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread.sink.split

bb.d:                                             ; preds = %_ZL21stbi__mul2sizes_validii.exit.thread15.i
  %i.h = icmp eq i32 %i.f, 0
  br i1 %i.h, label %_ZL21stbi__mad3sizes_validiiii.exit, label %_ZL21stbi__mul2sizes_validii.exit12.i

_ZL21stbi__mul2sizes_validii.exit12.i:            ; preds = %bb.d
  %i.i = udiv i32 2147483647, %i.f
  %.not.i = icmp samesign ugt i32 %i.g, %i.i
  br i1 %.not.i, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread.sink.split, label %_ZL21stbi__mad3sizes_validiiii.exit

_ZL21stbi__mad3sizes_validiiii.exit:              ; preds = %_ZL21stbi__mul2sizes_validii.exit12.i, %bb.d
  %i.j = mul nuw nsw i32 %i.f, %i.d               ; 3 uses
  %i.k = shl nsw i32 %i.j, 2
  %i.l = zext nneg i32 %i.k to i64                ; 4 uses
  %i.m = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #34 ; 3 uses
  store ptr %i.m, ptr %i.a, align 8, !tbaa !51
  %i.n = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.l) #34 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.n, ptr %i.o, align 8, !tbaa !53
  %i.p = zext nneg i32 %i.j to i64                ; 2 uses
  %i.q = tail call noalias noundef ptr @malloc(i64 noundef range(i64 -8589934588, 8589934589) %i.p) #34 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.q, ptr %i.r, align 8, !tbaa !52
  %.not168 = icmp eq ptr %i.m, null
  br i1 %.not168, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %_ZL21stbi__mad3sizes_validiiii.exit
  %.not169 = icmp eq ptr %i.n, null
  %.not170 = icmp eq ptr %i.q, null
  %or.cond180 = or i1 %.not169, %.not170
  br i1 %or.cond180, label %_ZL10stbi__skipP13stbi__contexti.exit275.thread.sink.split, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.n, i8 0, i64 %i.l, i1 false)
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.q, i8 0, i64 %i.p, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !685
  %i.u = lshr i32 %i.t, 2
  %i.v = and i32 %i.u, 7                          ; 2 uses
  %i.w = load i32, ptr %1, align 8, !tbaa !47
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !48
  %i.z = mul i32 %i.y, %i.w                       ; 8 uses
  %i.aa = icmp eq i32 %i.v, 3
  %i.ab = icmp eq ptr %3, null
  %or.cond = and i1 %i.ab, %i.aa
  %spec.store.select = select i1 %or.cond, i32 2, i32 %i.v
  switch i32 %spec.store.select, label %.loopexit [
    i32 3, label %.preheader305
    i32 2, label %.preheader306
  ]

.preheader306:                                    ; preds = %bb.g
  %i.ac = icmp sgt i32 %i.z, 0
  br i1 %i.ac, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader306
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %wide.trip.count = zext nneg i32 %i.z to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.af = icmp eq i32 %i.z, 1
  br i1 %i.af, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.m

.preheader305:                                    ; preds = %bb.g
  %i.ag = icmp sgt i32 %i.z, 0
  br i1 %i.ag, label %.lr.ph320, label %.loopexit

.lr.ph320:                                        ; preds = %.preheader305
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %wide.trip.count337 = zext nneg i32 %i.z to i64 ; 2 uses
  %xtraiter35 = and i64 %wide.trip.count337, 1
  %i.ai = icmp eq i32 %i.z, 1
  br i1 %i.ai, label %.epil.preheader34, label %.lr.ph320.new

.lr.ph320.new:                                    ; preds = %.lr.ph320
  %unroll_iter38 = and i64 %wide.trip.count337, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.l, %.lr.ph320.new
  %indvars.iv334 = phi i64 [ 0, %.lr.ph320.new ], [ %indvars.iv.next335.1, %bb.l ] ; 4 uses
  %niter39 = phi i64 [ 0, %.lr.ph320.new ], [ %niter39.next.1, %bb.l ]
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %indvars.iv334
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !34
  %.not165 = icmp eq i8 %i.al, 0
  br i1 %.not165, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.an = shl nuw nsw i64 %indvars.iv334, 2       ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 %i.an
  %i.aq = load i32, ptr %i.ap, align 1
  store i32 %i.aq, ptr %i.ao, align 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %indvars.iv.next335 = or disjoint i64 %indvars.iv334, 1 ; 2 uses
  %i.ar = load ptr, ptr %i.ah, align 8, !tbaa !52
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv.next335
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34
  %.not165.1 = icmp eq i8 %i.at, 0
  br i1 %.not165.1, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.av = shl nuw nsw i64 %indvars.iv.next335, 2  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 %i.av
  %i.ay = load i32, ptr %i.ax, align 1
  store i32 %i.ay, ptr %i.aw, align 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %indvars.iv.next335.1 = add nuw nsw i64 %indvars.iv334, 2 ; 2 uses
  %niter39.next.1 = add i64 %niter39, 2           ; 2 uses
  %niter39.ncmp.1 = icmp eq i64 %niter39.next.1, %unroll_iter38
  br i1 %niter39.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.h, !llvm.loop !673

bb.m:                                             ; preds = %bb.q, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.1, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.q ]
  %i.az = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !34
  %.not = icmp eq i8 %i.bb, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bc = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.bd = shl nuw nsw i64 %indvars.iv, 2          ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bd
  %i.bh = load i32, ptr %i.bg, align 1
  store i32 %i.bh, ptr %i.be, align 1
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.bi = load ptr, ptr %i.ad, align 8, !tbaa !52
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 %indvars.iv.next
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !34
  %.not.1 = icmp eq i8 %i.bk, 0
  br i1 %.not.1, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !51
  %i.bm = shl nuw nsw i64 %indvars.iv.next, 2     ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bm
  %i.bo = load ptr, ptr %i.ae, align 8, !tbaa !53
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 %i.bm
  %i.bq = load i32, ptr %i.bp, align 1
  store i32 %i.bq, ptr %i.bn, align 1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit32.unr-lcssa, label %bb.m, !llvm.loop !674

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.l
  %lcmp.mod36.not = icmp eq i64 %xtraiter35, 0
end_hunk_0
