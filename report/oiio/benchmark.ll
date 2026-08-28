Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/benchmark?download=true
inline.NumInlined: 3105
inline.NumDeleted: 896
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_111Benchmarker13compute_statsERSt6vectorIdSaIdEEm:bb.a
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !15   ; 3 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = ashr exact i64 %i.f, 3                   ; 2 uses
  %.not = icmp eq ptr %i.b, %i.c
  br i1 %.not, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !34
  %i.i = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.h, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 66, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_111Benchmarker13compute_statsERSt6vectorIdSaIdEEm, ptr noundef nonnull @.str.2) #32 ; 0 uses
  %.pre = load ptr, ptr %1, align 8, !tbaa !36
  %.pre55 = load ptr, ptr %i.a, align 8, !tbaa !36
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.b, %bb.a ], [ %.pre55, %bb.b ] ; 4 uses
  %i.k = phi ptr [ %i.c, %bb.a ], [ %.pre, %bb.b ] ; 4 uses
  %.not.i.i = icmp eq ptr %i.k, %i.j
  br i1 %.not.i.i, label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = ashr exact i64 %i.n, 3
  %i.p = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.q = shl nuw nsw i64 %i.p, 1
  %i.r = xor i64 %i.q, 126
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %i.k, ptr %i.j, i64 noundef %i.r)
  tail call void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_T0_(ptr %i.k, ptr %i.j)
  br label %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit

_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit: ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.t = load i32, ptr %i.s, align 8, !tbaa !37   ; 2 uses
  %i.u = shl nsw i32 %i.t, 1
  %i.v = add nsw i32 %i.u, 3
  %i.w = sext i32 %i.v to i64
  %.not44 = icmp ult i64 %i.g, %i.w
  %i.x = sext i32 %i.t to i64
  %i.y = select i1 %.not44, i64 0, i64 %i.x       ; 4 uses
  %.041 = sub nsw i64 %i.g, %i.y                  ; 3 uses
  %i.z = sub nsw i64 %.041, %i.y                  ; 4 uses
  %i.aa = icmp eq i64 %i.z, 1
  %i.ab = load ptr, ptr %1, align 8, !tbaa !36    ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.y ; 4 uses
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !23 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ad, ptr %i.ae, align 8, !tbaa !38
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %_ZSt4sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEEvT_S7_.exit
  %i.ag = getelementptr [8 x i8], ptr %i.ab, i64 %.041 ; 3 uses
  %.not5.i = icmp eq i64 %i.y, %.041
  br i1 %.not5.i, label %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread, label %.lr.ph.i

_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread: ; preds = %bb.f
  %i.ah = uitofp nneg i64 %i.z to double
  %i.ai = fdiv double 0.000000e+00, %i.ah         ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ai, ptr %i.aj, align 8, !tbaa !38
  br label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit"

.lr.ph.i:                                         ; preds = %bb.f, %.lr.ph.i
  %.07.i = phi double [ %i.al, %.lr.ph.i ], [ 0.000000e+00, %bb.f ]
  %.sroa.02.06.i = phi ptr [ %i.am, %.lr.ph.i ], [ %i.ac, %bb.f ] ; 2 uses
  %i.ak = load double, ptr %.sroa.02.06.i, align 8, !tbaa !23
  %i.al = fadd double %.07.i, %i.ak               ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.02.06.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.am, %i.ag
  br i1 %.not.i, label %.lr.ph.i46, label %.lr.ph.i, !llvm.loop !39

.lr.ph.i46:                                       ; preds = %.lr.ph.i
  %i.an = uitofp i64 %i.z to double
  %i.ao = fdiv double %i.al, %i.an                ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %i.ao, ptr %i.ap, align 8, !tbaa !38
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i46
  %.08.i = phi double [ 0.000000e+00, %.lr.ph.i46 ], [ %i.as, %bb.g ]
  %.sroa.03.07.i = phi ptr [ %i.ac, %.lr.ph.i46 ], [ %i.at, %bb.g ] ; 2 uses
  %i.aq = load double, ptr %.sroa.03.07.i, align 8, !tbaa !23
  %i.ar = fsub double %i.aq, %i.ao                ; 2 uses
  %i.as = tail call noundef double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double %.08.i) ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %i.at, %i.ag
  br i1 %.not.i47, label %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit", label %bb.g, !llvm.loop !40

"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit": ; preds = %bb.g, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread
  %i.au = phi double [ %i.ai, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.ao, %bb.g ]
  %.0.lcssa.i48 = phi double [ 0.000000e+00, %_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdET0_T_S8_S7_.exit.thread ], [ %i.as, %bb.g ]
  %i.av = add nsw i64 %i.z, -1
  %i.aw = uitofp i64 %i.av to double
  %i.ax = fdiv double %.0.lcssa.i48, %i.aw
  %i.ay = tail call double @llvm.sqrt.f64(double %i.ax) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %i.ay, ptr %i.az, align 8, !tbaa !41
  %i.ba = getelementptr i8, ptr %i.ag, i64 -8
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !23
  %i.bc = load double, ptr %i.ac, align 8, !tbaa !23
  %i.bd = fsub double %i.bb, %i.bc                ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  store double %i.bd, ptr %i.be, align 8, !tbaa !42
  br label %bb.h

