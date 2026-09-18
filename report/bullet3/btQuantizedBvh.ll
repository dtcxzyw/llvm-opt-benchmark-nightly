Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btQuantizedBvh?download=true
inline.NumInlined: 670
inline.NumDeleted: 116
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 23
begin_hunk_0_@_ZN14btQuantizedBvh9buildTreeEii:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.f

_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit: ; preds = %bb.e
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !35
  %i.bf = getelementptr inbounds [64 x i8], ptr %i.be, i64 %i.ae
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !tbaa.struct !67
  %.pre = load i32, ptr %i.b, align 4, !tbaa !57
  %.pre42 = load i8, ptr %i.ab, align 8, !tbaa !33, !range !54
  %.pre44 = sext i32 %.pre to i64                 ; 2 uses
  %i.bg = trunc nuw i8 %.pre42 to i1
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br i1 %i.bg, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit.thread, %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit
  %i.bi = phi ptr [ %i.bc, %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit.thread ], [ %i.bh, %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit ] ; 2 uses
  %.pre-phi47 = phi i64 [ %i.ae, %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit.thread ], [ %.pre44, %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit ]
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !39
  %i.bl = getelementptr inbounds [16 x i8], ptr %i.bk, i64 %.pre-phi47 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 6
  %i.bn = load float, ptr %i.bi, align 4, !tbaa !49
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !49
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.br = load float, ptr %i.bq, align 8, !tbaa !49 ; 2 uses
  %i.bs = fsub float %i.br, %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bv = load float, ptr %i.bu, align 8, !tbaa !49
  %i.bw = fmul float %i.bs, %i.bv
  %i.bx = fadd float %i.bw, 1.000000e+00
  %i.by = fptoui float %i.bx to i16
  %i.bz = or i16 %i.by, 1
  %i.ca = insertelement <2 x float> poison, float %i.bn, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bp, i64 1 ; 2 uses
  %i.cc = fsub <2 x float> %i.cb, %i.cb
  %i.cd = load <2 x float>, ptr %i.bt, align 8, !tbaa !49
  %i.ce = fmul <2 x float> %i.cc, %i.cd
  %i.cf = fadd <2 x float> %i.ce, splat (float 1.000000e+00)
  %i.cg = fptoui <2 x float> %i.cf to <2 x i16>
  %i.ch = or <2 x i16> %i.cg, splat (i16 1)
  store <2 x i16> %i.ch, ptr %i.bm, align 2, !tbaa !60
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 10
  store i16 %i.bz, ptr %i.ci, align 2, !tbaa !60
  br label %_ZN14btQuantizedBvh22setInternalNodeAabbMaxEiRK9btVector3.exit

bb.g:                                             ; preds = %_ZN14btQuantizedBvh22setInternalNodeAabbMinEiRK9btVector3.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !35
  %i.cl = getelementptr inbounds [64 x i8], ptr %i.ck, i64 %.pre44
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.cm, ptr noundef nonnull align 8 dereferenceable(16) %i.bh, i64 16, i1 false), !tbaa.struct !67
  br label %_ZN14btQuantizedBvh22setInternalNodeAabbMaxEiRK9btVector3.exit

