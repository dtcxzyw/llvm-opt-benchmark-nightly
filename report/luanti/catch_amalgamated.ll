Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/catch_amalgamated?download=true
inline.NumInlined: 20608
inline.NumDeleted: 6886
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 26
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN5Catch9Benchmark6Detail7analyseERKNS_7IConfigEPNSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESA_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #63
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp190.loopexit.split-lp, %bb.v
  %.sroa.29.0224 = phi ptr [ %.sroa.29.0.lcssa, %bb.v ], [ %.sroa.19.0228, %.loopexit.split-lp190.loopexit.split-lp ]
  %.sroa.0118.0216 = phi ptr [ %.sroa.0118.0.lcssa, %bb.v ], [ %.sroa.0118.0229, %.loopexit.split-lp190.loopexit.split-lp ] ; 3 uses
  %.pn35 = phi { ptr, i32 } [ %.pn.pn.pn, %bb.v ], [ %lpad.loopexit.split-lp332, %.loopexit.split-lp190.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i57 = icmp eq ptr %.sroa.0118.0216, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIdSaIdEED2Ev.exit58, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.by = ptrtoint ptr %.sroa.29.0224 to i64
  %i.bz = ptrtoint ptr %.sroa.0118.0216 to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.0118.0216, i64 noundef %i.ca) #64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit58

bb.y:                                             ; preds = %bb.a
  br i1 %i.h, label %.noexc63, label %bb.z

.noexc63:                                         ; preds = %bb.y
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.519) #61
  unreachable

bb.z:                                             ; preds = %bb.y
  %.not182 = icmp eq ptr %3, %2
  br i1 %.not182, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65, label %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59

_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59: ; preds = %bb.z
  %i.cb = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.g) #62 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 %i.g
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65: ; preds = %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59, %bb.z
  %.sroa.076.2 = phi ptr [ %i.cb, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.z ] ; 4 uses
  %.sroa.20.2 = phi ptr [ %i.cc, %_ZNSt12_Vector_baseINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_M_allocateEm.exit.i59 ], [ null, %bb.z ] ; 2 uses
  %i.cd = icmp ult ptr %2, %3
  br i1 %i.cd, label %.lr.ph248, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %i.ce = uitofp nneg i32 %i.dj to double
  %i.cf = fdiv double %i.dh, %i.ce
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65
  %.sroa.076.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.13.0.lcssa = phi ptr [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.13.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %.sroa.20.0.lcssa = phi ptr [ %.sroa.20.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %.sroa.20.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ]
  %i.cg = phi double [ +qnan, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ], [ %i.cf, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit ] ; 3 uses
  store ptr %.sroa.076.0.lcssa, ptr %0, align 8, !tbaa !159
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.13.0.lcssa, ptr %i.ch, align 8, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.20.0.lcssa, ptr %i.ci, align 8, !tbaa !161
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %i.cg, ptr %i.cj, align 8, !tbaa !154
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 32
  store double %i.cg, ptr %i.ck, align 8, !tbaa !154
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %i.cg, ptr %i.cl, align 8, !tbaa !154
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 112
  store double 0.000000e+00, ptr %i.cn, align 8, !tbaa !1487
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(60) %i.cm, i8 0, i64 60, i1 false)
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

