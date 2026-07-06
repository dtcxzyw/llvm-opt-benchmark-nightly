inline.NumInlined: 7594
inline.NumDeleted: 2896
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN6Assimp3FBX12FBXConverter17GetRotationMatrixENS0_5Model8RotOrderERK10aiVector3tIfER12aiMatrix4x4tIfE:bb.a
  %.sroa.1886.0.copyload88 = load float, ptr %.sroa.1886.0..sroa_idx87, align 4
  %.sroa.2089.0..sroa_idx90 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.2089.0.copyload91 = load float, ptr %.sroa.2089.0..sroa_idx90, align 4
  %.sroa.2292.0..sroa_idx93 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.2292.0.copyload94 = load float, ptr %.sroa.2292.0..sroa_idx93, align 4
  %.sroa.2495.0.copyload97 = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.2698.0.copyload100 = load float, ptr %.sroa.8159.0..sroa_idx, align 4
  %.sroa.28101.0..sroa_idx102 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.28101.0.copyload103 = load float, ptr %.sroa.28101.0..sroa_idx102, align 4
  %.sroa.30104.0..sroa_idx105 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.30104.0.copyload106 = load float, ptr %.sroa.30104.0..sroa_idx105, align 4
  %.sroa.32107.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.32107.0.copyload109 = load float, ptr %.sroa.32107.0..sroa_idx108, align 4
  %.sroa.34110.0.copyload112 = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 16
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 32
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.11.0.sroa.phi, i64 48
  %i.bg = load <4 x float>, ptr %.sroa.11.0.sroa.phi, align 4 ; 4 uses
  %i.bh = load <4 x float>, ptr %i.bd, align 4    ; 4 uses
  %i.bi = insertelement <4 x float> poison, float %.sroa.668.0.copyload70, i64 0
  %i.bj = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bk = fmul <4 x float> %i.bj, %i.bh
  %i.bl = insertelement <4 x float> poison, float %.sroa.066.0.copyload67, i64 0
  %i.bm = shufflevector <4 x float> %i.bl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.bm, <4 x float> %i.bk)
  %i.bo = load <4 x float>, ptr %i.be, align 4    ; 4 uses
  %i.bp = insertelement <4 x float> poison, float %.sroa.871.0.copyload73, i64 0
  %i.bq = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.br = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.bq, <4 x float> %i.bn)
  %i.bs = load <4 x float>, ptr %i.bf, align 4    ; 4 uses
  %i.bt = insertelement <4 x float> poison, float %.sroa.1074.0.copyload76, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bu, <4 x float> %i.br)
  store <4 x float> %i.bv, ptr %3, align 4
  %i.bw = insertelement <4 x float> poison, float %.sroa.1480.0.copyload82, i64 0
  %i.bx = shufflevector <4 x float> %i.bw, <4 x float> poison, <4 x i32> zeroinitializer
  %i.by = fmul <4 x float> %i.bx, %i.bh
  %i.bz = insertelement <4 x float> poison, float %.sroa.1277.0.copyload79, i64 0
  %i.ca = shufflevector <4 x float> %i.bz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.ca, <4 x float> %i.by)
  %i.cc = insertelement <4 x float> poison, float %.sroa.1683.0.copyload85, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.cd, <4 x float> %i.cb)
  %i.cf = insertelement <4 x float> poison, float %.sroa.1886.0.copyload88, i64 0
  %i.cg = shufflevector <4 x float> %i.cf, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ch = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.cg, <4 x float> %i.ce)
  store <4 x float> %i.ch, ptr %.sroa.1277.0..sroa_idx78, align 4
  %i.ci = insertelement <4 x float> poison, float %.sroa.2292.0.copyload94, i64 0
  %i.cj = shufflevector <4 x float> %i.ci, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ck = fmul <4 x float> %i.cj, %i.bh
  %i.cl = insertelement <4 x float> poison, float %.sroa.2089.0.copyload91, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cm, <4 x float> %i.ck)
  %i.co = insertelement <4 x float> poison, float %.sroa.2495.0.copyload97, i64 0
  %i.cp = shufflevector <4 x float> %i.co, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.cp, <4 x float> %i.cn)
  %i.cr = insertelement <4 x float> poison, float %.sroa.2698.0.copyload100, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.cs, <4 x float> %i.cq)
  store <4 x float> %i.ct, ptr %.sroa.2089.0..sroa_idx90, align 4
  %i.cu = insertelement <4 x float> poison, float %.sroa.30104.0.copyload106, i64 0
  %i.cv = shufflevector <4 x float> %i.cu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cw = fmul <4 x float> %i.cv, %i.bh
  %i.cx = insertelement <4 x float> poison, float %.sroa.28101.0.copyload103, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bg, <4 x float> %i.cy, <4 x float> %i.cw)
  %i.da = insertelement <4 x float> poison, float %.sroa.32107.0.copyload109, i64 0
  %i.db = shufflevector <4 x float> %i.da, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.db, <4 x float> %i.cz)
  %i.dd = insertelement <4 x float> poison, float %.sroa.34110.0.copyload112, i64 0
  %i.de = shufflevector <4 x float> %i.dd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.de, <4 x float> %i.dc)
  store <4 x float> %i.df, ptr %.sroa.28101.0..sroa_idx102, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.dg = load i8, ptr %.sroa.19.0.sroa.phi147, align 1, !range !4, !noundef !3
  %i.dh = trunc nuw i8 %i.dg to i1
  br i1 %i.dh, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.0.0.copyload35 = load float, ptr %3, align 4
  %.sroa.6.0.copyload37 = load float, ptr %.sroa.4.0..sroa_idx, align 4
  %.sroa.8.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sroa.8.0.copyload39 = load float, ptr %.sroa.8.0..sroa_idx38, align 4
  %.sroa.10.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %3, i64 12
  %.sroa.10.0.copyload41 = load float, ptr %.sroa.10.0..sroa_idx40, align 4
  %.sroa.12.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.sroa.12.0.copyload43 = load float, ptr %.sroa.12.0..sroa_idx42, align 4
  %.sroa.14.0.copyload45 = load float, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.16.0.copyload47 = load float, ptr %.sroa.6158.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %3, i64 28
  %.sroa.18.0.copyload49 = load float, ptr %.sroa.18.0..sroa_idx48, align 4
  %.sroa.20.0..sroa_idx50 = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %.sroa.20.0.copyload51 = load float, ptr %.sroa.20.0..sroa_idx50, align 4
  %.sroa.22.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %3, i64 36
  %.sroa.22.0.copyload53 = load float, ptr %.sroa.22.0..sroa_idx52, align 4
  %.sroa.24.0.copyload55 = load float, ptr %.sroa.7.0..sroa_idx, align 4
  %.sroa.26.0.copyload57 = load float, ptr %.sroa.8159.0..sroa_idx, align 4
  %.sroa.28.0..sroa_idx58 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %.sroa.28.0.copyload59 = load float, ptr %.sroa.28.0..sroa_idx58, align 4
  %.sroa.30.0..sroa_idx60 = getelementptr inbounds nuw i8, ptr %3, i64 52
  %.sroa.30.0.copyload61 = load float, ptr %.sroa.30.0..sroa_idx60, align 4
  %.sroa.32.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %3, i64 56
  %.sroa.32.0.copyload63 = load float, ptr %.sroa.32.0..sroa_idx62, align 4
  %.sroa.34.0.copyload65 = load float, ptr %.sroa.9.0..sroa_idx, align 4
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 16
  %i.dj = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 32
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.19.0.sroa.phi, i64 48
  %i.dl = load <4 x float>, ptr %.sroa.19.0.sroa.phi, align 4 ; 4 uses
  %i.dm = load <4 x float>, ptr %i.di, align 4    ; 4 uses
  %i.dn = insertelement <4 x float> poison, float %.sroa.6.0.copyload37, i64 0
  %i.do = shufflevector <4 x float> %i.dn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dp = fmul <4 x float> %i.do, %i.dm
  %i.dq = insertelement <4 x float> poison, float %.sroa.0.0.copyload35, i64 0
  %i.dr = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dr, <4 x float> %i.dp)
  %i.dt = load <4 x float>, ptr %i.dj, align 4    ; 4 uses
  %i.du = insertelement <4 x float> poison, float %.sroa.8.0.copyload39, i64 0
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> zeroinitializer
  %i.dw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.dv, <4 x float> %i.ds)
  %i.dx = load <4 x float>, ptr %i.dk, align 4    ; 4 uses
  %i.dy = insertelement <4 x float> poison, float %.sroa.10.0.copyload41, i64 0
  %i.dz = shufflevector <4 x float> %i.dy, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ea = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.dz, <4 x float> %i.dw)
  store <4 x float> %i.ea, ptr %3, align 4
  %i.eb = insertelement <4 x float> poison, float %.sroa.14.0.copyload45, i64 0
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ed = fmul <4 x float> %i.ec, %i.dm
  %i.ee = insertelement <4 x float> poison, float %.sroa.12.0.copyload43, i64 0
  %i.ef = shufflevector <4 x float> %i.ee, <4 x float> poison, <4 x i32> zeroinitializer
  %i.eg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.ef, <4 x float> %i.ed)
  %i.eh = insertelement <4 x float> poison, float %.sroa.16.0.copyload47, i64 0
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ej = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.ei, <4 x float> %i.eg)
  %i.ek = insertelement <4 x float> poison, float %.sroa.18.0.copyload49, i64 0
  %i.el = shufflevector <4 x float> %i.ek, <4 x float> poison, <4 x i32> zeroinitializer
  %i.em = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.el, <4 x float> %i.ej)
  store <4 x float> %i.em, ptr %.sroa.12.0..sroa_idx42, align 4
  %i.en = insertelement <4 x float> poison, float %.sroa.22.0.copyload53, i64 0
  %i.eo = shufflevector <4 x float> %i.en, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ep = fmul <4 x float> %i.eo, %i.dm
  %i.eq = insertelement <4 x float> poison, float %.sroa.20.0.copyload51, i64 0
  %i.er = shufflevector <4 x float> %i.eq, <4 x float> poison, <4 x i32> zeroinitializer
  %i.es = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.er, <4 x float> %i.ep)
  %i.et = insertelement <4 x float> poison, float %.sroa.24.0.copyload55, i64 0
  %i.eu = shufflevector <4 x float> %i.et, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.eu, <4 x float> %i.es)
  %i.ew = insertelement <4 x float> poison, float %.sroa.26.0.copyload57, i64 0
  %i.ex = shufflevector <4 x float> %i.ew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ey = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.ex, <4 x float> %i.ev)
  store <4 x float> %i.ey, ptr %.sroa.20.0..sroa_idx50, align 4
  %i.ez = insertelement <4 x float> poison, float %.sroa.30.0.copyload61, i64 0
  %i.fa = shufflevector <4 x float> %i.ez, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fb = fmul <4 x float> %i.fa, %i.dm
  %i.fc = insertelement <4 x float> poison, float %.sroa.28.0.copyload59, i64 0
  %i.fd = shufflevector <4 x float> %i.fc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fe = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.fd, <4 x float> %i.fb)
  %i.ff = insertelement <4 x float> poison, float %.sroa.32.0.copyload63, i64 0
  %i.fg = shufflevector <4 x float> %i.ff, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dt, <4 x float> %i.fg, <4 x float> %i.fe)
  %i.fi = insertelement <4 x float> poison, float %.sroa.34.0.copyload65, i64 0
  %i.fj = shufflevector <4 x float> %i.fi, <4 x float> poison, <4 x i32> zeroinitializer
  %i.fk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dx, <4 x float> %i.fj, <4 x float> %i.fh)
  store <4 x float> %i.fk, ptr %.sroa.28.0..sroa_idx58, align 4
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0155)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10156)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.17)
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE8LogErrorIJRA37_KcEEEvDpOT_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.m
  %.03062 = phi i64 [ 0, %bb.a ], [ %i.ar, %bb.m ] ; 5 uses
  %i.f = icmp eq i64 %.03062, 12
  %i.g = and i64 %.03062, 27
  %i.h = icmp eq i64 %i.g, 3
  %or.cond3 = or i1 %i.f, %i.h
  br i1 %or.cond3, label %bb.m, label %switch.lookup

