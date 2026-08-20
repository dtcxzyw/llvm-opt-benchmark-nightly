inline.NumInlined: 1842
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 27
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5ImGui16SplitterBehaviorERK6ImRectj9ImGuiAxisPfS4_ffffj:bb.a
  %i.bn = select <2 x i1> %i.bk, <2 x float> %i.bl, <2 x float> %i.bm
  %i.bo = shufflevector <2 x float> %i.bn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bp = load <4 x float>, ptr %11, align 16, !tbaa !171
  %i.bq = fadd <4 x float> %i.bo, %i.bp
  store <4 x float> %i.bq, ptr %11, align 16, !tbaa !171
  call void @_ZN5ImGui14MarkItemEditedEj(i32 noundef %1)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %.thread64, %.critedge, %bb.g
  %i.br = phi i1 [ false, %.thread64 ], [ true, %.critedge ], [ true, %bb.g ], [ false, %bb.f ] ; 3 uses
  %.not = icmp ult i32 %9, 16777216
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !186
  %i.bu = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bt, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.bu, i32 noundef %9, float noundef 0.000000e+00, i32 noundef 0)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.not65 = xor i1 %i.q, true
  %brmerge = or i1 %i.br, %.not65
  %.mux = select i1 %i.br, i32 30, i32 28
  br i1 %brmerge, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 5416
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !197
  %i.bx = fcmp oge float %i.bw, %8
  %i.by = select i1 %i.bx, i32 29, i32 28
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.bz = phi i32 [ %.mux, %bb.j ], [ %i.by, %bb.k ]
  %i.ca = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bz, float noundef 1.000000e+00)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !186
  %i.cd = getelementptr inbounds nuw i8, ptr %11, i64 8
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.cc, ptr noundef nonnull align 4 dereferenceable(8) %11, ptr noundef nonnull align 4 dereferenceable(8) %i.cd, i32 noundef %i.ca, float noundef 0.000000e+00, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.m

bb.m:                                             ; preds = %bb.a, %bb.l
  %.050 = phi i1 [ %i.br, %bb.l ], [ false, %bb.a ]
  ret i1 %.050
}

; Function Attrs: mustprogress nofree uwtable
define void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemiff(ptr noundef %0, i32 noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #11 {
bb.a:
  switch i32 %1, label %_Z7ImQsortPvmmPFiPKvS1_E.exit [
    i32 1, label %bb.b
    i32 0, label %.loopexit84
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load float, ptr %i.a, align 4, !tbaa !339 ; 2 uses
  %i.c = fcmp ult float %i.b, 0.000000e+00
  br i1 %i.c, label %.loopexit84, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = fsub float %i.b, %2                      ; 2 uses
  %i.e = fcmp oge float %i.d, %3
  %i.f = select i1 %i.e, float %i.d, float %3
  store float %i.f, ptr %i.a, align 4, !tbaa !339
  br label %.loopexit84

_Z7ImQsortPvmmPFiPKvS1_E.exit:                    ; preds = %bb.a
  %i.g = sext i32 %1 to i64
  tail call void @qsort(ptr noundef %0, i64 noundef %i.g, i64 noundef 12, ptr noundef nonnull @_ZL23ShrinkWidthItemComparerPKvS0_)
  %i.h = fcmp ogt float %2, 1.000000e-03
  %i.i = icmp sgt i32 %1, 1
  %i.j = and i1 %i.i, %i.h
  br i1 %i.j, label %.preheader86.lr.ph, label %.thread

.preheader86.lr.ph:                               ; preds = %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.l = zext nneg i32 %1 to i64
  br label %.preheader86

.loopexit85.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit85, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit85.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv113.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next114.1, %.loopexit85.loopexit.unr-lcssa ]
  %.193.epil.init = phi float [ %.095, %.lr.ph.preheader ], [ %i.bj, %.loopexit85.loopexit.unr-lcssa ]
  %lcmp.mod148 = trunc i32 %.17288 to i1
  tail call void @llvm.assume(i1 %lcmp.mod148)
  %i.m = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113.epil.init
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !339 ; 2 uses
  %i.p = fsub float %i.o, %3                      ; 2 uses
  %i.q = fcmp olt float %i.ar, %i.p
  %i.r = select i1 %i.q, float %i.ar, float %i.p  ; 2 uses
  %i.s = fsub float %i.o, %i.r
  store float %i.s, ptr %i.n, align 4, !tbaa !339
  %i.t = fsub float %.193.epil.init, %i.r
  br label %.loopexit85

.loopexit85:                                      ; preds = %.lr.ph.epil.preheader, %.loopexit85.loopexit.unr-lcssa, %bb.h
  %.1.lcssa = phi float [ %.095, %bb.h ], [ %i.bj, %.loopexit85.loopexit.unr-lcssa ], [ %i.t, %.lr.ph.epil.preheader ] ; 2 uses
  %i.u = fcmp ogt float %.1.lcssa, 1.000000e-03
  %i.v = icmp slt i32 %.17288, %1
  %i.w = and i1 %i.v, %i.u
  br i1 %i.w, label %.preheader86, label %.thread

.preheader86:                                     ; preds = %.preheader86.lr.ph, %.loopexit85
  %.095 = phi float [ %2, %.preheader86.lr.ph ], [ %.1.lcssa, %.loopexit85 ] ; 4 uses
  %.07194 = phi i32 [ 1, %.preheader86.lr.ph ], [ %.17288, %.loopexit85 ]
  %i.x = load float, ptr %i.k, align 4, !tbaa !339 ; 4 uses
  %i.y = sext i32 %.07194 to i64
  br label %bb.d

bb.d:                                             ; preds = %.preheader86, %bb.e
  %indvars.iv = phi i64 [ %i.y, %.preheader86 ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.z = getelementptr inbounds [12 x i8], ptr %0, i64 %indvars.iv
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 4
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !339 ; 3 uses
  %i.ac = fcmp ugt float %i.x, %i.ab
  br i1 %i.ac, label %.critedge, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 3 uses
  %i.ad = icmp slt i64 %indvars.iv.next, %i.l
  br i1 %i.ad, label %bb.d, label %.critedge80.loopexit, !llvm.loop !341

.critedge:                                        ; preds = %bb.d
  %i.ae = trunc nsw i64 %indvars.iv to i32        ; 2 uses
  %i.af = fcmp ult float %i.ab, 0.000000e+00
  br i1 %i.af, label %.critedge80, label %bb.f

bb.f:                                             ; preds = %.critedge
  %i.ag = fsub float %i.x, %i.ab
  br label %bb.g

.critedge80.loopexit:                             ; preds = %bb.e
  %i.ah = trunc nsw i64 %indvars.iv.next to i32
  br label %.critedge80

.critedge80:                                      ; preds = %.critedge80.loopexit, %.critedge
  %.17289 = phi i32 [ %i.ae, %.critedge ], [ %i.ah, %.critedge80.loopexit ]
  %i.ai = fadd float %i.x, -1.000000e+00
  br label %bb.g

bb.g:                                             ; preds = %.critedge80, %bb.f
  %.17288 = phi i32 [ %i.ae, %bb.f ], [ %.17289, %.critedge80 ] ; 7 uses
  %i.aj = phi float [ %i.ag, %bb.f ], [ %i.ai, %.critedge80 ] ; 2 uses
  %i.ak = fsub float %i.x, %3                     ; 2 uses
  %i.al = fcmp olt float %i.ak, %i.aj
  %i.am = select i1 %i.al, float %i.ak, float %i.aj ; 3 uses
  %i.an = fcmp ugt float %i.am, 0.000000e+00
  br i1 %i.an, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.ao = sitofp i32 %.17288 to float
  %i.ap = fdiv float %.095, %i.ao                 ; 2 uses
  %i.aq = fcmp olt float %i.ap, %i.am
  %i.ar = select i1 %i.aq, float %i.ap, float %i.am ; 6 uses
  %i.as = icmp sgt i32 %.17288, 0
  br i1 %i.as, label %.lr.ph.preheader, label %.loopexit85

.lr.ph.preheader:                                 ; preds = %bb.h
  %wide.trip.count = zext nneg i32 %.17288 to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.at = icmp eq i32 %.17288, 1
  br i1 %i.at, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv113 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next114.1, %.lr.ph ] ; 3 uses
  %.193 = phi float [ %.095, %.lr.ph.preheader.new ], [ %i.bj, %.lr.ph ]
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.au = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 4 ; 2 uses
  %i.aw = load float, ptr %i.av, align 4, !tbaa !339 ; 2 uses
  %i.ax = fsub float %i.aw, %3                    ; 2 uses
  %i.ay = fcmp olt float %i.ar, %i.ax
  %i.az = select i1 %i.ay, float %i.ar, float %i.ax ; 2 uses
  %i.ba = fsub float %i.aw, %i.az
  store float %i.ba, ptr %i.av, align 4, !tbaa !339
  %i.bb = fsub float %.193, %i.az
  %i.bc = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv113
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 2 uses
  %i.be = load float, ptr %i.bd, align 4, !tbaa !339 ; 2 uses
  %i.bf = fsub float %i.be, %3                    ; 2 uses
  %i.bg = fcmp olt float %i.ar, %i.bf
  %i.bh = select i1 %i.bg, float %i.ar, float %i.bf ; 2 uses
  %i.bi = fsub float %i.be, %i.bh
  store float %i.bi, ptr %i.bd, align 4, !tbaa !339
  %i.bj = fsub float %i.bb, %i.bh                 ; 3 uses
  %indvars.iv.next114.1 = add nuw nsw i64 %indvars.iv113, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit85.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !342

.thread:                                          ; preds = %.loopexit85, %bb.g, %_Z7ImQsortPvmmPFiPKvS1_E.exit
  %i.bk = icmp sgt i32 %1, 0
  br i1 %i.bk, label %.lr.ph99.preheader, label %.loopexit84

.lr.ph99.preheader:                               ; preds = %.thread
  %wide.trip.count119 = zext nneg i32 %1 to i64   ; 2 uses
  %xtraiter149 = and i64 %wide.trip.count119, 1
  %i.bl = icmp eq i32 %1, 1
  br i1 %i.bl, label %.lr.ph99.epil.preheader, label %.lr.ph99.preheader.new

.lr.ph99.preheader.new:                           ; preds = %.lr.ph99.preheader
  %unroll_iter153 = and i64 %wide.trip.count119, 2147483646
  br label %.lr.ph99

.preheader83.unr-lcssa:                           ; preds = %.lr.ph99
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %.preheader83, label %.lr.ph99.epil.preheader

.lr.ph99.epil.preheader:                          ; preds = %.preheader83.unr-lcssa, %.lr.ph99.preheader
  %indvars.iv116.epil.init = phi i64 [ 0, %.lr.ph99.preheader ], [ %indvars.iv.next117.1, %.preheader83.unr-lcssa ]
  %.398.epil.init = phi float [ 0.000000e+00, %.lr.ph99.preheader ], [ %i.cv, %.preheader83.unr-lcssa ]
  %lcmp.mod152 = trunc i32 %1 to i1
  tail call void @llvm.assume(i1 %lcmp.mod152)
  %i.bm = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116.epil.init
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 4 ; 2 uses
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !339 ; 2 uses
  %i.bp = fptosi float %i.bo to i32
  %i.bq = sitofp i32 %i.bp to float               ; 2 uses
  %i.br = fsub float %i.bo, %i.bq
  %i.bs = fadd float %.398.epil.init, %i.br
  store float %i.bq, ptr %i.bn, align 4, !tbaa !339
  br label %.preheader83

.preheader83:                                     ; preds = %.preheader83.unr-lcssa, %.lr.ph99.epil.preheader
  %.lcssa = phi float [ %i.cv, %.preheader83.unr-lcssa ], [ %i.bs, %.lr.ph99.epil.preheader ] ; 2 uses
  %i.bt = fcmp ogt float %.lcssa, 0.000000e+00
  br i1 %i.bt, label %.preheader.us.preheader, label %.loopexit84

.preheader.us.preheader:                          ; preds = %.preheader83
  %i.bu = zext nneg i32 %1 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us, %.preheader.us.preheader
  %indvars.iv121 = phi i64 [ %indvars.iv.next122.mux, %.preheader.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  %.5102.us = phi float [ %i.ce, %.preheader.us ], [ %.lcssa, %.preheader.us.preheader ]
  %i.bv = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv121 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !343
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !339 ; 2 uses
  %i.ca = fsub float %i.bx, %i.bz                 ; 2 uses
  %i.cb = fcmp olt float %i.ca, 1.000000e+00
  %i.cc = select i1 %i.cb, float %i.ca, float 1.000000e+00 ; 2 uses
  %i.cd = fadd float %i.bz, %i.cc
  store float %i.cd, ptr %i.by, align 4, !tbaa !339
  %i.ce = fsub float %.5102.us, %i.cc             ; 2 uses
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.cf = icmp samesign ult i64 %indvars.iv.next122, %i.bu
  %i.cg = fcmp ogt float %i.ce, 0.000000e+00      ; 2 uses
  %i.ch = and i1 %i.cf, %i.cg
  %indvars.iv.next122.mux = select i1 %i.ch, i64 %indvars.iv.next122, i64 0
  br i1 %i.cg, label %.preheader.us, label %.loopexit84, !llvm.loop !344

.lr.ph99:                                         ; preds = %.lr.ph99, %.lr.ph99.preheader.new
  %indvars.iv116 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %indvars.iv.next117.1, %.lr.ph99 ] ; 3 uses
  %.398 = phi float [ 0.000000e+00, %.lr.ph99.preheader.new ], [ %i.cv, %.lr.ph99 ]
  %niter154 = phi i64 [ 0, %.lr.ph99.preheader.new ], [ %niter154.next.1, %.lr.ph99 ]
  %i.ci = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4 ; 2 uses
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !339 ; 2 uses
  %i.cl = fptosi float %i.ck to i32
  %i.cm = sitofp i32 %i.cl to float               ; 2 uses
  %i.cn = fsub float %i.ck, %i.cm
  %i.co = fadd float %.398, %i.cn
  store float %i.cm, ptr %i.cj, align 4, !tbaa !339
  %i.cp = getelementptr inbounds nuw [12 x i8], ptr %0, i64 %indvars.iv116
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 4, !tbaa !339 ; 2 uses
  %i.cs = fptosi float %i.cr to i32
  %i.ct = sitofp i32 %i.cs to float               ; 2 uses
  %i.cu = fsub float %i.cr, %i.ct
  %i.cv = fadd float %i.co, %i.cu                 ; 3 uses
  store float %i.ct, ptr %i.cq, align 4, !tbaa !339
  %indvars.iv.next117.1 = add nuw nsw i64 %indvars.iv116, 2 ; 2 uses
  %niter154.next.1 = add nuw i64 %niter154, 2     ; 2 uses
  %niter154.ncmp.1 = icmp eq i64 %niter154.next.1, %unroll_iter153
  br i1 %niter154.ncmp.1, label %.preheader83.unr-lcssa, label %.lr.ph99, !llvm.loop !345

.loopexit84:                                      ; preds = %.preheader.us, %bb.a, %.thread, %.preheader83, %bb.b, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_ZL23ShrinkWidthItemComparerPKvS0_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load float, ptr %i.a, align 4, !tbaa !339
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.d = load float, ptr %i.c, align 4, !tbaa !339
  %i.e = fsub float %i.b, %i.d
  %i.f = fptosi float %i.e to i32                 ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i32, ptr %1, align 4, !tbaa !346
  %i.h = load i32, ptr %0, align 4, !tbaa !346
  %i.i = sub nsw i32 %i.g, %i.h
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.1 = phi i32 [ %i.i, %bb.b ], [ %i.f, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui10BeginComboEPKcS1_i(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.ImVec2, align 8             ; 4 uses
  %4 = alloca %struct.ImRect, align 8             ; 16 uses
  %5 = alloca %struct.ImRect, align 8             ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 3 uses
  %6 = alloca %struct.ImVec2, align 4             ; 5 uses
  %7 = alloca %struct.ImVec2, align 4             ; 5 uses
  %8 = alloca %struct.ImVec2, align 8             ; 4 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !11   ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 206
  store i8 1, ptr %i.f, align 2, !tbaa !140
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 7928 ; 3 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !347
  store i32 0, ptr %i.g, align 8, !tbaa !348
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 209
  %i.j = load i8, ptr %i.i, align 1, !tbaa !164, !range !165, !noundef !166
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.e, ptr noundef %0, ptr noundef null) ; 4 uses
  %i.m = and i32 %2, 128
  %i.n = and i32 %2, 32
  %.not89 = icmp eq i32 %i.n, 0                   ; 3 uses
  br i1 %.not89, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = tail call noundef float @_ZN5ImGui14GetFrameHeightEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ] ; 5 uses
  %i.q = tail call noundef ptr @_ZN5ImGui19FindRenderedTextEndEPKcS1_(ptr noundef %0, ptr noundef null) ; 2 uses
  %i.r = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef %0, ptr noundef %i.q, i1 noundef zeroext false, float noundef -1.000000e+00) ; 2 uses
  %i.s = icmp ne i32 %i.m, 0                      ; 2 uses
  %i.t = icmp ne ptr %1, null
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = tail call <2 x float> @_ZN5ImGui12CalcTextSizeEPKcS1_bf(ptr noundef nonnull %1, ptr noundef null, i1 noundef zeroext false, float noundef -1.000000e+00)
  %.sroa.021.0.vec.extract = extractelement <2 x float> %i.u, i64 0
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.v = phi float [ %.sroa.021.0.vec.extract, %bb.e ], [ 0.000000e+00, %bb.d ]
  %i.w = and i32 %2, 64
  %.not90 = icmp ne i32 %i.w, 0                   ; 3 uses
  br i1 %.not90, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.s, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.x = fadd float %i.p, %i.v
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 3284
  %i.z = load float, ptr %i.y, align 4, !tbaa !190
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.z, float 2.000000e+00, float %i.x)
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.ab = tail call noundef float @_ZN5ImGui13CalcItemWidthEv()
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.h, %bb.i
  %i.ac = phi float [ %i.ab, %bb.i ], [ %i.aa, %bb.h ], [ %i.p, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #41
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  %.sroa.023.4.vec.extract = extractelement <2 x float> %i.r, i64 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 3284 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 3288 ; 3 uses
  %i.ag = load float, ptr %i.af, align 8, !tbaa !187 ; 2 uses
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ag, float 2.000000e+00, float %.sroa.023.4.vec.extract)
  %i.ai = load <2 x float>, ptr %i.ad, align 4, !tbaa !171 ; 4 uses
  %i.aj = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.ak = insertelement <2 x float> %i.aj, float %i.ah, i64 1
  %i.al = fadd <2 x float> %i.ak, %i.ai           ; 2 uses
  store <2 x float> %i.ai, ptr %4, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store <2 x float> %i.al, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %.sroa.023.0.vec.extract = extractelement <2 x float> %i.r, i64 0 ; 2 uses
  %i.an = fcmp ogt float %.sroa.023.0.vec.extract, 0.000000e+00 ; 2 uses
  br i1 %i.an, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 3308
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !188
  %i.aq = fadd float %.sroa.023.0.vec.extract, %i.ap
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.ar = phi float [ %i.aq, %bb.k ], [ 0.000000e+00, %bb.j ]
  %i.as = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ar, i64 0
  %i.at = fadd <2 x float> %i.as, %i.al           ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 12 ; 3 uses
  store <2 x float> %i.ai, ptr %5, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  store <2 x float> %i.at, ptr %i.av, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #41
  %i.aw = fsub <2 x float> %i.at, %i.ai
  store <2 x float> %i.aw, ptr %3, align 8
  call void @_ZN5ImGui8ItemSizeERK6ImVec2f(ptr noundef nonnull align 4 dereferenceable(8) %3, float noundef %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  %i.ax = call noundef zeroext i1 @_ZN5ImGui7ItemAddERK6ImRectjPS1_i(ptr noundef nonnull align 4 dereferenceable(16) %5, i32 noundef %i.l, ptr noundef nonnull %4, i32 noundef 0)
  br i1 %i.ax, label %bb.m, label %bb.ad

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.ay = call noundef zeroext i1 @_ZN5ImGui14ButtonBehaviorERK6ImRectjPbS3_i(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, i32 noundef 0)
  %i.az = call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef nonnull @.str.15, i64 noundef 0, i32 noundef %i.l) ; 3 uses
  %i.ba = call noundef zeroext i1 @_ZN5ImGui11IsPopupOpenEji(i32 noundef %i.az, i32 noundef 0) ; 2 uses
  %.not = xor i1 %i.ay, true
  %or.cond3 = or i1 %i.ba, %.not
  br i1 %or.cond3, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bb = call noundef zeroext i1 @_ZN5ImGui11OpenPopupExEji(i32 noundef %i.az, i32 noundef 0) ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.087 = phi i1 [ %i.ba, %bb.m ], [ true, %bb.n ] ; 2 uses
  %i.bc = load i8, ptr %i.a, align 1, !tbaa !225, !range !165, !noundef !166
  %i.bd = trunc nuw i8 %i.bc to i1                ; 2 uses
  %i.be = select i1 %i.bd, i32 8, i32 7
  %i.bf = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.be, float noundef 1.000000e+00)
  %i.bg = load float, ptr %4, align 8, !tbaa !232 ; 2 uses
  %i.bh = load float, ptr %i.am, align 8, !tbaa !233
  %i.bi = fsub float %i.bh, %i.p                  ; 2 uses
  %i.bj = fcmp oge float %i.bg, %i.bi
  %i.bk = select i1 %i.bj, float %i.bg, float %i.bi ; 6 uses
  call void @_ZN5ImGui15RenderNavCursorERK6ImRectjif(ptr noundef nonnull align 4 dereferenceable(16) %4, i32 noundef %i.l, i32 noundef 0, float noundef -1.000000e+00)
  br i1 %.not90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %i.e, i64 712
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #41
  %i.bn = load float, ptr %i.au, align 4, !tbaa !178
  store float %i.bk, ptr %6, align 4, !tbaa !176
  %i.bo = getelementptr inbounds nuw i8, ptr %6, i64 4
  store float %i.bn, ptr %i.bo, align 4, !tbaa !181
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 3292
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !228
  %i.br = select i1 %.not89, i32 80, i32 240
  call void @_ZN10ImDrawList13AddRectFilledERK6ImVec2S2_jfi(ptr noundef nonnull align 8 dereferenceable(224) %i.bm, ptr noundef nonnull align 4 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(8) %6, i32 noundef %i.bf, float noundef %i.bq, i32 noundef %i.br)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #41
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  br i1 %.not89, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bs = or i1 %.087, %i.bd
  %i.bt = select i1 %i.bs, i32 23, i32 22
  %i.bu = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef %i.bt, float noundef 1.000000e+00)
  %i.bv = call noundef i32 @_ZN5ImGui11GetColorU32Eif(i32 noundef 0, float noundef 1.000000e+00)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 712 ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !186
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #41
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.bz = load float, ptr %i.by, align 4, !tbaa !177
end_hunk_0
begin_hunk_1_@_ZN5ImGui15DataTypeApplyOpEiiPvPKvS2_:bb.a
  %i.dl = load double, ptr %4, align 8, !tbaa !390
  %i.dm = fadd double %i.dk, %i.dl
  store double %i.dm, ptr %2, align 8, !tbaa !390
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.dn = load double, ptr %3, align 8, !tbaa !390
  %i.do = load double, ptr %4, align 8, !tbaa !390
  %i.dp = fsub double %i.dn, %i.do
  store double %i.dp, ptr %2, align 8, !tbaa !390
  br label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.ai, %bb.af, %_Z18ImAddClampOverflowIxET_S0_S0_S0_S0_.exit, %bb.x, %_Z18ImAddClampOverflowIiET_S0_S0_S0_S0_.exit, %_Z18ImAddClampOverflowItET_S0_S0_S0_S0_.exit, %_Z18ImAddClampOverflowIsET_S0_S0_S0_S0_.exit, %_Z18ImAddClampOverflowIhET_S0_S0_S0_S0_.exit, %_Z18ImAddClampOverflowIaET_S0_S0_S0_S0_.exit, %bb.ak, %bb.ah, %bb.ae, %bb.z, %bb.w, %bb.r, %bb.q, %bb.j, %bb.i, %bb.b, %bb.am, %bb.aj, %bb.ag, %_Z18ImSubClampOverflowIxET_S0_S0_S0_S0_.exit, %bb.y, %_Z18ImSubClampOverflowIiET_S0_S0_S0_S0_.exit, %_Z18ImSubClampOverflowItET_S0_S0_S0_S0_.exit, %_Z18ImSubClampOverflowIsET_S0_S0_S0_S0_.exit, %_Z18ImSubClampOverflowIhET_S0_S0_S0_S0_.exit, %_Z18ImSubClampOverflowIaET_S0_S0_S0_S0_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5ImGui21DataTypeApplyFromTextEPKciPvS1_S2_(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3, ptr nofree noundef readonly captures(address_is_null) %4) local_unnamed_addr #16 {
bb.a:
  %i.a = ptrtoaddr ptr %3 to i64                  ; 2 uses
  %5 = alloca %struct.ImGuiDataTypeStorage, align 1 ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = sext i32 %1 to i64                       ; 3 uses
  %i.e = getelementptr inbounds [32 x i8], ptr @_ZL13GDataTypeInfo, i64 %i.d ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #41
  %i.f = load i64, ptr %i.e, align 16, !tbaa !391 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %5, ptr align 1 %2, i64 %i.f, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.035 = phi ptr [ %0, %bb.a ], [ %i.h, %bb.c ]  ; 3 uses
  %i.g = load i8, ptr %.035, align 1, !tbaa !387
  switch i8 %i.g, label %bb.f [
    i8 32, label %bb.c
    i8 9, label %bb.c
    i8 0, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %.035, i64 1
  br label %bb.b, !llvm.loop !394

bb.d:                                             ; preds = %bb.b
  %.not38 = icmp eq ptr %4, null
  br i1 %.not38, label %bb.af, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %2, ptr nonnull align 1 %4, i64 %i.f, i1 false)
  %bcmp = call i32 @bcmp(ptr nonnull %5, ptr %2, i64 %i.f)
  %i.i = icmp ne i32 %bcmp, 0
  br label %bb.af

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.j = and i32 %1, -2
  %or.cond = icmp eq i32 %i.j, 8
  br i1 %or.cond, label %.sink.split, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.k = load i8, ptr %3, align 1, !tbaa !387
  %.not.i.i = icmp eq i8 %i.k, 37
  br i1 %.not.i.i, label %.preheader.i.i, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit

.preheader.i.i:                                   ; preds = %bb.g, %.thread.i.i
  %i.l = phi i32 [ %i.aa, %.thread.i.i ], [ 37, %bb.g ] ; 2 uses
  %.01926.i.i = phi ptr [ %i.z, %.thread.i.i ], [ %3, %bb.g ] ; 3 uses
  %i.m = phi i8 [ %.pr.i.i, %.thread.i.i ], [ 37, %bb.g ] ; 2 uses
  %i.n = add i8 %i.m, -65
  %or.cond.i.i = icmp ult i8 %i.n, 26
  br i1 %or.cond.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.preheader.i.i
  %i.o = add nsw i32 %i.l, -65
  %i.p = shl nuw nsw i32 1, %i.o
  %i.q = and i32 %i.p, 2304
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.i, label %.thread.i.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 1
  br label %_Z20ImParseFormatFindEndPKc.exit.i

bb.j:                                             ; preds = %.preheader.i.i
  %i.t = add i8 %i.m, -97
  %or.cond5.i.i = icmp ult i8 %i.t, 26
  br i1 %or.cond5.i.i, label %bb.k, label %.thread.i.i

bb.k:                                             ; preds = %bb.j
  %i.u = add nsw i32 %i.l, -97
  %i.v = shl nuw nsw i32 1, %i.u
  %i.w = and i32 %i.v, 38275712
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %.thread.i.i

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 1
  br label %_Z20ImParseFormatFindEndPKc.exit.i

.thread.i.i:                                      ; preds = %bb.k, %bb.j, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.01926.i.i, i64 1 ; 3 uses
  %.pr.i.i = load i8, ptr %i.z, align 1, !tbaa !387 ; 3 uses
  %i.aa = sext i8 %.pr.i.i to i32
  %.not22.i.i = icmp eq i8 %.pr.i.i, 0
  br i1 %.not22.i.i, label %_Z20ImParseFormatFindEndPKc.exit.i, label %.preheader.i.i, !llvm.loop !395

_Z20ImParseFormatFindEndPKc.exit.i:               ; preds = %.thread.i.i, %bb.l, %bb.i
  %.2.i.i = phi ptr [ %i.y, %bb.l ], [ %i.s, %bb.i ], [ %i.z, %.thread.i.i ] ; 2 uses
  %i.ab = icmp ult ptr %3, %.2.i.i
  br i1 %i.ab, label %.lr.ph.i.preheader, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit

.lr.ph.i.preheader:                               ; preds = %_Z20ImParseFormatFindEndPKc.exit.i
  %.2.i.i58 = ptrtoaddr ptr %.2.i.i to i64        ; 2 uses
  %i.ac = sub i64 %.2.i.i58, %i.a                 ; 3 uses
  %xtraiter = and i64 %i.ac, 1
  %i.ad = add i64 %.2.i.i58, -1
  %i.ae = icmp eq i64 %i.ad, %i.a
  br i1 %i.ae, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter = and i64 %i.ac, -2
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i.preheader.new
  %.050.i = phi i1 [ false, %.lr.ph.i.preheader.new ], [ %.1.i.1, %bb.s ] ; 2 uses
  %.04249.i = phi ptr [ %3, %.lr.ph.i.preheader.new ], [ %i.am, %bb.s ] ; 3 uses
  %.04348.i = phi ptr [ %i.b, %.lr.ph.i.preheader.new ], [ %.2.i.1, %bb.s ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter.next.1, %bb.s ]
  %i.af = getelementptr inbounds nuw i8, ptr %.04249.i, i64 1
  %i.ag = load i8, ptr %.04249.i, align 1, !tbaa !387
  %.fr45.i = freeze i8 %i.ag                      ; 5 uses
  br i1 %.050.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i
  %i.ah = add i8 %.fr45.i, -48
  %or.cond.i = icmp ult i8 %i.ah, 10
  br i1 %or.cond.i, label %.lr.ph.i.1, label %switch.early.test.i, !llvm.loop !396

switch.early.test.i:                              ; preds = %bb.m
  switch i8 %.fr45.i, label %bb.n [
    i8 46, label %.lr.ph.i.1
    i8 43, label %.lr.ph.i.1
    i8 35, label %.lr.ph.i.1
  ], !llvm.loop !396

bb.n:                                             ; preds = %switch.early.test.i, %.lr.ph.i
  %i.ai = and i8 %.fr45.i, -33
  %i.aj = add i8 %i.ai, -65
  %narrow.i = icmp ult i8 %i.aj, 26
  %i.ak = or i1 %.050.i, %narrow.i                ; 4 uses
  switch i8 %.fr45.i, label %bb.o [
    i8 95, label %.lr.ph.i.1
    i8 39, label %.lr.ph.i.1
    i8 36, label %.lr.ph.i.1
  ]

