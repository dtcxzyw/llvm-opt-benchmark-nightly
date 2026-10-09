Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/4xm?download=true
inline.NumInlined: 18
inline.NumDeleted: 12
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 9
begin_hunk_0_@decode_frame:bb.a
  %i.m = load i32, ptr %i.l, align 4, !tbaa !30
  %i.n = and i32 %i.m, 15
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 848) #9
  tail call void @abort() #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.q = load i32, ptr %i.p, align 1, !tbaa !41   ; 2 uses
  %i.r = add i32 %i.q, 8
  %i.s = icmp ult i32 %i.d, %i.r
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.t, i32 noundef 16, ptr noundef nonnull @.str.7, i32 noundef %i.d, i32 noundef %i.q) #9
  br label %.thread160

bb.g:                                             ; preds = %bb.e
  %i.u = load i32, ptr %i.b, align 1, !tbaa !41   ; 6 uses
  %i.v = icmp eq i32 %i.u, 1836213859
  br i1 %i.v, label %bb.h, label %bb.aa

bb.h:                                             ; preds = %bb.g
  %i.w = add nsw i32 %i.d, -20                    ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 2012 ; 2 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !42   ; 2 uses
  %i.z = icmp slt i32 %i.y, 2
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aa, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.y) #9
  br label %.thread160

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.ac = load i32, ptr %i.ab, align 1, !tbaa !41 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ae = load i32, ptr %i.ad, align 1, !tbaa !41 ; 2 uses
  %i.af = icmp slt i32 %i.ae, 0
  br i1 %i.af, label %bb.k, label %.preheader178

.preheader178:                                    ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 824 ; 2 uses
  br label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ah, i32 noundef 16, ptr noundef nonnull @.str.10) #9
  br label %.thread160

.preheader:                                       ; preds = %bb.o
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 2016 ; 3 uses
  br label %bb.p

bb.l:                                             ; preds = %.preheader178, %bb.o
  %indvars.iv = phi i64 [ 0, %.preheader178 ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.aj = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 2024
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !73 ; 3 uses
  %.not157 = icmp eq i32 %i.al, 0
  br i1 %.not157, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = sext i32 %i.al to i64
  %i.an = load i64, ptr %i.ag, align 8, !tbaa !74
  %i.ao = icmp sgt i64 %i.an, %i.am
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ap, i32 noundef 16, ptr noundef nonnull @.str.11, i32 noundef %i.al) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %.preheader, label %bb.l, !llvm.loop !64

bb.p:                                             ; preds = %bb.r, %.preheader
  %indvars.iv188 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next189.1, %bb.r ] ; 5 uses
  %.0130184 = phi i32 [ -1, %.preheader ], [ %spec.select.1, %bb.r ]
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv188 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !73
  %i.at = icmp eq i32 %i.as, %i.ac
  br i1 %i.at, label %.loopexit177, label %bb.q

bb.q:                                             ; preds = %bb.p
  %indvars.iv.next189 = or disjoint i64 %indvars.iv188, 1 ; 3 uses
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %indvars.iv.next189 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !73
  %i.ax = icmp eq i32 %i.aw, %i.ac
  br i1 %i.ax, label %.loopexit177, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !75
  %i.ba = icmp eq i32 %i.az, 0
  %i.bb = trunc nuw nsw i64 %indvars.iv188 to i32
  %spec.select = select i1 %i.ba, i32 %i.bb, i32 %.0130184
  %i.bc = getelementptr inbounds nuw i8, ptr %i.au, i64 4
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !75
  %i.be = icmp eq i32 %i.bd, 0
  %i.bf = trunc nuw nsw i64 %indvars.iv.next189 to i32
  %spec.select.1 = select i1 %i.be, i32 %i.bf, i32 %spec.select ; 3 uses
  %indvars.iv.next189.1 = add nuw nsw i64 %indvars.iv188, 2 ; 2 uses
  %exitcond191.not.1 = icmp eq i64 %indvars.iv.next189.1, 100
  br i1 %exitcond191.not.1, label %bb.s, label %bb.p, !llvm.loop !65

bb.s:                                             ; preds = %bb.r
  %i.bg = icmp slt i32 %spec.select.1, 0
  br i1 %i.bg, label %.thread160, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bh = zext nneg i32 %spec.select.1 to i64     ; 2 uses
  %i.bi = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.bh
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 2024
  store i32 %i.ac, ptr %i.bj, align 8, !tbaa !73
  br label %.loopexit177