.lr.ph248:                                        ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit
  %.023247 = phi ptr [ %i.di, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 4 uses
  %.024246 = phi i32 [ %i.dj, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.0.0245 = phi double [ %i.dh, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ 0.000000e+00, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ]
  %.sroa.20.0244 = phi ptr [ %.sroa.20.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.20.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.13.0243 = phi ptr [ %.sroa.13.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 3 uses
  %.sroa.076.0242 = phi ptr [ %.sroa.076.3, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit ], [ %.sroa.076.2, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE7reserveEm.exit65 ] ; 7 uses
  %.not.i = icmp eq ptr %.sroa.13.0243, %.sroa.20.0244
  br i1 %.not.i, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph248
  %i.co = load i64, ptr %.023247, align 8         ; 2 uses
  store i64 %i.co, ptr %.sroa.13.0243, align 8, !tbaa !154
  %i.cp = bitcast i64 %i.co to double
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

bb.ab:                                            ; preds = %.lr.ph248
  %i.cq = ptrtoint ptr %.sroa.20.0244 to i64
  %i.cr = ptrtoint ptr %.sroa.076.0242 to i64
  %i.cs = sub i64 %i.cq, %i.cr                    ; 7 uses
  %i.ct = icmp eq i64 %i.cs, 9223372036854775800
  br i1 %i.ct, label %bb.ac, label %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.491) #61
          to label %.noexc69 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc69:                                         ; preds = %bb.ac
  unreachable

_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.ab
  %i.cu = ashr exact i64 %i.cs, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cu, i64 1)
  %i.cv = add nsw i64 %.sroa.speculated.i.i.i, %i.cu ; 2 uses
  %i.cw = icmp ult i64 %i.cv, %i.cu
  %i.cx = tail call i64 @llvm.umin.i64(i64 %i.cv, i64 1152921504606846975)
  %i.cy = select i1 %i.cw, i64 1152921504606846975, i64 %i.cx ; 3 uses
  %.not.i.i.i68 = icmp ne i64 %i.cy, 0
  tail call void @llvm.assume(i1 %.not.i.i.i68)
  %i.cz = shl nuw nsw i64 %i.cy, 3
  %i.da = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cz) #62
          to label %.noexc70 unwind label %.loopexit.split-lp.loopexit.split-lp ; 4 uses

.noexc70:                                         ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i
  %i.db = getelementptr inbounds i8, ptr %i.da, i64 %i.cs ; 2 uses
  %i.dc = load i64, ptr %.023247, align 8         ; 2 uses
  store i64 %i.dc, ptr %i.db, align 8, !tbaa !154
  %i.dd = icmp sgt i64 %i.cs, 0
  %i.de = bitcast i64 %i.dc to double
  br i1 %i.dd, label %bb.ad, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

bb.ad:                                            ; preds = %.noexc70
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.da, ptr align 8 %.sroa.076.0242, i64 %i.cs, i1 false)
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i: ; preds = %bb.ad, %.noexc70
  %.not.i17.i.i = icmp eq ptr %.sroa.076.0242, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0242, i64 noundef %i.cs) #64
  %.pre.pre = load double, ptr %.023247, align 8, !tbaa !153
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i: ; preds = %bb.ae, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i
  %.pre = phi double [ %.pre.pre, %bb.ae ], [ %i.de, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i ]
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.da, i64 %i.cy
  br label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit

_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE9push_backERKS4_.exit: ; preds = %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i, %bb.aa
  %i.dg = phi double [ %.pre, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %i.cp, %bb.aa ]
  %.sroa.076.3 = phi ptr [ %i.da, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.076.0242, %bb.aa ] ; 2 uses
  %.pn183 = phi ptr [ %i.db, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.13.0243, %bb.aa ]
  %.sroa.20.3 = phi ptr [ %i.df, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE17_M_realloc_insertIJRKS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i ], [ %.sroa.20.0244, %bb.aa ] ; 2 uses
  %.sroa.13.2 = getelementptr inbounds nuw i8, ptr %.pn183, i64 8 ; 2 uses
  %i.dh = fadd double %.sroa.0.0245, %i.dg        ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.023247, i64 8 ; 2 uses
  %i.dj = add nuw nsw i32 %.024246, 1             ; 2 uses
  %i.dk = icmp ult ptr %i.di, %3
  br i1 %i.dk, label %.lr.ph248, label %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67.loopexit, !llvm.loop !1477

.loopexit.split-lp.loopexit.split-lp:             ; preds = %_ZNKSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EE12_M_check_lenEmPKc.exit.i.i, %bb.ac
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i71 = icmp eq ptr %.sroa.076.0242, null
  br i1 %.not.i.i.i71, label %_ZNSt6vectorIdSaIdEED2Ev.exit58, label %bb.af

bb.af:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.076.0242, i64 noundef %i.cs) #64
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit58

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.u, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit, %_ZNSt6vectorINSt6chrono8durationIdSt5ratioILl1ELl1000000000EEEESaIS4_EED2Ev.exit67
  ret void

