inline.NumInlined: 1494
inline.NumDeleted: 609
begin_hunk_0_@_ZN6duckdbL19ComputeSHA256BufferEPKcmmPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE:bb.a
  %i.d = sub i64 %2, %1
  call void @_ZN14duckdb_mbedtls14MbedTlsWrapper17ComputeSha256HashEPKcmPc(ptr noundef %i.c, i64 noundef %i.d, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 7 uses
  store ptr %i.e, ptr %4, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 32, ptr %i.a, align 8, !tbaa !19
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.f, ptr %4, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.g, ptr %i.e, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.f, ptr noundef nonnull align 16 dereferenceable(32) %i.b, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  store i64 %i.g, ptr %i.h, align 8, !tbaa !11
  %i.i = load ptr, ptr %4, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  store i8 0, ptr %i.j, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.k = load ptr, ptr %3, align 8, !tbaa !20     ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.m = icmp eq ptr %i.k, %i.l
  %i.n = load ptr, ptr %4, align 8, !tbaa !20     ; 6 uses
  %i.o = icmp eq ptr %i.n, %i.e                   ; 2 uses
  br i1 %i.m, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  br i1 %i.o, label %bb.b, label %.thread.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  br i1 %i.o, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i

bb.b:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.p = load i64, ptr %i.h, align 8, !tbaa !11   ; 3 uses
  %i.q = icmp ult i64 %i.p, 16
  call void @llvm.assume(i1 %i.q)
  %.not21.i = icmp eq ptr %4, %3
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  switch i64 %i.p, label %bb.e [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.r = load i8, ptr %i.n, align 1, !tbaa !14
  store i8 %i.r, ptr %i.k, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.k, ptr align 1 %i.n, i64 %i.p, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %i.s = load i64, ptr %i.h, align 8, !tbaa !11   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.s, ptr %i.t, align 8, !tbaa !11
  %i.u = load ptr, ptr %3, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !14
  %.pre.i = load ptr, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

.thread.i:                                        ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.n, ptr %3, align 8, !tbaa !20
  %i.x = load <2 x i64>, ptr %i.h, align 8, !tbaa !14
  store <2 x i64> %i.x, ptr %i.w, align 8, !tbaa !14
  br label %bb.g

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.y = load i64, ptr %i.l, align 8, !tbaa !14
  store ptr %i.n, ptr %3, align 8, !tbaa !20
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.aa = load <2 x i64>, ptr %i.h, align 8, !tbaa !14
  store <2 x i64> %i.aa, ptr %i.z, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i
  store ptr %i.k, ptr %4, align 8, !tbaa !20
  store i64 %i.y, ptr %i.e, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i, %.thread.i
  store ptr %i.e, ptr %4, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %bb.b, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, %bb.f, %bb.g
  %i.ab = phi ptr [ %i.k, %bb.f ], [ %i.e, %bb.g ], [ %i.n, %bb.b ], [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ]
  store i64 0, ptr %i.h, align 8, !tbaa !11
  store i8 0, ptr %i.ab, align 1, !tbaa !14
  %i.ac = load ptr, ptr %4, align 8, !tbaa !20    ; 2 uses
  %i.ad = icmp eq ptr %i.ac, %i.e
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  call void @_ZdlPv(ptr noundef %i.ac) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ExtensionHelper29CheckExtensionBufferSignatureEPKcmb(ptr noundef %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  store ptr %i.b, ptr %3, align 8, !tbaa !7
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.42) #23
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = add i64 %1, -256                         ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 %i.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 256, ptr %i.a, align 8, !tbaa !19
  %i.f = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 3 uses
  store ptr %i.f, ptr %3, align 8, !tbaa !20
  %i.g = load i64, ptr %i.a, align 8, !tbaa !19   ; 3 uses
  store i64 %i.g, ptr %i.b, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %i.f, ptr noundef nonnull align 1 dereferenceable(256) %i.e, i64 256, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.g
  store i8 0, ptr %i.i, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.j = invoke noundef zeroext i1 @_ZN6duckdb15ExtensionHelper29CheckExtensionBufferSignatureEPKcmRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEb(ptr noundef nonnull %0, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(32) %3, i1 noundef zeroext %2)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.l = icmp eq ptr %i.k, %i.b
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.k) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret i1 %i.j

bb.d:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  %i.n = load ptr, ptr %3, align 8, !tbaa !20     ; 2 uses
  %i.o = icmp eq ptr %i.n, %i.b
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10: ; preds = %bb.d
  call void @_ZdlPv(ptr noundef %i.n) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit12: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  resume { ptr, i32 } %i.m
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ExtensionHelper14TryInitialLoadERNS_16DatabaseInstanceERNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_19ExtensionInitResultERSA_(ptr noundef nonnull align 8 dereferenceable(1560) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(88) %3, ptr nofree noundef nonnull align 8 captures(address) dereferenceable(32) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::vector.434", align 8   ; 9 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 5 uses
  %6 = alloca %"class.std::vector.434", align 8   ; 9 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca i64, align 8                      ; 5 uses
  %i.h = alloca i64, align 8                      ; 5 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %8 = alloca %"class.std::allocator", align 1    ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 47 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %11 = alloca %"class.duckdb::vector", align 8   ; 19 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.duckdb::vector", align 8   ; 9 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %19 = alloca %"class.std::allocator", align 1   ; 5 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %25 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %27 = alloca %"class.duckdb::unique_ptr.296", align 8 ; 8 uses
  %28 = alloca %"struct.duckdb::ParsedExtensionMetaData", align 8 ; 28 uses
  %29 = alloca %"class.std::__cxx11::basic_string", align 8 ; 17 uses
  %30 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %35 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %38 = alloca %"class.std::allocator", align 1   ; 5 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %40 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %41 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %42 = alloca %"class.duckdb::unique_ptr.310", align 8 ; 7 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %44 = alloca %"class.std::allocator", align 1   ; 5 uses
  %i.l = tail call noundef zeroext i1 @_ZN6duckdb8Settings3GetINS_27EnableExternalAccessSettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEEbEE5valueEbE4typeERKT0_(ptr noundef nonnull align 8 dereferenceable(1560) %0)
  br i1 %i.l, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = tail call ptr @__cxa_allocate_exception(i64 16) #22 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull @.str.5, ptr noundef nonnull align 1 dereferenceable(1) %8)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb19PermissionExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTIN6duckdb19PermissionExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #23
          to label %bb.gw unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0106 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.p = load ptr, ptr %7, align 8, !tbaa !20     ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.r = icmp eq ptr %i.p, %i.q
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.p) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0106, label %bb.f, label %bb.gv

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br i1 %.0106, label %bb.f, label %bb.gv

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn492 = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.o, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.o, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.m) #22
  br label %bb.gv

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  call void @_ZN6duckdb10FileSystem17ConvertSeparatorsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %i.s = invoke noundef zeroext i1 @_ZN6duckdb15ExtensionHelper10IsFullPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.h unwind label %bb.q       ; 2 uses

