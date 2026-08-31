Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vc2enc?download=true
inline.NumInlined: 67
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@vc2_encode_init:bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !49
  %.not194 = icmp eq i32 %i.ae, %i.ag
  br i1 %.not194, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !50
  %.not195 = icmp eq i8 %i.ai, %i.s
  br i1 %.not195, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aj = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.aj, ptr %i.f, align 8, !tbaa !51
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 21
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !52
  %i.am = zext i8 %i.al to i32
  store i32 %i.am, ptr %i.e, align 4, !tbaa !53
  br label %.loopexit210

bb.i:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 23
  br i1 %exitcond.not, label %.loopexit210, label %bb.b, !llvm.loop !54

.loopexit210:                                     ; preds = %bb.i, %bb.h
  br i1 %narrow, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.loopexit210
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 24, ptr noundef nonnull @.str.35) #14
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.loopexit210
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 2984 ; 2 uses
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56 ; 2 uses
  %i.ap = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ao)
  %.not197 = icmp samesign ult i32 %i.ap, 2
  br i1 %.not197, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 2980 ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !57 ; 2 uses
  %i.as = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.ar)
  %.not198 = icmp samesign ult i32 %i.as, 2
  br i1 %.not198, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %0, i32 noundef 16, ptr noundef nonnull @.str.36) #14
  br label %.critedge207

bb.n:                                             ; preds = %bb.l
  %i.at = load i32, ptr %i.q, align 8, !tbaa !46
  %i.au = icmp sgt i32 %i.ao, %i.at
  br i1 %i.au, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = load i32, ptr %i.r, align 4, !tbaa !48
  %i.aw = icmp sgt i32 %i.ar, %i.av
  br i1 %i.aw, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o, %bb.n
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 16, ptr noundef nonnull @.str.37) #14
  br label %.critedge207

bb.q:                                             ; preds = %bb.o
  %i.ax = load i32, ptr %i.f, align 8, !tbaa !51  ; 3 uses
  %i.ay = icmp slt i32 %i.ax, 1
  br i1 %i.ay, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !58
  %i.bb = icmp slt i32 %i.ba, 1
  br i1 %i.bb, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  store i32 0, ptr %i.f, align 8, !tbaa !51
  store i32 0, ptr %i.g, align 8, !tbaa !30
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.38) #14
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 24, ptr noundef nonnull @.str.39) #14
  br label %.critedge207

