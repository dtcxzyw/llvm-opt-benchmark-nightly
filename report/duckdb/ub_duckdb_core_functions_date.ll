Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/duckdb/original/ub_duckdb_core_functions_date?download=true
inline.NumInlined: 23534
inline.NumDeleted: 3924
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 248
begin_hunk_0_@_ZN6duckdb12_GLOBAL__N_114StructDatePart8FunctionINS_6date_tEEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE:.noexc
bb.ej:                                            ; preds = %_ZNSt6vectorImSaImEED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.mw) #27
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit

_ZNSt6vectorIPdSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %bb.ej
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.mx = load ptr, ptr %10, align 8, !tbaa !241  ; 2 uses
  %.not.i.i.i214 = icmp eq ptr %i.mx, null
  br i1 %.not.i.i.i214, label %_ZNSt6vectorIPlSaIS0_EED2Ev.exit, label %bb.ek

bb.ek:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.mx) #27
  br label %_ZNSt6vectorIPlSaIS0_EED2Ev.exit

_ZNSt6vectorIPlSaIS0_EED2Ev.exit:                 ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.dy
  %.pn150 = phi { ptr, i32 } [ %.pn136.pn.pn.pn.pn.pn, %bb.dy ], [ %lpad.loopexit.split-lp467, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.my = load ptr, ptr %12, align 8, !tbaa !256  ; 2 uses
  %.not.i.i.i215 = icmp eq ptr %i.my, null
  br i1 %.not.i.i.i215, label %_ZNSt6vectorImSaImEED2Ev.exit216, label %bb.el

bb.el:                                            ; preds = %.loopexit.split-lp
  call void @_ZdlPv(ptr noundef nonnull %i.my) #27
  br label %_ZNSt6vectorImSaImEED2Ev.exit216

_ZNSt6vectorImSaImEED2Ev.exit216:                 ; preds = %bb.el, %.loopexit.split-lp, %bb.e
  %.pn150.pn = phi { ptr, i32 } [ %i.ao, %bb.e ], [ %.pn150, %.loopexit.split-lp ], [ %.pn150, %bb.el ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  br label %bb.em

bb.em:                                            ; preds = %bb.d, %_ZNSt6vectorImSaImEED2Ev.exit216
  %.pn150.pn.pn.pn = phi { ptr, i32 } [ %i.an, %bb.d ], [ %.pn150.pn, %_ZNSt6vectorImSaImEED2Ev.exit216 ] ; 2 uses
  %i.mz = load ptr, ptr %11, align 8, !tbaa !246  ; 2 uses
  %.not.i.i.i217 = icmp eq ptr %i.mz, null
  br i1 %.not.i.i.i217, label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit218, label %bb.en

bb.en:                                            ; preds = %bb.em
  call void @_ZdlPv(ptr noundef nonnull %i.mz) #27
  br label %_ZNSt6vectorIPdSaIS0_EED2Ev.exit218

_ZNSt6vectorIPdSaIS0_EED2Ev.exit218:              ; preds = %bb.en, %bb.em, %bb.c
  %.pn150.pn.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.c ], [ %.pn150.pn.pn.pn, %bb.em ], [ %.pn150.pn.pn.pn, %bb.en ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.na = load ptr, ptr %10, align 8, !tbaa !241  ; 2 uses
  %.not.i.i.i219 = icmp eq ptr %i.na, null
  br i1 %.not.i.i.i219, label %_ZNSt6vectorIPlSaIS0_EED2Ev.exit220, label %bb.eo

bb.eo:                                            ; preds = %_ZNSt6vectorIPdSaIS0_EED2Ev.exit218
  call void @_ZdlPv(ptr noundef nonnull %i.na) #27
  br label %_ZNSt6vectorIPlSaIS0_EED2Ev.exit220

_ZNSt6vectorIPlSaIS0_EED2Ev.exit220:              ; preds = %bb.eo, %_ZNSt6vectorIPdSaIS0_EED2Ev.exit218
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  resume { ptr, i32 } %.pn150.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_114StructDatePart4BindERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS8_ELb1EEELb1ESaISB_EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %4 = alloca %"struct.std::__detail::_AllocNode", align 8 ; 4 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.std::allocator", align 1    ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::unordered_set.567", align 8 ; 16 uses
  %11 = alloca %"class.duckdb::vector.24", align 8 ; 12 uses
  %12 = alloca %"class.duckdb::vector.527", align 8 ; 8 uses
  %13 = alloca %"class.duckdb::Value", align 8    ; 11 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %15 = alloca %"class.std::allocator", align 1   ; 5 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %17 = alloca %"class.std::allocator", align 1   ; 5 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %20 = alloca %"class.std::allocator", align 1   ; 5 uses
  %21 = alloca %"struct.std::pair.590", align 8   ; 15 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::allocator", align 1   ; 5 uses
  %24 = alloca %"struct.duckdb::LogicalType", align 8 ; 5 uses
  %25 = alloca %"class.duckdb::vector.24", align 8 ; 9 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !78
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 8 dereferenceable(88) %i.c)
  br i1 %i.g, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.h) #25
  br label %bb.cg

bb.e:                                             ; preds = %bb.a
  %i.j = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
  %i.k = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.j) ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = tail call noundef zeroext i1 %i.n(ptr noundef nonnull align 8 dereferenceable(88) %i.k)
  br i1 %i.o, label %bb.k, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.g unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.p, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ch unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %bb.g
  %.047 = phi i1 [ false, %bb.h ], [ true, %bb.g ] ; 2 uses
  %i.s = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.t = load ptr, ptr %8, align 8, !tbaa !87     ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.t) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.047, label %bb.j, label %bb.cg

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.047, label %bb.j, label %bb.cg

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn146 = phi { ptr, i32 } [ %i.r, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.p) #25
  br label %bb.cg

bb.k:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 2 uses
  store ptr %i.w, ptr %10, align 8, !tbaa !269
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 4 uses
  store i64 1, ptr %i.x, align 8, !tbaa !270
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.z, align 8, !tbaa !10455
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  %i.ab = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.l unwind label %.thread

