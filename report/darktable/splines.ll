Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/splines?download=true
inline.NumInlined: 1094
inline.NumDeleted: 285
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN8interpol18Catmull_Rom_splineIfE4initEv:bb.a
  %wide.gep57 = getelementptr [12 x i8], ptr %i.c, <8 x i64> %vec.ind53 ; 3 uses
  %wide.gep58 = getelementptr i8, <8 x ptr> %wide.gep57, i64 -12
  %wide.gep59 = getelementptr i8, <8 x ptr> %wide.gep57, i64 -8
  %wide.masked.gather60 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep59, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !20
  %i.am = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec56, %wide.masked.gather60
  %wide.masked.gather61 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep58, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !32
  %i.an = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec55, %wide.masked.gather61
  %i.ao = fdiv reassoc nsz arcp contract afn <8 x float> %i.am, %i.an
  %wide.gep62 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep57, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.ao, <8 x ptr> align 4 %wide.gep62, <8 x i1> splat (i1 true)), !tbaa !35
  %index.next63 = add nuw i64 %index52, 8         ; 2 uses
  %vec.ind.next64 = add nuw <8 x i64> %vec.ind53, splat (i64 8)
  %i.ap = icmp eq i64 %index.next63, %n.vec50
  br i1 %i.ap, label %.lr.ph35.preheader77, label %vector.body51, !llvm.loop !187

._crit_edge36:                                    ; preds = %.lr.ph35, %bb.c
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !20
  %i.as = getelementptr i8, ptr %i.c, i64 %i.f    ; 2 uses
  %i.at = getelementptr i8, ptr %i.as, i64 -24
  %i.au = getelementptr i8, ptr %i.as, i64 -20
  %i.av = load float, ptr %i.au, align 4, !tbaa !20
  %i.aw = fsub reassoc nsz arcp contract afn float %i.ar, %i.av
  %i.ax = load float, ptr %i.c, align 4, !tbaa !32
  %i.ay = load float, ptr %i.at, align 4, !tbaa !32
  %i.az = fadd reassoc nsz arcp contract afn float %i.ax, %i.p
  %i.ba = fsub reassoc nsz arcp contract afn float %i.az, %i.ay
  %i.bb = fdiv reassoc nsz arcp contract afn float %i.aw, %i.ba
  br label %bb.e

.lr.ph35:                                         ; preds = %.lr.ph35.preheader77, %.lr.ph35
  %.02833 = phi i64 [ %i.bc, %.lr.ph35 ], [ %.02833.ph, %.lr.ph35.preheader77 ] ; 2 uses
  %i.bc = add nuw i64 %.02833, 1                  ; 3 uses
  %i.bd = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.bc
  %i.be = getelementptr [12 x i8], ptr %i.c, i64 %.02833 ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 -12
  %i.bg = load <2 x float>, ptr %i.bd, align 4, !tbaa !34
  %i.bh = load <2 x float>, ptr %i.bf, align 4, !tbaa !34
  %i.bi = fsub reassoc nsz arcp contract afn <2 x float> %i.bg, %i.bh ; 2 uses
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.bi
  %i.bj = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bk = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store float %i.bj, ptr %i.bk, align 4, !tbaa !35
  %exitcond37.not = icmp eq i64 %i.bc, %i.t
  br i1 %exitcond37.not, label %._crit_edge36, label %.lr.ph35, !llvm.loop !188

bb.d:                                             ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.bm = load <2 x float>, ptr %i.bl, align 4, !tbaa !34
  %i.bn = load <2 x float>, ptr %i.c, align 4, !tbaa !34
  %i.bo = fsub reassoc nsz arcp contract afn <2 x float> %i.bm, %i.bn ; 2 uses
  %shift68 = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop69 = fdiv reassoc nsz arcp contract afn <2 x float> %shift68, %i.bo
  %i.bp = extractelement <2 x float> %foldExtExtBinop69, i64 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float %i.bp, ptr %i.bq, align 4, !tbaa !35
  %i.br = add nsw i64 %i.g, -1                    ; 3 uses
  %i.bs = icmp ugt i64 %i.br, 1
  br i1 %i.bs, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.d
  %i.bt = add nsw i64 %i.g, -2                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.bt, 9
  br i1 %min.iters.check, label %.lr.ph.preheader78, label %vector.ph

