Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK2cv4usac24PnPMinimalSolver6PtsImpl13getSampleSizeEv:bb.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac24PnPMinimalSolver6PtsImpl23getMaxNumberOfSolutionsEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 1
}

declare void @_ZN2cv9AlgorithmC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

declare noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind
declare void @_ZN2cv3MatC1EOS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #9

; Function Attrs: nounwind
declare void @_ZN2cv3MatD2Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208)) unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

declare void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) unnamed_addr #7

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac23PnPNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac23PnPNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #20, !inline_history !101
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac23PnPNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac23PnPNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac23PnPNonMinimalSolverImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = icmp eq ptr %1, @_ZZNSt19_Sp_make_shared_tag5_S_tiEvE5__tag
  br i1 %i.b, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !27   ; 3 uses
  %i.e = icmp eq ptr %i.d, @_ZTSSt19_Sp_make_shared_tag
  br i1 %i.e, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.d, align 1, !tbaa !23
  %.not.i = icmp eq i8 %i.f, 42
  br i1 %.not.i, label %_ZNKSt9type_infoeqERKS_.exit.thread8, label %_ZNKSt9type_infoeqERKS_.exit

_ZNKSt9type_infoeqERKS_.exit:                     ; preds = %bb.c
  %i.g = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef nonnull dereferenceable(24) @_ZTSSt19_Sp_make_shared_tag) #20
  %.fr = freeze i32 %i.g
  %i.h = icmp eq i32 %.fr, 0
  br i1 %i.h, label %_ZNKSt9type_infoeqERKS_.exit.thread, label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread:              ; preds = %bb.b, %_ZNKSt9type_infoeqERKS_.exit
  br label %_ZNKSt9type_infoeqERKS_.exit.thread8

_ZNKSt9type_infoeqERKS_.exit.thread8:             ; preds = %bb.c, %_ZNKSt9type_infoeqERKS_.exit.thread, %_ZNKSt9type_infoeqERKS_.exit, %bb.a
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.a, %_ZNKSt9type_infoeqERKS_.exit.thread ], [ null, %_ZNKSt9type_infoeqERKS_.exit ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac23PnPNonMinimalSolverImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN2cv4usac23PnPNonMinimalSolverImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac23PnPNonMinimalSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN2cv4usac23PnPNonMinimalSolverImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !102
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(216) %0) #20, !inline_history !102
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac16NonMinimalSolver8estimateERKNS_3MatERKSt6vectorIiSaIiEEiRS5_IS2_SaIS2_EERKS5_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
  ret i32 %i.d
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac23PnPNonMinimalSolverImpl8estimateERKSt6vectorIiSaIiEEiRS2_INS_3MatESaIS7_EERKS2_IdSaIdEE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.cv::Mat", align 8           ; 7 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 7 uses
  %7 = alloca %"class.cv::Matx", align 8          ; 11 uses
  %8 = alloca %"class.cv::Vec", align 8           ; 5 uses
  %9 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %10 = alloca %"class.cv::Matx", align 16        ; 86 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %12 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %13 = alloca [1 x %"class.cv::Mat"], align 16   ; 12 uses
  %14 = alloca %"class.cv::Matx.56", align 16     ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = icmp slt i32 %2, 6
  br i1 %i.c, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %4, align 8, !tbaa !107    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !107
  %i.g = icmp eq ptr %i.d, %i.f
  %i.h = load ptr, ptr %1, align 8, !tbaa !43     ; 2 uses
  %wide.trip.count198 = zext nneg i32 %2 to i64   ; 2 uses
  br i1 %i.g, label %.preheader164, label %.preheader166

