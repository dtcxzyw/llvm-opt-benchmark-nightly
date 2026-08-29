Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/catch_amalgamated?download=true
inline.NumInlined: 20608
inline.NumDeleted: 6886
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumRuntimeUnrolled: 28
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_:bb.a
_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59: ; preds = %bb.ab
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #62 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.g
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65: ; preds = %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59, %bb.ab
  %.sroa.076.2 = phi ptr [ %i.cc, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.ab ] ; 4 uses
  %.sroa.20.2 = phi ptr [ %i.cd, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.ab ] ; 2 uses
  %i.ce = icmp ult ptr %2, %3
  br i1 %i.ce, label %.lr.ph248, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %i.cf = uitofp nneg i32 %i.dk to double
  %i.cg = fdiv double %i.di, %i.cf
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65
  %.sroa.076.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.13.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.20.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %i.ch = phi double [ +qnan, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %i.cg, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ] ; 3 uses
  store ptr %.sroa.076.0.lcssa, ptr %0, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.0.lcssa, ptr %i.ci, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.20.0.lcssa, ptr %i.cj, align 8, !tbaa !22
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.ch, ptr %i.ck, align 8, !tbaa !14
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.ch, ptr %i.cl, align 8, !tbaa !14
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.ch, ptr %i.cm, align 8, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double 0.000000e+00, ptr %i.co, align 8, !tbaa !34
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.cn, i8 0, i64 60, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph248:                                        ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %.023247 = phi ptr [ %i.dj, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 4 uses
  %.024246 = phi i32 [ %i.dk, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.0.0245 = phi double [ %i.di, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0.000000e+00, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.20.0244 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.20.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.13.0243 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.076.0242 = phi ptr [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.13.0243, %.sroa.20.0244
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph248
  %i.cp = load i64, ptr %.023247, align 8         ; 2 uses
  store i64 %i.cp, ptr %.sroa.13.0243, align 8, !tbaa !14
  %i.cq = bitcast i64 %i.cp to double
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

bb.ad:                                            ; preds = %.lr.ph248
  %i.cr = ptrtoint ptr %.sroa.20.0244 to i64
  %i.cs = ptrtoint ptr %.sroa.076.0242 to i64
  %i.ct = sub i64 %i.cr, %i.cs                    ; 7 uses
  %i.cu = icmp eq i64 %i.ct, 9223372036854775800
  br i1 %i.cu, label %bb.ae, label %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.ae:                                            ; preds = %bb.ad
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.491) #61
          to label %.noexc69 unwind label %.loopexit.split-lp

.noexc69:                                         ; preds = %bb.ae
  unreachable

_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ad
  %i.cv = ashr exact i64 %i.ct, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cv, i64 1)
  %i.cw = add nsw i64 %.sroa.speculated.i.i.i, %i.cv ; 2 uses
  %i.cx = icmp ult i64 %i.cw, %i.cv
  %i.cy = tail call i64 @llvm.umin.i64(i64 %i.cw, i64 1152921504606846975)
  %i.cz = select i1 %i.cx, i64 1152921504606846975, i64 %i.cy ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.cz, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.da = shl nuw nsw i64 %i.cz, 3
  %i.db = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.da) #62
          to label %.noexc70 unwind label %.loopexit ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.dc = getelementptr inbounds i8, ptr %i.db, i64 %i.ct ; 2 uses
  %i.dd = load i64, ptr %.023247, align 8         ; 2 uses
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !14
  %i.de = icmp sgt i64 %i.ct, 0
  %i.df = bitcast i64 %i.dd to double
  br i1 %i.de, label %bb.af, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.af:                                            ; preds = %.noexc70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %.sroa.076.0242, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.af, %.noexc70
  %.not.i17.i.i = icmp eq ptr %.sroa.076.0242, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0242, i64 noundef %i.ct) #64
  %.pre.pre = load double, ptr %.023247, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi double [ %.pre.pre, %bb.ag ], [ %i.df, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ac
  %i.dh = phi double [ %.pre, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.cq, %bb.ac ]
  %.sroa.076.3 = phi ptr [ %i.db, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.076.0242, %bb.ac ] ; 2 uses
  %.pn183 = phi ptr [ %i.dc, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.13.0243, %bb.ac ]
  %.sroa.20.3 = phi ptr [ %i.dg, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.20.0244, %bb.ac ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn183, i64 8 ; 2 uses
  %i.di = fadd double %.sroa.0.0245, %i.dh        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.023247, i64 8 ; 2 uses
  %i.dk = add nuw nsw i32 %.024246, 1             ; 2 uses
  %i.dl = icmp ult ptr %i.dj, %3
  br i1 %i.dl, label %.lr.ph248, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, !llvm.loop !41

.loopexit:                                        ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

.loopexit.split-lp:                               ; preds = %bb.ae
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ah

bb.ah:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.sroa.076.0242, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIdSaIdEED2Ev.exit58, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0242, i64 noundef %i.ct) #64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit58

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.v, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit58:                  ; preds = %bb.ai, %bb.ah, %bb.z, %bb.y
  %.pn37.pn = phi { ptr, i32 } [ %.pn35, %bb.z ], [ %lpad.phi, %bb.ai ], [ %.pn35, %bb.y ], [ %lpad.phi, %bb.ah ]
  resume { ptr, i32 } %.pn37.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Catch::Benchmark::Detail::bootstrap_analysis") align 8 captures(none) initializes((0, 72)) %0, double noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %class.anon.10, align 8             ; 8 uses
  %6 = alloca %"struct.Catch::Benchmark::Estimate.5", align 8 ; 5 uses
  %7 = alloca %"struct.Catch::Benchmark::Estimate.5", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #63
  store i32 %2, ptr %5, align 8, !tbaa !42
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.b, align 8, !tbaa !46
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %1, ptr %i.c, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail4meanEPKdS3_)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail12_GLOBAL__N_118standard_deviationEPKdS4_)
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.sroa.010.0.copyload = load double, ptr %6, align 8, !tbaa !14
  %.sroa.0.0.copyload = load double, ptr %7, align 8, !tbaa !14 ; 3 uses
  %i.i = sitofp i32 %i.h to double                ; 4 uses
  %i.j = tail call noundef double @sqrt(double noundef %i.i) #63
  %i.k = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %i.l = insertelement <2 x double> %i.k, double %.sroa.010.0.copyload, i64 1
  %i.m = insertelement <2 x double> poison, double %i.j, i64 0
  %i.n = insertelement <2 x double> %i.m, double %i.i, i64 1
  %i.o = fdiv <2 x double> %i.l, %i.n             ; 4 uses
  %i.p = fmul <2 x double> %i.o, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %i.q = extractelement <2 x double> %i.p, i64 1
  %i.r = fmul double %i.q, 2.500000e-01           ; 2 uses
  %i.s = extractelement <2 x double> %i.o, i64 0  ; 2 uses
  %i.t = fcmp olt double %i.s, %i.r
  %.sroa.speculated21.i = select i1 %i.t, double %i.s, double %i.r ; 2 uses
  %i.u = fmul double %.sroa.speculated21.i, %.sroa.speculated21.i ; 3 uses
  %i.v = fmul double %.sroa.0.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.w = sub nsw i32 0, %i.h
  %i.x = sitofp i32 %i.w to double
  %i.y = fneg double %i.i
  %i.z = tail call double @llvm.fmuladd.f64(double %i.y, double %i.u, double %i.v)
  %i.aa = fmul double %i.u, 4.000000e+00
  %foldExtExtBinop = fsub <2 x double> %i.o, %i.p
  %i.ab = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ac = fmul <2 x double> %i.ab, %i.ab
  %i.ad = insertelement <2 x double> poison, double %i.i, i64 0
  %i.ae = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.af = fmul <2 x double> %i.ac, %i.ae          ; 2 uses
  %i.ag = insertelement <2 x double> poison, double %i.x, i64 0
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x double> %i.af, %i.ah          ; 2 uses
  %i.aj = insertelement <2 x double> poison, double %i.z, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fadd <2 x double> %i.af, %i.ak          ; 3 uses
  %i.am = fneg <2 x double> %i.ai
  %i.an = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ao = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ap = fmul <2 x double> %i.ao, %i.am
  %i.aq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.al, <2 x double> %i.ap) ; 2 uses
  %i.ar = extractelement <2 x double> %i.aq, i64 1
  %i.as = tail call double @sqrt(double noundef %i.ar) #63
  %8 = fmul <2 x double> %i.ai, splat (double -2.000000e+00)
  %9 = extractelement <2 x double> %i.aq, i64 0
  %10 = tail call double @sqrt(double noundef %9) #63
  %i.at = insertelement <2 x double> poison, double %10, i64 0
  %i.au = insertelement <2 x double> %i.at, double %i.as, i64 1
  %i.av = fadd <2 x double> %i.au, %i.al
  %i.aw = fdiv <2 x double> %8, %i.av
  %11 = fptosi <2 x double> %i.aw to <2 x i32>
  %12 = sitofp <2 x i32> %11 to <2 x double>      ; 2 uses
  %i.ax = extractelement <2 x double> %12, i64 0  ; 2 uses
  %13 = extractelement <2 x double> %12, i64 1    ; 2 uses
  %14 = fcmp olt double %i.ax, %13
  %.sroa.speculated.i = select i1 %14, double %i.ax, double %13
  %i.ay = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.speculated.i, i64 0
  %i.az = fsub <2 x double> %i.ae, %i.ay          ; 2 uses
  %i.ba = fdiv <2 x double> %i.az, %i.ae
  %i.bb = fneg <2 x double> %i.az
  %i.bc = insertelement <2 x double> poison, double %i.u, i64 0
  %i.bd = shufflevector <2 x double> %i.bc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x double> poison, double %i.v, i64 0
  %i.bf = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bd, <2 x double> %i.bf)
  %i.bh = fmul <2 x double> %i.ba, %i.bg          ; 2 uses
  %i.bi = extractelement <2 x double> %i.bh, i64 0 ; 2 uses
  %i.bj = extractelement <2 x double> %i.bh, i64 1 ; 2 uses
  %i.bk = fcmp olt double %i.bi, %i.bj
  %.sroa.speculated4.i = select i1 %i.bk, double %i.bi, double %i.bj
  %i.bl = fdiv double %.sroa.speculated4.i, %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !48
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bm, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !48
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bl, ptr %i.bn, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #63
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5Catch9Benchmark6Detail17classify_outliersEPKdS3_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.Catch::Benchmark::OutlierClassification") align 4 captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 7 uses
  %i.d = icmp ugt i64 %i.c, 9223372036854775800
  br i1 %i.d, label %.noexc.i, label %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i