.loopexit177:                                     ; preds = %bb.p, %bb.q, %bb.t
  %.pre-phi = phi i64 [ %i.bh, %bb.t ], [ %indvars.iv188, %bb.p ], [ %indvars.iv.next189, %bb.q ]
  %i.bk = getelementptr inbounds nuw [24 x i8], ptr %i.ai, i64 %.pre-phi ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 5 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !75 ; 2 uses
  %i.bn = sub i32 -65, %i.bm
  %i.bo = icmp ugt i32 %i.w, %i.bn
  br i1 %i.bo, label %.thread160, label %bb.u

bb.u:                                             ; preds = %.loopexit177
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 3 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.br = add nuw i32 %i.d, 44
  %i.bs = add i32 %i.br, %i.bm
  %i.bt = zext i32 %i.bs to i64
  %i.bu = tail call ptr @av_fast_realloc(ptr noundef %i.bq, ptr noundef nonnull %i.bk, i64 noundef %i.bt) #9 ; 3 uses
  store ptr %i.bu, ptr %i.bp, align 8, !tbaa !76
  %.not = icmp eq ptr %i.bu, null
  br i1 %.not, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bv = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bv, i32 noundef 16, ptr noundef nonnull @.str.12) #9
  br label %.thread160

bb.w:                                             ; preds = %bb.u
  %i.bw = load i32, ptr %i.bl, align 4, !tbaa !75
  %i.bx = zext i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bx
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ca = zext nneg i32 %i.w to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.by, ptr nonnull align 1 %i.bz, i64 %i.ca, i1 false)
  %i.cb = load i32, ptr %i.bl, align 4, !tbaa !75
  %i.cc = add i32 %i.cb, %i.w                     ; 3 uses
  store i32 %i.cc, ptr %i.bl, align 4, !tbaa !75
  %.not155 = icmp ult i32 %i.cc, %i.ae
  br i1 %.not155, label %.thread160, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cd = load ptr, ptr %i.bp, align 8, !tbaa !76
  %i.ce = sext i32 %i.ac to i64
  %i.cf = load i64, ptr %i.ag, align 8, !tbaa !74 ; 2 uses
  %.not156 = icmp eq i64 %i.cf, %i.ce
  br i1 %.not156, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cg = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cg, i32 noundef 16, ptr noundef nonnull @.str.13, i32 noundef %i.ac, i64 noundef %i.cf) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.ch = load i32, ptr %i.x, align 4, !tbaa !42
  %i.ci = icmp slt i32 %i.ch, 2
  br i1 %i.ci, label %.thread160, label %.thread166

.thread166:                                       ; preds = %bb.z
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i32 0, ptr %i.cj, align 8, !tbaa !73
  store i32 0, ptr %i.bl, align 4, !tbaa !75
  br label %bb.ab

bb.aa:                                            ; preds = %bb.g
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 12 ; 4 uses
  %i.cl = add nsw i32 %i.d, -12                   ; 4 uses
  switch i32 %i.u, label %bb.ay [
    i32 1836213872, label %bb.ab
    i32 1836213865, label %bb.ab
    i32 846358128, label %bb.ab
    i32 846358121, label %bb.ab
    i32 1600417395, label %bb.ax
  ]

bb.ab:                                            ; preds = %.thread166, %bb.aa, %bb.aa, %bb.aa, %bb.aa
  %.1134172 = phi i32 [ %i.cc, %.thread166 ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.aa ], [ %i.cl, %bb.aa ] ; 9 uses
  %.1136171 = phi i32 [ 1836213872, %.thread166 ], [ %i.u, %bb.aa ], [ %i.u, %bb.aa ], [ %i.u, %bb.aa ], [ %i.u, %bb.aa ]
  %.1140170 = phi ptr [ %i.cd, %.thread166 ], [ %i.ck, %bb.aa ], [ %i.ck, %bb.aa ], [ %i.ck, %bb.aa ], [ %i.ck, %bb.aa ] ; 10 uses
  %i.cm = tail call i32 @ff_get_buffer(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.cn = icmp slt i32 %i.cm, 0
  br i1 %i.cn, label %.thread160, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  switch i32 %.1136171, label %bb.ay [
    i32 846358121, label %bb.ad
    i32 1836213865, label %bb.af
    i32 1836213872, label %bb.ah
    i32 846358128, label %bb.ah
    i32 1600417395, label %bb.ax
  ]

bb.ad:                                            ; preds = %bb.ac
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.co, align 8, !tbaa !81
  %i.cp = getelementptr inbounds i8, ptr %.1140170, i64 -4
  %i.cq = add nsw i32 %.1134172, 4
  %i.cr = tail call fastcc i32 @decode_i2_frame(ptr noundef %i.f, ptr noundef nonnull %i.cp, i32 noundef %i.cq) ; 2 uses
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %bb.ae, label %decode_p_frame.exit

bb.ae:                                            ; preds = %bb.ad
  %i.ct = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ct, i32 noundef 16, ptr noundef nonnull @.str.18) #9
  br label %.thread160

