Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/raylib/original/raudio?download=true
inline.NumInlined: 3136
inline.NumDeleted: 390
loop-unroll.NumCompletelyUnrolled: 96
loop-unroll.NumRuntimeUnrolled: 195
loop-unroll.NumUnrolled: 299
begin_hunk_0_@convert_channels_short_interleaved:bb.a
  %smin85 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.l)
  %i.q = add i32 %smin85, %indvars.iv86           ; 5 uses
  %i.r = zext i32 %i.q to i64                     ; 9 uses
  %min.iters.check148 = icmp ult i32 %i.q, 5
  %i.s = and i64 %i.r, 3                          ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  %i.u = select i1 %i.t, i64 4, i64 %i.s
  %n.vec150 = sub nsw i64 %i.r, %i.u              ; 2 uses
  %min.iters.check136 = icmp ult i32 %i.q, 5
  %i.v = and i64 %i.r, 3                          ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  %i.x = select i1 %i.w, i64 4, i64 %i.v
  %n.vec138 = sub nsw i64 %i.r, %i.x              ; 2 uses
  %min.iters.check124 = icmp ult i32 %i.q, 2
  %n.vec126 = and i64 %i.r, 4294967294            ; 3 uses
  %cmp.n133 = icmp eq i64 %n.vec126, %i.r
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.us.i.us.us, %.lr.ph78.us.i.us.us
  %indvars.iv103.i.us.us = phi i64 [ 0, %.lr.ph78.us.i.us.us ], [ %indvars.iv.next104.i.us.us, %.loopexit.us.i.us.us ] ; 5 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv103.i.us.us
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = and i8 %i.z, 6
  switch i8 %i.aa, label %.unreachabledefault [
    i8 6, label %.preheader.us.i.us.us
    i8 2, label %.preheader67.us.i.us.us
    i8 4, label %.preheader69.us.i.us.us
    i8 0, label %.loopexit.us.i.us.us
  ]

.preheader69.us.i.us.us:                          ; preds = %bb.b
  br i1 %i.o, label %.lr.ph.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph.us.i.us.us:                                ; preds = %.preheader69.us.i.us.us
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr [4 x i8], ptr %i.ac, i64 %i.p ; 2 uses
  br i1 %min.iters.check148, label %scalar.ph147.preheader, label %vector.body151

vector.body151:                                   ; preds = %.lr.ph.us.i.us.us, %vector.body151
  %index152 = phi i64 [ %index.next156, %vector.body151 ], [ 0, %.lr.ph.us.i.us.us ] ; 6 uses
  %i.ae = getelementptr [4 x i8], ptr %i.ad, i64 %index152
  %wide.load153 = load <4 x float>, ptr %i.ae, align 4
  %i.af = shl nuw nsw i64 %index152, 3
  %i.ag = shl i64 %index152, 3
  %i.ah = shl i64 %index152, 3
  %i.ai = shl i64 %index152, 3
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.af
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ah
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ai
  %i.an = getelementptr inbounds nuw i8, ptr %i.aj, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 20
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %wide.vec154 = load <8 x float>, ptr %i.an, align 4
  %strided.vec155 = shufflevector <8 x float> %wide.vec154, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.ar = fadd <4 x float> %wide.load153, %strided.vec155 ; 4 uses
  %i.as = extractelement <4 x float> %i.ar, i64 0
  store float %i.as, ptr %i.an, align 4
  %i.at = extractelement <4 x float> %i.ar, i64 1
  store float %i.at, ptr %i.ao, align 4
  %i.au = extractelement <4 x float> %i.ar, i64 2
  store float %i.au, ptr %i.ap, align 4
  %i.av = extractelement <4 x float> %i.ar, i64 3
  store float %i.av, ptr %i.aq, align 4
  %index.next156 = add nuw i64 %index152, 4       ; 2 uses
  %i.aw = icmp eq i64 %index.next156, %n.vec150
  br i1 %i.aw, label %scalar.ph147.preheader, label %vector.body151, !llvm.loop !1049

scalar.ph147.preheader:                           ; preds = %vector.body151, %.lr.ph.us.i.us.us
  %indvars.iv94.i.us.us.ph = phi i64 [ 0, %.lr.ph.us.i.us.us ], [ %n.vec150, %vector.body151 ]
  br label %scalar.ph147

scalar.ph147:                                     ; preds = %scalar.ph147.preheader, %scalar.ph147
  %indvars.iv94.i.us.us = phi i64 [ %indvars.iv.next95.i.us.us, %scalar.ph147 ], [ %indvars.iv94.i.us.us.ph, %scalar.ph147.preheader ] ; 3 uses
  %i.ax = getelementptr [4 x i8], ptr %i.ad, i64 %indvars.iv94.i.us.us
  %i.ay = load float, ptr %i.ax, align 4
  %.idx.i.us.us = shl nuw nsw i64 %indvars.iv94.i.us.us, 3
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i.us.us
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bb = load float, ptr %i.ba, align 4
  %i.bc = fadd float %i.ay, %i.bb
  store float %i.bc, ptr %i.ba, align 4
  %indvars.iv.next95.i.us.us = add nuw nsw i64 %indvars.iv94.i.us.us, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next95.i.us.us, %i.r
  br i1 %exitcond88.not, label %.loopexit.us.i.us.us, label %scalar.ph147, !llvm.loop !1050

.preheader67.us.i.us.us:                          ; preds = %bb.b
  br i1 %i.o, label %.lr.ph74.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph74.us.i.us.us:                              ; preds = %.preheader67.us.i.us.us
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = getelementptr [4 x i8], ptr %i.be, i64 %i.p ; 2 uses
  br i1 %min.iters.check136, label %scalar.ph135.preheader, label %vector.body139

vector.body139:                                   ; preds = %.lr.ph74.us.i.us.us, %vector.body139
  %index140 = phi i64 [ %index.next144, %vector.body139 ], [ 0, %.lr.ph74.us.i.us.us ] ; 6 uses
  %i.bg = getelementptr [4 x i8], ptr %i.bf, i64 %index140
  %wide.load141 = load <4 x float>, ptr %i.bg, align 4
  %i.bh = shl nuw nsw i64 %index140, 3
  %i.bi = shl i64 %index140, 3
  %i.bj = shl i64 %index140, 3
  %i.bk = shl i64 %index140, 3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bh ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bi
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bj
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.bk
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %wide.vec142 = load <8 x float>, ptr %i.bl, align 16
  %strided.vec143 = shufflevector <8 x float> %wide.vec142, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %i.bs = fadd <4 x float> %wide.load141, %strided.vec143 ; 4 uses
  %i.bt = extractelement <4 x float> %i.bs, i64 0
  store float %i.bt, ptr %i.bl, align 16
  %i.bu = extractelement <4 x float> %i.bs, i64 1
  store float %i.bu, ptr %i.bn, align 8
  %i.bv = extractelement <4 x float> %i.bs, i64 2
  store float %i.bv, ptr %i.bp, align 16
  %i.bw = extractelement <4 x float> %i.bs, i64 3
  store float %i.bw, ptr %i.br, align 8
  %index.next144 = add nuw i64 %index140, 4       ; 2 uses
  %i.bx = icmp eq i64 %index.next144, %n.vec138
  br i1 %i.bx, label %scalar.ph135.preheader, label %vector.body139, !llvm.loop !1051

scalar.ph135.preheader:                           ; preds = %vector.body139, %.lr.ph74.us.i.us.us
  %indvars.iv97.i.us.us.ph = phi i64 [ 0, %.lr.ph74.us.i.us.us ], [ %n.vec138, %vector.body139 ]
  br label %scalar.ph135

scalar.ph135:                                     ; preds = %scalar.ph135.preheader, %scalar.ph135
  %indvars.iv97.i.us.us = phi i64 [ %indvars.iv.next98.i.us.us, %scalar.ph135 ], [ %indvars.iv97.i.us.us.ph, %scalar.ph135.preheader ] ; 3 uses
  %i.by = getelementptr [4 x i8], ptr %i.bf, i64 %indvars.iv97.i.us.us
  %i.bz = load float, ptr %i.by, align 4
  %.idx115.i.us.us = shl nuw nsw i64 %indvars.iv97.i.us.us, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx115.i.us.us ; 2 uses
  %i.cb = load float, ptr %i.ca, align 8
  %i.cc = fadd float %i.bz, %i.cb
  store float %i.cc, ptr %i.ca, align 8
  %indvars.iv.next98.i.us.us = add nuw nsw i64 %indvars.iv97.i.us.us, 1 ; 2 uses
  %exitcond90.not = icmp eq i64 %indvars.iv.next98.i.us.us, %i.r
  br i1 %exitcond90.not, label %.loopexit.us.i.us.us, label %scalar.ph135, !llvm.loop !1052

.preheader.us.i.us.us:                            ; preds = %bb.b
  br i1 %i.o, label %.lr.ph76.us.i.us.us, label %.loopexit.us.i.us.us

.lr.ph76.us.i.us.us:                              ; preds = %.preheader.us.i.us.us
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv103.i.us.us
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %i.p ; 2 uses
  br i1 %min.iters.check124, label %scalar.ph123.preheader, label %vector.body127

vector.body127:                                   ; preds = %.lr.ph76.us.i.us.us, %vector.body127
  %index128 = phi i64 [ %index.next131, %vector.body127 ], [ 0, %.lr.ph76.us.i.us.us ] ; 3 uses
  %i.cg = getelementptr [4 x i8], ptr %i.cf, i64 %index128
  %wide.load129 = load <2 x float>, ptr %i.cg, align 4
  %i.ch = shl nuw nsw i64 %index128, 3
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 %i.ch ; 2 uses
  %wide.vec = load <4 x float>, ptr %i.ci, align 16
  %i.cj = shufflevector <2 x float> %wide.load129, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fadd <4 x float> %i.cj, %wide.vec
  store <4 x float> %interleaved.vec, ptr %i.ci, align 16
  %index.next131 = add nuw i64 %index128, 2       ; 2 uses
  %i.ck = icmp eq i64 %index.next131, %n.vec126
  br i1 %i.ck, label %middle.block132, label %vector.body127, !llvm.loop !1053

middle.block132:                                  ; preds = %vector.body127
  br i1 %cmp.n133, label %.loopexit.us.i.us.us, label %scalar.ph123.preheader

scalar.ph123.preheader:                           ; preds = %.lr.ph76.us.i.us.us, %middle.block132
  %indvars.iv100.i.us.us.ph = phi i64 [ 0, %.lr.ph76.us.i.us.us ], [ %n.vec126, %middle.block132 ]
  br label %scalar.ph123