bb.u:                                             ; preds = %bb.q
  %i.bc = zext nneg i32 %i.ax to i64
  %i.bd = getelementptr inbounds nuw [36 x i8], ptr @base_video_fmts, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 22
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef nonnull %0, i32 noundef 32, ptr noundef nonnull @.str.40, i32 noundef %i.ax, ptr noundef nonnull %i.be) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.s
  %i.bf = load i32, ptr %i.m, align 8, !tbaa !39
  %i.bg = tail call ptr @av_pix_fmt_desc_get(i32 noundef %i.bf) #14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 2932 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2936
  %i.bk = load <2 x i8>, ptr %i.bh, align 1, !tbaa !59
  %i.bl = zext <2 x i8> %i.bk to <2 x i32>
  store <2 x i32> %i.bl, ptr %i.bi, align 4, !tbaa !29
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !60
  switch i32 %i.bn, label %.critedge.thread [
    i32 8, label %bb.w
    i32 10, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !62 ; 2 uses
  %i.bq = icmp eq i32 %i.bp, 2
  br i1 %i.bq, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %switch = icmp ult i32 %i.bp, 2
  br i1 %switch, label %bb.y, label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.v, %bb.x
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w, %.critedge.thread
  %.sink245 = phi i32 [ 1, %bb.w ], [ 4, %.critedge.thread ], [ 2, %bb.x ], [ 3, %bb.v ]
  %i.br = phi <2 x i32> [ <i32 128, i32 1>, %bb.w ], [ <i32 2048, i32 2>, %.critedge.thread ], [ <i32 128, i32 1>, %bb.x ], [ <i32 512, i32 2>, %bb.v ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 1944
  store i32 %.sink245, ptr %i.bs, align 8, !tbaa !63
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 1936
  store <2 x i32> %i.br, ptr %i.bt, align 8, !tbaa !29
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 2972 ; 2 uses
  br label %bb.aa

bb.z:                                             ; preds = %._crit_edge
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond233.not = icmp eq i64 %indvars.iv.next231, 3
  br i1 %exitcond233.not, label %bb.ah, label %bb.aa, !llvm.loop !64

bb.aa:                                            ; preds = %bb.y, %bb.z
  %indvars.iv230 = phi i64 [ 0, %bb.y ], [ %indvars.iv.next231, %bb.z ] ; 4 uses
  %i.bw = getelementptr inbounds nuw [512 x i8], ptr %i.bu, i64 %indvars.iv230 ; 7 uses
  %i.bx = load i32, ptr %i.q, align 8, !tbaa !46  ; 2 uses
  %.not202 = icmp eq i64 %indvars.iv230, 0
  br i1 %.not202, label %.thread209, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.by = load i32, ptr %i.bi, align 4, !tbaa !65
  %i.bz = ashr i32 %i.bx, %i.by
  %i.ca = load i32, ptr %i.bj, align 8, !tbaa !66
  br label %.thread209

.thread209:                                       ; preds = %bb.aa, %bb.ab
  %.sink = phi i32 [ %i.bz, %bb.ab ], [ %i.bx, %bb.aa ] ; 2 uses
  %i.cb = phi i32 [ %i.ca, %bb.ab ], [ 0, %bb.aa ]
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 488
  store i32 %.sink, ptr %i.cc, align 8, !tbaa !67
  %i.cd = load i32, ptr %i.r, align 4, !tbaa !48
  %i.ce = ashr i32 %i.cd, %i.cb                   ; 3 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 492 ; 2 uses
  store i32 %i.ce, ptr %i.cf, align 4, !tbaa !69
  %i.cg = load i32, ptr %i.l, align 4, !tbaa !38
  %.not203 = icmp eq i32 %i.cg, 0
  br i1 %.not203, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.thread209
  %i.ch = ashr i32 %i.ce, 1                       ; 2 uses
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !69
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %.thread209
  %i.ci = phi i32 [ %i.ch, %bb.ac ], [ %i.ce, %.thread209 ]
  %i.cj = load i32, ptr %i.bv, align 4, !tbaa !70
  %i.ck = shl nuw i32 1, %i.cj                    ; 3 uses
  %i.cl = add i32 %.sink, -1
  %i.cm = add i32 %i.cl, %i.ck
  %i.cn = sub i32 0, %i.ck                        ; 2 uses
  %i.co = and i32 %i.cm, %i.cn                    ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bw, i64 496
  store i32 %i.co, ptr %i.cp, align 8, !tbaa !71
  %i.cq = add i32 %i.ck, -1
  %i.cr = add i32 %i.cq, %i.ci
  %i.cs = and i32 %i.cr, %i.cn                    ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bw, i64 500 ; 2 uses
  store i32 %i.cs, ptr %i.ct, align 4, !tbaa !72
  %i.cu = add nsw i32 %i.co, 31
  %i.cv = and i32 %i.cu, -32
  %i.cw = sext i32 %i.cv to i64                   ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bw, i64 504 ; 2 uses
  store i64 %i.cw, ptr %i.cx, align 8, !tbaa !73
  %i.cy = sext i32 %i.cs to i64
  %i.cz = shl nsw i64 %i.cy, 2
  %i.da = mul i64 %i.cz, %i.cw
  %i.db = tail call noalias ptr @av_mallocz(i64 noundef %i.da) #14 ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bw, i64 480
  store ptr %i.db, ptr %i.dc, align 8, !tbaa !74
  %.not204 = icmp eq ptr %i.db, null
  br i1 %.not204, label %.critedge207, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.dd = load i32, ptr %i.bv, align 4, !tbaa !70 ; 2 uses
  %i.de = icmp sgt i32 %i.dd, 0
  %.pre = load i64, ptr %i.cx, align 8, !tbaa !73 ; 3 uses
  br i1 %i.de, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.ae
  %i.df = zext nneg i32 %i.dd to i64
  br label %bb.af

.loopexit:                                        ; preds = %bb.ag
  %i.dg = icmp samesign ugt i64 %indvars.iv227, 1
  br i1 %i.dg, label %bb.af, label %._crit_edge, !llvm.loop !75

bb.af:                                            ; preds = %.lr.ph, %.loopexit
  %indvars.iv227 = phi i64 [ %i.df, %.lr.ph ], [ %indvars.iv.next228, %.loopexit ] ; 2 uses
  %.0216 = phi i32 [ %i.cs, %.lr.ph ], [ %i.di, %.loopexit ]
  %.0179215 = phi i32 [ %i.co, %.lr.ph ], [ %i.dh, %.loopexit ]
  %indvars.iv.next228 = add nsw i64 %indvars.iv227, -1 ; 2 uses
  %i.dh = ashr i32 %.0179215, 1                   ; 3 uses
  %i.di = ashr i32 %.0216, 1                      ; 3 uses
  %i.dj = getelementptr inbounds nuw [96 x i8], ptr %i.bw, i64 %indvars.iv.next228
  %1 = zext i32 %i.dh to i64
  %2 = zext i32 %i.di to i64
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ag
  %indvars.iv223 = phi i64 [ 0, %bb.af ], [ %indvars.iv.next224, %bb.ag ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [24 x i8], ptr %i.dj, i64 %indvars.iv223 ; 4 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  store i32 %i.dh, ptr %i.dl, align 8, !tbaa !76
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 20
  store i32 %i.di, ptr %i.dm, align 4, !tbaa !78
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %.pre, ptr %i.dn, align 8, !tbaa !79
  %i.do = icmp samesign ugt i64 %indvars.iv223, 1
  %3 = select i1 %i.do, i64 %2, i64 0
  %4 = mul i64 %.pre, %3
  %i.dp = trunc i64 %indvars.iv223 to i1
  %5 = select i1 %i.dp, i64 %1, i64 0
  %6 = add i64 %4, %5
  %sext = shl i64 %6, 32
  %7 = ashr exact i64 %sext, 30
  %8 = getelementptr inbounds i8, ptr %i.db, i64 %7
  store ptr %8, ptr %i.dk, align 8, !tbaa !80
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 4
  br i1 %exitcond226.not, label %.loopexit, label %bb.ag, !llvm.loop !81

._crit_edge:                                      ; preds = %.loopexit, %bb.ae
  %i.dq = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %indvars.iv230
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1640
  %9 = trunc i64 %.pre to i32
  %i.ds = load i32, ptr %i.ct, align 4, !tbaa !72
  %i.dt = load i32, ptr %i.an, align 8, !tbaa !56
  %i.du = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.dv = tail call i32 @ff_vc2enc_init_transforms(ptr noundef nonnull %i.dr, i32 noundef %9, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #14
  %.not205 = icmp eq i32 %i.dv, 0
  br i1 %.not205, label %bb.z, label %.critedge207

bb.ah:                                            ; preds = %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 536
  %i.dx = getelementptr inbounds nuw i8, ptr %i.b, i64 2916
  %i.dy = load <2 x i32>, ptr %i.dw, align 8, !tbaa !29
  %i.dz = load <2 x i32>, ptr %i.aq, align 4, !tbaa !29
  %i.ea = shufflevector <2 x i32> %i.dz, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  %i.eb = sdiv <2 x i32> %i.dy, %i.ea             ; 3 uses
  store <2 x i32> %i.eb, ptr %i.dx, align 4, !tbaa !29
  %i.ec = extractelement <2 x i32> %i.eb, i64 0
  %i.ed = extractelement <2 x i32> %i.eb, i64 1
  %i.ee = mul nsw i32 %i.ed, %i.ec
  %i.ef = sext i32 %i.ee to i64
  %i.eg = tail call noalias ptr @av_calloc(i64 noundef %i.ef, i64 noundef 496) #14 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 1592
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !82
  %.not199 = icmp eq ptr %i.eg, null
  br i1 %.not199, label %.critedge207, label %.preheader

.preheader:                                       ; preds = %bb.ah
  %i.ei = getelementptr inbounds nuw i8, ptr %i.b, i64 1988 ; 2 uses
  br label %bb.ai

bb.ai:                                            ; preds = %.preheader, %bb.an
  %indvars.iv234 = phi i64 [ 0, %.preheader ], [ %indvars.iv.next235, %bb.an ] ; 4 uses
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr @ff_dirac_qscale_tab, i64 %indvars.iv234
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29 ; 5 uses
  %i.el = sext i32 %i.ek to i64                   ; 2 uses
  %.not.i = icmp ult i32 %i.ek, 65536             ; 2 uses
  %i.em = lshr i32 %i.ek, 16
  %spec.select.i = select i1 %.not.i, i32 %i.ek, i32 %i.em ; 3 uses
  %spec.select12.i = select i1 %.not.i, i32 0, i32 16 ; 2 uses
  %.not11.i = icmp samesign ult i32 %spec.select.i, 256 ; 2 uses
  %i.en = lshr i32 %spec.select.i, 8
  %i.eo = or disjoint i32 %spec.select12.i, 8
  %.110.i = select i1 %.not11.i, i32 %spec.select.i, i32 %i.en
  %.1.i = select i1 %.not11.i, i32 %spec.select12.i, i32 %i.eo
  %i.ep = zext nneg i32 %.110.i to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !59
  %i.es = zext i8 %i.er to i32
  %i.et = add nuw nsw i32 %.1.i, %i.es            ; 2 uses
  %i.eu = add nuw nsw i32 %i.et, 32
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = shl nuw i64 1, %i.ev
  %i.ex = udiv i64 %i.ew, %i.el
  %i.ey = trunc i64 %i.ex to i32                  ; 3 uses
  %i.ez = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.el)
  %.not200 = icmp samesign ult i64 %i.ez, 2
  br i1 %.not200, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv234
  store <2 x i32> splat (i32 -1), ptr %i.fa, align 4, !tbaa !29
  br label %bb.an

bb.ak:                                            ; preds = %bb.ai
  %i.fb = add i32 %i.ey, 1                        ; 2 uses
  %i.fc = mul i32 %i.fb, %i.ek
  %i.fd = shl nuw i32 1, %i.et
  %.not201 = icmp ugt i32 %i.fc, %i.fd
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %indvars.iv234 ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 4 ; 2 uses
  br i1 %.not201, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  store i32 %i.fb, ptr %i.fe, align 4, !tbaa !29
  store i32 0, ptr %i.ff, align 4, !tbaa !29
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  store i32 %i.ey, ptr %i.fe, align 4, !tbaa !29
  store i32 %i.ey, ptr %i.ff, align 4, !tbaa !29
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am, %bb.aj
  %indvars.iv.next235 = add nuw nsw i64 %indvars.iv234, 1 ; 2 uses
  %exitcond237.not = icmp eq i64 %indvars.iv.next235, 116
  br i1 %exitcond237.not, label %bb.ao, label %bb.ai, !llvm.loop !83

bb.ao:                                            ; preds = %bb.an
  %i.fg = tail call i32 @pthread_once(ptr noundef nonnull @vc2_encode_init.init_static_once, ptr noundef nonnull @vc2_init_static_data) #14 ; 0 uses
  br label %.critedge207

.critedge207:                                     ; preds = %bb.ad, %._crit_edge, %bb.ah, %bb.ao, %bb.t, %bb.p, %bb.m
  %.2187 = phi i32 [ -22, %bb.m ], [ -22, %bb.p ], [ -22, %bb.t ], [ 0, %bb.ao ], [ -12, %bb.ah ], [ -12, %._crit_edge ], [ -12, %bb.ad ]
  ret i32 %.2187
}

; Function Attrs: cold nounwind optsize uwtable
define internal range(i32 -2147483648, 1) i32 @vc2_encode_frame(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 19 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i32, ptr %i.c, align 8, !tbaa !84
  %i.e = and i32 %i.d, 8388608
  %.not = icmp eq i32 %i.e, 0                     ; 2 uses
  %i.f = select i1 %.not, i32 113, i32 105        ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8, !tbaa !85
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 2988 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !38   ; 2 uses
  %i.k = zext nneg i32 %i.j to i64
  %i.l = ashr i64 %i.h, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1576
  store ptr %0, ptr %i.m, align 8, !tbaa !86
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 2928
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 2924
  store i32 0, ptr %i.o, align 4, !tbaa !87
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 2996
  store <2 x i32> zeroinitializer, ptr %i.p, align 4, !tbaa !29
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.r = load i32, ptr %i.q, align 4, !tbaa !42
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = load i32, ptr %i.t, align 8, !tbaa !44
  %i.v = sext i32 %i.u to i64
  %i.w = tail call i64 @av_rescale(i64 noundef %i.l, i64 noundef %i.s, i64 noundef %i.v) #15
  %i.x = lshr i64 %i.w, 3
  %i.y = trunc i64 %i.x to i32
  %i.z = sub i32 %i.y, %i.f                       ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2940
  store i32 %i.z, ptr %i.aa, align 4, !tbaa !88
  %i.ab = sext i32 %i.z to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 2916
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !89
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 2920
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !90
  %i.ag = mul nsw i32 %i.af, %i.ad
  %i.ah = sext i32 %i.ag to i64
  %i.ai = tail call i64 @av_rescale(i64 noundef %i.ab, i64 noundef 1, i64 noundef %i.ah) #15
  %i.aj = trunc i64 %i.ai to i32                  ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 2944 ; 2 uses
  store i32 %i.aj, ptr %i.ak, align 8, !tbaa !91
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.d
  %i.al = phi i32 [ %i.aj, %bb.a ], [ %i.ax, %bb.d ] ; 3 uses
  %i.am = phi i32 [ 2, %bb.a ], [ %i.az, %bb.d ]  ; 4 uses
  %i.an = add i32 %i.am, -1                       ; 2 uses
  %i.ao = add i32 %i.an, %i.al
  %i.ap = sub i32 0, %i.am                        ; 2 uses
  %i.aq = and i32 %i.ao, %i.ap
  %i.ar = add nsw i32 %i.aq, 4                    ; 3 uses
  %i.as = icmp sgt i32 %i.ar, %i.aj
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.neg = sub i32 %i.aj, %i.ar
  %i.at = add i32 %.neg, %i.al                    ; 3 uses
  store i32 %i.at, ptr %i.ak, align 8, !tbaa !91
  %i.au = add i32 %i.an, %i.at
  %i.av = and i32 %i.au, %i.ap
  %i.aw = add nsw i32 %i.av, 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ax = phi i32 [ %i.at, %bb.c ], [ %i.al, %bb.b ] ; 3 uses
  %.0 = phi i32 [ %i.aw, %bb.c ], [ %i.ar, %bb.b ]
  %i.ay = sdiv i32 %.0, %i.am
  %i.az = shl i32 %i.am, 1                        ; 2 uses
  %i.ba = icmp sgt i32 %i.ay, 255
  br i1 %i.ba, label %bb.b, label %bb.e, !llvm.loop !92

bb.e:                                             ; preds = %bb.d
  %i.bb = select i1 %.not, ptr @.str.43, ptr @.str.42 ; 2 uses
  store i32 %i.az, ptr %i.n, align 8, !tbaa !93
  %i.bc = sitofp nsz i32 %i.ax to double          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.b, i64 2960
  %i.be = load double, ptr %i.bd, align 8, !tbaa !94
  %i.bf = fdiv nsz double %i.be, 1.000000e+02
  %i.bg = fneg nsz double %i.bc
  %i.bh = tail call nsz double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.bc)
  %i.bi = fptosi double %i.bh to i32              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.b, i64 2948
  store i32 %i.bi, ptr %i.bj, align 4, !tbaa !95
  %i.bk = icmp slt i32 %i.bi, 0
  %i.bl = icmp sgt i32 %i.ax, 268435455
  %or.cond = or i1 %i.bk, %i.bl
  br i1 %or.cond, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bm = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bb, i32 noundef %i.f, i32 noundef %i.j) ; 2 uses
  %.not71 = icmp eq i32 %i.bm, 0
  br i1 %.not71, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.bn = load i32, ptr %i.i, align 4, !tbaa !38
  %.not72 = icmp eq i32 %i.bn, 0
  br i1 %.not72, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bo = tail call fastcc i32 @encode_frame(ptr noundef nonnull %i.b, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %i.bb, i32 noundef %i.f, i32 noundef 2) ; 2 uses
  %.not73 = icmp eq i32 %i.bo, 0
  br i1 %.not73, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h, %bb.g
end_hunk_0
begin_hunk_1_@encode_frame:bb.a
  %i.be = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bf
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv141.i.i
  %i.bi = load i8, ptr %i.bh, align 4, !tbaa !59
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv141.i.i ; 4 uses
  store i8 %i.bi, ptr %i.bj, align 4, !tbaa !59
  %i.bk = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bl = sext i32 %i.bk to i64
  %i.bm = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv141.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 1
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !59
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 1
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !59
  %i.br = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bs
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %indvars.iv141.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 2
  %i.bw = load i8, ptr %i.bv, align 2, !tbaa !59
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bj, i64 2
  store i8 %i.bw, ptr %i.bx, align 2, !tbaa !59
  %i.by = load i32, ptr %i.bc, align 8, !tbaa !121
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv141.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 3
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !59
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 3
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !59
  %indvars.iv.next142.i.i = add nuw nsw i64 %indvars.iv141.i.i, 1 ; 2 uses
  %i.cf = load i32, ptr %i.au, align 4, !tbaa !70
  %i.cg = sext i32 %i.cf to i64
  %i.ch = icmp slt i64 %indvars.iv.next142.i.i, %i.cg
  br i1 %i.ch, label %bb.c, label %init_quant_matrix.exit.i, !llvm.loop !122

._crit_edge.i.i:                                  ; preds = %bb.a
  store i32 1, ptr %i.ba, align 8, !tbaa !120
  switch i32 %i.ay, label %.preheader65.i.i [
    i32 0, label %.preheader68.i.i
    i32 1, label %.preheader71.i.i
  ]

.preheader71.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.preheader70.lr.ph.i.i, label %init_quant_matrix.exit.i

.preheader70.lr.ph.i.i:                           ; preds = %.preheader71.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1964
  br label %.preheader70.i.i

.preheader68.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.split.us.peel.i.i, label %init_quant_matrix.exit.i

.split.us.peel.i.i:                               ; preds = %.preheader68.i.i
  %i.cj = getelementptr i8, ptr %0, i64 1964      ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2968
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !121
  %i.cm = sext i32 %i.cl to i64                   ; 4 uses
  %gep.us.peel.i.i = getelementptr [16 x i8], ptr @ff_dirac_default_qmat, i64 %i.cm ; 4 uses
  %i.cn = load i8, ptr %gep.us.peel.i.i, align 16, !tbaa !59
  store i8 %i.cn, ptr %i.cj, align 4, !tbaa !59
  %i.co = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !tbaa !59
  %i.cq = getelementptr i8, ptr %0, i64 1965
  store i8 %i.cp, ptr %i.cq, align 1, !tbaa !59
  %i.cr = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 2
  %i.cs = load i8, ptr %i.cr, align 2, !tbaa !59
  %i.ct = getelementptr i8, ptr %0, i64 1966
  store i8 %i.cs, ptr %i.ct, align 2, !tbaa !59
  %i.cu = getelementptr inbounds nuw i8, ptr %gep.us.peel.i.i, i64 3
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !59
  %i.cw = getelementptr i8, ptr %0, i64 1967
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !59
  %.not.i.i = icmp eq i32 %i.av, 1
  br i1 %.not.i.i, label %init_quant_matrix.exit.i, label %.split.us.peel106.i.i

.split.us.peel106.i.i:                            ; preds = %.split.us.peel.i.i
  %i.cx = getelementptr i8, ptr %0, i64 1968
  %gep.us.peel102.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 4), i64 %i.cm ; 4 uses
  %i.cy = load i8, ptr %gep.us.peel102.i.i, align 4, !tbaa !59
  store i8 %i.cy, ptr %i.cx, align 8, !tbaa !59
  %i.cz = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 1
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !59
  %i.db = getelementptr i8, ptr %0, i64 1969
  store i8 %i.da, ptr %i.db, align 1, !tbaa !59
  %i.dc = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 2
  %i.dd = load i8, ptr %i.dc, align 2, !tbaa !59
  %i.de = getelementptr i8, ptr %0, i64 1970
  store i8 %i.dd, ptr %i.de, align 2, !tbaa !59
  %i.df = getelementptr inbounds nuw i8, ptr %gep.us.peel102.i.i, i64 3
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !59
  %i.dh = getelementptr i8, ptr %0, i64 1971
  store i8 %i.dg, ptr %i.dh, align 1, !tbaa !59
  %i.di = icmp samesign ugt i32 %i.av, 2
  br i1 %i.di, label %.split.us.peel119.i.i, label %init_quant_matrix.exit.i