bb.h:                                             ; preds = %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit", %bb.e
  %i.bf = phi double [ %i.bd, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit" ], [ 0.000000e+00, %bb.e ]
  %i.bg = phi double [ %i.ay, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit" ], [ 0.000000e+00, %bb.e ]
  %i.bh = phi double [ %i.au, %"_ZSt10accumulateIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEEdZN11OpenImageIO4v3_111Benchmarker13compute_statsERS5_mE3$_0ET0_T_SD_SC_T1_.exit" ], [ %i.ad, %bb.e ]
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !43 ; 2 uses
  %i.bk = and i64 %i.bj, 1
  %.not45 = icmp eq i64 %i.bk, 0
  %i.bl = lshr i64 %i.bj, 1
  %i.bm = load ptr, ptr %1, align 8, !tbaa !11
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl ; 2 uses
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  br i1 %.not45, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !23
  %i.br = fadd double %i.bo, %i.bq
  %i.bs = fmul double %i.br, 5.000000e-01
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %.sink = phi double [ %i.bs, %bb.i ], [ %i.bo, %bb.h ]
  %i.bt = uitofp i64 %2 to double
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bv = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bw = insertelement <2 x double> %i.bv, double %i.bg, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.bt, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bz = fdiv <2 x double> %i.bw, %i.by
  store <2 x double> %i.bz, ptr %i.bu, align 8, !tbaa !23
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.cb = insertelement <2 x double> poison, double %i.bf, i64 0
  %i.cc = insertelement <2 x double> %i.cb, double %.sink, i64 1
  %i.cd = fdiv <2 x double> %i.cc, %i.by
  store <2 x double> %i.cd, ptr %i.ca, align 8, !tbaa !23
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #4

; Function Attrs: mustprogress uwtable
define noundef nonnull align 8 dereferenceable(8) ptr @_ZN11OpenImageIO4v3_1lsERSoRKNS0_11BenchmarkerE(ptr noundef nonnull returned align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca double, align 8                   ; 6 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %i.c = alloca ptr, align 8                      ; 7 uses
  %i.d = alloca i8, align 1                       ; 7 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.e = alloca double, align 8                   ; 4 uses
  %i.f = alloca double, align 8                   ; 4 uses
  %i.g = alloca double, align 8                   ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !38 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #29
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.o = load double, ptr %i.n, align 8, !tbaa !41
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.q = load double, ptr %i.p, align 8, !tbaa !42
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 132
  %i.s = load i32, ptr %i.r, align 4, !tbaa !44   ; 2 uses
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader.preheader, label %.critedge

.preheader.preheader:                             ; preds = %bb.a
  %i.u = fmul double %i.m, 1.000000e+09
  %i.v = fcmp ogt double %i.u, 1.000000e+04
  br i1 %i.v, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.preheader
  %i.w = fmul double %i.m, 1.000000e+06
  %i.x = fcmp ogt double %i.w, 1.000000e+04
  br i1 %i.x, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.preheader.2
  %i.y = fmul double %i.m, 1.000000e+03
  %i.z = fcmp ogt double %i.y, 1.000000e+04
  %spec.select = select i1 %i.z, i32 4, i32 3
  br label %.critedge

.critedge:                                        ; preds = %.preheader.3, %.preheader.preheader, %.preheader.2, %bb.a
  %.153 = phi i32 [ %i.s, %bb.a ], [ %spec.select, %.preheader.3 ], [ 0, %.preheader.preheader ], [ 2, %.preheader.2 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.aa = sext i32 %.153 to i64                   ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr @_ZZN11OpenImageIO4v3_1lsERSoRKNS0_11BenchmarkerEE9unitnames, i64 %i.aa
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !7
  store ptr %i.ac, ptr %i.c, align 8, !tbaa !7
  %i.ad = getelementptr inbounds [8 x i8], ptr @_ZZN11OpenImageIO4v3_1lsERSoRKNS0_11BenchmarkerEE10unitscales, i64 %i.aa
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #29
  %i.af = fcmp ult double %i.m, f0x3EB0C6F7A0B5ED8D ; 2 uses
  %storemerge = select i1 %i.af, i8 77, i8 107
  %.051 = select i1 %i.af, double 1.000000e+06, double 1.000000e+03 ; 2 uses
  store i8 %storemerge, ptr %i.d, align 1, !tbaa !45
  %i.ag = fmul double %i.m, %i.ae                 ; 2 uses
  store double %i.ag, ptr %i.a, align 8, !tbaa !23
  %i.ah = fmul double %i.o, %i.ae
  store double %i.ah, ptr %i.b, align 8, !tbaa !23
  %i.ai = fmul double %i.q, %i.ae
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !46 ; 2 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.al, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.b
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !45
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.e:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.e
  %i.av = load i64, ptr %i.am, align 8, !tbaa !45
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.d
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.d ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.as, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.s

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge
  %i.ax = icmp eq i32 %.153, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.ax, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, double noundef %i.ag, i32 noundef 2)
  invoke void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.8, i64 9, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.h
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.i
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.s

bb.j:                                             ; preds = %bb.f
  call void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdRPKcSA_SD_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.9, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bk = load double, ptr %i.l, align 8, !tbaa !38 ; 3 uses
  %i.bl = fcmp olt double %i.bk, 2.500000e-10
  br i1 %i.bl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.10, i64 10)
  br label %bb.r

bb.m:                                             ; preds = %bb.k
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.bp = fdiv double 1.000000e+00, %.051
  %i.bq = fdiv double %i.bp, %i.bk
  store double %i.bq, ptr %i.e, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJdRcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.11, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.br = uitofp i64 %i.bn to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  %i.bs = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.br, i64 0
  %i.bt = insertelement <2 x double> poison, double %.051, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = fdiv <2 x double> %i.bs, %i.bu
  %i.bw = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.bx = shufflevector <2 x double> %i.bw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = fdiv <2 x double> %i.bv, %i.bx          ; 2 uses
  %i.bz = extractelement <2 x double> %i.by, i64 0
  store double %i.bz, ptr %i.f, align 8, !tbaa !23
  %i.ca = extractelement <2 x double> %i.by, i64 1
  store double %i.ca, ptr %i.g, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJdRcdS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.12, i64 37, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !50
  %i.cd = icmp sgt i32 %i.cc, 1
  br i1 %i.cd, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !43
  store i64 %i.cf, ptr %i.h, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  %i.cg = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.cg, ptr %i.i, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  %i.ch = load double, ptr %i.a, align 8, !tbaa !23
  %i.ci = fdiv double %i.ai, %i.ch
  %i.cj = fmul double %i.ci, 1.000000e+02
  store double %i.cj, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !25
  %i.cm = fmul double %i.ae, %i.cl
  store double %i.cm, ptr %i.k, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJmmRPKcddEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.13, i64 31, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
end_hunk_0
begin_hunk_1_@_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %.pre2.i.i211 = add i64 %.pre.i.i210, 1
  %.pre676 = load ptr, ptr %5, align 8, !tbaa !374
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208: ; preds = %.noexc212, %bb.v
  %i.il = phi ptr [ %i.hn, %bb.v ], [ %.pre676, %.noexc212 ]
  %.pre-phi.i.i209 = phi i64 [ %i.ih, %bb.v ], [ %.pre2.i.i211, %.noexc212 ]
  %i.im = phi i64 [ %i.ho, %bb.v ], [ %.pre.i.i210, %.noexc212 ]
  store i64 %.pre-phi.i.i209, ptr %i.c, align 8, !tbaa !384
  %i.in = getelementptr inbounds nuw [4 x i8], ptr %i.il, i64 %i.im
  store i32 %.lcssa1626, ptr %i.in, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit213

_ZN3fmt3v126detail6bigintlSEi.exit213:            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit196, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i208, %._crit_edge.i206, %_ZN3fmt3v126detail6bigintmLIoEERS2_T_.exit
  %i.io = load ptr, ptr %6, align 8, !tbaa !374
  store i32 1, ptr %i.io, align 4, !tbaa !3
  %i.ip = load i64, ptr %i.f, align 8, !tbaa !375 ; 2 uses
  %.not8.i.i217.not = icmp eq i64 %i.ip, 0
  br i1 %.not8.i.i217.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.iq = load ptr, ptr %i.g, align 8, !tbaa !372
  invoke void %i.iq(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc219 unwind label %.loopexit.split-lp, !inline_history !402

.noexc219:                                        ; preds = %bb.x
  %.pre.i.i.i.i218 = load i64, ptr %i.f, align 8, !tbaa !375 ; 2 uses
  %i.ir = icmp ne i64 %.pre.i.i.i.i218, 0
  %i.is = zext i1 %i.ir to i64
  br label %bb.y

bb.y:                                             ; preds = %.noexc219, %_ZN3fmt3v126detail6bigintlSEi.exit213
  %i.it = phi i64 [ %i.ip, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %.pre.i.i.i.i218, %.noexc219 ]
  %i.iu = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit213 ], [ %i.is, %.noexc219 ] ; 2 uses
  store i64 %i.iu, ptr %i.h, align 8, !tbaa !384
  %i.iv = load i32, ptr %i.w, align 16, !tbaa !380
  %i.iw = sub nsw i32 %i.v, %i.iv                 ; 2 uses
  %i.ix = sdiv i32 %i.iw, 32
  store i32 %i.ix, ptr %i.j, align 8, !tbaa !376
  %i.iy = srem i32 %i.iw, 32                      ; 3 uses
  %i.iz = icmp eq i32 %i.iy, 0
  %.not19.i221 = icmp eq i64 %i.iu, 0
  %or.cond559 = or i1 %.not19.i221, %i.iz
  %extract.t816 = trunc i128 %i.gj to i32         ; 3 uses
  br i1 %or.cond559, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %.lr.ph.i222

.lr.ph.i222:                                      ; preds = %bb.y
  %i.ja = load ptr, ptr %6, align 8, !tbaa !374   ; 3 uses
  %i.jb = sub nsw i32 32, %i.iy
  %i.jc = load i32, ptr %i.ja, align 4, !tbaa !3  ; 2 uses
  %i.jd = lshr i32 %i.jc, %i.jb                   ; 2 uses
  %i.je = shl i32 %i.jc, %i.iy
  store i32 %i.je, ptr %i.ja, align 4, !tbaa !3
  %.not.i227 = icmp eq i32 %i.jd, 0
  br i1 %.not.i227, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i222
  %.not562 = icmp ugt i64 %i.it, 1
  br i1 %.not562, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.jf = load ptr, ptr %i.g, align 8, !tbaa !372
  invoke void %i.jf(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 2)
          to label %.noexc232 unwind label %.loopexit.split-lp, !inline_history !389

.noexc232:                                        ; preds = %bb.aa
  %.pre.i.i230 = load i64, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  %.pre2.i.i231 = add i64 %.pre.i.i230, 1
  %.pre677 = load ptr, ptr %6, align 8, !tbaa !374
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228: ; preds = %.noexc232, %bb.z
  %i.jg = phi ptr [ %i.ja, %bb.z ], [ %.pre677, %.noexc232 ]
  %.pre-phi.i.i229 = phi i64 [ 2, %bb.z ], [ %.pre2.i.i231, %.noexc232 ]
  %i.jh = phi i64 [ 1, %bb.z ], [ %.pre.i.i230, %.noexc232 ]
  store i64 %.pre-phi.i.i229, ptr %i.h, align 8, !tbaa !384
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jg, i64 %i.jh
  store i32 %i.jd, ptr %i.ji, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

bb.ab:                                            ; preds = %bb.n
  %i.jj = load i128, ptr %0, align 16, !tbaa !382 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %.05.i.i234 = phi i128 [ %i.jj, %bb.ab ], [ %i.jn, %bb.ac ] ; 2 uses
  %.0.i.i235 = phi i64 [ 0, %bb.ab ], [ %i.jl, %bb.ac ] ; 7 uses
  %i.jk = trunc i128 %.05.i.i234 to i32
  %i.jl = add nuw nsw i64 %.0.i.i235, 1           ; 6 uses
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i235
  store i32 %i.jk, ptr %i.jm, align 4, !tbaa !3
  %i.jn = lshr i128 %.05.i.i234, 32               ; 2 uses
  %.not.i.i236 = icmp eq i128 %i.jn, 0
  br i1 %.not.i.i236, label %bb.ad, label %bb.ac, !llvm.loop !383

bb.ad:                                            ; preds = %bb.ac
  %.not8.i.i237 = icmp samesign ult i64 %.0.i.i235, 32
  br i1 %.not8.i.i237, label %.lr.ph.i242, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.jo = call noalias dereferenceable_or_null(192) ptr @malloc(i64 noundef 192) #34 ; 3 uses
  %.not.i.i893 = icmp eq ptr %i.jo, null
  br i1 %.not.i.i893, label %.invoke1568, label %bb.af

bb.af:                                            ; preds = %bb.ae
  store ptr %i.jo, ptr %5, align 8, !tbaa !374
  store i64 48, ptr %i.a, align 8, !tbaa !375
  br label %.lr.ph.i242

.lr.ph.i242:                                      ; preds = %bb.ad, %bb.af
  %i.jp = phi ptr [ %i.jo, %bb.af ], [ %i.d, %bb.ad ] ; 6 uses
  %i.jq = phi i64 [ 48, %bb.af ], [ 32, %bb.ad ]  ; 3 uses
  store i64 %i.jl, ptr %i.c, align 8, !tbaa !384
  store i32 0, ptr %i.e, align 8, !tbaa !376
  %i.jr = xor i32 %i.u, 31                        ; 2 uses
  %i.js = add nuw i64 %.0.i.i235, 1               ; 2 uses
  %min.iters.check = icmp samesign ult i64 %.0.i.i235, 7
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i242
  %n.vec = and i64 %i.js, -8                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.jr, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1640 = insertelement <4 x i32> poison, i32 %i.v, i64 0
  %broadcast.splat1641 = shufflevector <4 x i32> %broadcast.splatinsert1640, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vector.recur = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph ], [ %i.jw, %vector.body ]
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %index ; 3 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.jt, align 4, !tbaa !3 ; 2 uses
  %wide.load1642 = load <4 x i32>, ptr %i.ju, align 4, !tbaa !3 ; 2 uses
  %i.jv = lshr <4 x i32> %wide.load, %broadcast.splat ; 2 uses
  %i.jw = lshr <4 x i32> %wide.load1642, %broadcast.splat ; 3 uses
  %i.jx = shufflevector <4 x i32> %vector.recur, <4 x i32> %i.jv, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jy = shufflevector <4 x i32> %i.jv, <4 x i32> %i.jw, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.jz = shl <4 x i32> %wide.load, %broadcast.splat1641
  %i.ka = shl <4 x i32> %wide.load1642, %broadcast.splat1641
  %i.kb = add <4 x i32> %i.jz, %i.jx
  %i.kc = add <4 x i32> %i.ka, %i.jy
  store <4 x i32> %i.kb, ptr %i.jt, align 4, !tbaa !3
  store <4 x i32> %i.kc, ptr %i.ju, align 4, !tbaa !3
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.kd = icmp eq i64 %index.next, %n.vec
  br i1 %i.kd, label %middle.block, label %vector.body, !llvm.loop !403

middle.block:                                     ; preds = %vector.body
  %vector.recur.extract = extractelement <4 x i32> %i.jw, i64 3 ; 2 uses
  %cmp.n = icmp eq i64 %i.js, %n.vec
  br i1 %cmp.n, label %._crit_edge.i246, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i242, %middle.block
  %.01418.i243.ph = phi i64 [ 0, %.lr.ph.i242 ], [ %n.vec, %middle.block ]
  %.017.i244.ph = phi i32 [ 0, %.lr.ph.i242 ], [ %vector.recur.extract, %middle.block ]
  br label %scalar.ph

._crit_edge.i246:                                 ; preds = %scalar.ph, %middle.block
  %.lcssa1632 = phi i32 [ %vector.recur.extract, %middle.block ], [ %i.kg, %scalar.ph ] ; 2 uses
  %.not.i247 = icmp eq i32 %.lcssa1632, 0
  br i1 %.not.i247, label %_ZN3fmt3v126detail6bigintlSEi.exit253, label %bb.ag

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.01418.i243 = phi i64 [ %i.kj, %scalar.ph ], [ %.01418.i243.ph, %scalar.ph.preheader ] ; 3 uses
  %.017.i244 = phi i32 [ %i.kg, %scalar.ph ], [ %.017.i244.ph, %scalar.ph.preheader ]
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.01418.i243 ; 2 uses
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !3  ; 2 uses
  %i.kg = lshr i32 %i.kf, %i.jr                   ; 2 uses
  %i.kh = shl i32 %i.kf, %i.v
  %i.ki = add i32 %i.kh, %.017.i244
  store i32 %i.ki, ptr %i.ke, align 4, !tbaa !3
  %i.kj = add nuw nsw i64 %.01418.i243, 1
  %exitcond.not.i245 = icmp eq i64 %.01418.i243, %.0.i.i235
  br i1 %exitcond.not.i245, label %._crit_edge.i246, label %scalar.ph, !llvm.loop !404

bb.ag:                                            ; preds = %._crit_edge.i246
  %i.kk = add nuw i64 %.0.i.i235, 2               ; 2 uses
  %.not561 = icmp samesign ult i64 %i.jl, %i.jq
  br i1 %.not561, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.kl = lshr exact i64 %i.jq, 1
  %i.km = add nuw nsw i64 %i.kl, %i.jq
  %.0.i1232 = call i64 @llvm.umax.i64(i64 %i.kk, i64 %i.km) ; 2 uses
  %i.kn = shl i64 %.0.i1232, 2
  %i.ko = call noalias ptr @malloc(i64 noundef %i.kn) #34 ; 4 uses
  %.not.i.i1233 = icmp eq ptr %i.ko, null
  br i1 %.not.i.i1233, label %.invoke1568, label %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234

.invoke1568:                                      ; preds = %bb.ah, %bb.e, %bb.ae, %bb.h
  %i.kp = call ptr @__cxa_allocate_exception(i64 8) #29 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.kp, align 8, !tbaa !67
  invoke void @__cxa_throw(ptr nonnull %i.kp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #33
          to label %.cont1569 unwind label %.loopexit.split-lp

.cont1569:                                        ; preds = %.invoke1568
  unreachable

_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234: ; preds = %bb.ah
  %i.kq = shl nuw nsw i64 %i.jl, 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ko, ptr noundef nonnull align 4 dereferenceable(1) %i.jp, i64 %i.kq, i1 false)
  store ptr %i.ko, ptr %5, align 8, !tbaa !374
  store i64 %.0.i1232, ptr %i.a, align 8, !tbaa !375
  %.not.i1235 = icmp eq ptr %i.jp, %i.d
  br i1 %.not.i1235, label %.noexc252, label %bb.ai

bb.ai:                                            ; preds = %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234
  call void @free(ptr noundef nonnull %i.jp) #29
  %.pre.i.i250.pre = load i64, ptr %i.c, align 8, !tbaa !384
  %.pre.pre = load ptr, ptr %5, align 8, !tbaa !374
  br label %.noexc252

.noexc252:                                        ; preds = %bb.ai, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234
  %.pre = phi ptr [ %.pre.pre, %bb.ai ], [ %i.ko, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234 ]
  %.pre.i.i250 = phi i64 [ %.pre.i.i250.pre, %bb.ai ], [ %i.jl, %_ZN3fmt3v126detail9allocatorIjE8allocateEm.exit.i1234 ] ; 2 uses
  %.pre2.i.i251 = add i64 %.pre.i.i250, 1
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248: ; preds = %.noexc252, %bb.ag
  %i.kr = phi ptr [ %i.jp, %bb.ag ], [ %.pre, %.noexc252 ]
  %.pre-phi.i.i249 = phi i64 [ %i.kk, %bb.ag ], [ %.pre2.i.i251, %.noexc252 ]
  %i.ks = phi i64 [ %i.jl, %bb.ag ], [ %.pre.i.i250, %.noexc252 ]
  store i64 %.pre-phi.i.i249, ptr %i.c, align 8, !tbaa !384
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %i.kr, i64 %i.ks
  store i32 %.lcssa1632, ptr %i.kt, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit253

_ZN3fmt3v126detail6bigintlSEi.exit253:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i248, %._crit_edge.i246
  %i.ku = load i32, ptr %4, align 4, !tbaa !3
  invoke void @_ZN3fmt3v126detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.ku)
          to label %bb.aj unwind label %.loopexit.split-lp

