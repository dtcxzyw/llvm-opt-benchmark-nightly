Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/stbimage?download=true
inline.NumInlined: 826
inline.NumDeleted: 152
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZL20stbi__process_markerP10stbi__jpegi:bb.a
._crit_edge204:                                   ; preds = %.split.us, %bb.f
  %.0118.lcssa = phi i32 [ %i.k, %bb.f ], [ %i.cw, %.split.us ]
  %i.cy = icmp eq i32 %.0118.lcssa, 0
  br label %.critedge

bb.t:                                             ; preds = %bb.a
  %i.cz = load ptr, ptr %0, align 8, !tbaa !55
  %i.da = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.cz) ; 2 uses
  %i.db = add nsw i32 %i.da, -2                   ; 2 uses
  %i.dc = icmp samesign ugt i32 %i.da, 2
  br i1 %i.dc, label %.lr.ph198, label %._crit_edge199

.lr.ph198:                                        ; preds = %bb.t
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 6728 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 13960
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph198, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit
  %.2196 = phi i32 [ %i.db, %.lr.ph198 ], [ %i.jd, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #40
  %i.dg = load ptr, ptr %0, align 8, !tbaa !55    ; 11 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 192 ; 4 uses
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !30 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 200 ; 2 uses
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !33
  %i.dl = icmp ult ptr %i.di, %i.dk
  br i1 %i.dl, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 1
  store ptr %i.dm, ptr %i.dh, align 8, !tbaa !30
  %i.dn = load i8, ptr %i.di, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit153

bb.w:                                             ; preds = %bb.u
  %i.do = getelementptr inbounds nuw i8, ptr %i.dg, i64 48 ; 2 uses
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !27
  %.not.i148 = icmp eq i32 %i.dp, 0
  br i1 %.not.i148, label %_ZL10stbi__get8P13stbi__context.exit153, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !31
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !25
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 56 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 52
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !26
  %i.dx = tail call noundef i32 %i.dr(ptr noundef %i.dt, ptr noundef nonnull %i.du, i32 noundef %i.dw), !inline_history !6 ; 2 uses
  %i.dy = load ptr, ptr %i.dh, align 8, !tbaa !30
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dg, i64 208
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !29
  %i.eb = ptrtoint ptr %i.dy to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dg, i64 184 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 8, !tbaa !28
  %i.eh = add nsw i32 %i.eg, %i.ee
  store i32 %i.eh, ptr %i.ef, align 8, !tbaa !28
  %i.ei = icmp eq i32 %i.dx, 0
  br i1 %i.ei, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i32 0, ptr %i.do, align 8, !tbaa !27
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dg, i64 57
  store i8 0, ptr %i.du, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i150

bb.z:                                             ; preds = %bb.x
  %i.ek = sext i32 %i.dx to i64
  %i.el = getelementptr inbounds i8, ptr %i.du, i64 %i.ek
  %.pre.i149 = load i8, ptr %i.du, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i150

_ZL19stbi__refill_bufferP13stbi__context.exit.i150: ; preds = %bb.z, %bb.y
  %i.em = phi i8 [ 0, %bb.y ], [ %.pre.i149, %bb.z ]
  %.sink.i.i151 = phi ptr [ %i.ej, %bb.y ], [ %i.el, %bb.z ]
  store ptr %.sink.i.i151, ptr %i.dj, align 8, !tbaa !33
  %i.en = getelementptr inbounds nuw i8, ptr %i.dg, i64 57
  store ptr %i.en, ptr %i.dh, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit153

_ZL10stbi__get8P13stbi__context.exit153:          ; preds = %bb.v, %bb.w, %_ZL19stbi__refill_bufferP13stbi__context.exit.i150
  %.0.i152 = phi i8 [ %i.dn, %bb.v ], [ %i.em, %_ZL19stbi__refill_bufferP13stbi__context.exit.i150 ], [ 0, %bb.w ] ; 3 uses
  %i.eo = and i8 %.0.i152, 15                     ; 3 uses
  %i.ep = icmp ugt i8 %.0.i152, 31
  %i.eq = icmp samesign ugt i8 %i.eo, 3
  %or.cond4 = select i1 %i.ep, i1 true, i1 %i.eq
  br i1 %or.cond4, label %bb.aa, label %.preheader188

bb.aa:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit153
  %i.er = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason)
  store ptr @.str.49, ptr %i.er, align 8, !tbaa !19
  br label %.critedge140

