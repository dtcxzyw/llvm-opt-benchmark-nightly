inline.NumInlined: 6648
inline.NumDeleted: 2471
begin_hunk_0_@_ZN6duckdb10CSVSniffer10SniffTypesERNS_9DataChunkERNS_15CSVStateMachineERSt13unordered_mapImNS_6vectorINS_11LogicalTypeELb1ESaIS7_EEESt4hashImESt8equal_toImESaISt4pairIKmS9_EEEm:bb.a
  %i.qs = load atomic i64, ptr %i.qr acquire, align 8 ; 2 uses
  %i.qt = icmp eq i64 %i.qs, 4294967297
  %i.qu = trunc i64 %i.qs to i32                  ; 2 uses
  br i1 %i.qt, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.qr, align 8, !tbaa !143
  %i.qv = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 0, ptr %i.qv, align 4, !tbaa !150
  %i.qw = load ptr, ptr %i.y, align 8, !tbaa !151
  %i.qx = getelementptr inbounds nuw i8, ptr %i.qw, i64 16
  %i.qy = load ptr, ptr %i.qx, align 8
  call void %i.qy(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !594
  %i.qz = load ptr, ptr %i.y, align 8, !tbaa !151
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qz, i64 24
  %i.rb = load ptr, ptr %i.ra, align 8
  call void %i.rb(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31, !inline_history !594
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit203

bb.fq:                                            ; preds = %bb.fo
  %i.rc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !100
  %.not.i.i.i.i.i200 = icmp eq i8 %i.rc, 0
  br i1 %.not.i.i.i.i.i200, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.rd = add nsw i32 %i.qu, -1
  store i32 %i.rd, ptr %i.qr, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i201

bb.fs:                                            ; preds = %bb.fq
  %i.re = atomicrmw volatile add ptr %i.qr, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i201

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i201: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i.i.i202 = phi i32 [ %i.qu, %bb.fr ], [ %i.re, %bb.fs ]
  %i.rf = icmp eq i32 %.0.i.i.i.i.i.i202, 1
  br i1 %i.rf, label %bb.ft, label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit203, !prof !157

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i201
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) #31
  br label %_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit203

_ZN6duckdb21TemplatedValidityMaskImED2Ev.exit203: ; preds = %.body, %bb.fp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i201, %bb.ft
  resume { ptr, i32 } %.pn120.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !499    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EE13AssertNotNullEb.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.77, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_15CSVStateMachineELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !537
  %i.e = load ptr, ptr %0, align 8, !tbaa !540    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = sdiv exact i64 %i.h, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !233
  store i64 %i.i, ptr %i.b, align 8, !tbaa !233
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit, label %bb.b, !prof !591

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.65, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EE3getILb1EEERS1_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [104 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb11HeaderValueC2ENS_8string_tE(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 %1, ptr %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %3 = alloca %"struct.duckdb::string_t", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  store i64 %1, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %2, ptr %i.b, align 8
  store i8 0, ptr %0, align 8, !tbaa !560
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !98
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store i64 0, ptr %i.e, align 8, !tbaa !99
  store i8 0, ptr %i.d, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  tail call void @llvm.experimental.noalias.scope.decl(metadata !596)
  %i.f = trunc i64 %1 to i32                      ; 3 uses
  %i.g = icmp ult i32 %i.f, 13
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = select i1 %i.g, ptr %i.h, ptr %2         ; 2 uses
  %i.j = and i64 %1, 4294967295                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 8 uses
  store ptr %i.k, ptr %4, align 8, !tbaa !98, !alias.scope !596
  %i.l = icmp eq ptr %i.i, null
  %i.m = lshr i64 %1, 32
  %i.n = trunc i64 %i.m to i8
  br i1 %i.l, label %.noexc.i, label %bb.b

.noexc.i:                                         ; preds = %bb.a
  invoke void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.68) #35
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %.noexc.i
  unreachable

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31, !noalias !596
  store i64 %i.j, ptr %i.a, align 8, !tbaa !233, !noalias !596
  %i.o = icmp ugt i32 %i.f, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc2 unwind label %bb.k    ; 2 uses

.noexc2:                                          ; preds = %.noexc.i.i
  store ptr %i.p, ptr %4, align 8, !tbaa !103, !alias.scope !596
  %i.q = load i64, ptr %i.a, align 8, !tbaa !233, !noalias !596
  store i64 %i.q, ptr %i.k, align 8, !tbaa !100, !alias.scope !596
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc2, %bb.b
  %i.r = phi ptr [ %i.p, %.noexc2 ], [ %i.k, %bb.b ] ; 2 uses
  switch i32 %i.f, label %bb.d [
    i32 1, label %bb.c
    i32 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i.i
  store i8 %i.n, ptr %i.r, align 1, !tbaa !100
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.i, i64 %i.j, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !233, !noalias !596 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.s, ptr %i.t, align 8, !tbaa !99, !alias.scope !596
  %i.u = load ptr, ptr %4, align 8, !tbaa !103, !alias.scope !596
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31, !noalias !596
  %i.w = load ptr, ptr %i.c, align 8, !tbaa !103  ; 6 uses
  %i.x = icmp eq ptr %i.w, %i.d
  %i.y = load ptr, ptr %4, align 8, !tbaa !103    ; 6 uses
  %i.z = icmp eq ptr %i.y, %i.k                   ; 2 uses
  br i1 %i.x, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.e
  br i1 %i.z, label %bb.f, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.e
  br i1 %i.z, label %bb.f, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.aa = load i64, ptr %i.t, align 8, !tbaa !99  ; 3 uses
  %i.ab = icmp ult i64 %i.aa, 16
  call void @llvm.assume(i1 %i.ab)
  %.not21.i = icmp eq ptr %4, %i.c
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %5, !prof !157

5:                                                ; preds = %bb.f
  switch i64 %i.aa, label %bb.h [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.g
  ]

bb.g:                                             ; preds = %5
  %i.ac = load i8, ptr %i.y, align 1, !tbaa !100
  store i8 %i.ac, ptr %i.w, align 1, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.h:                                             ; preds = %5
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr align 1 %i.y, i64 %i.aa, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.h, %bb.g, %5
  %i.ad = load i64, ptr %i.t, align 8, !tbaa !99  ; 2 uses
  store i64 %i.ad, ptr %i.e, align 8, !tbaa !99
  %i.ae = load ptr, ptr %i.c, align 8, !tbaa !103
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %i.ad
  store i8 0, ptr %i.af, align 1, !tbaa !100
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  store ptr %i.y, ptr %i.c, align 8, !tbaa !103
  %i.ag = load <2 x i64>, ptr %i.t, align 8, !tbaa !100
  store <2 x i64> %i.ag, ptr %i.e, align 8, !tbaa !100
  br label %bb.j

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.ah = load i64, ptr %i.d, align 8, !tbaa !100
  store ptr %i.y, ptr %i.c, align 8, !tbaa !103
  %i.ai = load <2 x i64>, ptr %i.t, align 8, !tbaa !100
  store <2 x i64> %i.ai, ptr %i.e, align 8, !tbaa !100
  %.not.i = icmp eq ptr %i.w, null
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.w, ptr %4, align 8, !tbaa !103
  store i64 %i.ah, ptr %i.k, align 8, !tbaa !100
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.j:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.k, ptr %4, align 8, !tbaa !103
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.i, %bb.j
  %6 = phi ptr [ %i.w, %bb.i ], [ %i.k, %bb.j ], [ %i.y, %bb.f ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.t, align 8, !tbaa !99
  store i8 0, ptr %6, align 1, !tbaa !100
  %i.aj = load ptr, ptr %4, align 8, !tbaa !103   ; 2 uses
  %i.ak = icmp eq ptr %i.aj, %i.k
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.aj) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  ret void

bb.k:                                             ; preds = %.noexc.i.i, %.noexc.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  %i.am = load ptr, ptr %i.c, align 8, !tbaa !103 ; 2 uses
  %i.an = icmp eq ptr %i.am, %i.d
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.k
  call void @_ZdlPv(ptr noundef %i.am) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.al
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10CSVSniffer20DetectHeaderInternalB5cxx11ERNS_13ClientContextERNS_6vectorINS_11HeaderValueELb1ESaIS4_EEERNS_15CSVStateMachineERKNS_10SetColumnsERSt13unordered_mapImNS3_INS_11LogicalTypeELb1ESaISE_EEESt4hashImESt8equal_toImESaISt4pairIKmSG_EEERNS_16CSVReaderOptionsERKNS_16MultiFileOptionsERNS_15CSVErrorHandlerE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector.39") align 8 initializes((0, 24)) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(216) initializes((128, 136)) %3, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(1033) %6, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %7, ptr noundef nonnull align 8 dereferenceable(136) %8) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %9 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::__detail::_Select1st, duckdb::CaseInsensitiveStringEquality, duckdb::CaseInsensitiveStringHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %10 = alloca %"struct.std::_Hashtable<std::__cxx11::basic_string<char>, std::pair<const std::__cxx11::basic_string<char>, unsigned long>, std::allocator<std::pair<const std::__cxx11::basic_string<char>, unsigned long>>, std::__detail::_Select1st, duckdb::CaseInsensitiveStringEquality, duckdb::CaseInsensitiveStringHashFunction, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<true, false, true>>::_Scoped_node", align 8 ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>, std::allocator<std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %21 = alloca %"class.duckdb::CSVError", align 8 ; 12 uses
  %22 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %.sroa.0429 = alloca %struct.anon, align 8      ; 7 uses
  %23 = alloca %"class.std::unordered_map.77", align 8 ; 21 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 30 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::allocator", align 1   ; 5 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !567  ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 128 ; 8 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !599
  %i.i = load ptr, ptr %2, align 8, !tbaa !600    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !600  ; 2 uses
  %i.l = icmp eq ptr %i.i, %i.k
  br i1 %i.l, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i16 0, ptr %i.m, align 8
  %.not691 = icmp eq i64 %i.g, 0
  br i1 %.not691, label %._crit_edge686.invoke, label %._crit_edge.i.i.lr.ph

._crit_edge.i.i.lr.ph:                            ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %18, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %18, i64 22
  br label %._crit_edge.i.i

._crit_edge686.invoke:                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, %bb.b, %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 1
  %.val188 = load i8, ptr %i.u, align 1
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 3
  %.val189 = load i8, ptr %i.v, align 1
  invoke fastcc void @_ZN6duckdbL12ReplaceNamesERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEERNS_15CSVStateMachineERSt13unordered_mapImNS0_INS_11LogicalTypeELb1ESaISD_EEESt4hashImESt8equal_toImESaISt4pairIKmSF_EEERNS_16CSVReaderOptionsERKNS_16MultiFileOptionsERKNS0_INS_11HeaderValueELb1ESaISV_EEERNS_15CSVErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(216) %3, ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull align 8 dereferenceable(1033) %6, i8 %.val188, i8 %.val189, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(136) %8)
          to label %bb.gu unwind label %bb.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.i.i.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197
  %i.w = phi i64 [ %i.g, %._crit_edge.i.i.lr.ph ], [ %i.ao, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ]
  %.0133685 = phi i64 [ 0, %._crit_edge.i.i.lr.ph ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #31
  store ptr %i.n, ptr %18, align 8, !tbaa !98
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(6) %i.n, ptr noundef nonnull align 1 dereferenceable(6) @.str.50, i64 6, i1 false)
  store i64 6, ptr %i.o, align 8, !tbaa !99
  store i8 0, ptr %i.t, align 2, !tbaa !100
  invoke fastcc void @_ZN6duckdbL18GenerateColumnNameEmmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable align 8 %17, i64 noundef %i.w, i64 noundef %.0133685, ptr noundef nonnull align 8 dereferenceable(32) %18)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %._crit_edge.i.i
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !163  ; 6 uses
  %i.y = load ptr, ptr %i.q, align 8, !tbaa !458
  %.not.i.i = icmp eq ptr %i.x, %i.y
  br i1 %.not.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 3 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !98
  %i.aa = load ptr, ptr %17, align 8, !tbaa !103  ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.r
  br i1 %i.ab, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.ac = load i64, ptr %i.s, align 8, !tbaa !99  ; 3 uses
  %i.ad = icmp ult i64 %i.ac, 16
  call void @llvm.assume(i1 %i.ad)
  %i.ae = add nuw nsw i64 %i.ac, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.z, ptr noundef nonnull align 8 dereferenceable(1) %i.r, i64 %i.ae, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.d
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !103
  %i.af = load i64, ptr %i.r, align 8, !tbaa !100
  store i64 %i.af, ptr %i.z, align 8, !tbaa !100
  %.pre725 = load i64, ptr %i.s, align 8, !tbaa !99
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.ag = phi i64 [ %.pre725, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.ac, %bb.e ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ag, ptr %i.ah, align 8, !tbaa !99
  store ptr %i.r, ptr %17, align 8, !tbaa !103
  store i64 0, ptr %i.s, align 8, !tbaa !99
  store i8 0, ptr %i.r, align 8, !tbaa !100
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !163
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %i.aj, ptr %i.p, align 8, !tbaa !163
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.f:                                             ; preds = %bb.c
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.h

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.f
  %.pre726 = load ptr, ptr %17, align 8, !tbaa !103 ; 2 uses
  %i.ak = icmp eq ptr %.pre726, %i.r
  br i1 %i.ak, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre726) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.al = load ptr, ptr %18, align 8, !tbaa !103  ; 2 uses
  %i.am = icmp eq ptr %i.al, %i.n
  br i1 %i.am, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.al) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit197: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i195
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #31
  %i.an = add nuw i64 %.0133685, 1                ; 2 uses
  %i.ao = load i64, ptr %i.h, align 8, !tbaa !599 ; 2 uses
  %i.ap = icmp ult i64 %i.an, %i.ao
  br i1 %i.ap, label %._crit_edge.i.i, label %._crit_edge686.invoke, !llvm.loop !601

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