scalar.ph123:                                     ; preds = %scalar.ph123.preheader, %scalar.ph123
  %indvars.iv100.i.us.us = phi i64 [ %indvars.iv.next101.i.us.us, %scalar.ph123 ], [ %indvars.iv100.i.us.us.ph, %scalar.ph123.preheader ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.cf, i64 %indvars.iv100.i.us.us
  %i.cm = load float, ptr %i.cl, align 4
  %.idx116.i.us.us = shl nuw nsw i64 %indvars.iv100.i.us.us, 3
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx116.i.us.us ; 2 uses
  %i.co = load <2 x float>, ptr %i.cn, align 8
  %i.cp = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.cq = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cr = fadd <2 x float> %i.cq, %i.co
  store <2 x float> %i.cr, ptr %i.cn, align 8
  %indvars.iv.next101.i.us.us = add nuw nsw i64 %indvars.iv100.i.us.us, 1 ; 2 uses
  %exitcond92.not = icmp eq i64 %indvars.iv.next101.i.us.us, %i.r
  br i1 %exitcond92.not, label %.loopexit.us.i.us.us, label %scalar.ph123, !llvm.loop !1054

.loopexit.us.i.us.us:                             ; preds = %scalar.ph147, %scalar.ph135, %scalar.ph123, %middle.block132, %.preheader.us.i.us.us, %.preheader67.us.i.us.us, %.preheader69.us.i.us.us, %bb.b
  %indvars.iv.next104.i.us.us = add nuw nsw i64 %indvars.iv103.i.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us = icmp eq i64 %indvars.iv.next104.i.us.us, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us, label %..preheader71_crit_edge.us.i.us.us, label %bb.b

..preheader71_crit_edge.us.i.us.us:               ; preds = %.loopexit.us.i.us.us
  %i.cs = shl nuw i32 %spec.select.us.i.us.us, 1
  %i.ct = icmp sgt i32 %i.cs, 0
  br i1 %i.ct, label %.lr.ph80.us.preheader.i.us.us, label %._crit_edge.us.i.us.us

.lr.ph80.us.preheader.i.us.us:                    ; preds = %..preheader71_crit_edge.us.i.us.us
  %i.cu = shl nuw i32 %indvars95, 1
  %i.cv = sext i32 %i.cu to i64
  %invariant.gep120.i.us.us = getelementptr [2 x i8], ptr %1, i64 %i.cv ; 2 uses
  %i.cw = shl i32 %i.q, 1                         ; 2 uses
  %i.cx = zext i32 %i.cw to i64                   ; 3 uses
  %min.iters.check112 = icmp ult i32 %i.cw, 8
  br i1 %min.iters.check112, label %.lr.ph80.us.i.us.us.preheader, label %vector.ph113

vector.ph113:                                     ; preds = %.lr.ph80.us.preheader.i.us.us
  %n.vec114 = and i64 %i.cx, 4294967288           ; 3 uses
  br label %vector.body115

vector.body115:                                   ; preds = %vector.body115, %vector.ph113
  %index116 = phi i64 [ 0, %vector.ph113 ], [ %index.next119, %vector.body115 ] ; 3 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index116 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  %wide.load117 = load <4 x float>, ptr %i.cy, align 16
  %wide.load118 = load <4 x float>, ptr %i.cz, align 16
  %i.da = fadd <4 x float> %wide.load117, splat (float 3.840000e+02)
  %i.db = fadd <4 x float> %wide.load118, splat (float 3.840000e+02)
  %i.dc = bitcast <4 x float> %i.da to <4 x i32>
  %i.dd = bitcast <4 x float> %i.db to <4 x i32>
  %i.de = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dc, <4 x i32> splat (i32 1136623616))
  %i.df = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.dd, <4 x i32> splat (i32 1136623616))
  %i.dg = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.de, <4 x i32> splat (i32 1136689151))
  %i.dh = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.df, <4 x i32> splat (i32 1136689151))
  %i.di = trunc <4 x i32> %i.dg to <4 x i16>
  %i.dj = trunc <4 x i32> %i.dh to <4 x i16>
  %i.dk = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %index116 ; 2 uses
  %i.dl = getelementptr i8, ptr %i.dk, i64 8
  store <4 x i16> %i.di, ptr %i.dk, align 2
  store <4 x i16> %i.dj, ptr %i.dl, align 2
  %index.next119 = add nuw i64 %index116, 8       ; 2 uses
  %i.dm = icmp eq i64 %index.next119, %n.vec114
  br i1 %i.dm, label %middle.block120, label %vector.body115, !llvm.loop !1055

middle.block120:                                  ; preds = %vector.body115
  %cmp.n121 = icmp eq i64 %n.vec114, %i.cx
  br i1 %cmp.n121, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us.preheader

.lr.ph80.us.i.us.us.preheader:                    ; preds = %.lr.ph80.us.preheader.i.us.us, %middle.block120
  %indvars.iv106.i.us.us.ph = phi i64 [ 0, %.lr.ph80.us.preheader.i.us.us ], [ %n.vec114, %middle.block120 ]
  br label %.lr.ph80.us.i.us.us

.lr.ph80.us.i.us.us:                              ; preds = %.lr.ph80.us.i.us.us.preheader, %.lr.ph80.us.i.us.us
  %indvars.iv106.i.us.us = phi i64 [ %indvars.iv.next107.i.us.us, %.lr.ph80.us.i.us.us ], [ %indvars.iv106.i.us.us.ph, %.lr.ph80.us.i.us.us.preheader ] ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv106.i.us.us
  %i.do = load float, ptr %i.dn, align 4
  %i.dp = fadd float %i.do, 3.840000e+02
  %i.dq = bitcast float %i.dp to i32
  %i.dr = tail call i32 @llvm.smax.i32(i32 %i.dq, i32 1136623616)
  %i.ds = tail call i32 @llvm.umin.i32(i32 %i.dr, i32 1136689151)
  %i.dt = trunc i32 %i.ds to i16
  %gep121.i.us.us = getelementptr [2 x i8], ptr %invariant.gep120.i.us.us, i64 %indvars.iv106.i.us.us
  store i16 %i.dt, ptr %gep121.i.us.us, align 2
  %indvars.iv.next107.i.us.us = add nuw nsw i64 %indvars.iv106.i.us.us, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next107.i.us.us, %i.cx
  br i1 %exitcond94.not, label %._crit_edge.us.i.us.us, label %.lr.ph80.us.i.us.us, !llvm.loop !1056

._crit_edge.us.i.us.us:                           ; preds = %.lr.ph80.us.i.us.us, %middle.block120, %..preheader71_crit_edge.us.i.us.us
  %indvars.iv.next110.i.us.us = add nuw nsw i64 %indvars.iv109.i.us.us, 16 ; 2 uses
  %i.du = icmp samesign ult i64 %indvars.iv.next110.i.us.us, %i.i
  %indvars.iv.next87 = add i32 %indvars.iv86, -16
  br i1 %i.du, label %.lr.ph78.us.i.us.us, label %compute_stereo_samples.exit.loopexit.us.us

compute_stereo_samples.exit.loopexit.us.us:       ; preds = %._crit_edge.us.i.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %i.dv = add nuw nsw i32 %.03859.us.us, 1        ; 2 uses
  %exitcond96.not = icmp eq i32 %i.dv, %0
  br i1 %exitcond96.not, label %.loopexit, label %.lr.ph84.i.us.us

.unreachabledefault:                              ; preds = %bb.b
  unreachable

.lr.ph84.i.us:                                    ; preds = %.lr.ph.split.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us

.preheader71.i.us:                                ; preds = %._crit_edge.i.us, %.lr.ph84.i.us
  %indvars.iv78 = phi i32 [ %indvars.iv.next79, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %indvars.iv91.i.us = phi i64 [ %indvars.iv.next92.i.us, %._crit_edge.i.us ], [ 0, %.lr.ph84.i.us ] ; 2 uses
  %.05982.i.us = phi i32 [ %spec.select.i.us, %._crit_edge.i.us ], [ 16, %.lr.ph84.i.us ] ; 2 uses
  %indvars81 = trunc i64 %indvars.iv91.i.us to i32 ; 3 uses
  %i.dw = add nsw i32 %.05982.i.us, %indvars81    ; 2 uses
  %i.dx = icmp sgt i32 %i.dw, %5
  %i.dy = sub i32 %5, %indvars81
  %spec.select.i.us = select i1 %i.dx, i32 %i.dy, i32 %.05982.i.us ; 2 uses
  %i.dz = shl nuw i32 %spec.select.i.us, 1
  %i.ea = icmp sgt i32 %i.dz, 0
  br i1 %i.ea, label %.lr.ph80.preheader.i.us, label %._crit_edge.i.us

.lr.ph80.preheader.i.us:                          ; preds = %.preheader71.i.us
  %i.eb = shl nuw i32 %indvars81, 1
  %i.ec = sext i32 %i.eb to i64
  %invariant.gep.i.us = getelementptr [2 x i8], ptr %1, i64 %i.ec ; 2 uses
  %smin = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.dw)
  %i.ed = add i32 %smin, %indvars.iv78            ; 2 uses
  %i.ee = zext i32 %i.ed to i64
  %i.ef = shl nuw nsw i64 %i.ee, 1                ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.ef, i64 1) ; 2 uses
  %min.iters.check = icmp ult i32 %i.ed, 4
  br i1 %min.iters.check, label %.lr.ph80.i.us.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.preheader.i.us
  %n.vec = and i64 %umax, 8589934584              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 16
  %wide.load = load <4 x float>, ptr %i.eg, align 16
  %wide.load110 = load <4 x float>, ptr %i.eh, align 16
  %i.ei = fadd <4 x float> %wide.load, splat (float 3.840000e+02)
  %i.ej = fadd <4 x float> %wide.load110, splat (float 3.840000e+02)
  %i.ek = bitcast <4 x float> %i.ei to <4 x i32>
  %i.el = bitcast <4 x float> %i.ej to <4 x i32>
  %i.em = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.ek, <4 x i32> splat (i32 1136623616))
  %i.en = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.el, <4 x i32> splat (i32 1136623616))
  %i.eo = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.em, <4 x i32> splat (i32 1136689151))
  %i.ep = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.en, <4 x i32> splat (i32 1136689151))
  %i.eq = trunc <4 x i32> %i.eo to <4 x i16>
  %i.er = trunc <4 x i32> %i.ep to <4 x i16>
  %i.es = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %index ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 8
  store <4 x i16> %i.eq, ptr %i.es, align 2
  store <4 x i16> %i.er, ptr %i.et, align 2
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !1057

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ef, %n.vec
  br i1 %cmp.n, label %._crit_edge.i.us, label %.lr.ph80.i.us.preheader

.lr.ph80.i.us.preheader:                          ; preds = %.lr.ph80.preheader.i.us, %middle.block
  %indvars.iv.i.us.ph = phi i64 [ 0, %.lr.ph80.preheader.i.us ], [ %n.vec, %middle.block ]
  br label %.lr.ph80.i.us

