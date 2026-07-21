inline.NumInlined: 41
inline.NumDeleted: 4
begin_hunk_0_@deflate_stored:bb.a
  %i.fl = sub i32 %i.fh, %i.ex                    ; 2 uses
  store i32 %i.fl, ptr %i.m, align 4, !tbaa !62
  %i.fm = load ptr, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %i.fn = zext i32 %i.ex to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 %i.fn
  %i.fp = zext i32 %i.fl to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fm, ptr nonnull align 1 %i.fo, i64 %i.fp, i1 false)
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.fr = load i32, ptr %i.fq, align 8, !tbaa !94 ; 2 uses
  %i.fs = icmp ult i32 %i.fr, 2
  br i1 %i.fs, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ft = add nuw nsw i32 %i.fr, 1
  store i32 %i.ft, ptr %i.fq, align 8, !tbaa !94
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.r
  %i.fu = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.fv = load i32, ptr %i.m, align 4, !tbaa !62
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fw
  %i.fy = load ptr, ptr %0, align 8, !tbaa !19
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !72
  %i.ga = sub nsw i64 0, %i.fk
  %i.gb = getelementptr inbounds i8, ptr %i.fz, i64 %i.ga
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fx, ptr nonnull align 1 %i.gb, i64 %i.fk, i1 false)
  %i.gc = load i32, ptr %i.m, align 4, !tbaa !62
  %i.gd = add i32 %i.gc, %i.ew                    ; 2 uses
  store i32 %i.gd, ptr %i.m, align 4, !tbaa !62
  %.pre263 = load i32, ptr %i.d, align 8, !tbaa !32
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.q
  %i.ge = phi i32 [ %.pre263, %bb.u ], [ %i.fe, %bb.q ]
  %i.gf = phi i32 [ %i.gd, %bb.u ], [ %i.fe, %bb.q ] ; 2 uses
  %i.gg = zext i32 %i.gf to i64                   ; 2 uses
  store i64 %i.gg, ptr %i.n, align 8, !tbaa !63
  %i.gh = getelementptr inbounds nuw i8, ptr %0, i64 5932 ; 2 uses
  %i.gi = load i32, ptr %i.gh, align 4, !tbaa !65 ; 2 uses
  %i.gj = sub i32 %i.ge, %i.gi
  %. = tail call i32 @llvm.umin.i32(i32 %i.ew, i32 %i.gj)
  %i.gk = add i32 %., %i.gi
  store i32 %i.gk, ptr %i.gh, align 4, !tbaa !65
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge264, %bb.v
  %.pre-phi = phi i64 [ %.pre271, %._crit_edge264 ], [ %i.gg, %bb.v ] ; 4 uses
  %i.gl = phi i32 [ %.pre265.a, %._crit_edge264 ], [ %i.gf, %bb.v ] ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %0, i64 5944 ; 4 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !41
  %i.go = icmp ult i64 %i.gn, %.pre-phi
  br i1 %i.go, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  store i64 %.pre-phi, ptr %i.gm, align 8, !tbaa !41
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  br i1 %.not238, label %bb.z, label %bb.aw

