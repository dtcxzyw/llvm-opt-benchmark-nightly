Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/BlenderTessellator?download=true
inline.NumInlined: 331
inline.NumDeleted: 200
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@_ZN6Assimp21BlenderTessellatorP2T17AssertVertexCountEi:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #24
  call void @__cxa_free_exception(ptr nonnull %i.c) #24
  resume { ptr, i32 } %i.d

bb.e:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T14Copy3DVerticesEPKNS_7Blender5MLoopEiRKSt6vectorINS1_5MVertESaIS6_EERS5_INS1_8PointP2TESaISB_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = sext i32 %2 to i64                       ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %4, align 8                ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6                   ; 3 uses
  %i.i = icmp ult i64 %i.h, %i.a
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = sub nuw nsw i64 %i.a, %i.h
  tail call void @_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %4, i64 noundef %i.j)
  br label %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.h, %i.a
  br i1 %i.k, label %bb.d, label %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %i.a ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.l
  br i1 %.not.i.i, label %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.d, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.t, %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i ], [ %i.l, %bb.d ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef %i.s) #27
  br label %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.t, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIN6Assimp7Blender8PointP2TEEvPT_.exit.i.i.i.i
  store ptr %i.l, ptr %i.b, align 8
  br label %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit: ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPN6Assimp7Blender8PointP2TES2_EvT_S4_RSaIT0_E.exit.i.i
  %i.u = icmp sgt i32 %2, 0
  br i1 %i.u, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %_ZNSt6vectorIN6Assimp7Blender8PointP2TESaIS2_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 3 uses
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %1, i64 %indvars.iv
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 8
  %i.y = sext i32 %i.x to i64
  %i.z = load ptr, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw [56 x i8], ptr %i.z, i64 %i.y ; 2 uses
  %i.ab = load ptr, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw [64 x i8], ptr %i.ab, i64 %indvars.iv ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %i.af = load float, ptr %i.ae, align 8
  %i.ag = load <2 x float>, ptr %i.ad, align 8
  store <2 x float> %i.ag, ptr %i.ac, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store float %i.af, ptr %i.ah, align 4
  %i.ai = load i32, ptr %i.w, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ac, i64 60
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 56
  store i32 -2081580349, ptr %i.ak, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T13FindLLSQPlaneERKSt6vectorINS_7Blender8PointP2TESaIS3_EE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Assimp::Blender::PlaneP2T") align 4 captures(none) initializes((12, 20)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 {
