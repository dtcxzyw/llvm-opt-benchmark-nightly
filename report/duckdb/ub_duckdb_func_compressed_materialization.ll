inline.NumInlined: 5151
inline.NumDeleted: 1155
begin_hunk_0_@_ZN6duckdb27InternalDecompressStringFun12GetFunctionsEv:bb.a
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #21, !inline_history !155
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.023.027.i, i64 24 ; 2 uses
  %.not.i = icmp eq ptr %i.bq, %i.q
  br i1 %.not.i, label %._crit_edge.i, label %bb.m

bb.z:                                             ; preds = %bb.m
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.aa:                                            ; preds = %bb.q, %bb.o
  %i.bs = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14ScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(360) %4) #21
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z, %bb.l
  %.pn11.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.l ], [ %i.bs, %bb.aa ], [ %i.br, %bb.z ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.i
  %.pn11.pn.pn.i = phi { ptr, i32 } [ %.pn11.pn.i, %bb.ab ], [ %i.af, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !185
  call void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dereferenceable(56) %0) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit18.i: ; preds = %bb.h, %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i
  %.pn11.pn.pn.pn.i = phi { ptr, i32 } [ %.pn11.pn.pn.i, %bb.ac ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i16.i ], [ %i.ac, %bb.h ]
  resume { ptr, i32 } %.pn11.pn.pn.pn.i

_ZN6duckdb12_GLOBAL__N_130GetStringDecompressFunctionSetEv.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21, !noalias !185
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  ret void
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

declare void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb21LogicalTypeIdToStringB5cxx11ENS_13LogicalTypeIdE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.duckdb::ExceptionFormatValue", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::ExceptionFormatValue") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !193
  %.not.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 32, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !52
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 4 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.l = load i64, ptr %i.k, align 8, !tbaa !55   ; 3 uses
  %i.m = icmp ult i64 %i.l, 16
  call void @llvm.assume(i1 %i.m)
  %i.n = add nuw nsw i64 %i.l, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.g, ptr noundef nonnull align 8 dereferenceable(1) %i.i, i64 %i.n, i1 false)
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.b
  store ptr %i.h, ptr %i.e, align 8, !tbaa !27
  %i.o = load i64, ptr %i.i, align 8, !tbaa !54
  store i64 %i.o, ptr %i.g, align 8, !tbaa !54
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %i.p = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.l, %bb.c ]
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.p, ptr %i.r, align 8, !tbaa !55
  store ptr %i.i, ptr %i.f, align 8, !tbaa !27
  store i64 0, ptr %i.q, align 8, !tbaa !55
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  store ptr %i.t, ptr %i.a, align 8, !tbaa !64
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

bb.d:                                             ; preds = %bb.a
  invoke void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr %i.b, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit unwind label %bb.e

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.d
  %.phi.trans.insert8 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre9 = load ptr, ptr %.phi.trans.insert8, align 8, !tbaa !27 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = icmp eq ptr %.pre9, %i.u
  br i1 %i.v, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit
  call void @_ZdlPv(ptr noundef %.pre9) #25
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit

_ZN6duckdb20ExceptionFormatValueD2Ev.exit:        ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE9push_backEOS1_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !27   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.aa = icmp eq ptr %i.y, %i.z
  br i1 %i.aa, label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.y) #25
  br label %_ZN6duckdb20ExceptionFormatValueD2Ev.exit7

_ZN6duckdb20ExceptionFormatValueD2Ev.exit7:       ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #21
  resume { ptr, i32 } %i.w
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !61     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i: ; preds = %.lr.ph.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 64 ; 2 uses
  %.not.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !65

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !61
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.i = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.i, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.i) #25
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

declare void @_ZN6duckdb20ExceptionFormatValue17CreateFormatValueINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEES0_RKT_(ptr dead_on_unwind writable sret(%"struct.duckdb::ExceptionFormatValue") align 8, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb9Exception25ConstructMessageRecursiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorINS_20ExceptionFormatValueESaISA_EE(ptr dead_on_unwind writable sret(%"class.std::__cxx11::basic_string") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !61     ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775744
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = ashr exact i64 %i.f, 6                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 144115188075855871) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = shl nuw nsw i64 %i.j, 6
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.o, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 32, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store ptr %i.r, ptr %i.p, align 8, !tbaa !52
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !27   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %bb.c, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !55   ; 3 uses
  %i.x = icmp ult i64 %i.w, 16
  tail call void @llvm.assume(i1 %i.x)
  %i.y = add nuw nsw i64 %i.w, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.r, ptr noundef nonnull align 8 dereferenceable(1) %i.t, i64 %i.y, i1 false)
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNKSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE12_M_check_lenEmPKc.exit
  store ptr %i.s, ptr %i.p, align 8, !tbaa !27
  %i.z = load i64, ptr %i.t, align 8, !tbaa !54
  store i64 %i.z, ptr %i.r, align 8, !tbaa !54
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !55
  br label %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit

_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit:     ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.aa = phi i64 [ %i.w, %bb.c ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store i64 %i.aa, ptr %i.ac, align 8, !tbaa !55
  store ptr %i.t, ptr %i.q, align 8, !tbaa !27
  store i64 0, ptr %i.ab, align 8, !tbaa !55
  store i8 0, ptr %i.t, align 8, !tbaa !54
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.as, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.n, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 5 uses
  %.0911.i.i.i.i = phi ptr [ %i.ar, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ], [ %i.c, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !194)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i, i64 32, i1 false), !alias.scope !199
  %i.ad = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 48 ; 3 uses
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !52, !alias.scope !194, !noalias !197
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !27, !alias.scope !197, !noalias !194 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 48 ; 5 uses
  %i.ai = icmp eq ptr %i.ag, %i.ah
  br i1 %i.ai, label %bb.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

