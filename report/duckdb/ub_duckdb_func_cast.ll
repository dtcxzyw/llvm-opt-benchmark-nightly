inline.NumInlined: 41041
inline.NumDeleted: 4767
begin_hunk_0_@_ZN6duckdbL17CastExceptionTextINS_8string_tEjEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.e:                                             ; preds = %.noexc13
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
  %i.x = add nuw nsw i64 %i.v, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.q, ptr noundef nonnull align 8 dereferenceable(1) %i.s, i64 %i.x, i1 false)
  br label %bb.f

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9: ; preds = %.noexc13
  store ptr %i.r, ptr %3, align 8, !tbaa !105, !alias.scope !1231
  %i.y = load i64, ptr %i.s, align 8, !tbaa !100
  store i64 %i.y, ptr %i.q, align 8, !tbaa !100, !alias.scope !1231
  %.phi.trans.insert.i10 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.pre.i11 = load i64, ptr %.phi.trans.insert.i10, align 8, !tbaa !109
  br label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9, %bb.e
  %i.z = phi i64 [ %i.v, %bb.e ], [ %.pre.i11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.z, ptr %i.ab, align 8, !tbaa !109, !alias.scope !1231
  store ptr %i.s, ptr %i.p, align 8, !tbaa !105
  store i64 0, ptr %i.aa, align 8, !tbaa !109
  store i8 0, ptr %i.s, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  invoke void @_ZN6duckdb14TypeIdToStringB5cxx11ENS_12PhysicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, i8 noundef zeroext 6)
          to label %bb.g unwind label %bb.k

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.h unwind label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ae = icmp eq ptr %i.ac, %i.ad
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.ac) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.af = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.ag = icmp eq ptr %i.af, %i.q
  br i1 %i.ag, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.af) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i15
  %i.ah = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.ai = icmp eq ptr %i.ah, %i.b
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17
  call void @_ZdlPv(ptr noundef %i.ah) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit17, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i18
  %i.aj = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.al = icmp eq ptr %i.aj, %i.ak
  br i1 %i.al, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20
  call void @_ZdlPv(ptr noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit23: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit20, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i21
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.i:                                             ; preds = %bb.a
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.d
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

bb.k:                                             ; preds = %bb.f
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

bb.l:                                             ; preds = %bb.g
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aq = load ptr, ptr %6, align 8, !tbaa !105   ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.as = icmp eq ptr %i.aq, %i.ar
  br i1 %i.as, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i24 ], [ %i.ap, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  %i.at = load ptr, ptr %3, align 8, !tbaa !105   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.q
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26
  call void @_ZdlPv(ptr noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.an, %bb.j ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i27 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit26 ] ; 2 uses
  %i.av = load ptr, ptr %4, align 8, !tbaa !105   ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.b
  br i1 %i.aw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29
  call void @_ZdlPv(ptr noundef %i.av) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30, %bb.i
  %.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.i ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i30 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit29 ]
  %i.ax = load ptr, ptr %5, align 8, !tbaa !105   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32
  call void @_ZdlPv(ptr noundef %i.ax) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i33
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  resume { ptr, i32 } %.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor15ExecuteStandardINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvRNS_6VectorES8_mPvbNS_14FunctionErrorsE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %2, ptr noundef %3, i1 noundef zeroext %4, i8 noundef zeroext %5) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %8 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %i.b = load i8, ptr %0, align 8, !tbaa !78
  switch i8 %i.b, label %bb.n [
    i8 2, label %bb.b
    i8 0, label %bb.h
    i8 3, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 2)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !93
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !93   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit: ; preds = %bb.b
  %i.i = load i64, ptr %i.h, align 8, !tbaa !13
  %i.j = trunc i64 %i.i to i1
  br i1 %i.j, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext true)
  br label %bb.ak

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread: ; preds = %bb.b, %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit
  tail call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %1, i1 noundef zeroext false)
  %.sroa.0.0.copyload = load i64, ptr %i.f, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !129, !range !130, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.o)
  br i1 %i.p, label %bb.d, label %bb.e, !prof !177

