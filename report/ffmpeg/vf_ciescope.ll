Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/vf_ciescope?download=true
inline.NumInlined: 41
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@filter_frame:bb.a
bb.c:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.w = load i64, ptr %i.v, align 8, !tbaa !69
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 136
  store i64 %i.w, ptr %i.x, align 8, !tbaa !69
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.z = load i64, ptr %i.y, align 8, !tbaa !70
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 408
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !70
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 40 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !71
  %.not117 = icmp eq i32 %i.ac, 0
  br i1 %.not117, label %bb.d, label %bb.ak

bb.d:                                             ; preds = %bb.c
  %.val = load ptr, ptr %i.j, align 8, !tbaa !60
  %.val121 = load ptr, ptr %i.h, align 8, !tbaa !19 ; 11 uses
  %.val.val = load ptr, ptr %.val, align 8, !tbaa !62 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val121, i64 16
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !34 ; 5 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.val, i64 40
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw i8, ptr %.val.val, i64 44
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !33
  %i.aj = tail call ptr @ff_get_video_buffer(ptr noundef %.val.val, i32 noundef %i.ag, i32 noundef %i.ai) #10 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.val121, i64 262272 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8, !tbaa !72
  %i.al = icmp eq ptr %i.aj, null
  br i1 %i.al, label %draw_background.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !73 ; 8 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !35
  %i.ap = sdiv i32 %i.ao, 2                       ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.val121, i64 28 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !74 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.as = add nsw i32 %i.ae, -1                   ; 2 uses
  %i.at = sitofp nsz i32 %i.as to float           ; 14 uses
  %switch.i.i = icmp ult i32 %i.ar, 3
  store i64 -1, ptr %i.a, align 8
  br i1 %switch.i.i, label %.split.preheader.i.i, label %bb.l

.split.preheader.i.i:                             ; preds = %bb.e
  switch i32 %i.ar, label %bb.h [
    i32 2, label %bb.g
    i32 1, label %bb.f
  ]

bb.f:                                             ; preds = %.split.preheader.i.i
  %i.au = fmul nnan nsz float %i.at, f0x3E848E6C
  %i.av = tail call nsz float @llvm.fmuladd.f32(float %i.at, float f0xBC3FDDEF, float %i.at)
  br label %.split.peel.next.i.i

bb.g:                                             ; preds = %.split.preheader.i.i
  %i.aw = fmul nnan nsz float %i.at, f0x3E848E6C
  %i.ax = tail call nsz float @llvm.fmuladd.f32(float %i.at, float f0xBC8FE672, float %i.at)
  br label %.split.peel.next.i.i

bb.h:                                             ; preds = %.split.preheader.i.i
  %i.ay = fmul nnan nsz float %i.at, 1.755600e-01
  %i.az = tail call nsz float @llvm.fmuladd.f32(float %i.at, float -5.294000e-03, float %i.at)
  br label %.split.peel.next.i.i

.split.peel.next.i.i:                             ; preds = %bb.h, %bb.g, %bb.f
  %.034.in.peel.i.i = phi float [ %i.aw, %bb.g ], [ %i.au, %bb.f ], [ %i.ay, %bb.h ]
  %.sink38.i.peel.i.i = phi float [ %i.ax, %bb.g ], [ %i.av, %bb.f ], [ %i.az, %bb.h ]
  %.034.peel.i.i = fptosi float %.034.in.peel.i.i to i32 ; 2 uses
  %i.ba = fptosi float %.sink38.i.peel.i.i to i32 ; 2 uses
  br label %.split.i.i

.split.i.i:                                       ; preds = %bb.m, %.split.peel.next.i.i
  %indvars.iv.i.i = phi i64 [ 361, %.split.peel.next.i.i ], [ %indvars.iv.next.i.i, %bb.m ] ; 2 uses
  %.02641.i.i = phi i32 [ %i.ba, %.split.peel.next.i.i ], [ %i.cn, %bb.m ]
  %.02740.i.i = phi i32 [ %.034.peel.i.i, %.split.peel.next.i.i ], [ %.034.i.i, %bb.m ]
  %i.bb = getelementptr [12 x i8], ptr @spectral_chromaticity, i64 %indvars.iv.i.i ; 2 uses
  %i.bc = getelementptr i8, ptr %i.bb, i64 -4320
  %i.bd = load <2 x float>, ptr %i.bc, align 4, !tbaa !36 ; 3 uses
  %i.be = getelementptr i8, ptr %i.bb, i64 -4312
  %i.bf = load float, ptr %i.be, align 4, !tbaa !36
  %shift = shufflevector <2 x float> %i.bd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd nsz <2 x float> %i.bd, %shift
  %i.bg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bh = fadd nsz float %i.bg, %i.bf
  %i.bi = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bj = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv nsz <2 x float> %i.bd, %i.bj       ; 8 uses
  switch i32 %i.ar, label %bb.k [
    i32 2, label %bb.i
    i32 1, label %bb.j
  ]

bb.i:                                             ; preds = %.split.i.i
  %i.bl = extractelement <2 x float> %i.bk, i64 1
  %i.bm = fmul nsz float %i.bl, 1.200000e+01
  %i.bn = extractelement <2 x float> %i.bk, i64 0
  %i.bo = tail call nsz float @llvm.fmuladd.f32(float %i.bn, float -2.000000e+00, float %i.bm)
  %i.bp = fadd nsz float %i.bo, 3.000000e+00
  %i.bq = fdiv nsz float 1.000000e+00, %i.bp      ; 2 uses
  %i.br = fmul nsz <2 x float> %i.bk, <float 4.000000e+00, float 9.000000e+00>
  %i.bs = fneg nsz float %i.bq
  %i.bt = insertelement <2 x float> poison, float %i.bq, i64 0
  %i.bu = insertelement <2 x float> %i.bt, float %i.bs, i64 1
  %i.bv = fmul nsz <2 x float> %i.br, %i.bu
  br label %bb.m

bb.j:                                             ; preds = %.split.i.i
  %i.bw = extractelement <2 x float> %i.bk, i64 1
  %i.bx = fmul nsz float %i.bw, 1.200000e+01
  %i.by = extractelement <2 x float> %i.bk, i64 0
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float -2.000000e+00, float %i.bx)
  %i.ca = fadd nsz float %i.bz, 3.000000e+00
  %i.cb = fdiv nsz float 1.000000e+00, %i.ca      ; 2 uses
  %i.cc = fmul nsz <2 x float> %i.bk, <float 4.000000e+00, float 6.000000e+00>
  %i.cd = fneg nsz float %i.cb
  %i.ce = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cf = insertelement <2 x float> %i.ce, float %i.cd, i64 1
  %i.cg = fmul nsz <2 x float> %i.cc, %i.cf
  br label %bb.m