bb.h:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.bg, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  invoke void @_ZN6duckdb15ExtensionHelper19ApplyExtensionAliasERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #22
  invoke void @_ZN6duckdb8Settings3GetINS_25ExtensionDirectorySettingENS_16DatabaseInstanceEEENSt9enable_ifIXsr3std7is_sameINT_11RETURN_TYPEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE5valueESC_E4typeERKT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1560) %0)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !11   ; 5 uses
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !21   ; 8 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !23
  %.not.i = icmp eq ptr %i.x, %i.z
  br i1 %.not.i, label %bb.p, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 16 ; 4 uses
  store ptr %i.aa, ptr %i.x, align 8, !tbaa !7
  %i.ab = load ptr, ptr %12, align 8, !tbaa !20   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #22
  store i64 %i.u, ptr %i.k, align 8, !tbaa !19
  %i.ac = icmp ugt i64 %i.u, 15
  br i1 %i.ac, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.m
  %i.ad = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %._crit_edge.i.i.i.thread unwind label %bb.t ; 2 uses

._crit_edge.i.i.i.thread:                         ; preds = %.noexc.i.i
  store ptr %i.ad, ptr %i.x, align 8, !tbaa !20
  %i.ae = load i64, ptr %i.k, align 8, !tbaa !19
  store i64 %i.ae, ptr %i.aa, align 8, !tbaa !14
  br label %bb.o

