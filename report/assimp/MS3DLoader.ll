Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/MS3DLoader?download=true
inline.NumInlined: 1117
inline.NumDeleted: 529
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_Z10ReadVectorRN6Assimp12StreamReaderILb0ELb0EEER10aiVector3tIfE:bb.a
; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %6 = alloca %class.aiMatrix4x4t, align 16       ; 10 uses
  %7 = alloca %class.aiMatrix4x4t, align 4        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  %.not149 = icmp eq ptr %i.c, %i.d
  br i1 %.not149, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 176
  %i.i = load ptr, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.b

._crit_edge:                                      ; preds = %.critedge, %bb.a
  %.059.lcssa = phi i32 [ 0, %bb.a ], [ %.1, %.critedge ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i32 %.059.lcssa, ptr %i.k, align 8
  %i.l = zext i32 %.059.lcssa to i64
  %i.m = shl nuw nsw i64 %i.l, 3
  %i.n = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.m) #26
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 1112 ; 2 uses
  store ptr %i.n, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.q = load ptr, ptr %1, align 8                ; 2 uses
  %.not150 = icmp eq ptr %i.p, %i.q
  br i1 %.not150, label %._crit_edge148, label %.lr.ph147

.lr.ph147:                                        ; preds = %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  br label %bb.d

bb.b:                                             ; preds = %.lr.ph, %.critedge
  %.058136 = phi i64 [ 0, %.lr.ph ], [ %i.ak, %.critedge ] ; 5 uses
  %.059135 = phi i32 [ 0, %.lr.ph ], [ %.1, %.critedge ] ; 2 uses
  %i.y = sdiv i64 %.058136, 64
  %i.z = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.y
  %i.aa = and i64 %.058136, -9223372036854775745
  %i.ab = icmp ugt i64 %i.aa, -9223372036854775808
  %storemerge.idx.i.i.i.i.i = select i1 %i.ab, i64 -8, i64 0
  %storemerge.i.i.i.i.i = getelementptr inbounds i8, ptr %i.z, i64 %storemerge.idx.i.i.i.i.i
  %i.ac = and i64 %.058136, 63
  %i.ad = shl nuw i64 1, %i.ac
  %i.ae = load i64, ptr %storemerge.i.i.i.i.i, align 8
  %i.af = and i64 %i.ae, %i.ad
  %.not128 = icmp eq i64 %i.af, 0
  br i1 %.not128, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw [176 x i8], ptr %i.d, i64 %.058136
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 33
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %i.j) #27
  %.not61 = icmp eq i32 %i.ai, 0
  %i.aj = zext i1 %.not61 to i32
  %spec.select = add i32 %.059135, %i.aj
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %.1 = phi i32 [ %spec.select, %bb.c ], [ %.059135, %bb.b ] ; 2 uses
  %i.ak = add nuw i64 %.058136, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.ak, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !5

._crit_edge148:                                   ; preds = %.critedge2, %._crit_edge
  ret void

bb.d:                                             ; preds = %.lr.ph147, %.critedge2
  %i.al = phi ptr [ %i.q, %.lr.ph147 ], [ %i.ig, %.critedge2 ] ; 3 uses
  %i.am = phi ptr [ %i.p, %.lr.ph147 ], [ %i.ih, %.critedge2 ] ; 2 uses
  %.057145 = phi i64 [ 0, %.lr.ph147 ], [ %i.ii, %.critedge2 ] ; 7 uses
  %.2144 = phi i32 [ 0, %.lr.ph147 ], [ %.3, %.critedge2 ] ; 4 uses
  %i.an = load ptr, ptr %2, align 8
  %i.ao = sdiv i64 %.057145, 64                   ; 2 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.an, i64 %i.ao
  %i.aq = and i64 %.057145, -9223372036854775745
  %i.ar = icmp ugt i64 %i.aq, -9223372036854775808
  %storemerge.idx.i.i.i.i.i62 = select i1 %i.ar, i64 -8, i64 0 ; 2 uses
  %storemerge.i.i.i.i.i63 = getelementptr inbounds i8, ptr %i.ap, i64 %storemerge.idx.i.i.i.i.i62
  %i.as = and i64 %.057145, 63
  %i.at = shl nuw i64 1, %i.as                    ; 2 uses
  %i.au = load i64, ptr %storemerge.i.i.i.i.i63, align 8
  %i.av = and i64 %i.au, %i.at
  %.not127 = icmp eq i64 %i.av, 0
  br i1 %.not127, label %bb.e, label %.critedge2

