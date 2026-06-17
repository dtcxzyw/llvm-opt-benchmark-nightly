inline.NumInlined: 2875
inline.NumDeleted: 1096
begin_hunk_0_@_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_:bb.a
bb.a:
  %3 = alloca %"class.std::vector.851", align 8   ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25, !noalias !409
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false), !noalias !409
  invoke void @_ZN6duckdb9Exception25ConstructMessageRecursiveINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJEEES7_RKS7_RSt6vectorINS_20ExceptionFormatValueESaISB_EERKT_DpOT0_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !279, !noalias !409 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !282, !noalias !409 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.h, %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i ], [ %i.a, %bb.b ] ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !7    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 48
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  call void @_ZdlPv(ptr noundef %i.e) #27
  br label %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, %i.c
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !283

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20ExceptionFormatValueEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !279, !noalias !409
  br label %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.b
  %i.i = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.a, %bb.b ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.i) #27
  br label %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit

common.resume:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.j, %bb.d ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6 ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb20ExceptionFormatValueESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !409
  br label %common.resume

_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20ExceptionFormatValueES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25, !noalias !409
  invoke void @_ZN6duckdb21InvalidInputExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.k = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  ret void

bb.f:                                             ; preds = %_ZN6duckdb9Exception16ConstructMessageIJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEES7_RKS7_DpRKT_.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.f
  call void @_ZdlPv(ptr noundef %i.o) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27DefaultSecretStorageSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13SecretManagerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %3, ptr noundef nonnull align 8 dereferenceable(64) %2)
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %3, align 8, !tbaa !7      ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.j) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %i.i
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27DefaultSecretStorageSetting11ResetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13SecretManagerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !217
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(344) %i.b)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb27DefaultSecretStorageSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %i.a = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_13SecretManagerESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.b) ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !217
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.f = load ptr, ptr %i.e, align 8
  call void %i.f(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %2, ptr noundef nonnull align 8 dereferenceable(344) %i.c)
  invoke void @_ZN6duckdb5ValueC1ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.g) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3: ; preds = %bb.c
  call void @_ZdlPv(ptr noundef %i.k) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit5: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i3
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33DisabledCompressionMethodsSetting9SetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigERKNS_5ValueE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
._crit_edge.i.i:
  %3 = alloca %"class.duckdb::vector.42", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %6 = alloca %"class.duckdb::vector.521", align 8 ; 10 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %9 = alloca %"class.std::allocator", align 1    ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  call void @_ZNK6duckdb5Value8ToStringB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(64) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 4 uses
  store ptr %i.a, ptr %5, align 8, !tbaa !220
  store i8 44, ptr %i.a, align 8, !tbaa !222
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.b, align 8, !tbaa !221
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 17
  store i8 0, ptr %i.c, align 1, !tbaa !222
  invoke void @_ZN6duckdb10StringUtil5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.42") align 8 %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.a unwind label %bb.b

bb.a:                                             ; preds = %._crit_edge.i.i
  %i.d = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  call void @_ZdlPv(ptr noundef %i.d) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.f = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.f) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.i = load ptr, ptr %3, align 8, !tbaa !350    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !350  ; 2 uses
  %.not63 = icmp eq ptr %i.i, %i.k
  br i1 %.not63, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %5, align 8, !tbaa !7      ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.a
  br i1 %i.r, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32: ; preds = %bb.b
  call void @_ZdlPv(ptr noundef %i.q) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i32
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  %i.s = load ptr, ptr %4, align 8, !tbaa !7      ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34
  call void @_ZdlPv(ptr noundef %i.s) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit34, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %bb.ab

bb.c:                                             ; preds = %.lr.ph, %bb.t
  %i.v = phi ptr [ null, %.lr.ph ], [ %10, %bb.t ] ; 4 uses
  %i.w = phi ptr [ null, %.lr.ph ], [ %11, %bb.t ] ; 5 uses
  %i.x = phi ptr [ null, %.lr.ph ], [ %12, %bb.t ] ; 9 uses
  %.sroa.056.064 = phi ptr [ %i.i, %.lr.ph ], [ %i.be, %bb.t ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  invoke void @_ZN6duckdb10StringUtil5LowerERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %7, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.056.064)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.y = load i64, ptr %i.l, align 8, !tbaa !221
  switch i64 %i.y, label %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge [
    i64 0, label %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit
    i64 4, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  ]

