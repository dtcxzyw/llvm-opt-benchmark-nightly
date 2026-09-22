Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/conv2_depthwise?download=true
inline.NumInlined: 226
inline.NumDeleted: 126
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@"_ZNSt17_Function_handlerIFvRKN2cv5RangeEEZNS0_3dnn12cpu_baselineL16depthwiseConv32fEPKvS8_PvRKNS5_14dnn5_v202606059ConvStateES8_PKfSF_E3$_0E9_M_invokeERKSt9_Any_dataS3_":bb.a
  br i1 %i.iq, label %.lr.ph412.i.i.i, label %._crit_edge413.i.i.i

.lr.ph412.i.i.i:                                  ; preds = %.preheader376.i.i.i
  br i1 %i.ir, label %.lr.ph406.us.i.i.i, label %.lr.ph412.split.i.i.i

.lr.ph406.us.i.i.i:                               ; preds = %.lr.ph412.i.i.i, %bb.dd
  %.0228411.us.i.i.i = phi i32 [ %i.aut, %bb.dd ], [ 0, %.lr.ph412.i.i.i ] ; 4 uses
  %.1234410.us.i.i.i = phi ptr [ %i.aur, %bb.dd ], [ %.0233430.i.i.i, %.lr.ph412.i.i.i ]
  %.1237409.us.i.i.i = phi ptr [ %i.auq, %bb.dd ], [ %.0236429.i.i.i, %.lr.ph412.i.i.i ] ; 7 uses
  %i.ok = mul nsw i32 %.0228411.us.i.i.i, %i.ea
  %i.ol = sub nsw i32 %i.ok, %i.eg                ; 2 uses
  %.not281.us.i.i.i = icmp sge i32 %.0228411.us.i.i.i, %i.em
  %i.om = icmp slt i32 %.0228411.us.i.i.i, %i.eo
  %or.cond.not365.not368.us.i.i.i = select i1 %.not281.us.i.i.i, i1 %i.om, i1 false
  %i.on = mul nsw i32 %i.ol, %i.df
  %scevgep = getelementptr i8, ptr %.1237409.us.i.i.i, i64 %i.jz ; 3 uses
  %scevgep131 = getelementptr i8, ptr %.1237409.us.i.i.i, i64 %i.kf
  %i.oo = insertelement <4 x ptr> poison, ptr %.1237409.us.i.i.i, i64 0
  %i.op = shufflevector <4 x ptr> %i.oo, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.oq = insertelement <4 x ptr> poison, ptr %scevgep131, i64 0
  %i.or = shufflevector <4 x ptr> %i.oq, <4 x ptr> poison, <4 x i32> zeroinitializer
  %bound0 = icmp ult ptr %.1237409.us.i.i.i, %scevgep69
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %.1237409.us.i.i.i, %scevgep70
  %bound173 = icmp ult ptr %i.b, %scevgep
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %bound076 = icmp ult ptr %.1237409.us.i.i.i, %scevgep71
  %bound177 = icmp ult ptr %i.c, %scevgep
  %found.conflict78 = and i1 %bound076, %bound177
  %conflict.rdx80 = or i1 %conflict.rdx, %found.conflict78
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit375.us.i.i.i, %.lr.ph406.us.i.i.i
  %.0227405.us.i.i.i = phi i32 [ 0, %.lr.ph406.us.i.i.i ], [ %i.aup, %.loopexit375.us.i.i.i ] ; 4 uses
  %.2235403.us.i.i.i = phi ptr [ %.1234410.us.i.i.i, %.lr.ph406.us.i.i.i ], [ %i.aur, %.loopexit375.us.i.i.i ] ; 44 uses
  %.2238401.us.i.i.i = phi ptr [ %.1237409.us.i.i.i, %.lr.ph406.us.i.i.i ], [ %i.auq, %.loopexit375.us.i.i.i ] ; 49 uses
  %.not282.us.i.i.i = icmp sge i32 %.0227405.us.i.i.i, %i.eq
  %or.cond289.not366.us.i.i.i = select i1 %or.cond.not365.not368.us.i.i.i, i1 %.not282.us.i.i.i, i1 false
  %i.os = icmp slt i32 %.0227405.us.i.i.i, %i.es
  %or.cond290.us.i.i.i = select i1 %or.cond289.not366.us.i.i.i, i1 %i.os, i1 false
  %i.ot = select i1 %or.cond290.us.i.i.i, i32 %i.eu, i32 %i.ds
  %i.ou = mul nsw i32 %.0227405.us.i.i.i, %i.ec
  %i.ov = sub nsw i32 %i.ou, %i.ei                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %.2238401.us.i.i.i, i8 0, i64 %i.iu, i1 false)
  %i.ow = add nsw i32 %i.ov, %i.on
  %i.ox = mul nsw i32 %i.ow, %i.dh
  %i.oy = sub i32 %i.ox, %i.ek
  br label %bb.cy

