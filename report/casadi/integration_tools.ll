Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/integration_tools?download=true
inline.NumInlined: 6691
inline.NumDeleted: 1561
loop-unroll.NumCompletelyUnrolled: 105
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 124
begin_hunk_0_@_ZN6casadi17collocation_coeffERKSt6vectorIdSaIdEERNS_6MatrixIdEES7_S7_:bb.a

bb.cl:                                            ; preds = %bb.bq
  %i.kz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %18) #25
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %.pn71 = phi { ptr, i32 } [ %i.kz, %bb.cl ], [ %i.ky, %bb.ck ] ; 2 uses
  %i.la = load ptr, ptr %19, align 8, !tbaa !52   ; 2 uses
  %.not.i.i.i183 = icmp eq ptr %i.la, null
  br i1 %.not.i.i.i183, label %.body164, label %.body164.sink.split

.body164.sink.split:                              ; preds = %bb.cm, %bb.bo
  %.sink306 = phi ptr [ %i.iw, %bb.bo ], [ %i.la, %bb.cm ] ; 2 uses
  %.pn71.pn.ph = phi { ptr, i32 } [ %i.iv, %bb.bo ], [ %.pn71, %bb.cm ]
  %i.lb = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !53
  %i.ld = ptrtoint ptr %i.lc to i64
  %i.le = ptrtoint ptr %.sink306 to i64
  %i.lf = sub i64 %i.ld, %i.le
  call void @_ZdlPvm(ptr noundef nonnull %.sink306, i64 noundef %i.lf) #26
  br label %.body164

.body164:                                         ; preds = %.body164.sink.split, %bb.cm, %bb.bo
  %.pn71.pn = phi { ptr, i32 } [ %i.iv, %bb.bo ], [ %.pn71, %bb.cm ], [ %.pn71.pn.ph, %.body164.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #25
  br label %bb.cn

bb.cn:                                            ; preds = %.body164, %bb.cj, %bb.cg, %bb.cc
  %.pn82.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn64, %bb.cc ], [ %.pn71.pn, %.body164 ], [ %.pn69, %bb.cj ], [ %.pn66.pn, %bb.cg ] ; 2 uses
  %.not.i.i.i186 = icmp eq ptr %.sroa.0199.0288, null
  br i1 %.not.i.i.i186, label %_ZNSt6vectorIdSaIdEED2Ev.exit188, label %bb.co

bb.co:                                            ; preds = %.thread, %bb.cn
  %.pn82.pn.pn.pn.pn298 = phi { ptr, i32 } [ %.pn82.pn.pn.pn, %.thread ], [ %.pn82.pn.pn.pn.pn, %bb.cn ]
  %.sroa.0199.0287297 = phi ptr [ %i.bi, %.thread ], [ %.sroa.0199.0288, %bb.cn ] ; 2 uses
  %.sroa.12.0289296 = phi i64 [ %i.bl, %.thread ], [ %.sroa.12.0290, %bb.cn ]
  %i.lg = ptrtoint ptr %.sroa.0199.0287297 to i64
  %i.lh = sub i64 %.sroa.12.0289296, %i.lg
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0199.0287297, i64 noundef %i.lh) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit188

_ZNSt6vectorIdSaIdEED2Ev.exit188:                 ; preds = %bb.co, %bb.cn, %bb.t
  %.pn82.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cg, %bb.t ], [ %.pn82.pn.pn.pn.pn, %bb.cn ], [ %.pn82.pn.pn.pn.pn298, %bb.co ] ; 2 uses
  %i.li = load ptr, ptr %7, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i189 = icmp eq ptr %i.li, null
  br i1 %.not.i.i.i189, label %_ZNSt6vectorIdSaIdEED2Ev.exit191, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit188
  %i.lj = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !53
  %i.ll = ptrtoint ptr %i.lk to i64
  %i.lm = ptrtoint ptr %i.li to i64
  %i.ln = sub i64 %i.ll, %i.lm
  call void @_ZdlPvm(ptr noundef nonnull %i.li, i64 noundef %i.ln) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit191

_ZNSt6vectorIdSaIdEED2Ev.exit191:                 ; preds = %bb.cp, %_ZNSt6vectorIdSaIdEED2Ev.exit188, %bb.s
  %.pn82.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cf, %bb.s ], [ %.pn82.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit188 ], [ %.pn82.pn.pn.pn.pn.pn, %bb.cp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  call void @_ZNSt6vectorIS_IdSaIdEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #25
  br label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit191, %_ZNSt6vectorIdSaIdEED2Ev.exit119
  %.pn82.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit191 ], [ %.pn, %_ZNSt6vectorIdSaIdEED2Ev.exit119 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.o
  %.pn82.pn.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn82.pn.pn.pn.pn.pn.pn.pn, %bb.cq ], [ %i.bw, %bb.o ]
  %i.lo = load ptr, ptr %4, align 8, !tbaa !52    ; 3 uses
  %.not.i.i.i192 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i192, label %_ZNSt6vectorIdSaIdEED2Ev.exit194, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.lp = load ptr, ptr %i.p, align 8, !tbaa !53
  %i.lq = ptrtoint ptr %i.lp to i64
  %i.lr = ptrtoint ptr %i.lo to i64
  %i.ls = sub i64 %i.lq, %i.lr
  call void @_ZdlPvm(ptr noundef nonnull %i.lo, i64 noundef %i.ls) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit194

_ZNSt6vectorIdSaIdEED2Ev.exit194:                 ; preds = %bb.cr, %bb.cs
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  resume { ptr, i32 } %.pn82.pn.pn.pn.pn.pn.pn.pn.pn
}

declare void @_ZN6casadi10PolynomialC1Ed(ptr noundef nonnull align 8 dereferenceable(24), double noundef) unnamed_addr #6

declare void @_ZN6casadi10PolynomialC1Edd(ptr noundef nonnull align 8 dereferenceable(24), double noundef, double noundef) unnamed_addr #6