switch.lookup:                                    ; preds = %bb.b
  %i.i = icmp eq i64 %.03062, 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter31NeedsComplexTransformationChainERKNS0_5ModelE, i64 %.03062
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  store ptr %i.d, ptr %2, align 8
  %i.j = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i64 %i.j, ptr %i.a, align 8
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %switch.lookup
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %2, align 8
  %i.m = load i64, ptr %i.a, align 8
  store i64 %i.m, ptr %i.d, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %switch.lookup
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.d, %switch.lookup ] ; 2 uses
  switch i64 %i.j, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %switch.load, align 1
  store i8 %i.o, ptr %i.n, align 1
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr nonnull align 1 %switch.load, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i
  %i.p = load i64, ptr %i.a, align 8              ; 2 uses
  store i64 %i.p, ptr %i.e, align 8
  %i.q = load ptr, ptr %2, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 0, ptr %i.r, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  %i.s = invoke noundef ptr @_ZNK6Assimp3FBX13PropertyTable3GetERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(136) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc39 unwind label %bb.j   ; 2 uses

.noexc39:                                         ; preds = %bb.e
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.h, label %bb.f

bb.f:                                             ; preds = %.noexc39
  %i.u = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(8) %i.s, ptr nonnull @_ZTIN6Assimp3FBX8PropertyE, ptr nonnull @_ZTIN6Assimp3FBX13TypedPropertyI10aiVector3tIfEEE, i64 0) #27 ; 3 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.0.0.copyload31.i = load <2 x float>, ptr %i.w, align 4
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.10.0.copyload.i = load float, ptr %.sroa.10.0..sroa_idx.i, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.noexc39, %bb.f
  %.0 = phi i1 [ true, %bb.g ], [ false, %.noexc39 ], [ false, %bb.f ] ; 2 uses
  %.sroa.10.0.i = phi float [ %.sroa.10.0.copyload.i, %bb.g ], [ 0.000000e+00, %.noexc39 ], [ 0.000000e+00, %bb.f ] ; 3 uses
  %.sroa.0.0.i = phi <2 x float> [ %.sroa.0.0.copyload31.i, %bb.g ], [ zeroinitializer, %.noexc39 ], [ zeroinitializer, %bb.f ] ; 5 uses
  %i.x = load ptr, ptr %2, align 8                ; 2 uses
  %i.y = icmp eq ptr %i.x, %i.d
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.h
  %i.z = load i64, ptr %i.d, align 8
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.aa) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  %or.cond5 = and i1 %i.i, %.0
  br i1 %or.cond5, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.sroa.046.0.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 0
  %i.ab = fadd float %.sroa.046.0.vec.extract, -1.000000e+00 ; 2 uses
  %.sroa.046.4.vec.extract = extractelement <2 x float> %.sroa.0.0.i, i64 1
  %i.ac = fadd float %.sroa.046.4.vec.extract, -1.000000e+00 ; 2 uses
  %i.ad = fadd float %.sroa.10.0.i, -1.000000e+00 ; 2 uses
  %i.ae = fmul float %i.ac, %i.ac
  %i.af = call float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.ae)
  %i.ag = call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.af)
  %i.ah = fcmp ogt float %i.ag, f0x34000000
  br i1 %i.ah, label %.critedge, label %.thread

