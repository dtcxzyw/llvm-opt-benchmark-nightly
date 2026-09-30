Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/plane?download=true
inline.NumInlined: 673
inline.NumDeleted: 368
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZN2cv9PlaneGridC2ERKNS_4Mat_INS_3VecIfLi4EEEEEi:bb.a
  %i.bx = icmp slt i64 %i.br, %i.bw
  br i1 %i.bx, label %.lr.ph230, label %._crit_edge231.thread

.lr.ph230:                                        ; preds = %bb.c
  %i.by = mul nsw i64 %indvars.iv252, %i.aq       ; 2 uses
  %i.bz = load i32, ptr %i.ai, align 4, !tbaa !34
  %i.ca = icmp slt i32 %i.bz, 2                   ; 2 uses
  %i.cb = load ptr, ptr %i.aj, align 8, !tbaa !35 ; 4 uses
  %i.cc = load i32, ptr %i.am, align 4, !tbaa !34
  %i.cd = icmp slt i32 %i.cc, 2
  %i.ce = load ptr, ptr %i.an, align 8, !tbaa !35 ; 2 uses
  %i.cf = icmp eq i64 %indvars.iv252, %i.bq
  %i.cg = load i64, ptr %i.ak, align 8, !tbaa !83 ; 4 uses
  %i.ch = load i64, ptr %i.ao, align 8, !tbaa !83 ; 2 uses
  br label %bb.d

._crit_edge231:                                   ; preds = %._crit_edge
  %i.ci = icmp eq i32 %.1.lcssa, 0
  br i1 %i.ci, label %._crit_edge231.thread, label %bb.n

bb.d:                                             ; preds = %.lr.ph230, %._crit_edge
  %indvars.iv249 = phi i64 [ %indvars.iv, %.lr.ph230 ], [ %indvars.iv.next250, %._crit_edge ] ; 4 uses
  %.099226 = phi i32 [ 0, %.lr.ph230 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.cj = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fl, %._crit_edge ] ; 2 uses
  %i.ck = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fm, %._crit_edge ] ; 2 uses
  %i.cl = phi <4 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fn, %._crit_edge ] ; 2 uses
  %i.cm = phi <2 x float> [ zeroinitializer, %.lr.ph230 ], [ %i.fo, %._crit_edge ] ; 2 uses
  br i1 %i.ca, label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.cn = mul i64 %i.cg, %indvars.iv249
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.cn
  %i.cp = load i64, ptr %i.al, align 8, !tbaa !83
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit:     ; preds = %bb.d, %bb.e
  %.sink276 = phi i64 [ %i.cp, %bb.e ], [ %i.cg, %bb.d ]
  %.sink = phi ptr [ %i.co, %bb.e ], [ %i.cb, %bb.d ]
  %i.cq = mul i64 %.sink276, %i.by
  %i.cr = getelementptr inbounds nuw i8, ptr %.sink, i64 %i.cq ; 3 uses
  br i1 %i.cd, label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit, label %bb.f

bb.f:                                             ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit
  %i.cs = mul i64 %i.ch, %indvars.iv249
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cs
  %i.cu = load i64, ptr %i.ap, align 8, !tbaa !83
  br label %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit

_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit:       ; preds = %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit, %bb.f
  %.sink279 = phi i64 [ %i.cu, %bb.f ], [ %i.ch, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %.sink277 = phi ptr [ %i.ct, %bb.f ], [ %i.ce, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit ]
  %i.cv = mul i64 %.sink279, %i.by
  %i.cw = getelementptr inbounds nuw i8, ptr %.sink277, i64 %i.cv
  br i1 %i.cf, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.cx = load i32, ptr %i.r, align 4, !tbaa !68
  %i.cy = add nsw i32 %i.cx, -1                   ; 2 uses
  br i1 %i.ca, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.cz = sext i32 %i.cy to i64
  %i.da = mul i64 %i.cg, %i.cz
  %i.db = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.da
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

bb.i:                                             ; preds = %bb.g
  %i.dc = mul i64 %i.cg, %indvars.iv249
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.dc
  %i.de = sext i32 %i.cy to i64
  %i.df = load i64, ptr %i.al, align 8, !tbaa !83
  %i.dg = mul i64 %i.df, %i.de
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dd, i64 %i.dg
  br label %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136

_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136:  ; preds = %bb.i, %bb.h
  %.0.i135 = phi ptr [ %i.db, %bb.h ], [ %i.dh, %bb.i ]
  %i.di = getelementptr inbounds nuw i8, ptr %.0.i135, i64 16
  br label %bb.k

bb.j:                                             ; preds = %_ZN2cv3Mat3ptrINS_3VecIfLi9EEEEEPT_ii.exit
  %i.dj = getelementptr inbounds [16 x i8], ptr %i.cr, i64 %i.aq
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136
  %.096 = phi ptr [ %i.di, %_ZNK2cv3Mat3ptrINS_3VecIfLi4EEEEEPKT_ii.exit136 ], [ %i.dj, %bb.j ] ; 2 uses
  %.not124186 = icmp eq ptr %i.cr, %.096
  br i1 %.not124186, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k, %bb.m
  %.095201 = phi ptr [ %i.fk, %bb.m ], [ %i.cw, %bb.k ] ; 10 uses
  %.097200 = phi ptr [ %i.fj, %bb.m ], [ %i.cr, %bb.k ] ; 7 uses
  %.1199 = phi i32 [ %.2, %bb.m ], [ %.099226, %bb.k ] ; 2 uses
  %i.dk = phi <4 x float> [ %i.ff, %bb.m ], [ %i.cj, %bb.k ] ; 2 uses
  %i.dl = phi <2 x float> [ %i.fg, %bb.m ], [ %i.ck, %bb.k ] ; 2 uses
  %i.dm = phi <4 x float> [ %i.fh, %bb.m ], [ %i.cl, %bb.k ] ; 2 uses
  %i.dn = phi <2 x float> [ %i.fi, %bb.m ], [ %i.cm, %bb.k ] ; 2 uses
  %i.do = load float, ptr %.097200, align 4, !tbaa !40 ; 3 uses
  %i.dp = fcmp ord float %i.do, 0.000000e+00
  br i1 %i.dp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph
  %i.dq = fmul float %i.do, %i.do                 ; 2 uses
  store float %i.dq, ptr %.095201, align 4, !tbaa !40
  %i.dr = load float, ptr %.097200, align 4, !tbaa !40
  %i.ds = getelementptr inbounds nuw i8, ptr %.097200, i64 4 ; 3 uses
  %i.dt = load float, ptr %i.ds, align 4, !tbaa !40
  %i.du = fmul float %i.dr, %i.dt                 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.095201, i64 4
  store float %i.du, ptr %i.dv, align 4, !tbaa !40
  %i.dw = load float, ptr %.097200, align 4, !tbaa !40
  %i.dx = getelementptr inbounds nuw i8, ptr %.097200, i64 8 ; 4 uses
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !40
  %i.dz = getelementptr inbounds nuw i8, ptr %.095201, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %.095201, i64 12
  store float %i.du, ptr %i.ea, align 4, !tbaa !40
  %i.eb = getelementptr inbounds nuw i8, ptr %.095201, i64 16
  %i.ec = fmul float %i.dw, %i.dy                 ; 4 uses
  store float %i.ec, ptr %i.dz, align 4, !tbaa !40
  %i.ed = load float, ptr %i.ds, align 4, !tbaa !40 ; 2 uses
  %i.ee = fmul float %i.ed, %i.ed                 ; 2 uses
  store float %i.ee, ptr %i.eb, align 4, !tbaa !40
  %i.ef = load float, ptr %i.ds, align 4, !tbaa !40
  %i.eg = load float, ptr %i.dx, align 4, !tbaa !40
  %i.eh = fmul float %i.ef, %i.eg                 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.095201, i64 20
  store float %i.eh, ptr %i.ei, align 4, !tbaa !40
  %i.ej = getelementptr inbounds nuw i8, ptr %.095201, i64 24
  store float %i.ec, ptr %i.ej, align 4, !tbaa !40
  %i.ek = getelementptr inbounds nuw i8, ptr %.095201, i64 28
  store float %i.eh, ptr %i.ek, align 4, !tbaa !40
  %i.el = load float, ptr %i.dx, align 4, !tbaa !40 ; 2 uses
  %i.em = fmul float %i.el, %i.el                 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %.095201, i64 32
  store float %i.em, ptr %i.en, align 4, !tbaa !40
  %i.eo = insertelement <4 x float> poison, float %i.dq, i64 0
  %i.ep = insertelement <4 x float> %i.eo, float %i.du, i64 1
  %i.eq = insertelement <4 x float> %i.ep, float %i.ec, i64 2
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.es = fadd <4 x float> %i.dk, %i.er
  %i.et = insertelement <4 x float> poison, float %i.ee, i64 0
  %i.eu = insertelement <4 x float> %i.et, float %i.eh, i64 1
  %i.ev = insertelement <4 x float> %i.eu, float %i.ec, i64 2
  %i.ew = shufflevector <4 x float> %i.ev, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ex = fadd <4 x float> %i.dm, %i.ew
  %i.ey = load <2 x float>, ptr %.097200, align 4, !tbaa !40
  %i.ez = load float, ptr %i.dx, align 4, !tbaa !40
  %i.fa = fadd <2 x float> %i.dl, %i.ey
  %i.fb = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.ez, i64 1
  %i.fd = fadd <2 x float> %i.dn, %i.fc
  %i.fe = add nsw i32 %.1199, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.l
  %.2 = phi i32 [ %i.fe, %bb.l ], [ %.1199, %.lr.ph ] ; 2 uses
  %i.ff = phi <4 x float> [ %i.es, %bb.l ], [ %i.dk, %.lr.ph ] ; 2 uses
  %i.fg = phi <2 x float> [ %i.fa, %bb.l ], [ %i.dl, %.lr.ph ] ; 2 uses
  %i.fh = phi <4 x float> [ %i.ex, %bb.l ], [ %i.dm, %.lr.ph ] ; 2 uses
  %i.fi = phi <2 x float> [ %i.fd, %bb.l ], [ %i.dn, %.lr.ph ] ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.097200, i64 16 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.095201, i64 36
  %.not124 = icmp eq ptr %i.fj, %.096
  br i1 %.not124, label %._crit_edge, label %.lr.ph, !llvm.loop !143

._crit_edge:                                      ; preds = %bb.m, %bb.k
  %.1.lcssa = phi i32 [ %.099226, %bb.k ], [ %.2, %bb.m ] ; 4 uses
  %i.fl = phi <4 x float> [ %i.cj, %bb.k ], [ %i.ff, %bb.m ] ; 2 uses
  %i.fm = phi <2 x float> [ %i.ck, %bb.k ], [ %i.fg, %bb.m ] ; 2 uses
  %i.fn = phi <4 x float> [ %i.cl, %bb.k ], [ %i.fh, %bb.m ] ; 2 uses
  %i.fo = phi <2 x float> [ %i.cm, %bb.k ], [ %i.fi, %bb.m ] ; 3 uses
  %indvars.iv.next250 = add nsw i64 %indvars.iv249, 1 ; 2 uses
  %i.fp = icmp slt i64 %indvars.iv.next250, %i.bw
  br i1 %i.fp, label %bb.d, label %._crit_edge231, !llvm.loop !144

._crit_edge231.thread:                            ; preds = %bb.c, %._crit_edge231
  %i.fq = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.fr = icmp slt i32 %i.fq, 2
  %i.fs = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.ft = load i64, ptr %i.bo, align 8
  %i.fu = mul i64 %i.ft, %indvars.iv255
  %.sink.idx.i = select i1 %i.fr, i64 0, i64 %i.fu
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.fs, i64 %.sink.idx.i
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %.sink.i, i64 %indvars.iv252
  store float f0x7F7FFFFF, ptr %i.fv, align 4, !tbaa !40
  br label %bb.v

bb.n:                                             ; preds = %._crit_edge231
  %i.fw = extractelement <2 x float> %i.fo, i64 1
  %i.fx = fpext float %i.fw to double
  %i.fy = fpext <2 x float> %i.fm to <2 x double>
  %i.fz = sitofp i32 %.1.lcssa to double
  %i.ga = fdiv nnan double 1.000000e+00, %i.fz    ; 2 uses
  %i.gb = load i32, ptr %i.ar, align 4, !tbaa !34
  %i.gc = icmp slt i32 %i.gb, 2
  %i.gd = load ptr, ptr %i.as, align 8, !tbaa !35
  %i.ge = load i64, ptr %i.at, align 8
  %i.gf = mul i64 %i.ge, %indvars.iv255
  %.sink.idx.i137 = select i1 %i.gc, i64 0, i64 %i.gf
  %.sink.i138 = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sink.idx.i137
  %i.gg = getelementptr inbounds nuw [12 x i8], ptr %.sink.i138, i64 %indvars.iv252 ; 3 uses
  %.sroa.11165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gh = sitofp i32 %.1.lcssa to float           ; 3 uses
  %i.gi = insertelement <2 x double> poison, double %i.ga, i64 0
  %i.gj = shufflevector <2 x double> %i.gi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x double> %i.gj, %i.fy
  %i.gl = fptrunc <2 x double> %i.gk to <2 x float> ; 6 uses
  %i.gm = fmul double %i.ga, %i.fx
  %i.gn = fptrunc double %i.gm to float           ; 5 uses
  %6 = extractelement <2 x float> %i.gl, i64 0
  store float %6, ptr %i.gg, align 4
  %7 = extractelement <2 x float> %i.gl, i64 1
  store float %7, ptr %.sroa.11165.0..sroa_idx, align 4
  store float %i.gn, ptr %.sroa.18.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.go = insertelement <2 x float> poison, float %i.gh, i64 0
  %i.gp = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gq = fmul <2 x float> %i.gp, %i.gl           ; 2 uses
  %i.gr = shufflevector <2 x float> %i.gq, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gs = fmul float %i.gh, %i.gn                 ; 2 uses
  %i.gt = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 0>
  %i.gu = insertelement <4 x float> %i.gt, float %i.gn, i64 2
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gr, <4 x float> %i.gu, <4 x float> zeroinitializer)
  %i.gw = call float @llvm.fmuladd.f32(float %i.gs, float %i.gn, float 0.000000e+00)
  %i.gx = fsub <4 x float> %i.fl, %i.gv
  store <4 x float> %i.gx, ptr %3, align 16, !tbaa !40, !alias.scope !153
  %i.gy = shufflevector <2 x float> %i.gq, <2 x float> %i.gl, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.gz = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ha = insertelement <4 x float> %i.gz, float %i.gn, i64 1
  %i.hb = insertelement <4 x float> %i.ha, float %i.gs, i64 2
  %i.hc = shufflevector <4 x float> %i.hb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.hd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gy, <4 x float> %i.hc, <4 x float> zeroinitializer)
  %i.he = fsub <4 x float> %i.fn, %i.hd
  store <4 x float> %i.he, ptr %i.au, align 16, !tbaa !40, !alias.scope !153
  %i.hf = extractelement <2 x float> %i.fo, i64 0
  %i.hg = fsub float %i.hf, %i.gw
  store float %i.hg, ptr %i.av, align 16, !tbaa !40, !alias.scope !153
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833531, ptr %5, align 8, !tbaa !26
  store ptr %3, ptr %i.ax, align 8, !tbaa !25
  store i64 12884901891, ptr %i.aw, align 8, !tbaa !28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %4) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ay) #20
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.az) #20
  %i.hh = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 0)
          to label %bb.o unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.n
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.az) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ay) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.w

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %i.hj = load i32, ptr %i.ba, align 4, !tbaa !34
  %i.hk = icmp slt i32 %i.hj, 2
  %i.hl = load ptr, ptr %i.bb, align 8, !tbaa !35
  %i.hm = load i64, ptr %i.bc, align 8
  %i.hn = shl i64 %i.hm, 1
  %.sink.idx.i139 = select i1 %i.hk, i64 0, i64 %i.hn
  %.sink.i140 = getelementptr inbounds nuw i8, ptr %i.hl, i64 %.sink.idx.i139 ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sink.i140, i64 8
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !40
  %i.hq = load i32, ptr %i.bd, align 4, !tbaa !34
  %i.hr = icmp slt i32 %i.hq, 2
  %i.hs = load ptr, ptr %i.be, align 8, !tbaa !35
  %i.ht = load i64, ptr %i.bf, align 8
  %i.hu = mul i64 %i.ht, %indvars.iv255
  %.sink.idx.i145 = select i1 %i.hr, i64 0, i64 %i.hu
  %.sink.i146 = getelementptr inbounds nuw i8, ptr %i.hs, i64 %.sink.idx.i145
  %i.hv = getelementptr inbounds nuw [12 x i8], ptr %.sink.i146, i64 %indvars.iv252 ; 2 uses
  %i.hw = load <2 x float>, ptr %.sink.i140, align 4, !tbaa !40
  store <2 x float> %i.hw, ptr %i.hv, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store float %i.hp, ptr %.sroa.6.0..sroa_idx, align 4
  %i.hx = load i32, ptr %i.bg, align 4, !tbaa !34
  %i.hy = icmp slt i32 %i.hx, 2
  br i1 %i.hy, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.hz = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.q:                                             ; preds = %bb.o
  %i.ib = load i32, ptr %i.ay, align 8, !tbaa !22
  %i.ic = and i32 %i.ib, 16384
  %i.id = icmp ne i32 %i.ic, 0
  %i.ie = load i32, ptr %i.bh, align 4
  %i.if = icmp eq i32 %i.ie, 1
  %or.cond.i = select i1 %i.id, i1 true, i1 %i.if
  br i1 %or.cond.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ig = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.s:                                             ; preds = %bb.q
  %i.ii = load i32, ptr %i.bi, align 8, !tbaa !28
  %i.ij = icmp eq i32 %i.ii, 1
  br i1 %i.ij, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ik = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.il = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.im = shl i64 %i.il, 1
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 %i.im
  br label %_ZN2cv3Mat2atIfEERT_i.exit