bb.a:
  %3 = alloca %class.aiMatrix3x3t, align 16       ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i64 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = load ptr, ptr %2, align 8                ; 8 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 6                   ; 5 uses
  %.not = icmp eq ptr %i.c, %i.d                  ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %xtraiter = and i64 %i.h, 3                     ; 3 uses
  %i.i = icmp ult i64 %i.h, 4
  br i1 %i.i, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.h, -4
  br label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.076.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.as, %._crit_edge.loopexit.unr-lcssa ]
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod130 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod130)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.076.epil = phi i64 [ %i.o, %.lr.ph.epil ], [ %.076.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %i.j = phi <4 x float> [ %i.n, %.lr.ph.epil ], [ %.epil.init, %.lr.ph.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.k = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076.epil
  %i.l = load <3 x float>, ptr %i.k, align 4
  %i.m = shufflevector <3 x float> %i.l, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.n = fadd <4 x float> %i.j, %i.m              ; 2 uses
  %i.o = add nuw i64 %.076.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %.lr.ph.epil, !llvm.loop !14

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.epil, %bb.a
  %i.p = phi <4 x float> [ zeroinitializer, %bb.a ], [ %i.ar, %._crit_edge.loopexit.unr-lcssa ], [ %i.n, %.lr.ph.epil ]
  %i.q = uitofp i64 %i.h to double
  %i.r = fdiv double 1.000000e+00, %i.q
  %i.s = fptrunc double %i.r to float
  %i.t = insertelement <4 x float> poison, float %i.s, i64 0
  %i.u = shufflevector <4 x float> %i.t, <4 x float> poison, <4 x i32> zeroinitializer
  %i.v = fmul <4 x float> %i.p, %i.u              ; 3 uses
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  store <2 x float> %i.w, ptr %0, align 4
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = extractelement <4 x float> %i.v, i64 1
  store float %i.x, ptr %.sroa.444.0..sroa_idx, align 4
  br i1 %.not, label %._crit_edge90, label %.lr.ph89

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.076 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.as, %.lr.ph ] ; 5 uses
  %i.y = phi <4 x float> [ zeroinitializer, %.lr.ph.preheader.new ], [ %i.ar, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.z = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.aa = load <3 x float>, ptr %i.z, align 4
  %i.ab = shufflevector <3 x float> %i.aa, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ac = fadd <4 x float> %i.y, %i.ab
  %i.ad = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.af = load <3 x float>, ptr %i.ae, align 4
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ah = fadd <4 x float> %i.ac, %i.ag
  %i.ai = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 128
  %i.ak = load <3 x float>, ptr %i.aj, align 4
  %i.al = shufflevector <3 x float> %i.ak, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.am = fadd <4 x float> %i.ah, %i.al
  %i.an = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.076
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 192
  %i.ap = load <3 x float>, ptr %i.ao, align 4
  %i.aq = shufflevector <3 x float> %i.ap, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.ar = fadd <4 x float> %i.am, %i.aq           ; 3 uses
  %i.as = add nuw i64 %.076, 4                    ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !15

._crit_edge90:                                    ; preds = %.lr.ph89, %._crit_edge
  %.054.lcssa = phi float [ 0.000000e+00, %._crit_edge ], [ %i.ca, %.lr.ph89 ] ; 4 uses
  %i.at = phi <4 x float> [ zeroinitializer, %._crit_edge ], [ %i.cf, %.lr.ph89 ] ; 10 uses
  %i.au = phi <2 x float> [ zeroinitializer, %._crit_edge ], [ %i.cd, %.lr.ph89 ] ; 2 uses
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.aw = extractelement <4 x float> %i.at, i64 0 ; 2 uses
  %i.ax = fmul float %i.aw, %.054.lcssa
  %i.ay = extractelement <4 x float> %i.at, i64 3 ; 4 uses
  %i.az = fmul float %i.ay, %.054.lcssa
  %i.ba = fneg float %i.ay                        ; 2 uses
  %i.bb = fmul float %i.az, %i.ba
  %i.bc = extractelement <4 x float> %i.at, i64 1 ; 2 uses
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.ax, float %i.bc, float %i.bb)
  %i.be = extractelement <4 x float> %i.at, i64 2 ; 4 uses
  %i.bf = fmul float %i.ay, %i.be
  %i.bg = extractelement <2 x float> %i.au, i64 1 ; 4 uses
  %i.bh = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.bg, float %i.bd)
  %i.bi = fneg float %i.be                        ; 2 uses
  %i.bj = fmul float %i.be, %i.bi                 ; 2 uses
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %i.bc, float %i.bh)
  %i.bl = fmul float %i.bg, %i.be
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.bl, float %i.ay, float %i.bk)
  %i.bn = fneg <4 x float> %i.at
  %i.bo = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %i.bn, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.bp = fmul <4 x float> %i.av, %i.bo           ; 2 uses
  %i.bq = extractelement <4 x float> %i.bp, i64 3
  %i.br = tail call noundef float @llvm.fmuladd.f32(float %i.bq, float %i.bg, float %i.bm) ; 2 uses
  %i.bs = fcmp oeq float %i.br, 0.000000e+00
  br i1 %i.bs, label %bb.b, label %_ZN12aiMatrix3x3tIfE7InverseEv.exit

