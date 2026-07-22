inline.NumInlined: 2906
inline.NumDeleted: 1200
loop-unroll.NumCompletelyUnrolled: 39
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 57
begin_hunk_0_@_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv:bb.a

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i: ; preds = %.lr.ph.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.06.i, i64 56 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i
  %i.o = load i64, ptr %i.m, align 8, !tbaa !30
  %i.p = add i64 %i.o, 1
  tail call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #25
  br label %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i

_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i.i.i.i.i
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !33   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.06.i, i64 24 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i
  %i.t = load i64, ptr %i.r, align 8, !tbaa !30
  %i.u = add i64 %i.t, 1
  tail call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #25
  br label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i: ; preds = %_ZN8facebook5velox4exec17SignatureVariableD2Ev.exit.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.06.i, i64 noundef 120) #25
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i, !llvm.loop !152

_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit: ; preds = %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i, %bb.a
  %i.v = load ptr, ptr %0, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load i64, ptr %i.w, align 8, !tbaa !20
  %i.y = shl i64 %i.x, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.v, i8 0, i64 %i.y, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %7 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %8 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %9 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %18 = alloca %class.anon.282, align 8           ; 9 uses
  %19 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %22 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %23 = alloca %class.anon.279, align 1           ; 3 uses
  %24 = alloca %class.anon.143, align 8           ; 12 uses
  %25 = alloca %"struct.fmt::v11::detail::format_arg_store.263", align 16 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %29 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %30 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %31 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %32 = alloca %class.anon.277, align 8           ; 9 uses
  %33 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %34 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %35 = alloca %class.anon.274, align 1           ; 3 uses
  %36 = alloca %class.anon.142, align 8           ; 10 uses
  %37 = alloca %"struct.fmt::v11::detail::format_arg_store", align 16 ; 5 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %40 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %41 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %42 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %43 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %44 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %46 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %48 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %49 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %50 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %51 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %52 = alloca %class.anon.268, align 8           ; 9 uses
  %53 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %54 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %55 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %56 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %57 = alloca %class.anon.264, align 1           ; 3 uses
  %58 = alloca %class.anon.138, align 8           ; 11 uses
  %59 = alloca %"struct.fmt::v11::detail::format_arg_store.263", align 16 ; 6 uses
  %60 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %62 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %63 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %64 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %65 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %66 = alloca %class.anon.261, align 8           ; 9 uses
  %67 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %68 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %69 = alloca %class.anon.245, align 1           ; 3 uses
  %70 = alloca %class.anon.136, align 8           ; 9 uses
  %71 = alloca %"struct.fmt::v11::detail::format_arg_store.244", align 16 ; 5 uses
  %72 = alloca %"struct.fmt::v11::detail::format_arg_store.244", align 16 ; 5 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %75 = alloca %"struct.fmt::v11::detail::format_arg_store.226", align 16 ; 5 uses
  %76 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %77 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %78 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %79 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %80 = alloca %"class.std::shared_ptr.77", align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %81 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %82 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %83 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %84 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %85 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %87 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %88 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %89 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 11 uses
  %90 = alloca %class.anon, align 1               ; 5 uses
  %91 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %92 = alloca %"class.std::shared_ptr.95", align 8 ; 9 uses
  %93 = alloca %"class.std::shared_ptr.77", align 16 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %94 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %i.g = alloca ptr, align 8                      ; 10 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %i.i = alloca i32, align 4                      ; 21 uses
  %95 = alloca %"class.std::shared_ptr.95", align 16 ; 8 uses
  %96 = alloca %"class.std::vector.121", align 8  ; 23 uses
  %97 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %98 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %99 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %100 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %101 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %102 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %103 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %104 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %105 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %106 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %107 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %108 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %109 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %110 = alloca %"class.std::shared_ptr.77", align 8 ; 6 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %111 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %i.n = alloca ptr, align 8                      ; 16 uses
  %i.o = alloca ptr, align 8                      ; 10 uses
  %i.p = alloca ptr, align 8                      ; 18 uses
  %i.q = alloca ptr, align 8                      ; 11 uses
  %112 = alloca %"class.std::shared_ptr.95", align 8 ; 9 uses
  %113 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %114 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %115 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %116 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %117 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %118 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %119 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %120 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %121 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %122 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %123 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %124 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %125 = alloca %"class.std::shared_ptr.77", align 16 ; 8 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %126 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !153    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.y = load ptr, ptr %4, align 8, !tbaa !155    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171
  store ptr %i.z, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #23
  %127 = load ptr, ptr %i.y, align 8, !tbaa !171
  %i.ac = sext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23, !noalias !206
  store i32 0, ptr %79, align 4, !tbaa !30, !noalias !206
  %i.ad = getelementptr inbounds nuw i8, ptr %79, i64 4
  store i8 1, ptr %i.ad, align 4, !tbaa !209, !noalias !206
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %81, i64 noundef %i.ac, ptr noundef %127, ptr noundef nonnull align 4 dereferenceable(8) %79, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %79) #23, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #23
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !196
  %i.af = load ptr, ptr %4, align 8, !tbaa !155
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171
  %i.ah = sext i32 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23, !noalias !211
  store i32 0, ptr %78, align 4, !tbaa !30, !noalias !211
  %i.ai = getelementptr inbounds nuw i8, ptr %78, i64 4
  store i8 1, ptr %i.ai, align 4, !tbaa !209, !noalias !211
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %82, i64 noundef %i.ah, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(8) %78, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %78) #23, !noalias !211
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #23
  %i.aj = load ptr, ptr %3, align 8, !tbaa !214   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 0)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %4, align 8, !tbaa !155
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !171
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23, !noalias !217
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %77, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef 0, ptr noundef %i.ap)
          to label %bb.e unwind label %bb.ap

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  %i.aq = getelementptr inbounds nuw i8, ptr %83, i64 8
  %i.ar = load <2 x ptr>, ptr %77, align 16, !tbaa !41, !noalias !223
  store <2 x ptr> %i.ar, ptr %83, align 16, !tbaa !41, !alias.scope !223
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #23, !noalias !217
  call void @llvm.lifetime.start.p0(ptr nonnull %84) #23
  %i.as = load ptr, ptr %3, align 8, !tbaa !214   ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 1)
          to label %bb.f unwind label %bb.aq

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %4, align 8, !tbaa !155
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #23, !noalias !224
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %76, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i32 noundef 0, ptr noundef %i.ay)
          to label %bb.g unwind label %bb.aq

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  %i.az = getelementptr inbounds nuw i8, ptr %84, i64 8
  %i.ba = load <2 x ptr>, ptr %76, align 16, !tbaa !41, !noalias !230
  store <2 x ptr> %i.ba, ptr %84, align 16, !tbaa !41, !alias.scope !230
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23, !noalias !224
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  %i.bb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24
          to label %.noexc unwind label %bb.ar    ; 6 uses