.thread:                                          ; preds = %bb.i
  br label %.critedge

bb.j:                                             ; preds = %bb.e
  %i.ai = landingpad { ptr, i32 }
          cleanup
  %i.aj = load ptr, ptr %2, align 8               ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.d
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42: ; preds = %bb.j
  %i.al = load i64, ptr %i.d, align 8
  %i.am = add i64 %i.al, 1
  call void @_ZdlPvm(ptr noundef %i.aj, i64 noundef %i.am) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit44: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i42
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %i.ai

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  br i1 %.0, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.sroa.046.0.vec.extract48 = extractelement <2 x float> %.sroa.0.0.i, i64 0 ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %.sroa.0.0.i, %.sroa.0.0.i
  %i.an = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ao = call float @llvm.fmuladd.f32(float %.sroa.046.0.vec.extract48, float %.sroa.046.0.vec.extract48, float %i.an)
  %i.ap = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0.i, float %.sroa.10.0.i, float %i.ao)
  %i.aq = fcmp ogt float %i.ap, f0x34000000
  br i1 %i.aq, label %.critedge, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.b
  %i.ar = add nuw nsw i64 %.03062, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ar, 17
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !115

.critedge:                                        ; preds = %bb.l, %bb.m, %.thread, %bb.i
  %.lcssa59 = phi i1 [ false, %.thread ], [ true, %bb.i ], [ false, %bb.m ], [ true, %bb.l ]
  ret i1 %.lcssa59
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter27NameTransformationChainNodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS1_18TransformationCompE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.a, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.a, ptr noundef nonnull align 1 dereferenceable(12) @.str.33, i64 12, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 12, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 28
  store i8 0, ptr %i.c, align 4
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noalias !116
  %i.f = load ptr, ptr %2, align 8, !noalias !116
  %i.g = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %6, i64 noundef 0, i64 noundef 0, ptr noundef %i.f, i64 noundef %i.e)
          to label %.noexc10 unwind label %bb.g   ; 8 uses

.noexc10:                                         ; preds = %._crit_edge.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 7 uses
  store ptr %i.h, ptr %5, align 8, !alias.scope !116
  %i.i = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 7 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %.thread, label %bb.a