bb.af:                                            ; preds = %bb.ac
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 1, ptr %i.cu, align 8, !tbaa !81
  %i.cv = tail call fastcc i32 @decode_i_frame(ptr noundef %i.f, ptr noundef %.1140170, i32 noundef %.1134172) ; 2 uses
  %i.cw = icmp slt i32 %i.cv, 0
  br i1 %i.cw, label %bb.ag, label %decode_p_frame.exit

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.cx, i32 noundef 16, ptr noundef nonnull @.str.19) #9
  br label %.thread160

bb.ah:                                            ; preds = %bb.ac, %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 2, ptr %i.cy, align 8, !tbaa !81
  %i.cz = load ptr, ptr %i.f, align 16, !tbaa !43 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 112
  %i.db = load i32, ptr %i.da, align 8, !tbaa !29 ; 5 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 116
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !30 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !39
  %i.dg = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.dh = load ptr, ptr %i.dg, align 16, !tbaa !40
  %i.di = getelementptr inbounds nuw i8, ptr %i.f, i64 2012 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !42
  %i.dk = icmp sgt i32 %i.dj, 1
  br i1 %i.dk, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.dl = icmp ult i32 %.1134172, 20
  br i1 %i.dl, label %.loopexit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dm = getelementptr inbounds nuw i8, ptr %.1140170, i64 8
  %i.dn = load i32, ptr %i.dm, align 1, !tbaa !41
  %i.do = getelementptr inbounds nuw i8, ptr %.1140170, i64 12
  %i.dp = load i32, ptr %i.do, align 1, !tbaa !41
  %i.dq = getelementptr inbounds nuw i8, ptr %.1140170, i64 16
  %i.dr = load i32, ptr %i.dq, align 1, !tbaa !41
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.ds = getelementptr inbounds i8, ptr %.1140170, i64 -4
  %i.dt = load i16, ptr %i.ds, align 1, !tbaa !41
  %i.du = zext i16 %i.dt to i32                   ; 2 uses
  %i.dv = getelementptr inbounds i8, ptr %.1140170, i64 -2
  %i.dw = load i16, ptr %i.dv, align 1, !tbaa !41
  %i.dx = zext i16 %i.dw to i32                   ; 2 uses
  %i.dy = add nuw nsw i32 %i.du, %i.dx
  %i.dz = sub i32 %.1134172, %i.dy
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.090.i = phi i32 [ %i.dn, %bb.aj ], [ %i.du, %bb.ak ] ; 10 uses
  %.089.i = phi i32 [ %i.dr, %bb.aj ], [ %i.dz, %bb.ak ] ; 4 uses
  %.088.i = phi i32 [ %i.dp, %bb.aj ], [ %i.dx, %bb.ak ] ; 5 uses
  %.0.i = phi i32 [ 20, %bb.aj ], [ 0, %bb.ak ]   ; 3 uses
  %i.ea = icmp ugt i32 %.090.i, %.1134172
  %i.eb = icmp ugt i32 %.090.i, 268435454
  %or.cond.i = or i1 %i.ea, %i.eb
  br i1 %or.cond.i, label %._crit_edge.i, label %4

4:                                                ; preds = %bb.al
  %5 = sub nuw i32 %.1134172, %.090.i             ; 2 uses
  %6 = icmp ugt i32 %.089.i, %5
  br i1 %6, label %._crit_edge.i, label %bb.am

bb.am:                                            ; preds = %4
  %i.ec = sub nuw i32 %5, %.089.i                 ; 2 uses
  %i.ed = icmp ugt i32 %.088.i, %i.ec
  %i.ee = sub nuw i32 %i.ec, %.088.i
  %i.ef = icmp ugt i32 %.0.i, %i.ee
  %or.cond106.i = select i1 %i.ed, i1 true, i1 %i.ef
  br i1 %or.cond106.i, label %._crit_edge.i, label %bb.an

