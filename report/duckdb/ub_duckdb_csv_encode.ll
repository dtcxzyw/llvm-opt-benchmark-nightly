inline.NumInlined: 421
inline.NumDeleted: 213
begin_hunk_0_@_ZN6duckdb10CSVEncoderC2ERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEm:bb.a
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.m, %bb.l
  %.pn43.pn = phi { ptr, i32 } [ %.pn43, %bb.aq ], [ %i.am, %bb.m ], [ %i.al, %bb.l ]
  %i.dd = load ptr, ptr %i.f, align 8, !tbaa !20  ; 2 uses
  %.not.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i, label %_ZN6duckdb16CSVEncoderBufferD2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i: ; preds = %bb.ar
  call void @_ZdaPv(ptr noundef nonnull %i.dd) #16
  br label %_ZN6duckdb16CSVEncoderBufferD2Ev.exit

_ZN6duckdb16CSVEncoderBufferD2Ev.exit:            ; preds = %bb.ar, %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i
  %i.de = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %.not.i.i85 = icmp eq ptr %i.de, null
  br i1 %.not.i.i85, label %_ZN6duckdb16CSVEncoderBufferD2Ev.exit87, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86: ; preds = %_ZN6duckdb16CSVEncoderBufferD2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.de) #16
  br label %_ZN6duckdb16CSVEncoderBufferD2Ev.exit87

_ZN6duckdb16CSVEncoderBufferD2Ev.exit87:          ; preds = %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i.i86, %_ZN6duckdb16CSVEncoderBufferD2Ev.exit
  %i.df = load ptr, ptr %0, align 8, !tbaa !31    ; 2 uses
  %i.dg = icmp eq ptr %i.df, %i.a
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %_ZN6duckdb16CSVEncoderBufferD2Ev.exit87
  call void @_ZdlPv(ptr noundef %i.df) #16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %_ZN6duckdb16CSVEncoderBufferD2Ev.exit87, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  resume { ptr, i32 } %.pn43.pn

bb.as:                                            ; preds = %bb.ai
  unreachable
}

declare i32 @__gxx_personality_v0(...)

declare noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512)) local_unnamed_addr #5

declare void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

