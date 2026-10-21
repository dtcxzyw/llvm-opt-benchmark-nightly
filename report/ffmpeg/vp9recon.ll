Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vp9recon?download=true
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 12
begin_hunk_0_@ff_vp9_intra_recon_8bpp:bb.a
  %i.w = zext i8 %i.v to i32
  %i.x = shl nuw nsw i32 %i.w, 1
  %i.y = shl i32 %i.s, 1
  %i.z = shl nuw i32 1, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 3964
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !66
  %i.ac = sub i32 %i.ab, %i.j
  %i.ad = shl i32 %i.ac, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ad, i32 %i.q) ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 3960
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !67
  %i.ag = sub i32 %i.af, %i.h
  %i.ah = shl i32 %i.ag, 1
  %i.ai = tail call i32 @llvm.umin.i32(i32 %i.ah, i32 %i.x) ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ak = load i8, ptr %i.aj, align 4, !tbaa !68
  %i.al = zext i8 %i.ak to i32
  %i.am = shl nuw nsw i32 %i.al, 2                ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !69 ; 5 uses
  %i.ap = add i32 %i.am, %i.ao
  %i.aq = shl nuw i32 1, %i.ao                    ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !70
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 448 ; 5 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !76 ; 3 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %.._crit_edge118_crit_edge, label %.preheader93.lr.ph

.._crit_edge118_crit_edge:                        ; preds = %bb.a
  %.pre207 = and i32 %i.h, 7
  br label %._crit_edge118

.preheader93.lr.ph:                               ; preds = %bb.a
  %i.aw = add i32 %i.am, %i.s
  %.not149 = icmp eq i32 %..i, 0
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 5 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.f, i64 10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bc = icmp sgt i32 %i.h, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = and i32 %i.h, 7                         ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.d, i64 1856
  %i.bk = sext i32 %i.aw to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 4, %i.s                         ; 2 uses
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %.not149, label %._crit_edge118, label %.preheader93.us.preheader

.preheader93.us.preheader:                        ; preds = %.preheader93.lr.ph
  %i.bp = shl nsw i32 %i.j, 3
  %i.bq = add nsw i32 %i.q, -1
  %i.br = getelementptr inbounds i8, ptr %i.av, i64 %1
  %i.bs = sext i32 %i.t to i64                    ; 2 uses
  %i.bt = sext i32 %i.bq to i64
  %i.bu = zext nneg i32 %..i to i64
  %i.bv = sext i32 %i.bp to i64
  %i.bw = zext nneg i32 %i.z to i64
  %i.bx = zext nneg i32 %i.ai to i64
  br label %.preheader93.us

.preheader93.us:                                  ; preds = %.preheader93.us.preheader, %._crit_edge113.us
  %indvars.iv176 = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next177, %._crit_edge113.us ] ; 5 uses
  %.0178.i117.us = phi ptr [ %i.br, %.preheader93.us.preheader ], [ %i.mu, %._crit_edge113.us ] ; 2 uses
  %.0179.i116.us = phi ptr [ %i.as, %.preheader93.us.preheader ], [ %i.mx, %._crit_edge113.us ] ; 2 uses
  %.0186.i114.us = phi i64 [ 0, %.preheader93.us.preheader ], [ %indvars.iv.next172, %._crit_edge113.us ]
  %i.by = shl nsw i64 %indvars.iv176, 1
  %i.bz = icmp sgt i64 %indvars.iv176, 0
  %i.ca = or i1 %i.bc, %i.bz                      ; 5 uses
  %i.cb = zext i1 %i.ca to i64
  %i.cc = trunc nsw i64 %indvars.iv176 to i32     ; 2 uses
  %i.cd = or i32 %i.be, %i.cc
  %or.cond3.not.i.us = icmp eq i32 %i.cd, 0
  %i.ce = icmp eq i64 %indvars.iv176, 0           ; 2 uses
  %i.cf = select i1 %i.ca, i32 1, i32 255
  %i.cg = shl i32 %i.cc, 2
  %invariant.gep = getelementptr i8, ptr %i.ax, i64 %i.by
  br label %bb.b

bb.b:                                             ; preds = %.preheader93.us, %bb.af
  %indvars.iv171 = phi i64 [ %.0186.i114.us, %.preheader93.us ], [ %indvars.iv.next172, %bb.af ] ; 4 uses
  %indvars.iv169 = phi i64 [ 0, %.preheader93.us ], [ %indvars.iv.next170, %bb.af ] ; 8 uses
  %.0176.i109.us = phi ptr [ %.0178.i117.us, %.preheader93.us ], [ %i.jr, %bb.af ] ; 3 uses
  %.0177.i106.us = phi ptr [ %.0179.i116.us, %.preheader93.us ], [ %i.jq, %bb.af ] ; 5 uses
  %i.ch = load i32, ptr %i.k, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.r, align 4, !tbaa !41 ; 7 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.ax, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.az, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv169
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.az, align 2, !tbaa !78
  %.not196.i.us237 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us237, label %.thread238, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread238

.thread238:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv171
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.ba, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv171
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread238, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread238 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread238 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread238 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.bb, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bd, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.j, %i.do
  %i.dq = icmp sgt i64 %indvars.iv169, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv169, %i.bt      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cb
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %bb.y

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 7 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.j
  %i.ei = shl i32 %i.eh, 3
  %i.ej = trunc nsw i64 %indvars.iv169 to i32
  %i.ek = shl i32 %i.ej, 2
  %i.el = sub i32 %i.ei, %i.ek                    ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5
  %i.eo = icmp eq i8 %i.en, 3                     ; 3 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.ca, label %bb.h, label %.critedge.i.us

.critedge.i.us:                                   ; preds = %bb.g
  %i.ep = add nsw i32 %i.dv, -8
  %i.eq = shl i32 128, %i.ep
  %i.er = trunc i32 %i.eq to i8
  %i.es = add i8 %i.er, -1
  %i.et = sext i32 %i.ee to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.ay, i8 %i.es, i64 %i.et, i1 false)
  %.pre205 = and i64 %i.ec, 2189
  br label %bb.q

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.eu = sub nsw i64 0, %i.dm
  %i.ev = getelementptr inbounds i8, ptr %.0177.i106.us, i64 %i.eu ; 3 uses
  %i.ew = sub nsw i64 0, %i.dl
  %i.ex = getelementptr inbounds i8, ptr %.0176.i109.us, i64 %i.ew ; 2 uses
  %i.ey = select i1 %i.ce, ptr %i.ex, ptr %i.ev   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread61.us

bb.j:                                             ; preds = %bb.i
  %i.ez = icmp eq i64 %indvars.iv169, 0
  %or.cond7.i.us = or i1 %i.ce, %i.ez             ; 2 uses
  %spec.select = select i1 %or.cond7.i.us, ptr %i.ey, ptr %i.ev
  %spec.select.a = select i1 %or.cond7.i.us, ptr %i.ex, ptr %i.ev
  br label %.thread61.us

.thread.us:                                       ; preds = %bb.h
  %i.fa = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !70
  %i.fc = shl nsw i64 %indvars.iv169, 2
  %i.fd = getelementptr i8, ptr %i.fb, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 %i.bv  ; 2 uses
  br label %.thread61.us

.thread61.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fe, %.thread.us ], [ %spec.select, %bb.j ], [ %i.ey, %bb.i ] ; 7 uses
  %.0279.i.ph.us = phi ptr [ %i.fe, %.thread.us ], [ %spec.select.a, %bb.j ], [ undef, %bb.i ] ; 3 uses
  %i.ff = and i64 %i.ec, 2189                     ; 3 uses
  %.not289.not.i.us = icmp ne i64 %i.ff, 0
  %i.fg = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fg, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread61.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %bb.y

bb.m:                                             ; preds = %bb.k
  %.not201 = xor i1 %i.eo, true
  %or.cond9.i.us = select i1 %.not201, i1 true, i1 %i.ds
  %i.fh = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.fh, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %bb.y, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread61.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fi = sext i32 %i.ee to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ay, ptr align 1 %.0280.i.ph.us, i64 %i.fi, i1 false)
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.fj = sext i32 %i.el to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ay, ptr align 1 %.0280.i.ph.us, i64 %i.fj, i1 false)
  %i.fk = getelementptr i8, ptr %i.ay, i64 %i.fj  ; 2 uses
  %i.fl = getelementptr i8, ptr %i.fk, i64 -1
  %i.fm = load i8, ptr %i.fl, align 1, !tbaa !40
  %i.fn = sub nsw i32 %i.ee, %i.el
  %i.fo = zext nneg i32 %i.fn to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.fk, i8 %i.fm, i64 %i.fo, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %.critedge.i.us
  %.pre-phi206 = phi i64 [ %i.ff, %bb.p ], [ %i.ff, %bb.o ], [ %.pre205, %.critedge.i.us ]
  %.0279.i68.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ undef, %.critedge.i.us ]
  %.0280.i65.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ undef, %.critedge.i.us ]
  %.not293.not.i.us = icmp eq i64 %.pre-phi206, 0
  br i1 %.not293.not.i.us, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %or.cond11.i.us = and i1 %i.ca, %i.dr
  br i1 %or.cond11.i.us, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.fp = add nsw i32 %i.dv, -8
  %i.fq = shl i32 128, %i.fp
  %i.fr = add nuw i32 %i.fq, %i.cf
  %i.fs = trunc i32 %i.fr to i8
  br label %.sink.split

bb.t:                                             ; preds = %bb.r
  %i.ft = getelementptr inbounds i8, ptr %.0279.i68.us, i64 -1
  %i.fu = load i8, ptr %i.ft, align 1, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.s, %bb.t
  %.sink = phi i8 [ %i.fu, %bb.t ], [ %i.fs, %bb.s ]
  store i8 %.sink, ptr %i.bf, align 1, !tbaa !40
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %bb.q
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %or.cond13.i.us = select i1 %i.ca, i1 %i.ds, i1 false
  %i.fv = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.fv, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.fw = load i8, ptr %i.bh, align 1, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.bg, i8 %i.fw, i64 4, i1 false)
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.fx = getelementptr inbounds nuw i8, ptr %.0280.i65.us, i64 4
  %i.fy = load i32, ptr %i.fx, align 1
  store i32 %i.fy, ptr %i.bg, align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.u, %bb.m, %bb.l, %bb.f
  %.060.us = phi ptr [ %i.ay, %bb.w ], [ %i.ay, %bb.x ], [ %i.ay, %bb.u ], [ %i.ay, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %.0280.i.ph.us, %bb.m ]
  %i.fz = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.fz, 0
  br i1 %.not296.not.i.us, label %bb.z, label %check_intra_mode.exit.us

bb.z:                                             ; preds = %bb.y
  br i1 %i.dr, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ga = add nsw i32 %i.dv, -8
  %i.gb = shl i32 128, %i.ga
  %i.gc = trunc i32 %i.gb to i8
  %i.gd = or disjoint i8 %i.gc, 1
  %i.ge = shl i32 4, %.pre.pre
  %i.gf = sext i32 %i.ge to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.gd, i64 %i.gf, i1 false)
  br label %check_intra_mode.exit.us

