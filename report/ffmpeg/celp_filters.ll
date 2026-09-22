Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/celp_filters?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ff_celp_lp_synthesis_filter:bb.a
  %min.iters.check99 = icmp ult i32 %4, 8
  %n.vec101 = and i64 %i.az, 2147483640           ; 3 uses
  %i.ba = or disjoint i64 %n.vec101, 1
  %i.bb = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %7, i64 0
  %cmp.n115 = icmp eq i64 %n.vec101, %i.az
  br label %.preheader.us40

.preheader.us40:                                  ; preds = %.preheader.us40.preheader, %._crit_edge.us
  %indvars.iv65 = phi i64 [ %indvars.iv.next66, %._crit_edge.us ], [ 0, %.preheader.us40.preheader ] ; 5 uses
  br i1 %min.iters.check99, label %scalar.ph98.preheader, label %vector.body102

vector.body102:                                   ; preds = %.preheader.us40, %vector.body102
  %index103 = phi i64 [ %index.next112, %vector.body102 ], [ 0, %.preheader.us40 ] ; 2 uses
  %vec.phi104 = phi <4 x i32> [ %i.bq, %vector.body102 ], [ %i.bb, %.preheader.us40 ]
  %vec.phi105 = phi <4 x i32> [ %i.br, %vector.body102 ], [ zeroinitializer, %.preheader.us40 ]
  %i.bc = or disjoint i64 %index103, 1            ; 2 uses
  %i.bd = getelementptr [2 x i8], ptr %1, i64 %i.bc ; 2 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 -2
  %i.bf = getelementptr i8, ptr %i.bd, i64 6
  %wide.load106 = load <4 x i16>, ptr %i.be, align 2, !tbaa !10
  %wide.load107 = load <4 x i16>, ptr %i.bf, align 2, !tbaa !10
  %i.bg = sext <4 x i16> %wide.load106 to <4 x i32>
  %i.bh = sext <4 x i16> %wide.load107 to <4 x i32>
  %i.bi = sub nsw i64 %indvars.iv65, %i.bc
  %i.bj = getelementptr inbounds [2 x i8], ptr %0, i64 %i.bi ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bj, i64 -6
  %i.bl = getelementptr inbounds i8, ptr %i.bj, i64 -14
  %wide.load108 = load <4 x i16>, ptr %i.bk, align 2, !tbaa !10
  %wide.load109 = load <4 x i16>, ptr %i.bl, align 2, !tbaa !10
  %reverse110 = shufflevector <4 x i16> %wide.load108, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse111 = shufflevector <4 x i16> %wide.load109, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.bm = sext <4 x i16> %reverse110 to <4 x i32>
  %i.bn = sext <4 x i16> %reverse111 to <4 x i32>
  %i.bo = mul nsw <4 x i32> %i.bm, %i.bg
  %i.bp = mul nsw <4 x i32> %i.bn, %i.bh
  %i.bq = sub <4 x i32> %vec.phi104, %i.bo        ; 2 uses
  %i.br = sub <4 x i32> %vec.phi105, %i.bp        ; 2 uses
  %index.next112 = add nuw i64 %index103, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next112, %n.vec101
  br i1 %i.bs, label %middle.block113, label %vector.body102, !llvm.loop !44

middle.block113:                                  ; preds = %vector.body102
  %bin.rdx114 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx114) ; 2 uses
  br i1 %cmp.n115, label %._crit_edge.us, label %scalar.ph98.preheader

scalar.ph98.preheader:                            ; preds = %.preheader.us40, %middle.block113
  %indvars.iv60.ph = phi i64 [ 1, %.preheader.us40 ], [ %i.ba, %middle.block113 ]
  %.02533.us.ph = phi i32 [ %7, %.preheader.us40 ], [ %i.bt, %middle.block113 ]
  br label %scalar.ph98

scalar.ph98:                                      ; preds = %scalar.ph98.preheader, %scalar.ph98
  %indvars.iv60 = phi i64 [ %indvars.iv.next61, %scalar.ph98 ], [ %indvars.iv60.ph, %scalar.ph98.preheader ] ; 3 uses
  %.02533.us = phi i32 [ %i.cd, %scalar.ph98 ], [ %.02533.us.ph, %scalar.ph98.preheader ]
  %i.bu = getelementptr [2 x i8], ptr %1, i64 %indvars.iv60
  %i.bv = getelementptr i8, ptr %i.bu, i64 -2
  %i.bw = load i16, ptr %i.bv, align 2, !tbaa !10
  %i.bx = sext i16 %i.bw to i32
  %i.by = sub nsw i64 %indvars.iv65, %indvars.iv60
  %i.bz = getelementptr inbounds [2 x i8], ptr %0, i64 %i.by
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !10
  %i.cb = sext i16 %i.ca to i32
  %i.cc = mul nsw i32 %i.cb, %i.bx
  %i.cd = sub i32 %.02533.us, %i.cc               ; 2 uses
  %indvars.iv.next61 = add nuw nsw i64 %indvars.iv60, 1 ; 2 uses
  %exitcond64.not = icmp eq i64 %indvars.iv.next61, %wide.trip.count63
  br i1 %exitcond64.not, label %._crit_edge.us, label %scalar.ph98, !llvm.loop !45