bb.aj:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit253
  %i.kv = sub nsw i32 %i.v, %i.x                  ; 2 uses
  %i.kw = lshr i32 %i.kv, 5
  %i.kx = load i32, ptr %i.j, align 8, !tbaa !376
  %i.ky = add nsw i32 %i.kx, %i.kw
  store i32 %i.ky, ptr %i.j, align 8, !tbaa !376
  %i.kz = and i32 %i.kv, 31                       ; 4 uses
  %i.la = icmp eq i32 %i.kz, 0
  br i1 %i.la, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.lb = load i64, ptr %i.h, align 8, !tbaa !384 ; 7 uses
  %.not19.i254 = icmp eq i64 %i.lb, 0
  br i1 %.not19.i254, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %.lr.ph.i255

.lr.ph.i255:                                      ; preds = %bb.ak
  %i.lc = load ptr, ptr %6, align 8, !tbaa !374   ; 3 uses
  %i.ld = sub nuw nsw i32 32, %i.kz               ; 2 uses
  %min.iters.check1644 = icmp ult i64 %i.lb, 8
  br i1 %min.iters.check1644, label %scalar.ph1643.preheader, label %vector.ph1645

vector.ph1645:                                    ; preds = %.lr.ph.i255
  %n.vec1646 = and i64 %i.lb, -8                  ; 3 uses
  %broadcast.splatinsert1647 = insertelement <4 x i32> poison, i32 %i.ld, i64 0
  %broadcast.splat1648 = shufflevector <4 x i32> %broadcast.splatinsert1647, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1649 = insertelement <4 x i32> poison, i32 %i.kz, i64 0
  %broadcast.splat1650 = shufflevector <4 x i32> %broadcast.splatinsert1649, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body1651