declare ptr @_ZNK6duckdb8DBConfig17GetEncodeFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1360), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN6duckdb7Catalog11TryAutoLoadERNS_13ClientContextERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNK6duckdb8DBConfig25GetLoadedEncodedFunctionsEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector.280") align 8, ptr noundef nonnull align 8 dereferenceable(1360)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10shared_ptrINS_16DatabaseInstanceELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !43     ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EE13AssertNotNullEb.exit, !prof !32

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.8, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #17
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10shared_ptrINS_16DatabaseInstanceELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare noundef zeroext i1 @_ZN6duckdb16DatabaseInstance17ExtensionIsLoadedERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(1560), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c(ptr noundef nonnull align 8 dereferenceable(8), i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb16EncodingFunction7GetNameB5cxx11Ev(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !23
  %i.d = load ptr, ptr %i.b, align 8, !tbaa !31   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !25   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 %i.f, ptr %i.a, align 8, !tbaa !48
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !31
  %i.i = load i64, ptr %i.a, align 8, !tbaa !48
  store i64 %i.i, ptr %i.c, align 8, !tbaa !27
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !27
  store i8 %i.k, ptr %i.j, align 1, !tbaa !27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !48   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.l, ptr %i.m, align 8, !tbaa !25
  %i.n = load ptr, ptr %0, align 8, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(112)) local_unnamed_addr #0 align 2

declare void @_ZN6duckdb21InvalidInputExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #8

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #9 align 2

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10CSVEncoder6EncodeERNS_10FileHandleEPcm(ptr noundef nonnull align 8 dereferenceable(130) %0, ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = alloca i64, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !48
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !22   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !21
  %i.f = icmp ult i64 %i.c, %i.e
  br i1 %i.f, label %.lr.ph.preheader, label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %i.i = phi i64 [ %i.p, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.j = phi i64 [ %i.m, %.lr.ph ], [ 0, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.i
  %i.l = load i8, ptr %i.k, align 1, !tbaa !27
  %i.m = add i64 %i.j, 1                          ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !48
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 %i.j
  store i8 %i.l, ptr %i.n, align 1, !tbaa !27
  %i.o = load i64, ptr %i.b, align 8, !tbaa !49
  %i.p = add i64 %i.o, 1                          ; 3 uses
  store i64 %i.p, ptr %i.b, align 8, !tbaa !49
  %i.q = load i64, ptr %i.d, align 8, !tbaa !21
  %i.r = icmp ult i64 %i.p, %i.q
  br i1 %i.r, label %.lr.ph, label %._crit_edge, !llvm.loop !53

._crit_edge:                                      ; preds = %.lr.ph
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 16, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.pre107112 = phi i64 [ %i.m, %._crit_edge ], [ 0, %bb.a ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !tbaa !22
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !21
  %i.w = icmp ult i64 %i.t, %i.v
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  tail call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.x)
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !55   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !56
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !20
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ac, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef %i.y)
  %.pre107.pre = load i64, ptr %i.a, align 8, !tbaa !48
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.pre107 = phi i64 [ %.pre107.pre, %bb.c ], [ %.pre107112, %bb.b ]
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 129 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 104
  br label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIcSaIcEED2Ev.exit, %bb.d
  %6 = phi i64 [ %7, %_ZNSt6vectorIcSaIcEED2Ev.exit ], [ %.pre107, %bb.d ] ; 3 uses
  %i.al = icmp ult i64 %6, %3
  br i1 %i.al, label %bb.f, label %bb.ae

bb.f:                                             ; preds = %bb.e
  %i.am = load i64, ptr %i.s, align 8, !tbaa !57
  %i.an = load i64, ptr %i.u, align 8, !tbaa !21
  %.not = icmp eq i64 %i.am, %i.an
  br i1 %.not, label %.loopexit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
  %i.ao = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !58
  %i.ar = load i64, ptr %i.u, align 8, !tbaa !21
  %i.as = load i64, ptr %i.s, align 8, !tbaa !57
  %i.at = sub i64 %i.ar, %i.as                    ; 2 uses
  %i.au = icmp ugt i64 %i.aq, %i.at
  br i1 %i.au, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, label %.loopexit.thread

.preheader._crit_edge:                            ; preds = %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.av = call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.h unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.h:                                             ; preds = %.preheader._crit_edge
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  invoke void @__cxa_throw(ptr nonnull %i.av, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.l unwind label %bb.j

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %.preheader._crit_edge
  %i.aw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br label %bb.k

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0.i = phi i1 [ false, %bb.i ], [ true, %bb.h ] ; 2 uses
  %i.ax = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ay = load ptr, ptr %4, align 8, !tbaa !31    ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ba = icmp eq ptr %i.ay, %i.az
  br i1 %i.ba, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.j
  call void @_ZdlPv(ptr noundef %i.ay) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  br i1 %.0.i, label %bb.k, label %.body50

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.aw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.av) #17
  br label %.body50

bb.l:                                             ; preds = %bb.i
  unreachable

_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41: ; preds = %bb.g, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit
  %i.bb = phi ptr [ %i.bw, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.ao, %bb.g ]
  %.03090 = phi i64 [ %i.bv, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ %i.at, %bb.g ] ; 3 uses
  %.sroa.26.089 = phi ptr [ %.sroa.26.1, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 3 uses
  %.sroa.15.088 = phi ptr [ %.sroa.15.2, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 5 uses
  %.sroa.0.087 = phi ptr [ %.sroa.0.3, %_ZNSt6vectorIcSaIcEE9push_backERKc.exit ], [ null, %bb.g ] ; 17 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 64
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !58
  %i.be = icmp ult i64 %.03090, %i.bd
  br i1 %i.be, label %bb.m, label %.loopexit

.loopexit77:                                      ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.loopexit.split-lp:                               ; preds = %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.m:                                             ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  %i.bf = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %.03090 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.15.088, %.sroa.26.089
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !27
  store i8 %i.bh, ptr %.sroa.15.088, align 1, !tbaa !27
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

bb.o:                                             ; preds = %bb.m
  %i.bi = ptrtoint ptr %.sroa.26.089 to i64
  %i.bj = ptrtoint ptr %.sroa.0.087 to i64
  %i.bk = sub i64 %i.bi, %i.bj                    ; 7 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775807
  br i1 %i.bl, label %bb.p, label %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #18
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.p
  unreachable

_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bk, i64 1)
  %i.bm = add i64 %.sroa.speculated.i.i.i, %i.bk  ; 2 uses
  %i.bn = icmp ult i64 %i.bm, %i.bk
  %i.bo = call i64 @llvm.umin.i64(i64 %i.bm, i64 9223372036854775807)
  %i.bp = select i1 %i.bn, i64 9223372036854775807, i64 %i.bo ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.bp, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bp) #15
          to label %.noexc42 unwind label %.loopexit77 ; 4 uses

.noexc42:                                         ; preds = %_ZNKSt6vectorIcSaIcEE12_M_check_lenEmPKc.exit.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bk ; 2 uses
  %i.bs = load i8, ptr %i.bg, align 1, !tbaa !27
  store i8 %i.bs, ptr %i.br, align 1, !tbaa !27
  %i.bt = icmp sgt i64 %i.bk, 0
  br i1 %i.bt, label %bb.q, label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %.noexc42
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.bq, ptr align 1 %.sroa.0.087, i64 %i.bk, i1 false)
  br label %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %.noexc42
  %.not.i17.i.i = icmp eq ptr %.sroa.0.087, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.087) #16
  br label %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i

_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorIcSaIcEE11_S_relocateEPcS2_S2_RS0_.exit16.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  br label %_ZNSt6vectorIcSaIcEE9push_backERKc.exit

_ZNSt6vectorIcSaIcEE9push_backERKc.exit:          ; preds = %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i, %bb.n
  %.sroa.0.3 = phi ptr [ %i.bq, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.0.087, %bb.n ] ; 4 uses
  %.pn = phi ptr [ %i.br, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.15.088, %bb.n ]
  %.sroa.26.1 = phi ptr [ %i.bu, %_ZNSt6vectorIcSaIcEE17_M_realloc_insertIJRKcEEEvN9__gnu_cxx17__normal_iteratorIPcS1_EEDpOT_.exit.i ], [ %.sroa.26.089, %bb.n ]
  %.sroa.15.2 = getelementptr inbounds nuw i8, ptr %.pn, i64 1
  %i.bv = add nuw i64 %.03090, 1
  %i.bw = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %.not.i49 = icmp eq ptr %i.bw, null
  br i1 %.not.i49, label %.preheader._crit_edge, label %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41, !llvm.loop !59

.loopexit.thread:                                 ; preds = %bb.f, %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  br label %._crit_edge96

.loopexit:                                        ; preds = %_ZN6duckdb12optional_ptrINS_16EncodingFunctionELb1EEptEv.exit41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.s, i8 0, i64 16, i1 false)
  %i.bx = ptrtoint ptr %.sroa.15.088 to i64       ; 2 uses
  %i.by = ptrtoint ptr %.sroa.0.087 to i64        ; 2 uses
  %i.bz = sub i64 %i.bx, %i.by                    ; 4 uses
  %.not98 = icmp eq ptr %.sroa.15.088, %.sroa.0.087
  br i1 %.not98, label %._crit_edge96, label %.lr.ph95.preheader