.split.us.peel119.i.i:                            ; preds = %.split.us.peel106.i.i
  %i.dj = getelementptr i8, ptr %0, i64 1972
  %gep.us.peel115.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 8), i64 %i.cm ; 4 uses
  %i.dk = load i8, ptr %gep.us.peel115.i.i, align 8, !tbaa !59
  store i8 %i.dk, ptr %i.dj, align 4, !tbaa !59
  %i.dl = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 1
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !59
  %i.dn = getelementptr i8, ptr %0, i64 1973
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !59
  %i.do = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 2
  %i.dp = load i8, ptr %i.do, align 2, !tbaa !59
  %i.dq = getelementptr i8, ptr %0, i64 1974
  store i8 %i.dp, ptr %i.dq, align 2, !tbaa !59
  %i.dr = getelementptr inbounds nuw i8, ptr %gep.us.peel115.i.i, i64 3
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !59
  %i.dt = getelementptr i8, ptr %0, i64 1975
  store i8 %i.ds, ptr %i.dt, align 1, !tbaa !59
  %.not147.i.i = icmp eq i32 %i.av, 3
  br i1 %.not147.i.i, label %init_quant_matrix.exit.i, label %.split.us.peel132.i.i

.split.us.peel132.i.i:                            ; preds = %.split.us.peel119.i.i
  %i.du = getelementptr i8, ptr %0, i64 1976
  %gep.us.peel128.i.i = getelementptr [16 x i8], ptr getelementptr inbounds nuw (i8, ptr @ff_dirac_default_qmat, i64 12), i64 %i.cm ; 4 uses
  %i.dv = load i8, ptr %gep.us.peel128.i.i, align 4, !tbaa !59
  store i8 %i.dv, ptr %i.du, align 8, !tbaa !59
  %i.dw = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 1
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !59
  %i.dy = getelementptr i8, ptr %0, i64 1977
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !59
  %i.dz = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 2
  %i.ea = load i8, ptr %i.dz, align 2, !tbaa !59
  %i.eb = getelementptr i8, ptr %0, i64 1978
  store i8 %i.ea, ptr %i.eb, align 2, !tbaa !59
  %i.ec = getelementptr inbounds nuw i8, ptr %gep.us.peel128.i.i, i64 3
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !59
  %i.ee = getelementptr i8, ptr %0, i64 1979
  store i8 %i.ed, ptr %i.ee, align 1, !tbaa !59
  %i.ef = icmp samesign ugt i32 %i.av, 4
  br i1 %i.ef, label %.split.us.i.i, label %init_quant_matrix.exit.i