bb.u:                                             ; preds = %bb.s
  %i.io = load i32, ptr %i.bj, align 4, !tbaa !68 ; 3 uses
  %i.ip = sdiv i32 2, %i.io                       ; 2 uses
  %i.iq = mul nsw i32 %i.ip, %i.io                ; 0 uses
  %.recomposed = srem i32 2, %i.io
  %i.ir = load ptr, ptr %i.bk, align 8, !tbaa !35
  %i.is = load i64, ptr %i.bl, align 8, !tbaa !83
  %i.it = sext i32 %i.ip to i64
  %i.iu = mul i64 %i.is, %i.it
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ir, i64 %i.iu
  %i.iw = sext i32 %.recomposed to i64
  %i.ix = getelementptr inbounds [4 x i8], ptr %i.iv, i64 %i.iw
  br label %_ZN2cv3Mat2atIfEERT_i.exit

_ZN2cv3Mat2atIfEERT_i.exit:                       ; preds = %bb.u, %bb.t, %bb.r, %bb.p
  %.0.i147 = phi ptr [ %i.ia, %bb.p ], [ %i.ih, %bb.r ], [ %i.in, %bb.t ], [ %i.ix, %bb.u ]
  %i.iy = load float, ptr %.0.i147, align 4, !tbaa !40
  %i.iz = fdiv float %i.iy, %i.gh
  %i.ja = load i32, ptr %i.bm, align 4, !tbaa !34
  %i.jb = icmp slt i32 %i.ja, 2
  %i.jc = load ptr, ptr %i.bn, align 8, !tbaa !35
  %i.jd = load i64, ptr %i.bo, align 8
  %i.je = mul i64 %i.jd, %indvars.iv255
  %.sink.idx.i148 = select i1 %i.jb, i64 0, i64 %i.je
  %.sink.i149 = getelementptr inbounds nuw i8, ptr %i.jc, i64 %.sink.idx.i148
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %.sink.i149, i64 %indvars.iv252
  store float %i.iz, ptr %i.jf, align 4, !tbaa !40
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.az) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ay) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  br label %bb.v

