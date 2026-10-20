Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/verilator/original/V3DfgSynthesize?download=true
inline.NumInlined: 8228
inline.NumDeleted: 2495
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN18AstToDfgSynthesize21containsTriLoweredVarEP9DfgVertex:_ZNKSt6vectorIPK9DfgVertexSaIS2_EE12_M_check_lenEmPKc.exit.i.i
  %i.cm = load ptr, ptr %i.b, align 8, !tbaa !492
  %i.cn = ptrtoint ptr %i.cm to i64
  %i.co = ptrtoint ptr %i.cl to i64
  %i.cp = sub i64 %i.cn, %i.co
  call void @_ZdlPvm(ptr noundef nonnull %i.cl, i64 noundef %i.cp) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit35

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit35:     ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  ret i1 %.lcssa.ph

_ZNSt14_Function_baseD2Ev.exit32:                 ; preds = %.loopexit.split-lp80.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp, %bb.t
  %.sroa.14.4 = phi ptr [ %.sroa.14.5, %bb.t ], [ %.sroa.14.5, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.14.0119, %.loopexit.split-lp80.loopexit.split-lp ]
  %.sroa.047.4 = phi ptr [ %.sroa.047.5, %bb.t ], [ %.sroa.047.5, %.loopexit.split-lp.loopexit.split-lp ], [ %.sroa.047.0120, %.loopexit.split-lp80.loopexit.split-lp ] ; 3 uses
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp204, %bb.t ], [ %lpad.loopexit.split-lp204, %.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp80.loopexit.split-lp ] ; 2 uses
  %.not.i.i.i36 = icmp eq ptr %.sroa.047.4, null
  br i1 %.not.i.i.i36, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37, label %_ZNSt14_Function_baseD2Ev.exit32.thread68

_ZNSt14_Function_baseD2Ev.exit32.thread68:        ; preds = %_ZNSt14_Function_baseD2Ev.exit32
  %i.cq = ptrtoint ptr %.sroa.14.4 to i64
  %i.cr = ptrtoint ptr %.sroa.047.4 to i64
  %i.cs = sub i64 %i.cq, %i.cr
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.047.4, i64 noundef %i.cs) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37:     ; preds = %_ZNSt14_Function_baseD2Ev.exit32.thread, %_ZNSt14_Function_baseD2Ev.exit32, %_ZNSt14_Function_baseD2Ev.exit32.thread68
  %.pn.pn67 = phi { ptr, i32 } [ %i.ar, %_ZNSt14_Function_baseD2Ev.exit32.thread ], [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit32 ], [ %.pn.pn, %_ZNSt14_Function_baseD2Ev.exit32.thread68 ]
  %i.ct = load ptr, ptr %1, align 8, !tbaa !491   ; 3 uses
  %.not.i.i.i38 = icmp eq ptr %i.ct, null
  br i1 %.not.i.i.i38, label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37
  %i.cu = load ptr, ptr %i.b, align 8, !tbaa !492
  %i.cv = ptrtoint ptr %i.cu to i64
  %i.cw = ptrtoint ptr %i.ct to i64
  %i.cx = sub i64 %i.cv, %i.cw
  call void @_ZdlPvm(ptr noundef nonnull %i.ct, i64 noundef %i.cx) #31
  br label %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39

_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit39:     ; preds = %_ZNSt6vectorIPK9DfgVertexSaIS2_EED2Ev.exit37, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  resume { ptr, i32 } %.pn.pn67
}

declare void @_ZNK7AstNode10v3errorEndERKNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(152), ptr noundef nonnull align 8 dereferenceable(112)) #2

declare void @_ZNK8FileLine9warnOtherB5cxx11Ev(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(48)) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK8FileLine18warnContextPrimaryB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = load atomic i8, ptr @_ZGVZN7V3Error1sEvE3s_s acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN7V3Error1sEv.exit, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN7V3Error1sEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14V3ErrorGuardedC2Ev(ptr noundef nonnull align 8 dereferenceable(720) @_ZZN7V3Error1sEvE3s_s)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @__cxa_atexit(ptr nonnull @_ZN14V3ErrorGuardedD2Ev, ptr nonnull @_ZZN7V3Error1sEvE3s_s, ptr nonnull @__dso_handle) #28 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  br label %_ZN7V3Error1sEv.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.e, %bb.e ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12 ]
  resume { ptr, i32 } %common.resume.op