._crit_edge.us:                                   ; preds = %scalar.ph98, %middle.block113
  %.lcssa = phi i32 [ %i.bt, %middle.block113 ], [ %i.cd, %scalar.ph98 ]
  %i.ce = ashr i32 %.lcssa, 12
  %i.cf = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv65
  %i.cg = load i16, ptr %i.cf, align 2, !tbaa !10
  %i.ch = sext i16 %i.cg to i32
  %i.ci = add nsw i32 %i.ce, %i.ch
  %i.cj = ashr i32 %i.ci, %6
  %i.ck = tail call i32 @llvm.smax.i32(i32 %i.cj, i32 -32768)
  %i.cl = tail call i32 @llvm.smin.i32(i32 %i.ck, i32 32767)
  %.0.i.us45 = trunc nsw i32 %i.cl to i16
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv65
  store i16 %.0.i.us45, ptr %i.cm, align 2, !tbaa !10
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count78
  br i1 %exitcond69.not, label %._crit_edge35, label %.preheader.us40, !llvm.loop !43

.preheader:                                       ; preds = %.preheader.preheader, %.critedge
  %indvars.iv55 = phi i64 [ %indvars.iv.next56, %.critedge ], [ 0, %.preheader.preheader ] ; 5 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.db, %vector.body ], [ %i.ay, %.preheader ]
  %vec.phi93 = phi <4 x i32> [ %i.dc, %vector.body ], [ zeroinitializer, %.preheader ]
  %i.cn = or disjoint i64 %index, 1               ; 2 uses
  %i.co = getelementptr [2 x i8], ptr %1, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -2
  %i.cq = getelementptr i8, ptr %i.co, i64 6
  %wide.load = load <4 x i16>, ptr %i.cp, align 2, !tbaa !10
  %wide.load94 = load <4 x i16>, ptr %i.cq, align 2, !tbaa !10
  %i.cr = sext <4 x i16> %wide.load to <4 x i32>
  %i.cs = sext <4 x i16> %wide.load94 to <4 x i32>
  %i.ct = sub nsw i64 %indvars.iv55, %i.cn
  %i.cu = getelementptr inbounds [2 x i8], ptr %0, i64 %i.ct ; 2 uses
  %i.cv = getelementptr inbounds i8, ptr %i.cu, i64 -6
  %i.cw = getelementptr inbounds i8, ptr %i.cu, i64 -14
  %wide.load95 = load <4 x i16>, ptr %i.cv, align 2, !tbaa !10
  %wide.load96 = load <4 x i16>, ptr %i.cw, align 2, !tbaa !10
  %reverse = shufflevector <4 x i16> %wide.load95, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %reverse97 = shufflevector <4 x i16> %wide.load96, <4 x i16> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  %i.cx = sext <4 x i16> %reverse to <4 x i32>
  %i.cy = sext <4 x i16> %reverse97 to <4 x i32>
  %i.cz = mul nsw <4 x i32> %i.cx, %i.cr
  %i.da = mul nsw <4 x i32> %i.cy, %i.cs
  %i.db = sub <4 x i32> %vec.phi, %i.cz           ; 2 uses
  %i.dc = sub <4 x i32> %vec.phi93, %i.da         ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.dc, %i.db
  %i.de = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 1, %.preheader ], [ %i.ax, %middle.block ]
  %.02533.ph = phi i32 [ %7, %.preheader ], [ %i.de, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %.02533 = phi i32 [ %i.do, %scalar.ph ], [ %.02533.ph, %scalar.ph.preheader ]
  %i.df = getelementptr [2 x i8], ptr %1, i64 %indvars.iv
  %i.dg = getelementptr i8, ptr %i.df, i64 -2
  %i.dh = load i16, ptr %i.dg, align 2, !tbaa !10
  %i.di = sext i16 %i.dh to i32
  %i.dj = sub nsw i64 %indvars.iv55, %indvars.iv
  %i.dk = getelementptr inbounds [2 x i8], ptr %0, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !10
  %i.dm = sext i16 %i.dl to i32
  %i.dn = mul nsw i32 %i.dm, %i.di
  %i.do = sub i32 %.02533, %i.dn                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count63
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph, !llvm.loop !47

._crit_edge:                                      ; preds = %scalar.ph, %middle.block
  %.lcssa92 = phi i32 [ %i.de, %middle.block ], [ %i.do, %scalar.ph ]
  %i.dp = ashr i32 %.lcssa92, 12
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %indvars.iv55
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !10
  %i.ds = sext i16 %i.dr to i32
  %i.dt = add nsw i32 %i.dp, %i.ds
  %i.du = ashr i32 %i.dt, %6                      ; 2 uses
  %i.dv = add nsw i32 %i.du, 32768
  %.not30 = icmp ult i32 %i.dv, 65536
  br i1 %.not30, label %.critedge, label %._crit_edge35

.critedge:                                        ; preds = %._crit_edge
  %.0.i = trunc nsw i32 %i.du to i16
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %indvars.iv55
  store i16 %.0.i, ptr %i.dw, align 2, !tbaa !10
  %indvars.iv.next56 = add nuw nsw i64 %indvars.iv55, 1 ; 2 uses
  %exitcond59.not = icmp eq i64 %indvars.iv.next56, %wide.trip.count78
  br i1 %exitcond59.not, label %._crit_edge35, label %.preheader, !llvm.loop !43

._crit_edge35:                                    ; preds = %._crit_edge, %.critedge, %._crit_edge.us, %.preheader.us, %.critedge.us, %.preheader.us.us.prol.loopexit, %.preheader.us.us, %middle.block128, %bb.a
  %.2 = phi i32 [ 0, %middle.block128 ], [ 0, %bb.a ], [ 0, %.preheader.us.us.prol.loopexit ], [ 0, %._crit_edge.us ], [ 0, %.critedge.us ], [ 0, %.preheader.us.us ], [ 1, %.preheader.us ], [ 0, %.critedge ], [ 1, %._crit_edge ]
  ret i32 %.2
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_celp_lp_synthesis_filterf(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.b = add i32 %3, -4                           ; 2 uses
  %.not175 = icmp slt i32 %3, 4
  br i1 %.not175, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.a
  %i.c = load float, ptr %1, align 4, !tbaa !15   ; 3 uses
  %i.d = fneg nsz float %i.c                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !15
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.k = load float, ptr %i.a, align 4, !tbaa !15 ; 2 uses
  %i.l = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.c, float %i.k) ; 2 uses
  %i.m = fneg nsz float %i.k
  %i.n = load float, ptr %i.e, align 4, !tbaa !15
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %i.m, float %i.c, float %i.n)
  %i.p = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.l, float %i.o)
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.r = icmp sgt i32 %4, 5
  %i.s = insertelement <2 x float> poison, float %i.l, i64 0
  %i.t = insertelement <2 x float> %i.s, float %i.p, i64 1
  %i.u = fneg nsz <2 x float> %i.t                ; 2 uses
  %i.v = zext nneg i32 %4 to i64
  %i.w = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.d, i64 1 ; 2 uses
  %i.x = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.d, i64 0
  %5 = shufflevector <2 x float> %i.w, <2 x float> %i.u, <2 x i32> <i32 1, i32 2>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph184, %._crit_edge
  %.0182 = phi ptr [ %0, %.lr.ph184 ], [ %i.co, %._crit_edge ] ; 4 uses
  %.0158177 = phi i32 [ 0, %.lr.ph184 ], [ %i.cq, %._crit_edge ]
  %.0162176 = phi ptr [ %2, %.lr.ph184 ], [ %i.cp, %._crit_edge ] ; 5 uses
  %i.y = phi <2 x float> [ %i.h, %.lr.ph184 ], [ %i.cl, %._crit_edge ] ; 5 uses
  %i.z = phi <2 x float> [ %i.j, %.lr.ph184 ], [ %i.ch, %._crit_edge ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0162176, i64 4
  %i.ab = getelementptr inbounds nuw i8, ptr %.0162176, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.0162176, i64 12
  %i.ae = load float, ptr %i.aa, align 4, !tbaa !15
  %i.af = load float, ptr %.0162176, align 4, !tbaa !15
  %i.ag = load float, ptr %i.ad, align 4, !tbaa !15
  %i.ah = load <2 x float>, ptr %i.a, align 4, !tbaa !15
  %i.ai = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.aj = fneg nsz <2 x float> %i.ah              ; 2 uses
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.al = shufflevector <2 x float> %i.z, <2 x float> %i.y, <2 x i32> <i32 0, i32 3>
  %i.am = insertelement <2 x float> poison, float %i.af, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ac, i64 1
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.an) ; 2 uses
  %i.ap = fneg nsz <2 x float> %i.ai
  %i.aq = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ar = insertelement <2 x float> %i.ao, float %i.ae, i64 1
  %i.as = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aj, <2 x float> %i.aq, <2 x float> %i.ar)
  %i.at = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.au = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.at, <2 x float> %i.as)
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aw = load float, ptr %i.q, align 4, !tbaa !15
  %i.ax = fneg nsz float %i.aw
  %i.ay = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.az = shufflevector <2 x float> %i.ay, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ba = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.z, <2 x float> %i.av) ; 2 uses
  %i.bb = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %i.bb, float %i.ag, i64 1
  %i.bd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.y, <2 x float> %i.bc) ; 2 uses
  br i1 %i.r, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.be = extractelement <2 x float> %i.y, i64 0
  %i.bf = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ] ; 3 uses
  %.1171 = phi float [ %i.cb, %.lr.ph ], [ %i.be, %.lr.ph.preheader ]
  %i.bg = phi <2 x float> [ %i.bn, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ] ; 4 uses
  %i.bh = phi <2 x float> [ %i.bz, %.lr.ph ], [ %i.bd, %.lr.ph.preheader ]
  %i.bi = phi <2 x float> [ %i.by, %.lr.ph ], [ %i.ba, %.lr.ph.preheader ]
  %i.bj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bk = getelementptr i8, ptr %i.bj, i64 -4
  %i.bl = xor i64 %indvars.iv, -1
  %i.bm = getelementptr inbounds [4 x i8], ptr %.0182, i64 %i.bl
  %i.bn = load <2 x float>, ptr %i.bm, align 4, !tbaa !15 ; 3 uses
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bp = load <2 x float>, ptr %i.bk, align 4, !tbaa !15
  %i.bq = fneg nsz <2 x float> %i.bp              ; 2 uses
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = shufflevector <2 x float> %i.bg, <2 x float> %i.bn, <2 x i32> <i32 0, i32 3>
  %i.bt = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bs, <2 x float> %i.bi)
  %i.bu = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bv = insertelement <2 x float> %i.bu, float %.1171, i64 1
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bv, <2 x float> %i.bh)
  %i.bx = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bo, <2 x float> %i.bt) ; 2 uses
  %i.bz = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bx, <2 x float> %i.bg, <2 x float> %i.bw) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ca = icmp samesign ult i64 %indvars.iv.next, %i.v
  %i.cb = extractelement <2 x float> %i.bg, i64 0
  br i1 %i.ca, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.cc = phi <2 x float> [ %i.bd, %bb.b ], [ %i.bz, %.lr.ph ] ; 2 uses
  %i.cd = phi <2 x float> [ %i.ba, %bb.b ], [ %i.by, %.lr.ph ] ; 4 uses
  %i.ce = shufflevector <2 x float> %i.cc, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.cf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.ce, <2 x float> %i.cc)
  %i.cg = shufflevector <2 x float> %i.cd, <2 x float> <float poison, float 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.x, <2 x float> %i.cd) ; 2 uses
  %i.ci = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.ci, <2 x float> %i.cf)
  %i.ck = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.u, <2 x float> %i.ck, <2 x float> %i.cj) ; 2 uses
  %i.cm = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.cm, ptr %.0182, align 4, !tbaa !15
  %i.cn = getelementptr inbounds nuw i8, ptr %.0182, i64 8
  store <2 x float> %i.cl, ptr %i.cn, align 4, !tbaa !15
  %i.co = getelementptr inbounds nuw i8, ptr %.0182, i64 16 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.0162176, i64 16 ; 2 uses
  %i.cq = add nuw nsw i32 %.0158177, 4            ; 2 uses
  %.not = icmp sgt i32 %i.cq, %i.b
  br i1 %.not, label %._crit_edge185.loopexit, label %bb.b, !llvm.loop !49