._crit_edge.i.i.i:                                ; preds = %bb.m
  %cond = icmp eq i64 %i.u, 1
  br i1 %cond, label %bb.n, label %bb.o

bb.n:                                             ; preds = %._crit_edge.i.i.i
  %i.af = load i8, ptr %i.ab, align 1, !tbaa !14
  store i8 %i.af, ptr %i.aa, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

bb.o:                                             ; preds = %._crit_edge.i.i.i.thread, %._crit_edge.i.i.i
  %i.ag = phi ptr [ %i.ad, %._crit_edge.i.i.i.thread ], [ %i.aa, %._crit_edge.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ag, ptr align 1 %i.ab, i64 %i.u, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i: ; preds = %bb.o, %bb.n
  %i.ah = load i64, ptr %i.k, align 8, !tbaa !19  ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store i64 %i.ah, ptr %i.ai, align 8, !tbaa !11
  %i.aj = load ptr, ptr %i.x, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ah
  store i8 0, ptr %i.ak, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #22
  %i.al = load ptr, ptr %i.w, align 8, !tbaa !21
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 32
  store ptr %i.am, ptr %i.w, align 8, !tbaa !21
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit

bb.p:                                             ; preds = %bb.l
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRKS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr %i.x, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit unwind label %bb.t

bb.q:                                             ; preds = %bb.bw, %bb.g
  %i.an = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

bb.r:                                             ; preds = %bb.i
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit218

bb.s:                                             ; preds = %bb.j
  %i.ap = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit215

bb.t:                                             ; preds = %bb.p, %.noexc.i.i
  %i.aq = landingpad { ptr, i32 }
          cleanup
  br label %bb.bf

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit.i, %bb.p, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !15 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !15 ; 2 uses
  %i.av = icmp eq ptr %i.as, %i.au
  br i1 %i.av, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %11, i64 16
  br label %bb.u

bb.u:                                             ; preds = %.preheader, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit172
  %.sroa.0486.0526 = phi ptr [ %i.as, %.preheader ], [ %i.bp, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backERKS5_.exit172 ] ; 4 uses
  %i.ay = load ptr, ptr %i.aw, align 8, !tbaa !21 ; 8 uses
  %i.az = load ptr, ptr %i.ax, align 8, !tbaa !23
  %.not.i166 = icmp eq ptr %i.ay, %i.az
  br i1 %.not.i166, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 3 uses
  store ptr %i.ba, ptr %i.ay, align 8, !tbaa !7
  %i.bb = load ptr, ptr %.sroa.0486.0526, align 8, !tbaa !20 ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN6duckdb15ExtensionHelper14TryInitialLoadERNS_16DatabaseInstanceERNS_10FileSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_19ExtensionInitResultERSA_:bb.a
          cleanup
  br label %bb.db

bb.ci:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i, %bb.cd
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

bb.cj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendERKS4_.exit.i, %bb.cg
  %i.jt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ju = load ptr, ptr %21, align 8, !tbaa !20   ; 2 uses
  %i.jv = icmp eq ptr %i.ju, %i.iv
  br i1 %i.jv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252: ; preds = %bb.cj
  call void @_ZdlPv(ptr noundef %i.ju) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254: ; preds = %bb.cj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252, %bb.ci
  %.pn152 = phi { ptr, i32 } [ %i.js, %bb.ci ], [ %i.jt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i252 ], [ %i.jt, %bb.cj ] ; 2 uses
  %i.jw = load ptr, ptr %22, align 8, !tbaa !20   ; 2 uses
  %i.jx = icmp eq ptr %i.jw, %i.id
  br i1 %i.jx, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.cc
  %.sink = phi ptr [ %i.ip, %bb.cc ], [ %i.jw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ]
  %.pn152.pn.ph = phi { ptr, i32 } [ %i.io, %bb.cc ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ]
  call void @_ZdlPv(ptr noundef %.sink) #24
  br label %.body

.body:                                            ; preds = %.body.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254, %bb.cc
  %.pn152.pn = phi { ptr, i32 } [ %i.io, %bb.cc ], [ %.pn152, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit254 ], [ %.pn152.pn.ph, %.body.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #22
  br label %bb.db

.noexc.i259:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit251, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #22
  %i.jy = getelementptr inbounds nuw i8, ptr %24, i64 16 ; 4 uses
  store ptr %i.jy, ptr %24, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #22
  store i64 28, ptr %i.g, align 8, !tbaa !19
  %i.jz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 0)
          to label %.noexc260 unwind label %bb.cy ; 2 uses

.noexc260:                                        ; preds = %.noexc.i259
  store ptr %i.jz, ptr %24, align 8, !tbaa !20
  %i.ka = load i64, ptr %i.g, align 8, !tbaa !19  ; 3 uses
  store i64 %i.ka, ptr %i.jy, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(28) %i.jz, ptr noundef nonnull align 1 dereferenceable(28) @.str.10, i64 28, i1 false)
  %i.kb = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i64 %i.ka, ptr %i.kb, align 8, !tbaa !11
  %i.kc = load ptr, ptr %24, align 8, !tbaa !20
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 %i.ka
  store i8 0, ptr %i.kd, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #22
  %i.ke = getelementptr inbounds nuw i8, ptr %25, i64 16 ; 5 uses
  store ptr %i.ke, ptr %25, align 8, !tbaa !7
  %i.kf = load ptr, ptr %9, align 8, !tbaa !20    ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #22
  store i64 %i.kh, ptr %i.f, align 8, !tbaa !19
  %i.ki = icmp ugt i64 %i.kh, 15
  br i1 %i.ki, label %.noexc.i263, label %._crit_edge.i.i262

