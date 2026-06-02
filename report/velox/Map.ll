inline.NumInlined: 2906
inline.NumDeleted: 1200
begin_hunk_0_@_ZNSt6vectorIbSaIbEE13_M_insert_auxESt13_Bit_iteratorb:bb.a
  %spec.select.i.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %.sroa.013.022.i.i.i.i.i, i64 %spec.select.idx.i.i.i.i.i68
  %spec.select19.i.i.i.i.i70 = select i1 %i.dj, i32 0, i32 %i.di
  %i.dk = add i32 %.sroa.59.021.i.i.i.i.i63, 1
  %i.dl = icmp eq i32 %.sroa.59.021.i.i.i.i.i63, 63 ; 2 uses
  %.sroa.07.1.idx.i.i.i.i.i71 = select i1 %i.dl, i64 8, i64 0
  %.sroa.07.1.i.i.i.i.i72 = getelementptr inbounds nuw i8, ptr %.sroa.07.020.i.i.i.i.i64, i64 %.sroa.07.1.idx.i.i.i.i.i71 ; 2 uses
  %.sroa.59.1.i.i.i.i.i73 = select i1 %i.dl, i32 0, i32 %i.dk ; 2 uses
  %i.dm = add nsw i64 %.024.i.i.i.i.i62, -1
  %i.dn = icmp sgt i64 %.024.i.i.i.i.i62, 1
  br i1 %i.dn, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, !llvm.loop !151

_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit:  ; preds = %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66, %_ZNSt14_Bit_referenceaSEb.exit53
  %.sroa.07.0.lcssa.i.i.i.i.i58 = phi ptr [ %.sroa.083.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.07.1.i.i.i.i.i72, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.sroa.59.0.lcssa.i.i.i.i.i59 = phi i32 [ %.sroa.684.0, %_ZNSt14_Bit_referenceaSEb.exit53 ], [ %.sroa.59.1.i.i.i.i.i73, %_ZNSt14_Bit_referenceaSERKS_.exit.i.i.i.i.i66 ]
  %.not.i74 = icmp eq ptr %i.au, null
  br i1 %.not.i74, label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit, label %bb.t

bb.t:                                             ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit
  %i.do = ashr exact i64 %i.aw, 3
  %i.dp = sub nsw i64 0, %i.do
  %i.dq = getelementptr inbounds [8 x i8], ptr %i.d, i64 %i.dp
  tail call void @_ZdlPvm(ptr noundef %i.dq, i64 noundef %i.aw) #25
  br label %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit

_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit: ; preds = %_ZSt4copyISt13_Bit_iteratorS0_ET0_T_S2_S1_.exit, %bb.t
  %i.dr = lshr i64 %i.bf, 6
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dr
  store ptr %i.ds, ptr %i.c, align 8, !tbaa !22
  store ptr %i.bi, ptr %0, align 8
  %.sroa.588.0..sroa_idx89 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %.sroa.588.0..sroa_idx89, align 8
  store ptr %.sroa.07.0.lcssa.i.i.i.i.i58, ptr %i.a, align 8
  store i32 %.sroa.59.0.lcssa.i.i.i.i.i59, ptr %i.e, align 8
  br label %_ZNSt13_Bit_iteratorppEv.exit

_ZNSt13_Bit_iteratorppEv.exit:                    ; preds = %bb.g, %_ZNSt14_Bit_referenceaSEb.exit, %_ZNSt13_Bvector_baseISaIbEE13_M_deallocateEv.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N8facebook5velox4exec17SignatureVariableEESaISC_ENSt8__detail10_Select1stESt8equal_toIS5_ESt4hashIS5_ENSE_18_Mod_range_hashingENSE_20_Default_ranged_hashENSE_20_Prime_rehash_policyENSE_17_Hashtable_traitsILb1ELb0ELb1EEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(56) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE19_M_deallocate_nodesEPSF_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i
  %.06.i = phi ptr [ %i.c, %_ZNSt8__detail16_Hashtable_allocISaINS_10_Hash_nodeISt4pairIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN8facebook5velox4exec17SignatureVariableEELb1EEEEE18_M_deallocate_nodeEPSF_.exit.i ], [ %i.b, %bb.a ] ; 8 uses
  %i.c = load ptr, ptr %.06.i, align 8, !tbaa !99 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.06.i, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %.06.i, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %.06.i, i64 72
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !33   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.06.i, i64 88 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i
  %i.j = load i64, ptr %i.h, align 8, !tbaa !30
  %i.k = add i64 %i.j, 1
  tail call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i.i.i

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
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.y = load ptr, ptr %4, align 8, !tbaa !155
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171  ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %81) #23
  %i.ac = sext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23, !noalias !206
  store i32 0, ptr %79, align 4, !tbaa !30, !noalias !206
  %i.ad = getelementptr inbounds nuw i8, ptr %79, i64 4
  store i8 1, ptr %i.ad, align 4, !tbaa !209, !noalias !206
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %81, i64 noundef %i.ac, ptr noundef %i.z, ptr noundef nonnull align 4 dereferenceable(8) %79, i1 noundef zeroext false)
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
end_hunk_0
begin_hunk_1_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.bj
  %i.gy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc234 unwind label %bb.fh ; 3 uses

.noexc234:                                        ; preds = %.critedge.thread.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 37
  store i8 0, ptr %i.gz, align 1, !tbaa !263, !noalias !264
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.gy, i8 0, i64 36, i1 false), !noalias !264
  %i.ha = ptrtoint ptr %i.gy to i64
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i: ; preds = %.critedge.i.i
  %i.hb = getelementptr inbounds i8, ptr %.pre3.i.i, i64 -8 ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !267, !noalias !258
  store ptr null, ptr %i.hb, align 8, !tbaa !267, !noalias !258
  store ptr %i.hb, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !268, !noalias !258
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i, %.noexc234
  %.sink.i.i = phi i64 [ %i.ha, %.noexc234 ], [ %i.hc, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.gt, align 8, !tbaa !267, !alias.scope !258
  %.cast.i = inttoptr i64 %.sink.i.i to ptr       ; 3 uses
  %i.hd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %.cast.i, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.bm unwind label %bb.bl     ; 0 uses

bb.bl:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gt) #23
  br label %.body235