.thread:                                          ; preds = %.noexc10
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.m = load i64, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp ult i64 %i.m, 16
  call void @llvm.assume(i1 %i.n)
  %i.o = add nuw nsw i64 %i.m, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.h, ptr noundef nonnull align 8 dereferenceable(1) %i.j, i64 %i.o, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.m, ptr %i.q, align 8, !alias.scope !116
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.p, align 8
  store i8 0, ptr %i.j, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.a:                                             ; preds = %.noexc10
  store ptr %i.i, ptr %5, align 8, !alias.scope !116
  %i.r = load i64, ptr %i.j, align 8
  store i64 %i.r, ptr %i.h, align 8, !alias.scope !116
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %.pre.i, ptr %i.t, align 8, !alias.scope !116
  store ptr %i.j, ptr %i.g, align 8
  store i64 0, ptr %i.s, align 8
  store i8 0, ptr %i.j, align 8
  %i.u = icmp eq i64 %.pre.i, 4611686018427387903
  br i1 %i.u, label %bb.b, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.225) #31
          to label %.noexc14 unwind label %bb.h

.noexc14:                                         ; preds = %bb.b
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %.thread, %bb.a
  %i.v = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.34, i64 noundef 1)
end_hunk_0
begin_hunk_1_@_ZN6Assimp3FBX12FBXConverter11ConvertLineERKNS0_12LineGeometryEP6aiNode:bb.a
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = lshr i32 %i.bv, 31
  %spec.select = add i32 %i.bw, %.05978           ; 2 uses
  %i.bx = add i32 %.05879, 1                      ; 2 uses
  %i.by = zext i32 %i.bx to i64                   ; 2 uses
  %i.bz = icmp ugt i64 %i.av, %i.by
  br i1 %i.bz, label %.lr.ph, label %._crit_edge, !llvm.loop !129

bb.g:                                             ; preds = %._crit_edge
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %i.bn
  %i.cb = add nuw nsw i64 %i.bn, 1152921504606846975
  %i.cc = and i64 %i.cb, 1152921504606846975
  %xtraiter = and i64 %i.bn, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.g, %.prol.preheader
  %i.cd = phi ptr [ %i.cf, %.prol.preheader ], [ %i.br, %bb.g ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %bb.g ]
  store i32 0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr null, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !130

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.g
  %.unr = phi ptr [ %i.br, %bb.g ], [ %i.cf, %.prol.preheader ]
  %i.cg = icmp samesign ult i64 %i.cc, 7
  br i1 %i.cg, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %i.ch = phi ptr [ %i.cx, %.new ], [ %.unr, %.prol.loopexit ] ; 17 uses
  store i32 0, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr null, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store i32 0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr null, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  store i32 0, ptr %i.cl, align 8
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  store ptr null, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store i32 0, ptr %i.cn, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store ptr null, ptr %i.co, align 8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i32 0, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store ptr null, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  store i32 0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ch, i64 88
  store ptr null, ptr %i.cs, align 8
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ch, i64 96
  store i32 0, ptr %i.ct, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ch, i64 104
  store ptr null, ptr %i.cu, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 112
  store i32 0, ptr %i.cv, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ch, i64 120
  store ptr null, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 128 ; 2 uses
  %i.cy = icmp eq ptr %i.cx, %i.ca
  br i1 %i.cy, label %.loopexit, label %.new

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %._crit_edge
  %i.cz = getelementptr inbounds nuw i8, ptr %i.p, i64 208
  store ptr %i.br, ptr %i.cz, align 8
  br i1 %.not, label %._crit_edge85.thread, label %.lr.ph84

._crit_edge85.thread:                             ; preds = %.loopexit
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dc = load ptr, ptr %i.db, align 8
  %i.dd = load ptr, ptr %i.da, align 8
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = lshr exact i64 %i.dg, 3
  %i.di = trunc i64 %i.dh to i32
  %i.dj = add i32 %i.di, -1
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.i

._crit_edge85:                                    ; preds = %bb.o
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  %.phi.trans.insert88 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.pre89 = load ptr, ptr %.phi.trans.insert88, align 8 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dn = load ptr, ptr %i.dm, align 8
  %i.do = load ptr, ptr %i.dl, align 8
  %i.dp = ptrtoint ptr %i.dn to i64
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = sub i64 %i.dp, %i.dq
  %i.ds = lshr exact i64 %i.dr, 3
  %i.dt = trunc i64 %i.ds to i32
  %i.du = add i32 %i.dt, -1                       ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not.i.i = icmp eq ptr %.pre, %.pre89
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge85
  store i32 %i.du, ptr %.pre, align 4
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  store ptr %i.dw, ptr %i.dv, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.i:                                             ; preds = %._crit_edge85.thread, %._crit_edge85
  %i.dx = phi ptr [ %i.dk, %._crit_edge85.thread ], [ %i.dv, %._crit_edge85 ]
  %i.dy = phi i32 [ %i.dj, %._crit_edge85.thread ], [ %i.du, %._crit_edge85 ]
  %i.dz = phi ptr [ null, %._crit_edge85.thread ], [ %.pre89, %._crit_edge85 ]
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.eb = load ptr, ptr %0, align 8               ; 5 uses
  %i.ec = ptrtoint ptr %i.dz to i64
  %i.ed = ptrtoint ptr %i.eb to i64
  %i.ee = sub i64 %i.ec, %i.ed                    ; 6 uses
  %i.ef = icmp eq i64 %i.ee, 9223372036854775804
  br i1 %i.ef, label %bb.j, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc74 unwind label %bb.q

.noexc74:                                         ; preds = %bb.j
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.eg = ashr exact i64 %i.ee, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.eg, i64 1)
  %i.eh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.eg ; 2 uses
  %i.ei = icmp ult i64 %i.eh, %i.eg
  %i.ej = tail call i64 @llvm.umin.i64(i64 %i.eh, i64 2305843009213693951)
  %i.ek = select i1 %i.ei, i64 2305843009213693951, i64 %i.ej ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ek, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.el = shl nuw nsw i64 %i.ek, 2
  %i.em = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.el) #30
          to label %.noexc75 unwind label %bb.q   ; 4 uses