.noexc.i:                                         ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.548) #61
  unreachable

_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i: ; preds = %bb.a
  %.not.i.i.i = icmp eq ptr %2, %1                ; 2 uses
  br i1 %.not.i.i.i, label %.thread.i.i, label %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i

.thread.i.i:                                      ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.e = getelementptr inbounds nuw i8, ptr null, i64 %i.c
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i: ; preds = %_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_.exit.i.i
  %i.f = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #62 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c ; 3 uses
  %i.h = icmp samesign ugt i64 %i.c, 8
  br i1 %i.h, label %bb.b, label %bb.c, !prof !49

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.i = icmp eq i64 %i.c, 8
  br i1 %i.i, label %bb.d, label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %1, align 8, !tbaa !14
  store double %i.j, ptr %i.f, align 8, !tbaa !14
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit:     ; preds = %bb.d, %bb.c, %bb.b, %.thread.i.i
  %.sroa.17.0 = phi ptr [ %i.e, %.thread.i.i ], [ %i.g, %bb.b ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 10 uses
  %.sroa.052.0 = phi ptr [ null, %.thread.i.i ], [ %i.f, %bb.b ], [ %i.f, %bb.d ], [ %i.f, %bb.c ] ; 10 uses
  %i.k = ptrtoint ptr %.sroa.17.0 to i64
  %i.l = ptrtoint ptr %.sroa.052.0 to i64
  %i.m = sub i64 %i.k, %i.l                       ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.052.0, i64 %i.m ; 2 uses
  %i.o = ashr exact i64 %i.m, 3                   ; 3 uses
  %i.p = add nsw i64 %i.o, -1                     ; 2 uses
  %i.q = sitofp i64 %i.p to double
  %i.r = fmul nnan double %i.q, 2.500000e-01      ; 2 uses
  %i.s = fptosi double %i.r to i32                ; 2 uses
  %i.t = sitofp i32 %i.s to double
  %i.u = fsub double %i.r, %i.t                   ; 2 uses
  %i.v = sext i32 %i.s to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %.sroa.052.0, i64 %i.v ; 5 uses
  %i.x = icmp eq ptr %.sroa.052.0, %.sroa.17.0    ; 2 uses
  %i.y = icmp eq ptr %i.w, %.sroa.17.0
  %or.cond.i.i = or i1 %i.x, %i.y
  br i1 %or.cond.i.i, label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit
  %i.z = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.aa = shl nuw nsw i64 %i.z, 1
  %i.ab = xor i64 %i.aa, 126
  invoke void @_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %.sroa.052.0, ptr noundef nonnull %i.w, ptr noundef nonnull %i.n, i64 noundef %i.ab)
          to label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i unwind label %bb.r

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i:            ; preds = %bb.e, %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit
  %i.ac = load double, ptr %i.w, align 8, !tbaa !14 ; 3 uses
  %i.ad = fcmp oeq double %i.u, 0.000000e+00
  br i1 %i.ad, label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i
  %i.ae = getelementptr i8, ptr %i.w, i64 8       ; 4 uses
  %i.af = icmp eq ptr %i.ae, %.sroa.17.0
  %i.ag = getelementptr i8, ptr %i.w, i64 16      ; 2 uses
  %.not17.i.i.i = icmp eq ptr %i.ag, %.sroa.17.0
  %or.cond.i.i.i = or i1 %i.af, %.not17.i.i.i
  br i1 %or.cond.i.i.i, label %_ZSt11min_elementIPdET_S1_S1_.exit.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.f
  %.pre.i.i.i = load double, ptr %i.ae, align 8, !tbaa !14
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ah = phi double [ %i.am, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i ]
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !14 ; 2 uses
  %i.ak = fcmp olt double %i.aj, %i.ah            ; 2 uses
  %spec.select.i.i.i = select i1 %i.ak, ptr %i.ai, ptr %.018.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.al, %.sroa.17.0
  %i.am = select i1 %i.ak, double %i.aj, double %i.ah
  br i1 %.not.i.i.i31, label %_ZSt11min_elementIPdET_S1_S1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !50