_ZN14btQuantizedBvh22setInternalNodeAabbMaxEiRK9btVector3.exit: ; preds = %bb.f, %bb.g
  %i.cn = phi ptr [ %i.bi, %bb.f ], [ %i.bh, %bb.g ]
  %i.co = icmp slt i32 %1, %2
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN14btQuantizedBvh22setInternalNodeAabbMaxEiRK9btVector3.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = sext i32 %1 to i64
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_ZNK14btQuantizedBvh10getAabbMaxEi.exit
  %indvars.iv = phi i64 [ %i.cx, %.lr.ph ], [ %indvars.iv.next, %_ZNK14btQuantizedBvh10getAabbMaxEi.exit ] ; 3 uses
  %i.cy = load i32, ptr %i.b, align 4, !tbaa !57
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #19
  %i.cz = load i8, ptr %i.ab, align 8, !tbaa !33, !range !54, !noundef !55
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.db = load ptr, ptr %i.cr, align 8, !tbaa !39
  %i.dc = getelementptr inbounds [16 x i8], ptr %i.db, i64 %indvars.iv ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  %i.de = load i16, ptr %i.dd, align 2, !tbaa !60
  %i.df = uitofp i16 %i.de to float
  %i.dg = load float, ptr %i.ct, align 8, !tbaa !49 ; 2 uses
  %i.dh = fdiv float %i.df, %i.dg
  %i.di = load float, ptr %i.cn, align 4, !tbaa !49
  %i.dj = load float, ptr %i.cu, align 4, !tbaa !49
  %i.dk = load <2 x i16>, ptr %i.dc, align 2, !tbaa !60
  %i.dl = uitofp <2 x i16> %i.dk to <2 x float>
  %i.dm = load <2 x float>, ptr %i.cs, align 8, !tbaa !49 ; 2 uses
  %i.dn = fdiv <2 x float> %i.dl, %i.dm
  %i.do = insertelement <2 x float> poison, float %i.di, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %i.dj, i64 1 ; 2 uses
  %i.dq = fadd <2 x float> %i.dn, %i.dp
  %i.dr = load float, ptr %i.cv, align 8, !tbaa !49 ; 2 uses
  %i.ds = fadd float %i.dh, %i.dr
  %.sroa.7.8.vec.insert16.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ds, i64 0
  store <2 x float> %i.dq, ptr %3, align 8
  store <2 x float> %.sroa.7.8.vec.insert16.i.i, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dc, i64 6
  %i.du = getelementptr inbounds nuw i8, ptr %i.dc, i64 10
  %i.dv = load i16, ptr %i.du, align 2, !tbaa !60
  %i.dw = uitofp i16 %i.dv to float
  %i.dx = fdiv float %i.dw, %i.dg
  %i.dy = load <2 x i16>, ptr %i.dt, align 2, !tbaa !60
  %i.dz = uitofp <2 x i16> %i.dy to <2 x float>
  %i.ea = fdiv <2 x float> %i.dz, %i.dm
  %i.eb = fadd <2 x float> %i.ea, %i.dp
  %i.ec = fadd float %i.dx, %i.dr
  %.sroa.7.8.vec.insert16.i.i35 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ec, i64 0
  br label %_ZNK14btQuantizedBvh10getAabbMaxEi.exit

bb.j:                                             ; preds = %bb.h
  %i.ed = load ptr, ptr %i.cp, align 8, !tbaa !35
  %i.ee = getelementptr inbounds [64 x i8], ptr %i.ed, i64 %indvars.iv ; 4 uses
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.ee, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.3.0.copyload.i = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !50
  store <2 x float> %.sroa.0.0.copyload.i, ptr %3, align 8
  store <2 x float> %.sroa.3.0.copyload.i, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 16
  %.sroa.0.0.copyload.i27 = load <2 x float>, ptr %i.ef, align 4
  %.sroa.3.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.ee, i64 24
  %.sroa.3.0.copyload.i29 = load <2 x float>, ptr %.sroa.3.0..sroa_idx.i28, align 4, !tbaa !50
  br label %_ZNK14btQuantizedBvh10getAabbMaxEi.exit

