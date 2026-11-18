Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/velox/original/TConcurrentClientSyncInfo?download=true
inline.NumInlined: 480
inline.NumDeleted: 237
begin_hunk_0_@_ZN6apache6thrift11concurrency5MutexD2Ev:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !101
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !143
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22, !inline_history !143
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency5Mutex4implELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency5Mutex4implELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !103

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #22
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency5Mutex4implELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift11concurrency5Mutex4implELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorISt10shared_ptrIN6apache6thrift11concurrency7MonitorEESaIS5_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !147 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !88     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !89   ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.u, %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !91   ; 8 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i.i.i, label %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.g = load atomic i64, ptr %i.f acquire, align 8 ; 2 uses
  %i.h = icmp eq i64 %i.g, 4294967297
  %i.i = trunc i64 %i.g to i32                    ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.f, align 8, !tbaa !100
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  store i32 0, ptr %i.j, align 4, !tbaa !101
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !145
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22, !inline_history !145
  br label %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i

bb.d:                                             ; preds = %bb.b
  %i.q = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i.i.i.i = icmp eq i8 %i.q, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %i.i, -1
  store i32 %i.r, ptr %i.f, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.s = atomicrmw volatile add ptr %i.f, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.i, %bb.e ], [ %i.s, %bb.f ]
  %i.t = icmp eq i32 %.0.i.i.i.i.i.i.i, 1
  br i1 %i.t, label %bb.g, label %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i, !prof !103

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.e) #22
  br label %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i

_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i: ; preds = %bb.g, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i.i, %bb.c, %.lr.ph.i.i
  %i.u = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16 ; 2 uses
  %.not.i.i = icmp eq ptr %i.u, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !146

_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt10shared_ptrIN6apache6thrift11concurrency7MonitorEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !88
  br label %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exit

_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.v = phi ptr [ %.pr, %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.v, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt10shared_ptrIN6apache6thrift11concurrency7MonitorEESaIS5_EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !87
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = ptrtoint ptr %i.v to i64
  %i.aa = sub i64 %i.y, %i.z
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef %i.aa) #21
  br label %_ZNSt12_Vector_baseISt10shared_ptrIN6apache6thrift11concurrency7MonitorEESaIS5_EED2Ev.exit

_ZNSt12_Vector_baseISt10shared_ptrIN6apache6thrift11concurrency7MonitorEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt10shared_ptrIN6apache6thrift11concurrency7MonitorEES5_EvT_S7_RSaIT0_E.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !guid !148 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !104
  invoke void @_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE8_M_eraseEPSt13_Rb_tree_nodeIS8_E(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %i.b)
          to label %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EED2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #23
  unreachable