bb.ab:                                            ; preds = %bb.z
  %i.gg = shl i32 4, %.pre.pre                    ; 15 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gi = load i32, ptr %i.gh, align 8, !tbaa !67
  %i.gj = sub i32 %i.gi, %i.h
  %i.gk = shl i32 %i.gj, 3
  %i.gl = sub i32 %i.gk, %i.cg                    ; 11 uses
  %i.gm = icmp eq i64 %indvars.iv169, 0           ; 2 uses
  %i.gn = select i1 %i.gm, ptr %.0176.i109.us, ptr %.0177.i106.us ; 18 uses
  %i.go = select i1 %i.gm, i64 %i.dl, i64 %i.dm   ; 14 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gg, %i.gl       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  br i1 %.not300.i.us, label %.preheader90.us, label %.preheader91.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader
  %indvars.iv = phi i64 [ %indvars.iv.ph, %.lr.ph.us.preheader ], [ %indvars.iv.next.3, %.lr.ph.us ] ; 9 uses
  %i.gp = mul nsw i64 %i.go, %indvars.iv
  %i.gq = getelementptr inbounds i8, ptr %i.gn, i64 %i.gp
  %i.gr = getelementptr inbounds i8, ptr %i.gq, i64 -1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !40
  %i.gt = xor i64 %indvars.iv, -1
  %i.gu = getelementptr i8, ptr %i.lz, i64 %i.gt
  store i8 %i.gs, ptr %i.gu, align 1, !tbaa !40
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1
  %i.gv = mul nsw i64 %i.go, %indvars.iv.next
  %i.gw = getelementptr inbounds i8, ptr %i.gn, i64 %i.gv
  %i.gx = getelementptr inbounds i8, ptr %i.gw, i64 -1
  %i.gy = load i8, ptr %i.gx, align 1, !tbaa !40
  %i.gz = xor i64 %indvars.iv, -2
  %i.ha = getelementptr i8, ptr %i.lz, i64 %i.gz
  store i8 %i.gy, ptr %i.ha, align 2, !tbaa !40
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2
  %i.hb = mul nsw i64 %i.go, %indvars.iv.next.1
  %i.hc = getelementptr inbounds i8, ptr %i.gn, i64 %i.hb
  %i.hd = getelementptr inbounds i8, ptr %i.hc, i64 -1
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !40
  %i.hf = xor i64 %indvars.iv, -3
  %i.hg = getelementptr i8, ptr %i.lz, i64 %i.hf
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !40
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3
  %i.hh = mul nsw i64 %i.go, %indvars.iv.next.2
  %i.hi = getelementptr inbounds i8, ptr %i.gn, i64 %i.hh
  %i.hj = getelementptr inbounds i8, ptr %i.hi, i64 -1
  %i.hk = load i8, ptr %i.hj, align 1, !tbaa !40
  %i.hl = xor i64 %indvars.iv, -4
  %i.hm = getelementptr i8, ptr %i.lz, i64 %i.hl
  store i8 %i.hk, ptr %i.hm, align 4, !tbaa !40
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %check_intra_mode.exit.us, label %.lr.ph.us, !llvm.loop !114

.lr.ph96.us:                                      ; preds = %.lr.ph96.us.preheader, %.lr.ph96.us
  %indvars.iv158 = phi i64 [ %indvars.iv.next159, %.lr.ph96.us ], [ %indvars.iv158.ph, %.lr.ph96.us.preheader ] ; 3 uses
  %i.hn = mul nsw i64 %i.go, %indvars.iv158
  %i.ho = getelementptr inbounds i8, ptr %i.gn, i64 %i.hn
  %i.hp = getelementptr inbounds i8, ptr %i.ho, i64 -1
  %i.hq = load i8, ptr %i.hp, align 1, !tbaa !40
  %i.hr = trunc nuw nsw i64 %indvars.iv158 to i32
  %i.hs = xor i32 %i.hr, -1
  %i.ht = add i32 %i.gg, %i.hs
  %i.hu = sext i32 %i.ht to i64
  %i.hv = getelementptr inbounds i8, ptr %i.b, i64 %i.hu
  store i8 %i.hq, ptr %i.hv, align 1, !tbaa !40
  %indvars.iv.next159 = add nuw nsw i64 %indvars.iv158, 1 ; 2 uses
  %i.hw = icmp samesign ult i64 %indvars.iv.next159, %i.kt
  br i1 %i.hw, label %.lr.ph96.us, label %._crit_edge.us, !llvm.loop !115

._crit_edge.us:                                   ; preds = %.lr.ph96.us, %middle.block295, %vec.epilog.middle.block309, %.preheader90.us
  %i.hx = sub nsw i32 %i.gg, %i.gl
  %i.hy = sext i32 %i.hx to i64                   ; 2 uses
  %i.hz = getelementptr inbounds i8, ptr %i.b, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 4, !tbaa !40
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.ia, i64 %i.hy, i1 false)
  br label %check_intra_mode.exit.us

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not300.i.us, label %.preheader88.us, label %.preheader89.us

.lr.ph98.us:                                      ; preds = %.lr.ph98.us, %.lr.ph98.us.preheader
  %indvars.iv161 = phi i64 [ %indvars.iv161.ph, %.lr.ph98.us.preheader ], [ %indvars.iv.next162.3, %.lr.ph98.us ] ; 6 uses
  %i.ib = mul nsw i64 %i.go, %indvars.iv161
  %i.ic = getelementptr inbounds i8, ptr %i.gn, i64 %i.ib
  %i.id = getelementptr inbounds i8, ptr %i.ic, i64 -1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !40
  %i.if = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv161
end_hunk_0
begin_hunk_1_@ff_vp9_intra_recon_8bpp:bb.a
  %i.mj = getelementptr inbounds i8, ptr %i.gn, i64 %index336
  %i.mk = getelementptr inbounds i8, ptr %i.mj, i64 -1
  %wide.load337 = load <8 x i8>, ptr %i.mk, align 1, !tbaa !40
  %i.ml = xor i64 %index336, -1
  %i.mm = getelementptr i8, ptr %i.lz, i64 %i.ml
  %i.mn = getelementptr i8, ptr %i.mm, i64 -7
  %reverse338 = shufflevector <8 x i8> %wide.load337, <8 x i8> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <8 x i8> %reverse338, ptr %i.mn, align 4, !tbaa !40
  %index.next339 = add nuw i64 %index336, 8       ; 2 uses
  %i.mo = icmp eq i64 %index.next339, %n.vec334
  br i1 %i.mo, label %vec.epilog.middle.block340, label %vec.epilog.vector.body335, !llvm.loop !125

vec.epilog.middle.block340:                       ; preds = %vec.epilog.vector.body335
  %cmp.n341 = icmp eq i64 %n.vec334, %wide.trip.count
  br i1 %cmp.n341, label %check_intra_mode.exit.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %iter.check329, %vec.epilog.iter.check331, %vec.epilog.middle.block340
  %indvars.iv.ph = phi i64 [ 0, %iter.check329 ], [ %n.vec318, %vec.epilog.iter.check331 ], [ %n.vec334, %vec.epilog.middle.block340 ]
  br label %.lr.ph.us

._crit_edge113.us:                                ; preds = %bb.af
  %i.mp = load ptr, ptr %i.at, align 8, !tbaa !76 ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 64
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !77
  %i.ms = mul nsw i32 %i.mr, %i.bn
  %i.mt = sext i32 %i.ms to i64
  %i.mu = getelementptr inbounds i8, ptr %.0178.i117.us, i64 %i.mt
  %i.mv = load i64, ptr %i.bb, align 16, !tbaa !80
  %i.mw = mul nsw i64 %i.mv, %i.bo
  %i.mx = getelementptr inbounds i8, ptr %.0179.i116.us, i64 %i.mw
  %indvars.iv.next177 = add nsw i64 %indvars.iv176, %i.bs ; 2 uses
  %i.my = icmp slt i64 %indvars.iv.next177, %i.bx
  br i1 %i.my, label %.preheader93.us, label %._crit_edge118.loopexit155, !llvm.loop !2

._crit_edge118.loopexit155:                       ; preds = %._crit_edge113.us
  %.pre202 = load i32, ptr %i.an, align 4, !tbaa !69
  br label %._crit_edge118

._crit_edge118:                                   ; preds = %.preheader93.lr.ph, %.._crit_edge118_crit_edge, %._crit_edge118.loopexit155
  %.pre-phi208 = phi i32 [ %.pre207, %.._crit_edge118_crit_edge ], [ %i.be, %._crit_edge118.loopexit155 ], [ %i.be, %.preheader93.lr.ph ]
  %i.mz = phi ptr [ %i.au, %.._crit_edge118_crit_edge ], [ %i.mp, %._crit_edge118.loopexit155 ], [ %i.au, %.preheader93.lr.ph ]
  %i.na = phi i32 [ %i.ao, %.._crit_edge118_crit_edge ], [ %.pre202, %._crit_edge118.loopexit155 ], [ %i.ao, %.preheader93.lr.ph ]
  %i.nb = getelementptr inbounds nuw i8, ptr %i.d, i64 3924 ; 2 uses
  %i.nc = load i8, ptr %i.nb, align 4, !tbaa !88
  %i.nd = zext i8 %i.nc to i32                    ; 2 uses
  %i.ne = lshr i32 %i.q, %i.nd
  %i.nf = lshr i32 %..i, %i.nd                    ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.d, i64 3925 ; 2 uses
  %i.nh = load i8, ptr %i.ng, align 1, !tbaa !89
  %i.ni = zext nneg i8 %i.nh to i32
  %i.nj = lshr i32 %i.ai, %i.ni                   ; 2 uses
  %.not150 = icmp eq i32 %i.nj, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %i.f, i64 9
  %i.nl = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 8 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %i.f, i64 10
  %i.nn = getelementptr inbounds nuw i8, ptr %0, i64 77120
  %i.no = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.np = icmp sgt i32 %i.h, 0
  %i.nq = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.nr = add nsw i32 %i.ne, -1
  %i.ns = getelementptr inbounds nuw i8, ptr %i.a, i64 31
  %i.nt = getelementptr inbounds nuw i8, ptr %i.a, i64 36 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.a, i64 35
  %i.nv = getelementptr inbounds nuw i8, ptr %i.d, i64 1376
  %i.nw = getelementptr inbounds nuw i8, ptr %i.d, i64 1856
  %i.nx = sext i32 %i.ap to i64
  %i.ny = getelementptr inbounds [32 x i8], ptr %i.nw, i64 %i.nx
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.oa = shl i32 4, %i.ao                        ; 2 uses
  %i.ob = sext i32 %i.oa to i64                   ; 3 uses
  %.not151 = icmp eq i32 %i.nf, 0
  %or.cond242 = select i1 %.not150, i1 true, i1 %.not151
  br i1 %or.cond242, label %intra_recon.exit.split, label %.preheader87.lr.ph.us.preheader

.preheader87.lr.ph.us.preheader:                  ; preds = %._crit_edge118
  %i.oc = shl i32 %i.na, 1
  %i.od = shl nuw i32 1, %i.oc
  %i.oe = zext nneg i32 %i.od to i64
  %scevgep404 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %scevgep406 = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  br label %.preheader87.lr.ph.us