bb.d:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.q = load i8, ptr %i.a, align 1, !tbaa !662, !range !130, !noundef !22
  %9 = trunc nuw i8 %i.q to i1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.e:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %6, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  %i.s = invoke noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 noundef 0, ptr noundef nonnull align 8 dereferenceable(17) %3)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.v = icmp eq ptr %i.t, %i.u
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.t) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.g:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = load ptr, ptr %6, align 8, !tbaa !105    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.g
  call void @_ZdlPv(ptr noundef %i.x) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

common.resume:                                    ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ], [ %.pn.pn, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.g, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.0.i.i60 = phi i1 [ %9, %bb.d ], [ %i.s, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %10 = zext i1 %.0.i.i60 to i8
  store i8 %10, ptr %i.d, align 1, !tbaa !662
  br label %bb.ak

bb.h:                                             ; preds = %bb.a
  tail call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !93
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !93
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noundef %i.ad, ptr noundef %i.ab, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, ptr noundef nonnull align 8 dereferenceable(32) %i.af, ptr noundef %3, i1 noundef zeroext %4)
  br label %bb.ak

bb.i:                                             ; preds = %bb.a
  %i.ag = icmp eq i8 %5, 0
  br i1 %i.ag, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  tail call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.ai = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 152
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !104 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -1
  br i1 %.not.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread: ; preds = %bb.j
  store i64 %i.ak, ptr %7, align 8
  br label %bb.k

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit: ; preds = %bb.j
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.am = tail call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.al)
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.an, align 8, !tbaa !13 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i, ptr %7, align 8
  %.not66 = icmp eq i64 %.sroa.0.0.copyload.i.i, -1
  br i1 %.not66, label %.thread64, label %bb.k

bb.k:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  %i.ao = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %i.ap = shl i64 %i.ao, 1
  %.not = icmp ugt i64 %i.ap, %2
  br i1 %.not, label %.thread64, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.aq = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ah) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 48 ; 3 uses
  %i.as = load i8, ptr %i.ar, align 8, !tbaa !78
  %.not57 = icmp eq i8 %i.as, 0
  br i1 %.not57, label %bb.m, label %.thread64

.thread64:                                        ; preds = %bb.l, %bb.k, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !93
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar)
  %i.av = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !93
  %i.ax = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ar)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb(ptr noundef %i.aw, ptr noundef %i.au, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef %3, i1 noundef zeroext %4)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bb = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ba)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 48
  %i.bd = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %1, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 noundef %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, i64 noundef %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %bb.ak

bb.n:                                             ; preds = %.thread64, %bb.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %0, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.o unwind label %bb.ag

bb.o:                                             ; preds = %bb.n
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 noundef zeroext 0)
          to label %bb.p unwind label %bb.ag

bb.p:                                             ; preds = %bb.o
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.q unwind label %bb.ah

bb.q:                                             ; preds = %bb.p
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !93
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeINS_8string_tEEEvv(ptr noundef nonnull align 8 dereferenceable(73) %8)
          to label %bb.r unwind label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !530
  %i.bi = load ptr, ptr %8, align 8, !tbaa !539
  invoke void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %1)
          to label %bb.s unwind label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 16
  invoke void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noundef %i.bh, ptr noundef %i.bf, i64 noundef %2, ptr noundef %i.bi, ptr noundef nonnull align 8 dereferenceable(32) %i.bk, ptr noundef nonnull align 8 dereferenceable(32) %i.bj, ptr noundef %3, i1 noundef zeroext %4)
          to label %bb.t unwind label %bb.ai

bb.t:                                             ; preds = %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 8 ; 4 uses
  %i.bo = load atomic i64, ptr %i.bn acquire, align 8 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 4294967297
  %i.bq = trunc i64 %i.bo to i32                  ; 2 uses
  br i1 %i.bp, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 0, ptr %i.bn, align 8, !tbaa !136
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  store i32 0, ptr %i.br, align 4, !tbaa !138
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8
  call void %i.bu(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !718
  %i.bv = load ptr, ptr %i.bm, align 8, !tbaa !30
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28, !inline_history !718
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

bb.w:                                             ; preds = %bb.u
  %i.by = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i.i = icmp eq i8 %i.by, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bz = add nsw i32 %i.bq, -1
  store i32 %i.bz, ptr %i.bn, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.w
  %i.ca = atomicrmw volatile add ptr %i.bn, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bq, %bb.x ], [ %i.ca, %bb.y ]
  %i.cb = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.cb, label %bb.z, label %_ZN6duckdb15SelectionVectorD2Ev.exit.i, !prof !140