.lr.ph.preheader78:                               ; preds = %vector.body, %.lr.ph.preheader
  %.032.ph = phi i64 [ 1, %.lr.ph.preheader ], [ %i.bx, %vector.body ]
  br label %.lr.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.bu = and i64 %i.bt, 7                        ; 2 uses
  %i.bv = icmp eq i64 %i.bu, 0
  %i.bw = select i1 %i.bv, i64 8, i64 %i.bu
  %n.vec = sub nsw i64 %i.bt, %i.bw               ; 2 uses
  %i.bx = add nsw i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %i.by = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %index
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %wide.vec = load <24 x float>, ptr %i.bz, align 4, !tbaa !34 ; 2 uses
  %strided.vec = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 0, i32 3, i32 6, i32 9, i32 12, i32 15, i32 18, i32 21>
  %strided.vec42 = shufflevector <24 x float> %wide.vec, <24 x float> poison, <8 x i32> <i32 1, i32 4, i32 7, i32 10, i32 13, i32 16, i32 19, i32 22>
  %wide.gep = getelementptr [12 x i8], ptr %i.c, <8 x i64> %vec.ind ; 3 uses
  %wide.gep43 = getelementptr i8, <8 x ptr> %wide.gep, i64 -12
  %wide.gep44 = getelementptr i8, <8 x ptr> %wide.gep, i64 -8
  %wide.masked.gather = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep44, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !20
  %i.ca = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec42, %wide.masked.gather
  %wide.masked.gather45 = tail call <8 x float> @llvm.masked.gather.v8f32.v8p0(<8 x ptr> align 4 %wide.gep43, <8 x i1> splat (i1 true), <8 x float> poison), !tbaa !32
  %i.cb = fsub reassoc nsz arcp contract afn <8 x float> %strided.vec, %wide.masked.gather45
  %i.cc = fdiv reassoc nsz arcp contract afn <8 x float> %i.ca, %i.cb
  %wide.gep46 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cc, <8 x ptr> align 4 %wide.gep46, <8 x i1> splat (i1 true)), !tbaa !35
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nuw <8 x i64> %vec.ind, splat (i64 8)
  %i.cd = icmp eq i64 %index.next, %n.vec
  br i1 %i.cd, label %.lr.ph.preheader78, label %vector.body, !llvm.loop !189

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.ce = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.br ; 2 uses
  %i.cf = getelementptr i8, ptr %i.c, i64 %i.f
  %i.cg = getelementptr i8, ptr %i.cf, i64 -24
  %i.ch = load <2 x float>, ptr %i.ce, align 4, !tbaa !34
  %i.ci = load <2 x float>, ptr %i.cg, align 4, !tbaa !34
  %i.cj = fsub reassoc nsz arcp contract afn <2 x float> %i.ch, %i.ci ; 2 uses
  %shift71 = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop72 = fdiv reassoc nsz arcp contract afn <2 x float> %shift71, %i.cj
  %i.ck = extractelement <2 x float> %foldExtExtBinop72, i64 0
  br label %bb.e