.preheader65.i.i:                                 ; preds = %._crit_edge.i.i
  br i1 %i.bb, label %.preheader.lr.ph.i.i, label %init_quant_matrix.exit.i

.preheader.lr.ph.i.i:                             ; preds = %.preheader65.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 1964
  br label %.preheader.i.i

.split.us.i.i:                                    ; preds = %.split.us.peel132.i.i, %.split.us.i.i
  %indvars.iv92.i.i = phi i64 [ %indvars.iv.next93.i.i, %.split.us.i.i ], [ 4, %.split.us.peel132.i.i ] ; 3 uses
  %i.eh = getelementptr [4 x i8], ptr %i.cj, i64 %indvars.iv92.i.i
  %i.ei = getelementptr [4 x i8], ptr @vc2_qm_col_tab, i64 %indvars.iv92.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !59
  store i32 %i.ej, ptr %i.eh, align 1, !tbaa !59
  %.pre144.i.i = load i32, ptr %i.au, align 4, !tbaa !70
  %indvars.iv.next93.i.i = add nuw nsw i64 %indvars.iv92.i.i, 1 ; 2 uses
  %i.ek = sext i32 %.pre144.i.i to i64
  %i.el = icmp slt i64 %indvars.iv.next93.i.i, %i.ek
  br i1 %i.el, label %.split.us.i.i, label %init_quant_matrix.exit.i, !llvm.loop !123

.preheader70.i.i:                                 ; preds = %.preheader70.i.i, %.preheader70.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.preheader70.lr.ph.i.i ], [ %indvars.iv.next.i.i, %.preheader70.i.i ] ; 3 uses
  %i.em = getelementptr inbounds nuw [4 x i8], ptr @vc2_qm_col_tab, i64 %indvars.iv.i.i
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.ci, i64 %indvars.iv.i.i
  %i.eo = load i32, ptr %i.em, align 4, !tbaa !59
  store i32 %i.eo, ptr %i.en, align 1, !tbaa !59
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.ep = load i32, ptr %i.au, align 4, !tbaa !70
  %i.eq = sext i32 %i.ep to i64
  %i.er = icmp slt i64 %indvars.iv.next.i.i, %i.eq
  br i1 %i.er, label %.preheader70.i.i, label %init_quant_matrix.exit.i, !llvm.loop !125

.preheader.i.i:                                   ; preds = %.preheader.i.i, %.preheader.lr.ph.i.i
  %indvars.iv138.i.i = phi i64 [ 0, %.preheader.lr.ph.i.i ], [ %indvars.iv.next139.i.i, %.preheader.i.i ] ; 2 uses
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv138.i.i
  store i32 0, ptr %i.es, align 1
  %indvars.iv.next139.i.i = add nuw nsw i64 %indvars.iv138.i.i, 1 ; 2 uses
  %i.et = load i32, ptr %i.au, align 4, !tbaa !70
  %i.eu = sext i32 %i.et to i64
  %i.ev = icmp slt i64 %indvars.iv.next139.i.i, %i.eu
  br i1 %i.ev, label %.preheader.i.i, label %init_quant_matrix.exit.i, !llvm.loop !126

init_quant_matrix.exit.i:                         ; preds = %.preheader70.i.i, %.split.us.i.i, %.preheader.i.i, %bb.c, %.preheader65.i.i, %.split.us.peel132.i.i, %.split.us.peel119.i.i, %.split.us.peel106.i.i, %.split.us.peel.i.i, %.preheader68.i.i, %.preheader71.i.i, %bb.b
  %i.ew = load i32, ptr %i.ap, align 8, !tbaa !90 ; 4 uses
  %i.ex = icmp sgt i32 %i.ew, 0
  %.pre197.i = load i32, ptr %i.an, align 4, !tbaa !89 ; 4 uses
  br i1 %i.ex, label %.preheader123.lr.ph.i, label %._crit_edge131.i

.preheader123.lr.ph.i:                            ; preds = %init_quant_matrix.exit.i
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 2944
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 2952
  %i.fa = icmp sgt i32 %.pre197.i, 0
  br i1 %i.fa, label %.preheader123.i, label %._crit_edge131.i

.preheader123.i:                                  ; preds = %.preheader123.lr.ph.i, %._crit_edge.i
  %i.fb = phi i32 [ %i.fv, %._crit_edge.i ], [ %i.ew, %.preheader123.lr.ph.i ]
  %i.fc = phi i32 [ %i.fw, %._crit_edge.i ], [ %.pre197.i, %.preheader123.lr.ph.i ] ; 3 uses
  %.0105130.i = phi i32 [ %i.fx, %._crit_edge.i ], [ 0, %.preheader123.lr.ph.i ] ; 3 uses
  %i.fd = icmp sgt i32 %i.fc, 0
  br i1 %i.fd, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader123.i, %.lr.ph.i
  %i.fe = phi i32 [ %i.ft, %.lr.ph.i ], [ %i.fc, %.preheader123.i ]
  %.0106129.i = phi i32 [ %i.fs, %.lr.ph.i ], [ 0, %.preheader123.i ] ; 3 uses
  %i.ff = mul nsw i32 %i.fe, %.0105130.i
  %i.fg = add nsw i32 %i.ff, %.0106129.i
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [496 x i8], ptr %i.at, i64 %i.fh ; 5 uses
  store ptr %0, ptr %i.fi, align 8, !tbaa !127
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 472
  store i32 %.0106129.i, ptr %i.fj, align 8, !tbaa !129
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fi, i64 476
  store i32 %.0105130.i, ptr %i.fk, align 4, !tbaa !130
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fi, i64 484
  %i.fm = load <2 x i32>, ptr %i.ey, align 8, !tbaa !29
  %i.fn = shl <2 x i32> %i.fm, splat (i32 3)
  store <2 x i32> %i.fn, ptr %i.fl, align 4, !tbaa !29
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fi, i64 8
  %i.fp = load i32, ptr %i.ez, align 8, !tbaa !131
  %i.fq = sext i32 %i.fp to i64
  %i.fr = shl nsw i64 %i.fq, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fo, i8 0, i64 %i.fr, i1 false)
  %i.fs = add nuw nsw i32 %.0106129.i, 1          ; 2 uses
  %i.ft = load i32, ptr %i.an, align 4, !tbaa !89 ; 3 uses
  %i.fu = icmp slt i32 %i.fs, %i.ft
  br i1 %i.fu, label %.lr.ph.i, label %._crit_edge.loopexit.i, !llvm.loop !132

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.ap, align 8, !tbaa !90
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.preheader123.i
  %i.fv = phi i32 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.fb, %.preheader123.i ] ; 3 uses
  %i.fw = phi i32 [ %i.ft, %._crit_edge.loopexit.i ], [ %i.fc, %.preheader123.i ] ; 2 uses
  %i.fx = add nuw nsw i32 %.0105130.i, 1          ; 2 uses
  %i.fy = icmp slt i32 %i.fx, %i.fv
  br i1 %i.fy, label %.preheader123.i, label %._crit_edge131.i, !llvm.loop !133

