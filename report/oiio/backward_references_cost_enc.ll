inline.NumInlined: 65
inline.NumDeleted: 36
begin_hunk_0_@VP8LBackwardReferencesTraceBackwards:bb.a
  %exitcond36.not.i35.i.i = icmp eq i64 %indvars.iv.next33.i34.i.i, 256
  br i1 %exitcond36.not.i35.i.i, label %ConvertPopulationCountTableToBitEstimates.exit37.i.i, label %.lr.ph30.i31.i.i, !llvm.loop !23

ConvertPopulationCountTableToBitEstimates.exit37.i.i: ; preds = %VP8LFastLog2.exit24.i33.i.i, %._crit_edge.thread.i36.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.s, i64 1032 ; 3 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %ConvertPopulationCountTableToBitEstimates.exit37.i.i
  %index147 = phi i64 [ 0, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %index.next154.1, %vector.body146 ] ; 3 uses
  %vec.phi148 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.dw, %vector.body146 ]
  %vec.phi149 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.dx, %vector.body146 ]
  %vec.phi150 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.ec, %vector.body146 ]
  %vec.phi151 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit37.i.i ], [ %i.ed, %vector.body146 ]
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index147 ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %wide.load152 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !3 ; 2 uses
  %wide.load153 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !3 ; 2 uses
  %i.dl = add <4 x i32> %wide.load152, %vec.phi148
  %i.dm = add <4 x i32> %wide.load153, %vec.phi149
  %i.dn = icmp ne <4 x i32> %wide.load152, zeroinitializer
  %i.do = icmp ne <4 x i32> %wide.load153, zeroinitializer
  %i.dp = zext <4 x i1> %i.dn to <4 x i32>
  %i.dq = zext <4 x i1> %i.do to <4 x i32>
  %i.dr = add <4 x i32> %vec.phi150, %i.dp
  %i.ds = add <4 x i32> %vec.phi151, %i.dq
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %index147 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  %wide.load152.1 = load <4 x i32>, ptr %i.du, align 4, !tbaa !3 ; 2 uses
  %wide.load153.1 = load <4 x i32>, ptr %i.dv, align 4, !tbaa !3 ; 2 uses
  %i.dw = add <4 x i32> %wide.load152.1, %i.dl    ; 2 uses
  %i.dx = add <4 x i32> %wide.load153.1, %i.dm    ; 2 uses
  %i.dy = icmp ne <4 x i32> %wide.load152.1, zeroinitializer
  %i.dz = icmp ne <4 x i32> %wide.load153.1, zeroinitializer
  %i.ea = zext <4 x i1> %i.dy to <4 x i32>
  %i.eb = zext <4 x i1> %i.dz to <4 x i32>
  %i.ec = add <4 x i32> %i.dr, %i.ea              ; 2 uses
  %i.ed = add <4 x i32> %i.ds, %i.eb              ; 2 uses
  %index.next154.1 = add nuw nsw i64 %index147, 16 ; 2 uses
  %i.ee = icmp eq i64 %index.next154.1, 256
  br i1 %i.ee, label %middle.block155, label %vector.body146, !llvm.loop !25

middle.block155:                                  ; preds = %vector.body146
  %bin.rdx156 = add <4 x i32> %i.dx, %i.dw
  %i.ef = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx156) ; 3 uses
  %bin.rdx157 = add <4 x i32> %i.ed, %i.ec
  %i.eg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx157)
  %i.eh = getelementptr inbounds nuw i8, ptr %i.l, i64 2048 ; 4 uses
  %i.ei = icmp samesign ult i32 %i.eg, 2
  br i1 %i.ei, label %._crit_edge.thread.i54.i.i, label %bb.q

._crit_edge.thread.i54.i.i:                       ; preds = %middle.block155
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.eh, i8 0, i64 1024, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit55.i.i

bb.q:                                             ; preds = %middle.block155
  %i.ej = icmp ult i32 %i.ef, 256
  br i1 %i.ej, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ek = zext nneg i32 %i.ef to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.ek
  %i.em = load i32, ptr %i.el, align 4, !tbaa !3
  br label %.lr.ph30.preheader.i48.i.i

bb.s:                                             ; preds = %bb.q
  %i.en = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.eo = call i32 %i.en(i32 noundef %i.ef) #8, !inline_history !22
  br label %.lr.ph30.preheader.i48.i.i

.lr.ph30.preheader.i48.i.i:                       ; preds = %bb.s, %bb.r
  %i.ep = phi i32 [ %i.em, %bb.r ], [ %i.eo, %bb.s ]
  br label %.lr.ph30.i49.i.i

.lr.ph30.i49.i.i:                                 ; preds = %VP8LFastLog2.exit24.i51.i.i, %.lr.ph30.preheader.i48.i.i
  %indvars.iv32.i50.i.i = phi i64 [ 0, %.lr.ph30.preheader.i48.i.i ], [ %indvars.iv.next33.i52.i.i, %VP8LFastLog2.exit24.i51.i.i ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv32.i50.i.i
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !3  ; 3 uses
  %i.es = icmp ult i32 %i.er, 256
  br i1 %i.es, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph30.i49.i.i
  %i.et = zext nneg i32 %i.er to i64
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !3
  br label %VP8LFastLog2.exit24.i51.i.i

bb.u:                                             ; preds = %.lr.ph30.i49.i.i
  %i.ew = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.ex = call i32 %i.ew(i32 noundef %i.er) #8, !inline_history !22
  br label %VP8LFastLog2.exit24.i51.i.i

VP8LFastLog2.exit24.i51.i.i:                      ; preds = %bb.u, %bb.t
  %i.ey = phi i32 [ %i.ev, %bb.t ], [ %i.ex, %bb.u ]
  %i.ez = sub i32 %i.ep, %i.ey
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv32.i50.i.i
  store i32 %i.ez, ptr %i.fa, align 4, !tbaa !3
  %indvars.iv.next33.i52.i.i = add nuw nsw i64 %indvars.iv32.i50.i.i, 1 ; 2 uses
  %exitcond36.not.i53.i.i = icmp eq i64 %indvars.iv.next33.i52.i.i, 256
  br i1 %exitcond36.not.i53.i.i, label %ConvertPopulationCountTableToBitEstimates.exit55.i.i, label %.lr.ph30.i49.i.i, !llvm.loop !23

ConvertPopulationCountTableToBitEstimates.exit55.i.i: ; preds = %VP8LFastLog2.exit24.i51.i.i, %._crit_edge.thread.i54.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %i.s, i64 2056 ; 3 uses
  br label %vector.body160

vector.body160:                                   ; preds = %vector.body160, %ConvertPopulationCountTableToBitEstimates.exit55.i.i
  %index161 = phi i64 [ 0, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %index.next168.1, %vector.body160 ] ; 3 uses
  %vec.phi162 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fp, %vector.body160 ]
  %vec.phi163 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fq, %vector.body160 ]
  %vec.phi164 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fv, %vector.body160 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %ConvertPopulationCountTableToBitEstimates.exit55.i.i ], [ %i.fw, %vector.body160 ]
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index161 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %wide.load166 = load <4 x i32>, ptr %i.fc, align 4, !tbaa !3 ; 2 uses
  %wide.load167 = load <4 x i32>, ptr %i.fd, align 4, !tbaa !3 ; 2 uses
  %i.fe = add <4 x i32> %wide.load166, %vec.phi162
  %i.ff = add <4 x i32> %wide.load167, %vec.phi163
  %i.fg = icmp ne <4 x i32> %wide.load166, zeroinitializer
  %i.fh = icmp ne <4 x i32> %wide.load167, zeroinitializer
  %i.fi = zext <4 x i1> %i.fg to <4 x i32>
  %i.fj = zext <4 x i1> %i.fh to <4 x i32>
  %i.fk = add <4 x i32> %vec.phi164, %i.fi
  %i.fl = add <4 x i32> %vec.phi165, %i.fj
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %index161 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 32
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 48
  %wide.load166.1 = load <4 x i32>, ptr %i.fn, align 4, !tbaa !3 ; 2 uses
  %wide.load167.1 = load <4 x i32>, ptr %i.fo, align 4, !tbaa !3 ; 2 uses
  %i.fp = add <4 x i32> %wide.load166.1, %i.fe    ; 2 uses
  %i.fq = add <4 x i32> %wide.load167.1, %i.ff    ; 2 uses
  %i.fr = icmp ne <4 x i32> %wide.load166.1, zeroinitializer
  %i.fs = icmp ne <4 x i32> %wide.load167.1, zeroinitializer
  %i.ft = zext <4 x i1> %i.fr to <4 x i32>
  %i.fu = zext <4 x i1> %i.fs to <4 x i32>
  %i.fv = add <4 x i32> %i.fk, %i.ft              ; 2 uses
  %i.fw = add <4 x i32> %i.fl, %i.fu              ; 2 uses
  %index.next168.1 = add nuw nsw i64 %index161, 16 ; 2 uses
  %i.fx = icmp eq i64 %index.next168.1, 256
  br i1 %i.fx, label %middle.block169, label %vector.body160, !llvm.loop !26

middle.block169:                                  ; preds = %vector.body160
  %bin.rdx170 = add <4 x i32> %i.fq, %i.fp
  %i.fy = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx170) ; 3 uses
  %bin.rdx171 = add <4 x i32> %i.fw, %i.fv
  %i.fz = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx171)
  %i.ga = icmp samesign ult i32 %i.fz, 2
  br i1 %i.ga, label %._crit_edge.thread.i72.i.i, label %bb.v

._crit_edge.thread.i72.i.i:                       ; preds = %middle.block169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.l, i8 0, i64 1024, i1 false)
  br label %ConvertPopulationCountTableToBitEstimates.exit73.i.i

bb.v:                                             ; preds = %middle.block169
  %i.gb = icmp ult i32 %i.fy, 256
  br i1 %i.gb, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.gc = zext nneg i32 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !3
  br label %.lr.ph30.preheader.i66.i.i

bb.x:                                             ; preds = %bb.v
  %i.gf = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.gg = call i32 %i.gf(i32 noundef %i.fy) #8, !inline_history !22
  br label %.lr.ph30.preheader.i66.i.i

.lr.ph30.preheader.i66.i.i:                       ; preds = %bb.x, %bb.w
  %i.gh = phi i32 [ %i.ge, %bb.w ], [ %i.gg, %bb.x ]
  br label %.lr.ph30.i67.i.i