.noexc.i263:                                      ; preds = %.noexc260
  %i.kj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
          to label %.noexc264 unwind label %bb.cz ; 2 uses

.noexc264:                                        ; preds = %.noexc.i263
  store ptr %i.kj, ptr %25, align 8, !tbaa !20
  %i.kk = load i64, ptr %i.f, align 8, !tbaa !19
  store i64 %i.kk, ptr %i.ke, align 8, !tbaa !14
  br label %._crit_edge.i.i262

._crit_edge.i.i262:                               ; preds = %.noexc264, %.noexc260
  %i.kl = phi ptr [ %i.kj, %.noexc264 ], [ %i.ke, %.noexc260 ] ; 2 uses
  switch i64 %i.kh, label %bb.cl [
    i64 1, label %bb.ck
    i64 0, label %bb.cm
  ]

bb.ck:                                            ; preds = %._crit_edge.i.i262
  %i.km = load i8, ptr %i.kf, align 1, !tbaa !14
  store i8 %i.km, ptr %i.kl, align 1, !tbaa !14
  br label %bb.cm

bb.cl:                                            ; preds = %._crit_edge.i.i262
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kl, ptr align 1 %i.kf, i64 %i.kh, i1 false)
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck, %._crit_edge.i.i262
  %i.kn = load i64, ptr %i.f, align 8, !tbaa !19  ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i64 %i.kn, ptr %i.ko, align 8, !tbaa !11
  %i.kp = load ptr, ptr %25, align 8, !tbaa !20
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kp, i64 %i.kn
  store i8 0, ptr %i.kq, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #22
  %i.kr = getelementptr inbounds nuw i8, ptr %26, i64 16 ; 5 uses
  store ptr %i.kr, ptr %26, align 8, !tbaa !7
  %i.ks = load ptr, ptr %20, align 8, !tbaa !20   ; 2 uses
  %i.kt = load i64, ptr %i.hy, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 %i.kt, ptr %i.e, align 8, !tbaa !19
  %i.ku = icmp ugt i64 %i.kt, 15
  br i1 %i.ku, label %.noexc.i266, label %._crit_edge.i.i265