bb.l:                                             ; preds = %bb.k
  %i.ac = invoke noundef nonnull align 8 dereferenceable(88) ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.m unwind label %.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb18ExpressionExecutor14EvaluateScalarERNS_13ClientContextERKNS_10ExpressionEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(88) %i.ac, i1 noundef zeroext false)
          to label %bb.n unwind label %.thread

bb.n:                                             ; preds = %bb.m
  %i.ad = load i8, ptr %13, align 8, !tbaa !167
  %i.ae = icmp eq i8 %i.ad, 101
  br i1 %i.ae, label %bb.o, label %bb.bo

bb.o:                                             ; preds = %bb.n
  %i.af = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb9ListValue11GetChildrenERKNS_5ValueE(ptr noundef nonnull align 8 dereferenceable(64) %13)
          to label %bb.p unwind label %bb.cd      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !10457 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !10457 ; 2 uses
  %i.aj = icmp eq ptr %i.ag, %i.ai
  br i1 %i.aj, label %bb.q, label %.preheader167

.preheader167:                                    ; preds = %bb.p
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %21, i64 16 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 4 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %21, i64 32 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br label %bb.v

bb.q:                                             ; preds = %bb.p
  %i.au = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull @.str.89, ptr noundef nonnull align 1 dereferenceable(1) %15)
          to label %bb.r unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread

bb.r:                                             ; preds = %bb.q
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(32) %i.av)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.au, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ch unwind label %bb.t

.thread:                                          ; preds = %bb.k, %bb.l, %bb.m
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread: ; preds = %bb.q
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.thread273.sink.split

bb.t:                                             ; preds = %bb.s, %bb.r
  %.045 = phi i1 [ false, %bb.s ], [ true, %bb.r ] ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %14, align 8, !tbaa !87   ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.az) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.045, label %.thread273.sink.split, label %.thread273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70: ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br i1 %.045, label %.thread273.sink.split, label %.thread273

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  invoke void @_ZN6duckdb8Function13EraseArgumentERNS_14SimpleFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS5_ELb1EEELb1ESaIS8_EEEm(ptr noundef nonnull align 8 dereferenceable(208) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0)
          to label %bb.bs unwind label %bb.cd

bb.v:                                             ; preds = %.preheader167, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94
  %i.bc = phi ptr [ null, %.preheader167 ], [ %i.dz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 3 uses
  %i.bd = phi ptr [ null, %.preheader167 ], [ %i.ea, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 3 uses
  %.sroa.0141.0191 = phi ptr [ %i.ag, %.preheader167 ], [ %i.fk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 3 uses
  %i.be = phi ptr [ null, %.preheader167 ], [ %i.eb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94 ] ; 16 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.0141.0191, i64 24
  %i.bg = load i8, ptr %i.bf, align 8, !tbaa !164, !range !165, !noundef !166
  %i.bh = trunc nuw i8 %i.bg to i1
  br i1 %i.bh, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.bi = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull @.str.90, ptr noundef nonnull align 1 dereferenceable(1) %17)
          to label %bb.x unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread

bb.x:                                             ; preds = %bb.w
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  invoke void @__cxa_throw(ptr nonnull %i.bi, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ch unwind label %bb.z

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread: ; preds = %bb.w
  %i.bk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br label %bb.aa

bb.z:                                             ; preds = %bb.y, %bb.x
  %.043 = phi i1 [ false, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.bl = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.bm = load ptr, ptr %16, align 8, !tbaa !87   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %16, i64 16
  %i.bo = icmp eq ptr %i.bm, %i.bn
  br i1 %i.bo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.bm) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.043, label %bb.aa, label %bb.ce

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #25
  br i1 %.043, label %bb.aa, label %bb.ce

bb.aa:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %.pn58152 = phi { ptr, i32 } [ %i.bk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73.thread ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ]
  call void @__cxa_free_exception(ptr %i.bi) #25
  br label %bb.ce

bb.ab:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  invoke void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.0141.0191)
          to label %bb.ac unwind label %bb.aw

bb.ac:                                            ; preds = %bb.ab
  %i.bp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 1)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.bq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.bp)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  %i.bs = invoke noundef zeroext i8 @_ZN6duckdb20GetDatePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 6 uses

.noexc:                                           ; preds = %bb.ae
  %i.bt = load i8, ptr %i.br, align 8, !tbaa !167
  switch i8 %i.bt, label %bb.ai [
    i8 19, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 32, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 15, label %bb.af
    i8 16, label %bb.ag
    i8 35, label %bb.ag
    i8 34, label %bb.ag
    i8 27, label %bb.ah
  ]

bb.af:                                            ; preds = %.noexc
  switch i8 %i.bs, label %bb.ai [
    i8 0, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 1, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 2, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 3, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 4, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 5, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 11, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 12, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 14, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 13, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 15, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 16, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 17, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 18, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 22, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 23, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
  ]

bb.ag:                                            ; preds = %.noexc, %.noexc, %.noexc
  switch i8 %i.bs, label %bb.ai [
    i8 6, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 7, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 8, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 9, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 10, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 22, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 19, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 20, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 21, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
  ]

bb.ah:                                            ; preds = %.noexc
  switch i8 %i.bs, label %bb.ai [
    i8 0, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 1, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 2, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 3, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 4, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 15, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 5, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 6, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 7, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 8, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 9, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 10, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
    i8 22, label %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
  ]

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %.noexc
  %i.bu = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull @.str.92, ptr noundef nonnull align 1 dereferenceable(1) %6)
          to label %bb.aj unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread.i

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  %i.bv = load i8, ptr %i.br, align 8, !tbaa !167
  invoke void @_ZN6duckdb8EnumUtil8ToStringINS_13LogicalTypeIdEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, i8 noundef zeroext %i.bv)
          to label %bb.ak unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.ak:                                            ; preds = %bb.aj
  invoke void @_ZN6duckdb23NotImplementedExceptionC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %bb.ak
  invoke void @__cxa_throw(ptr nonnull %i.bu, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ao unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread.i: ; preds = %bb.ai
  %i.bw = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.0.i = phi i1 [ false, %bb.al ], [ true, %bb.ak ] ; 2 uses
  %i.bx = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.by = load ptr, ptr %7, align 8, !tbaa !87    ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ca = icmp eq ptr %i.by, %i.bz
  br i1 %i.ca, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.by) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.am, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cb = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cd = icmp eq ptr %i.cb, %i.cc
  br i1 %i.cd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.aj
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.cf = load ptr, ptr %5, align 8, !tbaa !87    ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ch = icmp eq ptr %i.cf, %i.cg
  br i1 %i.ch, label %.sink.split.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.thread.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  call void @_ZdlPv(ptr noundef %i.cf) #27
  br label %.sink.split.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.cb) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.an, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br i1 %.0.i, label %bb.an, label %.body