bb.bm:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.cast.i, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(12) %i.hg, i64 12, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.cast.i, i64 36
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.hj = load i16, ptr %i.hi, align 4
  store i16 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 58 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !269, !range !82, !noundef !83
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bn, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gr, i64 58
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !269, !range !82, !noundef !83
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bo, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.hq = load ptr, ptr %87, align 16, !tbaa !281 ; 2 uses
  %i.hr = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hq, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 5 uses
  %i.hs = load ptr, ptr %88, align 16, !tbaa !281 ; 2 uses
  %i.ht = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hs, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.val = load i32, ptr %i.hu, align 8, !tbaa !196 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 56 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !283 ; 4 uses
  %.not.i237 = icmp slt i32 %i.hw, %.val
  br i1 %.not.i237, label %bb.bp, label %bb.bs, !prof !49

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #23, !noalias !293
  store i32 %i.hw, ptr %72, align 16, !tbaa !30, !alias.scope !296, !noalias !293
  %i.hx = getelementptr inbounds nuw i8, ptr %72, i64 16
  store i32 %.val, ptr %i.hx, align 16, !tbaa !30, !alias.scope !296, !noalias !293
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %73, ptr nonnull @.str.26, i64 11, i64 17, ptr nonnull %72)
          to label %.noexc238 unwind label %.loopexit.split-lp1260

.noexc238:                                        ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #23, !noalias !293
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %73, ptr nonnull @.str.26) #27
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc238
  unreachable

bb.br:                                            ; preds = %.noexc238
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %73, align 8, !tbaa !33   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.br
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !30
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23
  br label %.body242

bb.bs:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !283 ; 3 uses
  %.not32.i = icmp slt i32 %i.if, %.val
  br i1 %.not32.i, label %bb.bt, label %bb.bw, !prof !49

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23, !noalias !299
  store i32 %i.if, ptr %71, align 16, !tbaa !30, !alias.scope !302, !noalias !299
  %i.ig = getelementptr inbounds nuw i8, ptr %71, i64 16
  store i32 %.val, ptr %i.ig, align 16, !tbaa !30, !alias.scope !302, !noalias !299
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %74, ptr nonnull @.str.26, i64 11, i64 17, ptr nonnull %71)
          to label %.noexc239 unwind label %.loopexit.split-lp1260

.noexc239:                                        ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23, !noalias !299
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %74, ptr nonnull @.str.26) #27
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc239
  unreachable

bb.bv:                                            ; preds = %.noexc239
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %74, align 8, !tbaa !33   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %bb.bv
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !30
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23
  br label %.body242

bb.bw:                                            ; preds = %bb.bs
  %.not33.i = icmp eq i32 %i.hw, %i.if
  br i1 %.not33.i, label %.preheader.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

.preheader.i:                                     ; preds = %bb.bw
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 104
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  %i.ip = icmp slt i32 %i.hw, 1
  br i1 %i.ip, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cb ] ; 6 uses
  %i.is = load ptr, ptr %i.hr, align 8, !tbaa !46
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.iw = invoke noundef zeroext i1 %i.iu(ptr noundef nonnull align 8 dereferenceable(94) %i.hr, i32 noundef %i.iv)
          to label %.noexc240 unwind label %.loopexit1259, !inline_history !305

.noexc240:                                        ; preds = %bb.bx
  br i1 %i.iw, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %.noexc240
  %i.ix = load ptr, ptr %i.ht, align 8, !tbaa !46
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(94) %i.ht, i32 noundef %i.iv)
          to label %.noexc241 unwind label %.loopexit1259, !inline_history !305

.noexc241:                                        ; preds = %bb.by
  br i1 %i.ja, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %.noexc241
  %i.jb = load ptr, ptr %i.in, align 8, !tbaa !306
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !3
  %i.je = load ptr, ptr %i.iq, align 8, !tbaa !306
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3
  %.not34.i = icmp eq i32 %i.jd, %i.jg
  br i1 %.not34.i, label %bb.ca, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load ptr, ptr %i.io, align 8, !tbaa !308
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jk = load ptr, ptr %i.ir, align 8, !tbaa !308
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3
  %.not35.i = icmp eq i32 %i.jj, %i.jm
  br i1 %.not35.i, label %bb.cb, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.cb:                                            ; preds = %bb.ca, %.noexc240
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.hv, align 8, !tbaa !283
  %i.jo = sext i32 %i.jn to i64
  %.not15.i = icmp slt i64 %indvars.iv.next.i, %i.jo
  br i1 %.not15.i, label %bb.bx, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, !llvm.loop !309

_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit: ; preds = %bb.cb, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.jp = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hq, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 3 uses
  store ptr %i.jp, ptr %i.d, align 8, !tbaa !310
  %i.jq = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hs, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %92) #23
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !281 ; 3 uses
  store ptr %i.js, ptr %92, align 8, !tbaa !281
  %i.jt = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 136
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !38 ; 3 uses
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !38
  %.not.i.i.i244 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i244, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit246, label %bb.cc

bb.cc:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i245 = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i245, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit246

bb.ce:                                            ; preds = %bb.cc
  %i.ka = atomicrmw volatile add ptr %i.jw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre1466.a = load ptr, ptr %92, align 8, !tbaa !281
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit246

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit246: ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, %bb.cd, %bb.ce
  %i.kb = phi ptr [ %i.js, %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit ], [ %i.js, %bb.cd ], [ %.pre1466.a, %bb.ce ] ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !46
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = invoke noundef zeroext i1 %i.ke(ptr noundef nonnull align 8 dereferenceable(94) %i.kb)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit246
  br i1 %i.kf, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kg = load ptr, ptr %92, align 8, !tbaa !281  ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !46
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef zeroext i1 %i.kj(ptr noundef nonnull align 8 dereferenceable(94) %i.kg)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.kk, label %bb.ci, label %bb.fi

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %70)
  store ptr %i.d, ptr %70, align 8
  %.sroa.41036.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 8
  store ptr %90, ptr %.sroa.41036.0..sroa_idx, align 8
  %.sroa.51037.0..sroa_idx = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 4 uses
  store ptr %92, ptr %.sroa.51037.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %69)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !263, !range !82, !noundef !83
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.cj

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %bb.ci
  %.0.in.pre.i.i.i.i = load i8, ptr %i.hi, align 4, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !312
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.ck, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.kr = load i32, ptr %i.hu, align 8, !tbaa !196 ; 6 uses
  %i.ks = load i32, ptr %i.hg, align 8, !tbaa !313
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.cl, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ku = load ptr, ptr %1, align 8, !tbaa !314   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.kr, 0
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.kv = and i32 %i.kr, 2147483584               ; 3 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %.not37.i.i.not.i.i.i.i1952.not = icmp eq i32 %i.kv, 0
  br i1 %.not37.i.i.not.i.i.i.i1952.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph1954

