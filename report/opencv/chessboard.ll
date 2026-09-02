Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/chessboard?download=true
inline.NumInlined: 4866
inline.NumDeleted: 1356
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZNK2cv7details10Chessboard5Board10getCornersEb:bb.a
_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38: ; preds = %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28
  %i.bn = getelementptr inbounds nuw i8, ptr %.04.i.i30, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !164
  %i.bp = fcmp uno float %i.bo, 0.000000e+00
  br i1 %i.bp, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64, label %bb.m

bb.m:                                             ; preds = %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38, %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.978.0.ph, i64 %.
  %.04.i.i41 = load ptr, ptr %i.bq, align 8, !tbaa !174 ; 2 uses
  %i.br = load ptr, ptr %i.i, align 8, !tbaa !217
  %.not.i49 = icmp eq ptr %i.bh, %i.br
  br i1 %.not.i49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr %.04.i.i41, align 4
  store i64 %i.bs, ptr %i.bh, align 4
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.h, align 8, !tbaa !213
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64

bb.o:                                             ; preds = %bb.m
  %i.bu = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bv = ptrtoint ptr %i.bi to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 4 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.p, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.110) #32
          to label %.noexc62 unwind label %.loopexit.split-lp

.noexc62:                                         ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50: ; preds = %bb.o
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i51 = tail call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i51, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = tail call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i52 = icmp ne i64 %i.cc, 0
  tail call void @llvm.assume(i1 %.not.i.i.i52)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #35
          to label %.noexc63 unwind label %.loopexit ; 10 uses

.noexc63:                                         ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = load i64, ptr %.04.i.i41, align 4
  store i64 %i.cg, ptr %i.cf, align 4
  %.not10.i.i.i.i.i53 = icmp eq ptr %i.bi, %i.bh
  br i1 %.not10.i.i.i.i.i53, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader

.lr.ph.i.i.i.i.i54.preheader:                     ; preds = %.noexc63
  %i.ch = ptrtoaddr ptr %i.ce to i64
  %i.ci = add i64 %i.bu, -8
  %i.cj = sub i64 %i.ci, %i.bv                    ; 2 uses
  %i.ck = lshr i64 %i.cj, 3
  %i.cl = add nuw nsw i64 %i.ck, 1                ; 2 uses
  %min.iters.check171 = icmp ult i64 %i.cj, 24
  %i.cm = sub i64 %i.bv, %i.ch
  %diff.check169 = icmp ugt i64 %i.cm, -32
  %or.cond185 = or i1 %min.iters.check171, %diff.check169
  br i1 %or.cond185, label %.lr.ph.i.i.i.i.i54.preheader186, label %vector.ph172

vector.ph172:                                     ; preds = %.lr.ph.i.i.i.i.i54.preheader
  %n.vec173 = and i64 %i.cl, 4611686018427387900  ; 3 uses
  %i.cn = shl i64 %n.vec173, 3                    ; 2 uses
  %i.co = getelementptr i8, ptr %i.ce, i64 %i.cn  ; 2 uses
  %i.cp = getelementptr i8, ptr %i.bi, i64 %i.cn
  br label %vector.body174

vector.body174:                                   ; preds = %vector.body174, %vector.ph172
  %index175 = phi i64 [ 0, %vector.ph172 ], [ %index.next180, %vector.body174 ] ; 2 uses
  %i.cq = shl i64 %index175, 3                    ; 2 uses
  %next.gep176 = getelementptr i8, ptr %i.ce, i64 %i.cq ; 2 uses
  %next.gep177 = getelementptr i8, ptr %i.bi, i64 %i.cq ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.cr = getelementptr i8, ptr %next.gep177, i64 16
  %wide.load178 = load <2 x i64>, ptr %next.gep177, align 4, !alias.scope !439, !noalias !438
  %wide.load179 = load <2 x i64>, ptr %i.cr, align 4, !alias.scope !439, !noalias !438
  %i.cs = getelementptr i8, ptr %next.gep176, i64 16
  store <2 x i64> %wide.load178, ptr %next.gep176, align 4, !alias.scope !438, !noalias !439
  store <2 x i64> %wide.load179, ptr %i.cs, align 4, !alias.scope !438, !noalias !439
  %index.next180 = add nuw i64 %index175, 4       ; 2 uses
  %i.ct = icmp eq i64 %index.next180, %n.vec173
  br i1 %i.ct, label %middle.block181, label %vector.body174, !llvm.loop !432