vector.body1651:                                  ; preds = %vector.body1651, %vector.ph1645
  %index1652 = phi i64 [ 0, %vector.ph1645 ], [ %index.next1656, %vector.body1651 ] ; 2 uses
  %vector.recur1653 = phi <4 x i32> [ <i32 poison, i32 poison, i32 poison, i32 0>, %vector.ph1645 ], [ %i.lh, %vector.body1651 ]
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %index1652 ; 3 uses
  %i.lf = getelementptr inbounds nuw i8, ptr %i.le, i64 16 ; 2 uses
  %wide.load1654 = load <4 x i32>, ptr %i.le, align 4, !tbaa !3 ; 2 uses
  %wide.load1655 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !3 ; 2 uses
  %i.lg = lshr <4 x i32> %wide.load1654, %broadcast.splat1648 ; 2 uses
  %i.lh = lshr <4 x i32> %wide.load1655, %broadcast.splat1648 ; 3 uses
  %i.li = shufflevector <4 x i32> %vector.recur1653, <4 x i32> %i.lg, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lj = shufflevector <4 x i32> %i.lg, <4 x i32> %i.lh, <4 x i32> <i32 3, i32 4, i32 5, i32 6>
  %i.lk = shl <4 x i32> %wide.load1654, %broadcast.splat1650
  %i.ll = shl <4 x i32> %wide.load1655, %broadcast.splat1650
  %i.lm = add <4 x i32> %i.lk, %i.li
  %i.ln = add <4 x i32> %i.ll, %i.lj
  store <4 x i32> %i.lm, ptr %i.le, align 4, !tbaa !3
  store <4 x i32> %i.ln, ptr %i.lf, align 4, !tbaa !3
  %index.next1656 = add nuw i64 %index1652, 8     ; 2 uses
  %i.lo = icmp eq i64 %index.next1656, %n.vec1646
  br i1 %i.lo, label %middle.block1657, label %vector.body1651, !llvm.loop !405