_ZNK14btQuantizedBvh10getAabbMaxEi.exit:          ; preds = %bb.i, %bb.j
  %.sroa.0.4.vec.insert12.i.pn.i30 = phi <2 x float> [ %i.eb, %bb.i ], [ %.sroa.0.0.copyload.i27, %bb.j ]
  %.sroa.7.8.vec.insert16.i.pn.i31 = phi <2 x float> [ %.sroa.7.8.vec.insert16.i.i35, %bb.i ], [ %.sroa.3.0.copyload.i29, %bb.j ]
  store <2 x float> %.sroa.0.4.vec.insert12.i.pn.i30, ptr %4, align 8
  store <2 x float> %.sroa.7.8.vec.insert16.i.pn.i31, ptr %i.cw, align 8
  call void @_ZN14btQuantizedBvh21mergeInternalNodeAabbEiRK9btVector3S2_(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %i.cy, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #19
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond.not = icmp eq i32 %2, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge, label %bb.h, !llvm.loop !92

._crit_edge:                                      ; preds = %_ZNK14btQuantizedBvh10getAabbMaxEi.exit, %_ZN14btQuantizedBvh22setInternalNodeAabbMaxEiRK9btVector3.exit
  %i.eg = load i32, ptr %i.b, align 4, !tbaa !57
  %i.eh = add nsw i32 %i.eg, 1                    ; 2 uses
  store i32 %i.eh, ptr %i.b, align 4, !tbaa !57
  call void @_ZN14btQuantizedBvh9buildTreeEii(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %1, i32 noundef %i.y)
  %i.ei = load i32, ptr %i.b, align 4, !tbaa !57
  call void @_ZN14btQuantizedBvh9buildTreeEii(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %i.y, i32 noundef %2)
  %i.ej = load i32, ptr %i.b, align 4, !tbaa !57
  %i.ek = sub nsw i32 %i.ej, %i.c                 ; 3 uses
  %i.el = load i8, ptr %i.ab, align 8, !tbaa !33, !range !54, !noundef !55 ; 2 uses
  %i.em = trunc nuw i8 %i.el to i1
  %i.en = icmp sgt i32 %i.ek, 128
  %or.cond = select i1 %i.em, i1 %i.en, i1 false
  br i1 %or.cond, label %bb.k, label %bb.l

bb.k:                                             ; preds = %._crit_edge
  call void @_ZN14btQuantizedBvh20updateSubtreeHeadersEii(ptr noundef nonnull align 8 dereferenceable(244) %0, i32 noundef %i.eh, i32 noundef %i.ei)
  %.pre43 = load i8, ptr %i.ab, align 8, !tbaa !33, !range !54
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %._crit_edge
  %i.eo = phi i8 [ %.pre43, %bb.k ], [ %i.el, %._crit_edge ]
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.eq = sub nsw i32 0, %i.ek
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !39
  %i.et = getelementptr inbounds [16 x i8], ptr %i.es, i64 %i.ae
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 12
  store i32 %i.eq, ptr %i.eu, align 4, !tbaa !64
  br label %_ZN14btQuantizedBvh26setInternalNodeEscapeIndexEii.exit

bb.n:                                             ; preds = %bb.l
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !35
  %i.ex = getelementptr inbounds [64 x i8], ptr %i.ew, i64 %i.ae
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 32
  store i32 %i.ek, ptr %i.ey, align 4, !tbaa !69
  br label %_ZN14btQuantizedBvh26setInternalNodeEscapeIndexEii.exit

_ZN14btQuantizedBvh26setInternalNodeEscapeIndexEii.exit: ; preds = %bb.n, %bb.m, %_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN14btQuantizedBvh21setQuantizationValuesERK9btVector3S2_f(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(244) initializes((8, 56), (64, 65)) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, float noundef %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = load <2 x float>, ptr %1, align 4, !tbaa !49
  %i.b = insertelement <2 x float> poison, float %3, i64 0
  %i.c = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.d = fsub <2 x float> %i.a, %i.c              ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %i.e, align 4, !tbaa !49
  %i.g = fsub float %i.f, %3                      ; 5 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.g, i64 0
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store <2 x float> %i.d, ptr %i.h, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !50
  %4 = load float, ptr %2, align 4, !tbaa !49
  %5 = fadd float %3, %4                          ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 4
  %6 = load <2 x float>, ptr %i.i, align 4, !tbaa !49
  %7 = fadd <2 x float> %i.c, %6                  ; 6 uses
  %.sroa.3.12.vec.insert.i21 = insertelement <2 x float> poison, float %5, i64 0
  %8 = shufflevector <2 x float> %.sroa.3.12.vec.insert.i21, <2 x float> %7, <2 x i32> <i32 0, i32 2>
  %9 = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %7, <2 x i32> <i32 3, i32 1>
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store <2 x float> %8, ptr %i.j, align 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store <2 x float> %9, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !50
  %i.k = extractelement <2 x float> %i.d, i64 0   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12
  %10 = extractelement <2 x float> %i.d, i64 1    ; 2 uses
  %11 = extractelement <2 x float> %7, i64 1      ; 3 uses
  %i.n = fsub float %11, %i.g
  %12 = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %13 = insertelement <2 x float> %12, float %5, i64 0
  %i.o = fsub <2 x float> %13, %i.d
  %i.p = fdiv <2 x float> splat (float 6.553300e+04), %i.o ; 4 uses
  %i.q = fdiv float 6.553300e+04, %i.n            ; 2 uses
  %.sroa.3.12.vec.insert.i31 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.q, i64 0
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store <2 x float> %i.p, ptr %i.r, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i31, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !50
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i8 1, ptr %i.s, align 8, !tbaa !33
  %foldExtExtBinop = fsub <2 x float> %i.d, %i.d
  %i.t = extractelement <2 x float> %i.p, i64 0
  %foldExtExtBinop143 = fmul <2 x float> %foldExtExtBinop, %i.p
  %i.u = extractelement <2 x float> %foldExtExtBinop143, i64 0
  %i.v = fptoui float %i.u to i16
  %i.w = and i16 %i.v, -2
  %i.x = uitofp i16 %i.w to float
  %i.y = fdiv float %i.x, %i.t
  %i.z = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.aa = insertelement <2 x float> %i.z, float %i.g, i64 1 ; 2 uses
  %i.ab = fsub <2 x float> %i.aa, %i.aa
  %i.ac = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ad = insertelement <2 x float> %i.ac, float %i.q, i64 1 ; 2 uses
  %i.ae = fmul <2 x float> %i.ab, %i.ad
  %i.af = fptoui <2 x float> %i.ae to <2 x i16>
  %i.ag = and <2 x i16> %i.af, splat (i16 -2)
  %i.ah = uitofp <2 x i16> %i.ag to <2 x float>
  %i.ai = fdiv <2 x float> %i.ah, %i.ad           ; 2 uses
  %14 = fadd float %i.k, %i.y
  %15 = extractelement <2 x float> %i.ai, i64 0
  %16 = fadd float %10, %15
  %i.aj = extractelement <2 x float> %i.ai, i64 1
  %17 = fadd float %i.aj, %i.g
  %i.ak = fsub float %14, %3                      ; 2 uses
  %18 = fsub float %16, %3                        ; 2 uses
  %i.al = fsub float %17, %3                      ; 2 uses
  %i.am = fcmp olt float %i.ak, %i.k
  br i1 %i.am, label %bb.b, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.b:                                             ; preds = %bb.a
  store float %i.ak, ptr %i.h, align 8, !tbaa !49
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.b, %bb.a
  %i.an = fcmp olt float %18, %10
  br i1 %i.an, label %bb.c, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.c:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %18, ptr %i.m, align 4, !tbaa !49
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.c, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ao = fcmp olt float %i.al, %i.g
  br i1 %i.ao, label %bb.d, label %_ZN9btVector36setMinERKS_.exit

bb.d:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  store float %i.al, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !49
  br label %_ZN9btVector36setMinERKS_.exit

_ZN9btVector36setMinERKS_.exit:                   ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i, %bb.d
  %i.ap = load <2 x float>, ptr %i.h, align 8, !tbaa !49 ; 4 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0 ; 2 uses
  %19 = fsub float %5, %i.aq                      ; 2 uses
  %i.ar = load float, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !49 ; 3 uses
  %i.as = fdiv float 6.553300e+04, %19            ; 2 uses
  %i.at = fmul float %19, %i.as
  %20 = fadd float %i.at, 1.000000e+00
  %21 = fptoui float %20 to i16
  %22 = or i16 %21, 1
  %23 = uitofp i16 %22 to float
  %24 = fdiv float %23, %i.as
  %25 = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x float> %25, float %i.ar, i64 1
  %27 = fsub <2 x float> %7, %26                  ; 2 uses
  %28 = fdiv <2 x float> splat (float 6.553300e+04), %27 ; 2 uses
  %29 = fmul <2 x float> %27, %28
  %i.au = fadd <2 x float> %29, splat (float 1.000000e+00)
  %i.av = fptoui <2 x float> %i.au to <2 x i16>
  %i.aw = or <2 x i16> %i.av, splat (i16 1)
  %i.ax = uitofp <2 x i16> %i.aw to <2 x float>
  %i.ay = fdiv <2 x float> %i.ax, %28             ; 2 uses
  %30 = fadd float %i.aq, %24
  %shift = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.az = fadd <2 x float> %shift, %i.ay
  %31 = extractelement <2 x float> %i.az, i64 0
  %i.ba = extractelement <2 x float> %i.ay, i64 1
  %32 = fadd float %i.ar, %i.ba
  %i.bb = fadd float %3, %30                      ; 3 uses
  %33 = fadd float %3, %31                        ; 3 uses
  %i.bc = fadd float %3, %32                      ; 3 uses
  %i.bd = fcmp olt float %5, %i.bb
  br i1 %i.bd, label %bb.e, label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

bb.e:                                             ; preds = %_ZN9btVector36setMinERKS_.exit
  store float %i.bb, ptr %i.j, align 8, !tbaa !49
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit.i

_Z8btSetMaxIfEvRT_RKS0_.exit.i:                   ; preds = %bb.e, %_ZN9btVector36setMinERKS_.exit
  %i.be = phi float [ %i.bb, %bb.e ], [ %5, %_ZN9btVector36setMinERKS_.exit ]
  %34 = extractelement <2 x float> %7, i64 0      ; 2 uses
  %i.bf = fcmp olt float %34, %33
  br i1 %i.bf, label %bb.f, label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

bb.f:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  store float %33, ptr %i.l, align 4, !tbaa !49
  br label %_Z8btSetMaxIfEvRT_RKS0_.exit5.i

_Z8btSetMaxIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.f, %_Z8btSetMaxIfEvRT_RKS0_.exit.i
  %i.bg = phi float [ %33, %bb.f ], [ %34, %_Z8btSetMaxIfEvRT_RKS0_.exit.i ]
  %i.bh = fcmp olt float %11, %i.bc
  br i1 %i.bh, label %bb.g, label %_ZN9btVector36setMaxERKS_.exit

bb.g:                                             ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i
  store float %i.bc, ptr %.sroa.414.0..sroa_idx, align 8, !tbaa !49
  br label %_ZN9btVector36setMaxERKS_.exit

_ZN9btVector36setMaxERKS_.exit:                   ; preds = %_Z8btSetMaxIfEvRT_RKS0_.exit5.i, %bb.g
  %i.bi = phi float [ %i.bc, %bb.g ], [ %11, %_Z8btSetMaxIfEvRT_RKS0_.exit5.i ]
  %i.bj = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bg, i64 1
  %i.bl = fsub <2 x float> %i.bk, %i.ap
  %i.bm = fsub float %i.bi, %i.ar
  %i.bn = fdiv <2 x float> splat (float 6.553300e+04), %i.bl
  %i.bo = fdiv float 6.553300e+04, %i.bm
  %.sroa.3.12.vec.insert.i67 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bo, i64 0
  store <2 x float> %i.bn, ptr %i.r, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i67, ptr %.sroa.412.0..sroa_idx, align 8, !tbaa !50
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14btQuantizedBvhD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(244) dereferenceable(244) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV14btQuantizedBvh, i64 16), ptr %0, align 8, !tbaa !17
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !44   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.d = load i8, ptr %i.c, align 8, !range !54
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #20
  unreachable

_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoED2Ev.exit: ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i1 = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = load i8, ptr %i.j, align 8, !range !54
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i2 = select i1 %.not.i.i.i1, i1 %i.l, i1 false
  br i1 %or.cond.i.i2, label %bb.d, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit

bb.d:                                             ; preds = %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayI16btBvhSubtreeInfoED2Ev.exit, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !39   ; 2 uses
  %.not.i.i.i3 = icmp ne ptr %i.p, null
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.r = load i8, ptr %i.q, align 8, !range !54
  %i.s = trunc nuw i8 %i.r to i1
  %or.cond.i.i4 = select i1 %.not.i.i.i3, i1 %i.s, i1 false
  br i1 %or.cond.i.i4, label %bb.f, label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit5

bb.f:                                             ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.p)
          to label %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit5 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  tail call void @__clang_call_terminate(ptr %i.u) #20
  unreachable