bb.cn:                                            ; preds = %.lr.ph1954
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i1953, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.kw
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph1954, label %.critedge.i.i.i.i.i.i, !llvm.loop !315

.lr.ph1954:                                       ; preds = %bb.cm, %bb.cn
  %indvars.iv.i.i.i.i1953 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.cn ], [ 0, %bb.cm ] ; 2 uses
  %i.kx = lshr exact i64 %indvars.iv.i.i.i.i1953, 3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !145
  %i.la = icmp eq i64 %i.kz, -1
  br i1 %i.la, label %bb.cn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !315

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.kr, %i.kv
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.lb = lshr i32 %i.kr, 6
  %i.lc = and i32 %i.kr, 63
  %i.ld = zext nneg i32 %i.lc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.ld
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !145
  %.demorgan.i.i.i.i = or i64 %i.lg, %notmask.i40.i.i.i.i.i.i
  %i.lh = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.li = zext i1 %i.lh to i16
  %i.lj = or disjoint i16 %i.li, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph1954, %bb.co, %.critedge.i.i.i.i.i.i, %bb.cl, %bb.ck, %bb.cj
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.ck ], [ 256, %bb.cj ], [ 257, %bb.cl ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.lj, %bb.co ], [ 256, %.lr.ph1954 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.hi, align 4
  %i.lk = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.lk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i247 = trunc nuw i8 %.0.in.i.i.i.i to i1
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !312 ; 8 uses
  br i1 %.0.i.i.i.i247, label %bb.cp, label %bb.dh

bb.cp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.ln = load i32, ptr %i.hu, align 8, !tbaa !196 ; 2 uses
  %i.lo = icmp slt i32 %i.lm, %i.ln
  br i1 %i.lo, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_EEvSA_SP_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cp
  %i.lp = sext i32 %i.lm to i64
  br label %bb.cq

bb.cq:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.lp, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i ] ; 5 uses
  %.val.i.i.i = load ptr, ptr %70, align 8, !tbaa !316
  %.val4.i.i.i = load ptr, ptr %.sroa.51037.0..sroa_idx, align 8, !tbaa !319
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !310 ; 2 uses
  %i.lq = getelementptr i8, ptr %.val.val.i.i.i, i64 104
  %.val.val.val.i.i.i = load ptr, ptr %i.lq, align 8, !tbaa !306
  %i.lr = getelementptr i8, ptr %.val.val.i.i.i, i64 120
  %.val.val.val5.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !308
  %i.ls = getelementptr inbounds [4 x i8], ptr %.val.val.val.i.i.i, i64 %indvars.iv.i.i.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = getelementptr inbounds [4 x i8], ptr %.val.val.val5.i.i.i, i64 %indvars.iv.i.i.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !3
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlRKT_T0_T1_E_clISB_iiEEDaSQ_SR_SS_(ptr noundef nonnull readonly align 8 dereferenceable(16) %.val4.i.i.i, i32 noundef %i.lt, i32 noundef %i.lv)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb0EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0      ; 2 uses
  %i.ly = extractvalue { ptr, i32 } %i.lw, 1      ; 2 uses
  %i.lz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #23
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mb = call ptr @__cxa_begin_catch(ptr %i.lx) #23
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !320 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 144
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !33 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 152
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !31
  %i.mi = icmp eq i64 %i.mh, 4
  br i1 %i.mi, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i:         ; preds = %bb.cs
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !30
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.mj, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !30
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.ml, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.1.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !30
  %or.cond.not.i.i.i.2.i.i.i = icmp eq i8 %i.mn, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.2.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.1.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 3
end_hunk_1
begin_hunk_2_@_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_:bb.a
  %i.bk = shl i64 %index65, 3                     ; 2 uses
  %next.gep66 = getelementptr i8, ptr %i.ax, i64 %i.bk ; 4 uses
  %next.gep67 = getelementptr i8, ptr %1, i64 %i.bk ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.bl = getelementptr i8, ptr %next.gep67, i64 32
  %i.bm = getelementptr i8, ptr %next.gep67, i64 64
  %i.bn = getelementptr i8, ptr %next.gep67, i64 96
  %wide.load68 = load <4 x i64>, ptr %next.gep67, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %wide.load69 = load <4 x i64>, ptr %i.bl, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %wide.load70 = load <4 x i64>, ptr %i.bm, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %wide.load71 = load <4 x i64>, ptr %i.bn, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %i.bo = getelementptr i8, ptr %next.gep66, i64 32
  %i.bp = getelementptr i8, ptr %next.gep66, i64 64
  %i.bq = getelementptr i8, ptr %next.gep66, i64 96
  store <4 x i64> %wide.load68, ptr %next.gep66, align 8, !tbaa !267, !alias.scope !884, !noalias !881
  store <4 x i64> %wide.load69, ptr %i.bo, align 8, !tbaa !267, !alias.scope !884, !noalias !881
  store <4 x i64> %wide.load70, ptr %i.bp, align 8, !tbaa !267, !alias.scope !884, !noalias !881
  store <4 x i64> %wide.load71, ptr %i.bq, align 8, !tbaa !267, !alias.scope !884, !noalias !881
  %i.br = getelementptr i8, ptr %next.gep67, i64 32
  %i.bs = getelementptr i8, ptr %next.gep67, i64 64
  %i.bt = getelementptr i8, ptr %next.gep67, i64 96
  store <4 x ptr> splat (ptr null), ptr %next.gep67, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  store <4 x ptr> splat (ptr null), ptr %i.br, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  store <4 x ptr> splat (ptr null), ptr %i.bs, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  store <4 x ptr> splat (ptr null), ptr %i.bt, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %index.next72 = add nuw i64 %index65, 16        ; 2 uses
  %i.bu = icmp eq i64 %index.next72, %n.vec63
  br i1 %i.bu, label %middle.block73, label %vector.body64, !llvm.loop !886

middle.block73:                                   ; preds = %vector.body64
  %cmp.n74 = icmp eq i64 %i.bb, %n.vec63
  br i1 %cmp.n74, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %vec.epilog.iter.check79

vec.epilog.iter.check79:                          ; preds = %middle.block73
  %min.epilog.iters.check80 = icmp eq i64 %n.mod.vf62, 0
  br i1 %min.epilog.iters.check80, label %.lr.ph.i.i.i17.preheader, label %vec.epilog.ph81, !prof !519

