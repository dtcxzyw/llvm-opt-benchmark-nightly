Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK2cv4usac24PnPMinimalSolver6PtsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE:.noexc

bb.r:                                             ; preds = %bb.q
  %i.us = load ptr, ptr %i.ai, align 8, !tbaa !31
  %i.ut = ptrtoint ptr %i.us to i64
  %i.uu = ptrtoint ptr %i.ur to i64
  %i.uv = sub i64 %i.ut, %i.uu
  call void @_ZdlPvm(ptr noundef nonnull %i.ur, i64 noundef %i.uv) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152

_ZNSt6vectorIdSaIdEED2Ev.exit152:                 ; preds = %bb.r, %bb.q, %bb.a
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.a ], [ %.pn.pn.pn.pn, %bb.q ], [ %.pn.pn.pn.pn, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %i.uw = load ptr, ptr %3, align 8, !tbaa !30    ; 3 uses
  %.not.i.i.i153 = icmp eq ptr %i.uw, null
  br i1 %.not.i.i.i153, label %_ZNSt6vectorIdSaIdEED2Ev.exit154, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit152
  %i.ux = load ptr, ptr %i.c, align 8, !tbaa !31
  %i.uy = ptrtoint ptr %i.ux to i64
  %i.uz = ptrtoint ptr %i.uw to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %i.uw, i64 noundef %i.va) #21
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit154