bb.v:                                             ; preds = %_ZN2cv3Mat2atIfEERT_i.exit, %._crit_edge231.thread
  %indvars.iv.next253 = add nuw nsw i64 %indvars.iv252, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next253, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge247, label %bb.c, !llvm.loop !147

bb.w:                                             ; preds = %.body, %bb.b
  %.pn126.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bu, %bb.b ], [ %i.hi, %.body ]
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.m) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.i) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.e) #20
  call void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  resume { ptr, i32 } %.pn126.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9TileQueueC2ERKNS_9PlaneGridE(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(840) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.cv::MatExpr", align 8       ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !90
  store ptr %0, ptr %0, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.b, align 8, !tbaa !157
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  tail call void @_ZN2cv3MatC2Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.c) #20
  %i.d = load i32, ptr %i.c, align 8, !tbaa !22
  %i.e = and i32 %i.d, -4096
  store i32 %i.e, ptr %i.c, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 640 ; 3 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !67
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 644 ; 3 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !68
  invoke void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind nonnull writable sret(%"class.cv::MatExpr") align 8 %2, i32 noundef %i.g, i32 noundef %i.i, i32 noundef 0)
          to label %_ZN2cv4Mat_IhE5zerosEii.exit unwind label %bb.b

_ZN2cv4Mat_IhE5zerosEii.exit:                     ; preds = %bb.a
  %i.j = load ptr, ptr %2, align 8, !tbaa !74     ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !52
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(688) %2, ptr noundef nonnull align 8 dereferenceable(208) %i.c, i32 noundef 0)
          to label %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit unwind label %bb.c, !inline_history !154

