Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/celp_filters?download=true
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@ff_celp_lp_synthesis_filter:bb.a
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
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = add i32 %3, -4                           ; 2 uses
  %.not175 = icmp slt i32 %3, 4
  br i1 %.not175, label %._crit_edge185, label %.lr.ph184

.lr.ph184:                                        ; preds = %bb.a
  %i.c = load float, ptr %1, align 4, !tbaa !15   ; 3 uses
  %i.d = fneg nsz float %i.c                      ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds i8, ptr %0, i64 -8
  %i.g = getelementptr inbounds i8, ptr %0, i64 -16
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !15
  %i.i = load <2 x float>, ptr %i.g, align 4, !tbaa !15
  %i.j = load float, ptr %i.e, align 4, !tbaa !15 ; 2 uses
  %i.k = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.c, float %i.j) ; 2 uses
  %i.l = fneg nsz float %i.j
  %i.m = load float, ptr %i.a, align 4, !tbaa !15
  %i.n = tail call nsz float @llvm.fmuladd.f32(float %i.l, float %i.c, float %i.m)
  %i.o = tail call nsz float @llvm.fmuladd.f32(float %i.d, float %i.k, float %i.n)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.q = icmp sgt i32 %4, 5
  %i.r = insertelement <2 x float> poison, float %i.k, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.o, i64 1
  %i.t = fneg nsz <2 x float> %i.s                ; 2 uses
  %i.u = zext nneg i32 %4 to i64
  %i.v = insertelement <2 x float> poison, float %i.d, i64 0
  %i.w = insertelement <2 x float> <float -0.000000e+00, float poison>, float %i.d, i64 1 ; 2 uses
  %i.x = shufflevector <2 x float> %i.v, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph184, %._crit_edge
  %.0182 = phi ptr [ %0, %.lr.ph184 ], [ %i.cm, %._crit_edge ] ; 3 uses
  %.0158177 = phi i32 [ 0, %.lr.ph184 ], [ %i.co, %._crit_edge ]
  %.0162176 = phi ptr [ %2, %.lr.ph184 ], [ %i.cn, %._crit_edge ] ; 5 uses
  %i.y = phi <2 x float> [ %i.h, %.lr.ph184 ], [ %i.ci, %._crit_edge ] ; 5 uses
  %i.z = phi <2 x float> [ %i.i, %.lr.ph184 ], [ %i.ce, %._crit_edge ] ; 4 uses
  %i.aa = load float, ptr %.0162176, align 4, !tbaa !15
  %i.ab = getelementptr inbounds nuw i8, ptr %.0162176, i64 4
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !15
  %i.ad = getelementptr inbounds nuw i8, ptr %.0162176, i64 8
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !15
  %i.af = getelementptr inbounds nuw i8, ptr %.0162176, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !15
  %i.ah = load float, ptr %i.a, align 4, !tbaa !15
  %i.ai = fneg nsz float %i.ah                    ; 2 uses
  %i.aj = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.ak = shufflevector <2 x float> %i.aj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.al = shufflevector <2 x float> %i.z, <2 x float> %i.y, <2 x i32> <i32 1, i32 3>
  %i.am = insertelement <2 x float> poison, float %i.aa, i64 0
  %i.an = insertelement <2 x float> %i.am, float %i.ae, i64 1
  %i.ao = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.al, <2 x float> %i.an) ; 2 uses
  %i.ap = load <2 x float>, ptr %1, align 4, !tbaa !15
  %i.aq = fneg nsz <2 x float> %i.ap              ; 2 uses
  %i.ar = shufflevector <2 x float> %i.aq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.as = insertelement <2 x float> %i.ar, float %i.ai, i64 1
  %i.at = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.au = insertelement <2 x float> %i.ao, float %i.ac, i64 1
  %i.av = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.at, <2 x float> %i.au)
  %i.aw = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ax = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.aw, <2 x float> %i.av)
  %i.ay = load float, ptr %i.p, align 4, !tbaa !15
  %i.az = fneg nsz float %i.ay
  %i.ba = insertelement <2 x float> poison, float %i.az, i64 0
  %i.bb = shufflevector <2 x float> %i.ba, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.z, <2 x float> %i.ax) ; 2 uses
  %i.bd = shufflevector <2 x float> %i.ao, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.be = insertelement <2 x float> %i.bd, float %i.ag, i64 1
  %i.bf = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.y, <2 x float> %i.be) ; 2 uses
  br i1 %i.q, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.bg = shufflevector <2 x float> %i.z, <2 x float> %i.y, <2 x i32> <i32 1, i32 2>
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 5, %.lr.ph.preheader ] ; 3 uses
  %i.bh = phi <2 x float> [ %i.bp, %.lr.ph ], [ %i.z, %.lr.ph.preheader ] ; 2 uses
  %i.bi = phi <2 x float> [ %i.bx, %.lr.ph ], [ %i.bc, %.lr.ph.preheader ]
  %i.bj = phi <2 x float> [ %i.bt, %.lr.ph ], [ %i.bg, %.lr.ph.preheader ]
  %i.bk = phi <2 x float> [ %i.by, %.lr.ph ], [ %i.bf, %.lr.ph.preheader ]
  %i.bl = getelementptr [4 x i8], ptr %1, i64 %indvars.iv
  %i.bm = getelementptr i8, ptr %i.bl, i64 -4
  %i.bn = xor i64 %indvars.iv, -1
  %i.bo = getelementptr inbounds [4 x i8], ptr %.0182, i64 %i.bn
  %i.bp = load <2 x float>, ptr %i.bo, align 4, !tbaa !15 ; 3 uses
  %i.bq = load <2 x float>, ptr %i.bm, align 4, !tbaa !15
  %i.br = fneg nsz <2 x float> %i.bq              ; 2 uses
  %i.bs = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bp, <2 x float> %i.bh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bt, <2 x float> %i.bi)
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bj, <2 x float> %i.bk)
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.bx = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bp, <2 x float> %i.bu) ; 2 uses
  %i.by = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.bh, <2 x float> %i.bv) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.bz = icmp samesign ult i64 %indvars.iv.next, %i.u
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !48

