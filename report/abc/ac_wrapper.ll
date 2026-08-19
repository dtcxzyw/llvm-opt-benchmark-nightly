inline.NumInlined: 2178
inline.NumDeleted: 912
loop-unroll.NumCompletelyUnrolled: 26
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 63
begin_hunk_0_@_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh:bb.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = zext i8 %spec.select to i64
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.af
  %i.ah = zext nneg i8 %spec.select92 to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ak = zext nneg i8 %spec.select to i32
  %.neg = shl nsw i32 -1, %i.ak
  %i.al = shl nuw nsw i32 1, %i.ad
  %i.am = add nsw i32 %.neg, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = zext i32 %i.am to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !52 ; 2 uses
  %i.at = add nsw i64 %.idx, -8                   ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.at, 24
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i
  %n.vec174 = and i64 %i.av, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec174, 3
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert177 = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat178 = shufflevector <2 x i64> %broadcast.splatinsert177, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert179 = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat180 = shufflevector <2 x i64> %broadcast.splatinsert179, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert181 = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat182 = shufflevector <2 x i64> %broadcast.splatinsert181, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph173
  %index184 = phi i64 [ 0, %vector.ph173 ], [ %index.next187, %vector.body183 ] ; 2 uses
  %i.ay = shl i64 %index184, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load185 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !52 ; 3 uses
  %wide.load186 = load <2 x i64>, ptr %i.az, align 8, !tbaa !52 ; 3 uses
  %i.ba = and <2 x i64> %broadcast.splat178, %wide.load185
  %i.bb = and <2 x i64> %broadcast.splat178, %wide.load186
  %i.bc = and <2 x i64> %broadcast.splat180, %wide.load185
  %i.bd = and <2 x i64> %broadcast.splat180, %wide.load186
  %i.be = shl <2 x i64> %i.bc, %broadcast.splat176
  %i.bf = shl <2 x i64> %i.bd, %broadcast.splat176
  %i.bg = or <2 x i64> %i.be, %i.ba
  %i.bh = or <2 x i64> %i.bf, %i.bb
  %i.bi = and <2 x i64> %broadcast.splat182, %wide.load185
  %i.bj = and <2 x i64> %broadcast.splat182, %wide.load186
  %i.bk = lshr <2 x i64> %i.bi, %broadcast.splat176
  %i.bl = lshr <2 x i64> %i.bj, %broadcast.splat176
  %i.bm = or <2 x i64> %i.bg, %i.bk
  %i.bn = or <2 x i64> %i.bh, %i.bl
  store <2 x i64> %i.bm, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %i.bn, ptr %i.az, align 8, !tbaa !52
  %index.next187 = add nuw i64 %index184, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next187, %n.vec174
  br i1 %i.bo, label %middle.block188, label %vector.body183, !llvm.loop !139

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec174
  br i1 %cmp.n189, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph.i, %middle.block188
  %.010.i.ph = phi ptr [ %1, %.lr.ph.i ], [ %i.ax, %middle.block188 ]
  br label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %.010.i = phi ptr [ %i.bx, %scalar.ph171 ], [ %.010.i.ph, %scalar.ph171.preheader ] ; 3 uses
  %i.bp = load i64, ptr %.010.i, align 8, !tbaa !52 ; 3 uses
  %i.bq = and i64 %i.aq, %i.bp
  %i.br = and i64 %i.ar, %i.bp
  %i.bs = shl i64 %i.br, %i.ao
  %i.bt = or i64 %i.bs, %i.bq
  %i.bu = and i64 %i.as, %i.bp
  %i.bv = lshr i64 %i.bu, %i.ao
  %i.bw = or i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %.010.i, align 8, !tbaa !52
  %i.bx = getelementptr i8, ptr %.010.i, i64 8    ; 2 uses
  %.not.i = icmp eq ptr %i.bx, %i.aj
  br i1 %.not.i, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph171, !llvm.loop !140

bb.e:                                             ; preds = %bb.d
  %i.by = zext i8 %spec.select to i32             ; 2 uses
  %i.bz = icmp ult i8 %spec.select, 6
  %.idx109 = shl nuw nsw i64 %i.g, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.idx109 ; 2 uses
  br i1 %i.bz, label %.preheader.lr.ph, label %.preheader95.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.cb = add nsw i32 %i.ad, -6                   ; 3 uses
  %i.cc = shl nuw i32 1, %i.cb                    ; 3 uses
  %i.cd = shl nuw nsw i32 1, %i.by
  %.not110 = icmp eq i32 %i.cb, 31
  %i.ce = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cf = sext i32 %i.cc to i64                   ; 3 uses
  %i.cg = shl i32 2, %i.cb
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  br i1 %.not110, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ci = zext nneg i8 %spec.select to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52 ; 5 uses
  %i.cl = xor i64 %i.ck, -1                       ; 2 uses
  %smax127 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %wide.trip.count128 = zext nneg i32 %smax127 to i64 ; 3 uses
  %i.cm = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %i.cn = shl nsw i64 %i.ch, 3
  %i.co = shl nsw i64 %i.cf, 3                    ; 2 uses
  %min.iters.check156 = icmp slt i32 %i.cc, 2
  %i.cp = getelementptr i8, ptr %1, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cm
  %i.cr = getelementptr i8, ptr %1, i64 %i.co
  %i.cs = getelementptr i8, ptr %1, i64 %i.cm
  %n.vec158 = and i64 %wide.trip.count128, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar147 = phi i64 [ %indvar.next148, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.067105.us = phi ptr [ %i.dr, %._crit_edge.us ], [ %1, %.preheader.lr.ph.split.us ] ; 4 uses
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.memcheck146

scalar.ph155.preheader:                           ; preds = %vector.memcheck146, %.preheader.us
  br label %scalar.ph155

vector.memcheck146:                               ; preds = %.preheader.us
  %i.ct = mul i64 %i.cn, %indvar147               ; 3 uses
  %scevgep151 = getelementptr i8, ptr %i.cq, i64 %i.ct
  %scevgep150 = getelementptr i8, ptr %i.cr, i64 %i.ct
  %scevgep149 = getelementptr i8, ptr %i.cs, i64 %i.ct
  %bound0152 = icmp ult ptr %.067105.us, %scevgep151
  %bound1153 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %scalar.ph155.preheader, label %vector.body163

vector.body163:                                   ; preds = %vector.memcheck146, %vector.body163
  %index164 = phi i64 [ %index.next167, %vector.body163 ], [ 0, %vector.memcheck146 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.067105.us, i64 %index164 ; 3 uses
  %wide.load165 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !52, !alias.scope !141, !noalias !144 ; 2 uses
  %i.cv = and <2 x i64> %broadcast.splat, %wide.load165
  %i.cw = lshr <2 x i64> %i.cv, %broadcast.splat160
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cf ; 2 uses
  %wide.load166 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !52, !alias.scope !144 ; 2 uses
  %i.cy = shl <2 x i64> %wide.load166, %broadcast.splat160
  %i.cz = and <2 x i64> %i.cy, %broadcast.splat
  %i.da = and <2 x i64> %wide.load165, %broadcast.splat162
  %i.db = or <2 x i64> %i.cz, %i.da
  store <2 x i64> %i.db, ptr %i.cu, align 8, !tbaa !52, !alias.scope !141, !noalias !144
  %i.dc = and <2 x i64> %wide.load166, %broadcast.splat
  %i.dd = or <2 x i64> %i.dc, %i.cw
  store <2 x i64> %i.dd, ptr %i.cx, align 8, !tbaa !52, !alias.scope !144
  %index.next167 = add nuw i64 %index164, 2       ; 2 uses
  %i.de = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.de, label %._crit_edge.us, label %vector.body163, !llvm.loop !146

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph155 ], [ 0, %scalar.ph155.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.067105.us, i64 %indvars.iv124 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !52 ; 2 uses
  %i.dh = and i64 %i.ck, %i.dg
  %i.di = lshr i64 %i.dh, %i.ce
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.cf ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52 ; 2 uses
  %i.dl = shl i64 %i.dk, %i.ce
  %i.dm = and i64 %i.dl, %i.ck
  %i.dn = and i64 %i.dg, %i.cl
  %i.do = or i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.df, align 8, !tbaa !52
  %i.dp = and i64 %i.dk, %i.ck
  %i.dq = or i64 %i.dp, %i.di
  store i64 %i.dq, ptr %i.dj, align 8, !tbaa !52
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge.us, label %scalar.ph155, !llvm.loop !147

._crit_edge.us:                                   ; preds = %vector.body163, %scalar.ph155
  %i.dr = getelementptr inbounds [8 x i8], ptr %.067105.us, i64 %i.ch ; 2 uses
  %.not80.us = icmp eq ptr %i.dr, %i.ca
  %indvar.next148 = add i64 %indvar147, 1
  br i1 %.not80.us, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.us, !llvm.loop !148

.preheader95.lr.ph:                               ; preds = %bb.e
  %i.ds = add nsw i32 %i.by, -6                   ; 3 uses
  %i.dt = shl nuw i32 1, %i.ds                    ; 4 uses
  %i.du = add nsw i32 %i.ad, -6                   ; 3 uses
  %i.dv = shl nuw i32 1, %i.du                    ; 2 uses
  %.not107 = icmp eq i32 %i.du, 31
  %i.dw = sext i32 %i.dt to i64                   ; 6 uses
  %i.dx = sext i32 %i.dv to i64                   ; 8 uses
  %i.dy = shl i32 2, %i.du
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %.not108 = icmp eq i32 %i.ds, 31
  %or.cond = select i1 %.not107, i1 true, i1 %.not108
  br i1 %or.cond, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader95.us.us.preheader

.preheader95.us.us.preheader:                     ; preds = %.preheader95.lr.ph
  %i.ea = shl i32 2, %i.ds                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 1) ; 2 uses
  %i.eb = sext i32 %i.ea to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ec = shl nsw i64 %i.dw, 3
  %i.ed = shl nsw i64 %i.dz, 3
  %smax138 = tail call i64 @llvm.smax.i64(i64 %i.eb, i64 %i.dx)
  %i.ee = icmp slt i32 %i.ea, %i.dv
  %umin = zext i1 %i.ee to i64                    ; 3 uses
  %i.ef = or disjoint i64 %umin, %i.eb
  %i.eg = sub i64 %smax138, %i.ef                 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 1) ; 2 uses
  %4 = shl nsw i64 %i.dx, 3
  %i.eh = udiv i64 %i.eg, %umax
  %i.ei = add i64 %i.eh, %umin
  %i.ej = mul i64 %i.ei, %i.eb
  %5 = add i64 %i.ej, %i.dx
  %6 = add i64 %5, %wide.trip.count
  %i.ek = shl i64 %6, 3
  %i.el = getelementptr i8, ptr %1, i64 %i.ec
  %i.em = getelementptr i8, ptr %1, i64 %4
  %i.en = getelementptr i8, ptr %1, i64 %i.ek
  %min.iters.check = icmp slt i32 %i.dt, 12
  %invariant.op = add i64 %i.dw, %wide.trip.count
  %stride.check = icmp slt i32 %i.ea, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp slt i32 %i.dt, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod195 = trunc i32 %smax to i1
  br label %.preheader95.us.us

.preheader95.us.us:                               ; preds = %.preheader95.us.us.preheader, %._crit_edge99.us.us
  %indvar = phi i64 [ 0, %.preheader95.us.us.preheader ], [ %indvar.next, %._crit_edge99.us.us ] ; 2 uses
  %.065101.us.us = phi ptr [ %1, %.preheader95.us.us.preheader ], [ %i.fo, %._crit_edge99.us.us ] ; 2 uses
  %i.ep = mul i64 %i.ed, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.ep
  %scevgep139.a = getelementptr i8, ptr %i.em, i64 %i.ep
  %scevgep140 = getelementptr i8, ptr %i.en, i64 %i.ep
  %scevgep141 = getelementptr i8, ptr %1, i64 %i.ep
  %bound1.a = icmp ult ptr %scevgep, %scevgep140
  br label %.preheader94.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dw ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.dx ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !tbaa !52
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !52
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !52
  store i64 %i.et, ptr %i.es, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.dw ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.dx ; 2 uses
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !52
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !52
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !52
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !149

.preheader94.us.us:                               ; preds = %.preheader95.us.us, %._crit_edge.us.us
  %indvars.iv121 = phi i64 [ 0, %.preheader95.us.us ], [ %indvars.iv.next122, %._crit_edge.us.us ] ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.065101.us.us, i64 %indvars.iv121 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader94.us.us
  br i1 %i.eo, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader94.us.us
  %7 = udiv i64 %i.eg, %umax
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.eb
  %.reass = add i64 %9, %invariant.op
  %10 = shl i64 %.reass, 3
  %scevgep139 = getelementptr i8, ptr %scevgep141, i64 %10
  %bound1 = icmp ult ptr %scevgep139.a, %scevgep139
  %found.conflict = and i1 %bound1.a, %bound1
  %11 = or i1 %found.conflict, %stride.check
  br i1 %11, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.dw ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.dx ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fd, align 8, !tbaa !52, !alias.scope !150, !noalias !153
  %wide.load143 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !52, !alias.scope !150, !noalias !153
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load144 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !52, !alias.scope !153
  %wide.load145 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !52, !alias.scope !153
  store <2 x i64> %wide.load144, ptr %i.fd, align 8, !tbaa !52, !alias.scope !150, !noalias !153
  store <2 x i64> %wide.load145, ptr %i.ff, align 8, !tbaa !52, !alias.scope !150, !noalias !153
  store <2 x i64> %wide.load, ptr %i.fe, align 8, !tbaa !52, !alias.scope !153
  store <2 x i64> %wide.load143, ptr %i.fg, align 8, !tbaa !52, !alias.scope !153
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %._crit_edge.us.us, label %vector.body, !llvm.loop !155

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.epil.init ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dw ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dx ; 2 uses
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !52
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !52
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !52
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !52
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, %i.eb ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next122, %i.dx
  br i1 %i.fn, label %.preheader94.us.us, label %._crit_edge99.us.us, !llvm.loop !156

._crit_edge99.us.us:                              ; preds = %._crit_edge.us.us
  %i.fo = getelementptr inbounds [8 x i8], ptr %.065101.us.us, i64 %i.dz ; 2 uses
  %.not.us.us = icmp eq ptr %i.fo, %i.ca
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.us.us, label %_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader95.us.us, !llvm.loop !157

_ZSt9transformIPmS0_ZN3acd21ac_decomposition_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit: ; preds = %._crit_edge99.us.us, %._crit_edge.us, %scalar.ph171, %middle.block188, %.preheader95.lr.ph, %.preheader.lr.ph, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3acd21ac_decomposition_impl27enumerate_iset_combinationsIRSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEEESt5tupleIJS5_St5arrayIjLm11EEjEEjjOT_(ptr dead_on_unwind noalias writable sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(500) %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %5 = alloca %"struct.kitty::static_truth_table", align 8 ; 9 uses
  %.sroa.0 = alloca [32 x i64], align 8           ; 5 uses
  %i.a = alloca [16 x i32], align 16              ; 11 uses
  %i.b = alloca [16 x i32], align 16              ; 8 uses
  %i.c = alloca [16 x i32], align 16              ; 8 uses
  %6 = alloca %"struct.std::array.15", align 4    ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %5, ptr noundef nonnull align 8 dereferenceable(256) %i.d, i64 256, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(256) %i.d, i64 256, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 436 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !51   ; 2 uses
  %i.g = sub i32 %i.f, %2
  %i.h = shl nuw i32 1, %i.g
  %i.i = add nuw nsw i32 %i.h, 1
  %i.j = icmp eq i32 %2, %3
  br i1 %i.j, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !132
  %.not.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i, label %bb.c, label %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt25__throw_bad_function_callv() #14
  unreachable

_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !129
  %i.o = call noundef i32 %i.n(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(256) %5) #12, !inline_history !158
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 456
  store i32 %i.o, ptr %0, align 8, !tbaa !159, !alias.scope !161
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %i.q, ptr noundef nonnull align 8 dereferenceable(44) %i.p, i64 44, i1 false), !tbaa.struct !134
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.r, ptr noundef nonnull align 8 dereferenceable(256) %5, i64 256, i1 false), !tbaa.struct !108
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.s = add i32 %i.f, -1
  %i.t = icmp eq i32 %2, %i.s
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN3acd21ac_decomposition_impl28enumerate_iset_combinations2Ejj(ptr dead_on_unwind writable sret(%"class.std::tuple") align 8 %0, ptr noundef nonnull align 8 dereferenceable(500) %1, i32 noundef %2, i32 noundef %3)
  br label %bb.n

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 432 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !42   ; 3 uses
  %.not70 = icmp eq i32 %i.v, 0
  br i1 %.not70, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.f
  %wide.trip.count = zext i32 %i.v to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  br i1 %min.iters.check, label %.lr.ph.preheader136, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <4 x i32> %vec.ind, ptr %i.w, align 16, !tbaa !43
  store <4 x i32> %step.add, ptr %i.x, align 16, !tbaa !43
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <4 x i32> %vec.ind, ptr %i.y, align 16, !tbaa !43
  store <4 x i32> %step.add, ptr %i.z, align 16, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !164

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader136

.lr.ph.preheader136:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.f
  %i.ab = load i32, ptr %1, align 8, !tbaa !12    ; 3 uses
  %.not = icmp eq i32 %i.ab, -1
  %i.ac = lshr i32 %i.ab, 1
  %i.ad = and i32 %i.ab, 1
  %i.ae = add nuw i32 %i.ac, %i.ad
  %.029 = select i1 %.not, i32 2, i32 %i.ae
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !132
  %.not.i.i3764 = icmp eq ptr %i.ag, null
  br i1 %.not.i.i3764, label %._crit_edge66, label %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38.lr.ph

_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38.lr.ph: ; preds = %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  br label %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38

.lr.ph:                                           ; preds = %.lr.ph.preheader136, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader136 ] ; 4 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv
  %i.aj = trunc nuw i64 %indvars.iv to i32        ; 2 uses
  store i32 %i.aj, ptr %i.ai, align 4, !tbaa !43
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !165

._crit_edge66:                                    ; preds = %_ZN3acd21ac_decomposition_impl24combinations_offset_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit, %._crit_edge
  call void @_ZSt25__throw_bad_function_callv() #14
  unreachable

_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38: ; preds = %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38.lr.ph, %_ZN3acd21ac_decomposition_impl24combinations_offset_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit
  %.04465 = phi i32 [ %i.i, %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38.lr.ph ], [ %.2.ph, %_ZN3acd21ac_decomposition_impl24combinations_offset_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit ] ; 2 uses
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !129
  %i.am = call noundef i32 %i.al(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(256) %5) #12, !inline_history !158 ; 4 uses
  %i.an = icmp ult i32 %i.am, %.04465
  %.pre = load i32, ptr %i.u, align 8, !tbaa !42  ; 6 uses
  br i1 %i.an, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(256) %5, i64 256, i1 false), !tbaa.struct !108
  %.not71 = icmp eq i32 %.pre, 0
  br i1 %.not71, label %._crit_edge62, label %.lr.ph61.preheader

.lr.ph61.preheader:                               ; preds = %bb.g
  %i.ao = zext i32 %.pre to i64
  %i.ap = shl nuw nsw i64 %i.ao, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.a, i64 %i.ap, i1 false), !tbaa !43
  br label %._crit_edge62

._crit_edge62:                                    ; preds = %.lr.ph61.preheader, %bb.g
  %.not36 = icmp ugt i32 %i.am, %.029
  br i1 %.not36, label %bb.h, label %_ZN3acd21ac_decomposition_impl24combinations_offset_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread

bb.h:                                             ; preds = %._crit_edge62, %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38
  %.2.ph = phi i32 [ %.04465, %_ZNKSt8functionIFjRKN5kitty18static_truth_tableILj11ELb0EEEEEclES4_.exit38 ], [ %i.am, %._crit_edge62 ] ; 2 uses
  %invariant.op.i = sub i32 %.pre, %2
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.045.in.i = phi i32 [ %2, %bb.h ], [ %.045.i, %bb.j ] ; 3 uses
  %.045.i = add i32 %.045.in.i, -1                ; 5 uses
  %i.aq = zext i32 %.045.i to i64                 ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !43 ; 4 uses
  %.reass.i = add i32 %invariant.op.i, %.045.i
  %.not.not.not.i.not = icmp eq i32 %i.as, %.reass.i
  br i1 %.not.not.not.i.not, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.at = icmp eq i32 %.045.i, %3
  br i1 %i.at, label %_ZN3acd21ac_decomposition_impl24combinations_offset_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread, label %bb.i, !llvm.loop !166

bb.k:                                             ; preds = %bb.i
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.aq
  %i.av = add i32 %i.as, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43 ; 3 uses
end_hunk_0
begin_hunk_1_@_ZN3acd21ac_decomposition_impl22generate_decompositionEv:bb.a
  %i.vj = and <2 x i64> %wide.load195.4, %broadcast.splat186
  %i.vk = and <2 x i64> %wide.load194.4, %broadcast.splat188
  %i.vl = and <2 x i64> %wide.load195.4, %broadcast.splat188
  %i.vm = shl <2 x i64> %i.vk, %broadcast.splat184
  %i.vn = shl <2 x i64> %i.vl, %broadcast.splat184
  %i.vo = or <2 x i64> %i.vm, %i.vi
  %i.vp = or <2 x i64> %i.vn, %i.vj
  %i.vq = and <2 x i64> %wide.load194.4, %broadcast.splat190
  %i.vr = and <2 x i64> %wide.load195.4, %broadcast.splat190
  %i.vs = lshr <2 x i64> %i.vq, %broadcast.splat184
  %i.vt = lshr <2 x i64> %i.vr, %broadcast.splat184
  %i.vu = or <2 x i64> %i.vo, %i.vs
  %i.vv = or <2 x i64> %i.vp, %i.vt
  store <2 x i64> %i.vu, ptr %next.gep193.4, align 16, !tbaa !52
  store <2 x i64> %i.vv, ptr %i.cf, align 16, !tbaa !52
  %wide.load194.5 = load <2 x i64>, ptr %i.cg, align 16, !tbaa !52 ; 3 uses
  %wide.load195.5 = load <2 x i64>, ptr %i.ch, align 16, !tbaa !52 ; 3 uses
  %i.vw = and <2 x i64> %wide.load194.5, %broadcast.splat186
  %i.vx = and <2 x i64> %wide.load195.5, %broadcast.splat186
  %i.vy = and <2 x i64> %wide.load194.5, %broadcast.splat188
  %i.vz = and <2 x i64> %wide.load195.5, %broadcast.splat188
  %i.wa = shl <2 x i64> %i.vy, %broadcast.splat184
  %i.wb = shl <2 x i64> %i.vz, %broadcast.splat184
  %i.wc = or <2 x i64> %i.wa, %i.vw
  %i.wd = or <2 x i64> %i.wb, %i.vx
  %i.we = and <2 x i64> %wide.load194.5, %broadcast.splat190
  %i.wf = and <2 x i64> %wide.load195.5, %broadcast.splat190
  %i.wg = lshr <2 x i64> %i.we, %broadcast.splat184
  %i.wh = lshr <2 x i64> %i.wf, %broadcast.splat184
  %i.wi = or <2 x i64> %i.wc, %i.wg
  %i.wj = or <2 x i64> %i.wd, %i.wh
  store <2 x i64> %i.wi, ptr %next.gep193.5, align 16, !tbaa !52
  store <2 x i64> %i.wj, ptr %i.ci, align 16, !tbaa !52
  %wide.load194.6 = load <2 x i64>, ptr %i.cj, align 16, !tbaa !52 ; 3 uses
  %wide.load195.6 = load <2 x i64>, ptr %i.ck, align 16, !tbaa !52 ; 3 uses
  %i.wk = and <2 x i64> %wide.load194.6, %broadcast.splat186
  %i.wl = and <2 x i64> %wide.load195.6, %broadcast.splat186
  %i.wm = and <2 x i64> %wide.load194.6, %broadcast.splat188
  %i.wn = and <2 x i64> %wide.load195.6, %broadcast.splat188
  %i.wo = shl <2 x i64> %i.wm, %broadcast.splat184
  %i.wp = shl <2 x i64> %i.wn, %broadcast.splat184
  %i.wq = or <2 x i64> %i.wo, %i.wk
  %i.wr = or <2 x i64> %i.wp, %i.wl
  %i.ws = and <2 x i64> %wide.load194.6, %broadcast.splat190
  %i.wt = and <2 x i64> %wide.load195.6, %broadcast.splat190
  %i.wu = lshr <2 x i64> %i.ws, %broadcast.splat184
  %i.wv = lshr <2 x i64> %i.wt, %broadcast.splat184
  %i.ww = or <2 x i64> %i.wq, %i.wu
  %i.wx = or <2 x i64> %i.wr, %i.wv
  store <2 x i64> %i.ww, ptr %next.gep193.6, align 16, !tbaa !52
  store <2 x i64> %i.wx, ptr %i.cl, align 16, !tbaa !52
  %wide.load194.7 = load <2 x i64>, ptr %i.cm, align 16, !tbaa !52 ; 3 uses
  %wide.load195.7 = load <2 x i64>, ptr %i.cn, align 16, !tbaa !52 ; 3 uses
  %i.wy = and <2 x i64> %wide.load194.7, %broadcast.splat186
  %i.wz = and <2 x i64> %wide.load195.7, %broadcast.splat186
  %i.xa = and <2 x i64> %wide.load194.7, %broadcast.splat188
  %i.xb = and <2 x i64> %wide.load195.7, %broadcast.splat188
  %i.xc = shl <2 x i64> %i.xa, %broadcast.splat184
  %i.xd = shl <2 x i64> %i.xb, %broadcast.splat184
  %i.xe = or <2 x i64> %i.xc, %i.wy
  %i.xf = or <2 x i64> %i.xd, %i.wz
  %i.xg = and <2 x i64> %wide.load194.7, %broadcast.splat190
  %i.xh = and <2 x i64> %wide.load195.7, %broadcast.splat190
  %i.xi = lshr <2 x i64> %i.xg, %broadcast.splat184
  %i.xj = lshr <2 x i64> %i.xh, %broadcast.splat184
  %i.xk = or <2 x i64> %i.xe, %i.xi
  %i.xl = or <2 x i64> %i.xf, %i.xj
  store <2 x i64> %i.xk, ptr %next.gep193.7, align 16, !tbaa !52
  store <2 x i64> %i.xl, ptr %i.co, align 16, !tbaa !52
  br label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78

bb.n:                                             ; preds = %bb.m
  %i.xm = zext i8 %spec.select.i to i32           ; 2 uses
  %i.xn = icmp ult i8 %spec.select.i, 6
  br i1 %i.xn, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.xo = add nsw i32 %i.nu, -6                   ; 3 uses
  %i.xp = shl nuw i32 1, %i.xo                    ; 3 uses
  %i.xq = shl nuw nsw i32 1, %i.xm
  %.not.i33 = icmp eq i32 %i.xo, 31
  %i.xr = shl i32 2, %i.xo
  %i.xs = sext i32 %i.xr to i64
  %.idx89.i = shl nsw i64 %i.xs, 3
  %i.xt = zext nneg i32 %i.xq to i64              ; 3 uses
  %i.xu = sext i32 %i.xp to i64                   ; 3 uses
  br i1 %.not.i33, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread, label %.split102.us.i

_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread: ; preds = %bb.o
  %i.xv = zext nneg i8 %spec.select.i to i32
  br label %bb.q