bb.e:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw [176 x i8], ptr %i.al, i64 %.057145
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 33
  %i.ay = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ax, ptr noundef nonnull dereferenceable(1) %i.r) #27
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.f, label %.critedge2

bb.f:                                             ; preds = %bb.e
  %i.az = call noalias noundef nonnull dereferenceable(1144) ptr @_Znwm(i64 noundef 1144) #26 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %i.ba = load ptr, ptr %1, align 8               ; 2 uses
  %i.bb = getelementptr inbounds nuw [176 x i8], ptr %i.ba, i64 %.057145 ; 3 uses
  store ptr %i.s, ptr %5, align 8
  %i.bc = icmp eq ptr %i.ba, null
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.31) #25
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.bd = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bb) #24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #24
  store i64 %i.bd, ptr %i.a, align 8
  %i.be = icmp ugt i64 %i.bd, 15
  br i1 %i.be, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.h
  %i.bf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc66 unwind label %.loopexit ; 2 uses

.noexc66:                                         ; preds = %.noexc.i
  store ptr %i.bf, ptr %5, align 8
  %i.bg = load i64, ptr %i.a, align 8
  store i64 %i.bg, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc66, %bb.h
  %i.bh = phi ptr [ %i.bf, %.noexc66 ], [ %i.s, %bb.h ] ; 2 uses
  switch i64 %i.bd, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i
  %i.bi = load i8, ptr %i.bb, align 1
  store i8 %i.bi, ptr %i.bh, align 1
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bh, ptr nonnull align 1 %i.bb, i64 %i.bd, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i
  %i.bj = load i64, ptr %i.a, align 8             ; 2 uses
  store i64 %i.bj, ptr %i.t, align 8
  %i.bk = load ptr, ptr %5, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 0, ptr %i.bl, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  invoke void @_ZN6aiNodeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1144) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bm = load ptr, ptr %i.o, align 8
  %i.bn = add i32 %.2144, 1
  %i.bo = zext i32 %.2144 to i64
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bo
  store ptr %i.az, ptr %i.bp, align 8
  %i.bq = load ptr, ptr %5, align 8               ; 2 uses
  %i.br = icmp eq ptr %i.bq, %i.s
  br i1 %i.br, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bs = load i64, ptr %i.s, align 8
  %i.bt = add i64 %i.bs, 1
  call void @_ZdlPvm(ptr noundef %i.bq, i64 noundef %i.bt) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  %i.bu = getelementptr inbounds nuw i8, ptr %i.az, i64 1096
  store ptr %3, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %1, align 8
  %i.bw = getelementptr inbounds nuw [176 x i8], ptr %i.bv, i64 %.057145 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 80
  %i.by = load float, ptr %i.bx, align 4          ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 84
  %i.ca = load float, ptr %i.bz, align 4          ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 88
  %i.cc = load float, ptr %i.cb, align 4          ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  %i.ce = load float, ptr %i.cd, align 4          ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bw, i64 72
  %i.cg = load float, ptr %i.cf, align 4          ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 76
  %i.ci = load float, ptr %i.ch, align 4          ; 2 uses
  %i.cj = call noundef float @cosf(float noundef %i.ce) #24 ; 3 uses
  %i.ck = call noundef float @sinf(float noundef %i.ce) #24 ; 3 uses
  %i.cl = call noundef float @cosf(float noundef %i.cg) #24 ; 4 uses
  %i.cm = call noundef float @sinf(float noundef %i.cg) #24 ; 4 uses
  %i.cn = call noundef float @cosf(float noundef %i.ci) #24 ; 4 uses
  %i.co = call noundef float @sinf(float noundef %i.ci) #24 ; 4 uses
  %i.cp = fmul float %i.cm, %i.cn                 ; 2 uses
  %i.cq = fneg float %i.cj
  %i.cr = fmul float %i.cm, %i.co                 ; 2 uses
  %i.cs = fneg float %i.ck
  %i.ct = fneg float %i.cm
  %8 = fmul float %i.ck, %i.cl                    ; 2 uses
  %9 = fmul float %i.cj, %i.cl                    ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.az, i64 1028
  %i.cv = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.ct, i64 0
  %10 = insertelement <4 x float> %i.cv, float %8, i64 1
  %11 = insertelement <4 x float> %10, float %9, i64 2 ; 3 uses
  %i.cw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.by, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.14117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1044
  %i.cy = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ca, i64 0
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1060
  %i.da = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.cc, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.az, i64 1076
  %i.dc = insertelement <2 x float> poison, float %i.co, i64 0
  %i.dd = insertelement <2 x float> %i.dc, float %i.cj, i64 1 ; 2 uses
  %i.de = insertelement <2 x float> poison, float %i.cq, i64 0
  %i.df = insertelement <2 x float> %i.de, float %i.cp, i64 1
  %i.dg = fmul <2 x float> %i.dd, %i.df
  %12 = insertelement <2 x float> poison, float %i.cp, i64 0
  %i.dh = insertelement <2 x float> %12, float %i.co, i64 1
  %i.di = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.dk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dg) ; 2 uses
  %i.dl = insertelement <2 x float> %i.dj, float %i.cn, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.cs, i64 1
  %i.do = fmul <2 x float> %i.dl, %i.dn
  %i.dp = insertelement <2 x float> poison, float %i.cn, i64 0
  %i.dq = insertelement <2 x float> %i.dp, float %i.cr, i64 1
  %i.dr = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dq, <2 x float> %i.dr, <2 x float> %i.do) ; 2 uses
  %i.dt = fmul <2 x float> %i.ds, zeroinitializer ; 2 uses
  %i.du = fadd float %i.ca, 0.000000e+00          ; 2 uses
  %i.dv = fmul float %i.cl, %i.cn                 ; 3 uses
  %i.dw = fmul float %i.cl, %i.co                 ; 2 uses
  %i.dx = fmul float %i.dw, 0.000000e+00          ; 2 uses
  %i.dy = shufflevector <2 x float> %i.dk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison> ; 2 uses
  %i.dz = insertelement <4 x float> %i.dy, float %i.dv, i64 0
  %i.ea = insertelement <4 x float> %i.dz, float %i.by, i64 3
  %i.eb = shufflevector <2 x float> %i.dt, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 3
  %i.ed = insertelement <4 x float> %i.ec, float %i.dx, i64 0
  %i.ee = fadd <4 x float> %i.ea, %i.ed           ; 2 uses
  %i.ef = insertelement <4 x float> %i.dy, float -0.000000e+00, i64 3
  %i.eg = insertelement <4 x float> %i.ef, float %i.dv, i64 0
  %i.eh = shufflevector <2 x float> %i.ds, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float %i.dw, i64 0
  %i.ej = insertelement <4 x float> %i.ei, float %i.du, i64 3
  %i.ek = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eg, <4 x float> zeroinitializer, <4 x float> %i.ej)
  %i.el = call float @llvm.fmuladd.f32(float %i.dv, float 0.000000e+00, float %i.dx) ; 2 uses
  %i.em = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> zeroinitializer, <4 x float> %i.ee)
  %i.en = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cx, <4 x float> zeroinitializer, <4 x float> %i.em) ; 2 uses
  %i.eo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> zeroinitializer, <4 x float> %i.ek)
  %i.ep = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cz, <4 x float> zeroinitializer, <4 x float> %i.eo) ; 2 uses
  %i.eq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> zeroinitializer, <2 x float> %i.dt) ; 2 uses
  %i.er = fsub float %i.el, %i.cm
  %13 = insertelement <4 x float> poison, float %i.er, i64 0
  %i.es = insertelement <4 x float> %13, float %8, i64 1
  %14 = insertelement <4 x float> %i.es, float %9, i64 2
  %i.et = insertelement <4 x float> %14, float %i.cc, i64 3
  %i.eu = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ev = shufflevector <4 x float> <float -0.000000e+00, float poison, float poison, float 0.000000e+00>, <4 x float> %i.eu, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.ew = fadd <4 x float> %i.et, %i.ev           ; 2 uses
  %i.ex = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.db, <4 x float> zeroinitializer, <4 x float> %i.ew) ; 2 uses
  %i.ey = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.el, i64 0
  %i.ez = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.fa = shufflevector <4 x float> %i.ey, <4 x float> %i.ez, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.fb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> zeroinitializer, <4 x float> %i.fa)
  %i.fc = fadd <4 x float> %i.fb, <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00> ; 2 uses
  store <4 x float> %i.en, ptr %i.cu, align 4
  store <4 x float> %i.ep, ptr %.sroa.14117.0..sroa_idx, align 4
  store <4 x float> %i.ex, ptr %.sroa.26.0..sroa_idx, align 4
  store <4 x float> %i.fc, ptr %.sroa.37.0..sroa_idx, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false)
  %i.fd = load <4 x float>, ptr %6, align 16      ; 4 uses
  %i.fe = insertelement <4 x float> %i.ep, float %i.du, i64 3 ; 4 uses
  %i.ff = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fg = fmul <4 x float> %i.fe, %i.ff
  %i.fh = shufflevector <4 x float> %i.en, <4 x float> %i.ee, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 4 uses
  %i.fi = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fj = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.fi, <4 x float> %i.fg)
  %i.fk = shufflevector <4 x float> %i.ex, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 4 uses
  %i.fl = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fl, <4 x float> %i.fj)
  %i.fn = shufflevector <4 x float> %i.fd, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fo = insertelement <4 x float> %i.fc, float 1.000000e+00, i64 3 ; 4 uses
  %i.fp = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fn, <4 x float> %i.fo, <4 x float> %i.fm)
  store <4 x float> %i.fp, ptr %6, align 16
  %i.fq = load <4 x float>, ptr %i.u, align 16    ; 4 uses
  %i.fr = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.fs = fmul <4 x float> %i.fe, %i.fr
  %i.ft = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.ft, <4 x float> %i.fs)
  %i.fv = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.fw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.fv, <4 x float> %i.fu)
  %i.fx = shufflevector <4 x float> %i.fq, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.fy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fx, <4 x float> %i.fo, <4 x float> %i.fw)
  store <4 x float> %i.fy, ptr %i.u, align 16
  %i.fz = load <4 x float>, ptr %i.v, align 16    ; 4 uses
  %i.ga = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gb = fmul <4 x float> %i.fe, %i.ga
  %i.gc = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gd = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.gc, <4 x float> %i.gb)
  %i.ge = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.gf = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.ge, <4 x float> %i.gd)
  %i.gg = shufflevector <4 x float> %i.fz, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gh = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gg, <4 x float> %i.fo, <4 x float> %i.gf)
  store <4 x float> %i.gh, ptr %i.v, align 16
  %i.gi = load <4 x float>, ptr %i.w, align 16    ; 4 uses
  %i.gj = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.gk = fmul <4 x float> %i.fe, %i.gj
  %i.gl = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.gm = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fh, <4 x float> %i.gl, <4 x float> %i.gk)
  %i.gn = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.go = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fk, <4 x float> %i.gn, <4 x float> %i.gm)
  %i.gp = shufflevector <4 x float> %i.gi, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
  %i.gq = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gp, <4 x float> %i.fo, <4 x float> %i.go)
  store <4 x float> %i.gq, ptr %i.w, align 16
  %i.gr = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gt = load i32, ptr %i.gs, align 8
  %.not151 = icmp eq i32 %i.gt, 0
  br i1 %.not151, label %._crit_edge143, label %.lr.ph142