declare void @_ZNK6casadi10PolynomialdvEd(ptr dead_on_unwind writable sret(%"class.casadi::Polynomial") align 8, ptr noundef nonnull align 8 dereferenceable(24), double noundef) local_unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(24) ptr @_ZN6casadi10PolynomialmLERKS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZNK6casadi10Polynomial10derivativeEv(ptr dead_on_unwind writable sret(%"class.casadi::Polynomial") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZNK6casadi10Polynomial15anti_derivativeEv(ptr dead_on_unwind writable sret(%"class.casadi::Polynomial") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #6

declare void @_ZN6casadi6MatrixIdEC1ERKSt6vectorIS2_IdSaIdEESaIS4_EE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN6casadi6MatrixIdEaSERKS1_(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #6

declare void @_ZN6casadi5SliceC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

declare void @_ZN6casadi5SliceC1Eixi(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, i64 noundef, i32 noundef) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6casadi6MatrixIdED2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !52   ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIdSaIdEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !53
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = ptrtoint ptr %i.b to i64
  %i.g = sub i64 %i.e, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef %i.g) #26
  br label %_ZNSt6vectorIdSaIdEED2Ev.exit

_ZNSt6vectorIdSaIdEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZNSt6vectorIdSaIdEED2Ev.exit
  ret void
}

declare void @_ZN6casadi6MatrixIdEC1ERKSt6vectorIdSaIdEE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6casadi9simpleIRKENS_8FunctionExxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SA_EEE(ptr dead_on_unwind noalias writable sret(%"class.casadi::Function") align 8 %0, ptr noundef align 8 %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(48) %6) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %8 = alloca %"class.casadi::MX", align 8        ; 7 uses
  %9 = alloca %"class.casadi::Sparsity", align 8  ; 7 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %14 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %20 = alloca %"class.std::vector", align 8      ; 5 uses
  %21 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %22 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %25 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %27 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %28 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %29 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %30 = alloca %"class.std::vector", align 8      ; 5 uses
  %31 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %34 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %35 = alloca %"class.std::allocator.0", align 1 ; 5 uses
  %36 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %37 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %38 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %39 = alloca %"class.std::allocator.0", align 1 ; 3 uses
  %40 = alloca %"class.std::vector", align 8      ; 5 uses
  %41 = alloca %"class.std::vector.3", align 8    ; 9 uses
  %42 = alloca %"class.std::vector.16", align 8   ; 11 uses
  %43 = alloca %"class.std::vector.3", align 8    ; 11 uses
  %44 = alloca %"class.casadi::MX", align 8       ; 12 uses
  %45 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %46 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %47 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %48 = alloca %"class.casadi::MX", align 8       ; 10 uses
  %49 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %50 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %51 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %52 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %53 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %54 = alloca %"class.casadi::Sparsity", align 8 ; 7 uses
  %55 = alloca %"class.std::vector.21", align 16  ; 18 uses
  %56 = alloca %"class.std::vector.21", align 8   ; 13 uses
  %57 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %58 = alloca %"class.std::allocator.23", align 1 ; 4 uses
  %59 = alloca %"class.std::vector.21", align 8   ; 8 uses
  %60 = alloca %"class.casadi::MX", align 8       ; 9 uses
  %61 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %62 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %63 = alloca %"class.std::vector.21", align 8   ; 10 uses
  %64 = alloca %"class.casadi::MX", align 8       ; 8 uses
  %65 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %66 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %67 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %68 = alloca [4 x %"class.casadi::MX"], align 8 ; 18 uses
  %69 = alloca [1 x %"class.casadi::MX"], align 8 ; 7 uses
  %70 = alloca %"class.std::map", align 8         ; 12 uses
  %71 = alloca %"class.casadi::Function", align 8 ; 7 uses
  %72 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %73 = alloca %"class.casadi::MX", align 8       ; 15 uses
  %74 = alloca %"class.std::vector.21", align 8   ; 10 uses
  %75 = alloca %"class.std::vector.21", align 8   ; 12 uses
  %76 = alloca [4 x %"class.casadi::MX"], align 8 ; 18 uses
  %77 = alloca %"class.std::vector.21", align 16  ; 10 uses
  %78 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %79 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %80 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %81 = alloca %"class.casadi::MX", align 8       ; 7 uses
  %82 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %83 = alloca [3 x %"class.casadi::MX"], align 8 ; 15 uses
  %84 = alloca [1 x %"class.casadi::MX"], align 8 ; 8 uses
  %85 = alloca %"class.std::vector", align 8      ; 13 uses
  %86 = alloca [3 x %"class.std::__cxx11::basic_string"], align 8 ; 29 uses
  %87 = alloca %"class.std::vector", align 8      ; 13 uses
  %88 = alloca [1 x %"class.std::__cxx11::basic_string"], align 8 ; 13 uses
  %89 = alloca %"class.std::map", align 8         ; 12 uses
  store i64 %2, ptr %i.a, align 8, !tbaa !47
  %i.b = icmp sgt i64 %2, 0
  br i1 %i.b, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 40) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull @.str.28, ptr noundef nonnull align 1 dereferenceable(1) %14)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6casadi9trim_pathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %12, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit271.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.8)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #25
  invoke void @_ZN6casadi3strIxEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %19, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %18, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull @.str.11)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %16, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false), !alias.scope !310
  invoke void @_ZN6casadi6fmtstrERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS5_SaIS5_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %15, ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(24) %20)
          to label %bb.j unwind label %bb.r

bb.j:                                             ; preds = %bb.i
  invoke void @_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %15)
          to label %bb.k unwind label %bb.s

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6casadi15CasadiExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.t

bb.l:                                             ; preds = %bb.k
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6casadi15CasadiExceptionE, ptr nonnull @_ZN6casadi15CasadiExceptionD2Ev) #24
          to label %bb.fv unwind label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit274.thread: ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.m:                                             ; preds = %bb.d
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit268

bb.n:                                             ; preds = %bb.e
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit265

bb.o:                                             ; preds = %bb.f
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262

bb.p:                                             ; preds = %bb.g
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.q:                                             ; preds = %bb.h
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.r:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