._crit_edge131.i:                                 ; preds = %._crit_edge.i, %.preheader123.lr.ph.i, %init_quant_matrix.exit.i
  %i.fz = phi i32 [ %.pre197.i, %init_quant_matrix.exit.i ], [ %.pre197.i, %.preheader123.lr.ph.i ], [ %i.fw, %._crit_edge.i ]
  %.lcssa128.i = phi i32 [ %i.ew, %init_quant_matrix.exit.i ], [ %i.ew, %.preheader123.lr.ph.i ], [ %i.fv, %._crit_edge.i ]
  %i.ga = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 672
  %i.gc = load ptr, ptr %i.gb, align 8, !tbaa !118
  %i.gd = mul nsw i32 %.lcssa128.i, %i.fz
  %i.ge = tail call i32 %i.gc(ptr noundef %i.ga, ptr noundef nonnull @rate_control, ptr noundef %i.at, ptr noundef null, i32 noundef %i.gd, i32 noundef 496) #14, !inline_history !135 ; 0 uses
  %i.gf = load i32, ptr %i.an, align 4, !tbaa !89
  %i.gg = load i32, ptr %i.ap, align 8, !tbaa !90
  %i.gh = mul nsw i32 %i.gg, %i.gf                ; 3 uses
  %i.gi = icmp sgt i32 %i.gh, 0
  br i1 %i.gi, label %.lr.ph139.i, label %._crit_edge140.i

.lr.ph139.i:                                      ; preds = %._crit_edge131.i
  %i.gj = icmp sgt i32 %.fr164.i, 0
  %wide.trip.count185.i = zext nneg i32 %i.gh to i64 ; 2 uses
  br i1 %i.gj, label %.lr.ph135.us.preheader.i, label %.lr.ph161.i

.lr.ph135.us.preheader.i:                         ; preds = %.lr.ph139.i
  %wide.trip.count180.i = zext nneg i32 %spec.select.i to i64 ; 3 uses
  %min.iters.check = icmp slt i32 %.fr164.i, 4
  %n.vec = and i64 %wide.trip.count180.i, 252     ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count180.i
  br label %.lr.ph135.us.i

.lr.ph135.us.i:                                   ; preds = %..loopexit_crit_edge.us.i, %.lr.ph135.us.preheader.i
  %indvars.iv182.i = phi i64 [ 0, %.lr.ph135.us.preheader.i ], [ %indvars.iv.next183.i, %..loopexit_crit_edge.us.i ] ; 2 uses
  %.0101136.us.i = phi i32 [ 0, %.lr.ph135.us.preheader.i ], [ %i.gn, %..loopexit_crit_edge.us.i ]
  %i.gk = getelementptr inbounds nuw [496 x i8], ptr %i.at, i64 %indvars.iv182.i ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 492
  %i.gm = load i32, ptr %i.gl, align 4, !tbaa !136 ; 4 uses
  %i.gn = add nsw i32 %i.gm, %.0101136.us.i       ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph135.us.i
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.gm, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body.interim, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body.interim ] ; 3 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index
  %wide.load = load <4 x i32>, ptr %i.go, align 16, !tbaa !29
  %i.gp = icmp sgt <4 x i32> %broadcast.splat, %wide.load
  %i.gq = freeze <4 x i1> %i.gp                   ; 2 uses
  %i.gr = bitcast <4 x i1> %i.gq to i4
  %.not176 = icmp eq i4 %i.gr, 0
  br i1 %.not176, label %vector.body.interim, label %vector.early.exit

vector.body.interim:                              ; preds = %vector.body
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gs = icmp eq i64 %index.next, %n.vec
  br i1 %i.gs, label %middle.block, label %vector.body, !llvm.loop !137

middle.block:                                     ; preds = %vector.body.interim
  br i1 %cmp.n, label %..loopexit_crit_edge.us.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph135.us.i, %middle.block
  %indvars.iv177.i.ph = phi i64 [ 0, %.lr.ph135.us.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

vector.early.exit:                                ; preds = %vector.body
  %i.gt = tail call i64 @llvm.experimental.cttz.elts.i64.v4i1(<4 x i1> %i.gq, i1 false)
  %i.gu = add i64 %index, %i.gt
  br label %.loopexit

bb.d:                                             ; preds = %scalar.ph
  %indvars.iv.next178.i = add nuw nsw i64 %indvars.iv177.i, 1 ; 2 uses
  %exitcond181.not.i = icmp eq i64 %indvars.iv.next178.i, %wide.trip.count180.i
  br i1 %exitcond181.not.i, label %..loopexit_crit_edge.us.i, label %scalar.ph, !llvm.loop !140

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.d
  %indvars.iv177.i = phi i64 [ %indvars.iv.next178.i, %bb.d ], [ %indvars.iv177.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.gv = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv177.i
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !29
  %i.gx = icmp sgt i32 %i.gm, %i.gw
  br i1 %i.gx, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %scalar.ph, %vector.early.exit
  %indvars.iv177.i.lcssa = phi i64 [ %i.gu, %vector.early.exit ], [ %indvars.iv177.i, %scalar.ph ] ; 2 uses
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv177.i.lcssa
  store i32 %i.gm, ptr %i.gy, align 4, !tbaa !29
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv177.i.lcssa
  store ptr %i.gk, ptr %i.gz, align 8, !tbaa !141
  br label %..loopexit_crit_edge.us.i

..loopexit_crit_edge.us.i:                        ; preds = %bb.d, %middle.block, %.loopexit
  %indvars.iv.next183.i = add nuw nsw i64 %indvars.iv182.i, 1 ; 2 uses
  %exitcond186.not.i = icmp eq i64 %indvars.iv.next183.i, %wide.trip.count185.i
  br i1 %exitcond186.not.i, label %._crit_edge140.i, label %.lr.ph135.us.i, !llvm.loop !142

._crit_edge140.i:                                 ; preds = %..loopexit_crit_edge.us.i, %._crit_edge131.i
  %.0101.lcssa.i = phi i32 [ 0, %._crit_edge131.i ], [ %i.gn, %..loopexit_crit_edge.us.i ]
  %i.ha = icmp sgt i32 %.fr164.i, 0
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 2924
  br i1 %i.ha, label %.split.us.preheader.i, label %.split157.us.i

.split.us.preheader.i:                            ; preds = %._crit_edge140.i
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 2940
  %i.he = load i32, ptr %i.hd, align 4, !tbaa !88
  %i.hf = sub nsw i32 %i.he, %.0101.lcssa.i
  %wide.trip.count190.i = zext nneg i32 %spec.select.i to i64
  br label %.split.us.i

.split.us.i:                                      ; preds = %._crit_edge147.us.i, %.split.us.preheader.i
  %.1102.us.i = phi i32 [ %.2103.lcssa.us.i, %._crit_edge147.us.i ], [ %i.hf, %.split.us.preheader.i ] ; 2 uses
  %i.hg = icmp sgt i32 %.1102.us.i, 0
  br i1 %i.hg, label %.preheader.us.i, label %.split157.us.loopexit.i

.preheader.us.i:                                  ; preds = %.split.us.i, %bb.h
  %indvars.iv187.i = phi i64 [ %indvars.iv.next188.i, %bb.h ], [ 0, %.split.us.i ] ; 2 uses
  %.096144.us.i = phi i32 [ %.298.ph.us.i, %bb.h ], [ 0, %.split.us.i ] ; 4 uses
  %.2103143.us.i = phi i32 [ %.4.ph.us.i, %bb.h ], [ %.1102.us.i, %.split.us.i ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %indvars.iv187.i
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !141 ; 4 uses
  %.not.us.i = icmp eq ptr %i.hi, null
  br i1 %.not.us.i, label %._crit_edge147.us.i, label %bb.e

bb.e:                                             ; preds = %.preheader.us.i
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 480 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8, !tbaa !143 ; 2 uses
  %.not115.us.i = icmp eq i32 %i.hk, 0
  br i1 %.not115.us.i, label %._crit_edge147.us.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 492 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !136
  %i.hn = tail call i32 @llvm.smax.i32(i32 %i.hk, i32 1)
  %spec.select117.us.i = add nsw i32 %i.hn, -1    ; 2 uses
  %i.ho = tail call fastcc i32 @count_hq_slice(ptr noundef nonnull %i.hi, i32 noundef %spec.select117.us.i)
  %i.hp = ashr i32 %i.ho, 3
  %i.hq = load i32, ptr %i.hb, align 8, !tbaa !93 ; 2 uses
  %i.hr = add i32 %i.hq, -1
  %i.hs = add i32 %i.hr, %i.hp
  %i.ht = sub i32 0, %i.hq
  %i.hu = and i32 %i.hs, %i.ht
  %i.hv = load i32, ptr %i.hc, align 4, !tbaa !87
  %i.hw = add i32 %i.hv, 4
  %i.hx = add i32 %i.hw, %i.hu                    ; 2 uses
  %.neg.us.i = sub i32 %i.hm, %i.hx
  %i.hy = add i32 %.neg.us.i, %.2103143.us.i      ; 2 uses
  %i.hz = icmp sgt i32 %i.hy, 0
  br i1 %i.hz, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %spec.select117.us.i, ptr %i.hj, align 8, !tbaa !143
  store i32 %i.hx, ptr %i.hl, align 4, !tbaa !136
  %i.ia = add nsw i32 %.096144.us.i, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.4.ph.us.i = phi i32 [ %.2103143.us.i, %bb.f ], [ %i.hy, %bb.g ] ; 2 uses
  %.298.ph.us.i = phi i32 [ %.096144.us.i, %bb.f ], [ %i.ia, %bb.g ] ; 2 uses
  %indvars.iv.next188.i = add nuw nsw i64 %indvars.iv187.i, 1 ; 2 uses
  %exitcond191.not.i = icmp eq i64 %indvars.iv.next188.i, %wide.trip.count190.i
  br i1 %exitcond191.not.i, label %._crit_edge147.us.i, label %.preheader.us.i, !llvm.loop !144

._crit_edge147.us.i:                              ; preds = %bb.h, %bb.e, %.preheader.us.i
  %.2103.lcssa.us.i = phi i32 [ %.2103143.us.i, %.preheader.us.i ], [ %.2103143.us.i, %bb.e ], [ %.4.ph.us.i, %bb.h ]
  %.096.lcssa.us.i = phi i32 [ %.096144.us.i, %.preheader.us.i ], [ %.096144.us.i, %bb.e ], [ %.298.ph.us.i, %bb.h ]
  %.not116.us.i = icmp eq i32 %.096.lcssa.us.i, 0
  br i1 %.not116.us.i, label %.split157.us.loopexit.i, label %.split.us.i

.split157.us.loopexit.i:                          ; preds = %._crit_edge147.us.i, %.split.us.i
  %.pre198.i = load i32, ptr %i.an, align 4, !tbaa !89
end_hunk_1
begin_hunk_2_@encode_frame:bb.a
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.zb)
  %i.zc = load i32, ptr %i.an, align 4, !tbaa !89
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.zc)
  %i.zd = load i32, ptr %i.ap, align 8, !tbaa !90
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.zd)
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 2924
  %i.zf = load i32, ptr %i.ze, align 4, !tbaa !87
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.zf)
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 2928
  %i.zh = load i32, ptr %i.zg, align 8, !tbaa !93
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.zh)
  %i.zi = load i32, ptr %i.ba, align 8, !tbaa !120 ; 4 uses
  %i.zj = load i32, ptr %i.jz, align 8, !tbaa !97 ; 2 uses
  %i.zk = load i32, ptr %i.ka, align 4, !tbaa !96 ; 5 uses
  %i.zl = icmp sgt i32 %i.zk, 1
  br i1 %i.zl, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %align_put_bits.exit7.i
  %i.zm = shl i32 %i.zj, 1
  %i.zn = or i32 %i.zm, %i.zi
  %i.zo = add nsw i32 %i.zk, -1
  br label %put_bits.exit.i.i.i.i

