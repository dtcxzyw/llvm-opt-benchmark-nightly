inline.NumInlined: 40220
inline.NumDeleted: 5943
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZN5arrow14MakeScalarImplIRKdE5VisitERKNS_13ExtensionTypeE:bb.a
  %i.dg = getelementptr inbounds nuw i8, ptr %i.db, i64 12
  store i32 0, ptr %i.dg, align 4, !tbaa !196
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #28, !inline_history !428
  %i.dk = load ptr, ptr %i.db, align 8, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 24
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #28, !inline_history !428
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

bb.ap:                                            ; preds = %bb.an
  %i.dn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57
  %.not.i.i.i.i.i.i = icmp eq i8 %i.dn, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.do = add nsw i32 %i.df, -1
  store i32 %i.do, ptr %i.dc, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.dp = atomicrmw volatile add ptr %i.dc, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.ar, %bb.aq
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.df, %bb.aq ], [ %i.dp, %bb.ar ]
  %i.dq = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.dq, label %bb.as, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, !prof !198

bb.as:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.db) #28
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i: ; preds = %bb.as, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.ao, %bb.am
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !74
  %.not.i.i24 = icmp eq ptr %.pr.i, null
  br i1 %.not.i.i24, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit, label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i, !prof !290

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %bb.al
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit

_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev.exit: ; preds = %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.i, %_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEE7DestroyEv.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void

bb.at:                                            ; preds = %bb.ak, %bb.n
  %.pn10 = phi { ptr, i32 } [ %i.af, %bb.n ], [ %i.cx, %bb.ak ]
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.m
  %.pn10.pn = phi { ptr, i32 } [ %.pn10, %bb.at ], [ %i.ae, %bb.m ]
  resume { ptr, i32 } %.pn10.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5arrow12_GLOBAL__N_18CastImplINS_10DoubleTypeEEENS_6ResultISt10shared_ptrINS_6ScalarEEEERKS5_S4_INS_8DataTypeEE(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr nonnull %.24.val, ptr nonnull %.0.val) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %2 = alloca %"class.arrow::Status", align 8     ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28, !noalias !20582
  call void @_ZN5arrow4util13StringBuilderIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %1, ptr noundef nonnull align 1 dereferenceable(25) @.str.76, ptr noundef nonnull align 8 dereferenceable(72) %.24.val, ptr noundef nonnull align 1 dereferenceable(10) @.str.77, ptr noundef nonnull align 8 dereferenceable(72) %.0.val), !noalias !20582
  invoke void @_ZN5arrow6StatusC1ENS_10StatusCodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(8) %2, i8 noundef signext 10, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !51, !noalias !20582 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZN5arrow6Status14NotImplementedIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEES0_DpOT_.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  %i.d = load i64, ptr %i.b, align 8, !tbaa !57, !noalias !20582
  %i.e = add i64 %i.d, 1
  call void @_ZdlPvm(ptr noundef %i.a, i64 noundef %i.e) #29
  br label %_ZN5arrow6Status14NotImplementedIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEES0_DpOT_.exit

bb.c:                                             ; preds = %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = load ptr, ptr %1, align 8, !tbaa !51, !noalias !20582 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i: ; preds = %bb.c
  %i.j = load i64, ptr %i.h, align 8, !tbaa !57, !noalias !20582
  %i.k = add i64 %i.j, 1
  call void @_ZdlPvm(ptr noundef %i.g, i64 noundef %i.k) #29
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8.i.i: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !20582
  resume { ptr, i32 } %i.f

_ZN5arrow6Status14NotImplementedIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEES0_DpOT_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28, !noalias !20582
  call void @_ZN5arrow6ResultISt10shared_ptrINS_6ScalarEEEC2ERKNS_6StatusE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %2) #28
  %i.l = load ptr, ptr %2, align 8, !tbaa !74
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %_ZN5arrow6StatusD2Ev.exit, label %bb.d, !prof !207

bb.d:                                             ; preds = %_ZN5arrow6Status14NotImplementedIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEES0_DpOT_.exit
  call void @_ZN5arrow6Status11DeleteStateEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %_ZN5arrow6StatusD2Ev.exit

_ZN5arrow6StatusD2Ev.exit:                        ; preds = %_ZN5arrow6Status14NotImplementedIJRA25_KcRNS_8DataTypeERA10_S2_S6_EEES0_DpOT_.exit, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define internal fastcc void @_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_(ptr dead_on_unwind noalias nonnull writable align 8 %0, i32 %.40.val, ptr nofree noundef nonnull %1) unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 8 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_stringstream", align 8 ; 20 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %5 = alloca %"class.std::shared_ptr.2", align 16 ; 9 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.arrow::Status", align 8     ; 6 uses
  %10 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %11 = alloca %"class.std::shared_ptr", align 8  ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %13 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %14 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %15 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %16 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %17 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %18 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %19 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %20 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %21 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %22 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %23 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %24 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %25 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %26 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %27 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %28 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %29 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %30 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %34 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %35 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %36 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.e = alloca i64, align 8                      ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %39 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %40 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %41 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %42 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %43 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %44 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %46 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %47 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %48 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.g = alloca i64, align 8                      ; 6 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %50 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %51 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %52 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %53 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %54 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.h = alloca i64, align 8                      ; 6 uses
  %55 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %56 = alloca %"struct.std::array.842", align 1  ; 5 uses
  %57 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %58 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %59 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %60 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.i = alloca i64, align 8                      ; 6 uses
  %61 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %62 = alloca %"struct.std::array.837", align 1  ; 4 uses
  %63 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %64 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %65 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %66 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.j = alloca i64, align 8                      ; 6 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %68 = alloca %"struct.std::array.832", align 1  ; 5 uses
  %69 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %70 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %71 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %72 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %73 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %74 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.l = alloca i64, align 8                      ; 6 uses
  %75 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.m = alloca i64, align 8                      ; 6 uses
  %76 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %77 = alloca %"struct.std::array.823", align 1  ; 9 uses
  %78 = alloca %"struct.std::array.822", align 1  ; 9 uses
  %79 = alloca %"struct.std::array.795", align 1  ; 9 uses
  %80 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %81 = alloca %"class.std::shared_ptr.2", align 16 ; 14 uses
  %82 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %83 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %84 = alloca %"class.std::__cxx11::basic_string", align 8 ; 16 uses
  %i.n = alloca i64, align 8                      ; 6 uses
  %85 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.o = alloca i64, align 8                      ; 6 uses
  %86 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.p = alloca i64, align 8                      ; 6 uses
  %87 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %88 = alloca %"struct.std::array.823", align 1  ; 9 uses
  %89 = alloca %"struct.std::array.822", align 1  ; 9 uses
  %90 = alloca %"struct.std::array.795", align 1  ; 9 uses
  %91 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %92 = alloca %"class.std::shared_ptr.2", align 16 ; 14 uses
  %93 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %94 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.q = alloca i64, align 8                      ; 6 uses
  %95 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.r = alloca i64, align 8                      ; 6 uses
  %96 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.s = alloca i64, align 8                      ; 6 uses
  %97 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.t = alloca i64, align 8                      ; 6 uses
  %98 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %99 = alloca %"struct.std::array.815", align 1  ; 4 uses
  %100 = alloca %"struct.std::array.810", align 1 ; 4 uses
  %101 = alloca %"struct.std::array.805", align 1 ; 4 uses
  %102 = alloca %"struct.std::array.803", align 1 ; 4 uses
  %103 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.u = alloca i64, align 8                      ; 6 uses
  %104 = alloca %"class.std::shared_ptr.2", align 16 ; 14 uses
  %105 = alloca %"class.arrow::internal::StringFormatter.799", align 8 ; 8 uses
  %106 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %107 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.v = alloca i64, align 8                      ; 6 uses
  %108 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %109 = alloca %"struct.std::array.795", align 1 ; 14 uses
  %110 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %111 = alloca %"class.std::shared_ptr.2", align 16 ; 11 uses
  %112 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %113 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.w = alloca i64, align 8                      ; 6 uses
  %114 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %115 = alloca %"struct.std::array.795", align 1 ; 14 uses
  %116 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %117 = alloca %"class.std::shared_ptr.2", align 16 ; 11 uses
  %118 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %119 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.x = alloca i64, align 8                      ; 6 uses
  %120 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %121 = alloca %"struct.std::array.760", align 1 ; 3 uses
  %122 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %123 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %124 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %125 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %126 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %127 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %128 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %129 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %130 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %131 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %132 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %133 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %134 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %135 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %136 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %137 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %138 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %139 = alloca %"class.std::shared_ptr", align 16 ; 6 uses
  %i.y = alloca i64, align 8                      ; 6 uses
  %140 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.z = alloca [50 x i8], align 16               ; 5 uses
  %141 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %142 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %143 = alloca %"class.arrow::internal::StringFormatter.782", align 8 ; 7 uses
  %144 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %145 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %146 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ab = alloca [50 x i8], align 16              ; 5 uses
  %147 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %148 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %149 = alloca %"class.arrow::internal::StringFormatter.778", align 8 ; 7 uses
  %150 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %151 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ac = alloca i64, align 8                     ; 6 uses
  %152 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.ad = alloca [50 x i8], align 16              ; 5 uses
  %153 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %154 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %155 = alloca %"class.arrow::internal::StringFormatter.767", align 8 ; 7 uses
  %156 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %157 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ae = alloca i64, align 8                     ; 6 uses
  %158 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %159 = alloca %"struct.std::array.766", align 1 ; 3 uses
  %160 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %161 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %162 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %163 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.af = alloca i64, align 8                     ; 6 uses
  %164 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %165 = alloca %"struct.std::array.760", align 1 ; 3 uses
  %166 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %167 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %168 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %169 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ag = alloca i64, align 8                     ; 6 uses
  %170 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %171 = alloca %"struct.std::array.749", align 1 ; 3 uses
  %172 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %173 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %174 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %175 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ah = alloca i64, align 8                     ; 6 uses
  %176 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %177 = alloca %"struct.std::array.749", align 1 ; 3 uses
  %178 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %179 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %180 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %181 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ai = alloca i64, align 8                     ; 6 uses
  %182 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %183 = alloca %"struct.std::array.738", align 1 ; 3 uses
  %184 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %185 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %186 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %187 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.aj = alloca i64, align 8                     ; 6 uses
  %188 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %189 = alloca %"struct.std::array.738", align 1 ; 3 uses
  %190 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %191 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %192 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %193 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.ak = alloca i64, align 8                     ; 6 uses
  %194 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %195 = alloca %"struct.std::array.727", align 1 ; 6 uses
  %196 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %197 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %198 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %199 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %i.al = alloca i64, align 8                     ; 6 uses
  %200 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %201 = alloca %"struct.std::array.727", align 1 ; 6 uses
  %202 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %203 = alloca %"class.std::shared_ptr.2", align 16 ; 10 uses
  %204 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %205 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %206 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %207 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %208 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %209 = alloca %"class.std::shared_ptr.2", align 16 ; 11 uses
  %210 = alloca %"class.arrow::Result.56", align 8 ; 12 uses
  %211 = alloca %"class.std::shared_ptr", align 16 ; 7 uses
  %212 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  switch i32 %.40.val, label %bb.bzf [
    i32 0, label %bb.b
    i32 1, label %bb.e
    i32 3, label %bb.ba
    i32 2, label %bb.dc
    i32 5, label %bb.fd
    i32 4, label %bb.hf
    i32 7, label %bb.jg
    i32 6, label %bb.li
    i32 9, label %bb.nj
    i32 8, label %bb.pl
    i32 10, label %bb.rm
    i32 11, label %bb.tl
    i32 12, label %bb.vk
    i32 13, label %bb.xj
    i32 39, label %bb.ym
    i32 14, label %bb.zy
    i32 40, label %bb.abk
    i32 34, label %bb.acw
    i32 35, label %bb.aei
    i32 15, label %bb.afu
    i32 33, label %bb.ahg
    i32 16, label %bb.aji
    i32 17, label %bb.all
    i32 18, label %bb.ano
    i32 19, label %bb.arz
    i32 20, label %bb.ava
    i32 37, label %bb.ayb
    i32 21, label %bb.bal
    i32 22, label %bb.bcn
    i32 43, label %bb.bet
    i32 44, label %bb.bgt
    i32 23, label %bb.bit
    i32 24, label %bb.bkt
    i32 25, label %bb.bmt
    i32 36, label %bb.bnv
    i32 41, label %bb.box
    i32 42, label %bb.bpz
    i32 30, label %bb.brb
    i32 32, label %bb.bsd
    i32 26, label %bb.btf
    i32 27, label %bb.bvp
    i32 28, label %bb.bwr
    i32 29, label %bb.bxt
    i32 38, label %bb.bxw
    i32 31, label %bb.bzc
  ]