.lr.ph142:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gu = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  br label %bb.n

._crit_edge143:                                   ; preds = %._crit_edge140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.gv = load ptr, ptr %2, align 8
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.gv, i64 %i.ao
  %storemerge.i.i.i.i.i68 = getelementptr inbounds i8, ptr %i.gw, i64 %storemerge.idx.i.i.i.i.i62 ; 2 uses
  %i.gx = load i64, ptr %storemerge.i.i.i.i.i68, align 8
  %i.gy = or i64 %i.gx, %i.at
  store i64 %i.gy, ptr %storemerge.i.i.i.i.i68, align 8
  call void @_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.az, ptr noundef nonnull align 4 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  %.pre160 = load ptr, ptr %i.b, align 8
  %.pre161 = load ptr, ptr %1, align 8
  br label %.critedge2

.loopexit:                                        ; preds = %.noexc.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

bb.m:                                             ; preds = %bb.k
  %i.gz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ha = load ptr, ptr %5, align 8               ; 2 uses
  %i.hb = icmp eq ptr %i.ha, %i.s
  br i1 %i.hb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.m
  %i.hc = load i64, ptr %i.s, align 8
  %i.hd = add i64 %i.hc, 1
  call void @_ZdlPvm(ptr noundef %i.ha, i64 noundef %i.hd) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.m, %.loopexit, %.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71
  %.pn = phi { ptr, i32 } [ %i.gz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.gz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef 1144) #28
  resume { ptr, i32 } %.pn

