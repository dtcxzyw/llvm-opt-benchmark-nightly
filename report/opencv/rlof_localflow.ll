Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rlof_localflow?download=true
inline.NumInlined: 1717
inline.NumDeleted: 364
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZNK2cv7optflow3plk6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.et = load i32, ptr %i.at, align 8, !tbaa !123
  %i.eu = icmp eq i32 %i.et, 0
  br i1 %i.eu, label %bb.aa, label %.thread

bb.aa:                                            ; preds = %bb.z
  %i.ev = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 2 uses
  %.not583 = icmp eq ptr %i.ev, null
  br i1 %.not583, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ew = getelementptr inbounds i8, ptr %i.ev, i64 %indvars.iv1043
  store i8 3, ptr %i.ew, align 1, !tbaa !38
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.ex = load ptr, ptr %i.ca, align 8, !tbaa !117 ; 2 uses
  %.not584 = icmp eq ptr %i.ex, null
  br i1 %.not584, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.ex, i64 %indvars.iv1043
  store float 0.000000e+00, ptr %i.ey, align 4, !tbaa !46
  br label %.thread

bb.ae:                                            ; preds = %bb.y
  %i.ez = uitofp <2 x i32> %i.eg to <2 x float>
  %i.fa = fsub <2 x float> %i.dz, %i.ez           ; 3 uses
  %i.fb = fsub <2 x float> splat (float 1.000000e+00), %i.fa ; 3 uses
  %i.fc = extractelement <2 x float> %i.fb, i64 0
  %i.fd = extractelement <2 x float> %i.fb, i64 1 ; 2 uses
  %i.fe = fmul float %i.fc, %i.fd
  %i.ff = fmul float %i.fe, 1.638400e+04
  %i.fg = insertelement <4 x float> poison, float %i.ff, i64 0
  %i.fh = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fg) ; 2 uses
  %i.fi = extractelement <2 x float> %i.fa, i64 0
  %i.fj = fmul float %i.fi, %i.fd
  %i.fk = fmul float %i.fj, 1.638400e+04
  %i.fl = insertelement <4 x float> poison, float %i.fk, i64 0
  %i.fm = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fl) ; 2 uses
  %shift = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fb, %shift
  %i.fn = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fo = fmul float %i.fn, 1.638400e+04
  %i.fp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fp) ; 2 uses
  %i.fr = add i32 %i.fh, %i.fm
  %i.fs = add i32 %i.fr, %i.fq
  %i.ft = sub i32 16384, %i.fs
  %.sroa.085.0.copyload = load i64, ptr %2, align 8 ; 2 uses
  %.sroa.084.0.copyload = load i64, ptr %9, align 8
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fh, i32 noundef %i.fm, i32 noundef %i.fq, i32 noundef %i.ft, i64 %.sroa.085.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %8, i64 %.sroa.084.0.copyload)
  %i.fu = load ptr, ptr %i.bg, align 8, !tbaa !118
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %indvars.iv1043
  %i.fw = load <2 x float>, ptr %i.fv, align 4, !tbaa !46 ; 6 uses
  %i.fx = load i32, ptr %i.bh, align 4, !tbaa !121
  %i.fy = icmp sgt i32 %i.fx, 0
  %i.fz = trunc i64 %.sroa.085.0.copyload to i32  ; 2 uses
  br i1 %i.fy, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.ae
  %i.ga = fadd <2 x float> %.sroa.0678.0, %i.dy
  %i.gb = icmp sgt i32 %i.eq, 0
  %i.gc = mul i32 %i.x, %i.fz                     ; 3 uses
  %i.gd = icmp sgt i32 %i.gc, 0
  %i.ge = load i32, ptr %i.b, align 4             ; 2 uses
  %i.gf = sitofp i32 %i.ge to float
  %i.gg = fmul nnan float %i.gf, f0x37800000
  %i.gh = shl nsw i32 %i.ge, 1
  %i.gi = sitofp i32 %i.gh to float
  %wide.trip.count1041 = zext nneg i32 %i.eq to i64
  %wide.trip.count = zext nneg i32 %i.gc to i64
  %wide.trip.count1036 = zext nneg i32 %i.gc to i64
  %i.gj = extractelement <2 x float> %i.fw, i64 0
  %i.gk = extractelement <2 x float> %i.fw, i64 1
  %i.gl = extractelement <2 x float> %i.fw, i64 0
  %i.gm = extractelement <2 x float> %i.fw, i64 1
  br label %bb.af

bb.af:                                            ; preds = %.lr.ph, %bb.bl
  %.0455954 = phi i32 [ 0, %.lr.ph ], [ %i.aan, %bb.bl ] ; 3 uses
  %.0473950 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2475, %bb.bl ]
  %.sroa.0664.0943 = phi float [ 1.000000e+00, %.lr.ph ], [ %i.yc, %bb.bl ]
  %.sroa.0666.0942 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.xz, %bb.bl ]
  %.sroa.7668.0941 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.yb, %bb.bl ] ; 2 uses
  %.sroa.0678.1940 = phi <2 x float> [ %i.ga, %.lr.ph ], [ %i.yd, %bb.bl ] ; 4 uses
  %i.gn = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pk, %bb.bl ]
  %i.go = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pl, %bb.bl ]
  %i.gp = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pm, %bb.bl ]
  %i.gq = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.pn, %bb.bl ]
  %i.gr = phi <2 x float> [ zeroinitializer, %.lr.ph ], [ %i.po, %bb.bl ]
  %i.gs = trunc i32 %.0455954 to i8
  %i.gt = load ptr, ptr %i.bi, align 8, !tbaa !116
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %indvars.iv1043
  store i8 %i.gs, ptr %i.gu, align 1, !tbaa !38
  %.sroa.0678.0.vec.extract = extractelement <2 x float> %.sroa.0678.1940, i64 0
  %.sroa.0678.4.vec.extract696 = extractelement <2 x float> %.sroa.0678.1940, i64 1
  %i.gv = call float @llvm.floor.f32(float %.sroa.0678.4.vec.extract696)
  %i.gw = call float @llvm.floor.f32(float %.sroa.0678.0.vec.extract)
  %i.gx = insertelement <2 x float> poison, float %i.gw, i64 0
  %i.gy = insertelement <2 x float> %i.gx, float %i.gv, i64 1
  %i.gz = fptosi <2 x float> %i.gy to <2 x i32>   ; 3 uses
  %i.ha = extractelement <2 x i32> %i.gz, i64 0   ; 3 uses
  %i.hb = icmp slt i32 %i.ha, 0
  br i1 %i.hb, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hc = load i32, ptr %i.bj, align 4, !tbaa !42
  %i.hd = sub nsw i32 %i.hc, %i.fz
  %i.he = icmp sle i32 %i.hd, %i.ha
  %i.hf = extractelement <2 x i32> %i.gz, i64 1   ; 3 uses
  %i.hg = icmp slt i32 %i.hf, 0
  %or.cond5 = or i1 %i.hg, %i.he
  br i1 %or.cond5, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.hh = load i32, ptr %i.bk, align 8, !tbaa !43
  %i.hi = add i32 %i.hh, %i.er
  %.not559 = icmp sgt i32 %i.hi, %i.hf
  br i1 %.not559, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af
  %i.hj = load i32, ptr %i.at, align 8, !tbaa !123
  %i.hk = icmp eq i32 %i.hj, 0
  br i1 %i.hk, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.hl = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 2 uses
  %.not582 = icmp eq ptr %i.hl, null
  br i1 %.not582, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.hm = getelementptr inbounds i8, ptr %i.hl, i64 %indvars.iv1043
  store i8 3, ptr %i.hm, align 1, !tbaa !38
  br label %.thread

bb.al:                                            ; preds = %bb.ah
  %i.hn = uitofp <2 x i32> %i.gz to <2 x float>
  %i.ho = fsub <2 x float> %.sroa.0678.1940, %i.hn ; 3 uses
  %i.hp = fsub <2 x float> splat (float 1.000000e+00), %i.ho ; 3 uses
  %i.hq = extractelement <2 x float> %i.hp, i64 0
  %i.hr = extractelement <2 x float> %i.hp, i64 1 ; 2 uses
  %i.hs = fmul float %i.hq, %i.hr
  %i.ht = fmul float %i.hs, 1.638400e+04
  %i.hu = insertelement <4 x float> poison, float %i.ht, i64 0
  %i.hv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hu) ; 3 uses
  %i.hw = extractelement <2 x float> %i.ho, i64 0
  %i.hx = fmul float %i.hw, %i.hr
  %i.hy = fmul float %i.hx, 1.638400e+04
  %i.hz = insertelement <4 x float> poison, float %i.hy, i64 0
  %i.ia = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.hz) ; 3 uses
  %shift1218 = shufflevector <2 x float> %i.ho, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1219 = fmul <2 x float> %shift1218, %i.hp
  %i.ib = extractelement <2 x float> %foldExtExtBinop1219, i64 0
  %i.ic = fmul float %i.ib, 1.638400e+04
  %i.id = insertelement <4 x float> poison, float %i.ic, i64 0
  %i.ie = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.id) ; 3 uses
  %i.if = add i32 %i.hv, %i.ia
  %i.ig = add i32 %i.if, %i.ie
  %i.ih = sub i32 16384, %i.ig                    ; 2 uses
  %i.ii = icmp eq i32 %.0455954, 0                ; 5 uses
  br i1 %i.ii, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %.1474 = phi float [ 0.000000e+00, %bb.am ], [ %.0473950, %bb.al ]
  %i.ij = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gn, %bb.al ] ; 3 uses
  %i.ik = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.go, %bb.al ] ; 3 uses
  %i.il = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gp, %bb.al ] ; 3 uses
  %i.im = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gq, %bb.al ] ; 3 uses
  %i.in = phi <2 x float> [ zeroinitializer, %bb.am ], [ %i.gr, %bb.al ] ; 3 uses
  br i1 %i.gb, label %.lr.ph842, label %._crit_edge843

.lr.ph842:                                        ; preds = %bb.an
  %i.io = mul nuw nsw i32 %i.x, %i.ha
  %i.ip = load i32, ptr %i.bl, align 4, !tbaa !76
  %i.iq = icmp slt i32 %i.ip, 2
  %i.ir = load ptr, ptr %i.bm, align 8, !tbaa !77 ; 3 uses
  %i.is = zext nneg i32 %i.io to i64              ; 2 uses
  %i.it = load i32, ptr %i.bp, align 4, !tbaa !76
  %i.iu = icmp slt i32 %i.it, 2
  %i.iv = load ptr, ptr %i.bq, align 8, !tbaa !77
  %i.iw = load i64, ptr %i.br, align 8
  %i.ix = load i32, ptr %i.bs, align 4, !tbaa !76
  %i.iy = icmp slt i32 %i.ix, 2
  %i.iz = load ptr, ptr %i.bt, align 8, !tbaa !77
  %i.ja = load i64, ptr %i.bu, align 8
  %i.jb = load i32, ptr %i.bv, align 4, !tbaa !76
  %i.jc = icmp slt i32 %i.jb, 2
  %i.jd = load ptr, ptr %i.bw, align 8, !tbaa !77
  %i.je = load i64, ptr %i.bx, align 8
  br i1 %i.gd, label %.lr.ph842.split.us.preheader, label %._crit_edge843

.lr.ph842.split.us.preheader:                     ; preds = %.lr.ph842
  %i.jf = zext nneg i32 %i.hf to i64
  br label %.lr.ph842.split.us

.lr.ph842.split.us:                               ; preds = %.lr.ph842.split.us.preheader, %._crit_edge.us
  %indvars.iv1038 = phi i64 [ 0, %.lr.ph842.split.us.preheader ], [ %indvars.iv.next1039, %._crit_edge.us ] ; 5 uses
  %13 = phi <4 x float> [ zeroinitializer, %.lr.ph842.split.us.preheader ], [ %17, %._crit_edge.us ] ; 2 uses
  %i.jg = phi <2 x float> [ %i.ij, %.lr.ph842.split.us.preheader ], [ %i.md, %._crit_edge.us ] ; 2 uses
  %i.jh = phi <2 x float> [ %i.ik, %.lr.ph842.split.us.preheader ], [ %i.me, %._crit_edge.us ] ; 2 uses
  %i.ji = phi <2 x float> [ %i.il, %.lr.ph842.split.us.preheader ], [ %i.mf, %._crit_edge.us ] ; 2 uses
  %14 = phi <2 x float> [ %i.im, %.lr.ph842.split.us.preheader ], [ %18, %._crit_edge.us ] ; 2 uses
  %i.jj = phi <2 x float> [ %i.in, %.lr.ph842.split.us.preheader ], [ %i.mg, %._crit_edge.us ] ; 2 uses
  br i1 %i.iq, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph842.split.us
  %i.jk = add nuw nsw i64 %indvars.iv1038, %i.jf  ; 2 uses
  %i.jl = load i64, ptr %i.bn, align 8, !tbaa !78 ; 2 uses
  %i.jm = mul i64 %i.jl, %i.jk
  %i.jn = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jm
  %i.jo = load i64, ptr %i.bo, align 8, !tbaa !78
  %i.jp = mul i64 %i.jo, %i.is                    ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jp
  %i.jr = add nuw nsw i64 %i.jk, 1
  %i.js = mul i64 %i.jl, %i.jr
  %i.jt = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 %i.jp
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

bb.ap:                                            ; preds = %.lr.ph842.split.us
  %i.jv = load i64, ptr %i.bn, align 8, !tbaa !78
  %i.jw = mul i64 %i.jv, %i.is
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.jw ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us:             ; preds = %bb.ap, %bb.ao
  %.0.i752.us = phi ptr [ %i.jx, %bb.ap ], [ %i.jq, %bb.ao ] ; 4 uses
  %.0.i623.us = phi ptr [ %i.jx, %bb.ap ], [ %i.ju, %bb.ao ] ; 4 uses
  %i.jy = mul i64 %i.iw, %indvars.iv1038
  %.0.i625.us.idx = select i1 %i.iu, i64 0, i64 %i.jy
  %.0.i625.us = getelementptr inbounds nuw i8, ptr %i.iv, i64 %.0.i625.us.idx ; 2 uses
  %i.jz = mul i64 %i.ja, %indvars.iv1038
  %.0.i626.us.idx = select i1 %i.iy, i64 0, i64 %i.jz
  %.0.i626.us = getelementptr inbounds nuw i8, ptr %i.iz, i64 %.0.i626.us.idx ; 2 uses
  %i.ka = mul i64 %i.je, %indvars.iv1038
  %.0.i628.us.idx = select i1 %i.jc, i64 0, i64 %i.ka
  %.0.i628.us = getelementptr inbounds nuw i8, ptr %i.jd, i64 %.0.i628.us.idx ; 2 uses
  br i1 %i.ii, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us871

.lr.ph.split.us.us.preheader:                     ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us
  %i.kb = extractelement <2 x float> %i.jh, i64 1
  br label %.lr.ph.split.us.us