_ZSt11min_elementIPdET_S1_S1_.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.f
  %.011.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.an = load double, ptr %.011.i.i.i, align 8, !tbaa !14
  %i.ao = fsub double %i.an, %i.ac
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.u, double %i.ao, double %i.ac)
  br label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit

_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit: ; preds = %_ZSt11min_elementIPdET_S1_S1_.exit.i, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i
  %.0.i = phi double [ %i.ap, %_ZSt11min_elementIPdET_S1_S1_.exit.i ], [ %i.ac, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i ] ; 2 uses
  %i.aq = mul nsw i64 %i.p, 3
  %i.ar = sitofp i64 %i.aq to double
  %i.as = fmul nnan double %i.ar, 2.500000e-01    ; 2 uses
  %i.at = fptosi double %i.as to i32              ; 2 uses
  %i.au = sitofp i32 %i.at to double
  %i.av = fsub double %i.as, %i.au                ; 2 uses
  %i.aw = sext i32 %i.at to i64
  %i.ax = getelementptr inbounds [8 x i8], ptr %.sroa.052.0, i64 %i.aw ; 5 uses
  %i.ay = icmp eq ptr %i.ax, %.sroa.17.0
  %or.cond.i.i32 = or i1 %i.x, %i.ay
  br i1 %or.cond.i.i32, label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33, label %bb.g

