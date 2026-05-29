inline.NumInlined: 158
inline.NumDeleted: 40
begin_hunk_0_@opj_v8dwt_decode:bb.a

.lr.ph.i71:                                       ; preds = %bb.t, %.lr.ph.i71
  %.04550.i72 = phi i32 [ %i.ic, %.lr.ph.i71 ], [ %.0.i68, %bb.t ]
  %.149.i73 = phi ptr [ %i.ib, %.lr.ph.i71 ], [ %.046.i67, %bb.t ] ; 7 uses
  %i.hk = getelementptr inbounds i8, ptr %.149.i73, i64 -32 ; 2 uses
  %i.hl = load <4 x float>, ptr %i.hk, align 16, !tbaa !62
  %i.hm = getelementptr inbounds i8, ptr %.149.i73, i64 -64
  %i.hn = load <4 x float>, ptr %i.hm, align 16, !tbaa !62
  %i.ho = load <4 x float>, ptr %.149.i73, align 16, !tbaa !62
  %i.hp = fadd <4 x float> %i.hn, %i.ho
  %i.hq = fmul <4 x float> %i.hp, splat (float f0x3D5901AE)
  %i.hr = fadd <4 x float> %i.hl, %i.hq
  store <4 x float> %i.hr, ptr %i.hk, align 16, !tbaa !62
  %i.hs = getelementptr inbounds i8, ptr %.149.i73, i64 -16 ; 2 uses
  %i.ht = load <4 x float>, ptr %i.hs, align 16, !tbaa !62
  %i.hu = getelementptr inbounds i8, ptr %.149.i73, i64 -48
  %i.hv = load <4 x float>, ptr %i.hu, align 16, !tbaa !62
  %i.hw = getelementptr inbounds nuw i8, ptr %.149.i73, i64 16
  %i.hx = load <4 x float>, ptr %i.hw, align 16, !tbaa !62
  %i.hy = fadd <4 x float> %i.hv, %i.hx
  %i.hz = fmul <4 x float> %i.hy, splat (float f0x3D5901AE)
  %i.ia = fadd <4 x float> %i.ht, %i.hz
  store <4 x float> %i.ia, ptr %i.hs, align 16, !tbaa !62
  %i.ib = getelementptr inbounds nuw i8, ptr %.149.i73, i64 64 ; 2 uses
  %i.ic = add nuw i32 %.04550.i72, 1              ; 2 uses
  %exitcond.not.i74 = icmp eq i32 %i.ic, %i.cj
  br i1 %exitcond.not.i74, label %._crit_edge.i69, label %.lr.ph.i71, !llvm.loop !398

._crit_edge.i69:                                  ; preds = %.lr.ph.i71, %bb.t
  %.1.lcssa.i70 = phi ptr [ %.046.i67, %bb.t ], [ %i.ib, %.lr.ph.i71 ] ; 4 uses
  br i1 %i.dy, label %bb.u, label %opj_v8dwt_decode_step2_sse.exit76

bb.u:                                             ; preds = %._crit_edge.i69
  %i.id = getelementptr inbounds i8, ptr %.1.lcssa.i70, i64 -32 ; 2 uses
  %i.ie = load <4 x float>, ptr %i.id, align 16, !tbaa !62
  %i.if = getelementptr inbounds i8, ptr %.1.lcssa.i70, i64 -64
  %i.ig = load <4 x float>, ptr %i.if, align 16, !tbaa !62
  %i.ih = fmul <4 x float> %i.ig, splat (float f0x3DD901AE)
  %i.ii = fadd <4 x float> %i.ie, %i.ih
  store <4 x float> %i.ii, ptr %i.id, align 16, !tbaa !62
  %i.ij = getelementptr inbounds i8, ptr %.1.lcssa.i70, i64 -16 ; 2 uses
  %i.ik = load <4 x float>, ptr %i.ij, align 16, !tbaa !62
  %i.il = getelementptr inbounds i8, ptr %.1.lcssa.i70, i64 -48
  %i.im = load <4 x float>, ptr %i.il, align 16, !tbaa !62
  %i.in = fmul <4 x float> %i.im, splat (float f0x3DD901AE)
  %i.io = fadd <4 x float> %i.ik, %i.in
  store <4 x float> %i.io, ptr %i.ij, align 16, !tbaa !62
  br label %opj_v8dwt_decode_step2_sse.exit76

opj_v8dwt_decode_step2_sse.exit76:                ; preds = %._crit_edge.i69, %bb.u
  br i1 %i.ep, label %bb.v, label %bb.x