.lr.ph.split.us871:                               ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us, %bb.ar
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.ar ], [ 0, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 6 uses
  %.0443801.us857 = phi ptr [ %i.ma, %bb.ar ], [ %.0.i626.us, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 3 uses
  %i.kc = phi <4 x float> [ %i.lz, %bb.ar ], [ %13, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit624.us ] ; 2 uses
  %i.kd = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv
  %i.ke = load i8, ptr %i.kd, align 1, !tbaa !38
  %i.kf = icmp eq i8 %i.ke, 0
  br i1 %i.kf, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph.split.us871
  %i.kg = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv
  %i.kh = load i8, ptr %i.kg, align 1, !tbaa !38
  %i.ki = zext i8 %i.kh to i32
  %i.kj = mul nsw i32 %i.hv, %i.ki
  %i.kk = add nuw nsw i64 %indvars.iv, %i.cb      ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !38
  %i.kn = zext i8 %i.km to i32
  %i.ko = mul nsw i32 %i.ia, %i.kn
  %i.kp = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %indvars.iv
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !38
  %i.kr = zext i8 %i.kq to i32
  %i.ks = mul nsw i32 %i.ie, %i.kr
  %i.kt = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %i.kk
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !38
  %i.kv = zext i8 %i.ku to i32
  %i.kw = mul nsw i32 %i.ih, %i.kv
  %i.kx = add i32 %i.kj, 256
  %i.ky = add i32 %i.kx, %i.ko
  %i.kz = add i32 %i.ky, %i.ks
  %i.la = add i32 %i.kz, %i.kw
  %i.lb = ashr i32 %i.la, 9
  %i.lc = getelementptr inbounds nuw [2 x i8], ptr %.0.i625.us, i64 %indvars.iv
  %i.ld = load i16, ptr %i.lc, align 2, !tbaa !87 ; 2 uses
  %i.le = sext i16 %i.ld to i32
  %i.lf = sub nsw i32 %i.lb, %i.le
  %i.lg = sitofp i32 %i.lf to float
  %i.lh = sitofp i16 %i.ld to float               ; 2 uses
  %i.li = call float @llvm.fmuladd.f32(float %i.lh, float %i.gj, float %i.lg)
  %i.lj = fadd float %i.gk, %i.li
  %i.lk = fptosi float %i.lj to i32               ; 3 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %.0443801.us857, i64 2
  %i.lm = load i16, ptr %.0443801.us857, align 2, !tbaa !87
  %i.ln = load i16, ptr %i.ll, align 2, !tbaa !87
  %i.lo = sext i16 %i.lm to i32
  %i.lp = sext i16 %i.ln to i32
  %i.lq = mul nsw i32 %i.lk, %i.lo
  %i.lr = mul nsw i32 %i.lk, %i.lp
  %i.ls = insertelement <4 x i32> poison, i32 %i.lr, i64 0
  %i.lt = insertelement <4 x i32> %i.ls, i32 %i.lq, i64 1
  %i.lu = insertelement <4 x i32> poison, i32 %i.lk, i64 0
  %15 = shufflevector <4 x i32> %i.lu, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %16 = shufflevector <4 x i32> %15, <4 x i32> %i.lt, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.lv = sitofp <4 x i32> %16 to <4 x float>
  %i.lw = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.lh, i64 1
  %i.lx = fmul nnan <4 x float> %i.lw, %i.lv
  %i.ly = fadd <4 x float> %i.kc, %i.lx
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.split.us871
  %i.lz = phi <4 x float> [ %i.kc, %.lr.ph.split.us871 ], [ %i.ly, %bb.aq ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %.0443801.us857, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.us871, !llvm.loop !369

._crit_edge.us.loopexit:                          ; preds = %bb.at
  %i.mb = shufflevector <2 x float> %i.ow, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mc = insertelement <2 x float> %i.mb, float %.5488.us.us, i64 1
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %bb.ar, %._crit_edge.us.loopexit
  %17 = phi <4 x float> [ %30, %._crit_edge.us.loopexit ], [ %i.lz, %bb.ar ] ; 2 uses
  %i.md = phi <2 x float> [ %i.ow, %._crit_edge.us.loopexit ], [ %i.jg, %bb.ar ] ; 2 uses
  %i.me = phi <2 x float> [ %i.mc, %._crit_edge.us.loopexit ], [ %i.jh, %bb.ar ] ; 2 uses
  %i.mf = phi <2 x float> [ %i.ox, %._crit_edge.us.loopexit ], [ %i.ji, %bb.ar ] ; 2 uses
  %18 = phi <2 x float> [ %31, %._crit_edge.us.loopexit ], [ %14, %bb.ar ] ; 2 uses
  %i.mg = phi <2 x float> [ %i.oy, %._crit_edge.us.loopexit ], [ %i.jj, %bb.ar ] ; 2 uses
  %indvars.iv.next1039 = add nuw nsw i64 %indvars.iv1038, 1 ; 2 uses
  %exitcond1042.not = icmp eq i64 %indvars.iv.next1039, %wide.trip.count1041
  br i1 %exitcond1042.not, label %._crit_edge843.loopexit, label %.lr.ph842.split.us, !llvm.loop !370

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.at
  %indvars.iv1033 = phi i64 [ %indvars.iv.next1034, %bb.at ], [ 0, %.lr.ph.split.us.us.preheader ] ; 6 uses
  %.0443801.us.us = phi ptr [ %i.oz, %bb.at ], [ %.0.i626.us, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %.3486792.us.us = phi float [ %.5488.us.us, %bb.at ], [ %i.kb, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %19 = phi <4 x float> [ %30, %bb.at ], [ %13, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mh = phi <2 x float> [ %i.ow, %bb.at ], [ %i.jg, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mi = phi <2 x float> [ %i.ox, %bb.at ], [ %i.ji, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %20 = phi <2 x float> [ %31, %bb.at ], [ %14, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mj = phi <2 x float> [ %i.oy, %bb.at ], [ %i.jj, %.lr.ph.split.us.us.preheader ] ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %.0.i628.us, i64 %indvars.iv1033
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !38
  %i.mm = icmp eq i8 %i.ml, 0
  br i1 %i.mm, label %bb.at, label %bb.as

bb.as:                                            ; preds = %.lr.ph.split.us.us
  %i.mn = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %indvars.iv1033
  %i.mo = load i8, ptr %i.mn, align 1, !tbaa !38
  %i.mp = zext i8 %i.mo to i32
  %i.mq = mul nsw i32 %i.hv, %i.mp
  %i.mr = add nuw nsw i64 %indvars.iv1033, %i.cb  ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.0.i752.us, i64 %i.mr
  %i.mt = load i8, ptr %i.ms, align 1, !tbaa !38
  %i.mu = zext i8 %i.mt to i32
  %i.mv = mul nsw i32 %i.ia, %i.mu
  %i.mw = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %indvars.iv1033
  %i.mx = load i8, ptr %i.mw, align 1, !tbaa !38
  %i.my = zext i8 %i.mx to i32
  %i.mz = mul nsw i32 %i.ie, %i.my
  %i.na = getelementptr inbounds nuw i8, ptr %.0.i623.us, i64 %i.mr
  %i.nb = load i8, ptr %i.na, align 1, !tbaa !38
  %i.nc = zext i8 %i.nb to i32
  %i.nd = mul nsw i32 %i.ih, %i.nc
  %i.ne = add i32 %i.mq, 256
  %i.nf = add i32 %i.ne, %i.mv
  %i.ng = add i32 %i.nf, %i.mz
  %i.nh = add i32 %i.ng, %i.nd
  %i.ni = ashr i32 %i.nh, 9
  %i.nj = getelementptr inbounds nuw [2 x i8], ptr %.0.i625.us, i64 %indvars.iv1033
  %i.nk = load i16, ptr %i.nj, align 2, !tbaa !87 ; 2 uses
  %i.nl = sext i16 %i.nk to i32                   ; 3 uses
  %i.nm = sub nsw i32 %i.ni, %i.nl
  %i.nn = sitofp i32 %i.nm to float
  %i.no = sitofp i16 %i.nk to float               ; 4 uses
  %i.np = call float @llvm.fmuladd.f32(float %i.no, float %i.gl, float %i.nn)
  %i.nq = fadd float %i.gm, %i.np
  %i.nr = fptosi float %i.nq to i32               ; 3 uses
  %21 = insertelement <4 x i32> poison, i32 %i.nr, i64 0
  %22 = shufflevector <4 x i32> %21, <4 x i32> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %23 = insertelement <4 x float> <float 1.000000e+00, float poison, float 1.000000e+00, float 1.000000e+00>, float %i.no, i64 1
  %24 = mul nsw i32 %i.nl, %i.nl
  %25 = uitofp nneg i32 %24 to float
  %26 = load <2 x i16>, ptr %.0443801.us.us, align 2, !tbaa !87 ; 3 uses
  %27 = extractelement <2 x i16> %26, i64 0
  %28 = extractelement <2 x i16> %26, i64 1
  %i.ns = sext i16 %28 to i32                     ; 4 uses
  %i.nt = sext i16 %27 to i32                     ; 4 uses
  %i.nu = mul nsw i32 %i.nr, %i.nt
  %i.nv = mul nsw i32 %i.nr, %i.ns
  %i.nw = insertelement <4 x i32> poison, i32 %i.nv, i64 0
  %i.nx = insertelement <4 x i32> %i.nw, i32 %i.nu, i64 1
  %29 = shufflevector <4 x i32> %22, <4 x i32> %i.nx, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ny = sitofp <4 x i32> %29 to <4 x float>
  %i.nz = fmul nnan <4 x float> %23, %i.ny
  %i.oa = fadd <4 x float> %19, %i.nz
  %i.ob = mul nsw i32 %i.ns, %i.ns
  %i.oc = mul nsw i32 %i.nt, %i.nt
  %i.od = uitofp nneg i32 %i.ob to float
  %i.oe = uitofp nneg i32 %i.oc to float
  %i.of = mul nsw i32 %i.ns, %i.nt
  %i.og = sitofp i32 %i.of to float
  %i.oh = insertelement <2 x float> poison, float %i.oe, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %i.od, i64 1
  %i.oj = fadd <2 x float> %i.mj, %i.oi
  %i.ok = sitofp <2 x i16> %26 to <2 x float>     ; 3 uses
  %i.ol = insertelement <2 x float> poison, float %i.og, i64 0
  %i.om = shufflevector <2 x float> %i.ol, <2 x float> %i.ok, <2 x i32> <i32 0, i32 2>
  %i.on = fadd <2 x float> %i.mh, %i.om
  %i.oo = extractelement <2 x float> %i.ok, i64 1
  %i.op = fadd float %.3486792.us.us, %i.oo
  %i.oq = insertelement <2 x float> poison, float %i.no, i64 0
  %i.or = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.os = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ok, <2 x float> %i.or, <2 x float> %i.mi)
  %i.ot = insertelement <2 x float> poison, float %25, i64 0
  %i.ou = insertelement <2 x float> %i.ot, float %i.no, i64 1
  %i.ov = fadd <2 x float> %20, %i.ou
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %.lr.ph.split.us.us
  %.5488.us.us = phi float [ %.3486792.us.us, %.lr.ph.split.us.us ], [ %i.op, %bb.as ] ; 2 uses
  %30 = phi <4 x float> [ %19, %.lr.ph.split.us.us ], [ %i.oa, %bb.as ] ; 2 uses
  %i.ow = phi <2 x float> [ %i.mh, %.lr.ph.split.us.us ], [ %i.on, %bb.as ] ; 3 uses
  %i.ox = phi <2 x float> [ %i.mi, %.lr.ph.split.us.us ], [ %i.os, %bb.as ] ; 2 uses
  %31 = phi <2 x float> [ %20, %.lr.ph.split.us.us ], [ %i.ov, %bb.as ] ; 2 uses
  %i.oy = phi <2 x float> [ %i.mj, %.lr.ph.split.us.us ], [ %i.oj, %bb.as ] ; 2 uses
  %indvars.iv.next1034 = add nuw nsw i64 %indvars.iv1033, 1 ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %.0443801.us.us, i64 4
  %exitcond1037.not = icmp eq i64 %indvars.iv.next1034, %wide.trip.count1036
  br i1 %exitcond1037.not, label %._crit_edge.us.loopexit, label %.lr.ph.split.us.us, !llvm.loop !369

._crit_edge843.loopexit:                          ; preds = %._crit_edge.us
  %i.pa = fmul <4 x float> %17, <float f0xB7800000, float f0xB7800000, float f0x37800000, float f0x37800000>
  br label %._crit_edge843

._crit_edge843:                                   ; preds = %.lr.ph842, %._crit_edge843.loopexit, %bb.an
  %32 = phi <4 x float> [ <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %bb.an ], [ %i.pa, %._crit_edge843.loopexit ], [ <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.lr.ph842 ] ; 8 uses
  %i.pb = phi <2 x float> [ %i.ij, %bb.an ], [ %i.md, %._crit_edge843.loopexit ], [ %i.ij, %.lr.ph842 ] ; 2 uses
  %i.pc = phi <2 x float> [ %i.ik, %bb.an ], [ %i.me, %._crit_edge843.loopexit ], [ %i.ik, %.lr.ph842 ] ; 2 uses
  %i.pd = phi <2 x float> [ %i.il, %bb.an ], [ %i.mf, %._crit_edge843.loopexit ], [ %i.il, %.lr.ph842 ] ; 2 uses
  %33 = phi <2 x float> [ %i.im, %bb.an ], [ %18, %._crit_edge843.loopexit ], [ %i.im, %.lr.ph842 ] ; 2 uses
  %i.pe = phi <2 x float> [ %i.in, %bb.an ], [ %i.mg, %._crit_edge843.loopexit ], [ %i.in, %.lr.ph842 ] ; 2 uses
  br i1 %i.ii, label %bb.au, label %bb.av

bb.au:                                            ; preds = %._crit_edge843
  %i.pf = fmul <2 x float> %i.pc, splat (float f0xB7800000)
  %i.pg = fmul <2 x float> %i.pd, splat (float f0xB7800000)
  %i.ph = fmul <2 x float> %33, splat (float f0x37800000)
  %i.pi = fmul <2 x float> %i.pb, <float f0x37800000, float f0xB7800000>
  %i.pj = fmul <2 x float> %i.pe, splat (float f0x37800000)
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %._crit_edge843
  %.2475 = phi float [ %i.gg, %bb.au ], [ %.1474, %._crit_edge843 ] ; 13 uses
  %i.pk = phi <2 x float> [ %i.pi, %bb.au ], [ %i.pb, %._crit_edge843 ] ; 7 uses
  %i.pl = phi <2 x float> [ %i.pf, %bb.au ], [ %i.pc, %._crit_edge843 ] ; 13 uses
  %i.pm = phi <2 x float> [ %i.pg, %bb.au ], [ %i.pd, %._crit_edge843 ] ; 9 uses
  %i.pn = phi <2 x float> [ %i.ph, %bb.au ], [ %33, %._crit_edge843 ] ; 8 uses
  %i.po = phi <2 x float> [ %i.pj, %bb.au ], [ %i.pe, %._crit_edge843 ] ; 5 uses
  %i.pp = extractelement <2 x float> %i.pk, i64 0 ; 13 uses
  %i.pq = fneg float %i.pp
  %i.pr = fmul float %i.pp, %i.pq
  %i.ps = extractelement <2 x float> %i.pn, i64 1 ; 13 uses
  %i.pt = fmul float %i.pr, %i.ps
  %i.pu = extractelement <2 x float> %i.pn, i64 0 ; 5 uses
  %i.pv = fmul float %.2475, %i.pu
  %i.pw = fmul float %i.pp, %i.pv
  %i.px = fmul float %i.pp, %i.pw
  %i.py = call float @llvm.fmuladd.f32(float %i.pt, float %i.ps, float %i.px)
  %i.pz = fmul float %i.pp, 2.000000e+00          ; 3 uses
  %i.qa = fmul float %i.pz, %i.ps                 ; 2 uses
  %i.qb = extractelement <2 x float> %i.pl, i64 0 ; 9 uses
  %i.qc = fmul float %i.qb, %i.qa
  %i.qd = extractelement <2 x float> %i.pm, i64 1 ; 14 uses
  %i.qe = call float @llvm.fmuladd.f32(float %i.qc, float %i.qd, float %i.py)
  %i.qf = extractelement <2 x float> %i.pl, i64 1 ; 13 uses
  %i.qg = fmul float %i.qf, %i.qa
  %i.qh = extractelement <2 x float> %i.pm, i64 0 ; 12 uses
  %i.qi = call float @llvm.fmuladd.f32(float %i.qg, float %i.qh, float %i.qe)
  %i.qj = fmul float %i.pu, 2.000000e+00
  %i.qk = fmul float %i.pp, %i.qj
  %i.ql = fneg float %i.qb                        ; 2 uses
  %i.qm = fmul float %i.qk, %i.ql
  %i.qn = call float @llvm.fmuladd.f32(float %i.qm, float %i.qf, float %i.qi)
  %i.qo = fmul float %.2475, 2.000000e+00
  %i.qp = fmul float %i.pp, %i.qo
  %i.qq = fneg float %i.qh                        ; 4 uses
  %i.qr = fmul float %i.qp, %i.qq
  %i.qs = call float @llvm.fmuladd.f32(float %i.qr, float %i.qd, float %i.qn)
  %i.qt = extractelement <2 x float> %i.po, i64 0 ; 7 uses
  %i.qu = extractelement <2 x float> %i.po, i64 1 ; 7 uses
  %i.qv = fmul float %i.qt, %i.qu                 ; 4 uses
  %i.qw = fmul float %i.qv, %i.ps
  %i.qx = call float @llvm.fmuladd.f32(float %i.qw, float %i.ps, float %i.qs)
  %i.qy = fmul float %i.qu, 2.000000e+00
  %i.qz = fmul float %i.qy, %i.ps
  %i.ra = fmul float %i.qz, %i.ql
  %i.rb = call float @llvm.fmuladd.f32(float %i.ra, float %i.qh, float %i.qx)
  %i.rc = fmul float %i.qt, 2.000000e+00
  %i.rd = fmul float %i.rc, %i.ps
  %i.re = fneg float %i.qf                        ; 4 uses
  %i.rf = fmul float %i.rd, %i.re
  %i.rg = call float @llvm.fmuladd.f32(float %i.rf, float %i.qd, float %i.rb)
  %foldExtExtBinop1221 = fmul <2 x float> %i.pl, %i.pl ; 2 uses
  %i.rh = extractelement <2 x float> %foldExtExtBinop1221, i64 0
  %i.ri = fneg float %i.qd                        ; 4 uses
  %i.rj = fmul float %i.rh, %i.ri
  %i.rk = call float @llvm.fmuladd.f32(float %i.rj, float %i.qd, float %i.rg)
  %i.rl = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rm = fmul <2 x float> %i.po, %i.rl           ; 4 uses
  %i.rn = extractelement <2 x float> %i.rm, i64 1 ; 2 uses
  %i.ro = fmul float %i.qb, %i.rn
  %i.rp = call float @llvm.fmuladd.f32(float %i.ro, float %i.qb, float %i.rk)
  %i.rq = fmul float %i.qb, 2.000000e+00
  %i.rr = fmul float %i.rq, %i.qf
  %i.rs = fmul float %i.rr, %i.qh
  %i.rt = call float @llvm.fmuladd.f32(float %i.rs, float %i.qd, float %i.rp)
  %i.ru = fmul float %i.qf, %i.qf
  %i.rv = fmul float %i.ru, %i.qq                 ; 2 uses
  %i.rw = call float @llvm.fmuladd.f32(float %i.rv, float %i.qh, float %i.rt)
  %i.rx = extractelement <2 x float> %i.rm, i64 0
  %i.ry = fmul float %i.qf, %i.rx
  %i.rz = call float @llvm.fmuladd.f32(float %i.ry, float %i.qf, float %i.rw)
  %i.sa = fmul float %i.qu, %.2475                ; 2 uses
  %i.sb = fmul float %i.sa, %i.qh
  %i.sc = call float @llvm.fmuladd.f32(float %i.sb, float %i.qh, float %i.rz)
  %i.sd = fmul float %i.qt, %.2475                ; 2 uses
  %i.se = fmul float %i.sd, %i.qd
  %i.sf = call float @llvm.fmuladd.f32(float %i.se, float %i.qd, float %i.sc)
  %i.sg = fneg float %i.pu
  %i.sh = fmul float %i.qv, %i.sg
  %i.si = call float @llvm.fmuladd.f32(float %i.sh, float %.2475, float %i.sf) ; 3 uses
  %i.sj = fadd float %i.qt, %i.qu
  %i.sk = fsub float %i.qt, %i.qu                 ; 2 uses
  %i.sl = fmul float %i.pp, 4.000000e+00
  %i.sm = fmul float %i.pp, %i.sl
  %i.sn = call float @llvm.fmuladd.f32(float %i.sk, float %i.sk, float %i.sm)
  %i.so = call noundef float @sqrtf(float noundef %i.sn) #20
  %i.sp = fsub float %i.sj, %i.so
  %i.sq = fdiv float %i.sp, %i.gi
  %i.sr = load float, ptr %i.by, align 4, !tbaa !126
  %i.ss = fcmp olt float %i.sq, %i.sr
  br i1 %i.ss, label %bb.aw, label %bb.bc

bb.aw:                                            ; preds = %bb.av
  %i.st = load i32, ptr %i.at, align 8, !tbaa !123 ; 2 uses
  %i.su = icmp eq i32 %i.st, 0
  br i1 %i.su, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.sv = load ptr, ptr %i.bi, align 8, !tbaa !116 ; 2 uses
  %.not564 = icmp ne ptr %i.sv, null
  %i.sw = call float @llvm.fabs.f32(float %i.si)
  %i.sx = fcmp olt float %i.sw, f0x34000000
  %or.cond760 = select i1 %.not564, i1 true, i1 %i.sx
  br i1 %or.cond760, label %bb.az, label %.thread

bb.ay:                                            ; preds = %bb.aw
  %.old = call noundef float @llvm.fabs.f32(float %i.si)
  %.old759 = fcmp olt float %.old, f0x34000000
  br i1 %.old759, label %._crit_edge1046, label %bb.ba

._crit_edge1046:                                  ; preds = %bb.ay
  %.pre1047 = load ptr, ptr %i.bi, align 8, !tbaa !116
  br label %bb.az

bb.az:                                            ; preds = %._crit_edge1046, %bb.ax
  %i.sy = phi ptr [ %.pre1047, %._crit_edge1046 ], [ %i.sv, %bb.ax ]
  %i.sz = getelementptr inbounds i8, ptr %i.sy, i64 %indvars.iv1043
  store i8 0, ptr %i.sz, align 1, !tbaa !38
  %.pre1048 = load i32, ptr %i.at, align 8, !tbaa !123
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ta = phi i32 [ %i.st, %bb.ay ], [ %.pre1048, %bb.az ]
  %i.tb = icmp sgt i32 %i.ta, 0
  br i1 %i.tb, label %bb.bb, label %.thread

bb.bb:                                            ; preds = %bb.ba
  %i.tc = load ptr, ptr %i.av, align 8, !tbaa !374
  %i.td = getelementptr inbounds [8 x i8], ptr %i.tc, i64 %indvars.iv1043
  store <2 x float> %.sroa.0678.0, ptr %i.td, align 4
  %i.te = load ptr, ptr %i.bg, align 8, !tbaa !118
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.te, i64 %indvars.iv1043
  store <2 x float> %i.fw, ptr %i.tf, align 4, !tbaa !46
  br label %.thread

bb.bc:                                            ; preds = %bb.av
  %i.tg = fdiv float 1.000000e+00, %i.si          ; 5 uses
  %i.th = fmul float %i.qu, %i.ps                 ; 2 uses
  %i.ti = fmul float %i.ps, 2.000000e+00          ; 2 uses
  %i.tj = fmul float %i.qf, %i.ti
  %i.tk = fmul float %i.tj, %i.ri
  %i.tl = call float @llvm.fmuladd.f32(float %i.th, float %i.ps, float %i.tk)
  %i.tm = fmul float %i.qf, %i.pu
  %i.tn = fmul float %.2475, %i.qd
  %foldExtExtBinop1223 = fmul <2 x float> %i.pk, %i.pn ; 2 uses
  %i.to = extractelement <2 x float> %foldExtExtBinop1223, i64 0 ; 3 uses
  %i.tp = shufflevector <2 x float> %i.pl, <2 x float> %i.pn, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.tq = fmul <2 x float> %i.pk, %i.tp           ; 4 uses
  %i.tr = fneg float %i.ps                        ; 2 uses
  %i.ts = extractelement <2 x float> %i.tq, i64 0
  %i.tt = fmul float %i.ts, %i.tr
  %i.tu = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tv = fmul <2 x float> %i.tu, %i.pn           ; 2 uses
  %i.tw = insertelement <2 x float> %i.pl, float %.2475, i64 0
  %i.tx = shufflevector <2 x float> %i.pm, <2 x float> %i.pn, <2 x i32> <i32 0, i32 3>
  %i.ty = fmul <2 x float> %i.tw, %i.tx           ; 2 uses
  %i.tz = fmul float %i.pp, %.2475                ; 2 uses
  %i.ua = fneg float %i.tz                        ; 2 uses
  %i.ub = fmul float %i.qb, %i.ri
  %i.uc = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ud = fmul <2 x float> %i.pl, %i.uc           ; 2 uses
  %i.ue = fmul float %i.qt, %i.ps                 ; 3 uses
  %i.uf = fmul float %i.qb, %i.ti
  %i.ug = fmul float %i.ue, %i.re
  %i.uh = fneg float %i.to
  %i.ui = fneg float %i.ue
  %i.uj = fmul float %i.pz, %i.qb
  %i.uk = fmul float %i.uj, %i.re
  %i.ul = call float @llvm.fmuladd.f32(float %i.tz, float %i.pp, float %i.uk)
  %i.um = fneg float %i.qv                        ; 2 uses
  %foldExtExtBinop1225 = fmul <2 x float> %i.pk, %i.pk
  %i.un = extractelement <2 x float> %foldExtExtBinop1225, i64 0
  %i.uo = fmul float %i.un, %i.tr
  %i.up = call float @llvm.fmuladd.f32(float %i.qv, float %i.ps, float %i.uo)
  %foldExtExtBinop1227 = fmul <2 x float> %i.pk, %i.pl
  %i.uq = extractelement <2 x float> %foldExtExtBinop1227, i64 0
  %i.ur = fmul float %i.pp, %i.qf
  %i.us = shufflevector <2 x float> %i.pl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ut = fmul <2 x float> %i.po, %i.us           ; 3 uses
  %i.uu = extractelement <2 x float> %i.ut, i64 1
  %i.uv = call float @llvm.fmuladd.f32(float %i.uu, float %i.qb, float %i.ul)
  %i.uw = extractelement <2 x float> %i.ut, i64 0
  %i.ux = call float @llvm.fmuladd.f32(float %i.uw, float %i.qf, float %i.uv)
  %i.uy = call float @llvm.fmuladd.f32(float %i.um, float %.2475, float %i.ux)
  %i.uz = fmul float %i.uy, %i.tg
  %i.va = fneg <2 x float> %i.ut                  ; 2 uses
  %i.vb = extractelement <2 x float> %i.va, i64 0
  %i.vc = call float @llvm.fmuladd.f32(float %i.vb, float %i.qd, float %i.up)
  %i.vd = call float @llvm.fmuladd.f32(float %i.uq, float %i.qd, float %i.vc)
  %i.ve = call float @llvm.fmuladd.f32(float %i.ur, float %i.qh, float %i.vd)
  %i.vf = extractelement <2 x float> %i.va, i64 1
  %i.vg = call float @llvm.fmuladd.f32(float %i.vf, float %i.qh, float %i.ve)
  %i.vh = fmul float %i.vg, %i.tg                 ; 2 uses
  %i.vi = call float @llvm.fmuladd.f32(float %i.tm, float %i.qf, float %i.tl)
  %i.vj = fmul float %i.uf, %i.qq
  %i.vk = call float @llvm.fmuladd.f32(float %i.to, float %.2475, float %i.tt)
  %i.vl = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.vm = fneg <2 x float> %i.tv
  %i.vn = shufflevector <2 x float> %i.vl, <2 x float> %i.vm, <2 x i32> <i32 0, i32 2>
  %i.vo = insertelement <2 x float> poison, float %i.vj, i64 0
  %i.vp = insertelement <2 x float> %i.vo, float %i.vk, i64 1
  %i.vq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vn, <2 x float> %i.tp, <2 x float> %i.vp)
  %i.vr = shufflevector <2 x float> %i.pl, <2 x float> %i.pm, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.vs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tv, <2 x float> %i.vr, <2 x float> %i.vq)
  %i.vt = call float @llvm.fmuladd.f32(float %i.tn, float %i.qd, float %i.vi)
  %i.vu = fneg float %i.rn
  %i.vv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ty, <2 x float> %i.uc, <2 x float> %i.vs)
  %i.vw = shufflevector <2 x float> %i.rm, <2 x float> %i.ty, <2 x i32> <i32 0, i32 2>
  %i.vx = fneg <2 x float> %i.vw
  %i.vy = call float @llvm.fmuladd.f32(float %i.vu, float %.2475, float %i.vt)
  %i.vz = insertelement <2 x float> %i.pm, float %.2475, i64 0
  %i.wa = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vx, <2 x float> %i.vz, <2 x float> %i.vv)
  %i.wb = fmul float %i.vy, %i.tg
  %i.wc = insertelement <2 x float> poison, float %i.tg, i64 0
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.we = fmul <2 x float> %i.wa, %i.wd           ; 2 uses
  %i.wf = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.wg = insertelement <2 x float> poison, float %i.ug, i64 0
  %i.wh = insertelement <2 x float> %i.wg, float %i.rv, i64 1
  %i.wi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wf, <2 x float> %i.pl, <2 x float> %i.wh)
  %i.wj = insertelement <2 x float> %foldExtExtBinop1221, float %i.th, i64 1
  %i.wk = fneg <2 x float> %i.wj                  ; 2 uses
  %i.wl = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.wl, <2 x float> %i.wi)
  %i.wn = insertelement <2 x float> poison, float %i.sd, i64 0
  %i.wo = insertelement <2 x float> %i.wn, float %i.ua, i64 1
  %i.wp = shufflevector <2 x float> %i.pm, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.wq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wo, <2 x float> %i.wp, <2 x float> %i.wm)
  %i.wr = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.ws = insertelement <2 x float> %i.wr, float %i.sa, i64 1
  %i.wt = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ws, <2 x float> %i.uc, <2 x float> %i.wq)
  %i.wu = shufflevector <2 x float> %i.tq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wu, <2 x float> %i.pm, <2 x float> %i.wt)
  %i.ww = fmul <2 x float> %i.wv, %i.wd           ; 3 uses
  %i.wx = shufflevector <2 x float> %i.ud, <2 x float> %foldExtExtBinop1223, <2 x i32> <i32 1, i32 2>
  %i.wy = insertelement <2 x float> poison, float %i.qq, i64 0
  %i.wz = insertelement <2 x float> %i.wy, float %i.re, i64 1
  %i.xa = fmul <2 x float> %i.wx, %i.wz
  %i.xb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rm, <2 x float> %i.us, <2 x float> %i.xa)
  %i.xc = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.xd = insertelement <2 x float> %i.xc, float %i.ub, i64 1
  %i.xe = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xd, <2 x float> %i.vr, <2 x float> %i.xb)
  %i.xf = insertelement <2 x float> %i.wf, float %i.ui, i64 0
  %i.xg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xf, <2 x float> %i.wp, <2 x float> %i.xe)
  %i.xh = shufflevector <2 x float> %i.tq, <2 x float> %i.wk, <2 x i32> <i32 0, i32 3>
  %i.xi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xh, <2 x float> %i.uc, <2 x float> %i.xg)
  %i.xj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ud, <2 x float> %i.wp, <2 x float> %i.xi)
  %i.xk = fmul <2 x float> %i.xj, %i.wd           ; 3 uses
  %i.xl = shufflevector <2 x float> %i.we, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.xm = insertelement <2 x float> %i.xl, float %i.wb, i64 1
  %34 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 3, i32 3>
  %i.xn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xm, <2 x float> %34, <2 x float> zeroinitializer)
  %35 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.we, <2 x float> %35, <2 x float> %i.xn)
  %36 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ww, <2 x float> %36, <2 x float> %i.xo)
  %37 = shufflevector <4 x float> %32, <4 x float> poison, <2 x i32> zeroinitializer
  %i.xq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xk, <2 x float> %37, <2 x float> %i.xp) ; 5 uses
  %i.xr = extractelement <2 x float> %i.ww, i64 1
  %i.xs = extractelement <4 x float> %32, i64 3   ; 2 uses
  %i.xt = extractelement <2 x float> %i.ww, i64 0
  %38 = extractelement <4 x float> %32, i64 2     ; 2 uses
  %i.xu = extractelement <4 x float> %32, i64 1   ; 2 uses
  %39 = extractelement <4 x float> %32, i64 0     ; 2 uses
  %40 = call float @llvm.fmuladd.f32(float %i.xr, float %i.xs, float 0.000000e+00)
  %i.xv = call float @llvm.fmuladd.f32(float %i.xt, float %38, float %40)
  %41 = call float @llvm.fmuladd.f32(float %i.uz, float %i.xu, float %i.xv)
  %i.xw = call float @llvm.fmuladd.f32(float %i.vh, float %39, float %41) ; 3 uses
  %i.xx = shufflevector <2 x float> %i.xq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xy = extractelement <2 x float> %i.xq, i64 1
  %i.xz = fneg float %i.xy                        ; 3 uses
  %i.ya = extractelement <2 x float> %i.xq, i64 0
  %i.yb = fneg float %i.ya                        ; 4 uses
  %i.yc = fneg float %i.xw                        ; 2 uses
  %.sroa.0664.1 = select i1 %i.ii, float %i.yc, float %.sroa.0664.0943
  %i.yd = fsub <2 x float> %.sroa.0678.1940, %i.xx ; 2 uses
  %i.ye = fsub <2 x float> %i.yd, %i.dy
  %i.yf = load ptr, ptr %i.av, align 8, !tbaa !374
  %i.yg = getelementptr inbounds [8 x i8], ptr %i.yf, i64 %indvars.iv1043
  store <2 x float> %i.ye, ptr %i.yg, align 4
  %i.yh = load ptr, ptr %i.bg, align 8, !tbaa !118 ; 2 uses
  %i.yi = getelementptr inbounds [8 x i8], ptr %i.yh, i64 %indvars.iv1043
  store <2 x float> %i.fw, ptr %i.yi, align 4, !tbaa !46
  %i.yj = fpext float %i.xz to double             ; 2 uses
  %i.yk = fpext float %i.yb to double             ; 2 uses
  %i.yl = fmul double %i.yk, %i.yk
  %i.ym = call noundef double @llvm.fmuladd.f64(double %i.yj, double %i.yj, double %i.yl) ; 2 uses
  %i.yn = load double, ptr %i.bz, align 8, !tbaa !122
  %i.yo = fcmp ugt double %i.ym, %i.yn
  br i1 %i.yo, label %bb.bd, label %.thread