bb.z:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bm) #28
  br label %_ZN6duckdb15SelectionVectorD2Ev.exit.i

_ZN6duckdb15SelectionVectorD2Ev.exit.i:           ; preds = %bb.z, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.v, %bb.t
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !134 ; 8 uses
  %.not.i.i.i.i1.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i1.i, label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZN6duckdb15SelectionVectorD2Ev.exit.i
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 4 uses
  %i.cf = load atomic i64, ptr %i.ce acquire, align 8 ; 2 uses
  %i.cg = icmp eq i64 %i.cf, 4294967297
  %i.ch = trunc i64 %i.cf to i32                  ; 2 uses
  br i1 %i.cg, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store i32 0, ptr %i.ce, align 8, !tbaa !136
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 12
  store i32 0, ptr %i.ci, align 4, !tbaa !138
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8
  call void %i.cl(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #28, !inline_history !719
  %i.cm = load ptr, ptr %i.cd, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 24
  %i.co = load ptr, ptr %i.cn, align 8
  call void %i.co(ptr noundef nonnull align 8 dereferenceable(16) %i.cd) #28, !inline_history !719
  br label %_ZN6duckdb19UnifiedVectorFormatD2Ev.exit

bb.ac:                                            ; preds = %bb.aa
  %i.cp = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i2.i = icmp eq i8 %i.cp, 0
  br i1 %.not.i.i.i.i.i2.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
end_hunk_0
begin_hunk_1_@_ZN6duckdb13UnaryExecutor11ExecuteFlatINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvPKT_PT0_mRNS_12ValidityMaskESD_Pvb:bb.a
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !121
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.01.0.copyload.i.i = load ptr, ptr %i.bm, align 8, !tbaa !128
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.bn, align 8, !tbaa !13
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_NS_12optional_ptrIKNS_10ExpressionELb1EEENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %i.bl, ptr %.sroa.01.0.copyload.i.i, i64 %.sroa.0.0.copyload.i.i)
          to label %.noexc unwind label %bb.u

.noexc:                                           ; preds = %bb.r
  store i8 0, ptr %i.ao, align 8, !tbaa !154
  %i.bo = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.noexc
  %i.bp = load i64, ptr %i.ap, align 8, !tbaa !141
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.bp)
          to label %.noexc77 unwind label %bb.u

.noexc77:                                         ; preds = %bb.s
  %.pre.i.i = load ptr, ptr %4, align 8, !tbaa !94
  br label %bb.t