._crit_edge.i:                                    ; preds = %bb.am, %4, %bb.al
  %i.eg = sub i32 %.090.i, %.1134172
  %7 = add i32 %i.eg, %.089.i
  %i.eh = add i32 %7, %.088.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %i.cz, i32 noundef 16, ptr noundef nonnull @.str.40, i32 noundef %.090.i, i32 noundef %.089.i, i32 noundef %.088.i, i32 noundef %i.eh) #9
  br label %.loopexit

bb.an:                                            ; preds = %bb.am
  %i.ei = getelementptr inbounds nuw i8, ptr %i.f, i64 2000 ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.f, i64 2008
  %i.ek = zext nneg i32 %.090.i to i64
  tail call void @av_fast_padded_malloc(ptr noundef nonnull %i.ei, ptr noundef nonnull %i.ej, i64 noundef %i.ek) #9
  %i.el = load ptr, ptr %i.ei, align 16, !tbaa !46 ; 2 uses
  %.not102.i = icmp eq ptr %i.el, null
  br i1 %.not102.i, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.em = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !47
  %i.eo = zext nneg i32 %.0.i to i64
  %i.ep = getelementptr inbounds nuw i8, ptr %.1140170, i64 %i.eo
  %i.eq = lshr i32 %.090.i, 2
  tail call void %i.en(ptr noundef nonnull %i.el, ptr noundef %i.ep, i32 noundef %i.eq) #9, !inline_history !66
  %i.er = getelementptr inbounds nuw i8, ptr %i.f, i64 96
  %i.es = load ptr, ptr %i.ei, align 16, !tbaa !46 ; 2 uses
  %i.et = shl nuw nsw i32 %.090.i, 3
  %or.cond.i109.i = icmp samesign ult i32 %.090.i, 268435392 ; 2 uses
  %i.eu = icmp ne ptr %i.es, null
  %or.cond3.i.i = and i1 %or.cond.i109.i, %i.eu
  %.014.i.i = select i1 %or.cond.i109.i, ptr %i.es, ptr null
  %.013.i.i = select i1 %or.cond3.i.i, i32 %i.et, i32 0 ; 2 uses
  store ptr %.014.i.i, ptr %i.er, align 16, !tbaa !48
  %i.ev = getelementptr inbounds nuw i8, ptr %i.f, i64 108
  store i32 %.013.i.i, ptr %i.ev, align 4, !tbaa !49
  %i.ew = add nuw nsw i32 %.013.i.i, 8
  %i.ex = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  store i32 %i.ew, ptr %i.ex, align 16, !tbaa !50
  %i.ey = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  store i32 0, ptr %i.ey, align 8, !tbaa !51
  %i.ez = add nuw nsw i32 %.0.i, %.090.i          ; 3 uses
  %i.fa = sub nuw i32 %.1134172, %i.ez            ; 2 uses
  %i.fb = icmp sgt i32 %i.fa, -1
  br i1 %i.fb, label %bytestream2_init.exit108.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit108.i:                       ; preds = %bb.ao
  %i.fc = zext nneg i32 %i.ez to i64
  %i.fd = getelementptr inbounds nuw i8, ptr %.1140170, i64 %i.fc ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  %i.ff = add i32 %i.ez, %.088.i                  ; 2 uses
  store ptr %i.fd, ptr %i.fe, align 16, !tbaa !52
  %i.fg = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  store ptr %i.fd, ptr %i.fg, align 16, !tbaa !82
  %i.fh = zext nneg i32 %i.fa to i64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fd, i64 %i.fh
  %i.fj = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  store ptr %i.fi, ptr %i.fj, align 8, !tbaa !53
  %i.fk = sub i32 %.1134172, %i.ff                ; 2 uses
  %i.fl = icmp sgt i32 %i.fk, -1
  br i1 %i.fl, label %bytestream2_init.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bytestream2_init.exit108.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i32 noundef 141) #9
  tail call void @abort() #10
  unreachable

bytestream2_init.exit.i:                          ; preds = %bytestream2_init.exit108.i
  %i.fm = zext i32 %i.ff to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.1140170, i64 %i.fm ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !52
  %i.fp = getelementptr inbounds nuw i8, ptr %i.f, i64 136
  store ptr %i.fn, ptr %i.fp, align 8, !tbaa !82
  %i.fq = zext nneg i32 %i.fk to i64
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fq
  %i.fs = getelementptr inbounds nuw i8, ptr %i.f, i64 128
  store ptr %i.fr, ptr %i.fs, align 16, !tbaa !53
  %i.ft = shl nsw i32 %i.db, 1                    ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  br label %bb.ar