end_hunk_0
begin_hunk_1_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a

bb.atb:                                           ; preds = %bb.ata
  %i.fnj = zext nneg i32 %.val4.i.i to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %88) #28, !noalias !21292
  %.ptr23.i38.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %88, i64 18
  %i.fnk = udiv i32 %.val4.i.i, 1000000000
  %.zext.i39.i.i.i.i.i = zext nneg i32 %i.fnk to i64 ; 2 uses
  %.neg.i.i.i.i.i40.i.i.i.i.i = mul nsw i64 %.zext.i39.i.i.i.i.i, -1000000000
  %i.fnl = add nsw i64 %.neg.i.i.i.i.i40.i.i.i.i.i, %i.fnj ; 3 uses
  %i.fnm = icmp sgt i64 %i.fnl, 99
  br i1 %i.fnm, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i

.lr.ph.i.i.i.i52.i.i.i.i.i:                       ; preds = %bb.atb, %.lr.ph.i.i.i.i52.i.i.i.i.i
  %.0.idx.i53.i.i.i.i.i = phi i64 [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ 18, %bb.atb ] ; 2 uses
  %.08.i.i.i.i54.i.i.i.i.i = phi i64 [ %i.fnu, %.lr.ph.i.i.i.i52.i.i.i.i.i ], [ %i.fnl, %bb.atb ] ; 3 uses
  %.0.ptr.i55.i.i.i.i.i = getelementptr inbounds i8, ptr %88, i64 %.0.idx.i53.i.i.i.i.i
  %i.fnn = urem i64 %.08.i.i.i.i54.i.i.i.i.i, 100
  %i.fno = shl nuw nsw i64 %i.fnn, 1
  %i.fnp = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fno ; 2 uses
  %i.fnq = getelementptr inbounds nuw i8, ptr %i.fnp, i64 1
  %i.fnr = load i8, ptr %i.fnq, align 1, !tbaa !57, !noalias !21292
  %i.fns = getelementptr inbounds i8, ptr %.0.ptr.i55.i.i.i.i.i, i64 -1
  store i8 %i.fnr, ptr %i.fns, align 1, !tbaa !57, !noalias !21292
  %i.fnt = load i8, ptr %i.fnp, align 1, !tbaa !57, !noalias !21292
  %.0.add.i56.i.i.i.i.i = add nsw i64 %.0.idx.i53.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i57.i.i.i.i.i = getelementptr inbounds i8, ptr %88, i64 %.0.add.i56.i.i.i.i.i
  store i8 %i.fnt, ptr %.ptr24.i57.i.i.i.i.i, align 1, !tbaa !57, !noalias !21292
  %i.fnu = udiv i64 %.08.i.i.i.i54.i.i.i.i.i, 100 ; 2 uses
  %i.fnv = icmp samesign ugt i64 %.08.i.i.i.i54.i.i.i.i.i, 9999
  br i1 %i.fnv, label %.lr.ph.i.i.i.i52.i.i.i.i.i, label %._crit_edge.i.i.i.i41.i.i.i.i.i, !llvm.loop !21226

._crit_edge.i.i.i.i41.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i52.i.i.i.i.i, %bb.atb
  %.1.idx.i42.i.i.i.i.i = phi i64 [ 18, %bb.atb ], [ %.0.add.i56.i.i.i.i.i, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i43.i.i.i.i.i = phi i64 [ %i.fnl, %bb.atb ], [ %i.fnu, %.lr.ph.i.i.i.i52.i.i.i.i.i ] ; 3 uses
  %i.fnw = icmp sgt i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 9
  br i1 %i.fnw, label %bb.atc, label %bb.atd

bb.atc:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.fnx = shl nuw nsw i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i, 1
  %i.fny = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fnx ; 2 uses
  %i.fnz = getelementptr inbounds nuw i8, ptr %i.fny, i64 1
  %i.foa = load i8, ptr %i.fnz, align 1, !tbaa !57, !noalias !21292
  %.1.add.i51.i.i.i.i.i = add nsw i64 %.1.idx.i42.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i.i.i.i.i.i = getelementptr inbounds i8, ptr %88, i64 %.1.add.i51.i.i.i.i.i
  store i8 %i.foa, ptr %.ptr22.i.i.i.i.i.i, align 1, !tbaa !57, !noalias !21292
  %i.fob = load i8, ptr %i.fny, align 1, !tbaa !57, !noalias !21292
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

bb.atd:                                           ; preds = %._crit_edge.i.i.i.i41.i.i.i.i.i
  %i.foc = trunc i64 %.0.lcssa.i.i.i.i43.i.i.i.i.i to i8
  %i.fod = add i8 %i.foc, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i: ; preds = %bb.atd, %bb.atc
  %.2.idx.i45.i.i.i.i.i = phi i64 [ %.1.add.i51.i.i.i.i.i, %bb.atc ], [ %.1.idx.i42.i.i.i.i.i, %bb.atd ] ; 3 uses
  %.sink.i.i.i.i46.i.i.i.i.i = phi i8 [ %i.fob, %bb.atc ], [ %i.fod, %bb.atd ]
  %i.foe = getelementptr i8, ptr %88, i64 %.2.idx.i45.i.i.i.i.i ; 2 uses
  %.ptr.i47.i.i.i.i.i = getelementptr i8, ptr %i.foe, i64 -1
  store i8 %.sink.i.i.i.i46.i.i.i.i.i, ptr %.ptr.i47.i.i.i.i.i, align 1, !tbaa !57, !noalias !21292
  %i.fof = icmp sgt i64 %.2.idx.i45.i.i.i.i.i, 10
  br i1 %i.fof, label %.lr.ph.i.i.preheader.i48.i.i.i.i.i, label %bb.ate

.lr.ph.i.i.preheader.i48.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.fog = add i64 %.2.idx.i45.i.i.i.i.i, %i.fni  ; 2 uses
  %i.foh = add i64 %i.fog, -2
  %i.foi = add nuw i64 %i.fni, 9
  %umin.i49.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.foh, i64 %i.foi) ; 2 uses
  %i.foj = sub i64 %umin.i49.i.i.i.i.i, %i.fni
  %scevgep.i50.i.i.i.i.i = getelementptr i8, ptr %88, i64 %i.foj ; 2 uses
  %i.fok = xor i64 %umin.i49.i.i.i.i.i, -1
  %i.fol = add i64 %i.fog, %i.fok
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i50.i.i.i.i.i, i8 48, i64 %i.fol, i1 false), !tbaa !57, !noalias !21292
  %scevgep28.i.i.i.i.i.i = getelementptr i8, ptr %scevgep.i50.i.i.i.i.i, i64 1
  br label %bb.ate