bb.d:                                             ; preds = %.lr.ph.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !55, !alias.scope !197, !noalias !194 ; 3 uses
  %i.al = icmp ult i64 %i.ak, 16
  tail call void @llvm.assume(i1 %i.al)
  %i.am = add nuw nsw i64 %i.ak, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.af, ptr noundef nonnull align 8 dereferenceable(1) %i.ah, i64 %i.am, i1 false), !alias.scope !199
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  store ptr %i.ag, ptr %i.ad, align 8, !tbaa !27, !alias.scope !194, !noalias !197
  %i.an = load i64, ptr %i.ah, align 8, !tbaa !54, !alias.scope !197, !noalias !194
  store i64 %i.an, ptr %i.af, align 8, !tbaa !54, !alias.scope !194, !noalias !197
  %.phi.trans.insert.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %.pre.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i, align 8, !tbaa !55, !alias.scope !197, !noalias !194
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i, %bb.d
  %i.ao = phi i64 [ %i.ak, %bb.d ], [ %.pre.i.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 40
  %i.aq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 40
  store i64 %i.ao, ptr %i.aq, align 8, !tbaa !55, !alias.scope !194, !noalias !197
  store ptr %i.ah, ptr %i.ae, align 8, !tbaa !27, !alias.scope !197, !noalias !194
  store i64 0, ptr %i.ap, align 8, !tbaa !55, !alias.scope !197, !noalias !194
  store i8 0, ptr %i.ah, align 8, !tbaa !54, !alias.scope !197, !noalias !194
  %i.ar = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 64 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ar, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !200

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.n, %_ZN6duckdb20ExceptionFormatValueC2EOS0_.exit ], [ %i.as, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i ]
  %i.at = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 64 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23
  %.012.i.i.i.i18 = phi ptr [ %i.bj, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %i.at, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 5 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.bi, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ], [ %1, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !204)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(64) %.0911.i.i.i.i19, i64 32, i1 false), !alias.scope !206
  %i.au = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48 ; 3 uses
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !52, !alias.scope !201, !noalias !204
  %i.ax = load ptr, ptr %i.av, align 8, !tbaa !27, !alias.scope !204, !noalias !201 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48 ; 5 uses
  %i.az = icmp eq ptr %i.ax, %i.ay
  br i1 %i.az, label %bb.e, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20

bb.e:                                             ; preds = %.lr.ph.i.i.i.i17
  %i.ba = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !55, !alias.scope !204, !noalias !201 ; 3 uses
  %i.bc = icmp ult i64 %i.bb, 16
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = add nuw nsw i64 %i.bb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull align 8 dereferenceable(1) %i.ay, i64 %i.bd, i1 false), !alias.scope !206
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20: ; preds = %.lr.ph.i.i.i.i17
  store ptr %i.ax, ptr %i.au, align 8, !tbaa !27, !alias.scope !201, !noalias !204
  %i.be = load i64, ptr %i.ay, align 8, !tbaa !54, !alias.scope !204, !noalias !201
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !54, !alias.scope !201, !noalias !204
  %.phi.trans.insert.i.i.i.i.i21 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %.pre.i.i.i.i.i22 = load i64, ptr %.phi.trans.insert.i.i.i.i.i21, align 8, !tbaa !55, !alias.scope !204, !noalias !201
  br label %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23

_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20, %bb.e
  %i.bf = phi i64 [ %i.bb, %bb.e ], [ %.pre.i.i.i.i.i22, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i20 ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 40
  %i.bh = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 40
  store i64 %i.bf, ptr %i.bh, align 8, !tbaa !55, !alias.scope !201, !noalias !204
  store ptr %i.ay, ptr %i.av, align 8, !tbaa !27, !alias.scope !204, !noalias !201
  store i64 0, ptr %i.bg, align 8, !tbaa !55, !alias.scope !204, !noalias !201
  store i8 0, ptr %i.ay, align 8, !tbaa !54, !alias.scope !204, !noalias !201
  %i.bi = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64 ; 2 uses
  %.not.i.i.i.i24 = icmp eq ptr %i.bi, %i.b
  br i1 %.not.i.i.i.i24, label %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, label %.lr.ph.i.i.i.i17, !llvm.loop !200

_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26: ; preds = %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i25 = phi ptr [ %i.at, %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.bj, %_ZSt19__relocate_object_aIN6duckdb20ExceptionFormatValueES1_SaIS1_EEvPT_PT0_RT1_.exit.i.i.i.i23 ]
  %.not.i27 = icmp eq ptr %i.c, null
  br i1 %.not.i27, label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb20ExceptionFormatValueESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit26, %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8, !tbaa !61
  store ptr %.0.lcssa.i.i.i.i25, ptr %i.a, align 8, !tbaa !64
  %i.bl = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %i.j
  store ptr %i.bl, ptr %i.bk, align 8, !tbaa !193
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #21 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @_ZSt28__throw_bad_array_new_lengthv() local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #2

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #11

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nonnull readnone align 8 captures(none) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %class.anon, align 8                ; 5 uses
  %i.a = alloca i16, align 2                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.b = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1) ; 2 uses
  tail call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207
  %i.e = load i16, ptr %i.d, align 2, !tbaa !221
  store i16 %i.e, ptr %i.a, align 2, !tbaa !221
  %i.f = tail call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 15 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !223  ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store ptr %i.a, ptr %5, align 8
  %i.i = load i8, ptr %i.f, align 8, !tbaa !237
  switch i8 %i.i, label %bb.i [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !207
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !238  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.p = load i64, ptr %i.o, align 8, !tbaa !53
  %i.q = trunc i64 %i.p to i1
  br i1 %i.q, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIshZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvS9_S9_mT1_NS_14FunctionErrorsE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.r = load i16, ptr %i.m, align 2, !tbaa !221
  %.val.val.i.i = load i16, ptr %i.a, align 2, !tbaa !221
  %i.s = trunc i16 %i.r to i8
  %i.t = trunc i16 %.val.val.i.i to i8
  %i.u = sub i8 %i.s, %i.t
  store i8 %i.u, ptr %i.k, align 1, !tbaa !54
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIshZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvS9_S9_mT1_NS_14FunctionErrorsE.exit

bb.d:                                             ; preds = %bb.a
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !207
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 40
  call fastcc void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIshNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvPKT_PT0_mRNS_12ValidityMaskESK_Pvb(ptr noundef %i.y, ptr noundef %i.w, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull readonly %5)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIshZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvS9_S9_mT1_NS_14FunctionErrorsE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 88 ; 2 uses
  %i.ac = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 152
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ae, -1
  br i1 %.not.i.i.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i: ; preds = %bb.e
  store i64 %i.ae, ptr %3, align 8
  br label %bb.f

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.ag = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.af)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 72
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ah, align 8, !tbaa !53 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8
  %.not68.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -1
  br i1 %.not68.i.i, label %.thread66.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i
  %i.ai = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.aj = shl i64 %i.ai, 1
  %.not.i.i = icmp ugt i64 %i.aj, %i.h
  br i1 %.not.i.i, label %.thread66.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.ak = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ab) ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 48 ; 3 uses
  %i.am = load i8, ptr %i.al, align 8, !tbaa !237
  %.not57.i.i = icmp eq i8 %i.am, 0
  br i1 %.not57.i.i, label %bb.h, label %.thread66.i.i

