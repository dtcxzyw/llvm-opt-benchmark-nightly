Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/objects_associator?download=true
inline.NumInlined: 386
inline.NumDeleted: 230
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN3vas2ot17ObjectsAssociator18ComputeRgbDistanceERKSt6vectorINS0_9DetectionESaIS3_EERKS2_ISt10shared_ptrINS0_8TrackletEESaISA_EEPKS2_IN2cv3MatESaISG_EE:bb.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !74
  %.not = icmp eq i32 %i.bl, %i.bp
  br i1 %.not, label %bb.n, label %bb.x

bb.n:                                             ; preds = %._crit_edge77, %bb.m
  %i.bq = phi ptr [ %.pre78, %._crit_edge77 ], [ %i.bn, %bb.m ] ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !10
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = invoke noundef ptr %i.bt(ptr noundef nonnull align 8 dereferenceable(264) %i.bq)
          to label %bb.o unwind label %bb.q       ; 3 uses

bb.o:                                             ; preds = %bb.n
  %.not39 = icmp eq ptr %i.bu, null
  br i1 %.not39, label %bb.x, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bx = load ptr, ptr %i.bv, align 8, !tbaa !139
  %i.by = load ptr, ptr %i.bw, align 8, !tbaa !139
  %i.bz = icmp eq ptr %i.bx, %i.by
  br i1 %i.bz, label %bb.x, label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.r:                                             ; preds = %bb.p
  %i.cb = load ptr, ptr %3, align 8, !tbaa !27
  %i.cc = getelementptr inbounds nuw [16 x i8], ptr %i.cb, i64 %.066
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !51 ; 2 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 24
  %i.cg = load ptr, ptr %i.cf, align 8
  %i.ch = invoke noundef ptr %i.cg(ptr noundef nonnull align 8 dereferenceable(264) %i.cd)
          to label %bb.s unwind label %bb.t       ; 4 uses

bb.s:                                             ; preds = %bb.r
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !139, !noalias !140 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !139, !noalias !141 ; 2 uses
  %.not5961 = icmp eq ptr %i.cj, %i.cl
  br i1 %.not5961, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.s
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !142, !noalias !140
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !143, !noalias !140
  br label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit
  %.pre79 = load ptr, ptr %0, align 8, !tbaa !17
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.s
  %i.cq = phi ptr [ %i.bf, %bb.s ], [ %.pre79, %._crit_edge.loopexit ] ; 2 uses
  %.058.lcssa = phi float [ 1.000000e+03, %bb.s ], [ %.sroa.speculated, %._crit_edge.loopexit ]
  %i.cr = getelementptr inbounds nuw [24 x i8], ptr %i.cq, i64 %.03170
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !37
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.066
  store float %.058.lcssa, ptr %i.ct, align 4, !tbaa !40
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit
  %.sroa.051.065 = phi ptr [ %.sroa.051.1, %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit ], [ %i.cj, %.lr.ph.preheader ] ; 2 uses
  %.sroa.11.064 = phi ptr [ %.sroa.11.1, %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit ], [ %i.cp, %.lr.ph.preheader ] ; 2 uses
  %.sroa.14.063 = phi ptr [ %.sroa.14.1, %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit ], [ %i.cn, %.lr.ph.preheader ] ; 2 uses
  %.05862 = phi float [ %.sroa.speculated, %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit ], [ 1.000000e+03, %.lr.ph.preheader ] ; 2 uses
  %i.cv = invoke noundef float @_ZN3vas2ot12RgbHistogram17ComputeSimilarityERKN2cv3MatES5_(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %.sroa.051.065)
          to label %bb.u unwind label %bb.w

bb.u:                                             ; preds = %.lr.ph
  %i.cw = fsub float 1.000000e+00, %i.cv          ; 2 uses
  %i.cx = fcmp olt float %i.cw, %.05862
  %.sroa.speculated = select i1 %i.cx, float %i.cw, float %.05862 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.051.065, i64 208 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %.sroa.11.064
  br i1 %i.cz, label %bb.v, label %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit

bb.v:                                             ; preds = %bb.u
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.14.063, i64 8 ; 2 uses
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !144 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 416
  br label %_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit

_ZNSt15_Deque_iteratorIN2cv3MatERS1_PS1_EppEv.exit: ; preds = %bb.u, %bb.v
  %.sroa.14.1 = phi ptr [ %i.da, %bb.v ], [ %.sroa.14.063, %bb.u ]
  %.sroa.11.1 = phi ptr [ %i.dc, %bb.v ], [ %.sroa.11.064, %bb.u ]
  %.sroa.051.1 = phi ptr [ %i.db, %bb.v ], [ %i.cy, %bb.u ] ; 2 uses
  %.not59 = icmp eq ptr %.sroa.051.1, %i.cl
  br i1 %.not59, label %._crit_edge.loopexit, label %.lr.ph

bb.w:                                             ; preds = %.lr.ph
  %i.dd = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.x:                                             ; preds = %._crit_edge, %bb.p, %bb.o, %bb.m
  %i.de = phi ptr [ %i.cq, %._crit_edge ], [ %i.bf, %bb.p ], [ %i.bf, %bb.o ], [ %i.bf, %bb.m ] ; 2 uses
  %i.df = add nuw i64 %.066, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.df, %i.n
  br i1 %exitcond.not, label %._crit_edge69, label %bb.l, !llvm.loop !133

bb.y:                                             ; preds = %bb.t, %bb.w, %bb.q
  %.pn40.pn = phi { ptr, i32 } [ %i.ca, %bb.q ], [ %i.dd, %bb.w ], [ %i.cu, %bb.t ]
  call void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) #19
  br label %bb.z

._crit_edge72.split:                              ; preds = %._crit_edge69, %.lr.ph71, %_ZNSt6vectorIfSaIfEED2Ev.exit
  ret void

bb.z:                                             ; preds = %bb.y, %_ZNSt6vectorIfSaIfEED2Ev.exit50
  %.pn40.pn.pn = phi { ptr, i32 } [ %.pn40.pn, %bb.y ], [ %.pn, %_ZNSt6vectorIfSaIfEED2Ev.exit50 ]
  resume { ptr, i32 } %.pn40.pn.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt6vectorIS_IfSaIfEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #18
  br label %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !0

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIfSaIfEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !17
  br label %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !19
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #18
  br label %_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIfSaIfEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIfSaIfEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN3vas2ot17ObjectsAssociator24NormalizedCenterDistanceERKN2cv5Rect_IfEES6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load float, ptr %i.a, align 4, !tbaa !75 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load float, ptr %i.c, align 4, !tbaa !76 ; 2 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = fmul float %i.e, 5.000000e-01            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load <2 x float>, ptr %i.g, align 4, !tbaa !40 ; 3 uses
  %i.i = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.h)
  %i.j = fmul float %i.i, 5.000000e-01            ; 2 uses
  %i.k = fcmp olt float %i.j, %i.f
  %.sroa.speculated = select i1 %i.k, float %i.j, float %i.f
  %i.l = load float, ptr %0, align 4, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.n = load float, ptr %i.m, align 4, !tbaa !78
  %2 = load <2 x float>, ptr %1, align 4          ; 2 uses
  %i.o = insertelement <2 x float> %i.h, float %i.b, i64 1
  %i.p = insertelement <2 x float> %2, float %i.l, i64 1
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> splat (float 5.000000e-01), <2 x float> %i.p) ; 2 uses
  %i.r = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.s = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.d, i64 1
  %i.u = insertelement <2 x float> %i.r, float %i.n, i64 1
  %i.v = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> splat (float 5.000000e-01), <2 x float> %i.u) ; 2 uses
  %i.w = shufflevector <2 x float> %i.q, <2 x float> %i.v, <2 x i32> <i32 0, i32 2>
  %i.x = shufflevector <2 x float> %i.q, <2 x float> %i.v, <2 x i32> <i32 1, i32 3>
  %i.y = fsub <2 x float> %i.w, %i.x
  %i.z = insertelement <2 x float> poison, float %.sroa.speculated, i64 0
  %i.aa = shufflevector <2 x float> %i.z, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ab = fdiv <2 x float> %i.y, %i.aa            ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.ab, %i.ab
  %i.ac = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ad = extractelement <2 x float> %i.ab, i64 0 ; 2 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.ac)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.ae)
  ret float %sqrt
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden noundef float @_ZN3vas2ot17ObjectsAssociator23NormalizedShapeDistanceERKN2cv5Rect_IfEES6_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load <2 x float>, ptr %i.a, align 4, !tbaa !40 ; 4 uses
  %i.d = load <2 x float>, ptr %i.b, align 4, !tbaa !40 ; 4 uses
  %shift = shufflevector <2 x float> %i.d, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.d, %shift
  %i.e = extractelement <2 x float> %foldExtExtBinop, i64 0
  %shift19 = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop20 = fadd <2 x float> %i.c, %shift19
  %i.f = extractelement <2 x float> %foldExtExtBinop20, i64 0
  %i.g = fcmp olt float %i.e, %i.f
  %i.h = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.i = shufflevector <2 x i1> %i.h, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.j = select <2 x i1> %i.i, <2 x float> %i.d, <2 x float> %i.c
  %i.k = fptosi <2 x float> %i.j to <2 x i32>
  %i.l = fsub <2 x float> %i.d, %i.c
  %i.m = sitofp <2 x i32> %i.k to <2 x float>
  %i.n = fdiv <2 x float> %i.l, %i.m              ; 3 uses
  %foldExtExtBinop22 = fmul <2 x float> %i.n, %i.n
  %i.o = extractelement <2 x float> %foldExtExtBinop22, i64 1
  %i.p = extractelement <2 x float> %i.n, i64 0   ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %i.p, float %i.o)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.q)
  ret float %sqrt
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @logf(float noundef) local_unnamed_addr #8