.lr.ph30.i67.i.i:                                 ; preds = %VP8LFastLog2.exit24.i69.i.i, %.lr.ph30.preheader.i66.i.i
  %indvars.iv32.i68.i.i = phi i64 [ 0, %.lr.ph30.preheader.i66.i.i ], [ %indvars.iv.next33.i70.i.i, %VP8LFastLog2.exit24.i69.i.i ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %i.fb, i64 %indvars.iv32.i68.i.i
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !3  ; 3 uses
  %i.gk = icmp ult i32 %i.gj, 256
  br i1 %i.gk, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.lr.ph30.i67.i.i
  %i.gl = zext nneg i32 %i.gj to i64
  %i.gm = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.gl
  %i.gn = load i32, ptr %i.gm, align 4, !tbaa !3
  br label %VP8LFastLog2.exit24.i69.i.i

bb.z:                                             ; preds = %.lr.ph30.i67.i.i
  %i.go = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.gp = call i32 %i.go(i32 noundef %i.gj) #8, !inline_history !22
  br label %VP8LFastLog2.exit24.i69.i.i

VP8LFastLog2.exit24.i69.i.i:                      ; preds = %bb.z, %bb.y
  %i.gq = phi i32 [ %i.gn, %bb.y ], [ %i.gp, %bb.z ]
  %i.gr = sub i32 %i.gh, %i.gq
  %i.gs = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv32.i68.i.i
  store i32 %i.gr, ptr %i.gs, align 4, !tbaa !3
  %indvars.iv.next33.i70.i.i = add nuw nsw i64 %indvars.iv32.i68.i.i, 1 ; 2 uses
  %exitcond36.not.i71.i.i = icmp eq i64 %indvars.iv.next33.i70.i.i, 256
  br i1 %exitcond36.not.i71.i.i, label %ConvertPopulationCountTableToBitEstimates.exit73.i.i, label %.lr.ph30.i67.i.i, !llvm.loop !23

ConvertPopulationCountTableToBitEstimates.exit73.i.i: ; preds = %VP8LFastLog2.exit24.i69.i.i, %._crit_edge.thread.i72.i.i
  %i.gt = getelementptr inbounds nuw i8, ptr %i.s, i64 3080 ; 2 uses
  %i.gu = load <32 x i32>, ptr %i.gt, align 8, !tbaa !3 ; 33 uses
  %i.gv = extractelement <32 x i32> %i.gu, i64 0
  %i.gw = extractelement <32 x i32> %i.gu, i64 1
  %i.gx = add i32 %i.gw, %i.gv
  %i.gy = icmp ne <32 x i32> %i.gu, zeroinitializer
  %i.gz = extractelement <32 x i32> %i.gu, i64 2
  %i.ha = add i32 %i.gx, %i.gz
  %i.hb = extractelement <32 x i32> %i.gu, i64 3
  %i.hc = add i32 %i.ha, %i.hb
  %i.hd = extractelement <32 x i32> %i.gu, i64 4
  %i.he = add i32 %i.hc, %i.hd
  %i.hf = extractelement <32 x i32> %i.gu, i64 5
  %i.hg = add i32 %i.he, %i.hf
  %i.hh = extractelement <32 x i32> %i.gu, i64 6
  %i.hi = add i32 %i.hg, %i.hh
  %i.hj = extractelement <32 x i32> %i.gu, i64 7
  %i.hk = add i32 %i.hi, %i.hj
  %i.hl = extractelement <32 x i32> %i.gu, i64 8
  %i.hm = add i32 %i.hk, %i.hl
  %i.hn = extractelement <32 x i32> %i.gu, i64 9
  %i.ho = add i32 %i.hm, %i.hn
  %i.hp = extractelement <32 x i32> %i.gu, i64 10
  %i.hq = add i32 %i.ho, %i.hp
  %i.hr = extractelement <32 x i32> %i.gu, i64 11
  %i.hs = add i32 %i.hq, %i.hr
  %i.ht = extractelement <32 x i32> %i.gu, i64 12
  %i.hu = add i32 %i.hs, %i.ht
  %i.hv = extractelement <32 x i32> %i.gu, i64 13
  %i.hw = add i32 %i.hu, %i.hv
  %i.hx = extractelement <32 x i32> %i.gu, i64 14
  %i.hy = add i32 %i.hw, %i.hx
  %i.hz = extractelement <32 x i32> %i.gu, i64 15
  %i.ia = add i32 %i.hy, %i.hz
  %i.ib = extractelement <32 x i32> %i.gu, i64 16
  %i.ic = add i32 %i.ia, %i.ib
  %i.id = extractelement <32 x i32> %i.gu, i64 17
  %i.ie = add i32 %i.ic, %i.id
  %i.if = extractelement <32 x i32> %i.gu, i64 18
  %i.ig = add i32 %i.ie, %i.if
  %i.ih = extractelement <32 x i32> %i.gu, i64 19
  %i.ii = add i32 %i.ig, %i.ih
  %i.ij = extractelement <32 x i32> %i.gu, i64 20
  %i.ik = add i32 %i.ii, %i.ij
  %i.il = extractelement <32 x i32> %i.gu, i64 21
  %i.im = add i32 %i.ik, %i.il
  %i.in = extractelement <32 x i32> %i.gu, i64 22
  %i.io = add i32 %i.im, %i.in
  %i.ip = extractelement <32 x i32> %i.gu, i64 23
  %i.iq = add i32 %i.io, %i.ip
  %i.ir = extractelement <32 x i32> %i.gu, i64 24
  %i.is = add i32 %i.iq, %i.ir
  %i.it = extractelement <32 x i32> %i.gu, i64 25
  %i.iu = add i32 %i.is, %i.it
  %i.iv = extractelement <32 x i32> %i.gu, i64 26
  %i.iw = add i32 %i.iu, %i.iv
  %i.ix = extractelement <32 x i32> %i.gu, i64 27
  %i.iy = add i32 %i.iw, %i.ix
  %i.iz = extractelement <32 x i32> %i.gu, i64 28
  %i.ja = add i32 %i.iy, %i.iz
  %i.jb = extractelement <32 x i32> %i.gu, i64 29
  %i.jc = add i32 %i.ja, %i.jb
  %i.jd = extractelement <32 x i32> %i.gu, i64 30
  %i.je = add i32 %i.jc, %i.jd
  %i.jf = extractelement <32 x i32> %i.gu, i64 31
  %i.jg = add i32 %i.je, %i.jf
  %i.jh = getelementptr inbounds nuw i8, ptr %i.s, i64 3208
  %i.ji = load <8 x i32>, ptr %i.jh, align 8, !tbaa !3 ; 9 uses
  %i.jj = extractelement <8 x i32> %i.ji, i64 0
  %i.jk = add i32 %i.jg, %i.jj
  %i.jl = icmp ne <8 x i32> %i.ji, zeroinitializer
  %i.jm = extractelement <8 x i32> %i.ji, i64 1
  %i.jn = add i32 %i.jk, %i.jm
  %i.jo = extractelement <8 x i32> %i.ji, i64 2
  %i.jp = add i32 %i.jn, %i.jo
  %i.jq = extractelement <8 x i32> %i.ji, i64 3
  %i.jr = add i32 %i.jp, %i.jq
  %i.js = extractelement <8 x i32> %i.ji, i64 4
  %i.jt = add i32 %i.jr, %i.js
  %i.ju = extractelement <8 x i32> %i.ji, i64 5
  %i.jv = add i32 %i.jt, %i.ju
  %i.jw = extractelement <8 x i32> %i.ji, i64 6
  %i.jx = add i32 %i.jv, %i.jw
  %i.jy = extractelement <8 x i32> %i.ji, i64 7
  %i.jz = add i32 %i.jx, %i.jy                    ; 3 uses
  %i.ka = shufflevector <8 x i1> %i.jl, <8 x i1> poison, <32 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %rdx.op = shufflevector <32 x i1> %i.gy, <32 x i1> %i.ka, <40 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39>
  %i.kb = bitcast <40 x i1> %rdx.op to i40
  %i.kc = call range(i40 0, 41) i40 @llvm.ctpop.i40(i40 %i.kb)
  %i.kd = getelementptr inbounds nuw i8, ptr %i.l, i64 3072 ; 3 uses
  %i.ke = icmp samesign ult i40 %i.kc, 2
  br i1 %i.ke, label %._crit_edge.thread.i90.i.i, label %bb.aa

._crit_edge.thread.i90.i.i:                       ; preds = %ConvertPopulationCountTableToBitEstimates.exit73.i.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(160) %i.kd, i8 0, i64 160, i1 false)
  br label %.loopexit159.i.a

bb.aa:                                            ; preds = %ConvertPopulationCountTableToBitEstimates.exit73.i.i
  %i.kf = icmp ult i32 %i.jz, 256
  br i1 %i.kf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.kg = zext nneg i32 %i.jz to i64
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.kg
  %i.ki = load i32, ptr %i.kh, align 4, !tbaa !3
  br label %.lr.ph30.preheader.i84.i.i

bb.ac:                                            ; preds = %bb.aa
  %i.kj = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.kk = call i32 %i.kj(i32 noundef %i.jz) #8, !inline_history !22
  br label %.lr.ph30.preheader.i84.i.i

.lr.ph30.preheader.i84.i.i:                       ; preds = %bb.ac, %bb.ab
  %i.kl = phi i32 [ %i.ki, %bb.ab ], [ %i.kk, %bb.ac ]
  br label %.lr.ph30.i85.i.i

.lr.ph30.i85.i.i:                                 ; preds = %VP8LFastLog2.exit24.i87.i.i, %.lr.ph30.preheader.i84.i.i
  %indvars.iv32.i86.i.i = phi i64 [ 0, %.lr.ph30.preheader.i84.i.i ], [ %indvars.iv.next33.i88.i.i, %VP8LFastLog2.exit24.i87.i.i ] ; 3 uses
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.gt, i64 %indvars.iv32.i86.i.i
  %i.kn = load i32, ptr %i.km, align 4, !tbaa !3  ; 3 uses
  %i.ko = icmp ult i32 %i.kn, 256
  br i1 %i.ko, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %.lr.ph30.i85.i.i
  %i.kp = zext nneg i32 %i.kn to i64
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr @kLog2Table, i64 %i.kp
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !3
  br label %VP8LFastLog2.exit24.i87.i.i

bb.ae:                                            ; preds = %.lr.ph30.i85.i.i
  %i.ks = load ptr, ptr @VP8LFastLog2Slow, align 8, !tbaa !21
  %i.kt = call i32 %i.ks(i32 noundef %i.kn) #8, !inline_history !22
  br label %VP8LFastLog2.exit24.i87.i.i

VP8LFastLog2.exit24.i87.i.i:                      ; preds = %bb.ae, %bb.ad
  %i.ku = phi i32 [ %i.kr, %bb.ad ], [ %i.kt, %bb.ae ]
  %i.kv = sub i32 %i.kl, %i.ku
  %i.kw = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %indvars.iv32.i86.i.i
  store i32 %i.kv, ptr %i.kw, align 4, !tbaa !3
  %indvars.iv.next33.i88.i.i = add nuw nsw i64 %indvars.iv32.i86.i.i, 1 ; 2 uses
  %exitcond36.not.i89.i.i = icmp eq i64 %indvars.iv.next33.i88.i.i, 40
  br i1 %exitcond36.not.i89.i.i, label %.loopexit159.i.a, label %.lr.ph30.i85.i.i, !llvm.loop !23