.noexc:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %i.bc, align 8, !tbaa !43, !noalias !231
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 1, ptr %i.bd, align 4, !tbaa !45, !noalias !231
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bb, align 8, !tbaa !46, !noalias !231
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9MapVectorEJPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDniN5boost13intrusive_ptrINS1_6BufferEEESF_S6_INS1_10BaseVectorEESH_EEvPT_DpOT0_(ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull align 8 dereferenceable(16) %84)
          to label %bb.h unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, !noalias !231

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i: ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 184) #25, !noalias !231
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %80, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !38, !alias.scope !231
  store ptr %i.be, ptr %80, align 16, !tbaa !234, !alias.scope !231
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !38 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bi, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !45
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !236
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bl, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bw, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %84) #23
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 8 uses
  %.not.i.i203 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i203, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.by, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !45
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !236
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207

bb.q:                                             ; preds = %bb.o
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i204 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i204, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i205

bb.s:                                             ; preds = %bb.q
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i205

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i205: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i206 = phi i32 [ %i.cb, %bb.r ], [ %i.cl, %bb.s ]
  %i.cm = icmp eq i32 %.0.i.i.i.i206, 1
  br i1 %i.cm, label %bb.t, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207, !prof !49

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i205
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i205, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %83) #23
  %i.cn = load ptr, ptr %82, align 8, !tbaa !237  ; 7 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit207
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = atomicrmw sub ptr %i.co, i32 1 acq_rel, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.u
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
          to label %.noexc.i unwind label %bb.v, !inline_history !240