vec.epilog.ph81:                                  ; preds = %vector.main.loop.iter.check59, %vec.epilog.iter.check79
  %vec.epilog.resume.val75 = phi i64 [ %n.vec63, %vec.epilog.iter.check79 ], [ 0, %vector.main.loop.iter.check59 ]
  %n.vec83 = and i64 %i.bb, 4611686018427387900   ; 3 uses
  %i.bv = shl i64 %n.vec83, 3                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.ax, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %1, i64 %i.bv
  br label %vec.epilog.vector.body84

vec.epilog.vector.body84:                         ; preds = %vec.epilog.vector.body84, %vec.epilog.ph81
  %index85 = phi i64 [ %vec.epilog.resume.val75, %vec.epilog.ph81 ], [ %index.next89, %vec.epilog.vector.body84 ] ; 2 uses
  %i.by = shl i64 %index85, 3                     ; 2 uses
  %next.gep86 = getelementptr i8, ptr %i.ax, i64 %i.by
  %next.gep87 = getelementptr i8, ptr %1, i64 %i.by ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %wide.load88 = load <4 x i64>, ptr %next.gep87, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  store <4 x i64> %wide.load88, ptr %next.gep86, align 8, !tbaa !267, !alias.scope !884, !noalias !881
  store <4 x ptr> splat (ptr null), ptr %next.gep87, align 8, !tbaa !267, !alias.scope !881, !noalias !876
  %index.next89 = add nuw i64 %index85, 4         ; 2 uses
  %i.bz = icmp eq i64 %index.next89, %n.vec83
  br i1 %i.bz, label %vec.epilog.middle.block90, label %vec.epilog.vector.body84, !llvm.loop !887

vec.epilog.middle.block90:                        ; preds = %vec.epilog.vector.body84
  %cmp.n91 = icmp eq i64 %i.bb, %n.vec83
  br i1 %cmp.n91, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17.preheader

.lr.ph.i.i.i17.preheader:                         ; preds = %vector.memcheck52, %iter.check77, %vec.epilog.iter.check79, %vec.epilog.middle.block90
  %.012.i.i.i18.ph = phi ptr [ %i.ax, %iter.check77 ], [ %i.ax, %vector.memcheck52 ], [ %i.bi, %vec.epilog.iter.check79 ], [ %i.bw, %vec.epilog.middle.block90 ]
  %.0911.i.i.i19.ph = phi ptr [ %1, %iter.check77 ], [ %1, %vector.memcheck52 ], [ %i.bj, %vec.epilog.iter.check79 ], [ %i.bx, %vec.epilog.middle.block90 ]
  br label %.lr.ph.i.i.i17

.lr.ph.i.i.i17:                                   ; preds = %.lr.ph.i.i.i17.preheader, %.lr.ph.i.i.i17
  %.012.i.i.i18 = phi ptr [ %i.cc, %.lr.ph.i.i.i17 ], [ %.012.i.i.i18.ph, %.lr.ph.i.i.i17.preheader ] ; 2 uses
  %.0911.i.i.i19 = phi ptr [ %i.cb, %.lr.ph.i.i.i17 ], [ %.0911.i.i.i19.ph, %.lr.ph.i.i.i17.preheader ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !876)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !879)
  %i.ca = load i64, ptr %.0911.i.i.i19, align 8, !tbaa !267, !alias.scope !879, !noalias !876
  store i64 %i.ca, ptr %.012.i.i.i18, align 8, !tbaa !267, !alias.scope !876, !noalias !879
  store ptr null, ptr %.0911.i.i.i19, align 8, !tbaa !267, !alias.scope !879, !noalias !876
  %i.cb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i19, i64 8 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.012.i.i.i18, i64 8 ; 2 uses
  %.not.i.i.i20 = icmp eq ptr %i.cb, %i.c
  br i1 %.not.i.i.i20, label %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22, label %.lr.ph.i.i.i17, !llvm.loop !888

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
define internal void @_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(38) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(16) %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
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
  %i.y = load ptr, ptr %4, align 8, !tbaa !155
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !171  ; 2 uses
  store ptr %i.z, ptr %i.a, align 8, !tbaa !193
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store ptr null, ptr %i.b, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !196 ; 2 uses
  store i32 %i.ab, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %78) #23
  %i.ac = sext i32 %i.ab to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %76) #23, !noalias !889
  store i32 0, ptr %76, align 4, !tbaa !30, !noalias !889
  %i.ad = getelementptr inbounds nuw i8, ptr %76, i64 4
  store i8 1, ptr %i.ad, align 4, !tbaa !209, !noalias !889
  call void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %78, i64 noundef %i.ac, ptr noundef %i.z, ptr noundef nonnull align 4 dereferenceable(8) %76, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %76) #23, !noalias !889
  call void @llvm.lifetime.start.p0(ptr nonnull %79) #23
  %i.ae = load i32, ptr %i.aa, align 8, !tbaa !196
  %i.af = load ptr, ptr %4, align 8, !tbaa !155
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !171
  %i.ah = sext i32 %i.ae to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %75) #23, !noalias !892
  store i32 0, ptr %75, align 4, !tbaa !30, !noalias !892
  %i.ai = getelementptr inbounds nuw i8, ptr %75, i64 4
  store i8 1, ptr %i.ai, align 4, !tbaa !209, !noalias !892
  invoke void @_ZN8facebook5velox13AlignedBuffer8allocateIiEEN5boost13intrusive_ptrINS0_6BufferEEEmPNS0_6memory10MemoryPoolERKSt8optionalIT_Eb(ptr dead_on_unwind nonnull writable sret(%"class.boost::intrusive_ptr") align 8 %79, i64 noundef %i.ah, ptr noundef %i.ag, ptr noundef nonnull align 4 dereferenceable(8) %75, i1 noundef zeroext false)
          to label %bb.c unwind label %bb.ao

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %75) #23, !noalias !892
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
  call void @llvm.experimental.noalias.scope.decl(metadata !895)
  call void @llvm.lifetime.start.p0(ptr nonnull %74) #23, !noalias !895
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %74, ptr noundef nonnull align 8 dereferenceable(16) %i.an, i32 noundef 0, ptr noundef %i.ap)
          to label %bb.e unwind label %bb.ap

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  %i.aq = getelementptr inbounds nuw i8, ptr %80, i64 8
  %i.ar = load <2 x ptr>, ptr %74, align 16, !tbaa !41, !noalias !901
  store <2 x ptr> %i.ar, ptr %80, align 16, !tbaa !41, !alias.scope !901
  call void @llvm.lifetime.end.p0(ptr nonnull %74) #23, !noalias !895
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
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #23, !noalias !902
  invoke void @_ZN8facebook5velox10BaseVector14createInternalERKSt10shared_ptrIKNS0_4TypeEEiPNS0_6memory10MemoryPoolE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.95") align 8 %73, ptr noundef nonnull align 8 dereferenceable(16) %i.aw, i32 noundef 0, ptr noundef %i.ay)
          to label %bb.g unwind label %bb.aq

