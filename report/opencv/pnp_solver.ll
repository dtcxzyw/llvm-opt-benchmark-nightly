Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/pnp_solver?download=true
inline.NumInlined: 753
inline.NumDeleted: 345
loop-unroll.NumCompletelyUnrolled: 65
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv:bb.a
_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE19_M_release_last_useEv.exit: ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i, %bb.d
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac24PnPMinimalSolver6PtsImplESaIvELN9__gnu_cxx12_Lock_policyE2EED0Ev(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac24PnPMinimalSolver6PtsImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_disposeEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %i.a) #20, !inline_history !98
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac24PnPMinimalSolver6PtsImplESaIvELN9__gnu_cxx12_Lock_policyE2EE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(232) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN2cv4usac24PnPMinimalSolver6PtsImplESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 232) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNSt23_Sp_counted_ptr_inplaceIN2cv4usac24PnPMinimalSolver6PtsImplESaIvELN9__gnu_cxx12_Lock_policyE2EE14_M_get_deleterERKSt9type_info(ptr noundef nonnull align 8 dereferenceable(232) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 comdat align 2 {
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

declare void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #7

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac24PnPMinimalSolver6PtsImplD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac24PnPMinimalSolver6PtsImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) #20
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv4usac24PnPMinimalSolver6PtsImplD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 88) (i8, ptr @_ZTVN2cv4usac24PnPMinimalSolver6PtsImplE, i64 16), ptr %0, align 8, !tbaa !15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN2cv3MatD1Ev(ptr noundef nonnull align 8 dead_on_return(208) dereferenceable(208) %i.a) #20, !inline_history !99
  tail call void @_ZN2cv9AlgorithmD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(216) %0) #20, !inline_history !99
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 216) #21
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm5clearEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNK2cv9Algorithm5writeERNS_11FileStorageE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2cv9Algorithm4readERKNS_8FileNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2cv9Algorithm5emptyEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i1 false
}

declare void @_ZNK2cv9Algorithm4saveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #7

declare void @_ZNK2cv9Algorithm14getDefaultNameB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZNK2cv4usac24PnPMinimalSolver6PtsImpl8estimateERKSt6vectorIiSaIiEERS2_INS_3MatESaIS7_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
.noexc:
  %3 = alloca %"class.std::vector", align 8       ; 11 uses
  %4 = alloca %"class.std::vector", align 8       ; 11 uses
  %5 = alloca %"class.cv::Mat", align 8           ; 8 uses
  %6 = alloca %"class.cv::Mat_", align 8          ; 6 uses
  %7 = alloca [1 x %"class.cv::Mat"], align 8     ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.a = tail call noalias noundef nonnull dereferenceable(480) ptr @_Znwm(i64 noundef 480) #19 ; 33 uses
  store ptr %i.a, ptr %3, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 480 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !31
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(480) %i.a, i8 0, i64 480, i1 false), !tbaa !33
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.d, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.e = invoke noalias noundef nonnull dereferenceable(448) ptr @_Znwm(i64 noundef 448) #19
          to label %bb.b unwind label %bb.a       ; 39 uses

.preheader177:                                    ; preds = %bb.b
  %i.f = load ptr, ptr %3, align 8, !tbaa !30     ; 8 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !30     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 416
  %i.i = load double, ptr %i.h, align 8, !tbaa !33
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 384
  store double %i.i, ptr %i.j, align 8, !tbaa !33
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 424
  %i.l = load double, ptr %i.k, align 8, !tbaa !33
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 392
  store double %i.l, ptr %i.m, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 432
  %i.o = load double, ptr %i.n, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 400
  store double %i.o, ptr %i.p, align 8, !tbaa !33
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 440
  %i.r = load double, ptr %i.q, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  store double %i.r, ptr %i.s, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 448
  %i.u = load double, ptr %i.t, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 416
  store double %i.u, ptr %i.v, align 8, !tbaa !33
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 456
  %i.x = load double, ptr %i.w, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 424
  store double %i.x, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 464
  %i.aa = load double, ptr %i.z, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 432
  store double %i.aa, ptr %i.ab, align 8, !tbaa !33
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 472
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 440
  store double %i.ad, ptr %i.ae, align 8, !tbaa !33
  %i.af = invoke noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24) %4, i32 noundef 7, i32 noundef 8)
          to label %bb.d unwind label %bb.e

