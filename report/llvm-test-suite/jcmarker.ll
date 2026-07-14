inline.NumInlined: 73
inline.NumDeleted: 8
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 5
begin_hunk_0_@emit_sof:bb.a
  %i.eb = tail call i32 %i.ea(ptr noundef nonnull %0) #3, !inline_history !51
  %.not.i.i38 = icmp eq i32 %i.eb, 0
  br i1 %.not.i.i38, label %bb.t, label %emit_byte.exit.i36

bb.t:                                             ; preds = %bb.s
  %i.ec = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 40
  store i32 22, ptr %i.ed, align 8, !tbaa !46
  %i.ee = load ptr, ptr %i.ec, align 8, !tbaa !50
  tail call void %i.ee(ptr noundef nonnull %0) #3, !inline_history !51
  br label %emit_byte.exit.i36

emit_byte.exit.i36:                               ; preds = %bb.t, %bb.s, %emit_2bytes.exit35
  %i.ef = load ptr, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.eg = trunc i32 %i.dp to i8
  %i.eh = load ptr, ptr %i.ef, align 8, !tbaa !38 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 1
  store ptr %i.ei, ptr %i.ef, align 8, !tbaa !38
  store i8 %i.eg, ptr %i.eh, align 1, !tbaa !41
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ef, i64 8 ; 2 uses
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !42
  %i.el = add i64 %i.ek, -1                       ; 2 uses
  store i64 %i.el, ptr %i.ej, align 8, !tbaa !42
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %bb.u, label %emit_2bytes.exit39

bb.u:                                             ; preds = %emit_byte.exit.i36
  %i.en = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !43
  %i.ep = tail call i32 %i.eo(ptr noundef nonnull %0) #3, !inline_history !51
  %.not.i3.i37 = icmp eq i32 %i.ep, 0
  br i1 %.not.i3.i37, label %bb.v, label %emit_2bytes.exit39

bb.v:                                             ; preds = %bb.u
  %i.eq = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  store i32 22, ptr %i.er, align 8, !tbaa !46
  %i.es = load ptr, ptr %i.eq, align 8, !tbaa !50
  tail call void %i.es(ptr noundef nonnull %0) #3, !inline_history !51
  br label %emit_2bytes.exit39

emit_2bytes.exit39:                               ; preds = %emit_byte.exit.i36, %bb.u, %bb.v
  %i.et = load i32, ptr %i.ac, align 4, !tbaa !68
  %i.eu = load ptr, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.ev = trunc i32 %i.et to i8
  %i.ew = load ptr, ptr %i.eu, align 8, !tbaa !38 ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 1
  store ptr %i.ex, ptr %i.eu, align 8, !tbaa !38
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !41
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8 ; 2 uses
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !42
  %i.fa = add i64 %i.ez, -1                       ; 2 uses
  store i64 %i.fa, ptr %i.ey, align 8, !tbaa !42
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %bb.w, label %emit_byte.exit41