bb.bd:                                            ; preds = %bb.bc
  %i.yp = fsub float %i.xz, %.sroa.0666.0942
  %i.yq = call noundef float @llvm.fabs.f32(float %i.yp)
  %i.yr = fpext float %i.yq to double
  %i.ys = fcmp uge double %i.yr, 1.000000e-02     ; 2 uses
  br i1 %i.ys, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.yt = fsub float %i.yb, %.sroa.7668.0941
  %i.yu = call noundef float @llvm.fabs.f32(float %i.yt)
  %i.yv = fpext float %i.yu to double
  %i.yw = fcmp olt double %i.yv, 1.000000e-02
  br i1 %i.yw, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.yx = fcmp ugt double %i.ym, 1.000000e-03
  br i1 %i.yx, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.yy = fadd float %i.xw, %.sroa.0664.1
  %i.yz = call noundef float @llvm.fabs.f32(float %i.yy)
  %i.za = fpext float %i.yz to double
  %i.zb = fcmp olt double %i.za, 1.000000e-02
  br i1 %i.zb, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg, %bb.be
  %i.zc = getelementptr inbounds [8 x i8], ptr %i.yh, i64 %indvars.iv1043 ; 2 uses
  %i.zd = fmul float %i.pz, %i.qh
  %i.ze = fmul float %i.zd, %i.ri
  %i.zf = call float @llvm.fmuladd.f32(float %i.to, float %i.pp, float %i.ze)
  %i.zg = fmul float %i.qu, %i.qh
  %i.zh = call float @llvm.fmuladd.f32(float %i.zg, float %i.qh, float %i.zf)
  %i.zi = fmul float %i.qt, %i.qd
  %i.zj = call float @llvm.fmuladd.f32(float %i.zi, float %i.qd, float %i.zh)
  %i.zk = call float @llvm.fmuladd.f32(float %i.um, float %i.pu, float %i.zj)
  %i.zl = fmul float %i.zk, %i.tg
  %i.zm = extractelement <2 x float> %i.xk, i64 1
  %i.zn = extractelement <2 x float> %i.xk, i64 0
  %i.zo = load ptr, ptr %i.av, align 8, !tbaa !374
  %i.zp = getelementptr inbounds [8 x i8], ptr %i.zo, i64 %indvars.iv1043 ; 2 uses
  %i.zq = fmul <2 x float> %i.xq, splat (float 5.000000e-01)
  %i.zr = shufflevector <2 x float> %i.zq, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.zs = load <2 x float>, ptr %i.zp, align 4, !tbaa !46
  %i.zt = fadd <2 x float> %i.zs, %i.zr
  store <2 x float> %i.zt, ptr %i.zp, align 4, !tbaa !46
  %i.zu = call float @llvm.fmuladd.f32(float %i.zm, float %i.xs, float 0.000000e+00)
  %i.zv = call float @llvm.fmuladd.f32(float %i.zn, float %38, float %i.zu)
  %i.zw = call float @llvm.fmuladd.f32(float %i.vh, float %i.xu, float %i.zv)
  %i.zx = call float @llvm.fmuladd.f32(float %i.zl, float %39, float %i.zw)
  %i.zy = insertelement <2 x float> poison, float %i.xw, i64 0
  %i.zz = insertelement <2 x float> %i.zy, float %i.zx, i64 1
  %i.aaa = fmul <2 x float> %i.zz, splat (float 5.000000e-01)
  %i.aab = load <2 x float>, ptr %i.zc, align 4, !tbaa !46
  %i.aac = fadd <2 x float> %i.aab, %i.aaa
  store <2 x float> %i.aac, ptr %i.zc, align 4, !tbaa !46
  br label %.thread

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %brmerge = or i1 %i.ii, %i.ys
  br i1 %brmerge, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.aad = fsub float %i.yb, %.sroa.7668.0941
  %i.aae = call noundef float @llvm.fabs.f32(float %i.aad)
  %i.aaf = fpext float %i.aae to double
  %i.aag = fcmp olt double %i.aaf, 1.000000e-02
  br i1 %i.aag, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %bb.bj
  %i.aah = load ptr, ptr %i.av, align 8, !tbaa !374
  %i.aai = getelementptr inbounds [8 x i8], ptr %i.aah, i64 %indvars.iv1043 ; 2 uses
  %i.aaj = load <2 x float>, ptr %i.aai, align 4, !tbaa !46
  %i.aak = fmul <2 x float> %i.xq, splat (float 5.000000e-01)
  %i.aal = shufflevector <2 x float> %i.aak, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aam = fadd <2 x float> %i.aaj, %i.aal
  store <2 x float> %i.aam, ptr %i.aai, align 4, !tbaa !46
  br label %.thread