bb.e:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN7V3Error1sEvE3s_s) #28
  br label %common.resume

_ZN7V3Error1sEv.exit:                             ; preds = %bb.a, %bb.b, %bb.d
  %i.f = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull getelementptr inbounds nuw (i8, ptr @_ZZN7V3Error1sEvE3s_s, i64 200), ptr nonnull @.str.9, ptr nonnull @.str.10, i32 468, ptr null)
  store i8 1, ptr %i.f, align 8, !tbaa !218
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @_ZNK8FileLine11warnContextB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNK8FileLine17warnContextParentB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %_ZN7V3Error1sEv.exit
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.g = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.g
  %i.j = load i64, ptr %i.h, align 8, !tbaa !49
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.l = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.o = load i64, ptr %i.m, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void

bb.h:                                             ; preds = %_ZN7V3Error1sEv.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

bb.i:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !48     ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.i
  %i.v = load i64, ptr %i.t, align 8, !tbaa !49
  %i.w = add i64 %i.v, 1
  call void @_ZdlPvm(ptr noundef %i.s, i64 noundef %i.w) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7, %bb.h
  %.pn = phi { ptr, i32 } [ %i.q, %bb.h ], [ %i.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7 ], [ %i.r, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  %i.x = load ptr, ptr %2, align 8, !tbaa !48     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !49
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN18AstToDfgSynthesize15coalesceDriversERSt6vectorINS_6DriverESaIS1_EE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !540    ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !540  ; 3 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %bb.c, !prof !169

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 925) ; 0 uses
  %i.f = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.g = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull @.str.623)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.g) #29
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !542  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.k = load i8, ptr %i.j, align 8, !tbaa !434
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %.preheader, label %bb.d, !prof !149

.preheader:                                       ; preds = %bb.c
  %i.m = ptrtoint ptr %i.c to i64
  %i.n = ptrtoint ptr %i.a to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = sdiv exact i64 %i.o, 24                  ; 2 uses
  %i.q = icmp ugt i64 %i.p, 1
  br i1 %i.q, label %.lr.ph, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.r = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 926) ; 0 uses
  %i.s = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.t = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.s, ptr noundef nonnull @.str.624)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.h, ptr noundef nonnull align 8 dereferenceable(112) %i.t) #29
  unreachable

._crit_edge.loopexit:                             ; preds = %bb.ap
  %2 = add nuw i64 %.1, 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.0.lcssa = phi i64 [ 1, %.preheader ], [ %2, %._crit_edge.loopexit ] ; 4 uses
  %.lcssa73 = phi ptr [ %i.c, %.preheader ], [ %i.dz, %._crit_edge.loopexit ]
  %.lcssa68 = phi ptr [ %i.a, %.preheader ], [ %i.ea, %._crit_edge.loopexit ]
  %.lcssa = phi i64 [ %i.p, %.preheader ], [ %i.ee, %._crit_edge.loopexit ] ; 3 uses
  %3 = icmp ugt i64 %.0.lcssa, %.lcssa
  br i1 %3, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge
  %i.u = sub nuw i64 %.0.lcssa, %.lcssa
  tail call void @_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %i.u)
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.f:                                             ; preds = %._crit_edge
  %i.v = icmp ult i64 %.0.lcssa, %.lcssa
  br i1 %i.v, label %bb.g, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw [24 x i8], ptr %.lcssa68, i64 %.0.lcssa ; 2 uses
  %.not.i.i = icmp eq ptr %.lcssa73, %i.w
  br i1 %.not.i.i, label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit, label %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %bb.g
  store ptr %i.w, ptr %i.b, align 8, !tbaa !539
  br label %_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit

_ZNSt6vectorIN18AstToDfgSynthesize6DriverESaIS1_EE6resizeEm.exit: ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPN18AstToDfgSynthesize6DriverES1_EvT_S3_RSaIT0_E.exit.i.i
  ret void

