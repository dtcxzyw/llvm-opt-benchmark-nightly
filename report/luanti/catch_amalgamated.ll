begin_hunk_0_@_ZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_:bb.a

bb.z:                                             ; preds = %bb.y
  %i.bz = ptrtoint ptr %.sroa.27.0213 to i64
  %i.ca = ptrtoint ptr %.sroa.0110.0205 to i64
  %i.cb = sub i64 %i.bz, %i.ca
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0110.0205, i64 noundef %i.cb) #64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit58

bb.aa:                                            ; preds = %bb.a
  br i1 %i.h, label %.noexc63, label %bb.ab

.noexc63:                                         ; preds = %bb.aa
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.519) #61
  unreachable

bb.ab:                                            ; preds = %bb.aa
  %.not171 = icmp eq ptr %3, %2
  br i1 %.not171, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65, label %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59

_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59: ; preds = %bb.ab
  %i.cc = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #62 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 %i.g
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65: ; preds = %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59, %bb.ab
  %.sroa.076.2 = phi ptr [ %i.cc, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.ab ] ; 4 uses
  %.sroa.18.2 = phi ptr [ %i.cd, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.ab ] ; 2 uses
  %i.ce = icmp ult ptr %2, %3
  br i1 %i.ce, label %.lr.ph237, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %i.cf = uitofp nneg i32 %i.dk to double
  %i.cg = fdiv double %i.di, %i.cf
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65
  %.sroa.076.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.12.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.12.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.18.0.lcssa = phi ptr [ %.sroa.18.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.18.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %i.ch = phi double [ +qnan, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %i.cg, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ] ; 3 uses
  store ptr %.sroa.076.0.lcssa, ptr %0, align 8, !tbaa !17
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.12.0.lcssa, ptr %i.ci, align 8, !tbaa !21
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.18.0.lcssa, ptr %i.cj, align 8, !tbaa !22
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

.lr.ph237:                                        ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %.023236 = phi ptr [ %i.dj, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 4 uses
  %.024235 = phi i32 [ %i.dk, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.0.0234 = phi double [ %i.di, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0.000000e+00, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.18.0233 = phi ptr [ %.sroa.18.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.18.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.12.0232 = phi ptr [ %.sroa.12.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.076.0231 = phi ptr [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.12.0232, %.sroa.18.0233
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %.lr.ph237
  %i.cp = load i64, ptr %.023236, align 8         ; 2 uses
  store i64 %i.cp, ptr %.sroa.12.0232, align 8, !tbaa !14
  %i.cq = bitcast i64 %i.cp to double
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

bb.ad:                                            ; preds = %.lr.ph237
  %i.cr = ptrtoint ptr %.sroa.18.0233 to i64
  %i.cs = ptrtoint ptr %.sroa.076.0231 to i64
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
  %i.dd = load i64, ptr %.023236, align 8         ; 2 uses
  store i64 %i.dd, ptr %i.dc, align 8, !tbaa !14
  %i.de = icmp sgt i64 %i.ct, 0
  %i.df = bitcast i64 %i.dd to double
  br i1 %i.de, label %bb.af, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.af:                                            ; preds = %.noexc70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.db, ptr align 8 %.sroa.076.0231, i64 %i.ct, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.af, %.noexc70
  %.not.i17.i.i = icmp eq ptr %.sroa.076.0231, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ag

bb.ag:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0231, i64 noundef %i.ct) #64
  %.pre.pre = load double, ptr %.023236, align 8, !tbaa !11
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ag, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi double [ %.pre.pre, %bb.ag ], [ %i.df, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.db, i64 %i.cz
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.ac
  %i.dh = phi double [ %.pre, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.cq, %bb.ac ]
  %.sroa.076.3 = phi ptr [ %i.db, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.076.0231, %bb.ac ] ; 2 uses
  %.pn172 = phi ptr [ %i.dc, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.12.0232, %bb.ac ]
  %.sroa.18.3 = phi ptr [ %i.dg, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.18.0233, %bb.ac ] ; 2 uses
  %.sroa.12.2 = getelementptr inbounds nuw i8, ptr %.pn172, i64 8 ; 2 uses
  %i.di = fadd double %.sroa.0.0234, %i.dh        ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.023236, i64 8 ; 2 uses
  %i.dk = add nuw nsw i32 %.024235, 1             ; 2 uses
  %i.dl = icmp ult ptr %i.dj, %3
  br i1 %i.dl, label %.lr.ph237, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, !llvm.loop !41

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
  %.not.i.i.i71 = icmp eq ptr %.sroa.076.0231, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIdSaIdEED2Ev.exit58, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0231, i64 noundef %i.ct) #64
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
  %8 = fmul double %.sroa.0.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %9 = sub nsw i32 0, %i.h
  %10 = sitofp i32 %9 to double
  %11 = fneg double %i.i
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
  %i.v = tail call double @llvm.fmuladd.f64(double %11, double %i.u, double %8)
  %i.w = fmul double %i.u, 4.000000e+00
  %foldExtExtBinop = fsub <2 x double> %i.o, %i.p
  %i.x = shufflevector <2 x double> %foldExtExtBinop, <2 x double> %i.o, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.y = fmul <2 x double> %i.x, %i.x
  %i.z = insertelement <2 x double> poison, double %i.i, i64 0
  %i.aa = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.ab = fmul <2 x double> %i.y, %i.aa           ; 2 uses
  %i.ac = insertelement <2 x double> poison, double %10, i64 0
  %i.ad = shufflevector <2 x double> %i.ac, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ae = fmul <2 x double> %i.ab, %i.ad          ; 2 uses
  %i.af = insertelement <2 x double> poison, double %i.v, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fadd <2 x double> %i.ab, %i.ag          ; 3 uses
  %i.ai = fneg <2 x double> %i.ae
  %i.aj = insertelement <2 x double> poison, double %i.w, i64 0
  %i.ak = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.al = fmul <2 x double> %i.ak, %i.ai
  %i.am = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ah, <2 x double> %i.al) ; 2 uses
  %i.an = extractelement <2 x double> %i.am, i64 1
  %i.ao = tail call double @sqrt(double noundef %i.an) #63
  %i.ap = fmul <2 x double> %i.ae, splat (double -2.000000e+00)
  %i.aq = extractelement <2 x double> %i.am, i64 0
  %i.ar = tail call double @sqrt(double noundef %i.aq) #63
  %i.as = insertelement <2 x double> poison, double %i.ar, i64 0
  %i.at = insertelement <2 x double> %i.as, double %i.ao, i64 1
  %i.au = fadd <2 x double> %i.at, %i.ah
  %i.av = fdiv <2 x double> %i.ap, %i.au
  %i.aw = fptosi <2 x double> %i.av to <2 x i32>
  %i.ax = sitofp <2 x i32> %i.aw to <2 x double>  ; 2 uses
  %i.ay = extractelement <2 x double> %i.ax, i64 0 ; 2 uses
  %i.az = extractelement <2 x double> %i.ax, i64 1 ; 2 uses
  %i.ba = fcmp olt double %i.ay, %i.az
  %.sroa.speculated.i = select i1 %i.ba, double %i.ay, double %i.az
  %i.bb = insertelement <2 x double> <double poison, double 1.000000e+00>, double %.sroa.speculated.i, i64 0
  %i.bc = fsub <2 x double> %i.aa, %i.bb          ; 2 uses
  %i.bd = fdiv <2 x double> %i.bc, %i.aa
  %i.be = fneg <2 x double> %i.bc
  %i.bf = insertelement <2 x double> poison, double %i.u, i64 0
  %i.bg = shufflevector <2 x double> %i.bf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> poison, double %8, i64 0
  %i.bi = shufflevector <2 x double> %i.bh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.be, <2 x double> %i.bg, <2 x double> %i.bi)
  %i.bk = fmul <2 x double> %i.bd, %i.bj          ; 2 uses
  %i.bl = extractelement <2 x double> %i.bk, i64 0 ; 2 uses
  %i.bm = extractelement <2 x double> %i.bk, i64 1 ; 2 uses
  %i.bn = fcmp olt double %i.bl, %i.bm
  %.sroa.speculated4.i = select i1 %i.bn, double %i.bl, double %i.bm
  %i.bo = fdiv double %.sroa.speculated4.i, %8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !48
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bp, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !48
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bo, ptr %i.bq, align 8, !tbaa !31
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
          to label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i unwind label %bb.s

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
  %i.bx = insertelement <2 x double> poison, double %i.bw, i64 0
  %i.by = shufflevector <2 x double> %i.bx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bz = insertelement <2 x double> poison, double %.0.i, i64 0
  %i.ca = shufflevector <2 x double> %i.bz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> <double 3.000000e+00, double 1.500000e+00>, <2 x double> %i.ca) ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.cd = extractelement <2 x double> %i.cb, i64 0
  %i.ce = extractelement <2 x double> %i.cb, i64 1
  %i.cf = extractelement <2 x double> %i.bv, i64 0
  %i.cg = extractelement <2 x double> %i.bv, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %.069 = phi ptr [ %1, %.lr.ph ], [ %i.cv, %bb.q ] ; 2 uses
  %i.ch = phi i32 [ 0, %.lr.ph ], [ %i.cu, %bb.q ]
end_hunk_0