bb.ct:                                            ; preds = %align_put_bits.exit7.i
  %i.zp = load ptr, ptr %i.xs, align 8, !tbaa !99
  %i.zq = load ptr, ptr %i.xu, align 8, !tbaa !98 ; 2 uses
  %i.zr = ptrtoint ptr %i.zp to i64
  %i.zs = ptrtoint ptr %i.zq to i64
  %i.zt = sub i64 %i.zr, %i.zs
  %i.zu = icmp ugt i64 %i.zt, 3
  br i1 %i.zu, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.zv = shl i32 %i.zj, %i.zk
  %i.zw = sub nsw i32 1, %i.zk
  %i.zx = lshr i32 %i.zi, %i.zw
  %i.zy = or i32 %i.zx, %i.zv
  %i.zz = tail call i32 @llvm.bswap.i32(i32 %i.zy)
  store i32 %i.zz, ptr %i.zq, align 1, !tbaa !59
  %i.aaa = load ptr, ptr %i.xu, align 8, !tbaa !98
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 4
  store ptr %i.aab, ptr %i.xu, align 8, !tbaa !98
  br label %bb.cw

bb.cv:                                            ; preds = %bb.ct
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.45) #14
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.aac = add nsw i32 %i.zk, 31
  %.pre.i.i.i.i = load i32, ptr %i.ba, align 8, !tbaa !120
  br label %put_bits.exit.i.i.i.i

put_bits.exit.i.i.i.i:                            ; preds = %bb.cw, %bb.cs
  %i.aad = phi i32 [ %i.zi, %bb.cs ], [ %.pre.i.i.i.i, %bb.cw ]
  %.026.i.i.i.i.i.i = phi i32 [ %i.zn, %bb.cs ], [ %i.zi, %bb.cw ] ; 2 uses
  %.0.i.i.i.i.i.i = phi i32 [ %i.zo, %bb.cs ], [ %i.aac, %bb.cw ] ; 2 uses
  store i32 %.026.i.i.i.i.i.i, ptr %i.jz, align 8, !tbaa !97
  store i32 %.0.i.i.i.i.i.i, ptr %i.ka, align 4, !tbaa !96
  %.not.i.i.i.i = icmp eq i32 %i.aad, 0
  br i1 %.not.i.i.i.i, label %encode_transform_params.exit.i.i, label %bb.cx

bb.cx:                                            ; preds = %put_bits.exit.i.i.i.i
  %i.aae = getelementptr inbounds nuw i8, ptr %0, i64 1964 ; 2 uses
  %i.aaf = load i8, ptr %i.aae, align 4, !tbaa !59
  %i.aag = zext i8 %i.aaf to i32
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.aag)
  %i.aah = load i32, ptr %i.au, align 4, !tbaa !70
  %i.aai = icmp sgt i32 %i.aah, 0
  br i1 %i.aai, label %.lr.ph.i.i.i.i, label %encode_transform_params.exitthread-pre-split.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.cx, %.lr.ph.i.i.i.i
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %bb.cx ] ; 2 uses
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.aae, i64 %indvars.iv.i.i.i.i ; 3 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 1
  %i.aal = load i8, ptr %i.aak, align 1, !tbaa !59
  %i.aam = zext i8 %i.aal to i32
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.aam)
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aaj, i64 2
  %i.aao = load i8, ptr %i.aan, align 2, !tbaa !59
  %i.aap = zext i8 %i.aao to i32
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.aap)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aaj, i64 3
  %i.aar = load i8, ptr %i.aaq, align 1, !tbaa !59
  %i.aas = zext i8 %i.aar to i32
  tail call fastcc void @put_vc2_ue_uint(ptr noundef nonnull %i.jz, i32 noundef %i.aas)
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.aat = load i32, ptr %i.au, align 4, !tbaa !70
  %i.aau = sext i32 %i.aat to i64
  %i.aav = icmp slt i64 %indvars.iv.next.i.i.i.i, %i.aau
  br i1 %i.aav, label %.lr.ph.i.i.i.i, label %encode_transform_params.exitthread-pre-split.i.i, !llvm.loop !158

encode_transform_params.exitthread-pre-split.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.cx
  %.pr.i.i53 = load i32, ptr %i.ka, align 4, !tbaa !96
  %.pre.i54 = load i32, ptr %i.jz, align 8, !tbaa !97
  br label %encode_transform_params.exit.i.i

encode_transform_params.exit.i.i:                 ; preds = %encode_transform_params.exitthread-pre-split.i.i, %put_bits.exit.i.i.i.i
  %i.aaw = phi i32 [ %.pre.i54, %encode_transform_params.exitthread-pre-split.i.i ], [ %.026.i.i.i.i.i.i, %put_bits.exit.i.i.i.i ] ; 2 uses
  %i.aax = phi i32 [ %.pr.i.i53, %encode_transform_params.exitthread-pre-split.i.i ], [ %.0.i.i.i.i.i.i, %put_bits.exit.i.i.i.i ] ; 5 uses
  %i.aay = icmp sgt i32 %i.aax, 7
  br i1 %i.aay, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %encode_transform_params.exit.i.i
  %i.aaz = and i32 %i.aax, 7
  %i.aba = shl i32 %i.aaw, %i.aaz
  %i.abb = and i32 %i.aax, 2147483640
  br label %encode_picture_start.exit