.preheader188:                                    ; preds = %_ZL10stbi__get8P13stbi__context.exit153, %_ZL10stbi__get8P13stbi__context.exit159
  %indvars.iv = phi i64 [ %indvars.iv.next, %_ZL10stbi__get8P13stbi__context.exit159 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit153 ] ; 2 uses
  %.0111194 = phi i32 [ %i.gc, %_ZL10stbi__get8P13stbi__context.exit159 ], [ 0, %_ZL10stbi__get8P13stbi__context.exit153 ]
  %i.es = load ptr, ptr %0, align 8, !tbaa !55    ; 11 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 192 ; 4 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !30 ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.es, i64 200 ; 2 uses
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !33
  %i.ex = icmp ult ptr %i.eu, %i.ew
  br i1 %i.ex, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.preheader188
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 1
  store ptr %i.ey, ptr %i.et, align 8, !tbaa !30
  %i.ez = load i8, ptr %i.eu, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit159

bb.ac:                                            ; preds = %.preheader188
  %i.fa = getelementptr inbounds nuw i8, ptr %i.es, i64 48 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !27
  %.not.i154 = icmp eq i32 %i.fb, 0
  br i1 %.not.i154, label %_ZL10stbi__get8P13stbi__context.exit159, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.fc = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !31
  %i.fe = getelementptr inbounds nuw i8, ptr %i.es, i64 40
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !25
  %i.fg = getelementptr inbounds nuw i8, ptr %i.es, i64 56 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.es, i64 52
  %i.fi = load i32, ptr %i.fh, align 4, !tbaa !26
  %i.fj = tail call noundef i32 %i.fd(ptr noundef %i.ff, ptr noundef nonnull %i.fg, i32 noundef %i.fi), !inline_history !6 ; 2 uses
  %i.fk = load ptr, ptr %i.et, align 8, !tbaa !30
  %i.fl = getelementptr inbounds nuw i8, ptr %i.es, i64 208
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !29
  %i.fn = ptrtoint ptr %i.fk to i64
  %i.fo = ptrtoint ptr %i.fm to i64
  %i.fp = sub i64 %i.fn, %i.fo
  %i.fq = trunc i64 %i.fp to i32
  %i.fr = getelementptr inbounds nuw i8, ptr %i.es, i64 184 ; 2 uses
  %i.fs = load i32, ptr %i.fr, align 8, !tbaa !28
  %i.ft = add nsw i32 %i.fs, %i.fq
  store i32 %i.ft, ptr %i.fr, align 8, !tbaa !28
  %i.fu = icmp eq i32 %i.fj, 0
  br i1 %i.fu, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store i32 0, ptr %i.fa, align 8, !tbaa !27
  %i.fv = getelementptr inbounds nuw i8, ptr %i.es, i64 57
  store i8 0, ptr %i.fg, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i156

bb.af:                                            ; preds = %bb.ad
  %i.fw = sext i32 %i.fj to i64
  %i.fx = getelementptr inbounds i8, ptr %i.fg, i64 %i.fw
  %.pre.i155 = load i8, ptr %i.fg, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i156

_ZL19stbi__refill_bufferP13stbi__context.exit.i156: ; preds = %bb.af, %bb.ae
  %i.fy = phi i8 [ 0, %bb.ae ], [ %.pre.i155, %bb.af ]
  %.sink.i.i157 = phi ptr [ %i.fv, %bb.ae ], [ %i.fx, %bb.af ]
  store ptr %.sink.i.i157, ptr %i.ev, align 8, !tbaa !33
  %i.fz = getelementptr inbounds nuw i8, ptr %i.es, i64 57
  store ptr %i.fz, ptr %i.et, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit159