bb.v:                                             ; preds = %opj_v8dwt_decode_step2_sse.exit76
  %.not.i85 = icmp eq i32 %i.eo, 0
  br i1 %.not.i85, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ip = load <4 x float>, ptr %i.ax, align 16, !tbaa !62
  %i.iq = load <4 x float>, ptr %i.r, align 16, !tbaa !62
  %i.ir = load <4 x float>, ptr %i.el, align 16, !tbaa !62
  %i.is = fadd <4 x float> %i.iq, %i.ir
  %i.it = fmul <4 x float> %i.is, splat (float f0x3FCB0673)
  %i.iu = fadd <4 x float> %i.ip, %i.it
  store <4 x float> %i.iu, ptr %i.ax, align 16, !tbaa !62
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %i.iw = load <4 x float>, ptr %i.iv, align 16, !tbaa !62
  %i.ix = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.iy = load <4 x float>, ptr %i.ix, align 16, !tbaa !62
  %i.iz = getelementptr inbounds nuw i8, ptr %i.ax, i64 48
  %i.ja = load <4 x float>, ptr %i.iz, align 16, !tbaa !62
  %i.jb = fadd <4 x float> %i.iy, %i.ja
  %i.jc = fmul <4 x float> %i.jb, splat (float f0x3FCB0673)
  %i.jd = fadd <4 x float> %i.iw, %i.jc
  store <4 x float> %i.jd, ptr %i.iv, align 16, !tbaa !62
  %i.je = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  br label %bb.y

bb.x:                                             ; preds = %opj_v8dwt_decode_step2_sse.exit76
  %i.jf = shl i32 %i.az, 2
  %i.jg = zext i32 %i.jf to i64
  %i.jh = getelementptr inbounds nuw [16 x i8], ptr %i.el, i64 %i.jg
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  %.046.i77 = phi ptr [ %i.je, %bb.w ], [ %i.el, %bb.v ], [ %i.jh, %bb.x ] ; 2 uses
  %.0.i78 = phi i32 [ 1, %bb.w ], [ 0, %bb.v ], [ %i.az, %bb.x ] ; 2 uses
  %i.ji = icmp ult i32 %.0.i78, %i.eo
  br i1 %i.ji, label %.lr.ph.i81, label %._crit_edge.i79

.lr.ph.i81:                                       ; preds = %bb.y, %.lr.ph.i81
  %.04550.i82 = phi i32 [ %i.kb, %.lr.ph.i81 ], [ %.0.i78, %bb.y ]
  %.149.i83 = phi ptr [ %i.ka, %.lr.ph.i81 ], [ %.046.i77, %bb.y ] ; 7 uses
  %i.jj = getelementptr inbounds i8, ptr %.149.i83, i64 -32 ; 2 uses
  %i.jk = load <4 x float>, ptr %i.jj, align 16, !tbaa !62
  %i.jl = getelementptr inbounds i8, ptr %.149.i83, i64 -64
  %i.jm = load <4 x float>, ptr %i.jl, align 16, !tbaa !62
  %i.jn = load <4 x float>, ptr %.149.i83, align 16, !tbaa !62
  %i.jo = fadd <4 x float> %i.jm, %i.jn
  %i.jp = fmul <4 x float> %i.jo, splat (float f0x3FCB0673)
  %i.jq = fadd <4 x float> %i.jk, %i.jp
  store <4 x float> %i.jq, ptr %i.jj, align 16, !tbaa !62
  %i.jr = getelementptr inbounds i8, ptr %.149.i83, i64 -16 ; 2 uses
  %i.js = load <4 x float>, ptr %i.jr, align 16, !tbaa !62
  %i.jt = getelementptr inbounds i8, ptr %.149.i83, i64 -48
  %i.ju = load <4 x float>, ptr %i.jt, align 16, !tbaa !62
  %i.jv = getelementptr inbounds nuw i8, ptr %.149.i83, i64 16
  %i.jw = load <4 x float>, ptr %i.jv, align 16, !tbaa !62
  %i.jx = fadd <4 x float> %i.ju, %i.jw
  %i.jy = fmul <4 x float> %i.jx, splat (float f0x3FCB0673)
  %i.jz = fadd <4 x float> %i.js, %i.jy
  store <4 x float> %i.jz, ptr %i.jr, align 16, !tbaa !62
  %i.ka = getelementptr inbounds nuw i8, ptr %.149.i83, i64 64 ; 2 uses
  %i.kb = add nuw i32 %.04550.i82, 1              ; 2 uses
  %exitcond.not.i84 = icmp eq i32 %i.kb, %i.eo
  br i1 %exitcond.not.i84, label %._crit_edge.i79, label %.lr.ph.i81, !llvm.loop !398