bb.g:                                             ; preds = %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit
  %i.az = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.o, i1 true)
  %i.ba = shl nuw nsw i64 %i.az, 1
  %i.bb = xor i64 %i.ba, 126
  invoke void @_ZSt13__introselectIPdlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_T1_(ptr noundef nonnull %.sroa.052.0, ptr noundef nonnull %i.ax, ptr noundef nonnull %i.n, i64 noundef %i.bb)
          to label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33 unwind label %.thread

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33:          ; preds = %bb.g, %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !14 ; 3 uses
  %i.bd = fcmp oeq double %i.av, 0.000000e+00
  br i1 %i.bd, label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit46, label %bb.h

bb.h:                                             ; preds = %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33
  %i.be = getelementptr i8, ptr %i.ax, i64 8      ; 4 uses
  %i.bf = icmp eq ptr %i.be, %.sroa.17.0
  %i.bg = getelementptr i8, ptr %i.ax, i64 16     ; 2 uses
  %.not17.i.i.i34 = icmp eq ptr %i.bg, %.sroa.17.0
  %or.cond.i.i.i35 = or i1 %i.bf, %.not17.i.i.i34
  br i1 %or.cond.i.i.i35, label %_ZSt11min_elementIPdET_S1_S1_.exit.i42, label %.lr.ph.preheader.i.i.i36