.lr.ph95.preheader:                               ; preds = %.loopexit
  %xtraiter = and i64 %i.bz, 3                    ; 3 uses
  %i.ca = sub i64 %i.by, %i.bx
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %.lr.ph95.epil.preheader, label %.lr.ph95.preheader.new

.lr.ph95.preheader.new:                           ; preds = %.lr.ph95.preheader
  %unroll_iter = and i64 %i.bz, -4
  br label %.lr.ph95

._crit_edge96.loopexit.unr-lcssa:                 ; preds = %.lr.ph95
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge96, label %.lr.ph95.epil.preheader

.lr.ph95.epil.preheader:                          ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.preheader
  %.03193.epil.init = phi i64 [ 0, %.lr.ph95.preheader ], [ %i.dd, %._crit_edge96.loopexit.unr-lcssa ]
  %lcmp.mod156 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod156)
  br label %.lr.ph95.epil

.lr.ph95.epil:                                    ; preds = %.lr.ph95.epil, %.lr.ph95.epil.preheader
  %.03193.epil = phi i64 [ %i.cg, %.lr.ph95.epil ], [ %.03193.epil.init, %.lr.ph95.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph95.epil ], [ 0, %.lr.ph95.epil.preheader ]
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193.epil
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !27
  %i.ce = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.03193.epil
  store i8 %i.cd, ptr %i.cf, align 1, !tbaa !27
  %i.cg = add nuw i64 %.03193.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge96, label %.lr.ph95.epil, !llvm.loop !60