bb.t:                                             ; preds = %.noexc77, %.noexc
  %i.bq = phi ptr [ %.pre.i.i, %.noexc77 ], [ %i.bo, %.noexc ]
  %i.br = lshr i64 %.195, 6
  %i.bs = and i64 %.195, 63
  %i.bt = shl nuw i64 1, %i.bs
  %i.bu = xor i64 %i.bt, -1
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.br ; 2 uses
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !13
  %i.bx = and i64 %i.bw, %i.bu
  store i64 %i.bx, ptr %i.bv, align 8, !tbaa !13
  %i.by = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.bz = icmp eq ptr %i.by, %i.aq
  br i1 %i.bz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.by) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.u:                                             ; preds = %bb.s, %bb.r
  %i.ca = landingpad { ptr, i32 }
          cleanup
  %i.cb = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.aq
  br i1 %i.cc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.cb) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i70, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i62, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.ca, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ], [ %i.dg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i62 ], [ %i.dw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i70 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit: ; preds = %bb.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.0.i.i = phi i8 [ %i.bi, %bb.q ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 %.195
  store i8 %.0.i.i, ptr %i.cd, align 1, !tbaa !662
  %i.ce = add i64 %.195, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.ce, %i.az
  br i1 %exitcond.not, label %.loopexit89, label %.lr.ph, !llvm.loop !1235

.lr.ph97:                                         ; preds = %.preheader88, %bb.ab
  %.296 = phi i64 [ %i.dk, %bb.ab ], [ %.0100, %.preheader88 ] ; 6 uses
  %i.cf = sub nuw i64 %.296, %.0100
  %i.cg = shl nuw i64 1, %i.cf
  %i.ch = and i64 %i.cg, %i.aw
  %.not = icmp eq i64 %i.ch, 0
  br i1 %.not, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %.lr.ph97
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.296 ; 2 uses
  %.sroa.05.0.copyload = load i64, ptr %i.ci, align 8 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %.sroa.26.0.copyload = load ptr, ptr %.sroa.26.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.cj = load ptr, ptr %i.an, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load i8, ptr %i.ck, align 8, !tbaa !129, !range !130, !noundef !22
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.05.0.copyload, ptr %.sroa.26.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext %i.cm)
  br i1 %i.cn, label %bb.w, label %bb.x, !prof !177

bb.w:                                             ; preds = %bb.v
  %i.co = load i8, ptr %i.b, align 1, !tbaa !662, !range !130, !noundef !22
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit68

bb.x:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %8, i64 %.sroa.05.0.copyload, ptr %.sroa.26.0.copyload)
  %i.cp = load ptr, ptr %i.an, align 8, !tbaa !749, !nonnull !22, !align !23 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !121
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %.sroa.01.0.copyload.i.i78 = load ptr, ptr %i.cs, align 8, !tbaa !128
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 48
  %.sroa.0.0.copyload.i.i79 = load i64, ptr %i.ct, align 8, !tbaa !13
  invoke void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_NS_12optional_ptrIKNS_10ExpressionELb1EEENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.cr, ptr %.sroa.01.0.copyload.i.i78, i64 %.sroa.0.0.copyload.i.i79)
          to label %.noexc82 unwind label %bb.aa

.noexc82:                                         ; preds = %bb.x
  store i8 0, ptr %i.ao, align 8, !tbaa !154
  %i.cu = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %.not.i.i80 = icmp eq ptr %i.cu, null
  br i1 %.not.i.i80, label %bb.y, label %bb.z

bb.y:                                             ; preds = %.noexc82
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !141
  invoke void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.cv)
          to label %.noexc83 unwind label %bb.aa

.noexc83:                                         ; preds = %bb.y
  %.pre.i.i81 = load ptr, ptr %4, align 8, !tbaa !94
  br label %bb.z

bb.z:                                             ; preds = %.noexc83, %.noexc82
  %i.cw = phi ptr [ %.pre.i.i81, %.noexc83 ], [ %i.cu, %.noexc82 ]
  %i.cx = lshr i64 %.296, 6
  %i.cy = and i64 %.296, 63
  %i.cz = shl nuw i64 1, %i.cy
  %i.da = xor i64 %i.cz, -1
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cx ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !13
  %i.dd = and i64 %i.dc, %i.da
  store i64 %i.dd, ptr %i.db, align 8, !tbaa !13
  %i.de = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.df = icmp eq ptr %i.de, %i.ar
  br i1 %i.df, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64: ; preds = %bb.z
  call void @_ZdlPv(ptr noundef %i.de) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i65: ; preds = %bb.z, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i64
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit68

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.dg = landingpad { ptr, i32 }
          cleanup
  %i.dh = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.di = icmp eq ptr %i.dh, %i.ar
  br i1 %i.di, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i62, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i61

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i61: ; preds = %bb.aa
  call void @_ZdlPv(ptr noundef %i.dh) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i62

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i62: ; preds = %bb.aa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i61
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit68: ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i65
  %.0.i.i66 = phi i8 [ %i.co, %bb.w ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i65 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.dj = getelementptr inbounds nuw i8, ptr %1, i64 %.296
  store i8 %.0.i.i66, ptr %i.dj, align 1, !tbaa !662
  br label %bb.ab

bb.ab:                                            ; preds = %.lr.ph97, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit68
  %i.dk = add i64 %.296, 1                        ; 2 uses
  %exitcond109.not = icmp eq i64 %i.dk, %i.ay
  br i1 %exitcond109.not, label %.loopexit89, label %.lr.ph97, !llvm.loop !1236

.loopexit89:                                      ; preds = %bb.ab, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit, %.preheader90, %.preheader88, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.ay, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.az, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit ], [ %.0100, %.preheader88 ], [ %.0100, %.preheader90 ], [ %i.ay, %bb.ab ]
  %i.dl = add nuw nsw i64 %.05899, 1              ; 2 uses
  %exitcond110.not = icmp eq i64 %i.dl, %i.am
  br i1 %exitcond110.not, label %.loopexit, label %bb.p, !llvm.loop !1237