.split102.us.i:                                   ; preds = %bb.o
  %i.xw = zext nneg i8 %spec.select.i to i64
  %i.xx = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.xw
  %i.xy = load i64, ptr %i.xx, align 8, !tbaa !52 ; 5 uses
  %i.xz = xor i64 %i.xy, -1                       ; 2 uses
  %smax117.i = call i32 @llvm.smax.i32(i32 %i.xp, i32 1)
  %wide.trip.count118.i = zext nneg i32 %smax117.i to i64 ; 3 uses
  %i.ya = shl nuw nsw i64 %wide.trip.count118.i, 3 ; 2 uses
  %i.yb = shl nsw i64 %i.xu, 3                    ; 2 uses
  %min.iters.check273 = icmp slt i32 %i.xp, 2
  %i.yc = getelementptr i8, ptr %2, i64 %i.yb
  %i.yd = getelementptr i8, ptr %i.yc, i64 %i.ya
  %i.ye = getelementptr i8, ptr %2, i64 %i.yb
  %i.yf = getelementptr i8, ptr %2, i64 %i.ya
  %n.vec275 = and i64 %wide.trip.count118.i, 2147483646
  %broadcast.splatinsert276 = insertelement <2 x i64> poison, i64 %i.xy, i64 0
  %broadcast.splat277 = shufflevector <2 x i64> %broadcast.splatinsert276, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert278 = insertelement <2 x i64> poison, i64 %i.xt, i64 0
  %broadcast.splat279 = shufflevector <2 x i64> %broadcast.splatinsert278, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert280 = insertelement <2 x i64> poison, i64 %i.xz, i64 0
  %broadcast.splat281 = shufflevector <2 x i64> %broadcast.splatinsert280, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i34, %.split102.us.i
  %.064.idx100.us.i = phi i64 [ 0, %.split102.us.i ], [ %.064.add.us.i, %._crit_edge.us.i34 ] ; 6 uses
  %.064.ptr101.us.i = getelementptr inbounds i8, ptr %2, i64 %.064.idx100.us.i ; 2 uses
  br i1 %min.iters.check273, label %scalar.ph272.preheader, label %vector.memcheck264

scalar.ph272.preheader:                           ; preds = %vector.memcheck264, %.preheader.us.i
  br label %scalar.ph272

vector.memcheck264:                               ; preds = %.preheader.us.i
  %scevgep268 = getelementptr i8, ptr %i.yd, i64 %.064.idx100.us.i
  %scevgep267 = getelementptr i8, ptr %i.ye, i64 %.064.idx100.us.i
  %scevgep266 = getelementptr i8, ptr %i.yf, i64 %.064.idx100.us.i
  %scevgep265 = getelementptr i8, ptr %2, i64 %.064.idx100.us.i
  %bound0269 = icmp ult ptr %scevgep265, %scevgep268
  %bound1270 = icmp ult ptr %scevgep267, %scevgep266
  %found.conflict271 = and i1 %bound0269, %bound1270
  br i1 %found.conflict271, label %scalar.ph272.preheader, label %vector.body282

vector.body282:                                   ; preds = %vector.memcheck264, %vector.body282
  %index283 = phi i64 [ %index.next286, %vector.body282 ], [ 0, %vector.memcheck264 ] ; 2 uses
  %i.yg = getelementptr inbounds nuw [8 x i8], ptr %.064.ptr101.us.i, i64 %index283 ; 3 uses
  %wide.load284 = load <2 x i64>, ptr %i.yg, align 16, !tbaa !52, !alias.scope !375, !noalias !378 ; 2 uses
  %i.yh = and <2 x i64> %wide.load284, %broadcast.splat277
  %i.yi = lshr <2 x i64> %i.yh, %broadcast.splat279
  %i.yj = getelementptr inbounds nuw [8 x i8], ptr %i.yg, i64 %i.xu ; 2 uses
  %wide.load285 = load <2 x i64>, ptr %i.yj, align 8, !tbaa !52, !alias.scope !378 ; 2 uses
  %i.yk = shl <2 x i64> %wide.load285, %broadcast.splat279
  %i.yl = and <2 x i64> %i.yk, %broadcast.splat277
  %i.ym = and <2 x i64> %wide.load284, %broadcast.splat281
  %i.yn = or <2 x i64> %i.yl, %i.ym
  store <2 x i64> %i.yn, ptr %i.yg, align 16, !tbaa !52, !alias.scope !375, !noalias !378
  %i.yo = and <2 x i64> %wide.load285, %broadcast.splat277
  %i.yp = or <2 x i64> %i.yo, %i.yi
  store <2 x i64> %i.yp, ptr %i.yj, align 8, !tbaa !52, !alias.scope !378
  %index.next286 = add nuw i64 %index283, 2       ; 2 uses
  %i.yq = icmp eq i64 %index.next286, %n.vec275
  br i1 %i.yq, label %._crit_edge.us.i34, label %vector.body282, !llvm.loop !380

scalar.ph272:                                     ; preds = %scalar.ph272.preheader, %scalar.ph272
  %indvars.iv114.i = phi i64 [ %indvars.iv.next115.i, %scalar.ph272 ], [ 0, %scalar.ph272.preheader ] ; 2 uses
  %i.yr = getelementptr inbounds nuw [8 x i8], ptr %.064.ptr101.us.i, i64 %indvars.iv114.i ; 3 uses
  %i.ys = load i64, ptr %i.yr, align 8, !tbaa !52 ; 2 uses
  %i.yt = and i64 %i.ys, %i.xy
  %i.yu = lshr i64 %i.yt, %i.xt
  %i.yv = getelementptr inbounds [8 x i8], ptr %i.yr, i64 %i.xu ; 2 uses
  %i.yw = load i64, ptr %i.yv, align 8, !tbaa !52 ; 2 uses
  %i.yx = shl i64 %i.yw, %i.xt
  %i.yy = and i64 %i.yx, %i.xy
  %i.yz = and i64 %i.ys, %i.xz
  %i.za = or i64 %i.yy, %i.yz
  store i64 %i.za, ptr %i.yr, align 8, !tbaa !52
  %i.zb = and i64 %i.yw, %i.xy
  %i.zc = or i64 %i.zb, %i.yu
  store i64 %i.zc, ptr %i.yv, align 8, !tbaa !52
  %indvars.iv.next115.i = add nuw nsw i64 %indvars.iv114.i, 1 ; 2 uses
  %exitcond119.not.i = icmp eq i64 %indvars.iv.next115.i, %wide.trip.count118.i
  br i1 %exitcond119.not.i, label %._crit_edge.us.i34, label %scalar.ph272, !llvm.loop !381

._crit_edge.us.i34:                               ; preds = %vector.body282, %scalar.ph272
  %.064.add.us.i = add nsw i64 %.064.idx100.us.i, %.idx89.i ; 2 uses
  %.not76.us.i = icmp eq i64 %.064.add.us.i, 256
  br i1 %.not76.us.i, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread, label %.preheader.us.i, !llvm.loop !382

bb.p:                                             ; preds = %bb.n
  %i.zd = add nsw i32 %i.xm, -6                   ; 3 uses
  %i.ze = shl nuw i32 1, %i.zd                    ; 4 uses
  %i.zf = add nsw i32 %i.nu, -6                   ; 3 uses
  %i.zg = shl nuw i32 1, %i.zf                    ; 2 uses
  %.not103.i = icmp eq i32 %i.zf, 31
  %i.zh = shl i32 2, %i.zf
  %i.zi = sext i32 %i.zh to i64
  %.idx.i = shl nsw i64 %i.zi, 3
  %i.zj = sext i32 %i.ze to i64                   ; 5 uses
  %i.zk = sext i32 %i.zg to i64                   ; 7 uses
  %.not104.i = icmp eq i32 %i.zd, 31
  %or.cond.i = select i1 %.not103.i, i1 true, i1 %.not104.i
  br i1 %or.cond.i, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread136, label %.preheader92.us.us.preheader.i

_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread136: ; preds = %bb.p
  %i.zl = zext i8 %spec.select.i to i32
  br label %bb.r

.preheader92.us.us.preheader.i:                   ; preds = %bb.p
  %i.zm = shl i32 2, %i.zd                        ; 3 uses
  %smax.i28 = call i32 @llvm.smax.i32(i32 %i.ze, i32 1) ; 2 uses
  %i.zn = sext i32 %i.zm to i64                   ; 6 uses
  %wide.trip.count.i29 = zext nneg i32 %smax.i28 to i64 ; 4 uses
  %i.zo = shl nsw i64 %i.zj, 3                    ; 2 uses
  %smax292 = call i64 @llvm.smax.i64(i64 %i.zn, i64 %i.zk)
  %i.zp = icmp slt i32 %i.zm, %i.zg
  %umin293 = zext i1 %i.zp to i64                 ; 3 uses
  %i.zq = or disjoint i64 %umin293, %i.zn
  %i.zr = sub i64 %smax292, %i.zq                 ; 2 uses
  %umax294 = call i64 @llvm.umax.i64(i64 %i.zn, i64 1) ; 2 uses
  %4 = shl nuw nsw i64 %wide.trip.count.i29, 3    ; 2 uses
  %i.zs = shl nsw i64 %i.zk, 3                    ; 2 uses
  %5 = udiv i64 %i.zr, %umax294
  %6 = add i64 %5, %umin293
  %i.zt = shl i64 %6, 3
  %7 = mul i64 %i.zt, %i.zn
  %i.zu = getelementptr i8, ptr %2, i64 %i.zo
  %i.zv = getelementptr i8, ptr %2, i64 %i.zs
  %i.zw = getelementptr i8, ptr %2, i64 %7
  %i.zx = getelementptr i8, ptr %i.zw, i64 %i.zs
  %i.zy = getelementptr i8, ptr %i.zx, i64 %4
  %min.iters.check304 = icmp slt i32 %i.ze, 12
  %i.zz = getelementptr i8, ptr %2, i64 %i.zo
  %invariant.gep = getelementptr i8, ptr %i.zz, i64 %4
  %stride.check301 = icmp slt i32 %i.zm, 0
  %n.vec306 = and i64 %wide.trip.count.i29, 2147483644
  %xtraiter = and i64 %wide.trip.count.i29, 1
  %i.aaa = icmp slt i32 %i.ze, 2
  %unroll_iter = and i64 %wide.trip.count.i29, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod344 = trunc i32 %smax.i28 to i1
  br label %.preheader92.us.us.i

.preheader92.us.us.i:                             ; preds = %._crit_edge96.us.us.i, %.preheader92.us.us.preheader.i
  %.062.idx97.us.us.i = phi i64 [ %.062.add.us.us.i, %._crit_edge96.us.us.i ], [ 0, %.preheader92.us.us.preheader.i ] ; 6 uses
  %scevgep291 = getelementptr i8, ptr %i.zu, i64 %.062.idx97.us.us.i
  %scevgep296 = getelementptr i8, ptr %i.zv, i64 %.062.idx97.us.us.i
  %.062.ptr98.us.us.i.a = getelementptr i8, ptr %i.zy, i64 %.062.idx97.us.us.i
  %scevgep295 = getelementptr inbounds i8, ptr %2, i64 %.062.idx97.us.us.i
  %scevgep297 = getelementptr i8, ptr %invariant.gep, i64 %.062.idx97.us.us.i
  %bound1299.a = icmp ult ptr %scevgep291, %.062.ptr98.us.us.i.a
  br label %.preheader91.us.us.i

scalar.ph303:                                     ; preds = %scalar.ph303.preheader, %scalar.ph303
  %indvars.iv.i30 = phi i64 [ %indvars.iv.next.i31.1, %scalar.ph303 ], [ 0, %scalar.ph303.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph303 ], [ 0, %scalar.ph303.preheader ]
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %indvars.iv.i30 ; 2 uses
  %i.aac = getelementptr inbounds nuw [8 x i8], ptr %i.aab, i64 %i.zj ; 2 uses
  %i.aad = getelementptr inbounds [8 x i8], ptr %i.aab, i64 %i.zk ; 2 uses
  %i.aae = load i64, ptr %i.aac, align 8, !tbaa !52
  %i.aaf = load i64, ptr %i.aad, align 8, !tbaa !52
  store i64 %i.aaf, ptr %i.aac, align 8, !tbaa !52
  store i64 %i.aae, ptr %i.aad, align 8, !tbaa !52
  %i.aag = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %indvars.iv.i30
  %i.aah = getelementptr inbounds nuw i8, ptr %i.aag, i64 8 ; 2 uses
  %i.aai = getelementptr inbounds nuw [8 x i8], ptr %i.aah, i64 %i.zj ; 2 uses
  %i.aaj = getelementptr inbounds [8 x i8], ptr %i.aah, i64 %i.zk ; 2 uses
  %i.aak = load i64, ptr %i.aai, align 8, !tbaa !52
  %i.aal = load i64, ptr %i.aaj, align 8, !tbaa !52
  store i64 %i.aal, ptr %i.aai, align 8, !tbaa !52
  store i64 %i.aak, ptr %i.aaj, align 8, !tbaa !52
  %indvars.iv.next.i31.1 = add nuw nsw i64 %indvars.iv.i30, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph303, !llvm.loop !383

.preheader91.us.us.i:                             ; preds = %._crit_edge.us.us.i, %.preheader92.us.us.i
  %indvars.iv111.i = phi i64 [ 0, %.preheader92.us.us.i ], [ %indvars.iv.next112.i, %._crit_edge.us.us.i ] ; 2 uses
  %i.aam = getelementptr inbounds [8 x i8], ptr %scevgep295, i64 %indvars.iv111.i ; 4 uses
  br i1 %min.iters.check304, label %scalar.ph303.preheader, label %scalar.ph303.preheader.a

scalar.ph303.preheader:                           ; preds = %scalar.ph303.preheader.a, %.preheader91.us.us.i
  br i1 %i.aaa, label %scalar.ph303.epil.preheader, label %scalar.ph303

scalar.ph303.preheader.a:                         ; preds = %.preheader91.us.us.i
  %8 = udiv i64 %i.zr, %umax294
  %9 = add i64 %8, %umin293
  %10 = shl i64 %9, 3
  %11 = mul i64 %10, %i.zn
  %gep353 = getelementptr i8, ptr %scevgep297, i64 %11
  %bound1299 = icmp ult ptr %scevgep296, %gep353
  %found.conflict300 = and i1 %bound1299.a, %bound1299
  %12 = or i1 %found.conflict300, %stride.check301
  br i1 %12, label %scalar.ph303.preheader, label %vector.body307

vector.body307:                                   ; preds = %scalar.ph303.preheader.a, %vector.body307
  %index308 = phi i64 [ %index.next313, %vector.body307 ], [ 0, %scalar.ph303.preheader.a ] ; 2 uses
  %i.aan = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %index308 ; 2 uses
  %i.aao = getelementptr inbounds nuw [8 x i8], ptr %i.aan, i64 %i.zj ; 3 uses
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.aan, i64 %i.zk ; 3 uses
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aao, i64 16 ; 2 uses
  %wide.load309 = load <2 x i64>, ptr %i.aao, align 8, !tbaa !52, !alias.scope !384, !noalias !387
  %wide.load310 = load <2 x i64>, ptr %i.aaq, align 8, !tbaa !52, !alias.scope !384, !noalias !387
  %i.aar = getelementptr inbounds nuw i8, ptr %i.aap, i64 16 ; 2 uses
  %wide.load311 = load <2 x i64>, ptr %i.aap, align 8, !tbaa !52, !alias.scope !387
  %wide.load312 = load <2 x i64>, ptr %i.aar, align 8, !tbaa !52, !alias.scope !387
  store <2 x i64> %wide.load311, ptr %i.aao, align 8, !tbaa !52, !alias.scope !384, !noalias !387
  store <2 x i64> %wide.load312, ptr %i.aaq, align 8, !tbaa !52, !alias.scope !384, !noalias !387
  store <2 x i64> %wide.load309, ptr %i.aap, align 8, !tbaa !52, !alias.scope !387
  store <2 x i64> %wide.load310, ptr %i.aar, align 8, !tbaa !52, !alias.scope !387
  %index.next313 = add nuw i64 %index308, 4       ; 2 uses
  %i.aas = icmp eq i64 %index.next313, %n.vec306
  br i1 %i.aas, label %._crit_edge.us.us.i, label %vector.body307, !llvm.loop !389

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph303
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph303.epil.preheader

scalar.ph303.epil.preheader:                      ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph303.preheader
  %indvars.iv.i30.epil.init = phi i64 [ 0, %scalar.ph303.preheader ], [ %indvars.iv.next.i31.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod344)
  %i.aat = getelementptr inbounds nuw [8 x i8], ptr %i.aam, i64 %indvars.iv.i30.epil.init ; 2 uses
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %i.zj ; 2 uses
  %i.aav = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %i.zk ; 2 uses
  %i.aaw = load i64, ptr %i.aau, align 8, !tbaa !52
  %i.aax = load i64, ptr %i.aav, align 8, !tbaa !52
  store i64 %i.aax, ptr %i.aau, align 8, !tbaa !52
  store i64 %i.aaw, ptr %i.aav, align 8, !tbaa !52
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body307, %scalar.ph303.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next112.i = add nsw i64 %indvars.iv111.i, %i.zn ; 2 uses
  %i.aay = icmp slt i64 %indvars.iv.next112.i, %i.zk
  br i1 %i.aay, label %.preheader91.us.us.i, label %._crit_edge96.us.us.i, !llvm.loop !390

._crit_edge96.us.us.i:                            ; preds = %._crit_edge.us.us.i
  %.062.add.us.us.i = add nsw i64 %.062.idx97.us.us.i, %.idx.i ; 2 uses
  %.not.us.us.i = icmp eq i64 %.062.add.us.us.i, 256
  br i1 %.not.us.us.i, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread, label %.preheader92.us.us.i, !llvm.loop !391

_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread: ; preds = %._crit_edge96.us.us.i, %._crit_edge.us.i34
  %i.aaz = zext i8 %spec.select.i to i32          ; 2 uses
  %i.aba = icmp ult i8 %spec.select.i, 6
  br i1 %i.aba, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread
  %i.abb = phi i32 [ %i.xv, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread ], [ %i.aaz, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread ]
  %i.abc = add nsw i32 %i.nu, -6                  ; 3 uses
  %i.abd = shl nuw i32 1, %i.abc                  ; 3 uses
  %i.abe = shl nuw nsw i32 1, %i.abb
  %.not.i58 = icmp eq i32 %i.abc, 31
  %i.abf = shl i32 2, %i.abc
  %i.abg = sext i32 %i.abf to i64
  %.idx89.i59 = shl nsw i64 %i.abg, 3
  %i.abh = zext nneg i32 %i.abe to i64            ; 3 uses
  %i.abi = sext i32 %i.abd to i64                 ; 3 uses
  br i1 %.not.i58, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78, label %.split102.us.i60

.split102.us.i60:                                 ; preds = %bb.q
  %i.abj = zext nneg i8 %spec.select.i to i64
  %i.abk = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.abj
  %i.abl = load i64, ptr %i.abk, align 8, !tbaa !52 ; 5 uses
  %i.abm = xor i64 %i.abl, -1                     ; 2 uses
  %smax117.i61 = call i32 @llvm.smax.i32(i32 %i.abd, i32 1)
  %wide.trip.count118.i62 = zext nneg i32 %smax117.i61 to i64 ; 3 uses
  %i.abn = shl nuw nsw i64 %wide.trip.count118.i62, 3 ; 2 uses
  %i.abo = shl nsw i64 %i.abi, 3                  ; 2 uses
  %min.iters.check224 = icmp slt i32 %i.abd, 2
  %i.abp = getelementptr i8, ptr %3, i64 %i.abo
  %i.abq = getelementptr i8, ptr %i.abp, i64 %i.abn
  %i.abr = getelementptr i8, ptr %3, i64 %i.abo
  %i.abs = getelementptr i8, ptr %3, i64 %i.abn
  %n.vec226 = and i64 %wide.trip.count118.i62, 2147483646
  %broadcast.splatinsert227 = insertelement <2 x i64> poison, i64 %i.abl, i64 0
  %broadcast.splat228 = shufflevector <2 x i64> %broadcast.splatinsert227, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert229 = insertelement <2 x i64> poison, i64 %i.abh, i64 0
  %broadcast.splat230 = shufflevector <2 x i64> %broadcast.splatinsert229, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert231 = insertelement <2 x i64> poison, i64 %i.abm, i64 0
  %broadcast.splat232 = shufflevector <2 x i64> %broadcast.splatinsert231, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i63

.preheader.us.i63:                                ; preds = %._crit_edge.us.i69, %.split102.us.i60
  %.064.idx100.us.i64 = phi i64 [ 0, %.split102.us.i60 ], [ %.064.add.us.i70, %._crit_edge.us.i69 ] ; 6 uses
  %.064.ptr101.us.i65 = getelementptr inbounds i8, ptr %3, i64 %.064.idx100.us.i64 ; 2 uses
  br i1 %min.iters.check224, label %scalar.ph223.preheader, label %vector.memcheck215

scalar.ph223.preheader:                           ; preds = %vector.memcheck215, %.preheader.us.i63
  br label %scalar.ph223

vector.memcheck215:                               ; preds = %.preheader.us.i63
  %scevgep219 = getelementptr i8, ptr %i.abq, i64 %.064.idx100.us.i64
  %scevgep218 = getelementptr i8, ptr %i.abr, i64 %.064.idx100.us.i64
  %scevgep217 = getelementptr i8, ptr %i.abs, i64 %.064.idx100.us.i64
  %scevgep216 = getelementptr i8, ptr %3, i64 %.064.idx100.us.i64
  %bound0220 = icmp ult ptr %scevgep216, %scevgep219
  %bound1221 = icmp ult ptr %scevgep218, %scevgep217
  %found.conflict222 = and i1 %bound0220, %bound1221
  br i1 %found.conflict222, label %scalar.ph223.preheader, label %vector.body233

vector.body233:                                   ; preds = %vector.memcheck215, %vector.body233
  %index234 = phi i64 [ %index.next237, %vector.body233 ], [ 0, %vector.memcheck215 ] ; 2 uses
  %i.abt = getelementptr inbounds nuw [8 x i8], ptr %.064.ptr101.us.i65, i64 %index234 ; 3 uses
  %wide.load235 = load <2 x i64>, ptr %i.abt, align 16, !tbaa !52, !alias.scope !392, !noalias !395 ; 2 uses
  %i.abu = and <2 x i64> %wide.load235, %broadcast.splat228
  %i.abv = lshr <2 x i64> %i.abu, %broadcast.splat230
  %i.abw = getelementptr inbounds nuw [8 x i8], ptr %i.abt, i64 %i.abi ; 2 uses
  %wide.load236 = load <2 x i64>, ptr %i.abw, align 8, !tbaa !52, !alias.scope !395 ; 2 uses
  %i.abx = shl <2 x i64> %wide.load236, %broadcast.splat230
  %i.aby = and <2 x i64> %i.abx, %broadcast.splat228
  %i.abz = and <2 x i64> %wide.load235, %broadcast.splat232
  %i.aca = or <2 x i64> %i.aby, %i.abz
  store <2 x i64> %i.aca, ptr %i.abt, align 16, !tbaa !52, !alias.scope !392, !noalias !395
  %i.acb = and <2 x i64> %wide.load236, %broadcast.splat228
  %i.acc = or <2 x i64> %i.acb, %i.abv
  store <2 x i64> %i.acc, ptr %i.abw, align 8, !tbaa !52, !alias.scope !395
  %index.next237 = add nuw i64 %index234, 2       ; 2 uses
  %i.acd = icmp eq i64 %index.next237, %n.vec226
  br i1 %i.acd, label %._crit_edge.us.i69, label %vector.body233, !llvm.loop !397

scalar.ph223:                                     ; preds = %scalar.ph223.preheader, %scalar.ph223
  %indvars.iv114.i66 = phi i64 [ %indvars.iv.next115.i67, %scalar.ph223 ], [ 0, %scalar.ph223.preheader ] ; 2 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %.064.ptr101.us.i65, i64 %indvars.iv114.i66 ; 3 uses
  %i.acf = load i64, ptr %i.ace, align 8, !tbaa !52 ; 2 uses
  %i.acg = and i64 %i.acf, %i.abl
  %i.ach = lshr i64 %i.acg, %i.abh
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.ace, i64 %i.abi ; 2 uses
  %i.acj = load i64, ptr %i.aci, align 8, !tbaa !52 ; 2 uses
  %i.ack = shl i64 %i.acj, %i.abh
  %i.acl = and i64 %i.ack, %i.abl
  %i.acm = and i64 %i.acf, %i.abm
  %i.acn = or i64 %i.acl, %i.acm
  store i64 %i.acn, ptr %i.ace, align 8, !tbaa !52
  %i.aco = and i64 %i.acj, %i.abl
  %i.acp = or i64 %i.aco, %i.ach
  store i64 %i.acp, ptr %i.aci, align 8, !tbaa !52
  %indvars.iv.next115.i67 = add nuw nsw i64 %indvars.iv114.i66, 1 ; 2 uses
  %exitcond119.not.i68 = icmp eq i64 %indvars.iv.next115.i67, %wide.trip.count118.i62
  br i1 %exitcond119.not.i68, label %._crit_edge.us.i69, label %scalar.ph223, !llvm.loop !398

._crit_edge.us.i69:                               ; preds = %vector.body233, %scalar.ph223
  %.064.add.us.i70 = add nsw i64 %.064.idx100.us.i64, %.idx89.i59 ; 2 uses
  %.not76.us.i71 = icmp eq i64 %.064.add.us.i70, 256
  br i1 %.not76.us.i71, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78, label %.preheader.us.i63, !llvm.loop !382

bb.r:                                             ; preds = %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread136, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread
  %i.acq = phi i32 [ %i.zl, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread.thread136 ], [ %i.aaz, %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit.thread.thread ]
  %i.acr = add nsw i32 %i.acq, -6                 ; 3 uses
  %i.acs = shl nuw i32 1, %i.acr                  ; 4 uses
  %i.act = add nsw i32 %i.nu, -6                  ; 3 uses
  %i.acu = shl nuw i32 1, %i.act                  ; 2 uses
  %.not103.i38 = icmp eq i32 %i.act, 31
  %i.acv = shl i32 2, %i.act
  %i.acw = sext i32 %i.acv to i64
  %.idx.i39 = shl nsw i64 %i.acw, 3
  %i.acx = sext i32 %i.acs to i64                 ; 5 uses
  %i.acy = sext i32 %i.acu to i64                 ; 7 uses
  %.not104.i40 = icmp eq i32 %i.acr, 31
  %or.cond.i41 = select i1 %.not103.i38, i1 true, i1 %.not104.i40
  br i1 %or.cond.i41, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78, label %.preheader92.us.us.preheader.i42

.preheader92.us.us.preheader.i42:                 ; preds = %bb.r
  %i.acz = shl i32 2, %i.acr                      ; 3 uses
  %smax.i43 = call i32 @llvm.smax.i32(i32 %i.acs, i32 1) ; 2 uses
  %i.ada = sext i32 %i.acz to i64                 ; 6 uses
  %wide.trip.count.i44 = zext nneg i32 %smax.i43 to i64 ; 4 uses
  %i.adb = shl nsw i64 %i.acx, 3                  ; 2 uses
  %smax = call i64 @llvm.smax.i64(i64 %i.ada, i64 %i.acy)
  %i.adc = icmp slt i32 %i.acz, %i.acu
  %umin = zext i1 %i.adc to i64                   ; 3 uses
  %i.add = or disjoint i64 %umin, %i.ada
  %i.ade = sub i64 %smax, %i.add                  ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ada, i64 1) ; 2 uses
  %13 = shl nuw nsw i64 %wide.trip.count.i44, 3   ; 2 uses
  %i.adf = shl nsw i64 %i.acy, 3                  ; 2 uses
  %14 = udiv i64 %i.ade, %umax
  %15 = add i64 %14, %umin
  %i.adg = shl i64 %15, 3
  %16 = mul i64 %i.adg, %i.ada
  %i.adh = getelementptr i8, ptr %3, i64 %i.adb
  %i.adi = getelementptr i8, ptr %3, i64 %i.adf
  %i.adj = getelementptr i8, ptr %3, i64 %16
  %i.adk = getelementptr i8, ptr %i.adj, i64 %i.adf
  %i.adl = getelementptr i8, ptr %i.adk, i64 %13
  %min.iters.check251 = icmp slt i32 %i.acs, 12
  %i.adm = getelementptr i8, ptr %3, i64 %i.adb
  %invariant.gep360 = getelementptr i8, ptr %i.adm, i64 %13
  %stride.check = icmp slt i32 %i.acz, 0
  %n.vec253 = and i64 %wide.trip.count.i44, 2147483644
  %xtraiter345 = and i64 %wide.trip.count.i44, 1
  %i.adn = icmp slt i32 %i.acs, 2
  %unroll_iter348 = and i64 %wide.trip.count.i44, 2147483646
  %lcmp.mod346.not = icmp eq i64 %xtraiter345, 0
  %lcmp.mod347 = trunc i32 %smax.i43 to i1
  br label %.preheader92.us.us.i45