bb.cy:                                            ; preds = %.loopexit371.us.i.i.i, %bb.cx
  %.0226.us.i.i.i = phi i32 [ 0, %bb.cx ], [ %.2.lcssa.us.i.i.i, %.loopexit371.us.i.i.i ] ; 3 uses
  %.0225.us.i.i.i = phi i32 [ %i.ot, %bb.cx ], [ %i.ds, %.loopexit371.us.i.i.i ] ; 4 uses
  %i.oz = icmp sge i32 %.0226.us.i.i.i, %.0225.us.i.i.i
  %brmerge.i.i.i = select i1 %i.oz, i1 true, i1 %i.iv
  %.0226.us.mux.i.i.i = tail call i32 @llvm.smax.i32(i32 %.0226.us.i.i.i, i32 %.0225.us.i.i.i)
  br i1 %brmerge.i.i.i, label %._crit_edge387.us.i.i.i, label %.lr.ph383.us.us.preheader.i.i.i

.lr.ph383.us.us.preheader.i.i.i:                  ; preds = %bb.cy
  %i.pa = zext nneg i32 %.0226.us.i.i.i to i64
  %wide.trip.count462.i.i.i = zext nneg i32 %.0225.us.i.i.i to i64
  br label %.lr.ph383.us.us.i.i.i

.lr.ph383.us.us.i.i.i:                            ; preds = %._crit_edge.us.us.i.i.i, %.lr.ph383.us.us.preheader.i.i.i
  %indvars.iv459.i.i.i = phi i64 [ %i.pa, %.lr.ph383.us.us.preheader.i.i.i ], [ %indvars.iv.next460.i.i.i, %._crit_edge.us.us.i.i.i ] ; 3 uses
  %i.pb = trunc i64 %indvars.iv459.i.i.i to i32
  %i.pc = mul i32 %i.ee, %i.pb
  %i.pd = sub i32 %i.pc, %i.ek
  %.idx.i.i = shl nuw nsw i64 %indvars.iv459.i.i.i, 5
  %i.pe = getelementptr inbounds nuw i8, ptr %.2238401.us.i.i.i, i64 %.idx.i.i ; 9 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 4 ; 2 uses
  %i.pg = getelementptr inbounds nuw i8, ptr %i.pe, i64 8 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pe, i64 12 ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 16 ; 2 uses
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 20 ; 2 uses
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 24 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 28 ; 2 uses
  br label %bb.cz

bb.cz:                                            ; preds = %.loopexit.us.us.i.i.i, %.lr.ph383.us.us.i.i.i
  %indvars.iv454.i.i.i = phi i64 [ %indvars.iv.next455.i.i.i, %.loopexit.us.us.i.i.i ], [ 0, %.lr.ph383.us.us.i.i.i ] ; 3 uses
  %.idx.i.i.i = mul nuw nsw i64 %indvars.iv454.i.i.i, 12
  %i.pm = getelementptr inbounds nuw i8, ptr %i.fh, i64 %.idx.i.i.i ; 3 uses
  %i.pn = load i32, ptr %i.pm, align 4, !tbaa !21
  %i.po = add nsw i32 %i.pn, %i.ol                ; 2 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 4
  %i.pq = load i32, ptr %i.pp, align 4, !tbaa !21
  %i.pr = add nsw i32 %i.pq, %i.ov                ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pm, i64 8
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !21
  %i.pu = add nsw i32 %i.pt, %i.pd                ; 2 uses
  %.not284.us.us.i.i.i = icmp ult i32 %i.po, %i.dg
  %.not285.us.us.i.i.i = icmp ult i32 %i.pr, %i.df
  %or.cond291.us.us.i.i.i = select i1 %.not284.us.us.i.i.i, i1 %.not285.us.us.i.i.i, i1 false
  %.not286.us.us.i.i.i = icmp ult i32 %i.pu, %i.dh
  %or.cond292.us.us.i.i.i = select i1 %or.cond291.us.us.i.i.i, i1 %.not286.us.us.i.i.i, i1 false
  br i1 %or.cond292.us.us.i.i.i, label %.loopexit.us.us.loopexit.i.i.i, label %.loopexit.us.us.i.i.i