bb.a:                                             ; preds = %.noexc
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit152

bb.b:                                             ; preds = %.noexc
  store ptr %i.e, ptr %4, align 8, !tbaa !30
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 448 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.aj, i8 0, i64 64, i1 false), !tbaa !33
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ah, ptr %i.ak, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !40 ; 6 uses
  %i.an = load ptr, ptr %1, align 8, !tbaa !43    ; 6 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !24
  %i.ap = mul nsw i32 %i.ao, 5
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr [4 x i8], ptr %i.am, i64 %i.aq ; 3 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 8
  %i.at = getelementptr i8, ptr %i.ar, i64 16
  %i.au = load float, ptr %i.at, align 4, !tbaa !45
  %8 = load <2 x float>, ptr %i.as, align 4, !tbaa !45
  %9 = fpext <2 x float> %8 to <2 x double>       ; 4 uses
  store <2 x double> %9, ptr %i.a, align 8, !tbaa !33
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 1.000000e+00, ptr %i.aw, align 8, !tbaa !33
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store <2 x double> %9, ptr %i.e, align 8, !tbaa !33
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store double 1.000000e+00, ptr %i.bb, align 8, !tbaa !33
  %i.bc = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bd = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.bf = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !24
  %i.bh = mul nsw i32 %i.bg, 5
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr [4 x i8], ptr %i.am, i64 %i.bi ; 3 uses
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = getelementptr i8, ptr %i.bj, i64 16
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !45
  %i.bn = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %10 = load <2 x float>, ptr %i.bk, align 4, !tbaa !45
  %11 = fpext <2 x float> %10 to <2 x double>     ; 4 uses
  store <2 x double> %11, ptr %i.bn, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.bp = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double 1.000000e+00, ptr %i.bp, align 8, !tbaa !33
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store <2 x double> %11, ptr %i.bt, align 8, !tbaa !33
  %i.bu = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.bv = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  store double 1.000000e+00, ptr %i.bv, align 8, !tbaa !33
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 96
  %i.bx = load <2 x float>, ptr %i.ar, align 4, !tbaa !45
  %i.by = insertelement <2 x float> poison, float %i.au, i64 0
  %i.bz = insertelement <2 x float> %i.by, float %i.bm, i64 1
  %i.ca = fpext <2 x float> %i.bz to <2 x double> ; 3 uses
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.cc = extractelement <2 x double> %i.ca, i64 0 ; 2 uses
  store double %i.cc, ptr %i.av, align 8, !tbaa !33
  %i.cd = load <2 x float>, ptr %i.bj, align 4, !tbaa !45
  %i.ce = shufflevector <2 x float> %i.bx, <2 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cf = fpext <4 x float> %i.ce to <4 x double>
  %i.cg = fneg <4 x double> %i.cf                 ; 9 uses
  %i.ch = shufflevector <4 x double> %i.cg, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %12 = shufflevector <4 x double> %i.cg, <4 x double> poison, <2 x i32> zeroinitializer
  %13 = fmul <2 x double> %12, %9
  store <2 x double> %13, ptr %i.ax, align 8, !tbaa !33
  %14 = fmul <4 x double> %i.cb, %i.ch            ; 4 uses
  %15 = extractelement <4 x double> %14, i64 0
  store double %15, ptr %i.ay, align 8, !tbaa !33
  %16 = extractelement <4 x double> %i.cg, i64 0
  store double %16, ptr %i.az, align 8, !tbaa !33
  store double %i.cc, ptr %i.ba, align 8, !tbaa !33
  %i.ci = shufflevector <4 x double> %i.cg, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cj = fmul <2 x double> %i.ci, %9
  store <2 x double> %i.cj, ptr %i.bc, align 8, !tbaa !33
  %i.ck = extractelement <4 x double> %14, i64 2
  store double %i.ck, ptr %i.bd, align 8, !tbaa !33
  %i.cl = extractelement <4 x double> %i.cg, i64 1
  store double %i.cl, ptr %i.be, align 8, !tbaa !33
  %i.cm = extractelement <2 x double> %i.ca, i64 1 ; 2 uses
  store double %i.cm, ptr %i.bo, align 8, !tbaa !33
  %17 = shufflevector <4 x double> %i.cg, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %18 = fmul <2 x double> %17, %11
  store <2 x double> %18, ptr %i.bq, align 8, !tbaa !33
  %i.cn = extractelement <4 x double> %14, i64 1
  store double %i.cn, ptr %i.br, align 8, !tbaa !33
  %19 = extractelement <4 x double> %i.cg, i64 2
  store double %19, ptr %i.bs, align 8, !tbaa !33
  store double %i.cm, ptr %i.bu, align 8, !tbaa !33
  %i.co = shufflevector <4 x double> %i.cg, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.cp = fmul <2 x double> %i.co, %11
  store <2 x double> %i.cp, ptr %i.bw, align 8, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %i.e, i64 112
  %i.cr = extractelement <4 x double> %14, i64 3
  store double %i.cr, ptr %i.cq, align 8, !tbaa !33
  %i.cs = getelementptr inbounds nuw i8, ptr %i.e, i64 120
  %i.ct = extractelement <4 x double> %i.cg, i64 3
  store double %i.ct, ptr %i.cs, align 8, !tbaa !33
  %i.cu = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !24
  %i.cw = mul nsw i32 %i.cv, 5
  %i.cx = sext i32 %i.cw to i64
  %i.cy = getelementptr [4 x i8], ptr %i.am, i64 %i.cx ; 3 uses
  %i.cz = getelementptr i8, ptr %i.cy, i64 8
  %i.da = getelementptr i8, ptr %i.cy, i64 16
  %i.db = load float, ptr %i.da, align 4, !tbaa !45
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 192
  %20 = load <2 x float>, ptr %i.cz, align 4, !tbaa !45
  %21 = fpext <2 x float> %20 to <2 x double>     ; 4 uses
  store <2 x double> %21, ptr %i.dc, align 8, !tbaa !33
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store double 1.000000e+00, ptr %i.de, align 8, !tbaa !33
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 256
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 272
  %i.dh = getelementptr inbounds nuw i8, ptr %i.a, i64 280
  %i.di = getelementptr inbounds nuw i8, ptr %i.e, i64 128
  store <2 x double> %21, ptr %i.di, align 8, !tbaa !33
  %i.dj = getelementptr inbounds nuw i8, ptr %i.e, i64 144
  %i.dk = getelementptr inbounds nuw i8, ptr %i.e, i64 152
  store double 1.000000e+00, ptr %i.dk, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.e, i64 160
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.dn = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.do = getelementptr inbounds nuw i8, ptr %i.an, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !24
  %i.dq = mul nsw i32 %i.dp, 5
  %i.dr = sext i32 %i.dq to i64
  %i.ds = getelementptr [4 x i8], ptr %i.am, i64 %i.dr ; 3 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 8
  %i.du = getelementptr i8, ptr %i.ds, i64 16
  %i.dv = load float, ptr %i.du, align 4, !tbaa !45
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 288
  %22 = load <2 x float>, ptr %i.dt, align 4, !tbaa !45
  %23 = fpext <2 x float> %22 to <2 x double>     ; 4 uses
  store <2 x double> %23, ptr %i.dw, align 8, !tbaa !33
  %i.dx = getelementptr inbounds nuw i8, ptr %i.a, i64 304
  %i.dy = getelementptr inbounds nuw i8, ptr %i.a, i64 312
  store double 1.000000e+00, ptr %i.dy, align 8, !tbaa !33
  %i.dz = getelementptr inbounds nuw i8, ptr %i.a, i64 352
  %i.ea = getelementptr inbounds nuw i8, ptr %i.a, i64 368
  %i.eb = getelementptr inbounds nuw i8, ptr %i.a, i64 376
  %i.ec = getelementptr inbounds nuw i8, ptr %i.e, i64 192
  store <2 x double> %23, ptr %i.ec, align 8, !tbaa !33
  %i.ed = getelementptr inbounds nuw i8, ptr %i.e, i64 208
  %i.ee = getelementptr inbounds nuw i8, ptr %i.e, i64 216
  store double 1.000000e+00, ptr %i.ee, align 8, !tbaa !33
  %i.ef = getelementptr inbounds nuw i8, ptr %i.e, i64 224
  %i.eg = load <2 x float>, ptr %i.cy, align 4, !tbaa !45
  %i.eh = insertelement <2 x float> poison, float %i.db, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.dv, i64 1
  %i.ej = fpext <2 x float> %i.ei to <2 x double> ; 3 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.el = extractelement <2 x double> %i.ej, i64 0 ; 2 uses
  store double %i.el, ptr %i.dd, align 8, !tbaa !33
  %i.em = load <2 x float>, ptr %i.ds, align 4, !tbaa !45
  %i.en = shufflevector <2 x float> %i.eg, <2 x float> %i.em, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.eo = fpext <4 x float> %i.en to <4 x double>
  %i.ep = fneg <4 x double> %i.eo                 ; 9 uses
  %i.eq = shufflevector <4 x double> %i.ep, <4 x double> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  %24 = shufflevector <4 x double> %i.ep, <4 x double> poison, <2 x i32> zeroinitializer
  %25 = fmul <2 x double> %24, %21
  store <2 x double> %25, ptr %i.df, align 8, !tbaa !33
  %26 = fmul <4 x double> %i.ek, %i.eq            ; 4 uses
  %27 = extractelement <4 x double> %26, i64 0
  store double %27, ptr %i.dg, align 8, !tbaa !33
  %28 = extractelement <4 x double> %i.ep, i64 0
  store double %28, ptr %i.dh, align 8, !tbaa !33
  store double %i.el, ptr %i.dj, align 8, !tbaa !33
  %i.er = shufflevector <4 x double> %i.ep, <4 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.es = fmul <2 x double> %i.er, %21
  store <2 x double> %i.es, ptr %i.dl, align 8, !tbaa !33
  %i.et = extractelement <4 x double> %26, i64 2
  store double %i.et, ptr %i.dm, align 8, !tbaa !33
  %i.eu = extractelement <4 x double> %i.ep, i64 1
  store double %i.eu, ptr %i.dn, align 8, !tbaa !33
  %i.ev = extractelement <2 x double> %i.ej, i64 1 ; 2 uses
  store double %i.ev, ptr %i.dx, align 8, !tbaa !33
  %29 = shufflevector <4 x double> %i.ep, <4 x double> poison, <2 x i32> <i32 2, i32 2>
  %30 = fmul <2 x double> %29, %23
  store <2 x double> %30, ptr %i.dz, align 8, !tbaa !33
  %i.ew = extractelement <4 x double> %26, i64 1
  store double %i.ew, ptr %i.ea, align 8, !tbaa !33
  %31 = extractelement <4 x double> %i.ep, i64 2
  store double %31, ptr %i.eb, align 8, !tbaa !33
  store double %i.ev, ptr %i.ed, align 8, !tbaa !33
  %i.ex = shufflevector <4 x double> %i.ep, <4 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ey = fmul <2 x double> %i.ex, %23
  store <2 x double> %i.ey, ptr %i.ef, align 8, !tbaa !33
  %i.ez = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.fa = extractelement <4 x double> %26, i64 3
  store double %i.fa, ptr %i.ez, align 8, !tbaa !33
  %i.fb = getelementptr inbounds nuw i8, ptr %i.e, i64 248
  %i.fc = extractelement <4 x double> %i.ep, i64 3
  store double %i.fc, ptr %i.fb, align 8, !tbaa !33
  %i.fd = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.fe = load i32, ptr %i.fd, align 4, !tbaa !24
  %i.ff = mul nsw i32 %i.fe, 5
  %i.fg = sext i32 %i.ff to i64
  %i.fh = getelementptr [4 x i8], ptr %i.am, i64 %i.fg ; 4 uses
  %i.fi = getelementptr i8, ptr %i.fh, i64 4
  %i.fj = load float, ptr %i.fi, align 4, !tbaa !45
  %i.fk = fpext float %i.fj to double
  %i.fl = getelementptr i8, ptr %i.fh, i64 8
  %i.fm = getelementptr i8, ptr %i.fh, i64 16
  %i.fn = load float, ptr %i.fm, align 4, !tbaa !45
  %i.fo = fpext float %i.fn to double             ; 4 uses
  %i.fp = load float, ptr %i.fh, align 4, !tbaa !45
  %i.fq = fpext float %i.fp to double
  %i.fr = getelementptr inbounds nuw i8, ptr %i.a, i64 384
  %32 = load <2 x float>, ptr %i.fl, align 4, !tbaa !45
  %33 = fpext <2 x float> %32 to <2 x double>     ; 4 uses
  store <2 x double> %33, ptr %i.fr, align 8, !tbaa !33
  %i.fs = getelementptr inbounds nuw i8, ptr %i.a, i64 400
  store double %i.fo, ptr %i.fs, align 8, !tbaa !33
  %i.ft = getelementptr inbounds nuw i8, ptr %i.a, i64 408
  store double 1.000000e+00, ptr %i.ft, align 8, !tbaa !33
  %i.fu = fneg double %i.fq                       ; 3 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.a, i64 448
  %34 = insertelement <2 x double> poison, double %i.fu, i64 0
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> zeroinitializer
  %36 = fmul <2 x double> %35, %33
  store <2 x double> %36, ptr %i.fv, align 8, !tbaa !33
  %37 = fmul double %i.fo, %i.fu
  %38 = getelementptr inbounds nuw i8, ptr %i.a, i64 464
  store double %37, ptr %38, align 8, !tbaa !33
  %39 = getelementptr inbounds nuw i8, ptr %i.a, i64 472
  store double %i.fu, ptr %39, align 8, !tbaa !33
  %40 = getelementptr inbounds nuw i8, ptr %i.e, i64 256
  store <2 x double> %33, ptr %40, align 8, !tbaa !33
  %i.fw = getelementptr inbounds nuw i8, ptr %i.e, i64 272
  store double %i.fo, ptr %i.fw, align 8, !tbaa !33
  %i.fx = getelementptr inbounds nuw i8, ptr %i.e, i64 280
  store double 1.000000e+00, ptr %i.fx, align 8, !tbaa !33
  %i.fy = fneg double %i.fk                       ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.e, i64 288
  %i.ga = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x double> %i.gb, %33
  store <2 x double> %i.gc, ptr %i.fz, align 8, !tbaa !33
  %i.gd = fmul double %i.fy, %i.fo
  %i.ge = getelementptr inbounds nuw i8, ptr %i.e, i64 304
  store double %i.gd, ptr %i.ge, align 8, !tbaa !33
  %i.gf = getelementptr inbounds nuw i8, ptr %i.e, i64 312
  store double %i.fy, ptr %i.gf, align 8, !tbaa !33
  %i.gg = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.gh = load i32, ptr %i.gg, align 4, !tbaa !24
  %i.gi = mul nsw i32 %i.gh, 5
  %i.gj = sext i32 %i.gi to i64
  %i.gk = getelementptr [4 x i8], ptr %i.am, i64 %i.gj ; 3 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 16
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !45
  %i.gn = fpext float %i.gm to double             ; 2 uses
  %i.go = getelementptr i8, ptr %i.gk, i64 8
  %i.gp = getelementptr i8, ptr %i.gk, i64 4
  %i.gq = load float, ptr %i.gp, align 4, !tbaa !45
  %i.gr = fpext float %i.gq to double
  %i.gs = getelementptr inbounds nuw i8, ptr %i.e, i64 320
  %i.gt = load <2 x float>, ptr %i.go, align 4, !tbaa !45
  %i.gu = fpext <2 x float> %i.gt to <2 x double> ; 2 uses
  store <2 x double> %i.gu, ptr %i.gs, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 336
  store double %i.gn, ptr %i.gv, align 8, !tbaa !33
  %i.gw = getelementptr inbounds nuw i8, ptr %i.e, i64 344
  store double 1.000000e+00, ptr %i.gw, align 8, !tbaa !33
  %i.gx = fneg double %i.gr                       ; 3 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.e, i64 352
  %i.gz = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.ha = shufflevector <2 x double> %i.gz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x double> %i.ha, %i.gu
  store <2 x double> %i.hb, ptr %i.gy, align 8, !tbaa !33
  %i.hc = fmul double %i.gx, %i.gn
  %i.hd = getelementptr inbounds nuw i8, ptr %i.e, i64 368
  store double %i.hc, ptr %i.hd, align 8, !tbaa !33
  %i.he = getelementptr inbounds nuw i8, ptr %i.e, i64 376
  store double %i.gx, ptr %i.he, align 8, !tbaa !33
  %i.hf = invoke noundef zeroext i1 @_ZN2cv4usac4Math24eliminateUpperTriangularERSt6vectorIdSaIdEEii(ptr noundef nonnull align 8 dereferenceable(24) %3, i32 noundef 5, i32 noundef 12)
          to label %.preheader177 unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.d:                                             ; preds = %.preheader177
  br i1 %i.af, label %bb.f, label %bb.o