.lr.ph80.i.us:                                    ; preds = %.lr.ph80.i.us.preheader, %.lr.ph80.i.us
  %indvars.iv.i.us = phi i64 [ %indvars.iv.next.i.us, %.lr.ph80.i.us ], [ %indvars.iv.i.us.ph, %.lr.ph80.i.us.preheader ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us
  %i.ew = load float, ptr %i.ev, align 4
  %i.ex = fadd float %i.ew, 3.840000e+02
  %i.ey = bitcast float %i.ex to i32
  %i.ez = tail call i32 @llvm.smax.i32(i32 %i.ey, i32 1136623616)
  %i.fa = tail call i32 @llvm.umin.i32(i32 %i.ez, i32 1136689151)
  %i.fb = trunc i32 %i.fa to i16
  %gep.i.us = getelementptr [2 x i8], ptr %invariant.gep.i.us, i64 %indvars.iv.i.us
  store i16 %i.fb, ptr %gep.i.us, align 2
  %indvars.iv.next.i.us = add nuw nsw i64 %indvars.iv.i.us, 1 ; 2 uses
  %exitcond80.not = icmp eq i64 %indvars.iv.next.i.us, %umax
  br i1 %exitcond80.not, label %._crit_edge.i.us, label %.lr.ph80.i.us, !llvm.loop !1058

._crit_edge.i.us:                                 ; preds = %.lr.ph80.i.us, %middle.block, %.preheader71.i.us
  %indvars.iv.next92.i.us = add nuw nsw i64 %indvars.iv91.i.us, 16 ; 2 uses
  %i.fc = icmp samesign ult i64 %indvars.iv.next92.i.us, %i.i
  %indvars.iv.next79 = add i32 %indvars.iv78, -16
  br i1 %i.fc, label %.preheader71.i.us, label %compute_stereo_samples.exit.loopexit46.us

compute_stereo_samples.exit.loopexit46.us:        ; preds = %._crit_edge.i.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  %exitcond82.not = icmp eq i32 %0, 1
  br i1 %exitcond82.not, label %.loopexit, label %.lr.ph84.i.us.1

.lr.ph84.i.us.1:                                  ; preds = %compute_stereo_samples.exit.loopexit46.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #61
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(128) %i.a, i8 0, i64 128, i1 false)
  br label %.preheader71.i.us.1

.preheader71.i.us.1:                              ; preds = %._crit_edge.i.us.1, %.lr.ph84.i.us.1
  %indvars.iv78.1 = phi i32 [ %indvars.iv.next79.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars.iv91.i.us.1 = phi i64 [ %indvars.iv.next92.i.us.1, %._crit_edge.i.us.1 ], [ 0, %.lr.ph84.i.us.1 ] ; 2 uses
  %.05982.i.us.1 = phi i32 [ %spec.select.i.us.1, %._crit_edge.i.us.1 ], [ 16, %.lr.ph84.i.us.1 ] ; 2 uses
  %indvars81.1 = trunc i64 %indvars.iv91.i.us.1 to i32 ; 3 uses
  %i.fd = add nsw i32 %.05982.i.us.1, %indvars81.1 ; 2 uses
  %i.fe = icmp sgt i32 %i.fd, %5
  %i.ff = sub i32 %5, %indvars81.1
  %spec.select.i.us.1 = select i1 %i.fe, i32 %i.ff, i32 %.05982.i.us.1 ; 2 uses
  %i.fg = shl nuw i32 %spec.select.i.us.1, 1
  %i.fh = icmp sgt i32 %i.fg, 0
  br i1 %i.fh, label %.lr.ph80.preheader.i.us.1, label %._crit_edge.i.us.1

.lr.ph80.preheader.i.us.1:                        ; preds = %.preheader71.i.us.1
  %i.fi = shl nuw i32 %indvars81.1, 1
  %i.fj = sext i32 %i.fi to i64
  %invariant.gep.i.us.1 = getelementptr [2 x i8], ptr %1, i64 %i.fj ; 2 uses
  %smin.1 = tail call i32 @llvm.smin.i32(i32 %5, i32 %i.fd)
  %i.fk = add i32 %smin.1, %indvars.iv78.1        ; 2 uses
  %i.fl = zext i32 %i.fk to i64
  %i.fm = shl nuw nsw i64 %i.fl, 1                ; 2 uses
  %umax.1 = tail call i64 @llvm.umax.i64(i64 %i.fm, i64 1) ; 2 uses
  %min.iters.check.1 = icmp ult i32 %i.fk, 4
  br i1 %min.iters.check.1, label %.lr.ph80.i.us.preheader.1, label %vector.ph.1

vector.ph.1:                                      ; preds = %.lr.ph80.preheader.i.us.1
  %n.vec.1 = and i64 %umax.1, 8589934584          ; 3 uses
  br label %vector.body.1

vector.body.1:                                    ; preds = %vector.body.1, %vector.ph.1
  %index.1 = phi i64 [ 0, %vector.ph.1 ], [ %index.next.1, %vector.body.1 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index.1 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load.1 = load <4 x float>, ptr %i.fn, align 16
  %wide.load110.1 = load <4 x float>, ptr %i.fo, align 16
  %i.fp = fadd <4 x float> %wide.load.1, splat (float 3.840000e+02)
  %i.fq = fadd <4 x float> %wide.load110.1, splat (float 3.840000e+02)
  %i.fr = bitcast <4 x float> %i.fp to <4 x i32>
  %i.fs = bitcast <4 x float> %i.fq to <4 x i32>
  %i.ft = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fr, <4 x i32> splat (i32 1136623616))
  %i.fu = tail call <4 x i32> @llvm.smax.v4i32(<4 x i32> %i.fs, <4 x i32> splat (i32 1136623616))
  %i.fv = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.ft, <4 x i32> splat (i32 1136689151))
  %i.fw = tail call <4 x i32> @llvm.umin.v4i32(<4 x i32> %i.fu, <4 x i32> splat (i32 1136689151))
  %i.fx = trunc <4 x i32> %i.fv to <4 x i16>
  %i.fy = trunc <4 x i32> %i.fw to <4 x i16>
  %i.fz = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %index.1 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 8
  store <4 x i16> %i.fx, ptr %i.fz, align 2
  store <4 x i16> %i.fy, ptr %i.ga, align 2
  %index.next.1 = add nuw i64 %index.1, 8         ; 2 uses
  %i.gb = icmp eq i64 %index.next.1, %n.vec.1
  br i1 %i.gb, label %middle.block.1, label %vector.body.1, !llvm.loop !1057

middle.block.1:                                   ; preds = %vector.body.1
  %cmp.n.1 = icmp eq i64 %i.fm, %n.vec.1
  br i1 %cmp.n.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.preheader.1

.lr.ph80.i.us.preheader.1:                        ; preds = %middle.block.1, %.lr.ph80.preheader.i.us.1
  %indvars.iv.i.us.ph.1 = phi i64 [ 0, %.lr.ph80.preheader.i.us.1 ], [ %n.vec.1, %middle.block.1 ]
  br label %.lr.ph80.i.us.1

.lr.ph80.i.us.1:                                  ; preds = %.lr.ph80.i.us.1, %.lr.ph80.i.us.preheader.1
  %indvars.iv.i.us.1 = phi i64 [ %indvars.iv.next.i.us.1, %.lr.ph80.i.us.1 ], [ %indvars.iv.i.us.ph.1, %.lr.ph80.i.us.preheader.1 ] ; 3 uses
  %i.gc = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i.us.1
  %i.gd = load float, ptr %i.gc, align 4
  %i.ge = fadd float %i.gd, 3.840000e+02
  %i.gf = bitcast float %i.ge to i32
  %i.gg = tail call i32 @llvm.smax.i32(i32 %i.gf, i32 1136623616)
  %i.gh = tail call i32 @llvm.umin.i32(i32 %i.gg, i32 1136689151)
  %i.gi = trunc i32 %i.gh to i16
  %gep.i.us.1 = getelementptr [2 x i8], ptr %invariant.gep.i.us.1, i64 %indvars.iv.i.us.1
  store i16 %i.gi, ptr %gep.i.us.1, align 2
  %indvars.iv.next.i.us.1 = add nuw nsw i64 %indvars.iv.i.us.1, 1 ; 2 uses
  %exitcond80.not.1 = icmp eq i64 %indvars.iv.next.i.us.1, %umax.1
  br i1 %exitcond80.not.1, label %._crit_edge.i.us.1, label %.lr.ph80.i.us.1, !llvm.loop !1058

._crit_edge.i.us.1:                               ; preds = %.lr.ph80.i.us.1, %middle.block.1, %.preheader71.i.us.1
  %indvars.iv.next92.i.us.1 = add nuw nsw i64 %indvars.iv91.i.us.1, 16 ; 2 uses
  %i.gj = icmp samesign ult i64 %indvars.iv.next92.i.us.1, %i.i
  %indvars.iv.next79.1 = add i32 %indvars.iv78.1, -16
  br i1 %i.gj, label %.preheader71.i.us.1, label %compute_stereo_samples.exit.loopexit46.us.1

compute_stereo_samples.exit.loopexit46.us.1:      ; preds = %._crit_edge.i.us.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #61
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.gk = tail call i32 @llvm.smin.i32(i32 %0, i32 %2) ; 7 uses
  %i.gl = icmp sgt i32 %5, 0
  br i1 %i.gl, label %.preheader48.lr.ph, label %.loopexit

.preheader48.lr.ph:                               ; preds = %bb.c
  %i.gm = icmp sgt i32 %i.gk, 0
  br i1 %i.gm, label %.preheader48.us.preheader, label %.preheader48.lr.ph.split

.preheader48.us.preheader:                        ; preds = %.preheader48.lr.ph
  %i.gn = add nuw i32 %i.gk, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %0, i32 %i.gn)
  %i.go = xor i32 %i.gk, -1
  %i.gp = add i32 %smax, %i.go
  %i.gq = zext i32 %i.gp to i64                   ; 2 uses
  %i.gr = shl nuw nsw i64 %i.gq, 1
  %i.gs = add nuw nsw i64 %i.gr, 2
  %i.gt = add nsw i32 %i.gk, -1
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = add nuw nsw i64 %i.gq, %i.gu
  %i.gw = shl nuw nsw i64 %i.gv, 1
  %i.gx = sext i32 %4 to i64                      ; 3 uses
  %wide.trip.count74 = zext nneg i32 %5 to i64
  %wide.trip.count = zext nneg i32 %i.gk to i64   ; 2 uses
  %i.gy = icmp slt i32 %2, %0
  %xtraiter = and i64 %wide.trip.count, 1
  %i.gz = icmp eq i32 %i.gk, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod164 = trunc i32 %i.gk to i1
  br label %.preheader48.us

