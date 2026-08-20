inline.NumInlined: 6549
inline.NumDeleted: 2624
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 11
begin_hunk_0_@_ZN6duckdb9ErrorDataD2Ev:bb.a
_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.y) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN6duckdb20AggregateFunctionSetC2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) unnamed_addr #18 align 2 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !19
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define void @_ZN6duckdb20AggregateFunctionSetC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #20 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.2 = alloca %union.anon, align 8          ; 4 uses
  %i.a = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.c = icmp eq ptr %i.a, %i.b
  br i1 %i.c, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !24   ; 4 uses
  %i.f = icmp ult i64 %i.e, 16
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nuw nsw i64 %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.g, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.h, align 8, !tbaa !24
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !tbaa !19
  %i.j = add nuw nsw i64 %i.e, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.i, ptr noundef nonnull align 8 dereferenceable(1) %.sroa.2, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a
  %i.k = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.k, ptr %.sroa.2, align 8, !tbaa !25
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.b, ptr %1, align 8, !tbaa !22
  store i64 0, ptr %i.l, align 8, !tbaa !24
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %0, align 8, !tbaa !22
  %.sroa.2.0..sroa.2.16. = load i64, ptr %.sroa.2, align 8, !tbaa !25
  store i64 %.sroa.2.0..sroa.2.16., ptr %i.m, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.n = phi i64 [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.n, ptr %i.o, align 8, !tbaa !24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20AggregateFunctionSetC2ENS_17AggregateFunctionE(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.b, ptr %2, align 8, !tbaa !19
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !22   ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 6 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !24   ; 4 uses
  %i.h = icmp ult i64 %i.g, 16
  call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 %i.g, ptr %i.k, align 8, !tbaa !24
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  store i64 0, ptr %i.j, align 8, !tbaa !24
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !19
  br label %bb.b

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.o = load <2 x i64>, ptr %.phi.trans.insert, align 8, !tbaa !25
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !24 ; 2 uses
  store <2 x i64> %i.o, ptr %i.n, align 8, !tbaa !25
  store ptr %i.d, ptr %i.a, align 8, !tbaa !22
  store i64 0, ptr %i.m, align 8, !tbaa !24
  store i8 0, ptr %i.d, align 8, !tbaa !25
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.p, ptr %0, align 8, !tbaa !19
  %i.q = icmp eq ptr %i.c, %i.b
  br i1 %i.q, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.r = phi ptr [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.s = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ]
  %i.t = phi i64 [ %i.g, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.thread ], [ %.pre, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit ] ; 3 uses
  %i.u = icmp ult i64 %i.t, 16
  call void @llvm.assume(i1 %i.u)
  %i.v = add nuw nsw i64 %i.t, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.b, i64 %i.v, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !22
  %i.w = load i64, ptr %i.b, align 8, !tbaa !25
  store i64 %i.w, ptr %i.p, align 8, !tbaa !25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.x = phi ptr [ %i.s, %bb.b ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.y = phi i64 [ %i.t, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.y, ptr %i.z, align 8, !tbaa !24
  store ptr %i.b, ptr %2, align 8, !tbaa !22
  store i64 0, ptr %i.x, align 8, !tbaa !24
  store i8 0, ptr %i.b, align 8, !tbaa !25
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  invoke void @_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, ptr null, ptr noundef nonnull align 8 dereferenceable(368) %1)
          to label %_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE9push_backEOS1_.exit unwind label %bb.c

_ZNSt6vectorIN6duckdb17AggregateFunctionESaIS1_EE9push_backEOS1_.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11FunctionSetINS_17AggregateFunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) #31
  resume { ptr, i32 } %i.ab
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb20AggregateFunctionSet22GetFunctionByArgumentsERNS_13ClientContextERKNS_6vectorINS_11LogicalTypeELb1ESaIS4_EEE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::AggregateFunction") align 8 %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(512) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %5 = alloca %"class.duckdb::ErrorData", align 8 ; 15 uses
  %6 = alloca %"class.duckdb::FunctionBinder", align 8 ; 5 uses
  %7 = alloca %"class.duckdb::optional_idx", align 8 ; 5 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %12 = alloca %"class.std::allocator", align 1   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #31
  call void @_ZN6duckdb9ErrorDataC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(512) %2)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.d = invoke i64 @_ZN6duckdb14FunctionBinder25BindFunctionFromArgumentsINS_17AggregateFunctionEEENS_12optional_idxERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_11FunctionSetIT_EERKNS_6vectorINS_11LogicalTypeELb1ESaISH_EEERNS_9ErrorDataE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(128) %5)
          to label %_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_20AggregateFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE.exit unwind label %bb.g ; 2 uses