CostModelBuild.exit.i:                            ; preds = %bb.e
  call void @VP8LFreeHistogram(ptr noundef null) #8
  br label %bb.bw

.loopexit159.i.a:                                 ; preds = %VP8LFastLog2.exit24.i87.i.i, %._crit_edge.thread.i90.i.i
  call void @VP8LFreeHistogram(ptr noundef nonnull %i.s) #8
  %i.kx = call i32 @llvm.smin.i32(i32 %i.a, i32 4095) ; 2 uses
  %i.ky = getelementptr inbounds nuw i8, ptr %i.m, i64 32792 ; 4 uses
  store ptr null, ptr %i.ky, align 8, !tbaa !27
  %i.kz = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 2 uses
  store ptr null, ptr %i.kz, align 8, !tbaa !32
  store ptr null, ptr %i.m, align 8, !tbaa !33
  %i.la = getelementptr inbounds nuw i8, ptr %i.m, i64 33216
  store ptr null, ptr %i.la, align 8, !tbaa !34
  %i.lb = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 3 uses
  store i32 0, ptr %i.lb, align 8, !tbaa !35
  %i.lc = getelementptr inbounds nuw i8, ptr %i.m, i64 32800 ; 4 uses
  store ptr %i.c, ptr %i.lc, align 8, !tbaa !36
  %i.ld = getelementptr inbounds nuw i8, ptr %i.m, i64 33208
  %i.le = getelementptr inbounds nuw i8, ptr %i.m, i64 32808 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.m, i64 32840
  store ptr null, ptr %i.lf, align 8, !tbaa !37
  %i.lg = getelementptr inbounds nuw i8, ptr %i.m, i64 32848
  %i.lh = getelementptr inbounds nuw i8, ptr %i.m, i64 32880
  store ptr %i.le, ptr %i.lh, align 8, !tbaa !37
  %i.li = getelementptr inbounds nuw i8, ptr %i.m, i64 32888
  %i.lj = getelementptr inbounds nuw i8, ptr %i.m, i64 32920
  store ptr %i.lg, ptr %i.lj, align 8, !tbaa !37
  %i.lk = getelementptr inbounds nuw i8, ptr %i.m, i64 32928
  %i.ll = getelementptr inbounds nuw i8, ptr %i.m, i64 32960
  store ptr %i.li, ptr %i.ll, align 8, !tbaa !37
  %i.lm = getelementptr inbounds nuw i8, ptr %i.m, i64 32968
  %i.ln = getelementptr inbounds nuw i8, ptr %i.m, i64 33000
  store ptr %i.lk, ptr %i.ln, align 8, !tbaa !37
  %i.lo = getelementptr inbounds nuw i8, ptr %i.m, i64 33008
  %i.lp = getelementptr inbounds nuw i8, ptr %i.m, i64 33040
  store ptr %i.lm, ptr %i.lp, align 8, !tbaa !37
  %i.lq = getelementptr inbounds nuw i8, ptr %i.m, i64 33048
  %i.lr = getelementptr inbounds nuw i8, ptr %i.m, i64 33080
  store ptr %i.lo, ptr %i.lr, align 8, !tbaa !37
  %i.ls = getelementptr inbounds nuw i8, ptr %i.m, i64 33088
  %i.lt = getelementptr inbounds nuw i8, ptr %i.m, i64 33120
  store ptr %i.lq, ptr %i.lt, align 8, !tbaa !37
  %i.lu = getelementptr inbounds nuw i8, ptr %i.m, i64 33128
  %i.lv = getelementptr inbounds nuw i8, ptr %i.m, i64 33160
  store ptr %i.ls, ptr %i.lv, align 8, !tbaa !37
  %i.lw = getelementptr inbounds nuw i8, ptr %i.m, i64 33168 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.m, i64 33200
  store ptr %i.lu, ptr %i.lx, align 8, !tbaa !37
  store ptr %i.lw, ptr %i.ld, align 8, !tbaa !39
  %i.ly = icmp sgt i32 %i.a, 0                    ; 2 uses
  br i1 %i.ly, label %.lr.ph.i.i, label %._crit_edge.thread.i.i

._crit_edge.thread.i.i:                           ; preds = %.loopexit159.i.a
  %i.lz = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %i.lz, align 8, !tbaa !40
  br label %._crit_edge69.i.i

.lr.ph.i.i:                                       ; preds = %.loopexit159.i.a
  %i.ma = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.mb = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %wide.trip.count.i.i = zext nneg i32 %i.kx to i64 ; 2 uses
  br label %bb.af

bb.af:                                            ; preds = %GetLengthCost.exit.i.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %GetLengthCost.exit.i.i ] ; 5 uses
  %i.mc = icmp samesign ult i64 %indvars.iv.i.i, 512
  br i1 %i.mc, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.md = getelementptr inbounds nuw [2 x i8], ptr @kPrefixEncodeCode, i64 %indvars.iv.i.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i8, ptr %i.md, align 2, !tbaa !41
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.md, i64 1
  %.sroa.4.0.copyload.i.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 1, !tbaa !41
  %i.me = sext i8 %.sroa.0.0.copyload.i.i.i.i to i32
  %i.mf = sext i8 %.sroa.4.0.copyload.i.i.i.i to i32
  br label %GetLengthCost.exit.i.i

bb.ah:                                            ; preds = %bb.af
  %i.mg = trunc i64 %indvars.iv.i.i to i32
  %i.mh = add i32 %i.mg, -1                       ; 2 uses
  %i.mi = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.mh, i1 true) ; 2 uses
  %i.mj = sub nuw nsw i32 30, %i.mi               ; 2 uses
  %i.mk = lshr i32 %i.mh, %i.mj
  %i.ml = and i32 %i.mk, 1
  %i.mm = shl nuw nsw i32 %i.mi, 1
  %i.mn = or disjoint i32 %i.ml, %i.mm
  %i.mo = xor i32 %i.mn, 62
  br label %GetLengthCost.exit.i.i

GetLengthCost.exit.i.i:                           ; preds = %bb.ah, %bb.ag
  %.02.i.i.i = phi i32 [ %i.me, %bb.ag ], [ %i.mo, %bb.ah ]
  %.0.i.i.i = phi i32 [ %i.mf, %bb.ag ], [ %i.mj, %bb.ah ]
  %i.mp = sext i32 %.02.i.i.i to i64
  %i.mq = getelementptr [4 x i8], ptr %i.ma, i64 %i.mp
  %i.mr = getelementptr i8, ptr %i.mq, i64 1024
  %i.ms = load i32, ptr %i.mr, align 4, !tbaa !3
  %i.mt = zext i32 %i.ms to i64
  %i.mu = sext i32 %.0.i.i.i to i64
  %i.mv = shl nsw i64 %i.mu, 23
  %i.mw = add nsw i64 %i.mv, %i.mt
  %i.mx = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv.i.i
  store i64 %i.mw, ptr %i.mx, align 8, !tbaa !42
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.af, !llvm.loop !43

._crit_edge.i.i:                                  ; preds = %GetLengthCost.exit.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 4 uses
  store i64 1, ptr %i.my, align 8, !tbaa !40
  %.not97.i.i = icmp eq i32 %i.a, 1
  br i1 %.not97.i.i, label %._crit_edge69.i.i, label %.lr.ph68.i.i.preheader

.lr.ph68.i.i.preheader:                           ; preds = %._crit_edge.i.i
  %i.mz = add nsw i64 %wide.trip.count.i.i, -1    ; 3 uses
  %xtraiter = and i64 %i.mz, 1
  %i.na = icmp eq i32 %i.a, 2
  br i1 %i.na, label %.lr.ph68.i.i.epil.preheader, label %.lr.ph68.i.i.preheader.new

.lr.ph68.i.i.preheader.new:                       ; preds = %.lr.ph68.i.i.preheader
  %unroll_iter = and i64 %i.mz, -2
  br label %.lr.ph68.i.i

.lr.ph68.i.i:                                     ; preds = %bb.ak, %.lr.ph68.i.i.preheader.new
  %i.nb = phi i64 [ 1, %.lr.ph68.i.i.preheader.new ], [ %i.nn, %bb.ak ] ; 2 uses
end_hunk_0
begin_hunk_1_@VP8LBackwardReferencesTraceBackwards:bb.a
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph68.i.i.1
  %i.nn = phi i64 [ %i.nh, %.lr.ph68.i.i.1 ], [ %i.nm, %bb.aj ] ; 3 uses
  %indvars.iv.next79.i.i.1 = add nuw nsw i64 %indvars.iv78.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge69.i.i.loopexit.unr-lcssa, label %.lr.ph68.i.i, !llvm.loop !44

._crit_edge69.i.i.loopexit.unr-lcssa:             ; preds = %bb.ak
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge69.i.i, label %.lr.ph68.i.i.epil.preheader

.lr.ph68.i.i.epil.preheader:                      ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %.lr.ph68.i.i.preheader
  %.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %i.nn, %._crit_edge69.i.i.loopexit.unr-lcssa ] ; 2 uses
  %indvars.iv78.i.i.epil.init = phi i64 [ 1, %.lr.ph68.i.i.preheader ], [ %indvars.iv.next79.i.i.1, %._crit_edge69.i.i.loopexit.unr-lcssa ]
  %lcmp.mod207 = trunc i64 %i.mz to i1
  call void @llvm.assume(i1 %lcmp.mod207)
  %i.no = getelementptr inbounds nuw [8 x i8], ptr %i.mb, i64 %indvars.iv78.i.i.epil.init ; 2 uses
  %i.np = load i64, ptr %i.no, align 8, !tbaa !42
  %i.nq = getelementptr i8, ptr %i.no, i64 -8
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !42
  %.not64.i.i.epil = icmp eq i64 %i.np, %i.nr
  br i1 %.not64.i.i.epil, label %._crit_edge69.i.i, label %bb.al

bb.al:                                            ; preds = %.lr.ph68.i.i.epil.preheader
  %i.ns = add i64 %.epil.init, 1                  ; 2 uses
  store i64 %i.ns, ptr %i.my, align 8, !tbaa !40
  br label %._crit_edge69.i.i