bb.cz:                                            ; preds = %encode_transform_params.exit.i.i
  %i.abc = load ptr, ptr %i.xs, align 8, !tbaa !99
  %i.abd = load ptr, ptr %i.xu, align 8, !tbaa !98 ; 2 uses
  %i.abe = ptrtoint ptr %i.abc to i64
  %i.abf = ptrtoint ptr %i.abd to i64
  %i.abg = sub i64 %i.abe, %i.abf
  %i.abh = icmp ugt i64 %i.abg, 3
  br i1 %i.abh, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  %i.abi = shl i32 %i.aaw, %i.aax
  %i.abj = tail call i32 @llvm.bswap.i32(i32 %i.abi)
  store i32 %i.abj, ptr %i.abd, align 1, !tbaa !59
  %i.abk = load ptr, ptr %i.xu, align 8, !tbaa !98
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abk, i64 4
  store ptr %i.abl, ptr %i.xu, align 8, !tbaa !98
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 16, ptr noundef nonnull @.str.45) #14
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da
  %reass.sub.i.i.i8.i = and i32 %i.aax, -8
  %i.abm = add i32 %reass.sub.i.i.i8.i, 32
  br label %encode_picture_start.exit

encode_picture_start.exit:                        ; preds = %bb.cy, %bb.dc
  %.026.i.i.i.i10.i = phi i32 [ %i.aba, %bb.cy ], [ 0, %bb.dc ] ; 2 uses
  %.0.i.i.i.i11.i = phi i32 [ %i.abb, %bb.cy ], [ %i.abm, %bb.dc ] ; 3 uses
  store i32 %.026.i.i.i.i10.i, ptr %i.jz, align 8, !tbaa !97
  store i32 %.0.i.i.i.i11.i, ptr %i.ka, align 4, !tbaa !96
  %i.abn = load ptr, ptr %i.as, align 8, !tbaa !82 ; 2 uses
  %i.abo = icmp slt i32 %.0.i.i.i.i11.i, 32
  br i1 %i.abo, label %.lr.ph.i.i60, label %flush_put_bits.exit.i

.lr.ph.i.i60:                                     ; preds = %encode_picture_start.exit
  %i.abp = shl i32 %.026.i.i.i.i10.i, %.0.i.i.i.i11.i ; 2 uses
  store i32 %i.abp, ptr %i.jz, align 8, !tbaa !97
  br label %bb.dd

bb.dd:                                            ; preds = %bb.df, %.lr.ph.i.i60
  %i.abq = phi i32 [ %i.aby, %bb.df ], [ %i.abp, %.lr.ph.i.i60 ]
  %i.abr = load ptr, ptr %i.xu, align 8, !tbaa !98 ; 3 uses
  %i.abs = load ptr, ptr %i.xs, align 8, !tbaa !99
  %i.abt = icmp ult ptr %i.abr, %i.abs
  br i1 %i.abt, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef 160) #14
  tail call void @abort() #16
  unreachable

bb.df:                                            ; preds = %bb.dd
  %i.abu = lshr i32 %i.abq, 24
  %i.abv = trunc nuw i32 %i.abu to i8
  %i.abw = getelementptr inbounds nuw i8, ptr %i.abr, i64 1
  store ptr %i.abw, ptr %i.xu, align 8, !tbaa !98
  store i8 %i.abv, ptr %i.abr, align 1, !tbaa !59
  %i.abx = load i32, ptr %i.jz, align 8, !tbaa !97
  %i.aby = shl i32 %i.abx, 8                      ; 2 uses
  store i32 %i.aby, ptr %i.jz, align 8, !tbaa !97
  %i.abz = load i32, ptr %i.ka, align 4, !tbaa !96 ; 2 uses
  %i.aca = add nsw i32 %i.abz, 8
  store i32 %i.aca, ptr %i.ka, align 4, !tbaa !96
  %i.acb = icmp slt i32 %i.abz, 24
  br i1 %i.acb, label %bb.dd, label %flush_put_bits.exit.i, !llvm.loop !100

flush_put_bits.exit.i:                            ; preds = %bb.df, %encode_picture_start.exit
  store i32 32, ptr %i.ka, align 4, !tbaa !96
  store i32 0, ptr %i.jz, align 8, !tbaa !97
  %.val.i = load ptr, ptr %i.xu, align 8, !tbaa !98
  %i.acc = load i32, ptr %i.ap, align 8, !tbaa !90 ; 3 uses
  %i.acd = icmp sgt i32 %i.acc, 0
  %i.ace = load i32, ptr %i.an, align 4, !tbaa !89 ; 3 uses
  %i.acf = icmp sgt i32 %i.ace, 0
  %or.cond.i = select i1 %i.acd, i1 %i.acf, i1 false
  br i1 %or.cond.i, label %.preheader.i, label %._crit_edge32.i

.preheader.i:                                     ; preds = %flush_put_bits.exit.i, %._crit_edge.i56
  %i.acg = phi i32 [ %i.acx, %._crit_edge.i56 ], [ %i.acc, %flush_put_bits.exit.i ]
  %i.ach = phi i32 [ %i.acy, %._crit_edge.i56 ], [ %i.ace, %flush_put_bits.exit.i ] ; 3 uses
  %.031.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i56 ], [ 0, %flush_put_bits.exit.i ] ; 2 uses
  %.02430.i = phi i32 [ %i.acz, %._crit_edge.i56 ], [ 0, %flush_put_bits.exit.i ] ; 2 uses
  %i.aci = icmp sgt i32 %i.ach, 0
  br i1 %i.aci, label %.lr.ph.i57, label %._crit_edge.i56

.lr.ph.i57:                                       ; preds = %.preheader.i, %.lr.ph.i57
  %i.acj = phi i32 [ %i.acv, %.lr.ph.i57 ], [ %i.ach, %.preheader.i ]
  %.129.i = phi i32 [ %i.act, %.lr.ph.i57 ], [ %.031.i, %.preheader.i ] ; 2 uses
  %.02528.i = phi i32 [ %i.acu, %.lr.ph.i57 ], [ 0, %.preheader.i ] ; 2 uses
  %i.ack = mul nsw i32 %i.acj, %.02430.i
  %i.acl = add nsw i32 %.02528.i, %i.ack
  %i.acm = sext i32 %i.acl to i64
  %i.acn = getelementptr inbounds [496 x i8], ptr %i.abn, i64 %i.acm ; 2 uses
  %i.aco = sext i32 %.129.i to i64
  %i.acp = getelementptr inbounds i8, ptr %.val.i, i64 %i.aco
  %i.acq = getelementptr inbounds nuw i8, ptr %i.acn, i64 8
  store ptr %i.acp, ptr %i.acq, align 8, !tbaa !59
  %i.acr = getelementptr inbounds nuw i8, ptr %i.acn, i64 492
  %i.acs = load i32, ptr %i.acr, align 4, !tbaa !136
  %i.act = add nsw i32 %i.acs, %.129.i            ; 2 uses
  %i.acu = add nuw nsw i32 %.02528.i, 1           ; 2 uses
  %i.acv = load i32, ptr %i.an, align 4, !tbaa !89 ; 3 uses
  %i.acw = icmp slt i32 %i.acu, %i.acv
  br i1 %i.acw, label %.lr.ph.i57, label %._crit_edge.loopexit.i58, !llvm.loop !159

._crit_edge.loopexit.i58:                         ; preds = %.lr.ph.i57
  %.pre.i59 = load i32, ptr %i.ap, align 8, !tbaa !90
  br label %._crit_edge.i56

._crit_edge.i56:                                  ; preds = %._crit_edge.loopexit.i58, %.preheader.i
  %i.acx = phi i32 [ %i.acg, %.preheader.i ], [ %.pre.i59, %._crit_edge.loopexit.i58 ] ; 3 uses
  %i.acy = phi i32 [ %i.ach, %.preheader.i ], [ %i.acv, %._crit_edge.loopexit.i58 ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.031.i, %.preheader.i ], [ %i.act, %._crit_edge.loopexit.i58 ] ; 2 uses
  %i.acz = add nuw nsw i32 %.02430.i, 1           ; 2 uses
  %i.ada = icmp slt i32 %i.acz, %i.acx
  br i1 %i.ada, label %.preheader.i, label %._crit_edge32.loopexit.i, !llvm.loop !160

._crit_edge32.loopexit.i:                         ; preds = %._crit_edge.i56
  %i.adb = sext i32 %.1.lcssa.i to i64
  br label %._crit_edge32.i