bb.ac:                                            ; preds = %.lr.ph103, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76
  %.059102 = phi i64 [ 0, %.lr.ph103 ], [ %i.ea, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76 ] ; 4 uses
  %i.dm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.059102 ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.dm, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.dn = load ptr, ptr %i.e, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 8
  %i.dp = load i8, ptr %i.do, align 8, !tbaa !129, !range !130, !noundef !22
  %i.dq = trunc nuw i8 %i.dp to i1
  %i.dr = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.dq)
  br i1 %i.dr, label %bb.ad, label %bb.ae, !prof !177

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load i8, ptr %i.a, align 1, !tbaa !662, !range !130, !noundef !22
  %10 = trunc nuw i8 %i.ds to i1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76

bb.ae:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %7, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  %i.dt = invoke noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.059102, ptr noundef nonnull align 8 dereferenceable(17) %5)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.du = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.dv = icmp eq ptr %i.du, %i.f
  br i1 %i.dv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72: ; preds = %bb.af
  call void @_ZdlPv(ptr noundef %i.du) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73: ; preds = %bb.af, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i72
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76

bb.ag:                                            ; preds = %bb.ae
  %i.dw = landingpad { ptr, i32 }
          cleanup
  %i.dx = load ptr, ptr %7, align 8, !tbaa !105   ; 2 uses
  %i.dy = icmp eq ptr %i.dx, %i.f
  br i1 %i.dy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i70, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i69

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i69: ; preds = %bb.ag
  call void @_ZdlPv(ptr noundef %i.dx) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i70

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i70: ; preds = %bb.ag, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i69
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76: ; preds = %bb.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73
  %.0.i.i74 = phi i1 [ %10, %bb.ad ], [ %i.dt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i73 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 %.059102
  %11 = zext i1 %.0.i.i74 to i8
  store i8 %11, ptr %i.dz, align 1, !tbaa !662
  %i.ea = add nuw i64 %.059102, 1                 ; 2 uses
  %exitcond111.not = icmp eq i64 %i.ea, %2
  br i1 %exitcond111.not, label %.loopexit, label %bb.ac, !llvm.loop !1238

.loopexit:                                        ; preds = %.loopexit89, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit76, %bb.o, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tEbNS_19GenericUnaryWrapperENS_27VectorTryCastStrictOperatorINS_7TryCastEEEEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESG_Pvb(ptr noalias noundef %0, ptr noalias noundef %1, i64 noundef %2, ptr noalias noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %i.c = load ptr, ptr %4, align 8, !tbaa !94
  %.not.i = icmp eq ptr %i.c, null
  %.not49 = icmp eq i64 %2, 0                     ; 2 uses
  br i1 %.not.i, label %.preheader, label %.preheader43

.preheader43:                                     ; preds = %bb.a
  br i1 %.not49, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader43
  %i.d = load ptr, ptr %3, align 8, !tbaa !548    ; 2 uses
  %.not.i31 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.e

.preheader:                                       ; preds = %bb.a
  br i1 %.not49, label %.loopexit, label %.lr.ph47

.lr.ph47:                                         ; preds = %.preheader
  %i.h = load ptr, ptr %3, align 8, !tbaa !548    ; 2 uses
  %.not.i33 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  br i1 %.not.i33, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34

_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us: ; preds = %.lr.ph47, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us
  %.03046.us = phi i64 [ %i.v, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us ], [ 0, %.lr.ph47 ] ; 4 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.03046.us ; 2 uses
  %.sroa.0.0.copyload.us = load i64, ptr %i.k, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx.us = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.2.0.copyload.us = load ptr, ptr %.sroa.2.0..sroa_idx.us, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i8, ptr %i.m, align 8, !tbaa !129, !range !130, !noundef !22
  %i.o = trunc nuw i8 %i.n to i1
  %i.p = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.0.0.copyload.us, ptr %.sroa.2.0.copyload.us, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.o)
  br i1 %i.p, label %bb.d, label %bb.b, !prof !177

bb.b:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %8, i64 %.sroa.0.0.copyload.us, ptr %.sroa.2.0.copyload.us)
  %i.q = invoke noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %.03046.us, ptr noundef nonnull align 8 dereferenceable(17) %6)
          to label %bb.c unwind label %.split.us

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %8, align 8, !tbaa !105    ; 2 uses
  %i.s = icmp eq ptr %i.r, %i.j
  br i1 %i.s, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39.us, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38.us

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38.us: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.r) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39.us

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39.us: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38.us
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us