._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge: ; preds = %bb.e
  %.pre = load ptr, ptr %7, align 8, !tbaa !7
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

bb.g:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.e
  %i.ab = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1
  %i.ad = icmp ne i32 %i.ac, 1701736302
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.h, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %.not.i.i.i = icmp eq ptr %i.w, %i.x
  br i1 %.not.i.i.i, label %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit.jt2, label %_ZSt8_DestroyIPN6duckdb15CompressionTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPN6duckdb15CompressionTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i: ; preds = %bb.h
  store ptr %i.x, ptr %i.m, align 8, !tbaa !412
  br label %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit.jt2

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread: ; preds = %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.ag = phi ptr [ %.pre, %._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread_crit_edge ], [ %i.ab, %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit ]
  %i.ah = invoke noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_PKc(ptr noundef %i.ag)
          to label %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %.loopexit ; 3 uses

_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread
  switch i8 %i.ah, label %bb.n [
    i8 0, label %bb.i
    i8 2, label %bb.i
    i8 14, label %bb.i
    i8 1, label %bb.i
  ]

.loopexit:                                        ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit.thread, %_ZNKSt6vectorIN6duckdb15CompressionTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

.loopexit.split-lp:                               ; preds = %bb.q
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.i:                                             ; preds = %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %i.ai = call ptr @__cxa_allocate_exception(i64 16) #25 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull @.str.54, ptr noundef nonnull align 1 dereferenceable(1) %9)
          to label %bb.j unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN6duckdb21InvalidInputExceptionC2IJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEERKS7_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.k unwind label %bb.l

bb.k:                                             ; preds = %bb.j
  invoke void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTIN6duckdb21InvalidInputExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #26
          to label %bb.ac unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread: ; preds = %bb.i
  %i.aj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br label %bb.m

bb.l:                                             ; preds = %bb.k, %bb.j
  %.0 = phi i1 [ false, %bb.k ], [ true, %bb.j ]  ; 2 uses
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.al = load ptr, ptr %8, align 8, !tbaa !7     ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.an = icmp eq ptr %i.al, %i.am
  br i1 %i.an, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39: ; preds = %bb.l
  call void @_ZdlPv(ptr noundef %i.al) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.m, label %bb.u

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  br i1 %.0, label %bb.m, label %bb.u

bb.m:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41
  %.pn2062 = phi { ptr, i32 } [ %i.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41.thread ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ]
  call void @__cxa_free_exception(ptr %i.ai) #25
  br label %bb.u

bb.n:                                             ; preds = %_ZN6duckdb8EnumUtil10FromStringINS_15CompressionTypeEEET_RKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  %.not.i = icmp eq ptr %i.w, %i.v
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i8 %i.ah, ptr %i.w, align 1, !tbaa !414
  %i.ao = getelementptr inbounds nuw i8, ptr %i.w, i64 1 ; 2 uses
  store ptr %i.ao, ptr %i.m, align 8, !tbaa !412
  br label %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit

bb.p:                                             ; preds = %bb.n
  %i.ap = ptrtoint ptr %i.v to i64
  %i.aq = ptrtoint ptr %i.x to i64
  %i.ar = sub i64 %i.ap, %i.aq                    ; 7 uses
  %i.as = icmp eq i64 %i.ar, 9223372036854775807
  br i1 %i.as, label %bb.q, label %_ZNKSt6vectorIN6duckdb15CompressionTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.106) #26
          to label %.noexc43 unwind label %.loopexit.split-lp

.noexc43:                                         ; preds = %bb.q
  unreachable

_ZNKSt6vectorIN6duckdb15CompressionTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.at = add i64 %.sroa.speculated.i.i.i, %i.ar  ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.ar
  %i.av = call i64 @llvm.umin.i64(i64 %i.at, i64 9223372036854775807)
  %i.aw = select i1 %i.au, i64 9223372036854775807, i64 %i.av ; 3 uses
  %.not.i.i.i42 = icmp ne i64 %i.aw, 0
  call void @llvm.assume(i1 %.not.i.i.i42)
  %i.ax = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aw) #30
          to label %.noexc44 unwind label %.loopexit ; 5 uses

