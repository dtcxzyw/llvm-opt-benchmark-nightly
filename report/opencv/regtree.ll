Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/regtree?download=true
inline.NumInlined: 853
inline.NumDeleted: 384
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN2cv4face18FacemarkKazemiImpl13getTestSplitsESt6vectorINS_6Point_IfEESaIS4_EEi:bb.a
  br i1 %i.bk, label %_ZN2cv3RNG7uniformEii.exit11, label %.split20, !llvm.loop !119

.split20:                                         ; preds = %_ZN2cv3RNG7uniformEii.exit11
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.aa, ptr %0, align 8
  store i64 %i.ah, ptr %i.bl, align 8, !tbaa !40
  %i.bm = mul nuw i64 %i.be, 4164903690
  %i.bn = lshr i64 %i.bd, 32
  %i.bo = add nuw i64 %i.bm, %i.bn                ; 3 uses
  %i.bp = shl i64 %i.bo, 32
  %i.bq = mul i64 %i.bo, 4164903690
  %i.br = lshr i64 %i.bo, 32
  %i.bs = add i64 %i.bq, %i.br
  %i.bt = and i64 %i.bs, 4294967295
  %i.bu = or disjoint i64 %i.bt, %i.bp
  %i.bv = uitofp i64 %i.bu to double
  %i.bw = fmul nnan double %i.bv, f0x3BF0000000000000
  %i.bx = tail call nnan double @llvm.fmuladd.f64(double %i.bw, double 2.560000e+02, double -1.280000e+02)
  %i.by = fmul nnan double %i.bx, 5.000000e-01
  %i.bz = fptrunc double %i.by to float
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 16
  store float %i.bz, ptr %i.ca, align 8, !tbaa !41
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN2cv4face18FacemarkKazemiImpl12getBestSplitESt6vectorINS_6Point_IfEESaIS4_EERS2_INS0_15training_sampleESaIS7_EEmmRNS0_6splitrERS2_IS6_SaIS6_EEl(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr nofree noundef readonly align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3, i64 noundef %4, ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) %5, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %6, i64 noundef %7) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %9 = alloca %"class.std::allocator.0", align 1  ; 4 uses
  %10 = alloca %"class.std::vector.8", align 8    ; 14 uses
  %11 = alloca %"class.std::vector.23", align 8   ; 16 uses
  %12 = alloca %"struct.cv::face::splitr", align 8 ; 6 uses
  %13 = alloca %"class.std::vector", align 8      ; 4 uses
  %14 = alloca %"class.std::vector.28", align 8   ; 15 uses
  %15 = alloca %"class.cv::Range", align 4        ; 6 uses
  %16 = alloca %"class.cv::face::splitSamples", align 8 ; 12 uses
  %i.a = load ptr, ptr %2, align 8, !tbaa !44     ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !45
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !37
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  %i.k = load ptr, ptr %i.h, align 8, !tbaa !37
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m
  %.not = icmp eq i64 %i.g, %i.n
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  invoke void @_ZN2cv5errorENS_5Error4CodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcSB_i(i32 noundef -5, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @__func__._ZN2cv4face18FacemarkKazemiImpl12getBestSplitESt6vectorINS_6Point_IfEESaIS4_EERS2_INS0_15training_sampleESaIS7_EEmmRNS0_6splitrERS2_IS6_SaIS6_EEl, ptr noundef nonnull @.str.1, i32 noundef 116) #20
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.q = load ptr, ptr %8, align 8, !tbaa !46     ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.t = load i64, ptr %i.r, align 8, !tbaa !47
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.e
  %.pn128 = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.p, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br label %bb.au

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !tbaa !150  ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %.not262 = icmp eq i64 %i.w, 0
  br i1 %.not262, label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit.thread, label %bb.h

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit.thread: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %._crit_edge.thread

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.z = icmp ugt i64 %i.w, 384307168202282325
  br i1 %i.z, label %bb.i, label %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc173 unwind label %bb.k

.noexc173:                                        ; preds = %bb.i
  unreachable

_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.h
  %i.aa = mul nuw nsw i64 %i.w, 24                ; 2 uses
  %i.ab = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aa) #22
          to label %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit unwind label %bb.k ; 3 uses

_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit: ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.ab, i8 0, i64 %i.aa, i1 false)
  store ptr %i.ab, ptr %10, align 8, !tbaa !48
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.ab, i64 %i.w ; 2 uses
  store ptr %i.ac, ptr %i.x, align 8, !tbaa !49
  store ptr %i.ac, ptr %i.y, align 8, !tbaa !50
  %.pre = load i64, ptr %i.v, align 8, !tbaa !150
  %i.ad = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br i1 %i.ad, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  br label %bb.l

._crit_edge.thread:                               ; preds = %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit, %_ZNSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE6resizeEm.exit.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

._crit_edge:                                      ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not263 = icmp eq i64 %i.de, 0
  br i1 %.not263, label %_ZNSt6vectorImSaImEE6resizeEm.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.ak = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.al = icmp ugt i64 %i.de, 1152921504606846975
  br i1 %i.al, label %.invoke, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i

.invoke:                                          ; preds = %bb.y, %bb.j
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.cont unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i:  ; preds = %bb.j
  %i.am = shl nuw nsw i64 %i.de, 3
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.am) #22
          to label %.noexc179 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread ; 4 uses

.noexc179:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i
  store i64 0, ptr %i.an, align 8, !tbaa !51
  %i.ao = add nsw i64 %i.de, -1                   ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i, label %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i

_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i: ; preds = %.noexc179
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %.idx.i.i.i.i.i31.i = shl nuw nsw i64 %i.ao, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.aq, i8 0, i64 %.idx.i.i.i.i.i31.i, i1 false), !tbaa !51
  br label %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i

_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i: ; preds = %.noexc179, %_ZSt6fill_nIPmmmET_S1_T0_RKT1_.exit.loopexit.i.i.i30.i
  store ptr %i.an, ptr %14, align 8, !tbaa !54
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.de ; 2 uses
  store ptr %i.ar, ptr %i.aj, align 8, !tbaa !151
  store ptr %i.ar, ptr %i.ak, align 8, !tbaa !152
  br label %_ZNSt6vectorImSaImEE6resizeEm.exit

bb.k:                                             ; preds = %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %bb.at