bb.z:                                             ; preds = %bb.y
  switch i32 %1, label %bb.aa [
    i32 4, label %bb.ac
    i32 0, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z
  %i.gp = load ptr, ptr %0, align 8, !tbaa !19
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 8
  %i.gr = load i32, ptr %i.gq, align 8, !tbaa !71
  %i.gs = icmp eq i32 %i.gr, 0
  br i1 %i.gs, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.gt = load i64, ptr %i.n, align 8, !tbaa !63
  %i.gu = icmp eq i64 %i.gt, %.pre-phi
  br i1 %i.gu, label %bb.aw, label %bb.ac

bb.ac:                                            ; preds = %bb.z, %bb.z, %bb.ab, %bb.aa
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !51
  %i.gx = xor i64 %.pre-phi, -1
  %i.gy = add i64 %i.gw, %i.gx
  %i.gz = trunc i64 %i.gy to i32                  ; 4 uses
  %i.ha = load ptr, ptr %0, align 8, !tbaa !19    ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load i32, ptr %i.hb, align 8, !tbaa !71 ; 3 uses
  %i.hd = icmp ugt i32 %i.hc, %i.gz
  br i1 %i.hd, label %bb.ad, label %bb.ah

bb.ad:                                            ; preds = %bb.ac
  %i.he = load i64, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  %i.hf = load i32, ptr %i.d, align 8, !tbaa !32  ; 2 uses
  %i.hg = zext i32 %i.hf to i64                   ; 3 uses
  %.not239 = icmp slt i64 %i.he, %i.hg
  br i1 %.not239, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.hh = sub nsw i64 %i.he, %i.hg
  store i64 %i.hh, ptr %i.n, align 8, !tbaa !63
  %i.hi = sub i32 %i.gl, %i.hf                    ; 2 uses
  store i32 %i.hi, ptr %i.m, align 4, !tbaa !62
  %i.hj = load ptr, ptr %i.s, align 8, !tbaa !38  ; 2 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %i.hg
  %i.hl = zext i32 %i.hi to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hj, ptr align 1 %i.hk, i64 %i.hl, i1 false)
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 5928 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !94 ; 2 uses
  %i.ho = icmp ult i32 %i.hn, 2
  br i1 %i.ho, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hp = add nuw nsw i32 %i.hn, 1
  store i32 %i.hp, ptr %i.hm, align 8, !tbaa !94
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.hq = load i32, ptr %i.d, align 8, !tbaa !32
  %i.hr = add i32 %i.hq, %i.gz
  %.pre266 = load ptr, ptr %0, align 8, !tbaa !19 ; 2 uses
  %.phi.trans.insert267 = getelementptr inbounds nuw i8, ptr %.pre266, i64 8
  %.pre268.a = load i32, ptr %.phi.trans.insert267, align 8, !tbaa !71
  %.pre269.pre = load i32, ptr %i.m, align 4, !tbaa !62
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ad, %bb.ac
  %.pre269 = phi i32 [ %.pre269.pre, %bb.ag ], [ %i.gl, %bb.ad ], [ %i.gl, %bb.ac ] ; 2 uses
  %i.hs = phi i32 [ %.pre268.a, %bb.ag ], [ %i.hc, %bb.ad ], [ %i.hc, %bb.ac ] ; 2 uses
  %i.ht = phi ptr [ %.pre266, %bb.ag ], [ %i.ha, %bb.ad ], [ %i.ha, %bb.ac ] ; 8 uses
  %.0202 = phi i32 [ %i.hr, %bb.ag ], [ %i.gz, %bb.ad ], [ %i.gz, %bb.ac ]
  %spec.select245 = tail call i32 @llvm.umin.i32(i32 %.0202, i32 %i.hs) ; 6 uses
  %.not240 = icmp eq i32 %spec.select245, 0
  br i1 %.not240, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 8
  %i.hv = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.hw = zext i32 %.pre269 to i64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hw ; 3 uses
  %i.hy = sub i32 %i.hs, %spec.select245
  store i32 %i.hy, ptr %i.hu, align 8, !tbaa !71
  %i.hz = load ptr, ptr %i.ht, align 8, !tbaa !72
  %i.ia = zext i32 %spec.select245 to i64         ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hx, ptr align 1 %i.hz, i64 %i.ia, i1 false)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !18
  %i.id = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  %i.ie = load i32, ptr %i.id, align 8, !tbaa !29
  switch i32 %i.ie, label %read_buf.exit250 [
    i32 1, label %bb.aj
    i32 2, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.if = getelementptr inbounds nuw i8, ptr %i.ht, i64 96 ; 2 uses
  %i.ig = load i64, ptr %i.if, align 8, !tbaa !70
  %i.ih = tail call i64 @adler32(i64 noundef %i.ig, ptr noundef %i.hx, i32 noundef %spec.select245) #11
  store i64 %i.ih, ptr %i.if, align 8, !tbaa !70
  br label %read_buf.exit250

bb.ak:                                            ; preds = %bb.ai
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ht, i64 96 ; 2 uses
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !70
  %i.ik = tail call i64 @crc32(i64 noundef %i.ij, ptr noundef %i.hx, i32 noundef %spec.select245) #11
  store i64 %i.ik, ptr %i.ii, align 8, !tbaa !70
  br label %read_buf.exit250

read_buf.exit250:                                 ; preds = %bb.ak, %bb.aj, %bb.ai
  %i.il = load ptr, ptr %i.ht, align 8, !tbaa !72
  %i.im = getelementptr inbounds nuw i8, ptr %i.il, i64 %i.ia
  store ptr %i.im, ptr %i.ht, align 8, !tbaa !72
  %i.in = getelementptr inbounds nuw i8, ptr %i.ht, i64 16 ; 2 uses
  %i.io = load i64, ptr %i.in, align 8, !tbaa !82
  %i.ip = add i64 %i.io, %i.ia
  store i64 %i.ip, ptr %i.in, align 8, !tbaa !82
  %i.iq = load i32, ptr %i.m, align 4, !tbaa !62
  %i.ir = add i32 %i.iq, %spec.select245          ; 2 uses
  store i32 %i.ir, ptr %i.m, align 4, !tbaa !62
  br label %bb.al

bb.al:                                            ; preds = %read_buf.exit250, %bb.ah
  %i.is = phi i32 [ %i.ir, %read_buf.exit250 ], [ %.pre269, %bb.ah ] ; 3 uses
  %i.it = load i64, ptr %i.gm, align 8, !tbaa !41
  %i.iu = zext i32 %i.is to i64                   ; 2 uses
  %i.iv = icmp ult i64 %i.it, %i.iu
  br i1 %i.iv, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i64 %i.iu, ptr %i.gm, align 8, !tbaa !41
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.iw = load i32, ptr %i.l, align 4, !tbaa !89
  %i.ix = add nsw i32 %i.iw, 42
  %i.iy = ashr i32 %i.ix, 3
  %i.iz = load i64, ptr %i.a, align 8, !tbaa !44
  %i.ja = zext i32 %i.iy to i64
  %i.jb = sub i64 %i.iz, %i.ja
  %spec.select246259 = tail call i64 @llvm.umin.i64(i64 %i.jb, i64 65535)
  %spec.select246 = trunc nuw nsw i64 %spec.select246259 to i32 ; 4 uses
  %i.jc = load i32, ptr %i.d, align 8, !tbaa !32
  %i.jd = tail call i32 @llvm.umin.i32(i32 %i.jc, i32 %spec.select246)
  %i.je = load i64, ptr %i.n, align 8, !tbaa !63  ; 2 uses
  %i.jf = trunc i64 %i.je to i32                  ; 2 uses
  %i.jg = sub i32 %i.is, %i.jf                    ; 4 uses
  %.not241 = icmp ult i32 %i.jg, %i.jd
  br i1 %.not241, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jh = icmp ne i32 %i.is, %i.jf
  %or.cond7 = or i1 %i.o, %i.jh
  %or.cond9 = and i1 %i.p, %or.cond7
  br i1 %or.cond9, label %bb.ap, label %bb.aw

bb.ap:                                            ; preds = %bb.ao
  %i.ji = load ptr, ptr %0, align 8, !tbaa !19
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 8
  %i.jk = load i32, ptr %i.jj, align 8, !tbaa !71
  %2 = icmp ne i32 %i.jk, 0
  %.not242 = icmp samesign ugt i32 %i.jg, %spec.select246
  %or.cond247 = or i1 %.not242, %2
  br i1 %or.cond247, label %bb.aw, label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.jl = tail call i32 @llvm.umin.i32(i32 %i.jg, i32 %spec.select246)
  br i1 %i.o, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.jm = load ptr, ptr %0, align 8, !tbaa !19
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 8
  %i.jo = load i32, ptr %i.jn, align 8, !tbaa !71
  %i.jp = icmp eq i32 %i.jo, 0
  br i1 %i.jp, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.jq = icmp ule i32 %i.jg, %spec.select246
  %i.jr = zext i1 %i.jq to i32
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar, %bb.aq
  %i.js = phi i32 [ 0, %bb.ar ], [ 0, %bb.aq ], [ %i.jr, %bb.as ] ; 2 uses
  %i.jt = load ptr, ptr %i.s, align 8, !tbaa !38
  %i.ju = getelementptr inbounds i8, ptr %i.jt, i64 %i.je
  %i.jv = zext nneg i32 %i.jl to i64              ; 2 uses
  tail call void @_tr_stored_block(ptr noundef nonnull %0, ptr noundef %i.ju, i64 noundef %i.jv, i32 noundef %i.js) #11
  %i.jw = load i64, ptr %i.n, align 8, !tbaa !63
  %i.jx = add nsw i64 %i.jw, %i.jv
  store i64 %i.jx, ptr %i.n, align 8, !tbaa !63
  %i.jy = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 56
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.ka) #11
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 40 ; 3 uses
  %i.kc = load i64, ptr %i.kb, align 8, !tbaa !86
  %i.kd = trunc i64 %i.kc to i32
  %i.ke = getelementptr inbounds nuw i8, ptr %i.jy, i64 32 ; 3 uses
  %i.kf = load i32, ptr %i.ke, align 8, !tbaa !93
  %spec.select.i251 = tail call i32 @llvm.umin.i32(i32 %i.kf, i32 %i.kd) ; 3 uses
  %i.kg = icmp eq i32 %spec.select.i251, 0
  br i1 %i.kg, label %flush_pending.exit252, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.kh = getelementptr inbounds nuw i8, ptr %i.jy, i64 24 ; 3 uses
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !95
  %i.kj = getelementptr inbounds nuw i8, ptr %i.ka, i64 32 ; 4 uses
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !87
  %i.kl = zext i32 %spec.select.i251 to i64       ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ki, ptr align 1 %i.kk, i64 %i.kl, i1 false)
  %i.km = load ptr, ptr %i.kh, align 8, !tbaa !95
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kl
  store ptr %i.kn, ptr %i.kh, align 8, !tbaa !95
  %i.ko = load ptr, ptr %i.kj, align 8, !tbaa !87
  %i.kp = getelementptr inbounds nuw i8, ptr %i.ko, i64 %i.kl
  store ptr %i.kp, ptr %i.kj, align 8, !tbaa !87
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jy, i64 40 ; 2 uses
  %i.kr = load i64, ptr %i.kq, align 8, !tbaa !96
  %i.ks = add i64 %i.kr, %i.kl
  store i64 %i.ks, ptr %i.kq, align 8, !tbaa !96
  %i.kt = load i32, ptr %i.ke, align 8, !tbaa !93
  %i.ku = sub i32 %i.kt, %spec.select.i251
  store i32 %i.ku, ptr %i.ke, align 8, !tbaa !93
  %i.kv = load i64, ptr %i.kb, align 8, !tbaa !86 ; 2 uses
  %i.kw = sub i64 %i.kv, %i.kl
  store i64 %i.kw, ptr %i.kb, align 8, !tbaa !86
  %i.kx = icmp eq i64 %i.kv, %i.kl
  br i1 %i.kx, label %bb.av, label %flush_pending.exit252