.lr.ph:                                           ; preds = %.preheader, %bb.ap
  %i.x = phi ptr [ %i.ea, %bb.ap ], [ %i.a, %.preheader ] ; 2 uses
  %.086 = phi i64 [ %.1, %bb.ap ], [ 0, %.preheader ] ; 6 uses
  %.04285 = phi i64 [ %.2, %bb.ap ], [ 1, %.preheader ] ; 4 uses
  %.not = icmp ult i64 %.086, %.04285
  br i1 %.not, label %bb.i, label %bb.h, !prof !149

bb.h:                                             ; preds = %.lr.ph
  %i.y = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 930) ; 0 uses
  %i.z = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.aa = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.z, ptr noundef nonnull @.str.609)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.aa) #29
  unreachable

bb.i:                                             ; preds = %.lr.ph
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.086 ; 10 uses
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.04285 ; 10 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !542
  %.not62.a = icmp eq ptr %i.ad, null
  br i1 %.not62.a, label %bb.ap, label %bb.j, !llvm.loop !998

bb.j:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %i.ab, align 8, !tbaa !542
  %.not63 = icmp eq ptr %i.ae, null
  br i1 %.not63, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 24, i1 false), !tbaa.struct !554
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %bb.ap, !llvm.loop !998

bb.l:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !543 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !543 ; 2 uses
  %.not.i.i45 = icmp eq i32 %i.ag, %i.ai
  br i1 %.not.i.i45, label %bb.m, label %.split

.split:                                           ; preds = %bb.l
  %i.aj = icmp ult i32 %i.ag, %i.ai
  br i1 %i.aj, label %bb.n, label %bb.o, !prof !169

bb.m:                                             ; preds = %bb.l
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !555 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !555 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.al, %i.an
  br i1 %.not11.i.i, label %.split113, label %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit

.split113:                                        ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !544
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !544
  %i.as = tail call noundef i32 @_ZNK8FileLine15operatorCompareERKS_(ptr noundef nonnull align 8 dereferenceable(48) %i.ap, ptr noundef nonnull align 8 dereferenceable(48) %i.ar)
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.n, label %bb.o, !prof !169

_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit:     ; preds = %bb.m
  %i.au = icmp ult i32 %i.al, %i.an
  br i1 %i.au, label %bb.n, label %bb.o, !prof !169

bb.n:                                             ; preds = %.split113, %.split, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.av = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.82, i32 noundef 948) ; 0 uses
  %i.aw = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.ax = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull @.str.610)
  tail call void @_Z15v3errorEndFatalRNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(112) %i.ax) #29
  unreachable

bb.o:                                             ; preds = %.split113, %.split, %_ZNK18AstToDfgSynthesize6DriverleERKS0_.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !555
  %i.ba = add i32 %i.az, 1
  %i.bb = load i32, ptr %i.af, align 8, !tbaa !543
  %.not44 = icmp eq i32 %i.ba, %i.bb
  br i1 %.not44, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = add nuw i64 %.086, 1                    ; 2 uses
  %i.bd = icmp eq i64 %i.bc, %.04285
  %i.be = zext i1 %i.bd to i64
  br label %bb.ap, !llvm.loop !998

bb.q:                                             ; preds = %bb.o
  %i.bf = load ptr, ptr %i.ab, align 8, !tbaa !542 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 72
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !388, !nonnull !100, !align !235 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !434
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %_ZNK9DfgVertex5widthEv.exit, label %bb.r, !prof !149

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 195) ; 0 uses
  %i.bl = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bm = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bl, ptr noundef nonnull @.str.632)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.bf, ptr noundef nonnull align 8 dereferenceable(112) %i.bm) #29
  unreachable

_ZNK9DfgVertex5widthEv.exit:                      ; preds = %bb.q
  %i.bn = load ptr, ptr %i.ac, align 8, !tbaa !542 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 72
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !388, !nonnull !100, !align !235 ; 2 uses
  %i.bq = load i8, ptr %i.bp, align 8, !tbaa !434
  %i.br = icmp eq i8 %i.bq, 0
  br i1 %i.br, label %_ZNK9DfgVertex5widthEv.exit46, label %bb.s, !prof !149