.thread66.i.i:                                    ; preds = %bb.g, %bb.f, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIsEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.al)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !207
  %i.ar = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.al)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ak, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 40
  call fastcc void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIshNS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvPKT_PT0_mRNS_12ValidityMaskESK_Pvb(ptr noundef %i.aq, ptr noundef %i.ao, i64 noundef %i.ar, ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.at, ptr noundef nonnull readonly %5)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.f)
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.av = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.au)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.ax = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIshZNS_12_GLOBAL__N_124IntegralCompressFunctionIshEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKsE_EEvS9_S9_mT1_NS_14FunctionErrorsE.exit

bb.i:                                             ; preds = %.thread66.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.f, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.k unwind label %bb.ai

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.l unwind label %bb.aj

end_hunk_0
begin_hunk_1_@_ZN6duckdb13UnaryExecutor11ExecuteFlatImNS_10uhugeint_tENS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_126IntegralDecompressFunctionImS2_EEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKmE_EEvPKT_PT0_mRNS_12ValidityMaskESL_Pvb:bb.a

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.o) #21
  br label %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit

_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit: ; preds = %bb.b, %_ZN6duckdb10shared_ptrINS_21TemplatedValidityDataImEELb1EEC2ERKS3_.exit.i.i, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !263
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 %i.af, ptr %i.ag, align 8, !tbaa !263
  %i.ah = add i64 %2, 63
  %i.ai = lshr i64 %i.ah, 6                       ; 2 uses
  %.not80 = icmp eq i64 %i.ai, 0
  br i1 %.not80, label %.loopexit, label %.lr.ph77

.lr.ph77:                                         ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %7, i64 8
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph77, %.loopexit67
  %.076 = phi i64 [ 0, %.lr.ph77 ], [ %.4, %.loopexit67 ] ; 9 uses
  %.05875 = phi i64 [ 0, %.lr.ph77 ], [ %i.bm, %.loopexit67 ] ; 2 uses
  %i.al = load ptr, ptr %3, align 8, !tbaa !238   ; 2 uses
  %.not.i62 = icmp eq ptr %i.al, null
  br i1 %.not.i62, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, label %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread: ; preds = %bb.m
  %i.am = add i64 %.076, 64
  %i.an = call noundef i64 @llvm.umin.i64(i64 %i.am, i64 %2)
  br label %.preheader68

_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit: ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %.05875
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !53 ; 2 uses
  %i.aq = add i64 %.076, 64
  %i.ar = call noundef i64 @llvm.umin.i64(i64 %i.aq, i64 %2) ; 5 uses
  switch i64 %i.ap, label %.preheader66 [
    i64 -1, label %.preheader68
    i64 0, label %.loopexit67
  ]

.preheader68:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.as = phi i64 [ %i.an, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit.thread ], [ %i.ar, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ] ; 3 uses
  %i.at = icmp ult i64 %.076, %i.as
  br i1 %i.at, label %.lr.ph, label %.loopexit67

.preheader66:                                     ; preds = %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %i.au = icmp ult i64 %.076, %i.ar
  br i1 %i.au, label %.lr.ph73, label %.loopexit67

.lr.ph:                                           ; preds = %.preheader68, %.lr.ph
  %.171 = phi i64 [ %i.bb, %.lr.ph ], [ %.076, %.preheader68 ] ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.171
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !53
  %.val61 = load ptr, ptr %5, align 8, !tbaa !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  store i64 %i.aw, ptr %8, align 8, !tbaa !1354
  store i64 0, ptr %i.aj, align 8, !tbaa !1356
  %i.ax = call { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.val61, ptr noundef nonnull align 8 dereferenceable(16) %8) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.ay = extractvalue { i64, i64 } %i.ax, 0
  %i.az = extractvalue { i64, i64 } %i.ax, 1
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.171 ; 2 uses
  store i64 %i.ay, ptr %i.ba, align 8, !tbaa !53
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  store i64 %i.az, ptr %.sroa.49.0..sroa_idx, align 8, !tbaa !53
  %i.bb = add i64 %.171, 1                        ; 2 uses
  %exitcond.not = icmp eq i64 %i.bb, %i.as
  br i1 %exitcond.not, label %.loopexit67, label %.lr.ph, !llvm.loop !2012