bb.ate:                                           ; preds = %.lr.ph.i.i.preheader.i48.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i
  %i.fom = phi ptr [ %i.foe, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i44.i.i.i.i.i ], [ %scevgep28.i.i.i.i.i.i, %.lr.ph.i.i.preheader.i48.i.i.i.i.i ] ; 9 uses
  %i.fon = getelementptr i8, ptr %i.fom, i64 -2
  store i8 46, ptr %i.fon, align 1, !tbaa !57, !noalias !21292
  %i.foo = shl nuw nsw i64 %.zext.i39.i.i.i.i.i, 1
  %i.fop = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.foo ; 2 uses
  %i.foq = getelementptr inbounds nuw i8, ptr %i.fop, i64 1
  %i.for = load i8, ptr %i.foq, align 1, !tbaa !57, !noalias !21292
  %i.fos = getelementptr i8, ptr %i.fom, i64 -3
  store i8 %i.for, ptr %i.fos, align 1, !tbaa !57, !noalias !21292
  %i.fot = load i8, ptr %i.fop, align 1, !tbaa !57, !noalias !21292
  %i.fou = getelementptr i8, ptr %i.fom, i64 -4
  store i8 %i.fot, ptr %i.fou, align 1, !tbaa !57, !noalias !21292
  %i.fov = getelementptr i8, ptr %i.fom, i64 -5
  store i8 58, ptr %i.fov, align 1, !tbaa !57, !noalias !21292
  %i.fow = load i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 1), align 1, !tbaa !57, !noalias !21292 ; 2 uses
  %i.fox = getelementptr i8, ptr %i.fom, i64 -6
  store i8 %i.fow, ptr %i.fox, align 1, !tbaa !57, !noalias !21292
  %i.foy = load i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, align 1, !tbaa !57, !noalias !21292 ; 2 uses
  %i.foz = getelementptr i8, ptr %i.fom, i64 -7
  store i8 %i.foy, ptr %i.foz, align 1, !tbaa !57, !noalias !21292
  %i.fpa = getelementptr i8, ptr %i.fom, i64 -8
  store i8 58, ptr %i.fpa, align 1, !tbaa !57, !noalias !21292
  %i.fpb = getelementptr i8, ptr %i.fom, i64 -9
  store i8 %i.fow, ptr %i.fpb, align 1, !tbaa !57, !noalias !21292
  %i.fpc = getelementptr i8, ptr %i.fom, i64 -10  ; 4 uses
  store i8 %i.foy, ptr %i.fpc, align 1, !tbaa !57, !noalias !21292
  %i.fpd = ptrtoint ptr %.ptr23.i38.i.i.i.i.i to i64
  %i.fpe = ptrtoint ptr %i.fpc to i64
  %i.fpf = sub i64 %i.fpd, %i.fpe                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %85), !noalias !21282
  %i.fpg = getelementptr inbounds nuw i8, ptr %85, i64 16 ; 7 uses
  store ptr %i.fpg, ptr %85, align 8, !tbaa !188, !noalias !21295
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #28, !noalias !21295
  store i64 %i.fpf, ptr %i.n, align 8, !tbaa !278, !noalias !21295
  %i.fph = icmp ugt i64 %i.fpf, 15
  br i1 %i.fph, label %.noexc.i.i.i.i78.i.i.i.i.i, label %._crit_edge.i.i.i.i.i72.i.i.i.i.i

.noexc.i.i.i.i78.i.i.i.i.i:                       ; preds = %bb.ate
  %i.fpi = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %85, ptr noundef nonnull align 8 dereferenceable(8) %i.n, i64 noundef 0)
          to label %.noexc13.i unwind label %bb.auj, !noalias !21265 ; 2 uses

.noexc13.i:                                       ; preds = %.noexc.i.i.i.i78.i.i.i.i.i
  store ptr %i.fpi, ptr %85, align 8, !tbaa !51, !noalias !21295
  %i.fpj = load i64, ptr %i.n, align 8, !tbaa !278, !noalias !21295
  store i64 %i.fpj, ptr %i.fpg, align 8, !tbaa !57, !noalias !21295
  br label %._crit_edge.i.i.i.i.i72.i.i.i.i.i

._crit_edge.i.i.i.i.i72.i.i.i.i.i:                ; preds = %.noexc13.i, %bb.ate
  %i.fpk = phi ptr [ %i.fpi, %.noexc13.i ], [ %i.fpg, %bb.ate ] ; 2 uses
  switch i64 %i.fpf, label %bb.atg [
    i64 1, label %bb.atf
    i64 0, label %bb.ath
  ]

bb.atf:                                           ; preds = %._crit_edge.i.i.i.i.i72.i.i.i.i.i
  %i.fpl = load i8, ptr %i.fpc, align 1, !tbaa !57, !noalias !21295
  store i8 %i.fpl, ptr %i.fpk, align 1, !tbaa !57, !noalias !21295
  br label %bb.ath

bb.atg:                                           ; preds = %._crit_edge.i.i.i.i.i72.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fpk, ptr nonnull readonly align 1 %i.fpc, i64 %i.fpf, i1 false), !noalias !21295
  br label %bb.ath

bb.ath:                                           ; preds = %bb.atg, %bb.atf, %._crit_edge.i.i.i.i.i72.i.i.i.i.i
  %i.fpm = load i64, ptr %i.n, align 8, !tbaa !278, !noalias !21295 ; 2 uses
  %i.fpn = getelementptr inbounds nuw i8, ptr %85, i64 8
  store i64 %i.fpm, ptr %i.fpn, align 8, !tbaa !56, !noalias !21295
  %i.fpo = load ptr, ptr %85, align 8, !tbaa !51, !noalias !21295
  %i.fpp = getelementptr inbounds nuw i8, ptr %i.fpo, i64 %i.fpm
  store i8 0, ptr %i.fpp, align 1, !tbaa !57, !noalias !21295
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #28, !noalias !21295
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %92, ptr noundef nonnull %85)
          to label %bb.ati unwind label %bb.atj, !noalias !21271

bb.ati:                                           ; preds = %bb.ath
  %i.fpq = load ptr, ptr %85, align 8, !tbaa !51, !noalias !21295 ; 2 uses
  %i.fpr = icmp eq ptr %i.fpq, %i.fpg
  br i1 %i.fpr, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit80.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76.i.i.i.i.i: ; preds = %bb.ati
  %i.fps = load i64, ptr %i.fpg, align 8, !tbaa !57, !noalias !21295
  %i.fpt = add i64 %i.fps, 1
  call void @_ZdlPvm(ptr noundef %i.fpq, i64 noundef %i.fpt) #29, !noalias !21271
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit80.i.i.i.i.i

bb.atj:                                           ; preds = %bb.ath
  %i.fpu = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fpv = load ptr, ptr %85, align 8, !tbaa !51, !noalias !21295 ; 2 uses
  %i.fpw = icmp eq ptr %i.fpv, %i.fpg
  br i1 %i.fpw, label %.body.i1191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i73.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i73.i.i.i.i.i: ; preds = %bb.atj
  %i.fpx = load i64, ptr %i.fpg, align 8, !tbaa !57, !noalias !21295
  %i.fpy = add i64 %i.fpx, 1
  call void @_ZdlPvm(ptr noundef %i.fpv, i64 noundef %i.fpy) #29, !noalias !21271
  br label %.body.i1191

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit80.i.i.i.i.i: ; preds = %bb.ati, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i76.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %85), !noalias !21282
  call void @llvm.lifetime.end.p0(ptr nonnull %88) #28, !noalias !21292
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.atk:                                           ; preds = %bb.asf
  %spec.select.i.i58.i.i.i.i.i = icmp ult i32 %.val4.i.i, 86400
  br i1 %spec.select.i.i58.i.i.i.i.i, label %bb.atl, label %.invoke.i, !prof !207

.invoke.i:                                        ; preds = %bb.atk, %bb.ata, %bb.asq, %bb.asg
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRiRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %92, i32 %.val4.i.i)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.auj, !noalias !21265

bb.atl:                                           ; preds = %bb.atk
  %i.fpz = zext nneg i32 %.val4.i.i to i64
  %i.fqa = udiv i32 %.val4.i.i, 3600
  %.zext.i59.i.i.i.i.i = zext nneg i32 %i.fqa to i64 ; 3 uses
  %i.fqb = udiv i32 %.val4.i.i, 60
  %.zext16.i.i.i.i.i.i = zext nneg i32 %i.fqb to i64
  %.neg.i.i.i.i60.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -60
  %i.fqc = add nsw i64 %.neg.i.i.i.i60.i.i.i.i.i, %.zext16.i.i.i.i.i.i ; 2 uses
  %.neg.i5.i.i.i61.i.i.i.i.i = mul nsw i64 %.zext.i59.i.i.i.i.i, -3600
  %i.fqd = add nsw i64 %.neg.i5.i.i.i61.i.i.i.i.i, %i.fpz
  %.neg.i6.i.i.i62.i.i.i.i.i = mul nsw i64 %i.fqc, -60
  %i.fqe = add nsw i64 %i.fqd, %.neg.i6.i.i.i62.i.i.i.i.i
  %i.fqf = shl nsw i64 %i.fqe, 1
  %213 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqf ; 2 uses
  %i.fqg = getelementptr inbounds nuw i8, ptr %213, i64 1
  %214 = load i8, ptr %i.fqg, align 1, !tbaa !57, !noalias !21298
  %215 = load i8, ptr %213, align 1, !tbaa !57, !noalias !21298
  %i.fqh = shl nsw i64 %i.fqc, 1
  %216 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqh ; 2 uses
  %i.fqi = getelementptr inbounds nuw i8, ptr %216, i64 1
  %217 = load i8, ptr %i.fqi, align 1, !tbaa !57, !noalias !21298
  %218 = load i8, ptr %216, align 1, !tbaa !57, !noalias !21298
  %i.fqj = shl nuw nsw i64 %.zext.i59.i.i.i.i.i, 1
  %i.fqk = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.fqj ; 2 uses
  %i.fql = getelementptr inbounds nuw i8, ptr %i.fqk, i64 1
  %i.fqm = load i8, ptr %i.fql, align 1, !tbaa !57, !noalias !21298
  %i.fqn = load i8, ptr %i.fqk, align 1, !tbaa !57, !noalias !21298
  call void @llvm.lifetime.start.p0(ptr nonnull %84), !noalias !21282
  %219 = getelementptr inbounds nuw i8, ptr %84, i64 16 ; 6 uses
  store ptr %219, ptr %84, align 8, !tbaa !188, !noalias !21301
  store i8 %i.fqn, ptr %219, align 8, !noalias !21301
  %.sroa.4.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 17
  store i8 %i.fqm, ptr %.sroa.4.1..sroa_idx.i.i.i.i.i, align 1, !noalias !21301
  %.sroa.5.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 18
  store i8 58, ptr %.sroa.5.1..sroa_idx.i.i.i.i.i, align 2, !noalias !21301
  %.sroa.6.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 19
  store i8 %218, ptr %.sroa.6.1..sroa_idx.i.i.i.i.i, align 1, !noalias !21301
  %.sroa.7.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 20
  store i8 %217, ptr %.sroa.7.1..sroa_idx.i.i.i.i.i, align 4, !noalias !21301
  %.sroa.8.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 21
  store i8 58, ptr %.sroa.8.1..sroa_idx.i.i.i.i.i, align 1, !noalias !21301
  %.sroa.9.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 22
  store i8 %215, ptr %.sroa.9.1..sroa_idx.i.i.i.i.i, align 2, !noalias !21301
  %.sroa.10.1..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %84, i64 23
  store i8 %214, ptr %.sroa.10.1..sroa_idx.i.i.i.i.i, align 1, !noalias !21301
  %220 = getelementptr inbounds nuw i8, ptr %84, i64 8
  store i64 8, ptr %220, align 8, !tbaa !56, !noalias !21301
  %221 = getelementptr inbounds nuw i8, ptr %84, i64 24
  store i8 0, ptr %221, align 8, !tbaa !57, !noalias !21301
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %92, ptr noundef nonnull %84)
          to label %bb.atm unwind label %bb.atn, !noalias !21271