_ZL10stbi__get8P13stbi__context.exit159:          ; preds = %bb.ab, %bb.ac, %_ZL19stbi__refill_bufferP13stbi__context.exit.i156
  %.0.i158 = phi i8 [ %i.ez, %bb.ab ], [ %i.fy, %_ZL19stbi__refill_bufferP13stbi__context.exit.i156 ], [ 0, %bb.ac ]
  %i.ga = zext i8 %.0.i158 to i32                 ; 2 uses
  %i.gb = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.ga, ptr %i.gb, align 4, !tbaa !20
  %i.gc = add i32 %.0111194, %i.ga                ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %bb.ag, label %.preheader188, !llvm.loop !445

bb.ag:                                            ; preds = %_ZL10stbi__get8P13stbi__context.exit159
  %i.gd = add nsw i32 %.2196, -17
  %i.ge = icmp ult i8 %.0.i152, 16                ; 2 uses
  %i.gf = zext nneg i8 %i.eo to i64               ; 3 uses
  br i1 %i.ge, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.gg = getelementptr inbounds nuw [1680 x i8], ptr %i.de, i64 %i.gf
  %i.gh = call fastcc noundef i32 @_ZL19stbi__build_huffmanP13stbi__huffmanPi(ptr noundef %i.gg, ptr noundef %i.a)
  %.not131 = icmp eq i32 %i.gh, 0
  br i1 %.not131, label %.critedge140, label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.gi = getelementptr inbounds nuw [1680 x i8], ptr %i.dd, i64 %i.gf
  %i.gj = call fastcc noundef i32 @_ZL19stbi__build_huffmanP13stbi__huffmanPi(ptr noundef %i.gi, ptr noundef %i.a)
  %.not = icmp eq i32 %i.gj, 0
  br i1 %.not, label %.critedge140, label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.gk = phi i64 [ 8, %bb.ah ], [ 6728, %bb.ai ]
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 %i.gk
  %i.gm = getelementptr inbounds nuw [1680 x i8], ptr %i.gl, i64 %i.gf
  %.0114 = getelementptr inbounds nuw i8, ptr %i.gm, i64 1024
  %.not210 = icmp eq i32 %i.gc, 0
  br i1 %.not210, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.aj
  %wide.trip.count = zext i32 %i.gc to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZL10stbi__get8P13stbi__context.exit165
  %indvars.iv215 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next216, %_ZL10stbi__get8P13stbi__context.exit165 ] ; 2 uses
  %i.gn = load ptr, ptr %0, align 8, !tbaa !55    ; 11 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 192 ; 4 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !30 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gn, i64 200 ; 2 uses
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !33
  %i.gs = icmp ult ptr %i.gp, %i.gr
  br i1 %i.gs, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.lr.ph
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store ptr %i.gt, ptr %i.go, align 8, !tbaa !30
  %i.gu = load i8, ptr %i.gp, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit165

bb.al:                                            ; preds = %.lr.ph
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gn, i64 48 ; 2 uses
  %i.gw = load i32, ptr %i.gv, align 8, !tbaa !27
  %.not.i160 = icmp eq i32 %i.gw, 0
  br i1 %.not.i160, label %_ZL10stbi__get8P13stbi__context.exit165, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gn, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !31
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gn, i64 40
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !25
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gn, i64 56 ; 4 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gn, i64 52
  %i.hd = load i32, ptr %i.hc, align 4, !tbaa !26
  %i.he = tail call noundef i32 %i.gy(ptr noundef %i.ha, ptr noundef nonnull %i.hb, i32 noundef %i.hd), !inline_history !6 ; 2 uses
  %i.hf = load ptr, ptr %i.go, align 8, !tbaa !30
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gn, i64 208
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !29
  %i.hi = ptrtoint ptr %i.hf to i64
  %i.hj = ptrtoint ptr %i.hh to i64
  %i.hk = sub i64 %i.hi, %i.hj
  %i.hl = trunc i64 %i.hk to i32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.gn, i64 184 ; 2 uses
  %i.hn = load i32, ptr %i.hm, align 8, !tbaa !28
  %i.ho = add nsw i32 %i.hn, %i.hl
  store i32 %i.ho, ptr %i.hm, align 8, !tbaa !28
  %i.hp = icmp eq i32 %i.he, 0
  br i1 %i.hp, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  store i32 0, ptr %i.gv, align 8, !tbaa !27
  %i.hq = getelementptr inbounds nuw i8, ptr %i.gn, i64 57
  store i8 0, ptr %i.hb, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i162

