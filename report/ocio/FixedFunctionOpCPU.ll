Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/FixedFunctionOpCPU?download=true
inline.NumInlined: 2146
inline.NumDeleted: 988
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZNK16OpenColorIO_v2_531Renderer_ACES_GAMUT_COMPRESS_203invEPKvPvl:bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %.025, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %.02124, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  %i.s = add nuw nsw i64 %.02223, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.s, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !114
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, errnomem: readwrite, target_mem: none) uwtable
define hidden void @_ZN16OpenColorIO_v2_525Renderer_REC2100_SurroundC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_525Renderer_REC2100_SurroundE, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = load ptr, ptr %1, align 8, !tbaa !34     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load i32, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp eq i32 %i.c, 12                     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !40
  %i.g = load double, ptr %i.f, align 8, !tbaa !43
  %i.h = fptrunc double %i.g to float             ; 3 uses
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = tail call float @powf(float noundef f0x38D1B717, float noundef %i.h) #24
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi float [ %i.i, %bb.b ], [ f0x38D1B717, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.j, ptr %i.k, align 4, !tbaa !115
  %i.l = fdiv float 1.000000e+00, %i.h
  %i.m = select i1 %i.d, float %i.h, float %i.l
  %i.n = fadd float %i.m, -1.000000e+00
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !117
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @powf(float noundef, float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, errnomem: write) uwtable
define hidden void @_ZNK16OpenColorIO_v2_525Renderer_REC2100_Surround5applyEPKvPvl(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.028 = phi ptr [ %1, %.lr.ph ], [ %i.y, %bb.b ] ; 4 uses
  %.02427 = phi ptr [ %2, %.lr.ph ], [ %i.z, %bb.b ] ; 4 uses
  %.02526 = phi i64 [ 0, %.lr.ph ], [ %i.aa, %bb.b ]
  %i.d = getelementptr inbounds nuw i8, ptr %.028, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !10 ; 2 uses
  %i.f = load float, ptr %i.b, align 4, !tbaa !10 ; 2 uses
  %i.g = load float, ptr %i.c, align 8, !tbaa !117
  %i.h = load <2 x float>, ptr %.028, align 4, !tbaa !10 ; 3 uses
  %i.i = extractelement <2 x float> %i.h, i64 1
  %i.j = fmul float %i.i, f0x3F2D9168
  %i.k = extractelement <2 x float> %i.h, i64 0
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float 2.627000e-01, float %i.j)
  %i.m = tail call float @llvm.fmuladd.f32(float %i.e, float 5.930000e-02, float %i.l)
  %i.n = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.o = fcmp olt float %i.f, %i.n
  %.sroa.speculated = select i1 %i.o, float %i.n, float %i.f
  %i.p = tail call float @powf(float noundef %.sroa.speculated, float noundef %i.g) #24 ; 2 uses
  %i.q = insertelement <2 x float> poison, float %i.p, i64 0
  %i.r = shufflevector <2 x float> %i.q, <2 x float> poison, <2 x i32> zeroinitializer
  %i.s = fmul <2 x float> %i.h, %i.r
  store <2 x float> %i.s, ptr %.02427, align 4, !tbaa !10
  %i.t = fmul float %i.e, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %.02427, i64 8
  store float %i.t, ptr %i.u, align 4, !tbaa !10
  %i.v = getelementptr inbounds nuw i8, ptr %.028, i64 12
  %i.w = load float, ptr %i.v, align 4, !tbaa !10
  %i.x = getelementptr inbounds nuw i8, ptr %.02427, i64 12
  store float %i.w, ptr %i.x, align 4, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %.028, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %.02427, i64 16
  %i.aa = add nuw nsw i64 %.02526, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %3
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !118
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_RGB_TO_HSVC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_RGB_TO_HSVE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_RGB_TO_HSV5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader90, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep81 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep81
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader90, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, 9223372036854775804        ; 4 uses
  %i.c = shl i64 %n.vec, 4                        ; 2 uses
  %i.d = getelementptr i8, ptr %2, i64 %i.c
  %i.e = getelementptr i8, ptr %1, i64 %i.c
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.f = shl i64 %index, 4                        ; 5 uses
  %next.gep = getelementptr i8, ptr %2, i64 %i.f
  %next.gep82.a = getelementptr i8, ptr %1, i64 %i.f ; 4 uses
  %i.g = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep83 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep84 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep85 = getelementptr i8, ptr %i.i, i64 48
  %i.j = load float, ptr %next.gep82.a, align 4, !tbaa !10, !alias.scope !119
  %i.k = load float, ptr %next.gep83, align 4, !tbaa !10, !alias.scope !119
  %i.l = load float, ptr %next.gep84, align 4, !tbaa !10, !alias.scope !119
  %i.m = load float, ptr %next.gep85, align 4, !tbaa !10, !alias.scope !119
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3 ; 7 uses
  %i.r = getelementptr inbounds nuw i8, ptr %next.gep82.a, i64 4
  %i.s = getelementptr i8, ptr %i.g, i64 20
  %i.t = getelementptr i8, ptr %i.h, i64 36
  %i.u = getelementptr i8, ptr %i.i, i64 52
  %i.v = load float, ptr %i.r, align 4, !tbaa !10, !alias.scope !119
  %i.w = load float, ptr %i.s, align 4, !tbaa !10, !alias.scope !119
  %i.x = load float, ptr %i.t, align 4, !tbaa !10, !alias.scope !119
  %i.y = load float, ptr %i.u, align 4, !tbaa !10, !alias.scope !119
  %i.z = insertelement <4 x float> poison, float %i.v, i64 0
  %i.aa = insertelement <4 x float> %i.z, float %i.w, i64 1
  %i.ab = insertelement <4 x float> %i.aa, float %i.x, i64 2
  %i.ac = insertelement <4 x float> %i.ab, float %i.y, i64 3 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %next.gep82.a, i64 8
  %i.ae = getelementptr i8, ptr %i.g, i64 24
  %i.af = getelementptr i8, ptr %i.h, i64 40
  %i.ag = getelementptr i8, ptr %i.i, i64 56
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !10, !alias.scope !119
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !10, !alias.scope !119
  %i.aj = load float, ptr %i.af, align 4, !tbaa !10, !alias.scope !119
  %i.ak = load float, ptr %i.ag, align 4, !tbaa !10, !alias.scope !119
  %i.al = insertelement <4 x float> poison, float %i.ah, i64 0
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 1
  %i.an = insertelement <4 x float> %i.am, float %i.aj, i64 2
  %i.ao = insertelement <4 x float> %i.an, float %i.ak, i64 3 ; 6 uses
  %i.ap = fcmp olt <4 x float> %i.ac, %i.q
  %i.aq = select <4 x i1> %i.ap, <4 x float> %i.ac, <4 x float> %i.q ; 2 uses
  %i.ar = fcmp olt <4 x float> %i.ao, %i.aq
  %i.as = select <4 x i1> %i.ar, <4 x float> %i.ao, <4 x float> %i.aq ; 5 uses
  %i.at = fcmp olt <4 x float> %i.q, %i.ac
  %i.au = select <4 x i1> %i.at, <4 x float> %i.ac, <4 x float> %i.q ; 2 uses
  %i.av = fcmp olt <4 x float> %i.au, %i.ao
  %i.aw = select <4 x i1> %i.av, <4 x float> %i.ao, <4 x float> %i.au ; 9 uses
  %i.ax = fcmp une <4 x float> %i.as, %i.aw       ; 4 uses
  %i.ay = fsub <4 x float> %i.aw, %i.as           ; 5 uses
  %i.az = fcmp une <4 x float> %i.aw, zeroinitializer
  %i.ba = fdiv <4 x float> %i.ay, %i.aw
  %i.bb = fcmp oeq <4 x float> %i.q, %i.aw        ; 2 uses
  %i.bc = xor <4 x i1> %i.bb, splat (i1 true)
  %i.bd = select <4 x i1> %i.ax, <4 x i1> %i.bc, <4 x i1> zeroinitializer
  %i.be = fcmp une <4 x float> %i.ac, %i.aw
  %i.bf = select <4 x i1> %i.bd, <4 x i1> %i.be, <4 x i1> zeroinitializer
  %i.bg = fsub <4 x float> %i.q, %i.ac
  %i.bh = fdiv <4 x float> %i.bg, %i.ay
  %i.bi = fadd <4 x float> %i.bh, splat (float 4.000000e+00)
  %i.bj = fsub <4 x float> %i.ao, %i.q
  %i.bk = fdiv <4 x float> %i.bj, %i.ay
  %i.bl = fadd <4 x float> %i.bk, splat (float 2.000000e+00)
  %i.bm = select <4 x i1> %i.ax, <4 x i1> %i.bb, <4 x i1> zeroinitializer
  %i.bn = fsub <4 x float> %i.ac, %i.ao
  %i.bo = fdiv <4 x float> %i.bn, %i.ay
  %predphi = select <4 x i1> %i.bf, <4 x float> %i.bi, <4 x float> %i.bl
  %predphi86 = select <4 x i1> %i.bm, <4 x float> %i.bo, <4 x float> %predphi ; 3 uses
  %i.bp = fcmp olt <4 x float> %predphi86, zeroinitializer
  %i.bq = fadd nnan <4 x float> %predphi86, splat (float 6.000000e+00)
  %i.br = select <4 x i1> %i.bp, <4 x float> %i.bq, <4 x float> %predphi86
  %i.bs = fmul <4 x float> %i.br, splat (float f0x3E2AAAAB)
  %i.bt = and <4 x i1> %i.ax, %i.az
  %predphi87 = select <4 x i1> %i.ax, <4 x float> %i.bs, <4 x float> zeroinitializer
  %i.bu = fcmp olt <4 x float> %i.as, zeroinitializer
  %i.bv = fadd <4 x float> %i.aw, %i.as
  %i.bw = select <4 x i1> %i.bu, <4 x float> %i.bv, <4 x float> %i.aw
  %i.bx = fneg <4 x float> %i.as                  ; 2 uses
  %i.by = fcmp olt <4 x float> %i.aw, %i.bx
  %i.bz = fdiv <4 x float> %i.ay, %i.bx
  %i.ca = getelementptr inbounds nuw i8, ptr %next.gep82.a, i64 12
  %i.cb = getelementptr i8, ptr %i.g, i64 28
  %i.cc = getelementptr i8, ptr %i.h, i64 44
  %i.cd = getelementptr i8, ptr %i.i, i64 60
  %i.ce = load float, ptr %i.ca, align 4, !tbaa !10, !alias.scope !119
  %i.cf = load float, ptr %i.cb, align 4, !tbaa !10, !alias.scope !119
  %i.cg = load float, ptr %i.cc, align 4, !tbaa !10, !alias.scope !119
  %i.ch = load float, ptr %i.cd, align 4, !tbaa !10, !alias.scope !119
  %i.ci = insertelement <4 x float> poison, float %i.ce, i64 0
  %i.cj = insertelement <4 x float> %i.ci, float %i.cf, i64 1
  %i.ck = insertelement <4 x float> %i.cj, float %i.cg, i64 2
  %i.cl = insertelement <4 x float> %i.ck, float %i.ch, i64 3
  %4 = select <4 x i1> %i.bt, <4 x float> %i.ba, <4 x float> zeroinitializer
  %5 = select <4 x i1> %i.by, <4 x float> %i.bz, <4 x float> %4
  %i.cm = shufflevector <4 x float> %predphi87, <4 x float> %5, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cn = shufflevector <4 x float> %i.bw, <4 x float> %i.cl, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.cm, <8 x float> %i.cn, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep, align 4, !tbaa !10, !alias.scope !122, !noalias !119
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !124

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader90

.lr.ph.preheader90:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.04576.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04675.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04774.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph._crit_edge, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader90, %.lr.ph._crit_edge
  %.04576 = phi i64 [ %i.eb, %.lr.ph._crit_edge ], [ %.04576.ph, %.lr.ph.preheader90 ]
  %.04675 = phi ptr [ %i.ea, %.lr.ph._crit_edge ], [ %.04675.ph, %.lr.ph.preheader90 ] ; 5 uses
  %.04774 = phi ptr [ %i.dz, %.lr.ph._crit_edge ], [ %.04774.ph, %.lr.ph.preheader90 ] ; 5 uses
  %i.cp = load float, ptr %.04774, align 4, !tbaa !10 ; 7 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.04774, i64 4
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !10 ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.04774, i64 8
  %i.ct = load float, ptr %i.cs, align 4, !tbaa !10 ; 6 uses
  %i.cu = fcmp olt float %i.cr, %i.cp
  %.sroa.speculated69 = select i1 %i.cu, float %i.cr, float %i.cp ; 2 uses
  %i.cv = fcmp olt float %i.ct, %.sroa.speculated69
  %.sroa.speculated62 = select i1 %i.cv, float %i.ct, float %.sroa.speculated69 ; 5 uses
  %i.cw = fcmp olt float %i.cp, %i.cr
  %.sroa.speculated66 = select i1 %i.cw, float %i.cr, float %i.cp ; 2 uses
  %i.cx = fcmp olt float %.sroa.speculated66, %i.ct
  %.sroa.speculated = select i1 %i.cx, float %i.ct, float %.sroa.speculated66 ; 9 uses
  %i.cy = fcmp une float %.sroa.speculated62, %.sroa.speculated
  %i.cz = fsub float %.sroa.speculated, %.sroa.speculated62 ; 5 uses
  br i1 %i.cy, label %bb.b, label %.lr.ph._crit_edge

bb.b:                                             ; preds = %.lr.ph
  %i.da = fcmp une float %.sroa.speculated, 0.000000e+00
  %i.db = fdiv float %i.cz, %.sroa.speculated
  %6 = bitcast float %i.db to i32
  %.sroa.0.0 = select i1 %i.da, i32 %6, i32 0
  %i.dc = fcmp oeq float %i.cp, %.sroa.speculated
  br i1 %i.dc, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.dd = fsub float %i.cr, %i.ct
  %i.de = fdiv float %i.dd, %i.cz
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.df = fcmp oeq float %i.cr, %.sroa.speculated
  br i1 %i.df, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.dg = fsub float %i.ct, %i.cp
  %i.dh = fdiv float %i.dg, %i.cz
  %i.di = fadd float %i.dh, 2.000000e+00
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.dj = fsub float %i.cp, %i.cr
  %i.dk = fdiv float %i.dj, %i.cz
  %i.dl = fadd float %i.dk, 4.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c
  %.0 = phi float [ %i.de, %bb.c ], [ %i.di, %bb.e ], [ %i.dl, %bb.f ] ; 3 uses
  %i.dm = fcmp olt float %.0, 0.000000e+00
  %i.dn = fadd nnan float %.0, 6.000000e+00
  %.1 = select i1 %i.dm, float %i.dn, float %.0
  %i.do = fmul float %.1, f0x3E2AAAAB
  br label %.lr.ph._crit_edge

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.g
  %.sroa.0.1 = phi i32 [ %.sroa.0.0, %bb.g ], [ 0, %.lr.ph ]
  %.2 = phi float [ %i.do, %bb.g ], [ 0.000000e+00, %.lr.ph ]
  %i.dp = fcmp olt float %.sroa.speculated62, 0.000000e+00
  %i.dq = fadd float %.sroa.speculated, %.sroa.speculated62
  %.044 = select i1 %i.dp, float %i.dq, float %.sroa.speculated
  %i.dr = fneg float %.sroa.speculated62          ; 2 uses
  %i.ds = fcmp olt float %.sroa.speculated, %i.dr
  %i.dt = fdiv float %i.cz, %i.dr
  %7 = bitcast float %i.dt to i32
  %.sroa.0.2 = select i1 %i.ds, i32 %7, i32 %.sroa.0.1
  store float %.2, ptr %.04675, align 4, !tbaa !10
  %i.du = getelementptr inbounds nuw i8, ptr %.04675, i64 4
  store i32 %.sroa.0.2, ptr %i.du, align 4, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %.04675, i64 8
  store float %.044, ptr %i.dv, align 4, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %.04774, i64 12
  %i.dx = load float, ptr %i.dw, align 4, !tbaa !10
  %i.dy = getelementptr inbounds nuw i8, ptr %.04675, i64 12
  store float %i.dx, ptr %i.dy, align 4, !tbaa !10
  %i.dz = getelementptr inbounds nuw i8, ptr %.04774, i64 16
  %i.ea = getelementptr inbounds nuw i8, ptr %.04675, i64 16
  %i.eb = add nuw nsw i64 %.04576, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.eb, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !127
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define hidden void @_ZN16OpenColorIO_v2_519Renderer_HSV_TO_RGBC2ERSt10shared_ptrIKNS_19FixedFunctionOpDataEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(8) initializes((0, 8)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN16OpenColorIO_v2_519Renderer_HSV_TO_RGBE, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define hidden void @_ZNK16OpenColorIO_v2_519Renderer_HSV_TO_RGB5applyEPKvPvl(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i64 noundef %3) unnamed_addr #10 align 2 {
bb.a:
  %i.a = icmp sgt i64 %3, 0
  br i1 %i.a, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.a
  %min.iters.check = icmp ult i64 %3, 4
  br i1 %min.iters.check, label %.lr.ph.preheader66, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.preheader
  %i.b = shl i64 %3, 4                            ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.b
  %scevgep59 = getelementptr i8, ptr %1, i64 %i.b
  %bound0 = icmp ult ptr %2, %scevgep59
  %bound1 = icmp ult ptr %1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.preheader66, label %vector.ph

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
  %next.gep60 = getelementptr i8, ptr %i.g, i64 16
  %i.h = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep61 = getelementptr i8, ptr %i.h, i64 32
  %i.i = getelementptr i8, ptr %1, i64 %i.f       ; 4 uses
  %next.gep62 = getelementptr i8, ptr %i.i, i64 48
  %next.gep63 = getelementptr i8, ptr %2, i64 %i.f
  %i.j = load float, ptr %next.gep, align 4, !tbaa !10, !alias.scope !128 ; 2 uses
  %i.k = load float, ptr %next.gep60, align 4, !tbaa !10, !alias.scope !128 ; 2 uses
  %i.l = load float, ptr %next.gep61, align 4, !tbaa !10, !alias.scope !128 ; 2 uses
  %i.m = load float, ptr %next.gep62, align 4, !tbaa !10, !alias.scope !128 ; 2 uses
  %i.n = insertelement <4 x float> poison, float %i.j, i64 0
  %i.o = insertelement <4 x float> %i.n, float %i.k, i64 1
  %i.p = insertelement <4 x float> %i.o, float %i.l, i64 2
  %i.q = insertelement <4 x float> %i.p, float %i.m, i64 3
  %i.r = tail call noundef float @llvm.floor.f32(float %i.j)
  %i.s = tail call noundef float @llvm.floor.f32(float %i.k)
  %i.t = tail call noundef float @llvm.floor.f32(float %i.l)
  %i.u = tail call noundef float @llvm.floor.f32(float %i.m)
  %i.v = insertelement <4 x float> poison, float %i.r, i64 0
  %i.w = insertelement <4 x float> %i.v, float %i.s, i64 1
  %i.x = insertelement <4 x float> %i.w, float %i.t, i64 2
  %i.y = insertelement <4 x float> %i.x, float %i.u, i64 3
  %i.z = fsub <4 x float> %i.q, %i.y
  %i.aa = fmul <4 x float> %i.z, splat (float 6.000000e+00) ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %next.gep, i64 4
  %i.ac = getelementptr i8, ptr %i.g, i64 20
  %i.ad = getelementptr i8, ptr %i.h, i64 36
  %i.ae = getelementptr i8, ptr %i.i, i64 52
  %i.af = load float, ptr %i.ab, align 4, !tbaa !10, !alias.scope !128
  %i.ag = load float, ptr %i.ac, align 4, !tbaa !10, !alias.scope !128
  %i.ah = load float, ptr %i.ad, align 4, !tbaa !10, !alias.scope !128
  %i.ai = load float, ptr %i.ae, align 4, !tbaa !10, !alias.scope !128
  %i.aj = insertelement <4 x float> poison, float %i.af, i64 0
  %i.ak = insertelement <4 x float> %i.aj, float %i.ag, i64 1
  %i.al = insertelement <4 x float> %i.ak, float %i.ah, i64 2
  %i.am = insertelement <4 x float> %i.al, float %i.ai, i64 3 ; 2 uses
  %i.an = fcmp ogt <4 x float> %i.am, zeroinitializer
  %i.ao = select <4 x i1> %i.an, <4 x float> %i.am, <4 x float> zeroinitializer ; 2 uses
  %i.ap = fcmp ogt <4 x float> %i.ao, splat (float 1.999000e+00)
  %i.aq = select <4 x i1> %i.ap, <4 x float> splat (float 1.999000e+00), <4 x float> %i.ao ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %next.gep, i64 8
  %i.as = getelementptr i8, ptr %i.g, i64 24
  %i.at = getelementptr i8, ptr %i.h, i64 40
  %i.au = getelementptr i8, ptr %i.i, i64 56
  %i.av = load float, ptr %i.ar, align 4, !tbaa !10, !alias.scope !128
  %i.aw = load float, ptr %i.as, align 4, !tbaa !10, !alias.scope !128
  %i.ax = load float, ptr %i.at, align 4, !tbaa !10, !alias.scope !128
  %i.ay = load float, ptr %i.au, align 4, !tbaa !10, !alias.scope !128
  %i.az = insertelement <4 x float> poison, float %i.av, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.aw, i64 1
  %i.bb = insertelement <4 x float> %i.ba, float %i.ax, i64 2
  %i.bc = insertelement <4 x float> %i.bb, float %i.ay, i64 3 ; 6 uses
  %i.bd = fadd <4 x float> %i.aa, splat (float -3.000000e+00)
  %i.be = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bd)
  %i.bf = fadd <4 x float> %i.be, splat (float -1.000000e+00) ; 2 uses
  %i.bg = fcmp ogt <4 x float> %i.bf, zeroinitializer
  %i.bh = select <4 x i1> %i.bg, <4 x float> %i.bf, <4 x float> zeroinitializer ; 2 uses
  %i.bi = fadd <4 x float> %i.aa, splat (float -2.000000e+00)
  %i.bj = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bi)
  %i.bk = fsub <4 x float> splat (float 2.000000e+00), %i.bj ; 2 uses
  %i.bl = fcmp ogt <4 x float> %i.bk, zeroinitializer
  %i.bm = select <4 x i1> %i.bl, <4 x float> %i.bk, <4 x float> zeroinitializer ; 2 uses
  %i.bn = fadd <4 x float> %i.aa, splat (float -4.000000e+00)
  %i.bo = tail call <4 x float> @llvm.fabs.v4f32(<4 x float> %i.bn)
  %i.bp = fsub <4 x float> splat (float 2.000000e+00), %i.bo ; 2 uses
  %i.bq = fcmp ogt <4 x float> %i.bp, zeroinitializer
  %i.br = select <4 x i1> %i.bq, <4 x float> %i.bp, <4 x float> zeroinitializer ; 2 uses
  %i.bs = fcmp ogt <4 x float> %i.br, splat (float 1.000000e+00)
  %i.bt = select <4 x i1> %i.bs, <4 x float> splat (float 1.000000e+00), <4 x float> %i.br
  %i.bu = fsub <4 x float> splat (float 1.000000e+00), %i.aq
  %i.bv = fmul <4 x float> %i.bc, %i.bu           ; 2 uses
  %i.bw = fcmp ogt <4 x float> %i.aq, splat (float 1.000000e+00) ; 2 uses
  %i.bx = fsub <4 x float> splat (float 2.000000e+00), %i.aq ; 2 uses
  %i.by = fdiv <4 x float> %i.bv, %i.bx           ; 2 uses
  %i.bz = fsub <4 x float> %i.bc, %i.by
  %i.ca = select <4 x i1> %i.bw, <4 x float> %i.bz, <4 x float> %i.bc
  %i.cb = select <4 x i1> %i.bw, <4 x float> %i.by, <4 x float> %i.bv
  %i.cc = fcmp olt <4 x float> %i.bc, zeroinitializer ; 2 uses
  %i.cd = fdiv <4 x float> %i.bc, %i.bx           ; 2 uses
  %i.ce = fsub <4 x float> %i.bc, %i.cd
  %i.cf = select <4 x i1> %i.cc, <4 x float> %i.ce, <4 x float> %i.ca
  %i.cg = select <4 x i1> %i.cc, <4 x float> %i.cd, <4 x float> %i.cb ; 3 uses
  %i.ch = fsub <4 x float> %i.cf, %i.cg           ; 2 uses
  %i.ci = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bt, <4 x float> %i.ch, <4 x float> %i.cg)
  %i.cj = getelementptr inbounds nuw i8, ptr %next.gep, i64 12
  %i.ck = getelementptr i8, ptr %i.g, i64 28
  %i.cl = getelementptr i8, ptr %i.h, i64 44
  %i.cm = getelementptr i8, ptr %i.i, i64 60
  %i.cn = load float, ptr %i.cj, align 4, !tbaa !10, !alias.scope !128
  %i.co = load float, ptr %i.ck, align 4, !tbaa !10, !alias.scope !128
  %i.cp = load float, ptr %i.cl, align 4, !tbaa !10, !alias.scope !128
  %i.cq = load float, ptr %i.cm, align 4, !tbaa !10, !alias.scope !128
  %i.cr = insertelement <4 x float> poison, float %i.cn, i64 0
  %i.cs = insertelement <4 x float> %i.cr, float %i.co, i64 1
  %i.ct = insertelement <4 x float> %i.cs, float %i.cp, i64 2
  %i.cu = insertelement <4 x float> %i.ct, float %i.cq, i64 3
  %i.cv = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cw = fcmp ogt <8 x float> %i.cv, splat (float 1.000000e+00)
  %i.cx = shufflevector <4 x float> %i.bh, <4 x float> %i.bm, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %i.cy = select <8 x i1> %i.cw, <8 x float> splat (float 1.000000e+00), <8 x float> %i.cx
  %i.cz = shufflevector <4 x float> %i.ch, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.da = shufflevector <4 x float> %i.cg, <4 x float> poison, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 0, i32 1, i32 2, i32 3>
  %i.db = tail call <8 x float> @llvm.fmuladd.v8f32(<8 x float> %i.cy, <8 x float> %i.cz, <8 x float> %i.da)
  %i.dc = shufflevector <4 x float> %i.ci, <4 x float> %i.cu, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %interleaved.vec = shufflevector <8 x float> %i.db, <8 x float> %i.dc, <16 x i32> <i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 9, i32 13, i32 2, i32 6, i32 10, i32 14, i32 3, i32 7, i32 11, i32 15>
  store <16 x float> %interleaved.vec, ptr %next.gep63, align 4, !tbaa !10, !alias.scope !131, !noalias !128
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dd = icmp eq i64 %index.next, %n.vec
  br i1 %i.dd, label %middle.block, label %vector.body, !llvm.loop !133

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader66

