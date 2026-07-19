inline.NumInlined: 20074
inline.NumDeleted: 9324
loop-unroll.NumCompletelyUnrolled: 16
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 27
begin_hunk_0_@_ZNK6duckdb22TemporaryMemoryManager18ComputeReservationERKNS_20TemporaryMemoryStateE:bb.a
  call void @_ZdlPv(ptr noundef nonnull %i.mf) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit223

_ZNSt6vectorImSaImEED2Ev.exit223:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit, %bb.ci
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.mg = load ptr, ptr %8, align 8, !tbaa !1156  ; 2 uses
  %.not.i.i.i224 = icmp eq ptr %i.mg, null
  br i1 %.not.i.i.i224, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit, label %bb.cj

bb.cj:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit223
  call void @_ZdlPv(ptr noundef nonnull %i.mg) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit223, %bb.cj
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  ret i64 %.3

.body:                                            ; preds = %.loopexit277, %.loopexit.split-lp278, %.loopexit273, %.loopexit.split-lp274, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183, %bb.ap, %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i174, %bb.ai, %bb.e, %bb.x, %bb.al, %bb.ax, %bb.az, %bb.ay, %_ZNSt6vectorImSaImEED2Ev.exit220
  %.pn154.pn = phi { ptr, i32 } [ %i.hn, %bb.ay ], [ %i.ds, %bb.x ], [ %.pn139.pn.pn, %_ZNSt6vectorImSaImEED2Ev.exit220 ], [ %i.fu, %bb.al ], [ %i.ap, %bb.e ], [ %i.hm, %bb.ax ], [ %i.ho, %bb.az ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp274 ], [ %i.gi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i183 ], [ %i.ev, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ev, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.ad ], [ %i.fn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i173 ], [ %i.fn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i174 ], [ %.pn8.i.i.i170, %bb.ai ], [ %i.gi, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i182 ], [ %.pn8.i.i.i179, %bb.ap ], [ %lpad.loopexit275, %.loopexit273 ], [ %lpad.loopexit279, %.loopexit277 ], [ %lpad.loopexit.split-lp280, %.loopexit.split-lp278 ]
  %i.mh = load ptr, ptr %10, align 8, !tbaa !1171 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.mh, null
  br i1 %.not.i.i.i225, label %_ZNSt6vectorIdSaIdEED2Ev.exit226, label %bb.ck

bb.ck:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.mh) #44
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit226

_ZNSt6vectorIdSaIdEED2Ev.exit226:                 ; preds = %.body, %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #23
  %i.mi = load ptr, ptr %9, align 8, !tbaa !526   ; 2 uses
  %.not.i.i.i227 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i227, label %_ZNSt6vectorImSaImEED2Ev.exit228, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit226
  call void @_ZdlPv(ptr noundef nonnull %i.mi) #44
  br label %_ZNSt6vectorImSaImEED2Ev.exit228

_ZNSt6vectorImSaImEED2Ev.exit228:                 ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit226, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #23
  %i.mj = load ptr, ptr %8, align 8, !tbaa !1156  ; 2 uses
  %.not.i.i.i229 = icmp eq ptr %i.mj, null
  br i1 %.not.i.i.i229, label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit230, label %bb.cm

bb.cm:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit228
  call void @_ZdlPv(ptr noundef nonnull %i.mj) #44
  br label %_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit230

_ZNSt6vectorISt17reference_wrapperIKN6duckdb20TemporaryMemoryStateEESaIS4_EED2Ev.exit230: ; preds = %_ZNSt6vectorImSaImEED2Ev.exit228, %bb.cm
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  resume { ptr, i32 } %.pn154.pn

bb.cn:                                            ; preds = %bb.by
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1164
  %i.e = load ptr, ptr %0, align 8, !tbaa !526    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18ComputeDerivativesERKNS_6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEERKNS0_ImLb1ESaImEEERNS0_IdLb1ESaIdEEEm(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 0                       ; 2 uses
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.043.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.ac, %.lr.ph ]
  %.042.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %i.y, %.lr.ph ] ; 2 uses
  %.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %i.z, %.lr.ph ] ; 2 uses
  %i.a = uitofp i64 %3 to double                  ; 2 uses
  %i.b = fdiv double %.042.lcssa, %.0.lcssa
  %i.c = fdiv double 1.000000e+00, %i.a           ; 3 uses
  %i.d = tail call double @pow(double noundef %i.b, double noundef %i.c) #23, !tbaa !3
  %i.e = fsub double 1.000000e+00, %i.d
  %i.f = tail call double @pow(double noundef %.042.lcssa, double noundef %i.c) #23, !tbaa !3
  %i.g = fneg double %.043.lcssa
  %i.h = fmul double %i.f, %i.g
  %i.i = tail call double @pow(double noundef %.0.lcssa, double noundef %i.c) #23, !tbaa !3
  %i.j = fmul double %i.i, %i.a
  %i.k = fdiv double %i.h, %i.j
  br i1 %.not, label %._crit_edge56, label %.lr.ph55.preheader