bb.ar:                                            ; preds = %bb.au, %bytestream2_init.exit.i
  %indvars.iv.i.i = phi i64 [ 0, %bytestream2_init.exit.i ], [ %indvars.iv.next.i.i, %bb.au ] ; 4 uses
  %i.fv = load i32, ptr %i.di, align 4, !tbaa !42
  %i.fw = icmp sgt i32 %i.fv, 1
  br i1 %i.fw, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.fx = getelementptr inbounds nuw [2 x i8], ptr @mv, i64 %indvars.iv.i.i ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 2, !tbaa !41
  %i.fz = sext i8 %i.fy to i32
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fx, i64 1
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !41
  %i.gc = sext i8 %i.gb to i32
  %i.gd = mul nsw i32 %i.ft, %i.gc
  %i.ge = ashr exact i32 %i.gd, 1
  %i.gf = add nsw i32 %i.ge, %i.fz
  br label %bb.au

bb.at:                                            ; preds = %bb.ar
  %i.gg = trunc nuw nsw i64 %indvars.iv.i.i to i32 ; 2 uses
  %i.gh = and i32 %i.gg, 15
  %i.gi = add nsw i32 %i.gh, -8
  %i.gj = lshr i32 %i.gg, 4
  %i.gk = add nsw i32 %i.gj, -8
  %i.gl = mul nsw i32 %i.gk, %i.ft
  %i.gm = ashr exact i32 %i.gl, 1
  %i.gn = add nsw i32 %i.gi, %i.gm
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %.sink.i.i = phi i32 [ %i.gf, %bb.as ], [ %i.gn, %bb.at ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.fu, i64 %indvars.iv.i.i
  store i32 %.sink.i.i, ptr %i.go, align 4, !tbaa !54
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 256
  br i1 %exitcond.not.i.i, label %init_mv.exit.preheader.i, label %bb.ar, !llvm.loop !67

init_mv.exit.preheader.i:                         ; preds = %bb.au
  %i.gp = icmp sgt i32 %i.dd, 0
  br i1 %i.gp, label %.preheader.lr.ph.i, label %decode_p_frame.exit

.preheader.lr.ph.i:                               ; preds = %init_mv.exit.preheader.i
  %i.gq = icmp sgt i32 %i.db, 0
  %i.gr = shl nsw i32 %i.db, 3
  %i.gs = sext i32 %i.gr to i64                   ; 2 uses
  br i1 %i.gq, label %.preheader.us.i, label %decode_p_frame.exit

.preheader.us.i:                                  ; preds = %.preheader.lr.ph.i, %._crit_edge.us.i
  %.091118.us.i = phi ptr [ %i.gz, %._crit_edge.us.i ], [ %i.dh, %.preheader.lr.ph.i ] ; 2 uses
  %.092117.us.i = phi ptr [ %i.ha, %._crit_edge.us.i ], [ %i.df, %.preheader.lr.ph.i ] ; 2 uses
  %.093116.us.i = phi i32 [ %i.hb, %._crit_edge.us.i ], [ 0, %.preheader.lr.ph.i ]
  br label %bb.aw

bb.av:                                            ; preds = %bb.aw
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %i.gt = trunc nuw i64 %indvars.iv.next.i to i32
  %i.gu = icmp sgt i32 %i.db, %i.gt
  br i1 %i.gu, label %bb.aw, label %._crit_edge.us.i, !llvm.loop !68

bb.aw:                                            ; preds = %bb.av, %.preheader.us.i
  %indvars.iv.i = phi i64 [ 0, %.preheader.us.i ], [ %indvars.iv.next.i, %bb.av ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [2 x i8], ptr %.092117.us.i, i64 %indvars.iv.i
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %.091118.us.i, i64 %indvars.iv.i
  %i.gx = tail call fastcc i32 @decode_p_block(ptr noundef nonnull %i.f, ptr noundef %i.gv, ptr noundef %i.gw, i32 noundef 3, i32 noundef 3, i32 noundef %i.db) ; 2 uses
  %i.gy = icmp slt i32 %i.gx, 0
  br i1 %i.gy, label %.loopexit, label %bb.av

._crit_edge.us.i:                                 ; preds = %bb.av
  %i.gz = getelementptr inbounds nuw [2 x i8], ptr %.091118.us.i, i64 %i.gs
  %i.ha = getelementptr inbounds nuw [2 x i8], ptr %.092117.us.i, i64 %i.gs
  %i.hb = add nuw nsw i32 %.093116.us.i, 8        ; 2 uses
  %i.hc = icmp slt i32 %i.hb, %i.dd
  br i1 %i.hc, label %.preheader.us.i, label %decode_p_frame.exit, !llvm.loop !69

.loopexit:                                        ; preds = %bb.aw, %bb.ai, %._crit_edge.i, %bb.an
  %.095.i.ph = phi i32 [ -1094995529, %bb.ai ], [ -12, %bb.an ], [ -1094995529, %._crit_edge.i ], [ %i.gx, %bb.aw ]
  %i.hd = load ptr, ptr %i.f, align 16, !tbaa !43
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.hd, i32 noundef 16, ptr noundef nonnull @.str.20) #9
  br label %.thread160

bb.ax:                                            ; preds = %bb.aa, %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.22, i32 noundef %i.d) #9
  br label %.thread160

