inline.NumInlined: 2146
inline.NumDeleted: 989
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_523Renderer_RGB_TO_HSY_VID5applyEPKvPvl:bb.a
  %i.cb = load float, ptr %i.bx, align 4, !tbaa !9, !alias.scope !149
  %i.cc = load float, ptr %i.by, align 4, !tbaa !9, !alias.scope !149
  %i.cd = load float, ptr %i.bz, align 4, !tbaa !9, !alias.scope !149
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !9, !alias.scope !149
  %i.cf = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cg = insertelement <4 x float> %i.cf, float %i.cc, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.cd, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.ce, i64 3
  %i.cj = shufflevector <4 x float> %predphi13, <4 x float> %i.bi, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.ck = shufflevector <4 x float> %i.az, <4 x float> %i.ci, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cj, <8 x float> %i.ck, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep9, align 4, !tbaa !9, !alias.scope !152, !noalias !149
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cl = icmp eq i64 %index.next, %n.vec
  br i1 %i.cl, label %middle.block, label %vector.body, !llvm.loop !154

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i.preheader16

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.093.i.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.i.preheader ], [ %i.d, %middle.block ]
  %.05092.i.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.i.preheader ], [ %i.e, %middle.block ]
  %.05191.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader16, %bb.h
  %.093.i = phi ptr [ %i.dw, %bb.h ], [ %.093.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05092.i = phi ptr [ %i.dx, %bb.h ], [ %.05092.i.ph, %.lr.ph.i.preheader16 ] ; 5 uses
  %.05191.i = phi i64 [ %i.dy, %bb.h ], [ %.05191.i.ph, %.lr.ph.i.preheader16 ]
  %i.cm = load float, ptr %.093.i, align 4, !tbaa !9 ; 9 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.093.i, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !9 ; 9 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.093.i, i64 8
  %i.cq = load float, ptr %i.cp, align 4, !tbaa !9 ; 8 uses
  %i.cr = fcmp olt float %i.co, %i.cm
  %.sroa.speculated83.i = select i1 %i.cr, float %i.co, float %i.cm ; 2 uses
  %i.cs = fcmp olt float %i.cq, %.sroa.speculated83.i
  %.sroa.speculated72.i = select i1 %i.cs, float %i.cq, float %.sroa.speculated83.i ; 2 uses
  %i.ct = fcmp olt float %i.cm, %i.co
  %.sroa.speculated80.i = select i1 %i.ct, float %i.co, float %i.cm ; 2 uses
  %i.cu = fcmp olt float %.sroa.speculated80.i, %i.cq
  %.sroa.speculated69.i = select i1 %i.cu, float %i.cq, float %.sroa.speculated80.i ; 4 uses
  %i.cv = fmul float %i.co, 7.152000e-01
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cm, float 2.126000e-01, float %i.cv)
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.cq, float 7.220000e-02, float %i.cw) ; 4 uses
  %i.cy = fsub float %i.cm, %i.cx
  %i.cz = fsub float %i.co, %i.cx
  %i.da = fsub float %i.cq, %i.cx
  %i.db = tail call noundef float @llvm.fabs.f32(float %i.cy)
  %i.dc = tail call noundef float @llvm.fabs.f32(float %i.cz)
  %i.dd = fadd float %i.db, %i.dc
  %i.de = tail call noundef float @llvm.fabs.f32(float %i.da)
  %i.df = fadd float %i.de, %i.dd
  %i.dg = fmul float %i.df, 1.250000e+00
  %i.dh = fcmp une float %.sroa.speculated72.i, %.sroa.speculated69.i
  br i1 %i.dh, label %bb.b, label %bb.h