bb.l:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %.0103288 = phi i64 [ 0, %.lr.ph ], [ %i.dd, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.at = load ptr, ptr %i.ae, align 8, !tbaa !45 ; 3 uses
  %i.au = load ptr, ptr %1, align 8, !tbaa !37    ; 3 uses
  %i.av = ptrtoint ptr %i.at to i64
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw                    ; 5 uses
  %.not.i.i.i.i133 = icmp eq ptr %i.at, %i.au
  br i1 %.not.i.i.i.i133, label %.noexc135, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ay = icmp ugt i64 %i.ax, 9223372036854775800
  br i1 %i.ay, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.m
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc134 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc134:                                        ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.m
  %i.az = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #22
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre352.a = load ptr, ptr %1, align 8, !tbaa !56
  %.pre353.a = load ptr, ptr %i.ae, align 8, !tbaa !56
  br label %.noexc135

.noexc135:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge, %bb.l
  %i.ba = phi ptr [ %i.at, %bb.l ], [ %.pre353.a, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge ] ; 2 uses
  %i.bb = phi ptr [ %i.au, %bb.l ], [ %.pre352.a, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge ] ; 2 uses
  %i.bc = phi ptr [ null, %bb.l ], [ %i.az, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc135_crit_edge ] ; 8 uses
  store ptr %i.bc, ptr %13, align 8, !tbaa !37
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.ax
  store ptr %i.bd, ptr %i.ag, align 8, !tbaa !57
  %.not7.i.i.i.i.i = icmp eq ptr %i.bb, %i.ba
  br i1 %.not7.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc135, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.bc, %.noexc135 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.bf, %.lr.ph.i.i.i.i.i ], [ %i.bb, %.noexc135 ] ; 2 uses
  %i.be = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !58
  store i64 %i.be, ptr %.09.i.i.i.i.i, align 4, !tbaa !58
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bf, %i.ba
  br i1 %.not.i.i.i.i.i, label %.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i, %.noexc135
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.bc, %.noexc135 ], [ %i.bg, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.af, align 8, !tbaa !45
  %i.bh = tail call i64 @time(ptr noundef null) #19
  %i.bi = add i64 %i.bh, %.0103288
  %i.bj = trunc i64 %i.bi to i32
  call void @_ZN2cv4face18FacemarkKazemiImpl13getTestSplitsESt6vectorINS_6Point_IfEESaIS4_EEi(ptr dead_on_unwind nonnull writable sret(%"struct.cv::face::splitr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 %13, i32 noundef %i.bj)
  %i.bk = load ptr, ptr %i.ah, align 8, !tbaa !153 ; 5 uses
  %i.bl = load ptr, ptr %i.ai, align 8, !tbaa !154
  %.not.i.i136 = icmp eq ptr %i.bk, %i.bl
  br i1 %.not.i.i136, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !61
  %i.bm = load ptr, ptr %i.ah, align 8, !tbaa !153
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store ptr %i.bn, ptr %i.ah, align 8, !tbaa !153
  br label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit

bb.o:                                             ; preds = %.loopexit
  %i.bo = load ptr, ptr %11, align 8, !tbaa !62   ; 5 uses
  %i.bp = ptrtoint ptr %i.bk to i64
  %i.bq = ptrtoint ptr %i.bo to i64               ; 2 uses
  %i.br = sub i64 %i.bp, %i.bq                    ; 3 uses
  %i.bs = icmp eq i64 %i.br, 9223372036854775800
  br i1 %i.bs, label %bb.p, label %_ZNKSt6vectorIN2cv4face6splitrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #20
          to label %.noexc138 unwind label %.loopexit.split-lp268.loopexit.split-lp

.noexc138:                                        ; preds = %bb.p
  unreachable

_ZNKSt6vectorIN2cv4face6splitrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.o
  %i.bt = sdiv exact i64 %i.br, 24                ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 1)
  %i.bu = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bt ; 2 uses
  %i.bv = icmp ult i64 %i.bu, %i.bt
  %i.bw = tail call i64 @llvm.umin.i64(i64 %i.bu, i64 384307168202282325)
  %i.bx = select i1 %i.bv, i64 384307168202282325, i64 %i.bw ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.bx, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.by = mul nuw nsw i64 %i.bx, 24
  %i.bz = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.by) #22
          to label %.noexc139 unwind label %.loopexit.split-lp268.loopexit.split-lp ; 5 uses

.noexc139:                                        ; preds = %_ZNKSt6vectorIN2cv4face6splitrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.br
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, ptr noundef nonnull align 8 dereferenceable(24) %12, i64 24, i1 false), !tbaa.struct !61
  %.not10.i.i.i.i.i.i = icmp eq ptr %i.bo, %i.bk
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.noexc139, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.cc, %.lr.ph.i.i.i.i.i.i ], [ %i.bz, %.noexc139 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.cb, %.lr.ph.i.i.i.i.i.i ], [ %i.bo, %.noexc139 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i.i.i, i64 24, i1 false), !tbaa.struct !61, !alias.scope !155
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 24 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.cb, %i.bk
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !128

_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %.noexc139
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bz, %.noexc139 ], [ %i.cc, %.lr.ph.i.i.i.i.i.i ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i, i64 24
  %.not.i23.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  %i.ce = load ptr, ptr %i.ai, align 8, !tbaa !154
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.bq
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.cg) #21
  br label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i

_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i: ; preds = %bb.q, %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit22.i.i.i
  store ptr %i.bz, ptr %11, align 8, !tbaa !62
  store ptr %i.cd, ptr %i.ah, align 8, !tbaa !153
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %i.bx
  store ptr %i.ch, ptr %i.ai, align 8, !tbaa !154
  br label %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit

_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit: ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_.exit.i.i, %bb.n
  %.not.i.i.i = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %_ZNSt6vectorIN2cv4face6splitrESaIS2_EE9push_backEOS2_.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.ci = load ptr, ptr %10, align 8, !tbaa !48
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.ci, i64 %.0103288 ; 3 uses
  %i.ck = load ptr, ptr %2, align 8, !tbaa !44    ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !45
  %i.cn = load ptr, ptr %i.ck, align 8, !tbaa !37
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp                    ; 2 uses
  %i.cr = ashr exact i64 %i.cq, 3                 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 8 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45 ; 2 uses
  %i.cu = load ptr, ptr %i.cj, align 8, !tbaa !37 ; 2 uses
  %i.cv = ptrtoint ptr %i.ct to i64
  %i.cw = ptrtoint ptr %i.cu to i64
  %i.cx = sub i64 %i.cv, %i.cw
  %i.cy = ashr exact i64 %i.cx, 3                 ; 3 uses
  %i.cz = icmp ugt i64 %i.cr, %i.cy
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.da = sub nuw nsw i64 %i.cr, %i.cy
  invoke void @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 noundef %i.da)
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit unwind label %bb.w

bb.t:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %i.db = icmp ult i64 %i.cr, %i.cy
  br i1 %i.db, label %bb.u, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

bb.u:                                             ; preds = %bb.t
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cu, i64 %i.cq ; 2 uses
  %.not.i.i140 = icmp eq ptr %i.ct, %i.dc
  br i1 %.not.i.i140, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit, label %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i: ; preds = %bb.u
  store ptr %i.dc, ptr %i.cs, align 8, !tbaa !45
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit: ; preds = %_ZSt8_DestroyIPN2cv6Point_IfEES2_EvT_S4_RSaIT0_E.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.dd = add nuw i64 %.0103288, 1                ; 2 uses
  %i.de = load i64, ptr %i.v, align 8, !tbaa !150 ; 6 uses
  %i.df = icmp ult i64 %i.dd, %i.de
  br i1 %i.df, label %bb.l, label %._crit_edge, !llvm.loop !129

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %.noexc.i.i
  %lpad.loopexit.split-lp663 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143

.loopexit.split-lp268.loopexit.split-lp:          ; preds = %_ZNKSt6vectorIN2cv4face6splitrESaIS2_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i142 = icmp eq ptr %i.bc, null
  br i1 %.not.i.i.i142, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143, label %bb.v

bb.v:                                             ; preds = %.loopexit.split-lp268.loopexit.split-lp
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bc, i64 noundef %i.ax) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit143: ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.v, %.loopexit.split-lp268.loopexit.split-lp
  %.pn122 = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %bb.v ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp268.loopexit.split-lp ], [ %lpad.loopexit.split-lp663, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.ar

bb.w:                                             ; preds = %bb.s
  %i.dg = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

_ZNSt6vectorImSaImEE6resizeEm.exit:               ; preds = %._crit_edge.thread, %._crit_edge, %_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm.exit36.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.dh = trunc i64 %3 to i32
  %i.di = trunc i64 %4 to i32
  store i32 %i.dh, ptr %15, align 4, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face12splitSamplesE, i64 16), ptr %16, align 8, !tbaa !67
  %i.dk = getelementptr inbounds nuw i8, ptr %16, i64 8
  store ptr %2, ptr %i.dk, align 8, !tbaa !156
  %i.dl = getelementptr inbounds nuw i8, ptr %16, i64 16
  store ptr %10, ptr %i.dl, align 8, !tbaa !74
  %i.dm = getelementptr inbounds nuw i8, ptr %16, i64 24
  store ptr %14, ptr %i.dm, align 8, !tbaa !157
  %i.dn = getelementptr inbounds nuw i8, ptr %16, i64 32
  store ptr %i.v, ptr %i.dn, align 8, !tbaa !75
  %i.do = getelementptr inbounds nuw i8, ptr %16, i64 40
  store ptr %11, ptr %i.do, align 8, !tbaa !158
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, double noundef -1.000000e+00)
          to label %bb.x unwind label %bb.ab

