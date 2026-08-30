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
  %.pre = load i64, ptr %i.cx, align 8, !tbaa !73 ; 2 uses
  %1 = trunc i64 %.pre to i32                     ; 2 uses
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
  %2 = select i1 %i.do, i32 %i.di, i32 0
  %i.dp = trunc i64 %indvars.iv223 to i1
  %3 = select i1 %i.dp, i32 %i.dh, i32 0
  %4 = mul i32 %2, %1
  %5 = add i32 %4, %3
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [4 x i8], ptr %i.db, i64 %6
  store ptr %7, ptr %i.dk, align 8, !tbaa !80
  %indvars.iv.next224 = add nuw nsw i64 %indvars.iv223, 1 ; 2 uses
  %exitcond226.not = icmp eq i64 %indvars.iv.next224, 4
  br i1 %exitcond226.not, label %.loopexit, label %bb.ag, !llvm.loop !81

._crit_edge:                                      ; preds = %.loopexit, %bb.ae
  %i.dq = getelementptr inbounds nuw [112 x i8], ptr %i.b, i64 %indvars.iv230
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1640
  %i.ds = load i32, ptr %i.ct, align 4, !tbaa !72
  %i.dt = load i32, ptr %i.an, align 8, !tbaa !56
  %i.du = load i32, ptr %i.aq, align 4, !tbaa !57
  %i.dv = tail call i32 @ff_vc2enc_init_transforms(ptr noundef nonnull %i.dr, i32 noundef %1, i32 noundef %i.ds, i32 noundef %i.dt, i32 noundef %i.du) #14
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