._crit_edge185.loopexit:                          ; preds = %._crit_edge
  %i.cr = and i32 %i.b, -4
  %i.cs = add nuw i32 %i.cr, 4
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %._crit_edge185.loopexit, %bb.a
  %.0162.lcssa = phi ptr [ %2, %bb.a ], [ %i.cp, %._crit_edge185.loopexit ] ; 3 uses
  %.0158.lcssa = phi i32 [ 0, %bb.a ], [ %i.cs, %._crit_edge185.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.co, %._crit_edge185.loopexit ] ; 3 uses
  %.0.lcssa232 = ptrtoaddr ptr %.0.lcssa to i64
  %.0162.lcssa233 = ptrtoaddr ptr %.0162.lcssa to i64
  %i.ct = zext i32 %.0158.lcssa to i64            ; 3 uses
  %i.cu = sub nsw i64 0, %i.ct                    ; 2 uses
  %i.cv = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.cu ; 5 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %.0162.lcssa, i64 %i.cu ; 2 uses
  %i.cx = icmp slt i32 %.0158.lcssa, %3
  br i1 %i.cx, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %._crit_edge185
  %.not163189 = icmp slt i32 %4, 1
  br i1 %.not163189, label %.lr.ph196.split.us.preheader, label %.lr.ph192.preheader