bb.o:                                             ; preds = %bb.n
  %i.al = getelementptr inbounds nuw i8, ptr %.04348.i, i64 1
  store i8 %.fr45.i, ptr %.04348.i, align 1, !tbaa !387
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.o, %bb.n, %bb.n, %bb.n, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.m
  %.2.i = phi ptr [ %.04348.i, %bb.m ], [ %.04348.i, %switch.early.test.i ], [ %.04348.i, %switch.early.test.i ], [ %.04348.i, %switch.early.test.i ], [ %i.al, %bb.o ], [ %.04348.i, %bb.n ], [ %.04348.i, %bb.n ], [ %.04348.i, %bb.n ] ; 9 uses
  %.1.i = phi i1 [ false, %bb.m ], [ false, %switch.early.test.i ], [ false, %switch.early.test.i ], [ false, %switch.early.test.i ], [ %i.ak, %bb.o ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ], [ %i.ak, %bb.n ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.04249.i, i64 2 ; 2 uses
  %i.an = load i8, ptr %i.af, align 1, !tbaa !387
  %.fr45.i.1 = freeze i8 %i.an                    ; 5 uses
  br i1 %.1.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.1
  %i.ao = add i8 %.fr45.i.1, -48
  %or.cond.i.1 = icmp ult i8 %i.ao, 10
  br i1 %or.cond.i.1, label %bb.s, label %switch.early.test.i.1, !llvm.loop !396

switch.early.test.i.1:                            ; preds = %bb.p
  switch i8 %.fr45.i.1, label %bb.q [
    i8 46, label %bb.s
    i8 43, label %bb.s
    i8 35, label %bb.s
  ], !llvm.loop !396

bb.q:                                             ; preds = %switch.early.test.i.1, %.lr.ph.i.1
  %i.ap = and i8 %.fr45.i.1, -33
  %i.aq = add i8 %i.ap, -65
  %narrow.i.1 = icmp ult i8 %i.aq, 26
  %i.ar = or i1 %.1.i, %narrow.i.1                ; 4 uses
  switch i8 %.fr45.i.1, label %bb.r [
    i8 95, label %bb.s
    i8 39, label %bb.s
    i8 36, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.as = getelementptr inbounds nuw i8, ptr %.2.i, i64 1
  store i8 %.fr45.i.1, ptr %.2.i, align 1, !tbaa !387
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.q, %bb.q, %switch.early.test.i.1, %switch.early.test.i.1, %switch.early.test.i.1, %bb.p
  %.2.i.1 = phi ptr [ %.2.i, %bb.p ], [ %.2.i, %switch.early.test.i.1 ], [ %.2.i, %switch.early.test.i.1 ], [ %.2.i, %switch.early.test.i.1 ], [ %i.as, %bb.r ], [ %.2.i, %bb.q ], [ %.2.i, %bb.q ], [ %.2.i, %bb.q ] ; 3 uses
  %.1.i.1 = phi i1 [ false, %bb.p ], [ false, %switch.early.test.i.1 ], [ false, %switch.early.test.i.1 ], [ false, %switch.early.test.i.1 ], [ %i.ar, %bb.r ], [ %i.ar, %bb.q ], [ %i.ar, %bb.q ], [ %i.ar, %bb.q ] ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa, label %.lr.ph.i

_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa: ; preds = %bb.s
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.050.i.epil.init = phi i1 [ false, %.lr.ph.i.preheader ], [ %.1.i.1, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa ]
  %.04249.i.epil.init = phi ptr [ %3, %.lr.ph.i.preheader ], [ %i.am, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa ]
  %.04348.i.epil.init = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %.2.i.1, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa ] ; 12 uses
  %lcmp.mod60 = trunc i64 %i.ac to i1
  tail call void @llvm.assume(i1 %lcmp.mod60)
  %i.at = load i8, ptr %.04249.i.epil.init, align 1, !tbaa !387
  %.fr45.i.epil = freeze i8 %i.at                 ; 4 uses
  br i1 %.050.i.epil.init, label %bb.u, label %bb.t

bb.t:                                             ; preds = %.lr.ph.i.epil.preheader
  %i.au = add i8 %.fr45.i.epil, -48
  %or.cond.i.epil = icmp ult i8 %i.au, 10
  br i1 %or.cond.i.epil, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit, label %switch.early.test.i.epil, !llvm.loop !396

switch.early.test.i.epil:                         ; preds = %bb.t
  switch i8 %.fr45.i.epil, label %bb.v [
    i8 46, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 43, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 35, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 95, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 39, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 36, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
  ]

bb.u:                                             ; preds = %.lr.ph.i.epil.preheader
  switch i8 %.fr45.i.epil, label %bb.v [
    i8 95, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 39, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
    i8 36, label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
  ]

bb.v:                                             ; preds = %switch.early.test.i.epil, %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %.04348.i.epil.init, i64 1
  store i8 %.fr45.i.epil, ptr %.04348.i.epil.init, align 1, !tbaa !387
  br label %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit

_Z32ImParseFormatSanitizeForScanningPKcPcm.exit:  ; preds = %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa, %switch.early.test.i.epil, %switch.early.test.i.epil, %switch.early.test.i.epil, %switch.early.test.i.epil, %switch.early.test.i.epil, %switch.early.test.i.epil, %bb.v, %bb.u, %bb.u, %bb.u, %bb.t, %bb.g, %_Z20ImParseFormatFindEndPKc.exit.i
  %.043.lcssa.i = phi ptr [ %i.b, %_Z20ImParseFormatFindEndPKc.exit.i ], [ %i.b, %bb.g ], [ %.2.i.1, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit.loopexit.unr-lcssa ], [ %.04348.i.epil.init, %bb.t ], [ %.04348.i.epil.init, %switch.early.test.i.epil ], [ %.04348.i.epil.init, %switch.early.test.i.epil ], [ %.04348.i.epil.init, %switch.early.test.i.epil ], [ %i.av, %bb.v ], [ %.04348.i.epil.init, %bb.u ], [ %.04348.i.epil.init, %bb.u ], [ %.04348.i.epil.init, %bb.u ], [ %.04348.i.epil.init, %switch.early.test.i.epil ], [ %.04348.i.epil.init, %switch.early.test.i.epil ], [ %.04348.i.epil.init, %switch.early.test.i.epil ]
  store i8 0, ptr %.043.lcssa.i, align 1, !tbaa !387
  %i.aw = load i8, ptr %i.b, align 16, !tbaa !387
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %.sink.split, label %bb.w

.sink.split:                                      ; preds = %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit, %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !397
  br label %bb.w

bb.w:                                             ; preds = %.sink.split, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit
  %.034 = phi ptr [ %i.b, %_Z32ImParseFormatSanitizeForScanningPKcPcm.exit ], [ %i.az, %.sink.split ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  store i32 0, ptr %i.c, align 4, !tbaa !192
  %i.ba = add nsw i64 %i.d, -4
  %i.bb = icmp ult i64 %i.ba, 6
  %i.bc = select i1 %i.bb, ptr %2, ptr %i.c
  %i.bd = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %.035, ptr noundef %.034, ptr noundef %i.bc) #41
  %i.be = icmp slt i32 %i.bd, 1
  br i1 %i.be, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bf = add nsw i64 %i.d, -10
  %i.bg = icmp ult i64 %i.bf, -6
  br i1 %i.bg, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  switch i32 %1, label %bb.ad [
    i32 0, label %bb.z
    i32 1, label %bb.aa
    i32 2, label %bb.ab
    i32 3, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  %i.bh = load i32, ptr %i.c, align 4, !tbaa !192
  %i.bi = call i32 @llvm.smax.i32(i32 %i.bh, i32 -128)
  %i.bj = call i32 @llvm.smin.i32(i32 %i.bi, i32 127)
  %i.bk = trunc nsw i32 %i.bj to i8
  store i8 %i.bk, ptr %2, align 1, !tbaa !387
  br label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bl = load i32, ptr %i.c, align 4, !tbaa !192
  %i.bm = call i32 @llvm.smax.i32(i32 %i.bl, i32 0)
  %i.bn = call i32 @llvm.umin.i32(i32 %i.bm, i32 255)
  %i.bo = trunc nuw i32 %i.bn to i8
  store i8 %i.bo, ptr %2, align 1, !tbaa !387
  br label %bb.ad

bb.ab:                                            ; preds = %bb.y
  %i.bp = load i32, ptr %i.c, align 4, !tbaa !192
  %i.bq = call i32 @llvm.smax.i32(i32 %i.bp, i32 -32768)
  %i.br = call i32 @llvm.smin.i32(i32 %i.bq, i32 32767)
  %i.bs = trunc nsw i32 %i.br to i16
  store i16 %i.bs, ptr %2, align 2, !tbaa !207
  br label %bb.ad

bb.ac:                                            ; preds = %bb.y
  %i.bt = load i32, ptr %i.c, align 4, !tbaa !192
  %i.bu = call i32 @llvm.smax.i32(i32 %i.bt, i32 0)
  %i.bv = call i32 @llvm.umin.i32(i32 %i.bu, i32 65535)
  %i.bw = trunc nuw i32 %i.bv to i16
  store i16 %i.bw, ptr %2, align 2, !tbaa !207
  br label %bb.ad

bb.ad:                                            ; preds = %bb.y, %bb.z, %bb.ab, %bb.ac, %bb.aa, %bb.x
  %bcmp39 = call i32 @bcmp(ptr nonnull %5, ptr %2, i64 %i.f)
  %i.bx = icmp ne i32 %bcmp39, 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.w, %bb.ad
  %.0 = phi i1 [ %i.bx, %bb.ad ], [ false, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  br label %bb.af

bb.af:                                            ; preds = %bb.d, %bb.ae, %bb.e
  %.1 = phi i1 [ %.0, %bb.ae ], [ %i.i, %bb.e ], [ false, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #41
  ret i1 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define noundef ptr @_Z32ImParseFormatSanitizeForScanningPKcPcm(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef returned writeonly captures(ret: address, provenance) %1, i64 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = ptrtoaddr ptr %0 to i64                  ; 2 uses
  %i.b = load i8, ptr %0, align 1, !tbaa !387
  %.not.i = icmp eq i8 %i.b, 37
  br i1 %.not.i, label %.preheader.i, label %._crit_edge

.preheader.i:                                     ; preds = %bb.a, %.thread.i
  %i.c = phi i32 [ %i.r, %.thread.i ], [ 37, %bb.a ] ; 2 uses
  %.01926.i = phi ptr [ %i.q, %.thread.i ], [ %0, %bb.a ] ; 3 uses
  %i.d = phi i8 [ %.pr.i, %.thread.i ], [ 37, %bb.a ] ; 2 uses
  %i.e = add i8 %i.d, -65
  %or.cond.i = icmp ult i8 %i.e, 26
  br i1 %or.cond.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %.preheader.i
  %i.f = add nsw i32 %i.c, -65
  %i.g = shl nuw nsw i32 1, %i.f
  %i.h = and i32 %i.g, 2304
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.01926.i, i64 1
  br label %_Z20ImParseFormatFindEndPKc.exit

bb.d:                                             ; preds = %.preheader.i
  %i.k = add i8 %i.d, -97
  %or.cond5.i = icmp ult i8 %i.k, 26
  br i1 %or.cond5.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.c, -97
  %i.m = shl nuw nsw i32 1, %i.l
  %i.n = and i32 %i.m, 38275712
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %.thread.i

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %.01926.i, i64 1
  br label %_Z20ImParseFormatFindEndPKc.exit

.thread.i:                                        ; preds = %bb.e, %bb.d, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.01926.i, i64 1 ; 3 uses
  %.pr.i = load i8, ptr %i.q, align 1, !tbaa !387 ; 3 uses
  %i.r = sext i8 %.pr.i to i32
  %.not22.i = icmp eq i8 %.pr.i, 0
  br i1 %.not22.i, label %_Z20ImParseFormatFindEndPKc.exit, label %.preheader.i, !llvm.loop !395

_Z20ImParseFormatFindEndPKc.exit:                 ; preds = %.thread.i, %bb.c, %bb.f
  %.2.i = phi ptr [ %i.p, %bb.f ], [ %i.j, %bb.c ], [ %i.q, %.thread.i ] ; 2 uses
  %i.s = icmp ult ptr %0, %.2.i
  br i1 %i.s, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %_Z20ImParseFormatFindEndPKc.exit
  %.2.i62 = ptrtoaddr ptr %.2.i to i64            ; 2 uses
  %i.t = sub i64 %.2.i62, %i.a                    ; 3 uses
  %xtraiter = and i64 %i.t, 1
  %i.u = add i64 %.2.i62, -1
  %i.v = icmp eq i64 %i.u, %i.a
  br i1 %i.v, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.t, -2
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.m, %.lr.ph.preheader.new
  %.050 = phi i1 [ false, %.lr.ph.preheader.new ], [ %.1.1, %bb.m ] ; 2 uses
  %.04249 = phi ptr [ %0, %.lr.ph.preheader.new ], [ %i.ad, %bb.m ] ; 3 uses
  %.04348 = phi ptr [ %1, %.lr.ph.preheader.new ], [ %.2.1, %bb.m ] ; 9 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.m ]
  %i.w = getelementptr inbounds nuw i8, ptr %.04249, i64 1
  %i.x = load i8, ptr %.04249, align 1, !tbaa !387
  %.fr45 = freeze i8 %i.x                         ; 5 uses
  br i1 %.050, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.y = add i8 %.fr45, -48
  %or.cond = icmp ult i8 %i.y, 10
  br i1 %or.cond, label %.lr.ph.1, label %switch.early.test, !llvm.loop !396

switch.early.test:                                ; preds = %bb.g
  switch i8 %.fr45, label %bb.h [
    i8 46, label %.lr.ph.1
    i8 43, label %.lr.ph.1
    i8 35, label %.lr.ph.1
  ], !llvm.loop !396

bb.h:                                             ; preds = %switch.early.test, %.lr.ph
  %i.z = and i8 %.fr45, -33
  %i.aa = add i8 %i.z, -65
  %narrow = icmp ult i8 %i.aa, 26
  %i.ab = or i1 %.050, %narrow                    ; 4 uses
  switch i8 %.fr45, label %bb.i [
    i8 95, label %.lr.ph.1
    i8 39, label %.lr.ph.1
    i8 36, label %.lr.ph.1
  ]

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.04348, i64 1
  store i8 %.fr45, ptr %.04348, align 1, !tbaa !387
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.h, %bb.h, %bb.h, %bb.i, %bb.g, %switch.early.test, %switch.early.test, %switch.early.test
  %.2 = phi ptr [ %.04348, %bb.g ], [ %.04348, %switch.early.test ], [ %.04348, %switch.early.test ], [ %.04348, %switch.early.test ], [ %i.ac, %bb.i ], [ %.04348, %bb.h ], [ %.04348, %bb.h ], [ %.04348, %bb.h ] ; 9 uses
  %.1 = phi i1 [ false, %bb.g ], [ false, %switch.early.test ], [ false, %switch.early.test ], [ false, %switch.early.test ], [ %i.ab, %bb.i ], [ %i.ab, %bb.h ], [ %i.ab, %bb.h ], [ %i.ab, %bb.h ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.04249, i64 2 ; 2 uses
  %i.ae = load i8, ptr %i.w, align 1, !tbaa !387
  %.fr45.1 = freeze i8 %i.ae                      ; 5 uses
  br i1 %.1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.lr.ph.1
  %i.af = add i8 %.fr45.1, -48
  %or.cond.1 = icmp ult i8 %i.af, 10
  br i1 %or.cond.1, label %bb.m, label %switch.early.test.1, !llvm.loop !396

switch.early.test.1:                              ; preds = %bb.j
  switch i8 %.fr45.1, label %bb.k [
    i8 46, label %bb.m
    i8 43, label %bb.m
    i8 35, label %bb.m
  ], !llvm.loop !396

bb.k:                                             ; preds = %switch.early.test.1, %.lr.ph.1
  %i.ag = and i8 %.fr45.1, -33
  %i.ah = add i8 %i.ag, -65
  %narrow.1 = icmp ult i8 %i.ah, 26
  %i.ai = or i1 %.1, %narrow.1                    ; 4 uses
  switch i8 %.fr45.1, label %bb.l [
    i8 95, label %bb.m
    i8 39, label %bb.m
    i8 36, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.aj = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 %.fr45.1, ptr %.2, align 1, !tbaa !387
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k, %bb.k, %switch.early.test.1, %switch.early.test.1, %switch.early.test.1, %bb.j
  %.2.1 = phi ptr [ %.2, %bb.j ], [ %.2, %switch.early.test.1 ], [ %.2, %switch.early.test.1 ], [ %.2, %switch.early.test.1 ], [ %i.aj, %bb.l ], [ %.2, %bb.k ], [ %.2, %bb.k ], [ %.2, %bb.k ] ; 3 uses
  %.1.1 = phi i1 [ false, %bb.j ], [ false, %switch.early.test.1 ], [ false, %switch.early.test.1 ], [ false, %switch.early.test.1 ], [ %i.ai, %bb.l ], [ %i.ai, %bb.k ], [ %i.ai, %bb.k ], [ %i.ai, %bb.k ] ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.m
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %.050.epil.init = phi i1 [ false, %.lr.ph.preheader ], [ %.1.1, %._crit_edge.loopexit.unr-lcssa ]
  %.04249.epil.init = phi ptr [ %0, %.lr.ph.preheader ], [ %i.ad, %._crit_edge.loopexit.unr-lcssa ]
  %.04348.epil.init = phi ptr [ %1, %.lr.ph.preheader ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ] ; 12 uses
  %lcmp.mod64 = trunc i64 %i.t to i1
  tail call void @llvm.assume(i1 %lcmp.mod64)
  %i.ak = load i8, ptr %.04249.epil.init, align 1, !tbaa !387
  %.fr45.epil = freeze i8 %i.ak                   ; 4 uses
  br i1 %.050.epil.init, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.epil.preheader
  %i.al = add i8 %.fr45.epil, -48
  %or.cond.epil = icmp ult i8 %i.al, 10
  br i1 %or.cond.epil, label %._crit_edge, label %switch.early.test.epil, !llvm.loop !396

switch.early.test.epil:                           ; preds = %bb.n
  switch i8 %.fr45.epil, label %bb.p [
    i8 46, label %._crit_edge
    i8 43, label %._crit_edge
    i8 35, label %._crit_edge
    i8 95, label %._crit_edge
    i8 39, label %._crit_edge
    i8 36, label %._crit_edge
  ]

bb.o:                                             ; preds = %.lr.ph.epil.preheader
  switch i8 %.fr45.epil, label %bb.p [
    i8 95, label %._crit_edge
    i8 39, label %._crit_edge
    i8 36, label %._crit_edge
  ]

bb.p:                                             ; preds = %switch.early.test.epil, %bb.o
  %i.am = getelementptr inbounds nuw i8, ptr %.04348.epil.init, i64 1
  store i8 %.fr45.epil, ptr %.04348.epil.init, align 1, !tbaa !387
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %switch.early.test.epil, %bb.p, %bb.o, %bb.o, %bb.o, %bb.n, %bb.a, %_Z20ImParseFormatFindEndPKc.exit
  %.043.lcssa = phi ptr [ %1, %_Z20ImParseFormatFindEndPKc.exit ], [ %1, %bb.a ], [ %.2.1, %._crit_edge.loopexit.unr-lcssa ], [ %.04348.epil.init, %bb.n ], [ %.04348.epil.init, %switch.early.test.epil ], [ %.04348.epil.init, %switch.early.test.epil ], [ %.04348.epil.init, %switch.early.test.epil ], [ %i.am, %bb.p ], [ %.04348.epil.init, %bb.o ], [ %.04348.epil.init, %bb.o ], [ %.04348.epil.init, %bb.o ], [ %.04348.epil.init, %switch.early.test.epil ], [ %.04348.epil.init, %switch.early.test.epil ], [ %.04348.epil.init, %switch.early.test.epil ]
  store i8 0, ptr %.043.lcssa, align 1, !tbaa !387
  ret ptr %1
}

; Function Attrs: nounwind
declare i32 @__isoc23_sscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #13

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -1, 2) i32 @_ZN5ImGui15DataTypeCompareEiPKvS1_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #12 {
bb.a:
  switch i32 %0, label %bb.l [
    i32 0, label %bb.b
    i32 1, label %bb.c
    i32 2, label %bb.d
    i32 3, label %bb.e
    i32 4, label %bb.f
    i32 5, label %bb.g
    i32 6, label %bb.h
    i32 7, label %bb.i
    i32 8, label %bb.j
    i32 9, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  %.val = load i8, ptr %1, align 1, !tbaa !387
  %.val21 = load i8, ptr %2, align 1, !tbaa !387
  %.0.i = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i8(i8 %.val, i8 %.val21)
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %.val22 = load i8, ptr %1, align 1, !tbaa !387
  %.val23 = load i8, ptr %2, align 1, !tbaa !387
  %.0.i40 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i8(i8 %.val22, i8 %.val23)
  br label %bb.l

bb.d:                                             ; preds = %bb.a
  %.val24 = load i16, ptr %1, align 2, !tbaa !207
  %.val25 = load i16, ptr %2, align 2, !tbaa !207
  %.0.i41 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i16(i16 %.val24, i16 %.val25)
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %.val26 = load i16, ptr %1, align 2, !tbaa !207
  %.val27 = load i16, ptr %2, align 2, !tbaa !207
  %.0.i42 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i16(i16 %.val26, i16 %.val27)
  br label %bb.l

bb.f:                                             ; preds = %bb.a
  %.val28 = load i32, ptr %1, align 4, !tbaa !192
  %.val29 = load i32, ptr %2, align 4, !tbaa !192
  %.0.i43 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i32(i32 %.val28, i32 %.val29)
  br label %bb.l

bb.g:                                             ; preds = %bb.a
  %.val30 = load i32, ptr %1, align 4, !tbaa !192
  %.val31 = load i32, ptr %2, align 4, !tbaa !192
  %.0.i44 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i32(i32 %.val30, i32 %.val31)
  br label %bb.l

bb.h:                                             ; preds = %bb.a
  %.val32 = load i64, ptr %1, align 8, !tbaa !245
  %.val33 = load i64, ptr %2, align 8, !tbaa !245
  %.0.i45 = tail call noundef range(i32 -1, 2) i32 @llvm.scmp.i32.i64(i64 %.val32, i64 %.val33)
  br label %bb.l

bb.i:                                             ; preds = %bb.a
  %.val34 = load i64, ptr %1, align 8, !tbaa !245
  %.val35 = load i64, ptr %2, align 8, !tbaa !245
  %.0.i46 = tail call noundef range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64 %.val34, i64 %.val35)
  br label %bb.l

bb.j:                                             ; preds = %bb.a
  %.val36 = load float, ptr %1, align 4, !tbaa !171 ; 2 uses
  %.val37 = load float, ptr %2, align 4, !tbaa !171 ; 2 uses
  %i.a = fcmp olt float %.val36, %.val37
  %i.b = fcmp ogt float %.val36, %.val37
  %..i = zext i1 %i.b to i32
  %.0.i47 = select i1 %i.a, i32 -1, i32 %..i
  br label %bb.l

bb.k:                                             ; preds = %bb.a
  %.val38 = load double, ptr %1, align 8, !tbaa !390 ; 2 uses
  %.val39 = load double, ptr %2, align 8, !tbaa !390 ; 2 uses
  %i.c = fcmp olt double %.val38, %.val39
  %i.d = fcmp ogt double %.val38, %.val39
  %..i48 = zext i1 %i.d to i32
  %.0.i49 = select i1 %i.c, i32 -1, i32 %..i48
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %.0.i49, %bb.k ], [ %.0.i, %bb.b ], [ %.0.i40, %bb.c ], [ %.0.i41, %bb.d ], [ %.0.i42, %bb.e ], [ %.0.i43, %bb.f ], [ %.0.i44, %bb.g ], [ %.0.i45, %bb.h ], [ %.0.i46, %bb.i ], [ %.0.i47, %bb.j ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define noundef zeroext i1 @_ZN5ImGui13DataTypeClampEiPvPKvS2_(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree noundef readonly captures(address_is_null) %3) local_unnamed_addr #15 {
bb.a:
  switch i32 %0, label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit [
    i32 0, label %bb.b
    i32 1, label %bb.f
    i32 2, label %bb.j
    i32 3, label %bb.n
    i32 4, label %bb.r
    i32 5, label %bb.v
    i32 6, label %bb.z
    i32 7, label %bb.ad
    i32 8, label %bb.ah
    i32 9, label %bb.al
  ]

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %2, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.a = load i8, ptr %1, align 1, !tbaa !387
  %i.b = load i8, ptr %2, align 1, !tbaa !387     ; 2 uses
  %i.c = icmp slt i8 %i.a, %i.b
  br i1 %i.c, label %.sink.split.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not13.i = icmp eq ptr %3, null
  br i1 %.not13.i, label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = load i8, ptr %1, align 1, !tbaa !387
  %i.e = load i8, ptr %3, align 1, !tbaa !387     ; 2 uses
  %i.f = icmp sgt i8 %i.d, %i.e
  br i1 %i.f, label %.sink.split.i, label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit

.sink.split.i:                                    ; preds = %bb.e, %bb.c
  %.sink.i = phi i8 [ %i.b, %bb.c ], [ %i.e, %bb.e ]
  store i8 %.sink.i, ptr %1, align 1, !tbaa !387
  br label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit

bb.f:                                             ; preds = %bb.a
  %.not.i31 = icmp eq ptr %2, null
  br i1 %.not.i31, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = load i8, ptr %1, align 1, !tbaa !387
  %i.h = load i8, ptr %2, align 1, !tbaa !387     ; 2 uses
  %i.i = icmp ult i8 %i.g, %i.h
  br i1 %i.i, label %.sink.split.i34, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.not13.i32 = icmp eq ptr %3, null
  br i1 %.not13.i32, label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.j = load i8, ptr %1, align 1, !tbaa !387
  %i.k = load i8, ptr %3, align 1, !tbaa !387     ; 2 uses
  %i.l = icmp ugt i8 %i.j, %i.k
  br i1 %i.l, label %.sink.split.i34, label %_ZL14DataTypeClampTIaEbPT_PKS0_S3_.exit
end_hunk_1
begin_hunk_2_@_ZN5ImGui11InputTextExEPKcS1_PciRK6ImVec2iPFiP26ImGuiInputTextCallbackDataEPv:bb.a
  %i.agz = icmp sgt i32 %i.agy, 0
  br i1 %i.agz, label %bb.jm, label %bb.jq

bb.iz:                                            ; preds = %bb.jn, %bb.iy
  %i.aha = landingpad { ptr, i32 }
          cleanup
  br label %bb.jr

bb.ja:                                            ; preds = %.lr.ph1660, %bb.jh
  %.012221659 = phi ptr [ %i.agq, %.lr.ph1660 ], [ %i.ahd, %bb.jh ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  %i.ahb = invoke noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.d, ptr noundef nonnull %.012221659, ptr noundef nonnull %i.agu)
          to label %bb.jb unwind label %bb.jd

bb.jb:                                            ; preds = %bb.ja
  %i.ahc = sext i32 %i.ahb to i64
  %i.ahd = getelementptr inbounds i8, ptr %.012221659, i64 %i.ahc ; 2 uses
  %i.ahe = invoke fastcc noundef zeroext i1 @_ZL24InputTextFilterCharacterP12ImGuiContextP19ImGuiInputTextStatePjPFiP26ImGuiInputTextCallbackDataEPvb(ptr noundef %i.i, ptr noundef %.012601537, ptr noundef %i.d, ptr noundef %6, ptr noundef %7, i1 noundef zeroext true)
          to label %bb.jc unwind label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  br i1 %i.ahe, label %bb.je, label %bb.jh, !llvm.loop !513

bb.jd:                                            ; preds = %bb.jb, %bb.ja
  %i.ahf = landingpad { ptr, i32 }
          cleanup
  br label %bb.jl

bb.je:                                            ; preds = %bb.jc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #41
  %i.ahg = load i32, ptr %i.d, align 4, !tbaa !192
  %i.ahh = invoke noundef i32 @_Z16ImTextCharToUtf8Pcj(ptr noundef nonnull %i.e, i32 noundef %i.ahg)
          to label %bb.jf unwind label %bb.ji     ; 0 uses

bb.jf:                                            ; preds = %bb.je
  %i.ahi = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #40 ; 2 uses
  %i.ahj = trunc i64 %i.ahi to i32
  %i.ahk = load i32, ptr %15, align 8, !tbaa !449
  %i.ahl = add nsw i32 %i.ahk, %i.ahj
  invoke void @_ZN8ImVectorIcE6resizeEi(ptr noundef nonnull align 8 dereferenceable(16) %15, i32 noundef %i.ahl)
          to label %bb.jg unwind label %bb.jj

bb.jg:                                            ; preds = %bb.jf
  %i.ahm = load ptr, ptr %i.agx, align 8, !tbaa !448
  %i.ahn = load i32, ptr %15, align 8, !tbaa !449
  %i.aho = sext i32 %i.ahn to i64
  %i.ahp = getelementptr inbounds i8, ptr %i.ahm, i64 %i.aho
  %sext1317 = shl i64 %i.ahi, 32
  %i.ahq = ashr exact i64 %sext1317, 32           ; 2 uses
  %i.ahr = sub nsw i64 0, %i.ahq
  %i.ahs = getelementptr inbounds i8, ptr %i.ahp, i64 %i.ahr
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ahs, ptr nonnull align 1 %i.e, i64 %i.ahq, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jh

bb.jh:                                            ; preds = %bb.jc, %bb.jg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.aht = load i8, ptr %i.ahd, align 1, !tbaa !387
  %.not1313 = icmp eq i8 %i.aht, 0
  br i1 %.not1313, label %._crit_edge, label %bb.ja

bb.ji:                                            ; preds = %bb.je
  %i.ahu = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jj:                                            ; preds = %bb.jf
  %i.ahv = landingpad { ptr, i32 }
          cleanup
  br label %bb.jk

bb.jk:                                            ; preds = %bb.jj, %bb.ji
  %.pn = phi { ptr, i32 } [ %i.ahv, %bb.jj ], [ %i.ahu, %bb.ji ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #41
  br label %bb.jl

bb.jl:                                            ; preds = %bb.jk, %bb.jd
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.jk ], [ %i.ahf, %bb.jd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  br label %bb.jr

bb.jm:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #41
  store i8 0, ptr %i.f, align 1, !tbaa !387
  invoke void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull align 1 dereferenceable(1) %i.f)
          to label %bb.jn unwind label %bb.jp

bb.jn:                                            ; preds = %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  %i.ahw = load ptr, ptr %i.yl, align 8, !tbaa !439
  %i.ahx = getelementptr inbounds nuw i8, ptr %15, i64 8
  %i.ahy = load ptr, ptr %i.ahx, align 8, !tbaa !448
  %i.ahz = load i32, ptr %15, align 8, !tbaa !449
  %i.aia = add nsw i32 %i.ahz, -1
  invoke fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.ahw, ptr noundef %i.ahy, i32 noundef %i.aia)
          to label %bb.jo unwind label %bb.iz

bb.jo:                                            ; preds = %bb.jn
  %i.aib = getelementptr inbounds nuw i8, ptr %.012601537, i64 112
  store i8 1, ptr %i.aib, align 8, !tbaa !499
  br label %bb.jq

bb.jp:                                            ; preds = %bb.jm
  %i.aic = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #41
  br label %bb.jr

bb.jq:                                            ; preds = %bb.jo, %._crit_edge
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  br label %bb.js

bb.jr:                                            ; preds = %bb.jp, %bb.jl, %bb.iz
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.jl ], [ %i.aha, %bb.iz ], [ %i.aic, %bb.jp ]
  call void @_ZN8ImVectorIcED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #41
  resume { ptr, i32 } %.pn.pn.pn

bb.js:                                            ; preds = %bb.gr, %bb.gx, %bb.gw, %bb.hd, %bb.hh, %bb.hn, %bb.ie, %bb.ij, %bb.is, %bb.iw, %bb.il, %bb.hv, %bb.hj, %bb.hf, %bb.ha, %bb.hb, %bb.gt, %bb.ih, %bb.ig, %bb.jq, %bb.ix, %bb.iu, %bb.iv
  %.21257 = phi i8 [ %.01255, %bb.gr ], [ %.01255, %bb.gt ], [ %.01255, %bb.gw ], [ %.01255, %bb.gx ], [ %.01255, %bb.ha ], [ %.01255, %bb.hb ], [ %.01255, %bb.hd ], [ %.01255, %bb.hf ], [ %.01255, %bb.hh ], [ %.01255, %bb.hj ], [ %.11256, %bb.ie ], [ %..01255, %bb.ih ], [ %.01255, %bb.hn ], [ %.01255, %bb.hv ], [ %.01255, %bb.ij ], [ %.01255, %bb.il ], [ %.01255, %bb.ix ], [ %.01255, %bb.is ], [ 1, %bb.ig ], [ %.01255, %bb.iw ], [ %.01255, %bb.jq ], [ %.01255, %bb.iu ], [ %.01255, %bb.iv ] ; 5 uses
  %.01249 = phi float [ %i.fn, %bb.gr ], [ %i.fn, %bb.gt ], [ %i.fn, %bb.gw ], [ %i.fn, %bb.gx ], [ %i.fn, %bb.ha ], [ %i.fn, %bb.hb ], [ %i.acs, %bb.hd ], [ %i.acx, %bb.hf ], [ %i.fn, %bb.hh ], [ %i.fn, %bb.hj ], [ %i.fn, %bb.ie ], [ %i.fn, %bb.ih ], [ %i.fn, %bb.hn ], [ %i.fn, %bb.hv ], [ %i.fn, %bb.ij ], [ %i.fn, %bb.il ], [ %i.fn, %bb.ix ], [ %i.fn, %bb.is ], [ %i.fn, %bb.ig ], [ %i.fn, %bb.iw ], [ %i.fn, %bb.jq ], [ %i.fn, %bb.iu ], [ %i.fn, %bb.iv ] ; 5 uses
  %.11243 = phi i8 [ %.01242, %bb.gr ], [ %.01242, %bb.gt ], [ %.01242, %bb.gw ], [ %.01242, %bb.gx ], [ %.01242, %bb.ha ], [ %.01242, %bb.hb ], [ %.01242, %bb.hd ], [ %.01242, %bb.hf ], [ %.01242, %bb.hh ], [ %.01242, %bb.hj ], [ %.01242, %bb.ie ], [ %..01242, %bb.ih ], [ %.01242, %bb.hn ], [ %.01242, %bb.hv ], [ %.01242, %bb.ij ], [ %.01242, %bb.il ], [ %.01242, %bb.ix ], [ %.01242, %bb.is ], [ 0, %bb.ig ], [ %.01242, %bb.iw ], [ %.01242, %bb.jq ], [ %.01242, %bb.iu ], [ %.01242, %bb.iv ] ; 6 uses
  %.01240 = phi i8 [ %i.qa, %bb.gr ], [ %i.qa, %bb.gt ], [ %i.qa, %bb.gw ], [ %i.qa, %bb.gx ], [ %i.qa, %bb.ha ], [ %i.qa, %bb.hb ], [ %i.qa, %bb.hd ], [ %i.qa, %bb.hf ], [ %i.qa, %bb.hh ], [ %i.qa, %bb.hj ], [ %i.qa, %bb.ie ], [ %., %bb.ih ], [ %i.qa, %bb.hn ], [ %i.qa, %bb.hv ], [ %i.qa, %bb.ij ], [ %i.qa, %bb.il ], [ %i.qa, %bb.ix ], [ %i.qa, %bb.is ], [ 0, %bb.ig ], [ %i.qa, %bb.iw ], [ %i.qa, %bb.jq ], [ %i.qa, %bb.iu ], [ %i.qa, %bb.iv ]
  %.11234 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ %.01233, %bb.ie ], [ false, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ false, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jq ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %.01229 = phi i1 [ false, %bb.gr ], [ false, %bb.gt ], [ false, %bb.gw ], [ false, %bb.gx ], [ false, %bb.ha ], [ false, %bb.hb ], [ false, %bb.hd ], [ false, %bb.hf ], [ false, %bb.hh ], [ false, %bb.hj ], [ false, %bb.ie ], [ %.not1320, %bb.ih ], [ false, %bb.hn ], [ false, %bb.hv ], [ false, %bb.ij ], [ false, %bb.il ], [ false, %bb.ix ], [ false, %bb.is ], [ true, %bb.ig ], [ false, %bb.iw ], [ false, %bb.jq ], [ false, %bb.iu ], [ false, %bb.iv ] ; 5 uses
  %i.aid = load ptr, ptr %i.yl, align 8, !tbaa !439 ; 2 uses
  %i.aie = getelementptr inbounds nuw i8, ptr %i.aid, i64 4
  %i.aif = load i32, ptr %i.aie, align 4, !tbaa !466
  %i.aig = getelementptr inbounds nuw i8, ptr %i.aid, i64 8
  %i.aih = load i32, ptr %i.aig, align 4, !tbaa !467
  %.not1644 = icmp eq i32 %i.aif, %i.aih
  %i.aii = select i1 %.not1644, i8 0, i8 %.11243
  %i.aij = or i8 %i.aii, %.01240                  ; 5 uses
  %.pre1693 = load i32, ptr %i.ei, align 4, !tbaa !205
  %i.aik = icmp eq i32 %.pre1693, %i.s
  br i1 %i.aik, label %bb.jt, label %.thread1572

bb.jt:                                            ; preds = %bb.js
  %.not139 = xor i1 %.01229, true
  %or.cond142 = or i1 %i.dl, %.not139
  br i1 %or.cond142, label %.thread1808, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.ail = and i32 %5, 128
  %.not1322 = icmp eq i32 %i.ail, 0
  br i1 %.not1322, label %bb.jy, label %bb.jv

bb.jv:                                            ; preds = %bb.ju
  %i.aim = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !439 ; 4 uses
  %i.aio = getelementptr inbounds nuw i8, ptr %.012601537, i64 24 ; 4 uses
  %i.aip = load i32, ptr %i.aio, align 8, !tbaa !436 ; 4 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.ain, i64 32
  %i.air = call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.aiq, i32 noundef 0, i32 noundef %i.aip, i32 noundef range(i32 -2147483648, 2147483647) 0) ; 6 uses
  %.not.i.i1420 = icmp ne ptr %i.air, null
  %i.ais = icmp sgt i32 %i.aip, 0
  %or.cond.i.i = and i1 %i.ais, %.not.i.i1420
  br i1 %or.cond.i.i, label %.lr.ph.i.i, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit

.lr.ph.i.i:                                       ; preds = %bb.jv
  %i.ait = getelementptr i8, ptr %.012601537, i64 32 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %i.aip to i64 ; 2 uses
  %xtraiter1885 = and i64 %wide.trip.count.i.i, 3 ; 3 uses
  %i.aiu = icmp ult i32 %i.aip, 4
  br i1 %i.aiu, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.jw

bb.jw:                                            ; preds = %bb.jw, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.jw ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.3, %bb.jw ]
  %.val.i.i = load ptr, ptr %i.ait, align 8, !tbaa !476
  %i.aiv = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.aiw = load i8, ptr %i.aiv, align 1, !tbaa !387
  %i.aix = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.i.i
  store i8 %i.aiw, ptr %i.aix, align 1, !tbaa !387
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.ait, align 8, !tbaa !476
  %i.aiy = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.aiz = load i8, ptr %i.aiy, align 1, !tbaa !387
  %i.aja = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.next.i.i
  store i8 %i.aiz, ptr %i.aja, align 1, !tbaa !387
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.ait, align 8, !tbaa !476
  %i.ajb = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.ajc = load i8, ptr %i.ajb, align 1, !tbaa !387
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.next.i.i.1
  store i8 %i.ajc, ptr %i.ajd, align 1, !tbaa !387
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.ait, align 8, !tbaa !476
  %i.aje = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.ajf = load i8, ptr %i.aje, align 1, !tbaa !387
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.next.i.i.2
  store i8 %i.ajf, ptr %i.ajg, align 1, !tbaa !387
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, label %bb.jw, !llvm.loop !514

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa: ; preds = %bb.jw
  %lcmp.mod1886.not = icmp eq i64 %xtraiter1885, 0
  br i1 %lcmp.mod1886.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa ]
  %lcmp.mod1887 = icmp ne i64 %xtraiter1885, 0
  call void @llvm.assume(i1 %lcmp.mod1887)
  br label %bb.jx