_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_20AggregateFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE.exit: ; preds = %bb.b
  store i64 %i.d, ptr %7, align 8
  %.not94 = icmp eq i64 %i.d, -1
  br i1 %.not94, label %bb.c, label %bb.w

bb.c:                                             ; preds = %_ZN6duckdb14FunctionBinder12BindFunctionERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS_20AggregateFunctionSetERKNS_6vectorINS_11LogicalTypeELb1ESaISC_EEERNS_9ErrorDataE.exit
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !94   ; 3 uses
  %.not95101 = icmp eq ptr %i.f, %i.h
  br i1 %.not95101, label %.critedge49, label %.lr.ph103

.lr.ph103:                                        ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !226  ; 2 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !227    ; 3 uses
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = sub i64 %i.l, %i.m                       ; 3 uses
  %13 = sdiv exact i64 %i.n, 24
  %.not3998 = icmp ne ptr %i.j, %i.k
  %.not3998.fr = freeze i1 %.not3998
  br i1 %.not3998.fr, label %.lr.ph103.split.us, label %.lr.ph103.split

.lr.ph103.split.us:                               ; preds = %.lr.ph103, %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us
  %.sroa.074.0102.us = phi ptr [ %i.ab, %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us ], [ %i.f, %.lr.ph103 ] ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.074.0102.us, i64 136
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.074.0102.us, i64 144
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !226
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !227  ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 2 uses
  %.not.us = icmp ult i64 %i.n, %i.u
  br i1 %.not.us, label %.preheader.us.preheader, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us

.preheader.us.preheader:                          ; preds = %.lr.ph103.split.us
  %i.v = sdiv exact i64 %i.u, 24                  ; 2 uses
  br label %.preheader.us

bb.d:                                             ; preds = %bb.e
  %i.w = add nuw i64 %.02399.us, 1                ; 2 uses
  %.not39.us = icmp ult i64 %i.w, %13
  br i1 %.not39.us, label %.preheader.us, label %.critedge, !llvm.loop !640

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.d
  %.02399.us = phi i64 [ %i.w, %bb.d ], [ 0, %.preheader.us.preheader ] ; 5 uses
  %i.x = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %.02399.us
  %i.y = load i8, ptr %i.x, align 8, !tbaa !217
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.02399.us, ptr %i.b, align 8, !tbaa !15
  store i64 %i.v, ptr %i.c, align 8, !tbaa !15
  %.not.i.i.i50.us = icmp ult i64 %.02399.us, %i.v
  br i1 %.not.i.i.i50.us, label %bb.e, label %.noexc.i71, !prof !235

bb.e:                                             ; preds = %.preheader.us
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.z = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.02399.us
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !217
  %.not38.us = icmp eq i8 %i.y, %i.aa
  br i1 %.not38.us, label %bb.d, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us

_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us:    ; preds = %bb.e, %.lr.ph103.split.us
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.074.0102.us, i64 368 ; 2 uses
  %.not95.us = icmp eq ptr %i.ab, %i.h
  br i1 %.not95.us, label %.critedge49, label %.lr.ph103.split.us

bb.f:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.ac

bb.g:                                             ; preds = %.noexc66, %bb.x, %bb.b, %bb.w
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

.lr.ph103.split:                                  ; preds = %.lr.ph103, %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  %.sroa.074.0102 = phi ptr [ %i.bi, %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit ], [ %i.f, %.lr.ph103 ] ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.074.0102, i64 136
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.074.0102, i64 144
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !226
  %i.ah = load ptr, ptr %i.ae, align 8, !tbaa !227
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %.not = icmp ult i64 %i.n, %i.ak
  br i1 %.not, label %.critedge, label %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit

.noexc.i71:                                       ; preds = %.preheader.us
  %i.al = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #31
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store ptr %i.am, ptr %4, align 8, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  store i64 55, ptr %i.a, align 8, !tbaa !15
  %i.an = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc72 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i51 ; 3 uses

.noexc72:                                         ; preds = %.noexc.i71
  store ptr %i.an, ptr %4, align 8, !tbaa !22
  %i.ao = load i64, ptr %i.a, align 8, !tbaa !15  ; 3 uses
  store i64 %i.ao, ptr %i.am, align 8, !tbaa !25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.an, ptr noundef nonnull align 1 dereferenceable(55) @.str.72, i64 55, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.ao, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ao
  store i8 0, ptr %i.aq, align 1, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #31
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.h unwind label %bb.i