.preheader87.lr.ph.us:                            ; preds = %.preheader87.lr.ph.us.preheader, %..loopexit_crit_edge.split.us.us
  %i.of = phi ptr [ %i.mz, %.preheader87.lr.ph.us.preheader ], [ %i.za, %..loopexit_crit_edge.split.us.us ]
  %i.og = phi i1 [ true, %.preheader87.lr.ph.us.preheader ], [ false, %..loopexit_crit_edge.split.us.us ]
  %indvars.iv198 = phi i64 [ 0, %.preheader87.lr.ph.us.preheader ], [ 1, %..loopexit_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 3 uses
  %i.oh = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next199
  %i.oi = load ptr, ptr %i.oh, align 8, !tbaa !70
  %i.oj = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %indvars.iv.next199
  %i.ok = load ptr, ptr %i.oj, align 8, !tbaa !70
  %i.ol = getelementptr inbounds i8, ptr %i.ok, i64 %2
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.nn, i64 %indvars.iv198
  %i.on = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv198
  br label %.preheader87.us.us

.preheader87.us.us:                               ; preds = %._crit_edge138.us.us, %.preheader87.lr.ph.us
  %.1.i142.us.us = phi ptr [ %i.ol, %.preheader87.lr.ph.us ], [ %i.zf, %._crit_edge138.us.us ] ; 2 uses
  %.1180.i141.us.us = phi ptr [ %i.oi, %.preheader87.lr.ph.us ], [ %i.zi, %._crit_edge138.us.us ] ; 2 uses
  %.1183.i140.us.us = phi i32 [ 0, %.preheader87.lr.ph.us ], [ %i.zj, %._crit_edge138.us.us ] ; 5 uses
  %.2.i139.us.us = phi i64 [ 0, %.preheader87.lr.ph.us ], [ %indvars.iv.next196, %._crit_edge138.us.us ]
  %i.oo = icmp sgt i32 %.1183.i140.us.us, 0
  %i.op = or i1 %i.np, %i.oo                      ; 5 uses
  %i.oq = zext i1 %i.op to i64
  %i.or = or i32 %.1183.i140.us.us, %.pre-phi208
  %or.cond3.not.i40.us.us = icmp eq i32 %i.or, 0
  %i.os = icmp eq i32 %.1183.i140.us.us, 0        ; 2 uses
  %i.ot = select i1 %i.op, i32 1, i32 255
  br label %bb.ag

bb.ag:                                            ; preds = %bb.bk, %.preheader87.us.us
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %bb.bk ], [ %.2.i139.us.us, %.preheader87.us.us ] ; 3 uses
  %.0.i134.us.us = phi ptr [ %i.yy, %bb.bk ], [ %.1.i142.us.us, %.preheader87.us.us ] ; 3 uses
  %.0175.i131.us.us = phi ptr [ %i.yx, %bb.bk ], [ %.1180.i141.us.us, %.preheader87.us.us ] ; 5 uses
  %.1185.i128.us.us = phi i32 [ %i.yw, %bb.bk ], [ 0, %.preheader87.us.us ] ; 7 uses
  %i.ou = load i8, ptr %i.nk, align 1, !tbaa !90
  %i.ov = load i8, ptr %i.nm, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.ov, 0
  %.pre203 = load i32, ptr %i.an, align 4, !tbaa !69 ; 6 uses
  br i1 %.not.i.us.us, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.ow = icmp ugt i32 %.pre203, 1
  %i.ox = load ptr, ptr %i.om, align 8, !tbaa !70
  %i.oy = getelementptr inbounds i8, ptr %i.ox, i64 %indvars.iv195 ; 2 uses
  br i1 %i.ow, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.oz = load i8, ptr %i.oy, align 1, !tbaa !40
  %i.pa = zext i8 %i.oz to i32
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.pb = load i16, ptr %i.oy, align 2, !tbaa !40
  %i.pc = zext i16 %i.pb to i32
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ag
  %i.pd = phi i32 [ 0, %bb.ag ], [ %i.pc, %bb.aj ], [ %i.pa, %bb.ai ] ; 2 uses
  %i.pe = load ptr, ptr %i.at, align 8, !tbaa !76
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 68
  %i.pg = load i32, ptr %i.pf, align 4, !tbaa !77
  %i.ph = sext i32 %i.pg to i64                   ; 2 uses
  %i.pi = load i64, ptr %i.no, align 8, !tbaa !91 ; 3 uses
  %i.pj = load i8, ptr %i.nb, align 4, !tbaa !88  ; 2 uses
  %i.pk = zext nneg i8 %i.pj to i32
  %i.pl = load i8, ptr %i.ng, align 1, !tbaa !89
  %i.pm = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.pn = load i32, ptr %i.nq, align 16, !tbaa !81
  %i.po = icmp ugt i32 %i.j, %i.pn
  %i.pp = icmp sgt i32 %.1185.i128.us.us, 0
  %i.pq = or i1 %i.pp, %i.po                      ; 5 uses
  %i.pr = icmp slt i32 %.1185.i128.us.us, %i.nr   ; 3 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 1
  %i.pt = load i8, ptr %i.ps, align 1, !tbaa !82
  %i.pu = zext i8 %i.pt to i32                    ; 3 uses
  %i.pv = zext i8 %i.ou to i64
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.pv
  %i.px = zext i1 %i.pq to i64
  %i.py = getelementptr inbounds nuw [2 x i8], ptr %i.pw, i64 %i.px
  %i.pz = getelementptr inbounds nuw i8, ptr %i.py, i64 %i.oq
  %i.qa = load i8, ptr %i.pz, align 1, !tbaa !40  ; 3 uses
  %i.qb = zext i8 %i.qa to i64                    ; 2 uses
  %i.qc = shl nuw i64 1, %i.qb                    ; 4 uses
  %i.qd = and i64 %i.qc, 29954
  %.not.not.i5.us.us = icmp eq i64 %i.qd, 0
  br i1 %.not.not.i5.us.us, label %bb.al, label %bb.bd

bb.al:                                            ; preds = %bb.ak
  %i.qe = shl i32 4, %.pre203                     ; 7 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.pm, i64 3964
  %i.qg = load i32, ptr %i.qf, align 4, !tbaa !66
  %i.qh = sub i32 %i.qg, %i.j
  %.not.i14.us.us = icmp eq i8 %i.pj, 0
  %i.qi = zext i1 %.not.i14.us.us to i32
  %i.qj = shl i32 %i.qh, %i.qi
  %i.qk = sub i32 %i.qj, %.1185.i128.us.us
  %i.ql = shl i32 %i.qk, 2                        ; 6 uses
  %i.qm = icmp eq i32 %.pre203, 0                 ; 2 uses
  %i.qn = and i8 %i.qa, -5
  %i.qo = icmp eq i8 %i.qn, 3                     ; 3 uses
  %or.cond.i15.us.us = select i1 %i.qo, i1 %i.pr, i1 false
  %spec.select.i16.us.us = select i1 %or.cond.i15.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.op, label %bb.am, label %.critedge.i20.us.us

.critedge.i20.us.us:                              ; preds = %bb.al
  %i.qp = add nsw i32 %i.pu, -8
  %i.qq = shl i32 128, %i.qp
  %i.qr = trunc i32 %i.qq to i8
  %i.qs = add i8 %i.qr, -1
  %i.qt = sext i32 %i.qe to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.nl, i8 %i.qs, i64 %i.qt, i1 false)
  %.pre = and i64 %i.qc, 2189
  br label %bb.av

bb.am:                                            ; preds = %bb.al
  br i1 %or.cond3.not.i40.us.us, label %.thread71.us.us, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.qu = sub nsw i64 0, %i.pi
  %i.qv = getelementptr inbounds i8, ptr %.0175.i131.us.us, i64 %i.qu ; 3 uses
  %i.qw = sub nsw i64 0, %i.ph
  %i.qx = getelementptr inbounds i8, ptr %.0.i134.us.us, i64 %i.qw ; 2 uses
  %i.qy = select i1 %i.os, ptr %i.qx, ptr %i.qv   ; 2 uses
  br i1 %i.pq, label %bb.ao, label %.thread72.us.us

bb.ao:                                            ; preds = %bb.an
  %i.qz = icmp eq i32 %.1185.i128.us.us, 0
  %or.cond7.i41.us.us = or i1 %i.os, %i.qz        ; 2 uses
  %spec.select244 = select i1 %or.cond7.i41.us.us, ptr %i.qy, ptr %i.qv
  %spec.select243 = select i1 %or.cond7.i41.us.us, ptr %i.qx, ptr %i.qv
  br label %.thread72.us.us

.thread71.us.us:                                  ; preds = %bb.am
  %i.ra = getelementptr inbounds nuw i8, ptr %i.pm, i64 19136
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.ra, i64 %indvars.iv.next199
  %i.rc = load ptr, ptr %i.rb, align 8, !tbaa !70
  %i.rd = lshr i32 8, %i.pk
  %i.re = mul nsw i32 %i.rd, %i.j
  %i.rf = shl nsw i32 %.1185.i128.us.us, 2
  %i.rg = add nsw i32 %i.re, %i.rf
  %i.rh = sext i32 %i.rg to i64
  %i.ri = getelementptr inbounds i8, ptr %i.rc, i64 %i.rh ; 2 uses
  br label %.thread72.us.us

.thread72.us.us:                                  ; preds = %bb.ao, %.thread71.us.us, %bb.an
  %.0280.i18.ph.us.us = phi ptr [ %i.ri, %.thread71.us.us ], [ %spec.select244, %bb.ao ], [ %i.qy, %bb.an ] ; 7 uses
  %.0279.i19.ph.us.us = phi ptr [ %i.ri, %.thread71.us.us ], [ %spec.select243, %bb.ao ], [ undef, %bb.an ] ; 3 uses
  %i.rj = and i64 %i.qc, 2189                     ; 3 uses
  %.not289.not.i29.us.us = icmp ne i64 %i.rj, 0
  %i.rk = icmp eq ptr %.0280.i18.ph.us.us, %.0279.i19.ph.us.us
  %or.cond301.i30.us.us = select i1 %i.pq, i1 %i.rk, i1 false
  %or.cond308.i31.us.us = select i1 %.not289.not.i29.us.us, i1 true, i1 %or.cond301.i30.us.us
  br i1 %or.cond308.i31.us.us, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %.thread72.us.us
  br i1 %i.qm, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %.not291.old.i35.us.us = icmp sgt i32 %i.qe, %i.ql
  br i1 %.not291.old.i35.us.us, label %bb.as, label %bb.bd

bb.ar:                                            ; preds = %bb.ap
  %.not204 = xor i1 %i.qo, true
  %or.cond9.i36.us.us = select i1 %.not204, i1 true, i1 %i.pr
  %i.rl = add nuw nsw i32 %spec.select.i16.us.us, %i.qe
  %.not291.i38.us.us = icmp sle i32 %i.rl, %i.ql
  %or.cond302.i39.not.us.us = select i1 %or.cond9.i36.us.us, i1 %.not291.i38.us.us, i1 false
  br i1 %or.cond302.i39.not.us.us, label %bb.bd, label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %.thread72.us.us
  %.not292.i32.us.us = icmp sgt i32 %i.qe, %i.ql
  br i1 %.not292.i32.us.us, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.rm = sext i32 %i.qe to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nl, ptr align 1 %.0280.i18.ph.us.us, i64 %i.rm, i1 false)
  br label %bb.av

bb.au:                                            ; preds = %bb.as
  %i.rn = sext i32 %i.ql to i64                   ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.nl, ptr align 1 %.0280.i18.ph.us.us, i64 %i.rn, i1 false)
  %i.ro = getelementptr i8, ptr %i.nl, i64 %i.rn  ; 2 uses
  %i.rp = getelementptr i8, ptr %i.ro, i64 -1
  %i.rq = load i8, ptr %i.rp, align 1, !tbaa !40
  %i.rr = sub nsw i32 %i.qe, %i.ql
  %i.rs = zext nneg i32 %i.rr to i64
  call void @llvm.memset.p0.i64(ptr align 4 %i.ro, i8 %i.rq, i64 %i.rs, i1 false)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %.critedge.i20.us.us
  %.pre-phi = phi i64 [ %i.rj, %bb.au ], [ %i.rj, %bb.at ], [ %.pre, %.critedge.i20.us.us ]
  %.0279.i1980.us.us = phi ptr [ %.0279.i19.ph.us.us, %bb.au ], [ %.0279.i19.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.0280.i1877.us.us = phi ptr [ %.0280.i18.ph.us.us, %bb.au ], [ %.0280.i18.ph.us.us, %bb.at ], [ undef, %.critedge.i20.us.us ]
  %.not293.not.i21.us.us = icmp eq i64 %.pre-phi, 0
  br i1 %.not293.not.i21.us.us, label %bb.aw, label %bb.az

bb.aw:                                            ; preds = %bb.av
  %or.cond11.i28.us.us = and i1 %i.op, %i.pq
  br i1 %or.cond11.i28.us.us, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.rt = add nsw i32 %i.pu, -8
  %i.ru = shl i32 128, %i.rt
  %i.rv = add nuw i32 %i.ru, %i.ot
  %i.rw = trunc i32 %i.rv to i8
  br label %.sink.split244

bb.ay:                                            ; preds = %bb.aw
  %i.rx = getelementptr inbounds i8, ptr %.0279.i1980.us.us, i64 -1
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !40
  br label %.sink.split244

.sink.split244:                                   ; preds = %bb.ax, %bb.ay
  %.sink245 = phi i8 [ %i.ry, %bb.ay ], [ %i.rw, %bb.ax ]
  store i8 %.sink245, ptr %i.ns, align 1, !tbaa !40
  br label %bb.az

bb.az:                                            ; preds = %.sink.split244, %bb.av
  %or.cond304.i23.us.us = and i1 %i.qm, %i.qo
  br i1 %or.cond304.i23.us.us, label %bb.ba, label %bb.bd

bb.ba:                                            ; preds = %bb.az
  %or.cond13.i24.us.us = select i1 %i.op, i1 %i.pr, i1 false
  %i.rz = add nuw nsw i32 %spec.select.i16.us.us, %i.qe
  %.not295.i26.us.us = icmp sle i32 %i.rz, %i.ql
  %or.cond306.i27.not.us.us = select i1 %or.cond13.i24.us.us, i1 %.not295.i26.us.us, i1 false
  br i1 %or.cond306.i27.not.us.us, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.sa = load i8, ptr %i.nu, align 1, !tbaa !40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(4) %i.nt, i8 %i.sa, i64 4, i1 false)
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.sb = getelementptr inbounds nuw i8, ptr %.0280.i1877.us.us, i64 4
  %i.sc = load i32, ptr %i.sb, align 1
  store i32 %i.sc, ptr %i.nt, align 4
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb, %bb.az, %bb.ar, %bb.aq, %bb.ak
  %.0.us.us = phi ptr [ %i.nl, %bb.bb ], [ %i.nl, %bb.bc ], [ %i.nl, %bb.az ], [ %i.nl, %bb.ak ], [ %.0280.i18.ph.us.us, %bb.aq ], [ %.0280.i18.ph.us.us, %bb.ar ]
  %i.sd = and i64 %i.qc, 30857
  %.not296.not.i6.us.us = icmp eq i64 %i.sd, 0
  br i1 %.not296.not.i6.us.us, label %bb.be, label %check_intra_mode.exit42.us.us