bb.jx:                                            ; preds = %bb.jx, %.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i.epil, %bb.jx ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.jx ]
  %.val.i.i.epil = load ptr, ptr %i.ait, align 8, !tbaa !476
  %i.ajh = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.aji = load i8, ptr %i.ajh, align 1, !tbaa !387
  %i.ajj = getelementptr inbounds nuw i8, ptr %i.air, i64 %indvars.iv.i.i.epil
  store i8 %i.aji, ptr %i.ajj, align 1, !tbaa !387
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1885
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, label %bb.jx, !llvm.loop !515

_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit: ; preds = %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit.loopexit.unr-lcssa, %bb.jx, %bb.jv
  %i.ajk = load i32, ptr %i.aio, align 8, !tbaa !436 ; 2 uses
  %i.ajl = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajm = load ptr, ptr %i.ajl, align 8, !tbaa !435 ; 2 uses
  %i.ajn = sext i32 %i.ajk to i64
  %i.ajo = getelementptr inbounds i8, ptr %i.ajm, i64 %i.ajn
  %i.ajp = load i8, ptr %i.ajo, align 1
  store i8 %i.ajp, ptr %i.ajm, align 1
  %i.ajq = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  store i8 1, ptr %i.ajq, align 4, !tbaa !492
  %i.ajr = getelementptr inbounds nuw i8, ptr %.012601537, i64 115
  store i8 1, ptr %i.ajr, align 1, !tbaa !460
  %i.ajs = load i32, ptr %i.aio, align 8, !tbaa !436
  %i.ajt = sub nsw i32 %i.ajs, %i.ajk
  store i32 %i.ajt, ptr %i.aio, align 8, !tbaa !436
  %i.aju = getelementptr inbounds nuw i8, ptr %i.ain, i64 8
  store i32 0, ptr %i.aju, align 4, !tbaa !467
  %i.ajv = getelementptr inbounds nuw i8, ptr %i.ain, i64 4
  store i32 0, ptr %i.ajv, align 4, !tbaa !466
  store i32 0, ptr %i.ain, align 4, !tbaa !451
  br label %.thread1808

bb.jy:                                            ; preds = %bb.ju
  %i.ajw = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ajx = load ptr, ptr %i.ajw, align 8, !tbaa !435
  %i.ajy = getelementptr inbounds nuw i8, ptr %.012601537, i64 64
  %i.ajz = load ptr, ptr %i.ajy, align 8, !tbaa !459 ; 3 uses
  %i.aka = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ajx, ptr noundef nonnull dereferenceable(1) %i.ajz) #40
  %.not1323 = icmp eq i32 %i.aka, 0
  br i1 %.not1323, label %.thread1808, label %bb.jz

bb.jz:                                            ; preds = %bb.jy
  %i.akb = getelementptr inbounds nuw i8, ptr %.012601537, i64 56
  %i.akc = load i32, ptr %i.akb, align 8, !tbaa !516
  %i.akd = add nsw i32 %i.akc, -1                 ; 2 uses
  %i.ake = getelementptr inbounds nuw i8, ptr %.012601537, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8, !tbaa !439
  call fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr noundef nonnull %.012601537, ptr noundef %i.akf, ptr noundef nonnull %i.ajz, i32 noundef %i.akd)
  br label %.thread1808

.thread1808:                                      ; preds = %bb.fl, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit, %bb.jz, %bb.jy, %bb.jt
  %.3125817891822 = phi i8 [ %.21257, %bb.jt ], [ %.21257, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.21257, %bb.jz ], [ %.21257, %bb.jy ], [ %.01255, %bb.fl ] ; 5 uses
  %.1125017911821 = phi float [ %.01249, %bb.jt ], [ %.01249, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01249, %bb.jz ], [ %.01249, %bb.jy ], [ %i.fn, %bb.fl ] ; 5 uses
  %.2124417941820 = phi i8 [ %.11243, %bb.jt ], [ %.11243, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11243, %bb.jz ], [ %.11243, %bb.jy ], [ %.01242, %bb.fl ] ; 5 uses
  %.1124117971819 = phi i8 [ %i.aij, %bb.jt ], [ %i.aij, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.aij, %bb.jz ], [ %i.aij, %bb.jy ], [ %i.qa, %bb.fl ] ; 5 uses
  %.2123517981818 = phi i1 [ %.11234, %bb.jt ], [ %.11234, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.11234, %bb.jz ], [ %.11234, %bb.jy ], [ false, %bb.fl ] ; 6 uses
  %.1123018001817 = phi i1 [ %.01229, %bb.jt ], [ %.01229, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %.01229, %bb.jz ], [ %.01229, %bb.jy ], [ false, %bb.fl ]
  %.01236 = phi i1 [ false, %bb.jt ], [ true, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ true, %bb.jz ], [ false, %bb.jy ], [ false, %bb.fl ] ; 2 uses
  %.01218 = phi ptr [ null, %bb.jt ], [ @.str, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.ajz, %bb.jz ], [ null, %bb.jy ], [ null, %bb.fl ] ; 2 uses
  %.01213 = phi i32 [ 0, %bb.jt ], [ 0, %_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci.exit ], [ %i.akd, %bb.jz ], [ 0, %bb.jy ], [ 0, %bb.fl ] ; 2 uses
  %i.akg = and i32 %5, 10223616
  %.not1324 = icmp eq i32 %i.akg, 0
  br i1 %.not1324, label %bb.ku, label %bb.ka

bb.ka:                                            ; preds = %.thread1808
  %i.akh = and i32 %5, 262144
  %.not1325 = icmp eq i32 %i.akh, 0
  br i1 %.not1325, label %bb.kc, label %bb.kb

bb.kb:                                            ; preds = %bb.ka
  %i.aki = call noundef zeroext i1 @_ZN5ImGui8ShortcutEiij(i32 noundef 512, i32 noundef 0, i32 noundef %i.s)
  br i1 %i.aki, label %.thread1563, label %bb.kc

bb.kc:                                            ; preds = %bb.kb, %bb.ka
  %i.akj = and i32 %5, 524288
  %.not1326 = icmp eq i32 %i.akj, 0
  br i1 %.not1326, label %.critedge1386, label %bb.kd

bb.kd:                                            ; preds = %bb.kc
  %i.akk = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 515, i1 noundef zeroext true)
  br i1 %i.akk, label %.thread1563, label %bb.ke

bb.ke:                                            ; preds = %bb.kd
  %i.akl = call noundef zeroext i1 @_ZN5ImGui12IsKeyPressedE8ImGuiKeyb(i32 noundef 516, i1 noundef zeroext true)
  br i1 %i.akl, label %.thread1563, label %.critedge1386

.critedge1386:                                    ; preds = %bb.kc, %bb.ke
  %i.akm = and i32 %5, 8388608
  %.not1327 = icmp eq i32 %i.akm, 0
  br i1 %.not1327, label %bb.kg, label %bb.kf

bb.kf:                                            ; preds = %.critedge1386
  %i.akn = getelementptr inbounds nuw i8, ptr %.012601537, i64 116
  %i.ako = load i8, ptr %i.akn, align 4, !tbaa !492, !range !165, !noundef !166
  %i.akp = trunc nuw i8 %i.ako to i1
  br i1 %i.akp, label %.thread1563, label %bb.kg

bb.kg:                                            ; preds = %.critedge1386, %bb.kf
  %i.akq = and i32 %5, 1048576
  %.not1328 = icmp eq i32 %i.akq, 0
  br i1 %.not1328, label %bb.ku, label %.thread1563

.thread1563:                                      ; preds = %bb.kf, %bb.ke, %bb.kd, %bb.kb, %bb.kg
  %.012111568 = phi i32 [ 0, %bb.kg ], [ 0, %bb.kf ], [ 516, %bb.ke ], [ 515, %bb.kd ], [ 512, %bb.kb ]
  %.012121567 = phi i32 [ 1048576, %bb.kg ], [ 8388608, %bb.kf ], [ 524288, %bb.ke ], [ 524288, %bb.kd ], [ 262144, %bb.kb ]
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #41
  call void @_ZN26ImGuiInputTextCallbackDataC1Ev(ptr noundef nonnull align 8 dereferenceable(68) %16)
  store ptr %i.i, ptr %16, align 8, !tbaa !517
  %i.akr = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 %i.s, ptr %i.akr, align 8, !tbaa !519
  %i.aks = getelementptr inbounds nuw i8, ptr %16, i64 12
  store i32 %spec.select1349, ptr %i.aks, align 4, !tbaa !520
  %i.akt = getelementptr inbounds nuw i8, ptr %16, i64 8
  store i32 %.012121567, ptr %i.akt, align 8, !tbaa !521
  %i.aku = load i32, ptr %i.ei, align 4, !tbaa !205
  %i.akv = getelementptr inbounds nuw i8, ptr %.012601537, i64 20
  %i.akw = load i32, ptr %i.akv, align 4, !tbaa !458
  %i.akx = icmp eq i32 %i.aku, %i.akw
  br i1 %i.akx, label %bb.kh, label %bb.ki

bb.kh:                                            ; preds = %.thread1563
  %i.aky = getelementptr inbounds nuw i8, ptr %i.i, i64 5440
  %i.akz = load i8, ptr %i.aky, align 8, !tbaa !224, !range !165, !noundef !166
  br label %bb.ki

bb.ki:                                            ; preds = %bb.kh, %.thread1563
  %i.ala = phi i8 [ 0, %.thread1563 ], [ %i.akz, %bb.kh ]
  %i.alb = getelementptr inbounds nuw i8, ptr %16, i64 34
  store i8 %i.ala, ptr %i.alb, align 2, !tbaa !522
  %i.alc = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %7, ptr %i.alc, align 8, !tbaa !523
  br i1 %i.dl, label %bb.kk, label %bb.kj

bb.kj:                                            ; preds = %bb.ki
  %i.ald = getelementptr inbounds nuw i8, ptr %.012601537, i64 48
  %i.ale = load ptr, ptr %i.ald, align 8, !tbaa !435
  br label %bb.kk

bb.kk:                                            ; preds = %bb.ki, %bb.kj
  %i.alf = phi ptr [ %i.ale, %bb.kj ], [ %2, %bb.ki ] ; 2 uses
  %i.alg = getelementptr inbounds nuw i8, ptr %.012601537, i64 72 ; 3 uses
  %i.alh = getelementptr inbounds nuw i8, ptr %.012601537, i64 24 ; 4 uses
  %i.ali = load i32, ptr %i.alh, align 8, !tbaa !436 ; 2 uses
  %i.alj = add nsw i32 %i.ali, 1                  ; 3 uses
  %i.alk = getelementptr inbounds nuw i8, ptr %.012601537, i64 76 ; 2 uses
  %i.all = load i32, ptr %i.alk, align 4, !tbaa !447 ; 4 uses
  %.not1645 = icmp slt i32 %i.ali, %i.all
  br i1 %.not1645, label %._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge, label %bb.kl

._ZN8ImVectorIcE6resizeEi.exit1424_crit_edge:     ; preds = %bb.kk
  %.phi.trans.insert1694 = getelementptr inbounds nuw i8, ptr %.012601537, i64 80
  %.pre1695 = load ptr, ptr %.phi.trans.insert1694, align 8, !tbaa !524
  br label %_ZN8ImVectorIcE6resizeEi.exit1424

bb.kl:                                            ; preds = %bb.kk
  %.not.i.i1421 = icmp eq i32 %i.all, 0
  br i1 %.not.i.i1421, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.alm = sdiv i32 %i.all, 2
  %i.aln = add nsw i32 %i.alm, %i.all
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422

_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422:    ; preds = %bb.km, %bb.kl
  %i.alo = phi i32 [ %i.aln, %bb.km ], [ 8, %bb.kl ]
  %i.alp = call noundef i32 @llvm.smax.i32(i32 %i.alo, i32 %i.alj) ; 2 uses
  %i.alq = sext i32 %i.alp to i64
  %i.alr = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.alq) ; 3 uses
  %i.als = getelementptr inbounds nuw i8, ptr %.012601537, i64 80 ; 3 uses
  %i.alt = load ptr, ptr %i.als, align 8, !tbaa !448 ; 2 uses
  %.not6.i.i1423 = icmp eq ptr %i.alt, null
  br i1 %.not6.i.i1423, label %bb.ko, label %bb.kn

bb.kn:                                            ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422
  %i.alu = load i32, ptr %i.alg, align 8, !tbaa !449
  %i.alv = sext i32 %i.alu to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.alr, ptr nonnull align 1 %i.alt, i64 %i.alv, i1 false)
  %i.alw = load ptr, ptr %i.als, align 8, !tbaa !448
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.alw)
  br label %bb.ko

bb.ko:                                            ; preds = %bb.kn, %_ZNK8ImVectorIcE14_grow_capacityEi.exit.i1422
  store ptr %i.alr, ptr %i.als, align 8, !tbaa !448
  store i32 %i.alp, ptr %i.alk, align 4, !tbaa !447
end_hunk_2
begin_hunk_3_@_ZN19ImGuiInputTextState12OnKeyPressedEi:bb.a

.preheader.i.i:                                   ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 2624 ; 4 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !566 ; 3 uses
  %.not5459.i.i = icmp sgt i32 %i.ab, %i.ae
  br i1 %.not5459.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 1612
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1604
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.x, align 4, !tbaa !562
  br label %.loopexit.i.i

bb.f:                                             ; preds = %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i, %.lr.ph.i.i
  %i.ai = phi i32 [ %i.ae, %.lr.ph.i.i ], [ %i.ca, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ] ; 2 uses
  %i.aj = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %i.cb, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ]
  %i.ak = phi i16 [ %i.s, %.lr.ph.i.i ], [ %i.cc, %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i ] ; 4 uses
  %i.al = icmp eq i16 %i.ak, 99
  br i1 %i.al, label %_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = icmp slt i16 %i.ak, 99
  br i1 %i.am, label %bb.h, label %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.an = load i32, ptr %i.af, align 4, !tbaa !560
  %i.ao = icmp sgt i32 %i.an, -1
  br i1 %i.ao, label %bb.i, label %.loopexit.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = load i32, ptr %i.ag, align 4, !tbaa !562 ; 5 uses
  %i.aq = add nsw i32 %i.ap, %i.ai                ; 3 uses
  store i32 %i.aq, ptr %i.ad, align 4, !tbaa !566
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds i8, ptr %i.ah, i64 %i.ar ; 2 uses
  %i.at = sext i32 %i.ap to i64
  %i.au = sub nsw i64 0, %i.at
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = sub nsw i32 999, %i.aq
  %i.ax = sext i32 %i.aw to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.as, ptr nonnull align 1 %i.av, i64 %i.ax, i1 false)
  %i.ay = load i16, ptr %i.r, align 2, !tbaa !559 ; 7 uses
  %i.az = icmp slt i16 %i.ay, 98
  br i1 %i.az, label %.lr.ph.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.i
  %i.ba = sext i16 %i.ay to i64                   ; 3 uses
  %i.bb = and i16 %i.ay, 1
  %lcmp.mod190.not = icmp eq i16 %i.bb, 0
  br i1 %lcmp.mod190.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.preheader.i.i.i
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.ba
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !560 ; 2 uses
  %i.bf = icmp sgt i32 %i.be, -1
  br i1 %i.bf, label %bb.j, label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa

bb.j:                                             ; preds = %.lr.ph.i.i.i.prol
  %i.bg = add nsw i32 %i.be, %i.ap
  store i32 %i.bg, ptr %i.bd, align 4, !tbaa !560
  br label %.lr.ph.i.i.i.prol.loopexit.unr-lcssa

.lr.ph.i.i.i.prol.loopexit.unr-lcssa:             ; preds = %bb.j, %.lr.ph.i.i.i.prol
  %indvars.iv.next.i.i.i.prol = add nsw i64 %i.ba, 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i
  %indvars.iv.i.i.i.unr = phi i64 [ %i.ba, %.lr.ph.preheader.i.i.i ], [ %indvars.iv.next.i.i.i.prol, %.lr.ph.i.i.i.prol.loopexit.unr-lcssa ]
  %i.bh = icmp eq i16 %i.ay, 97
  br i1 %i.bh, label %.loopexit.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.m
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.1, %bb.m ], [ %indvars.iv.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %i.bi = getelementptr inbounds [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 12 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !560 ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, -1
  br i1 %i.bl, label %bb.k, label %.lr.ph.i.i.i.1

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = add nsw i32 %i.bk, %i.ap
  store i32 %i.bm, ptr %i.bj, align 4, !tbaa !560
  br label %.lr.ph.i.i.i.1

.lr.ph.i.i.i.1:                                   ; preds = %bb.k, %.lr.ph.i.i.i
  %i.bn = getelementptr [16 x i8], ptr %i.k, i64 %indvars.iv.i.i.i
  %i.bo = getelementptr i8, ptr %i.bn, i64 28     ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !560 ; 2 uses
  %i.bq = icmp sgt i32 %i.bp, -1
  br i1 %i.bq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i.i.1
  %i.br = add nsw i32 %i.bp, %i.ap
  store i32 %i.br, ptr %i.bo, align 4, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i.i.1
  %indvars.iv.next.i.i.i.1 = add nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %indvars.iv.next.i.i.i.1, 98
  br i1 %exitcond.not.i.i.i.1, label %.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !567

.loopexit.i.i.i:                                  ; preds = %.lr.ph.i.i.i.prol.loopexit, %bb.m, %bb.i, %bb.h
  %i.bs = phi i16 [ %i.ak, %bb.h ], [ %i.ay, %bb.i ], [ %i.ay, %bb.m ], [ %i.ay, %.lr.ph.i.i.i.prol.loopexit ]
  %i.bt = sext i16 %i.bs to i64                   ; 2 uses
  %i.bu = shl nsw i64 %i.bt, 4
  %i.bv = sub nsw i64 1568, %i.bu
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.bt ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.bx, ptr nonnull align 4 %i.bw, i64 %i.bv, i1 false)
  %i.by = load i16, ptr %i.r, align 2, !tbaa !559
  %i.bz = add i16 %i.by, 1                        ; 2 uses
  store i16 %i.bz, ptr %i.r, align 2, !tbaa !559
  %.pre.i.i = load i32, ptr %i.z, align 4, !tbaa !565
  %.pre65.i.i = load i32, ptr %i.ad, align 4, !tbaa !566
  br label %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i

_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i: ; preds = %.loopexit.i.i.i, %bb.g
  %i.ca = phi i32 [ %i.ai, %bb.g ], [ %.pre65.i.i, %.loopexit.i.i.i ] ; 3 uses
  %i.cb = phi i32 [ %i.aj, %bb.g ], [ %.pre.i.i, %.loopexit.i.i.i ] ; 2 uses
  %i.cc = phi i16 [ %i.ak, %bb.g ], [ %i.bz, %.loopexit.i.i.i ] ; 2 uses
  %i.cd = add nsw i32 %i.cb, %.sroa.14.0.copyload.i.i
  %.not54.i.i = icmp sgt i32 %i.cd, %i.ca
  br i1 %.not54.i.i, label %bb.f, label %._crit_edge.loopexit.i.i, !llvm.loop !568

._crit_edge.loopexit.i.i:                         ; preds = %_ZN5ImStbL25stb_textedit_discard_redoEPNS_12StbUndoStateE.exit.i.i
  %.pre66.i.i = sext i16 %i.cc to i64
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %.preheader.i.i
  %.pre-phi.i.i = phi i64 [ %.pre66.i.i, %._crit_edge.loopexit.i.i ], [ %i.t, %.preheader.i.i ]
  %.lcssa.i.i = phi i32 [ %i.ca, %._crit_edge.loopexit.i.i ], [ %i.ae, %.preheader.i.i ]
  %i.ce = getelementptr [16 x i8], ptr %i.k, i64 %.pre-phi.i.i
  %i.cf = sub nsw i32 %.lcssa.i.i, %.sroa.14.0.copyload.i.i ; 2 uses
  %i.cg = getelementptr i8, ptr %i.ce, i64 -4     ; 6 uses
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !560
  store i32 %i.cf, ptr %i.ad, align 4, !tbaa !566
  %i.ch = icmp sgt i32 %.sroa.14.0.copyload.i.i, 0
  br i1 %i.ch, label %.lr.ph62.i.i, label %.loopexit.i.i

.lr.ph62.i.i:                                     ; preds = %._crit_edge.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.i, i64 1616 ; 5 uses
  %i.ck = sext i32 %.sroa.0.0.copyload.i.i to i64 ; 5 uses
  %wide.trip.count.i.i = zext nneg i32 %.sroa.14.0.copyload.i.i to i64 ; 2 uses
  %xtraiter192 = and i64 %wide.trip.count.i.i, 3  ; 3 uses
  %i.cl = icmp ult i32 %.sroa.14.0.copyload.i.i, 4
  br i1 %i.cl, label %.epil.preheader191, label %.lr.ph62.i.i.new

.lr.ph62.i.i.new:                                 ; preds = %.lr.ph62.i.i
  %unroll_iter196 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %.lr.ph62.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph62.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.n ] ; 6 uses
  %niter197 = phi i64 [ 0, %.lr.ph62.i.i.new ], [ %niter197.next.3, %bb.n ]
  %.val.i.i = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.cm = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.cn = getelementptr i8, ptr %i.cm, i64 %i.ck
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !387
  %i.cp = load i32, ptr %i.cg, align 4, !tbaa !560
  %i.cq = sext i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr %i.cj, i64 %indvars.iv.i.i
  %i.cs = getelementptr i8, ptr %i.cr, i64 %i.cq
  store i8 %i.co, ptr %i.cs, align 1, !tbaa !387
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.ct = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.ck
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !387
  %i.cw = load i32, ptr %i.cg, align 4, !tbaa !560
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr i8, ptr %i.cj, i64 %indvars.iv.next.i.i
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cx
  store i8 %i.cv, ptr %i.cz, align 1, !tbaa !387
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.da = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.db = getelementptr i8, ptr %i.da, i64 %i.ck
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !387
  %i.dd = load i32, ptr %i.cg, align 4, !tbaa !560
  %i.de = sext i32 %i.dd to i64
  %i.df = getelementptr i8, ptr %i.cj, i64 %indvars.iv.next.i.i.1
  %i.dg = getelementptr i8, ptr %i.df, i64 %i.de
  store i8 %i.dc, ptr %i.dg, align 1, !tbaa !387
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.dh = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.ck
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !387
  %i.dk = load i32, ptr %i.cg, align 4, !tbaa !560
  %i.dl = sext i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr %i.cj, i64 %indvars.iv.next.i.i.2
  %i.dn = getelementptr i8, ptr %i.dm, i64 %i.dl
  store i8 %i.dj, ptr %i.dn, align 1, !tbaa !387
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter197.next.3 = add nuw i64 %niter197, 4     ; 2 uses
  %niter197.ncmp.3 = icmp eq i64 %niter197.next.3, %unroll_iter196
  br i1 %niter197.ncmp.3, label %.loopexit.i.i.loopexit.unr-lcssa, label %bb.n, !llvm.loop !569

.loopexit.i.i.loopexit.unr-lcssa:                 ; preds = %bb.n
  %lcmp.mod194.not = icmp eq i64 %xtraiter192, 0
  br i1 %lcmp.mod194.not, label %.loopexit.i.i, label %.epil.preheader191