.lr.ph73:                                         ; preds = %.preheader66, %bb.o
  %.272 = phi i64 [ %i.bl, %bb.o ], [ %.076, %.preheader66 ] ; 4 uses
  %i.bc = sub nuw i64 %.272, %.076
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = and i64 %i.bd, %i.ap
  %.not = icmp eq i64 %i.be, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph73
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.272
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %.val60 = load ptr, ptr %5, align 8, !tbaa !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  store i64 %i.bg, ptr %7, align 8, !tbaa !1354
  store i64 0, ptr %i.ak, align 8, !tbaa !1356
  %i.bh = call { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.val60, ptr noundef nonnull align 8 dereferenceable(16) %7) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.272 ; 2 uses
  store i64 %i.bi, ptr %i.bk, align 8, !tbaa !53
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  store i64 %i.bj, ptr %.sroa.46.0..sroa_idx, align 8, !tbaa !53
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph73, %bb.n
  %i.bl = add i64 %.272, 1                        ; 2 uses
  %exitcond85.not = icmp eq i64 %i.bl, %i.ar
  br i1 %exitcond85.not, label %.loopexit67, label %.lr.ph73, !llvm.loop !2013

.loopexit67:                                      ; preds = %bb.o, %.lr.ph, %.preheader68, %.preheader66, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit
  %.4 = phi i64 [ %i.ar, %_ZNK6duckdb21TemplatedValidityMaskImE16GetValidityEntryEm.exit ], [ %i.as, %.lr.ph ], [ %.076, %.preheader66 ], [ %.076, %.preheader68 ], [ %i.ar, %bb.o ]
  %i.bm = add nuw nsw i64 %.05875, 1              ; 2 uses
  %exitcond86.not = icmp eq i64 %i.bm, %i.ai
  br i1 %exitcond86.not, label %.loopexit, label %bb.m, !llvm.loop !2014

bb.p:                                             ; preds = %.lr.ph79, %bb.p
  %.05978 = phi i64 [ 0, %.lr.ph79 ], [ %i.bt, %bb.p ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.05978
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !53
  %.val = load ptr, ptr %5, align 8, !tbaa !2010
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #21
  store i64 %i.bo, ptr %6, align 8, !tbaa !1354
  store i64 0, ptr %i.b, align 8, !tbaa !1356
  %i.bp = call { i64, i64 } @_ZNK6duckdb10uhugeint_tplERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %.val, ptr noundef nonnull align 8 dereferenceable(16) %6) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #21
  %i.bq = extractvalue { i64, i64 } %i.bp, 0
  %i.br = extractvalue { i64, i64 } %i.bp, 1
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.05978 ; 2 uses
  store i64 %i.bq, ptr %i.bs, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i64 %i.br, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %i.bt = add nuw i64 %.05978, 1                  ; 2 uses
  %exitcond87.not = icmp eq i64 %i.bt, %2
  br i1 %exitcond87.not, label %.loopexit, label %bb.p, !llvm.loop !2015

.loopexit:                                        ; preds = %.loopexit67, %bb.p, %_ZN6duckdb21TemplatedValidityMaskImE10InitializeERKS1_.exit, %.preheader
  ret void
}

declare void @_ZN6duckdb17ScalarFunctionSetC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #2

declare void @_ZN6duckdb11LogicalType8IntegralEv(ptr dead_on_unwind writable sret(%"class.duckdb::vector") align 8) local_unnamed_addr #2

declare noundef i64 @_ZN6duckdb13GetTypeIdSizeENS_12PhysicalTypeE(i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb11FunctionSetINS_14ScalarFunctionEED2Ev(ptr noundef nonnull align 8 dead_on_return(56) dereferenceable(56) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2016 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149  ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i ], [ %i.b, %bb.a ] ; 3 uses
  %i.e = load ptr, ptr %.05.i.i.i, align 8, !tbaa !92
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i.i) #21, !inline_history !2017
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 360 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, %i.d
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !2018

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %i.a, align 8, !tbaa !2016
  br label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.h = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.h) #25
  br label %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  %i.i = load ptr, ptr %0, align 8, !tbaa !27     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit
  tail call void @_ZdlPv(ptr noundef %i.i) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(360) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !149  ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !2016   ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 360                 ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 25620477880152155) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE12_M_check_lenEmPKc.exit
  %i.m = mul nuw nsw i64 %i.j, 360
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22
  br label %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.o = phi ptr [ %i.n, %bb.c ], [ null, %_ZNKSt6vectorIN6duckdb14ScalarFunctionESaIS1_EE12_M_check_lenEmPKc.exit ] ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 9 uses
  invoke void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(360) %i.p, ptr noundef nonnull align 8 dereferenceable(360) %2)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %i.p, align 8, !tbaa !92
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 240 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 264
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, i8 0, i64 24, i1 false)
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !91
  store ptr %i.t, ptr %i.r, align 8, !tbaa !91
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 256 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.w, i64 16, i1 false), !tbaa.struct !112
  store ptr %i.v, ptr %i.x, align 8, !tbaa !23
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, i8 0, i64 16, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.noexc
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 272
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 272
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.y, ptr noundef nonnull align 8 dereferenceable(72) %i.z, i64 72, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 344
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 344 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 352
  %i.ad = load <2 x ptr>, ptr %i.ab, align 8, !tbaa !90
  store ptr null, ptr %i.ac, align 8, !tbaa !116
  store <2 x ptr> %i.ad, ptr %i.aa, align 8, !tbaa !90
  store ptr null, ptr %i.ab, align 8, !tbaa !153
  %i.ae = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6duckdb14ScalarFunctionEPS1_ET0_T_S6_S5_(ptr noundef %i.c, ptr noundef %1, ptr noundef nonnull %i.o)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit unwind label %bb.g

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 360 ; 2 uses
  %i.ag = invoke noundef ptr @_ZSt16__do_uninit_copyIPKN6duckdb14ScalarFunctionEPS1_ET0_T_S6_S5_(ptr noundef %1, ptr noundef %i.b, ptr noundef nonnull %i.af)
          to label %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit30 unwind label %bb.h

