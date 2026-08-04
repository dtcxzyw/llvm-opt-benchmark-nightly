inline.NumInlined: 1541
inline.NumDeleted: 600
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN5folly6detail21computeStabilityStatsERKSt6vectorIdSaIdEEdd:bb.a
  call void @_ZdlPvm(ptr noundef nonnull %i.bl, i64 noundef %i.bp) #27
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit61

_ZNSt6vectorIdSaIdEED2Ev.exit61:                  ; preds = %bb.u, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.bq = fdiv double %3, 1.000000e+02
  %i.br = fmul double %i.bq, 5.000000e-01
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.bu = load double, ptr %i.bt, align 8, !tbaa !26 ; 4 uses
  %i.bv = load double, ptr %i.bs, align 8, !tbaa !26 ; 4 uses
  %i.bw = fcmp olt double %i.bu, %i.bv
  %i.bx = select i1 %i.bw, double %i.bu, double %i.bv
  %i.by = fmul double %i.br, %i.bx                ; 2 uses
  %i.bz = fcmp ogt double %i.by, 1.000000e-03
  %.sroa.speculated = select i1 %i.bz, double %i.by, double 1.000000e-03 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %6, i64 24, i1 false), !tbaa.struct !30
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %8, i64 24, i1 false), !tbaa.struct !30
  %i.cb = load double, ptr %8, align 8, !tbaa !31
  %i.cc = fsub double %i.cb, %.sroa.speculated
  %i.cd = fcmp ult double %i.bv, %i.cc
  br i1 %i.cd, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit61
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !33
  %i.cg = fadd double %.sroa.speculated, %i.cf
  %i.ch = fcmp ugt double %i.bv, %i.cg
  br i1 %i.ch, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ci = load double, ptr %6, align 8, !tbaa !31
  %i.cj = fsub double %i.ci, %.sroa.speculated
  %i.ck = fcmp ult double %i.bu, %i.cj
  br i1 %i.ck, label %_ZNSt6vectorIdSaIdEED2Ev.exit68, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !33
  %i.cn = fadd double %.sroa.speculated, %i.cm
  %i.co = fcmp ole double %i.bu, %i.cn
  %i.cp = zext i1 %i.co to i8
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit68

_ZNSt6vectorIdSaIdEED2Ev.exit68:                  ; preds = %bb.x, %bb.w, %bb.v, %_ZNSt6vectorIdSaIdEED2Ev.exit61
  %i.cq = phi i8 [ 0, %bb.w ], [ 0, %bb.v ], [ 0, %_ZNSt6vectorIdSaIdEED2Ev.exit61 ], [ %i.cp, %bb.x ]
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 %i.cq, ptr %i.cr, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.y:                                             ; preds = %_ZN5folly6detail13SortedSamplesC2ESt6vectorIdSaIdEE.exit
  %i.cs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ct = load ptr, ptr %7, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i.i69 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i.i69, label %bb.ac, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cu = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #27
  br label %bb.ac

bb.aa:                                            ; preds = %_ZN5folly6detail13SortedSamplesC2ESt6vectorIdSaIdEE.exit55
  %i.cy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cz = load ptr, ptr %9, align 8, !tbaa !16    ; 3 uses
  %.not.i.i.i.i75 = icmp eq ptr %i.cz, null
  br i1 %.not.i.i.i.i75, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.da = load ptr, ptr %i.bb, align 8, !tbaa !29
  %i.db = ptrtoint ptr %i.da to i64
  %i.dc = ptrtoint ptr %i.cz to i64
  %i.dd = sub i64 %i.db, %i.dc
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dd) #27
  br label %.thread

