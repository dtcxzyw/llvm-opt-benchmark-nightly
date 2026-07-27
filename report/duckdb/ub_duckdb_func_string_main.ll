inline.NumInlined: 6990
inline.NumDeleted: 1937
loop-unroll.NumCompletelyUnrolled: 114
loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 135
begin_hunk_0_@_ZN6duckdb9Exception25ConstructMessageRecursiveImJRKmEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS9_RSt6vectorINS_20ExceptionFormatValueESaISD_EERKT_DpOT0_:bb.a
_ZN6duckdb20ExceptionFormatValueD2Ev.exit8:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i6
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  resume { ptr, i32 } %i.w
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveImJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueImEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2106 ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !2108
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !11
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !29   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !15   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !29
  %i.o = load i64, ptr %i.i, align 8, !tbaa !7
  store i64 %i.o, ptr %i.g, align 8, !tbaa !7
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !15
  store ptr %i.i, ptr %i.f, align 8, !tbaa !29
  store i64 0, ptr %i.q, align 8, !tbaa !15
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !2106
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !2106
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !29 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !29   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #32
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorImLb1ESaImEEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !305
  %i.e = load ptr, ptr %0, align 8, !tbaa !302    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !69
  store i64 %i.i, ptr %i.b, align 8, !tbaa !69
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit, label %bb.b, !prof !308

bb.b:                                             ; preds = %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull @.str.46, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i: ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.l = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.m = load ptr, ptr %2, align 8, !tbaa !29     ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorImLb1ESaImEE3getILb1EEERmm.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_126BindConcatFunctionInternalERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb(ptr dead_on_unwind noalias nofree writable writeonly align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(512) %1, ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 10 uses
  %6 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %7 = alloca %"struct.duckdb::LogicalType", align 8 ; 15 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %11 = alloca %"class.std::allocator", align 1   ; 5 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.std::allocator", align 1   ; 7 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %17 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %18 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %19 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %20 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %21 = alloca %"struct.duckdb::LogicalType", align 8 ; 7 uses
  %i.a = zext i1 %4 to i8                         ; 7 uses
  %i.b = load ptr, ptr %3, align 8, !tbaa !644    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !644  ; 2 uses
  %.not7499 = icmp eq ptr %i.b, %i.d
  br i1 %.not7499, label %.thread, label %.lr.ph

._crit_edge:                                      ; preds = %bb.h
  br i1 %.1, label %bb.i, label %bb.co

.lr.ph:                                           ; preds = %bb.a, %bb.h
  %.0103 = phi i1 [ %.1, %bb.h ], [ false, %bb.a ]
  %.028102 = phi i1 [ %.129, %bb.h ], [ true, %bb.a ]
  %.030101 = phi i8 [ %spec.select, %bb.h ], [ %i.a, %bb.a ]
  %.sroa.062.0100 = phi ptr [ %i.y, %bb.h ], [ %i.b, %bb.a ] ; 6 uses
  %i.e = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.0100)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load i8, ptr %i.f, align 8, !tbaa !155
  %i.h = icmp eq i8 %i.g, 2
  br i1 %i.h, label %bb.b, label %bb.e

bb.b:                                             ; preds = %.lr.ph
  %i.i = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.i)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr nonnull %i.i) #28
  br label %common.resume

bb.e:                                             ; preds = %.lr.ph
  %i.k = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.0100)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load i8, ptr %i.l, align 8, !tbaa !155
  %i.n = icmp eq i8 %i.m, 101
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.0100)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.q = load i8, ptr %i.p, align 8, !tbaa !155
  %i.r = icmp eq i8 %i.q, 108
  br i1 %i.r, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.1 = phi i1 [ true, %bb.g ], [ %.0103, %bb.f ] ; 2 uses
  %i.s = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.0100)
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load i8, ptr %i.t, align 8, !tbaa !155
  %.not = icmp eq i8 %i.u, 26
  %spec.select = select i1 %.not, i8 %.030101, i8 0 ; 2 uses
  %i.v = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.062.0100)
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 56
  %i.x = load i8, ptr %i.w, align 8, !tbaa !155
  %.not32 = icmp eq i8 %i.x, 1
  %.129 = select i1 %.not32, i1 %.028102, i1 false ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.062.0100, i64 8 ; 2 uses
  %.not74 = icmp eq ptr %i.y, %i.d
  br i1 %.not74, label %._crit_edge, label %.lr.ph