middle.block181:                                  ; preds = %vector.body174
  %cmp.n182 = icmp eq i64 %i.cl, %n.vec173
  br i1 %cmp.n182, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54.preheader186

.lr.ph.i.i.i.i.i54.preheader186:                  ; preds = %.lr.ph.i.i.i.i.i54.preheader, %middle.block181
  %.012.i.i.i.i.i55.ph = phi ptr [ %i.ce, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.co, %middle.block181 ]
  %.0911.i.i.i.i.i56.ph = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i54.preheader ], [ %i.cp, %middle.block181 ]
  br label %.lr.ph.i.i.i.i.i54

.lr.ph.i.i.i.i.i54:                               ; preds = %.lr.ph.i.i.i.i.i54.preheader186, %.lr.ph.i.i.i.i.i54
  %.012.i.i.i.i.i55 = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i54 ], [ %.012.i.i.i.i.i55.ph, %.lr.ph.i.i.i.i.i54.preheader186 ] ; 2 uses
  %.0911.i.i.i.i.i56 = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i54 ], [ %.0911.i.i.i.i.i56.ph, %.lr.ph.i.i.i.i.i54.preheader186 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !438)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !439)
  %i.cu = load i64, ptr %.0911.i.i.i.i.i56, align 4, !alias.scope !439, !noalias !438
  store i64 %i.cu, ptr %.012.i.i.i.i.i55, align 4, !alias.scope !438, !noalias !439
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i56, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i55, i64 8 ; 2 uses
  %.not.i.i.i.i.i57 = icmp eq ptr %i.cv, %i.bh
  br i1 %.not.i.i.i.i.i57, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58, label %.lr.ph.i.i.i.i.i54, !llvm.loop !433

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58: ; preds = %.lr.ph.i.i.i.i.i54, %middle.block181, %.noexc63
  %.0.lcssa.i.i.i.i.i59 = phi ptr [ %i.ce, %.noexc63 ], [ %i.co, %middle.block181 ], [ %i.cw, %.lr.ph.i.i.i.i.i54 ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i59, i64 8 ; 2 uses
  %.not.i23.i.i60 = icmp eq ptr %i.bi, null
  br i1 %.not.i23.i.i60, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bi, i64 noundef %i.bw) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61: ; preds = %bb.q, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i58
  store ptr %i.ce, ptr %0, align 8, !tbaa !214
  store ptr %i.cx, ptr %i.h, align 8, !tbaa !213
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc
  store ptr %i.cy, ptr %i.i, align 8, !tbaa !217
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64

.loopexit:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i.i50
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64: ; preds = %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61, %bb.n, %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38
  %i.cz = phi ptr [ %i.bh, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %i.cx, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %i.bt, %bb.n ], [ %i.bh, %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38 ] ; 3 uses
  %.promoted122124 = phi ptr [ %.promoted122125, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %i.ce, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %.promoted122125, %bb.n ], [ %.promoted122125, %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38 ] ; 3 uses
  %i.da = phi ptr [ %i.bi, %_ZNK2cv7details10Chessboard5Board9PointIterdeEv.exit.i28 ], [ %i.ce, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_realloc_insertIJRKS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i61 ], [ %i.bi, %bb.n ], [ %i.bi, %_ZNK2cv7details10Chessboard5Board9PointIter5isNaNEv.exit38 ] ; 2 uses
  br i1 %i.bj, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74, label %bb.r, !llvm.loop !434

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE9push_backERKS2_.exit64
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.978.0.ph, i64 48
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !176 ; 2 uses
  %.not.i66 = icmp eq ptr %i.dc, null
  br i1 %.not.i66, label %bb.s, label %_ZN2cv7details10Chessboard5Board9PointIter5rightEb.exit74.outer, !llvm.loop !434