bb.e:                                             ; preds = %.preheader177
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  invoke void @_ZN2cv3MatC2Eiii(ptr noundef nonnull align 8 dereferenceable(208) %6, i32 noundef 3, i32 noundef 4, i32 noundef 6)
          to label %._crit_edge unwind label %bb.g

._crit_edge.1:                                    ; preds = %._crit_edge
  %i.hi = getelementptr inbounds nuw i8, ptr %i.mh, i64 368
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !33
  %i.hk = fneg double %i.hj
  %i.hl = call double @llvm.fmuladd.f64(double %i.hk, double %i.mn, double 0.000000e+00)
  %i.hm = getelementptr inbounds nuw i8, ptr %i.mh, i64 376
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !33
  %i.ho = fsub double %i.hl, %i.hn
  %i.hp = getelementptr inbounds nuw i8, ptr %i.mh, i64 360
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !33
  %i.hr = fdiv double %i.ho, %i.hq                ; 11 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.mf, i64 72
  store double %i.hr, ptr %i.hs, align 8, !tbaa !33
  %i.ht = fcmp uno double %i.hr, 0.000000e+00
  br i1 %i.ht, label %.loopexit174, label %._crit_edge.2

._crit_edge.2:                                    ; preds = %._crit_edge.1
  %i.hu = getelementptr inbounds nuw i8, ptr %i.mh, i64 296
  %i.hv = load <2 x double>, ptr %i.hu, align 8, !tbaa !33
  %i.hw = fneg <2 x double> %i.hv                 ; 2 uses
  %i.hx = extractelement <2 x double> %i.hw, i64 0
  %i.hy = call double @llvm.fmuladd.f64(double %i.hx, double %i.hr, double 0.000000e+00)
  %i.hz = extractelement <2 x double> %i.hw, i64 1
  %i.ia = call double @llvm.fmuladd.f64(double %i.hz, double %i.mn, double %i.hy)
  %i.ib = getelementptr inbounds nuw i8, ptr %i.mh, i64 312
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !33
  %i.id = fsub double %i.ia, %i.ic
  %i.ie = getelementptr inbounds nuw i8, ptr %i.mh, i64 288
  %i.if = load double, ptr %i.ie, align 8, !tbaa !33
  %i.ig = fdiv double %i.id, %i.if                ; 10 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.mf, i64 32
  %i.ii = getelementptr inbounds nuw i8, ptr %i.mf, i64 64
  store double %i.ig, ptr %i.ii, align 8, !tbaa !33
  %i.ij = fcmp uno double %i.ig, 0.000000e+00
  br i1 %i.ij, label %.loopexit174, label %._crit_edge.3