.lr.ph:                                           ; preds = %.lr.ph.preheader78, %.lr.ph
  %.032 = phi i64 [ %i.cl, %.lr.ph ], [ %.032.ph, %.lr.ph.preheader78 ] ; 2 uses
  %i.cl = add nuw i64 %.032, 1                    ; 3 uses
  %i.cm = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %i.cl
  %i.cn = getelementptr [12 x i8], ptr %i.c, i64 %.032 ; 2 uses
  %i.co = getelementptr i8, ptr %i.cn, i64 -12
  %i.cp = load <2 x float>, ptr %i.cm, align 4, !tbaa !34
  %i.cq = load <2 x float>, ptr %i.co, align 4, !tbaa !34
  %i.cr = fsub reassoc nsz arcp contract afn <2 x float> %i.cp, %i.cq ; 2 uses
  %shift74 = shufflevector <2 x float> %i.cr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop75 = fdiv reassoc nsz arcp contract afn <2 x float> %shift74, %i.cr
  %i.cs = extractelement <2 x float> %foldExtExtBinop75, i64 0
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store float %i.cs, ptr %i.ct, align 4, !tbaa !35
  %exitcond.not = icmp eq i64 %i.cl, %i.br
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !190

bb.e:                                             ; preds = %bb.a, %._crit_edge36, %._crit_edge
  %.sink41 = phi ptr [ %i.u, %._crit_edge36 ], [ %i.ce, %._crit_edge ], [ %i.c, %bb.a ]
  %.sink = phi float [ %i.bb, %._crit_edge36 ], [ %i.ck, %._crit_edge ], [ 0.000000e+00, %bb.a ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sink41, i64 8
  store float %.sink, ptr %i.cu, align 4, !tbaa !35
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN8interpol23monotone_hermite_splineIfE4initEv(ptr noundef nonnull align 8 dereferenceable(41) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !15     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 4 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 20 uses
  %i.h = icmp eq i64 %i.f, 12
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store float 0.000000e+00, ptr %i.i, align 4, !tbaa !35
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load i8, ptr %i.j, align 8, !tbaa !27, !range !28, !noundef !29
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.d, label %bb.v

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load <2 x float>, ptr %i.m, align 8, !tbaa !34 ; 2 uses
  %i.o = icmp ugt i64 %i.g, 2305843009213693951
  br i1 %i.o, label %.noexc, label %bb.e

.noexc:                                           ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.2) #21
  unreachable

bb.e:                                             ; preds = %bb.d
  %.not215 = icmp eq ptr %i.b, %i.c               ; 2 uses
  br i1 %.not215, label %.lr.ph257.preheader, label %_ZNSt6vectorIfSaIfEE7reserveEm.exit

_ZNSt6vectorIfSaIfEE7reserveEm.exit:              ; preds = %bb.e
  %i.p = shl nuw nsw i64 %i.g, 2
  %i.q = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.p) #20 ; 4 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %i.g ; 2 uses
  %i.s = add nsw i64 %i.g, -1                     ; 2 uses
  %.not270 = icmp eq i64 %i.s, 0
  br i1 %.not270, label %._crit_edge258, label %.lr.ph257.preheader

.lr.ph257.preheader:                              ; preds = %bb.e, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.t = phi i64 [ %i.s, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ -1, %bb.e ] ; 2 uses
  %.sroa.35.2304 = phi ptr [ %i.r, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ]
  %.sroa.0175.2303 = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ null, %bb.e ] ; 2 uses
  br label %.lr.ph257