bb.i:                                             ; preds = %._crit_edge
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2144)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #28, !noalias !2144
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef zeroext 1), !noalias !2144
  %i.z = load ptr, ptr %3, align 8, !tbaa !644, !noalias !2144 ; 2 uses
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !644, !noalias !2144 ; 3 uses
  %.not182.i = icmp eq ptr %i.z, %i.aa
  br i1 %.not182.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  br label %.outer.i

.outer.i:                                         ; preds = %.thread223.i, %.lr.ph.i
  %.053184.ph.i = phi i1 [ false, %.thread223.i ], [ true, %.lr.ph.i ]
  %.sroa.0125.0183.ph.i = phi ptr [ %i.ft, %.thread223.i ], [ %i.z, %.lr.ph.i ]
  br label %bb.j

._crit_edge.i:                                    ; preds = %bb.by
  br i1 %.053184.ph.i, label %.critedge.i, label %._crit_edge.thread.i

bb.j:                                             ; preds = %bb.by, %.outer.i
  %.sroa.0125.0183.i = phi ptr [ %i.fs, %bb.by ], [ %.sroa.0125.0183.ph.i, %.outer.i ] ; 5 uses
  %i.ae = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0125.0183.i)
          to label %bb.k unwind label %bb.n, !noalias !2144

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 56 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #28, !noalias !2144
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 noundef zeroext 1)
          to label %bb.l unwind label %bb.o, !noalias !2144

bb.l:                                             ; preds = %bb.k
  %i.ag = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.m unwind label %bb.p, !noalias !2144

bb.m:                                             ; preds = %bb.l
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2144
  br i1 %i.ag, label %bb.by, label %bb.r

bb.n:                                             ; preds = %bb.j
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.o:                                             ; preds = %bb.k
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.p:                                             ; preds = %bb.l
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #28, !noalias !2144
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.pn60.i = phi { ptr, i32 } [ %i.aj, %bb.p ], [ %i.ai, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #28, !noalias !2144
  br label %.body.i

bb.r:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28, !noalias !2144
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 noundef zeroext 0)
          to label %bb.s unwind label %bb.t, !noalias !2144

bb.s:                                             ; preds = %bb.r
  %i.ak = load i8, ptr %i.af, align 8, !tbaa !155, !noalias !2144
  switch i8 %i.ak, label %bb.av [
    i8 2, label %bb.u
    i8 101, label %bb.x
    i8 108, label %bb.aj
  ]

bb.t:                                             ; preds = %bb.r
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %bb.ca

bb.u:                                             ; preds = %bb.s
  %i.am = call ptr @__cxa_allocate_exception(i64 16) #28, !noalias !2144 ; 3 uses
  invoke void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.am)
          to label %bb.v unwind label %bb.w, !noalias !2144

bb.v:                                             ; preds = %bb.u
  invoke void @__cxa_throw(ptr nonnull %i.am, ptr nonnull @_ZTIN6duckdb29ParameterNotResolvedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.cn unwind label %.loopexit.split-lp161.i, !noalias !2144

bb.w:                                             ; preds = %bb.u
  %i.an = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.am) #28, !noalias !2144
  br label %bb.bz

.loopexit160.i:                                   ; preds = %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i, %bb.aj, %bb.x
  %lpad.loopexit162.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

.loopexit.split-lp161.i:                          ; preds = %bb.v
  %lpad.loopexit.split-lp163.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.bz