bb.h:                                             ; preds = %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.as = load ptr, ptr %17, align 8, !tbaa !103  ; 2 uses
  %i.at = icmp eq ptr %i.as, %i.r
  br i1 %i.at, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198: ; preds = %bb.h
  call void @_ZdlPv(ptr noundef %i.as) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit200: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198, %bb.g
  %.pn180 = phi { ptr, i32 } [ %i.aq, %bb.g ], [ %i.ar, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i198 ], [ %i.ar, %bb.h ]
end_hunk_0
begin_hunk_1_@_ZN6duckdb10CSVSniffer13DetectDialectEv:bb.a
  br label %.body

.body:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i, %bb.u
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.u ], [ %i.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i5.i ], [ %i.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit17

bb.v:                                             ; preds = %_ZN6duckdb8CSVErrorD2Ev.exit34, %bb.g
  br i1 %.not38, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.v, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.cj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.c, %bb.v ] ; 2 uses
  %i.cf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !722 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.cf, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !151
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(472) %i.cf) #31, !inline_history !726
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.cj, %i.e
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !727

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, %bb.v
  %.not.i.i1.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.c) #30
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !728 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cl, null
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit.i, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.cl) #30
  br label %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit.i

_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit.i: ; preds = %bb.x, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !731 ; 2 uses
  %.not.i.i.i1.i = icmp eq ptr %i.cn, null
  br i1 %.not.i.i.i1.i, label %_ZNSt6vectorIcSaIcEED2Ev.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.cn) #30
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit.i