bb.g:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !905)
  %i.az = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.ba = load <2 x ptr>, ptr %73, align 16, !tbaa !41, !noalias !908
  store <2 x ptr> %i.ba, ptr %81, align 16, !tbaa !41, !alias.scope !908
  call void @llvm.lifetime.end.p0(ptr nonnull %73) #23, !noalias !902
  call void @llvm.experimental.noalias.scope.decl(metadata !909)
  %i.bb = invoke noalias noundef nonnull dereferenceable(184) ptr @_Znwm(i64 noundef 184) #24
          to label %.noexc unwind label %bb.ar    ; 6 uses

.noexc:                                           ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i32 1, ptr %i.bc, align 8, !tbaa !43, !noalias !909
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  store i32 1, ptr %i.bd, align 4, !tbaa !45, !noalias !909
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.bb, align 8, !tbaa !46, !noalias !909
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 16 ; 2 uses
  invoke void @_ZSt10_ConstructIN8facebook5velox9MapVectorEJPNS1_6memory10MemoryPoolERKSt10shared_ptrIKNS1_4TypeEEDniN5boost13intrusive_ptrINS1_6BufferEEESF_S6_INS1_10BaseVectorEESH_EEvPT_DpOT0_(ptr noundef nonnull %i.be, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull align 8 dereferenceable(8) %79, ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull align 8 dereferenceable(16) %81)
          to label %bb.h unwind label %_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i, !noalias !909

_ZNSt15__allocated_ptrISaISt23_Sp_counted_ptr_inplaceIN8facebook5velox9MapVectorESaIvELN9__gnu_cxx12_Lock_policyE2EEEED2Ev.exit16.i.i.i.i: ; preds = %.noexc
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef 184) #25, !noalias !909
  br label %.body

bb.h:                                             ; preds = %.noexc
  %i.bg = getelementptr inbounds nuw i8, ptr %77, i64 8 ; 3 uses
  store ptr %i.bb, ptr %i.bg, align 8, !tbaa !38, !alias.scope !909
  store ptr %i.be, ptr %77, align 16, !tbaa !234, !alias.scope !909
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
end_hunk_2
begin_hunk_3_@_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_:bb.a
.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.bj
  %i.gy = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #24
          to label %.noexc228 unwind label %bb.fh ; 3 uses

.noexc228:                                        ; preds = %.critedge.thread.i.i
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 37
  store i8 0, ptr %i.gz, align 1, !tbaa !263, !noalias !921
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(38) %i.gy, i8 0, i64 36, i1 false), !noalias !921
  %i.ha = ptrtoint ptr %i.gy to i64
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i: ; preds = %.critedge.i.i
  %i.hb = getelementptr inbounds i8, ptr %.pre3.i.i, i64 -8 ; 3 uses
  %i.hc = load i64, ptr %i.hb, align 8, !tbaa !267, !noalias !918
  store ptr null, ptr %i.hb, align 8, !tbaa !267, !noalias !918
  store ptr %i.hb, ptr %.phi.trans.insert2.i.i, align 8, !tbaa !268, !noalias !918
  br label %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i

_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i: ; preds = %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i, %.noexc228
  %.sink.i.i = phi i64 [ %i.ha, %.noexc228 ], [ %i.hc, %_ZNSt6vectorISt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS3_EESaIS6_EE8pop_backEv.exit.i.i ] ; 2 uses
  store i64 %.sink.i.i, ptr %i.gt, align 8, !tbaa !267, !alias.scope !918
  %.cast.i = inttoptr i64 %.sink.i.i to ptr       ; 3 uses
  %i.hd = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorImSaImEEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(38) %.cast.i, ptr noundef nonnull align 8 dereferenceable(38) %1)
          to label %bb.bm unwind label %bb.bl     ; 0 uses

bb.bl:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i
  %i.he = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt10unique_ptrIN8facebook5velox17SelectivityVectorESt14default_deleteIS2_EED2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.gt) #23
  br label %.body229

bb.bm:                                            ; preds = %_ZN8facebook5velox4core7ExecCtx20getSelectivityVectorEv.exit.i
  %i.hf = getelementptr inbounds nuw i8, ptr %.cast.i, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.hf, ptr noundef nonnull align 8 dereferenceable(12) %i.hg, i64 12, i1 false)
  %i.hh = getelementptr inbounds nuw i8, ptr %.cast.i, i64 36
  %i.hi = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 3 uses
  %i.hj = load i16, ptr %i.hi, align 4
  store i16 %i.hj, ptr %i.hh, align 4
  %i.hk = getelementptr inbounds nuw i8, ptr %i.go, i64 58 ; 2 uses
  %i.hl = load i8, ptr %i.hk, align 2, !tbaa !269, !range !82, !noundef !83
  %i.hm = trunc nuw i8 %i.hl to i1
  br i1 %i.hm, label %bb.bn, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.bn:                                            ; preds = %bb.bm
  %i.hn = getelementptr inbounds nuw i8, ptr %i.gr, i64 58
  %i.ho = load i8, ptr %i.hn, align 2, !tbaa !269, !range !82, !noundef !83
  %i.hp = trunc nuw i8 %i.ho to i1
  br i1 %i.hp, label %bb.bo, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.bo:                                            ; preds = %bb.bn
  %i.hq = load ptr, ptr %84, align 16, !tbaa !281 ; 2 uses
  %i.hr = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hq, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 5 uses
  %i.hs = load ptr, ptr %85, align 16, !tbaa !281 ; 2 uses
  %i.ht = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hs, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 5 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 5 uses
  %.val = load i32, ptr %i.hu, align 8, !tbaa !196 ; 4 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hr, i64 56 ; 2 uses
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !283 ; 4 uses
  %.not.i231 = icmp slt i32 %i.hw, %.val
  br i1 %.not.i231, label %bb.bp, label %bb.bs, !prof !49