.lr.ph.preheader.i.i.i36:                         ; preds = %bb.h
  %.pre.i.i.i37 = load double, ptr %i.be, align 8, !tbaa !14
  br label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %.lr.ph.i.i.i38, %.lr.ph.preheader.i.i.i36
  %i.bh = phi double [ %i.bm, %.lr.ph.i.i.i38 ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i36 ] ; 2 uses
  %i.bi = phi ptr [ %i.bl, %.lr.ph.i.i.i38 ], [ %i.bg, %.lr.ph.preheader.i.i.i36 ] ; 3 uses
  %.018.i.i.i39 = phi ptr [ %spec.select.i.i.i40, %.lr.ph.i.i.i38 ], [ %i.be, %.lr.ph.preheader.i.i.i36 ]
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !14 ; 2 uses
  %i.bk = fcmp olt double %i.bj, %i.bh            ; 2 uses
  %spec.select.i.i.i40 = select i1 %i.bk, ptr %i.bi, ptr %.018.i.i.i39 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 2 uses
  %.not.i.i.i41 = icmp eq ptr %i.bl, %.sroa.17.0
  %i.bm = select i1 %i.bk, double %i.bj, double %i.bh
  br i1 %.not.i.i.i41, label %_ZSt11min_elementIPdET_S1_S1_.exit.i42, label %.lr.ph.i.i.i38, !llvm.loop !50

_ZSt11min_elementIPdET_S1_S1_.exit.i42:           ; preds = %.lr.ph.i.i.i38, %bb.h
  %.011.i.i.i43 = phi ptr [ %i.be, %bb.h ], [ %spec.select.i.i.i40, %.lr.ph.i.i.i38 ]
  %i.bn = load double, ptr %.011.i.i.i43, align 8, !tbaa !14
  %i.bo = fsub double %i.bn, %i.bc
  %i.bp = tail call double @llvm.fmuladd.f64(double %i.av, double %i.bo, double %i.bc)
  br label %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit46

_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit46: ; preds = %_ZSt11min_elementIPdET_S1_S1_.exit.i42, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33
  %.0.i44 = phi double [ %i.bp, %_ZSt11min_elementIPdET_S1_S1_.exit.i42 ], [ %i.bc, %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33 ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br i1 %.not.i.i.i, label %.thread95, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit46
  %i.bq = fsub double %.0.i44, %.0.i              ; 2 uses
  %i.br = insertelement <2 x double> poison, double %i.bq, i64 0
  %i.bs = shufflevector <2 x double> %i.br, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bt = insertelement <2 x double> poison, double %.0.i44, i64 0
  %i.bu = shufflevector <2 x double> %i.bt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bs, <2 x double> <double 1.500000e+00, double 3.000000e+00>, <2 x double> %i.bu) ; 2 uses
  %i.bw = fneg double %i.bq
end_hunk_0
begin_hunk_1_@_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISE_ERS3_:bb.a
  %.10.i.i.i68 = zext i1 %i.cb to i32
  %i.cc = tail call i32 @strncmp(ptr noundef %i.ai, ptr noundef readonly %.sroa.0.0.copyload.i.i64, i64 noundef %..i.i.i67) #65
  %i.cd = icmp slt i32 %i.cc, %.10.i.i.i68        ; 2 uses
  %.in.v.i69 = select i1 %i.cd, i64 16, i64 24
  %.in.i70 = getelementptr inbounds nuw i8, ptr %.02529.i63, i64 %.in.v.i69
  %.025.i71 = load ptr, ptr %.in.i70, align 8, !tbaa !258 ; 2 uses
  %.not.i72 = icmp eq ptr %.025.i71, null
  br i1 %.not.i72, label %._crit_edge.i73, label %.lr.ph.i62, !llvm.loop !5380

._crit_edge.i73:                                  ; preds = %.lr.ph.i62
  br i1 %i.cd, label %._crit_edge.thread.i87, label %bb.u