bb.atm:                                           ; preds = %bb.atl
  %i.fqo = load ptr, ptr %84, align 8, !tbaa !51, !noalias !21301 ; 2 uses
  %i.fqp = icmp eq ptr %i.fqo, %219
  br i1 %i.fqp, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit88.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85.i.i.i.i.i: ; preds = %bb.atm
  %i.fqq = load i64, ptr %219, align 8, !tbaa !57, !noalias !21301
  %i.fqr = add i64 %i.fqq, 1
  call void @_ZdlPvm(ptr noundef %i.fqo, i64 noundef %i.fqr) #29, !noalias !21271
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit88.i.i.i.i.i

bb.atn:                                           ; preds = %bb.atl
  %i.fqs = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fqt = load ptr, ptr %84, align 8, !tbaa !51, !noalias !21301 ; 2 uses
  %i.fqu = icmp eq ptr %i.fqt, %219
  br i1 %i.fqu, label %.body.i1191, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i82.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i82.i.i.i.i.i: ; preds = %bb.atn
  %i.fqv = load i64, ptr %219, align 8, !tbaa !57, !noalias !21301
  %i.fqw = add i64 %i.fqv, 1
  call void @_ZdlPvm(ptr noundef %i.fqt, i64 noundef %i.fqw) #29, !noalias !21271
  br label %.body.i1191

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit88.i.i.i.i.i: ; preds = %bb.atm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i85.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %84), !noalias !21282
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.asd, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit88.i.i.i.i.i, %.invoke.i, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit80.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit71.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1195
  call void @llvm.lifetime.end.p0(ptr nonnull %91), !noalias !21271
  %i.fqx = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1196 unwind label %bb.aua, !noalias !21271 ; 12 uses

.noexc.i.i1196:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fqy = getelementptr inbounds nuw i8, ptr %i.fqx, i64 8
  store i32 1, ptr %i.fqy, align 8, !tbaa !194, !noalias !21304
  %i.fqz = getelementptr inbounds nuw i8, ptr %i.fqx, i64 12 ; 3 uses
  store i32 1, ptr %i.fqz, align 4, !tbaa !196, !noalias !21304
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.fqx, align 8, !tbaa !29, !noalias !21304
  %i.fra = getelementptr inbounds nuw i8, ptr %92, i64 8
  %i.frb = getelementptr inbounds nuw i8, ptr %i.fqx, i64 24
  %i.frc = getelementptr inbounds nuw i8, ptr %i.fqx, i64 32 ; 3 uses
  %i.frd = getelementptr inbounds nuw i8, ptr %i.fqx, i64 40
  %i.fre = getelementptr inbounds nuw i8, ptr %i.fqx, i64 56
  %i.frf = getelementptr inbounds nuw i8, ptr %i.fqx, i64 64
  %i.frg = load <2 x ptr>, ptr %92, align 16, !tbaa !189, !noalias !21304
  %i.frh = load ptr, ptr %92, align 16, !tbaa !191, !noalias !21304 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %92, i8 0, i64 16, i1 false), !noalias !21304
  %i.fri = load <2 x ptr>, ptr %94, align 16, !tbaa !189, !noalias !21304
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %94, i8 0, i64 16, i1 false), !noalias !21304
  store i64 0, ptr %i.frc, align 8, !noalias !21304
  store <2 x ptr> %i.fri, ptr %i.frd, align 8, !tbaa !189, !noalias !21304
  store i8 1, ptr %i.fre, align 8, !tbaa !66, !noalias !21304
  store <2 x ptr> %i.frg, ptr %i.frf, align 8, !tbaa !189, !noalias !21304
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1197 = icmp eq ptr %i.frh, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1197, label %bb.atp, label %bb.ato

bb.ato:                                           ; preds = %.noexc.i.i1196
  %i.frj = getelementptr inbounds nuw i8, ptr %i.frh, i64 24
  %i.frk = load i64, ptr %i.frj, align 8, !tbaa !199, !noalias !21304
  %i.frl = shl i64 %i.frk, 32
  br label %bb.atp

bb.atp:                                           ; preds = %bb.ato, %.noexc.i.i1196
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1198 = phi i64 [ %i.frl, %bb.ato ], [ 0, %.noexc.i.i1196 ]
  %i.frm = getelementptr inbounds nuw i8, ptr %i.fqx, i64 16 ; 3 uses
  %i.frn = getelementptr inbounds nuw i8, ptr %i.fqx, i64 80
  store i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1198, ptr %i.frn, align 8, !noalias !21304
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12StringScalarE, i64 16), ptr %i.frm, align 8, !tbaa !29, !noalias !21304
  store ptr %i.frm, ptr %i.frb, align 8, !tbaa !264, !noalias !21304
  %i.fro = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21304
  %.not.i.i3.i.i.i.i.i.i.i.i1199 = icmp eq i8 %i.fro, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i1199, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1200

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1200: ; preds = %bb.atp
  store i32 2, ptr %i.fqz, align 4, !tbaa !3, !noalias !21304
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216: ; preds = %bb.atp
  %i.frp = atomicrmw volatile add ptr %i.fqz, i32 1 acq_rel, align 4, !noalias !21304 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i1217 = load ptr, ptr %i.frc, align 8, !tbaa !265, !noalias !21304 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i1218 = icmp eq ptr %.pre.i.i.i.i.i.i.i.i1217, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i1218, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201, label %bb.atq

bb.atq:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216
  %i.frq = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i1217, i64 12 ; 3 uses
  %i.frr = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21304
  %.not.i7.i.i.i.i.i.i.i.i.i1219 = icmp eq i8 %i.frr, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i1219, label %bb.ats, label %bb.atr

bb.atr:                                           ; preds = %bb.atq
  %i.frs = load i32, ptr %i.frq, align 4, !tbaa !3, !noalias !21304 ; 2 uses
  %i.frt = add nsw i32 %i.frs, -1
  store i32 %i.frt, ptr %i.frq, align 4, !tbaa !3, !noalias !21304
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220

bb.ats:                                           ; preds = %bb.atq
  %i.fru = atomicrmw volatile add ptr %i.frq, i32 -1 acq_rel, align 4, !noalias !21304
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220: ; preds = %bb.ats, %bb.atr
  %.0.i.i.i.i.i.i.i.i.i.i.i1221 = phi i32 [ %i.frs, %bb.atr ], [ %i.fru, %bb.ats ]
  %i.frv = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i1221, 1
  br i1 %i.frv, label %bb.att, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201

bb.att:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220
  %i.frw = load ptr, ptr %.pre.i.i.i.i.i.i.i.i1217, align 8, !tbaa !29, !noalias !21304
  %i.frx = getelementptr inbounds nuw i8, ptr %i.frw, i64 24
  %i.fry = load ptr, ptr %i.frx, align 8, !noalias !21304
  call void %i.fry(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i1217) #28, !noalias !21304, !inline_history !21307
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201

_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201: ; preds = %bb.att, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1220, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1216, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1200
  store ptr %i.fqx, ptr %i.frc, align 8, !tbaa !265, !noalias !21304
  store ptr null, ptr %93, align 8, !tbaa !74, !alias.scope !21268, !noalias !21265
  %i.frz = getelementptr inbounds nuw i8, ptr %93, i64 8 ; 3 uses
  store ptr %i.frm, ptr %i.frz, align 8, !tbaa !252, !alias.scope !21268, !noalias !21265
  %i.fsa = getelementptr inbounds nuw i8, ptr %93, i64 16 ; 2 uses
  store ptr %i.fqx, ptr %i.fsa, align 8, !tbaa !190, !alias.scope !21268, !noalias !21265
  %i.fsb = load ptr, ptr %i.fra, align 8, !tbaa !190, !noalias !21271 ; 8 uses
  %.not.i.i5.i.i = icmp eq ptr %i.fsb, null
  br i1 %.not.i.i5.i.i, label %bb.aub, label %bb.atu

bb.atu:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201
  %i.fsc = getelementptr inbounds nuw i8, ptr %i.fsb, i64 8 ; 4 uses
  %i.fsd = load atomic i64, ptr %i.fsc acquire, align 8, !noalias !21271 ; 2 uses
  %i.fse = icmp eq i64 %i.fsd, 4294967297
  %i.fsf = trunc i64 %i.fsd to i32                ; 2 uses
  br i1 %i.fse, label %bb.atv, label %bb.atw

bb.atv:                                           ; preds = %bb.atu
  store i32 0, ptr %i.fsc, align 8, !tbaa !194, !noalias !21271
  %i.fsg = getelementptr inbounds nuw i8, ptr %i.fsb, i64 12
  store i32 0, ptr %i.fsg, align 4, !tbaa !196, !noalias !21271
  %i.fsh = load ptr, ptr %i.fsb, align 8, !tbaa !29, !noalias !21271
  %i.fsi = getelementptr inbounds nuw i8, ptr %i.fsh, i64 16
  %i.fsj = load ptr, ptr %i.fsi, align 8, !noalias !21271
  call void %i.fsj(ptr noundef nonnull align 8 dereferenceable(16) %i.fsb) #28, !noalias !21271, !inline_history !21308
  %i.fsk = load ptr, ptr %i.fsb, align 8, !tbaa !29, !noalias !21271
  %i.fsl = getelementptr inbounds nuw i8, ptr %i.fsk, i64 24
  %i.fsm = load ptr, ptr %i.fsl, align 8, !noalias !21271
  call void %i.fsm(ptr noundef nonnull align 8 dereferenceable(16) %i.fsb) #28, !noalias !21271, !inline_history !21308
  br label %bb.aub

bb.atw:                                           ; preds = %bb.atu
  %i.fsn = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21271
  %.not.i.i.i6.i.i = icmp eq i8 %i.fsn, 0
  br i1 %.not.i.i.i6.i.i, label %bb.aty, label %bb.atx