bb.k:                                             ; preds = %.split.i.i
  %i.ch = fneg nsz <2 x float> %i.bk
  %i.ci = shufflevector <2 x float> %i.bk, <2 x float> %i.ch, <2 x i32> <i32 0, i32 3>
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 974) #10
  tail call void @abort() #11
  unreachable

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.cj = phi <2 x float> [ %i.bv, %bb.i ], [ %i.cg, %bb.j ], [ %i.ci, %bb.k ] ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 1
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.ck, float %i.at, float %i.at)
  %i.cm = extractelement <2 x float> %i.cj, i64 0
  %.034.in.i.i = fmul nsz float %i.cm, %i.at
  %.034.i.i = fptosi float %.034.in.i.i to i32    ; 3 uses
  %i.cn = fptosi float %i.cl to i32               ; 3 uses
  call fastcc void @draw_line(ptr noundef %i.am, i32 noundef range(i32 -1073741824, 1073741824) %i.ap, i32 noundef %.02740.i.i, i32 noundef %.02641.i.i, i32 noundef %.034.i.i, i32 noundef %i.cn, ptr noundef %i.a)
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 831
  br i1 %exitcond.not.i.i, label %tongue_outline.exit.i, label %.split.i.i, !llvm.loop !47

tongue_outline.exit.i:                            ; preds = %bb.m
  call fastcc void @draw_line(ptr noundef %i.am, i32 noundef range(i32 -1073741824, 1073741824) %i.ap, i32 noundef %.034.i.i, i32 noundef %i.cn, i32 noundef %.034.peel.i.i, i32 noundef %i.ba, ptr noundef %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %i.co = getelementptr inbounds nuw i8, ptr %.val121, i64 44
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !76
  %.not.i = icmp eq i32 %i.cp, 0
  br i1 %.not.i, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %tongue_outline.exit.i
  %i.cq = getelementptr inbounds nuw i8, ptr %.val121, i64 262196
  %i.cr = load i32, ptr %i.aq, align 4, !tbaa !74 ; 4 uses
  %i.cs = icmp sgt i32 %i.ae, 0
  br i1 %i.cs, label %.lr.ph136.i.i, label %.loopexit

.lr.ph136.i.i:                                    ; preds = %bb.n
  %i.ct = getelementptr inbounds nuw i8, ptr %.val121, i64 36
  %i.cu = load float, ptr %i.ct, align 4, !tbaa !77
  %i.cv = getelementptr inbounds nuw i8, ptr %.val121, i64 24
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !78
  %i.cx = load ptr, ptr %i.ak, align 8, !tbaa !72
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 64
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !35
  %i.da = sdiv i32 %i.cz, 2
  %wide.trip.count.i.i.i = zext nneg i32 %i.ae to i64 ; 8 uses
  %i.db = uitofp nneg i32 %i.as to float
  %i.dc = getelementptr inbounds nuw i8, ptr %.val121, i64 262212
  %i.dd = getelementptr inbounds nuw i8, ptr %.val121, i64 262220
  %i.de = getelementptr inbounds nuw i8, ptr %.val121, i64 262224
  %i.df = getelementptr inbounds nuw i8, ptr %.val121, i64 262228
  %i.dg = fmul nsz float %i.cu, 6.553500e+04
  %i.dh = fptosi float %i.dg to i32
  %i.di = sitofp nsz i32 %i.dh to float           ; 2 uses
  %.not70.i.i = icmp eq i32 %i.cw, 0              ; 4 uses
  %switch.i26.i = icmp ult i32 %i.cr, 3
  %i.dj = sext i32 %i.da to i64                   ; 3 uses
  br i1 %switch.i26.i, label %.lr.ph.i.us.i.i.preheader, label %.lr.ph.i.i.i

.lr.ph.i.us.i.i.preheader:                        ; preds = %.lr.ph136.i.i
  %i.dk = shl nsw i64 %i.dj, 1
  %broadcast.splatinsert249 = insertelement <8 x float> poison, float %i.at, i64 0
  %broadcast.splat250 = shufflevector <8 x float> %broadcast.splatinsert249, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert251 = insertelement <8 x float> poison, float %i.di, i64 0
  %broadcast.splat252 = shufflevector <8 x float> %broadcast.splatinsert251, <8 x float> poison, <8 x i32> zeroinitializer
  %i.dl = icmp eq i32 %i.cr, 1                    ; 3 uses
  %i.dm = add nsw i32 %i.cr, -1
  %i.dn = icmp ult i32 %i.dm, 2                   ; 3 uses
  br label %.lr.ph.i.us.i.i

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i.us.i.i.preheader, %find_tongue.exit.thread.us.i.i
  %indvars.iv156.i.i = phi i64 [ %indvars.iv.next157.i.i, %find_tongue.exit.thread.us.i.i ], [ 0, %.lr.ph.i.us.i.i.preheader ] ; 4 uses
  %i.do = mul i64 %i.dk, %indvars.iv156.i.i       ; 4 uses
  %i.dp = mul nsw i64 %indvars.iv156.i.i, %i.dj
  %invariant.gep.i.us.i.i = getelementptr [2 x i8], ptr %i.am, i64 %i.dp ; 4 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.lr.ph.i.us.i.i
  %indvars.iv.i.us.i.i = phi i64 [ 0, %.lr.ph.i.us.i.i ], [ %indvars.iv.next.i.us.i.i, %bb.p ] ; 13 uses
  %.idx.i.us.i.i = shl nuw nsw i64 %indvars.iv.i.us.i.i, 3
  %gep.i.us.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx.i.us.i.i
  %i.dq = load i16, ptr %gep.i.us.i.i, align 2, !tbaa !39
  %i.dr = icmp eq i16 %i.dq, 0
  br i1 %i.dr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %indvars.iv.next.i.us.i.i = add nuw nsw i64 %indvars.iv.i.us.i.i, 1 ; 2 uses
  %exitcond.not.i.us.i.i = icmp eq i64 %indvars.iv.next.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.us.i.i, label %find_tongue.exit.thread.us.i.i, label %bb.o, !llvm.loop !48

bb.q:                                             ; preds = %bb.o
  %indvars148.le.i.i = trunc i64 %indvars.iv.i.us.i.i to i32 ; 2 uses
  %smin.i.us.i.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %indvars148.le.i.i)
  %i.ds = add nsw i32 %smin.i.us.i.i, -1          ; 2 uses
  %.not27.not.i.us.i.i214 = icmp samesign ult i64 %indvars.iv.i.us.i.i, %wide.trip.count.i.i.i
  br i1 %.not27.not.i.us.i.i214, label %.lr.ph217, label %find_tongue.exit.us.i.i

bb.r:                                             ; preds = %.lr.ph217
  %.not27.not.i.us.i.i = icmp sgt i64 %indvars.iv.next33.i.us.i.i, %indvars.iv.i.us.i.i
  br i1 %.not27.not.i.us.i.i, label %.lr.ph217, label %find_tongue.exit.us.i.i, !llvm.loop !49

.lr.ph217:                                        ; preds = %bb.q, %bb.r
  %indvars.iv32.i.us.i.i215 = phi i64 [ %indvars.iv.next33.i.us.i.i, %bb.r ], [ %wide.trip.count.i.i.i, %bb.q ]
  %indvars.iv.next33.i.us.i.i = add nsw i64 %indvars.iv32.i.us.i.i215, -1 ; 4 uses
  %.idx38.i.us.i.i = shl nuw nsw i64 %indvars.iv.next33.i.us.i.i, 3
  %gep44.i.us.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx38.i.us.i.i
  %i.dt = load i16, ptr %gep44.i.us.i.i, align 2, !tbaa !39
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %bb.r, label %.critedge2.split.loop.exit41.i.us.i.i, !llvm.loop !49