._crit_edge:                                      ; preds = %.lr.ph, %bb.b
  %i.ca = phi <2 x float> [ %i.bf, %bb.b ], [ %i.by, %.lr.ph ] ; 2 uses
  %i.cb = phi <2 x float> [ %i.bc, %bb.b ], [ %i.bx, %.lr.ph ] ; 5 uses
  %i.cc = shufflevector <2 x float> %i.ca, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.w, <2 x float> %i.ca)
  %5 = shufflevector <2 x float> %i.cb, <2 x float> <float 0.000000e+00, float poison>, <2 x i32> <i32 2, i32 0>
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %5, <2 x float> %i.w, <2 x float> %i.cb) ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.x, <2 x float> %i.cf, <2 x float> %i.cd)
  %i.ch = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.ch, <2 x float> %i.cg) ; 2 uses
  %i.cj = shufflevector <2 x float> %i.cb, <2 x float> %i.ci, <4 x i32> <i32 0, i32 poison, i32 2, i32 3>
  %i.ck = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cl = shufflevector <4 x float> %i.cj, <4 x float> %i.ck, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  store <4 x float> %i.cl, ptr %.0182, align 4, !tbaa !15
  %i.cm = getelementptr inbounds nuw i8, ptr %.0182, i64 16 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.0162176, i64 16 ; 2 uses
  %i.co = add nuw nsw i32 %.0158177, 4            ; 2 uses
  %.not = icmp sgt i32 %i.co, %i.b
  br i1 %.not, label %._crit_edge185.loopexit, label %bb.b, !llvm.loop !49

._crit_edge185.loopexit:                          ; preds = %._crit_edge
  %i.cp = and i32 %i.b, -4
  %i.cq = add nuw i32 %i.cp, 4
  br label %._crit_edge185

._crit_edge185:                                   ; preds = %._crit_edge185.loopexit, %bb.a
  %.0162.lcssa = phi ptr [ %2, %bb.a ], [ %i.cn, %._crit_edge185.loopexit ] ; 3 uses
  %.0158.lcssa = phi i32 [ 0, %bb.a ], [ %i.cq, %._crit_edge185.loopexit ] ; 4 uses
  %.0.lcssa = phi ptr [ %0, %bb.a ], [ %i.cm, %._crit_edge185.loopexit ] ; 3 uses
  %.0.lcssa234 = ptrtoaddr ptr %.0.lcssa to i64
  %.0162.lcssa235 = ptrtoaddr ptr %.0162.lcssa to i64
  %i.cr = zext i32 %.0158.lcssa to i64            ; 3 uses
  %i.cs = sub nsw i64 0, %i.cr                    ; 2 uses
  %i.ct = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %i.cs ; 5 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %.0162.lcssa, i64 %i.cs ; 2 uses
  %i.cv = icmp slt i32 %.0158.lcssa, %3
  br i1 %i.cv, label %.lr.ph196, label %._crit_edge197