bb.ao:                                            ; preds = %bb.am
  %i.hr = sext i32 %i.he to i64
  %i.hs = getelementptr inbounds i8, ptr %i.hb, i64 %i.hr
  %.pre.i161 = load i8, ptr %i.hb, align 8, !tbaa !32
  br label %_ZL19stbi__refill_bufferP13stbi__context.exit.i162

_ZL19stbi__refill_bufferP13stbi__context.exit.i162: ; preds = %bb.ao, %bb.an
  %i.ht = phi i8 [ 0, %bb.an ], [ %.pre.i161, %bb.ao ]
  %.sink.i.i163 = phi ptr [ %i.hq, %bb.an ], [ %i.hs, %bb.ao ]
  store ptr %.sink.i.i163, ptr %i.gq, align 8, !tbaa !33
  %i.hu = getelementptr inbounds nuw i8, ptr %i.gn, i64 57
  store ptr %i.hu, ptr %i.go, align 8, !tbaa !30
  br label %_ZL10stbi__get8P13stbi__context.exit165

_ZL10stbi__get8P13stbi__context.exit165:          ; preds = %bb.ak, %bb.al, %_ZL19stbi__refill_bufferP13stbi__context.exit.i162
  %.0.i164 = phi i8 [ %i.gu, %bb.ak ], [ %i.ht, %_ZL19stbi__refill_bufferP13stbi__context.exit.i162 ], [ 0, %bb.al ]
  %i.hv = getelementptr inbounds nuw i8, ptr %.0114, i64 %indvars.iv215
  store i8 %.0.i164, ptr %i.hv, align 1, !tbaa !32
  %indvars.iv.next216 = add nuw nsw i64 %indvars.iv215, 1 ; 2 uses
  %exitcond218.not = icmp eq i64 %indvars.iv.next216, %wide.trip.count
  br i1 %exitcond218.not, label %._crit_edge, label %.lr.ph, !llvm.loop !446

._crit_edge:                                      ; preds = %_ZL10stbi__get8P13stbi__context.exit165, %bb.aj
  br i1 %i.ge, label %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  %i.hw = zext nneg i8 %i.eo to i64               ; 2 uses
  %i.hx = getelementptr inbounds nuw [1024 x i8], ptr %i.df, i64 %i.hw
  %i.hy = getelementptr inbounds nuw [1680 x i8], ptr %i.dd, i64 %i.hw ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 1024
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 1280
  br label %bb.aq

bb.aq:                                            ; preds = %bb.av, %bb.ap
  %indvars.iv.i = phi i64 [ 0, %bb.ap ], [ %indvars.iv.next.i, %bb.av ] ; 4 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hy, i64 %indvars.iv.i
  %i.ic = load i8, ptr %i.ib, align 1, !tbaa !32  ; 2 uses
  %i.id = getelementptr inbounds nuw [2 x i8], ptr %i.hx, i64 %indvars.iv.i ; 2 uses
  store i16 0, ptr %i.id, align 2, !tbaa !38
  %.not.i166 = icmp eq i8 %i.ic, -1
  br i1 %.not.i166, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ie = zext i8 %i.ic to i64                    ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.hz, i64 %i.ie
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !32
  %i.ih = zext i8 %i.ig to i32                    ; 2 uses
  %i.ii = and i32 %i.ih, 240
  %i.ij = and i32 %i.ih, 15                       ; 4 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 %i.ie
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !32
  %i.im = zext i8 %i.il to i32                    ; 2 uses
  %.not36.i = icmp eq i32 %i.ij, 0
  br i1 %.not36.i, label %bb.av, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.in = add nuw nsw i32 %i.ij, %i.im            ; 2 uses
  %i.io = icmp samesign ult i32 %i.in, 10
  br i1 %i.io, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  %i.ip = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.iq = shl nuw nsw i32 %i.ip, %i.im            ; 2 uses
  %i.ir = and i32 %i.iq, 511
  %i.is = sub nuw nsw i32 9, %i.ij
  %i.it = lshr i32 %i.ir, %i.is
  %.highbits.mask.i = and i32 %i.iq, 256
  %i.iu = icmp eq i32 %.highbits.mask.i, 0
  %i.iv = shl nsw i32 -1, %i.ij
  %i.iw = or disjoint i32 %i.iv, 1
  %i.ix = select i1 %i.iu, i32 %i.iw, i32 0
  %.0.i167 = add nsw i32 %i.ix, %i.it             ; 2 uses
  %i.iy = add nsw i32 %.0.i167, 128
  %or.cond.i = icmp ult i32 %i.iy, 256
  br i1 %or.cond.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.iz = shl nsw i32 %.0.i167, 8
  %i.ja = or disjoint i32 %i.iz, %i.ii
  %i.jb = or disjoint i32 %i.ja, %i.in
  %i.jc = trunc nsw i32 %i.jb to i16
  store i16 %i.jc, ptr %i.id, align 2, !tbaa !38
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 512
  br i1 %exitcond.not.i, label %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, label %bb.aq, !llvm.loop !447

