Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libjpeg-turbo/original/jcmarker?download=true
inline.NumInlined: 79
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 10
begin_hunk_0_@emit_sof:bb.a
  store i64 %i.dx, ptr %i.dv, align 8, !tbaa !38
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %bb.s, label %emit_byte.exit.i36

bb.s:                                             ; preds = %emit_2bytes.exit35
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dr, i64 24
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !39
  %i.eb = tail call i32 %i.ea(ptr noundef nonnull %0) #5, !inline_history !1
  %.not.i.i38 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i38, label %bb.t, label %emit_byte.exit.i36

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 24, ptr %i.ed, align 8, !tbaa !44
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !45
  tail call void %i.ee(ptr noundef nonnull %0) #5, !inline_history !1
  br label %emit_byte.exit.i36

emit_byte.exit.i36:                               ; preds = %bb.t, %bb.s, %emit_2bytes.exit35
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.eg = trunc i32 %i.dp to i8
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !36 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !36
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !37
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !38
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !38
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.u, label %emit_2bytes.exit39

bb.u:                                             ; preds = %emit_byte.exit.i36
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !39
  %i.ep = tail call i32 %i.eo(ptr noundef nonnull %0) #5, !inline_history !1
  %.not.i3.i37 = icmp eq i32 %i.ep, 0
  br i1 %.not.i3.i37, label %bb.v, label %emit_2bytes.exit39

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i32 24, ptr %i.er, align 8, !tbaa !44
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !45
  tail call void %i.es(ptr noundef nonnull %0) #5, !inline_history !1
  br label %emit_2bytes.exit39

emit_2bytes.exit39:                               ; preds = %emit_byte.exit.i36, %bb.u, %bb.v
  %i.et = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.ev = trunc i32 %i.et to i8
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !36 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !36
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !37
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !38
  %i.fa = add i64 %i.ez, -1                       ; 2 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !38
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %emit_byte.exit41

bb.w:                                             ; preds = %emit_2bytes.exit39
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !39
  %i.fe = tail call i32 %i.fd(ptr noundef nonnull %0) #5, !inline_history !2
  %.not.i40 = icmp eq i32 %i.fe, 0
  br i1 %.not.i40, label %bb.x, label %emit_byte.exit41

bb.x:                                             ; preds = %bb.w
  %i.ff = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 24, ptr %i.fg, align 8, !tbaa !44
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !45
  tail call void %i.fh(ptr noundef nonnull %0) #5, !inline_history !2
  br label %emit_byte.exit41

emit_byte.exit41:                                 ; preds = %emit_2bytes.exit39, %bb.w, %bb.x
  %i.fi = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %emit_byte.exit41
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !50
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %emit_byte.exit47
  %.049 = phi ptr [ %i.hm, %emit_byte.exit47 ], [ %i.fl, %.lr.ph.preheader ] ; 5 uses
  %.02948 = phi i32 [ %i.hl, %emit_byte.exit47 ], [ 0, %.lr.ph.preheader ]
  %i.fm = load i32, ptr %.049, align 8, !tbaa !59
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.fo = trunc i32 %i.fm to i8
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !36 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !36
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !37
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !38
  %i.ft = add i64 %i.fs, -1                       ; 2 uses
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !38
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %emit_byte.exit43

bb.y:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !39
  %i.fx = tail call i32 %i.fw(ptr noundef nonnull %0) #5, !inline_history !2
  %.not.i42 = icmp eq i32 %i.fx, 0
  br i1 %.not.i42, label %bb.z, label %emit_byte.exit43

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i32 24, ptr %i.fz, align 8, !tbaa !44
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !45
  tail call void %i.ga(ptr noundef nonnull %0) #5, !inline_history !2
  br label %emit_byte.exit43

emit_byte.exit43:                                 ; preds = %.lr.ph, %bb.y, %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !119
  %i.gd = shl i32 %i.gc, 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.049, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !120
  %i.gg = add nsw i32 %i.gd, %i.gf
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.gi = trunc i32 %i.gg to i8
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !36 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !36
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !37
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !38
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !38
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %emit_byte.exit45

bb.aa:                                            ; preds = %emit_byte.exit43
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !39
  %i.gr = tail call i32 %i.gq(ptr noundef nonnull %0) #5, !inline_history !2
  %.not.i44 = icmp eq i32 %i.gr, 0
  br i1 %.not.i44, label %bb.ab, label %emit_byte.exit45

bb.ab:                                            ; preds = %bb.aa
  %i.gs = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i32 24, ptr %i.gt, align 8, !tbaa !44
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !45
  tail call void %i.gu(ptr noundef nonnull %0) #5, !inline_history !2
  br label %emit_byte.exit45