.critedge2.split.loop.exit41.i.us.i.i:            ; preds = %.lr.ph217
  %i.dv = trunc nuw nsw i64 %indvars.iv.next33.i.us.i.i to i32
  br label %find_tongue.exit.us.i.i

find_tongue.exit.us.i.i:                          ; preds = %bb.r, %bb.q, %.critedge2.split.loop.exit41.i.us.i.i
  %.0108.us.i.i = phi i32 [ %i.dv, %.critedge2.split.loop.exit41.i.us.i.i ], [ %i.ds, %bb.q ], [ %i.ds, %bb.r ] ; 2 uses
  %.not68132.us.i.i = icmp slt i32 %.0108.us.i.i, %indvars148.le.i.i
  br i1 %.not68132.us.i.i, label %find_tongue.exit.thread.us.i.i, label %.lr.ph.us.i.i

scalar.ph:                                        ; preds = %scalar.ph.preheader, %bb.af
  %indvars.iv151.i.i = phi i64 [ %indvars.iv.next152.i.i, %bb.af ], [ %indvars.iv151.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv151.i.i to i32
  %i.dx = sitofp nsz i32 %i.dw to float
  %i.dy = fdiv nsz float %i.dx, %i.at             ; 7 uses
  switch i32 %i.cr, label %bb.s [
    i32 2, label %bb.u
    i32 1, label %bb.t
  ]

bb.s:                                             ; preds = %scalar.ph
  %i.dz = fadd nsz float %i.hs, %i.dy
  %i.ea = insertelement <2 x float> %i.md, float %i.dy, i64 0
  br label %bb.v

bb.t:                                             ; preds = %scalar.ph
  %i.eb = fmul nsz float %i.dy, 3.000000e+00
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.dy, float 2.000000e+00, float %i.ht)
  %i.ed = fadd nsz float %i.ec, 4.000000e+00
  %i.ee = insertelement <2 x float> %i.mb, float %i.eb, i64 0
  %i.ef = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fdiv nsz <2 x float> %i.ee, %i.eg       ; 3 uses
  %i.ei = extractelement <2 x float> %i.eh, i64 1 ; 2 uses
  %i.ej = extractelement <2 x float> %i.eh, i64 0 ; 2 uses
  %i.ek = fadd nsz float %i.ej, %i.ei
  br label %bb.v

bb.u:                                             ; preds = %scalar.ph
  %i.el = fmul nsz float %i.dy, 9.000000e+00
  %i.em = tail call nsz float @llvm.fmuladd.f32(float %i.dy, float 6.000000e+00, float %i.hv)
  %i.en = fadd nsz float %i.em, 1.200000e+01
  %i.eo = insertelement <2 x float> %i.mc, float %i.el, i64 0
  %i.ep = insertelement <2 x float> poison, float %i.en, i64 0
  %i.eq = shufflevector <2 x float> %i.ep, <2 x float> poison, <2 x i32> zeroinitializer
  %i.er = fdiv nsz <2 x float> %i.eo, %i.eq       ; 3 uses
  %i.es = extractelement <2 x float> %i.er, i64 1 ; 2 uses
  %i.et = extractelement <2 x float> %i.er, i64 0 ; 2 uses
  %i.eu = fadd nsz float %i.et, %i.es
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.0107.us.i.i = phi nsz float [ %i.et, %bb.u ], [ %i.ej, %bb.t ], [ %i.dy, %bb.s ]
  %.0106.us.i.i = phi nsz float [ %i.es, %bb.u ], [ %i.ei, %bb.t ], [ %i.hs, %bb.s ]
  %.pn.us.i.i = phi float [ %i.eu, %bb.u ], [ %i.ek, %bb.t ], [ %i.dz, %bb.s ]
  %i.ev = phi <2 x float> [ %i.er, %bb.u ], [ %i.eh, %bb.t ], [ %i.ea, %bb.s ] ; 2 uses
  %.061.us.i.i = fsub nsz float 1.000000e+00, %.pn.us.i.i ; 2 uses
  %i.ew = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul nsz <2 x float> %i.mg, %i.ew
  %i.ey = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mh, <2 x float> %i.ey, <2 x float> %i.ex)
  %i.fa = insertelement <2 x float> poison, float %.061.us.i.i, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mi, <2 x float> %i.fb, <2 x float> %i.ez) ; 4 uses
  %i.fd = fmul nsz float %i.ia, %.0106.us.i.i
  %i.fe = tail call nsz float @llvm.fmuladd.f32(float %i.hz, float %.0107.us.i.i, float %i.fd)
  %i.ff = tail call nsz float @llvm.fmuladd.f32(float %i.ib, float %.061.us.i.i, float %i.fe) ; 4 uses
  %i.fg = extractelement <2 x float> %i.fc, i64 0 ; 2 uses
  %i.fh = fcmp nsz ogt float %i.fg, 0.000000e+00
  %i.fi = select nsz i1 %i.fh, float 0.000000e+00, float %i.fg ; 2 uses
  %i.fj = extractelement <2 x float> %i.fc, i64 1 ; 2 uses
  %i.fk = fcmp nsz olt float %i.fi, %i.fj
  %i.fl = select nsz i1 %i.fk, float %i.fi, float %i.fj ; 2 uses
  %i.fm = fcmp nsz olt float %i.fl, %i.ff
  %i.fn = select nsz i1 %i.fm, float %i.fl, float %i.ff ; 3 uses
  %i.fo = fcmp nsz olt float %i.fn, 0.000000e+00  ; 3 uses
  %i.fp = insertelement <2 x float> poison, float %i.fn, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fsub nsz <2 x float> %i.fc, %i.fq
  %i.fs = fsub nsz float %i.ff, %i.fn
  %.2124.us.i.i = select i1 %i.fo, float %i.fs, float %i.ff ; 4 uses
  %i.ft = select i1 %i.fo, float %i.di, float 6.553500e+04 ; 2 uses
  %i.fu = select i1 %i.fo, <2 x float> %i.fr, <2 x float> %i.fc ; 4 uses
  %i.fv = extractelement <2 x float> %i.fu, i64 0 ; 2 uses
  %i.fw = extractelement <2 x float> %i.fu, i64 1 ; 2 uses
  %i.fx = fcmp nsz ogt float %i.fv, %i.fw
  %i.fy = select nsz i1 %i.fx, float %i.fv, float %i.fw ; 2 uses
  %i.fz = fcmp nsz ogt float %i.fy, %.2124.us.i.i
  %i.ga = select nsz i1 %i.fz, float %i.fy, float %.2124.us.i.i ; 3 uses
  %i.gb = fcmp nsz ogt float %i.ga, 0.000000e+00  ; 2 uses
  %i.gc = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gd = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ge = fdiv nsz <2 x float> %i.fu, %i.gd
  %i.gf = fdiv nsz float %.2124.us.i.i, %i.ga
  %i.gg = insertelement <2 x i1> poison, i1 %i.gb, i64 0
  %i.gh = shufflevector <2 x i1> %i.gg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.gi = select <2 x i1> %i.gh, <2 x float> %i.ge, <2 x float> %i.fu ; 3 uses
  %.099.us.i.i = select nsz i1 %i.gb, float %i.gf, float %.2124.us.i.i ; 3 uses
  br i1 %.not70.i.i, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.gj = extractelement <2 x float> %i.gi, i64 0 ; 2 uses
  %i.gk = fpext nsz float %i.gj to double         ; 2 uses
  %i.gl = fcmp nsz olt float %i.gj, 1.800000e-02
  br i1 %i.gl, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.gm = tail call nsz double @llvm.pow.f64(double %i.gk, double 4.500000e-01)
  %i.gn = tail call nsz double @llvm.fmuladd.f64(double %i.gm, double 1.099000e+00, double -9.900000e-02)
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.go = fmul nnan nsz double %i.gk, f0x40120E1AF262875F
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %.sink1.i.i.ph.us.i.i = phi double [ %i.gn, %bb.x ], [ %i.go, %bb.y ]
  %i.gp = extractelement <2 x float> %i.gi, i64 1 ; 2 uses
  %i.gq = fcmp nsz olt float %i.gp, 1.800000e-02
  %i.gr = fpext nsz float %i.gp to double         ; 2 uses
  br i1 %i.gq, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.gs = tail call nsz double @llvm.pow.f64(double %i.gr, double 4.500000e-01)
  %i.gt = tail call nsz double @llvm.fmuladd.f64(double %i.gs, double 1.099000e+00, double -9.900000e-02)
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.gu = fmul nnan nsz double %i.gr, f0x40120E1AF262875F
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sink1.i8.i.ph.us.i.i = phi double [ %i.gt, %bb.aa ], [ %i.gu, %bb.ab ]
  %i.gv = fcmp nsz olt float %.099.us.i.i, 1.800000e-02
  %i.gw = fpext nsz float %.099.us.i.i to double  ; 2 uses
  br i1 %i.gv, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.gx = tail call nsz double @llvm.pow.f64(double %i.gw, double 4.500000e-01)
  %i.gy = tail call nsz double @llvm.fmuladd.f64(double %i.gx, double 1.099000e+00, double -9.900000e-02)
  br label %gamma_correct_rgb.exit.us.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.gz = fmul nnan nsz double %i.gw, f0x40120E1AF262875F
  br label %gamma_correct_rgb.exit.us.i.i