bb.n:                                             ; preds = %.lr.ph142, %._crit_edge140
  %i.he = phi ptr [ %i.gr, %.lr.ph142 ], [ %i.hm, %._crit_edge140 ] ; 2 uses
  %indvars.iv156 = phi i64 [ 0, %.lr.ph142 ], [ %indvars.iv.next157, %._crit_edge140 ] ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv156
  %i.hi = load ptr, ptr %i.hh, align 8            ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 216 ; 2 uses
  %i.hk = load i32, ptr %i.hj, align 8            ; 2 uses
  %.not152 = icmp eq i32 %i.hk, 0
  br i1 %.not152, label %._crit_edge140, label %.lr.ph139

.lr.ph139:                                        ; preds = %bb.n
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hi, i64 224
  br label %bb.o

._crit_edge140.loopexit:                          ; preds = %_ZNK8aiStringeqERKS_.exit.thread
  %.pre159 = load ptr, ptr %i.x, align 8
  br label %._crit_edge140

._crit_edge140:                                   ; preds = %._crit_edge140.loopexit, %bb.n
  %i.hm = phi ptr [ %.pre159, %._crit_edge140.loopexit ], [ %i.he, %bb.n ] ; 2 uses
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 16
  %i.ho = load i32, ptr %i.hn, align 8
  %i.hp = zext i32 %i.ho to i64
  %i.hq = icmp samesign ult i64 %indvars.iv.next157, %i.hp
  br i1 %i.hq, label %bb.n, label %._crit_edge143, !llvm.loop !6