bb.be:                                            ; preds = %bb.bd
  br i1 %i.pq, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.se = add nsw i32 %i.pu, -8
  %i.sf = shl i32 128, %i.se
  %i.sg = trunc i32 %i.sf to i8
  %i.sh = or disjoint i8 %i.sg, 1
  %i.si = shl i32 4, %.pre203
  %i.sj = sext i32 %i.si to i64
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.b, i8 %i.sh, i64 %i.sj, i1 false)
  br label %check_intra_mode.exit42.us.us

bb.bg:                                            ; preds = %bb.be
  %i.sk = shl i32 4, %.pre203                     ; 16 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.pm, i64 3960
  %i.sm = load i32, ptr %i.sl, align 8, !tbaa !67
  %i.sn = sub i32 %i.sm, %i.h
  %.not297.i.us.us = icmp eq i8 %i.pl, 0
  %i.so = zext i1 %.not297.i.us.us to i32
  %i.sp = shl i32 %i.sn, %i.so
  %i.sq = sub i32 %i.sp, %.1183.i140.us.us
  %i.sr = shl i32 %i.sq, 2                        ; 11 uses
  %i.ss = icmp eq i32 %.1185.i128.us.us, 0        ; 2 uses
  %i.st = select i1 %i.ss, ptr %.0.i134.us.us, ptr %.0175.i131.us.us ; 21 uses
  %i.su = ptrtoaddr ptr %i.st to i64              ; 2 uses
  %i.sv = select i1 %i.ss, i64 %i.ph, i64 %i.pi   ; 14 uses
  %.not298.not.i7.us.us = icmp eq i8 %i.qa, 8
  %.not300.i11.us.us = icmp sgt i32 %i.sk, %i.sr  ; 2 uses
  br i1 %.not298.not.i7.us.us, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  br i1 %.not300.i11.us.us, label %.preheader84.us.us, label %.preheader85.us.us

.preheader85.us.us:                               ; preds = %bb.bh
  %i.sw = icmp sgt i32 %i.sk, 0
  br i1 %i.sw, label %iter.check460, label %check_intra_mode.exit42.us.us

iter.check460:                                    ; preds = %.preheader85.us.us
  %i.sx = zext nneg i32 %i.sk to i64
  %wide.trip.count182 = zext nneg i32 %i.sk to i64 ; 7 uses
  %i.sy = getelementptr i8, ptr %i.b, i64 %i.sx   ; 7 uses
  %min.iters.check445 = icmp ugt i32 %i.sk, 7
  %ident.check438.not = icmp eq i64 %i.sv, 1
  %or.cond475 = select i1 %min.iters.check445, i1 %ident.check438.not, i1 false
  br i1 %or.cond475, label %vector.memcheck439, label %.lr.ph.us143.us.preheader

vector.memcheck439:                               ; preds = %iter.check460
  %scevgep440 = getelementptr i8, ptr %i.st, i64 -1 ; 2 uses
  %scevgep441 = getelementptr i8, ptr %scevgep440, i64 %wide.trip.count182
  %bound0442 = icmp ult ptr %i.b, %scevgep441
  %bound1443 = icmp ult ptr %scevgep440, %i.sy
  %found.conflict444 = and i1 %bound0442, %bound1443
  br i1 %found.conflict444, label %.lr.ph.us143.us.preheader, label %vector.main.loop.iter.check446

vector.main.loop.iter.check446:                   ; preds = %vector.memcheck439
  %min.iters.check447 = icmp ult i32 %i.sk, 32
  br i1 %min.iters.check447, label %vec.epilog.ph464, label %vector.ph448

vector.ph448:                                     ; preds = %vector.main.loop.iter.check446
  %i.sz = and i64 %wide.trip.count182, 24
  %n.vec449 = and i64 %wide.trip.count182, 2147483616 ; 4 uses
  br label %vector.body450

vector.body450:                                   ; preds = %vector.ph448, %vector.body450
  %index451 = phi i64 [ 0, %vector.ph448 ], [ %index.next456, %vector.body450 ] ; 3 uses
  %i.ta = getelementptr inbounds i8, ptr %i.st, i64 %index451 ; 2 uses
  %i.tb = getelementptr inbounds i8, ptr %i.ta, i64 -1
  %i.tc = getelementptr inbounds nuw i8, ptr %i.ta, i64 15
  %wide.load452 = load <16 x i8>, ptr %i.tb, align 1, !tbaa !40, !alias.scope !146
  %wide.load453 = load <16 x i8>, ptr %i.tc, align 1, !tbaa !40, !alias.scope !146
  %i.td = xor i64 %index451, -1
  %i.te = getelementptr i8, ptr %i.sy, i64 %i.td  ; 2 uses
  %i.tf = getelementptr i8, ptr %i.te, i64 -15
  %i.tg = getelementptr i8, ptr %i.te, i64 -31
  %reverse454 = shufflevector <16 x i8> %wide.load452, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse455 = shufflevector <16 x i8> %wide.load453, <16 x i8> poison, <16 x i32> <i32 15, i32 14, i32 13, i32 12, i32 11, i32 10, i32 9, i32 8, i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  store <16 x i8> %reverse454, ptr %i.tf, align 4, !tbaa !40, !alias.scope !147, !noalias !146
  store <16 x i8> %reverse455, ptr %i.tg, align 4, !tbaa !40, !alias.scope !147, !noalias !146
  %index.next456 = add nuw i64 %index451, 32      ; 2 uses
  %i.th = icmp eq i64 %index.next456, %n.vec449
  br i1 %i.th, label %middle.block457, label %vector.body450, !llvm.loop !129

middle.block457:                                  ; preds = %vector.body450
  %cmp.n458 = icmp eq i64 %n.vec449, %wide.trip.count182
  br i1 %cmp.n458, label %check_intra_mode.exit42.us.us, label %vec.epilog.iter.check462

vec.epilog.iter.check462:                         ; preds = %middle.block457
  %min.epilog.iters.check463 = icmp eq i64 %i.sz, 0
  br i1 %min.epilog.iters.check463, label %.lr.ph.us143.us.preheader, label %vec.epilog.ph464, !prof !145

vec.epilog.ph464:                                 ; preds = %vector.main.loop.iter.check446, %vec.epilog.iter.check462
  %vec.epilog.resume.val459 = phi i64 [ %n.vec449, %vec.epilog.iter.check462 ], [ 0, %vector.main.loop.iter.check446 ]
  %n.vec465 = and i64 %wide.trip.count182, 2147483640 ; 3 uses
  br label %vec.epilog.vector.body466

vec.epilog.vector.body466:                        ; preds = %vec.epilog.vector.body466, %vec.epilog.ph464
  %index467 = phi i64 [ %vec.epilog.resume.val459, %vec.epilog.ph464 ], [ %index.next470, %vec.epilog.vector.body466 ] ; 3 uses
  %i.ti = getelementptr inbounds i8, ptr %i.st, i64 %index467
  %i.tj = getelementptr inbounds i8, ptr %i.ti, i64 -1
  %wide.load468 = load <8 x i8>, ptr %i.tj, align 1, !tbaa !40, !alias.scope !146
end_hunk_1
begin_hunk_2_@ff_vp9_intra_recon_16bpp:bb.a
  %i.v = zext i8 %i.u to i32
  %i.w = shl nuw nsw i32 %i.v, 1
  %i.x = shl i32 %i.r, 1
  %i.y = shl nuw i32 1, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 3964
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !66
  %i.ab = sub i32 %i.aa, %i.i
  %i.ac = shl i32 %i.ab, 1
  %..i = tail call i32 @llvm.umin.i32(i32 %i.ac, i32 %i.p) ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 3960
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !67
  %i.af = sub i32 %i.ae, %i.g
  %i.ag = shl i32 %i.af, 1
  %i.ah = tail call i32 @llvm.umin.i32(i32 %i.ag, i32 %i.w) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.aj = load i8, ptr %i.ai, align 4, !tbaa !68
  %i.ak = zext i8 %i.aj to i32
  %i.al = shl nuw nsw i32 %i.ak, 2                ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !69 ; 6 uses
  %i.ao = add i32 %i.al, %i.an
  %i.ap = shl nuw i32 1, %i.an                    ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !70
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 448 ; 5 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !76 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !70
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %.not = icmp eq i32 %i.ah, 0
  br i1 %.not, label %.._crit_edge156_crit_edge, label %.preheader118.lr.ph

.._crit_edge156_crit_edge:                        ; preds = %bb.a
  %.pre = and i32 %i.g, 7
  br label %._crit_edge156

.preheader118.lr.ph:                              ; preds = %bb.a
  %i.av = add i32 %i.al, %i.r
  %.not200 = icmp eq i32 %..i, 0
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 13 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 10 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 77112 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  %i.bb = icmp sgt i32 %i.g, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bd = and i32 %i.g, 7                         ; 3 uses
  %i.be = shl i32 %i.i, 4
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.bh = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.bj = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.bk = sext i32 %i.av to i64
  %i.bl = getelementptr inbounds [32 x i8], ptr %i.bj, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 77048
  %i.bn = shl i32 8, %i.r
  %i.bo = sext i32 %i.bn to i64                   ; 2 uses
  %i.bp = shl i32 4, %i.r                         ; 2 uses
  %i.bq = sext i32 %i.bp to i64
  br i1 %.not200, label %._crit_edge156, label %.preheader118.us.preheader

.preheader118.us.preheader:                       ; preds = %.preheader118.lr.ph
  %i.br = add nsw i32 %i.p, -1
  %i.bs = getelementptr inbounds i8, ptr %i.au, i64 %1
  %i.bt = sext i32 %i.s to i64                    ; 2 uses
  %i.bu = sext i32 %i.br to i64
  %i.bv = zext nneg i32 %..i to i64
  %i.bw = zext nneg i32 %i.y to i64
  %i.bx = zext nneg i32 %i.ah to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %.preheader118.us

.preheader118.us:                                 ; preds = %.preheader118.us.preheader, %._crit_edge151.us
  %indvars.iv258 = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next259, %._crit_edge151.us ] ; 5 uses
  %.0178.i155.us = phi ptr [ %i.bs, %.preheader118.us.preheader ], [ %i.sw, %._crit_edge151.us ] ; 2 uses
  %.0179.i154.us = phi ptr [ %i.ar, %.preheader118.us.preheader ], [ %i.sz, %._crit_edge151.us ] ; 2 uses
  %.0186.i152.us = phi i64 [ 0, %.preheader118.us.preheader ], [ %indvars.iv.next254, %._crit_edge151.us ]
  %i.bz = shl nsw i64 %indvars.iv258, 1
  %i.ca = icmp sgt i64 %indvars.iv258, 0
  %i.cb = or i1 %i.bb, %i.ca                      ; 5 uses
  %i.cc = zext i1 %i.cb to i64
  %i.cd = trunc nsw i64 %indvars.iv258 to i32     ; 2 uses
  %i.ce = or i32 %i.bd, %i.cd
  %or.cond3.not.i.us = icmp eq i32 %i.ce, 0
  %i.cf = icmp eq i64 %indvars.iv258, 0           ; 2 uses
  %i.cg = select i1 %i.cb, i32 1, i32 65535
  %invariant.gep = getelementptr i8, ptr %i.aw, i64 %i.bz
  br label %bb.b

bb.b:                                             ; preds = %.preheader118.us, %bb.ab
  %indvars.iv253 = phi i64 [ %.0186.i152.us, %.preheader118.us ], [ %indvars.iv.next254, %bb.ab ] ; 4 uses
  %indvars.iv251 = phi i64 [ 0, %.preheader118.us ], [ %indvars.iv.next252, %bb.ab ] ; 7 uses
  %.0176.i147.us = phi ptr [ %.0178.i155.us, %.preheader118.us ], [ %i.ll, %bb.ab ] ; 3 uses
  %.0177.i144.us = phi ptr [ %.0179.i154.us, %.preheader118.us ], [ %i.lk, %bb.ab ] ; 5 uses
  %i.ch = load i32, ptr %i.j, align 4, !tbaa !39
  %i.ci = icmp ugt i32 %i.ch, 9
  %.pre.pre = load i32, ptr %i.q, align 4, !tbaa !41 ; 8 uses
  %i.cj = icmp eq i32 %.pre.pre, 0
  %or.cond = select i1 %i.ci, i1 %i.cj, i1 false
  br i1 %or.cond, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ck = load i8, ptr %i.aw, align 1, !tbaa !40
  %i.cl = zext i8 %i.ck to i64                    ; 4 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !77 ; 3 uses
  %i.co = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us = icmp eq i8 %i.co, 0
  br i1 %.not196.i.us, label %bb.d, label %bb.f