._crit_edge258:                                   ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124, %_ZNSt6vectorIfSaIfEE7reserveEm.exit
  %i.u = phi i64 [ 0, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %i.t, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 2 uses
  %.sroa.0175.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.0175.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 7 uses
  %.sroa.26.0.lcssa = phi ptr [ %i.q, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.26.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 5 uses
  %.sroa.35.0.lcssa = phi ptr [ %i.r, %_ZNSt6vectorIfSaIfEE7reserveEm.exit ], [ %.sroa.35.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ] ; 2 uses
  %i.v = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %i.w = getelementptr inbounds nuw [12 x i8], ptr %i.v, i64 %i.u
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !34
  %i.y = load <2 x float>, ptr %i.w, align 4, !tbaa !34
  %i.z = shufflevector <2 x float> <float poison, float -0.000000e+00>, <2 x float> %i.n, <2 x i32> <i32 3, i32 1>
  %i.aa = insertelement <2 x float> %i.n, float -0.000000e+00, i64 1
  %i.ab = fadd reassoc nsz arcp contract afn <2 x float> %i.x, %i.z
  %i.ac = fadd reassoc nsz arcp contract afn <2 x float> %i.y, %i.aa
  %i.ad = fsub reassoc nsz arcp contract afn <2 x float> %i.ab, %i.ac ; 2 uses
  %shift = shufflevector <2 x float> %i.ad, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fdiv reassoc nsz arcp contract afn <2 x float> %shift, %i.ad
  %i.ae = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.26.0.lcssa, %.sroa.35.0.lcssa
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge258
  store float %i.ae, ptr %.sroa.26.0.lcssa, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

bb.g:                                             ; preds = %._crit_edge258
  %i.af = ptrtoint ptr %.sroa.26.0.lcssa to i64
  %i.ag = ptrtoint ptr %.sroa.0175.0.lcssa to i64
  %i.ah = sub i64 %i.af, %i.ag                    ; 6 uses
  %i.ai = icmp eq i64 %i.ah, 9223372036854775804
  br i1 %i.ai, label %bb.h, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc113 unwind label %.loopexit.split-lp

.noexc113:                                        ; preds = %bb.h
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.g
  %i.aj = ashr exact i64 %i.ah, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aj, i64 1)
  %i.ak = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aj ; 2 uses
  %i.al = icmp ult i64 %i.ak, %i.aj
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.ak, i64 2305843009213693951)
  %i.an = select i1 %i.al, i64 2305843009213693951, i64 %i.am ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.an, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ao = shl nuw nsw i64 %i.an, 2
  %i.ap = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ao) #20
          to label %.noexc114 unwind label %.loopexit.split-lp ; 4 uses

.noexc114:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ap, i64 %i.ah
  store float %i.ae, ptr %i.aq, align 4, !tbaa !34
  %i.ar = icmp sgt i64 %i.ah, 0
  br i1 %i.ar, label %bb.i, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

bb.i:                                             ; preds = %.noexc114
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ap, ptr align 4 %.sroa.0175.0.lcssa, i64 %i.ah, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.i, %.noexc114
  %.not.i17.i.i.i = icmp eq ptr %.sroa.0175.0.lcssa, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0.lcssa, i64 noundef %i.ah) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i: ; preds = %bb.j, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.an
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit

.lr.ph257:                                        ; preds = %.lr.ph257.preheader, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124
  %.097256 = phi i64 [ %i.at, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ 0, %.lr.ph257.preheader ] ; 2 uses
  %.sroa.35.0255 = phi ptr [ %.sroa.35.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.35.2304, %.lr.ph257.preheader ] ; 5 uses
  %.sroa.26.0254 = phi ptr [ %.sroa.26.2, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0175.2303, %.lr.ph257.preheader ] ; 3 uses
  %.sroa.0175.0253 = phi ptr [ %.sroa.0175.4, %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124 ], [ %.sroa.0175.2303, %.lr.ph257.preheader ] ; 7 uses
  %i.at = add nuw i64 %.097256, 1                 ; 3 uses
  %i.au = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.av = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %i.at
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.au, i64 %.097256
  %i.ax = load <2 x float>, ptr %i.av, align 4, !tbaa !34
  %i.ay = load <2 x float>, ptr %i.aw, align 4, !tbaa !34
  %i.az = fsub reassoc nsz arcp contract afn <2 x float> %i.ax, %i.ay ; 2 uses
  %shift381 = shufflevector <2 x float> %i.az, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop382 = fdiv reassoc nsz arcp contract afn <2 x float> %shift381, %i.az
  %i.ba = extractelement <2 x float> %foldExtExtBinop382, i64 0 ; 2 uses
  %.not.i.i115 = icmp eq ptr %.sroa.26.0254, %.sroa.35.0255
  br i1 %.not.i.i115, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph257
  store float %i.ba, ptr %.sroa.26.0254, align 4, !tbaa !34
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