_ZNSt6vectorIdSaIdEED2Ev.exit154:                 ; preds = %bb.s, %_ZNSt6vectorIdSaIdEED2Ev.exit152
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac24PnPMinimalSolver6PtsImpl13getSampleSizeEv(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 6
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
  %.sroa.197.0 = phi double [ %i.gd, %.preheader164 ], [ 0.000000e+00, %bb.b ]
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %.preheader164 ], [ 0, %bb.b ] ; 2 uses
  %i.i = phi <2 x double> [ %i.bi, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.j = phi <2 x double> [ %i.cf, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.k = phi <2 x double> [ %i.bn, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.l = phi <2 x double> [ %24, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.m = phi <2 x double> [ %i.bz, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.n = phi <2 x double> [ %i.ek, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.o = phi <2 x double> [ %i.cc, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.p = phi <2 x double> [ %i.ck, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.q = phi <2 x double> [ %i.cq, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.r = phi <2 x double> [ %i.cv, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.s = phi <2 x double> [ %i.eo, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.t = phi <2 x double> [ %33, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.u = phi <2 x double> [ %i.cx, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.v = phi <2 x double> [ %i.dc, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.w = phi <2 x double> [ %i.de, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.x = phi <2 x double> [ %i.eq, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.y = phi <2 x double> [ %i.dg, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.z = phi <2 x double> [ %i.dh, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aa = phi <2 x double> [ %i.es, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ab = phi <2 x double> [ %i.dk, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ac = phi <2 x double> [ %i.do, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ad = phi <2 x double> [ %i.ds, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ae = phi <2 x double> [ %i.ev, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.af = phi <2 x double> [ %37, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ag = phi <2 x double> [ %46, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ah = phi <2 x double> [ %i.ez, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ai = phi <2 x double> [ %i.dx, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aj = phi <2 x double> [ %i.ea, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ak = phi <2 x double> [ %i.fc, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.al = phi <2 x double> [ %i.ec, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.am = phi <2 x double> [ %i.ff, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.an = phi <2 x double> [ %53, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ao = phi <2 x double> [ %i.fi, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ap = phi <2 x double> [ %i.fl, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.aq = phi <2 x double> [ %i.fs, %.preheader164 ], [ zeroinitializer, %bb.b ]
  %i.ar = phi <6 x double> [ %i.gi, %.preheader164 ], [ zeroinitializer, %bb.b ]
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
  %15 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %16 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %15, <2 x double> %i.bd, <2 x double> zeroinitializer)
  %i.bi = fadd <2 x double> %i.i, %16             ; 2 uses
  %i.bj = fmul <2 x double> %i.bd, splat (double -0.000000e+00) ; 5 uses
  %i.bk = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> zeroinitializer, <2 x double> %i.bj)
  %i.bn = fadd <2 x double> %i.k, %i.bm           ; 2 uses
  %i.bo = fmul double %i.ba, -0.000000e+00        ; 2 uses
  %17 = insertelement <2 x double> %i.bd, double %i.bf, i64 1
  %18 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ba, i64 0
  %19 = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.bo, i64 1 ; 2 uses
  %20 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %17, <2 x double> %18, <2 x double> %19) ; 2 uses
  %i.bp = load <2 x float>, ptr %i.aw, align 4, !tbaa !45
  %i.bq = fpext <2 x float> %i.bp to <2 x double> ; 9 uses
  %i.br = extractelement <2 x double> %i.bq, i64 0
  %i.bs = extractelement <2 x double> %i.bq, i64 1 ; 4 uses
  %i.bt = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.bu = fmul <2 x double> %i.bt, %i.bd          ; 10 uses
  %i.bv = shufflevector <2 x double> %i.bq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bw = fmul <2 x double> %i.bv, %i.bd          ; 9 uses
  %i.bx = fmul <2 x double> %i.bw, zeroinitializer ; 5 uses
  %i.by = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.bu, <2 x double> %i.bx)
  %i.bz = fadd <2 x double> %i.m, %i.by           ; 2 uses
  %21 = shufflevector <2 x double> %i.bd, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %i.ca = insertelement <2 x double> %21, double %i.ba, i64 1 ; 2 uses
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %21, <2 x double> %i.ca, <2 x double> zeroinitializer)
  %i.cc = fadd <2 x double> %i.o, %i.cb           ; 2 uses
  %i.cd = fadd <2 x double> %i.bd, zeroinitializer ; 2 uses
  %i.ce = shufflevector <2 x double> %20, <2 x double> %i.cd, <2 x i32> <i32 0, i32 2>
  %i.cf = fadd <2 x double> %i.j, %i.ce           ; 2 uses
  %i.cg = extractelement <2 x double> %i.bj, i64 0
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.bh, double 0.000000e+00, double %i.cg)
  %i.ci = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cj = insertelement <2 x double> %i.ci, double %i.ch, i64 1
  %i.ck = fadd <2 x double> %i.p, %i.cj           ; 2 uses
  %i.cl = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.cm = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.cn = shufflevector <2 x double> %i.bj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x double> %i.cn, double %i.bo, i64 1 ; 2 uses
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> zeroinitializer, <2 x double> %i.co)
  %i.cq = fadd <2 x double> %i.q, %i.cp           ; 2 uses
  %22 = fmul <2 x double> %i.bd, splat (double -0.000000e+00) ; 2 uses
  %23 = shufflevector <2 x double> %20, <2 x double> %22, <2 x i32> <i32 1, i32 2>
  %24 = fadd <2 x double> %i.l, %23               ; 2 uses
  %i.cr = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.cs = extractelement <2 x double> %i.bx, i64 0
  %i.ct = tail call double @llvm.fmuladd.f64(double %i.bh, double %i.cr, double %i.cs)
  %25 = shufflevector <2 x double> %22, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.cu = insertelement <2 x double> %25, double %i.ct, i64 1
  %i.cv = fadd <2 x double> %i.r, %i.cu           ; 2 uses
  %i.cw = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %26 = fadd double %i.ba, 0.000000e+00
  %27 = insertelement <2 x double> poison, double %i.bb, i64 0
  %28 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer ; 5 uses
  %29 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> zeroinitializer, <2 x double> %i.bj)
  %i.cx = fadd <2 x double> %i.u, %29             ; 2 uses
  %30 = insertelement <2 x double> poison, double %i.ba, i64 0
  %i.cy = insertelement <2 x double> %30, double %i.bb, i64 1 ; 2 uses
  %31 = insertelement <2 x double> %i.cy, double 0.000000e+00, i64 1
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cy, <2 x double> %31, <2 x double> %19) ; 2 uses
  %32 = insertelement <2 x double> %i.cz, double %26, i64 1
  %33 = fadd <2 x double> %i.t, %32               ; 2 uses
  %i.da = fmul double %i.ba, -0.000000e+00
  %34 = shufflevector <2 x double> %i.cz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.db = insertelement <2 x double> %34, double %i.da, i64 1
  %i.dc = fadd <2 x double> %i.v, %i.db           ; 2 uses
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %i.bu, <2 x double> %i.bx)
  %i.de = fadd <2 x double> %i.w, %i.dd           ; 2 uses
  %i.df = shufflevector <2 x double> %i.bj, <2 x double> <double 1.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.dg = fadd <2 x double> %i.y, %i.df           ; 2 uses
  %i.dh = fadd <2 x double> %i.z, %i.co           ; 2 uses
  %i.di = fmul <2 x double> %15, %i.bd
  %i.dj = fadd <2 x double> %i.di, <double -0.000000e+00, double 0.000000e+00>
  %i.dk = fadd <2 x double> %i.ab, %i.dj          ; 2 uses
  %i.dl = fmul double %i.be, %i.ba
  %i.dm = insertelement <2 x double> %15, double %i.dl, i64 0
  %i.dn = fadd <2 x double> %i.dm, zeroinitializer
  %i.do = fadd <2 x double> %i.ac, %i.dn          ; 2 uses
  %i.dp = extractelement <2 x double> %i.bw, i64 0
  %i.dq = fmul <2 x double> %i.bw, %i.bl
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> zeroinitializer, <2 x double> %i.dq)
  %i.ds = fadd <2 x double> %i.ad, %i.dr          ; 2 uses
  %35 = fmul <2 x double> %21, %i.ca
  %36 = fadd <2 x double> %35, <double -0.000000e+00, double 0.000000e+00>
  %37 = fadd <2 x double> %i.af, %36              ; 2 uses
  %38 = fadd double %i.bg, 0.000000e+00
  %39 = insertelement <2 x double> poison, double %38, i64 0
  %40 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %41 = shufflevector <2 x double> %i.bw, <2 x double> %i.bq, <2 x i32> <i32 0, i32 3>
  %42 = fmul <2 x double> %41, %i.cm
  %43 = shufflevector <2 x double> %i.bu, <2 x double> %i.bq, <2 x i32> <i32 0, i32 2> ; 2 uses
  %44 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> zeroinitializer, <2 x double> %42) ; 2 uses
  %45 = shufflevector <2 x double> %39, <2 x double> %44, <2 x i32> <i32 0, i32 2>
  %46 = fadd <2 x double> %i.ag, %45              ; 2 uses
  %i.dt = fmul double %i.ba, %i.ba
  %i.du = fadd double %i.ba, 0.000000e+00
  %i.dv = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.dw = insertelement <2 x double> %i.dv, double %i.du, i64 1
  %i.dx = fadd <2 x double> %i.ai, %i.dw          ; 2 uses
  %i.dy = fmul <2 x double> %i.bw, %28
  %i.dz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bu, <2 x double> zeroinitializer, <2 x double> %i.dy)
  %i.ea = fadd <2 x double> %i.aj, %i.dz          ; 2 uses
  %i.eb = fneg double %i.dp
  %47 = tail call double @llvm.fmuladd.f64(double %i.cr, double 0.000000e+00, double %i.eb)
  %48 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %47, i64 1
  %i.ec = fadd <2 x double> %i.al, %48            ; 2 uses
  %49 = fneg double %i.bs
  %50 = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %51 = fmul <2 x double> %50, %i.bw
  %52 = shufflevector <2 x double> %i.bu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ed = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %i.bu, <2 x double> %51)
  %53 = fadd <2 x double> %i.an, %i.ed            ; 2 uses
  %foldExtExtBinop = fmul <2 x double> %i.bw, %i.bq
  %i.ee = fmul double %i.br, %i.ba                ; 3 uses
  %i.ef = fmul double %i.bs, %i.ba                ; 3 uses
  %i.eg = insertelement <2 x double> %i.bq, double %i.ef, i64 0 ; 5 uses
  %i.eh = fmul <2 x double> %i.eg, zeroinitializer ; 5 uses
  %i.ei = insertelement <2 x double> %i.bt, double %i.ee, i64 0 ; 6 uses
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bl, <2 x double> %i.ei, <2 x double> %i.eh)
  %i.ek = fadd <2 x double> %i.n, %i.ej           ; 2 uses
  %i.el = insertelement <2 x double> %i.cw, double %i.ee, i64 1 ; 5 uses
  %i.em = shufflevector <2 x double> %i.bx, <2 x double> %i.eh, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cm, <2 x double> %i.el, <2 x double> %i.em)
  %i.eo = fadd <2 x double> %i.s, %i.en           ; 2 uses
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %28, <2 x double> %i.ei, <2 x double> %i.eh)
  %i.eq = fadd <2 x double> %i.x, %i.ep           ; 2 uses
  %i.er = fsub <2 x double> %i.em, %i.el
  %i.es = fadd <2 x double> %i.aa, %i.er          ; 2 uses
  %i.et = fmul <2 x double> %i.eg, %i.bl
  %i.eu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.et)
  %i.ev = fadd <2 x double> %i.ae, %i.eu          ; 2 uses
  %i.ew = insertelement <2 x double> %40, double %i.ef, i64 1 ; 3 uses
  %i.ex = fmul <2 x double> %i.ew, %i.cm
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> zeroinitializer, <2 x double> %i.ex)
  %i.ez = fadd <2 x double> %i.ah, %i.ey          ; 2 uses
  %i.fa = fmul <2 x double> %i.eg, %28
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> zeroinitializer, <2 x double> %i.fa)
  %i.fc = fadd <2 x double> %i.ak, %i.fb          ; 2 uses
  %i.fd = fneg <2 x double> %i.ew
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.el, <2 x double> zeroinitializer, <2 x double> %i.fd)
  %i.ff = fadd <2 x double> %i.am, %i.fe          ; 2 uses
  %i.fg = fmul <2 x double> %50, %i.eg
  %i.fh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %52, <2 x double> %i.ei, <2 x double> %i.fg)
  %i.fi = fadd <2 x double> %i.ao, %i.fh          ; 2 uses
  %i.fj = fmul <2 x double> %40, %i.ew
  %i.fk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cw, <2 x double> %i.el, <2 x double> %i.fj)
  %i.fl = fadd <2 x double> %i.ap, %i.fk          ; 2 uses
  %i.fm = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.fn = shufflevector <2 x double> %i.fm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fo = fmul <2 x double> %i.fn, %i.eg
  %i.fp = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fq = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> %i.ei, <2 x double> %i.fo)
  %i.fs = fadd <2 x double> %i.aq, %i.fr          ; 2 uses
  %i.ft = fmul double %i.bs, %i.bs
  %i.fu = insertelement <2 x double> %i.bu, double 0.000000e+00, i64 0
  %i.fv = insertelement <2 x double> %foldExtExtBinop, double %49, i64 0
  %i.fw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bt, <2 x double> %i.fu, <2 x double> %i.fv)
  %i.fx = insertelement <2 x double> %i.bq, double %i.bh, i64 1
  %i.fy = insertelement <2 x double> %i.eh, double %i.ft, i64 0
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fx, <2 x double> %i.bt, <2 x double> %i.fy)
  %i.ga = shufflevector <2 x double> %i.bx, <2 x double> %i.eh, <2 x i32> <i32 0, i32 3>
  %i.gb = fsub <2 x double> %i.ga, %43            ; 2 uses
  %i.gc = extractelement <2 x double> %i.gb, i64 0
  %i.gd = fadd double %.sroa.197.0, %i.gc         ; 2 uses
  %54 = shufflevector <2 x double> %i.gb, <2 x double> %44, <6 x i32> <i32 poison, i32 poison, i32 1, i32 3, i32 poison, i32 poison>
  %i.ge = shufflevector <2 x double> %i.fw, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <6 x double> %54, <6 x double> %i.ge, <6 x i32> <i32 poison, i32 poison, i32 2, i32 3, i32 6, i32 7>
  %i.gg = shufflevector <2 x double> %i.fz, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gh = shufflevector <6 x double> %i.gg, <6 x double> %i.gf, <6 x i32> <i32 0, i32 1, i32 8, i32 9, i32 10, i32 11>
  %i.gi = fadd <6 x double> %i.ar, %i.gh          ; 2 uses
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %exitcond199.not = icmp eq i64 %indvars.iv.next196, %wide.trip.count198
  br i1 %exitcond199.not, label %.loopexit.loopexit, label %.preheader164, !llvm.loop !103

.preheader166:                                    ; preds = %bb.b, %.preheader166
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader166 ], [ 0, %bb.b ] ; 3 uses
  %i.gj = phi <2 x double> [ %56, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gk = phi <2 x double> [ %i.ir, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gl = phi <2 x double> [ %i.iw, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gm = phi <2 x double> [ %i.iz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gn = phi <2 x double> [ %i.ji, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.go = phi <2 x double> [ %i.jn, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gp = phi <2 x double> [ %i.jr, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gq = phi <2 x double> [ %i.lu, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gr = phi <2 x double> [ %i.lx, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gs = phi <2 x double> [ %i.lz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gt = phi <2 x double> [ %i.mb, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gu = phi <2 x double> [ %i.ka, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gv = phi <2 x double> [ %i.ke, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gw = phi <2 x double> [ %i.kg, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gx = phi <2 x double> [ %i.ki, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gy = phi <2 x double> [ %i.kk, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.gz = phi <2 x double> [ %i.md, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ha = phi <2 x double> [ %i.mg, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hb = phi <2 x double> [ %i.mi, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hc = phi <2 x double> [ %i.mk, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hd = phi <2 x double> [ %i.kn, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.he = phi <2 x double> [ %i.kq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hf = phi <2 x double> [ %i.kt, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hg = phi <2 x double> [ %i.kw, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hh = phi <2 x double> [ %i.kz, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hi = phi <2 x double> [ %i.mq, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hj = phi <2 x double> [ %i.mt, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hk = phi <2 x double> [ %i.lg, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hl = phi <2 x double> [ %i.lj, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hm = phi <2 x double> [ %i.lm, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hn = phi <2 x double> [ %i.mv, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ho = phi <2 x double> [ %i.my, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hp = phi <2 x double> [ %i.nb, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hq = phi <2 x double> [ %i.ne, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hr = phi <2 x double> [ %i.nj, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hs = phi <2 x double> [ %i.no, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.ht = phi <6 x double> [ %i.oc, %.preheader166 ], [ zeroinitializer, %bb.b ]
  %i.hu = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !24
  %i.hw = mul nsw i32 %i.hv, 5
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !33 ; 9 uses
  %i.hz = sext i32 %i.hw to i64
  %i.ia = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.hz ; 3 uses
  %i.ib = getelementptr i8, ptr %i.ia, i64 8
  %i.ic = getelementptr i8, ptr %i.ia, i64 16
  %i.id = load float, ptr %i.ic, align 4, !tbaa !45
  %i.ie = fpext float %i.id to double
  %i.if = fmul double %i.hy, %i.ie                ; 3 uses
  %i.ig = fneg double %i.if
  %i.ih = load <2 x float>, ptr %i.ib, align 4, !tbaa !45
  %i.ii = fpext <2 x float> %i.ih to <2 x double>
  %i.ij = insertelement <2 x double> poison, double %i.hy, i64 0 ; 3 uses
  %i.ik = shufflevector <2 x double> %i.ij, <2 x double> poison, <2 x i32> zeroinitializer
  %i.il = fmul <2 x double> %i.ik, %i.ii          ; 10 uses
  %i.im = extractelement <2 x double> %i.il, i64 0
  %i.in = fneg double %i.im
  %i.io = extractelement <2 x double> %i.il, i64 1
  %i.ip = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %55 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.il, <2 x double> zeroinitializer)
  %56 = fadd <2 x double> %i.gj, %55              ; 2 uses
  %57 = insertelement <2 x double> poison, double %i.if, i64 0 ; 2 uses
  %58 = insertelement <2 x double> %57, double %i.hy, i64 1 ; 5 uses
  %i.iq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %58, <2 x double> zeroinitializer)
  %i.ir = fadd <2 x double> %i.gk, %i.iq          ; 2 uses
  %i.is = fmul <2 x double> %i.il, splat (double -0.000000e+00) ; 4 uses
  %i.it = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.iv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> zeroinitializer, <2 x double> %i.is)
  %i.iw = fadd <2 x double> %i.gl, %i.iv          ; 2 uses
  %i.ix = fmul <2 x double> %58, splat (double -0.000000e+00) ; 4 uses
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> zeroinitializer, <2 x double> %i.ix)
  %i.iz = fadd <2 x double> %i.gm, %i.iy          ; 2 uses
  %i.ja = load <2 x float>, ptr %i.ia, align 4, !tbaa !45
  %i.jb = fpext <2 x float> %i.ja to <2 x double> ; 2 uses
  %i.jc = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jd = fmul <2 x double> %i.il, %i.jc          ; 10 uses
  %i.je = shufflevector <2 x double> %i.jb, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jf = fmul <2 x double> %i.il, %i.je          ; 8 uses
  %i.jg = fmul <2 x double> %i.jf, zeroinitializer ; 4 uses
  %i.jh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.jd, <2 x double> %i.jg)
  %i.ji = fadd <2 x double> %i.gn, %i.jh          ; 2 uses
  %i.jj = fmul <2 x double> %58, %i.jc            ; 10 uses
  %i.jk = fmul <2 x double> %58, %i.je            ; 9 uses
  %i.jl = fmul <2 x double> %i.jk, zeroinitializer ; 4 uses
  %i.jm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.jj, <2 x double> %i.jl)
  %i.jn = fadd <2 x double> %i.go, %i.jm          ; 2 uses
  %i.jo = shufflevector <2 x double> %i.il, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.jp = insertelement <2 x double> %i.jo, double %i.if, i64 1 ; 2 uses
  %i.jq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jp, <2 x double> zeroinitializer)
  %i.jr = fadd <2 x double> %i.gp, %i.jq          ; 2 uses
  %i.js = shufflevector <2 x double> %i.il, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.jt = shufflevector <2 x double> %i.is, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.ju = shufflevector <2 x double> %i.is, <2 x double> %i.ix, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jv = shufflevector <2 x double> %i.jd, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.jw = shufflevector <2 x double> %i.ix, <2 x double> %i.jg, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.jx = shufflevector <2 x double> %i.jd, <2 x double> %i.jj, <2 x i32> <i32 1, i32 2> ; 5 uses
  %i.jy = shufflevector <2 x double> %i.jg, <2 x double> %i.jl, <2 x i32> <i32 1, i32 2> ; 2 uses
  %59 = shufflevector <2 x double> %57, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.jz = insertelement <2 x double> %59, double %i.hy, i64 1 ; 2 uses
  %60 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %59, <2 x double> %i.jz, <2 x double> zeroinitializer)
  %i.ka = fadd <2 x double> %i.gu, %60            ; 2 uses
  %i.kb = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer ; 6 uses
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.is)
  %i.ke = fadd <2 x double> %i.gv, %i.kd          ; 2 uses
  %i.kf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> zeroinitializer, <2 x double> %i.ix)
  %i.kg = fadd <2 x double> %i.gw, %i.kf          ; 2 uses
  %i.kh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.jd, <2 x double> %i.jg)
  %i.ki = fadd <2 x double> %i.gx, %i.kh          ; 2 uses
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kc, <2 x double> %i.jj, <2 x double> %i.jl)
  %i.kk = fadd <2 x double> %i.gy, %i.kj          ; 2 uses
  %i.kl = fmul <2 x double> %i.ip, %i.il
  %i.km = fadd <2 x double> %i.kl, <double -0.000000e+00, double 0.000000e+00>
  %i.kn = fadd <2 x double> %i.hd, %i.km          ; 2 uses
  %i.ko = fmul <2 x double> %i.ip, %58
  %i.kp = fadd <2 x double> %i.ko, zeroinitializer
  %i.kq = fadd <2 x double> %i.he, %i.kp          ; 2 uses
  %i.kr = fmul <2 x double> %i.jf, %i.iu
  %i.ks = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.kr)
  %i.kt = fadd <2 x double> %i.hf, %i.ks          ; 2 uses
  %i.ku = fmul <2 x double> %i.jk, %i.iu
  %i.kv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> zeroinitializer, <2 x double> %i.ku)
  %i.kw = fadd <2 x double> %i.hg, %i.kv          ; 2 uses
  %i.kx = fmul <2 x double> %i.jo, %i.jp
  %i.ky = fadd <2 x double> %i.kx, <double -0.000000e+00, double 0.000000e+00>
  %i.kz = fadd <2 x double> %i.hh, %i.ky          ; 2 uses
  %i.la = fmul double %i.io, %i.hy
  %i.lb = fadd double %i.la, 0.000000e+00
  %i.lc = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.ld = shufflevector <2 x double> %i.jf, <2 x double> %i.jk, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.le = fmul <2 x double> %59, %i.jz
  %i.lf = fadd <2 x double> %i.le, <double -0.000000e+00, double 0.000000e+00>
  %i.lg = fadd <2 x double> %i.hk, %i.lf          ; 2 uses
  %i.lh = fmul <2 x double> %i.jf, %i.kc
  %i.li = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jd, <2 x double> zeroinitializer, <2 x double> %i.lh)
  %i.lj = fadd <2 x double> %i.hl, %i.li          ; 2 uses
  %i.lk = fmul <2 x double> %i.jk, %i.kc
  %i.ll = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> zeroinitializer, <2 x double> %i.lk)
  %i.lm = fadd <2 x double> %i.hm, %i.ll          ; 2 uses
  %i.ln = fmul double %i.hy, %i.hy
  %i.lo = insertelement <2 x double> %i.jo, double %i.hy, i64 1
  %i.lp = fneg <2 x double> %i.lo                 ; 7 uses
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <6 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.lr = shufflevector <2 x double> %i.lp, <2 x double> poison, <6 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.ls = shufflevector <2 x double> %i.ij, <2 x double> %i.lp, <2 x i32> <i32 0, i32 2>
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.js, <2 x double> %i.ls, <2 x double> %i.jt)
  %i.lu = fadd <2 x double> %i.gq, %i.lt          ; 2 uses
  %i.lv = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.lw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> zeroinitializer, <2 x double> %i.ju)
  %i.lx = fadd <2 x double> %i.gr, %i.lw          ; 2 uses
  %i.ly = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.jv, <2 x double> %i.jw)
  %i.lz = fadd <2 x double> %i.gs, %i.ly          ; 2 uses
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lv, <2 x double> %i.jx, <2 x double> %i.jy)
  %i.mb = fadd <2 x double> %i.gt, %i.ma          ; 2 uses
  %61 = insertelement <2 x double> %i.lp, double %i.hy, i64 0
  %i.mc = insertelement <2 x double> %i.ij, double 0.000000e+00, i64 1
  %62 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %61, <2 x double> %i.mc, <2 x double> %i.jt)
  %i.md = fadd <2 x double> %i.gz, %62            ; 2 uses
  %i.me = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> zeroinitializer, <2 x double> %i.ju)
  %i.mg = fadd <2 x double> %i.ha, %i.mf          ; 2 uses
  %i.mh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.jv, <2 x double> %i.jw)
  %i.mi = fadd <2 x double> %i.hb, %i.mh          ; 2 uses
  %i.mj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.me, <2 x double> %i.jx, <2 x double> %i.jy)
  %i.mk = fadd <2 x double> %i.hc, %i.mj          ; 2 uses
  %i.ml = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mm = fmul <2 x double> %i.ml, %i.lp
  %i.mn = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.mo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> zeroinitializer, <2 x double> %i.mm) ; 2 uses
  %i.mp = shufflevector <2 x double> %i.lc, <2 x double> %i.mo, <2 x i32> <i32 0, i32 2>
  %i.mq = fadd <2 x double> %i.hi, %i.mp          ; 2 uses
  %i.mr = fmul <2 x double> %i.ld, %i.lv
  %i.ms = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> zeroinitializer, <2 x double> %i.mr)
  %i.mt = fadd <2 x double> %i.hj, %i.ms          ; 2 uses
  %i.mu = insertelement <2 x double> %i.mo, double %i.ln, i64 0
  %i.mv = fadd <2 x double> %i.hn, %i.mu          ; 2 uses
  %i.mw = fmul <2 x double> %i.ld, %i.me
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> zeroinitializer, <2 x double> %i.mw)
  %i.my = fadd <2 x double> %i.ho, %i.mx          ; 2 uses
  %i.mz = fmul <2 x double> %i.ml, %i.jf
  %i.na = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.jd, <2 x double> %i.mz)
  %i.nb = fadd <2 x double> %i.hp, %i.na          ; 2 uses
  %i.nc = fmul <2 x double> %i.ml, %i.jk
  %i.nd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mn, <2 x double> %i.jj, <2 x double> %i.nc)
  %i.ne = fadd <2 x double> %i.hq, %i.nd          ; 2 uses
  %i.nf = shufflevector <2 x double> %i.jf, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ng = fmul <2 x double> %i.nf, %i.ld
  %i.nh = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ni = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nh, <2 x double> %i.jx, <2 x double> %i.ng)
  %i.nj = fadd <2 x double> %i.hr, %i.ni          ; 2 uses
  %i.nk = shufflevector <2 x double> %i.jk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nl = fmul <2 x double> %i.nk, %i.jk
  %i.nm = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> %i.jj, <2 x double> %i.nl)
  %i.no = fadd <2 x double> %i.hs, %i.nn          ; 2 uses
  %i.np = shufflevector <2 x double> %i.jk, <2 x double> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.nq = shufflevector <3 x double> %i.np, <3 x double> <double 1.000000e+00, double 1.000000e+00, double poison>, <6 x i32> <i32 1, i32 3, i32 4, i32 1, i32 1, i32 1>
  %i.nr = shufflevector <2 x double> %i.jk, <2 x double> %i.jl, <6 x i32> <i32 1, i32 3, i32 3, i32 poison, i32 poison, i32 poison>
  %i.ns = shufflevector <2 x double> %i.jf, <2 x double> poison, <6 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.nt = shufflevector <6 x double> %i.nr, <6 x double> %i.ns, <6 x i32> <i32 0, i32 1, i32 2, i32 poison, i32 poison, i32 7>
  %i.nu = shufflevector <6 x double> %i.nt, <6 x double> %i.lr, <6 x i32> <i32 0, i32 1, i32 2, i32 6, i32 7, i32 5> ; 2 uses
  %i.nv = fmul <6 x double> %i.nq, %i.nu
  %i.nw = shufflevector <2 x double> %i.jj, <2 x double> %i.jd, <6 x i32> <i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 3>
  %i.nx = shufflevector <6 x double> %i.nw, <6 x double> %i.nu, <6 x i32> <i32 0, i32 poison, i32 10, i32 poison, i32 poison, i32 5>
  %i.ny = shufflevector <6 x double> %i.nx, <6 x double> <double poison, double poison, double poison, double 0.000000e+00, double 0.000000e+00, double poison>, <6 x i32> <i32 0, i32 poison, i32 2, i32 9, i32 10, i32 5>
  %i.nz = shufflevector <6 x double> %i.ny, <6 x double> %i.lq, <6 x i32> <i32 0, i32 6, i32 2, i32 3, i32 4, i32 5>
  %i.oa = shufflevector <2 x double> %i.jj, <2 x double> poison, <6 x i32> <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %i.ob = tail call <6 x double> @llvm.fmuladd.v6f64(<6 x double> %i.nz, <6 x double> %i.oa, <6 x double> %i.nv)
  %i.oc = fadd <6 x double> %i.ht, %i.ob          ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count198
  br i1 %exitcond.not, label %.loopexit, label %.preheader166, !llvm.loop !104

.loopexit.loopexit:                               ; preds = %.preheader164
  %i.od = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.gd, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader166, %.loopexit.loopexit
  %i.oe = phi <2 x double> [ %i.bi, %.loopexit.loopexit ], [ %56, %.preheader166 ] ; 2 uses
  %i.of = phi <2 x double> [ %i.cf, %.loopexit.loopexit ], [ %i.ir, %.preheader166 ] ; 3 uses
  %i.og = phi <2 x double> [ %i.bn, %.loopexit.loopexit ], [ %i.iw, %.preheader166 ] ; 3 uses
  %i.oh = phi <2 x double> [ %24, %.loopexit.loopexit ], [ %i.iz, %.preheader166 ] ; 3 uses
  %i.oi = phi <2 x double> [ %i.bz, %.loopexit.loopexit ], [ %i.ji, %.preheader166 ] ; 3 uses
  %i.oj = phi <2 x double> [ %i.ek, %.loopexit.loopexit ], [ %i.jn, %.preheader166 ] ; 3 uses
  %i.ok = phi <2 x double> [ %i.cc, %.loopexit.loopexit ], [ %i.jr, %.preheader166 ] ; 2 uses
  %i.ol = phi <2 x double> [ %i.ck, %.loopexit.loopexit ], [ %i.lu, %.preheader166 ] ; 3 uses
  %i.om = phi <2 x double> [ %i.cq, %.loopexit.loopexit ], [ %i.lx, %.preheader166 ] ; 3 uses
  %i.on = phi <2 x double> [ %i.cv, %.loopexit.loopexit ], [ %i.lz, %.preheader166 ] ; 3 uses
  %i.oo = phi <2 x double> [ %i.eo, %.loopexit.loopexit ], [ %i.mb, %.preheader166 ] ; 3 uses
  %i.op = phi <2 x double> [ %33, %.loopexit.loopexit ], [ %i.ka, %.preheader166 ] ; 2 uses
  %i.oq = phi <2 x double> [ %i.cx, %.loopexit.loopexit ], [ %i.ke, %.preheader166 ] ; 3 uses
  %i.or = phi <2 x double> [ %i.dc, %.loopexit.loopexit ], [ %i.kg, %.preheader166 ] ; 3 uses
  %i.os = phi <2 x double> [ %i.de, %.loopexit.loopexit ], [ %i.ki, %.preheader166 ] ; 3 uses
  %i.ot = phi <2 x double> [ %i.eq, %.loopexit.loopexit ], [ %i.kk, %.preheader166 ] ; 3 uses
  %i.ou = phi <2 x double> [ %i.dg, %.loopexit.loopexit ], [ %i.md, %.preheader166 ] ; 2 uses
  %i.ov = phi <2 x double> [ %i.dh, %.loopexit.loopexit ], [ %i.mg, %.preheader166 ] ; 3 uses
  %i.ow = phi <2 x double> [ %i.od, %.loopexit.loopexit ], [ %i.mi, %.preheader166 ] ; 3 uses
  %i.ox = phi <2 x double> [ %i.es, %.loopexit.loopexit ], [ %i.mk, %.preheader166 ] ; 3 uses
  %i.oy = phi <2 x double> [ %i.dk, %.loopexit.loopexit ], [ %i.kn, %.preheader166 ] ; 2 uses
  %i.oz = phi <2 x double> [ %i.do, %.loopexit.loopexit ], [ %i.kq, %.preheader166 ] ; 3 uses
  %i.pa = phi <2 x double> [ %i.ds, %.loopexit.loopexit ], [ %i.kt, %.preheader166 ] ; 3 uses
  %i.pb = phi <2 x double> [ %i.ev, %.loopexit.loopexit ], [ %i.kw, %.preheader166 ] ; 3 uses
  %i.pc = phi <2 x double> [ %37, %.loopexit.loopexit ], [ %i.kz, %.preheader166 ] ; 2 uses
  %i.pd = phi <2 x double> [ %46, %.loopexit.loopexit ], [ %i.mq, %.preheader166 ] ; 3 uses
  %i.pe = phi <2 x double> [ %i.ez, %.loopexit.loopexit ], [ %i.mt, %.preheader166 ] ; 3 uses
  %i.pf = phi <2 x double> [ %i.dx, %.loopexit.loopexit ], [ %i.lg, %.preheader166 ] ; 2 uses
  %i.pg = phi <2 x double> [ %i.ea, %.loopexit.loopexit ], [ %i.lj, %.preheader166 ] ; 3 uses
  %i.ph = phi <2 x double> [ %i.fc, %.loopexit.loopexit ], [ %i.lm, %.preheader166 ] ; 3 uses
  %i.pi = phi <2 x double> [ %i.ec, %.loopexit.loopexit ], [ %i.mv, %.preheader166 ] ; 2 uses
  %i.pj = phi <2 x double> [ %i.ff, %.loopexit.loopexit ], [ %i.my, %.preheader166 ] ; 3 uses
  %i.pk = phi <2 x double> [ %53, %.loopexit.loopexit ], [ %i.nb, %.preheader166 ] ; 2 uses
  %i.pl = phi <2 x double> [ %i.fi, %.loopexit.loopexit ], [ %i.ne, %.preheader166 ] ; 3 uses
  %i.pm = phi <2 x double> [ %i.fl, %.loopexit.loopexit ], [ %i.nj, %.preheader166 ] ; 2 uses
  %i.pn = phi <2 x double> [ %i.fs, %.loopexit.loopexit ], [ %i.no, %.preheader166 ] ; 2 uses
  %i.po = phi <6 x double> [ %i.gi, %.loopexit.loopexit ], [ %i.oc, %.preheader166 ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1152) %7, i8 0, i64 1152, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %8, i8 0, i64 96, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  store <2 x double> %i.oe, ptr %10, align 16, !tbaa !33
  %.sroa.14555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 16
  store <2 x double> %i.of, ptr %.sroa.14555.0..sroa_idx, align 16, !tbaa !33
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 32
  store <2 x double> %i.og, ptr %.sroa.24.0..sroa_idx, align 16, !tbaa !33
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 48
  store <2 x double> %i.oh, ptr %.sroa.34.0..sroa_idx, align 16, !tbaa !33
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 64
  store <2 x double> %i.oi, ptr %.sroa.44.0..sroa_idx, align 16, !tbaa !33
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 80
  store <2 x double> %i.oj, ptr %.sroa.54.0..sroa_idx, align 16, !tbaa !33
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 96
  %i.pp = extractelement <2 x double> %i.oe, i64 1
  store double %i.pp, ptr %.sroa.64.0..sroa_idx, align 16, !tbaa !33
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 104
  store <2 x double> %i.ok, ptr %.sroa.65.0..sroa_idx, align 8, !tbaa !33
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 120
  store <2 x double> %i.ol, ptr %.sroa.74.0..sroa_idx, align 8, !tbaa !33
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 136
  store <2 x double> %i.om, ptr %.sroa.84.0..sroa_idx, align 8, !tbaa !33
  %.sroa.94.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 152
  store <2 x double> %i.on, ptr %.sroa.94.0..sroa_idx, align 8, !tbaa !33
  %.sroa.104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 168
  store <2 x double> %i.oo, ptr %.sroa.104.0..sroa_idx, align 8, !tbaa !33
  %.sroa.114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 184
  %i.pq = extractelement <6 x double> %i.po, i64 1 ; 2 uses
  store double %i.pq, ptr %.sroa.114.0..sroa_idx, align 8, !tbaa !33
  %.sroa.119.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 192
  %i.pr = shufflevector <2 x double> %i.of, <2 x double> %i.ok, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.pr, ptr %.sroa.119.0..sroa_idx, align 16, !tbaa !33
  %.sroa.121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 208
  store <2 x double> %i.op, ptr %.sroa.121.0..sroa_idx, align 16, !tbaa !33
  %.sroa.130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 224
  store <2 x double> %i.oq, ptr %.sroa.130.0..sroa_idx, align 16, !tbaa !33
  %.sroa.140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 240
  store <2 x double> %i.or, ptr %.sroa.140.0..sroa_idx, align 16, !tbaa !33
  %.sroa.150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 256
  store <2 x double> %i.os, ptr %.sroa.150.0..sroa_idx, align 16, !tbaa !33
  %.sroa.160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 272
  store <2 x double> %i.ot, ptr %.sroa.160.0..sroa_idx, align 16, !tbaa !33
  %.sroa.170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 288
  %i.ps = shufflevector <2 x double> %i.of, <2 x double> %i.ol, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.ps, ptr %.sroa.170.0..sroa_idx, align 16, !tbaa !33
  %.sroa.172616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 304
  %i.pt = extractelement <2 x double> %i.op, i64 1
  store double %i.pt, ptr %.sroa.172616.0..sroa_idx, align 16, !tbaa !33
  %.sroa.173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 312
  store <2 x double> %i.ou, ptr %.sroa.173.0..sroa_idx, align 8, !tbaa !33
  %.sroa.182.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 328
  store <2 x double> %i.ov, ptr %.sroa.182.0..sroa_idx, align 8, !tbaa !33
  %.sroa.192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 344
  store <2 x double> %i.ow, ptr %.sroa.192.0..sroa_idx, align 8, !tbaa !33
  %.sroa.202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 360
  store <2 x double> %i.ox, ptr %.sroa.202.0..sroa_idx, align 8, !tbaa !33
  %.sroa.212.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 376
  %i.pu = extractelement <6 x double> %i.po, i64 2 ; 2 uses
  store double %i.pu, ptr %.sroa.212.0..sroa_idx, align 8, !tbaa !33
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 384
  %i.pv = shufflevector <2 x double> %i.og, <2 x double> %i.ol, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.pv, ptr %.sroa.217.0..sroa_idx, align 16, !tbaa !33
  %.sroa.219.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 400
  %i.pw = shufflevector <2 x double> %i.oq, <2 x double> %i.ou, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.pw, ptr %.sroa.219.0..sroa_idx, align 16, !tbaa !33
  %.sroa.221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 416
  store <2 x double> %i.oy, ptr %.sroa.221.0..sroa_idx, align 16, !tbaa !33
  %.sroa.230.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 432
  store <2 x double> %i.oz, ptr %.sroa.230.0..sroa_idx, align 16, !tbaa !33
  %.sroa.240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 448
  store <2 x double> %i.pa, ptr %.sroa.240.0..sroa_idx, align 16, !tbaa !33
  %.sroa.250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 464
  store <2 x double> %i.pb, ptr %.sroa.250.0..sroa_idx, align 16, !tbaa !33
  %.sroa.260.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 480
  %i.px = shufflevector <2 x double> %i.og, <2 x double> %i.om, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.px, ptr %.sroa.260.0..sroa_idx, align 16, !tbaa !33
  %.sroa.262.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 496
  %i.py = shufflevector <2 x double> %i.oq, <2 x double> %i.ov, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.py, ptr %.sroa.262.0..sroa_idx, align 16, !tbaa !33
  %.sroa.264.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 512
  %i.pz = extractelement <2 x double> %i.oy, i64 1
  store double %i.pz, ptr %.sroa.264.0..sroa_idx, align 16, !tbaa !33
  %.sroa.265.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 520
  store <2 x double> %i.pc, ptr %.sroa.265.0..sroa_idx, align 8, !tbaa !33
  %.sroa.274.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 536
  store <2 x double> %i.pd, ptr %.sroa.274.0..sroa_idx, align 8, !tbaa !33
  %.sroa.284.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 552
  store <2 x double> %i.pe, ptr %.sroa.284.0..sroa_idx, align 8, !tbaa !33
  %.sroa.294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 568
  %i.qa = extractelement <6 x double> %i.po, i64 3 ; 2 uses
  store double %i.qa, ptr %.sroa.294.0..sroa_idx, align 8, !tbaa !33
  %.sroa.299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 576
  %i.qb = shufflevector <2 x double> %i.oh, <2 x double> %i.om, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qb, ptr %.sroa.299.0..sroa_idx, align 16, !tbaa !33
  %.sroa.301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 592
  %i.qc = shufflevector <2 x double> %i.or, <2 x double> %i.ov, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qc, ptr %.sroa.301.0..sroa_idx, align 16, !tbaa !33
  %.sroa.303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 608
  %i.qd = shufflevector <2 x double> %i.oz, <2 x double> %i.pc, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qd, ptr %.sroa.303.0..sroa_idx, align 16, !tbaa !33
  %.sroa.305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 624
  store <2 x double> %i.pf, ptr %.sroa.305.0..sroa_idx, align 16, !tbaa !33
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 640
  store <2 x double> %i.pg, ptr %.sroa.314.0..sroa_idx, align 16, !tbaa !33
  %.sroa.324.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 656
  store <2 x double> %i.ph, ptr %.sroa.324.0..sroa_idx, align 16, !tbaa !33
  %.sroa.334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 672
  %i.qe = shufflevector <2 x double> %i.oh, <2 x double> %i.on, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qe, ptr %.sroa.334.0..sroa_idx, align 16, !tbaa !33
  %.sroa.336.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 688
  %i.qf = shufflevector <2 x double> %i.or, <2 x double> %i.ow, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qf, ptr %.sroa.336.0..sroa_idx, align 16, !tbaa !33
  %.sroa.338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 704
  %i.qg = shufflevector <2 x double> %i.oz, <2 x double> %i.pd, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qg, ptr %.sroa.338.0..sroa_idx, align 16, !tbaa !33
  %.sroa.340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 720
  %i.qh = extractelement <2 x double> %i.pf, i64 1
  store double %i.qh, ptr %.sroa.340.0..sroa_idx, align 16, !tbaa !33
  %.sroa.341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 728
  store <2 x double> %i.pi, ptr %.sroa.341.0..sroa_idx, align 8, !tbaa !33
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 744
  store <2 x double> %i.pj, ptr %.sroa.350.0..sroa_idx, align 8, !tbaa !33
  %.sroa.360.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 760
  %i.qi = extractelement <6 x double> %i.po, i64 4 ; 2 uses
  store double %i.qi, ptr %.sroa.360.0..sroa_idx, align 8, !tbaa !33
  %.sroa.365.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 768
  %i.qj = shufflevector <2 x double> %i.oi, <2 x double> %i.on, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qj, ptr %.sroa.365.0..sroa_idx, align 16, !tbaa !33
  %.sroa.367.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 784
  %i.qk = shufflevector <2 x double> %i.os, <2 x double> %i.ow, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qk, ptr %.sroa.367.0..sroa_idx, align 16, !tbaa !33
  %.sroa.369.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 800
  %i.ql = shufflevector <2 x double> %i.pa, <2 x double> %i.pd, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.ql, ptr %.sroa.369.0..sroa_idx, align 16, !tbaa !33
  %.sroa.371.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 816
  %i.qm = shufflevector <2 x double> %i.pg, <2 x double> %i.pi, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qm, ptr %.sroa.371.0..sroa_idx, align 16, !tbaa !33
  %.sroa.373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 832
  store <2 x double> %i.pk, ptr %.sroa.373.0..sroa_idx, align 16, !tbaa !33
  %.sroa.382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 848
  store <2 x double> %i.pl, ptr %.sroa.382.0..sroa_idx, align 16, !tbaa !33
  %.sroa.392.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 864
  %i.qn = shufflevector <2 x double> %i.oi, <2 x double> %i.oo, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qn, ptr %.sroa.392.0..sroa_idx, align 16, !tbaa !33
  %.sroa.394.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 880
  %i.qo = shufflevector <2 x double> %i.os, <2 x double> %i.ox, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qo, ptr %.sroa.394.0..sroa_idx, align 16, !tbaa !33
  %.sroa.396.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 896
  %i.qp = shufflevector <2 x double> %i.pa, <2 x double> %i.pe, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qp, ptr %.sroa.396.0..sroa_idx, align 16, !tbaa !33
  %.sroa.398.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 912
  %i.qq = shufflevector <2 x double> %i.pg, <2 x double> %i.pj, <2 x i32> <i32 1, i32 2>
  store <2 x double> %i.qq, ptr %.sroa.398.0..sroa_idx, align 16, !tbaa !33
  %.sroa.400.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 928
  %i.qr = extractelement <2 x double> %i.pk, i64 1
  store double %i.qr, ptr %.sroa.400.0..sroa_idx, align 16, !tbaa !33
  %.sroa.401.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 936
  store <2 x double> %i.pm, ptr %.sroa.401.0..sroa_idx, align 8, !tbaa !33
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 952
  %i.qs = extractelement <6 x double> %i.po, i64 5 ; 2 uses
  store double %i.qs, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !33
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 960
  %i.qt = shufflevector <2 x double> %i.oj, <2 x double> %i.oo, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qt, ptr %.sroa.415.0..sroa_idx, align 16, !tbaa !33
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 976
  %i.qu = shufflevector <2 x double> %i.ot, <2 x double> %i.ox, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qu, ptr %.sroa.417.0..sroa_idx, align 16, !tbaa !33
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 992
  %i.qv = shufflevector <2 x double> %i.pb, <2 x double> %i.pe, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qv, ptr %.sroa.419.0..sroa_idx, align 16, !tbaa !33
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1008
  %i.qw = shufflevector <2 x double> %i.ph, <2 x double> %i.pj, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qw, ptr %.sroa.421.0..sroa_idx, align 16, !tbaa !33
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1024
  %i.qx = shufflevector <2 x double> %i.pl, <2 x double> %i.pm, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.qx, ptr %.sroa.423.0..sroa_idx, align 16, !tbaa !33
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1040
  store <2 x double> %i.pn, ptr %.sroa.425.0..sroa_idx, align 16, !tbaa !33
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1056
  %i.qy = extractelement <2 x double> %i.oj, i64 1
  store double %i.qy, ptr %.sroa.434.0..sroa_idx, align 16, !tbaa !33
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1064
  store double %i.pq, ptr %.sroa.435.0..sroa_idx, align 8, !tbaa !33
  %.sroa.436.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1072
  %i.qz = extractelement <2 x double> %i.ot, i64 1
  store double %i.qz, ptr %.sroa.436.0..sroa_idx, align 16, !tbaa !33
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1080
  store double %i.pu, ptr %.sroa.437.0..sroa_idx, align 8, !tbaa !33
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1088
  %i.ra = extractelement <2 x double> %i.pb, i64 1
  store double %i.ra, ptr %.sroa.438.0..sroa_idx, align 16, !tbaa !33
  %.sroa.439.0..sroa_idx = getelementptr inbounds nuw i8, ptr %10, i64 1096
end_hunk_0
begin_hunk_1_@_ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv:bb.a
  %or.cond20 = select i1 %or.cond17, i1 %i.k, i1 false
  br i1 %or.cond20, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %1, align 8, !tbaa !125    ; 2 uses
  %i.m = and i32 %i.l, 4064
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.4, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -215, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @__func__._ZNK2cv3MatcvNS_4MatxIT_XT0_EXT1_EEEIdLi3ELi3EEEv, ptr noundef nonnull @.str.2, i32 noundef 1314) #23
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.g:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %2, align 8, !tbaa !60     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.t = load i64, ptr %i.r, align 8, !tbaa !23
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.f
  %.pn = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %bb.n

bb.h:                                             ; preds = %bb.b
  %i.v = and i32 %i.l, 16415
  %or.cond12 = icmp eq i32 %i.v, 16390
  br i1 %or.cond12, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = load double, ptr %i.b, align 8, !tbaa !33
  store double %i.w, ptr %0, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.y = load double, ptr %i.x, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.y, ptr %i.z, align 8, !tbaa !33
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %i.ab, ptr %i.ac, align 8, !tbaa !33
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !33
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ae, ptr %i.af, align 8, !tbaa !33
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !33
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ah, ptr %i.ai, align 8, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ak, ptr %i.al, align 8, !tbaa !33
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.an = load double, ptr %i.am, align 8, !tbaa !33
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %i.an, ptr %i.ao, align 8, !tbaa !33
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !33
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %i.aq, ptr %i.ar, align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.at = load double, ptr %i.as, align 8, !tbaa !33
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.at, ptr %i.au, align 8, !tbaa !33
  br label %bb.m

bb.j:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, i8 0, i64 72, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @_ZN2cv3MatC1EiiiPvm(ptr noundef nonnull align 8 dereferenceable(208) %4, i32 noundef 3, i32 noundef 3, i32 noundef 6, ptr noundef nonnull %0, i64 noundef 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 0, ptr %i.aw, align 8
  store i32 33619968, ptr %5, align 8, !tbaa !54
  store ptr %4, ptr %i.av, align 8, !tbaa !55
  %i.ax = load i32, ptr %4, align 8, !tbaa !125
  %i.ay = and i32 %i.ax, 4095
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %1, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef %i.ay, double noundef 1.000000e+00, double noundef 0.000000e+00)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.az = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %4) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.i
  ret void

bb.n:                                             ; preds = %bb.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn6.pn = phi { ptr, i32 } [ %i.az, %bb.l ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  resume { ptr, i32 } %.pn6.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac13P3PSolverImplD2Ev(ptr noundef nonnull align 8 dead_on_return(504) dereferenceable(504) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac13P3PSolverImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac13P3PSolverImplD0Ev(ptr noundef nonnull align 8 dereferenceable(504) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac13P3PSolverImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !126
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.b) #20, !inline_history !126
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(504) %0) #20, !inline_history !126
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 504) #21
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac13P3PSolverImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(504) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [4 x double], align 16            ; 8 uses
  %3 = alloca %"class.cv::Matx.74", align 16      ; 13 uses
  %4 = alloca %"class.cv::Matx.76", align 8       ; 5 uses
  %5 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %6 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %7 = alloca %"class.cv::_InputArray", align 8   ; 6 uses
  %8 = alloca %"class.cv::_OutputArray", align 8  ; 6 uses
  %9 = alloca %"class.cv::Matx.74", align 8       ; 9 uses
  %10 = alloca %"class.cv::Matx.56", align 8      ; 5 uses
  %11 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %12 = alloca %"class.cv::_InputArray", align 8  ; 6 uses
  %13 = alloca %"class.cv::Vec.75", align 8       ; 6 uses
  %14 = alloca %"class.cv::_OutputArray", align 8 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40   ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !tbaa !43     ; 3 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !24   ; 2 uses
  %i.f = mul nsw i32 %i.e, 5
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !24   ; 2 uses
  %i.i = mul nsw i32 %i.h, 5
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.k = load i32, ptr %i.j, align 4, !tbaa !24   ; 2 uses
  %i.l = mul nsw i32 %i.k, 5
  %i.m = sext i32 %i.f to i64
  %i.n = getelementptr [4 x i8], ptr %i.c, i64 %i.m ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = getelementptr i8, ptr %i.n, i64 16
  %i.q = load float, ptr %i.p, align 4, !tbaa !45 ; 2 uses
  %i.r = sext i32 %i.i to i64
  %i.s = getelementptr [4 x i8], ptr %i.c, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load <2 x float>, ptr %i.o, align 4, !tbaa !45
  %i.v = fpext <2 x float> %i.u to <2 x double>   ; 4 uses
  %i.w = load <2 x float>, ptr %i.t, align 4, !tbaa !45
  %i.x = fpext <2 x float> %i.w to <2 x double>   ; 4 uses
  %i.y = getelementptr i8, ptr %i.s, i64 16
  %i.z = load float, ptr %i.y, align 4, !tbaa !45
  %i.aa = sext i32 %i.l to i64
  %i.ab = getelementptr [4 x i8], ptr %i.c, i64 %i.aa ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 16
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !45
  %i.af = fsub <2 x double> %i.v, %i.x            ; 2 uses
  %i.ag = load <2 x float>, ptr %i.ac, align 4, !tbaa !45
  %i.ah = fpext <2 x float> %i.ag to <2 x double> ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.x, %i.ah
  %15 = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %foldExtExtBinop603 = fsub <2 x double> %i.x, %i.ah
  %16 = extractelement <2 x double> %foldExtExtBinop603, i64 1 ; 2 uses
  %17 = tail call double @llvm.fmuladd.f64(double %15, double %15, double 0.000000e+00)
  %i.ai = tail call double @llvm.fmuladd.f64(double %16, double %16, double %17)
  %i.aj = fsub <2 x double> %i.ah, %i.v           ; 3 uses
  %i.ak = insertelement <2 x float> poison, float %i.z, i64 0
  %i.al = insertelement <2 x float> %i.ak, float %i.q, i64 1
  %i.am = fpext <2 x float> %i.al to <2 x double> ; 3 uses
  %i.an = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ao = insertelement <2 x float> %i.an, float %i.ae, i64 1
  %i.ap = fpext <2 x float> %i.ao to <2 x double> ; 4 uses
  %shift = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop605.a = fsub <2 x double> %i.am, %shift
  %i.aq = extractelement <2 x double> %foldExtExtBinop605.a, i64 0 ; 2 uses
  %i.ar = tail call noundef double @llvm.fmuladd.f64(double %i.aq, double %i.aq, double %i.ai)
  %sqrt.i340 = tail call noundef double @llvm.sqrt.f64(double %i.ar) ; 5 uses
  %i.as = fsub <2 x double> %i.ap, %i.am          ; 3 uses
  %i.at = shufflevector <2 x double> %i.af, <2 x double> %i.aj, <2 x i32> <i32 0, i32 2> ; 2 uses
  %18 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> %i.at, <2 x double> zeroinitializer)
  %i.au = shufflevector <2 x double> %i.aj, <2 x double> %i.af, <2 x i32> <i32 3, i32 1> ; 2 uses
  %i.av = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.au, <2 x double> %i.au, <2 x double> %18)
  %i.aw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.as, <2 x double> %i.av)
  %i.ax = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.aw) ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 496 ; 2 uses
  %i.az = load double, ptr %i.ay, align 8, !tbaa !67 ; 3 uses
  %i.ba = extractelement <2 x double> %i.ax, i64 0 ; 4 uses
  %i.bb = fcmp olt double %i.ba, %i.az
  %i.bc = fcmp olt double %sqrt.i340, %i.az
  %or.cond338 = or i1 %i.bb, %i.bc
  %i.bd = extractelement <2 x double> %i.ax, i64 1 ; 5 uses
  %i.be = fcmp olt double %i.bd, %i.az
  %or.cond339 = or i1 %i.be, %or.cond338
  br i1 %or.cond339, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !40 ; 3 uses
  %i.bh = mul nsw i32 %i.e, 3
  %i.bi = mul nsw i32 %i.h, 3
  %i.bj = mul nsw i32 %i.k, 3
  %i.bk = sext i32 %i.bh to i64
  %i.bl = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bk ; 3 uses
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !45
  %i.bn = getelementptr i8, ptr %i.bl, i64 4
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !45
  %i.bp = fpext float %i.bo to double             ; 3 uses
  %i.bq = getelementptr i8, ptr %i.bl, i64 8
  %i.br = load float, ptr %i.bq, align 4, !tbaa !45
  %i.bs = insertelement <2 x float> poison, float %i.br, i64 0
  %i.bt = insertelement <2 x float> %i.bs, float %i.bm, i64 1
  %i.bu = fpext <2 x float> %i.bt to <2 x double> ; 5 uses
  %i.bv = sext i32 %i.bi to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bv ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %i.by = load float, ptr %i.bx, align 4, !tbaa !45
  %i.bz = sext i32 %i.bj to i64
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bz ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !45
  %i.cd = load <2 x float>, ptr %i.bw, align 4, !tbaa !45 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.ca, align 4, !tbaa !45 ; 2 uses
  %i.cf = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 0, i32 2>
  %i.cg = fpext <2 x float> %i.cf to <2 x double> ; 4 uses
  %i.ch = shufflevector <2 x float> %i.cd, <2 x float> %i.ce, <2 x i32> <i32 1, i32 3>
  %i.ci = fpext <2 x float> %i.ch to <2 x double> ; 4 uses
  %i.cj = insertelement <2 x float> poison, float %i.by, i64 0
  %i.ck = insertelement <2 x float> %i.cj, float %i.cc, i64 1
  %i.cl = fpext <2 x float> %i.ck to <2 x double> ; 4 uses
  %i.cm = extractelement <2 x double> %i.bu, i64 1
  %i.cn = extractelement <2 x double> %i.bu, i64 0
  %i.co = extractelement <2 x double> %i.ci, i64 1
  %i.cp = extractelement <2 x double> %i.cg, i64 1
  %i.cq = insertelement <2 x double> %i.ci, double %i.bp, i64 0
  %i.cr = shufflevector <2 x double> %i.ci, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cs = fmul <2 x double> %i.cq, %i.cr
  %i.ct = shufflevector <2 x double> %i.cg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cu = shufflevector <2 x double> %i.bu, <2 x double> %i.cg, <2 x i32> <i32 1, i32 3>
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ct, <2 x double> %i.cu, <2 x double> %i.cs)
  %i.cw = extractelement <2 x double> %i.cl, i64 1
  %i.cx = shufflevector <2 x double> %i.cl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cy = shufflevector <2 x double> %i.bu, <2 x double> %i.cl, <2 x i32> <i32 0, i32 3>
  %i.cz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cx, <2 x double> %i.cy, <2 x double> %i.cv) ; 8 uses
  %i.da = extractelement <2 x double> %i.cz, i64 1 ; 8 uses
  %i.db = extractelement <2 x double> %i.cz, i64 0 ; 14 uses
  %i.dc = fmul double %i.co, %i.bp
  %i.dd = tail call double @llvm.fmuladd.f64(double %i.cp, double %i.cm, double %i.dc)
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cw, double %i.cn, double %i.dd) ; 9 uses
  %foldExtExtBinop607 = fmul <2 x double> %i.cz, %i.cz
  %i.df = extractelement <2 x double> %foldExtExtBinop607, i64 0 ; 3 uses
  %i.dg = fmul double %i.de, %i.de                ; 4 uses
  %foldExtExtBinop609 = fmul <2 x double> %i.ax, %i.ax ; 5 uses
  %i.dh = extractelement <2 x double> %foldExtExtBinop609, i64 0 ; 11 uses
  %foldExtExtBinop611 = fmul <2 x double> %foldExtExtBinop609, %foldExtExtBinop609
  %i.di = extractelement <2 x double> %foldExtExtBinop611, i64 0 ; 4 uses
  %i.dj = fmul double %sqrt.i340, %sqrt.i340      ; 8 uses
  %i.dk = fmul double %i.bd, %i.bd                ; 14 uses
  %i.dl = insertelement <2 x double> %i.cz, double %i.dk, i64 0 ; 2 uses
  %i.dm = fmul <2 x double> %i.dl, %i.dl          ; 4 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 1 ; 3 uses
  %i.do = fneg double %i.de
  %i.dp = extractelement <2 x double> %i.dm, i64 0 ; 2 uses
  %i.dq = fneg double %i.da
  %i.dr = fmul double %i.dj, %i.dj                ; 10 uses
  %i.ds = fmul double %i.dj, %i.dr                ; 5 uses
  %i.dt = fmul double %i.dr, %i.dr                ; 4 uses
  %i.du = fmul double %i.dr, -4.000000e+00
  %i.dv = fmul double %i.dh, %i.du
  %i.dw = fmul double %i.dk, %i.dv
  %i.dx = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dn, double %i.dt)
  %i.dy = fmul double %i.ds, 2.000000e+00         ; 2 uses
  %i.dz = fneg double %i.dy                       ; 3 uses
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dh, double %i.dx)
  %i.eb = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dk, double %i.ea)
  %i.ec = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.di, double %i.eb)
  %i.ed = fmul double %i.ds, 8.000000e+00         ; 2 uses
  %i.ee = fmul double %i.dh, %i.ed
  %i.ef = insertelement <2 x double> poison, double %i.dr, i64 0 ; 2 uses
  %i.eg = insertelement <2 x double> %i.ef, double %i.ee, i64 1
  %i.eh = insertelement <2 x double> <double 2.000000e+00, double poison>, double %i.dg, i64 1
  %i.ei = fmul <2 x double> %i.eg, %i.eh          ; 3 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %foldExtExtBinop613 = fmul <2 x double> %foldExtExtBinop609, %i.ei
  %i.ek = extractelement <2 x double> %foldExtExtBinop613, i64 0 ; 2 uses
  %i.el = tail call double @llvm.fmuladd.f64(double %i.ek, double %i.dk, double %i.ec)
  %i.em = fmul double %i.dr, 8.000000e+00
  %i.en = fmul double %i.dh, %i.em
  %i.eo = fmul double %i.dk, %i.en                ; 2 uses
  %i.ep = fmul double %i.eo, %i.db
  %i.eq = fmul double %i.ds, 4.000000e+00         ; 2 uses
  %i.er = fmul double %i.dh, %i.eq                ; 3 uses
  %i.es = fmul double %i.er, %i.de
  %i.et = fmul double %i.da, %i.es                ; 2 uses
  %i.eu = insertelement <2 x double> %i.ef, double %i.ep, i64 1
  %i.ev = insertelement <2 x double> poison, double %i.el, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.dm, <2 x double> %i.ew) ; 2 uses
  %i.ey = fmul double %i.dr, 4.000000e+00         ; 3 uses
  %i.ez = fmul double %i.di, %i.ey                ; 3 uses
  %i.fa = fmul double %i.ez, %i.do                ; 2 uses
  %i.fb = extractelement <2 x double> %i.ex, i64 1
  %i.fc = fmul double %i.dh, %i.ey
  %i.fd = fmul double %i.dt, 4.000000e+00         ; 2 uses
  %i.fe = fneg double %i.fd                       ; 2 uses
  %i.ff = fmul double %i.dk, %i.ed                ; 3 uses
  %i.fg = fmul double %i.dp, %i.ey                ; 2 uses
  %i.fh = fneg double %i.fg                       ; 2 uses
  %i.fi = fmul double %i.ds, -8.000000e+00
  %i.fj = fmul double %i.dh, %i.fi
  %i.fk = fmul double %i.fj, %i.de
  %i.fl = fmul double %i.db, %i.fk
  %i.fm = fmul double %i.eo, %i.de
  %i.fn = fmul double %i.db, %i.fm
  %i.fo = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.da, double %i.fb)
  %i.fp = fmul double %i.dk, %i.fc                ; 3 uses
  %i.fq = fmul double %i.fp, %i.de                ; 2 uses
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.da, double %i.fo)
  %i.fs = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.db, double %i.fr)
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.er, double %i.db, double %i.fs)
  %i.fu = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.db, double %i.ft)
  %i.fv = fneg double %i.fp                       ; 2 uses
  %i.fw = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.db, double %i.fu)
  %i.fx = fmul double %i.fn, %i.dq
  %i.fy = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fl, i64 1
  %i.ga = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gb = insertelement <2 x double> %i.ga, double %i.fx, i64 1
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fz, <2 x double> %i.cz, <2 x double> %i.gb) ; 2 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 1
  %i.ge = tail call double @llvm.fmuladd.f64(double %i.fd, double %i.df, double %i.gd)
  %i.gf = fneg double %i.er                       ; 2 uses
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.dg, double %i.ge)
  %i.gh = fneg double %i.ff
  %i.gi = tail call double @llvm.fmuladd.f64(double %i.gh, double %i.df, double %i.gg)
  %i.gj = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.dg, double %i.gi)
  %i.gk = tail call double @llvm.fmuladd.f64(double %i.ez, double %i.dn, double %i.gj)
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.dn, double %i.gk)
  %i.gm = tail call double @llvm.fmuladd.f64(double %i.fg, double %i.df, double %i.gl)
  %i.gn = tail call double @llvm.fmuladd.f64(double %i.dt, double 2.000000e+00, double %i.gm)
  %i.go = fneg double %i.eq
  %i.gp = tail call double @llvm.fmuladd.f64(double %i.go, double %i.dk, double %i.gn)
  %i.gq = fneg double %i.ej
  %i.gr = tail call double @llvm.fmuladd.f64(double %i.gq, double %i.di, double %i.gp)
  %i.gs = shufflevector <2 x double> %i.dm, <2 x double> %i.cz, <2 x i32> <i32 0, i32 2>
  %i.gt = insertelement <2 x double> poison, double %i.gr, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.et, i64 1
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ei, <2 x double> %i.gs, <2 x double> %i.gu) ; 2 uses
  %i.gw = extractelement <2 x double> %i.gv, i64 1
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.fa, double %i.da, double %i.gw)
  %i.gy = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.da, double %i.gx)
  %i.gz = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.db, double %i.gy)
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.db, double %i.gz)
  %i.hb = tail call double @llvm.fmuladd.f64(double %i.ff, double %i.db, double %i.ha)
  %i.hc = tail call double @llvm.fmuladd.f64(double %i.fp, double %i.db, double %i.hb)
  %i.hd = tail call double @llvm.fmuladd.f64(double %i.fh, double %i.db, double %i.hc)
  %i.he = fmul double %i.ds, -4.000000e+00
  %i.hf = fmul double %i.dh, %i.he
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.hf, double %i.dg, double %i.dt)
  %i.hh = fneg double %i.ek
  %i.hi = tail call double @llvm.fmuladd.f64(double %i.hh, double %i.dk, double %i.hg)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.dy, double %i.dh, double %i.hi)
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.dp, double %i.hj)
  %i.hl = tail call double @llvm.fmuladd.f64(double %i.dr, double %i.di, double %i.hk)
  %i.hm = tail call double @llvm.fmuladd.f64(double %i.dz, double %i.dk, double %i.hl)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.hn = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.hq = extractelement <2 x double> %i.ex, i64 0
  %i.hr = extractelement <2 x double> %i.gc, i64 0
  %i.hs = extractelement <2 x double> %i.gv, i64 0
  %i.ht = call noundef i32 @_ZN2cv10solve_deg4EdddddRdS0_S0_S0_(double noundef %i.hq, double noundef %i.hr, double noundef %i.hs, double noundef %i.hd, double noundef %i.hm, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.hn, ptr noundef nonnull align 8 dereferenceable(8) %i.ho, ptr noundef nonnull align 8 dereferenceable(8) %i.hp)
  %i.hu = load ptr, ptr %2, align 8, !tbaa !48    ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !49 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !50
  %.not4.i.i.i.i.i = icmp eq ptr %i.hu, %i.hw
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.b, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.hz, %.lr.ph.i.i.i.i.i ], [ %i.hu, %bb.b ] ; 2 uses
  call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %.05.i.i.i.i.i) #20
  %i.hz = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 208 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.hz, %i.hw
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.b
  %.not.i.i1.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.ia = ptrtoint ptr %i.hy to i64
  %i.ib = ptrtoint ptr %i.hu to i64
  %i.ic = sub i64 %i.ia, %i.ib
  call void @_ZdlPvm(ptr noundef nonnull %i.hu, i64 noundef %i.ic) #21
  br label %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit

_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit:          ; preds = %_ZSt8_DestroyIPN2cv3MatES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.c
  %i.id = sext i32 %i.ht to i64
  call void @_ZNSt6vectorIN2cv3MatESaIS1_EE7reserveEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.id)
  %i.ie = fneg double %i.dk
  %i.if = shufflevector <2 x double> %foldExtExtBinop609, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.if, <double 1.000000e+00, double 2.000000e+00>
  %i.ih = fmul double %i.dk, %i.da
  %i.ii = fsub double %i.dk, %i.dj
  %i.ij = fmul double %i.ii, 2.000000e+00
  %i.ik = fmul double %i.dh, %i.ij
  %i.il = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.im = insertelement <2 x double> %i.il, double %i.ik, i64 1 ; 2 uses
  %i.in = insertelement <2 x double> %i.cz, double %i.dk, i64 0 ; 2 uses
  %i.io = fsub <2 x double> %i.im, %i.in
  %i.ip = fmul <2 x double> %i.im, %i.in
  %i.iq = shufflevector <2 x double> %i.io, <2 x double> %i.ip, <2 x i32> <i32 0, i32 3>
  %i.ir = fsub <2 x double> %i.x, %i.v
  %i.is = extractelement <2 x double> %i.ap, i64 0
  %foldExtExtBinop615 = fsub <2 x double> %i.am, %i.ap
  %i.it = fdiv <2 x double> splat (double 1.000000e+00), %i.ax ; 4 uses
  %i.iu = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iv = fmul <2 x double> %i.ir, %i.iu          ; 10 uses
  %foldExtExtBinop617 = fmul <2 x double> %foldExtExtBinop615, %i.it ; 6 uses
  %i.iw = extractelement <2 x double> %foldExtExtBinop617, i64 0
  %i.ix = extractelement <2 x double> %i.iv, i64 1
  %i.iy = shufflevector <2 x double> %foldExtExtBinop617, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 poison, i32 0> ; 2 uses
  %i.ja = shufflevector <2 x double> %i.it, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jb = fmul <2 x double> %i.aj, %i.ja          ; 6 uses
  %foldExtExtBinop619 = fmul <2 x double> %i.as, %i.it ; 2 uses
  %i.jc = extractelement <2 x double> %foldExtExtBinop619, i64 1 ; 3 uses
  %i.jd = extractelement <2 x double> %i.jb, i64 1 ; 2 uses
  %i.je = fneg double %i.jd
  %i.jf = shufflevector <2 x double> %foldExtExtBinop619, <2 x double> %i.jb, <2 x i32> <i32 1, i32 2>
  %i.jg = fneg <2 x double> %i.jf
  %i.jh = fmul double %i.iw, %i.je
  %i.ji = call double @llvm.fmuladd.f64(double %i.ix, double %i.jc, double %i.jh) ; 3 uses
  %i.jj = fmul <2 x double> %i.iv, %i.jg
  %i.jk = shufflevector <2 x double> %foldExtExtBinop617, <2 x double> %i.iv, <2 x i32> <i32 0, i32 2>
  %i.jl = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jk, <2 x double> %i.jb, <2 x double> %i.jj) ; 3 uses
  %19 = call double @llvm.fmuladd.f64(double %i.ji, double %i.ji, double 0.000000e+00)
  %i.jm = extractelement <2 x double> %i.jl, i64 0 ; 2 uses
  %i.jn = call double @llvm.fmuladd.f64(double %i.jm, double %i.jm, double %19)
  %i.jo = extractelement <2 x double> %i.jl, i64 1 ; 2 uses
  %i.jp = call double @llvm.fmuladd.f64(double %i.jo, double %i.jo, double %i.jn)
  %sqrt.i345 = call double @llvm.sqrt.f64(double %i.jp)
  %i.jq = fdiv double 1.000000e+00, %sqrt.i345    ; 2 uses
  %i.jr = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.js = shufflevector <2 x double> %i.jr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jt = fmul <2 x double> %i.jl, %i.js          ; 10 uses
  %i.ju = extractelement <2 x double> %i.jt, i64 1 ; 2 uses
  %20 = fmul double %i.ji, %i.jq                  ; 5 uses
  %21 = insertelement <2 x double> %i.iv, double %20, i64 0
  %22 = fneg <2 x double> %21                     ; 2 uses
  %23 = shufflevector <2 x double> %i.jb, <2 x double> %i.jt, <2 x i32> <i32 1, i32 3>
  %24 = fmul <2 x double> %23, %22
  %25 = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %26 = shufflevector <2 x double> %i.jb, <2 x double> %foldExtExtBinop617, <2 x i32> <i32 0, i32 2>
  %27 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %25, <2 x double> %26, <2 x double> %24) ; 5 uses
  %28 = shufflevector <2 x double> %27, <2 x double> %i.jt, <2 x i32> <i32 0, i32 3>
  %i.jv = fneg <2 x double> %28                   ; 4 uses
  %shift621 = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop622 = fmul <2 x double> %i.jb, %shift621
  %29 = extractelement <2 x double> %foldExtExtBinop622, i64 0
  %30 = fmul <2 x double> %i.iv, %i.jv
  %31 = shufflevector <2 x double> %i.jv, <2 x double> %22, <2 x i32> <i32 1, i32 3>
  %i.jw = insertelement <2 x double> %i.iz, double %20, i64 0
  %foldExtExtBinop624 = fmul <2 x double> %i.jt, %i.jv
  %32 = extractelement <2 x double> %foldExtExtBinop624, i64 0
  %i.jx = insertelement <2 x double> poison, double %20, i64 0 ; 2 uses
  %i.jy = shufflevector <2 x double> %i.jx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jz = extractelement <2 x double> %i.iv, i64 0
  %i.ka = shufflevector <2 x double> %i.jt, <2 x double> %foldExtExtBinop617, <2 x i32> <i32 0, i32 2>
  %i.kb = fneg <2 x double> %i.ka                 ; 3 uses
  %33 = extractelement <2 x double> %i.kb, i64 0
  %34 = fmul double %i.jc, %33
  %35 = call double @llvm.fmuladd.f64(double %i.jd, double %i.ju, double %34) ; 3 uses
  %i.kc = insertelement <2 x double> poison, double %35, i64 0 ; 2 uses
  %36 = shufflevector <2 x double> %i.kc, <2 x double> %i.jt, <2 x i32> <i32 0, i32 2>
  %37 = call double @llvm.fmuladd.f64(double %i.jc, double %20, double %29) ; 4 uses
  %38 = fneg double %37                           ; 2 uses
  %39 = shufflevector <2 x double> %foldExtExtBinop617, <2 x double> %i.jt, <2 x i32> <i32 0, i32 3>
  %40 = insertelement <2 x double> poison, double %38, i64 0
  %41 = shufflevector <2 x double> %40, <2 x double> poison, <2 x i32> zeroinitializer
  %42 = fmul <2 x double> %39, %41
  %43 = shufflevector <2 x double> %i.iv, <2 x double> %i.jt, <2 x i32> <i32 1, i32 2>
  %44 = shufflevector <2 x double> %27, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %43, <2 x double> %44, <2 x double> %42) ; 2 uses
  %46 = extractelement <2 x double> %45, i64 1
  %i.kd = fneg double %46
  %i.ke = fmul double %i.jz, %i.kd
  %47 = extractelement <2 x double> %45, i64 0
  %48 = call double @llvm.fmuladd.f64(double %20, double %47, double %i.ke)
  %i.kf = extractelement <2 x double> %27, i64 1
  %i.kg = call double @llvm.fmuladd.f64(double %35, double %i.kf, double %48) ; 2 uses
  %i.kh = fcmp une double %i.kg, 0.000000e+00
  %i.ki = fdiv double 1.000000e+00, %i.kg         ; 2 uses
  %i.kj = insertelement <2 x double> %i.iv, double %37, i64 1
  %i.kk = fmul <2 x double> %i.kj, %i.kb
  %49 = shufflevector <2 x double> %i.jx, <2 x double> %27, <2 x i32> <i32 0, i32 2>
  %i.kl = shufflevector <2 x double> %i.iv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.km = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %49, <2 x double> %i.kl, <2 x double> %i.kk)
  %i.kn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> %i.iy, <2 x double> %30)
  %50 = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = fmul <2 x double> %50, %31
  %i.kp = insertelement <2 x double> %27, double %37, i64 1
  %i.kq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> %i.kp, <2 x double> %i.ko)
  %i.kr = call double @llvm.fmuladd.f64(double %37, double %i.ju, double %32)
  %i.ks = fmul double %i.kr, %i.ki
  %i.kt = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.ku = shufflevector <2 x double> %i.kt, <2 x double> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.kv = fmul <2 x double> %i.kq, %i.ku
  %i.kw = insertelement <2 x double> %i.kb, double %38, i64 0
  %i.kx = fmul <2 x double> %i.jy, %i.kw
  %51 = insertelement <2 x double> %i.iz, double %35, i64 0
  %i.ky = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %51, <2 x double> %i.jt, <2 x double> %i.kx)
  %i.kz = fmul <2 x double> %i.kn, %i.ku
  %i.la = fmul <2 x double> %i.ky, %i.ku
  %i.lb = fmul <2 x double> %i.km, %i.ku
  %i.lc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ld = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.lf = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.lg = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  %i.lj = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.lk = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ll = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lm = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ln = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lo = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.lp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.lq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.lr = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.lt = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.lu = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.lv = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.lw = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.lx = getelementptr inbounds nuw i8, ptr %9, i64 40
  %i.ly = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.lz = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ma = getelementptr inbounds nuw i8, ptr %9, i64 48
  %i.mb = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.mc = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.md = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.mf = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.mg = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.mk = insertelement <2 x double> poison, double %i.ie, i64 0
  %i.ml = insertelement <2 x double> %i.mk, double %i.dj, i64 1
  %i.mm = insertelement <2 x double> poison, double %i.dj, i64 0
  %i.mn = insertelement <2 x double> poison, double %i.de, i64 1
  br label %bb.e