.noexc75:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.en = getelementptr inbounds i8, ptr %i.em, i64 %i.ee ; 2 uses
  store i32 %i.dy, ptr %i.en, align 4
  %i.eo = icmp sgt i64 %i.ee, 0
  br i1 %i.eo, label %bb.k, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %.noexc75
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.em, ptr align 4 %i.eb, i64 %i.ee, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %.noexc75
  %i.ep = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.eb, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.eb, i64 noundef %i.ee) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.em, ptr %0, align 8
  store ptr %i.ep, ptr %i.dx, align 8
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.eq, ptr %i.ea, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.lr.ph84:                                         ; preds = %.loopexit, %bb.o
  %indvars.iv = phi i64 [ %indvars.iv.next.pre-phi, %bb.o ], [ 0, %.loopexit ] ; 4 uses
  %.05281 = phi ptr [ %.153, %bb.o ], [ %i.br, %.loopexit ] ; 4 uses
  %i.er = load ptr, ptr %i.c, align 8
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %i.er, i64 %indvars.iv
  %i.et = load i32, ptr %i.es, align 4
  %i.eu = icmp slt i32 %i.et, 0
  br i1 %i.eu, label %.lr.ph84._crit_edge, label %bb.m

.lr.ph84._crit_edge:                              ; preds = %.lr.ph84
  %.pre91 = add nuw nsw i64 %indvars.iv, 1
  br label %bb.o

bb.m:                                             ; preds = %.lr.ph84
  store i32 2, ptr %.05281, align 8
  %i.ev = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znam(i64 noundef 8) #30
          to label %bb.n unwind label %bb.p       ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.ew = getelementptr inbounds nuw i8, ptr %.05281, i64 16
  %i.ex = getelementptr inbounds nuw i8, ptr %.05281, i64 8 ; 2 uses
  store ptr %i.ev, ptr %i.ex, align 8
  %i.ey = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %indvars.iv
  %i.fa = load i32, ptr %i.ez, align 4
  store i32 %i.fa, ptr %i.ev, align 4
  %i.fb = add nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.fc = icmp eq i64 %i.fb, %i.av
  %i.fd = select i1 %i.fc, i64 0, i64 %i.fb
  %i.fe = getelementptr inbounds nuw [4 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = load i32, ptr %i.fe, align 4            ; 2 uses
  %.lobit = ashr i32 %i.ff, 31
  %i.fg = xor i32 %.lobit, %i.ff
  %i.fh = load ptr, ptr %i.ex, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 4
  store i32 %i.fg, ptr %i.fi, align 4
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph84._crit_edge, %bb.n
  %indvars.iv.next.pre-phi = phi i64 [ %.pre91, %.lr.ph84._crit_edge ], [ %i.fb, %bb.n ] ; 2 uses
  %.153 = phi ptr [ %.05281, %.lr.ph84._crit_edge ], [ %i.ew, %bb.n ]
  %exitcond.not = icmp eq i64 %indvars.iv.next.pre-phi, %i.av
  br i1 %exitcond.not, label %._crit_edge85, label %.lr.ph84, !llvm.loop !131

bb.p:                                             ; preds = %bb.m
  %i.fj = landingpad { ptr, i32 }
          cleanup
  %.pr.pre = load ptr, ptr %0, align 8
  br label %thread-pre-split

bb.q:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i, %bb.j
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.p, %bb.q
  %i.fl = phi ptr [ %i.eb, %bb.q ], [ %.pr.pre, %bb.p ] ; 3 uses
  %.pn68.pn = phi { ptr, i32 } [ %i.fk, %bb.q ], [ %i.fj, %bb.p ]
  %.not.i.i.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIjSaIjEED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %thread-pre-split
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = ptrtoint ptr %i.fn to i64
  %i.fp = ptrtoint ptr %i.fl to i64
  %i.fq = sub i64 %i.fo, %i.fp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fq) #29
  br label %_ZNSt6vectorIjSaIjEED2Ev.exit

_ZNSt6vectorIjSaIjEED2Ev.exit:                    ; preds = %thread-pre-split, %bb.r
  resume { ptr, i32 } %.pn68.pn

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA22_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %bb.h, %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, %.noexc71, %.noexc
  ret void
}

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry11GetVerticesEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetFaceIndexCountsEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEP6aiNodeSD_(ptr dead_on_unwind noalias nofree writable sret(%"class.std::vector.311") align 8 captures(none) initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr nofree noundef readonly captures(address) %5, ptr nofree noundef readnone captures(none) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.std::set", align 8          ; 10 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6Assimp3FBX12MeshGeometry18GetMaterialIndicesEv(ptr noundef nonnull align 8 dereferenceable(1000) %2) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.b = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 8 uses
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  store ptr %i.b, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 3 uses
  store i64 0, ptr %i.f, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.g = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not32 = icmp eq ptr %i.g, %i.i
  br i1 %.not32, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  br label %bb.c

._crit_edge.loopexit:                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.pre = load ptr, ptr %i.c, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.a
  %i.l = phi ptr [ %.pre, %._crit_edge.loopexit ], [ null, %bb.a ]
  invoke void @_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE8_M_eraseEPSt13_Rb_tree_nodeIiE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %i.l)
          to label %_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  call void @__clang_call_terminate(ptr %i.n) #32
  unreachable

_ZNSt3setIiSt4lessIiESaIiEED2Ev.exit:             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit
  %.sroa.025.033 = phi ptr [ %i.g, %.lr.ph ], [ %i.bi, %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit ] ; 2 uses
  %i.o = load i32, ptr %.sroa.025.033, align 4    ; 7 uses
  %i.p = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not10.i.i.i, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.p, %bb.c ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.r = load i32, ptr %i.q, align 4
  %i.s = icmp slt i32 %i.r, %i.o                  ; 3 uses
  %.19.i.i.i = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 2 uses
  %.1.in.v.i.i.i = select i1 %i.s, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !132