.noexc.i266:                                      ; preds = %bb.cm
  %i.kv = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %26, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc267 unwind label %bb.da ; 2 uses

.noexc267:                                        ; preds = %.noexc.i266
  store ptr %i.kv, ptr %26, align 8, !tbaa !20
  %i.kw = load i64, ptr %i.e, align 8, !tbaa !19
  store i64 %i.kw, ptr %i.kr, align 8, !tbaa !14
  br label %._crit_edge.i.i265

._crit_edge.i.i265:                               ; preds = %.noexc267, %bb.cm
  %i.kx = phi ptr [ %i.kv, %.noexc267 ], [ %i.kr, %bb.cm ] ; 2 uses
  switch i64 %i.kt, label %bb.co [
    i64 1, label %bb.cn
    i64 0, label %bb.cp
  ]

bb.cn:                                            ; preds = %._crit_edge.i.i265
  %i.ky = load i8, ptr %i.ks, align 1, !tbaa !14
  store i8 %i.ky, ptr %i.kx, align 1, !tbaa !14
  br label %bb.cp

bb.co:                                            ; preds = %._crit_edge.i.i265
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.kx, ptr align 1 %i.ks, i64 %i.kt, i1 false)
  br label %bb.cp

bb.cp:                                            ; preds = %bb.co, %bb.cn, %._crit_edge.i.i265
  %i.kz = load i64, ptr %i.e, align 8, !tbaa !19  ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %26, i64 8
  store i64 %i.kz, ptr %i.la, align 8, !tbaa !11
  %i.lb = load ptr, ptr %26, align 8, !tbaa !20
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 %i.kz
  store i8 0, ptr %i.lc, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22, !noalias !92
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !92
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS7_EEES7_S9_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %23, ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %26)
          to label %bb.cq unwind label %.body269

bb.cq:                                            ; preds = %bb.cp
  %i.ld = load ptr, ptr %6, align 8, !tbaa !57, !noalias !92 ; 3 uses
  %i.le = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.lf = load ptr, ptr %i.le, align 8, !tbaa !60, !noalias !92 ; 2 uses
  %.not4.i.i.i.i.i = icmp eq ptr %i.ld, %i.lf
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cq, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.lk, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i ], [ %i.ld, %bb.cq ] ; 3 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 32
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !20 ; 2 uses
  %i.li = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 48
  %i.lj = icmp eq ptr %i.lh, %i.li
  br i1 %i.lj, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.lh) #24
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i
  %i.lk = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.lk, %i.lf
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !61

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i.i
  %.pr.i.i.i = load ptr, ptr %6, align 8, !tbaa !57, !noalias !92
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i, %bb.cq
  %i.ll = phi ptr [ %.pr.i.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i.i ], [ %i.ld, %bb.cq ] ; 2 uses
  %.not.i.i1.i.i.i = icmp eq ptr %i.ll, null
  br i1 %.not.i.i1.i.i.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ll) #24
  br label %bb.cs

.body269:                                         ; preds = %bb.cp
  %i.lm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !92
  %i.ln = load ptr, ptr %26, align 8, !tbaa !20   ; 2 uses
  %i.lo = icmp eq ptr %i.ln, %i.kr
  br i1 %i.lo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294