bb.l:                                             ; preds = %.lr.ph257
  %i.bb = ptrtoint ptr %.sroa.35.0255 to i64
  %i.bc = ptrtoint ptr %.sroa.0175.0253 to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 6 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775804
  br i1 %i.be, label %bb.m, label %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116

bb.m:                                             ; preds = %bb.l
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #21
          to label %.noexc122 unwind label %.loopexit.split-lp

.noexc122:                                        ; preds = %bb.m
  unreachable

_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116: ; preds = %bb.l
  %i.bf = ashr exact i64 %i.bd, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i117 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i.i117, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 2305843009213693951)
  %i.bj = select i1 %i.bh, i64 2305843009213693951, i64 %i.bi ; 3 uses
  %.not.i.i.i.i118 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i118)
  %i.bk = shl nuw nsw i64 %i.bj, 2
  %i.bl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #20
          to label %.noexc123 unwind label %.loopexit ; 4 uses

.noexc123:                                        ; preds = %_ZNKSt6vectorIfSaIfEE12_M_check_lenEmPKc.exit.i.i.i116
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store float %i.ba, ptr %i.bm, align 4, !tbaa !34
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.n, label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

bb.n:                                             ; preds = %.noexc123
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bl, ptr align 4 %.sroa.0175.0253, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119

_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119: ; preds = %bb.n, %.noexc123
  %.not.i17.i.i.i120 = icmp eq ptr %.sroa.0175.0253, null
  br i1 %.not.i17.i.i.i120, label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, label %bb.o

bb.o:                                             ; preds = %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0175.0253, i64 noundef %i.bd) #19
  br label %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121

_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121: ; preds = %bb.o, %_ZNSt6vectorIfSaIfEE11_S_relocateEPfS2_S2_RS0_.exit16.i.i.i119
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %i.bj
  br label %_ZNSt6vectorIfSaIfEE9push_backEOf.exit124

_ZNSt6vectorIfSaIfEE9push_backEOf.exit124:        ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121, %bb.k
  %.sroa.0175.4 = phi ptr [ %i.bl, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.0175.0253, %bb.k ] ; 2 uses
  %.pn216 = phi ptr [ %i.bm, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.26.0254, %bb.k ]
  %.sroa.35.4 = phi ptr [ %i.bo, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i121 ], [ %.sroa.35.0255, %bb.k ] ; 2 uses
  %.sroa.26.2 = getelementptr inbounds nuw i8, ptr %.pn216, i64 4 ; 2 uses
  %exitcond284.not = icmp eq i64 %i.at, %i.t
  br i1 %exitcond284.not, label %._crit_edge258, label %.lr.ph257, !llvm.loop !191

_ZNSt6vectorIfSaIfEE9push_backEOf.exit:           ; preds = %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i, %bb.f
  %.sroa.0175.3 = phi ptr [ %i.ap, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.0175.0.lcssa, %bb.f ] ; 13 uses
  %.sroa.35.3 = phi ptr [ %i.as, %_ZNSt6vectorIfSaIfEE17_M_realloc_insertIJfEEEvN9__gnu_cxx17__normal_iteratorIPfS1_EEDpOT_.exit.i.i ], [ %.sroa.35.0.lcssa, %bb.f ]
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0175.3, i64 %i.u
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !34 ; 2 uses
  %i.br = load float, ptr %.sroa.0175.3, align 4, !tbaa !34 ; 2 uses
  %i.bs = fmul reassoc nsz arcp contract afn float %i.br, %i.bq
  %i.bt = fcmp reassoc nsz arcp contract afn ugt float %i.bs, 0.000000e+00
  %i.bu = fadd reassoc nsz arcp contract afn float %i.br, %i.bq
  %i.bv = fmul reassoc nsz arcp contract afn float %i.bu, 5.000000e-01
  %.sink = select i1 %i.bt, float %i.bv, float 0.000000e+00
  %i.bw = load ptr, ptr %0, align 8, !tbaa !15    ; 13 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store float %.sink, ptr %i.bx, align 4, !tbaa !35
  %i.by = icmp ugt i64 %i.g, 1
  br i1 %i.by, label %.lr.ph265.preheader, label %.preheader