bb.x:                                             ; preds = %bb.s
  %i.ao = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb8ListType12GetChildTypeERKNS_11LogicalTypeE(ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.y unwind label %.loopexit160.i, !noalias !2144 ; 5 uses

bb.y:                                             ; preds = %bb.x
  %i.ap = icmp eq ptr %7, %i.ao
  br i1 %i.ap, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.aq = load i8, ptr %i.ao, align 8, !tbaa !155, !noalias !2144
  store i8 %i.aq, ptr %7, align 8, !tbaa !155, !noalias !2144
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 1
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !156, !noalias !2144
  store i8 %i.as, ptr %i.ab, align 1, !tbaa !156, !noalias !2144
  %i.at = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76, !noalias !2144 ; 2 uses
  %i.aw = load <2 x ptr>, ptr %i.at, align 8, !tbaa !23, !noalias !2144
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 8 ; 3 uses
  %i.ay = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7, !noalias !2144
  %.not.i.i.i.i.i.i.i.i = icmp eq i8 %i.ay, 0
end_hunk_0
begin_hunk_1_@_ZN6duckdb12_GLOBAL__N_126BindConcatFunctionInternalERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !2144
  br i1 %.1.i, label %bb.bx, label %bb.bz

bb.bw:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit108.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28, !noalias !2144
  br i1 %.1.i, label %bb.bx, label %bb.bz

bb.bx:                                            ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %.thread150.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.thread.i, %.thread141.i, %.thread137.i
  %.pn62.pn.pn.pn140.i = phi { ptr, i32 } [ %i.fb, %.thread137.i ], [ %.pn62.i, %bb.bw ], [ %i.fc, %.thread141.i ], [ %.pn62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %i.fo, %.thread150.i ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.thread.i ]
  call void @__cxa_free_exception(ptr %i.ez) #28, !noalias !2144
  br label %bb.bz

bb.by:                                            ; preds = %bb.m
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0125.0183.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.fs, %i.aa
  br i1 %.not.i, label %._crit_edge.i, label %bb.j

.thread223.i:                                     ; preds = %bb.bn
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !2144
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0125.0183.i, i64 8 ; 2 uses
  %.not225.i = icmp eq ptr %i.ft, %i.aa
  br i1 %.not225.i, label %._crit_edge.thread.i, label %.outer.i

bb.bz:                                            ; preds = %bb.bx, %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i, %.loopexit.split-lp161.i, %.loopexit160.i, %bb.w
  %.pn70.pn.pn.pn.i = phi { ptr, i32 } [ %.pn70.pn.pn.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102.i ], [ %.pn62.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i109.i ], [ %i.an, %bb.w ], [ %.pn62.pn.pn.pn140.i, %bb.bx ], [ %.pn62.i, %bb.bw ], [ %lpad.loopexit162.i, %.loopexit160.i ], [ %lpad.loopexit.split-lp163.i, %.loopexit.split-lp161.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #28, !noalias !2144
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.t
  %.pn70.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn70.pn.pn.pn.i, %bb.bz ], [ %i.al, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28, !noalias !2144
  br label %.body.i

.critedge.i:                                      ; preds = %._crit_edge.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #28, !noalias !2144
  invoke void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 noundef zeroext 1)
          to label %bb.cb unwind label %bb.cd, !noalias !2144

bb.cb:                                            ; preds = %.critedge.i
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %16, i1 noundef zeroext %4)
          to label %bb.cc unwind label %bb.ce, !noalias !2144

bb.cc:                                            ; preds = %bb.cb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !2144
  %i.fu = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc112.i unwind label %bb.cg, !noalias !2144 ; 6 uses

.noexc112.i:                                      ; preds = %bb.cc
  %i.fv = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.fu, align 8, !tbaa !80, !noalias !2149
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.fw, ptr noundef nonnull align 8 dereferenceable(24) %i.fv)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit.i unwind label %.body.i.i, !noalias !2149, !inline_history !2152

.body.i.i:                                        ; preds = %.noexc112.i
  %i.fx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.fu) #28, !noalias !2149, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.fu) #32, !noalias !2149
  br label %.body.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %.noexc112.i
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  store i8 %i.a, ptr %i.fy, align 8, !tbaa !186, !noalias !2149
  store ptr %i.fu, ptr %0, align 8, !tbaa !333, !alias.scope !2144
  br label %_ZN6duckdb12_GLOBAL__N_114BindListConcatERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb.exit