_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit:             ; preds = %_ZN2cv4Mat_IhE5zerosEii.exit
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 432
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.n) #20
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 224
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.o) #20
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.p) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  %i.q = load ptr, ptr %0, align 8, !tbaa !31     ; 2 uses
  %.not8.i.i = icmp eq ptr %i.q, %0
  br i1 %.not8.i.i, label %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit, %.lr.ph.i.i
  %.09.i.i = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.q, %_ZN2cv4Mat_IhEaSERKNS_7MatExprE.exit ] ; 2 uses
  %i.r = load ptr, ptr %.09.i.i, align 8, !tbaa !31 ; 2 uses
  call void @_ZdlPvm(ptr noundef nonnull %.09.i.i, i64 noundef 32) #22
  %.not.i.i = icmp eq ptr %i.r, %0
  br i1 %.not.i.i, label %_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE5clearEv.exit, label %.lr.ph.i.i, !llvm.loop !0
end_hunk_0
begin_hunk_1_@_ZNSt7__cxx114listIN2cv9TileQueue9PlaneTileESaIS3_EE4sortEv:bb.a
  call void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16) %spec.select.sroa.sel, ptr noundef nonnull align 8 dereferenceable(16) %0) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %bb.b, %bb.a
  ret void
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #12

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #5

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base11_M_transferEPS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base4swapERS0_S1_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt8__detail15_List_node_base9_M_unhookEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv5PlaneD0Ev(ptr noundef nonnull align 8 dereferenceable(132) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 136) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv5Plane8distanceERKNS_3VecIfLi3EEE(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %1, align 4, !tbaa !40
  %i.c = load float, ptr %i.a, align 8, !tbaa !40
  %i.d = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float 0.000000e+00)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !40
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !40
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !40
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.m, float %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !50
  %i.q = fadd float %i.n, %i.p
  %i.r = tail call noundef float @llvm.fabs.f32(float %i.q)
  ret float %i.r
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: mustprogress noinline nounwind uwtable
define linkonce_odr hidden void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !52
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !194
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !15
  %.not.i = icmp eq i8 %i.e, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.d, align 4, !tbaa !28   ; 2 uses
  %i.g = add nsw i32 %i.f, -1
  store i32 %i.g, ptr %i.d, align 4, !tbaa !28
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