bb.av:                                            ; preds = %bb.au
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !43
  store ptr %i.kz, ptr %i.kj, align 8, !tbaa !87
  br label %flush_pending.exit252

flush_pending.exit252:                            ; preds = %bb.at, %bb.au, %bb.av
  %i.la = icmp eq i32 %i.js, 0
  %i.lb = select i1 %i.la, i32 0, i32 2
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ap, %flush_pending.exit252, %bb.ao, %bb.ab, %bb.y
  %.0208 = phi i32 [ 1, %bb.ab ], [ 3, %bb.y ], [ %i.lb, %flush_pending.exit252 ], [ 0, %bb.ao ], [ 0, %bb.ap ]
  ret i32 %.0208
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 4) i32 @deflate_huff(ptr noundef %0, i32 noundef range(i32 0, 6) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 5904
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 5900 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 5888
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 5896
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.k = load i32, ptr %i.a, align 4, !tbaa !64
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @fill_window(ptr noundef nonnull %0)
  %i.m = load i32, ptr %i.a, align 4, !tbaa !64
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.o = icmp eq i32 %1, 0
  br i1 %i.o, label %.loopexit, label %bb.k

bb.e:                                             ; preds = %bb.c, %bb.b
  store i32 0, ptr %i.b, align 8, !tbaa !67
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.q = load i32, ptr %i.d, align 4, !tbaa !62
  %i.r = zext i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !tbaa !8     ; 2 uses
  %i.u = load ptr, ptr %i.e, align 8, !tbaa !46
  %i.v = load i32, ptr %i.f, align 4, !tbaa !116  ; 2 uses
  %i.w = zext i32 %i.v to i64                     ; 2 uses
  %i.x = getelementptr inbounds nuw [2 x i8], ptr %i.u, i64 %i.w
  store i16 0, ptr %i.x, align 2, !tbaa !52
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !47
  %i.z = add i32 %i.v, 1
  store i32 %i.z, ptr %i.f, align 4, !tbaa !116
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 %i.t, ptr %i.aa, align 1, !tbaa !8
  %i.ab = zext i8 %i.t to i64
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %i.ab ; 2 uses
  %i.ad = load i16, ptr %i.ac, align 4, !tbaa !8
  %i.ae = add i16 %i.ad, 1
  store i16 %i.ae, ptr %i.ac, align 4, !tbaa !8
  %i.af = load i32, ptr %i.f, align 4, !tbaa !116
  %i.ag = load i32, ptr %i.i, align 8, !tbaa !42
  %i.ah = add i32 %i.ag, -1
  %i.ai = icmp eq i32 %i.af, %i.ah
  %i.aj = load i32, ptr %i.a, align 4, !tbaa !64
  %i.ak = add i32 %i.aj, -1
  store i32 %i.ak, ptr %i.a, align 4, !tbaa !64
  %i.al = load i32, ptr %i.d, align 4, !tbaa !62
  %i.am = add i32 %i.al, 1                        ; 2 uses
  store i32 %i.am, ptr %i.d, align 4, !tbaa !62
  br i1 %i.ai, label %bb.f, label %.backedge

bb.f:                                             ; preds = %bb.e
  %i.an = load i64, ptr %i.j, align 8, !tbaa !63  ; 3 uses
  %i.ao = icmp sgt i64 %i.an, -1
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr %i.c, align 8, !tbaa !38
  %i.aq = and i64 %i.an, 4294967295
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.aq
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.as = phi ptr [ %i.ar, %bb.g ], [ null, %bb.f ]
  %i.at = zext i32 %i.am to i64
  %i.au = sub nsw i64 %i.at, %i.an
  tail call void @_tr_flush_block(ptr noundef nonnull %0, ptr noundef %i.as, i64 noundef %i.au, i32 noundef 0) #11
  %i.av = load i32, ptr %i.d, align 4, !tbaa !62
  %i.aw = zext i32 %i.av to i64
  store i64 %i.aw, ptr %i.j, align 8, !tbaa !63
  %i.ax = load ptr, ptr %0, align 8, !tbaa !19    ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !18 ; 4 uses
  tail call void @_tr_flush_bits(ptr noundef %i.az) #11
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 40 ; 3 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !86
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 3 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !93
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.be, i32 %i.bc) ; 3 uses
  %i.bf = icmp eq i32 %spec.select.i, 0
  br i1 %i.bf, label %flush_pending.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 24 ; 3 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !95
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 32 ; 4 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bk = zext i32 %spec.select.i to i64          ; 6 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr align 1 %i.bj, i64 %i.bk, i1 false)
  %i.bl = load ptr, ptr %i.bg, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store ptr %i.bm, ptr %i.bg, align 8, !tbaa !95
  %i.bn = load ptr, ptr %i.bi, align 8, !tbaa !87
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bk
  store ptr %i.bo, ptr %i.bi, align 8, !tbaa !87
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 40 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !96
  %i.br = add i64 %i.bq, %i.bk
  store i64 %i.br, ptr %i.bp, align 8, !tbaa !96
  %i.bs = load i32, ptr %i.bd, align 8, !tbaa !93
  %i.bt = sub i32 %i.bs, %spec.select.i
  store i32 %i.bt, ptr %i.bd, align 8, !tbaa !93
  %i.bu = load i64, ptr %i.ba, align 8, !tbaa !86 ; 2 uses
  %i.bv = sub i64 %i.bu, %i.bk
  store i64 %i.bv, ptr %i.ba, align 8, !tbaa !86
end_hunk_0