bb.s:                                             ; preds = %bb.j
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.t:                                             ; preds = %bb.l, %bb.k
  %.0125 = phi i1 [ false, %bb.l ], [ true, %bb.k ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.m = load ptr, ptr %10, align 8, !tbaa !37    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  %i.p = load i64, ptr %i.n, align 8, !tbaa !38
  %i.q = add i64 %i.p, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.q) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.s
  %.1126 = phi i1 [ true, %bb.s ], [ %.0125, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %.0125, %bb.t ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.k, %bb.s ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %bb.t ] ; 2 uses
  %i.r = load ptr, ptr %15, align 8, !tbaa !37    ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.t = icmp eq ptr %i.r, %i.s
  br i1 %i.t, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.u = load i64, ptr %i.s, align 8, !tbaa !38
  %i.v = add i64 %i.u, 1
  call void @_ZdlPvm(ptr noundef %i.r, i64 noundef %i.v) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251, %bb.r
  %.2127 = phi i1 [ true, %bb.r ], [ %.1126, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.1126, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.j, %bb.r ], [ %.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #25
  %i.w = load ptr, ptr %16, align 8, !tbaa !37    ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.y = icmp eq ptr %i.w, %i.x
  br i1 %i.y, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253
  %i.z = load i64, ptr %i.x, align 8, !tbaa !38
  %i.aa = add i64 %i.z, 1
  call void @_ZdlPvm(ptr noundef %i.w, i64 noundef %i.aa) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.q
  %.3128 = phi i1 [ true, %bb.q ], [ %.2127, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.2127, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ] ; 2 uses
  %.pn.pn.pn = phi { ptr, i32 } [ %i.i, %bb.q ], [ %.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253 ] ; 2 uses
  %i.ab = load ptr, ptr %17, align 8, !tbaa !37   ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %17, i64 16 ; 2 uses
  %i.ad = icmp eq ptr %i.ab, %i.ac
  br i1 %i.ad, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256
  %i.ae = load i64, ptr %i.ac, align 8, !tbaa !38
  %i.af = add i64 %i.ae, 1
  call void @_ZdlPvm(ptr noundef %i.ab, i64 noundef %i.af) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.p
  %.4129 = phi i1 [ true, %bb.p ], [ %.3128, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.3128, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ] ; 2 uses
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %i.h, %bb.p ], [ %.pn.pn.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ] ; 2 uses
  %i.ag = load ptr, ptr %18, align 8, !tbaa !37   ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit262, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i260: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259
  %i.aj = load i64, ptr %i.ah, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_ZN6casadi9simpleIRKENS_8FunctionExxRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SA_EEE:bb.a
          to label %bb.be unwind label %bb.bq

bb.be:                                            ; preds = %._crit_edge.i.i
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %44, ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %i.fm)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit unwind label %bb.bq

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit: ; preds = %bb.be
  %i.fn = load ptr, ptr %45, align 8, !tbaa !37   ; 2 uses
  %i.fo = icmp eq ptr %i.fn, %i.fj
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318: ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit
  %i.fp = load i64, ptr %i.fj, align 8, !tbaa !38
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fn, i64 noundef %i.fq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320: ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i318
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %46) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %47) #25
  %i.fr = getelementptr inbounds nuw i8, ptr %47, i64 16 ; 6 uses
  store ptr %i.fr, ptr %47, align 8, !tbaa !33
  store i8 112, ptr %i.fr, align 8, !tbaa !38
  %i.fs = getelementptr inbounds nuw i8, ptr %47, i64 8
  store i64 1, ptr %i.fs, align 8, !tbaa !39
  %i.ft = getelementptr inbounds nuw i8, ptr %47, i64 17
  store i8 0, ptr %i.ft, align 1, !tbaa !38
  %i.fu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi8Function11sparsity_inEx(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1)
          to label %bb.bf unwind label %bb.br

bb.bf:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %46, ptr noundef nonnull align 8 dereferenceable(32) %47, ptr noundef nonnull align 8 dereferenceable(8) %i.fu)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit326 unwind label %bb.br

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit326: ; preds = %bb.bf
  %i.fv = load ptr, ptr %47, align 8, !tbaa !37   ; 2 uses
  %i.fw = icmp eq ptr %i.fv, %i.fr
  br i1 %i.fw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327: ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit326
  %i.fx = load i64, ptr %i.fr, align 8, !tbaa !38
  %i.fy = add i64 %i.fx, 1
  call void @_ZdlPvm(ptr noundef %i.fv, i64 noundef %i.fy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329: ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i327
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %48) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %49) #25
  %i.fz = getelementptr inbounds nuw i8, ptr %49, i64 16 ; 6 uses
  store ptr %i.fz, ptr %49, align 8, !tbaa !33
  store i8 104, ptr %i.fz, align 8, !tbaa !38
  %i.ga = getelementptr inbounds nuw i8, ptr %49, i64 8
  store i64 1, ptr %i.ga, align 8, !tbaa !39
  %i.gb = getelementptr inbounds nuw i8, ptr %49, i64 17
  store i8 0, ptr %i.gb, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25, !noalias !313
  invoke void @_ZN6casadi8Sparsity5denseExx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %9, i64 noundef 1, i64 noundef 1)
          to label %.noexc334 unwind label %bb.bs

.noexc334:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %48, ptr noundef nonnull align 8 dereferenceable(32) %49, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i unwind label %bb.bh

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i: ; preds = %.noexc334
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %bb.bj unwind label %bb.bg

bb.bg:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  %i.gc = landingpad { ptr, i32 }
          catch ptr null
  %i.gd = extractvalue { ptr, i32 } %i.gc, 0
  call void @__clang_call_terminate(ptr %i.gd) #28
  unreachable

bb.bh:                                            ; preds = %.noexc334
  %i.ge = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i unwind label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gf = landingpad { ptr, i32 }
          catch ptr null
  %i.gg = extractvalue { ptr, i32 } %i.gf, 0
  call void @__clang_call_terminate(ptr %i.gg) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i: ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !313
  br label %.body

bb.bj:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25, !noalias !313
  %i.gh = load ptr, ptr %49, align 8, !tbaa !37   ; 2 uses
  %i.gi = icmp eq ptr %i.gh, %i.fz
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335: ; preds = %bb.bj
  %i.gj = load i64, ptr %i.fz, align 8, !tbaa !38
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gh, i64 noundef %i.gk) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337: ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i335
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %50) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %51) #25
  %i.gl = load i64, ptr %i.a, align 8, !tbaa !47
  %i.gm = sitofp i64 %i.gl to double
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %51, double noundef %i.gm)
          to label %bb.bk unwind label %bb.bt

bb.bk:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %50, i64 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %_ZN6casadidvERKNS_2MXES2_.exit unwind label %bb.bu