bb.d:                                             ; preds = %bb.m
  %i.mo = load ptr, ptr %i.hv, align 8, !tbaa !49
  %i.mp = load ptr, ptr %2, align 8, !tbaa !48
  %i.mq = ptrtoint ptr %i.mo to i64
  %i.mr = ptrtoint ptr %i.mp to i64
  %i.ms = sub i64 %i.mq, %i.mr
  %i.mt = sdiv exact i64 %i.ms, 208
  %i.mu = trunc i64 %i.mt to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  br label %bb.n

bb.e:                                             ; preds = %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit, %bb.m
  %.0319.idx595 = phi i64 [ 0, %_ZNSt6vectorIN2cv3MatESaIS1_EED2Ev.exit ], [ %.0319.add, %bb.m ] ; 2 uses
  %.0319.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.0319.idx595
  %i.mv = load double, ptr %.0319.ptr, align 8, !tbaa !33 ; 7 uses
  %i.mw = fcmp ugt double %i.mv, 0.000000e+00
  br i1 %i.mw, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.mx = fmul double %i.mv, %i.mv                ; 3 uses
  %i.my = fadd double %i.mx, 1.000000e+00
  %i.mz = fmul double %i.mv, -2.000000e+00
  %i.na = fneg double %i.mx
  %i.nb = fmul double %i.dh, %i.na
  %i.nc = fneg double %i.mv
  %i.nd = fmul double %i.ih, %i.nc
  %i.ne = call double @llvm.fmuladd.f64(double %i.mz, double %i.db, double %i.my) ; 2 uses
  %i.nf = call double @llvm.fmuladd.f64(double %i.dj, double %i.ne, double %i.nb)
  %i.ng = insertelement <2 x double> %i.mn, double %i.mx, i64 0
  %i.nh = insertelement <2 x double> %i.mm, double %i.nd, i64 1
  %i.ni = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ml, <2 x double> %i.ng, <2 x double> %i.nh)
  %i.nj = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.mv, i64 1
  %i.nl = fmul <2 x double> %i.iq, %i.nk
  %i.nm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ig, <2 x double> %i.ni, <2 x double> %i.nl) ; 2 uses
  %i.nn = extractelement <2 x double> %i.nm, i64 0
  %i.no = extractelement <2 x double> %i.nm, i64 1
  %i.np = fdiv double %i.nn, %i.no
  %i.nq = call double @sqrt(double noundef %i.ne) #20
  %i.nr = fdiv double %i.ba, %i.nq                ; 9 uses
  %i.ns = insertelement <2 x double> poison, double %i.mv, i64 0
  %i.nt = insertelement <2 x double> %i.ns, double %i.np, i64 1
  %i.nu = insertelement <2 x double> poison, double %i.nr, i64 0
  %i.nv = shufflevector <2 x double> %i.nu, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nw = fmul <2 x double> %i.nt, %i.nv          ; 7 uses
  %i.nx = fcmp ole double %i.nr, 0.000000e+00
  %i.ny = extractelement <2 x double> %i.nw, i64 0 ; 5 uses
  %i.nz = fcmp ole double %i.ny, 0.000000e+00
  %or.cond = or i1 %i.nx, %i.nz
  %i.oa = extractelement <2 x double> %i.nw, i64 1 ; 7 uses
  %i.ob = fcmp ole double %i.oa, 0.000000e+00
  %or.cond3 = select i1 %or.cond, i1 true, i1 %i.ob
  br i1 %or.cond3, label %bb.m, label %bb.g