bb.cd:                                            ; preds = %.critedge.i
  %i.fz = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ce:                                            ; preds = %bb.cb
  %i.ga = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %16) #28, !noalias !2144
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.pn58.i = phi { ptr, i32 } [ %i.ga, %bb.ce ], [ %i.fz, %bb.cd ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #28, !noalias !2144
  br label %.body.i

bb.cg:                                            ; preds = %bb.cc
  %i.gb = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

._crit_edge.thread.i:                             ; preds = %.thread223.i, %._crit_edge.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #28, !noalias !2144
  invoke void @_ZN6duckdb11LogicalType4LISTERKS0_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %17, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.ch unwind label %bb.cj, !noalias !2144

bb.ch:                                            ; preds = %._crit_edge.thread.i
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %17, i1 noundef zeroext %4)
          to label %bb.ci unwind label %bb.ck, !noalias !2144

bb.ci:                                            ; preds = %bb.ch
  %i.gc = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29
          to label %.noexc114.i unwind label %bb.cl, !noalias !2144 ; 6 uses

.noexc114.i:                                      ; preds = %bb.ci
  %i.gd = getelementptr inbounds nuw i8, ptr %2, i64 208
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.gc, align 8, !tbaa !80, !noalias !2153
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ge, ptr noundef nonnull align 8 dereferenceable(24) %i.gd)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit120.i unwind label %.body.i113.i, !noalias !2153, !inline_history !2152

.body.i113.i:                                     ; preds = %.noexc114.i
  %i.gf = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.gc) #28, !noalias !2153, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.gc) #32, !noalias !2153
  br label %.body115.i

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit120.i: ; preds = %.noexc114.i
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gc, i64 32
  store i8 %i.a, ptr %i.gg, align 8, !tbaa !186, !noalias !2153
  store ptr %i.gc, ptr %0, align 8, !tbaa !333, !alias.scope !2144
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !2144
  br label %_ZN6duckdb12_GLOBAL__N_114BindListConcatERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb.exit

bb.cj:                                            ; preds = %._crit_edge.thread.i
  %i.gh = landingpad { ptr, i32 }
          cleanup
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ch
  %i.gi = landingpad { ptr, i32 }
          cleanup
  br label %.body115.i

bb.cl:                                            ; preds = %bb.ci
  %i.gj = landingpad { ptr, i32 }
          cleanup
  br label %.body115.i

.body115.i:                                       ; preds = %bb.cl, %bb.ck, %.body.i113.i
  %.pn.i = phi { ptr, i32 } [ %i.gi, %bb.ck ], [ %i.gj, %bb.cl ], [ %i.gf, %.body.i113.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %17) #28, !noalias !2144
  br label %bb.cm

bb.cm:                                            ; preds = %.body115.i, %bb.cj
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %.body115.i ], [ %i.gh, %bb.cj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #28, !noalias !2144
  br label %.body.i

common.resume:                                    ; preds = %bb.d, %bb.cr, %bb.cv, %bb.cy, %bb.db, %.body.i49, %.body.i44, %.body.i39, %.body.i37, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %.pn70.pn.pn.pn.pn.pn.pn.i, %.body.i ], [ %i.gn, %.body.i37 ], [ %i.gv, %.body.i39 ], [ %i.hb, %.body.i44 ], [ %i.hi, %.body.i49 ], [ %i.j, %bb.d ], [ %i.gp, %bb.cr ], [ %i.gx, %bb.cv ], [ %i.hd, %bb.cy ], [ %i.hk, %bb.db ]
  resume { ptr, i32 } %common.resume.op

.body.i:                                          ; preds = %bb.cm, %bb.cg, %bb.cf, %.body.i.i, %bb.ca, %bb.q, %bb.n
  %.pn70.pn.pn.pn.pn.pn.pn.i = phi { ptr, i32 } [ %.pn.pn.i, %bb.cm ], [ %i.ah, %bb.n ], [ %.pn58.i, %bb.cf ], [ %.pn70.pn.pn.pn.pn.i, %bb.ca ], [ %.pn60.i, %bb.q ], [ %i.gb, %bb.cg ], [ %i.fx, %.body.i.i ]
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !2144
  br label %common.resume