bb.b:                                             ; preds = %.lr.ph.i
  %i.di = fsub float %.sroa.speculated69.i, %.sroa.speculated72.i
  %i.dj = fcmp oeq float %i.cm, %.sroa.speculated69.i
  br i1 %i.dj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dk = fsub float %i.co, %i.cq
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.dl = fcmp oeq float %i.co, %.sroa.speculated69.i
  br i1 %i.dl, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dm = fsub float %i.cq, %i.cm
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dn = fsub float %i.cm, %i.co
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.c
  %.sink98.i = phi float [ %i.dm, %bb.e ], [ %i.dn, %bb.f ], [ %i.dk, %bb.c ]
  %.sink97.i = phi float [ 3.000000e+00, %bb.e ], [ 5.000000e+00, %bb.f ], [ 1.000000e+00, %bb.c ]
  %i.do = fdiv float %.sink98.i, %i.di
  %i.dp = fadd float %i.do, %.sink97.i
  %i.dq = fmul float %i.dp, f0x3E2AAAAB
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.1.i = phi float [ %i.dq, %bb.g ], [ 0.000000e+00, %.lr.ph.i ]
  store float %.1.i, ptr %.05092.i, align 4, !tbaa !9
  %i.dr = getelementptr inbounds nuw i8, ptr %.05092.i, i64 4
  store float %i.dg, ptr %i.dr, align 4, !tbaa !9
  %i.ds = getelementptr inbounds nuw i8, ptr %.05092.i, i64 8
  store float %i.cx, ptr %i.ds, align 4, !tbaa !9
  %i.dt = getelementptr inbounds nuw i8, ptr %.093.i, i64 12
  %i.du = load float, ptr %i.dt, align 4, !tbaa !9
  %i.dv = getelementptr inbounds nuw i8, ptr %.05092.i, i64 12
  store float %i.du, ptr %i.dv, align 4, !tbaa !9
  %i.dw = getelementptr inbounds nuw i8, ptr %.093.i, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %.05092.i, i64 16
  %i.dy = add nuw nsw i64 %.05191.i, 1            ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.dy, %3
  br i1 %exitcond.not.i, label %_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit, label %.lr.ph.i, !llvm.loop !155