.sink.split.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread.i
  %.pn.pn27.ph.i = phi { ptr, i32 } [ %i.ce, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.thread.i ], [ %i.bw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.thread.i ], [ %i.ce, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.an

bb.an:                                            ; preds = %.sink.split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i
  %.pn.pn27.i = phi { ptr, i32 } [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i ], [ %.pn.pn27.ph.i, %.sink.split.i ]
  call void @__cxa_free_exception(ptr %i.bu) #25
  br label %.body

bb.ao:                                            ; preds = %bb.al
  unreachable

_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit: ; preds = %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ah, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.ag, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %bb.af, %.noexc, %.noexc
  %i.ci = load i64, ptr %i.ak, align 8, !tbaa !271
  %.not.not.i.i = icmp eq i64 %i.ci, 0
  br i1 %.not.not.i.i, label %.preheader, label %bb.aq

.preheader:                                       ; preds = %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit, %.noexc74
  %.sroa.06.0.in.i.i = phi ptr [ %.sroa.06.0.i.i, %.noexc74 ], [ %i.y, %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit ]
  %.sroa.06.0.i.i = load ptr, ptr %.sroa.06.0.in.i.i, align 8, !tbaa !272 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.06.0.i.i, null
  br i1 %.not.i.i, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, label %bb.ap

bb.ap:                                            ; preds = %.preheader
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i, i64 8
  %i.ck = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(40) %i.cj)
          to label %.noexc74 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc74:                                         ; preds = %bb.ap
  br i1 %i.ck, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread154, label %.preheader, !llvm.loop !10449

bb.aq:                                            ; preds = %_ZN6duckdb12_GLOBAL__N_124GetDateTypePartSpecifierERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11LogicalTypeE.exit
  %i.cl = invoke noundef i64 @_ZN6duckdb10StringUtil6CIHashERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %.noexc75 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc75:                                         ; preds = %bb.aq
  %i.cm = load i64, ptr %i.x, align 8, !tbaa !270
  %i.cn = urem i64 %i.cl, %i.cm                   ; 2 uses
  %i.co = load ptr, ptr %10, align 8, !tbaa !269
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !273 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.cq, null
  br i1 %.not.i.i.i.i, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, label %bb.ar

bb.ar:                                            ; preds = %.noexc75
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !272 ; 2 uses
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cr, i64 40
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !tbaa !275
  br label %bb.as

bb.as:                                            ; preds = %bb.at, %bb.ar
  %i.cs = phi i64 [ %.pre.i.i.i.i, %bb.ar ], [ %i.cz, %bb.at ]
  %.015.i.i.i.i = phi ptr [ %i.cq, %bb.ar ], [ %.0.i.i.i.i, %bb.at ]
  %.0.i.i.i.i = phi ptr [ %i.cr, %bb.ar ], [ %i.cw, %bb.at ] ; 3 uses
  %i.ct = icmp eq i64 %i.cl, %i.cs
  br i1 %i.ct, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i: ; preds = %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 8
  %i.cv = invoke noundef zeroext i1 @_ZN6duckdb10StringUtil8CIEqualsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(40) %i.cu)
          to label %.noexc76 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc76:                                         ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i
  br i1 %i.cv, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit, label %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i

_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i: ; preds = %.noexc76, %bb.as
  %i.cw = load ptr, ptr %.0.i.i.i.i, align 8, !tbaa !272 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.cw, null
  br i1 %.not18.i.i.i.i, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, label %bb.at

bb.at:                                            ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i
  %i.cx = load i64, ptr %i.x, align 8, !tbaa !270
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 40
  %i.cz = load i64, ptr %i.cy, align 8, !tbaa !275 ; 2 uses
  %i.da = urem i64 %i.cz, %i.cx
  %.not19.i.i.i.i = icmp eq i64 %i.da, %i.cn
  br i1 %.not19.i.i.i.i, label %bb.as, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, !llvm.loop !10450

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit: ; preds = %.noexc76
  %i.db = load ptr, ptr %.015.i.i.i.i, align 8, !tbaa !272
  %.not162 = icmp eq ptr %i.db, null
  br i1 %.not162, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread154

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread154: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit, %.noexc74
  %i.dc = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull @.str.91, ptr noundef nonnull align 1 dereferenceable(1) %20)
          to label %bb.au unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread

bb.au:                                            ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread154
  %i.dd = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERS7_EEES9_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %i.dd)
          to label %bb.av unwind label %bb.ax

bb.av:                                            ; preds = %bb.au
  invoke void @__cxa_throw(ptr nonnull %i.dc, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ch unwind label %bb.ax

bb.aw:                                            ; preds = %bb.ab
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.i.i.i.i, %bb.ap, %bb.ac, %bb.ad, %bb.ae, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread, %_ZNKSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.aq, %bb.bc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread: ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread154
  %i.df = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av, %bb.au
  %.041 = phi i1 [ false, %bb.av ], [ true, %bb.au ] ; 2 uses
  %i.dg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.dh = load ptr, ptr %19, align 8, !tbaa !87   ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dj = icmp eq ptr %i.dh, %i.di
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.dh) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %.041, label %bb.ay, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  br i1 %.041, label %bb.ay, label %.body

bb.ay:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79
  %.pn54158 = phi { ptr, i32 } [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79.thread ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ]
  call void @__cxa_free_exception(ptr %i.dc) #25
  br label %.body

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread: ; preds = %_ZNKSt8__detail15_Hashtable_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES6_NS_9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS8_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_17_Hashtable_traitsILb1ELb1ELb1EEEE9_M_equalsERKS6_mRKNS_16_Hash_node_valueIS6_Lb1EEE.exit.thread.i.i.i.i, %bb.at, %.preheader, %.noexc75, %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %10, ptr %4, align 8, !tbaa !10458
  %i.dk = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SK_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 0 uses