bb.bl:                                            ; preds = %bb.bi, %bb.bj
  %i.aan = add nuw nsw i32 %.0455954, 1           ; 2 uses
  %i.aao = load i32, ptr %i.bh, align 4, !tbaa !121
  %i.aap = icmp slt i32 %i.aan, %i.aao
  br i1 %i.aap, label %bb.af, label %.thread, !llvm.loop !371

.thread:                                          ; preds = %bb.bl, %bb.bc, %bb.ax, %bb.ae, %bb.bk, %bb.bh, %bb.bb, %bb.ba, %bb.ak, %bb.aj, %bb.ai, %bb.z, %bb.ad, %bb.ac, %bb.s
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  %indvars.iv.next1044 = add nsw i64 %indvars.iv1043, 1 ; 2 uses
  %i.aaq = load i32, ptr %i.ap, align 4, !tbaa !100
  %i.aar = sext i32 %i.aaq to i64
  %i.aas = icmp slt i64 %indvars.iv.next1044, %i.aar
  br i1 %i.aas, label %bb.l, label %._crit_edge, !llvm.loop !372

bb.bm:                                            ; preds = %bb.v, %bb.u
  %.pn565.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.dr, %bb.u ], [ %i.ds, %bb.v ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %10) #20
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.t
  %.pn565.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn565.pn.pn.pn.pn.pn.pn, %bb.bm ], [ %i.dq, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %8) #20
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.k
  %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn565.pn.pn.pn.pn.pn.pn.pn, %bb.bn ], [ %i.ci, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.j
  %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bo ], [ %i.ch, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aat = load ptr, ptr %6, align 8, !tbaa !84   ; 3 uses
  %.not.i.i637 = icmp eq ptr %i.aat, %i.ad
  %i.aau = icmp eq ptr %i.aat, null
  %or.cond.i638 = or i1 %.not.i.i637, %i.aau
  br i1 %or.cond.i638, label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit639, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  call void @_ZdaPv(ptr noundef nonnull %i.aat) #22
  br label %_ZN2cv10AutoBufferIsLm520EED2Ev.exit639

_ZN2cv10AutoBufferIsLm520EED2Ev.exit639:          ; preds = %bb.bq, %bb.bp, %bb.i
  %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.i ], [ %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bp ], [ %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  br label %bb.br

bb.br:                                            ; preds = %_ZN2cv10AutoBufferIsLm520EED2Ev.exit639, %bb.h
  %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.h ], [ %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn, %_ZN2cv10AutoBufferIsLm520EED2Ev.exit639 ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn565.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN2cv3MatC1ENS_5Size_IiEEiPvm(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef, ptr noundef, i64 noundef) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0, i32 noundef %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %4, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) %5, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) %6, i32 noundef %7, i32 noundef %8) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %10 = alloca %"class.std::allocator.5", align 1 ; 3 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.b = alloca double, align 8                   ; 4 uses
  %13 = alloca %"class.cv::Rect_", align 4        ; 9 uses
  %14 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.c = alloca double, align 8                   ; 5 uses
  %16 = alloca %"class.cv::Rect_", align 8        ; 11 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %18 = alloca %"class.cv::_InputArray", align 8  ; 7 uses
  %i.d = alloca double, align 8                   ; 5 uses
  %19 = alloca %"class.cv::Mat", align 8          ; 7 uses
  %20 = alloca %"class.cv::Rect_", align 4        ; 8 uses
  %21 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = icmp ne i32 %1, 1
  %.not = icmp eq i32 %8, %7
  %or.cond = or i1 %i.f, %.not
  br i1 %or.cond, label %bb.ac, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42   ; 3 uses
  %i.i = add nsw i32 %i.h, -1
  %i.j = sdiv i32 %i.i, 2                         ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !41   ; 3 uses
  %i.m = load i32, ptr %2, align 4, !tbaa !40     ; 3 uses
  %.sroa.11.8.insert.ext = zext i32 %i.h to i64
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %.sroa.11.12.insert.ext = zext i32 %i.o to i64
  %.sroa.11.12.insert.shift = shl nuw i64 %.sroa.11.12.insert.ext, 32
  %.sroa.11.12.insert.insert = or disjoint i64 %.sroa.11.12.insert.shift, %.sroa.11.8.insert.ext
  %i.p = icmp eq i32 %7, %i.h
  %i.q = icmp slt i32 %i.m, 0
  %or.cond.i = select i1 %i.p, i1 true, i1 %i.q
  %i.r = icmp slt i32 %i.l, 0
  %or.cond226.i = select i1 %or.cond.i, i1 true, i1 %i.r
  br i1 %or.cond226.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = shl nsw i32 %i.j, 1                      ; 2 uses
  %i.t = add nsw i32 %i.s, %i.m
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %.not.i = icmp slt i32 %i.t, %i.v
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.w = add nsw i32 %i.s, %i.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !43
  %.not181.i = icmp slt i32 %i.w, %i.y
  br i1 %.not181.i, label %bb.m, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !89
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i32 -1056833530, ptr %11, align 8, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %i.a, ptr %i.aa, align 8, !tbaa !32
  store i64 4294967297, ptr %i.z, align 8
  %i.ab = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  %i.ac = call noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ab) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !44 ; 6 uses
  %i.af = icmp slt i32 %i.ae, 3
  br i1 %i.af, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @.str.3, ptr noundef nonnull align 1 dereferenceable(1) %10)
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.4, i32 noundef 109) #21
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ag = landingpad { ptr, i32 }
          cleanup
  %i.ah = load ptr, ptr %9, align 8, !tbaa !37    ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.ak = load i64, ptr %i.ai, align 8, !tbaa !38
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ah, i64 noundef %i.al) #22
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %bb.s, %bb.y, %bb.ab
  %common.resume.op = phi { ptr, i32 } [ %i.ag, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.eg, %bb.y ], [ %i.ep, %bb.ab ], [ %i.cx, %bb.s ]
end_hunk_0
begin_hunk_1_@_ZNK2cv7optflow4rlof6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store i32 0, ptr %10, align 4, !tbaa !79
  store i32 0, ptr %i.au, align 4, !tbaa !80
  store i32 %i.dr, ptr %i.av, align 4, !tbaa !49
  store i32 %i.dr, ptr %i.aw, align 4, !tbaa !50
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 4 dereferenceable(16) %10)
          to label %bb.k unwind label %bb.o

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #20
  store double 0.000000e+00, ptr %i.c, align 8, !tbaa !89
  store i32 -1056833530, ptr %11, align 8, !tbaa !31
  store ptr %i.c, ptr %i.ay, align 8, !tbaa !32
  store i64 4294967297, ptr %i.ax, align 8
  %i.dt = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.du = invoke noundef nonnull align 8 dereferenceable(208) ptr @_ZN2cv3Mat5setToERKNS_11_InputArrayES3_(ptr noundef nonnull align 8 dereferenceable(208) %4, ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.dt)
          to label %bb.m unwind label %bb.p       ; 0 uses

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  %i.dv = load i32, ptr %i.az, align 8, !tbaa !189
  %i.dw = load i32, ptr %i.ba, align 4, !tbaa !184
  %i.dx = load i32, ptr %i.m, align 8, !tbaa !185
  %i.dy = invoke fastcc noundef zeroext i1 @_ZN2cv7optflowL14calcWinMaskMatERKNS_3MatEiRKNS_6Point_IiEERS1_RNS_5Size_IiEERNS4_IfEERiii(ptr noundef nonnull align 8 dereferenceable(208) %i.l, i32 noundef %i.dv, ptr noundef nonnull align 4 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 4 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i32 noundef %i.dw, i32 noundef %i.dx)
          to label %bb.n unwind label %bb.q

bb.n:                                             ; preds = %bb.m
  br i1 %i.dy, label %bb.r, label %bb.cf

bb.o:                                             ; preds = %bb.j
  %i.dz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #20
  br label %bb.ci

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.ea = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #20
  br label %bb.ch

bb.q:                                             ; preds = %bb.m
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch

bb.r:                                             ; preds = %bb.n
  %i.ec = load i32, ptr %i.m, align 8, !tbaa !185
  %i.ed = sitofp i32 %i.ec to float
  %i.ee = load <2 x float>, ptr %2, align 8, !tbaa !46
  %i.ef = insertelement <2 x float> poison, float %i.ed, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = fsub <2 x float> %i.eg, %i.ee           ; 4 uses
  store <2 x float> %i.eh, ptr %2, align 8
  %i.ei = fadd <2 x float> %i.dc, %i.eh           ; 3 uses
  %i.ej = extractelement <2 x float> %i.ei, i64 1
  %i.ek = call float @llvm.floor.f32(float %i.ej)
  %i.el = extractelement <2 x float> %i.ei, i64 0
  %i.em = call float @llvm.floor.f32(float %i.el)
  %i.en = insertelement <2 x float> poison, float %i.em, i64 0
  %i.eo = insertelement <2 x float> %i.en, float %i.ek, i64 1
  %i.ep = fptosi <2 x float> %i.eo to <2 x i32>   ; 4 uses
  %i.eq = extractelement <2 x i32> %i.ep, i64 0   ; 2 uses
  store <2 x i32> %i.ep, ptr %8, align 8, !tbaa !47
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.es = load i32, ptr %i.bb, align 4, !tbaa !42
  %i.et = load i32, ptr %3, align 8, !tbaa !28
  %i.eu = sub nsw i32 %i.es, %i.et
  %i.ev = icmp sle i32 %i.eu, %i.eq
  %i.ew = extractelement <2 x i32> %i.ep, i64 1   ; 2 uses
  %i.ex = icmp slt i32 %i.ew, 0
  %or.cond = or i1 %i.ex, %i.ev
  br i1 %or.cond, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ey = load i32, ptr %i.bc, align 8, !tbaa !43
  %i.ez = load i32, ptr %i.d, align 4, !tbaa !29  ; 5 uses
  %i.fa = xor i32 %i.ez, -1                       ; 2 uses
  %i.fb = add i32 %i.ey, %i.fa
  %.not = icmp sgt i32 %i.fb, %i.ew
  br i1 %.not, label %bb.z, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %i.fc = load i32, ptr %i.aq, align 8, !tbaa !187
  %i.fd = icmp eq i32 %i.fc, 0
  br i1 %i.fd, label %bb.v, label %bb.cf

bb.v:                                             ; preds = %bb.u
  %i.fe = load ptr, ptr %i.ck, align 8, !tbaa !181 ; 2 uses
  %.not696 = icmp eq ptr %i.fe, null
  br i1 %.not696, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ff = getelementptr inbounds i8, ptr %i.fe, i64 %indvars.iv1079
  store i8 3, ptr %i.ff, align 1, !tbaa !38
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.fg = load ptr, ptr %i.cl, align 8, !tbaa !182 ; 2 uses
  %.not697 = icmp eq ptr %i.fg, null
  br i1 %.not697, label %bb.cf, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %indvars.iv1079
  store float 0.000000e+00, ptr %i.fh, align 4, !tbaa !46
  br label %bb.cf

bb.z:                                             ; preds = %bb.t
  %i.fi = uitofp <2 x i32> %i.ep to <2 x float>
  %i.fj = fsub <2 x float> %i.ei, %i.fi           ; 3 uses
  %i.fk = fsub <2 x float> splat (float 1.000000e+00), %i.fj ; 3 uses
  %i.fl = extractelement <2 x float> %i.fk, i64 0
  %i.fm = extractelement <2 x float> %i.fk, i64 1 ; 2 uses
  %i.fn = fmul float %i.fl, %i.fm
  %i.fo = fmul float %i.fn, 1.638400e+04
  %i.fp = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fp) ; 2 uses
  %i.fr = extractelement <2 x float> %i.fj, i64 0
  %i.fs = fmul float %i.fr, %i.fm
  %i.ft = fmul float %i.fs, 1.638400e+04
  %i.fu = insertelement <4 x float> poison, float %i.ft, i64 0
  %i.fv = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fu) ; 2 uses
  %shift = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.fk, %shift
  %i.fw = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.fx = fmul float %i.fw, 1.638400e+04
  %i.fy = insertelement <4 x float> poison, float %i.fx, i64 0
  %i.fz = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.fy) ; 2 uses
  %i.ga = add i32 %i.fq, %i.fv
  %i.gb = add i32 %i.ga, %i.fz
  %i.gc = sub i32 16384, %i.gb
  %.sroa.0146.0.copyload = load i64, ptr %3, align 8 ; 2 uses
  %.sroa.0145.0.copyload = load i64, ptr %8, align 8
  call fastcc void @_ZN2cv7optflowL14copyWinBuffersEiiiiNS_5Size_IiEERKNS_3MatES5_S5_RS3_S6_NS_6Point_IiEE(i32 noundef %i.fq, i32 noundef %i.fv, i32 noundef %i.fz, i32 noundef %i.gc, i64 %.sroa.0146.0.copyload, ptr noundef nonnull align 8 dereferenceable(208) %i.f, ptr noundef nonnull align 8 dereferenceable(208) %i.j, ptr noundef nonnull align 8 dereferenceable(208) %9, ptr noundef nonnull align 8 dereferenceable(208) %6, ptr noundef nonnull align 8 dereferenceable(208) %7, i64 %.sroa.0145.0.copyload)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.gd = trunc i64 %.sroa.0146.0.copyload to i32 ; 3 uses
  %i.ge = add nsw i32 %i.gd, 8
  %i.gf = mul i32 %i.ez, %i.x
  %i.gg = mul i32 %i.gf, %i.ge
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %13, i32 noundef %i.gg, i32 noundef 1, i32 noundef 3)
          to label %bb.aa unwind label %bb.ah

bb.aa:                                            ; preds = %bb.z
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %12) #20
  %i.gh = load ptr, ptr %13, align 8, !tbaa !95, !noalias !411 ; 2 uses
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !97
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(8) %i.gh, ptr noundef nonnull align 8 dereferenceable(688) %13, ptr noundef nonnull align 8 dereferenceable(208) %12, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.aa
  %i.gl = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %13) #20
  br label %bb.ai

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.aa
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bd) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.be) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.bf) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  %i.gm = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gm, i64 %indvars.iv1079
  %i.go = load i64, ptr %i.gn, align 4            ; 3 uses
  %i.gp = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.gq = icmp sgt i32 %i.gp, 0
  br i1 %i.gq, label %.lr.ph1045, label %.thread919