.lr.ph.preheader66:                               ; preds = %vector.memcheck, %.lr.ph.preheader, %middle.block
  %.058.ph = phi ptr [ %1, %vector.memcheck ], [ %1, %.lr.ph.preheader ], [ %i.d, %middle.block ]
  %.04657.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.04756.ph = phi ptr [ %2, %vector.memcheck ], [ %2, %.lr.ph.preheader ], [ %i.e, %middle.block ]
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader66, %.lr.ph
  %.058 = phi ptr [ %i.ey, %.lr.ph ], [ %.058.ph, %.lr.ph.preheader66 ] ; 5 uses
  %.04657 = phi i64 [ %i.fa, %.lr.ph ], [ %.04657.ph, %.lr.ph.preheader66 ]
  %.04756 = phi ptr [ %i.ez, %.lr.ph ], [ %.04756.ph, %.lr.ph.preheader66 ] ; 4 uses
  %i.de = load float, ptr %.058, align 4, !tbaa !10 ; 2 uses
  %i.df = tail call noundef float @llvm.floor.f32(float %i.de)
  %i.dg = fsub float %i.de, %i.df
  %i.dh = fmul float %i.dg, 6.000000e+00          ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.058, i64 4
  %i.dj = load float, ptr %i.di, align 4, !tbaa !10 ; 2 uses
  %i.dk = fcmp ogt float %i.dj, 0.000000e+00
  %.sroa.speculated2.i = select i1 %i.dk, float %i.dj, float 0.000000e+00 ; 2 uses
  %i.dl = fcmp ogt float %.sroa.speculated2.i, 1.999000e+00
  %.sroa.speculated.i = select i1 %i.dl, float 1.999000e+00, float %.sroa.speculated2.i ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %.058, i64 8
  %i.dn = load float, ptr %i.dm, align 4, !tbaa !10 ; 6 uses
  %i.do = fadd float %i.dh, -3.000000e+00
  %i.dp = tail call noundef float @llvm.fabs.f32(float %i.do)
  %i.dq = fadd float %i.dh, -2.000000e+00
  %i.dr = tail call noundef float @llvm.fabs.f32(float %i.dq)
  %i.ds = fadd float %i.dh, -4.000000e+00
  %i.dt = tail call noundef float @llvm.fabs.f32(float %i.ds)
  %i.du = fsub float 2.000000e+00, %i.dt          ; 2 uses
  %i.dv = fcmp ogt float %i.du, 0.000000e+00
  %.sroa.speculated2.i54 = select i1 %i.dv, float %i.du, float 0.000000e+00 ; 2 uses
  %i.dw = fcmp ogt float %.sroa.speculated2.i54, 1.000000e+00
end_hunk_0