.preheader92.us.us.i45:                           ; preds = %._crit_edge96.us.us.i55, %.preheader92.us.us.preheader.i42
  %.062.idx97.us.us.i46 = phi i64 [ %.062.add.us.us.i56, %._crit_edge96.us.us.i55 ], [ 0, %.preheader92.us.us.preheader.i42 ] ; 6 uses
  %scevgep242 = getelementptr i8, ptr %i.adh, i64 %.062.idx97.us.us.i46
  %scevgep244 = getelementptr i8, ptr %i.adi, i64 %.062.idx97.us.us.i46
  %.062.ptr98.us.us.i47.a = getelementptr i8, ptr %i.adl, i64 %.062.idx97.us.us.i46
  %scevgep243 = getelementptr inbounds i8, ptr %3, i64 %.062.idx97.us.us.i46
  %scevgep245 = getelementptr i8, ptr %invariant.gep360, i64 %.062.idx97.us.us.i46
  %bound1247.a = icmp ult ptr %scevgep242, %.062.ptr98.us.us.i47.a
  br label %.preheader91.us.us.i48

scalar.ph250:                                     ; preds = %scalar.ph250.preheader, %scalar.ph250
  %indvars.iv.i50 = phi i64 [ %indvars.iv.next.i51.1, %scalar.ph250 ], [ 0, %scalar.ph250.preheader ] ; 3 uses
  %niter349 = phi i64 [ %niter349.next.1, %scalar.ph250 ], [ 0, %scalar.ph250.preheader ]
  %i.ado = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %indvars.iv.i50 ; 2 uses
  %i.adp = getelementptr inbounds nuw [8 x i8], ptr %i.ado, i64 %i.acx ; 2 uses
  %i.adq = getelementptr inbounds [8 x i8], ptr %i.ado, i64 %i.acy ; 2 uses
  %i.adr = load i64, ptr %i.adp, align 8, !tbaa !52
  %i.ads = load i64, ptr %i.adq, align 8, !tbaa !52
  store i64 %i.ads, ptr %i.adp, align 8, !tbaa !52
  store i64 %i.adr, ptr %i.adq, align 8, !tbaa !52
  %i.adt = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %indvars.iv.i50
  %i.adu = getelementptr inbounds nuw i8, ptr %i.adt, i64 8 ; 2 uses
  %i.adv = getelementptr inbounds nuw [8 x i8], ptr %i.adu, i64 %i.acx ; 2 uses
  %i.adw = getelementptr inbounds [8 x i8], ptr %i.adu, i64 %i.acy ; 2 uses
  %i.adx = load i64, ptr %i.adv, align 8, !tbaa !52
  %i.ady = load i64, ptr %i.adw, align 8, !tbaa !52
  store i64 %i.ady, ptr %i.adv, align 8, !tbaa !52
  store i64 %i.adx, ptr %i.adw, align 8, !tbaa !52
  %indvars.iv.next.i51.1 = add nuw nsw i64 %indvars.iv.i50, 2 ; 2 uses
  %niter349.next.1 = add i64 %niter349, 2         ; 2 uses
  %niter349.ncmp.1 = icmp eq i64 %niter349.next.1, %unroll_iter348
  br i1 %niter349.ncmp.1, label %._crit_edge.us.us.i53.loopexit.unr-lcssa, label %scalar.ph250, !llvm.loop !399

.preheader91.us.us.i48:                           ; preds = %._crit_edge.us.us.i53, %.preheader92.us.us.i45
  %indvars.iv111.i49 = phi i64 [ 0, %.preheader92.us.us.i45 ], [ %indvars.iv.next112.i54, %._crit_edge.us.us.i53 ] ; 2 uses
  %i.adz = getelementptr inbounds [8 x i8], ptr %scevgep243, i64 %indvars.iv111.i49 ; 4 uses
  br i1 %min.iters.check251, label %scalar.ph250.preheader, label %scalar.ph250.preheader.a

scalar.ph250.preheader:                           ; preds = %scalar.ph250.preheader.a, %.preheader91.us.us.i48
  br i1 %i.adn, label %scalar.ph250.epil.preheader, label %scalar.ph250

scalar.ph250.preheader.a:                         ; preds = %.preheader91.us.us.i48
  %17 = udiv i64 %i.ade, %umax
  %18 = add i64 %17, %umin
  %19 = shl i64 %18, 3
  %20 = mul i64 %19, %i.ada
  %gep358 = getelementptr i8, ptr %scevgep245, i64 %20
  %bound1247 = icmp ult ptr %scevgep244, %gep358
  %found.conflict248 = and i1 %bound1247.a, %bound1247
  %21 = or i1 %found.conflict248, %stride.check
  br i1 %21, label %scalar.ph250.preheader, label %vector.body254

vector.body254:                                   ; preds = %scalar.ph250.preheader.a, %vector.body254
  %index255 = phi i64 [ %index.next260, %vector.body254 ], [ 0, %scalar.ph250.preheader.a ] ; 2 uses
  %i.aea = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %index255 ; 2 uses
  %i.aeb = getelementptr inbounds nuw [8 x i8], ptr %i.aea, i64 %i.acx ; 3 uses
  %i.aec = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %i.acy ; 3 uses
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16 ; 2 uses
  %wide.load256 = load <2 x i64>, ptr %i.aeb, align 8, !tbaa !52, !alias.scope !400, !noalias !403
  %wide.load257 = load <2 x i64>, ptr %i.aed, align 8, !tbaa !52, !alias.scope !400, !noalias !403
  %i.aee = getelementptr inbounds nuw i8, ptr %i.aec, i64 16 ; 2 uses
  %wide.load258 = load <2 x i64>, ptr %i.aec, align 8, !tbaa !52, !alias.scope !403
  %wide.load259 = load <2 x i64>, ptr %i.aee, align 8, !tbaa !52, !alias.scope !403
  store <2 x i64> %wide.load258, ptr %i.aeb, align 8, !tbaa !52, !alias.scope !400, !noalias !403
  store <2 x i64> %wide.load259, ptr %i.aed, align 8, !tbaa !52, !alias.scope !400, !noalias !403
  store <2 x i64> %wide.load256, ptr %i.aec, align 8, !tbaa !52, !alias.scope !403
  store <2 x i64> %wide.load257, ptr %i.aee, align 8, !tbaa !52, !alias.scope !403
  %index.next260 = add nuw i64 %index255, 4       ; 2 uses
  %i.aef = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.aef, label %._crit_edge.us.us.i53, label %vector.body254, !llvm.loop !405

._crit_edge.us.us.i53.loopexit.unr-lcssa:         ; preds = %scalar.ph250
  br i1 %lcmp.mod346.not, label %._crit_edge.us.us.i53, label %scalar.ph250.epil.preheader

scalar.ph250.epil.preheader:                      ; preds = %._crit_edge.us.us.i53.loopexit.unr-lcssa, %scalar.ph250.preheader
  %indvars.iv.i50.epil.init = phi i64 [ 0, %scalar.ph250.preheader ], [ %indvars.iv.next.i51.1, %._crit_edge.us.us.i53.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod347)
  %i.aeg = getelementptr inbounds nuw [8 x i8], ptr %i.adz, i64 %indvars.iv.i50.epil.init ; 2 uses
  %i.aeh = getelementptr inbounds [8 x i8], ptr %i.aeg, i64 %i.acx ; 2 uses
  %i.aei = getelementptr inbounds [8 x i8], ptr %i.aeg, i64 %i.acy ; 2 uses
  %i.aej = load i64, ptr %i.aeh, align 8, !tbaa !52
  %i.aek = load i64, ptr %i.aei, align 8, !tbaa !52
  store i64 %i.aek, ptr %i.aeh, align 8, !tbaa !52
  store i64 %i.aej, ptr %i.aei, align 8, !tbaa !52
  br label %._crit_edge.us.us.i53

._crit_edge.us.us.i53:                            ; preds = %vector.body254, %scalar.ph250.epil.preheader, %._crit_edge.us.us.i53.loopexit.unr-lcssa
  %indvars.iv.next112.i54 = add nsw i64 %indvars.iv111.i49, %i.ada ; 2 uses
  %i.ael = icmp slt i64 %indvars.iv.next112.i54, %i.acy
  br i1 %i.ael, label %.preheader91.us.us.i48, label %._crit_edge96.us.us.i55, !llvm.loop !390

._crit_edge96.us.us.i55:                          ; preds = %._crit_edge.us.us.i53
  %.062.add.us.us.i56 = add nsw i64 %.062.idx97.us.us.i46, %.idx.i39 ; 2 uses
  %.not.us.us.i57 = icmp eq i64 %.062.add.us.us.i56, 256
  br i1 %.not.us.us.i57, label %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78, label %.preheader92.us.us.i45, !llvm.loop !391

_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78: ; preds = %._crit_edge96.us.us.i55, %._crit_edge.us.i69, %vector.body208, %bb.l, %bb.r, %bb.q, %.loopexit
  %i.aem = add i32 %i.er, %i.ew
  %i.aen = zext i32 %i.aem to i64
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.aen ; 2 uses
  %.not.i79 = icmp eq ptr %i.ev, %i.eu
  br i1 %.not.i79, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78
  %i.aep = load i32, ptr %i.aeo, align 4, !tbaa !43
  store i32 %i.aep, ptr %i.ev, align 4, !tbaa !43
  %i.aeq = getelementptr inbounds nuw i8, ptr %i.ev, i64 4 ; 2 uses
  store ptr %i.aeq, ptr %i.ab, align 8, !tbaa !73
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

bb.t:                                             ; preds = %_ZN5kitty12swap_inplaceINS_18static_truth_tableILj11ELb0EEEEEvRT_hh.exit78
  %i.aer = ptrtoint ptr %i.eu to i64
  %i.aes = ptrtoint ptr %i.et to i64
  %i.aet = sub i64 %i.aer, %i.aes                 ; 6 uses
  %i.aeu = icmp eq i64 %i.aet, 9223372036854775804
  br i1 %i.aeu, label %bb.u, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i

bb.u:                                             ; preds = %bb.t
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #14
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.t
  %i.aev = ashr exact i64 %i.aet, 2               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aev, i64 1)
  %i.aew = add nsw i64 %.sroa.speculated.i.i.i, %i.aev ; 2 uses
  %i.aex = icmp ult i64 %i.aew, %i.aev
  %i.aey = call i64 @llvm.umin.i64(i64 %i.aew, i64 2305843009213693951)
  %i.aez = select i1 %i.aex, i64 2305843009213693951, i64 %i.aey ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.aez, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.afa = shl nuw nsw i64 %i.aez, 2
  %i.afb = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.afa) #15 ; 5 uses
  %i.afc = getelementptr inbounds i8, ptr %i.afb, i64 %i.aet ; 2 uses
  %i.afd = load i32, ptr %i.aeo, align 4, !tbaa !43
  store i32 %i.afd, ptr %i.afc, align 4, !tbaa !43
  %i.afe = icmp sgt i64 %i.aet, 0
  br i1 %i.afe, label %bb.v, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

bb.v:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.afb, ptr align 4 %i.et, i64 %i.aet, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i: ; preds = %bb.v, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afc, i64 4 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.et, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i, label %bb.w

bb.w:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.et, i64 noundef %i.aet) #13
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i: ; preds = %bb.w, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i
  store ptr %i.afb, ptr %i.w, align 8, !tbaa !61
  store ptr %i.aff, ptr %i.ab, align 8, !tbaa !73
  %i.afg = getelementptr inbounds nuw [4 x i8], ptr %i.afb, i64 %i.aez ; 2 uses
  store ptr %i.afg, ptr %i.ac, align 8, !tbaa !64
  br label %_ZNSt6vectorIjSaIjEE9push_backERKj.exit

_ZNSt6vectorIjSaIjEE9push_backERKj.exit:          ; preds = %bb.s, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i
  %i.afh = phi ptr [ %i.et, %bb.s ], [ %i.afb, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.afi = phi ptr [ %i.eu, %bb.s ], [ %i.afg, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.afj = phi ptr [ %i.aeq, %bb.s ], [ %i.aff, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJRKjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i ]
  %i.afk = add i32 %.01893, 1
  %.pre = load i32, ptr %i.y, align 8, !tbaa !42
  %.pre109 = load i32, ptr %i.z, align 4, !tbaa !41
  br label %_ZN3acd21ac_decomposition_impl24adjust_truth_table_on_dcERN5kitty18static_truth_tableILj11ELb0EEES4_jj.exit

_ZN3acd21ac_decomposition_impl24adjust_truth_table_on_dcERN5kitty18static_truth_tableILj11ELb0EEES4_jj.exit: ; preds = %._crit_edge.us.i, %vector.body, %bb.k, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit
  %i.afl = phi i32 [ %.pre109, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.er, %vector.body ], [ %i.er, %bb.k ], [ %i.er, %._crit_edge.us.i ] ; 2 uses
  %i.afm = phi i32 [ %.pre, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.es, %vector.body ], [ %i.es, %bb.k ], [ %i.es, %._crit_edge.us.i ] ; 2 uses
  %i.afn = phi ptr [ %i.afh, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.et, %vector.body ], [ %i.et, %bb.k ], [ %i.et, %._crit_edge.us.i ] ; 2 uses
  %i.afo = phi ptr [ %i.afi, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.eu, %vector.body ], [ %i.eu, %bb.k ], [ %i.eu, %._crit_edge.us.i ]
  %i.afp = phi ptr [ %i.afj, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %i.ev, %vector.body ], [ %i.ev, %bb.k ], [ %i.ev, %._crit_edge.us.i ] ; 2 uses
  %.1 = phi i32 [ %i.afk, %_ZNSt6vectorIjSaIjEE9push_backERKj.exit ], [ %.01893, %vector.body ], [ %.01893, %bb.k ], [ %.01893, %._crit_edge.us.i ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.afq = sub i32 %i.afm, %i.afl
  %i.afr = zext i32 %i.afq to i64
  %i.afs = icmp samesign ult i64 %indvars.iv.next, %i.afr
  br i1 %i.afs, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !406

bb.x:                                             ; preds = %_ZN5kitty19dynamic_truth_tableD2Ev.exit
  %i.aft = load ptr, ptr %i.ac, align 8, !tbaa !64
  %i.afu = ptrtoint ptr %i.aft to i64
  %i.afv = sub i64 %i.afu, %i.el
  call void @_ZdlPvm(ptr noundef nonnull %i.ej, i64 noundef %i.afv) #13
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit.i

_ZNSt6vectorIjSaIjEED2Ev.exit.i:                  ; preds = %bb.x, %_ZN5kitty19dynamic_truth_tableD2Ev.exit
  %i.afw = load ptr, ptr %1, align 8, !tbaa !65   ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.afw, null
  br i1 %.not.i.i.i.i.i, label %_ZN3acd23ac_decomposition_resultD2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i
  %i.afx = load ptr, ptr %i.ae, align 8, !tbaa !66
  %i.afy = ptrtoint ptr %i.afx to i64
  %i.afz = ptrtoint ptr %i.afw to i64
  %i.aga = sub i64 %i.afy, %i.afz
  call void @_ZdlPvm(ptr noundef nonnull %i.afw, i64 noundef %i.aga) #13
  br label %_ZN3acd23ac_decomposition_resultD2Ev.exit

_ZN3acd23ac_decomposition_resultD2Ev.exit:        ; preds = %_ZNSt6vectorIjSaIjEED2Ev.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  %i.agb = add i32 %.01996, 1                     ; 2 uses
  %i.agc = zext i32 %i.agb to i64                 ; 2 uses
  %i.agd = load ptr, ptr %i.t, align 8, !tbaa !215
  %i.age = load ptr, ptr %i.s, align 8, !tbaa !69 ; 2 uses
  %i.agf = ptrtoint ptr %i.agd to i64
  %i.agg = ptrtoint ptr %i.age to i64
  %i.agh = sub i64 %i.agf, %i.agg
  %i.agi = ashr exact i64 %i.agh, 8
  %i.agj = icmp ugt i64 %i.agi, %i.agc
  br i1 %i.agj, label %bb.d, label %._crit_edge98, !llvm.loop !407

bb.z:                                             ; preds = %._crit_edge98
  %i.agk = load ptr, ptr %i.c, align 8, !tbaa !60 ; 3 uses
  %i.agl = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.agm = ptrtoint ptr %i.agk to i64
  %i.agn = ptrtoint ptr %i.agl to i64
  %i.ago = sub i64 %i.agm, %i.agn
  %i.agp = sdiv exact i64 %i.ago, 56
  %i.agq = trunc i64 %i.agp to i32
  store i32 %i.agq, ptr %i.cq, align 4, !tbaa !8
  %i.agr = getelementptr inbounds i8, ptr %i.agk, i64 -24
  %i.ags = getelementptr inbounds i8, ptr %i.agk, i64 -16
  %i.agt = load ptr, ptr %i.ags, align 8, !tbaa !73
  %i.agu = load ptr, ptr %i.agr, align 8, !tbaa !61
  %i.agv = ptrtoint ptr %i.agt to i64
  %i.agw = ptrtoint ptr %i.agu to i64
  %i.agx = sub i64 %i.agv, %i.agw
  %i.agy = lshr exact i64 %i.agx, 2
  %i.agz = trunc i64 %i.agy to i32
  %i.aha = add i32 %.020.lcssa, %i.agz
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.cq, i64 4
  store i32 %i.aha, ptr %i.ahb, align 4, !tbaa !10
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge98
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN3acd23ac_decomposition_resultESaIS1_EE9push_backERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %.not = icmp eq ptr %i.b, %i.d
  br i1 %.not, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !83   ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !tbaa !65     ; 2 uses
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = sub i64 %i.h, %i.i                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i.i = icmp eq ptr %i.f, %i.g
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ugt i64 %i.j, 9223372036854775800
  br i1 %i.k, label %bb.d, label %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, !prof !229

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #14
  unreachable

_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i: ; preds = %bb.c
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.j) #15
  br label %_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i

_ZNSt12_Vector_baseImSaImEEC2EmRKS0_.exit.i.i.i:  ; preds = %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i, %bb.b
  %i.m = phi ptr [ %i.l, %_ZNSt15__new_allocatorImE8allocateEmPKv.exit.i.i.i.i.i.i ], [ null, %bb.b ] ; 6 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !65
end_hunk_1
begin_hunk_2_@_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh:bb.a

.lr.ph.i:                                         ; preds = %bb.d
  %i.af = zext i8 %spec.select to i64
  %i.ag = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.af
  %i.ah = zext nneg i8 %spec.select92 to i64
  %i.ai = getelementptr inbounds nuw [24 x i8], ptr %i.ag, i64 %i.ah ; 3 uses
  %.idx = shl nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ak = zext nneg i8 %spec.select to i32
  %.neg = shl nsw i32 -1, %i.ak
  %i.al = shl nuw nsw i32 1, %i.ad
  %i.am = add nsw i32 %.neg, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ao = zext i32 %i.am to i64                   ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.aq = load i64, ptr %i.ai, align 8, !tbaa !52 ; 2 uses
  %i.ar = load i64, ptr %i.an, align 8, !tbaa !52 ; 2 uses
  %i.as = load i64, ptr %i.ap, align 8, !tbaa !52 ; 2 uses
  %i.at = add nsw i64 %.idx, -8                   ; 2 uses
  %i.au = lshr exact i64 %i.at, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check172 = icmp ult i64 %i.at, 24
  br i1 %min.iters.check172, label %scalar.ph171.preheader, label %vector.ph173

vector.ph173:                                     ; preds = %.lr.ph.i
  %n.vec174 = and i64 %i.av, 4611686018427387900  ; 3 uses
  %i.aw = shl i64 %n.vec174, 3
  %i.ax = getelementptr i8, ptr %1, i64 %i.aw
  %broadcast.splatinsert175 = insertelement <2 x i64> poison, i64 %i.ao, i64 0
  %broadcast.splat176 = shufflevector <2 x i64> %broadcast.splatinsert175, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert177 = insertelement <2 x i64> poison, i64 %i.aq, i64 0
  %broadcast.splat178 = shufflevector <2 x i64> %broadcast.splatinsert177, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert179 = insertelement <2 x i64> poison, i64 %i.ar, i64 0
  %broadcast.splat180 = shufflevector <2 x i64> %broadcast.splatinsert179, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert181 = insertelement <2 x i64> poison, i64 %i.as, i64 0
  %broadcast.splat182 = shufflevector <2 x i64> %broadcast.splatinsert181, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph173
  %index184 = phi i64 [ 0, %vector.ph173 ], [ %index.next187, %vector.body183 ] ; 2 uses
  %i.ay = shl i64 %index184, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.ay ; 3 uses
  %i.az = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load185 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !52 ; 3 uses
  %wide.load186 = load <2 x i64>, ptr %i.az, align 8, !tbaa !52 ; 3 uses
  %i.ba = and <2 x i64> %broadcast.splat178, %wide.load185
  %i.bb = and <2 x i64> %broadcast.splat178, %wide.load186
  %i.bc = and <2 x i64> %broadcast.splat180, %wide.load185
  %i.bd = and <2 x i64> %broadcast.splat180, %wide.load186
  %i.be = shl <2 x i64> %i.bc, %broadcast.splat176
  %i.bf = shl <2 x i64> %i.bd, %broadcast.splat176
  %i.bg = or <2 x i64> %i.be, %i.ba
  %i.bh = or <2 x i64> %i.bf, %i.bb
  %i.bi = and <2 x i64> %broadcast.splat182, %wide.load185
  %i.bj = and <2 x i64> %broadcast.splat182, %wide.load186
  %i.bk = lshr <2 x i64> %i.bi, %broadcast.splat176
  %i.bl = lshr <2 x i64> %i.bj, %broadcast.splat176
  %i.bm = or <2 x i64> %i.bg, %i.bk
  %i.bn = or <2 x i64> %i.bh, %i.bl
  store <2 x i64> %i.bm, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %i.bn, ptr %i.az, align 8, !tbaa !52
  %index.next187 = add nuw i64 %index184, 4       ; 2 uses
  %i.bo = icmp eq i64 %index.next187, %n.vec174
  br i1 %i.bo, label %middle.block188, label %vector.body183, !llvm.loop !518

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.av, %n.vec174
  br i1 %cmp.n189, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph171.preheader

scalar.ph171.preheader:                           ; preds = %.lr.ph.i, %middle.block188
  %.010.i.ph = phi ptr [ %1, %.lr.ph.i ], [ %i.ax, %middle.block188 ]
  br label %scalar.ph171

scalar.ph171:                                     ; preds = %scalar.ph171.preheader, %scalar.ph171
  %.010.i = phi ptr [ %i.bx, %scalar.ph171 ], [ %.010.i.ph, %scalar.ph171.preheader ] ; 3 uses
  %i.bp = load i64, ptr %.010.i, align 8, !tbaa !52 ; 3 uses
  %i.bq = and i64 %i.aq, %i.bp
  %i.br = and i64 %i.ar, %i.bp
  %i.bs = shl i64 %i.br, %i.ao
  %i.bt = or i64 %i.bs, %i.bq
  %i.bu = and i64 %i.as, %i.bp
  %i.bv = lshr i64 %i.bu, %i.ao
  %i.bw = or i64 %i.bt, %i.bv
  store i64 %i.bw, ptr %.010.i, align 8, !tbaa !52
  %i.bx = getelementptr i8, ptr %.010.i, i64 8    ; 2 uses
  %.not.i = icmp eq ptr %i.bx, %i.aj
  br i1 %.not.i, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph171, !llvm.loop !519

bb.e:                                             ; preds = %bb.d
  %i.by = zext i8 %spec.select to i32             ; 2 uses
  %i.bz = icmp ult i8 %spec.select, 6
  %.idx109 = shl nuw nsw i64 %i.g, 3
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 %.idx109 ; 2 uses
  br i1 %i.bz, label %.preheader.lr.ph, label %.preheader95.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.e
  %i.cb = add nsw i32 %i.ad, -6                   ; 3 uses
  %i.cc = shl nuw i32 1, %i.cb                    ; 3 uses
  %i.cd = shl nuw nsw i32 1, %i.by
  %.not110 = icmp eq i32 %i.cb, 31
  %i.ce = zext nneg i32 %i.cd to i64              ; 3 uses
  %i.cf = sext i32 %i.cc to i64                   ; 3 uses
  %i.cg = shl i32 2, %i.cb
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  br i1 %.not110, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.ci = zext nneg i8 %spec.select to i64
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.ci
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52 ; 5 uses
  %i.cl = xor i64 %i.ck, -1                       ; 2 uses
  %smax127 = tail call i32 @llvm.smax.i32(i32 %i.cc, i32 1)
  %wide.trip.count128 = zext nneg i32 %smax127 to i64 ; 3 uses
  %i.cm = shl nuw nsw i64 %wide.trip.count128, 3  ; 2 uses
  %i.cn = shl nsw i64 %i.ch, 3
  %i.co = shl nsw i64 %i.cf, 3                    ; 2 uses
  %min.iters.check156 = icmp slt i32 %i.cc, 2
  %i.cp = getelementptr i8, ptr %1, i64 %i.co
  %i.cq = getelementptr i8, ptr %i.cp, i64 %i.cm
  %i.cr = getelementptr i8, ptr %1, i64 %i.co
  %i.cs = getelementptr i8, ptr %1, i64 %i.cm
  %n.vec158 = and i64 %wide.trip.count128, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ck, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.ce, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert161 = insertelement <2 x i64> poison, i64 %i.cl, i64 0
  %broadcast.splat162 = shufflevector <2 x i64> %broadcast.splatinsert161, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar147 = phi i64 [ %indvar.next148, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.067105.us = phi ptr [ %i.dr, %._crit_edge.us ], [ %1, %.preheader.lr.ph.split.us ] ; 4 uses
  br i1 %min.iters.check156, label %scalar.ph155.preheader, label %vector.memcheck146

scalar.ph155.preheader:                           ; preds = %vector.memcheck146, %.preheader.us
  br label %scalar.ph155

vector.memcheck146:                               ; preds = %.preheader.us
  %i.ct = mul i64 %i.cn, %indvar147               ; 3 uses
  %scevgep151 = getelementptr i8, ptr %i.cq, i64 %i.ct
  %scevgep150 = getelementptr i8, ptr %i.cr, i64 %i.ct
  %scevgep149 = getelementptr i8, ptr %i.cs, i64 %i.ct
  %bound0152 = icmp ult ptr %.067105.us, %scevgep151
  %bound1153 = icmp ult ptr %scevgep150, %scevgep149
  %found.conflict154 = and i1 %bound0152, %bound1153
  br i1 %found.conflict154, label %scalar.ph155.preheader, label %vector.body163

vector.body163:                                   ; preds = %vector.memcheck146, %vector.body163
  %index164 = phi i64 [ %index.next167, %vector.body163 ], [ 0, %vector.memcheck146 ] ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %.067105.us, i64 %index164 ; 3 uses
  %wide.load165 = load <2 x i64>, ptr %i.cu, align 8, !tbaa !52, !alias.scope !520, !noalias !523 ; 2 uses
  %i.cv = and <2 x i64> %broadcast.splat, %wide.load165
  %i.cw = lshr <2 x i64> %i.cv, %broadcast.splat160
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %i.cf ; 2 uses
  %wide.load166 = load <2 x i64>, ptr %i.cx, align 8, !tbaa !52, !alias.scope !523 ; 2 uses
  %i.cy = shl <2 x i64> %wide.load166, %broadcast.splat160
  %i.cz = and <2 x i64> %i.cy, %broadcast.splat
  %i.da = and <2 x i64> %wide.load165, %broadcast.splat162
  %i.db = or <2 x i64> %i.cz, %i.da
  store <2 x i64> %i.db, ptr %i.cu, align 8, !tbaa !52, !alias.scope !520, !noalias !523
  %i.dc = and <2 x i64> %wide.load166, %broadcast.splat
  %i.dd = or <2 x i64> %i.dc, %i.cw
  store <2 x i64> %i.dd, ptr %i.cx, align 8, !tbaa !52, !alias.scope !523
  %index.next167 = add nuw i64 %index164, 2       ; 2 uses
  %i.de = icmp eq i64 %index.next167, %n.vec158
  br i1 %i.de, label %._crit_edge.us, label %vector.body163, !llvm.loop !525

scalar.ph155:                                     ; preds = %scalar.ph155.preheader, %scalar.ph155
  %indvars.iv124 = phi i64 [ %indvars.iv.next125, %scalar.ph155 ], [ 0, %scalar.ph155.preheader ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %.067105.us, i64 %indvars.iv124 ; 3 uses
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !52 ; 2 uses
  %i.dh = and i64 %i.ck, %i.dg
  %i.di = lshr i64 %i.dh, %i.ce
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.cf ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 8, !tbaa !52 ; 2 uses
  %i.dl = shl i64 %i.dk, %i.ce
  %i.dm = and i64 %i.dl, %i.ck
  %i.dn = and i64 %i.dg, %i.cl
  %i.do = or i64 %i.dm, %i.dn
  store i64 %i.do, ptr %i.df, align 8, !tbaa !52
  %i.dp = and i64 %i.dk, %i.ck
  %i.dq = or i64 %i.dp, %i.di
  store i64 %i.dq, ptr %i.dj, align 8, !tbaa !52
  %indvars.iv.next125 = add nuw nsw i64 %indvars.iv124, 1 ; 2 uses
  %exitcond129.not = icmp eq i64 %indvars.iv.next125, %wide.trip.count128
  br i1 %exitcond129.not, label %._crit_edge.us, label %scalar.ph155, !llvm.loop !526

._crit_edge.us:                                   ; preds = %vector.body163, %scalar.ph155
  %i.dr = getelementptr inbounds [8 x i8], ptr %.067105.us, i64 %i.ch ; 2 uses
  %.not80.us = icmp eq ptr %i.dr, %i.ca
  %indvar.next148 = add i64 %indvar147, 1
  br i1 %.not80.us, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.us, !llvm.loop !527

.preheader95.lr.ph:                               ; preds = %bb.e
  %i.ds = add nsw i32 %i.by, -6                   ; 3 uses
  %i.dt = shl nuw i32 1, %i.ds                    ; 4 uses
  %i.du = add nsw i32 %i.ad, -6                   ; 3 uses
  %i.dv = shl nuw i32 1, %i.du                    ; 2 uses
  %.not107 = icmp eq i32 %i.du, 31
  %i.dw = sext i32 %i.dt to i64                   ; 6 uses
  %i.dx = sext i32 %i.dv to i64                   ; 8 uses
  %i.dy = shl i32 2, %i.du
  %i.dz = sext i32 %i.dy to i64                   ; 2 uses
  %.not108 = icmp eq i32 %i.ds, 31
  %or.cond = select i1 %.not107, i1 true, i1 %.not108
  br i1 %or.cond, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader95.us.us.preheader

.preheader95.us.us.preheader:                     ; preds = %.preheader95.lr.ph
  %i.ea = shl i32 2, %i.ds                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.dt, i32 1) ; 2 uses
  %i.eb = sext i32 %i.ea to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.ec = shl nsw i64 %i.dw, 3
  %i.ed = shl nsw i64 %i.dz, 3
  %smax138 = tail call i64 @llvm.smax.i64(i64 %i.eb, i64 %i.dx)
  %i.ee = icmp slt i32 %i.ea, %i.dv
  %umin = zext i1 %i.ee to i64                    ; 3 uses
  %i.ef = or disjoint i64 %umin, %i.eb
  %i.eg = sub i64 %smax138, %i.ef                 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.eb, i64 1) ; 2 uses
  %4 = shl nsw i64 %i.dx, 3
  %i.eh = udiv i64 %i.eg, %umax
  %i.ei = add i64 %i.eh, %umin
  %i.ej = mul i64 %i.ei, %i.eb
  %5 = add i64 %i.ej, %i.dx
  %6 = add i64 %5, %wide.trip.count
  %i.ek = shl i64 %6, 3
  %i.el = getelementptr i8, ptr %1, i64 %i.ec
  %i.em = getelementptr i8, ptr %1, i64 %4
  %i.en = getelementptr i8, ptr %1, i64 %i.ek
  %min.iters.check = icmp slt i32 %i.dt, 12
  %invariant.op = add i64 %i.dw, %wide.trip.count
  %stride.check = icmp slt i32 %i.ea, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.eo = icmp slt i32 %i.dt, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod195 = trunc i32 %smax to i1
  br label %.preheader95.us.us

.preheader95.us.us:                               ; preds = %.preheader95.us.us.preheader, %._crit_edge99.us.us
  %indvar = phi i64 [ 0, %.preheader95.us.us.preheader ], [ %indvar.next, %._crit_edge99.us.us ] ; 2 uses
  %.065101.us.us = phi ptr [ %1, %.preheader95.us.us.preheader ], [ %i.fo, %._crit_edge99.us.us ] ; 2 uses
  %i.ep = mul i64 %i.ed, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.el, i64 %i.ep
  %scevgep139.a = getelementptr i8, ptr %i.em, i64 %i.ep
  %scevgep140 = getelementptr i8, ptr %i.en, i64 %i.ep
  %scevgep141 = getelementptr i8, ptr %1, i64 %i.ep
  %bound1.a = icmp ult ptr %scevgep, %scevgep140
  br label %.preheader94.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv ; 2 uses
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.eq, i64 %i.dw ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.eq, i64 %i.dx ; 2 uses
  %i.et = load i64, ptr %i.er, align 8, !tbaa !52
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !52
  store i64 %i.eu, ptr %i.er, align 8, !tbaa !52
  store i64 %i.et, ptr %i.es, align 8, !tbaa !52
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 8 ; 2 uses
  %i.ex = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.dw ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ew, i64 %i.dx ; 2 uses
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !52
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !52
  store i64 %i.fa, ptr %i.ex, align 8, !tbaa !52
  store i64 %i.ez, ptr %i.ey, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !528

.preheader94.us.us:                               ; preds = %.preheader95.us.us, %._crit_edge.us.us
  %indvars.iv121 = phi i64 [ 0, %.preheader95.us.us ], [ %indvars.iv.next122, %._crit_edge.us.us ] ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %.065101.us.us, i64 %indvars.iv121 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader94.us.us
  br i1 %i.eo, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader94.us.us
  %7 = udiv i64 %i.eg, %umax
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.eb
  %.reass = add i64 %9, %invariant.op
  %10 = shl i64 %.reass, 3
  %scevgep139 = getelementptr i8, ptr %scevgep141, i64 %10
  %bound1 = icmp ult ptr %scevgep139.a, %scevgep139
  %found.conflict = and i1 %bound1.a, %bound1
  %11 = or i1 %found.conflict, %stride.check
  br i1 %11, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 2 uses
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %index ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.dw ; 3 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %i.fc, i64 %i.dx ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fd, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.fd, align 8, !tbaa !52, !alias.scope !529, !noalias !532
  %wide.load143 = load <2 x i64>, ptr %i.ff, align 8, !tbaa !52, !alias.scope !529, !noalias !532
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %wide.load144 = load <2 x i64>, ptr %i.fe, align 8, !tbaa !52, !alias.scope !532
  %wide.load145 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !52, !alias.scope !532
  store <2 x i64> %wide.load144, ptr %i.fd, align 8, !tbaa !52, !alias.scope !529, !noalias !532
  store <2 x i64> %wide.load145, ptr %i.ff, align 8, !tbaa !52, !alias.scope !529, !noalias !532
  store <2 x i64> %wide.load, ptr %i.fe, align 8, !tbaa !52, !alias.scope !532
  store <2 x i64> %wide.load143, ptr %i.fg, align 8, !tbaa !52, !alias.scope !532
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fh = icmp eq i64 %index.next, %n.vec
  br i1 %i.fh, label %._crit_edge.us.us, label %vector.body, !llvm.loop !534

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod195)
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %indvars.iv.epil.init ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dw ; 2 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fi, i64 %i.dx ; 2 uses
  %i.fl = load i64, ptr %i.fj, align 8, !tbaa !52
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !52
  store i64 %i.fm, ptr %i.fj, align 8, !tbaa !52
  store i64 %i.fl, ptr %i.fk, align 8, !tbaa !52
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next122 = add nsw i64 %indvars.iv121, %i.eb ; 2 uses
  %i.fn = icmp slt i64 %indvars.iv.next122, %i.dx
  br i1 %i.fn, label %.preheader94.us.us, label %._crit_edge99.us.us, !llvm.loop !535

._crit_edge99.us.us:                              ; preds = %._crit_edge.us.us
  %i.fo = getelementptr inbounds [8 x i8], ptr %.065101.us.us, i64 %i.dz ; 2 uses
  %.not.us.us = icmp eq ptr %i.fo, %i.ca
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.us.us, label %_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader95.us.us, !llvm.loop !536

_ZSt9transformIPmS0_ZN3acd10acdXX_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit: ; preds = %._crit_edge99.us.us, %._crit_edge.us, %scalar.ph171, %middle.block188, %.preheader95.lr.ph, %.preheader.lr.ph, %bb.c, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd10acdXX_impl37find_decomposition_bs_offset_multi_ssEjj(ptr noundef nonnull align 8 dereferenceable(632) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [32 x i32], align 16              ; 5 uses
  %i.b = alloca [32 x i32], align 16              ; 5 uses
  %3 = alloca %"struct.kitty::static_truth_table", align 8 ; 12 uses
  %i.c = alloca [4 x i32], align 16               ; 6 uses
  %i.d = alloca [11 x i32], align 16              ; 20 uses
  %i.e = alloca [11 x i32], align 16              ; 20 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %3, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false), !tbaa.struct !108
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  store i32 %1, ptr %i.g, align 4, !tbaa !92
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 572 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !102  ; 2 uses
  %i.j = sub i32 %i.i, %1
  %i.k = shl nuw i32 1, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.m = load i32, ptr %i.l, align 8, !tbaa !103
  %i.n = add i32 %i.m, 1
  %i.o = shl nuw i32 1, %i.n
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.o, i32 %i.k) ; 2 uses
  %i.p = icmp eq i32 %1, %2
  br i1 %i.p, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !94   ; 4 uses
  %i.s = zext nneg i32 %1 to i64
  %i.t = shl nuw i64 1, %i.s                      ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.t
  %i.u = xor i64 %notmask.i, -1
  %i.v = icmp ult i32 %i.r, 6
  %i.w = shl nuw nsw i32 1, %i.r
  %i.x = select i1 %i.v, i32 %i.w, i32 64
  %i.y = lshr i32 %i.x, %1                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %.not5164.not.i = icmp eq i32 %i.y, 0
  br i1 %.not5164.not.i, label %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit.thread, label %.lr.ph69.us.preheader.i