.lr.ph89:                                         ; preds = %._crit_edge, %.lr.ph89
  %.05487 = phi float [ %i.ca, %.lr.ph89 ], [ 0.000000e+00, %._crit_edge ]
  %.06081 = phi i64 [ %i.cg, %.lr.ph89 ], [ 0, %._crit_edge ] ; 2 uses
  %i.bt = phi <4 x float> [ %i.cf, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.bu = phi <2 x float> [ %i.cd, %.lr.ph89 ], [ zeroinitializer, %._crit_edge ]
  %i.bv = getelementptr inbounds nuw [64 x i8], ptr %i.d, i64 %.06081
  %i.bw = load <3 x float>, ptr %i.bv, align 4
  %i.bx = shufflevector <3 x float> %i.bw, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.by = fsub <4 x float> %i.bx, %i.v            ; 5 uses
  %i.bz = extractelement <4 x float> %i.by, i64 2 ; 2 uses
  %i.ca = tail call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %.05487) ; 2 uses
  %i.cb = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 0, i32 2>
  %i.cc = shufflevector <4 x float> %i.by, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cc, <2 x float> %i.bu) ; 2 uses
  %i.ce = shufflevector <4 x float> %i.by, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.by, <4 x float> %i.ce, <4 x float> %i.bt) ; 2 uses
  %i.cg = add nuw i64 %.06081, 1                  ; 2 uses
  %exitcond107.not = icmp eq i64 %i.cg, %i.h
  br i1 %exitcond107.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !16

bb.b:                                             ; preds = %._crit_edge90
  %.sroa.4.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float 0.000000e+00, ptr %.sroa.4.0..sroa_idx65, align 4
  br label %bb.c

_ZN12aiMatrix3x3tIfE7InverseEv.exit:              ; preds = %._crit_edge90
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ch = fdiv float 1.000000e+00, %i.br          ; 3 uses
  %i.ci = fneg float %i.ch
  %i.cj = fneg float %i.bg                        ; 2 uses
  %i.ck = tail call float @llvm.fmuladd.f32(float %.054.lcssa, float %i.aw, float %i.bj)
  %i.cl = fmul float %i.ck, %i.ch
  %i.cm = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ba, i64 0
  %i.cn = insertelement <4 x float> %i.cm, float %i.cj, i64 2
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 3>
  %i.cp = fmul <4 x float> %i.bp, %i.co
  %i.cq = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 2, i32 1, i32 2>
  %i.cr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.at, <4 x float> %i.cq, <4 x float> %i.cp)
  %i.cs = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.ct = insertelement <4 x float> %i.cs, float %i.ci, i64 1 ; 2 uses
  %i.cu = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 3, i32 2>
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cw = fmul <4 x float> %i.cu, %i.cv
  store <4 x float> %i.cw, ptr %3, align 16
  %i.cx = shufflevector <4 x float> %i.av, <4 x float> %i.at, <4 x i32> <i32 1, i32 1, i32 4, i32 6>
  %i.cy = insertelement <4 x float> poison, float %i.cj, i64 0
  %i.cz = insertelement <4 x float> %i.cy, float %i.bi, i64 1
  %i.da = shufflevector <4 x float> %i.cz, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0>
  %i.db = fmul <4 x float> %i.cx, %i.da
  %i.dc = shufflevector <4 x float> %i.at, <4 x float> poison, <4 x i32> <i32 1, i32 3, i32 3, i32 poison>
  %i.dd = insertelement <4 x float> %i.dc, float %.054.lcssa, i64 3 ; 2 uses
  %i.de = shufflevector <4 x float> %i.at, <4 x float> %i.dd, <4 x i32> <i32 7, i32 7, i32 2, i32 3>
  %i.df = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dd, <4 x float> %i.de, <4 x float> %i.db)
  %i.dg = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dh = fmul <4 x float> %i.df, %i.dg
  store <4 x float> %i.dh, ptr %.sroa.11.0..sroa_idx, align 16
  store float %i.cl, ptr %.sroa.19.0..sroa_idx, align 16
  %i.di = call { <2 x float>, float } @_ZNK6Assimp21BlenderTessellatorP2T35GetEigenVectorFromLargestEigenValueERK12aiMatrix3x3tIfE(ptr nonnull align 8 poison, ptr noundef nonnull align 4 dereferenceable(36) %3) ; 2 uses
  %.fca.0.extract = extractvalue { <2 x float>, float } %i.di, 0
  %.fca.1.extract = extractvalue { <2 x float>, float } %i.di, 1
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x float> %.fca.0.extract, ptr %i.dj, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.c

