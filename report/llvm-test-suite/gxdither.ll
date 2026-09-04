Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/gxdither?download=true
begin_hunk_0_@gx_color_render
define dso_local void @gx_color_render(ptr noundef %0, ptr noundef initializes((0, 20)) %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 448
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !24   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 2, !tbaa !27
  %.not = icmp ne i8 %i.d, 0                      ; 2 uses
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.f = load i16, ptr %i.e, align 2, !tbaa !28
  switch i16 %i.f, label %bb.e [
    i16 0, label %bb.c
    i16 -1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !31   ; 2 uses
  store i64 %i.h, ptr %1, align 8, !tbaa !34
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.h, ptr %i.i, align 8, !tbaa !35
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.j, align 8, !tbaa !36
  br label %bb.ap

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !tbaa !37   ; 2 uses
  store i64 %i.l, ptr %1, align 8, !tbaa !34
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !35
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.n, align 8, !tbaa !36
  br label %bb.ap

bb.e:                                             ; preds = %bb.b, %bb.a
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !38   ; 13 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 44
  %i.q = load i16, ptr %i.p, align 4, !tbaa !41   ; 2 uses
  %i.r = zext i16 %i.q to i64                     ; 5 uses
  %i.s = icmp ugt i16 %i.q, 254
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = add nuw nsw i64 %i.r, 1                  ; 3 uses
  %i.u = load i16, ptr %0, align 2, !tbaa !42
  %i.v = zext i16 %i.u to i64
  %i.w = mul nuw nsw i64 %i.t, %i.v
  %i.x = lshr i64 %i.w, 16
  %i.y = trunc nuw i64 %i.x to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.aa = load i16, ptr %i.z, align 2, !tbaa !43
  %i.ab = zext i16 %i.aa to i64
  %i.ac = mul nuw nsw i64 %i.t, %i.ab
  %i.ad = lshr i64 %i.ac, 16
  %i.ae = trunc nuw i64 %i.ad to i16
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !44
  %i.ah = zext i16 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.t, %i.ah
  %i.aj = lshr i64 %i.ai, 16
  %i.ak = trunc nuw i64 %i.aj to i16
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !45
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !47
  %i.ap = tail call i64 %i.ao(ptr noundef nonnull %i.o, i16 noundef zeroext %i.y, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.ak) #3 ; 2 uses
  store i64 %i.ap, ptr %1, align 8, !tbaa !34
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ap, ptr %i.aq, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.ar, align 8, !tbaa !36
  br label %bb.ap

bb.g:                                             ; preds = %bb.e
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 288
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load i32, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %i.aw = zext i32 %i.av to i64                   ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !52
  %.not216 = icmp eq i32 %i.ay, 0
  %brmerge = or i1 %.not, %.not216
  br i1 %brmerge, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.az = mul nuw nsw i64 %i.aw, %i.r
  %i.ba = add nuw nsw i64 %i.az, 1
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.bc = load i8, ptr %i.bb, align 1, !tbaa !53
  %.not222 = icmp eq i8 %i.bc, 0
  br i1 %.not222, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !28
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.bf = tail call zeroext i16 @gx_color_luminance(ptr noundef nonnull %0) #3
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.in = phi i16 [ %i.be, %bb.i ], [ %i.bf, %bb.j ]
  %i.bg = zext i16 %.in to i64
  %i.bh = mul nuw nsw i64 %i.ba, %i.bg
  %i.bi = lshr i64 %i.bh, 16                      ; 2 uses
  %i.bj = udiv i64 %i.bi, %i.aw
  %i.bk = trunc i64 %i.bj to i16                  ; 4 uses
  %i.bl = urem i64 %i.bi, %i.aw
  %i.bm = trunc nuw i64 %i.bl to i32
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %i.bm, ptr %i.bn, align 8, !tbaa !36
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 40
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !47
  %i.bs = tail call i64 %i.br(ptr noundef nonnull %i.o, i16 noundef zeroext %i.bk, i16 noundef zeroext %i.bk, i16 noundef zeroext %i.bk) #3 ; 2 uses
  store i64 %i.bs, ptr %1, align 8, !tbaa !34
  %i.bt = load i32, ptr %i.bn, align 8, !tbaa !36
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.bs, ptr %i.bv, align 8, !tbaa !35
  br label %bb.ap

bb.m:                                             ; preds = %bb.k
  %i.bw = add i16 %i.bk, 1                        ; 3 uses
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !45
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !47
  %i.ca = tail call i64 %i.bz(ptr noundef nonnull %i.o, i16 noundef zeroext %i.bw, i16 noundef zeroext %i.bw, i16 noundef zeroext %i.bw) #3
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ca, ptr %i.cb, align 8, !tbaa !35
  tail call void @gx_color_load(ptr noundef nonnull %1, ptr noundef nonnull %2) #3
  br label %bb.ap

bb.n:                                             ; preds = %bb.g
  %i.cc = load i16, ptr %0, align 2, !tbaa !42
  %i.cd = zext i16 %i.cc to i64
  %i.ce = mul nuw nsw i64 %i.cd, %i.r             ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 2
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !43
  %i.ch = zext i16 %i.cg to i64
  %i.ci = mul nuw nsw i64 %i.ch, %i.r             ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !44
  %i.cl = zext i16 %i.ck to i64
  %i.cm = mul nuw nsw i64 %i.cl, %i.r             ; 2 uses
  %.lhs.trunc = trunc nuw nsw i64 %i.ce to i32
  %i.cn = udiv i32 %.lhs.trunc, 65535
  %i.co = trunc nuw nsw i32 %i.cn to i16          ; 4 uses
  %.lhs.trunc224 = trunc nuw nsw i64 %i.ci to i32
  %i.cp = udiv i32 %.lhs.trunc224, 65535
  %i.cq = trunc nuw nsw i32 %i.cp to i16          ; 4 uses
  %.lhs.trunc226 = trunc nuw nsw i64 %i.cm to i32
  %i.cr = udiv i32 %.lhs.trunc226, 65535
  %i.cs = trunc nuw nsw i32 %i.cr to i16          ; 4 uses
  %i.ct = trunc i64 %i.ce to i16
  %i.cu = add i16 %i.co, %i.ct                    ; 4 uses
  %i.cv = trunc i64 %i.ci to i16
  %i.cw = add i16 %i.cq, %i.cv                    ; 4 uses
  %i.cx = trunc i64 %i.cm to i16
  %i.cy = add i16 %i.cs, %i.cx                    ; 4 uses
  %i.cz = or i16 %i.cw, %i.cu
  %i.da = or i16 %i.cz, %i.cy
  %.not218 = icmp eq i16 %i.da, 0
  br i1 %.not218, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.db = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !45
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !47
  %i.df = tail call i64 %i.de(ptr noundef nonnull %i.o, i16 noundef zeroext %i.co, i16 noundef zeroext %i.cq, i16 noundef zeroext %i.cs) #3 ; 2 uses
  store i64 %i.df, ptr %1, align 8, !tbaa !34
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.df, ptr %i.dg, align 8, !tbaa !35
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 0, ptr %i.dh, align 8, !tbaa !36
  br label %bb.ap

bb.p:                                             ; preds = %bb.n
  %i.di = icmp slt i16 %i.cu, 0
  br i1 %i.di, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.dj = xor i16 %i.cu, -1
  %i.dk = add nuw nsw i16 %i.co, 1
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.0202 = phi i16 [ %i.dk, %bb.q ], [ %i.co, %bb.p ] ; 2 uses
  %.0197 = phi i16 [ %i.dj, %bb.q ], [ %i.cu, %bb.p ] ; 8 uses
  %.0194 = phi i16 [ -1, %bb.q ], [ 1, %bb.p ]
  %.0182 = phi i32 [ 30, %bb.q ], [ 0, %bb.p ]    ; 2 uses
  %i.dl = icmp slt i16 %i.cw, 0
  br i1 %i.dl, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.dm = xor i16 %i.cw, -1
  %i.dn = add nuw nsw i16 %i.cq, 1
  %narrow = add nuw nsw i32 %.0182, 59
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.0200 = phi i16 [ %i.dn, %bb.s ], [ %i.cq, %bb.r ] ; 2 uses
  %.0196 = phi i16 [ %i.dm, %bb.s ], [ %i.cw, %bb.r ] ; 8 uses
  %.0192 = phi i16 [ -1, %bb.s ], [ 1, %bb.r ]
  %.1 = phi i32 [ %narrow, %bb.s ], [ %.0182, %bb.r ] ; 2 uses
  %i.do = icmp slt i16 %i.cy, 0
  br i1 %i.do, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.dp = xor i16 %i.cy, -1
  %i.dq = add nuw nsw i16 %i.cs, 1
  %3 = add nuw nsw i32 %.1, 11
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.0198 = phi i16 [ %i.dq, %bb.u ], [ %i.cs, %bb.t ] ; 2 uses
  %.0195 = phi i16 [ %i.dp, %bb.u ], [ %i.cy, %bb.t ] ; 9 uses
  %.0193 = phi i16 [ -1, %bb.u ], [ 1, %bb.t ]
  %.2 = phi i32 [ %3, %bb.u ], [ %.1, %bb.t ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 40
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !47
  %i.dv = tail call i64 %i.du(ptr noundef nonnull %i.o, i16 noundef zeroext %.0202, i16 noundef zeroext %.0200, i16 noundef zeroext %.0198) #3 ; 3 uses
  store i64 %i.dv, ptr %1, align 8, !tbaa !34
  %i.dw = icmp samesign ugt i16 %.0196, %.0197
  br i1 %i.dw, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  %i.dx = icmp samesign ugt i16 %.0195, %.0196
  %.0195..0196 = tail call i16 @llvm.umax.i16(i16 %.0195, i16 %.0196) ; 2 uses
  %. = select i1 %i.dx, i32 4, i32 2              ; 2 uses
  %i.dy = icmp samesign ugt i16 %.0195, %.0197
  br i1 %i.dy, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dz = zext nneg i16 %.0196 to i64             ; 2 uses
  %i.ea = zext nneg i16 %.0195 to i64
  %i.eb = add nuw nsw i64 %i.ea, %i.dz
  %.pre = zext nneg i16 %.0197 to i64
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.ec = zext nneg i16 %.0197 to i64             ; 2 uses
  %i.ed = zext nneg i16 %.0196 to i64             ; 2 uses
  %i.ee = add nuw nsw i64 %i.ed, %i.ec
  br label %bb.ac

bb.z:                                             ; preds = %bb.v
  %i.ef = icmp samesign ugt i16 %.0195, %.0197
  %.0195..0197 = tail call i16 @llvm.umax.i16(i16 %.0195, i16 %.0197) ; 2 uses
  %.223 = select i1 %i.ef, i32 4, i32 1           ; 2 uses
  %i.eg = icmp samesign ugt i16 %.0195, %.0196
  br i1 %i.eg, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.eh = zext nneg i16 %.0195 to i64
  %i.ei = zext nneg i16 %.0197 to i64             ; 2 uses
  %i.ej = add nuw nsw i64 %i.eh, %i.ei
  %.pre228 = zext nneg i16 %.0196 to i64
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.ek = zext nneg i16 %.0197 to i64             ; 2 uses
  %i.el = zext nneg i16 %.0196 to i64             ; 2 uses
  %i.em = add nuw nsw i64 %i.el, %i.ek
  br label %bb.ac

bb.ac:                                            ; preds = %bb.aa, %bb.ab, %bb.x, %bb.y
  %.pre-phi229 = phi i64 [ %.pre228, %bb.aa ], [ %i.el, %bb.ab ], [ %i.dz, %bb.x ], [ %i.ed, %bb.y ]
  %.pre-phi = phi i64 [ %i.ei, %bb.aa ], [ %i.ek, %bb.ab ], [ %.pre, %bb.x ], [ %i.ec, %bb.y ]
  %.2191 = phi i16 [ %.0195..0197, %bb.aa ], [ %.0195..0197, %bb.ab ], [ %.0195..0196, %bb.x ], [ %.0195..0196, %bb.y ]
  %.0188 = phi i64 [ %i.ej, %bb.aa ], [ %i.em, %bb.ab ], [ %i.eb, %bb.x ], [ %i.ee, %bb.y ] ; 2 uses
  %.2187 = phi i32 [ %.223, %bb.aa ], [ %.223, %bb.ab ], [ %., %bb.x ], [ %., %bb.y ]
  %.0183 = phi i32 [ 5, %bb.aa ], [ 3, %bb.ab ], [ 6, %bb.x ], [ 3, %bb.y ]
  %i.en = zext nneg i16 %.2191 to i64             ; 2 uses
  %i.eo = mul nuw nsw i64 %i.en, 100              ; 2 uses
  %i.ep = mul nuw nsw i64 %.0188, 71              ; 2 uses
  %i.eq = add nuw nsw i64 %.pre-phi229, %.pre-phi
  %i.er = zext nneg i16 %.0195 to i64
  %i.es = add nuw nsw i64 %i.eq, %i.er            ; 3 uses
  %i.et = icmp samesign ugt i64 %i.eo, %i.ep
  %i.eu = mul nuw nsw i64 %i.es, 62               ; 2 uses
  br i1 %i.et, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ev = icmp samesign ugt i64 %i.eu, %i.eo
  br i1 %i.ev, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.ew = mul nuw nsw i64 %i.es, %i.aw
  %i.ex = udiv i64 %i.ew, 196605
  br label %bb.aj

bb.af:                                            ; preds = %bb.ad
  %i.ey = mul nuw nsw i64 %i.en, %i.aw
  %i.ez = udiv i64 %i.ey, 65535
  br label %bb.aj

bb.ag:                                            ; preds = %bb.ac
  %i.fa = icmp samesign ugt i64 %i.eu, %i.ep
  br i1 %i.fa, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fb = mul nuw nsw i64 %i.es, %i.aw
  %i.fc = udiv i64 %i.fb, 196605
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.fd = mul nuw nsw i64 %.0188, %i.aw
  %i.fe = udiv i64 %i.fd, 131070
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai, %bb.ae, %bb.af
  %.1184 = phi i32 [ 7, %bb.ae ], [ %.2187, %bb.af ], [ 7, %bb.ah ], [ %.0183, %bb.ai ] ; 4 uses
  %.0.in = phi i64 [ %i.ex, %bb.ae ], [ %i.ez, %bb.af ], [ %i.fc, %bb.ah ], [ %i.fe, %bb.ai ] ; 2 uses
  %.0 = trunc nuw nsw i64 %.0.in to i32           ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store i32 %.0, ptr %i.ff, align 8, !tbaa !36
  %i.fg = icmp eq i64 %.0.in, 0
  br i1 %i.fg, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.fh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dv, ptr %i.fh, align 8, !tbaa !35
  br label %bb.ap

bb.al:                                            ; preds = %bb.aj
  %i.fi = and i32 %.1184, 1
  %.not219 = icmp eq i32 %i.fi, 0
  %i.fj = select i1 %.not219, i16 0, i16 %.0194
  %spec.select = add nsw i16 %i.fj, %.0202        ; 2 uses
  %i.fk = and i32 %.1184, 2
  %.not220 = icmp eq i32 %i.fk, 0
  %i.fl = select i1 %.not220, i16 0, i16 %.0192
  %.1201 = add nsw i16 %i.fl, %.0200              ; 2 uses
  %i.fm = and i32 %.1184, 4
  %.not221 = icmp eq i32 %i.fm, 0
  %i.fn = select i1 %.not221, i16 0, i16 %.0193
  %.1199 = add nsw i16 %i.fn, %.0198              ; 2 uses
  %i.fo = zext nneg i32 %.1184 to i64
  %i.fp = getelementptr inbounds nuw [2 x i8], ptr @lum, i64 %i.fo
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !54
  %4 = zext i16 %i.fq to i32
  %5 = icmp samesign ugt i32 %.2, %4
  br i1 %5, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dv, ptr %i.fr, align 8, !tbaa !35
  %i.fs = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 40
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !47
  %i.fv = tail call i64 %i.fu(ptr noundef nonnull %i.o, i16 noundef zeroext %spec.select, i16 noundef zeroext %.1201, i16 noundef zeroext %.1199) #3
  store i64 %i.fv, ptr %1, align 8, !tbaa !34
  %i.fw = sub i32 %i.av, %.0
  store i32 %i.fw, ptr %i.ff, align 8, !tbaa !36
  br label %bb.ao

bb.an:                                            ; preds = %bb.al
  %i.fx = load ptr, ptr %i.dr, align 8, !tbaa !45
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 40
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !47
  %i.ga = tail call i64 %i.fz(ptr noundef nonnull %i.o, i16 noundef zeroext %spec.select, i16 noundef zeroext %.1201, i16 noundef zeroext %.1199) #3
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !35
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  tail call void @gx_color_load(ptr noundef nonnull %1, ptr noundef nonnull %2) #3
  br label %bb.ap

bb.ap:                                            ; preds = %bb.o, %bb.ao, %bb.ak, %bb.l, %bb.m, %bb.f, %bb.d, %bb.c
  ret void
}

declare zeroext i16 @gx_color_luminance(ptr noundef) local_unnamed_addr #1

declare void @gx_color_load(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!"p1 _ZTS10gs_state_s", !8, i64 0}
!10 = !{!"", !8, i64 0, !8, i64 8}
!11 = !{!"float", !5, i64 0}
!12 = !{!"long", !5, i64 0}
!13 = !{!"gs_matrix_fixed_s", !11, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88, !12, i64 96, !12, i64 104}
!14 = !{!"gs_matrix_s", !11, i64 0, !12, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !12, i64 40, !11, i64 48, !12, i64 56, !11, i64 64, !12, i64 72, !11, i64 80, !12, i64 88}
!15 = !{!"p1 omnipotent char", !8, i64 0}
!16 = !{!"p1 _ZTS9gx_path_s", !8, i64 0}
!17 = !{!"p1 _ZTS13line_params_s", !8, i64 0}
!18 = !{!"p1 _ZTS10halftone_s", !8, i64 0}
!19 = !{!"p1 _ZTS10gs_color_s", !8, i64 0}
!20 = !{!"p1 _ZTS17gx_device_color_s", !8, i64 0}
!21 = !{!"p1 _ZTS9gs_font_s", !8, i64 0}
!22 = !{!"p1 _ZTS8device_s", !8, i64 0}
!23 = !{!"gs_state_s", !9, i64 0, !10, i64 8, !13, i64 24, !14, i64 136, !6, i64 232, !15, i64 240, !15, i64 248, !16, i64 256, !16, i64 264, !6, i64 272, !17, i64 280, !18, i64 288, !8, i64 296, !19, i64 304, !20, i64 312, !8, i64 320, !21, i64 328, !14, i64 336, !6, i64 432, !5, i64 436, !5, i64 437, !11, i64 440, !22, i64 448, !6, i64 456}
!24 = !{!23, !22, i64 448}
!25 = !{!"short", !5, i64 0}
!26 = !{!"gs_color_s", !25, i64 0, !25, i64 2, !25, i64 4, !25, i64 6, !5, i64 8, !5, i64 9}
!27 = !{!26, !5, i64 8}
!28 = !{!26, !25, i64 6}
!29 = !{!"p1 _ZTS11gx_device_s", !8, i64 0}
!30 = !{!"device_s", !29, i64 0, !6, i64 8, !12, i64 16, !12, i64 24}
!31 = !{!30, !12, i64 24}
!32 = !{!"p1 _ZTS11gx_bitmap_s", !8, i64 0}
!33 = !{!"gx_device_color_s", !12, i64 0, !12, i64 8, !6, i64 16, !32, i64 24}
!34 = !{!33, !12, i64 0}
!35 = !{!33, !12, i64 8}
!36 = !{!33, !6, i64 16}
!37 = !{!30, !12, i64 16}
!38 = !{!30, !29, i64 0}
!39 = !{!"p1 _ZTS17gx_device_procs_s", !8, i64 0}
!40 = !{!"gx_device_s", !6, i64 0, !39, i64 8, !15, i64 16, !6, i64 24, !6, i64 28, !11, i64 32, !11, i64 36, !6, i64 40, !25, i64 44, !6, i64 48, !6, i64 52}
!41 = !{!40, !25, i64 44}
!42 = !{!26, !25, i64 0}
!43 = !{!26, !25, i64 2}
!44 = !{!26, !25, i64 4}
!45 = !{!40, !39, i64 8}
!46 = !{!"gx_device_procs_s", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!47 = !{!46, !8, i64 40}
!48 = !{!23, !18, i64 288}
!49 = !{!"p1 _ZTS8ht_bit_s", !8, i64 0}
!50 = !{!"halftone_s", !11, i64 0, !11, i64 4, !6, i64 8, !6, i64 12, !49, i64 16, !6, i64 24}
!51 = !{!50, !6, i64 24}
!52 = !{!40, !6, i64 40}
!53 = !{!26, !5, i64 9}
!54 = !{!25, !25, i64 0}
end_hunk_0