bb.x:                                             ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  %i.dp = load ptr, ptr %6, align 8, !tbaa !48
  %i.dq = getelementptr inbounds nuw [24 x i8], ptr %i.dp, i64 %7 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %i.dt = load ptr, ptr %i.dq, align 8, !tbaa !37 ; 2 uses
  %i.du = ptrtoint ptr %i.ds to i64
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = sub i64 %i.du, %i.dv                    ; 4 uses
  %.not264 = icmp eq ptr %i.ds, %i.dt
  br i1 %.not264, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dx = icmp ugt i64 %i.dw, 9223372036854775800
  br i1 %i.dx, label %.invoke, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.y
  %i.dy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dw) #22
          to label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread ; 5 uses

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.dy, i8 0, i64 %i.dw, i1 false), !tbaa !58
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dw
  %i.ea = ptrtoint ptr %i.dz to i64               ; 3 uses
  %.pre354.a = load ptr, ptr %6, align 8, !tbaa !48
  %.phi.trans.insert = getelementptr inbounds nuw [24 x i8], ptr %.pre354.a, i64 %7 ; 2 uses
  %.phi.trans.insert355.a = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre356.a = load ptr, ptr %.phi.trans.insert355.a, align 8, !tbaa !45 ; 2 uses
  %.pre357.a = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !37 ; 2 uses
  %.pre361 = ptrtoint ptr %.pre356.a to i64
  %.pre362 = ptrtoint ptr %.pre357.a to i64
  %i.eb = icmp eq ptr %.pre356.a, %.pre357.a
  %i.ec = sub i64 %.pre361, %.pre362              ; 4 uses
  br i1 %i.eb, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151, label %bb.z

bb.z:                                             ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147
  %i.ed = icmp ugt i64 %i.ec, 9223372036854775800
  br i1 %i.ed, label %bb.aa, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc206 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread421

.noexc206:                                        ; preds = %bb.aa
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196: ; preds = %bb.z
  %i.ee = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ec) #22
          to label %.noexc150 unwind label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread421 ; 3 uses

.noexc150:                                        ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i196
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ee, i8 0, i64 %i.ec, i1 false), !tbaa !58
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 %i.ec
  %i.eg = ptrtoint ptr %i.ef to i64
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151: ; preds = %bb.x, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147, %.noexc150
  %.sroa.0237.1419 = phi ptr [ %i.dy, %.noexc150 ], [ %i.dy, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ null, %bb.x ] ; 35 uses
  %.sroa.21.1418 = phi i64 [ %i.ea, %.noexc150 ], [ %i.ea, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ 0, %bb.x ] ; 2 uses
  %.sroa.17.0 = phi i64 [ %i.eg, %.noexc150 ], [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ 0, %bb.x ] ; 4 uses
  %.sroa.0220.1 = phi ptr [ %i.ee, %.noexc150 ], [ null, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit147 ], [ null, %bb.x ] ; 37 uses
  %i.eh = load ptr, ptr %i.x, align 8, !tbaa !49  ; 2 uses
  %i.ei = load ptr, ptr %10, align 8, !tbaa !48   ; 4 uses
  %.not316 = icmp eq ptr %i.eh, %i.ei
  br i1 %.not316, label %._crit_edge309, label %.lr.ph308

.lr.ph308:                                        ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151
  %i.ej = ptrtoint ptr %i.eh to i64
  %i.ek = ptrtoint ptr %i.ei to i64
  %i.el = sub i64 %i.ej, %i.ek
  %i.em = sdiv exact i64 %i.el, 24
  %i.en = load ptr, ptr %14, align 8, !tbaa !54
  %i.eo = add i64 %4, 1                           ; 2 uses
  %i.ep = ptrtoint ptr %.sroa.0220.1 to i64       ; 2 uses
  %i.eq = sub i64 %.sroa.17.0, %i.ep
  %i.er = ashr exact i64 %i.eq, 3                 ; 2 uses
  %.not317 = icmp eq i64 %.sroa.17.0, %i.ep
  %umax346.a = call i64 @llvm.umax.i64(i64 %i.er, i64 1) ; 3 uses
  %scevgep519.a = getelementptr i8, ptr %.sroa.0237.1419, i64 -4
  %scevgep521.a = getelementptr i8, ptr %.sroa.0220.1, i64 -4
  %scevgep527.a = getelementptr i8, ptr %.sroa.0237.1419, i64 4 ; 3 uses
  %scevgep529.a = getelementptr i8, ptr %.sroa.0220.1, i64 4 ; 3 uses
  %xtraiter683 = and i64 %umax346.a, 1
  %i.es = icmp ult i64 %i.er, 2
  %unroll_iter = and i64 %umax346.a, -2
  %lcmp.mod686.not = icmp eq i64 %xtraiter683, 0
  %lcmp.mod689 = trunc i64 %umax346.a to i1
  br label %bb.ac

._crit_edge309:                                   ; preds = %._crit_edge300, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151
  %.0100.lcssa = phi i64 [ 0, %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit151 ], [ %.1, %._crit_edge300 ] ; 2 uses
  %i.et = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.0100.lcssa
  %i.eu = shl nsw i64 %7, 1                       ; 2 uses
  %i.ev = or disjoint i64 %i.eu, 1                ; 2 uses
  %i.ew = load ptr, ptr %6, align 8, !tbaa !48
  %i.ex = getelementptr inbounds nuw [24 x i8], ptr %i.ew, i64 %i.ev
  %i.ey = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ex, ptr noundef nonnull align 8 dereferenceable(24) %i.et)
          to label %bb.ad unwind label %bb.an     ; 0 uses

bb.ab:                                            ; preds = %_ZNSt6vectorImSaImEE6resizeEm.exit
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit164.thread: ; preds = %.invoke, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i, %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit166

bb.ac:                                            ; preds = %.lr.ph308, %._crit_edge300
  %.099307 = phi i64 [ 0, %.lr.ph308 ], [ %i.lp, %._crit_edge300 ] ; 4 uses
  %.0100306 = phi i64 [ 0, %.lr.ph308 ], [ %.1, %._crit_edge300 ]
  %.0101305 = phi double [ -1.000000e+00, %.lr.ph308 ], [ %.1102, %._crit_edge300 ] ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.099307
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !51 ; 4 uses
  %i.fd = add i64 %i.fc, %3                       ; 2 uses
  %i.fe = sub i64 %i.eo, %i.fd                    ; 2 uses
  %i.ff = getelementptr inbounds nuw [24 x i8], ptr %i.ei, i64 %.099307 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 8
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !45 ; 8 uses
  %i.fi = load ptr, ptr %i.ff, align 8, !tbaa !37 ; 22 uses
  %i.fj = ptrtoint ptr %i.fh to i64
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = sub i64 %i.fj, %i.fk                    ; 18 uses
  %i.fm = ashr exact i64 %i.fl, 3                 ; 14 uses
  %.not318 = icmp eq ptr %i.fh, %i.fi
  br i1 %.not318, label %.preheader, label %.lr.ph291