._crit_edge69.i.i:                                ; preds = %._crit_edge69.i.i.loopexit.unr-lcssa, %bb.al, %.lr.ph68.i.i.epil.preheader, %._crit_edge.i.i, %._crit_edge.thread.i.i
  %i.nt = phi i1 [ false, %._crit_edge.thread.i.i ], [ false, %._crit_edge.i.i ], [ true, %.lr.ph68.i.i.epil.preheader ], [ true, %bb.al ], [ true, %._crit_edge69.i.i.loopexit.unr-lcssa ]
  %i.nu = phi i64 [ 1, %._crit_edge.thread.i.i ], [ 1, %._crit_edge.i.i ], [ %i.nn, %._crit_edge69.i.i.loopexit.unr-lcssa ], [ %.epil.init, %.lr.ph68.i.i.epil.preheader ], [ %i.ns, %bb.al ]
  %i.nv = call ptr @WebPSafeMalloc(i64 noundef %i.nu, i64 noundef 16) #8 ; 7 uses
  store ptr %i.nv, ptr %i.kz, align 8, !tbaa !32
  %i.nw = icmp eq ptr %i.nv, null
  br i1 %i.nw, label %CostManagerInit.exit.i, label %bb.am

bb.am:                                            ; preds = %._crit_edge69.i.i
  %i.nx = getelementptr inbounds nuw i8, ptr %i.nv, i64 8
  store i32 0, ptr %i.nx, align 8, !tbaa !45
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nv, i64 12
  store i32 1, ptr %i.ny, align 4, !tbaa !47
  %i.nz = getelementptr inbounds nuw i8, ptr %i.m, i64 32 ; 4 uses
  %i.oa = load i64, ptr %i.nz, align 8, !tbaa !42 ; 3 uses
  store i64 %i.oa, ptr %i.nv, align 8, !tbaa !48
  br i1 %i.nt, label %.lr.ph73.preheader.i.i, label %._crit_edge74.i.i

.lr.ph73.preheader.i.i:                           ; preds = %bb.am
  %wide.trip.count86.i.i = zext i32 %i.kx to i64
  %i.ob = add nsw i64 %wide.trip.count86.i.i, -1  ; 3 uses
  %xtraiter208 = and i64 %i.ob, 1
  %i.oc = icmp eq i32 %i.a, 2
  br i1 %i.oc, label %.lr.ph73.i.i.epil.preheader, label %.lr.ph73.preheader.i.i.new

.lr.ph73.preheader.i.i.new:                       ; preds = %.lr.ph73.preheader.i.i
  %unroll_iter213 = and i64 %i.ob, -2
  br label %.lr.ph73.i.i

.lr.ph73.i.i:                                     ; preds = %bb.ap, %.lr.ph73.preheader.i.i.new
  %i.od = phi i64 [ %i.oa, %.lr.ph73.preheader.i.i.new ], [ %i.om, %bb.ap ]
  %indvars.iv83.i.i = phi i64 [ 1, %.lr.ph73.preheader.i.i.new ], [ %indvars.iv.next84.i.i.1, %bb.ap ] ; 4 uses
  %.05871.i.i = phi ptr [ %i.nv, %.lr.ph73.preheader.i.i.new ], [ %.1.i.i.1, %bb.ap ] ; 3 uses
  %niter214 = phi i64 [ 0, %.lr.ph73.preheader.i.i.new ], [ %niter214.next.1, %bb.ap ]
  %i.oe = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv83.i.i
  %i.of = load i64, ptr %i.oe, align 8, !tbaa !42 ; 3 uses
  %.not.i.i = icmp eq i64 %i.of, %i.od
  br i1 %.not.i.i, label %.lr.ph73.i.i.1, label %bb.an

bb.an:                                            ; preds = %.lr.ph73.i.i
  %i.og = getelementptr inbounds nuw i8, ptr %.05871.i.i, i64 16 ; 2 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.05871.i.i, i64 24
  %i.oi = trunc nuw nsw i64 %indvars.iv83.i.i to i32
  store i32 %i.oi, ptr %i.oh, align 8, !tbaa !45
  store i64 %i.of, ptr %i.og, align 8, !tbaa !48
  br label %.lr.ph73.i.i.1

.lr.ph73.i.i.1:                                   ; preds = %bb.an, %.lr.ph73.i.i
  %.1.i.i = phi ptr [ %i.og, %bb.an ], [ %.05871.i.i, %.lr.ph73.i.i ] ; 4 uses
  %indvars.iv.next84.i.i = add nuw nsw i64 %indvars.iv83.i.i, 1 ; 3 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 12
  %i.ok = trunc nuw nsw i64 %indvars.iv.next84.i.i to i32
  store i32 %i.ok, ptr %i.oj, align 4, !tbaa !47
  %i.ol = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv.next84.i.i
  %i.om = load i64, ptr %i.ol, align 8, !tbaa !42 ; 4 uses
  %.not.i.i.1 = icmp eq i64 %i.om, %i.of
  br i1 %.not.i.i.1, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph73.i.i.1
  %i.on = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 16 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 24
  %i.op = trunc nuw nsw i64 %indvars.iv.next84.i.i to i32
  store i32 %i.op, ptr %i.oo, align 8, !tbaa !45
  store i64 %i.om, ptr %i.on, align 8, !tbaa !48
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %.lr.ph73.i.i.1
  %.1.i.i.1 = phi ptr [ %i.on, %bb.ao ], [ %.1.i.i, %.lr.ph73.i.i.1 ] ; 3 uses
  %indvars.iv.next84.i.i.1 = add nuw nsw i64 %indvars.iv83.i.i, 2 ; 3 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.1.i.i.1, i64 12
  %i.or = trunc nuw nsw i64 %indvars.iv.next84.i.i.1 to i32
  store i32 %i.or, ptr %i.oq, align 4, !tbaa !47
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge74.i.i.loopexit.unr-lcssa, label %.lr.ph73.i.i, !llvm.loop !49

._crit_edge74.i.i.loopexit.unr-lcssa:             ; preds = %bb.ap
  %lcmp.mod211.not = icmp eq i64 %xtraiter208, 0
  br i1 %lcmp.mod211.not, label %._crit_edge74.i.i, label %.lr.ph73.i.i.epil.preheader