_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit5: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit, %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !35   ; 2 uses
  %.not.i.i.i6 = icmp ne ptr %i.w, null
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.y = load i8, ptr %i.x, align 8, !range !54
  %i.z = trunc nuw i8 %i.y to i1
  %or.cond.i.i7 = select i1 %.not.i.i.i6, i1 %i.z, i1 false
  br i1 %or.cond.i.i7, label %bb.h, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit

bb.h:                                             ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit5
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.w)
          to label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #20
  unreachable

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit: ; preds = %_ZN20btAlignedObjectArrayI18btQuantizedBvhNodeED2Ev.exit5, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !35 ; 2 uses
  %.not.i.i.i8 = icmp ne ptr %i.ad, null
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.af = load i8, ptr %i.ae, align 8, !range !54
  %i.ag = trunc nuw i8 %i.af to i1
  %or.cond.i.i9 = select i1 %.not.i.i.i8, i1 %i.ag, i1 false
  br i1 %or.cond.i.i9, label %bb.j, label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit10

bb.j:                                             ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ad)
          to label %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit10 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          catch ptr null
  %i.ai = extractvalue { ptr, i32 } %i.ah, 0
  tail call void @__clang_call_terminate(ptr %i.ai) #20
  unreachable

_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit10: ; preds = %_ZN20btAlignedObjectArrayI18btOptimizedBvhNodeED2Ev.exit, %bb.j
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN14btQuantizedBvhD0Ev(ptr noundef nonnull align 8 dereferenceable(244) initializes((0, 8)) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN14btQuantizedBvhD2Ev(ptr noundef nonnull align 8 dead_on_return(244) dereferenceable(244) %0) #19
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN14btQuantizedBvhdlEPv.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #20
  unreachable

_ZN14btQuantizedBvhdlEPv.exit:                    ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN14btQuantizedBvh30assignInternalNodeFromLeafNodeEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load i8, ptr %i.a, align 8, !tbaa !33, !range !54, !noundef !55
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = sext i32 %2 to i64                       ; 2 uses
  %i.e = sext i32 %1 to i64                       ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !39
  %i.h = getelementptr inbounds [16 x i8], ptr %i.g, i64 %i.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds [16 x i8], ptr %i.j, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.h, i64 16, i1 false), !tbaa.struct !52
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !35
  %i.n = getelementptr inbounds [64 x i8], ptr %i.m, i64 %i.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !35
  %i.q = getelementptr inbounds [64 x i8], ptr %i.p, i64 %i.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.q, ptr noundef nonnull align 4 dereferenceable(64) %i.n, i64 64, i1 false), !tbaa.struct !66
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef range(i32 0, 3) i32 @_ZN14btQuantizedBvh17calcSplittingAxisEii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(244) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 align 2 {
bb.a:
  %i.a = sub nsw i32 %2, %1                       ; 2 uses
  %i.b = icmp slt i32 %1, %2
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load i8, ptr %i.c, align 8, !tbaa !33, !range !54, !noundef !55
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load <4 x float>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load <4 x float>, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
end_hunk_0