_ZN6casadidvERKNS_2MXES2_.exit:                   ; preds = %bb.bk
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %52) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #25
  %i.gn = getelementptr inbounds nuw i8, ptr %53, i64 16 ; 6 uses
  store ptr %i.gn, ptr %53, align 8, !tbaa !33
  store i8 118, ptr %i.gn, align 8, !tbaa !38
  %i.go = getelementptr inbounds nuw i8, ptr %53, i64 8
  store i64 1, ptr %i.go, align 8, !tbaa !39
  %i.gp = getelementptr inbounds nuw i8, ptr %53, i64 17
  store i8 0, ptr %i.gp, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #25
  %i.gq = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bl unwind label %bb.bw

bb.bl:                                            ; preds = %_ZN6casadidvERKNS_2MXES2_.exit
  invoke void @_ZN6casadi17SparsityInterfaceINS_8SparsityEE6repmatERKS1_xx(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Sparsity") align 8 %54, ptr noundef nonnull align 8 dereferenceable(8) %i.gq, i64 noundef %3, i64 noundef 1)
          to label %_ZN6casadi6repmatERKNS_8SparsityExx.exit unwind label %bb.bw

_ZN6casadi6repmatERKNS_8SparsityExx.exit:         ; preds = %bb.bl
  invoke void @_ZN6casadi2MX4_symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %52, ptr noundef nonnull align 8 dereferenceable(32) %53, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit345 unwind label %bb.bx

_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit345: ; preds = %_ZN6casadi6repmatERKNS_8SparsityExx.exit
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit unwind label %bb.bm

bb.bm:                                            ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit345
  %i.gr = landingpad { ptr, i32 }
          catch ptr null
  %i.gs = extractvalue { ptr, i32 } %i.gr, 0
  call void @__clang_call_terminate(ptr %i.gs) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit: ; preds = %_ZN6casadi13GenericMatrixINS_2MXEE3symERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_8SparsityE.exit345
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  %i.gt = load ptr, ptr %53, align 8, !tbaa !37   ; 2 uses
  %i.gu = icmp eq ptr %i.gt, %i.gn
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit
  %i.gv = load i64, ptr %i.gn, align 8, !tbaa !38
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gt, i64 noundef %i.gw) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i346
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #25
  %i.gx = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNK6casadi2MX8sparsityEv(ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %.noexc349 unwind label %bb.bz

.noexc349:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.gy = invoke noundef i64 @_ZNK6casadi8Sparsity5size1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.gx)
          to label %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit unwind label %bb.bz

_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit: ; preds = %.noexc349
  invoke void @_ZN6casadi17SparsityInterfaceINS_2MXEE9vertsplitERKS1_x(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %55, ptr noundef nonnull align 8 dereferenceable(8) %52, i64 noundef %i.gy)
          to label %_ZN6casadi9vertsplitERKNS_2MXEx.exit unwind label %bb.bz

_ZN6casadi9vertsplitERKNS_2MXEx.exit:             ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit
  %i.gz = load ptr, ptr %55, align 16, !tbaa !100
  %i.ha = invoke ptr @_ZNSt6vectorIN6casadi2MXESaIS1_EE6insertEN9__gnu_cxx17__normal_iteratorIPKS1_S3_EERS6_(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr %i.gz, ptr noundef nonnull align 8 dereferenceable(8) %44)
          to label %bb.bn unwind label %bb.ca     ; 0 uses

bb.bn:                                            ; preds = %_ZN6casadi9vertsplitERKNS_2MXEx.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %56) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %56, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #25
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %57, i64 noundef 2, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %bb.bo unwind label %bb.cb

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  %.not689 = icmp slt i64 %3, 1                   ; 2 uses
  br i1 %.not689, label %._crit_edge.i.i352, label %.lr.ph692

.lr.ph692:                                        ; preds = %bb.bo
  %i.hb = getelementptr inbounds nuw i8, ptr %59, i64 8
  %i.hc = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %56, i64 8 ; 3 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %56, i64 16
  br label %bb.cc

._crit_edge.i.i352.loopexit:                      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %i.hh = ptrtoint ptr %i.jq to i64
  br label %._crit_edge.i.i352

._crit_edge.i.i352:                               ; preds = %._crit_edge.i.i352.loopexit, %bb.bo
  %i.hi = phi i64 [ %i.hh, %._crit_edge.i.i352.loopexit ], [ 0, %bb.bo ]
  %i.hj = phi ptr [ %i.jp, %._crit_edge.i.i352.loopexit ], [ null, %bb.bo ] ; 2 uses
  %.pr.i542 = phi ptr [ %i.jo, %._crit_edge.i.i352.loopexit ], [ null, %bb.bo ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %66) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #25
  %i.hk = getelementptr inbounds nuw i8, ptr %67, i64 16 ; 6 uses
  store ptr %i.hk, ptr %67, align 8, !tbaa !33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.hk, ptr noundef nonnull align 1 dereferenceable(3) @.str.32, i64 3, i1 false)
  %i.hl = getelementptr inbounds nuw i8, ptr %67, i64 8
  store i64 3, ptr %i.hl, align 8, !tbaa !39
  %i.hm = getelementptr inbounds nuw i8, ptr %67, i64 19
  store i8 0, ptr %i.hm, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #25
  %i.hn = load ptr, ptr %52, align 8, !tbaa !62
  store ptr %i.hn, ptr %68, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %68)
          to label %_ZN6casadi2MXC2ERKS0_.exit unwind label %.thread

bb.bp:                                            ; preds = %bb.bd
  %i.ho = landingpad { ptr, i32 }
          cleanup
  br label %bb.fr

bb.bq:                                            ; preds = %bb.be, %._crit_edge.i.i
  %i.hp = landingpad { ptr, i32 }
          cleanup
  %i.hq = load ptr, ptr %45, align 8, !tbaa !37   ; 2 uses
  %i.hr = icmp eq ptr %i.hq, %i.fj
  br i1 %i.hr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356: ; preds = %bb.bq
  %i.hs = load i64, ptr %i.fj, align 8, !tbaa !38
  %i.ht = add i64 %i.hs, 1
  call void @_ZdlPvm(ptr noundef %i.hq, i64 noundef %i.ht) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit358: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i356
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #25
  br label %bb.fq

bb.br:                                            ; preds = %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit320
  %i.hu = landingpad { ptr, i32 }
          cleanup
  %i.hv = load ptr, ptr %47, align 8, !tbaa !37   ; 2 uses
  %i.hw = icmp eq ptr %i.hv, %i.fr
  br i1 %i.hw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359: ; preds = %bb.br
  %i.hx = load i64, ptr %i.fr, align 8, !tbaa !38
  %i.hy = add i64 %i.hx, 1
  call void @_ZdlPvm(ptr noundef %i.hv, i64 noundef %i.hy) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit361: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i359
  call void @llvm.lifetime.end.p0(ptr nonnull %47) #25
  br label %bb.fp