_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.t = icmp eq ptr %.19.i.i.i, %i.b
  br i1 %i.t, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit:        ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.s, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.u = load i32, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 4
  %i.v = icmp slt i32 %i.o, %i.u
  br i1 %i.v, label %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread, label %_ZNSt3setIiSt4lessIiESaIiEE6insertERKi.exit

_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread: ; preds = %_ZNSt8_Rb_treeIiiSt9_IdentityIiESt4lessIiESaIiEE14_M_lower_boundEPSt13_Rb_tree_nodeIiEPSt18_Rb_tree_node_baseRKi.exit.i.i, %bb.c, %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit
  %i.w = invoke noundef i32 @_ZN6Assimp3FBX12FBXConverter24ConvertMeshMultiMaterialERKNS0_12MeshGeometryERKNS0_5ModelERK12aiMatrix4x4tIfEiP6aiNodeSD_(ptr noundef nonnull align 8 dereferenceable(529) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull align 8 dereferenceable(208) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, i32 noundef %i.o, ptr noundef %5, ptr poison)
          to label %bb.d unwind label %.loopexit  ; 2 uses

bb.d:                                             ; preds = %_ZNSt3setIiSt4lessIiESaIiEE4findERKi.exit.thread
  %i.x = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.y = load ptr, ptr %i.k, align 8
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 %i.w, ptr %i.x, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 4
  store ptr %i.z, ptr %i.j, align 8
  br label %_ZNSt6vectorIjSaIjEE9push_backEOj.exit

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %0, align 8               ; 4 uses
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac                    ; 6 uses
  %i.ae = icmp eq i64 %i.ad, 9223372036854775804
  br i1 %i.ae, label %bb.g, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i

bb.g:                                             ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.g
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.f
  %i.af = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.af, i64 1)
  %i.ag = add nsw i64 %.sroa.speculated.i.i.i.i, %i.af ; 2 uses
  %i.ah = icmp ult i64 %i.ag, %i.af
  %i.ai = call i64 @llvm.umin.i64(i64 %i.ag, i64 2305843009213693951)
  %i.aj = select i1 %i.ah, i64 2305843009213693951, i64 %i.ai ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.aj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ak = shl nuw nsw i64 %i.aj, 2
  %i.al = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ak) #30
          to label %.noexc14 unwind label %.loopexit ; 4 uses

.noexc14:                                         ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.al, i64 %i.ad ; 2 uses
  store i32 %i.w, ptr %i.am, align 4
  %i.an = icmp sgt i64 %i.ad, 0
  br i1 %i.an, label %bb.h, label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

bb.h:                                             ; preds = %.noexc14
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.al, ptr align 4 %i.aa, i64 %i.ad, i1 false)
  br label %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.h, %.noexc14
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.aa, i64 noundef %i.ad) #29
  br label %_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i

_ZNSt6vectorIjSaIjEE17_M_realloc_insertIJjEEEvN9__gnu_cxx17__normal_iteratorIPjS1_EEDpOT_.exit.i.i: ; preds = %bb.i, %_ZNSt6vectorIjSaIjEE11_S_relocateEPjS2_S2_RS0_.exit16.i.i.i
  store ptr %i.al, ptr %0, align 8
  store ptr %i.ao, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.aj
end_hunk_1
begin_hunk_2_@_ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_:bb.a

bb.b:                                             ; preds = %._crit_edge
  %i.q = call ptr @__dynamic_cast(ptr nonnull %i.o, ptr nonnull @_ZTIN6Assimp3FBX6ObjectE, ptr nonnull @_ZTIN6Assimp3FBX5ModelE, i64 0) #27
  br label %_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit

_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit: ; preds = %._crit_edge, %bb.b
  %i.r = phi ptr [ %i.q, %bb.b ], [ null, %._crit_edge ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(136) %10, i8 0, i64 136, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 520 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.w = ptrtoint ptr %i.f to i64                 ; 3 uses
  br label %.outer

.outer:                                           ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread, %_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit
  %.0119303.ph = phi i1 [ true, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread ], [ false, %_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit ]
  %.0122302.ph = phi i64 [ %i.di, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread ], [ 0, %_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit ]
  %.0123301.ph = phi i1 [ %spec.select, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread ], [ false, %_ZNK6Assimp3FBX18AnimationCurveNode13TargetAsModelEv.exit ] ; 2 uses
  br label %bb.q

.lr.ph:                                           ; preds = %bb.a, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %.0299 = phi ptr [ %.1, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ], [ null, %bb.a ] ; 2 uses
  %.sroa.0252.0298 = phi ptr [ %i.bl, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ], [ %i.k, %bb.a ] ; 2 uses
  %i.x = load ptr, ptr %.sroa.0252.0298, align 8  ; 11 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 128
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 136
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %bb.c, label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ad = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc unwind label %.loopexit273

.noexc:                                           ; preds = %bb.c
  br i1 %i.ad, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.ae = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc149 unwind label %.loopexit273

.noexc149:                                        ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #27
  %i.af = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc150 unwind label %.loopexit273

.noexc150:                                        ; preds = %.noexc149
  store ptr %i.af, ptr %i.e, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA46_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.ae, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(46) @.str.178, ptr noundef nonnull align 8 dereferenceable(32) %i.ac)
          to label %.noexc151 unwind label %.loopexit273

.noexc151:                                        ; preds = %.noexc150
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

.loopexit273:                                     ; preds = %bb.e, %bb.i, %bb.c, %bb.d, %.noexc149, %.noexc150, %bb.g, %bb.h, %.noexc153, %.noexc154, %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit275 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

.loopexit.split-lp274:                            ; preds = %bb.m
  %lpad.loopexit.split-lp276 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.e:                                             ; preds = %.lr.ph
  %i.ag = invoke noundef nonnull align 8 dereferenceable(48) ptr @_ZNK6Assimp3FBX18AnimationCurveNode6CurvesB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(168) %i.x)
          to label %bb.f unwind label %.loopexit273

bb.f:                                             ; preds = %bb.e
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 40
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.al = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc152 unwind label %.loopexit273