bb.az:                                            ; preds = %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EE4findERKS5_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %.not.i = icmp eq ptr %i.bd, %i.bc
  br i1 %.not.i, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store i8 %i.bs, ptr %i.bd, align 1, !tbaa !260
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bd, i64 1 ; 2 uses
  store ptr %i.dl, ptr %i.al, align 8, !tbaa !278
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit

bb.bb:                                            ; preds = %bb.az
  %i.dm = ptrtoint ptr %i.bc to i64
  %i.dn = ptrtoint ptr %i.be to i64
  %i.do = sub i64 %i.dm, %i.dn                    ; 7 uses
  %i.dp = icmp eq i64 %i.do, 9223372036854775807
  br i1 %i.dp, label %bb.bc, label %_ZNKSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.bc:                                            ; preds = %bb.bb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.13) #29
          to label %.noexc81 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc81:                                         ; preds = %bb.bc
  unreachable

_ZNKSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.bb
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.do, i64 1)
  %i.dq = add i64 %.sroa.speculated.i.i.i, %i.do  ; 2 uses
  %i.dr = icmp ult i64 %i.dq, %i.do
  %i.ds = call i64 @llvm.umin.i64(i64 %i.dq, i64 9223372036854775807)
  %i.dt = select i1 %i.dr, i64 9223372036854775807, i64 %i.ds ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.dt, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dt) #28
          to label %.noexc82 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 5 uses

.noexc82:                                         ; preds = %_ZNKSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.do ; 2 uses
  store i8 %i.bs, ptr %i.dv, align 1, !tbaa !260
  %i.dw = icmp sgt i64 %i.do, 0
  br i1 %i.dw, label %bb.bd, label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.bd:                                            ; preds = %.noexc82
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.du, ptr align 1 %i.be, i64 %i.do, i1 false)
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.bd, %.noexc82
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dv, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.be, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.be

bb.be:                                            ; preds = %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.be) #27
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.be, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.du, ptr %12, align 8, !tbaa !279
  store ptr %i.dx, ptr %i.al, align 8, !tbaa !278
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dt ; 2 uses
  store ptr %i.dy, ptr %i.am, align 8, !tbaa !280
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit

_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.ba
  %i.dz = phi ptr [ %i.dy, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.bc, %bb.ba ]
  %i.ea = phi ptr [ %i.dx, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.dl, %bb.ba ]
  %i.eb = phi ptr [ %i.du, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.be, %bb.ba ] ; 12 uses
  %i.ec = icmp ult i8 %i.bs, 22
  %i.ed = select i1 %i.ec, i8 14, i8 23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !10459)
  store ptr %i.an, ptr %21, align 8, !tbaa !85, !alias.scope !10459
  %i.ee = load ptr, ptr %18, align 8, !tbaa !87, !noalias !10459 ; 2 uses
  %i.ef = load i64, ptr %i.ao, align 8, !tbaa !86, !noalias !10459 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25, !noalias !10459
  store i64 %i.ef, ptr %i.a, align 8, !tbaa !76, !noalias !10459
  %i.eg = icmp ugt i64 %i.ef, 15
  br i1 %i.eg, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit
  %i.eh = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %21, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc83 unwind label %bb.bm  ; 2 uses

.noexc83:                                         ; preds = %.noexc.i.i.i
  store ptr %i.eh, ptr %21, align 8, !tbaa !87, !alias.scope !10459
  %i.ei = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !10459
  store i64 %i.ei, ptr %i.an, align 8, !tbaa !83, !alias.scope !10459
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc83, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit
  %i.ej = phi ptr [ %i.eh, %.noexc83 ], [ %i.an, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EE12emplace_backIJRKS1_EEEvDpOT_.exit ] ; 2 uses
  switch i64 %i.ef, label %bb.bg [
    i64 1, label %bb.bf
    i64 0, label %bb.bh
  ]

bb.bf:                                            ; preds = %._crit_edge.i.i.i.i
  %i.ek = load i8, ptr %i.ee, align 1, !tbaa !83
  store i8 %i.ek, ptr %i.ej, align 1, !tbaa !83
  br label %bb.bh

bb.bg:                                            ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ej, ptr align 1 %i.ee, i64 %i.ef, i1 false)
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf, %._crit_edge.i.i.i.i
  %i.el = load i64, ptr %i.a, align 8, !tbaa !76, !noalias !10459 ; 2 uses
  store i64 %i.el, ptr %i.ap, align 8, !tbaa !86, !alias.scope !10459
  %i.em = load ptr, ptr %21, align 8, !tbaa !87, !alias.scope !10459
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 %i.el
  store i8 0, ptr %i.en, align 1, !tbaa !83
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25, !noalias !10459
  store i8 %i.ed, ptr %i.aq, align 8, !tbaa !10461, !alias.scope !10459
  %i.eo = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 8 uses
  %i.ep = load ptr, ptr %i.as, align 8, !tbaa !196
  %.not.i84 = icmp eq ptr %i.eo, %i.ep
  br i1 %.not.i84, label %bb.bl, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eq = getelementptr inbounds nuw i8, ptr %i.eo, i64 16 ; 4 uses
  store ptr %i.eq, ptr %i.eo, align 8, !tbaa !85
  %i.er = load ptr, ptr %21, align 8, !tbaa !87   ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.an
  br i1 %i.es, label %bb.bj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85