.lr.ph69.us.preheader.i:                          ; preds = %bb.b
  %i.z = icmp ugt i32 %i.r, 6
  %i.aa = add i32 %i.r, -6
  %i.ab = shl nuw i32 1, %i.aa
  %i.ac = select i1 %i.z, i32 %i.ab, i32 1
  %wide.trip.count80.i = zext i32 %i.ac to i64
  br label %.lr.ph69.us.i

.lr.ph69.us.i:                                    ; preds = %..thread55_crit_edge.us.i, %.lr.ph69.us.preheader.i
  %indvars.iv77.i = phi i64 [ 0, %.lr.ph69.us.preheader.i ], [ %indvars.iv.next78.i, %..thread55_crit_edge.us.i ] ; 2 uses
  %.04071.us.i = phi i32 [ 0, %.lr.ph69.us.preheader.i ], [ %.242.us.i, %..thread55_crit_edge.us.i ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv77.i
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph69.us.i
  %.03567.us.i = phi i32 [ 0, %.lr.ph69.us.i ], [ %i.ap, %bb.f ]
  %.03666.us.i = phi i64 [ %i.ae, %.lr.ph69.us.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.14165.us.i = phi i32 [ %.04071.us.i, %.lr.ph69.us.i ], [ %.242.us.i, %bb.f ] ; 6 uses
  %i.af = and i64 %.03666.us.i, %i.u
  %i.ag = trunc i64 %i.af to i32                  ; 2 uses
  %.not.i = icmp eq i32 %.14165.us.i, 0
  br i1 %.not.i, label %.thread.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %bb.c
  %wide.trip.count.i = zext i32 %.14165.us.i to i64 ; 2 uses
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.d, %.lr.ph.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !43
  %i.aj = icmp eq i32 %i.ai, %i.ag
  br i1 %i.aj, label %._crit_edge.us.split.loop.exit88.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !537

._crit_edge.us.split.loop.exit88.i:               ; preds = %.lr.ph.us.i
  %i.ak = trunc nuw i64 %indvars.iv.i to i32
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.split.loop.exit88.i
  %.0.lcssa.us.i = phi i32 [ %i.ak, %._crit_edge.us.split.loop.exit88.i ], [ %.14165.us.i, %bb.d ] ; 2 uses
  %.not.us.i = icmp eq i32 %.0.lcssa.us.i, %.sroa.speculated
  br i1 %.not.us.i, label %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit.thread, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us.i
  %i.al = icmp eq i32 %.0.lcssa.us.i, %.14165.us.i
  br i1 %i.al, label %.thread.i, label %bb.f

.thread.i:                                        ; preds = %bb.c, %bb.e
  %.pre-phi = phi i64 [ %wide.trip.count.i, %bb.e ], [ 0, %bb.c ]
  %i.am = add i32 %.14165.us.i, 1
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.pre-phi
  store i32 %i.ag, ptr %i.an, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %bb.e
  %.242.us.i = phi i32 [ %i.am, %.thread.i ], [ %.14165.us.i, %bb.e ] ; 4 uses
  %i.ao = lshr i64 %.03666.us.i, %i.t
  %i.ap = add nuw nsw i32 %.03567.us.i, 1         ; 2 uses
  %exitcond76.not.i = icmp eq i32 %i.ap, %i.y
  br i1 %exitcond76.not.i, label %..thread55_crit_edge.us.i, label %bb.c, !llvm.loop !538

..thread55_crit_edge.us.i:                        ; preds = %bb.f
  %indvars.iv.next78.i = add nuw nsw i64 %indvars.iv77.i, 1 ; 2 uses
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next78.i, %wide.trip.count80.i
  br i1 %exitcond81.not.i, label %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit, label %.lr.ph69.us.i, !llvm.loop !539

_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit.thread: ; preds = %._crit_edge.us.i, %bb.b
  %spec.select.i.ph = phi i32 [ 0, %bb.b ], [ 64, %._crit_edge.us.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %bb.h

_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit: ; preds = %..thread55_crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  %i.aq = icmp eq i32 %.242.us.i, 2
  br i1 %i.aq, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit
  store i32 2, ptr %0, align 8, !tbaa !89
  br label %bb.al

bb.h:                                             ; preds = %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit.thread, %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit
  %spec.select.i139 = phi i32 [ %spec.select.i.ph, %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit.thread ], [ %.242.us.i, %_ZN3acd10acdXX_impl20column_multiplicity2ERKN5kitty18static_truth_tableILj11ELb0EEEjj.exit ] ; 5 uses
  %i.ar = icmp ult i32 %spec.select.i139, 5
  br i1 %i.ar, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.as = icmp ult i32 %spec.select.i139, 9
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = icmp ult i32 %spec.select.i139, 17
  %i.au = icmp ult i32 %spec.select.i139, 33
  %i.av = select i1 %i.au, i32 4, i32 5
  %i.aw = select i1 %i.at, i32 3, i32 %i.av
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %i.ax = phi i32 [ 1, %bb.h ], [ %i.aw, %bb.j ], [ 2, %bb.i ] ; 2 uses
  %i.ay = add i32 %i.ax, %1
  %i.az = icmp ult i32 %i.ay, %i.i
  br i1 %i.az, label %bb.l, label %.critedge

bb.l:                                             ; preds = %bb.k
  store i32 %spec.select.i139, ptr %0, align 8, !tbaa !89
  %i.ba = call noundef i32 @_ZN3acd10acdXX_impl22check_shared_set_multiERKN5kitty18static_truth_tableILj11ELb0EEEjPj(ptr noundef nonnull align 8 dereferenceable(632) %0, ptr noundef nonnull align 8 dereferenceable(256) %3, i32 noundef %i.ax, ptr noundef nonnull %i.c) ; 5 uses
  %i.bb = icmp slt i32 %i.ba, 0
  br i1 %i.bb, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %i.f, ptr noundef nonnull align 8 dereferenceable(256) %3, i64 256, i1 false), !tbaa.struct !108
  %.not185 = icmp eq i32 %i.ba, 0
  br i1 %.not185, label %._crit_edge179, label %.lr.ph178

.lr.ph178:                                        ; preds = %bb.m
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 588 ; 2 uses
  %i.bd = zext nneg i32 %i.ba to i64
  %.pre230 = load i32, ptr %i.g, align 4, !tbaa !92
  %.pre231 = load i32, ptr %i.q, align 8, !tbaa !94
  br label %bb.n

._crit_edge179:                                   ; preds = %bb.n, %bb.m
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %i.ba, ptr %i.be, align 4, !tbaa !540
  br label %bb.al

bb.n:                                             ; preds = %.lr.ph178, %bb.n
  %i.bf = phi i32 [ %.pre231, %.lr.ph178 ], [ %i.bu, %bb.n ]
end_hunk_2
begin_hunk_3_@_ZN3acd10acd66_impl30find_decomposition_bs_multi_ssEj:bb.a
  %i.ci = zext i8 %spec.select.i52 to i64
  %i.cj = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.ci
  %i.ck = zext nneg i8 %spec.select79.i to i64
  %i.cl = getelementptr inbounds nuw [24 x i8], ptr %i.cj, i64 %i.ck ; 3 uses
  %i.cm = zext nneg i8 %spec.select.i52 to i32
  %.neg.i = shl nsw i32 -1, %i.cm
  %i.cn = shl nuw nsw i32 1, %i.cg
  %i.co = add nsw i32 %.neg.i, %i.cn
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  %i.cq = zext i32 %i.co to i64                   ; 3 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  %i.cs = load i64, ptr %i.cl, align 8, !tbaa !52 ; 2 uses
  %i.ct = load i64, ptr %i.cp, align 8, !tbaa !52 ; 2 uses
  %i.cu = load i64, ptr %i.cr, align 8, !tbaa !52 ; 2 uses
  br i1 %min.iters.check292, label %scalar.ph291.preheader, label %vector.ph293

vector.ph293:                                     ; preds = %.lr.ph.i.i
  %broadcast.splatinsert295 = insertelement <2 x i64> poison, i64 %i.cq, i64 0
  %broadcast.splat296 = shufflevector <2 x i64> %broadcast.splatinsert295, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert297 = insertelement <2 x i64> poison, i64 %i.cs, i64 0
  %broadcast.splat298 = shufflevector <2 x i64> %broadcast.splatinsert297, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert299 = insertelement <2 x i64> poison, i64 %i.ct, i64 0
  %broadcast.splat300 = shufflevector <2 x i64> %broadcast.splatinsert299, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert301 = insertelement <2 x i64> poison, i64 %i.cu, i64 0
  %broadcast.splat302 = shufflevector <2 x i64> %broadcast.splatinsert301, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body303

vector.body303:                                   ; preds = %vector.body303, %vector.ph293
  %index304 = phi i64 [ 0, %vector.ph293 ], [ %index.next308, %vector.body303 ] ; 2 uses
  %i.cv = shl i64 %index304, 3
  %next.gep305 = getelementptr i8, ptr %i.bg, i64 %i.cv ; 3 uses
  %i.cw = getelementptr i8, ptr %next.gep305, i64 16 ; 2 uses
  %wide.load306 = load <2 x i64>, ptr %next.gep305, align 8, !tbaa !52 ; 3 uses
  %wide.load307 = load <2 x i64>, ptr %i.cw, align 8, !tbaa !52 ; 3 uses
  %i.cx = and <2 x i64> %wide.load306, %broadcast.splat298
  %i.cy = and <2 x i64> %wide.load307, %broadcast.splat298
  %i.cz = and <2 x i64> %wide.load306, %broadcast.splat300
  %i.da = and <2 x i64> %wide.load307, %broadcast.splat300
  %i.db = shl <2 x i64> %i.cz, %broadcast.splat296
  %i.dc = shl <2 x i64> %i.da, %broadcast.splat296
  %i.dd = or <2 x i64> %i.db, %i.cx
  %i.de = or <2 x i64> %i.dc, %i.cy
  %i.df = and <2 x i64> %wide.load306, %broadcast.splat302
  %i.dg = and <2 x i64> %wide.load307, %broadcast.splat302
  %i.dh = lshr <2 x i64> %i.df, %broadcast.splat296
  %i.di = lshr <2 x i64> %i.dg, %broadcast.splat296
  %i.dj = or <2 x i64> %i.dd, %i.dh
  %i.dk = or <2 x i64> %i.de, %i.di
  store <2 x i64> %i.dj, ptr %next.gep305, align 8, !tbaa !52
  store <2 x i64> %i.dk, ptr %i.cw, align 8, !tbaa !52
  %index.next308 = add nuw i64 %index304, 4       ; 2 uses
  %i.dl = icmp eq i64 %index.next308, %n.vec294
  br i1 %i.dl, label %middle.block309, label %vector.body303, !llvm.loop !614

middle.block309:                                  ; preds = %vector.body303
  br i1 %cmp.n310, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %scalar.ph291.preheader

scalar.ph291.preheader:                           ; preds = %.lr.ph.i.i, %middle.block309
  %.010.i.i.ph = phi ptr [ %i.bg, %.lr.ph.i.i ], [ %i.bw, %middle.block309 ]
  br label %scalar.ph291

scalar.ph291:                                     ; preds = %scalar.ph291.preheader, %scalar.ph291
  %.010.i.i = phi ptr [ %i.du, %scalar.ph291 ], [ %.010.i.i.ph, %scalar.ph291.preheader ] ; 3 uses
  %i.dm = load i64, ptr %.010.i.i, align 8, !tbaa !52 ; 3 uses
  %i.dn = and i64 %i.dm, %i.cs
  %i.do = and i64 %i.dm, %i.ct
  %i.dp = shl i64 %i.do, %i.cq
  %i.dq = or i64 %i.dp, %i.dn
  %i.dr = and i64 %i.dm, %i.cu
  %i.ds = lshr i64 %i.dr, %i.cq
  %i.dt = or i64 %i.dq, %i.ds
  store i64 %i.dt, ptr %.010.i.i, align 8, !tbaa !52
  %i.du = getelementptr i8, ptr %.010.i.i, i64 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.du, %i.bp
  br i1 %.not.i.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %scalar.ph291, !llvm.loop !615

bb.n:                                             ; preds = %bb.m
  %i.dv = zext i8 %spec.select.i52 to i32         ; 2 uses
  %i.dw = icmp ult i8 %spec.select.i52, 6
  br i1 %i.dw, label %.preheader.lr.ph.i, label %.preheader82.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.n
  %i.dx = add nsw i32 %i.cg, -6                   ; 3 uses
  %i.dy = shl nuw i32 1, %i.dx                    ; 3 uses
  %i.dz = shl nuw nsw i32 1, %i.dv
  %.not97.i = icmp eq i32 %i.dx, 31
  %i.ea = zext nneg i32 %i.dz to i64              ; 3 uses
  %i.eb = sext i32 %i.dy to i64                   ; 3 uses
  %i.ec = shl i32 2, %i.dx
  %i.ed = sext i32 %i.ec to i64                   ; 2 uses
  br i1 %.not97.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.ee = zext nneg i8 %spec.select.i52 to i64
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.ee
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !52 ; 5 uses
  %i.eh = xor i64 %i.eg, -1                       ; 2 uses
  %smax114.i = call i32 @llvm.smax.i32(i32 %i.dy, i32 1)
  %wide.trip.count115.i = zext nneg i32 %smax114.i to i64 ; 3 uses
  %i.ei = shl nuw nsw i64 %wide.trip.count115.i, 3 ; 2 uses
  %i.ej = shl nsw i64 %i.ed, 3
  %i.ek = shl nsw i64 %i.eb, 3                    ; 2 uses
  %min.iters.check322 = icmp slt i32 %i.dy, 2
  %i.el = getelementptr i8, ptr %0, i64 %i.ek
  %i.em = getelementptr i8, ptr %i.el, i64 16
  %i.en = getelementptr i8, ptr %i.em, i64 %i.ei
  %i.eo = getelementptr i8, ptr %0, i64 %i.ek
  %i.ep = getelementptr i8, ptr %i.eo, i64 16
  %i.eq = getelementptr i8, ptr %0, i64 %i.ei
  %i.er = getelementptr i8, ptr %i.eq, i64 16
  %n.vec324 = and i64 %wide.trip.count115.i, 2147483646
  %broadcast.splatinsert325 = insertelement <2 x i64> poison, i64 %i.eg, i64 0
  %broadcast.splat326 = shufflevector <2 x i64> %broadcast.splatinsert325, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert327 = insertelement <2 x i64> poison, i64 %i.ea, i64 0
  %broadcast.splat328 = shufflevector <2 x i64> %broadcast.splatinsert327, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert329 = insertelement <2 x i64> poison, i64 %i.eh, i64 0
  %broadcast.splat330 = shufflevector <2 x i64> %broadcast.splatinsert329, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i57, %.preheader.lr.ph.split.us.i
  %indvar313 = phi i64 [ %indvar.next314, %._crit_edge.us.i57 ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.05892.us.i = phi ptr [ %i.fq, %._crit_edge.us.i57 ], [ %i.bg, %.preheader.lr.ph.split.us.i ] ; 4 uses
  br i1 %min.iters.check322, label %scalar.ph321.preheader, label %vector.memcheck312

scalar.ph321.preheader:                           ; preds = %vector.memcheck312, %.preheader.us.i
  br label %scalar.ph321

vector.memcheck312:                               ; preds = %.preheader.us.i
  %i.es = mul i64 %i.ej, %indvar313               ; 3 uses
  %scevgep317 = getelementptr i8, ptr %i.en, i64 %i.es
  %scevgep316 = getelementptr i8, ptr %i.ep, i64 %i.es
  %scevgep315 = getelementptr i8, ptr %i.er, i64 %i.es
  %bound0318 = icmp ult ptr %.05892.us.i, %scevgep317
  %bound1319 = icmp ult ptr %scevgep316, %scevgep315
  %found.conflict320 = and i1 %bound0318, %bound1319
  br i1 %found.conflict320, label %scalar.ph321.preheader, label %vector.body331

vector.body331:                                   ; preds = %vector.memcheck312, %vector.body331
  %index332 = phi i64 [ %index.next335, %vector.body331 ], [ 0, %vector.memcheck312 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i, i64 %index332 ; 3 uses
  %wide.load333 = load <2 x i64>, ptr %i.et, align 8, !tbaa !52, !alias.scope !616, !noalias !619 ; 2 uses
  %i.eu = and <2 x i64> %wide.load333, %broadcast.splat326
  %i.ev = lshr <2 x i64> %i.eu, %broadcast.splat328
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.eb ; 2 uses
  %wide.load334 = load <2 x i64>, ptr %i.ew, align 8, !tbaa !52, !alias.scope !619 ; 2 uses
  %i.ex = shl <2 x i64> %wide.load334, %broadcast.splat328
  %i.ey = and <2 x i64> %i.ex, %broadcast.splat326
  %i.ez = and <2 x i64> %wide.load333, %broadcast.splat330
  %i.fa = or <2 x i64> %i.ey, %i.ez
  store <2 x i64> %i.fa, ptr %i.et, align 8, !tbaa !52, !alias.scope !616, !noalias !619
  %i.fb = and <2 x i64> %wide.load334, %broadcast.splat326
  %i.fc = or <2 x i64> %i.fb, %i.ev
  store <2 x i64> %i.fc, ptr %i.ew, align 8, !tbaa !52, !alias.scope !619
  %index.next335 = add nuw i64 %index332, 2       ; 2 uses
  %i.fd = icmp eq i64 %index.next335, %n.vec324
  br i1 %i.fd, label %._crit_edge.us.i57, label %vector.body331, !llvm.loop !621

scalar.ph321:                                     ; preds = %scalar.ph321.preheader, %scalar.ph321
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %scalar.ph321 ], [ 0, %scalar.ph321.preheader ] ; 2 uses
  %i.fe = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i, i64 %indvars.iv111.i ; 3 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !52 ; 2 uses
  %i.fg = and i64 %i.ff, %i.eg
  %i.fh = lshr i64 %i.fg, %i.ea
  %i.fi = getelementptr inbounds [8 x i8], ptr %i.fe, i64 %i.eb ; 2 uses
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !52 ; 2 uses
  %i.fk = shl i64 %i.fj, %i.ea
  %i.fl = and i64 %i.fk, %i.eg
  %i.fm = and i64 %i.ff, %i.eh
  %i.fn = or i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.fe, align 8, !tbaa !52
  %i.fo = and i64 %i.fj, %i.eg
  %i.fp = or i64 %i.fo, %i.fh
  store i64 %i.fp, ptr %i.fi, align 8, !tbaa !52
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count115.i
  br i1 %exitcond116.not.i, label %._crit_edge.us.i57, label %scalar.ph321, !llvm.loop !622

._crit_edge.us.i57:                               ; preds = %vector.body331, %scalar.ph321
  %i.fq = getelementptr inbounds [8 x i8], ptr %.05892.us.i, i64 %i.ed ; 2 uses
  %.not70.us.i = icmp eq ptr %i.fq, %i.bp
  %indvar.next314 = add i64 %indvar313, 1
  br i1 %.not70.us.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader.us.i, !llvm.loop !623

.preheader82.lr.ph.i:                             ; preds = %bb.n
  %i.fr = add nsw i32 %i.dv, -6                   ; 3 uses
  %i.fs = shl nuw i32 1, %i.fr                    ; 4 uses
  %i.ft = add nsw i32 %i.cg, -6                   ; 3 uses
  %i.fu = shl nuw i32 1, %i.ft                    ; 2 uses
  %.not94.i = icmp eq i32 %i.ft, 31
  %i.fv = sext i32 %i.fs to i64                   ; 5 uses
  %i.fw = sext i32 %i.fu to i64                   ; 7 uses
  %i.fx = shl i32 2, %i.ft
  %i.fy = sext i32 %i.fx to i64                   ; 2 uses
  %.not95.i = icmp eq i32 %i.fr, 31
  %or.cond.i = select i1 %.not94.i, i1 true, i1 %.not95.i
  br i1 %or.cond.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader82.us.us.preheader.i

.preheader82.us.us.preheader.i:                   ; preds = %.preheader82.lr.ph.i
  %i.fz = shl i32 2, %i.fr                        ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.fs, i32 1) ; 2 uses
  %i.ga = sext i32 %i.fz to i64                   ; 6 uses
  %wide.trip.count.i53 = zext nneg i32 %smax.i to i64 ; 4 uses
  %i.gb = shl nsw i64 %i.fv, 3                    ; 2 uses
  %i.gc = shl nsw i64 %i.fy, 3
  %smax343 = call i64 @llvm.smax.i64(i64 %i.ga, i64 %i.fw)
  %i.gd = icmp slt i32 %i.fz, %i.fu
  %umin344 = zext i1 %i.gd to i64                 ; 3 uses
  %i.ge = or disjoint i64 %umin344, %i.ga
  %i.gf = sub i64 %smax343, %i.ge                 ; 2 uses
  %umax345 = call i64 @llvm.umax.i64(i64 %i.ga, i64 1) ; 2 uses
  %i.gg = shl nuw nsw i64 %wide.trip.count.i53, 3 ; 2 uses
  %i.gh = shl nsw i64 %i.fw, 3                    ; 2 uses
  %3 = udiv i64 %i.gf, %umax345
  %4 = add i64 %3, %umin344
  %5 = shl i64 %4, 3
  %6 = mul i64 %5, %i.ga
  %i.gi = getelementptr i8, ptr %0, i64 %i.gb
  %i.gj = getelementptr i8, ptr %i.gi, i64 16
  %i.gk = getelementptr i8, ptr %0, i64 %i.gh
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %i.gm = getelementptr i8, ptr %0, i64 %6
  %i.gn = getelementptr i8, ptr %i.gm, i64 16
  %i.go = getelementptr i8, ptr %i.gn, i64 %i.gh
  %i.gp = getelementptr i8, ptr %i.go, i64 %i.gg
  %min.iters.check355 = icmp slt i32 %i.fs, 12
  %stride.check352 = icmp slt i32 %i.fz, 0
  %n.vec357 = and i64 %wide.trip.count.i53, 2147483644
  %xtraiter391 = and i64 %wide.trip.count.i53, 1
  %i.gq = icmp slt i32 %i.fs, 2
  %unroll_iter394 = and i64 %wide.trip.count.i53, 2147483646
  %lcmp.mod392.not = icmp eq i64 %xtraiter391, 0
  %lcmp.mod393 = trunc i32 %smax.i to i1
  br label %.preheader82.us.us.i

.preheader82.us.us.i:                             ; preds = %._crit_edge86.us.us.i, %.preheader82.us.us.preheader.i
  %indvar340 = phi i64 [ %indvar.next341, %._crit_edge86.us.us.i ], [ 0, %.preheader82.us.us.preheader.i ] ; 2 uses
  %.05688.us.us.i = phi ptr [ %i.hq, %._crit_edge86.us.us.i ], [ %i.bg, %.preheader82.us.us.preheader.i ] ; 2 uses
  %i.gr = mul i64 %i.gc, %indvar340               ; 4 uses
  %scevgep342 = getelementptr i8, ptr %i.gj, i64 %i.gr
  %scevgep346.a = getelementptr i8, ptr %i.gl, i64 %i.gr
  %scevgep347 = getelementptr i8, ptr %i.gp, i64 %i.gr
  %scevgep348 = getelementptr i8, ptr %0, i64 %i.gr
  %bound1350.a = icmp ult ptr %scevgep342, %scevgep347
  br label %.preheader81.us.us.i

scalar.ph354:                                     ; preds = %scalar.ph354.preheader, %scalar.ph354
  %indvars.iv.i54 = phi i64 [ %indvars.iv.next.i55.1, %scalar.ph354 ], [ 0, %scalar.ph354.preheader ] ; 3 uses
  %niter395 = phi i64 [ %niter395.next.1, %scalar.ph354 ], [ 0, %scalar.ph354.preheader ]
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i54 ; 2 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.fv ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.gs, i64 %i.fw ; 2 uses
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !52
  %i.gw = load i64, ptr %i.gu, align 8, !tbaa !52
  store i64 %i.gw, ptr %i.gt, align 8, !tbaa !52
  store i64 %i.gv, ptr %i.gu, align 8, !tbaa !52
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i54
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 8 ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gy, i64 %i.fv ; 2 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gy, i64 %i.fw ; 2 uses
  %i.hb = load i64, ptr %i.gz, align 8, !tbaa !52
  %i.hc = load i64, ptr %i.ha, align 8, !tbaa !52
  store i64 %i.hc, ptr %i.gz, align 8, !tbaa !52
  store i64 %i.hb, ptr %i.ha, align 8, !tbaa !52
  %indvars.iv.next.i55.1 = add nuw nsw i64 %indvars.iv.i54, 2 ; 2 uses
  %niter395.next.1 = add i64 %niter395, 2         ; 2 uses
  %niter395.ncmp.1 = icmp eq i64 %niter395.next.1, %unroll_iter394
  br i1 %niter395.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph354, !llvm.loop !624

.preheader81.us.us.i:                             ; preds = %._crit_edge.us.us.i, %.preheader82.us.us.i
  %indvars.iv108.i = phi i64 [ 0, %.preheader82.us.us.i ], [ %indvars.iv.next109.i, %._crit_edge.us.us.i ] ; 2 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i, i64 %indvars.iv108.i ; 4 uses
  br i1 %min.iters.check355, label %scalar.ph354.preheader, label %scalar.ph354.preheader.a

scalar.ph354.preheader:                           ; preds = %scalar.ph354.preheader.a, %.preheader81.us.us.i
  br i1 %i.gq, label %scalar.ph354.epil.preheader, label %scalar.ph354

scalar.ph354.preheader.a:                         ; preds = %.preheader81.us.us.i
  %7 = udiv i64 %i.gf, %umax345
  %8 = add i64 %7, %umin344
  %9 = shl i64 %8, 3
  %10 = mul i64 %9, %i.ga
  %11 = getelementptr i8, ptr %scevgep348, i64 %10
  %12 = getelementptr i8, ptr %11, i64 16
  %13 = getelementptr i8, ptr %12, i64 %i.gb
  %scevgep346 = getelementptr i8, ptr %13, i64 %i.gg
  %bound1350 = icmp ult ptr %scevgep346.a, %scevgep346
  %found.conflict351 = and i1 %bound1350.a, %bound1350
  %14 = or i1 %found.conflict351, %stride.check352
  br i1 %14, label %scalar.ph354.preheader, label %vector.body358

vector.body358:                                   ; preds = %scalar.ph354.preheader.a, %vector.body358
  %index359 = phi i64 [ %index.next364, %vector.body358 ], [ 0, %scalar.ph354.preheader.a ] ; 2 uses
  %i.he = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %index359 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.he, i64 %i.fv ; 3 uses
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.he, i64 %i.fw ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hf, i64 16 ; 2 uses
  %wide.load360 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !52, !alias.scope !625, !noalias !628
  %wide.load361 = load <2 x i64>, ptr %i.hh, align 8, !tbaa !52, !alias.scope !625, !noalias !628
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hg, i64 16 ; 2 uses
  %wide.load362 = load <2 x i64>, ptr %i.hg, align 8, !tbaa !52, !alias.scope !628
  %wide.load363 = load <2 x i64>, ptr %i.hi, align 8, !tbaa !52, !alias.scope !628
  store <2 x i64> %wide.load362, ptr %i.hf, align 8, !tbaa !52, !alias.scope !625, !noalias !628
  store <2 x i64> %wide.load363, ptr %i.hh, align 8, !tbaa !52, !alias.scope !625, !noalias !628
  store <2 x i64> %wide.load360, ptr %i.hg, align 8, !tbaa !52, !alias.scope !628
  store <2 x i64> %wide.load361, ptr %i.hi, align 8, !tbaa !52, !alias.scope !628
  %index.next364 = add nuw i64 %index359, 4       ; 2 uses
  %i.hj = icmp eq i64 %index.next364, %n.vec357
  br i1 %i.hj, label %._crit_edge.us.us.i, label %vector.body358, !llvm.loop !630

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph354
  br i1 %lcmp.mod392.not, label %._crit_edge.us.us.i, label %scalar.ph354.epil.preheader

scalar.ph354.epil.preheader:                      ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph354.preheader
  %indvars.iv.i54.epil.init = phi i64 [ 0, %scalar.ph354.preheader ], [ %indvars.iv.next.i55.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod393)
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.hd, i64 %indvars.iv.i54.epil.init ; 2 uses
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.fv ; 2 uses
  %i.hm = getelementptr inbounds [8 x i8], ptr %i.hk, i64 %i.fw ; 2 uses
  %i.hn = load i64, ptr %i.hl, align 8, !tbaa !52
  %i.ho = load i64, ptr %i.hm, align 8, !tbaa !52
  store i64 %i.ho, ptr %i.hl, align 8, !tbaa !52
  store i64 %i.hn, ptr %i.hm, align 8, !tbaa !52
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body358, %scalar.ph354.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, %i.ga ; 2 uses
  %i.hp = icmp slt i64 %indvars.iv.next109.i, %i.fw
  br i1 %i.hp, label %.preheader81.us.us.i, label %._crit_edge86.us.us.i, !llvm.loop !631

._crit_edge86.us.us.i:                            ; preds = %._crit_edge.us.us.i
  %i.hq = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i, i64 %i.fy ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.hq, %i.bp
  %indvar.next341 = add i64 %indvar340, 1
  br i1 %.not.us.us.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader82.us.us.i, !llvm.loop !632

_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit: ; preds = %._crit_edge86.us.us.i, %._crit_edge.us.i57, %scalar.ph291, %middle.block309, %bb.l, %.preheader.lr.ph.i, %.preheader82.lr.ph.i
  %i.hr = zext i32 %i.cb to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.hr ; 2 uses
  %i.ht = zext i32 %i.cd to i64
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hs, align 4, !tbaa !43
  %i.hw = load i32, ptr %i.hu, align 4, !tbaa !43
  store i32 %i.hw, ptr %i.hs, align 4, !tbaa !43
  store i32 %i.hv, ptr %i.hu, align 4, !tbaa !43
  %i.hx = trunc nuw i64 %indvars.iv171 to i32
  %i.hy = icmp sgt i32 %i.hx, 1
  br i1 %i.hy, label %bb.l, label %._crit_edge132, !llvm.loop !633

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.hz = phi i32 [ %.pre, %bb.j ], [ %i.x, %bb.i ]
  %invariant.op.i = sub i32 %i.hz, %1
  br label %bb.p

bb.p:                                             ; preds = %bb.q, %bb.o
  %.045.in.i = phi i32 [ %1, %bb.o ], [ %.045.i, %bb.q ] ; 3 uses
  %.045.i = add i32 %.045.in.i, -1                ; 5 uses
  %i.ia = zext i32 %.045.i to i64                 ; 2 uses
  %i.ib = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ia
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !43 ; 4 uses
  %.reass.i = add i32 %invariant.op.i, %.045.i
  %.not.not.not.i.not = icmp eq i32 %i.ic, %.reass.i
  br i1 %.not.not.not.i.not, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.id = icmp eq i32 %.045.i, 0
  br i1 %i.id, label %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread, label %bb.p, !llvm.loop !634

bb.r:                                             ; preds = %bb.p
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ia
  %i.if = add i32 %i.ic, 1
  %i.ig = zext i32 %i.if to i64
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ig ; 2 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !43 ; 3 uses
  %i.ij = zext i32 %i.ic to i64
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ij ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4, !tbaa !43
  store i32 %i.il, ptr %i.ih, align 4, !tbaa !43
  store i32 %i.ii, ptr %i.ik, align 4, !tbaa !43
  %i.im = zext i32 %i.ii to i64
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.im ; 2 uses
  %i.io = load i32, ptr %i.in, align 4, !tbaa !43
  store i32 %i.io, ptr %i.ie, align 4, !tbaa !43
  store i32 %i.ic, ptr %i.in, align 4, !tbaa !43
  %i.ip = trunc i32 %.045.i to i8
  %i.iq = trunc i32 %i.ii to i8
  call void @_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %2, i8 noundef zeroext %i.ip, i8 noundef zeroext %i.iq)
  %i.ir = icmp ult i32 %.045.in.i, %1
  br i1 %i.ir, label %.lr.ph.preheader.i, label %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit

.lr.ph.preheader.i:                               ; preds = %bb.r
  %i.is = zext nneg i32 %.045.in.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, %.lr.ph.preheader.i
  %indvars.iv.i58 = phi i64 [ %i.is, %.lr.ph.preheader.i ], [ %indvars.iv.next.i59, %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99 ] ; 4 uses
  %i.it = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i58 ; 2 uses
  %i.iu = load i32, ptr %i.it, align 4, !tbaa !43 ; 2 uses
  %i.iv = add nuw nsw i64 %indvars.iv.i58, 4294967295
  %i.iw = and i64 %i.iv, 4294967295
  %i.ix = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.iw
  %i.iy = load i32, ptr %i.ix, align 4, !tbaa !43
  %i.iz = add i32 %i.iy, 1
  %i.ja = zext i32 %i.iz to i64
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ja ; 2 uses
  %i.jc = load i32, ptr %i.jb, align 4, !tbaa !43 ; 3 uses
  %i.jd = zext i32 %i.iu to i64
  %i.je = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.jd ; 2 uses
  %i.jf = load i32, ptr %i.je, align 4, !tbaa !43
  store i32 %i.jf, ptr %i.jb, align 4, !tbaa !43
  store i32 %i.jc, ptr %i.je, align 4, !tbaa !43
  %i.jg = zext i32 %i.jc to i64
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.jg ; 2 uses
  %i.ji = load i32, ptr %i.jh, align 4, !tbaa !43
  store i32 %i.ji, ptr %i.it, align 4, !tbaa !43
  store i32 %i.iu, ptr %i.jh, align 4, !tbaa !43
  %i.jj = trunc i64 %indvars.iv.i58 to i8         ; 3 uses
  %i.jk = trunc i32 %i.jc to i8                   ; 3 uses
  %i.jl = icmp eq i8 %i.jj, %i.jk
  br i1 %i.jl, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %bb.s

bb.s:                                             ; preds = %.lr.ph.i
  %spec.select.i61 = call i8 @llvm.umin.i8(i8 %i.jj, i8 %i.jk) ; 5 uses
  %spec.select79.i62 = call i8 @llvm.umax.i8(i8 %i.jj, i8 %i.jk) ; 3 uses
  %i.jm = load i32, ptr %i.f, align 8, !tbaa !118
  %i.jn = add i32 %i.jm, -6
  %i.jo = shl nuw i32 1, %i.jn                    ; 2 uses
  %i.jp = zext i8 %spec.select79.i62 to i32       ; 3 uses
  %i.jq = icmp ult i8 %spec.select79.i62, 6
  br i1 %i.jq, label %.lr.ph.i.i94, label %bb.t

.lr.ph.i.i94:                                     ; preds = %bb.s
  %i.jr = zext i8 %spec.select.i61 to i64
  %i.js = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.jr
  %i.jt = zext nneg i8 %spec.select79.i62 to i64
  %i.ju = getelementptr inbounds nuw [24 x i8], ptr %i.js, i64 %i.jt ; 3 uses
  %i.jv = zext i32 %i.jo to i64
  %.idx.i95 = shl nuw nsw i64 %i.jv, 3            ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %2, i64 %.idx.i95
  %i.jx = zext nneg i8 %spec.select.i61 to i32
  %.neg.i96 = shl nsw i32 -1, %i.jx
  %i.jy = shl nuw nsw i32 1, %i.jp
  %i.jz = add nsw i32 %.neg.i96, %i.jy
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ju, i64 8
  %i.kb = zext i32 %i.jz to i64                   ; 3 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %i.ju, i64 16
  %i.kd = load i64, ptr %i.ju, align 8, !tbaa !52 ; 2 uses
  %i.ke = load i64, ptr %i.ka, align 8, !tbaa !52 ; 2 uses
  %i.kf = load i64, ptr %i.kc, align 8, !tbaa !52 ; 2 uses
  %i.kg = add nsw i64 %.idx.i95, -8               ; 2 uses
  %i.kh = lshr exact i64 %i.kg, 3
  %i.ki = add nuw nsw i64 %i.kh, 1                ; 2 uses
  %min.iters.check230 = icmp ult i64 %i.kg, 24
  br i1 %min.iters.check230, label %scalar.ph229.preheader, label %vector.ph231

vector.ph231:                                     ; preds = %.lr.ph.i.i94
  %n.vec232 = and i64 %i.ki, 4611686018427387900  ; 3 uses
  %i.kj = shl i64 %n.vec232, 3
  %i.kk = getelementptr i8, ptr %2, i64 %i.kj
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.kb, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert233 = insertelement <2 x i64> poison, i64 %i.kd, i64 0
  %broadcast.splat234 = shufflevector <2 x i64> %broadcast.splatinsert233, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert235 = insertelement <2 x i64> poison, i64 %i.ke, i64 0
  %broadcast.splat236 = shufflevector <2 x i64> %broadcast.splatinsert235, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert237 = insertelement <2 x i64> poison, i64 %i.kf, i64 0
  %broadcast.splat238 = shufflevector <2 x i64> %broadcast.splatinsert237, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph231
  %index240 = phi i64 [ 0, %vector.ph231 ], [ %index.next242, %vector.body239 ] ; 2 uses
  %i.kl = shl i64 %index240, 3
  %next.gep = getelementptr i8, ptr %2, i64 %i.kl ; 3 uses
  %i.km = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !52 ; 3 uses
  %wide.load241 = load <2 x i64>, ptr %i.km, align 8, !tbaa !52 ; 3 uses
  %i.kn = and <2 x i64> %wide.load, %broadcast.splat234
  %i.ko = and <2 x i64> %wide.load241, %broadcast.splat234
  %i.kp = and <2 x i64> %wide.load, %broadcast.splat236
  %i.kq = and <2 x i64> %wide.load241, %broadcast.splat236
  %i.kr = shl <2 x i64> %i.kp, %broadcast.splat
  %i.ks = shl <2 x i64> %i.kq, %broadcast.splat
  %i.kt = or <2 x i64> %i.kr, %i.kn
  %i.ku = or <2 x i64> %i.ks, %i.ko
  %i.kv = and <2 x i64> %wide.load, %broadcast.splat238
  %i.kw = and <2 x i64> %wide.load241, %broadcast.splat238
  %i.kx = lshr <2 x i64> %i.kv, %broadcast.splat
  %i.ky = lshr <2 x i64> %i.kw, %broadcast.splat
  %i.kz = or <2 x i64> %i.kt, %i.kx
  %i.la = or <2 x i64> %i.ku, %i.ky
  store <2 x i64> %i.kz, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %i.la, ptr %i.km, align 8, !tbaa !52
  %index.next242 = add nuw i64 %index240, 4       ; 2 uses
  %i.lb = icmp eq i64 %index.next242, %n.vec232
  br i1 %i.lb, label %middle.block243, label %vector.body239, !llvm.loop !635

middle.block243:                                  ; preds = %vector.body239
  %cmp.n244 = icmp eq i64 %i.ki, %n.vec232
  br i1 %cmp.n244, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %scalar.ph229.preheader

scalar.ph229.preheader:                           ; preds = %.lr.ph.i.i94, %middle.block243
  %.010.i.i97.ph = phi ptr [ %2, %.lr.ph.i.i94 ], [ %i.kk, %middle.block243 ]
  br label %scalar.ph229

scalar.ph229:                                     ; preds = %scalar.ph229.preheader, %scalar.ph229
  %.010.i.i97 = phi ptr [ %i.lk, %scalar.ph229 ], [ %.010.i.i97.ph, %scalar.ph229.preheader ] ; 3 uses
  %i.lc = load i64, ptr %.010.i.i97, align 8, !tbaa !52 ; 3 uses
  %i.ld = and i64 %i.lc, %i.kd
  %i.le = and i64 %i.lc, %i.ke
  %i.lf = shl i64 %i.le, %i.kb
  %i.lg = or i64 %i.lf, %i.ld
  %i.lh = and i64 %i.lc, %i.kf
  %i.li = lshr i64 %i.lh, %i.kb
  %i.lj = or i64 %i.lg, %i.li
  store i64 %i.lj, ptr %.010.i.i97, align 8, !tbaa !52
  %i.lk = getelementptr i8, ptr %.010.i.i97, i64 8 ; 2 uses
  %.not.i.i98 = icmp eq ptr %i.lk, %i.jw
  br i1 %.not.i.i98, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %scalar.ph229, !llvm.loop !636

bb.t:                                             ; preds = %bb.s
  %i.ll = zext i8 %spec.select.i61 to i32         ; 2 uses
  %i.lm = icmp ult i8 %spec.select.i61, 6
  %i.ln = zext i32 %i.jo to i64
  %.idx96.i63 = shl nuw nsw i64 %i.ln, 3
  %i.lo = getelementptr inbounds nuw i8, ptr %2, i64 %.idx96.i63 ; 2 uses
  br i1 %i.lm, label %.preheader.lr.ph.i82, label %.preheader82.lr.ph.i64

.preheader.lr.ph.i82:                             ; preds = %bb.t
  %i.lp = add nsw i32 %i.jp, -6                   ; 3 uses
  %i.lq = shl nuw i32 1, %i.lp                    ; 3 uses
  %i.lr = shl nuw nsw i32 1, %i.ll
  %.not97.i83 = icmp eq i32 %i.lp, 31
  %i.ls = zext nneg i32 %i.lr to i64              ; 3 uses
  %i.lt = sext i32 %i.lq to i64                   ; 3 uses
  %i.lu = shl i32 2, %i.lp
  %i.lv = sext i32 %i.lu to i64                   ; 2 uses
  br i1 %.not97.i83, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %.preheader.lr.ph.split.us.i84

.preheader.lr.ph.split.us.i84:                    ; preds = %.preheader.lr.ph.i82
  %i.lw = zext nneg i8 %spec.select.i61 to i64
  %i.lx = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.lw
  %i.ly = load i64, ptr %i.lx, align 8, !tbaa !52 ; 5 uses
  %i.lz = xor i64 %i.ly, -1                       ; 2 uses
  %smax114.i85 = call i32 @llvm.smax.i32(i32 %i.lq, i32 1)
  %wide.trip.count115.i86 = zext nneg i32 %smax114.i85 to i64 ; 3 uses
  %i.ma = shl nuw nsw i64 %wide.trip.count115.i86, 3 ; 2 uses
  %i.mb = shl nsw i64 %i.lv, 3
  %i.mc = shl nsw i64 %i.lt, 3                    ; 2 uses
  %min.iters.check249 = icmp slt i32 %i.lq, 2
  %i.md = getelementptr i8, ptr %2, i64 %i.mc
  %i.me = getelementptr i8, ptr %i.md, i64 %i.ma
  %i.mf = getelementptr i8, ptr %2, i64 %i.mc
  %i.mg = getelementptr i8, ptr %2, i64 %i.ma
  %n.vec251 = and i64 %wide.trip.count115.i86, 2147483646
  %broadcast.splatinsert252 = insertelement <2 x i64> poison, i64 %i.ly, i64 0
  %broadcast.splat253 = shufflevector <2 x i64> %broadcast.splatinsert252, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert254 = insertelement <2 x i64> poison, i64 %i.ls, i64 0
  %broadcast.splat255 = shufflevector <2 x i64> %broadcast.splatinsert254, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert256 = insertelement <2 x i64> poison, i64 %i.lz, i64 0
  %broadcast.splat257 = shufflevector <2 x i64> %broadcast.splatinsert256, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i87

.preheader.us.i87:                                ; preds = %._crit_edge.us.i92, %.preheader.lr.ph.split.us.i84
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i92 ], [ 0, %.preheader.lr.ph.split.us.i84 ] ; 2 uses
  %.05892.us.i88 = phi ptr [ %i.nf, %._crit_edge.us.i92 ], [ %2, %.preheader.lr.ph.split.us.i84 ] ; 4 uses
  br i1 %min.iters.check249, label %scalar.ph248.preheader, label %vector.memcheck