._crit_edge.i79:                                  ; preds = %.lr.ph.i81, %bb.y
  %.1.lcssa.i80 = phi ptr [ %.046.i77, %bb.y ], [ %i.ka, %.lr.ph.i81 ] ; 4 uses
  br i1 %i.gd, label %bb.z, label %opj_v8dwt_decode_step2_sse.exit86

bb.z:                                             ; preds = %._crit_edge.i79
  %i.kc = getelementptr inbounds i8, ptr %.1.lcssa.i80, i64 -32 ; 2 uses
  %i.kd = load <4 x float>, ptr %i.kc, align 16, !tbaa !62
  %i.ke = getelementptr inbounds i8, ptr %.1.lcssa.i80, i64 -64
  %i.kf = load <4 x float>, ptr %i.ke, align 16, !tbaa !62
  %i.kg = fmul <4 x float> %i.kf, splat (float f0x404B0673)
  %i.kh = fadd <4 x float> %i.kd, %i.kg
  store <4 x float> %i.kh, ptr %i.kc, align 16, !tbaa !62
  %i.ki = getelementptr inbounds i8, ptr %.1.lcssa.i80, i64 -16 ; 2 uses
  %i.kj = load <4 x float>, ptr %i.ki, align 16, !tbaa !62
  %i.kk = getelementptr inbounds i8, ptr %.1.lcssa.i80, i64 -48
  %i.kl = load <4 x float>, ptr %i.kk, align 16, !tbaa !62
  %i.km = fmul <4 x float> %i.kl, splat (float f0x404B0673)
  %i.kn = fadd <4 x float> %i.kj, %i.km
  store <4 x float> %i.kn, ptr %i.ki, align 16, !tbaa !62
  br label %opj_v8dwt_decode_step2_sse.exit86

opj_v8dwt_decode_step2_sse.exit86:                ; preds = %bb.z, %._crit_edge.i79, %bb.e, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt97_decode_h_func(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !283
  %.not69 = icmp ult i32 %i.c, 8
  br i1 %.not69, label %._crit_edge73, label %.lr.ph72

.lr.ph72:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !282  ; 8 uses
  %i.f = load i32, ptr %i.a, align 4, !tbaa !281  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = zext i32 %i.f to i64                     ; 9 uses
  %.idx64 = shl nuw nsw i64 %i.h, 3               ; 2 uses
  %.idx65 = mul nuw nsw i64 %i.h, 12              ; 2 uses
  %.idx = shl nuw nsw i64 %i.h, 4                 ; 2 uses
  %.idx61 = mul nuw nsw i64 %i.h, 20              ; 2 uses
  %.idx62 = mul nuw nsw i64 %i.h, 24              ; 2 uses
  %.idx63 = mul nuw nsw i64 %i.h, 28              ; 2 uses
  %i.i = shl i32 %i.f, 3
  %i.j = zext i32 %i.i to i64                     ; 3 uses
  %i.k = shl nuw nsw i64 %i.j, 2
  %i.l = shl nuw nsw i64 %i.h, 2
  %i.m = shl nuw nsw i64 %i.j, 2
  %i.n = getelementptr i8, ptr %i.e, i64 %i.l
  %i.o = getelementptr i8, ptr %i.e, i64 %.idx64
  %i.p = getelementptr i8, ptr %i.e, i64 %.idx65
  %i.q = getelementptr i8, ptr %i.e, i64 %.idx
  %i.r = getelementptr i8, ptr %i.e, i64 %.idx61
  %i.s = getelementptr i8, ptr %i.e, i64 %.idx62
  %i.t = getelementptr i8, ptr %i.e, i64 %.idx63
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph72, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph72 ], [ %indvar.next, %._crit_edge ] ; 3 uses
  %i.u = phi i32 [ 8, %.lr.ph72 ], [ %i.fy, %._crit_edge ]
  %.05970 = phi ptr [ %i.e, %.lr.ph72 ], [ %i.fx, %._crit_edge ] ; 15 uses
  %i.v = mul i64 %i.m, %indvar                    ; 3 uses
  %scevgep129 = getelementptr i8, ptr %i.n, i64 %i.v ; 5 uses
  %scevgep131 = getelementptr i8, ptr %i.o, i64 %i.v ; 5 uses
  %scevgep133 = getelementptr i8, ptr %i.p, i64 %i.v ; 5 uses
  %i.w = mul i64 %i.k, %indvar                    ; 4 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 %i.w ; 5 uses
  %scevgep84 = getelementptr i8, ptr %i.r, i64 %i.w ; 5 uses
  %scevgep86 = getelementptr i8, ptr %i.s, i64 %i.w ; 5 uses
  %scevgep88 = getelementptr i8, ptr %i.t, i64 %i.w ; 5 uses
  %i.x = load i32, ptr %i.a, align 4, !tbaa !281
  tail call fastcc void @opj_v8dwt_interleave_h(ptr noundef nonnull %0, ptr noundef %.05970, i32 noundef %i.x, i32 noundef 8)
  tail call fastcc void @opj_v8dwt_decode(ptr noundef nonnull %0)
  %i.y = load i32, ptr %i.g, align 8, !tbaa !280  ; 5 uses
  %.not74 = icmp eq i32 %i.y, 0
  br i1 %.not74, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.z = load ptr, ptr %0, align 8, !tbaa !270    ; 10 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx64 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx65 ; 2 uses
  %wide.trip.count = zext i32 %i.y to i64         ; 7 uses
  %min.iters.check177 = icmp ult i32 %i.y, 21
  br i1 %min.iters.check177, label %scalar.ph176.preheader, label %vector.memcheck127