bb.bj:                                            ; preds = %bb.bi
  %i.et = load i64, ptr %i.ap, align 8, !tbaa !86 ; 3 uses
  %i.eu = icmp ult i64 %i.et, 16
  call void @llvm.assume(i1 %i.eu)
  %i.ev = add nuw nsw i64 %i.et, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.eq, ptr noundef nonnull align 8 dereferenceable(1) %i.an, i64 %i.ev, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85: ; preds = %bb.bi
  store ptr %i.er, ptr %i.eo, align 8, !tbaa !87
  %i.ew = load i64, ptr %i.an, align 8, !tbaa !83
  store i64 %i.ew, ptr %i.eq, align 8, !tbaa !83
  %.pre = load i64, ptr %i.ap, align 8, !tbaa !86
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85, %bb.bj
  %i.ex = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85 ], [ %i.et, %bb.bj ]
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  store i64 %i.ex, ptr %i.ey, align 8, !tbaa !86
  store ptr %i.an, ptr %21, align 8, !tbaa !87
  store i64 0, ptr %i.ap, align 8, !tbaa !86
  store i8 0, ptr %i.an, align 8, !tbaa !83
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 32
  %i.fa = load i8, ptr %i.aq, align 8, !tbaa !281
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %i.ez, i8 noundef zeroext %i.fa)
          to label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IS5_NS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E.exit.i unwind label %bb.bk

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.fb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fc = load ptr, ptr %i.eo, align 8, !tbaa !87 ; 2 uses
  %i.fd = icmp eq ptr %i.fc, %i.eq
  br i1 %i.fd, label %.body86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.bk
  call void @_ZdlPv(ptr noundef %i.fc) #27
  br label %.body86

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IS5_NS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i
  %i.fe = load ptr, ptr %i.ar, align 8, !tbaa !189
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 56
  store ptr %i.ff, ptr %i.ar, align 8, !tbaa !189
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJS0_IS6_NS7_13LogicalTypeIdEEEEEvDpOT_.exit

bb.bl:                                            ; preds = %bb.bh
  invoke void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE17_M_realloc_insertIJS0_IS6_NS7_13LogicalTypeIdEEEEEvN9__gnu_cxx17__normal_iteratorIPS9_SB_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.eo, ptr noundef nonnull align 8 dereferenceable(33) %21)
          to label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJS0_IS6_NS7_13LogicalTypeIdEEEEEvDpOT_.exit unwind label %bb.bn

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJS0_IS6_NS7_13LogicalTypeIdEEEEEvDpOT_.exit: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEC2IS5_NS6_13LogicalTypeIdETnNSt9enable_ifIXaaclsr6_PCCFPIT_T0_EE22_MoveConstructiblePairISC_SD_EEclsr6_PCCFPISC_SD_EE30_ImplicitlyMoveConvertiblePairISC_SD_EEEbE4typeELb1EEEOS_ISC_SD_E.exit.i, %bb.bl
  %i.fg = load ptr, ptr %21, align 8, !tbaa !87   ; 2 uses
  %i.fh = icmp eq ptr %i.fg, %i.an
  br i1 %i.fh, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJS0_IS6_NS7_13LogicalTypeIdEEEEEvDpOT_.exit
  call void @_ZdlPv(ptr noundef %i.fg) #27
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit: ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EE12emplace_backIJS0_IS6_NS7_13LogicalTypeIdEEEEEvDpOT_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  %i.fi = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.fj = icmp eq ptr %i.fi, %i.at
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.fi) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit94: ; preds = %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i92
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  %i.fk = getelementptr inbounds nuw i8, ptr %.sroa.0141.0191, i64 64 ; 2 uses
  %.not = icmp eq ptr %i.fk, %i.ai
  br i1 %.not, label %bb.u, label %bb.v

bb.bm:                                            ; preds = %.noexc.i.i.i
  %i.fl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98

bb.bn:                                            ; preds = %bb.bl
  %i.fm = landingpad { ptr, i32 }
          cleanup
  br label %.body86

.body86:                                          ; preds = %bb.bk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.bn
  %eh.lpad-body87 = phi { ptr, i32 } [ %i.fm, %bb.bn ], [ %i.fb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.fb, %bb.bk ] ; 2 uses
  %i.fn = load ptr, ptr %21, align 8, !tbaa !87   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.an
  br i1 %i.fo, label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95: ; preds = %.body86
  call void @_ZdlPv(ptr noundef %i.fn) #27
  br label %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98