_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit30: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit30, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.aj, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit30 ] ; 3 uses
  %i.ah = load ptr, ptr %.05.i.i, align 8, !tbaa !92
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void %i.ai(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i) #21, !inline_history !2019
  %i.aj = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 360 ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, label %.lr.ph.i.i, !llvm.loop !2018

_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit30
  %.not.i31 = icmp eq ptr %i.c, null
  br i1 %.not.i31, label %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.f

bb.f:                                             ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZSt8_DestroyIPN6duckdb14ScalarFunctionEEvT_S3_.exit, %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.o, ptr %0, align 8, !tbaa !2016
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !149
  %i.al = getelementptr inbounds nuw [360 x i8], ptr %i.o, i64 %i.j
  store ptr %i.al, ptr %i.ak, align 8, !tbaa !152
  ret void

bb.g:                                             ; preds = %bb.e
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %lpad.thr_comm.split-lp, 0
  %i.an = tail call ptr @__cxa_begin_catch(ptr %i.am) #21 ; 0 uses
  %i.ao = load ptr, ptr %i.p, align 8, !tbaa !92
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(360) %i.p) #21, !inline_history !2020
  br label %.loopexit

bb.h:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit, %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit
  %.0.ph = phi ptr [ %i.o, %_ZNSt12_Vector_baseIN6duckdb14ScalarFunctionESaIS1_EE11_M_allocateEm.exit ], [ %i.af, %_ZSt34__uninitialized_move_if_noexcept_aIPN6duckdb14ScalarFunctionES2_SaIS1_EET0_T_S5_S4_RT1_.exit ] ; 2 uses
  %lpad.thr_comm = landingpad { ptr, i32 }
          catch ptr null
  %i.aq = extractvalue { ptr, i32 } %lpad.thr_comm, 0
  %i.ar = tail call ptr @__cxa_begin_catch(ptr %i.aq) #21 ; 0 uses
  %.not4.i.i32 = icmp eq ptr %i.o, %.0.ph
  br i1 %.not4.i.i32, label %.loopexit, label %.lr.ph.i.i33

.lr.ph.i.i33:                                     ; preds = %bb.h, %.lr.ph.i.i33
  %.05.i.i34 = phi ptr [ %i.au, %.lr.ph.i.i33 ], [ %i.o, %bb.h ] ; 3 uses
  %i.as = load ptr, ptr %.05.i.i34, align 8, !tbaa !92
  %i.at = load ptr, ptr %i.as, align 8
  tail call void %i.at(ptr noundef nonnull align 8 dereferenceable(360) %.05.i.i34) #21, !inline_history !2019
  %i.au = getelementptr inbounds nuw i8, ptr %.05.i.i34, i64 360 ; 2 uses
  %.not.i.i35 = icmp eq ptr %i.au, %.0.ph
  br i1 %.not.i.i35, label %.loopexit, label %.lr.ph.i.i33, !llvm.loop !2018

bb.i:                                             ; preds = %.loopexit
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.j unwind label %bb.k

.loopexit:                                        ; preds = %.lr.ph.i.i33, %bb.g, %bb.h
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  invoke void @__cxa_rethrow() #23
          to label %bb.l unwind label %bb.i

bb.j:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.av

bb.k:                                             ; preds = %bb.i
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  tail call void @__clang_call_terminate(ptr %i.ax) #24
  unreachable

bb.l:                                             ; preds = %.loopexit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb18BaseScalarFunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(236) %0, ptr noundef nonnull align 8 dereferenceable(236) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb8FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(208) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14SimpleFunctionE, i64 16), ptr %0, align 8, !tbaa !92
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i unwind label %bb.b

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i: ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 160
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i unwind label %bb.c

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 184
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.c:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit.i
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.d:                                             ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.c) #21
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.h, %bb.c ]
  tail call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %i.a) #21
  br label %bb.f

common.resume:                                    ; preds = %bb.h, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %.pn.pn.i, %bb.f ], [ %i.o, %bb.h ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e, %bb.b
  %.pn.pn.i = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %i.g, %bb.b ]
  tail call void @_ZN6duckdb8FunctionD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(208) %0) #21
  br label %common.resume

_ZN6duckdb14SimpleFunctionC2ERKS0_.exit:          ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEC2ERKS3_.exit10.i
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb18BaseScalarFunctionE, i64 16), ptr %0, align 8, !tbaa !92
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 208
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.n = load i32, ptr %i.m, align 8
  store i32 %i.n, ptr %i.l, align 8
  ret void

bb.h:                                             ; preds = %_ZN6duckdb14SimpleFunctionC2ERKS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb14SimpleFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %0) #21
  br label %common.resume
}