gamma_correct_rgb.exit.us.i.i:                    ; preds = %bb.ae, %bb.ad
  %.sink1.i10.i.us.i.i = phi double [ %i.gz, %bb.ae ], [ %i.gy, %bb.ad ]
  %i.ha = insertelement <2 x double> poison, double %.sink1.i.i.ph.us.i.i, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %.sink1.i8.i.ph.us.i.i, i64 1
  %i.hc = fptrunc <2 x double> %i.hb to <2 x float>
  %i.hd = fptrunc nsz double %.sink1.i10.i.us.i.i to float
  br label %bb.af

bb.af:                                            ; preds = %gamma_correct_rgb.exit.us.i.i, %bb.v
  %.1.us.i.i = phi nsz float [ %.099.us.i.i, %bb.v ], [ %i.hd, %gamma_correct_rgb.exit.us.i.i ]
  %i.he = phi <2 x float> [ %i.gi, %bb.v ], [ %i.hc, %gamma_correct_rgb.exit.us.i.i ]
  %i.hf = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.hg = shufflevector <2 x float> %i.hf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hh = fmul nsz <2 x float> %i.hg, %i.he
  %i.hi = fmul nsz float %i.ft, %.1.us.i.i
  %i.hj = fptosi float %i.hi to i32
  %.idx.i.i = shl i64 %indvars.iv151.i.i, 3
  %gep.i.i = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %.idx.i.i ; 3 uses
  %i.hk = fptosi <2 x float> %i.hh to <2 x i32>
  %i.hl = trunc <2 x i32> %i.hk to <2 x i16>
  store <2 x i16> %i.hl, ptr %gep.i.i, align 2, !tbaa !39
  %i.hm = trunc i32 %i.hj to i16
  %i.hn = getelementptr i8, ptr %gep.i.i, i64 4
  store i16 %i.hm, ptr %i.hn, align 2, !tbaa !39
  %i.ho = getelementptr i8, ptr %gep.i.i, i64 6
  store i16 -1, ptr %i.ho, align 2, !tbaa !39
  %indvars.iv.next152.i.i = add nuw nsw i64 %indvars.iv151.i.i, 1 ; 2 uses
  %exitcond155.not.i.i = icmp eq i64 %indvars.iv.next152.i.i, %wide.trip.count154.i.i
  br i1 %exitcond155.not.i.i, label %find_tongue.exit.thread.us.i.i, label %scalar.ph, !llvm.loop !50

find_tongue.exit.thread.us.i.i:                   ; preds = %bb.p, %bb.af, %middle.block, %find_tongue.exit.us.i.i
  %indvars.iv.next157.i.i = add nuw nsw i64 %indvars.iv156.i.i, 1 ; 2 uses
  %exitcond160.not.i.i = icmp eq i64 %indvars.iv.next157.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond160.not.i.i, label %.loopexit, label %.lr.ph.i.us.i.i, !llvm.loop !51