._crit_edge.thread.i87:                           ; preds = %._crit_edge.i73, %bb.s
  %.024.lcssa34.i88 = phi ptr [ %.02529.i63, %._crit_edge.i73 ], [ %i.a, %bb.s ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !251
  %i.cg = icmp eq ptr %.024.lcssa34.i88, %i.cf
  br i1 %i.cg, label %_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE24_M_get_insert_unique_posERS3_.exit, label %bb.t

bb.t:                                             ; preds = %._crit_edge.thread.i87
  %i.ch = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.024.lcssa34.i88) #65 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !166 ; 2 uses
  %.phi.trans.insert118 = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %.pre119 = load ptr, ptr %.phi.trans.insert118, align 8, !tbaa !171
  %.pre132 = tail call i64 @llvm.umin.i64(i64 %.pre, i64 %i.ag)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i73
  %..i.i8.i79.pre-phi = phi i64 [ %.pre132, %bb.t ], [ %..i.i.i67, %._crit_edge.i73 ]
  %i.ci = phi ptr [ %.pre119, %bb.t ], [ %.sroa.0.0.copyload.i.i64, %._crit_edge.i73 ]
  %i.cj = phi i64 [ %.pre, %bb.t ], [ %.sroa.2.0.copyload.i.i66, %._crit_edge.i73 ]
  %.024.lcssa33.i74 = phi ptr [ %.024.lcssa34.i88, %bb.t ], [ %.02529.i63, %._crit_edge.i73 ]
  %.sroa.010.0.i75 = phi ptr [ %i.ch, %bb.t ], [ %.02529.i63, %._crit_edge.i73 ]
  %i.ck = icmp ult i64 %i.cj, %i.ag
  %.10.i.i9.i80 = zext i1 %i.ck to i32
  %i.cl = tail call i32 @strncmp(ptr noundef %i.ci, ptr noundef readonly %i.ai, i64 noundef %..i.i8.i79.pre-phi) #65
  %i.cm = icmp slt i32 %i.cl, %.10.i.i9.i80       ; 2 uses
  %spec.select.i81 = select i1 %i.cm, ptr null, ptr %.sroa.010.0.i75
  %spec.select26.i82 = select i1 %i.cm, ptr %.024.lcssa33.i74, ptr null
  br label %_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE24_M_get_insert_unique_posERS3_.exit

_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE24_M_get_insert_unique_posERS3_.exit: ; preds = %bb.u, %._crit_edge.thread.i87, %bb.n, %._crit_edge.thread.i47, %bb.g, %._crit_edge.thread.i, %bb.r, %bb.k, %bb.o, %bb.p, %bb.i, %bb.c
  %.sroa.0110.2 = phi ptr [ null, %bb.p ], [ %spec.select, %bb.k ], [ null, %bb.c ], [ %spec.select112, %bb.r ], [ null, %._crit_edge.thread.i ], [ %i.am, %bb.i ], [ %1, %bb.o ], [ null, %._crit_edge.thread.i47 ], [ %spec.select.i, %bb.g ], [ %spec.select.i41, %bb.n ], [ %spec.select.i81, %bb.u ], [ null, %._crit_edge.thread.i87 ]
  %.sroa.12.2 = phi ptr [ %i.bp, %bb.p ], [ %spec.select111, %bb.k ], [ %i.f, %bb.c ], [ %spec.select113, %bb.r ], [ %.024.lcssa34.i, %._crit_edge.thread.i ], [ %i.am, %bb.i ], [ null, %bb.o ], [ %.024.lcssa34.i48, %._crit_edge.thread.i47 ], [ %spec.select26.i, %bb.g ], [ %spec.select26.i42, %bb.n ], [ %spec.select26.i82, %bb.u ], [ %.024.lcssa34.i88, %._crit_edge.thread.i87 ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.0110.2, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.12.2, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !5377 ; 4 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !3161 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !3159
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #64
  br label %_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit

_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit: ; preds = %bb.b, %bb.c
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 72) #64
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt8_Rb_treeIN5Catch9StringRefESt4pairIKS1_St6vectorIPKNS0_22CumulativeReporterBase4NodeINS0_13TestCaseStatsENS5_11SectionNodeEEESaISB_EEESt10_Select1stISE_ESt4lessIS1_ESaISE_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISE_E.exit, %bb.a
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIlEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Catch11StringMakerIevE7convertIeEENSt9enable_ifIXgssr5Catch6Detail18IsStreamInsertableIT_EE5valueENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4typeERKS4_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 16 dereferenceable(16) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Catch::ReusableStringStream", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #63
  %i.a = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = tail call noundef i64 @_ZN5Catch13StringStreams3addEv(ptr noundef nonnull align 8 dereferenceable(424) %i.b) ; 2 uses
  store i64 %i.c, ptr %2, align 8, !tbaa !92
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = tail call noundef ptr @_ZN5Catch9SingletonINS_13StringStreamsES1_S1_E11getInternalEv()
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !95
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !98   ; 6 uses
  store ptr %i.i, ptr %i.d, align 8, !tbaa !101
  %i.j = load x86_fp80, ptr %1, align 16, !tbaa !5381
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.i, x86_fp80 noundef %i.j)
          to label %_ZN5Catch20ReusableStringStreamlsIeEERS0_RKT_.exit unwind label %bb.e ; 0 uses