; Function Attrs: nounwind
declare void @_ZN6duckdb14SimpleFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(208)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb8FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %i.d = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb8FunctionE, i64 16), ptr %0, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  store ptr %i.g, ptr %i.e, align 8, !tbaa !52
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !27   ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !55   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #21
  store i64 %i.j, ptr %i.d, align 8, !tbaa !53
  %i.k = icmp ugt i64 %i.j, 15
  br i1 %i.k, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.l = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0) ; 2 uses
  store ptr %i.l, ptr %i.e, align 8, !tbaa !27
  %i.m = load i64, ptr %i.d, align 8, !tbaa !53
  store i64 %i.m, ptr %i.g, align 8, !tbaa !54
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.n = phi ptr [ %i.l, %.noexc.i ], [ %i.g, %bb.a ] ; 2 uses
  switch i64 %i.j, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.o = load i8, ptr %i.h, align 1, !tbaa !54
  store i8 %i.o, ptr %i.n, align 1, !tbaa !54
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.n, ptr align 1 %i.h, i64 %i.j, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.p = load i64, ptr %i.d, align 8, !tbaa !53   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.q, align 8, !tbaa !55
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.p
  store i8 0, ptr %i.s, align 1, !tbaa !54
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store ptr %i.v, ptr %i.t, align 8, !tbaa !52
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !27   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load i64, ptr %i.x, align 8, !tbaa !55   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #21
  store i64 %i.y, ptr %i.c, align 8, !tbaa !53
  %i.z = icmp ugt i64 %i.y, 15
  br i1 %i.z, label %.noexc.i11, label %._crit_edge.i.i10

.noexc.i11:                                       ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  %i.aa = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.t, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc unwind label %bb.m     ; 2 uses

.noexc:                                           ; preds = %.noexc.i11
end_hunk_1
begin_hunk_2_@_ZN6duckdb13UnaryExecutor11ExecuteLoopINS_8string_tENS_9hugeint_tENS_18UnaryLambdaWrapperEPFS3_RKS2_EEEvPKT_PT0_mPKNS_15SelectionVectorERNS_12ValidityMaskESI_Pvb:bb.a
bb.f:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.as = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ak ; 2 uses
  %.sroa.07.0.copyload = load i64, ptr %i.as, align 8
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.28.0.copyload = load ptr, ptr %.sroa.28.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %9)
  store i64 %.sroa.07.0.copyload, ptr %9, align 8
  store ptr %.sroa.28.0.copyload, ptr %i.c, align 8
  %i.at = load ptr, ptr %6, align 8, !tbaa !90
  %i.au = call { i64, i64 } %i.at(ptr noundef nonnull align 8 dereferenceable(16) %9), !inline_history !2064 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9)
  %i.av = extractvalue { i64, i64 } %i.au, 0
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.040 ; 2 uses
  store i64 %i.av, ptr %i.ax, align 8, !tbaa !53
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store i64 %i.aw, ptr %.sroa.410.0..sroa_idx, align 8, !tbaa !53
  br label %bb.i

bb.g:                                             ; preds = %_ZNK6duckdb15SelectionVector9get_indexEm.exit
  %i.ay = load ptr, ptr %5, align 8, !tbaa !238   ; 2 uses
  %.not.i35 = icmp eq ptr %i.ay, null
  br i1 %.not.i35, label %bb.h, label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

bb.h:                                             ; preds = %bb.g
  %i.az = load i64, ptr %i.d, align 8, !tbaa !263
  call void @_ZN6duckdb21TemplatedValidityMaskImE10InitializeEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %i.az)
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !238
  br label %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit

_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit: ; preds = %bb.g, %bb.h
  %i.ba = phi ptr [ %.pre.i, %bb.h ], [ %i.ay, %bb.g ]
  %i.bb = lshr i64 %.040, 6
  %i.bc = and i64 %.040, 63
  %i.bd = shl nuw i64 1, %i.bc
  %i.be = xor i64 %i.bd, -1
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.bb ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !53
  %i.bh = and i64 %i.bg, %i.be
  store i64 %i.bh, ptr %i.bf, align 8, !tbaa !53
  br label %bb.i

bb.i:                                             ; preds = %_ZN6duckdb21TemplatedValidityMaskImE10SetInvalidEm.exit, %bb.f
  %i.bi = add nuw i64 %.040, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bi, %2
  br i1 %exitcond.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit, !llvm.loop !2069

_ZNK6duckdb15SelectionVector9get_indexEm.exit37:  ; preds = %.lr.ph42, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37
  %.03341 = phi i64 [ %i.bs, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37 ], [ 0, %.lr.ph42 ] ; 3 uses
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.03341
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !3
  %i.bl = zext i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bl ; 2 uses
  %.sroa.0.0.copyload = load i64, ptr %i.bm, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !54
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %.sroa.0.0.copyload, ptr %8, align 8
  store ptr %.sroa.2.0.copyload, ptr %i.aa, align 8
  %i.bn = load ptr, ptr %6, align 8, !tbaa !90
  %i.bo = call { i64, i64 } %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %8), !inline_history !2064 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  %i.br = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %.03341 ; 2 uses
  store i64 %i.bp, ptr %i.br, align 8, !tbaa !53
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store i64 %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !53
  %i.bs = add nuw i64 %.03341, 1                  ; 2 uses
  %exitcond49.not = icmp eq i64 %i.bs, %2
  br i1 %exitcond49.not, label %.loopexit, label %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, !llvm.loop !2070