bb.c:                                             ; preds = %bb.a
  %i.h = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i: ; preds = %bb.c, %bb.b
  %.0.i.i = phi i32 [ %i.f, %bb.b ], [ %i.h, %bb.c ]
  %i.i = icmp eq i32 %.0.i.i, 1
  br i1 %i.i, label %bb.d, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

bb.d:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i
  %i.j = load ptr, ptr %0, align 8, !tbaa !52
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0) #20, !inline_history !194
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9PlaneBaseD2Ev(ptr noundef nonnull align 8 dead_on_return(132) dereferenceable(132) %0) unnamed_addr #14 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv8PlaneABCD0Ev(ptr noundef nonnull align 8 dereferenceable(144) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 144) #22
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef float @_ZNK2cv8PlaneABC8distanceERKNS_3VecIfLi3EEE(ptr noundef nonnull align 8 dereferenceable(144) %0, ptr noundef nonnull align 4 dereferenceable(12) %1) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load float, ptr %1, align 4, !tbaa !40
  %i.c = load float, ptr %i.a, align 8, !tbaa !40
  %i.d = tail call float @llvm.fmuladd.f32(float %i.b, float %i.c, float 0.000000e+00)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.h = load float, ptr %i.g, align 4, !tbaa !40
  %i.i = tail call float @llvm.fmuladd.f32(float %i.f, float %i.h, float %i.d)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !40 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load float, ptr %i.l, align 8, !tbaa !40 ; 3 uses
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %i.k, float %i.m, float %i.i)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !50
  %i.q = fadd float %i.n, %i.p                    ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 132
  %i.s = load float, ptr %i.r, align 4, !tbaa !195
  %i.t = fmul float %i.k, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.v = load float, ptr %i.u, align 8, !tbaa !196
  %i.w = fmul float %i.k, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.t, float %i.k, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.z = load float, ptr %i.y, align 4, !tbaa !63
  %i.aa = fadd float %i.z, %i.x                   ; 4 uses
  %i.ab = fneg float %i.m
  %i.ac = tail call float @llvm.fmuladd.f32(float %i.ab, float %i.aa, float %i.q) ; 2 uses
  %i.ad = fcmp ugt float %i.ac, 0.000000e+00
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.m, float %i.aa, float %i.q) ; 2 uses
  %i.af = fcmp ult float %i.ae, 0.000000e+00
  %or.cond = select i1 %i.ad, i1 true, i1 %i.af
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.ag = fcmp ugt float %i.ae, 0.000000e+00
  %i.ah = fcmp ult float %i.ac, 0.000000e+00
  %or.cond19 = or i1 %i.ag, %i.ah
  br i1 %or.cond19, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ai = fsub float %i.q, %i.aa
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.ai) ; 2 uses
  %i.ak = fadd float %i.q, %i.aa
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.ak) ; 2 uses
  %i.am = fcmp olt float %i.al, %i.aj
  %.sroa.speculated = select i1 %i.am, float %i.al, float %i.aj
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi float [ %.sroa.speculated, %bb.c ], [ 0.000000e+00, %bb.b ], [ 0.000000e+00, %bb.a ]
  ret float %.0
}