.epil.preheader191:                               ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %.lr.ph62.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph62.i.i ], [ %indvars.iv.next.i.i.3, %.loopexit.i.i.loopexit.unr-lcssa ]
  %lcmp.mod195 = icmp ne i64 %xtraiter192, 0
  tail call void @llvm.assume(i1 %lcmp.mod195)
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.epil.preheader191
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader191 ], [ %indvars.iv.next.i.i.epil, %bb.o ] ; 3 uses
  %epil.iter193 = phi i64 [ 0, %.epil.preheader191 ], [ %epil.iter193.next, %bb.o ]
  %.val.i.i.epil = load ptr, ptr %i.ci, align 8, !tbaa !476
  %i.do = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.dp = getelementptr i8, ptr %i.do, i64 %i.ck
  %i.dq = load i8, ptr %i.dp, align 1, !tbaa !387
  %i.dr = load i32, ptr %i.cg, align 4, !tbaa !560
  %i.ds = sext i32 %i.dr to i64
  %i.dt = getelementptr i8, ptr %i.cj, i64 %indvars.iv.i.i.epil
  %i.du = getelementptr i8, ptr %i.dt, i64 %i.ds
  store i8 %i.dq, ptr %i.du, align 1, !tbaa !387
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter193.next = add i64 %epil.iter193, 1   ; 2 uses
  %epil.iter193.cmp.not = icmp eq i64 %epil.iter193.next, %xtraiter192
  br i1 %epil.iter193.cmp.not, label %.loopexit.i.i, label %bb.o, !llvm.loop !570

.loopexit.i.i:                                    ; preds = %.loopexit.i.i.loopexit.unr-lcssa, %bb.o, %._crit_edge.i.i, %bb.e
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !435
  %i.dx = sext i32 %.sroa.0.0.copyload.i.i to i64
  %i.dy = getelementptr inbounds i8, ptr %i.dw, i64 %i.dx ; 2 uses
  %i.dz = sext i32 %.sroa.14.0.copyload.i.i to i64
  %i.ea = getelementptr inbounds i8, ptr %i.dy, i64 %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ec = load i32, ptr %i.eb, align 8, !tbaa !436
  %i.ed = add i32 %.sroa.0.0.copyload.i.i, %.sroa.14.0.copyload.i.i
  %reass.sub39 = sub i32 %i.ec, %i.ed
  %i.ee = add i32 %reass.sub39, 1
  %i.ef = sext i32 %i.ee to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dy, ptr nonnull align 1 %i.ea, i64 %i.ef, i1 false)
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.eg, align 4, !tbaa !492
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.eh, align 1, !tbaa !460
  %i.ei = load i32, ptr %i.eb, align 8, !tbaa !436
  %i.ej = sub nsw i32 %i.ei, %.sroa.14.0.copyload.i.i
  store i32 %i.ej, ptr %i.eb, align 8, !tbaa !436
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.i.i, %bb.c
  %.not55.i.i = icmp eq i32 %.sroa.8.0.copyload.i.i, 0
  br i1 %.not55.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ek = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  %i.el = sext i32 %.sroa.22.0.copyload.i.i to i64
  %i.em = getelementptr inbounds i8, ptr %i.ek, i64 %i.el
  %i.en = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.copyload.i.i, ptr noundef nonnull %i.em, i32 noundef %.sroa.8.0.copyload.i.i) ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.i, i64 2620 ; 2 uses
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !565
  %i.eq = sub nsw i32 %i.ep, %i.en
  store i32 %i.eq, ptr %i.eo, align 4, !tbaa !565
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.8.0.i.i = phi i32 [ %i.en, %bb.q ], [ 0, %bb.p ]
  %i.er = add nsw i32 %.sroa.8.0.i.i, %.sroa.0.0.copyload.i.i
  store i32 %i.er, ptr %i.i, align 4, !tbaa !451
  %i.es = load <2 x i16>, ptr %i.l, align 4, !tbaa !207
  %i.et = add <2 x i16> %i.es, splat (i16 -1)
  store <2 x i16> %i.et, ptr %i.l, align 4, !tbaa !207
  br label %_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL13stb_text_undoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i: ; preds = %bb.f, %bb.r, %bb.b
  %i.eu = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.eu, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.s:                                             ; preds = %.backedge.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.i, i64 2618
  %i.ew = load i16, ptr %i.ev, align 2, !tbaa !559 ; 2 uses
  %i.ex = icmp eq i16 %i.ew, 99
  br i1 %i.ex, label %_ZN5ImStbL13stb_text_redoEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ey = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.i, i64 2616 ; 3 uses
  %i.fa = load i16, ptr %i.ez, align 4, !tbaa !558
  %i.fb = sext i16 %i.fa to i64
  %i.fc = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.fb ; 5 uses
  %i.fd = sext i16 %i.ew to i64
  %i.fe = getelementptr inbounds [16 x i8], ptr %i.ey, i64 %i.fd ; 4 uses
  %.sroa.0.0.copyload.i355.i = load i32, ptr %i.fe, align 4, !tbaa !192 ; 5 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 4
  %.sroa.7.0.copyload.i.i = load i32, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !192 ; 3 uses
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.sroa.13.0.copyload.i.i = load i32, ptr %.sroa.13.0..sroa_idx.i.i, align 4, !tbaa !192 ; 7 uses
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fe, i64 12
  %.sroa.16.0.copyload.i.i = load i32, ptr %.sroa.16.0..sroa_idx.i.i, align 4, !tbaa !192
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 8 ; 2 uses
  store i32 %.sroa.7.0.copyload.i.i, ptr %i.ff, align 4, !tbaa !563
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fc, i64 4 ; 3 uses
  store i32 %.sroa.13.0.copyload.i.i, ptr %i.fg, align 4, !tbaa !562
  store i32 %.sroa.0.0.copyload.i355.i, ptr %i.fc, align 4, !tbaa !564
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fc, i64 12 ; 3 uses
  store i32 -1, ptr %i.fh, align 4, !tbaa !560
  %.not.i356.i = icmp eq i32 %.sroa.13.0.copyload.i.i, 0
  br i1 %.not.i356.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fi = getelementptr inbounds nuw i8, ptr %i.i, i64 2620 ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !565 ; 2 uses
  %i.fk = add nsw i32 %i.fj, %.sroa.13.0.copyload.i.i ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.i, i64 2624
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !566
  %i.fn = icmp sgt i32 %i.fk, %i.fm
  br i1 %i.fn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.fg, align 4, !tbaa !562
  store i32 0, ptr %i.ff, align 4, !tbaa !563
  br label %.loopexit.i357.i

bb.w:                                             ; preds = %bb.u
  store i32 %i.fj, ptr %i.fh, align 4, !tbaa !560
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !565
  %i.fo = icmp sgt i32 %.sroa.13.0.copyload.i.i, 0
  br i1 %i.fo, label %.lr.ph.i359.i, label %.loopexit.i357.i

.lr.ph.i359.i:                                    ; preds = %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fq = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i359.i
  %.045.i.i = phi i32 [ 0, %.lr.ph.i359.i ], [ %i.ga, %bb.x ] ; 3 uses
  %i.fr = load i32, ptr %i.fc, align 4, !tbaa !564
  %i.fs = add nsw i32 %i.fr, %.045.i.i
  %.val.i360.i = load ptr, ptr %i.fp, align 8, !tbaa !476
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds i8, ptr %.val.i360.i, i64 %i.ft
  %i.fv = load i8, ptr %i.fu, align 1, !tbaa !387
  %i.fw = load i32, ptr %i.fh, align 4, !tbaa !560
  %i.fx = add nsw i32 %i.fw, %.045.i.i
  %i.fy = sext i32 %i.fx to i64
  %i.fz = getelementptr inbounds i8, ptr %i.fq, i64 %i.fy
  store i8 %i.fv, ptr %i.fz, align 1, !tbaa !387
  %i.ga = add nuw nsw i32 %.045.i.i, 1            ; 2 uses
  %i.gb = load i32, ptr %i.fg, align 4, !tbaa !562
  %i.gc = icmp slt i32 %i.ga, %i.gb
  br i1 %i.gc, label %bb.x, label %.loopexit.i357.i, !llvm.loop !571

.loopexit.i357.i:                                 ; preds = %bb.x, %bb.w, %bb.v
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !435
  %i.gf = sext i32 %.sroa.0.0.copyload.i355.i to i64
  %i.gg = getelementptr inbounds i8, ptr %i.ge, i64 %i.gf ; 2 uses
  %i.gh = sext i32 %.sroa.13.0.copyload.i.i to i64
  %i.gi = getelementptr inbounds i8, ptr %i.gg, i64 %i.gh
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gk = load i32, ptr %i.gj, align 8, !tbaa !436
  %i.gl = add i32 %.sroa.0.0.copyload.i355.i, %.sroa.13.0.copyload.i.i
  %reass.sub38 = sub i32 %i.gk, %i.gl
  %i.gm = add i32 %reass.sub38, 1
  %i.gn = sext i32 %i.gm to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.gg, ptr nonnull align 1 %i.gi, i64 %i.gn, i1 false)
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.go, align 4, !tbaa !492
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.gp, align 1, !tbaa !460
  %i.gq = load i32, ptr %i.gj, align 8, !tbaa !436
  %i.gr = sub nsw i32 %i.gq, %.sroa.13.0.copyload.i.i
  store i32 %i.gr, ptr %i.gj, align 8, !tbaa !436
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.i357.i, %bb.t
  %.not44.i.i = icmp eq i32 %.sroa.7.0.copyload.i.i, 0
  br i1 %.not44.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.gs = getelementptr inbounds nuw i8, ptr %i.i, i64 1616
  %i.gt = sext i32 %.sroa.16.0.copyload.i.i to i64
  %i.gu = getelementptr inbounds i8, ptr %i.gs, i64 %i.gt
  %i.gv = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef %.sroa.0.0.copyload.i355.i, ptr noundef nonnull %i.gu, i32 noundef %.sroa.7.0.copyload.i.i) ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.i, i64 2624 ; 2 uses
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !566
  %i.gy = add nsw i32 %i.gx, %i.gv
  store i32 %i.gy, ptr %i.gw, align 4, !tbaa !566
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.sroa.7.0.i.i = phi i32 [ %i.gv, %bb.z ], [ 0, %bb.y ]
  %i.gz = add nsw i32 %.sroa.7.0.i.i, %.sroa.0.0.copyload.i355.i
  store i32 %i.gz, ptr %i.i, align 4, !tbaa !451
  %i.ha = load <2 x i16>, ptr %i.ez, align 4, !tbaa !207
  %i.hb = add <2 x i16> %i.ha, splat (i16 1)
end_hunk_3
begin_hunk_4_@_ZN19ImGuiInputTextState12OnKeyPressedEi:bb.a
  %i.vm = load i32, ptr %i.i, align 4, !tbaa !451 ; 2 uses
  %i.vn = icmp sgt i32 %i.vm, %.val339.i
  br i1 %i.vn, label %bb.fc, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i

bb.fc:                                            ; preds = %bb.fb
  store i32 %.val339.i, ptr %i.i, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i: ; preds = %bb.fc, %bb.fb
  %i.vo = phi i32 [ %i.vm, %bb.fb ], [ %.val339.i, %bb.fc ] ; 3 uses
  %i.vp = icmp eq i32 %i.vo, %i.sw
  br i1 %i.vp, label %.sink.split.i, label %bb.fd

bb.fd:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i
  %i.vq = icmp eq i32 %i.vo, %i.sx
  br i1 %i.vq, label %.sink.split.i, label %bb.fe

.sink.split.i:                                    ; preds = %bb.fd, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i
  %.sink.i = phi i8 [ 1, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit414.i ], [ 0, %bb.fd ]
  store i8 %.sink.i, ptr %i.sv, align 2, !tbaa !543
  br label %bb.fe

bb.fe:                                            ; preds = %.sink.split.i, %bb.fd
  store i8 1, ptr %i.sp, align 2, !tbaa !468
  store float %i.sz, ptr %i.sr, align 4, !tbaa !469
  br i1 %.not316490.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  store i32 %i.vo, ptr %i.rw, align 4, !tbaa !467
  br label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %i.vr = call i32 @llvm.smax.i32(i32 %i.sx, i32 1)
  %i.vs = add nsw i32 %i.vr, -1
  br label %bb.fh

bb.fh:                                            ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit416.i, %bb.fg
  %.0289.i = phi i32 [ %i.vs, %bb.fg ], [ %i.wc, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit416.i ] ; 3 uses
  %i.vt = icmp sgt i32 %.0289.i, 0
  br i1 %i.vt, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit416.i, label %bb.fi

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit416.i: ; preds = %bb.fh
  %i.vu = load ptr, ptr %i.su, align 8, !tbaa !476 ; 2 uses
  %i.vv = zext nneg i32 %.0289.i to i64
  %i.vw = getelementptr inbounds nuw i8, ptr %i.vu, i64 %i.vv
  %i.vx = call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.vu, ptr noundef nonnull %i.vw)
  %i.vy = load ptr, ptr %i.su, align 8, !tbaa !476 ; 2 uses
  %i.vz = ptrtoint ptr %i.vx to i64
  %i.wa = ptrtoint ptr %i.vy to i64
  %i.wb = sub i64 %i.vz, %i.wa                    ; 2 uses
  %i.wc = trunc i64 %i.wb to i32
  %sext482.i = shl i64 %i.wb, 32
  %i.wd = ashr exact i64 %sext482.i, 32
  %i.we = getelementptr inbounds i8, ptr %i.vy, i64 %i.wd
  %i.wf = load i8, ptr %i.we, align 1, !tbaa !387
  %i.wg = icmp eq i8 %i.wf, 10
  br i1 %i.wg, label %bb.fi, label %bb.fh

bb.fi:                                            ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit416.i, %bb.fh
  %.val352.i = load i8, ptr %i.j, align 1, !tbaa !456
  %i.wh = call fastcc noundef i32 @_ZN5ImStbL31STB_TEXTEDIT_MOVELINESTART_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr noundef nonnull %0, i8 %.val352.i, i32 noundef %.0289.i)
  %i.wi = add nuw nsw i32 %.0292502.i, 1          ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.wi, %i.rt
  br i1 %exitcond.not.i, label %.thread478.i, label %bb.eo, !llvm.loop !579

.thread478.i:                                     ; preds = %bb.fi, %bb.eo, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit405.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fj:                                            ; preds = %bb.ea
  %i.wj = or disjoint i32 %i.rn, 2097152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #41
  br label %.backedge.i.backedge

.backedge.i.backedge:                             ; preds = %bb.fj, %bb.dy
  %.0.i.be = phi i32 [ %i.rm, %bb.dy ], [ %i.wj, %bb.fj ]
  br label %.backedge.i

bb.fk:                                            ; preds = %.backedge.i, %.backedge.i
  %i.wk = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.wl = load i32, ptr %i.wk, align 4, !tbaa !466
  %i.wm = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wn = load i32, ptr %i.wm, align 4, !tbaa !467
  %.not315.i = icmp eq i32 %i.wl, %i.wn
  br i1 %.not315.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.i)
  br label %bb.fo

bb.fm:                                            ; preds = %bb.fk
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val332.i = load i32, ptr %i.wo, align 8, !tbaa !436
  %i.wp = load i32, ptr %i.i, align 4, !tbaa !451 ; 3 uses
  %i.wq = icmp slt i32 %i.wp, %.val332.i
  br i1 %i.wq, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %bb.fm
  %i.wr = tail call fastcc noundef i32 @_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei(ptr noundef nonnull %0, i32 noundef %i.wp)
  %i.ws = load i32, ptr %i.i, align 4, !tbaa !451
  %i.wt = sub nsw i32 %i.wr, %i.ws
  tail call fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr noundef nonnull %0, ptr noundef nonnull %i.i, i32 noundef %i.wp, i32 noundef %i.wt)
  br label %bb.fo

bb.fo:                                            ; preds = %bb.fn, %bb.fm, %bb.fl
  %i.wu = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.wu, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fp:                                            ; preds = %.backedge.i, %.backedge.i
  %i.wv = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !466
  %i.wx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !467
  %.not.i = icmp eq i32 %i.ww, %i.wy
  br i1 %.not.i, label %bb.fr, label %bb.fq

bb.fq:                                            ; preds = %bb.fp
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %i.i)
  br label %bb.fv

bb.fr:                                            ; preds = %bb.fp
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.val338.i = load i32, ptr %i.wz, align 8, !tbaa !436 ; 3 uses
  %i.xa = load i32, ptr %i.i, align 4, !tbaa !451 ; 2 uses
  %i.xb = icmp sgt i32 %i.xa, %.val338.i
  br i1 %i.xb, label %bb.fs, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit418.i

bb.fs:                                            ; preds = %bb.fr
  store i32 %.val338.i, ptr %i.i, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit418.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit418.i: ; preds = %bb.fs, %bb.fr
  %i.xc = phi i32 [ %i.xa, %bb.fr ], [ %.val338.i, %bb.fs ] ; 2 uses
  %i.xd = icmp sgt i32 %i.xc, 0
  br i1 %i.xd, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit420.i, label %bb.fv

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit420.i: ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit418.i
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 7 uses
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !476 ; 2 uses
  %i.xg = zext nneg i32 %i.xc to i64
  %i.xh = getelementptr inbounds nuw i8, ptr %i.xf, i64 %i.xg
  %i.xi = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.xf, ptr noundef nonnull %i.xh)
  %i.xj = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.xk = ptrtoint ptr %i.xi to i64
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = sub i64 %i.xk, %i.xl                    ; 2 uses
  %i.xn = trunc i64 %i.xm to i32                  ; 3 uses
  %i.xo = load i32, ptr %i.i, align 4, !tbaa !451 ; 2 uses
  %i.xp = sub nsw i32 %i.xo, %i.xn                ; 6 uses
  %i.xq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.xr = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.xq, i32 noundef %i.xn, i32 noundef %i.xp, i32 noundef 0) ; 6 uses
  %.not.i.i.i = icmp ne ptr %i.xr, null
  %i.xs = icmp sgt i32 %i.xp, 0
  %or.cond.i.i.i = and i1 %.not.i.i.i, %i.xs
  %sext481.i = shl i64 %i.xm, 32
  %i.xt = ashr exact i64 %sext481.i, 32           ; 6 uses
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i424.i, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i

.lr.ph.i.i424.i:                                  ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit420.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.xp to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 3 uses
  %i.xu = icmp ult i32 %i.xp, 4
  br i1 %i.xu, label %.epil.preheader, label %.lr.ph.i.i424.i.new

.lr.ph.i.i424.i.new:                              ; preds = %.lr.ph.i.i424.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483644
  br label %bb.ft

bb.ft:                                            ; preds = %bb.ft, %.lr.ph.i.i424.i.new
  %indvars.iv.i.i425.i = phi i64 [ 0, %.lr.ph.i.i424.i.new ], [ %indvars.iv.next.i.i426.i.3, %bb.ft ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i424.i.new ], [ %niter.next.3, %bb.ft ]
  %.val.i.i.i = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.xv = getelementptr i8, ptr %.val.i.i.i, i64 %indvars.iv.i.i425.i
  %i.xw = getelementptr i8, ptr %i.xv, i64 %i.xt
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !387
  %i.xy = getelementptr inbounds nuw i8, ptr %i.xr, i64 %indvars.iv.i.i425.i
  store i8 %i.xx, ptr %i.xy, align 1, !tbaa !387
  %indvars.iv.next.i.i426.i = or disjoint i64 %indvars.iv.i.i425.i, 1 ; 2 uses
  %.val.i.i.i.1 = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.xz = getelementptr i8, ptr %.val.i.i.i.1, i64 %indvars.iv.next.i.i426.i
  %i.ya = getelementptr i8, ptr %i.xz, i64 %i.xt
  %i.yb = load i8, ptr %i.ya, align 1, !tbaa !387
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xr, i64 %indvars.iv.next.i.i426.i
  store i8 %i.yb, ptr %i.yc, align 1, !tbaa !387
  %indvars.iv.next.i.i426.i.1 = or disjoint i64 %indvars.iv.i.i425.i, 2 ; 2 uses
  %.val.i.i.i.2 = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.yd = getelementptr i8, ptr %.val.i.i.i.2, i64 %indvars.iv.next.i.i426.i.1
  %i.ye = getelementptr i8, ptr %i.yd, i64 %i.xt
  %i.yf = load i8, ptr %i.ye, align 1, !tbaa !387
  %i.yg = getelementptr inbounds nuw i8, ptr %i.xr, i64 %indvars.iv.next.i.i426.i.1
  store i8 %i.yf, ptr %i.yg, align 1, !tbaa !387
  %indvars.iv.next.i.i426.i.2 = or disjoint i64 %indvars.iv.i.i425.i, 3 ; 2 uses
  %.val.i.i.i.3 = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.yh = getelementptr i8, ptr %.val.i.i.i.3, i64 %indvars.iv.next.i.i426.i.2
  %i.yi = getelementptr i8, ptr %i.yh, i64 %i.xt
  %i.yj = load i8, ptr %i.yi, align 1, !tbaa !387
  %i.yk = getelementptr inbounds nuw i8, ptr %i.xr, i64 %indvars.iv.next.i.i426.i.2
  store i8 %i.yj, ptr %i.yk, align 1, !tbaa !387
  %indvars.iv.next.i.i426.i.3 = add nuw nsw i64 %indvars.iv.i.i425.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.loopexit.unr-lcssa, label %bb.ft, !llvm.loop !580

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.loopexit.unr-lcssa: ; preds = %bb.ft
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i424.i
  %indvars.iv.i.i425.i.epil.init = phi i64 [ 0, %.lr.ph.i.i424.i ], [ %indvars.iv.next.i.i426.i.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod188 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod188)
  br label %bb.fu

bb.fu:                                            ; preds = %bb.fu, %.epil.preheader
  %indvars.iv.i.i425.i.epil = phi i64 [ %indvars.iv.i.i425.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i426.i.epil, %bb.fu ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.fu ]
  %.val.i.i.i.epil = load ptr, ptr %i.xe, align 8, !tbaa !476
  %i.yl = getelementptr i8, ptr %.val.i.i.i.epil, i64 %indvars.iv.i.i425.i.epil
  %i.ym = getelementptr i8, ptr %i.yl, i64 %i.xt
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !387
  %i.yo = getelementptr inbounds nuw i8, ptr %i.xr, i64 %indvars.iv.i.i425.i.epil
  store i8 %i.yn, ptr %i.yo, align 1, !tbaa !387
  %indvars.iv.next.i.i426.i.epil = add nuw nsw i64 %indvars.iv.i.i425.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, label %bb.fu, !llvm.loop !581

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i.loopexit.unr-lcssa, %bb.fu, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit420.i
  %i.yp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.yq = load ptr, ptr %i.yp, align 8, !tbaa !435
  %i.yr = getelementptr inbounds i8, ptr %i.yq, i64 %i.xt ; 2 uses
  %i.ys = sext i32 %i.xp to i64
  %i.yt = getelementptr inbounds i8, ptr %i.yr, i64 %i.ys
  %i.yu = load i32, ptr %i.wz, align 8, !tbaa !436
  %reass.sub = sub i32 %i.yu, %i.xo
  %i.yv = add i32 %reass.sub, 1
  %i.yw = sext i32 %i.yv to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.yr, ptr align 1 %i.yt, i64 %i.yw, i1 false)
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.yx, align 4, !tbaa !492
  %i.yy = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.yy, align 1, !tbaa !460
  %i.yz = load i32, ptr %i.wz, align 8, !tbaa !436
  %i.za = sub nsw i32 %i.yz, %i.xp
  store i32 %i.za, ptr %i.wz, align 8, !tbaa !436
  store i32 %i.xn, ptr %i.i, align 4, !tbaa !451
  br label %bb.fv

bb.fv:                                            ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.i, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit418.i, %bb.fq
  %i.zb = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.zb, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fw:                                            ; preds = %.backedge.i
  %i.zc = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.zc, align 4, !tbaa !467
  %i.zd = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.zd, align 4, !tbaa !466
  store i32 0, ptr %i.i, align 4, !tbaa !451
  %i.ze = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.ze, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fx:                                            ; preds = %.backedge.i
  %i.zf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val331.i = load i32, ptr %i.zf, align 8, !tbaa !436
  store i32 %.val331.i, ptr %i.i, align 4, !tbaa !451
  %i.zg = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i32 0, ptr %i.zg, align 4, !tbaa !467
  %i.zh = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %i.zh, align 4, !tbaa !466
  %i.zi = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.zi, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.fy:                                            ; preds = %.backedge.i
  %i.zj = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.zk = load i32, ptr %i.zj, align 4, !tbaa !466
  %i.zl = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.zm = load i32, ptr %i.zl, align 4, !tbaa !467
  %.not.i428.i = icmp eq i32 %i.zk, %i.zm
  br i1 %.not.i428.i, label %bb.fz, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit429.i

bb.fz:                                            ; preds = %bb.fy
  %i.zn = load i32, ptr %i.i, align 4, !tbaa !451
  store i32 %i.zn, ptr %i.zj, align 4, !tbaa !466
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit429.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit429.i: ; preds = %bb.fz, %bb.fy
  store i32 0, ptr %i.zl, align 4, !tbaa !467
  store i32 0, ptr %i.i, align 4, !tbaa !451
  %i.zo = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.zo, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.ga:                                            ; preds = %.backedge.i
  %i.zp = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 2 uses
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !466
  %i.zr = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.zs = load i32, ptr %i.zr, align 4, !tbaa !467
  %.not.i430.i = icmp eq i32 %i.zq, %i.zs
  br i1 %.not.i430.i, label %bb.gb, label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit431.i

bb.gb:                                            ; preds = %bb.ga
  %i.zt = load i32, ptr %i.i, align 4, !tbaa !451
  store i32 %i.zt, ptr %i.zp, align 4, !tbaa !466
  br label %_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit431.i

_ZN5ImStbL37stb_textedit_prep_selection_at_cursorEPNS_17STB_TexteditStateE.exit431.i: ; preds = %bb.gb, %bb.ga
  %i.zu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.zu, align 8, !tbaa !436 ; 2 uses
  store i32 %.val.i, ptr %i.zr, align 4, !tbaa !467
  store i32 %.val.i, ptr %i.i, align 4, !tbaa !451
  %i.zv = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.zv, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.gc:                                            ; preds = %.backedge.i
  %i.zw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val337.i = load i32, ptr %i.zw, align 8, !tbaa !436 ; 9 uses
  %i.zx = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %i.zy = load i32, ptr %i.zx, align 4, !tbaa !466 ; 5 uses
  %i.zz = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  %i.aaa = load i32, ptr %i.zz, align 4, !tbaa !467 ; 3 uses
  %.not.i432.i = icmp eq i32 %i.zy, %i.aaa
  br i1 %.not.i432.i, label %bb.gj, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.aab = icmp sgt i32 %i.zy, %.val337.i
  br i1 %i.aab, label %bb.ge, label %bb.gf

bb.ge:                                            ; preds = %bb.gd
  store i32 %.val337.i, ptr %i.zx, align 4, !tbaa !466
  br label %bb.gf

bb.gf:                                            ; preds = %bb.ge, %bb.gd
  %i.aac = phi i32 [ %.val337.i, %bb.ge ], [ %i.zy, %bb.gd ] ; 5 uses
  %i.aad = icmp sgt i32 %i.aaa, %.val337.i
  br i1 %i.aad, label %bb.gg, label %bb.gh

bb.gg:                                            ; preds = %bb.gf
  store i32 %.val337.i, ptr %i.zz, align 4, !tbaa !467
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.aae = phi i32 [ %.val337.i, %bb.gg ], [ %i.aaa, %bb.gf ] ; 2 uses
  %i.aaf = icmp eq i32 %i.aac, %i.aae
  br i1 %i.aaf, label %bb.gi, label %bb.gj

bb.gi:                                            ; preds = %bb.gh
  store i32 %i.aac, ptr %i.i, align 4, !tbaa !451
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh, %bb.gc
  %i.aag = phi i32 [ %i.aac, %bb.gi ], [ %i.aae, %bb.gh ], [ %i.zy, %bb.gc ] ; 4 uses
  %i.aah = phi i32 [ %i.aac, %bb.gi ], [ %i.aac, %bb.gh ], [ %i.zy, %bb.gc ] ; 3 uses
  %i.aai = load i32, ptr %i.i, align 4, !tbaa !451 ; 2 uses
  %i.aaj = icmp sgt i32 %i.aai, %.val337.i
  br i1 %i.aaj, label %bb.gk, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i

bb.gk:                                            ; preds = %bb.gj
  store i32 %.val337.i, ptr %i.i, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i: ; preds = %bb.gk, %bb.gj
  %i.aak = phi i32 [ %i.aai, %bb.gj ], [ %.val337.i, %bb.gk ]
  %.not.i434.i = icmp eq i32 %i.aah, %i.aag
  br i1 %.not.i434.i, label %_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit436.i, label %bb.gl

bb.gl:                                            ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i
  %i.aal = icmp slt i32 %i.aag, %i.aah
  br i1 %i.aal, label %bb.gm, label %_ZN5ImStbL26stb_textedit_sortselectionEPNS_17STB_TexteditStateE.exit.i435.i

bb.gm:                                            ; preds = %bb.gl
  store i32 %i.aag, ptr %i.zx, align 4, !tbaa !466
  br label %_ZN5ImStbL26stb_textedit_sortselectionEPNS_17STB_TexteditStateE.exit.i435.i

_ZN5ImStbL26stb_textedit_sortselectionEPNS_17STB_TexteditStateE.exit.i435.i: ; preds = %bb.gm, %bb.gl
  %i.aam = phi i32 [ %i.aah, %bb.gl ], [ %i.aag, %bb.gm ] ; 3 uses
  store i32 %i.aam, ptr %i.i, align 4, !tbaa !451
  store i32 %i.aam, ptr %i.zz, align 4, !tbaa !467
  %i.aan = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.aan, align 2, !tbaa !468
  br label %_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit436.i

_ZN5ImStbL26stb_textedit_move_to_firstEPNS_17STB_TexteditStateE.exit436.i: ; preds = %_ZN5ImStbL26stb_textedit_sortselectionEPNS_17STB_TexteditStateE.exit.i435.i, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i
  %i.aao = phi i32 [ %i.aak, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit433.i ], [ %i.aam, %_ZN5ImStbL26stb_textedit_sortselectionEPNS_17STB_TexteditStateE.exit.i435.i ]
  %.val351.i = load i8, ptr %i.j, align 1, !tbaa !456
  %i.aap = tail call fastcc noundef i32 @_ZN5ImStbL31STB_TEXTEDIT_MOVELINESTART_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr noundef nonnull %0, i8 %.val351.i, i32 noundef %i.aao)
  store i32 %i.aap, ptr %i.i, align 4, !tbaa !451
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.i, i64 22
  store i8 0, ptr %i.aaq, align 2, !tbaa !468
  br label %_ZN5ImStbL16stb_textedit_keyEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi.exit

bb.gn:                                            ; preds = %.backedge.i
  %i.aar = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val336.i = load i32, ptr %i.aar, align 8, !tbaa !436 ; 11 uses
  %i.aas = getelementptr inbounds nuw i8, ptr %i.i, i64 4 ; 3 uses
  %i.aat = load i32, ptr %i.aas, align 4, !tbaa !466 ; 5 uses
  %i.aau = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
end_hunk_4
begin_hunk_5_@_ZN8ImVectorIcE7reserveEi:bb.a
  %i.g = load i32, ptr %0, align 8, !tbaa !449
  %i.h = sext i32 %i.g to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.d, ptr nonnull align 1 %i.f, i64 %i.h, i1 false)
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !448
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store ptr %i.d, ptr %i.e, align 8, !tbaa !448
  store i32 %1, ptr %i.a, align 4, !tbaa !447
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare noundef ptr @_ZN5ImGui16GetClipboardTextEv() local_unnamed_addr #3

declare noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8ImVectorIcE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #26 comdat align 2 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !449    ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !447
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %bb.b, label %._ZN8ImVectorIcE7reserveEi.exit_crit_edge

._ZN8ImVectorIcE7reserveEi.exit_crit_edge:        ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !448
  br label %_ZN8ImVectorIcE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i32 %i.a, 1
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZNK8ImVectorIcE14_grow_capacityEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = sdiv i32 %i.a, 2
  %i.g = add nsw i32 %i.f, %i.a
  br label %_ZNK8ImVectorIcE14_grow_capacityEi.exit