_ZNSt6vectorIdSaIdEED2Ev.exit58:                  ; preds = %bb.af, %.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.w
  %.pn37.pn = phi { ptr, i32 } [ %.pn35, %bb.x ], [ %lpad.loopexit.split-lp317, %bb.af ], [ %.pn35, %bb.w ], [ %lpad.loopexit.split-lp317, %.loopexit.split-lp.loopexit.split-lp ]
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
  store i32 %2, ptr %5, align 8, !tbaa !168
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !169
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %4, ptr %i.b, align 8, !tbaa !170
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 24
  store double %1, ptr %i.c, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #63
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %6, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail4meanEPKdS3_)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #63
  call fastcc void @"_ZZN5Catch9Benchmark6Detail15analyse_samplesEdjPdS2_ENK3$_0clEPFdPKdS5_E"(ptr dead_on_unwind noalias writable align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @_ZN5Catch9Benchmark6Detail12_GLOBAL__N_118standard_deviationEPKdS4_)
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub i64 %i.d, %i.e
  %i.g = lshr exact i64 %i.f, 3
  %i.h = trunc i64 %i.g to i32                    ; 2 uses
  %.sroa.010.0.copyload = load double, ptr %6, align 8, !tbaa !154
  %.sroa.0.0.copyload = load double, ptr %7, align 8, !tbaa !154 ; 3 uses
  %i.i = sub nsw i32 0, %i.h
  %i.j = sitofp i32 %i.h to double                ; 7 uses
  %8 = tail call noundef double @sqrt(double noundef %i.j) #63
  %9 = insertelement <2 x double> poison, double %.sroa.0.0.copyload, i64 0
  %10 = insertelement <2 x double> %9, double %.sroa.010.0.copyload, i64 1
  %11 = insertelement <2 x double> poison, double %8, i64 0
  %12 = insertelement <2 x double> %11, double %i.j, i64 1
  %13 = fdiv <2 x double> %10, %12                ; 4 uses
  %14 = fmul <2 x double> %13, <double 1.000000e+00, double 5.000000e-01> ; 2 uses
  %15 = extractelement <2 x double> %14, i64 1
  %16 = fmul double %15, 2.500000e-01             ; 2 uses
  %17 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %i.k = fcmp olt double %17, %16
  %.sroa.speculated21.i = select i1 %i.k, double %17, double %16 ; 2 uses
  %i.l = sitofp i32 %i.i to double
  %i.m = fneg double %i.j
  %i.n = insertelement <2 x double> poison, double %i.j, i64 0 ; 2 uses
  %foldExtExtBinop = fsub <2 x double> %13, %14
  %i.o = fmul double %.sroa.0.0.copyload, %.sroa.0.0.copyload ; 3 uses
  %i.p = fmul double %.sroa.speculated21.i, %.sroa.speculated21.i ; 3 uses
  %i.q = fadd double %i.j, -1.000000e+00          ; 2 uses
  %i.r = tail call double @llvm.fmuladd.f64(double %i.m, double %i.p, double %i.o)
  %i.s = fmul double %i.p, 4.000000e+00
  %i.t = insertelement <2 x double> poison, double %i.q, i64 0
  %18 = shufflevector <2 x double> %13, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = fmul <2 x double> %18, %18
  %i.v = shufflevector <2 x double> %i.n, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = fmul <2 x double> %i.u, %i.v             ; 2 uses
  %i.x = insertelement <2 x double> poison, double %i.l, i64 0
  %i.y = shufflevector <2 x double> %i.x, <2 x double> poison, <2 x i32> zeroinitializer
  %i.z = fmul <2 x double> %i.w, %i.y             ; 3 uses
  %i.aa = fneg <2 x double> %i.z
  %i.ab = extractelement <2 x double> %i.z, i64 1
  %i.ac = fmul double %i.ab, -2.000000e+00
  %i.ad = shufflevector <2 x double> %i.t, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.ae = fmul <2 x double> %i.ad, <double 1.000000e+00, double -2.000000e+00>
  %i.af = insertelement <2 x double> poison, double %i.r, i64 0
  %i.ag = shufflevector <2 x double> %i.af, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ah = fadd <2 x double> %i.w, %i.ag           ; 4 uses
  %i.ai = insertelement <2 x double> poison, double %i.s, i64 0
  %i.aj = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x double> %i.aj, %i.aa
  %i.al = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ah, <2 x double> %i.ah, <2 x double> %i.ak) ; 2 uses
  %i.am = extractelement <2 x double> %i.al, i64 0
  %i.an = tail call double @sqrt(double noundef %i.am) #63
  %i.ao = extractelement <2 x double> %i.ah, i64 0
  %i.ap = fadd double %i.an, %i.ao
  %i.aq = insertelement <2 x double> %i.n, double %i.ap, i64 1
  %i.ar = fdiv <2 x double> %i.ae, %i.aq          ; 2 uses
  %i.as = extractelement <2 x double> %i.ar, i64 1
  %i.at = fptosi double %i.as to i32
  %i.au = sitofp i32 %i.at to double              ; 2 uses
  %i.av = extractelement <2 x double> %i.al, i64 1
  %i.aw = tail call double @sqrt(double noundef %i.av) #63
  %i.ax = extractelement <2 x double> %i.ah, i64 1
  %i.ay = fadd double %i.aw, %i.ax
  %i.az = fdiv double %i.ac, %i.ay
  %i.ba = fptosi double %i.az to i32
  %i.bb = sitofp i32 %i.ba to double              ; 2 uses
  %i.bc = fcmp olt double %i.bb, %i.au
  %.sroa.speculated.i = select i1 %i.bc, double %i.bb, double %i.au
  %i.bd = fsub double %i.j, %.sroa.speculated.i   ; 2 uses
  %i.be = fdiv double %i.bd, %i.j
  %i.bf = insertelement <2 x double> poison, double %i.bd, i64 0
  %i.bg = insertelement <2 x double> %i.bf, double %i.q, i64 1
  %i.bh = fneg <2 x double> %i.bg
  %i.bi = insertelement <2 x double> poison, double %i.p, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.bl = shufflevector <2 x double> %i.bk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> %i.bj, <2 x double> %i.bl)
  %i.bn = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x double> %i.bn, double %i.be, i64 0
  %i.bp = fmul <2 x double> %i.bo, %i.bm          ; 2 uses
  %i.bq = extractelement <2 x double> %i.bp, i64 0 ; 2 uses
  %i.br = extractelement <2 x double> %i.bp, i64 1 ; 2 uses
  %i.bs = fcmp olt double %i.bq, %i.br
  %.sroa.speculated4.i = select i1 %i.bs, double %i.bq, double %i.br
  %i.bt = fdiv double %.sroa.speculated4.i, %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false), !tbaa.struct !172
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 32, i1 false), !tbaa.struct !172
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 64
  store double %i.bt, ptr %i.bv, align 8, !tbaa !165
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
  br i1 %i.h, label %bb.b, label %bb.c, !prof !173