bb.c:                                             ; preds = %_ZN12aiMatrix3x3tIfE7InverseEv.exit, %bb.b
  %.fca.1.extract.sink = phi float [ 0.000000e+00, %bb.b ], [ %.fca.1.extract, %_ZN12aiMatrix3x3tIfE7InverseEv.exit ]
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %.fca.1.extract.sink, ptr %i.dk, align 4
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T28GeneratePointTransformMatrixERKNS_7Blender8PlaneP2TE(ptr dead_on_unwind noalias writable sret(%class.aiMatrix4x4t) align 4 initializes((0, 64)) %0, ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.b = load <2 x float>, ptr %i.a, align 4      ; 6 uses
  %i.c = extractelement <2 x float> %i.b, i64 1   ; 3 uses
  %i.d = extractelement <2 x float> %i.b, i64 0   ; 2 uses
  %i.e = fmul float %i.c, 0.000000e+00
  %i.f = fadd float %i.d, %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.h = load float, ptr %i.g, align 4            ; 5 uses
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.h, float 0.000000e+00, float %i.f)
  %i.j = tail call noundef float @llvm.fabs.f32(float %i.i)
  %i.k = fcmp ogt float %i.j, 9.990000e-01
  %.sroa.032.0 = select i1 %i.k, <2 x float> <float 0.000000e+00, float 1.000000e+00>, <2 x float> <float 1.000000e+00, float 0.000000e+00> ; 3 uses
  %.sroa.032.4.vec.extract44 = extractelement <2 x float> %.sroa.032.0, i64 1 ; 2 uses
  %i.l = fneg float %.sroa.032.4.vec.extract44
  %.sroa.032.0.vec.extract37 = extractelement <2 x float> %.sroa.032.0, i64 0
  %i.m = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.n = insertelement <2 x float> %i.m, float %i.h, i64 0 ; 2 uses
  %i.o = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.l, i64 0
  %i.p = fmul <2 x float> %i.n, %i.o
  %i.q = insertelement <2 x float> <float 0.000000e+00, float poison>, float %i.h, i64 1
  %i.r = shufflevector <2 x float> %i.b, <2 x float> %.sroa.032.0, <2 x i32> <i32 1, i32 2>
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> %i.r, <2 x float> %i.p) ; 5 uses
  %i.t = fneg float %.sroa.032.0.vec.extract37
  %i.u = fmul float %i.c, %i.t
  %i.v = tail call float @llvm.fmuladd.f32(float %i.d, float %.sroa.032.4.vec.extract44, float %i.u) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.s, %i.s
  %i.w = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.x = extractelement <2 x float> %i.s, i64 0   ; 2 uses
  %i.y = tail call float @llvm.fmuladd.f32(float %i.x, float %i.x, float %i.w)
  %i.z = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y) ; 2 uses
  %i.aa = fcmp oeq float %i.z, 0.000000e+00
  br i1 %i.aa, label %_ZN10aiVector3tIfE9NormalizeEv.exit, label %_ZN10aiVector3tIfEdVEf.exit.i

_ZN10aiVector3tIfEdVEf.exit.i:                    ; preds = %bb.a
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.z)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.ac = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.ad = shufflevector <2 x float> %i.ac, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x float> %i.s, %i.ad
  %i.af = fmul float %i.v, %i.ab
  br label %_ZN10aiVector3tIfE9NormalizeEv.exit