.lr.ph196:                                        ; preds = %._crit_edge185
  %.not163189 = icmp slt i32 %4, 1
  br i1 %.not163189, label %.lr.ph196.split.us.preheader, label %.lr.ph192.preheader

.lr.ph196.split.us.preheader:                     ; preds = %.lr.ph196
  %i.cw = xor i32 %.0158.lcssa, -1
  %i.cx = add i32 %3, %i.cw                       ; 2 uses
  %i.cy = zext i32 %i.cx to i64
  %i.cz = add nuw nsw i64 %i.cy, 1                ; 2 uses
  %min.iters.check = icmp ult i32 %i.cx, 7
  %i.da = sub i64 %.0162.lcssa235, %.0.lcssa234
  %diff.check = icmp ugt i64 %i.da, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph196.split.us.preheader237, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph196.split.us.preheader
  %n.vec = and i64 %i.cz, 8589934584              ; 3 uses
  %i.db = add nuw nsw i64 %n.vec, %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dc = getelementptr inbounds [4 x i8], ptr %.0162.lcssa, i64 %index ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %wide.load = load <4 x float>, ptr %i.dc, align 4, !tbaa !15
  %wide.load236 = load <4 x float>, ptr %i.dd, align 4, !tbaa !15
  %i.de = getelementptr inbounds [4 x i8], ptr %.0.lcssa, i64 %index ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  store <4 x float> %wide.load, ptr %i.de, align 4, !tbaa !15
  store <4 x float> %wide.load236, ptr %i.df, align 4, !tbaa !15
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.dg = icmp eq i64 %index.next, %n.vec
  br i1 %i.dg, label %middle.block, label %vector.body, !llvm.loop !50

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cz, %n.vec
  br i1 %cmp.n, label %._crit_edge197, label %.lr.ph196.split.us.preheader237

.lr.ph196.split.us.preheader237:                  ; preds = %.lr.ph196.split.us.preheader, %middle.block
  %indvars.iv214.ph = phi i64 [ %i.cr, %.lr.ph196.split.us.preheader ], [ %i.db, %middle.block ]
  br label %.lr.ph196.split.us

.lr.ph192.preheader:                              ; preds = %.lr.ph196
  %i.dh = sext i32 %.0158.lcssa to i64
  %wide.trip.count212 = sext i32 %3 to i64
  %i.di = zext nneg i32 %4 to i64                 ; 2 uses
  %xtraiter = and i64 %i.di, 1
  %i.dj = icmp eq i32 %4, 1
  %unroll_iter = and i64 %i.di, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod242 = trunc i32 %4 to i1
  br label %.lr.ph192

.lr.ph196.split.us:                               ; preds = %.lr.ph196.split.us.preheader237, %.lr.ph196.split.us
  %indvars.iv214 = phi i64 [ %indvars.iv.next215, %.lr.ph196.split.us ], [ %indvars.iv214.ph, %.lr.ph196.split.us.preheader237 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv214
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !15
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv214
  store float %i.dl, ptr %i.dm, align 4, !tbaa !15
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.dn = trunc nuw i64 %indvars.iv.next215 to i32
  %i.do = icmp sgt i32 %3, %i.dn
  br i1 %i.do, label %.lr.ph196.split.us, label %._crit_edge197, !llvm.loop !51

.lr.ph192:                                        ; preds = %.lr.ph192.preheader, %._crit_edge193
  %indvars.iv209 = phi i64 [ %i.dh, %.lr.ph192.preheader ], [ %indvars.iv.next210, %._crit_edge193 ] ; 6 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv209
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !15 ; 3 uses
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv209 ; 4 uses
  store float %i.dq, ptr %i.dr, align 4, !tbaa !15
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph192.new

.lr.ph192.new:                                    ; preds = %.lr.ph192, %.lr.ph192.new
  %indvars.iv206 = phi i64 [ %indvars.iv.next207.1, %.lr.ph192.new ], [ 1, %.lr.ph192 ] ; 4 uses
  %i.ds = phi float [ %i.ei, %.lr.ph192.new ], [ %i.dq, %.lr.ph192 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph192.new ], [ 0, %.lr.ph192 ]
  %i.dt = getelementptr [4 x i8], ptr %1, i64 %indvars.iv206
  %i.du = getelementptr i8, ptr %i.dt, i64 -4
  %i.dv = load float, ptr %i.du, align 4, !tbaa !15
  %i.dw = sub nsw i64 %indvars.iv209, %indvars.iv206
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.dw
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !15
  %i.dz = fneg nsz float %i.dv
  %i.ea = tail call nsz float @llvm.fmuladd.f32(float %i.dz, float %i.dy, float %i.ds) ; 2 uses
  store float %i.ea, ptr %i.dr, align 4, !tbaa !15
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %i.eb = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.next207
  %i.ec = getelementptr i8, ptr %i.eb, i64 -4
  %i.ed = load float, ptr %i.ec, align 4, !tbaa !15
  %i.ee = sub nsw i64 %indvars.iv209, %indvars.iv.next207
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.ee
  %i.eg = load float, ptr %i.ef, align 4, !tbaa !15
  %i.eh = fneg nsz float %i.ed
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %i.eh, float %i.eg, float %i.ea) ; 3 uses
  store float %i.ei, ptr %i.dr, align 4, !tbaa !15
  %indvars.iv.next207.1 = add nuw nsw i64 %indvars.iv206, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge193.unr-lcssa, label %.lr.ph192.new, !llvm.loop !52