._crit_edge96:                                    ; preds = %._crit_edge96.loopexit.unr-lcssa, %.lr.ph95.epil, %.loopexit.thread, %.loopexit
  %i.ch = phi i64 [ 0, %.loopexit.thread ], [ 0, %.loopexit ], [ %i.bz, %.lr.ph95.epil ], [ %i.bz, %._crit_edge96.loopexit.unr-lcssa ] ; 5 uses
  %.sroa.0.1119 = phi ptr [ null, %.loopexit.thread ], [ %.sroa.0.087, %.loopexit ], [ %.sroa.0.087, %.lr.ph95.epil ], [ %.sroa.0.087, %._crit_edge96.loopexit.unr-lcssa ] ; 4 uses
  %i.ci = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.cj = trunc nuw i8 %i.ci to i1
  %.pre107.a = load ptr, ptr %i.ae, align 8, !tbaa !20 ; 2 uses
  br i1 %i.cj, label %bb.s, label %bb.t

.lr.ph95:                                         ; preds = %.lr.ph95, %.lr.ph95.preheader.new
  %.03193 = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %i.dd, %.lr.ph95 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph95.preheader.new ], [ %niter.next.3, %.lr.ph95 ]
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %.03193
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !27
  %i.cm = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 %.03193
  store i8 %i.cl, ptr %i.cn, align 1, !tbaa !27
  %i.co = or disjoint i64 %.03193, 1              ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !27
  %i.cr = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.co
  store i8 %i.cq, ptr %i.cs, align 1, !tbaa !27
  %i.ct = or disjoint i64 %.03193, 2              ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !27
  %i.cw = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 %i.ct
  store i8 %i.cv, ptr %i.cx, align 1, !tbaa !27
  %i.cy = or disjoint i64 %.03193, 3              ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.0.087, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !27
  %i.db = load ptr, ptr %i.ae, align 8, !tbaa !20
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  store i8 %i.da, ptr %i.dc, align 1, !tbaa !27
  %i.dd = add nuw i64 %.03193, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge96.loopexit.unr-lcssa, label %.lr.ph95, !llvm.loop !65

bb.s:                                             ; preds = %._crit_edge96
  %i.de = load i8, ptr %i.ag, align 8, !tbaa !66
  %i.df = getelementptr inbounds nuw i8, ptr %.pre107.a, i64 %i.ch
  store i8 %i.de, ptr %i.df, align 1, !tbaa !27
  %.pre.a = load ptr, ptr %i.ae, align 8, !tbaa !20
  %.pre108 = load i8, ptr %i.af, align 1, !tbaa !62, !range !63
  %i.dg = zext nneg i8 %.pre108 to i64
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge96
  %i.dh = phi i64 [ %i.dg, %bb.s ], [ 0, %._crit_edge96 ] ; 2 uses
  %i.di = phi ptr [ %.pre.a, %bb.s ], [ %.pre107.a, %._crit_edge96 ]
  %.sroa.02.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 %i.ch
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.dh
  %i.dl = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.dm = add i64 %i.ch, %i.dh
  %i.dn = sub i64 %i.dl, %i.dm
  %i.do = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.02.0.copyload, ptr noundef %i.dk, i64 noundef %i.dn)
          to label %bb.u unwind label %bb.v       ; 2 uses

