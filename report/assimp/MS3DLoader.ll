Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MS3DLoader?download=true
inline.NumInlined: 1117
inline.NumDeleted: 529
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE:bb.a
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %.059135, %bb.b ] ; 2 uses
  %i.an = add nuw i64 %.058136, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.an, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !65

._crit_edge148:                                   ; preds = %.critedge2, %._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph147, %.critedge2
  %i.ao = phi ptr [ %i.q, %.lr.ph147 ], [ %i.js, %.critedge2 ] ; 3 uses
  %i.ap = phi ptr [ %i.p, %.lr.ph147 ], [ %i.jt, %.critedge2 ] ; 2 uses
  %.057145 = phi i64 [ 0, %.lr.ph147 ], [ %i.ju, %.critedge2 ] ; 7 uses
  %.2144 = phi i32 [ 0, %.lr.ph147 ], [ %.3, %.critedge2 ] ; 4 uses
  %i.aq = load ptr, ptr %2, align 8
  %i.ar = sdiv i64 %.057145, 64                   ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ar
  %i.at = and i64 %.057145, -9223372036854775745
  %i.au = icmp ugt i64 %i.at, -9223372036854775808
  %storemerge.idx.i.i.i.i.i62 = select i1 %i.au, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i63 = getelementptr inbounds i8, ptr %i.as, i64 %storemerge.idx.i.i.i.i.i62
  %i.av = and i64 %.057145, 63
  %i.aw = shl nuw i64 1, %i.av                    ; 2 uses
  %i.ax = load i64, ptr %storemerge.i.i.i.i.i63, align 8
  %i.ay = and i64 %i.ax, %i.aw
  %.not127 = icmp eq i64 %i.ay, 0
  br i1 %.not127, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.az = getelementptr inbounds nuw [176 x i8], ptr %i.ao, i64 %.057145
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 33
  %i.bb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ba, ptr noundef nonnull dereferenceable(1) %i.r) #27
  %.not = icmp eq i32 %i.bb, 0
  br i1 %.not, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.bc = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.bd = load ptr, ptr %1, align 8               ; 2 uses
  %i.be = getelementptr inbounds nuw [176 x i8], ptr %i.bd, i64 %.057145 ; 3 uses
  store ptr %i.s, ptr %5, align 8
  %i.bf = icmp eq ptr %i.bd, null
  br i1 %i.bf, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #25
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bg = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.be) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.bg, ptr %i.a, align 8
  %i.bh = icmp ugt i64 %i.bg, 15
  br i1 %i.bh, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.bi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc66:                                         ; preds = %.noexc.i
  store ptr %i.bi, ptr %5, align 8
  %i.bj = load i64, ptr %i.a, align 8
  store i64 %i.bj, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc66, %bb.h
  %i.bk = phi ptr [ %i.bi, %.noexc66 ], [ %i.s, %bb.h ] ; 2 uses
  switch i64 %i.bg, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bl = load i8, ptr %i.be, align 1
  store i8 %i.bl, ptr %i.bk, align 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bk, ptr nonnull align 1 %i.be, i64 %i.bg, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.bm = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.bm, ptr %i.t, align 8
  %i.bn = load ptr, ptr %5, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 0, ptr %i.bo, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.bc, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bp = load ptr, ptr %i.o, align 8
  %i.bq = add i32 %.2144, 1
  %i.br = zext i32 %.2144 to i64
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.br
  store ptr %i.bc, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %5, align 8               ; 2 uses
  %i.bu = icmp eq ptr %i.bt, %i.s
  br i1 %i.bu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bv = load i64, ptr %i.s, align 8
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bt, i64 noundef %i.bw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1096
  store ptr %3, ptr %i.bx, align 8
  %i.by = load ptr, ptr %1, align 8
  %i.bz = getelementptr inbounds nuw [176 x i8], ptr %i.by, i64 %.057145 ; 6 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 80
  %i.cb = load float, ptr %i.ca, align 4          ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 84
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bz, i64 88
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bz, i64 68
  %i.cf = load float, ptr %i.ce, align 4          ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bz, i64 72
  %i.ch = load float, ptr %i.cg, align 4          ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bz, i64 76
  %i.cj = load float, ptr %i.ci, align 4          ; 2 uses
  %i.ck = fadd float %i.cb, 0.000000e+00          ; 3 uses
  %i.cl = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bc, i64 1028
  %.sroa.6114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1032
  %.sroa.9115.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1036
  %.sroa.11116.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1040
  %.sroa.14117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1044
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1048
  %.sroa.29119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1064
  %.sroa.40.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1080
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1084
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 1088
  %i.cn = load <2 x float>, ptr %i.cc, align 4    ; 2 uses
  %i.co = extractelement <2 x float> %i.cn, i64 0 ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 1>
  %i.cq = insertelement <4 x float> %i.cp, float -0.000000e+00, i64 2
  %i.cr = load float, ptr %i.cd, align 4          ; 2 uses
  %i.cs = call noundef float @cosf(float noundef %i.cf) #24 ; 3 uses
  %i.ct = call noundef float @sinf(float noundef %i.cf) #24 ; 3 uses
  %i.cu = call noundef float @cosf(float noundef %i.ch) #24 ; 2 uses
  %i.cv = call noundef float @sinf(float noundef %i.ch) #24 ; 3 uses
  %i.cw = call noundef float @cosf(float noundef %i.cj) #24 ; 3 uses
  %i.cx = call noundef float @sinf(float noundef %i.cj) #24 ; 3 uses
  %i.cy = fneg float %i.cs
  %i.cz = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.da = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.db = insertelement <4 x float> %i.da, float %i.cw, i64 1
  %i.dc = fneg float %i.ct
  %i.dd = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.de = insertelement <4 x float> %i.dd, float %i.ct, i64 1
  %i.df = insertelement <4 x float> %i.de, float %i.cs, i64 2 ; 2 uses
  %i.dg = insertelement <4 x float> %i.df, float %i.cw, i64 3 ; 2 uses
  %i.dh = insertelement <4 x float> poison, float %i.cy, i64 0
  %i.di = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.dj = fmul <4 x float> %i.di, %i.db
  %i.dk = shufflevector <4 x float> %i.dh, <4 x float> %i.dj, <4 x i32> <i32 0, i32 4, i32 5, i32 poison> ; 2 uses
  %i.dl = insertelement <4 x float> %i.dk, float %i.dc, i64 3
  %i.dm = fmul <4 x float> %i.dg, %i.dl
  %i.dn = shufflevector <4 x float> %i.dk, <4 x float> %i.dg, <4 x i32> <i32 2, i32 7, i32 4, i32 1>
  %i.do = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.dp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dn, <4 x float> %i.do, <4 x float> %i.dm) ; 5 uses
  %i.dq = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.cu, i64 1
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.ds = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x i32> <i32 poison, i32 0, i32 2, i32 7>
  store float %i.ck, ptr %.sroa.11116.0..sroa_idx, align 8
  store float 1.000000e+00, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false)
  %i.dt = fmul float %i.cu, %i.cx                 ; 2 uses
  %i.du = fneg float %i.cv                        ; 3 uses
  %i.dv = insertelement <4 x float> poison, float %i.du, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ct, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.cs, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.cw, i64 3
  %i.dz = fmul <4 x float> %i.dr, %i.dy           ; 6 uses
  %i.ea = shufflevector <4 x float> %i.dp, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 poison, i32 1, i32 3, i32 7>
  %i.eb = insertelement <4 x float> %i.ea, float %i.dt, i64 0
  %i.ec = fmul <4 x float> %i.eb, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.ed = insertelement <4 x float> %i.ec, float %i.dt, i64 3
  %i.ee = shufflevector <4 x float> %i.ds, <4 x float> %i.dz, <4 x i32> <i32 7, i32 1, i32 2, i32 3>
  %i.ef = fadd <4 x float> %i.ed, %i.ee
  %i.eg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> zeroinitializer, <4 x float> %i.ef)
  %i.eh = insertelement <4 x float> %i.cl, float %i.du, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ej = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> zeroinitializer, <4 x float> %i.eg) ; 7 uses
  %i.ek = extractelement <4 x float> %i.ej, i64 3
  %i.el = call float @llvm.fmuladd.f32(float %i.co, float 0.000000e+00, float %i.ek) ; 3 uses
  %i.em = load <2 x float>, ptr %6, align 16      ; 3 uses
  %i.en = shufflevector <4 x float> %i.dz, <4 x float> %i.dp, <4 x i32> <i32 3, i32 4, i32 6, i32 poison>
  %i.eo = insertelement <4 x float> %i.en, float %i.el, i64 3
  %i.ep = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.eq = shufflevector <4 x float> %i.ep, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 1>
  %i.er = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eo, <4 x float> %i.eq, <4 x float> %i.ec) ; 3 uses
  %i.es = extractelement <4 x float> %i.er, i64 0
  %i.et = fsub float %i.es, %i.cv
  %8 = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.eu = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %9 = shufflevector <4 x float> %i.dz, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.ev = load float, ptr %i.u, align 4           ; 2 uses
  %i.ew = extractelement <4 x float> %i.ej, i64 0
  %i.ex = shufflevector <4 x float> %i.dz, <4 x float> %i.ej, <4 x i32> <i32 poison, i32 1, i32 2, i32 4>
  %i.ey = insertelement <4 x float> %i.ex, float %i.du, i64 0
  %i.ez = shufflevector <4 x float> %i.ep, <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float poison>, <4 x i32> <i32 4, i32 5, i32 6, i32 0>
  %i.fa = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.ez, <4 x float> %i.er) ; 3 uses
  %i.fb = insertelement <4 x float> <float poison, float poison, float -0.000000e+00, float -0.000000e+00>, float %i.cr, i64 0
  %i.fc = shufflevector <4 x float> %i.fb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.fd = shufflevector <4 x float> %i.fa, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %i.fe = insertelement <4 x float> poison, float %i.cr, i64 0
  %i.ff = shufflevector <4 x float> %i.fe, <4 x float> %i.fa, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4> ; 2 uses
  %i.fg = fadd <4 x float> %i.dz, %i.er
  %i.fh = shufflevector <4 x float> %i.fg, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 poison, i32 poison>
  %i.fi = shufflevector <4 x float> %i.fh, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fc, <4 x float> zeroinitializer, <4 x float> %i.fi) ; 3 uses
  %10 = shufflevector <4 x float> %i.fj, <4 x float> %i.ff, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.fk = fadd <4 x float> %10, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float 0.000000e+00> ; 3 uses
  %11 = shufflevector <4 x float> %i.fj, <4 x float> %i.fk, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  store float %i.ew, ptr %i.cm, align 4
  %i.fl = extractelement <4 x float> %i.ej, i64 1 ; 2 uses
  store float %i.fl, ptr %.sroa.6114.0..sroa_idx, align 8
  %i.fm = extractelement <4 x float> %i.ej, i64 2
  store float %i.fm, ptr %.sroa.9115.0..sroa_idx, align 4
  store float %i.el, ptr %.sroa.14117.0..sroa_idx, align 4
  store <4 x float> %11, ptr %.sroa.29119.0..sroa_idx, align 8
  %i.fn = extractelement <2 x float> %i.em, i64 0
  %i.fo = shufflevector <4 x float> %i.fk, <4 x float> %i.fa, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.fp = insertelement <4 x float> %i.fo, float -0.000000e+00, i64 3
  %i.fq = fadd <4 x float> %i.fp, <float -0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 4 uses
  %i.fr = extractelement <4 x float> %i.fq, i64 1
  store float %i.fr, ptr %.sroa.40.0..sroa_idx, align 8
  %i.fs = extractelement <4 x float> %i.fq, i64 2
  store float %i.fs, ptr %.sroa.42.0..sroa_idx, align 4
  %i.ft = load <1 x float>, ptr %i.v, align 8
  %i.fu = load <1 x float>, ptr %i.w, align 4
  %i.fv = fadd float %i.co, 0.000000e+00          ; 4 uses
  %i.fw = insertelement <4 x float> %i.eu, float %i.fv, i64 2
  %i.fx = insertelement <4 x float> %i.fw, float %i.et, i64 3 ; 2 uses
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %8, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fx)
  %i.fz = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %9, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %i.fy)
  %12 = shufflevector <4 x float> %i.fz, <4 x float> %i.fx, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ga = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cq, <4 x float> zeroinitializer, <4 x float> %12) ; 5 uses
  %13 = insertelement <4 x float> %i.ga, float %i.fv, i64 2
  store <4 x float> %13, ptr %.sroa.17.0..sroa_idx, align 8
  %i.gb = extractelement <4 x float> %i.ga, i64 0
  %i.gc = fmul float %i.gb, %i.ev
  %i.gd = call float @llvm.fmuladd.f32(float %i.fl, float %i.fn, float %i.gc)
  %i.ge = shufflevector <4 x float> %i.ga, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.gf = insertelement <2 x float> %i.ge, float %i.fv, i64 1
  %i.gg = insertelement <2 x float> poison, float %i.ev, i64 0
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x float> %i.gf, %i.gh
  %i.gj = shufflevector <4 x float> %i.ej, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.gk = insertelement <2 x float> %i.gj, float %i.ck, i64 1
  %i.gl = shufflevector <2 x float> %i.em, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gk, <2 x float> %i.gl, <2 x float> %i.gi)
  %i.gn = shufflevector <4 x float> %i.ga, <4 x float> %i.fj, <4 x i32> <i32 3, i32 4, i32 5, i32 poison>
  %i.go = shufflevector <4 x float> %i.gn, <4 x float> %11, <4 x i32> <i32 0, i32 1, i32 2, i32 6> ; 4 uses
  %i.gp = shufflevector <1 x float> %i.ft, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gq = insertelement <4 x float> %i.fd, float %i.gd, i64 1
  %i.gr = shufflevector <2 x float> %i.gm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gs = shufflevector <4 x float> %i.gq, <4 x float> %i.gr, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.gt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.gp, <4 x float> %i.gs)
  %i.gu = shufflevector <1 x float> %i.fu, <1 x float> poison, <4 x i32> zeroinitializer
  %i.gv = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gu, <4 x float> %i.fq, <4 x float> %i.gt)
  store <4 x float> %i.gv, ptr %6, align 16
  %i.gw = load <4 x float>, ptr %i.x, align 16    ; 4 uses
  %i.gx = shufflevector <4 x float> %i.ga, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gy = insertelement <4 x float> %i.gx, float %i.el, i64 0
  %i.gz = insertelement <4 x float> %i.gy, float %i.fv, i64 3 ; 3 uses
  %i.ha = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hb = fmul <4 x float> %i.gz, %i.ha
  %i.hc = insertelement <4 x float> %i.ej, float %i.ck, i64 3 ; 3 uses
  %i.hd = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.he = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.hd, <4 x float> %i.hb)
  %i.hf = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hg = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.hf, <4 x float> %i.he)
  %i.hh = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.hi = shufflevector <4 x float> %i.fk, <4 x float> %i.fq, <4 x i32> <i32 3, i32 5, i32 6, i32 poison>
  %i.hj = insertelement <4 x float> %i.hi, float 1.000000e+00, i64 3 ; 3 uses
  %i.hk = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hh, <4 x float> %i.hj, <4 x float> %i.hg)
  store <4 x float> %i.hk, ptr %i.x, align 16
  %i.hl = load <4 x float>, ptr %i.y, align 16    ; 4 uses
  %i.hm = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hn = fmul <4 x float> %i.gz, %i.hm
  %i.ho = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.ho, <4 x float> %i.hn)
  %i.hq = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.hq, <4 x float> %i.hp)
  %i.hs = shufflevector <4 x float> %i.hl, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ht = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hs, <4 x float> %i.hj, <4 x float> %i.hr)
  store <4 x float> %i.ht, ptr %i.y, align 16
  %i.hu = load <4 x float>, ptr %i.z, align 16    ; 4 uses
  %i.hv = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.hw = fmul <4 x float> %i.gz, %i.hv
  %i.hx = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.hy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.hc, <4 x float> %i.hx, <4 x float> %i.hw)
  %i.hz = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.ia = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.go, <4 x float> %i.hz, <4 x float> %i.hy)
  %i.ib = shufflevector <4 x float> %i.hu, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.ic = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ib, <4 x float> %i.hj, <4 x float> %i.ia)
  store <4 x float> %i.ic, ptr %i.z, align 16
  %i.id = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load i32, ptr %i.ie, align 8
  %.not151 = icmp eq i32 %i.if, 0
  br i1 %.not151, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ig = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  br label %bb.n