._crit_edge193.unr-lcssa:                         ; preds = %.lr.ph192.new
  br i1 %lcmp.mod.not, label %._crit_edge193, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge193.unr-lcssa, %.lr.ph192
  %indvars.iv206.epil.init = phi i64 [ 1, %.lr.ph192 ], [ %indvars.iv.next207.1, %._crit_edge193.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ %i.dq, %.lr.ph192 ], [ %i.ei, %._crit_edge193.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod242)
  %i.ej = getelementptr [4 x i8], ptr %1, i64 %indvars.iv206.epil.init
  %i.ek = getelementptr i8, ptr %i.ej, i64 -4
  %i.el = load float, ptr %i.ek, align 4, !tbaa !15
  %i.em = sub nsw i64 %indvars.iv209, %indvars.iv206.epil.init
  %i.en = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %i.em
  %i.eo = load float, ptr %i.en, align 4, !tbaa !15
  %i.ep = fneg nsz float %i.el
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.eo, float %.epil.init)
  store float %i.eq, ptr %i.dr, align 4, !tbaa !15
  br label %._crit_edge193

._crit_edge193:                                   ; preds = %._crit_edge193.unr-lcssa, %.epil.preheader
  %indvars.iv.next210 = add nuw nsw i64 %indvars.iv209, 1 ; 2 uses
  %exitcond213.not = icmp eq i64 %indvars.iv.next210, %wide.trip.count212
  br i1 %exitcond213.not, label %._crit_edge197, label %.lr.ph192, !llvm.loop !53

._crit_edge197:                                   ; preds = %._crit_edge193, %.lr.ph196.split.us, %middle.block, %._crit_edge185
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define void @ff_celp_lp_zero_synthesis_filterf(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) #0 {
bb.a:
  %i.a = ptrtoaddr ptr %2 to i64
  %i.b = ptrtoaddr ptr %0 to i64
  %i.c = icmp sgt i32 %3, 0
  br i1 %i.c, label %.lr.ph21, label %._crit_edge22

.lr.ph21:                                         ; preds = %bb.a
  %.not17 = icmp slt i32 %4, 1
  br i1 %.not17, label %.lr.ph21.split.us.preheader, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph21
  %wide.trip.count28 = zext nneg i32 %3 to i64
  %i.d = zext nneg i32 %4 to i64                  ; 2 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i32 %4, 1
  %unroll_iter = and i64 %i.d, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod41 = trunc i32 %4 to i1
  br label %.lr.ph

.lr.ph21.split.us.preheader:                      ; preds = %.lr.ph21
  %wide.trip.count33 = zext nneg i32 %3 to i64    ; 5 uses
  %min.iters.check = icmp ult i32 %3, 8
  %i.f = sub i64 %i.a, %i.b
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph21.split.us.preheader39, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph21.split.us.preheader
  %n.vec = and i64 %wide.trip.count33, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %wide.load = load <4 x float>, ptr %i.g, align 4, !tbaa !15
  %wide.load38 = load <4 x float>, ptr %i.h, align 4, !tbaa !15
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index ; 2 uses
end_hunk_0