_ZN5Catch20ReusableStringStreamlsIeEERS0_RKT_.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5382)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5385)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !73, !alias.scope !5388
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.m, align 8, !tbaa !76, !alias.scope !5388
  store i8 0, ptr %i.l, align 8, !tbaa !79, !alias.scope !5388
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !114, !noalias !5391 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.o, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !noalias !5391 ; 2 uses
  %i.r = icmp ugt ptr %i.o, %i.q
  %.08.i.i.i.i = select i1 %i.r, ptr %i.o, ptr %i.q ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIeEERS0_RKT_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !119, !noalias !5391 ; 2 uses
  %i.u = ptrtoint ptr %.08.i.i.i.i to i64
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0, i64 noundef 0, ptr noundef %i.t, i64 noundef %i.w)
          to label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %0, align 8, !tbaa !80, !alias.scope !5388 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.l
  br i1 %i.aa, label %.body, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.c
  %i.ab = load i64, ptr %i.l, align 8, !tbaa !79, !alias.scope !5388
  %i.ac = add i64 %i.ab, 1
  tail call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #64
  br label %.body

bb.d:                                             ; preds = %_ZN5Catch20ReusableStringStreamlsIeEERS0_RKT_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.ad)
          to label %_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit unwind label %bb.c

_ZNK5Catch20ReusableStringStream3strB5cxx11Ev.exit: ; preds = %bb.d, %bb.b
  call void @_ZN5Catch20ReusableStringStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.ae, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.y, %bb.c ]
  call void @_ZN5Catch20ReusableStringStreamD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %2) #63
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #63
  resume { ptr, i32 } %eh.lpad-body
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIeEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), x86_fp80 noundef) local_unnamed_addr #19