_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EED2Ev.exit: ; preds = %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6apache6thrift5async25TConcurrentClientSyncInfo10getPendingERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERNS0_8protocol12TMessageTypeERi(ptr noundef nonnull align 8 dereferenceable(204) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %2, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) %3) local_unnamed_addr #0 align 2 !guid !149 {
bb.a:
  %i.a = load volatile i8, ptr %0, align 8, !tbaa !76, !range !105, !noundef !106
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo20throwDeadConnection_Ev(ptr nonnull align 8 poison)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 161
  store i8 0, ptr %i.c, align 1, !tbaa !81
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !tbaa !80, !range !105, !noundef !106
  %i.f = trunc nuw i8 %i.e to i1                  ; 2 uses
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i8 0, ptr %i.d, align 8, !tbaa !80
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 164
  %i.h = load i32, ptr %i.g, align 4, !tbaa !82
  store i32 %i.h, ptr %3, align 4, !tbaa !102
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.k = load i32, ptr %i.j, align 8, !tbaa !86
  store i32 %i.k, ptr %2, align 4, !tbaa !150
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  ret i1 %i.f
}

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo20throwDeadConnection_Ev(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !151 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 48) #22 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 67, ptr %i.b, align 8, !tbaa !107
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 3 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8, !tbaa !96
  %i.f = load i64, ptr %i.b, align 8, !tbaa !107  ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(67) %i.e, ptr noundef nonnull align 1 dereferenceable(67) @.str.1, i64 67, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.f
  store i8 0, ptr %i.h, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift10TExceptionE, i64 16), ptr %i.c, align 8, !tbaa !98
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.j, ptr %i.i, align 8, !tbaa !83
  %i.k = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.l, ptr %i.a, align 8, !tbaa !107
  %i.m = icmp ugt i64 %i.l, 15
  br i1 %i.m, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.n = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %.body ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.n, ptr %i.i, align 8, !tbaa !96
  %i.o = load i64, ptr %i.a, align 8, !tbaa !107
  store i64 %i.o, ptr %i.j, align 8, !tbaa !85
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc
  %i.p = phi ptr [ %i.n, %.noexc.i.i ], [ %i.j, %.noexc ] ; 2 uses
  switch i64 %i.l, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i.i
  %i.q = load i8, ptr %i.k, align 1, !tbaa !85
  store i8 %i.q, ptr %i.p, align 1, !tbaa !85
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.p, ptr align 1 %i.k, i64 %i.l, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.r, ptr %i.s, align 8, !tbaa !84
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !96
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift9transport19TTransportExceptionE, i64 16), ptr %i.c, align 8, !tbaa !98
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 1, ptr %i.v, align 8, !tbaa !154
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6apache6thrift9transport19TTransportExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #24
          to label %bb.e unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %.noexc.i.i.i
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(44) %i.c) #22
  %i.y = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.d
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  %i.aa = load i64, ptr %i.d, align 8, !tbaa !85
  %i.ab = add i64 %i.aa, 1
  call void @_ZdlPvm(ptr noundef %i.y, i64 noundef %i.ab) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %i.ae = icmp eq ptr %i.ad, %i.d
  br i1 %i.ae, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  %i.af = load i64, ptr %i.d, align 8, !tbaa !85
  %i.ag = add i64 %i.af, 1
  call void @_ZdlPvm(ptr noundef %i.ad, i64 noundef %i.ag) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn8 = phi { ptr, i32 } [ %i.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.x, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__cxa_free_exception(ptr %i.c) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7 = phi { ptr, i32 } [ %i.ac, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15 ], [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo13updatePendingERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS0_8protocol12TMessageTypeEi(ptr noundef nonnull align 8 dereferenceable(204) initializes((160, 161), (164, 168)) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !155 {
bb.a:
  %4 = alloca %"class.std::shared_ptr.6", align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i8 1, ptr %i.a, align 8, !tbaa !80
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 164
  store i32 %3, ptr %i.b, align 4, !tbaa !82
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 200
  store i32 %2, ptr %i.d, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit unwind label %bb.t, !inline_history !1

_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit: ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !104  ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %.1.i.i.i, %.lr.ph.i.i.i ], [ %i.j, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit ] ; 3 uses
  %.0811.i.i.i = phi ptr [ %.19.i.i.i, %.lr.ph.i.i.i ], [ %i.k, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.m = load i32, ptr %i.l, align 4, !tbaa !102
  %i.n = icmp slt i32 %i.m, %3                    ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !2

_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i: ; preds = %.lr.ph.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.k
  br i1 %i.o, label %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread, label %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit

_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.q = load i32, ptr %i.p, align 4, !tbaa !102
  %i.r = icmp slt i32 %3, %i.q
  br i1 %i.r, label %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread, label %bb.d

_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread: ; preds = %_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE14_M_lower_boundEPSt13_Rb_tree_nodeIS8_EPSt18_Rb_tree_node_baseRS1_.exit.i.i, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit, %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit
  invoke void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo14throwBadSeqId_Ev(ptr nonnull align 8 poison)
          to label %.unreachable unwind label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread
  %i.s = landingpad { ptr, i32 }
          cleanup
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #23
  unreachable

.unreachable:                                     ; preds = %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit.thread
  unreachable

bb.d:                                             ; preds = %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE4findERS9_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !94
  store ptr %i.z, ptr %4, align 8, !tbaa !94
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !91 ; 11 uses
  %.not.i.i.i9 = icmp eq ptr %i.ac, null
  br i1 %.not.i.i.i9, label %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ae = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i.i = icmp eq i8 %i.ae, 0
  br i1 %.not.i.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.e
  %i.af = load i32, ptr %i.ad, align 4, !tbaa !102
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.ad, align 4, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.e
  %i.ah = atomicrmw volatile add ptr %i.ad, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.aj = load atomic i64, ptr %i.ai acquire, align 8 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 4294967297
  %i.al = trunc i64 %i.aj to i32                  ; 2 uses
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store i32 0, ptr %i.ai, align 8, !tbaa !100
  %i.am = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.am, align 4, !tbaa !101
  %i.an = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !98
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !3
  %i.aq = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.at = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i9.i.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i9.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = add nsw i32 %i.al, -1
  store i32 %i.au, ptr %i.ai, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.j:                                             ; preds = %bb.h
  %i.av = atomicrmw volatile add ptr %i.ai, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i = phi i32 [ %i.al, %bb.i ], [ %i.av, %bb.j ]
  %i.aw = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.aw, label %bb.k, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !103

bb.k:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.ac, ptr %i.aa, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit

_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.d
  %i.ax = load ptr, ptr %i.e, align 8, !tbaa !98
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 40
  %i.az = load ptr, ptr %i.ay, align 8
  invoke void %i.az(ptr noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit11 unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  tail call void @__clang_call_terminate(ptr %i.bb) #23
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit11:  ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit
  %i.bc = load ptr, ptr %4, align 8, !tbaa !94    ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !98
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 32
  %i.bf = load ptr, ptr %i.be, align 8
  invoke void %i.bf(ptr noundef nonnull align 8 dereferenceable(16) %i.bc)
          to label %bb.m unwind label %bb.t

bb.m:                                             ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit11
  %.not.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 4 uses
  %i.bh = load atomic i64, ptr %i.bg acquire, align 8 ; 2 uses
  %i.bi = icmp eq i64 %i.bh, 4294967297
  %i.bj = trunc i64 %i.bh to i32                  ; 2 uses
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i32 0, ptr %i.bg, align 8, !tbaa !100
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ac, i64 12
  store i32 0, ptr %i.bk, align 4, !tbaa !101
  %i.bl = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8
  tail call void %i.bn(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !inline_history !4
  %i.bo = load ptr, ptr %i.ac, align 8, !tbaa !98
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8
  tail call void %i.bq(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22, !inline_history !4
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.p:                                             ; preds = %bb.n
  %i.br = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i12 = icmp eq i8 %i.br, 0
  br i1 %.not.i.i.i12, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = add nsw i32 %i.bj, -1
  store i32 %i.bs, ptr %i.bg, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.r:                                             ; preds = %bb.p
  %i.bt = atomicrmw volatile add ptr %i.bg, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.r, %bb.q
  %.0.i.i.i.i = phi i32 [ %i.bj, %bb.q ], [ %i.bt, %bb.r ]
  %i.bu = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bu, label %bb.s, label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !103

bb.s:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #22
  br label %_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.m, %bb.o, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  ret void

bb.t:                                             ; preds = %bb.a, %_ZN6apache6thrift11concurrency5GuardD2Ev.exit11
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit

_ZN6apache6thrift11concurrency5GuardD2Ev.exit:    ; preds = %bb.b, %bb.t
  %.pn7 = phi { ptr, i32 } [ %i.bv, %bb.t ], [ %i.s, %bb.b ]
  call void @_ZNSt12__shared_ptrIN6apache6thrift11concurrency7MonitorELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: mustprogress noreturn uwtable
define void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo14throwBadSeqId_Ev(ptr nofree nonnull readnone align 8 captures(none) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !guid !156 {
.noexc.i:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %i.c = tail call ptr @__cxa_allocate_exception(i64 48) #22 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #22
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 6 uses
  store ptr %i.d, ptr %1, align 8, !tbaa !83
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 23, ptr %i.b, align 8, !tbaa !107
  %i.e = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.e, ptr %1, align 8, !tbaa !96
  %i.f = load i64, ptr %i.b, align 8, !tbaa !107  ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !85
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %i.e, ptr noundef nonnull align 1 dereferenceable(23) @.str, i64 23, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i64 %i.f, ptr %i.g, align 8, !tbaa !84
  %i.h = load ptr, ptr %1, align 8, !tbaa !96
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.f
  store i8 0, ptr %i.i, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift10TExceptionE, i64 16), ptr %i.c, align 8, !tbaa !98
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  store ptr %i.k, ptr %i.j, align 8, !tbaa !83
  %i.l = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.m = load i64, ptr %i.g, align 8, !tbaa !84   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.m, ptr %i.a, align 8, !tbaa !107
  %i.n = icmp ugt i64 %i.m, 15
  br i1 %i.n, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %.noexc
  %i.o = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i.i unwind label %.body ; 2 uses

.noexc.i.i:                                       ; preds = %.noexc.i.i.i
  store ptr %i.o, ptr %i.j, align 8, !tbaa !96
  %i.p = load i64, ptr %i.a, align 8, !tbaa !107
  store i64 %i.p, ptr %i.k, align 8, !tbaa !85
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i, %.noexc
  %i.q = phi ptr [ %i.o, %.noexc.i.i ], [ %i.k, %.noexc ] ; 2 uses
  switch i64 %i.m, label %bb.b [
    i64 1, label %bb.a
    i64 0, label %bb.c
  ]

bb.a:                                             ; preds = %._crit_edge.i.i.i.i
  %i.r = load i8, ptr %i.l, align 1, !tbaa !85
  store i8 %i.r, ptr %i.q, align 1, !tbaa !85
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.q, ptr align 1 %i.l, i64 %i.m, i1 false)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a, %._crit_edge.i.i.i.i
  %i.s = load i64, ptr %i.a, align 8, !tbaa !107  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.s, ptr %i.t, align 8, !tbaa !84
  %i.u = load ptr, ptr %i.j, align 8, !tbaa !96
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.s
  store i8 0, ptr %i.v, align 1, !tbaa !85
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6apache6thrift21TApplicationExceptionE, i64 16), ptr %i.c, align 8, !tbaa !98
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i32 4, ptr %i.w, align 8, !tbaa !113
  invoke void @__cxa_throw(ptr nonnull %i.c, ptr nonnull @_ZTIN6apache6thrift21TApplicationExceptionE, ptr nonnull @_ZN6apache6thrift10TExceptionD2Ev) #24
          to label %bb.e unwind label %.body.thread

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %.noexc.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body:                                            ; preds = %.noexc.i.i.i
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @_ZNSt9exceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(44) %i.c) #22
  %i.z = load ptr, ptr %1, align 8, !tbaa !96     ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.d
  br i1 %i.aa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread: ; preds = %.body
  %i.ab = load i64, ptr %i.d, align 8, !tbaa !85
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ac) #21
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

.body.thread:                                     ; preds = %bb.c
  %i.ad = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ae = load ptr, ptr %1, align 8, !tbaa !96    ; 2 uses
  %i.af = icmp eq ptr %i.ae, %i.d
  br i1 %i.af, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15: ; preds = %.body.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.body.thread
  %i.ag = load i64, ptr %i.d, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, 1
  call void @_ZdlPvm(ptr noundef %i.ae, i64 noundef %i.ah) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  br label %bb.d

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread
  %.pn8 = phi { ptr, i32 } [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.thread ], [ %i.y, %.body ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #22
  call void @__cxa_free_exception(ptr %i.c) #22
  br label %bb.d

bb.d:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn7 = phi { ptr, i32 } [ %i.ad, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread15 ], [ %.pn8, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn7

bb.e:                                             ; preds = %bb.c
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo11waitForWorkEi(ptr noundef nonnull align 8 dereferenceable(204) %0, i32 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !guid !158 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.10", align 1     ; 3 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %4 = alloca %"class.std::shared_ptr.6", align 8 ; 8 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !102
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  invoke void %i.e(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !1

_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit: ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !104  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %.not10.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not10.i.i.i.i, label %.critedge.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %.1.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.h, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit ] ; 3 uses
  %.0811.i.i.i.i = phi ptr [ %.19.i.i.i.i, %.lr.ph.i.i.i.i ], [ %i.i, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 32
  %i.k = load i32, ptr %i.j, align 4, !tbaa !102
  %i.l = icmp slt i32 %i.k, %1                    ; 2 uses
  %.19.i.i.i.i = select i1 %i.l, ptr %.0811.i.i.i.i, ptr %.012.i.i.i.i ; 6 uses
  %.1.in.v.i.i.i.i = select i1 %i.l, i64 24, i64 16
  %.1.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 %.1.in.v.i.i.i.i
  %.1.i.i.i.i = load ptr, ptr %.1.in.i.i.i.i, align 8, !tbaa !110 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %.1.i.i.i.i, null
  br i1 %.not.i.i.i.i, label %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, label %.lr.ph.i.i.i.i, !llvm.loop !2

_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i: ; preds = %.lr.ph.i.i.i.i
  %i.m = icmp eq ptr %.19.i.i.i.i, %i.i
  br i1 %i.m, label %.critedge.i, label %bb.b

bb.b:                                             ; preds = %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i
  %i.n = getelementptr inbounds nuw i8, ptr %.19.i.i.i.i, i64 32
  %i.o = load i32, ptr %i.n, align 4, !tbaa !102
  %i.p = icmp slt i32 %1, %i.o
  br i1 %i.p, label %.critedge.i, label %bb.c

.critedge.i:                                      ; preds = %bb.b, %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit
  %.08.lcssa.i.i.i11.i = phi ptr [ %.19.i.i.i.i, %bb.b ], [ %.19.i.i.i.i, %_ZNSt3mapIiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEESt4lessIiESaISt4pairIKiS5_EEE11lower_boundERS9_.exit.i ], [ %i.i, %_ZN6apache6thrift11concurrency5GuardC2ERKNS1_5MutexEl.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %i.a, ptr %2, align 8, !tbaa !115
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.q = invoke ptr @_ZNSt8_Rb_treeIiSt4pairIKiSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEESt10_Select1stIS8_ESt4lessIiESaIS8_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS1_EESJ_IJEEEEESt17_Rb_tree_iteratorIS8_ESt23_Rb_tree_const_iteratorIS8_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr %.08.lcssa.i.i.i11.i, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %.noexc unwind label %bb.m

.noexc:                                           ; preds = %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.b
  %.sroa.06.0.i = phi ptr [ %i.q, %.noexc ], [ %.19.i.i.i.i, %bb.b ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 40
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !94
  store ptr %i.s, ptr %4, align 8, !tbaa !94
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !91   ; 11 uses
  %.not.i.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %i.x = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i.i.i.i7 = icmp eq i8 %i.x, 0
  br i1 %.not.i.i.i.i7, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread: ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 4, !tbaa !102
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.w, align 4, !tbaa !102
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i: ; preds = %bb.d
  %i.aa = atomicrmw volatile add ptr %i.w, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i.i.i = load ptr, ptr %i.t, align 8, !tbaa !91 ; 8 uses
  %.not8.i.i.i = icmp eq ptr %.pr.pre.i.i.i, null
  br i1 %.not8.i.i.i, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  %i.ab = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 8 ; 4 uses
  %i.ac = load atomic i64, ptr %i.ab acquire, align 8 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 4294967297
  %i.ae = trunc i64 %i.ac to i32                  ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.ab, align 8, !tbaa !100
  %i.af = getelementptr inbounds nuw i8, ptr %.pr.pre.i.i.i, i64 12
  store i32 0, ptr %i.af, align 4, !tbaa !101
  %i.ag = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !98
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !3
  %i.aj = load ptr, ptr %.pr.pre.i.i.i, align 8, !tbaa !98
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22, !inline_history !3
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

bb.g:                                             ; preds = %bb.e
  %i.am = load i8, ptr @__libc_single_threaded, align 1, !tbaa !85
  %.not.i9.i.i.i = icmp eq i8 %i.am, 0
  br i1 %.not.i9.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = add nsw i32 %i.ae, -1
  store i32 %i.an, ptr %i.ab, align 8, !tbaa !102
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ao = atomicrmw volatile add ptr %i.ab, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i = phi i32 [ %i.ae, %bb.h ], [ %i.ao, %bb.i ]
  %i.ap = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ap, label %bb.j, label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, !prof !103

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr.pre.i.i.i) #22
  br label %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i

_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i.thread, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.f, %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE15_M_add_ref_copyEv.exit.i.i.i
  store ptr %i.v, ptr %i.t, align 8, !tbaa !91
  br label %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit

_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit: ; preds = %_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE10_M_releaseEv.exit.i.i.i, %bb.c
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  %i.as = load ptr, ptr %i.ar, align 8
  invoke void %i.as(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit.preheader unwind label %bb.k

_ZN6apache6thrift11concurrency5GuardD2Ev.exit.preheader: ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 164
  br label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit

bb.k:                                             ; preds = %_ZNSt10shared_ptrIN6apache6thrift11concurrency7MonitorEEaSERKS4_.exit
  %i.aw = landingpad { ptr, i32 }
          catch ptr null
  %i.ax = extractvalue { ptr, i32 } %i.aw, 0
  call void @__clang_call_terminate(ptr %i.ax) #23
  unreachable

_ZN6apache6thrift11concurrency5GuardD2Ev.exit:    ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit.preheader, %bb.r
  %i.ay = load volatile i8, ptr %0, align 8, !tbaa !76, !range !105, !noundef !106
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN6apache6thrift11concurrency5GuardD2Ev.exit
  invoke void @_ZN6apache6thrift5async25TConcurrentClientSyncInfo20throwDeadConnection_Ev(ptr nonnull align 8 poison)
          to label %.unreachable unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %.critedge.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  %i.bb = load ptr, ptr %i.b, align 8, !tbaa !98
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bd = load ptr, ptr %i.bc, align 8
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_ZN6apache6thrift11concurrency5GuardD2Ev.exit9 unwind label %bb.n

end_hunk_0