bb.ay:                                            ; preds = %bb.aa, %bb.ac
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.23, i32 noundef %i.d) #9
  br label %.thread160

decode_p_frame.exit:                              ; preds = %._crit_edge.us.i, %.preheader.lr.ph.i, %init_mv.exit.preheader.i, %bb.af, %bb.ad
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !81
  %i.hg = icmp eq i32 %i.hf, 1
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 276 ; 2 uses
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !83
  %i.hj = and i32 %i.hi, -3
  %masksel = select i1 %i.hg, i32 2, i32 0
  %.sink = or disjoint i32 %i.hj, %masksel
  store i32 %.sink, ptr %i.hh, align 4, !tbaa !83
  %i.hk = load ptr, ptr %1, align 8, !tbaa !55
  %i.hl = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.hm = load i32, ptr %i.hl, align 8, !tbaa !54
  %i.hn = getelementptr inbounds nuw i8, ptr %i.f, i64 56 ; 3 uses
  %i.ho = load ptr, ptr %i.hn, align 8, !tbaa !39
  %i.hp = load i32, ptr %i.h, align 8, !tbaa !29
  %i.hq = shl nsw i32 %i.hp, 1                    ; 2 uses
  %i.hr = load i32, ptr %i.l, align 4, !tbaa !30
  tail call void @av_image_copy_plane(ptr noundef %i.hk, i32 noundef %i.hm, ptr noundef %i.ho, i32 noundef %i.hq, i32 noundef %i.hq, i32 noundef %i.hr) #9
  %i.hs = load <2 x ptr>, ptr %i.hn, align 8, !tbaa !84
  %i.ht = shufflevector <2 x ptr> %i.hs, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ht, ptr %i.hn, align 8, !tbaa !84
  store i32 1, ptr %2, align 4, !tbaa !54
  br label %.thread160

.thread160:                                       ; preds = %bb.w, %bb.z, %.loopexit177, %bb.s, %bb.v, %bb.k, %bb.i, %bb.ab, %bb.a, %decode_p_frame.exit, %bb.ay, %bb.ax, %.loopexit, %bb.ag, %bb.ae, %bb.f
  %.1 = phi i32 [ %i.cm, %bb.ab ], [ -1094995529, %bb.f ], [ -1094995529, %bb.a ], [ %i.cr, %bb.ae ], [ %i.d, %decode_p_frame.exit ], [ %i.cv, %bb.ag ], [ %.095.i.ph, %.loopexit ], [ -1094995529, %bb.ax ], [ -1094995529, %bb.ay ], [ %i.d, %bb.w ], [ -1094995529, %bb.z ], [ -1094995529, %.loopexit177 ], [ -1094995529, %bb.s ], [ -12, %bb.v ], [ -1094995529, %bb.k ], [ -1094995529, %bb.i ]
  ret i32 %.1
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @decode_end(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !28   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  tail call void @av_freep(ptr noundef nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  tail call void @av_freep(ptr noundef nonnull %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 2000
  tail call void @av_freep(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 2008
  store i32 0, ptr %i.f, align 8, !tbaa !86
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 2016
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.h = getelementptr inbounds nuw [24 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  tail call void @av_freep(ptr noundef nonnull %i.i) #9
  store i32 0, ptr %i.h, align 8, !tbaa !87
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 100
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !85

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 1192
  tail call void @ff_vlc_free(ptr noundef nonnull %i.j) #9
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare i32 @av_image_check_size(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3
end_hunk_0