bb.bs:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit329
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i, %bb.bs
  %eh.lpad-body = phi { ptr, i32 } [ %i.hz, %bb.bs ], [ %i.ge, %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit4.i ]
  %i.ia = load ptr, ptr %49, align 8, !tbaa !37   ; 2 uses
  %i.ib = icmp eq ptr %i.ia, %i.fz
  br i1 %i.ib, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362: ; preds = %.body
  %i.ic = load i64, ptr %i.fz, align 8, !tbaa !38
  %i.id = add i64 %i.ic, 1
  call void @_ZdlPvm(ptr noundef %i.ia, i64 noundef %i.id) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit364: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i362
  call void @llvm.lifetime.end.p0(ptr nonnull %49) #25
  br label %bb.fo

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit337
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %bb.bv

bb.bu:                                            ; preds = %bb.bk
  %i.if = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %51) #25
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt
  %.pn194 = phi { ptr, i32 } [ %i.if, %bb.bu ], [ %i.ie, %bb.bt ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #25
  br label %bb.fn

bb.bw:                                            ; preds = %bb.bl, %_ZN6casadidvERKNS_2MXES2_.exit
  %i.ig = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit365

bb.bx:                                            ; preds = %_ZN6casadi6repmatERKNS_8SparsityExx.exit
  %i.ih = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE10count_downEv(ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit365 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ii = landingpad { ptr, i32 }
          catch ptr null
  %i.ij = extractvalue { ptr, i32 } %i.ii, 0
  call void @__clang_call_terminate(ptr %i.ij) #28
  unreachable

_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit365: ; preds = %bb.bx, %bb.bw
  %.pn196 = phi { ptr, i32 } [ %i.ig, %bb.bw ], [ %i.ih, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %54) #25
  %i.ik = load ptr, ptr %53, align 8, !tbaa !37   ; 2 uses
  %i.il = icmp eq ptr %i.ik, %i.gn
  br i1 %i.il, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit365
  %i.im = load i64, ptr %i.gn, align 8, !tbaa !38
  %i.in = add i64 %i.im, 1
  call void @_ZdlPvm(ptr noundef %i.ik, i64 noundef %i.in) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit368: ; preds = %_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEED2Ev.exit365, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i366
  call void @llvm.lifetime.end.p0(ptr nonnull %53) #25
  br label %bb.fm

bb.bz:                                            ; preds = %_ZNK6casadi13GenericMatrixINS_2MXEE5size1Ev.exit, %.noexc349, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit348
  %i.io = landingpad { ptr, i32 }
          cleanup
  br label %bb.fl

bb.ca:                                            ; preds = %_ZN6casadi9vertsplitERKNS_2MXEx.exit
  %i.ip = landingpad { ptr, i32 }
          cleanup
  br label %bb.fk

bb.cb:                                            ; preds = %bb.bn
  %i.iq = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %58) #25
  br label %bb.fj

bb.cc:                                            ; preds = %.lr.ph692, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit
  %i.ir = phi ptr [ null, %.lr.ph692 ], [ %i.jq, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ]
  %i.is = phi ptr [ null, %.lr.ph692 ], [ %i.jp, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 2 uses
  %90 = phi ptr [ null, %.lr.ph692 ], [ %i.jo, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 5 uses
  %.0156690 = phi i64 [ 1, %.lr.ph692 ], [ %i.ki, %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #25
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %60, double noundef 0.000000e+00)
          to label %.lr.ph unwind label %bb.cd

._crit_edge:                                      ; preds = %bb.cg
  %i.it = load ptr, ptr %55, align 16, !tbaa !66
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.it, i64 %.0156690
  %i.iv = load ptr, ptr %57, align 8, !tbaa !66
  %i.iw = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.iv, ptr noundef nonnull align 8 dereferenceable(8) %i.iu)
          to label %_ZN6casadi2MXaSERKS0_.exit unwind label %bb.cs ; 0 uses

bb.cd:                                            ; preds = %bb.cc
  %i.ix = landingpad { ptr, i32 }
          cleanup
  br label %bb.cy

.lr.ph:                                           ; preds = %bb.cc, %bb.cg
  %.0157688 = phi i64 [ %i.jh, %bb.cg ], [ 0, %bb.cc ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #25
  %i.iy = load ptr, ptr %42, align 8, !tbaa !81
  %i.iz = getelementptr inbounds nuw [24 x i8], ptr %i.iy, i64 %.0156690
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !52
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %i.ja, i64 %.0157688
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !57
  invoke void @_ZN6casadi2MXC1Ed(ptr noundef nonnull align 8 dereferenceable(8) %62, double noundef %i.jc)
          to label %bb.ce unwind label %bb.ch

bb.ce:                                            ; preds = %.lr.ph
  %i.jd = load ptr, ptr %55, align 16, !tbaa !66
  %i.je = getelementptr inbounds nuw [8 x i8], ptr %i.jd, i64 %.0157688
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %61, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(8) %i.je)
          to label %_ZN6casadimlERKNS_2MXES2_.exit unwind label %bb.ci

_ZN6casadimlERKNS_2MXES2_.exit:                   ; preds = %bb.ce
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %8, i64 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %61)
          to label %.noexc371 unwind label %bb.cj

.noexc371:                                        ; preds = %_ZN6casadimlERKNS_2MXES2_.exit
  %i.jf = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %bb.cg unwind label %bb.cf     ; 0 uses

bb.cf:                                            ; preds = %.noexc371
  %i.jg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %.body372

bb.cg:                                            ; preds = %.noexc371
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  %i.jh = add nuw i64 %.0157688, 1
  %exitcond.not = icmp eq i64 %.0157688, %3
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !306

bb.ch:                                            ; preds = %.lr.ph
  %i.ji = landingpad { ptr, i32 }
          cleanup
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ce
  %i.jj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ck

bb.cj:                                            ; preds = %_ZN6casadimlERKNS_2MXES2_.exit
  %i.jk = landingpad { ptr, i32 }
          cleanup
  br label %.body372

.body372:                                         ; preds = %bb.cf, %bb.cj
  %eh.lpad-body373 = phi { ptr, i32 } [ %i.jk, %bb.cj ], [ %i.jg, %bb.cf ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %61) #25
  br label %bb.ck

bb.ck:                                            ; preds = %.body372, %bb.ci
  %.pn235 = phi { ptr, i32 } [ %eh.lpad-body373, %.body372 ], [ %i.jj, %bb.ci ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %62) #25
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.pn235.pn = phi { ptr, i32 } [ %.pn235, %bb.ck ], [ %i.ji, %bb.ch ]
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #25
  br label %bb.cx

_ZN6casadi2MXaSERKS0_.exit:                       ; preds = %._crit_edge
  %i.jl = load ptr, ptr %57, align 8, !tbaa !66
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  %i.jn = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %i.jm, ptr noundef nonnull align 8 dereferenceable(8) %46)
          to label %_ZN6casadi2MXaSERKS0_.exit375 unwind label %bb.cs ; 0 uses

