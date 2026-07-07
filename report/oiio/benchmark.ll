inline.NumInlined: 3105
inline.NumDeleted: 896
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 37
begin_hunk_0_@_ZN11OpenImageIO4v3_111Benchmarker13compute_statsERSt6vectorIdSaIdEEm:bb.a
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
  br i1 %i.z, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader.3
  br label %.critedge

.critedge:                                        ; preds = %.preheader.preheader, %.preheader.2, %.preheader.3, %bb.b, %bb.a
  %.154 = phi i32 [ %i.s, %bb.a ], [ 4, %bb.b ], [ 0, %.preheader.preheader ], [ 2, %.preheader.2 ], [ 3, %.preheader.3 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #29
  %i.aa = sext i32 %.154 to i64                   ; 2 uses
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
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.am, ptr %2, align 8, !tbaa !47
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.al, i8 noundef signext 32)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit: ; preds = %bb.c
  invoke void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.7, i64 2, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.an = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.ao = icmp eq ptr %i.an, %i.am
  br i1 %i.ao, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.ap = load i64, ptr %i.am, align 8, !tbaa !45
  %i.aq = add i64 %i.ap, 1
  call void @_ZdlPvm(ptr noundef %i.an, i64 noundef %i.aq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.at = load ptr, ptr %2, align 8, !tbaa !48    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61: ; preds = %bb.f
  %i.av = load i64, ptr %i.am, align 8, !tbaa !45
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.at, i64 noundef %i.aw) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ar, %bb.e ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i61 ], [ %i.as, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %bb.t

bb.g:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %.critedge
  %i.ax = icmp eq i32 %.154, 4
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br i1 %i.ax, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @_ZN11OpenImageIO4v3_17Strutil18timeintervalformatB5cxx11Edi(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, double noundef %i.ag, i32 noundef 2)
  invoke void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.8, i64 9, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64: ; preds = %bb.i
  %i.bc = load i64, ptr %i.ba, align 8, !tbaa !45
  %i.bd = add i64 %i.bc, 1
  call void @_ZdlPvm(ptr noundef %i.az, i64 noundef %i.bd) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.be = landingpad { ptr, i32 }
          cleanup
  %i.bf = load ptr, ptr %3, align 8, !tbaa !48    ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bh = icmp eq ptr %i.bf, %i.bg
  br i1 %i.bh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67: ; preds = %bb.j
  %i.bi = load i64, ptr %i.bg, align 8, !tbaa !45
  %i.bj = add i64 %i.bi, 1
  call void @_ZdlPvm(ptr noundef %i.bf, i64 noundef %i.bj) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i67
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.t

bb.k:                                             ; preds = %bb.g
  call void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERdRPKcSA_SD_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSG_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.9, i64 34, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit66
  %i.bk = load double, ptr %i.l, align 8, !tbaa !38 ; 3 uses
  %i.bl = fcmp olt double %i.bk, 2.500000e-10
  br i1 %i.bl, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN3fmt3v125printIJEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.10, i64 10)
  br label %bb.s

bb.n:                                             ; preds = %bb.l
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !49 ; 2 uses
  %i.bo = icmp eq i64 %i.bn, 1
  br i1 %i.bo, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #29
  %i.bp = fdiv double 1.000000e+00, %.051
  %i.bq = fdiv double %i.bp, %i.bk
  store double %i.bq, ptr %i.e, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJdRcEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.11, i64 14, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #29
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #29
  %i.br = uitofp i64 %i.bn to double
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #29
  %4 = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.br, i64 0
  %5 = insertelement <2 x double> poison, double %.051, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer
  %7 = fdiv <2 x double> %4, %6
  %8 = insertelement <2 x double> poison, double %i.bk, i64 0
  %9 = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> zeroinitializer
  %10 = fdiv <2 x double> %7, %9                  ; 2 uses
  %11 = extractelement <2 x double> %10, i64 0
  store double %11, ptr %i.f, align 8, !tbaa !23
  %12 = extractelement <2 x double> %10, i64 1
  store double %12, ptr %i.g, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJdRcdS2_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.12, i64 37, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull align 1 dereferenceable(1) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !50
  %i.bu = icmp sgt i32 %i.bt, 1
  br i1 %i.bu, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #29
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !43
  store i64 %i.bw, ptr %i.h, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #29
  %i.bx = load i64, ptr %1, align 8, !tbaa !52
  store i64 %i.bx, ptr %i.i, align 8, !tbaa !51
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #29
  %i.by = load double, ptr %i.a, align 8, !tbaa !23
  %i.bz = fdiv double %i.ai, %i.by
  %i.ca = fmul double %i.bz, 1.000000e+02
  store double %i.ca, ptr %i.j, align 8, !tbaa !23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #29
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !25
  %i.cd = fmul double %i.ae, %i.cc
  store double %i.cd, ptr %i.k, align 8, !tbaa !23
  call void @_ZN3fmt3v125printIJmmRPKcddEEEvRSoNS0_7fstringIJDpT_EE1tEDpOS7_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nonnull @.str.13, i64 31, ptr noundef nonnull align 8 dereferenceable(8) %i.h, ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #29
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret ptr %0