.thread:                                          ; preds = %bb.ab, %bb.aa, %bb.s, %bb.r
  %.pn27 = phi { ptr, i32 } [ %i.bk, %bb.r ], [ %i.cy, %bb.ab ], [ %i.bk, %bb.s ], [ %i.cy, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %.body

bb.ac:                                            ; preds = %bb.z, %bb.y, %bb.n, %bb.m
  %.pn = phi { ptr, i32 } [ %i.au, %bb.m ], [ %i.cs, %bb.z ], [ %i.au, %bb.n ], [ %i.cs, %bb.y ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not.i.i.i81 = icmp eq ptr %i.aj, null
  br i1 %.not.i.i.i81, label %.body, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.de = ptrtoint ptr %i.ai to i64
  %i.df = ptrtoint ptr %i.aj to i64
  %i.dg = sub i64 %i.de, %i.df
  call void @_ZdlPvm(ptr noundef nonnull %i.aj, i64 noundef %i.dg) #27
  br label %.body

bb.ae:                                            ; preds = %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit.i36
  %i.dh = ptrtoint ptr %i.v to i64
  %i.di = ptrtoint ptr %i.w to i64
  %i.dj = sub i64 %i.dh, %i.di
  call void @_ZdlPvm(ptr noundef nonnull %i.w, i64 noundef %i.dj) #27
  br label %.body

.body:                                            ; preds = %bb.ad, %bb.ac, %.thread, %bb.ae, %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit.i36
  %.pn27.pn.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ac ], [ %.pn27, %.thread ], [ %i.ah, %bb.ae ], [ %i.ah, %_ZNSt12_Vector_baseIdSaIdEED2Ev.exit.i36 ], [ %.pn, %bb.ad ]
  resume { ptr, i32 } %.pn27.pn.pn.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #2

declare void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noreturn nounwind
declare void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96)) unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5folly6detail13SortedSamples12percentileCIEdd(ptr dead_on_unwind noalias writable sret(%"struct.folly::detail::PercentileCI") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2, double noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.google::CheckOpString", align 8 ; 4 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"class.google::LogMessageFatal", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12
  %i.e = load ptr, ptr %1, align 8, !tbaa !16
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  store i64 %i.i, ptr %i.a, align 8, !tbaa !17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 2, ptr %i.b, align 4, !tbaa !19
  %.not.i = icmp ult i64 %i.i, 2
  br i1 %.not.i, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread, !prof !20

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.b

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit: ; preds = %bb.a
  %i.j = call noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull @.str.4) ; 2 uses
  store ptr %i.j, ptr %4, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, label %bb.c

_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge: ; preds = %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !12
  %.pre24 = load ptr, ptr %1, align 8, !tbaa !16
  %.pre25 = ptrtoint ptr %.pre to i64
  %.pre26 = ptrtoint ptr %.pre24 to i64
  %.pre28 = sub i64 %.pre25, %.pre26
  %.pre30 = ashr exact i64 %.pre28, 3
  br label %bb.b

bb.b:                                             ; preds = %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge, %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread
  %.pre-phi31 = phi i64 [ %.pre30, %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit._crit_edge ], [ %i.i, %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit.thread ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.k = fdiv double %2, 1.000000e+02             ; 3 uses
  %i.l = uitofp i64 %.pre-phi31 to double
  %i.m = fmul double %i.k, %i.l
  %i.n = fsub double 1.000000e+00, %i.k
  %i.o = fmul double %i.n, %i.m
  %i.p = call double @sqrt(double noundef %i.o) #23
  %i.q = add nsw i64 %.pre-phi31, -1
  %i.r = uitofp i64 %i.q to double                ; 2 uses
  %i.s = fmul double %i.k, %i.r
  %i.t = fneg double %3
  %i.u = insertelement <2 x double> poison, double %i.t, i64 0
  %i.v = insertelement <2 x double> %i.u, double %3, i64 1
  %i.w = insertelement <2 x double> poison, double %i.p, i64 0
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = insertelement <2 x double> poison, double %i.s, i64 0
  %i.z = shufflevector <2 x double> %i.y, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aa = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.x, <2 x double> %i.z)
  %i.ab = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ac = shufflevector <2 x double> %i.ab, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = fdiv <2 x double> %i.aa, %i.ac          ; 2 uses
  %6 = extractelement <2 x double> %i.ad, i64 0
  %7 = fmul double %6, 1.000000e+02               ; 2 uses
  %8 = fcmp ogt double %7, 0.000000e+00
  %.sroa.speculated19 = select i1 %8, double %7, double 0.000000e+00
  %9 = extractelement <2 x double> %i.ad, i64 1
  %10 = fmul double %9, 1.000000e+02              ; 2 uses
  %11 = fcmp olt double %10, 1.000000e+02
  %.sroa.speculated = select i1 %11, double %10, double 1.000000e+02
  %i.ae = call noundef double @_ZNK5folly6detail13SortedSamples10percentileEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %.sroa.speculated19)
  store double %i.ae, ptr %0, align 8, !tbaa !31
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ag = call noundef double @_ZNK5folly6detail13SortedSamples10percentileEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %.sroa.speculated)
  store double %i.ag, ptr %i.af, align 8, !tbaa !33
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = call noundef double @_ZNK5folly6detail13SortedSamples10percentileEd(ptr noundef nonnull align 8 dereferenceable(24) %1, double noundef %2)
  store double %i.ai, ptr %i.ah, align 8, !tbaa !37
  ret void