.lr.ph.us.i.i:                                    ; preds = %find_tongue.exit.us.i.i
  %i.hp = trunc nuw nsw i64 %indvars.iv156.i.i to i32
  %i.hq = uitofp nsz nneg i32 %i.hp to float
  %i.hr = fdiv nsz float %i.hq, %i.db
  %i.hs = fsub nsz float 1.000000e+00, %i.hr      ; 8 uses
  %i.ht = fmul nsz float %i.hs, -8.000000e+00     ; 2 uses
  %i.hu = fmul nsz float %i.hs, 2.000000e+00      ; 2 uses
  %i.hv = fmul nsz float %i.hs, -1.600000e+01     ; 2 uses
  %i.hw = fmul nsz float %i.hs, 4.000000e+00      ; 2 uses
  %i.hx = load <4 x float>, ptr %i.cq, align 4, !tbaa !36 ; 7 uses
  %i.hy = load <2 x float>, ptr %i.dc, align 4, !tbaa !36 ; 4 uses
  %i.hz = load float, ptr %i.dd, align 4, !tbaa !36 ; 2 uses
  %i.ia = load float, ptr %i.de, align 8, !tbaa !36 ; 2 uses
  %i.ib = load float, ptr %i.df, align 4, !tbaa !36 ; 2 uses
  %i.ic = add i32 %.0108.us.i.i, 1
  %wide.trip.count154.i.i = zext i32 %i.ic to i64 ; 3 uses
  %i.id = sub nsw i64 %wide.trip.count154.i.i, %indvars.iv.i.us.i.i ; 3 uses
  %min.iters.check = icmp ult i64 %i.id, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us.i.i
  %i.ie = xor i64 %indvars.iv.i.us.i.i, -1
  %i.if = add nsw i64 %wide.trip.count154.i.i, %i.ie ; 2 uses
  %i.ig = shl nuw nsw i64 %indvars.iv.i.us.i.i, 3 ; 4 uses
  %i.ih = getelementptr i8, ptr %i.am, i64 %i.ig
  %scevgep = getelementptr i8, ptr %i.ih, i64 %i.do ; 2 uses
  %mul.result = shl i64 %i.if, 3                  ; 4 uses
  %mul.overflow = icmp ugt i64 %i.if, 2305843009213693951
  %i.ii = getelementptr i8, ptr %scevgep, i64 %mul.result
  %i.ij = icmp ult ptr %i.ii, %scevgep
  %i.ik = getelementptr i8, ptr %i.am, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.ik, i64 %i.do
  %scevgep218 = getelementptr i8, ptr %i.il, i64 2 ; 2 uses
  %i.im = getelementptr i8, ptr %scevgep218, i64 %mul.result
  %i.in = icmp ult ptr %i.im, %scevgep218
  %i.io = getelementptr i8, ptr %i.am, i64 %i.ig
  %i.ip = getelementptr i8, ptr %i.io, i64 %i.do
  %scevgep219 = getelementptr i8, ptr %i.ip, i64 4 ; 2 uses
  %i.iq = getelementptr i8, ptr %scevgep219, i64 %mul.result
  %i.ir = icmp ult ptr %i.iq, %scevgep219
  %i.is = or i1 %i.ir, %mul.overflow
  %i.it = getelementptr i8, ptr %i.am, i64 %i.ig
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.do
  %scevgep220 = getelementptr i8, ptr %i.iu, i64 6 ; 2 uses
  %i.iv = getelementptr i8, ptr %scevgep220, i64 %mul.result
  %i.iw = icmp ult ptr %i.iv, %scevgep220
  %i.ix = or i1 %i.in, %i.ij
  %i.iy = or i1 %i.ix, %i.is
  %i.iz = or i1 %i.iw, %i.iy
  br i1 %i.iz, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.scevcheck
  %n.vec = and i64 %i.id, -8                      ; 3 uses
  %i.ja = add i64 %indvars.iv.i.us.i.i, %n.vec
  %broadcast.splatinsert221 = insertelement <8 x float> poison, float %i.hs, i64 0
  %broadcast.splat222 = shufflevector <8 x float> %broadcast.splatinsert221, <8 x float> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert223 = insertelement <8 x float> poison, float %i.ht, i64 0
  %broadcast.splat224 = shufflevector <8 x float> %broadcast.splatinsert223, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert225 = insertelement <8 x float> poison, float %i.hu, i64 0
  %broadcast.splat226 = shufflevector <8 x float> %broadcast.splatinsert225, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert227 = insertelement <8 x float> poison, float %i.hv, i64 0
  %broadcast.splat228 = shufflevector <8 x float> %broadcast.splatinsert227, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert229 = insertelement <8 x float> poison, float %i.hw, i64 0
  %broadcast.splat230 = shufflevector <8 x float> %broadcast.splatinsert229, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat232 = shufflevector <4 x float> %i.hx, <4 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat234 = shufflevector <4 x float> %i.hx, <4 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splat236 = shufflevector <4 x float> %i.hx, <4 x float> poison, <8 x i32> <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %broadcast.splat238 = shufflevector <4 x float> %i.hx, <4 x float> poison, <8 x i32> <i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3, i32 3>
  %broadcast.splat240 = shufflevector <2 x float> %i.hy, <2 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splat242 = shufflevector <2 x float> %i.hy, <2 x float> poison, <8 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %broadcast.splatinsert243 = insertelement <8 x float> poison, float %i.hz, i64 0
  %broadcast.splat244 = shufflevector <8 x float> %broadcast.splatinsert243, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert245 = insertelement <8 x float> poison, float %i.ia, i64 0
  %broadcast.splat246 = shufflevector <8 x float> %broadcast.splatinsert245, <8 x float> poison, <8 x i32> zeroinitializer
  %broadcast.splatinsert247 = insertelement <8 x float> poison, float %i.ib, i64 0
  %broadcast.splat248 = shufflevector <8 x float> %broadcast.splatinsert247, <8 x float> poison, <8 x i32> zeroinitializer
  %i.jb = trunc i64 %indvars.iv.i.us.i.i to i32
  %broadcast.splatinsert253 = insertelement <8 x i32> poison, i32 %i.jb, i64 0
  %broadcast.splat254 = shufflevector <8 x i32> %broadcast.splatinsert253, <8 x i32> poison, <8 x i32> zeroinitializer
  %induction = add <8 x i32> %broadcast.splat254, <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.jc = add nuw i64 %indvars.iv.i.us.i.i, %index
  %i.jd = sitofp nsz <8 x i32> %vec.ind to <8 x float>
  %i.je = fdiv nsz <8 x float> %i.jd, %broadcast.splat250 ; 6 uses
  %i.jf = fmul nsz <8 x float> %i.je, splat (float 3.000000e+00)
  %i.jg = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.je, <8 x float> splat (float 2.000000e+00), <8 x float> %broadcast.splat224)
  %i.jh = fadd nsz <8 x float> %i.jg, splat (float 4.000000e+00) ; 2 uses
  %i.ji = fdiv nsz <8 x float> %i.jf, %i.jh       ; 2 uses
  %i.jj = fdiv nsz <8 x float> %broadcast.splat226, %i.jh ; 2 uses
  %i.jk = fadd nsz <8 x float> %i.ji, %i.jj
  %i.jl = fmul nsz <8 x float> %i.je, splat (float 9.000000e+00)
  %i.jm = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.je, <8 x float> splat (float 6.000000e+00), <8 x float> %broadcast.splat228)
  %i.jn = fadd nsz <8 x float> %i.jm, splat (float 1.200000e+01) ; 2 uses
  %i.jo = fdiv nsz <8 x float> %i.jl, %i.jn       ; 2 uses
  %i.jp = fdiv nsz <8 x float> %broadcast.splat230, %i.jn ; 2 uses
  %i.jq = fadd nsz <8 x float> %i.jo, %i.jp
  %i.jr = fadd nsz <8 x float> %broadcast.splat222, %i.je
  %predphi = select nsz i1 %i.dl, <8 x float> %i.ji, <8 x float> %i.jo
  %predphi255 = select nsz i1 %i.dn, <8 x float> %predphi, <8 x float> %i.je ; 3 uses
  %predphi256 = select nsz i1 %i.dl, <8 x float> %i.jj, <8 x float> %i.jp
  %predphi257 = select nsz i1 %i.dn, <8 x float> %predphi256, <8 x float> %broadcast.splat222 ; 3 uses
  %predphi258 = select i1 %i.dl, <8 x float> %i.jk, <8 x float> %i.jq
  %predphi259 = select i1 %i.dn, <8 x float> %predphi258, <8 x float> %i.jr
  %i.js = fsub nsz <8 x float> splat (float 1.000000e+00), %predphi259 ; 3 uses
  %i.jt = fmul nsz <8 x float> %broadcast.splat234, %predphi257
  %i.ju = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat232, <8 x float> %predphi255, <8 x float> %i.jt)
  %i.jv = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat236, <8 x float> %i.js, <8 x float> %i.ju) ; 4 uses
  %i.jw = fmul nsz <8 x float> %broadcast.splat240, %predphi257
  %i.jx = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat238, <8 x float> %predphi255, <8 x float> %i.jw)
  %i.jy = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat242, <8 x float> %i.js, <8 x float> %i.jx) ; 4 uses
  %i.jz = fmul nsz <8 x float> %broadcast.splat246, %predphi257
  %i.ka = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat244, <8 x float> %predphi255, <8 x float> %i.jz)
  %i.kb = tail call nsz <8 x float> @llvm.fmuladd.v8f32(<8 x float> %broadcast.splat248, <8 x float> %i.js, <8 x float> %i.ka) ; 4 uses
  %i.kc = fcmp nsz ogt <8 x float> %i.jv, zeroinitializer
  %i.kd = select nsz <8 x i1> %i.kc, <8 x float> zeroinitializer, <8 x float> %i.jv ; 2 uses
  %i.ke = fcmp nsz olt <8 x float> %i.kd, %i.jy
  %i.kf = select nsz <8 x i1> %i.ke, <8 x float> %i.kd, <8 x float> %i.jy ; 2 uses
  %i.kg = fcmp nsz olt <8 x float> %i.kf, %i.kb
  %i.kh = select nsz <8 x i1> %i.kg, <8 x float> %i.kf, <8 x float> %i.kb ; 4 uses
  %i.ki = fcmp nsz olt <8 x float> %i.kh, zeroinitializer ; 4 uses
  %i.kj = fsub nsz <8 x float> %i.jv, %i.kh
  %i.kk = fsub nsz <8 x float> %i.jy, %i.kh
  %i.kl = fsub nsz <8 x float> %i.kb, %i.kh
  %predphi260 = select <8 x i1> %i.ki, <8 x float> %i.kl, <8 x float> %i.kb ; 4 uses
  %predphi261 = select <8 x i1> %i.ki, <8 x float> %i.kk, <8 x float> %i.jy ; 4 uses
  %predphi262 = select <8 x i1> %i.ki, <8 x float> %i.kj, <8 x float> %i.jv ; 4 uses
  %predphi263 = select <8 x i1> %i.ki, <8 x float> %broadcast.splat252, <8 x float> splat (float 6.553500e+04) ; 2 uses
  %i.km = fcmp nsz ogt <8 x float> %predphi262, %predphi261
  %i.kn = select nsz <8 x i1> %i.km, <8 x float> %predphi262, <8 x float> %predphi261 ; 2 uses
  %i.ko = fcmp nsz ogt <8 x float> %i.kn, %predphi260
  %i.kp = select nsz <8 x i1> %i.ko, <8 x float> %i.kn, <8 x float> %predphi260 ; 4 uses
  %i.kq = fcmp nsz ogt <8 x float> %i.kp, zeroinitializer ; 3 uses
  %i.kr = fdiv nsz <8 x float> %predphi262, %i.kp
  %i.ks = fdiv nsz <8 x float> %predphi261, %i.kp
  %i.kt = fdiv nsz <8 x float> %predphi260, %i.kp
  %i.ku = select nsz <8 x i1> %i.kq, <8 x float> %i.kr, <8 x float> %predphi262 ; 3 uses
  %i.kv = select nsz <8 x i1> %i.kq, <8 x float> %i.ks, <8 x float> %predphi261 ; 3 uses
  %i.kw = select nsz <8 x i1> %i.kq, <8 x float> %i.kt, <8 x float> %predphi260 ; 3 uses
  %i.kx = fpext nsz <8 x float> %i.ku to <8 x double> ; 2 uses
  %i.ky = fcmp nsz olt <8 x float> %i.ku, splat (float 1.800000e-02)
  %i.kz = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.kx, <8 x double> splat (double 4.500000e-01))
  %i.la = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.kz, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.lb = fmul nnan nsz <8 x double> %i.kx, splat (double f0x40120E1AF262875F)
  %predphi264 = select <8 x i1> %i.ky, <8 x double> %i.lb, <8 x double> %i.la
  %i.lc = fcmp nsz olt <8 x float> %i.kv, splat (float 1.800000e-02)
  %i.ld = fpext nsz <8 x float> %i.kv to <8 x double> ; 2 uses
  %i.le = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.ld, <8 x double> splat (double 4.500000e-01))
  %i.lf = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.le, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.lg = fmul nnan nsz <8 x double> %i.ld, splat (double f0x40120E1AF262875F)
  %predphi265 = select <8 x i1> %i.lc, <8 x double> %i.lg, <8 x double> %i.lf
  %i.lh = fcmp nsz olt <8 x float> %i.kw, splat (float 1.800000e-02)
  %i.li = fpext nsz <8 x float> %i.kw to <8 x double> ; 2 uses
  %i.lj = tail call nsz <8 x double> @llvm.pow.v8f64(<8 x double> %i.li, <8 x double> splat (double 4.500000e-01))
  %i.lk = tail call nsz <8 x double> @llvm.fmuladd.v8f64(<8 x double> %i.lj, <8 x double> splat (double 1.099000e+00), <8 x double> splat (double -9.900000e-02))
  %i.ll = fmul nnan nsz <8 x double> %i.li, splat (double f0x40120E1AF262875F)
  %predphi266 = select <8 x i1> %i.lh, <8 x double> %i.ll, <8 x double> %i.lk
  %i.lm = fptrunc <8 x double> %predphi264 to <8 x float>
  %i.ln = fptrunc <8 x double> %predphi265 to <8 x float>
  %i.lo = fptrunc nsz <8 x double> %predphi266 to <8 x float>
  %predphi267 = select nsz i1 %.not70.i.i, <8 x float> %i.ku, <8 x float> %i.lm
  %predphi268 = select nsz i1 %.not70.i.i, <8 x float> %i.kv, <8 x float> %i.ln
  %predphi269 = select nsz i1 %.not70.i.i, <8 x float> %i.kw, <8 x float> %i.lo
  %i.lp = fmul nsz <8 x float> %predphi263, %predphi269
  %i.lq = fptosi <8 x float> %i.lp to <8 x i32>
  %i.lr = shl i64 %i.jc, 3
  %i.ls = getelementptr i8, ptr %invariant.gep.i.us.i.i, i64 %i.lr
  %i.lt = trunc <8 x i32> %i.lq to <8 x i16>
  %i.lu = shufflevector <8 x float> %predphi263, <8 x float> poison, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.lv = shufflevector <8 x float> %predphi267, <8 x float> %predphi268, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %i.lw = fmul nsz <16 x float> %i.lu, %i.lv
  %i.lx = fptosi <16 x float> %i.lw to <16 x i32>
  %i.ly = trunc <16 x i32> %i.lx to <16 x i16>
  %i.lz = shufflevector <8 x i16> %i.lt, <8 x i16> splat (i16 -1), <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %interleaved.vec = shufflevector <16 x i16> %i.ly, <16 x i16> %i.lz, <32 x i32> <i32 0, i32 8, i32 16, i32 24, i32 1, i32 9, i32 17, i32 25, i32 2, i32 10, i32 18, i32 26, i32 3, i32 11, i32 19, i32 27, i32 4, i32 12, i32 20, i32 28, i32 5, i32 13, i32 21, i32 29, i32 6, i32 14, i32 22, i32 30, i32 7, i32 15, i32 23, i32 31>
  store <32 x i16> %interleaved.vec, ptr %i.ls, align 2, !tbaa !39
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <8 x i32> %vec.ind, splat (i32 8)
  %i.ma = icmp eq i64 %index.next, %n.vec
  br i1 %i.ma, label %middle.block, label %vector.body, !llvm.loop !52

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.id, %n.vec
  br i1 %cmp.n, label %find_tongue.exit.thread.us.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.scevcheck, %.lr.ph.us.i.i, %middle.block
  %indvars.iv151.i.i.ph = phi i64 [ %indvars.iv.i.us.i.i, %vector.scevcheck ], [ %indvars.iv.i.us.i.i, %.lr.ph.us.i.i ], [ %i.ja, %middle.block ]
  %i.mb = insertelement <2 x float> poison, float %i.hu, i64 1
  %i.mc = insertelement <2 x float> poison, float %i.hw, i64 1
  %i.md = insertelement <2 x float> poison, float %i.hs, i64 1
  %i.me = shufflevector <4 x float> %i.hx, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.mf = shufflevector <2 x float> %i.hy, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mg = shufflevector <4 x float> %i.hx, <4 x float> %i.mf, <2 x i32> <i32 1, i32 4>
  %i.mh = shufflevector <4 x float> %i.hx, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.mi = shufflevector <2 x float> %i.me, <2 x float> %i.hy, <2 x i32> <i32 0, i32 3>
  br label %scalar.ph