bb.u:                                             ; preds = %bb.t
  %i.dp = add i64 %i.do, %i.ch
  %i.dq = load i8, ptr %i.af, align 1, !tbaa !62, !range !63, !noundef !64
  %i.dr = zext nneg i8 %i.dq to i64
  %i.ds = add i64 %i.dp, %i.dr
  store i64 %i.ds, ptr %i.u, align 8, !tbaa !21
  %i.dt = load i64, ptr %i.ai, align 8, !tbaa !7
  %i.du = sub i64 %i.dt, %i.ch
  %i.dv = icmp ult i64 %i.do, %i.du
  br i1 %i.dv, label %.sink.split, label %bb.w

bb.v:                                             ; preds = %bb.z, %bb.aa, %bb.t
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.body50

bb.w:                                             ; preds = %bb.u
  %.sroa.0.0.copyload = load ptr, ptr %i.ah, align 8, !tbaa !67
  %i.dx = invoke noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr %.sroa.0.0.copyload, ptr noundef nonnull %i.ag, i64 noundef 1)
          to label %bb.x unwind label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %.sink.split, label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.dz = landingpad { ptr, i32 }
          cleanup
  br label %.body50

.sink.split:                                      ; preds = %bb.x, %bb.u
  store i8 1, ptr %i.aj, align 8, !tbaa !68
  br label %bb.z

bb.z:                                             ; preds = %.sink.split, %bb.x
  %storemerge36 = phi i8 [ 1, %bb.x ], [ 0, %.sink.split ]
  store i8 %storemerge36, ptr %i.af, align 1, !tbaa !62
  invoke void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ad)
          to label %bb.aa unwind label %bb.v

bb.aa:                                            ; preds = %bb.z
  %i.ea = load ptr, ptr %i.ad, align 8, !tbaa !55 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !56
  %i.ed = load ptr, ptr %i.ak, align 8, !tbaa !20
  invoke void %i.ec(ptr noundef nonnull align 8 dereferenceable(40) %i.s, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef %3, ptr noundef %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.ea)
          to label %bb.ab unwind label %bb.v

bb.ab:                                            ; preds = %bb.aa
  %i.ee = load i64, ptr %i.a, align 8, !tbaa !48  ; 2 uses
  %.not38 = icmp eq i64 %i.ee, %6
  %.not.i.i.i46 = icmp eq ptr %.sroa.0.1119, null
  br i1 %.not.i.i.i46, label %_ZNSt6vectorIcSaIcEED2Ev.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.1119) #16
  %.pre = load i64, ptr %i.a, align 8, !tbaa !48
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit

_ZNSt6vectorIcSaIcEED2Ev.exit:                    ; preds = %bb.ab, %bb.ac
  %7 = phi i64 [ %i.ee, %bb.ab ], [ %.pre, %bb.ac ]
  br i1 %.not38, label %bb.ae, label %bb.e, !llvm.loop !69

.body50:                                          ; preds = %.loopexit77, %.loopexit.split-lp, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %bb.v, %bb.y
  %.sroa.0.2 = phi ptr [ %.sroa.0.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.sroa.0.1119, %bb.v ], [ %.sroa.0.1119, %bb.y ], [ %.sroa.0.3, %bb.k ], [ %.sroa.0.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %.sroa.0.087, %.loopexit77 ], [ %.sroa.0.087, %.loopexit.split-lp ] ; 2 uses
  %.pn39 = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.dw, %bb.v ], [ %i.dz, %bb.y ], [ %.pn9.i, %bb.k ], [ %i.ax, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %lpad.loopexit, %.loopexit77 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.not.i.i.i47 = icmp eq ptr %.sroa.0.2, null
  br i1 %.not.i.i.i47, label %_ZNSt6vectorIcSaIcEED2Ev.exit48, label %bb.ad

bb.ad:                                            ; preds = %.body50
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0.2) #16
  br label %_ZNSt6vectorIcSaIcEED2Ev.exit48