bb.s:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.bs = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.6, i32 noundef 195) ; 0 uses
  %i.bt = tail call noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
  %i.bu = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc(ptr noundef nonnull align 8 dereferenceable(8) %i.bt, ptr noundef nonnull @.str.632)
  tail call void @_ZNK9DfgVertex15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(96) %i.bn, ptr noundef nonnull align 8 dereferenceable(112) %i.bu) #29
  unreachable

_ZNK9DfgVertex5widthEv.exit46:                    ; preds = %_ZNK9DfgVertex5widthEv.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !393
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !393
  %i.bz = add i32 %i.by, %i.bw
  %i.ca = tail call noundef nonnull align 8 dereferenceable(80) ptr @_ZN11DfgDataType6packedEj(i32 noundef %i.bz)
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.cc = tail call noundef ptr @_ZN18AstToDfgSynthesize4makeI9DfgConcatJRP8FileLineRK11DfgDataTypeEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.cb, ptr noundef nonnull align 8 dereferenceable(80) %i.ca) ; 2 uses
  %i.cd = load ptr, ptr %i.ab, align 8, !tbaa !542 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 24 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !157 ; 11 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i.i.i, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNK9DfgVertex5widthEv.exit46
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ch, i64 16 ; 3 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cl, null
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %.pre.i.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !366 ; 4 uses
  br i1 %.not.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.pre.i.i.i.i.i, ptr %i.cm, align 8, !tbaa !366
  br label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %bb.u, %bb.t
  %.not15.i.i.i.i.i = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %.not15.i.i.i.i.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i, i64 16
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !171
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %._crit_edge.i.i.i.i.i
  %i.co = load ptr, ptr %i.cj, align 8, !tbaa !170
  %i.cp = icmp eq ptr %i.co, %i.ch
  br i1 %i.cp, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.cq = load ptr, ptr %i.ck, align 8, !tbaa !171
  store ptr %i.cq, ptr %i.cj, align 8, !tbaa !170
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 56 ; 2 uses
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !367
  %i.ct = icmp eq ptr %i.cs, %i.ch
  br i1 %i.ct, label %bb.z, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

bb.z:                                             ; preds = %bb.y
  store ptr %.pre.i.i.i.i.i, ptr %i.cr, align 8, !tbaa !367
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i: ; preds = %bb.z, %bb.y
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ck, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i:             ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i, %_ZNK9DfgVertex5widthEv.exit46
  store ptr %i.cd, ptr %i.ch, align 8, !tbaa !160
  %.not.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i, label %_ZN9DfgConcat4rhspEP9DfgVertex.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cd, i64 48 ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.cw = load ptr, ptr %i.cu, align 8, !tbaa !170 ; 3 uses
  store ptr %i.cw, ptr %i.cv, align 8, !tbaa !171
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  store ptr null, ptr %i.cx, align 8, !tbaa !366
  %.not.i2.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not.i2.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  store ptr %i.ch, ptr %i.cy, align 8, !tbaa !366
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  store ptr %i.ch, ptr %i.cu, align 8, !tbaa !170
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cd, i64 56 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !367
  %.not6.i.i.i.i = icmp eq ptr %i.da, null
  br i1 %.not6.i.i.i.i, label %bb.ad, label %_ZN9DfgConcat4rhspEP9DfgVertex.exit

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.ch, ptr %i.cz, align 8, !tbaa !367
  br label %_ZN9DfgConcat4rhspEP9DfgVertex.exit

_ZN9DfgConcat4rhspEP9DfgVertex.exit:              ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i, %bb.ac, %bb.ad
  %i.db = load ptr, ptr %i.ac, align 8, !tbaa !542 ; 4 uses
  %i.dc = load ptr, ptr %i.ce, align 8, !tbaa !156
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !157 ; 11 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !160 ; 3 uses
  %.not.i.i.i.i47 = icmp eq ptr %i.de, null
  br i1 %.not.i.i.i.i47, label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i54, label %bb.ae