bb.s:                                             ; preds = %bb.r
  %i.dd = getelementptr inbounds nuw i8, ptr %.0, i64 56
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !175 ; 2 uses
  %.not = icmp eq ptr %i.de, null
  br i1 %.not, label %.loopexit115, label %bb.l, !llvm.loop !435

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit116, %.loopexit.split-lp117
  %i.df = phi ptr [ %i.s, %.loopexit.split-lp117 ], [ %i.s, %.loopexit116 ], [ %i.bh, %.loopexit ], [ %i.bh, %.loopexit.split-lp ]
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp119, %.loopexit.split-lp117 ], [ %lpad.loopexit118, %.loopexit116 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dg = load ptr, ptr %0, align 8, !tbaa !214   ; 3 uses
  %.not.i.i.i75 = icmp eq ptr %i.dg, null
  br i1 %.not.i.i.i75, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %.body
  %i.dh = ptrtoint ptr %i.df to i64
  %i.di = ptrtoint ptr %i.dg to i64
  %i.dj = sub i64 %i.dh, %i.di
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dg, i64 noundef %i.dj) #34
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %.body, %bb.t
  resume { ptr, i32 } %.pn

.loopexit115:                                     ; preds = %bb.s, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN2cv7details10Chessboard5Board18estimateSearchAreaENS_3MatEiifi(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::details::Ellipse") align 4 captures(none) initializes((0, 28)) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, i32 noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %"class.cv::Matx.40", align 8       ; 11 uses
  %i.a = add nsw i32 %3, 1
  %i.b = add nsw i32 %2, 1
  %i.c = sitofp i32 %5 to float
  %i.d = fmul float %4, %i.c
  %i.e = fpext float %i.d to double               ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv(ptr dead_on_unwind nonnull writable sret(%"class.cv::Matx.40") align 8 %6, ptr noundef nonnull align 8 dereferenceable(208) %1)
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.k = load <2 x double>, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.m = load double, ptr %i.l, align 8, !tbaa !64, !noalias !442 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.o = load double, ptr %i.n, align 8, !tbaa !64, !noalias !442 ; 2 uses
  %i.p = mul nsw i32 %5, %i.a
  %i.q = mul nsw i32 %5, %i.b
  %7 = sitofp i32 %i.p to double                  ; 3 uses
  %8 = sitofp i32 %i.q to double                  ; 3 uses
  %i.r = fsub double %7, %i.e
  %i.s = fsub double %8, %i.e
  %i.t = load <4 x double>, ptr %6, align 8, !tbaa !64, !noalias !442 ; 4 uses
  %i.u = load double, ptr %i.g, align 8, !tbaa !64, !noalias !442
  %i.v = load <2 x double>, ptr %i.f, align 8
  %i.w = load <2 x double>, ptr %i.h, align 8, !tbaa !64, !noalias !442 ; 2 uses
  %i.x = load <2 x double>, ptr %i.i, align 8
  %i.y = shufflevector <4 x double> %i.t, <4 x double> poison, <2 x i32> <i32 0, i32 3> ; 2 uses
  %9 = insertelement <2 x double> poison, double %7, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.y, <2 x double> %10, <2 x double> zeroinitializer) ; 3 uses
  %i.aa = shufflevector <2 x double> %i.w, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ab = shufflevector <4 x double> %i.t, <4 x double> %i.aa, <2 x i32> <i32 1, i32 4>
  %11 = insertelement <2 x double> poison, double %8, i64 0 ; 2 uses
  %i.ac = shufflevector <2 x double> %11, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ab, <2 x double> %i.ac, <2 x double> %i.z)
  %i.ae = shufflevector <4 x double> %i.t, <4 x double> %i.aa, <2 x i32> <i32 2, i32 5>
  %i.af = fadd <2 x double> %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ah = insertelement <2 x double> %i.y, double %i.u, i64 1
  %i.ai = insertelement <2 x double> poison, double %i.r, i64 0 ; 2 uses
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.aj, <2 x double> zeroinitializer) ; 2 uses
  %i.al = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> %11, double %i.s, i64 1 ; 3 uses
  %i.an = shufflevector <2 x double> %i.ak, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ao = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> %i.an)
  %i.ap = shufflevector <4 x double> %i.t, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.aq = fadd <2 x double> %i.ap, %i.ao
  %i.ar = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.as = shufflevector <2 x double> %i.z, <2 x double> %i.ak, <2 x i32> <i32 3, i32 1>
  %i.at = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ar, <2 x double> %i.am, <2 x double> %i.as)
  %i.au = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.av = fadd <2 x double> %i.au, %i.at
  %i.aw = shufflevector <2 x double> %i.k, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ax = insertelement <2 x double> %i.ai, double %7, i64 1
  %i.ay = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> %i.ax, <2 x double> zeroinitializer) ; 2 uses
  %i.az = insertelement <2 x double> poison, double %i.m, i64 0
  %i.ba = shufflevector <2 x double> %i.az, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> %i.am, <2 x double> %i.ay)
  %i.bc = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = fadd <2 x double> %i.bd, %i.bb          ; 2 uses
  %i.bf = extractelement <2 x double> %i.ay, i64 1
  %i.bg = call double @llvm.fmuladd.f64(double %i.m, double %8, double %i.bf)
  %i.bh = fadd double %i.o, %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fdiv <2 x double> %i.af, %i.bj
  %i.bl = fptrunc <2 x double> %i.bk to <2 x float> ; 3 uses
  %i.bm = fdiv <2 x double> %i.aq, %i.be
  %i.bn = fptrunc <2 x double> %i.bm to <2 x float>
  %i.bo = fdiv <2 x double> %i.av, %i.be
  %i.bp = fptrunc <2 x double> %i.bo to <2 x float>
  %i.bq = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = fsub <2 x float> %i.bn, %i.bq           ; 3 uses
  %i.bs = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fsub <2 x float> %i.bp, %i.bs           ; 3 uses
  %i.bu = fpext <2 x float> %i.br to <2 x double> ; 2 uses
  %i.bv = fpext <2 x float> %i.bt to <2 x double> ; 2 uses
  %i.bw = fmul <2 x double> %i.bv, %i.bv
  %i.bx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> %i.bu, <2 x double> %i.bw)
  %i.by = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.bx)
  %i.bz = fptrunc <2 x double> %i.by to <2 x float> ; 3 uses
  %shift = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bt, %shift
  %i.ca = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.cb = extractelement <2 x float> %i.br, i64 0
  %i.cc = extractelement <2 x float> %i.br, i64 1
  %i.cd = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cc, float %i.ca)
  %i.ce = extractelement <2 x float> %i.bz, i64 0
  %i.cf = fdiv float %i.cd, %i.ce
  %i.cg = extractelement <2 x float> %i.bz, i64 1
  %i.ch = fdiv float %i.cf, %i.cg
  %i.ci = call noundef float @acosf(float noundef %i.ch) #33 ; 2 uses
  store <2 x float> %i.bl, ptr %0, align 4
  store <2 x float> %i.bz, ptr %i.ag, align 4
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.ci, ptr %i.cj, align 4, !tbaa !152
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.cl = fneg float %i.ci                        ; 2 uses
  %i.cm = call noundef float @cosf(float noundef %i.cl) #33
  store float %i.cm, ptr %i.ck, align 4, !tbaa !153
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.co = call noundef float @sinf(float noundef %i.cl) #33
  store float %i.co, ptr %i.cn, align 4, !tbaa !154
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  ret void
}

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #5