bb.t:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63
  %.pn59 = phi { ptr, i32 } [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit69 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit63 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  resume { ptr, i32 } %.pn59
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v125printIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvRSoNS0_7fstringIJDpT_EE1tEDpOSA_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %5 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %6 = alloca %"struct.fmt::v12::detail::format_arg_store.93", align 16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.a = load ptr, ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  store ptr %i.a, ptr %6, align 16, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 0, ptr %i.g, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.f, align 8, !tbaa !54
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %i.h, ptr %5, align 8, !tbaa !56
  store i64 500, ptr %i.e, align 8, !tbaa !57
  %i.i = icmp eq i64 %2, 2
  br i1 %i.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.j = load i16, ptr %1, align 1
  %i.k = icmp ne i16 %i.j, 32123
  %i.l = zext i1 %i.k to i32
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.0.0.copyload.sink66.i = load i128, ptr %6, align 16, !tbaa !45 ; 2 uses
  %i.n = trunc i128 %.sroa.0.0.copyload.sink66.i to i64
  %i.o = lshr i128 %.sroa.0.0.copyload.sink66.i, 64
  %i.p = trunc nuw i128 %i.o to i64
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i = inttoptr i64 %i.n to ptr ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, i64 %i.p
  %i.r = invoke ptr @_ZN3fmt3v126detail13copy_noinlineIcPKcNS0_14basic_appenderIcEEEET1_T0_S8_S7_(ptr noundef %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0.copyload.i.i, ptr noundef %i.q, ptr nonnull align 8 dereferenceable(32) %5)
          to label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit unwind label %bb.g ; 0 uses

bb.d:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  store ptr %1, ptr %4, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i16.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %2, ptr %.sroa.2.0..sroa_idx.i16.i, align 8, !tbaa !51
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.s, align 8, !tbaa !58
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %5, ptr %i.t, align 8, !tbaa !61
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 13, ptr %i.u, align 8, !tbaa !63
  %.sroa.2.0..sroa_idx.i17.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr %6, ptr %.sroa.2.0..sroa_idx.i17.i, align 8, !tbaa !45
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr null, ptr %i.v, align 8, !tbaa !10
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_14format_handlerIcEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(56) %4)
          to label %.noexc4 unwind label %bb.g

.noexc4:                                          ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit

_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit: ; preds = %.noexc4, %bb.c
  %i.w = load ptr, ptr %5, align 8, !tbaa !56
  %i.x = load i64, ptr %i.g, align 8, !tbaa !65
  br label %bb.e

bb.e:                                             ; preds = %.noexc.i, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit
  %.013.i.i = phi i64 [ %i.x, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit ], [ %i.ab, %.noexc.i ] ; 2 uses
  %.0.i.i = phi ptr [ %i.w, %_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE.exit ], [ %i.aa, %.noexc.i ] ; 2 uses
  %i.y = call i64 @llvm.umin.i64(i64 %.013.i.i, i64 9223372036854775807) ; 3 uses
  %i.z = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo5writeEPKcl(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %.0.i.i, i64 noundef %i.y)
          to label %.noexc.i unwind label %bb.h   ; 0 uses

.noexc.i:                                         ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 %i.y
  %i.ab = sub i64 %.013.i.i, %i.y                 ; 2 uses
  %.not.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i, label %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, label %bb.e, !llvm.loop !66

_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i: ; preds = %.noexc.i
  %i.ac = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i.i, label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i
  call void @free(ptr noundef %i.ac) #29
  br label %_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

bb.g:                                             ; preds = %bb.d, %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn.i = phi { ptr, i32 } [ %i.ae, %bb.h ], [ %i.ad, %bb.g ]
  %i.af = load ptr, ptr %5, align 8, !tbaa !56    ; 2 uses
  %.not.i.i10.i = icmp eq ptr %i.af, %i.h
  br i1 %.not.i.i10.i, label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @free(ptr noundef %i.af) #29
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i

_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEED2Ev.exit11.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  resume { ptr, i32 } %.pn.i

_ZN3fmt3v126vprintERSoNS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v126detail12write_bufferIcEEvRSt13basic_ostreamIT_St11char_traitsIS4_EERNS1_6bufferIS4_EE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #29
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v125printIJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_EEEvRSoNS0_7fstringIJDpT_EE1tEDpOSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr %1, i64 %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %4) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.fmt::v12::detail::format_handler", align 8 ; 10 uses
  %6 = alloca %"class.fmt::v12::basic_memory_buffer", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.94", align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #29
  %i.a = load ptr, ptr %3, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !53
  store ptr %i.a, ptr %7, align 16, !tbaa !45
  %i.d = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.c, ptr %i.d, align 8, !tbaa !45
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.f = load ptr, ptr %4, align 8, !tbaa !48
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !53
  store ptr %i.f, ptr %i.e, align 16, !tbaa !45
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i64 %i.h, ptr %i.i, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #29
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8
  store ptr @_ZN3fmt3v1219basic_memory_bufferIcLm500ENS0_6detail9allocatorIcEEE4growERNS2_6bufferIcEEm, ptr %i.k, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
end_hunk_0