bb.ae:                                            ; preds = %_ZN9DfgConcat4rhspEP9DfgVertex.exit
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 48 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dd, i64 16 ; 3 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !171 ; 3 uses
  %.not.i.i.i.i.i48 = icmp eq ptr %i.dh, null
  %.phi.trans.insert.i.i.i.i.i49 = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  %.pre.i.i.i.i.i50 = load ptr, ptr %.phi.trans.insert.i.i.i.i.i49, align 8, !tbaa !366 ; 4 uses
  br i1 %.not.i.i.i.i.i48, label %._crit_edge.i.i.i.i.i51, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store ptr %.pre.i.i.i.i.i50, ptr %i.di, align 8, !tbaa !366
  br label %._crit_edge.i.i.i.i.i51

._crit_edge.i.i.i.i.i51:                          ; preds = %bb.af, %bb.ae
  %.not15.i.i.i.i.i52 = icmp eq ptr %.pre.i.i.i.i.i50, null
  br i1 %.not15.i.i.i.i.i52, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %._crit_edge.i.i.i.i.i51
  %i.dj = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i50, i64 16
  store ptr %i.dh, ptr %i.dj, align 8, !tbaa !171
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %._crit_edge.i.i.i.i.i51
  %i.dk = load ptr, ptr %i.df, align 8, !tbaa !170
  %i.dl = icmp eq ptr %i.dk, %i.dd
  br i1 %i.dl, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dm = load ptr, ptr %i.dg, align 8, !tbaa !171
  store ptr %i.dm, ptr %i.df, align 8, !tbaa !170
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dn = getelementptr inbounds nuw i8, ptr %i.de, i64 56 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !367
  %i.dp = icmp eq ptr %i.do, %i.dd
  br i1 %i.dp, label %bb.ak, label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i53

bb.ak:                                            ; preds = %bb.aj
  store ptr %.pre.i.i.i.i.i50, ptr %i.dn, align 8, !tbaa !367
  br label %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i53

_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i53: ; preds = %bb.ak, %bb.aj
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dg, i8 0, i64 16, i1 false)
  br label %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i54

_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i54:           ; preds = %_ZN6V3ListI7DfgEdgeXadL_ZNS0_5linksEvEES0_E6unlinkEPKS0_.exit.i.i.i.i53, %_ZN9DfgConcat4rhspEP9DfgVertex.exit
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !160
  %.not.i.i.i55 = icmp eq ptr %i.db, null
  br i1 %.not.i.i.i55, label %_ZN9DfgConcat4lhspEP9DfgVertex.exit, label %bb.al

bb.al:                                            ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i54
  %i.dq = getelementptr inbounds nuw i8, ptr %i.db, i64 48 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dd, i64 16
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !170 ; 3 uses
  store ptr %i.ds, ptr %i.dr, align 8, !tbaa !171
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store ptr null, ptr %i.dt, align 8, !tbaa !366
  %.not.i2.i.i.i56 = icmp eq ptr %i.ds, null
  br i1 %.not.i2.i.i.i56, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.dd, ptr %i.du, align 8, !tbaa !366
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  store ptr %i.dd, ptr %i.dq, align 8, !tbaa !170
  %i.dv = getelementptr inbounds nuw i8, ptr %i.db, i64 56 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !367
  %.not6.i.i.i.i57 = icmp eq ptr %i.dw, null
  br i1 %.not6.i.i.i.i57, label %bb.ao, label %_ZN9DfgConcat4lhspEP9DfgVertex.exit

bb.ao:                                            ; preds = %bb.an
  store ptr %i.dd, ptr %i.dv, align 8, !tbaa !367
  br label %_ZN9DfgConcat4lhspEP9DfgVertex.exit