.preheader164:                                    ; preds = %bb.b, %.preheader164
  %.sroa.197.0 = phi double [ %i.hg, %.preheader164 ], [ 0.000000e+00, %bb.b ]
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %.preheader164 ], [ 0, %bb.b ] ; 2 uses
  %i.i = phi <2 x double> [ %i.bk, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.j = phi <2 x double> [ %i.cl, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.k = phi <2 x double> [ %i.bp, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.l = phi <2 x double> [ %i.cz, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.m = phi <2 x double> [ %i.ce, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.n = phi <2 x double> [ %i.fs, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.o = phi <2 x double> [ %i.ci, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.p = phi <2 x double> [ %i.cq, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.q = phi <2 x double> [ %i.cw, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.r = phi <2 x double> [ %i.df, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.s = phi <2 x double> [ %i.fv, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.t = phi <2 x double> [ %i.dr, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.u = phi <2 x double> [ %i.dl, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.v = phi <2 x double> [ %i.dv, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.w = phi <2 x double> [ %i.dx, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.x = phi <2 x double> [ %i.fx, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.y = phi <2 x double> [ %i.dz, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.z = phi <2 x double> [ %i.ea, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aa = phi <2 x double> [ %i.fz, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ab = phi <2 x double> [ %i.ed, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ac = phi <2 x double> [ %i.eh, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ad = phi <2 x double> [ %i.el, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ae = phi <2 x double> [ %i.gc, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.af = phi <2 x double> [ %i.eo, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ag = phi <2 x double> [ %i.ex, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ah = phi <2 x double> [ %i.gf, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ai = phi <2 x double> [ %i.fc, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aj = phi <2 x double> [ %i.ff, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ak = phi <2 x double> [ %i.gi, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.al = phi <2 x double> [ %i.fj, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.am = phi <2 x double> [ %i.gl, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.an = phi <2 x double> [ %i.fp, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ao = phi <2 x double> [ %i.go, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ap = phi <2 x double> [ %i.gr, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aq = phi <2 x double> [ %i.gv, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ar = phi <6 x double> [ %i.hm, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv195
  %i.at = load i32, ptr %i.as, align 4, !tbaa !24
  %i.au = mul nsw i32 %i.at, 5
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.av ; 3 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = getelementptr i8, ptr %i.aw, i64 16
  %i.az = load float, ptr %i.ay, align 4, !tbaa !45
  %i.ba = fpext float %i.az to double             ; 13 uses
  %i.bb = fneg double %i.ba                       ; 2 uses
  %i.bc = load <2 x float>, ptr %i.ax, align 4, !tbaa !45
  %i.bd = fpext <2 x float> %i.bc to <2 x double> ; 12 uses
  %i.be = extractelement <2 x double> %i.bd, i64 0 ; 2 uses
  %i.bf = fneg double %i.be                       ; 2 uses
  %i.bg = extractelement <2 x double> %i.bd, i64 1 ; 2 uses
  %i.bh = fneg double %i.bg                       ; 4 uses
  %i.bi = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bi, <2 x double> %i.bd, <2 x double> zeroinitializer)
  %i.bk = fadd <2 x double> %i.i, %i.bj           ; 2 uses
  %i.bl = fmul <2 x double> %i.bd, splat (double -0.000000e+00) ; 5 uses
  %i.bm = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> zeroinitializer, <2 x double> %i.bl)
  %i.bp = fadd <2 x double> %i.k, %i.bo           ; 2 uses
  %i.bq = fmul double %i.ba, -0.000000e+00        ; 2 uses
  %i.br = insertelement <2 x double> %i.bd, double %i.bf, i64 1
  %i.bs = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ba, i64 0
  %i.bt = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bq, i64 1 ; 2 uses
  %i.bu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.br, <2 x double> %i.bs, <2 x double> %i.bt) ; 2 uses
  %i.bv = load <2 x float>, ptr %i.aw, align 4, !tbaa !45
  %i.bw = fpext <2 x float> %i.bv to <2 x double> ; 9 uses
  %15 = extractelement <2 x double> %i.bw, i64 0
  %i.bx = extractelement <2 x double> %i.bw, i64 1 ; 4 uses
  %i.by = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bz = fmul <2 x double> %i.by, %i.bd          ; 10 uses
  %i.ca = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cb = fmul <2 x double> %i.ca, %i.bd          ; 9 uses
  %i.cc = fmul <2 x double> %i.cb, zeroinitializer ; 5 uses
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %i.bz, <2 x double> %i.cc)
  %i.ce = fadd <2 x double> %i.m, %i.cd           ; 2 uses
  %i.cf = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.cg = insertelement <2 x double> %i.cf, double %i.ba, i64 1 ; 2 uses
  %i.ch = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cf, <2 x double> %i.cg, <2 x double> zeroinitializer)
  %i.ci = fadd <2 x double> %i.o, %i.ch           ; 2 uses
  %i.cj = fadd <2 x double> %i.bd, zeroinitializer ; 2 uses
  %i.ck = shufflevector <2 x double> %i.bu, <2 x double> %i.cj, <2 x i32> <i32 0, i32 2>
  %i.cl = fadd <2 x double> %i.j, %i.ck           ; 2 uses
  %i.cm = extractelement <2 x double> %i.bl, i64 0
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.bh, double 0.000000e+00, double %i.cm)
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cp = insertelement <2 x double> %i.co, double %i.cn, i64 1
  %i.cq = fadd <2 x double> %i.p, %i.cp           ; 2 uses
  %i.cr = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cs = shufflevector <2 x double> %i.cr, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ct = shufflevector <2 x double> %i.bl, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x double> %i.ct, double %i.bq, i64 1 ; 2 uses
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> zeroinitializer, <2 x double> %i.cu)
  %i.cw = fadd <2 x double> %i.q, %i.cv           ; 2 uses
  %i.cx = fmul <2 x double> %i.bd, splat (double -0.000000e+00) ; 2 uses
  %i.cy = shufflevector <2 x double> %i.bu, <2 x double> %i.cx, <2 x i32> <i32 1, i32 2>
  %i.cz = fadd <2 x double> %i.l, %i.cy           ; 2 uses
  %i.da = extractelement <2 x double> %i.bz, i64 0 ; 2 uses
  %i.db = extractelement <2 x double> %i.cc, i64 0
  %i.dc = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.da, double %i.db)
  %i.dd = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.de = insertelement <2 x double> %i.dd, double %i.dc, i64 1
  %i.df = fadd <2 x double> %i.r, %i.de           ; 2 uses
  %i.dg = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.dh = fadd double %i.ba, 0.000000e+00
  %i.di = insertelement <2 x double> poison, double %i.bb, i64 0
  %i.dj = shufflevector <2 x double> %i.di, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.dk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> zeroinitializer, <2 x double> %i.bl)
  %i.dl = fadd <2 x double> %i.u, %i.dk           ; 2 uses
  %i.dm = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.dn = insertelement <2 x double> %i.dm, double %i.bb, i64 1 ; 2 uses
  %i.do = insertelement <2 x double> %i.dn, double 0.000000e+00, i64 1
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dn, <2 x double> %i.do, <2 x double> %i.bt) ; 2 uses
  %i.dq = insertelement <2 x double> %i.dp, double %i.dh, i64 1
  %i.dr = fadd <2 x double> %i.t, %i.dq           ; 2 uses
  %i.ds = fmul double %i.ba, -0.000000e+00
  %i.dt = shufflevector <2 x double> %i.dp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.du = insertelement <2 x double> %i.dt, double %i.ds, i64 1
  %i.dv = fadd <2 x double> %i.v, %i.du           ; 2 uses
  %i.dw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %i.bz, <2 x double> %i.cc)
  %i.dx = fadd <2 x double> %i.w, %i.dw           ; 2 uses
  %i.dy = shufflevector <2 x double> %i.bl, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.dz = fadd <2 x double> %i.y, %i.dy           ; 2 uses
  %i.ea = fadd <2 x double> %i.z, %i.cu           ; 2 uses
  %i.eb = fmul <2 x double> %i.bi, %i.bd
  %i.ec = fadd <2 x double> %i.eb, <double -0.000000e+00, double 0.000000e+00>
  %i.ed = fadd <2 x double> %i.ab, %i.ec          ; 2 uses
  %i.ee = fmul double %i.be, %i.ba
  %i.ef = insertelement <2 x double> %i.bi, double %i.ee, i64 0
  %i.eg = fadd <2 x double> %i.ef, zeroinitializer
  %i.eh = fadd <2 x double> %i.ac, %i.eg          ; 2 uses
  %i.ei = extractelement <2 x double> %i.cb, i64 0
  %i.ej = fmul <2 x double> %i.cb, %i.bn
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.ej)
  %i.el = fadd <2 x double> %i.ad, %i.ek          ; 2 uses
  %i.em = fmul <2 x double> %i.cf, %i.cg
  %i.en = fadd <2 x double> %i.em, <double -0.000000e+00, double 0.000000e+00>
  %i.eo = fadd <2 x double> %i.af, %i.en          ; 2 uses
  %i.ep = fadd double %i.bg, 0.000000e+00
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.es = shufflevector <2 x double> %i.cb, <2 x double> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.et = fmul <2 x double> %i.es, %i.cs
  %i.eu = shufflevector <2 x double> %i.bz, <2 x double> %i.bw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> zeroinitializer, <2 x double> %i.et) ; 2 uses
  %i.ew = shufflevector <2 x double> %i.eq, <2 x double> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.ex = fadd <2 x double> %i.ag, %i.ew          ; 2 uses
  %i.ey = fadd double %i.ba, 0.000000e+00
  %i.ez = fmul double %i.ba, %i.ba
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ey, i64 1
  %i.fc = fadd <2 x double> %i.ai, %i.fb          ; 2 uses
  %i.fd = fmul <2 x double> %i.cb, %i.dj
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bz, <2 x double> zeroinitializer, <2 x double> %i.fd)
  %i.ff = fadd <2 x double> %i.aj, %i.fe          ; 2 uses
  %i.fg = fneg double %i.ei
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.da, double 0.000000e+00, double %i.fg)
  %i.fi = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.fh, i64 1
  %i.fj = fadd <2 x double> %i.al, %i.fi          ; 2 uses
  %i.fk = fneg double %i.bx
  %i.fl = shufflevector <2 x double> %i.cb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fm = fmul <2 x double> %i.fl, %i.cb
  %i.fn = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.bz, <2 x double> %i.fm)
  %i.fp = fadd <2 x double> %i.an, %i.fo          ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.cb, %i.bw
  %16 = fmul double %i.bx, %i.ba                  ; 3 uses
  %17 = fmul double %15, %i.ba                    ; 3 uses
  %18 = insertelement <2 x double> %i.bw, double %16, i64 0 ; 5 uses
  %i.fq = fmul <2 x double> %18, zeroinitializer  ; 5 uses
  %19 = insertelement <2 x double> %i.by, double %17, i64 0 ; 6 uses
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bn, <2 x double> %19, <2 x double> %i.fq)
  %i.fs = fadd <2 x double> %i.n, %i.fr           ; 2 uses
  %20 = insertelement <2 x double> %i.dg, double %17, i64 1 ; 5 uses
  %i.ft = shufflevector <2 x double> %i.cc, <2 x double> %i.fq, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> %20, <2 x double> %i.ft)
  %i.fv = fadd <2 x double> %i.s, %i.fu           ; 2 uses
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dj, <2 x double> %19, <2 x double> %i.fq)
  %i.fx = fadd <2 x double> %i.x, %i.fw           ; 2 uses
  %i.fy = fsub <2 x double> %i.ft, %20
  %i.fz = fadd <2 x double> %i.aa, %i.fy          ; 2 uses
  %i.ga = fmul <2 x double> %18, %i.bn
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> zeroinitializer, <2 x double> %i.ga)
  %i.gc = fadd <2 x double> %i.ae, %i.gb          ; 2 uses
  %21 = insertelement <2 x double> %i.er, double %16, i64 1 ; 3 uses
  %i.gd = fmul <2 x double> %21, %i.cs
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> zeroinitializer, <2 x double> %i.gd)
  %i.gf = fadd <2 x double> %i.ah, %i.ge          ; 2 uses
  %i.gg = fmul <2 x double> %18, %i.dj
  %i.gh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %19, <2 x double> zeroinitializer, <2 x double> %i.gg)
  %i.gi = fadd <2 x double> %i.ak, %i.gh          ; 2 uses
  %i.gj = fneg <2 x double> %21
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %20, <2 x double> zeroinitializer, <2 x double> %i.gj)
  %i.gl = fadd <2 x double> %i.am, %i.gk          ; 2 uses
  %i.gm = fmul <2 x double> %i.fl, %18
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %19, <2 x double> %i.gm)
  %i.go = fadd <2 x double> %i.ao, %i.gn          ; 2 uses
  %i.gp = fmul <2 x double> %i.er, %21
  %i.gq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %20, <2 x double> %i.gp)
  %i.gr = fadd <2 x double> %i.ap, %i.gq          ; 2 uses
  %22 = insertelement <2 x double> poison, double %16, i64 0
  %23 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = fmul <2 x double> %23, %18
  %24 = insertelement <2 x double> poison, double %17, i64 0
  %i.gt = shufflevector <2 x double> %24, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gt, <2 x double> %19, <2 x double> %i.gs)
  %i.gv = fadd <2 x double> %i.aq, %i.gu          ; 2 uses
  %i.gw = fmul double %i.bx, %i.bx
  %i.gx = insertelement <2 x double> %i.bz, double 0.000000e+00, i64 0
  %i.gy = insertelement <2 x double> %foldExtExtBinop, double %i.fk, i64 0
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> %i.gx, <2 x double> %i.gy)
  %i.ha = insertelement <2 x double> %i.bw, double %i.bh, i64 1
  %i.hb = insertelement <2 x double> %i.fq, double %i.gw, i64 0
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ha, <2 x double> %i.by, <2 x double> %i.hb)
  %i.hd = shufflevector <2 x double> %i.cc, <2 x double> %i.fq, <2 x i32> <i32 0, i32 3>
  %i.he = fsub <2 x double> %i.hd, %i.eu          ; 2 uses
  %i.hf = extractelement <2 x double> %i.he, i64 0
  %i.hg = fadd double %.sroa.197.0, %i.hf         ; 2 uses
  %i.hh = shufflevector <2 x double> %i.he, <2 x double> %i.ev, <6 x i32> <i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.hi = shufflevector <2 x double> %i.gz, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hj = shufflevector <6 x double> %i.hh, <6 x double> %i.hi, <6 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 6, i32 7>
  %i.hk = shufflevector <2 x double> %i.hc, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.hl = shufflevector <6 x double> %i.hk, <6 x double> %i.hj, <6 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11>
  %i.hm = fadd <6 x double> %i.ar, %i.hl          ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.loopexit.loopexit, label %.preheader164, !llvm.loop !103

.preheader166:                                    ; preds = %bb.b, %.preheader166
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader166 ], [ 0, %bb.b ] ; 3 uses
  %i.hn = phi <2 x double> [ %i.jv, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ho = phi <2 x double> [ %i.jz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hp = phi <2 x double> [ %i.ke, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hq = phi <2 x double> [ %i.kh, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hr = phi <2 x double> [ %i.kq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hs = phi <2 x double> [ %i.kv, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ht = phi <2 x double> [ %i.kz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hu = phi <2 x double> [ %i.nh, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hv = phi <2 x double> [ %i.nk, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hw = phi <2 x double> [ %i.nm, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hx = phi <2 x double> [ %i.no, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hy = phi <2 x double> [ %i.lk, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hz = phi <2 x double> [ %i.lo, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ia = phi <2 x double> [ %i.lq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ib = phi <2 x double> [ %i.ls, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ic = phi <2 x double> [ %i.lu, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.id = phi <2 x double> [ %i.ns, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ie = phi <2 x double> [ %i.nv, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.if = phi <2 x double> [ %i.nx, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ig = phi <2 x double> [ %i.nz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ih = phi <2 x double> [ %i.lx, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ii = phi <2 x double> [ %i.ma, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ij = phi <2 x double> [ %i.md, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ik = phi <2 x double> [ %i.mg, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.il = phi <2 x double> [ %i.mj, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.im = phi <2 x double> [ %i.of, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.in = phi <2 x double> [ %i.oi, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.io = phi <2 x double> [ %i.mt, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ip = phi <2 x double> [ %i.mw, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iq = phi <2 x double> [ %i.mz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ir = phi <2 x double> [ %i.ok, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.is = phi <2 x double> [ %i.on, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.it = phi <2 x double> [ %i.oq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iu = phi <2 x double> [ %i.ot, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iv = phi <2 x double> [ %i.oy, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iw = phi <2 x double> [ %i.pd, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ix = phi <6 x double> [ %i.pr, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !24
  %i.ja = mul nsw i32 %i.iz, 5
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !33 ; 10 uses
  %i.jd = sext i32 %i.ja to i64
  %i.je = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.jd ; 3 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  %i.jg = getelementptr i8, ptr %i.je, i64 16
  %i.jh = load float, ptr %i.jg, align 4, !tbaa !45
  %i.ji = fpext float %i.jh to double
  %i.jj = fmul double %i.jc, %i.ji                ; 6 uses
  %i.jk = fneg double %i.jj
  %i.jl = load <2 x float>, ptr %i.jf, align 4, !tbaa !45
  %i.jm = fpext <2 x float> %i.jl to <2 x double>
  %i.jn = insertelement <2 x double> poison, double %i.jc, i64 0 ; 3 uses
  %i.jo = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jp = fmul <2 x double> %i.jo, %i.jm          ; 10 uses
  %i.jq = extractelement <2 x double> %i.jp, i64 0
  %i.jr = fneg double %i.jq
  %i.js = extractelement <2 x double> %i.jp, i64 1
  %i.jt = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jv = fadd <2 x double> %i.hn, %i.ju          ; 2 uses
  %i.jw = insertelement <2 x double> poison, double %i.jj, i64 0 ; 2 uses
  %i.jx = insertelement <2 x double> %i.jw, double %i.jc, i64 1 ; 5 uses
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jx, <2 x double> zeroinitializer)
  %i.jz = fadd <2 x double> %i.ho, %i.jy          ; 2 uses
  %i.ka = fmul <2 x double> %i.jp, splat (double -0.000000e+00) ; 4 uses
  %i.kb = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.ka)
  %i.ke = fadd <2 x double> %i.hp, %i.kd          ; 2 uses
  %i.kf = fmul <2 x double> %i.jx, splat (double -0.000000e+00) ; 4 uses
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.kf)
  %i.kh = fadd <2 x double> %i.hq, %i.kg          ; 2 uses
  %i.ki = load <2 x float>, ptr %i.je, align 4, !tbaa !45
  %i.kj = fpext <2 x float> %i.ki to <2 x double> ; 2 uses
  %i.kk = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kl = fmul <2 x double> %i.jp, %i.kk          ; 10 uses
  %i.km = shufflevector <2 x double> %i.kj, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.kn = fmul <2 x double> %i.jp, %i.km          ; 8 uses
  %i.ko = fmul <2 x double> %i.kn, zeroinitializer ; 4 uses
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kl, <2 x double> %i.ko)
  %i.kq = fadd <2 x double> %i.hr, %i.kp          ; 2 uses
  %i.kr = fmul <2 x double> %i.jx, %i.kk          ; 10 uses
  %i.ks = fmul <2 x double> %i.jx, %i.km          ; 9 uses
  %i.kt = fmul <2 x double> %i.ks, zeroinitializer ; 4 uses
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.kr, <2 x double> %i.kt)
  %i.kv = fadd <2 x double> %i.hs, %i.ku          ; 2 uses
  %i.kw = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.kx = insertelement <2 x double> %i.kw, double %i.jj, i64 1 ; 2 uses
  %i.ky = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> %i.kx, <2 x double> zeroinitializer)
  %i.kz = fadd <2 x double> %i.ht, %i.ky          ; 2 uses
  %i.la = shufflevector <2 x double> %i.jp, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.lb = shufflevector <2 x double> %i.ka, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.lc = shufflevector <2 x double> %i.ka, <2 x double> %i.kf, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ld = shufflevector <2 x double> %i.kl, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.le = shufflevector <2 x double> %i.kf, <2 x double> %i.ko, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lf = shufflevector <2 x double> %i.kl, <2 x double> %i.kr, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.lg = shufflevector <2 x double> %i.ko, <2 x double> %i.kt, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.lh = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.li = insertelement <2 x double> %i.lh, double %i.jc, i64 1
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.li, <2 x double> zeroinitializer)
  %i.lk = fadd <2 x double> %i.hy, %i.lj          ; 2 uses
  %i.ll = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.lm = shufflevector <2 x double> %i.ll, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> zeroinitializer, <2 x double> %i.ka)
  %i.lo = fadd <2 x double> %i.hz, %i.ln          ; 2 uses
  %i.lp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> zeroinitializer, <2 x double> %i.kf)
  %i.lq = fadd <2 x double> %i.ia, %i.lp          ; 2 uses
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.kl, <2 x double> %i.ko)
  %i.ls = fadd <2 x double> %i.ib, %i.lr          ; 2 uses
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> %i.kr, <2 x double> %i.kt)
  %i.lu = fadd <2 x double> %i.ic, %i.lt          ; 2 uses
  %i.lv = fmul <2 x double> %i.jt, %i.jp
  %i.lw = fadd <2 x double> %i.lv, <double -0.000000e+00, double 0.000000e+00>
  %i.lx = fadd <2 x double> %i.ih, %i.lw          ; 2 uses
  %i.ly = fmul <2 x double> %i.jt, %i.jx
  %i.lz = fadd <2 x double> %i.ly, zeroinitializer
  %i.ma = fadd <2 x double> %i.ii, %i.lz          ; 2 uses
  %i.mb = fmul <2 x double> %i.kn, %i.kc
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> zeroinitializer, <2 x double> %i.mb)
  %i.md = fadd <2 x double> %i.ij, %i.mc          ; 2 uses
  %i.me = fmul <2 x double> %i.ks, %i.kc
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> zeroinitializer, <2 x double> %i.me)
  %i.mg = fadd <2 x double> %i.ik, %i.mf          ; 2 uses
  %i.mh = fmul <2 x double> %i.kw, %i.kx
  %i.mi = fadd <2 x double> %i.mh, <double -0.000000e+00, double 0.000000e+00>
  %i.mj = fadd <2 x double> %i.il, %i.mi          ; 2 uses
  %i.mk = fmul double %i.js, %i.jc
  %i.ml = fadd double %i.mk, 0.000000e+00
  %i.mm = insertelement <2 x double> poison, double %i.ml, i64 0
  %i.mn = shufflevector <2 x double> %i.kn, <2 x double> %i.ks, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mo = fmul double %i.jj, %i.jj
  %i.mp = fmul double %i.jj, %i.jc
  %i.mq = fadd double %i.mp, 0.000000e+00
  %i.mr = insertelement <2 x double> poison, double %i.mo, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mq, i64 1
  %i.mt = fadd <2 x double> %i.io, %i.ms          ; 2 uses
  %i.mu = fmul <2 x double> %i.kn, %i.lm
  %i.mv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> zeroinitializer, <2 x double> %i.mu)
  %i.mw = fadd <2 x double> %i.ip, %i.mv          ; 2 uses
  %i.mx = fmul <2 x double> %i.ks, %i.lm
  %i.my = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> zeroinitializer, <2 x double> %i.mx)
  %i.mz = fadd <2 x double> %i.iq, %i.my          ; 2 uses
  %i.na = fmul double %i.jc, %i.jc
  %i.nb = insertelement <2 x double> %i.kw, double %i.jc, i64 1
  %i.nc = fneg <2 x double> %i.nb                 ; 7 uses
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ne = shufflevector <2 x double> %i.nc, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nf = shufflevector <2 x double> %i.jn, <2 x double> %i.nc, <2 x i32> <i32 0, i32 2>
  %i.ng = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.la, <2 x double> %i.nf, <2 x double> %i.lb)
  %i.nh = fadd <2 x double> %i.hu, %i.ng          ; 2 uses
  %i.ni = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.nj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> zeroinitializer, <2 x double> %i.lc)
  %i.nk = fadd <2 x double> %i.hv, %i.nj          ; 2 uses
  %i.nl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.ld, <2 x double> %i.le)
  %i.nm = fadd <2 x double> %i.hw, %i.nl          ; 2 uses
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ni, <2 x double> %i.lf, <2 x double> %i.lg)
  %i.no = fadd <2 x double> %i.hx, %i.nn          ; 2 uses
  %i.np = insertelement <2 x double> %i.nc, double %i.jc, i64 0
  %i.nq = insertelement <2 x double> %i.jn, double 0.000000e+00, i64 1
  %i.nr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.np, <2 x double> %i.nq, <2 x double> %i.lb)
  %i.ns = fadd <2 x double> %i.id, %i.nr          ; 2 uses
  %i.nt = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.nu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> zeroinitializer, <2 x double> %i.lc)
  %i.nv = fadd <2 x double> %i.ie, %i.nu          ; 2 uses
  %i.nw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.ld, <2 x double> %i.le)
  %i.nx = fadd <2 x double> %i.if, %i.nw          ; 2 uses
  %i.ny = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nt, <2 x double> %i.lf, <2 x double> %i.lg)
  %i.nz = fadd <2 x double> %i.ig, %i.ny          ; 2 uses
  %i.oa = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ob = fmul <2 x double> %i.oa, %i.nc
  %i.oc = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.od = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.oc, <2 x double> zeroinitializer, <2 x double> %i.ob) ; 2 uses
  %i.oe = shufflevector <2 x double> %i.mm, <2 x double> %i.od, <2 x i32> <i32 0, i32 2>
  %i.of = fadd <2 x double> %i.im, %i.oe          ; 2 uses
  %i.og = fmul <2 x double> %i.mn, %i.ni
end_hunk_0