_ZL19stbi__build_fast_acPsP13stbi__huffman.exit:  ; preds = %bb.av, %._crit_edge
  %i.jd = sub i32 %i.gd, %i.gc                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #40
  %i.je = icmp sgt i32 %i.jd, 0
  br i1 %i.je, label %bb.u, label %._crit_edge199, !llvm.loop !448

._crit_edge199:                                   ; preds = %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit, %bb.t
  %.2.lcssa = phi i32 [ %i.db, %bb.t ], [ %i.jd, %_ZL19stbi__build_fast_acPsP13stbi__huffman.exit ]
  %i.jf = icmp eq i32 %.2.lcssa, 0
  br label %.critedge

bb.aw:                                            ; preds = %bb.a
  %i.jg = and i32 %1, 240
  %or.cond6 = icmp eq i32 %i.jg, 224
  %i.jh = icmp eq i32 %1, 254                     ; 2 uses
  %or.cond8 = or i1 %i.jh, %or.cond6
  br i1 %or.cond8, label %bb.ax, label %bb.dl

bb.ax:                                            ; preds = %bb.aw
  %i.ji = load ptr, ptr %0, align 8, !tbaa !55
  %i.jj = tail call fastcc noundef i32 @_ZL13stbi__get16beP13stbi__context(ptr noundef %i.ji) ; 7 uses
  %i.jk = icmp samesign ult i32 %i.jj, 2
  br i1 %i.jk, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %i.jl = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @_ZL22stbi__g_failure_reason) ; 2 uses
  br i1 %i.jh, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr @.str.50, ptr %i.jl, align 8, !tbaa !19
  br label %.critedge

bb.ba:                                            ; preds = %bb.ay
  store ptr @.str.51, ptr %i.jl, align 8, !tbaa !19
  br label %.critedge

bb.bb:                                            ; preds = %bb.ax
  %i.jm = icmp eq i32 %1, 224
  %i.jn = icmp samesign ugt i32 %i.jj, 6
  %or.cond10 = select i1 %i.jm, i1 %i.jn, i1 false
  br i1 %or.cond10, label %.preheader.preheader, label %bb.cc

.preheader.preheader:                             ; preds = %bb.bb
  %i.jo = load ptr, ptr %0, align 8, !tbaa !55    ; 13 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jo, i64 192 ; 4 uses
  %i.jq = load ptr, ptr %i.jp, align 8, !tbaa !30 ; 4 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jo, i64 200 ; 2 uses
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !33 ; 3 uses
  %i.jt = icmp ult ptr %i.jq, %i.js
  br i1 %i.jt, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.preheader.preheader
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jq, i64 1 ; 2 uses
  store ptr %i.ju, ptr %i.jp, align 8, !tbaa !30
  %i.jv = load i8, ptr %i.jq, align 1, !tbaa !32
  br label %_ZL10stbi__get8P13stbi__context.exit173

bb.bd:                                            ; preds = %.preheader.preheader
end_hunk_0