scalar.ph176.preheader:                           ; preds = %vector.body181, %vector.memcheck127, %.lr.ph
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck127 ], [ 0, %.lr.ph ], [ %n.vec180, %vector.body181 ]
  br label %scalar.ph176

vector.memcheck127:                               ; preds = %.lr.ph
  %i.ac = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep128 = getelementptr i8, ptr %.05970, i64 %i.ac ; 4 uses
  %scevgep130 = getelementptr i8, ptr %scevgep129, i64 %i.ac ; 4 uses
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.ac ; 4 uses
  %scevgep134 = getelementptr i8, ptr %scevgep133, i64 %i.ac ; 4 uses
  %scevgep135 = getelementptr i8, ptr %i.z, i64 -16
  %i.ad = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.ad ; 4 uses
  %bound0137 = icmp ult ptr %.05970, %scevgep130
  %bound1138 = icmp ult ptr %scevgep129, %scevgep128
  %found.conflict139 = and i1 %bound0137, %bound1138
  %bound0140 = icmp ult ptr %.05970, %scevgep132
  %bound1141 = icmp ult ptr %scevgep131, %scevgep128
  %found.conflict142 = and i1 %bound0140, %bound1141
  %conflict.rdx143 = or i1 %found.conflict139, %found.conflict142
  %bound0144 = icmp ult ptr %.05970, %scevgep134
  %bound1145 = icmp ult ptr %scevgep133, %scevgep128
  %found.conflict146 = and i1 %bound0144, %bound1145
  %conflict.rdx147 = or i1 %conflict.rdx143, %found.conflict146
  %bound0148 = icmp ult ptr %.05970, %scevgep136
  %bound1149 = icmp ult ptr %i.z, %scevgep128
  %found.conflict150 = and i1 %bound0148, %bound1149
  %conflict.rdx151 = or i1 %conflict.rdx147, %found.conflict150
  %bound0152 = icmp ult ptr %scevgep129, %scevgep132
  %bound1153 = icmp ult ptr %scevgep131, %scevgep130
  %found.conflict154 = and i1 %bound0152, %bound1153
  %conflict.rdx155 = or i1 %conflict.rdx151, %found.conflict154
  %bound0156 = icmp ult ptr %scevgep129, %scevgep134
  %bound1157 = icmp ult ptr %scevgep133, %scevgep130
  %found.conflict158 = and i1 %bound0156, %bound1157
  %conflict.rdx159 = or i1 %conflict.rdx155, %found.conflict158
  %bound0160 = icmp ult ptr %scevgep129, %scevgep136
  %bound1161 = icmp ult ptr %i.z, %scevgep130
  %found.conflict162 = and i1 %bound0160, %bound1161
  %conflict.rdx163 = or i1 %conflict.rdx159, %found.conflict162
  %bound0164 = icmp ult ptr %scevgep131, %scevgep134
  %bound1165 = icmp ult ptr %scevgep133, %scevgep132
  %found.conflict166 = and i1 %bound0164, %bound1165
  %conflict.rdx167 = or i1 %conflict.rdx163, %found.conflict166
  %bound0168 = icmp ult ptr %scevgep131, %scevgep136
  %bound1169 = icmp ult ptr %i.z, %scevgep132
  %found.conflict170 = and i1 %bound0168, %bound1169
  %conflict.rdx171 = or i1 %conflict.rdx167, %found.conflict170
  %bound0172 = icmp ult ptr %scevgep133, %scevgep136
  %bound1173 = icmp ult ptr %i.z, %scevgep134
  %found.conflict174 = and i1 %bound0172, %bound1173
  %conflict.rdx175 = or i1 %conflict.rdx171, %found.conflict174
  br i1 %conflict.rdx175, label %scalar.ph176.preheader, label %vector.ph178