.lr.ph291:                                        ; preds = %bb.ac
  %.not120 = icmp eq i64 %i.eo, %i.fd
  %i.fn = uitofp i64 %i.fe to float               ; 8 uses
  %.not121 = icmp eq i64 %i.fc, 0                 ; 2 uses
  %i.fo = uitofp i64 %i.fc to float               ; 8 uses
  br i1 %.not120, label %.lr.ph291.split.us, label %.lr.ph291.split

.lr.ph291.split.us:                               ; preds = %.lr.ph291
  br i1 %.not121, label %.lr.ph291.split.us.split.us.preheader, label %.lr.ph291.split.us.split.preheader

.lr.ph291.split.us.split.preheader:               ; preds = %.lr.ph291.split.us
  %min.iters.check = icmp ult i64 %i.fm, 4
  br i1 %min.iters.check, label %.lr.ph291.split.us.split.preheader657, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph291.split.us.split.preheader
  %scevgep = getelementptr i8, ptr %.sroa.0237.1419, i64 %i.fl ; 2 uses
  %scevgep465 = getelementptr i8, ptr %.sroa.0220.1, i64 %i.fl ; 2 uses
  %bound0 = icmp ult ptr %.sroa.0237.1419, %scevgep465
  %bound1 = icmp ult ptr %.sroa.0220.1, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0467.a = icmp ult ptr %.sroa.0237.1419, %i.fh
  %bound1468.a = icmp ult ptr %i.fi, %scevgep
  %found.conflict469.a = and i1 %bound0467.a, %bound1468.a
  %conflict.rdx = or i1 %found.conflict, %found.conflict469.a
  %bound0470 = icmp ult ptr %.sroa.0220.1, %i.fh
  %bound1471 = icmp ult ptr %i.fi, %scevgep465
  %found.conflict472 = and i1 %bound0470, %bound1471
  %conflict.rdx473 = or i1 %conflict.rdx, %found.conflict472
  br i1 %conflict.rdx473, label %.lr.ph291.split.us.split.preheader657, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fm, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.fo, i64 0
  %i.fp = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0237.1419, i64 %index
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  store <4 x i32> zeroinitializer, ptr %i.fq, align 4, !tbaa !58, !alias.scope !159, !noalias !160
  store <4 x i32> zeroinitializer, ptr %i.fs, align 4, !tbaa !58, !alias.scope !159, !noalias !160
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %index
  %wide.vec = load <8 x float>, ptr %i.ft, align 4, !tbaa !58, !alias.scope !161
end_hunk_0
begin_hunk_1_@_ZN2cv4face18FacemarkKazemiImpl12buildRegtreeERNS0_7regtreeERSt6vectorINS0_15training_sampleESaIS5_EES4_INS_6Point_IfEESaISA_EE:bb.a
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !87 ; 2 uses
  %i.cx = icmp eq ptr %i.cv, %i.cw
  br i1 %i.cx, label %.lr.ph.i.i.i.preheader, label %.lr.ph237

.lr.ph237:                                        ; preds = %_ZNSt6vectorIN2cv4face9tree_nodeESaIS2_EE6resizeEm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 4 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %25, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %26, i64 8
  %i.dc = getelementptr inbounds nuw i8, ptr %26, i64 16
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %27, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %28, i64 8
  %i.dg = getelementptr inbounds nuw i8, ptr %28, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %29, i64 8
  %i.di = getelementptr inbounds nuw i8, ptr %29, i64 16 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %12, i64 32 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %12, i64 24 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %12, i64 40 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 4 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %19, i64 4
  %i.du = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.dv = getelementptr inbounds nuw i8, ptr %20, i64 16
  %i.dw = getelementptr inbounds nuw i8, ptr %21, i64 4
  %i.dx = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.dz = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 5 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 4 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %.lr.ph237, %bb.bu
  %i.eg = phi ptr [ %i.cw, %.lr.ph237 ], [ %i.my, %bb.bu ] ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !51 ; 6 uses
  %i.ej = load i64, ptr %i.eh, align 8, !tbaa !51 ; 4 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !91 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %.not.not = icmp slt i64 %i.el, %i.aa
  br i1 %.not.not, label %bb.z, label %bb.bb

bb.z:                                             ; preds = %bb.y
  %i.em = load ptr, ptr %i.l, align 8, !tbaa !45  ; 3 uses
  %i.en = load ptr, ptr %3, align 8, !tbaa !37    ; 3 uses
  %i.eo = ptrtoint ptr %i.em to i64
  %i.ep = ptrtoint ptr %i.en to i64
  %i.eq = sub i64 %i.eo, %i.ep                    ; 5 uses
  %.not.i.i.i.i90 = icmp eq ptr %i.em, %i.en
  br i1 %.not.i.i.i.i90, label %.noexc92, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.er = icmp ugt i64 %i.eq, 9223372036854775800
  br i1 %i.er, label %.noexc.i.i, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, !prof !55

.noexc.i.i:                                       ; preds = %bb.aa
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc91 unwind label %.loopexit.split-lp198.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc91:                                         ; preds = %.noexc.i.i
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i: ; preds = %bb.aa
  %i.es = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.eq) #22
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge unwind label %.loopexit.split-lp198.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i
  %.pre271.a = load ptr, ptr %3, align 8, !tbaa !56
  %.pre272.a = load ptr, ptr %i.l, align 8, !tbaa !56
  br label %.noexc92

.noexc92:                                         ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge, %bb.z
  %i.et = phi ptr [ %i.em, %bb.z ], [ %.pre272.a, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ] ; 2 uses
  %i.eu = phi ptr [ %i.en, %bb.z ], [ %.pre271.a, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ] ; 2 uses
  %i.ev = phi ptr [ null, %bb.z ], [ %i.es, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i..noexc92_crit_edge ] ; 8 uses
  store ptr %i.ev, ptr %17, align 8, !tbaa !37
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 %i.eq
  store ptr %i.ew, ptr %i.dq, align 8, !tbaa !57
  %.not7.i.i.i.i.i = icmp eq ptr %i.eu, %i.et
  br i1 %.not7.i.i.i.i.i, label %.loopexit194, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc92, %.lr.ph.i.i.i.i.i
  %.09.i.i.i.i.i = phi ptr [ %i.ez, %.lr.ph.i.i.i.i.i ], [ %i.ev, %.noexc92 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i = phi ptr [ %i.ey, %.lr.ph.i.i.i.i.i ], [ %i.eu, %.noexc92 ] ; 2 uses
  %i.ex = load i64, ptr %.sroa.04.08.i.i.i.i.i, align 4, !tbaa !58
  store i64 %i.ex, ptr %.09.i.i.i.i.i, align 4, !tbaa !58
  %i.ey = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i, i64 8 ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ey, %i.et
  br i1 %.not.i.i.i.i.i, label %.loopexit194, label %.lr.ph.i.i.i.i.i, !llvm.loop !0

.loopexit194:                                     ; preds = %.lr.ph.i.i.i.i.i, %.noexc92
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ev, %.noexc92 ], [ %i.ez, %.lr.ph.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i, ptr %i.dp, align 8, !tbaa !45
  %i.fa = invoke noundef zeroext i1 @_ZN2cv4face18FacemarkKazemiImpl13generateSplitERSt5queueINS0_9node_infoESt5dequeIS3_SaIS3_EEESt6vectorINS_6Point_IfEESaISB_EERS9_INS0_15training_sampleESaISE_EERNS0_6splitrERS9_ISD_SaISD_EE(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 8 dereferenceable(80) %12, ptr noundef nonnull align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(20) %7, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %bb.ab unwind label %bb.ai

bb.ab:                                            ; preds = %.loopexit194
  %.not.i.i.i = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.eq) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit:    ; preds = %bb.ab, %bb.ac
  br i1 %i.fa, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ee, i8 0, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %6, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false)
  %i.fb = load ptr, ptr %1, align 8, !tbaa !82
  %i.fc = getelementptr inbounds nuw [48 x i8], ptr %i.fb, i64 %i.el ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.fc, ptr noundef nonnull align 8 dereferenceable(20) %7, i64 20, i1 false)
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fe = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.ee)
          to label %_ZN2cv4face9tree_nodeaSERKS1_.exit.i unwind label %bb.af ; 0 uses