_ZN6casadi2MXaSERKS0_.exit375:                    ; preds = %_ZN6casadi2MXaSERKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #25
  invoke void @_ZNK6casadi8FunctionclERKSt6vectorINS_2MXESaIS2_EE(ptr dead_on_unwind nonnull writable sret(%"class.std::vector.21") align 8 %63, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %57)
          to label %bb.cm unwind label %bb.ct

bb.cm:                                            ; preds = %_ZN6casadi2MXaSERKS0_.exit375
  %i.jo = load ptr, ptr %63, align 8, !tbaa !66   ; 5 uses
  store ptr %i.jo, ptr %59, align 8, !tbaa !66
  %i.jp = load ptr, ptr %i.hd, align 8, !tbaa !65 ; 4 uses
  store ptr %i.jp, ptr %i.hb, align 8, !tbaa !65
  %i.jq = load ptr, ptr %i.he, align 8, !tbaa !67 ; 3 uses
  store ptr %i.jq, ptr %i.hc, align 8, !tbaa !67
  %.not4.i.i.i.i.i = icmp eq ptr %90, %i.is
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %63, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.cm, %.lr.ph.i.i.i.i.i
  %.05.i.i.i.i.i = phi ptr [ %i.jr, %.lr.ph.i.i.i.i.i ], [ %90, %bb.cm ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i.i.i) #25
  %i.jr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.jr, %i.is
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i, %bb.cm
  %.not.i.i1.i.i.i = icmp eq ptr %90, null
  br i1 %.not.i.i1.i.i.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, label %bb.cn

bb.cn:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %i.js = ptrtoint ptr %i.ir to i64
  %i.jt = ptrtoint ptr %90 to i64
  %i.ju = sub i64 %i.js, %i.jt
  call void @_ZdlPvm(ptr noundef nonnull %90, i64 noundef %i.ju) #26
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit:    ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i.i.i, %bb.cn
  %i.jv = load ptr, ptr %63, align 8, !tbaa !66   ; 3 uses
  %i.jw = load ptr, ptr %i.hd, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.jv, %i.jw
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.jx, %.lr.ph.i.i.i ], [ %i.jv, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 2 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %.05.i.i.i) #25
  %i.jx = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.jx, %i.jw
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %63, align 8, !tbaa !66
  br label %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit
  %i.jy = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.jv, %_ZNSt6vectorIN6casadi2MXESaIS1_EEaSEOS3_.exit ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.jy, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit, label %bb.co

bb.co:                                            ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i
  %i.jz = load ptr, ptr %i.he, align 8, !tbaa !67
  %i.ka = ptrtoint ptr %i.jz to i64
  %i.kb = ptrtoint ptr %i.jy to i64
  %i.kc = sub i64 %i.ka, %i.kb
  call void @_ZdlPvm(ptr noundef nonnull %i.jy, i64 noundef %i.kc) #26
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit

_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit:       ; preds = %_ZSt8_DestroyIPN6casadi2MXES1_EvT_S3_RSaIT0_E.exit.i, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %64) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %65) #25
  %.not.i.i.not = icmp eq ptr %i.jp, %i.jo
  br i1 %.not.i.i.not, label %bb.cp, label %_ZNSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit

bb.cp:                                            ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  invoke void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.73, i64 noundef 0, i64 noundef 0) #24
          to label %.noexc376 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc376:                                        ; preds = %bb.cp
  unreachable

_ZNSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit:      ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %65, i64 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(8) %i.jo)
          to label %_ZN6casadimlERKNS_2MXES2_.exit378 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN6casadimlERKNS_2MXES2_.exit378:                ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit
  invoke void @_ZN6casadi2MX6binaryExRKS0_S2_(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %64, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef nonnull align 8 dereferenceable(8) %60)
          to label %_ZN6casadimiERKNS_2MXES2_.exit unwind label %bb.cu

_ZN6casadimiERKNS_2MXES2_.exit:                   ; preds = %_ZN6casadimlERKNS_2MXES2_.exit378
  %i.kd = load ptr, ptr %i.hf, align 8, !tbaa !65 ; 4 uses
  %i.ke = load ptr, ptr %i.hg, align 8, !tbaa !67
  %.not.i.i380 = icmp eq ptr %i.kd, %i.ke
  br i1 %.not.i.i380, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %_ZN6casadimiERKNS_2MXES2_.exit
  %i.kf = load ptr, ptr %64, align 8, !tbaa !62
  store ptr %i.kf, ptr %i.kd, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kd)
          to label %.noexc381 unwind label %bb.cv

.noexc381:                                        ; preds = %bb.cq
  %i.kg = load ptr, ptr %i.hf, align 8, !tbaa !65
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.kh, ptr %i.hf, align 8, !tbaa !65
  br label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit

bb.cr:                                            ; preds = %_ZN6casadimiERKNS_2MXES2_.exit
  invoke void @_ZNSt6vectorIN6casadi2MXESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %56, ptr %i.kd, ptr noundef nonnull align 8 dereferenceable(8) %64)
          to label %_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit unwind label %bb.cv

_ZNSt6vectorIN6casadi2MXESaIS1_EE9push_backEOS1_.exit: ; preds = %.noexc381, %bb.cr
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  %i.ki = add nuw i64 %.0156690, 1
  %exitcond703.not = icmp eq i64 %.0156690, %3
  br i1 %exitcond703.not, label %._crit_edge.i.i352.loopexit, label %bb.cc, !llvm.loop !307