_ZNK8ImVectorIcE14_grow_capacityEi.exit:          ; preds = %bb.b, %bb.c
  %i.h = phi i32 [ %i.g, %bb.c ], [ 8, %bb.b ]
  %i.i = tail call noundef i32 @llvm.smax.i32(i32 %i.h, i32 %i.e) ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = tail call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef %i.j) ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !448  ; 2 uses
  %.not6.i = icmp eq ptr %i.m, null
  br i1 %.not6.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZNK8ImVectorIcE14_grow_capacityEi.exit
  %i.n = load i32, ptr %0, align 8, !tbaa !449
  %i.o = sext i32 %i.n to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !448
  tail call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.p)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZNK8ImVectorIcE14_grow_capacityEi.exit
  store ptr %i.k, ptr %i.l, align 8, !tbaa !448
  store i32 %i.i, ptr %i.b, align 4, !tbaa !447
  %.pre3 = load i32, ptr %0, align 8, !tbaa !449
  br label %_ZN8ImVectorIcE7reserveEi.exit

_ZN8ImVectorIcE7reserveEi.exit:                   ; preds = %._ZN8ImVectorIcE7reserveEi.exit_crit_edge, %bb.e
  %i.q = phi i32 [ %i.a, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %.pre3, %bb.e ]
  %i.r = phi ptr [ %.pre, %._ZN8ImVectorIcE7reserveEi.exit_crit_edge ], [ %i.k, %bb.e ]
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  %i.u = load i8, ptr %1, align 1
  store i8 %i.u, ptr %i.t, align 1
  %i.v = load i32, ptr %0, align 8, !tbaa !449
  %i.w = add nsw i32 %i.v, 1
  store i32 %i.w, ptr %0, align 8, !tbaa !449
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL18stb_textedit_pasteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !436 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !466  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !467  ; 3 uses
  %.not.i.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, %.val.i
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.val.i, ptr %i.b, align 4, !tbaa !466
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.val.i, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %i.h = icmp sgt i32 %i.e, %.val.i
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.val.i, ptr %i.d, align 4, !tbaa !467
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %.val.i, %bb.e ], [ %i.e, %bb.d ]
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %1, align 4, !tbaa !451
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a
  %i.k = load i32, ptr %1, align 4, !tbaa !451
  %i.l = icmp sgt i32 %i.k, %.val.i
  br i1 %i.l, label %bb.i, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

bb.i:                                             ; preds = %bb.h
  store i32 %.val.i, ptr %1, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i: ; preds = %bb.i, %bb.h
  tail call fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr noundef nonnull %0, ptr noundef nonnull %1)
  %i.m = load i32, ptr %1, align 4, !tbaa !451
  %i.n = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef %i.m, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) ; 3 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i
  %i.o = load i32, ptr %1, align 4, !tbaa !451
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.q = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.o, i32 noundef 0, i32 noundef range(i32 1, 0) %i.n) ; 0 uses
  %i.r = load i32, ptr %1, align 4, !tbaa !451
  %i.s = add nsw i32 %i.r, %i.n
  store i32 %i.s, ptr %1, align 4, !tbaa !451
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.t, align 2, !tbaa !468
  br label %_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit

_ZN5ImStbL27stb_textedit_paste_internalEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPci.exit: ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit.i, %bb.j
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5ImStbL20stb_textedit_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEPKci(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) initializes((2618, 2620), (2624, 2628)) %1, ptr noundef %2, i32 noundef range(i32 -2147483648, 2147483647) %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !436  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.c, i32 noundef 0, i32 noundef %i.b, i32 noundef range(i32 -2147483648, 2147483647) %3) ; 6 uses
  %.not.i = icmp ne ptr %i.d, null
  %i.e = icmp sgt i32 %i.b, 0
  %or.cond.i = and i1 %i.e, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %wide.trip.count.i = zext nneg i32 %i.b to i64  ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.g = icmp ult i32 %i.b, 4
  br i1 %i.g, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %.val.i = load ptr, ptr %i.f, align 8, !tbaa !476
  %i.h = getelementptr i8, ptr %.val.i, i64 %indvars.iv.i
  %i.i = load i8, ptr %i.h, align 1, !tbaa !387
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !387
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i.1 = load ptr, ptr %i.f, align 8, !tbaa !476
  %i.k = getelementptr i8, ptr %.val.i.1, i64 %indvars.iv.next.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !387
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i
  store i8 %i.l, ptr %i.m, align 1, !tbaa !387
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %.val.i.2 = load ptr, ptr %i.f, align 8, !tbaa !476
  %i.n = getelementptr i8, ptr %.val.i.2, i64 %indvars.iv.next.i.1
  %i.o = load i8, ptr %i.n, align 1, !tbaa !387
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i.1
  store i8 %i.o, ptr %i.p, align 1, !tbaa !387
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %.val.i.3 = load ptr, ptr %i.f, align 8, !tbaa !476
  %i.q = getelementptr i8, ptr %.val.i.3, i64 %indvars.iv.next.i.2
  %i.r = load i8, ptr %i.q, align 1, !tbaa !387
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.next.i.2
  store i8 %i.r, ptr %i.s, align 1, !tbaa !387
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !514

_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa ]
  %lcmp.mod20 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod20)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.val.i.epil = load ptr, ptr %i.f, align 8, !tbaa !476
  %i.t = getelementptr i8, ptr %.val.i.epil, i64 %indvars.iv.i.epil
  %i.u = load i8, ptr %i.t, align 1, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv.i.epil
  store i8 %i.u, ptr %i.v, align 1, !tbaa !387
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit, label %bb.c, !llvm.loop !594

_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit: ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit.loopexit.unr-lcssa, %bb.c, %bb.a
  %i.w = load i32, ptr %i.a, align 8, !tbaa !436  ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !435  ; 2 uses
  %i.z = sext i32 %i.w to i64
  %i.aa = getelementptr inbounds i8, ptr %i.y, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  store i8 %i.ab, ptr %i.y, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ac, align 4, !tbaa !492
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ad, align 1, !tbaa !460
  %i.ae = load i32, ptr %i.a, align 8, !tbaa !436
  %i.af = sub nsw i32 %i.ae, %i.w
  store i32 %i.af, ptr %i.a, align 8, !tbaa !436
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i32 0, ptr %i.ag, align 4, !tbaa !467
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  store i32 0, ptr %i.ah, align 4, !tbaa !466
  store i32 0, ptr %1, align 4, !tbaa !451
  %i.ai = icmp slt i32 %3, 1
  br i1 %i.ai, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit
  %i.aj = tail call fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr noundef nonnull %0, i32 noundef 0, ptr noundef %2, i32 noundef %3)
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %3, ptr %i.ag, align 4, !tbaa !467
  store i32 %3, ptr %i.ah, align 4, !tbaa !466
  store i32 %3, ptr %1, align 4, !tbaa !451
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.al, align 2, !tbaa !468
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %_ZN5ImStbL25stb_text_makeundo_replaceEP19ImGuiInputTextStatePNS_17STB_TexteditStateEiii.exit
  ret void
}

declare noundef zeroext i1 @_ZN5ImGui17IsItemDeactivatedEv() local_unnamed_addr #3

declare void @_ZN5ImGui25CalcClipRectVisibleItemsYERK6ImRectRK6ImVec2fPiS6_(ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(8), float noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104), i16 noundef zeroext) local_unnamed_addr #3