_ZN9DfgConcat4lhspEP9DfgVertex.exit:              ; preds = %_ZN7DfgEdge10unlinkSrcpEv.exit.i.i.i54, %bb.an, %bb.ao
  store ptr %i.cc, ptr %i.ab, align 8, !tbaa !542
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !555
  store i32 %i.dy, ptr %i.ay, align 4, !tbaa !555
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.i, %_ZN9DfgConcat4lhspEP9DfgVertex.exit, %bb.p, %bb.k
  %.pn = phi i64 [ %i.be, %bb.p ], [ 1, %_ZN9DfgConcat4lhspEP9DfgVertex.exit ], [ 1, %bb.k ], [ 1, %bb.i ]
  %.1 = phi i64 [ %i.bc, %bb.p ], [ %.086, %_ZN9DfgConcat4lhspEP9DfgVertex.exit ], [ %.086, %bb.k ], [ %.086, %bb.i ] ; 2 uses
  %.2 = add nuw i64 %.pn, %.04285                 ; 2 uses
  %i.dz = load ptr, ptr %i.b, align 8, !tbaa !539 ; 2 uses
  %i.ea = load ptr, ptr %1, align 8, !tbaa !502   ; 3 uses
  %i.eb = ptrtoint ptr %i.dz to i64
  %i.ec = ptrtoint ptr %i.ea to i64
  %i.ed = sub i64 %i.eb, %i.ec
  %i.ee = sdiv exact i64 %i.ed, 24                ; 2 uses
  %i.ef = icmp ult i64 %.2, %i.ee
  br i1 %i.ef, label %.lr.ph, label %._crit_edge.loopexit
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN18AstToDfgSynthesize4makeI15DfgSplicePackedJRKP8FileLineRK11DfgDataTypeEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #32 ; 9 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !281, !nonnull !100, !align !235
  %i.c = load ptr, ptr %1, align 8, !tbaa !369    ; 2 uses
  invoke void @_ZN9DfgVertexC2ER8DfgGraph8VDfgTypeP8FileLineRK11DfgDataType(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, i16 65, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV15DfgSplicePacked, i64 16), ptr %i.a, align 8, !tbaa !221
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !388, !nonnull !100, !align !235
  %i.g = load i8, ptr %i.f, align 8, !tbaa !434
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %_ZN15DfgSplicePackedC2ER8DfgGraphP8FileLineRK11DfgDataType.exit, label %bb.b, !prof !149

bb.b:                                             ; preds = %.noexc
  %i.i = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error19v3errorPrepFileLineB5cxx11E11V3ErrorCodePKci(i8 4, ptr noundef nonnull @.str.120, i32 noundef 504)
          to label %bb.c unwind label %bb.f       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.j = invoke noundef nonnull align 8 dereferenceable(112) ptr @_ZN7V3Error10v3errorStrB5cxx11Ev()
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.k = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull @.str.601, i64 noundef 26)
          to label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i unwind label %bb.f ; 0 uses

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i: ; preds = %bb.d
  invoke void @_ZN8FileLine15v3errorEndFatalERNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) %i.c, ptr noundef nonnull align 8 dereferenceable(112) %i.j) #29
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i
  unreachable

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.d, %bb.c, %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN15DfgVertexSpliceD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.a) #28
  br label %.body

_ZN15DfgSplicePackedC2ER8DfgGraphP8FileLineRK11DfgDataType.exit: ; preds = %.noexc
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !323  ; 4 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP15DfgSplicePackedEEERS1_DpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN15DfgSplicePackedC2ER8DfgGraphP8FileLineRK11DfgDataType.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 120 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 128 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !363  ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 136 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !364
  %.not.i = icmp eq ptr %i.q, %i.s
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.a, ptr %i.q, align 8, !tbaa !137
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.p, align 8, !tbaa !363
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP15DfgSplicePackedEEERS1_DpOT_.exit