_ZNSt6vectorIcSaIcEED2Ev.exit.i:                  ; preds = %bb.y, %_ZNSt6vectorIN6duckdb22QuoteEscapeCombinationESaIS1_EED2Ev.exit.i
  %i.co = load ptr, ptr %1, align 8, !tbaa !162   ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !163 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.co, %i.cq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit.i, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.cu, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i ], [ %i.co, %_ZNSt6vectorIcSaIcEED2Ev.exit.i ] ; 3 uses
  %i.cr = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !103 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  %i.ct = icmp eq ptr %i.cr, %i.cs
  br i1 %i.ct, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.cr) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.cu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i2.i = icmp eq ptr %i.cu, %i.cq
  br i1 %.not.i.i.i2.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !164

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %1, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %_ZNSt6vectorIcSaIcEED2Ev.exit.i
  %i.cv = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.co, %_ZNSt6vectorIcSaIcEED2Ev.exit.i ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb17DialectCandidatesD2Ev.exit, label %bb.z

bb.z:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.cv) #30
  br label %_ZN6duckdb17DialectCandidatesD2Ev.exit

_ZN6duckdb17DialectCandidatesD2Ev.exit:           ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  ret void

_ZNSt10unique_ptrIN6duckdb18ColumnCountScannerESt14default_deleteIS1_EED2Ev.exit17: ; preds = %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i16, %bb.f, %.body, %bb.c
  %.pn13 = phi { ptr, i32 } [ %i.g, %bb.c ], [ %.pn10.pn, %.body ], [ %i.n, %bb.f ], [ %i.n, %_ZNKSt14default_deleteIN6duckdb18ColumnCountScannerEEclEPS1_.exit.i16 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_18ColumnCountScannerESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @_ZN6duckdb17DialectCandidatesD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  resume { ptr, i32 } %.pn13
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !733    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !157

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.96, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #31
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #31
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_13CSVFileHandleESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN6duckdb16CSVBufferManager15IsBlockUnloadedEm(ptr noundef nonnull align 8 dereferenceable(257), i64 noundef) local_unnamed_addr #5

declare void @_ZN6duckdb16CSVBufferManager18ResetBufferManagerEv(ptr noundef nonnull align 8 dereferenceable(257)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10CSVSniffer11DetectTypesEv(ptr noundef nonnull align 8 dereferenceable(680) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %5 = alloca %"struct.std::_Rb_tree<duckdb::LogicalTypeId, std::pair<const duckdb::LogicalTypeId, duckdb::vector<std::__cxx11::basic_string<char>>>, std::_Select1st<std::pair<const duckdb::LogicalTypeId, duckdb::vector<std::__cxx11::basic_string<char>>>>, std::less<duckdb::LogicalTypeId>>::_Auto_node", align 8 ; 6 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.duckdb::string_t", align 8 ; 5 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>, std::allocator<std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %11 = alloca %"struct.std::_Hashtable<unsigned long, std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>, std::allocator<std::pair<const unsigned long, duckdb::vector<duckdb::LogicalType>>>, std::__detail::_Select1st, std::equal_to<unsigned long>, std::hash<unsigned long>, std::__detail::_Mod_range_hashing, std::__detail::_Default_ranged_hash, std::__detail::_Prime_rehash_policy, std::__detail::_Hashtable_traits<false, false, true>>::_Scoped_node", align 8 ; 6 uses
  %12 = alloca %"class.duckdb::vector.33", align 8 ; 11 uses
  %13 = alloca %"class.std::unordered_map", align 8 ; 22 uses
  %14 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %15 = alloca %"class.duckdb::unique_ptr", align 8 ; 15 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %17 = alloca %"struct.duckdb::ValidityMask", align 16 ; 8 uses
  %18 = alloca %"struct.duckdb::HeaderValue", align 8 ; 9 uses
  %19 = alloca %"struct.duckdb::HeaderValue", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::DialectCandidates", align 8 ; 11 uses
  %21 = alloca %"class.duckdb::CSVError", align 8 ; 12 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !139
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !721  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !721  ; 2 uses
  %.not278359 = icmp eq ptr %i.j, %i.l
  br i1 %.not278359, label %._crit_edge365, label %.lr.ph364

.lr.ph364:                                        ; preds = %bb.a
  %i.m = add i64 %i.h, 1
  %i.n = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 344 ; 2 uses
  %23 = icmp eq ptr %13, %i.ab
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ak = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %17, i64 24
  %i.am = getelementptr inbounds nuw i8, ptr %19, i64 8 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %19, i64 24 ; 10 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 472 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 9 uses
  %i.as = getelementptr inbounds nuw i8, ptr %18, i64 24 ; 7 uses
  %i.at = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.av = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 6 uses
  br label %bb.b

._crit_edge365:                                   ; preds = %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit, %bb.a
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !206
  %.not279 = icmp eq ptr %i.ay, null
  br i1 %.not279, label %bb.fb, label %bb.fq

bb.b:                                             ; preds = %.lr.ph364, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit
  %.0362 = phi i64 [ %i.m, %.lr.ph364 ], [ %.2, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit ] ; 4 uses
  %.041361 = phi i64 [ -1, %.lr.ph364 ], [ %.243, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit ] ; 4 uses
  %.sroa.0271.0360 = phi ptr [ %i.j, %.lr.ph364 ], [ %i.ud, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEED2Ev.exit ] ; 3 uses
  %i.az = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0271.0360)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.ba = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb11BaseScanner15GetStateMachineEv(ptr noundef nonnull align 8 dereferenceable(208) %i.az)
          to label %bb.d unwind label %bb.e       ; 2 uses

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #31
  store ptr %i.n, ptr %13, align 8, !tbaa !124
  store i64 1, ptr %i.o, align 8, !tbaa !125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.q, align 8, !tbaa !126
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, i8 0, i64 16, i1 false)
  %i.bb = load i64, ptr %i.g, align 8, !tbaa !139
  %.not366 = icmp eq i64 %i.bb, 0
  br i1 %.not366, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 64
  br label %bb.f

._crit_edge:                                      ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %bb.d
  %i.bd = phi i64 [ 0, %bb.d ], [ %i.cg, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit ]
  %i.be = load ptr, ptr %12, align 8, !tbaa !138  ; 3 uses
  %i.bf = load ptr, ptr %i.t, align 8, !tbaa !137 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.bf, %i.be
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %._crit_edge, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.be, %._crit_edge ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i) #31
  %i.bg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !216

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  store ptr %i.be, ptr %i.t, align 8, !tbaa !137
  %.pre = load i64, ptr %i.g, align 8, !tbaa !139
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit: ; preds = %._crit_edge, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.bh = phi i64 [ %i.bd, %._crit_edge ], [ %.pre, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #31
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 noundef zeroext 25)
          to label %bb.l unwind label %bb.ae

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.bi = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.f:                                             ; preds = %.lr.ph, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %storemerge345 = phi i64 [ 0, %.lr.ph ], [ %i.cf, %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit ] ; 6 uses
  %i.bj = load ptr, ptr %i.bc, align 8, !tbaa !526, !nonnull !141, !align !142
  %i.bk = load i64, ptr %i.o, align 8, !tbaa !125 ; 2 uses
  %i.bl = urem i64 %storemerge345, %i.bk          ; 3 uses
  %i.bm = load ptr, ptr %13, align 8, !tbaa !124
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.bl
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !527 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !215 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !233
  %i.bs = icmp eq i64 %storemerge345, %i.br
  br i1 %i.bs, label %.loopexit289, label %.lr.ph.i.i.i.i