declare void @_ZN6ImFont10RenderTextEP10ImDrawListfRK6ImVec2jRK6ImVec4PKcS9_fi(ptr noundef nonnull align 8 dereferenceable(76), ptr noundef, float noundef, ptr noundef nonnull align 4 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(16), ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

declare void @_ZN10ImDrawList8AddLineVEfffjf(ptr noundef nonnull align 8 dereferenceable(224), float noundef, float noundef, float noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui23DebugNodeInputTextStateEP19ImGuiInputTextState(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImVec2, align 4             ; 5 uses
  %2 = alloca %struct.ImVec2, align 8             ; 4 uses
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !439  ; 11 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !458
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 5428
  %i.h = load i32, ptr %i.g, align 4, !tbaa !205
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.28, i32 noundef %i.f, i32 noundef %i.h)
  %i.i = load i32, ptr %i.e, align 4, !tbaa !458
  tail call void @_ZN5ImGui22DebugLocateItemOnHoverEj(i32 noundef %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i32, ptr %i.j, align 8, !tbaa !436
  %i.l = load i32, ptr %i.c, align 4, !tbaa !451
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !455
  %i.o = and i32 %i.n, 16777216
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 118
  %i.q = load i8, ptr %i.p, align 2, !tbaa !543
  %i.r = icmp eq i8 %i.q, 0
  %.str.30..str.31 = select i1 %i.r, ptr @.str.30, ptr @.str.31
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.s = phi ptr [ %.str.30..str.31, %bb.b ], [ @.str, %bb.a ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !466
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = load i32, ptr %i.v, align 4, !tbaa !467
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.29, i32 noundef %i.k, i32 noundef %i.l, ptr noundef nonnull %i.s, i32 noundef %i.u, i32 noundef %i.w)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.y = load i32, ptr %i.x, align 8, !tbaa !493
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !544
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.32, i32 noundef %i.y, i32 noundef %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !584
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !595
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.33, i32 noundef %i.ac, i32 noundef %i.ae)
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  %i.ag = load i8, ptr %i.af, align 2, !tbaa !468
  %i.ah = zext i8 %i.ag to i32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !469
  %i.ak = fpext float %i.aj to double
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.34, i32 noundef %i.ah, double noundef %i.ak)
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 2616 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4, !tbaa !558
  %i.an = sext i16 %i.am to i32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 2618 ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !559
  %i.aq = sext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 2620
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !565
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 2624
  %i.au = load i32, ptr %i.at, align 4, !tbaa !566
  tail call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.35, i32 noundef %i.an, i32 noundef %i.aq, i32 noundef %i.as, i32 noundef %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.av = tail call noundef float @_ZN5ImGui17GetTextLineHeightEv()
  %i.aw = fmul float %i.av, 1.000000e+01
  store float 0.000000e+00, ptr %1, align 4, !tbaa !176
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 4
  store float %i.aw, ptr %i.ax, align 4, !tbaa !181
  %i.ay = call noundef zeroext i1 @_ZN5ImGui10BeginChildEPKcRK6ImVec2ii(ptr noundef nonnull @.str.36, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef 9, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br i1 %i.ay, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !171
  call void @_ZN5ImGui12PushStyleVarEiRK6ImVec2(i32 noundef 14, ptr noundef nonnull align 4 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 1616 ; 2 uses
  br label %bb.f

bb.e:                                             ; preds = %bb.j
  call void @_ZN5ImGui11PopStyleVarEi(i32 noundef 1)
  br label %bb.k

bb.f:                                             ; preds = %bb.d, %bb.j
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.j ] ; 6 uses
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv ; 9 uses
  %i.bb = load i16, ptr %i.al, align 4, !tbaa !558
  %i.bc = sext i16 %i.bb to i64
  %i.bd = icmp slt i64 %indvars.iv, %i.bc
  br i1 %i.bd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.be = load i16, ptr %i.ao, align 2, !tbaa !559
  %i.bf = sext i16 %i.be to i64
  %.not43 = icmp slt i64 %indvars.iv, %i.bf
  br i1 %.not43, label %.thread46, label %bb.h

.thread46:                                        ; preds = %bb.g
  call void @_ZN5ImGui13BeginDisabledEb(i1 noundef zeroext true)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %.pre = load i32, ptr %.phi.trans.insert, align 4, !tbaa !560 ; 2 uses
  %i.bg = sext i32 %.pre to i64
  %i.bh = getelementptr inbounds i8, ptr %i.az, i64 %i.bg
  %i.bi = load i32, ptr %i.ba, align 4, !tbaa !564
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !562
  %i.bl = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !563
  %i.bn = trunc nuw nsw i64 %indvars.iv to i32
  call void (ptr, ...) @_ZN5ImGui4TextEPKcz(ptr noundef nonnull @.str.37, i32 noundef 32, i32 noundef %i.bn, i32 noundef %i.bi, i32 noundef %i.bk, i32 noundef %i.bm, i32 noundef %.pre, i32 noundef 0, ptr noundef nonnull %i.bh)
  call void @_ZN5ImGui11EndDisabledEv()
  br label %bb.j

bb.h:                                             ; preds = %bb.f, %bb.g
  %.ph = phi i32 [ 117, %bb.f ], [ 114, %bb.g ]
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !560 ; 2 uses
  %.not45 = icmp eq i32 %i.bp, -1
end_hunk_5
begin_hunk_6_@_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar:.preheader
  %i.kz = fmul float %i.ky, 2.000000e+01          ; 2 uses
  %i.la = fcmp olt float %storemerge.i, %i.kz
  %i.lb = select i1 %i.la, float %storemerge.i, float %i.kz
  %.pre510 = load i32, ptr %i.kg, align 4, !tbaa !854
  br label %bb.be

bb.be:                                            ; preds = %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit
  %i.lc = phi i32 [ %.pre510, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %.pre511, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit ] ; 3 uses
  %i.ld = phi float [ %i.lb, %_ZN5ImGui15TabItemCalcSizeEPKcb.exit ], [ %i.ki, %_ZN5ImGui16TabBarGetTabNameEP11ImGuiTabBarP12ImGuiTabItem.exit ] ; 4 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.jk, i64 24 ; 2 uses
  store float %i.ld, ptr %i.le, align 4, !tbaa !876
  %i.lf = and i32 %i.lc, 2097152
  %i.lg = icmp eq i32 %i.lf, 0
  br i1 %i.lg, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.lh = load float, ptr %i.ig, align 4, !tbaa !877 ; 2 uses
  %i.li = fcmp oge float %i.ld, %i.lh
  %i.lj = select i1 %i.li, float %i.ld, float %i.lh ; 2 uses
  store float %i.lj, ptr %i.le, align 4, !tbaa !876
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.lk = phi float [ %i.lj, %bb.bf ], [ %i.ld, %bb.be ] ; 7 uses
  %i.ll = and i32 %i.lc, 64
  %.not.i397 = icmp eq i32 %i.ll, 0
  %i.lm = and i32 %i.lc, 128
  %.not2.i398 = icmp eq i32 %i.lm, 0
  %i.ln = select i1 %.not2.i398, i32 1, i32 2
  %i.lo = select i1 %.not.i397, i32 %i.ln, i32 0  ; 3 uses
  %i.lp = zext nneg i32 %i.lo to i64              ; 2 uses
  %i.lq = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.lp
  %i.lr = icmp eq i32 %i.lo, %.0339449
  %i.ls = select i1 %i.lr, float %i.ck, float 0.000000e+00
  %i.lt = getelementptr inbounds nuw i8, ptr %i.lq, i64 4 ; 2 uses
  %i.lu = fcmp olt float %i.lk, %i.hz
  %i.lv = select i1 %i.lu, float %i.lk, float %i.hz
  %i.lw = insertelement <2 x float> poison, float %i.ls, i64 0
  %i.lx = shufflevector <2 x float> %i.lw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ly = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.lz = insertelement <2 x float> %i.ly, float %i.lv, i64 1
  %i.ma = fadd <2 x float> %i.lx, %i.lz
  %i.mb = load <2 x float>, ptr %i.lt, align 4, !tbaa !171
  %i.mc = fadd <2 x float> %i.mb, %i.ma
  store <2 x float> %i.mc, ptr %i.lt, align 4, !tbaa !171
  %i.md = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.lp ; 2 uses
  %i.me = load i32, ptr %i.md, align 4, !tbaa !192 ; 2 uses
  %i.mf = add nsw i32 %i.me, 1
  store i32 %i.mf, ptr %i.md, align 4, !tbaa !192
  %i.mg = load ptr, ptr %i.ih, align 8, !tbaa !870
  %i.mh = sext i32 %i.me to i64
  %i.mi = getelementptr inbounds [12 x i8], ptr %i.mg, i64 %i.mh ; 3 uses
  %i.mj = trunc nuw nsw i64 %indvars.iv490 to i32
  store i32 %i.mj, ptr %i.mi, align 4, !tbaa !346
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 8
  store float %i.lk, ptr %i.mk, align 4, !tbaa !343
  %i.ml = getelementptr inbounds nuw i8, ptr %i.mi, i64 4
  store float %i.lk, ptr %i.ml, align 4, !tbaa !339
  %i.mm = fcmp oge float %i.lk, 1.000000e+00
  %i.mn = select i1 %i.mm, float %i.lk, float 1.000000e+00
  %i.mo = getelementptr inbounds nuw i8, ptr %i.jk, i64 20
  store float %i.mn, ptr %i.mo, align 4, !tbaa !878
  %indvars.iv.next491 = add nuw nsw i64 %indvars.iv490, 1 ; 2 uses
  %i.mp = load i32, ptr %i.m, align 8, !tbaa !834 ; 2 uses
  %i.mq = sext i32 %i.mp to i64
  %i.mr = icmp slt i64 %indvars.iv.next491, %i.mq
  br i1 %i.mr, label %bb.av, label %._crit_edge454.loopexit, !llvm.loop !879

bb.bh:                                            ; preds = %._crit_edge454
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !880
  br label %bb.bi

bb.bi:                                            ; preds = %._crit_edge454, %bb.bh
  %i.mu = phi float [ %i.mt, %bb.bh ], [ %i.ji, %._crit_edge454 ]
  %i.mv = load float, ptr %i.h, align 8, !tbaa !233 ; 3 uses
  %i.mw = load float, ptr %i.g, align 8, !tbaa !232
  %i.mx = fsub float %i.mv, %i.mw
  %i.my = fcmp ogt float %i.mu, %i.mx
  %or.cond430 = and i1 %.lcssa436, %i.my
  br i1 %or.cond430, label %bb.bj, label %.thread

.thread:                                          ; preds = %bb.bi
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 2 uses
  store i8 0, ptr %i.mz, align 2, !tbaa !881
  br label %bb.bs

bb.bj:                                            ; preds = %bb.bi
  %i.na = and i32 %i.in, 16
  %.not368 = icmp eq i32 %i.na, 0
  %spec.select382 = and i1 %.not368, %i.jh        ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %0, i64 134 ; 5 uses
  %i.nc = zext i1 %spec.select382 to i8
  store i8 %i.nc, ptr %i.nb, align 2, !tbaa !881
  br i1 %spec.select382, label %bb.bk, label %bb.bs

bb.bk:                                            ; preds = %bb.bj
  %i.nd = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 5 uses
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 5312
  %i.nf = load ptr, ptr %i.ne, align 8, !tbaa !11 ; 2 uses
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nd, i64 4568
  %i.nh = load float, ptr %i.ng, align 8, !tbaa !189 ; 2 uses
  %i.ni = fadd float %i.nh, -2.000000e+00         ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.nd, i64 3288
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !229
  %i.nl = call float @llvm.fmuladd.f32(float %i.nk, float 2.000000e+00, float %i.nh)
  %.sroa.067.0.vec.insert.i = insertelement <2 x float> poison, float %i.ni, i64 0
  %.sroa.067.4.vec.insert.i = insertelement <2 x float> %.sroa.067.0.vec.insert.i, float %i.nl, i64 1 ; 2 uses
  %i.nm = fmul float %i.ni, 2.000000e+00          ; 3 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %i.nf, i64 280 ; 5 uses
  %i.no = load i64, ptr %i.nn, align 8            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #41
  %i.np = getelementptr inbounds nuw i8, ptr %i.nd, i64 3532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %i.np, i64 16, i1 false), !tbaa.struct !231
  %i.nq = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.nr = load float, ptr %i.nq, align 4, !tbaa !255
  %i.ns = fmul float %i.nr, 5.000000e-01
  store float %i.ns, ptr %i.nq, align 4, !tbaa !255
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @_ZN5ImGui14PushStyleColorEiRK6ImVec4(i32 noundef 22, ptr noundef nonnull align 4 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #41
  call void @_ZN5ImGui12PushItemFlagEib(i32 noundef 10, i1 noundef zeroext true)
  %i.nt = getelementptr inbounds nuw i8, ptr %i.nd, i64 164 ; 3 uses
  %i.nu = load float, ptr %i.g, align 8, !tbaa !828 ; 2 uses
  %i.nv = load float, ptr %i.h, align 8, !tbaa !882
  %i.nw = fsub float %i.nv, %i.nm                 ; 2 uses
  %i.nx = fcmp oge float %i.nu, %i.nw
  %i.ny = select i1 %i.nx, float %i.nu, float %i.nw ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !865
  %.sroa_idx63.i = getelementptr inbounds nuw i8, ptr %i.nf, i64 284 ; 2 uses
  %i.ob = fadd float %i.ni, %i.ny
  %i.oc = load <2 x float>, ptr %i.nt, align 4, !tbaa !171
  store <2 x float> <float 2.500000e-01, float 2.000000e-01>, ptr %i.nt, align 4, !tbaa !171
  store float %i.ny, ptr %i.nn, align 8
  store i32 %i.oa, ptr %.sroa_idx63.i, align 4
  %i.od = call noundef zeroext i1 @_ZN5ImGui13ArrowButtonExEPKc8ImGuiDir6ImVec2i(ptr noundef nonnull @.str.163, i32 noundef 0, <2 x float> %.sroa.067.4.vec.insert.i, i32 noundef 16)
  %spec.select.i399 = sext i1 %i.od to i32
  %i.oe = load i32, ptr %i.nz, align 4, !tbaa !865
  store float %i.ob, ptr %i.nn, align 8
  store i32 %i.oe, ptr %.sroa_idx63.i, align 4
  %i.of = call noundef zeroext i1 @_ZN5ImGui13ArrowButtonExEPKc8ImGuiDir6ImVec2i(ptr noundef nonnull @.str.164, i32 noundef 1, <2 x float> %.sroa.067.4.vec.insert.i, i32 noundef 16)
  %.156.i = select i1 %i.of, i32 1, i32 %spec.select.i399 ; 4 uses
  call void @_ZN5ImGui11PopItemFlagEv()
  call void @_ZN5ImGui13PopStyleColorEi(i32 noundef 2)
  store <2 x float> %i.oc, ptr %i.nt, align 4, !tbaa !171
  %.not.i400 = icmp eq i32 %.156.i, 0
  br i1 %.not.i400, label %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !850 ; 2 uses
  %.not.i.i401 = icmp eq i32 %i.oh, 0
  br i1 %.not.i.i401, label %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread, label %.preheader.i.i402

.preheader.i.i402:                                ; preds = %bb.bl
  %i.oi = load i32, ptr %i.m, align 8, !tbaa !834 ; 4 uses
  %i.oj = icmp sgt i32 %i.oi, 0
  br i1 %i.oj, label %.lr.ph.i.i404, label %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread

.lr.ph.i.i404:                                    ; preds = %.preheader.i.i402
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ol = load ptr, ptr %i.ok, align 8, !tbaa !815 ; 2 uses
  %wide.trip.count.i.i405 = zext nneg i32 %i.oi to i64
  br label %bb.bn

bb.bm:                                            ; preds = %bb.bn
  %indvars.iv.next.i.i407 = add nuw nsw i64 %indvars.iv.i.i406, 1 ; 2 uses
  %exitcond.not.i.i408 = icmp eq i64 %indvars.iv.next.i.i407, %wide.trip.count.i.i405
  br i1 %exitcond.not.i.i408, label %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread, label %bb.bn, !llvm.loop !863

bb.bn:                                            ; preds = %bb.bm, %.lr.ph.i.i404
  %indvars.iv.i.i406 = phi i64 [ 0, %.lr.ph.i.i404 ], [ %indvars.iv.next.i.i407, %bb.bm ] ; 3 uses
  %i.om = getelementptr inbounds nuw [44 x i8], ptr %i.ol, i64 %indvars.iv.i.i406
  %i.on = load i32, ptr %i.om, align 4, !tbaa !849
  %i.oo = icmp eq i32 %i.on, %i.oh
  br i1 %i.oo, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409, label %bb.bm

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409: ; preds = %bb.bn
  %i.op = trunc i64 %indvars.iv.i.i406 to i32     ; 2 uses
  %i.oq = add nsw i32 %.156.i, %i.op
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bp, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409
  %.078.i = phi i32 [ %i.oq, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409 ], [ %i.ox, %bb.bp ] ; 3 uses
  %.05177.i = phi i32 [ %i.op, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i409 ], [ %i.oy, %bb.bp ] ; 2 uses
  %or.cond89.i = icmp ult i32 %.078.i, %i.oi
  %i.or = select i1 %or.cond89.i, i32 %.078.i, i32 %.05177.i
  %i.os = sext i32 %i.or to i64
  %i.ot = getelementptr inbounds [44 x i8], ptr %i.ol, i64 %i.os ; 3 uses
  %i.ou = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  %i.ov = load i32, ptr %i.ou, align 4, !tbaa !854
  %i.ow = and i32 %i.ov, 2097152
  %.not60.i = icmp eq i32 %i.ow, 0
  br i1 %.not60.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ox = add nsw i32 %.078.i, %.156.i            ; 2 uses
  %i.oy = add nuw nsw i32 %.05177.i, %.156.i
  %or.cond.i410 = icmp ult i32 %i.ox, %i.oi
  br i1 %or.cond.i410, label %bb.bo, label %bb.bq, !llvm.loop !883

_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread: ; preds = %bb.bm, %bb.bk, %bb.bl, %.preheader.i.i402
  store i64 %i.no, ptr %i.nn, align 8
  %i.oz = fadd float %i.nm, 1.000000e+00
  %i.pa = load float, ptr %i.h, align 8, !tbaa !882
  %i.pb = fsub float %i.pa, %i.oz                 ; 2 uses
  store float %i.pb, ptr %i.h, align 8, !tbaa !882
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.pc = getelementptr inbounds nuw i8, ptr %i.ot, i64 4
  store i64 %i.no, ptr %i.nn, align 8
  %i.pd = fadd float %i.nm, 1.000000e+00
  %i.pe = load float, ptr %i.h, align 8, !tbaa !882
  %i.pf = fsub float %i.pe, %i.pd                 ; 3 uses
  store float %i.pf, ptr %i.h, align 8, !tbaa !882
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #41
  %i.pg = load i32, ptr %i.ot, align 4, !tbaa !849 ; 3 uses
  %i.ph = load i32, ptr %i.pc, align 4, !tbaa !854
  %i.pi = and i32 %i.ph, 2097152
  %i.pj = icmp eq i32 %i.pi, 0
  br i1 %i.pj, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  store i32 %i.pg, ptr %i.og, align 8, !tbaa !850
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread, %.thread, %bb.br, %bb.bq, %bb.bj
  %i.pk = phi float [ %i.mv, %bb.bj ], [ %i.pf, %bb.br ], [ %i.pf, %bb.bq ], [ %i.pb, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %i.mv, %.thread ]
  %i.pl = phi ptr [ %i.nb, %bb.bj ], [ %i.nb, %bb.br ], [ %i.nb, %bb.bq ], [ %i.nb, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %i.mz, %.thread ]
  %.9 = phi i32 [ %.6.lcssa, %bb.bj ], [ %i.pg, %bb.br ], [ %i.pg, %bb.bq ], [ %.6.lcssa, %_ZN5ImGuiL22TabBarScrollingButtonsEP11ImGuiTabBar.exit.thread ], [ %.6.lcssa, %.thread ] ; 2 uses
  %i.pm = icmp eq i32 %.9, 0
  %or.cond9 = select i1 %i.pm, i1 %i.l, i1 false
  br i1 %or.cond9, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.po = load i32, ptr %i.pn, align 8, !tbaa !850
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.10 = phi i32 [ %i.po, %bb.bt ], [ %.9, %bb.bs ] ; 2 uses
  %foldExtExtBinop = fadd <2 x float> %i.iv, %i.io
  %i.pp = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.pq = load float, ptr %i.g, align 8, !tbaa !232
  %i.pr = fsub float %i.pk, %i.pq                 ; 3 uses
  %i.ps = fcmp olt float %i.pp, %i.pr             ; 4 uses
  br i1 %i.ps, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.pt = extractelement <2 x float> %i.iv, i64 0
  %i.pu = extractelement <2 x float> %i.io, i64 0
  %i.pv = fsub float %i.pr, %i.pt
  %i.pw = fsub float %i.pv, %i.pu
  %i.px = extractelement <2 x float> %i.iz, i64 0
  %i.py = fsub float %i.px, %i.pw                 ; 2 uses
  %i.pz = fcmp oge float %i.py, 0.000000e+00
  %i.qa = select i1 %i.pz, float %i.py, float 0.000000e+00
  br label %bb.bx

bb.bw:                                            ; preds = %bb.bu
  %i.qb = fsub float %i.pp, %i.pr
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0329 = phi float [ %i.qa, %bb.bv ], [ %i.qb, %bb.bw ] ; 2 uses
  %i.qc = load i32, ptr %i.er, align 8, !tbaa !832
  %i.qd = and i32 %i.qc, 384
  %i.qe = icmp eq i32 %i.qd, 0
  %.not = and i1 %i.ps, %i.qe
  %i.qf = fcmp ult float %.0329, 1.000000e+00
  %brmerge = or i1 %i.qf, %.not
  br i1 %brmerge, label %.loopexit565, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.qg = select i1 %i.ps, i32 %i.co, i32 %i.hb   ; 3 uses
  %i.qh = select i1 %i.ps, i32 %i.hb, i32 0       ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.c, i64 9160 ; 2 uses
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !884
  %i.qk = sext i32 %i.qh to i64                   ; 2 uses
  %i.ql = getelementptr inbounds [12 x i8], ptr %i.qj, i64 %i.qk
  call void @_ZN5ImGui12ShrinkWidthsEP20ImGuiShrinkWidthItemiff(ptr noundef %i.ql, i32 noundef %i.qg, float noundef %.0329, float noundef %i.hz)
  %i.qm = icmp sgt i32 %i.qg, 0
  br i1 %i.qm, label %.lr.ph464, label %.loopexit565

.lr.ph464:                                        ; preds = %bb.by
  %i.qn = add nsw i32 %i.qh, %i.qg
  %i.qo = load ptr, ptr %i.qi, align 8, !tbaa !870
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.qq = sext i32 %i.qn to i64
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph464, %bb.cb
  %indvars.iv495 = phi i64 [ %i.qk, %.lr.ph464 ], [ %indvars.iv.next496, %bb.cb ] ; 2 uses
  %i.qr = getelementptr inbounds [12 x i8], ptr %i.qo, i64 %indvars.iv495 ; 2 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qr, i64 4
  %i.qt = load float, ptr %i.qs, align 4, !tbaa !339
  %i.qu = fptosi float %i.qt to i32               ; 2 uses
  %i.qv = icmp slt i32 %i.qu, 0
  br i1 %i.qv, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.qw = load ptr, ptr %i.qp, align 8, !tbaa !815
  %i.qx = load i32, ptr %i.qr, align 4, !tbaa !346
  %i.qy = sext i32 %i.qx to i64
  %i.qz = getelementptr inbounds [44 x i8], ptr %i.qw, i64 %i.qy ; 2 uses
  %i.ra = uitofp nneg i32 %i.qu to float          ; 2 uses
  %i.rb = fcmp ole float %i.ra, 1.000000e+00
  %i.rc = select i1 %i.rb, float 1.000000e+00, float %i.ra ; 2 uses
  %i.rd = getelementptr i8, ptr %i.qz, i64 4
  %.val = load i32, ptr %i.rd, align 4, !tbaa !854 ; 2 uses
  %i.re = and i32 %.val, 64
  %.not.i411 = icmp eq i32 %i.re, 0
  %i.rf = and i32 %.val, 128
  %.not2.i412 = icmp eq i32 %i.rf, 0
  %i.rg = select i1 %.not2.i412, i64 1, i64 2
  %i.rh = select i1 %.not.i411, i64 %i.rg, i64 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qz, i64 20 ; 2 uses
  %i.rj = load float, ptr %i.ri, align 4, !tbaa !878
  %i.rk = fsub float %i.rj, %i.rc
  %i.rl = getelementptr inbounds nuw [16 x i8], ptr %7, i64 %i.rh
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 4 ; 2 uses
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !885
  %i.ro = fsub float %i.rn, %i.rk
  store float %i.ro, ptr %i.rm, align 4, !tbaa !885
  store float %i.rc, ptr %i.ri, align 4, !tbaa !878
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca
  %indvars.iv.next496 = add nsw i64 %indvars.iv495, 1 ; 2 uses
  %i.rp = icmp slt i64 %indvars.iv.next496, %i.qq
  br i1 %i.rp, label %bb.bz, label %.loopexit565, !llvm.loop !886

bb.cc:                                            ; preds = %._crit_edge469.2
  %i.rq = call noundef ptr @_ZN5ImGui8MemAllocEm(i64 noundef 0) ; 2 uses
  %i.rr = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.rs = load ptr, ptr %i.rr, align 8, !tbaa !448 ; 2 uses
  %.not6.i.i414 = icmp eq ptr %i.rs, null
  br i1 %.not6.i.i414, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.rt = load i32, ptr %i.wa, align 8, !tbaa !449
  %i.ru = sext i32 %i.rt to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.rq, ptr nonnull align 1 %i.rs, i64 %i.ru, i1 false)
  %i.rv = load ptr, ptr %i.rr, align 8, !tbaa !448
  call void @_ZN5ImGui7MemFreeEPv(ptr noundef %i.rv)
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  store ptr %i.rq, ptr %i.rr, align 8, !tbaa !448
  store i32 0, ptr %i.wb, align 4, !tbaa !447
  br label %_ZN8ImVectorIcE6resizeEi.exit

_ZN8ImVectorIcE6resizeEi.exit:                    ; preds = %._crit_edge469.2, %bb.ce
  store i32 0, ptr %i.wa, align 8, !tbaa !449
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.rx = load i32, ptr %i.rw, align 4, !tbaa !806
  %i.ry = add nsw i32 %i.rx, 1
  %i.rz = getelementptr inbounds nuw i8, ptr %i.c, i64 4 ; 2 uses
  %i.sa = load i32, ptr %i.rz, align 4, !tbaa !585
  %i.sb = icmp slt i32 %i.ry, %i.sa
  %or.cond13 = select i1 %.0337.lcssa, i1 true, i1 %i.sb
  %.phi.trans.insert525 = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %0, i64 32
  br i1 %or.cond13, label %bb.cw, label %.thread563

.loopexit565:                                     ; preds = %bb.cb, %bb.bx, %bb.by
  %i.sd = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 4 uses
  %i.se = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %i.cm, label %.lr.ph468, label %.loopexit564

.lr.ph468:                                        ; preds = %.loopexit565
  %i.sf = load ptr, ptr %i.se, align 8, !tbaa !815 ; 3 uses
  %i.sg = add nsw i32 %i.cl, -1
  %i.sh = zext nneg i32 %i.sg to i64              ; 3 uses
  %wide.trip.count = zext nneg i32 %i.cl to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.si = icmp eq i32 %i.cl, 1
  br i1 %i.si, label %.epil.preheader, label %.lr.ph468.new

.lr.ph468.new:                                    ; preds = %.lr.ph468
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %bb.cr

.loopexit564.loopexit.unr-lcssa:                  ; preds = %bb.cv
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit564, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit564.loopexit.unr-lcssa, %.lr.ph468
  %indvars.iv498.epil.init = phi i64 [ 0, %.lr.ph468 ], [ %indvars.iv.next499.1611, %.loopexit564.loopexit.unr-lcssa ] ; 2 uses
  %.2465.epil.init = phi float [ 0.000000e+00, %.lr.ph468 ], [ %i.wx, %.loopexit564.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod608 = trunc i32 %i.cl to i1
  call void @llvm.assume(i1 %lcmp.mod608)
  %i.sj = getelementptr inbounds nuw [44 x i8], ptr %i.sf, i64 %indvars.iv498.epil.init ; 3 uses
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 16
  store float %.2465.epil.init, ptr %i.sk, align 4, !tbaa !887
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 32
  store i32 -1, ptr %i.sl, align 4, !tbaa !866
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sj, i64 20
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !878
  %i.so = icmp samesign ult i64 %indvars.iv498.epil.init, %i.sh
  br i1 %i.so, label %bb.cf, label %.loopexit564.loopexit.epilog-lcssa

bb.cf:                                            ; preds = %.epil.preheader
  %i.sp = load float, ptr %i.cj, align 4, !tbaa !412
  br label %.loopexit564.loopexit.epilog-lcssa

.loopexit564.loopexit.epilog-lcssa:               ; preds = %bb.cf, %.epil.preheader
  %i.sq = phi float [ %i.sp, %bb.cf ], [ 0.000000e+00, %.epil.preheader ]
  %i.sr = fadd float %i.sn, %i.sq
  %i.ss = fadd float %.2465.epil.init, %i.sr
  br label %.loopexit564

.loopexit564:                                     ; preds = %.loopexit564.loopexit.epilog-lcssa, %.loopexit564.loopexit.unr-lcssa, %.loopexit565
  %.2.lcssa = phi float [ 0.000000e+00, %.loopexit565 ], [ %i.wx, %.loopexit564.loopexit.unr-lcssa ], [ %i.ss, %.loopexit564.loopexit.epilog-lcssa ]
  %i.st = load float, ptr %i.is, align 4, !tbaa !885 ; 5 uses
  %i.su = fadd float %i.st, %i.ct                 ; 2 uses
  %i.sv = fcmp oge float %i.su, 0.000000e+00
  %i.sw = select i1 %i.sv, float %i.su, float 0.000000e+00
  %i.sx = fadd float %i.sw, 0.000000e+00
  %i.sy = fadd float %.2.lcssa, %i.ct             ; 3 uses
  br i1 %i.cv, label %.lr.ph468.1, label %.loopexit

.lr.ph468.1:                                      ; preds = %.loopexit564
  %i.sz = load ptr, ptr %i.se, align 8, !tbaa !815
  %i.ta = add nsw i32 %i.co, -1
  %i.tb = sext i32 %i.cl to i64
  %i.tc = zext nneg i32 %i.ta to i64              ; 3 uses
  %wide.trip.count.1 = zext nneg i32 %i.co to i64 ; 2 uses
  %invariant.gep = getelementptr [44 x i8], ptr %i.sz, i64 %i.tb ; 3 uses
  %xtraiter613 = and i64 %wide.trip.count.1, 1
  %i.td = icmp eq i32 %i.co, 1
  br i1 %i.td, label %.epil.preheader612, label %.lr.ph468.1.new

.lr.ph468.1.new:                                  ; preds = %.lr.ph468.1
  %unroll_iter617 = and i64 %wide.trip.count.1, 2147483646
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ck, %.lr.ph468.1.new
  %indvars.iv498.1 = phi i64 [ 0, %.lr.ph468.1.new ], [ %indvars.iv.next499.1.1, %bb.ck ] ; 4 uses
  %.2465.1 = phi float [ %i.sy, %.lr.ph468.1.new ], [ %i.tv, %bb.ck ] ; 2 uses
  %niter618 = phi i64 [ 0, %.lr.ph468.1.new ], [ %niter618.next.1, %bb.ck ]
  %gep = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv498.1 ; 3 uses
  %i.te = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store float %.2465.1, ptr %i.te, align 4, !tbaa !887
  %i.tf = getelementptr inbounds nuw i8, ptr %gep, i64 32
  store i32 -1, ptr %i.tf, align 4, !tbaa !866
  %i.tg = getelementptr inbounds nuw i8, ptr %gep, i64 20
  %i.th = load float, ptr %i.tg, align 4, !tbaa !878
  %i.ti = icmp samesign ult i64 %indvars.iv498.1, %i.tc
  br i1 %i.ti, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  %i.tj = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.tk = phi float [ %i.tj, %bb.ch ], [ 0.000000e+00, %bb.cg ]
  %i.tl = fadd float %i.th, %i.tk
  %i.tm = fadd float %.2465.1, %i.tl              ; 2 uses
  %indvars.iv.next499.1 = or disjoint i64 %indvars.iv498.1, 1 ; 2 uses
  %gep.1 = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv.next499.1 ; 3 uses
  %i.tn = getelementptr inbounds nuw i8, ptr %gep.1, i64 16
  store float %i.tm, ptr %i.tn, align 4, !tbaa !887
  %i.to = getelementptr inbounds nuw i8, ptr %gep.1, i64 32
  store i32 -1, ptr %i.to, align 4, !tbaa !866
  %i.tp = getelementptr inbounds nuw i8, ptr %gep.1, i64 20
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !878
  %i.tr = icmp samesign ult i64 %indvars.iv.next499.1, %i.tc
  br i1 %i.tr, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.ts = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.tt = phi float [ %i.ts, %bb.cj ], [ 0.000000e+00, %bb.ci ]
  %i.tu = fadd float %i.tq, %i.tt
  %i.tv = fadd float %i.tm, %i.tu                 ; 3 uses
  %indvars.iv.next499.1.1 = add nuw nsw i64 %indvars.iv498.1, 2 ; 2 uses
  %niter618.next.1 = add nuw i64 %niter618, 2     ; 2 uses
  %niter618.ncmp.1 = icmp eq i64 %niter618.next.1, %unroll_iter617
  br i1 %niter618.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.cg, !llvm.loop !888

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ck
  %lcmp.mod614.not = icmp eq i64 %xtraiter613, 0
  br i1 %lcmp.mod614.not, label %.loopexit, label %.epil.preheader612

.epil.preheader612:                               ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph468.1
  %indvars.iv498.1.epil.init = phi i64 [ 0, %.lr.ph468.1 ], [ %indvars.iv.next499.1.1, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.2465.1.epil.init = phi float [ %i.sy, %.lr.ph468.1 ], [ %i.tv, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod616 = trunc i32 %i.co to i1
  call void @llvm.assume(i1 %lcmp.mod616)
  %gep.epil = getelementptr [44 x i8], ptr %invariant.gep, i64 %indvars.iv498.1.epil.init ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %gep.epil, i64 16
  store float %.2465.1.epil.init, ptr %i.tw, align 4, !tbaa !887
  %i.tx = getelementptr inbounds nuw i8, ptr %gep.epil, i64 32
  store i32 -1, ptr %i.tx, align 4, !tbaa !866
  %i.ty = getelementptr inbounds nuw i8, ptr %gep.epil, i64 20
  %i.tz = load float, ptr %i.ty, align 4, !tbaa !878
  %i.ua = icmp samesign ult i64 %indvars.iv498.1.epil.init, %i.tc
  br i1 %i.ua, label %bb.cl, label %.loopexit.loopexit.epilog-lcssa

bb.cl:                                            ; preds = %.epil.preheader612
  %i.ub = load float, ptr %i.cj, align 4, !tbaa !412
  br label %.loopexit.loopexit.epilog-lcssa

.loopexit.loopexit.epilog-lcssa:                  ; preds = %bb.cl, %.epil.preheader612
  %i.uc = phi float [ %i.ub, %bb.cl ], [ 0.000000e+00, %.epil.preheader612 ]
  %i.ud = fadd float %i.tz, %i.uc
  %i.ue = fadd float %.2465.1.epil.init, %i.ud
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.epilog-lcssa, %.loopexit.loopexit.unr-lcssa, %.loopexit564
  %.2.lcssa.1 = phi float [ %i.sy, %.loopexit564 ], [ %i.tv, %.loopexit.loopexit.unr-lcssa ], [ %i.ue, %.loopexit.loopexit.epilog-lcssa ]
  %i.uf = load float, ptr %i.iw, align 4, !tbaa !885
  %i.ug = fadd float %i.uf, %i.cx                 ; 2 uses
  %i.uh = fcmp oge float %i.ug, 0.000000e+00
  %i.ui = select i1 %i.uh, float %i.ug, float 0.000000e+00
  %i.uj = fadd float %i.sx, %i.ui
  br i1 %i.cw, label %.lr.ph468.2, label %._crit_edge469.2

.lr.ph468.2:                                      ; preds = %.loopexit
  %i.uk = load float, ptr %i.h, align 8, !tbaa !233
  %i.ul = load float, ptr %i.g, align 8, !tbaa !232
  %i.um = fsub float %i.uk, %i.ul
  %i.un = load float, ptr %i.ja, align 4, !tbaa !885
  %i.uo = fsub float %i.um, %i.un                 ; 2 uses
  %i.up = fcmp ole float %i.uo, 0.000000e+00
  %i.uq = select i1 %i.up, float 0.000000e+00, float %i.uo ; 2 uses
  %i.ur = fadd float %.2.lcssa.1, %i.cx           ; 2 uses
  %i.us = fcmp olt float %i.uq, %i.ur
  %i.ut = select i1 %i.us, float %i.uq, float %i.ur ; 2 uses
  %i.uu = add nsw i32 %i.co, %i.cl
  %i.uv = load ptr, ptr %i.se, align 8, !tbaa !815
  %i.uw = add nsw i32 %i.cq, -1
  %i.ux = sext i32 %i.uu to i64
  %i.uy = zext nneg i32 %i.uw to i64              ; 3 uses
  %wide.trip.count.2 = zext nneg i32 %i.cq to i64 ; 2 uses
  %invariant.gep579 = getelementptr [44 x i8], ptr %i.uv, i64 %i.ux ; 3 uses
  %xtraiter620 = and i64 %wide.trip.count.2, 1
  %i.uz = icmp eq i32 %i.cq, 1
  br i1 %i.uz, label %.epil.preheader619, label %.lr.ph468.2.new

.lr.ph468.2.new:                                  ; preds = %.lr.ph468.2
  %unroll_iter623 = and i64 %wide.trip.count.2, 2147483646
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cq, %.lr.ph468.2.new
  %indvars.iv498.2 = phi i64 [ 0, %.lr.ph468.2.new ], [ %indvars.iv.next499.2.1, %bb.cq ] ; 4 uses
  %.2465.2 = phi float [ %i.ut, %.lr.ph468.2.new ], [ %i.vr, %bb.cq ] ; 2 uses
  %niter624 = phi i64 [ 0, %.lr.ph468.2.new ], [ %niter624.next.1, %bb.cq ]
  %gep580 = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv498.2 ; 3 uses
  %i.va = getelementptr inbounds nuw i8, ptr %gep580, i64 16
  store float %.2465.2, ptr %i.va, align 4, !tbaa !887
  %i.vb = getelementptr inbounds nuw i8, ptr %gep580, i64 32
  store i32 -1, ptr %i.vb, align 4, !tbaa !866
  %i.vc = getelementptr inbounds nuw i8, ptr %gep580, i64 20
  %i.vd = load float, ptr %i.vc, align 4, !tbaa !878
  %i.ve = icmp samesign ult i64 %indvars.iv498.2, %i.uy
  br i1 %i.ve, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.vf = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.vg = phi float [ %i.vf, %bb.cn ], [ 0.000000e+00, %bb.cm ]
  %i.vh = fadd float %i.vd, %i.vg
  %i.vi = fadd float %.2465.2, %i.vh              ; 2 uses
  %indvars.iv.next499.2 = or disjoint i64 %indvars.iv498.2, 1 ; 2 uses
  %gep580.1 = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv.next499.2 ; 3 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %gep580.1, i64 16
  store float %i.vi, ptr %i.vj, align 4, !tbaa !887
  %i.vk = getelementptr inbounds nuw i8, ptr %gep580.1, i64 32
  store i32 -1, ptr %i.vk, align 4, !tbaa !866
  %i.vl = getelementptr inbounds nuw i8, ptr %gep580.1, i64 20
  %i.vm = load float, ptr %i.vl, align 4, !tbaa !878
  %i.vn = icmp samesign ult i64 %indvars.iv.next499.2, %i.uy
  br i1 %i.vn, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.vo = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.vp = phi float [ %i.vo, %bb.cp ], [ 0.000000e+00, %bb.co ]
  %i.vq = fadd float %i.vm, %i.vp
  %i.vr = fadd float %i.vi, %i.vq                 ; 2 uses
  %indvars.iv.next499.2.1 = add nuw nsw i64 %indvars.iv498.2, 2 ; 2 uses
  %niter624.next.1 = add nuw i64 %niter624, 2     ; 2 uses
  %niter624.ncmp.1 = icmp eq i64 %niter624.next.1, %unroll_iter623
  br i1 %niter624.ncmp.1, label %._crit_edge469.2.loopexit.unr-lcssa, label %bb.cm, !llvm.loop !888

._crit_edge469.2.loopexit.unr-lcssa:              ; preds = %bb.cq
  %lcmp.mod621.not = icmp eq i64 %xtraiter620, 0
  br i1 %lcmp.mod621.not, label %._crit_edge469.2, label %.epil.preheader619

.epil.preheader619:                               ; preds = %._crit_edge469.2.loopexit.unr-lcssa, %.lr.ph468.2
  %indvars.iv498.2.epil.init = phi i64 [ 0, %.lr.ph468.2 ], [ %indvars.iv.next499.2.1, %._crit_edge469.2.loopexit.unr-lcssa ] ; 2 uses
  %.2465.2.epil.init = phi float [ %i.ut, %.lr.ph468.2 ], [ %i.vr, %._crit_edge469.2.loopexit.unr-lcssa ]
  %lcmp.mod622 = trunc i32 %i.cq to i1
  call void @llvm.assume(i1 %lcmp.mod622)
  %gep580.epil = getelementptr [44 x i8], ptr %invariant.gep579, i64 %indvars.iv498.2.epil.init ; 2 uses
  %i.vs = getelementptr inbounds nuw i8, ptr %gep580.epil, i64 16
  store float %.2465.2.epil.init, ptr %i.vs, align 4, !tbaa !887
  %i.vt = getelementptr inbounds nuw i8, ptr %gep580.epil, i64 32
  store i32 -1, ptr %i.vt, align 4, !tbaa !866
  %i.vu = icmp samesign ult i64 %indvars.iv498.2.epil.init, %i.uy ; 0 uses
  br label %._crit_edge469.2

._crit_edge469.2:                                 ; preds = %.epil.preheader619, %._crit_edge469.2.loopexit.unr-lcssa, %.loopexit
  %i.vv = load float, ptr %i.ja, align 4, !tbaa !885 ; 5 uses
  %i.vw = fadd float %i.vv, 0.000000e+00
  %i.vx = fcmp oge float %i.vv, 0.000000e+00
  %i.vy = select i1 %i.vx, float %i.vw, float 0.000000e+00
  %i.vz = fadd float %i.uj, %i.vy
  store float %i.vz, ptr %i.sd, align 4, !tbaa !880
  %i.wa = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 2 uses
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !447
  %i.wd = icmp slt i32 %i.wc, 0
  br i1 %i.wd, label %bb.cc, label %_ZN8ImVectorIcE6resizeEi.exit

bb.cr:                                            ; preds = %bb.cv, %.lr.ph468.new
  %indvars.iv498 = phi i64 [ 0, %.lr.ph468.new ], [ %indvars.iv.next499.1611, %bb.cv ] ; 4 uses
  %.2465 = phi float [ 0.000000e+00, %.lr.ph468.new ], [ %i.wx, %bb.cv ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph468.new ], [ %niter.next.1, %bb.cv ]
  %i.we = getelementptr inbounds nuw [44 x i8], ptr %i.sf, i64 %indvars.iv498 ; 3 uses
  %i.wf = getelementptr inbounds nuw i8, ptr %i.we, i64 16
  store float %.2465, ptr %i.wf, align 4, !tbaa !887
  %i.wg = getelementptr inbounds nuw i8, ptr %i.we, i64 32
  store i32 -1, ptr %i.wg, align 4, !tbaa !866
  %i.wh = getelementptr inbounds nuw i8, ptr %i.we, i64 20
  %i.wi = load float, ptr %i.wh, align 4, !tbaa !878
  %i.wj = icmp samesign ult i64 %indvars.iv498, %i.sh
  br i1 %i.wj, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.wk = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cr, %bb.cs
  %i.wl = phi float [ %i.wk, %bb.cs ], [ 0.000000e+00, %bb.cr ]
  %i.wm = fadd float %i.wi, %i.wl
  %i.wn = fadd float %.2465, %i.wm                ; 2 uses
  %indvars.iv.next499 = or disjoint i64 %indvars.iv498, 1 ; 2 uses
  %i.wo = getelementptr inbounds nuw [44 x i8], ptr %i.sf, i64 %indvars.iv.next499 ; 3 uses
  %i.wp = getelementptr inbounds nuw i8, ptr %i.wo, i64 16
  store float %i.wn, ptr %i.wp, align 4, !tbaa !887
  %i.wq = getelementptr inbounds nuw i8, ptr %i.wo, i64 32
  store i32 -1, ptr %i.wq, align 4, !tbaa !866
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wo, i64 20
  %i.ws = load float, ptr %i.wr, align 4, !tbaa !878
  %i.wt = icmp samesign ult i64 %indvars.iv.next499, %i.sh
  br i1 %i.wt, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.wu = load float, ptr %i.cj, align 4, !tbaa !412
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.wv = phi float [ %i.wu, %bb.cu ], [ 0.000000e+00, %bb.ct ]
  %i.ww = fadd float %i.ws, %i.wv
  %i.wx = fadd float %i.wn, %i.ww                 ; 3 uses
  %indvars.iv.next499.1611 = add nuw nsw i64 %indvars.iv498, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit564.loopexit.unr-lcssa, label %bb.cr, !llvm.loop !888

.thread563:                                       ; preds = %_ZN8ImVectorIcE6resizeEi.exit
  store i32 0, ptr %.phi.trans.insert525, align 8, !tbaa !850
  br label %bb.cx

bb.cw:                                            ; preds = %_ZN8ImVectorIcE6resizeEi.exit
  %.pre526 = load i32, ptr %.phi.trans.insert525, align 8, !tbaa !850 ; 2 uses
  %i.wy = icmp eq i32 %.pre526, 0
  br i1 %i.wy, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %.thread563, %bb.cw
  %i.wz = load i32, ptr %i.db, align 4, !tbaa !851
  %i.xa = icmp eq i32 %i.wz, 0
  %i.xb = icmp ne ptr %.0340.lcssa, null
  %or.cond15 = select i1 %i.xa, i1 %i.xb, i1 false
  br i1 %or.cond15, label %bb.cy, label %bb.cz

bb.cy:                                            ; preds = %bb.cx
  %i.xc = load i32, ptr %.0340.lcssa, align 4, !tbaa !849 ; 3 uses
  store i32 %i.xc, ptr %i.sc, align 8, !tbaa !850
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cy, %bb.cx, %bb.cw
  %i.xd = phi i32 [ %i.xc, %bb.cy ], [ 0, %bb.cx ], [ %.pre526, %bb.cw ]
  %.11 = phi i32 [ %i.xc, %bb.cy ], [ %.10, %bb.cx ], [ %.10, %bb.cw ] ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 %i.xd, ptr %i.xe, align 4, !tbaa !844
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 132
  store i8 0, ptr %i.xf, align 4, !tbaa !843
  %.not371 = icmp eq i32 %.11, 0
  br i1 %.not371, label %bb.dh, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.xg = load i32, ptr %i.m, align 8, !tbaa !834 ; 3 uses
  %i.xh = icmp sgt i32 %i.xg, 0
  br i1 %i.xh, label %.lr.ph.i.i415, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

.lr.ph.i.i415:                                    ; preds = %bb.da
  %i.xi = load ptr, ptr %i.se, align 8, !tbaa !815
  %wide.trip.count.i.i416 = zext nneg i32 %i.xg to i64
  br label %bb.dc

bb.db:                                            ; preds = %bb.dc
  %indvars.iv.next.i.i418 = add nuw nsw i64 %indvars.iv.i.i417, 1 ; 2 uses
  %exitcond.not.i.i419 = icmp eq i64 %indvars.iv.next.i.i418, %wide.trip.count.i.i416
  br i1 %exitcond.not.i.i419, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit, label %bb.dc, !llvm.loop !863

bb.dc:                                            ; preds = %bb.db, %.lr.ph.i.i415
  %indvars.iv.i.i417 = phi i64 [ 0, %.lr.ph.i.i415 ], [ %indvars.iv.next.i.i418, %bb.db ] ; 3 uses
  %i.xj = getelementptr inbounds nuw [44 x i8], ptr %i.xi, i64 %indvars.iv.i.i417 ; 4 uses
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !849
  %i.xl = icmp eq i32 %i.xk, %.11
  br i1 %i.xl, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420, label %bb.db

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420: ; preds = %bb.dc
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xj, i64 4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !854
  %i.xo = and i32 %i.xn, 192
  %.not.i421 = icmp eq i32 %i.xo, 0
  br i1 %.not.i421, label %bb.dd, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dd:                                            ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420
  %i.xp = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 4568
  %i.xr = load float, ptr %i.xq, align 8, !tbaa !189 ; 2 uses
  %i.xs = trunc i64 %indvars.iv.i.i417 to i32     ; 2 uses
  %.val.i = load float, ptr %i.g, align 8, !tbaa !232
  %.val47.i = load float, ptr %i.h, align 8, !tbaa !233
  %i.xt = fsub float %.val47.i, %.val.i
  %i.xu = fsub float %i.xt, %i.st
  %i.xv = fsub float %i.xu, %i.vv
  %i.xw = fsub float %i.xv, %i.cx                 ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.xj, i64 16
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !887
  %i.xz = fsub float %i.xy, %i.st                 ; 2 uses
  %.not45.i = icmp sgt i32 %i.cl, %i.xs
  %i.ya = fneg float %i.xr
  %i.yb = select i1 %.not45.i, float 0.000000e+00, float %i.ya
  %i.yc = fadd float %i.xz, %i.yb                 ; 4 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xj, i64 20
  %i.ye = load float, ptr %i.yd, align 4, !tbaa !878
  %i.yf = fadd float %i.xz, %i.ye
  %i.yg = add nsw i32 %i.xs, 1
  %i.yh = sub nsw i32 %i.xg, %i.cq
  %i.yi = icmp slt i32 %i.yg, %i.yh
  %i.yj = select i1 %i.yi, float %i.xr, float 1.000000e+00
  %i.yk = fadd float %i.yf, %i.yj                 ; 3 uses
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  store float 0.000000e+00, ptr %i.yl, align 4, !tbaa !889
  %i.ym = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.yn = load float, ptr %i.ym, align 8, !tbaa !890 ; 2 uses
  %i.yo = fcmp ule float %i.yn, %i.yc
  %i.yp = fsub float %i.yk, %i.yc
  %i.yq = fcmp ult float %i.yp, %i.xw
  %or.cond.i422 = select i1 %i.yo, i1 %i.yq, i1 false
  br i1 %or.cond.i422, label %bb.df, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !891
  %i.yt = fsub float %i.ys, %i.yk
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i

bb.df:                                            ; preds = %bb.dd
  %i.yu = fsub float %i.yk, %i.xw                 ; 2 uses
  %i.yv = fcmp olt float %i.yn, %i.yu
  br i1 %i.yv, label %bb.dg, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dg:                                            ; preds = %bb.df
  %i.yw = fsub float %i.yc, %i.xw
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !891
  %i.yz = fsub float %i.yw, %i.yy
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i: ; preds = %bb.dg, %bb.de
  %.sink60.i = phi float [ %i.yt, %bb.de ], [ %i.yz, %bb.dg ] ; 2 uses
  %.sink.i423 = phi float [ %i.yc, %bb.de ], [ %i.yu, %bb.dg ]
  %i.za = fcmp oge float %.sink60.i, 0.000000e+00
  %i.zb = select i1 %i.za, float %.sink60.i, float 0.000000e+00
  store float %i.zb, ptr %i.yl, align 4, !tbaa !889
  store float %.sink.i423, ptr %i.ym, align 8, !tbaa !890
  br label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dh:                                            ; preds = %bb.cz
  %i.zc = load i8, ptr %i.pl, align 2, !tbaa !881, !range !165, !noundef !166
  %i.zd = trunc nuw i8 %i.zc to i1
  br i1 %i.zd, label %bb.di, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.di:                                            ; preds = %bb.dh
  %i.ze = call noundef zeroext i1 @_ZN5ImGui19IsMouseHoveringRectERK6ImVec2S2_b(ptr noundef nonnull align 4 dereferenceable(8) %i.g, ptr noundef nonnull align 4 dereferenceable(8) %i.h, i1 noundef zeroext true)
  br i1 %i.ze, label %bb.dj, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dj:                                            ; preds = %bb.di
  %i.zf = getelementptr inbounds nuw i8, ptr %i.c, i64 5312
  %i.zg = load ptr, ptr %i.zf, align 8, !tbaa !11
  %i.zh = call noundef zeroext i1 @_ZN5ImGui24IsWindowContentHoverableEP11ImGuiWindowi(ptr noundef %i.zg, i32 noundef 0)
  br i1 %i.zh, label %bb.dk, label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

bb.dk:                                            ; preds = %bb.dj
  %i.zi = getelementptr inbounds nuw i8, ptr %i.c, i64 2970
  %i.zj = load i8, ptr %i.zi, align 2, !tbaa !892, !range !165, !noundef !166
  %i.zk = trunc nuw i8 %i.zj to i1                ; 2 uses
  %.in.v = select i1 %i.zk, i64 288, i64 292
  %.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.in.v
  %i.zl = load float, ptr %.in, align 4, !tbaa !171 ; 2 uses
  %i.zm = select i1 %i.zk, i32 662, i32 661       ; 2 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.zo = load i32, ptr %i.zn, align 4, !tbaa !813
  %i.zp = call noundef zeroext i1 @_ZN5ImGui12TestKeyOwnerE8ImGuiKeyj(i32 noundef %i.zm, i32 noundef %i.zo)
  %i.zq = fcmp une float %i.zl, 0.000000e+00
  %or.cond17 = select i1 %i.zp, i1 %i.zq, i1 false
  br i1 %or.cond17, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %.val386 = load float, ptr %i.g, align 8, !tbaa !232
  %.val387 = load float, ptr %i.h, align 8, !tbaa !233
  %i.zr = fsub float %.val387, %.val386           ; 2 uses
  %i.zs = fsub float %i.zr, %i.st
  %i.zt = fsub float %i.zs, %i.vv
  %i.zu = fsub float %i.zt, %i.cx
  %i.zv = fmul float %i.zl, %i.zu
  %i.zw = fdiv float %i.zv, 3.000000e+00
  %i.zx = getelementptr inbounds nuw i8, ptr %0, i64 100
  store float 0.000000e+00, ptr %i.zx, align 4, !tbaa !889
  %i.zy = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.zz = load float, ptr %i.zy, align 8, !tbaa !890
  %i.aaa = fsub float %i.zz, %i.zw                ; 2 uses
  %i.aab = load float, ptr %i.sd, align 4, !tbaa !880
  %i.aac = fsub float %i.aab, %i.zr               ; 2 uses
  %i.aad = fcmp olt float %i.aaa, %i.aac
  %i.aae = select i1 %i.aad, float %i.aaa, float %i.aac ; 2 uses
  %i.aaf = fcmp oge float %i.aae, 0.000000e+00
  %i.aag = select i1 %i.aaf, float %i.aae, float 0.000000e+00
  store float %i.aag, ptr %i.zy, align 8, !tbaa !890
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dl, %bb.dk
  %i.aah = load i32, ptr %i.zn, align 4, !tbaa !813
  call void @_ZN5ImGui11SetKeyOwnerE8ImGuiKeyji(i32 noundef %i.zm, i32 noundef %i.aah, i32 noundef 0)
  br label %_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit

_ZN5ImGuiL17TabBarScrollToTabEP11ImGuiTabBarjP18ImGuiTabBarSection.exit: ; preds = %bb.db, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread.sink.split.i, %bb.df, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.i420, %bb.da, %bb.dh, %bb.di, %bb.dj, %bb.dm
  %i.aai = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 3 uses
  %i.aaj = load float, ptr %i.aai, align 4, !tbaa !891 ; 2 uses
  %i.aak = load float, ptr %i.sd, align 4, !tbaa !880
  %i.aal = load float, ptr %i.h, align 8, !tbaa !233 ; 2 uses
  %i.aam = load float, ptr %i.g, align 8, !tbaa !232 ; 2 uses
  %i.aan = fsub float %i.aal, %i.aam
  %i.aao = fsub float %i.aak, %i.aan              ; 4 uses
  %i.aap = fcmp olt float %i.aaj, %i.aao
  %i.aaq = select i1 %i.aap, float %i.aaj, float %i.aao ; 2 uses
  %i.aar = fcmp oge float %i.aaq, 0.000000e+00
  %i.aas = select i1 %i.aar, float %i.aaq, float 0.000000e+00 ; 8 uses
  store float %i.aas, ptr %i.aai, align 4, !tbaa !891
  %i.aat = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aau = load float, ptr %i.aat, align 8, !tbaa !890 ; 2 uses
  %i.aav = fcmp olt float %i.aau, %i.aao
end_hunk_6
begin_hunk_7_@_ZN5ImGui15TabBarRemoveTabEP11ImGuiTabBarj:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !834  ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !815
  %wide.trip.count.i = zext nneg i32 %i.b to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !863

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.f = getelementptr inbounds nuw [44 x i8], ptr %i.e, i64 %indvars.iv.i ; 3 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !849
  %i.h = icmp eq i32 %i.g, %1
  br i1 %i.h, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 44
  %i.j = zext nneg i32 %i.b to i64
  %i.k = xor i64 %indvars.iv.i, -1
  %i.l = add nsw i64 %i.k, %i.j
  %i.m = mul i64 %i.l, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.f, ptr nonnull align 4 %i.i, i64 %i.m, i1 false)
  %i.n = load i32, ptr %i.a, align 8, !tbaa !859
  %i.o = add nsw i32 %i.n, -1
  store i32 %i.o, ptr %i.a, align 8, !tbaa !859
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !844
  %i.r = icmp eq i32 %i.q, %1
  br i1 %i.r, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  store i32 0, ptr %i.p, align 4, !tbaa !844
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load i32, ptr %i.s, align 8, !tbaa !850
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.s, align 8, !tbaa !850
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !851
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.v, align 4, !tbaa !851
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui14TabBarCloseTabEP11ImGuiTabBarP12ImGuiTabItem(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !854  ; 2 uses
  %i.c = and i32 %i.b, 2097152
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 257
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i8 1, ptr %i.f, align 4, !tbaa !897
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !844
  %i.i = load i32, ptr %1, align 4, !tbaa !849
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 -1, ptr %i.k, align 4, !tbaa !848
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.l, align 4, !tbaa !851
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.m, align 8, !tbaa !850
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.o = load i32, ptr %i.n, align 4, !tbaa !844
  %i.p = load i32, ptr %1, align 4, !tbaa !849    ; 2 uses
  %.not12 = icmp eq i32 %i.o, %i.p
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.p, ptr %i.q, align 4, !tbaa !851
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.c, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarP12ImGuiTabItem(ptr nofree noundef writeonly captures(none) initializes((36, 40)) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !849
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.a, ptr %i.b, align 4, !tbaa !851
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN5ImGui16TabBarQueueFocusEP11ImGuiTabBarPKc(ptr nofree noundef captures(none) initializes((36, 40)) %0, ptr noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %.val = load i32, ptr %i.a, align 8, !tbaa !832
  %i.b = and i32 %.val, 1048576
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef i32 @_Z9ImHashStrPKcmj(ptr noundef %1, i64 noundef 0, i32 noundef 0) ; 2 uses
  tail call void @_ZN5ImGui11KeepAliveIDEj(i32 noundef %i.c)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 5312
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call noundef i32 @_ZN11ImGuiWindow5GetIDEPKcS1_(ptr noundef nonnull align 8 dereferenceable(1077) %i.f, ptr noundef %1, ptr noundef null)
  br label %_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit

_ZN5ImGuiL15TabBarCalcTabIDEP11ImGuiTabBarPKcP11ImGuiWindow.exit: ; preds = %bb.b, %bb.c
  %.0.i = phi i32 [ %i.c, %bb.b ], [ %i.g, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %.0.i, ptr %i.h, align 4, !tbaa !851
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN5ImGui18TabBarQueueReorderEP11ImGuiTabBarP12ImGuiTabItemi(ptr nofree noundef writeonly captures(none) initializes((124, 130)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #15 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !849
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.a, ptr %i.b, align 4, !tbaa !862
  %i.c = trunc i32 %2 to i16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 %i.c, ptr %i.d, align 8, !tbaa !864
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN5ImGui30TabBarQueueReorderFromMousePosEP11ImGuiTabBarP12ImGuiTabItem6ImVec2(ptr nofree noundef captures(none) %0, ptr noundef %1, <2 x float> %2) local_unnamed_addr #31 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !832
  %i.c = and i32 %i.b, 1
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %.critedge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 3308
  %i.g = load float, ptr %i.f, align 4, !tbaa !412 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !854  ; 2 uses
  %i.j = and i32 %i.i, 192
  %i.k = icmp eq i32 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.m = load float, ptr %i.l, align 8, !tbaa !828
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.o = load float, ptr %i.n, align 8, !tbaa !890
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.p = phi float [ %i.o, %bb.c ], [ 0.000000e+00, %bb.b ]
  %i.q = fsub float %i.m, %i.p                    ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = load float, ptr %i.r, align 4, !tbaa !887
  %i.t = fadd float %i.q, %i.s
  %.sroa.0.0.vec.extract = extractelement <2 x float> %2, i64 0 ; 3 uses
  %i.u = fcmp ule float %i.t, %.sroa.0.0.vec.extract ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !815  ; 2 uses
  %i.x = ptrtoint ptr %1 to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = sdiv exact i64 %i.z, 44                 ; 2 uses
  %i.ab = trunc i64 %i.aa to i32                  ; 5 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %.lr.ph, label %.critedge.thread

.lr.ph:                                           ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !834
  %3 = and i64 %i.aa, 2147483647                  ; 2 uses
  %4 = select i1 %i.u, i64 1, i64 -1
  %5 = sext i32 %i.ae to i64                      ; 2 uses
  %6 = icmp slt i64 %3, %5
  br i1 %6, label %.lr.ph73, label %.critedge

bb.e:                                             ; preds = %bb.g
  %i.af = icmp slt i64 %indvars.iv.next, %5
  br i1 %i.af, label %.lr.ph73, label %.critedge, !llvm.loop !898

.lr.ph73:                                         ; preds = %.lr.ph, %bb.e
  %.05771 = phi i32 [ %7, %bb.e ], [ %i.ab, %.lr.ph ] ; 2 uses
  %indvars.iv71 = phi i64 [ %indvars.iv.next, %bb.e ], [ %3, %.lr.ph ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [44 x i8], ptr %i.w, i64 %indvars.iv71 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !854 ; 2 uses
  %i.aj = and i32 %i.ai, 32
  %.not = icmp eq i32 %i.aj, 0
  br i1 %.not, label %bb.f, label %.critedge

bb.f:                                             ; preds = %.lr.ph73
  %i.ak = xor i32 %i.ai, %i.i
  %i.al = and i32 %i.ak, 192
  %.not48 = icmp eq i32 %i.al, 0
  br i1 %.not48, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.an = load float, ptr %i.am, align 4, !tbaa !887
  %i.ao = fadd float %i.q, %i.an                  ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 20
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !878
  %i.ar = fadd float %i.ao, %i.aq
  %i.as = fadd float %i.g, %i.ar
  %i.at = fsub float %i.ao, %i.g
  %i.au = fcmp ule float %.sroa.0.0.vec.extract, %i.at
  %i.av = fcmp uge float %.sroa.0.0.vec.extract, %i.as
  %or.cond53 = select i1 %i.u, i1 %i.av, i1 %i.au
  %indvars.iv.next = add nsw i64 %indvars.iv71, %4 ; 3 uses
  %i.aw = icmp sgt i64 %indvars.iv.next, -1
  %or.cond = select i1 %or.cond53, i1 %i.aw, i1 false
  %7 = trunc nuw nsw i64 %indvars.iv71 to i32     ; 3 uses
  br i1 %or.cond, label %bb.e, label %..critedge_crit_edge, !llvm.loop !898

..critedge_crit_edge:                             ; preds = %bb.g
  br label %.critedge, !llvm.loop !898

.critedge:                                        ; preds = %.lr.ph73, %bb.f, %bb.e, %..critedge_crit_edge, %.lr.ph
  %.2 = phi i32 [ %7, %..critedge_crit_edge ], [ %i.ab, %.lr.ph ], [ %.05771, %.lr.ph73 ], [ %7, %bb.e ], [ %.05771, %bb.f ] ; 2 uses
  %.not49 = icmp eq i32 %.2, %i.ab
  br i1 %.not49, label %.critedge.thread, label %bb.h

bb.h:                                             ; preds = %.critedge
  %i.ax = sub nsw i32 %.2, %i.ab
  %i.ay = load i32, ptr %1, align 4, !tbaa !849
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !862
  %i.ba = trunc i32 %i.ax to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i16 %i.ba, ptr %i.bb, align 8, !tbaa !864
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.d, %.critedge, %bb.h, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui20TabBarProcessReorderEP11ImGuiTabBar(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %1 = alloca %struct.ImGuiTabItem, align 4       ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 124
  %i.b = load i32, ptr %i.a, align 4, !tbaa !862  ; 2 uses
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !834  ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !815  ; 2 uses
  %wide.trip.count.i = zext nneg i32 %i.d to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread, label %bb.c, !llvm.loop !863

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 3 uses
  %i.h = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %indvars.iv.i ; 5 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !849
  %i.j = icmp eq i32 %i.i, %i.b
  br i1 %i.j, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit, label %bb.b

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit: ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !854  ; 2 uses
  %i.m = and i32 %i.l, 32
  %.not = icmp eq i32 %i.m, 0
  br i1 %.not, label %bb.d, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.d:                                             ; preds = %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %i.n = trunc i64 %indvars.iv.i to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.p = load i16, ptr %i.o, align 8, !tbaa !864  ; 2 uses
  %i.q = sext i16 %i.p to i32                     ; 2 uses
  %i.r = add nsw i32 %i.n, %i.q                   ; 2 uses
  %or.cond = icmp ult i32 %i.r, %i.d
  br i1 %or.cond, label %bb.e, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.s = zext nneg i32 %i.r to i64
  %i.t = getelementptr inbounds nuw [44 x i8], ptr %i.g, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.v = load i32, ptr %i.u, align 4, !tbaa !854  ; 2 uses
  %i.w = and i32 %i.v, 32
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.f, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.x = xor i32 %i.v, %i.l
  %i.y = and i32 %i.x, 192
  %.not36 = icmp eq i32 %i.y, 0
  br i1 %.not36, label %bb.g, label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %1, ptr noundef nonnull align 4 dereferenceable(44) %i.h, i64 44, i1 false), !tbaa.struct !852
  %i.z = icmp sgt i16 %i.p, 0                     ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 44
  %i.ab = select i1 %i.z, ptr %i.aa, ptr %i.t
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 44
  %i.ad = select i1 %i.z, ptr %i.h, ptr %i.ac
  %i.ae = tail call i32 @llvm.abs.i32(i32 %i.q, i1 true)
  %i.af = zext nneg i32 %i.ae to i64
  %i.ag = mul nuw nsw i64 %i.af, 44
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ad, ptr nonnull align 4 %i.ab, i64 %i.ag, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(41) %i.t, ptr noundef nonnull align 4 dereferenceable(41) %1, i64 41, i1 false), !tbaa.struct !852
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !832
  %i.aj = and i32 %i.ai, 4194304
  %.not37 = icmp eq i32 %i.aj, 0
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_ZN5ImGui20MarkIniSettingsDirtyEv()
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  br label %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread

_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit.thread: ; preds = %bb.b, %.preheader.i, %bb.a, %bb.d, %bb.f, %bb.e, %bb.i, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit
  %.2 = phi i1 [ false, %bb.f ], [ false, %_ZN5ImGui17TabBarFindTabByIDEP11ImGuiTabBarj.exit ], [ false, %bb.d ], [ false, %.preheader.i ], [ true, %bb.i ], [ false, %bb.e ], [ false, %bb.a ], [ false, %bb.b ]
  ret i1 %.2
}

declare void @_ZN5ImGui20MarkIniSettingsDirtyEv() local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui12BeginTabItemEPKcPbi(ptr noundef %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 5312
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 209
  %i.e = load i8, ptr %i.d, align 1, !tbaa !164, !range !165, !noundef !166
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 9088
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !826  ; 4 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @_ZN5ImGui8ErrorLogEPKc(ptr noundef nonnull @.str.133) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = tail call noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef nonnull %i.h, ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef null) ; 2 uses
  %i.k = and i32 %2, 8
  %.not15 = icmp eq i32 %i.k, 0
  %or.cond = and i1 %.not15, %i.j
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 138
  %i.m = load i16, ptr %i.l, align 2, !tbaa !811
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !815
  %i.p = sext i16 %i.m to i64
  %i.q = getelementptr inbounds [44 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4, !tbaa !849
  tail call void @_ZN5ImGui14PushOverrideIDEj(i32 noundef %i.r)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %bb.a
  %.1 = phi i1 [ false, %bb.a ], [ false, %bb.c ], [ true, %bb.e ], [ %i.j, %bb.d ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN5ImGui9TabItemExEP11ImGuiTabBarPKcPbiP11ImGuiWindow(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef readnone captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.ImGuiNextItemData, align 8  ; 4 uses
  %6 = alloca %struct.ImRect, align 4             ; 4 uses
  %7 = alloca %struct.ImRect, align 4             ; 4 uses
  %8 = alloca %struct.ImRect, align 16            ; 15 uses
  %9 = alloca %struct.ImVec2, align 4             ; 5 uses
  %10 = alloca %struct.ImVec2, align 4            ; 5 uses
  %11 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %12 = alloca %struct.ImVec2, align 8            ; 4 uses
  %13 = alloca %struct.ImVec2, align 8            ; 4 uses
  %14 = alloca %struct.ImVec2, align 8            ; 4 uses
  %15 = alloca %struct.ImVec2, align 8            ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = load ptr, ptr @GImGui, align 8, !tbaa !8 ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 131
  %i.g = load i8, ptr %i.f, align 1, !tbaa !836, !range !165, !noundef !166
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 7792 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(56) %i.i, i64 56, i1 false), !tbaa.struct !899
  tail call fastcc void @_ZN5ImGuiL12TabBarLayoutEP11ImGuiTabBar(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.i, ptr noundef nonnull align 8 dereferenceable(56) %5, i64 56, i1 false), !tbaa.struct !899
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 5312
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !11   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 209
  %i.m = load i8, ptr %i.l, align 1, !tbaa !164, !range !165, !noundef !166
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.cl, label %bb.d

end_hunk_7
begin_hunk_8_@_ZN5ImStbL31STB_TEXTEDIT_MOVELINESTART_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi:bb.a
  %i.i = tail call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.h, ptr noundef %i.f) ; 4 uses
  %i.j = load ptr, ptr %i.e, align 8, !tbaa !476
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !436
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 4552
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4568
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 118
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.i
  %.0459 = phi ptr [ %i.i, %bb.c ], [ %i.af, %bb.i ] ; 3 uses
  %i.s = load ptr, ptr %i.o, align 8, !tbaa !477
  %i.t = load float, ptr %i.p, align 8, !tbaa !189
  %i.u = load float, ptr %i.a, align 8, !tbaa !490
  %i.v = tail call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef %i.s, float noundef %i.t, ptr noundef %.0459, ptr noundef %i.n, float noundef %i.u, i32 noundef 2) ; 4 uses
  %i.w = icmp eq ptr %.0459, %i.h
  br i1 %i.w, label %.loopexit.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = icmp eq ptr %i.v, %i.h
  br i1 %i.x, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !448
  %i.z = getelementptr inbounds i8, ptr %i.y, i64 %i.g
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !387
  %.not57 = icmp eq i8 %i.aa, 10
  br i1 %.not57, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load i8, ptr %i.r, align 2, !tbaa !543
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.not58 = icmp ult ptr %i.v, %i.h
  br i1 %.not58, label %bb.i, label %.loopexit.sink.split

bb.i:                                             ; preds = %bb.h
  %i.ad = load i8, ptr %i.v, align 1, !tbaa !387
  %i.ae = icmp eq i8 %i.ad, 10
  %.idx = zext i1 %i.ae to i64
  %i.af = getelementptr inbounds nuw i8, ptr %i.v, i64 %.idx ; 2 uses
  %.not56.not = icmp ult ptr %i.af, %i.i
  br i1 %.not56.not, label %.thread4, label %bb.d, !llvm.loop !916

.thread4:                                         ; preds = %bb.i, %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %.thread4
  %.047 = phi i32 [ %1, %.thread4 ], [ %i.aq, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ] ; 4 uses
  %i.ah = icmp sgt i32 %.047, 0
  br i1 %i.ah, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, label %.loopexit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.j
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !476 ; 2 uses
  %i.aj = zext nneg i32 %.047 to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.aj
  %i.al = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.ai, ptr noundef nonnull %i.ak)
  %i.am = load ptr, ptr %i.ag, align 8, !tbaa !476 ; 2 uses
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = ptrtoint ptr %i.am to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 2 uses
  %i.aq = trunc i64 %i.ap to i32
  %sext = shl i64 %i.ap, 32
  %i.ar = ashr exact i64 %sext, 32
  %i.as = getelementptr inbounds i8, ptr %i.am, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !387
  %i.au = icmp eq i8 %i.at, 10
  br i1 %i.au, label %.loopexit, label %bb.j

.loopexit.sink.split:                             ; preds = %bb.h, %bb.g, %bb.d
  %.0459.lcssa16.sink = phi ptr [ %i.i, %bb.g ], [ %i.i, %bb.d ], [ %.0459, %bb.h ]
  %i.av = load ptr, ptr %i.e, align 8, !tbaa !476
  %i.aw = ptrtoint ptr %.0459.lcssa16.sink to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %bb.j, %.loopexit.sink.split, %bb.a
  %.3 = phi i32 [ %i.az, %.loopexit.sink.split ], [ 0, %bb.a ], [ %.047, %bb.j ], [ %.047, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETPREVCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN5ImStbL29stb_textedit_delete_selectionEP19ImGuiInputTextStatePNS_17STB_TexteditStateE(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) %1) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24         ; 7 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !436 ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !466  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !467  ; 3 uses
  %.not.i = icmp eq i32 %i.c, %i.e
  br i1 %.not.i, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp sgt i32 %i.c, %.val
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %.val, ptr %i.b, align 4, !tbaa !466
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = phi i32 [ %.val, %bb.c ], [ %i.c, %bb.b ] ; 5 uses
  %i.h = icmp sgt i32 %i.e, %.val
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %.val, ptr %i.d, align 4, !tbaa !467
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.i = phi i32 [ %.val, %bb.e ], [ %i.e, %bb.d ] ; 2 uses
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 %i.g, ptr %1, align 4, !tbaa !451
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.a
  %i.k = phi i32 [ %i.g, %bb.g ], [ %i.i, %bb.f ], [ %i.c, %bb.a ] ; 8 uses
  %i.l = phi i32 [ %i.g, %bb.g ], [ %i.g, %bb.f ], [ %i.c, %bb.a ] ; 8 uses
  %i.m = load i32, ptr %1, align 4, !tbaa !451
  %i.n = icmp sgt i32 %i.m, %.val
  br i1 %i.n, label %bb.i, label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

bb.i:                                             ; preds = %bb.h
  store i32 %.val, ptr %1, align 4, !tbaa !451
  br label %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit

_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit: ; preds = %bb.h, %bb.i
  %.not = icmp eq i32 %i.l, %i.k
  br i1 %.not, label %bb.r, label %bb.j

bb.j:                                             ; preds = %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit
  %i.o = icmp slt i32 %i.l, %i.k
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.o, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.q = sub nsw i32 %i.k, %i.l                   ; 5 uses
  %i.r = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.l, i32 noundef %i.q, i32 noundef 0) ; 6 uses
  %.not.i.i.not = icmp eq ptr %i.r, null
  br i1 %.not.i.i.not, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i, label %.lr.ph.i.i

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i: ; preds = %bb.k
  %.pre.i = sext i32 %i.l to i64
  br label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit

.lr.ph.i.i:                                       ; preds = %bb.k
  %i.s = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.t = sext i32 %i.l to i64                     ; 7 uses
  %wide.trip.count.i.i = zext nneg i32 %i.q to i64 ; 2 uses
  %xtraiter49 = and i64 %wide.trip.count.i.i, 3   ; 3 uses
  %i.u = icmp ult i32 %i.q, 4
  br i1 %i.u, label %.epil.preheader48, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter53 = and i64 %wide.trip.count.i.i, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.3, %bb.l ] ; 6 uses
  %niter54 = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter54.next.3, %bb.l ]
  %.val.i.i = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.v = getelementptr i8, ptr %.val.i.i, i64 %indvars.iv.i.i
  %i.w = getelementptr i8, ptr %i.v, i64 %i.t
  %i.x = load i8, ptr %i.w, align 1, !tbaa !387
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i
  store i8 %i.x, ptr %i.y, align 1, !tbaa !387
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %.val.i.i.1 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.z = getelementptr i8, ptr %.val.i.i.1, i64 %indvars.iv.next.i.i
  %i.aa = getelementptr i8, ptr %i.z, i64 %i.t
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !387
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i
  store i8 %i.ab, ptr %i.ac, align 1, !tbaa !387
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %.val.i.i.2 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.ad = getelementptr i8, ptr %.val.i.i.2, i64 %indvars.iv.next.i.i.1
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.t
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !387
  %i.ag = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.1
  store i8 %i.af, ptr %i.ag, align 1, !tbaa !387
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %.val.i.i.3 = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.ah = getelementptr i8, ptr %.val.i.i.3, i64 %indvars.iv.next.i.i.2
  %i.ai = getelementptr i8, ptr %i.ah, i64 %i.t
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !387
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i.i.2
  store i8 %i.aj, ptr %i.ak, align 1, !tbaa !387
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter54.next.3 = add nuw i64 %niter54, 4       ; 2 uses
  %niter54.ncmp.3 = icmp eq i64 %niter54.next.3, %unroll_iter53
  br i1 %niter54.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, label %bb.l, !llvm.loop !580

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod51.not = icmp eq i64 %xtraiter49, 0
  br i1 %lcmp.mod51.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %.epil.preheader48

.epil.preheader48:                                ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod52 = icmp ne i64 %xtraiter49, 0
  tail call void @llvm.assume(i1 %lcmp.mod52)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader48
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.epil.preheader48 ], [ %indvars.iv.next.i.i.epil, %bb.m ] ; 3 uses
  %epil.iter50 = phi i64 [ 0, %.epil.preheader48 ], [ %epil.iter50.next, %bb.m ]
  %.val.i.i.epil = load ptr, ptr %i.s, align 8, !tbaa !476
  %i.al = getelementptr i8, ptr %.val.i.i.epil, i64 %indvars.iv.i.i.epil
  %i.am = getelementptr i8, ptr %i.al, i64 %i.t
  %i.an = load i8, ptr %i.am, align 1, !tbaa !387
  %i.ao = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.i.i.epil
  store i8 %i.an, ptr %i.ao, align 1, !tbaa !387
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter50.next = add i64 %epil.iter50, 1     ; 2 uses
  %epil.iter50.cmp.not = icmp eq i64 %epil.iter50.next, %xtraiter49
  br i1 %epil.iter50.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %bb.m, !llvm.loop !917

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %bb.m, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i ], [ %i.t, %bb.m ], [ %i.t, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !435
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 %.pre-phi.i ; 2 uses
  %i.as = sext i32 %i.q to i64
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  %i.au = load i32, ptr %i.a, align 8, !tbaa !436
  %reass.sub38 = sub i32 %i.au, %i.k
  %i.av = add i32 %reass.sub38, 1
  %i.aw = sext i32 %i.av to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ar, ptr nonnull align 1 %i.at, i64 %i.aw, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ax, align 4, !tbaa !492
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ay, align 1, !tbaa !460
  %i.az = load i32, ptr %i.a, align 8, !tbaa !436
  %i.ba = sub nsw i32 %i.az, %i.q
  store i32 %i.ba, ptr %i.a, align 8, !tbaa !436
  %i.bb = load i32, ptr %i.b, align 4, !tbaa !466 ; 2 uses
  store i32 %i.bb, ptr %1, align 4, !tbaa !451
  store i32 %i.bb, ptr %i.d, align 4, !tbaa !467
  br label %bb.q

bb.n:                                             ; preds = %bb.j
  %i.bc = sub nsw i32 %i.l, %i.k                  ; 5 uses
  %i.bd = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.p, i32 noundef %i.k, i32 noundef %i.bc, i32 noundef 0) ; 6 uses
  %.not.i.i24.not = icmp eq ptr %i.bd, null
  br i1 %.not.i.i24.not, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26, label %.lr.ph.i.i30

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26: ; preds = %bb.n
  %.pre.i27 = sext i32 %i.k to i64
  br label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36

.lr.ph.i.i30:                                     ; preds = %bb.n
  %i.be = getelementptr i8, ptr %0, i64 32        ; 5 uses
  %i.bf = sext i32 %i.k to i64                    ; 7 uses
  %wide.trip.count.i.i31 = zext nneg i32 %i.bc to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i31, 3   ; 3 uses
  %i.bg = icmp ult i32 %i.bc, 4
  br i1 %i.bg, label %.epil.preheader, label %.lr.ph.i.i30.new

.lr.ph.i.i30.new:                                 ; preds = %.lr.ph.i.i30
  %unroll_iter = and i64 %wide.trip.count.i.i31, 2147483644
  br label %bb.o

bb.o:                                             ; preds = %bb.o, %.lr.ph.i.i30.new
  %indvars.iv.i.i32 = phi i64 [ 0, %.lr.ph.i.i30.new ], [ %indvars.iv.next.i.i34.3, %bb.o ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i30.new ], [ %niter.next.3, %bb.o ]
  %.val.i.i33 = load ptr, ptr %i.be, align 8, !tbaa !476
  %i.bh = getelementptr i8, ptr %.val.i.i33, i64 %indvars.iv.i.i32
  %i.bi = getelementptr i8, ptr %i.bh, i64 %i.bf
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !387
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.i.i32
  store i8 %i.bj, ptr %i.bk, align 1, !tbaa !387
  %indvars.iv.next.i.i34 = or disjoint i64 %indvars.iv.i.i32, 1 ; 2 uses
  %.val.i.i33.1 = load ptr, ptr %i.be, align 8, !tbaa !476
  %i.bl = getelementptr i8, ptr %.val.i.i33.1, i64 %indvars.iv.next.i.i34
  %i.bm = getelementptr i8, ptr %i.bl, i64 %i.bf
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !387
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next.i.i34
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !387
  %indvars.iv.next.i.i34.1 = or disjoint i64 %indvars.iv.i.i32, 2 ; 2 uses
  %.val.i.i33.2 = load ptr, ptr %i.be, align 8, !tbaa !476
  %i.bp = getelementptr i8, ptr %.val.i.i33.2, i64 %indvars.iv.next.i.i34.1
  %i.bq = getelementptr i8, ptr %i.bp, i64 %i.bf
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !387
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next.i.i34.1
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !387
  %indvars.iv.next.i.i34.2 = or disjoint i64 %indvars.iv.i.i32, 3 ; 2 uses
  %.val.i.i33.3 = load ptr, ptr %i.be, align 8, !tbaa !476
  %i.bt = getelementptr i8, ptr %.val.i.i33.3, i64 %indvars.iv.next.i.i34.2
  %i.bu = getelementptr i8, ptr %i.bt, i64 %i.bf
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !387
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.next.i.i34.2
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !387
  %indvars.iv.next.i.i34.3 = add nuw nsw i64 %indvars.iv.i.i32, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, label %bb.o, !llvm.loop !580

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa: ; preds = %bb.o
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %.lr.ph.i.i30
  %indvars.iv.i.i32.epil.init = phi i64 [ 0, %.lr.ph.i.i30 ], [ %indvars.iv.next.i.i34.3, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %lcmp.mod47 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod47)
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %.epil.preheader
  %indvars.iv.i.i32.epil = phi i64 [ %indvars.iv.i.i32.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.i34.epil, %bb.p ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.p ]
  %.val.i.i33.epil = load ptr, ptr %i.be, align 8, !tbaa !476
  %i.bx = getelementptr i8, ptr %.val.i.i33.epil, i64 %indvars.iv.i.i32.epil
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bf
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !387
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv.i.i32.epil
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !387
  %indvars.iv.next.i.i34.epil = add nuw nsw i64 %indvars.iv.i.i32.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, label %bb.p, !llvm.loop !918

_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36: ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa, %bb.p, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26
  %.pre-phi.i28 = phi i64 [ %.pre.i27, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge.i26 ], [ %i.bf, %bb.p ], [ %i.bf, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36.loopexit.unr-lcssa ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !435
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %.pre-phi.i28 ; 2 uses
  %i.ce = sext i32 %i.bc to i64
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  %i.cg = load i32, ptr %i.a, align 8, !tbaa !436
  %reass.sub = sub i32 %i.cg, %i.l
  %i.ch = add i32 %reass.sub, 1
  %i.ci = sext i32 %i.ch to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr nonnull align 1 %i.cf, i64 %i.ci, i1 false)
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.cj, align 4, !tbaa !492
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.ck, align 1, !tbaa !460
  %i.cl = load i32, ptr %i.a, align 8, !tbaa !436
  %i.cm = sub nsw i32 %i.cl, %i.bc
  store i32 %i.cm, ptr %i.a, align 8, !tbaa !436
  %i.cn = load i32, ptr %i.d, align 4, !tbaa !467 ; 2 uses
  store i32 %i.cn, ptr %1, align 4, !tbaa !451
  store i32 %i.cn, ptr %i.b, align 4, !tbaa !466
  br label %bb.q

bb.q:                                             ; preds = %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit36, %_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.co, align 2, !tbaa !468
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %_ZN5ImStbL18stb_textedit_clampEP19ImGuiInputTextStatePNS_17STB_TexteditStateE.exit
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc void @_ZN5ImStbL19stb_textedit_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address) initializes((2618, 2620), (2624, 2628)) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #27 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr noundef nonnull %i.a, i32 noundef %2, i32 noundef %3, i32 noundef 0) ; 6 uses
  %.not.i = icmp ne ptr %i.b, null
  %i.c = icmp sgt i32 %3, 0
  %or.cond.i = and i1 %i.c, %.not.i
  br i1 %or.cond.i, label %.lr.ph.i, label %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge

._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge: ; preds = %bb.a
  %.pre = sext i32 %2 to i64
  br label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 32         ; 5 uses
  %i.e = sext i32 %2 to i64                       ; 7 uses
  %wide.trip.count.i = zext nneg i32 %3 to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 3 uses
  %i.f = icmp ult i32 %3, 4
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 2147483644
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.3, %bb.b ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.3, %bb.b ]
  %.val.i = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.g = getelementptr i8, ptr %.val.i, i64 %indvars.iv.i
  %i.h = getelementptr i8, ptr %i.g, i64 %i.e
  %i.i = load i8, ptr %i.h, align 1, !tbaa !387
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i
  store i8 %i.i, ptr %i.j, align 1, !tbaa !387
  %indvars.iv.next.i = or disjoint i64 %indvars.iv.i, 1 ; 2 uses
  %.val.i.1 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.k = getelementptr i8, ptr %.val.i.1, i64 %indvars.iv.next.i
  %i.l = getelementptr i8, ptr %i.k, i64 %i.e
  %i.m = load i8, ptr %i.l, align 1, !tbaa !387
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i
  store i8 %i.m, ptr %i.n, align 1, !tbaa !387
  %indvars.iv.next.i.1 = or disjoint i64 %indvars.iv.i, 2 ; 2 uses
  %.val.i.2 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.o = getelementptr i8, ptr %.val.i.2, i64 %indvars.iv.next.i.1
  %i.p = getelementptr i8, ptr %i.o, i64 %i.e
  %i.q = load i8, ptr %i.p, align 1, !tbaa !387
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.1
  store i8 %i.q, ptr %i.r, align 1, !tbaa !387
  %indvars.iv.next.i.2 = or disjoint i64 %indvars.iv.i, 3 ; 2 uses
  %.val.i.3 = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.s = getelementptr i8, ptr %.val.i.3, i64 %indvars.iv.next.i.2
  %i.t = getelementptr i8, ptr %i.s, i64 %i.e
  %i.u = load i8, ptr %i.t, align 1, !tbaa !387
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.next.i.2
  store i8 %i.u, ptr %i.v, align 1, !tbaa !387
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !580

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa: ; preds = %bb.b
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.3, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %lcmp.mod10 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod10)
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.epil.preheader
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader ], [ %indvars.iv.next.i.epil, %bb.c ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.c ]
  %.val.i.epil = load ptr, ptr %i.d, align 8, !tbaa !476
  %i.w = getelementptr i8, ptr %.val.i.epil, i64 %indvars.iv.i.epil
  %i.x = getelementptr i8, ptr %i.w, i64 %i.e
  %i.y = load i8, ptr %i.x, align 1, !tbaa !387
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv.i.epil
  store i8 %i.y, ptr %i.z, align 1, !tbaa !387
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit, label %bb.c, !llvm.loop !919