declare noundef zeroext i1 @_ZNK2cv3Mat5emptyEv(ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv9PlaneBase16UpdateParametersEv(ptr noundef nonnull align 8 dereferenceable(132) %0) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.cv::Matx.10", align 16      ; 7 uses
  %2 = alloca %"class.cv::SVD", align 8           ; 22 uses
  %3 = alloca %"class.cv::_InputArray", align 8   ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !82   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.d = sitofp i32 %i.b to double
  %i.e = fdiv nnan double 1.000000e+00, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 52
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.i = load <2 x float>, ptr %i.c, align 4, !tbaa !40, !noalias !202
  %i.j = shufflevector <2 x float> %i.i, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.k = load <3 x float>, ptr %i.c, align 4, !tbaa !40, !noalias !202 ; 3 uses
  %i.l = shufflevector <3 x float> %i.k, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.m = load float, ptr %i.f, align 8, !tbaa !40, !noalias !202
  %i.n = fpext <4 x float> %i.l to <4 x double>
  %i.o = insertelement <4 x double> poison, double %i.e, i64 0
  %i.p = shufflevector <4 x double> %i.o, <4 x double> poison, <4 x i32> zeroinitializer
  %i.q = fmul <4 x double> %i.p, %i.n
  %i.r = fptrunc <4 x double> %i.q to <4 x float> ; 5 uses
  %4 = extractelement <4 x float> %i.r, i64 0
  store float %4, ptr %i.g, align 8
  %5 = extractelement <4 x float> %i.r, i64 1
  store float %5, ptr %.sroa.415.0..sroa_idx, align 4
  %i.s = extractelement <4 x float> %i.r, i64 2   ; 2 uses
  store float %i.s, ptr %.sroa.516.0..sroa_idx, align 8
  %i.t = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.j, <4 x float> %i.r, <4 x float> zeroinitializer)
  %i.u = extractelement <3 x float> %i.k, i64 2
  %i.v = tail call float @llvm.fmuladd.f32(float %i.u, float %i.s, float 0.000000e+00)
  %i.w = load <4 x float>, ptr %i.h, align 4, !tbaa !40, !noalias !201
  %i.x = fsub <4 x float> %i.w, %i.t
  store <4 x float> %i.x, ptr %1, align 16, !tbaa !40, !alias.scope !201
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = shufflevector <3 x float> %i.k, <3 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ab = insertelement <2 x float> %i.aa, float %i.m, i64 0
  %i.ac = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.ad = shufflevector <4 x float> %i.r, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 1>
  %i.ae = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> %i.ad, <4 x float> zeroinitializer)
  %i.af = shufflevector <4 x float> %i.ae, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 3>
  %i.ag = load <4 x float>, ptr %i.y, align 4, !tbaa !40, !noalias !201
  %i.ah = fsub <4 x float> %i.ag, %i.af
  store <4 x float> %i.ah, ptr %i.z, align 16, !tbaa !40, !alias.scope !201
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !40, !noalias !201
  %i.ak = fsub float %i.aj, %i.v
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 32
  store float %i.ak, ptr %i.al, align 16, !tbaa !40, !alias.scope !201
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i32 -1056833531, ptr %3, align 8, !tbaa !26
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %1, ptr %i.an, align 8, !tbaa !25
  store i64 12884901891, ptr %i.am, align 8, !tbaa !28
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(624) %2) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ao) #20
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 416 ; 3 uses
  call void @_ZN2cv3MatC1Ev(ptr noundef nonnull align 8 dereferenceable(208) %i.ap) #20
  %i.aq = invoke noundef nonnull align 8 dereferenceable(624) ptr @_ZN2cv3SVDclERKNS_11_InputArrayEi(ptr noundef nonnull align 8 dereferenceable(624) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 0)
          to label %bb.c unwind label %.body      ; 0 uses