.lr.ph73.i.i.epil.preheader:                      ; preds = %._crit_edge74.i.i.loopexit.unr-lcssa, %.lr.ph73.preheader.i.i
  %.epil.init210 = phi i64 [ %i.oa, %.lr.ph73.preheader.i.i ], [ %i.om, %._crit_edge74.i.i.loopexit.unr-lcssa ]
  %indvars.iv83.i.i.epil.init = phi i64 [ 1, %.lr.ph73.preheader.i.i ], [ %indvars.iv.next84.i.i.1, %._crit_edge74.i.i.loopexit.unr-lcssa ] ; 3 uses
  %.05871.i.i.epil.init = phi ptr [ %i.nv, %.lr.ph73.preheader.i.i ], [ %.1.i.i.1, %._crit_edge74.i.i.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod212 = trunc i64 %i.ob to i1
  call void @llvm.assume(i1 %lcmp.mod212)
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nz, i64 %indvars.iv83.i.i.epil.init
  %i.ot = load i64, ptr %i.os, align 8, !tbaa !42 ; 2 uses
  %.not.i.i.epil = icmp eq i64 %i.ot, %.epil.init210
  br i1 %.not.i.i.epil, label %._crit_edge74.i.i.loopexit.epilog-lcssa, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph73.i.i.epil.preheader
  %i.ou = getelementptr inbounds nuw i8, ptr %.05871.i.i.epil.init, i64 16 ; 2 uses
  %i.ov = getelementptr inbounds nuw i8, ptr %.05871.i.i.epil.init, i64 24
  %i.ow = trunc nuw nsw i64 %indvars.iv83.i.i.epil.init to i32
  store i32 %i.ow, ptr %i.ov, align 8, !tbaa !45
  store i64 %i.ot, ptr %i.ou, align 8, !tbaa !48
  br label %._crit_edge74.i.i.loopexit.epilog-lcssa

._crit_edge74.i.i.loopexit.epilog-lcssa:          ; preds = %bb.aq, %.lr.ph73.i.i.epil.preheader
  %.1.i.i.epil = phi ptr [ %i.ou, %bb.aq ], [ %.05871.i.i.epil.init, %.lr.ph73.i.i.epil.preheader ]
  %i.ox = getelementptr inbounds nuw i8, ptr %.1.i.i.epil, i64 12
  %i.oy = trunc i64 %indvars.iv83.i.i.epil.init to i32
  %i.oz = add i32 %i.oy, 1
  store i32 %i.oz, ptr %i.ox, align 4, !tbaa !47
  br label %._crit_edge74.i.i

._crit_edge74.i.i:                                ; preds = %._crit_edge74.i.i.loopexit.epilog-lcssa, %._crit_edge74.i.i.loopexit.unr-lcssa, %bb.am
  %i.pa = call ptr @WebPSafeMalloc(i64 noundef %i.b, i64 noundef 8) #8 ; 6 uses
  store ptr %i.pa, ptr %i.ky, align 8, !tbaa !27
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %CostManagerInit.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %._crit_edge74.i.i
  br i1 %i.ly, label %.lr.ph76.preheader.i.i, label %.loopexit158.i

.lr.ph76.preheader.i.i:                           ; preds = %.preheader.i.i
  %wide.trip.count91.i.i = zext nneg i32 %i.a to i64 ; 3 uses
  %min.iters.check173 = icmp ult i32 %i.a, 4
  br i1 %min.iters.check173, label %.lr.ph76.i.i.preheader, label %vector.ph174

vector.ph174:                                     ; preds = %.lr.ph76.preheader.i.i
  %n.vec176 = and i64 %wide.trip.count91.i.i, 2147483644 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph174
  %index178 = phi i64 [ 0, %vector.ph174 ], [ %index.next179, %vector.body177 ] ; 2 uses
  %i.pc = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %index178 ; 2 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 16
  store <2 x i64> splat (i64 9223372036854775807), ptr %i.pc, align 8, !tbaa !42
  store <2 x i64> splat (i64 9223372036854775807), ptr %i.pd, align 8, !tbaa !42
  %index.next179 = add nuw i64 %index178, 4       ; 2 uses
  %i.pe = icmp eq i64 %index.next179, %n.vec176
  br i1 %i.pe, label %middle.block180, label %vector.body177, !llvm.loop !50

middle.block180:                                  ; preds = %vector.body177
  %cmp.n181 = icmp eq i64 %n.vec176, %wide.trip.count91.i.i
  br i1 %cmp.n181, label %.loopexit158.i, label %.lr.ph76.i.i.preheader

.lr.ph76.i.i.preheader:                           ; preds = %.lr.ph76.preheader.i.i, %middle.block180
  %indvars.iv88.i.i.ph = phi i64 [ 0, %.lr.ph76.preheader.i.i ], [ %n.vec176, %middle.block180 ]
  br label %.lr.ph76.i.i

.lr.ph76.i.i:                                     ; preds = %.lr.ph76.i.i.preheader, %.lr.ph76.i.i
  %indvars.iv88.i.i = phi i64 [ %indvars.iv.next89.i.i, %.lr.ph76.i.i ], [ %indvars.iv88.i.i.ph, %.lr.ph76.i.i.preheader ] ; 2 uses
  %i.pf = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %indvars.iv88.i.i
  store i64 9223372036854775807, ptr %i.pf, align 8, !tbaa !42
  %indvars.iv.next89.i.i = add nuw nsw i64 %indvars.iv88.i.i, 1 ; 2 uses
  %exitcond92.not.i.i = icmp eq i64 %indvars.iv.next89.i.i, %wide.trip.count91.i.i
  br i1 %exitcond92.not.i.i, label %.loopexit158.i, label %.lr.ph76.i.i, !llvm.loop !51

CostManagerInit.exit.i:                           ; preds = %._crit_edge74.i.i, %._crit_edge69.i.i
  call fastcc void @CostManagerClear(ptr noundef nonnull %i.m)
  br label %bb.bw

.loopexit158.i:                                   ; preds = %.lr.ph76.i.i, %middle.block180, %.preheader.i.i
  store i16 0, ptr %i.c, align 2, !tbaa !52
  %i.pg = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ph = load i32, ptr %2, align 4, !tbaa !3     ; 7 uses
  br i1 %i.e, label %.thread2.i.i, label %bb.ar

bb.ar:                                            ; preds = %.loopexit158.i
  %.val108.i = load i32, ptr %i.pg, align 8
  %.val107.i = load ptr, ptr %8, align 8
  %i.pi = mul i32 %i.ph, 506832829
  %i.pj = lshr i32 %i.pi, %.val108.i              ; 3 uses
  %i.pk = sext i32 %i.pj to i64
  %i.pl = getelementptr inbounds [4 x i8], ptr %.val107.i, i64 %i.pk ; 2 uses
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !3
  %i.pn = icmp eq i32 %i.pm, %i.ph
  %cond.fr.i.i = freeze i1 %i.pn
  %i.po = icmp sgt i32 %i.pj, -1
  %or.cond.i.i = and i1 %i.po, %cond.fr.i.i
  br i1 %or.cond.i.i, label %bb.as, label %.thread1.i.i

bb.as:                                            ; preds = %bb.ar
  %.val25.i.i = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.pp = add nuw i32 %i.pj, 280
  %i.pq = sext i32 %i.pp to i64
  %i.pr = getelementptr inbounds [4 x i8], ptr %.val25.i.i, i64 %i.pq
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !3
  %i.pt = zext i32 %i.ps to i64
  %i.pu = mul nuw nsw i64 %i.pt, 68
  %i.pv = add nuw nsw i64 %i.pu, 48
  br label %bb.at

.thread1.i.i:                                     ; preds = %bb.ar
  store i32 %i.ph, ptr %i.pl, align 4, !tbaa !3
  br label %.thread2.i.i

.thread2.i.i:                                     ; preds = %.thread1.i.i, %.loopexit158.i
  %i.pw = lshr i32 %i.ph, 24
  %i.px = zext nneg i32 %i.pw to i64
  %i.py = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.px
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !3
  %i.qa = zext i32 %i.pz to i64
  %i.qb = lshr i32 %i.ph, 16
  %i.qc = and i32 %i.qb, 255
  %i.qd = zext nneg i32 %i.qc to i64
  %i.qe = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.qd
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !3
  %i.qg = zext i32 %i.qf to i64
  %i.qh = add nuw nsw i64 %i.qg, %i.qa
  %i.qi = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.qj = lshr i32 %i.ph, 8
  %i.qk = and i32 %i.qj, 255
  %i.ql = zext nneg i32 %i.qk to i64
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.qi, i64 %i.ql
  %i.qn = load i32, ptr %i.qm, align 4, !tbaa !3
  %i.qo = zext i32 %i.qn to i64
  %i.qp = add nuw nsw i64 %i.qh, %i.qo
  %i.qq = and i32 %i.ph, 255
  %i.qr = zext nneg i32 %i.qq to i64
  %i.qs = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.qr
  %i.qt = load i32, ptr %i.qs, align 4, !tbaa !3
  %i.qu = zext i32 %i.qt to i64
  %i.qv = add nuw nsw i64 %i.qp, %i.qu
  %i.qw = mul nuw nsw i64 %i.qv, 82
  %i.qx = add nuw nsw i64 %i.qw, 50
  br label %bb.at

bb.at:                                            ; preds = %.thread2.i.i, %bb.as
  %.pn.in.i.i = phi i64 [ %i.pv, %bb.as ], [ %i.qx, %.thread2.i.i ]
  %.pn.i.i = udiv i64 %.pn.in.i.i, 100            ; 2 uses
  %i.qy = load i64, ptr %i.pa, align 8, !tbaa !42
  %i.qz = icmp sgt i64 %i.qy, %.pn.i.i
  br i1 %i.qz, label %bb.au, label %AddSingleLiteralWithCostModel.exit.i

bb.au:                                            ; preds = %bb.at
  store i64 %.pn.i.i, ptr %i.pa, align 8, !tbaa !42
  store i16 1, ptr %i.c, align 2, !tbaa !52
  br label %AddSingleLiteralWithCostModel.exit.i

AddSingleLiteralWithCostModel.exit.i:             ; preds = %bb.au, %bb.at
  %i.ra = icmp sgt i32 %i.a, 1
  br i1 %i.ra, label %.lr.ph180.i, label %._crit_edge.i

.lr.ph180.i:                                      ; preds = %AddSingleLiteralWithCostModel.exit.i
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.av

bb.av:                                            ; preds = %UpdateCostAtIndex.exit138.i, %.lr.ph180.i
  %indvars.iv.i = phi i64 [ 1, %.lr.ph180.i ], [ %indvars.iv.next.i, %UpdateCostAtIndex.exit138.i ] ; 13 uses
  %.082175.i = phi i32 [ 0, %.lr.ph180.i ], [ %.2.i, %UpdateCostAtIndex.exit138.i ] ; 3 uses
  %.083174.i = phi i32 [ -1, %.lr.ph180.i ], [ %.285.i, %UpdateCostAtIndex.exit138.i ] ; 2 uses
  %.086173.i = phi i64 [ -1, %.lr.ph180.i ], [ %.187.i, %UpdateCostAtIndex.exit138.i ] ; 4 uses
  %.088172.i = phi i32 [ -1, %.lr.ph180.i ], [ %i.ri, %UpdateCostAtIndex.exit138.i ]
  %.089171.i = phi i32 [ -1, %.lr.ph180.i ], [ %i.rh, %UpdateCostAtIndex.exit138.i ] ; 2 uses
  %indvars191.i = trunc i64 %indvars.iv.i to i32  ; 4 uses
  %i.rb = load ptr, ptr %i.ky, align 8, !tbaa !27 ; 5 uses
  %i.rc = add nsw i64 %indvars.iv.i, -1           ; 2 uses
  %i.rd = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %i.rc
  %i.re = load i64, ptr %i.rd, align 8, !tbaa !42 ; 2 uses
  %.val111.i = load ptr, ptr %4, align 8, !tbaa !53 ; 3 uses
  %i.rf = getelementptr inbounds nuw [4 x i8], ptr %.val111.i, i64 %indvars.iv.i
  %i.rg = load i32, ptr %i.rf, align 4, !tbaa !3  ; 2 uses
  %i.rh = lshr i32 %i.rg, 12                      ; 3 uses
  %i.ri = and i32 %i.rg, 4095                     ; 4 uses
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !3  ; 7 uses
  br i1 %i.e, label %.thread2.i118.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.val106.i = load i32, ptr %i.pg, align 8
  %.val.i = load ptr, ptr %8, align 8
  %i.rl = mul i32 %i.rk, 506832829
  %i.rm = lshr i32 %i.rl, %.val106.i              ; 3 uses
  %i.rn = sext i32 %i.rm to i64
  %i.ro = getelementptr inbounds [4 x i8], ptr %.val.i, i64 %i.rn ; 2 uses
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !3
  %i.rq = icmp eq i32 %i.rp, %i.rk
  %cond.fr.i116.i = freeze i1 %i.rq
  %i.rr = icmp sgt i32 %i.rm, -1
  %or.cond.i116.i = and i1 %i.rr, %cond.fr.i116.i
  br i1 %or.cond.i116.i, label %bb.ax, label %.thread1.i117.i

bb.ax:                                            ; preds = %bb.aw
  %.val25.i122.i = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.rs = add nuw i32 %i.rm, 280
  %i.rt = sext i32 %i.rs to i64
  %i.ru = getelementptr inbounds [4 x i8], ptr %.val25.i122.i, i64 %i.rt
  %i.rv = load i32, ptr %i.ru, align 4, !tbaa !3
  %i.rw = zext i32 %i.rv to i64
  %i.rx = mul nuw nsw i64 %i.rw, 68
  %i.ry = add nuw nsw i64 %i.rx, 48
  br label %bb.ay

.thread1.i117.i:                                  ; preds = %bb.aw
  store i32 %i.rk, ptr %i.ro, align 4, !tbaa !3
  br label %.thread2.i118.i

.thread2.i118.i:                                  ; preds = %.thread1.i117.i, %bb.av
  %i.rz = lshr i32 %i.rk, 24
  %i.sa = zext nneg i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.sa
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !3
  %i.sd = zext i32 %i.sc to i64
  %i.se = lshr i32 %i.rk, 16
  %i.sf = and i32 %i.se, 255
  %i.sg = zext nneg i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %i.sg
  %i.si = load i32, ptr %i.sh, align 4, !tbaa !3
  %i.sj = zext i32 %i.si to i64
  %i.sk = add nuw nsw i64 %i.sj, %i.sd
  %i.sl = load ptr, ptr %i.q, align 8, !tbaa !7
  %i.sm = lshr i32 %i.rk, 8
  %i.sn = and i32 %i.sm, 255
  %i.so = zext nneg i32 %i.sn to i64
  %i.sp = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.so
  %i.sq = load i32, ptr %i.sp, align 4, !tbaa !3
  %i.sr = zext i32 %i.sq to i64
  %i.ss = add nuw nsw i64 %i.sk, %i.sr
  %i.st = and i32 %i.rk, 255
  %i.su = zext nneg i32 %i.st to i64
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %i.su
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !3
  %i.sx = zext i32 %i.sw to i64
  %i.sy = add nuw nsw i64 %i.ss, %i.sx
  %i.sz = mul nuw nsw i64 %i.sy, 82
  %i.ta = add nuw nsw i64 %i.sz, 50
  br label %bb.ay

bb.ay:                                            ; preds = %.thread2.i118.i, %bb.ax
  %.pn.in.i119.i = phi i64 [ %i.ry, %bb.ax ], [ %i.ta, %.thread2.i118.i ]
  %.pn.i120.i = udiv i64 %.pn.in.i119.i, 100
  %.0.i121.i = add nsw i64 %.pn.i120.i, %i.re     ; 2 uses
  %i.tb = getelementptr inbounds nuw [8 x i8], ptr %i.rb, i64 %indvars.iv.i ; 2 uses
  %i.tc = load i64, ptr %i.tb, align 8, !tbaa !42
  %i.td = icmp sgt i64 %i.tc, %.0.i121.i
  br i1 %i.td, label %bb.az, label %AddSingleLiteralWithCostModel.exit123.i

bb.az:                                            ; preds = %bb.ay
  store i64 %.0.i121.i, ptr %i.tb, align 8, !tbaa !42
  %i.te = getelementptr inbounds nuw [2 x i8], ptr %i.c, i64 %indvars.iv.i
  store i16 1, ptr %i.te, align 2, !tbaa !52
  br label %AddSingleLiteralWithCostModel.exit123.i

AddSingleLiteralWithCostModel.exit123.i:          ; preds = %bb.az, %bb.ay
  %i.tf = icmp samesign ugt i32 %i.ri, 1
  br i1 %i.tf, label %bb.ba, label %bb.bn

bb.ba:                                            ; preds = %AddSingleLiteralWithCostModel.exit123.i
  %.not101.i = icmp eq i32 %i.rh, %.089171.i
  br i1 %.not101.i, label %bb.be, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.tg = call i32 @VP8LDistanceToPlaneCode(i32 noundef %0, i32 noundef %i.rh) #8 ; 3 uses
  %i.th = icmp slt i32 %i.tg, 512
  br i1 %i.th, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ti = sext i32 %i.tg to i64
  %i.tj = getelementptr inbounds [2 x i8], ptr @kPrefixEncodeCode, i64 %i.ti ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i8, ptr %i.tj, align 2, !tbaa !41
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.tj, i64 1
  %.sroa.4.0.copyload.i.i.i = load i8, ptr %.sroa.4.0..sroa_idx.i.i.i, align 1, !tbaa !41
  %i.tk = sext i8 %.sroa.0.0.copyload.i.i.i to i32
  %i.tl = sext i8 %.sroa.4.0.copyload.i.i.i to i32
  br label %GetDistanceCost.exit.i

bb.bd:                                            ; preds = %bb.bb
  %i.tm = add nsw i32 %i.tg, -1                   ; 2 uses
  %i.tn = call range(i32 1, 33) i32 @llvm.ctlz.i32(i32 range(i32 511, 2147483647) %i.tm, i1 true) ; 2 uses
  %i.to = sub nuw nsw i32 30, %i.tn               ; 2 uses
  %i.tp = lshr i32 %i.tm, %i.to
  %i.tq = and i32 %i.tp, 1
  %i.tr = shl nuw nsw i32 %i.tn, 1
  %i.ts = or disjoint i32 %i.tq, %i.tr
  %i.tt = xor i32 %i.ts, 62
  br label %GetDistanceCost.exit.i

GetDistanceCost.exit.i:                           ; preds = %bb.bd, %bb.bc
  %.02.i.i = phi i32 [ %i.tk, %bb.bc ], [ %i.tt, %bb.bd ]
  %.0.i124.i = phi i32 [ %i.tl, %bb.bc ], [ %i.to, %bb.bd ]
  %i.tu = sext i32 %.02.i.i to i64
  %i.tv = getelementptr inbounds [4 x i8], ptr %i.kd, i64 %i.tu
  %i.tw = load i32, ptr %i.tv, align 4, !tbaa !3
  %i.tx = zext i32 %i.tw to i64
  %i.ty = sext i32 %.0.i124.i to i64
  %i.tz = shl nsw i64 %i.ty, 23
  %i.ua = add nsw i64 %i.tz, %i.tx                ; 2 uses
  %i.ub = add nsw i64 %i.ua, %i.re
  call fastcc void @PushInterval(ptr noundef %i.m, i64 noundef %i.ub, i32 noundef %indvars191.i, i32 noundef %i.ri)
  br label %bb.bn

bb.be:                                            ; preds = %bb.ba
  %.not102.i = icmp eq i32 %.083174.i, 0
  %i.uc = trunc nuw nsw i64 %i.rc to i32
  %i.ud = add i32 %i.uc, -1
  %i.ue = add i32 %i.ud, %.088172.i
  %.1.i = select i1 %.not102.i, i32 %.082175.i, i32 %i.ue ; 4 uses
  %i.uf = add nsw i32 %indvars191.i, -1
  %i.ug = add i32 %i.uf, %i.ri
  %i.uh = icmp sgt i32 %i.ug, %.1.i
  br i1 %i.uh, label %.preheader.i, label %bb.bn

.preheader.i:                                     ; preds = %bb.be
  %i.ui = sext i32 %.1.i to i64                   ; 2 uses
  %.not103168.i = icmp sgt i64 %indvars.iv.i, %i.ui
  br i1 %.not103168.i, label %.loopexit.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.preheader.i
  %i.uj = add nsw i32 %.1.i, 1
  br label %.lr.ph.i

bb.bf:                                            ; preds = %.lr.ph.i
  %.not103.not.i = icmp slt i64 %indvars.iv188.i, %i.ui
  br i1 %.not103.not.i, label %.lr.ph.i, label %.loopexit.loopexit.i, !llvm.loop !55

.lr.ph.i:                                         ; preds = %bb.bf, %.lr.ph.preheader.i
  %indvars.iv188.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next189.i, %bb.bf ] ; 4 uses
  %indvars.iv.next189.i = add nuw nsw i64 %indvars.iv188.i, 1 ; 2 uses
  %i.uk = getelementptr inbounds nuw [4 x i8], ptr %.val111.i, i64 %indvars.iv.next189.i
  %i.ul = load i32, ptr %i.uk, align 4, !tbaa !3  ; 2 uses
  %i.um = lshr i32 %i.ul, 12
  %.not104.i = icmp eq i32 %i.um, %.089171.i
  br i1 %.not104.i, label %bb.bf, label %bb.bg, !llvm.loop !55