declare void @_ZN3vas2ot13HungarianAlgoC1ERKN2cv4Mat_IfEE(ptr noundef nonnull align 8 dereferenceable(312), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

declare void @_ZN3vas2ot13HungarianAlgo5SolveEv(ptr dead_on_unwind writable sret(%"class.cv::Mat_.49") align 8, ptr noundef nonnull align 8 dereferenceable(312)) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN3vas2ot13HungarianAlgoD1Ev(ptr noundef nonnull align 8 dead_on_return(312) dereferenceable(312)) unnamed_addr #10

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #10

declare noundef float @_ZN3vas2ot12RgbHistogram17ComputeSimilarityERKN2cv3MatES5_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) local_unnamed_addr #9

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZNSt6vectorIbSaIbEEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr null, ptr %0, align 8, !tbaa !30
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !31
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !30
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.c, align 8, !tbaa !31
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr null, ptr %i.d, align 8, !tbaa !34
  %i.e = load ptr, ptr %1, align 8, !tbaa !30     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !30   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i32, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = ptrtoint ptr %i.e to i64
  %i.l = sub i64 %i.j, %i.k                       ; 5 uses
  %i.m = shl nsw i64 %i.l, 3
  %i.n = zext i32 %i.i to i64                     ; 2 uses
  %i.o = add nsw i64 %i.m, %i.n                   ; 5 uses
  %.not.i = icmp eq i64 %i.o, 0
  br i1 %.not.i, label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.p = add i64 %i.o, 63                         ; 2 uses
  %i.q = lshr i64 %i.p, 3
  %i.r = and i64 %i.q, 2305843009213693944
  %i.s = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.r) #20
          to label %.noexc unwind label %bb.h     ; 4 uses

.noexc:                                           ; preds = %bb.b
  %i.t = lshr i64 %i.p, 6
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.u, ptr %i.d, align 8, !tbaa !34
  store ptr %i.s, ptr %0, align 8
  store i32 0, ptr %i.a, align 8
  %i.v = sdiv i64 %i.o, 64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = and i64 %i.o, -9223372036854775745
  %i.y = icmp ugt i64 %i.x, -9223372036854775808
  %storemerge.idx.i.i.i.i = select i1 %i.y, i64 -8, i64 0
  %storemerge.i.i.i.i = getelementptr inbounds i8, ptr %i.w, i64 %storemerge.idx.i.i.i.i
  %i.z = trunc i64 %i.o to i32
  %i.aa = and i32 %i.z, 63
  store ptr %storemerge.i.i.i.i, ptr %i.b, align 8
  store i32 %i.aa, ptr %i.c, align 8
  br label %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit

_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit:       ; preds = %.noexc, %bb.a
  %i.ab = phi ptr [ %i.s, %.noexc ], [ null, %bb.a ] ; 3 uses
  %i.ac = icmp sgt i64 %i.l, 8
  br i1 %i.ac, label %bb.c, label %bb.d, !prof !81