bb.cs:                                            ; preds = %bb.cr, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22, !noalias !92
  %i.lp = load ptr, ptr %4, align 8, !tbaa !20    ; 6 uses
  %i.lq = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.lr = icmp eq ptr %i.lp, %i.lq
  %i.ls = load ptr, ptr %23, align 8, !tbaa !20   ; 6 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.lu = icmp eq ptr %i.ls, %i.lt                ; 2 uses
  br i1 %i.lr, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i276, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i271

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i276: ; preds = %bb.cs
  br i1 %i.lu, label %bb.ct, label %.thread.i277

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i271: ; preds = %bb.cs
  br i1 %i.lu, label %bb.ct, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i272

bb.ct:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i271, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i276
  %i.lv = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 2 uses
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !11 ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 16
  call void @llvm.assume(i1 %i.lx)
  %.not21.i = icmp eq ptr %23, %4
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278, label %45, !prof !29

45:                                               ; preds = %bb.ct
  switch i64 %i.lw, label %bb.cv [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274
    i64 1, label %bb.cu
  ]

bb.cu:                                            ; preds = %45
  %i.ly = load i8, ptr %i.ls, align 1, !tbaa !14
  store i8 %i.ly, ptr %i.lp, align 1, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274

bb.cv:                                            ; preds = %45
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.lp, ptr align 1 %i.ls, i64 %i.lw, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274: ; preds = %bb.cv, %bb.cu, %45
  %i.lz = load i64, ptr %i.lv, align 8, !tbaa !11 ; 2 uses
  %i.ma = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.lz, ptr %i.ma, align 8, !tbaa !11
  %i.mb = load ptr, ptr %4, align 8, !tbaa !20
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 %i.lz
  store i8 0, ptr %i.mc, align 1, !tbaa !14
  %.pre.i275 = load ptr, ptr %23, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278

.thread.i277:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i276
  %i.md = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.ls, ptr %4, align 8, !tbaa !20
  %i.me = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.mf = load <2 x i64>, ptr %i.me, align 8, !tbaa !14
  store <2 x i64> %i.mf, ptr %i.md, align 8, !tbaa !14
  br label %bb.cx

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i272: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i271
  %i.mg = load i64, ptr %i.lq, align 8, !tbaa !14
  store ptr %i.ls, ptr %4, align 8, !tbaa !20
  %i.mh = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.mi = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.mj = load <2 x i64>, ptr %i.mh, align 8, !tbaa !14
  store <2 x i64> %i.mj, ptr %i.mi, align 8, !tbaa !14
  %.not.i273 = icmp eq ptr %i.lp, null
  br i1 %.not.i273, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i272
  store ptr %i.lp, ptr %23, align 8, !tbaa !20
  store i64 %i.mg, ptr %i.lt, align 8, !tbaa !14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278

bb.cx:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i272, %.thread.i277
  store ptr %i.lt, ptr %23, align 8, !tbaa !20
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278: ; preds = %bb.ct, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274, %bb.cw, %bb.cx
  %46 = phi ptr [ %i.lp, %bb.cw ], [ %i.lt, %bb.cx ], [ %i.ls, %bb.ct ], [ %.pre.i275, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i274 ]
  %i.mk = getelementptr inbounds nuw i8, ptr %23, i64 8
  store i64 0, ptr %i.mk, align 8, !tbaa !11
  store i8 0, ptr %46, align 1, !tbaa !14
  %i.ml = load ptr, ptr %23, align 8, !tbaa !20   ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %23, i64 16
  %i.mn = icmp eq ptr %i.ml, %i.mm
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278
  call void @_ZdlPv(ptr noundef %i.ml) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit278, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i279
  %i.mo = load ptr, ptr %26, align 8, !tbaa !20   ; 2 uses
  %i.mp = icmp eq ptr %i.mo, %i.kr
  br i1 %i.mp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281
  call void @_ZdlPv(ptr noundef %i.mo) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  %i.mq = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.mr = icmp eq ptr %i.mq, %i.ke
  br i1 %i.mr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  call void @_ZdlPv(ptr noundef %i.mq) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  %i.ms = load ptr, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.mt = icmp eq ptr %i.ms, %i.jy
  br i1 %i.mt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287
  call void @_ZdlPv(ptr noundef %i.ms) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i288
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  %i.mu = load ptr, ptr %20, align 8, !tbaa !20   ; 2 uses
  %i.mv = icmp eq ptr %i.mu, %i.hx
  br i1 %i.mv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290
  call void @_ZdlPv(ptr noundef %i.mu) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit293: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit290, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i291
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gt