bb.w:                                             ; preds = %emit_2bytes.exit39
  %i.fc = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !43
  %i.fe = tail call i32 %i.fd(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i40 = icmp eq i32 %i.fe, 0
  br i1 %.not.i40, label %bb.x, label %emit_byte.exit41

bb.x:                                             ; preds = %bb.w
  %i.ff = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 40
  store i32 22, ptr %i.fg, align 8, !tbaa !46
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !50
  tail call void %i.fh(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit41

emit_byte.exit41:                                 ; preds = %emit_2bytes.exit39, %bb.w, %bb.x
  %i.fi = load i32, ptr %i.ac, align 4, !tbaa !68
  %i.fj = icmp sgt i32 %i.fi, 0
  br i1 %i.fj, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %emit_byte.exit41
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !69
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %emit_byte.exit47
  %.049 = phi ptr [ %i.hm, %emit_byte.exit47 ], [ %i.fl, %.lr.ph.preheader ] ; 5 uses
  %.02948 = phi i32 [ %i.hl, %emit_byte.exit47 ], [ 0, %.lr.ph.preheader ]
  %i.fm = load i32, ptr %.049, align 8, !tbaa !91
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.fo = trunc i32 %i.fm to i8
  %i.fp = load ptr, ptr %i.fn, align 8, !tbaa !38 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 1
  store ptr %i.fq, ptr %i.fn, align 8, !tbaa !38
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !41
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 8 ; 2 uses
  %i.fs = load i64, ptr %i.fr, align 8, !tbaa !42
  %i.ft = add i64 %i.fs, -1                       ; 2 uses
  store i64 %i.ft, ptr %i.fr, align 8, !tbaa !42
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.y, label %emit_byte.exit43

bb.y:                                             ; preds = %.lr.ph
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !43
  %i.fx = tail call i32 %i.fw(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i42 = icmp eq i32 %i.fx, 0
  br i1 %.not.i42, label %bb.z, label %emit_byte.exit43

bb.z:                                             ; preds = %bb.y
  %i.fy = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 40
  store i32 22, ptr %i.fz, align 8, !tbaa !46
  %i.ga = load ptr, ptr %i.fy, align 8, !tbaa !50
  tail call void %i.ga(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit43

emit_byte.exit43:                                 ; preds = %.lr.ph, %bb.y, %bb.z
  %i.gb = getelementptr inbounds nuw i8, ptr %.049, i64 8
  %i.gc = load i32, ptr %i.gb, align 8, !tbaa !101
  %i.gd = shl i32 %i.gc, 4
  %i.ge = getelementptr inbounds nuw i8, ptr %.049, i64 12
  %i.gf = load i32, ptr %i.ge, align 4, !tbaa !102
  %i.gg = add nsw i32 %i.gd, %i.gf
  %i.gh = load ptr, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.gi = trunc i32 %i.gg to i8
  %i.gj = load ptr, ptr %i.gh, align 8, !tbaa !38 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 1
  store ptr %i.gk, ptr %i.gh, align 8, !tbaa !38
  store i8 %i.gi, ptr %i.gj, align 1, !tbaa !41
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gh, i64 8 ; 2 uses
  %i.gm = load i64, ptr %i.gl, align 8, !tbaa !42
  %i.gn = add i64 %i.gm, -1                       ; 2 uses
  store i64 %i.gn, ptr %i.gl, align 8, !tbaa !42
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %bb.aa, label %emit_byte.exit45

bb.aa:                                            ; preds = %emit_byte.exit43
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gh, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !43
  %i.gr = tail call i32 %i.gq(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i44 = icmp eq i32 %i.gr, 0
  br i1 %.not.i44, label %bb.ab, label %emit_byte.exit45

bb.ab:                                            ; preds = %bb.aa
  %i.gs = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 40
  store i32 22, ptr %i.gt, align 8, !tbaa !46
  %i.gu = load ptr, ptr %i.gs, align 8, !tbaa !50
  tail call void %i.gu(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit45

emit_byte.exit45:                                 ; preds = %emit_byte.exit43, %bb.aa, %bb.ab
  %i.gv = getelementptr inbounds nuw i8, ptr %.049, i64 16
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !70
  %i.gx = load ptr, ptr %i.a, align 8, !tbaa !37  ; 4 uses
  %i.gy = trunc i32 %i.gw to i8
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !38 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1
  store ptr %i.ha, ptr %i.gx, align 8, !tbaa !38
  store i8 %i.gy, ptr %i.gz, align 1, !tbaa !41
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !42
  %i.hd = add i64 %i.hc, -1                       ; 2 uses
  store i64 %i.hd, ptr %i.hb, align 8, !tbaa !42
  %i.he = icmp eq i64 %i.hd, 0
  br i1 %i.he, label %bb.ac, label %emit_byte.exit47

bb.ac:                                            ; preds = %emit_byte.exit45
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gx, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !43
  %i.hh = tail call i32 %i.hg(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i46 = icmp eq i32 %i.hh, 0
  br i1 %.not.i46, label %bb.ad, label %emit_byte.exit47

bb.ad:                                            ; preds = %bb.ac
  %i.hi = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 40
  store i32 22, ptr %i.hj, align 8, !tbaa !46
  %i.hk = load ptr, ptr %i.hi, align 8, !tbaa !50
  tail call void %i.hk(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit47

emit_byte.exit47:                                 ; preds = %emit_byte.exit45, %bb.ac, %bb.ad
  %i.hl = add nuw nsw i32 %.02948, 1              ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.049, i64 96
  %i.hn = load i32, ptr %i.ac, align 4, !tbaa !68
  %i.ho = icmp slt i32 %i.hl, %i.hn
  br i1 %i.ho, label %.lr.ph, label %._crit_edge, !llvm.loop !103

._crit_edge:                                      ; preds = %emit_byte.exit47, %emit_byte.exit41
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @emit_dht(ptr noundef %0, i32 noundef %1, i32 noundef range(i32 0, 2) %2) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %2, 0                       ; 2 uses
  %i.a = sext i32 %1 to i64
  %i.b = add nsw i32 %1, 16
  %.036 = select i1 %.not, i32 %1, i32 %i.b       ; 2 uses
  %.035.in.v.v = select i1 %.not, i64 120, i64 152
  %.035.in.v = getelementptr inbounds nuw i8, ptr %0, i64 %.035.in.v.v
  %.035.in = getelementptr inbounds [8 x i8], ptr %.035.in.v, i64 %i.a
  %.035 = load ptr, ptr %.035.in, align 8, !tbaa !81 ; 5 uses
  %i.c = icmp eq ptr %.035, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store i32 49, ptr %i.e, align 8, !tbaa !46
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  store i32 %.036, ptr %i.f, align 4, !tbaa !41
  %i.g = load ptr, ptr %0, align 8, !tbaa !45
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  tail call void %i.h(ptr noundef nonnull %0) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %.035, i64 276 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !104
  %.not37 = icmp eq i32 %i.j, 0
  br i1 %.not37, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !37   ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !38   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1
  store ptr %i.n, ptr %i.l, align 8, !tbaa !38
  store i8 -1, ptr %i.m, align 1, !tbaa !41
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8, !tbaa !42
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.e, label %emit_byte.exit.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !43
  %i.u = tail call i32 %i.t(ptr noundef nonnull %0) #3, !inline_history !44
  %.not.i.i = icmp eq i32 %i.u, 0
  br i1 %.not.i.i, label %bb.f, label %emit_byte.exit.i

bb.f:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %0, align 8, !tbaa !45     ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  store i32 22, ptr %i.w, align 8, !tbaa !46
  %i.x = load ptr, ptr %i.v, align 8, !tbaa !50
  tail call void %i.x(ptr noundef nonnull %0) #3, !inline_history !44
  br label %emit_byte.exit.i

emit_byte.exit.i:                                 ; preds = %bb.f, %bb.e, %bb.d
  %i.y = load ptr, ptr %i.k, align 8, !tbaa !37   ; 4 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !38   ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 1
  store ptr %i.aa, ptr %i.y, align 8, !tbaa !38
  store i8 -60, ptr %i.z, align 1, !tbaa !41
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !42
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !42
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.g, label %emit_marker.exit

bb.g:                                             ; preds = %emit_byte.exit.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !43
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %0) #3, !inline_history !44
  %.not.i2.i = icmp eq i32 %i.ah, 0
  br i1 %.not.i2.i, label %bb.h, label %emit_marker.exit

bb.h:                                             ; preds = %bb.g
  %i.ai = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store i32 22, ptr %i.aj, align 8, !tbaa !46
  %i.ak = load ptr, ptr %i.ai, align 8, !tbaa !50
  tail call void %i.ak(ptr noundef nonnull %0) #3, !inline_history !44
  br label %emit_marker.exit

emit_marker.exit:                                 ; preds = %emit_byte.exit.i, %bb.g, %bb.h
  %i.al = getelementptr inbounds nuw i8, ptr %.035, i64 1
  %3 = load <16 x i8>, ptr %i.al, align 1, !tbaa !41
  %4 = zext <16 x i8> %3 to <16 x i32>
  %i.am = tail call i32 @llvm.vector.reduce.add.v16i32(<16 x i32> %4) ; 3 uses
  %i.an = add nuw nsw i32 %i.am, 19               ; 2 uses
  %i.ao = lshr i32 %i.an, 8
  %i.ap = load ptr, ptr %i.k, align 8, !tbaa !37  ; 4 uses
  %i.aq = trunc nuw nsw i32 %i.ao to i8
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !38 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 1
  store ptr %i.as, ptr %i.ap, align 8, !tbaa !38
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !41
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !42
  %i.av = add i64 %i.au, -1                       ; 2 uses
  store i64 %i.av, ptr %i.at, align 8, !tbaa !42
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.i, label %emit_byte.exit.i38

bb.i:                                             ; preds = %emit_marker.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ap, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !43
  %i.az = tail call i32 %i.ay(ptr noundef nonnull %0) #3, !inline_history !51
  %.not.i.i39 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i39, label %bb.j, label %emit_byte.exit.i38

bb.j:                                             ; preds = %bb.i
  %i.ba = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store i32 22, ptr %i.bb, align 8, !tbaa !46
  %i.bc = load ptr, ptr %i.ba, align 8, !tbaa !50
  tail call void %i.bc(ptr noundef nonnull %0) #3, !inline_history !51
  br label %emit_byte.exit.i38

emit_byte.exit.i38:                               ; preds = %bb.j, %bb.i, %emit_marker.exit
  %i.bd = load ptr, ptr %i.k, align 8, !tbaa !37  ; 4 uses
  %i.be = trunc i32 %i.an to i8
  %i.bf = load ptr, ptr %i.bd, align 8, !tbaa !38 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 1
  store ptr %i.bg, ptr %i.bd, align 8, !tbaa !38
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !41
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !42
  %i.bj = add i64 %i.bi, -1                       ; 2 uses
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !42
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.k, label %emit_2bytes.exit

bb.k:                                             ; preds = %emit_byte.exit.i38
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !43
  %i.bn = tail call i32 %i.bm(ptr noundef nonnull %0) #3, !inline_history !51
  %.not.i3.i = icmp eq i32 %i.bn, 0
  br i1 %.not.i3.i, label %bb.l, label %emit_2bytes.exit

bb.l:                                             ; preds = %bb.k
  %i.bo = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i32 22, ptr %i.bp, align 8, !tbaa !46
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !50
  tail call void %i.bq(ptr noundef nonnull %0) #3, !inline_history !51
  br label %emit_2bytes.exit

emit_2bytes.exit:                                 ; preds = %emit_byte.exit.i38, %bb.k, %bb.l
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !37  ; 4 uses
  %i.bs = trunc i32 %.036 to i8
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !38 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 1
  store ptr %i.bu, ptr %i.br, align 8, !tbaa !38
  store i8 %i.bs, ptr %i.bt, align 1, !tbaa !41
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !42
  %i.bx = add i64 %i.bw, -1                       ; 2 uses
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !42
  %i.by = icmp eq i64 %i.bx, 0
  br i1 %i.by, label %bb.m, label %emit_byte.exit.preheader

bb.m:                                             ; preds = %emit_2bytes.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !43
  %i.cb = tail call i32 %i.ca(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i = icmp eq i32 %i.cb, 0
  br i1 %.not.i, label %bb.n, label %emit_byte.exit.preheader

bb.n:                                             ; preds = %bb.m
  %i.cc = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 22, ptr %i.cd, align 8, !tbaa !46
  %i.ce = load ptr, ptr %i.cc, align 8, !tbaa !50
  tail call void %i.ce(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit.preheader

emit_byte.exit.preheader:                         ; preds = %emit_2bytes.exit, %bb.m, %bb.n
  br label %emit_byte.exit

.preheader:                                       ; preds = %emit_byte.exit41
  %.not48 = icmp eq i32 %i.am, 0
  br i1 %.not48, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.cf = getelementptr inbounds nuw i8, ptr %.035, i64 17
  %i.cg = zext nneg i32 %i.am to i64
  br label %bb.q

emit_byte.exit:                                   ; preds = %emit_byte.exit.preheader, %emit_byte.exit41
  %indvars.iv = phi i64 [ %indvars.iv.next, %emit_byte.exit41 ], [ 1, %emit_byte.exit.preheader ] ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.035, i64 %indvars.iv
  %i.ci = load i8, ptr %i.ch, align 1, !tbaa !41
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !37  ; 4 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !38 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 1
  store ptr %i.cl, ptr %i.cj, align 8, !tbaa !38
  store i8 %i.ci, ptr %i.ck, align 1, !tbaa !41
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !42
  %i.co = add i64 %i.cn, -1                       ; 2 uses
  store i64 %i.co, ptr %i.cm, align 8, !tbaa !42
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.o, label %emit_byte.exit41

bb.o:                                             ; preds = %emit_byte.exit
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  %i.cs = tail call i32 %i.cr(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i40 = icmp eq i32 %i.cs, 0
  br i1 %.not.i40, label %bb.p, label %emit_byte.exit41

bb.p:                                             ; preds = %bb.o
  %i.ct = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 40
  store i32 22, ptr %i.cu, align 8, !tbaa !46
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !50
  tail call void %i.cv(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit41

emit_byte.exit41:                                 ; preds = %emit_byte.exit, %bb.o, %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 17
  br i1 %exitcond.not, label %.preheader, label %emit_byte.exit, !llvm.loop !106

bb.q:                                             ; preds = %.lr.ph, %emit_byte.exit43
  %indvars.iv51 = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next52, %emit_byte.exit43 ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cf, i64 %indvars.iv51
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !41
  %i.cy = load ptr, ptr %i.k, align 8, !tbaa !37  ; 4 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !38 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 1
  store ptr %i.da, ptr %i.cy, align 8, !tbaa !38
  store i8 %i.cx, ptr %i.cz, align 1, !tbaa !41
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 8 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !42
  %i.dd = add i64 %i.dc, -1                       ; 2 uses
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !42
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.r, label %emit_byte.exit43

bb.r:                                             ; preds = %bb.q
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !43
  %i.dh = tail call i32 %i.dg(ptr noundef nonnull %0) #3, !inline_history !52
  %.not.i42 = icmp eq i32 %i.dh, 0
  br i1 %.not.i42, label %bb.s, label %emit_byte.exit43

bb.s:                                             ; preds = %bb.r
  %i.di = load ptr, ptr %0, align 8, !tbaa !45    ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 40
  store i32 22, ptr %i.dj, align 8, !tbaa !46
  %i.dk = load ptr, ptr %i.di, align 8, !tbaa !50
  tail call void %i.dk(ptr noundef nonnull %0) #3, !inline_history !52
  br label %emit_byte.exit43

emit_byte.exit43:                                 ; preds = %bb.q, %bb.r, %bb.s
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.dl = icmp samesign ult i64 %indvars.iv.next52, %i.cg
  br i1 %i.dl, label %bb.q, label %._crit_edge, !llvm.loop !107

._crit_edge:                                      ; preds = %emit_byte.exit43, %.preheader
  store i32 1, ptr %i.i, align 4, !tbaa !104
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v16i32(<16 x i32>) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !12, i64 8}
!9 = !{!"jpeg_compress_struct", !10, i64 0, !12, i64 8, !13, i64 16, !5, i64 24, !5, i64 28, !14, i64 32, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !15, i64 56, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !6, i64 88, !6, i64 120, !6, i64 152, !6, i64 184, !6, i64 200, !6, i64 216, !5, i64 232, !11, i64 240, !5, i64 248, !5, i64 252, !5, i64 256, !5, i64 260, !5, i64 264, !5, i64 268, !5, i64 272, !5, i64 276, !5, i64 280, !6, i64 284, !16, i64 286, !16, i64 288, !5, i64 292, !5, i64 296, !5, i64 300, !5, i64 304, !5, i64 308, !5, i64 312, !5, i64 316, !6, i64 320, !5, i64 352, !5, i64 356, !5, i64 360, !6, i64 364, !5, i64 404, !5, i64 408, !5, i64 412, !5, i64 416, !17, i64 424, !18, i64 432, !19, i64 440, !20, i64 448, !21, i64 456, !22, i64 464, !23, i64 472, !24, i64 480, !25, i64 488}
!10 = !{!"p1 _ZTS14jpeg_error_mgr", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 _ZTS15jpeg_memory_mgr", !11, i64 0}
!13 = !{!"p1 _ZTS17jpeg_progress_mgr", !11, i64 0}
!14 = !{!"p1 _ZTS20jpeg_destination_mgr", !11, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = !{!"short", !6, i64 0}
!17 = !{!"p1 _ZTS16jpeg_comp_master", !11, i64 0}
!18 = !{!"p1 _ZTS22jpeg_c_main_controller", !11, i64 0}
!19 = !{!"p1 _ZTS22jpeg_c_prep_controller", !11, i64 0}
!20 = !{!"p1 _ZTS22jpeg_c_coef_controller", !11, i64 0}
!21 = !{!"p1 _ZTS18jpeg_marker_writer", !11, i64 0}
!22 = !{!"p1 _ZTS20jpeg_color_converter", !11, i64 0}
!23 = !{!"p1 _ZTS16jpeg_downsampler", !11, i64 0}
!24 = !{!"p1 _ZTS16jpeg_forward_dct", !11, i64 0}
!25 = !{!"p1 _ZTS20jpeg_entropy_encoder", !11, i64 0}
!26 = !{!27, !11, i64 0}
!27 = !{!"jpeg_memory_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !28, i64 88}
!28 = !{!"long", !6, i64 0}
!29 = !{!9, !21, i64 456}
!30 = !{!31, !11, i64 0}
!31 = !{!"jpeg_marker_writer", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!32 = !{!31, !11, i64 8}
!33 = !{!31, !11, i64 16}
!34 = !{!31, !11, i64 24}
!35 = !{!31, !11, i64 32}
!36 = !{!31, !11, i64 40}
!37 = !{!9, !14, i64 32}
!38 = !{!39, !40, i64 0}
!39 = !{!"jpeg_destination_mgr", !40, i64 0, !28, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!40 = !{!"p1 omnipotent char", !11, i64 0}
!41 = !{!6, !6, i64 0}
!42 = !{!39, !28, i64 8}
!43 = !{!39, !11, i64 24}
!44 = distinct !{null, null}
!45 = !{!9, !10, i64 0}
!46 = !{!47, !5, i64 40}
!47 = !{!"jpeg_error_mgr", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !5, i64 40, !6, i64 44, !5, i64 124, !28, i64 128, !48, i64 136, !5, i64 144, !48, i64 152, !5, i64 160, !5, i64 164}
!48 = !{!"p2 omnipotent char", !49, i64 0}
!49 = !{!"any p2 pointer", !11, i64 0}
!50 = !{!47, !11, i64 0}
!51 = distinct !{null, null}
!52 = distinct !{null}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!9, !5, i64 280}
!56 = distinct !{null, null, null}
!57 = distinct !{null, null, null}
!58 = distinct !{null, null}
!59 = !{!9, !6, i64 284}
!60 = !{!9, !16, i64 286}
!61 = !{!9, !16, i64 288}
!62 = !{!9, !5, i64 292}
!63 = distinct !{null, null, null}
!64 = distinct !{null, null, null}
!65 = distinct !{null, null}
!66 = !{!9, !5, i64 72}
!67 = distinct !{null}
!68 = !{!9, !5, i64 68}
!69 = !{!9, !11, i64 80}
!70 = !{!71, !5, i64 16}
!71 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !5, i64 24, !5, i64 28, !5, i64 32, !5, i64 36, !5, i64 40, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !5, i64 64, !5, i64 68, !5, i64 72, !11, i64 80, !11, i64 88}
!72 = distinct !{!72, !54}
!73 = !{!9, !5, i64 252}
!74 = !{!9, !5, i64 300}
!75 = !{!9, !5, i64 64}
!76 = !{!71, !5, i64 20}
!77 = !{!71, !5, i64 24}
!78 = distinct !{!78, !54}
!79 = !{!47, !11, i64 8}
!80 = !{!9, !5, i64 316}
!81 = !{!11, !11, i64 0}
!82 = !{!9, !5, i64 404}
!83 = !{!9, !5, i64 412}
!84 = distinct !{!84, !54}
!85 = !{!9, !5, i64 272}
!86 = distinct !{null, null, null}
!87 = distinct !{null, null, null}
!88 = distinct !{null, null, null}
!89 = distinct !{null, null, null}
!90 = distinct !{null, null}
!91 = !{!71, !5, i64 0}
!92 = distinct !{!92, !54}
!93 = !{!9, !5, i64 408}
!94 = !{!9, !5, i64 416}
!95 = !{!16, !16, i64 0}
!96 = !{!97, !5, i64 128}
!97 = !{!"", !6, i64 0, !5, i64 128}
!98 = distinct !{!98, !54}
!99 = !{!9, !5, i64 44}
!100 = !{!9, !5, i64 40}
!101 = !{!71, !5, i64 8}
!102 = !{!71, !5, i64 12}
!103 = distinct !{!103, !54}
!104 = !{!105, !5, i64 276}
!105 = !{!"", !6, i64 0, !6, i64 17, !5, i64 276}
!106 = distinct !{!106, !54}
!107 = distinct !{!107, !54}
end_hunk_0