bb.d:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us
  %i.t = load i8, ptr %i.a, align 1, !tbaa !662, !range !130, !noundef !22
  %10 = trunc nuw i8 %i.t to i1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us: ; preds = %bb.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39.us
  %.0.i.i40.us = phi i1 [ %10, %bb.d ], [ %i.q, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 %.03046.us
  %11 = zext i1 %.0.i.i40.us to i8
  store i8 %11, ptr %i.u, align 1, !tbaa !662
  %i.v = add nuw i64 %.03046.us, 1                ; 2 uses
  %exitcond53.not = icmp eq i64 %i.v, %2
  br i1 %exitcond53.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34.us, !llvm.loop !1239

.split.us:                                        ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.e:                                             ; preds = %.lr.ph, %bb.n
  %.045 = phi i64 [ 0, %.lr.ph ], [ %i.bg, %bb.n ] ; 7 uses
  br i1 %.not.i31, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.045
  %i.y = load i32, ptr %i.x, align 4, !tbaa !3
  %i.z = zext i32 %i.y to i64
  br label %_ZNK6duckdb15SelectionVector9get_indexEm.exit

_ZNK6duckdb15SelectionVector9get_indexEm.exit:    ; preds = %bb.e, %bb.f
  %i.aa = phi i64 [ %i.z, %bb.f ], [ %.045, %bb.e ] ; 3 uses
  %i.ab = lshr i64 %i.aa, 6
  %i.ac = and i64 %i.aa, 63
  %i.ad = load ptr, ptr %4, align 8, !tbaa !94
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ab
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !13
  %i.ag = shl nuw i64 1, %i.ac
  %i.ah = and i64 %i.af, %i.ag
  %.not = icmp eq i64 %i.ah, 0
  br i1 %.not, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.aa ; 2 uses
  %.sroa.06.0.copyload = load i64, ptr %i.ai, align 8 ; 2 uses
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.27.0.copyload = load ptr, ptr %.sroa.27.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.aj = load ptr, ptr %i.e, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !129, !range !130, !noundef !22
  %i.am = trunc nuw i8 %i.al to i1
  %i.an = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.06.0.copyload, ptr %.sroa.27.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.b, i1 noundef zeroext %i.am)
  br i1 %i.an, label %bb.h, label %bb.i, !prof !177

bb.h:                                             ; preds = %bb.g
  %i.ao = load i8, ptr %i.b, align 1, !tbaa !662, !range !130, !noundef !22
  %12 = trunc nuw i8 %i.ao to i1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %9, i64 %.sroa.06.0.copyload, ptr %.sroa.27.0.copyload)
  %i.ap = invoke noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %.045, ptr noundef nonnull align 8 dereferenceable(17) %6)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.ar = icmp eq ptr %i.aq, %i.f
  br i1 %i.ar, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.aq) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit

bb.k:                                             ; preds = %bb.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  %i.at = load ptr, ptr %9, align 8, !tbaa !105   ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.f
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.at) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i36, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i ], [ %.us-phi, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i36 ]
  resume { ptr, i32 } %common.resume.op

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit: ; preds = %bb.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.0.i.i = phi i1 [ %12, %bb.h ], [ %i.ap, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.045
  %13 = zext i1 %.0.i.i to i8
  store i8 %13, ptr %i.av, align 1, !tbaa !662
  br label %bb.n

bb.l:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.aw = load ptr, ptr %5, align 8, !tbaa !94    ; 2 uses
  %.not.i32 = icmp eq ptr %i.aw, null
  br i1 %.not.i32, label %bb.m, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr %i.g, align 8, !tbaa !141
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.ax)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.l, %bb.m
  %i.ay = phi ptr [ %.pre.i, %bb.m ], [ %i.aw, %bb.l ]
  %i.az = lshr i64 %.045, 6
  %i.ba = and i64 %.045, 63
  %i.bb = shl nuw i64 1, %i.ba
  %i.bc = xor i64 %i.bb, -1
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.az ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !13
  %i.bf = and i64 %i.be, %i.bc
  store i64 %i.bf, ptr %i.bd, align 8, !tbaa !13
  br label %bb.n

bb.n:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit
  %i.bg = add nuw i64 %.045, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %2
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !1240

_ZNK6duckdb15SelectionVector9get_indexEm.exit34:  ; preds = %.lr.ph47, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42
  %.03046 = phi i64 [ %i.by, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42 ], [ 0, %.lr.ph47 ] ; 4 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %.03046
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !3
  %i.bj = zext i32 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bj ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bk, align 8 ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !100 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.bl = load ptr, ptr %i.i, align 8, !tbaa !749, !nonnull !22, !align !23
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i8, ptr %i.bm, align 8, !tbaa !129, !range !130, !noundef !22
  %i.bo = trunc nuw i8 %i.bn to i1
  %i.bp = call noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload, ptr noundef nonnull align 1 dereferenceable(1) %i.a, i1 noundef zeroext %i.bo)
  br i1 %i.bp, label %bb.o, label %bb.p, !prof !177

bb.o:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34
  %i.bq = load i8, ptr %i.a, align 1, !tbaa !662, !range !130, !noundef !22
  %14 = trunc nuw i8 %i.bq to i1
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42

bb.p:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit34
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias writable align 8 %8, i64 %.sroa.0.0.copyload, ptr %.sroa.2.0.copyload)
  %i.br = invoke noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %.03046, ptr noundef nonnull align 8 dereferenceable(17) %6)
          to label %bb.q unwind label %.split

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.bt = icmp eq ptr %i.bs, %i.j
  br i1 %i.bt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38: ; preds = %bb.q
  call void @_ZdlPv(ptr noundef %i.bs) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  br label %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42

.split:                                           ; preds = %bb.p
  %i.bu = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.split.us, %.split
  %.us-phi = phi { ptr, i32 } [ %i.bu, %.split ], [ %i.w, %.split.us ]
  %i.bv = load ptr, ptr %8, align 8, !tbaa !105   ; 2 uses
  %i.bw = icmp eq ptr %i.bv, %i.j
  br i1 %i.bw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i35: ; preds = %bb.r
  call void @_ZdlPv(ptr noundef %i.bv) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i36

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit13.i.i36: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i11.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %common.resume