bb.atx:                                           ; preds = %bb.atw
  %i.fso = add nsw i32 %i.fsf, -1
  store i32 %i.fso, ptr %i.fsc, align 8, !tbaa !3, !noalias !21271
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i

bb.aty:                                           ; preds = %bb.atw
  %i.fsp = atomicrmw volatile add ptr %i.fsc, i32 -1 acq_rel, align 4, !noalias !21271
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i: ; preds = %bb.aty, %bb.atx
  %.0.i.i.i.i8.i.i = phi i32 [ %i.fsf, %bb.atx ], [ %i.fsp, %bb.aty ]
  %i.fsq = icmp eq i32 %.0.i.i.i.i8.i.i, 1
  br i1 %i.fsq, label %bb.atz, label %bb.aub, !prof !198

bb.atz:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.fsb) #28, !noalias !21271
  br label %bb.aub

bb.aua:                                           ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time32TypeEvEENS_12Time32ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.fsr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %92) #28, !noalias !21271
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28, !noalias !21271
  br label %.body.i1191

bb.aub:                                           ; preds = %bb.atz, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i, %bb.atv, %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1201
  call void @llvm.lifetime.end.p0(ptr nonnull %92) #28, !noalias !21271
  %i.fss = load ptr, ptr %i.fge, align 8, !tbaa !190, !noalias !21265 ; 8 uses
  %.not.i.i.i1202 = icmp eq ptr %i.fss, null
  br i1 %.not.i.i.i1202, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1205, label %bb.auc

bb.auc:                                           ; preds = %bb.aub
  %i.fst = getelementptr inbounds nuw i8, ptr %i.fss, i64 8 ; 4 uses
  %i.fsu = load atomic i64, ptr %i.fst acquire, align 8, !noalias !21265 ; 2 uses
  %i.fsv = icmp eq i64 %i.fsu, 4294967297
  %i.fsw = trunc i64 %i.fsu to i32                ; 2 uses
  br i1 %i.fsv, label %bb.aud, label %bb.aue

bb.aud:                                           ; preds = %bb.auc
  store i32 0, ptr %i.fst, align 8, !tbaa !194, !noalias !21265
  %i.fsx = getelementptr inbounds nuw i8, ptr %i.fss, i64 12
  store i32 0, ptr %i.fsx, align 4, !tbaa !196, !noalias !21265
  %i.fsy = load ptr, ptr %i.fss, align 8, !tbaa !29, !noalias !21265
  %i.fsz = getelementptr inbounds nuw i8, ptr %i.fsy, i64 16
  %i.fta = load ptr, ptr %i.fsz, align 8, !noalias !21265
  call void %i.fta(ptr noundef nonnull align 8 dereferenceable(16) %i.fss) #28, !noalias !21265, !inline_history !21309
  %i.ftb = load ptr, ptr %i.fss, align 8, !tbaa !29, !noalias !21265
  %i.ftc = getelementptr inbounds nuw i8, ptr %i.ftb, i64 24
  %i.ftd = load ptr, ptr %i.ftc, align 8, !noalias !21265
  call void %i.ftd(ptr noundef nonnull align 8 dereferenceable(16) %i.fss) #28, !noalias !21265, !inline_history !21309
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1205

bb.aue:                                           ; preds = %bb.auc
  %i.fte = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21265
  %.not.i.i.i15.i = icmp eq i8 %i.fte, 0
  br i1 %.not.i.i.i15.i, label %bb.aug, label %bb.auf

bb.auf:                                           ; preds = %bb.aue
  %i.ftf = add nsw i32 %i.fsw, -1
  store i32 %i.ftf, ptr %i.fst, align 8, !tbaa !3, !noalias !21265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1203

bb.aug:                                           ; preds = %bb.aue
  %i.ftg = atomicrmw volatile add ptr %i.fst, i32 -1 acq_rel, align 4, !noalias !21265
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1203

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1203: ; preds = %bb.aug, %bb.auf
  %.0.i.i.i.i.i1204 = phi i32 [ %i.fsw, %bb.auf ], [ %i.ftg, %bb.aug ]
  %i.fth = icmp eq i32 %.0.i.i.i.i.i1204, 1
  br i1 %i.fth, label %bb.auh, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1205, !prof !198

end_hunk_1
begin_hunk_2_@_ZN5arrow15VisitTypeInlineINS_12_GLOBAL__N_115FromTypeVisitorINS_10StringTypeEEEJEEENS_6StatusERKNS_8DataTypeEPT_DpOT0_:bb.a
  %i.gcp = add nsw i64 %.neg.i.i.i.i.i41.i.i.i.i.i, %i.gcn ; 3 uses
  %i.gcq = icmp sgt i64 %i.gcp, 99
  br i1 %i.gcq, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i

.lr.ph.i.i.i.i55.i.i.i.i.i:                       ; preds = %bb.awc, %.lr.ph.i.i.i.i55.i.i.i.i.i
  %.0.idx.i56.i.i.i.i.i = phi i64 [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ 18, %bb.awc ] ; 2 uses
  %.08.i.i.i.i57.i.i.i.i.i = phi i64 [ %i.gcy, %.lr.ph.i.i.i.i55.i.i.i.i.i ], [ %i.gcp, %bb.awc ] ; 3 uses
  %.0.ptr.i58.i.i.i.i.i = getelementptr inbounds i8, ptr %77, i64 %.0.idx.i56.i.i.i.i.i
  %i.gcr = urem i64 %.08.i.i.i.i57.i.i.i.i.i, 100
  %i.gcs = shl nuw nsw i64 %i.gcr, 1
  %i.gct = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gcs ; 2 uses
  %i.gcu = getelementptr inbounds nuw i8, ptr %i.gct, i64 1
  %i.gcv = load i8, ptr %i.gcu, align 1, !tbaa !57, !noalias !21347
  %i.gcw = getelementptr inbounds i8, ptr %.0.ptr.i58.i.i.i.i.i, i64 -1
  store i8 %i.gcv, ptr %i.gcw, align 1, !tbaa !57, !noalias !21347
  %i.gcx = load i8, ptr %i.gct, align 1, !tbaa !57, !noalias !21347
  %.0.add.i59.i.i.i.i.i = add nsw i64 %.0.idx.i56.i.i.i.i.i, -2 ; 3 uses
  %.ptr24.i60.i.i.i.i.i = getelementptr inbounds i8, ptr %77, i64 %.0.add.i59.i.i.i.i.i
  store i8 %i.gcx, ptr %.ptr24.i60.i.i.i.i.i, align 1, !tbaa !57, !noalias !21347
  %i.gcy = udiv i64 %.08.i.i.i.i57.i.i.i.i.i, 100 ; 2 uses
  %i.gcz = icmp samesign ugt i64 %.08.i.i.i.i57.i.i.i.i.i, 9999
  br i1 %i.gcz, label %.lr.ph.i.i.i.i55.i.i.i.i.i, label %._crit_edge.i.i.i.i42.i.i.i.i.i, !llvm.loop !21226

._crit_edge.i.i.i.i42.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i55.i.i.i.i.i, %bb.awc
  %.1.idx.i43.i.i.i.i.i = phi i64 [ 18, %bb.awc ], [ %.0.add.i59.i.i.i.i.i, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 2 uses
  %.0.lcssa.i.i.i.i44.i.i.i.i.i = phi i64 [ %i.gcp, %bb.awc ], [ %i.gcy, %.lr.ph.i.i.i.i55.i.i.i.i.i ] ; 3 uses
  %i.gda = icmp sgt i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 9
  br i1 %i.gda, label %bb.awd, label %bb.awe

bb.awd:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.gdb = shl nuw nsw i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i, 1
  %i.gdc = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gdb ; 2 uses
  %i.gdd = getelementptr inbounds nuw i8, ptr %i.gdc, i64 1
  %i.gde = load i8, ptr %i.gdd, align 1, !tbaa !57, !noalias !21347
  %.1.add.i53.i.i.i.i.i = add nsw i64 %.1.idx.i43.i.i.i.i.i, -1 ; 2 uses
  %.ptr22.i54.i.i.i.i.i = getelementptr inbounds i8, ptr %77, i64 %.1.add.i53.i.i.i.i.i
  store i8 %i.gde, ptr %.ptr22.i54.i.i.i.i.i, align 1, !tbaa !57, !noalias !21347
  %i.gdf = load i8, ptr %i.gdc, align 1, !tbaa !57, !noalias !21347
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

bb.awe:                                           ; preds = %._crit_edge.i.i.i.i42.i.i.i.i.i
  %i.gdg = trunc i64 %.0.lcssa.i.i.i.i44.i.i.i.i.i to i8
  %i.gdh = add i8 %i.gdg, 48
  br label %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i

_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i: ; preds = %bb.awe, %bb.awd
  %.2.idx.i46.i.i.i.i.i = phi i64 [ %.1.add.i53.i.i.i.i.i, %bb.awd ], [ %.1.idx.i43.i.i.i.i.i, %bb.awe ] ; 3 uses
  %.sink.i.i.i.i47.i.i.i.i.i = phi i8 [ %i.gdf, %bb.awd ], [ %i.gdh, %bb.awe ]
  %i.gdi = getelementptr i8, ptr %77, i64 %.2.idx.i46.i.i.i.i.i ; 2 uses
  %.ptr.i48.i.i.i.i.i = getelementptr i8, ptr %i.gdi, i64 -1
  store i8 %.sink.i.i.i.i47.i.i.i.i.i, ptr %.ptr.i48.i.i.i.i.i, align 1, !tbaa !57, !noalias !21347
  %i.gdj = icmp sgt i64 %.2.idx.i46.i.i.i.i.i, 10
  br i1 %i.gdj, label %.lr.ph.i.i.preheader.i49.i.i.i.i.i, label %bb.awf

.lr.ph.i.i.preheader.i49.i.i.i.i.i:               ; preds = %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.gdk = add i64 %.2.idx.i46.i.i.i.i.i, %i.gci  ; 2 uses
  %i.gdl = add i64 %i.gdk, -2
  %i.gdm = add nuw i64 %i.gci, 9
  %umin.i50.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.gdl, i64 %i.gdm) ; 2 uses
  %i.gdn = sub i64 %umin.i50.i.i.i.i.i, %i.gci
  %scevgep.i51.i.i.i.i.i = getelementptr i8, ptr %77, i64 %i.gdn ; 2 uses
  %i.gdo = xor i64 %umin.i50.i.i.i.i.i, -1
  %i.gdp = add i64 %i.gdk, %i.gdo
  call void @llvm.memset.p0.i64(ptr align 1 %scevgep.i51.i.i.i.i.i, i8 48, i64 %i.gdp, i1 false), !tbaa !57, !noalias !21347
  %scevgep28.i52.i.i.i.i.i = getelementptr i8, ptr %scevgep.i51.i.i.i.i.i, i64 1
  br label %bb.awf