_ZN10aiVector3tIfE9NormalizeEv.exit:              ; preds = %bb.a, %_ZN10aiVector3tIfEdVEf.exit.i
  %.sroa.11.0 = phi float [ %i.v, %bb.a ], [ %i.af, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 3 uses
  %.sroa.0.0 = phi <2 x float> [ %i.s, %bb.a ], [ %i.ae, %_ZN10aiVector3tIfEdVEf.exit.i ] ; 4 uses
  %.sroa.0.4.vec.extract27 = extractelement <2 x float> %.sroa.0.0, i64 1
  %i.ag = fneg float %i.c
  %i.ah = fmul float %.sroa.11.0, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %.sroa.0.4.vec.extract27, float %i.h, float %i.ah)
  %i.aj = fneg <2 x float> %i.n
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %i.ao, align 4
  store float %i.ai, ptr %0, align 4
  %i.aq = fmul <2 x float> %.sroa.0.0, %i.aj
  %i.ar = shufflevector <2 x float> %.sroa.0.0, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.as = insertelement <2 x float> %i.ar, float %.sroa.11.0, i64 0
  %i.at = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.b, <2 x float> %i.aq)
  store <2 x float> %i.at, ptr %i.ak, align 4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.sroa.0.0, ptr %i.au, align 4
  store float %.sroa.11.0, ptr %i.al, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %i.b, ptr %i.av, align 4
  store float %i.h, ptr %i.am, align 4
  %i.aw = load float, ptr %2, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 12
  store float %i.aw, ptr %i.ax, align 4
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.az = load float, ptr %i.ay, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.az, ptr %i.ba, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bc = load float, ptr %i.bb, align 4
  store float %i.bc, ptr %i.an, align 4
  %i.bd = tail call noundef nonnull align 4 dereferenceable(64) ptr @_ZN12aiMatrix4x4tIfE7InverseEv(ptr noundef nonnull align 4 dereferenceable(64) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T27TransformAndFlattenVecticesERK12aiMatrix4x4tIfERSt6vectorINS_7Blender8PointP2TESaIS7_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %2, align 8                ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi ptr [ %i.c, %.lr.ph ], [ %i.ar, %bb.b ]
  %.011 = phi i64 [ 0, %.lr.ph ], [ %i.ap, %bb.b ] ; 2 uses
  %i.i = getelementptr inbounds nuw [64 x i8], ptr %i.h, i64 %.011 ; 5 uses
  %i.j = load float, ptr %1, align 4
  %i.k = load float, ptr %i.d, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.m = load float, ptr %i.e, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load float, ptr %i.f, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.q = load float, ptr %i.i, align 4            ; 2 uses
  %i.r = load float, ptr %i.l, align 4            ; 2 uses
  %i.s = fmul float %i.k, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.j, float %i.q, float %i.s)
  %i.u = load float, ptr %i.n, align 4            ; 2 uses
  %i.v = tail call float @llvm.fmuladd.f32(float %i.m, float %i.u, float %i.t)
  %i.w = fadd float %i.v, %i.o
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.w, i64 0
  %i.x = load <8 x float>, ptr %i.g, align 4      ; 4 uses
  %i.y = insertelement <2 x float> poison, float %i.r, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 1, i32 5>
  %i.ab = fmul <2 x float> %i.z, %i.aa
  %i.ac = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 0, i32 4>
  %i.ad = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ae = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ac, <2 x float> %i.ae, <2 x float> %i.ab)
  %i.ag = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 2, i32 6>
  %i.ah = insertelement <2 x float> poison, float %i.u, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ag, <2 x float> %i.ai, <2 x float> %i.af)
  %i.ak = shufflevector <8 x float> %i.x, <8 x float> poison, <2 x i32> <i32 3, i32 7>
  %i.al = fadd <2 x float> %i.ak, %i.aj           ; 3 uses
  %i.am = shufflevector <2 x float> %.sroa.0.0.vec.insert.i, <2 x float> %i.al, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.am, ptr %i.i, align 8
  %i.an = extractelement <2 x float> %i.al, i64 1
  store float %i.an, ptr %i.n, align 8
  %i.ao = fpext <2 x float> %i.al to <2 x double>
  store <2 x double> %i.ao, ptr %i.p, align 8
  %i.ap = add nuw i64 %.011, 1                    ; 2 uses
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = load ptr, ptr %2, align 8               ; 2 uses
  %i.as = ptrtoint ptr %i.aq to i64
  %i.at = ptrtoint ptr %i.ar to i64
  %i.au = sub i64 %i.as, %i.at
  %i.av = ashr exact i64 %i.au, 6
  %i.aw = icmp ult i64 %i.ap, %i.av
  br i1 %i.aw, label %bb.b, label %._crit_edge, !llvm.loop !1
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZNK6Assimp21BlenderTessellatorP2T15ReferencePointsERSt6vectorINS_7Blender8PointP2TESaIS3_EERS1_IPN3p2t5PointESaIS9_EE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 6                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = load ptr, ptr %2, align 8                ; 2 uses
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = sub i64 %i.k, %i.l
end_hunk_0