.lr.ph196.split.us.preheader:                     ; preds = %.lr.ph196
  %i.cy = xor i32 %.0158.lcssa, -1
  %i.cz = add i32 %3, %i.cy                       ; 2 uses
  %i.da = zext i32 %i.cz to i64
  %i.db = add nuw nsw i64 %i.da, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cz, 7
  %i.dc = sub i64 %.0162.lcssa233, %.0.lcssa232
  %diff.check = icmp ugt i64 %i.dc, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph196.split.us.preheader235, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph196.split.us.preheader
  %n.vec = and i64 %i.db, 8589934584              ; 3 uses
  %i.dd = add nuw nsw i64 %n.vec, %i.ct
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %.0162.lcssa, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %wide.load = load <4 x float>, ptr %i.de, align 4, !tbaa !15
  %wide.load234 = load <4 x float>, ptr %i.df, align 4, !tbaa !15
  %i.dg = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %index ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  store <4 x float> %wide.load, ptr %i.dg, align 4, !tbaa !15
  store <4 x float> %wide.load234, ptr %i.dh, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.di = icmp eq i64 %index.next, %n.vec
  br i1 %i.di, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %._crit_edge197, label %.lr.ph196.split.us.preheader235

.lr.ph196.split.us.preheader235:                  ; preds = %.lr.ph196.split.us.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ %i.ct, %.lr.ph196.split.us.preheader ], [ %i.dd, %middle.block ]
  br label %.lr.ph196.split.us