bb.awf:                                           ; preds = %.lr.ph.i.i.preheader.i49.i.i.i.i.i, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i
  %i.gdq = phi ptr [ %i.gdi, %_ZN5arrow8internal6detail15FormatAllDigitsIlEEvT_PPc.exit.i.i.i45.i.i.i.i.i ], [ %scevgep28.i52.i.i.i.i.i, %.lr.ph.i.i.preheader.i49.i.i.i.i.i ] ; 9 uses
  %i.gdr = getelementptr i8, ptr %i.gdq, i64 -2
  store i8 46, ptr %i.gdr, align 1, !tbaa !57, !noalias !21347
  %i.gds = shl nsw i64 %i.gco, 1
  %i.gdt = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gds ; 2 uses
  %i.gdu = getelementptr inbounds nuw i8, ptr %i.gdt, i64 1
  %i.gdv = load i8, ptr %i.gdu, align 1, !tbaa !57, !noalias !21347
  %i.gdw = getelementptr i8, ptr %i.gdq, i64 -3
  store i8 %i.gdv, ptr %i.gdw, align 1, !tbaa !57, !noalias !21347
  %i.gdx = load i8, ptr %i.gdt, align 1, !tbaa !57, !noalias !21347
  %i.gdy = getelementptr i8, ptr %i.gdq, i64 -4
  store i8 %i.gdx, ptr %i.gdy, align 1, !tbaa !57, !noalias !21347
  %i.gdz = getelementptr i8, ptr %i.gdq, i64 -5
  store i8 58, ptr %i.gdz, align 1, !tbaa !57, !noalias !21347
  %i.gea = shl nsw i64 %i.gcl, 1
  %i.geb = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gea ; 2 uses
  %i.gec = getelementptr inbounds nuw i8, ptr %i.geb, i64 1
  %i.ged = load i8, ptr %i.gec, align 1, !tbaa !57, !noalias !21347
  %i.gee = getelementptr i8, ptr %i.gdq, i64 -6
  store i8 %i.ged, ptr %i.gee, align 1, !tbaa !57, !noalias !21347
  %i.gef = load i8, ptr %i.geb, align 1, !tbaa !57, !noalias !21347
  %i.geg = getelementptr i8, ptr %i.gdq, i64 -7
  store i8 %i.gef, ptr %i.geg, align 1, !tbaa !57, !noalias !21347
  %i.geh = getelementptr i8, ptr %i.gdq, i64 -8
  store i8 58, ptr %i.geh, align 1, !tbaa !57, !noalias !21347
  %i.gei = shl nuw nsw i64 %i.gcj, 1
  %i.gej = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gei ; 2 uses
  %i.gek = getelementptr inbounds nuw i8, ptr %i.gej, i64 1
  %i.gel = load i8, ptr %i.gek, align 1, !tbaa !57, !noalias !21347
  %i.gem = getelementptr i8, ptr %i.gdq, i64 -9
  store i8 %i.gel, ptr %i.gem, align 1, !tbaa !57, !noalias !21347
  %i.gen = load i8, ptr %i.gej, align 1, !tbaa !57, !noalias !21347
  %i.geo = getelementptr i8, ptr %i.gdq, i64 -10  ; 4 uses
  store i8 %i.gen, ptr %i.geo, align 1, !tbaa !57, !noalias !21347
  %i.gep = ptrtoint ptr %.ptr23.i37.i.i.i.i.i to i64
  %i.geq = ptrtoint ptr %i.geo to i64
  %i.ger = sub i64 %i.gep, %i.geq                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %74), !noalias !21337
  %i.ges = getelementptr inbounds nuw i8, ptr %74, i64 16 ; 7 uses
  store ptr %i.ges, ptr %74, align 8, !tbaa !188, !noalias !21350
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #28, !noalias !21350
  store i64 %i.ger, ptr %i.k, align 8, !tbaa !278, !noalias !21350
  %i.get = icmp ugt i64 %i.ger, 15
  br i1 %i.get, label %.noexc.i.i.i.i82.i.i.i.i.i, label %._crit_edge.i.i.i.i.i76.i.i.i.i.i

.noexc.i.i.i.i82.i.i.i.i.i:                       ; preds = %bb.awf
  %i.geu = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %74, ptr noundef nonnull align 8 dereferenceable(8) %i.k, i64 noundef 0)
          to label %.noexc13.i1356 unwind label %bb.axk, !noalias !21320 ; 2 uses

.noexc13.i1356:                                   ; preds = %.noexc.i.i.i.i82.i.i.i.i.i
  store ptr %i.geu, ptr %74, align 8, !tbaa !51, !noalias !21350
  %i.gev = load i64, ptr %i.k, align 8, !tbaa !278, !noalias !21350
  store i64 %i.gev, ptr %i.ges, align 8, !tbaa !57, !noalias !21350
  br label %._crit_edge.i.i.i.i.i76.i.i.i.i.i

._crit_edge.i.i.i.i.i76.i.i.i.i.i:                ; preds = %.noexc13.i1356, %bb.awf
  %i.gew = phi ptr [ %i.geu, %.noexc13.i1356 ], [ %i.ges, %bb.awf ] ; 2 uses
  switch i64 %i.ger, label %bb.awh [
    i64 1, label %bb.awg
    i64 0, label %bb.awi
  ]

bb.awg:                                           ; preds = %._crit_edge.i.i.i.i.i76.i.i.i.i.i
  %i.gex = load i8, ptr %i.geo, align 1, !tbaa !57, !noalias !21350
  store i8 %i.gex, ptr %i.gew, align 1, !tbaa !57, !noalias !21350
  br label %bb.awi

bb.awh:                                           ; preds = %._crit_edge.i.i.i.i.i76.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.gew, ptr nonnull readonly align 1 %i.geo, i64 %i.ger, i1 false), !noalias !21350
  br label %bb.awi

bb.awi:                                           ; preds = %bb.awh, %bb.awg, %._crit_edge.i.i.i.i.i76.i.i.i.i.i
  %i.gey = load i64, ptr %i.k, align 8, !tbaa !278, !noalias !21350 ; 2 uses
  %i.gez = getelementptr inbounds nuw i8, ptr %74, i64 8
  store i64 %i.gey, ptr %i.gez, align 8, !tbaa !56, !noalias !21350
  %i.gfa = load ptr, ptr %74, align 8, !tbaa !51, !noalias !21350
  %i.gfb = getelementptr inbounds nuw i8, ptr %i.gfa, i64 %i.gey
  store i8 0, ptr %i.gfb, align 1, !tbaa !57, !noalias !21350
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #28, !noalias !21350
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %81, ptr noundef nonnull %74)
          to label %bb.awj unwind label %bb.awk, !noalias !21326

bb.awj:                                           ; preds = %bb.awi
  %i.gfc = load ptr, ptr %74, align 8, !tbaa !51, !noalias !21350 ; 2 uses
  %i.gfd = icmp eq ptr %i.gfc, %i.ges
  br i1 %i.gfd, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit84.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i.i.i.i.i: ; preds = %bb.awj
  %i.gfe = load i64, ptr %i.ges, align 8, !tbaa !57, !noalias !21350
  %i.gff = add i64 %i.gfe, 1
  call void @_ZdlPvm(ptr noundef %i.gfc, i64 noundef %i.gff) #29, !noalias !21326
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit84.i.i.i.i.i

bb.awk:                                           ; preds = %bb.awi
  %i.gfg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gfh = load ptr, ptr %74, align 8, !tbaa !51, !noalias !21350 ; 2 uses
  %i.gfi = icmp eq ptr %i.gfh, %i.ges
  br i1 %i.gfi, label %.body.i1255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i77.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i77.i.i.i.i.i: ; preds = %bb.awk
  %i.gfj = load i64, ptr %i.ges, align 8, !tbaa !57, !noalias !21350
  %i.gfk = add i64 %i.gfj, 1
  call void @_ZdlPvm(ptr noundef %i.gfh, i64 noundef %i.gfk) #29, !noalias !21326
  br label %.body.i1255

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit84.i.i.i.i.i: ; preds = %bb.awj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i80.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %74), !noalias !21337
  call void @llvm.lifetime.end.p0(ptr nonnull %77) #28, !noalias !21347
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

bb.awl:                                           ; preds = %bb.avg
  %spec.select.i.i61.i.i.i.i.i = icmp ult i64 %.val4.i.i1252, 86400
  br i1 %spec.select.i.i61.i.i.i.i.i, label %bb.awm, label %.invoke.i1296, !prof !207

.invoke.i1296:                                    ; preds = %bb.awl, %bb.awb, %bb.avr, %bb.avh
  invoke fastcc void @_ZN5arrow8internal6detail16FormatOutOfRangeIRlRZNS_12_GLOBAL__N_114FormatToBufferINS0_15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_EUlSt17basic_string_viewIcSt11char_traitsIcEEE_EEDTclclsr3stdE7declvalISF_EEtlSL_EEESE_OSF_(ptr dead_on_unwind noalias nonnull writable align 8 %81, i64 %.val4.i.i1252)
          to label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i unwind label %bb.axk, !noalias !21320