middle.block1657:                                 ; preds = %vector.body1651
  %vector.recur.extract1658 = extractelement <4 x i32> %i.lh, i64 3 ; 2 uses
  %cmp.n1659 = icmp eq i64 %i.lb, %n.vec1646
  br i1 %cmp.n1659, label %._crit_edge.i259, label %scalar.ph1643.preheader

scalar.ph1643.preheader:                          ; preds = %.lr.ph.i255, %middle.block1657
  %.01418.i256.ph = phi i64 [ 0, %.lr.ph.i255 ], [ %n.vec1646, %middle.block1657 ]
  %.017.i257.ph = phi i32 [ 0, %.lr.ph.i255 ], [ %vector.recur.extract1658, %middle.block1657 ]
  br label %scalar.ph1643

._crit_edge.i259:                                 ; preds = %scalar.ph1643, %middle.block1657
  %.lcssa1631 = phi i32 [ %vector.recur.extract1658, %middle.block1657 ], [ %i.lr, %scalar.ph1643 ] ; 2 uses
  %.not.i260 = icmp eq i32 %.lcssa1631, 0
  br i1 %.not.i260, label %_ZN3fmt3v126detail6bigintlSEi.exit266, label %bb.al

scalar.ph1643:                                    ; preds = %scalar.ph1643.preheader, %scalar.ph1643
  %.01418.i256 = phi i64 [ %i.lu, %scalar.ph1643 ], [ %.01418.i256.ph, %scalar.ph1643.preheader ] ; 2 uses
  %.017.i257 = phi i32 [ %i.lr, %scalar.ph1643 ], [ %.017.i257.ph, %scalar.ph1643.preheader ]
  %i.lp = getelementptr inbounds nuw [4 x i8], ptr %i.lc, i64 %.01418.i256 ; 2 uses
  %i.lq = load i32, ptr %i.lp, align 4, !tbaa !3  ; 2 uses
  %i.lr = lshr i32 %i.lq, %i.ld                   ; 2 uses
  %i.ls = shl i32 %i.lq, %i.kz
  %i.lt = add i32 %i.ls, %.017.i257
  store i32 %i.lt, ptr %i.lp, align 4, !tbaa !3
  %i.lu = add nuw i64 %.01418.i256, 1             ; 2 uses
  %exitcond.not.i258 = icmp eq i64 %i.lu, %i.lb
  br i1 %exitcond.not.i258, label %._crit_edge.i259, label %scalar.ph1643, !llvm.loop !406