bb.h:                                             ; preds = %.noexc72
  invoke void @__cxa_throw(ptr nonnull %i.al, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.k unwind label %bb.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i51: ; preds = %.noexc.i71
  %i.ar = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br label %bb.j

bb.i:                                             ; preds = %bb.h, %.noexc72
  %.0.i.i.i54 = phi i1 [ false, %bb.h ], [ true, %.noexc72 ] ; 2 uses
  %i.as = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.at = load ptr, ptr %4, align 8, !tbaa !22    ; 2 uses
  %i.au = icmp eq ptr %i.at, %i.am
  br i1 %i.au, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i56, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55: ; preds = %bb.i
  call void @_ZdlPv(ptr noundef %i.at) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0.i.i.i54, label %bb.j, label %.body

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i56: ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #31
  br i1 %.0.i.i.i54, label %bb.j, label %.body

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i56, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i51
  %.pn8.i.i.i52 = phi { ptr, i32 } [ %i.ar, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i51 ], [ %i.as, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i56 ], [ %i.as, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i55 ]
  call void @__cxa_free_exception(ptr %i.al) #31
  br label %.body

bb.k:                                             ; preds = %bb.h
  unreachable

.critedge:                                        ; preds = %.lr.ph103.split, %bb.d
  %.sroa.074.0.lcssa96 = phi ptr [ %.sroa.074.0102.us, %bb.d ], [ %.sroa.074.0102, %.lr.ph103.split ] ; 4 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(368) %0, ptr noundef nonnull align 8 dereferenceable(368) %.sroa.074.0.lcssa96)
          to label %.noexc unwind label %bb.o

.noexc:                                           ; preds = %.critedge
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !26
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.074.0.lcssa96, i64 240
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(106) %i.av, ptr noundef nonnull align 8 dereferenceable(106) %i.aw, i64 106, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.074.0.lcssa96, i64 352
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.074.0.lcssa96, i64 360
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !34 ; 2 uses
  %i.bb = load <2 x ptr>, ptr %i.ay, align 8, !tbaa !33
  store <2 x ptr> %i.bb, ptr %i.ax, align 8, !tbaa !33
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit, label %bb.l

bb.l:                                             ; preds = %.noexc
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 3 uses
  %i.bd = load i8, ptr @__libc_single_threaded, align 1, !tbaa !25
  %.not.i.i.i.i.i.i = icmp eq i8 %i.bd, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = load i32, ptr %i.bc, align 4, !tbaa !3
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !3
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit

bb.n:                                             ; preds = %bb.l
  %i.bg = atomicrmw volatile add ptr %i.bc, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb11FunctionSetINS_17AggregateFunctionEE19GetFunctionByOffsetEm.exit

bb.o:                                             ; preds = %.critedge
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN6duckdb17AggregateFunctionC2ERKS0_.exit:       ; preds = %.lr.ph103.split
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.074.0102, i64 368 ; 2 uses
  %.not95 = icmp eq ptr %i.bi, %i.h
  br i1 %.not95, label %.critedge49, label %.lr.ph103.split

.critedge49:                                      ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit, %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit.us, %bb.c
  %i.bj = call ptr @__cxa_allocate_exception(i64 16) #31 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.40, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.p unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread

bb.p:                                             ; preds = %.critedge49
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #31
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #31
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull @.str.41, ptr noundef nonnull align 1 dereferenceable(1) %12)
          to label %bb.q unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit61.thread

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN6duckdb10StringUtil8ToStringINS_11LogicalTypeEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS_6vectorIT_Lb1ESaISA_EEERKS8_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 40
  invoke void @_ZN6duckdb17InternalExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_RKS7_EEESA_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bj, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(32) %i.bk)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  invoke void @__cxa_throw(ptr nonnull %i.bj, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #34
          to label %bb.ad unwind label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64.thread: ; preds = %.critedge49
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %.sink.split

bb.t:                                             ; preds = %bb.q
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

bb.u:                                             ; preds = %bb.s, %bb.r
  %.0 = phi i1 [ false, %bb.s ], [ true, %bb.r ]  ; 2 uses
  %i.bn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bo = load ptr, ptr %10, align 8, !tbaa !22   ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bq = icmp eq ptr %i.bo, %i.bp
  br i1 %i.bq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bo) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

end_hunk_0