declare void @_ZN2cv6circleERKNS_17_InputOutputArrayENS_6Point_IiEEiRKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i32 noundef, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

declare void @_ZN2cv4lineERKNS_17_InputOutputArrayENS_6Point_IiEES4_RKNS_7Scalar_IdEEiii(ptr noundef nonnull align 8 dereferenceable(24), i64, i64, ptr noundef nonnull align 8 dereferenceable(32), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %6 = alloca %"class.std::allocator", align 1    ; 3 uses
  %7 = alloca %"class.cv::Mat", align 8           ; 12 uses
  %8 = alloca %"class.std::vector.34", align 8    ; 14 uses
  %9 = alloca %"class.std::vector.45", align 8    ; 14 uses
  %10 = alloca %"class.std::vector.34", align 8   ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"class.std::allocator", align 1   ; 3 uses
  %13 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %14 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %15 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %16 = alloca %"class.cv::_InputArray", align 8  ; 8 uses
  %17 = alloca %"class.cv::Mat", align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #33
  %i.a = tail call noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %2), !noalias !456
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !62, !noalias !456
  call void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %7, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

bb.c:                                             ; preds = %bb.a
  call void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef -1)
  br label %_ZNK2cv11_InputArray6getMatEi.exit

_ZNK2cv11_InputArray6getMatEi.exit:               ; preds = %bb.b, %bb.c
  %i.e = load i32, ptr %7, align 8, !tbaa !66
  %i.f = and i32 %i.e, 4095                       ; 2 uses
  %i.g = icmp eq i32 %i.f, 6
  br i1 %i.g, label %bb.g, label %bb.e