.loopexit:                                        ; preds = %bb.i, %bb.e, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37, %_ZNK6duckdb15SelectionVector9get_indexEm.exit37.us, %.preheader38, %.preheader
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb12Deserializer4ReadINS_6vectorINS_11LogicalTypeELb1ESaIS3_EEEEENSt9enable_ifIXsr9is_vectorIT_EE5valueES7_E4typeEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::vector") align 8 %0, ptr noundef nonnull align 8 dereferenceable(632) %1) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.duckdb::LogicalType", align 8 ; 9 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !92
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = invoke noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.preheader unwind label %bb.b ; 2 uses

.preheader:                                       ; preds = %bb.a
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit, %.preheader
  %i.g = load ptr, ptr %1, align 8, !tbaa !92
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %i.i = load ptr, ptr %i.h, align 8
  invoke void %i.i(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %bb.j unwind label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.c:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit
  %.013 = phi i64 [ 0, %.lr.ph ], [ %i.v, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.k = load ptr, ptr %1, align 8, !tbaa !92, !noalias !2071
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.m = load ptr, ptr %i.l, align 8, !noalias !2071
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc unwind label %bb.g, !inline_history !2074

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::LogicalType") align 8 %2, ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %.noexc11 unwind label %bb.g

.noexc11:                                         ; preds = %.noexc
  %i.n = load ptr, ptr %1, align 8, !tbaa !92, !noalias !2071
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  invoke void %i.p(ptr noundef nonnull align 8 dereferenceable(632) %1)
          to label %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit unwind label %bb.d

bb.d:                                             ; preds = %.noexc11
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  br label %.body

_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit: ; preds = %.noexc11
  %i.r = load ptr, ptr %i.e, align 8, !tbaa !12   ; 3 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !11
  %.not.i.i = icmp eq ptr %i.r, %i.s
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.u, ptr %i.e, align 8, !tbaa !12
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit

bb.f:                                             ; preds = %_ZN6duckdb12Deserializer4ReadINS_11LogicalTypeEEENSt9enable_ifIXsr15has_deserializeIT_EE5valueES4_E4typeEv.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit unwind label %bb.h

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backEOS1_.exit: ; preds = %bb.e, %bb.f
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.v = add nuw i64 %.013, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.v, %i.d
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !2075

bb.g:                                             ; preds = %.noexc, %bb.c
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %2) #21
  br label %.body

.body:                                            ; preds = %bb.g, %bb.d, %bb.h
  %.pn = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.w, %bb.g ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  br label %bb.i

bb.i:                                             ; preds = %.body, %bb.b
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.j, %bb.b ]
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #21
  resume { ptr, i32 } %.pn.pn

bb.j:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !12   ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !7      ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775800
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.1) #23
  unreachable

_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 24                  ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = tail call i64 @llvm.umin.i64(i64 %i.i, i64 384307168202282325) ; 2 uses
  %i.k = ptrtoint ptr %1 to i64
  %i.l = sub i64 %i.k, %i.e
  %.not.i = icmp ne i64 %i.i, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.m = mul nuw nsw i64 %i.j, 24
  %i.n = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.m) #22 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.o, ptr noundef nonnull align 8 dereferenceable(24) %2) #21
  %.not10.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.q, %.lr.ph.i.i.i.i ], [ %i.n, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.p, %.lr.ph.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i) #21
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i) #21
  %i.p = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.p, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !2076

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.n, %_ZNKSt6vectorIN6duckdb11LogicalTypeESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.q, %.lr.ph.i.i.i.i ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 24 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.t, %.lr.ph.i.i.i.i17 ], [ %i.r, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 2 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.s, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 3 uses
  tail call void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24) %.012.i.i.i.i18, ptr noundef nonnull align 8 dereferenceable(24) %.0911.i.i.i.i19) #21
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.0911.i.i.i.i19) #21
  %i.s = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.s, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !2076

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.r, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.t, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %0, align 8, !tbaa !7
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !12
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.n, i64 %i.j
  store ptr %i.v, ptr %i.u, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb11LogicalTypeC1EOS0_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @_ZN6duckdb11LogicalType11DeserializeERNS_12DeserializerE(ptr dead_on_unwind writable sret(%"struct.duckdb::LogicalType") align 8, ptr noundef nonnull align 8 dereferenceable(632)) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !12   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.d, %.lr.ph.i.i ], [ %i.a, %bb.a ] ; 2 uses
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i) #21
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !25

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split: ; preds = %.lr.ph.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !7
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.e = phi ptr [ %.pr, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit
  tail call void @_ZdlPv(ptr noundef nonnull %i.e) #25
  br label %_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt12_Vector_baseIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZN6duckdb12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(184) %1, ptr noundef nonnull align 8 dereferenceable(104) %2) #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::optional_idx", align 8 ; 8 uses
  %4 = alloca %"struct.duckdb::UnifiedVectorFormat", align 8 ; 12 uses
  %5 = alloca %"class.duckdb::optional_ptr.207", align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #21
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !2077
  store ptr %i.b, ptr %5, align 8
  call void @_ZNK6duckdb12optional_ptrINS_18FunctionLocalStateELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %i.c = load ptr, ptr %5, align 8, !tbaa !2078
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #21
  call void @_ZN6duckdb14ArenaAllocator5ResetEv(ptr noundef nonnull align 8 dereferenceable(72) %i.d)
  %i.e = call noundef nonnull align 8 dereferenceable(104) ptr @_ZN6duckdb6vectorINS_6VectorELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 0) ; 15 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !223  ; 12 uses
  %i.h = load i8, ptr %i.e, align 8, !tbaa !237
  switch i8 %i.h, label %bb.i [
    i8 2, label %bb.b
    i8 0, label %bb.d
    i8 3, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 2)
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !207  ; 2 uses
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !207
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !238  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.n, align 8, !tbaa !53
  %i.p = trunc i64 %i.o to i1
  br i1 %i.p, label %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i, label %bb.c