_ZN2cv4face9tree_nodeaSERKS1_.exit.i:             ; preds = %bb.ad
  %i.ff = load ptr, ptr %i.ee, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i93 = icmp eq ptr %i.ff, null
  br i1 %.not.i.i.i.i.i93, label %_ZN2cv4face18FacemarkKazemiImpl15createSplitNodeERNS0_7regtreeENS0_6splitrEl.exit, label %bb.ae

bb.ae:                                            ; preds = %_ZN2cv4face9tree_nodeaSERKS1_.exit.i
  %i.fg = load ptr, ptr %i.ef, align 8, !tbaa !57
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi
  call void @_ZdlPvm(ptr noundef nonnull %i.ff, i64 noundef %i.fj) #21
  br label %_ZN2cv4face18FacemarkKazemiImpl15createSplitNodeERNS0_7regtreeENS0_6splitrEl.exit

bb.af:                                            ; preds = %bb.ad
  %i.fk = landingpad { ptr, i32 }
          cleanup
  %i.fl = load ptr, ptr %i.ee, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i3.i = icmp eq ptr %i.fl, null
  br i1 %.not.i.i.i.i3.i, label %_ZN2cv4face9tree_nodeD2Ev.exit4.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fm = load ptr, ptr %i.ef, align 8, !tbaa !57
  %i.fn = ptrtoint ptr %i.fm to i64
  %i.fo = ptrtoint ptr %i.fl to i64
  %i.fp = sub i64 %i.fn, %i.fo
  call void @_ZdlPvm(ptr noundef nonnull %i.fl, i64 noundef %i.fp) #21
  br label %_ZN2cv4face9tree_nodeD2Ev.exit4.i

_ZN2cv4face9tree_nodeD2Ev.exit4.i:                ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %.body

_ZN2cv4face18FacemarkKazemiImpl15createSplitNodeERNS0_7regtreeENS0_6splitrEl.exit: ; preds = %_ZN2cv4face9tree_nodeaSERKS1_.exit.i, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.bu

bb.ah:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit
  %i.fq = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

.loopexit.split-lp198.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i, %bb.o, %bb.t, %bb.u, %bb.n, %_ZNKSt6vectorIS_IN2cv6Point_IfEESaIS2_EESaIS4_EE12_M_check_lenEmPKc.exit.i, %.noexc.i.i
  %lpad.loopexit.split-lp412 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ai:                                            ; preds = %.loopexit194
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i.i.i94 = icmp eq ptr %i.ev, null
  br i1 %.not.i.i.i94, label %.body, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @_ZdlPvm(ptr noundef nonnull %i.ev, i64 noundef %i.eq) #21
  br label %.body

bb.ak:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit
  %reass.sub239 = sub i64 %i.ej, %i.ei
  %i.fs = add i64 %reass.sub239, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  %i.ft = load ptr, ptr %2, align 8, !tbaa !44
  %i.fu = getelementptr inbounds nuw [344 x i8], ptr %i.ft, i64 %i.ei ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !45 ; 2 uses
  %i.fx = load ptr, ptr %i.fu, align 8, !tbaa !37 ; 2 uses
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz                    ; 4 uses
  %.not342 = icmp eq ptr %i.fw, %i.fx
  br i1 %.not342, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit99, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.gb = icmp ugt i64 %i.ga, 9223372036854775800
  br i1 %i.gb, label %bb.am, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i

bb.am:                                            ; preds = %bb.al
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc175 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc175:                                        ; preds = %bb.am
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.al
  %i.gc = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ga) #22
          to label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.gc, i8 0, i64 %i.ga, i1 false), !tbaa !58
  store ptr %i.gc, ptr %18, align 8, !tbaa !37
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 %i.ga ; 2 uses
  store ptr %i.gd, ptr %i.dr, align 8, !tbaa !45
  store ptr %i.gd, ptr %i.ds, align 8, !tbaa !57
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit99

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit99: ; preds = %bb.ak, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #19
  %i.ge = trunc i64 %i.ei to i32                  ; 2 uses
  %i.gf = trunc i64 %i.ej to i32                  ; 2 uses
  store i32 %i.ge, ptr %19, align 4, !tbaa !64
  store i32 %i.gf, ptr %i.dt, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face5doSumE, i64 16), ptr %20, align 8, !tbaa !67
  store ptr %2, ptr %i.du, align 8, !tbaa !111
  store ptr %18, ptr %i.dv, align 8, !tbaa !185
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %20, double noundef -1.000000e+00)
          to label %bb.an unwind label %bb.ao

bb.an:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit99
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  %i.gg = load ptr, ptr %i.dr, align 8, !tbaa !45 ; 2 uses
  %i.gh = load ptr, ptr %18, align 8, !tbaa !37   ; 4 uses
  %.not240.a = icmp eq ptr %i.gg, %i.gh
  br i1 %.not240.a, label %._crit_edge236, label %.lr.ph235

.lr.ph235:                                        ; preds = %bb.an
  %i.gi = ptrtoint ptr %i.gg to i64
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = sub i64 %i.gi, %i.gj
  %i.gl = ashr exact i64 %i.gk, 3                 ; 4 uses
  %i.gm = sitofp i64 %i.fs to float               ; 2 uses
  %i.gn = load float, ptr %i.dd, align 8, !tbaa !186 ; 2 uses
  %min.iters.check = icmp ult i64 %i.gl, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph235
  %n.vec = and i64 %i.gl, -4                      ; 3 uses
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.gm, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert389 = insertelement <4 x float> poison, float %i.gn, i64 0
  %broadcast.splat390 = shufflevector <4 x float> %broadcast.splatinsert389, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.go = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %index ; 2 uses
  %wide.vec = load <8 x float>, ptr %i.go, align 4, !tbaa !58 ; 2 uses
  %strided.vec = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec391 = shufflevector <8 x float> %wide.vec, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.gp = fdiv <4 x float> %strided.vec, %broadcast.splat
  %i.gq = fmul <4 x float> %i.gp, %broadcast.splat390
  %i.gr = fdiv <4 x float> %strided.vec391, %broadcast.splat
  %i.gs = fmul <4 x float> %broadcast.splat390, %i.gr
  %interleaved.vec = shufflevector <4 x float> %i.gq, <4 x float> %i.gs, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec, ptr %i.go, align 4, !tbaa !58
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gt = icmp eq i64 %index.next, %n.vec
  br i1 %i.gt, label %middle.block, label %vector.body, !llvm.loop !179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.gl, %n.vec
  br i1 %cmp.n, label %._crit_edge236, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph235, %middle.block
  %.054233.ph = phi i64 [ 0, %.lr.ph235 ], [ %n.vec, %middle.block ]
  %i.gu = insertelement <2 x float> poison, float %i.gm, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.gx = shufflevector <2 x float> %i.gw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph

._crit_edge236:                                   ; preds = %scalar.ph, %middle.block, %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #19
  store i32 %i.ge, ptr %21, align 4, !tbaa !64
  store i32 %i.gf, ptr %i.dw, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face13modifySamplesE, i64 16), ptr %22, align 8, !tbaa !67
  store ptr %2, ptr %i.dx, align 8, !tbaa !114
  store ptr %18, ptr %i.dy, align 8, !tbaa !187
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %22, double noundef -1.000000e+00)
          to label %bb.ap unwind label %bb.ay