bb.c:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.ab, ptr align 8 %i.e, i64 %i.l, i1 false)
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.d:                                             ; preds = %_ZNSt6vectorIbSaIbEE13_M_initializeEm.exit
  %i.ad = icmp eq i64 %i.l, 8
  br i1 %i.ad, label %bb.e, label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load i64, ptr %i.e, align 8, !tbaa !79
  store i64 %i.ae, ptr %i.ab, align 8, !tbaa !79
  br label %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i

_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i:               ; preds = %bb.e, %bb.d, %bb.c
  %.not.i28 = icmp eq i32 %i.i, 0
  br i1 %.not.i28, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  %i.af = getelementptr inbounds i8, ptr %i.ab, i64 %i.l
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i
  %.020.i.i.i.i.i.i = phi i64 [ %i.av, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.n, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.03.019.i.i.i.i.i.i = phi ptr [ %.sroa.03.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.af, %.lr.ph.i.i.i.i.i.i.preheader ] ; 4 uses
  %.sroa.55.018.i.i.i.i.i.i = phi i32 [ %.sroa.55.1.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.512.017.i.i.i.i.i.i = phi i32 [ %spec.select15.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ] ; 3 uses
  %.sroa.09.016.i.i.i.i.i.i = phi ptr [ %spec.select.i.i.i.i.i.i, %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i ], [ %i.g, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ag = zext nneg i32 %.sroa.512.017.i.i.i.i.i.i to i64
  %i.ah = shl nuw i64 1, %i.ag
  %i.ai = load i64, ptr %.sroa.09.016.i.i.i.i.i.i, align 8, !tbaa !79
  %i.aj = and i64 %i.ai, %i.ah
  %.not.i.i.i.i.i.i = icmp eq i64 %i.aj, 0
  %i.ak = zext nneg i32 %.sroa.55.018.i.i.i.i.i.i to i64
  %i.al = shl nuw i64 1, %i.ak                    ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.am = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !79
  %i.an = or i64 %i.am, %i.al
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.ao = xor i64 %i.al, -1
  %i.ap = load i64, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !79
  %i.aq = and i64 %i.ap, %i.ao
  br label %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i

_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i:       ; preds = %bb.g, %bb.f
  %storemerge.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.g ], [ %i.an, %bb.f ]
  store i64 %storemerge.i.i.i.i.i.i, ptr %.sroa.03.019.i.i.i.i.i.i, align 8, !tbaa !79
  %i.ar = add i32 %.sroa.512.017.i.i.i.i.i.i, 1
  %i.as = icmp eq i32 %.sroa.512.017.i.i.i.i.i.i, 63 ; 2 uses
  %spec.select.idx.i.i.i.i.i.i = select i1 %i.as, i64 8, i64 0
  %spec.select.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.09.016.i.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i.i
  %spec.select15.i.i.i.i.i.i = select i1 %i.as, i32 0, i32 %i.ar
  %i.at = add i32 %.sroa.55.018.i.i.i.i.i.i, 1
  %i.au = icmp eq i32 %.sroa.55.018.i.i.i.i.i.i, 63 ; 2 uses
  %.sroa.55.1.i.i.i.i.i.i = select i1 %i.au, i32 0, i32 %i.at
  %.sroa.03.1.idx.i.i.i.i.i.i = select i1 %i.au, i64 8, i64 0
  %.sroa.03.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.03.019.i.i.i.i.i.i, i64 %.sroa.03.1.idx.i.i.i.i.i.i
  %i.av = add nsw i64 %.020.i.i.i.i.i.i, -1
  %i.aw = icmp sgt i64 %.020.i.i.i.i.i.i, 1
  br i1 %i.aw, label %.lr.ph.i.i.i.i.i.i, label %.loopexit, !llvm.loop !145

.loopexit:                                        ; preds = %_ZNSt14_Bit_referenceaSEb.exit.i.i.i.i.i.i, %_ZSt4copyIPmS0_ET0_T_S2_S1_.exit.i
  ret void

bb.h:                                             ; preds = %bb.b
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load ptr, ptr %0, align 8, !tbaa !30    ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt13_Bvector_baseISaIbEED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.d, align 8, !tbaa !34  ; 2 uses
  %i.ba = ptrtoint ptr %i.az to i64
  %i.bb = ptrtoint ptr %i.ay to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 2 uses
end_hunk_0