bb.bg:                                            ; preds = %.lr.ph.i
  %i.un = trunc nuw nsw i64 %indvars.iv188.i to i32
  %i.uo = and i64 %indvars.iv188.i, 4294967295
  %i.up = getelementptr inbounds nuw [4 x i8], ptr %.val111.i, i64 %i.uo
  %i.uq = load i32, ptr %i.up, align 4, !tbaa !3
  %i.ur = and i32 %i.uq, 4095
  br label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %bb.bf
  %i.us = and i32 %i.ul, 4095
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %bb.bg, %.preheader.i
  %.0161.i = phi i32 [ %i.un, %bb.bg ], [ %indvars191.i, %.preheader.i ], [ %i.uj, %.loopexit.loopexit.i ] ; 8 uses
  %.1149.i = phi i32 [ %i.ur, %bb.bg ], [ 0, %.preheader.i ], [ %i.us, %.loopexit.loopexit.i ] ; 2 uses
  %i.ut = add i32 %.0161.i, -1                    ; 3 uses
  %i.uu = load ptr, ptr %i.m, align 8, !tbaa !33  ; 3 uses
  %.not18.i.i = icmp eq ptr %i.uu, null
  %.pre.i = sext i32 %i.ut to i64                 ; 3 uses
  br i1 %.not18.i.i, label %UpdateCostAtIndex.exit134.i, label %.lr.ph.i125.i

.lr.ph.i125.i:                                    ; preds = %.loopexit.i
  %i.uv = getelementptr inbounds [8 x i8], ptr %i.rb, i64 %.pre.i ; 2 uses
  br label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %UpdateCost.exit.us.i.i, %.lr.ph.i125.i
  %.019.us.i.i = phi ptr [ %i.uz, %UpdateCost.exit.us.i.i ], [ %i.uu, %.lr.ph.i125.i ] ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %.019.us.i.i, i64 8
  %i.ux = load i32, ptr %i.uw, align 8, !tbaa !56
  %.not15.us.i.not.i = icmp slt i32 %i.ux, %.0161.i
  br i1 %.not15.us.i.not.i, label %bb.bh, label %.lr.ph.i127.i

bb.bh:                                            ; preds = %.lr.ph.split.us.i.i
  %i.uy = getelementptr inbounds nuw i8, ptr %.019.us.i.i, i64 32
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !37 ; 2 uses
  %i.va = getelementptr inbounds nuw i8, ptr %.019.us.i.i, i64 12
  %i.vb = load i32, ptr %i.va, align 4, !tbaa !57
  %.not16.us.i.not.i = icmp slt i32 %i.vb, %.0161.i
  br i1 %.not16.us.i.not.i, label %UpdateCost.exit.us.i.i, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.vc = load i64, ptr %.019.us.i.i, align 8, !tbaa !58 ; 2 uses
  %i.vd = load i64, ptr %i.uv, align 8, !tbaa !42
  %i.ve = icmp sgt i64 %i.vd, %i.vc
  br i1 %i.ve, label %bb.bj, label %UpdateCost.exit.us.i.i

bb.bj:                                            ; preds = %bb.bi
  %i.vf = getelementptr inbounds nuw i8, ptr %.019.us.i.i, i64 16
  %i.vg = load i32, ptr %i.vf, align 8, !tbaa !59
  %i.vh = sub nsw i32 %i.ut, %i.vg
  store i64 %i.vc, ptr %i.uv, align 8, !tbaa !42
  %i.vi = trunc i32 %i.vh to i16
  %i.vj = add i16 %i.vi, 1
  %i.vk = load ptr, ptr %i.lc, align 8, !tbaa !36
  %i.vl = getelementptr inbounds [2 x i8], ptr %i.vk, i64 %.pre.i
  store i16 %i.vj, ptr %i.vl, align 2, !tbaa !52
end_hunk_1
begin_hunk_2_@VP8LBackwardReferencesTraceBackwards:bb.a
  %i.xn = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.xo = load i32, ptr %i.xn, align 4, !tbaa !64
  %.not100.i = icmp eq i32 %i.xo, 0
  %i.xp = zext i1 %.not100.i to i32
  br label %bb.bw

bb.bw:                                            ; preds = %._crit_edge.i, %CostManagerInit.exit.i, %CostModelBuild.exit.i
  %.081.i = phi i32 [ 0, %CostModelBuild.exit.i ], [ %i.xp, %._crit_edge.i ], [ 0, %CostManagerInit.exit.i ] ; 2 uses
  br i1 %i.e, label %BackwardReferencesHashChainDistanceOnly.exit, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  call void @VP8LColorCacheClear(ptr noundef nonnull %8) #8
  br label %BackwardReferencesHashChainDistanceOnly.exit

BackwardReferencesHashChainDistanceOnly.exit:     ; preds = %bb.b, %bb.d, %bb.bw, %bb.bx
  %.081157.i = phi i32 [ %.081.i, %bb.bw ], [ %.081.i, %bb.bx ], [ 0, %bb.b ], [ 0, %bb.d ]
  call fastcc void @CostManagerClear(ptr noundef %i.m)
  call void @WebPSafeFree(ptr noundef %i.l) #8
  call void @WebPSafeFree(ptr noundef %i.m) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  %.not = icmp eq i32 %.081157.i, 0
  br i1 %.not, label %bb.ch, label %bb.by