bb.h:                                             ; preds = %bb.i
  %i.bt = icmp eq i64 %storemerge345, %i.bw
  br i1 %i.bt, label %.loopexit289, label %.lr.ph.i.i.i.i, !llvm.loop !528

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %bb.h
  %.020.i.i.i.i = phi ptr [ %i.bu, %bb.h ], [ %i.bp, %bb.g ]
  %i.bu = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !215 ; 4 uses
  %.not18.i.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not18.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !233 ; 2 uses
  %i.bx = urem i64 %i.bw, %i.bk
  %.not19.i.i.i.i = icmp eq i64 %i.bx, %i.bl
  br i1 %.not19.i.i.i.i, label %bb.h, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !528

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.i
  br label %.loopexit.i.i, !llvm.loop !528

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i.i.i, %..loopexit_crit_edge21.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  store ptr %13, ptr %11, align 8, !tbaa !529
  %i.by = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #32
          to label %.noexc unwind label %bb.k     ; 5 uses

.noexc:                                           ; preds = %.loopexit.i.i
  store ptr null, ptr %i.by, align 8, !tbaa !215
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  store i64 %storemerge345, ptr %i.bz, align 8, !tbaa !533
  %i.ca = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ca, i8 0, i64 24, i1 false)
  store ptr %i.by, ptr %i.s, align 8, !tbaa !535
  %i.cb = invoke ptr @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE21_M_insert_unique_nodeEmmPNS9_10_Hash_nodeIS7_Lb0EEEm(ptr noundef nonnull align 8 dereferenceable(56) %13, i64 noundef %i.bl, i64 noundef %storemerge345, ptr noundef nonnull %i.by, i64 noundef 1)
          to label %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i unwind label %bb.j