_ZNSt6vectorIcSaIcEED2Ev.exit48:                  ; preds = %.body50, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  resume { ptr, i32 } %.pn39

bb.ae:                                            ; preds = %bb.e, %_ZNSt6vectorIcSaIcEED2Ev.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i64 %6
}

declare noundef i64 @_ZN6duckdb10FileHandle4ReadENS_12QueryContextEPvm(ptr noundef nonnull align 8 dereferenceable(80), ptr, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_16EncodingFunctionELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !55
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #17 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.11, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #18
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !31     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #17
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #17
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { builtin allocsize(0) }
attributes #16 = { builtin nounwind }
attributes #17 = { nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 32}
!8 = !{!"_ZTSN6duckdb16CSVEncoderBufferE", !9, i64 0, !9, i64 8, !10, i64 16, !11, i64 24, !9, i64 32}
!9 = !{!"long", !5, i64 0}
!10 = !{!"bool", !5, i64 0}
!11 = !{!"_ZTSN6duckdb10unique_ptrIA_cSt14default_deleteIS1_ELb1EEE", !12, i64 0}
!12 = !{!"_ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !13, i64 0}
!13 = !{!"_ZTSSt15__uniq_ptr_dataIcSt14default_deleteIA_cELb1ELb1EE", !14, i64 0}
!14 = !{!"_ZTSSt15__uniq_ptr_implIcSt14default_deleteIA_cEE", !15, i64 0}
!15 = !{!"_ZTSSt5tupleIJPcSt14default_deleteIA_cEEE", !16, i64 0}
!16 = !{!"_ZTSSt11_Tuple_implILm0EJPcSt14default_deleteIA_cEEE", !17, i64 0}
!17 = !{!"_ZTSSt10_Head_baseILm0EPcLb0EE", !18, i64 0}
!18 = !{!"p1 omnipotent char", !19, i64 0}
!19 = !{!"any pointer", !5, i64 0}
!20 = !{!18, !18, i64 0}
!21 = !{!8, !9, i64 8}
!22 = !{!8, !9, i64 0}
!23 = !{!24, !18, i64 0}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !18, i64 0}
!25 = !{!26, !9, i64 8}
!26 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !24, i64 0, !9, i64 8, !5, i64 16}
!27 = !{!5, !5, i64 0}
!28 = !{!29, !30, i64 0}
!29 = !{!"_ZTSN6duckdb12optional_ptrINS_13ClientContextELb1EEE", !30, i64 0}
!30 = !{!"p1 _ZTSN6duckdb13ClientContextE", !19, i64 0}
!31 = !{!26, !18, i64 0}
!32 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTSN6duckdb16EncodingFunctionE", !19, i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"p1 _ZTSSt17reference_wrapperIN6duckdb16EncodingFunctionEE", !19, i64 0}
!37 = !{!38, !34, i64 0}
!38 = !{!"_ZTSSt17reference_wrapperIN6duckdb16EncodingFunctionEE", !34, i64 0}
!39 = !{!40, !36, i64 0}
!40 = !{!"_ZTSNSt12_Vector_baseISt17reference_wrapperIN6duckdb16EncodingFunctionEESaIS3_EE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!41 = !{!42, !9, i64 56}
!42 = !{!"_ZTSN6duckdb16EncodingFunctionE", !19, i64 0, !9, i64 8, !26, i64 16, !19, i64 48, !9, i64 56, !9, i64 64}
!43 = !{!44, !45, i64 0}
!44 = !{!"_ZTSSt12__shared_ptrIN6duckdb16DatabaseInstanceELN9__gnu_cxx12_Lock_policyE2EE", !45, i64 0, !46, i64 8}
!45 = !{!"p1 _ZTSN6duckdb16DatabaseInstanceE", !19, i64 0}
!46 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !47, i64 0}
!47 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !19, i64 0}
!48 = !{!9, !9, i64 0}
!49 = !{!50, !9, i64 80}
end_hunk_0