.loopexit.us.us.loopexit.i.i.i:                   ; preds = %bb.cz
  %i.pv = mul nsw i32 %i.po, %i.df
  %i.pw = add nsw i32 %i.pv, %i.pr
  %i.px = mul nsw i32 %i.pw, %i.dh
  %i.py = add nsw i32 %i.px, %i.pu
  %i.pz = shl nsw i32 %i.py, 3
  %i.qa = sext i32 %i.pz to i64
  %i.qb = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.qa ; 8 uses
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !67
  %.idx2.i.i = shl nuw nsw i64 %indvars.iv454.i.i.i, 5
  %i.qd = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx2.i.i ; 8 uses
  %i.qe = load float, ptr %i.qd, align 4, !tbaa !67
  %i.qf = load float, ptr %i.pe, align 4, !tbaa !67
  %i.qg = tail call float @llvm.fmuladd.f32(float %i.qc, float %i.qe, float %i.qf)
  store float %i.qg, ptr %i.pe, align 4, !tbaa !67
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qb, i64 4
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !67
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qd, i64 4
  %i.qk = load float, ptr %i.qj, align 4, !tbaa !67
  %i.ql = load float, ptr %i.pf, align 4, !tbaa !67
  %i.qm = tail call float @llvm.fmuladd.f32(float %i.qi, float %i.qk, float %i.ql)
  store float %i.qm, ptr %i.pf, align 4, !tbaa !67
  %i.qn = getelementptr inbounds nuw i8, ptr %i.qb, i64 8
  %i.qo = load float, ptr %i.qn, align 4, !tbaa !67
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !67
  %i.qr = load float, ptr %i.pg, align 4, !tbaa !67
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.qq, float %i.qr)
  store float %i.qs, ptr %i.pg, align 4, !tbaa !67
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qb, i64 12
  %i.qu = load float, ptr %i.qt, align 4, !tbaa !67
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qd, i64 12
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !67
  %i.qx = load float, ptr %i.ph, align 4, !tbaa !67
  %i.qy = tail call float @llvm.fmuladd.f32(float %i.qu, float %i.qw, float %i.qx)
  store float %i.qy, ptr %i.ph, align 4, !tbaa !67
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qb, i64 16
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !67
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qd, i64 16
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !67
  %i.rd = load float, ptr %i.pi, align 4, !tbaa !67
  %i.re = tail call float @llvm.fmuladd.f32(float %i.ra, float %i.rc, float %i.rd)
  store float %i.re, ptr %i.pi, align 4, !tbaa !67
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qb, i64 20
  %i.rg = load float, ptr %i.rf, align 4, !tbaa !67
  %i.rh = getelementptr inbounds nuw i8, ptr %i.qd, i64 20
  %i.ri = load float, ptr %i.rh, align 4, !tbaa !67
  %i.rj = load float, ptr %i.pj, align 4, !tbaa !67
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.rg, float %i.ri, float %i.rj)
  store float %i.rk, ptr %i.pj, align 4, !tbaa !67
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qb, i64 24
  %i.rm = load float, ptr %i.rl, align 4, !tbaa !67
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qd, i64 24
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !67
  %i.rp = load float, ptr %i.pk, align 4, !tbaa !67
  %i.rq = tail call float @llvm.fmuladd.f32(float %i.rm, float %i.ro, float %i.rp)
  store float %i.rq, ptr %i.pk, align 4, !tbaa !67
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qb, i64 28
  %i.rs = load float, ptr %i.rr, align 4, !tbaa !67
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qd, i64 28
  %i.ru = load float, ptr %i.rt, align 4, !tbaa !67
  %i.rv = load float, ptr %i.pl, align 4, !tbaa !67
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.rs, float %i.ru, float %i.rv)
  store float %i.rw, ptr %i.pl, align 4, !tbaa !67
  br label %.loopexit.us.us.i.i.i

.loopexit.us.us.i.i.i:                            ; preds = %.loopexit.us.us.loopexit.i.i.i, %bb.cz
  %indvars.iv.next455.i.i.i = add nuw nsw i64 %indvars.iv454.i.i.i, 1 ; 2 uses
  %exitcond458.not.i.i.i = icmp eq i64 %indvars.iv.next455.i.i.i, %wide.trip.count457.i.i.i
  br i1 %exitcond458.not.i.i.i, label %._crit_edge.us.us.i.i.i, label %bb.cz, !llvm.loop !80

._crit_edge.us.us.i.i.i:                          ; preds = %.loopexit.us.us.i.i.i
  %indvars.iv.next460.i.i.i = add nuw nsw i64 %indvars.iv459.i.i.i, 1 ; 2 uses
  %exitcond463.not.i.i.i = icmp eq i64 %indvars.iv.next460.i.i.i, %wide.trip.count462.i.i.i
  br i1 %exitcond463.not.i.i.i, label %._crit_edge387.us.i.i.i, label %.lr.ph383.us.us.i.i.i, !llvm.loop !81