bb.bp:                                            ; preds = %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #23, !noalias !924
  store i32 %i.hw, ptr %69, align 16, !tbaa !30, !alias.scope !927, !noalias !924
  %i.hx = getelementptr inbounds nuw i8, ptr %69, i64 16
  store i32 %.val, ptr %i.hx, align 16, !tbaa !30, !alias.scope !927, !noalias !924
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %70, ptr nonnull @.str.26, i64 11, i64 17, ptr nonnull %69)
          to label %.noexc232 unwind label %.loopexit.split-lp1236

.noexc232:                                        ; preds = %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23, !noalias !924
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %70, ptr nonnull @.str.26) #27
          to label %bb.bq unwind label %bb.br

bb.bq:                                            ; preds = %.noexc232
  unreachable

bb.br:                                            ; preds = %.noexc232
  %i.hy = landingpad { ptr, i32 }
          cleanup
  %i.hz = load ptr, ptr %70, align 8, !tbaa !33   ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %70, i64 16 ; 2 uses
  %i.ib = icmp eq ptr %i.hz, %i.ia
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.br
  %i.ic = load i64, ptr %i.ia, align 8, !tbaa !30
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.hz, i64 noundef %i.id) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #23
  br label %.body236

bb.bs:                                            ; preds = %bb.bo
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ht, i64 56
  %i.if = load i32, ptr %i.ie, align 8, !tbaa !283 ; 3 uses
  %.not32.i = icmp slt i32 %i.if, %.val
  br i1 %.not32.i, label %bb.bt, label %bb.bw, !prof !49

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23, !noalias !930
  store i32 %i.if, ptr %68, align 16, !tbaa !30, !alias.scope !933, !noalias !930
  %i.ig = getelementptr inbounds nuw i8, ptr %68, i64 16
  store i32 %.val, ptr %i.ig, align 16, !tbaa !30, !alias.scope !933, !noalias !930
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %71, ptr nonnull @.str.26, i64 11, i64 17, ptr nonnull %68)
          to label %.noexc233 unwind label %.loopexit.split-lp1236

.noexc233:                                        ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #23, !noalias !930
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorEE18veloxCheckFailArgs_0, ptr noundef nonnull align 8 dereferenceable(32) %71, ptr nonnull @.str.26) #27
          to label %bb.bu unwind label %bb.bv

bb.bu:                                            ; preds = %.noexc233
  unreachable

bb.bv:                                            ; preds = %.noexc233
  %i.ih = landingpad { ptr, i32 }
          cleanup
  %i.ii = load ptr, ptr %71, align 8, !tbaa !33   ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %71, i64 16 ; 2 uses
  %i.ik = icmp eq ptr %i.ii, %i.ij
  br i1 %i.ik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i: ; preds = %bb.bv
  %i.il = load i64, ptr %i.ij, align 8, !tbaa !30
  %i.im = add i64 %i.il, 1
  call void @_ZdlPvm(ptr noundef %i.ii, i64 noundef %i.im) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit39.i: ; preds = %bb.bv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i37.i
  call void @llvm.lifetime.end.p0(ptr nonnull %71) #23
  br label %.body236

bb.bw:                                            ; preds = %bb.bs
  %.not33.i = icmp eq i32 %i.hw, %i.if
  br i1 %.not33.i, label %.preheader.i, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

.preheader.i:                                     ; preds = %bb.bw
  %i.in = getelementptr inbounds nuw i8, ptr %i.hr, i64 104
  %i.io = getelementptr inbounds nuw i8, ptr %i.hr, i64 120
  %i.ip = icmp slt i32 %i.hw, 1
  br i1 %i.ip, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ht, i64 104
  %i.ir = getelementptr inbounds nuw i8, ptr %i.ht, i64 120
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.cb ] ; 6 uses
  %i.is = load ptr, ptr %i.hr, align 8, !tbaa !46
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = trunc nuw nsw i64 %indvars.iv.i to i32  ; 2 uses
  %i.iw = invoke noundef zeroext i1 %i.iu(ptr noundef nonnull align 8 dereferenceable(94) %i.hr, i32 noundef %i.iv)
          to label %.noexc234 unwind label %.loopexit1235, !inline_history !936

.noexc234:                                        ; preds = %bb.bx
  br i1 %i.iw, label %bb.cb, label %bb.by

bb.by:                                            ; preds = %.noexc234
  %i.ix = load ptr, ptr %i.ht, align 8, !tbaa !46
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8
  %i.ja = invoke noundef zeroext i1 %i.iz(ptr noundef nonnull align 8 dereferenceable(94) %i.ht, i32 noundef %i.iv)
          to label %.noexc235 unwind label %.loopexit1235, !inline_history !936

.noexc235:                                        ; preds = %bb.by
  br i1 %i.ja, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread, label %bb.bz

bb.bz:                                            ; preds = %.noexc235
  %i.jb = load ptr, ptr %i.in, align 8, !tbaa !306
  %i.jc = getelementptr inbounds nuw [4 x i8], ptr %i.jb, i64 %indvars.iv.i
  %i.jd = load i32, ptr %i.jc, align 4, !tbaa !3
  %i.je = load ptr, ptr %i.iq, align 8, !tbaa !306
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %indvars.iv.i
  %i.jg = load i32, ptr %i.jf, align 4, !tbaa !3
  %.not34.i = icmp eq i32 %i.jd, %i.jg
  br i1 %.not34.i, label %bb.ca, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.ca:                                            ; preds = %bb.bz
  %i.jh = load ptr, ptr %i.io, align 8, !tbaa !308
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.jh, i64 %indvars.iv.i
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !3
  %i.jk = load ptr, ptr %i.ir, align 8, !tbaa !308
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jk, i64 %indvars.iv.i
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !3
  %.not35.i = icmp eq i32 %i.jj, %i.jm
  br i1 %.not35.i, label %bb.cb, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit.thread

bb.cb:                                            ; preds = %bb.ca, %.noexc234
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.jn = load i32, ptr %i.hv, align 8, !tbaa !283
  %i.jo = sext i32 %i.jn to i64
  %.not15.i = icmp slt i64 %indvars.iv.next.i, %i.jo
  br i1 %.not15.i, label %bb.bx, label %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, !llvm.loop !937