bb.c:                                             ; preds = %_ZN6google12Check_GEImplImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @_ZN6google15LogMessageFatalC1EPKciRKNS_13CheckOpStringE(ptr noundef nonnull align 8 dereferenceable(96) %5, ptr noundef nonnull @.str.5, i32 noundef 90, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.aj = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6google10LogMessage6streamEv(ptr noundef nonnull align 8 dereferenceable(96) %5)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ak = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef nonnull @.str.6)
          to label %bb.e unwind label %bb.f       ; 0 uses

bb.e:                                             ; preds = %bb.d
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #25
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.al = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN6google15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %5) #25
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr noundef ptr @_ZN6google17MakeCheckOpStringImiEEPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_RKT0_PKc(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 4 dereferenceable(4) %1, ptr noundef %2) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.google::base::CheckOpMessageBuilder", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  call void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  %i.a = load ptr, ptr %3, align 8, !tbaa !38
  %i.b = load i64, ptr %0, align 8, !tbaa !17
  %i.c = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %i.b)
          to label %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit: ; preds = %bb.a
  %i.d = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.e = load i32, ptr %1, align 4, !tbaa !19
  %i.f = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i32 noundef %i.e)
          to label %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit unwind label %bb.d ; 0 uses

_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit: ; preds = %bb.b
  %i.g = invoke noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret ptr %i.g

bb.d:                                             ; preds = %bb.b, %bb.a, %_ZN6google22MakeCheckOpValueStringIiEEvPSoRKT_.exit, %_ZN6google22MakeCheckOpValueStringImEEvPSoRKT_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.h
}

declare void @_ZN6google4base21CheckOpMessageBuilderC1EPKc(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder7ForVar2Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN6google4base21CheckOpMessageBuilder9NewStringB5cxx11Ev(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN6google4base21CheckOpMessageBuilderD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(ptr noundef nonnull align 8 dereferenceable(264), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt17__throw_bad_allocv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #25
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEElNS0_5__ops15_Iter_less_iterEEvT_S9_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 3                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph43

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEET_S9_S9_T0_.exit
  %i.h = icmp eq i64 %i.au, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph43, !llvm.loop !41

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %storemerge17.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_RT0_(ptr %0, ptr %storemerge17.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.i, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPdSt6vectorIdSaIdEEEENS0_5__ops15_Iter_less_iterEEvT_S9_S9_RT0_.exit.i.i ], [ %storemerge17.lcssa, %._crit_edge ]
  %i.i = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -8 ; 4 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !26 ; 2 uses
  %i.k = load double, ptr %0, align 8, !tbaa !26
  store double %i.k, ptr %i.i, align 8, !tbaa !26
  %i.l = ptrtoint ptr %i.i to i64
  %i.m = sub i64 %i.l, %i.a                       ; 3 uses
  %i.n = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = sdiv i64 %i.o, 2
  %i.q = icmp sgt i64 %i.n, 2
  br i1 %i.q, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.034.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.r = shl i64 %.034.i.i.i.i, 1                 ; 2 uses
  %i.s = add i64 %i.r, 2                          ; 2 uses
  %i.t = getelementptr inbounds [8 x i8], ptr %0, i64 %i.s
  %i.u = or disjoint i64 %i.r, 1                  ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %0, i64 %i.u
  %i.w = load double, ptr %i.t, align 8, !tbaa !26
  %i.x = load double, ptr %i.v, align 8, !tbaa !26
  %i.y = fcmp olt double %i.w, %i.x
  %spec.select.i.i.i.i = select i1 %i.y, i64 %i.u, i64 %i.s ; 4 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !26
  %i.ab = getelementptr inbounds [8 x i8], ptr %0, i64 %.034.i.i.i.i
  store double %i.aa, ptr %i.ab, align 8, !tbaa !26
  %i.ac = icmp slt i64 %spec.select.i.i.i.i, %i.p
  br i1 %i.ac, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !43

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ad = and i64 %i.m, 8
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.af = add nsw i64 %i.n, -2
  %i.ag = ashr exact i64 %i.af, 1
  %i.ah = icmp eq i64 %.0.lcssa.i.i.i.i, %i.ag
  br i1 %i.ah, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ai = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.aj = or disjoint i64 %i.ai, 1                ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !26
  %i.am = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store double %i.al, ptr %i.am, align 8, !tbaa !26
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
end_hunk_0