bb.c:                                             ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext true)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIhNS_8string_tEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvSA_SA_mT1_NS_14FunctionErrorsE.exit

_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.thread.i.i: ; preds = %_ZN6duckdb14ConstantVector6IsNullERKNS_6VectorE.exit.i.i, %bb.b
  call void @_ZN6duckdb14ConstantVector7SetNullERNS_6VectorEb(ptr noundef nonnull align 8 dereferenceable(104) %2, i1 noundef zeroext false)
  %i.q = load i8, ptr %i.l, align 1, !tbaa !54    ; 2 uses
  %i.r = icmp ne i8 %i.q, 0
  %spec.select.i.i.i.i.i.i = call i8 @llvm.usub.sat.i8(i8 %i.q, i8 1)
  %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i = zext i8 %spec.select.i.i.i.i.i.i to i64
  %.sroa.0.sroa.3.0.insert.shift.i.i.i.i.i.i = shl nuw nsw i64 %.sroa.0.sroa.3.0.insert.ext.i.i.i.i.i.i, 32
  %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i = zext i1 %i.r to i64
  %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i = or disjoint i64 %.sroa.0.sroa.3.0.insert.shift.i.i.i.i.i.i, %.sroa.0.sroa.0.0.insert.ext.i.i.i.i.i.i
  store i64 %.sroa.0.sroa.0.0.insert.insert.i.i.i.i.i.i, ptr %i.j, align 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !54
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIhNS_8string_tEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvSA_SA_mT1_NS_14FunctionErrorsE.exit

bb.d:                                             ; preds = %bb.a
  call void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !207
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  call fastcc void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIhNS_8string_tENS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvPKT_PT0_mRNS_12ValidityMaskESL_Pvb(ptr noundef %i.v, ptr noundef %i.t, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %i.x)
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIhNS_8string_tEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvSA_SA_mT1_NS_14FunctionErrorsE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #21
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 88 ; 2 uses
  %i.z = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 152
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !239 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ab, -1
  br i1 %.not.i.i.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i, label %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i: ; preds = %bb.e
  store i64 %i.ab, ptr %3, align 8
  br label %bb.f

_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i: ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.ad = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac)
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 72
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.ae, align 8, !tbaa !53 ; 2 uses
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %3, align 8
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -1
  br i1 %.not6.i.i, label %.thread4.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.thread.i.i
  %i.af = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %i.ag = shl i64 %i.af, 1
  %.not.i.i = icmp ugt i64 %i.ag, %i.g
  br i1 %.not.i.i, label %.thread4.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.ah = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.y) ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 48 ; 3 uses
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !237
  %.not57.i.i = icmp eq i8 %i.aj, 0
  br i1 %.not57.i.i, label %bb.h, label %.thread4.i.i

.thread4.i.i:                                     ; preds = %bb.g, %bb.f, %_ZN6duckdb16DictionaryVector14DictionarySizeERKNS_6VectorE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !207
  call void @_ZN6duckdb14ConstantVector16VerifyVectorTypeIhEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ai)
  %i.am = getelementptr inbounds nuw i8, ptr %i.ah, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !207
  %i.ao = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.ai)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  call void @_ZN6duckdb10FlatVector16VerifyFlatVectorERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 40
  call fastcc void @_ZN6duckdb13UnaryExecutor11ExecuteFlatIhNS_8string_tENS_18UnaryLambdaWrapperEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvPKT_PT0_mRNS_12ValidityMaskESL_Pvb(ptr noundef %i.an, ptr noundef %i.al, i64 noundef %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull align 8 dereferenceable(32) %i.aq)
  call void @_ZN6duckdb16DictionaryVector16VerifyDictionaryERKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %i.e)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.as = call noundef ptr @_ZNK6duckdb10shared_ptrINS_12VectorBufferELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ar)
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 48
  %i.au = call noundef i64 @_ZNK6duckdb12optional_idx8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @_ZN6duckdb6Vector10DictionaryERS0_mRKNS_15SelectionVectorEm(ptr noundef nonnull align 8 dereferenceable(104) %2, ptr noundef nonnull align 8 dereferenceable(104) %2, i64 noundef %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #21
  br label %_ZN6duckdb13UnaryExecutor7ExecuteIhNS_8string_tEZNS_12_GLOBAL__N_124StringDecompressFunctionIhEEvRNS_9DataChunkERNS_15ExpressionStateERNS_6VectorEEUlRKhE_EEvSA_SA_mT1_NS_14FunctionErrorsE.exit

bb.i:                                             ; preds = %.thread4.i.i, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #21
  call void @_ZN6duckdb19UnifiedVectorFormatC1Ev(ptr noundef nonnull align 8 dereferenceable(73) %4)
  invoke void @_ZN6duckdb6Vector15ToUnifiedFormatEmRNS_19UnifiedVectorFormatE(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i64 noundef %i.g, ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.j unwind label %bb.ai

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb6Vector13SetVectorTypeENS_10VectorTypeE(ptr noundef nonnull align 8 dereferenceable(104) %2, i8 noundef zeroext 0)
          to label %bb.k unwind label %bb.ai

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb14ConstantVector16VerifyVectorTypeINS_8string_tEEEvRKNS_6VectorE(ptr noundef nonnull align 8 dereferenceable(104) %2)
          to label %bb.l unwind label %bb.aj

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !207 ; 5 uses
  invoke void @_ZNK6duckdb19UnifiedVectorFormat16VerifyVectorTypeIhEEvv(ptr noundef nonnull align 8 dereferenceable(73) %4)
          to label %bb.m unwind label %.loopexit.split-lp.loopexit.split-lp.i.i
end_hunk_2