.thread:                                          ; preds = %bb.b
  %gep = getelementptr i8, ptr %invariant.gep, i64 %indvars.iv251
  %i.cp = load i8, ptr %gep, align 1, !tbaa !40
  %i.cq = zext i8 %i.cp to i64                    ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr @ff_vp9_intra_txfm_type, i64 %i.cq
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !77 ; 2 uses
  %i.ct = load i8, ptr %i.ay, align 2, !tbaa !78
  %.not196.i.us339 = icmp eq i8 %i.ct, 0
  br i1 %.not196.i.us339, label %.thread340, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.cu = icmp ugt i32 %.pre.pre, 1
  br i1 %i.cu, label %bb.e, label %.thread340

.thread340:                                       ; preds = %.thread, %bb.d
  %i.cv = phi i64 [ %i.cl, %bb.d ], [ %i.cq, %.thread ]
  %i.cw = phi i32 [ %i.cn, %bb.d ], [ %i.cs, %.thread ]
  %i.cx = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.cy = getelementptr inbounds i8, ptr %i.cx, i64 %indvars.iv253
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !40
  %i.da = zext i8 %i.cz to i32
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.db = load ptr, ptr %i.az, align 8, !tbaa !79
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %indvars.iv253
  %i.dd = load i16, ptr %i.dc, align 2, !tbaa !40
  %i.de = zext i16 %i.dd to i32
  br label %bb.f

bb.f:                                             ; preds = %.thread, %bb.e, %.thread340, %bb.c
  %i.df = phi i32 [ %i.cn, %bb.c ], [ %i.cn, %bb.e ], [ %i.cw, %.thread340 ], [ %i.cs, %.thread ]
  %i.dg = phi i64 [ %i.cl, %bb.c ], [ %i.cl, %bb.e ], [ %i.cv, %.thread340 ], [ %i.cq, %.thread ]
  %i.dh = phi i32 [ 0, %bb.c ], [ %i.de, %bb.e ], [ %i.da, %.thread340 ], [ 0, %.thread ] ; 2 uses
  %i.di = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !77
  %i.dl = sext i32 %i.dk to i64                   ; 2 uses
  %i.dm = load i64, ptr %i.ba, align 16, !tbaa !80 ; 3 uses
  %i.dn = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.do = load i32, ptr %i.bc, align 16, !tbaa !81
  %i.dp = icmp ugt i32 %i.i, %i.do
  %i.dq = icmp sgt i64 %indvars.iv251, 0
  %i.dr = or i1 %i.dq, %i.dp                      ; 5 uses
  %i.ds = icmp slt i64 %indvars.iv251, %i.bu      ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 1
  %i.du = load i8, ptr %i.dt, align 1, !tbaa !82
  %i.dv = zext i8 %i.du to i32                    ; 3 uses
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.dg
  %i.dx = zext i1 %i.dr to i64
  %i.dy = getelementptr inbounds nuw [2 x i8], ptr %i.dw, i64 %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.cc
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !40  ; 3 uses
  %i.eb = zext i8 %i.ea to i64                    ; 2 uses
  %i.ec = shl nuw i64 1, %i.eb                    ; 4 uses
  %i.ed = and i64 %i.ec, 29954
  %.not.not.i.us = icmp eq i64 %i.ed, 0
  br i1 %.not.not.i.us, label %bb.g, label %.loopexit115.us

bb.g:                                             ; preds = %bb.f
  %i.ee = shl i32 4, %.pre.pre                    ; 8 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dn, i64 3964
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !66
  %i.eh = sub i32 %i.eg, %i.i
  %i.ei = shl i32 %i.eh, 1
  %i.ej = trunc nsw i64 %indvars.iv251 to i32     ; 2 uses
  %i.ek = sub i32 %i.ei, %i.ej                    ; 2 uses
  %i.el = shl i32 %i.ek, 2                        ; 6 uses
  %i.em = icmp eq i32 %.pre.pre, 0                ; 2 uses
  %i.en = and i8 %i.ea, -5
  %i.eo = icmp eq i8 %i.en, 3                     ; 3 uses
  %or.cond.i.us = select i1 %i.eo, i1 %i.ds, i1 false
  %spec.select.i.us = select i1 %or.cond.i.us, i32 4, i32 0 ; 2 uses
  br i1 %i.cb, label %bb.h, label %.critedge.i.preheader.us

.critedge.i.us:                                   ; preds = %vec.epilog.iter.check515, %.critedge.i.us
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.i.us ], [ %n.vec504, %vec.epilog.iter.check515 ] ; 2 uses
  %i.ep = shl nuw nsw i64 %indvars.iv, 1
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ep
  store i16 %i.rw, ptr %i.eq, align 2, !tbaa !40
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit116.us, label %.critedge.i.us, !llvm.loop !150

bb.h:                                             ; preds = %bb.g
  br i1 %or.cond3.not.i.us, label %.thread.us, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.er = sub nsw i64 0, %i.dm
  %i.es = getelementptr inbounds i8, ptr %.0177.i144.us, i64 %i.er ; 3 uses
  %i.et = sub nsw i64 0, %i.dl
  %i.eu = getelementptr inbounds i8, ptr %.0176.i147.us, i64 %i.et ; 2 uses
  %i.ev = select i1 %i.cf, ptr %i.eu, ptr %i.es   ; 2 uses
  br i1 %i.dr, label %bb.j, label %.thread72.us

bb.j:                                             ; preds = %bb.i
  %i.ew = icmp eq i64 %indvars.iv251, 0
  %or.cond7.i.us = or i1 %i.cf, %i.ew             ; 2 uses
  %spec.select = select i1 %or.cond7.i.us, ptr %i.ev, ptr %i.es
  %spec.select.a = select i1 %or.cond7.i.us, ptr %i.eu, ptr %i.es
  br label %.thread72.us

.thread.us:                                       ; preds = %bb.h
  %i.ex = getelementptr inbounds nuw i8, ptr %i.dn, i64 19136
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !70
  %i.ez = shl i32 %i.ej, 3
  %i.fa = add i32 %i.ez, %i.be
  %i.fb = sext i32 %i.fa to i64
  %i.fc = getelementptr inbounds i8, ptr %i.ey, i64 %i.fb ; 2 uses
  br label %.thread72.us

.thread72.us:                                     ; preds = %bb.j, %.thread.us, %bb.i
  %.0280.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %spec.select, %bb.j ], [ %i.ev, %bb.i ] ; 10 uses
  %.0279.i.ph.us = phi ptr [ %i.fc, %.thread.us ], [ %spec.select.a, %bb.j ], [ undef, %bb.i ] ; 6 uses
  %i.fd = and i64 %i.ec, 2189
  %.not289.not.i.us = icmp ne i64 %i.fd, 0
  %i.fe = icmp eq ptr %.0280.i.ph.us, %.0279.i.ph.us
  %or.cond301.i.us = select i1 %i.dr, i1 %i.fe, i1 false
  %or.cond308.i.us = select i1 %.not289.not.i.us, i1 true, i1 %or.cond301.i.us
  br i1 %or.cond308.i.us, label %bb.k, label %bb.n

bb.k:                                             ; preds = %.thread72.us
  br i1 %i.em, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not291.old.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not291.old.i.us, label %bb.n, label %.loopexit115.us

bb.m:                                             ; preds = %bb.k
  %.not306 = xor i1 %i.eo, true
  %or.cond9.i.us = select i1 %.not306, i1 true, i1 %i.ds
  %i.ff = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not291.i.us = icmp sle i32 %i.ff, %i.el
  %or.cond302.i.not.us = select i1 %or.cond9.i.us, i1 %.not291.i.us, i1 false
  br i1 %or.cond302.i.not.us, label %.loopexit115.us, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %.thread72.us
  %.not292.i.us = icmp sgt i32 %i.ee, %i.el
  br i1 %.not292.i.us, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.fg = shl i32 8, %.pre.pre
  %i.fh = sext i32 %i.fg to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fh, i1 false)
  br label %.loopexit116.us

bb.p:                                             ; preds = %bb.n
  %i.fi = shl i32 %i.ek, 3                        ; 2 uses
  %i.fj = sext i32 %i.fi to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.ax, ptr align 1 %.0280.i.ph.us, i64 %i.fj, i1 false)
  %i.fk = add i32 %i.fi, -2
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds i8, ptr %i.ax, i64 %i.fl
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !40 ; 3 uses
  %i.fo = sub nsw i32 %i.ee, %i.el                ; 3 uses
  %i.fp = icmp sgt i32 %i.fo, 0
  br i1 %i.fp, label %iter.check486, label %.loopexit116.us

iter.check486:                                    ; preds = %bb.p
  %i.fq = sext i32 %i.el to i64                   ; 3 uses
  %i.fr = zext nneg i32 %i.fo to i64              ; 5 uses
  %min.iters.check475 = icmp ult i32 %i.fo, 16
  br i1 %min.iters.check475, label %vec.epilog.ph490, label %vector.ph476

vector.ph476:                                     ; preds = %iter.check486
  %i.fs = and i64 %i.fr, 12
  %n.vec477 = and i64 %i.fr, 2147483632           ; 4 uses
  %broadcast.splatinsert478 = insertelement <8 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat479 = shufflevector <8 x i16> %broadcast.splatinsert478, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body480

vector.body480:                                   ; preds = %vector.ph476, %vector.body480
  %index481 = phi i64 [ 0, %vector.ph476 ], [ %index.next482, %vector.body480 ] ; 2 uses
  %i.ft = add nsw i64 %index481, %i.fq
  %i.fu = shl nsw i64 %i.ft, 1
  %i.fv = getelementptr inbounds i8, ptr %i.ax, i64 %i.fu ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 16
  store <8 x i16> %broadcast.splat479, ptr %i.fv, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat479, ptr %i.fw, align 8, !tbaa !40
  %index.next482 = add nuw i64 %index481, 16      ; 2 uses
  %i.fx = icmp eq i64 %index.next482, %n.vec477
  br i1 %i.fx, label %middle.block483, label %vector.body480, !llvm.loop !151

middle.block483:                                  ; preds = %vector.body480
  %cmp.n484 = icmp eq i64 %n.vec477, %i.fr
  br i1 %cmp.n484, label %.loopexit116.us, label %vec.epilog.iter.check488

vec.epilog.iter.check488:                         ; preds = %middle.block483
  %min.epilog.iters.check489 = icmp eq i64 %i.fs, 0
  br i1 %min.epilog.iters.check489, label %.lr.ph121.us, label %vec.epilog.ph490, !prof !208

vec.epilog.ph490:                                 ; preds = %iter.check486, %vec.epilog.iter.check488
  %vec.epilog.resume.val485 = phi i64 [ %n.vec477, %vec.epilog.iter.check488 ], [ 0, %iter.check486 ]
  %broadcast.splatinsert492 = insertelement <4 x i16> poison, i16 %i.fn, i64 0
  %broadcast.splat493 = shufflevector <4 x i16> %broadcast.splatinsert492, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body494

vec.epilog.vector.body494:                        ; preds = %vec.epilog.vector.body494, %vec.epilog.ph490
  %index495 = phi i64 [ %vec.epilog.resume.val485, %vec.epilog.ph490 ], [ %index.next496, %vec.epilog.vector.body494 ] ; 2 uses
  %i.fy = add nsw i64 %index495, %i.fq
  %i.fz = shl nsw i64 %i.fy, 1
  %i.ga = getelementptr inbounds i8, ptr %i.ax, i64 %i.fz
  store <4 x i16> %broadcast.splat493, ptr %i.ga, align 8, !tbaa !40
  %index.next496 = add nuw i64 %index495, 4       ; 2 uses
  %i.gb = icmp eq i64 %index.next496, %i.fr
  br i1 %i.gb, label %.loopexit116.us, label %vec.epilog.vector.body494, !llvm.loop !152