._crit_edge.3:                                    ; preds = %._crit_edge.2
  %i.ik = getelementptr inbounds nuw i8, ptr %i.mh, i64 232
  %i.il = load <2 x double>, ptr %i.ik, align 8, !tbaa !33
  %i.im = fneg <2 x double> %i.il                 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.mh, i64 224
  %i.io = load double, ptr %i.in, align 8, !tbaa !33
  %i.ip = fneg double %i.io
  %i.iq = call double @llvm.fmuladd.f64(double %i.ip, double %i.ig, double 0.000000e+00)
  %i.ir = extractelement <2 x double> %i.im, i64 0
  %i.is = call double @llvm.fmuladd.f64(double %i.ir, double %i.hr, double %i.iq)
  %i.it = extractelement <2 x double> %i.im, i64 1
  %i.iu = call double @llvm.fmuladd.f64(double %i.it, double %i.mn, double %i.is)
  %i.iv = getelementptr inbounds nuw i8, ptr %i.mh, i64 248
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !33
  %i.ix = fsub double %i.iu, %i.iw
  %i.iy = getelementptr inbounds nuw i8, ptr %i.mh, i64 216
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !33
  %i.ja = fdiv double %i.ix, %i.iz                ; 9 uses
  %i.jb = getelementptr inbounds nuw i8, ptr %i.mf, i64 24
  %i.jc = getelementptr inbounds nuw i8, ptr %i.mf, i64 56
  store double %i.ja, ptr %i.jc, align 8, !tbaa !33
  %i.jd = fcmp uno double %i.ja, 0.000000e+00
  br i1 %i.jd, label %.loopexit174, label %._crit_edge.4