.body:                                            ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ap) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  resume { ptr, i32 } %i.ar

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34
  %i.au = icmp slt i32 %i.at, 2
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !35
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 544
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = shl i64 %i.ay, 1
  %.sink.idx.i = select i1 %i.au, i64 0, i64 %i.az
  %.sink.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 %.sink.idx.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sink.i, i64 8
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !40 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bd = load <2 x float>, ptr %.sink.i, align 4, !tbaa !40 ; 3 uses
  store <2 x float> %i.bd, ptr %i.bc, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.bb, ptr %.sroa.6.0..sroa_idx, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 212
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !34
  %i.bg = icmp slt i32 %i.bf, 2
  br i1 %i.bg, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !35
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.bk = load i32, ptr %i.ao, align 8, !tbaa !22
  %i.bl = and i32 %i.bk, 16384
  %i.bm = icmp ne i32 %i.bl, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 292
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = icmp eq i32 %i.bo, 1
  %or.cond.i = select i1 %i.bm, i1 true, i1 %i.bp
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !35
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 296
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !28
  %i.bv = icmp eq i32 %i.bu, 1
  br i1 %i.bv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !35
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.bz = load i64, ptr %i.by, align 8, !tbaa !83
  %i.ca = shl i64 %i.bz, 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.ca
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.cc = getelementptr inbounds nuw i8, ptr %2, i64 220
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !68 ; 3 uses
  %i.ce = sdiv i32 2, %i.cd                       ; 2 uses
  %i.cf = mul nsw i32 %i.ce, %i.cd                ; 0 uses
  %.recomposed = srem i32 2, %i.cd
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !35
  %i.ci = getelementptr inbounds nuw i8, ptr %2, i64 336
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !83
  %i.ck = sext i32 %i.ce to i64
  %i.cl = mul i64 %i.cj, %i.ck
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.cl
  %i.cn = sext i32 %.recomposed to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cm, i64 %i.cn
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.f, %bb.h, %bb.i
  %.0.i = phi ptr [ %i.bj, %bb.d ], [ %i.bs, %bb.f ], [ %i.cb, %bb.h ], [ %i.co, %bb.i ]
  %i.cp = load float, ptr %.0.i, align 4, !tbaa !40
  %i.cq = load i32, ptr %i.a, align 8, !tbaa !82
  %i.cr = sitofp i32 %i.cq to float
  %i.cs = fdiv float %i.cp, %i.cr
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 124
  store float %i.cs, ptr %i.ct, align 4, !tbaa !203
  %i.cu = load float, ptr %i.g, align 8, !tbaa !40
  %i.cv = extractelement <2 x float> %i.bd, i64 0
  %i.cw = call float @llvm.fmuladd.f32(float %i.cu, float %i.cv, float 0.000000e+00)
  %i.cx = load float, ptr %.sroa.415.0..sroa_idx, align 4, !tbaa !40
  %i.cy = extractelement <2 x float> %i.bd, i64 1
  %i.cz = call float @llvm.fmuladd.f32(float %i.cx, float %i.cy, float %i.cw)
  %i.da = load float, ptr %.sroa.516.0..sroa_idx, align 8, !tbaa !40
  %i.db = call noundef float @llvm.fmuladd.f32(float %i.da, float %i.bb, float %i.cz)
  %i.dc = fneg float %i.db
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.dc, ptr %i.dd, align 4, !tbaa !50
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ap) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.ao) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(624) %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #20
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  ret void
}

; Function Attrs: nounwind
declare noundef nonnull ptr @_ZSt28_Rb_tree_rebalance_for_erasePSt18_Rb_tree_node_baseRS_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt8_Rb_treeIN2cv9TileQueue9PlaneTileES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not6 = icmp eq ptr %1, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.07 = phi ptr [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.07, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !205
  tail call void @_ZNSt8_Rb_treeIN2cv9TileQueue9PlaneTileES2_St9_IdentityIS2_ESt4lessIS2_ESaIS2_EE8_M_eraseEPSt13_Rb_tree_nodeIS2_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !206  ; 2 uses
  tail call void @_ZdlPvm(ptr noundef nonnull %.07, i64 noundef 48) #22
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !204

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3
end_hunk_1