.lr.ph1045:                                       ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.gr = bitcast i64 %i.go to <2 x float>
  %i.gs = fadd <2 x float> %.sroa.0810.0, %i.eh
  %i.gt = icmp sgt i32 %i.ez, 0                   ; 2 uses
  %i.gu = mul i32 %i.x, %i.gd                     ; 4 uses
  %i.gv = icmp sgt i32 %i.gu, 0                   ; 2 uses
  %i.gw = load i32, ptr %i.b, align 4
  %i.gx = sitofp i32 %i.gw to float               ; 2 uses
  %i.gy = fdiv float 1.000000e+00, %i.gx          ; 2 uses
  %i.gz = fmul nnan float %i.gx, 2.000000e+00
  %wide.trip.count1067 = zext nneg i32 %i.ez to i64
  %wide.trip.count = zext nneg i32 %i.gu to i64
  %wide.trip.count1062 = zext nneg i32 %i.gu to i64
  %wide.trip.count1077 = zext nneg i32 %i.ez to i64
  %wide.trip.count1072 = zext nneg i32 %i.gu to i64
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph1045, %bb.ce
  %.05321044 = phi float [ 1.000000e+00, %.lr.ph1045 ], [ %.2534.lcssa.a, %bb.ce ]
  %.05351043 = phi i32 [ 0, %.lr.ph1045 ], [ %i.afl, %bb.ce ] ; 2 uses
  %.05431041 = phi float [ 0.000000e+00, %.lr.ph1045 ], [ %.6549, %bb.ce ]
  %.05571039 = phi float [ 0.000000e+00, %.lr.ph1045 ], [ %.6563, %bb.ce ]
  %.sroa.0793.01028 = phi float [ 0.000000e+00, %.lr.ph1045 ], [ %i.adq, %bb.ce ]
  %.sroa.0795.01027 = phi float [ 0.000000e+00, %.lr.ph1045 ], [ %i.aeh, %bb.ce ]
  %.sroa.6796.01026 = phi float [ 0.000000e+00, %.lr.ph1045 ], [ %i.afo, %bb.ce ]
  %.sroa.0810.11025 = phi <2 x float> [ %i.gs, %.lr.ph1045 ], [ %i.adw, %bb.ce ] ; 4 uses
  %i.ha = phi <2 x float> [ zeroinitializer, %.lr.ph1045 ], [ %i.ux, %bb.ce ]
  %i.hb = phi <2 x float> [ zeroinitializer, %.lr.ph1045 ], [ %i.uy, %bb.ce ]
  %i.hc = phi <2 x float> [ %i.gr, %.lr.ph1045 ], [ %i.aeg, %bb.ce ] ; 7 uses
  %i.hd = phi <4 x float> [ zeroinitializer, %.lr.ph1045 ], [ %i.uz, %bb.ce ]
  %.sroa.0810.0.vec.extract = extractelement <2 x float> %.sroa.0810.11025, i64 0
  %.sroa.0810.4.vec.extract828 = extractelement <2 x float> %.sroa.0810.11025, i64 1
  %i.he = call float @llvm.floor.f32(float %.sroa.0810.4.vec.extract828)
  %i.hf = call float @llvm.floor.f32(float %.sroa.0810.0.vec.extract)
  %i.hg = insertelement <2 x float> poison, float %i.hf, i64 0
  %i.hh = insertelement <2 x float> %i.hg, float %i.he, i64 1
  %i.hi = fptosi <2 x float> %i.hh to <2 x i32>   ; 3 uses
  %i.hj = extractelement <2 x i32> %i.hi, i64 0   ; 4 uses
  %i.hk = icmp slt i32 %i.hj, 0
  br i1 %i.hk, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.hl = load i32, ptr %i.bi, align 4, !tbaa !42
  %i.hm = sub nsw i32 %i.hl, %i.gd
  %i.hn = icmp sle i32 %i.hm, %i.hj
  %i.ho = extractelement <2 x i32> %i.hi, i64 1   ; 4 uses
  %i.hp = icmp slt i32 %i.ho, 0
  %or.cond5 = or i1 %i.hp, %i.hn
  br i1 %or.cond5, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.hq = load i32, ptr %i.bj, align 8, !tbaa !43
  %i.hr = add i32 %i.hq, %i.fa
  %.not670 = icmp sgt i32 %i.hr, %i.ho
  br i1 %.not670, label %bb.ak, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab
  %i.hs = load i32, ptr %i.aq, align 8, !tbaa !187 ; 2 uses
  %i.ht = icmp eq i32 %i.hs, 0
  br i1 %i.ht, label %bb.af, label %thread-pre-split

bb.af:                                            ; preds = %bb.ae
  %i.hu = load ptr, ptr %i.ck, align 8, !tbaa !181 ; 2 uses
  %.not695 = icmp eq ptr %i.hu, null
  br i1 %.not695, label %.thread919, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.hv = getelementptr inbounds i8, ptr %i.hu, i64 %indvars.iv1079
  store i8 3, ptr %i.hv, align 1, !tbaa !38
  %.pr.pre = load i32, ptr %i.aq, align 8, !tbaa !187
  br label %thread-pre-split

bb.ah:                                            ; preds = %bb.z
  %i.hw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.ai:                                            ; preds = %.body, %bb.ah
  %.pn668 = phi { ptr, i32 } [ %i.gl, %.body ], [ %i.hw, %bb.ah ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #20
  br label %bb.cg

thread-pre-split:                                 ; preds = %bb.ag, %bb.ae
  %i.hx = phi i32 [ %i.hs, %bb.ae ], [ %.pr.pre, %bb.ag ]
  %i.hy = icmp sgt i32 %i.hx, 0
  br i1 %i.hy, label %bb.aj, label %.thread919

bb.aj:                                            ; preds = %thread-pre-split
  %i.hz = load ptr, ptr %i.as, align 8, !tbaa !410
  %i.ia = getelementptr inbounds [8 x i8], ptr %i.hz, i64 %indvars.iv1079
  store <2 x float> %.sroa.0810.0, ptr %i.ia, align 4
  %i.ib = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.ic = getelementptr inbounds [8 x i8], ptr %i.ib, i64 %indvars.iv1079
  store i64 %i.go, ptr %i.ic, align 4
  br label %.thread919

bb.ak:                                            ; preds = %bb.ad
  %i.id = uitofp <2 x i32> %i.hi to <2 x float>
  %i.ie = fsub <2 x float> %.sroa.0810.11025, %i.id ; 3 uses
  %i.if = fsub <2 x float> splat (float 1.000000e+00), %i.ie ; 3 uses
  %i.ig = extractelement <2 x float> %i.if, i64 0
  %i.ih = extractelement <2 x float> %i.if, i64 1 ; 2 uses
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = fmul float %i.ii, 1.638400e+04
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %i.il = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ik) ; 4 uses
  %i.im = extractelement <2 x float> %i.ie, i64 0
  %i.in = fmul float %i.im, %i.ih
  %i.io = fmul float %i.in, 1.638400e+04
  %i.ip = insertelement <4 x float> poison, float %i.io, i64 0
  %i.iq = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.ip) ; 4 uses
  %shift1124 = shufflevector <2 x float> %i.ie, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1125 = fmul <2 x float> %shift1124, %i.if
  %i.ir = extractelement <2 x float> %foldExtExtBinop1125, i64 0
  %i.is = fmul float %i.ir, 1.638400e+04
  %i.it = insertelement <4 x float> poison, float %i.is, i64 0
  %i.iu = call noundef i32 @llvm.x86.sse.cvtss2si(<4 x float> %i.it) ; 4 uses
  %i.iv = add i32 %i.il, %i.iq
  %i.iw = add i32 %i.iv, %i.iu
  %i.ix = sub i32 16384, %i.iw                    ; 3 uses
  %i.iy = icmp eq i32 %.05351043, 0               ; 4 uses
  br i1 %i.iy, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.ak
  br i1 %i.gt, label %.lr.ph955, label %._crit_edge956

.lr.ph955:                                        ; preds = %.preheader
  %i.iz = mul nuw nsw i32 %i.x, %i.hj
  %i.ja = load i32, ptr %i.bk, align 4, !tbaa !76
  %i.jb = icmp slt i32 %i.ja, 2
  %i.jc = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 3 uses
  %i.jd = zext nneg i32 %i.iz to i64              ; 2 uses
  %i.je = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.jf = icmp slt i32 %i.je, 2
  %i.jg = load ptr, ptr %i.bp, align 8, !tbaa !77
  %i.jh = load i32, ptr %i.br, align 4, !tbaa !76
  %i.ji = icmp slt i32 %i.jh, 2
  %i.jj = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.jk = zext nneg i32 %i.ho to i64
  %i.jl = extractelement <2 x float> %i.hc, i64 0
  %i.jm = extractelement <2 x float> %i.hc, i64 1
  %i.jn = extractelement <2 x float> %i.hc, i64 0
  %i.jo = extractelement <2 x float> %i.hc, i64 1
  br label %bb.al

._crit_edge956:                                   ; preds = %._crit_edge, %.preheader
  %.0531.lcssa = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #20
  store i32 0, ptr %15, align 4, !tbaa !79
  store i32 0, ptr %i.ca, align 4, !tbaa !80
  store i32 1, ptr %i.cb, align 4, !tbaa !49
  store i32 %.0531.lcssa, ptr %i.cc, align 4, !tbaa !50
  invoke void @_ZN2cv3MatC1ERKS0_RKNS_5Rect_IiEE(ptr noundef nonnull align 8 dereferenceable(208) %14, ptr noundef nonnull align 8 dereferenceable(208) %12, ptr noundef nonnull align 4 dereferenceable(16) %15)
          to label %bb.ax unwind label %bb.bb

bb.al:                                            ; preds = %.lr.ph955, %._crit_edge
  %indvars.iv1064 = phi i64 [ 0, %.lr.ph955 ], [ %indvars.iv.next1065, %._crit_edge ] ; 4 uses
  %.0531953 = phi i32 [ 0, %.lr.ph955 ], [ %.1.lcssa, %._crit_edge ] ; 3 uses
  br i1 %i.jb, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.jp = load i64, ptr %i.bm, align 8, !tbaa !78
  %i.jq = mul i64 %i.jp, %i.jd
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.jq ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739

bb.an:                                            ; preds = %bb.al
  %i.js = add nuw nsw i64 %indvars.iv1064, %i.jk  ; 2 uses
  %i.jt = load i64, ptr %i.bm, align 8, !tbaa !78 ; 2 uses
  %i.ju = mul i64 %i.jt, %i.js
  %i.jv = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ju
  %i.jw = load i64, ptr %i.bn, align 8, !tbaa !78
  %i.jx = mul i64 %i.jw, %i.jd                    ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jv, i64 %i.jx
  %i.jz = add nuw nsw i64 %i.js, 1
  %i.ka = mul i64 %i.jt, %i.jz
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jc, i64 %i.ka
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 %i.jx
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739:                ; preds = %bb.am, %bb.an
  %.0.i912 = phi ptr [ %i.jr, %bb.am ], [ %i.jy, %bb.an ] ; 4 uses
  %.0.i738 = phi ptr [ %i.jr, %bb.am ], [ %i.kc, %bb.an ] ; 4 uses
  %i.kd = load i64, ptr %i.bq, align 8
  %i.ke = mul i64 %i.kd, %indvars.iv1064
  %.0.i740.idx = select i1 %i.jf, i64 0, i64 %i.ke
  %.0.i740 = getelementptr inbounds nuw i8, ptr %i.jg, i64 %.0.i740.idx ; 2 uses
  br i1 %i.gv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739
  %i.kf = load i64, ptr %i.bt, align 8
  %i.kg = mul i64 %i.kf, %indvars.iv1064
  %.0.i741.idx = select i1 %i.ji, i64 0, i64 %i.kg
  %.0.i741 = getelementptr inbounds nuw i8, ptr %i.jj, i64 %.0.i741.idx ; 2 uses
  %i.kh = load i32, ptr %i.bu, align 4
  %.fr1049 = freeze i32 %i.kh
  %i.ki = icmp slt i32 %.fr1049, 2
  %i.kj = load i32, ptr %12, align 8
  %i.kk = and i32 %i.kj, 16384
  %i.kl = icmp ne i32 %i.kk, 0
  %i.km = load i32, ptr %i.bw, align 8
  %i.kn = icmp eq i32 %i.km, 1
  %i.ko = load i32, ptr %i.bx, align 4            ; 3 uses
  %i.kp = load ptr, ptr %i.by, align 8            ; 4 uses
  %i.kq = load i64, ptr %i.bz, align 8            ; 2 uses
  br i1 %i.ki, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.ap
  %indvars.iv1059 = phi i64 [ %indvars.iv.next1060, %bb.ap ], [ 0, %.lr.ph ] ; 5 uses
  %.0529951.us = phi ptr [ %i.mf, %bb.ap ], [ %.0.i741, %.lr.ph ] ; 3 uses
  %.1950.us = phi i32 [ %.2.us, %bb.ap ], [ %.0531953, %.lr.ph ] ; 3 uses
  %i.kr = load i16, ptr %.0529951.us, align 2, !tbaa !87
  %i.ks = icmp eq i16 %i.kr, 0
  br i1 %i.ks, label %bb.ao, label %_ZN2cv3Mat2atIsEERT_i.exit.us

bb.ao:                                            ; preds = %.lr.ph.split.us
  %i.kt = getelementptr inbounds nuw i8, ptr %.0529951.us, i64 2
  %i.ku = load i16, ptr %i.kt, align 2, !tbaa !87
end_hunk_1
begin_hunk_2_@_ZNK2cv7optflow4rlof6radial14TrackerInvokerclERKNS_5RangeE:bb.a
  %i.ln = add i32 %i.kz, 256
  %i.lo = add i32 %i.ln, %i.le
  %i.lp = add i32 %i.lo, %i.li
  %i.lq = add i32 %i.lp, %i.lm
  %i.lr = ashr i32 %i.lq, 9
  %i.ls = getelementptr inbounds nuw [2 x i8], ptr %.0.i740, i64 %indvars.iv1059
  %i.lt = load i16, ptr %i.ls, align 2, !tbaa !87 ; 2 uses
  %i.lu = sext i16 %i.lt to i32
  %i.lv = sub nsw i32 %i.lr, %i.lu
  %i.lw = sitofp i32 %i.lv to float
  %i.lx = sitofp i16 %i.lt to float
  %i.ly = call float @llvm.fmuladd.f32(float %i.lx, float %i.jn, float %i.lw)
  %i.lz = fadd float %i.jo, %i.ly
  %i.ma = fptosi float %i.lz to i32
  %i.mb = trunc i32 %i.ma to i16
  %i.mc = add nsw i32 %.1950.us, 1
  %i.md = sext i32 %.1950.us to i64
  %i.me = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %i.md
  store i16 %i.mb, ptr %i.me, align 2, !tbaa !87
  br label %bb.ap

bb.ap:                                            ; preds = %_ZN2cv3Mat2atIsEERT_i.exit.us, %bb.ao
  %.2.us = phi i32 [ %.1950.us, %bb.ao ], [ %i.mc, %_ZN2cv3Mat2atIsEERT_i.exit.us ] ; 2 uses
  %indvars.iv.next1060 = add nuw nsw i64 %indvars.iv1059, 1 ; 2 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %.0529951.us, i64 4
  %exitcond1063.not = icmp eq i64 %indvars.iv.next1060, %wide.trip.count1062
  br i1 %exitcond1063.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !403

._crit_edge:                                      ; preds = %bb.aw, %bb.ap, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739
  %.1.lcssa = phi i32 [ %.0531953, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit739 ], [ %.2.us, %bb.ap ], [ %.2, %bb.aw ] ; 2 uses
  %indvars.iv.next1065 = add nuw nsw i64 %indvars.iv1064, 1 ; 2 uses
  %exitcond1068.not = icmp eq i64 %indvars.iv.next1065, %wide.trip.count1067
  br i1 %exitcond1068.not, label %._crit_edge956, label %bb.al, !llvm.loop !404

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.aw
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.aw ], [ 0, %.lr.ph ] ; 5 uses
  %.0529951 = phi ptr [ %i.og, %bb.aw ], [ %.0.i741, %.lr.ph ] ; 3 uses
  %.1950 = phi i32 [ %.2, %bb.aw ], [ %.0531953, %.lr.ph ] ; 6 uses
  %i.mg = load i16, ptr %.0529951, align 2, !tbaa !87
  %i.mh = icmp eq i16 %i.mg, 0
  br i1 %i.mh, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %.lr.ph.split
  %i.mi = getelementptr inbounds nuw i8, ptr %.0529951, i64 2
  %i.mj = load i16, ptr %i.mi, align 2, !tbaa !87
  %i.mk = icmp eq i16 %i.mj, 0
  br i1 %i.mk, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.lr.ph.split
  %i.ml = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %indvars.iv
  %i.mm = load i8, ptr %i.ml, align 1, !tbaa !38
  %i.mn = zext i8 %i.mm to i32
  %i.mo = mul nsw i32 %i.il, %i.mn
  %i.mp = add nuw nsw i64 %indvars.iv, %i.cm      ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.0.i912, i64 %i.mp
  %i.mr = load i8, ptr %i.mq, align 1, !tbaa !38
  %i.ms = zext i8 %i.mr to i32
  %i.mt = mul nsw i32 %i.iq, %i.ms
  %i.mu = getelementptr inbounds nuw i8, ptr %.0.i738, i64 %indvars.iv
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !38
  %i.mw = zext i8 %i.mv to i32
  %i.mx = mul nsw i32 %i.iu, %i.mw
  %i.my = getelementptr inbounds nuw i8, ptr %.0.i738, i64 %i.mp
  %i.mz = load i8, ptr %i.my, align 1, !tbaa !38
  %i.na = zext i8 %i.mz to i32
  %i.nb = mul nsw i32 %i.ix, %i.na
  %i.nc = add i32 %i.mo, 256
  %i.nd = add i32 %i.nc, %i.mt
  %i.ne = add i32 %i.nd, %i.mx
  %i.nf = add i32 %i.ne, %i.nb
  %i.ng = ashr i32 %i.nf, 9
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr %.0.i740, i64 %indvars.iv
  %i.ni = load i16, ptr %i.nh, align 2, !tbaa !87 ; 2 uses
  %i.nj = sext i16 %i.ni to i32
  %i.nk = sub nsw i32 %i.ng, %i.nj
  %i.nl = sitofp i32 %i.nk to float
  %i.nm = sitofp i16 %i.ni to float
  %i.nn = call float @llvm.fmuladd.f32(float %i.nm, float %i.jl, float %i.nl)
  %i.no = fadd float %i.jm, %i.nn
  %i.np = fptosi float %i.no to i32
  %i.nq = trunc i32 %i.np to i16
  %i.nr = add nsw i32 %.1950, 1
  %i.ns = load i32, ptr %i.bv, align 4
  %i.nt = icmp eq i32 %i.ns, 1
  %or.cond.i = select i1 %i.kl, i1 true, i1 %i.nt
  br i1 %or.cond.i, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.nu = sext i32 %.1950 to i64
  %i.nv = getelementptr inbounds [2 x i8], ptr %i.kp, i64 %i.nu
  br label %_ZN2cv3Mat2atIsEERT_i.exit