.lr.ph192.preheader:                              ; preds = %.lr.ph196
  %i.dj = sext i32 %.0158.lcssa to i64
  %wide.trip.count212 = sext i32 %3 to i64
  %i.dk = zext nneg i32 %4 to i64                 ; 2 uses
  %xtraiter = and i64 %i.dk, 1
  %i.dl = icmp eq i32 %4, 1
  %unroll_iter = and i64 %i.dk, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod240 = trunc i32 %4 to i1
  br label %.lr.ph192

.lr.ph196.split.us:                               ; preds = %.lr.ph196.split.us.preheader235, %.lr.ph196.split.us
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph196.split.us ], [ %indvars.iv214.ph, %.lr.ph196.split.us.preheader235 ] ; 3 uses
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv214
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !15
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv214
  store float %i.dn, ptr %i.do, align 4, !tbaa !15
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.dp = trunc nuw i64 %indvars.iv.next215 to i32
  %i.dq = icmp sgt i32 %3, %i.dp
  br i1 %i.dq, label %.lr.ph196.split.us, label %._crit_edge197, !llvm.loop !51

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %._crit_edge193
  %indvars.iv209 = phi i64 [ %i.dj, %.lr.ph192.preheader ], [ %indvars.iv.next210, %._crit_edge193 ] ; 6 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv209
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !15 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv209 ; 4 uses
  store float %i.ds, ptr %i.dt, align 4, !tbaa !15
  br i1 %i.dl, label %.epil.preheader, label %.lr.ph192.new

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %indvars.iv206 = phi i64 [ %indvars.iv.next207.1, %.lr.ph192.new ], [ 1, %.lr.ph192 ] ; 4 uses
  %i.du = phi float [ %i.ek, %.lr.ph192.new ], [ %i.ds, %.lr.ph192 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.dv = getelementptr [4 x i8], ptr %1, i64 %indvars.iv206
  %i.dw = getelementptr i8, ptr %i.dv, i64 -4
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !15
  %i.dy = sub nsw i64 %indvars.iv209, %indvars.iv206
  %i.dz = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %i.dy
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !15
  %i.eb = fneg nsz float %i.dx
  %i.ec = tail call nsz float @llvm.fmuladd.f32(float %i.eb, float %i.ea, float %i.du) ; 2 uses
  store float %i.ec, ptr %i.dt, align 4, !tbaa !15
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.ed = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next207
  %i.ee = getelementptr i8, ptr %i.ed, i64 -4
end_hunk_0