bb.cn:                                            ; preds = %bb.bt, %bb.bi, %bb.v
  unreachable

_ZN6duckdb12_GLOBAL__N_114BindListConcatERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit.i, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit120.i
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #28, !noalias !2144
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28, !noalias !2144
  br label %bb.dc

bb.co:                                            ; preds = %._crit_edge
  br i1 %.129, label %.thread, label %bb.cz

.thread:                                          ; preds = %bb.a, %bb.co
  br i1 %4, label %bb.cp, label %bb.cs

bb.cp:                                            ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 noundef zeroext 1)
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %18, i1 noundef zeroext true)
          to label %bb.cq unwind label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.gk = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.gl = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2156 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.gl, align 8, !tbaa !80, !noalias !2156
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gm, ptr noundef nonnull align 8 dereferenceable(24) %i.gk)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit unwind label %.body.i37, !noalias !2156, !inline_history !2152

.body.i37:                                        ; preds = %bb.cq
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.gl) #28, !noalias !2156, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.gl) #32, !noalias !2156
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit: ; preds = %bb.cq
  %i.go = getelementptr inbounds nuw i8, ptr %i.gl, i64 32
  store i8 %i.a, ptr %i.go, align 8, !tbaa !186, !noalias !2156
  store ptr %i.gl, ptr %0, align 8, !tbaa !333
  br label %bb.dc

bb.cr:                                            ; preds = %bb.cp
  %i.gp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  br label %common.resume

bb.cs:                                            ; preds = %.thread
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 184
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !155
  switch i8 %i.gr, label %bb.cw [
    i8 101, label %bb.ct
    i8 108, label %bb.ct
  ]

bb.ct:                                            ; preds = %bb.cs, %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 noundef zeroext 1)
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %19, i1 noundef zeroext false)
          to label %bb.cu unwind label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.gs = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.gt = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2159 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.gt, align 8, !tbaa !80, !noalias !2159
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.gu, ptr noundef nonnull align 8 dereferenceable(24) %i.gs)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit43 unwind label %.body.i39, !noalias !2159, !inline_history !2152

.body.i39:                                        ; preds = %bb.cu
  %i.gv = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.gt) #28, !noalias !2159, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.gt) #32, !noalias !2159
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit43: ; preds = %bb.cu
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 32
  store i8 %i.a, ptr %i.gw, align 8, !tbaa !186, !noalias !2159
  store ptr %i.gt, ptr %0, align 8, !tbaa !333
  br label %bb.dc

bb.cv:                                            ; preds = %bb.ct
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %19) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  br label %common.resume

bb.cw:                                            ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 noundef zeroext 25)
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %20, i1 noundef zeroext false)
          to label %bb.cx unwind label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.gz = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2162 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.gz, align 8, !tbaa !80, !noalias !2162
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ha, ptr noundef nonnull align 8 dereferenceable(24) %i.gy)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit48 unwind label %.body.i44, !noalias !2162, !inline_history !2152

.body.i44:                                        ; preds = %bb.cx
  %i.hb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.gz) #28, !noalias !2162, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.gz) #32, !noalias !2162
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit48: ; preds = %bb.cx
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 32
  store i8 %i.a, ptr %i.hc, align 8, !tbaa !186, !noalias !2162
  store ptr %i.gz, ptr %0, align 8, !tbaa !333
  br label %bb.dc

bb.cy:                                            ; preds = %bb.cw
  %i.hd = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %common.resume

bb.cz:                                            ; preds = %bb.co
  %i.he = add nuw nsw i8 %spec.select, 25
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #28
  call void @_ZN6duckdb11LogicalTypeC1ENS_13LogicalTypeIdE(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 noundef zeroext %i.he)
  invoke fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %2, ptr noundef nonnull align 8 dereferenceable(24) %21, i1 noundef zeroext %4)
          to label %bb.da unwind label %bb.db

bb.da:                                            ; preds = %bb.cz
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  %i.hf = getelementptr inbounds nuw i8, ptr %2, i64 208
  %i.hg = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #29, !noalias !2165 ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN6duckdb12_GLOBAL__N_118ConcatFunctionDataE, i64 16), ptr %i.hg, align 8, !tbaa !80, !noalias !2165
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 8
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.hh, ptr noundef nonnull align 8 dereferenceable(24) %i.hf)
          to label %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit53 unwind label %.body.i49, !noalias !2165, !inline_history !2152