emit_byte.exit45:                                 ; preds = %emit_byte.exit43, %bb.aa, %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !52
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !33  ; 4 uses
  %i.gy = trunc i32 %i.gw to i8
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !36 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !36
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !37
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !38
  %i.hd = add i64 %i.hc, -1                       ; 2 uses
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !38
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.ac, label %emit_byte.exit47

bb.ac:                                            ; preds = %emit_byte.exit45
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !39
  %i.hh = tail call i32 %i.hg(ptr noundef nonnull %0) #5, !inline_history !2
  %.not.i46 = icmp eq i32 %i.hh, 0
  br i1 %.not.i46, label %bb.ad, label %emit_byte.exit47

bb.ad:                                            ; preds = %bb.ac
  %i.hi = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  store i32 24, ptr %i.hj, align 8, !tbaa !44
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !45
  tail call void %i.hk(ptr noundef nonnull %0) #5, !inline_history !2
  br label %emit_byte.exit47

emit_byte.exit47:                                 ; preds = %emit_byte.exit45, %bb.ac, %bb.ad
  %i.hl = add nuw nsw i32 %.02948, 1              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.049, i64 96
  %i.hn = load i32, ptr %i.ac, align 4, !tbaa !49
  %i.ho = icmp slt i32 %i.hl, %i.hn
  br i1 %i.ho, label %.lr.ph, label %._crit_edge, !llvm.loop !116

._crit_edge:                                      ; preds = %emit_byte.exit47, %emit_byte.exit41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_dht(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0
  %i.a = sext i32 %1 to i64
  %3 = shl nuw nsw i32 %2, 4
  %.036 = add nsw i32 %3, %1                      ; 2 uses
  %.035.in.v.v = select i1 %.not, i64 128, i64 160
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !58 ; 5 uses
  %i.b = icmp eq ptr %.035, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 50, ptr %i.d, align 8, !tbaa !44
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  store i32 %.036, ptr %i.e, align 4, !tbaa !37
  %i.f = load ptr, ptr %0, align 8, !tbaa !40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !45
  tail call void %i.g(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %.035, i64 276 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !124
  %.not37 = icmp eq i32 %i.i, 0
  br i1 %.not37, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !36   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store ptr %i.m, ptr %i.k, align 8, !tbaa !36
  store i8 -1, ptr %i.l, align 1, !tbaa !37
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !38
  %i.p = add i64 %i.o, -1                         ; 2 uses
  store i64 %i.p, ptr %i.n, align 8, !tbaa !38
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %bb.e, label %emit_byte.exit.i

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !39
  %i.t = tail call i32 %i.s(ptr noundef nonnull %0) #5, !inline_history !0
  %.not.i.i = icmp eq i32 %i.t, 0
  br i1 %.not.i.i, label %bb.f, label %emit_byte.exit.i

bb.f:                                             ; preds = %bb.e
  %i.u = load ptr, ptr %0, align 8, !tbaa !40     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i32 24, ptr %i.v, align 8, !tbaa !44
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !45
  tail call void %i.w(ptr noundef nonnull %0) #5, !inline_history !0
  br label %emit_byte.exit.i

emit_byte.exit.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !33   ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !36   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 1
  store ptr %i.z, ptr %i.x, align 8, !tbaa !36
  store i8 -60, ptr %i.y, align 1, !tbaa !37
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !38
  %i.ac = add i64 %i.ab, -1                       ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !tbaa !38
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.g, label %emit_marker.exit

bb.g:                                             ; preds = %emit_byte.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.x, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %0) #5, !inline_history !0
  %.not.i2.i = icmp eq i32 %i.ag, 0
  br i1 %.not.i2.i, label %bb.h, label %emit_marker.exit

bb.h:                                             ; preds = %bb.g
  %i.ah = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  store i32 24, ptr %i.ai, align 8, !tbaa !44
  %i.aj = load ptr, ptr %i.ah, align 8, !tbaa !45
  tail call void %i.aj(ptr noundef nonnull %0) #5, !inline_history !0
  br label %emit_marker.exit

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %i.al = load <16 x i8>, ptr %i.ak, align 1, !tbaa !37
  %i.am = zext <16 x i8> %i.al to <16 x i32>
  %i.an = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %i.am) ; 3 uses
  %i.ao = add nuw nsw i32 %i.an, 19               ; 2 uses
  %i.ap = lshr i32 %i.ao, 8
  %i.aq = load ptr, ptr %i.j, align 8, !tbaa !33  ; 4 uses
  %i.ar = trunc nuw nsw i32 %i.ap to i8
  %i.as = load ptr, ptr %i.aq, align 8, !tbaa !36 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store ptr %i.at, ptr %i.aq, align 8, !tbaa !36
  store i8 %i.ar, ptr %i.as, align 1, !tbaa !37
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.av = load i64, ptr %i.au, align 8, !tbaa !38
  %i.aw = add i64 %i.av, -1                       ; 2 uses
  store i64 %i.aw, ptr %i.au, align 8, !tbaa !38
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %bb.i, label %emit_byte.exit.i38