bb.awm:                                           ; preds = %bb.awl
  %.lhs.trunc.i62.i.i.i.i.i = trunc nuw nsw i64 %.val4.i.i1252 to i32 ; 2 uses
  %i.gfl = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 3600
  %.zext.i63.i.i.i.i.i = zext nneg i32 %i.gfl to i64 ; 3 uses
  %i.gfm = udiv i32 %.lhs.trunc.i62.i.i.i.i.i, 60
  %.zext16.i.i.i.i.i.i1357 = zext nneg i32 %i.gfm to i64
  %.neg.i.i.i.i64.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -60
  %i.gfn = add nsw i64 %.neg.i.i.i.i64.i.i.i.i.i, %.zext16.i.i.i.i.i.i1357 ; 2 uses
  %.neg.i5.i.i.i65.i.i.i.i.i = mul nsw i64 %.zext.i63.i.i.i.i.i, -3600
  %i.gfo = add nsw i64 %.neg.i5.i.i.i65.i.i.i.i.i, %.val4.i.i1252
  %.neg.i6.i.i.i66.i.i.i.i.i = mul nsw i64 %i.gfn, -60
  %i.gfp = add nsw i64 %i.gfo, %.neg.i6.i.i.i66.i.i.i.i.i
  %i.gfq = shl nsw i64 %i.gfp, 1
  %222 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gfq ; 2 uses
  %i.gfr = getelementptr inbounds nuw i8, ptr %222, i64 1
  %223 = load i8, ptr %i.gfr, align 1, !tbaa !57, !noalias !21353
  %224 = load i8, ptr %222, align 1, !tbaa !57, !noalias !21353
  %i.gfs = shl nsw i64 %i.gfn, 1
  %225 = getelementptr inbounds i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gfs ; 2 uses
  %i.gft = getelementptr inbounds nuw i8, ptr %225, i64 1
  %226 = load i8, ptr %i.gft, align 1, !tbaa !57, !noalias !21353
  %227 = load i8, ptr %225, align 1, !tbaa !57, !noalias !21353
  %i.gfu = shl nuw nsw i64 %.zext.i63.i.i.i.i.i, 1
  %i.gfv = getelementptr inbounds nuw i8, ptr @_ZN5arrow8internal6detail11digit_pairsE, i64 %i.gfu ; 2 uses
  %i.gfw = getelementptr inbounds nuw i8, ptr %i.gfv, i64 1
  %i.gfx = load i8, ptr %i.gfw, align 1, !tbaa !57, !noalias !21353
  %i.gfy = load i8, ptr %i.gfv, align 1, !tbaa !57, !noalias !21353
  call void @llvm.lifetime.start.p0(ptr nonnull %73), !noalias !21337
  %228 = getelementptr inbounds nuw i8, ptr %73, i64 16 ; 6 uses
  store ptr %228, ptr %73, align 8, !tbaa !188, !noalias !21356
  store i8 %i.gfy, ptr %228, align 8, !noalias !21356
  %.sroa.4.1..sroa_idx.i.i.i.i.i1358 = getelementptr inbounds nuw i8, ptr %73, i64 17
  store i8 %i.gfx, ptr %.sroa.4.1..sroa_idx.i.i.i.i.i1358, align 1, !noalias !21356
  %.sroa.5.1..sroa_idx.i.i.i.i.i1359 = getelementptr inbounds nuw i8, ptr %73, i64 18
  store i8 58, ptr %.sroa.5.1..sroa_idx.i.i.i.i.i1359, align 2, !noalias !21356
  %.sroa.6.1..sroa_idx.i.i.i.i.i1360 = getelementptr inbounds nuw i8, ptr %73, i64 19
  store i8 %227, ptr %.sroa.6.1..sroa_idx.i.i.i.i.i1360, align 1, !noalias !21356
  %.sroa.7.1..sroa_idx.i.i.i.i.i1361 = getelementptr inbounds nuw i8, ptr %73, i64 20
  store i8 %226, ptr %.sroa.7.1..sroa_idx.i.i.i.i.i1361, align 4, !noalias !21356
  %.sroa.8.1..sroa_idx.i.i.i.i.i1362 = getelementptr inbounds nuw i8, ptr %73, i64 21
  store i8 58, ptr %.sroa.8.1..sroa_idx.i.i.i.i.i1362, align 1, !noalias !21356
  %.sroa.9.1..sroa_idx.i.i.i.i.i1363 = getelementptr inbounds nuw i8, ptr %73, i64 22
  store i8 %224, ptr %.sroa.9.1..sroa_idx.i.i.i.i.i1363, align 2, !noalias !21356
  %.sroa.10.1..sroa_idx.i.i.i.i.i1364 = getelementptr inbounds nuw i8, ptr %73, i64 23
  store i8 %223, ptr %.sroa.10.1..sroa_idx.i.i.i.i.i1364, align 1, !noalias !21356
  %229 = getelementptr inbounds nuw i8, ptr %73, i64 8
  store i64 8, ptr %229, align 8, !tbaa !56, !noalias !21356
  %230 = getelementptr inbounds nuw i8, ptr %73, i64 24
  store i8 0, ptr %230, align 8, !tbaa !57, !noalias !21356
  invoke void @_ZN5arrow6Buffer10FromStringENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::shared_ptr.2") align 8 %81, ptr noundef nonnull %73)
          to label %bb.awn unwind label %bb.awo, !noalias !21326

bb.awn:                                           ; preds = %bb.awm
  %i.gfz = load ptr, ptr %73, align 8, !tbaa !51, !noalias !21356 ; 2 uses
  %i.gga = icmp eq ptr %i.gfz, %228
  br i1 %i.gga, label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit92.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i.i.i.i: ; preds = %bb.awn
  %i.ggb = load i64, ptr %228, align 8, !tbaa !57, !noalias !21356
  %i.ggc = add i64 %i.ggb, 1
  call void @_ZdlPvm(ptr noundef %i.gfz, i64 noundef %i.ggc) #29, !noalias !21326
  br label %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit92.i.i.i.i.i

bb.awo:                                           ; preds = %bb.awm
  %i.ggd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gge = load ptr, ptr %73, align 8, !tbaa !51, !noalias !21356 ; 2 uses
  %i.ggf = icmp eq ptr %i.gge, %228
  br i1 %i.ggf, label %.body.i1255, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i86.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i86.i.i.i.i.i: ; preds = %bb.awo
  %i.ggg = load i64, ptr %228, align 8, !tbaa !57, !noalias !21356
  %i.ggh = add i64 %i.ggg, 1
  call void @_ZdlPvm(ptr noundef %i.gge, i64 noundef %i.ggh) #29, !noalias !21326
  br label %.body.i1255

_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit92.i.i.i.i.i: ; preds = %bb.awn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i89.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %73), !noalias !21337
  br label %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i

_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i: ; preds = %bb.ave, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit92.i.i.i.i.i, %.invoke.i1296, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit84.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit75.i.i.i.i.i, %_ZZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_ENKUlSt17basic_string_viewIcSt11char_traitsIcEEE_clESI_.exit.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i1259
  call void @llvm.lifetime.end.p0(ptr nonnull %80), !noalias !21326
  %i.ggi = invoke noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #31
          to label %.noexc.i.i1260 unwind label %bb.axb, !noalias !21326 ; 12 uses

.noexc.i.i1260:                                   ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.ggj = getelementptr inbounds nuw i8, ptr %i.ggi, i64 8
  store i32 1, ptr %i.ggj, align 8, !tbaa !194, !noalias !21359
  %i.ggk = getelementptr inbounds nuw i8, ptr %i.ggi, i64 12 ; 3 uses
  store i32 1, ptr %i.ggk, align 4, !tbaa !196, !noalias !21359
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt23_Sp_counted_ptr_inplaceIN5arrow12StringScalarESaIvELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.ggi, align 8, !tbaa !29, !noalias !21359
  %i.ggl = getelementptr inbounds nuw i8, ptr %81, i64 8
  %i.ggm = getelementptr inbounds nuw i8, ptr %i.ggi, i64 24
  %i.ggn = getelementptr inbounds nuw i8, ptr %i.ggi, i64 32 ; 3 uses
  %i.ggo = getelementptr inbounds nuw i8, ptr %i.ggi, i64 40
  %i.ggp = getelementptr inbounds nuw i8, ptr %i.ggi, i64 56
  %i.ggq = getelementptr inbounds nuw i8, ptr %i.ggi, i64 64
  %i.ggr = load <2 x ptr>, ptr %81, align 16, !tbaa !189, !noalias !21359
  %i.ggs = load ptr, ptr %81, align 16, !tbaa !191, !noalias !21359 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %81, i8 0, i64 16, i1 false), !noalias !21359
  %i.ggt = load <2 x ptr>, ptr %83, align 16, !tbaa !189, !noalias !21359
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %83, i8 0, i64 16, i1 false), !noalias !21359
  store i64 0, ptr %i.ggn, align 8, !noalias !21359
  store <2 x ptr> %i.ggt, ptr %i.ggo, align 8, !tbaa !189, !noalias !21359
  store i8 1, ptr %i.ggp, align 8, !tbaa !66, !noalias !21359
  store <2 x ptr> %i.ggr, ptr %i.ggq, align 8, !tbaa !189, !noalias !21359
  %.not.i.i8.i.i.i.i.i.i.i.i.i.i1261 = icmp eq ptr %i.ggs, null
  br i1 %.not.i.i8.i.i.i.i.i.i.i.i.i.i1261, label %bb.awq, label %bb.awp

bb.awp:                                           ; preds = %.noexc.i.i1260
  %i.ggu = getelementptr inbounds nuw i8, ptr %i.ggs, i64 24
  %i.ggv = load i64, ptr %i.ggu, align 8, !tbaa !199, !noalias !21359
  %i.ggw = shl i64 %i.ggv, 32
  br label %bb.awq

bb.awq:                                           ; preds = %bb.awp, %.noexc.i.i1260
  %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1262 = phi i64 [ %i.ggw, %bb.awp ], [ 0, %.noexc.i.i1260 ]
  %i.ggx = getelementptr inbounds nuw i8, ptr %i.ggi, i64 16 ; 3 uses
  %i.ggy = getelementptr inbounds nuw i8, ptr %i.ggi, i64 80
  store i64 %.sroa.4.0.insert.ext.i.i.i.i.i.i.i.i.i.i.i.i1262, ptr %i.ggy, align 8, !noalias !21359
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN5arrow12StringScalarE, i64 16), ptr %i.ggx, align 8, !tbaa !29, !noalias !21359
  store ptr %i.ggx, ptr %i.ggm, align 8, !tbaa !264, !noalias !21359
  %i.ggz = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21359
  %.not.i.i3.i.i.i.i.i.i.i.i1263 = icmp eq i8 %i.ggz, 0
  br i1 %.not.i.i3.i.i.i.i.i.i.i.i1263, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1288, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1264

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1264: ; preds = %bb.awq
  store i32 2, ptr %i.ggk, align 4, !tbaa !3, !noalias !21359
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1288: ; preds = %bb.awq
  %i.gha = atomicrmw volatile add ptr %i.ggk, i32 1 acq_rel, align 4, !noalias !21359 ; 0 uses
  %.pre.i.i.i.i.i.i.i.i1289 = load ptr, ptr %i.ggn, align 8, !tbaa !265, !noalias !21359 ; 4 uses
  %.not6.i.i.i.i.i.i.i.i.i1290 = icmp eq ptr %.pre.i.i.i.i.i.i.i.i1289, null
  br i1 %.not6.i.i.i.i.i.i.i.i.i1290, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265, label %bb.awr