.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101, %bb.am, %.noexc.i.i108
  %lpad.loopexit.split-lp415 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123

bb.ao:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit99
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.054233 = phi i64 [ %i.hd, %scalar.ph ], [ %.054233.ph, %scalar.ph.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.054233 ; 2 uses
  %i.ha = load <2 x float>, ptr %i.gz, align 4, !tbaa !58
  %i.hb = fdiv <2 x float> %i.ha, %i.gv
  %i.hc = fmul <2 x float> %i.hb, %i.gx
  store <2 x float> %i.hc, ptr %i.gz, align 4, !tbaa !58
  %i.hd = add nuw i64 %.054233, 1                 ; 2 uses
  %exitcond268.not = icmp eq i64 %i.hd, %i.gl
  br i1 %exitcond268.not, label %._crit_edge236, label %scalar.ph, !llvm.loop !180

bb.ap:                                            ; preds = %._crit_edge236
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  %i.he = load ptr, ptr %i.dr, align 8, !tbaa !45 ; 3 uses
  %i.hf = load ptr, ptr %18, align 8, !tbaa !37   ; 3 uses
  %i.hg = ptrtoint ptr %i.he to i64
  %i.hh = ptrtoint ptr %i.hf to i64
  %i.hi = sub i64 %i.hg, %i.hh                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  %.not.i.i.i.i100 = icmp eq ptr %i.he, %i.hf
  br i1 %.not.i.i.i.i100, label %.noexc110, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.hj = icmp ugt i64 %i.hi, 9223372036854775800
  br i1 %i.hj, label %.noexc.i.i108, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101, !prof !55

.noexc.i.i108:                                    ; preds = %bb.aq
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc109 unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc109:                                        ; preds = %.noexc.i.i108
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101: ; preds = %bb.aq
  %i.hk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hi) #22
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge unwind label %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101
  %.pre273 = load ptr, ptr %18, align 8, !tbaa !56
  %.pre274 = load ptr, ptr %i.dr, align 8, !tbaa !56
  br label %.noexc110

.noexc110:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge, %bb.ap
  %i.hl = phi ptr [ %i.he, %bb.ap ], [ %.pre274, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge ] ; 2 uses
  %i.hm = phi ptr [ %i.hf, %bb.ap ], [ %.pre273, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge ] ; 2 uses
  %i.hn = phi ptr [ null, %bb.ap ], [ %i.hk, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i101..noexc110_crit_edge ] ; 4 uses
  store ptr %i.hn, ptr %23, align 8, !tbaa !37
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 %i.hi
  store ptr %i.ho, ptr %i.ea, align 8, !tbaa !57
  %.not7.i.i.i.i.i102 = icmp eq ptr %i.hm, %i.hl
  br i1 %.not7.i.i.i.i.i102, label %.loopexit, label %.lr.ph.i.i.i.i.i103

.lr.ph.i.i.i.i.i103:                              ; preds = %.noexc110, %.lr.ph.i.i.i.i.i103
  %.09.i.i.i.i.i104 = phi ptr [ %i.hr, %.lr.ph.i.i.i.i.i103 ], [ %i.hn, %.noexc110 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i105 = phi ptr [ %i.hq, %.lr.ph.i.i.i.i.i103 ], [ %i.hm, %.noexc110 ] ; 2 uses
  %i.hp = load i64, ptr %.sroa.04.08.i.i.i.i.i105, align 4, !tbaa !58
  store i64 %i.hp, ptr %.09.i.i.i.i.i104, align 4, !tbaa !58
  %i.hq = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i105, i64 8 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i104, i64 8 ; 2 uses
  %.not.i.i.i.i.i106 = icmp eq ptr %i.hq, %i.hl
  br i1 %.not.i.i.i.i.i106, label %.loopexit, label %.lr.ph.i.i.i.i.i103, !llvm.loop !0

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i103, %.noexc110
  %.0.lcssa.i.i.i.i.i107 = phi ptr [ %i.hn, %.noexc110 ], [ %i.hr, %.lr.ph.i.i.i.i.i103 ]
  store ptr %.0.lcssa.i.i.i.i.i107, ptr %i.dz, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store i32 0, ptr %i.eb, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 -1, i64 16, i1 false)
  %i.hs = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %23)
          to label %bb.ar unwind label %bb.at     ; 0 uses

bb.ar:                                            ; preds = %.loopexit
  %i.ht = load ptr, ptr %1, align 8, !tbaa !82
  %i.hu = getelementptr inbounds nuw [48 x i8], ptr %i.ht, i64 %i.el ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.hu, ptr noundef nonnull align 8 dereferenceable(48) %5, i64 20, i1 false), !tbaa.struct !61
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24
  %i.hw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.hv, ptr noundef nonnull align 8 dereferenceable(24) %i.ec)
          to label %_ZN2cv4face9tree_nodeaSERKS1_.exit.i114 unwind label %bb.at ; 0 uses

_ZN2cv4face9tree_nodeaSERKS1_.exit.i114:          ; preds = %bb.ar
  %i.hx = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i115 = icmp eq ptr %i.hx, null
  br i1 %.not.i.i.i.i.i115, label %bb.av, label %bb.as

bb.as:                                            ; preds = %_ZN2cv4face9tree_nodeaSERKS1_.exit.i114
  %i.hy = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.hz = ptrtoint ptr %i.hy to i64
  %i.ia = ptrtoint ptr %i.hx to i64
  %i.ib = sub i64 %i.hz, %i.ia
  call void @_ZdlPvm(ptr noundef nonnull %i.hx, i64 noundef %i.ib) #21
  br label %bb.av

bb.at:                                            ; preds = %bb.ar, %.loopexit
  %i.ic = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.id = load ptr, ptr %i.ec, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i3.i112 = icmp eq ptr %i.id, null
  br i1 %.not.i.i.i.i3.i112, label %_ZN2cv4face9tree_nodeD2Ev.exit4.i113, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ie = load ptr, ptr %i.ed, align 8, !tbaa !57
  %i.if = ptrtoint ptr %i.ie to i64
  %i.ig = ptrtoint ptr %i.id to i64
  %i.ih = sub i64 %i.if, %i.ig
  call void @_ZdlPvm(ptr noundef nonnull %i.id, i64 noundef %i.ih) #21
  br label %_ZN2cv4face9tree_nodeD2Ev.exit4.i113

_ZN2cv4face9tree_nodeD2Ev.exit4.i113:             ; preds = %bb.au, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ii = load ptr, ptr %23, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i122 = icmp eq ptr %i.ii, null
  br i1 %.not.i.i.i122, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123, label %bb.az

bb.av:                                            ; preds = %bb.as, %_ZN2cv4face9tree_nodeaSERKS1_.exit.i114
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  %i.ij = load ptr, ptr %23, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i118 = icmp eq ptr %i.ij, null
  br i1 %.not.i.i.i118, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit119, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ik = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.il = ptrtoint ptr %i.ik to i64
  %i.im = ptrtoint ptr %i.ij to i64
  %i.in = sub i64 %i.il, %i.im
  call void @_ZdlPvm(ptr noundef nonnull %i.ij, i64 noundef %i.in) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit119

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit119: ; preds = %bb.av, %bb.aw
  %i.io = load ptr, ptr %18, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i120 = icmp eq ptr %i.io, null
  br i1 %.not.i.i.i120, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121, label %bb.ax