bb.al:                                            ; preds = %._crit_edge.i259
  %i.lv = add i64 %i.lb, 1                        ; 3 uses
  %i.lw = load i64, ptr %i.f, align 8, !tbaa !375
  %i.lx = icmp ugt i64 %i.lv, %i.lw
  br i1 %i.lx, label %bb.am, label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

bb.am:                                            ; preds = %bb.al
  %i.ly = load ptr, ptr %i.g, align 8, !tbaa !372
  invoke void %i.ly(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.lv)
          to label %.noexc265 unwind label %.loopexit.split-lp, !inline_history !389

.noexc265:                                        ; preds = %bb.am
  %.pre.i.i263 = load i64, ptr %i.h, align 8, !tbaa !384 ; 2 uses
  %.pre2.i.i264 = add i64 %.pre.i.i263, 1
  %.pre673 = load ptr, ptr %6, align 8, !tbaa !374
  br label %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261

_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261: ; preds = %.noexc265, %bb.al
  %i.lz = phi ptr [ %i.lc, %bb.al ], [ %.pre673, %.noexc265 ]
  %.pre-phi.i.i262 = phi i64 [ %i.lv, %bb.al ], [ %.pre2.i.i264, %.noexc265 ]
  %i.ma = phi i64 [ %i.lb, %bb.al ], [ %.pre.i.i263, %.noexc265 ]
  store i64 %.pre-phi.i.i262, ptr %i.h, align 8, !tbaa !384
  %i.mb = getelementptr inbounds nuw [4 x i8], ptr %i.lz, i64 %i.ma
  store i32 %.lcssa1631, ptr %i.mb, align 4, !tbaa !3
  br label %_ZN3fmt3v126detail6bigintlSEi.exit266