.preheader48.us:                                  ; preds = %.preheader48.us.preheader, %._crit_edge.us
  %indvars.iv71 = phi i64 [ 0, %.preheader48.us.preheader ], [ %indvars.iv.next72, %._crit_edge.us ] ; 4 uses
  %.03957.us = phi ptr [ %1, %.preheader48.us.preheader ], [ %.241.lcssa.us, %._crit_edge.us ] ; 3 uses
  br i1 %i.gz, label %.epil.preheader, label %.preheader48.us.new

.preheader48.us.new:                              ; preds = %.preheader48.us, %.preheader48.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.preheader48.us.new ], [ 0, %.preheader48.us ] ; 3 uses
  %.14050.us = phi ptr [ %i.hw, %.preheader48.us.new ], [ %.03957.us, %.preheader48.us ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %.preheader48.us.new ], [ 0, %.preheader48.us ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = getelementptr [4 x i8], ptr %i.hb, i64 %indvars.iv71
  %i.hd = getelementptr [4 x i8], ptr %i.hc, i64 %i.gx
  %i.he = load float, ptr %i.hd, align 4
  %i.hf = fadd float %i.he, 3.840000e+02
  %i.hg = bitcast float %i.hf to i32
  %i.hh = tail call i32 @llvm.smax.i32(i32 %i.hg, i32 1136623616)
  %i.hi = tail call i32 @llvm.umin.i32(i32 %i.hh, i32 1136689151)
  %i.hj = trunc i32 %i.hi to i16
  %i.hk = getelementptr i8, ptr %.14050.us, i64 2
  store i16 %i.hj, ptr %.14050.us, align 2
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr [4 x i8], ptr %i.hn, i64 %indvars.iv71
  %i.hp = getelementptr [4 x i8], ptr %i.ho, i64 %i.gx
  %i.hq = load float, ptr %i.hp, align 4
  %i.hr = fadd float %i.hq, 3.840000e+02
  %i.hs = bitcast float %i.hr to i32
  %i.ht = tail call i32 @llvm.smax.i32(i32 %i.hs, i32 1136623616)
  %i.hu = tail call i32 @llvm.umin.i32(i32 %i.ht, i32 1136689151)
  %i.hv = trunc i32 %i.hu to i16
  %i.hw = getelementptr i8, ptr %.14050.us, i64 4 ; 3 uses
  store i16 %i.hv, ptr %i.hk, align 2
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..preheader47_crit_edge.us.unr-lcssa, label %.preheader48.us.new

._crit_edge.us:                                   ; preds = %.lr.ph55.us.preheader, %..preheader47_crit_edge.us
  %.241.lcssa.us = phi ptr [ %.lcssa, %..preheader47_crit_edge.us ], [ %scevgep, %.lr.ph55.us.preheader ]
  %indvars.iv.next72 = add nuw nsw i64 %indvars.iv71, 1 ; 2 uses
  %exitcond75.not = icmp eq i64 %indvars.iv.next72, %wide.trip.count74
  br i1 %exitcond75.not, label %.loopexit, label %.preheader48.us

..preheader47_crit_edge.us.unr-lcssa:             ; preds = %.preheader48.us.new
  br i1 %lcmp.mod.not, label %..preheader47_crit_edge.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader47_crit_edge.us.unr-lcssa, %.preheader48.us
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader48.us ], [ %indvars.iv.next.1, %..preheader47_crit_edge.us.unr-lcssa ]
  %.14050.us.epil.init = phi ptr [ %.03957.us, %.preheader48.us ], [ %i.hw, %..preheader47_crit_edge.us.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod164)
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.epil.init
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr [4 x i8], ptr %i.hy, i64 %indvars.iv71
  %i.ia = getelementptr [4 x i8], ptr %i.hz, i64 %i.gx
  %i.ib = load float, ptr %i.ia, align 4
  %i.ic = fadd float %i.ib, 3.840000e+02
  %i.id = bitcast float %i.ic to i32
  %i.ie = tail call i32 @llvm.smax.i32(i32 %i.id, i32 1136623616)
  %i.if = tail call i32 @llvm.umin.i32(i32 %i.ie, i32 1136689151)
  %i.ig = trunc i32 %i.if to i16
  %i.ih = getelementptr i8, ptr %.14050.us.epil.init, i64 2
  store i16 %i.ig, ptr %.14050.us.epil.init, align 2
  br label %..preheader47_crit_edge.us

..preheader47_crit_edge.us:                       ; preds = %..preheader47_crit_edge.us.unr-lcssa, %.epil.preheader
  %.lcssa = phi ptr [ %i.hw, %..preheader47_crit_edge.us.unr-lcssa ], [ %i.ih, %.epil.preheader ] ; 2 uses
  br i1 %i.gy, label %.lr.ph55.us.preheader, label %._crit_edge.us

.lr.ph55.us.preheader:                            ; preds = %..preheader47_crit_edge.us
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(1) %.lcssa, i8 0, i64 %i.gs, i1 false)
  %i.ii = getelementptr i8, ptr %.03957.us, i64 %i.gw
  %scevgep = getelementptr i8, ptr %i.ii, i64 4
  br label %._crit_edge.us

.preheader48.lr.ph.split:                         ; preds = %.preheader48.lr.ph
  %i.ij = icmp sgt i32 %0, 0
  br i1 %i.ij, label %.preheader48.preheader, label %.loopexit