._crit_edge.4:                                    ; preds = %._crit_edge.3
  %i.je = getelementptr inbounds nuw i8, ptr %i.mh, i64 168
  %i.jf = load <2 x double>, ptr %i.je, align 8, !tbaa !33
  %i.jg = fneg <2 x double> %i.jf                 ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.mh, i64 152
  %i.ji = load <2 x double>, ptr %i.jh, align 8, !tbaa !33
  %i.jj = fneg <2 x double> %i.ji                 ; 2 uses
  %i.jk = extractelement <2 x double> %i.jj, i64 0
  %i.jl = call double @llvm.fmuladd.f64(double %i.jk, double %i.ja, double 0.000000e+00)
  %i.jm = extractelement <2 x double> %i.jj, i64 1
  %i.jn = call double @llvm.fmuladd.f64(double %i.jm, double %i.ig, double %i.jl)
  %i.jo = extractelement <2 x double> %i.jg, i64 0
  %i.jp = call double @llvm.fmuladd.f64(double %i.jo, double %i.hr, double %i.jn)
  %i.jq = extractelement <2 x double> %i.jg, i64 1
  %i.jr = call double @llvm.fmuladd.f64(double %i.jq, double %i.mn, double %i.jp)
  %i.js = getelementptr inbounds nuw i8, ptr %i.mh, i64 184
  %i.jt = load double, ptr %i.js, align 8, !tbaa !33
  %i.ju = fsub double %i.jr, %i.jt
  %i.jv = getelementptr inbounds nuw i8, ptr %i.mh, i64 144
  %i.jw = load double, ptr %i.jv, align 8, !tbaa !33
  %i.jx = fdiv double %i.ju, %i.jw                ; 8 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.mf, i64 48
  store double %i.jx, ptr %i.jz, align 8, !tbaa !33
  %i.ka = fcmp uno double %i.jx, 0.000000e+00
  br i1 %i.ka, label %.loopexit174, label %._crit_edge.5