._crit_edge143:                                   ; preds = %._crit_edge140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ih = load ptr, ptr %2, align 8
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.ih, i64 %i.ar
  %storemerge.i.i.i.i.i68 = getelementptr inbounds i8, ptr %i.ii, i64 %storemerge.idx.i.i.i.i.i62 ; 2 uses
  %i.ij = load i64, ptr %storemerge.i.i.i.i.i68, align 8
  %i.ik = or i64 %i.ij, %i.aw
  store i64 %i.ik, ptr %storemerge.i.i.i.i.i68, align 8
  call void @_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.bc, ptr noundef nonnull align 4 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre160 = load ptr, ptr %i.b, align 8
  %.pre161 = load ptr, ptr %1, align 8
  br label %.critedge2

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.noexc.i, %bb.g
  %lpad.loopexit.split-lp176 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.m:                                             ; preds = %bb.k
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %5, align 8               ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.s
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.m
  %i.io = load i64, ptr %i.s, align 8
  %i.ip = add i64 %i.io, 1
  call void @_ZdlPvm(ptr noundef %i.im, i64 noundef %i.ip) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.m, %.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %.pn = phi { ptr, i32 } [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %lpad.loopexit.split-lp176, %.loopexit.split-lp.loopexit.split-lp ], [ %i.il, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef 1144) #28
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %.lr.ph142, %._crit_edge140
  %i.iq = phi ptr [ %i.id, %.lr.ph142 ], [ %i.iy, %._crit_edge140 ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next157, %._crit_edge140 ] ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 24
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = getelementptr inbounds nuw [8 x i8], ptr %i.is, i64 %indvars.iv156
  %i.iu = load ptr, ptr %i.it, align 8            ; 2 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 216 ; 2 uses
  %i.iw = load i32, ptr %i.iv, align 8            ; 2 uses
  %.not152 = icmp eq i32 %i.iw, 0
  br i1 %.not152, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.n
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iu, i64 224
  br label %bb.o