; Function Attrs: nofree nounwind uwtable
define internal void @_GLOBAL__sub_I_catch_amalgamated.cpp() #56 section ".text.startup" {
bb.a:
  %i.a = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5Catch12LeakDetectorD2Ev, ptr nonnull @_ZN5CatchL12leakDetectorE, ptr nonnull @__dso_handle) #63 ; 0 uses
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #57

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #58

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #59

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare range(i32 -1, 2) i32 @llvm.ucmp.i32.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.log.f80(x86_fp80) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v2i64(<2 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v3i64(<3 x i64>) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.vector.reduce.add.v4i64(<4 x i64>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { mustprogress nofree norecurse nosync nounwind memory(argmem: read, errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { cold nofree noreturn }
attributes #25 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nounwind memory(none) }
attributes #27 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #33 = { mustprogress nofree nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #40 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #41 = { mustprogress nofree nounwind memory(readwrite, inaccessiblemem: read, target_mem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #42 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #43 = { cold noreturn }
attributes #44 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #45 = { mustprogress nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #46 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #47 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #48 = { mustprogress noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #49 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #50 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #51 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #52 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #53 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #54 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #55 = { mustprogress nofree nounwind willreturn memory(read) }
attributes #56 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #57 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #58 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #59 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #60 = { noreturn nounwind }
attributes #61 = { noreturn }
attributes #62 = { builtin allocsize(0) }
attributes #63 = { nounwind }
attributes #64 = { builtin nounwind }
attributes #65 = { nounwind willreturn memory(read) }
attributes #66 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEE", !13, i64 0}
!13 = !{!"double", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !19, i64 0}
!18 = !{!"_ZTSNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_Vector_impl_dataE", !19, i64 0, !19, i64 8, !19, i64 16}
!19 = !{!"p1 _ZTSNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEE", !20, i64 0}
!20 = !{!"any pointer", !7, i64 0}
!21 = !{!18, !19, i64 8}
!22 = !{!18, !19, i64 16}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_ENK3$_0clENS0_8EstimateIdEE: argument 0"}
!25 = distinct !{!25, !"_ZZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_ENK3$_0clENS0_8EstimateIdEE"}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_ENK3$_0clENS0_8EstimateIdEE: argument 0"}
!28 = distinct !{!28, !"_ZZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_ENK3$_0clENS0_8EstimateIdEE"}
!29 = !{i64 0, i64 4, !30, i64 4, i64 4, !30, i64 8, i64 4, !30, i64 12, i64 4, !30, i64 16, i64 4, !30}
!30 = !{!6, !6, i64 0}
!31 = !{!32, !13, i64 64}
!32 = !{!"_ZTSN5Catch9Benchmark6Detail18bootstrap_analysisE", !33, i64 0, !33, i64 32, !13, i64 64}
!33 = !{!"_ZTSN5Catch9Benchmark8EstimateIdEE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!34 = !{!35, !13, i64 112}
!35 = !{!"_ZTSN5Catch9Benchmark14SampleAnalysisE", !36, i64 0, !39, i64 24, !39, i64 56, !40, i64 88, !13, i64 112}
!36 = !{!"_ZTSSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE", !37, i64 0}
!37 = !{!"_ZTSSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE", !38, i64 0}
!38 = !{!"_ZTSNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_Vector_implE", !18, i64 0}
!39 = !{!"_ZTSN5Catch9Benchmark8EstimateINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEEEE", !12, i64 0, !12, i64 8, !12, i64 16, !13, i64 24}
!40 = !{!"_ZTSN5Catch9Benchmark21OutlierClassificationE", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16}
!41 = distinct !{!41, !16}
!42 = !{!43, !6, i64 0}
!43 = !{!"_ZTSZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_E3$_0", !6, i64 0, !44, i64 8, !44, i64 16, !13, i64 24}
!44 = !{!"p1 double", !20, i64 0}
!45 = !{!43, !44, i64 8}
!46 = !{!43, !44, i64 16}
!47 = !{!43, !13, i64 24}
!48 = !{i64 0, i64 8, !14, i64 8, i64 8, !14, i64 16, i64 8, !14, i64 24, i64 8, !14}
!49 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = !{!"branch_weights", i32 1, i32 1048575}
!54 = !{!33, !13, i64 0}
!55 = !{!33, !13, i64 8}
!56 = !{!33, !13, i64 16}
!57 = !{!33, !13, i64 24}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZN5Catch9Benchmark6Detail12_GLOBAL__N_19jackknifeEPFdPKdS4_EPdS7_: argument 0"}
!60 = distinct !{!60, !"_ZN5Catch9Benchmark6Detail12_GLOBAL__N_19jackknifeEPFdPKdS4_EPdS7_"}
!61 = distinct !{!61, !16}
!62 = distinct !{!62, !63}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = distinct !{!64, !63}
!65 = !{!66, !44, i64 8}
!66 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !44, i64 0, !44, i64 8, !44, i64 16}
!67 = !{!66, !44, i64 0}
!68 = distinct !{!68, !16, !69, !70}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = distinct !{!71, !16, !70, !69}
!72 = distinct !{!72, !16}
!73 = !{!74, !75, i64 0}
!74 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !75, i64 0}
!75 = !{!"p1 omnipotent char", !20, i64 0}
!76 = !{!77, !78, i64 8}
!77 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !74, i64 0, !78, i64 8, !7, i64 16}
!78 = !{!"long", !7, i64 0}
!79 = !{!7, !7, i64 0}
!80 = !{!77, !75, i64 0}
!81 = !{!82}
!82 = distinct !{!82, !83, !"_ZN5Catch9Benchmark6Detail12_GLOBAL__N_18resampleINS_11SimplePcg32EPFdPKdS6_EEESt6vectorIdSaIdEERT_jS6_S6_RT0_: argument 0"}
!83 = distinct !{!83, !"_ZN5Catch9Benchmark6Detail12_GLOBAL__N_18resampleINS_11SimplePcg32EPFdPKdS6_EEESt6vectorIdSaIdEERT_jS6_S6_RT0_"}
!84 = !{!66, !44, i64 16}
!85 = !{!44, !44, i64 0}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = distinct !{!88, !16}
!89 = !{!90, !13, i64 0}
!90 = !{!"_ZTSN5Catch6ApproxE", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24}
!91 = !{!90, !13, i64 24}
!92 = !{!93, !78, i64 0}
!93 = !{!"_ZTSN5Catch20ReusableStringStreamE", !78, i64 0, !94, i64 8}
!94 = !{!"p1 _ZTSSo", !20, i64 0}
!95 = !{!96, !97, i64 0}
!96 = !{!"_ZTSNSt12_Vector_baseIN5Catch6Detail10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEESaIS9_EE17_Vector_impl_dataE", !97, i64 0, !97, i64 8, !97, i64 16}
!97 = !{!"p1 _ZTSN5Catch6Detail10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !20, i64 0}
!98 = !{!99, !100, i64 0}
!99 = !{!"_ZTSN5Catch6Detail10unique_ptrINSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEEEE", !100, i64 0}
!100 = !{!"p1 _ZTSNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE", !20, i64 0}
!101 = !{!93, !94, i64 8}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZN5Catch6Detail9stringifyIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_: argument 0"}
!104 = distinct !{!104, !"_ZN5Catch6Detail9stringifyIdEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_"}
!105 = !{!106}
end_hunk_1
