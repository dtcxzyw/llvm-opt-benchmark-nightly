inline.NumInlined: 2188
inline.NumDeleted: 850
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZN6Assimp13ExporterPimplD2Ev:bb.a
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 4 uses
  %i.ba = load atomic i64, ptr %i.az acquire, align 8 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 4294967297
  %i.bc = trunc i64 %i.ba to i32                  ; 2 uses
  br i1 %i.bb, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.az, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 0, ptr %i.bd, align 4
  %i.be = load ptr, ptr %i.ay, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8
  tail call void %i.bg(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !94
  %i.bh = load ptr, ptr %i.ay, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30, !inline_history !94
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.l:                                             ; preds = %bb.j
  %i.bk = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i8 = icmp eq i8 %i.bk, 0
  br i1 %.not.i.i.i8, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bl = add nsw i32 %i.bc, -1
  store i32 %i.bl, ptr %i.az, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.n:                                             ; preds = %bb.l
  %i.bm = atomicrmw volatile add ptr %i.az, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i = phi i32 [ %i.bc, %bb.m ], [ %i.bm, %bb.n ]
  %i.bn = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.bn, label %bb.o, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.o:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ay) #30
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt6vectorIPN6Assimp11BaseProcessESaIS2_EED2Ev.exit, %bb.k, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.o
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp8Exporter12SetIOHandlerEPNS_8IOSystemE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = zext i1 %.not to i8
  store i8 %i.c, ptr %i.b, align 8
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  tail call void @_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE5resetIS1_EENSt9enable_ifIXsr21__sp_is_constructibleIS1_T_EE5valueEvE4typeEPS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit unwind label %bb.b ; 5 uses

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  %i.d = tail call ptr @__cxa_begin_catch(ptr %i.c) #30 ; 0 uses
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(32) %1) #30, !inline_history !96
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  invoke void @__cxa_rethrow() #32
          to label %bb.h unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #29
  unreachable

bb.h:                                             ; preds = %bb.d
  unreachable

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit: ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.m, align 4
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVSt15_Sp_counted_ptrIPN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EE, i64 16), ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.n, align 8
  store ptr %1, ptr %0, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 8 uses
  store ptr %i.a, ptr %i.o, align 8
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  %i.r = load atomic i64, ptr %i.q acquire, align 8 ; 2 uses
  %i.s = icmp eq i64 %i.r, 4294967297
  %i.t = trunc i64 %i.r to i32                    ; 2 uses
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 0, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  store i32 0, ptr %i.u, align 4
  %i.v = load ptr, ptr %i.p, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !94
  %i.y = load ptr, ptr %i.p, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30, !inline_history !94
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i = icmp eq i8 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = add nsw i32 %i.t, -1
  store i32 %i.ac, ptr %i.q, align 8
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.m:                                             ; preds = %bb.k
  %i.ad = atomicrmw volatile add ptr %i.q, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.m, %bb.l
  %.0.i.i.i.i = phi i32 [ %i.t, %bb.l ], [ %i.ad, %bb.m ]
  %i.ae = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ae, label %bb.n, label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !95

bb.n:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.p) #30
  br label %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZNSt12__shared_ptrIN6Assimp8IOSystemELN9__gnu_cxx12_Lock_policyE2EEC2IS1_vEEPT_.exit, %bb.j, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.n
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZNK6Assimp8Exporter12GetIOHandlerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  ret ptr %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZNK6Assimp8Exporter18IsDefaultIOHandlerEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !97, !noundef !98
  %i.d = trunc nuw i8 %i.c to i1
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp8Exporter18SetProgressHandlerEPNS_15ProgressHandlerE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 8) ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTVN6Assimp22DefaultProgressHandlerE, i64 16), ptr %i.b, align 8
  %2 = load ptr, ptr %0, align 8
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.e = load ptr, ptr %i.d, align 8              ; 4 uses
  %i.f = icmp eq ptr %i.e, %1
  br i1 %i.f, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = icmp eq ptr %i.e, null
  br i1 %i.g, label %.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.e) #30
  %.pre = load ptr, ptr %0, align 8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.d, %bb.e, %bb.b
  %.sink10 = phi ptr [ %2, %bb.b ], [ %.pre, %bb.e ], [ %i.c, %bb.d ]
  %.sink8 = phi ptr [ %i.b, %bb.b ], [ %1, %bb.e ], [ %1, %bb.d ]
  %.sink = phi i8 [ 1, %bb.b ], [ 0, %bb.e ], [ 0, %bb.d ]
  %i.k = getelementptr inbounds nuw i8, ptr %.sink10, i64 32
  store ptr %.sink8, ptr %i.k, align 8
  %i.l = load ptr, ptr %0, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store i8 %.sink, ptr %i.m, align 8
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZN6Assimp8Exporter12ExportToBlobEPK7aiScenePKcjPKNS_16ExportPropertiesE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 19 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %7 = alloca %"class.std::shared_ptr", align 16  ; 8 uses
  %i.c = load ptr, ptr %0, align 8
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN16aiExportDataBlobD2Ev(ptr noundef nonnull align 8 dead_on_return(1056) dereferenceable(1056) %i.d) #30
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 1056) #28
  %i.e = load ptr, ptr %0, align 8
  store ptr null, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #30
  %.not44.not.not = icmp eq ptr %4, null
  br i1 %.not44.not.not, label %._crit_edge.i.i61, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  store ptr %i.f, ptr %6, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.f, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 9, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 25
  store i8 0, ptr %i.h, align 1
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.j = invoke noundef nonnull align 8 dereferenceable(32) ptr @_Z18GetGenericPropertyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEERKT_RKSt3mapIjS6_St4lessIjESaISt4pairIKjS6_EEEPKcS8_(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull @.str, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %.noexc59 unwind label %bb.aj  ; 2 uses

.noexc59:                                         ; preds = %._crit_edge.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  store ptr %i.k, ptr %5, align 8, !alias.scope !99
  %i.l = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30, !noalias !99
  store i64 %i.n, ptr %i.b, align 8, !noalias !99
  %i.o = icmp ugt i64 %i.n, 15
  br i1 %i.o, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %.noexc59
  %i.p = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc60 unwind label %bb.aj  ; 2 uses

.noexc60:                                         ; preds = %.noexc.i.i
  store ptr %i.p, ptr %5, align 8, !alias.scope !99
  %i.q = load i64, ptr %i.b, align 8, !noalias !99
  store i64 %i.q, ptr %i.k, align 8, !alias.scope !99
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc60, %.noexc59
  %i.r = phi ptr [ %i.p, %.noexc60 ], [ %i.k, %.noexc59 ] ; 2 uses
  switch i64 %i.n, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %.critedge53.critedge
  ]

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.s = load i8, ptr %i.l, align 1
  store i8 %i.s, ptr %i.r, align 1
  br label %.critedge53.critedge