bb.cs:                                            ; preds = %_ZN6casadi2MXaSERKS0_.exit, %._crit_edge
  %i.kj = landingpad { ptr, i32 }
          cleanup
  br label %bb.cx

bb.ct:                                            ; preds = %_ZN6casadi2MXaSERKS0_.exit375
  %i.kk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %63) #25
  br label %bb.cx

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EE2atEm.exit, %bb.cp
  %lpad.loopexit.split-lp900 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

bb.cu:                                            ; preds = %_ZN6casadimlERKNS_2MXES2_.exit378
  %i.kl = landingpad { ptr, i32 }
          cleanup
  br label %bb.cw

bb.cv:                                            ; preds = %bb.cr, %bb.cq
  %i.km = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %64) #25
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %.pn232 = phi { ptr, i32 } [ %i.km, %bb.cv ], [ %i.kl, %bb.cu ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %65) #25
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cw
  %.pn232.pn = phi { ptr, i32 } [ %.pn232, %bb.cw ], [ %lpad.loopexit.split-lp900, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %65) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %64) #25
  br label %bb.cx

bb.cx:                                            ; preds = %.loopexit.split-lp, %bb.ct, %bb.cs, %bb.cl
  %.pn235.pn.pn = phi { ptr, i32 } [ %.pn235.pn, %bb.cl ], [ %.pn232.pn, %.loopexit.split-lp ], [ %i.kk, %bb.ct ], [ %i.kj, %bb.cs ]
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %60) #25
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cd
  %.pn235.pn.pn.pn = phi { ptr, i32 } [ %.pn235.pn.pn, %bb.cx ], [ %i.ix, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #25
  br label %bb.fi

.thread:                                          ; preds = %._crit_edge.i.i352
  %i.kn = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit674

_ZN6casadi2MXC2ERKS0_.exit:                       ; preds = %._crit_edge.i.i352
  %i.ko = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 3 uses
  %i.kp = load ptr, ptr %44, align 8, !tbaa !62
  store ptr %i.kp, ptr %i.ko, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ko)
          to label %_ZN6casadi2MXC2ERKS0_.exit385 unwind label %bb.dc

_ZN6casadi2MXC2ERKS0_.exit385:                    ; preds = %_ZN6casadi2MXC2ERKS0_.exit
  %i.kq = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  %i.kr = load ptr, ptr %46, align 8, !tbaa !62
  store ptr %i.kr, ptr %i.kq, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.kq)
          to label %_ZN6casadi2MXC2ERKS0_.exit387 unwind label %bb.dc

_ZN6casadi2MXC2ERKS0_.exit387:                    ; preds = %_ZN6casadi2MXC2ERKS0_.exit385
  %i.ks = getelementptr inbounds nuw i8, ptr %68, i64 24 ; 3 uses
  %i.kt = load ptr, ptr %48, align 8, !tbaa !62
  store ptr %i.kt, ptr %i.ks, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %i.ks)
          to label %_ZN6casadi2MXC2ERKS0_.exit389 unwind label %bb.dc

_ZN6casadi2MXC2ERKS0_.exit389:                    ; preds = %_ZN6casadi2MXC2ERKS0_.exit387
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #25
  invoke void @_ZN6casadi2MX7vertcatERKSt6vectorIS0_SaIS0_EE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::MX") align 8 %69, ptr noundef nonnull align 8 dereferenceable(24) %56)
          to label %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit unwind label %bb.de

_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit: ; preds = %_ZN6casadi2MXC2ERKS0_.exit389
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #25
  %i.ku = getelementptr inbounds nuw i8, ptr %70, i64 8 ; 2 uses
  %i.kv = getelementptr inbounds nuw i8, ptr %70, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %70, i8 0, i64 24, i1 false)
  store ptr %i.ku, ptr %i.kv, align 8, !tbaa !72
  %i.kw = getelementptr inbounds nuw i8, ptr %70, i64 32
  store ptr %i.ku, ptr %i.kw, align 8, !tbaa !73
  %i.kx = getelementptr inbounds nuw i8, ptr %70, i64 40
  store i64 0, ptr %i.kx, align 8, !tbaa !74
  invoke void @_ZN6casadi8FunctionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt16initializer_listINS_2MXEESB_RKSt3mapIS6_NS_11GenericTypeESt4lessIS6_ESaISt4pairIS7_SD_EEE(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(32) %67, ptr nonnull %68, i64 4, ptr nonnull %69, i64 1, ptr noundef nonnull align 8 dereferenceable(48) %70)
          to label %bb.cz unwind label %.loopexit675.loopexit

bb.cz:                                            ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.ky = getelementptr inbounds nuw i8, ptr %70, i64 16
  %i.kz = load ptr, ptr %i.ky, align 8, !tbaa !75
  invoke void @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_N6casadi11GenericTypeEESt10_Select1stISA_ESt4lessIS5_ESaISA_EE8_M_eraseEPSt13_Rb_tree_nodeISA_E(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef %i.kz)
          to label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit unwind label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.la = landingpad { ptr, i32 }
          catch ptr null
  %i.lb = extractvalue { ptr, i32 } %i.la, 0
  call void @__clang_call_terminate(ptr %i.lb) #28
  unreachable

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit: ; preds = %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  %i.lc = getelementptr inbounds nuw i8, ptr %68, i64 24
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.lc) #25
  %i.ld = getelementptr inbounds nuw i8, ptr %68, i64 16
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ld) #25
  %i.le = getelementptr inbounds nuw i8, ptr %68, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.le) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %68) #25
  %i.lf = load ptr, ptr %67, align 8, !tbaa !37   ; 2 uses
  %i.lg = icmp eq ptr %i.lf, %i.hk
  br i1 %i.lg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit
  %i.lh = load i64, ptr %i.hk, align 8, !tbaa !38
  %i.li = add i64 %i.lh, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.li) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393: ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i391
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %71) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %72) #25
  %i.lj = getelementptr inbounds nuw i8, ptr %72, i64 16 ; 6 uses
  store ptr %i.lj, ptr %72, align 8, !tbaa !33
  store i32 1852008041, ptr %i.lj, align 8
  %i.lk = getelementptr inbounds nuw i8, ptr %72, i64 8
  store i64 4, ptr %i.lk, align 8, !tbaa !39
  %i.ll = getelementptr inbounds nuw i8, ptr %72, i64 20
  store i8 0, ptr %i.ll, align 4, !tbaa !38
  invoke void @_ZN6casadi10rootfinderERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKNS_8FunctionERKSt3mapIS5_NS_11GenericTypeESt4lessIS5_ESaISt4pairIS6_SC_EEE(ptr dead_on_unwind nonnull writable sret(%"class.casadi::Function") align 8 %71, ptr noundef nonnull align 8 dereferenceable(32) %72, ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef nonnull align 8 dereferenceable(48) %6)
          to label %bb.db unwind label %bb.df