.lr.ph121.us:                                     ; preds = %vec.epilog.iter.check488, %.lr.ph121.us
  %indvars.iv217 = phi i64 [ %indvars.iv.next218, %.lr.ph121.us ], [ %n.vec477, %vec.epilog.iter.check488 ] ; 2 uses
  %i.gc = add nsw i64 %indvars.iv217, %i.fq
  %i.gd = shl nsw i64 %i.gc, 1
  %i.ge = getelementptr inbounds i8, ptr %i.ax, i64 %i.gd
  store i16 %i.fn, ptr %i.ge, align 2, !tbaa !40
  %indvars.iv.next218 = add nuw nsw i64 %indvars.iv217, 1 ; 2 uses
  %i.gf = icmp samesign ult i64 %indvars.iv.next218, %i.fr
  br i1 %i.gf, label %.lr.ph121.us, label %.loopexit116.us, !llvm.loop !153

.loopexit116.us:                                  ; preds = %.critedge.i.us, %vec.epilog.vector.body521, %.lr.ph121.us, %vec.epilog.vector.body494, %middle.block510, %middle.block483, %.critedge.i.preheader.us, %bb.p, %bb.o
  %.0279.i79.us = phi ptr [ %.0279.i.ph.us, %bb.p ], [ %.0279.i.ph.us, %bb.o ], [ %.0279.i.ph.us, %middle.block483 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body521 ], [ %.0279.i.ph.us, %vec.epilog.vector.body494 ], [ %.0279.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block510 ], [ undef, %.critedge.i.us ]
  %.0280.i76.us = phi ptr [ %.0280.i.ph.us, %bb.p ], [ %.0280.i.ph.us, %bb.o ], [ %.0280.i.ph.us, %middle.block483 ], [ undef, %.critedge.i.preheader.us ], [ undef, %vec.epilog.vector.body521 ], [ %.0280.i.ph.us, %vec.epilog.vector.body494 ], [ %.0280.i.ph.us, %.lr.ph121.us ], [ undef, %middle.block510 ], [ undef, %.critedge.i.us ]
  %i.gg = and i64 %i.ec, 2189
  %.not293.not.i.us = icmp eq i64 %i.gg, 0
  br i1 %.not293.not.i.us, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.loopexit116.us
  %or.cond11.i.us = and i1 %i.cb, %i.dr
  br i1 %or.cond11.i.us, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gh = add nsw i32 %i.dv, -8
  %i.gi = shl i32 128, %i.gh
  %i.gj = add nuw i32 %i.gi, %i.cg
  %i.gk = trunc i32 %i.gj to i16
  br label %.sink.split

bb.s:                                             ; preds = %bb.q
  %i.gl = getelementptr inbounds i8, ptr %.0279.i79.us, i64 -2
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !40
  br label %.sink.split

.sink.split:                                      ; preds = %bb.r, %bb.s
  %.sink = phi i16 [ %i.gm, %bb.s ], [ %i.gk, %bb.r ]
  store i16 %.sink, ptr %i.bf, align 2, !tbaa !40
  br label %bb.t

bb.t:                                             ; preds = %.sink.split, %.loopexit116.us
  %or.cond304.i.us = and i1 %i.em, %i.eo
  br i1 %or.cond304.i.us, label %bb.u, label %.loopexit115.us

bb.u:                                             ; preds = %bb.t
  %or.cond13.i.us = select i1 %i.cb, i1 %i.ds, i1 false
  %i.gn = add nuw nsw i32 %spec.select.i.us, %i.ee
  %.not295.i.us = icmp sle i32 %i.gn, %i.el
  %or.cond306.i.not.us = select i1 %or.cond13.i.us, i1 %.not295.i.us, i1 false
  br i1 %or.cond306.i.not.us, label %bb.v, label %.loopexit115.us.loopexit

.loopexit115.us.loopexit:                         ; preds = %bb.u
  %i.go = load <1 x i16>, ptr %i.bg, align 2
  %i.gp = shufflevector <1 x i16> %i.go, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.gp, ptr %i.by, align 8, !tbaa !40
  br label %.loopexit115.us

bb.v:                                             ; preds = %bb.u
  %i.gq = getelementptr inbounds nuw i8, ptr %.0280.i76.us, i64 8
  %i.gr = load i64, ptr %i.gq, align 1
  store i64 %i.gr, ptr %i.bh, align 8
  br label %.loopexit115.us

.loopexit115.us:                                  ; preds = %.loopexit115.us.loopexit, %bb.v, %bb.t, %bb.m, %bb.l, %bb.f
  %.071.us = phi ptr [ %.0280.i.ph.us, %bb.m ], [ %i.ax, %bb.v ], [ %i.ax, %bb.t ], [ %i.ax, %bb.f ], [ %.0280.i.ph.us, %bb.l ], [ %i.ax, %.loopexit115.us.loopexit ]
  %i.gs = and i64 %i.ec, 30857
  %.not296.not.i.us = icmp eq i64 %i.gs, 0
  br i1 %.not296.not.i.us, label %bb.w, label %check_intra_mode.exit.us

bb.w:                                             ; preds = %.loopexit115.us
  %i.gt = shl i32 4, %.pre.pre                    ; 15 uses
  br i1 %i.dr, label %bb.x, label %.preheader113.us

vec.epilog.scalar.ph460:                          ; preds = %vec.epilog.iter.check461, %vec.epilog.scalar.ph460
  %indvars.iv224 = phi i64 [ %indvars.iv.next225, %vec.epilog.scalar.ph460 ], [ %n.vec450, %vec.epilog.iter.check461 ] ; 2 uses
  %i.gu = shl nuw nsw i64 %indvars.iv224, 1
  %i.gv = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.gu
  store i16 %i.si, ptr %i.gv, align 2, !tbaa !40
  %indvars.iv.next225 = add nuw nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond228.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count227
  br i1 %exitcond228.not, label %check_intra_mode.exit.us, label %vec.epilog.scalar.ph460, !llvm.loop !154

bb.x:                                             ; preds = %bb.w
  %i.gw = getelementptr inbounds nuw i8, ptr %i.dn, i64 3960
  %i.gx = load i32, ptr %i.gw, align 8, !tbaa !67
  %i.gy = sub i32 %i.gx, %i.g
  %i.gz = shl i32 %i.gy, 1
  %i.ha = sub i32 %i.gz, %i.cd                    ; 2 uses
  %i.hb = shl i32 %i.ha, 2                        ; 10 uses
  %i.hc = icmp eq i64 %indvars.iv251, 0           ; 2 uses
  %i.hd = select i1 %i.hc, ptr %.0176.i147.us, ptr %.0177.i144.us ; 40 uses
  %i.he = select i1 %i.hc, i64 %i.dl, i64 %i.dm   ; 12 uses
  %.not298.not.i.us = icmp eq i8 %i.ea, 8
  %.not300.i.us = icmp sgt i32 %i.gt, %i.hb       ; 2 uses
  br i1 %.not298.not.i.us, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %.not300.i.us, label %.preheader110.us, label %.preheader111.us

.lr.ph126.us:                                     ; preds = %.lr.ph126.us, %.lr.ph126.us.preheader772
  %indvars.iv229 = phi i64 [ %indvars.iv229.ph, %.lr.ph126.us.preheader772 ], [ %indvars.iv.next230.1, %.lr.ph126.us ] ; 5 uses
  %i.hf = mul nsw i64 %i.he, %indvars.iv229
  %i.hg = getelementptr inbounds i8, ptr %i.hd, i64 %i.hf
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 -2
  %i.hi = load i16, ptr %i.hh, align 2, !tbaa !40
  %i.hj = xor i64 %indvars.iv229, -1
  %i.hk = add nsw i64 %i.qf, %i.hj
  %i.hl = shl nsw i64 %i.hk, 1
end_hunk_2
begin_hunk_3_@ff_vp9_intra_recon_16bpp:bb.a
  %i.tr = icmp sgt i32 %i.g, 0
  %i.ts = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.tt = add nsw i32 %i.tg, -1
  %i.tu = shl i32 %i.i, 1
  %i.tv = getelementptr inbounds nuw i8, ptr %i.a, i64 30
  %i.tw = getelementptr inbounds nuw i8, ptr %i.a, i64 38
  %i.tx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ty = getelementptr inbounds nuw i8, ptr %i.c, i64 1376
  %i.tz = getelementptr inbounds nuw i8, ptr %i.c, i64 1856
  %i.ua = sext i32 %i.ao to i64
  %i.ub = getelementptr inbounds [32 x i8], ptr %i.tz, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %0, i64 77072
  %i.ud = shl i32 8, %i.an
  %i.ue = sext i32 %i.ud to i64                   ; 2 uses
  %i.uf = shl i32 4, %i.an                        ; 2 uses
  %i.ug = sext i32 %i.uf to i64
  %.not202 = icmp eq i32 %i.th, 0
  %or.cond352 = select i1 %.not201, i1 true, i1 %.not202
  br i1 %or.cond352, label %intra_recon.exit.split, label %.preheader104.lr.ph.us.preheader

.preheader104.lr.ph.us.preheader:                 ; preds = %._crit_edge156
  %i.uh = shl i32 %i.tc, 1
  %i.ui = shl nuw i32 1, %i.uh
  %i.uj = zext nneg i32 %i.ui to i64
  %i.uk = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %scevgep625.a = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %scevgep627 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %.preheader104.lr.ph.us

.preheader104.lr.ph.us:                           ; preds = %.preheader104.lr.ph.us.preheader, %..loopexit105_crit_edge.split.us.us
  %i.ul = phi ptr [ %i.tb, %.preheader104.lr.ph.us.preheader ], [ %i.ali, %..loopexit105_crit_edge.split.us.us ]
  %i.um = phi i1 [ true, %.preheader104.lr.ph.us.preheader ], [ false, %..loopexit105_crit_edge.split.us.us ]
  %indvars.iv303 = phi i64 [ 0, %.preheader104.lr.ph.us.preheader ], [ 1, %..loopexit105_crit_edge.split.us.us ] ; 3 uses
  %indvars.iv.next304 = add nuw nsw i64 %indvars.iv303, 1 ; 3 uses
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv.next304
  %i.uo = load ptr, ptr %i.un, align 8, !tbaa !70
  %i.up = getelementptr inbounds nuw [8 x i8], ptr %i.ul, i64 %indvars.iv.next304
  %i.uq = load ptr, ptr %i.up, align 8, !tbaa !70
  %i.ur = getelementptr inbounds i8, ptr %i.uq, i64 %2
  %i.us = getelementptr inbounds nuw [8 x i8], ptr %i.tp, i64 %indvars.iv303
  %i.ut = getelementptr inbounds nuw [8 x i8], ptr %i.uc, i64 %indvars.iv303
  br label %.preheader104.us.us

.preheader104.us.us:                              ; preds = %._crit_edge189.us.us, %.preheader104.lr.ph.us
  %.1.i193.us.us = phi ptr [ %i.ur, %.preheader104.lr.ph.us ], [ %i.aln, %._crit_edge189.us.us ] ; 2 uses
  %.1180.i192.us.us = phi ptr [ %i.uo, %.preheader104.lr.ph.us ], [ %i.alq, %._crit_edge189.us.us ] ; 2 uses
  %.1183.i191.us.us = phi i32 [ 0, %.preheader104.lr.ph.us ], [ %i.alr, %._crit_edge189.us.us ] ; 5 uses
  %.2.i190.us.us = phi i64 [ 0, %.preheader104.lr.ph.us ], [ %indvars.iv.next301, %._crit_edge189.us.us ]
  %i.uu = icmp sgt i32 %.1183.i191.us.us, 0
  %i.uv = or i1 %i.tr, %i.uu                      ; 5 uses
  %i.uw = zext i1 %i.uv to i64
  %i.ux = or i32 %.1183.i191.us.us, %.pre-phi
  %or.cond3.not.i47.us.us = icmp eq i32 %i.ux, 0
  %i.uy = icmp eq i32 %.1183.i191.us.us, 0        ; 2 uses
  %i.uz = select i1 %i.uv, i32 1, i32 65535
  br label %bb.ac