bb.ax:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit119
  %i.ip = load ptr, ptr %i.ds, align 8, !tbaa !57
  %i.iq = ptrtoint ptr %i.ip to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir
  call void @_ZdlPvm(ptr noundef nonnull %i.io, i64 noundef %i.is) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit121: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit119, %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %bb.bu

bb.ay:                                            ; preds = %._crit_edge236
  %i.it = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123

bb.az:                                            ; preds = %_ZN2cv4face9tree_nodeD2Ev.exit4.i113
  %i.iu = load ptr, ptr %i.ea, align 8, !tbaa !57
  %i.iv = ptrtoint ptr %i.iu to i64
  %i.iw = ptrtoint ptr %i.ii to i64
  %i.ix = sub i64 %i.iv, %i.iw
  call void @_ZdlPvm(ptr noundef nonnull %i.ii, i64 noundef %i.ix) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123: ; preds = %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.az, %_ZN2cv4face9tree_nodeD2Ev.exit4.i113, %bb.ay, %bb.ao
  %.pn67 = phi { ptr, i32 } [ %i.gy, %bb.ao ], [ %i.ic, %bb.az ], [ %i.it, %bb.ay ], [ %i.ic, %_ZN2cv4face9tree_nodeD2Ev.exit4.i113 ], [ %lpad.loopexit.split-lp415, %.loopexit.split-lp203.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  %i.iy = load ptr, ptr %18, align 8, !tbaa !37   ; 3 uses
  %.not.i.i.i124 = icmp eq ptr %i.iy, null
  br i1 %.not.i.i.i124, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit125, label %bb.ba

bb.ba:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123
  %i.iz = load ptr, ptr %i.ds, align 8, !tbaa !57
  %i.ja = ptrtoint ptr %i.iz to i64
  %i.jb = ptrtoint ptr %i.iy to i64
  %i.jc = sub i64 %i.ja, %i.jb
  call void @_ZdlPvm(ptr noundef nonnull %i.iy, i64 noundef %i.jc) #21
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit125

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit125: ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit123, %bb.ba
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #19
  br label %.body

bb.bb:                                            ; preds = %bb.y
  %reass.sub = sub i64 %i.ej, %i.ei
  %i.jd = add i64 %reass.sub, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, i8 0, i64 24, i1 false)
  %i.je = load ptr, ptr %2, align 8, !tbaa !44
  %i.jf = getelementptr inbounds nuw [344 x i8], ptr %i.je, i64 %i.ei ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !45 ; 2 uses
  %i.ji = load ptr, ptr %i.jf, align 8, !tbaa !37 ; 2 uses
  %i.jj = ptrtoint ptr %i.jh to i64
  %i.jk = ptrtoint ptr %i.ji to i64
  %i.jl = sub i64 %i.jj, %i.jk                    ; 4 uses
  %.not341 = icmp eq ptr %i.jh, %i.ji
  br i1 %.not341, label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit129, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.jm = icmp ugt i64 %i.jl, 9223372036854775800
  br i1 %i.jm, label %bb.bd, label %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i181

bb.bd:                                            ; preds = %bb.bc
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #20
          to label %.noexc191 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc191:                                        ; preds = %bb.bd
  unreachable

_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i181: ; preds = %bb.bc
  %i.jn = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.jl) #22
          to label %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i190 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 3 uses

_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i190: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i181
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.jn, i8 0, i64 %i.jl, i1 false), !tbaa !58
  store ptr %i.jn, ptr %24, align 8, !tbaa !37
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.jl ; 2 uses
  store ptr %i.jo, ptr %i.cy, align 8, !tbaa !45
  store ptr %i.jo, ptr %i.cz, align 8, !tbaa !57
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit129

_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit129: ; preds = %bb.bb, %_ZNSt12_Vector_baseIN2cv6Point_IfEESaIS2_EE13_M_deallocateEPS2_m.exit37.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %25) #19
  %i.jp = trunc i64 %i.ei to i32                  ; 2 uses
  %i.jq = trunc i64 %i.ej to i32                  ; 2 uses
  store i32 %i.jp, ptr %25, align 4, !tbaa !64
  store i32 %i.jq, ptr %i.da, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face5doSumE, i64 16), ptr %26, align 8, !tbaa !67
  store ptr %2, ptr %i.db, align 8, !tbaa !111
  store ptr %24, ptr %i.dc, align 8, !tbaa !185
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26, double noundef -1.000000e+00)
          to label %bb.be unwind label %bb.bf

bb.be:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit129
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  %i.jr = load ptr, ptr %i.cy, align 8, !tbaa !45 ; 2 uses
  %i.js = load ptr, ptr %24, align 8, !tbaa !37   ; 4 uses
  %.not = icmp eq ptr %i.jr, %i.js
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be
  %i.jt = ptrtoint ptr %i.jr to i64
  %i.ju = ptrtoint ptr %i.js to i64
  %i.jv = sub i64 %i.jt, %i.ju
  %i.jw = ashr exact i64 %i.jv, 3                 ; 4 uses
  %i.jx = uitofp i64 %i.jd to float               ; 2 uses
  %i.jy = load float, ptr %i.dd, align 8, !tbaa !186 ; 2 uses
  %min.iters.check393 = icmp ult i64 %i.jw, 4
  br i1 %min.iters.check393, label %scalar.ph392.preheader, label %vector.ph394

vector.ph394:                                     ; preds = %.lr.ph
  %n.vec395 = and i64 %i.jw, -4                   ; 3 uses
  %broadcast.splatinsert396.a = insertelement <4 x float> poison, float %i.jx, i64 0
  %broadcast.splat397.a = shufflevector <4 x float> %broadcast.splatinsert396.a, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert398 = insertelement <4 x float> poison, float %i.jy, i64 0
  %broadcast.splat399 = shufflevector <4 x float> %broadcast.splatinsert398, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph394
  %index401 = phi i64 [ 0, %vector.ph394 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %i.jz = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %index401 ; 2 uses
  %wide.vec402 = load <8 x float>, ptr %i.jz, align 4, !tbaa !58 ; 2 uses
  %strided.vec403 = shufflevector <8 x float> %wide.vec402, <8 x float> poison, <4 x i32> <i32 0, i32 2, i32 4, i32 6>
  %strided.vec404 = shufflevector <8 x float> %wide.vec402, <8 x float> poison, <4 x i32> <i32 1, i32 3, i32 5, i32 7>
  %i.ka = fdiv <4 x float> %strided.vec403, %broadcast.splat397.a
  %i.kb = fmul <4 x float> %i.ka, %broadcast.splat399
  %i.kc = fdiv <4 x float> %strided.vec404, %broadcast.splat397.a
  %i.kd = fmul <4 x float> %broadcast.splat399, %i.kc
  %interleaved.vec405 = shufflevector <4 x float> %i.kb, <4 x float> %i.kd, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x float> %interleaved.vec405, ptr %i.jz, align 4, !tbaa !58
  %index.next406 = add nuw i64 %index401, 4       ; 2 uses
  %i.ke = icmp eq i64 %index.next406, %n.vec395
  br i1 %i.ke, label %middle.block407, label %vector.body400, !llvm.loop !181

middle.block407:                                  ; preds = %vector.body400
  %cmp.n408 = icmp eq i64 %i.jw, %n.vec395
  br i1 %cmp.n408, label %._crit_edge, label %scalar.ph392.preheader

scalar.ph392.preheader:                           ; preds = %.lr.ph, %middle.block407
  %.0232.ph = phi i64 [ 0, %.lr.ph ], [ %n.vec395, %middle.block407 ]
  %i.kf = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.kg = shufflevector <2 x float> %i.kf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.ki = shufflevector <2 x float> %i.kh, <2 x float> poison, <2 x i32> zeroinitializer
  br label %scalar.ph392

._crit_edge:                                      ; preds = %scalar.ph392, %middle.block407, %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #19
  store i32 %i.jp, ptr %27, align 4, !tbaa !64
  store i32 %i.jq, ptr %i.de, align 4, !tbaa !65
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #19
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2cv4face13modifySamplesE, i64 16), ptr %28, align 8, !tbaa !67
  store ptr %2, ptr %i.df, align 8, !tbaa !114
  store ptr %24, ptr %i.dg, align 8, !tbaa !187
  invoke void @_ZN2cv13parallel_for_ERKNS_5RangeERKNS_16ParallelLoopBodyEd(ptr noundef nonnull align 4 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(8) %28, double noundef -1.000000e+00)
          to label %bb.bg unwind label %bb.br

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt6vectorIN2cv6Point_IfEESaIS2_EE12_M_check_lenEmPKc.exit.i181, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131, %bb.bd, %.noexc.i.i138
  %lpad.loopexit.split-lp410 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit155