bb.b:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.f, ptr align 8 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.c:                                             ; preds = %_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm.exit.i.i
  %i.i = icmp eq i64 %i.c, 8
  br i1 %i.i, label %bb.d, label %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load double, ptr %1, align 8, !tbaa !154
  store double %i.j, ptr %i.f, align 8, !tbaa !154
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
          to label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i unwind label %.body

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i:            ; preds = %bb.e, %_ZNSt6vectorIdSaIdEEC2IPKdvEET_S5_RKS0_.exit
  %i.ac = load double, ptr %i.w, align 8, !tbaa !154 ; 3 uses
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
  %.pre.i.i.i = load double, ptr %i.ae, align 8, !tbaa !154
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %i.ah = phi double [ %i.am, %.lr.ph.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 2 uses
  %i.ai = phi ptr [ %i.al, %.lr.ph.i.i.i ], [ %i.ag, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %.018.i.i.i = phi ptr [ %spec.select.i.i.i, %.lr.ph.i.i.i ], [ %i.ae, %.lr.ph.preheader.i.i.i ]
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !154 ; 2 uses
  %i.ak = fcmp olt double %i.aj, %i.ah            ; 2 uses
  %spec.select.i.i.i = select i1 %i.ak, ptr %i.ai, ptr %.018.i.i.i ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %.not.i.i.i31 = icmp eq ptr %i.al, %.sroa.17.0
  %i.am = select i1 %i.ak, double %i.aj, double %i.ah
  br i1 %.not.i.i.i31, label %_ZSt11min_elementIPdET_S1_S1_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !0

_ZSt11min_elementIPdET_S1_S1_.exit.i:             ; preds = %.lr.ph.i.i.i, %bb.f
  %.011.i.i.i = phi ptr [ %i.ae, %bb.f ], [ %spec.select.i.i.i, %.lr.ph.i.i.i ]
  %i.an = load double, ptr %.011.i.i.i, align 8, !tbaa !154
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
          to label %_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33 unwind label %.body

_ZSt11nth_elementIPdEvT_S1_S1_.exit.i33:          ; preds = %bb.g, %_ZN5Catch9Benchmark6Detail25weighted_average_quantileEiiPdS2_.exit
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !154 ; 3 uses
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
  %.pre.i.i.i37 = load double, ptr %i.be, align 8, !tbaa !154
  br label %.lr.ph.i.i.i38

.lr.ph.i.i.i38:                                   ; preds = %.lr.ph.i.i.i38, %.lr.ph.preheader.i.i.i36
  %i.bh = phi double [ %i.bm, %.lr.ph.i.i.i38 ], [ %.pre.i.i.i37, %.lr.ph.preheader.i.i.i36 ] ; 2 uses
  %i.bi = phi ptr [ %i.bl, %.lr.ph.i.i.i38 ], [ %i.bg, %.lr.ph.preheader.i.i.i36 ] ; 3 uses
end_hunk_0