bb.d:                                             ; preds = %bb.n, %.thread, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.e:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  invoke void @_ZN2cv6detail20check_failed_MatTypeEiiRKNS0_12CheckContextE(i32 noundef %i.f, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_E16__cv_check__1508) #32
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %_ZNK2cv11_InputArray6getMatEi.exit
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 72 ; 2 uses
  %i.j = load i32, ptr %i.i, align 8, !tbaa !129  ; 2 uses
  %i.k = icmp slt i32 %i.j, 3
  br i1 %i.k, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #33
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.78, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.h
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @__func__._ZNK2cv8MatShapeclEv, ptr noundef nonnull @.str.77, i32 noundef 109) #32
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.noexc
  unreachable

bb.j:                                             ; preds = %.noexc
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = load ptr, ptr %5, align 8, !tbaa !70     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  %i.p = load i64, ptr %i.n, align 8, !tbaa !71
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #34
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #33
  br label %.body

bb.k:                                             ; preds = %bb.g
  %or.cond.not = icmp eq i32 %i.j, 2
  br i1 %or.cond.not, label %bb.l, label %.thread

bb.l:                                             ; preds = %bb.k
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 84
  %.sroa.gep = getelementptr inbounds nuw i8, ptr %7, i64 88
  %.sroa.gep.val = load i32, ptr %.sroa.gep, align 8
  %.val = load i32, ptr %i.r, align 4
  %i.s = icmp eq i32 %.sroa.gep.val, 3
  %i.t = icmp eq i32 %.val, 3
  %i.u = select i1 %i.s, i1 %i.t, i1 false
  br i1 %i.u, label %bb.p, label %.thread

bb.m:                                             ; preds = %bb.h
  %i.v = landingpad { ptr, i32 }
          cleanup
  br label %.body

.thread:                                          ; preds = %bb.k, %bb.l
  %i.w = invoke i64 @_ZNK2cv8MatShapeclEv(ptr noundef nonnull align 4 dereferenceable(52) %i.i)
          to label %bb.n unwind label %bb.d

bb.n:                                             ; preds = %.thread
  invoke void @_ZN2cv6detail17check_failed_autoENS_5Size_IiEES2_RKNS0_12CheckContextE(i64 %i.w, i64 12884901891, ptr noundef nonnull align 8 dereferenceable(48) @_ZZNK2cv7details10Chessboard5Board12estimatePoseERKNS_5Size_IfEERKNS_11_InputArrayERKNS_12_OutputArrayESC_E16__cv_check__1509) #32
          to label %bb.o unwind label %bb.d

bb.o:                                             ; preds = %bb.n
  unreachable

bb.p:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !195
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !195
  %i.ab = icmp eq ptr %i.y, %i.aa
  br i1 %i.ab, label %bb.ba, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load <2 x i32>, ptr %i.ac, align 8, !tbaa !47 ; 3 uses
  %i.ae = load <2 x float>, ptr %1, align 4, !tbaa !39
  %i.af = add nsw <2 x i32> %i.ad, splat (i32 1)
  %i.ag = sitofp <2 x i32> %i.af to <2 x float>
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ai = fdiv <2 x float> %i.ae, %i.ah           ; 2 uses
  %i.aj = extractelement <2 x i32> %i.ad, i64 1   ; 3 uses
  %i.ak = sub nsw i32 1, %i.aj
  %i.al = sitofp i32 %i.ak to float
  %i.am = extractelement <2 x float> %i.ai, i64 0 ; 3 uses
  %i.an = fmul float %i.am, %i.al
  %i.ao = fmul float %i.an, 5.000000e-01
  %i.ap = fptosi float %i.ao to i32
  %i.aq = extractelement <2 x i32> %i.ad, i64 0   ; 3 uses
  %i.ar = sub nsw i32 1, %i.aq
  %i.as = sitofp i32 %i.ar to float
  %i.at = fmul float %i.am, %i.as
  %i.au = fmul float %i.at, 5.000000e-01
  %i.av = fptosi float %i.au to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #33
end_hunk_0