.lr.ph.i.i.i:                                     ; preds = %.lr.ph136.i.i, %find_tongue.exit.thread.i.i
  %indvars.iv.i27.i = phi i64 [ %indvars.iv.next.i28.i, %find_tongue.exit.thread.i.i ], [ 0, %.lr.ph136.i.i ] ; 2 uses
  %i.mj = mul nsw i64 %indvars.iv.i27.i, %i.dj
  %invariant.gep.i.i.i = getelementptr [2 x i8], ptr %i.am, i64 %i.mj ; 2 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ah, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.ah ] ; 5 uses
  %.idx.i.i.i = shl nuw nsw i64 %indvars.iv.i.i.i, 3
  %gep.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %.idx.i.i.i
  %i.mk = load i16, ptr %gep.i.i.i, align 2, !tbaa !39
  %i.ml = icmp eq i16 %i.mk, 0
  br i1 %i.ml, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %find_tongue.exit.thread.i.i, label %bb.ag, !llvm.loop !48

bb.ai:                                            ; preds = %bb.ag
  %indvars146.le.i.i = trunc i64 %indvars.iv.i.i.i to i32 ; 2 uses
  %smin.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.ae, i32 %indvars146.le.i.i)
  %i.mm = add nsw i32 %smin.i.i.i, -1             ; 2 uses
  %.not27.not.i.i.i210 = icmp samesign ult i64 %indvars.iv.i.i.i, %wide.trip.count.i.i.i
  br i1 %.not27.not.i.i.i210, label %.lr.ph213, label %find_tongue.exit.i.i