vector.ph178:                                     ; preds = %vector.memcheck127
  %n.mod.vf179 = and i64 %wide.trip.count, 3      ; 2 uses
  %i.ae = icmp eq i64 %n.mod.vf179, 0
  %i.af = select i1 %i.ae, i64 4, i64 %n.mod.vf179
  %n.vec180 = sub nsw i64 %wide.trip.count, %i.af ; 2 uses
  br label %vector.body181

vector.body181:                                   ; preds = %vector.body181, %vector.ph178
  %index182 = phi i64 [ 0, %vector.ph178 ], [ %index.next183, %vector.body181 ] ; 8 uses
  %i.ag = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %index182 ; 4 uses
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %index182 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %index182 ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 64
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %index182 ; 4 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 96
  %i.an = load float, ptr %i.ag, align 4, !tbaa !62, !alias.scope !399
  %i.ao = load float, ptr %i.ai, align 4, !tbaa !62, !alias.scope !399
  %i.ap = load float, ptr %i.ak, align 4, !tbaa !62, !alias.scope !399
  %i.aq = load float, ptr %i.am, align 4, !tbaa !62, !alias.scope !399
  %i.ar = insertelement <4 x float> poison, float %i.an, i64 0
  %i.as = insertelement <4 x float> %i.ar, float %i.ao, i64 1
  %i.at = insertelement <4 x float> %i.as, float %i.ap, i64 2
  %i.au = insertelement <4 x float> %i.at, float %i.aq, i64 3
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.05970, i64 %index182 ; 2 uses
  store <4 x float> %i.au, ptr %i.av, align 4, !tbaa !180, !alias.scope !402, !noalias !404
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ah, i64 36
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aj, i64 68
  %i.az = getelementptr inbounds nuw i8, ptr %i.al, i64 100
  %i.ba = load float, ptr %i.aw, align 4, !tbaa !62, !alias.scope !399
  %i.bb = load float, ptr %i.ax, align 4, !tbaa !62, !alias.scope !399
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !62, !alias.scope !399
  %i.bd = load float, ptr %i.az, align 4, !tbaa !62, !alias.scope !399
  %i.be = insertelement <4 x float> poison, float %i.ba, i64 0
  %i.bf = insertelement <4 x float> %i.be, float %i.bb, i64 1
  %i.bg = insertelement <4 x float> %i.bf, float %i.bc, i64 2
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 3
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.h
  store <4 x float> %i.bh, ptr %i.bi, align 4, !tbaa !180, !alias.scope !408, !noalias !409
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aj, i64 72
  %i.bm = getelementptr inbounds nuw i8, ptr %i.al, i64 104
  %i.bn = load float, ptr %i.bj, align 4, !tbaa !62, !alias.scope !399
  %i.bo = load float, ptr %i.bk, align 4, !tbaa !62, !alias.scope !399
  %i.bp = load float, ptr %i.bl, align 4, !tbaa !62, !alias.scope !399
  %i.bq = load float, ptr %i.bm, align 4, !tbaa !62, !alias.scope !399
  %i.br = insertelement <4 x float> poison, float %i.bn, i64 0
  %i.bs = insertelement <4 x float> %i.br, float %i.bo, i64 1
  %i.bt = insertelement <4 x float> %i.bs, float %i.bp, i64 2
  %i.bu = insertelement <4 x float> %i.bt, float %i.bq, i64 3
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index182
  store <4 x float> %i.bu, ptr %i.bv, align 4, !tbaa !180, !alias.scope !410, !noalias !411
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ah, i64 44
  %i.by = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  %i.bz = getelementptr inbounds nuw i8, ptr %i.al, i64 108
  %i.ca = load float, ptr %i.bw, align 4, !tbaa !62, !alias.scope !399
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !62, !alias.scope !399
  %i.cc = load float, ptr %i.by, align 4, !tbaa !62, !alias.scope !399
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !62, !alias.scope !399
  %i.ce = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cf = insertelement <4 x float> %i.ce, float %i.cb, i64 1
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 2
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 3
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %index182
  store <4 x float> %i.ch, ptr %i.ci, align 4, !tbaa !180, !alias.scope !412, !noalias !399
  %index.next183 = add nuw i64 %index182, 4       ; 2 uses
  %i.cj = icmp eq i64 %index.next183, %n.vec180
  br i1 %i.cj, label %scalar.ph176.preheader, label %vector.body181, !llvm.loop !413