_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98: ; preds = %.body86, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95, %bb.bm
  %.pn52 = phi { ptr, i32 } [ %i.fl, %bb.bm ], [ %eh.lpad-body87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i95 ], [ %eh.lpad-body87, %.body86 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #25
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77, %bb.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79, %bb.ay, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98
  %.pre217220 = phi ptr [ %i.be, %bb.ay ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %i.eb, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %i.be, %bb.an ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i ], [ %i.be, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %.pn54.pn = phi { ptr, i32 } [ %.pn54158, %bb.ay ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit79 ], [ %.pn52, %_ZNSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb13LogicalTypeIdEED2Ev.exit98 ], [ %i.bx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21.i ], [ %i.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i77 ], [ %.pn.pn27.i, %bb.an ], [ %i.bx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  %i.fp = load ptr, ptr %18, align 8, !tbaa !87   ; 2 uses
  %i.fq = icmp eq ptr %i.fp, %i.at
  br i1 %i.fq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99: ; preds = %.body
  call void @_ZdlPv(ptr noundef %i.fp) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99, %bb.aw
  %.pre217219 = phi ptr [ %i.be, %bb.aw ], [ %.pre217220, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pre217220, %.body ]
  %.pn54.pn.pn = phi { ptr, i32 } [ %i.de, %bb.aw ], [ %.pn54.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99 ], [ %.pn54.pn, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.ce

bb.bo:                                            ; preds = %bb.n
  %i.fr = call ptr @__cxa_allocate_exception(i64 16) #25 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull @.str.88, ptr noundef nonnull align 1 dereferenceable(1) %23)
          to label %bb.bp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread

bb.bp:                                            ; preds = %bb.bo
  %i.fs = getelementptr inbounds nuw i8, ptr %2, i64 8
  invoke void @_ZN6duckdb15BinderExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.fr, ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(32) %i.fs)
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %bb.bp
  invoke void @__cxa_throw(ptr nonnull %i.fr, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #29
          to label %bb.ch unwind label %bb.br

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread: ; preds = %bb.bo
  %i.ft = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br label %.thread273.sink.split

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0 = phi i1 [ false, %bb.bq ], [ true, %bb.bp ] ; 2 uses
  %i.fu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fv = load ptr, ptr %22, align 8, !tbaa !87   ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %22, i64 16
  %i.fx = icmp eq ptr %i.fv, %i.fw
  br i1 %i.fx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102: ; preds = %bb.br
  call void @_ZdlPv(ptr noundef %i.fv) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %.thread273.sink.split, label %.thread273

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104: ; preds = %bb.br
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #25
  br i1 %.0, label %.thread273.sink.split, label %.thread273

bb.bs:                                            ; preds = %bb.u
  %i.fy = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 3 uses
  %i.fz = load ptr, ptr %11, align 8, !tbaa !188  ; 3 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb                    ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %25, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.fy, %i.fz
  br i1 %.not.i.i.i.i.i, label %.noexc108, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.gd = sdiv exact i64 %i.gc, 56
  %i.ge = icmp ugt i64 %i.gd, 164703072086692425
  br i1 %i.ge, label %.noexc.i.i.i106, label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !84

.noexc.i.i.i106:                                  ; preds = %bb.bt
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #29
          to label %.noexc107 unwind label %bb.cd

.noexc107:                                        ; preds = %.noexc.i.i.i106
  unreachable

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.gf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.gc) #28
          to label %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge unwind label %bb.cd

_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge: ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i
  %.pre215 = load ptr, ptr %11, align 8, !tbaa !10462
  %.pre216 = load ptr, ptr %i.ar, align 8, !tbaa !10462
  br label %.noexc108

.noexc108:                                        ; preds = %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge, %bb.bs
  %i.gg = phi ptr [ %i.fy, %bb.bs ], [ %.pre216, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge ]
  %i.gh = phi ptr [ %i.fz, %bb.bs ], [ %.pre215, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge ]
  %i.gi = phi ptr [ null, %bb.bs ], [ %i.gf, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i..noexc108_crit_edge ] ; 4 uses
  store ptr %i.gi, ptr %25, align 8, !tbaa !188
  %i.gj = getelementptr inbounds nuw i8, ptr %25, i64 8 ; 3 uses
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !189
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 %i.gc
  %i.gl = getelementptr inbounds nuw i8, ptr %25, i64 16
  store ptr %i.gk, ptr %i.gl, align 8, !tbaa !196
  %i.gm = invoke noundef ptr @_ZSt16__do_uninit_copyIN9__gnu_cxx17__normal_iteratorIPKSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESt6vectorISB_SaISB_EEEEPSB_ET0_T_SK_SJ_(ptr %i.gh, ptr %i.gg, ptr noundef %i.gi)
          to label %bb.bw unwind label %bb.bu

bb.bu:                                            ; preds = %.noexc108
  %i.gn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.go = load ptr, ptr %25, align 8, !tbaa !188  ; 2 uses
  %.not.i.i.i.i105 = icmp eq ptr %i.go, null
  br i1 %.not.i.i.i.i105, label %bb.ce, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  call void @_ZdlPv(ptr noundef nonnull %i.go) #27
  br label %bb.ce

bb.bw:                                            ; preds = %.noexc108
  store ptr %i.gm, ptr %i.gj, align 8, !tbaa !189
  invoke void @_ZN6duckdb11LogicalType6STRUCTENS_6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES0_ELb1ESaIS9_EEE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %24, ptr noundef nonnull %25)
          to label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i unwind label %bb.cc

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i: ; preds = %bb.bw
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 2 uses
  %i.gq = load i8, ptr %24, align 8, !tbaa !167
  store i8 %i.gq, ptr %i.gp, align 8, !tbaa !167
  %i.gr = getelementptr inbounds nuw i8, ptr %24, i64 1
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !195
  %i.gt = getelementptr inbounds nuw i8, ptr %2, i64 209
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !195
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %24, i64 8 ; 2 uses
  %i.gw = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !42
  %i.gx = load <2 x ptr>, ptr %i.gu, align 8, !tbaa !42
  store <2 x ptr> %i.gw, ptr %i.gu, align 8, !tbaa !42
  store <2 x ptr> %i.gx, ptr %i.gv, align 8, !tbaa !42
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %24) #25
  %i.gy = load ptr, ptr %25, align 8, !tbaa !188  ; 3 uses
  %i.gz = load ptr, ptr %i.gj, align 8, !tbaa !189 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.gy, %i.gz
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.he, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i ], [ %i.gy, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.ha) #25
  %i.hb = load ptr, ptr %.05.i.i.i, align 8, !tbaa !87 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.hd = icmp eq ptr %i.hb, %i.hc
  br i1 %i.hd, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.hb) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56 ; 2 uses
  %.not.i.i.i111 = icmp eq ptr %i.he, %i.gz
  br i1 %.not.i.i.i111, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %25, align 8, !tbaa !188
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i
  %i.hf = phi ptr [ %.pr.i, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i ], [ %i.gy, %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEaSEOS2_.exit.i.i ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.hf, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit, label %bb.bx

bb.bx:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.hf) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i, %bb.bx
  %i.hg = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc112 unwind label %bb.cd ; 3 uses

.noexc112:                                        ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_114StructDatePart8BindDataC2ERKNS_11LogicalTypeERKNS_6vectorINS_17DatePartSpecifierELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.hg, ptr noundef nonnull align 8 dereferenceable(24) %i.gp, ptr noundef nonnull readonly align 8 dereferenceable(24) %12)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit unwind label %bb.by, !noalias !10463

bb.by:                                            ; preds = %.noexc112
  %i.hh = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.hg) #27, !noalias !10463
  br label %bb.ce

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc112
  store ptr %i.hg, ptr %0, align 8, !tbaa !157
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not.i.i.i116 = icmp eq ptr %i.eb, null
  br i1 %.not.i.i.i116, label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit, label %bb.bz

bb.bz:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.eb) #27
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  %i.hi = load ptr, ptr %11, align 8, !tbaa !188  ; 3 uses
  %i.hj = load ptr, ptr %i.ar, align 8, !tbaa !189 ; 2 uses
  %.not4.i.i.i117 = icmp eq ptr %i.hi, %i.hj
  br i1 %.not4.i.i.i117, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i125, label %.lr.ph.i.i.i118