bb.aj:                                            ; preds = %.lr.ph213
  %.not27.not.i.i.i = icmp sgt i64 %indvars.iv.next33.i.i.i, %indvars.iv.i.i.i
  br i1 %.not27.not.i.i.i, label %.lr.ph213, label %find_tongue.exit.i.i, !llvm.loop !49

.lr.ph213:                                        ; preds = %bb.ai, %bb.aj
  %indvars.iv32.i.i.i211 = phi i64 [ %indvars.iv.next33.i.i.i, %bb.aj ], [ %wide.trip.count.i.i.i, %bb.ai ]
  %indvars.iv.next33.i.i.i = add nsw i64 %indvars.iv32.i.i.i211, -1 ; 4 uses
  %.idx38.i.i.i = shl nuw nsw i64 %indvars.iv.next33.i.i.i, 3
  %gep44.i.i.i = getelementptr i8, ptr %invariant.gep.i.i.i, i64 %.idx38.i.i.i
  %i.mn = load i16, ptr %gep44.i.i.i, align 2, !tbaa !39
  %i.mo = icmp eq i16 %i.mn, 0
  br i1 %i.mo, label %bb.aj, label %.critedge2.split.loop.exit41.i.i.i, !llvm.loop !49

.critedge2.split.loop.exit41.i.i.i:               ; preds = %.lr.ph213
  %i.mp = trunc nuw nsw i64 %indvars.iv.next33.i.i.i to i32
  br label %find_tongue.exit.i.i

find_tongue.exit.i.i:                             ; preds = %bb.aj, %bb.ai, %.critedge2.split.loop.exit41.i.i.i
  %.0108.i.i = phi i32 [ %i.mp, %.critedge2.split.loop.exit41.i.i.i ], [ %i.mm, %bb.ai ], [ %i.mm, %bb.aj ]
  %.not68132.i.i = icmp slt i32 %.0108.i.i, %indvars146.le.i.i
  br i1 %.not68132.i.i, label %find_tongue.exit.thread.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %find_tongue.exit.i.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 1169) #10
  tail call void @abort() #11
  unreachable

find_tongue.exit.thread.i.i:                      ; preds = %bb.ah, %find_tongue.exit.i.i
  %indvars.iv.next.i28.i = add nuw nsw i64 %indvars.iv.i27.i, 1 ; 2 uses
  %exitcond.not.i29.i = icmp eq i64 %indvars.iv.next.i28.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i29.i, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !51

draw_background.exit:                             ; preds = %bb.d
  call void @av_frame_free(ptr noundef nonnull %i.c) #10
  br label %bb.bs

.loopexit:                                        ; preds = %find_tongue.exit.thread.i.i, %find_tongue.exit.thread.us.i.i, %tongue_outline.exit.i, %bb.n
  store i32 1, ptr %i.ab, align 8, !tbaa !71
  br label %bb.ak

bb.ak:                                            ; preds = %.loopexit, %bb.c
  %i.mq = load i32, ptr %i.s, align 4, !tbaa !33  ; 2 uses
  %i.mr = icmp sgt i32 %i.mq, 0
  br i1 %i.mr, label %.lr.ph, label %.preheader137

.lr.ph:                                           ; preds = %bb.ak
  %i.ms = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  br label %bb.al