.noexc152:                                        ; preds = %bb.g
  br i1 %i.al, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.h

bb.h:                                             ; preds = %.noexc152
  %i.am = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc153 unwind label %.loopexit273

.noexc153:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #27
  %i.an = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc154 unwind label %.loopexit273

.noexc154:                                        ; preds = %.noexc153
  store ptr %i.an, ptr %i.d, align 8
  invoke void @_ZN6Assimp6Logger4warnIJPKcRA53_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.am, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull align 1 dereferenceable(53) @.str.179, ptr noundef nonnull align 8 dereferenceable(32) %i.ak)
          to label %.noexc155 unwind label %.loopexit273

.noexc155:                                        ; preds = %.noexc154
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.i:                                             ; preds = %bb.f
  %i.ao = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(32) %i.y)
          to label %bb.j unwind label %.loopexit273 ; 4 uses

bb.j:                                             ; preds = %bb.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 4 uses
  %i.aq = load ptr, ptr %i.ap, align 8            ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8
  %.not.i = icmp eq ptr %i.aq, %i.as
  br i1 %.not.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store ptr %i.x, ptr %i.aq, align 8
  %i.at = load ptr, ptr %i.ap, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.au, ptr %i.ap, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.l:                                             ; preds = %bb.j
  %i.av = load ptr, ptr %i.ao, align 8            ; 4 uses
  %i.aw = ptrtoint ptr %i.aq to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax                    ; 6 uses
  %i.az = icmp eq i64 %i.ay, 9223372036854775800
  br i1 %i.az, label %bb.m, label %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.224) #31
          to label %.noexc156 unwind label %.loopexit.split-lp274

.noexc156:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.l
  %i.ba = ashr exact i64 %i.ay, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ba, i64 1)
  %i.bb = add nsw i64 %.sroa.speculated.i.i.i, %i.ba ; 2 uses
  %i.bc = icmp ult i64 %i.bb, %i.ba
  %i.bd = call i64 @llvm.umin.i64(i64 %i.bb, i64 1152921504606846975)
  %i.be = select i1 %i.bc, i64 1152921504606846975, i64 %i.bd ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.be, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bf = shl nuw nsw i64 %i.be, 3
  %i.bg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bf) #30
          to label %.noexc157 unwind label %.loopexit273 ; 4 uses

.noexc157:                                        ; preds = %_ZNKSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 %i.ay ; 2 uses
  store ptr %i.x, ptr %i.bh, align 8
  %i.bi = icmp sgt i64 %i.ay, 0
  br i1 %i.bi, label %bb.n, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.n:                                             ; preds = %.noexc157
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bg, ptr align 8 %i.av, i64 %i.ay, i1 false)
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.n, %.noexc157
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %.not.i17.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.av, i64 noundef %i.ay) #29
  br label %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.o, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  store ptr %i.bg, ptr %i.ao, align 8
  store ptr %i.bj, ptr %i.ap, align 8
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.be
  store ptr %i.bk, ptr %i.ar, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE7LogWarnIJRA46_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.k, %.noexc155, %.noexc152, %.noexc151, %.noexc
  %.1 = phi ptr [ %.0299, %.noexc151 ], [ %i.x, %.noexc155 ], [ %.0299, %.noexc ], [ %i.x, %.noexc152 ], [ %i.x, %bb.k ], [ %i.x, %_ZNSt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ] ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0252.0298, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.bl, %i.m
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.p:                                             ; preds = %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  br i1 %.0119303.ph, label %.thread, label %bb.ae

bb.q:                                             ; preds = %.outer, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit
  %.0122302 = phi i64 [ %i.df, %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit ], [ %.0122302.ph, %.outer ] ; 8 uses
  %i.bm = trunc nuw nsw i64 %.0122302 to i32
  %i.bn = and i64 %.0122302, 27                   ; 2 uses
  %or.cond = icmp eq i64 %i.bn, 9
  br i1 %or.cond, label %bb.r, label %switch.lookup

bb.r:                                             ; preds = %bb.q
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0122302
  store i64 %i.w, ptr %i.bo, align 8
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

switch.lookup:                                    ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %switch.gep = getelementptr inbounds [8 x i8], ptr @switch.table._ZN6Assimp3FBX12FBXConverter22GenerateNodeAnimationsERSt6vectorIP10aiNodeAnimSaIS4_EERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS2_IPKNS0_18AnimationCurveNodeESaISI_EERKSt3mapISI_PKNS0_14AnimationLayerESt4lessISI_ESaISt4pairIKSI_SQ_EEEllRdS10_, i64 %.0122302
  %switch.load = load ptr, ptr %switch.gep, align 8 ; 3 uses
  store ptr %i.s, ptr %11, align 8
  %i.bp = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %switch.load) #27 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #27
  store i64 %i.bp, ptr %i.c, align 8
  %i.bq = icmp ugt i64 %i.bp, 15
  br i1 %i.bq, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %switch.lookup
  %i.br = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc159 unwind label %bb.ac ; 2 uses

.noexc159:                                        ; preds = %.noexc.i
  store ptr %i.br, ptr %11, align 8
  %i.bs = load i64, ptr %i.c, align 8
  store i64 %i.bs, ptr %i.s, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc159, %switch.lookup
  %i.bt = phi ptr [ %i.br, %.noexc159 ], [ %i.s, %switch.lookup ] ; 2 uses
  switch i64 %i.bp, label %bb.t [
    i64 1, label %bb.s
    i64 0, label %bb.u
  ]

bb.s:                                             ; preds = %._crit_edge.i.i
  %i.bu = load i8, ptr %switch.load, align 1
  store i8 %i.bu, ptr %i.bt, align 1
  br label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr nonnull align 1 %switch.load, i64 %i.bp, i1 false)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge.i.i
  %i.bv = load i64, ptr %i.c, align 8             ; 2 uses
  store i64 %i.bv, ptr %i.t, align 8
  %i.bw = load ptr, ptr %11, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 0, ptr %i.bx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #27
  %i.by = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.by, null
  %.pre = load ptr, ptr %11, align 8              ; 4 uses
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.u
  %i.bz = load i64, ptr %i.t, align 8             ; 4 uses
  br label %bb.v