bb.by:                                            ; preds = %BackwardReferencesHashChainDistanceOnly.exit
  %.idx.i = shl nsw i64 %i.b, 1
  %i.xq = getelementptr inbounds i8, ptr %i.c, i64 %.idx.i ; 4 uses
  %.not18.i = icmp slt i32 %i.a, 1
  br i1 %.not18.i, label %TraceBackwards.exit, label %.lr.ph.preheader.i20

.lr.ph.preheader.i20:                             ; preds = %bb.by
  %i.xr = getelementptr inbounds i8, ptr %i.xq, i64 -2
  br label %.lr.ph.i21

.lr.ph.i21:                                       ; preds = %.lr.ph.i21, %.lr.ph.preheader.i20
  %.020.i = phi ptr [ %i.xt, %.lr.ph.i21 ], [ %i.xq, %.lr.ph.preheader.i20 ]
  %.01719.i = phi ptr [ %i.xw, %.lr.ph.i21 ], [ %i.xr, %.lr.ph.preheader.i20 ] ; 2 uses
  %i.xs = load i16, ptr %.01719.i, align 2, !tbaa !52 ; 2 uses
  %i.xt = getelementptr inbounds i8, ptr %.020.i, i64 -2 ; 3 uses
  store i16 %i.xs, ptr %i.xt, align 2, !tbaa !52
  %i.xu = zext i16 %i.xs to i64
  %i.xv = sub nsw i64 0, %i.xu
  %i.xw = getelementptr inbounds [2 x i8], ptr %.01719.i, i64 %i.xv ; 2 uses
  %.not.i22 = icmp ult ptr %i.xw, %i.c
  br i1 %.not.i22, label %TraceBackwards.exit, label %.lr.ph.i21, !llvm.loop !69

TraceBackwards.exit:                              ; preds = %.lr.ph.i21, %bb.by
  %.0.lcssa.i = phi ptr [ %i.xq, %bb.by ], [ %i.xt, %.lr.ph.i21 ] ; 3 uses
  %i.xx = ptrtoint ptr %i.xq to i64
  %i.xy = ptrtoint ptr %.0.lcssa.i to i64
  %i.xz = sub i64 %i.xx, %i.xy
  %i.ya = lshr exact i64 %i.xz, 1                 ; 3 uses
  %i.yb = trunc i64 %i.ya to i32                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  br i1 %i.e, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %TraceBackwards.exit
  %i.yc = call i32 @VP8LColorCacheInit(ptr noundef nonnull %7, i32 noundef %3) #8
  %.not.i24 = icmp eq i32 %i.yc, 0
  br i1 %.not.i24, label %BackwardReferencesHashChainFollowChosenPath.exit, label %.thread.i

bb.ca:                                            ; preds = %TraceBackwards.exit
  call void @VP8LClearBackwardRefs(ptr noundef %6) #8
  %i.yd = icmp sgt i32 %i.yb, 0
  br i1 %i.yd, label %.lr.ph76.split.us.preheader.i, label %._crit_edge.i33.thread

._crit_edge.i33.thread:                           ; preds = %bb.ca
  %i.ye = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !64
  %.not52.i36 = icmp eq i32 %i.yf, 0
  br label %BackwardReferencesHashChainFollowChosenPath.exit

.thread.i:                                        ; preds = %bb.bz
  call void @VP8LClearBackwardRefs(ptr noundef %6) #8
  %i.yg = icmp sgt i32 %i.yb, 0
  br i1 %i.yg, label %.lr.ph76.split.preheader.i, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %.thread.i
  %i.yh = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !64
  %.not5294.i = icmp eq i32 %i.yi, 0
  br label %bb.cg

.lr.ph76.split.preheader.i:                       ; preds = %.thread.i
  %i.yj = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 4 uses
  %wide.trip.count83.i = and i64 %i.ya, 2147483647
  br label %.lr.ph76.split.i

.lr.ph76.split.us.preheader.i:                    ; preds = %bb.ca
  %wide.trip.count88.i = and i64 %i.ya, 2147483647
  br label %.lr.ph76.split.us.i

.lr.ph76.split.us.i:                              ; preds = %bb.cc, %.lr.ph76.split.us.preheader.i
  %indvars.iv85.i = phi i64 [ 0, %.lr.ph76.split.us.preheader.i ], [ %indvars.iv.next86.i, %bb.cc ] ; 2 uses
  %.04273.us.i = phi i32 [ 0, %.lr.ph76.split.us.preheader.i ], [ %.1.us.i, %bb.cc ] ; 3 uses
  %i.yk = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i, i64 %indvars.iv85.i
  %i.yl = load i16, ptr %i.yk, align 2, !tbaa !52 ; 3 uses
  %i.ym = zext i16 %i.yl to i32
  %.not54.us.i = icmp eq i16 %i.yl, 1
  br i1 %.not54.us.i, label %.thread67.us.i, label %bb.cb

bb.cb:                                            ; preds = %.lr.ph76.split.us.i
  %.val60.us.i = load ptr, ptr %4, align 8, !tbaa !53
  %i.yn = zext nneg i32 %.04273.us.i to i64
  %i.yo = getelementptr inbounds nuw [4 x i8], ptr %.val60.us.i, i64 %i.yn
  %i.yp = load i32, ptr %i.yo, align 4, !tbaa !3
  %i.yq = lshr i32 %i.yp, 12
  %.sroa.3.0.insert.ext.i.us.i = zext nneg i32 %i.yq to i64
  %.sroa.3.0.insert.shift.i.us.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.us.i, 32
  %.sroa.22.0.insert.ext.i.us.i = zext i16 %i.yl to i64
  %.sroa.22.0.insert.shift.i.us.i = shl nuw nsw i64 %.sroa.22.0.insert.ext.i.us.i, 16
  %.sroa.22.0.insert.insert.i.us.i = or disjoint i64 %.sroa.3.0.insert.shift.i.us.i, %.sroa.22.0.insert.shift.i.us.i
  %.sroa.0.0.insert.insert.i.us.i = or disjoint i64 %.sroa.22.0.insert.insert.i.us.i, 2
  br label %bb.cc

.thread67.us.i:                                   ; preds = %.lr.ph76.split.us.i
  %i.yr = zext nneg i32 %.04273.us.i to i64
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yr
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !3
  %.sroa.3.0.insert.ext.i64.us.i = zext i32 %i.yt to i64
  %.sroa.3.0.insert.shift.i65.us.i = shl nuw i64 %.sroa.3.0.insert.ext.i64.us.i, 32
  %.sroa.21.0.insert.insert.i.us.i = or disjoint i64 %.sroa.3.0.insert.shift.i65.us.i, 65536
  br label %bb.cc

bb.cc:                                            ; preds = %.thread67.us.i, %bb.cb
  %.sroa.0.0.insert.insert.i.us.sink.i = phi i64 [ %.sroa.0.0.insert.insert.i.us.i, %bb.cb ], [ %.sroa.21.0.insert.insert.i.us.i, %.thread67.us.i ]
  call void @VP8LBackwardRefsCursorAdd(ptr noundef %6, i64 %.sroa.0.0.insert.insert.i.us.sink.i) #8
  %.1.us.i = add nuw nsw i32 %.04273.us.i, %i.ym
  %indvars.iv.next86.i = add nuw nsw i64 %indvars.iv85.i, 1 ; 2 uses
  %exitcond89.not.i = icmp eq i64 %indvars.iv.next86.i, %wide.trip.count88.i
  br i1 %exitcond89.not.i, label %._crit_edge.i33, label %.lr.ph76.split.us.i, !llvm.loop !70

.lr.ph76.split.i:                                 ; preds = %.loopexit.i31, %.lr.ph76.split.preheader.i
  %indvars.iv80.i = phi i64 [ 0, %.lr.ph76.split.preheader.i ], [ %indvars.iv.next81.i, %.loopexit.i31 ] ; 2 uses
  %.04273.i = phi i32 [ 0, %.lr.ph76.split.preheader.i ], [ %.1.i32, %.loopexit.i31 ] ; 3 uses
  %i.yu = getelementptr inbounds nuw [2 x i8], ptr %.0.lcssa.i, i64 %indvars.iv80.i
  %i.yv = load i16, ptr %i.yu, align 2, !tbaa !52 ; 5 uses
  %i.yw = zext i16 %i.yv to i32
  %.not54.i = icmp eq i16 %i.yv, 1
  br i1 %.not54.i, label %bb.ce, label %.preheader.i25

.preheader.i25:                                   ; preds = %.lr.ph76.split.i
  %.val60.i = load ptr, ptr %4, align 8, !tbaa !53
  %i.yx = zext nneg i32 %.04273.i to i64          ; 2 uses
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.val60.i, i64 %i.yx
  %i.yz = load i32, ptr %i.yy, align 4, !tbaa !3
  %i.za = lshr i32 %i.yz, 12
  %.sroa.3.0.insert.ext.i.i = zext nneg i32 %i.za to i64
  %.sroa.3.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.3.0.insert.ext.i.i, 32
  %.sroa.22.0.insert.ext.i.i = zext i16 %i.yv to i64 ; 3 uses
  %.sroa.22.0.insert.shift.i.i = shl nuw nsw i64 %.sroa.22.0.insert.ext.i.i, 16
  %.sroa.22.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i.i, %.sroa.22.0.insert.shift.i.i
  %.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.22.0.insert.insert.i.i, 2
  call void @VP8LBackwardRefsCursorAdd(ptr noundef %6, i64 %.sroa.0.0.insert.insert.i.i) #8
  %.not77.i = icmp eq i16 %i.yv, 0
  br i1 %.not77.i, label %.loopexit.i31, label %.lr.ph.i26