bb.e:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr align 1 %i.l, i64 %i.n, i1 false)
  br label %.critedge53.critedge

._crit_edge.i.i61:                                ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  store ptr %i.t, ptr %5, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.t, ptr noundef nonnull align 1 dereferenceable(9) @.str.1, i64 9, i1 false)
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 9, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 25
  store i8 0, ptr %i.v, align 1
  br label %.critedge55

.critedge53.critedge:                             ; preds = %._crit_edge.i.i.i, %bb.d, %bb.e
  %i.w = load i64, ptr %i.b, align 8, !noalias !99 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.w, ptr %i.x, align 8, !alias.scope !99
  %i.y = load ptr, ptr %5, align 8, !alias.scope !99
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.w
  store i8 0, ptr %i.z, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #30, !noalias !99
  %i.aa = load ptr, ptr %6, align 8               ; 2 uses
  %i.ab = icmp eq ptr %i.aa, %i.f
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %.critedge53.critedge
  %i.ac = load i64, ptr %i.f, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.aa, i64 noundef %i.ad) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.critedge53.critedge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #30
  br label %.critedge55

.critedge55:                                      ; preds = %._crit_edge.i.i61, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.ae = load ptr, ptr %0, align 8               ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %i.aj = load <2 x ptr>, ptr %i.af, align 8
  store <2 x ptr> %i.aj, ptr %7, align 16
  %.not.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit, label %bb.f

bb.f:                                             ; preds = %.critedge55
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 3 uses
  %i.al = load i8, ptr @__libc_single_threaded, align 1
  %.not.i.i.i.i = icmp eq i8 %i.al, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.am = load i32, ptr %i.ak, align 4
  %i.an = add nsw i32 %i.am, 1
  store i32 %i.an, ptr %i.ak, align 4
  br label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit

bb.h:                                             ; preds = %bb.f
  %i.ao = atomicrmw volatile add ptr %i.ak, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit

_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit: ; preds = %.critedge55, %bb.g, %bb.h
  %i.ap = invoke noundef ptr @_ZN6Assimp6Intern22AllocateFromAssimpHeapnwEm(i64 noundef 136)
          to label %bb.i unwind label %bb.ak      ; 17 uses

bb.i:                                             ; preds = %_ZNSt10shared_ptrIN6Assimp8IOSystemEEC2ERKS2_.exit
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i8 0, i64 24, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVN6Assimp12BlobIOSystemE, i64 16), ptr %i.ap, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 5 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 3 uses
  store ptr %i.as, ptr %i.ar, align 8
  %i.at = load ptr, ptr %5, align 8               ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.av = load i64, ptr %i.au, align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #30
  store i64 %i.av, ptr %i.a, align 8
  %i.aw = icmp ugt i64 %i.av, 15
  br i1 %i.aw, label %.noexc.i.i66, label %._crit_edge.i.i.i65

.noexc.i.i66:                                     ; preds = %bb.i
  %i.ax = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc.i67 unwind label %.body ; 2 uses

.noexc.i67:                                       ; preds = %.noexc.i.i66
  store ptr %i.ax, ptr %i.ar, align 8
  %i.ay = load i64, ptr %i.a, align 8
  store i64 %i.ay, ptr %i.as, align 8
  br label %._crit_edge.i.i.i65

._crit_edge.i.i.i65:                              ; preds = %.noexc.i67, %bb.i
  %i.az = phi ptr [ %i.ax, %.noexc.i67 ], [ %i.as, %bb.i ] ; 2 uses
  switch i64 %i.av, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i65
  %i.ba = load i8, ptr %i.at, align 1
  store i8 %i.ba, ptr %i.az, align 1
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i65
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.az, ptr align 1 %i.at, i64 %i.av, i1 false)
  br label %bb.l

.body:                                            ; preds = %.noexc.i.i66
  %i.bb = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp8IOSystemD2Ev(ptr noundef nonnull align 8 dereferenceable(136) %i.ap) #30
  call void @_ZN6Assimp6Intern22AllocateFromAssimpHeapdlEPv(ptr noundef nonnull %i.ap) #30
  br label %.body99

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i65
end_hunk_0