_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.loopexit289

bb.j:                                             ; preds = %.noexc
  %i.cc = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %11) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #31
  br label %.body

.loopexit289:                                     ; preds = %bb.h, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i, %bb.g
  %.pn.i.i = phi ptr [ %i.cb, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i ], [ %i.bp, %bb.g ], [ %i.bu, %bb.h ]
  %.1.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bj, i64 392
  %i.ce = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %.1.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.cd)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.k ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %.loopexit289
  %i.cf = add nuw i64 %storemerge345, 1           ; 2 uses
  %i.cg = load i64, ptr %i.g, align 8, !tbaa !139 ; 2 uses
  %i.ch = icmp ult i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.f, label %._crit_edge, !llvm.loop !734

bb.k:                                             ; preds = %.loopexit289, %.loopexit.i.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EE5clearEv.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE14_M_fill_assignEmRKS1_(ptr noundef nonnull align 8 dereferenceable(24) %12, i64 noundef %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %14)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE6assignEmRKS1_.exit unwind label %bb.af

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE6assignEmRKS1_.exit: ; preds = %bb.l
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %14) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #31
  %i.cj = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18ColumnCountScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0271.0360)
          to label %bb.m unwind label %bb.ah

bb.m:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE6assignEmRKS1_.exit
  invoke void @_ZN6duckdb18ColumnCountScanner27UpgradeToStringValueScannerEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %15, ptr noundef nonnull align 8 dereferenceable(472) %i.cj)
          to label %bb.n unwind label %bb.ah

bb.n:                                             ; preds = %bb.m
  %i.ck = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.o unwind label %bb.ai

bb.o:                                             ; preds = %bb.n
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  %i.cm = invoke noundef nonnull align 8 dereferenceable(216) ptr @_ZNK6duckdb10shared_ptrINS_15CSVStateMachineELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.cl)
          to label %bb.p unwind label %bb.ai

bb.p:                                             ; preds = %bb.o
  invoke void @_ZNK6duckdb10CSVSniffer28SetUserDefinedDateTimeFormatERNS_15CSVStateMachineE(ptr noundef nonnull align 8 dereferenceable(680) %0, ptr noundef nonnull align 8 dereferenceable(216) %i.cm)
          to label %bb.q unwind label %bb.ai

bb.q:                                             ; preds = %bb.p
  %i.cn = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.r unwind label %bb.aj      ; 2 uses

end_hunk_1
begin_hunk_2_@_ZN6duckdb10CSVSniffer11DetectTypesEv:bb.a
  %.pn.i.i118 = phi ptr [ %i.ey, %_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit.i.i117 ], [ %i.em, %bb.aq ], [ %i.er, %bb.ar ] ; 2 uses
  %.1.i.i119 = getelementptr inbounds nuw i8, ptr %.pn.i.i118, i64 16
  %i.fa = load ptr, ptr %.1.i.i119, align 8, !tbaa !449 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.pn.i.i118, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !449 ; 2 uses
  %i.fd = icmp eq ptr %i.fa, %i.fc
  br i1 %i.fd, label %bb.au, label %bb.ba

bb.au:                                            ; preds = %.loopexit288
  %i.fe = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.av unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.av:                                            ; preds = %bb.au
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fe, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.aw unwind label %bb.ax

bb.aw:                                            ; preds = %bb.av
  invoke void @__cxa_throw(ptr nonnull %i.fe, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.az unwind label %bb.ax

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.au
  %i.ff = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br label %bb.ay

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.0.i = phi i1 [ false, %bb.aw ], [ true, %bb.av ] ; 2 uses
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.fh = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.ax
  call void @_ZdlPv(ptr noundef %i.fh) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.0.i, label %bb.ay, label %.body121

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #31
  br i1 %.0.i, label %bb.ay, label %.body121

bb.ay:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.ff, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.fe) #31
  br label %.body121

bb.az:                                            ; preds = %bb.aw
  unreachable

bb.ba:                                            ; preds = %.loopexit288
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #31
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 25)
          to label %bb.bb unwind label %bb.be

bb.bb:                                            ; preds = %bb.ba
  %i.fk = ptrtoint ptr %i.fc to i64
  %i.fl = ptrtoint ptr %i.fa to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = getelementptr i8, ptr %i.fa, i64 %i.fm
  %i.fo = getelementptr i8, ptr %i.fn, i64 -24
  %i.fp = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fo, ptr noundef nonnull align 8 dereferenceable(24) %16)
          to label %bb.bc unwind label %bb.bf

bb.bc:                                            ; preds = %bb.bb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  %i.fq = zext i1 %i.fp to i64
  %spec.select = add i64 %.073347, %i.fq          ; 2 uses
  %i.fr = add nuw i64 %storemerge82346, 1         ; 2 uses
  %i.fs = load i64, ptr %i.v, align 8, !tbaa !567 ; 2 uses
  %i.ft = icmp ult i64 %i.fr, %i.fs
  br i1 %i.ft, label %.lr.ph348, label %._crit_edge349.loopexit, !llvm.loop !735