_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit: ; preds = %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa, %bb.c, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge
  %.pre-phi = phi i64 [ %.pre, %._ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit_crit_edge ], [ %i.e, %bb.c ], [ %i.e, %_ZN5ImStbL24stb_text_makeundo_deleteEP19ImGuiInputTextStatePNS_17STB_TexteditStateEii.exit.loopexit.unr-lcssa ]
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !435
  %i.ac = getelementptr inbounds i8, ptr %i.ab, i64 %.pre-phi ; 2 uses
  %i.ad = sext i32 %3 to i64
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 %i.ad
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !436
  %i.ah = add i32 %2, %3
  %reass.sub = sub i32 %i.ag, %i.ah
  %i.ai = add i32 %reass.sub, 1
  %i.aj = sext i32 %i.ai to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ac, ptr align 1 %i.ae, i64 %i.aj, i1 false)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 116
  store i8 1, ptr %i.ak, align 4, !tbaa !492
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 115
  store i8 1, ptr %i.al, align 1, !tbaa !460
  %i.am = load i32, ptr %i.af, align 8, !tbaa !436
  %i.an = sub nsw i32 %i.am, %3
  store i32 %i.an, ptr %i.af, align 8, !tbaa !436
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 22
  store i8 0, ptr %i.ao, align 2, !tbaa !468
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL29STB_TEXTEDIT_MOVELINEEND_IMPLEP19ImGuiInputTextStatePNS_17STB_TexteditStateEi(ptr nofree noundef nonnull readonly captures(none) %0, i8 %.23.val, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 24         ; 3 uses
  %.val = load i32, ptr %i.b, align 8, !tbaa !436 ; 3 uses
  %.not = icmp eq i8 %.23.val, 0
  br i1 %.not, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.d = load float, ptr %i.c, align 8, !tbaa !490
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.c, label %.thread9

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8, !tbaa !576    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !476  ; 2 uses
  %i.i = sext i32 %1 to i64
  %i.j = getelementptr inbounds i8, ptr %i.h, i64 %i.i ; 4 uses
  %i.k = tail call noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef %i.j, ptr noundef %i.h) ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.m = load i32, ptr %i.b, align 8, !tbaa !436
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  %i.p = icmp ult ptr %i.k, %i.o
  br i1 %i.p, label %.lr.ph, label %.thread9

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 4552
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 4568
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 118
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.g
  %.015 = phi ptr [ %i.k, %.lr.ph ], [ %i.ac, %bb.g ]
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !477
  %i.u = load float, ptr %i.r, align 8, !tbaa !189
  %i.v = load float, ptr %i.c, align 8, !tbaa !490
  %i.w = tail call noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef %i.t, float noundef %i.u, ptr noundef %.015, ptr noundef nonnull %i.o, float noundef %i.v, i32 noundef 2) ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.j
  br i1 %i.x, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.y = load i8, ptr %i.s, align 2, !tbaa !543
  %.not49 = icmp eq i8 %i.y, 0
  br i1 %.not49, label %bb.f, label %.thread9.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.z = icmp ugt ptr %i.w, %i.j
  br i1 %i.z, label %.critedge.loopexit14, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = load i8, ptr %i.w, align 1, !tbaa !387
  %i.ab = icmp eq i8 %i.aa, 10
  %.idx = zext i1 %i.ab to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx ; 2 uses
  %i.ad = icmp ult ptr %i.ac, %i.o
  br i1 %i.ad, label %bb.d, label %.thread9.sink.split