.preheader48.preheader:                           ; preds = %.preheader48.lr.ph.split
  %i.ik = zext nneg i32 %0 to i64
  %i.il = zext nneg i32 %5 to i64
  %i.im = mul nuw nsw i64 %i.il, %i.ik
  %i.in = shl nuw nsw i64 %i.im, 1
  tail call void @llvm.memset.p0.i64(ptr align 2 %1, i8 0, i64 %i.in, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.us, %compute_stereo_samples.exit.loopexit46.us, %compute_stereo_samples.exit.loopexit46.us.1, %compute_stereo_samples.exit.loopexit.us.us, %.lr.ph, %.preheader48.preheader, %bb.c, %.preheader48.lr.ph.split, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define hidden i32 @stb_vorbis_get_samples_short_interleaved(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
end_hunk_0
begin_hunk_1_@jar_xm_load_module:bb.a
  store <2 x i32> %i.acj, ptr %i.yy, align 8
  %i.ack = load i32, ptr %i.aaf, align 8
  %i.acl = lshr i32 %i.ack, 1
  store i32 %i.acl, ptr %i.aaf, align 8
  %i.acm = lshr i32 %i.acf, 1
  store i32 %i.acm, ptr %i.xt, align 4
  br label %bb.gd

bb.gc:                                            ; preds = %bb.ga
  %i.acn = shl nuw nsw i64 %i.acg, 2
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %.pn = phi i64 [ %i.ach, %bb.gb ], [ %i.acn, %bb.gc ]
  %.4788 = getelementptr inbounds nuw i8, ptr %.3787987, i64 %.pn ; 3 uses
  %i.aco = load i8, ptr %i.abm, align 8
  %.not886 = icmp eq i8 %i.aco, 0
  br i1 %.not886, label %bb.gw, label %bb.ge

bb.ge:                                            ; preds = %bb.gd
  %i.acp = getelementptr inbounds nuw i8, ptr %i.wp, i64 52
  %i.acq = load i32, ptr %i.acp, align 4
  %.not887 = icmp eq i32 %i.acq, 0
  br i1 %.not887, label %bb.gw, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  br i1 %i.xv, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 %i.xu
  %i.acs = load i8, ptr %i.acr, align 1
  %i.act = zext i8 %i.acs to i32
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg
  %i.acu = phi i32 [ %i.act, %bb.gg ], [ 0, %bb.gf ] ; 2 uses
  br i1 %i.yb, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  %i.acv = getelementptr inbounds nuw i8, ptr %1, i64 %i.ya
  %i.acw = load i8, ptr %i.acv, align 1
  %i.acx = zext i8 %i.acw to i32
  %i.acy = shl nuw nsw i32 %i.acx, 8
  %i.acz = or disjoint i32 %i.acy, %i.acu
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gh, %bb.gi
  %i.ada = phi i32 [ %i.acz, %bb.gi ], [ %i.acu, %bb.gh ]
  br i1 %i.yj, label %bb.gk, label %bb.gl

bb.gk:                                            ; preds = %bb.gj
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 %i.yi
  %i.adc = load i8, ptr %i.adb, align 1
  %i.add = zext i8 %i.adc to i32
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gj, %bb.gk
  %i.ade = phi i32 [ %i.add, %bb.gk ], [ 0, %bb.gj ] ; 2 uses
  br i1 %i.yp, label %bb.gm, label %bb.gn

bb.gm:                                            ; preds = %bb.gl
  %i.adf = getelementptr inbounds nuw i8, ptr %1, i64 %i.yo
  %i.adg = load i8, ptr %i.adf, align 1
  %i.adh = zext i8 %i.adg to i32
  %i.adi = shl nuw nsw i32 %i.adh, 8
  %i.adj = or disjoint i32 %i.adi, %i.ade
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.adk = phi i32 [ %i.adj, %bb.gm ], [ %i.ade, %bb.gl ]
  %i.adl = shl nuw i32 %i.adk, 16
  %i.adm = or i32 %i.adl, %i.ada
  %i.adn = tail call i64 @div(i32 noundef %i.adm, i32 noundef 2) #75
  %.sroa.089.0.extract.trunc = trunc i64 %i.adn to i32 ; 2 uses
  store i32 %.sroa.089.0.extract.trunc, ptr %i.yy, align 8
  br i1 %i.za, label %bb.go, label %bb.gp

bb.go:                                            ; preds = %bb.gn
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 %i.yz
  %i.adp = load i8, ptr %i.ado, align 1
  %i.adq = zext i8 %i.adp to i32
  br label %bb.gp

bb.gp:                                            ; preds = %bb.gn, %bb.go
  %i.adr = phi i32 [ %i.adq, %bb.go ], [ 0, %bb.gn ] ; 2 uses
  br i1 %i.zg, label %bb.gq, label %bb.gr

bb.gq:                                            ; preds = %bb.gp
  %i.ads = getelementptr inbounds nuw i8, ptr %1, i64 %i.zf
  %i.adt = load i8, ptr %i.ads, align 1
  %i.adu = zext i8 %i.adt to i32
  %i.adv = shl nuw nsw i32 %i.adu, 8
  %i.adw = or disjoint i32 %i.adv, %i.adr
  br label %bb.gr

bb.gr:                                            ; preds = %bb.gp, %bb.gq
  %i.adx = phi i32 [ %i.adw, %bb.gq ], [ %i.adr, %bb.gp ]
  br i1 %i.zo, label %bb.gs, label %bb.gt

bb.gs:                                            ; preds = %bb.gr
  %i.ady = getelementptr inbounds nuw i8, ptr %1, i64 %i.zn
  %i.adz = load i8, ptr %i.ady, align 1
  %i.aea = zext i8 %i.adz to i32
  br label %bb.gt

bb.gt:                                            ; preds = %bb.gr, %bb.gs
  %i.aeb = phi i32 [ %i.aea, %bb.gs ], [ 0, %bb.gr ] ; 2 uses
  br i1 %i.zu, label %bb.gu, label %bb.gv

bb.gu:                                            ; preds = %bb.gt
  %i.aec = getelementptr inbounds nuw i8, ptr %1, i64 %i.zt
  %i.aed = load i8, ptr %i.aec, align 1
  %i.aee = zext i8 %i.aed to i32
  %i.aef = shl nuw nsw i32 %i.aee, 8
  %i.aeg = or disjoint i32 %i.aef, %i.aeb
  br label %bb.gv

bb.gv:                                            ; preds = %bb.gt, %bb.gu
  %i.aeh = phi i32 [ %i.aeg, %bb.gu ], [ %i.aeb, %bb.gt ]
  %i.aei = shl nuw i32 %i.aeh, 16
  %i.aej = or i32 %i.aei, %i.adx
  %i.aek = tail call i64 @div(i32 noundef %i.aej, i32 noundef 2) #75
  %.sroa.088.0.extract.trunc = trunc i64 %i.aek to i32 ; 2 uses
  store i32 %.sroa.088.0.extract.trunc, ptr %i.aad, align 4
  %i.ael = add i32 %.sroa.088.0.extract.trunc, %.sroa.089.0.extract.trunc
  store i32 %i.ael, ptr %i.aaf, align 8
  br label %bb.gw

bb.gw:                                            ; preds = %bb.gv, %bb.ge, %bb.gd
  %i.aem = add i64 %.2780988, %.0772              ; 3 uses
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %i.aen = load i16, ptr %i.mj, align 8           ; 2 uses
  %i.aeo = zext i16 %i.aen to i64
  %i.aep = icmp samesign ult i64 %indvars.iv.next1039, %i.aeo
  br i1 %i.aep, label %bb.et, label %.preheader968

._crit_edge1013:                                  ; preds = %._crit_edge1005, %bb.es, %.preheader968
  %.3787.lcssa1166 = phi ptr [ %.4788, %.preheader968 ], [ %.2786, %bb.es ], [ %.4788, %._crit_edge1005 ] ; 2 uses
  %.3781.lcssa = phi i64 [ %i.aem, %.preheader968 ], [ %i.wk, %bb.es ], [ %.5783, %._crit_edge1005 ]
  %indvars.iv.next1063 = add nuw nsw i64 %indvars.iv1062, 1 ; 2 uses
  %i.aeq = load i16, ptr %i.co, align 2
  %i.aer = zext i16 %i.aeq to i64
  %i.aes = icmp samesign ult i64 %indvars.iv.next1063, %i.aer
  br i1 %i.aes, label %bb.bv, label %._crit_edge1020

bb.gx:                                            ; preds = %.lr.ph1012, %._crit_edge1005
  %indvars.iv1059 = phi i64 [ 0, %.lr.ph1012 ], [ %indvars.iv.next1060, %._crit_edge1005 ] ; 2 uses
  %.37811010 = phi i64 [ %i.aem, %.lr.ph1012 ], [ %.5783, %._crit_edge1005 ] ; 5 uses
  %i.aet = load ptr, ptr %i.wn, align 8
  %i.aeu = getelementptr inbounds nuw [80 x i8], ptr %i.aet, i64 %indvars.iv1059 ; 8 uses
  %i.aev = getelementptr inbounds nuw i8, ptr %i.aeu, i64 28 ; 6 uses
  %i.aew = load i32, ptr %i.aev, align 4          ; 11 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.aeu, i64 24
  %i.aey = load i8, ptr %i.aex, align 8
  %.not880 = icmp eq i8 %i.aey, 0
  br i1 %.not880, label %bb.hl, label %bb.gy

bb.gy:                                            ; preds = %bb.gx
  %i.aez = tail call i64 @div(i32 noundef %i.aew, i32 noundef 2) #75 ; 3 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.aez to i32
  %i.afa = getelementptr inbounds nuw i8, ptr %i.aeu, i64 23
  %i.afb = load i8, ptr %i.afa, align 1
  %i.afc = icmp eq i8 %i.afb, 16
  %i.afd = icmp sgt i32 %i.aew, 0                 ; 2 uses
  br i1 %i.afc, label %.preheader966, label %.preheader967

.preheader967:                                    ; preds = %bb.gy
  br i1 %i.afd, label %.lr.ph996, label %._crit_edge997

.lr.ph996:                                        ; preds = %.preheader967
  %i.afe = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %i.aff = and i64 %i.aez, 4294967295
  %wide.trip.count = zext nneg i32 %i.aew to i64
  br label %bb.hg

.preheader966:                                    ; preds = %bb.gy
  br i1 %i.afd, label %.lr.ph1000, label %._crit_edge1001

.lr.ph1000:                                       ; preds = %.preheader966
  %i.afg = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %i.afh = and i64 %i.aez, 4294967295
  %wide.trip.count1047 = zext nneg i32 %i.aew to i64
  br label %bb.gz

._crit_edge1001.loopexit:                         ; preds = %bb.hf
  %.pre1067 = load i32, ptr %i.aev, align 4
  br label %._crit_edge1001

._crit_edge1001:                                  ; preds = %._crit_edge1001.loopexit, %.preheader966
  %i.afi = phi i32 [ %.pre1067, %._crit_edge1001.loopexit ], [ %i.aew, %.preheader966 ]
  %i.afj = shl i32 %i.afi, 1
  br label %._crit_edge997

bb.gz:                                            ; preds = %.lr.ph1000, %bb.hf
  %indvars.iv1044 = phi i64 [ 0, %.lr.ph1000 ], [ %indvars.iv.next1045, %bb.hf ] ; 5 uses
  %.0766998 = phi i32 [ 0, %.lr.ph1000 ], [ %i.agf, %bb.hf ]
  %i.afk = icmp eq i64 %indvars.iv1044, %i.afh
  %i.afl = shl i32 %.0766998, 16
  %i.afm = ashr exact i32 %i.afl, 16
  %i.afn = select i1 %i.afk, i32 0, i32 %i.afm
  %indvars.iv1044.tr = trunc nuw i64 %indvars.iv1044 to i32
  %i.afo = shl nuw i32 %indvars.iv1044.tr, 1
  %i.afp = sext i32 %i.afo to i64
  %i.afq = add i64 %.37811010, %i.afp             ; 3 uses
  %i.afr = icmp ult i64 %i.afq, %2
  br i1 %i.afr, label %bb.ha, label %bb.hb

bb.ha:                                            ; preds = %bb.gz
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 %i.afq
  %i.aft = load i8, ptr %i.afs, align 1
  %i.afu = zext i8 %i.aft to i16
  br label %bb.hb

bb.hb:                                            ; preds = %bb.gz, %bb.ha
  %i.afv = phi i16 [ %i.afu, %bb.ha ], [ 0, %bb.gz ] ; 2 uses
  %i.afw = add i64 %i.afq, 1                      ; 2 uses
  %i.afx = icmp ult i64 %i.afw, %2
  br i1 %i.afx, label %bb.hc, label %bb.hd

bb.hc:                                            ; preds = %bb.hb
  %i.afy = getelementptr inbounds nuw i8, ptr %1, i64 %i.afw
  %i.afz = load i8, ptr %i.afy, align 1
  %i.aga = zext i8 %i.afz to i16
  %i.agb = shl nuw i16 %i.aga, 8
  %i.agc = or disjoint i16 %i.agb, %i.afv
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hb, %bb.hc
  %i.agd = phi i16 [ %i.agc, %bb.hc ], [ %i.afv, %bb.hb ]
  %i.age = zext i16 %i.agd to i32
  %i.agf = add nsw i32 %i.afn, %i.age             ; 2 uses
  %i.agg = trunc i32 %i.agf to i16
  %i.agh = sitofp i16 %i.agg to float
  %i.agi = fmul nnan float %i.agh, f0x38000000
  %i.agj = load ptr, ptr %i.afg, align 8
  %i.agk = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %indvars.iv1044
  store float %i.agi, ptr %i.agk, align 4
  %i.agl = load ptr, ptr %i.afg, align 8
  %i.agm = getelementptr inbounds nuw [4 x i8], ptr %i.agl, i64 %indvars.iv1044 ; 2 uses
  %i.agn = load float, ptr %i.agm, align 4        ; 2 uses
  %i.ago = fcmp olt float %i.agn, -1.000000e+00
  br i1 %i.ago, label %.sink.split, label %bb.he

bb.he:                                            ; preds = %bb.hd
  %i.agp = fcmp ogt float %i.agn, 1.000000e+00
  br i1 %i.agp, label %.sink.split, label %bb.hf

.sink.split:                                      ; preds = %bb.he, %bb.hd
  %.sink1171 = phi float [ -1.000000e+00, %bb.hd ], [ 1.000000e+00, %bb.he ]
  store float %.sink1171, ptr %i.agm, align 4
  br label %bb.hf

bb.hf:                                            ; preds = %.sink.split, %bb.he
  %indvars.iv.next1045 = add nuw nsw i64 %indvars.iv1044, 1 ; 2 uses
  %exitcond1048.not = icmp eq i64 %indvars.iv.next1045, %wide.trip.count1047
  br i1 %exitcond1048.not, label %._crit_edge1001.loopexit, label %bb.gz

._crit_edge997.loopexit:                          ; preds = %bb.hk
  %.pre1066 = load i32, ptr %i.aev, align 4
  br label %._crit_edge997

bb.hg:                                            ; preds = %.lr.ph996, %bb.hk
  %indvars.iv1041 = phi i64 [ 0, %.lr.ph996 ], [ %indvars.iv.next1042, %bb.hk ] ; 5 uses
  %.0764994 = phi i32 [ 0, %.lr.ph996 ], [ %i.aha, %bb.hk ]
  %i.agq = icmp eq i64 %indvars.iv1041, %i.aff
  %i.agr = shl i32 %.0764994, 24
  %i.ags = ashr exact i32 %i.agr, 24
  %i.agt = select i1 %i.agq, i32 0, i32 %i.ags
  %i.agu = add i64 %.37811010, %indvars.iv1041    ; 2 uses
  %i.agv = icmp ult i64 %i.agu, %2
  br i1 %i.agv, label %bb.hh, label %bb.hi

bb.hh:                                            ; preds = %bb.hg
  %i.agw = getelementptr inbounds nuw i8, ptr %1, i64 %i.agu
  %i.agx = load i8, ptr %i.agw, align 1
  %i.agy = zext i8 %i.agx to i32
  br label %bb.hi

bb.hi:                                            ; preds = %bb.hg, %bb.hh
  %i.agz = phi i32 [ %i.agy, %bb.hh ], [ 0, %bb.hg ]
  %i.aha = add nsw i32 %i.agz, %i.agt             ; 2 uses
  %i.ahb = trunc i32 %i.aha to i8
  %i.ahc = sitofp i8 %i.ahb to float
  %i.ahd = fmul nnan float %i.ahc, 7.812500e-03
  %i.ahe = load ptr, ptr %i.afe, align 8
  %i.ahf = getelementptr inbounds nuw [4 x i8], ptr %i.ahe, i64 %indvars.iv1041
  store float %i.ahd, ptr %i.ahf, align 4
  %i.ahg = load ptr, ptr %i.afe, align 8
  %i.ahh = getelementptr inbounds nuw [4 x i8], ptr %i.ahg, i64 %indvars.iv1041 ; 2 uses
  %i.ahi = load float, ptr %i.ahh, align 4        ; 2 uses
  %i.ahj = fcmp olt float %i.ahi, -1.000000e+00
  br i1 %i.ahj, label %.sink.split1172, label %bb.hj

bb.hj:                                            ; preds = %bb.hi
  %i.ahk = fcmp ogt float %i.ahi, 1.000000e+00
  br i1 %i.ahk, label %.sink.split1172, label %bb.hk

.sink.split1172:                                  ; preds = %bb.hj, %bb.hi
  %.sink1173 = phi float [ -1.000000e+00, %bb.hi ], [ 1.000000e+00, %bb.hj ]
  store float %.sink1173, ptr %i.ahh, align 4
  br label %bb.hk

bb.hk:                                            ; preds = %.sink.split1172, %bb.hj
  %indvars.iv.next1042 = add nuw nsw i64 %indvars.iv1041, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1042, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge997.loopexit, label %bb.hg

._crit_edge997:                                   ; preds = %.preheader967, %._crit_edge997.loopexit, %._crit_edge1001
  %.pn.in = phi i32 [ %i.afj, %._crit_edge1001 ], [ %.pre1066, %._crit_edge997.loopexit ], [ %i.aew, %.preheader967 ]
  store i32 %.sroa.0.0.extract.trunc, ptr %i.aev, align 4
  br label %._crit_edge1005

bb.hl:                                            ; preds = %bb.gx
  %i.ahl = getelementptr inbounds nuw i8, ptr %i.aeu, i64 23
  %i.ahm = load i8, ptr %i.ahl, align 1
  %i.ahn = icmp eq i8 %i.ahm, 16
  %i.aho = icmp sgt i32 %i.aew, 0                 ; 2 uses
  br i1 %i.ahn, label %.preheader, label %.preheader965

.preheader965:                                    ; preds = %bb.hl
  br i1 %i.aho, label %.lr.ph1004, label %._crit_edge1005

.lr.ph1004:                                       ; preds = %.preheader965
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %wide.trip.count1052 = zext nneg i32 %i.aew to i64
  br label %bb.ht

.preheader:                                       ; preds = %bb.hl
  br i1 %i.aho, label %.lr.ph1008, label %._crit_edge1009

.lr.ph1008:                                       ; preds = %.preheader
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.aeu, i64 72 ; 2 uses
  %wide.trip.count1057 = zext nneg i32 %i.aew to i64
  br label %bb.hm

._crit_edge1009.loopexit:                         ; preds = %bb.hs
  %.pre1069 = load i32, ptr %i.aev, align 4
  br label %._crit_edge1009

._crit_edge1009:                                  ; preds = %._crit_edge1009.loopexit, %.preheader
  %i.ahr = phi i32 [ %.pre1069, %._crit_edge1009.loopexit ], [ %i.aew, %.preheader ]
  %i.ahs = shl i32 %i.ahr, 1
  br label %._crit_edge1005

bb.hm:                                            ; preds = %.lr.ph1008, %bb.hs
  %indvars.iv1054 = phi i64 [ 0, %.lr.ph1008 ], [ %indvars.iv.next1055, %bb.hs ] ; 4 uses
  %.07621006 = phi i32 [ 0, %.lr.ph1008 ], [ %i.ail, %bb.hs ]
  %sext881 = shl i32 %.07621006, 16
  %i.aht = ashr exact i32 %sext881, 16
  %indvars.iv1054.tr = trunc nuw i64 %indvars.iv1054 to i32
  %i.ahu = shl nuw i32 %indvars.iv1054.tr, 1
  %i.ahv = sext i32 %i.ahu to i64
  %i.ahw = add i64 %.37811010, %i.ahv             ; 3 uses
  %i.ahx = icmp ult i64 %i.ahw, %2
  br i1 %i.ahx, label %bb.hn, label %bb.ho

bb.hn:                                            ; preds = %bb.hm
  %i.ahy = getelementptr inbounds nuw i8, ptr %1, i64 %i.ahw
  %i.ahz = load i8, ptr %i.ahy, align 1
  %i.aia = zext i8 %i.ahz to i16
  br label %bb.ho

bb.ho:                                            ; preds = %bb.hm, %bb.hn
  %i.aib = phi i16 [ %i.aia, %bb.hn ], [ 0, %bb.hm ] ; 2 uses
  %i.aic = add i64 %i.ahw, 1                      ; 2 uses
  %i.aid = icmp ult i64 %i.aic, %2
  br i1 %i.aid, label %bb.hp, label %bb.hq

bb.hp:                                            ; preds = %bb.ho
  %i.aie = getelementptr inbounds nuw i8, ptr %1, i64 %i.aic
  %i.aif = load i8, ptr %i.aie, align 1
  %i.aig = zext i8 %i.aif to i16
  %i.aih = shl nuw i16 %i.aig, 8
  %i.aii = or disjoint i16 %i.aih, %i.aib
  br label %bb.hq

bb.hq:                                            ; preds = %bb.ho, %bb.hp
  %i.aij = phi i16 [ %i.aii, %bb.hp ], [ %i.aib, %bb.ho ]
  %i.aik = zext i16 %i.aij to i32
  %i.ail = add nsw i32 %i.aht, %i.aik             ; 2 uses
  %i.aim = trunc i32 %i.ail to i16
  %i.ain = sitofp i16 %i.aim to float
  %i.aio = fmul nnan float %i.ain, f0x38000000
  %i.aip = load ptr, ptr %i.ahq, align 8
  %i.aiq = getelementptr inbounds nuw [4 x i8], ptr %i.aip, i64 %indvars.iv1054
  store float %i.aio, ptr %i.aiq, align 4
  %i.air = load ptr, ptr %i.ahq, align 8
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.air, i64 %indvars.iv1054 ; 2 uses
  %i.ait = load float, ptr %i.ais, align 4        ; 2 uses
  %i.aiu = fcmp olt float %i.ait, -1.000000e+00
  br i1 %i.aiu, label %.sink.split1174, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  %i.aiv = fcmp ogt float %i.ait, 1.000000e+00
  br i1 %i.aiv, label %.sink.split1174, label %bb.hs

.sink.split1174:                                  ; preds = %bb.hr, %bb.hq
  %.sink1175 = phi float [ -1.000000e+00, %bb.hq ], [ 1.000000e+00, %bb.hr ]
  store float %.sink1175, ptr %i.ais, align 4
  br label %bb.hs

bb.hs:                                            ; preds = %.sink.split1174, %bb.hr
  %indvars.iv.next1055 = add nuw nsw i64 %indvars.iv1054, 1 ; 2 uses
  %exitcond1058.not = icmp eq i64 %indvars.iv.next1055, %wide.trip.count1057
  br i1 %exitcond1058.not, label %._crit_edge1009.loopexit, label %bb.hm

._crit_edge1005.loopexit:                         ; preds = %bb.hx
  %.pre1068 = load i32, ptr %i.aev, align 4
  br label %._crit_edge1005

bb.ht:                                            ; preds = %.lr.ph1004, %bb.hx
  %indvars.iv1049 = phi i64 [ 0, %.lr.ph1004 ], [ %indvars.iv.next1050, %bb.hx ] ; 4 uses
  %.07601002 = phi i32 [ 0, %.lr.ph1004 ], [ %i.ajd, %bb.hx ]
  %sext = shl i32 %.07601002, 24
  %i.aiw = ashr exact i32 %sext, 24
  %i.aix = add i64 %.37811010, %indvars.iv1049    ; 2 uses
  %i.aiy = icmp ult i64 %i.aix, %2
  br i1 %i.aiy, label %bb.hu, label %bb.hv

bb.hu:                                            ; preds = %bb.ht
  %i.aiz = getelementptr inbounds nuw i8, ptr %1, i64 %i.aix
  %i.aja = load i8, ptr %i.aiz, align 1
  %i.ajb = zext i8 %i.aja to i32
  br label %bb.hv

bb.hv:                                            ; preds = %bb.ht, %bb.hu
  %i.ajc = phi i32 [ %i.ajb, %bb.hu ], [ 0, %bb.ht ]
  %i.ajd = add nsw i32 %i.ajc, %i.aiw             ; 2 uses
  %i.aje = trunc i32 %i.ajd to i8
  %i.ajf = sitofp i8 %i.aje to float
  %i.ajg = fmul nnan float %i.ajf, 7.812500e-03
  %i.ajh = load ptr, ptr %i.ahp, align 8
  %i.aji = getelementptr inbounds nuw [4 x i8], ptr %i.ajh, i64 %indvars.iv1049
  store float %i.ajg, ptr %i.aji, align 4
  %i.ajj = load ptr, ptr %i.ahp, align 8
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.ajj, i64 %indvars.iv1049 ; 2 uses
  %i.ajl = load float, ptr %i.ajk, align 4        ; 2 uses
  %i.ajm = fcmp olt float %i.ajl, -1.000000e+00
  br i1 %i.ajm, label %.sink.split1176, label %bb.hw

bb.hw:                                            ; preds = %bb.hv
  %i.ajn = fcmp ogt float %i.ajl, 1.000000e+00
  br i1 %i.ajn, label %.sink.split1176, label %bb.hx

.sink.split1176:                                  ; preds = %bb.hw, %bb.hv
  %.sink1177 = phi float [ -1.000000e+00, %bb.hv ], [ 1.000000e+00, %bb.hw ]
  store float %.sink1177, ptr %i.ajk, align 4
  br label %bb.hx

bb.hx:                                            ; preds = %.sink.split1176, %bb.hw
  %indvars.iv.next1050 = add nuw nsw i64 %indvars.iv1049, 1 ; 2 uses
  %exitcond1053.not = icmp eq i64 %indvars.iv.next1050, %wide.trip.count1052
  br i1 %exitcond1053.not, label %._crit_edge1005.loopexit, label %bb.ht

._crit_edge1005:                                  ; preds = %.preheader965, %._crit_edge1005.loopexit, %._crit_edge1009, %._crit_edge997
  %.pn.pn.in = phi i32 [ %.pn.in, %._crit_edge997 ], [ %i.ahs, %._crit_edge1009 ], [ %.pre1068, %._crit_edge1005.loopexit ], [ %i.aew, %.preheader965 ]
  %.pn.pn = zext i32 %.pn.pn.in to i64
  %.5783 = add i64 %.37811010, %.pn.pn            ; 2 uses
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 2 uses
  %i.ajo = load i16, ptr %i.mj, align 8
  %i.ajp = zext i16 %i.ajo to i64
  %i.ajq = icmp samesign ult i64 %indvars.iv.next1060, %i.ajp
  br i1 %i.ajq, label %bb.gx, label %._crit_edge1013
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden range(i32 0, 2) i32 @jar_xm_check_sanity_postload(ptr nofree noundef captures(none) %0) local_unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 50 ; 2 uses
  %.promoted = load i16, ptr %i.a, align 2        ; 3 uses
  %.not19 = icmp eq i16 %.promoted, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = zext i16 %.promoted to i32
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.e = load i16, ptr %i.d, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.f = phi i32 [ %i.b, %.lr.ph ], [ %i.t, %bb.e ]
  %i.g = phi i32 [ 0, %.lr.ph ], [ %i.s, %bb.e ]
  %.01116 = phi i8 [ 0, %.lr.ph ], [ %i.r, %bb.e ] ; 2 uses
  %i.h = phi i16 [ %.promoted, %.lr.ph ], [ %i.q, %bb.e ] ; 3 uses
  %i.i = zext i8 %.01116 to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = zext i8 %i.k to i16
  %.not = icmp ugt i16 %i.e, %i.l
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = add nuw nsw i32 %i.g, 1
  %i.n = icmp eq i32 %i.m, %i.f
  %i.o = icmp ugt i16 %i.h, 1
  %or.cond = and i1 %i.o, %i.n
  br i1 %or.cond, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.p = add i16 %i.h, -1                         ; 2 uses
  store i16 %i.p, ptr %i.a, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.q = phi i16 [ %i.h, %bb.b ], [ %i.p, %bb.d ] ; 2 uses
  %i.r = add i8 %.01116, 1                        ; 2 uses
  %i.s = zext i8 %i.r to i32                      ; 2 uses
  %i.t = zext i16 %i.q to i32                     ; 2 uses
  %i.u = icmp samesign ult i32 %i.s, %i.t
  br i1 %i.u, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.e, %bb.a
  %i.v = phi i32 [ 0, %bb.a ], [ 0, %bb.e ], [ 1, %bb.c ]
  ret i32 %i.v
}

; Function Attrs: mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable
define hidden void @jar_xm_free_context(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #52 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8
  tail call void @free(ptr noundef %i.a) #61
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @jar_xm_set_max_loop_count(ptr nofree noundef writeonly captures(none) initializes((409, 410)) %0, i8 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 409
  store i8 %1, ptr %i.a, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden zeroext i8 @jar_xm_get_loop_count(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #16 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.b = load i8, ptr %i.a, align 8
  ret i8 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @jar_xm_mute_channel(ptr nofree noundef readonly captures(none) %0, i16 noundef zeroext %1, i1 noundef zeroext %2) local_unnamed_addr #44 {
bb.a:
end_hunk_1
begin_hunk_2_@point_compare:bb.a
  %i.b = load i16, ptr %1, align 2
  %i.c = tail call i32 @llvm.ucmp.i32.i16(i16 %i.a, i16 %i.b)
  ret i32 %i.c
}

; Function Attrs: nofree nounwind memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc range(i32 0, 2) i32 @init_blocksize(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef %2) unnamed_addr #69 {
bb.a:
  %i.a = shl i32 %2, 1
  %i.b = add nsw i32 %i.a, 4
  %i.c = and i32 %i.b, -8                         ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.e = load i32, ptr %i.d, align 8
  %i.f = add i32 %i.e, %i.c                       ; 3 uses
  store i32 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 4 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.j = load i32, ptr %i.i, align 8              ; 3 uses
  %i.k = add nsw i32 %i.j, %i.c                   ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = icmp sgt i32 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds i8, ptr %i.h, i64 %i.o
  store i32 %i.k, ptr %i.i, align 8
  %.pre94 = add nsw i32 %i.k, %i.c
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %.not17.i = icmp eq i32 %i.c, 0
  br i1 %.not17.i, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.r = zext nneg i32 %1 to i64                  ; 2 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.r ; 2 uses
  store ptr null, ptr %i.s, align 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c, %bb.b
  %.pre-phi = phi i32 [ %.pre94, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %i.t = phi i32 [ %i.k, %bb.c ], [ %i.j, %bb.b ] ; 2 uses
  %.1.i = phi ptr [ %i.p, %bb.c ], [ null, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.v = zext nneg i32 %1 to i64                  ; 4 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.u, i64 %i.v ; 3 uses
  store ptr %.1.i, ptr %i.w, align 8
  %i.x = add i32 %i.f, %i.c
  %i.y = icmp sgt i32 %.pre-phi, %i.m
  br i1 %i.y, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = sext i32 %i.t to i64
  %i.aa = getelementptr inbounds i8, ptr %i.h, i64 %i.z
  store i32 %.pre-phi, ptr %i.i, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.ab = sext i32 %i.c to i64                    ; 2 uses
  %i.ac = tail call noalias ptr @malloc(i64 noundef %i.ab) #74
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.ae = zext nneg i32 %1 to i64                 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  store ptr %i.ac, ptr %i.af, align 8
  %i.ag = load i32, ptr %i.d, align 8
  %i.ah = add i32 %i.ag, %i.c
  store i32 %i.ah, ptr %i.d, align 8
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ab) #74
  %.pre = load i32, ptr %i.d, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.aj = phi i32 [ %i.t, %bb.e ], [ %.pre-phi, %bb.f ] ; 2 uses
  %.1.i59 = phi ptr [ null, %bb.e ], [ %i.aa, %bb.f ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.v
  store ptr %.1.i59, ptr %i.al, align 8
  %i.am = add nsw i32 %2, 4
  %i.an = and i32 %i.am, -8                       ; 2 uses
  %i.ao = add i32 %i.x, %i.an
  store i32 %i.ao, ptr %i.d, align 8
  %i.ap = add nsw i32 %i.aj, %i.an                ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, %i.m
  br i1 %i.aq, label %setup_malloc.exit65, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ar = sext i32 %i.aj to i64
  %i.as = getelementptr inbounds i8, ptr %i.h, i64 %i.ar
  store i32 %i.ap, ptr %i.i, align 8
  br label %setup_malloc.exit65

bb.j:                                             ; preds = %.thread, %bb.g
  %i.at = phi i32 [ %i.f, %.thread ], [ %.pre, %bb.g ]
  %.ph = phi ptr [ %i.s, %.thread ], [ %i.af, %bb.g ] ; 2 uses
  %.ph87 = phi i64 [ %i.r, %.thread ], [ %i.ae, %bb.g ] ; 3 uses
  %.1.i59.ph = phi ptr [ null, %.thread ], [ %i.ai, %bb.g ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1432
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %.ph87
  store ptr %.1.i59.ph, ptr %i.av, align 8
  %i.aw = add nsw i32 %2, 4
  %i.ax = and i32 %i.aw, -8                       ; 3 uses
  %i.ay = add i32 %i.at, %i.ax
  store i32 %i.ay, ptr %i.d, align 8
  %.not17.i64 = icmp eq i32 %i.ax, 0
  br i1 %.not17.i64, label %setup_malloc.exit65, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.az = sext i32 %i.ax to i64
  %i.ba = tail call noalias ptr @malloc(i64 noundef %i.az) #74
  br label %setup_malloc.exit65

setup_malloc.exit65:                              ; preds = %bb.h, %bb.i, %bb.j, %bb.k
  %i.bb = phi ptr [ %.1.i59, %bb.h ], [ %.1.i59, %bb.i ], [ %.1.i59.ph, %bb.k ], [ %.1.i59.ph, %bb.j ] ; 3 uses
  %i.bc = phi i64 [ %i.v, %bb.h ], [ %i.v, %bb.i ], [ %.ph87, %bb.k ], [ %.ph87, %bb.j ] ; 4 uses
  %i.bd = phi ptr [ %i.w, %bb.h ], [ %i.w, %bb.i ], [ %.ph, %bb.k ], [ %.ph, %bb.j ]
  %.1.i63 = phi ptr [ null, %bb.h ], [ %i.as, %bb.i ], [ %i.ba, %bb.k ], [ null, %bb.j ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1448
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.bc
  store ptr %.1.i63, ptr %i.bf, align 8
  %i.bg = load ptr, ptr %i.bd, align 8            ; 3 uses
  %.not = icmp eq ptr %i.bg, null
  br i1 %.not, label %compute_bitreverse.exit.sink.split, label %bb.l

bb.l:                                             ; preds = %setup_malloc.exit65
  %.not54 = icmp eq ptr %i.bb, null
  %.not55 = icmp eq ptr %.1.i63, null
  %or.cond = select i1 %.not54, i1 true, i1 %.not55
  br i1 %or.cond, label %compute_bitreverse.exit.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = ashr i32 %2, 2                          ; 3 uses
  %i.bi = ashr i32 %2, 3                          ; 4 uses
  %i.bj = icmp sgt i32 %i.bh, 0
  br i1 %i.bj, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.bk = uitofp nneg i32 %2 to double
  %i.bl = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bm = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> zeroinitializer
  br label %bb.n

.preheader.i:                                     ; preds = %bb.n, %bb.m
  %i.bn = icmp sgt i32 %i.bi, 0                   ; 2 uses
  br i1 %i.bn, label %.lr.ph39.i, label %compute_twiddle_factors.exit

.lr.ph39.i:                                       ; preds = %.preheader.i
  %i.bo = uitofp nneg i32 %2 to double
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 4 uses
  %.03335.i = phi i32 [ 0, %.lr.ph.i ], [ %i.cq, %bb.n ] ; 2 uses
  %i.bp = shl nuw nsw i32 %.03335.i, 2
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i
  %i.br = or disjoint i64 %indvars.iv.i, 1        ; 3 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %i.br
  %i.bt = trunc nuw nsw i64 %i.br to i32
  %i.bu = uitofp nneg i32 %i.bp to double
  %i.bv = uitofp nneg i32 %i.bt to double
  %i.bw = insertelement <2 x double> poison, double %i.bv, i64 0
  %i.bx = insertelement <2 x double> %i.bw, double %i.bu, i64 1
  %i.by = fmul nnan <2 x double> %i.bx, splat (double f0x400921FB54442D18)
  %i.bz = fdiv <2 x double> %i.by, %i.bm          ; 2 uses
  %i.ca = extractelement <2 x double> %i.bz, i64 1 ; 2 uses
  %i.cb = tail call double @cos(double noundef %i.ca) #61
  %i.cc = fptrunc double %i.cb to float
  store float %i.cc, ptr %i.bq, align 4
  %i.cd = tail call double @sin(double noundef %i.ca) #61
  %i.ce = fptrunc double %i.cd to float
  %i.cf = fneg float %i.ce
  store float %i.cf, ptr %i.bs, align 4
  %i.cg = extractelement <2 x double> %i.bz, i64 0
  %i.ch = fmul double %i.cg, 5.000000e-01         ; 2 uses
  %i.ci = tail call double @cos(double noundef %i.ch) #61
  %i.cj = fptrunc double %i.ci to float
  %i.ck = fmul float %i.cj, 5.000000e-01
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %indvars.iv.i
  store float %i.ck, ptr %i.cl, align 4
  %i.cm = tail call double @sin(double noundef %i.ch) #61
  %i.cn = fptrunc double %i.cm to float
  %i.co = fmul float %i.cn, 5.000000e-01
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.bb, i64 %i.br
  store float %i.co, ptr %i.cp, align 4
  %i.cq = add nuw nsw i32 %.03335.i, 1            ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 2
  %exitcond.not.i = icmp eq i32 %i.cq, %i.bh
  br i1 %exitcond.not.i, label %.preheader.i, label %bb.n

bb.o:                                             ; preds = %bb.o, %.lr.ph39.i
  %indvars.iv41.i = phi i64 [ 0, %.lr.ph39.i ], [ %indvars.iv.next42.i, %bb.o ] ; 3 uses
  %.13437.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.dd, %bb.o ]
  %i.cr = or disjoint i64 %indvars.iv41.i, 1      ; 2 uses
  %.tr.i = trunc nuw nsw i64 %i.cr to i32
  %i.cs = shl nuw nsw i32 %.tr.i, 1
  %i.ct = uitofp nneg i32 %i.cs to double
  %i.cu = fmul nnan double %i.ct, f0x400921FB54442D18
  %i.cv = fdiv double %i.cu, %i.bo                ; 2 uses
  %i.cw = tail call double @cos(double noundef %i.cv) #61
  %i.cx = fptrunc double %i.cw to float
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %indvars.iv41.i
  store float %i.cx, ptr %i.cy, align 4
  %i.cz = tail call double @sin(double noundef %i.cv) #61
  %i.da = fptrunc double %i.cz to float
  %i.db = fneg float %i.da
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %.1.i63, i64 %i.cr
  store float %i.db, ptr %i.dc, align 4
  %i.dd = add nuw nsw i32 %.13437.i, 1            ; 2 uses
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 2
  %exitcond44.not.i = icmp eq i32 %i.dd, %i.bi
  br i1 %exitcond44.not.i, label %compute_twiddle_factors.exit, label %bb.o

compute_twiddle_factors.exit:                     ; preds = %bb.o, %.preheader.i
  %i.de = load i32, ptr %i.d, align 8
  %i.df = add i32 %i.de, %i.c
  store i32 %i.df, ptr %i.d, align 8
  %i.dg = load ptr, ptr %i.g, align 8             ; 3 uses
  %.not.i66 = icmp eq ptr %i.dg, null
  br i1 %.not.i66, label %bb.r, label %bb.p

bb.p:                                             ; preds = %compute_twiddle_factors.exit
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.di = load i32, ptr %i.dh, align 8            ; 2 uses
  %i.dj = add nsw i32 %i.di, %i.c                 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.dl = load i32, ptr %i.dk, align 4
  %i.dm = icmp sgt i32 %i.dj, %i.dl
  br i1 %i.dm, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dn = sext i32 %i.di to i64
  %i.do = getelementptr inbounds i8, ptr %i.dg, i64 %i.dn
  store i32 %i.dj, ptr %i.dh, align 8
  br label %setup_malloc.exit69

bb.r:                                             ; preds = %compute_twiddle_factors.exit
  %.not17.i68 = icmp eq i32 %i.c, 0
  br i1 %.not17.i68, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dp = sext i32 %i.c to i64
  %i.dq = tail call noalias ptr @malloc(i64 noundef %i.dp) #74
  br label %setup_malloc.exit69

setup_malloc.exit69:                              ; preds = %bb.q, %bb.s
  %.1.i67 = phi ptr [ %i.dq, %bb.s ], [ %i.do, %bb.q ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.bc
  store ptr %.1.i67, ptr %i.ds, align 8
  %.not56 = icmp eq ptr %.1.i67, null
  br i1 %.not56, label %compute_bitreverse.exit.sink.split, label %bb.t

bb.t:                                             ; preds = %setup_malloc.exit69
  %i.dt = ashr i32 %2, 1                          ; 3 uses
  %i.du = icmp sgt i32 %i.dt, 0
  br i1 %i.du, label %.lr.ph.i70, label %compute_window.exit

.lr.ph.i70:                                       ; preds = %bb.t
  %i.dv = uitofp nneg i32 %i.dt to double
  %wide.trip.count.i = zext nneg i32 %i.dt to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.u, %.lr.ph.i70
  %indvars.iv.i71 = phi i64 [ 0, %.lr.ph.i70 ], [ %indvars.iv.next.i72, %bb.u ] ; 3 uses
  %i.dw = trunc nuw nsw i64 %indvars.iv.i71 to i32
  %i.dx = uitofp nneg i32 %i.dw to double
  %i.dy = fadd nnan double %i.dx, 5.000000e-01
  %i.dz = fdiv nnan double %i.dy, %i.dv
  %i.ea = fmul nnan double %i.dz, 5.000000e-01
  %i.eb = fmul nnan double %i.ea, f0x400921FB54442D18
  %i.ec = tail call double @sin(double noundef %i.eb) #61
  %i.ed = fptrunc double %i.ec to float           ; 2 uses
  %i.ee = fmul float %i.ed, %i.ed
  %i.ef = fpext float %i.ee to double
  %i.eg = fmul double %i.ef, f0x3FF921FB54442D18
  %i.eh = tail call double @sin(double noundef %i.eg) #61
  %i.ei = fptrunc double %i.eh to float
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %.1.i67, i64 %indvars.iv.i71
  store float %i.ei, ptr %i.ej, align 4
  %indvars.iv.next.i72 = add nuw nsw i64 %indvars.iv.i71, 1 ; 2 uses
  %exitcond.not.i73 = icmp eq i64 %indvars.iv.next.i72, %wide.trip.count.i
  br i1 %exitcond.not.i73, label %compute_window.exit.loopexit, label %bb.u

compute_window.exit.loopexit:                     ; preds = %bb.u
  %.pre93 = load ptr, ptr %i.g, align 8
  br label %compute_window.exit

compute_window.exit:                              ; preds = %compute_window.exit.loopexit, %bb.t
  %i.ek = phi ptr [ %.pre93, %compute_window.exit.loopexit ], [ %i.dg, %bb.t ] ; 2 uses
  %i.el = add nsw i32 %i.bh, 6
  %i.em = and i32 %i.el, -8                       ; 4 uses
  %i.en = load i32, ptr %i.d, align 8
  %i.eo = add i32 %i.en, %i.em
  store i32 %i.eo, ptr %i.d, align 8
  %.not.i74 = icmp eq ptr %i.ek, null
  br i1 %.not.i74, label %bb.x, label %bb.v

bb.v:                                             ; preds = %compute_window.exit
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8            ; 2 uses
  %i.er = add nsw i32 %i.eq, %i.em                ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = icmp sgt i32 %i.er, %i.et
  br i1 %i.eu, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ev = sext i32 %i.eq to i64
  %i.ew = getelementptr inbounds i8, ptr %i.ek, i64 %i.ev
  store i32 %i.er, ptr %i.ep, align 8
  br label %setup_malloc.exit77

bb.x:                                             ; preds = %compute_window.exit
  %.not17.i76 = icmp eq i32 %i.em, 0
  br i1 %.not17.i76, label %compute_bitreverse.exit.sink.split.sink.split, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ex = sext i32 %i.em to i64
  %i.ey = tail call noalias ptr @malloc(i64 noundef %i.ex) #74
  br label %setup_malloc.exit77

setup_malloc.exit77:                              ; preds = %bb.w, %bb.y
  %.1.i75 = phi ptr [ %i.ey, %bb.y ], [ %i.ew, %bb.w ] ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 1480
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ez, i64 %i.bc
  store ptr %.1.i75, ptr %i.fa, align 8
  %.not57 = icmp eq ptr %.1.i75, null
  br i1 %.not57, label %compute_bitreverse.exit.sink.split, label %bb.z

bb.z:                                             ; preds = %setup_malloc.exit77
  %i.fb = icmp slt i32 %2, 0
  br i1 %i.fb, label %ilog.exit.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.fc = icmp samesign ult i32 %2, 16384
  br i1 %i.fc, label %bb.ab, label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.fd = icmp samesign ult i32 %2, 16
  br i1 %i.fd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.fe = zext nneg i32 %2 to i64
  %i.ff = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1
  %i.fh = sext i8 %i.fg to i32
  br label %ilog.exit.i

bb.ad:                                            ; preds = %bb.ab
  %i.fi = icmp samesign ult i32 %2, 512
  br i1 %i.fi, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fj = lshr i32 %2, 5
  %i.fk = zext nneg i32 %i.fj to i64
  %i.fl = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.fk
  %i.fm = load i8, ptr %i.fl, align 1
  %i.fn = sext i8 %i.fm to i32
  %i.fo = add nsw i32 %i.fn, 5
  br label %ilog.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.fp = lshr i32 %2, 10
  %i.fq = zext nneg i32 %i.fp to i64
  %i.fr = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.fq
  %i.fs = load i8, ptr %i.fr, align 1
  %i.ft = sext i8 %i.fs to i32
  %i.fu = add nsw i32 %i.ft, 10
  br label %ilog.exit.i

bb.ag:                                            ; preds = %bb.aa
  %i.fv = icmp samesign ult i32 %2, 16777216
  br i1 %i.fv, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.fw = icmp samesign ult i32 %2, 524288
  br i1 %i.fw, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.fx = lshr i32 %2, 15
  %i.fy = zext nneg i32 %i.fx to i64
  %i.fz = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.fy
  %i.ga = load i8, ptr %i.fz, align 1
  %i.gb = sext i8 %i.ga to i32
  %i.gc = add nsw i32 %i.gb, 15
  br label %ilog.exit.i

bb.aj:                                            ; preds = %bb.ah
  %i.gd = lshr i32 %2, 20
  %i.ge = zext nneg i32 %i.gd to i64
  %i.gf = getelementptr inbounds nuw i8, ptr @ilog.log2_4, i64 %i.ge
  %i.gg = load i8, ptr %i.gf, align 1
  %i.gh = sext i8 %i.gg to i32
  %i.gi = add nsw i32 %i.gh, 20
  br label %ilog.exit.i
end_hunk_2