.noexc44:                                         ; preds = %_ZNKSt6vectorIN6duckdb15CompressionTypeESaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.ar ; 2 uses
  store i8 %i.ah, ptr %i.ay, align 1, !tbaa !414
  %i.az = icmp sgt i64 %i.ar, 0
  br i1 %i.az, label %bb.r, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.r:                                             ; preds = %.noexc44
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ax, ptr align 1 %i.x, i64 %i.ar, i1 false)
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.r, %.noexc44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 1 ; 2 uses
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.s

bb.s:                                             ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.x) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.ax, ptr %6, align 8, !tbaa !416
  store ptr %i.ba, ptr %i.m, align 8, !tbaa !412
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw ; 2 uses
  store ptr %i.bb, ptr %i.n, align 8, !tbaa !417
  br label %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit

_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit: ; preds = %bb.o, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.e
  %10 = phi ptr [ %i.v, %bb.o ], [ %i.v, %bb.e ], [ %i.bb, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %11 = phi ptr [ %i.ao, %bb.o ], [ %i.w, %bb.e ], [ %i.ba, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %12 = phi ptr [ %i.x, %bb.o ], [ %i.x, %bb.e ], [ %i.ax, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ]
  %i.bc = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bd = icmp eq ptr %i.bc, %i.o
  br i1 %i.bd, label %bb.t, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45

_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit.jt2: ; preds = %bb.h, %_ZSt8_DestroyIPN6duckdb15CompressionTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i
  %13 = load ptr, ptr %7, align 8, !tbaa !7       ; 2 uses
  %14 = icmp eq ptr %13, %i.o
  br i1 %14, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.jt2, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45: ; preds = %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit
  call void @_ZdlPv(ptr noundef %i.bc) #27
  br label %bb.t

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47: ; preds = %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit.jt2
  call void @_ZdlPv(ptr noundef %13) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.jt2

bb.t:                                             ; preds = %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i45
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.056.064, i64 32 ; 2 uses
  %.not = icmp eq ptr %i.be, %i.k
  br i1 %.not, label %._crit_edge, label %bb.c

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.jt2: ; preds = %_ZN6duckdb6vectorINS_15CompressionTypeELb1ESaIS1_EE5clearEv.exit.jt2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %._crit_edge

bb.u:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39, %bb.g
  %.pn22.pn = phi { ptr, i32 } [ %i.aa, %bb.g ], [ %i.ak, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i39 ], [ %.pn2062, %bb.m ], [ %i.ak, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit41 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.bf = load ptr, ptr %7, align 8, !tbaa !7     ; 2 uses
  %i.bg = icmp eq ptr %i.bf, %i.o
  br i1 %i.bg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.bf) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48, %bb.f
  %.pn22.pn.pn = phi { ptr, i32 } [ %i.z, %bb.f ], [ %.pn22.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i48 ], [ %.pn22.pn, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.z

._crit_edge:                                      ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit47.jt2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit31
  invoke void @_ZN6duckdb8DBConfig29SetDisabledCompressionMethodsERKNS_6vectorINS_15CompressionTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %._crit_edge
  %i.bh = load ptr, ptr %6, align 8, !tbaa !416   ; 2 uses
  %.not.i.i.i51 = icmp eq ptr %i.bh, null
  br i1 %.not.i.i.i51, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_ZdlPv(ptr noundef nonnull %i.bh) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit: ; preds = %bb.v, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  %i.bi = load ptr, ptr %3, align 8, !tbaa !254   ; 3 uses
  %i.bj = load ptr, ptr %i.j, align 8, !tbaa !255 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.bi, %i.bj
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.bn, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.bi, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.bk = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  call void @_ZdlPv(ptr noundef %i.bk) #27
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i52 = icmp eq ptr %i.bn, %i.bj
  br i1 %.not.i.i.i52, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !256

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %3, align 8, !tbaa !254
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit
  %i.bo = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.bi, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.bo) #27
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  ret void

bb.y:                                             ; preds = %._crit_edge
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %.pre65 = load ptr, ptr %6, align 8, !tbaa !416
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  %i.bq = phi ptr [ %.pre65, %bb.y ], [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ] ; 2 uses
  %.pn26 = phi { ptr, i32 } [ %i.bp, %bb.y ], [ %.pn22.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50 ]
  %.not.i.i.i53 = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit54, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  call void @_ZdlPv(ptr noundef nonnull %i.bq) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit54

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit54: ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #25
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit54, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37
  %.pn26.pn = phi { ptr, i32 } [ %.pn26, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit54 ], [ %i.p, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit37 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  resume { ptr, i32 } %.pn26.pn

bb.ac:                                            ; preds = %bb.k
  unreachable
}

declare void @_ZN6duckdb10StringUtil5SplitERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES8_(ptr dead_on_unwind writable sret(%"class.duckdb::vector.42") align 8, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb10StringUtil4TrimERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN6duckdb8DBConfig29SetDisabledCompressionMethodsERKNS_6vectorINS_15CompressionTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(1360), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33DisabledCompressionMethodsSetting11ResetGlobalEPNS_16DatabaseInstanceERNS_8DBConfigE(ptr nofree noundef readnone captures(none) %0, ptr noundef nonnull align 8 dereferenceable(1360) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.duckdb::vector.521", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb8DBConfig29SetDisabledCompressionMethodsERKNS_6vectorINS_15CompressionTypeELb1ESaIS2_EEE(ptr noundef nonnull align 8 dereferenceable(1360) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %2, align 8, !tbaa !416    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @_ZdlPv(ptr noundef nonnull %i.a) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit: ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = load ptr, ptr %2, align 8, !tbaa !416    ; 2 uses
  %.not.i.i.i2 = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i2, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit3, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @_ZdlPv(ptr noundef nonnull %i.c) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit3

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit3: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb33DisabledCompressionMethodsSetting10GetSettingERKNS_13ClientContextE(ptr dead_on_unwind noalias writable sret(%"class.duckdb::Value") align 8 %0, ptr noundef nonnull align 8 dereferenceable(512) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %3 = alloca %"class.duckdb::vector.521", align 8 ; 8 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %i.b = tail call noundef nonnull align 8 dereferenceable(1360) ptr @_ZN6duckdb8DBConfig9GetConfigERKNS_13ClientContextE(ptr noundef nonnull align 8 dereferenceable(512) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  store ptr %i.c, ptr %2, align 8, !tbaa !220
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  store i64 0, ptr %i.d, align 8, !tbaa !221
  store i8 0, ptr %i.c, align 8, !tbaa !222
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  invoke void @_ZNK6duckdb8DBConfig29GetDisabledCompressionMethodsEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.521") align 8 %3, ptr noundef nonnull align 8 dereferenceable(1360) %i.b)
          to label %bb.b unwind label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %3, align 8, !tbaa !319    ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !319  ; 2 uses
  %.not44 = icmp eq ptr %i.e, %i.g
  br i1 %.not44, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.g

._crit_edge.loopexit:                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pre = load ptr, ptr %3, align 8, !tbaa !416
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.j = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.e, %bb.b ] ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  call void @_ZdlPv(ptr noundef nonnull %i.j) #27
  br label %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 5 uses
  store ptr %i.k, ptr %5, align 8, !tbaa !220
  %i.l = load ptr, ptr %2, align 8, !tbaa !7      ; 2 uses
  %i.m = load i64, ptr %i.d, align 8, !tbaa !221  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.m, ptr %i.a, align 8, !tbaa !267
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.q     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.o, ptr %5, align 8, !tbaa !7
  %i.p = load i64, ptr %i.a, align 8, !tbaa !267
  store i64 %i.p, ptr %i.k, align 8, !tbaa !222
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit
  %i.q = phi ptr [ %i.o, %.noexc ], [ %i.k, %_ZNSt6vectorIN6duckdb15CompressionTypeESaIS1_EED2Ev.exit ] ; 2 uses
  switch i64 %i.m, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.o
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !222
end_hunk_0