.lr.ph.i.i.i118:                                  ; preds = %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121
  %.05.i.i.i119 = phi ptr [ %i.ho, %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121 ], [ %i.hi, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit ] ; 4 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 32
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.hk) #25
  %i.hl = load ptr, ptr %.05.i.i.i119, align 8, !tbaa !87 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 16
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120: ; preds = %.lr.ph.i.i.i118
  call void @_ZdlPv(ptr noundef %i.hl) #27
  br label %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121

_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121: ; preds = %.lr.ph.i.i.i118, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i120
  %i.ho = getelementptr inbounds nuw i8, ptr %.05.i.i.i119, i64 56 ; 2 uses
  %.not.i.i.i122 = icmp eq ptr %i.ho, %i.hj
  br i1 %.not.i.i.i122, label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i123, label %.lr.ph.i.i.i118, !llvm.loop !3

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i123: ; preds = %_ZSt8_DestroyISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEEvPT_.exit.i.i.i121
  %.pr.i124 = load ptr, ptr %11, align 8, !tbaa !188
  br label %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i125

_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i125: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i123, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit
  %i.hp = phi ptr [ %.pr.i124, %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exitthread-pre-split.i123 ], [ %i.hi, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i126 = icmp eq ptr %i.hp, null
  br i1 %.not.i.i1.i126, label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128, label %bb.ca

bb.ca:                                            ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i125
  call void @_ZdlPv(ptr noundef nonnull %i.hp) #27
  br label %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128

_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128: ; preds = %_ZSt8_DestroyIPSt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEES9_EvT_SB_RSaIT0_E.exit.i125, %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  %i.hq = load ptr, ptr %i.y, align 8, !tbaa !282 ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.hq, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.hr, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i ], [ %i.hq, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128 ] ; 4 uses
  %i.hr = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !272 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 8
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !87 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i, i64 24
  %i.hv = icmp eq ptr %i.ht, %i.hu
  br i1 %i.hv, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i129

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i129: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.ht) #27
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i129
  call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #27
  %.not.i.i.i.i130 = icmp eq ptr %i.hr, null
  br i1 %.not.i.i.i.i130, label %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !29

_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1EEEEE18_M_deallocate_nodeEPS8_.exit.i.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit128
  %i.hw = load ptr, ptr %10, align 8, !tbaa !269
  %i.hx = load i64, ptr %i.x, align 8, !tbaa !270
  %i.hy = shl i64 %i.hx, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.hw, i8 0, i64 %i.hy, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  %i.hz = load ptr, ptr %10, align 8, !tbaa !269  ; 2 uses
  %i.ia = icmp eq ptr %i.hz, %i.w
  br i1 %i.ia, label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev.exit, label %bb.cb

bb.cb:                                            ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i
  call void @_ZdlPv(ptr noundef %i.hz) #27
  br label %_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev.exit

_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev.exit: ; preds = %_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityEN6duckdb29CaseInsensitiveStringEqualityENS9_33CaseInsensitiveStringHashFunctionENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE5clearEv.exit.i.i, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  ret void

bb.cc:                                            ; preds = %bb.bw
  %i.ib = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %25) #25
  br label %bb.ce

bb.cd:                                            ; preds = %bb.o, %bb.u, %.noexc.i.i.i106, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit
  %.pre217221 = phi ptr [ null, %bb.o ], [ %i.eb, %bb.u ], [ %i.eb, %.noexc.i.i.i106 ], [ %i.eb, %_ZNSt15__new_allocatorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEEE8allocateEmPKv.exit.i.i.i.i.i ], [ %i.eb, %_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev.exit ]
  %i.ic = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.thread273.sink.split:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68
  %.sink = phi ptr [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.au, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.au, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.fr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  %.pn61.pn.pn.ph.ph = phi { ptr, i32 } [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70.thread ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.ft, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.thread ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ]
  call void @__cxa_free_exception(ptr %.sink) #25
  br label %.thread273

.thread273:                                       ; preds = %.thread273.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102
  %.pn61.pn.pn.ph = phi { ptr, i32 } [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102 ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit70 ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i68 ], [ %i.fu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104 ], [ %.pn61.pn.pn.ph.ph, %.thread273.sink.split ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133

bb.ce:                                            ; preds = %bb.cc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.bv, %bb.bu, %bb.by, %bb.cd
  %.pre217 = phi ptr [ %i.be, %bb.aa ], [ %i.eb, %bb.bu ], [ %i.eb, %bb.cc ], [ %i.be, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pre217219, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.be, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.eb, %bb.bv ], [ %i.eb, %bb.by ], [ %.pre217221, %bb.cd ] ; 2 uses
  %.pn61.pn.pn = phi { ptr, i32 } [ %.pn58152, %bb.aa ], [ %i.gn, %bb.bu ], [ %i.ib, %bb.cc ], [ %i.bl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73 ], [ %.pn54.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %i.bl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i71 ], [ %i.gn, %bb.bv ], [ %i.hh, %bb.by ], [ %i.ic, %bb.cd ] ; 2 uses
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %13) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #25
  %.not.i.i.i132 = icmp eq ptr %.pre217, null
  br i1 %.not.i.i.i132, label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  call void @_ZdlPv(ptr noundef nonnull %.pre217) #27
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133

_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133: ; preds = %.thread273, %.thread, %bb.ce, %bb.cf
  %.pn61.pn.pn.pn272 = phi { ptr, i32 } [ %i.aw, %.thread ], [ %.pn61.pn.pn, %bb.ce ], [ %.pn61.pn.pn, %bb.cf ], [ %.pn61.pn.pn.ph, %.thread273 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #25
  call void @_ZNSt6vectorISt4pairINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb11LogicalTypeEESaIS9_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %11) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  call void @_ZNSt13unordered_setINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %10) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #25
  br label %bb.cg