bb.o:                                             ; preds = %.lr.ph139, %_ZNK8aiStringeqERKS_.exit.thread
  %i.hr = phi i32 [ %i.hk, %.lr.ph139 ], [ %i.id, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph139 ], [ %indvars.iv.next, %_ZNK8aiStringeqERKS_.exit.thread ] ; 2 uses
  %i.hs = load ptr, ptr %i.hl, align 8
  %i.ht = getelementptr inbounds nuw [8 x i8], ptr %i.hs, i64 %indvars.iv
  %i.hu = load ptr, ptr %i.ht, align 8            ; 3 uses
  %i.hv = load i32, ptr %i.hu, align 4            ; 2 uses
  %i.hw = load i32, ptr %i.az, align 8
  %i.hx = icmp eq i32 %i.hv, %i.hw
  br i1 %i.hx, label %_ZNK8aiStringeqERKS_.exit, label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit:                        ; preds = %bb.o
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hu, i64 4
  %i.hz = zext i32 %i.hv to i64
  %bcmp.i = call i32 @bcmp(ptr nonnull %i.hy, ptr nonnull %i.gu, i64 %i.hz)
  %i.ia = icmp eq i32 %bcmp.i, 0
  br i1 %i.ia, label %bb.p, label %_ZNK8aiStringeqERKS_.exit.thread

bb.p:                                             ; preds = %_ZNK8aiStringeqERKS_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %7, ptr noundef nonnull align 16 dereferenceable(64) %6, i64 64, i1 false)
  %i.ib = call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %7)
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hu, i64 1056
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ic, ptr noundef nonnull align 4 dereferenceable(64) %i.ib, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #24
  %.pre = load i32, ptr %i.hj, align 8
  br label %_ZNK8aiStringeqERKS_.exit.thread

_ZNK8aiStringeqERKS_.exit.thread:                 ; preds = %bb.o, %bb.p, %_ZNK8aiStringeqERKS_.exit
  %i.id = phi i32 [ %i.hr, %bb.o ], [ %.pre, %bb.p ], [ %i.hr, %_ZNK8aiStringeqERKS_.exit ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ie = zext i32 %i.id to i64
  %i.if = icmp samesign ult i64 %indvars.iv.next, %i.ie
  br i1 %i.if, label %bb.o, label %._crit_edge140.loopexit, !llvm.loop !7

.critedge2:                                       ; preds = %bb.d, %bb.e, %._crit_edge143
  %i.ig = phi ptr [ %i.al, %bb.e ], [ %.pre161, %._crit_edge143 ], [ %i.al, %bb.d ] ; 2 uses
  %i.ih = phi ptr [ %i.am, %bb.e ], [ %.pre160, %._crit_edge143 ], [ %i.am, %bb.d ] ; 2 uses
  %.3 = phi i32 [ %.2144, %bb.e ], [ %i.bn, %._crit_edge143 ], [ %.2144, %bb.d ]
  %i.ii = add nuw i64 %.057145, 1                 ; 2 uses
  %i.ij = ptrtoint ptr %i.ih to i64
  %i.ik = ptrtoint ptr %i.ig to i64
  %i.il = sub i64 %i.ij, %i.ik
  %i.im = sdiv exact i64 %i.il, 176
  %i.in = icmp ult i64 %i.ii, %i.im
  br i1 %i.in, label %bb.d, label %._crit_edge148, !llvm.loop !8
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

end_hunk_0