.lr.ph265.preheader:                              ; preds = %_ZNSt6vectorIfSaIfEE9push_backEOf.exit
  %i.bz = add nsw i64 %i.g, -1                    ; 2 uses
  %min.iters.check361 = icmp ult i64 %i.g, 9
  br i1 %min.iters.check361, label %.lr.ph265.preheader387, label %vector.memcheck362

vector.memcheck362:                               ; preds = %.lr.ph265.preheader
  %i.ca = getelementptr i8, ptr %i.bw, i64 20
  %i.cb = getelementptr i8, ptr %i.bw, i64 %i.f
  %i.cc = shl nuw nsw i64 %i.g, 2
  %i.cd = getelementptr i8, ptr %.sroa.0175.3, i64 %i.cc
  %bound0363 = icmp ult ptr %i.ca, %i.cd
  %bound1364 = icmp ult ptr %.sroa.0175.3, %i.cb
  %found.conflict365 = and i1 %bound0363, %bound1364
  br i1 %found.conflict365, label %.lr.ph265.preheader387, label %vector.ph366

vector.ph366:                                     ; preds = %vector.memcheck362
  %n.vec367 = and i64 %i.bz, -8                   ; 3 uses
  %i.ce = or disjoint i64 %n.vec367, 1
  br label %vector.body368

vector.body368:                                   ; preds = %vector.body368, %vector.ph366
  %index369 = phi i64 [ 0, %vector.ph366 ], [ %index.next375, %vector.body368 ] ; 2 uses
  %vec.ind370 = phi <8 x i64> [ <i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8>, %vector.ph366 ], [ %vec.ind.next376, %vector.body368 ] ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %.sroa.0175.3, i64 %index369 ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %wide.load371 = load <8 x float>, ptr %i.cf, align 4, !tbaa !34, !alias.scope !207 ; 2 uses
  %wide.load372 = load <8 x float>, ptr %i.cg, align 4, !tbaa !34, !alias.scope !207 ; 2 uses
  %i.ch = fmul reassoc nsz arcp contract afn <8 x float> %wide.load372, %wide.load371
  %i.ci = fcmp reassoc nsz arcp contract afn ugt <8 x float> %i.ch, zeroinitializer
  %i.cj = fadd reassoc nsz arcp contract afn <8 x float> %wide.load372, %wide.load371
  %i.ck = fmul reassoc nsz arcp contract afn <8 x float> %i.cj, splat (float 5.000000e-01)
  %i.cl = select <8 x i1> %i.ci, <8 x float> %i.ck, <8 x float> zeroinitializer
  %wide.gep373 = getelementptr inbounds nuw [12 x i8], ptr %i.bw, <8 x i64> %vec.ind370
  %wide.gep374 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep373, i64 8
  tail call void @llvm.masked.scatter.v8f32.v8p0(<8 x float> %i.cl, <8 x ptr> align 4 %wide.gep374, <8 x i1> splat (i1 true)), !tbaa !35, !alias.scope !208, !noalias !207
  %index.next375 = add nuw i64 %index369, 8       ; 2 uses
  %vec.ind.next376 = add nuw nsw <8 x i64> %vec.ind370, splat (i64 8)
  %i.cm = icmp eq i64 %index.next375, %n.vec367
  br i1 %i.cm, label %middle.block377, label %vector.body368, !llvm.loop !195

middle.block377:                                  ; preds = %vector.body368
  %cmp.n378 = icmp eq i64 %i.bz, %n.vec367
end_hunk_0