bb.i:                                             ; preds = %emit_marker.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !39
  %i.ba = tail call i32 %i.az(ptr noundef nonnull %0) #5, !inline_history !1
  %.not.i.i39 = icmp eq i32 %i.ba, 0
  br i1 %.not.i.i39, label %bb.j, label %emit_byte.exit.i38

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i32 24, ptr %i.bc, align 8, !tbaa !44
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !45
  tail call void %i.bd(ptr noundef nonnull %0) #5, !inline_history !1
  br label %emit_byte.exit.i38

emit_byte.exit.i38:                               ; preds = %bb.j, %bb.i, %emit_marker.exit
  %i.be = load ptr, ptr %i.j, align 8, !tbaa !33  ; 4 uses
  %i.bf = trunc i32 %i.ao to i8
  %i.bg = load ptr, ptr %i.be, align 8, !tbaa !36 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.be, align 8, !tbaa !36
  store i8 %i.bf, ptr %i.bg, align 1, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !38
  %i.bk = add i64 %i.bj, -1                       ; 2 uses
  store i64 %i.bk, ptr %i.bi, align 8, !tbaa !38
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.k, label %emit_2bytes.exit

bb.k:                                             ; preds = %emit_byte.exit.i38
  %i.bm = getelementptr inbounds nuw i8, ptr %i.be, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !39
  %i.bo = tail call i32 %i.bn(ptr noundef nonnull %0) #5, !inline_history !1
  %.not.i3.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i3.i, label %bb.l, label %emit_2bytes.exit

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  store i32 24, ptr %i.bq, align 8, !tbaa !44
  %i.br = load ptr, ptr %i.bp, align 8, !tbaa !45
  tail call void %i.br(ptr noundef nonnull %0) #5, !inline_history !1
  br label %emit_2bytes.exit

emit_2bytes.exit:                                 ; preds = %emit_byte.exit.i38, %bb.k, %bb.l
  %i.bs = load ptr, ptr %i.j, align 8, !tbaa !33  ; 4 uses
  %i.bt = trunc i32 %.036 to i8
  %i.bu = load ptr, ptr %i.bs, align 8, !tbaa !36 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1
  store ptr %i.bv, ptr %i.bs, align 8, !tbaa !36
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !37
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 2 uses
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !38
  %i.by = add i64 %i.bx, -1                       ; 2 uses
  store i64 %i.by, ptr %i.bw, align 8, !tbaa !38
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %bb.m, label %emit_byte.exit.preheader

bb.m:                                             ; preds = %emit_2bytes.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !39
  %i.cc = tail call i32 %i.cb(ptr noundef nonnull %0) #5, !inline_history !2
  %.not.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i, label %bb.n, label %emit_byte.exit.preheader

bb.n:                                             ; preds = %bb.m
  %i.cd = load ptr, ptr %0, align 8, !tbaa !40    ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 40
  store i32 24, ptr %i.ce, align 8, !tbaa !44
  %i.cf = load ptr, ptr %i.cd, align 8, !tbaa !45
  tail call void %i.cf(ptr noundef nonnull %0) #5, !inline_history !2
  br label %emit_byte.exit.preheader

emit_byte.exit.preheader:                         ; preds = %emit_2bytes.exit, %bb.m, %bb.n
  br label %emit_byte.exit

.preheader:                                       ; preds = %emit_byte.exit41
  %.not48 = icmp eq i32 %i.an, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cg = getelementptr inbounds nuw i8, ptr %.035, i64 17
  %i.ch = zext nneg i32 %i.an to i64
  br label %bb.q

emit_byte.exit:                                   ; preds = %emit_byte.exit.preheader, %emit_byte.exit41
  %indvars.iv = phi i64 [ %indvars.iv.next, %emit_byte.exit41 ], [ 1, %emit_byte.exit.preheader ] ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.035, i64 %indvars.iv
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !37
  %i.ck = load ptr, ptr %i.j, align 8, !tbaa !33  ; 4 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !36 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !36
  store i8 %i.cj, ptr %i.cl, align 1, !tbaa !37
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !38
  %i.cp = add i64 %i.co, -1                       ; 2 uses
  store i64 %i.cp, ptr %i.cn, align 8, !tbaa !38
  %i.cq = icmp eq i64 %i.cp, 0
end_hunk_0