scalar.ph248.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i87
  br label %scalar.ph248

vector.memcheck:                                  ; preds = %.preheader.us.i87
  %i.mh = mul i64 %i.mb, %indvar                  ; 3 uses
  %scevgep247 = getelementptr i8, ptr %i.me, i64 %i.mh
  %scevgep246 = getelementptr i8, ptr %i.mf, i64 %i.mh
  %scevgep = getelementptr i8, ptr %i.mg, i64 %i.mh
  %bound0 = icmp ult ptr %.05892.us.i88, %scevgep247
  %bound1 = icmp ult ptr %scevgep246, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph248.preheader, label %vector.body258

vector.body258:                                   ; preds = %vector.memcheck, %vector.body258
  %index259 = phi i64 [ %index.next262, %vector.body258 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.mi = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i88, i64 %index259 ; 3 uses
  %wide.load260 = load <2 x i64>, ptr %i.mi, align 8, !tbaa !52, !alias.scope !637, !noalias !640 ; 2 uses
  %i.mj = and <2 x i64> %wide.load260, %broadcast.splat253
  %i.mk = lshr <2 x i64> %i.mj, %broadcast.splat255
  %i.ml = getelementptr inbounds nuw [8 x i8], ptr %i.mi, i64 %i.lt ; 2 uses
  %wide.load261 = load <2 x i64>, ptr %i.ml, align 8, !tbaa !52, !alias.scope !640 ; 2 uses
  %i.mm = shl <2 x i64> %wide.load261, %broadcast.splat255
  %i.mn = and <2 x i64> %i.mm, %broadcast.splat253
  %i.mo = and <2 x i64> %wide.load260, %broadcast.splat257
  %i.mp = or <2 x i64> %i.mn, %i.mo
  store <2 x i64> %i.mp, ptr %i.mi, align 8, !tbaa !52, !alias.scope !637, !noalias !640
  %i.mq = and <2 x i64> %wide.load261, %broadcast.splat253
  %i.mr = or <2 x i64> %i.mq, %i.mk
  store <2 x i64> %i.mr, ptr %i.ml, align 8, !tbaa !52, !alias.scope !640
  %index.next262 = add nuw i64 %index259, 2       ; 2 uses
  %i.ms = icmp eq i64 %index.next262, %n.vec251
  br i1 %i.ms, label %._crit_edge.us.i92, label %vector.body258, !llvm.loop !642

scalar.ph248:                                     ; preds = %scalar.ph248.preheader, %scalar.ph248
  %indvars.iv111.i89 = phi i64 [ %indvars.iv.next112.i90, %scalar.ph248 ], [ 0, %scalar.ph248.preheader ] ; 2 uses
  %i.mt = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i88, i64 %indvars.iv111.i89 ; 3 uses
  %i.mu = load i64, ptr %i.mt, align 8, !tbaa !52 ; 2 uses
  %i.mv = and i64 %i.mu, %i.ly
  %i.mw = lshr i64 %i.mv, %i.ls
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.mt, i64 %i.lt ; 2 uses
  %i.my = load i64, ptr %i.mx, align 8, !tbaa !52 ; 2 uses
  %i.mz = shl i64 %i.my, %i.ls
  %i.na = and i64 %i.mz, %i.ly
  %i.nb = and i64 %i.mu, %i.lz
  %i.nc = or i64 %i.na, %i.nb
  store i64 %i.nc, ptr %i.mt, align 8, !tbaa !52
  %i.nd = and i64 %i.my, %i.ly
  %i.ne = or i64 %i.nd, %i.mw
  store i64 %i.ne, ptr %i.mx, align 8, !tbaa !52
  %indvars.iv.next112.i90 = add nuw nsw i64 %indvars.iv111.i89, 1 ; 2 uses
  %exitcond116.not.i91 = icmp eq i64 %indvars.iv.next112.i90, %wide.trip.count115.i86
  br i1 %exitcond116.not.i91, label %._crit_edge.us.i92, label %scalar.ph248, !llvm.loop !643

._crit_edge.us.i92:                               ; preds = %vector.body258, %scalar.ph248
  %i.nf = getelementptr inbounds [8 x i8], ptr %.05892.us.i88, i64 %i.lv ; 2 uses
  %.not70.us.i93 = icmp eq ptr %i.nf, %i.lo
  %indvar.next = add i64 %indvar, 1
  br i1 %.not70.us.i93, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %.preheader.us.i87, !llvm.loop !623

.preheader82.lr.ph.i64:                           ; preds = %bb.t
  %i.ng = add nsw i32 %i.ll, -6                   ; 3 uses
  %i.nh = shl nuw i32 1, %i.ng                    ; 4 uses
  %i.ni = add nsw i32 %i.jp, -6                   ; 3 uses
  %i.nj = shl nuw i32 1, %i.ni                    ; 2 uses
  %.not94.i65 = icmp eq i32 %i.ni, 31
  %i.nk = sext i32 %i.nh to i64                   ; 5 uses
  %i.nl = sext i32 %i.nj to i64                   ; 7 uses
  %i.nm = shl i32 2, %i.ni
  %i.nn = sext i32 %i.nm to i64                   ; 2 uses
  %.not95.i66 = icmp eq i32 %i.ng, 31
  %or.cond.i67 = select i1 %.not94.i65, i1 true, i1 %.not95.i66
  br i1 %or.cond.i67, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %.preheader82.us.us.preheader.i68

.preheader82.us.us.preheader.i68:                 ; preds = %.preheader82.lr.ph.i64
  %i.no = shl i32 2, %i.ng                        ; 3 uses
  %smax.i69 = call i32 @llvm.smax.i32(i32 %i.nh, i32 1) ; 2 uses
  %i.np = sext i32 %i.no to i64                   ; 6 uses
  %wide.trip.count.i70 = zext nneg i32 %smax.i69 to i64 ; 4 uses
  %i.nq = shl nsw i64 %i.nk, 3                    ; 2 uses
  %i.nr = shl nsw i64 %i.nn, 3
  %smax = call i64 @llvm.smax.i64(i64 %i.np, i64 %i.nl)
  %i.ns = icmp slt i32 %i.no, %i.nj
  %umin = zext i1 %i.ns to i64                    ; 3 uses
  %i.nt = or disjoint i64 %umin, %i.np
  %i.nu = sub i64 %smax, %i.nt                    ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.np, i64 1) ; 2 uses
  %15 = shl nuw nsw i64 %wide.trip.count.i70, 3   ; 2 uses
  %i.nv = shl nsw i64 %i.nl, 3                    ; 2 uses
  %16 = udiv i64 %i.nu, %umax
  %17 = add i64 %16, %umin
  %i.nw = shl i64 %17, 3
  %18 = mul i64 %i.nw, %i.np
  %i.nx = getelementptr i8, ptr %2, i64 %i.nq
  %i.ny = getelementptr i8, ptr %2, i64 %i.nv
  %i.nz = getelementptr i8, ptr %2, i64 %18
  %i.oa = getelementptr i8, ptr %i.nz, i64 %i.nv
  %i.ob = getelementptr i8, ptr %i.oa, i64 %15
  %min.iters.check278 = icmp slt i32 %i.nh, 12
  %i.oc = getelementptr i8, ptr %2, i64 %i.nq
  %invariant.gep = getelementptr i8, ptr %i.oc, i64 %15
  %stride.check = icmp slt i32 %i.no, 0
  %n.vec280 = and i64 %wide.trip.count.i70, 2147483644
  %xtraiter = and i64 %wide.trip.count.i70, 1
  %i.od = icmp slt i32 %i.nh, 2
  %unroll_iter = and i64 %wide.trip.count.i70, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod390 = trunc i32 %smax.i69 to i1
  br label %.preheader82.us.us.i71