._crit_edge.5:                                    ; preds = %._crit_edge.4
  %i.kb = getelementptr inbounds nuw i8, ptr %i.mh, i64 104
  %i.kc = load <2 x double>, ptr %i.kb, align 8, !tbaa !33
  %i.kd = fneg <2 x double> %i.kc                 ; 2 uses
  %i.ke = getelementptr inbounds nuw i8, ptr %i.mh, i64 88
  %i.kf = load <2 x double>, ptr %i.ke, align 8, !tbaa !33
  %i.kg = fneg <2 x double> %i.kf                 ; 2 uses
  %i.kh = getelementptr inbounds nuw i8, ptr %i.mh, i64 80
  %i.ki = load double, ptr %i.kh, align 8, !tbaa !33
  %i.kj = fneg double %i.ki
  %i.kk = call double @llvm.fmuladd.f64(double %i.kj, double %i.jx, double 0.000000e+00)
  %i.kl = extractelement <2 x double> %i.kg, i64 0
  %i.km = call double @llvm.fmuladd.f64(double %i.kl, double %i.ja, double %i.kk)
  %i.kn = extractelement <2 x double> %i.kg, i64 1
  %i.ko = call double @llvm.fmuladd.f64(double %i.kn, double %i.ig, double %i.km)
  %i.kp = extractelement <2 x double> %i.kd, i64 0
  %i.kq = call double @llvm.fmuladd.f64(double %i.kp, double %i.hr, double %i.ko)
  %i.kr = extractelement <2 x double> %i.kd, i64 1
  %i.ks = call double @llvm.fmuladd.f64(double %i.kr, double %i.mn, double %i.kq)
  %i.kt = getelementptr inbounds nuw i8, ptr %i.mh, i64 120
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !33
  %i.kv = fsub double %i.ks, %i.ku
  %i.kw = getelementptr inbounds nuw i8, ptr %i.mh, i64 72
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !33
  %i.ky = fdiv double %i.kv, %i.kx                ; 7 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %i.mf, i64 8
  %i.la = getelementptr inbounds nuw i8, ptr %i.mf, i64 40
  store double %i.ky, ptr %i.la, align 8, !tbaa !33
  %i.lb = fcmp uno double %i.ky, 0.000000e+00
  br i1 %i.lb, label %.loopexit174, label %._crit_edge.6