bb.bd:                                            ; preds = %.loopexit.i.i116
  %i.fu = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.be:                                            ; preds = %bb.ba
  %i.fv = landingpad { ptr, i32 }
          cleanup
  br label %bb.bg

bb.bf:                                            ; preds = %bb.bb
  %i.fw = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #31
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.pn93 = phi { ptr, i32 } [ %i.fw, %bb.bf ], [ %i.fv, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #31
  br label %.body121

bb.bh:                                            ; preds = %._crit_edge349
  %i.fx = getelementptr inbounds nuw i8, ptr %i.eg, i64 32
  %i.fy = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_15CSVErrorHandlerELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fx)
          to label %bb.bi unwind label %bb.br

bb.bi:                                            ; preds = %bb.bh
  %i.fz = invoke noundef i64 @_ZN6duckdb15CSVErrorHandler7GetSizeEv(ptr noundef nonnull align 8 dereferenceable(136) %i.fy)
          to label %bb.bj unwind label %bb.br     ; 4 uses

bb.bj:                                            ; preds = %bb.bi
  %i.ga = load i8, ptr %i.x, align 8, !tbaa !736, !range !154, !noundef !141
  %i.gb = trunc nuw i8 %i.ga to i1
  br i1 %i.gb, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.gc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.bl unwind label %bb.bs

bb.bl:                                            ; preds = %bb.bk
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 68
  %i.ge = load i8, ptr %i.gd, align 4, !tbaa !737, !range !154, !noundef !141
  %i.gf = trunc nuw i8 %i.ge to i1
  %i.gg = xor i1 %i.gf, true
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bj, %bb.bl
  %i.gh = phi i1 [ %i.gg, %bb.bl ], [ true, %bb.bj ]
  %i.gi = load ptr, ptr %i.y, align 8, !tbaa !206 ; 2 uses
  %.not280 = icmp eq ptr %i.gi, null
  br i1 %.not280, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %or.cond = select i1 %i.eb, i1 %i.ef, i1 false
  %i.gj = select i1 %or.cond, i1 %i.gh, i1 false
  br i1 %i.gj, label %bb.bo, label %.loopexit290

bb.bo:                                            ; preds = %bb.bn
  %i.gk = load ptr, ptr %i.u, align 8, !tbaa !140, !nonnull !141, !align !142
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 145
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !153, !range !154, !noundef !141
  %i.gn = trunc nuw i8 %i.gm to i1
  %i.go = icmp uge i64 %i.fz, %.041361
  %or.cond107.not = select i1 %i.gn, i1 %i.go, i1 false
  br i1 %or.cond107.not, label %.loopexit290, label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bm
  %i.gp = load ptr, ptr %i.z, align 8, !tbaa !211 ; 3 uses
  %i.gq = load ptr, ptr %i.aa, align 8, !tbaa !212 ; 2 uses
  %.not.i.i.i126 = icmp eq ptr %i.gq, %i.gp
  br i1 %.not.i.i.i126, label %_ZN6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE5clearEv.exit, label %.lr.ph.i.i.i.i.i127

.lr.ph.i.i.i.i.i127:                              ; preds = %bb.bp, %_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i128 = phi ptr [ %i.gv, %_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i ], [ %i.gp, %bb.bp ] ; 3 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i128, i64 8
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !103 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i128, i64 24
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i127
  call void @_ZdlPv(ptr noundef %i.gs) #30
  br label %_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.gv = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i128, i64 40 ; 2 uses
  %.not.i.i.i.i.i129 = icmp eq ptr %i.gv, %i.gq
  br i1 %.not.i.i.i.i.i129, label %_ZSt8_DestroyIPN6duckdb11HeaderValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i127, !llvm.loop !213

_ZSt8_DestroyIPN6duckdb11HeaderValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb11HeaderValueEEvPT_.exit.i.i.i.i.i
  store ptr %i.gp, ptr %i.aa, align 8, !tbaa !212
  %.pre391 = load ptr, ptr %i.y, align 8, !tbaa !206
  br label %_ZN6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE5clearEv.exit: ; preds = %bb.bp, %_ZSt8_DestroyIPN6duckdb11HeaderValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.gw = phi ptr [ %i.gi, %bb.bp ], [ %.pre391, %_ZSt8_DestroyIPN6duckdb11HeaderValueES1_EvT_S3_RSaIT0_E.exit.i.i.i ] ; 3 uses
  %i.gx = load ptr, ptr %15, align 8, !tbaa !206
  store ptr null, ptr %15, align 8, !tbaa !206
  store ptr %i.gx, ptr %i.y, align 8, !tbaa !206
  %.not.i.i.i.i.i130 = icmp eq ptr %i.gw, null
  br i1 %.not.i.i.i.i.i130, label %_ZN6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEaSEOS4_.exit, label %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZN6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE5clearEv.exit
  %i.gy = load ptr, ptr %i.gw, align 8, !tbaa !151
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 8
  %i.ha = load ptr, ptr %i.gz, align 8
  call void %i.ha(ptr noundef nonnull align 8 dereferenceable(1232) %i.gw) #31, !inline_history !753
  br label %_ZN6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %_ZN6duckdb6vectorINS_11HeaderValueELb1ESaIS1_EE5clearEv.exit, %_ZNKSt14default_deleteIN6duckdb18StringValueScannerEEclEPS1_.exit.i.i.i.i.i
  %i.hb = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
          to label %bb.bq unwind label %bb.bt

bb.bq:                                            ; preds = %_ZN6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 68
  %i.hd = load i8, ptr %i.hc, align 4, !tbaa !737, !range !154, !noundef !141
  %i.he = xor i8 %i.hd, 1
  store i8 %i.he, ptr %i.x, align 8, !tbaa !736
  br i1 %23, label %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit, label %24