.lr.ph55.preheader:                               ; preds = %._crit_edge
  %i.l = insertelement <2 x double> poison, double %i.k, i64 0
  br label %.lr.ph55

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.050 = phi double [ %i.z, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.04249 = phi double [ %i.y, %.lr.ph ], [ 1.000000e+00, %bb.a ]
  %.04348 = phi double [ %i.ac, %.lr.ph ], [ 0.000000e+00, %bb.a ]
  %.04447 = phi i64 [ %i.ad, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.m = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04447)
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !1154 ; 2 uses
  %i.o = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04447)
  %i.p = load i64, ptr %i.o, align 8, !tbaa !70
  %i.q = uitofp i64 %i.p to double                ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.s = load atomic i64, ptr %i.r seq_cst, align 8
  %i.t = tail call noundef i64 @llvm.umax.i64(i64 %i.s, i64 1)
  %i.u = uitofp i64 %i.t to double                ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.w = load atomic i64, ptr %i.v seq_cst, align 8
  %i.x = uitofp i64 %i.w to double
  %i.y = fmul double %.04249, %i.q                ; 2 uses
  %i.z = fmul double %.050, %i.u                  ; 2 uses
  %i.aa = fdiv double %i.q, %i.u
  %i.ab = fsub double 1.000000e+00, %i.aa
  %i.ac = tail call double @llvm.fmuladd.f64(double %i.x, double %i.ab, double %.04348) ; 2 uses
  %i.ad = add nuw i64 %.04447, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !1177

._crit_edge56:                                    ; preds = %.lr.ph55, %._crit_edge
  ret void

.lr.ph55:                                         ; preds = %.lr.ph55.preheader, %.lr.ph55
  %.04553 = phi i64 [ %i.am, %.lr.ph55 ], [ 0, %.lr.ph55.preheader ] ; 4 uses
  %i.ae = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.04553)
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !1154 ; 2 uses
  %i.ag = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.04553)
  %4 = load i64, ptr %i.ag, align 8, !tbaa !70
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %5 = load atomic i64, ptr %i.ah seq_cst, align 8
  %6 = tail call noundef i64 @llvm.umax.i64(i64 %5, i64 1)
  %7 = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %8 = load atomic i64, ptr %7 seq_cst, align 8
  %9 = uitofp i64 %8 to double
  %10 = fmul double %i.e, %9
  %11 = insertelement <2 x i64> poison, i64 %4, i64 0
  %12 = insertelement <2 x i64> %11, i64 %6, i64 1
  %13 = uitofp <2 x i64> %12 to <2 x double>
  %i.ai = insertelement <2 x double> %i.l, double %10, i64 1
  %i.aj = fdiv <2 x double> %i.ai, %13            ; 2 uses
  %shift = shufflevector <2 x double> %i.aj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.aj, %shift
  %i.ak = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.al = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.04553)
  store double %i.ak, ptr %i.al, align 8, !tbaa !1170
  %i.am = add nuw i64 %.04553, 1                  ; 2 uses
  %exitcond60.not = icmp eq i64 %i.am, %3
  br i1 %exitcond60.not, label %._crit_edge56, label %.lr.ph55, !llvm.loop !1178
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1150
  %i.e = load ptr, ptr %0, align 8, !tbaa !1156   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EE3getILb1EEERS4_m.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorISt17reference_wrapperIKNS_20TemporaryMemoryStateEELb1ESaIS4_EE3getILb1EEERS4_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorIdLb1ESaIdEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.56", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1166
  %i.e = load ptr, ptr %0, align 8, !tbaa !1171   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !70
  store i64 %i.i, ptr %i.b, align 8, !tbaa !70
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorIdLb1ESaIdEE3getILb1EEERdm.exit, label %bb.b, !prof !1037

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.230, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #47
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !82     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #44
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorIdLb1ESaIdEE3getILb1EEERdm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #22

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5BlockC2ERNS_14BlockAllocatorElmm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN6duckdb10FileBufferC2ERNS_14BlockAllocatorENS_14FileBufferTypeEmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1, i8 noundef zeroext 1, i64 noundef %3, i64 noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb5BlockE, i64 16), ptr %0, align 8, !tbaa !45
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.a, align 8, !tbaa !1179
  ret void
}

declare void @_ZN6duckdb10FileBufferC2ERNS_14BlockAllocatorENS_14FileBufferTypeEmm(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 1, i8 noundef zeroext, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb5BlockC2ERNS_14BlockAllocatorEljm(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 1 %1, i64 noundef %2, i32 noundef %3, i64 noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = zext i32 %3 to i64
  tail call void @_ZN6duckdb10FileBufferC2ERNS_14BlockAllocatorENS_14FileBufferTypeEmm(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 1 %1, i8 noundef zeroext 1, i64 noundef %i.a, i64 noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb5BlockE, i64 16), ptr %0, align 8, !tbaa !45
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %2, ptr %i.b, align 8, !tbaa !1179
  ret void
}

end_hunk_0