bb.awr:                                           ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1288
  %i.ghb = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i1289, i64 12 ; 3 uses
  %i.ghc = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21359
  %.not.i7.i.i.i.i.i.i.i.i.i1291 = icmp eq i8 %i.ghc, 0
  br i1 %.not.i7.i.i.i.i.i.i.i.i.i1291, label %bb.awt, label %bb.aws

bb.aws:                                           ; preds = %bb.awr
  %i.ghd = load i32, ptr %i.ghb, align 4, !tbaa !3, !noalias !21359 ; 2 uses
  %i.ghe = add nsw i32 %i.ghd, -1
  store i32 %i.ghe, ptr %i.ghb, align 4, !tbaa !3, !noalias !21359
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1292

bb.awt:                                           ; preds = %bb.awr
  %i.ghf = atomicrmw volatile add ptr %i.ghb, i32 -1 acq_rel, align 4, !noalias !21359
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1292

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1292: ; preds = %bb.awt, %bb.aws
  %.0.i.i.i.i.i.i.i.i.i.i.i1293 = phi i32 [ %i.ghd, %bb.aws ], [ %i.ghf, %bb.awt ]
  %i.ghg = icmp eq i32 %.0.i.i.i.i.i.i.i.i.i.i.i1293, 1
  br i1 %i.ghg, label %bb.awu, label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265

bb.awu:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1292
  %i.ghh = load ptr, ptr %.pre.i.i.i.i.i.i.i.i1289, align 8, !tbaa !29, !noalias !21359
  %i.ghi = getelementptr inbounds nuw i8, ptr %i.ghh, i64 24
  %i.ghj = load ptr, ptr %i.ghi, align 8, !noalias !21359
  call void %i.ghj(ptr noundef nonnull align 8 dereferenceable(16) %.pre.i.i.i.i.i.i.i.i1289) #28, !noalias !21359, !inline_history !21362
  br label %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265

_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265: ; preds = %bb.awu, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i.i.i.i.i1292, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.i.i.i.i.i1288, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_weak_add_refEv.exit.i.i.i.i.thread.i.i.i.i.i1264
  store ptr %i.ggi, ptr %i.ggn, align 8, !tbaa !265, !noalias !21359
  store ptr null, ptr %82, align 8, !tbaa !74, !alias.scope !21323, !noalias !21320
  %i.ghk = getelementptr inbounds nuw i8, ptr %82, i64 8 ; 3 uses
  store ptr %i.ggx, ptr %i.ghk, align 8, !tbaa !252, !alias.scope !21323, !noalias !21320
  %i.ghl = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 2 uses
  store ptr %i.ggi, ptr %i.ghl, align 8, !tbaa !190, !alias.scope !21323, !noalias !21320
  %i.ghm = load ptr, ptr %i.ggl, align 8, !tbaa !190, !noalias !21326 ; 8 uses
  %.not.i.i5.i.i1266 = icmp eq ptr %i.ghm, null
  br i1 %.not.i.i5.i.i1266, label %bb.axc, label %bb.awv

bb.awv:                                           ; preds = %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265
  %i.ghn = getelementptr inbounds nuw i8, ptr %i.ghm, i64 8 ; 4 uses
  %i.gho = load atomic i64, ptr %i.ghn acquire, align 8, !noalias !21326 ; 2 uses
  %i.ghp = icmp eq i64 %i.gho, 4294967297
  %i.ghq = trunc i64 %i.gho to i32                ; 2 uses
  br i1 %i.ghp, label %bb.aww, label %bb.awx

bb.aww:                                           ; preds = %bb.awv
  store i32 0, ptr %i.ghn, align 8, !tbaa !194, !noalias !21326
  %i.ghr = getelementptr inbounds nuw i8, ptr %i.ghm, i64 12
  store i32 0, ptr %i.ghr, align 4, !tbaa !196, !noalias !21326
  %i.ghs = load ptr, ptr %i.ghm, align 8, !tbaa !29, !noalias !21326
  %i.ght = getelementptr inbounds nuw i8, ptr %i.ghs, i64 16
  %i.ghu = load ptr, ptr %i.ght, align 8, !noalias !21326
  call void %i.ghu(ptr noundef nonnull align 8 dereferenceable(16) %i.ghm) #28, !noalias !21326, !inline_history !21363
  %i.ghv = load ptr, ptr %i.ghm, align 8, !tbaa !29, !noalias !21326
  %i.ghw = getelementptr inbounds nuw i8, ptr %i.ghv, i64 24
  %i.ghx = load ptr, ptr %i.ghw, align 8, !noalias !21326
  call void %i.ghx(ptr noundef nonnull align 8 dereferenceable(16) %i.ghm) #28, !noalias !21326, !inline_history !21363
  br label %bb.axc

bb.awx:                                           ; preds = %bb.awv
  %i.ghy = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21326
  %.not.i.i.i6.i.i1267 = icmp eq i8 %i.ghy, 0
  br i1 %.not.i.i.i6.i.i1267, label %bb.awz, label %bb.awy

bb.awy:                                           ; preds = %bb.awx
  %i.ghz = add nsw i32 %i.ghq, -1
  store i32 %i.ghz, ptr %i.ghn, align 8, !tbaa !3, !noalias !21326
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1268

bb.awz:                                           ; preds = %bb.awx
  %i.gia = atomicrmw volatile add ptr %i.ghn, i32 -1 acq_rel, align 4, !noalias !21326
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1268

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1268: ; preds = %bb.awz, %bb.awy
  %.0.i.i.i.i8.i.i1269 = phi i32 [ %i.ghq, %bb.awy ], [ %i.gia, %bb.awz ]
  %i.gib = icmp eq i32 %.0.i.i.i.i8.i.i1269, 1
  br i1 %i.gib, label %bb.axa, label %bb.axc, !prof !198

bb.axa:                                           ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1268
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ghm) #28, !noalias !21326
  br label %bb.axc

bb.axb:                                           ; preds = %_ZN5arrow12_GLOBAL__N_114FormatToBufferINS_8internal15StringFormatterINS_10Time64TypeEvEENS_12Time64ScalarEEESt10shared_ptrINS_6BufferEEOT_RKT0_.exit.i.i
  %i.gic = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt12__shared_ptrIN5arrow6BufferELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %81) #28, !noalias !21326
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28, !noalias !21326
  br label %.body.i1255

bb.axc:                                           ; preds = %bb.axa, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i7.i.i1268, %bb.aww, %_ZNSt12__shared_ptrIN5arrow12StringScalarELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i.i1265
  call void @llvm.lifetime.end.p0(ptr nonnull %81) #28, !noalias !21326
  %i.gid = load ptr, ptr %i.fva, align 8, !tbaa !190, !noalias !21320 ; 8 uses
  %.not.i.i.i1270 = icmp eq ptr %i.gid, null
  br i1 %.not.i.i.i1270, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1274, label %bb.axd

bb.axd:                                           ; preds = %bb.axc
  %i.gie = getelementptr inbounds nuw i8, ptr %i.gid, i64 8 ; 4 uses
  %i.gif = load atomic i64, ptr %i.gie acquire, align 8, !noalias !21320 ; 2 uses
  %i.gig = icmp eq i64 %i.gif, 4294967297
  %i.gih = trunc i64 %i.gif to i32                ; 2 uses
  br i1 %i.gig, label %bb.axe, label %bb.axf

bb.axe:                                           ; preds = %bb.axd
  store i32 0, ptr %i.gie, align 8, !tbaa !194, !noalias !21320
  %i.gii = getelementptr inbounds nuw i8, ptr %i.gid, i64 12
  store i32 0, ptr %i.gii, align 4, !tbaa !196, !noalias !21320
  %i.gij = load ptr, ptr %i.gid, align 8, !tbaa !29, !noalias !21320
  %i.gik = getelementptr inbounds nuw i8, ptr %i.gij, i64 16
  %i.gil = load ptr, ptr %i.gik, align 8, !noalias !21320
  call void %i.gil(ptr noundef nonnull align 8 dereferenceable(16) %i.gid) #28, !noalias !21320, !inline_history !21364
  %i.gim = load ptr, ptr %i.gid, align 8, !tbaa !29, !noalias !21320
  %i.gin = getelementptr inbounds nuw i8, ptr %i.gim, i64 24
  %i.gio = load ptr, ptr %i.gin, align 8, !noalias !21320
  call void %i.gio(ptr noundef nonnull align 8 dereferenceable(16) %i.gid) #28, !noalias !21320, !inline_history !21364
  br label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1274

bb.axf:                                           ; preds = %bb.axd
  %i.gip = load i8, ptr @__libc_single_threaded, align 1, !tbaa !57, !noalias !21320
  %.not.i.i.i15.i1271 = icmp eq i8 %i.gip, 0
  br i1 %.not.i.i.i15.i1271, label %bb.axh, label %bb.axg

bb.axg:                                           ; preds = %bb.axf
  %i.giq = add nsw i32 %i.gih, -1
  store i32 %i.giq, ptr %i.gie, align 8, !tbaa !3, !noalias !21320
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1272

bb.axh:                                           ; preds = %bb.axf
  %i.gir = atomicrmw volatile add ptr %i.gie, i32 -1 acq_rel, align 4, !noalias !21320
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1272

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i1272: ; preds = %bb.axh, %bb.axg
  %.0.i.i.i.i.i1273 = phi i32 [ %i.gih, %bb.axg ], [ %i.gir, %bb.axh ]
  %i.gis = icmp eq i32 %.0.i.i.i.i.i1273, 1
  br i1 %i.gis, label %bb.axi, label %_ZNSt12__shared_ptrIN5arrow8DataTypeELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i1274, !prof !198

end_hunk_2