._crit_edge140.loopexit:                          ; preds = %_ZNK8aiStringeqERKS_.exit.thread
  %.pre159 = load ptr, ptr %i.aa, align 8
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.n
  %i.iy = phi ptr [ %.pre159, %._crit_edge140.loopexit ], [ %i.iq, %bb.n ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load i32, ptr %i.iz, align 8
  %i.jb = zext i32 %i.ja to i64
  %i.jc = icmp samesign ult i64 %indvars.iv.next157, %i.jb
  br i1 %i.jc, label %bb.n, label %._crit_edge143, !llvm.loop !66

bb.o:                                             ; preds = %.lr.ph139, %_ZNK8aiStringeqERKS_.exit.thread
  %i.jd = phi i32 [ %i.iw, %.lr.ph139 ], [ %i.jp, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.je = load ptr, ptr %i.ix, align 8
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %i.je, i64 %indvars.iv
  %i.jg = load ptr, ptr %i.jf, align 8            ; 3 uses
  %i.jh = load i32, ptr %i.jg, align 4            ; 2 uses
  %i.ji = load i32, ptr %i.bc, align 8
  %i.jj = icmp eq i32 %i.jh, %i.ji
  br i1 %i.jj, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.o
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jl = zext i32 %i.jh to i64
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.jk, ptr nonnull %i.ig, i64 %i.jl)
  %i.jm = icmp eq i32 %bcmp.i, 0
  br i1 %i.jm, label %bb.p, label %_ZNK8aiStringeqERKS_.exit.thread

bb.p:                                             ; preds = %_ZNK8aiStringeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false)
  %i.jn = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jg, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.jo, ptr noundef nonnull align 4 dereferenceable(64) %i.jn, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pre = load i32, ptr %i.iv, align 8
  br label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.o, %bb.p, %_ZNK8aiStringeqERKS_.exit
  %i.jp = phi i32 [ %i.jd, %bb.o ], [ %.pre, %bb.p ], [ %i.jd, %_ZNK8aiStringeqERKS_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jq = zext i32 %i.jp to i64
  %i.jr = icmp samesign ult i64 %indvars.iv.next, %i.jq
  br i1 %i.jr, label %bb.o, label %._crit_edge140.loopexit, !llvm.loop !67

.critedge2:                                       ; preds = %bb.d, %bb.e, %._crit_edge143
  %i.js = phi ptr [ %i.ao, %bb.e ], [ %.pre161, %._crit_edge143 ], [ %i.ao, %bb.d ] ; 2 uses
  %i.jt = phi ptr [ %i.ap, %bb.e ], [ %.pre160, %._crit_edge143 ], [ %i.ap, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %.2144, %bb.e ], [ %i.bq, %._crit_edge143 ], [ %.2144, %bb.d ]
  %i.ju = add nuw i64 %.057145, 1                 ; 2 uses
  %i.jv = ptrtoint ptr %i.jt to i64
  %i.jw = ptrtoint ptr %i.js to i64
  %i.jx = sub i64 %i.jv, %i.jw
  %i.jy = sdiv exact i64 %i.jx, 176
  %i.jz = icmp ult i64 %i.ju, %i.jy
  br i1 %i.jz, label %bb.d, label %._crit_edge148, !llvm.loop !68
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #7

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

declare i32 @__gxx_personality_v0(...)

declare void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) local_unnamed_addr #10 comdat align 2 !guid !70 {
bb.a:
  %i.a = load float, ptr %0, align 4              ; 6 uses
end_hunk_0