.preheader137:                                    ; preds = %bb.al, %bb.ak
  %i.mt = phi i32 [ %i.mq, %bb.ak ], [ %i.nr, %bb.al ]
  %i.mu = load ptr, ptr %i.b, align 8, !tbaa !59  ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 108
  %i.mw = load i32, ptr %i.mv, align 4, !tbaa !79
  %i.mx = icmp sgt i32 %i.mw, 0
  br i1 %i.mx, label %.lr.ph147, label %.preheader

.lr.ph147:                                        ; preds = %.preheader137
  %i.my = add nsw i32 %i.r, -1
  %i.mz = add nsw i32 %i.t, -1
  %i.na = getelementptr inbounds nuw i8, ptr %i.i, i64 262280
  %i.nb = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %i.nc = sitofp nsz i32 %i.my to float
  %i.nd = sitofp nsz i32 %i.mz to float           ; 2 uses
  %i.ne = fneg nsz float %i.nd
  %i.nf = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ng = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.nh = shufflevector <2 x i32> %i.ng, <2 x i32> poison, <2 x i32> zeroinitializer
  br label %bb.am

bb.al:                                            ; preds = %.lr.ph, %bb.al
  %.0143 = phi i32 [ 0, %.lr.ph ], [ %i.nq, %bb.al ] ; 2 uses
  %i.ni = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.nj = load i32, ptr %i.ms, align 8, !tbaa !35
  %i.nk = mul nsw i32 %i.nj, %.0143
  %i.nl = sext i32 %i.nk to i64
  %i.nm = getelementptr inbounds i8, ptr %i.ni, i64 %i.nl
  %i.nn = load i32, ptr %i.q, align 8, !tbaa !32
  %i.no = shl nsw i32 %i.nn, 3
  %i.np = sext i32 %i.no to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.nm, i8 0, i64 %i.np, i1 false)
  %i.nq = add nuw nsw i32 %.0143, 1               ; 2 uses
  %i.nr = load i32, ptr %i.s, align 4, !tbaa !33  ; 2 uses
  %i.ns = icmp slt i32 %i.nq, %i.nr
  br i1 %i.ns, label %bb.al, label %.preheader137, !llvm.loop !53

.preheader.loopexit:                              ; preds = %._crit_edge
  %.pre173 = load i32, ptr %i.s, align 4, !tbaa !33
  br label %.preheader

.preheader:                                       ; preds = %.preheader.loopexit, %.preheader137
  %i.nt = phi i32 [ %.pre173, %.preheader.loopexit ], [ %i.mt, %.preheader137 ] ; 8 uses
  %i.nu = icmp sgt i32 %i.nt, 0
  %.pre174.pre = load ptr, ptr %i.u, align 8, !tbaa !73 ; 10 uses
  br i1 %i.nu, label %.lr.ph153, label %._crit_edge154.split

.lr.ph153:                                        ; preds = %.preheader
  %i.nv = getelementptr inbounds nuw i8, ptr %i.i, i64 262272
  %i.nw = load ptr, ptr %i.nv, align 8, !tbaa !72 ; 2 uses
  %i.nx = load ptr, ptr %i.nw, align 8, !tbaa !73
  %i.ny = load i32, ptr %i.q, align 8, !tbaa !32  ; 2 uses
  %i.nz = icmp sgt i32 %i.ny, 0
  br i1 %i.nz, label %.lr.ph150.preheader, label %._crit_edge154.split

.lr.ph150.preheader:                              ; preds = %.lr.ph153
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nw, i64 64
  %i.ob = load i32, ptr %i.oa, align 8, !tbaa !35
  %i.oc = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.od = load i32, ptr %i.oc, align 8, !tbaa !35
  %i.oe = sext i32 %i.od to i64
  %i.of = sext i32 %i.ob to i64
  %wide.trip.count163 = zext nneg i32 %i.nt to i64
  %wide.trip.count = zext nneg i32 %i.ny to i64
  br label %.lr.ph150

bb.am:                                            ; preds = %.lr.ph147, %._crit_edge
  %i.og = phi ptr [ %i.mu, %.lr.ph147 ], [ %i.qp, %._crit_edge ] ; 4 uses
  %.1146 = phi i32 [ 0, %.lr.ph147 ], [ %i.qq, %._crit_edge ] ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !73
  %i.oi = getelementptr inbounds nuw i8, ptr %i.og, i64 64
  %i.oj = load i32, ptr %i.oi, align 8, !tbaa !35
  %i.ok = sext i32 %i.oj to i64
  %i.ol = load ptr, ptr %i.u, align 8, !tbaa !73
  %i.om = load i32, ptr %i.nf, align 8, !tbaa !35
  %i.on = sdiv i32 %i.om, 2
  %i.oo = getelementptr inbounds nuw i8, ptr %i.og, i64 104
  %i.op = load i32, ptr %i.oo, align 8, !tbaa !80
  %i.oq = icmp sgt i32 %i.op, 0
  br i1 %i.oq, label %.lr.ph145, label %._crit_edge

.lr.ph145:                                        ; preds = %bb.am, %bb.ar
  %.0108144 = phi i32 [ %i.qk, %bb.ar ], [ 0, %bb.am ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.or = load ptr, ptr %i.na, align 8, !tbaa !42
  call void %i.or(ptr noundef %i.g, ptr noundef %i.oh, i64 noundef %i.ok, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, i32 noundef %.0108144, i32 noundef %.1146) #10
  %i.os = load i32, ptr %i.nb, align 4, !tbaa !74
  %.pre = load float, ptr %i.d, align 4, !tbaa !36 ; 5 uses
  %.pre172 = load float, ptr %i.e, align 4, !tbaa !36 ; 5 uses
  switch i32 %i.os, label %.lr.ph145._crit_edge [
    i32 2, label %bb.an
    i32 1, label %bb.ao
  ]

bb.an:                                            ; preds = %.lr.ph145
  %i.ot = fmul nsz float %.pre172, 1.200000e+01
  %i.ou = call nsz float @llvm.fmuladd.f32(float %.pre, float -2.000000e+00, float %i.ot)
  %i.ov = fadd nsz float %i.ou, 3.000000e+00
  %i.ow = fdiv nsz float 1.000000e+00, %i.ov      ; 2 uses
  %i.ox = fmul nsz float %.pre, 4.000000e+00
  %i.oy = fmul nsz float %i.ox, %i.ow
  %i.oz = fmul nsz float %.pre172, 9.000000e+00
  %i.pa = fmul nsz float %i.oz, %i.ow
  br label %.lr.ph145._crit_edge

bb.ao:                                            ; preds = %.lr.ph145
  %i.pb = fmul nsz float %.pre172, 1.200000e+01
  %i.pc = call nsz float @llvm.fmuladd.f32(float %.pre, float -2.000000e+00, float %i.pb)
  %i.pd = fadd nsz float %i.pc, 3.000000e+00
  %i.pe = fdiv nsz float 1.000000e+00, %i.pd      ; 2 uses
  %i.pf = fmul nsz float %.pre, 4.000000e+00
  %i.pg = fmul nsz float %i.pf, %i.pe
  %i.ph = fmul nsz float %.pre172, 6.000000e+00
  %i.pi = fmul nsz float %i.ph, %i.pe
end_hunk_0