_ZN16OpenColorIO_v2_513applyRGBToHSYEPKvPvlNS_19FixedFunctionOpData5StyleE.exit: ; preds = %bb.h, %middle.block, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_523Renderer_HSY_VID_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  tail call void @_ZN16OpenColorIO_v2_513applyHSYToRGBEPKvPvlNS_19FixedFunctionOpData5StyleE(ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef 41)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_xyYE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_xyY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !156
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !156
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !156
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !156
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !156
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !156
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !156
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !156
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !156
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !156
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !156
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !156
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3
  %i.ap = fadd <4 x float> %i.q, %i.ac
  %i.aq = fadd <4 x float> %i.ap, %i.ao           ; 2 uses
  %4 = fcmp oeq <4 x float> %i.aq, zeroinitializer
  %5 = fdiv <4 x float> splat (float 1.000000e+00), %i.aq
  %6 = select <4 x i1> %4, <4 x float> zeroinitializer, <4 x float> %5
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.as = getelementptr i8, ptr %i.g, i64 28
  %i.at = getelementptr i8, ptr %i.h, i64 44
  %i.au = getelementptr i8, ptr %i.i, i64 60
  %i.av = load float, ptr %i.ar, align 4, !tbaa !9, !alias.scope !156
  %i.aw = load float, ptr %i.as, align 4, !tbaa !9, !alias.scope !156
  %i.ax = load float, ptr %i.at, align 4, !tbaa !9, !alias.scope !156
  %i.ay = load float, ptr %i.au, align 4, !tbaa !9, !alias.scope !156
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = shufflevector <4 x float> %i.q, <4 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bf = fmul <8 x float> %i.bd, %i.be
  %i.bg = shufflevector <4 x float> %i.ac, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bf, <8 x float> %i.bg, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !159, !noalias !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !161

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.bz, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02629 = phi ptr [ %i.ca, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02728 = phi i64 [ %i.cb, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bi = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !9
  %i.bk = load <2 x float>, ptr %.030, align 4, !tbaa !9 ; 3 uses
  %i.bl = extractelement <2 x float> %i.bk, i64 0
  %i.bm = extractelement <2 x float> %i.bk, i64 1 ; 2 uses
  %i.bn = fadd float %i.bl, %i.bm
  %i.bo = fadd float %i.bn, %i.bj                 ; 2 uses
  %i.bp = fcmp oeq float %i.bo, 0.000000e+00
  %i.bq = fdiv float 1.000000e+00, %i.bo
  %i.br = select i1 %i.bp, float 0.000000e+00, float %i.bq
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bu = fmul <2 x float> %i.bk, %i.bt
  store <2 x float> %i.bu, ptr %.02629, align 4, !tbaa !9
  %i.bv = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.bm, ptr %i.bv, align 4, !tbaa !9
  %i.bw = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.bx, ptr %i.by, align 4, !tbaa !9
  %i.bz = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.cb = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cb, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !162
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_xyY_TO_XYZC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_xyY_TO_XYZE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_xyY_TO_XYZ5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !163
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !163
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !163
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !163
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !163
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !163
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !163
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !163
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !163
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !163
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !163
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !163
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 3 uses
  %i.ap = fcmp oeq <4 x float> %i.ac, zeroinitializer
  %i.aq = fdiv <4 x float> splat (float 1.000000e+00), %i.ac
  %i.ar = select <4 x i1> %i.ap, <4 x float> zeroinitializer, <4 x float> %i.aq ; 2 uses
  %i.as = fmul <4 x float> %i.q, %i.ao
  %i.at = fmul <4 x float> %i.as, %i.ar
  %i.au = fsub <4 x float> splat (float 1.000000e+00), %i.q
  %i.av = fsub <4 x float> %i.au, %i.ac
  %i.aw = fmul <4 x float> %i.ao, %i.av
  %i.ax = fmul <4 x float> %i.aw, %i.ar
  %i.ay = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.az = getelementptr i8, ptr %i.g, i64 28
  %i.ba = getelementptr i8, ptr %i.h, i64 44
  %i.bb = getelementptr i8, ptr %i.i, i64 60
  %i.bc = load float, ptr %i.ay, align 4, !tbaa !9, !alias.scope !163
  %i.bd = load float, ptr %i.az, align 4, !tbaa !9, !alias.scope !163
  %i.be = load float, ptr %i.ba, align 4, !tbaa !9, !alias.scope !163
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !9, !alias.scope !163
  %i.bg = insertelement <4 x float> poison, float %i.bc, i64 0
  %i.bh = insertelement <4 x float> %i.bg, float %i.bd, i64 1
  %i.bi = insertelement <4 x float> %i.bh, float %i.be, i64 2
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 3
  %i.bk = shufflevector <4 x float> %i.at, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bl = shufflevector <4 x float> %i.ax, <4 x float> %i.bj, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bk, <8 x float> %i.bl, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !166, !noalias !163
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !168

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.cg, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02629 = phi ptr [ %i.ch, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02728 = phi i64 [ %i.ci, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bn = load float, ptr %.030, align 4, !tbaa !9 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !9 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9 ; 3 uses
  %i.bs = fcmp oeq float %i.bp, 0.000000e+00
  %i.bt = fdiv float 1.000000e+00, %i.bp
  %i.bu = select i1 %i.bs, float 0.000000e+00, float %i.bt ; 2 uses
  %i.bv = fmul float %i.bn, %i.br
  %i.bw = fmul float %i.bv, %i.bu
  %i.bx = fsub float 1.000000e+00, %i.bn
  %i.by = fsub float %i.bx, %i.bp
  %i.bz = fmul float %i.br, %i.by
  %i.ca = fmul float %i.bz, %i.bu
  store float %i.bw, ptr %.02629, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.02629, i64 4
  store float %i.br, ptr %i.cb, align 4, !tbaa !9
  %i.cc = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.ca, ptr %i.cc, align 4, !tbaa !9
  %i.cd = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.ce = load float, ptr %i.cd, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.ce, ptr %i.cf, align 4, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.ch = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.ci = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !169
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_XYZ_TO_uvYC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_XYZ_TO_uvYE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_XYZ_TO_uvY5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !170
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !170
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !170
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !170
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !170
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !170
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !170
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !170
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !170
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !170
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !170
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !170
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3
  %i.ap = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float 1.500000e+01), <4 x float> %i.q)
  %i.aq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ao, <4 x float> splat (float 3.000000e+00), <4 x float> %i.ap) ; 2 uses
  %4 = fcmp oeq <4 x float> %i.aq, zeroinitializer
  %5 = fdiv <4 x float> splat (float 1.000000e+00), %i.aq
  %6 = select <4 x i1> %4, <4 x float> zeroinitializer, <4 x float> %5
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.as = getelementptr i8, ptr %i.g, i64 28
  %i.at = getelementptr i8, ptr %i.h, i64 44
  %i.au = getelementptr i8, ptr %i.i, i64 60
  %i.av = load float, ptr %i.ar, align 4, !tbaa !9, !alias.scope !170
  %i.aw = load float, ptr %i.as, align 4, !tbaa !9, !alias.scope !170
  %i.ax = load float, ptr %i.at, align 4, !tbaa !9, !alias.scope !170
  %i.ay = load float, ptr %i.au, align 4, !tbaa !9, !alias.scope !170
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3
  %i.bd = shufflevector <4 x float> %i.q, <4 x float> %i.ac, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.be = fmul <8 x float> %i.bd, <float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 4.000000e+00, float 9.000000e+00, float 9.000000e+00, float 9.000000e+00, float 9.000000e+00>
  %i.bf = shufflevector <4 x float> %6, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.bg = fmul <8 x float> %i.be, %i.bf
  %i.bh = shufflevector <4 x float> %i.ac, <4 x float> %i.bc, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bg, <8 x float> %i.bh, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !173, !noalias !170
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bi = icmp eq i64 %index.next, %n.vec
  br i1 %i.bi, label %middle.block, label %vector.body, !llvm.loop !175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.cb, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02629 = phi ptr [ %i.cc, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 4 uses
  %.02728 = phi i64 [ %i.cd, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bj = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bk = load float, ptr %i.bj, align 4, !tbaa !9
  %i.bl = load <2 x float>, ptr %.030, align 4, !tbaa !9 ; 3 uses
  %i.bm = extractelement <2 x float> %i.bl, i64 0
  %i.bn = extractelement <2 x float> %i.bl, i64 1 ; 2 uses
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bn, float 1.500000e+01, float %i.bm)
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bk, float 3.000000e+00, float %i.bo) ; 2 uses
  %i.bq = fcmp oeq float %i.bp, 0.000000e+00
  %i.br = fdiv float 1.000000e+00, %i.bp
  %i.bs = select i1 %i.bq, float 0.000000e+00, float %i.br
  %i.bt = fmul <2 x float> %i.bl, <float 4.000000e+00, float 9.000000e+00>
  %i.bu = insertelement <2 x float> poison, float %i.bs, i64 0
  %i.bv = shufflevector <2 x float> %i.bu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bw = fmul <2 x float> %i.bt, %i.bv
  store <2 x float> %i.bw, ptr %.02629, align 4, !tbaa !9
  %i.bx = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.bn, ptr %i.bx, align 4, !tbaa !9
  %i.by = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.bz = load float, ptr %i.by, align 4, !tbaa !9
  %i.ca = getelementptr inbounds nuw i8, ptr %.02629, i64 12
  store float %i.bz, ptr %i.ca, align 4, !tbaa !9
  %i.cb = getelementptr inbounds nuw i8, ptr %.030, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %.02629, i64 16
  %i.cd = add nuw nsw i64 %.02728, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.cd, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !176
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_uvY_TO_XYZC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_uvY_TO_XYZE, i64 16), ptr %0, align 8, !tbaa !7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_uvY_TO_XYZ5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader38, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep31 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep31
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader38, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %1, i64 %i.c
  %i.e = getelementptr i8, ptr %2, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %1, i64 %i.f  ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep32 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep33 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep34 = getelementptr i8, ptr %i.i, i64 48
  %next.gep35 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !9, !alias.scope !177
  %i.k = load float, ptr %next.gep32, align 4, !tbaa !9, !alias.scope !177
  %i.l = load float, ptr %next.gep33, align 4, !tbaa !9, !alias.scope !177
  %i.m = load float, ptr %next.gep34, align 4, !tbaa !9, !alias.scope !177
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !9, !alias.scope !177
  %i.w = load float, ptr %i.s, align 4, !tbaa !9, !alias.scope !177
  %i.x = load float, ptr %i.t, align 4, !tbaa !9, !alias.scope !177
  %i.y = load float, ptr %i.u, align 4, !tbaa !9, !alias.scope !177
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !9, !alias.scope !177
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !9, !alias.scope !177
  %i.aj = load float, ptr %i.af, align 4, !tbaa !9, !alias.scope !177
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !9, !alias.scope !177
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 3 uses
  %i.ap = fcmp oeq <4 x float> %i.ac, zeroinitializer
  %i.aq = fdiv <4 x float> splat (float 1.000000e+00), %i.ac
  %i.ar = select <4 x i1> %i.ap, <4 x float> zeroinitializer, <4 x float> %i.aq ; 2 uses
  %i.as = fmul <4 x float> %i.ao, splat (float 2.250000e+00)
  %i.at = fmul <4 x float> %i.q, %i.as
  %i.au = fmul <4 x float> %i.ar, %i.at
  %i.av = fmul <4 x float> %i.ao, splat (float 7.500000e-01)
  %i.aw = fsub <4 x float> splat (float 4.000000e+00), %i.q
  %i.ax = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ac, <4 x float> splat (float f0xC0D55555), <4 x float> %i.aw)
  %i.ay = fmul <4 x float> %i.ax, %i.av
  %i.az = fmul <4 x float> %i.ar, %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.bb = getelementptr i8, ptr %i.g, i64 28
  %i.bc = getelementptr i8, ptr %i.h, i64 44
  %i.bd = getelementptr i8, ptr %i.i, i64 60
  %i.be = load float, ptr %i.ba, align 4, !tbaa !9, !alias.scope !177
  %i.bf = load float, ptr %i.bb, align 4, !tbaa !9, !alias.scope !177
  %i.bg = load float, ptr %i.bc, align 4, !tbaa !9, !alias.scope !177
  %i.bh = load float, ptr %i.bd, align 4, !tbaa !9, !alias.scope !177
  %i.bi = insertelement <4 x float> poison, float %i.be, i64 0
  %i.bj = insertelement <4 x float> %i.bi, float %i.bf, i64 1
  %i.bk = insertelement <4 x float> %i.bj, float %i.bg, i64 2
  %i.bl = insertelement <4 x float> %i.bk, float %i.bh, i64 3
  %i.bm = shufflevector <4 x float> %i.au, <4 x float> %i.ao, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.bn = shufflevector <4 x float> %i.az, <4 x float> %i.bl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.bm, <8 x float> %i.bn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep35, align 4, !tbaa !9, !alias.scope !180, !noalias !177
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bo = icmp eq i64 %index.next, %n.vec
  br i1 %i.bo, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader38