bb.ac:                                            ; preds = %bb.bc, %.preheader104.us.us
  %indvars.iv300 = phi i64 [ %indvars.iv.next301, %bb.bc ], [ %.2.i190.us.us, %.preheader104.us.us ] ; 3 uses
  %.0.i185.us.us = phi ptr [ %i.alg, %bb.bc ], [ %.1.i193.us.us, %.preheader104.us.us ] ; 3 uses
  %.0175.i182.us.us = phi ptr [ %i.alf, %bb.bc ], [ %.1180.i192.us.us, %.preheader104.us.us ] ; 5 uses
  %.1185.i179.us.us = phi i32 [ %i.ale, %bb.bc ], [ 0, %.preheader104.us.us ] ; 7 uses
  %i.va = load i8, ptr %i.tm, align 1, !tbaa !90
  %i.vb = load i8, ptr %i.to, align 2, !tbaa !78
  %.not.i.us.us = icmp eq i8 %i.vb, 0
  %.pre308 = load i32, ptr %i.am, align 4, !tbaa !69 ; 8 uses
  br i1 %.not.i.us.us, label %bb.ad, label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.vc = icmp ugt i32 %.pre308, 1
  %i.vd = load ptr, ptr %i.us, align 8, !tbaa !70
  %i.ve = getelementptr inbounds i8, ptr %i.vd, i64 %indvars.iv300 ; 2 uses
  br i1 %i.vc, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.vf = load i8, ptr %i.ve, align 1, !tbaa !40
  %i.vg = zext i8 %i.vf to i32
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.vh = load i16, ptr %i.ve, align 2, !tbaa !40
  %i.vi = zext i16 %i.vh to i32
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae, %bb.ac
  %i.vj = phi i32 [ 0, %bb.ac ], [ %i.vi, %bb.af ], [ %i.vg, %bb.ae ] ; 2 uses
  %i.vk = load ptr, ptr %i.as, align 8, !tbaa !76
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 68
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !77
  %i.vn = sext i32 %i.vm to i64                   ; 2 uses
  %i.vo = load i64, ptr %i.tq, align 8, !tbaa !91 ; 3 uses
  %i.vp = load i8, ptr %i.td, align 4, !tbaa !88  ; 2 uses
  %i.vq = zext nneg i8 %i.vp to i32
  %i.vr = load i8, ptr %i.ti, align 1, !tbaa !89
  %i.vs = load ptr, ptr %0, align 16, !tbaa !34   ; 4 uses
  %i.vt = load i32, ptr %i.ts, align 16, !tbaa !81
  %i.vu = icmp ugt i32 %i.i, %i.vt
  %i.vv = icmp sgt i32 %.1185.i179.us.us, 0
  %i.vw = or i1 %i.vv, %i.vu                      ; 5 uses
  %i.vx = icmp slt i32 %.1185.i179.us.us, %i.tt   ; 3 uses
  %i.vy = getelementptr inbounds nuw i8, ptr %i.vs, i64 1
  %i.vz = load i8, ptr %i.vy, align 1, !tbaa !82
  %i.wa = zext i8 %i.vz to i32                    ; 3 uses
  %i.wb = zext i8 %i.va to i64
  %i.wc = getelementptr inbounds nuw [4 x i8], ptr @check_intra_mode.mode_conv, i64 %i.wb
  %i.wd = zext i1 %i.vw to i64
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.wc, i64 %i.wd
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 %i.uw
  %i.wg = load i8, ptr %i.wf, align 1, !tbaa !40  ; 3 uses
  %i.wh = zext i8 %i.wg to i64                    ; 2 uses
  %i.wi = shl nuw i64 1, %i.wh                    ; 4 uses
  %i.wj = and i64 %i.wi, 29954
  %.not.not.i6.us.us = icmp eq i64 %i.wj, 0
  br i1 %.not.not.i6.us.us, label %bb.ah, label %.loopexit.us.us

bb.ah:                                            ; preds = %bb.ag
  %i.wk = shl i32 4, %.pre308                     ; 8 uses
  %i.wl = getelementptr inbounds nuw i8, ptr %i.vs, i64 3964
  %i.wm = load i32, ptr %i.wl, align 4, !tbaa !66
  %i.wn = sub i32 %i.wm, %i.i
  %.not.i18.us.us = icmp eq i8 %i.vp, 0
  %i.wo = zext i1 %.not.i18.us.us to i32
  %i.wp = shl i32 %i.wn, %i.wo
  %i.wq = sub i32 %i.wp, %.1185.i179.us.us        ; 2 uses
  %i.wr = shl i32 %i.wq, 2                        ; 6 uses
  %i.ws = icmp eq i32 %.pre308, 0                 ; 2 uses
  %i.wt = and i8 %i.wg, -5
  %i.wu = icmp eq i8 %i.wt, 3                     ; 3 uses
  %or.cond.i19.us.us = select i1 %i.wu, i1 %i.vx, i1 false
  %spec.select.i20.us.us = select i1 %or.cond.i19.us.us, i32 4, i32 0 ; 2 uses
  br i1 %i.uv, label %bb.ai, label %.critedge.i24.preheader.us.us

.critedge.i24.preheader.us.us:                    ; preds = %bb.ah
  %i.wv = icmp sgt i32 %i.wk, 0
  br i1 %i.wv, label %iter.check731, label %.loopexit103.us.us

iter.check731:                                    ; preds = %.critedge.i24.preheader.us.us
  %i.ww = add nsw i32 %i.wa, -8
  %i.wx = shl i32 128, %i.ww
  %i.wy = trunc i32 %i.wx to i16
  %i.wz = add i16 %i.wy, -1                       ; 3 uses
  %wide.trip.count264 = zext nneg i32 %i.wk to i64 ; 5 uses
  %min.iters.check720 = icmp ult i32 %i.wk, 16
  br i1 %min.iters.check720, label %vec.epilog.ph735, label %vector.ph721

vector.ph721:                                     ; preds = %iter.check731
  %i.xa = and i64 %wide.trip.count264, 12
  %n.vec722 = and i64 %wide.trip.count264, 2147483632 ; 4 uses
  %broadcast.splatinsert723 = insertelement <8 x i16> poison, i16 %i.wz, i64 0
  %broadcast.splat724 = shufflevector <8 x i16> %broadcast.splatinsert723, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body725

vector.body725:                                   ; preds = %vector.ph721, %vector.body725
  %index726 = phi i64 [ 0, %vector.ph721 ], [ %index.next727, %vector.body725 ] ; 2 uses
  %i.xb = shl nuw nsw i64 %index726, 1
  %i.xc = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.xb ; 2 uses
  %i.xd = getelementptr inbounds nuw i8, ptr %i.xc, i64 16
  store <8 x i16> %broadcast.splat724, ptr %i.xc, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat724, ptr %i.xd, align 16, !tbaa !40
  %index.next727 = add nuw i64 %index726, 16      ; 2 uses
  %i.xe = icmp eq i64 %index.next727, %n.vec722
  br i1 %i.xe, label %middle.block728, label %vector.body725, !llvm.loop !173

middle.block728:                                  ; preds = %vector.body725
  %cmp.n729 = icmp eq i64 %n.vec722, %wide.trip.count264
  br i1 %cmp.n729, label %.loopexit103.us.us, label %vec.epilog.iter.check733

vec.epilog.iter.check733:                         ; preds = %middle.block728
  %min.epilog.iters.check734 = icmp eq i64 %i.xa, 0
  br i1 %min.epilog.iters.check734, label %.critedge.i24.us.us, label %vec.epilog.ph735, !prof !208

vec.epilog.ph735:                                 ; preds = %iter.check731, %vec.epilog.iter.check733
  %vec.epilog.resume.val730 = phi i64 [ %n.vec722, %vec.epilog.iter.check733 ], [ 0, %iter.check731 ]
  %broadcast.splatinsert737 = insertelement <4 x i16> poison, i16 %i.wz, i64 0
  %broadcast.splat738 = shufflevector <4 x i16> %broadcast.splatinsert737, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body739

vec.epilog.vector.body739:                        ; preds = %vec.epilog.vector.body739, %vec.epilog.ph735
  %index740 = phi i64 [ %vec.epilog.resume.val730, %vec.epilog.ph735 ], [ %index.next741, %vec.epilog.vector.body739 ] ; 2 uses
  %i.xf = shl nuw nsw i64 %index740, 1
  %i.xg = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.xf
  store <4 x i16> %broadcast.splat738, ptr %i.xg, align 8, !tbaa !40
  %index.next741 = add nuw i64 %index740, 4       ; 2 uses
  %i.xh = icmp eq i64 %index.next741, %wide.trip.count264
  br i1 %i.xh, label %.loopexit103.us.us, label %vec.epilog.vector.body739, !llvm.loop !174

.critedge.i24.us.us:                              ; preds = %vec.epilog.iter.check733, %.critedge.i24.us.us
  %indvars.iv261 = phi i64 [ %indvars.iv.next262, %.critedge.i24.us.us ], [ %n.vec722, %vec.epilog.iter.check733 ] ; 2 uses
  %i.xi = shl nuw nsw i64 %indvars.iv261, 1
  %i.xj = getelementptr inbounds nuw i8, ptr %i.tn, i64 %i.xi
  store i16 %i.wz, ptr %i.xj, align 2, !tbaa !40
  %indvars.iv.next262 = add nuw nsw i64 %indvars.iv261, 1 ; 2 uses
  %exitcond265.not = icmp eq i64 %indvars.iv.next262, %wide.trip.count264
  br i1 %exitcond265.not, label %.loopexit103.us.us, label %.critedge.i24.us.us, !llvm.loop !175

bb.ai:                                            ; preds = %bb.ah
  br i1 %or.cond3.not.i47.us.us, label %.thread82.us.us, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.xk = sub nsw i64 0, %i.vo
  %i.xl = getelementptr inbounds i8, ptr %.0175.i182.us.us, i64 %i.xk ; 3 uses
  %i.xm = sub nsw i64 0, %i.vn
  %i.xn = getelementptr inbounds i8, ptr %.0.i185.us.us, i64 %i.xm ; 2 uses
  %i.xo = select i1 %i.uy, ptr %i.xn, ptr %i.xl   ; 2 uses
  br i1 %i.vw, label %bb.ak, label %.thread83.us.us

bb.ak:                                            ; preds = %bb.aj
  %i.xp = icmp eq i32 %.1185.i179.us.us, 0
  %or.cond7.i48.us.us = or i1 %i.uy, %i.xp        ; 2 uses
  %spec.select354 = select i1 %or.cond7.i48.us.us, ptr %i.xo, ptr %i.xl
  %spec.select353 = select i1 %or.cond7.i48.us.us, ptr %i.xn, ptr %i.xl
  br label %.thread83.us.us

.thread82.us.us:                                  ; preds = %bb.ai
  %i.xq = getelementptr inbounds nuw i8, ptr %i.vs, i64 19136
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %indvars.iv.next304
  %i.xs = load ptr, ptr %i.xr, align 8, !tbaa !70
  %i.xt = lshr i32 8, %i.vq
  %i.xu = shl i32 %.1185.i179.us.us, 3
  %i.xv = mul i32 %i.tu, %i.xt
  %i.xw = add i32 %i.xv, %i.xu
  %i.xx = sext i32 %i.xw to i64
  %i.xy = getelementptr inbounds i8, ptr %i.xs, i64 %i.xx ; 2 uses
  br label %.thread83.us.us

.thread83.us.us:                                  ; preds = %bb.ak, %.thread82.us.us, %bb.aj
  %.0280.i22.ph.us.us = phi ptr [ %i.xy, %.thread82.us.us ], [ %spec.select354, %bb.ak ], [ %i.xo, %bb.aj ] ; 10 uses
  %.0279.i23.ph.us.us = phi ptr [ %i.xy, %.thread82.us.us ], [ %spec.select353, %bb.ak ], [ undef, %bb.aj ] ; 6 uses
  %i.xz = and i64 %i.wi, 2189
  %.not289.not.i35.us.us = icmp ne i64 %i.xz, 0
  %i.ya = icmp eq ptr %.0280.i22.ph.us.us, %.0279.i23.ph.us.us
  %or.cond301.i36.us.us = select i1 %i.vw, i1 %i.ya, i1 false
  %or.cond308.i37.us.us = select i1 %.not289.not.i35.us.us, i1 true, i1 %or.cond301.i36.us.us
  br i1 %or.cond308.i37.us.us, label %bb.al, label %bb.ao

bb.al:                                            ; preds = %.thread83.us.us
  br i1 %i.ws, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %.not291.old.i42.us.us = icmp sgt i32 %i.wk, %i.wr
  br i1 %.not291.old.i42.us.us, label %bb.ao, label %.loopexit.us.us

bb.an:                                            ; preds = %bb.al
  %.not309 = xor i1 %i.wu, true
  %or.cond9.i43.us.us = select i1 %.not309, i1 true, i1 %i.vx
  %i.yb = add nuw nsw i32 %spec.select.i20.us.us, %i.wk
  %.not291.i45.us.us = icmp sle i32 %i.yb, %i.wr
  %or.cond302.i46.not.us.us = select i1 %or.cond9.i43.us.us, i1 %.not291.i45.us.us, i1 false
  br i1 %or.cond302.i46.not.us.us, label %.loopexit.us.us, label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am, %.thread83.us.us
  %.not292.i38.us.us = icmp sgt i32 %i.wk, %i.wr
  br i1 %.not292.i38.us.us, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.yc = shl i32 8, %.pre308
  %i.yd = sext i32 %i.yc to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tn, ptr align 1 %.0280.i22.ph.us.us, i64 %i.yd, i1 false)
  br label %.loopexit103.us.us