bb.bf:                                            ; preds = %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EE6resizeEm.exit129
  %i.kj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #19
  br label %_ZNSt6vectorIN2cv6Point_IfEESaIS2_EED2Ev.exit155

scalar.ph392:                                     ; preds = %scalar.ph392.preheader, %scalar.ph392
  %.0232 = phi i64 [ %i.ko, %scalar.ph392 ], [ %.0232.ph, %scalar.ph392.preheader ] ; 2 uses
  %i.kk = getelementptr inbounds nuw [8 x i8], ptr %i.js, i64 %.0232 ; 2 uses
  %i.kl = load <2 x float>, ptr %i.kk, align 4, !tbaa !58
  %i.km = fdiv <2 x float> %i.kl, %i.kg
  %i.kn = fmul <2 x float> %i.km, %i.ki
  store <2 x float> %i.kn, ptr %i.kk, align 4, !tbaa !58
  %i.ko = add nuw i64 %.0232, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.ko, %i.jw
  br i1 %exitcond.not, label %._crit_edge, label %scalar.ph392, !llvm.loop !182

bb.bg:                                            ; preds = %._crit_edge
  call void @_ZN2cv16ParallelLoopBodyD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #19
  %i.kp = load ptr, ptr %i.cy, align 8, !tbaa !45 ; 3 uses
  %i.kq = load ptr, ptr %24, align 8, !tbaa !37   ; 3 uses
  %i.kr = ptrtoint ptr %i.kp to i64
  %i.ks = ptrtoint ptr %i.kq to i64
  %i.kt = sub i64 %i.kr, %i.ks                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, i8 0, i64 24, i1 false)
  %.not.i.i.i.i130 = icmp eq ptr %i.kp, %i.kq
  br i1 %.not.i.i.i.i130, label %.noexc140, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ku = icmp ugt i64 %i.kt, 9223372036854775800
  br i1 %i.ku, label %.noexc.i.i138, label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131, !prof !55

.noexc.i.i138:                                    ; preds = %bb.bh
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #20
          to label %.noexc139 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %.noexc.i.i138
  unreachable

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131: ; preds = %bb.bh
  %i.kv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kt) #22
          to label %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge: ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131
  %.pre269 = load ptr, ptr %24, align 8, !tbaa !56
  %.pre270 = load ptr, ptr %i.cy, align 8, !tbaa !56
  br label %.noexc140

.noexc140:                                        ; preds = %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge, %bb.bg
  %i.kw = phi ptr [ %i.kp, %bb.bg ], [ %.pre270, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge ] ; 2 uses
  %i.kx = phi ptr [ %i.kq, %bb.bg ], [ %.pre269, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge ] ; 2 uses
  %i.ky = phi ptr [ null, %bb.bg ], [ %i.kv, %_ZNSt15__new_allocatorIN2cv6Point_IfEEE8allocateEmPKv.exit.i.i.i.i131..noexc140_crit_edge ] ; 4 uses
  store ptr %i.ky, ptr %29, align 8, !tbaa !37
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 %i.kt
  store ptr %i.kz, ptr %i.di, align 8, !tbaa !57
  %.not7.i.i.i.i.i132 = icmp eq ptr %i.kx, %i.kw
  br i1 %.not7.i.i.i.i.i132, label %.loopexit195, label %.lr.ph.i.i.i.i.i133

.lr.ph.i.i.i.i.i133:                              ; preds = %.noexc140, %.lr.ph.i.i.i.i.i133
  %.09.i.i.i.i.i134 = phi ptr [ %i.lc, %.lr.ph.i.i.i.i.i133 ], [ %i.ky, %.noexc140 ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i135 = phi ptr [ %i.lb, %.lr.ph.i.i.i.i.i133 ], [ %i.kx, %.noexc140 ] ; 2 uses
  %i.la = load i64, ptr %.sroa.04.08.i.i.i.i.i135, align 4, !tbaa !58
  store i64 %i.la, ptr %.09.i.i.i.i.i134, align 4, !tbaa !58
  %i.lb = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i135, i64 8 ; 2 uses
  %i.lc = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i134, i64 8 ; 2 uses
  %.not.i.i.i.i.i136 = icmp eq ptr %i.lb, %i.kw
  br i1 %.not.i.i.i.i.i136, label %.loopexit195, label %.lr.ph.i.i.i.i.i133, !llvm.loop !0

.loopexit195:                                     ; preds = %.lr.ph.i.i.i.i.i133, %.noexc140
  %.0.lcssa.i.i.i.i.i137 = phi ptr [ %i.ky, %.noexc140 ], [ %i.lc, %.lr.ph.i.i.i.i.i133 ]
  store ptr %.0.lcssa.i.i.i.i.i137, ptr %i.dh, align 8, !tbaa !45
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store i32 0, ptr %i.dj, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 -1, i64 16, i1 false)
  %i.ld = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.dk, ptr noundef nonnull align 8 dereferenceable(24) %29)
          to label %bb.bi unwind label %bb.bk     ; 0 uses

bb.bi:                                            ; preds = %.loopexit195
  %i.le = load ptr, ptr %1, align 8, !tbaa !82
  %i.lf = getelementptr inbounds nuw [48 x i8], ptr %i.le, i64 %i.el ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.lf, ptr noundef nonnull align 8 dereferenceable(48) %4, i64 20, i1 false), !tbaa.struct !61
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 24
  %i.lh = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN2cv6Point_IfEESaIS2_EEaSERKS4_(ptr noundef nonnull align 8 dereferenceable(24) %i.lg, ptr noundef nonnull align 8 dereferenceable(24) %i.dk)
          to label %_ZN2cv4face9tree_nodeaSERKS1_.exit.i144 unwind label %bb.bk ; 0 uses

_ZN2cv4face9tree_nodeaSERKS1_.exit.i144:          ; preds = %bb.bi
  %i.li = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i.i145 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i.i.i145, label %bb.bm, label %bb.bj

bb.bj:                                            ; preds = %_ZN2cv4face9tree_nodeaSERKS1_.exit.i144
  %i.lj = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.lk = ptrtoint ptr %i.lj to i64
  %i.ll = ptrtoint ptr %i.li to i64
  %i.lm = sub i64 %i.lk, %i.ll
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.lm) #21
  br label %bb.bm

bb.bk:                                            ; preds = %bb.bi, %.loopexit195
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lo = load ptr, ptr %i.dk, align 8, !tbaa !37 ; 3 uses
  %.not.i.i.i.i3.i142 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i.i3.i142, label %_ZN2cv4face9tree_nodeD2Ev.exit4.i143, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.lp = load ptr, ptr %i.dl, align 8, !tbaa !57
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #21
  br label %_ZN2cv4face9tree_nodeD2Ev.exit4.i143
end_hunk_1