bb.at:                                            ; preds = %bb.ar
  br i1 %i.kn, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.nw = sext i32 %.1950 to i64
  %i.nx = mul i64 %i.kq, %i.nw
  %i.ny = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.nx
  br label %_ZN2cv3Mat2atIsEERT_i.exit

bb.av:                                            ; preds = %bb.at
  %i.nz = sdiv i32 %.1950, %i.ko                  ; 2 uses
  %i.oa = mul nsw i32 %i.nz, %i.ko                ; 0 uses
  %.recomposed = srem i32 %.1950, %i.ko
  %i.ob = sext i32 %i.nz to i64
  %i.oc = mul i64 %i.kq, %i.ob
  %i.od = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.oc
  %i.oe = sext i32 %.recomposed to i64
  %i.of = getelementptr inbounds [2 x i8], ptr %i.od, i64 %i.oe
  br label %_ZN2cv3Mat2atIsEERT_i.exit

_ZN2cv3Mat2atIsEERT_i.exit:                       ; preds = %bb.as, %bb.au, %bb.av
  %.0.i743 = phi ptr [ %i.of, %bb.av ], [ %i.nv, %bb.as ], [ %i.ny, %bb.au ]
  store i16 %i.nq, ptr %.0.i743, align 2, !tbaa !87
  br label %bb.aw

bb.aw:                                            ; preds = %bb.aq, %_ZN2cv3Mat2atIsEERT_i.exit
  %.2 = phi i32 [ %.1950, %bb.aq ], [ %i.nr, %_ZN2cv3Mat2atIsEERT_i.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.og = getelementptr inbounds nuw i8, ptr %.0529951, i64 4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !403

bb.ax:                                            ; preds = %._crit_edge956
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  %i.oh = icmp eq i32 %.0531.lcssa, 0
  br i1 %i.oh, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.oi = invoke fastcc noundef signext i16 @_ZN2cv7optflowL13estimateScaleERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %14)
          to label %bb.az unwind label %bb.bc

bb.az:                                            ; preds = %bb.ay
  %i.oj = sitofp i16 %i.oi to float
  br label %bb.ba

bb.ba:                                            ; preds = %bb.ax, %bb.az
  %i.ok = phi float [ %i.oj, %bb.az ], [ 1.000000e+00, %bb.ax ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  br label %.thread

bb.bb:                                            ; preds = %._crit_edge956
  %i.ol = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #20
  br label %bb.bd

bb.bc:                                            ; preds = %bb.ay
  %i.om = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %14) #20
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %.pn671 = phi { ptr, i32 } [ %i.om, %bb.bc ], [ %i.ol, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  br label %bb.cg

.thread:                                          ; preds = %bb.ak, %bb.ba
  %.1544909 = phi float [ 0.000000e+00, %bb.ba ], [ %.05431041, %bb.ak ] ; 2 uses
  %.1558907 = phi float [ 0.000000e+00, %bb.ba ], [ %.05571039, %bb.ak ] ; 2 uses
  %.1533 = phi float [ %i.ok, %bb.ba ], [ %.05321044, %bb.ak ] ; 4 uses
  %i.on = phi <2 x float> [ zeroinitializer, %bb.ba ], [ %i.ha, %bb.ak ] ; 2 uses
  %i.oo = phi <2 x float> [ zeroinitializer, %bb.ba ], [ %i.hb, %bb.ak ] ; 2 uses
  %i.op = phi <4 x float> [ zeroinitializer, %bb.ba ], [ %i.hd, %bb.ak ] ; 2 uses
  %i.oq = load float, ptr %i.cd, align 4, !tbaa !412
  %i.or = load float, ptr %i.ce, align 8, !tbaa !413
  %i.os = fmul float %.1533, %i.oq                ; 2 uses
  %i.ot = fmul float %.1533, %i.or                ; 4 uses
  br i1 %i.gt, label %.lr.ph1008, label %._crit_edge1009

.lr.ph1008:                                       ; preds = %.thread
  %i.ou = mul nuw nsw i32 %i.x, %i.hj
  %i.ov = load i32, ptr %i.bk, align 4, !tbaa !76
  %i.ow = icmp slt i32 %i.ov, 2
  %i.ox = load ptr, ptr %i.bl, align 8, !tbaa !77 ; 3 uses
  %i.oy = zext nneg i32 %i.ou to i64              ; 2 uses
  %i.oz = load i32, ptr %i.bo, align 4, !tbaa !76
  %i.pa = icmp slt i32 %i.oz, 2
  %i.pb = load ptr, ptr %i.bp, align 8, !tbaa !77
  %i.pc = load i64, ptr %i.bq, align 8
  %i.pd = load i32, ptr %i.br, align 4, !tbaa !76
  %i.pe = icmp slt i32 %i.pd, 2
  %i.pf = load ptr, ptr %i.bs, align 8, !tbaa !77
  %i.pg = load i64, ptr %i.bt, align 8
  %i.ph = load i32, ptr %i.cf, align 4, !tbaa !76
  %i.pi = icmp slt i32 %i.ph, 2
  %i.pj = load ptr, ptr %i.cg, align 8, !tbaa !77
  %i.pk = load i64, ptr %i.ch, align 8
  %i.pl = fptosi float %i.ot to i32
  %i.pm = fptosi float %i.os to i32
  %i.pn = zext nneg i32 %i.ho to i64
  %i.po = extractelement <2 x float> %i.hc, i64 0
  %i.pp = extractelement <2 x float> %i.hc, i64 1
  br label %bb.be

._crit_edge1009.loopexit:                         ; preds = %._crit_edge976
  %16 = fmul <4 x float> %22, <float f0xB7800000, float f0xB7800000, float f0x37800000, float f0x37800000>
  br label %._crit_edge1009

._crit_edge1009:                                  ; preds = %._crit_edge1009.loopexit, %.thread
  %.2559.lcssa.a = phi float [ %.1558907, %.thread ], [ %.3560.lcssa.a, %._crit_edge1009.loopexit ] ; 2 uses
  %.2545.lcssa.a = phi float [ %.1544909, %.thread ], [ %.3546.lcssa.a, %._crit_edge1009.loopexit ] ; 2 uses
  %.2534.lcssa.a = phi float [ %.1533, %.thread ], [ %.3.lcssa.a, %._crit_edge1009.loopexit ]
  %17 = phi <4 x float> [ <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00>, %.thread ], [ %16, %._crit_edge1009.loopexit ] ; 4 uses
  %i.pq = phi <2 x float> [ %i.on, %.thread ], [ %i.qn, %._crit_edge1009.loopexit ] ; 2 uses
  %i.pr = phi <2 x float> [ %i.oo, %.thread ], [ %i.qo, %._crit_edge1009.loopexit ] ; 2 uses
  %i.ps = phi <4 x float> [ %i.op, %.thread ], [ %i.qp, %._crit_edge1009.loopexit ] ; 2 uses
  br i1 %i.iy, label %bb.bt, label %bb.bu

bb.be:                                            ; preds = %.lr.ph1008, %._crit_edge976
  %indvars.iv1074 = phi i64 [ 0, %.lr.ph1008 ], [ %indvars.iv.next1075, %._crit_edge976 ] ; 5 uses
  %.25341006.a = phi float [ %.1533, %.lr.ph1008 ], [ %.3.lcssa.a, %._crit_edge976 ] ; 2 uses
  %.25451004 = phi float [ %.1544909, %.lr.ph1008 ], [ %.3546.lcssa.a, %._crit_edge976 ] ; 2 uses
  %.25591002 = phi float [ %.1558907, %.lr.ph1008 ], [ %.3560.lcssa.a, %._crit_edge976 ] ; 2 uses
  %18 = phi <4 x float> [ zeroinitializer, %.lr.ph1008 ], [ %22, %._crit_edge976 ] ; 3 uses
  %i.pt = phi <2 x float> [ %i.on, %.lr.ph1008 ], [ %i.qn, %._crit_edge976 ] ; 2 uses
  %i.pu = phi <2 x float> [ %i.oo, %.lr.ph1008 ], [ %i.qo, %._crit_edge976 ] ; 2 uses
  %i.pv = phi <4 x float> [ %i.op, %.lr.ph1008 ], [ %i.qp, %._crit_edge976 ] ; 2 uses
  br i1 %i.ow, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.pw = load i64, ptr %i.bm, align 8, !tbaa !78
  %i.px = mul i64 %i.pw, %i.oy
  %i.py = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.px ; 2 uses
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747

bb.bg:                                            ; preds = %bb.be
  %i.pz = add nuw nsw i64 %indvars.iv1074, %i.pn  ; 2 uses
  %i.qa = load i64, ptr %i.bm, align 8, !tbaa !78 ; 2 uses
  %i.qb = mul i64 %i.qa, %i.pz
  %i.qc = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qb
  %i.qd = load i64, ptr %i.bn, align 8, !tbaa !78
  %i.qe = mul i64 %i.qd, %i.oy                    ; 2 uses
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qc, i64 %i.qe
  %i.qg = add nuw nsw i64 %i.pz, 1
  %i.qh = mul i64 %i.qa, %i.qg
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ox, i64 %i.qh
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qe
  br label %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747

_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747:                ; preds = %bb.bf, %bb.bg
  %.0.i744915 = phi ptr [ %i.py, %bb.bf ], [ %i.qf, %bb.bg ] ; 2 uses
  %.0.i746 = phi ptr [ %i.py, %bb.bf ], [ %i.qj, %bb.bg ] ; 2 uses
  %i.qk = mul i64 %i.pc, %indvars.iv1074
  %.0.i748.idx = select i1 %i.pa, i64 0, i64 %i.qk
  %.0.i748 = getelementptr inbounds nuw i8, ptr %i.pb, i64 %.0.i748.idx
  %i.ql = mul i64 %i.pk, %indvars.iv1074
  %.0.i752.idx = select i1 %i.pi, i64 0, i64 %i.ql
  %.0.i752 = getelementptr inbounds nuw i8, ptr %i.pj, i64 %.0.i752.idx
  br i1 %i.gv, label %.lr.ph975.preheader, label %._crit_edge976

.lr.ph975.preheader:                              ; preds = %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747
  %i.qm = mul i64 %i.pg, %indvars.iv1074
  %.0.i750.idx = select i1 %i.pe, i64 0, i64 %i.qm
  %.0.i750 = getelementptr inbounds nuw i8, ptr %i.pf, i64 %.0.i750.idx
  %19 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %20 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  br label %.lr.ph975

._crit_edge976.loopexit:                          ; preds = %bb.bs
  %21 = shufflevector <2 x float> %i.uq, <2 x float> %i.up, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  br label %._crit_edge976

._crit_edge976:                                   ; preds = %._crit_edge976.loopexit, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747
  %.3560.lcssa.a = phi float [ %.25591002, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %.5562, %._crit_edge976.loopexit ] ; 2 uses
  %.3546.lcssa.a = phi float [ %.25451004, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %.5548, %._crit_edge976.loopexit ] ; 2 uses
  %.3.lcssa.a = phi float [ %.25341006.a, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %.6, %._crit_edge976.loopexit ] ; 2 uses
  %22 = phi <4 x float> [ %18, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %21, %._crit_edge976.loopexit ] ; 2 uses
  %i.qn = phi <2 x float> [ %i.pt, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %32, %._crit_edge976.loopexit ] ; 2 uses
  %i.qo = phi <2 x float> [ %i.pu, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %i.un, %._crit_edge976.loopexit ] ; 2 uses
  %i.qp = phi <4 x float> [ %i.pv, %_ZNK2cv3Mat3ptrIhEEPKT_ii.exit747 ], [ %i.uo, %._crit_edge976.loopexit ] ; 2 uses
  %indvars.iv.next1075 = add nuw nsw i64 %indvars.iv1074, 1 ; 2 uses
  %exitcond1078.not = icmp eq i64 %indvars.iv.next1075, %wide.trip.count1077
  br i1 %exitcond1078.not, label %._crit_edge1009.loopexit, label %bb.be, !llvm.loop !405

.lr.ph975:                                        ; preds = %.lr.ph975.preheader, %bb.bs
  %indvars.iv1069 = phi i64 [ 0, %.lr.ph975.preheader ], [ %indvars.iv.next1070, %bb.bs ] ; 6 uses
  %.0526973 = phi ptr [ %.0.i750, %.lr.ph975.preheader ], [ %i.ur, %bb.bs ] ; 2 uses
  %.3972 = phi float [ %.25341006.a, %.lr.ph975.preheader ], [ %.6, %bb.bs ] ; 4 uses
  %.3546970 = phi float [ %.25451004, %.lr.ph975.preheader ], [ %.5548, %bb.bs ] ; 3 uses
  %.3560968 = phi float [ %.25591002, %.lr.ph975.preheader ], [ %.5562, %bb.bs ] ; 3 uses
  %23 = phi <2 x float> [ %i.pu, %.lr.ph975.preheader ], [ %i.un, %bb.bs ] ; 3 uses
  %24 = phi <4 x float> [ %i.pv, %.lr.ph975.preheader ], [ %i.uo, %bb.bs ] ; 3 uses
  %i.qq = phi <2 x float> [ %i.pt, %.lr.ph975.preheader ], [ %32, %bb.bs ] ; 3 uses
  %i.qr = phi <2 x float> [ %19, %.lr.ph975.preheader ], [ %i.up, %bb.bs ] ; 3 uses
  %i.qs = phi <2 x float> [ %20, %.lr.ph975.preheader ], [ %i.uq, %bb.bs ] ; 2 uses
  %i.qt = getelementptr inbounds nuw i8, ptr %.0.i752, i64 %indvars.iv1069
  %i.qu = load i8, ptr %i.qt, align 1, !tbaa !38
  %i.qv = icmp eq i8 %i.qu, 0
  br i1 %i.qv, label %bb.bs, label %bb.bh

bb.bh:                                            ; preds = %.lr.ph975
  %i.qw = getelementptr inbounds nuw i8, ptr %.0.i744915, i64 %indvars.iv1069
  %i.qx = load i8, ptr %i.qw, align 1, !tbaa !38
  %i.qy = zext i8 %i.qx to i32
  %i.qz = mul nsw i32 %i.il, %i.qy
  %i.ra = add nuw nsw i64 %indvars.iv1069, %i.cm  ; 2 uses
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.i744915, i64 %i.ra
  %i.rc = load i8, ptr %i.rb, align 1, !tbaa !38
  %i.rd = zext i8 %i.rc to i32
  %i.re = mul nsw i32 %i.iq, %i.rd
  %i.rf = getelementptr inbounds nuw i8, ptr %.0.i746, i64 %indvars.iv1069
  %i.rg = load i8, ptr %i.rf, align 1, !tbaa !38
  %i.rh = zext i8 %i.rg to i32
  %i.ri = mul nsw i32 %i.iu, %i.rh
  %i.rj = getelementptr inbounds nuw i8, ptr %.0.i746, i64 %i.ra
  %i.rk = load i8, ptr %i.rj, align 1, !tbaa !38
  %i.rl = zext i8 %i.rk to i32
  %i.rm = mul nsw i32 %i.ix, %i.rl
  %i.rn = add i32 %i.qz, 256
  %i.ro = add i32 %i.rn, %i.re
  %i.rp = add i32 %i.ro, %i.ri
  %i.rq = add i32 %i.rp, %i.rm
  %i.rr = ashr i32 %i.rq, 9
  %i.rs = load <2 x i16>, ptr %.0526973, align 2, !tbaa !87 ; 3 uses
  %i.rt = getelementptr inbounds nuw [2 x i8], ptr %.0.i748, i64 %indvars.iv1069
  %i.ru = load i16, ptr %i.rt, align 2, !tbaa !87 ; 2 uses
  %i.rv = sext i16 %i.ru to i32                   ; 3 uses
  %i.rw = sub nsw i32 %i.rr, %i.rv
  %i.rx = sitofp i32 %i.rw to float
  %i.ry = sitofp i16 %i.ru to float               ; 5 uses
  %i.rz = call float @llvm.fmuladd.f32(float %i.ry, float %i.po, float %i.rx)
  %i.sa = fadd float %i.pp, %i.rz
  %i.sb = fptosi float %i.sa to i32               ; 5 uses
  %i.sc = icmp slt i32 %i.sb, 0
  %i.sd = call i32 @llvm.abs.i32(i32 %i.sb, i1 true) ; 3 uses
  %i.se = sitofp i32 %i.sb to float               ; 4 uses
  %i.sf = fcmp olt float %.3972, %i.se
  %i.sg = fadd float %i.gy, %.3972
  %.4 = select i1 %i.sf, float %i.sg, float %.3972 ; 3 uses
  %i.sh = fcmp ogt float %.4, %i.se
  %i.si = fsub float %.4, %i.gy
  %.5 = select i1 %i.sh, float %i.si, float %.4   ; 2 uses
  %i.sj = icmp sgt i32 %i.sd, %i.pl
  br i1 %i.sj, label %bb.bm, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.sk = icmp sgt i32 %i.sd, %i.pm               ; 2 uses
  %i.sl = icmp sgt i32 %i.sb, -1
  %or.cond7 = and i1 %i.sl, %i.sk
  br i1 %or.cond7, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.sm = load float, ptr %i.ci, align 4, !tbaa !176
  %i.sn = fsub float %i.se, %i.ot
  %i.so = fmul float %i.sn, %i.sm
  %i.sp = fptosi float %i.so to i32
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi
  %or.cond9 = and i1 %i.sc, %i.sk
  br i1 %or.cond9, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.sq = load float, ptr %i.ci, align 4, !tbaa !176
  %i.sr = fadd float %i.ot, %i.se
  %i.ss = fmul float %i.sr, %i.sq
  %i.st = fptosi float %i.ss to i32
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bh, %bb.bj, %bb.bl, %bb.bk
  %.0524 = phi i32 [ %i.sb, %bb.bk ], [ %i.sp, %bb.bj ], [ %i.st, %bb.bl ], [ 0, %bb.bh ] ; 3 uses
  %i.su = extractelement <2 x i16> %i.rs, i64 0
  %i.sv = sext i16 %i.su to i32                   ; 4 uses
  %i.sw = extractelement <2 x i16> %i.rs, i64 1
  %i.sx = sext i16 %i.sw to i32                   ; 4 uses
  %i.sy = mul nsw i32 %.0524, %i.sv
  %i.sz = mul nsw i32 %.0524, %i.sx
  %25 = insertelement <2 x i32> poison, i32 %.0524, i64 0
  %i.ta = insertelement <2 x i32> %25, i32 %i.sy, i64 1
  %26 = sitofp <2 x i32> %i.ta to <2 x float>     ; 2 uses
  %27 = sitofp i32 %i.sz to float
  %28 = extractelement <2 x float> %i.qr, i64 1
  %i.tb = fadd float %28, %27
  %29 = extractelement <2 x float> %i.qr, i64 0
  %i.tc = extractelement <2 x float> %26, i64 0
  %i.td = call float @llvm.fmuladd.f32(float %i.tc, float %i.ry, float %29)
  %i.te = fadd <2 x float> %i.qs, %26             ; 2 uses
  %30 = insertelement <2 x float> poison, float %i.td, i64 0
  %31 = insertelement <2 x float> %30, float %i.tb, i64 1 ; 2 uses
  br i1 %i.iy, label %bb.bn, label %bb.bs

bb.bn:                                            ; preds = %bb.bm
  %i.tf = load float, ptr %i.ci, align 4, !tbaa !176 ; 3 uses
  %i.tg = uitofp nneg i32 %i.sd to float          ; 2 uses
  %i.th = fcmp ogt float %i.os, %i.tg
  br i1 %i.th, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ti = fcmp olt float %i.ot, %i.tg
  br i1 %i.ti, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.tj = fmul float %i.tf, f0x3C23D70A
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.tk = fmul float %i.tf, %i.tf
  br label %bb.br

bb.br:                                            ; preds = %bb.bn, %bb.bp, %bb.bq
  %.0 = phi float [ %i.tk, %bb.bq ], [ %i.tj, %bb.bp ], [ 1.000000e+00, %bb.bn ] ; 3 uses
  %i.tl = mul nsw i32 %i.sx, %i.sx
  %i.tm = mul nsw i32 %i.sx, %i.sv
  %i.tn = sitofp i32 %i.tm to float
  %i.to = mul nsw i32 %i.sv, %i.sv
  %i.tp = uitofp nneg i32 %i.tl to float
  %i.tq = uitofp nneg i32 %i.to to float
  %i.tr = mul nsw i32 %i.rv, %i.rv
  %i.ts = uitofp nneg i32 %i.tr to float
  %i.tt = sitofp <2 x i16> %i.rs to <2 x float>
  %i.tu = insertelement <2 x float> poison, float %.0, i64 0 ; 2 uses
  %i.tv = shufflevector <2 x float> %i.tu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tw = fmul <2 x float> %i.tv, %i.tt           ; 3 uses
  %i.tx = fadd <2 x float> %i.qq, %i.tw
  %i.ty = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> %i.tw, <2 x i32> <i32 0, i32 2>
  %i.ua = insertelement <2 x float> %i.tu, float %i.ry, i64 1
  %i.ub = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tz, <2 x float> %i.ua, <2 x float> %23)
  %i.uc = extractelement <2 x float> %i.tw, i64 1
  %i.ud = call float @llvm.fmuladd.f32(float %i.uc, float %i.ry, float %.3546970)
  %i.ue = insertelement <4 x float> poison, float %i.tq, i64 0
  %i.uf = insertelement <4 x float> %i.ue, float %i.tp, i64 1
  %i.ug = insertelement <4 x float> poison, float %i.ry, i64 2
  %i.uh = insertelement <4 x float> %i.ug, float %i.tn, i64 3
  %i.ui = shufflevector <4 x float> %i.uf, <4 x float> %i.uh, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uj = insertelement <4 x float> poison, float %.0, i64 0
  %i.uk = shufflevector <4 x float> %i.uj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ul = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ui, <4 x float> %i.uk, <4 x float> %24)
  %i.um = fadd float %.3560968, %.0
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bm, %bb.br, %.lr.ph975
  %.5562 = phi float [ %.3560968, %.lr.ph975 ], [ %i.um, %bb.br ], [ %.3560968, %bb.bm ] ; 2 uses
  %.5548 = phi float [ %.3546970, %.lr.ph975 ], [ %i.ud, %bb.br ], [ %.3546970, %bb.bm ] ; 2 uses
  %.6 = phi float [ %.3972, %.lr.ph975 ], [ %.5, %bb.br ], [ %.5, %bb.bm ] ; 2 uses
  %i.un = phi <2 x float> [ %23, %.lr.ph975 ], [ %i.ub, %bb.br ], [ %23, %bb.bm ] ; 2 uses
  %i.uo = phi <4 x float> [ %24, %.lr.ph975 ], [ %i.ul, %bb.br ], [ %24, %bb.bm ] ; 2 uses
  %32 = phi <2 x float> [ %i.qq, %.lr.ph975 ], [ %i.tx, %bb.br ], [ %i.qq, %bb.bm ] ; 2 uses
  %i.up = phi <2 x float> [ %i.qr, %.lr.ph975 ], [ %31, %bb.br ], [ %31, %bb.bm ] ; 2 uses
  %i.uq = phi <2 x float> [ %i.qs, %.lr.ph975 ], [ %i.te, %bb.br ], [ %i.te, %bb.bm ] ; 2 uses
  %indvars.iv.next1070 = add nuw nsw i64 %indvars.iv1069, 1 ; 2 uses
  %i.ur = getelementptr inbounds nuw i8, ptr %.0526973, i64 4
  %exitcond1073.not = icmp eq i64 %indvars.iv.next1070, %wide.trip.count1072
  br i1 %exitcond1073.not, label %._crit_edge976.loopexit, label %.lr.ph975, !llvm.loop !406