_ZN3fmt3v126detail6bigintlSEi.exit266:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i261, %._crit_edge.i259, %bb.ak, %bb.aj
  %i.mc = load ptr, ptr %7, align 8, !tbaa !374
  store i32 1, ptr %i.mc, align 4, !tbaa !3
  %i.md = load i64, ptr %i.k, align 8, !tbaa !375
  %.not8.i.i270.not = icmp eq i64 %i.md, 0
  br i1 %.not8.i.i270.not, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.me = load ptr, ptr %i.l, align 8, !tbaa !372
  invoke void %i.me(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc272 unwind label %.loopexit.split-lp, !inline_history !402

.noexc272:                                        ; preds = %bb.an
  %.pre.i.i.i.i271 = load i64, ptr %i.k, align 8, !tbaa !375
  %i.mf = icmp ne i64 %.pre.i.i.i.i271, 0
  %i.mg = zext i1 %i.mf to i64
  br label %bb.ao

bb.ao:                                            ; preds = %.noexc272, %_ZN3fmt3v126detail6bigintlSEi.exit266
  %i.mh = phi i64 [ 1, %_ZN3fmt3v126detail6bigintlSEi.exit266 ], [ %i.mg, %.noexc272 ]
  store i64 %i.mh, ptr %i.m, align 8, !tbaa !384
  store i32 0, ptr %i.o, align 8, !tbaa !376
  %extract.t812 = trunc i128 %i.jj to i32         ; 2 uses
  br i1 %.not, label %_ZN3fmt3v126detail6bigintlSEi.exit168, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.mi = load ptr, ptr %8, align 8, !tbaa !374
  store i32 2, ptr %i.mi, align 4, !tbaa !3
  %i.mj = load i64, ptr %i.p, align 8, !tbaa !375
  %.not8.i.i277.not = icmp eq i64 %i.mj, 0
  br i1 %.not8.i.i277.not, label %bb.aq, label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

bb.aq:                                            ; preds = %bb.ap
  %i.mk = load ptr, ptr %i.q, align 8, !tbaa !372
  invoke void %i.mk(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc279 unwind label %.loopexit.split-lp, !inline_history !407

.noexc279:                                        ; preds = %bb.aq
  %.pre.i.i.i.i278 = load i64, ptr %i.p, align 8, !tbaa !375
  %i.ml = icmp ne i64 %.pre.i.i.i.i278, 0
  %i.mm = zext i1 %i.ml to i64
  br label %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit

_ZN3fmt3v126detail6bigintaSIyEEvT_.exit:          ; preds = %bb.ap, %.noexc279
  %i.mn = phi i64 [ 1, %bb.ap ], [ %i.mm, %.noexc279 ]
  store i64 %i.mn, ptr %i.r, align 8, !tbaa !384
  store i32 0, ptr %i.t, align 8, !tbaa !376
  br label %_ZN3fmt3v126detail6bigintlSEi.exit168

_ZN3fmt3v126detail6bigintlSEi.exit168:            ; preds = %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228, %.lr.ph.i222, %bb.y, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163, %._crit_edge.i161, %bb.k, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit, %bb.ao
  %.off0 = phi i32 [ %extract.t812, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %extract.t814, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ %extract.t812, %bb.ao ], [ %extract.t816, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %extract.t814, %bb.k ], [ %extract.t814, %._crit_edge.i161 ], [ %extract.t816, %bb.y ], [ %extract.t816, %.lr.ph.i222 ]
  %.2 = phi ptr [ %8, %_ZN3fmt3v126detail6bigintaSIyEEvT_.exit ], [ %.079, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i163 ], [ null, %bb.ao ], [ %.1, %_ZN3fmt3v126detail6bufferIjE9push_backERKj.exit.i228 ], [ %.079, %bb.k ], [ %.079, %._crit_edge.i161 ], [ %.1, %bb.y ], [ %.1, %.lr.ph.i222 ] ; 16 uses
  %i.mo = and i32 %.off0, 1                       ; 2 uses
  %i.mp = xor i32 %i.mo, 1                        ; 2 uses
  %.not97 = icmp eq ptr %.2, null                 ; 7 uses
  %spec.store.select = select i1 %.not97, ptr %7, ptr %.2 ; 2 uses
  %i.mq = icmp slt i32 %2, 0                      ; 2 uses
  %i.mr = and i32 %1, 2
  %.not98 = icmp eq i32 %i.mr, 0
  br i1 %.not98, label %bb.br, label %bb.ar

bb.ar:                                            ; preds = %_ZN3fmt3v126detail6bigintlSEi.exit168
  %i.ms = load i64, ptr %i.c, align 8, !tbaa !384 ; 8 uses
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = load i32, ptr %i.e, align 8, !tbaa !376 ; 3 uses
end_hunk_1