._crit_edge.6:                                    ; preds = %._crit_edge.5
  %i.lc = getelementptr inbounds nuw i8, ptr %i.mh, i64 40
  %i.ld = load <2 x double>, ptr %i.lc, align 8, !tbaa !33
  %i.le = fneg <2 x double> %i.ld                 ; 2 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.mh, i64 24
  %i.lg = load <2 x double>, ptr %i.lf, align 8, !tbaa !33
  %i.lh = fneg <2 x double> %i.lg                 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %i.mh, i64 8
  %i.lj = load <2 x double>, ptr %i.li, align 8, !tbaa !33
  %i.lk = fneg <2 x double> %i.lj                 ; 2 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 0
  %i.lm = call double @llvm.fmuladd.f64(double %i.ll, double %i.ky, double 0.000000e+00)
  %i.ln = extractelement <2 x double> %i.lk, i64 1
  %i.lo = call double @llvm.fmuladd.f64(double %i.ln, double %i.jx, double %i.lm)
  %i.lp = extractelement <2 x double> %i.lh, i64 0
  %i.lq = call double @llvm.fmuladd.f64(double %i.lp, double %i.ja, double %i.lo)
  %i.lr = extractelement <2 x double> %i.lh, i64 1
  %i.ls = call double @llvm.fmuladd.f64(double %i.lr, double %i.ig, double %i.lq)
  %i.lt = extractelement <2 x double> %i.le, i64 0
  %i.lu = call double @llvm.fmuladd.f64(double %i.lt, double %i.hr, double %i.ls)
  %i.lv = extractelement <2 x double> %i.le, i64 1
  %i.lw = call double @llvm.fmuladd.f64(double %i.lv, double %i.mn, double %i.lu)
  %i.lx = getelementptr inbounds nuw i8, ptr %i.mh, i64 56
end_hunk_0