bb.aq:                                            ; preds = %bb.ao
  %i.ye = shl i32 %i.wq, 3                        ; 2 uses
  %i.yf = sext i32 %i.ye to i64
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.tn, ptr align 1 %.0280.i22.ph.us.us, i64 %i.yf, i1 false)
  %i.yg = add i32 %i.ye, -2
  %i.yh = sext i32 %i.yg to i64
  %i.yi = getelementptr inbounds i8, ptr %i.tn, i64 %i.yh
  %i.yj = load i16, ptr %i.yi, align 2, !tbaa !40 ; 3 uses
  %i.yk = sub nsw i32 %i.wk, %i.wr                ; 3 uses
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %iter.check704, label %.loopexit103.us.us

iter.check704:                                    ; preds = %bb.aq
  %i.ym = sext i32 %i.wr to i64                   ; 3 uses
  %i.yn = zext nneg i32 %i.yk to i64              ; 5 uses
  %min.iters.check693 = icmp ult i32 %i.yk, 16
  br i1 %min.iters.check693, label %vec.epilog.ph708, label %vector.ph694

vector.ph694:                                     ; preds = %iter.check704
  %i.yo = and i64 %i.yn, 12
  %n.vec695 = and i64 %i.yn, 2147483632           ; 4 uses
  %broadcast.splatinsert696 = insertelement <8 x i16> poison, i16 %i.yj, i64 0
  %broadcast.splat697 = shufflevector <8 x i16> %broadcast.splatinsert696, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body698

vector.body698:                                   ; preds = %vector.ph694, %vector.body698
  %index699 = phi i64 [ 0, %vector.ph694 ], [ %index.next700, %vector.body698 ] ; 2 uses
  %i.yp = add nsw i64 %index699, %i.ym
  %i.yq = shl nsw i64 %i.yp, 1
  %i.yr = getelementptr inbounds i8, ptr %i.tn, i64 %i.yq ; 2 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yr, i64 16
  store <8 x i16> %broadcast.splat697, ptr %i.yr, align 8, !tbaa !40
  store <8 x i16> %broadcast.splat697, ptr %i.ys, align 8, !tbaa !40
  %index.next700 = add nuw i64 %index699, 16      ; 2 uses
  %i.yt = icmp eq i64 %index.next700, %n.vec695
  br i1 %i.yt, label %middle.block701, label %vector.body698, !llvm.loop !176

middle.block701:                                  ; preds = %vector.body698
  %cmp.n702 = icmp eq i64 %n.vec695, %i.yn
  br i1 %cmp.n702, label %.loopexit103.us.us, label %vec.epilog.iter.check706

vec.epilog.iter.check706:                         ; preds = %middle.block701
  %min.epilog.iters.check707 = icmp eq i64 %i.yo, 0
  br i1 %min.epilog.iters.check707, label %.lr.ph159.us.us, label %vec.epilog.ph708, !prof !208

vec.epilog.ph708:                                 ; preds = %iter.check704, %vec.epilog.iter.check706
  %vec.epilog.resume.val703 = phi i64 [ %n.vec695, %vec.epilog.iter.check706 ], [ 0, %iter.check704 ]
  %broadcast.splatinsert710 = insertelement <4 x i16> poison, i16 %i.yj, i64 0
  %broadcast.splat711 = shufflevector <4 x i16> %broadcast.splatinsert710, <4 x i16> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body712

vec.epilog.vector.body712:                        ; preds = %vec.epilog.vector.body712, %vec.epilog.ph708
  %index713 = phi i64 [ %vec.epilog.resume.val703, %vec.epilog.ph708 ], [ %index.next714, %vec.epilog.vector.body712 ] ; 2 uses
  %i.yu = add nsw i64 %index713, %i.ym
  %i.yv = shl nsw i64 %i.yu, 1
  %i.yw = getelementptr inbounds i8, ptr %i.tn, i64 %i.yv
  store <4 x i16> %broadcast.splat711, ptr %i.yw, align 8, !tbaa !40
  %index.next714 = add nuw i64 %index713, 4       ; 2 uses
  %i.yx = icmp eq i64 %index.next714, %i.yn
  br i1 %i.yx, label %.loopexit103.us.us, label %vec.epilog.vector.body712, !llvm.loop !177

.lr.ph159.us.us:                                  ; preds = %vec.epilog.iter.check706, %.lr.ph159.us.us
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %.lr.ph159.us.us ], [ %n.vec695, %vec.epilog.iter.check706 ] ; 2 uses
  %i.yy = add nsw i64 %indvars.iv266, %i.ym
  %i.yz = shl nsw i64 %i.yy, 1
  %i.za = getelementptr inbounds i8, ptr %i.tn, i64 %i.yz
  store i16 %i.yj, ptr %i.za, align 2, !tbaa !40
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %i.zb = icmp samesign ult i64 %indvars.iv.next267, %i.yn
  br i1 %i.zb, label %.lr.ph159.us.us, label %.loopexit103.us.us, !llvm.loop !178

.loopexit103.us.us:                               ; preds = %.critedge.i24.us.us, %vec.epilog.vector.body739, %.lr.ph159.us.us, %vec.epilog.vector.body712, %middle.block728, %middle.block701, %bb.aq, %.critedge.i24.preheader.us.us, %bb.ap
  %.0279.i2391.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0279.i23.ph.us.us, %bb.ap ], [ %.0279.i23.ph.us.us, %middle.block701 ], [ %.0279.i23.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body739 ], [ undef, %middle.block728 ], [ %.0279.i23.ph.us.us, %.lr.ph159.us.us ], [ %.0279.i23.ph.us.us, %vec.epilog.vector.body712 ], [ undef, %.critedge.i24.us.us ]
  %.0280.i2288.us.us = phi ptr [ undef, %.critedge.i24.preheader.us.us ], [ %.0280.i22.ph.us.us, %bb.ap ], [ %.0280.i22.ph.us.us, %middle.block701 ], [ %.0280.i22.ph.us.us, %bb.aq ], [ undef, %vec.epilog.vector.body739 ], [ undef, %middle.block728 ], [ %.0280.i22.ph.us.us, %.lr.ph159.us.us ], [ %.0280.i22.ph.us.us, %vec.epilog.vector.body712 ], [ undef, %.critedge.i24.us.us ]
  %i.zc = and i64 %i.wi, 2189
  %.not293.not.i26.us.us = icmp eq i64 %i.zc, 0
  br i1 %.not293.not.i26.us.us, label %bb.ar, label %bb.au

bb.ar:                                            ; preds = %.loopexit103.us.us
  %or.cond11.i34.us.us = and i1 %i.uv, %i.vw
  br i1 %or.cond11.i34.us.us, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.zd = add nsw i32 %i.wa, -8
  %i.ze = shl i32 128, %i.zd
  %i.zf = add nuw i32 %i.ze, %i.uz
  %i.zg = trunc i32 %i.zf to i16
  br label %.sink.split354

bb.at:                                            ; preds = %bb.ar
  %i.zh = getelementptr inbounds i8, ptr %.0279.i2391.us.us, i64 -2
  %i.zi = load i16, ptr %i.zh, align 2, !tbaa !40
  br label %.sink.split354

.sink.split354:                                   ; preds = %bb.as, %bb.at
  %.sink355 = phi i16 [ %i.zi, %bb.at ], [ %i.zg, %bb.as ]
  store i16 %.sink355, ptr %i.tv, align 2, !tbaa !40
  br label %bb.au

bb.au:                                            ; preds = %.sink.split354, %.loopexit103.us.us
  %or.cond304.i28.us.us = and i1 %i.ws, %i.wu
  br i1 %or.cond304.i28.us.us, label %bb.av, label %.loopexit.us.us

bb.av:                                            ; preds = %bb.au
  %or.cond13.i29.us.us = select i1 %i.uv, i1 %i.vx, i1 false
  %i.zj = add nuw nsw i32 %spec.select.i20.us.us, %i.wk
  %.not295.i31.us.us = icmp sle i32 %i.zj, %i.wr
  %or.cond306.i32.not.us.us = select i1 %or.cond13.i29.us.us, i1 %.not295.i31.us.us, i1 false
  br i1 %or.cond306.i32.not.us.us, label %bb.aw, label %.loopexit.us.us.loopexit

.loopexit.us.us.loopexit:                         ; preds = %bb.av
  %i.zk = load <1 x i16>, ptr %i.tw, align 2
  %i.zl = shufflevector <1 x i16> %i.zk, <1 x i16> poison, <4 x i32> zeroinitializer
  store <4 x i16> %i.zl, ptr %i.uk, align 8, !tbaa !40
  br label %.loopexit.us.us

bb.aw:                                            ; preds = %bb.av
  %i.zm = getelementptr inbounds nuw i8, ptr %.0280.i2288.us.us, i64 8
  %i.zn = load i64, ptr %i.zm, align 1
  store i64 %i.zn, ptr %i.tx, align 8
  br label %.loopexit.us.us

.loopexit.us.us:                                  ; preds = %.loopexit.us.us.loopexit, %bb.aw, %bb.au, %bb.an, %bb.am, %bb.ag
  %.0.us.us = phi ptr [ %.0280.i22.ph.us.us, %bb.an ], [ %i.tn, %bb.aw ], [ %i.tn, %bb.au ], [ %i.tn, %bb.ag ], [ %.0280.i22.ph.us.us, %bb.am ], [ %i.tn, %.loopexit.us.us.loopexit ]
  %i.zo = and i64 %i.wi, 30857
  %.not296.not.i7.us.us = icmp eq i64 %i.zo, 0
  br i1 %.not296.not.i7.us.us, label %bb.ax, label %check_intra_mode.exit49.us.us

bb.ax:                                            ; preds = %.loopexit.us.us
  %i.zp = shl i32 4, %.pre308                     ; 15 uses
  br i1 %i.vw, label %bb.ay, label %.preheader100.us.us

.preheader100.us.us:                              ; preds = %bb.ax
  %i.zq = icmp sgt i32 %i.zp, 0
  br i1 %i.zq, label %iter.check677, label %check_intra_mode.exit49.us.us

iter.check677:                                    ; preds = %.preheader100.us.us
  %i.zr = add nsw i32 %i.wa, -8
  %i.zs = shl i32 128, %i.zr
  %i.zt = trunc i32 %i.zs to i16
  %i.zu = or disjoint i16 %i.zt, 1                ; 3 uses
  %wide.trip.count276 = zext nneg i32 %i.zp to i64 ; 5 uses
  %min.iters.check666 = icmp ult i32 %i.zp, 16
  br i1 %min.iters.check666, label %vec.epilog.ph681, label %vector.ph667

vector.ph667:                                     ; preds = %iter.check677
  %i.zv = and i64 %wide.trip.count276, 12
  %n.vec668 = and i64 %wide.trip.count276, 2147483632 ; 4 uses
  %broadcast.splatinsert669 = insertelement <8 x i16> poison, i16 %i.zu, i64 0
  %broadcast.splat670 = shufflevector <8 x i16> %broadcast.splatinsert669, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  br label %vector.body671

vector.body671:                                   ; preds = %vector.ph667, %vector.body671
  %index672 = phi i64 [ 0, %vector.ph667 ], [ %index.next673, %vector.body671 ] ; 2 uses
  %i.zw = shl nuw nsw i64 %index672, 1
  %i.zx = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.zw ; 2 uses
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zx, i64 16
  store <8 x i16> %broadcast.splat670, ptr %i.zx, align 16, !tbaa !40
  store <8 x i16> %broadcast.splat670, ptr %i.zy, align 16, !tbaa !40
  %index.next673 = add nuw i64 %index672, 16      ; 2 uses
  %i.zz = icmp eq i64 %index.next673, %n.vec668
  br i1 %i.zz, label %middle.block674, label %vector.body671, !llvm.loop !179

middle.block674:                                  ; preds = %vector.body671
  %cmp.n675 = icmp eq i64 %n.vec668, %wide.trip.count276
  br i1 %cmp.n675, label %check_intra_mode.exit49.us.us, label %vec.epilog.iter.check679

end_hunk_3