bb.i:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !365  ; 4 uses
  %i.v = ptrtoint ptr %i.q to i64
  %i.w = ptrtoint ptr %i.u to i64                 ; 2 uses
  %i.x = sub i64 %i.v, %i.w                       ; 5 uses
  %i.y = icmp eq i64 %i.x, 9223372036854775800
  br i1 %i.y, label %bb.j, label %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.z = ashr exact i64 %i.x, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.z, i64 1)
  %i.aa = add nsw i64 %.sroa.speculated.i.i.i, %i.z ; 2 uses
  %i.ab = icmp ult i64 %i.aa, %i.z
  %i.ac = tail call i64 @llvm.umin.i64(i64 %i.aa, i64 1152921504606846975)
  %i.ad = select i1 %i.ab, i64 1152921504606846975, i64 %i.ac ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ad, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ae = shl nuw nsw i64 %i.ad, 3
  %i.af = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #32 ; 4 uses
  %i.ag = getelementptr inbounds i8, ptr %i.af, i64 %i.x ; 2 uses
  store ptr %i.a, ptr %i.ag, align 8, !tbaa !137
  %i.ah = icmp sgt i64 %i.x, 0
  br i1 %i.ah, label %bb.k, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.af, ptr align 8 %i.u, i64 %i.x, i1 false)
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %.not.i17.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE17_M_realloc_insertIJRKP15DfgSplicePackedEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !364
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = sub i64 %i.ak, %i.w
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef %i.al) #31
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE17_M_realloc_insertIJRKP15DfgSplicePackedEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9DfgVertexSaIS1_EE17_M_realloc_insertIJRKP15DfgSplicePackedEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.af, ptr %i.o, align 8, !tbaa !365
  store ptr %i.ai, ptr %i.p, align 8, !tbaa !363
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ad
  store ptr %i.am, ptr %i.r, align 8, !tbaa !364
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP15DfgSplicePackedEEERS1_DpOT_.exit

bb.m:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.m
  %eh.lpad-body = phi { ptr, i32 } [ %i.an, %bb.m ], [ %i.l, %bb.f ]
  tail call void @_ZdlPvm(ptr noundef nonnull %i.a, i64 noundef 120) #31
  resume { ptr, i32 } %eh.lpad-body

_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP15DfgSplicePackedEEERS1_DpOT_.exit: ; preds = %_ZNSt6vectorIP9DfgVertexSaIS1_EE17_M_realloc_insertIJRKP15DfgSplicePackedEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h, %_ZN15DfgSplicePackedC2ER8DfgGraphP8FileLineRK11DfgDataType.exit
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN18AstToDfgSynthesize4makeI12DfgUnitArrayJRKP8FileLineRK11DfgDataTypeEEEPT_DpOT0_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(80) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #32 ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !tbaa !281, !nonnull !100, !align !235
  %i.c = load ptr, ptr %1, align 8, !tbaa !369
  invoke void @_ZN12DfgUnitArrayC2ER8DfgGraphP8FileLineRK11DfgDataType(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef %i.c, ptr noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !323  ; 4 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP12DfgUnitArrayEEERS1_DpOT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 120 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 128 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !363  ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 136 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !364
  %.not.i = icmp eq ptr %i.h, %i.j
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %i.a, ptr %i.h, align 8, !tbaa !137
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.g, align 8, !tbaa !363
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE12emplace_backIJRKP12DfgUnitArrayEEERS1_DpOT_.exit

bb.e:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !365  ; 4 uses
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = sub i64 %i.m, %i.n                       ; 5 uses
  %i.p = icmp eq i64 %i.o, 9223372036854775800
  br i1 %i.p, label %bb.f, label %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
  unreachable

_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.q = ashr exact i64 %i.o, 3                   ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.q, i64 1)
  %i.r = add nsw i64 %.sroa.speculated.i.i.i, %i.q ; 2 uses
  %i.s = icmp ult i64 %i.r, %i.q
  %i.t = tail call i64 @llvm.umin.i64(i64 %i.r, i64 1152921504606846975)
  %i.u = select i1 %i.s, i64 1152921504606846975, i64 %i.t ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.u, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #32 ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.w, i64 %i.o ; 2 uses
  store ptr %i.a, ptr %i.x, align 8, !tbaa !137
  %i.y = icmp sgt i64 %i.o, 0
  br i1 %i.y, label %bb.g, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.w, ptr align 8 %i.l, i64 %i.o, i1 false)
  br label %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIP9DfgVertexSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.not.i17.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9DfgVertexSaIS1_EE17_M_realloc_insertIJRKP12DfgUnitArrayEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIP9DfgVertexSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
end_hunk_0