bb.db:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit393
  %i.lm = load ptr, ptr %72, align 8, !tbaa !37   ; 2 uses
  %i.ln = icmp eq ptr %i.lm, %i.lj
  br i1 %i.ln, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398: ; preds = %bb.db
  %i.lo = load i64, ptr %i.lj, align 8, !tbaa !38
  %i.lp = add i64 %i.lo, 1
  call void @_ZdlPvm(ptr noundef %i.lm, i64 noundef %i.lp) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400: ; preds = %bb.db, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i398
  call void @llvm.lifetime.end.p0(ptr nonnull %72) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %73) #25
  %i.lq = load ptr, ptr %44, align 8, !tbaa !62
  store ptr %i.lq, ptr %73, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %73)
          to label %_ZN6casadi2MXC2ERKS0_.exit402.preheader unwind label %bb.dg

_ZN6casadi2MXC2ERKS0_.exit402.preheader:          ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit400
  %i.lr = load i64, ptr %i.a, align 8, !tbaa !47
  %i.ls = icmp sgt i64 %i.lr, 0
  br i1 %i.ls, label %.lr.ph698, label %._crit_edge.i.i403

.lr.ph698:                                        ; preds = %_ZN6casadi2MXC2ERKS0_.exit402.preheader
  %i.lt = getelementptr inbounds nuw i8, ptr %76, i64 8 ; 3 uses
  %i.lu = getelementptr inbounds nuw i8, ptr %76, i64 16 ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %76, i64 24 ; 3 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %76, i64 32
  %i.lx = getelementptr inbounds nuw i8, ptr %75, i64 8
  %i.ly = getelementptr inbounds nuw i8, ptr %75, i64 16 ; 2 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %55, i64 8
  %i.ma = getelementptr inbounds nuw i8, ptr %55, i64 16 ; 2 uses
  %i.mb = getelementptr inbounds nuw i8, ptr %77, i64 8
  %i.mc = getelementptr inbounds nuw i8, ptr %77, i64 16 ; 2 uses
  %i.md = getelementptr inbounds nuw i8, ptr %74, i64 8
  %i.me = getelementptr inbounds nuw i8, ptr %74, i64 16
  %i.mf = getelementptr inbounds nuw i8, ptr %76, i64 24
  %i.mg = getelementptr inbounds nuw i8, ptr %76, i64 16
  %i.mh = getelementptr inbounds nuw i8, ptr %76, i64 8
  br label %bb.dh

._crit_edge.i.i403:                               ; preds = %_ZNSt6vectorIN6casadi2MXESaIS1_EED2Ev.exit468, %_ZN6casadi2MXC2ERKS0_.exit402.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %82) #25
  %i.mi = getelementptr inbounds nuw i8, ptr %82, i64 16 ; 6 uses
  store ptr %i.mi, ptr %82, align 8, !tbaa !33
  store i8 70, ptr %i.mi, align 8, !tbaa !38
  %i.mj = getelementptr inbounds nuw i8, ptr %82, i64 8
  store i64 1, ptr %i.mj, align 8, !tbaa !39
  %i.mk = getelementptr inbounds nuw i8, ptr %82, i64 17
  store i8 0, ptr %i.mk, align 1, !tbaa !38
  call void @llvm.lifetime.start.p0(ptr nonnull %83) #25
  %i.ml = load ptr, ptr %44, align 8, !tbaa !62
  store ptr %i.ml, ptr %83, align 8, !tbaa !62
  invoke void @_ZN6casadi13GenericSharedINS_12SharedObjectENS_20SharedObjectInternalEE8count_upEv(ptr noundef nonnull align 8 dereferenceable(8) %83)
          to label %_ZN6casadi2MXC2ERKS0_.exit476 unwind label %.thread656

bb.dc:                                            ; preds = %_ZN6casadi2MXC2ERKS0_.exit387, %_ZN6casadi2MXC2ERKS0_.exit385, %_ZN6casadi2MXC2ERKS0_.exit
  %.0159 = phi ptr [ %i.ks, %_ZN6casadi2MXC2ERKS0_.exit387 ], [ %i.kq, %_ZN6casadi2MXC2ERKS0_.exit385 ], [ %i.ko, %_ZN6casadi2MXC2ERKS0_.exit ]
  %i.mm = landingpad { ptr, i32 }
          cleanup
  br label %bb.dd

bb.dd:                                            ; preds = %bb.dc, %bb.dd
  %i.mn = phi ptr [ %.0159, %bb.dc ], [ %i.mo, %bb.dd ]
  %i.mo = getelementptr inbounds i8, ptr %i.mn, i64 -8 ; 3 uses
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mo) #25
  %i.mp = icmp eq ptr %i.mo, %68
  br i1 %i.mp, label %.loopexit674, label %bb.dd

bb.de:                                            ; preds = %_ZN6casadi2MXC2ERKS0_.exit389
  %i.mq = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit675

.loopexit675.loopexit:                            ; preds = %_ZN6casadi7vertcatERKSt6vectorINS_2MXESaIS1_EE.exit
  %i.mr = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEN6casadi11GenericTypeESt4lessIS5_ESaISt4pairIKS5_S7_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %70) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %70) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %69) #25
  br label %.loopexit675

.loopexit675:                                     ; preds = %.loopexit675.loopexit, %bb.de
  %.pn199 = phi { ptr, i32 } [ %i.mq, %bb.de ], [ %i.mr, %.loopexit675.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #25
  %i.ms = getelementptr inbounds nuw i8, ptr %68, i64 24
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ms) #25
  %i.mt = getelementptr inbounds nuw i8, ptr %68, i64 16
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mt) #25
  %i.mu = getelementptr inbounds nuw i8, ptr %68, i64 8
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.mu) #25
  call void @_ZN6casadi2MXD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %68) #25
end_hunk_1