bb.bt:                                            ; preds = %._crit_edge1009
  %i.us = fmul <2 x float> %i.pq, splat (float f0xB7800000)
  %i.ut = fmul float %.2559.lcssa.a, f0x37800000
  %i.uu = fmul float %.2545.lcssa.a, f0xB7800000
  %i.uv = fmul <2 x float> %i.pr, <float f0x37800000, float f0xB7800000>
  %i.uw = fmul <4 x float> %i.ps, splat (float f0x37800000)
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %._crit_edge1009
  %.6563 = phi float [ %i.ut, %bb.bt ], [ %.2559.lcssa.a, %._crit_edge1009 ] ; 13 uses
  %.6549 = phi float [ %i.uu, %bb.bt ], [ %.2545.lcssa.a, %._crit_edge1009 ] ; 18 uses
  %i.ux = phi <2 x float> [ %i.us, %bb.bt ], [ %i.pq, %._crit_edge1009 ] ; 12 uses
  %i.uy = phi <2 x float> [ %i.uv, %bb.bt ], [ %i.pr, %._crit_edge1009 ] ; 8 uses
  %i.uz = phi <4 x float> [ %i.uw, %bb.bt ], [ %i.ps, %._crit_edge1009 ] ; 8 uses
  %i.va = extractelement <4 x float> %i.uz, i64 3 ; 17 uses
  %i.vb = fneg float %i.va
  %i.vc = fmul float %i.va, %i.vb
  %i.vd = extractelement <4 x float> %i.uz, i64 2 ; 13 uses
  %i.ve = fmul float %i.vc, %i.vd
  %i.vf = extractelement <2 x float> %i.uy, i64 0 ; 5 uses
  %i.vg = fmul float %.6563, %i.vf
  %i.vh = fmul float %i.va, %i.vg
  %i.vi = fmul float %i.va, %i.vh
  %i.vj = call float @llvm.fmuladd.f32(float %i.ve, float %i.vd, float %i.vi)
  %i.vk = fmul float %i.va, 2.000000e+00          ; 3 uses
  %i.vl = fmul float %i.vk, %i.vd                 ; 2 uses
  %i.vm = extractelement <2 x float> %i.ux, i64 0 ; 11 uses
  %i.vn = fmul float %i.vm, %i.vl
  %i.vo = call float @llvm.fmuladd.f32(float %i.vn, float %.6549, float %i.vj)
  %i.vp = extractelement <2 x float> %i.ux, i64 1 ; 14 uses
  %i.vq = fmul float %i.vp, %i.vl
  %i.vr = extractelement <2 x float> %i.uy, i64 1 ; 11 uses
  %i.vs = call float @llvm.fmuladd.f32(float %i.vq, float %i.vr, float %i.vo)
  %i.vt = fmul float %i.vf, 2.000000e+00
  %i.vu = fmul float %i.va, %i.vt
  %i.vv = fneg float %i.vm                        ; 2 uses
  %i.vw = fmul float %i.vu, %i.vv
  %i.vx = call float @llvm.fmuladd.f32(float %i.vw, float %i.vp, float %i.vs)
  %i.vy = fmul float %.6563, 2.000000e+00
  %i.vz = fmul float %i.va, %i.vy
  %i.wa = fneg float %i.vr                        ; 4 uses
  %i.wb = fmul float %i.vz, %i.wa
  %i.wc = call float @llvm.fmuladd.f32(float %i.wb, float %.6549, float %i.vx)
  %i.wd = extractelement <4 x float> %i.uz, i64 0 ; 8 uses
  %i.we = extractelement <4 x float> %i.uz, i64 1 ; 8 uses
  %i.wf = fmul float %i.wd, %i.we                 ; 4 uses
  %i.wg = fmul float %i.wf, %i.vd
  %i.wh = call float @llvm.fmuladd.f32(float %i.wg, float %i.vd, float %i.wc)
  %i.wi = fmul float %i.we, 2.000000e+00
  %i.wj = fmul float %i.wi, %i.vd
  %i.wk = fmul float %i.wj, %i.vv
  %i.wl = call float @llvm.fmuladd.f32(float %i.wk, float %i.vr, float %i.wh)
  %i.wm = fmul float %i.wd, 2.000000e+00
  %i.wn = fmul float %i.wm, %i.vd
  %i.wo = fneg float %i.vp                        ; 4 uses
  %i.wp = fmul float %i.wn, %i.wo
  %i.wq = call float @llvm.fmuladd.f32(float %i.wp, float %.6549, float %i.wl)
  %foldExtExtBinop1127 = fmul <2 x float> %i.ux, %i.ux ; 2 uses
  %i.wr = extractelement <2 x float> %foldExtExtBinop1127, i64 0
  %i.ws = fneg float %.6549                       ; 4 uses
  %i.wt = fmul float %i.wr, %i.ws
  %i.wu = call float @llvm.fmuladd.f32(float %i.wt, float %.6549, float %i.wq)
  %i.wv = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.ww = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.wx = fmul <2 x float> %i.wv, %i.ww           ; 4 uses
  %i.wy = extractelement <2 x float> %i.wx, i64 1 ; 2 uses
  %i.wz = fmul float %i.vm, %i.wy
  %i.xa = call float @llvm.fmuladd.f32(float %i.wz, float %i.vm, float %i.wu)
  %i.xb = fmul float %i.vm, 2.000000e+00
  %i.xc = fmul float %i.xb, %i.vp
  %i.xd = fmul float %i.xc, %i.vr
  %i.xe = call float @llvm.fmuladd.f32(float %i.xd, float %.6549, float %i.xa)
  %i.xf = fmul float %i.vp, %i.vp
  %i.xg = fmul float %i.xf, %i.wa                 ; 2 uses
  %i.xh = call float @llvm.fmuladd.f32(float %i.xg, float %i.vr, float %i.xe)
  %i.xi = extractelement <2 x float> %i.wx, i64 0
  %i.xj = fmul float %i.vp, %i.xi
  %i.xk = call float @llvm.fmuladd.f32(float %i.xj, float %i.vp, float %i.xh)
  %i.xl = fmul float %i.we, %.6563                ; 2 uses
  %i.xm = fmul float %i.xl, %i.vr
  %i.xn = call float @llvm.fmuladd.f32(float %i.xm, float %i.vr, float %i.xk)
  %i.xo = fmul float %i.wd, %.6563                ; 2 uses
  %i.xp = fmul float %i.xo, %.6549
  %i.xq = call float @llvm.fmuladd.f32(float %i.xp, float %.6549, float %i.xn)
  %i.xr = fneg float %i.vf
  %i.xs = fmul float %i.wf, %i.xr
  %i.xt = call float @llvm.fmuladd.f32(float %i.xs, float %.6563, float %i.xq) ; 2 uses
  %i.xu = fsub float %i.wd, %i.we                 ; 2 uses
  %i.xv = fmul float %i.va, 4.000000e+00
  %i.xw = fmul float %i.va, %i.xv
  %i.xx = call float @llvm.fmuladd.f32(float %i.xu, float %i.xu, float %i.xw)
  %i.xy = call noundef float @sqrtf(float noundef %i.xx) #20
  %i.xz = fadd float %i.wd, %i.we
  %i.ya = fsub float %i.xz, %i.xy
  %i.yb = fdiv float %i.ya, %i.gz
  %i.yc = load float, ptr %i.cj, align 4, !tbaa !190
  %i.yd = fcmp olt float %i.yb, %i.yc
  %i.ye = call float @llvm.fabs.f32(float %i.xt)
  %i.yf = fcmp olt float %i.ye, f0x34000000
  %or.cond936 = select i1 %i.yd, i1 true, i1 %i.yf
  br i1 %or.cond936, label %bb.bv, label %bb.bz

bb.bv:                                            ; preds = %bb.bu
  %i.yg = load i32, ptr %i.aq, align 8, !tbaa !187 ; 2 uses
  %i.yh = icmp eq i32 %i.yg, 0
  br i1 %i.yh, label %bb.bw, label %thread-pre-split917

bb.bw:                                            ; preds = %bb.bv
  %i.yi = load ptr, ptr %i.ck, align 8, !tbaa !181 ; 2 uses
  %.not676 = icmp eq ptr %i.yi, null
  br i1 %.not676, label %.thread919, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.yj = getelementptr inbounds i8, ptr %i.yi, i64 %indvars.iv1079
  store i8 0, ptr %i.yj, align 1, !tbaa !38
  %.pr918.pre = load i32, ptr %i.aq, align 8, !tbaa !187
  br label %thread-pre-split917

thread-pre-split917:                              ; preds = %bb.bx, %bb.bv
  %i.yk = phi i32 [ %i.yg, %bb.bv ], [ %.pr918.pre, %bb.bx ]
  %i.yl = icmp sgt i32 %i.yk, 0
  br i1 %i.yl, label %bb.by, label %.thread919

bb.by:                                            ; preds = %thread-pre-split917
  %i.ym = load ptr, ptr %i.as, align 8, !tbaa !410
  %i.yn = getelementptr inbounds [8 x i8], ptr %i.ym, i64 %indvars.iv1079
  store <2 x float> %.sroa.0810.0, ptr %i.yn, align 4
  %i.yo = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.yp = getelementptr inbounds [8 x i8], ptr %i.yo, i64 %indvars.iv1079
  store i64 %i.go, ptr %i.yp, align 4
  br label %.thread919