bb.cy:                                            ; preds = %.noexc.i259
  %i.mw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

bb.cz:                                            ; preds = %.noexc.i263
  %i.mx = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

bb.da:                                            ; preds = %.noexc.i266
  %i.my = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294: ; preds = %.body269
  call void @_ZdlPv(ptr noundef %i.ln) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296: ; preds = %.body269, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294, %bb.da
  %.pn155 = phi { ptr, i32 } [ %i.my, %bb.da ], [ %i.lm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i294 ], [ %i.lm, %.body269 ] ; 2 uses
  %i.mz = load ptr, ptr %25, align 8, !tbaa !20   ; 2 uses
  %i.na = icmp eq ptr %i.mz, %i.ke
  br i1 %i.na, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296
  call void @_ZdlPv(ptr noundef %i.mz) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297, %bb.cz
  %.pn155.pn = phi { ptr, i32 } [ %i.mx, %bb.cz ], [ %.pn155, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i297 ], [ %.pn155, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit296 ] ; 2 uses
  %i.nb = load ptr, ptr %24, align 8, !tbaa !20   ; 2 uses
  %i.nc = icmp eq ptr %i.nb, %i.jy
  br i1 %i.nc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299
  call void @_ZdlPv(ptr noundef %i.nb) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300, %bb.cy
  %.pn155.pn.pn = phi { ptr, i32 } [ %i.mw, %bb.cy ], [ %.pn155.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i300 ], [ %.pn155.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit299 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #22
  br label %bb.db

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302, %.body, %bb.ch
  %.pn155.pn.pn.pn = phi { ptr, i32 } [ %.pn155.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit302 ], [ %.pn152.pn, %.body ], [ %i.jr, %bb.ch ]
  %i.nd = load ptr, ptr %20, align 8, !tbaa !20   ; 2 uses
  %i.ne = icmp eq ptr %i.nd, %i.hx
  br i1 %i.ne, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303: ; preds = %bb.db
  call void @_ZdlPv(ptr noundef %i.nd) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit305: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i303
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #22
  br label %bb.gu

bb.dc:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #22
  %i.nf = load ptr, ptr %1, align 8, !tbaa !81
  %i.ng = getelementptr inbounds nuw i8, ptr %i.nf, i64 16
  %i.nh = load ptr, ptr %i.ng, align 8
  invoke void %i.nh(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.296") align 8 %27, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 1, i64 66048, ptr null)
          to label %bb.dd unwind label %bb.dv

bb.dd:                                            ; preds = %bb.dc
  call void @llvm.lifetime.start.p0(ptr nonnull %28) #22
  %i.ni = invoke noundef nonnull align 8 dereferenceable(80) ptr @_ZNK6duckdb10unique_ptrINS_10FileHandleESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.de unwind label %bb.dw

bb.de:                                            ; preds = %bb.dd
  invoke void @_ZN6duckdb15ExtensionHelper22ParseExtensionMetaDataERNS_10FileHandleE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ParsedExtensionMetaData") align 8 %28, ptr noundef nonnull align 8 dereferenceable(80) %i.ni)
          to label %bb.df unwind label %bb.dw

bb.df:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #22
  invoke void @_ZN6duckdb23ParsedExtensionMetaData23GetInvalidMetadataErrorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr noundef nonnull align 8 dereferenceable(232) %28)
          to label %bb.dg unwind label %bb.dx

bb.dg:                                            ; preds = %bb.df
  %i.nj = getelementptr inbounds nuw i8, ptr %29, i64 8 ; 7 uses
  %i.nk = load i64, ptr %i.nj, align 8, !tbaa !11
  %i.nl = icmp eq i64 %i.nk, 0
  br i1 %i.nl, label %bb.eb, label %.noexc.i307

.noexc.i307:                                      ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #22
  %i.nm = getelementptr inbounds nuw i8, ptr %31, i64 16 ; 4 uses
  store ptr %i.nm, ptr %31, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 23, ptr %i.d, align 8, !tbaa !19
  %i.nn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc308 unwind label %bb.dy ; 2 uses

.noexc308:                                        ; preds = %.noexc.i307
  store ptr %i.nn, ptr %31, align 8, !tbaa !20
  %i.no = load i64, ptr %i.d, align 8, !tbaa !19  ; 3 uses
  store i64 %i.no, ptr %i.nm, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.nn, ptr noundef nonnull align 1 dereferenceable(23) @.str.11, i64 23, i1 false)
  %i.np = getelementptr inbounds nuw i8, ptr %31, i64 8
  store i64 %i.no, ptr %i.np, align 8, !tbaa !11
  %i.nq = load ptr, ptr %31, align 8, !tbaa !20
  %i.nr = getelementptr inbounds nuw i8, ptr %i.nq, i64 %i.no
  store i8 0, ptr %i.nr, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #22
  %i.ns = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 5 uses
  store ptr %i.ns, ptr %32, align 8, !tbaa !7
  %i.nt = load ptr, ptr %2, align 8, !tbaa !20    ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !11 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 %i.nv, ptr %i.c, align 8, !tbaa !19
  %i.nw = icmp ugt i64 %i.nv, 15
  br i1 %i.nw, label %.noexc.i311, label %._crit_edge.i.i310