end_hunk_0
begin_hunk_1_@_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bj, %vec.epilog.iter.check79 ], [ %i.bx, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cc, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !874)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %i.ca = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !267, !alias.scope !877, !noalias !874
  store i64 %i.ca, ptr %.012.i.i.i18, align 8, !tbaa !267, !alias.scope !874, !noalias !877
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !267, !alias.scope !877, !noalias !874
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cb, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !886

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22: ; preds = %.lr.ph.i.i.i17, %middle.block73, %vec.epilog.middle.block90, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit
  %.0.lcssa.i.i.i21 = phi ptr [ %i.ax, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit ], [ %i.bw, %vec.epilog.middle.block90 ], [ %i.bi, %middle.block73 ], [ %i.cc, %.lr.ph.i.i.i17 ]
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i23 = icmp eq ptr %i.d, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !506
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.cg) #25
  br label %_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit

_ZNSt12_Vector_baseISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE13_M_deallocateEPS6_m.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, %bb.c
  store ptr %i.q, ptr %0, align 8, !tbaa !507
  store ptr %.0.lcssa.i.i.i21, ptr %i.b, align 8, !tbaa !268
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %i.m
  store ptr %i.ch, ptr %i.cd, align 8, !tbaa !506
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN8facebook5velox4exec14VectorFunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZN8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EED0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #10 align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 8) #25
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %7 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %8 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %9 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %10 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %12 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %14 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %15 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %16 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %17 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %18 = alloca %class.anon.322, align 8           ; 9 uses
  %19 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %21 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %22 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %23 = alloca %class.anon.319, align 1           ; 3 uses
  %24 = alloca %class.anon.299, align 8           ; 12 uses
  %25 = alloca %"struct.fmt::v11::detail::format_arg_store.263", align 16 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %28 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %29 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %30 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %31 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %32 = alloca %class.anon.317, align 8           ; 9 uses
  %33 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %34 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %35 = alloca %class.anon.314, align 1           ; 3 uses
  %36 = alloca %class.anon.298, align 8           ; 10 uses
  %37 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %38 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %39 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %40 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %41 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %42 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %43 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %45 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %46 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %47 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %48 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %49 = alloca %class.anon.310, align 8           ; 9 uses
  %50 = alloca %"struct.fmt::v11::detail::format_arg_store.267", align 16 ; 6 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %52 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %53 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %54 = alloca %class.anon.307, align 1           ; 3 uses
  %55 = alloca %class.anon.296, align 8           ; 11 uses
  %56 = alloca %"struct.fmt::v11::detail::format_arg_store.263", align 16 ; 6 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %58 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %59 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %60 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %61 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %62 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %63 = alloca %class.anon.305, align 8           ; 9 uses
  %64 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %65 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %66 = alloca %class.anon.302, align 1           ; 3 uses
  %67 = alloca %class.anon.295, align 8           ; 9 uses
  %68 = alloca %"struct.fmt::v11::detail::format_arg_store.244", align 16 ; 5 uses
  %69 = alloca %"struct.fmt::v11::detail::format_arg_store.244", align 16 ; 5 uses
  %70 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %71 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %72 = alloca %"struct.fmt::v11::detail::format_arg_store.226", align 16 ; 5 uses
  %73 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %74 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %75 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %76 = alloca %"class.std::optional.126", align 4 ; 5 uses
  %77 = alloca %"class.std::shared_ptr.77", align 16 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %78 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %79 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %80 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %81 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %82 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %83 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %84 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %85 = alloca %"class.std::shared_ptr.95", align 16 ; 7 uses
  %86 = alloca %"class.facebook::velox::exec::DecodedArgs", align 8 ; 11 uses
  %87 = alloca %class.anon.293, align 1           ; 5 uses
  %88 = alloca %"class.facebook::velox::exec::LocalSelectivityVector", align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 6 uses
  %89 = alloca %"class.std::shared_ptr.95", align 8 ; 9 uses
  %90 = alloca %"class.std::shared_ptr.77", align 8 ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %91 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %i.g = alloca ptr, align 8                      ; 10 uses
  %i.h = alloca ptr, align 8                      ; 11 uses
  %i.i = alloca i32, align 4                      ; 21 uses
  %92 = alloca %"class.std::shared_ptr.95", align 16 ; 8 uses
  %93 = alloca %"class.std::vector.121", align 8  ; 19 uses
  %94 = alloca %"class.std::__exception_ptr::exception_ptr", align 8 ; 9 uses
  %95 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %96 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %97 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %98 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %99 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %100 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %101 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %102 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %103 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %104 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %105 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %106 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %107 = alloca %"class.std::shared_ptr.77", align 8 ; 6 uses
  %i.j = alloca ptr, align 8                      ; 5 uses
  %i.k = alloca ptr, align 8                      ; 5 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca i8, align 1                       ; 5 uses
  %108 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %i.n = alloca ptr, align 8                      ; 16 uses
  %i.o = alloca ptr, align 8                      ; 10 uses
  %i.p = alloca ptr, align 8                      ; 18 uses
  %i.q = alloca ptr, align 8                      ; 11 uses
  %109 = alloca %"class.std::shared_ptr.95", align 8 ; 9 uses
  %110 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %111 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %112 = alloca %"class.boost::intrusive_ptr", align 8 ; 8 uses
  %113 = alloca %"class.boost::intrusive_ptr", align 8 ; 7 uses
  %114 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %115 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %116 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %117 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %118 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %119 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %120 = alloca %"class.boost::intrusive_ptr", align 8 ; 4 uses
  %121 = alloca %"class.std::shared_ptr.95", align 16 ; 4 uses
  %122 = alloca %"class.std::shared_ptr.77", align 8 ; 6 uses
  %i.r = alloca ptr, align 8                      ; 5 uses
  %i.s = alloca ptr, align 8                      ; 5 uses
  %i.t = alloca i32, align 4                      ; 5 uses
  %123 = alloca %"class.std::shared_ptr.95", align 8 ; 7 uses
  %i.u = load ptr, ptr %2, align 8, !tbaa !153    ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !153  ; 2 uses
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.b, label %bb.ax

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %77) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.y = load ptr, ptr %4, align 8, !tbaa !155    ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171
  store ptr %i.z, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %124 = load ptr, ptr %i.y, align 8, !tbaa !171
  %i.ac = sext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #23, !noalias !887
  store i32 0, ptr %76, align 4, !tbaa !30, !noalias !887
  %i.ad = getelementptr inbounds nuw i8, ptr %76, i64 4
  store i8 1, ptr %i.ad, align 4, !tbaa !209, !noalias !887
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %78, i64 noundef %i.ac, ptr noundef %124, ptr noundef nonnull align 4 dereferenceable(8) %76, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23, !noalias !887
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !196
  %i.af = load ptr, ptr %4, align 8, !tbaa !155
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171
  %i.ah = sext i32 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #23, !noalias !890
  store i32 0, ptr %75, align 4, !tbaa !30, !noalias !890
  %i.ai = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i8 1, ptr %i.ai, align 4, !tbaa !209, !noalias !890
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %79, i64 noundef %i.ah, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(8) %75, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23, !noalias !890
  call void @llvm.lifetime.start.p0(ptr nonnull %80) #23
  %i.aj = load ptr, ptr %3, align 8, !tbaa !214   ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !46
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 24
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.am(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, i32 noundef 0)
          to label %bb.d unwind label %bb.ap

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr %4, align 8, !tbaa !155
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !171
  call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23, !noalias !893
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %74, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef 0, ptr noundef %i.ap)
          to label %bb.e unwind label %bb.ap

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !896)
  %i.aq = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ar = load <2 x ptr>, ptr %74, align 16, !tbaa !41, !noalias !899
  store <2 x ptr> %i.ar, ptr %80, align 16, !tbaa !41, !alias.scope !899
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23, !noalias !893
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #23
  %i.as = load ptr, ptr %3, align 8, !tbaa !214   ; 2 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !46
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = load ptr, ptr %i.au, align 8
  %i.aw = invoke noundef nonnull align 8 dereferenceable(16) ptr %i.av(ptr noundef nonnull align 8 dereferenceable(8) %i.as, i32 noundef 1)
          to label %bb.f unwind label %bb.aq