.lr.ph.preheader38:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.030.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.02629.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  %.02728.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader38, %.lr.ph
  %.030 = phi ptr [ %i.ck, %.lr.ph ], [ %.030.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02629 = phi ptr [ %i.cl, %.lr.ph ], [ %.02629.ph, %.lr.ph.preheader38 ] ; 5 uses
  %.02728 = phi i64 [ %i.cm, %.lr.ph ], [ %.02728.ph, %.lr.ph.preheader38 ]
  %i.bp = load float, ptr %.030, align 4, !tbaa !9 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.030, i64 4
  %i.br = load float, ptr %i.bq, align 4, !tbaa !9 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.030, i64 8
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !9 ; 3 uses
  %i.bu = fcmp oeq float %i.br, 0.000000e+00
  %i.bv = fdiv float 1.000000e+00, %i.br
  %i.bw = select i1 %i.bu, float 0.000000e+00, float %i.bv ; 2 uses
  %i.bx = fmul float %i.bt, 2.250000e+00
  %i.by = fmul float %i.bp, %i.bx
  %i.bz = fmul float %i.bw, %i.by
  %i.ca = fmul float %i.bt, 7.500000e-01
  %i.cb = fsub float 4.000000e+00, %i.bp
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.br, float f0xC0D55555, float %i.cb)
  %i.cd = fmul float %i.cc, %i.ca
  %i.ce = fmul float %i.bw, %i.cd
  store float %i.bz, ptr %.02629, align 4, !tbaa !9
  %i.cf = getelementptr inbounds nuw i8, ptr %.02629, i64 4
  store float %i.bt, ptr %i.cf, align 4, !tbaa !9
  %i.cg = getelementptr inbounds nuw i8, ptr %.02629, i64 8
  store float %i.ce, ptr %i.cg, align 4, !tbaa !9
  %i.ch = getelementptr inbounds nuw i8, ptr %.030, i64 12
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !9
  %i.cj = getelementptr inbounds nuw i8, ptr %.02629, i64 12
end_hunk_0