_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42: ; preds = %bb.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39
  %.0.i.i40 = phi i1 [ %14, %bb.o ], [ %i.br, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i39 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 %.03046
  %15 = zext i1 %.0.i.i40 to i8
  store i8 %15, ptr %i.bx, align 1, !tbaa !662
  %i.by = add nuw i64 %.03046, 1                  ; 2 uses
  %exitcond52.not = icmp eq i64 %i.by, %2
  br i1 %exitcond52.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit34, !llvm.loop !1239

.loopexit:                                        ; preds = %bb.n, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42, %_ZN6duckdb19GenericUnaryWrapper9OperationINS_27VectorTryCastStrictOperatorINS_7TryCastEEENS_8string_tEbEET1_T0_RNS_12ValidityMaskEmPv.exit42.us, %.preheader43, %.preheader
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIbEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.81", align 1 ; 5 uses
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !255
  %i.e = icmp eq i8 %i.d, 1
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.24, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i8 1, ptr %i.a, align 1, !tbaa !996
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  %i.g = load i8, ptr %i.c, align 1, !tbaa !255
  store i8 %i.g, ptr %i.b, align 1, !tbaa !996
  invoke void @_ZN6duckdb17InternalExceptionC2IJNS_12PhysicalTypeES2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %i.a, ptr noundef nonnull align 1 dereferenceable(1) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #31
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  %i.j = load ptr, ptr %1, align 8, !tbaa !105    ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.j) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn10 = phi { ptr, i32 } [ %i.h, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.f) #28
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn9 = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn10, %bb.f ], [ %i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare noundef zeroext i1 @_ZN6duckdb7TryCast9OperationINS_8string_tEbEEbT_RT0_b(i64, ptr, ptr noundef nonnull align 1 dereferenceable(1), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN6duckdb21HandleVectorCastError9OperationIbEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_12ValidityMaskEmRNS_17VectorTryCastDataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(17) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !749, !nonnull !22, !align !23 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.01.0.copyload.i = load ptr, ptr %i.e, align 8, !tbaa !128
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.0.0.copyload.i = load i64, ptr %i.f, align 8, !tbaa !13
  tail call void @_ZN6duckdb15HandleCastError11AssignErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS6_NS_12optional_ptrIKNS_10ExpressionELb1EEENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %i.d, ptr %.sroa.01.0.copyload.i, i64 %.sroa.0.0.copyload.i)
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i8 0, ptr %i.g, align 8, !tbaa !154
  %i.h = load ptr, ptr %1, align 8, !tbaa !94     ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.b, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !tbaa !141
  tail call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.j)
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !94
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.a, %bb.b
  %i.k = phi ptr [ %.pre.i, %bb.b ], [ %i.h, %bb.a ]
  %i.l = lshr i64 %2, 6
  %i.m = and i64 %2, 63
  %i.n = shl nuw i64 1, %i.m
  %i.o = xor i64 %i.n, -1
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !13
  %i.r = and i64 %i.q, %i.o
  store i64 %i.r, ptr %i.p, align 8, !tbaa !13
  ret i1 false
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL17CastExceptionTextINS_8string_tEbEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i64 %1, ptr %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28
  call void @_ZN6duckdb15ConvertToString9OperationINS_8string_tEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEET_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %5, i64 %1, ptr %2)
  %i.a = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef 0, i64 noundef 0, ptr noundef nonnull @.str.36, i64 noundef 26)
          to label %.noexc unwind label %bb.i     ; 6 uses

.noexc:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  store ptr %i.b, ptr %4, align 8, !tbaa !108, !alias.scope !1241
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !105  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %.noexc
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !109  ; 3 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %bb.c

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.noexc
  store ptr %i.c, ptr %4, align 8, !tbaa !105, !alias.scope !1241
  %i.j = load i64, ptr %i.d, align 8, !tbaa !100
  store i64 %i.j, ptr %i.b, align 8, !tbaa !100, !alias.scope !1241
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !tbaa !109
  br label %bb.c

bb.c:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.b
  %i.k = phi i64 [ %i.g, %bb.b ], [ %.pre.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.k, ptr %i.m, align 8, !tbaa !109, !alias.scope !1241
  store ptr %i.d, ptr %i.a, align 8, !tbaa !105
  store i64 0, ptr %i.l, align 8, !tbaa !109
  store i8 0, ptr %i.d, align 8, !tbaa !100
  %i.n = add i64 %i.k, -4611686018427387899
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %bb.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i

bb.d:                                             ; preds = %bb.c
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.40) #31
          to label %.noexc12 unwind label %bb.j

.noexc12:                                         ; preds = %bb.d
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i: ; preds = %bb.c
  %i.p = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.37, i64 noundef 5)
          to label %.noexc13 unwind label %bb.j   ; 6 uses

.noexc13:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !108, !alias.scope !1244
  %i.r = load ptr, ptr %i.p, align 8, !tbaa !105  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i9

bb.e:                                             ; preds = %.noexc13
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !109  ; 3 uses
  %i.w = icmp ult i64 %i.v, 16
  call void @llvm.assume(i1 %i.w)
end_hunk_1