bb.v:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.by, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 6 uses
  %.0811.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.cb = load i64, ptr %i.ca, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bz, i64 %i.cb) ; 2 uses
  %i.cc = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.cc, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.v
  %i.cd = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = call i32 @memcmp(ptr noundef %i.ce, ptr noundef %.pre, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.v
  %i.cg = sub i64 %i.cb, %i.bz
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cg, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cf, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ch = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 4 uses
  %.19.i.i.i = select i1 %i.ch, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 3 uses
  %.1.in.v.i.i.i = select i1 %i.ch, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i160 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i160, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.v, !llvm.loop !314

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.ci = icmp eq ptr %.19.i.i.i, %i.f
  br i1 %i.ci, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit, label %bb.w

bb.w:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v = select i1 %i.ch, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel.v, i64 40
  %i.cj = load i64, ptr %.19.i.i.i.sroa.sel.v.sroa.sel.v.sroa.sel, align 8 ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.cj, i64 %i.bz) ; 2 uses
  %i.ck = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ck, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.w
  %.19.i.i.i.sroa.sel257.v.sroa.sel.v.sroa.sel.v = select i1 %i.ch, ptr %.0811.i.i.i, ptr %.012.i.i.i
  %.19.i.i.i.sroa.sel257.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.19.i.i.i.sroa.sel257.v.sroa.sel.v.sroa.sel.v, i64 32
  %i.cl = load ptr, ptr %.19.i.i.i.sroa.sel257.v.sroa.sel.v.sroa.sel, align 8
  %i.cm = call i32 @memcmp(ptr noundef %.pre, ptr noundef %i.cl, i64 noundef %.sroa.speculated.i.i.i.i.i) #27 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.w
  %i.cn = sub i64 %i.bz, %i.cj
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cn, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cm, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.co = icmp slt i32 %.0.i.i.i.i.i, 0
  %spec.select.i.i = select i1 %i.co, ptr %i.f, ptr %.19.i.i.i ; 2 uses
  %.pre312 = ptrtoint ptr %spec.select.i.i to i64
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %bb.u
  %.pre-phi = phi i64 [ %.pre312, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %i.w, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.w, %bb.u ]
  %.sroa.0.0.i.i = phi ptr [ %spec.select.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i ], [ %i.f, %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_St6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISD_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i ], [ %i.f, %bb.u ] ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %10, i64 %.0122302
  store i64 %.pre-phi, ptr %i.cp, align 8
  %i.cq = icmp eq ptr %.pre, %i.s
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit
  %i.cr = load i64, ptr %i.s, align 8
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %.pre, i64 noundef %i.cs) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIPKN6Assimp3FBX18AnimationCurveNodeESaISB_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  %.not262 = icmp eq ptr %.sroa.0.0.i.i, %i.f
  br i1 %.not262, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ct = load ptr, ptr %i.u, align 8, !nonnull !3, !align !9
  %i.cu = load ptr, ptr %i.ct, align 8, !nonnull !3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 11
  %i.cw = load i8, ptr %i.cv, align 1, !range !4, !noundef !3
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %bb.y, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread

bb.y:                                             ; preds = %bb.x
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 64
  %i.cz = invoke noundef zeroext i1 @_ZN6Assimp3FBX12FBXConverter24IsRedundantAnimationDataERKNS0_5ModelENS1_18TransformationCompERKSt6vectorIPKNS0_18AnimationCurveNodeESaIS9_EE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(208) %i.r, i32 noundef %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.cy)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %bb.y
  br i1 %i.cz, label %bb.aa, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread

bb.aa:                                            ; preds = %bb.z
  %i.da = invoke noundef zeroext i1 @_ZN6Assimp13DefaultLogger12isNullLoggerEv()
          to label %.noexc161 unwind label %bb.ad

.noexc161:                                        ; preds = %bb.aa
  br i1 %i.da, label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit, label %bb.ab

bb.ab:                                            ; preds = %.noexc161
  %i.db = invoke noundef ptr @_ZN6Assimp13DefaultLogger3getEv()
          to label %.noexc162 unwind label %bb.ad

.noexc162:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  %i.dc = invoke noundef ptr @_ZN6Assimp12LogFunctionsINS_11FBXImporterEE6PrefixEv()
          to label %.noexc163 unwind label %bb.ad

.noexc163:                                        ; preds = %.noexc162
  store ptr %i.dc, ptr %i.b, align 8
  invoke void @_ZN6Assimp6Logger12verboseDebugIJPKcRA47_S2_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %i.db, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 1 dereferenceable(47) @.str.180, ptr noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %.noexc164 unwind label %bb.ad

.noexc164:                                        ; preds = %.noexc163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #27
  br label %_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit

bb.ac:                                            ; preds = %.noexc.i
  %i.dd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.dc

bb.ad:                                            ; preds = %.noexc163, %.noexc162, %bb.ab, %bb.aa, %bb.y
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %bb.dc

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit: ; preds = %.noexc164, %.noexc161, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.r
  %i.df = add nuw nsw i64 %.0122302, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, 17
  br i1 %exitcond.not, label %bb.p, label %bb.q, !llvm.loop !353

_ZN6Assimp12LogFunctionsINS_11FBXImporterEE15LogVerboseDebugIJRA47_KcRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_.exit.thread: ; preds = %bb.x, %bb.z
  %i.dg = icmp ne i64 %.0122302, 12
  %i.dh = icmp ne i64 %i.bn, 3
  %or.cond5 = and i1 %i.dg, %i.dh
  %spec.select = select i1 %or.cond5, i1 true, i1 %.0123301.ph ; 2 uses
  %i.di = add nuw nsw i64 %.0122302, 1            ; 2 uses
  %exitcond.not361 = icmp eq i64 %i.di, 17
end_hunk_2