.lr.ph68:                                         ; preds = %scalar.ph176
  %i.ck = load ptr, ptr %0, align 8, !tbaa !270   ; 7 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx61 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx62 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.05970, i64 %.idx63 ; 2 uses
  %wide.trip.count80 = zext i32 %i.y to i64       ; 3 uses
  %min.iters.check = icmp ult i32 %i.y, 21
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %.lr.ph68
  %indvars.iv77.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph68 ], [ %n.vec, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %.lr.ph68
  %i.cp = shl nuw nsw i64 %wide.trip.count, 2     ; 4 uses
  %scevgep83 = getelementptr i8, ptr %scevgep, i64 %i.cp ; 4 uses
  %scevgep85 = getelementptr i8, ptr %scevgep84, i64 %i.cp ; 4 uses
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.cp ; 4 uses
  %scevgep89 = getelementptr i8, ptr %scevgep88, i64 %i.cp ; 4 uses
  %scevgep90 = getelementptr nuw i8, ptr %i.ck, i64 16 ; 4 uses
  %i.cq = shl nuw nsw i64 %wide.trip.count, 5
  %scevgep91 = getelementptr i8, ptr %i.ck, i64 %i.cq ; 4 uses
  %bound0 = icmp ult ptr %scevgep, %scevgep85
  %bound1 = icmp ult ptr %scevgep84, %scevgep83
  %found.conflict = and i1 %bound0, %bound1
  %bound092 = icmp ult ptr %scevgep, %scevgep87
  %bound193 = icmp ult ptr %scevgep86, %scevgep83
  %found.conflict94 = and i1 %bound092, %bound193
  %conflict.rdx = or i1 %found.conflict, %found.conflict94
  %bound095 = icmp ult ptr %scevgep, %scevgep89
  %bound196 = icmp ult ptr %scevgep88, %scevgep83
  %found.conflict97 = and i1 %bound095, %bound196
  %conflict.rdx98 = or i1 %conflict.rdx, %found.conflict97
  %bound099 = icmp ult ptr %scevgep, %scevgep91
  %bound1100 = icmp ult ptr %scevgep90, %scevgep83
  %found.conflict101 = and i1 %bound099, %bound1100
  %conflict.rdx102 = or i1 %conflict.rdx98, %found.conflict101
  %bound0103 = icmp ult ptr %scevgep84, %scevgep87
  %bound1104 = icmp ult ptr %scevgep86, %scevgep85
  %found.conflict105 = and i1 %bound0103, %bound1104
  %conflict.rdx106 = or i1 %conflict.rdx102, %found.conflict105
  %bound0107 = icmp ult ptr %scevgep84, %scevgep89
  %bound1108 = icmp ult ptr %scevgep88, %scevgep85
  %found.conflict109 = and i1 %bound0107, %bound1108
  %conflict.rdx110 = or i1 %conflict.rdx106, %found.conflict109
  %bound0111 = icmp ult ptr %scevgep84, %scevgep91
  %bound1112 = icmp ult ptr %scevgep90, %scevgep85
  %found.conflict113 = and i1 %bound0111, %bound1112
  %conflict.rdx114 = or i1 %conflict.rdx110, %found.conflict113
  %bound0115 = icmp ult ptr %scevgep86, %scevgep89
  %bound1116 = icmp ult ptr %scevgep88, %scevgep87
  %found.conflict117 = and i1 %bound0115, %bound1116
  %conflict.rdx118 = or i1 %conflict.rdx114, %found.conflict117
  %bound0119 = icmp ult ptr %scevgep86, %scevgep91
  %bound1120 = icmp ult ptr %scevgep90, %scevgep87
  %found.conflict121 = and i1 %bound0119, %bound1120
  %conflict.rdx122 = or i1 %conflict.rdx118, %found.conflict121
  %bound0123 = icmp ult ptr %scevgep88, %scevgep91
  %bound1124 = icmp ult ptr %scevgep90, %scevgep89
  %found.conflict125 = and i1 %bound0123, %bound1124
  %conflict.rdx126 = or i1 %conflict.rdx122, %found.conflict125
  br i1 %conflict.rdx126, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.mod.vf = and i64 %wide.trip.count80, 3       ; 2 uses
  %i.cr = icmp eq i64 %n.mod.vf, 0
  %i.cs = select i1 %i.cr, i64 4, i64 %n.mod.vf
  %n.vec = sub nsw i64 %wide.trip.count80, %i.cs  ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 9 uses
  %i.ct = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %index ; 4 uses
  %i.cu = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %index ; 4 uses
  %i.cv = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %index ; 4 uses
  %i.cw = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %index ; 4 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cv, i64 80
  %i.da = getelementptr inbounds nuw i8, ptr %i.cw, i64 112
  %i.db = load float, ptr %i.cx, align 4, !tbaa !62, !alias.scope !414
  %i.dc = load float, ptr %i.cy, align 4, !tbaa !62, !alias.scope !414
  %i.dd = load float, ptr %i.cz, align 4, !tbaa !62, !alias.scope !414
  %i.de = load float, ptr %i.da, align 4, !tbaa !62, !alias.scope !414
  %i.df = insertelement <4 x float> poison, float %i.db, i64 0
  %i.dg = insertelement <4 x float> %i.df, float %i.dc, i64 1
  %i.dh = insertelement <4 x float> %i.dg, float %i.dd, i64 2
  %i.di = insertelement <4 x float> %i.dh, float %i.de, i64 3
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %index
  store <4 x float> %i.di, ptr %i.dj, align 4, !tbaa !180, !alias.scope !417, !noalias !419
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ct, i64 20
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cu, i64 52
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cv, i64 84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.cw, i64 116
  %i.do = load float, ptr %i.dk, align 4, !tbaa !62, !alias.scope !414
  %i.dp = load float, ptr %i.dl, align 4, !tbaa !62, !alias.scope !414
  %i.dq = load float, ptr %i.dm, align 4, !tbaa !62, !alias.scope !414
  %i.dr = load float, ptr %i.dn, align 4, !tbaa !62, !alias.scope !414
  %i.ds = insertelement <4 x float> poison, float %i.do, i64 0
  %i.dt = insertelement <4 x float> %i.ds, float %i.dp, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.dq, i64 2
  %i.dv = insertelement <4 x float> %i.du, float %i.dr, i64 3
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %index
  store <4 x float> %i.dv, ptr %i.dw, align 4, !tbaa !180, !alias.scope !423, !noalias !424
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ct, i64 24
  %i.dy = getelementptr inbounds nuw i8, ptr %i.cu, i64 56
  %i.dz = getelementptr inbounds nuw i8, ptr %i.cv, i64 88
  %i.ea = getelementptr inbounds nuw i8, ptr %i.cw, i64 120
  %i.eb = load float, ptr %i.dx, align 4, !tbaa !62, !alias.scope !414
  %i.ec = load float, ptr %i.dy, align 4, !tbaa !62, !alias.scope !414
  %i.ed = load float, ptr %i.dz, align 4, !tbaa !62, !alias.scope !414
  %i.ee = load float, ptr %i.ea, align 4, !tbaa !62, !alias.scope !414
  %i.ef = insertelement <4 x float> poison, float %i.eb, i64 0
  %i.eg = insertelement <4 x float> %i.ef, float %i.ec, i64 1
  %i.eh = insertelement <4 x float> %i.eg, float %i.ed, i64 2
  %i.ei = insertelement <4 x float> %i.eh, float %i.ee, i64 3
  %i.ej = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %index
  store <4 x float> %i.ei, ptr %i.ej, align 4, !tbaa !180, !alias.scope !425, !noalias !426
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ct, i64 28
  %i.el = getelementptr inbounds nuw i8, ptr %i.cu, i64 60
  %i.em = getelementptr inbounds nuw i8, ptr %i.cv, i64 92
  %i.en = getelementptr inbounds nuw i8, ptr %i.cw, i64 124
  %i.eo = load float, ptr %i.ek, align 4, !tbaa !62, !alias.scope !414
  %i.ep = load float, ptr %i.el, align 4, !tbaa !62, !alias.scope !414
  %i.eq = load float, ptr %i.em, align 4, !tbaa !62, !alias.scope !414
  %i.er = load float, ptr %i.en, align 4, !tbaa !62, !alias.scope !414
  %i.es = insertelement <4 x float> poison, float %i.eo, i64 0
  %i.et = insertelement <4 x float> %i.es, float %i.ep, i64 1
  %i.eu = insertelement <4 x float> %i.et, float %i.eq, i64 2
  %i.ev = insertelement <4 x float> %i.eu, float %i.er, i64 3
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %index
  store <4 x float> %i.ev, ptr %i.ew, align 4, !tbaa !180, !alias.scope !427, !noalias !414
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %scalar.ph.preheader, label %vector.body, !llvm.loop !428

scalar.ph176:                                     ; preds = %scalar.ph176.preheader, %scalar.ph176
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph176 ], [ %indvars.iv.ph, %scalar.ph176.preheader ] ; 5 uses
  %i.ey = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %indvars.iv ; 4 uses
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !62
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %.05970, i64 %indvars.iv ; 2 uses
  store float %i.ez, ptr %i.fa, align 4, !tbaa !180
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ey, i64 4
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !62
  %i.fd = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %i.h
  store float %i.fc, ptr %i.fd, align 4, !tbaa !180
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !62
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv
  store float %i.ff, ptr %i.fg, align 4, !tbaa !180
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ey, i64 12
  %i.fi = load float, ptr %i.fh, align 4, !tbaa !62
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv
  store float %i.fi, ptr %i.fj, align 4, !tbaa !180
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.lr.ph68, label %scalar.ph176, !llvm.loop !429

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv77 = phi i64 [ %indvars.iv.next78, %scalar.ph ], [ %indvars.iv77.ph, %scalar.ph.preheader ] ; 6 uses
  %i.fk = getelementptr inbounds nuw [32 x i8], ptr %i.ck, i64 %indvars.iv77 ; 4 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 16
  %i.fm = load float, ptr %i.fl, align 4, !tbaa !62
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %indvars.iv77
  store float %i.fm, ptr %i.fn, align 4, !tbaa !180
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fk, i64 20
  %i.fp = load float, ptr %i.fo, align 4, !tbaa !62
  %i.fq = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv77
  store float %i.fp, ptr %i.fq, align 4, !tbaa !180
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  %i.fs = load float, ptr %i.fr, align 4, !tbaa !62
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv77
  store float %i.fs, ptr %i.ft, align 4, !tbaa !180
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fk, i64 28
  %i.fv = load float, ptr %i.fu, align 4, !tbaa !62
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv77
  store float %i.fv, ptr %i.fw, align 4, !tbaa !180
  %indvars.iv.next78 = add nuw nsw i64 %indvars.iv77, 1 ; 2 uses
  %exitcond81.not = icmp eq i64 %indvars.iv.next78, %wide.trip.count80
  br i1 %exitcond81.not, label %._crit_edge, label %scalar.ph, !llvm.loop !430