bb.cg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.j, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133, %bb.d
  %.pn66 = phi { ptr, i32 } [ %i.i, %bb.d ], [ %.pn61.pn.pn.pn272, %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit133 ], [ %.pn146, %bb.j ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn66

bb.ch:                                            ; preds = %bb.bq, %bb.av, %bb.y, %bb.s, %bb.h
  unreachable
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_114StructDatePart17SerializeFunctionERNS_10SerializerENS_12optional_ptrINS_12FunctionDataELb1EEERKNS_14ScalarFunctionE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 {
bb.a:
  %3 = alloca %"class.duckdb::optional_ptr.246", align 8 ; 3 uses
  store ptr %1, ptr %3, align 8
  call void @_ZNK6duckdb12optional_ptrINS_12FunctionDataELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = load ptr, ptr %3, align 8, !tbaa !283    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %0, align 8, !tbaa !78
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  call void %i.e(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 100, ptr noundef nonnull @.str.93), !inline_history !10464
  %i.f = load ptr, ptr %0, align 8, !tbaa !78
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.h = load ptr, ptr %i.g, align 8
  call void %i.h(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !10465
  call void @_ZNK6duckdb11LogicalType9SerializeERNS_10SerializerE(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(680) %0)
  %i.i = load ptr, ptr %0, align 8, !tbaa !78
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = load ptr, ptr %i.j, align 8
  call void %i.k(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !10465
  %i.l = load ptr, ptr %0, align 8, !tbaa !78
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !10464
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %i.p = load ptr, ptr %0, align 8, !tbaa !78
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dereferenceable(680) %0, i16 noundef zeroext 101, ptr noundef nonnull @.str.94), !inline_history !10466
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !278
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !279
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = load ptr, ptr %0, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 64
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(680) %0, i64 noundef %i.x), !inline_history !10467
  %i.ab = load ptr, ptr %i.o, align 8, !tbaa !42  ; 2 uses
  %i.ac = load ptr, ptr %i.s, align 8, !tbaa !42  ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ab, %i.ac
  br i1 %.not9.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i, %.lr.ph.i.i
  %.sroa.06.010.i.i = phi ptr [ %i.ab, %.lr.ph.i.i ], [ %i.ao, %_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i ] ; 2 uses
  %i.ae = load i8, ptr %.sroa.06.010.i.i, align 1, !tbaa !260 ; 2 uses
  %i.af = load i8, ptr %i.ad, align 8, !tbaa !10472, !range !165, !noundef !166
  %i.ag = trunc nuw i8 %i.af to i1
  br i1 %i.ag, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ah = call noundef ptr @_ZN6duckdb8EnumUtil7ToCharsINS_17DatePartSpecifierEEEPKcT_(i8 noundef zeroext %i.ae)
  %i.ai = load ptr, ptr %0, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 232
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef %i.ah), !inline_history !10468
  br label %_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.al = load ptr, ptr %0, align 8, !tbaa !78
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(680) %0, i8 noundef zeroext %i.ae), !inline_history !10468
  br label %_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i

_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.06.010.i.i, i64 1 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ao, %i.ac
  br i1 %.not.i.i, label %_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEEvtPKcRKT_.exit, label %bb.b

_ZN6duckdb10Serializer13WritePropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEEvtPKcRKT_.exit: ; preds = %_ZN6duckdb10Serializer10WriteValueINS_17DatePartSpecifierEEENSt9enable_ifIXsr3std7is_enumIT_EE5valueEvE4typeES4_.exit.i.i, %bb.a
  %i.ap = load ptr, ptr %0, align 8, !tbaa !78
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.ar = load ptr, ptr %i.aq, align 8
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !10467
  %i.as = load ptr, ptr %0, align 8, !tbaa !78
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8
  call void %i.au(ptr noundef nonnull align 8 dereferenceable(680) %0), !inline_history !10466
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_114StructDatePart19DeserializeFunctionERNS_12DeserializerERNS_14ScalarFunctionE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(632) %1, ptr nofree nonnull readnone align 8 captures(none) %2) #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 8 uses
  %4 = alloca %"class.duckdb::vector.527", align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10484
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !noalias !10484
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 100, ptr noundef nonnull @.str.93), !noalias !10484, !inline_history !10475
  %i.d = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10485
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8, !noalias !10485
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(632) %1), !noalias !10485, !inline_history !10478
  call void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %3, ptr noundef nonnull align 8 dereferenceable(632) %1)
  %i.g = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10485
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i unwind label %common.resume.i

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i: ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10484
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit unwind label %common.resume.i

common.resume:                                    ; preds = %.body, %common.resume.i
  %common.resume.op = phi { ptr, i32 } [ %i.m, %common.resume.i ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

common.resume.i:                                  ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i, %bb.a
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #25
  br label %common.resume

_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit: ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !10486)
  %i.n = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10486
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !noalias !10486
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1, i16 noundef zeroext 101, ptr noundef nonnull @.str.94)
          to label %.noexc unwind label %bb.f, !inline_history !10481

.noexc:                                           ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_11LogicalTypeEEET_tPKc.exit
  invoke void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.527") align 8 %4, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc5 unwind label %bb.f

.noexc5:                                          ; preds = %.noexc
  %i.q = load ptr, ptr %1, align 8, !tbaa !78, !noalias !10486
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load ptr, ptr %i.r, align 8
  invoke void %i.s(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEET_tPKc.exit unwind label %bb.b

bb.b:                                             ; preds = %.noexc5
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.u = load ptr, ptr %4, align 8, !tbaa !279, !alias.scope !10486 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not.i.i.i.i, label %.body, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.u) #27
  br label %.body

_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEET_tPKc.exit: ; preds = %.noexc5
  %i.v = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #28
          to label %.noexc6 unwind label %bb.g    ; 3 uses

.noexc6:                                          ; preds = %_ZN6duckdb12Deserializer12ReadPropertyINS_6vectorINS_17DatePartSpecifierELb1ESaIS3_EEEEET_tPKc.exit
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_114StructDatePart8BindDataC2ERKNS_11LogicalTypeERKNS_6vectorINS_17DatePartSpecifierELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(56) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull readonly align 8 dereferenceable(24) %4)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit unwind label %bb.d, !noalias !10487

bb.d:                                             ; preds = %.noexc6
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.v) #27, !noalias !10487
  br label %.body7

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit: ; preds = %.noexc6
  store ptr %i.v, ptr %0, align 8, !tbaa !157
  %i.x = load ptr, ptr %4, align 8, !tbaa !279    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_114StructDatePart8BindDataESt14default_deleteIS3_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.x) #27
  br label %_ZNSt6vectorIN6duckdb17DatePartSpecifierESaIS1_EED2Ev.exit

end_hunk_0