.preheader82.us.us.i71:                           ; preds = %._crit_edge86.us.us.i80, %.preheader82.us.us.preheader.i68
  %indvar267 = phi i64 [ %indvar.next268, %._crit_edge86.us.us.i80 ], [ 0, %.preheader82.us.us.preheader.i68 ] ; 2 uses
  %.05688.us.us.i72 = phi ptr [ %i.pd, %._crit_edge86.us.us.i80 ], [ %2, %.preheader82.us.us.preheader.i68 ] ; 2 uses
  %i.oe = mul i64 %i.nr, %indvar267               ; 4 uses
  %scevgep269 = getelementptr i8, ptr %i.nx, i64 %i.oe
  %scevgep270 = getelementptr i8, ptr %i.ny, i64 %i.oe
  %scevgep271 = getelementptr i8, ptr %i.ob, i64 %i.oe
  %scevgep272 = getelementptr i8, ptr %invariant.gep, i64 %i.oe
  %bound1274.a = icmp ult ptr %scevgep269, %scevgep271
  br label %.preheader81.us.us.i73

scalar.ph277:                                     ; preds = %scalar.ph277.preheader, %scalar.ph277
  %indvars.iv.i75 = phi i64 [ %indvars.iv.next.i76.1, %scalar.ph277 ], [ 0, %scalar.ph277.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph277 ], [ 0, %scalar.ph277.preheader ]
  %i.of = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv.i75 ; 2 uses
  %i.og = getelementptr inbounds nuw [8 x i8], ptr %i.of, i64 %i.nk ; 2 uses
  %i.oh = getelementptr inbounds [8 x i8], ptr %i.of, i64 %i.nl ; 2 uses
  %i.oi = load i64, ptr %i.og, align 8, !tbaa !52
  %i.oj = load i64, ptr %i.oh, align 8, !tbaa !52
  store i64 %i.oj, ptr %i.og, align 8, !tbaa !52
  store i64 %i.oi, ptr %i.oh, align 8, !tbaa !52
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv.i75
  %i.ol = getelementptr inbounds nuw i8, ptr %i.ok, i64 8 ; 2 uses
  %i.om = getelementptr inbounds nuw [8 x i8], ptr %i.ol, i64 %i.nk ; 2 uses
  %i.on = getelementptr inbounds [8 x i8], ptr %i.ol, i64 %i.nl ; 2 uses
  %i.oo = load i64, ptr %i.om, align 8, !tbaa !52
  %i.op = load i64, ptr %i.on, align 8, !tbaa !52
  store i64 %i.op, ptr %i.om, align 8, !tbaa !52
  store i64 %i.oo, ptr %i.on, align 8, !tbaa !52
  %indvars.iv.next.i76.1 = add nuw nsw i64 %indvars.iv.i75, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i78.loopexit.unr-lcssa, label %scalar.ph277, !llvm.loop !644

.preheader81.us.us.i73:                           ; preds = %._crit_edge.us.us.i78, %.preheader82.us.us.i71
  %indvars.iv108.i74 = phi i64 [ 0, %.preheader82.us.us.i71 ], [ %indvars.iv.next109.i79, %._crit_edge.us.us.i78 ] ; 2 uses
  %i.oq = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i72, i64 %indvars.iv108.i74 ; 4 uses
  br i1 %min.iters.check278, label %scalar.ph277.preheader, label %scalar.ph277.preheader.a

scalar.ph277.preheader:                           ; preds = %scalar.ph277.preheader.a, %.preheader81.us.us.i73
  br i1 %i.od, label %scalar.ph277.epil.preheader, label %scalar.ph277

scalar.ph277.preheader.a:                         ; preds = %.preheader81.us.us.i73
  %19 = udiv i64 %i.nu, %umax
  %20 = add i64 %19, %umin
  %21 = shl i64 %20, 3
  %22 = mul i64 %21, %i.np
  %gep409 = getelementptr i8, ptr %scevgep272, i64 %22
  %bound1274 = icmp ult ptr %scevgep270, %gep409
  %found.conflict275 = and i1 %bound1274.a, %bound1274
  %23 = or i1 %found.conflict275, %stride.check
  br i1 %23, label %scalar.ph277.preheader, label %vector.body281

vector.body281:                                   ; preds = %scalar.ph277.preheader.a, %vector.body281
  %index282 = phi i64 [ %index.next287, %vector.body281 ], [ 0, %scalar.ph277.preheader.a ] ; 2 uses
  %i.or = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %index282 ; 2 uses
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.or, i64 %i.nk ; 3 uses
  %i.ot = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.nl ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 2 uses
  %wide.load283 = load <2 x i64>, ptr %i.os, align 8, !tbaa !52, !alias.scope !645, !noalias !648
  %wide.load284 = load <2 x i64>, ptr %i.ou, align 8, !tbaa !52, !alias.scope !645, !noalias !648
  %i.ov = getelementptr inbounds nuw i8, ptr %i.ot, i64 16 ; 2 uses
  %wide.load285 = load <2 x i64>, ptr %i.ot, align 8, !tbaa !52, !alias.scope !648
  %wide.load286 = load <2 x i64>, ptr %i.ov, align 8, !tbaa !52, !alias.scope !648
  store <2 x i64> %wide.load285, ptr %i.os, align 8, !tbaa !52, !alias.scope !645, !noalias !648
  store <2 x i64> %wide.load286, ptr %i.ou, align 8, !tbaa !52, !alias.scope !645, !noalias !648
  store <2 x i64> %wide.load283, ptr %i.ot, align 8, !tbaa !52, !alias.scope !648
  store <2 x i64> %wide.load284, ptr %i.ov, align 8, !tbaa !52, !alias.scope !648
  %index.next287 = add nuw i64 %index282, 4       ; 2 uses
  %i.ow = icmp eq i64 %index.next287, %n.vec280
  br i1 %i.ow, label %._crit_edge.us.us.i78, label %vector.body281, !llvm.loop !650

._crit_edge.us.us.i78.loopexit.unr-lcssa:         ; preds = %scalar.ph277
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i78, label %scalar.ph277.epil.preheader

scalar.ph277.epil.preheader:                      ; preds = %._crit_edge.us.us.i78.loopexit.unr-lcssa, %scalar.ph277.preheader
  %indvars.iv.i75.epil.init = phi i64 [ 0, %scalar.ph277.preheader ], [ %indvars.iv.next.i76.1, %._crit_edge.us.us.i78.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod390)
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.oq, i64 %indvars.iv.i75.epil.init ; 2 uses
  %i.oy = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.nk ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.nl ; 2 uses
  %i.pa = load i64, ptr %i.oy, align 8, !tbaa !52
  %i.pb = load i64, ptr %i.oz, align 8, !tbaa !52
  store i64 %i.pb, ptr %i.oy, align 8, !tbaa !52
  store i64 %i.pa, ptr %i.oz, align 8, !tbaa !52
  br label %._crit_edge.us.us.i78

._crit_edge.us.us.i78:                            ; preds = %vector.body281, %scalar.ph277.epil.preheader, %._crit_edge.us.us.i78.loopexit.unr-lcssa
  %indvars.iv.next109.i79 = add nsw i64 %indvars.iv108.i74, %i.np ; 2 uses
  %i.pc = icmp slt i64 %indvars.iv.next109.i79, %i.nl
  br i1 %i.pc, label %.preheader81.us.us.i73, label %._crit_edge86.us.us.i80, !llvm.loop !631

._crit_edge86.us.us.i80:                          ; preds = %._crit_edge.us.us.i78
  %i.pd = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i72, i64 %i.nn ; 2 uses
  %.not.us.us.i81 = icmp eq ptr %i.pd, %i.lo
  %indvar.next268 = add i64 %indvar267, 1
  br i1 %.not.us.us.i81, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, label %.preheader82.us.us.i71, !llvm.loop !632

_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99: ; preds = %._crit_edge86.us.us.i80, %._crit_edge.us.i92, %scalar.ph229, %middle.block243, %.lr.ph.i, %.preheader.lr.ph.i82, %.preheader82.lr.ph.i64
  %indvars.iv.next.i59 = add nuw nsw i64 %indvars.iv.i58, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i59 to i32
  %exitcond.not.i60 = icmp eq i32 %1, %lftr.wideiv.i
  br i1 %exitcond.not.i60, label %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit, label %.lr.ph.i, !llvm.loop !651

_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit: ; preds = %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit99, %bb.r
  %i.pe = load i32, ptr %i.f, align 8, !tbaa !118
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  br label %.lr.ph71.us.preheader.i

_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread: ; preds = %bb.q
  store i32 -1, ptr %0, align 8, !tbaa !114
  br label %.critedge

.critedge:                                        ; preds = %.lr.ph135, %.loopexit, %._crit_edge132, %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread
  %.5 = phi i1 [ false, %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit.thread ], [ true, %._crit_edge132 ], [ true, %.loopexit ], [ true, %.lr.ph135 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.5
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd10acd66_impl21find_decomposition_bsEj(ptr noundef nonnull align 8 dereferenceable(620) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [2 x [4 x i32]], align 16         ; 5 uses
  %i.b = alloca [2 x i32], align 8                ; 6 uses
  %i.c = alloca [4 x i32], align 16               ; 5 uses
  %2 = alloca %"struct.kitty::static_truth_table", align 8 ; 22 uses
  %i.d = alloca [16 x i32], align 16              ; 12 uses
  %i.e = alloca [16 x i32], align 16              ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %2, ptr noundef nonnull align 8 dereferenceable(256) %i.f, i64 256, i1 false), !tbaa.struct !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #12
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 568 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !118  ; 4 uses
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %wide.trip.count = zext i32 %i.h to i64         ; 3 uses
  %min.iters.check = icmp ult i32 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph.preheader228, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %wide.trip.count, 4294967288   ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store <4 x i32> %vec.ind, ptr %i.i, align 16, !tbaa !43
  store <4 x i32> %step.add, ptr %i.j, align 16, !tbaa !43
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <4 x i32> %vec.ind, ptr %i.k, align 16, !tbaa !43
  store <4 x i32> %step.add, ptr %i.l, align 16, !tbaa !43
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.m = icmp eq i64 %index.next, %n.vec
  br i1 %i.m, label %middle.block, label %vector.body, !llvm.loop !652

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader228

.lr.ph.preheader228:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  store i32 %1, ptr %i.n, align 4, !tbaa !116
  %i.o = zext nneg i32 %1 to i64
  %i.p = shl nuw i64 1, %i.o                      ; 2 uses
  %notmask.i = shl nsw i64 -1, %i.p
  %i.q = xor i64 %notmask.i, -1
  %.inv.i = icmp ugt i32 %1, 4
  %i.r = select i1 %.inv.i, i32 2, i32 4
  %.not5063.not.i = icmp ugt i32 %1, 6
  %i.s = lshr i32 64, %1
  %i.t = icmp ult i32 %1, 5
  br label %bb.b

.lr.ph:                                           ; preds = %.lr.ph.preheader228, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader228 ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv
  %i.v = trunc nuw i64 %indvars.iv to i32         ; 2 uses
  store i32 %i.v, ptr %i.u, align 4, !tbaa !43
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv
  store i32 %i.v, ptr %i.w, align 4, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !653

bb.b:                                             ; preds = %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit, %._crit_edge
  %i.x = phi i32 [ %.pre, %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit ], [ %i.h, %._crit_edge ] ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  br i1 %.not5063.not.i, label %_ZN3acd10acd66_impl19column_multiplicityERKN5kitty18static_truth_tableILj11ELb0EEEj.exit.thread, label %.lr.ph68.us.preheader.i

.lr.ph68.us.preheader.i:                          ; preds = %bb.b
  %i.y = icmp ugt i32 %i.x, 6
  %i.z = add i32 %i.x, -6
  %i.aa = shl nuw i32 1, %i.z
  %i.ab = select i1 %i.y, i32 %i.aa, i32 1
  %wide.trip.count79.i = zext i32 %i.ab to i64
  br label %.lr.ph68.us.i

.lr.ph68.us.i:                                    ; preds = %..thread54_crit_edge.us.i, %.lr.ph68.us.preheader.i
  %indvars.iv76.i = phi i64 [ 0, %.lr.ph68.us.preheader.i ], [ %indvars.iv.next77.i, %..thread54_crit_edge.us.i ] ; 2 uses
  %.04070.us.i = phi i32 [ 0, %.lr.ph68.us.preheader.i ], [ %.242.us.i, %..thread54_crit_edge.us.i ]
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv76.i
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !52
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %.lr.ph68.us.i
  %.03566.us.i = phi i32 [ 0, %.lr.ph68.us.i ], [ %i.ap, %bb.f ]
  %.03665.us.i = phi i64 [ %i.ad, %.lr.ph68.us.i ], [ %i.ao, %bb.f ] ; 2 uses
  %.14164.us.i = phi i32 [ %.04070.us.i, %.lr.ph68.us.i ], [ %.242.us.i, %bb.f ] ; 7 uses
  %i.ae = and i64 %.03665.us.i, %i.q
  %i.af = trunc i64 %i.ae to i32                  ; 2 uses
  %.not.i = icmp eq i32 %.14164.us.i, 0
  br i1 %.not.i, label %._crit_edge.us.thread.i, label %.lr.ph.us.preheader.i

.lr.ph.us.preheader.i:                            ; preds = %bb.c
  %wide.trip.count.i = zext i32 %.14164.us.i to i64
  br label %.lr.ph.us.i

.lr.ph.us.i:                                      ; preds = %bb.d, %.lr.ph.us.preheader.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.us.preheader.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !43
  %i.ai = icmp eq i32 %i.ah, %i.af
  br i1 %i.ai, label %._crit_edge.us.split.loop.exit85.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.us.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.us.i, label %.lr.ph.us.i, !llvm.loop !654

._crit_edge.us.split.loop.exit85.i:               ; preds = %.lr.ph.us.i
  %i.aj = trunc nuw i64 %indvars.iv.i to i32
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %bb.d, %._crit_edge.us.split.loop.exit85.i
  %.0.lcssa.us.i = phi i32 [ %i.aj, %._crit_edge.us.split.loop.exit85.i ], [ %.14164.us.i, %bb.d ] ; 2 uses
  %.not.us.i = icmp eq i32 %.0.lcssa.us.i, %i.r
  br i1 %.not.us.i, label %_ZN3acd10acd66_impl19column_multiplicityERKN5kitty18static_truth_tableILj11ELb0EEEj.exit.thread, label %._crit_edge.us.thread.i

._crit_edge.us.thread.i:                          ; preds = %._crit_edge.us.i, %bb.c
  %.0.lcssa.us83.i = phi i32 [ %.0.lcssa.us.i, %._crit_edge.us.i ], [ 0, %bb.c ]
  %i.ak = icmp eq i32 %.0.lcssa.us83.i, %.14164.us.i
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.us.thread.i
  %i.al = add i32 %.14164.us.i, 1
  %i.am = zext i32 %.14164.us.i to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.am
  store i32 %i.af, ptr %i.an, align 4, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.us.thread.i
  %.242.us.i = phi i32 [ %i.al, %bb.e ], [ %.14164.us.i, %._crit_edge.us.thread.i ] ; 4 uses
  %i.ao = lshr i64 %.03665.us.i, %i.p
  %i.ap = add nuw nsw i32 %.03566.us.i, 1         ; 2 uses
  %exitcond75.not.i = icmp eq i32 %i.ap, %i.s
  br i1 %exitcond75.not.i, label %..thread54_crit_edge.us.i, label %bb.c, !llvm.loop !655

..thread54_crit_edge.us.i:                        ; preds = %bb.f
  %indvars.iv.next77.i = add nuw nsw i64 %indvars.iv76.i, 1 ; 2 uses
  %exitcond80.not.i = icmp eq i64 %indvars.iv.next77.i, %wide.trip.count79.i
  br i1 %exitcond80.not.i, label %_ZN3acd10acd66_impl19column_multiplicityERKN5kitty18static_truth_tableILj11ELb0EEEj.exit, label %.lr.ph68.us.i, !llvm.loop !656
end_hunk_3
begin_hunk_4_@_ZN3acd10acd66_impl21find_decomposition_bsEj:bb.a
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.ev = zext i32 %i.et to i64                   ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %i.ex = load i64, ptr %i.eo, align 8, !tbaa !52 ; 2 uses
  %i.ey = load i64, ptr %i.eu, align 8, !tbaa !52 ; 2 uses
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !52 ; 2 uses
  %i.fa = add nsw i64 %.idx.i, -8                 ; 2 uses
  %i.fb = lshr exact i64 %i.fa, 3
  %i.fc = add nuw nsw i64 %i.fb, 1                ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.fa, 24
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph.i.i
  %n.vec154 = and i64 %i.fc, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec154, 3
  %i.fe = getelementptr i8, ptr %2, i64 %i.fd
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.ev, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert155 = insertelement <2 x i64> poison, i64 %i.ex, i64 0
  %broadcast.splat156 = shufflevector <2 x i64> %broadcast.splatinsert155, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert157 = insertelement <2 x i64> poison, i64 %i.ey, i64 0
  %broadcast.splat158 = shufflevector <2 x i64> %broadcast.splatinsert157, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert159 = insertelement <2 x i64> poison, i64 %i.ez, i64 0
  %broadcast.splat160 = shufflevector <2 x i64> %broadcast.splatinsert159, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph153
  %index162 = phi i64 [ 0, %vector.ph153 ], [ %index.next164, %vector.body161 ] ; 2 uses
  %i.ff = shl i64 %index162, 3
  %next.gep = getelementptr i8, ptr %2, i64 %i.ff ; 3 uses
  %i.fg = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %next.gep, align 8, !tbaa !52 ; 3 uses
  %wide.load163 = load <2 x i64>, ptr %i.fg, align 8, !tbaa !52 ; 3 uses
  %i.fh = and <2 x i64> %wide.load, %broadcast.splat156
  %i.fi = and <2 x i64> %wide.load163, %broadcast.splat156
  %i.fj = and <2 x i64> %wide.load, %broadcast.splat158
  %i.fk = and <2 x i64> %wide.load163, %broadcast.splat158
  %i.fl = shl <2 x i64> %i.fj, %broadcast.splat
  %i.fm = shl <2 x i64> %i.fk, %broadcast.splat
  %i.fn = or <2 x i64> %i.fl, %i.fh
  %i.fo = or <2 x i64> %i.fm, %i.fi
  %i.fp = and <2 x i64> %wide.load, %broadcast.splat160
  %i.fq = and <2 x i64> %wide.load163, %broadcast.splat160
  %i.fr = lshr <2 x i64> %i.fp, %broadcast.splat
  %i.fs = lshr <2 x i64> %i.fq, %broadcast.splat
  %i.ft = or <2 x i64> %i.fn, %i.fr
  %i.fu = or <2 x i64> %i.fo, %i.fs
  store <2 x i64> %i.ft, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %i.fu, ptr %i.fg, align 8, !tbaa !52
  %index.next164 = add nuw i64 %index162, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next164, %n.vec154
  br i1 %i.fv, label %middle.block165, label %vector.body161, !llvm.loop !661

middle.block165:                                  ; preds = %vector.body161
  %cmp.n166 = icmp eq i64 %i.fc, %n.vec154
  br i1 %cmp.n166, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %scalar.ph151.preheader

scalar.ph151.preheader:                           ; preds = %.lr.ph.i.i, %middle.block165
  %.010.i.i.ph = phi ptr [ %2, %.lr.ph.i.i ], [ %i.fe, %middle.block165 ]
  br label %scalar.ph151

scalar.ph151:                                     ; preds = %scalar.ph151.preheader, %scalar.ph151
  %.010.i.i = phi ptr [ %i.ge, %scalar.ph151 ], [ %.010.i.i.ph, %scalar.ph151.preheader ] ; 3 uses
  %i.fw = load i64, ptr %.010.i.i, align 8, !tbaa !52 ; 3 uses
  %i.fx = and i64 %i.fw, %i.ex
  %i.fy = and i64 %i.fw, %i.ey
  %i.fz = shl i64 %i.fy, %i.ev
  %i.ga = or i64 %i.fz, %i.fx
  %i.gb = and i64 %i.fw, %i.ez
  %i.gc = lshr i64 %i.gb, %i.ev
  %i.gd = or i64 %i.ga, %i.gc
  store i64 %i.gd, ptr %.010.i.i, align 8, !tbaa !52
  %i.ge = getelementptr i8, ptr %.010.i.i, i64 8  ; 2 uses
  %.not.i.i50 = icmp eq ptr %i.ge, %i.eq
  br i1 %.not.i.i50, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %scalar.ph151, !llvm.loop !662

bb.t:                                             ; preds = %bb.s
  %i.gf = zext i8 %spec.select.i44 to i32         ; 2 uses
  %i.gg = icmp ult i8 %spec.select.i44, 6
  %i.gh = zext i32 %i.ei to i64
  %.idx96.i = shl nuw nsw i64 %i.gh, 3
  %i.gi = getelementptr inbounds nuw i8, ptr %2, i64 %.idx96.i ; 2 uses
  br i1 %i.gg, label %.preheader.lr.ph.i, label %.preheader82.lr.ph.i

.preheader.lr.ph.i:                               ; preds = %bb.t
  %i.gj = add nsw i32 %i.ej, -6                   ; 3 uses
  %i.gk = shl nuw i32 1, %i.gj                    ; 3 uses
  %i.gl = shl nuw nsw i32 1, %i.gf
  %.not97.i = icmp eq i32 %i.gj, 31
  %i.gm = zext nneg i32 %i.gl to i64              ; 3 uses
  %i.gn = sext i32 %i.gk to i64                   ; 3 uses
  %i.go = shl i32 2, %i.gj
  %i.gp = sext i32 %i.go to i64                   ; 2 uses
  br i1 %.not97.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader.lr.ph.split.us.i

.preheader.lr.ph.split.us.i:                      ; preds = %.preheader.lr.ph.i
  %i.gq = zext nneg i8 %spec.select.i44 to i64
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.gq
  %i.gs = load i64, ptr %i.gr, align 8, !tbaa !52 ; 5 uses
  %i.gt = xor i64 %i.gs, -1                       ; 2 uses
  %smax114.i = call i32 @llvm.smax.i32(i32 %i.gk, i32 1)
  %wide.trip.count115.i = zext nneg i32 %smax114.i to i64 ; 3 uses
  %i.gu = shl nuw nsw i64 %wide.trip.count115.i, 3 ; 2 uses
  %i.gv = shl nsw i64 %i.gp, 3
  %i.gw = shl nsw i64 %i.gn, 3                    ; 2 uses
  %min.iters.check171 = icmp slt i32 %i.gk, 2
  %i.gx = getelementptr i8, ptr %2, i64 %i.gw
  %i.gy = getelementptr i8, ptr %i.gx, i64 %i.gu
  %i.gz = getelementptr i8, ptr %2, i64 %i.gw
  %i.ha = getelementptr i8, ptr %2, i64 %i.gu
  %n.vec173 = and i64 %wide.trip.count115.i, 2147483646
  %broadcast.splatinsert174 = insertelement <2 x i64> poison, i64 %i.gs, i64 0
  %broadcast.splat175 = shufflevector <2 x i64> %broadcast.splatinsert174, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert176 = insertelement <2 x i64> poison, i64 %i.gm, i64 0
  %broadcast.splat177 = shufflevector <2 x i64> %broadcast.splatinsert176, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert178 = insertelement <2 x i64> poison, i64 %i.gt, i64 0
  %broadcast.splat179 = shufflevector <2 x i64> %broadcast.splatinsert178, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us.i

.preheader.us.i:                                  ; preds = %._crit_edge.us.i49, %.preheader.lr.ph.split.us.i
  %indvar = phi i64 [ %indvar.next, %._crit_edge.us.i49 ], [ 0, %.preheader.lr.ph.split.us.i ] ; 2 uses
  %.05892.us.i = phi ptr [ %i.hz, %._crit_edge.us.i49 ], [ %2, %.preheader.lr.ph.split.us.i ] ; 4 uses
  br i1 %min.iters.check171, label %scalar.ph170.preheader, label %vector.memcheck

scalar.ph170.preheader:                           ; preds = %vector.memcheck, %.preheader.us.i
  br label %scalar.ph170

vector.memcheck:                                  ; preds = %.preheader.us.i
  %i.hb = mul i64 %i.gv, %indvar                  ; 3 uses
  %scevgep169 = getelementptr i8, ptr %i.gy, i64 %i.hb
  %scevgep168 = getelementptr i8, ptr %i.gz, i64 %i.hb
  %scevgep = getelementptr i8, ptr %i.ha, i64 %i.hb
  %bound0 = icmp ult ptr %.05892.us.i, %scevgep169
  %bound1 = icmp ult ptr %scevgep168, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph170.preheader, label %vector.body180

vector.body180:                                   ; preds = %vector.memcheck, %vector.body180
  %index181 = phi i64 [ %index.next184, %vector.body180 ], [ 0, %vector.memcheck ] ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i, i64 %index181 ; 3 uses
  %wide.load182 = load <2 x i64>, ptr %i.hc, align 8, !tbaa !52, !alias.scope !663, !noalias !666 ; 2 uses
  %i.hd = and <2 x i64> %wide.load182, %broadcast.splat175
  %i.he = lshr <2 x i64> %i.hd, %broadcast.splat177
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %i.gn ; 2 uses
  %wide.load183 = load <2 x i64>, ptr %i.hf, align 8, !tbaa !52, !alias.scope !666 ; 2 uses
  %i.hg = shl <2 x i64> %wide.load183, %broadcast.splat177
  %i.hh = and <2 x i64> %i.hg, %broadcast.splat175
  %i.hi = and <2 x i64> %wide.load182, %broadcast.splat179
  %i.hj = or <2 x i64> %i.hh, %i.hi
  store <2 x i64> %i.hj, ptr %i.hc, align 8, !tbaa !52, !alias.scope !663, !noalias !666
  %i.hk = and <2 x i64> %wide.load183, %broadcast.splat175
  %i.hl = or <2 x i64> %i.hk, %i.he
  store <2 x i64> %i.hl, ptr %i.hf, align 8, !tbaa !52, !alias.scope !666
  %index.next184 = add nuw i64 %index181, 2       ; 2 uses
  %i.hm = icmp eq i64 %index.next184, %n.vec173
  br i1 %i.hm, label %._crit_edge.us.i49, label %vector.body180, !llvm.loop !668

scalar.ph170:                                     ; preds = %scalar.ph170.preheader, %scalar.ph170
  %indvars.iv111.i = phi i64 [ %indvars.iv.next112.i, %scalar.ph170 ], [ 0, %scalar.ph170.preheader ] ; 2 uses
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %.05892.us.i, i64 %indvars.iv111.i ; 3 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !52 ; 2 uses
  %i.hp = and i64 %i.ho, %i.gs
  %i.hq = lshr i64 %i.hp, %i.gm
  %i.hr = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %i.gn ; 2 uses
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !52 ; 2 uses
  %i.ht = shl i64 %i.hs, %i.gm
  %i.hu = and i64 %i.ht, %i.gs
  %i.hv = and i64 %i.ho, %i.gt
  %i.hw = or i64 %i.hu, %i.hv
  store i64 %i.hw, ptr %i.hn, align 8, !tbaa !52
  %i.hx = and i64 %i.hs, %i.gs
  %i.hy = or i64 %i.hx, %i.hq
  store i64 %i.hy, ptr %i.hr, align 8, !tbaa !52
  %indvars.iv.next112.i = add nuw nsw i64 %indvars.iv111.i, 1 ; 2 uses
  %exitcond116.not.i = icmp eq i64 %indvars.iv.next112.i, %wide.trip.count115.i
  br i1 %exitcond116.not.i, label %._crit_edge.us.i49, label %scalar.ph170, !llvm.loop !669

._crit_edge.us.i49:                               ; preds = %vector.body180, %scalar.ph170
  %i.hz = getelementptr inbounds [8 x i8], ptr %.05892.us.i, i64 %i.gp ; 2 uses
  %.not70.us.i = icmp eq ptr %i.hz, %i.gi
  %indvar.next = add i64 %indvar, 1
  br i1 %.not70.us.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader.us.i, !llvm.loop !623

.preheader82.lr.ph.i:                             ; preds = %bb.t
  %i.ia = add nsw i32 %i.gf, -6                   ; 3 uses
  %i.ib = shl nuw i32 1, %i.ia                    ; 4 uses
  %i.ic = add nsw i32 %i.ej, -6                   ; 3 uses
  %i.id = shl nuw i32 1, %i.ic                    ; 2 uses
  %.not94.i = icmp eq i32 %i.ic, 31
  %i.ie = sext i32 %i.ib to i64                   ; 5 uses
  %i.if = sext i32 %i.id to i64                   ; 7 uses
  %i.ig = shl i32 2, %i.ic
  %i.ih = sext i32 %i.ig to i64                   ; 2 uses
  %.not95.i = icmp eq i32 %i.ia, 31
  %or.cond.i = select i1 %.not94.i, i1 true, i1 %.not95.i
  br i1 %or.cond.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader82.us.us.preheader.i

.preheader82.us.us.preheader.i:                   ; preds = %.preheader82.lr.ph.i
  %i.ii = shl i32 2, %i.ia                        ; 3 uses
  %smax.i = call i32 @llvm.smax.i32(i32 %i.ib, i32 1) ; 2 uses
  %i.ij = sext i32 %i.ii to i64                   ; 6 uses
  %wide.trip.count.i45 = zext nneg i32 %smax.i to i64 ; 4 uses
  %i.ik = shl nsw i64 %i.ie, 3                    ; 2 uses
  %i.il = shl nsw i64 %i.ih, 3
  %smax = call i64 @llvm.smax.i64(i64 %i.ij, i64 %i.if)
  %i.im = icmp slt i32 %i.ii, %i.id
  %umin = zext i1 %i.im to i64                    ; 3 uses
  %i.in = or disjoint i64 %umin, %i.ij
  %i.io = sub i64 %smax, %i.in                    ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.ij, i64 1) ; 2 uses
  %3 = shl nuw nsw i64 %wide.trip.count.i45, 3    ; 2 uses
  %i.ip = shl nsw i64 %i.if, 3                    ; 2 uses
  %4 = udiv i64 %i.io, %umax
  %5 = add i64 %4, %umin
  %i.iq = shl i64 %5, 3
  %6 = mul i64 %i.iq, %i.ij
  %i.ir = getelementptr i8, ptr %2, i64 %i.ik
  %i.is = getelementptr i8, ptr %2, i64 %i.ip
  %i.it = getelementptr i8, ptr %2, i64 %6
  %i.iu = getelementptr i8, ptr %i.it, i64 %i.ip
  %i.iv = getelementptr i8, ptr %i.iu, i64 %3
  %min.iters.check200 = icmp slt i32 %i.ib, 12
  %i.iw = getelementptr i8, ptr %2, i64 %i.ik
  %invariant.gep = getelementptr i8, ptr %i.iw, i64 %3
  %stride.check = icmp slt i32 %i.ii, 0
  %n.vec202 = and i64 %wide.trip.count.i45, 2147483644
  %xtraiter = and i64 %wide.trip.count.i45, 1
  %i.ix = icmp slt i32 %i.ib, 2
  %unroll_iter = and i64 %wide.trip.count.i45, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod229 = trunc i32 %smax.i to i1
  br label %.preheader82.us.us.i