bb.f:                                             ; preds = %bb.e
  %i.ax = load ptr, ptr %4, align 8, !tbaa !155
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !171
  call void @llvm.experimental.noalias.scope.decl(metadata !900)
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #23, !noalias !900
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i32 noundef 0, ptr noundef %i.ay)
          to label %bb.g unwind label %bb.aq

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !903)
  %i.az = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.ba = load <2 x ptr>, ptr %73, align 16, !tbaa !41, !noalias !906
  store <2 x ptr> %i.ba, ptr %81, align 16, !tbaa !41, !alias.scope !906
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23, !noalias !900
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.bb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24
          to label %.noexc unwind label %bb.ar    ; 6 uses

.noexc:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %i.bc, align 8, !tbaa !43, !noalias !907
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 1, ptr %i.bd, align 4, !tbaa !45, !noalias !907
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bb, align 8, !tbaa !46, !noalias !907
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9MapVectorEJPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDniN5boost13intrusive_ptrINS1_6BufferEEESF_S6_INS1_10BaseVectorEESH_EEvPT_DpOT0_(ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 8 dereferenceable(16) %81)
          to label %bb.h unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, !noalias !907

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i: ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 184) #25, !noalias !907
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !38, !alias.scope !907
  store ptr %i.be, ptr %77, align 16, !tbaa !234, !alias.scope !907
  %i.bh = load ptr, ptr %i.az, align 8, !tbaa !38 ; 8 uses
  %.not.i.i = icmp eq ptr %i.bh, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bj = load atomic i64, ptr %i.bi acquire, align 8 ; 2 uses
  %i.bk = icmp eq i64 %i.bj, 4294967297
  %i.bl = trunc i64 %i.bj to i32                  ; 2 uses
  br i1 %i.bk, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.bi, align 8, !tbaa !43
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store i32 0, ptr %i.bm, align 4, !tbaa !45
  %i.bn = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8
  call void %i.bp(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !236
  %i.bq = load ptr, ptr %i.bh, align 8, !tbaa !46
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bs = load ptr, ptr %i.br, align 8
  call void %i.bs(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.bt = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i = icmp eq i8 %i.bt, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bu = add nsw i32 %i.bl, -1
  store i32 %i.bu, ptr %i.bi, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.bv = atomicrmw volatile add ptr %i.bi, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.bl, %bb.l ], [ %i.bv, %bb.m ]
  %i.bw = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bw, label %bb.n, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !49

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bh) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.h, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #23
  %i.bx = load ptr, ptr %i.aq, align 8, !tbaa !38 ; 8 uses
  %.not.i.i197 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i197, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201, label %bb.o