bb.bz:                                            ; preds = %bb.bu
  %i.yq = fdiv float 1.000000e+00, %i.xt          ; 3 uses
  %i.yr = fmul float %i.we, %i.vd                 ; 2 uses
  %i.ys = fmul float %i.vd, 2.000000e+00          ; 2 uses
  %i.yt = fmul float %i.vp, %i.ys
  %i.yu = fmul float %i.yt, %i.ws
  %i.yv = call float @llvm.fmuladd.f32(float %i.yr, float %i.vd, float %i.yu)
  %i.yw = fmul float %i.vp, %i.vf
  %i.yx = fmul float %.6563, %.6549
  %i.yy = fmul float %i.va, %i.vf                 ; 4 uses
  %33 = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %34 = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 3, i32 2> ; 3 uses
  %35 = shufflevector <2 x float> %34, <2 x float> %33, <2 x i32> <i32 0, i32 3>
  %36 = shufflevector <4 x float> %i.uz, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %37 = shufflevector <2 x float> %36, <2 x float> %i.ux, <2 x i32> <i32 0, i32 3> ; 2 uses
  %38 = fmul <2 x float> %35, %37                 ; 4 uses
  %39 = fneg float %i.vd                          ; 2 uses
  %40 = extractelement <2 x float> %38, i64 0
  %41 = fmul float %40, %39
  %i.yz = shufflevector <2 x float> %i.uy, <2 x float> %34, <2 x i32> <i32 0, i32 3>
  %i.za = fmul <2 x float> %33, %i.yz             ; 2 uses
  %i.zb = insertelement <2 x float> %i.ux, float %.6563, i64 0
  %i.zc = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 poison> ; 2 uses
  %i.zd = shufflevector <2 x float> %i.zc, <2 x float> %34, <2 x i32> <i32 0, i32 3>
  %i.ze = fmul <2 x float> %i.zb, %i.zd           ; 2 uses
  %i.zf = fmul float %i.va, %.6563                ; 2 uses
  %i.zg = fneg float %i.zf                        ; 2 uses
  %i.zh = fmul float %i.vm, %i.ws
  %i.zi = shufflevector <2 x float> %i.uy, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.zj = fmul <2 x float> %i.ux, %i.zi           ; 2 uses
  %i.zk = fmul float %i.wd, %i.vd                 ; 3 uses
  %i.zl = fmul float %i.vm, %i.ys
  %i.zm = fmul float %i.zk, %i.wo
  %i.zn = fneg float %i.yy
  %i.zo = fneg float %i.zk
  %i.zp = fmul float %i.vk, %i.vm
  %i.zq = fmul float %i.va, %i.va
  %i.zr = fmul float %i.zq, %39
  %i.zs = fmul float %i.vk, %i.vr
  %i.zt = call float @llvm.fmuladd.f32(float %i.yw, float %i.vp, float %i.yv)
  %i.zu = fmul float %i.zl, %i.wa
  %i.zv = call float @llvm.fmuladd.f32(float %i.yy, float %.6563, float %41)
  %i.zw = insertelement <2 x float> poison, float %i.zk, i64 0
  %i.zx = fneg <2 x float> %i.za
  %i.zy = shufflevector <2 x float> %i.zw, <2 x float> %i.zx, <2 x i32> <i32 0, i32 2>
  %i.zz = insertelement <2 x float> poison, float %i.zu, i64 0
  %i.aaa = insertelement <2 x float> %i.zz, float %i.zv, i64 1
  %i.aab = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zy, <2 x float> %37, <2 x float> %i.aaa)
  %i.aac = insertelement <2 x float> %i.ux, float %.6549, i64 1 ; 4 uses
  %i.aad = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.za, <2 x float> %i.aac, <2 x float> %i.aab)
  %i.aae = call float @llvm.fmuladd.f32(float %i.yx, float %.6549, float %i.zt)
  %i.aaf = fneg float %i.wy
  %i.aag = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ze, <2 x float> %i.zi, <2 x float> %i.aad)
  %i.aah = shufflevector <2 x float> %i.wx, <2 x float> %i.ze, <2 x i32> <i32 0, i32 2>
  %i.aai = fneg <2 x float> %i.aah
  %i.aaj = call float @llvm.fmuladd.f32(float %i.aaf, float %.6563, float %i.aae)
  %i.aak = insertelement <2 x float> poison, float %.6563, i64 0
  %i.aal = insertelement <2 x float> %i.aak, float %.6549, i64 1
  %i.aam = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aai, <2 x float> %i.aal, <2 x float> %i.aag)
  %i.aan = fmul float %i.aaj, %i.yq
  %i.aao = insertelement <2 x float> poison, float %i.yq, i64 0
  %i.aap = shufflevector <2 x float> %i.aao, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.aaq = fmul <2 x float> %i.aam, %i.aap        ; 2 uses
  %i.aar = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aas = insertelement <2 x float> poison, float %i.zm, i64 0
  %i.aat = insertelement <2 x float> %i.aas, float %i.xg, i64 1
  %i.aau = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aar, <2 x float> %i.ux, <2 x float> %i.aat)
  %i.aav = insertelement <2 x float> %foldExtExtBinop1127, float %i.yr, i64 1
  %i.aaw = fneg <2 x float> %i.aav                ; 2 uses
  %i.aax = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.aay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaw, <2 x float> %i.aax, <2 x float> %i.aau)
  %i.aaz = insertelement <2 x float> poison, float %i.xo, i64 0
  %i.aba = insertelement <2 x float> %i.aaz, float %i.zg, i64 1
  %i.abb = shufflevector <2 x float> %i.aac, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.abc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aba, <2 x float> %i.abb, <2 x float> %i.aay)
  %i.abd = insertelement <2 x float> poison, float %i.zg, i64 0
  %i.abe = insertelement <2 x float> %i.abd, float %i.xl, i64 1
  %i.abf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abe, <2 x float> %i.zi, <2 x float> %i.abc)
  %42 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.abg = insertelement <2 x float> %i.zc, float %.6549, i64 1
  %i.abh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %42, <2 x float> %i.abg, <2 x float> %i.abf)
  %i.abi = fmul <2 x float> %i.abh, %i.aap        ; 3 uses
  %i.abj = shufflevector <2 x float> %i.zj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abk = insertelement <2 x float> %i.abj, float %i.yy, i64 1
  %i.abl = insertelement <2 x float> poison, float %i.wa, i64 0
  %i.abm = insertelement <2 x float> %i.abl, float %i.wo, i64 1
  %i.abn = fmul <2 x float> %i.abk, %i.abm
  %i.abo = shufflevector <2 x float> %i.ux, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.abp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wx, <2 x float> %i.abo, <2 x float> %i.abn)
  %i.abq = insertelement <2 x float> poison, float %i.zn, i64 0
  %i.abr = insertelement <2 x float> %i.abq, float %i.zh, i64 1
  %i.abs = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abr, <2 x float> %i.aac, <2 x float> %i.abp)
  %i.abt = insertelement <2 x float> %i.aar, float %i.zo, i64 0
  %i.abu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abt, <2 x float> %i.abb, <2 x float> %i.abs)
  %43 = shufflevector <2 x float> %38, <2 x float> %i.aaw, <2 x i32> <i32 0, i32 3>
  %i.abv = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %43, <2 x float> %i.zi, <2 x float> %i.abu)
  %i.abw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zj, <2 x float> %i.abb, <2 x float> %i.abv)
  %i.abx = fmul <2 x float> %i.abw, %i.aap        ; 3 uses
  %i.aby = shufflevector <2 x float> %i.aaq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.abz = insertelement <2 x float> %i.aby, float %i.aan, i64 1
  %44 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 3, i32 3> ; 2 uses
  %i.aca = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abz, <2 x float> %44, <2 x float> zeroinitializer)
  %45 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 2, i32 2> ; 2 uses
  %i.acb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aaq, <2 x float> %45, <2 x float> %i.aca)
  %46 = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.acc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abi, <2 x float> %46, <2 x float> %i.acb)
  %i.acd = shufflevector <4 x float> %17, <4 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ace = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.abx, <2 x float> %i.acd, <2 x float> %i.acc) ; 2 uses
  %i.acf = fmul float %i.zp, %i.wo
  %i.acg = fmul float %i.wd, %i.vp                ; 2 uses
  %i.ach = fneg float %i.acg
  %i.aci = fmul float %i.zs, %i.ws
  %i.acj = call float @llvm.fmuladd.f32(float %i.wf, float %i.vd, float %i.zr)
  %i.ack = call float @llvm.fmuladd.f32(float %i.zf, float %i.va, float %i.acf)
  %i.acl = fmul float %i.we, %i.vm                ; 2 uses
  %i.acm = call float @llvm.fmuladd.f32(float %i.yy, float %i.va, float %i.aci)
  %i.acn = call float @llvm.fmuladd.f32(float %i.ach, float %.6549, float %i.acj)
  %i.aco = fmul float %i.we, %i.vr
  %i.acp = fmul float %i.va, %i.vm
  %i.acq = call float @llvm.fmuladd.f32(float %i.acl, float %i.vm, float %i.ack)
  %i.acr = call float @llvm.fmuladd.f32(float %i.aco, float %i.vr, float %i.acm)
  %i.acs = call float @llvm.fmuladd.f32(float %i.acp, float %.6549, float %i.acn)
  %i.act = fmul float %i.wd, %.6549
  %i.acu = fmul float %i.va, %i.vp
  %i.acv = call float @llvm.fmuladd.f32(float %i.acg, float %i.vp, float %i.acq)
  %i.acw = insertelement <2 x float> poison, float %i.wf, i64 0
  %i.acx = insertelement <2 x float> %i.acw, float %i.acl, i64 1
  %i.acy = fneg <2 x float> %i.acx                ; 2 uses
  %i.acz = call float @llvm.fmuladd.f32(float %i.act, float %.6549, float %i.acr)
  %i.ada = call float @llvm.fmuladd.f32(float %i.acu, float %i.vr, float %i.acs)
  %i.adb = extractelement <2 x float> %i.acy, i64 0
  %i.adc = call float @llvm.fmuladd.f32(float %i.adb, float %.6563, float %i.acv)
  %i.add = insertelement <2 x float> poison, float %i.acz, i64 0
  %i.ade = insertelement <2 x float> %i.add, float %i.ada, i64 1
  %i.adf = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.acy, <2 x float> %i.uy, <2 x float> %i.ade)
  %i.adg = fmul float %i.adc, %i.yq
  %i.adh = fmul <2 x float> %i.adf, %i.aap        ; 2 uses
  %i.adi = shufflevector <2 x float> %i.abx, <2 x float> %i.abi, <2 x i32> <i32 1, i32 3>
  %i.adj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adi, <2 x float> %44, <2 x float> zeroinitializer)
  %i.adk = shufflevector <2 x float> %i.abx, <2 x float> %i.abi, <2 x i32> <i32 0, i32 2>
  %i.adl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adk, <2 x float> %45, <2 x float> %i.adj)
  %i.adm = shufflevector <2 x float> %i.adh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.adn = insertelement <2 x float> %i.adm, float %i.adg, i64 1
  %i.ado = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adn, <2 x float> %46, <2 x float> %i.adl)
  %i.adp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.adh, <2 x float> %i.acd, <2 x float> %i.ado) ; 3 uses
  %i.adq = extractelement <2 x float> %i.adp, i64 1 ; 3 uses
  %.sroa.0793.1 = select i1 %i.iy, float %i.adq, float %.sroa.0793.01028
  %i.adr = fneg <2 x float> %i.ace                ; 4 uses
  %i.ads = fpext <2 x float> %i.adr to <2 x double> ; 4 uses
  %i.adt = fmul <2 x double> %i.ads, splat (double 8.000000e-01)
  %i.adu = shufflevector <2 x double> %i.adt, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.adv = fptrunc <2 x double> %i.adu to <2 x float>
  %i.adw = fadd <2 x float> %.sroa.0810.11025, %i.adv ; 2 uses
  %i.adx = fsub <2 x float> %i.adw, %i.eh
  %i.ady = load ptr, ptr %i.as, align 8, !tbaa !410
  %i.adz = getelementptr inbounds [8 x i8], ptr %i.ady, i64 %indvars.iv1079
  store <2 x float> %i.adx, ptr %i.adz, align 4
  %i.aea = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.aeb = getelementptr inbounds [8 x i8], ptr %i.aea, i64 %indvars.iv1079
  %i.aec = fpext <2 x float> %i.adp to <2 x double>
  %i.aed = fmul <2 x double> %i.aec, splat (double 8.000000e-01)
  %i.aee = shufflevector <2 x double> %i.aed, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.aef = fptrunc <2 x double> %i.aee to <2 x float>
  %i.aeg = fadd <2 x float> %i.hc, %i.aef         ; 2 uses
  store <2 x float> %i.aeg, ptr %i.aeb, align 4
  %i.aeh = extractelement <2 x float> %i.adr, i64 1 ; 2 uses
  %i.aei = fsub float %i.aeh, %.sroa.0795.01027
  %i.aej = call noundef float @llvm.fabs.f32(float %i.aei)
  %i.aek = fpext float %i.aej to double
  %i.ael = fcmp olt double %i.aek, 1.000000e-02
  br i1 %i.ael, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %bb.bz
  %i.aem = extractelement <2 x float> %i.adr, i64 0
  %i.aen = fsub float %i.aem, %.sroa.6796.01026
  %i.aeo = call noundef float @llvm.fabs.f32(float %i.aen)
  %i.aep = fpext float %i.aeo to double
  %i.aeq = fcmp olt double %i.aep, 1.000000e-02
  br i1 %i.aeq, label %bb.cd, label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %foldExtExtBinop1129 = fmul <2 x double> %i.ads, %i.ads
  %i.aer = extractelement <2 x double> %foldExtExtBinop1129, i64 0
  %i.aes = extractelement <2 x double> %i.ads, i64 1 ; 2 uses
  %i.aet = call noundef double @llvm.fmuladd.f64(double %i.aes, double %i.aes, double %i.aer)
  %i.aeu = fcmp ugt double %i.aet, 1.000000e-03
  br i1 %i.aeu, label %bb.ce, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.aev = fsub float %.sroa.0793.1, %i.adq
  %i.aew = call noundef float @llvm.fabs.f32(float %i.aev)
  %i.aex = fpext float %i.aew to double
  %i.aey = fcmp olt double %i.aex, 1.000000e-02
  br i1 %i.aey, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc, %bb.ca
  %i.aez = load ptr, ptr %i.as, align 8, !tbaa !410
  %i.afa = getelementptr inbounds [8 x i8], ptr %i.aez, i64 %indvars.iv1079 ; 2 uses
  %i.afb = load <2 x float>, ptr %i.afa, align 4, !tbaa !46
  %i.afc = fmul <2 x float> %i.ace, splat (float 5.000000e-01)
  %i.afd = shufflevector <2 x float> %i.afc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afe = fadd <2 x float> %i.afb, %i.afd
  store <2 x float> %i.afe, ptr %i.afa, align 4, !tbaa !46
  %i.aff = load ptr, ptr %i.bg, align 8, !tbaa !183
  %i.afg = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %indvars.iv1079 ; 2 uses
  %i.afh = load <2 x float>, ptr %i.afg, align 4, !tbaa !46
  %i.afi = fmul <2 x float> %i.adp, splat (float 5.000000e-01)
  %i.afj = shufflevector <2 x float> %i.afi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.afk = fsub <2 x float> %i.afh, %i.afj
  store <2 x float> %i.afk, ptr %i.afg, align 4, !tbaa !46
  br label %.thread919

bb.ce:                                            ; preds = %bb.cc, %bb.cb
  %i.afl = add nuw nsw i32 %.05351043, 1          ; 2 uses
  %i.afm = load i32, ptr %i.bh, align 4, !tbaa !186
  %i.afn = icmp slt i32 %i.afl, %i.afm
  %i.afo = extractelement <2 x float> %i.adr, i64 0
  br i1 %i.afn, label %bb.ab, label %.thread919, !llvm.loop !407

.thread919:                                       ; preds = %bb.ce, %bb.bw, %bb.af, %_ZNK2cv7MatExprcvNS_3MatEEv.exit, %bb.cd, %bb.by, %thread-pre-split917, %thread-pre-split, %bb.aj
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %12) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.cf

bb.cf:                                            ; preds = %bb.u, %bb.y, %bb.x, %bb.n, %.thread919
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  %indvars.iv.next1080 = add nsw i64 %indvars.iv1079, 1 ; 2 uses
  %i.afp = load i32, ptr %i.am, align 4, !tbaa !100
  %i.afq = sext i32 %i.afp to i64
  %i.afr = icmp slt i64 %indvars.iv.next1080, %i.afq
  br i1 %i.afr, label %bb.g, label %_ZNSt6vectorIsSaIsEED2Ev.exit, !llvm.loop !408

bb.cg:                                            ; preds = %bb.bd, %bb.ai
  %.pn677.pn.pn = phi { ptr, i32 } [ %.pn671, %bb.bd ], [ %.pn668, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #20
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.q, %bb.p
  %.pn677.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ea, %bb.p ], [ %.pn677.pn.pn, %bb.cg ], [ %i.eb, %bb.q ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %9) #20
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.o
  %.pn677.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn677.pn.pn.pn.pn.pn.pn.pn, %bb.ch ], [ %i.dz, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %7) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %6) #20
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %.thread932, %.thread927
  %.pn677.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn930 = phi { ptr, i32 } [ %i.cq, %.thread927 ], [ %.pn677.pn.pn.pn.pn.pn.pn.pn.pn, %bb.ci ], [ %i.cr, %.thread932 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @_ZdlPvm(ptr noundef nonnull %i.ae, i64 noundef %i.ad) #22
  br label %_ZNSt6vectorIsSaIsEED2Ev.exit764

_ZNSt6vectorIsSaIsEED2Ev.exit764:                 ; preds = %bb.f, %bb.cj, %bb.e
  %.pn677.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.co, %bb.e ], [ %.pn677.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn930, %bb.cj ], [ %i.cp, %bb.f ]
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  resume { ptr, i32 } %.pn677.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc noundef signext i16 @_ZN2cv7optflowL13estimateScaleERNS_3MatE(ptr noundef nonnull align 8 dereferenceable(208) %0) unnamed_addr #15 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Mat", align 8           ; 10 uses
  %2 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZN2cv3absERKNS_3MatE(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %1) #20
  %i.a = load ptr, ptr %2, align 8, !tbaa !95, !noalias !416 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !97
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %2, ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef -1)
          to label %_ZNK2cv7MatExprcvNS_3MatEEv.exit unwind label %.body

.body:                                            ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #20
  call void @_ZN2cv7MatExprD2Ev(ptr noundef nonnull align 8 dead_on_return(688) dereferenceable(688) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.d

_ZNK2cv7MatExprcvNS_3MatEEv.exit:                 ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.f) #20
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.h) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !43
  %i.k = sdiv i32 %i.j, 2
  %i.l = invoke noundef signext i16 @_Z11quickselectIsET_RKN2cv3MatEi(ptr noundef nonnull align 8 dereferenceable(208) %1, i32 noundef %i.k)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  ret i16 %i.l

bb.c:                                             ; preds = %_ZNK2cv7MatExprcvNS_3MatEEv.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %1) #20
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.body
  %.pn = phi { ptr, i32 } [ %i.m, %bb.c ], [ %i.e, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %.pn
}

declare void @_ZN2cv3absERKNS_3MatE(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef signext i16 @_Z11quickselectIsET_RKN2cv3MatEi(ptr noundef nonnull align 8 dereferenceable(208) %0, i32 noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %2 = alloca %"class.cv::Mat", align 8           ; 46 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @_ZNK2cv3Mat5cloneEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %2, ptr noundef nonnull align 8 dereferenceable(208) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !43
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !42   ; 70 uses
  %i.e = call i32 @llvm.smax.i32(i32 %i.b, i32 %i.d)
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %.not269 = icmp ugt i32 %i.f, 1
  br i1 %.not269, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
end_hunk_2