._crit_edge387.us.i.i.i:                          ; preds = %._crit_edge.us.us.i.i.i, %bb.cy
  %.1.lcssa.us.i.i.i = phi i32 [ %.0226.us.mux.i.i.i, %bb.cy ], [ %.0225.us.i.i.i, %._crit_edge.us.us.i.i.i ] ; 4 uses
  %i.rx = icmp eq i32 %.1.lcssa.us.i.i.i, %i.ds
  br i1 %i.rx, label %bb.db, label %.preheader370.us.i.i.i

.preheader370.us.i.i.i:                           ; preds = %._crit_edge387.us.i.i.i
  %i.ry = icmp sge i32 %.1.lcssa.us.i.i.i, %i.ew
  %brmerge599.i.i.i = select i1 %i.ry, i1 true, i1 %i.iv
  %.1.lcssa.us.mux.i.i.i = tail call i32 @llvm.smax.i32(i32 %.1.lcssa.us.i.i.i, i32 %i.ew)
  br i1 %brmerge599.i.i.i, label %.loopexit371.us.i.i.i, label %.lr.ph391.us.us.preheader.i.i.i

.lr.ph391.us.us.preheader.i.i.i:                  ; preds = %.preheader370.us.i.i.i
  %i.rz = zext nneg i32 %.1.lcssa.us.i.i.i to i64
  br label %.lr.ph391.us.us.i.i.i

.lr.ph391.us.us.i.i.i:                            ; preds = %._crit_edge.us395.us.i.i.i, %.lr.ph391.us.us.preheader.i.i.i
  %indvars.iv473.i.i.i = phi i64 [ %i.rz, %.lr.ph391.us.us.preheader.i.i.i ], [ %indvars.iv.next474.i.i.i, %._crit_edge.us395.us.i.i.i ] ; 3 uses
  %i.sa = trunc i64 %indvars.iv473.i.i.i to i32
  %i.sb = mul i32 %i.ee, %i.sa
  %i.sc = add i32 %i.oy, %i.sb
  %i.sd = shl nsw i32 %i.sc, 3
  %i.se = sext i32 %i.sd to i64
  %i.sf = getelementptr inbounds [4 x i8], ptr %.0239427.i.i.i, i64 %i.se
  %.idx3.i.i.a = shl nuw nsw i64 %indvars.iv473.i.i.i, 5
  %i.sg = getelementptr inbounds nuw i8, ptr %.2238401.us.i.i.i, i64 %.idx3.i.i.a ; 9 uses
  %.pre497.i.i.i = load float, ptr %i.sg, align 4, !tbaa !67
  %i.sh = getelementptr inbounds nuw i8, ptr %i.sg, i64 4 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sg, i64 8 ; 2 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sg, i64 12 ; 2 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sg, i64 16 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sg, i64 20 ; 2 uses
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sg, i64 24 ; 2 uses
  %28 = getelementptr inbounds nuw i8, ptr %i.sg, i64 28 ; 2 uses
  %.promoted588.i.i.i = load float, ptr %i.sh, align 4, !tbaa !67
  %.promoted589.i.i.i = load float, ptr %i.si, align 4, !tbaa !67
  %.promoted590.i.i.i = load float, ptr %i.sj, align 4, !tbaa !67
  %.promoted591.i.i.i = load float, ptr %i.sk, align 4, !tbaa !67
  %.promoted592.i.i.i = load float, ptr %i.sl, align 4, !tbaa !67
  %.promoted593.i.i.i = load float, ptr %i.sm, align 4, !tbaa !67
  %.promoted594.i.i.i = load float, ptr %28, align 4, !tbaa !67
  br label %bb.da