bb.o:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 4 uses
  %i.bz = load atomic i64, ptr %i.by acquire, align 8 ; 2 uses
  %i.ca = icmp eq i64 %i.bz, 4294967297
  %i.cb = trunc i64 %i.bz to i32                  ; 2 uses
  br i1 %i.ca, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store i32 0, ptr %i.by, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  store i32 0, ptr %i.cc, align 4, !tbaa !45
  %i.cd = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8
  call void %i.cf(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !236
  %i.cg = load ptr, ptr %i.bx, align 8, !tbaa !46
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8
  call void %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23, !inline_history !236
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201

bb.q:                                             ; preds = %bb.o
  %i.cj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i198 = icmp eq i8 %i.cj, 0
  br i1 %.not.i.i.i198, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ck = add nsw i32 %i.cb, -1
  store i32 %i.ck, ptr %i.by, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199

bb.s:                                             ; preds = %bb.q
  %i.cl = atomicrmw volatile add ptr %i.by, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199: ; preds = %bb.s, %bb.r
  %.0.i.i.i.i200 = phi i32 [ %i.cb, %bb.r ], [ %i.cl, %bb.s ]
  %i.cm = icmp eq i32 %.0.i.i.i.i200, 1
  br i1 %i.cm, label %bb.t, label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201, !prof !49

bb.t:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.bx) #23
  br label %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201

_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201: ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, %bb.p, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i199, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %80) #23
  %i.cn = load ptr, ptr %79, align 8, !tbaa !237  ; 7 uses
  %.not.i = icmp eq ptr %i.cn, null
  br i1 %.not.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit, label %bb.u

bb.u:                                             ; preds = %_ZNSt12__shared_ptrIN8facebook5velox10BaseVectorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit201
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 40
  %i.cp = atomicrmw sub ptr %i.co, i32 1 acq_rel, align 4
  %i.cq = icmp eq i32 %i.cp, 1
  br i1 %i.cq, label %.sink.split.i.i, label %_ZN5boost13intrusive_ptrIN8facebook5velox6BufferEED2Ev.exit

.sink.split.i.i:                                  ; preds = %bb.u
  %i.cr = load ptr, ptr %i.cn, align 8, !tbaa !46
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  invoke void %i.ct(ptr noundef nonnull align 8 dereferenceable(64) %i.cn)
          to label %.noexc.i unwind label %bb.v, !inline_history !240

end_hunk_1