_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit: ; preds = %bb.cb, %.preheader.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  %i.jp = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hq, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23 ; 3 uses
  store ptr %i.jp, ptr %i.d, align 8, !tbaa !310
  %i.jq = call noundef ptr @__dynamic_cast(ptr nonnull align 8 dereferenceable(94) %i.hs, ptr nonnull @_ZTIN8facebook5velox10BaseVectorE, ptr nonnull @_ZTIN8facebook5velox11ArrayVectorE, i64 0) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #23
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jp, i64 128
  %i.js = load ptr, ptr %i.jr, align 8, !tbaa !281 ; 3 uses
  store ptr %i.js, ptr %89, align 8, !tbaa !281
  %i.jt = getelementptr inbounds nuw i8, ptr %89, i64 8 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jp, i64 136
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !38 ; 3 uses
  store ptr %i.jv, ptr %i.jt, align 8, !tbaa !38
  %.not.i.i.i238 = icmp eq ptr %i.jv, null
  br i1 %.not.i.i.i238, label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit240, label %bb.cc

bb.cc:                                            ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 8 ; 3 uses
  %i.jx = load i8, ptr @__libc_single_threaded, align 1, !tbaa !30
  %.not.i.i.i.i239 = icmp eq i8 %i.jx, 0
  br i1 %.not.i.i.i.i239, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.jy = load i32, ptr %i.jw, align 4, !tbaa !3
  %i.jz = add nsw i32 %i.jy, 1
  store i32 %i.jz, ptr %i.jw, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit240

bb.ce:                                            ; preds = %bb.cc
  %i.ka = atomicrmw volatile add ptr %i.jw, i32 1 acq_rel, align 4 ; 0 uses
  %.pre1438.a = load ptr, ptr %89, align 8, !tbaa !281
  br label %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit240

_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit240: ; preds = %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit, %bb.cd, %bb.ce
  %i.kb = phi ptr [ %i.js, %_ZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE15canTakeFastPathEPNS0_11ArrayVectorES6_RKNS0_17SelectivityVectorE.exit ], [ %i.js, %bb.cd ], [ %.pre1438.a, %bb.ce ] ; 2 uses
  %i.kc = load ptr, ptr %i.kb, align 8, !tbaa !46
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8
  %i.kf = invoke noundef zeroext i1 %i.ke(ptr noundef nonnull align 8 dereferenceable(94) %i.kb)
          to label %bb.cf unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.cf:                                            ; preds = %_ZNSt10shared_ptrIN8facebook5velox10BaseVectorEEC2ERKS3_.exit240
  br i1 %i.kf, label %bb.ci, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.kg = load ptr, ptr %89, align 8, !tbaa !281  ; 2 uses
  %i.kh = load ptr, ptr %i.kg, align 8, !tbaa !46
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = invoke noundef zeroext i1 %i.kj(ptr noundef nonnull align 8 dereferenceable(94) %i.kg)
          to label %bb.ch unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.kk, label %bb.ci, label %bb.fi

bb.ci:                                            ; preds = %bb.ch, %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %67)
  store ptr %i.d, ptr %67, align 8
  %.sroa.41017.0..sroa_idx = getelementptr inbounds nuw i8, ptr %67, i64 8
  store ptr %87, ptr %.sroa.41017.0..sroa_idx, align 8
  %.sroa.51018.0..sroa_idx = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 4 uses
  store ptr %89, ptr %.sroa.51018.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %66)
  %i.kl = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !263, !range !82, !noundef !83
  %i.kn = trunc nuw i8 %i.km to i1
  br i1 %i.kn, label %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i, label %bb.cj

._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i: ; preds = %bb.ci
  %.0.in.pre.i.i.i.i = load i8, ptr %i.hi, align 4, !tbaa !56, !range !82
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

bb.cj:                                            ; preds = %bb.ci
  %i.ko = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !312
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.ck, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.ck:                                            ; preds = %bb.cj
  %i.kr = load i32, ptr %i.hu, align 8, !tbaa !196 ; 6 uses
  %i.ks = load i32, ptr %i.hg, align 8, !tbaa !313
  %i.kt = icmp eq i32 %i.kr, %i.ks
  br i1 %i.kt, label %bb.cl, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cl:                                            ; preds = %bb.ck
  %i.ku = load ptr, ptr %1, align 8, !tbaa !314   ; 2 uses
  %.not.i.i.i.i.i = icmp sgt i32 %i.kr, 0
  br i1 %.not.i.i.i.i.i, label %bb.cm, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

bb.cm:                                            ; preds = %bb.cl
  %i.kv = and i32 %i.kr, 2147483584               ; 3 uses
  %i.kw = zext nneg i32 %i.kv to i64
  %.not37.i.i.not.i.i.i.i1914.not = icmp eq i32 %i.kv, 0
  br i1 %.not37.i.i.not.i.i.i.i1914.not, label %.critedge.i.i.i.i.i.i, label %.lr.ph1916

bb.cn:                                            ; preds = %.lr.ph1916
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i1915, 64 ; 2 uses
  %.not37.i.i.not.i.i.i.i = icmp samesign ult i64 %indvars.iv.next.i.i.i.i, %i.kw
  br i1 %.not37.i.i.not.i.i.i.i, label %.lr.ph1916, label %.critedge.i.i.i.i.i.i, !llvm.loop !315

.lr.ph1916:                                       ; preds = %bb.cm, %bb.cn
  %indvars.iv.i.i.i.i1915 = phi i64 [ %indvars.iv.next.i.i.i.i, %bb.cn ], [ 0, %bb.cm ] ; 2 uses
  %i.kx = lshr exact i64 %indvars.iv.i.i.i.i1915, 3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ku, i64 %i.kx
  %i.kz = load i64, ptr %i.ky, align 8, !tbaa !145
  %i.la = icmp eq i64 %i.kz, -1
  br i1 %i.la, label %bb.cn, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, !llvm.loop !315

.critedge.i.i.i.i.i.i:                            ; preds = %bb.cn, %bb.cm
  %.not38.i.i.i.i.i.i = icmp eq i32 %i.kr, %i.kv
  br i1 %.not38.i.i.i.i.i.i, label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, label %bb.co

bb.co:                                            ; preds = %.critedge.i.i.i.i.i.i
  %i.lb = lshr i32 %i.kr, 6
  %i.lc = and i32 %i.kr, 63
  %i.ld = zext nneg i32 %i.lc to i64
  %notmask.i40.i.i.i.i.i.i = shl nsw i64 -1, %i.ld
  %i.le = zext nneg i32 %i.lb to i64
  %i.lf = getelementptr inbounds nuw [8 x i8], ptr %i.ku, i64 %i.le
  %i.lg = load i64, ptr %i.lf, align 8, !tbaa !145
  %.demorgan.i.i.i.i = or i64 %i.lg, %notmask.i40.i.i.i.i.i.i
  %i.lh = icmp eq i64 %.demorgan.i.i.i.i, -1
  %i.li = zext i1 %i.lh to i16
  %i.lj = or disjoint i16 %i.li, 256
  br label %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i