bb.da:                                            ; preds = %bb.da, %.lr.ph391.us.us.i.i.i
  %i.sn = phi float [ %i.ul, %bb.da ], [ %.promoted594.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.so = phi float [ %i.ug, %bb.da ], [ %.promoted593.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.sp = phi float [ %i.ub, %bb.da ], [ %.promoted592.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.sq = phi float [ %i.tw, %bb.da ], [ %.promoted591.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.sr = phi float [ %i.tr, %bb.da ], [ %.promoted590.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.ss = phi float [ %i.tm, %bb.da ], [ %.promoted589.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.st = phi float [ %i.th, %bb.da ], [ %.promoted588.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %i.su = phi float [ %i.tc, %bb.da ], [ %.pre497.i.i.i, %.lr.ph391.us.us.i.i.i ]
  %indvars.iv468.i.i.i = phi i64 [ %indvars.iv.next469.i.i.i, %bb.da ], [ 0, %.lr.ph391.us.us.i.i.i ] ; 3 uses
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.fa, i64 %indvars.iv468.i.i.i
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !21
  %i.sx = sext i32 %i.sw to i64
  %i.sy = getelementptr inbounds [4 x i8], ptr %i.sf, i64 %i.sx ; 8 uses
  %i.sz = load float, ptr %i.sy, align 4, !tbaa !67
  %.idx4.i.i = shl nuw nsw i64 %indvars.iv468.i.i.i, 5
  %i.ta = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.idx4.i.i ; 8 uses
  %i.tb = load float, ptr %i.ta, align 4, !tbaa !67
  %i.tc = tail call float @llvm.fmuladd.f32(float %i.sz, float %i.tb, float %i.su) ; 2 uses
  store float %i.tc, ptr %i.sg, align 4, !tbaa !67
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 4
  %i.te = load float, ptr %i.td, align 4, !tbaa !67
  %i.tf = getelementptr inbounds nuw i8, ptr %i.ta, i64 4
  %i.tg = load float, ptr %i.tf, align 4, !tbaa !67
  %i.th = tail call float @llvm.fmuladd.f32(float %i.te, float %i.tg, float %i.st) ; 2 uses
  store float %i.th, ptr %i.sh, align 4, !tbaa !67
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  %i.tj = load float, ptr %i.ti, align 4, !tbaa !67
  %i.tk = getelementptr inbounds nuw i8, ptr %i.ta, i64 8
  %i.tl = load float, ptr %i.tk, align 4, !tbaa !67
  %i.tm = tail call float @llvm.fmuladd.f32(float %i.tj, float %i.tl, float %i.ss) ; 2 uses
  store float %i.tm, ptr %i.si, align 4, !tbaa !67
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sy, i64 12
  %i.to = load float, ptr %i.tn, align 4, !tbaa !67
  %i.tp = getelementptr inbounds nuw i8, ptr %i.ta, i64 12
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !67
  %i.tr = tail call float @llvm.fmuladd.f32(float %i.to, float %i.tq, float %i.sr) ; 2 uses
  store float %i.tr, ptr %i.sj, align 4, !tbaa !67
  %i.ts = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  %i.tt = load float, ptr %i.ts, align 4, !tbaa !67
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ta, i64 16
  %i.tv = load float, ptr %i.tu, align 4, !tbaa !67
  %i.tw = tail call float @llvm.fmuladd.f32(float %i.tt, float %i.tv, float %i.sq) ; 2 uses
  store float %i.tw, ptr %i.sk, align 4, !tbaa !67
  %i.tx = getelementptr inbounds nuw i8, ptr %i.sy, i64 20
  %i.ty = load float, ptr %i.tx, align 4, !tbaa !67
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ta, i64 20
  %i.ua = load float, ptr %i.tz, align 4, !tbaa !67
  %i.ub = tail call float @llvm.fmuladd.f32(float %i.ty, float %i.ua, float %i.sp) ; 2 uses
  store float %i.ub, ptr %i.sl, align 4, !tbaa !67
  %i.uc = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  %i.ud = load float, ptr %i.uc, align 4, !tbaa !67
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ta, i64 24
  %i.uf = load float, ptr %i.ue, align 4, !tbaa !67
  %i.ug = tail call float @llvm.fmuladd.f32(float %i.ud, float %i.uf, float %i.so) ; 2 uses
  store float %i.ug, ptr %i.sm, align 4, !tbaa !67
  %i.uh = getelementptr inbounds nuw i8, ptr %i.sy, i64 28
  %i.ui = load float, ptr %i.uh, align 4, !tbaa !67
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ta, i64 28
  %i.uk = load float, ptr %i.uj, align 4, !tbaa !67
  %i.ul = tail call float @llvm.fmuladd.f32(float %i.ui, float %i.uk, float %i.sn) ; 2 uses
  store float %i.ul, ptr %28, align 4, !tbaa !67
  %indvars.iv.next469.i.i.i = add nuw nsw i64 %indvars.iv468.i.i.i, 1 ; 2 uses
  %exitcond472.not.i.i.i = icmp eq i64 %indvars.iv.next469.i.i.i, %wide.trip.count457.i.i.i
  br i1 %exitcond472.not.i.i.i, label %._crit_edge.us395.us.i.i.i, label %bb.da, !llvm.loop !82

._crit_edge.us395.us.i.i.i:                       ; preds = %bb.da
  %indvars.iv.next474.i.i.i = add nuw nsw i64 %indvars.iv473.i.i.i, 1 ; 2 uses
  %exitcond477.not.i.i.i = icmp eq i64 %indvars.iv.next474.i.i.i, %wide.trip.count476.i.i.i
  br i1 %exitcond477.not.i.i.i, label %.loopexit371.us.i.i.i, label %.lr.ph391.us.us.i.i.i, !llvm.loop !83

.loopexit371.us.i.i.i:                            ; preds = %._crit_edge.us395.us.i.i.i, %.preheader370.us.i.i.i
  %.2.lcssa.us.i.i.i = phi i32 [ %.1.lcssa.us.mux.i.i.i, %.preheader370.us.i.i.i ], [ %i.ew, %._crit_edge.us395.us.i.i.i ]
  br label %bb.cy, !llvm.loop !84

bb.db:                                            ; preds = %._crit_edge387.us.i.i.i
  %.not283.us.i.i.i = icmp eq ptr %.2235403.us.i.i.i, null
  br i1 %.not283.us.i.i.i, label %.preheader372.us.i.i.i, label %.preheader374.us.i.i.i

.preheader374.us.i.i.i:                           ; preds = %bb.db
  br i1 %i.iw, label %.preheader369.us.i.i.i.preheader, label %.loopexit375.us.i.i.i

.preheader369.us.i.i.i.preheader:                 ; preds = %.preheader374.us.i.i.i
  br i1 %min.iters.check156, label %.preheader369.us.i.i.i.preheader217, label %vector.memcheck129

vector.memcheck129:                               ; preds = %.preheader369.us.i.i.i.preheader
  %scevgep134 = getelementptr i8, ptr %.2235403.us.i.i.i, i64 %i.kd
  %i.um = insertelement <4 x ptr> %i.ly, ptr %.2235403.us.i.i.i, i64 2
  %i.un = icmp ult <4 x ptr> %i.um, %i.or
  %i.uo = insertelement <4 x ptr> %i.lz, ptr %scevgep134, i64 2
  %i.up = shufflevector <4 x ptr> %i.ls, <4 x ptr> %i.uo, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uq = icmp ult <4 x ptr> %i.op, %i.up
  %i.ur = and <4 x i1> %i.uq, %i.un
  %i.us = bitcast <4 x i1> %i.ur to i4
  %.not = icmp eq i4 %i.us, 0
  br i1 %.not, label %vector.ph157, label %.preheader369.us.i.i.i.preheader217

vector.ph157:                                     ; preds = %vector.memcheck129
  %i.ut = load <4 x float>, ptr %i.a, align 16
  %broadcast.splat164 = shufflevector <4 x float> %i.ut, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uu = load <4 x float>, ptr %i.b, align 16
  %broadcast.splat166 = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uv = load <4 x float>, ptr %i.c, align 16
  %broadcast.splat168 = shufflevector <4 x float> %i.uv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uw = load <4 x float>, ptr %i.ja, align 4
  %broadcast.splat170 = shufflevector <4 x float> %i.uw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ux = load <4 x float>, ptr %i.jb, align 4
  %broadcast.splat172 = shufflevector <4 x float> %i.ux, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uy = load <4 x float>, ptr %i.jc, align 4
  %broadcast.splat174 = shufflevector <4 x float> %i.uy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.uz = load <4 x float>, ptr %i.jd, align 8
  %broadcast.splat176 = shufflevector <4 x float> %i.uz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.va = load <4 x float>, ptr %i.je, align 8
  %broadcast.splat178 = shufflevector <4 x float> %i.va, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vb = load <4 x float>, ptr %i.jf, align 8
  %broadcast.splat180 = shufflevector <4 x float> %i.vb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vc = load <4 x float>, ptr %i.jg, align 4
  %broadcast.splat182 = shufflevector <4 x float> %i.vc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vd = load <4 x float>, ptr %i.jh, align 4
  %broadcast.splat184 = shufflevector <4 x float> %i.vd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ve = load <4 x float>, ptr %i.ji, align 4
  %broadcast.splat186 = shufflevector <4 x float> %i.ve, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vf = load <4 x float>, ptr %i.jj, align 16
  %broadcast.splat188 = shufflevector <4 x float> %i.vf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vg = load <4 x float>, ptr %i.jk, align 16
  %broadcast.splat190 = shufflevector <4 x float> %i.vg, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vh = load <4 x float>, ptr %i.jl, align 16
  %broadcast.splat192 = shufflevector <4 x float> %i.vh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vi = load float, ptr %i.jm, align 4, !tbaa !67, !alias.scope !118
  %broadcast.splatinsert193 = insertelement <4 x float> poison, float %i.vi, i64 0
  %broadcast.splat194 = shufflevector <4 x float> %broadcast.splatinsert193, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vj = load float, ptr %i.jn, align 4, !tbaa !67, !alias.scope !119
  %broadcast.splatinsert195 = insertelement <4 x float> poison, float %i.vj, i64 0
  %broadcast.splat196 = shufflevector <4 x float> %broadcast.splatinsert195, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vk = load float, ptr %i.jo, align 4, !alias.scope !120
  %broadcast.splatinsert197 = insertelement <4 x float> poison, float %i.vk, i64 0
  %broadcast.splat198 = shufflevector <4 x float> %broadcast.splatinsert197, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vl = load float, ptr %i.jp, align 8, !tbaa !67, !alias.scope !118
  %broadcast.splatinsert199 = insertelement <4 x float> poison, float %i.vl, i64 0
  %broadcast.splat200 = shufflevector <4 x float> %broadcast.splatinsert199, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vm = load float, ptr %i.jq, align 8, !tbaa !67, !alias.scope !119
  %broadcast.splatinsert201 = insertelement <4 x float> poison, float %i.vm, i64 0
  %broadcast.splat202 = shufflevector <4 x float> %broadcast.splatinsert201, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vn = load float, ptr %i.jr, align 8, !alias.scope !120
  %broadcast.splatinsert203 = insertelement <4 x float> poison, float %i.vn, i64 0
  %broadcast.splat204 = shufflevector <4 x float> %broadcast.splatinsert203, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vo = load float, ptr %i.js, align 4, !tbaa !67, !alias.scope !118
  %broadcast.splatinsert205 = insertelement <4 x float> poison, float %i.vo, i64 0
  %broadcast.splat206 = shufflevector <4 x float> %broadcast.splatinsert205, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vp = load float, ptr %i.jt, align 4, !tbaa !67, !alias.scope !119
  %broadcast.splatinsert207 = insertelement <4 x float> poison, float %i.vp, i64 0
  %broadcast.splat208 = shufflevector <4 x float> %broadcast.splatinsert207, <4 x float> poison, <4 x i32> zeroinitializer
  %i.vq = load float, ptr %i.ju, align 4, !alias.scope !120
  %broadcast.splatinsert209 = insertelement <4 x float> poison, float %i.vq, i64 0
  %broadcast.splat210 = shufflevector <4 x float> %broadcast.splatinsert209, <4 x float> poison, <4 x i32> zeroinitializer
  br label %vector.body161

vector.body161:                                   ; preds = %vector.body161, %vector.ph157
  %index162 = phi i64 [ 0, %vector.ph157 ], [ %index.next212, %vector.body161 ] ; 2 uses
  %i.vr = shl nuw i64 %index162, 3                ; 33 uses
  %i.vs = or disjoint i64 %i.vr, 8                ; 2 uses
  %i.vt = or disjoint i64 %i.vr, 16               ; 2 uses
  %i.vu = or disjoint i64 %i.vr, 24               ; 2 uses
  %i.vv = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.vr ; 2 uses
  %i.vw = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.vs
  %i.vx = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.vt
  %i.vy = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.vu
  %i.vz = load float, ptr %i.vv, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.wa = load float, ptr %i.vw, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.wb = load float, ptr %i.vx, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.wc = load float, ptr %i.vy, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.wd = insertelement <4 x float> poison, float %i.vz, i64 0
  %i.we = insertelement <4 x float> %i.wd, float %i.wa, i64 1
  %i.wf = insertelement <4 x float> %i.we, float %i.wb, i64 2
  %i.wg = insertelement <4 x float> %i.wf, float %i.wc, i64 3
  %i.wh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wg, <4 x float> %broadcast.splat164, <4 x float> %broadcast.splat166)
  %i.wi = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.vr
  %i.wj = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.vs
  %i.wk = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.vt
  %i.wl = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.vu
  %i.wm = load float, ptr %i.wi, align 4, !tbaa !67, !alias.scope !123
  %i.wn = load float, ptr %i.wj, align 4, !tbaa !67, !alias.scope !123
  %i.wo = load float, ptr %i.wk, align 4, !tbaa !67, !alias.scope !123
  %i.wp = load float, ptr %i.wl, align 4, !tbaa !67, !alias.scope !123
  %i.wq = insertelement <4 x float> poison, float %i.wm, i64 0
  %i.wr = insertelement <4 x float> %i.wq, float %i.wn, i64 1
  %i.ws = insertelement <4 x float> %i.wr, float %i.wo, i64 2
  %i.wt = insertelement <4 x float> %i.ws, float %i.wp, i64 3
  %i.wu = fadd <4 x float> %i.wh, %i.wt           ; 3 uses
  %i.wv = fcmp ult <4 x float> %i.wu, zeroinitializer
  %i.ww = fmul <4 x float> %i.wu, %broadcast.splat168
  %i.wx = select <4 x i1> %i.wv, <4 x float> %i.ww, <4 x float> %i.wu ; 2 uses
  %i.wy = or disjoint i64 %i.vr, 1                ; 2 uses
  %i.wz = or disjoint i64 %i.vr, 9                ; 2 uses
  %i.xa = or disjoint i64 %i.vr, 17               ; 2 uses
  %i.xb = or disjoint i64 %i.vr, 25               ; 2 uses
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.wy
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.wz
  %i.xe = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.xa
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.xb
  %i.xg = load float, ptr %i.xc, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.xh = load float, ptr %i.xd, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.xi = load float, ptr %i.xe, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.xj = load float, ptr %i.xf, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.xk = insertelement <4 x float> poison, float %i.xg, i64 0
  %i.xl = insertelement <4 x float> %i.xk, float %i.xh, i64 1
  %i.xm = insertelement <4 x float> %i.xl, float %i.xi, i64 2
  %i.xn = insertelement <4 x float> %i.xm, float %i.xj, i64 3
  %i.xo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.xn, <4 x float> %broadcast.splat170, <4 x float> %broadcast.splat172)
  %i.xp = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.wy
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.wz
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.xa
  %i.xs = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.xb
  %i.xt = load float, ptr %i.xp, align 4, !tbaa !67, !alias.scope !123
  %i.xu = load float, ptr %i.xq, align 4, !tbaa !67, !alias.scope !123
  %i.xv = load float, ptr %i.xr, align 4, !tbaa !67, !alias.scope !123
  %i.xw = load float, ptr %i.xs, align 4, !tbaa !67, !alias.scope !123
  %i.xx = insertelement <4 x float> poison, float %i.xt, i64 0
  %i.xy = insertelement <4 x float> %i.xx, float %i.xu, i64 1
  %i.xz = insertelement <4 x float> %i.xy, float %i.xv, i64 2
  %i.ya = insertelement <4 x float> %i.xz, float %i.xw, i64 3
  %i.yb = fadd <4 x float> %i.xo, %i.ya           ; 3 uses
  %i.yc = fcmp ult <4 x float> %i.yb, zeroinitializer
  %i.yd = fmul <4 x float> %i.yb, %broadcast.splat174
  %i.ye = select <4 x i1> %i.yc, <4 x float> %i.yd, <4 x float> %i.yb ; 2 uses
  %i.yf = or disjoint i64 %i.vr, 2                ; 2 uses
  %i.yg = or disjoint i64 %i.vr, 10               ; 2 uses
  %i.yh = or disjoint i64 %i.vr, 18               ; 2 uses
  %i.yi = or disjoint i64 %i.vr, 26               ; 2 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.yf
  %i.yk = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.yg
  %i.yl = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.yh
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %.2238401.us.i.i.i, i64 %i.yi
  %i.yn = load float, ptr %i.yj, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.yo = load float, ptr %i.yk, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.yp = load float, ptr %i.yl, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.yq = load float, ptr %i.ym, align 4, !tbaa !67, !alias.scope !121, !noalias !122
  %i.yr = insertelement <4 x float> poison, float %i.yn, i64 0
  %i.ys = insertelement <4 x float> %i.yr, float %i.yo, i64 1
  %i.yt = insertelement <4 x float> %i.ys, float %i.yp, i64 2
  %i.yu = insertelement <4 x float> %i.yt, float %i.yq, i64 3
  %i.yv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.yu, <4 x float> %broadcast.splat176, <4 x float> %broadcast.splat178)
  %i.yw = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.yf
  %i.yx = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.yg
  %i.yy = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.yh
  %i.yz = getelementptr inbounds nuw [4 x i8], ptr %.2235403.us.i.i.i, i64 %i.yi
  %i.za = load float, ptr %i.yw, align 4, !tbaa !67, !alias.scope !123
  %i.zb = load float, ptr %i.yx, align 4, !tbaa !67, !alias.scope !123
  %i.zc = load float, ptr %i.yy, align 4, !tbaa !67, !alias.scope !123
  %i.zd = load float, ptr %i.yz, align 4, !tbaa !67, !alias.scope !123
  %i.ze = insertelement <4 x float> poison, float %i.za, i64 0
  %i.zf = insertelement <4 x float> %i.ze, float %i.zb, i64 1
  %i.zg = insertelement <4 x float> %i.zf, float %i.zc, i64 2
  %i.zh = insertelement <4 x float> %i.zg, float %i.zd, i64 3
  %i.zi = fadd <4 x float> %i.yv, %i.zh           ; 3 uses
  %i.zj = fcmp ult <4 x float> %i.zi, zeroinitializer
  %i.zk = fmul <4 x float> %i.zi, %broadcast.splat180
  %i.zl = select <4 x i1> %i.zj, <4 x float> %i.zk, <4 x float> %i.zi ; 2 uses
  %i.zm = or disjoint i64 %i.vr, 3                ; 2 uses
  %i.zn = or disjoint i64 %i.vr, 11               ; 2 uses
  %i.zo = or disjoint i64 %i.vr, 19               ; 2 uses
  %i.zp = or disjoint i64 %i.vr, 27               ; 2 uses
end_hunk_0