.preheader82.us.us.i:                             ; preds = %._crit_edge86.us.us.i, %.preheader82.us.us.preheader.i
  %indvar189 = phi i64 [ %indvar.next190, %._crit_edge86.us.us.i ], [ 0, %.preheader82.us.us.preheader.i ] ; 2 uses
  %.05688.us.us.i = phi ptr [ %i.jx, %._crit_edge86.us.us.i ], [ %2, %.preheader82.us.us.preheader.i ] ; 2 uses
  %i.iy = mul i64 %i.il, %indvar189               ; 4 uses
  %scevgep191 = getelementptr i8, ptr %i.ir, i64 %i.iy
  %scevgep192 = getelementptr i8, ptr %i.is, i64 %i.iy
  %scevgep193 = getelementptr i8, ptr %i.iv, i64 %i.iy
  %scevgep194 = getelementptr i8, ptr %invariant.gep, i64 %i.iy
  %bound1196.a = icmp ult ptr %scevgep191, %scevgep193
  br label %.preheader81.us.us.i

scalar.ph199:                                     ; preds = %scalar.ph199.preheader, %scalar.ph199
  %indvars.iv.i46 = phi i64 [ %indvars.iv.next.i47.1, %scalar.ph199 ], [ 0, %scalar.ph199.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph199 ], [ 0, %scalar.ph199.preheader ]
  %i.iz = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i46 ; 2 uses
  %i.ja = getelementptr inbounds nuw [8 x i8], ptr %i.iz, i64 %i.ie ; 2 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.if ; 2 uses
  %i.jc = load i64, ptr %i.ja, align 8, !tbaa !52
  %i.jd = load i64, ptr %i.jb, align 8, !tbaa !52
  store i64 %i.jd, ptr %i.ja, align 8, !tbaa !52
  store i64 %i.jc, ptr %i.jb, align 8, !tbaa !52
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i46
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8 ; 2 uses
  %i.jg = getelementptr inbounds nuw [8 x i8], ptr %i.jf, i64 %i.ie ; 2 uses
  %i.jh = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.if ; 2 uses
  %i.ji = load i64, ptr %i.jg, align 8, !tbaa !52
  %i.jj = load i64, ptr %i.jh, align 8, !tbaa !52
  store i64 %i.jj, ptr %i.jg, align 8, !tbaa !52
  store i64 %i.ji, ptr %i.jh, align 8, !tbaa !52
  %indvars.iv.next.i47.1 = add nuw nsw i64 %indvars.iv.i46, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.i.loopexit.unr-lcssa, label %scalar.ph199, !llvm.loop !670

.preheader81.us.us.i:                             ; preds = %._crit_edge.us.us.i, %.preheader82.us.us.i
  %indvars.iv108.i = phi i64 [ 0, %.preheader82.us.us.i ], [ %indvars.iv.next109.i, %._crit_edge.us.us.i ] ; 2 uses
  %i.jk = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i, i64 %indvars.iv108.i ; 4 uses
  br i1 %min.iters.check200, label %scalar.ph199.preheader, label %scalar.ph199.preheader.a

scalar.ph199.preheader:                           ; preds = %scalar.ph199.preheader.a, %.preheader81.us.us.i
  br i1 %i.ix, label %scalar.ph199.epil.preheader, label %scalar.ph199

scalar.ph199.preheader.a:                         ; preds = %.preheader81.us.us.i
  %7 = udiv i64 %i.io, %umax
  %8 = add i64 %7, %umin
  %9 = shl i64 %8, 3
  %10 = mul i64 %9, %i.ij
  %gep242 = getelementptr i8, ptr %scevgep194, i64 %10
  %bound1196 = icmp ult ptr %scevgep192, %gep242
  %found.conflict197 = and i1 %bound1196.a, %bound1196
  %11 = or i1 %found.conflict197, %stride.check
  br i1 %11, label %scalar.ph199.preheader, label %vector.body203

vector.body203:                                   ; preds = %scalar.ph199.preheader.a, %vector.body203
  %index204 = phi i64 [ %index.next209, %vector.body203 ], [ 0, %scalar.ph199.preheader.a ] ; 2 uses
  %i.jl = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %index204 ; 2 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %i.jl, i64 %i.ie ; 3 uses
  %i.jn = getelementptr inbounds [8 x i8], ptr %i.jl, i64 %i.if ; 3 uses
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %wide.load205 = load <2 x i64>, ptr %i.jm, align 8, !tbaa !52, !alias.scope !671, !noalias !674
  %wide.load206 = load <2 x i64>, ptr %i.jo, align 8, !tbaa !52, !alias.scope !671, !noalias !674
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jn, i64 16 ; 2 uses
  %wide.load207 = load <2 x i64>, ptr %i.jn, align 8, !tbaa !52, !alias.scope !674
  %wide.load208 = load <2 x i64>, ptr %i.jp, align 8, !tbaa !52, !alias.scope !674
  store <2 x i64> %wide.load207, ptr %i.jm, align 8, !tbaa !52, !alias.scope !671, !noalias !674
  store <2 x i64> %wide.load208, ptr %i.jo, align 8, !tbaa !52, !alias.scope !671, !noalias !674
  store <2 x i64> %wide.load205, ptr %i.jn, align 8, !tbaa !52, !alias.scope !674
  store <2 x i64> %wide.load206, ptr %i.jp, align 8, !tbaa !52, !alias.scope !674
  %index.next209 = add nuw i64 %index204, 4       ; 2 uses
  %i.jq = icmp eq i64 %index.next209, %n.vec202
  br i1 %i.jq, label %._crit_edge.us.us.i, label %vector.body203, !llvm.loop !676

._crit_edge.us.us.i.loopexit.unr-lcssa:           ; preds = %scalar.ph199
  br i1 %lcmp.mod.not, label %._crit_edge.us.us.i, label %scalar.ph199.epil.preheader

scalar.ph199.epil.preheader:                      ; preds = %._crit_edge.us.us.i.loopexit.unr-lcssa, %scalar.ph199.preheader
  %indvars.iv.i46.epil.init = phi i64 [ 0, %scalar.ph199.preheader ], [ %indvars.iv.next.i47.1, %._crit_edge.us.us.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod229)
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %i.jk, i64 %indvars.iv.i46.epil.init ; 2 uses
  %i.js = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.ie ; 2 uses
  %i.jt = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %i.if ; 2 uses
  %i.ju = load i64, ptr %i.js, align 8, !tbaa !52
  %i.jv = load i64, ptr %i.jt, align 8, !tbaa !52
  store i64 %i.jv, ptr %i.js, align 8, !tbaa !52
  store i64 %i.ju, ptr %i.jt, align 8, !tbaa !52
  br label %._crit_edge.us.us.i

._crit_edge.us.us.i:                              ; preds = %vector.body203, %scalar.ph199.epil.preheader, %._crit_edge.us.us.i.loopexit.unr-lcssa
  %indvars.iv.next109.i = add nsw i64 %indvars.iv108.i, %i.ij ; 2 uses
  %i.jw = icmp slt i64 %indvars.iv.next109.i, %i.if
  br i1 %i.jw, label %.preheader81.us.us.i, label %._crit_edge86.us.us.i, !llvm.loop !631

._crit_edge86.us.us.i:                            ; preds = %._crit_edge.us.us.i
  %i.jx = getelementptr inbounds [8 x i8], ptr %.05688.us.us.i, i64 %i.ih ; 2 uses
  %.not.us.us.i = icmp eq ptr %i.jx, %i.gi
  %indvar.next190 = add i64 %indvar189, 1
  br i1 %.not.us.us.i, label %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, label %.preheader82.us.us.i, !llvm.loop !632

_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit: ; preds = %._crit_edge86.us.us.i, %._crit_edge.us.i49, %scalar.ph151, %middle.block165, %.lr.ph.i40, %.preheader.lr.ph.i, %.preheader82.lr.ph.i
  %indvars.iv.next.i42 = add nuw nsw i64 %indvars.iv.i41, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i42 to i32
  %exitcond.not.i43 = icmp eq i32 %1, %lftr.wideiv.i
  br i1 %exitcond.not.i43, label %_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit, label %.lr.ph.i40, !llvm.loop !651

_ZN3acd10acd66_impl17combinations_nextEjjPjS1_RN5kitty18static_truth_tableILj11ELb0EEE.exit: ; preds = %_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh.exit, %bb.r
  %.pre = load i32, ptr %i.g, align 8, !tbaa !118
  br label %bb.b, !llvm.loop !677

.critedge:                                        ; preds = %bb.q, %.lr.ph75, %bb.g, %bb.o
  %.4 = phi i1 [ true, %bb.g ], [ true, %bb.o ], [ true, %.lr.ph75 ], [ false, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #12
  ret i1 %.4
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef i32 @_ZN3acd10acd66_impl22check_shared_set_multiERKN5kitty18static_truth_tableILj11ELb0EEEjPj(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = alloca [6 x i32], align 16               ; 14 uses
  %i.b = alloca [6 x i32], align 16               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.d = load i32, ptr %i.c, align 4, !tbaa !116  ; 2 uses
  %i.e = sub i32 6, %i.d
  %.not38 = icmp ult i32 %2, %i.e
  br i1 %.not38, label %.preheader29.lr.ph, label %_ZSt4sortIPjEvT_S1_.exit

.preheader29.lr.ph:                               ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  br label %.preheader29

.preheader29:                                     ; preds = %.preheader29.lr.ph, %bb.f
  %i.k = phi i32 [ %i.d, %.preheader29.lr.ph ], [ %i.u, %bb.f ]
  %.02539 = phi i32 [ %2, %.preheader29.lr.ph ], [ %i.bg, %bb.f ] ; 11 uses
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.b, align 16, !tbaa !43
  store <4 x i32> <i32 0, i32 1, i32 2, i32 3>, ptr %i.a, align 16, !tbaa !43
  store i32 4, ptr %i.g, align 16, !tbaa !43
  store i32 4, ptr %i.h, align 16, !tbaa !43
  store i32 5, ptr %i.i, align 4, !tbaa !43
  store i32 5, ptr %i.j, align 4, !tbaa !43
  %i.l = call noundef zeroext i1 @_ZN3acd10acd66_impl25check_shared_var_combinedERKN5kitty18static_truth_tableILj11ELb0EEEjPjj(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %i.k, ptr noundef nonnull %i.a, i32 noundef %.02539)
  br i1 %i.l, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %.preheader29, %_ZN3acd10acd66_impl24combinations_next_simpleEjPjS1_j.exit
  %.not42 = icmp eq i32 %.02539, 0
  br i1 %.not42, label %_ZSt4sortIPjEvT_S1_.exit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.m = zext i32 %.02539 to i64
  %i.n = shl nuw nsw i64 %i.m, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %3, ptr nonnull align 16 %i.a, i64 %i.n, i1 false), !tbaa !43
  %i.o = zext i32 %.02539 to i64                  ; 2 uses
  %.idx = shl nuw nsw i64 %i.o, 2
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %.idx ; 2 uses
  %i.q = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = xor i64 %i.r, 126
  call void @_ZSt16__introsort_loopIPjlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %3, ptr noundef nonnull %i.p, i64 noundef %i.s)
  call void @_ZSt22__final_insertion_sortIPjN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %3, ptr noundef nonnull %i.p)
  br label %_ZSt4sortIPjEvT_S1_.exit

.lr.ph:                                           ; preds = %.preheader29, %_ZN3acd10acd66_impl24combinations_next_simpleEjPjS1_j.exit
  %i.t = load i32, ptr %i.f, align 8, !tbaa !118
  %i.u = load i32, ptr %i.c, align 4, !tbaa !116  ; 4 uses
  %i.v = add i32 %.02539, %i.u
  %i.w = sub i32 %i.t, %i.v
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph
  %.038.in.i = phi i32 [ %.02539, %.lr.ph ], [ %.038.i, %bb.d ] ; 3 uses
  %.038.i = add i32 %.038.in.i, -1                ; 4 uses
  %i.x = zext i32 %.038.i to i64                  ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4, !tbaa !43   ; 4 uses
  %i.aa = add i32 %i.w, %.038.i
  %.not.not.not.i.not = icmp eq i32 %i.z, %i.aa
  br i1 %.not.not.not.i.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i32 %.038.i, 0
  br i1 %i.ab, label %bb.f, label %bb.c, !llvm.loop !678

bb.e:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.x
  %i.ad = add i32 %i.z, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !43 ; 2 uses
  %i.ah = zext i32 %i.z to i64
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !43
  store i32 %i.aj, ptr %i.af, align 4, !tbaa !43
  store i32 %i.ag, ptr %i.ai, align 4, !tbaa !43
  %i.ak = zext i32 %i.ag to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ak ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  store i32 %i.am, ptr %i.ac, align 4, !tbaa !43
  store i32 %i.z, ptr %i.al, align 4, !tbaa !43
  %i.an = icmp ult i32 %.038.in.i, %.02539
  br i1 %i.an, label %.lr.ph.preheader.i, label %_ZN3acd10acd66_impl24combinations_next_simpleEjPjS1_j.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.ao = zext i32 %.038.in.i to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.ao, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %.lr.ph.i ] ; 3 uses
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !43 ; 2 uses
  %i.ar = add nuw nsw i64 %indvars.iv.i, 4294967295
  %i.as = and i64 %i.ar, 4294967295
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.as
  %i.au = load i32, ptr %i.at, align 4, !tbaa !43
  %i.av = add i32 %i.au, 1
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.aw ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !43 ; 2 uses
  %i.az = zext i32 %i.aq to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !43
  store i32 %i.bb, ptr %i.ax, align 4, !tbaa !43
  store i32 %i.ay, ptr %i.ba, align 4, !tbaa !43
  %i.bc = zext i32 %i.ay to i64
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !43
  store i32 %i.be, ptr %i.ap, align 4, !tbaa !43
  store i32 %i.aq, ptr %i.bd, align 4, !tbaa !43
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %.02539, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %_ZN3acd10acd66_impl24combinations_next_simpleEjPjS1_j.exit, label %.lr.ph.i, !llvm.loop !679

_ZN3acd10acd66_impl24combinations_next_simpleEjPjS1_j.exit: ; preds = %.lr.ph.i, %bb.e
  %i.bf = call noundef zeroext i1 @_ZN3acd10acd66_impl25check_shared_var_combinedERKN5kitty18static_truth_tableILj11ELb0EEEjPjj(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %i.u, ptr noundef nonnull %i.a, i32 noundef %.02539)
  br i1 %i.bf, label %.preheader, label %.lr.ph

bb.f:                                             ; preds = %bb.d
  %i.bg = add nuw i32 %.02539, 1                  ; 2 uses
  %i.bh = sub i32 6, %i.u
  %.not = icmp ult i32 %i.bg, %i.bh
  br i1 %.not, label %.preheader29, label %_ZSt4sortIPjEvT_S1_.exit, !llvm.loop !680