.noexc.i311:                                      ; preds = %.noexc308
  %i.nx = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc312 unwind label %bb.dz ; 2 uses

.noexc312:                                        ; preds = %.noexc.i311
  store ptr %i.nx, ptr %32, align 8, !tbaa !20
  %i.ny = load i64, ptr %i.c, align 8, !tbaa !19
  store i64 %i.ny, ptr %i.ns, align 8, !tbaa !14
  br label %._crit_edge.i.i310

._crit_edge.i.i310:                               ; preds = %.noexc312, %.noexc308
  %i.nz = phi ptr [ %i.nx, %.noexc312 ], [ %i.ns, %.noexc308 ] ; 2 uses
  switch i64 %i.nv, label %bb.di [
    i64 1, label %bb.dh
    i64 0, label %bb.dj
  ]

bb.dh:                                            ; preds = %._crit_edge.i.i310
  %i.oa = load i8, ptr %i.nt, align 1, !tbaa !14
  store i8 %i.oa, ptr %i.nz, align 1, !tbaa !14
  br label %bb.dj

bb.di:                                            ; preds = %._crit_edge.i.i310
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.nz, ptr align 1 %i.nt, i64 %i.nv, i1 false)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %._crit_edge.i.i310
  %i.ob = load i64, ptr %i.c, align 8, !tbaa !19  ; 2 uses
  %i.oc = getelementptr inbounds nuw i8, ptr %32, i64 8
  store i64 %i.ob, ptr %i.oc, align 8, !tbaa !11
  %i.od = load ptr, ptr %32, align 8, !tbaa !20
  %i.oe = getelementptr inbounds nuw i8, ptr %i.od, i64 %i.ob
  store i8 0, ptr %i.oe, align 1, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #22
end_hunk_1