._crit_edge32.i:                                  ; preds = %._crit_edge32.loopexit.i, %flush_put_bits.exit.i
  %i.adc = phi i32 [ %i.ace, %flush_put_bits.exit.i ], [ %i.acy, %._crit_edge32.loopexit.i ]
  %.0.lcssa.i = phi i64 [ 0, %flush_put_bits.exit.i ], [ %i.adb, %._crit_edge32.loopexit.i ] ; 2 uses
  %.lcssa.i = phi i32 [ %i.acc, %flush_put_bits.exit.i ], [ %i.acx, %._crit_edge32.loopexit.i ]
  %i.add = load ptr, ptr %i.ai, align 8, !tbaa !86 ; 2 uses
  %i.ade = getelementptr inbounds nuw i8, ptr %i.add, i64 672
  %i.adf = load ptr, ptr %i.ade, align 8, !tbaa !118
  %i.adg = mul nsw i32 %.lcssa.i, %i.adc
  %i.adh = tail call i32 %i.adf(ptr noundef %i.add, ptr noundef nonnull @encode_hq_slice, ptr noundef %i.abn, ptr noundef null, i32 noundef %i.adg, i32 noundef 496) #14, !inline_history !161 ; 0 uses
  %i.adi = load ptr, ptr %i.xs, align 8, !tbaa !99
  %i.adj = load ptr, ptr %i.xu, align 8, !tbaa !98 ; 2 uses
  %i.adk = ptrtoint ptr %i.adi to i64
  %i.adl = ptrtoint ptr %i.adj to i64
  %i.adm = sub i64 %i.adk, %i.adl
  %.not.i.i55 = icmp slt i64 %i.adm, %.0.lcssa.i
  br i1 %.not.i.i55, label %bb.dg, label %encode_slices.exit

bb.dg:                                            ; preds = %._crit_edge32.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef 415) #14
  tail call void @abort() #16
  unreachable

encode_slices.exit:                               ; preds = %._crit_edge32.i
  %i.adn = getelementptr inbounds i8, ptr %i.adj, i64 %.0.lcssa.i
  store ptr %i.adn, ptr %i.xu, align 8, !tbaa !98
  tail call fastcc void @encode_parse_info(ptr noundef nonnull %0, i32 noundef 16)
  br label %bb.dh

bb.dh:                                            ; preds = %bb.j, %encode_slices.exit
  %.045 = phi i32 [ 0, %encode_slices.exit ], [ %i.jl, %bb.j ]
  ret i32 %.045
}

declare void @av_shrink_packet(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal noundef i32 @dwt_plane(ptr nofree readnone captures(none) %0, ptr noundef %1) #6 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !108    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !116  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !tbaa !117
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !113
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !114  ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 480 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !74   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 2968
  %i.n = load i32, ptr %i.m, align 8, !tbaa !121
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 2988
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = add nsw i32 %i.p, 1                      ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1940
  %i.s = load i32, ptr %i.r, align 4, !tbaa !162  ; 2 uses
  %i.t = add nsw i32 %i.s, -1
  %i.u = zext nneg i32 %i.t to i64
  %i.v = ashr i64 %i.e, %i.u                      ; 4 uses
  switch i32 %i.g, label %bb.d [
    i32 1, label %bb.b
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.w = shl i64 %i.v, 1
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = shl i64 %i.v, 1
  %sext = shl i64 %i.v, 32
  %i.y = ashr exact i64 %sext, 32
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.081 = phi i64 [ 0, %bb.b ], [ %i.y, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %.080 = phi i64 [ %i.w, %bb.b ], [ %i.x, %bb.c ], [ %i.v, %bb.a ] ; 2 uses
  %i.z = icmp eq i32 %i.s, 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 492 ; 3 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69 ; 3 uses
  %i.ac = mul nsw i32 %i.ab, %i.q
  %i.ad = icmp sgt i32 %i.ac, 0                   ; 2 uses
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.ad, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.ae = getelementptr inbounds i8, ptr %i.c, i64 %.081
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 488 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 504 ; 2 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge102
  %.079107 = phi ptr [ %i.ae, %.preheader.lr.ph ], [ %i.az, %._crit_edge102 ] ; 2 uses
  %.083106 = phi i32 [ 0, %.preheader.lr.ph ], [ %i.ba, %._crit_edge102 ]
  %.086105 = phi ptr [ %i.l, %.preheader.lr.ph ], [ %i.ay, %._crit_edge102 ] ; 3 uses
  %i.ai = load i32, ptr %i.af, align 8, !tbaa !67 ; 2 uses
  %i.aj = icmp sgt i32 %i.ai, 0
  br i1 %i.aj, label %.lr.ph101, label %.preheader.._crit_edge102_crit_edge

.preheader.._crit_edge102_crit_edge:              ; preds = %.preheader
  %.pre = sext i32 %i.ai to i64
  br label %._crit_edge102

.lr.ph101:                                        ; preds = %.preheader, %.lr.ph101
  %indvars.iv121 = phi i64 [ %indvars.iv.next122, %.lr.ph101 ], [ 0, %.preheader ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.079107, i64 %indvars.iv121
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !59
  %i.am = zext i8 %i.al to i32
  %i.an = load i32, ptr %i.ag, align 8, !tbaa !163
  %i.ao = sub nsw i32 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %.086105, i64 %indvars.iv121
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !29
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 3 uses
  %i.aq = load i32, ptr %i.af, align 8, !tbaa !67
  %i.ar = sext i32 %i.aq to i64                   ; 2 uses
  %i.as = icmp slt i64 %indvars.iv.next122, %i.ar
  br i1 %i.as, label %.lr.ph101, label %._crit_edge102, !llvm.loop !164

._crit_edge102:                                   ; preds = %.lr.ph101, %.preheader.._crit_edge102_crit_edge
  %.pre-phi = phi i64 [ %.pre, %.preheader.._crit_edge102_crit_edge ], [ %i.ar, %.lr.ph101 ]
  %.084.lcssa = phi i64 [ 0, %.preheader.._crit_edge102_crit_edge ], [ %indvars.iv.next122, %.lr.ph101 ]
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %.086105, i64 %.084.lcssa
  %i.au = load i64, ptr %i.ah, align 8, !tbaa !73
  %i.av = sub nsw i64 %i.au, %.pre-phi
  %i.aw = shl i64 %i.av, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.at, i8 0, i64 %i.aw, i1 false)
  %i.ax = load i64, ptr %i.ah, align 8, !tbaa !73
  %i.ay = getelementptr inbounds [4 x i8], ptr %.086105, i64 %i.ax ; 2 uses
  %i.az = getelementptr inbounds i8, ptr %.079107, i64 %.080
  %i.ba = add nsw i32 %.083106, %i.q              ; 2 uses
  %i.bb = load i32, ptr %i.aa, align 4, !tbaa !69 ; 2 uses
  %i.bc = mul nsw i32 %i.bb, %i.q
  %i.bd = icmp slt i32 %i.ba, %i.bc
  br i1 %i.bd, label %.preheader, label %.loopexit, !llvm.loop !165

bb.f:                                             ; preds = %bb.d
  br i1 %i.ad, label %.preheader91.lr.ph, label %.loopexit

.preheader91.lr.ph:                               ; preds = %bb.f
  %i.be = getelementptr inbounds [2 x i8], ptr %i.c, i64 %.081
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 488 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 1936
  %i.bh = getelementptr inbounds nuw i8, ptr %i.i, i64 504 ; 2 uses
  br label %.preheader91

.preheader91:                                     ; preds = %.preheader91.lr.ph, %._crit_edge
  %.098 = phi ptr [ %i.be, %.preheader91.lr.ph ], [ %i.bz, %._crit_edge ] ; 2 uses
  %.197 = phi i32 [ 0, %.preheader91.lr.ph ], [ %i.ca, %._crit_edge ]
  %.18796 = phi ptr [ %i.l, %.preheader91.lr.ph ], [ %i.by, %._crit_edge ] ; 3 uses
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !67 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph, label %.preheader91.._crit_edge_crit_edge

.preheader91.._crit_edge_crit_edge:               ; preds = %.preheader91
  %.pre127 = sext i32 %i.bi to i64
  br label %._crit_edge

.lr.ph:                                           ; preds = %.preheader91, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %.preheader91 ] ; 3 uses
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %.098, i64 %indvars.iv
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !104
  %i.bm = zext i16 %i.bl to i32
  %i.bn = load i32, ptr %i.bg, align 8, !tbaa !163
  %i.bo = sub nsw i32 %i.bm, %i.bn
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.18796, i64 %indvars.iv
end_hunk_2