_ZSt4sortIPjEvT_S1_.exit:                         ; preds = %bb.f, %.preheader, %bb.a, %bb.b
  %spec.select = phi i32 [ %.02539, %bb.b ], [ 0, %.preheader ], [ -1, %bb.a ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %spec.select
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhh(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i8 noundef zeroext %2, i8 noundef zeroext %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = icmp eq i8 %2, %3
  br i1 %i.a, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %spec.select = tail call i8 @llvm.umin.i8(i8 %2, i8 %3) ; 5 uses
  %spec.select79 = tail call i8 @llvm.umax.i8(i8 %2, i8 %3) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.c = load i32, ptr %i.b, align 8, !tbaa !118
  %i.d = add i32 %i.c, -6
  %i.e = shl nuw i32 1, %i.d                      ; 2 uses
  %i.f = zext i8 %spec.select79 to i32            ; 3 uses
  %i.g = icmp ult i8 %spec.select79, 6
  br i1 %i.g, label %.lr.ph.i, label %bb.c

.lr.ph.i:                                         ; preds = %bb.b
  %i.h = zext i8 %spec.select to i64
  %i.i = getelementptr inbounds nuw [144 x i8], ptr @_ZN5kitty6detailL18ppermutation_masksE, i64 %i.h
  %i.j = zext nneg i8 %spec.select79 to i64
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %i.i, i64 %i.j ; 3 uses
  %i.l = zext i32 %i.e to i64
  %.idx = shl nuw nsw i64 %i.l, 3                 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.n = zext nneg i8 %spec.select to i32
  %.neg = shl nsw i32 -1, %i.n
  %i.o = shl nuw nsw i32 1, %i.f
  %i.p = add nsw i32 %.neg, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.r = zext i32 %i.p to i64                     ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.t = load i64, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %i.u = load i64, ptr %i.q, align 8, !tbaa !52   ; 2 uses
  %i.v = load i64, ptr %i.s, align 8, !tbaa !52   ; 2 uses
  %i.w = add nsw i64 %.idx, -8                    ; 2 uses
  %i.x = lshr exact i64 %i.w, 3
  %i.y = add nuw nsw i64 %i.x, 1                  ; 2 uses
  %min.iters.check159 = icmp ult i64 %i.w, 24
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i
  %n.vec161 = and i64 %i.y, 4611686018427387900   ; 3 uses
  %i.z = shl i64 %n.vec161, 3
  %i.aa = getelementptr i8, ptr %1, i64 %i.z
  %broadcast.splatinsert162 = insertelement <2 x i64> poison, i64 %i.r, i64 0
  %broadcast.splat163 = shufflevector <2 x i64> %broadcast.splatinsert162, <2 x i64> poison, <2 x i32> zeroinitializer ; 4 uses
  %broadcast.splatinsert164 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat165 = shufflevector <2 x i64> %broadcast.splatinsert164, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert166 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat167 = shufflevector <2 x i64> %broadcast.splatinsert166, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert168 = insertelement <2 x i64> poison, i64 %i.v, i64 0
  %broadcast.splat169 = shufflevector <2 x i64> %broadcast.splatinsert168, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body170

vector.body170:                                   ; preds = %vector.body170, %vector.ph160
  %index171 = phi i64 [ 0, %vector.ph160 ], [ %index.next174, %vector.body170 ] ; 2 uses
  %i.ab = shl i64 %index171, 3
  %next.gep = getelementptr i8, ptr %1, i64 %i.ab ; 3 uses
  %i.ac = getelementptr i8, ptr %next.gep, i64 16 ; 2 uses
  %wide.load172 = load <2 x i64>, ptr %next.gep, align 8, !tbaa !52 ; 3 uses
  %wide.load173 = load <2 x i64>, ptr %i.ac, align 8, !tbaa !52 ; 3 uses
  %i.ad = and <2 x i64> %broadcast.splat165, %wide.load172
  %i.ae = and <2 x i64> %broadcast.splat165, %wide.load173
  %i.af = and <2 x i64> %broadcast.splat167, %wide.load172
  %i.ag = and <2 x i64> %broadcast.splat167, %wide.load173
  %i.ah = shl <2 x i64> %i.af, %broadcast.splat163
  %i.ai = shl <2 x i64> %i.ag, %broadcast.splat163
  %i.aj = or <2 x i64> %i.ah, %i.ad
  %i.ak = or <2 x i64> %i.ai, %i.ae
  %i.al = and <2 x i64> %broadcast.splat169, %wide.load172
  %i.am = and <2 x i64> %broadcast.splat169, %wide.load173
  %i.an = lshr <2 x i64> %i.al, %broadcast.splat163
  %i.ao = lshr <2 x i64> %i.am, %broadcast.splat163
  %i.ap = or <2 x i64> %i.aj, %i.an
  %i.aq = or <2 x i64> %i.ak, %i.ao
  store <2 x i64> %i.ap, ptr %next.gep, align 8, !tbaa !52
  store <2 x i64> %i.aq, ptr %i.ac, align 8, !tbaa !52
  %index.next174 = add nuw i64 %index171, 4       ; 2 uses
  %i.ar = icmp eq i64 %index.next174, %n.vec161
  br i1 %i.ar, label %middle.block175, label %vector.body170, !llvm.loop !681

middle.block175:                                  ; preds = %vector.body170
  %cmp.n176 = icmp eq i64 %i.y, %n.vec161
  br i1 %cmp.n176, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %.lr.ph.i, %middle.block175
  %.010.i.ph = phi ptr [ %1, %.lr.ph.i ], [ %i.aa, %middle.block175 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %.010.i = phi ptr [ %i.ba, %scalar.ph158 ], [ %.010.i.ph, %scalar.ph158.preheader ] ; 3 uses
  %i.as = load i64, ptr %.010.i, align 8, !tbaa !52 ; 3 uses
  %i.at = and i64 %i.t, %i.as
  %i.au = and i64 %i.u, %i.as
  %i.av = shl i64 %i.au, %i.r
  %i.aw = or i64 %i.av, %i.at
  %i.ax = and i64 %i.v, %i.as
  %i.ay = lshr i64 %i.ax, %i.r
  %i.az = or i64 %i.aw, %i.ay
  store i64 %i.az, ptr %.010.i, align 8, !tbaa !52
  %i.ba = getelementptr i8, ptr %.010.i, i64 8    ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.m
  br i1 %.not.i, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %scalar.ph158, !llvm.loop !682

bb.c:                                             ; preds = %bb.b
  %i.bb = zext i8 %spec.select to i32             ; 2 uses
  %i.bc = icmp ult i8 %spec.select, 6
  %i.bd = zext i32 %i.e to i64
  %.idx96 = shl nuw nsw i64 %i.bd, 3
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.idx96 ; 2 uses
  br i1 %i.bc, label %.preheader.lr.ph, label %.preheader82.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.bf = add nsw i32 %i.f, -6                    ; 3 uses
  %i.bg = shl nuw i32 1, %i.bf                    ; 3 uses
  %i.bh = shl nuw nsw i32 1, %i.bb
  %.not97 = icmp eq i32 %i.bf, 31
  %i.bi = zext nneg i32 %i.bh to i64              ; 3 uses
  %i.bj = sext i32 %i.bg to i64                   ; 3 uses
  %i.bk = shl i32 2, %i.bf
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  br i1 %.not97, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.lr.ph.split.us

.preheader.lr.ph.split.us:                        ; preds = %.preheader.lr.ph
  %i.bm = zext nneg i8 %spec.select to i64
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr @_ZN5kitty6detailL11projectionsE, i64 %i.bm
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !52 ; 5 uses
  %i.bp = xor i64 %i.bo, -1                       ; 2 uses
  %smax114 = tail call i32 @llvm.smax.i32(i32 %i.bg, i32 1)
  %wide.trip.count115 = zext nneg i32 %smax114 to i64 ; 3 uses
  %i.bq = shl nuw nsw i64 %wide.trip.count115, 3  ; 2 uses
  %i.br = shl nsw i64 %i.bl, 3
  %i.bs = shl nsw i64 %i.bj, 3                    ; 2 uses
  %min.iters.check143 = icmp slt i32 %i.bg, 2
  %i.bt = getelementptr i8, ptr %1, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bq
  %i.bv = getelementptr i8, ptr %1, i64 %i.bs
  %i.bw = getelementptr i8, ptr %1, i64 %i.bq
  %n.vec145 = and i64 %wide.trip.count115, 2147483646
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.bo, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 3 uses
  %broadcast.splatinsert146 = insertelement <2 x i64> poison, i64 %i.bi, i64 0
  %broadcast.splat147 = shufflevector <2 x i64> %broadcast.splatinsert146, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert148 = insertelement <2 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat149 = shufflevector <2 x i64> %broadcast.splatinsert148, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %.preheader.us

.preheader.us:                                    ; preds = %._crit_edge.us, %.preheader.lr.ph.split.us
  %indvar134 = phi i64 [ %indvar.next135, %._crit_edge.us ], [ 0, %.preheader.lr.ph.split.us ] ; 2 uses
  %.05892.us = phi ptr [ %i.cv, %._crit_edge.us ], [ %1, %.preheader.lr.ph.split.us ] ; 4 uses
  br i1 %min.iters.check143, label %scalar.ph142.preheader, label %vector.memcheck133

scalar.ph142.preheader:                           ; preds = %vector.memcheck133, %.preheader.us
  br label %scalar.ph142

vector.memcheck133:                               ; preds = %.preheader.us
  %i.bx = mul i64 %i.br, %indvar134               ; 3 uses
  %scevgep138 = getelementptr i8, ptr %i.bu, i64 %i.bx
  %scevgep137 = getelementptr i8, ptr %i.bv, i64 %i.bx
  %scevgep136 = getelementptr i8, ptr %i.bw, i64 %i.bx
  %bound0139 = icmp ult ptr %.05892.us, %scevgep138
  %bound1140 = icmp ult ptr %scevgep137, %scevgep136
  %found.conflict141 = and i1 %bound0139, %bound1140
  br i1 %found.conflict141, label %scalar.ph142.preheader, label %vector.body150

vector.body150:                                   ; preds = %vector.memcheck133, %vector.body150
  %index151 = phi i64 [ %index.next154, %vector.body150 ], [ 0, %vector.memcheck133 ] ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %.05892.us, i64 %index151 ; 3 uses
  %wide.load152 = load <2 x i64>, ptr %i.by, align 8, !tbaa !52, !alias.scope !683, !noalias !686 ; 2 uses
  %i.bz = and <2 x i64> %broadcast.splat, %wide.load152
  %i.ca = lshr <2 x i64> %i.bz, %broadcast.splat147
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bj ; 2 uses
  %wide.load153 = load <2 x i64>, ptr %i.cb, align 8, !tbaa !52, !alias.scope !686 ; 2 uses
  %i.cc = shl <2 x i64> %wide.load153, %broadcast.splat147
  %i.cd = and <2 x i64> %i.cc, %broadcast.splat
  %i.ce = and <2 x i64> %wide.load152, %broadcast.splat149
  %i.cf = or <2 x i64> %i.cd, %i.ce
  store <2 x i64> %i.cf, ptr %i.by, align 8, !tbaa !52, !alias.scope !683, !noalias !686
  %i.cg = and <2 x i64> %wide.load153, %broadcast.splat
  %i.ch = or <2 x i64> %i.cg, %i.ca
  store <2 x i64> %i.ch, ptr %i.cb, align 8, !tbaa !52, !alias.scope !686
  %index.next154 = add nuw i64 %index151, 2       ; 2 uses
  %i.ci = icmp eq i64 %index.next154, %n.vec145
  br i1 %i.ci, label %._crit_edge.us, label %vector.body150, !llvm.loop !688

scalar.ph142:                                     ; preds = %scalar.ph142.preheader, %scalar.ph142
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %scalar.ph142 ], [ 0, %scalar.ph142.preheader ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %.05892.us, i64 %indvars.iv111 ; 3 uses
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !52 ; 2 uses
  %i.cl = and i64 %i.bo, %i.ck
  %i.cm = lshr i64 %i.cl, %i.bi
  %i.cn = getelementptr inbounds [8 x i8], ptr %i.cj, i64 %i.bj ; 2 uses
  %i.co = load i64, ptr %i.cn, align 8, !tbaa !52 ; 2 uses
  %i.cp = shl i64 %i.co, %i.bi
  %i.cq = and i64 %i.cp, %i.bo
  %i.cr = and i64 %i.ck, %i.bp
  %i.cs = or i64 %i.cq, %i.cr
  store i64 %i.cs, ptr %i.cj, align 8, !tbaa !52
  %i.ct = and i64 %i.co, %i.bo
  %i.cu = or i64 %i.ct, %i.cm
  store i64 %i.cu, ptr %i.cn, align 8, !tbaa !52
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %exitcond116.not = icmp eq i64 %indvars.iv.next112, %wide.trip.count115
  br i1 %exitcond116.not, label %._crit_edge.us, label %scalar.ph142, !llvm.loop !689

._crit_edge.us:                                   ; preds = %vector.body150, %scalar.ph142
  %i.cv = getelementptr inbounds [8 x i8], ptr %.05892.us, i64 %i.bl ; 2 uses
  %.not70.us = icmp eq ptr %i.cv, %i.be
  %indvar.next135 = add i64 %indvar134, 1
  br i1 %.not70.us, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader.us, !llvm.loop !623

.preheader82.lr.ph:                               ; preds = %bb.c
  %i.cw = add nsw i32 %i.bb, -6                   ; 3 uses
  %i.cx = shl nuw i32 1, %i.cw                    ; 4 uses
  %i.cy = add nsw i32 %i.f, -6                    ; 3 uses
  %i.cz = shl nuw i32 1, %i.cy                    ; 2 uses
  %.not94 = icmp eq i32 %i.cy, 31
  %i.da = sext i32 %i.cx to i64                   ; 6 uses
  %i.db = sext i32 %i.cz to i64                   ; 8 uses
  %i.dc = shl i32 2, %i.cy
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %.not95 = icmp eq i32 %i.cw, 31
  %or.cond = select i1 %.not94, i1 true, i1 %.not95
  br i1 %or.cond, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader82.us.us.preheader

.preheader82.us.us.preheader:                     ; preds = %.preheader82.lr.ph
  %i.de = shl i32 2, %i.cw                        ; 3 uses
  %smax = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 1) ; 2 uses
  %i.df = sext i32 %i.de to i64                   ; 6 uses
  %wide.trip.count = zext nneg i32 %smax to i64   ; 5 uses
  %i.dg = shl nsw i64 %i.da, 3
  %i.dh = shl nsw i64 %i.dd, 3
  %smax125 = tail call i64 @llvm.smax.i64(i64 %i.df, i64 %i.db)
  %i.di = icmp slt i32 %i.de, %i.cz
  %umin = zext i1 %i.di to i64                    ; 3 uses
  %i.dj = or disjoint i64 %umin, %i.df
  %i.dk = sub i64 %smax125, %i.dj                 ; 2 uses
  %umax = tail call i64 @llvm.umax.i64(i64 %i.df, i64 1) ; 2 uses
  %4 = shl nsw i64 %i.db, 3
  %i.dl = udiv i64 %i.dk, %umax
  %i.dm = add i64 %i.dl, %umin
  %i.dn = mul i64 %i.dm, %i.df
  %5 = add i64 %i.dn, %i.db
  %6 = add i64 %5, %wide.trip.count
  %i.do = shl i64 %6, 3
  %i.dp = getelementptr i8, ptr %1, i64 %i.dg
  %i.dq = getelementptr i8, ptr %1, i64 %4
  %i.dr = getelementptr i8, ptr %1, i64 %i.do
  %min.iters.check = icmp slt i32 %i.cx, 12
  %invariant.op = add i64 %i.da, %wide.trip.count
  %stride.check = icmp slt i32 %i.de, 0
  %n.vec = and i64 %wide.trip.count, 2147483644
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ds = icmp slt i32 %i.cx, 2
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod182 = trunc i32 %smax to i1
  br label %.preheader82.us.us

.preheader82.us.us:                               ; preds = %.preheader82.us.us.preheader, %._crit_edge86.us.us
  %indvar = phi i64 [ 0, %.preheader82.us.us.preheader ], [ %indvar.next, %._crit_edge86.us.us ] ; 2 uses
  %.05688.us.us = phi ptr [ %1, %.preheader82.us.us.preheader ], [ %i.es, %._crit_edge86.us.us ] ; 2 uses
  %i.dt = mul i64 %i.dh, %indvar                  ; 4 uses
  %scevgep = getelementptr i8, ptr %i.dp, i64 %i.dt
  %scevgep126.a = getelementptr i8, ptr %i.dq, i64 %i.dt
  %scevgep127 = getelementptr i8, ptr %i.dr, i64 %i.dt
  %scevgep128 = getelementptr i8, ptr %1, i64 %i.dt
  %bound1.a = icmp ult ptr %scevgep, %scevgep127
  br label %.preheader81.us.us

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ] ; 3 uses
  %niter = phi i64 [ %niter.next.1, %scalar.ph ], [ 0, %scalar.ph.preheader ]
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv ; 2 uses
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.da ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.du, i64 %i.db ; 2 uses
  %i.dx = load i64, ptr %i.dv, align 8, !tbaa !52
  %i.dy = load i64, ptr %i.dw, align 8, !tbaa !52
  store i64 %i.dy, ptr %i.dv, align 8, !tbaa !52
  store i64 %i.dx, ptr %i.dw, align 8, !tbaa !52
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 2 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ea, i64 %i.da ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.ea, i64 %i.db ; 2 uses
  %i.ed = load i64, ptr %i.eb, align 8, !tbaa !52
  %i.ee = load i64, ptr %i.ec, align 8, !tbaa !52
  store i64 %i.ee, ptr %i.eb, align 8, !tbaa !52
  store i64 %i.ed, ptr %i.ec, align 8, !tbaa !52
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.loopexit.unr-lcssa, label %scalar.ph, !llvm.loop !690

.preheader81.us.us:                               ; preds = %.preheader82.us.us, %._crit_edge.us.us
  %indvars.iv108 = phi i64 [ 0, %.preheader82.us.us ], [ %indvars.iv.next109, %._crit_edge.us.us ] ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.05688.us.us, i64 %indvars.iv108 ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %scalar.ph.preheader.a

scalar.ph.preheader:                              ; preds = %scalar.ph.preheader.a, %.preheader81.us.us
  br i1 %i.ds, label %scalar.ph.epil.preheader, label %scalar.ph

scalar.ph.preheader.a:                            ; preds = %.preheader81.us.us
  %7 = udiv i64 %i.dk, %umax
  %8 = add i64 %7, %umin
  %9 = mul i64 %8, %i.df
  %.reass = add i64 %9, %invariant.op
  %10 = shl i64 %.reass, 3
  %scevgep126 = getelementptr i8, ptr %scevgep128, i64 %10
  %bound1 = icmp ult ptr %scevgep126.a, %scevgep126
  %found.conflict = and i1 %bound1.a, %bound1
  %11 = or i1 %found.conflict, %stride.check
  br i1 %11, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %scalar.ph.preheader.a, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %scalar.ph.preheader.a ] ; 2 uses
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %index ; 2 uses
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.da ; 3 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.db ; 3 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.eh, align 8, !tbaa !52, !alias.scope !691, !noalias !694
  %wide.load130 = load <2 x i64>, ptr %i.ej, align 8, !tbaa !52, !alias.scope !691, !noalias !694
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ei, i64 16 ; 2 uses
  %wide.load131 = load <2 x i64>, ptr %i.ei, align 8, !tbaa !52, !alias.scope !694
  %wide.load132 = load <2 x i64>, ptr %i.ek, align 8, !tbaa !52, !alias.scope !694
  store <2 x i64> %wide.load131, ptr %i.eh, align 8, !tbaa !52, !alias.scope !691, !noalias !694
  store <2 x i64> %wide.load132, ptr %i.ej, align 8, !tbaa !52, !alias.scope !691, !noalias !694
  store <2 x i64> %wide.load, ptr %i.ei, align 8, !tbaa !52, !alias.scope !694
  store <2 x i64> %wide.load130, ptr %i.ek, align 8, !tbaa !52, !alias.scope !694
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.el = icmp eq i64 %index.next, %n.vec
  br i1 %i.el, label %._crit_edge.us.us, label %vector.body, !llvm.loop !696

._crit_edge.us.us.loopexit.unr-lcssa:             ; preds = %scalar.ph
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %scalar.ph.epil.preheader

scalar.ph.epil.preheader:                         ; preds = %._crit_edge.us.us.loopexit.unr-lcssa, %scalar.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %scalar.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.us.us.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod182)
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %indvars.iv.epil.init ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.da ; 2 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.em, i64 %i.db ; 2 uses
  %i.ep = load i64, ptr %i.en, align 8, !tbaa !52
  %i.eq = load i64, ptr %i.eo, align 8, !tbaa !52
  store i64 %i.eq, ptr %i.en, align 8, !tbaa !52
  store i64 %i.ep, ptr %i.eo, align 8, !tbaa !52
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %vector.body, %scalar.ph.epil.preheader, %._crit_edge.us.us.loopexit.unr-lcssa
  %indvars.iv.next109 = add nsw i64 %indvars.iv108, %i.df ; 2 uses
  %i.er = icmp slt i64 %indvars.iv.next109, %i.db
  br i1 %i.er, label %.preheader81.us.us, label %._crit_edge86.us.us, !llvm.loop !631

._crit_edge86.us.us:                              ; preds = %._crit_edge.us.us
  %i.es = getelementptr inbounds [8 x i8], ptr %.05688.us.us, i64 %i.dd ; 2 uses
  %.not.us.us = icmp eq ptr %i.es, %i.be
  %indvar.next = add i64 %indvar, 1
  br i1 %.not.us.us, label %_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit, label %.preheader82.us.us, !llvm.loop !632

_ZSt9transformIPmS0_ZN3acd10acd66_impl18swap_inplace_localERN5kitty18static_truth_tableILj11ELb0EEEhhEUlmE_ET0_T_S9_S8_T1_.exit: ; preds = %._crit_edge86.us.us, %._crit_edge.us, %scalar.ph158, %middle.block175, %.preheader82.lr.ph, %.preheader.lr.ph, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3acd10acd66_impl25check_shared_var_combinedERKN5kitty18static_truth_tableILj11ELb0EEEjPjj(ptr noundef nonnull align 8 dereferenceable(620) %0, ptr noundef nonnull align 8 dereferenceable(256) %1, i32 noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [16 x [2 x i32]], align 16        ; 5 uses
  %i.b = alloca [16 x i32], align 16              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.d = load i32, ptr %i.c, align 8, !tbaa !118  ; 2 uses
  %i.e = zext nneg i32 %2 to i64
  %i.f = shl nuw i64 1, %i.e                      ; 3 uses
  %notmask = shl nsw i64 -1, %i.f
  %i.g = xor i64 %notmask, -1                     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, i8 0, i64 64, i1 false)
  %.not5978.not = icmp ugt i32 %2, 6
  br i1 %.not5978.not, label %.critedge, label %.split.us

.split.us:                                        ; preds = %bb.a
  %i.h = lshr i32 64, %2
  %i.i = icmp ugt i32 %i.d, 6
  %i.j = add i32 %i.d, -6
  %i.k = shl nuw i32 1, %i.j
  %i.l = select i1 %i.i, i32 %i.k, i32 1
  %.not = icmp eq i32 %4, 0
  %umax139 = tail call i32 @llvm.umax.i32(i32 %i.h, i32 1) ; 2 uses
  %wide.trip.count144 = zext i32 %i.l to i64      ; 2 uses
  br i1 %.not, label %.lr.ph83.us, label %.lr.ph83.us.us.preheader

.lr.ph83.us.us.preheader:                         ; preds = %.split.us
  %wide.trip.count = zext i32 %4 to i64           ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.m = icmp ult i32 %4, 4
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod177 = icmp ne i64 %xtraiter, 0
  br label %.lr.ph83.us.us

.lr.ph83.us.us:                                   ; preds = %.lr.ph83.us.us.preheader, %..thread63_crit_edge.split.us.us.us
  %indvars.iv129 = phi i64 [ 0, %.lr.ph83.us.us.preheader ], [ %indvars.iv.next130, %..thread63_crit_edge.split.us.us.us ] ; 2 uses
  %.05087.us.us = phi i32 [ 0, %.lr.ph83.us.us.preheader ], [ %i.p, %..thread63_crit_edge.split.us.us.us ] ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv129
  %i.o = load i64, ptr %i.n, align 8, !tbaa !52
  %i.p = add i32 %umax139, %.05087.us.us          ; 2 uses
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %bb.d, %.lr.ph83.us.us
  %.04680.us.us.us = phi i64 [ %i.o, %.lr.ph83.us.us ], [ %i.ba, %bb.d ] ; 2 uses
  %.15179.us.us.us = phi i32 [ %.05087.us.us, %.lr.ph83.us.us ], [ %i.bb, %bb.d ] ; 6 uses
  br i1 %i.m, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ] ; 6 uses
  %.04469.us.us.us = phi i32 [ %i.ar, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.r = load i32, ptr %i.q, align 4, !tbaa !43
  %i.s = lshr i32 %.15179.us.us.us, %i.r
  %i.t = and i32 %i.s, 1
  %i.u = trunc nuw i64 %indvars.iv to i32
  %i.v = shl nuw i32 %i.t, %i.u
  %i.w = or i32 %i.v, %.04469.us.us.us
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !43
  %i.z = lshr i32 %.15179.us.us.us, %i.y
  %i.aa = and i32 %i.z, 1
  %i.ab = trunc nuw i64 %indvars.iv.next to i32
  %i.ac = shl nuw i32 %i.aa, %i.ab
  %i.ad = or i32 %i.ac, %i.w
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.1
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !43
  %i.ag = lshr i32 %.15179.us.us.us, %i.af
  %i.ah = and i32 %i.ag, 1
  %i.ai = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.aj = shl nuw i32 %i.ah, %i.ai
  %i.ak = or i32 %i.aj, %i.ad
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next.2
  %i.am = load i32, ptr %i.al, align 4, !tbaa !43
  %i.an = lshr i32 %.15179.us.us.us, %i.am
  %i.ao = and i32 %i.an, 1
  %i.ap = trunc nuw i64 %indvars.iv.next.2 to i32
  %i.aq = shl nuw i32 %i.ao, %i.ap
  %i.ar = or i32 %i.aq, %i.ak                     ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %..preheader_crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !697

.lr.ph72.us.us.us:                                ; preds = %.lr.ph72.us.us.us.preheader, %bb.b
  %indvars.iv123 = phi i64 [ 0, %.lr.ph72.us.us.us.preheader ], [ %indvars.iv.next124, %bb.b ] ; 3 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %indvars.iv123
  %i.at = load i32, ptr %i.as, align 4, !tbaa !43
  %i.au = icmp eq i32 %i.at, %i.bk
  br i1 %i.au, label %._crit_edge.us.us.us.split.loop.exit160, label %bb.b

bb.b:                                             ; preds = %.lr.ph72.us.us.us
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1 ; 2 uses
  %exitcond127.not = icmp eq i64 %indvars.iv.next124, %wide.trip.count126
  br i1 %exitcond127.not, label %._crit_edge.us.us.us, label %.lr.ph72.us.us.us, !llvm.loop !698

._crit_edge.us.us.us.split.loop.exit160:          ; preds = %.lr.ph72.us.us.us
  %i.av = trunc nuw i64 %indvars.iv123 to i32
  br label %._crit_edge.us.us.us

._crit_edge.us.us.us:                             ; preds = %bb.b, %._crit_edge.us.us.us.split.loop.exit160
  %.0.lcssa.us.us.us = phi i32 [ %i.av, %._crit_edge.us.us.us.split.loop.exit160 ], [ %i.bo, %bb.b ] ; 2 uses
  %.not.us.us.us = icmp eq i32 %.0.lcssa.us.us.us, 2
  br i1 %.not.us.us.us, label %.critedge, label %._crit_edge.us.us.us.thread

._crit_edge.us.us.us.thread:                      ; preds = %..preheader_crit_edge.us.us.us, %._crit_edge.us.us.us
  %.0.lcssa.us.us.us154 = phi i32 [ %.0.lcssa.us.us.us, %._crit_edge.us.us.us ], [ 0, %..preheader_crit_edge.us.us.us ]
  %i.aw = icmp eq i32 %.0.lcssa.us.us.us154, %i.bo
  br i1 %i.aw, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.us.us.us.thread
  %i.ax = add i32 %i.bo, 1
  store i32 %i.ax, ptr %i.bn, align 4, !tbaa !43
  %i.ay = zext i32 %i.bo to i64
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %i.ay
  store i32 %i.bk, ptr %i.az, align 4, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge.us.us.us.thread
  %i.ba = lshr i64 %.04680.us.us.us, %i.f
  %i.bb = add i32 %.15179.us.us.us, 1             ; 2 uses
  %exitcond128.not = icmp eq i32 %i.bb, %i.p
  br i1 %exitcond128.not, label %..thread63_crit_edge.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !699

..preheader_crit_edge.us.us.us.unr-lcssa:         ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod.not, label %..preheader_crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..preheader_crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us.us ], [ %indvars.iv.next.3, %..preheader_crit_edge.us.us.us.unr-lcssa ]
  %.04469.us.us.us.epil.init = phi i32 [ 0, %.lr.ph.us.us.us ], [ %i.ar, %..preheader_crit_edge.us.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod177)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %bb.e ], [ %indvars.iv.epil.init, %.epil.preheader ] ; 3 uses
  %.04469.us.us.us.epil = phi i32 [ %i.bi, %bb.e ], [ %.04469.us.us.us.epil.init, %.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %bb.e ], [ 0, %.epil.preheader ]
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.epil
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !43
  %i.be = lshr i32 %.15179.us.us.us, %i.bd
  %i.bf = and i32 %i.be, 1
  %i.bg = trunc nuw i64 %indvars.iv.epil to i32
  %i.bh = shl nuw i32 %i.bf, %i.bg
  %i.bi = or i32 %i.bh, %.04469.us.us.us.epil     ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %..preheader_crit_edge.us.us.us, label %bb.e, !llvm.loop !700

..preheader_crit_edge.us.us.us:                   ; preds = %bb.e, %..preheader_crit_edge.us.us.us.unr-lcssa
  %.lcssa174 = phi i32 [ %i.ar, %..preheader_crit_edge.us.us.us.unr-lcssa ], [ %i.bi, %bb.e ]
  %i.bj = and i64 %.04680.us.us.us, %i.g
  %i.bk = trunc i64 %i.bj to i32                  ; 2 uses
  %i.bl = zext i32 %.lcssa174 to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.bl ; 2 uses
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.bl ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !43 ; 6 uses
  %.not114 = icmp eq i32 %i.bo, 0
  br i1 %.not114, label %._crit_edge.us.us.us.thread, label %.lr.ph72.us.us.us.preheader

.lr.ph72.us.us.us.preheader:                      ; preds = %..preheader_crit_edge.us.us.us
  %wide.trip.count126 = zext i32 %i.bo to i64
  br label %.lr.ph72.us.us.us

..thread63_crit_edge.split.us.us.us:              ; preds = %bb.d
  %indvars.iv.next130 = add nuw nsw i64 %indvars.iv129, 1 ; 2 uses
  %exitcond133.not = icmp eq i64 %indvars.iv.next130, %wide.trip.count144
  br i1 %exitcond133.not, label %.critedge, label %.lr.ph83.us.us, !llvm.loop !701

end_hunk_4