bb.g:                                             ; preds = %bb.f
  %foldExtExtBinop626 = fmul <2 x double> %i.nw, %i.nw
  %i.oc = extractelement <2 x double> %foldExtExtBinop626, i64 0
  %i.od = call double @llvm.fmuladd.f64(double %i.nr, double %i.nr, double %i.oc)
  %i.oe = fmul double %i.nr, 2.000000e+00
  %i.of = fneg double %i.ny
  %i.og = fmul double %i.oe, %i.of
  %i.oh = call double @llvm.fmuladd.f64(double %i.og, double %i.db, double %i.od)
  %i.oi = call double @sqrt(double noundef %i.oh) #20
  %i.oj = fsub double %i.oi, %i.ba
  %i.ok = fdiv double %i.oj, %i.ba
  %i.ol = call double @llvm.fabs.f64(double %i.ok)
  %i.om = load double, ptr %i.ay, align 8, !tbaa !67 ; 3 uses
  %i.on = fcmp ogt double %i.ol, %i.om
  br i1 %i.on, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.oo = fmul double %i.oa, %i.oa
  %i.op = call double @llvm.fmuladd.f64(double %i.ny, double %i.ny, double %i.oo)
  %i.oq = fmul double %i.ny, 2.000000e+00
  %i.or = fneg double %i.oa
  %i.os = fmul double %i.oq, %i.or
  %i.ot = call double @llvm.fmuladd.f64(double %i.os, double %i.da, double %i.op)
  %i.ou = call double @sqrt(double noundef %i.ot) #20
  %i.ov = fsub double %i.ou, %sqrt.i340
  %i.ow = fdiv double %i.ov, %sqrt.i340
  %i.ox = call double @llvm.fabs.f64(double %i.ow)
  %i.oy = fcmp ogt double %i.ox, %i.om
  br i1 %i.oy, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.oz = fmul double %i.nr, %i.nr
  %i.pa = call double @llvm.fmuladd.f64(double %i.oa, double %i.oa, double %i.oz)
  %i.pb = fmul double %i.oa, 2.000000e+00
  %i.pc = fneg double %i.nr
  %i.pd = fmul double %i.pb, %i.pc
  %i.pe = call double @llvm.fmuladd.f64(double %i.pd, double %i.de, double %i.pa)
  %i.pf = call double @sqrt(double noundef %i.pe) #20
  %i.pg = fsub double %i.pf, %i.bd
  %i.ph = fdiv double %i.pg, %i.bd
  %i.pi = call double @llvm.fabs.f64(double %i.ph)
  %i.pj = fcmp ogt double %i.pi, %i.om
  br i1 %i.pj, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.pk = fmul <2 x double> %i.nv, %i.bu          ; 4 uses
  %i.pl = fmul double %i.nr, %i.bp                ; 4 uses
  %i.pm = fmul <2 x double> %i.nw, %i.cg
  %i.pn = fmul <2 x double> %i.nw, %i.ci
  %i.po = fmul <2 x double> %i.nw, %i.cl
  %i.pp = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.pq = fsub <2 x double> %i.pm, %i.pp          ; 5 uses
  %i.pr = insertelement <2 x double> poison, double %i.pl, i64 0
  %i.ps = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pt = fsub <2 x double> %i.pn, %i.ps          ; 4 uses
  %i.pu = shufflevector <2 x double> %i.pk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pv = fsub <2 x double> %i.po, %i.pu          ; 4 uses
  %52 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.pq, <2 x double> zeroinitializer)
  %i.pw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pt, <2 x double> %i.pt, <2 x double> %52)
  %i.px = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pv, <2 x double> %i.pv, <2 x double> %i.pw)
  %i.py = call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.px)
  %i.pz = fdiv <2 x double> splat (double 1.000000e+00), %i.py ; 4 uses
  %i.qa = shufflevector <2 x double> %i.pq, <2 x double> %i.pv, <2 x i32> <i32 1, i32 3>
  %i.qb = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qc = fmul <2 x double> %i.qa, %i.qb          ; 2 uses
  %i.qd = shufflevector <2 x double> %i.pv, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.qe = fmul <2 x double> %i.qd, %i.pz          ; 5 uses
  %i.qf = shufflevector <2 x double> %i.qe, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qg = extractelement <2 x double> %i.qe, i64 1 ; 3 uses
  %i.qh = fneg double %i.qg
  %i.qi = fmul <2 x double> %i.pq, %i.pz          ; 5 uses
  %i.qj = fneg <2 x double> %i.qc
  %i.qk = shufflevector <2 x double> %i.pt, <2 x double> %i.pq, <2 x i32> <i32 0, i32 2>
  %i.ql = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qm = fmul <2 x double> %i.qk, %i.ql          ; 4 uses
  %i.qn = fmul <2 x double> %i.qm, %i.qj
  %i.qo = extractelement <2 x double> %i.qe, i64 0 ; 2 uses
  %i.qp = fmul double %i.qo, %i.qh
  %i.qq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qf, <2 x double> %i.qi, <2 x double> %i.qn) ; 2 uses
  %i.qr = extractelement <2 x double> %i.qm, i64 0 ; 2 uses
  %i.qs = extractelement <2 x double> %i.qc, i64 1 ; 3 uses
  %i.qt = call double @llvm.fmuladd.f64(double %i.qr, double %i.qs, double %i.qp) ; 3 uses
  %53 = call double @llvm.fmuladd.f64(double %i.qt, double %i.qt, double 0.000000e+00)
  %i.qu = extractelement <2 x double> %i.qq, i64 1 ; 3 uses
  %i.qv = call double @llvm.fmuladd.f64(double %i.qu, double %i.qu, double %53)
  %i.qw = extractelement <2 x double> %i.qq, i64 0 ; 3 uses
  %i.qx = call noundef double @llvm.fmuladd.f64(double %i.qw, double %i.qw, double %i.qv)
  %sqrt.i344 = call noundef double @llvm.sqrt.f64(double %i.qx)
  %i.qy = fdiv double 1.000000e+00, %sqrt.i344    ; 3 uses
  %i.qz = fmul double %i.qt, %i.qy                ; 5 uses
  %i.ra = fmul double %i.qu, %i.qy                ; 5 uses
  %i.rb = fmul double %i.qw, %i.qy                ; 5 uses
  %i.rc = fneg double %i.ra
  %i.rd = fmul double %i.qs, %i.rc
  %i.re = call double @llvm.fmuladd.f64(double %i.qg, double %i.rb, double %i.rd) ; 3 uses
  %i.rf = fneg double %i.rb
  %i.rg = extractelement <2 x double> %i.qi, i64 1 ; 2 uses
  %i.rh = fmul double %i.rg, %i.rf
  %i.ri = call double @llvm.fmuladd.f64(double %i.qs, double %i.qz, double %i.rh) ; 2 uses
  %i.rj = fneg double %i.qz
  %i.rk = fmul double %i.qg, %i.rj
  %i.rl = call double @llvm.fmuladd.f64(double %i.rg, double %i.ra, double %i.rk) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  br i1 %i.kh, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.sroa.7363.0 = phi double [ %i.ks, %bb.k ], [ 0.000000e+00, %bb.j ] ; 3 uses
  %i.rm = phi <2 x double> [ %i.kz, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.rn = phi <2 x double> [ %i.kv, %bb.k ], [ zeroinitializer, %bb.j ] ; 3 uses
  %i.ro = phi <2 x double> [ %i.la, %bb.k ], [ zeroinitializer, %bb.j ] ; 2 uses
  %i.rp = phi <2 x double> [ %i.lb, %bb.k ], [ zeroinitializer, %bb.j ] ; 4 uses
  %i.rq = extractelement <2 x double> %i.rp, i64 1
  %i.rr = call double @llvm.fmuladd.f64(double %i.qz, double %i.rq, double 0.000000e+00)
  %i.rs = extractelement <2 x double> %i.qi, i64 0
  %i.rt = call double @llvm.fmuladd.f64(double %i.rs, double %.sroa.7363.0, double %i.rr)
  %i.ru = insertelement <2 x double> poison, double %i.qz, i64 0
  %i.rv = insertelement <2 x double> %i.ru, double %i.re, i64 1
  %i.rw = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.rt, i64 1
  %i.rx = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rv, <2 x double> %i.rm, <2 x double> %i.rw) ; 2 uses
  %i.ry = insertelement <2 x double> %i.qi, double %i.qz, i64 1
  %i.rz = insertelement <2 x double> %i.rx, double 0.000000e+00, i64 1
  %i.sa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> %i.rn, <2 x double> %i.rz)
  %i.sb = shufflevector <2 x double> %i.sa, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sc = insertelement <2 x double> %i.qi, double %i.re, i64 1
  %i.sd = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sc, <2 x double> %i.ro, <2 x double> %i.sb) ; 2 uses
  %i.se = shufflevector <2 x double> %i.rx, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3>
  store <2 x double> %i.se, ptr %3, align 16, !tbaa !33, !alias.scope !133
  %i.sf = insertelement <2 x double> poison, double %i.re, i64 0
  %i.sg = insertelement <2 x double> %i.sf, double %i.ra, i64 1
  %i.sh = insertelement <2 x double> %i.sd, double 0.000000e+00, i64 1
  %i.si = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sg, <2 x double> %i.rp, <2 x double> %i.sh) ; 2 uses
  %i.sj = extractelement <2 x double> %i.si, i64 1
  %i.sk = call double @llvm.fmuladd.f64(double %i.qr, double %.sroa.7363.0, double %i.sj)
  %i.sl = insertelement <2 x double> poison, double %i.ra, i64 0
  %i.sm = insertelement <2 x double> %i.sl, double %i.ri, i64 1
  %i.sn = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.sk, i64 1
  %i.so = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sm, <2 x double> %i.rm, <2 x double> %i.sn) ; 2 uses
  %i.sp = shufflevector <2 x double> %i.si, <2 x double> %i.so, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.sp, ptr %i.ld, align 16, !tbaa !33, !alias.scope !133
  %i.sq = shufflevector <2 x double> %i.ro, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.sr = insertelement <2 x double> %i.qm, double %i.ra, i64 1
  %i.ss = insertelement <2 x double> %i.so, double 0.000000e+00, i64 1
  %i.st = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sr, <2 x double> %i.rn, <2 x double> %i.ss)
  %i.su = insertelement <2 x double> poison, double %i.ri, i64 0 ; 2 uses
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> %i.qm, <2 x i32> <i32 0, i32 2>
  %i.sw = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sv, <2 x double> %i.sq, <2 x double> %i.st) ; 2 uses
  %i.sx = extractelement <2 x double> %i.rp, i64 0
  %i.sy = insertelement <2 x double> %i.su, double %i.rb, i64 1
  %i.sz = shufflevector <2 x double> %i.sw, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ta = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sy, <2 x double> %i.rp, <2 x double> %i.sz) ; 2 uses
  %i.tb = extractelement <2 x double> %i.ta, i64 1
  %i.tc = call double @llvm.fmuladd.f64(double %i.qo, double %.sroa.7363.0, double %i.tb)
  %i.td = insertelement <2 x double> poison, double %i.rb, i64 0
  %i.te = insertelement <2 x double> %i.td, double %i.rl, i64 1
  %i.tf = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.tc, i64 1
  %i.tg = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.te, <2 x double> %i.rm, <2 x double> %i.tf) ; 2 uses
  %i.th = insertelement <2 x double> %i.qe, double %i.rb, i64 1
  %i.ti = insertelement <2 x double> %i.tg, double 0.000000e+00, i64 1
  %i.tj = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> %i.rn, <2 x double> %i.ti)
  %i.tk = insertelement <2 x double> poison, double %i.rl, i64 0
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> %i.qe, <2 x i32> <i32 0, i32 2>
  %i.tm = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tl, <2 x double> %i.sq, <2 x double> %i.tj) ; 2 uses
  %i.tn = shufflevector <2 x double> %i.sw, <2 x double> %i.ta, <2 x i32> <i32 0, i32 2>
  %i.to = shufflevector <2 x double> %i.tg, <2 x double> %i.tm, <2 x i32> <i32 1, i32 2>
  %i.tp = shufflevector <2 x double> %i.tn, <2 x double> %i.to, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x double> %i.tp, ptr %i.lf, align 16, !tbaa !33, !alias.scope !133
  %i.tq = extractelement <2 x double> %i.tm, i64 1
  %i.tr = call double @llvm.fmuladd.f64(double %i.rl, double %i.sx, double %i.tq)
  store double %i.tr, ptr %i.li, align 16, !tbaa !33, !alias.scope !133
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  store i32 -1056833530, ptr %5, align 8, !tbaa !54
  store ptr %3, ptr %i.lk, align 8, !tbaa !55
  store i64 12884901891, ptr %i.lj, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  store i32 -1040056314, ptr %6, align 8, !tbaa !54
  store ptr %4, ptr %i.ll, align 8, !tbaa !55
  store i64 12884901889, ptr %i.lm, align 8, !tbaa !24
  %i.ts = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.ts)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  store i32 -1056833530, ptr %7, align 8, !tbaa !54
  store ptr %4, ptr %i.lo, align 8, !tbaa !55
  store i64 12884901889, ptr %i.ln, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  store i32 -1040056314, ptr %8, align 8, !tbaa !54
  store ptr %3, ptr %i.lp, align 8, !tbaa !55
  store i64 12884901891, ptr %i.lq, align 8, !tbaa !24
  %i.tt = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN2cv7noArrayEv()
  call void @_ZN2cv9RodriguesERKNS_11_InputArrayERKNS_12_OutputArrayES5_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.tt)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.experimental.noalias.scope.decl(metadata !134)
  %i.tu = load <2 x double>, ptr %i.lr, align 8, !tbaa !33, !noalias !134 ; 5 uses
  %i.tv = extractelement <2 x double> %i.tu, i64 0
  %i.tw = load double, ptr %i.ld, align 16, !tbaa !33, !noalias !134 ; 3 uses
  %i.tx = load double, ptr %i.lg, align 8, !tbaa !33, !noalias !134 ; 4 uses
  %i.ty = shufflevector <2 x double> %i.tu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.tz = load double, ptr %i.li, align 16, !tbaa !33, !noalias !134 ; 3 uses
  %i.ua = load <2 x double>, ptr %i.ls, align 8, !tbaa !33, !noalias !134 ; 4 uses
  %i.ub = shufflevector <2 x double> %i.tu, <2 x double> %i.ua, <2 x i32> <i32 1, i32 2>
  %i.uc = insertelement <2 x double> poison, double %i.tz, i64 0
  %i.ud = load double, ptr %i.lu, align 8, !tbaa !33, !noalias !134 ; 2 uses
  %i.ue = extractelement <2 x double> %i.ua, i64 1 ; 2 uses
  %i.uf = load <2 x double>, ptr %i.lv, align 8, !tbaa !33, !noalias !134 ; 4 uses
  %i.ug = call double @llvm.fmuladd.f64(double %i.ue, double %i.tw, double 0.000000e+00)
  %i.uh = call double @llvm.fmuladd.f64(double %i.ud, double %i.tx, double %i.ug)
  %i.ui = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.uh, i64 0
  %i.uj = extractelement <2 x double> %i.uf, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %10, i8 0, i64 96, i1 false), !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  store i32 -1056833530, ptr %11, align 8, !tbaa !54
  store ptr %9, ptr %i.md, align 8, !tbaa !55
  store i64 12884901891, ptr %i.mc, align 8, !tbaa !24
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #20
  %i.uk = load double, ptr %3, align 16, !tbaa !33, !noalias !134 ; 2 uses
  %i.ul = load double, ptr %i.lc, align 8, !tbaa !33, !noalias !134 ; 4 uses
  %i.um = call double @llvm.fmuladd.f64(double %i.tv, double %i.ul, double 0.000000e+00)
  %i.un = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.um, i64 1
  %i.uo = insertelement <2 x double> %i.uc, double %i.uk, i64 1 ; 2 uses
  %i.up = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uf, <2 x double> %i.uo, <2 x double> %i.ui) ; 2 uses
  %i.uq = extractelement <2 x double> %i.up, i64 0 ; 2 uses
  store double %i.uq, ptr %i.lx, align 8, !tbaa !33, !alias.scope !134
  %i.ur = fneg double %i.uq
  %i.us = extractelement <2 x double> %i.pk, i64 0 ; 2 uses
  %i.ut = insertelement <2 x double> poison, double %i.uk, i64 0
  %i.uu = insertelement <2 x double> %i.ut, double %i.tw, i64 1 ; 2 uses
  %i.uv = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uu, <2 x double> %i.pp, <2 x double> zeroinitializer) ; 2 uses
  %i.uw = extractelement <2 x double> %i.uv, i64 1
  %i.ux = call double @llvm.fmuladd.f64(double %i.tx, double %i.pl, double %i.uw)
  %i.uy = call double @llvm.fmuladd.f64(double %i.tz, double %i.us, double %i.ux)
  %i.uz = load <2 x double>, ptr %i.le, align 8, !tbaa !33, !noalias !134 ; 6 uses
  %i.va = load <2 x double>, ptr %i.lh, align 16, !tbaa !33, !noalias !134 ; 6 uses
  %i.vb = insertelement <2 x double> %i.uz, double %i.tw, i64 0
  %i.vc = insertelement <2 x double> %i.va, double %i.tx, i64 0
  %i.vd = extractelement <2 x double> %i.uz, i64 0
  %i.ve = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tu, <2 x double> %i.vb, <2 x double> %i.un)
  %i.vf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.vc, <2 x double> %i.ve) ; 3 uses
  %i.vg = insertelement <2 x double> %i.vf, double 0.000000e+00, i64 1
  %i.vh = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ua, <2 x double> %i.uo, <2 x double> %i.vg) ; 3 uses
  %i.vi = extractelement <2 x double> %i.uz, i64 1
  %i.vj = extractelement <2 x double> %i.va, i64 1
  %i.vk = load double, ptr %i.ly, align 8, !tbaa !33, !noalias !134 ; 2 uses
  %i.vl = load double, ptr %i.lz, align 8, !tbaa !33, !noalias !134 ; 2 uses
  %i.vm = shufflevector <2 x double> %i.tu, <2 x double> %i.uf, <2 x i32> <i32 0, i32 3>
  %i.vn = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vm, <2 x double> %i.uu, <2 x double> zeroinitializer)
  %i.vo = insertelement <2 x double> %i.ty, double %i.vk, i64 1
  %i.vp = insertelement <2 x double> %i.uz, double %i.tx, i64 1
  %i.vq = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vo, <2 x double> %i.vp, <2 x double> %i.vn)
  %i.vr = insertelement <2 x double> %i.ua, double %i.vl, i64 1
  %i.vs = insertelement <2 x double> %i.va, double %i.tz, i64 1
  %i.vt = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vr, <2 x double> %i.vs, <2 x double> %i.vq) ; 2 uses
  %i.vu = extractelement <2 x double> %i.vt, i64 0 ; 2 uses
  store double %i.vu, ptr %9, align 8, !tbaa !33, !alias.scope !134
  %i.vv = extractelement <2 x double> %i.vt, i64 1 ; 2 uses
  store double %i.vv, ptr %i.mb, align 8, !tbaa !33, !alias.scope !134
  %i.vw = fneg double %i.vv
  %i.vx = call double @llvm.fmuladd.f64(double %i.uj, double %i.ul, double 0.000000e+00)
  %i.vy = insertelement <2 x double> poison, double %i.vk, i64 0
  %i.vz = shufflevector <2 x double> %i.vy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wa = shufflevector <2 x double> %i.up, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.wb = insertelement <2 x double> %i.wa, double %i.vx, i64 1
  %i.wc = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.vz, <2 x double> %i.uz, <2 x double> %i.wb)
  %i.wd = insertelement <2 x double> poison, double %i.vl, i64 0
  %i.we = shufflevector <2 x double> %i.wd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.wf = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.we, <2 x double> %i.va, <2 x double> %i.wc) ; 3 uses
  store <2 x double> %i.wf, ptr %i.ma, align 8, !tbaa !33, !alias.scope !134
  %i.wg = fneg double %i.vu
  %i.wh = extractelement <2 x double> %i.wf, i64 0
  %i.wi = fneg double %i.wh
  %i.wj = extractelement <2 x double> %i.wf, i64 1
  %i.wk = fneg double %i.wj
  %i.wl = extractelement <2 x double> %i.uv, i64 0
  %i.wm = call double @llvm.fmuladd.f64(double %i.vd, double %i.pl, double %i.wl)
  %i.wn = insertelement <2 x double> %i.va, double %i.ul, i64 1
  %i.wo = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.wm, i64 0
end_hunk_1