.lr.ph.i26:                                       ; preds = %.preheader.i25
  %.val58.i = load ptr, ptr %7, align 8, !tbaa !71 ; 3 uses
  %invariant.gep.i = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.yx ; 3 uses
  %xtraiter215 = and i64 %.sroa.22.0.insert.ext.i.i, 1
  %unroll_iter218 = and i64 %.sroa.22.0.insert.ext.i.i, 65534
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cd, %.lr.ph.i26
  %indvars.iv.i28 = phi i64 [ 0, %.lr.ph.i26 ], [ %indvars.iv.next.i29.1, %bb.cd ] ; 3 uses
  %niter219 = phi i64 [ 0, %.lr.ph.i26 ], [ %niter219.next.1, %bb.cd ]
  %gep.i = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i28
  %i.zb = load i32, ptr %gep.i, align 4, !tbaa !3 ; 2 uses
  %.val59.i = load i32, ptr %i.yj, align 8, !tbaa !73
  %i.zc = mul i32 %i.zb, 506832829
  %i.zd = lshr i32 %i.zc, %.val59.i
  %i.ze = sext i32 %i.zd to i64
  %i.zf = getelementptr inbounds [4 x i8], ptr %.val58.i, i64 %i.ze
  store i32 %i.zb, ptr %i.zf, align 4, !tbaa !3
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.i28
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %i.zg, i64 4
  %i.zh = load i32, ptr %gep.i.1, align 4, !tbaa !3 ; 2 uses
  %.val59.i.1 = load i32, ptr %i.yj, align 8, !tbaa !73
  %i.zi = mul i32 %i.zh, 506832829
  %i.zj = lshr i32 %i.zi, %.val59.i.1
  %i.zk = sext i32 %i.zj to i64
  %i.zl = getelementptr inbounds [4 x i8], ptr %.val58.i, i64 %i.zk
  store i32 %i.zh, ptr %i.zl, align 4, !tbaa !3
  %indvars.iv.next.i29.1 = add nuw nsw i64 %indvars.iv.i28, 2 ; 2 uses
  %niter219.next.1 = add i64 %niter219, 2         ; 2 uses
  %niter219.ncmp.1 = icmp eq i64 %niter219.next.1, %unroll_iter218
  br i1 %niter219.ncmp.1, label %.loopexit.i31.loopexit.unr-lcssa, label %bb.cd, !llvm.loop !74

bb.ce:                                            ; preds = %.lr.ph76.split.i
  %i.zm = zext nneg i32 %.04273.i to i64
  %i.zn = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.zm ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !3  ; 3 uses
  %.val.i34 = load ptr, ptr %7, align 8, !tbaa !71
  %.val55.i = load i32, ptr %i.yj, align 8, !tbaa !73
  %i.zp = mul i32 %i.zo, 506832829
  %i.zq = lshr i32 %i.zp, %.val55.i               ; 3 uses
  %i.zr = sext i32 %i.zq to i64
  %i.zs = getelementptr inbounds [4 x i8], ptr %.val.i34, i64 %i.zr ; 2 uses
  %i.zt = load i32, ptr %i.zs, align 4, !tbaa !3
  %i.zu = icmp eq i32 %i.zt, %i.zo
  %cond.fr.i = freeze i1 %i.zu
  %i.zv = icmp sgt i32 %i.zq, -1
  %or.cond.i35 = and i1 %i.zv, %cond.fr.i
  br i1 %or.cond.i35, label %bb.cf, label %.thread66.i

.thread66.i:                                      ; preds = %bb.ce
  store i32 %i.zo, ptr %i.zs, align 4, !tbaa !3
  %i.zw = load i32, ptr %i.zn, align 4, !tbaa !3
  br label %bb.cf

bb.cf:                                            ; preds = %.thread66.i, %bb.ce
  %.sink97.i = phi i32 [ %i.zw, %.thread66.i ], [ %i.zq, %bb.ce ]
  %.sink.i = phi i64 [ 65536, %.thread66.i ], [ 65537, %bb.ce ]
  %.sroa.3.0.insert.ext.i64.i = zext i32 %.sink97.i to i64
  %.sroa.3.0.insert.shift.i65.i = shl nuw i64 %.sroa.3.0.insert.ext.i64.i, 32
  %.sroa.21.0.insert.insert.i.i = or disjoint i64 %.sroa.3.0.insert.shift.i65.i, %.sink.i
  call void @VP8LBackwardRefsCursorAdd(ptr noundef %6, i64 %.sroa.21.0.insert.insert.i.i) #8
  br label %.loopexit.i31

.loopexit.i31.loopexit.unr-lcssa:                 ; preds = %bb.cd
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.loopexit.i31, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.i31.loopexit.unr-lcssa
  %lcmp.mod217 = trunc i16 %i.yv to i1
  call void @llvm.assume(i1 %lcmp.mod217)
  %gep.i.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.i, i64 %indvars.iv.next.i29.1
  %i.zx = load i32, ptr %gep.i.epil, align 4, !tbaa !3 ; 2 uses
  %.val59.i.epil = load i32, ptr %i.yj, align 8, !tbaa !73
  %i.zy = mul i32 %i.zx, 506832829
  %i.zz = lshr i32 %i.zy, %.val59.i.epil
  %i.aaa = sext i32 %i.zz to i64
  %i.aab = getelementptr inbounds [4 x i8], ptr %.val58.i, i64 %i.aaa
  store i32 %i.zx, ptr %i.aab, align 4, !tbaa !3
  br label %.loopexit.i31

.loopexit.i31:                                    ; preds = %.epil.preheader, %.loopexit.i31.loopexit.unr-lcssa, %bb.cf, %.preheader.i25
  %.1.i32 = add nuw nsw i32 %.04273.i, %i.yw
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1 ; 2 uses
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %._crit_edge.i33, label %.lr.ph76.split.i, !llvm.loop !70

._crit_edge.i33:                                  ; preds = %.loopexit.i31, %bb.cc
  %i.aac = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.aad = load i32, ptr %i.aac, align 4, !tbaa !64
  %.not52.i = icmp eq i32 %i.aad, 0               ; 2 uses
  br i1 %i.e, label %BackwardReferencesHashChainFollowChosenPath.exit, label %bb.cg

bb.cg:                                            ; preds = %._crit_edge.i33, %._crit_edge.thread.i
  %.not5295.i = phi i1 [ %.not5294.i, %._crit_edge.thread.i ], [ %.not52.i, %._crit_edge.i33 ]
  call void @VP8LColorCacheClear(ptr noundef nonnull %7) #8
  br label %BackwardReferencesHashChainFollowChosenPath.exit

BackwardReferencesHashChainFollowChosenPath.exit: ; preds = %._crit_edge.i33.thread, %bb.bz, %._crit_edge.i33, %bb.cg
  %.04371.shrunk.i = phi i1 [ %.not52.i, %._crit_edge.i33 ], [ %.not5295.i, %bb.cg ], [ false, %bb.bz ], [ %.not52.i36, %._crit_edge.i33.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  %spec.select = zext i1 %.04371.shrunk.i to i32
  br label %bb.ch

bb.ch:                                            ; preds = %BackwardReferencesHashChainFollowChosenPath.exit, %BackwardReferencesHashChainDistanceOnly.exit, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %BackwardReferencesHashChainDistanceOnly.exit ], [ %spec.select, %BackwardReferencesHashChainFollowChosenPath.exit ]
  call void @WebPSafeFree(ptr noundef %i.c) #8
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @WebPSafeMalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @WebPSafeFree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @WebPSafeCalloc(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @VP8LColorCacheInit(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @VP8LDistanceToPlaneCode(i32 noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @PushInterval(ptr noundef nonnull captures(address) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32
  %i.c = icmp slt i32 %3, 10
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = icmp sgt i32 %3, 0
  br i1 %i.d, label %.lr.ph140, label %.critedge

.lr.ph140:                                        ; preds = %.preheader
  %i.e = add nsw i32 %3, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32792
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32800
  %i.j = sext i32 %2 to i64                       ; 2 uses
  %i.k = sext i32 %i.e to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph140, %bb.d
  %indvars.iv = phi i64 [ %i.j, %.lr.ph140 ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %i.l = sub nsw i64 %indvars.iv, %i.j            ; 2 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8, !tbaa !42
  %i.o = add nsw i64 %i.n, %1                     ; 2 uses
  %i.p = getelementptr inbounds [8 x i8], ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !42
  %i.r = icmp sgt i64 %i.q, %i.o
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i64 %i.o, ptr %i.p, align 8, !tbaa !42
  %i.s = trunc i64 %i.l to i16
  %i.t = add i16 %i.s, 1
  %i.u = load ptr, ptr %i.i, align 8, !tbaa !36
  %i.v = getelementptr inbounds [2 x i8], ptr %i.u, i64 %indvars.iv
  store i16 %i.t, ptr %i.v, align 2, !tbaa !52
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.w = icmp slt i64 %indvars.iv.next, %i.k
  br i1 %i.w, label %bb.b, label %.critedge, !llvm.loop !75

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !40
  %.not141 = icmp eq i64 %i.y, 0
  br i1 %.not141, label %.critedge, label %.lr.ph137

.lr.ph137:                                        ; preds = %bb.e
  %i.z = load ptr, ptr %0, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32808
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 33168
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph137, %.critedge2
  %.0136 = phi i64 [ 0, %.lr.ph137 ], [ %i.bk, %.critedge2 ] ; 2 uses
  %.090135 = phi ptr [ %i.z, %.lr.ph137 ], [ %.2, %.critedge2 ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %.0136 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !45 ; 2 uses
  %i.ag = icmp slt i32 %i.af, %3
  br i1 %i.ag, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.ah = add nsw i32 %i.af, %2                   ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !47
  %. = tail call i32 @llvm.smin.i32(i32 %i.aj, i32 %3)
  %i.ak = add nsw i32 %., %2                      ; 6 uses
  %i.al = load i64, ptr %i.ad, align 8, !tbaa !48
  %i.am = add nsw i64 %i.al, %1                   ; 3 uses
  %.not125 = icmp eq ptr %.090135, null
  br i1 %.not125, label %.critedge2, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.u
  %.1127 = phi ptr [ %i.ar, %bb.u ], [ %.090135, %bb.g ] ; 15 uses
  %.093126 = phi i32 [ %.194, %bb.u ], [ %i.ah, %bb.g ] ; 10 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.1127, i64 8
  %i.ao = load i32, ptr %i.an, align 8, !tbaa !56 ; 3 uses
  %i.ap = icmp slt i32 %i.ao, %i.ak
  br i1 %i.ap, label %bb.h, label %.critedge2

bb.h:                                             ; preds = %.lr.ph
  %i.aq = getelementptr inbounds nuw i8, ptr %.1127, i64 32 ; 3 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !37 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.1127, i64 12 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !57 ; 6 uses
  %.not105 = icmp slt i32 %.093126, %i.at
  br i1 %.not105, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.au = load i64, ptr %.1127, align 8, !tbaa !58 ; 2 uses
  %.not106 = icmp slt i64 %i.am, %i.au
  br i1 %.not106, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @InsertInterval(ptr noundef %0, ptr noundef nonnull %.1127, i64 noundef %i.am, i32 noundef %2, i32 noundef %.093126, i32 noundef %i.ao)
  %.not109 = icmp slt i32 %i.at, %i.ak
  br i1 %.not109, label %bb.u, label %.critedge2

bb.k:                                             ; preds = %bb.i
  %.not107 = icmp sgt i32 %.093126, %i.ao
  %i.av = icmp slt i32 %i.ak, %i.at               ; 2 uses
  br i1 %.not107, label %bb.s, label %bb.l

bb.l:                                             ; preds = %bb.k
  br i1 %i.av, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = getelementptr inbounds nuw i8, ptr %.1127, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !61 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ax, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
end_hunk_2