24:                                               ; preds = %bb.bq
  invoke void @_ZNSt10_HashtableImSt4pairIKmN6duckdb6vectorINS2_11LogicalTypeELb1ESaIS4_EEEESaIS7_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS9_18_Mod_range_hashingENS9_20_Default_ranged_hashENS9_20_Prime_rehash_policyENS9_17_Hashtable_traitsILb0ELb0ELb1EEEE18_M_assign_elementsIRKSK_EEvOT_(ptr noundef nonnull align 8 dereferenceable(56) %i.ab, ptr noundef nonnull align 8 dereferenceable(56) %13)
          to label %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit unwind label %bb.bt

_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit: ; preds = %bb.bq, %24
  %i.hf = load ptr, ptr %i.ac, align 8, !tbaa !129 ; 2 uses
  %.not282351 = icmp eq ptr %i.hf, %i.ad
  br i1 %.not282351, label %._crit_edge354, label %.lr.ph353

._crit_edge354:                                   ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit
  %.not = icmp eq i64 %i.dp, 0
  br i1 %.not, label %.loopexit290, label %bb.db

bb.br:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge349
  %i.hg = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.bs:                                            ; preds = %bb.bk
  %i.hh = landingpad { ptr, i32 }
          cleanup
  br label %.body121

bb.bt:                                            ; preds = %24, %_ZN6duckdb10unique_ptrINS_18StringValueScannerESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.hi = landingpad { ptr, i32 }
          cleanup
  br label %.body121

.lr.ph353:                                        ; preds = %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit
  %.sroa.0264.0352 = phi ptr [ %i.my, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit ], [ %i.hf, %_ZNSt13unordered_mapImN6duckdb6vectorINS0_11LogicalTypeELb1ESaIS2_EEESt4hashImESt8equal_toImESaISt4pairIKmS4_EEEaSERKSD_.exit ] ; 4 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.0264.0352, i64 32 ; 2 uses
  %i.hk = load ptr, ptr %i.af, align 8, !tbaa !128 ; 2 uses
  %.not10.i.i.i.i = icmp eq ptr %i.hk, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i132

.lr.ph.i.i.i.i132:                                ; preds = %.lr.ph353
  %i.hl = load i8, ptr %i.hj, align 1, !tbaa !158 ; 2 uses
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bu, %.lr.ph.i.i.i.i132
  %.012.i.i.i.i = phi ptr [ %i.hk, %.lr.ph.i.i.i.i132 ], [ %.1.i.i.i.i, %bb.bu ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i132 ], [ %.19.i.i.i.i, %bb.bu ]
  %i.hm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.hn = load i8, ptr %i.hm, align 1, !tbaa !158
  %i.ho = icmp ult i8 %i.hn, %i.hl                ; 2 uses
  %.19.i.i.i.i = select i1 %i.ho, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.ho, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i.i133 = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i133, label %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESt4lessIS1_ESaISt4pairIKS1_SA_EEE11lower_boundERSE_.exit.i, label %bb.bu, !llvm.loop !160

_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESt4lessIS1_ESaISt4pairIKS1_SA_EEE11lower_boundERSE_.exit.i: ; preds = %bb.bu
  %i.hp = icmp eq ptr %.19.i.i.i.i, %i.ag
  br i1 %i.hp, label %.critedge.i, label %bb.bv

bb.bv:                                            ; preds = %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESt4lessIS1_ESaISt4pairIKS1_SA_EEE11lower_boundERSE_.exit.i
  %i.hq = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !158
  %i.hs = icmp ult i8 %i.hl, %i.hr
  br i1 %i.hs, label %.critedge.i, label %bb.cc

.critedge.i:                                      ; preds = %bb.bv, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESt4lessIS1_ESaISt4pairIKS1_SA_EEE11lower_boundERSE_.exit.i, %.lr.ph353
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.bv ], [ %.19.i.i.i.i, %_ZNSt3mapIN6duckdb13LogicalTypeIdENS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEESt4lessIS1_ESaISt4pairIKS1_SA_EEE11lower_boundERSE_.exit.i ], [ %i.ag, %.lr.ph353 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  store ptr %i.ae, ptr %5, align 8, !tbaa !754
  %i.ht = invoke noalias noundef nonnull dereferenceable(64) ptr @_Znwm(i64 noundef 64) #32
          to label %.noexc189 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 7 uses

.noexc189:                                        ; preds = %.critedge.i
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 32 ; 3 uses
  %i.hv = load i8, ptr %i.hj, align 1, !tbaa !158
  store i8 %i.hv, ptr %i.hu, align 8, !tbaa !756
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ht, i64 40 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hw, i8 0, i64 24, i1 false)
  store ptr %i.ht, ptr %i.ah, align 8, !tbaa !758
  %i.hx = invoke { ptr, ptr } @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE29_M_get_insert_hint_unique_posESt23_Rb_tree_const_iteratorISD_ERS3_(ptr noundef nonnull align 8 dereferenceable(48) %i.ae, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) %i.hu)
          to label %bb.bw unwind label %bb.bz     ; 2 uses

bb.bw:                                            ; preds = %.noexc189
  %i.hy = extractvalue { ptr, ptr } %i.hx, 0      ; 2 uses
  %i.hz = extractvalue { ptr, ptr } %i.hx, 1      ; 4 uses
  %.not.i187 = icmp eq ptr %i.hz, null
  br i1 %.not.i187, label %bb.ca, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %.not.i.i.i188 = icmp ne ptr %i.hy, null
  %i.ia = icmp eq ptr %i.hz, %i.ag
  %or.cond.i.i.i = select i1 %.not.i.i.i188, i1 true, i1 %i.ia
  br i1 %or.cond.i.i.i, label %.thread.i, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ic = load i8, ptr %i.hu, align 8, !tbaa !158
  %i.id = load i8, ptr %i.ib, align 1, !tbaa !158
  %i.ie = icmp ult i8 %i.ic, %i.id
  br label %.thread.i