.body.i49:                                        ; preds = %bb.da
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12FunctionDataD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(33) %i.hg) #28, !noalias !2165, !inline_history !2152
  call void @_ZdlPv(ptr noundef nonnull %i.hg) #32, !noalias !2165
  br label %common.resume

_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit53: ; preds = %bb.da
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hg, i64 32
  store i8 %i.a, ptr %i.hj, align 8, !tbaa !186, !noalias !2165
  store ptr %i.hg, ptr %0, align 8, !tbaa !333
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.hk = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %21) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #28
  br label %common.resume

bb.dc:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit53, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit48, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit43, %_ZNSt10unique_ptrIN6duckdb12_GLOBAL__N_118ConcatFunctionDataESt14default_deleteIS2_EED2Ev.exit, %_ZN6duckdb12_GLOBAL__N_114BindListConcatERNS_13ClientContextERNS_14ScalarFunctionERNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS7_ELb1EEELb1ESaISA_EEEb.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator", align 1    ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1102   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !83

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #28 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #28
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #30
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !29     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #28
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb29ParameterNotResolvedExceptionC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdb12_GLOBAL__N_115SetArgumentTypeERNS_14ScalarFunctionERKNS_11LogicalTypeEb(ptr noundef nonnull align 8 dereferenceable(360) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.duckdb::LogicalType", align 8 ; 15 uses
  %4 = alloca %"struct.duckdb::LogicalType", align 8 ; 15 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %.sink92.sroa.gep = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sink92.sroa.gep93 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sink92.sroa.gep94 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sink92.sroa.gep95 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sink92.sroa.gep96 = getelementptr inbounds nuw i8, ptr %3, i64 1
  %.sink92.sroa.gep97 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sink92.sroa.gep98 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sink92.sroa.gep99 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sink92.sroa.gep100 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sink92.sroa.gep101 = getelementptr inbounds nuw i8, ptr %4, i64 1
  %.sink92.sroa.gep103 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink92.sroa.gep104 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink92.sroa.gep105 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink92.sroa.gep106 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink92.sroa.gep107 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.sink92.sroa.gep108 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink92.sroa.gep109 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink92.sroa.gep110 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink92.sroa.gep111 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sink92.sroa.gep112 = getelementptr inbounds nuw i8, ptr %4, i64 8
  br i1 %2, label %bb.b, label %bb.w

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 0) ; 5 uses
  %i.c = icmp eq ptr %i.b, %1
  br i1 %i.c, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i8, ptr %1, align 8, !tbaa !155
  store i8 %i.d, ptr %i.b, align 8, !tbaa !155
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !156
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.f, ptr %i.g, align 1, !tbaa !156
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !76   ; 2 uses
  %i.l = load <2 x ptr>, ptr %i.i, align 8, !tbaa !23
  %.not.i.i.i.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !7
  %.not.i.i.i.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load i32, ptr %i.m, align 4, !tbaa !3
  %i.p = add nsw i32 %i.o, 1
  store i32 %i.p, ptr %i.m, align 4, !tbaa !3
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.q = atomicrmw volatile add ptr %i.m, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i

_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i: ; preds = %bb.f, %bb.e, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !76   ; 8 uses
  store <2 x ptr> %i.l, ptr %i.h, align 8, !tbaa !23
  %.not.i.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i.i, label %_ZN6duckdb11LogicalTypeaSERKS0_.exit, label %bb.g

bb.g:                                             ; preds = %_ZN6duckdb10shared_ptrINS_13ExtraTypeInfoELb1EEC2ERKS2_.exit.i.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 4 uses
  %i.u = load atomic i64, ptr %i.t acquire, align 8 ; 2 uses
  %i.v = icmp eq i64 %i.u, 4294967297
  %i.w = trunc i64 %i.u to i32                    ; 2 uses
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.t, align 8, !tbaa !77
end_hunk_1