.thread9.sink.split:                              ; preds = %bb.e, %bb.g
  %.lcssa45.sink = phi ptr [ %i.w, %bb.g ], [ %i.j, %bb.e ]
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.af = ptrtoint ptr %.lcssa45.sink to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = trunc i64 %i.ah to i32
  br label %.thread9

.thread9:                                         ; preds = %.thread9.sink.split, %bb.c, %bb.b
  %.3 = phi i32 [ %1, %bb.b ], [ %1, %bb.c ], [ %i.ai, %.thread9.sink.split ] ; 3 uses
  %i.aj = getelementptr i8, ptr %0, i64 32
  %i.ak = icmp slt i32 %.3, %.val
  br i1 %i.ak, label %.lr.ph33, label %.critedge

.lr.ph33:                                         ; preds = %.thread9, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit
  %.432 = phi i32 [ %.0.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ %.3, %.thread9 ] ; 4 uses
  %.val51 = load ptr, ptr %i.aj, align 8, !tbaa !476 ; 2 uses
  %i.al = sext i32 %.432 to i64
  %i.am = getelementptr inbounds i8, ptr %.val51, i64 %i.al ; 2 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !387
  %.not50 = icmp eq i8 %i.an, 10
  br i1 %.not50, label %.critedge, label %bb.h

bb.h:                                             ; preds = %.lr.ph33
  %i.ao = load i32, ptr %i.b, align 8, !tbaa !436 ; 3 uses
  %.not.i = icmp slt i32 %.432, %i.ao
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ap = add nsw i32 %i.ao, 1
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.aq = sext i32 %i.ao to i64
  %i.ar = getelementptr inbounds i8, ptr %.val51, i64 %i.aq
  %i.as = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef nonnull %i.am, ptr noundef %i.ar)
  %i.at = add nsw i32 %i.as, %.432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit

_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit: ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.ap, %bb.i ], [ %i.at, %bb.j ] ; 3 uses
  %i.au = icmp slt i32 %.0.i, %.val
  br i1 %i.au, label %.lr.ph33, label %.critedge, !llvm.loop !920

.critedge.loopexit14:                             ; preds = %bb.f
  %i.av = load ptr, ptr %i.g, align 8, !tbaa !476
  %i.aw = ptrtoint ptr %i.w to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  br label %.critedge

.critedge:                                        ; preds = %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, %.lr.ph33, %.thread9, %.critedge.loopexit14, %bb.a
  %.446 = phi i32 [ %i.az, %.critedge.loopexit14 ], [ %.val, %bb.a ], [ %.3, %.thread9 ], [ %.0.i, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit ], [ %.432, %.lr.ph33 ]
  ret i32 %.446
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !455
  %i.c = and i32 %i.b, 4194304
  %i.d = icmp ne i32 %i.c, 0                      ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !436  ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = load i32, ptr %i.g, align 8, !tbaa !493
  %i.i = xor i32 %i.f, -1
  %i.j = add i32 %i.h, %i.i                       ; 2 uses
  %i.k = icmp sle i32 %3, %i.j
  %or.cond52.not = select i1 %i.d, i1 true, i1 %i.k
  br i1 %or.cond52.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = sext i32 %3 to i64
  %i.m = getelementptr inbounds i8, ptr %2, i64 %i.l
  %i.n = sext i32 %i.j to i64
  %i.o = getelementptr inbounds i8, ptr %2, i64 %i.n
  %i.p = tail call noundef ptr @_Z31ImTextFindValidUtf8CodepointEndPKcS0_S0_(ptr noundef %2, ptr noundef %i.m, ptr noundef %i.o)
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %2 to i64
  %i.s = sub i64 %i.q, %i.r
end_hunk_8
begin_hunk_9_@_ZN5ImStbL24STB_TEXTEDIT_INSERTCHARSEP19ImGuiInputTextStateiPKci:bb.a
  store i8 0, ptr %i.bf, align 1, !tbaa !387
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.l
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZN5ImStbL27is_word_boundary_from_rightEP19ImGuiInputTextStatei(ptr nofree noundef nonnull readonly captures(none) %0, i32 noundef %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !455
  %i.e = and i32 %i.d, 1024
  %i.f = icmp ne i32 %i.e, 0
  %i.g = icmp slt i32 %1, 1
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !476  ; 2 uses
  %i.j = zext nneg i32 %1 to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j ; 2 uses
  %i.l = tail call noundef ptr @_Z31ImTextFindPreviousUtf8CodepointPKcS0_(ptr noundef %i.i, ptr noundef %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #41
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !476
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !436
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr inbounds i8, ptr %i.m, i64 %i.p
  %i.r = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.a, ptr noundef %i.k, ptr noundef %i.q) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #41
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !476
  %i.t = load i32, ptr %i.n, align 8, !tbaa !436
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds i8, ptr %i.s, i64 %i.u
  %i.w = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.b, ptr noundef %i.l, ptr noundef %i.v) ; 0 uses
  %i.x = load i32, ptr %i.b, align 4, !tbaa !192  ; 2 uses
  switch i32 %i.x, label %bb.c [
    i32 32, label %_Z14ImCharIsBlankWj.exit
    i32 9, label %_Z14ImCharIsBlankWj.exit
    i32 12288, label %_Z14ImCharIsBlankWj.exit
  ]

bb.c:                                             ; preds = %bb.b
  br label %_Z14ImCharIsBlankWj.exit

_Z14ImCharIsBlankWj.exit:                         ; preds = %bb.b, %bb.b, %bb.b, %bb.c
  %i.y = phi i1 [ false, %bb.c ], [ true, %bb.b ], [ true, %bb.b ], [ true, %bb.b ]
  %i.z = call fastcc noundef zeroext i1 @_ZN5ImStbL18ImCharIsSeparatorWEj(i32 noundef %i.x) ; 2 uses
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !192 ; 2 uses
  switch i32 %i.aa, label %bb.d [
    i32 32, label %_Z14ImCharIsBlankWj.exit26
    i32 9, label %_Z14ImCharIsBlankWj.exit26
    i32 12288, label %_Z14ImCharIsBlankWj.exit26
  ]

bb.d:                                             ; preds = %_Z14ImCharIsBlankWj.exit
  br label %_Z14ImCharIsBlankWj.exit26

_Z14ImCharIsBlankWj.exit26:                       ; preds = %_Z14ImCharIsBlankWj.exit, %_Z14ImCharIsBlankWj.exit, %_Z14ImCharIsBlankWj.exit, %bb.d
  %.not = phi i1 [ true, %bb.d ], [ false, %_Z14ImCharIsBlankWj.exit ], [ false, %_Z14ImCharIsBlankWj.exit ], [ false, %_Z14ImCharIsBlankWj.exit ]
  %i.ab = call fastcc noundef zeroext i1 @_ZN5ImStbL18ImCharIsSeparatorWEj(i32 noundef %i.aa)
  %or.cond3 = or i1 %i.y, %i.z
  %i.ac = xor i1 %i.z, true
  %i.ad = and i1 %or.cond3, %.not
  %i.ae = select i1 %i.ab, i1 %i.ac, i1 %i.ad
  %i.af = zext i1 %i.ae to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #41
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_Z14ImCharIsBlankWj.exit26
  %.0 = phi i32 [ %i.af, %_Z14ImCharIsBlankWj.exit26 ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal fastcc noundef zeroext i1 @_ZN5ImStbL18ImCharIsSeparatorWEj(i32 noundef %0) unnamed_addr #14 {
bb.a:
  switch i32 %0, label %bb.b [
    i32 44, label %bb.c
    i32 12289, label %bb.c
    i32 46, label %bb.c
    i32 12290, label %bb.c
    i32 59, label %bb.c
    i32 65307, label %bb.c
    i32 40, label %bb.c
    i32 65288, label %bb.c
    i32 41, label %bb.c
    i32 65289, label %bb.c
    i32 123, label %bb.c
    i32 65371, label %bb.c
    i32 125, label %bb.c
    i32 65373, label %bb.c
    i32 91, label %bb.c
    i32 12300, label %bb.c
    i32 93, label %bb.c
    i32 12301, label %bb.c
    i32 124, label %bb.c
    i32 65372, label %bb.c
    i32 33, label %bb.c
    i32 65281, label %bb.c
    i32 92, label %bb.c
    i32 65509, label %bb.c
    i32 47, label %bb.c
    i32 12539, label %bb.c
    i32 65295, label %bb.c
    i32 10, label %bb.c
    i32 13, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.b
  %.not11.lcssa = phi i1 [ false, %bb.b ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ]
  ret i1 %.not11.lcssa
}

declare <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef, float noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_Z8ImStrbolPKcS0_(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_Z28ImFontCalcWordWrapPositionExP6ImFontfPKcS2_fi(ptr noundef, float noundef, ptr noundef, ptr noundef, float noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc noundef ptr @_ZN5ImStbL19stb_text_createundoEPNS_12StbUndoStateEiii(ptr nofree noundef captures(ret: address, provenance) initializes((2586, 2588), (2592, 2596)) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #34 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 2586
  store i16 99, ptr %i.a, align 2, !tbaa !559
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2592
  store i32 999, ptr %i.b, align 4, !tbaa !566
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2584 ; 10 uses
  %i.d = load i16, ptr %i.c, align 4, !tbaa !558
  %i.e = icmp eq i16 %i.d, 99
  br i1 %i.e, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i32, ptr %i.f, align 4, !tbaa !560
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %bb.c, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !562  ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2588 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !565
  %i.m = sub nsw i32 %i.l, %i.j                   ; 2 uses
  store i32 %i.m, ptr %i.k, align 4, !tbaa !565
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.o = sext i32 %i.j to i64
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 %i.o
  %i.q = sext i32 %i.m to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.n, ptr nonnull align 1 %i.p, i64 %i.q, i1 false)
  %i.r = load i16, ptr %i.c, align 4, !tbaa !558  ; 8 uses
  %i.s = icmp sgt i16 %i.r, 0
  br i1 %i.s, label %.lr.ph.preheader.i.i, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %wide.trip.count.i.i = zext nneg i16 %i.r to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.t = icmp eq i16 %i.r, 1
  br i1 %i.t, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 32766
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.f ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.1, %bb.f ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 12 ; 2 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !560  ; 2 uses
  %i.x = icmp sgt i32 %i.w, -1
  br i1 %i.x, label %bb.d, label %.lr.ph.i.i.1

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.y = sub nsw i32 %i.w, %i.j
  store i32 %i.y, ptr %i.v, align 4, !tbaa !560
  br label %.lr.ph.i.i.1

.lr.ph.i.i.1:                                     ; preds = %bb.d, %.lr.ph.i.i
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 28 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !560 ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, -1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.lr.ph.i.i.1
  %i.ad = sub nsw i32 %i.ab, %i.j
  store i32 %i.ad, ptr %i.aa, align 4, !tbaa !560
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.i.i.1
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !921

_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa: ; preds = %bb.f
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.1, %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod28 = trunc i16 %i.r to i1
  tail call void @llvm.assume(i1 %lcmp.mod28)
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i.i.epil.init
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 12 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !560 ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.g, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i

bb.g:                                             ; preds = %.lr.ph.i.i.epil.preheader
  %i.ai = sub nsw i32 %i.ag, %i.j
  store i32 %i.ai, ptr %i.af, align 4, !tbaa !560
  br label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i

_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i: ; preds = %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa, %bb.g, %.lr.ph.i.i.epil.preheader, %bb.c, %bb.b
  %i.aj = phi i16 [ 99, %bb.b ], [ %i.r, %bb.c ], [ %i.r, %.lr.ph.i.i.epil.preheader ], [ %i.r, %bb.g ], [ %i.r, %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i.loopexit.unr-lcssa ]
  %i.ak = add i16 %i.aj, -1                       ; 2 uses
  store i16 %i.ak, ptr %i.c, align 4, !tbaa !558
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = sext i16 %i.ak to i64
  %i.an = shl nsw i64 %i.am, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.al, i64 %i.an, i1 false)
  br label %bb.h

bb.h:                                             ; preds = %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit.i, %bb.a
  %i.ao = icmp sgt i32 %2, 999
  br i1 %i.ao, label %_ZN5ImStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.h
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 2588 ; 4 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !565 ; 3 uses
  %i.ar = add nsw i32 %i.aq, %2
  %i.as = icmp sgt i32 %i.ar, 999
  %.pre20.i = load i16, ptr %i.c, align 4, !tbaa !558 ; 2 uses
  br i1 %i.as, label %.lr.ph.i, label %bb.o

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1584 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ax = icmp sgt i16 %.pre20.i, 0
  tail call void @llvm.assume(i1 %i.ax)
  br label %.lr.ph.split.i

_ZN5ImStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi.exit.thread: ; preds = %bb.h
  store i16 0, ptr %i.c, align 4, !tbaa !558
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2588
  store i32 0, ptr %i.ay, align 4, !tbaa !565
  br label %bb.r

.lr.ph.split.i:                                   ; preds = %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i, %.lr.ph.i
  %i.az = phi i32 [ %i.cf, %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i ], [ %i.aq, %.lr.ph.i ] ; 2 uses
  %i.ba = load i16, ptr %i.c, align 4, !tbaa !558 ; 2 uses
  %i.bb = icmp sgt i16 %i.ba, 0
  br i1 %i.bb, label %bb.i, label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i

bb.i:                                             ; preds = %.lr.ph.split.i
  %i.bc = load i32, ptr %i.at, align 4, !tbaa !560
  %i.bd = icmp sgt i32 %i.bc, -1
  br i1 %i.bd, label %bb.j, label %.loopexit.i11.i

bb.j:                                             ; preds = %bb.i
  %i.be = load i32, ptr %i.au, align 4, !tbaa !562 ; 5 uses
  %i.bf = sub nsw i32 %i.az, %i.be                ; 2 uses
  store i32 %i.bf, ptr %i.ap, align 4, !tbaa !565
  %i.bg = sext i32 %i.be to i64
  %i.bh = getelementptr inbounds i8, ptr %i.av, i64 %i.bg
  %i.bi = sext i32 %i.bf to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.av, ptr nonnull align 1 %i.bh, i64 %i.bi, i1 false)
  %i.bj = load i16, ptr %i.c, align 4, !tbaa !558 ; 8 uses
  %i.bk = icmp sgt i16 %i.bj, 0
  br i1 %i.bk, label %.lr.ph.preheader.i12.i, label %.loopexit.i11.i

.lr.ph.preheader.i12.i:                           ; preds = %bb.j
  %wide.trip.count.i13.i = zext nneg i16 %i.bj to i64 ; 2 uses
  %xtraiter29 = and i64 %wide.trip.count.i13.i, 1
  %i.bl = icmp eq i16 %i.bj, 1
  br i1 %i.bl, label %.lr.ph.i14.i.epil.preheader, label %.lr.ph.preheader.i12.i.new

.lr.ph.preheader.i12.i.new:                       ; preds = %.lr.ph.preheader.i12.i
  %unroll_iter32 = and i64 %wide.trip.count.i13.i, 32766
  br label %.lr.ph.i14.i

.lr.ph.i14.i:                                     ; preds = %bb.m, %.lr.ph.preheader.i12.i.new
  %indvars.iv.i15.i = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %indvars.iv.next.i16.i.1, %bb.m ] ; 3 uses
  %niter33 = phi i64 [ 0, %.lr.ph.preheader.i12.i.new ], [ %niter33.next.1, %bb.m ]
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i15.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 12 ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !560 ; 2 uses
  %i.bp = icmp sgt i32 %i.bo, -1
  br i1 %i.bp, label %bb.k, label %.lr.ph.i14.i.1

bb.k:                                             ; preds = %.lr.ph.i14.i
  %i.bq = sub nsw i32 %i.bo, %i.be
  store i32 %i.bq, ptr %i.bn, align 4, !tbaa !560
  br label %.lr.ph.i14.i.1

.lr.ph.i14.i.1:                                   ; preds = %bb.k, %.lr.ph.i14.i
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i15.i
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 28 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !560 ; 2 uses
  %i.bu = icmp sgt i32 %i.bt, -1
  br i1 %i.bu, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i14.i.1
  %i.bv = sub nsw i32 %i.bt, %i.be
  store i32 %i.bv, ptr %i.bs, align 4, !tbaa !560
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i14.i.1
  %indvars.iv.next.i16.i.1 = add nuw nsw i64 %indvars.iv.i15.i, 2 ; 2 uses
  %niter33.next.1 = add nuw i64 %niter33, 2       ; 2 uses
  %niter33.ncmp.1 = icmp eq i64 %niter33.next.1, %unroll_iter32
  br i1 %niter33.ncmp.1, label %.loopexit.i11.i.loopexit.unr-lcssa, label %.lr.ph.i14.i, !llvm.loop !921

.loopexit.i11.i.loopexit.unr-lcssa:               ; preds = %bb.m
  %lcmp.mod30.not = icmp eq i64 %xtraiter29, 0
  br i1 %lcmp.mod30.not, label %.loopexit.i11.i, label %.lr.ph.i14.i.epil.preheader

.lr.ph.i14.i.epil.preheader:                      ; preds = %.loopexit.i11.i.loopexit.unr-lcssa, %.lr.ph.preheader.i12.i
  %indvars.iv.i15.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i12.i ], [ %indvars.iv.next.i16.i.1, %.loopexit.i11.i.loopexit.unr-lcssa ]
  %lcmp.mod31 = trunc i16 %i.bj to i1
  tail call void @llvm.assume(i1 %lcmp.mod31)
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %indvars.iv.i15.i.epil.init
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 12 ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !560 ; 2 uses
  %i.bz = icmp sgt i32 %i.by, -1
  br i1 %i.bz, label %bb.n, label %.loopexit.i11.i

bb.n:                                             ; preds = %.lr.ph.i14.i.epil.preheader
  %i.ca = sub nsw i32 %i.by, %i.be
  store i32 %i.ca, ptr %i.bx, align 4, !tbaa !560
  br label %.loopexit.i11.i

.loopexit.i11.i:                                  ; preds = %.loopexit.i11.i.loopexit.unr-lcssa, %bb.n, %.lr.ph.i14.i.epil.preheader, %bb.j, %bb.i
  %i.cb = phi i16 [ %i.ba, %bb.i ], [ %i.bj, %bb.j ], [ %i.bj, %.lr.ph.i14.i.epil.preheader ], [ %i.bj, %bb.n ], [ %i.bj, %.loopexit.i11.i.loopexit.unr-lcssa ]
  %i.cc = add i16 %i.cb, -1                       ; 2 uses
  store i16 %i.cc, ptr %i.c, align 4, !tbaa !558
  %i.cd = sext i16 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 4 %i.aw, i64 %i.ce, i1 false)
  %.pre.i = load i32, ptr %i.ap, align 4, !tbaa !565
  br label %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i

_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i: ; preds = %.loopexit.i11.i, %.lr.ph.split.i
  %i.cf = phi i32 [ %i.az, %.lr.ph.split.i ], [ %.pre.i, %.loopexit.i11.i ] ; 3 uses
  %i.cg = add nsw i32 %i.cf, %2
  %i.ch = icmp sgt i32 %i.cg, 999
  br i1 %i.ch, label %.lr.ph.split.i, label %._crit_edge.loopexit.i, !llvm.loop !922

._crit_edge.loopexit.i:                           ; preds = %_ZN5ImStbL25stb_textedit_discard_undoEPNS_12StbUndoStateE.exit18.i
  %.pre19.i = load i16, ptr %i.c, align 4, !tbaa !558
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.loopexit.i, %.preheader.i
  %i.ci = phi i32 [ %i.aq, %.preheader.i ], [ %i.cf, %._crit_edge.loopexit.i ] ; 3 uses
  %i.cj = phi i16 [ %.pre20.i, %.preheader.i ], [ %.pre19.i, %._crit_edge.loopexit.i ] ; 2 uses
  %i.ck = add i16 %i.cj, 1
  store i16 %i.ck, ptr %i.c, align 4, !tbaa !558
  %i.cl = sext i16 %i.cj to i64
  %i.cm = getelementptr inbounds [16 x i8], ptr %0, i64 %i.cl ; 4 uses
  store i32 %1, ptr %i.cm, align 4, !tbaa !564
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  store i32 %2, ptr %i.cn, align 4, !tbaa !562
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  store i32 %3, ptr %i.co, align 4, !tbaa !563
  %i.cp = icmp eq i32 %2, 0
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 12 ; 2 uses
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 -1, ptr %i.cq, align 4, !tbaa !560
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  store i32 %i.ci, ptr %i.cq, align 4, !tbaa !560
  %i.cr = add nsw i32 %i.ci, %2
  store i32 %i.cr, ptr %i.ap, align 4, !tbaa !565
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 1584
  %i.ct = sext i32 %i.ci to i64
  %i.cu = getelementptr inbounds i8, ptr %i.cs, i64 %i.ct
  br label %bb.r

bb.r:                                             ; preds = %_ZN5ImStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi.exit.thread, %bb.q, %bb.p
  %.0 = phi ptr [ %i.cu, %bb.q ], [ null, %bb.p ], [ null, %_ZN5ImStbL27stb_text_create_undo_recordEPNS_12StbUndoStateEi.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef i32 @_ZN5ImStbL21stb_text_locate_coordEP19ImGuiInputTextStateffPi(ptr nofree noundef readonly captures(none) %0, float noundef %1, float noundef %2, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca i32, align 4                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = getelementptr i8, ptr %0, i64 24         ; 5 uses
  %.val = load i32, ptr %i.e, align 8, !tbaa !436 ; 4 uses
  store i32 0, ptr %3, align 4, !tbaa !192
  %i.f = icmp sgt i32 %.val, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr i8, ptr %0, i64 32         ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.05187 = phi i32 [ 0, %.lr.ph ], [ %i.af, %bb.e ] ; 8 uses
  %.05386 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ad, %bb.e ] ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !476  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #41
  store ptr null, ptr %i.d, align 8, !tbaa !182
  %i.i = load ptr, ptr %0, align 8, !tbaa !576    ; 3 uses
  %i.j = zext nneg i32 %.05187 to i64             ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.e, align 8, !tbaa !436
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.h, i64 %i.m ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 4552
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !477
  %i.q = getelementptr inbounds nuw i8, ptr %i.i, i64 4568
  %i.r = load float, ptr %i.q, align 8, !tbaa !189
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 9520
  %i.t = load float, ptr %i.s, align 8, !tbaa !490
  %i.u = call <2 x float> @_Z20ImFontCalcTextSizeExP6ImFontfffPKcS2_S2_PS2_P6ImVec2i(ptr noundef %i.p, float noundef %i.r, float noundef f0x7F7FFFFF, float noundef %i.t, ptr noundef %i.k, ptr noundef %i.n, ptr noundef %i.n, ptr noundef nonnull %i.d, ptr noundef null, i32 noundef 6) ; 2 uses
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.u, i64 1
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !182
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = ptrtoint ptr %i.k to i64
  %i.y = sub i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i32                    ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #41
  %i.aa = icmp slt i32 %i.z, 1
  br i1 %i.aa, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = icmp eq i32 %.05187, 0
  %i.ac = fcmp olt float %2, %.05386
  %or.cond = and i1 %i.ac, %i.ab
  br i1 %or.cond, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = fadd float %.05386, %.sroa.0.4.vec.extract.i ; 2 uses
  %i.ae = fcmp olt float %2, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = add nuw nsw i32 %.05187, %i.z           ; 2 uses
  %i.ag = icmp slt i32 %i.af, %.val
  br i1 %i.ag, label %bb.b, label %._crit_edge, !llvm.loop !924

._crit_edge:                                      ; preds = %bb.e, %bb.a
  store i32 1, ptr %3, align 4, !tbaa !192
  br label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread

bb.f:                                             ; preds = %bb.d
  %i.ah = fcmp olt float %1, 0.000000e+00
  br i1 %i.ah, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.sroa.0.0.vec.extract.i.le = extractelement <2 x float> %i.u, i64 0
  %i.ai = fcmp olt float %1, %.sroa.0.0.vec.extract.i.le
  br i1 %i.ai, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %bb.g, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit65
  %.05089 = phi i32 [ %i.cd, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit65 ], [ 0, %bb.g ] ; 4 uses
  %.05288 = phi float [ %i.bc, %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit65 ], [ 0.000000e+00, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #41
  %i.aj = load ptr, ptr %i.g, align 8, !tbaa !476 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.j
  %i.al = sext i32 %.05089 to i64
  %i.am = getelementptr inbounds i8, ptr %i.ak, i64 %i.al
  %i.an = load i32, ptr %i.e, align 8, !tbaa !436
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds i8, ptr %i.aj, i64 %i.ao
  %i.aq = call noundef i32 @_Z18ImTextCharFromUtf8PjPKcS1_(ptr noundef nonnull %i.c, ptr noundef %i.am, ptr noundef %i.ap) ; 0 uses
  %i.ar = load i32, ptr %i.c, align 4, !tbaa !192 ; 2 uses
  %i.as = and i32 %i.ar, 65535
  %i.at = icmp eq i32 %i.as, 10
  br i1 %i.at, label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph90
  %i.au = trunc i32 %i.ar to i16
  %i.av = load ptr, ptr %0, align 8, !tbaa !576   ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4560
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !319
  %i.ay = call noundef float @_ZN11ImFontBaked14GetCharAdvanceEt(ptr noundef nonnull align 8 dereferenceable(104) %i.ax, i16 noundef zeroext %i.au)
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 4576
  %i.ba = load float, ptr %i.az, align 8, !tbaa !321
  %i.bb = fmul float %i.ay, %i.ba
  br label %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit

_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit: ; preds = %.lr.ph90, %bb.h
  %.0.i = phi float [ %i.bb, %bb.h ], [ -1.000000e+00, %.lr.ph90 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #41
  %i.bc = fadd float %.05288, %.0.i               ; 2 uses
  %i.bd = fcmp uge float %1, %i.bc
  br i1 %i.bd, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit, label %bb.i

bb.i:                                             ; preds = %_ZN5ImStbL21STB_TEXTEDIT_GETWIDTHEP19ImGuiInputTextStateii.exit
  %i.be = icmp ne i32 %.05089, 0
  %i.bf = zext i1 %i.be to i32
  store i32 %i.bf, ptr %3, align 4, !tbaa !192
  %i.bg = fmul float %.0.i, 5.000000e-01
  %i.bh = fadd float %.05288, %i.bg
  %i.bi = fcmp olt float %1, %i.bh
  %i.bj = add nsw i32 %.05089, %.05187            ; 4 uses
  br i1 %i.bi, label %_ZN5ImStbL36IMSTB_TEXTEDIT_GETNEXTCHARINDEX_IMPLEP19ImGuiInputTextStatei.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bk = load i32, ptr %i.e, align 8, !tbaa !436 ; 3 uses
  %.not.i = icmp slt i32 %i.bj, %i.bk
  br i1 %.not.i, label %bb.l, label %bb.k
end_hunk_9