.thread.i:                                        ; preds = %bb.by, %bb.bx
  %i.if = phi i1 [ %i.ie, %bb.by ], [ true, %bb.bx ]
  call void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext %i.if, ptr noundef nonnull %i.ht, ptr noundef nonnull %i.hz, ptr noundef nonnull align 8 dereferenceable(32) %i.ag) #31
  %i.ig = load i64, ptr %i.ai, align 8, !tbaa !131
  %i.ih = add i64 %i.ig, 1
  store i64 %i.ih, ptr %i.ai, align 8, !tbaa !131
  br label %.noexc134

bb.bz:                                            ; preds = %.noexc189
  %i.ii = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE10_Auto_nodeD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %5) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %.body121

bb.ca:                                            ; preds = %bb.bw
  %i.ij = load ptr, ptr %i.hw, align 8, !tbaa !162 ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ht, i64 48
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !163 ; 2 uses
  %.not4.i.i.i.i.i.i.i.i = icmp eq ptr %i.ij, %i.il
  br i1 %.not4.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.ca, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ip, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i ], [ %i.ij, %bb.ca ] ; 3 uses
  %i.im = load ptr, ptr %.05.i.i.i.i.i.i.i.i, align 8, !tbaa !103 ; 2 uses
  %i.in = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 16
  %i.io = icmp eq ptr %i.im, %i.in
  br i1 %i.io, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.im) #30
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.ip, %i.il
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !164

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i.i = load ptr, ptr %i.hw, align 8, !tbaa !162
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i, %bb.ca
  %i.iq = phi ptr [ %.pr.i.i.i.i.i.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i.i ], [ %i.ij, %bb.ca ] ; 2 uses
  %.not.i.i1.i.i.i.i.i.i = icmp eq ptr %i.iq, null
  br i1 %.not.i.i1.i.i.i.i.i.i, label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i, label %bb.cb

bb.cb:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.iq) #30
  br label %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i

_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i: ; preds = %bb.cb, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ht) #30
  br label %.noexc134

.noexc134:                                        ; preds = %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i, %.thread.i
  %.sroa.0.010.i = phi ptr [ %i.ht, %.thread.i ], [ %i.hy, %_ZNSt8_Rb_treeIN6duckdb13LogicalTypeIdESt4pairIKS1_NS0_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaISA_EEEESt10_Select1stISD_ESt4lessIS1_ESaISD_EE12_M_drop_nodeEPSt13_Rb_tree_nodeISD_E.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #31
  br label %bb.cc

bb.cc:                                            ; preds = %.noexc134, %bb.bv
  %.sroa.06.0.i = phi ptr [ %.sroa.0.010.i, %.noexc134 ], [ %.19.i.i.i.i, %bb.bv ] ; 5 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40 ; 7 uses
  %i.is = getelementptr inbounds nuw i8, ptr %.sroa.0264.0352, i64 48 ; 3 uses
  %.not.i192 = icmp eq ptr %i.is, %i.ir
  br i1 %.not.i192, label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.it = getelementptr inbounds nuw i8, ptr %.sroa.0264.0352, i64 56 ; 2 uses
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !163 ; 4 uses
  %i.iv = load ptr, ptr %i.is, align 8, !tbaa !162 ; 6 uses
  %i.iw = ptrtoint ptr %i.iu to i64
  %i.ix = ptrtoint ptr %i.iv to i64
  %i.iy = sub i64 %i.iw, %i.ix                    ; 6 uses
  %i.iz = ashr exact i64 %i.iy, 5                 ; 3 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 56 ; 2 uses
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !458
  %i.jc = load ptr, ptr %i.ir, align 8, !tbaa !162 ; 5 uses
  %i.jd = ptrtoint ptr %i.jb to i64
  %i.je = ptrtoint ptr %i.jc to i64               ; 4 uses
  %i.jf = sub i64 %i.jd, %i.je
  %i.jg = icmp ugt i64 %i.iy, %i.jf
  br i1 %i.jg, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  %i.jh = icmp ugt i64 %i.iz, 288230376151711743
  br i1 %i.jh, label %bb.cf, label %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i, !prof !157

bb.cf:                                            ; preds = %bb.ce
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #35
          to label %.noexc243 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc243:                                        ; preds = %bb.cf
  unreachable

_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i: ; preds = %bb.ce
  %i.ji = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.iy) #32
          to label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit ; 6 uses

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %_ZNSt15__new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv.exit.i.i
  %.not12.i = icmp eq ptr %i.iv, %i.iu
  br i1 %.not12.i, label %.noexc199, label %.lr.ph.i248

.lr.ph.i248:                                      ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i, %bb.ci
  %.014.i = phi ptr [ %i.jx, %bb.ci ], [ %i.ji, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i ] ; 9 uses
  %.sroa.08.013.i = phi ptr [ %i.jw, %bb.ci ], [ %i.iv, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit.i ] ; 3 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %.014.i, i64 16 ; 3 uses
  store ptr %i.jj, ptr %.014.i, align 8, !tbaa !98
  %i.jk = load ptr, ptr %.sroa.08.013.i, align 8, !tbaa !103 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i, i64 8
  %i.jm = load i64, ptr %i.jl, align 8, !tbaa !99 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 %i.jm, ptr %i.a, align 8, !tbaa !233
  %i.jn = icmp ugt i64 %i.jm, 15
  br i1 %i.jn, label %.noexc.i.i.i252, label %._crit_edge.i.i.i.i249

.noexc.i.i.i252:                                  ; preds = %.lr.ph.i248
  %i.jo = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %.014.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i261 unwind label %bb.cj ; 2 uses

.noexc.i261:                                      ; preds = %.noexc.i.i.i252
  store ptr %i.jo, ptr %.014.i, align 8, !tbaa !103
  %i.jp = load i64, ptr %i.a, align 8, !tbaa !233
  store i64 %i.jp, ptr %i.jj, align 8, !tbaa !100
  br label %._crit_edge.i.i.i.i249

end_hunk_2