._crit_edge:                                      ; preds = %scalar.ph, %bb.b
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %.05970, i64 %i.j
  %i.fy = add i32 %i.u, 8                         ; 2 uses
  %i.fz = load i32, ptr %i.b, align 8, !tbaa !283
  %.not = icmp ugt i32 %i.fy, %i.fz
  %indvar.next = add i64 %indvar, 1
  br i1 %.not, label %._crit_edge73, label %bb.b, !llvm.loop !431

._crit_edge73:                                    ; preds = %._crit_edge, %bb.a
  %i.ga = load ptr, ptr %0, align 8, !tbaa !270
  tail call void @opj_aligned_free(ptr noundef %i.ga) #15
  tail call void @opj_free(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @opj_dwt97_decode_v_func(ptr noundef %0, ptr readnone captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !283
  %.not23 = icmp ult i32 %i.b, 8
  br i1 %.not23, label %._crit_edge27, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !282
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.m = phi i32 [ 8, %.lr.ph26 ], [ %i.cd, %._crit_edge ]
  %.01924 = phi ptr [ %i.d, %.lr.ph26 ], [ %i.cc, %._crit_edge ] ; 6 uses
  %i.n = load i32, ptr %i.e, align 4, !tbaa !281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !432)
  %i.o = load ptr, ptr %0, align 8, !tbaa !226, !alias.scope !432, !noalias !435 ; 2 uses
  %i.p = load i32, ptr %i.f, align 8, !tbaa !230, !alias.scope !432, !noalias !435
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr inbounds [32 x i8], ptr %i.o, i64 %i.q ; 3 uses
  %i.s = load i32, ptr %i.g, align 4, !tbaa !231, !alias.scope !432, !noalias !435 ; 2 uses
  %i.t = load i32, ptr %i.h, align 8, !tbaa !232, !alias.scope !432, !noalias !435 ; 2 uses
  %i.u = icmp ult i32 %i.s, %i.t
  %i.v = zext i32 %i.n to i64                     ; 7 uses
  br i1 %i.u, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.w = zext i32 %i.s to i64                     ; 6 uses
  %wide.trip.count.i = zext i32 %i.t to i64       ; 3 uses
  %i.x = sub nsw i64 %wide.trip.count.i, %i.w
  %xtraiter = and i64 %i.x, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %i.y = shl nuw nsw i64 %i.w, 1
  %i.z = and i64 %i.y, 4294967294
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.z
  %i.ab = mul nuw i64 %i.w, %i.v
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.01924, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.aa, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ac, i64 32, i1 false), !noalias !432
  %indvars.iv.next.i.prol = add nuw nsw i64 %i.w, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.w, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ad = add nsw i64 %wide.trip.count.i, -1
  %i.ae = icmp eq i64 %i.ad, %i.w
  br i1 %i.ae, label %._crit_edge.i, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 4 uses
  %i.af = shl nuw i64 %indvars.iv.i, 1
  %i.ag = and i64 %i.af, 4294967294
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.ag
  %i.ai = mul nuw i64 %indvars.iv.i, %i.v
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %.01924, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.aj, i64 32, i1 false), !noalias !432
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ak = shl nuw i64 %indvars.iv.next.i, 1
  %i.al = and i64 %i.ak, 4294967294
  %i.am = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %i.al
end_hunk_0