_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i: ; preds = %.lr.ph1916, %bb.co, %.critedge.i.i.i.i.i.i, %bb.cl, %bb.ck, %bb.cj
  %.sroa.0.0.insert.ext.i.i.i.i = phi i16 [ 256, %bb.ck ], [ 256, %bb.cj ], [ 257, %bb.cl ], [ 257, %.critedge.i.i.i.i.i.i ], [ %i.lj, %bb.co ], [ 256, %.lr.ph1916 ] ; 2 uses
  store i16 %.sroa.0.0.insert.ext.i.i.i.i, ptr %i.hi, align 4
  %i.lk = trunc i16 %.sroa.0.0.insert.ext.i.i.i.i to i8
  br label %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i

_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i: ; preds = %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i
  %.0.in.i.i.i.i = phi i8 [ %.0.in.pre.i.i.i.i, %._ZNRSt8optionalIbE5valueEv.exit_crit_edge.i.i.i.i ], [ %i.lk, %_ZN8facebook5velox4bits8isAllSetEPKmiib.exit.i.i.i.i ]
  %.0.i.i.i.i241 = trunc nuw i8 %.0.in.i.i.i.i to i1
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.lm = load i32, ptr %i.ll, align 4, !tbaa !312 ; 8 uses
  br i1 %.0.i.i.i.i241, label %bb.cp, label %bb.dh

bb.cp:                                            ; preds = %_ZNK8facebook5velox17SelectivityVector13isAllSelectedEv.exit.i.i.i
  %i.ln = load i32, ptr %i.hu, align 8, !tbaa !196 ; 2 uses
  %i.lo = icmp slt i32 %i.lm, %i.ln
  br i1 %i.lo, label %.lr.ph.i.i.i, label %_ZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_EEvSA_SP_.exit

.lr.ph.i.i.i:                                     ; preds = %bb.cp
  %i.lp = sext i32 %i.lm to i64
  br label %bb.cq

bb.cq:                                            ; preds = %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ %i.lp, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i ] ; 5 uses
  %.val.i.i.i = load ptr, ptr %67, align 8, !tbaa !938
  %.val4.i.i.i = load ptr, ptr %.sroa.51018.0..sroa_idx, align 8, !tbaa !940
  %.val.val.i.i.i = load ptr, ptr %.val.i.i.i, align 8, !tbaa !310 ; 2 uses
  %i.lq = getelementptr i8, ptr %.val.val.i.i.i, i64 104
  %.val.val.val.i.i.i = load ptr, ptr %i.lq, align 8, !tbaa !306
  %i.lr = getelementptr i8, ptr %.val.val.i.i.i, i64 120
  %.val.val.val5.i.i.i = load ptr, ptr %i.lr, align 8, !tbaa !308
  %i.ls = getelementptr inbounds [4 x i8], ptr %.val.val.val.i.i.i, i64 %indvars.iv.i.i.i
  %i.lt = load i32, ptr %i.ls, align 4, !tbaa !3
  %i.lu = getelementptr inbounds [4 x i8], ptr %.val.val.val5.i.i.i, i64 %indvars.iv.i.i.i
  %i.lv = load i32, ptr %i.lu, align 4, !tbaa !3
  invoke fastcc void @_ZZNK8facebook5velox9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISB_EERKS9_IKNS0_4TypeEERNS0_4exec7EvalCtxERSB_ENKUlRKT_T0_T1_E_clISB_iiEEDaSQ_SR_SS_(ptr noundef nonnull readonly align 8 dereferenceable(16) %.val4.i.i.i, i32 noundef %i.lt, i32 noundef %i.lv)
          to label %_ZZN8facebook5velox4exec7EvalCtx22applyToSelectedNoThrowIZNKS0_9functions12_GLOBAL__N_111MapFunctionILb1EE5applyERKNS0_17SelectivityVectorERSt6vectorISt10shared_ptrINS0_10BaseVectorEESaISE_EERKSC_IKNS0_4TypeEERS2_RSE_EUlT_E_ZNS2_22applyToSelectedNoThrowISQ_EEvSA_SP_EUlSP_E_EEvSA_SP_T0_ENKUlSP_E_clIiEEDaSP_.exit.i.i.i unwind label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.lw = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN8facebook5velox14VeloxExceptionE
          catch ptr @_ZTISt9exception             ; 3 uses
  %i.lx = extractvalue { ptr, i32 } %i.lw, 0      ; 2 uses
  %i.ly = extractvalue { ptr, i32 } %i.lw, 1      ; 2 uses
  %i.lz = call i32 @llvm.eh.typeid.for.p0(ptr nonnull @_ZTIN8facebook5velox14VeloxExceptionE) #23
  %i.ma = icmp eq i32 %i.ly, %i.lz
  br i1 %i.ma, label %bb.cs, label %bb.ct

bb.cs:                                            ; preds = %bb.cr
  %i.mb = call ptr @__cxa_begin_catch(ptr %i.lx) #23
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !320 ; 2 uses
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 144
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !33 ; 4 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.md, i64 152
  %i.mh = load i64, ptr %i.mg, align 8, !tbaa !31
  %i.mi = icmp eq i64 %i.mh, 4
  br i1 %i.mi, label %.lr.ph.i.i.i.preheader.i.preheader.i.i.i, label %.loopexit.i.i.i

.lr.ph.i.i.i.preheader.i.preheader.i.i.i:         ; preds = %bb.cs
  %i.mj = load i8, ptr %i.mf, align 1, !tbaa !30
  %or.cond.not.i.i.i.i.i.i = icmp eq i8 %i.mj, 85
  br i1 %or.cond.not.i.i.i.i.i.i, label %tailrecurse.i.i.i.i.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.preheader.i.preheader.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mf, i64 1
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !30
  %or.cond.not.i.i.i.1.i.i.i = icmp eq i8 %i.ml, 83
  br i1 %or.cond.not.i.i.i.1.i.i.i, label %tailrecurse.i.i.i.i.1.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.1.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.i.i.i
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mf, i64 2
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !30
  %or.cond.not.i.i.i.2.i.i.i = icmp eq i8 %i.mn, 69
  br i1 %or.cond.not.i.i.i.2.i.i.i, label %tailrecurse.i.i.i.i.2.i.i.i, label %.loopexit.i.i.i

tailrecurse.i.i.i.i.2.i.i.i:                      ; preds = %tailrecurse.i.i.i.i.1.i.i.i
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mf, i64 3
end_hunk_3
